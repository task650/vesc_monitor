.class public Lackmaniac/vescmonitor/DeviceControlActivity;
.super Landroid/app/Activity;
.source "DeviceControlActivity.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lackmaniac/vescmonitor/DeviceControlActivity$MediaProjectionCallback;,
        Lackmaniac/vescmonitor/DeviceControlActivity$MyLocationListener;
    }
.end annotation


# static fields
.field public static final EXTRAS_DEVICE_ADDRESS:Ljava/lang/String; = "DEVICE_ADDRESS"

.field public static final EXTRAS_DEVICE_NAME:Ljava/lang/String; = "DEVICE_NAME"

.field private static final REQUEST_CODE:I = 0x3e8

.field private static final REQUEST_PERMISSIONS:I = 0xa

.field private static final TAG:Ljava/lang/String;

.field public static camera:Landroid/hardware/Camera;


# instance fields
.field private final NOTIFICATION_ID:I

.field private accelerationMeasurementStarted:Z

.field accelerationText:[Ljava/lang/String;

.field private activeWatt:F

.field private actualAdjustableThrottleEnabled:Z

.field private actualBatteryCutEnd:F

.field private actualBatteryCutStart:F

.field private actualBezierNeg_throttle:F

.field private actualBezierPos_throttle:F

.field private actualMaxBatteryCurrent:F

.field private actualMaxERPM:I

.field private actualMaxMotorCurrent:F

.field private actualMaxWatt:I

.field private actualMinBatteryCurrent:F

.field private actualMinMotorCurrent:F

.field private actualModeNumber:I

.field private actualMotorType:I

.field private actualNX1_throttle:F

.field private actualNX2_throttle:F

.field private actualNX3_throttle:F

.field private actualNY1_throttle:F

.field private actualNY2_throttle:F

.field private actualNY3_throttle:F

.field private actualPIDBrakingEnabled:Z

.field private actualPIDSpeedKd:F

.field private actualPIDSpeedKi:F

.field private actualPIDSpeedKp:F

.field private actualPPMMode:I

.field private actualRealtimeData:Lackmaniac/vescmonitor/RealtimeData;

.field private actualTempFetEnd:F

.field private actualTempFetStart:F

.field private actualTempMotorEnd:F

.field private actualTempMotorStart:F

.field private actualUseMaxWatt:Z

.field private actualX1_throttle:F

.field private actualX2_throttle:F

.field private actualX3_throttle:F

.field private actualY1_throttle:F

.field private actualY2_throttle:F

.field private actualY3_throttle:F

.field private alarmCounter:I

.field private altitude:D

.field private altitudeGPSText:Landroid/widget/TextView;

.field private avgAhAtTheMoment:F

.field private avgAhAtTheMomentText:Landroid/widget/TextView;

.field private avgAhText:Landroid/widget/TextView;

.field private avgBatteryAmpsRidingNeg:Landroid/widget/TextView;

.field private avgBatteryAmpsRidingPos:Landroid/widget/TextView;

.field private avgBatteryAmpsUsedNeg:Landroid/widget/TextView;

.field private avgBatteryAmpsUsedPos:Landroid/widget/TextView;

.field private avgMotorAmpsRidingNeg:Landroid/widget/TextView;

.field private avgMotorAmpsRidingPos:Landroid/widget/TextView;

.field private avgMotorAmpsUsedNeg:Landroid/widget/TextView;

.field private avgMotorAmpsUsedPos:Landroid/widget/TextView;

.field private avgTemperaturTotal:Landroid/widget/TextView;

.field private avgTemperaturTotalTitel:Landroid/widget/TextView;

.field private avgWattActive:Landroid/widget/TextView;

.field private avgWattRiding:Landroid/widget/TextView;

.field private avgWhAtTheMoment:F

.field private avgWhAtTheMomentText:Landroid/widget/TextView;

.field private avgWhText:Landroid/widget/TextView;

.field private batteryPercent:I

.field private batteryWh:I

.field private camHolder:Landroid/view/SurfaceHolder;

.field private canControllerId:I

.field private characteristicTX:Landroid/bluetooth/BluetoothGattCharacteristic;

.field private chargedAhText:Landroid/widget/TextView;

.field private chargedText:Landroid/widget/TextView;

.field private connectCount:I

.field final context:Landroid/content/Context;

.field private controllerId:I

.field private countBattery:I

.field private curBattMaxText:Landroid/widget/TextView;

.field private curBattMinText:Landroid/widget/TextView;

.field private curBattText:Landroid/widget/TextView;

.field private curMotorMaxText:Landroid/widget/TextView;

.field private curMotorMinText:Landroid/widget/TextView;

.field private curMotorText:Landroid/widget/TextView;

.field private defaultMaxBatteryCurrent:F

.field private defaultMaxERPM:I

.field private defaultMaxMotorCurrent:F

.field private defaultMaxWatt:I

.field private defaultMinBatteryCurrent:F

.field private defaultMinMotorCurrent:F

.field private defaultPPMMode:I

.field private defaultUseMaxWatt:Z

.field private distanceCount:I

.field private distanceText:Landroid/widget/TextView;

.field private distanceUnit:I

.field private dragMeasurementStarted:Z

.field private drawnAhText:Landroid/widget/TextView;

.field private drawnText:Landroid/widget/TextView;

.field private dutyCycleText:Landroid/widget/TextView;

.field private errorText:Landroid/widget/TextView;

.field private errorTextString:Ljava/lang/String;

.field private getAccelerationData:Z

.field private getDragData:Z

.field private isConnectedToSlave:Z

.field private lastConsumedAh:F

.field private lastConsumedWh:F

.field private lastDistance:F

.field private lastSerialSend:J

.field private lastTimeAsked:J

.field private lastTimeFaultAsked:J

.field private lastTimeSafed:J

.field private location:Landroid/location/Location;

.field private locationListener:Landroid/location/LocationListener;

.field private locationManager:Landroid/location/LocationManager;

.field private mBluetoothLeService:Lackmaniac/vescmonitor/BluetoothLeService;

.field private mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

.field private mConnected:Z

.field private mConnectionState:Landroid/widget/TextView;

.field private mDeviceAddress:Ljava/lang/String;

.field private mGattUpdateReceiver:Landroid/content/BroadcastReceiver;

.field private mMediaProjection:Landroid/media/projection/MediaProjection;

.field private mMediaProjectionCallback:Lackmaniac/vescmonitor/DeviceControlActivity$MediaProjectionCallback;

.field private mMediaRecorder:Landroid/media/MediaRecorder;

.field private mNmeaListener:Landroid/location/GpsStatus$NmeaListener;

.field private mNotifyMgr:Landroid/app/NotificationManager;

.field private mProjectionManager:Landroid/media/projection/MediaProjectionManager;

.field private mScreenDensity:I

.field private mServiceConnection:Landroid/content/ServiceConnection;

.field private mToggleVideoButton:Landroid/widget/ToggleButton;

.field private mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

.field private maxAccelerationSpeed:J

.field private maxBatteryCurrentText:Landroid/widget/TextView;

.field private maxMotorCurrentText:Landroid/widget/TextView;

.field private maxPower:F

.field private maxPowerText:Landroid/widget/TextView;

.field private maxRpm:F

.field private maxSpeedText:Landroid/widget/TextView;

.field private maxTempPCB:F

.field private maxTempText:Landroid/widget/TextView;

.field private maxWattText:Landroid/widget/TextView;

.field private max_battery_current:F

.field private max_motor_current:F

.field private minBatteryCurrentText:Landroid/widget/TextView;

.field private minInpVoltage:F

.field private minMotorCurrentText:Landroid/widget/TextView;

.field private minPower:F

.field private minPowerText:Landroid/widget/TextView;

.field private minVoltText:Landroid/widget/TextView;

.field private min_battery_current:F

.field private min_motor_current:F

.field private modeText:Landroid/widget/TextView;

.field private noOfCells:I

.field private noOfMotors:I

.field private notificationManagerIntent:Landroid/content/Intent;

.field private packetDelay:I

.field private percent0:F

.field private percent10:F

.field private percent100:F

.field private percent20:F

.field private percent30:F

.field private percent40:F

.field private percent50:F

.field private percent60:F

.field private percent70:F

.field private percent80:F

.field private percent90:F

.field private playBatteryAlarm:Z

.field private playedAlarm:Lackmaniac/vescmonitor/Utils$ALARM_TYPE;

.field private powerText:Landroid/widget/TextView;

.field private ppmModeText:Landroid/widget/TextView;

.field private previewRunning:Z

.field private progressBatteryNegative:Landroid/widget/ProgressBar;

.field private progressBatteryPositive:Landroid/widget/ProgressBar;

.field private progressDutyNegative:Landroid/widget/ProgressBar;

.field private progressDutyPositive:Landroid/widget/ProgressBar;

.field private progressMotorNegative:Landroid/widget/ProgressBar;

.field private progressMotorPositive:Landroid/widget/ProgressBar;

.field private progressPowerNegative:Landroid/widget/ProgressBar;

.field private progressPowerPositive:Landroid/widget/ProgressBar;

.field private rangeText:Landroid/widget/TextView;

.field realTimeDataLoggingCsv:Ljava/lang/Thread;

.field private resetScreen:Z

.field private ridingBatteryAmpsNeg:F

.field private ridingBatteryAmpsPos:F

.field private ridingMotorAmpsNeg:F

.field private ridingMotorAmpsPos:F

.field private ridingWatt:F

.field private run:Z

.field rxBackupCall:Ljava/lang/Thread;

.field private savedRecordTime:J

.field private singleCellVoltText:Landroid/widget/TextView;

.field private specialTx:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<[B>;"
        }
    .end annotation
.end field

.field private speedAvgRunningText:Landroid/widget/TextView;

.field private speedAvgText:Landroid/widget/TextView;

.field private speedGPSText:Landroid/widget/TextView;

.field private speedMaxText:Landroid/widget/TextView;

.field private speedText:Landroid/widget/TextView;

.field private startAhCharged:F

.field private startAhDrawn:F

.field private startDragDistance:F

.field private startRecordingTime:J

.field private startTachomaterABS:I

.field private startTime:J

.field private startWhCharged:F

.field private startWhDrawn:F

.field private statusBarNeedsUpdate:Z

.field private surView:Landroid/view/SurfaceView;

.field private tempColour:I

.field private tempPCBTitle:Landroid/widget/TextView;

.field private tempText:Landroid/widget/TextView;

.field private throttle_exp:F

.field private throttle_exp_brake:F

.field private throttle_exp_mode:I

.field private timeRiding:Landroid/widget/TextView;

.field private timeTotal:Landroid/widget/TextView;

.field private times:[J

.field private totalRidingTime:F

.field private totalTemp:F

.field private totalUsedNegTime:F

.field private totalUsedPosTime:F

.field private usedBatteryAmpsNeg:F

.field private usedBatteryAmpsPos:F

.field private usedMotorAmpsNeg:F

.field private usedMotorAmpsPos:F

.field private vescDataLayout:Landroid/widget/LinearLayout;

.field private videoFileName:Ljava/lang/String;

.field private voltColour:I

.field private voltLabel:Landroid/widget/TextView;

.field private voltText:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 88
    const-class v0, Lackmaniac/vescmonitor/DeviceControlActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lackmaniac/vescmonitor/DeviceControlActivity;->TAG:Ljava/lang/String;

    .line 678
    const/4 v0, 0x0

    sput-object v0, Lackmaniac/vescmonitor/DeviceControlActivity;->camera:Landroid/hardware/Camera;

    return-void
.end method

.method public constructor <init>()V
    .locals 8

    .prologue
    const/high16 v7, -0x40800000    # -1.0f

    const-wide/16 v2, -0x1

    const/4 v6, -0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 86
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 92
    const/4 v0, 0x1

    iput v0, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->NOTIFICATION_ID:I

    .line 103
    iput-boolean v5, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->mConnected:Z

    .line 108
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->specialTx:Ljava/util/List;

    .line 155
    iput v5, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->voltColour:I

    .line 157
    iput v5, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->tempColour:I

    .line 187
    const-string v0, ""

    iput-object v0, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->errorTextString:Ljava/lang/String;

    .line 208
    iput v5, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->actualModeNumber:I

    .line 209
    iput v6, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->actualPPMMode:I

    .line 210
    const/4 v0, 0x1

    iput-boolean v0, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->actualUseMaxWatt:Z

    .line 211
    iput v5, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->actualMaxWatt:I

    .line 212
    iput v4, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->actualMaxMotorCurrent:F

    .line 213
    iput v4, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->actualMaxBatteryCurrent:F

    .line 214
    iput v4, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->actualMinMotorCurrent:F

    .line 215
    iput v4, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->actualMinBatteryCurrent:F

    .line 216
    iput v5, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->actualMaxERPM:I

    .line 217
    iput v4, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->actualBatteryCutStart:F

    .line 218
    iput v4, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->actualBatteryCutEnd:F

    .line 219
    iput v4, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->actualTempFetStart:F

    .line 220
    iput v4, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->actualTempFetEnd:F

    .line 221
    iput v4, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->actualTempMotorStart:F

    .line 222
    iput v4, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->actualTempMotorEnd:F

    .line 224
    iput v4, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->throttle_exp:F

    .line 225
    iput v4, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->throttle_exp_brake:F

    .line 226
    iput v6, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->throttle_exp_mode:I

    .line 228
    iput-boolean v5, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->actualAdjustableThrottleEnabled:Z

    .line 229
    iput v4, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->actualY1_throttle:F

    .line 230
    iput v4, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->actualY2_throttle:F

    .line 231
    iput v4, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->actualY3_throttle:F

    .line 232
    iput v4, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->actualX1_throttle:F

    .line 233
    iput v4, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->actualX2_throttle:F

    .line 234
    iput v4, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->actualX3_throttle:F

    .line 235
    iput v4, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->actualBezierPos_throttle:F

    .line 236
    iput v4, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->actualNY1_throttle:F

    .line 237
    iput v4, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->actualNY2_throttle:F

    .line 238
    iput v4, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->actualNY3_throttle:F

    .line 239
    iput v4, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->actualNX1_throttle:F

    .line 240
    iput v4, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->actualNX2_throttle:F

    .line 241
    iput v4, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->actualNX3_throttle:F

    .line 242
    iput v4, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->actualBezierNeg_throttle:F

    .line 244
    iput-boolean v5, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->actualPIDBrakingEnabled:Z

    .line 245
    iput v4, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->actualPIDSpeedKp:F

    .line 246
    iput v4, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->actualPIDSpeedKi:F

    .line 247
    iput v4, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->actualPIDSpeedKd:F

    .line 249
    iput v6, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->actualMotorType:I

    .line 251
    sget-object v0, Lackmaniac/vescmonitor/Utils$PPM_CONTROL_TYPE;->PPM_CTRL_TYPE_NONE:Lackmaniac/vescmonitor/Utils$PPM_CONTROL_TYPE;

    invoke-virtual {v0}, Lackmaniac/vescmonitor/Utils$PPM_CONTROL_TYPE;->ordinal()I

    move-result v0

    iput v0, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->defaultPPMMode:I

    .line 252
    const/4 v0, 0x1

    iput-boolean v0, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->defaultUseMaxWatt:Z

    .line 253
    iput v5, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->defaultMaxWatt:I

    .line 254
    iput v4, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->defaultMaxMotorCurrent:F

    .line 255
    iput v4, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->defaultMaxBatteryCurrent:F

    .line 256
    iput v4, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->defaultMinMotorCurrent:F

    .line 257
    iput v4, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->defaultMinBatteryCurrent:F

    .line 260
    iput v4, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->maxPower:F

    .line 261
    iput v4, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->minPower:F

    .line 262
    iput v4, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->max_motor_current:F

    .line 263
    iput v4, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->min_motor_current:F

    .line 264
    iput v4, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->max_battery_current:F

    .line 265
    iput v4, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->min_battery_current:F

    .line 266
    iput v4, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->maxRpm:F

    .line 267
    iput v4, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->maxTempPCB:F

    .line 268
    const/high16 v0, 0x447a0000    # 1000.0f

    iput v0, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->minInpVoltage:F

    .line 269
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->altitude:D

    .line 271
    iput-wide v2, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->startRecordingTime:J

    .line 272
    iput-wide v2, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->lastTimeSafed:J

    .line 273
    iput v6, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->startTachomaterABS:I

    .line 278
    iput-wide v2, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->startTime:J

    .line 279
    iput-wide v2, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->savedRecordTime:J

    .line 280
    iput v4, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->totalRidingTime:F

    .line 281
    const v0, 0x38d1b717    # 1.0E-4f

    iput v0, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->totalUsedPosTime:F

    .line 282
    const v0, 0x38d1b717    # 1.0E-4f

    iput v0, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->totalUsedNegTime:F

    .line 284
    iput v4, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->usedMotorAmpsPos:F

    .line 285
    iput v4, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->usedMotorAmpsNeg:F

    .line 286
    iput v4, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->ridingMotorAmpsPos:F

    .line 287
    iput v4, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->ridingMotorAmpsNeg:F

    .line 289
    iput v4, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->usedBatteryAmpsPos:F

    .line 290
    iput v4, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->usedBatteryAmpsNeg:F

    .line 291
    iput v4, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->ridingBatteryAmpsPos:F

    .line 292
    iput v4, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->ridingBatteryAmpsNeg:F

    .line 294
    iput v4, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->totalTemp:F

    .line 295
    iput v4, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->ridingWatt:F

    .line 296
    iput v4, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->activeWatt:F

    .line 298
    iput-boolean v5, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->run:Z

    .line 299
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x7d0

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->lastSerialSend:J

    .line 300
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->lastTimeAsked:J

    .line 301
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->lastTimeFaultAsked:J

    .line 303
    iput v5, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->distanceUnit:I

    .line 311
    iput v6, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->batteryPercent:I

    .line 312
    const/4 v0, 0x5

    iput v0, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->countBattery:I

    .line 313
    iput v5, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->alarmCounter:I

    .line 314
    sget-object v0, Lackmaniac/vescmonitor/Utils$ALARM_TYPE;->NONE:Lackmaniac/vescmonitor/Utils$ALARM_TYPE;

    iput-object v0, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->playedAlarm:Lackmaniac/vescmonitor/Utils$ALARM_TYPE;

    .line 316
    iput v5, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->distanceCount:I

    .line 317
    iput v7, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->lastDistance:F

    .line 318
    iput v7, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->lastConsumedWh:F

    .line 319
    iput v7, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->lastConsumedAh:F

    .line 320
    iput v4, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->avgWhAtTheMoment:F

    .line 321
    iput v4, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->avgAhAtTheMoment:F

    .line 330
    iput-boolean v5, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->getAccelerationData:Z

    .line 331
    iput-boolean v5, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->getDragData:Z

    .line 332
    const/16 v0, 0x9

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    iput-object v0, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->times:[J

    .line 333
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->maxAccelerationSpeed:J

    .line 335
    iput-boolean v5, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->resetScreen:Z

    .line 336
    iput-boolean v5, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->accelerationMeasurementStarted:Z

    .line 337
    iput-boolean v5, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->dragMeasurementStarted:Z

    .line 338
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->accelerationText:[Ljava/lang/String;

    .line 340
    iput-boolean v5, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->statusBarNeedsUpdate:Z

    .line 342
    new-instance v0, Lackmaniac/vescmonitor/DeviceControlActivity$1;

    invoke-direct {v0, p0}, Lackmaniac/vescmonitor/DeviceControlActivity$1;-><init>(Lackmaniac/vescmonitor/DeviceControlActivity;)V

    iput-object v0, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->rxBackupCall:Ljava/lang/Thread;

    .line 378
    new-instance v0, Lackmaniac/vescmonitor/DeviceControlActivity$2;

    invoke-direct {v0, p0}, Lackmaniac/vescmonitor/DeviceControlActivity$2;-><init>(Lackmaniac/vescmonitor/DeviceControlActivity;)V

    iput-object v0, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->realTimeDataLoggingCsv:Ljava/lang/Thread;

    .line 677
    iput-object p0, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->context:Landroid/content/Context;

    .line 690
    new-instance v0, Lackmaniac/vescmonitor/DeviceControlActivity$3;

    invoke-direct {v0, p0}, Lackmaniac/vescmonitor/DeviceControlActivity$3;-><init>(Lackmaniac/vescmonitor/DeviceControlActivity;)V

    iput-object v0, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->mGattUpdateReceiver:Landroid/content/BroadcastReceiver;

    .line 2360
    new-instance v0, Lackmaniac/vescmonitor/DeviceControlActivity$11;

    invoke-direct {v0, p0}, Lackmaniac/vescmonitor/DeviceControlActivity$11;-><init>(Lackmaniac/vescmonitor/DeviceControlActivity;)V

    iput-object v0, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->mNmeaListener:Landroid/location/GpsStatus$NmeaListener;

    return-void

    .line 332
    :array_0
    .array-data 8
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method static synthetic access$000(Lackmaniac/vescmonitor/DeviceControlActivity;)Z
    .locals 1
    .param p0, "x0"    # Lackmaniac/vescmonitor/DeviceControlActivity;

    .prologue
    .line 86
    iget-boolean v0, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->run:Z

    return v0
.end method

.method static synthetic access$002(Lackmaniac/vescmonitor/DeviceControlActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lackmaniac/vescmonitor/DeviceControlActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 86
    iput-boolean p1, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->run:Z

    return p1
.end method

.method static synthetic access$100(Lackmaniac/vescmonitor/DeviceControlActivity;)J
    .locals 2
    .param p0, "x0"    # Lackmaniac/vescmonitor/DeviceControlActivity;

    .prologue
    .line 86
    iget-wide v0, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->lastSerialSend:J

    return-wide v0
.end method

.method static synthetic access$1000(Lackmaniac/vescmonitor/DeviceControlActivity;)F
    .locals 1
    .param p0, "x0"    # Lackmaniac/vescmonitor/DeviceControlActivity;

    .prologue
    .line 86
    iget v0, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->startWhCharged:F

    return v0
.end method

.method static synthetic access$1002(Lackmaniac/vescmonitor/DeviceControlActivity;F)F
    .locals 0
    .param p0, "x0"    # Lackmaniac/vescmonitor/DeviceControlActivity;
    .param p1, "x1"    # F

    .prologue
    .line 86
    iput p1, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->startWhCharged:F

    return p1
.end method

.method static synthetic access$1100(Lackmaniac/vescmonitor/DeviceControlActivity;)F
    .locals 1
    .param p0, "x0"    # Lackmaniac/vescmonitor/DeviceControlActivity;

    .prologue
    .line 86
    iget v0, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->startAhDrawn:F

    return v0
.end method

.method static synthetic access$1102(Lackmaniac/vescmonitor/DeviceControlActivity;F)F
    .locals 0
    .param p0, "x0"    # Lackmaniac/vescmonitor/DeviceControlActivity;
    .param p1, "x1"    # F

    .prologue
    .line 86
    iput p1, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->startAhDrawn:F

    return p1
.end method

.method static synthetic access$1200(Lackmaniac/vescmonitor/DeviceControlActivity;)F
    .locals 1
    .param p0, "x0"    # Lackmaniac/vescmonitor/DeviceControlActivity;

    .prologue
    .line 86
    iget v0, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->startAhCharged:F

    return v0
.end method

.method static synthetic access$1202(Lackmaniac/vescmonitor/DeviceControlActivity;F)F
    .locals 0
    .param p0, "x0"    # Lackmaniac/vescmonitor/DeviceControlActivity;
    .param p1, "x1"    # F

    .prologue
    .line 86
    iput p1, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->startAhCharged:F

    return p1
.end method

.method static synthetic access$1302(Lackmaniac/vescmonitor/DeviceControlActivity;J)J
    .locals 1
    .param p0, "x0"    # Lackmaniac/vescmonitor/DeviceControlActivity;
    .param p1, "x1"    # J

    .prologue
    .line 86
    iput-wide p1, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->startTime:J

    return-wide p1
.end method

.method static synthetic access$1400(Lackmaniac/vescmonitor/DeviceControlActivity;)J
    .locals 2
    .param p0, "x0"    # Lackmaniac/vescmonitor/DeviceControlActivity;

    .prologue
    .line 86
    iget-wide v0, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->savedRecordTime:J

    return-wide v0
.end method

.method static synthetic access$1402(Lackmaniac/vescmonitor/DeviceControlActivity;J)J
    .locals 1
    .param p0, "x0"    # Lackmaniac/vescmonitor/DeviceControlActivity;
    .param p1, "x1"    # J

    .prologue
    .line 86
    iput-wide p1, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->savedRecordTime:J

    return-wide p1
.end method

.method static synthetic access$1500(Lackmaniac/vescmonitor/DeviceControlActivity;)I
    .locals 1
    .param p0, "x0"    # Lackmaniac/vescmonitor/DeviceControlActivity;

    .prologue
    .line 86
    iget v0, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->actualMaxERPM:I

    return v0
.end method

.method static synthetic access$1600(Lackmaniac/vescmonitor/DeviceControlActivity;)Z
    .locals 1
    .param p0, "x0"    # Lackmaniac/vescmonitor/DeviceControlActivity;

    .prologue
    .line 86
    iget-boolean v0, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->actualUseMaxWatt:Z

    return v0
.end method

.method static synthetic access$1700(Lackmaniac/vescmonitor/DeviceControlActivity;)I
    .locals 1
    .param p0, "x0"    # Lackmaniac/vescmonitor/DeviceControlActivity;

    .prologue
    .line 86
    iget v0, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->actualMaxWatt:I

    return v0
.end method

.method static synthetic access$1800(Lackmaniac/vescmonitor/DeviceControlActivity;)F
    .locals 1
    .param p0, "x0"    # Lackmaniac/vescmonitor/DeviceControlActivity;

    .prologue
    .line 86
    iget v0, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->actualTempFetEnd:F

    return v0
.end method

.method static synthetic access$1900(Lackmaniac/vescmonitor/DeviceControlActivity;)F
    .locals 1
    .param p0, "x0"    # Lackmaniac/vescmonitor/DeviceControlActivity;

    .prologue
    .line 86
    iget v0, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->actualTempFetStart:F

    return v0
.end method

.method static synthetic access$200(Lackmaniac/vescmonitor/DeviceControlActivity;)V
    .locals 0
    .param p0, "x0"    # Lackmaniac/vescmonitor/DeviceControlActivity;

    .prologue
    .line 86
    invoke-direct {p0}, Lackmaniac/vescmonitor/DeviceControlActivity;->getFirmwareVersion()V

    return-void
.end method

.method static synthetic access$2000(Lackmaniac/vescmonitor/DeviceControlActivity;)F
    .locals 1
    .param p0, "x0"    # Lackmaniac/vescmonitor/DeviceControlActivity;

    .prologue
    .line 86
    iget v0, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->actualBatteryCutEnd:F

    return v0
.end method

.method static synthetic access$2100(Lackmaniac/vescmonitor/DeviceControlActivity;)F
    .locals 1
    .param p0, "x0"    # Lackmaniac/vescmonitor/DeviceControlActivity;

    .prologue
    .line 86
    iget v0, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->actualBatteryCutStart:F

    return v0
.end method

.method static synthetic access$2200(Lackmaniac/vescmonitor/DeviceControlActivity;)F
    .locals 1
    .param p0, "x0"    # Lackmaniac/vescmonitor/DeviceControlActivity;

    .prologue
    .line 86
    iget v0, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->actualMinBatteryCurrent:F

    return v0
.end method

.method static synthetic access$2300(Lackmaniac/vescmonitor/DeviceControlActivity;)F
    .locals 1
    .param p0, "x0"    # Lackmaniac/vescmonitor/DeviceControlActivity;

    .prologue
    .line 86
    iget v0, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->actualMaxBatteryCurrent:F

    return v0
.end method

.method static synthetic access$2400(Lackmaniac/vescmonitor/DeviceControlActivity;)F
    .locals 1
    .param p0, "x0"    # Lackmaniac/vescmonitor/DeviceControlActivity;

    .prologue
    .line 86
    iget v0, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->actualMinMotorCurrent:F

    return v0
.end method

.method static synthetic access$2500(Lackmaniac/vescmonitor/DeviceControlActivity;)F
    .locals 1
    .param p0, "x0"    # Lackmaniac/vescmonitor/DeviceControlActivity;

    .prologue
    .line 86
    iget v0, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->actualMaxMotorCurrent:F

    return v0
.end method

.method static synthetic access$2600(Lackmaniac/vescmonitor/DeviceControlActivity;)J
    .locals 2
    .param p0, "x0"    # Lackmaniac/vescmonitor/DeviceControlActivity;

    .prologue
    .line 86
    iget-wide v0, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->lastTimeSafed:J

    return-wide v0
.end method

.method static synthetic access$2602(Lackmaniac/vescmonitor/DeviceControlActivity;J)J
    .locals 1
    .param p0, "x0"    # Lackmaniac/vescmonitor/DeviceControlActivity;
    .param p1, "x1"    # J

    .prologue
    .line 86
    iput-wide p1, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->lastTimeSafed:J

    return-wide p1
.end method

.method static synthetic access$2702(Lackmaniac/vescmonitor/DeviceControlActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lackmaniac/vescmonitor/DeviceControlActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 86
    iput-boolean p1, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->statusBarNeedsUpdate:Z

    return p1
.end method

.method static synthetic access$2800(Lackmaniac/vescmonitor/DeviceControlActivity;)I
    .locals 1
    .param p0, "x0"    # Lackmaniac/vescmonitor/DeviceControlActivity;

    .prologue
    .line 86
    iget v0, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->noOfMotors:I

    return v0
.end method

.method static synthetic access$2900(Lackmaniac/vescmonitor/DeviceControlActivity;)I
    .locals 1
    .param p0, "x0"    # Lackmaniac/vescmonitor/DeviceControlActivity;

    .prologue
    .line 86
    iget v0, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->distanceUnit:I

    return v0
.end method

.method static synthetic access$300(Lackmaniac/vescmonitor/DeviceControlActivity;)V
    .locals 0
    .param p0, "x0"    # Lackmaniac/vescmonitor/DeviceControlActivity;

    .prologue
    .line 86
    invoke-direct {p0}, Lackmaniac/vescmonitor/DeviceControlActivity;->sendSerial()V

    return-void
.end method

.method static synthetic access$3000(Lackmaniac/vescmonitor/DeviceControlActivity;)F
    .locals 1
    .param p0, "x0"    # Lackmaniac/vescmonitor/DeviceControlActivity;

    .prologue
    .line 86
    iget v0, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->totalRidingTime:F

    return v0
.end method

.method static synthetic access$3100(Lackmaniac/vescmonitor/DeviceControlActivity;)F
    .locals 1
    .param p0, "x0"    # Lackmaniac/vescmonitor/DeviceControlActivity;

    .prologue
    .line 86
    iget v0, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->ridingWatt:F

    return v0
.end method

.method static synthetic access$3200(Lackmaniac/vescmonitor/DeviceControlActivity;)F
    .locals 1
    .param p0, "x0"    # Lackmaniac/vescmonitor/DeviceControlActivity;

    .prologue
    .line 86
    iget v0, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->totalUsedPosTime:F

    return v0
.end method

.method static synthetic access$3300(Lackmaniac/vescmonitor/DeviceControlActivity;)F
    .locals 1
    .param p0, "x0"    # Lackmaniac/vescmonitor/DeviceControlActivity;

    .prologue
    .line 86
    iget v0, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->totalUsedNegTime:F

    return v0
.end method

.method static synthetic access$3400(Lackmaniac/vescmonitor/DeviceControlActivity;)F
    .locals 1
    .param p0, "x0"    # Lackmaniac/vescmonitor/DeviceControlActivity;

    .prologue
    .line 86
    iget v0, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->activeWatt:F

    return v0
.end method

.method static synthetic access$3500(Lackmaniac/vescmonitor/DeviceControlActivity;)F
    .locals 1
    .param p0, "x0"    # Lackmaniac/vescmonitor/DeviceControlActivity;

    .prologue
    .line 86
    iget v0, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->usedMotorAmpsPos:F

    return v0
.end method

.method static synthetic access$3600(Lackmaniac/vescmonitor/DeviceControlActivity;)F
    .locals 1
    .param p0, "x0"    # Lackmaniac/vescmonitor/DeviceControlActivity;

    .prologue
    .line 86
    iget v0, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->usedMotorAmpsNeg:F

    return v0
.end method

.method static synthetic access$3700(Lackmaniac/vescmonitor/DeviceControlActivity;)F
    .locals 1
    .param p0, "x0"    # Lackmaniac/vescmonitor/DeviceControlActivity;

    .prologue
    .line 86
    iget v0, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->usedBatteryAmpsPos:F

    return v0
.end method

.method static synthetic access$3800(Lackmaniac/vescmonitor/DeviceControlActivity;)F
    .locals 1
    .param p0, "x0"    # Lackmaniac/vescmonitor/DeviceControlActivity;

    .prologue
    .line 86
    iget v0, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->usedBatteryAmpsNeg:F

    return v0
.end method

.method static synthetic access$3900(Lackmaniac/vescmonitor/DeviceControlActivity;)F
    .locals 1
    .param p0, "x0"    # Lackmaniac/vescmonitor/DeviceControlActivity;

    .prologue
    .line 86
    iget v0, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->ridingMotorAmpsPos:F

    return v0
.end method

.method static synthetic access$400(Lackmaniac/vescmonitor/DeviceControlActivity;)I
    .locals 1
    .param p0, "x0"    # Lackmaniac/vescmonitor/DeviceControlActivity;

    .prologue
    .line 86
    iget v0, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->actualPPMMode:I

    return v0
.end method

.method static synthetic access$4000(Lackmaniac/vescmonitor/DeviceControlActivity;)F
    .locals 1
    .param p0, "x0"    # Lackmaniac/vescmonitor/DeviceControlActivity;

    .prologue
    .line 86
    iget v0, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->ridingMotorAmpsNeg:F

    return v0
.end method

.method static synthetic access$4100(Lackmaniac/vescmonitor/DeviceControlActivity;)F
    .locals 1
    .param p0, "x0"    # Lackmaniac/vescmonitor/DeviceControlActivity;

    .prologue
    .line 86
    iget v0, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->ridingBatteryAmpsPos:F

    return v0
.end method

.method static synthetic access$4200(Lackmaniac/vescmonitor/DeviceControlActivity;)F
    .locals 1
    .param p0, "x0"    # Lackmaniac/vescmonitor/DeviceControlActivity;

    .prologue
    .line 86
    iget v0, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->ridingBatteryAmpsNeg:F

    return v0
.end method

.method static synthetic access$4300()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    sget-object v0, Lackmaniac/vescmonitor/DeviceControlActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4400(Lackmaniac/vescmonitor/DeviceControlActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lackmaniac/vescmonitor/DeviceControlActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lackmaniac/vescmonitor/DeviceControlActivity;->applyStatusBar(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4502(Lackmaniac/vescmonitor/DeviceControlActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lackmaniac/vescmonitor/DeviceControlActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 86
    iput-boolean p1, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->mConnected:Z

    return p1
.end method

.method static synthetic access$4600(Lackmaniac/vescmonitor/DeviceControlActivity;I)V
    .locals 0
    .param p0, "x0"    # Lackmaniac/vescmonitor/DeviceControlActivity;
    .param p1, "x1"    # I

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lackmaniac/vescmonitor/DeviceControlActivity;->updateConnectionState(I)V

    return-void
.end method

.method static synthetic access$4700(Lackmaniac/vescmonitor/DeviceControlActivity;)V
    .locals 0
    .param p0, "x0"    # Lackmaniac/vescmonitor/DeviceControlActivity;

    .prologue
    .line 86
    invoke-direct {p0}, Lackmaniac/vescmonitor/DeviceControlActivity;->stopStatusBar()V

    return-void
.end method

.method static synthetic access$4800(Lackmaniac/vescmonitor/DeviceControlActivity;)V
    .locals 0
    .param p0, "x0"    # Lackmaniac/vescmonitor/DeviceControlActivity;

    .prologue
    .line 86
    invoke-direct {p0}, Lackmaniac/vescmonitor/DeviceControlActivity;->setupSerial()V

    return-void
.end method

.method static synthetic access$4900(Lackmaniac/vescmonitor/DeviceControlActivity;)V
    .locals 0
    .param p0, "x0"    # Lackmaniac/vescmonitor/DeviceControlActivity;

    .prologue
    .line 86
    invoke-direct {p0}, Lackmaniac/vescmonitor/DeviceControlActivity;->processRxMessages()V

    return-void
.end method

.method static synthetic access$500(Lackmaniac/vescmonitor/DeviceControlActivity;)V
    .locals 0
    .param p0, "x0"    # Lackmaniac/vescmonitor/DeviceControlActivity;

    .prologue
    .line 86
    invoke-direct {p0}, Lackmaniac/vescmonitor/DeviceControlActivity;->getSpeedMode()V

    return-void
.end method

.method static synthetic access$5000(Lackmaniac/vescmonitor/DeviceControlActivity;)Lackmaniac/vescmonitor/BluetoothLeService;
    .locals 1
    .param p0, "x0"    # Lackmaniac/vescmonitor/DeviceControlActivity;

    .prologue
    .line 86
    iget-object v0, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->mBluetoothLeService:Lackmaniac/vescmonitor/BluetoothLeService;

    return-object v0
.end method

.method static synthetic access$5002(Lackmaniac/vescmonitor/DeviceControlActivity;Lackmaniac/vescmonitor/BluetoothLeService;)Lackmaniac/vescmonitor/BluetoothLeService;
    .locals 0
    .param p0, "x0"    # Lackmaniac/vescmonitor/DeviceControlActivity;
    .param p1, "x1"    # Lackmaniac/vescmonitor/BluetoothLeService;

    .prologue
    .line 86
    iput-object p1, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->mBluetoothLeService:Lackmaniac/vescmonitor/BluetoothLeService;

    return-object p1
.end method

.method static synthetic access$5100(Lackmaniac/vescmonitor/DeviceControlActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lackmaniac/vescmonitor/DeviceControlActivity;

    .prologue
    .line 86
    iget-object v0, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->mDeviceAddress:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5200(Lackmaniac/vescmonitor/DeviceControlActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lackmaniac/vescmonitor/DeviceControlActivity;

    .prologue
    .line 86
    iget-object v0, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->errorTextString:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5300(Lackmaniac/vescmonitor/DeviceControlActivity;)V
    .locals 0
    .param p0, "x0"    # Lackmaniac/vescmonitor/DeviceControlActivity;

    .prologue
    .line 86
    invoke-direct {p0}, Lackmaniac/vescmonitor/DeviceControlActivity;->showErrorTextDialog()V

    return-void
.end method

.method static synthetic access$5400(Lackmaniac/vescmonitor/DeviceControlActivity;)V
    .locals 0
    .param p0, "x0"    # Lackmaniac/vescmonitor/DeviceControlActivity;

    .prologue
    .line 86
    invoke-direct {p0}, Lackmaniac/vescmonitor/DeviceControlActivity;->showSetActualSettingsAsDefaultDialog()V

    return-void
.end method

.method static synthetic access$5500(Lackmaniac/vescmonitor/DeviceControlActivity;)Z
    .locals 1
    .param p0, "x0"    # Lackmaniac/vescmonitor/DeviceControlActivity;

    .prologue
    .line 86
    iget-boolean v0, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->getAccelerationData:Z

    return v0
.end method

.method static synthetic access$5502(Lackmaniac/vescmonitor/DeviceControlActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lackmaniac/vescmonitor/DeviceControlActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 86
    iput-boolean p1, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->getAccelerationData:Z

    return p1
.end method

.method static synthetic access$5602(Lackmaniac/vescmonitor/DeviceControlActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lackmaniac/vescmonitor/DeviceControlActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 86
    iput-boolean p1, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->resetScreen:Z

    return p1
.end method

.method static synthetic access$5700(Lackmaniac/vescmonitor/DeviceControlActivity;)Z
    .locals 1
    .param p0, "x0"    # Lackmaniac/vescmonitor/DeviceControlActivity;

    .prologue
    .line 86
    iget-boolean v0, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->getDragData:Z

    return v0
.end method

.method static synthetic access$5702(Lackmaniac/vescmonitor/DeviceControlActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lackmaniac/vescmonitor/DeviceControlActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 86
    iput-boolean p1, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->getDragData:Z

    return p1
.end method

.method static synthetic access$5800(Lackmaniac/vescmonitor/DeviceControlActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lackmaniac/vescmonitor/DeviceControlActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lackmaniac/vescmonitor/DeviceControlActivity;->writeErrorText(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lackmaniac/vescmonitor/DeviceControlActivity;)I
    .locals 1
    .param p0, "x0"    # Lackmaniac/vescmonitor/DeviceControlActivity;

    .prologue
    .line 86
    iget v0, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->connectCount:I

    return v0
.end method

.method static synthetic access$6000(Lackmaniac/vescmonitor/DeviceControlActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lackmaniac/vescmonitor/DeviceControlActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lackmaniac/vescmonitor/DeviceControlActivity;->parseNmeaString(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$602(Lackmaniac/vescmonitor/DeviceControlActivity;I)I
    .locals 0
    .param p0, "x0"    # Lackmaniac/vescmonitor/DeviceControlActivity;
    .param p1, "x1"    # I

    .prologue
    .line 86
    iput p1, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->connectCount:I

    return p1
.end method

.method static synthetic access$608(Lackmaniac/vescmonitor/DeviceControlActivity;)I
    .locals 2
    .param p0, "x0"    # Lackmaniac/vescmonitor/DeviceControlActivity;

    .prologue
    .line 86
    iget v0, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->connectCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->connectCount:I

    return v0
.end method

.method static synthetic access$6100(Lackmaniac/vescmonitor/DeviceControlActivity;)D
    .locals 2
    .param p0, "x0"    # Lackmaniac/vescmonitor/DeviceControlActivity;

    .prologue
    .line 86
    iget-wide v0, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->altitude:D

    return-wide v0
.end method

.method static synthetic access$6202(Lackmaniac/vescmonitor/DeviceControlActivity;Landroid/location/Location;)Landroid/location/Location;
    .locals 0
    .param p0, "x0"    # Lackmaniac/vescmonitor/DeviceControlActivity;
    .param p1, "x1"    # Landroid/location/Location;

    .prologue
    .line 86
    iput-object p1, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->location:Landroid/location/Location;

    return-object p1
.end method

.method static synthetic access$6300(Lackmaniac/vescmonitor/DeviceControlActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lackmaniac/vescmonitor/DeviceControlActivity;

    .prologue
    .line 86
    iget-object v0, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->speedGPSText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$6400(Lackmaniac/vescmonitor/DeviceControlActivity;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lackmaniac/vescmonitor/DeviceControlActivity;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lackmaniac/vescmonitor/DeviceControlActivity;->toggleButtonClicked(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$6500(Lackmaniac/vescmonitor/DeviceControlActivity;)Landroid/widget/ToggleButton;
    .locals 1
    .param p0, "x0"    # Lackmaniac/vescmonitor/DeviceControlActivity;

    .prologue
    .line 86
    iget-object v0, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->mToggleVideoButton:Landroid/widget/ToggleButton;

    return-object v0
.end method

.method static synthetic access$6600(Lackmaniac/vescmonitor/DeviceControlActivity;)Z
    .locals 1
    .param p0, "x0"    # Lackmaniac/vescmonitor/DeviceControlActivity;

    .prologue
    .line 86
    iget-boolean v0, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->isConnectedToSlave:Z

    return v0
.end method

.method static synthetic access$6700(Lackmaniac/vescmonitor/DeviceControlActivity;)I
    .locals 1
    .param p0, "x0"    # Lackmaniac/vescmonitor/DeviceControlActivity;

    .prologue
    .line 86
    iget v0, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->canControllerId:I

    return v0
.end method

.method static synthetic access$6800(Lackmaniac/vescmonitor/DeviceControlActivity;Ljava/lang/String;ZI)V
    .locals 0
    .param p0, "x0"    # Lackmaniac/vescmonitor/DeviceControlActivity;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Z
    .param p3, "x3"    # I

    .prologue
    .line 86
    invoke-direct {p0, p1, p2, p3}, Lackmaniac/vescmonitor/DeviceControlActivity;->getTerminalCommand(Ljava/lang/String;ZI)V

    return-void
.end method

.method static synthetic access$6900(Lackmaniac/vescmonitor/DeviceControlActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lackmaniac/vescmonitor/DeviceControlActivity;

    .prologue
    .line 86
    iget-object v0, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->mConnectionState:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$700(Lackmaniac/vescmonitor/DeviceControlActivity;)I
    .locals 1
    .param p0, "x0"    # Lackmaniac/vescmonitor/DeviceControlActivity;

    .prologue
    .line 86
    iget v0, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->startTachomaterABS:I

    return v0
.end method

.method static synthetic access$7000(Lackmaniac/vescmonitor/DeviceControlActivity;I)V
    .locals 0
    .param p0, "x0"    # Lackmaniac/vescmonitor/DeviceControlActivity;
    .param p1, "x1"    # I

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lackmaniac/vescmonitor/DeviceControlActivity;->startMode(I)V

    return-void
.end method

.method static synthetic access$702(Lackmaniac/vescmonitor/DeviceControlActivity;I)I
    .locals 0
    .param p0, "x0"    # Lackmaniac/vescmonitor/DeviceControlActivity;
    .param p1, "x1"    # I

    .prologue
    .line 86
    iput p1, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->startTachomaterABS:I

    return p1
.end method

.method static synthetic access$7100(Lackmaniac/vescmonitor/DeviceControlActivity;)V
    .locals 0
    .param p0, "x0"    # Lackmaniac/vescmonitor/DeviceControlActivity;

    .prologue
    .line 86
    invoke-direct {p0}, Lackmaniac/vescmonitor/DeviceControlActivity;->setActualSpeedModeAsDefault()V

    return-void
.end method

.method static synthetic access$7200(Lackmaniac/vescmonitor/DeviceControlActivity;)V
    .locals 0
    .param p0, "x0"    # Lackmaniac/vescmonitor/DeviceControlActivity;

    .prologue
    .line 86
    invoke-direct {p0}, Lackmaniac/vescmonitor/DeviceControlActivity;->showSwitchMotorTypeAsDefaultDialog()V

    return-void
.end method

.method static synthetic access$7300(Lackmaniac/vescmonitor/DeviceControlActivity;)V
    .locals 0
    .param p0, "x0"    # Lackmaniac/vescmonitor/DeviceControlActivity;

    .prologue
    .line 86
    invoke-direct {p0}, Lackmaniac/vescmonitor/DeviceControlActivity;->setChangeMotorType()V

    return-void
.end method

.method static synthetic access$7500(Lackmaniac/vescmonitor/DeviceControlActivity;)Landroid/media/MediaRecorder;
    .locals 1
    .param p0, "x0"    # Lackmaniac/vescmonitor/DeviceControlActivity;

    .prologue
    .line 86
    iget-object v0, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->mMediaRecorder:Landroid/media/MediaRecorder;

    return-object v0
.end method

.method static synthetic access$7602(Lackmaniac/vescmonitor/DeviceControlActivity;Landroid/media/projection/MediaProjection;)Landroid/media/projection/MediaProjection;
    .locals 0
    .param p0, "x0"    # Lackmaniac/vescmonitor/DeviceControlActivity;
    .param p1, "x1"    # Landroid/media/projection/MediaProjection;

    .prologue
    .line 86
    iput-object p1, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->mMediaProjection:Landroid/media/projection/MediaProjection;

    return-object p1
.end method

.method static synthetic access$7700(Lackmaniac/vescmonitor/DeviceControlActivity;)V
    .locals 0
    .param p0, "x0"    # Lackmaniac/vescmonitor/DeviceControlActivity;

    .prologue
    .line 86
    invoke-direct {p0}, Lackmaniac/vescmonitor/DeviceControlActivity;->stopScreenSharing()V

    return-void
.end method

.method static synthetic access$800(Lackmaniac/vescmonitor/DeviceControlActivity;)J
    .locals 2
    .param p0, "x0"    # Lackmaniac/vescmonitor/DeviceControlActivity;

    .prologue
    .line 86
    iget-wide v0, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->startRecordingTime:J

    return-wide v0
.end method

.method static synthetic access$802(Lackmaniac/vescmonitor/DeviceControlActivity;J)J
    .locals 1
    .param p0, "x0"    # Lackmaniac/vescmonitor/DeviceControlActivity;
    .param p1, "x1"    # J

    .prologue
    .line 86
    iput-wide p1, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->startRecordingTime:J

    return-wide p1
.end method

.method static synthetic access$900(Lackmaniac/vescmonitor/DeviceControlActivity;)F
    .locals 1
    .param p0, "x0"    # Lackmaniac/vescmonitor/DeviceControlActivity;

    .prologue
    .line 86
    iget v0, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->startWhDrawn:F

    return v0
.end method

.method static synthetic access$902(Lackmaniac/vescmonitor/DeviceControlActivity;F)F
    .locals 0
    .param p0, "x0"    # Lackmaniac/vescmonitor/DeviceControlActivity;
    .param p1, "x1"    # F

    .prologue
    .line 86
    iput p1, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->startWhDrawn:F

    return p1
.end method

.method private applyStatusBar(Ljava/lang/String;)V
    .locals 5
    .param p1, "titleText"    # Ljava/lang/String;

    .prologue
    .line 606
    new-instance v3, Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-direct {v3, p0}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f070060

    .line 607
    invoke-virtual {v3, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    .line 608
    invoke-virtual {v3, p1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    const-string v4, ""

    .line 609
    invoke-virtual {v3, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    iput-object v3, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    .line 611
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lackmaniac/vescmonitor/BlankActivity;

    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 613
    .local v1, "resultIntent":Landroid/content/Intent;
    const/4 v3, 0x0

    const/high16 v4, 0x8000000

    invoke-static {p0, v3, v1, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 614
    .local v2, "resultPendingIntent":Landroid/app/PendingIntent;
    iget-object v3, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v3, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 615
    iget-object v3, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v3}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    .line 616
    .local v0, "notification":Landroid/app/Notification;
    iget v3, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 v3, v3, 0x22

    iput v3, v0, Landroid/app/Notification;->flags:I

    .line 618
    const-string v3, "notification"

    invoke-virtual {p0, v3}, Lackmaniac/vescmonitor/DeviceControlActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    iput-object v3, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->mNotifyMgr:Landroid/app/NotificationManager;

    .line 619
    iget-object v3, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->mNotifyMgr:Landroid/app/NotificationManager;

    const/4 v4, 0x1

    invoke-virtual {v3, v4, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 621
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lackmaniac/vescmonitor/NotificationService;

    invoke-direct {v3, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v3, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->notificationManagerIntent:Landroid/content/Intent;

    .line 622
    iget-object v3, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->notificationManagerIntent:Landroid/content/Intent;

    invoke-virtual {p0, v3}, Lackmaniac/vescmonitor/DeviceControlActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 623
    return-void
.end method

.method private checkAlarm(F)V
    .locals 8
    .param p1, "fInpVoltage"    # F

    .prologue
    const/16 v7, 0x1f

    const/16 v6, 0x15

    const/16 v5, 0x14

    const/16 v4, 0xb

    const/4 v3, 0x1

    .line 1109
    const/4 v1, 0x0

    .line 1110
    .local v1, "uri":Ljava/lang/String;
    :try_start_0
    iget v2, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->batteryPercent:I

    if-ge v2, v3, :cond_4

    .line 1111
    iget v2, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->percent0:F

    cmpg-float v2, p1, v2

    if-gez v2, :cond_2

    .line 1112
    iget v2, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->percent0:F

    sub-float v2, p1, v2

    iget v3, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->percent10:F

    iget v4, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->percent0:F

    sub-float/2addr v3, v4

    const/high16 v4, 0x41200000    # 10.0f

    div-float/2addr v3, v4

    div-float/2addr v2, v3

    neg-float v2, v2

    float-to-int v2, v2

    iput v2, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->batteryPercent:I

    .line 1113
    iget v2, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->batteryPercent:I

    if-ge v2, v5, :cond_3

    .line 1114
    iget v2, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->alarmCounter:I

    if-eqz v2, :cond_0

    iget v2, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->alarmCounter:I

    const/16 v3, 0x9

    if-le v2, v3, :cond_1

    :cond_0
    const/4 v2, 0x1

    iput v2, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->alarmCounter:I

    .line 1115
    :cond_1
    iget v2, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->alarmCounter:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->alarmCounter:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_2

    .line 1116
    sget-object v2, Lackmaniac/vescmonitor/Utils$ALARM_TYPE;->BATTERY_AT_PERCENT_0:Lackmaniac/vescmonitor/Utils$ALARM_TYPE;

    iput-object v2, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->playedAlarm:Lackmaniac/vescmonitor/Utils$ALARM_TYPE;

    .line 1117
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "android.resource://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lackmaniac/vescmonitor/DeviceControlActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/high16 v3, 0x7f0c0000

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1155
    :cond_2
    :goto_0
    invoke-direct {p0, v1}, Lackmaniac/vescmonitor/DeviceControlActivity;->playSound(Ljava/lang/String;)V

    .line 1159
    :goto_1
    return-void

    .line 1120
    :cond_3
    const/4 v2, 0x0

    iput v2, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->alarmCounter:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1156
    :catch_0
    move-exception v0

    .line 1157
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 1123
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_4
    :try_start_1
    iget v2, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->batteryPercent:I

    if-ge v2, v4, :cond_7

    .line 1124
    iget v2, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->alarmCounter:I

    if-eqz v2, :cond_5

    iget v2, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->alarmCounter:I

    const/16 v3, 0xa

    if-eq v2, v3, :cond_5

    iget v2, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->alarmCounter:I

    const/16 v3, 0x13

    if-le v2, v3, :cond_6

    :cond_5
    const/16 v2, 0xb

    iput v2, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->alarmCounter:I

    .line 1125
    :cond_6
    iget v2, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->alarmCounter:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->alarmCounter:I

    const/16 v3, 0xf

    if-ne v2, v3, :cond_2

    .line 1126
    sget-object v2, Lackmaniac/vescmonitor/Utils$ALARM_TYPE;->BATTERY_AT_PERCENT_10:Lackmaniac/vescmonitor/Utils$ALARM_TYPE;

    iput-object v2, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->playedAlarm:Lackmaniac/vescmonitor/Utils$ALARM_TYPE;

    .line 1127
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "android.resource://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lackmaniac/vescmonitor/DeviceControlActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x7f0c0001

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1129
    :cond_7
    iget v2, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->batteryPercent:I

    if-ge v2, v6, :cond_a

    .line 1130
    iget v2, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->alarmCounter:I

    if-eqz v2, :cond_8

    iget v2, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->alarmCounter:I

    if-eq v2, v5, :cond_8

    iget v2, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->alarmCounter:I

    const/16 v3, 0x1d

    if-le v2, v3, :cond_9

    :cond_8
    const/16 v2, 0x15

    iput v2, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->alarmCounter:I

    .line 1131
    :cond_9
    iget v2, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->alarmCounter:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->alarmCounter:I

    const/16 v3, 0x19

    if-ne v2, v3, :cond_2

    .line 1132
    sget-object v2, Lackmaniac/vescmonitor/Utils$ALARM_TYPE;->BATTERY_AT_PERCENT_20:Lackmaniac/vescmonitor/Utils$ALARM_TYPE;

    iput-object v2, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->playedAlarm:Lackmaniac/vescmonitor/Utils$ALARM_TYPE;

    .line 1133
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "android.resource://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lackmaniac/vescmonitor/DeviceControlActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x7f0c0002

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 1135
    :cond_a
    iget v2, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->batteryPercent:I

    if-ge v2, v7, :cond_d

    .line 1136
    iget v2, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->alarmCounter:I

    if-eqz v2, :cond_b

    iget v2, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->alarmCounter:I

    const/16 v3, 0x1e

    if-eq v2, v3, :cond_b

    iget v2, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->alarmCounter:I

    const/16 v3, 0x27

    if-le v2, v3, :cond_c

    :cond_b
    const/16 v2, 0x1f

    iput v2, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->alarmCounter:I

    .line 1137
    :cond_c
    iget v2, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->alarmCounter:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->alarmCounter:I

    const/16 v3, 0x23

    if-ne v2, v3, :cond_2

    .line 1138
    sget-object v2, Lackmaniac/vescmonitor/Utils$ALARM_TYPE;->BATTERY_AT_PERCENT_30:Lackmaniac/vescmonitor/Utils$ALARM_TYPE;

    iput-object v2, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->playedAlarm:Lackmaniac/vescmonitor/Utils$ALARM_TYPE;

    .line 1139
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "android.resource://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lackmaniac/vescmonitor/DeviceControlActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x7f0c0003

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 1141
    :cond_d
    iget v2, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->batteryPercent:I

    const/16 v3, 0x29

    if-ge v2, v3, :cond_10

    .line 1142
    iget v2, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->alarmCounter:I

    if-eqz v2, :cond_e

    iget v2, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->alarmCounter:I

    const/16 v3, 0x28

    if-eq v2, v3, :cond_e

    iget v2, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->alarmCounter:I

    const/16 v3, 0x31

    if-le v2, v3, :cond_f

    :cond_e
    const/16 v2, 0x29

    iput v2, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->alarmCounter:I

    .line 1143
    :cond_f
    iget v2, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->alarmCounter:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->alarmCounter:I

    const/16 v3, 0x2d

    if-ne v2, v3, :cond_2

    .line 1144
    sget-object v2, Lackmaniac/vescmonitor/Utils$ALARM_TYPE;->BATTERY_AT_PERCENT_40:Lackmaniac/vescmonitor/Utils$ALARM_TYPE;

    iput-object v2, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->playedAlarm:Lackmaniac/vescmonitor/Utils$ALARM_TYPE;

    .line 1145
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "android.resource://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lackmaniac/vescmonitor/DeviceControlActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x7f0c0004

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 1147
    :cond_10
    iget v2, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->batteryPercent:I

    const/16 v3, 0x33

    if-ge v2, v3, :cond_2

    .line 1148
    iget v2, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->alarmCounter:I

    if-eqz v2, :cond_11

    iget v2, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->alarmCounter:I

    const/16 v3, 0x32

    if-eq v2, v3, :cond_11

    iget v2, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->alarmCounter:I

    const/16 v3, 0x3b

    if-le v2, v3, :cond_12

    :cond_11
    const/16 v2, 0x33

    iput v2, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->alarmCounter:I

    .line 1149
    :cond_12
    iget v2, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->alarmCounter:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->alarmCounter:I

    const/16 v3, 0x37

    if-ne v2, v3, :cond_2

    .line 1150
    sget-object v2, Lackmaniac/vescmonitor/Utils$ALARM_TYPE;->BATTERY_AT_PERCENT_50:Lackmaniac/vescmonitor/Utils$ALARM_TYPE;

    iput-object v2, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->playedAlarm:Lackmaniac/vescmonitor/Utils$ALARM_TYPE;

    .line 1151
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "android.resource://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lackmaniac/vescmonitor/DeviceControlActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x7f0c0005

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    goto/16 :goto_0
.end method

.method private createVirtualDisplay()Landroid/hardware/display/VirtualDisplay;
    .locals 11
    .annotation build Landroid/support/annotation/RequiresApi;
        api = 0x15
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 3573
    const-string v0, "VESC_SETTINGS"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lackmaniac/vescmonitor/DeviceControlActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "VIDEO_RESOLUTION"

    const-string v2, "(1280x720)"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 3574
    .local v9, "videoResolution":Ljava/lang/String;
    invoke-virtual {p0}, Lackmaniac/vescmonitor/DeviceControlActivity;->getRequestedOrientation()I

    move-result v0

    invoke-static {v9, v0}, Lackmaniac/vescmonitor/Utils;->getResolutionSize(Ljava/lang/String;I)Landroid/graphics/Point;

    move-result-object v10

    .line 3575
    .local v10, "videoResolutionSize":Landroid/graphics/Point;
    iget-object v0, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->mMediaProjection:Landroid/media/projection/MediaProjection;

    const-string v1, "MainActivity"

    iget v2, v10, Landroid/graphics/Point;->x:I

    iget v3, v10, Landroid/graphics/Point;->y:I

    iget v4, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->mScreenDensity:I

    const/16 v5, 0x10

    iget-object v6, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->mMediaRecorder:Landroid/media/MediaRecorder;

    .line 3578
    invoke-virtual {v6}, Landroid/media/MediaRecorder;->getSurface()Landroid/view/Surface;

    move-result-object v6

    move-object v8, v7

    .line 3575
    invoke-virtual/range {v0 .. v8}, Landroid/media/projection/MediaProjection;->createVirtualDisplay(Ljava/lang/String;IIIILandroid/view/Surface;Landroid/hardware/display/VirtualDisplay$Callback;Landroid/os/Handler;)Landroid/hardware/display/VirtualDisplay;

    move-result-object v0

    return-object v0
.end method

.method private destroyMediaProjection()V
    .locals 2
    .annotation build Landroid/support/annotation/RequiresApi;
        api = 0x15
    .end annotation

    .prologue
    .line 3654
    iget-object v0, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->mMediaProjection:Landroid/media/projection/MediaProjection;

    if-eqz v0, :cond_0

    .line 3655
    iget-object v0, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->mMediaProjection:Landroid/media/projection/MediaProjection;

    iget-object v1, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->mMediaProjectionCallback:Lackmaniac/vescmonitor/DeviceControlActivity$MediaProjectionCallback;

    invoke-virtual {v0, v1}, Landroid/media/projection/MediaProjection;->unregisterCallback(Landroid/media/projection/MediaProjection$Callback;)V

    .line 3656
    iget-object v0, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->mMediaProjection:Landroid/media/projection/MediaProjection;

    invoke-virtual {v0}, Landroid/media/projection/MediaProjection;->stop()V

    .line 3657
    const/4 v0, 0x0

    iput-object v0, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->mMediaProjection:Landroid/media/projection/MediaProjection;

    .line 3659
    :cond_0
    return-void
.end method

.method private getApplicationConf()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 3322
    iget-object v0, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->specialTx:Ljava/util/List;

    new-array v1, v4, [B

    const/4 v2, 0x0

    sget-object v3, Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;->COMM_GET_APPCONF:Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;

    invoke-static {v3}, Lackmaniac/vescmonitor/Utils;->getCommId(Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;)I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    iget-boolean v2, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->isConnectedToSlave:Z

    iget v3, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->canControllerId:I

    invoke-static {v1, v4, v2, v3}, Lackmaniac/vescmonitor/Utils;->sendPacket([BIZI)[B

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3323
    return-void
.end method

.method private getFirmwareVersion()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 3316
    const-string v0, "COMM THREAD"

    const-string v1, "getFirmwareVersion"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3317
    iget-object v0, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->specialTx:Ljava/util/List;

    new-array v1, v4, [B

    sget-object v2, Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;->COMM_FW_VERSION:Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;

    invoke-static {v2}, Lackmaniac/vescmonitor/Utils;->getCommId(Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;)I

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v1, v3

    invoke-static {v1, v4, v3, v3}, Lackmaniac/vescmonitor/Utils;->sendPacket([BIZI)[B

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3318
    return-void
.end method

.method private getMotorConf()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 3327
    iget-object v0, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->specialTx:Ljava/util/List;

    new-array v1, v4, [B

    const/4 v2, 0x0

    sget-object v3, Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;->COMM_GET_MCCONF:Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;

    invoke-static {v3}, Lackmaniac/vescmonitor/Utils;->getCommId(Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;)I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    iget-boolean v2, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->isConnectedToSlave:Z

    iget v3, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->canControllerId:I

    invoke-static {v1, v4, v2, v3}, Lackmaniac/vescmonitor/Utils;->sendPacket([BIZI)[B

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3328
    return-void
.end method

.method private getSpeedMode()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 3287
    invoke-static {}, Lackmaniac/vescmonitor/Utils;->getFirmwareVersion()Ljava/lang/String;

    move-result-object v3

    const/4 v0, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 3310
    iput v1, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->actualPPMMode:I

    .line 3311
    :goto_1
    return-void

    .line 3287
    :sswitch_0
    const-string v4, "3.27"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v0, v1

    goto :goto_0

    :sswitch_1
    const-string v4, "3.28"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v0, v2

    goto :goto_0

    :sswitch_2
    const-string v4, "3.29"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :sswitch_3
    const-string v4, "3.30"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :sswitch_4
    const-string v4, "3.31"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :sswitch_5
    const-string v4, "3.32"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x5

    goto :goto_0

    :sswitch_6
    const-string v4, "3.33"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x6

    goto :goto_0

    :sswitch_7
    const-string v4, "3.34"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x7

    goto :goto_0

    :sswitch_8
    const-string v4, "3.35"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v0, 0x8

    goto :goto_0

    :sswitch_9
    const-string v4, "3.36"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v0, 0x9

    goto :goto_0

    :sswitch_a
    const-string v4, "2.52"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v0, 0xa

    goto :goto_0

    :sswitch_b
    const-string v4, "2.18"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v0, 0xb

    goto/16 :goto_0

    :sswitch_c
    const-string v4, "2.53"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v0, 0xc

    goto/16 :goto_0

    :sswitch_d
    const-string v4, "2.54"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v0, 0xd

    goto/16 :goto_0

    :sswitch_e
    const-string v4, "3.100"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v0, 0xe

    goto/16 :goto_0

    :sswitch_f
    const-string v4, "3.101"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v0, 0xf

    goto/16 :goto_0

    .line 3300
    :pswitch_0
    invoke-direct {p0}, Lackmaniac/vescmonitor/DeviceControlActivity;->getMotorConf()V

    .line 3301
    invoke-direct {p0}, Lackmaniac/vescmonitor/DeviceControlActivity;->getApplicationConf()V

    goto/16 :goto_1

    .line 3307
    :pswitch_1
    iget-object v0, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->specialTx:Ljava/util/List;

    new-array v3, v2, [B

    sget-object v4, Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;->COMM_GET_SPEED_MODE:Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;

    invoke-static {v4}, Lackmaniac/vescmonitor/Utils;->getCommId(Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;)I

    move-result v4

    int-to-byte v4, v4

    aput-byte v4, v3, v1

    iget-boolean v1, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->isConnectedToSlave:Z

    iget v4, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->canControllerId:I

    invoke-static {v3, v2, v1, v4}, Lackmaniac/vescmonitor/Utils;->sendPacket([BIZI)[B

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 3287
    nop

    :sswitch_data_0
    .sparse-switch
        0x176d63 -> :sswitch_b
        0x176dd9 -> :sswitch_a
        0x176dda -> :sswitch_c
        0x176ddb -> :sswitch_d
        0x17e1e0 -> :sswitch_0
        0x17e1e1 -> :sswitch_1
        0x17e1e2 -> :sswitch_2
        0x17e1f8 -> :sswitch_3
        0x17e1f9 -> :sswitch_4
        0x17e1fa -> :sswitch_5
        0x17e1fb -> :sswitch_6
        0x17e1fc -> :sswitch_7
        0x17e1fd -> :sswitch_8
        0x17e1fe -> :sswitch_9
        0x2e455b6 -> :sswitch_e
        0x2e455b7 -> :sswitch_f
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private getTerminalCommand(Ljava/lang/String;ZI)V
    .locals 8
    .param p1, "terminalCommand"    # Ljava/lang/String;
    .param p2, "askConnectedSlave"    # Z
    .param p3, "askControllerId"    # I

    .prologue
    .line 3268
    iget-boolean v4, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->mConnected:Z

    if-eqz v4, :cond_1

    .line 3270
    const/4 v2, 0x0

    .line 3271
    .local v2, "ind":I
    const/16 v4, 0x64

    new-array v1, v4, [B

    .line 3272
    .local v1, "command":[B
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "ind":I
    .local v3, "ind":I
    sget-object v4, Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;->COMM_TERMINAL_CMD:Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;

    invoke-static {v4}, Lackmaniac/vescmonitor/Utils;->getCommId(Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;)I

    move-result v4

    int-to-byte v4, v4

    aput-byte v4, v1, v2

    .line 3273
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    array-length v6, v5

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v6, :cond_0

    aget-char v0, v5, v4

    .line 3274
    .local v0, "c":C
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "ind":I
    .restart local v2    # "ind":I
    int-to-byte v7, v0

    aput-byte v7, v1, v3

    .line 3273
    add-int/lit8 v4, v4, 0x1

    move v3, v2

    .end local v2    # "ind":I
    .restart local v3    # "ind":I
    goto :goto_0

    .line 3277
    .end local v0    # "c":C
    :cond_0
    iget-object v4, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->specialTx:Ljava/util/List;

    invoke-static {v1, v3, p2, p3}, Lackmaniac/vescmonitor/Utils;->sendPacket([BIZI)[B

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3278
    const-string v4, "COMM THREAD"

    const-string v5, "getTerminalCommand"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3282
    .end local v1    # "command":[B
    .end local v3    # "ind":I
    :goto_1
    return-void

    .line 3280
    :cond_1
    const v4, 0x7f0d00a6

    const/4 v5, 0x1

    invoke-static {p0, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method

.method private handleStatistics(Lackmaniac/vescmonitor/RealtimeData;)V
    .locals 20
    .param p1, "data"    # Lackmaniac/vescmonitor/RealtimeData;

    .prologue
    .line 1001
    move-object/from16 v0, p1

    iget v8, v0, Lackmaniac/vescmonitor/RealtimeData;->rpm:F

    invoke-static {}, Lackmaniac/vescmonitor/Utils;->getSpeedDevider()F

    move-result v9

    div-float/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    float-to-double v4, v8

    .line 1002
    .local v4, "speedAbs":D
    move-object/from16 v0, p0

    iget v8, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->startTachomaterABS:I

    const/4 v9, -0x1

    if-eq v8, v9, :cond_2

    .line 1003
    move-object/from16 v0, p0

    iget-wide v2, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->savedRecordTime:J

    .line 1004
    .local v2, "previousRecordTime":J
    move-object/from16 v0, p1

    iget-object v8, v0, Lackmaniac/vescmonitor/RealtimeData;->time:Ljava/util/Date;

    invoke-virtual {v8}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    move-object/from16 v0, p0

    iput-wide v8, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->savedRecordTime:J

    .line 1005
    move-object/from16 v0, p0

    iget-wide v8, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->savedRecordTime:J

    sub-long/2addr v8, v2

    long-to-float v8, v8

    const/high16 v9, 0x447a0000    # 1000.0f

    div-float v6, v8, v9

    .line 1007
    .local v6, "timeDiffFactor":F
    move-object/from16 v0, p0

    iget-object v8, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->speedAvgText:Landroid/widget/TextView;

    sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v10, "%.1f"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    move-object/from16 v0, p1

    iget v13, v0, Lackmaniac/vescmonitor/RealtimeData;->tachometerAbs:F

    move-object/from16 v0, p0

    iget v14, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->startTachomaterABS:I

    int-to-float v14, v14

    sub-float/2addr v13, v14

    invoke-static {}, Lackmaniac/vescmonitor/Utils;->getDistanceFactor()F

    move-result v14

    mul-float/2addr v13, v14

    const/high16 v14, 0x447a0000    # 1000.0f

    div-float/2addr v13, v14

    const/high16 v14, 0x45610000    # 3600.0f

    move-object/from16 v0, p0

    iget-wide v0, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->savedRecordTime:J

    move-wide/from16 v16, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->startTime:J

    move-wide/from16 v18, v0

    sub-long v16, v16, v18

    move-wide/from16 v0, v16

    long-to-float v15, v0

    const/high16 v16, 0x447a0000    # 1000.0f

    div-float v15, v15, v16

    div-float/2addr v14, v15

    mul-float/2addr v13, v14

    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v9, v10, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1009
    move-object/from16 v0, p1

    iget v8, v0, Lackmaniac/vescmonitor/RealtimeData;->avgInputCurrent:F

    float-to-double v8, v8

    const-wide/high16 v10, 0x3fd0000000000000L    # 0.25

    cmpl-double v8, v8, v10

    if-lez v8, :cond_4

    .line 1010
    move-object/from16 v0, p0

    iget v8, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->totalUsedPosTime:F

    add-float/2addr v8, v6

    move-object/from16 v0, p0

    iput v8, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->totalUsedPosTime:F

    .line 1011
    move-object/from16 v0, p0

    iget v8, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->usedMotorAmpsPos:F

    move-object/from16 v0, p1

    iget v9, v0, Lackmaniac/vescmonitor/RealtimeData;->avgMotorCurrent:F

    mul-float/2addr v9, v6

    add-float/2addr v8, v9

    move-object/from16 v0, p0

    iput v8, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->usedMotorAmpsPos:F

    .line 1013
    move-object/from16 v0, p0

    iget v8, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->usedBatteryAmpsPos:F

    move-object/from16 v0, p1

    iget v9, v0, Lackmaniac/vescmonitor/RealtimeData;->avgInputCurrent:F

    mul-float/2addr v9, v6

    add-float/2addr v8, v9

    move-object/from16 v0, p0

    iput v8, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->usedBatteryAmpsPos:F

    .line 1014
    move-object/from16 v0, p0

    iget v8, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->activeWatt:F

    move-object/from16 v0, p1

    iget v9, v0, Lackmaniac/vescmonitor/RealtimeData;->power:F

    mul-float/2addr v9, v6

    add-float/2addr v8, v9

    move-object/from16 v0, p0

    iput v8, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->activeWatt:F

    .line 1022
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v8, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->avgMotorAmpsUsedPos:Landroid/widget/TextView;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v10, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v11, "%.1f"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget v14, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->usedMotorAmpsPos:F

    move-object/from16 v0, p0

    iget v15, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->noOfMotors:I

    int-to-float v15, v15

    mul-float/2addr v14, v15

    move-object/from16 v0, p0

    iget v15, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->totalUsedPosTime:F

    div-float/2addr v14, v15

    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v10, v11, v12}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "|"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1023
    move-object/from16 v0, p0

    iget-object v8, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->avgMotorAmpsUsedNeg:Landroid/widget/TextView;

    sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v10, "%.1f"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget v13, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->usedMotorAmpsNeg:F

    move-object/from16 v0, p0

    iget v14, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->noOfMotors:I

    int-to-float v14, v14

    mul-float/2addr v13, v14

    move-object/from16 v0, p0

    iget v14, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->totalUsedNegTime:F

    div-float/2addr v13, v14

    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v9, v10, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1025
    move-object/from16 v0, p0

    iget-object v8, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->avgBatteryAmpsUsedPos:Landroid/widget/TextView;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v10, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v11, "%.1f"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget v14, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->usedBatteryAmpsPos:F

    move-object/from16 v0, p0

    iget v15, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->noOfMotors:I

    int-to-float v15, v15

    mul-float/2addr v14, v15

    move-object/from16 v0, p0

    iget v15, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->totalUsedPosTime:F

    div-float/2addr v14, v15

    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v10, v11, v12}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "|"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1026
    move-object/from16 v0, p0

    iget-object v8, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->avgBatteryAmpsUsedNeg:Landroid/widget/TextView;

    sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v10, "%.1f"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget v13, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->usedBatteryAmpsNeg:F

    move-object/from16 v0, p0

    iget v14, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->noOfMotors:I

    int-to-float v14, v14

    mul-float/2addr v13, v14

    move-object/from16 v0, p0

    iget v14, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->totalUsedNegTime:F

    div-float/2addr v13, v14

    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v9, v10, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1028
    move-object/from16 v0, p0

    iget-object v8, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->avgWattActive:Landroid/widget/TextView;

    sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v10, "%.0f"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget v13, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->activeWatt:F

    move-object/from16 v0, p0

    iget v14, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->noOfMotors:I

    int-to-float v14, v14

    mul-float/2addr v13, v14

    move-object/from16 v0, p0

    iget v14, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->totalUsedPosTime:F

    move-object/from16 v0, p0

    iget v15, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->totalUsedNegTime:F

    add-float/2addr v14, v15

    div-float/2addr v13, v14

    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v9, v10, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1030
    move-object/from16 v0, p0

    iget v8, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->totalTemp:F

    move-object/from16 v0, p1

    iget v9, v0, Lackmaniac/vescmonitor/RealtimeData;->tempPcb:F

    mul-float/2addr v9, v6

    add-float/2addr v8, v9

    move-object/from16 v0, p0

    iput v8, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->totalTemp:F

    .line 1031
    invoke-static {}, Lackmaniac/vescmonitor/Utils;->getFirmwareVersion()Ljava/lang/String;

    move-result-object v8

    const-string v9, "3"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    move-object/from16 v0, p1

    iget v8, v0, Lackmaniac/vescmonitor/RealtimeData;->tempMotor:F

    float-to-double v8, v8

    const-wide/high16 v10, -0x3fec000000000000L    # -5.0

    cmpl-double v8, v8, v10

    if-lez v8, :cond_5

    .line 1032
    move-object/from16 v0, p0

    iget-object v8, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->avgTemperaturTotalTitel:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lackmaniac/vescmonitor/DeviceControlActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0d0062

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1033
    move-object/from16 v0, p0

    iget-object v8, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->avgTemperaturTotal:Landroid/widget/TextView;

    sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v10, "%.1f"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    move-object/from16 v0, p1

    iget v13, v0, Lackmaniac/vescmonitor/RealtimeData;->tempMotor:F

    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v9, v10, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1039
    :goto_1
    const-wide v8, 0x3fb999999999999aL    # 0.1

    cmpl-double v8, v4, v8

    if-lez v8, :cond_1

    .line 1040
    move-object/from16 v0, p0

    iget v8, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->totalRidingTime:F

    add-float/2addr v8, v6

    move-object/from16 v0, p0

    iput v8, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->totalRidingTime:F

    .line 1042
    move-object/from16 v0, p1

    iget v8, v0, Lackmaniac/vescmonitor/RealtimeData;->avgMotorCurrent:F

    const/4 v9, 0x0

    cmpl-float v8, v8, v9

    if-ltz v8, :cond_6

    .line 1043
    move-object/from16 v0, p0

    iget v8, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->ridingMotorAmpsPos:F

    move-object/from16 v0, p1

    iget v9, v0, Lackmaniac/vescmonitor/RealtimeData;->avgMotorCurrent:F

    mul-float/2addr v9, v6

    add-float/2addr v8, v9

    move-object/from16 v0, p0

    iput v8, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->ridingMotorAmpsPos:F

    .line 1048
    :goto_2
    move-object/from16 v0, p1

    iget v8, v0, Lackmaniac/vescmonitor/RealtimeData;->avgInputCurrent:F

    const/4 v9, 0x0

    cmpl-float v8, v8, v9

    if-ltz v8, :cond_7

    .line 1049
    move-object/from16 v0, p0

    iget v8, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->ridingBatteryAmpsPos:F

    move-object/from16 v0, p1

    iget v9, v0, Lackmaniac/vescmonitor/RealtimeData;->avgInputCurrent:F

    mul-float/2addr v9, v6

    add-float/2addr v8, v9

    move-object/from16 v0, p0

    iput v8, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->ridingBatteryAmpsPos:F

    .line 1054
    :goto_3
    move-object/from16 v0, p0

    iget v8, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->ridingWatt:F

    move-object/from16 v0, p1

    iget v9, v0, Lackmaniac/vescmonitor/RealtimeData;->power:F

    mul-float/2addr v9, v6

    add-float/2addr v8, v9

    move-object/from16 v0, p0

    iput v8, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->ridingWatt:F

    .line 1057
    :cond_1
    move-object/from16 v0, p0

    iget-object v8, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->timeTotal:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-wide v10, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->savedRecordTime:J

    move-object/from16 v0, p0

    iget-wide v12, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->startRecordingTime:J

    sub-long/2addr v10, v12

    invoke-static {v10, v11}, Lackmaniac/vescmonitor/Utils;->getMinuteSeconds(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1058
    move-object/from16 v0, p0

    iget-object v8, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->timeRiding:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget v9, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->totalRidingTime:F

    const/high16 v10, 0x447a0000    # 1000.0f

    mul-float/2addr v9, v10

    float-to-long v10, v9

    invoke-static {v10, v11}, Lackmaniac/vescmonitor/Utils;->getMinuteSeconds(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1060
    move-object/from16 v0, p0

    iget-object v8, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->speedAvgRunningText:Landroid/widget/TextView;

    sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v10, "%.1f"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    move-object/from16 v0, p1

    iget v13, v0, Lackmaniac/vescmonitor/RealtimeData;->tachometerAbs:F

    move-object/from16 v0, p0

    iget v14, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->startTachomaterABS:I

    int-to-float v14, v14

    sub-float/2addr v13, v14

    invoke-static {}, Lackmaniac/vescmonitor/Utils;->getDistanceFactor()F

    move-result v14

    mul-float/2addr v13, v14

    const/high16 v14, 0x447a0000    # 1000.0f

    div-float/2addr v13, v14

    const/high16 v14, 0x45610000    # 3600.0f

    move-object/from16 v0, p0

    iget v15, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->totalRidingTime:F

    div-float/2addr v14, v15

    mul-float/2addr v13, v14

    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v9, v10, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1062
    move-object/from16 v0, p0

    iget-object v8, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->avgMotorAmpsRidingPos:Landroid/widget/TextView;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v10, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v11, "%.1f"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget v14, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->ridingMotorAmpsPos:F

    move-object/from16 v0, p0

    iget v15, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->noOfMotors:I

    int-to-float v15, v15

    mul-float/2addr v14, v15

    move-object/from16 v0, p0

    iget v15, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->totalRidingTime:F

    div-float/2addr v14, v15

    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v10, v11, v12}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "|"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1063
    move-object/from16 v0, p0

    iget-object v8, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->avgMotorAmpsRidingNeg:Landroid/widget/TextView;

    sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v10, "%.1f"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget v13, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->ridingMotorAmpsNeg:F

    move-object/from16 v0, p0

    iget v14, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->noOfMotors:I

    int-to-float v14, v14

    mul-float/2addr v13, v14

    move-object/from16 v0, p0

    iget v14, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->totalRidingTime:F

    div-float/2addr v13, v14

    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v9, v10, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1065
    move-object/from16 v0, p0

    iget-object v8, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->avgBatteryAmpsRidingPos:Landroid/widget/TextView;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v10, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v11, "%.1f"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget v14, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->ridingBatteryAmpsPos:F

    move-object/from16 v0, p0

    iget v15, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->noOfMotors:I

    int-to-float v15, v15

    mul-float/2addr v14, v15

    move-object/from16 v0, p0

    iget v15, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->totalRidingTime:F

    div-float/2addr v14, v15

    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v10, v11, v12}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "|"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1066
    move-object/from16 v0, p0

    iget-object v8, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->avgBatteryAmpsRidingNeg:Landroid/widget/TextView;

    sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v10, "%.1f"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget v13, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->ridingBatteryAmpsNeg:F

    move-object/from16 v0, p0

    iget v14, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->noOfMotors:I

    int-to-float v14, v14

    mul-float/2addr v13, v14

    move-object/from16 v0, p0

    iget v14, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->totalRidingTime:F

    div-float/2addr v13, v14

    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v9, v10, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1068
    move-object/from16 v0, p0

    iget-object v8, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->avgWattRiding:Landroid/widget/TextView;

    sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v10, "%.0f"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget v13, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->ridingWatt:F

    move-object/from16 v0, p0

    iget v14, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->noOfMotors:I

    int-to-float v14, v14

    mul-float/2addr v13, v14

    move-object/from16 v0, p0

    iget v14, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->totalRidingTime:F

    div-float/2addr v13, v14

    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v9, v10, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1070
    new-instance v7, Ljava/io/StringWriter;

    invoke-direct {v7}, Ljava/io/StringWriter;-><init>()V

    .line 1071
    .local v7, "writer":Ljava/io/StringWriter;
    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/io/StringWriter;->append(Ljava/lang/CharSequence;)Ljava/io/StringWriter;

    move-result-object v8

    sget-object v9, Lackmaniac/vescmonitor/Utils;->formatter:Ljava/text/DateFormat;

    move-object/from16 v0, p1

    iget-object v10, v0, Lackmaniac/vescmonitor/RealtimeData;->time:Ljava/util/Date;

    .line 1072
    invoke-virtual {v9, v10}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/StringWriter;->append(Ljava/lang/CharSequence;)Ljava/io/StringWriter;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/io/StringWriter;->append(Ljava/lang/CharSequence;)Ljava/io/StringWriter;

    move-result-object v8

    sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v10, "%.1f"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    move-object/from16 v0, p1

    iget v13, v0, Lackmaniac/vescmonitor/RealtimeData;->tempPcb:F

    .line 1073
    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v9, v10, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/StringWriter;->append(Ljava/lang/CharSequence;)Ljava/io/StringWriter;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/io/StringWriter;->append(Ljava/lang/CharSequence;)Ljava/io/StringWriter;

    move-result-object v8

    sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v10, "%.2f"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    move-object/from16 v0, p1

    iget v13, v0, Lackmaniac/vescmonitor/RealtimeData;->avgMotorCurrent:F

    move-object/from16 v0, p0

    iget v14, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->noOfMotors:I

    int-to-float v14, v14

    mul-float/2addr v13, v14

    .line 1074
    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v9, v10, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/StringWriter;->append(Ljava/lang/CharSequence;)Ljava/io/StringWriter;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/io/StringWriter;->append(Ljava/lang/CharSequence;)Ljava/io/StringWriter;

    move-result-object v8

    sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v10, "%.2f"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    move-object/from16 v0, p1

    iget v13, v0, Lackmaniac/vescmonitor/RealtimeData;->avgInputCurrent:F

    move-object/from16 v0, p0

    iget v14, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->noOfMotors:I

    int-to-float v14, v14

    mul-float/2addr v13, v14

    .line 1075
    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v9, v10, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/StringWriter;->append(Ljava/lang/CharSequence;)Ljava/io/StringWriter;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/io/StringWriter;->append(Ljava/lang/CharSequence;)Ljava/io/StringWriter;

    move-result-object v8

    sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v10, "%.0f"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    move-object/from16 v0, p1

    iget v13, v0, Lackmaniac/vescmonitor/RealtimeData;->dutyCycleNow:F

    .line 1076
    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v9, v10, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/StringWriter;->append(Ljava/lang/CharSequence;)Ljava/io/StringWriter;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/io/StringWriter;->append(Ljava/lang/CharSequence;)Ljava/io/StringWriter;

    move-result-object v8

    sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v10, "%.1f"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    move-object/from16 v0, p1

    iget v13, v0, Lackmaniac/vescmonitor/RealtimeData;->rpm:F

    .line 1077
    invoke-static {}, Lackmaniac/vescmonitor/Utils;->getSpeedDevider()F

    move-result v14

    div-float/2addr v13, v14

    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v9, v10, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/StringWriter;->append(Ljava/lang/CharSequence;)Ljava/io/StringWriter;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/io/StringWriter;->append(Ljava/lang/CharSequence;)Ljava/io/StringWriter;

    move-result-object v8

    sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v10, "%.1f"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    move-object/from16 v0, p1

    iget v13, v0, Lackmaniac/vescmonitor/RealtimeData;->inpVoltage:F

    .line 1078
    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v9, v10, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/StringWriter;->append(Ljava/lang/CharSequence;)Ljava/io/StringWriter;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/io/StringWriter;->append(Ljava/lang/CharSequence;)Ljava/io/StringWriter;

    move-result-object v8

    sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v10, "%.3f"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    move-object/from16 v0, p1

    iget v13, v0, Lackmaniac/vescmonitor/RealtimeData;->ampHours:F

    move-object/from16 v0, p0

    iget v14, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->noOfMotors:I

    int-to-float v14, v14

    mul-float/2addr v13, v14

    .line 1079
    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v9, v10, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/StringWriter;->append(Ljava/lang/CharSequence;)Ljava/io/StringWriter;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/io/StringWriter;->append(Ljava/lang/CharSequence;)Ljava/io/StringWriter;

    move-result-object v8

    sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v10, "%.3f"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    move-object/from16 v0, p1

    iget v13, v0, Lackmaniac/vescmonitor/RealtimeData;->ampHoursCharged:F

    move-object/from16 v0, p0

    iget v14, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->noOfMotors:I

    int-to-float v14, v14

    mul-float/2addr v13, v14

    .line 1080
    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v9, v10, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/StringWriter;->append(Ljava/lang/CharSequence;)Ljava/io/StringWriter;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/io/StringWriter;->append(Ljava/lang/CharSequence;)Ljava/io/StringWriter;

    move-result-object v8

    sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v10, "%.3f"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    move-object/from16 v0, p1

    iget v13, v0, Lackmaniac/vescmonitor/RealtimeData;->wattHours:F

    move-object/from16 v0, p0

    iget v14, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->noOfMotors:I

    int-to-float v14, v14

    mul-float/2addr v13, v14

    .line 1081
    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v9, v10, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/StringWriter;->append(Ljava/lang/CharSequence;)Ljava/io/StringWriter;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/io/StringWriter;->append(Ljava/lang/CharSequence;)Ljava/io/StringWriter;

    move-result-object v8

    sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v10, "%.3f"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    move-object/from16 v0, p1

    iget v13, v0, Lackmaniac/vescmonitor/RealtimeData;->wattHoursCharged:F

    move-object/from16 v0, p0

    iget v14, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->noOfMotors:I

    int-to-float v14, v14

    mul-float/2addr v13, v14

    .line 1082
    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v9, v10, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/StringWriter;->append(Ljava/lang/CharSequence;)Ljava/io/StringWriter;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/io/StringWriter;->append(Ljava/lang/CharSequence;)Ljava/io/StringWriter;

    move-result-object v8

    sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v10, "%.3f"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    move-object/from16 v0, p1

    iget v13, v0, Lackmaniac/vescmonitor/RealtimeData;->tachometerAbs:F

    .line 1083
    invoke-static {}, Lackmaniac/vescmonitor/Utils;->getDistanceFactor()F

    move-result v14

    mul-float/2addr v13, v14

    const/high16 v14, 0x447a0000    # 1000.0f

    div-float/2addr v13, v14

    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v9, v10, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/StringWriter;->append(Ljava/lang/CharSequence;)Ljava/io/StringWriter;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/io/StringWriter;->append(Ljava/lang/CharSequence;)Ljava/io/StringWriter;

    move-result-object v8

    sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v10, "%.0f"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    move-object/from16 v0, p1

    iget v13, v0, Lackmaniac/vescmonitor/RealtimeData;->power:F

    move-object/from16 v0, p0

    iget v14, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->noOfMotors:I

    int-to-float v14, v14

    mul-float/2addr v13, v14

    .line 1084
    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v9, v10, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/StringWriter;->append(Ljava/lang/CharSequence;)Ljava/io/StringWriter;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/io/StringWriter;->append(Ljava/lang/CharSequence;)Ljava/io/StringWriter;

    move-result-object v8

    move-object/from16 v0, p1

    iget v9, v0, Lackmaniac/vescmonitor/RealtimeData;->fault:I

    .line 1085
    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/StringWriter;->append(Ljava/lang/CharSequence;)Ljava/io/StringWriter;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/io/StringWriter;->append(Ljava/lang/CharSequence;)Ljava/io/StringWriter;

    move-result-object v8

    move-object/from16 v0, p0

    iget-wide v10, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->savedRecordTime:J

    move-object/from16 v0, p0

    iget-wide v12, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->startRecordingTime:J

    sub-long/2addr v10, v12

    .line 1086
    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/StringWriter;->append(Ljava/lang/CharSequence;)Ljava/io/StringWriter;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/io/StringWriter;->append(Ljava/lang/CharSequence;)Ljava/io/StringWriter;

    .line 1087
    move-object/from16 v0, p1

    iget-object v8, v0, Lackmaniac/vescmonitor/RealtimeData;->location:Landroid/location/Location;

    if-eqz v8, :cond_9

    .line 1088
    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v9, "%.7f"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    move-object/from16 v0, p1

    iget-object v12, v0, Lackmaniac/vescmonitor/RealtimeData;->location:Landroid/location/Location;

    invoke-virtual {v12}, Landroid/location/Location;->getLatitude()D

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v8, v9, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/StringWriter;->append(Ljava/lang/CharSequence;)Ljava/io/StringWriter;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/io/StringWriter;->append(Ljava/lang/CharSequence;)Ljava/io/StringWriter;

    move-result-object v8

    sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v10, "%.7f"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    move-object/from16 v0, p1

    iget-object v13, v0, Lackmaniac/vescmonitor/RealtimeData;->location:Landroid/location/Location;

    .line 1089
    invoke-virtual {v13}, Landroid/location/Location;->getLongitude()D

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v9, v10, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/StringWriter;->append(Ljava/lang/CharSequence;)Ljava/io/StringWriter;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/io/StringWriter;->append(Ljava/lang/CharSequence;)Ljava/io/StringWriter;

    move-result-object v8

    sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v10, "%.1f"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    move-object/from16 v0, p1

    iget-object v13, v0, Lackmaniac/vescmonitor/RealtimeData;->location:Landroid/location/Location;

    .line 1090
    invoke-virtual {v13}, Landroid/location/Location;->getAltitude()D

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v9, v10, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/StringWriter;->append(Ljava/lang/CharSequence;)Ljava/io/StringWriter;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/io/StringWriter;->append(Ljava/lang/CharSequence;)Ljava/io/StringWriter;

    move-result-object v9

    sget-object v10, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v11, "%.2f"

    const/4 v8, 0x1

    new-array v12, v8, [Ljava/lang/Object;

    const/4 v13, 0x0

    move-object/from16 v0, p1

    iget-object v8, v0, Lackmaniac/vescmonitor/RealtimeData;->location:Landroid/location/Location;

    .line 1091
    invoke-virtual {v8}, Landroid/location/Location;->getSpeed()F

    move-result v8

    const v14, 0x40666666    # 3.6f

    mul-float/2addr v14, v8

    move-object/from16 v0, p0

    iget v8, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->distanceUnit:I

    const/4 v15, 0x1

    if-ne v8, v15, :cond_8

    const v8, 0x3fcdfeda

    :goto_4
    div-float v8, v14, v8

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    aput-object v8, v12, v13

    invoke-static {v10, v11, v12}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/io/StringWriter;->append(Ljava/lang/CharSequence;)Ljava/io/StringWriter;

    .line 1101
    .end local v2    # "previousRecordTime":J
    .end local v6    # "timeDiffFactor":F
    .end local v7    # "writer":Ljava/io/StringWriter;
    :cond_2
    :goto_5
    move-object/from16 v0, p0

    iget-boolean v8, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->statusBarNeedsUpdate:Z

    if-eqz v8, :cond_3

    .line 1102
    invoke-direct/range {p0 .. p0}, Lackmaniac/vescmonitor/DeviceControlActivity;->updateStatusBar()V

    .line 1103
    const/4 v8, 0x0

    move-object/from16 v0, p0

    iput-boolean v8, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->statusBarNeedsUpdate:Z

    .line 1105
    :cond_3
    return-void

    .line 1015
    .restart local v2    # "previousRecordTime":J
    .restart local v6    # "timeDiffFactor":F
    :cond_4
    move-object/from16 v0, p1

    iget v8, v0, Lackmaniac/vescmonitor/RealtimeData;->avgInputCurrent:F

    float-to-double v8, v8

    const-wide/high16 v10, -0x4030000000000000L    # -0.25

    cmpg-double v8, v8, v10

    if-gez v8, :cond_0

    .line 1016
    move-object/from16 v0, p0

    iget v8, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->totalUsedNegTime:F

    add-float/2addr v8, v6

    move-object/from16 v0, p0

    iput v8, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->totalUsedNegTime:F

    .line 1017
    move-object/from16 v0, p0

    iget v8, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->usedMotorAmpsNeg:F

    move-object/from16 v0, p1

    iget v9, v0, Lackmaniac/vescmonitor/RealtimeData;->avgMotorCurrent:F

    mul-float/2addr v9, v6

    add-float/2addr v8, v9

    move-object/from16 v0, p0

    iput v8, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->usedMotorAmpsNeg:F

    .line 1019
    move-object/from16 v0, p0

    iget v8, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->usedBatteryAmpsNeg:F

    move-object/from16 v0, p1

    iget v9, v0, Lackmaniac/vescmonitor/RealtimeData;->avgInputCurrent:F

    mul-float/2addr v9, v6

    add-float/2addr v8, v9

    move-object/from16 v0, p0

    iput v8, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->usedBatteryAmpsNeg:F

    .line 1020
    move-object/from16 v0, p0

    iget v8, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->activeWatt:F

    move-object/from16 v0, p1

    iget v9, v0, Lackmaniac/vescmonitor/RealtimeData;->power:F

    mul-float/2addr v9, v6

    add-float/2addr v8, v9

    move-object/from16 v0, p0

    iput v8, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->activeWatt:F

    goto/16 :goto_0

    .line 1035
    :cond_5
    move-object/from16 v0, p0

    iget-object v8, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->avgTemperaturTotalTitel:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lackmaniac/vescmonitor/DeviceControlActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0d002c

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1036
    move-object/from16 v0, p0

    iget-object v8, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->avgTemperaturTotal:Landroid/widget/TextView;

    sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v10, "%.1f"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget v13, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->totalTemp:F

    move-object/from16 v0, p0

    iget-wide v14, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->savedRecordTime:J

    move-object/from16 v0, p0

    iget-wide v0, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->startTime:J

    move-wide/from16 v16, v0

    sub-long v14, v14, v16

    long-to-float v14, v14

    const/high16 v15, 0x447a0000    # 1000.0f

    div-float/2addr v14, v15

    div-float/2addr v13, v14

    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v9, v10, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 1045
    :cond_6
    move-object/from16 v0, p0

    iget v8, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->ridingMotorAmpsNeg:F

    move-object/from16 v0, p1

    iget v9, v0, Lackmaniac/vescmonitor/RealtimeData;->avgMotorCurrent:F

    mul-float/2addr v9, v6

    add-float/2addr v8, v9

    move-object/from16 v0, p0

    iput v8, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->ridingMotorAmpsNeg:F

    goto/16 :goto_2

    .line 1051
    :cond_7
    move-object/from16 v0, p0

    iget v8, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->ridingBatteryAmpsNeg:F

    move-object/from16 v0, p1

    iget v9, v0, Lackmaniac/vescmonitor/RealtimeData;->avgInputCurrent:F

    mul-float/2addr v9, v6

    add-float/2addr v8, v9

    move-object/from16 v0, p0

    iput v8, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->ridingBatteryAmpsNeg:F

    goto/16 :goto_3

    .line 1091
    .restart local v7    # "writer":Ljava/io/StringWriter;
    :cond_8
    const/high16 v8, 0x3f800000    # 1.0f

    goto/16 :goto_4

    .line 1094
    :cond_9
    const-string v8, "0.0"

    invoke-virtual {v7, v8}, Ljava/io/StringWriter;->append(Ljava/lang/CharSequence;)Ljava/io/StringWriter;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/io/StringWriter;->append(Ljava/lang/CharSequence;)Ljava/io/StringWriter;

    move-result-object v8

    const-string v9, "0.0"

    .line 1095
    invoke-virtual {v8, v9}, Ljava/io/StringWriter;->append(Ljava/lang/CharSequence;)Ljava/io/StringWriter;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/io/StringWriter;->append(Ljava/lang/CharSequence;)Ljava/io/StringWriter;

    move-result-object v8

    const-string v9, "0.0"

    .line 1096
    invoke-virtual {v8, v9}, Ljava/io/StringWriter;->append(Ljava/lang/CharSequence;)Ljava/io/StringWriter;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/io/StringWriter;->append(Ljava/lang/CharSequence;)Ljava/io/StringWriter;

    move-result-object v8

    const-string v9, "0.0"

    .line 1097
    invoke-virtual {v8, v9}, Ljava/io/StringWriter;->append(Ljava/lang/CharSequence;)Ljava/io/StringWriter;

    goto/16 :goto_5
.end method

.method private initRecorder()V
    .locals 9
    .annotation build Landroid/support/annotation/RequiresApi;
        api = 0x15
    .end annotation

    .prologue
    .line 3585
    :try_start_0
    const-string v5, "VESC_SETTINGS"

    const/4 v6, 0x0

    invoke-virtual {p0, v5, v6}, Lackmaniac/vescmonitor/DeviceControlActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 3586
    .local v2, "settings":Landroid/content/SharedPreferences;
    const-string v5, "VIDEO_RESOLUTION"

    const-string v6, "(1280x720)"

    invoke-interface {v2, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3587
    .local v3, "videoResolution":Ljava/lang/String;
    invoke-virtual {p0}, Lackmaniac/vescmonitor/DeviceControlActivity;->getRequestedOrientation()I

    move-result v5

    invoke-static {v3, v5}, Lackmaniac/vescmonitor/Utils;->getResolutionSize(Ljava/lang/String;I)Landroid/graphics/Point;

    move-result-object v4

    .line 3588
    .local v4, "videoResolutionSize":Landroid/graphics/Point;
    iget-object v5, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    .line 3589
    iget-object v5, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Landroid/media/MediaRecorder;->setVideoSource(I)V

    .line 3590
    iget-object v5, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/media/MediaRecorder;->setOutputFormat(I)V

    .line 3592
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lackmaniac/vescmonitor/Utils;->fileFormatter:Ljava/text/DateFormat;

    new-instance v7, Ljava/util/Date;

    invoke-direct {v7}, Ljava/util/Date;-><init>()V

    invoke-virtual {v6, v7}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lackmaniac/vescmonitor/Utils;->getCurrentBluetoothAdress()Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    invoke-interface {v2, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    const-string v7, " "

    const-string v8, "_"

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_Vesc_video.mp4"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->videoFileName:Ljava/lang/String;

    .line 3594
    new-instance v1, Ljava/io/File;

    invoke-static {v2}, Lackmaniac/vescmonitor/Utils;->getFolder(Landroid/content/SharedPreferences;)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lackmaniac/vescmonitor/Utils;->folderFormatter:Ljava/text/DateFormat;

    new-instance v7, Ljava/util/Date;

    invoke-direct {v7}, Ljava/util/Date;-><init>()V

    invoke-virtual {v6, v7}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 3595
    .local v1, "newFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    .line 3596
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v5

    if-nez v5, :cond_0

    .line 3597
    new-instance v1, Ljava/io/File;

    .end local v1    # "newFile":Ljava/io/File;
    invoke-static {v2}, Lackmaniac/vescmonitor/Utils;->getFolder(Landroid/content/SharedPreferences;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3598
    .restart local v1    # "newFile":Ljava/io/File;
    sget-object v5, Lackmaniac/vescmonitor/DeviceControlActivity;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Lackmaniac/vescmonitor/DeviceControlActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0d0046

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3602
    :cond_0
    iget-object v5, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->mMediaRecorder:Landroid/media/MediaRecorder;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->videoFileName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/lang/String;)V

    .line 3604
    iget-object v5, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget v6, v4, Landroid/graphics/Point;->x:I

    iget v7, v4, Landroid/graphics/Point;->y:I

    invoke-virtual {v5, v6, v7}, Landroid/media/MediaRecorder;->setVideoSize(II)V

    .line 3605
    iget-object v5, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Landroid/media/MediaRecorder;->setVideoEncoder(I)V

    .line 3606
    iget-object v5, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Landroid/media/MediaRecorder;->setAudioEncoder(I)V

    .line 3607
    iget-object v5, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Landroid/media/MediaRecorder;->setAudioChannels(I)V

    .line 3608
    iget-object v5, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->mMediaRecorder:Landroid/media/MediaRecorder;

    const-string v6, "SOUND_QUALITY"

    const/16 v7, 0x100

    invoke-interface {v2, v6, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    mul-int/lit16 v6, v6, 0x3e8

    invoke-virtual {v5, v6}, Landroid/media/MediaRecorder;->setAudioEncodingBitRate(I)V

    .line 3609
    iget-object v5, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->mMediaRecorder:Landroid/media/MediaRecorder;

    const v6, 0xac44

    invoke-virtual {v5, v6}, Landroid/media/MediaRecorder;->setAudioSamplingRate(I)V

    .line 3610
    iget-object v5, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->mMediaRecorder:Landroid/media/MediaRecorder;

    const-string v6, "VIDEO_QUALITY"

    const/16 v7, 0x800

    invoke-interface {v2, v6, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    mul-int/lit16 v6, v6, 0x3e8

    invoke-virtual {v5, v6}, Landroid/media/MediaRecorder;->setVideoEncodingBitRate(I)V

    .line 3611
    iget-object v5, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/16 v6, 0x19

    invoke-virtual {v5, v6}, Landroid/media/MediaRecorder;->setVideoFrameRate(I)V

    .line 3612
    invoke-virtual {p0}, Lackmaniac/vescmonitor/DeviceControlActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f02000c

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    const-string v6, "VESC_SETTINGS"

    const/4 v7, 0x0

    invoke-virtual {p0, v6, v7}, Lackmaniac/vescmonitor/DeviceControlActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    const-string v7, "VIDEO_LAYOUT"

    const/4 v8, 0x0

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    aget-object v5, v5, v6

    const-string v6, "Left"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 3613
    iget-object v5, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/16 v6, 0x10e

    invoke-virtual {v5, v6}, Landroid/media/MediaRecorder;->setOrientationHint(I)V

    .line 3618
    :goto_0
    iget-object v5, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v5}, Landroid/media/MediaRecorder;->prepare()V

    .line 3622
    .end local v1    # "newFile":Ljava/io/File;
    .end local v2    # "settings":Landroid/content/SharedPreferences;
    .end local v3    # "videoResolution":Ljava/lang/String;
    .end local v4    # "videoResolutionSize":Landroid/graphics/Point;
    :goto_1
    return-void

    .line 3615
    .restart local v1    # "newFile":Ljava/io/File;
    .restart local v2    # "settings":Landroid/content/SharedPreferences;
    .restart local v3    # "videoResolution":Ljava/lang/String;
    .restart local v4    # "videoResolutionSize":Landroid/graphics/Point;
    :cond_1
    iget-object v5, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/media/MediaRecorder;->setOrientationHint(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3619
    .end local v1    # "newFile":Ljava/io/File;
    .end local v2    # "settings":Landroid/content/SharedPreferences;
    .end local v3    # "videoResolution":Ljava/lang/String;
    .end local v4    # "videoResolutionSize":Landroid/graphics/Point;
    :catch_0
    move-exception v0

    .line 3620
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method private initViews(ZLandroid/content/SharedPreferences;)V
    .locals 30
    .param p1, "isVideo"    # Z
    .param p2, "settings"    # Landroid/content/SharedPreferences;

    .prologue
    .line 2031
    if-nez p2, :cond_0

    .line 2032
    const-string v26, "VESC_SETTINGS"

    const/16 v27, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lackmaniac/vescmonitor/DeviceControlActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p2

    .line 2034
    :cond_0
    const v9, -0x55ff0100

    .line 2035
    .local v9, "positiveColor":I
    const/high16 v7, 0x77ff0000

    .line 2037
    .local v7, "negativeColor":I
    const v26, 0x7f080066

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lackmaniac/vescmonitor/DeviceControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    .line 2038
    .local v8, "placeHolder":Landroid/widget/LinearLayout;
    if-eqz p1, :cond_2

    .line 2039
    invoke-virtual {v8}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 2040
    invoke-virtual/range {p0 .. p0}, Lackmaniac/vescmonitor/DeviceControlActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v26

    const v27, 0x7f02000c

    invoke-virtual/range {v26 .. v27}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v26

    const-string v27, "VESC_SETTINGS"

    const/16 v28, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lackmaniac/vescmonitor/DeviceControlActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v27

    const-string v28, "VIDEO_LAYOUT"

    const/16 v29, 0x0

    invoke-interface/range {v27 .. v29}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v27

    aget-object v26, v26, v27

    const-string v27, "Minimal"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_1

    .line 2041
    invoke-virtual/range {p0 .. p0}, Lackmaniac/vescmonitor/DeviceControlActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v26

    const v27, 0x7f0a0042

    move-object/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v0, v1, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 2059
    :goto_0
    const-string v26, "MAGNETS"

    invoke-static/range {v26 .. v26}, Lackmaniac/vescmonitor/Utils;->getSettingsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    const/16 v27, 0xe

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    move/from16 v2, v27

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 2060
    .local v5, "magnets":I
    const-string v26, "WHEEL_SIZE"

    invoke-static/range {v26 .. v26}, Lackmaniac/vescmonitor/Utils;->getSettingsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    const/16 v27, 0x53

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    move/from16 v2, v27

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v25

    .line 2061
    .local v25, "wheelsizeInMM":I
    const-string v26, "TEETH_WHEEL_PULLEY"

    invoke-static/range {v26 .. v26}, Lackmaniac/vescmonitor/Utils;->getSettingsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    const/16 v27, 0x24

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    move/from16 v2, v27

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v24

    .line 2062
    .local v24, "wheelPulley":I
    const-string v26, "TEETH_MOTOR_PULLEY"

    invoke-static/range {v26 .. v26}, Lackmaniac/vescmonitor/Utils;->getSettingsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    const/16 v27, 0xf

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    move/from16 v2, v27

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    .line 2063
    .local v6, "motorPulley":I
    const-string v26, "DISTANCE_UNIT"

    invoke-static/range {v26 .. v26}, Lackmaniac/vescmonitor/Utils;->getSettingsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    const/16 v27, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    move/from16 v2, v27

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v26

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lackmaniac/vescmonitor/DeviceControlActivity;->distanceUnit:I

    .line 2064
    const-string v26, "NO_OF_MOTORS"

    invoke-static/range {v26 .. v26}, Lackmaniac/vescmonitor/Utils;->getSettingsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    const/16 v27, 0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    move/from16 v2, v27

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v26

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lackmaniac/vescmonitor/DeviceControlActivity;->noOfMotors:I

    .line 2066
    const-string v26, "IS_CONNECTED_TO_SLAVE"

    invoke-static/range {v26 .. v26}, Lackmaniac/vescmonitor/Utils;->getSettingsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    const/16 v27, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    move/from16 v2, v27

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v26

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lackmaniac/vescmonitor/DeviceControlActivity;->isConnectedToSlave:Z

    .line 2067
    const-string v26, "CAN_CONTROLLERID"

    invoke-static/range {v26 .. v26}, Lackmaniac/vescmonitor/Utils;->getSettingsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    const/16 v27, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    move/from16 v2, v27

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v26

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lackmaniac/vescmonitor/DeviceControlActivity;->canControllerId:I

    .line 2068
    const-string v26, "PACKET_DELAY"

    invoke-static/range {v26 .. v26}, Lackmaniac/vescmonitor/Utils;->getSettingsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    const/16 v27, 0x5

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    move/from16 v2, v27

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v26

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lackmaniac/vescmonitor/DeviceControlActivity;->packetDelay:I

    .line 2070
    const-string v26, "PLAY_BATTERY_ALARM"

    const/16 v27, 0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    move/from16 v2, v27

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v26

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lackmaniac/vescmonitor/DeviceControlActivity;->playBatteryAlarm:Z

    .line 2071
    const-string v26, "BATTERY_WH"

    invoke-static/range {v26 .. v26}, Lackmaniac/vescmonitor/Utils;->getSettingsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    const/16 v27, 0x12c

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    move/from16 v2, v27

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v26

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lackmaniac/vescmonitor/DeviceControlActivity;->batteryWh:I

    .line 2072
    const-string v26, "NO_OF_CELLS"

    invoke-static/range {v26 .. v26}, Lackmaniac/vescmonitor/Utils;->getSettingsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    const/16 v27, 0xa

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    move/from16 v2, v27

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v26

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lackmaniac/vescmonitor/DeviceControlActivity;->noOfCells:I

    .line 2074
    const-string v26, "BATTERY_TYPE"

    invoke-static/range {v26 .. v26}, Lackmaniac/vescmonitor/Utils;->getSettingsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    const/16 v27, 0x3

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    move/from16 v2, v27

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 2075
    .local v3, "batteryType":I
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "P100"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const/16 v26, 0x3

    move/from16 v0, v26

    if-lt v3, v0, :cond_4

    const-string v26, ""

    :goto_1
    move-object/from16 v0, v27

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Lackmaniac/vescmonitor/Utils;->getSettingsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    const v27, 0x40866666    # 4.2f

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    move/from16 v2, v27

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v26

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lackmaniac/vescmonitor/DeviceControlActivity;->percent100:F

    .line 2076
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "P90"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const/16 v26, 0x3

    move/from16 v0, v26

    if-lt v3, v0, :cond_5

    const-string v26, ""

    :goto_2
    move-object/from16 v0, v27

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Lackmaniac/vescmonitor/Utils;->getSettingsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    const v27, 0x40823d71    # 4.07f

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    move/from16 v2, v27

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v26

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lackmaniac/vescmonitor/DeviceControlActivity;->percent90:F

    .line 2077
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "P80"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const/16 v26, 0x3

    move/from16 v0, v26

    if-lt v3, v0, :cond_6

    const-string v26, ""

    :goto_3
    move-object/from16 v0, v27

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Lackmaniac/vescmonitor/Utils;->getSettingsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    const v27, 0x4080a3d7    # 4.02f

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    move/from16 v2, v27

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v26

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lackmaniac/vescmonitor/DeviceControlActivity;->percent80:F

    .line 2078
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "P70"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const/16 v26, 0x3

    move/from16 v0, v26

    if-lt v3, v0, :cond_7

    const-string v26, ""

    :goto_4
    move-object/from16 v0, v27

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Lackmaniac/vescmonitor/Utils;->getSettingsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    const v27, 0x407c28f6    # 3.94f

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    move/from16 v2, v27

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v26

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lackmaniac/vescmonitor/DeviceControlActivity;->percent70:F

    .line 2079
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "P60"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const/16 v26, 0x3

    move/from16 v0, v26

    if-lt v3, v0, :cond_8

    const-string v26, ""

    :goto_5
    move-object/from16 v0, v27

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Lackmaniac/vescmonitor/Utils;->getSettingsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    const v27, 0x40770a3d    # 3.86f

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    move/from16 v2, v27

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v26

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lackmaniac/vescmonitor/DeviceControlActivity;->percent60:F

    .line 2080
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "P50"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const/16 v26, 0x3

    move/from16 v0, v26

    if-lt v3, v0, :cond_9

    const-string v26, ""

    :goto_6
    move-object/from16 v0, v27

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Lackmaniac/vescmonitor/Utils;->getSettingsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    const v27, 0x40728f5c    # 3.79f

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    move/from16 v2, v27

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v26

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lackmaniac/vescmonitor/DeviceControlActivity;->percent50:F

    .line 2081
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "P40"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const/16 v26, 0x3

    move/from16 v0, v26

    if-lt v3, v0, :cond_a

    const-string v26, ""

    :goto_7
    move-object/from16 v0, v27

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Lackmaniac/vescmonitor/Utils;->getSettingsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    const v27, 0x406dc28f    # 3.715f

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    move/from16 v2, v27

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v26

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lackmaniac/vescmonitor/DeviceControlActivity;->percent40:F

    .line 2082
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "P30"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const/16 v26, 0x3

    move/from16 v0, v26

    if-lt v3, v0, :cond_b

    const-string v26, ""

    :goto_8
    move-object/from16 v0, v27

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Lackmaniac/vescmonitor/Utils;->getSettingsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    const v27, 0x4068a3d7    # 3.635f

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    move/from16 v2, v27

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v26

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lackmaniac/vescmonitor/DeviceControlActivity;->percent30:F

    .line 2083
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "P20"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const/16 v26, 0x3

    move/from16 v0, v26

    if-lt v3, v0, :cond_c

    const-string v26, ""

    :goto_9
    move-object/from16 v0, v27

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Lackmaniac/vescmonitor/Utils;->getSettingsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    const v27, 0x4061999a    # 3.525f

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    move/from16 v2, v27

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v26

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lackmaniac/vescmonitor/DeviceControlActivity;->percent20:F

    .line 2084
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "P10"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const/16 v26, 0x3

    move/from16 v0, v26

    if-lt v3, v0, :cond_d

    const-string v26, ""

    :goto_a
    move-object/from16 v0, v27

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Lackmaniac/vescmonitor/Utils;->getSettingsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    const v27, 0x405bd70a    # 3.435f

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    move/from16 v2, v27

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v26

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lackmaniac/vescmonitor/DeviceControlActivity;->percent10:F

    .line 2085
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "P0"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const/16 v26, 0x3

    move/from16 v0, v26

    if-lt v3, v0, :cond_e

    const-string v26, ""

    :goto_b
    move-object/from16 v0, v27

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Lackmaniac/vescmonitor/Utils;->getSettingsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    const v27, 0x4050a3d7    # 3.26f

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    move/from16 v2, v27

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v26

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lackmaniac/vescmonitor/DeviceControlActivity;->percent0:F

    .line 2087
    int-to-float v0, v5

    move/from16 v26, v0

    const/high16 v27, 0x40000000    # 2.0f

    div-float v26, v26, v27

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v27, v0

    mul-float v26, v26, v27

    int-to-float v0, v6

    move/from16 v27, v0

    div-float v26, v26, v27

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v27, v0

    const v28, 0x40490fdb    # (float)Math.PI

    mul-float v27, v27, v28

    const/high16 v28, 0x447a0000    # 1000.0f

    div-float v27, v27, v28

    div-float v26, v26, v27

    const/high16 v27, 0x42700000    # 60.0f

    mul-float v26, v26, v27

    const v27, 0x40666666    # 3.6f

    div-float v27, v26, v27

    move-object/from16 v0, p0

    iget v0, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->distanceUnit:I

    move/from16 v26, v0

    const/16 v28, 0x1

    move/from16 v0, v26

    move/from16 v1, v28

    if-ne v0, v1, :cond_f

    const v26, 0x3fcdfeda

    :goto_c
    mul-float v26, v26, v27

    invoke-static/range {v26 .. v26}, Lackmaniac/vescmonitor/Utils;->setSpeedDevider(F)V

    .line 2088
    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v26, v0

    const/high16 v27, 0x447a0000    # 1000.0f

    div-float v26, v26, v27

    const v27, 0x40490fdb    # (float)Math.PI

    mul-float v26, v26, v27

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v27, v0

    int-to-float v0, v6

    move/from16 v28, v0

    div-float v27, v27, v28

    div-float v26, v26, v27

    int-to-float v0, v5

    move/from16 v27, v0

    div-float v26, v26, v27

    const/high16 v27, 0x40400000    # 3.0f

    div-float v27, v26, v27

    move-object/from16 v0, p0

    iget v0, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->distanceUnit:I

    move/from16 v26, v0

    const/16 v28, 0x1

    move/from16 v0, v26

    move/from16 v1, v28

    if-ne v0, v1, :cond_10

    const v26, 0x3fcdfeda

    :goto_d
    div-float v26, v27, v26

    invoke-static/range {v26 .. v26}, Lackmaniac/vescmonitor/Utils;->setDistanceFactor(F)V

    .line 2090
    const v26, 0x7f08018d

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lackmaniac/vescmonitor/DeviceControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/TextView;

    .line 2091
    .local v21, "textViewSpeedUnitBig":Landroid/widget/TextView;
    const v26, 0x7f080185

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lackmaniac/vescmonitor/DeviceControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/TextView;

    .line 2092
    .local v16, "textViewGPSSpeedUnitSmall":Landroid/widget/TextView;
    const v26, 0x7f08018e

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lackmaniac/vescmonitor/DeviceControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/TextView;

    .line 2093
    .local v22, "textViewSpeedUnitSmall":Landroid/widget/TextView;
    const v26, 0x7f08018b

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lackmaniac/vescmonitor/DeviceControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/TextView;

    .line 2094
    .local v20, "textViewSpeedAvgUnitSmall":Landroid/widget/TextView;
    const v26, 0x7f08018a

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lackmaniac/vescmonitor/DeviceControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/TextView;

    .line 2095
    .local v19, "textViewSpeedAvgRunningUnitSmall":Landroid/widget/TextView;
    const v26, 0x7f080187

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lackmaniac/vescmonitor/DeviceControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    .line 2096
    .local v17, "textViewModeMaxSpeedUnit":Landroid/widget/TextView;
    const v26, 0x7f08017f

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lackmaniac/vescmonitor/DeviceControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    .line 2097
    .local v13, "textViewAverageWhSpeedUnit":Landroid/widget/TextView;
    const v26, 0x7f080180

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lackmaniac/vescmonitor/DeviceControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 2098
    .local v14, "textViewAverageWhSpeedUnit2":Landroid/widget/TextView;
    const v26, 0x7f080183

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lackmaniac/vescmonitor/DeviceControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    .line 2099
    .local v15, "textViewDistanceSpeedUnit":Landroid/widget/TextView;
    const v26, 0x7f080189

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lackmaniac/vescmonitor/DeviceControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/TextView;

    .line 2100
    .local v18, "textViewRangeSpeedUnit":Landroid/widget/TextView;
    const v26, 0x7f08017e

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lackmaniac/vescmonitor/DeviceControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 2102
    .local v12, "textViewAltitudeUnit":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget v0, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->distanceUnit:I

    move/from16 v26, v0

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_11

    .line 2103
    const v26, 0x7f0d008f

    move-object/from16 v0, v21

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 2104
    const v26, 0x7f0d008f

    move-object/from16 v0, v16

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 2105
    const v26, 0x7f0d008f

    move-object/from16 v0, v22

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 2106
    const v26, 0x7f0d008f

    move-object/from16 v0, v20

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 2107
    const v26, 0x7f0d008f

    move-object/from16 v0, v19

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 2108
    const v26, 0x7f0d0054

    move-object/from16 v0, v17

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 2109
    const v26, 0x7f0d002f

    move/from16 v0, v26

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setText(I)V

    .line 2110
    const v26, 0x7f0d0030

    move/from16 v0, v26

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setText(I)V

    .line 2111
    const v26, 0x7f0d008e

    move/from16 v0, v26

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setText(I)V

    .line 2112
    const v26, 0x7f0d008e

    move-object/from16 v0, v18

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 2113
    const v26, 0x7f0d008a

    move/from16 v0, v26

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setText(I)V

    .line 2128
    :goto_e
    const v26, 0x7f080149

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lackmaniac/vescmonitor/DeviceControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/widget/TextView;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lackmaniac/vescmonitor/DeviceControlActivity;->speedText:Landroid/widget/TextView;

    .line 2129
    const v26, 0x7f08010f

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lackmaniac/vescmonitor/DeviceControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/widget/TextView;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lackmaniac/vescmonitor/DeviceControlActivity;->powerText:Landroid/widget/TextView;

    .line 2131
    const v26, 0x7f080119

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lackmaniac/vescmonitor/DeviceControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/widget/ProgressBar;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lackmaniac/vescmonitor/DeviceControlActivity;->progressPowerPositive:Landroid/widget/ProgressBar;

    .line 2132
    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->progressPowerPositive:Landroid/widget/ProgressBar;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/widget/ProgressBar;->getIndeterminateDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v26

    sget-object v27, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v0, v9, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 2134
    const v26, 0x7f080118

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lackmaniac/vescmonitor/DeviceControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/widget/ProgressBar;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lackmaniac/vescmonitor/DeviceControlActivity;->progressPowerNegative:Landroid/widget/ProgressBar;

    .line 2135
    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->progressPowerNegative:Landroid/widget/ProgressBar;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/widget/ProgressBar;->getIndeterminateDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v26

    sget-object v27, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v0, v7, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 2137
    const v26, 0x7f0800c4

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lackmaniac/vescmonitor/DeviceControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/widget/TextView;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lackmaniac/vescmonitor/DeviceControlActivity;->maxPowerText:Landroid/widget/TextView;

    .line 2138
    const v26, 0x7f0800db

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lackmaniac/vescmonitor/DeviceControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/widget/TextView;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lackmaniac/vescmonitor/DeviceControlActivity;->minPowerText:Landroid/widget/TextView;

    .line 2139
    const v26, 0x7f080079

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lackmaniac/vescmonitor/DeviceControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/widget/TextView;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lackmaniac/vescmonitor/DeviceControlActivity;->dutyCycleText:Landroid/widget/TextView;

    .line 2141
    const v26, 0x7f080115

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lackmaniac/vescmonitor/DeviceControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/widget/ProgressBar;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lackmaniac/vescmonitor/DeviceControlActivity;->progressDutyPositive:Landroid/widget/ProgressBar;

    .line 2142
    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->progressDutyPositive:Landroid/widget/ProgressBar;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/widget/ProgressBar;->getIndeterminateDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v26

    sget-object v27, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v0, v9, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 2144
    const v26, 0x7f080114

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lackmaniac/vescmonitor/DeviceControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/widget/ProgressBar;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lackmaniac/vescmonitor/DeviceControlActivity;->progressDutyNegative:Landroid/widget/ProgressBar;

    .line 2145
    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->progressDutyNegative:Landroid/widget/ProgressBar;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/widget/ProgressBar;->getIndeterminateDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v26

    sget-object v27, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v0, v7, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 2147
    const v26, 0x7f08005f

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lackmaniac/vescmonitor/DeviceControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/widget/TextView;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lackmaniac/vescmonitor/DeviceControlActivity;->curBattText:Landroid/widget/TextView;

    .line 2149
    const v26, 0x7f080113

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lackmaniac/vescmonitor/DeviceControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/widget/ProgressBar;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lackmaniac/vescmonitor/DeviceControlActivity;->progressBatteryPositive:Landroid/widget/ProgressBar;

    .line 2150
    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->progressBatteryPositive:Landroid/widget/ProgressBar;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/widget/ProgressBar;->getIndeterminateDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v26

    sget-object v27, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v0, v9, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 2151
    const v26, 0x7f080112

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lackmaniac/vescmonitor/DeviceControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/widget/ProgressBar;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lackmaniac/vescmonitor/DeviceControlActivity;->progressBatteryNegative:Landroid/widget/ProgressBar;

    .line 2152
    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->progressBatteryNegative:Landroid/widget/ProgressBar;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/widget/ProgressBar;->getIndeterminateDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v26

    sget-object v27, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v0, v7, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 2154
    const v26, 0x7f08005e

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lackmaniac/vescmonitor/DeviceControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/widget/TextView;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lackmaniac/vescmonitor/DeviceControlActivity;->curBattMinText:Landroid/widget/TextView;

    .line 2155
    const v26, 0x7f08005d

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lackmaniac/vescmonitor/DeviceControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/widget/TextView;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lackmaniac/vescmonitor/DeviceControlActivity;->curBattMaxText:Landroid/widget/TextView;

    .line 2158
    const v26, 0x7f080117

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lackmaniac/vescmonitor/DeviceControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/widget/ProgressBar;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lackmaniac/vescmonitor/DeviceControlActivity;->progressMotorPositive:Landroid/widget/ProgressBar;

    .line 2159
    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->progressMotorPositive:Landroid/widget/ProgressBar;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/widget/ProgressBar;->getIndeterminateDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v26

    sget-object v27, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v0, v9, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 2161
    const v26, 0x7f080116

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lackmaniac/vescmonitor/DeviceControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/widget/ProgressBar;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lackmaniac/vescmonitor/DeviceControlActivity;->progressMotorNegative:Landroid/widget/ProgressBar;

    .line 2162
    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->progressMotorNegative:Landroid/widget/ProgressBar;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/widget/ProgressBar;->getIndeterminateDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v26

    sget-object v27, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v0, v7, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 2164
    const v26, 0x7f080062

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lackmaniac/vescmonitor/DeviceControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/widget/TextView;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lackmaniac/vescmonitor/DeviceControlActivity;->curMotorText:Landroid/widget/TextView;

    .line 2165
    const v26, 0x7f080061

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lackmaniac/vescmonitor/DeviceControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/widget/TextView;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lackmaniac/vescmonitor/DeviceControlActivity;->curMotorMinText:Landroid/widget/TextView;

    .line 2166
    const v26, 0x7f080060

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lackmaniac/vescmonitor/DeviceControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/widget/TextView;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lackmaniac/vescmonitor/DeviceControlActivity;->curMotorMaxText:Landroid/widget/TextView;

    .line 2167
    const v26, 0x7f080076

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lackmaniac/vescmonitor/DeviceControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/widget/TextView;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lackmaniac/vescmonitor/DeviceControlActivity;->drawnText:Landroid/widget/TextView;

    .line 2168
    const v26, 0x7f080050

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lackmaniac/vescmonitor/DeviceControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/widget/TextView;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lackmaniac/vescmonitor/DeviceControlActivity;->chargedText:Landroid/widget/TextView;

    .line 2169
    const v26, 0x7f08003c

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lackmaniac/vescmonitor/DeviceControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/widget/TextView;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lackmaniac/vescmonitor/DeviceControlActivity;->avgWhText:Landroid/widget/TextView;

    .line 2170
    const v26, 0x7f08003b

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lackmaniac/vescmonitor/DeviceControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/widget/TextView;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lackmaniac/vescmonitor/DeviceControlActivity;->avgWhAtTheMomentText:Landroid/widget/TextView;

    .line 2171
    const v26, 0x7f080075

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lackmaniac/vescmonitor/DeviceControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/widget/TextView;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lackmaniac/vescmonitor/DeviceControlActivity;->drawnAhText:Landroid/widget/TextView;

    .line 2172
    const v26, 0x7f08004f

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lackmaniac/vescmonitor/DeviceControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/widget/TextView;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lackmaniac/vescmonitor/DeviceControlActivity;->chargedAhText:Landroid/widget/TextView;

    .line 2173
    const v26, 0x7f08002e

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lackmaniac/vescmonitor/DeviceControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/widget/TextView;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lackmaniac/vescmonitor/DeviceControlActivity;->avgAhText:Landroid/widget/TextView;

    .line 2174
    const v26, 0x7f08002d

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lackmaniac/vescmonitor/DeviceControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/widget/TextView;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lackmaniac/vescmonitor/DeviceControlActivity;->avgAhAtTheMomentText:Landroid/widget/TextView;

    .line 2175
    const v26, 0x7f080073

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lackmaniac/vescmonitor/DeviceControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/widget/TextView;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lackmaniac/vescmonitor/DeviceControlActivity;->distanceText:Landroid/widget/TextView;

    .line 2176
    const v26, 0x7f08011e

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lackmaniac/vescmonitor/DeviceControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/widget/TextView;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lackmaniac/vescmonitor/DeviceControlActivity;->rangeText:Landroid/widget/TextView;

    .line 2177
    const v26, 0x7f080044

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lackmaniac/vescmonitor/DeviceControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/widget/TextView;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lackmaniac/vescmonitor/DeviceControlActivity;->voltText:Landroid/widget/TextView;

    .line 2178
    const v26, 0x7f080141

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lackmaniac/vescmonitor/DeviceControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/widget/TextView;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lackmaniac/vescmonitor/DeviceControlActivity;->singleCellVoltText:Landroid/widget/TextView;

    .line 2179
    const v26, 0x7f080146

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lackmaniac/vescmonitor/DeviceControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/widget/TextView;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lackmaniac/vescmonitor/DeviceControlActivity;->speedGPSText:Landroid/widget/TextView;

    .line 2180
    const v26, 0x7f080028

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lackmaniac/vescmonitor/DeviceControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/widget/TextView;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lackmaniac/vescmonitor/DeviceControlActivity;->altitudeGPSText:Landroid/widget/TextView;

    .line 2181
    const v26, 0x7f080147

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lackmaniac/vescmonitor/DeviceControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/widget/TextView;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lackmaniac/vescmonitor/DeviceControlActivity;->speedMaxText:Landroid/widget/TextView;

    .line 2182
    const v26, 0x7f080144

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lackmaniac/vescmonitor/DeviceControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/widget/TextView;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lackmaniac/vescmonitor/DeviceControlActivity;->speedAvgText:Landroid/widget/TextView;

    .line 2183
    const v26, 0x7f080143

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lackmaniac/vescmonitor/DeviceControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/widget/TextView;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lackmaniac/vescmonitor/DeviceControlActivity;->speedAvgRunningText:Landroid/widget/TextView;

    .line 2184
    const v26, 0x7f080169

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lackmaniac/vescmonitor/DeviceControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/widget/TextView;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lackmaniac/vescmonitor/DeviceControlActivity;->tempText:Landroid/widget/TextView;

    .line 2185
    const v26, 0x7f0800c6

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lackmaniac/vescmonitor/DeviceControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/widget/TextView;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lackmaniac/vescmonitor/DeviceControlActivity;->maxTempText:Landroid/widget/TextView;

    .line 2186
    const v26, 0x7f0800d9

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lackmaniac/vescmonitor/DeviceControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/widget/TextView;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lackmaniac/vescmonitor/DeviceControlActivity;->minVoltText:Landroid/widget/TextView;

    .line 2187
    const v26, 0x7f080045

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lackmaniac/vescmonitor/DeviceControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/widget/TextView;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lackmaniac/vescmonitor/DeviceControlActivity;->voltLabel:Landroid/widget/TextView;

    .line 2188
    const v26, 0x7f080168

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lackmaniac/vescmonitor/DeviceControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/widget/TextView;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lackmaniac/vescmonitor/DeviceControlActivity;->tempPCBTitle:Landroid/widget/TextView;

    .line 2189
    const v26, 0x7f080036

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lackmaniac/vescmonitor/DeviceControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/widget/TextView;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lackmaniac/vescmonitor/DeviceControlActivity;->avgMotorAmpsUsedPos:Landroid/widget/TextView;

    .line 2190
    const v26, 0x7f080035

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lackmaniac/vescmonitor/DeviceControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/widget/TextView;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lackmaniac/vescmonitor/DeviceControlActivity;->avgMotorAmpsUsedNeg:Landroid/widget/TextView;

    .line 2191
    const v26, 0x7f080034

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lackmaniac/vescmonitor/DeviceControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/widget/TextView;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lackmaniac/vescmonitor/DeviceControlActivity;->avgMotorAmpsRidingPos:Landroid/widget/TextView;

    .line 2192
    const v26, 0x7f080033

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lackmaniac/vescmonitor/DeviceControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/widget/TextView;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lackmaniac/vescmonitor/DeviceControlActivity;->avgMotorAmpsRidingNeg:Landroid/widget/TextView;

    .line 2193
    const v26, 0x7f080032

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lackmaniac/vescmonitor/DeviceControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/widget/TextView;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lackmaniac/vescmonitor/DeviceControlActivity;->avgBatteryAmpsUsedPos:Landroid/widget/TextView;

    .line 2194
    const v26, 0x7f080031

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lackmaniac/vescmonitor/DeviceControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/widget/TextView;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lackmaniac/vescmonitor/DeviceControlActivity;->avgBatteryAmpsUsedNeg:Landroid/widget/TextView;

    .line 2195
    const v26, 0x7f080030

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lackmaniac/vescmonitor/DeviceControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/widget/TextView;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lackmaniac/vescmonitor/DeviceControlActivity;->avgBatteryAmpsRidingPos:Landroid/widget/TextView;

    .line 2196
    const v26, 0x7f08002f

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lackmaniac/vescmonitor/DeviceControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/widget/TextView;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lackmaniac/vescmonitor/DeviceControlActivity;->avgBatteryAmpsRidingNeg:Landroid/widget/TextView;

    .line 2197
    const v26, 0x7f080038

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lackmaniac/vescmonitor/DeviceControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/widget/TextView;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lackmaniac/vescmonitor/DeviceControlActivity;->avgTemperaturTotalTitel:Landroid/widget/TextView;

    .line 2198
    const v26, 0x7f080037

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lackmaniac/vescmonitor/DeviceControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/widget/TextView;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lackmaniac/vescmonitor/DeviceControlActivity;->avgTemperaturTotal:Landroid/widget/TextView;

    .line 2199
    const v26, 0x7f08003a

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lackmaniac/vescmonitor/DeviceControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/widget/TextView;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lackmaniac/vescmonitor/DeviceControlActivity;->avgWattRiding:Landroid/widget/TextView;

    .line 2200
    const v26, 0x7f080039

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lackmaniac/vescmonitor/DeviceControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/widget/TextView;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lackmaniac/vescmonitor/DeviceControlActivity;->avgWattActive:Landroid/widget/TextView;

    .line 2201
    const v26, 0x7f080193

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lackmaniac/vescmonitor/DeviceControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/widget/TextView;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lackmaniac/vescmonitor/DeviceControlActivity;->timeTotal:Landroid/widget/TextView;

    .line 2202
    const v26, 0x7f080192

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lackmaniac/vescmonitor/DeviceControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/widget/TextView;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lackmaniac/vescmonitor/DeviceControlActivity;->timeRiding:Landroid/widget/TextView;

    .line 2205
    const v26, 0x7f0800ec

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lackmaniac/vescmonitor/DeviceControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/widget/TextView;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lackmaniac/vescmonitor/DeviceControlActivity;->modeText:Landroid/widget/TextView;

    .line 2206
    const v26, 0x7f080111

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lackmaniac/vescmonitor/DeviceControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/widget/TextView;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lackmaniac/vescmonitor/DeviceControlActivity;->ppmModeText:Landroid/widget/TextView;

    .line 2207
    const v26, 0x7f0800c7

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lackmaniac/vescmonitor/DeviceControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/widget/TextView;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lackmaniac/vescmonitor/DeviceControlActivity;->maxWattText:Landroid/widget/TextView;

    .line 2208
    const v26, 0x7f0800c5

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lackmaniac/vescmonitor/DeviceControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/widget/TextView;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lackmaniac/vescmonitor/DeviceControlActivity;->maxSpeedText:Landroid/widget/TextView;

    .line 2209
    const v26, 0x7f0800c3

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lackmaniac/vescmonitor/DeviceControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/widget/TextView;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lackmaniac/vescmonitor/DeviceControlActivity;->maxMotorCurrentText:Landroid/widget/TextView;

    .line 2210
    const v26, 0x7f0800c2

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lackmaniac/vescmonitor/DeviceControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/widget/TextView;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lackmaniac/vescmonitor/DeviceControlActivity;->maxBatteryCurrentText:Landroid/widget/TextView;

    .line 2211
    const v26, 0x7f0800da

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lackmaniac/vescmonitor/DeviceControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/widget/TextView;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lackmaniac/vescmonitor/DeviceControlActivity;->minMotorCurrentText:Landroid/widget/TextView;

    .line 2212
    const v26, 0x7f0800d8

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lackmaniac/vescmonitor/DeviceControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/widget/TextView;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lackmaniac/vescmonitor/DeviceControlActivity;->minBatteryCurrentText:Landroid/widget/TextView;

    .line 2214
    const v26, 0x7f0800bd

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lackmaniac/vescmonitor/DeviceControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/widget/LinearLayout;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lackmaniac/vescmonitor/DeviceControlActivity;->vescDataLayout:Landroid/widget/LinearLayout;

    .line 2216
    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->speedText:Landroid/widget/TextView;

    move-object/from16 v26, v0

    const-string v27, "0"

    invoke-virtual/range {v26 .. v27}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2217
    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->powerText:Landroid/widget/TextView;

    move-object/from16 v26, v0

    const-string v27, "0"

    invoke-virtual/range {v26 .. v27}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2218
    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->progressPowerPositive:Landroid/widget/ProgressBar;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-virtual/range {v26 .. v27}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 2219
    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->progressPowerNegative:Landroid/widget/ProgressBar;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-virtual/range {v26 .. v27}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 2220
    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->maxPowerText:Landroid/widget/TextView;

    move-object/from16 v26, v0

    const-string v27, "0"

    invoke-virtual/range {v26 .. v27}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2221
    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->minPowerText:Landroid/widget/TextView;

    move-object/from16 v26, v0

    const-string v27, "0"

    invoke-virtual/range {v26 .. v27}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2222
    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->dutyCycleText:Landroid/widget/TextView;

    move-object/from16 v26, v0

    const-string v27, "0"

    invoke-virtual/range {v26 .. v27}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2223
    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->progressDutyPositive:Landroid/widget/ProgressBar;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-virtual/range {v26 .. v27}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 2224
    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->progressDutyNegative:Landroid/widget/ProgressBar;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-virtual/range {v26 .. v27}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 2225
    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->progressBatteryPositive:Landroid/widget/ProgressBar;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-virtual/range {v26 .. v27}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 2226
    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->progressBatteryNegative:Landroid/widget/ProgressBar;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-virtual/range {v26 .. v27}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 2227
    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->curBattText:Landroid/widget/TextView;

    move-object/from16 v26, v0

    const-string v27, "0.00"

    invoke-virtual/range {v26 .. v27}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2228
    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->curBattMinText:Landroid/widget/TextView;

    move-object/from16 v26, v0

    const-string v27, "0.00"

    invoke-virtual/range {v26 .. v27}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2229
    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->curBattMaxText:Landroid/widget/TextView;

    move-object/from16 v26, v0

    const-string v27, "0.00"

    invoke-virtual/range {v26 .. v27}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2230
    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->progressMotorPositive:Landroid/widget/ProgressBar;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-virtual/range {v26 .. v27}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 2231
    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->progressMotorNegative:Landroid/widget/ProgressBar;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-virtual/range {v26 .. v27}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 2232
    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->curMotorText:Landroid/widget/TextView;

    move-object/from16 v26, v0

    const-string v27, "0.00"

    invoke-virtual/range {v26 .. v27}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2233
    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->curMotorMinText:Landroid/widget/TextView;

    move-object/from16 v26, v0

    const-string v27, "0.00"

    invoke-virtual/range {v26 .. v27}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2234
    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->curMotorMaxText:Landroid/widget/TextView;

    move-object/from16 v26, v0

    const-string v27, "0.00"

    invoke-virtual/range {v26 .. v27}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2235
    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->drawnText:Landroid/widget/TextView;

    move-object/from16 v26, v0

    const-string v27, "0.000"

    invoke-virtual/range {v26 .. v27}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2236
    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->chargedText:Landroid/widget/TextView;

    move-object/from16 v26, v0

    const-string v27, "0.000"

    invoke-virtual/range {v26 .. v27}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2237
    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->avgWhText:Landroid/widget/TextView;

    move-object/from16 v26, v0

    const-string v27, "0.000"

    invoke-virtual/range {v26 .. v27}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2238
    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->avgWhAtTheMomentText:Landroid/widget/TextView;

    move-object/from16 v26, v0

    const-string v27, "0.000"

    invoke-virtual/range {v26 .. v27}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2239
    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->drawnAhText:Landroid/widget/TextView;

    move-object/from16 v26, v0

    const-string v27, "0.000"

    invoke-virtual/range {v26 .. v27}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2240
    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->chargedAhText:Landroid/widget/TextView;

    move-object/from16 v26, v0

    const-string v27, "0.000"

    invoke-virtual/range {v26 .. v27}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2241
    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->avgAhText:Landroid/widget/TextView;

    move-object/from16 v26, v0

    const-string v27, "0.000"

    invoke-virtual/range {v26 .. v27}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2242
    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->avgWhAtTheMomentText:Landroid/widget/TextView;

    move-object/from16 v26, v0

    const-string v27, "0.000"

    invoke-virtual/range {v26 .. v27}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2243
    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->distanceText:Landroid/widget/TextView;

    move-object/from16 v26, v0

    const-string v27, "0.000"

    invoke-virtual/range {v26 .. v27}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2244
    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->rangeText:Landroid/widget/TextView;

    move-object/from16 v26, v0

    const-string v27, "0.0"

    invoke-virtual/range {v26 .. v27}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2245
    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->voltText:Landroid/widget/TextView;

    move-object/from16 v26, v0

    const-string v27, "0.00"

    invoke-virtual/range {v26 .. v27}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2246
    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->singleCellVoltText:Landroid/widget/TextView;

    move-object/from16 v26, v0

    const-string v27, "0.00"

    invoke-virtual/range {v26 .. v27}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2247
    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->speedGPSText:Landroid/widget/TextView;

    move-object/from16 v26, v0

    const-string v27, "0.0"

    invoke-virtual/range {v26 .. v27}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2248
    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->altitudeGPSText:Landroid/widget/TextView;

    move-object/from16 v26, v0

    const-string v27, "0.0"

    invoke-virtual/range {v26 .. v27}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2249
    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->speedMaxText:Landroid/widget/TextView;

    move-object/from16 v26, v0

    const-string v27, "0.0"

    invoke-virtual/range {v26 .. v27}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2250
    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->speedAvgText:Landroid/widget/TextView;

    move-object/from16 v26, v0

    const-string v27, "0.0"

    invoke-virtual/range {v26 .. v27}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2251
    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->speedAvgRunningText:Landroid/widget/TextView;

    move-object/from16 v26, v0

    const-string v27, "0.0"

    invoke-virtual/range {v26 .. v27}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2252
    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->tempText:Landroid/widget/TextView;

    move-object/from16 v26, v0

    const-string v27, "0.0"

    invoke-virtual/range {v26 .. v27}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2253
    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->maxTempText:Landroid/widget/TextView;

    move-object/from16 v26, v0

    const-string v27, "0.0"

    invoke-virtual/range {v26 .. v27}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2254
    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->minVoltText:Landroid/widget/TextView;

    move-object/from16 v26, v0

    const-string v27, "0.00"

    invoke-virtual/range {v26 .. v27}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2255
    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->avgMotorAmpsUsedPos:Landroid/widget/TextView;

    move-object/from16 v26, v0

    const-string v27, "0.0|"

    invoke-virtual/range {v26 .. v27}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2256
    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->avgMotorAmpsUsedNeg:Landroid/widget/TextView;

    move-object/from16 v26, v0

    const-string v27, "-0.0"

    invoke-virtual/range {v26 .. v27}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2257
    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->avgMotorAmpsRidingPos:Landroid/widget/TextView;

    move-object/from16 v26, v0

    const-string v27, "0.0|"

    invoke-virtual/range {v26 .. v27}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2258
    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->avgMotorAmpsRidingNeg:Landroid/widget/TextView;

    move-object/from16 v26, v0

    const-string v27, "-0.0"

    invoke-virtual/range {v26 .. v27}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2259
    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->avgBatteryAmpsUsedPos:Landroid/widget/TextView;

    move-object/from16 v26, v0

    const-string v27, "0.0|"

    invoke-virtual/range {v26 .. v27}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2260
    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->avgBatteryAmpsUsedNeg:Landroid/widget/TextView;

    move-object/from16 v26, v0

    const-string v27, "-0.0"

    invoke-virtual/range {v26 .. v27}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2261
    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->avgBatteryAmpsRidingPos:Landroid/widget/TextView;

    move-object/from16 v26, v0

    const-string v27, "0.0|"

    invoke-virtual/range {v26 .. v27}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2262
    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->avgBatteryAmpsRidingNeg:Landroid/widget/TextView;

    move-object/from16 v26, v0

    const-string v27, "-0.0"

    invoke-virtual/range {v26 .. v27}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2263
    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->avgTemperaturTotal:Landroid/widget/TextView;

    move-object/from16 v26, v0

    const-string v27, "0.0"

    invoke-virtual/range {v26 .. v27}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2264
    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->avgWattRiding:Landroid/widget/TextView;

    move-object/from16 v26, v0

    const-string v27, "0"

    invoke-virtual/range {v26 .. v27}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2265
    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->avgWattActive:Landroid/widget/TextView;

    move-object/from16 v26, v0

    const-string v27, "0"

    invoke-virtual/range {v26 .. v27}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2266
    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->timeTotal:Landroid/widget/TextView;

    move-object/from16 v26, v0

    const-string v27, "00:00"

    invoke-virtual/range {v26 .. v27}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2267
    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->timeRiding:Landroid/widget/TextView;

    move-object/from16 v26, v0

    const-string v27, "00:00"

    invoke-virtual/range {v26 .. v27}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2269
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lackmaniac/vescmonitor/DeviceControlActivity;->distanceCount:I

    .line 2270
    const/high16 v26, -0x40800000    # -1.0f

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lackmaniac/vescmonitor/DeviceControlActivity;->lastDistance:F

    .line 2271
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lackmaniac/vescmonitor/DeviceControlActivity;->lastConsumedWh:F

    .line 2272
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lackmaniac/vescmonitor/DeviceControlActivity;->lastConsumedAh:F

    .line 2274
    const v26, 0x7f080148

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lackmaniac/vescmonitor/DeviceControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/LinearLayout;

    .line 2275
    .local v11, "speedModeBox":Landroid/widget/LinearLayout;
    new-instance v26, Lackmaniac/vescmonitor/DeviceControlActivity$7;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lackmaniac/vescmonitor/DeviceControlActivity$7;-><init>(Lackmaniac/vescmonitor/DeviceControlActivity;)V

    move-object/from16 v0, v26

    invoke-virtual {v11, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2281
    new-instance v26, Lackmaniac/vescmonitor/DeviceControlActivity$8;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lackmaniac/vescmonitor/DeviceControlActivity$8;-><init>(Lackmaniac/vescmonitor/DeviceControlActivity;)V

    move-object/from16 v0, v26

    invoke-virtual {v11, v0}, Landroid/widget/LinearLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 2289
    const v26, 0x7f080145

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lackmaniac/vescmonitor/DeviceControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/LinearLayout;

    .line 2290
    .local v10, "speedBox":Landroid/widget/LinearLayout;
    new-instance v26, Lackmaniac/vescmonitor/DeviceControlActivity$9;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lackmaniac/vescmonitor/DeviceControlActivity$9;-><init>(Lackmaniac/vescmonitor/DeviceControlActivity;)V

    move-object/from16 v0, v26

    invoke-virtual {v10, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2304
    const v26, 0x7f080072

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lackmaniac/vescmonitor/DeviceControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    .line 2305
    .local v4, "distanceBox":Landroid/widget/LinearLayout;
    new-instance v26, Lackmaniac/vescmonitor/DeviceControlActivity$10;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lackmaniac/vescmonitor/DeviceControlActivity$10;-><init>(Lackmaniac/vescmonitor/DeviceControlActivity;)V

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2319
    invoke-direct/range {p0 .. p0}, Lackmaniac/vescmonitor/DeviceControlActivity;->updateSpeedModeButtonText()V

    .line 2320
    return-void

    .line 2043
    .end local v3    # "batteryType":I
    .end local v4    # "distanceBox":Landroid/widget/LinearLayout;
    .end local v5    # "magnets":I
    .end local v6    # "motorPulley":I
    .end local v10    # "speedBox":Landroid/widget/LinearLayout;
    .end local v11    # "speedModeBox":Landroid/widget/LinearLayout;
    .end local v12    # "textViewAltitudeUnit":Landroid/widget/TextView;
    .end local v13    # "textViewAverageWhSpeedUnit":Landroid/widget/TextView;
    .end local v14    # "textViewAverageWhSpeedUnit2":Landroid/widget/TextView;
    .end local v15    # "textViewDistanceSpeedUnit":Landroid/widget/TextView;
    .end local v16    # "textViewGPSSpeedUnitSmall":Landroid/widget/TextView;
    .end local v17    # "textViewModeMaxSpeedUnit":Landroid/widget/TextView;
    .end local v18    # "textViewRangeSpeedUnit":Landroid/widget/TextView;
    .end local v19    # "textViewSpeedAvgRunningUnitSmall":Landroid/widget/TextView;
    .end local v20    # "textViewSpeedAvgUnitSmall":Landroid/widget/TextView;
    .end local v21    # "textViewSpeedUnitBig":Landroid/widget/TextView;
    .end local v22    # "textViewSpeedUnitSmall":Landroid/widget/TextView;
    .end local v24    # "wheelPulley":I
    .end local v25    # "wheelsizeInMM":I
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lackmaniac/vescmonitor/DeviceControlActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v26

    const v27, 0x7f0a0041

    move-object/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v0, v1, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    goto/16 :goto_0

    .line 2047
    :cond_2
    const-string v26, "USE_DARK_THEME"

    invoke-static/range {v26 .. v26}, Lackmaniac/vescmonitor/Utils;->getSettingsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    const/16 v27, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    move/from16 v2, v27

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v23

    .line 2049
    .local v23, "useDarkTheme":Z
    invoke-virtual {v8}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 2050
    if-eqz v23, :cond_3

    .line 2051
    invoke-virtual/range {p0 .. p0}, Lackmaniac/vescmonitor/DeviceControlActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v26

    const v27, 0x7f0a0040

    move-object/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v0, v1, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 2052
    invoke-virtual/range {p0 .. p0}, Lackmaniac/vescmonitor/DeviceControlActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v26

    new-instance v27, Landroid/graphics/drawable/ColorDrawable;

    const-string v28, "#848484"

    invoke-static/range {v28 .. v28}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v28

    invoke-direct/range {v27 .. v28}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual/range {v26 .. v27}, Landroid/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2056
    :goto_f
    invoke-virtual {v8}, Landroid/widget/LinearLayout;->invalidate()V

    goto/16 :goto_0

    .line 2054
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lackmaniac/vescmonitor/DeviceControlActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v26

    const v27, 0x7f0a003f

    move-object/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v0, v1, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    goto :goto_f

    .line 2075
    .end local v23    # "useDarkTheme":Z
    .restart local v3    # "batteryType":I
    .restart local v5    # "magnets":I
    .restart local v6    # "motorPulley":I
    .restart local v24    # "wheelPulley":I
    .restart local v25    # "wheelsizeInMM":I
    :cond_4
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "_"

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    goto/16 :goto_1

    .line 2076
    :cond_5
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "_"

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    goto/16 :goto_2

    .line 2077
    :cond_6
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "_"

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    goto/16 :goto_3

    .line 2078
    :cond_7
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "_"

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    goto/16 :goto_4

    .line 2079
    :cond_8
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "_"

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    goto/16 :goto_5

    .line 2080
    :cond_9
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "_"

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    goto/16 :goto_6

    .line 2081
    :cond_a
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "_"

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    goto/16 :goto_7

    .line 2082
    :cond_b
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "_"

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    goto/16 :goto_8

    .line 2083
    :cond_c
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "_"

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    goto/16 :goto_9

    .line 2084
    :cond_d
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "_"

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    goto/16 :goto_a

    .line 2085
    :cond_e
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "_"

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    goto/16 :goto_b

    .line 2087
    :cond_f
    const/high16 v26, 0x3f800000    # 1.0f

    goto/16 :goto_c

    .line 2088
    :cond_10
    const/high16 v26, 0x3f800000    # 1.0f

    goto/16 :goto_d

    .line 2115
    .restart local v12    # "textViewAltitudeUnit":Landroid/widget/TextView;
    .restart local v13    # "textViewAverageWhSpeedUnit":Landroid/widget/TextView;
    .restart local v14    # "textViewAverageWhSpeedUnit2":Landroid/widget/TextView;
    .restart local v15    # "textViewDistanceSpeedUnit":Landroid/widget/TextView;
    .restart local v16    # "textViewGPSSpeedUnitSmall":Landroid/widget/TextView;
    .restart local v17    # "textViewModeMaxSpeedUnit":Landroid/widget/TextView;
    .restart local v18    # "textViewRangeSpeedUnit":Landroid/widget/TextView;
    .restart local v19    # "textViewSpeedAvgRunningUnitSmall":Landroid/widget/TextView;
    .restart local v20    # "textViewSpeedAvgUnitSmall":Landroid/widget/TextView;
    .restart local v21    # "textViewSpeedUnitBig":Landroid/widget/TextView;
    .restart local v22    # "textViewSpeedUnitSmall":Landroid/widget/TextView;
    :cond_11
    const v26, 0x7f0d008c

    move-object/from16 v0, v21

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 2116
    const v26, 0x7f0d008c

    move-object/from16 v0, v16

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 2117
    const v26, 0x7f0d008c

    move-object/from16 v0, v22

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 2118
    const v26, 0x7f0d008c

    move-object/from16 v0, v20

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 2119
    const v26, 0x7f0d008c

    move-object/from16 v0, v19

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 2120
    const v26, 0x7f0d0053

    move-object/from16 v0, v17

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 2121
    const v26, 0x7f0d002d

    move/from16 v0, v26

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setText(I)V

    .line 2122
    const v26, 0x7f0d002e

    move/from16 v0, v26

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setText(I)V

    .line 2123
    const v26, 0x7f0d008b

    move/from16 v0, v26

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setText(I)V

    .line 2124
    const v26, 0x7f0d008b

    move-object/from16 v0, v18

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 2125
    const v26, 0x7f0d008d

    move-object/from16 v0, v18

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_e
.end method

.method private makeBoxBackgroundsInvisible(Z)V
    .locals 13
    .param p1, "makeTransparent"    # Z

    .prologue
    const v12, 0x7f02000c

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 3502
    const-string v5, "VESC_SETTINGS"

    invoke-virtual {p0, v5, v9}, Lackmaniac/vescmonitor/DeviceControlActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    const-string v6, "REALTIMESIZE"

    const/16 v7, 0x50

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 3503
    .local v2, "realtimeDataSize":I
    iget-object v5, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->vescDataLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v5

    int-to-float v5, v5

    iget-object v6, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->vescDataLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    int-to-float v6, v2

    const/high16 v7, 0x42c80000    # 100.0f

    div-float/2addr v6, v7

    mul-float v3, v5, v6

    .line 3505
    .local v3, "scaleFactor":F
    if-eqz p1, :cond_2

    .line 3506
    iget-object v5, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->surView:Landroid/view/SurfaceView;

    invoke-virtual {v5, v8}, Landroid/view/SurfaceView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 3507
    invoke-virtual {p0}, Lackmaniac/vescmonitor/DeviceControlActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/ActionBar;->hide()V

    .line 3508
    invoke-virtual {p0}, Lackmaniac/vescmonitor/DeviceControlActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v12}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    const-string v6, "VESC_SETTINGS"

    invoke-virtual {p0, v6, v9}, Lackmaniac/vescmonitor/DeviceControlActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    const-string v7, "VIDEO_LAYOUT"

    invoke-interface {v6, v7, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    aget-object v5, v5, v6

    const-string v6, "Left"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 3509
    iget-object v5, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->vescDataLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v10}, Landroid/widget/LinearLayout;->setPivotX(F)V

    .line 3510
    iget-object v5, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->vescDataLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v10}, Landroid/widget/LinearLayout;->setPivotY(F)V

    .line 3511
    iget-object v5, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->vescDataLayout:Landroid/widget/LinearLayout;

    const/high16 v6, 0x42b40000    # 90.0f

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setRotation(F)V

    .line 3512
    iget-object v5, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->vescDataLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v3}, Landroid/widget/LinearLayout;->setScaleX(F)V

    .line 3513
    iget-object v5, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->vescDataLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v3}, Landroid/widget/LinearLayout;->setScaleY(F)V

    .line 3514
    invoke-virtual {p0}, Lackmaniac/vescmonitor/DeviceControlActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 3515
    .local v1, "display":Landroid/view/Display;
    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4}, Landroid/graphics/Point;-><init>()V

    .line 3516
    .local v4, "size":Landroid/graphics/Point;
    invoke-virtual {v1, v4}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 3517
    iget-object v5, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->vescDataLayout:Landroid/widget/LinearLayout;

    iget v6, v4, Landroid/graphics/Point;->x:I

    int-to-float v6, v6

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setX(F)V

    .line 3520
    .end local v1    # "display":Landroid/view/Display;
    .end local v4    # "size":Landroid/graphics/Point;
    :cond_0
    const-string v5, "VESC_SETTINGS"

    invoke-virtual {p0, v5, v9}, Lackmaniac/vescmonitor/DeviceControlActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    const-string v6, "MAKE_BACKGROUND_TRANSPARENT"

    invoke-interface {v5, v6, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 3521
    const v0, -0x55000001

    .line 3522
    .local v0, "col":I
    const v5, 0x7f080148

    invoke-virtual {p0, v5}, Lackmaniac/vescmonitor/DeviceControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v5, v0, v6}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 3523
    const v5, 0x7f080145

    invoke-virtual {p0, v5}, Lackmaniac/vescmonitor/DeviceControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v5, v0, v6}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 3524
    const v5, 0x7f080041

    invoke-virtual {p0, v5}, Lackmaniac/vescmonitor/DeviceControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v5, v0, v6}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 3525
    const v5, 0x7f08010e

    invoke-virtual {p0, v5}, Lackmaniac/vescmonitor/DeviceControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v5, v0, v6}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 3526
    const v5, 0x7f080167

    invoke-virtual {p0, v5}, Lackmaniac/vescmonitor/DeviceControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v5, v0, v6}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 3527
    const v5, 0x7f0800ee

    invoke-virtual {p0, v5}, Lackmaniac/vescmonitor/DeviceControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v5, v0, v6}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 3528
    const v5, 0x7f080072

    invoke-virtual {p0, v5}, Lackmaniac/vescmonitor/DeviceControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v5, v0, v6}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 3529
    const v5, 0x7f080042

    invoke-virtual {p0, v5}, Lackmaniac/vescmonitor/DeviceControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v5, v0, v6}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 3530
    const v5, 0x7f08011d

    invoke-virtual {p0, v5}, Lackmaniac/vescmonitor/DeviceControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v5, v0, v6}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 3531
    const v5, 0x7f080078

    invoke-virtual {p0, v5}, Lackmaniac/vescmonitor/DeviceControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v5, v0, v6}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 3532
    const v5, 0x7f0801bb

    invoke-virtual {p0, v5}, Lackmaniac/vescmonitor/DeviceControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v5, v0, v6}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 3533
    const v5, 0x7f08002c

    invoke-virtual {p0, v5}, Lackmaniac/vescmonitor/DeviceControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v5, v0, v6}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 3559
    .end local v0    # "col":I
    :cond_1
    :goto_0
    return-void

    .line 3536
    :cond_2
    iget-object v5, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->surView:Landroid/view/SurfaceView;

    invoke-virtual {p0}, Lackmaniac/vescmonitor/DeviceControlActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const/high16 v7, 0x1060000

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/view/SurfaceView;->setBackgroundColor(I)V

    .line 3537
    invoke-virtual {p0}, Lackmaniac/vescmonitor/DeviceControlActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/ActionBar;->show()V

    .line 3538
    invoke-virtual {p0}, Lackmaniac/vescmonitor/DeviceControlActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v12}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    const-string v6, "VESC_SETTINGS"

    invoke-virtual {p0, v6, v9}, Lackmaniac/vescmonitor/DeviceControlActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    const-string v7, "VIDEO_LAYOUT"

    invoke-interface {v6, v7, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    aget-object v5, v5, v6

    const-string v6, "Left"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 3539
    iget-object v5, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->vescDataLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v10}, Landroid/widget/LinearLayout;->setX(F)V

    .line 3540
    iget-object v5, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->mToggleVideoButton:Landroid/widget/ToggleButton;

    invoke-virtual {v5, v10}, Landroid/widget/ToggleButton;->setRotation(F)V

    .line 3541
    iget-object v5, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->vescDataLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v10}, Landroid/widget/LinearLayout;->setRotation(F)V

    .line 3542
    iget-object v5, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->vescDataLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v11}, Landroid/widget/LinearLayout;->setScaleX(F)V

    .line 3543
    iget-object v5, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->vescDataLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v11}, Landroid/widget/LinearLayout;->setScaleY(F)V

    .line 3546
    :cond_3
    const v5, 0x7f080148

    invoke-virtual {p0, v5}, Lackmaniac/vescmonitor/DeviceControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 3547
    const v5, 0x7f080145

    invoke-virtual {p0, v5}, Lackmaniac/vescmonitor/DeviceControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 3548
    const v5, 0x7f080041

    invoke-virtual {p0, v5}, Lackmaniac/vescmonitor/DeviceControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 3549
    const v5, 0x7f08010e

    invoke-virtual {p0, v5}, Lackmaniac/vescmonitor/DeviceControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 3550
    const v5, 0x7f080167

    invoke-virtual {p0, v5}, Lackmaniac/vescmonitor/DeviceControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 3551
    const v5, 0x7f0800ee

    invoke-virtual {p0, v5}, Lackmaniac/vescmonitor/DeviceControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 3552
    const v5, 0x7f080072

    invoke-virtual {p0, v5}, Lackmaniac/vescmonitor/DeviceControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 3553
    const v5, 0x7f080042

    invoke-virtual {p0, v5}, Lackmaniac/vescmonitor/DeviceControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 3554
    const v5, 0x7f08011d

    invoke-virtual {p0, v5}, Lackmaniac/vescmonitor/DeviceControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 3555
    const v5, 0x7f080078

    invoke-virtual {p0, v5}, Lackmaniac/vescmonitor/DeviceControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 3556
    const v5, 0x7f0801bb

    invoke-virtual {p0, v5}, Lackmaniac/vescmonitor/DeviceControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 3557
    const v5, 0x7f08002c

    invoke-virtual {p0, v5}, Lackmaniac/vescmonitor/DeviceControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto/16 :goto_0
.end method

.method private static makeGattUpdateIntentFilter()Landroid/content/IntentFilter;
    .locals 2

    .prologue
    .line 2624
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 2625
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "com.example.bluetooth.le.ACTION_GATT_CONNECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2626
    const-string v1, "com.example.bluetooth.le.ACTION_GATT_DISCONNECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2627
    const-string v1, "com.example.bluetooth.le.ACTION_GATT_SERVICES_DISCOVERED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2628
    const-string v1, "com.example.bluetooth.le.ACTION_DATA_AVAILABLE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2629
    return-object v0
.end method

.method private onCreateBackgroundCamera(Z)V
    .locals 2
    .param p1, "first"    # Z

    .prologue
    .line 2510
    const v0, 0x7f080164

    invoke-virtual {p0, v0}, Lackmaniac/vescmonitor/DeviceControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceView;

    iput-object v0, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->surView:Landroid/view/SurfaceView;

    .line 2511
    iget-object v0, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->surView:Landroid/view/SurfaceView;

    new-instance v1, Lackmaniac/vescmonitor/DeviceControlActivity$13;

    invoke-direct {v1, p0}, Lackmaniac/vescmonitor/DeviceControlActivity$13;-><init>(Lackmaniac/vescmonitor/DeviceControlActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2523
    iget-object v0, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->surView:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iput-object v0, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->camHolder:Landroid/view/SurfaceHolder;

    .line 2524
    if-nez p1, :cond_0

    .line 2525
    iget-object v0, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->camHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 2526
    iget-object v0, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->camHolder:Landroid/view/SurfaceHolder;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 2528
    :cond_0
    return-void
.end method

.method private onCreateRecorder()V
    .locals 3
    .annotation build Landroid/support/annotation/RequiresApi;
        api = 0x15
    .end annotation

    .prologue
    .line 2414
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 2415
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lackmaniac/vescmonitor/DeviceControlActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 2416
    iget v1, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v1, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->mScreenDensity:I

    .line 2418
    new-instance v1, Landroid/media/MediaRecorder;

    invoke-direct {v1}, Landroid/media/MediaRecorder;-><init>()V

    iput-object v1, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->mMediaRecorder:Landroid/media/MediaRecorder;

    .line 2420
    const-string v1, "media_projection"

    .line 2421
    invoke-virtual {p0, v1}, Lackmaniac/vescmonitor/DeviceControlActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/projection/MediaProjectionManager;

    iput-object v1, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->mProjectionManager:Landroid/media/projection/MediaProjectionManager;

    .line 2423
    iget-object v1, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->mToggleVideoButton:Landroid/widget/ToggleButton;

    new-instance v2, Lackmaniac/vescmonitor/DeviceControlActivity$12;

    invoke-direct {v2, p0}, Lackmaniac/vescmonitor/DeviceControlActivity$12;-><init>(Lackmaniac/vescmonitor/DeviceControlActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2482
    return-void
.end method

.method private parseNmeaString(Ljava/lang/String;)V
    .locals 11
    .param p1, "line"    # Ljava/lang/String;

    .prologue
    const/16 v3, 0x9

    const/4 v8, 0x1

    const/4 v10, 0x0

    .line 2368
    const-string v2, "$"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2369
    const-string v2, ","

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 2370
    .local v0, "tokens":[Ljava/lang/String;
    aget-object v1, v0, v10

    .line 2373
    .local v1, "type":Ljava/lang/String;
    const-string v2, "$GPGGA"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2374
    aget-object v2, v0, v3

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2375
    iget-object v2, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->altitudeGPSText:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    .line 2376
    aget-object v2, v0, v3

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    iput-wide v2, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->altitude:D

    .line 2377
    iget-object v4, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->altitudeGPSText:Landroid/widget/TextView;

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v6, "%.1f"

    new-array v7, v8, [Ljava/lang/Object;

    iget v2, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->distanceUnit:I

    if-ne v2, v8, :cond_1

    iget-wide v2, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->altitude:D

    const-wide v8, 0x400a3f290abb44e5L    # 3.28084

    mul-double/2addr v2, v8

    :goto_0
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v7, v10

    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2382
    .end local v0    # "tokens":[Ljava/lang/String;
    .end local v1    # "type":Ljava/lang/String;
    :cond_0
    return-void

    .line 2377
    .restart local v0    # "tokens":[Ljava/lang/String;
    .restart local v1    # "type":Ljava/lang/String;
    :cond_1
    iget-wide v2, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->altitude:D

    goto :goto_0
.end method

.method private playSound(Ljava/lang/String;)V
    .locals 2
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    .line 1162
    if-eqz p1, :cond_0

    .line 1163
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lackmaniac/vescmonitor/DeviceControlActivity$4;

    invoke-direct {v1, p0, p1}, Lackmaniac/vescmonitor/DeviceControlActivity$4;-><init>(Lackmaniac/vescmonitor/DeviceControlActivity;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1181
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1183
    :cond_0
    return-void
.end method

.method private populateMinMaxValueTexts()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 756
    iget-object v0, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->maxPowerText:Landroid/widget/TextView;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "%.0f"

    new-array v3, v7, [Ljava/lang/Object;

    iget v4, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->maxPower:F

    iget v5, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->noOfMotors:I

    int-to-float v5, v5

    mul-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 757
    iget-object v0, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->minPowerText:Landroid/widget/TextView;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "%.0f"

    new-array v3, v7, [Ljava/lang/Object;

    iget v4, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->minPower:F

    iget v5, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->noOfMotors:I

    int-to-float v5, v5

    mul-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 758
    iget-object v0, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->curMotorMaxText:Landroid/widget/TextView;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "%.1f"

    new-array v3, v7, [Ljava/lang/Object;

    iget v4, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->max_motor_current:F

    iget v5, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->noOfMotors:I

    int-to-float v5, v5

    mul-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 759
    iget-object v0, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->curMotorMinText:Landroid/widget/TextView;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "%.1f"

    new-array v3, v7, [Ljava/lang/Object;

    iget v4, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->min_motor_current:F

    iget v5, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->noOfMotors:I

    int-to-float v5, v5

    mul-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 760
    iget-object v0, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->curBattMaxText:Landroid/widget/TextView;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "%.1f"

    new-array v3, v7, [Ljava/lang/Object;

    iget v4, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->max_battery_current:F

    iget v5, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->noOfMotors:I

    int-to-float v5, v5

    mul-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 761
    iget-object v0, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->curBattMinText:Landroid/widget/TextView;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "%.1f"

    new-array v3, v7, [Ljava/lang/Object;

    iget v4, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->min_battery_current:F

    iget v5, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->noOfMotors:I

    int-to-float v5, v5

    mul-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 762
    iget-object v0, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->speedMaxText:Landroid/widget/TextView;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "%.1f"

    new-array v3, v7, [Ljava/lang/Object;

    iget v4, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->maxRpm:F

    invoke-static {}, Lackmaniac/vescmonitor/Utils;->getSpeedDevider()F

    move-result v5

    div-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 763
    iget-object v0, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->maxTempText:Landroid/widget/TextView;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "%.1f"

    new-array v3, v7, [Ljava/lang/Object;

    iget v4, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->maxTempPCB:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 764
    iget-object v0, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->minVoltText:Landroid/widget/TextView;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "%.2f"

    new-array v3, v7, [Ljava/lang/Object;

    iget v4, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->minInpVoltage:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 765
    return-void
.end method

.method private populateValues(Lackmaniac/vescmonitor/RealtimeData;Z)V
    .locals 18
    .param p1, "realtimeData"    # Lackmaniac/vescmonitor/RealtimeData;
    .param p2, "forceMinMaxRefresh"    # Z

    .prologue
    .line 768
    const/4 v10, 0x0

    .line 769
    .local v10, "valuesChanged":Z
    move-object/from16 v0, p1

    iget v11, v0, Lackmaniac/vescmonitor/RealtimeData;->power:F

    move-object/from16 v0, p0

    iget v12, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->maxPower:F

    cmpl-float v11, v11, v12

    if-lez v11, :cond_0

    .line 770
    move-object/from16 v0, p1

    iget v11, v0, Lackmaniac/vescmonitor/RealtimeData;->power:F

    move-object/from16 v0, p0

    iput v11, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->maxPower:F

    .line 771
    const/4 v10, 0x1

    .line 774
    :cond_0
    move-object/from16 v0, p1

    iget v11, v0, Lackmaniac/vescmonitor/RealtimeData;->power:F

    move-object/from16 v0, p0

    iget v12, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->minPower:F

    cmpg-float v11, v11, v12

    if-gez v11, :cond_1

    .line 775
    move-object/from16 v0, p1

    iget v11, v0, Lackmaniac/vescmonitor/RealtimeData;->power:F

    move-object/from16 v0, p0

    iput v11, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->minPower:F

    .line 776
    const/4 v10, 0x1

    .line 779
    :cond_1
    move-object/from16 v0, p1

    iget v11, v0, Lackmaniac/vescmonitor/RealtimeData;->avgMotorCurrent:F

    move-object/from16 v0, p0

    iget v12, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->max_motor_current:F

    cmpl-float v11, v11, v12

    if-lez v11, :cond_2

    .line 780
    move-object/from16 v0, p1

    iget v11, v0, Lackmaniac/vescmonitor/RealtimeData;->avgMotorCurrent:F

    move-object/from16 v0, p0

    iput v11, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->max_motor_current:F

    .line 781
    const/4 v10, 0x1

    .line 783
    :cond_2
    move-object/from16 v0, p1

    iget v11, v0, Lackmaniac/vescmonitor/RealtimeData;->avgMotorCurrent:F

    move-object/from16 v0, p0

    iget v12, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->min_motor_current:F

    cmpg-float v11, v11, v12

    if-gez v11, :cond_3

    .line 784
    move-object/from16 v0, p1

    iget v11, v0, Lackmaniac/vescmonitor/RealtimeData;->avgMotorCurrent:F

    move-object/from16 v0, p0

    iput v11, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->min_motor_current:F

    .line 785
    const/4 v10, 0x1

    .line 787
    :cond_3
    move-object/from16 v0, p1

    iget v11, v0, Lackmaniac/vescmonitor/RealtimeData;->avgInputCurrent:F

    move-object/from16 v0, p0

    iget v12, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->max_battery_current:F

    cmpl-float v11, v11, v12

    if-lez v11, :cond_4

    .line 788
    move-object/from16 v0, p1

    iget v11, v0, Lackmaniac/vescmonitor/RealtimeData;->avgInputCurrent:F

    move-object/from16 v0, p0

    iput v11, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->max_battery_current:F

    .line 789
    const/4 v10, 0x1

    .line 791
    :cond_4
    move-object/from16 v0, p1

    iget v11, v0, Lackmaniac/vescmonitor/RealtimeData;->avgInputCurrent:F

    move-object/from16 v0, p0

    iget v12, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->min_battery_current:F

    cmpg-float v11, v11, v12

    if-gez v11, :cond_5

    .line 792
    move-object/from16 v0, p1

    iget v11, v0, Lackmaniac/vescmonitor/RealtimeData;->avgInputCurrent:F

    move-object/from16 v0, p0

    iput v11, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->min_battery_current:F

    .line 793
    const/4 v10, 0x1

    .line 795
    :cond_5
    move-object/from16 v0, p1

    iget v11, v0, Lackmaniac/vescmonitor/RealtimeData;->rpm:F

    move-object/from16 v0, p0

    iget v12, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->maxRpm:F

    cmpl-float v11, v11, v12

    if-lez v11, :cond_6

    .line 796
    move-object/from16 v0, p1

    iget v11, v0, Lackmaniac/vescmonitor/RealtimeData;->rpm:F

    move-object/from16 v0, p0

    iput v11, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->maxRpm:F

    .line 797
    const/4 v10, 0x1

    .line 799
    :cond_6
    move-object/from16 v0, p1

    iget v11, v0, Lackmaniac/vescmonitor/RealtimeData;->tempPcb:F

    move-object/from16 v0, p0

    iget v12, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->maxTempPCB:F

    cmpl-float v11, v11, v12

    if-lez v11, :cond_7

    .line 800
    move-object/from16 v0, p1

    iget v11, v0, Lackmaniac/vescmonitor/RealtimeData;->tempPcb:F

    move-object/from16 v0, p0

    iput v11, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->maxTempPCB:F

    .line 801
    const/4 v10, 0x1

    .line 803
    :cond_7
    move-object/from16 v0, p1

    iget v11, v0, Lackmaniac/vescmonitor/RealtimeData;->inpVoltage:F

    move-object/from16 v0, p0

    iget v12, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->minInpVoltage:F

    cmpg-float v11, v11, v12

    if-gez v11, :cond_8

    .line 804
    move-object/from16 v0, p1

    iget v11, v0, Lackmaniac/vescmonitor/RealtimeData;->inpVoltage:F

    move-object/from16 v0, p0

    iput v11, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->minInpVoltage:F

    .line 805
    const/4 v10, 0x1

    .line 808
    :cond_8
    if-nez v10, :cond_9

    if-eqz p2, :cond_a

    :cond_9
    invoke-direct/range {p0 .. p0}, Lackmaniac/vescmonitor/DeviceControlActivity;->populateMinMaxValueTexts()V

    .line 810
    :cond_a
    move-object/from16 v0, p1

    iget v11, v0, Lackmaniac/vescmonitor/RealtimeData;->tachometerAbs:F

    invoke-static {}, Lackmaniac/vescmonitor/Utils;->getDistanceFactor()F

    move-result v12

    mul-float/2addr v11, v12

    const/high16 v12, 0x447a0000    # 1000.0f

    div-float v5, v11, v12

    .line 812
    .local v5, "distance":F
    move-object/from16 v0, p0

    iget v11, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->lastDistance:F

    const/high16 v12, -0x40800000    # -1.0f

    cmpl-float v11, v11, v12

    if-nez v11, :cond_15

    .line 813
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput v11, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->distanceCount:I

    .line 814
    move-object/from16 v0, p0

    iput v5, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->lastDistance:F

    .line 815
    move-object/from16 v0, p1

    iget v11, v0, Lackmaniac/vescmonitor/RealtimeData;->wattHours:F

    move-object/from16 v0, p1

    iget v12, v0, Lackmaniac/vescmonitor/RealtimeData;->wattHoursCharged:F

    sub-float/2addr v11, v12

    move-object/from16 v0, p0

    iput v11, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->lastConsumedWh:F

    .line 816
    move-object/from16 v0, p1

    iget v11, v0, Lackmaniac/vescmonitor/RealtimeData;->ampHours:F

    move-object/from16 v0, p1

    iget v12, v0, Lackmaniac/vescmonitor/RealtimeData;->ampHoursCharged:F

    sub-float/2addr v11, v12

    move-object/from16 v0, p0

    iput v11, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->lastConsumedAh:F

    .line 836
    :goto_0
    const/4 v11, 0x0

    cmpl-float v11, v5, v11

    if-lez v11, :cond_18

    move-object/from16 v0, p1

    iget v11, v0, Lackmaniac/vescmonitor/RealtimeData;->wattHours:F

    move-object/from16 v0, p1

    iget v12, v0, Lackmaniac/vescmonitor/RealtimeData;->wattHoursCharged:F

    sub-float/2addr v11, v12

    div-float v3, v11, v5

    .line 840
    .local v3, "avg_watt_hours":F
    :goto_1
    const/4 v11, 0x0

    cmpl-float v11, v5, v11

    if-lez v11, :cond_19

    move-object/from16 v0, p1

    iget v11, v0, Lackmaniac/vescmonitor/RealtimeData;->ampHours:F

    move-object/from16 v0, p1

    iget v12, v0, Lackmaniac/vescmonitor/RealtimeData;->ampHoursCharged:F

    sub-float/2addr v11, v12

    div-float v2, v11, v5

    .line 844
    .local v2, "avg_amp_hours":F
    :goto_2
    move-object/from16 v0, p1

    iget v11, v0, Lackmaniac/vescmonitor/RealtimeData;->inpVoltage:F

    move-object/from16 v0, p0

    iget v12, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->noOfCells:I

    int-to-float v12, v12

    div-float v6, v11, v12

    .line 846
    .local v6, "fInpVoltage":F
    move-object/from16 v0, p1

    iget v11, v0, Lackmaniac/vescmonitor/RealtimeData;->power:F

    const/high16 v12, -0x3f600000    # -5.0f

    cmpl-float v11, v11, v12

    if-lez v11, :cond_b

    move-object/from16 v0, p1

    iget v11, v0, Lackmaniac/vescmonitor/RealtimeData;->power:F

    const/high16 v12, 0x40a00000    # 5.0f

    cmpg-float v11, v11, v12

    if-ltz v11, :cond_c

    :cond_b
    move-object/from16 v0, p0

    iget v11, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->batteryPercent:I

    const/4 v12, -0x1

    if-ne v11, v12, :cond_26

    .line 847
    :cond_c
    move-object/from16 v0, p0

    iget v11, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->countBattery:I

    add-int/lit8 v12, v11, -0x1

    move-object/from16 v0, p0

    iput v12, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->countBattery:I

    const/4 v12, 0x1

    if-lt v11, v12, :cond_d

    move-object/from16 v0, p0

    iget v11, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->batteryPercent:I

    const/4 v12, -0x1

    if-ne v11, v12, :cond_e

    .line 848
    :cond_d
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput v11, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->countBattery:I

    .line 850
    move-object/from16 v0, p0

    iget v11, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->percent100:F

    cmpl-float v11, v6, v11

    if-ltz v11, :cond_1a

    .line 851
    const/16 v11, 0x64

    move-object/from16 v0, p0

    iput v11, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->batteryPercent:I

    .line 875
    :goto_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->voltLabel:Landroid/widget/TextView;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Volt "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget v11, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->batteryPercent:I

    const/16 v14, 0x64

    if-ge v11, v14, :cond_25

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, " "

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget v14, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->batteryPercent:I

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    :goto_4
    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v13, "%"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v12, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 877
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->playBatteryAlarm:Z

    if-eqz v11, :cond_e

    .line 878
    sget-object v11, Lackmaniac/vescmonitor/DeviceControlActivity$25;->$SwitchMap$ackmaniac$vescmonitor$Utils$ALARM_TYPE:[I

    move-object/from16 v0, p0

    iget-object v12, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->playedAlarm:Lackmaniac/vescmonitor/Utils$ALARM_TYPE;

    invoke-virtual {v12}, Lackmaniac/vescmonitor/Utils$ALARM_TYPE;->ordinal()I

    move-result v12

    aget v11, v11, v12

    packed-switch v11, :pswitch_data_0

    .line 893
    :cond_e
    :goto_5
    const/4 v11, 0x0

    cmpl-float v11, v3, v11

    if-lez v11, :cond_27

    move-object/from16 v0, p0

    iget v11, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->batteryWh:I

    int-to-float v11, v11

    move-object/from16 v0, p0

    iget v12, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->batteryPercent:I

    int-to-float v12, v12

    const/high16 v13, 0x42c80000    # 100.0f

    div-float/2addr v12, v13

    mul-float/2addr v11, v12

    move-object/from16 v0, p0

    iget v12, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->noOfMotors:I

    int-to-float v12, v12

    mul-float/2addr v12, v3

    div-float v8, v11, v12

    .line 896
    .local v8, "range":F
    :goto_6
    move-object/from16 v0, p0

    iget-object v11, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->rangeText:Landroid/widget/TextView;

    sget-object v12, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v13, "%.1f"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v12, v13, v14}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 898
    move-object/from16 v0, p1

    iget v11, v0, Lackmaniac/vescmonitor/RealtimeData;->rpm:F

    invoke-static {}, Lackmaniac/vescmonitor/Utils;->getSpeedDevider()F

    move-result v12

    div-float v9, v11, v12

    .line 899
    .local v9, "speed":F
    move-object/from16 v0, p0

    iget-object v11, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->speedText:Landroid/widget/TextView;

    sget-object v12, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v13, "%.0f"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v12, v13, v14}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 901
    move-object/from16 v0, p0

    iget-object v11, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->powerText:Landroid/widget/TextView;

    sget-object v12, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v13, "%.0f"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    move-object/from16 v0, p1

    iget v0, v0, Lackmaniac/vescmonitor/RealtimeData;->power:F

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->noOfMotors:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    mul-float v16, v16, v17

    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v12, v13, v14}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 903
    move-object/from16 v0, p0

    iget-object v11, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->dutyCycleText:Landroid/widget/TextView;

    sget-object v12, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v13, "%.0f"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    move-object/from16 v0, p1

    iget v0, v0, Lackmaniac/vescmonitor/RealtimeData;->dutyCycleNow:F

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v12, v13, v14}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 904
    move-object/from16 v0, p1

    iget v11, v0, Lackmaniac/vescmonitor/RealtimeData;->dutyCycleNow:F

    const/4 v12, 0x0

    cmpl-float v11, v11, v12

    if-ltz v11, :cond_28

    .line 905
    move-object/from16 v0, p0

    iget-object v11, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->progressDutyPositive:Landroid/widget/ProgressBar;

    move-object/from16 v0, p1

    iget v12, v0, Lackmaniac/vescmonitor/RealtimeData;->dutyCycleNow:F

    float-to-int v12, v12

    invoke-virtual {v11, v12}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 906
    move-object/from16 v0, p0

    iget-object v11, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->progressDutyNegative:Landroid/widget/ProgressBar;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 912
    :goto_7
    move-object/from16 v0, p0

    iget-object v11, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->curMotorText:Landroid/widget/TextView;

    sget-object v12, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v13, "%.2f"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    move-object/from16 v0, p1

    iget v0, v0, Lackmaniac/vescmonitor/RealtimeData;->avgMotorCurrent:F

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->noOfMotors:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    mul-float v16, v16, v17

    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v12, v13, v14}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 913
    move-object/from16 v0, p1

    iget v11, v0, Lackmaniac/vescmonitor/RealtimeData;->avgMotorCurrent:F

    const/4 v12, 0x0

    cmpl-float v11, v11, v12

    if-ltz v11, :cond_29

    .line 914
    move-object/from16 v0, p0

    iget v11, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->actualMaxMotorCurrent:F

    const/4 v12, 0x0

    cmpl-float v11, v11, v12

    if-eqz v11, :cond_f

    .line 915
    move-object/from16 v0, p0

    iget-object v11, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->progressMotorPositive:Landroid/widget/ProgressBar;

    const/high16 v12, 0x43fa0000    # 500.0f

    move-object/from16 v0, p0

    iget v13, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->actualMaxMotorCurrent:F

    move-object/from16 v0, p0

    iget v14, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->noOfMotors:I

    int-to-float v14, v14

    mul-float/2addr v13, v14

    div-float/2addr v12, v13

    move-object/from16 v0, p1

    iget v13, v0, Lackmaniac/vescmonitor/RealtimeData;->avgMotorCurrent:F

    mul-float/2addr v12, v13

    move-object/from16 v0, p0

    iget v13, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->noOfMotors:I

    int-to-float v13, v13

    mul-float/2addr v12, v13

    float-to-int v12, v12

    invoke-virtual {v11, v12}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 916
    move-object/from16 v0, p0

    iget-object v11, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->progressMotorNegative:Landroid/widget/ProgressBar;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 925
    :cond_f
    :goto_8
    move-object/from16 v0, p0

    iget-object v11, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->curBattText:Landroid/widget/TextView;

    sget-object v12, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v13, "%.2f"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    move-object/from16 v0, p1

    iget v0, v0, Lackmaniac/vescmonitor/RealtimeData;->avgInputCurrent:F

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->noOfMotors:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    mul-float v16, v16, v17

    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v12, v13, v14}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 927
    move-object/from16 v0, p1

    iget v11, v0, Lackmaniac/vescmonitor/RealtimeData;->avgInputCurrent:F

    const/4 v12, 0x0

    cmpl-float v11, v11, v12

    if-ltz v11, :cond_2b

    .line 929
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->actualUseMaxWatt:Z

    if-eqz v11, :cond_2a

    .line 930
    const/high16 v11, 0x43fa0000    # 500.0f

    move-object/from16 v0, p0

    iget v12, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->actualMaxWatt:I

    move-object/from16 v0, p0

    iget v13, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->noOfMotors:I

    mul-int/2addr v12, v13

    int-to-float v12, v12

    div-float/2addr v11, v12

    move-object/from16 v0, p1

    iget v12, v0, Lackmaniac/vescmonitor/RealtimeData;->power:F

    mul-float/2addr v11, v12

    move-object/from16 v0, p0

    iget v12, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->noOfMotors:I

    int-to-float v12, v12

    mul-float/2addr v11, v12

    float-to-int v7, v11

    .line 935
    .local v7, "progress":I
    :goto_9
    move-object/from16 v0, p0

    iget v11, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->actualMaxBatteryCurrent:F

    const/4 v12, 0x0

    cmpl-float v11, v11, v12

    if-eqz v11, :cond_10

    .line 936
    move-object/from16 v0, p0

    iget-object v11, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->progressBatteryPositive:Landroid/widget/ProgressBar;

    invoke-virtual {v11, v7}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 937
    move-object/from16 v0, p0

    iget-object v11, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->progressBatteryNegative:Landroid/widget/ProgressBar;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 938
    move-object/from16 v0, p0

    iget-object v11, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->progressPowerPositive:Landroid/widget/ProgressBar;

    invoke-virtual {v11, v7}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 939
    move-object/from16 v0, p0

    iget-object v11, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->progressPowerNegative:Landroid/widget/ProgressBar;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 951
    :cond_10
    :goto_a
    move-object/from16 v0, p0

    iget-object v11, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->drawnText:Landroid/widget/TextView;

    sget-object v12, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v13, "%.3f"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    move-object/from16 v0, p1

    iget v0, v0, Lackmaniac/vescmonitor/RealtimeData;->wattHours:F

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->noOfMotors:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    mul-float v16, v16, v17

    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v12, v13, v14}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 952
    move-object/from16 v0, p0

    iget-object v11, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->chargedText:Landroid/widget/TextView;

    sget-object v12, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v13, "%.3f"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    move-object/from16 v0, p1

    iget v0, v0, Lackmaniac/vescmonitor/RealtimeData;->wattHoursCharged:F

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->noOfMotors:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    mul-float v16, v16, v17

    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v12, v13, v14}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 953
    move-object/from16 v0, p0

    iget-object v11, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->avgWhText:Landroid/widget/TextView;

    sget-object v12, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v13, "%.3f"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->noOfMotors:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    mul-float v16, v16, v3

    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v12, v13, v14}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 954
    move-object/from16 v0, p0

    iget-object v11, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->drawnAhText:Landroid/widget/TextView;

    sget-object v12, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v13, "%.3f"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    move-object/from16 v0, p1

    iget v0, v0, Lackmaniac/vescmonitor/RealtimeData;->ampHours:F

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->noOfMotors:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    mul-float v16, v16, v17

    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v12, v13, v14}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 956
    move-object/from16 v0, p0

    iget-object v11, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->chargedAhText:Landroid/widget/TextView;

    sget-object v12, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v13, "%.3f"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    move-object/from16 v0, p1

    iget v0, v0, Lackmaniac/vescmonitor/RealtimeData;->ampHoursCharged:F

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->noOfMotors:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    mul-float v16, v16, v17

    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v12, v13, v14}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 957
    move-object/from16 v0, p0

    iget-object v11, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->avgAhText:Landroid/widget/TextView;

    sget-object v12, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v13, "%.3f"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->noOfMotors:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    mul-float v16, v16, v2

    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v12, v13, v14}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 958
    move-object/from16 v0, p0

    iget-object v11, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->distanceText:Landroid/widget/TextView;

    sget-object v12, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v13, "%.3f"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v12, v13, v14}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 959
    move-object/from16 v0, p0

    iget-object v11, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->voltText:Landroid/widget/TextView;

    sget-object v12, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v13, "%.2f"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    move-object/from16 v0, p1

    iget v0, v0, Lackmaniac/vescmonitor/RealtimeData;->inpVoltage:F

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v12, v13, v14}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 960
    move-object/from16 v0, p0

    iget-object v11, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->singleCellVoltText:Landroid/widget/TextView;

    sget-object v12, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v13, "%.2f"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    move-object/from16 v0, p1

    iget v0, v0, Lackmaniac/vescmonitor/RealtimeData;->inpVoltage:F

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->noOfCells:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    div-float v16, v16, v17

    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v12, v13, v14}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 962
    move-object/from16 v0, p0

    iget v11, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->actualBatteryCutEnd:F

    const/4 v12, 0x0

    cmpl-float v11, v11, v12

    if-eqz v11, :cond_2c

    move-object/from16 v0, p1

    iget v11, v0, Lackmaniac/vescmonitor/RealtimeData;->inpVoltage:F

    move-object/from16 v0, p0

    iget v12, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->actualBatteryCutEnd:F

    cmpg-float v11, v11, v12

    if-gtz v11, :cond_2c

    .line 963
    move-object/from16 v0, p0

    iget v11, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->voltColour:I

    const/4 v12, 0x2

    if-eq v11, v12, :cond_11

    .line 964
    move-object/from16 v0, p0

    iget-object v11, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->voltLabel:Landroid/widget/TextView;

    invoke-virtual {v11}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v11

    const/high16 v12, -0x10000

    sget-object v13, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v11, v12, v13}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 965
    const/4 v11, 0x2

    move-object/from16 v0, p0

    iput v11, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->voltColour:I

    .line 977
    :cond_11
    :goto_b
    move-object/from16 v0, p0

    iget-object v11, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->tempText:Landroid/widget/TextView;

    sget-object v12, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v13, "%.1f"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    move-object/from16 v0, p1

    iget v0, v0, Lackmaniac/vescmonitor/RealtimeData;->tempPcb:F

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v12, v13, v14}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 979
    move-object/from16 v0, p0

    iget v11, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->actualTempFetEnd:F

    const/4 v12, 0x0

    cmpl-float v11, v11, v12

    if-eqz v11, :cond_12

    move-object/from16 v0, p1

    iget v11, v0, Lackmaniac/vescmonitor/RealtimeData;->tempPcb:F

    move-object/from16 v0, p0

    iget v12, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->actualTempFetEnd:F

    cmpl-float v11, v11, v12

    if-gez v11, :cond_13

    :cond_12
    move-object/from16 v0, p0

    iget v11, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->actualTempMotorEnd:F

    const/4 v12, 0x0

    cmpl-float v11, v11, v12

    if-eqz v11, :cond_2e

    move-object/from16 v0, p1

    iget v11, v0, Lackmaniac/vescmonitor/RealtimeData;->tempMotor:F

    move-object/from16 v0, p0

    iget v12, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->actualTempMotorEnd:F

    cmpl-float v11, v11, v12

    if-ltz v11, :cond_2e

    .line 981
    :cond_13
    move-object/from16 v0, p0

    iget v11, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->tempColour:I

    const/4 v12, 0x2

    if-eq v11, v12, :cond_14

    .line 982
    move-object/from16 v0, p0

    iget-object v11, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->tempPCBTitle:Landroid/widget/TextView;

    invoke-virtual {v11}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v11

    const/high16 v12, -0x10000

    sget-object v13, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v11, v12, v13}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 983
    const/4 v11, 0x2

    move-object/from16 v0, p0

    iput v11, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->tempColour:I

    .line 997
    :cond_14
    :goto_c
    return-void

    .line 817
    .end local v2    # "avg_amp_hours":F
    .end local v3    # "avg_watt_hours":F
    .end local v6    # "fInpVoltage":F
    .end local v7    # "progress":I
    .end local v8    # "range":F
    .end local v9    # "speed":F
    :cond_15
    move-object/from16 v0, p0

    iget v11, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->distanceCount:I

    const/4 v12, 0x3

    if-ne v11, v12, :cond_17

    .line 818
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput v11, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->distanceCount:I

    .line 819
    move-object/from16 v0, p0

    iget v11, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->lastDistance:F

    sub-float v4, v5, v11

    .line 820
    .local v4, "difference":F
    float-to-double v12, v4

    const-wide/16 v14, 0x0

    cmpl-double v11, v12, v14

    if-eqz v11, :cond_16

    .line 821
    move-object/from16 v0, p1

    iget v11, v0, Lackmaniac/vescmonitor/RealtimeData;->wattHours:F

    move-object/from16 v0, p1

    iget v12, v0, Lackmaniac/vescmonitor/RealtimeData;->wattHoursCharged:F

    sub-float/2addr v11, v12

    move-object/from16 v0, p0

    iget v12, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->lastConsumedWh:F

    sub-float/2addr v11, v12

    div-float/2addr v11, v4

    move-object/from16 v0, p0

    iput v11, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->avgWhAtTheMoment:F

    .line 822
    move-object/from16 v0, p1

    iget v11, v0, Lackmaniac/vescmonitor/RealtimeData;->ampHours:F

    move-object/from16 v0, p1

    iget v12, v0, Lackmaniac/vescmonitor/RealtimeData;->ampHoursCharged:F

    sub-float/2addr v11, v12

    move-object/from16 v0, p0

    iget v12, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->lastConsumedAh:F

    sub-float/2addr v11, v12

    div-float/2addr v11, v4

    move-object/from16 v0, p0

    iput v11, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->avgAhAtTheMoment:F

    .line 823
    move-object/from16 v0, p0

    iput v5, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->lastDistance:F

    .line 824
    move-object/from16 v0, p1

    iget v11, v0, Lackmaniac/vescmonitor/RealtimeData;->wattHours:F

    move-object/from16 v0, p1

    iget v12, v0, Lackmaniac/vescmonitor/RealtimeData;->wattHoursCharged:F

    sub-float/2addr v11, v12

    move-object/from16 v0, p0

    iput v11, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->lastConsumedWh:F

    .line 825
    move-object/from16 v0, p1

    iget v11, v0, Lackmaniac/vescmonitor/RealtimeData;->ampHours:F

    move-object/from16 v0, p1

    iget v12, v0, Lackmaniac/vescmonitor/RealtimeData;->ampHoursCharged:F

    sub-float/2addr v11, v12

    move-object/from16 v0, p0

    iput v11, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->lastConsumedAh:F

    .line 830
    :goto_d
    move-object/from16 v0, p0

    iget-object v11, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->avgWhAtTheMomentText:Landroid/widget/TextView;

    sget-object v12, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v13, "%.3f"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->avgWhAtTheMoment:F

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->noOfMotors:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    mul-float v16, v16, v17

    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v12, v13, v14}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 831
    move-object/from16 v0, p0

    iget-object v11, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->avgAhAtTheMomentText:Landroid/widget/TextView;

    sget-object v12, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v13, "%.3f"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->avgAhAtTheMoment:F

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->noOfMotors:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    mul-float v16, v16, v17

    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v12, v13, v14}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 827
    :cond_16
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput v11, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->avgWhAtTheMoment:F

    .line 828
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput v11, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->avgAhAtTheMoment:F

    goto :goto_d

    .line 833
    .end local v4    # "difference":F
    :cond_17
    move-object/from16 v0, p0

    iget v11, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->distanceCount:I

    add-int/lit8 v11, v11, 0x1

    move-object/from16 v0, p0

    iput v11, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->distanceCount:I

    goto/16 :goto_0

    .line 836
    :cond_18
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 840
    .restart local v3    # "avg_watt_hours":F
    :cond_19
    const/4 v2, 0x0

    goto/16 :goto_2

    .line 852
    .restart local v2    # "avg_amp_hours":F
    .restart local v6    # "fInpVoltage":F
    :cond_1a
    move-object/from16 v0, p0

    iget v11, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->percent90:F

    cmpl-float v11, v6, v11

    if-ltz v11, :cond_1b

    .line 853
    move-object/from16 v0, p0

    iget v11, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->percent90:F

    sub-float v11, v6, v11

    move-object/from16 v0, p0

    iget v12, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->percent100:F

    move-object/from16 v0, p0

    iget v13, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->percent90:F

    sub-float/2addr v12, v13

    const/high16 v13, 0x41200000    # 10.0f

    div-float/2addr v12, v13

    div-float/2addr v11, v12

    float-to-int v11, v11

    add-int/lit8 v11, v11, 0x5a

    move-object/from16 v0, p0

    iput v11, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->batteryPercent:I

    goto/16 :goto_3

    .line 854
    :cond_1b
    move-object/from16 v0, p0

    iget v11, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->percent80:F

    cmpl-float v11, v6, v11

    if-ltz v11, :cond_1c

    .line 855
    move-object/from16 v0, p0

    iget v11, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->percent80:F

    sub-float v11, v6, v11

    move-object/from16 v0, p0

    iget v12, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->percent90:F

    move-object/from16 v0, p0

    iget v13, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->percent80:F

    sub-float/2addr v12, v13

    const/high16 v13, 0x41200000    # 10.0f

    div-float/2addr v12, v13

    div-float/2addr v11, v12

    float-to-int v11, v11

    add-int/lit8 v11, v11, 0x50

    move-object/from16 v0, p0

    iput v11, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->batteryPercent:I

    goto/16 :goto_3

    .line 856
    :cond_1c
    move-object/from16 v0, p0

    iget v11, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->percent70:F

    cmpl-float v11, v6, v11

    if-ltz v11, :cond_1d

    .line 857
    move-object/from16 v0, p0

    iget v11, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->percent70:F

    sub-float v11, v6, v11

    move-object/from16 v0, p0

    iget v12, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->percent80:F

    move-object/from16 v0, p0

    iget v13, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->percent70:F

    sub-float/2addr v12, v13

    const/high16 v13, 0x41200000    # 10.0f

    div-float/2addr v12, v13

    div-float/2addr v11, v12

    float-to-int v11, v11

    add-int/lit8 v11, v11, 0x46

    move-object/from16 v0, p0

    iput v11, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->batteryPercent:I

    goto/16 :goto_3

    .line 858
    :cond_1d
    move-object/from16 v0, p0

    iget v11, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->percent60:F

    cmpl-float v11, v6, v11

    if-ltz v11, :cond_1e

    .line 859
    move-object/from16 v0, p0

    iget v11, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->percent60:F

    sub-float v11, v6, v11

    move-object/from16 v0, p0

    iget v12, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->percent70:F

    move-object/from16 v0, p0

    iget v13, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->percent60:F

    sub-float/2addr v12, v13

    const/high16 v13, 0x41200000    # 10.0f

    div-float/2addr v12, v13

    div-float/2addr v11, v12

    float-to-int v11, v11

    add-int/lit8 v11, v11, 0x3c

    move-object/from16 v0, p0

    iput v11, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->batteryPercent:I

    goto/16 :goto_3

    .line 860
    :cond_1e
    move-object/from16 v0, p0

    iget v11, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->percent50:F

    cmpl-float v11, v6, v11

    if-ltz v11, :cond_1f

    .line 861
    move-object/from16 v0, p0

    iget v11, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->percent50:F

    sub-float v11, v6, v11

    move-object/from16 v0, p0

    iget v12, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->percent60:F

    move-object/from16 v0, p0

    iget v13, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->percent50:F

    sub-float/2addr v12, v13

    const/high16 v13, 0x41200000    # 10.0f

    div-float/2addr v12, v13

    div-float/2addr v11, v12

    float-to-int v11, v11

    add-int/lit8 v11, v11, 0x32

    move-object/from16 v0, p0

    iput v11, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->batteryPercent:I

    goto/16 :goto_3

    .line 862
    :cond_1f
    move-object/from16 v0, p0

    iget v11, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->percent40:F

    cmpl-float v11, v6, v11

    if-ltz v11, :cond_20

    .line 863
    move-object/from16 v0, p0

    iget v11, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->percent40:F

    sub-float v11, v6, v11

    move-object/from16 v0, p0

    iget v12, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->percent50:F

    move-object/from16 v0, p0

    iget v13, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->percent40:F

    sub-float/2addr v12, v13

    const/high16 v13, 0x41200000    # 10.0f

    div-float/2addr v12, v13

    div-float/2addr v11, v12

    float-to-int v11, v11

    add-int/lit8 v11, v11, 0x28

    move-object/from16 v0, p0

    iput v11, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->batteryPercent:I

    goto/16 :goto_3

    .line 864
    :cond_20
    move-object/from16 v0, p0

    iget v11, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->percent30:F

    cmpl-float v11, v6, v11

    if-ltz v11, :cond_21

    .line 865
    move-object/from16 v0, p0

    iget v11, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->percent30:F

    sub-float v11, v6, v11

    move-object/from16 v0, p0

    iget v12, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->percent40:F

    move-object/from16 v0, p0

    iget v13, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->percent30:F

    sub-float/2addr v12, v13

    const/high16 v13, 0x41200000    # 10.0f

    div-float/2addr v12, v13

    div-float/2addr v11, v12

    float-to-int v11, v11

    add-int/lit8 v11, v11, 0x1e

    move-object/from16 v0, p0

    iput v11, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->batteryPercent:I

    goto/16 :goto_3

    .line 866
    :cond_21
    move-object/from16 v0, p0

    iget v11, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->percent20:F

    cmpl-float v11, v6, v11

    if-ltz v11, :cond_22

    .line 867
    move-object/from16 v0, p0

    iget v11, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->percent20:F

    sub-float v11, v6, v11

    move-object/from16 v0, p0

    iget v12, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->percent30:F

    move-object/from16 v0, p0

    iget v13, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->percent20:F

    sub-float/2addr v12, v13

    const/high16 v13, 0x41200000    # 10.0f

    div-float/2addr v12, v13

    div-float/2addr v11, v12

    float-to-int v11, v11

    add-int/lit8 v11, v11, 0x14

    move-object/from16 v0, p0

    iput v11, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->batteryPercent:I

    goto/16 :goto_3

    .line 868
    :cond_22
    move-object/from16 v0, p0

    iget v11, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->percent10:F

    cmpl-float v11, v6, v11

    if-ltz v11, :cond_23

    .line 869
    move-object/from16 v0, p0

    iget v11, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->percent10:F

    sub-float v11, v6, v11

    move-object/from16 v0, p0

    iget v12, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->percent20:F

    move-object/from16 v0, p0

    iget v13, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->percent10:F

    sub-float/2addr v12, v13

    const/high16 v13, 0x41200000    # 10.0f

    div-float/2addr v12, v13

    div-float/2addr v11, v12

    float-to-int v11, v11

    add-int/lit8 v11, v11, 0xa

    move-object/from16 v0, p0

    iput v11, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->batteryPercent:I

    goto/16 :goto_3

    .line 870
    :cond_23
    move-object/from16 v0, p0

    iget v11, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->percent0:F

    cmpl-float v11, v6, v11

    if-ltz v11, :cond_24

    .line 871
    move-object/from16 v0, p0

    iget v11, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->percent0:F

    sub-float v11, v6, v11

    move-object/from16 v0, p0

    iget v12, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->percent10:F

    move-object/from16 v0, p0

    iget v13, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->percent0:F

    sub-float/2addr v12, v13

    const/high16 v13, 0x41200000    # 10.0f

    div-float/2addr v12, v13

    div-float/2addr v11, v12

    float-to-int v11, v11

    move-object/from16 v0, p0

    iput v11, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->batteryPercent:I

    goto/16 :goto_3

    .line 873
    :cond_24
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput v11, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->batteryPercent:I

    goto/16 :goto_3

    .line 875
    :cond_25
    move-object/from16 v0, p0

    iget v11, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->batteryPercent:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    goto/16 :goto_4

    .line 879
    :pswitch_0
    move-object/from16 v0, p0

    iget v11, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->batteryPercent:I

    const/16 v12, 0x33

    if-ge v11, v12, :cond_e

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lackmaniac/vescmonitor/DeviceControlActivity;->checkAlarm(F)V

    goto/16 :goto_5

    .line 880
    :pswitch_1
    move-object/from16 v0, p0

    iget v11, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->batteryPercent:I

    const/16 v12, 0x29

    if-ge v11, v12, :cond_e

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lackmaniac/vescmonitor/DeviceControlActivity;->checkAlarm(F)V

    goto/16 :goto_5

    .line 881
    :pswitch_2
    move-object/from16 v0, p0

    iget v11, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->batteryPercent:I

    const/16 v12, 0x1f

    if-ge v11, v12, :cond_e

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lackmaniac/vescmonitor/DeviceControlActivity;->checkAlarm(F)V

    goto/16 :goto_5

    .line 882
    :pswitch_3
    move-object/from16 v0, p0

    iget v11, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->batteryPercent:I

    const/16 v12, 0x15

    if-ge v11, v12, :cond_e

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lackmaniac/vescmonitor/DeviceControlActivity;->checkAlarm(F)V

    goto/16 :goto_5

    .line 883
    :pswitch_4
    move-object/from16 v0, p0

    iget v11, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->batteryPercent:I

    const/16 v12, 0xb

    if-ge v11, v12, :cond_e

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lackmaniac/vescmonitor/DeviceControlActivity;->checkAlarm(F)V

    goto/16 :goto_5

    .line 884
    :pswitch_5
    move-object/from16 v0, p0

    iget v11, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->batteryPercent:I

    const/4 v12, 0x1

    if-ge v11, v12, :cond_e

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lackmaniac/vescmonitor/DeviceControlActivity;->checkAlarm(F)V

    goto/16 :goto_5

    .line 889
    :cond_26
    const/4 v11, 0x5

    move-object/from16 v0, p0

    iput v11, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->countBattery:I

    .line 890
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput v11, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->alarmCounter:I

    goto/16 :goto_5

    .line 893
    :cond_27
    const/4 v8, 0x0

    goto/16 :goto_6

    .line 908
    .restart local v8    # "range":F
    .restart local v9    # "speed":F
    :cond_28
    move-object/from16 v0, p0

    iget-object v11, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->progressDutyPositive:Landroid/widget/ProgressBar;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 909
    move-object/from16 v0, p0

    iget-object v11, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->progressDutyNegative:Landroid/widget/ProgressBar;

    move-object/from16 v0, p1

    iget v12, v0, Lackmaniac/vescmonitor/RealtimeData;->dutyCycleNow:F

    neg-float v12, v12

    float-to-int v12, v12

    invoke-virtual {v11, v12}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto/16 :goto_7

    .line 919
    :cond_29
    move-object/from16 v0, p0

    iget v11, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->actualMinMotorCurrent:F

    const/4 v12, 0x0

    cmpl-float v11, v11, v12

    if-eqz v11, :cond_f

    .line 920
    move-object/from16 v0, p0

    iget-object v11, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->progressMotorPositive:Landroid/widget/ProgressBar;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 921
    move-object/from16 v0, p0

    iget-object v11, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->progressMotorNegative:Landroid/widget/ProgressBar;

    const/high16 v12, 0x43fa0000    # 500.0f

    move-object/from16 v0, p0

    iget v13, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->actualMinMotorCurrent:F

    move-object/from16 v0, p0

    iget v14, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->noOfMotors:I

    int-to-float v14, v14

    mul-float/2addr v13, v14

    div-float/2addr v12, v13

    move-object/from16 v0, p1

    iget v13, v0, Lackmaniac/vescmonitor/RealtimeData;->avgMotorCurrent:F

    mul-float/2addr v12, v13

    move-object/from16 v0, p0

    iget v13, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->noOfMotors:I

    int-to-float v13, v13

    mul-float/2addr v12, v13

    float-to-int v12, v12

    invoke-virtual {v11, v12}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto/16 :goto_8

    .line 932
    :cond_2a
    const/high16 v11, 0x43fa0000    # 500.0f

    move-object/from16 v0, p0

    iget v12, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->actualMaxBatteryCurrent:F

    move-object/from16 v0, p0

    iget v13, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->noOfMotors:I

    int-to-float v13, v13

    mul-float/2addr v12, v13

    div-float/2addr v11, v12

    move-object/from16 v0, p1

    iget v12, v0, Lackmaniac/vescmonitor/RealtimeData;->avgInputCurrent:F

    mul-float/2addr v11, v12

    move-object/from16 v0, p0

    iget v12, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->noOfMotors:I

    int-to-float v12, v12

    mul-float/2addr v11, v12

    float-to-int v7, v11

    .restart local v7    # "progress":I
    goto/16 :goto_9

    .line 942
    .end local v7    # "progress":I
    :cond_2b
    const/high16 v11, 0x43fa0000    # 500.0f

    move-object/from16 v0, p0

    iget v12, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->actualMinBatteryCurrent:F

    move-object/from16 v0, p0

    iget v13, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->noOfMotors:I

    int-to-float v13, v13

    mul-float/2addr v12, v13

    div-float/2addr v11, v12

    move-object/from16 v0, p1

    iget v12, v0, Lackmaniac/vescmonitor/RealtimeData;->avgInputCurrent:F

    mul-float/2addr v11, v12

    move-object/from16 v0, p0

    iget v12, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->noOfMotors:I

    int-to-float v12, v12

    mul-float/2addr v11, v12

    float-to-int v7, v11

    .line 943
    .restart local v7    # "progress":I
    move-object/from16 v0, p0

    iget v11, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->actualMinBatteryCurrent:F

    const/4 v12, 0x0

    cmpl-float v11, v11, v12

    if-eqz v11, :cond_10

    .line 944
    move-object/from16 v0, p0

    iget-object v11, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->progressBatteryPositive:Landroid/widget/ProgressBar;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 945
    move-object/from16 v0, p0

    iget-object v11, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->progressBatteryNegative:Landroid/widget/ProgressBar;

    invoke-virtual {v11, v7}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 946
    move-object/from16 v0, p0

    iget-object v11, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->progressPowerPositive:Landroid/widget/ProgressBar;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 947
    move-object/from16 v0, p0

    iget-object v11, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->progressPowerNegative:Landroid/widget/ProgressBar;

    invoke-virtual {v11, v7}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto/16 :goto_a

    .line 967
    :cond_2c
    move-object/from16 v0, p0

    iget v11, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->actualBatteryCutStart:F

    const/4 v12, 0x0

    cmpl-float v11, v11, v12

    if-eqz v11, :cond_2d

    move-object/from16 v0, p1

    iget v11, v0, Lackmaniac/vescmonitor/RealtimeData;->inpVoltage:F

    move-object/from16 v0, p0

    iget v12, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->actualBatteryCutStart:F

    cmpg-float v11, v11, v12

    if-gtz v11, :cond_2d

    .line 968
    move-object/from16 v0, p0

    iget v11, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->voltColour:I

    const/4 v12, 0x1

    if-eq v11, v12, :cond_11

    .line 969
    move-object/from16 v0, p0

    iget-object v11, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->voltLabel:Landroid/widget/TextView;

    invoke-virtual {v11}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v11

    const/16 v12, -0x6700

    sget-object v13, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v11, v12, v13}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 970
    const/4 v11, 0x1

    move-object/from16 v0, p0

    iput v11, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->voltColour:I

    goto/16 :goto_b

    .line 972
    :cond_2d
    move-object/from16 v0, p0

    iget v11, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->voltColour:I

    if-eqz v11, :cond_11

    .line 973
    move-object/from16 v0, p0

    iget-object v11, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->voltLabel:Landroid/widget/TextView;

    invoke-virtual {v11}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 974
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput v11, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->voltColour:I

    goto/16 :goto_b

    .line 985
    :cond_2e
    move-object/from16 v0, p0

    iget v11, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->actualTempFetStart:F

    const/4 v12, 0x0

    cmpl-float v11, v11, v12

    if-eqz v11, :cond_2f

    move-object/from16 v0, p1

    iget v11, v0, Lackmaniac/vescmonitor/RealtimeData;->tempPcb:F

    move-object/from16 v0, p0

    iget v12, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->actualTempFetStart:F

    cmpl-float v11, v11, v12

    if-gez v11, :cond_30

    :cond_2f
    move-object/from16 v0, p0

    iget v11, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->actualTempMotorStart:F

    const/4 v12, 0x0

    cmpl-float v11, v11, v12

    if-eqz v11, :cond_31

    move-object/from16 v0, p1

    iget v11, v0, Lackmaniac/vescmonitor/RealtimeData;->tempMotor:F

    move-object/from16 v0, p0

    iget v12, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->actualTempMotorStart:F

    cmpl-float v11, v11, v12

    if-ltz v11, :cond_31

    .line 987
    :cond_30
    move-object/from16 v0, p0

    iget v11, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->tempColour:I

    const/4 v12, 0x1

    if-eq v11, v12, :cond_14

    .line 988
    move-object/from16 v0, p0

    iget-object v11, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->tempPCBTitle:Landroid/widget/TextView;

    invoke-virtual {v11}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v11

    const/16 v12, -0x6700

    sget-object v13, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v11, v12, v13}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 989
    const/4 v11, 0x1

    move-object/from16 v0, p0

    iput v11, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->tempColour:I

    goto/16 :goto_c

    .line 991
    :cond_31
    move-object/from16 v0, p0

    iget v11, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->tempColour:I

    if-eqz v11, :cond_14

    .line 992
    move-object/from16 v0, p0

    iget-object v11, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->tempPCBTitle:Landroid/widget/TextView;

    invoke-virtual {v11}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 993
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput v11, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->tempColour:I

    goto/16 :goto_c

    .line 878
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private processMessage([B)V
    .locals 34
    .param p1, "data"    # [B

    .prologue
    .line 1186
    if-eqz p1, :cond_2e

    .line 1187
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lackmaniac/vescmonitor/DeviceControlActivity;->connectCount:I

    .line 1189
    const/16 v22, 0x0

    aget-byte v22, p1, v22

    invoke-static/range {v22 .. v22}, Lackmaniac/vescmonitor/Utils;->unsignedByteToInt(B)I

    move-result v22

    sget-object v23, Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;->COMM_GET_VALUES:Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;

    invoke-static/range {v23 .. v23}, Lackmaniac/vescmonitor/Utils;->getCommId(Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;)I

    move-result v23

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_32

    .line 1190
    invoke-static {}, Lackmaniac/vescmonitor/Utils;->getFirmwareVersion()Ljava/lang/String;

    move-result-object v22

    const-string v23, ""

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_3

    move-object/from16 v0, p0

    iget-wide v0, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->lastTimeAsked:J

    move-wide/from16 v22, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v24

    cmp-long v22, v22, v24

    if-gez v22, :cond_3

    .line 1191
    invoke-direct/range {p0 .. p0}, Lackmaniac/vescmonitor/DeviceControlActivity;->getFirmwareVersion()V

    .line 1192
    const-string v22, "COMM THREAD"

    const-string v23, "getFirmwareVersion 2"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1193
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    const-wide/16 v24, 0x3e8

    add-long v22, v22, v24

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Lackmaniac/vescmonitor/DeviceControlActivity;->lastTimeAsked:J

    .line 1200
    :cond_0
    :goto_0
    invoke-direct/range {p0 .. p0}, Lackmaniac/vescmonitor/DeviceControlActivity;->sendSerial()V

    .line 1202
    new-instance v19, Lackmaniac/vescmonitor/RealtimeData;

    invoke-direct/range {v19 .. v19}, Lackmaniac/vescmonitor/RealtimeData;-><init>()V

    .line 1204
    .local v19, "realtimeData":Lackmaniac/vescmonitor/RealtimeData;
    invoke-static {}, Lackmaniac/vescmonitor/Utils;->getFirmwareVersion()Ljava/lang/String;

    move-result-object v22

    const-string v23, "3"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_4

    .line 1205
    const/high16 v22, 0x41200000    # 10.0f

    const/16 v23, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-static {v0, v1, v2}, Lackmaniac/vescmonitor/Utils;->buffer_get_float16([BFI)F

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, v19

    iput v0, v1, Lackmaniac/vescmonitor/RealtimeData;->tempPcb:F

    .line 1206
    const/high16 v22, 0x41200000    # 10.0f

    const/16 v23, 0x3

    move-object/from16 v0, p1

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-static {v0, v1, v2}, Lackmaniac/vescmonitor/Utils;->buffer_get_float16([BFI)F

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, v19

    iput v0, v1, Lackmaniac/vescmonitor/RealtimeData;->tempMotor:F

    .line 1207
    const/high16 v22, 0x42c80000    # 100.0f

    const/16 v23, 0x5

    move-object/from16 v0, p1

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-static {v0, v1, v2}, Lackmaniac/vescmonitor/Utils;->buffer_get_float32([BFI)F

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, v19

    iput v0, v1, Lackmaniac/vescmonitor/RealtimeData;->avgMotorCurrent:F

    .line 1208
    const/high16 v22, 0x42c80000    # 100.0f

    const/16 v23, 0x9

    move-object/from16 v0, p1

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-static {v0, v1, v2}, Lackmaniac/vescmonitor/Utils;->buffer_get_float32([BFI)F

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, v19

    iput v0, v1, Lackmaniac/vescmonitor/RealtimeData;->avgInputCurrent:F

    .line 1209
    const/high16 v22, 0x42c80000    # 100.0f

    const/16 v23, 0xd

    move-object/from16 v0, p1

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-static {v0, v1, v2}, Lackmaniac/vescmonitor/Utils;->buffer_get_float32([BFI)F

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, v19

    iput v0, v1, Lackmaniac/vescmonitor/RealtimeData;->avgId:F

    .line 1210
    const/high16 v22, 0x42c80000    # 100.0f

    const/16 v23, 0x11

    move-object/from16 v0, p1

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-static {v0, v1, v2}, Lackmaniac/vescmonitor/Utils;->buffer_get_float32([BFI)F

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, v19

    iput v0, v1, Lackmaniac/vescmonitor/RealtimeData;->avgIq:F

    .line 1211
    const/high16 v22, 0x41200000    # 10.0f

    const/16 v23, 0x15

    move-object/from16 v0, p1

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-static {v0, v1, v2}, Lackmaniac/vescmonitor/Utils;->buffer_get_float16([BFI)F

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, v19

    iput v0, v1, Lackmaniac/vescmonitor/RealtimeData;->dutyCycleNow:F

    .line 1212
    const/16 v22, 0x17

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-static {v0, v1}, Lackmaniac/vescmonitor/Utils;->buffer_get_int32([BI)I

    move-result v22

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, v19

    iput v0, v1, Lackmaniac/vescmonitor/RealtimeData;->rpm:F

    .line 1213
    const/high16 v22, 0x41200000    # 10.0f

    const/16 v23, 0x1b

    move-object/from16 v0, p1

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-static {v0, v1, v2}, Lackmaniac/vescmonitor/Utils;->buffer_get_float16([BFI)F

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, v19

    iput v0, v1, Lackmaniac/vescmonitor/RealtimeData;->inpVoltage:F

    .line 1214
    const v22, 0x461c4000    # 10000.0f

    const/16 v23, 0x1d

    move-object/from16 v0, p1

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-static {v0, v1, v2}, Lackmaniac/vescmonitor/Utils;->buffer_get_float32([BFI)F

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, v19

    iput v0, v1, Lackmaniac/vescmonitor/RealtimeData;->ampHours:F

    .line 1215
    const v22, 0x461c4000    # 10000.0f

    const/16 v23, 0x21

    move-object/from16 v0, p1

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-static {v0, v1, v2}, Lackmaniac/vescmonitor/Utils;->buffer_get_float32([BFI)F

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, v19

    iput v0, v1, Lackmaniac/vescmonitor/RealtimeData;->ampHoursCharged:F

    .line 1216
    const v22, 0x461c4000    # 10000.0f

    const/16 v23, 0x25

    move-object/from16 v0, p1

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-static {v0, v1, v2}, Lackmaniac/vescmonitor/Utils;->buffer_get_float32([BFI)F

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, v19

    iput v0, v1, Lackmaniac/vescmonitor/RealtimeData;->wattHours:F

    .line 1217
    const v22, 0x461c4000    # 10000.0f

    const/16 v23, 0x29

    move-object/from16 v0, p1

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-static {v0, v1, v2}, Lackmaniac/vescmonitor/Utils;->buffer_get_float32([BFI)F

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, v19

    iput v0, v1, Lackmaniac/vescmonitor/RealtimeData;->wattHoursCharged:F

    .line 1218
    const/16 v22, 0x2d

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-static {v0, v1}, Lackmaniac/vescmonitor/Utils;->buffer_get_int32([BI)I

    move-result v22

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, v19

    iput v0, v1, Lackmaniac/vescmonitor/RealtimeData;->tachometer:F

    .line 1219
    const/16 v22, 0x31

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-static {v0, v1}, Lackmaniac/vescmonitor/Utils;->buffer_get_int32([BI)I

    move-result v22

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, v19

    iput v0, v1, Lackmaniac/vescmonitor/RealtimeData;->tachometerAbs:F

    .line 1220
    const/16 v22, 0x35

    aget-byte v22, p1, v22

    invoke-static/range {v22 .. v22}, Lackmaniac/vescmonitor/Utils;->unsignedByteToInt(B)I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, v19

    iput v0, v1, Lackmaniac/vescmonitor/RealtimeData;->fault:I

    .line 1221
    move-object/from16 v0, v19

    iget v0, v0, Lackmaniac/vescmonitor/RealtimeData;->avgInputCurrent:F

    move/from16 v22, v0

    move-object/from16 v0, v19

    iget v0, v0, Lackmaniac/vescmonitor/RealtimeData;->inpVoltage:F

    move/from16 v23, v0

    mul-float v22, v22, v23

    move/from16 v0, v22

    move-object/from16 v1, v19

    iput v0, v1, Lackmaniac/vescmonitor/RealtimeData;->power:F

    .line 1243
    :goto_1
    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lackmaniac/vescmonitor/DeviceControlActivity;->actualRealtimeData:Lackmaniac/vescmonitor/RealtimeData;

    .line 1244
    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->actualRealtimeData:Lackmaniac/vescmonitor/RealtimeData;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lackmaniac/vescmonitor/DeviceControlActivity;->populateValues(Lackmaniac/vescmonitor/RealtimeData;Z)V

    .line 1246
    new-instance v22, Ljava/util/Date;

    invoke-direct/range {v22 .. v22}, Ljava/util/Date;-><init>()V

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    iput-object v0, v1, Lackmaniac/vescmonitor/RealtimeData;->time:Ljava/util/Date;

    .line 1247
    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->location:Landroid/location/Location;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    iput-object v0, v1, Lackmaniac/vescmonitor/RealtimeData;->location:Landroid/location/Location;

    .line 1250
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->getAccelerationData:Z

    move/from16 v22, v0

    if-eqz v22, :cond_12

    .line 1252
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->resetScreen:Z

    move/from16 v22, v0

    if-eqz v22, :cond_1

    .line 1253
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lackmaniac/vescmonitor/DeviceControlActivity;->accelerationMeasurementStarted:Z

    .line 1254
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lackmaniac/vescmonitor/DeviceControlActivity;->resetScreen:Z

    .line 1257
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->accelerationMeasurementStarted:Z

    move/from16 v22, v0

    if-eqz v22, :cond_2

    move-object/from16 v0, p0

    iget-wide v0, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->maxAccelerationSpeed:J

    move-wide/from16 v22, v0

    const-wide/16 v24, 0x0

    cmp-long v22, v22, v24

    if-nez v22, :cond_7

    .line 1258
    :cond_2
    move-object/from16 v0, v19

    iget v0, v0, Lackmaniac/vescmonitor/RealtimeData;->rpm:F

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Math;->abs(F)F

    move-result v22

    const/high16 v23, 0x42c80000    # 100.0f

    cmpg-float v22, v22, v23

    if-gez v22, :cond_9

    .line 1259
    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->accelerationText:[Ljava/lang/String;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const-string v24, "Ready to go"

    aput-object v24, v22, v23

    .line 1260
    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->accelerationText:[Ljava/lang/String;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    const-string v24, ""

    aput-object v24, v22, v23

    .line 1261
    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->accelerationText:[Ljava/lang/String;

    move-object/from16 v22, v0

    const/16 v23, 0x2

    const-string v24, ""

    aput-object v24, v22, v23

    .line 1262
    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->accelerationText:[Ljava/lang/String;

    move-object/from16 v22, v0

    const/16 v23, 0x3

    const-string v24, ""

    aput-object v24, v22, v23

    .line 1263
    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->accelerationText:[Ljava/lang/String;

    move-object/from16 v22, v0

    const/16 v23, 0x4

    const-string v24, ""

    aput-object v24, v22, v23

    .line 1264
    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->accelerationText:[Ljava/lang/String;

    move-object/from16 v22, v0

    const/16 v23, 0x5

    const-string v24, ""

    aput-object v24, v22, v23

    .line 1265
    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->accelerationText:[Ljava/lang/String;

    move-object/from16 v22, v0

    const/16 v23, 0x6

    const-string v24, ""

    aput-object v24, v22, v23

    .line 1266
    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->accelerationText:[Ljava/lang/String;

    move-object/from16 v22, v0

    const/16 v23, 0x7

    const-string v24, ""

    aput-object v24, v22, v23

    .line 1268
    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->times:[J

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v24

    aput-wide v24, v22, v23

    .line 1269
    const/4 v14, 0x1

    .local v14, "i":I
    :goto_2
    const/16 v22, 0x8

    move/from16 v0, v22

    if-ge v14, v0, :cond_6

    .line 1270
    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->times:[J

    move-object/from16 v22, v0

    const-wide/16 v24, 0x0

    aput-wide v24, v22, v14

    .line 1269
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    .line 1195
    .end local v14    # "i":I
    .end local v19    # "realtimeData":Lackmaniac/vescmonitor/RealtimeData;
    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->actualPPMMode:I

    move/from16 v22, v0

    const/16 v23, -0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->lastTimeAsked:J

    move-wide/from16 v22, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v24

    cmp-long v22, v22, v24

    if-gez v22, :cond_0

    .line 1196
    invoke-direct/range {p0 .. p0}, Lackmaniac/vescmonitor/DeviceControlActivity;->getSpeedMode()V

    goto/16 :goto_0

    .line 1223
    .restart local v19    # "realtimeData":Lackmaniac/vescmonitor/RealtimeData;
    :cond_4
    const/high16 v22, 0x41200000    # 10.0f

    const/16 v23, 0xd

    move-object/from16 v0, p1

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-static {v0, v1, v2}, Lackmaniac/vescmonitor/Utils;->buffer_get_float16([BFI)F

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, v19

    iput v0, v1, Lackmaniac/vescmonitor/RealtimeData;->tempPcb:F

    .line 1224
    const/high16 v22, 0x42c80000    # 100.0f

    const/16 v23, 0xf

    move-object/from16 v0, p1

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-static {v0, v1, v2}, Lackmaniac/vescmonitor/Utils;->buffer_get_float32([BFI)F

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, v19

    iput v0, v1, Lackmaniac/vescmonitor/RealtimeData;->avgMotorCurrent:F

    .line 1225
    const/high16 v22, 0x42c80000    # 100.0f

    const/16 v23, 0x13

    move-object/from16 v0, p1

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-static {v0, v1, v2}, Lackmaniac/vescmonitor/Utils;->buffer_get_float32([BFI)F

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, v19

    iput v0, v1, Lackmaniac/vescmonitor/RealtimeData;->avgInputCurrent:F

    .line 1226
    const/high16 v22, 0x41200000    # 10.0f

    const/16 v23, 0x17

    move-object/from16 v0, p1

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-static {v0, v1, v2}, Lackmaniac/vescmonitor/Utils;->buffer_get_float16([BFI)F

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, v19

    iput v0, v1, Lackmaniac/vescmonitor/RealtimeData;->dutyCycleNow:F

    .line 1227
    const/16 v22, 0x19

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-static {v0, v1}, Lackmaniac/vescmonitor/Utils;->buffer_get_int32([BI)I

    move-result v22

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, v19

    iput v0, v1, Lackmaniac/vescmonitor/RealtimeData;->rpm:F

    .line 1228
    invoke-static {}, Lackmaniac/vescmonitor/Utils;->getFirmwareVersion()Ljava/lang/String;

    move-result-object v22

    const-string v23, "2.54"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_5

    .line 1229
    const/high16 v22, 0x42c80000    # 100.0f

    const/16 v23, 0x1d

    move-object/from16 v0, p1

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-static {v0, v1, v2}, Lackmaniac/vescmonitor/Utils;->buffer_get_float16([BFI)F

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, v19

    iput v0, v1, Lackmaniac/vescmonitor/RealtimeData;->inpVoltage:F

    .line 1233
    :goto_3
    const v22, 0x461c4000    # 10000.0f

    const/16 v23, 0x1f

    move-object/from16 v0, p1

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-static {v0, v1, v2}, Lackmaniac/vescmonitor/Utils;->buffer_get_float32([BFI)F

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, v19

    iput v0, v1, Lackmaniac/vescmonitor/RealtimeData;->ampHours:F

    .line 1234
    const v22, 0x461c4000    # 10000.0f

    const/16 v23, 0x23

    move-object/from16 v0, p1

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-static {v0, v1, v2}, Lackmaniac/vescmonitor/Utils;->buffer_get_float32([BFI)F

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, v19

    iput v0, v1, Lackmaniac/vescmonitor/RealtimeData;->ampHoursCharged:F

    .line 1235
    const v22, 0x461c4000    # 10000.0f

    const/16 v23, 0x27

    move-object/from16 v0, p1

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-static {v0, v1, v2}, Lackmaniac/vescmonitor/Utils;->buffer_get_float32([BFI)F

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, v19

    iput v0, v1, Lackmaniac/vescmonitor/RealtimeData;->wattHours:F

    .line 1236
    const v22, 0x461c4000    # 10000.0f

    const/16 v23, 0x2b

    move-object/from16 v0, p1

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-static {v0, v1, v2}, Lackmaniac/vescmonitor/Utils;->buffer_get_float32([BFI)F

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, v19

    iput v0, v1, Lackmaniac/vescmonitor/RealtimeData;->wattHoursCharged:F

    .line 1237
    const/16 v22, 0x2f

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-static {v0, v1}, Lackmaniac/vescmonitor/Utils;->buffer_get_int32([BI)I

    move-result v22

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, v19

    iput v0, v1, Lackmaniac/vescmonitor/RealtimeData;->tachometer:F

    .line 1238
    const/16 v22, 0x33

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-static {v0, v1}, Lackmaniac/vescmonitor/Utils;->buffer_get_int32([BI)I

    move-result v22

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, v19

    iput v0, v1, Lackmaniac/vescmonitor/RealtimeData;->tachometerAbs:F

    .line 1239
    const/16 v22, 0x37

    aget-byte v22, p1, v22

    invoke-static/range {v22 .. v22}, Lackmaniac/vescmonitor/Utils;->unsignedByteToInt(B)I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, v19

    iput v0, v1, Lackmaniac/vescmonitor/RealtimeData;->fault:I

    .line 1240
    move-object/from16 v0, v19

    iget v0, v0, Lackmaniac/vescmonitor/RealtimeData;->avgInputCurrent:F

    move/from16 v22, v0

    move-object/from16 v0, v19

    iget v0, v0, Lackmaniac/vescmonitor/RealtimeData;->inpVoltage:F

    move/from16 v23, v0

    mul-float v22, v22, v23

    move/from16 v0, v22

    move-object/from16 v1, v19

    iput v0, v1, Lackmaniac/vescmonitor/RealtimeData;->power:F

    goto/16 :goto_1

    .line 1231
    :cond_5
    const/high16 v22, 0x41200000    # 10.0f

    const/16 v23, 0x1d

    move-object/from16 v0, p1

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-static {v0, v1, v2}, Lackmaniac/vescmonitor/Utils;->buffer_get_float16([BFI)F

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, v19

    iput v0, v1, Lackmaniac/vescmonitor/RealtimeData;->inpVoltage:F

    goto/16 :goto_3

    .line 1272
    .restart local v14    # "i":I
    :cond_6
    const-wide/16 v22, 0x0

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Lackmaniac/vescmonitor/DeviceControlActivity;->maxAccelerationSpeed:J

    .line 1273
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lackmaniac/vescmonitor/DeviceControlActivity;->accelerationMeasurementStarted:Z

    .line 1286
    .end local v14    # "i":I
    :goto_4
    const-string v22, ""

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lackmaniac/vescmonitor/DeviceControlActivity;->errorTextString:Ljava/lang/String;

    .line 1287
    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->accelerationText:[Ljava/lang/String;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aget-object v22, v22, v23

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lackmaniac/vescmonitor/DeviceControlActivity;->writeErrorText(Ljava/lang/String;)V

    .line 1290
    :cond_7
    move-object/from16 v0, v19

    iget v0, v0, Lackmaniac/vescmonitor/RealtimeData;->rpm:F

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Math;->abs(F)F

    move-result v23

    invoke-static {}, Lackmaniac/vescmonitor/Utils;->getSpeedDevider()F

    move-result v24

    move-object/from16 v0, p0

    iget v0, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->distanceUnit:I

    move/from16 v22, v0

    const/16 v25, 0x1

    move/from16 v0, v22

    move/from16 v1, v25

    if-ne v0, v1, :cond_a

    const v22, 0x3fcdfefc

    :goto_5
    mul-float v22, v22, v24

    div-float v7, v23, v22

    .line 1292
    .local v7, "actualSpeed":F
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->accelerationMeasurementStarted:Z

    move/from16 v22, v0

    if-eqz v22, :cond_12

    .line 1294
    float-to-int v0, v7

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-long v0, v0

    move-wide/from16 v22, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->maxAccelerationSpeed:J

    move-wide/from16 v24, v0

    cmp-long v22, v22, v24

    if-lez v22, :cond_12

    .line 1295
    float-to-int v0, v7

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-long v0, v0

    move-wide/from16 v22, v0

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Lackmaniac/vescmonitor/DeviceControlActivity;->maxAccelerationSpeed:J

    .line 1299
    const/4 v14, 0x1

    .restart local v14    # "i":I
    :goto_6
    const/16 v22, 0x8

    move/from16 v0, v22

    if-ge v14, v0, :cond_11

    .line 1300
    move-object/from16 v0, p0

    iget v0, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->distanceUnit:I

    move/from16 v22, v0

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_b

    const/16 v22, 0x5

    :goto_7
    mul-int v22, v22, v14

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    cmpl-float v22, v7, v22

    if-ltz v22, :cond_11

    .line 1301
    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->times:[J

    move-object/from16 v22, v0

    aget-wide v22, v22, v14

    const-wide/16 v24, 0x0

    cmp-long v22, v22, v24

    if-nez v22, :cond_8

    .line 1302
    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->times:[J

    move-object/from16 v22, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v24

    aput-wide v24, v22, v14

    .line 1303
    const/16 v22, 0x1

    move/from16 v0, v22

    if-ne v14, v0, :cond_e

    .line 1305
    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->accelerationText:[Ljava/lang/String;

    move-object/from16 v23, v0

    add-int/lit8 v24, v14, -0x1

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "0-"

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget v0, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->distanceUnit:I

    move/from16 v22, v0

    const/16 v26, 0x1

    move/from16 v0, v22

    move/from16 v1, v26

    if-ne v0, v1, :cond_c

    const/16 v22, 0x5

    :goto_8
    mul-int v22, v22, v14

    move-object/from16 v0, v25

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {p0 .. p0}, Lackmaniac/vescmonitor/DeviceControlActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v26

    move-object/from16 v0, p0

    iget v0, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->distanceUnit:I

    move/from16 v22, v0

    const/16 v27, 0x1

    move/from16 v0, v22

    move/from16 v1, v27

    if-ne v0, v1, :cond_d

    const v22, 0x7f0d005d

    :goto_9
    move-object/from16 v0, v26

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v25

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    sget-object v25, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v26, "%13.1f"

    const/16 v27, 0x1

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->times:[J

    move-object/from16 v29, v0

    aget-wide v30, v29, v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->times:[J

    move-object/from16 v29, v0

    const/16 v32, 0x0

    aget-wide v32, v29, v32

    sub-long v30, v30, v32

    move-wide/from16 v0, v30

    long-to-float v0, v0

    move/from16 v29, v0

    move/from16 v0, v29

    float-to-double v0, v0

    move-wide/from16 v30, v0

    const-wide v32, 0x408f400000000000L    # 1000.0

    div-double v30, v30, v32

    invoke-static/range {v30 .. v31}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v29

    aput-object v29, v27, v28

    invoke-static/range {v25 .. v27}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v25, "s"

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    aput-object v22, v23, v24

    .line 1299
    :cond_8
    :goto_a
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_6

    .line 1275
    .end local v7    # "actualSpeed":F
    .end local v14    # "i":I
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->accelerationText:[Ljava/lang/String;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const-string v24, "Please stop first"

    aput-object v24, v22, v23

    .line 1276
    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->accelerationText:[Ljava/lang/String;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    const-string v24, ""

    aput-object v24, v22, v23

    .line 1277
    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->accelerationText:[Ljava/lang/String;

    move-object/from16 v22, v0

    const/16 v23, 0x2

    const-string v24, ""

    aput-object v24, v22, v23

    .line 1278
    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->accelerationText:[Ljava/lang/String;

    move-object/from16 v22, v0

    const/16 v23, 0x3

    const-string v24, ""

    aput-object v24, v22, v23

    .line 1279
    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->accelerationText:[Ljava/lang/String;

    move-object/from16 v22, v0

    const/16 v23, 0x4

    const-string v24, ""

    aput-object v24, v22, v23

    .line 1280
    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->accelerationText:[Ljava/lang/String;

    move-object/from16 v22, v0

    const/16 v23, 0x5

    const-string v24, ""

    aput-object v24, v22, v23

    .line 1281
    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->accelerationText:[Ljava/lang/String;

    move-object/from16 v22, v0

    const/16 v23, 0x6

    const-string v24, ""

    aput-object v24, v22, v23

    .line 1282
    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->accelerationText:[Ljava/lang/String;

    move-object/from16 v22, v0

    const/16 v23, 0x7

    const-string v24, ""

    aput-object v24, v22, v23

    goto/16 :goto_4

    .line 1290
    :cond_a
    const/high16 v22, 0x3f800000    # 1.0f

    goto/16 :goto_5

    .line 1300
    .restart local v7    # "actualSpeed":F
    .restart local v14    # "i":I
    :cond_b
    const/16 v22, 0xa

    goto/16 :goto_7

    .line 1305
    :cond_c
    const/16 v22, 0xa

    goto/16 :goto_8

    :cond_d
    const v22, 0x7f0d004b

    goto/16 :goto_9

    .line 1308
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->accelerationText:[Ljava/lang/String;

    move-object/from16 v23, v0

    add-int/lit8 v24, v14, -0x1

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "0-"

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget v0, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->distanceUnit:I

    move/from16 v22, v0

    const/16 v26, 0x1

    move/from16 v0, v22

    move/from16 v1, v26

    if-ne v0, v1, :cond_f

    const/16 v22, 0x5

    :goto_b
    mul-int v22, v22, v14

    move-object/from16 v0, v25

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {p0 .. p0}, Lackmaniac/vescmonitor/DeviceControlActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v26

    move-object/from16 v0, p0

    iget v0, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->distanceUnit:I

    move/from16 v22, v0

    const/16 v27, 0x1

    move/from16 v0, v22

    move/from16 v1, v27

    if-ne v0, v1, :cond_10

    const v22, 0x7f0d005d

    :goto_c
    move-object/from16 v0, v26

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v25

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    sget-object v25, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v26, "%6.1f"

    const/16 v27, 0x1

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->times:[J

    move-object/from16 v29, v0

    aget-wide v30, v29, v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->times:[J

    move-object/from16 v29, v0

    add-int/lit8 v32, v14, -0x1

    aget-wide v32, v29, v32

    sub-long v30, v30, v32

    move-wide/from16 v0, v30

    long-to-float v0, v0

    move/from16 v29, v0

    move/from16 v0, v29

    float-to-double v0, v0

    move-wide/from16 v30, v0

    const-wide v32, 0x408f400000000000L    # 1000.0

    div-double v30, v30, v32

    invoke-static/range {v30 .. v31}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v29

    aput-object v29, v27, v28

    invoke-static/range {v25 .. v27}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v25, "s"

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    sget-object v25, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v26, "%6.1f"

    const/16 v27, 0x1

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->times:[J

    move-object/from16 v29, v0

    aget-wide v30, v29, v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->times:[J

    move-object/from16 v29, v0

    const/16 v32, 0x0

    aget-wide v32, v29, v32

    sub-long v30, v30, v32

    move-wide/from16 v0, v30

    long-to-float v0, v0

    move/from16 v29, v0

    move/from16 v0, v29

    float-to-double v0, v0

    move-wide/from16 v30, v0

    const-wide v32, 0x408f400000000000L    # 1000.0

    div-double v30, v30, v32

    invoke-static/range {v30 .. v31}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v29

    aput-object v29, v27, v28

    invoke-static/range {v25 .. v27}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v25, "s"

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    aput-object v22, v23, v24

    goto/16 :goto_a

    :cond_f
    const/16 v22, 0xa

    goto/16 :goto_b

    :cond_10
    const v22, 0x7f0d004b

    goto/16 :goto_c

    .line 1316
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->accelerationText:[Ljava/lang/String;

    move-object/from16 v23, v0

    add-int/lit8 v24, v14, -0x1

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "0-"

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-wide v0, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->maxAccelerationSpeed:J

    move-wide/from16 v26, v0

    move-object/from16 v0, v22

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {p0 .. p0}, Lackmaniac/vescmonitor/DeviceControlActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v26

    move-object/from16 v0, p0

    iget v0, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->distanceUnit:I

    move/from16 v22, v0

    const/16 v27, 0x1

    move/from16 v0, v22

    move/from16 v1, v27

    if-ne v0, v1, :cond_15

    const v22, 0x7f0d005d

    :goto_d
    move-object/from16 v0, v26

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v25

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->times:[J

    move-object/from16 v22, v0

    add-int/lit8 v26, v14, -0x1

    aget-wide v26, v22, v26

    const-wide/16 v28, 0x0

    cmp-long v22, v26, v28

    if-eqz v22, :cond_16

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v26, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v27, "%6.1f"

    const/16 v28, 0x1

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->times:[J

    move-object/from16 v32, v0

    add-int/lit8 v33, v14, -0x1

    aget-wide v32, v32, v33

    sub-long v30, v30, v32

    move-wide/from16 v0, v30

    long-to-float v0, v0

    move/from16 v30, v0

    move/from16 v0, v30

    float-to-double v0, v0

    move-wide/from16 v30, v0

    const-wide v32, 0x408f400000000000L    # 1000.0

    div-double v30, v30, v32

    invoke-static/range {v30 .. v31}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v30

    aput-object v30, v28, v29

    invoke-static/range {v26 .. v28}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v22

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v26, "s"

    move-object/from16 v0, v22

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    :goto_e
    move-object/from16 v0, v25

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    sget-object v25, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v26, "%6.1f"

    const/16 v27, 0x1

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->times:[J

    move-object/from16 v29, v0

    const/16 v32, 0x0

    aget-wide v32, v29, v32

    sub-long v30, v30, v32

    move-wide/from16 v0, v30

    long-to-float v0, v0

    move/from16 v29, v0

    move/from16 v0, v29

    float-to-double v0, v0

    move-wide/from16 v30, v0

    const-wide v32, 0x408f400000000000L    # 1000.0

    div-double v30, v30, v32

    invoke-static/range {v30 .. v31}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v29

    aput-object v29, v27, v28

    invoke-static/range {v25 .. v27}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v25, "s"

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    aput-object v22, v23, v24

    .line 1318
    const-string v22, ""

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lackmaniac/vescmonitor/DeviceControlActivity;->errorTextString:Ljava/lang/String;

    .line 1319
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->accelerationText:[Ljava/lang/String;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aget-object v23, v23, v24

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "\n"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->accelerationText:[Ljava/lang/String;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    aget-object v23, v23, v24

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "\n"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->accelerationText:[Ljava/lang/String;

    move-object/from16 v23, v0

    const/16 v24, 0x2

    aget-object v23, v23, v24

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "\n"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->accelerationText:[Ljava/lang/String;

    move-object/from16 v23, v0

    const/16 v24, 0x3

    aget-object v23, v23, v24

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "\n"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->accelerationText:[Ljava/lang/String;

    move-object/from16 v23, v0

    const/16 v24, 0x4

    aget-object v23, v23, v24

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "\n"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->accelerationText:[Ljava/lang/String;

    move-object/from16 v23, v0

    const/16 v24, 0x5

    aget-object v23, v23, v24

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "\n"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->accelerationText:[Ljava/lang/String;

    move-object/from16 v23, v0

    const/16 v24, 0x6

    aget-object v23, v23, v24

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "\n"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->accelerationText:[Ljava/lang/String;

    move-object/from16 v23, v0

    const/16 v24, 0x7

    aget-object v23, v23, v24

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lackmaniac/vescmonitor/DeviceControlActivity;->writeErrorText(Ljava/lang/String;)V

    .line 1333
    .end local v7    # "actualSpeed":F
    .end local v14    # "i":I
    :cond_12
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->getDragData:Z

    move/from16 v22, v0

    if-eqz v22, :cond_25

    .line 1335
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->resetScreen:Z

    move/from16 v22, v0

    if-eqz v22, :cond_13

    .line 1336
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lackmaniac/vescmonitor/DeviceControlActivity;->dragMeasurementStarted:Z

    .line 1337
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lackmaniac/vescmonitor/DeviceControlActivity;->resetScreen:Z

    .line 1340
    :cond_13
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->dragMeasurementStarted:Z

    move/from16 v22, v0

    if-nez v22, :cond_18

    .line 1341
    move-object/from16 v0, v19

    iget v0, v0, Lackmaniac/vescmonitor/RealtimeData;->rpm:F

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Math;->abs(F)F

    move-result v22

    const/high16 v23, 0x42c80000    # 100.0f

    cmpg-float v22, v22, v23

    if-ltz v22, :cond_14

    move-object/from16 v0, p0

    iget-wide v0, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->maxAccelerationSpeed:J

    move-wide/from16 v22, v0

    const-wide/16 v24, 0x0

    cmp-long v22, v22, v24

    if-nez v22, :cond_1b

    .line 1342
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->accelerationText:[Ljava/lang/String;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const-string v24, "Ready to go"

    aput-object v24, v22, v23

    .line 1343
    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->accelerationText:[Ljava/lang/String;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    const-string v24, ""

    aput-object v24, v22, v23

    .line 1344
    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->accelerationText:[Ljava/lang/String;

    move-object/from16 v22, v0

    const/16 v23, 0x2

    const-string v24, ""

    aput-object v24, v22, v23

    .line 1345
    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->accelerationText:[Ljava/lang/String;

    move-object/from16 v22, v0

    const/16 v23, 0x3

    const-string v24, ""

    aput-object v24, v22, v23

    .line 1346
    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->accelerationText:[Ljava/lang/String;

    move-object/from16 v22, v0

    const/16 v23, 0x4

    const-string v24, ""

    aput-object v24, v22, v23

    .line 1347
    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->accelerationText:[Ljava/lang/String;

    move-object/from16 v22, v0

    const/16 v23, 0x5

    const-string v24, ""

    aput-object v24, v22, v23

    .line 1348
    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->accelerationText:[Ljava/lang/String;

    move-object/from16 v22, v0

    const/16 v23, 0x6

    const-string v24, ""

    aput-object v24, v22, v23

    .line 1349
    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->accelerationText:[Ljava/lang/String;

    move-object/from16 v22, v0

    const/16 v23, 0x7

    const-string v24, ""

    aput-object v24, v22, v23

    .line 1351
    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->times:[J

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v24

    aput-wide v24, v22, v23

    .line 1352
    const/4 v14, 0x1

    .restart local v14    # "i":I
    :goto_f
    const/16 v22, 0x8

    move/from16 v0, v22

    if-ge v14, v0, :cond_17

    .line 1353
    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->times:[J

    move-object/from16 v22, v0

    const-wide/16 v24, 0x0

    aput-wide v24, v22, v14

    .line 1352
    add-int/lit8 v14, v14, 0x1

    goto :goto_f

    .line 1316
    .restart local v7    # "actualSpeed":F
    :cond_15
    const v22, 0x7f0d004b

    goto/16 :goto_d

    :cond_16
    const-string v22, "     s"

    goto/16 :goto_e

    .line 1355
    .end local v7    # "actualSpeed":F
    :cond_17
    move-object/from16 v0, v19

    iget v0, v0, Lackmaniac/vescmonitor/RealtimeData;->tachometerAbs:F

    move/from16 v22, v0

    invoke-static {}, Lackmaniac/vescmonitor/Utils;->getDistanceFactor()F

    move-result v23

    mul-float v22, v22, v23

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lackmaniac/vescmonitor/DeviceControlActivity;->startDragDistance:F

    .line 1356
    const-wide/16 v22, 0x0

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Lackmaniac/vescmonitor/DeviceControlActivity;->maxAccelerationSpeed:J

    .line 1357
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lackmaniac/vescmonitor/DeviceControlActivity;->dragMeasurementStarted:Z

    .line 1370
    .end local v14    # "i":I
    :goto_10
    const-string v22, ""

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lackmaniac/vescmonitor/DeviceControlActivity;->errorTextString:Ljava/lang/String;

    .line 1371
    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->accelerationText:[Ljava/lang/String;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aget-object v22, v22, v23

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lackmaniac/vescmonitor/DeviceControlActivity;->writeErrorText(Ljava/lang/String;)V

    .line 1374
    :cond_18
    move-object/from16 v0, v19

    iget v0, v0, Lackmaniac/vescmonitor/RealtimeData;->rpm:F

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Math;->abs(F)F

    move-result v23

    invoke-static {}, Lackmaniac/vescmonitor/Utils;->getSpeedDevider()F

    move-result v24

    move-object/from16 v0, p0

    iget v0, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->distanceUnit:I

    move/from16 v22, v0

    const/16 v25, 0x1

    move/from16 v0, v22

    move/from16 v1, v25

    if-ne v0, v1, :cond_1c

    const v22, 0x3fcdfefc

    :goto_11
    mul-float v22, v22, v24

    div-float v7, v23, v22

    .line 1375
    .restart local v7    # "actualSpeed":F
    move-object/from16 v0, v19

    iget v0, v0, Lackmaniac/vescmonitor/RealtimeData;->tachometerAbs:F

    move/from16 v22, v0

    invoke-static {}, Lackmaniac/vescmonitor/Utils;->getDistanceFactor()F

    move-result v23

    mul-float v22, v22, v23

    move-object/from16 v0, p0

    iget v0, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->startDragDistance:F

    move/from16 v23, v0

    sub-float v6, v22, v23

    .line 1378
    .local v6, "actualDistance":F
    move-object/from16 v0, p0

    iget-wide v0, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->maxAccelerationSpeed:J

    move-wide/from16 v22, v0

    const-wide/16 v24, 0x0

    cmp-long v22, v22, v24

    if-nez v22, :cond_19

    .line 1379
    float-to-int v0, v7

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-long v0, v0

    move-wide/from16 v22, v0

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Lackmaniac/vescmonitor/DeviceControlActivity;->maxAccelerationSpeed:J

    .line 1381
    :cond_19
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->dragMeasurementStarted:Z

    move/from16 v22, v0

    if-eqz v22, :cond_25

    move-object/from16 v0, p0

    iget-wide v0, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->maxAccelerationSpeed:J

    move-wide/from16 v22, v0

    const-wide/16 v24, 0x0

    cmp-long v22, v22, v24

    if-lez v22, :cond_25

    .line 1383
    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->times:[J

    move-object/from16 v22, v0

    const/16 v23, 0x8

    aget-wide v22, v22, v23

    const-wide/16 v24, 0x0

    cmp-long v22, v22, v24

    if-nez v22, :cond_25

    .line 1386
    const/4 v14, 0x1

    .restart local v14    # "i":I
    :goto_12
    const/16 v22, 0x9

    move/from16 v0, v22

    if-ge v14, v0, :cond_23

    .line 1387
    int-to-float v0, v14

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->distanceUnit:I

    move/from16 v22, v0

    const/16 v24, 0x1

    move/from16 v0, v22

    move/from16 v1, v24

    if-ne v0, v1, :cond_1d

    const/high16 v22, 0x41700000    # 15.0f

    :goto_13
    mul-float v22, v22, v23

    cmpl-float v22, v6, v22

    if-ltz v22, :cond_23

    .line 1388
    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->times:[J

    move-object/from16 v22, v0

    aget-wide v22, v22, v14

    const-wide/16 v24, 0x0

    cmp-long v22, v22, v24

    if-nez v22, :cond_1a

    .line 1389
    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->times:[J

    move-object/from16 v22, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v24

    aput-wide v24, v22, v14

    .line 1390
    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->accelerationText:[Ljava/lang/String;

    move-object/from16 v23, v0

    add-int/lit8 v24, v14, -0x1

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "0-"

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget v0, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->distanceUnit:I

    move/from16 v22, v0

    const/16 v26, 0x1

    move/from16 v0, v22

    move/from16 v1, v26

    if-ne v0, v1, :cond_1e

    const/16 v22, 0xf

    :goto_14
    mul-int v22, v22, v14

    move-object/from16 v0, v25

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {p0 .. p0}, Lackmaniac/vescmonitor/DeviceControlActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v26

    move-object/from16 v0, p0

    iget v0, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->distanceUnit:I

    move/from16 v22, v0

    const/16 v27, 0x1

    move/from16 v0, v22

    move/from16 v1, v27

    if-ne v0, v1, :cond_1f

    const v22, 0x7f0d0047

    :goto_15
    move-object/from16 v0, v26

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v25

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const/16 v22, 0x3

    move/from16 v0, v22

    if-ge v14, v0, :cond_20

    const-string v22, " "

    :goto_16
    move-object/from16 v0, v25

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    sget-object v26, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v27, "%6.1f"

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    move-object/from16 v0, v19

    iget v0, v0, Lackmaniac/vescmonitor/RealtimeData;->rpm:F

    move/from16 v22, v0

    .line 1392
    invoke-static/range {v22 .. v22}, Ljava/lang/Math;->abs(F)F

    move-result v30

    invoke-static {}, Lackmaniac/vescmonitor/Utils;->getSpeedDevider()F

    move-result v31

    move-object/from16 v0, p0

    iget v0, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->distanceUnit:I

    move/from16 v22, v0

    const/16 v32, 0x1

    move/from16 v0, v22

    move/from16 v1, v32

    if-ne v0, v1, :cond_21

    const v22, 0x3fcdfefc

    :goto_17
    mul-float v22, v22, v31

    div-float v22, v30, v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v22

    aput-object v22, v28, v29

    invoke-static/range {v26 .. v28}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v25

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {p0 .. p0}, Lackmaniac/vescmonitor/DeviceControlActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v26

    move-object/from16 v0, p0

    iget v0, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->distanceUnit:I

    move/from16 v22, v0

    const/16 v27, 0x1

    move/from16 v0, v22

    move/from16 v1, v27

    if-ne v0, v1, :cond_22

    const v22, 0x7f0d005d

    :goto_18
    move-object/from16 v0, v26

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v25

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    sget-object v25, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v26, "%6.1f"

    const/16 v27, 0x1

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->times:[J

    move-object/from16 v29, v0

    aget-wide v30, v29, v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->times:[J

    move-object/from16 v29, v0

    const/16 v32, 0x0

    aget-wide v32, v29, v32

    sub-long v30, v30, v32

    move-wide/from16 v0, v30

    long-to-float v0, v0

    move/from16 v29, v0

    move/from16 v0, v29

    float-to-double v0, v0

    move-wide/from16 v30, v0

    const-wide v32, 0x408f400000000000L    # 1000.0

    div-double v30, v30, v32

    .line 1393
    invoke-static/range {v30 .. v31}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v29

    aput-object v29, v27, v28

    invoke-static/range {v25 .. v27}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v25, "s"

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    aput-object v22, v23, v24

    .line 1386
    :cond_1a
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_12

    .line 1359
    .end local v6    # "actualDistance":F
    .end local v7    # "actualSpeed":F
    .end local v14    # "i":I
    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->accelerationText:[Ljava/lang/String;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const-string v24, "Please stop first"

    aput-object v24, v22, v23

    .line 1360
    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->accelerationText:[Ljava/lang/String;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    const-string v24, ""

    aput-object v24, v22, v23

    .line 1361
    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->accelerationText:[Ljava/lang/String;

    move-object/from16 v22, v0

    const/16 v23, 0x2

    const-string v24, ""

    aput-object v24, v22, v23

    .line 1362
    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->accelerationText:[Ljava/lang/String;

    move-object/from16 v22, v0

    const/16 v23, 0x3

    const-string v24, ""

    aput-object v24, v22, v23

    .line 1363
    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->accelerationText:[Ljava/lang/String;

    move-object/from16 v22, v0

    const/16 v23, 0x4

    const-string v24, ""

    aput-object v24, v22, v23

    .line 1364
    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->accelerationText:[Ljava/lang/String;

    move-object/from16 v22, v0

    const/16 v23, 0x5

    const-string v24, ""

    aput-object v24, v22, v23

    .line 1365
    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->accelerationText:[Ljava/lang/String;

    move-object/from16 v22, v0

    const/16 v23, 0x6

    const-string v24, ""

    aput-object v24, v22, v23

    .line 1366
    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->accelerationText:[Ljava/lang/String;

    move-object/from16 v22, v0

    const/16 v23, 0x7

    const-string v24, ""

    aput-object v24, v22, v23

    goto/16 :goto_10

    .line 1374
    :cond_1c
    const/high16 v22, 0x3f800000    # 1.0f

    goto/16 :goto_11

    .line 1387
    .restart local v6    # "actualDistance":F
    .restart local v7    # "actualSpeed":F
    .restart local v14    # "i":I
    :cond_1d
    const/high16 v22, 0x41c80000    # 25.0f

    goto/16 :goto_13

    .line 1390
    :cond_1e
    const/16 v22, 0x19

    goto/16 :goto_14

    :cond_1f
    const v22, 0x7f0d005b

    goto/16 :goto_15

    :cond_20
    const-string v22, ""

    goto/16 :goto_16

    .line 1392
    :cond_21
    const/high16 v22, 0x3f800000    # 1.0f

    goto/16 :goto_17

    :cond_22
    const v22, 0x7f0d004b

    goto/16 :goto_18

    .line 1400
    :cond_23
    const/16 v22, 0x9

    move/from16 v0, v22

    if-eq v14, v0, :cond_24

    .line 1401
    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->accelerationText:[Ljava/lang/String;

    move-object/from16 v23, v0

    add-int/lit8 v24, v14, -0x1

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "0-"

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget v0, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->distanceUnit:I

    move/from16 v22, v0

    const/16 v26, 0x1

    move/from16 v0, v22

    move/from16 v1, v26

    if-ne v0, v1, :cond_2f

    const/16 v22, 0xf

    :goto_19
    mul-int v22, v22, v14

    move-object/from16 v0, v25

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {p0 .. p0}, Lackmaniac/vescmonitor/DeviceControlActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v26

    move-object/from16 v0, p0

    iget v0, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->distanceUnit:I

    move/from16 v22, v0

    const/16 v27, 0x1

    move/from16 v0, v22

    move/from16 v1, v27

    if-ne v0, v1, :cond_30

    const v22, 0x7f0d0047

    :goto_1a
    move-object/from16 v0, v26

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v25

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const/16 v22, 0x3

    move/from16 v0, v22

    if-ge v14, v0, :cond_31

    const-string v22, " "

    :goto_1b
    move-object/from16 v0, v25

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v25, "     s"

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    sget-object v25, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v26, "%6.1f"

    const/16 v27, 0x1

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    .line 1404
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->times:[J

    move-object/from16 v29, v0

    const/16 v32, 0x0

    aget-wide v32, v29, v32

    sub-long v30, v30, v32

    move-wide/from16 v0, v30

    long-to-float v0, v0

    move/from16 v29, v0

    move/from16 v0, v29

    float-to-double v0, v0

    move-wide/from16 v30, v0

    const-wide v32, 0x408f400000000000L    # 1000.0

    div-double v30, v30, v32

    invoke-static/range {v30 .. v31}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v29

    aput-object v29, v27, v28

    invoke-static/range {v25 .. v27}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v25, "s"

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    aput-object v22, v23, v24

    .line 1407
    :cond_24
    const-string v22, ""

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lackmaniac/vescmonitor/DeviceControlActivity;->errorTextString:Ljava/lang/String;

    .line 1408
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->accelerationText:[Ljava/lang/String;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aget-object v23, v23, v24

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "\n"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->accelerationText:[Ljava/lang/String;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    aget-object v23, v23, v24

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "\n"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->accelerationText:[Ljava/lang/String;

    move-object/from16 v23, v0

    const/16 v24, 0x2

    aget-object v23, v23, v24

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "\n"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->accelerationText:[Ljava/lang/String;

    move-object/from16 v23, v0

    const/16 v24, 0x3

    aget-object v23, v23, v24

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "\n"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->accelerationText:[Ljava/lang/String;

    move-object/from16 v23, v0

    const/16 v24, 0x4

    aget-object v23, v23, v24

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "\n"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->accelerationText:[Ljava/lang/String;

    move-object/from16 v23, v0

    const/16 v24, 0x5

    aget-object v23, v23, v24

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "\n"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->accelerationText:[Ljava/lang/String;

    move-object/from16 v23, v0

    const/16 v24, 0x6

    aget-object v23, v23, v24

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "\n"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->accelerationText:[Ljava/lang/String;

    move-object/from16 v23, v0

    const/16 v24, 0x7

    aget-object v23, v23, v24

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lackmaniac/vescmonitor/DeviceControlActivity;->writeErrorText(Ljava/lang/String;)V

    .line 1421
    .end local v6    # "actualDistance":F
    .end local v7    # "actualSpeed":F
    .end local v14    # "i":I
    :cond_25
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lackmaniac/vescmonitor/DeviceControlActivity;->handleStatistics(Lackmaniac/vescmonitor/RealtimeData;)V

    .line 1424
    invoke-static/range {v19 .. v19}, Lackmaniac/vescmonitor/Utils;->addRealtimeDate(Lackmaniac/vescmonitor/RealtimeData;)V

    .line 1426
    move-object/from16 v0, v19

    iget v0, v0, Lackmaniac/vescmonitor/RealtimeData;->fault:I

    move/from16 v22, v0

    if-eqz v22, :cond_2e

    move-object/from16 v0, p0

    iget-wide v0, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->lastTimeFaultAsked:J

    move-wide/from16 v22, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v24

    cmp-long v22, v22, v24

    if-gez v22, :cond_2e

    .line 1427
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    const-wide/16 v24, 0xbb8

    add-long v22, v22, v24

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Lackmaniac/vescmonitor/DeviceControlActivity;->lastTimeFaultAsked:J

    .line 1428
    const/16 v17, 0x0

    .line 1429
    .local v17, "newErrorString":Ljava/lang/String;
    move-object/from16 v0, v19

    iget v0, v0, Lackmaniac/vescmonitor/RealtimeData;->fault:I

    move/from16 v22, v0

    sget-object v23, Lackmaniac/vescmonitor/Utils$MC_FAULT_CODE;->FAULT_CODE_NONE:Lackmaniac/vescmonitor/Utils$MC_FAULT_CODE;

    invoke-virtual/range {v23 .. v23}, Lackmaniac/vescmonitor/Utils$MC_FAULT_CODE;->ordinal()I

    move-result v23

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_26

    .line 1430
    const-string v17, "Error : FAULT_CODE_NONE"

    .line 1431
    :cond_26
    move-object/from16 v0, v19

    iget v0, v0, Lackmaniac/vescmonitor/RealtimeData;->fault:I

    move/from16 v22, v0

    sget-object v23, Lackmaniac/vescmonitor/Utils$MC_FAULT_CODE;->FAULT_CODE_OVER_VOLTAGE:Lackmaniac/vescmonitor/Utils$MC_FAULT_CODE;

    invoke-virtual/range {v23 .. v23}, Lackmaniac/vescmonitor/Utils$MC_FAULT_CODE;->ordinal()I

    move-result v23

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_27

    .line 1432
    const-string v17, "Error : FAULT_CODE_OVER_VOLTAGE"

    .line 1433
    :cond_27
    move-object/from16 v0, v19

    iget v0, v0, Lackmaniac/vescmonitor/RealtimeData;->fault:I

    move/from16 v22, v0

    sget-object v23, Lackmaniac/vescmonitor/Utils$MC_FAULT_CODE;->FAULT_CODE_UNDER_VOLTAGE:Lackmaniac/vescmonitor/Utils$MC_FAULT_CODE;

    invoke-virtual/range {v23 .. v23}, Lackmaniac/vescmonitor/Utils$MC_FAULT_CODE;->ordinal()I

    move-result v23

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_28

    .line 1434
    const-string v17, "Error : FAULT_CODE_UNDER_VOLTAGE"

    .line 1435
    :cond_28
    move-object/from16 v0, v19

    iget v0, v0, Lackmaniac/vescmonitor/RealtimeData;->fault:I

    move/from16 v22, v0

    sget-object v23, Lackmaniac/vescmonitor/Utils$MC_FAULT_CODE;->FAULT_CODE_DRV8302:Lackmaniac/vescmonitor/Utils$MC_FAULT_CODE;

    invoke-virtual/range {v23 .. v23}, Lackmaniac/vescmonitor/Utils$MC_FAULT_CODE;->ordinal()I

    move-result v23

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_29

    .line 1436
    const-string v17, "Error : FAULT_CODE_DRV8302"

    .line 1437
    :cond_29
    move-object/from16 v0, v19

    iget v0, v0, Lackmaniac/vescmonitor/RealtimeData;->fault:I

    move/from16 v22, v0

    sget-object v23, Lackmaniac/vescmonitor/Utils$MC_FAULT_CODE;->FAULT_CODE_ABS_OVER_CURRENT:Lackmaniac/vescmonitor/Utils$MC_FAULT_CODE;

    invoke-virtual/range {v23 .. v23}, Lackmaniac/vescmonitor/Utils$MC_FAULT_CODE;->ordinal()I

    move-result v23

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_2a

    .line 1438
    const-string v17, "Error : FAULT_CODE_ABS_OVER_CURRENT"

    .line 1439
    :cond_2a
    move-object/from16 v0, v19

    iget v0, v0, Lackmaniac/vescmonitor/RealtimeData;->fault:I

    move/from16 v22, v0

    sget-object v23, Lackmaniac/vescmonitor/Utils$MC_FAULT_CODE;->FAULT_CODE_OVER_TEMP_FET:Lackmaniac/vescmonitor/Utils$MC_FAULT_CODE;

    invoke-virtual/range {v23 .. v23}, Lackmaniac/vescmonitor/Utils$MC_FAULT_CODE;->ordinal()I

    move-result v23

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_2b

    .line 1440
    const-string v17, "Error : FAULT_CODE_OVER_TEMP_FET"

    .line 1441
    :cond_2b
    move-object/from16 v0, v19

    iget v0, v0, Lackmaniac/vescmonitor/RealtimeData;->fault:I

    move/from16 v22, v0

    sget-object v23, Lackmaniac/vescmonitor/Utils$MC_FAULT_CODE;->FAULT_CODE_OVER_TEMP_MOTOR:Lackmaniac/vescmonitor/Utils$MC_FAULT_CODE;

    invoke-virtual/range {v23 .. v23}, Lackmaniac/vescmonitor/Utils$MC_FAULT_CODE;->ordinal()I

    move-result v23

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_2c

    .line 1442
    const-string v17, "Error : FAULT_CODE_OVER_TEMP_MOTOR"

    .line 1443
    :cond_2c
    if-nez v17, :cond_2d

    .line 1444
    const-string v17, "Error : Unknown fault"

    .line 1446
    :cond_2d
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lackmaniac/vescmonitor/DeviceControlActivity;->writeErrorText(Ljava/lang/String;)V

    .line 1447
    sget-object v22, Lackmaniac/vescmonitor/Utils;->terminalCommands:Ljava/util/List;

    sget-object v23, Lackmaniac/vescmonitor/Utils$CAN_COMMANDS;->TERMINAL_CAN_MEMBER:Lackmaniac/vescmonitor/Utils$CAN_COMMANDS;

    invoke-virtual/range {v23 .. v23}, Lackmaniac/vescmonitor/Utils$CAN_COMMANDS;->ordinal()I

    move-result v23

    invoke-interface/range {v22 .. v23}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->isConnectedToSlave:Z

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->canControllerId:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-direct {v0, v1, v2, v3}, Lackmaniac/vescmonitor/DeviceControlActivity;->getTerminalCommand(Ljava/lang/String;ZI)V

    .line 1861
    .end local v17    # "newErrorString":Ljava/lang/String;
    .end local v19    # "realtimeData":Lackmaniac/vescmonitor/RealtimeData;
    :cond_2e
    :goto_1c
    return-void

    .line 1401
    .restart local v6    # "actualDistance":F
    .restart local v7    # "actualSpeed":F
    .restart local v14    # "i":I
    .restart local v19    # "realtimeData":Lackmaniac/vescmonitor/RealtimeData;
    :cond_2f
    const/16 v22, 0x19

    goto/16 :goto_19

    :cond_30
    const v22, 0x7f0d005b

    goto/16 :goto_1a

    :cond_31
    const-string v22, ""

    goto/16 :goto_1b

    .line 1449
    .end local v6    # "actualDistance":F
    .end local v7    # "actualSpeed":F
    .end local v14    # "i":I
    .end local v19    # "realtimeData":Lackmaniac/vescmonitor/RealtimeData;
    :cond_32
    const/16 v22, 0x0

    aget-byte v22, p1, v22

    invoke-static/range {v22 .. v22}, Lackmaniac/vescmonitor/Utils;->unsignedByteToInt(B)I

    move-result v22

    sget-object v23, Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;->COMM_GET_SPEED_MODE:Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;

    invoke-static/range {v23 .. v23}, Lackmaniac/vescmonitor/Utils;->getCommId(Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;)I

    move-result v23

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_42

    .line 1451
    invoke-direct/range {p0 .. p0}, Lackmaniac/vescmonitor/DeviceControlActivity;->sendSerial()V

    .line 1453
    const/4 v15, 0x1

    .line 1455
    .local v15, "ind":I
    invoke-static {}, Lackmaniac/vescmonitor/Utils;->getFirmwareVersion()Ljava/lang/String;

    move-result-object v22

    const-string v23, "3"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_39

    .line 1456
    add-int/lit8 v16, v15, 0x1

    .end local v15    # "ind":I
    .local v16, "ind":I
    aget-byte v22, p1, v15

    invoke-static/range {v22 .. v22}, Lackmaniac/vescmonitor/Utils;->unsignedByteToInt(B)I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lackmaniac/vescmonitor/DeviceControlActivity;->actualModeNumber:I

    .line 1457
    add-int/lit8 v15, v16, 0x1

    .end local v16    # "ind":I
    .restart local v15    # "ind":I
    aget-byte v22, p1, v16

    invoke-static/range {v22 .. v22}, Lackmaniac/vescmonitor/Utils;->unsignedByteToInt(B)I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lackmaniac/vescmonitor/DeviceControlActivity;->actualPPMMode:I

    .line 1458
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lackmaniac/vescmonitor/DeviceControlActivity;->actualUseMaxWatt:Z

    .line 1459
    const/high16 v22, 0x3f800000    # 1.0f

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-static {v0, v1, v15}, Lackmaniac/vescmonitor/Utils;->buffer_get_float16([BFI)F

    move-result v22

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lackmaniac/vescmonitor/DeviceControlActivity;->actualMaxWatt:I

    add-int/lit8 v15, v15, 0x2

    .line 1461
    const/high16 v22, 0x41200000    # 10.0f

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-static {v0, v1, v15}, Lackmaniac/vescmonitor/Utils;->buffer_get_float16([BFI)F

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lackmaniac/vescmonitor/DeviceControlActivity;->actualMaxMotorCurrent:F

    add-int/lit8 v15, v15, 0x2

    .line 1462
    const/high16 v22, 0x41200000    # 10.0f

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-static {v0, v1, v15}, Lackmaniac/vescmonitor/Utils;->buffer_get_float16([BFI)F

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lackmaniac/vescmonitor/DeviceControlActivity;->actualMaxBatteryCurrent:F

    add-int/lit8 v15, v15, 0x2

    .line 1463
    const/high16 v22, 0x41200000    # 10.0f

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-static {v0, v1, v15}, Lackmaniac/vescmonitor/Utils;->buffer_get_float16([BFI)F

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lackmaniac/vescmonitor/DeviceControlActivity;->actualMinMotorCurrent:F

    add-int/lit8 v15, v15, 0x2

    .line 1464
    const/high16 v22, 0x41200000    # 10.0f

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-static {v0, v1, v15}, Lackmaniac/vescmonitor/Utils;->buffer_get_float16([BFI)F

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lackmaniac/vescmonitor/DeviceControlActivity;->actualMinBatteryCurrent:F

    add-int/lit8 v15, v15, 0x2

    .line 1466
    const/high16 v22, 0x3f800000    # 1.0f

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-static {v0, v1, v15}, Lackmaniac/vescmonitor/Utils;->buffer_get_float16([BFI)F

    move-result v22

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v22, v0

    mul-int/lit8 v22, v22, 0xa

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lackmaniac/vescmonitor/DeviceControlActivity;->actualMaxERPM:I

    add-int/lit8 v15, v15, 0x2

    .line 1468
    const/high16 v22, 0x42c80000    # 100.0f

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-static {v0, v1, v15}, Lackmaniac/vescmonitor/Utils;->buffer_get_float16([BFI)F

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lackmaniac/vescmonitor/DeviceControlActivity;->actualBatteryCutStart:F

    add-int/lit8 v15, v15, 0x2

    .line 1469
    const/high16 v22, 0x42c80000    # 100.0f

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-static {v0, v1, v15}, Lackmaniac/vescmonitor/Utils;->buffer_get_float16([BFI)F

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lackmaniac/vescmonitor/DeviceControlActivity;->actualBatteryCutEnd:F

    add-int/lit8 v15, v15, 0x2

    .line 1471
    const/high16 v22, 0x42c80000    # 100.0f

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-static {v0, v1, v15}, Lackmaniac/vescmonitor/Utils;->buffer_get_float16([BFI)F

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lackmaniac/vescmonitor/DeviceControlActivity;->actualTempFetStart:F

    add-int/lit8 v15, v15, 0x2

    .line 1472
    const/high16 v22, 0x42c80000    # 100.0f

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-static {v0, v1, v15}, Lackmaniac/vescmonitor/Utils;->buffer_get_float16([BFI)F

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lackmaniac/vescmonitor/DeviceControlActivity;->actualTempFetEnd:F

    add-int/lit8 v15, v15, 0x2

    .line 1473
    const/high16 v22, 0x42c80000    # 100.0f

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-static {v0, v1, v15}, Lackmaniac/vescmonitor/Utils;->buffer_get_float16([BFI)F

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lackmaniac/vescmonitor/DeviceControlActivity;->actualTempMotorStart:F

    add-int/lit8 v15, v15, 0x2

    .line 1474
    const/high16 v22, 0x42c80000    # 100.0f

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-static {v0, v1, v15}, Lackmaniac/vescmonitor/Utils;->buffer_get_float16([BFI)F

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lackmaniac/vescmonitor/DeviceControlActivity;->actualTempMotorEnd:F

    add-int/lit8 v15, v15, 0x2

    .line 1476
    add-int/lit8 v16, v15, 0x1

    .end local v15    # "ind":I
    .restart local v16    # "ind":I
    aget-byte v22, p1, v15

    invoke-static/range {v22 .. v22}, Lackmaniac/vescmonitor/Utils;->unsignedByteToInt(B)I

    move-result v22

    sget-object v23, Lackmaniac/vescmonitor/Utils$APP_USE;->APP_NUNCHUK:Lackmaniac/vescmonitor/Utils$APP_USE;

    invoke-virtual/range {v23 .. v23}, Lackmaniac/vescmonitor/Utils$APP_USE;->ordinal()I

    move-result v23

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_33

    const/16 v22, 0x1b

    aget-byte v22, p1, v22

    .line 1477
    invoke-static/range {v22 .. v22}, Lackmaniac/vescmonitor/Utils;->unsignedByteToInt(B)I

    move-result v22

    sget-object v23, Lackmaniac/vescmonitor/Utils$APP_USE;->APP_NRF:Lackmaniac/vescmonitor/Utils$APP_USE;

    invoke-virtual/range {v23 .. v23}, Lackmaniac/vescmonitor/Utils$APP_USE;->ordinal()I

    move-result v23

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_37

    .line 1478
    :cond_33
    const-string v22, "VESC_SETTINGS"

    const/16 v23, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lackmaniac/vescmonitor/DeviceControlActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v22

    const-string v23, "IS_NUNCHUK"

    invoke-static/range {v23 .. v23}, Lackmaniac/vescmonitor/Utils;->getSettingsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x1

    invoke-interface/range {v22 .. v24}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1483
    :goto_1d
    const/high16 v22, 0x42c80000    # 100.0f

    move-object/from16 v0, p1

    move/from16 v1, v22

    move/from16 v2, v16

    invoke-static {v0, v1, v2}, Lackmaniac/vescmonitor/Utils;->buffer_get_float16([BFI)F

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lackmaniac/vescmonitor/DeviceControlActivity;->throttle_exp:F

    add-int/lit8 v15, v16, 0x2

    .line 1484
    .end local v16    # "ind":I
    .restart local v15    # "ind":I
    const/high16 v22, 0x42c80000    # 100.0f

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-static {v0, v1, v15}, Lackmaniac/vescmonitor/Utils;->buffer_get_float16([BFI)F

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lackmaniac/vescmonitor/DeviceControlActivity;->throttle_exp_brake:F

    add-int/lit8 v15, v15, 0x2

    .line 1485
    add-int/lit8 v16, v15, 0x1

    .end local v15    # "ind":I
    .restart local v16    # "ind":I
    aget-byte v22, p1, v15

    invoke-static/range {v22 .. v22}, Lackmaniac/vescmonitor/Utils;->unsignedByteToInt(B)I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lackmaniac/vescmonitor/DeviceControlActivity;->throttle_exp_mode:I

    .line 1487
    add-int/lit8 v15, v16, 0x1

    .end local v16    # "ind":I
    .restart local v15    # "ind":I
    aget-byte v22, p1, v16

    invoke-static/range {v22 .. v22}, Lackmaniac/vescmonitor/Utils;->unsignedByteToInt(B)I

    move-result v22

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_38

    const/16 v22, 0x1

    :goto_1e
    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lackmaniac/vescmonitor/DeviceControlActivity;->actualPIDBrakingEnabled:Z

    .line 1489
    const v22, 0x49742400    # 1000000.0f

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-static {v0, v1, v15}, Lackmaniac/vescmonitor/Utils;->buffer_get_float32([BFI)F

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lackmaniac/vescmonitor/DeviceControlActivity;->actualPIDSpeedKp:F

    add-int/lit8 v15, v15, 0x4

    .line 1491
    const v22, 0x49742400    # 1000000.0f

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-static {v0, v1, v15}, Lackmaniac/vescmonitor/Utils;->buffer_get_float32([BFI)F

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lackmaniac/vescmonitor/DeviceControlActivity;->actualPIDSpeedKi:F

    add-int/lit8 v15, v15, 0x4

    .line 1493
    const v22, 0x49742400    # 1000000.0f

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-static {v0, v1, v15}, Lackmaniac/vescmonitor/Utils;->buffer_get_float32([BFI)F

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lackmaniac/vescmonitor/DeviceControlActivity;->actualPIDSpeedKd:F

    add-int/lit8 v15, v15, 0x4

    .line 1496
    add-int/lit8 v16, v15, 0x1

    .end local v15    # "ind":I
    .restart local v16    # "ind":I
    aget-byte v22, p1, v15

    invoke-static/range {v22 .. v22}, Lackmaniac/vescmonitor/Utils;->unsignedByteToInt(B)I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lackmaniac/vescmonitor/DeviceControlActivity;->actualMotorType:I

    move/from16 v15, v16

    .line 1602
    .end local v16    # "ind":I
    .restart local v15    # "ind":I
    :cond_34
    :goto_1f
    move-object/from16 v0, p0

    iget v0, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->actualModeNumber:I

    move/from16 v22, v0

    if-nez v22, :cond_36

    .line 1603
    move-object/from16 v0, p0

    iget v0, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->actualPPMMode:I

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lackmaniac/vescmonitor/DeviceControlActivity;->defaultPPMMode:I

    .line 1604
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->actualUseMaxWatt:Z

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lackmaniac/vescmonitor/DeviceControlActivity;->defaultUseMaxWatt:Z

    .line 1605
    move-object/from16 v0, p0

    iget v0, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->actualMaxWatt:I

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lackmaniac/vescmonitor/DeviceControlActivity;->defaultMaxWatt:I

    .line 1606
    move-object/from16 v0, p0

    iget v0, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->actualMaxMotorCurrent:F

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lackmaniac/vescmonitor/DeviceControlActivity;->defaultMaxMotorCurrent:F

    .line 1607
    move-object/from16 v0, p0

    iget v0, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->actualMaxBatteryCurrent:F

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lackmaniac/vescmonitor/DeviceControlActivity;->defaultMaxBatteryCurrent:F

    .line 1608
    move-object/from16 v0, p0

    iget v0, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->actualMinMotorCurrent:F

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lackmaniac/vescmonitor/DeviceControlActivity;->defaultMinMotorCurrent:F

    .line 1609
    move-object/from16 v0, p0

    iget v0, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->actualMinBatteryCurrent:F

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lackmaniac/vescmonitor/DeviceControlActivity;->defaultMinBatteryCurrent:F

    .line 1610
    move-object/from16 v0, p0

    iget v0, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->actualMaxERPM:I

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lackmaniac/vescmonitor/DeviceControlActivity;->defaultMaxERPM:I

    .line 1612
    const-string v22, "VESC_SETTINGS"

    const/16 v23, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lackmaniac/vescmonitor/DeviceControlActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v12

    .line 1613
    .local v12, "editor":Landroid/content/SharedPreferences$Editor;
    move-object/from16 v0, p0

    iget v0, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->defaultPPMMode:I

    move/from16 v22, v0

    sget-object v23, Lackmaniac/vescmonitor/Utils$PPM_CONTROL_TYPE;->PPM_CTRL_TYPE_NONE:Lackmaniac/vescmonitor/Utils$PPM_CONTROL_TYPE;

    invoke-virtual/range {v23 .. v23}, Lackmaniac/vescmonitor/Utils$PPM_CONTROL_TYPE;->ordinal()I

    move-result v23

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_36

    .line 1614
    invoke-static {}, Lackmaniac/vescmonitor/Utils;->getFirmwareVersion()Ljava/lang/String;

    move-result-object v22

    const-string v23, "3"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v22

    if-nez v22, :cond_35

    invoke-static {}, Lackmaniac/vescmonitor/Utils;->getFirmwareVersion()Ljava/lang/String;

    move-result-object v22

    const-string v23, "2.54"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_36

    .line 1616
    :cond_35
    const-string v22, "PPM_MODE"

    invoke-static/range {v22 .. v22}, Lackmaniac/vescmonitor/Utils;->getSettingsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    iget v0, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->actualPPMMode:I

    move/from16 v23, v0

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-interface {v12, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1617
    const-string v22, "USE_MAX_WATT"

    invoke-static/range {v22 .. v22}, Lackmaniac/vescmonitor/Utils;->getSettingsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->actualUseMaxWatt:Z

    move/from16 v23, v0

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-interface {v12, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1618
    const-string v22, "MAX_WATT"

    invoke-static/range {v22 .. v22}, Lackmaniac/vescmonitor/Utils;->getSettingsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    iget v0, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->actualMaxWatt:I

    move/from16 v23, v0

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-interface {v12, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1619
    const-string v22, "MAX_MOTOR_C"

    invoke-static/range {v22 .. v22}, Lackmaniac/vescmonitor/Utils;->getSettingsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    iget v0, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->actualMaxMotorCurrent:F

    move/from16 v23, v0

    const/high16 v24, 0x41200000    # 10.0f

    mul-float v23, v23, v24

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v23, v0

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-interface {v12, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1620
    const-string v22, "MAX_BATTERY_C"

    invoke-static/range {v22 .. v22}, Lackmaniac/vescmonitor/Utils;->getSettingsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    iget v0, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->actualMaxBatteryCurrent:F

    move/from16 v23, v0

    const/high16 v24, 0x41200000    # 10.0f

    mul-float v23, v23, v24

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v23, v0

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-interface {v12, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1621
    const-string v22, "MIN_MOTOR_C"

    invoke-static/range {v22 .. v22}, Lackmaniac/vescmonitor/Utils;->getSettingsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    iget v0, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->actualMinMotorCurrent:F

    move/from16 v23, v0

    const/high16 v24, 0x41200000    # 10.0f

    mul-float v23, v23, v24

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v23, v0

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-interface {v12, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1622
    const-string v22, "MIN_BATTERY_C"

    invoke-static/range {v22 .. v22}, Lackmaniac/vescmonitor/Utils;->getSettingsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    iget v0, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->actualMinBatteryCurrent:F

    move/from16 v23, v0

    const/high16 v24, 0x41200000    # 10.0f

    mul-float v23, v23, v24

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v23, v0

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-interface {v12, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1624
    const-string v22, "THROTTLE_EXP"

    invoke-static/range {v22 .. v22}, Lackmaniac/vescmonitor/Utils;->getSettingsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    iget v0, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->throttle_exp:F

    move/from16 v23, v0

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-interface {v12, v0, v1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 1625
    const-string v22, "THROTTLE_EXP_BRAKE"

    invoke-static/range {v22 .. v22}, Lackmaniac/vescmonitor/Utils;->getSettingsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    iget v0, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->throttle_exp_brake:F

    move/from16 v23, v0

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-interface {v12, v0, v1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 1626
    const-string v22, "THROTTLE_EXP_MODE"

    invoke-static/range {v22 .. v22}, Lackmaniac/vescmonitor/Utils;->getSettingsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    iget v0, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->throttle_exp_mode:I

    move/from16 v23, v0

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-interface {v12, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1628
    const-string v22, "TC_Y1"

    invoke-static/range {v22 .. v22}, Lackmaniac/vescmonitor/Utils;->getSettingsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    iget v0, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->actualY1_throttle:F

    move/from16 v23, v0

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-interface {v12, v0, v1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 1629
    const-string v22, "TC_Y2"

    invoke-static/range {v22 .. v22}, Lackmaniac/vescmonitor/Utils;->getSettingsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    iget v0, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->actualY2_throttle:F

    move/from16 v23, v0

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-interface {v12, v0, v1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 1630
    const-string v22, "TC_Y3"

    invoke-static/range {v22 .. v22}, Lackmaniac/vescmonitor/Utils;->getSettingsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    iget v0, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->actualY3_throttle:F

    move/from16 v23, v0

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-interface {v12, v0, v1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 1631
    const-string v22, "TC_X1"

    invoke-static/range {v22 .. v22}, Lackmaniac/vescmonitor/Utils;->getSettingsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    iget v0, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->actualX1_throttle:F

    move/from16 v23, v0

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-interface {v12, v0, v1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 1632
    const-string v22, "TC_X2"

    invoke-static/range {v22 .. v22}, Lackmaniac/vescmonitor/Utils;->getSettingsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    iget v0, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->actualX2_throttle:F

    move/from16 v23, v0

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-interface {v12, v0, v1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 1633
    const-string v22, "TC_X3"

    invoke-static/range {v22 .. v22}, Lackmaniac/vescmonitor/Utils;->getSettingsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    iget v0, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->actualX3_throttle:F

    move/from16 v23, v0

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-interface {v12, v0, v1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 1635
    const-string v22, "TC_BEZIER_POS"

    invoke-static/range {v22 .. v22}, Lackmaniac/vescmonitor/Utils;->getSettingsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    iget v0, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->actualBezierPos_throttle:F

    move/from16 v23, v0

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-interface {v12, v0, v1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 1637
    const-string v22, "TC_NY1"

    invoke-static/range {v22 .. v22}, Lackmaniac/vescmonitor/Utils;->getSettingsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    iget v0, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->actualNY1_throttle:F

    move/from16 v23, v0

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-interface {v12, v0, v1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 1638
    const-string v22, "TC_NY2"

    invoke-static/range {v22 .. v22}, Lackmaniac/vescmonitor/Utils;->getSettingsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    iget v0, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->actualNY2_throttle:F

    move/from16 v23, v0

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-interface {v12, v0, v1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 1639
    const-string v22, "TC_NY3"

    invoke-static/range {v22 .. v22}, Lackmaniac/vescmonitor/Utils;->getSettingsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    iget v0, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->actualNY3_throttle:F

    move/from16 v23, v0

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-interface {v12, v0, v1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 1640
    const-string v22, "TC_NX1"

    invoke-static/range {v22 .. v22}, Lackmaniac/vescmonitor/Utils;->getSettingsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    iget v0, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->actualNX1_throttle:F

    move/from16 v23, v0

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-interface {v12, v0, v1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 1641
    const-string v22, "TC_NX2"

    invoke-static/range {v22 .. v22}, Lackmaniac/vescmonitor/Utils;->getSettingsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    iget v0, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->actualNX2_throttle:F

    move/from16 v23, v0

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-interface {v12, v0, v1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 1642
    const-string v22, "TC_NX3"

    invoke-static/range {v22 .. v22}, Lackmaniac/vescmonitor/Utils;->getSettingsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    iget v0, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->actualNX3_throttle:F

    move/from16 v23, v0

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-interface {v12, v0, v1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 1644
    const-string v22, "TC_BEZIER_NEG"

    invoke-static/range {v22 .. v22}, Lackmaniac/vescmonitor/Utils;->getSettingsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    iget v0, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->actualBezierNeg_throttle:F

    move/from16 v23, v0

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-interface {v12, v0, v1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 1646
    const-string v22, "KEY_PID_BRAKING_AT_ENABLED"

    invoke-static/range {v22 .. v22}, Lackmaniac/vescmonitor/Utils;->getSettingsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->actualPIDBrakingEnabled:Z

    move/from16 v23, v0

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-interface {v12, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1648
    const-string v22, "KEY_CRUISE_CONTROL_PID_KP"

    invoke-static/range {v22 .. v22}, Lackmaniac/vescmonitor/Utils;->getSettingsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    iget v0, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->actualPIDSpeedKp:F

    move/from16 v23, v0

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-interface {v12, v0, v1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 1649
    const-string v22, "KEY_CRUISE_CONTROL_PID_KI"

    invoke-static/range {v22 .. v22}, Lackmaniac/vescmonitor/Utils;->getSettingsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    iget v0, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->actualPIDSpeedKi:F

    move/from16 v23, v0

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-interface {v12, v0, v1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 1650
    const-string v22, "KEY_CRUISE_CONTROL_PID_KD"

    invoke-static/range {v22 .. v22}, Lackmaniac/vescmonitor/Utils;->getSettingsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    iget v0, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->actualPIDSpeedKd:F

    move/from16 v23, v0

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-interface {v12, v0, v1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 1652
    invoke-interface {v12}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1656
    .end local v12    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_36
    invoke-direct/range {p0 .. p0}, Lackmaniac/vescmonitor/DeviceControlActivity;->updateSpeedModeButtonText()V

    goto/16 :goto_1c

    .line 1480
    .end local v15    # "ind":I
    .restart local v16    # "ind":I
    :cond_37
    const-string v22, "VESC_SETTINGS"

    const/16 v23, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lackmaniac/vescmonitor/DeviceControlActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v22

    const-string v23, "IS_NUNCHUK"

    invoke-static/range {v23 .. v23}, Lackmaniac/vescmonitor/Utils;->getSettingsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x0

    invoke-interface/range {v22 .. v24}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_1d

    .line 1487
    .end local v16    # "ind":I
    .restart local v15    # "ind":I
    :cond_38
    const/16 v22, 0x0

    goto/16 :goto_1e

    .line 1501
    :cond_39
    add-int/lit8 v16, v15, 0x1

    .end local v15    # "ind":I
    .restart local v16    # "ind":I
    aget-byte v22, p1, v15

    invoke-static/range {v22 .. v22}, Lackmaniac/vescmonitor/Utils;->unsignedByteToInt(B)I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lackmaniac/vescmonitor/DeviceControlActivity;->actualModeNumber:I

    .line 1502
    add-int/lit8 v15, v16, 0x1

    .end local v16    # "ind":I
    .restart local v15    # "ind":I
    aget-byte v22, p1, v16

    invoke-static/range {v22 .. v22}, Lackmaniac/vescmonitor/Utils;->unsignedByteToInt(B)I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lackmaniac/vescmonitor/DeviceControlActivity;->actualPPMMode:I

    .line 1503
    invoke-static {}, Lackmaniac/vescmonitor/Utils;->getFirmwareVersion()Ljava/lang/String;

    move-result-object v22

    const-string v23, "2.54"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_3a

    .line 1504
    add-int/lit8 v16, v15, 0x1

    .end local v15    # "ind":I
    .restart local v16    # "ind":I
    aget-byte v22, p1, v15

    invoke-static/range {v22 .. v22}, Lackmaniac/vescmonitor/Utils;->unsignedByteToInt(B)I

    move-result v22

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_3e

    const/16 v22, 0x1

    :goto_20
    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lackmaniac/vescmonitor/DeviceControlActivity;->actualUseMaxWatt:Z

    move/from16 v15, v16

    .line 1506
    .end local v16    # "ind":I
    .restart local v15    # "ind":I
    :cond_3a
    const/high16 v22, 0x3f800000    # 1.0f

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-static {v0, v1, v15}, Lackmaniac/vescmonitor/Utils;->buffer_get_float16([BFI)F

    move-result v22

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lackmaniac/vescmonitor/DeviceControlActivity;->actualMaxWatt:I

    .line 1507
    add-int/lit8 v15, v15, 0x2

    .line 1508
    const/high16 v22, 0x41200000    # 10.0f

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-static {v0, v1, v15}, Lackmaniac/vescmonitor/Utils;->buffer_get_float16([BFI)F

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lackmaniac/vescmonitor/DeviceControlActivity;->actualMaxMotorCurrent:F

    .line 1509
    add-int/lit8 v15, v15, 0x2

    .line 1510
    const/high16 v22, 0x41200000    # 10.0f

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-static {v0, v1, v15}, Lackmaniac/vescmonitor/Utils;->buffer_get_float16([BFI)F

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lackmaniac/vescmonitor/DeviceControlActivity;->actualMaxBatteryCurrent:F

    .line 1511
    add-int/lit8 v15, v15, 0x2

    .line 1512
    const/high16 v22, 0x41200000    # 10.0f

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-static {v0, v1, v15}, Lackmaniac/vescmonitor/Utils;->buffer_get_float16([BFI)F

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lackmaniac/vescmonitor/DeviceControlActivity;->actualMinMotorCurrent:F

    .line 1513
    add-int/lit8 v15, v15, 0x2

    .line 1514
    const/high16 v22, 0x41200000    # 10.0f

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-static {v0, v1, v15}, Lackmaniac/vescmonitor/Utils;->buffer_get_float16([BFI)F

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lackmaniac/vescmonitor/DeviceControlActivity;->actualMinBatteryCurrent:F

    .line 1515
    add-int/lit8 v15, v15, 0x2

    .line 1516
    const/high16 v22, 0x3f800000    # 1.0f

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-static {v0, v1, v15}, Lackmaniac/vescmonitor/Utils;->buffer_get_float16([BFI)F

    move-result v22

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v22, v0

    mul-int/lit8 v22, v22, 0xa

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lackmaniac/vescmonitor/DeviceControlActivity;->actualMaxERPM:I

    .line 1517
    add-int/lit8 v15, v15, 0x2

    .line 1518
    invoke-static {}, Lackmaniac/vescmonitor/Utils;->getFirmwareVersion()Ljava/lang/String;

    move-result-object v22

    const-string v23, "2.53"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_3b

    invoke-static {}, Lackmaniac/vescmonitor/Utils;->getFirmwareVersion()Ljava/lang/String;

    move-result-object v22

    const-string v23, "2.54"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_3d

    .line 1519
    :cond_3b
    const/high16 v22, 0x42c80000    # 100.0f

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-static {v0, v1, v15}, Lackmaniac/vescmonitor/Utils;->buffer_get_float16([BFI)F

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lackmaniac/vescmonitor/DeviceControlActivity;->actualBatteryCutStart:F

    .line 1520
    add-int/lit8 v15, v15, 0x2

    .line 1521
    const/high16 v22, 0x42c80000    # 100.0f

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-static {v0, v1, v15}, Lackmaniac/vescmonitor/Utils;->buffer_get_float16([BFI)F

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lackmaniac/vescmonitor/DeviceControlActivity;->actualBatteryCutEnd:F

    .line 1522
    add-int/lit8 v15, v15, 0x2

    .line 1524
    const/high16 v22, 0x42c80000    # 100.0f

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-static {v0, v1, v15}, Lackmaniac/vescmonitor/Utils;->buffer_get_float16([BFI)F

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lackmaniac/vescmonitor/DeviceControlActivity;->actualTempFetStart:F

    .line 1525
    add-int/lit8 v15, v15, 0x2

    .line 1526
    const/high16 v22, 0x42c80000    # 100.0f

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-static {v0, v1, v15}, Lackmaniac/vescmonitor/Utils;->buffer_get_float16([BFI)F

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lackmaniac/vescmonitor/DeviceControlActivity;->actualTempFetEnd:F

    .line 1527
    add-int/lit8 v15, v15, 0x2

    .line 1529
    add-int/lit8 v16, v15, 0x1

    .end local v15    # "ind":I
    .restart local v16    # "ind":I
    aget-byte v22, p1, v15

    invoke-static/range {v22 .. v22}, Lackmaniac/vescmonitor/Utils;->unsignedByteToInt(B)I

    move-result v22

    sget-object v23, Lackmaniac/vescmonitor/Utils$APP_USE;->APP_NUNCHUK:Lackmaniac/vescmonitor/Utils$APP_USE;

    invoke-virtual/range {v23 .. v23}, Lackmaniac/vescmonitor/Utils$APP_USE;->ordinal()I

    move-result v23

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_3c

    add-int/lit8 v22, v16, -0x1

    aget-byte v22, p1, v22

    .line 1530
    invoke-static/range {v22 .. v22}, Lackmaniac/vescmonitor/Utils;->unsignedByteToInt(B)I

    move-result v22

    sget-object v23, Lackmaniac/vescmonitor/Utils$APP_USE;->APP_NRF:Lackmaniac/vescmonitor/Utils$APP_USE;

    invoke-virtual/range {v23 .. v23}, Lackmaniac/vescmonitor/Utils$APP_USE;->ordinal()I

    move-result v23

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_3f

    .line 1531
    :cond_3c
    const-string v22, "VESC_SETTINGS"

    const/16 v23, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lackmaniac/vescmonitor/DeviceControlActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v22

    const-string v23, "IS_NUNCHUK"

    invoke-static/range {v23 .. v23}, Lackmaniac/vescmonitor/Utils;->getSettingsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x1

    invoke-interface/range {v22 .. v24}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1538
    :goto_21
    add-int/lit8 v15, v16, 0x1

    .end local v16    # "ind":I
    .restart local v15    # "ind":I
    aget-byte v22, p1, v16

    invoke-static/range {v22 .. v22}, Lackmaniac/vescmonitor/Utils;->unsignedByteToInt(B)I

    move-result v22

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_40

    const/16 v22, 0x1

    :goto_22
    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lackmaniac/vescmonitor/DeviceControlActivity;->actualAdjustableThrottleEnabled:Z

    .line 1540
    const/high16 v22, 0x447a0000    # 1000.0f

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-static {v0, v1, v15}, Lackmaniac/vescmonitor/Utils;->buffer_get_float16([BFI)F

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lackmaniac/vescmonitor/DeviceControlActivity;->actualY1_throttle:F

    .line 1541
    add-int/lit8 v15, v15, 0x2

    .line 1543
    const/high16 v22, 0x447a0000    # 1000.0f

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-static {v0, v1, v15}, Lackmaniac/vescmonitor/Utils;->buffer_get_float16([BFI)F

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lackmaniac/vescmonitor/DeviceControlActivity;->actualY2_throttle:F

    .line 1544
    add-int/lit8 v15, v15, 0x2

    .line 1546
    const/high16 v22, 0x447a0000    # 1000.0f

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-static {v0, v1, v15}, Lackmaniac/vescmonitor/Utils;->buffer_get_float16([BFI)F

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lackmaniac/vescmonitor/DeviceControlActivity;->actualY3_throttle:F

    .line 1547
    add-int/lit8 v15, v15, 0x2

    .line 1549
    const/high16 v22, 0x447a0000    # 1000.0f

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-static {v0, v1, v15}, Lackmaniac/vescmonitor/Utils;->buffer_get_float16([BFI)F

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lackmaniac/vescmonitor/DeviceControlActivity;->actualX1_throttle:F

    .line 1550
    add-int/lit8 v15, v15, 0x2

    .line 1552
    const/high16 v22, 0x447a0000    # 1000.0f

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-static {v0, v1, v15}, Lackmaniac/vescmonitor/Utils;->buffer_get_float16([BFI)F

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lackmaniac/vescmonitor/DeviceControlActivity;->actualX2_throttle:F

    .line 1553
    add-int/lit8 v15, v15, 0x2

    .line 1555
    const/high16 v22, 0x447a0000    # 1000.0f

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-static {v0, v1, v15}, Lackmaniac/vescmonitor/Utils;->buffer_get_float16([BFI)F

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lackmaniac/vescmonitor/DeviceControlActivity;->actualX3_throttle:F

    .line 1556
    add-int/lit8 v15, v15, 0x2

    .line 1558
    const/high16 v22, 0x42c80000    # 100.0f

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-static {v0, v1, v15}, Lackmaniac/vescmonitor/Utils;->buffer_get_float16([BFI)F

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lackmaniac/vescmonitor/DeviceControlActivity;->actualBezierPos_throttle:F

    .line 1559
    add-int/lit8 v15, v15, 0x2

    .line 1561
    const/high16 v22, 0x447a0000    # 1000.0f

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-static {v0, v1, v15}, Lackmaniac/vescmonitor/Utils;->buffer_get_float16([BFI)F

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lackmaniac/vescmonitor/DeviceControlActivity;->actualNY1_throttle:F

    .line 1562
    add-int/lit8 v15, v15, 0x2

    .line 1564
    const/high16 v22, 0x447a0000    # 1000.0f

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-static {v0, v1, v15}, Lackmaniac/vescmonitor/Utils;->buffer_get_float16([BFI)F

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lackmaniac/vescmonitor/DeviceControlActivity;->actualNY2_throttle:F

    .line 1565
    add-int/lit8 v15, v15, 0x2

    .line 1567
    const/high16 v22, 0x447a0000    # 1000.0f

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-static {v0, v1, v15}, Lackmaniac/vescmonitor/Utils;->buffer_get_float16([BFI)F

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lackmaniac/vescmonitor/DeviceControlActivity;->actualNY3_throttle:F

    .line 1568
    add-int/lit8 v15, v15, 0x2

    .line 1570
    const/high16 v22, 0x447a0000    # 1000.0f

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-static {v0, v1, v15}, Lackmaniac/vescmonitor/Utils;->buffer_get_float16([BFI)F

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lackmaniac/vescmonitor/DeviceControlActivity;->actualNX1_throttle:F

    .line 1571
    add-int/lit8 v15, v15, 0x2

    .line 1573
    const/high16 v22, 0x447a0000    # 1000.0f

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-static {v0, v1, v15}, Lackmaniac/vescmonitor/Utils;->buffer_get_float16([BFI)F

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lackmaniac/vescmonitor/DeviceControlActivity;->actualNX2_throttle:F

    .line 1574
    add-int/lit8 v15, v15, 0x2

    .line 1576
    const/high16 v22, 0x447a0000    # 1000.0f

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-static {v0, v1, v15}, Lackmaniac/vescmonitor/Utils;->buffer_get_float16([BFI)F

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lackmaniac/vescmonitor/DeviceControlActivity;->actualNX3_throttle:F

    .line 1577
    add-int/lit8 v15, v15, 0x2

    .line 1579
    const/high16 v22, 0x42c80000    # 100.0f

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-static {v0, v1, v15}, Lackmaniac/vescmonitor/Utils;->buffer_get_float16([BFI)F

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lackmaniac/vescmonitor/DeviceControlActivity;->actualBezierNeg_throttle:F

    .line 1580
    add-int/lit8 v15, v15, 0x2

    .line 1584
    :cond_3d
    invoke-static {}, Lackmaniac/vescmonitor/Utils;->getFirmwareVersion()Ljava/lang/String;

    move-result-object v22

    const-string v23, "2.54"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_34

    .line 1585
    add-int/lit8 v16, v15, 0x1

    .end local v15    # "ind":I
    .restart local v16    # "ind":I
    aget-byte v22, p1, v15

    invoke-static/range {v22 .. v22}, Lackmaniac/vescmonitor/Utils;->unsignedByteToInt(B)I

    move-result v22

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_41

    const/16 v22, 0x1

    :goto_23
    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lackmaniac/vescmonitor/DeviceControlActivity;->actualPIDBrakingEnabled:Z

    .line 1587
    const v22, 0x49742400    # 1000000.0f

    move-object/from16 v0, p1

    move/from16 v1, v22

    move/from16 v2, v16

    invoke-static {v0, v1, v2}, Lackmaniac/vescmonitor/Utils;->buffer_get_float32([BFI)F

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lackmaniac/vescmonitor/DeviceControlActivity;->actualPIDSpeedKp:F

    .line 1588
    add-int/lit8 v15, v16, 0x4

    .line 1590
    .end local v16    # "ind":I
    .restart local v15    # "ind":I
    const v22, 0x49742400    # 1000000.0f

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-static {v0, v1, v15}, Lackmaniac/vescmonitor/Utils;->buffer_get_float32([BFI)F

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lackmaniac/vescmonitor/DeviceControlActivity;->actualPIDSpeedKi:F

    .line 1591
    add-int/lit8 v15, v15, 0x4

    .line 1593
    const v22, 0x49742400    # 1000000.0f

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-static {v0, v1, v15}, Lackmaniac/vescmonitor/Utils;->buffer_get_float32([BFI)F

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lackmaniac/vescmonitor/DeviceControlActivity;->actualPIDSpeedKd:F

    .line 1594
    add-int/lit8 v15, v15, 0x4

    .line 1597
    add-int/lit8 v16, v15, 0x1

    .end local v15    # "ind":I
    .restart local v16    # "ind":I
    aget-byte v22, p1, v15

    invoke-static/range {v22 .. v22}, Lackmaniac/vescmonitor/Utils;->unsignedByteToInt(B)I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lackmaniac/vescmonitor/DeviceControlActivity;->actualMotorType:I

    move/from16 v15, v16

    .end local v16    # "ind":I
    .restart local v15    # "ind":I
    goto/16 :goto_1f

    .line 1504
    .end local v15    # "ind":I
    .restart local v16    # "ind":I
    :cond_3e
    const/16 v22, 0x0

    goto/16 :goto_20

    .line 1533
    :cond_3f
    const-string v22, "VESC_SETTINGS"

    const/16 v23, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lackmaniac/vescmonitor/DeviceControlActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v22

    const-string v23, "IS_NUNCHUK"

    invoke-static/range {v23 .. v23}, Lackmaniac/vescmonitor/Utils;->getSettingsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x0

    invoke-interface/range {v22 .. v24}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_21

    .line 1538
    .end local v16    # "ind":I
    .restart local v15    # "ind":I
    :cond_40
    const/16 v22, 0x0

    goto/16 :goto_22

    .line 1585
    .end local v15    # "ind":I
    .restart local v16    # "ind":I
    :cond_41
    const/16 v22, 0x0

    goto :goto_23

    .line 1658
    .end local v16    # "ind":I
    :cond_42
    const/16 v22, 0x0

    aget-byte v22, p1, v22

    invoke-static/range {v22 .. v22}, Lackmaniac/vescmonitor/Utils;->unsignedByteToInt(B)I

    move-result v22

    sget-object v23, Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;->COMM_FW_VERSION:Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;

    invoke-static/range {v23 .. v23}, Lackmaniac/vescmonitor/Utils;->getCommId(Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;)I

    move-result v23

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_4c

    .line 1659
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v23, 0x1

    aget-byte v23, p1, v23

    invoke-static/range {v23 .. v23}, Lackmaniac/vescmonitor/Utils;->unsignedByteToInt(B)I

    move-result v23

    invoke-static/range {v23 .. v23}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "."

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const/16 v23, 0x2

    aget-byte v23, p1, v23

    invoke-static/range {v23 .. v23}, Lackmaniac/vescmonitor/Utils;->unsignedByteToInt(B)I

    move-result v23

    invoke-static/range {v23 .. v23}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lackmaniac/vescmonitor/Utils;->setFirmwareVersion(Ljava/lang/String;)V

    .line 1660
    invoke-static {}, Lackmaniac/vescmonitor/Utils;->getFirmwareVersion()Ljava/lang/String;

    move-result-object v22

    const-string v23, "2.80"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_44

    .line 1661
    const-string v22, "VESC_SETTINGS"

    const/16 v23, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lackmaniac/vescmonitor/DeviceControlActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v22

    const-string v23, "DEFAULT_MODES_ALREADY_CREATED"

    invoke-static/range {v23 .. v23}, Lackmaniac/vescmonitor/Utils;->getSettingsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x0

    invoke-interface/range {v22 .. v24}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v22

    if-nez v22, :cond_43

    .line 1662
    const-string v22, "VESC_SETTINGS"

    const/16 v23, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lackmaniac/vescmonitor/DeviceControlActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lackmaniac/vescmonitor/Utils;->createRaptor2DefaultConfig(Landroid/content/SharedPreferences;)V

    .line 1664
    :cond_43
    const-string v22, "2.54"

    invoke-static/range {v22 .. v22}, Lackmaniac/vescmonitor/Utils;->setFirmwareVersion(Ljava/lang/String;)V

    .line 1667
    :cond_44
    invoke-static {}, Lackmaniac/vescmonitor/Utils;->getFirmwareVersion()Ljava/lang/String;

    move-result-object v22

    const-string v23, "2.52"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_46

    .line 1668
    invoke-direct/range {p0 .. p0}, Lackmaniac/vescmonitor/DeviceControlActivity;->getSpeedMode()V

    .line 1669
    invoke-direct/range {p0 .. p0}, Lackmaniac/vescmonitor/DeviceControlActivity;->getMotorConf()V

    .line 1685
    :cond_45
    :goto_24
    const-string v22, "VESC_SETTINGS"

    const/16 v23, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lackmaniac/vescmonitor/DeviceControlActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v22

    const-string v23, "FIRWMWARE_VERSION"

    invoke-static/range {v23 .. v23}, Lackmaniac/vescmonitor/Utils;->getSettingsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    invoke-static {}, Lackmaniac/vescmonitor/Utils;->getFirmwareVersion()Ljava/lang/String;

    move-result-object v24

    invoke-interface/range {v22 .. v24}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1687
    const-string v22, "FIRMWAREVERSION"

    invoke-static {}, Lackmaniac/vescmonitor/Utils;->getFirmwareVersion()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1688
    invoke-direct/range {p0 .. p0}, Lackmaniac/vescmonitor/DeviceControlActivity;->sendSerial()V

    goto/16 :goto_1c

    .line 1670
    :cond_46
    invoke-static {}, Lackmaniac/vescmonitor/Utils;->getFirmwareVersion()Ljava/lang/String;

    move-result-object v22

    const-string v23, "2.18"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_47

    .line 1671
    invoke-direct/range {p0 .. p0}, Lackmaniac/vescmonitor/DeviceControlActivity;->getApplicationConf()V

    .line 1672
    invoke-direct/range {p0 .. p0}, Lackmaniac/vescmonitor/DeviceControlActivity;->getMotorConf()V

    goto :goto_24

    .line 1673
    :cond_47
    invoke-static {}, Lackmaniac/vescmonitor/Utils;->getFirmwareVersion()Ljava/lang/String;

    move-result-object v22

    const-string v23, "2.5"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_49

    .line 1674
    invoke-direct/range {p0 .. p0}, Lackmaniac/vescmonitor/DeviceControlActivity;->getSpeedMode()V

    .line 1675
    invoke-static {}, Lackmaniac/vescmonitor/Utils;->getFirmwareVersion()Ljava/lang/String;

    move-result-object v22

    const-string v23, "2.53"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_48

    invoke-static {}, Lackmaniac/vescmonitor/Utils;->getFirmwareVersion()Ljava/lang/String;

    move-result-object v22

    const-string v23, "2.54"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_45

    .line 1676
    :cond_48
    sget-object v22, Lackmaniac/vescmonitor/Utils;->terminalCommands:Ljava/util/List;

    sget-object v23, Lackmaniac/vescmonitor/Utils$CAN_COMMANDS;->TERMINAL_CAN_MEMBER:Lackmaniac/vescmonitor/Utils$CAN_COMMANDS;

    invoke-virtual/range {v23 .. v23}, Lackmaniac/vescmonitor/Utils$CAN_COMMANDS;->ordinal()I

    move-result v23

    invoke-interface/range {v22 .. v23}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->isConnectedToSlave:Z

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->canControllerId:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-direct {v0, v1, v2, v3}, Lackmaniac/vescmonitor/DeviceControlActivity;->getTerminalCommand(Ljava/lang/String;ZI)V

    goto/16 :goto_24

    .line 1678
    :cond_49
    invoke-static {}, Lackmaniac/vescmonitor/Utils;->getFirmwareVersion()Ljava/lang/String;

    move-result-object v22

    const-string v23, "3.26"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v22

    if-nez v22, :cond_4a

    invoke-static {}, Lackmaniac/vescmonitor/Utils;->getFirmwareVersion()Ljava/lang/String;

    move-result-object v22

    const-string v23, "3.27"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v22

    if-nez v22, :cond_4a

    invoke-static {}, Lackmaniac/vescmonitor/Utils;->getFirmwareVersion()Ljava/lang/String;

    move-result-object v22

    const-string v23, "3.28"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_4b

    .line 1679
    :cond_4a
    invoke-direct/range {p0 .. p0}, Lackmaniac/vescmonitor/DeviceControlActivity;->getApplicationConf()V

    .line 1680
    invoke-direct/range {p0 .. p0}, Lackmaniac/vescmonitor/DeviceControlActivity;->getMotorConf()V

    goto/16 :goto_24

    .line 1681
    :cond_4b
    invoke-static {}, Lackmaniac/vescmonitor/Utils;->getFirmwareVersion()Ljava/lang/String;

    move-result-object v22

    const-string v23, "3.1"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_45

    .line 1682
    invoke-direct/range {p0 .. p0}, Lackmaniac/vescmonitor/DeviceControlActivity;->getSpeedMode()V

    goto/16 :goto_24

    .line 1690
    :cond_4c
    const/16 v22, 0x0

    aget-byte v22, p1, v22

    invoke-static/range {v22 .. v22}, Lackmaniac/vescmonitor/Utils;->unsignedByteToInt(B)I

    move-result v22

    sget-object v23, Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;->COMM_GET_MCCONF:Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;

    invoke-static/range {v23 .. v23}, Lackmaniac/vescmonitor/Utils;->getCommId(Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;)I

    move-result v23

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_51

    .line 1691
    const-string v22, "MOTOR CONF"

    const-string v23, "received motor conf"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1692
    invoke-direct/range {p0 .. p0}, Lackmaniac/vescmonitor/DeviceControlActivity;->sendSerial()V

    .line 1693
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lackmaniac/vescmonitor/DeviceControlActivity;->actualModeNumber:I

    .line 1695
    invoke-static {}, Lackmaniac/vescmonitor/Utils;->getFirmwareVersion()Ljava/lang/String;

    move-result-object v22

    const-string v23, "3"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_50

    .line 1696
    const/16 v22, 0x5

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-static {v0, v1}, Lackmaniac/vescmonitor/Utils;->buffer_get_float32_auto([BI)F

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lackmaniac/vescmonitor/DeviceControlActivity;->actualMaxMotorCurrent:F

    .line 1697
    const/16 v22, 0x9

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-static {v0, v1}, Lackmaniac/vescmonitor/Utils;->buffer_get_float32_auto([BI)F

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lackmaniac/vescmonitor/DeviceControlActivity;->actualMinMotorCurrent:F

    .line 1698
    const/16 v22, 0xd

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-static {v0, v1}, Lackmaniac/vescmonitor/Utils;->buffer_get_float32_auto([BI)F

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lackmaniac/vescmonitor/DeviceControlActivity;->actualMaxBatteryCurrent:F

    .line 1699
    const/16 v22, 0x11

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-static {v0, v1}, Lackmaniac/vescmonitor/Utils;->buffer_get_float32_auto([BI)F

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lackmaniac/vescmonitor/DeviceControlActivity;->actualMinBatteryCurrent:F

    .line 1700
    const/16 v22, 0x1d

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-static {v0, v1}, Lackmaniac/vescmonitor/Utils;->buffer_get_float32_auto([BI)F

    move-result v22

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lackmaniac/vescmonitor/DeviceControlActivity;->actualMaxERPM:I

    .line 1702
    const/16 v22, 0x35

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-static {v0, v1}, Lackmaniac/vescmonitor/Utils;->buffer_get_float32_auto([BI)F

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lackmaniac/vescmonitor/DeviceControlActivity;->actualBatteryCutStart:F

    .line 1703
    const/16 v22, 0x39

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-static {v0, v1}, Lackmaniac/vescmonitor/Utils;->buffer_get_float32_auto([BI)F

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lackmaniac/vescmonitor/DeviceControlActivity;->actualBatteryCutEnd:F

    .line 1704
    const/16 v22, 0x3e

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-static {v0, v1}, Lackmaniac/vescmonitor/Utils;->buffer_get_float32_auto([BI)F

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lackmaniac/vescmonitor/DeviceControlActivity;->actualTempFetStart:F

    .line 1705
    const/16 v22, 0x42

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-static {v0, v1}, Lackmaniac/vescmonitor/Utils;->buffer_get_float32_auto([BI)F

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lackmaniac/vescmonitor/DeviceControlActivity;->actualTempFetEnd:F

    .line 1706
    const/16 v22, 0x46

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-static {v0, v1}, Lackmaniac/vescmonitor/Utils;->buffer_get_float32_auto([BI)F

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lackmaniac/vescmonitor/DeviceControlActivity;->actualTempMotorStart:F

    .line 1707
    const/16 v22, 0x4a

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-static {v0, v1}, Lackmaniac/vescmonitor/Utils;->buffer_get_float32_auto([BI)F

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lackmaniac/vescmonitor/DeviceControlActivity;->actualTempMotorEnd:F

    .line 1709
    invoke-static {}, Lackmaniac/vescmonitor/Utils;->getFirmwareVersion()Ljava/lang/String;

    move-result-object v22

    const-string v23, "3.26"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_4d

    .line 1710
    invoke-static {}, Lackmaniac/vescmonitor/Utils;->getFirmwareVersion()Ljava/lang/String;

    move-result-object v22

    const-string v23, "3.27"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_4d

    .line 1711
    invoke-static {}, Lackmaniac/vescmonitor/Utils;->getFirmwareVersion()Ljava/lang/String;

    move-result-object v22

    const-string v23, "3.28"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_4d

    .line 1712
    invoke-static {}, Lackmaniac/vescmonitor/Utils;->getFirmwareVersion()Ljava/lang/String;

    move-result-object v22

    const-string v23, "3.29"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_4d

    .line 1713
    invoke-static {}, Lackmaniac/vescmonitor/Utils;->getFirmwareVersion()Ljava/lang/String;

    move-result-object v22

    const-string v23, "3.30"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_4d

    .line 1714
    invoke-static {}, Lackmaniac/vescmonitor/Utils;->getFirmwareVersion()Ljava/lang/String;

    move-result-object v22

    const-string v23, "3.31"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_4d

    .line 1715
    invoke-static {}, Lackmaniac/vescmonitor/Utils;->getFirmwareVersion()Ljava/lang/String;

    move-result-object v22

    const-string v23, "3.32"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_4d

    .line 1716
    invoke-static {}, Lackmaniac/vescmonitor/Utils;->getFirmwareVersion()Ljava/lang/String;

    move-result-object v22

    const-string v23, "3.33"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_4d

    .line 1717
    invoke-static {}, Lackmaniac/vescmonitor/Utils;->getFirmwareVersion()Ljava/lang/String;

    move-result-object v22

    const-string v23, "3.34"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_4d

    .line 1718
    invoke-static {}, Lackmaniac/vescmonitor/Utils;->getFirmwareVersion()Ljava/lang/String;

    move-result-object v22

    const-string v23, "3.35"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_4d

    .line 1719
    invoke-static {}, Lackmaniac/vescmonitor/Utils;->getFirmwareVersion()Ljava/lang/String;

    move-result-object v22

    const-string v23, "3.36"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_4f

    .line 1720
    :cond_4d
    const/16 v22, 0x56

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-static {v0, v1}, Lackmaniac/vescmonitor/Utils;->buffer_get_float32_auto([BI)F

    move-result v22

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lackmaniac/vescmonitor/DeviceControlActivity;->actualMaxWatt:I

    .line 1736
    :goto_25
    move-object/from16 v0, p0

    iget v0, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->actualModeNumber:I

    move/from16 v22, v0

    if-nez v22, :cond_4e

    .line 1737
    move-object/from16 v0, p0

    iget v0, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->actualMaxMotorCurrent:F

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lackmaniac/vescmonitor/DeviceControlActivity;->defaultMaxMotorCurrent:F

    .line 1738
    move-object/from16 v0, p0

    iget v0, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->actualMaxBatteryCurrent:F

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lackmaniac/vescmonitor/DeviceControlActivity;->defaultMaxBatteryCurrent:F

    .line 1739
    move-object/from16 v0, p0

    iget v0, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->actualMinMotorCurrent:F

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lackmaniac/vescmonitor/DeviceControlActivity;->defaultMinMotorCurrent:F

    .line 1740
    move-object/from16 v0, p0

    iget v0, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->actualMinBatteryCurrent:F

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lackmaniac/vescmonitor/DeviceControlActivity;->defaultMinBatteryCurrent:F

    .line 1743
    :cond_4e
    invoke-direct/range {p0 .. p0}, Lackmaniac/vescmonitor/DeviceControlActivity;->updateSpeedModeButtonText()V

    goto/16 :goto_1c

    .line 1722
    :cond_4f
    const/16 v22, 0x5a

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-static {v0, v1}, Lackmaniac/vescmonitor/Utils;->buffer_get_float32_auto([BI)F

    move-result v22

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lackmaniac/vescmonitor/DeviceControlActivity;->actualMaxWatt:I

    goto :goto_25

    .line 1725
    :cond_50
    const/16 v22, 0x5

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-static {v0, v1}, Lackmaniac/vescmonitor/Utils;->buffer_get_int32([BI)I

    move-result v22

    move/from16 v0, v22

    div-int/lit16 v0, v0, 0x3e8

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lackmaniac/vescmonitor/DeviceControlActivity;->actualMaxMotorCurrent:F

    .line 1726
    const/16 v22, 0x9

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-static {v0, v1}, Lackmaniac/vescmonitor/Utils;->buffer_get_int32([BI)I

    move-result v22

    move/from16 v0, v22

    div-int/lit16 v0, v0, 0x3e8

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lackmaniac/vescmonitor/DeviceControlActivity;->actualMinMotorCurrent:F

    .line 1727
    const/16 v22, 0xd

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-static {v0, v1}, Lackmaniac/vescmonitor/Utils;->buffer_get_int32([BI)I

    move-result v22

    move/from16 v0, v22

    div-int/lit16 v0, v0, 0x3e8

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lackmaniac/vescmonitor/DeviceControlActivity;->actualMaxBatteryCurrent:F

    .line 1728
    const/16 v22, 0x11

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-static {v0, v1}, Lackmaniac/vescmonitor/Utils;->buffer_get_int32([BI)I

    move-result v22

    move/from16 v0, v22

    div-int/lit16 v0, v0, 0x3e8

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lackmaniac/vescmonitor/DeviceControlActivity;->actualMinBatteryCurrent:F

    .line 1730
    const/high16 v22, 0x447a0000    # 1000.0f

    const/16 v23, 0x31

    move-object/from16 v0, p1

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-static {v0, v1, v2}, Lackmaniac/vescmonitor/Utils;->buffer_get_float32([BFI)F

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lackmaniac/vescmonitor/DeviceControlActivity;->actualBatteryCutStart:F

    .line 1731
    const/high16 v22, 0x447a0000    # 1000.0f

    const/16 v23, 0x35

    move-object/from16 v0, p1

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-static {v0, v1, v2}, Lackmaniac/vescmonitor/Utils;->buffer_get_float32([BFI)F

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lackmaniac/vescmonitor/DeviceControlActivity;->actualBatteryCutEnd:F

    .line 1732
    const/high16 v22, 0x447a0000    # 1000.0f

    const/16 v23, 0x3b

    move-object/from16 v0, p1

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-static {v0, v1, v2}, Lackmaniac/vescmonitor/Utils;->buffer_get_float32([BFI)F

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lackmaniac/vescmonitor/DeviceControlActivity;->actualTempFetStart:F

    .line 1733
    const/high16 v22, 0x447a0000    # 1000.0f

    const/16 v23, 0x3f

    move-object/from16 v0, p1

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-static {v0, v1, v2}, Lackmaniac/vescmonitor/Utils;->buffer_get_float32([BFI)F

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lackmaniac/vescmonitor/DeviceControlActivity;->actualTempFetEnd:F

    goto/16 :goto_25

    .line 1744
    :cond_51
    const/16 v22, 0x0

    aget-byte v22, p1, v22

    invoke-static/range {v22 .. v22}, Lackmaniac/vescmonitor/Utils;->unsignedByteToInt(B)I

    move-result v22

    sget-object v23, Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;->COMM_GET_APPCONF:Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;

    invoke-static/range {v23 .. v23}, Lackmaniac/vescmonitor/Utils;->getCommId(Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;)I

    move-result v23

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_62

    .line 1745
    invoke-direct/range {p0 .. p0}, Lackmaniac/vescmonitor/DeviceControlActivity;->sendSerial()V

    .line 1747
    invoke-static {}, Lackmaniac/vescmonitor/Utils;->getFirmwareVersion()Ljava/lang/String;

    move-result-object v22

    const-string v23, "3"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_5b

    .line 1748
    const/16 v22, 0x1

    aget-byte v22, p1, v22

    invoke-static/range {v22 .. v22}, Lackmaniac/vescmonitor/Utils;->unsignedByteToInt(B)I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lackmaniac/vescmonitor/DeviceControlActivity;->controllerId:I

    .line 1750
    const/4 v13, 0x0

    .line 1751
    .local v13, "extra":I
    invoke-static {}, Lackmaniac/vescmonitor/Utils;->getFirmwareVersion()Ljava/lang/String;

    move-result-object v22

    const-string v23, "3.31"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v22

    if-nez v22, :cond_52

    .line 1752
    invoke-static {}, Lackmaniac/vescmonitor/Utils;->getFirmwareVersion()Ljava/lang/String;

    move-result-object v22

    const-string v23, "3.32"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v22

    if-nez v22, :cond_52

    .line 1753
    invoke-static {}, Lackmaniac/vescmonitor/Utils;->getFirmwareVersion()Ljava/lang/String;

    move-result-object v22

    const-string v23, "3.33"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v22

    if-nez v22, :cond_52

    .line 1754
    invoke-static {}, Lackmaniac/vescmonitor/Utils;->getFirmwareVersion()Ljava/lang/String;

    move-result-object v22

    const-string v23, "3.34"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v22

    if-nez v22, :cond_52

    .line 1755
    invoke-static {}, Lackmaniac/vescmonitor/Utils;->getFirmwareVersion()Ljava/lang/String;

    move-result-object v22

    const-string v23, "3.35"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v22

    if-nez v22, :cond_52

    .line 1756
    invoke-static {}, Lackmaniac/vescmonitor/Utils;->getFirmwareVersion()Ljava/lang/String;

    move-result-object v22

    const-string v23, "3.36"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v22

    if-nez v22, :cond_52

    .line 1757
    invoke-static {}, Lackmaniac/vescmonitor/Utils;->getFirmwareVersion()Ljava/lang/String;

    move-result-object v22

    const-string v23, "3.101"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_53

    .line 1758
    :cond_52
    const/4 v13, 0x1

    .line 1761
    :cond_53
    add-int/lit8 v22, v13, 0xd

    aget-byte v22, p1, v22

    invoke-static/range {v22 .. v22}, Lackmaniac/vescmonitor/Utils;->unsignedByteToInt(B)I

    move-result v8

    .line 1763
    .local v8, "appToUse":I
    sget-object v22, Lackmaniac/vescmonitor/Utils$APP_USE;->APP_NUNCHUK:Lackmaniac/vescmonitor/Utils$APP_USE;

    invoke-virtual/range {v22 .. v22}, Lackmaniac/vescmonitor/Utils$APP_USE;->ordinal()I

    move-result v22

    move/from16 v0, v22

    if-eq v8, v0, :cond_54

    sget-object v22, Lackmaniac/vescmonitor/Utils$APP_USE;->APP_NRF:Lackmaniac/vescmonitor/Utils$APP_USE;

    .line 1764
    invoke-virtual/range {v22 .. v22}, Lackmaniac/vescmonitor/Utils$APP_USE;->ordinal()I

    move-result v22

    move/from16 v0, v22

    if-ne v8, v0, :cond_58

    .line 1765
    :cond_54
    const-string v22, "VESC_SETTINGS"

    const/16 v23, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lackmaniac/vescmonitor/DeviceControlActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v22

    const-string v23, "IS_NUNCHUK"

    invoke-static/range {v23 .. v23}, Lackmaniac/vescmonitor/Utils;->getSettingsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x1

    invoke-interface/range {v22 .. v24}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1770
    :goto_26
    sget-object v22, Lackmaniac/vescmonitor/Utils$APP_USE;->APP_NUNCHUK:Lackmaniac/vescmonitor/Utils$APP_USE;

    invoke-virtual/range {v22 .. v22}, Lackmaniac/vescmonitor/Utils$APP_USE;->ordinal()I

    move-result v22

    move/from16 v0, v22

    if-eq v8, v0, :cond_55

    sget-object v22, Lackmaniac/vescmonitor/Utils$APP_USE;->APP_NRF:Lackmaniac/vescmonitor/Utils$APP_USE;

    invoke-virtual/range {v22 .. v22}, Lackmaniac/vescmonitor/Utils$APP_USE;->ordinal()I

    move-result v22

    move/from16 v0, v22

    if-ne v8, v0, :cond_5a

    .line 1771
    :cond_55
    invoke-static {}, Lackmaniac/vescmonitor/Utils;->getFirmwareVersion()Ljava/lang/String;

    move-result-object v22

    const-string v23, "3.27"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v22

    if-nez v22, :cond_56

    invoke-static {}, Lackmaniac/vescmonitor/Utils;->getFirmwareVersion()Ljava/lang/String;

    move-result-object v22

    const-string v23, "3.26"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_59

    .line 1772
    :cond_56
    add-int/lit8 v22, v13, 0x70

    aget-byte v22, p1, v22

    invoke-static/range {v22 .. v22}, Lackmaniac/vescmonitor/Utils;->unsignedByteToInt(B)I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lackmaniac/vescmonitor/DeviceControlActivity;->actualPPMMode:I

    .line 1780
    :goto_27
    move-object/from16 v0, p0

    iget v0, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->actualModeNumber:I

    move/from16 v22, v0

    if-nez v22, :cond_57

    .line 1781
    move-object/from16 v0, p0

    iget v0, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->actualPPMMode:I

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lackmaniac/vescmonitor/DeviceControlActivity;->defaultPPMMode:I

    .line 1782
    move-object/from16 v0, p0

    iget v0, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->actualMaxERPM:I

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lackmaniac/vescmonitor/DeviceControlActivity;->defaultMaxERPM:I

    .line 1812
    .end local v13    # "extra":I
    :cond_57
    :goto_28
    invoke-direct/range {p0 .. p0}, Lackmaniac/vescmonitor/DeviceControlActivity;->updateSpeedModeButtonText()V

    goto/16 :goto_1c

    .line 1767
    .restart local v13    # "extra":I
    :cond_58
    const-string v22, "VESC_SETTINGS"

    const/16 v23, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lackmaniac/vescmonitor/DeviceControlActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v22

    const-string v23, "IS_NUNCHUK"

    invoke-static/range {v23 .. v23}, Lackmaniac/vescmonitor/Utils;->getSettingsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x0

    invoke-interface/range {v22 .. v24}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_26

    .line 1774
    :cond_59
    add-int/lit8 v22, v13, 0x78

    aget-byte v22, p1, v22

    invoke-static/range {v22 .. v22}, Lackmaniac/vescmonitor/Utils;->unsignedByteToInt(B)I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lackmaniac/vescmonitor/DeviceControlActivity;->actualPPMMode:I

    goto :goto_27

    .line 1777
    :cond_5a
    add-int/lit8 v22, v13, 0xe

    aget-byte v22, p1, v22

    invoke-static/range {v22 .. v22}, Lackmaniac/vescmonitor/Utils;->unsignedByteToInt(B)I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lackmaniac/vescmonitor/DeviceControlActivity;->actualPPMMode:I

    goto :goto_27

    .line 1785
    .end local v8    # "appToUse":I
    .end local v13    # "extra":I
    :cond_5b
    const/16 v22, 0x1

    aget-byte v22, p1, v22

    invoke-static/range {v22 .. v22}, Lackmaniac/vescmonitor/Utils;->unsignedByteToInt(B)I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lackmaniac/vescmonitor/DeviceControlActivity;->controllerId:I

    .line 1787
    const/16 v22, 0xd

    aget-byte v22, p1, v22

    invoke-static/range {v22 .. v22}, Lackmaniac/vescmonitor/Utils;->unsignedByteToInt(B)I

    move-result v8

    .line 1789
    .restart local v8    # "appToUse":I
    sget-object v22, Lackmaniac/vescmonitor/Utils$APP_USE;->APP_NUNCHUK:Lackmaniac/vescmonitor/Utils$APP_USE;

    invoke-virtual/range {v22 .. v22}, Lackmaniac/vescmonitor/Utils$APP_USE;->ordinal()I

    move-result v22

    move/from16 v0, v22

    if-eq v8, v0, :cond_5c

    sget-object v22, Lackmaniac/vescmonitor/Utils$APP_USE;->APP_NRF:Lackmaniac/vescmonitor/Utils$APP_USE;

    .line 1790
    invoke-virtual/range {v22 .. v22}, Lackmaniac/vescmonitor/Utils$APP_USE;->ordinal()I

    move-result v22

    move/from16 v0, v22

    if-ne v8, v0, :cond_61

    .line 1791
    :cond_5c
    const-string v22, "VESC_SETTINGS"

    const/16 v23, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lackmaniac/vescmonitor/DeviceControlActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v22

    const-string v23, "IS_NUNCHUK"

    invoke-static/range {v23 .. v23}, Lackmaniac/vescmonitor/Utils;->getSettingsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x1

    invoke-interface/range {v22 .. v24}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1796
    :goto_29
    sget-object v22, Lackmaniac/vescmonitor/Utils$APP_USE;->APP_PPM:Lackmaniac/vescmonitor/Utils$APP_USE;

    invoke-virtual/range {v22 .. v22}, Lackmaniac/vescmonitor/Utils$APP_USE;->ordinal()I

    move-result v22

    move/from16 v0, v22

    if-eq v8, v0, :cond_5d

    sget-object v22, Lackmaniac/vescmonitor/Utils$APP_USE;->APP_PPM_UART:Lackmaniac/vescmonitor/Utils$APP_USE;

    invoke-virtual/range {v22 .. v22}, Lackmaniac/vescmonitor/Utils$APP_USE;->ordinal()I

    move-result v22

    move/from16 v0, v22

    if-ne v8, v0, :cond_5e

    .line 1797
    :cond_5d
    const/16 v22, 0xe

    aget-byte v22, p1, v22

    invoke-static/range {v22 .. v22}, Lackmaniac/vescmonitor/Utils;->unsignedByteToInt(B)I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lackmaniac/vescmonitor/DeviceControlActivity;->actualPPMMode:I

    .line 1798
    const/16 v22, 0x25

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-static {v0, v1}, Lackmaniac/vescmonitor/Utils;->buffer_get_int32([BI)I

    move-result v22

    move/from16 v0, v22

    div-int/lit16 v0, v0, 0x3e8

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lackmaniac/vescmonitor/DeviceControlActivity;->actualMaxERPM:I

    .line 1800
    :cond_5e
    sget-object v22, Lackmaniac/vescmonitor/Utils$APP_USE;->APP_NUNCHUK:Lackmaniac/vescmonitor/Utils$APP_USE;

    invoke-virtual/range {v22 .. v22}, Lackmaniac/vescmonitor/Utils$APP_USE;->ordinal()I

    move-result v22

    move/from16 v0, v22

    if-eq v8, v0, :cond_5f

    sget-object v22, Lackmaniac/vescmonitor/Utils$APP_USE;->APP_NRF:Lackmaniac/vescmonitor/Utils$APP_USE;

    invoke-virtual/range {v22 .. v22}, Lackmaniac/vescmonitor/Utils$APP_USE;->ordinal()I

    move-result v22

    move/from16 v0, v22

    if-ne v8, v0, :cond_60

    .line 1802
    :cond_5f
    const/16 v22, 0x55

    aget-byte v22, p1, v22

    invoke-static/range {v22 .. v22}, Lackmaniac/vescmonitor/Utils;->unsignedByteToInt(B)I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lackmaniac/vescmonitor/DeviceControlActivity;->actualPPMMode:I

    .line 1803
    const/16 v22, 0x5e

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-static {v0, v1}, Lackmaniac/vescmonitor/Utils;->buffer_get_int32([BI)I

    move-result v22

    move/from16 v0, v22

    div-int/lit16 v0, v0, 0x3e8

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lackmaniac/vescmonitor/DeviceControlActivity;->actualMaxERPM:I

    .line 1806
    :cond_60
    move-object/from16 v0, p0

    iget v0, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->actualModeNumber:I

    move/from16 v22, v0

    if-nez v22, :cond_57

    .line 1807
    move-object/from16 v0, p0

    iget v0, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->actualPPMMode:I

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lackmaniac/vescmonitor/DeviceControlActivity;->defaultPPMMode:I

    .line 1808
    move-object/from16 v0, p0

    iget v0, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->actualMaxERPM:I

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lackmaniac/vescmonitor/DeviceControlActivity;->defaultMaxERPM:I

    goto/16 :goto_28

    .line 1793
    :cond_61
    const-string v22, "VESC_SETTINGS"

    const/16 v23, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lackmaniac/vescmonitor/DeviceControlActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v22

    const-string v23, "IS_NUNCHUK"

    invoke-static/range {v23 .. v23}, Lackmaniac/vescmonitor/Utils;->getSettingsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x0

    invoke-interface/range {v22 .. v24}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_29

    .line 1813
    .end local v8    # "appToUse":I
    :cond_62
    const/16 v22, 0x0

    aget-byte v22, p1, v22

    invoke-static/range {v22 .. v22}, Lackmaniac/vescmonitor/Utils;->unsignedByteToInt(B)I

    move-result v22

    sget-object v23, Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;->COMM_PRINT:Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;

    invoke-static/range {v23 .. v23}, Lackmaniac/vescmonitor/Utils;->getCommId(Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;)I

    move-result v23

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_66

    .line 1816
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v22, v0

    add-int/lit8 v22, v22, -0x1

    move/from16 v0, v22

    new-array v0, v0, [B

    move-object/from16 v21, v0

    .line 1818
    .local v21, "textBytes":[B
    const/16 v22, 0x1

    const/16 v23, 0x0

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v24, v0

    add-int/lit8 v24, v24, -0x1

    move-object/from16 v0, p1

    move/from16 v1, v22

    move-object/from16 v2, v21

    move/from16 v3, v23

    move/from16 v4, v24

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1821
    :try_start_0
    new-instance v22, Ljava/lang/String;

    const-string v23, "ISO-8859-1"

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v20

    .line 1823
    .local v20, "terminalText":Ljava/lang/String;
    const-string v22, "Fault:"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_64

    .line 1824
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lackmaniac/vescmonitor/DeviceControlActivity;->writeErrorText(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1842
    .end local v20    # "terminalText":Ljava/lang/String;
    :cond_63
    :goto_2a
    invoke-direct/range {p0 .. p0}, Lackmaniac/vescmonitor/DeviceControlActivity;->sendSerial()V

    goto/16 :goto_1c

    .line 1825
    .restart local v20    # "terminalText":Ljava/lang/String;
    :cond_64
    :try_start_1
    const-string v22, "CAN:"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_65

    .line 1826
    sget-object v22, Lackmaniac/vescmonitor/Utils;->terminalCommands:Ljava/util/List;

    sget-object v23, Lackmaniac/vescmonitor/Utils$CAN_COMMANDS;->TERMINAL_FAULTS:Lackmaniac/vescmonitor/Utils$CAN_COMMANDS;

    invoke-virtual/range {v23 .. v23}, Lackmaniac/vescmonitor/Utils$CAN_COMMANDS;->ordinal()I

    move-result v23

    invoke-interface/range {v22 .. v23}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->isConnectedToSlave:Z

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->canControllerId:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-direct {v0, v1, v2, v3}, Lackmaniac/vescmonitor/DeviceControlActivity;->getTerminalCommand(Ljava/lang/String;ZI)V

    .line 1827
    const-string v22, "CAN:"

    const-string v23, ""

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v20

    .line 1828
    if-eqz v20, :cond_63

    const-string v22, ""

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_63

    .line 1829
    const-string v22, "CAN:"

    const-string v23, ""

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v22

    const-string v23, "\n"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v25, v0

    const/16 v22, 0x0

    move/from16 v23, v22

    :goto_2b
    move/from16 v0, v23

    move/from16 v1, v25

    if-ge v0, v1, :cond_63

    aget-object v10, v24, v23

    .line 1830
    .local v10, "controllerIdText":Ljava/lang/String;
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 1831
    .local v9, "controllerId":I
    sget-object v22, Lackmaniac/vescmonitor/Utils;->terminalCommands:Ljava/util/List;

    sget-object v26, Lackmaniac/vescmonitor/Utils$CAN_COMMANDS;->TERMINAL_FAULTS:Lackmaniac/vescmonitor/Utils$CAN_COMMANDS;

    invoke-virtual/range {v26 .. v26}, Lackmaniac/vescmonitor/Utils$CAN_COMMANDS;->ordinal()I

    move-result v26

    move-object/from16 v0, v22

    move/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    const/16 v26, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, v26

    invoke-direct {v0, v1, v2, v9}, Lackmaniac/vescmonitor/DeviceControlActivity;->getTerminalCommand(Ljava/lang/String;ZI)V

    .line 1829
    add-int/lit8 v22, v23, 0x1

    move/from16 v23, v22

    goto :goto_2b

    .line 1835
    .end local v9    # "controllerId":I
    .end local v10    # "controllerIdText":Ljava/lang/String;
    :cond_65
    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v22

    const-string v23, "No faults"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_63

    .line 1836
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lackmaniac/vescmonitor/DeviceControlActivity;->writeErrorText(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2a

    .line 1839
    .end local v20    # "terminalText":Ljava/lang/String;
    :catch_0
    move-exception v11

    .line 1840
    .local v11, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v11}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto/16 :goto_2a

    .line 1843
    .end local v11    # "e":Ljava/io/UnsupportedEncodingException;
    .end local v21    # "textBytes":[B
    :cond_66
    const/16 v22, 0x0

    aget-byte v22, p1, v22

    invoke-static/range {v22 .. v22}, Lackmaniac/vescmonitor/Utils;->unsignedByteToInt(B)I

    move-result v22

    sget-object v23, Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;->COMM_SET_MOTOR_TYPE:Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;

    invoke-static/range {v23 .. v23}, Lackmaniac/vescmonitor/Utils;->getCommId(Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;)I

    move-result v23

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_69

    .line 1844
    const/4 v15, 0x1

    .line 1845
    .restart local v15    # "ind":I
    add-int/lit8 v16, v15, 0x1

    .end local v15    # "ind":I
    .restart local v16    # "ind":I
    aget-byte v22, p1, v15

    invoke-static/range {v22 .. v22}, Lackmaniac/vescmonitor/Utils;->unsignedByteToInt(B)I

    move-result v18

    .line 1846
    .local v18, "newMotorType":I
    sget-object v22, Lackmaniac/vescmonitor/Utils$MC_MOTOR_TYPE;->MOTOR_TYPE_FOC:Lackmaniac/vescmonitor/Utils$MC_MOTOR_TYPE;

    invoke-virtual/range {v22 .. v22}, Lackmaniac/vescmonitor/Utils$MC_MOTOR_TYPE;->ordinal()I

    move-result v22

    move/from16 v0, v18

    move/from16 v1, v22

    if-ne v0, v1, :cond_67

    .line 1847
    const-string v22, "Changed Motor Type to FOC"

    const/16 v23, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1c

    .line 1848
    :cond_67
    sget-object v22, Lackmaniac/vescmonitor/Utils$MC_MOTOR_TYPE;->MOTOR_TYPE_BLDC:Lackmaniac/vescmonitor/Utils$MC_MOTOR_TYPE;

    invoke-virtual/range {v22 .. v22}, Lackmaniac/vescmonitor/Utils$MC_MOTOR_TYPE;->ordinal()I

    move-result v22

    move/from16 v0, v18

    move/from16 v1, v22

    if-ne v0, v1, :cond_68

    .line 1849
    const-string v22, "Changed Motor Type to BLDC"

    const/16 v23, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1c

    .line 1851
    :cond_68
    const-string v22, "Unknown Motor Type"

    const/16 v23, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1c

    .line 1857
    .end local v16    # "ind":I
    .end local v18    # "newMotorType":I
    :cond_69
    invoke-direct/range {p0 .. p0}, Lackmaniac/vescmonitor/DeviceControlActivity;->sendSerial()V

    .line 1858
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Error : "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const/16 v23, 0x0

    aget-byte v23, p1, v23

    invoke-static/range {v23 .. v23}, Lackmaniac/vescmonitor/Utils;->unsignedByteToInt(B)I

    move-result v23

    invoke-static/range {v23 .. v23}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lackmaniac/vescmonitor/DeviceControlActivity;->writeErrorText(Ljava/lang/String;)V

    goto/16 :goto_1c
.end method

.method private processRxMessages()V
    .locals 3

    .prologue
    .line 737
    const/4 v1, 0x1

    .line 738
    .local v1, "gotData":Z
    :goto_0
    if-eqz v1, :cond_1

    .line 739
    invoke-static {}, Lackmaniac/vescmonitor/Utils;->getNextFromRxList()[B

    move-result-object v0

    .line 740
    .local v0, "data":[B
    if-eqz v0, :cond_0

    .line 741
    invoke-static {v0}, Lackmaniac/vescmonitor/Utils;->processData([B)[B

    move-result-object v2

    invoke-direct {p0, v2}, Lackmaniac/vescmonitor/DeviceControlActivity;->processMessage([B)V

    goto :goto_0

    .line 743
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 748
    .end local v0    # "data":[B
    :cond_1
    return-void
.end method

.method private resetActualSpeedModeButtonText()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 3087
    iput v2, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->actualModeNumber:I

    .line 3088
    const/4 v0, -0x1

    iput v0, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->actualPPMMode:I

    .line 3089
    iput v2, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->actualMaxWatt:I

    .line 3090
    iput v2, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->actualMaxERPM:I

    .line 3091
    iput v1, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->actualMaxMotorCurrent:F

    .line 3092
    iput v1, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->actualMaxBatteryCurrent:F

    .line 3093
    iput v1, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->actualMinMotorCurrent:F

    .line 3094
    iput v1, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->actualMinBatteryCurrent:F

    .line 3095
    invoke-direct {p0}, Lackmaniac/vescmonitor/DeviceControlActivity;->updateSpeedModeButtonText()V

    .line 3096
    return-void
.end method

.method private sendSerial()V
    .locals 7

    .prologue
    .line 2634
    iget-boolean v2, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->mConnected:Z

    if-eqz v2, :cond_6

    .line 2637
    :try_start_0
    iget-object v2, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->specialTx:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_3

    .line 2638
    iget-object v2, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->mBluetoothLeService:Lackmaniac/vescmonitor/BluetoothLeService;

    if-eqz v2, :cond_2

    .line 2639
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->lastSerialSend:J

    .line 2640
    iget-object v2, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->specialTx:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 2641
    .local v0, "data":[B
    if-eqz v0, :cond_0

    .line 2642
    array-length v2, v0

    const/16 v3, 0x14

    if-gt v2, v3, :cond_1

    .line 2644
    iget-object v2, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->characteristicTX:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {v2, v0}, Landroid/bluetooth/BluetoothGattCharacteristic;->setValue([B)Z

    .line 2645
    iget-object v2, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->mBluetoothLeService:Lackmaniac/vescmonitor/BluetoothLeService;

    iget-object v3, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->characteristicTX:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {v2, v3}, Lackmaniac/vescmonitor/BluetoothLeService;->writeCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 2651
    :cond_0
    :goto_0
    iget-object v2, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->specialTx:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 2692
    .end local v0    # "data":[B
    :goto_1
    return-void

    .line 2647
    .restart local v0    # "data":[B
    :cond_1
    invoke-direct {p0, v0}, Lackmaniac/vescmonitor/DeviceControlActivity;->sendSplittedData([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2675
    .end local v0    # "data":[B
    :catch_0
    move-exception v1

    .line 2676
    .local v1, "ex":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 2677
    iget-object v2, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->mBluetoothLeService:Lackmaniac/vescmonitor/BluetoothLeService;

    iget-object v3, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lackmaniac/vescmonitor/BluetoothLeService;->connect(Ljava/lang/String;)Z

    goto :goto_1

    .line 2654
    .end local v1    # "ex":Ljava/lang/Exception;
    :cond_2
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->lastSerialSend:J

    goto :goto_1

    .line 2658
    :cond_3
    iget-object v2, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->mBluetoothLeService:Lackmaniac/vescmonitor/BluetoothLeService;

    if-eqz v2, :cond_5

    .line 2660
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->lastSerialSend:J

    .line 2661
    iget-boolean v2, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->isConnectedToSlave:Z

    if-eqz v2, :cond_4

    .line 2662
    iget-object v2, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->characteristicTX:Landroid/bluetooth/BluetoothGattCharacteristic;

    const/4 v3, 0x1

    new-array v3, v3, [B

    const/4 v4, 0x0

    sget-object v5, Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;->COMM_GET_VALUES:Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;

    invoke-static {v5}, Lackmaniac/vescmonitor/Utils;->getCommId(Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;)I

    move-result v5

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    const/4 v4, 0x1

    iget-boolean v5, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->isConnectedToSlave:Z

    iget v6, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->canControllerId:I

    invoke-static {v3, v4, v5, v6}, Lackmaniac/vescmonitor/Utils;->sendPacket([BIZI)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/bluetooth/BluetoothGattCharacteristic;->setValue([B)Z

    .line 2668
    :goto_2
    iget-object v2, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->mBluetoothLeService:Lackmaniac/vescmonitor/BluetoothLeService;

    iget-object v3, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->characteristicTX:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {v2, v3}, Lackmaniac/vescmonitor/BluetoothLeService;->writeCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    goto :goto_1

    .line 2666
    :cond_4
    iget-object v2, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->characteristicTX:Landroid/bluetooth/BluetoothGattCharacteristic;

    sget-object v3, Lackmaniac/vescmonitor/Utils;->COMM_GET_VALUES_BYTE:[B

    invoke-virtual {v2, v3}, Landroid/bluetooth/BluetoothGattCharacteristic;->setValue([B)Z

    goto :goto_2

    .line 2671
    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->lastSerialSend:J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 2690
    :cond_6
    iget-object v2, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->mBluetoothLeService:Lackmaniac/vescmonitor/BluetoothLeService;

    iget-object v3, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lackmaniac/vescmonitor/BluetoothLeService;->connect(Ljava/lang/String;)Z

    goto :goto_1
.end method

.method private sendSplittedData([B)V
    .locals 10
    .param p1, "data"    # [B

    .prologue
    .line 2695
    const/16 v0, 0x14

    .line 2696
    .local v0, "chunksize":I
    array-length v6, p1

    int-to-double v6, v6

    int-to-double v8, v0

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v4, v6

    .line 2698
    .local v4, "packetSize":I
    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 2699
    .local v5, "start":Ljava/lang/Integer;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v4, :cond_2

    .line 2700
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    add-int v2, v6, v0

    .line 2701
    .local v2, "end":I
    array-length v6, p1

    if-le v2, v6, :cond_0

    .line 2702
    array-length v2, p1

    .line 2705
    :cond_0
    iget-object v6, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->characteristicTX:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {p1, v7, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/bluetooth/BluetoothGattCharacteristic;->setValue([B)Z

    .line 2706
    iget-object v6, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->mBluetoothLeService:Lackmaniac/vescmonitor/BluetoothLeService;

    iget-object v7, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->characteristicTX:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {v6, v7}, Lackmaniac/vescmonitor/BluetoothLeService;->writeCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 2708
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    add-int/2addr v6, v0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 2709
    if-ge v3, v4, :cond_1

    .line 2711
    :try_start_0
    iget v6, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->packetDelay:I

    int-to-long v6, v6

    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2699
    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2712
    :catch_0
    move-exception v1

    .line 2713
    .local v1, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    .line 2717
    .end local v1    # "e":Ljava/lang/InterruptedException;
    .end local v2    # "end":I
    :cond_2
    return-void
.end method

.method private setActualSpeedModeAsDefault()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 3227
    iget-boolean v0, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->mConnected:Z

    if-eqz v0, :cond_2

    .line 3228
    invoke-static {}, Lackmaniac/vescmonitor/Utils;->getFirmwareVersion()Ljava/lang/String;

    move-result-object v0

    const-string v1, "2.5"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lackmaniac/vescmonitor/Utils;->getFirmwareVersion()Ljava/lang/String;

    move-result-object v0

    const-string v1, "3.1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3229
    :cond_0
    iget-object v0, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->specialTx:Ljava/util/List;

    new-array v1, v4, [B

    const/4 v2, 0x0

    sget-object v3, Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;->COMM_SET_CURRENT_CONF_AS_DEFAULT:Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;

    invoke-static {v3}, Lackmaniac/vescmonitor/Utils;->getCommId(Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;)I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    iget-boolean v2, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->isConnectedToSlave:Z

    iget v3, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->canControllerId:I

    invoke-static {v1, v4, v2, v3}, Lackmaniac/vescmonitor/Utils;->sendPacket([BIZI)[B

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3230
    invoke-direct {p0}, Lackmaniac/vescmonitor/DeviceControlActivity;->resetActualSpeedModeButtonText()V

    .line 3237
    :goto_0
    return-void

    .line 3232
    :cond_1
    const v0, 0x7f0d0067

    invoke-static {p0, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 3235
    :cond_2
    const v0, 0x7f0d00a6

    invoke-static {p0, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private setChangeMotorType()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 3240
    iget-boolean v3, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->mConnected:Z

    if-eqz v3, :cond_4

    .line 3241
    invoke-static {}, Lackmaniac/vescmonitor/Utils;->getFirmwareVersion()Ljava/lang/String;

    move-result-object v3

    const-string v4, "2.53"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {}, Lackmaniac/vescmonitor/Utils;->getFirmwareVersion()Ljava/lang/String;

    move-result-object v3

    const-string v4, "2.54"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {}, Lackmaniac/vescmonitor/Utils;->getFirmwareVersion()Ljava/lang/String;

    move-result-object v3

    const-string v4, "3.1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_0
    iget v3, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->actualMotorType:I

    sget-object v4, Lackmaniac/vescmonitor/Utils$MC_MOTOR_TYPE;->MOTOR_TYPE_BLDC:Lackmaniac/vescmonitor/Utils$MC_MOTOR_TYPE;

    .line 3242
    invoke-virtual {v4}, Lackmaniac/vescmonitor/Utils$MC_MOTOR_TYPE;->ordinal()I

    move-result v4

    if-eq v3, v4, :cond_1

    iget v3, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->actualMotorType:I

    sget-object v4, Lackmaniac/vescmonitor/Utils$MC_MOTOR_TYPE;->MOTOR_TYPE_FOC:Lackmaniac/vescmonitor/Utils$MC_MOTOR_TYPE;

    .line 3243
    invoke-virtual {v4}, Lackmaniac/vescmonitor/Utils$MC_MOTOR_TYPE;->ordinal()I

    move-result v4

    if-ne v3, v4, :cond_3

    .line 3245
    :cond_1
    const/4 v3, 0x2

    new-array v0, v3, [B

    .line 3246
    .local v0, "command":[B
    const/4 v1, 0x0

    .line 3247
    .local v1, "ind":I
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "ind":I
    .local v2, "ind":I
    sget-object v3, Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;->COMM_SET_MOTOR_TYPE:Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;

    invoke-static {v3}, Lackmaniac/vescmonitor/Utils;->getCommId(Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;)I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    .line 3249
    iget v3, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->actualMotorType:I

    sget-object v4, Lackmaniac/vescmonitor/Utils$MC_MOTOR_TYPE;->MOTOR_TYPE_BLDC:Lackmaniac/vescmonitor/Utils$MC_MOTOR_TYPE;

    invoke-virtual {v4}, Lackmaniac/vescmonitor/Utils$MC_MOTOR_TYPE;->ordinal()I

    move-result v4

    if-ne v3, v4, :cond_2

    .line 3250
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "ind":I
    .restart local v1    # "ind":I
    sget-object v3, Lackmaniac/vescmonitor/Utils$MC_MOTOR_TYPE;->MOTOR_TYPE_FOC:Lackmaniac/vescmonitor/Utils$MC_MOTOR_TYPE;

    invoke-virtual {v3}, Lackmaniac/vescmonitor/Utils$MC_MOTOR_TYPE;->ordinal()I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 3255
    :goto_0
    iget-object v3, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->specialTx:Ljava/util/List;

    iget-boolean v4, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->isConnectedToSlave:Z

    iget v5, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->canControllerId:I

    invoke-static {v0, v1, v4, v5}, Lackmaniac/vescmonitor/Utils;->sendPacket([BIZI)[B

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3257
    invoke-direct {p0}, Lackmaniac/vescmonitor/DeviceControlActivity;->resetActualSpeedModeButtonText()V

    .line 3265
    .end local v0    # "command":[B
    .end local v1    # "ind":I
    :goto_1
    return-void

    .line 3251
    .restart local v0    # "command":[B
    .restart local v2    # "ind":I
    :cond_2
    iget v3, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->actualMotorType:I

    sget-object v4, Lackmaniac/vescmonitor/Utils$MC_MOTOR_TYPE;->MOTOR_TYPE_FOC:Lackmaniac/vescmonitor/Utils$MC_MOTOR_TYPE;

    invoke-virtual {v4}, Lackmaniac/vescmonitor/Utils$MC_MOTOR_TYPE;->ordinal()I

    move-result v4

    if-ne v3, v4, :cond_5

    .line 3252
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "ind":I
    .restart local v1    # "ind":I
    sget-object v3, Lackmaniac/vescmonitor/Utils$MC_MOTOR_TYPE;->MOTOR_TYPE_BLDC:Lackmaniac/vescmonitor/Utils$MC_MOTOR_TYPE;

    invoke-virtual {v3}, Lackmaniac/vescmonitor/Utils$MC_MOTOR_TYPE;->ordinal()I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    goto :goto_0

    .line 3260
    .end local v0    # "command":[B
    .end local v1    # "ind":I
    :cond_3
    const v3, 0x7f0d0067

    invoke-static {p0, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 3263
    :cond_4
    const v3, 0x7f0d00a6

    invoke-static {p0, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .restart local v0    # "command":[B
    .restart local v2    # "ind":I
    :cond_5
    move v1, v2

    .end local v2    # "ind":I
    .restart local v1    # "ind":I
    goto :goto_0
.end method

.method private setupSerial()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 1923
    invoke-virtual {p0}, Lackmaniac/vescmonitor/DeviceControlActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d00a3

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1926
    .local v2, "unknownServiceString":Ljava/lang/String;
    iget-object v4, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->mBluetoothLeService:Lackmaniac/vescmonitor/BluetoothLeService;

    if-eqz v4, :cond_3

    .line 1927
    iget-object v4, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->mBluetoothLeService:Lackmaniac/vescmonitor/BluetoothLeService;

    invoke-virtual {v4}, Lackmaniac/vescmonitor/BluetoothLeService;->getSupportedGattServices()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothGattService;

    .line 1930
    .local v1, "gattService":Landroid/bluetooth/BluetoothGattService;
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1933
    .local v3, "uuid":Ljava/lang/String;
    invoke-static {v3, v2}, Lackmaniac/vescmonitor/SampleGattAttributes;->lookup(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "HM 10 Serial"

    if-ne v5, v6, :cond_0

    .line 1936
    sget-object v4, Lackmaniac/vescmonitor/BluetoothLeService;->UUID_HM_RX_TX:Ljava/util/UUID;

    invoke-virtual {v1, v4}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v4

    iput-object v4, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->characteristicTX:Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 1938
    iget-object v4, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->characteristicTX:Landroid/bluetooth/BluetoothGattCharacteristic;

    iget-object v5, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->characteristicTX:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {v4, v7}, Landroid/bluetooth/BluetoothGattCharacteristic;->setWriteType(I)V

    .line 1939
    iget-object v4, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->mBluetoothLeService:Lackmaniac/vescmonitor/BluetoothLeService;

    iget-object v5, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->characteristicTX:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {v4, v5, v7}, Lackmaniac/vescmonitor/BluetoothLeService;->setCharacteristicNotification(Landroid/bluetooth/BluetoothGattCharacteristic;Z)V

    .line 1941
    iget-object v4, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->rxBackupCall:Ljava/lang/Thread;

    invoke-virtual {v4}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    move-result-object v4

    sget-object v5, Ljava/lang/Thread$State;->RUNNABLE:Ljava/lang/Thread$State;

    invoke-virtual {v4, v5}, Ljava/lang/Thread$State;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->rxBackupCall:Ljava/lang/Thread;

    invoke-virtual {v4}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    move-result-object v4

    sget-object v5, Ljava/lang/Thread$State;->TIMED_WAITING:Ljava/lang/Thread$State;

    invoke-virtual {v4, v5}, Ljava/lang/Thread$State;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1943
    :try_start_0
    iget-object v4, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->rxBackupCall:Ljava/lang/Thread;

    invoke-virtual {v4}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/IllegalThreadStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1950
    :cond_1
    :goto_0
    iget-object v4, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->realTimeDataLoggingCsv:Ljava/lang/Thread;

    invoke-virtual {v4}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    move-result-object v4

    sget-object v5, Ljava/lang/Thread$State;->RUNNABLE:Ljava/lang/Thread$State;

    invoke-virtual {v4, v5}, Ljava/lang/Thread$State;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->realTimeDataLoggingCsv:Ljava/lang/Thread;

    invoke-virtual {v4}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    move-result-object v4

    sget-object v5, Ljava/lang/Thread$State;->TIMED_WAITING:Ljava/lang/Thread$State;

    invoke-virtual {v4, v5}, Ljava/lang/Thread$State;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 1952
    :try_start_1
    iget-object v4, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->realTimeDataLoggingCsv:Ljava/lang/Thread;

    invoke-virtual {v4}, Ljava/lang/Thread;->start()V
    :try_end_1
    .catch Ljava/lang/IllegalThreadStateException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1965
    .end local v1    # "gattService":Landroid/bluetooth/BluetoothGattService;
    .end local v3    # "uuid":Ljava/lang/String;
    :cond_2
    :goto_1
    return-void

    .line 1944
    .restart local v1    # "gattService":Landroid/bluetooth/BluetoothGattService;
    .restart local v3    # "uuid":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 1945
    .local v0, "ex":Ljava/lang/IllegalThreadStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalThreadStateException;->printStackTrace()V

    .line 1946
    iget-object v4, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->rxBackupCall:Ljava/lang/Thread;

    invoke-virtual {v4}, Ljava/lang/Thread;->run()V

    goto :goto_0

    .line 1953
    .end local v0    # "ex":Ljava/lang/IllegalThreadStateException;
    :catch_1
    move-exception v0

    .line 1954
    .restart local v0    # "ex":Ljava/lang/IllegalThreadStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalThreadStateException;->printStackTrace()V

    .line 1955
    iget-object v4, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->realTimeDataLoggingCsv:Ljava/lang/Thread;

    invoke-virtual {v4}, Ljava/lang/Thread;->run()V

    goto :goto_1

    .line 1963
    .end local v0    # "ex":Ljava/lang/IllegalThreadStateException;
    .end local v1    # "gattService":Landroid/bluetooth/BluetoothGattService;
    .end local v3    # "uuid":Ljava/lang/String;
    :cond_3
    invoke-direct {p0}, Lackmaniac/vescmonitor/DeviceControlActivity;->startGattService()V

    goto :goto_1
.end method

.method private shareScreen()V
    .locals 2
    .annotation build Landroid/support/annotation/RequiresApi;
        api = 0x15
    .end annotation

    .prologue
    .line 3563
    iget-object v0, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->mMediaProjection:Landroid/media/projection/MediaProjection;

    if-nez v0, :cond_0

    .line 3564
    iget-object v0, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->mProjectionManager:Landroid/media/projection/MediaProjectionManager;

    invoke-virtual {v0}, Landroid/media/projection/MediaProjectionManager;->createScreenCaptureIntent()Landroid/content/Intent;

    move-result-object v0

    const/16 v1, 0x3e8

    invoke-virtual {p0, v0, v1}, Lackmaniac/vescmonitor/DeviceControlActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 3569
    :goto_0
    return-void

    .line 3567
    :cond_0
    invoke-direct {p0}, Lackmaniac/vescmonitor/DeviceControlActivity;->createVirtualDisplay()Landroid/hardware/display/VirtualDisplay;

    move-result-object v0

    iput-object v0, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    .line 3568
    iget-object v0, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->start()V

    goto :goto_0
.end method

.method private showErrorTextDialog()V
    .locals 3

    .prologue
    .line 3179
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 3182
    .local v0, "alertDialog":Landroid/app/AlertDialog$Builder;
    const-string v1, "Error log"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 3183
    iget-object v1, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->errorTextString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 3185
    const-string v1, "Ok"

    new-instance v2, Lackmaniac/vescmonitor/DeviceControlActivity$22;

    invoke-direct {v2, p0}, Lackmaniac/vescmonitor/DeviceControlActivity$22;-><init>(Lackmaniac/vescmonitor/DeviceControlActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 3189
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 3190
    return-void
.end method

.method private showSetActualSettingsAsDefaultDialog()V
    .locals 3

    .prologue
    .line 3144
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 3147
    .local v0, "alertDialog":Landroid/app/AlertDialog$Builder;
    const-string v1, "Overwrite default Settings"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 3150
    const-string v1, "Do you want to set the actual VESC settings as the new default?"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 3152
    const-string v1, "OK"

    new-instance v2, Lackmaniac/vescmonitor/DeviceControlActivity$19;

    invoke-direct {v2, p0}, Lackmaniac/vescmonitor/DeviceControlActivity$19;-><init>(Lackmaniac/vescmonitor/DeviceControlActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 3159
    invoke-static {}, Lackmaniac/vescmonitor/Utils;->getFirmwareVersion()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2.54"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lackmaniac/vescmonitor/Utils;->getFirmwareVersion()Ljava/lang/String;

    move-result-object v1

    const-string v2, "3.1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    iget v1, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->actualMotorType:I

    sget-object v2, Lackmaniac/vescmonitor/Utils$MC_MOTOR_TYPE;->MOTOR_TYPE_BLDC:Lackmaniac/vescmonitor/Utils$MC_MOTOR_TYPE;

    .line 3160
    invoke-virtual {v2}, Lackmaniac/vescmonitor/Utils$MC_MOTOR_TYPE;->ordinal()I

    move-result v2

    if-eq v1, v2, :cond_1

    iget v1, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->actualMotorType:I

    sget-object v2, Lackmaniac/vescmonitor/Utils$MC_MOTOR_TYPE;->MOTOR_TYPE_FOC:Lackmaniac/vescmonitor/Utils$MC_MOTOR_TYPE;

    .line 3161
    invoke-virtual {v2}, Lackmaniac/vescmonitor/Utils$MC_MOTOR_TYPE;->ordinal()I

    move-result v2

    if-ne v1, v2, :cond_2

    .line 3162
    :cond_1
    const-string v1, "BLDC / FOC"

    new-instance v2, Lackmaniac/vescmonitor/DeviceControlActivity$20;

    invoke-direct {v2, p0}, Lackmaniac/vescmonitor/DeviceControlActivity$20;-><init>(Lackmaniac/vescmonitor/DeviceControlActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 3169
    :cond_2
    const-string v1, "Cancel"

    new-instance v2, Lackmaniac/vescmonitor/DeviceControlActivity$21;

    invoke-direct {v2, p0}, Lackmaniac/vescmonitor/DeviceControlActivity$21;-><init>(Lackmaniac/vescmonitor/DeviceControlActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 3175
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 3176
    return-void
.end method

.method private showSwitchMotorTypeAsDefaultDialog()V
    .locals 3

    .prologue
    .line 3193
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 3196
    .local v0, "alertDialog":Landroid/app/AlertDialog$Builder;
    const-string v1, "Switch Motor Type"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 3198
    iget v1, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->actualMotorType:I

    sget-object v2, Lackmaniac/vescmonitor/Utils$MC_MOTOR_TYPE;->MOTOR_TYPE_BLDC:Lackmaniac/vescmonitor/Utils$MC_MOTOR_TYPE;

    invoke-virtual {v2}, Lackmaniac/vescmonitor/Utils$MC_MOTOR_TYPE;->ordinal()I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 3199
    const-string v1, "Do you want to switch the Motor Type from BLDC to FOC?\n\nDon\'t do this if you don\'t know what that means. A correct BLDC and FOC motor detection is necessary.\nThis is at your own risk!!!\n\nOnly do this when you are not riding, because the board needs 3 seconds for a reboot"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 3211
    :cond_0
    :goto_0
    const-string v1, "OK"

    new-instance v2, Lackmaniac/vescmonitor/DeviceControlActivity$23;

    invoke-direct {v2, p0}, Lackmaniac/vescmonitor/DeviceControlActivity$23;-><init>(Lackmaniac/vescmonitor/DeviceControlActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 3217
    const-string v1, "Cancel"

    new-instance v2, Lackmaniac/vescmonitor/DeviceControlActivity$24;

    invoke-direct {v2, p0}, Lackmaniac/vescmonitor/DeviceControlActivity$24;-><init>(Lackmaniac/vescmonitor/DeviceControlActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 3223
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 3224
    return-void

    .line 3203
    :cond_1
    iget v1, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->actualMotorType:I

    sget-object v2, Lackmaniac/vescmonitor/Utils$MC_MOTOR_TYPE;->MOTOR_TYPE_FOC:Lackmaniac/vescmonitor/Utils$MC_MOTOR_TYPE;

    invoke-virtual {v2}, Lackmaniac/vescmonitor/Utils$MC_MOTOR_TYPE;->ordinal()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 3204
    const-string v1, "Do you want to switch the Motor Type from FOC to BLDC?\nDon\'t do this if you don\'t know what that means. A correct BLDC and FOC motor detection is necessary.\nThis is at your own risk!!!\n\nOnly do this when you are not riding, because the board needs 3 seconds for a reboot"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto :goto_0
.end method

.method private startGPS()V
    .locals 6

    .prologue
    .line 2323
    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {p0, v0}, Landroid/support/v4/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {p0, v0}, Landroid/support/v4/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 2340
    :cond_0
    :goto_0
    return-void

    .line 2333
    :cond_1
    iget-object v0, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->locationManager:Landroid/location/LocationManager;

    if-nez v0, :cond_2

    .line 2334
    const-string v0, "location"

    invoke-virtual {p0, v0}, Lackmaniac/vescmonitor/DeviceControlActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->locationManager:Landroid/location/LocationManager;

    .line 2335
    :cond_2
    iget-object v0, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->locationManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->mNmeaListener:Landroid/location/GpsStatus$NmeaListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->addNmeaListener(Landroid/location/GpsStatus$NmeaListener;)Z

    .line 2336
    iget-object v0, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->locationListener:Landroid/location/LocationListener;

    if-nez v0, :cond_0

    .line 2337
    new-instance v0, Lackmaniac/vescmonitor/DeviceControlActivity$MyLocationListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lackmaniac/vescmonitor/DeviceControlActivity$MyLocationListener;-><init>(Lackmaniac/vescmonitor/DeviceControlActivity;Lackmaniac/vescmonitor/DeviceControlActivity$1;)V

    iput-object v0, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->locationListener:Landroid/location/LocationListener;

    .line 2338
    iget-object v0, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->locationManager:Landroid/location/LocationManager;

    const-string v1, "gps"

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->locationListener:Landroid/location/LocationListener;

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    goto :goto_0
.end method

.method private startGattService()V
    .locals 3

    .prologue
    .line 1890
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lackmaniac/vescmonitor/BluetoothLeService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1891
    .local v0, "gattServiceIntent":Landroid/content/Intent;
    new-instance v1, Lackmaniac/vescmonitor/DeviceControlActivity$5;

    invoke-direct {v1, p0}, Lackmaniac/vescmonitor/DeviceControlActivity$5;-><init>(Lackmaniac/vescmonitor/DeviceControlActivity;)V

    iput-object v1, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 1912
    iget-object v1, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->mServiceConnection:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lackmaniac/vescmonitor/DeviceControlActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 1913
    return-void
.end method

.method private startMode(I)V
    .locals 56
    .param p1, "modeNumber"    # I

    .prologue
    .line 2838
    sget-object v51, Lackmaniac/vescmonitor/Utils$PPM_CONTROL_TYPE;->PPM_CTRL_TYPE_NONE:Lackmaniac/vescmonitor/Utils$PPM_CONTROL_TYPE;

    invoke-virtual/range {v51 .. v51}, Lackmaniac/vescmonitor/Utils$PPM_CONTROL_TYPE;->ordinal()I

    move-result v26

    .line 2839
    .local v26, "ppmMode":I
    const/16 v34, 0x0

    .line 2840
    .local v34, "useMaxWatt":Z
    const/16 v20, 0x0

    .line 2841
    .local v20, "maxWatt":I
    const/16 v18, 0x0

    .line 2842
    .local v18, "maxCurrentMotor":I
    const/16 v17, 0x0

    .line 2843
    .local v17, "maxBatteryCurent":I
    const/16 v22, 0x0

    .line 2844
    .local v22, "minCurrentMotor":I
    const/16 v21, 0x0

    .line 2845
    .local v21, "minBatteryCurent":I
    const/16 v19, 0x0

    .line 2847
    .local v19, "maxERPM":I
    const/16 v35, 0x0

    .line 2848
    .local v35, "useOtherSettingsForFront":Z
    const/16 v6, 0x9

    .line 2849
    .local v6, "frontControllerIdFirst":I
    const/16 v7, 0x9

    .line 2850
    .local v7, "frontControllerIdSecond":I
    const/4 v13, 0x0

    .line 2851
    .local v13, "frontUseMaxWatt":Z
    const/4 v10, 0x0

    .line 2852
    .local v10, "frontMaxWatt":I
    const/4 v9, 0x0

    .line 2853
    .local v9, "frontMaxCurrentMotor":I
    const/4 v8, 0x0

    .line 2854
    .local v8, "frontMaxBatteryCurent":I
    const/4 v12, 0x0

    .line 2855
    .local v12, "frontMinCurrentMotor":I
    const/4 v11, 0x0

    .line 2857
    .local v11, "frontMinBatteryCurent":I
    const/16 v38, 0x0

    .line 2858
    .local v38, "useSpecialThrottleCurve":Z
    const/16 v31, 0x0

    .line 2859
    .local v31, "tExp":F
    const/16 v32, 0x0

    .line 2860
    .local v32, "tExpBrake":F
    const/16 v33, 0x0

    .line 2862
    .local v33, "tExpMode":I
    const/16 v45, 0x0

    .line 2863
    .local v45, "y1":F
    const/16 v47, 0x0

    .line 2864
    .local v47, "y2":F
    const/16 v49, 0x0

    .line 2865
    .local v49, "y3":F
    const/16 v39, 0x0

    .line 2866
    .local v39, "x1":F
    const/16 v41, 0x0

    .line 2867
    .local v41, "x2":F
    const/16 v43, 0x0

    .line 2868
    .local v43, "x3":F
    const/16 v24, 0x0

    .line 2869
    .local v24, "newBezier_pos":F
    const/16 v46, 0x0

    .line 2870
    .local v46, "y1_neg":F
    const/16 v48, 0x0

    .line 2871
    .local v48, "y2_neg":F
    const/16 v50, 0x0

    .line 2872
    .local v50, "y3_neg":F
    const/16 v40, 0x0

    .line 2873
    .local v40, "x1_neg":F
    const/16 v42, 0x0

    .line 2874
    .local v42, "x2_neg":F
    const/16 v44, 0x0

    .line 2875
    .local v44, "x3_neg":F
    const/16 v23, 0x0

    .line 2876
    .local v23, "newBezier_neg":F
    const/16 v36, 0x0

    .line 2877
    .local v36, "useSpecialPIDBreakingEnabled":Z
    const/16 v25, 0x0

    .line 2878
    .local v25, "pidBreakingEnabled":Z
    const/16 v37, 0x0

    .line 2879
    .local v37, "useSpecialSpeedPID":Z
    const v30, 0x3b449ba6    # 0.003f

    .line 2880
    .local v30, "speedPIDkP":F
    const v29, 0x3b449ba6    # 0.003f

    .line 2881
    .local v29, "speedPIDkI":F
    const/16 v28, 0x0

    .line 2883
    .local v28, "speedPIDkD":F
    if-lez p1, :cond_5

    .line 2884
    const-string v51, "VESC_SETTINGS"

    const/16 v52, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v51

    move/from16 v2, v52

    invoke-virtual {v0, v1, v2}, Lackmaniac/vescmonitor/DeviceControlActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v27

    .line 2885
    .local v27, "settings":Landroid/content/SharedPreferences;
    const-string v51, "PPM_MODE"

    move/from16 v0, p1

    move-object/from16 v1, v51

    invoke-static {v0, v1}, Lackmaniac/vescmonitor/Utils;->getModeSettingsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v51

    sget-object v52, Lackmaniac/vescmonitor/Utils$PPM_CONTROL_TYPE;->PPM_CTRL_TYPE_NONE:Lackmaniac/vescmonitor/Utils$PPM_CONTROL_TYPE;

    invoke-virtual/range {v52 .. v52}, Lackmaniac/vescmonitor/Utils$PPM_CONTROL_TYPE;->ordinal()I

    move-result v52

    move-object/from16 v0, v27

    move-object/from16 v1, v51

    move/from16 v2, v52

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v26

    .line 2886
    const-string v51, "USE_MAX_WATT"

    move/from16 v0, p1

    move-object/from16 v1, v51

    invoke-static {v0, v1}, Lackmaniac/vescmonitor/Utils;->getModeSettingsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v51

    const/16 v52, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v51

    move/from16 v2, v52

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v34

    .line 2887
    const-string v51, "MAX_WATT"

    move/from16 v0, p1

    move-object/from16 v1, v51

    invoke-static {v0, v1}, Lackmaniac/vescmonitor/Utils;->getModeSettingsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v51

    const/16 v52, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v51

    move/from16 v2, v52

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v20

    .line 2888
    const-string v51, "MAX_MOTOR_C"

    move/from16 v0, p1

    move-object/from16 v1, v51

    invoke-static {v0, v1}, Lackmaniac/vescmonitor/Utils;->getModeSettingsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v51

    const/16 v52, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v51

    move/from16 v2, v52

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v18

    .line 2889
    const-string v51, "MAX_BATTERY_C"

    move/from16 v0, p1

    move-object/from16 v1, v51

    invoke-static {v0, v1}, Lackmaniac/vescmonitor/Utils;->getModeSettingsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v51

    const/16 v52, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v51

    move/from16 v2, v52

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v17

    .line 2890
    const-string v51, "MIN_MOTOR_C"

    move/from16 v0, p1

    move-object/from16 v1, v51

    invoke-static {v0, v1}, Lackmaniac/vescmonitor/Utils;->getModeSettingsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v51

    const/16 v52, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v51

    move/from16 v2, v52

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v22

    .line 2891
    const-string v51, "MIN_BATTERY_C"

    move/from16 v0, p1

    move-object/from16 v1, v51

    invoke-static {v0, v1}, Lackmaniac/vescmonitor/Utils;->getModeSettingsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v51

    const/16 v52, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v51

    move/from16 v2, v52

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v21

    .line 2893
    const-string v51, "DISTANCE_UNIT"

    invoke-static/range {v51 .. v51}, Lackmaniac/vescmonitor/Utils;->getSettingsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v51

    const/16 v52, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v51

    move/from16 v2, v52

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 2894
    .local v5, "distanceUnit":I
    const-string v51, "MAX_SPEED"

    move/from16 v0, p1

    move-object/from16 v1, v51

    invoke-static {v0, v1}, Lackmaniac/vescmonitor/Utils;->getModeSettingsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v51

    const/16 v52, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v51

    move/from16 v2, v52

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v52

    const/16 v51, 0x1

    move/from16 v0, v51

    if-ne v5, v0, :cond_8

    const v51, 0x3fcdfeda

    :goto_0
    div-float v51, v52, v51

    invoke-static {}, Lackmaniac/vescmonitor/Utils;->getSpeedDevider()F

    move-result v52

    mul-float v51, v51, v52

    move/from16 v0, v51

    float-to-int v0, v0

    move/from16 v19, v0

    .line 2895
    if-nez v19, :cond_0

    .line 2896
    const-string v51, "MAX_ERPM"

    move/from16 v0, p1

    move-object/from16 v1, v51

    invoke-static {v0, v1}, Lackmaniac/vescmonitor/Utils;->getModeSettingsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v51

    const/16 v52, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v51

    move/from16 v2, v52

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v19

    .line 2899
    :cond_0
    const-string v51, "KEY_USE_OTHER_SETTINGS_FOR_FRONT"

    move/from16 v0, p1

    move-object/from16 v1, v51

    invoke-static {v0, v1}, Lackmaniac/vescmonitor/Utils;->getModeSettingsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v51

    const/16 v52, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v51

    move/from16 v2, v52

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v35

    .line 2900
    const-string v51, "KEY_FRONT_CAN_CONTROLLERID_FIRST"

    move/from16 v0, p1

    move-object/from16 v1, v51

    invoke-static {v0, v1}, Lackmaniac/vescmonitor/Utils;->getModeSettingsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v51

    const/16 v52, 0x9

    move-object/from16 v0, v27

    move-object/from16 v1, v51

    move/from16 v2, v52

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    .line 2901
    const-string v51, "KEY_FRONT_CAN_CONTROLLERID_SECOND"

    move/from16 v0, p1

    move-object/from16 v1, v51

    invoke-static {v0, v1}, Lackmaniac/vescmonitor/Utils;->getModeSettingsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v51

    const/16 v52, 0x9

    move-object/from16 v0, v27

    move-object/from16 v1, v51

    move/from16 v2, v52

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    .line 2902
    const-string v51, "FRONT_USE_MAX_WATT"

    move/from16 v0, p1

    move-object/from16 v1, v51

    invoke-static {v0, v1}, Lackmaniac/vescmonitor/Utils;->getModeSettingsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v51

    const/16 v52, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v51

    move/from16 v2, v52

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v13

    .line 2903
    const-string v51, "FRONT_MAX_WATT"

    move/from16 v0, p1

    move-object/from16 v1, v51

    invoke-static {v0, v1}, Lackmaniac/vescmonitor/Utils;->getModeSettingsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v51

    const/16 v52, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v51

    move/from16 v2, v52

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v10

    .line 2904
    const-string v51, "FRONT_MAX_MOTOR_C"

    move/from16 v0, p1

    move-object/from16 v1, v51

    invoke-static {v0, v1}, Lackmaniac/vescmonitor/Utils;->getModeSettingsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v51

    const/16 v52, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v51

    move/from16 v2, v52

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v9

    .line 2905
    const-string v51, "FRONT_MAX_BATTERY_C"

    move/from16 v0, p1

    move-object/from16 v1, v51

    invoke-static {v0, v1}, Lackmaniac/vescmonitor/Utils;->getModeSettingsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v51

    const/16 v52, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v51

    move/from16 v2, v52

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v8

    .line 2906
    const-string v51, "FRONT_MIN_MOTOR_C"

    move/from16 v0, p1

    move-object/from16 v1, v51

    invoke-static {v0, v1}, Lackmaniac/vescmonitor/Utils;->getModeSettingsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v51

    const/16 v52, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v51

    move/from16 v2, v52

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v12

    .line 2907
    const-string v51, "FRONT_MIN_BATTERY_C"

    move/from16 v0, p1

    move-object/from16 v1, v51

    invoke-static {v0, v1}, Lackmaniac/vescmonitor/Utils;->getModeSettingsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v51

    const/16 v52, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v51

    move/from16 v2, v52

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v11

    .line 2909
    const-string v51, "USE_SPECIAL_THROOTLE_CURVE"

    move/from16 v0, p1

    move-object/from16 v1, v51

    invoke-static {v0, v1}, Lackmaniac/vescmonitor/Utils;->getModeSettingsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v51

    const/16 v52, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v51

    move/from16 v2, v52

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v38

    .line 2910
    if-eqz v38, :cond_1

    .line 2911
    invoke-static {}, Lackmaniac/vescmonitor/Utils;->getFirmwareVersion()Ljava/lang/String;

    move-result-object v51

    const-string v52, "3"

    invoke-virtual/range {v51 .. v52}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v51

    if-eqz v51, :cond_9

    .line 2912
    const-string v51, "THROTTLE_EXP"

    move/from16 v0, p1

    move-object/from16 v1, v51

    invoke-static {v0, v1}, Lackmaniac/vescmonitor/Utils;->getModeSettingsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v51

    const/16 v52, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v51

    move/from16 v2, v52

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v31

    .line 2913
    const-string v51, "THROTTLE_EXP_BRAKE"

    move/from16 v0, p1

    move-object/from16 v1, v51

    invoke-static {v0, v1}, Lackmaniac/vescmonitor/Utils;->getModeSettingsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v51

    const/16 v52, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v51

    move/from16 v2, v52

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v32

    .line 2914
    const-string v51, "THROTTLE_EXP_MODE"

    move/from16 v0, p1

    move-object/from16 v1, v51

    invoke-static {v0, v1}, Lackmaniac/vescmonitor/Utils;->getModeSettingsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v51

    const/16 v52, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v51

    move/from16 v2, v52

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v33

    .line 2934
    :cond_1
    :goto_1
    const-string v51, "KEY_USE_SPECIAL_BRAKING_PID"

    move/from16 v0, p1

    move-object/from16 v1, v51

    invoke-static {v0, v1}, Lackmaniac/vescmonitor/Utils;->getModeSettingsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v51

    const/16 v52, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v51

    move/from16 v2, v52

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v36

    .line 2935
    if-eqz v36, :cond_2

    .line 2936
    const-string v51, "KEY_PID_BRAKING_AT_ENABLED"

    move/from16 v0, p1

    move-object/from16 v1, v51

    invoke-static {v0, v1}, Lackmaniac/vescmonitor/Utils;->getModeSettingsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v51

    const/16 v52, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v51

    move/from16 v2, v52

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v25

    .line 2940
    :cond_2
    const-string v51, "VESC_SETTINGS"

    const/16 v52, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v51

    move/from16 v2, v52

    invoke-virtual {v0, v1, v2}, Lackmaniac/vescmonitor/DeviceControlActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v51

    const-string v52, "IS_NUNCHUK"

    invoke-static/range {v52 .. v52}, Lackmaniac/vescmonitor/Utils;->getSettingsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v52

    const/16 v53, 0x0

    invoke-interface/range {v51 .. v53}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v51

    if-nez v51, :cond_4

    .line 2941
    sget-object v51, Lackmaniac/vescmonitor/Utils$PPM_CONTROL_TYPE;->PPM_CTRL_TYPE_PID:Lackmaniac/vescmonitor/Utils$PPM_CONTROL_TYPE;

    invoke-virtual/range {v51 .. v51}, Lackmaniac/vescmonitor/Utils$PPM_CONTROL_TYPE;->ordinal()I

    move-result v51

    move/from16 v0, v26

    move/from16 v1, v51

    if-eq v0, v1, :cond_3

    sget-object v51, Lackmaniac/vescmonitor/Utils$PPM_CONTROL_TYPE;->PPM_CTRL_TYPE_PID_NOREV:Lackmaniac/vescmonitor/Utils$PPM_CONTROL_TYPE;

    .line 2942
    invoke-virtual/range {v51 .. v51}, Lackmaniac/vescmonitor/Utils$PPM_CONTROL_TYPE;->ordinal()I

    move-result v51

    move/from16 v0, v26

    move/from16 v1, v51

    if-ne v0, v1, :cond_4

    .line 2943
    :cond_3
    const/16 v36, 0x1

    .line 2944
    const/16 v25, 0x1

    .line 2949
    :cond_4
    const-string v51, "KEY_USE_SPECIAL_CRUISE_CONTROL_PID"

    move/from16 v0, p1

    move-object/from16 v1, v51

    invoke-static {v0, v1}, Lackmaniac/vescmonitor/Utils;->getModeSettingsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v51

    const/16 v52, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v51

    move/from16 v2, v52

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v37

    .line 2950
    if-eqz v37, :cond_5

    .line 2951
    const-string v51, "KEY_CRUISE_CONTROL_PID_KP"

    move/from16 v0, p1

    move-object/from16 v1, v51

    invoke-static {v0, v1}, Lackmaniac/vescmonitor/Utils;->getModeSettingsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v51

    const v52, 0x3b449ba6    # 0.003f

    move-object/from16 v0, v27

    move-object/from16 v1, v51

    move/from16 v2, v52

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v30

    .line 2952
    const-string v51, "KEY_CRUISE_CONTROL_PID_KI"

    move/from16 v0, p1

    move-object/from16 v1, v51

    invoke-static {v0, v1}, Lackmaniac/vescmonitor/Utils;->getModeSettingsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v51

    const v52, 0x3b449ba6    # 0.003f

    move-object/from16 v0, v27

    move-object/from16 v1, v51

    move/from16 v2, v52

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v29

    .line 2953
    const-string v51, "KEY_CRUISE_CONTROL_PID_KD"

    move/from16 v0, p1

    move-object/from16 v1, v51

    invoke-static {v0, v1}, Lackmaniac/vescmonitor/Utils;->getModeSettingsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v51

    const/16 v52, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v51

    move/from16 v2, v52

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v28

    .line 2957
    .end local v5    # "distanceUnit":I
    .end local v27    # "settings":Landroid/content/SharedPreferences;
    :cond_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->mConnected:Z

    move/from16 v51, v0

    if-eqz v51, :cond_1e

    .line 2958
    const/16 v51, 0x49

    move/from16 v0, v51

    new-array v4, v0, [B

    .line 2959
    .local v4, "command":[B
    const/4 v14, 0x0

    .line 2960
    .local v14, "ind":I
    invoke-static {}, Lackmaniac/vescmonitor/Utils;->getFirmwareVersion()Ljava/lang/String;

    move-result-object v51

    const-string v52, "3"

    invoke-virtual/range {v51 .. v52}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v51

    if-eqz v51, :cond_10

    .line 2961
    add-int/lit8 v15, v14, 0x1

    .end local v14    # "ind":I
    .local v15, "ind":I
    sget-object v51, Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;->COMM_SET_SPEED_MODE:Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;

    invoke-static/range {v51 .. v51}, Lackmaniac/vescmonitor/Utils;->getCommId(Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;)I

    move-result v51

    move/from16 v0, v51

    int-to-byte v0, v0

    move/from16 v51, v0

    aput-byte v51, v4, v14

    .line 2962
    add-int/lit8 v14, v15, 0x1

    .end local v15    # "ind":I
    .restart local v14    # "ind":I
    move/from16 v0, p1

    int-to-byte v0, v0

    move/from16 v51, v0

    aput-byte v51, v4, v15

    .line 2963
    add-int/lit8 v15, v14, 0x1

    .end local v14    # "ind":I
    .restart local v15    # "ind":I
    move/from16 v0, v26

    int-to-byte v0, v0

    move/from16 v51, v0

    aput-byte v51, v4, v14

    .line 2966
    if-eqz v34, :cond_a

    .end local v20    # "maxWatt":I
    :goto_2
    move/from16 v0, v20

    invoke-static {v4, v0, v15}, Lackmaniac/vescmonitor/Utils;->buffer_append_int16([BII)I

    move-result v14

    .line 2967
    .end local v15    # "ind":I
    .restart local v14    # "ind":I
    move/from16 v0, v18

    invoke-static {v4, v0, v14}, Lackmaniac/vescmonitor/Utils;->buffer_append_int16([BII)I

    move-result v14

    .line 2968
    move/from16 v0, v17

    invoke-static {v4, v0, v14}, Lackmaniac/vescmonitor/Utils;->buffer_append_int16([BII)I

    move-result v14

    .line 2969
    move/from16 v0, v22

    invoke-static {v4, v0, v14}, Lackmaniac/vescmonitor/Utils;->buffer_append_int16([BII)I

    move-result v14

    .line 2970
    move/from16 v0, v21

    invoke-static {v4, v0, v14}, Lackmaniac/vescmonitor/Utils;->buffer_append_int16([BII)I

    move-result v14

    .line 2971
    move/from16 v0, v19

    int-to-double v0, v0

    move-wide/from16 v52, v0

    const-wide/high16 v54, 0x4024000000000000L    # 10.0

    div-double v52, v52, v54

    move-wide/from16 v0, v52

    double-to-int v0, v0

    move/from16 v51, v0

    move/from16 v0, v51

    invoke-static {v4, v0, v14}, Lackmaniac/vescmonitor/Utils;->buffer_append_int16([BII)I

    move-result v14

    .line 2973
    add-int/lit8 v15, v14, 0x1

    .end local v14    # "ind":I
    .restart local v15    # "ind":I
    if-eqz v38, :cond_b

    const/16 v51, 0x1

    :goto_3
    move/from16 v0, v51

    int-to-byte v0, v0

    move/from16 v51, v0

    aput-byte v51, v4, v14

    .line 2974
    if-eqz v38, :cond_6

    .line 2975
    const/high16 v51, 0x42c80000    # 100.0f

    mul-float v51, v51, v31

    move/from16 v0, v51

    float-to-int v0, v0

    move/from16 v51, v0

    move/from16 v0, v51

    invoke-static {v4, v0, v15}, Lackmaniac/vescmonitor/Utils;->buffer_append_int16([BII)I

    move-result v14

    .line 2976
    .end local v15    # "ind":I
    .restart local v14    # "ind":I
    const/high16 v51, 0x42c80000    # 100.0f

    mul-float v51, v51, v32

    move/from16 v0, v51

    float-to-int v0, v0

    move/from16 v51, v0

    move/from16 v0, v51

    invoke-static {v4, v0, v14}, Lackmaniac/vescmonitor/Utils;->buffer_append_int16([BII)I

    move-result v14

    .line 2977
    add-int/lit8 v15, v14, 0x1

    .end local v14    # "ind":I
    .restart local v15    # "ind":I
    move/from16 v0, v33

    int-to-byte v0, v0

    move/from16 v51, v0

    aput-byte v51, v4, v14

    .line 2980
    :cond_6
    add-int/lit8 v14, v15, 0x1

    .end local v15    # "ind":I
    .restart local v14    # "ind":I
    if-eqz v36, :cond_c

    const/16 v51, 0x1

    :goto_4
    move/from16 v0, v51

    int-to-byte v0, v0

    move/from16 v51, v0

    aput-byte v51, v4, v15

    .line 2981
    if-eqz v36, :cond_23

    .line 2982
    add-int/lit8 v15, v14, 0x1

    .end local v14    # "ind":I
    .restart local v15    # "ind":I
    if-eqz v25, :cond_d

    const/16 v51, 0x1

    :goto_5
    move/from16 v0, v51

    int-to-byte v0, v0

    move/from16 v51, v0

    aput-byte v51, v4, v14

    .line 2985
    :goto_6
    add-int/lit8 v14, v15, 0x1

    .end local v15    # "ind":I
    .restart local v14    # "ind":I
    if-eqz v37, :cond_e

    const/16 v51, 0x1

    :goto_7
    move/from16 v0, v51

    int-to-byte v0, v0

    move/from16 v51, v0

    aput-byte v51, v4, v15

    .line 2986
    if-eqz v37, :cond_22

    .line 2987
    const v51, 0x49742400    # 1000000.0f

    mul-float v51, v51, v30

    move/from16 v0, v51

    float-to-int v0, v0

    move/from16 v51, v0

    move/from16 v0, v51

    invoke-static {v4, v0, v14}, Lackmaniac/vescmonitor/Utils;->buffer_append_int32([BII)I

    move-result v14

    .line 2988
    const v51, 0x49742400    # 1000000.0f

    mul-float v51, v51, v29

    move/from16 v0, v51

    float-to-int v0, v0

    move/from16 v51, v0

    move/from16 v0, v51

    invoke-static {v4, v0, v14}, Lackmaniac/vescmonitor/Utils;->buffer_append_int32([BII)I

    move-result v14

    .line 2989
    const v51, 0x49742400    # 1000000.0f

    mul-float v51, v51, v28

    move/from16 v0, v51

    float-to-int v0, v0

    move/from16 v51, v0

    move/from16 v0, v51

    invoke-static {v4, v0, v14}, Lackmaniac/vescmonitor/Utils;->buffer_append_int32([BII)I

    move-result v14

    move v15, v14

    .line 2992
    .end local v14    # "ind":I
    .restart local v15    # "ind":I
    :goto_8
    if-eqz v35, :cond_f

    .line 2993
    add-int/lit8 v14, v15, 0x1

    .end local v15    # "ind":I
    .restart local v14    # "ind":I
    int-to-byte v0, v6

    move/from16 v51, v0

    aput-byte v51, v4, v15

    .line 2994
    add-int/lit8 v15, v14, 0x1

    .end local v14    # "ind":I
    .restart local v15    # "ind":I
    int-to-byte v0, v7

    move/from16 v51, v0

    aput-byte v51, v4, v14

    .line 2995
    const/16 v51, 0x9

    move/from16 v0, v51

    if-ne v6, v0, :cond_7

    const/16 v51, 0x9

    move/from16 v0, v51

    if-eq v7, v0, :cond_1d

    .line 2997
    :cond_7
    invoke-static {v4, v10, v15}, Lackmaniac/vescmonitor/Utils;->buffer_append_int16([BII)I

    move-result v14

    .line 2998
    .end local v15    # "ind":I
    .restart local v14    # "ind":I
    invoke-static {v4, v9, v14}, Lackmaniac/vescmonitor/Utils;->buffer_append_int16([BII)I

    move-result v14

    .line 2999
    invoke-static {v4, v8, v14}, Lackmaniac/vescmonitor/Utils;->buffer_append_int16([BII)I

    move-result v14

    .line 3000
    invoke-static {v4, v12, v14}, Lackmaniac/vescmonitor/Utils;->buffer_append_int16([BII)I

    move-result v14

    .line 3001
    invoke-static {v4, v11, v14}, Lackmaniac/vescmonitor/Utils;->buffer_append_int16([BII)I

    move-result v14

    .line 3078
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->specialTx:Ljava/util/List;

    move-object/from16 v51, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->isConnectedToSlave:Z

    move/from16 v52, v0

    move-object/from16 v0, p0

    iget v0, v0, Lackmaniac/vescmonitor/DeviceControlActivity;->canControllerId:I

    move/from16 v53, v0

    move/from16 v0, v52

    move/from16 v1, v53

    invoke-static {v4, v14, v0, v1}, Lackmaniac/vescmonitor/Utils;->sendPacket([BIZI)[B

    move-result-object v52

    invoke-interface/range {v51 .. v52}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3079
    invoke-direct/range {p0 .. p0}, Lackmaniac/vescmonitor/DeviceControlActivity;->resetActualSpeedModeButtonText()V

    .line 3080
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v52

    const-wide/16 v54, 0x3e8

    add-long v52, v52, v54

    move-wide/from16 v0, v52

    move-object/from16 v2, p0

    iput-wide v0, v2, Lackmaniac/vescmonitor/DeviceControlActivity;->lastTimeAsked:J

    .line 3084
    .end local v4    # "command":[B
    .end local v14    # "ind":I
    :goto_a
    return-void

    .line 2894
    .restart local v5    # "distanceUnit":I
    .restart local v20    # "maxWatt":I
    .restart local v27    # "settings":Landroid/content/SharedPreferences;
    :cond_8
    const/high16 v51, 0x3f800000    # 1.0f

    goto/16 :goto_0

    .line 2916
    :cond_9
    const-string v51, "TC_Y1"

    move/from16 v0, p1

    move-object/from16 v1, v51

    invoke-static {v0, v1}, Lackmaniac/vescmonitor/Utils;->getModeSettingsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v51

    const/high16 v52, 0x3e800000    # 0.25f

    move-object/from16 v0, v27

    move-object/from16 v1, v51

    move/from16 v2, v52

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v45

    .line 2917
    const-string v51, "TC_Y2"

    move/from16 v0, p1

    move-object/from16 v1, v51

    invoke-static {v0, v1}, Lackmaniac/vescmonitor/Utils;->getModeSettingsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v51

    const/high16 v52, 0x3f000000    # 0.5f

    move-object/from16 v0, v27

    move-object/from16 v1, v51

    move/from16 v2, v52

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v47

    .line 2918
    const-string v51, "TC_Y3"

    move/from16 v0, p1

    move-object/from16 v1, v51

    invoke-static {v0, v1}, Lackmaniac/vescmonitor/Utils;->getModeSettingsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v51

    const/high16 v52, 0x3f400000    # 0.75f

    move-object/from16 v0, v27

    move-object/from16 v1, v51

    move/from16 v2, v52

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v49

    .line 2919
    const-string v51, "TC_X1"

    move/from16 v0, p1

    move-object/from16 v1, v51

    invoke-static {v0, v1}, Lackmaniac/vescmonitor/Utils;->getModeSettingsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v51

    const/high16 v52, 0x3e800000    # 0.25f

    move-object/from16 v0, v27

    move-object/from16 v1, v51

    move/from16 v2, v52

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v39

    .line 2920
    const-string v51, "TC_X2"

    move/from16 v0, p1

    move-object/from16 v1, v51

    invoke-static {v0, v1}, Lackmaniac/vescmonitor/Utils;->getModeSettingsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v51

    const/high16 v52, 0x3f000000    # 0.5f

    move-object/from16 v0, v27

    move-object/from16 v1, v51

    move/from16 v2, v52

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v41

    .line 2921
    const-string v51, "TC_X3"

    move/from16 v0, p1

    move-object/from16 v1, v51

    invoke-static {v0, v1}, Lackmaniac/vescmonitor/Utils;->getModeSettingsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v51

    const/high16 v52, 0x3f400000    # 0.75f

    move-object/from16 v0, v27

    move-object/from16 v1, v51

    move/from16 v2, v52

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v43

    .line 2922
    const-string v51, "TC_BEZIER_POS"

    move/from16 v0, p1

    move-object/from16 v1, v51

    invoke-static {v0, v1}, Lackmaniac/vescmonitor/Utils;->getModeSettingsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v51

    const/high16 v52, 0x3f800000    # 1.0f

    move-object/from16 v0, v27

    move-object/from16 v1, v51

    move/from16 v2, v52

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v24

    .line 2923
    const-string v51, "TC_NY1"

    move/from16 v0, p1

    move-object/from16 v1, v51

    invoke-static {v0, v1}, Lackmaniac/vescmonitor/Utils;->getModeSettingsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v51

    const/high16 v52, 0x3e800000    # 0.25f

    move-object/from16 v0, v27

    move-object/from16 v1, v51

    move/from16 v2, v52

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v46

    .line 2924
    const-string v51, "TC_NY2"

    move/from16 v0, p1

    move-object/from16 v1, v51

    invoke-static {v0, v1}, Lackmaniac/vescmonitor/Utils;->getModeSettingsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v51

    const/high16 v52, 0x3f000000    # 0.5f

    move-object/from16 v0, v27

    move-object/from16 v1, v51

    move/from16 v2, v52

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v48

    .line 2925
    const-string v51, "TC_NY3"

    move/from16 v0, p1

    move-object/from16 v1, v51

    invoke-static {v0, v1}, Lackmaniac/vescmonitor/Utils;->getModeSettingsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v51

    const/high16 v52, 0x3f400000    # 0.75f

    move-object/from16 v0, v27

    move-object/from16 v1, v51

    move/from16 v2, v52

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v50

    .line 2926
    const-string v51, "TC_NX1"

    move/from16 v0, p1

    move-object/from16 v1, v51

    invoke-static {v0, v1}, Lackmaniac/vescmonitor/Utils;->getModeSettingsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v51

    const/high16 v52, 0x3e800000    # 0.25f

    move-object/from16 v0, v27

    move-object/from16 v1, v51

    move/from16 v2, v52

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v40

    .line 2927
    const-string v51, "TC_NX2"

    move/from16 v0, p1

    move-object/from16 v1, v51

    invoke-static {v0, v1}, Lackmaniac/vescmonitor/Utils;->getModeSettingsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v51

    const/high16 v52, 0x3f000000    # 0.5f

    move-object/from16 v0, v27

    move-object/from16 v1, v51

    move/from16 v2, v52

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v42

    .line 2928
    const-string v51, "TC_NX3"

    move/from16 v0, p1

    move-object/from16 v1, v51

    invoke-static {v0, v1}, Lackmaniac/vescmonitor/Utils;->getModeSettingsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v51

    const/high16 v52, 0x3f400000    # 0.75f

    move-object/from16 v0, v27

    move-object/from16 v1, v51

    move/from16 v2, v52

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v44

    .line 2929
    const-string v51, "TC_BEZIER_NEG"

    move/from16 v0, p1

    move-object/from16 v1, v51

    invoke-static {v0, v1}, Lackmaniac/vescmonitor/Utils;->getModeSettingsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v51

    const/high16 v52, 0x3f800000    # 1.0f

    move-object/from16 v0, v27

    move-object/from16 v1, v51

    move/from16 v2, v52

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v23

    goto/16 :goto_1

    .line 2966
    .end local v5    # "distanceUnit":I
    .end local v27    # "settings":Landroid/content/SharedPreferences;
    .restart local v4    # "command":[B
    .restart local v15    # "ind":I
    :cond_a
    const/16 v20, 0x3a98

    goto/16 :goto_2

    .line 2973
    .end local v20    # "maxWatt":I
    :cond_b
    const/16 v51, 0x0

    goto/16 :goto_3

    .line 2980
    .end local v15    # "ind":I
    .restart local v14    # "ind":I
    :cond_c
    const/16 v51, 0x0

    goto/16 :goto_4

    .line 2982
    .end local v14    # "ind":I
    .restart local v15    # "ind":I
    :cond_d
    const/16 v51, 0x0

    goto/16 :goto_5

    .line 2985
    .end local v15    # "ind":I
    .restart local v14    # "ind":I
    :cond_e
    const/16 v51, 0x0

    goto/16 :goto_7

    .line 3004
    .end local v14    # "ind":I
    .restart local v15    # "ind":I
    :cond_f
    add-int/lit8 v14, v15, 0x1

    .end local v15    # "ind":I
    .restart local v14    # "ind":I
    const/16 v51, 0x9

    aput-byte v51, v4, v15

    .line 3005
    add-int/lit8 v15, v14, 0x1

    .end local v14    # "ind":I
    .restart local v15    # "ind":I
    const/16 v51, 0x9

    aput-byte v51, v4, v14

    move v14, v15

    .end local v15    # "ind":I
    .restart local v14    # "ind":I
    goto/16 :goto_9

    .line 3009
    .restart local v20    # "maxWatt":I
    :cond_10
    invoke-static {}, Lackmaniac/vescmonitor/Utils;->getFirmwareVersion()Ljava/lang/String;

    move-result-object v51

    const-string v52, "2.54"

    invoke-virtual/range {v51 .. v52}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    .line 3011
    .local v16, "isNewVersion":Z
    add-int/lit8 v15, v14, 0x1

    .end local v14    # "ind":I
    .restart local v15    # "ind":I
    sget-object v51, Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;->COMM_SET_SPEED_MODE:Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;

    invoke-static/range {v51 .. v51}, Lackmaniac/vescmonitor/Utils;->getCommId(Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;)I

    move-result v51

    move/from16 v0, v51

    int-to-byte v0, v0

    move/from16 v51, v0

    aput-byte v51, v4, v14

    .line 3012
    add-int/lit8 v14, v15, 0x1

    .end local v15    # "ind":I
    .restart local v14    # "ind":I
    move/from16 v0, p1

    int-to-byte v0, v0

    move/from16 v51, v0

    aput-byte v51, v4, v15

    .line 3013
    add-int/lit8 v15, v14, 0x1

    .end local v14    # "ind":I
    .restart local v15    # "ind":I
    move/from16 v0, v26

    int-to-byte v0, v0

    move/from16 v51, v0

    aput-byte v51, v4, v14

    .line 3015
    if-eqz v16, :cond_21

    .line 3016
    add-int/lit8 v14, v15, 0x1

    .end local v15    # "ind":I
    .restart local v14    # "ind":I
    if-eqz v34, :cond_16

    const/16 v51, 0x1

    :goto_b
    move/from16 v0, v51

    int-to-byte v0, v0

    move/from16 v51, v0

    aput-byte v51, v4, v15

    .line 3019
    :goto_c
    move/from16 v0, v20

    invoke-static {v4, v0, v14}, Lackmaniac/vescmonitor/Utils;->buffer_append_int16([BII)I

    move-result v14

    .line 3020
    move/from16 v0, v18

    invoke-static {v4, v0, v14}, Lackmaniac/vescmonitor/Utils;->buffer_append_int16([BII)I

    move-result v14

    .line 3021
    move/from16 v0, v17

    invoke-static {v4, v0, v14}, Lackmaniac/vescmonitor/Utils;->buffer_append_int16([BII)I

    move-result v14

    .line 3022
    move/from16 v0, v22

    invoke-static {v4, v0, v14}, Lackmaniac/vescmonitor/Utils;->buffer_append_int16([BII)I

    move-result v14

    .line 3023
    move/from16 v0, v21

    invoke-static {v4, v0, v14}, Lackmaniac/vescmonitor/Utils;->buffer_append_int16([BII)I

    move-result v14

    .line 3024
    move/from16 v0, v19

    int-to-double v0, v0

    move-wide/from16 v52, v0

    const-wide/high16 v54, 0x4024000000000000L    # 10.0

    div-double v52, v52, v54

    move-wide/from16 v0, v52

    double-to-int v0, v0

    move/from16 v51, v0

    move/from16 v0, v51

    invoke-static {v4, v0, v14}, Lackmaniac/vescmonitor/Utils;->buffer_append_int16([BII)I

    move-result v14

    .line 3026
    add-int/lit8 v15, v14, 0x1

    .end local v14    # "ind":I
    .restart local v15    # "ind":I
    if-eqz v38, :cond_17

    const/16 v51, 0x1

    :goto_d
    move/from16 v0, v51

    int-to-byte v0, v0

    move/from16 v51, v0

    aput-byte v51, v4, v14

    .line 3027
    if-eqz v16, :cond_11

    if-eqz v38, :cond_12

    .line 3028
    :cond_11
    const/high16 v51, 0x447a0000    # 1000.0f

    mul-float v51, v51, v45

    move/from16 v0, v51

    float-to-int v0, v0

    move/from16 v51, v0

    move/from16 v0, v51

    invoke-static {v4, v0, v15}, Lackmaniac/vescmonitor/Utils;->buffer_append_int16([BII)I

    move-result v14

    .line 3029
    .end local v15    # "ind":I
    .restart local v14    # "ind":I
    const/high16 v51, 0x447a0000    # 1000.0f

    mul-float v51, v51, v47

    move/from16 v0, v51

    float-to-int v0, v0

    move/from16 v51, v0

    move/from16 v0, v51

    invoke-static {v4, v0, v14}, Lackmaniac/vescmonitor/Utils;->buffer_append_int16([BII)I

    move-result v14

    .line 3030
    const/high16 v51, 0x447a0000    # 1000.0f

    mul-float v51, v51, v49

    move/from16 v0, v51

    float-to-int v0, v0

    move/from16 v51, v0

    move/from16 v0, v51

    invoke-static {v4, v0, v14}, Lackmaniac/vescmonitor/Utils;->buffer_append_int16([BII)I

    move-result v14

    .line 3031
    const/high16 v51, 0x447a0000    # 1000.0f

    mul-float v51, v51, v39

    move/from16 v0, v51

    float-to-int v0, v0

    move/from16 v51, v0

    move/from16 v0, v51

    invoke-static {v4, v0, v14}, Lackmaniac/vescmonitor/Utils;->buffer_append_int16([BII)I

    move-result v14

    .line 3032
    const/high16 v51, 0x447a0000    # 1000.0f

    mul-float v51, v51, v41

    move/from16 v0, v51

    float-to-int v0, v0

    move/from16 v51, v0

    move/from16 v0, v51

    invoke-static {v4, v0, v14}, Lackmaniac/vescmonitor/Utils;->buffer_append_int16([BII)I

    move-result v14

    .line 3033
    const/high16 v51, 0x447a0000    # 1000.0f

    mul-float v51, v51, v43

    move/from16 v0, v51

    float-to-int v0, v0

    move/from16 v51, v0

    move/from16 v0, v51

    invoke-static {v4, v0, v14}, Lackmaniac/vescmonitor/Utils;->buffer_append_int16([BII)I

    move-result v14

    .line 3034
    const/high16 v51, 0x42c80000    # 100.0f

    mul-float v51, v51, v24

    move/from16 v0, v51

    float-to-int v0, v0

    move/from16 v51, v0

    move/from16 v0, v51

    invoke-static {v4, v0, v14}, Lackmaniac/vescmonitor/Utils;->buffer_append_int16([BII)I

    move-result v14

    .line 3035
    const/high16 v51, 0x447a0000    # 1000.0f

    mul-float v51, v51, v46

    move/from16 v0, v51

    float-to-int v0, v0

    move/from16 v51, v0

    move/from16 v0, v51

    invoke-static {v4, v0, v14}, Lackmaniac/vescmonitor/Utils;->buffer_append_int16([BII)I

    move-result v14

    .line 3036
    const/high16 v51, 0x447a0000    # 1000.0f

    mul-float v51, v51, v48

    move/from16 v0, v51

    float-to-int v0, v0

    move/from16 v51, v0

    move/from16 v0, v51

    invoke-static {v4, v0, v14}, Lackmaniac/vescmonitor/Utils;->buffer_append_int16([BII)I

    move-result v14

    .line 3037
    const/high16 v51, 0x447a0000    # 1000.0f

    mul-float v51, v51, v50

    move/from16 v0, v51

    float-to-int v0, v0

    move/from16 v51, v0

    move/from16 v0, v51

    invoke-static {v4, v0, v14}, Lackmaniac/vescmonitor/Utils;->buffer_append_int16([BII)I

    move-result v14

    .line 3038
    const/high16 v51, 0x447a0000    # 1000.0f

    mul-float v51, v51, v40

    move/from16 v0, v51

    float-to-int v0, v0

    move/from16 v51, v0

    move/from16 v0, v51

    invoke-static {v4, v0, v14}, Lackmaniac/vescmonitor/Utils;->buffer_append_int16([BII)I

    move-result v14

    .line 3039
    const/high16 v51, 0x447a0000    # 1000.0f

    mul-float v51, v51, v42

    move/from16 v0, v51

    float-to-int v0, v0

    move/from16 v51, v0

    move/from16 v0, v51

    invoke-static {v4, v0, v14}, Lackmaniac/vescmonitor/Utils;->buffer_append_int16([BII)I

    move-result v14

    .line 3040
    const/high16 v51, 0x447a0000    # 1000.0f

    mul-float v51, v51, v44

    move/from16 v0, v51

    float-to-int v0, v0

    move/from16 v51, v0

    move/from16 v0, v51

    invoke-static {v4, v0, v14}, Lackmaniac/vescmonitor/Utils;->buffer_append_int16([BII)I

    move-result v14

    .line 3041
    const/high16 v51, 0x42c80000    # 100.0f

    mul-float v51, v51, v23

    move/from16 v0, v51

    float-to-int v0, v0

    move/from16 v51, v0

    move/from16 v0, v51

    invoke-static {v4, v0, v14}, Lackmaniac/vescmonitor/Utils;->buffer_append_int16([BII)I

    move-result v14

    move v15, v14

    .line 3044
    .end local v14    # "ind":I
    .restart local v15    # "ind":I
    :cond_12
    add-int/lit8 v14, v15, 0x1

    .end local v15    # "ind":I
    .restart local v14    # "ind":I
    if-eqz v36, :cond_18

    const/16 v51, 0x1

    :goto_e
    move/from16 v0, v51

    int-to-byte v0, v0

    move/from16 v51, v0

    aput-byte v51, v4, v15

    .line 3045
    if-eqz v16, :cond_13

    if-eqz v36, :cond_20

    .line 3046
    :cond_13
    add-int/lit8 v15, v14, 0x1

    .end local v14    # "ind":I
    .restart local v15    # "ind":I
    if-eqz v25, :cond_19

    const/16 v51, 0x1

    :goto_f
    move/from16 v0, v51

    int-to-byte v0, v0

    move/from16 v51, v0

    aput-byte v51, v4, v14

    .line 3049
    :goto_10
    add-int/lit8 v14, v15, 0x1

    .end local v15    # "ind":I
    .restart local v14    # "ind":I
    if-eqz v37, :cond_1a

    const/16 v51, 0x1

    :goto_11
    move/from16 v0, v51

    int-to-byte v0, v0

    move/from16 v51, v0

    aput-byte v51, v4, v15

    .line 3050
    if-eqz v16, :cond_14

    if-eqz v37, :cond_1f

    .line 3051
    :cond_14
    const v51, 0x49742400    # 1000000.0f

    mul-float v51, v51, v30

    move/from16 v0, v51

    float-to-int v0, v0

    move/from16 v51, v0

    move/from16 v0, v51

    invoke-static {v4, v0, v14}, Lackmaniac/vescmonitor/Utils;->buffer_append_int32([BII)I

    move-result v14

    .line 3052
    const v51, 0x49742400    # 1000000.0f

    mul-float v51, v51, v29

    move/from16 v0, v51

    float-to-int v0, v0

    move/from16 v51, v0

    move/from16 v0, v51

    invoke-static {v4, v0, v14}, Lackmaniac/vescmonitor/Utils;->buffer_append_int32([BII)I

    move-result v14

    .line 3053
    const v51, 0x49742400    # 1000000.0f

    mul-float v51, v51, v28

    move/from16 v0, v51

    float-to-int v0, v0

    move/from16 v51, v0

    move/from16 v0, v51

    invoke-static {v4, v0, v14}, Lackmaniac/vescmonitor/Utils;->buffer_append_int32([BII)I

    move-result v14

    move v15, v14

    .line 3056
    .end local v14    # "ind":I
    .restart local v15    # "ind":I
    :goto_12
    if-eqz v16, :cond_1d

    .line 3058
    if-eqz v35, :cond_1c

    .line 3059
    add-int/lit8 v14, v15, 0x1

    .end local v15    # "ind":I
    .restart local v14    # "ind":I
    int-to-byte v0, v6

    move/from16 v51, v0

    aput-byte v51, v4, v15

    .line 3060
    add-int/lit8 v15, v14, 0x1

    .end local v14    # "ind":I
    .restart local v15    # "ind":I
    int-to-byte v0, v7

    move/from16 v51, v0

    aput-byte v51, v4, v14

    .line 3061
    const/16 v51, 0x9

    move/from16 v0, v51

    if-ne v6, v0, :cond_15

    const/16 v51, 0x9

    move/from16 v0, v51

    if-eq v7, v0, :cond_1d

    .line 3063
    :cond_15
    add-int/lit8 v14, v15, 0x1

    .end local v15    # "ind":I
    .restart local v14    # "ind":I
    if-eqz v13, :cond_1b

    const/16 v51, 0x1

    :goto_13
    move/from16 v0, v51

    int-to-byte v0, v0

    move/from16 v51, v0

    aput-byte v51, v4, v15

    .line 3064
    invoke-static {v4, v10, v14}, Lackmaniac/vescmonitor/Utils;->buffer_append_int16([BII)I

    move-result v14

    .line 3065
    invoke-static {v4, v9, v14}, Lackmaniac/vescmonitor/Utils;->buffer_append_int16([BII)I

    move-result v14

    .line 3066
    invoke-static {v4, v8, v14}, Lackmaniac/vescmonitor/Utils;->buffer_append_int16([BII)I

    move-result v14

    .line 3067
    invoke-static {v4, v12, v14}, Lackmaniac/vescmonitor/Utils;->buffer_append_int16([BII)I

    move-result v14

    .line 3068
    invoke-static {v4, v11, v14}, Lackmaniac/vescmonitor/Utils;->buffer_append_int16([BII)I

    move-result v14

    goto/16 :goto_9

    .line 3016
    :cond_16
    const/16 v51, 0x0

    goto/16 :goto_b

    .line 3026
    .end local v14    # "ind":I
    .restart local v15    # "ind":I
    :cond_17
    const/16 v51, 0x0

    goto/16 :goto_d

    .line 3044
    .end local v15    # "ind":I
    .restart local v14    # "ind":I
    :cond_18
    const/16 v51, 0x0

    goto/16 :goto_e

    .line 3046
    .end local v14    # "ind":I
    .restart local v15    # "ind":I
    :cond_19
    const/16 v51, 0x0

    goto/16 :goto_f

    .line 3049
    .end local v15    # "ind":I
    .restart local v14    # "ind":I
    :cond_1a
    const/16 v51, 0x0

    goto/16 :goto_11

    .line 3063
    :cond_1b
    const/16 v51, 0x0

    goto :goto_13

    .line 3071
    .end local v14    # "ind":I
    .restart local v15    # "ind":I
    :cond_1c
    add-int/lit8 v14, v15, 0x1

    .end local v15    # "ind":I
    .restart local v14    # "ind":I
    const/16 v51, 0x9

    aput-byte v51, v4, v15

    .line 3072
    add-int/lit8 v15, v14, 0x1

    .end local v14    # "ind":I
    .restart local v15    # "ind":I
    const/16 v51, 0x9

    aput-byte v51, v4, v14

    .end local v16    # "isNewVersion":Z
    .end local v20    # "maxWatt":I
    :cond_1d
    move v14, v15

    .end local v15    # "ind":I
    .restart local v14    # "ind":I
    goto/16 :goto_9

    .line 3082
    .end local v4    # "command":[B
    .end local v14    # "ind":I
    .restart local v20    # "maxWatt":I
    :cond_1e
    invoke-virtual/range {p0 .. p0}, Lackmaniac/vescmonitor/DeviceControlActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v51

    const v52, 0x7f0d00a6

    invoke-virtual/range {v51 .. v52}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v51

    move-object/from16 v0, p0

    move-object/from16 v1, v51

    invoke-direct {v0, v1}, Lackmaniac/vescmonitor/DeviceControlActivity;->writeErrorText(Ljava/lang/String;)V

    goto/16 :goto_a

    .restart local v4    # "command":[B
    .restart local v14    # "ind":I
    .restart local v16    # "isNewVersion":Z
    :cond_1f
    move v15, v14

    .end local v14    # "ind":I
    .restart local v15    # "ind":I
    goto :goto_12

    .end local v15    # "ind":I
    .restart local v14    # "ind":I
    :cond_20
    move v15, v14

    .end local v14    # "ind":I
    .restart local v15    # "ind":I
    goto/16 :goto_10

    :cond_21
    move v14, v15

    .end local v15    # "ind":I
    .restart local v14    # "ind":I
    goto/16 :goto_c

    .end local v16    # "isNewVersion":Z
    .end local v20    # "maxWatt":I
    :cond_22
    move v15, v14

    .end local v14    # "ind":I
    .restart local v15    # "ind":I
    goto/16 :goto_8

    .end local v15    # "ind":I
    .restart local v14    # "ind":I
    :cond_23
    move v15, v14

    .end local v14    # "ind":I
    .restart local v15    # "ind":I
    goto/16 :goto_6
.end method

.method private stopGPS()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2343
    iget-object v0, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->locationManager:Landroid/location/LocationManager;

    if-eqz v0, :cond_0

    .line 2344
    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {p0, v0}, Landroid/support/v4/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {p0, v0}, Landroid/support/v4/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 2358
    :cond_0
    :goto_0
    return-void

    .line 2354
    :cond_1
    iget-object v0, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->locationManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->locationListener:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 2355
    iput-object v2, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->locationListener:Landroid/location/LocationListener;

    .line 2356
    iput-object v2, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->locationManager:Landroid/location/LocationManager;

    goto :goto_0
.end method

.method private stopScreenSharing()V
    .locals 1
    .annotation build Landroid/support/annotation/RequiresApi;
        api = 0x15
    .end annotation

    .prologue
    .line 3641
    iget-object v0, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    if-nez v0, :cond_1

    .line 3650
    :cond_0
    :goto_0
    return-void

    .line 3644
    :cond_1
    iget-object v0, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    invoke-virtual {v0}, Landroid/hardware/display/VirtualDisplay;->release()V

    .line 3647
    invoke-direct {p0}, Lackmaniac/vescmonitor/DeviceControlActivity;->destroyMediaProjection()V

    .line 3649
    sget-object v0, Lackmaniac/vescmonitor/DeviceControlActivity;->camera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    sget-object v0, Lackmaniac/vescmonitor/DeviceControlActivity;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    goto :goto_0
.end method

.method private stopStatusBar()V
    .locals 2

    .prologue
    .line 627
    :try_start_0
    iget-object v1, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->mNotifyMgr:Landroid/app/NotificationManager;

    if-eqz v1, :cond_0

    .line 629
    iget-object v1, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->mNotifyMgr:Landroid/app/NotificationManager;

    invoke-virtual {v1}, Landroid/app/NotificationManager;->cancelAll()V

    .line 630
    iget-object v1, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->notificationManagerIntent:Landroid/content/Intent;

    if-eqz v1, :cond_0

    .line 631
    iget-object v1, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->notificationManagerIntent:Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lackmaniac/vescmonitor/DeviceControlActivity;->stopService(Landroid/content/Intent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 637
    :cond_0
    :goto_0
    return-void

    .line 634
    :catch_0
    move-exception v0

    .line 635
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private toggleButtonClicked(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .annotation build Landroid/support/annotation/RequiresApi;
        api = 0x15
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 2486
    invoke-virtual {p0}, Lackmaniac/vescmonitor/DeviceControlActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02000c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    const-string v1, "VESC_SETTINGS"

    invoke-virtual {p0, v1, v3}, Lackmaniac/vescmonitor/DeviceControlActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "VIDEO_LAYOUT"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    aget-object v0, v0, v1

    const-string v1, "Left"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2487
    invoke-direct {p0, v3}, Lackmaniac/vescmonitor/DeviceControlActivity;->onCreateBackgroundCamera(Z)V

    .line 2488
    invoke-virtual {p0, p1}, Lackmaniac/vescmonitor/DeviceControlActivity;->onToggleScreenShare(Landroid/view/View;)V

    .line 2507
    :goto_0
    return-void

    .line 2495
    :cond_0
    invoke-virtual {p0}, Lackmaniac/vescmonitor/DeviceControlActivity;->getRequestedOrientation()I

    move-result v0

    if-nez v0, :cond_1

    .line 2496
    invoke-direct {p0, v3}, Lackmaniac/vescmonitor/DeviceControlActivity;->onCreateBackgroundCamera(Z)V

    .line 2497
    invoke-virtual {p0, p1}, Lackmaniac/vescmonitor/DeviceControlActivity;->onToggleScreenShare(Landroid/view/View;)V

    .line 2498
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lackmaniac/vescmonitor/DeviceControlActivity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 2500
    :cond_1
    invoke-virtual {p0, v3}, Lackmaniac/vescmonitor/DeviceControlActivity;->setRequestedOrientation(I)V

    goto :goto_0
.end method

.method private updateConnectionState(I)V
    .locals 1
    .param p1, "resourceId"    # I

    .prologue
    .line 2613
    new-instance v0, Lackmaniac/vescmonitor/DeviceControlActivity$15;

    invoke-direct {v0, p0, p1}, Lackmaniac/vescmonitor/DeviceControlActivity$15;-><init>(Lackmaniac/vescmonitor/DeviceControlActivity;I)V

    invoke-virtual {p0, v0}, Lackmaniac/vescmonitor/DeviceControlActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2621
    return-void
.end method

.method private updateSpeedModeButtonText()V
    .locals 9

    .prologue
    const v6, 0x7f0800c9

    const v5, 0x7f0800c8

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 3100
    const-string v1, "VESC_SETTINGS"

    invoke-virtual {p0, v1, v7}, Lackmaniac/vescmonitor/DeviceControlActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 3101
    .local v0, "settings":Landroid/content/SharedPreferences;
    iget-object v2, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->modeText:Landroid/widget/TextView;

    iget v1, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->actualModeNumber:I

    const-string v3, "NAME"

    invoke-static {v1, v3}, Lackmaniac/vescmonitor/Utils;->getModeSettingsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget v1, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->actualModeNumber:I

    if-nez v1, :cond_4

    const-string v1, "Default"

    :goto_0
    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3103
    const-string v1, "VESC_SETTINGS"

    invoke-virtual {p0, v1, v7}, Lackmaniac/vescmonitor/DeviceControlActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "IS_NUNCHUK"

    invoke-static {v2}, Lackmaniac/vescmonitor/Utils;->getSettingsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 3104
    iget-object v1, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->ppmModeText:Landroid/widget/TextView;

    iget v2, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->actualPPMMode:I

    invoke-static {v2, v7}, Lackmaniac/vescmonitor/Utils;->getChukModeText(IZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3106
    invoke-static {}, Lackmaniac/vescmonitor/Utils;->getFirmwareVersion()Ljava/lang/String;

    move-result-object v1

    const-string v2, "3"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3107
    iget v1, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->actualPPMMode:I

    sget-object v2, Lackmaniac/vescmonitor/Utils$CHUK_CONTROL_TYPE;->CHUK_CTRL_TYPE_WATT:Lackmaniac/vescmonitor/Utils$CHUK_CONTROL_TYPE;

    invoke-virtual {v2}, Lackmaniac/vescmonitor/Utils$CHUK_CONTROL_TYPE;->ordinal()I

    move-result v2

    if-eq v1, v2, :cond_0

    iget v1, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->actualPPMMode:I

    sget-object v2, Lackmaniac/vescmonitor/Utils$CHUK_CONTROL_TYPE;->CHUK_CTRL_TYPE_WATT_NOREV:Lackmaniac/vescmonitor/Utils$CHUK_CONTROL_TYPE;

    .line 3108
    invoke-virtual {v2}, Lackmaniac/vescmonitor/Utils$CHUK_CONTROL_TYPE;->ordinal()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 3109
    iput-boolean v7, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->actualUseMaxWatt:Z

    .line 3124
    :cond_0
    :goto_1
    const-string v1, "FIRWMWARE_VERSION"

    invoke-static {v1}, Lackmaniac/vescmonitor/Utils;->getSettingsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "2.18"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "2.54"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-boolean v1, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->actualUseMaxWatt:Z

    if-nez v1, :cond_6

    .line 3125
    invoke-virtual {p0, v5}, Lackmaniac/vescmonitor/DeviceControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0d0061

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 3126
    invoke-virtual {p0, v6}, Lackmaniac/vescmonitor/DeviceControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3127
    iget v1, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->actualMotorType:I

    sget-object v2, Lackmaniac/vescmonitor/Utils$MC_MOTOR_TYPE;->MOTOR_TYPE_BLDC:Lackmaniac/vescmonitor/Utils$MC_MOTOR_TYPE;

    invoke-virtual {v2}, Lackmaniac/vescmonitor/Utils$MC_MOTOR_TYPE;->ordinal()I

    move-result v2

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->maxWattText:Landroid/widget/TextView;

    const/high16 v2, 0x7f0d0000

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 3128
    :cond_1
    iget v1, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->actualMotorType:I

    sget-object v2, Lackmaniac/vescmonitor/Utils$MC_MOTOR_TYPE;->MOTOR_TYPE_DC:Lackmaniac/vescmonitor/Utils$MC_MOTOR_TYPE;

    invoke-virtual {v2}, Lackmaniac/vescmonitor/Utils$MC_MOTOR_TYPE;->ordinal()I

    move-result v2

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->maxWattText:Landroid/widget/TextView;

    const v2, 0x7f0d0001

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 3129
    :cond_2
    iget v1, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->actualMotorType:I

    sget-object v2, Lackmaniac/vescmonitor/Utils$MC_MOTOR_TYPE;->MOTOR_TYPE_FOC:Lackmaniac/vescmonitor/Utils$MC_MOTOR_TYPE;

    invoke-virtual {v2}, Lackmaniac/vescmonitor/Utils$MC_MOTOR_TYPE;->ordinal()I

    move-result v2

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->maxWattText:Landroid/widget/TextView;

    const v2, 0x7f0d0004

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 3136
    :cond_3
    :goto_2
    iget-object v1, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->maxSpeedText:Landroid/widget/TextView;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "%.0f"

    new-array v4, v8, [Ljava/lang/Object;

    iget v5, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->actualMaxERPM:I

    int-to-float v5, v5

    invoke-static {}, Lackmaniac/vescmonitor/Utils;->getSpeedDevider()F

    move-result v6

    div-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3137
    iget-object v1, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->maxMotorCurrentText:Landroid/widget/TextView;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "%.0f"

    new-array v4, v8, [Ljava/lang/Object;

    iget v5, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->actualMaxMotorCurrent:F

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3138
    iget-object v1, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->maxBatteryCurrentText:Landroid/widget/TextView;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "%.0f"

    new-array v4, v8, [Ljava/lang/Object;

    iget v5, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->actualMaxBatteryCurrent:F

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3139
    iget-object v1, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->minMotorCurrentText:Landroid/widget/TextView;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "%.0f"

    new-array v4, v8, [Ljava/lang/Object;

    iget v5, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->actualMinMotorCurrent:F

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3140
    iget-object v1, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->minBatteryCurrentText:Landroid/widget/TextView;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "%.0f"

    new-array v4, v8, [Ljava/lang/Object;

    iget v5, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->actualMinBatteryCurrent:F

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3141
    return-void

    .line 3101
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Mode "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->actualModeNumber:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 3114
    :cond_5
    iget-object v1, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->ppmModeText:Landroid/widget/TextView;

    iget v2, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->actualPPMMode:I

    invoke-static {v2, v7}, Lackmaniac/vescmonitor/Utils;->getPPMModeText(IZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3115
    invoke-static {}, Lackmaniac/vescmonitor/Utils;->getFirmwareVersion()Ljava/lang/String;

    move-result-object v1

    const-string v2, "3"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3116
    iget v1, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->actualPPMMode:I

    sget-object v2, Lackmaniac/vescmonitor/Utils$PPM_CONTROL_TYPE;->PPM_CTRL_TYPE_WATT:Lackmaniac/vescmonitor/Utils$PPM_CONTROL_TYPE;

    invoke-virtual {v2}, Lackmaniac/vescmonitor/Utils$PPM_CONTROL_TYPE;->ordinal()I

    move-result v2

    if-eq v1, v2, :cond_0

    iget v1, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->actualPPMMode:I

    sget-object v2, Lackmaniac/vescmonitor/Utils$PPM_CONTROL_TYPE;->PPM_CTRL_TYPE_WATT_NOREV_BRAKE:Lackmaniac/vescmonitor/Utils$PPM_CONTROL_TYPE;

    .line 3117
    invoke-virtual {v2}, Lackmaniac/vescmonitor/Utils$PPM_CONTROL_TYPE;->ordinal()I

    move-result v2

    if-eq v1, v2, :cond_0

    iget v1, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->actualPPMMode:I

    sget-object v2, Lackmaniac/vescmonitor/Utils$PPM_CONTROL_TYPE;->PPM_CTRL_TYPE_PID_NOACCELERATION:Lackmaniac/vescmonitor/Utils$PPM_CONTROL_TYPE;

    .line 3118
    invoke-virtual {v2}, Lackmaniac/vescmonitor/Utils$PPM_CONTROL_TYPE;->ordinal()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 3119
    iput-boolean v7, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->actualUseMaxWatt:Z

    goto/16 :goto_1

    .line 3131
    :cond_6
    invoke-virtual {p0, v6}, Lackmaniac/vescmonitor/DeviceControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const-string v2, " W"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3132
    iget-object v1, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->maxWattText:Landroid/widget/TextView;

    iget v2, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->actualMaxWatt:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3133
    invoke-virtual {p0, v5}, Lackmaniac/vescmonitor/DeviceControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0d0056

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_2
.end method

.method private updateStatusBar()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x1

    const/4 v4, 0x0

    .line 641
    iget-object v7, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    if-eqz v7, :cond_2

    iget-object v7, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->mNotifyMgr:Landroid/app/NotificationManager;

    if-eqz v7, :cond_2

    .line 642
    iget-object v7, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->rangeText:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 644
    .local v3, "range":Ljava/lang/String;
    const-string v7, "0.0"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 645
    const-string v7, "VESC_SETTINGS"

    invoke-virtual {p0, v7, v12}, Lackmaniac/vescmonitor/DeviceControlActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 646
    .local v5, "settings":Landroid/content/SharedPreferences;
    const-string v7, "BI_TOTAL_KM"

    invoke-static {v7}, Lackmaniac/vescmonitor/Utils;->getSettingsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v7, v4}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v8

    iget v7, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->distanceUnit:I

    if-ne v7, v11, :cond_3

    const v7, 0x3fcdfeda

    :goto_0
    div-float v0, v8, v7

    .line 647
    .local v0, "biDistance":F
    const-string v7, "BI_WH_DRAWN"

    invoke-static {v7}, Lackmaniac/vescmonitor/Utils;->getSettingsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v7, v4}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v2

    .line 648
    .local v2, "biWhDrawn":F
    const-string v7, "BI_WH_CHARGED"

    invoke-static {v7}, Lackmaniac/vescmonitor/Utils;->getSettingsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v7, v4}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v1

    .line 649
    .local v1, "biWhCharged":F
    sub-float v7, v2, v1

    div-float v6, v7, v0

    .line 650
    .local v6, "whperkm":F
    cmpl-float v7, v6, v4

    if-lez v7, :cond_0

    iget v7, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->batteryWh:I

    int-to-float v7, v7

    iget v8, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->batteryPercent:I

    int-to-float v8, v8

    const/high16 v9, 0x42c80000    # 100.0f

    div-float/2addr v8, v9

    mul-float/2addr v7, v8

    div-float v4, v7, v6

    .line 653
    .local v4, "rangeFloat":F
    :cond_0
    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v8, "%.1f"

    new-array v9, v11, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    aput-object v10, v9, v12

    invoke-static {v7, v8, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 656
    .end local v0    # "biDistance":F
    .end local v1    # "biWhCharged":F
    .end local v2    # "biWhDrawn":F
    .end local v4    # "rangeFloat":F
    .end local v5    # "settings":Landroid/content/SharedPreferences;
    .end local v6    # "whperkm":F
    :cond_1
    iget-object v8, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->voltLabel:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, " "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v9, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->voltText:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, "V Range "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const v7, 0x7f080189

    invoke-virtual {p0, v7}, Lackmaniac/vescmonitor/DeviceControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 658
    iget-object v7, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->mNotifyMgr:Landroid/app/NotificationManager;

    iget-object v8, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v8}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v8

    invoke-virtual {v7, v11, v8}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 660
    .end local v3    # "range":Ljava/lang/String;
    :cond_2
    return-void

    .line 646
    .restart local v3    # "range":Ljava/lang/String;
    .restart local v5    # "settings":Landroid/content/SharedPreferences;
    :cond_3
    const/high16 v7, 0x3f800000    # 1.0f

    goto/16 :goto_0
.end method

.method private writeErrorText(Ljava/lang/String;)V
    .locals 3
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 751
    iget-object v0, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->errorText:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->errorTextString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 752
    iget-object v0, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->errorText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->errorTextString:Ljava/lang/String;

    .line 753
    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;
    .annotation build Landroid/support/annotation/RequiresApi;
        api = 0x15
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 3453
    const/16 v0, 0x3e8

    if-eq p1, v0, :cond_0

    .line 3466
    :goto_0
    return-void

    .line 3456
    :cond_0
    const/4 v0, -0x1

    if-eq p2, v0, :cond_1

    .line 3457
    const-string v0, "Screen Cast Permission Denied"

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 3458
    iget-object v0, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->mToggleVideoButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    goto :goto_0

    .line 3461
    :cond_1
    new-instance v0, Lackmaniac/vescmonitor/DeviceControlActivity$MediaProjectionCallback;

    invoke-direct {v0, p0, v2}, Lackmaniac/vescmonitor/DeviceControlActivity$MediaProjectionCallback;-><init>(Lackmaniac/vescmonitor/DeviceControlActivity;Lackmaniac/vescmonitor/DeviceControlActivity$1;)V

    iput-object v0, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->mMediaProjectionCallback:Lackmaniac/vescmonitor/DeviceControlActivity$MediaProjectionCallback;

    .line 3462
    iget-object v0, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->mProjectionManager:Landroid/media/projection/MediaProjectionManager;

    invoke-virtual {v0, p2, p3}, Landroid/media/projection/MediaProjectionManager;->getMediaProjection(ILandroid/content/Intent;)Landroid/media/projection/MediaProjection;

    move-result-object v0

    iput-object v0, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->mMediaProjection:Landroid/media/projection/MediaProjection;

    .line 3463
    iget-object v0, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->mMediaProjection:Landroid/media/projection/MediaProjection;

    iget-object v1, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->mMediaProjectionCallback:Lackmaniac/vescmonitor/DeviceControlActivity$MediaProjectionCallback;

    invoke-virtual {v0, v1, v2}, Landroid/media/projection/MediaProjection;->registerCallback(Landroid/media/projection/MediaProjection$Callback;Landroid/os/Handler;)V

    .line 3464
    invoke-direct {p0}, Lackmaniac/vescmonitor/DeviceControlActivity;->createVirtualDisplay()Landroid/hardware/display/VirtualDisplay;

    move-result-object v0

    iput-object v0, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    .line 3465
    iget-object v0, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->start()V

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 4

    .prologue
    .line 3424
    iget-object v2, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->mToggleVideoButton:Landroid/widget/ToggleButton;

    invoke-virtual {v2}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_0

    .line 3425
    iget-object v2, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->mToggleVideoButton:Landroid/widget/ToggleButton;

    invoke-virtual {v2}, Landroid/widget/ToggleButton;->performClick()Z

    .line 3448
    :goto_0
    return-void

    .line 3428
    :cond_0
    :try_start_0
    iget-object v2, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->mGattUpdateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2}, Lackmaniac/vescmonitor/DeviceControlActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3439
    :goto_1
    :try_start_1
    iget-object v2, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v2}, Lackmaniac/vescmonitor/DeviceControlActivity;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 3443
    :goto_2
    const/4 v2, 0x0

    iput-object v2, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->mBluetoothLeService:Lackmaniac/vescmonitor/BluetoothLeService;

    .line 3444
    const/4 v2, 0x0

    iput-boolean v2, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->run:Z

    .line 3446
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0

    .line 3429
    :catch_0
    move-exception v0

    .line 3430
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 3432
    :try_start_2
    iget-object v2, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->context:Landroid/content/Context;

    invoke-static {v2}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v2

    iget-object v3, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->mGattUpdateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 3433
    :catch_1
    move-exception v1

    .line 3434
    .local v1, "ex":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 3440
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "ex":Ljava/lang/Exception;
    :catch_2
    move-exception v1

    .line 3441
    .restart local v1    # "ex":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 1865
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 1868
    invoke-virtual {p0}, Lackmaniac/vescmonitor/DeviceControlActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 1870
    const v1, 0x7f0a002b

    invoke-virtual {p0, v1}, Lackmaniac/vescmonitor/DeviceControlActivity;->setContentView(I)V

    .line 1872
    invoke-virtual {p0}, Lackmaniac/vescmonitor/DeviceControlActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 1875
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "DEVICE_ADDRESS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->mDeviceAddress:Ljava/lang/String;

    .line 1878
    const v1, 0x7f08006a

    invoke-virtual {p0, v1}, Lackmaniac/vescmonitor/DeviceControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1881
    const v1, 0x7f08005a

    invoke-virtual {p0, v1}, Lackmaniac/vescmonitor/DeviceControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->mConnectionState:Landroid/widget/TextView;

    .line 1884
    invoke-virtual {p0}, Lackmaniac/vescmonitor/DeviceControlActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    const-string v2, "VESC_SETTINGS"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lackmaniac/vescmonitor/DeviceControlActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-static {}, Lackmaniac/vescmonitor/Utils;->getCurrentBluetoothAdress()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 1885
    invoke-virtual {p0}, Lackmaniac/vescmonitor/DeviceControlActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 1886
    invoke-direct {p0}, Lackmaniac/vescmonitor/DeviceControlActivity;->startGattService()V

    .line 1887
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 6
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const v5, 0x7f0800ce

    const v4, 0x7f0800cd

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 2532
    invoke-virtual {p0}, Lackmaniac/vescmonitor/DeviceControlActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0b0001

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 2533
    iget-boolean v0, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->mConnected:Z

    if-eqz v0, :cond_0

    .line 2534
    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2535
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2540
    :goto_0
    return v2

    .line 2537
    :cond_0
    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2538
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 5
    .annotation build Landroid/support/annotation/RequiresApi;
        api = 0x15
    .end annotation

    .prologue
    .line 3340
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 3341
    invoke-direct {p0}, Lackmaniac/vescmonitor/DeviceControlActivity;->stopGPS()V

    .line 3342
    const/4 v2, 0x0

    iput-boolean v2, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->run:Z

    .line 3344
    :try_start_0
    iget-object v2, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->mGattUpdateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2}, Lackmaniac/vescmonitor/DeviceControlActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3355
    :goto_0
    :try_start_1
    iget-object v2, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v2}, Lackmaniac/vescmonitor/DeviceControlActivity;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 3362
    :goto_1
    :try_start_2
    iget-object v2, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->mBluetoothLeService:Lackmaniac/vescmonitor/BluetoothLeService;

    invoke-virtual {v2}, Lackmaniac/vescmonitor/BluetoothLeService;->disconnect()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 3368
    :goto_2
    :try_start_3
    iget-object v2, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->mBluetoothLeService:Lackmaniac/vescmonitor/BluetoothLeService;

    invoke-virtual {v2}, Lackmaniac/vescmonitor/BluetoothLeService;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    .line 3373
    :goto_3
    const/4 v2, 0x0

    iput-object v2, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->mBluetoothLeService:Lackmaniac/vescmonitor/BluetoothLeService;

    .line 3374
    invoke-direct {p0}, Lackmaniac/vescmonitor/DeviceControlActivity;->destroyMediaProjection()V

    .line 3375
    iget-object v2, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->mNotifyMgr:Landroid/app/NotificationManager;

    if-eqz v2, :cond_0

    .line 3376
    iget-object v2, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->mNotifyMgr:Landroid/app/NotificationManager;

    invoke-virtual {v2}, Landroid/app/NotificationManager;->cancelAll()V

    .line 3378
    :cond_0
    return-void

    .line 3345
    :catch_0
    move-exception v0

    .line 3346
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 3348
    :try_start_4
    iget-object v2, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->context:Landroid/content/Context;

    invoke-static {v2}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v2

    iget-object v3, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->mGattUpdateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 3349
    :catch_1
    move-exception v1

    .line 3350
    .local v1, "ex":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 3356
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "ex":Ljava/lang/Exception;
    :catch_2
    move-exception v1

    .line 3357
    .restart local v1    # "ex":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 3358
    sget-object v2, Lackmaniac/vescmonitor/DeviceControlActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unbind Exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 3363
    .end local v1    # "ex":Ljava/lang/Exception;
    :catch_3
    move-exception v0

    .line 3364
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 3369
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_4
    move-exception v0

    .line 3370
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 6
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v2, 0x1

    .line 2545
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    .line 2581
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    :goto_1
    return v2

    .line 2547
    :sswitch_0
    invoke-virtual {p0}, Lackmaniac/vescmonitor/DeviceControlActivity;->showCommandsDialog()V

    goto :goto_0

    .line 2550
    :sswitch_1
    new-instance v2, Landroid/content/Intent;

    new-instance v3, Landroid/content/Intent;

    invoke-virtual {p0}, Lackmaniac/vescmonitor/DeviceControlActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-class v5, Lackmaniac/vescmonitor/FileChooserActivity;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    invoke-virtual {p0, v2}, Lackmaniac/vescmonitor/DeviceControlActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 2553
    :sswitch_2
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lackmaniac/vescmonitor/DeviceControlActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lackmaniac/vescmonitor/Settings;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2554
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lackmaniac/vescmonitor/DeviceControlActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 2558
    .end local v1    # "intent":Landroid/content/Intent;
    :sswitch_3
    iget-object v3, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->mBluetoothLeService:Lackmaniac/vescmonitor/BluetoothLeService;

    invoke-virtual {v3}, Lackmaniac/vescmonitor/BluetoothLeService;->disconnect()V

    .line 2559
    iget-object v3, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->mBluetoothLeService:Lackmaniac/vescmonitor/BluetoothLeService;

    iget-object v4, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lackmaniac/vescmonitor/BluetoothLeService;->connect(Ljava/lang/String;)Z

    goto :goto_1

    .line 2570
    :sswitch_4
    :try_start_0
    iget-object v3, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->mBluetoothLeService:Lackmaniac/vescmonitor/BluetoothLeService;

    invoke-virtual {v3}, Lackmaniac/vescmonitor/BluetoothLeService;->disconnect()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2575
    :goto_2
    const/4 v3, 0x0

    iput-boolean v3, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->run:Z

    goto :goto_1

    .line 2571
    :catch_0
    move-exception v0

    .line 2572
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 2578
    .end local v0    # "e":Ljava/lang/Exception;
    :sswitch_5
    invoke-virtual {p0}, Lackmaniac/vescmonitor/DeviceControlActivity;->onBackPressed()V

    goto :goto_1

    .line 2545
    nop

    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_5
        0x7f0800cc -> :sswitch_0
        0x7f0800cd -> :sswitch_3
        0x7f0800ce -> :sswitch_4
        0x7f0800cf -> :sswitch_1
        0x7f0800d4 -> :sswitch_2
    .end sparse-switch
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 3332
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 3335
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "grantResults"    # [I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/RequiresApi;
        api = 0x15
    .end annotation

    .prologue
    .line 3666
    packed-switch p1, :pswitch_data_0

    .line 3683
    :goto_0
    return-void

    .line 3668
    :pswitch_0
    array-length v1, p3

    if-lez v1, :cond_0

    const/4 v1, 0x0

    aget v1, p3, v1

    const/4 v2, 0x1

    aget v2, p3, v2

    add-int/2addr v1, v2

    if-nez v1, :cond_0

    .line 3669
    iget-object v1, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->mToggleVideoButton:Landroid/widget/ToggleButton;

    invoke-direct {p0, v1}, Lackmaniac/vescmonitor/DeviceControlActivity;->toggleButtonClicked(Landroid/view/View;)V

    goto :goto_0

    .line 3672
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 3673
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 3674
    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 3675
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "package:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lackmaniac/vescmonitor/DeviceControlActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 3676
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3677
    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3678
    const/high16 v1, 0x800000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3679
    invoke-virtual {p0, v0}, Lackmaniac/vescmonitor/DeviceControlActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 3666
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
    .end packed-switch
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 3800
    iget-object v0, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->modeText:Landroid/widget/TextView;

    const-string v1, "modeText"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3801
    iget-object v0, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->ppmModeText:Landroid/widget/TextView;

    const-string v1, "ppmModeText"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3802
    iget-object v0, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->maxWattText:Landroid/widget/TextView;

    const-string v1, "maxWattText"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3803
    iget-object v0, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->maxSpeedText:Landroid/widget/TextView;

    const-string v1, "maxSpeedText"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3804
    iget-object v0, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->maxMotorCurrentText:Landroid/widget/TextView;

    const-string v1, "maxMotorCurrentText"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3805
    iget-object v0, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->maxBatteryCurrentText:Landroid/widget/TextView;

    const-string v1, "maxBatteryCurrentText"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3806
    iget-object v0, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->minMotorCurrentText:Landroid/widget/TextView;

    const-string v1, "minMotorCurrentText"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3807
    iget-object v0, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->minBatteryCurrentText:Landroid/widget/TextView;

    const-string v1, "minBatteryCurrentText"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3809
    iget-object v0, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->errorText:Landroid/widget/TextView;

    const-string v1, "errorText"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3811
    const-string v0, "errorTextString"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->errorTextString:Ljava/lang/String;

    .line 3815
    const-string v0, "controllerId"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->controllerId:I

    .line 3817
    const-string v0, "actualModeNumber"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->actualModeNumber:I

    .line 3818
    const-string v0, "actualPPMMode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->actualPPMMode:I

    .line 3819
    const-string v0, "actualMaxWatt"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->actualMaxWatt:I

    .line 3821
    const-string v0, "actualMaxMotorCurrent"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->actualMaxMotorCurrent:F

    .line 3822
    const-string v0, "actualMaxBatteryCurrent"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->actualMaxBatteryCurrent:F

    .line 3823
    const-string v0, "actualMinMotorCurrent"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->actualMinMotorCurrent:F

    .line 3824
    const-string v0, "actualMinBatteryCurrent"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->actualMinBatteryCurrent:F

    .line 3825
    const-string v0, "actualMaxERPM"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->actualMaxERPM:I

    .line 3826
    const-string v0, "actualBatteryCutStart"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->actualBatteryCutStart:F

    .line 3827
    const-string v0, "actualBatteryCutEnd"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->actualBatteryCutEnd:F

    .line 3828
    const-string v0, "actualTempFetStart"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->actualTempFetStart:F

    .line 3829
    const-string v0, "actualTempFetEnd"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->actualTempFetEnd:F

    .line 3830
    const-string v0, "actualTempMotorStart"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->actualTempMotorStart:F

    .line 3831
    const-string v0, "actualTempMotorEnd"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->actualTempMotorEnd:F

    .line 3833
    const-string v0, "actualMotorType"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->actualMotorType:I

    .line 3835
    const-string v0, "defaultPPMMode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->defaultPPMMode:I

    .line 3837
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 3838
    return-void
.end method

.method protected onResume()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 3382
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 3383
    iget-object v1, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->actualRealtimeData:Lackmaniac/vescmonitor/RealtimeData;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->actualRealtimeData:Lackmaniac/vescmonitor/RealtimeData;

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lackmaniac/vescmonitor/DeviceControlActivity;->populateValues(Lackmaniac/vescmonitor/RealtimeData;Z)V

    .line 3385
    :cond_0
    iget-boolean v1, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->mConnected:Z

    if-nez v1, :cond_1

    .line 3386
    iget-object v1, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->mGattUpdateReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {}, Lackmaniac/vescmonitor/DeviceControlActivity;->makeGattUpdateIntentFilter()Landroid/content/IntentFilter;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lackmaniac/vescmonitor/DeviceControlActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 3412
    :cond_1
    const-string v1, "VESC_SETTINGS"

    invoke-virtual {p0, v1, v3}, Lackmaniac/vescmonitor/DeviceControlActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 3413
    .local v0, "settings":Landroid/content/SharedPreferences;
    const-string v1, "SAVE_GPS_POSITION"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3414
    invoke-direct {p0}, Lackmaniac/vescmonitor/DeviceControlActivity;->startGPS()V

    .line 3418
    :goto_0
    invoke-virtual {p0}, Lackmaniac/vescmonitor/DeviceControlActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    const-string v2, "VESC_SETTINGS"

    invoke-virtual {p0, v2, v3}, Lackmaniac/vescmonitor/DeviceControlActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-static {}, Lackmaniac/vescmonitor/Utils;->getCurrentBluetoothAdress()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 3419
    return-void

    .line 3416
    :cond_2
    invoke-direct {p0}, Lackmaniac/vescmonitor/DeviceControlActivity;->stopGPS()V

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 3758
    const-string v0, "modeText"

    iget-object v1, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->modeText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 3759
    const-string v0, "ppmModeText"

    iget-object v1, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->ppmModeText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 3760
    const-string v0, "maxWattText"

    iget-object v1, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->maxWattText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 3761
    const-string v0, "maxSpeedText"

    iget-object v1, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->maxSpeedText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 3762
    const-string v0, "maxMotorCurrentText"

    iget-object v1, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->maxMotorCurrentText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 3763
    const-string v0, "maxBatteryCurrentText"

    iget-object v1, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->maxBatteryCurrentText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 3764
    const-string v0, "minMotorCurrentText"

    iget-object v1, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->minMotorCurrentText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 3765
    const-string v0, "minBatteryCurrentText"

    iget-object v1, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->minBatteryCurrentText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 3767
    const-string v0, "errorText"

    iget-object v1, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->errorText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 3769
    const-string v0, "errorTextString"

    iget-object v1, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->errorTextString:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3773
    const-string v0, "controllerId"

    iget v1, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->controllerId:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3775
    const-string v0, "actualModeNumber"

    iget v1, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->actualModeNumber:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3776
    const-string v0, "actualPPMMode"

    iget v1, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->actualPPMMode:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3777
    const-string v0, "actualMaxWatt"

    iget v1, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->actualMaxWatt:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3779
    const-string v0, "actualMaxMotorCurrent"

    iget v1, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->actualMaxMotorCurrent:F

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 3780
    const-string v0, "actualMaxBatteryCurrent"

    iget v1, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->actualMaxBatteryCurrent:F

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 3781
    const-string v0, "actualMinMotorCurrent"

    iget v1, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->actualMinMotorCurrent:F

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 3782
    const-string v0, "actualMinBatteryCurrent"

    iget v1, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->actualMinBatteryCurrent:F

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 3783
    const-string v0, "actualMaxERPM"

    iget v1, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->actualMaxERPM:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3784
    const-string v0, "actualBatteryCutStart"

    iget v1, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->actualBatteryCutStart:F

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 3785
    const-string v0, "actualBatteryCutEnd"

    iget v1, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->actualBatteryCutEnd:F

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 3786
    const-string v0, "actualTempFetStart"

    iget v1, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->actualTempFetStart:F

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 3787
    const-string v0, "actualTempFetEnd"

    iget v1, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->actualTempFetEnd:F

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 3788
    const-string v0, "actualTempMotorStart"

    iget v1, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->actualTempMotorStart:F

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 3789
    const-string v0, "actualTempMotorEnd"

    iget v1, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->actualTempMotorEnd:F

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 3791
    const-string v0, "actualMotorType"

    iget v1, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->actualMotorType:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3793
    const-string v0, "defaultPPMMode"

    iget v1, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->defaultPPMMode:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3795
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 3796
    return-void
.end method

.method public onStart()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1970
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 1972
    const-string v1, "VESC_SETTINGS"

    invoke-virtual {p0, v1, v4}, Lackmaniac/vescmonitor/DeviceControlActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1974
    .local v0, "settings":Landroid/content/SharedPreferences;
    invoke-static {}, Lackmaniac/vescmonitor/Utils;->getCurrentBluetoothAdress()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Lackmaniac/vescmonitor/Utils;->getCurrentBluetoothAdress()Ljava/lang/String;

    move-result-object v1

    const-string v2, "74:DA:EA:B1:5F:F3"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1975
    const-string v1, "3.101"

    invoke-static {v1}, Lackmaniac/vescmonitor/Utils;->setFirmwareVersion(Ljava/lang/String;)V

    .line 1976
    const-string v1, "VESC_SETTINGS"

    invoke-virtual {p0, v1, v4}, Lackmaniac/vescmonitor/DeviceControlActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "FIRWMWARE_VERSION"

    invoke-static {v2}, Lackmaniac/vescmonitor/Utils;->getSettingsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lackmaniac/vescmonitor/Utils;->getFirmwareVersion()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1979
    :cond_0
    const v1, 0x7f0a0027

    invoke-virtual {p0, v1}, Lackmaniac/vescmonitor/DeviceControlActivity;->setContentView(I)V

    .line 1981
    invoke-virtual {p0}, Lackmaniac/vescmonitor/DeviceControlActivity;->getRequestedOrientation()I

    move-result v1

    if-nez v1, :cond_4

    .line 1982
    invoke-direct {p0, v5, v0}, Lackmaniac/vescmonitor/DeviceControlActivity;->initViews(ZLandroid/content/SharedPreferences;)V

    .line 1987
    :goto_0
    iget-object v1, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->specialTx:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 1988
    invoke-static {}, Lackmaniac/vescmonitor/Utils;->clearRxList()V

    .line 1990
    const v1, 0x7f08009c

    invoke-virtual {p0, v1}, Lackmaniac/vescmonitor/DeviceControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->errorText:Landroid/widget/TextView;

    .line 1991
    iget-object v1, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->errorTextString:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1992
    iget-object v1, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->errorText:Landroid/widget/TextView;

    iget-object v2, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->errorTextString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1995
    :cond_1
    iget-object v1, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->errorText:Landroid/widget/TextView;

    new-instance v2, Lackmaniac/vescmonitor/DeviceControlActivity$6;

    invoke-direct {v2, p0}, Lackmaniac/vescmonitor/DeviceControlActivity$6;-><init>(Lackmaniac/vescmonitor/DeviceControlActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2010
    const v1, 0x7f080197

    invoke-virtual {p0, v1}, Lackmaniac/vescmonitor/DeviceControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ToggleButton;

    iput-object v1, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->mToggleVideoButton:Landroid/widget/ToggleButton;

    .line 2011
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_5

    .line 2013
    invoke-direct {p0}, Lackmaniac/vescmonitor/DeviceControlActivity;->onCreateRecorder()V

    .line 2015
    invoke-virtual {p0}, Lackmaniac/vescmonitor/DeviceControlActivity;->getRequestedOrientation()I

    move-result v1

    if-nez v1, :cond_2

    .line 2016
    invoke-direct {p0, v4}, Lackmaniac/vescmonitor/DeviceControlActivity;->onCreateBackgroundCamera(Z)V

    .line 2017
    iget-object v1, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->mToggleVideoButton:Landroid/widget/ToggleButton;

    invoke-virtual {v1, v5}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 2018
    iget-object v1, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->mToggleVideoButton:Landroid/widget/ToggleButton;

    invoke-virtual {p0, v1}, Lackmaniac/vescmonitor/DeviceControlActivity;->onToggleScreenShare(Landroid/view/View;)V

    .line 2024
    :cond_2
    :goto_1
    const-string v1, "SAVE_GPS_POSITION"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2025
    invoke-direct {p0}, Lackmaniac/vescmonitor/DeviceControlActivity;->startGPS()V

    .line 2027
    :cond_3
    return-void

    .line 1984
    :cond_4
    invoke-direct {p0, v4, v0}, Lackmaniac/vescmonitor/DeviceControlActivity;->initViews(ZLandroid/content/SharedPreferences;)V

    goto :goto_0

    .line 2021
    :cond_5
    iget-object v1, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->mToggleVideoButton:Landroid/widget/ToggleButton;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ToggleButton;->setVisibility(I)V

    goto :goto_1
.end method

.method public onToggleScreenShare(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .annotation build Landroid/support/annotation/RequiresApi;
        api = 0x15
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 3470
    check-cast p1, Landroid/widget/ToggleButton;

    .end local p1    # "view":Landroid/view/View;
    invoke-virtual {p1}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3472
    invoke-virtual {p0}, Lackmaniac/vescmonitor/DeviceControlActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x1006

    invoke-virtual {v1, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 3475
    iget-object v1, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->mToggleVideoButton:Landroid/widget/ToggleButton;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ToggleButton;->setVisibility(I)V

    .line 3476
    invoke-direct {p0, v4}, Lackmaniac/vescmonitor/DeviceControlActivity;->makeBoxBackgroundsInvisible(Z)V

    .line 3477
    invoke-direct {p0}, Lackmaniac/vescmonitor/DeviceControlActivity;->initRecorder()V

    .line 3478
    invoke-direct {p0}, Lackmaniac/vescmonitor/DeviceControlActivity;->shareScreen()V

    .line 3499
    :goto_0
    return-void

    .line 3481
    :cond_0
    invoke-virtual {p0}, Lackmaniac/vescmonitor/DeviceControlActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 3482
    invoke-direct {p0, v2}, Lackmaniac/vescmonitor/DeviceControlActivity;->makeBoxBackgroundsInvisible(Z)V

    .line 3484
    :try_start_0
    iget-object v1, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->stop()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3490
    :goto_1
    :try_start_1
    iget-object v1, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->reset()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 3495
    :goto_2
    invoke-direct {p0}, Lackmaniac/vescmonitor/DeviceControlActivity;->stopScreenSharing()V

    .line 3496
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Created video File "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->videoFileName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    goto :goto_0

    .line 3485
    :catch_0
    move-exception v0

    .line 3486
    .local v0, "ex":Ljava/lang/RuntimeException;
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 3487
    const-string v1, "MediaRecorder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 3491
    .end local v0    # "ex":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v0

    .line 3492
    .restart local v0    # "ex":Ljava/lang/RuntimeException;
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 3493
    const-string v1, "MediaRecorder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public registerNewDevice()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, -0x1

    .line 2721
    const-string v6, "VESC_SETTINGS"

    invoke-virtual {p0, v6, v9}, Lackmaniac/vescmonitor/DeviceControlActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 2723
    .local v5, "settings":Landroid/content/SharedPreferences;
    invoke-static {}, Lackmaniac/vescmonitor/Utils;->getCurrentBluetoothAdress()Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2725
    .local v1, "deviceName":Ljava/lang/String;
    const-string v6, ""

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 2726
    invoke-virtual {p0}, Lackmaniac/vescmonitor/DeviceControlActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 2771
    :goto_0
    return-void

    .line 2728
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2731
    .local v0, "alertDialog":Landroid/app/AlertDialog$Builder;
    const-string v6, "New bluetooth module found."

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 2734
    const-string v6, "Please enter a name for this board (bluetooth module). 10 Chars are allowed"

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 2736
    new-instance v3, Landroid/widget/EditText;

    invoke-direct {v3, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 2737
    .local v3, "input":Landroid/widget/EditText;
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 2740
    .local v4, "lp":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2741
    const/4 v6, 0x1

    new-array v2, v6, [Landroid/text/InputFilter;

    .line 2742
    .local v2, "fa":[Landroid/text/InputFilter;
    new-instance v6, Landroid/text/InputFilter$LengthFilter;

    const/16 v7, 0xa

    invoke-direct {v6, v7}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v6, v2, v9

    .line 2743
    invoke-virtual {v3, v2}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 2744
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 2748
    const-string v6, "OK"

    new-instance v7, Lackmaniac/vescmonitor/DeviceControlActivity$16;

    invoke-direct {v7, p0, v3, v5}, Lackmaniac/vescmonitor/DeviceControlActivity$16;-><init>(Lackmaniac/vescmonitor/DeviceControlActivity;Landroid/widget/EditText;Landroid/content/SharedPreferences;)V

    invoke-virtual {v0, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2763
    const-string v6, "Cancel"

    new-instance v7, Lackmaniac/vescmonitor/DeviceControlActivity$17;

    invoke-direct {v7, p0}, Lackmaniac/vescmonitor/DeviceControlActivity$17;-><init>(Lackmaniac/vescmonitor/DeviceControlActivity;)V

    invoke-virtual {v0, v6, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2769
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method public showCommandsDialog()V
    .locals 5

    .prologue
    .line 2586
    const/4 v3, 0x2

    new-array v2, v3, [Ljava/lang/CharSequence;

    const/4 v3, 0x0

    const-string v4, "Check for faults"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "Check ERPM"

    aput-object v4, v2, v3

    .line 2590
    .local v2, "items":[Ljava/lang/CharSequence;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2591
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    const-string v3, "Make your selection"

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 2592
    new-instance v3, Lackmaniac/vescmonitor/DeviceControlActivity$14;

    invoke-direct {v3, p0}, Lackmaniac/vescmonitor/DeviceControlActivity$14;-><init>(Lackmaniac/vescmonitor/DeviceControlActivity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2608
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 2609
    .local v0, "alert":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 2610
    return-void
.end method

.method public showModeDialog()V
    .locals 14

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 2774
    invoke-static {}, Lackmaniac/vescmonitor/Utils;->getFirmwareVersion()Ljava/lang/String;

    move-result-object v11

    const-string v12, "2.5"

    invoke-virtual {v11, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_1

    .line 2775
    invoke-static {}, Lackmaniac/vescmonitor/Utils;->getFirmwareVersion()Ljava/lang/String;

    move-result-object v11

    const-string v12, "3.1"

    invoke-virtual {v11, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_1

    .line 2776
    invoke-static {}, Lackmaniac/vescmonitor/Utils;->getFirmwareVersion()Ljava/lang/String;

    move-result-object v10

    const-string v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 2777
    const v10, 0x7f0d00a6

    invoke-static {p0, v10, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/Toast;->show()V

    .line 2834
    :goto_0
    return-void

    .line 2780
    :cond_0
    const v10, 0x7f0d0067

    invoke-static {p0, v10, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 2784
    :cond_1
    new-instance v3, Landroid/app/Dialog;

    invoke-direct {v3, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 2786
    .local v3, "dialog":Landroid/app/Dialog;
    const-string v11, "Choose the drive mode"

    invoke-virtual {v3, v11}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 2788
    invoke-virtual {p0}, Lackmaniac/vescmonitor/DeviceControlActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v11

    const v12, 0x7f0a0029

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    .line 2790
    .local v8, "view":Landroid/view/View;
    const v11, 0x7f080065

    invoke-virtual {v8, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ListView;

    .line 2792
    .local v5, "lv":Landroid/widget/ListView;
    const-string v11, "VESC_SETTINGS"

    invoke-virtual {p0, v11, v10}, Lackmaniac/vescmonitor/DeviceControlActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    .line 2794
    .local v7, "settings":Landroid/content/SharedPreferences;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 2796
    .local v6, "modes":Ljava/util/List;, "Ljava/util/List<Lackmaniac/vescmonitor/Mode;>;"
    new-instance v2, Lackmaniac/vescmonitor/Mode;

    invoke-direct {v2, v7, v10}, Lackmaniac/vescmonitor/Mode;-><init>(Landroid/content/SharedPreferences;I)V

    .line 2797
    .local v2, "defaultmode":Lackmaniac/vescmonitor/Mode;
    iget v11, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->defaultPPMMode:I

    invoke-virtual {v2, v11}, Lackmaniac/vescmonitor/Mode;->setPpmMode(I)V

    .line 2798
    iget-boolean v11, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->defaultUseMaxWatt:Z

    invoke-virtual {v2, v11}, Lackmaniac/vescmonitor/Mode;->setUseMaxWatt(Z)V

    .line 2799
    iget v11, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->defaultMaxWatt:I

    invoke-virtual {v2, v11}, Lackmaniac/vescmonitor/Mode;->setMaxWatt(I)V

    .line 2800
    iget v11, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->defaultMaxMotorCurrent:F

    invoke-virtual {v2, v11}, Lackmaniac/vescmonitor/Mode;->setMaxCurrentMotor(F)V

    .line 2801
    iget v11, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->defaultMaxBatteryCurrent:F

    invoke-virtual {v2, v11}, Lackmaniac/vescmonitor/Mode;->setMaxBatteryCurent(F)V

    .line 2802
    iget v11, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->defaultMinMotorCurrent:F

    invoke-virtual {v2, v11}, Lackmaniac/vescmonitor/Mode;->setMinCurrentMotor(F)V

    .line 2803
    iget v11, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->defaultMinBatteryCurrent:F

    invoke-virtual {v2, v11}, Lackmaniac/vescmonitor/Mode;->setMinBatteryCurent(F)V

    .line 2804
    iget v11, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->defaultMaxERPM:I

    int-to-float v11, v11

    invoke-static {}, Lackmaniac/vescmonitor/Utils;->getSpeedDevider()F

    move-result v12

    div-float/2addr v11, v12

    invoke-virtual {v2, v11}, Lackmaniac/vescmonitor/Mode;->setMaxSpeed(F)V

    .line 2806
    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2808
    const/4 v1, 0x1

    .line 2809
    .local v1, "counter":I
    const/4 v4, 0x1

    .line 2810
    .local v4, "hasNext":Z
    :cond_2
    :goto_1
    if-eqz v4, :cond_4

    .line 2811
    const-string v11, "NAME"

    invoke-static {v1, v11}, Lackmaniac/vescmonitor/Utils;->getModeSettingsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v12, ""

    invoke-interface {v7, v11, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v12, ""

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_3

    move v4, v9

    .line 2812
    :goto_2
    if-eqz v4, :cond_2

    .line 2813
    new-instance v11, Lackmaniac/vescmonitor/Mode;

    invoke-direct {v11, v7, v1}, Lackmaniac/vescmonitor/Mode;-><init>(Landroid/content/SharedPreferences;I)V

    invoke-interface {v6, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2814
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    move v4, v10

    .line 2811
    goto :goto_2

    .line 2819
    :cond_4
    new-instance v0, Lackmaniac/vescmonitor/CustomListModeDialog;

    invoke-direct {v0, p0, v6}, Lackmaniac/vescmonitor/CustomListModeDialog;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 2821
    .local v0, "clad":Lackmaniac/vescmonitor/CustomListModeDialog;
    invoke-virtual {v5, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 2823
    new-instance v9, Lackmaniac/vescmonitor/DeviceControlActivity$18;

    invoke-direct {v9, p0, v3}, Lackmaniac/vescmonitor/DeviceControlActivity$18;-><init>(Lackmaniac/vescmonitor/DeviceControlActivity;Landroid/app/Dialog;)V

    invoke-virtual {v5, v9}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 2831
    invoke-virtual {v3, v8}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 2833
    invoke-virtual {v3}, Landroid/app/Dialog;->show()V

    goto/16 :goto_0
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 8
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .param p2, "format"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 3691
    iget-boolean v3, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->previewRunning:Z

    if-eqz v3, :cond_0

    .line 3692
    sget-object v3, Lackmaniac/vescmonitor/DeviceControlActivity;->camera:Landroid/hardware/Camera;

    if-eqz v3, :cond_0

    sget-object v3, Lackmaniac/vescmonitor/DeviceControlActivity;->camera:Landroid/hardware/Camera;

    invoke-virtual {v3}, Landroid/hardware/Camera;->stopPreview()V

    .line 3694
    :cond_0
    sget-object v3, Lackmaniac/vescmonitor/DeviceControlActivity;->camera:Landroid/hardware/Camera;

    if-nez v3, :cond_1

    .line 3695
    invoke-virtual {p0, p1}, Lackmaniac/vescmonitor/DeviceControlActivity;->surfaceCreated(Landroid/view/SurfaceHolder;)V

    .line 3697
    :cond_1
    sget-object v3, Lackmaniac/vescmonitor/DeviceControlActivity;->camera:Landroid/hardware/Camera;

    invoke-virtual {v3}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 3698
    .local v0, "camParams":Landroid/hardware/Camera$Parameters;
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/Camera$Size;

    .line 3700
    .local v2, "size":Landroid/hardware/Camera$Size;
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPreferredPreviewSizeForVideo()Landroid/hardware/Camera$Size;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 3701
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPreferredPreviewSizeForVideo()Landroid/hardware/Camera$Size;

    move-result-object v2

    .line 3704
    :cond_2
    invoke-virtual {p0}, Lackmaniac/vescmonitor/DeviceControlActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f02000c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    const-string v4, "VESC_SETTINGS"

    invoke-virtual {p0, v4, v6}, Lackmaniac/vescmonitor/DeviceControlActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v5, "VIDEO_LAYOUT"

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    aget-object v3, v3, v4

    const-string v4, "Left"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 3705
    sget-object v3, Lackmaniac/vescmonitor/DeviceControlActivity;->camera:Landroid/hardware/Camera;

    const/16 v4, 0x5a

    invoke-virtual {v3, v4}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    .line 3709
    :goto_0
    iget v3, v2, Landroid/hardware/Camera$Size;->width:I

    iget v4, v2, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v0, v3, v4}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 3718
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isVideoStabilizationSupported()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 3719
    invoke-virtual {v0, v7}, Landroid/hardware/Camera$Parameters;->setVideoStabilization(Z)V

    .line 3723
    :cond_3
    :try_start_0
    sget-object v3, Lackmaniac/vescmonitor/DeviceControlActivity;->camera:Landroid/hardware/Camera;

    invoke-virtual {v3, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3729
    :goto_1
    :try_start_1
    sget-object v3, Lackmaniac/vescmonitor/DeviceControlActivity;->camera:Landroid/hardware/Camera;

    invoke-virtual {v3, p1}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V

    .line 3730
    sget-object v3, Lackmaniac/vescmonitor/DeviceControlActivity;->camera:Landroid/hardware/Camera;

    invoke-virtual {v3}, Landroid/hardware/Camera;->startPreview()V

    .line 3731
    const/4 v3, 0x1

    iput-boolean v3, p0, Lackmaniac/vescmonitor/DeviceControlActivity;->previewRunning:Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 3735
    :goto_2
    return-void

    .line 3707
    :cond_4
    sget-object v3, Lackmaniac/vescmonitor/DeviceControlActivity;->camera:Landroid/hardware/Camera;

    invoke-virtual {v3, v6}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    goto :goto_0

    .line 3724
    :catch_0
    move-exception v1

    .line 3725
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 3732
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 3733
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 4
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 3739
    :try_start_0
    invoke-static {}, Landroid/hardware/Camera;->open()Landroid/hardware/Camera;

    move-result-object v1

    sput-object v1, Lackmaniac/vescmonitor/DeviceControlActivity;->camera:Landroid/hardware/Camera;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3745
    :goto_0
    return-void

    .line 3740
    :catch_0
    move-exception v0

    .line 3741
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 3742
    invoke-virtual {p0}, Lackmaniac/vescmonitor/DeviceControlActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "Error"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 3743
    invoke-virtual {p0}, Lackmaniac/vescmonitor/DeviceControlActivity;->finish()V

    goto :goto_0
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 3749
    sget-object v0, Lackmaniac/vescmonitor/DeviceControlActivity;->camera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 3750
    sget-object v0, Lackmaniac/vescmonitor/DeviceControlActivity;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    .line 3751
    sget-object v0, Lackmaniac/vescmonitor/DeviceControlActivity;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    .line 3752
    const/4 v0, 0x0

    sput-object v0, Lackmaniac/vescmonitor/DeviceControlActivity;->camera:Landroid/hardware/Camera;

    .line 3754
    :cond_0
    return-void
.end method
