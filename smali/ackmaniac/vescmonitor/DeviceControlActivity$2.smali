.class Lackmaniac/vescmonitor/DeviceControlActivity$2;
.super Ljava/lang/Thread;
.source "DeviceControlActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lackmaniac/vescmonitor/DeviceControlActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lackmaniac/vescmonitor/DeviceControlActivity;


# direct methods
.method constructor <init>(Lackmaniac/vescmonitor/DeviceControlActivity;)V
    .locals 0
    .param p1, "this$0"    # Lackmaniac/vescmonitor/DeviceControlActivity;

    .prologue
    .line 378
    iput-object p1, p0, Lackmaniac/vescmonitor/DeviceControlActivity$2;->this$0:Lackmaniac/vescmonitor/DeviceControlActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 47

    .prologue
    .line 380
    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/DeviceControlActivity$2;->this$0:Lackmaniac/vescmonitor/DeviceControlActivity;

    move-object/from16 v39, v0

    const/16 v40, 0x1

    invoke-static/range {v39 .. v40}, Lackmaniac/vescmonitor/DeviceControlActivity;->access$002(Lackmaniac/vescmonitor/DeviceControlActivity;Z)Z

    .line 382
    invoke-static {}, Lackmaniac/vescmonitor/Utils;->isExternalStorageWritable()Z

    move-result v39

    if-eqz v39, :cond_e

    .line 384
    :try_start_0
    invoke-static {}, Lackmaniac/vescmonitor/Utils;->clearRealtimeDataList()V

    .line 385
    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/DeviceControlActivity$2;->this$0:Lackmaniac/vescmonitor/DeviceControlActivity;

    move-object/from16 v39, v0

    const-string v40, "VESC_SETTINGS"

    const/16 v41, 0x0

    invoke-virtual/range {v39 .. v41}, Lackmaniac/vescmonitor/DeviceControlActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v35

    .line 386
    .local v35, "settings":Landroid/content/SharedPreferences;
    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v40, Lackmaniac/vescmonitor/Utils;->fileFormatter:Ljava/text/DateFormat;

    new-instance v41, Ljava/util/Date;

    invoke-direct/range {v41 .. v41}, Ljava/util/Date;-><init>()V

    invoke-virtual/range {v40 .. v41}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v40

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    const-string v40, "_"

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-static {}, Lackmaniac/vescmonitor/Utils;->getCurrentBluetoothAdress()Ljava/lang/String;

    move-result-object v40

    const-string v41, ""

    move-object/from16 v0, v35

    move-object/from16 v1, v40

    move-object/from16 v2, v41

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v40

    const-string v41, " "

    const-string v42, "_"

    invoke-virtual/range {v40 .. v42}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v40

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    const-string v40, "_Vesc_Data.csv"

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    .line 388
    .local v29, "fileName":Ljava/lang/String;
    new-instance v28, Ljava/io/File;

    invoke-static/range {v35 .. v35}, Lackmaniac/vescmonitor/Utils;->getFolder(Landroid/content/SharedPreferences;)Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, v28

    move-object/from16 v1, v39

    move-object/from16 v2, v29

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    .local v28, "file":Ljava/io/File;
    new-instance v34, Ljava/io/FileOutputStream;

    move-object/from16 v0, v34

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 391
    .local v34, "out":Ljava/io/FileOutputStream;
    const-string v39, "BI_TOTAL_KM"

    invoke-static/range {v39 .. v39}, Lackmaniac/vescmonitor/Utils;->getSettingsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    const/16 v40, 0x0

    move-object/from16 v0, v35

    move-object/from16 v1, v39

    move/from16 v2, v40

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v7

    .line 392
    .local v7, "biDistance":F
    const-string v39, "BI_WH_DRAWN"

    invoke-static/range {v39 .. v39}, Lackmaniac/vescmonitor/Utils;->getSettingsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    const/16 v40, 0x0

    move-object/from16 v0, v35

    move-object/from16 v1, v39

    move/from16 v2, v40

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v24

    .line 393
    .local v24, "biWhDrawn":F
    const-string v39, "BI_WH_CHARGED"

    invoke-static/range {v39 .. v39}, Lackmaniac/vescmonitor/Utils;->getSettingsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    const/16 v40, 0x0

    move-object/from16 v0, v35

    move-object/from16 v1, v39

    move/from16 v2, v40

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v23

    .line 394
    .local v23, "biWhCharged":F
    const-string v39, "BI_AH_DRAWN"

    invoke-static/range {v39 .. v39}, Lackmaniac/vescmonitor/Utils;->getSettingsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    const/16 v40, 0x0

    move-object/from16 v0, v35

    move-object/from16 v1, v39

    move/from16 v2, v40

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v6

    .line 395
    .local v6, "biAhDrawn":F
    const-string v39, "BI_AH_CHARGED"

    invoke-static/range {v39 .. v39}, Lackmaniac/vescmonitor/Utils;->getSettingsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    const/16 v40, 0x0

    move-object/from16 v0, v35

    move-object/from16 v1, v39

    move/from16 v2, v40

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v5

    .line 397
    .local v5, "biAhCharged":F
    const-string v39, "BI_TOTAL_TIME"

    invoke-static/range {v39 .. v39}, Lackmaniac/vescmonitor/Utils;->getSettingsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    const-wide/16 v40, 0x0

    move-object/from16 v0, v35

    move-object/from16 v1, v39

    move-wide/from16 v2, v40

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v16

    .line 398
    .local v16, "biTotalTime":J
    const-string v39, "BI_RIDING_TIME"

    invoke-static/range {v39 .. v39}, Lackmaniac/vescmonitor/Utils;->getSettingsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    const-wide/16 v40, 0x0

    move-object/from16 v0, v35

    move-object/from16 v1, v39

    move-wide/from16 v2, v40

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v12

    .line 399
    .local v12, "biRidingTime":J
    const-string v39, "BI_RIDING_WATT"

    invoke-static/range {v39 .. v39}, Lackmaniac/vescmonitor/Utils;->getSettingsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    const/16 v40, 0x0

    move-object/from16 v0, v35

    move-object/from16 v1, v39

    move/from16 v2, v40

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v14

    .line 400
    .local v14, "biRidingWatt":F
    const-string v39, "BI_TOTAL_USED_POS_TIME"

    invoke-static/range {v39 .. v39}, Lackmaniac/vescmonitor/Utils;->getSettingsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    const/16 v40, 0x0

    move-object/from16 v0, v35

    move-object/from16 v1, v39

    move/from16 v2, v40

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v18

    .line 401
    .local v18, "biTotalUsedPosTime":F
    const-string v39, "BI_TOTAL_USED_NEG_TIME"

    invoke-static/range {v39 .. v39}, Lackmaniac/vescmonitor/Utils;->getSettingsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    const/16 v40, 0x0

    move-object/from16 v0, v35

    move-object/from16 v1, v39

    move/from16 v2, v40

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v15

    .line 402
    .local v15, "biTotalUsedNegTime":F
    const-string v39, "BI_ACTIVE_WATT"

    invoke-static/range {v39 .. v39}, Lackmaniac/vescmonitor/Utils;->getSettingsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    const/16 v40, 0x0

    move-object/from16 v0, v35

    move-object/from16 v1, v39

    move/from16 v2, v40

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v4

    .line 404
    .local v4, "biActiveWatt":F
    const-string v39, "BI_USED_MOTOR_AMPS_POS"

    invoke-static/range {v39 .. v39}, Lackmaniac/vescmonitor/Utils;->getSettingsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    const/16 v40, 0x0

    move-object/from16 v0, v35

    move-object/from16 v1, v39

    move/from16 v2, v40

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v22

    .line 405
    .local v22, "biUsedMotorAmpsPos":F
    const-string v39, "BI_USED_MOTOR_AMPS_NEG"

    invoke-static/range {v39 .. v39}, Lackmaniac/vescmonitor/Utils;->getSettingsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    const/16 v40, 0x0

    move-object/from16 v0, v35

    move-object/from16 v1, v39

    move/from16 v2, v40

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v21

    .line 406
    .local v21, "biUsedMotorAmpsNeg":F
    const-string v39, "BI_USED_BATTERY_AMPS_POS"

    invoke-static/range {v39 .. v39}, Lackmaniac/vescmonitor/Utils;->getSettingsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    const/16 v40, 0x0

    move-object/from16 v0, v35

    move-object/from16 v1, v39

    move/from16 v2, v40

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v20

    .line 407
    .local v20, "biUsedBatteryAmpsPos":F
    const-string v39, "BI_USED_BATTERY_AMPS_NEG"

    invoke-static/range {v39 .. v39}, Lackmaniac/vescmonitor/Utils;->getSettingsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    const/16 v40, 0x0

    move-object/from16 v0, v35

    move-object/from16 v1, v39

    move/from16 v2, v40

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v19

    .line 409
    .local v19, "biUsedBatteryAmpsNeg":F
    const-string v39, "BI_RIDING_MOTOR_AMPS_POS"

    invoke-static/range {v39 .. v39}, Lackmaniac/vescmonitor/Utils;->getSettingsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    const/16 v40, 0x0

    move-object/from16 v0, v35

    move-object/from16 v1, v39

    move/from16 v2, v40

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v11

    .line 410
    .local v11, "biRidingMotorAmpsPos":F
    const-string v39, "BI_RIDING_MOTOR_AMPS_NEG"

    invoke-static/range {v39 .. v39}, Lackmaniac/vescmonitor/Utils;->getSettingsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    const/16 v40, 0x0

    move-object/from16 v0, v35

    move-object/from16 v1, v39

    move/from16 v2, v40

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v10

    .line 411
    .local v10, "biRidingMotorAmpsNeg":F
    const-string v39, "BI_RIDING_BATTERY_AMPS_POS"

    invoke-static/range {v39 .. v39}, Lackmaniac/vescmonitor/Utils;->getSettingsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    const/16 v40, 0x0

    move-object/from16 v0, v35

    move-object/from16 v1, v39

    move/from16 v2, v40

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v9

    .line 412
    .local v9, "biRidingBatteryAmpsPos":F
    const-string v39, "BI_RIDING_BATTERY_AMPS_NEG"

    invoke-static/range {v39 .. v39}, Lackmaniac/vescmonitor/Utils;->getSettingsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    const/16 v40, 0x0

    move-object/from16 v0, v35

    move-object/from16 v1, v39

    move/from16 v2, v40

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v8

    .line 414
    .local v8, "biRidingBatteryAmpsNeg":F
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/DeviceControlActivity$2;->this$0:Lackmaniac/vescmonitor/DeviceControlActivity;

    move-object/from16 v39, v0

    invoke-static/range {v39 .. v39}, Lackmaniac/vescmonitor/DeviceControlActivity;->access$000(Lackmaniac/vescmonitor/DeviceControlActivity;)Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    move-result v39

    if-eqz v39, :cond_a

    .line 417
    const/16 v30, 0x1

    .line 418
    .local v30, "gotData":Z
    :cond_0
    :goto_1
    if-eqz v30, :cond_9

    .line 419
    :try_start_1
    invoke-static {}, Lackmaniac/vescmonitor/Utils;->getNextFromRealtimeDataList()Lackmaniac/vescmonitor/RealtimeData;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v25

    .line 420
    .local v25, "data":Lackmaniac/vescmonitor/RealtimeData;
    if-eqz v25, :cond_8

    .line 423
    :try_start_2
    move-object/from16 v0, v25

    iget v0, v0, Lackmaniac/vescmonitor/RealtimeData;->rpm:F

    move/from16 v39, v0

    invoke-static {}, Lackmaniac/vescmonitor/Utils;->getSpeedDevider()F

    move-result v40

    div-float v39, v39, v40

    invoke-static/range {v39 .. v39}, Ljava/lang/Math;->abs(F)F

    move-result v39

    move/from16 v0, v39

    float-to-double v0, v0

    move-wide/from16 v36, v0

    .line 424
    .local v36, "speedAbs":D
    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/DeviceControlActivity$2;->this$0:Lackmaniac/vescmonitor/DeviceControlActivity;

    move-object/from16 v39, v0

    invoke-static/range {v39 .. v39}, Lackmaniac/vescmonitor/DeviceControlActivity;->access$700(Lackmaniac/vescmonitor/DeviceControlActivity;)I

    move-result v39

    const/16 v40, -0x1

    move/from16 v0, v39

    move/from16 v1, v40

    if-ne v0, v1, :cond_4

    .line 425
    const-wide/high16 v40, 0x3ff0000000000000L    # 1.0

    cmpl-double v39, v36, v40

    if-lez v39, :cond_3

    .line 426
    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/DeviceControlActivity$2;->this$0:Lackmaniac/vescmonitor/DeviceControlActivity;

    move-object/from16 v39, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lackmaniac/vescmonitor/RealtimeData;->time:Ljava/util/Date;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Ljava/util/Date;->getTime()J

    move-result-wide v40

    invoke-static/range {v39 .. v41}, Lackmaniac/vescmonitor/DeviceControlActivity;->access$802(Lackmaniac/vescmonitor/DeviceControlActivity;J)J

    .line 427
    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/DeviceControlActivity$2;->this$0:Lackmaniac/vescmonitor/DeviceControlActivity;

    move-object/from16 v39, v0

    move-object/from16 v0, v25

    iget v0, v0, Lackmaniac/vescmonitor/RealtimeData;->wattHours:F

    move/from16 v40, v0

    invoke-static/range {v39 .. v40}, Lackmaniac/vescmonitor/DeviceControlActivity;->access$902(Lackmaniac/vescmonitor/DeviceControlActivity;F)F

    .line 428
    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/DeviceControlActivity$2;->this$0:Lackmaniac/vescmonitor/DeviceControlActivity;

    move-object/from16 v39, v0

    move-object/from16 v0, v25

    iget v0, v0, Lackmaniac/vescmonitor/RealtimeData;->wattHoursCharged:F

    move/from16 v40, v0

    invoke-static/range {v39 .. v40}, Lackmaniac/vescmonitor/DeviceControlActivity;->access$1002(Lackmaniac/vescmonitor/DeviceControlActivity;F)F

    .line 429
    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/DeviceControlActivity$2;->this$0:Lackmaniac/vescmonitor/DeviceControlActivity;

    move-object/from16 v39, v0

    move-object/from16 v0, v25

    iget v0, v0, Lackmaniac/vescmonitor/RealtimeData;->ampHours:F

    move/from16 v40, v0

    invoke-static/range {v39 .. v40}, Lackmaniac/vescmonitor/DeviceControlActivity;->access$1102(Lackmaniac/vescmonitor/DeviceControlActivity;F)F

    .line 430
    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/DeviceControlActivity$2;->this$0:Lackmaniac/vescmonitor/DeviceControlActivity;

    move-object/from16 v39, v0

    move-object/from16 v0, v25

    iget v0, v0, Lackmaniac/vescmonitor/RealtimeData;->ampHoursCharged:F

    move/from16 v40, v0

    invoke-static/range {v39 .. v40}, Lackmaniac/vescmonitor/DeviceControlActivity;->access$1202(Lackmaniac/vescmonitor/DeviceControlActivity;F)F

    .line 432
    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/DeviceControlActivity$2;->this$0:Lackmaniac/vescmonitor/DeviceControlActivity;

    move-object/from16 v39, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/DeviceControlActivity$2;->this$0:Lackmaniac/vescmonitor/DeviceControlActivity;

    move-object/from16 v40, v0

    invoke-static/range {v40 .. v40}, Lackmaniac/vescmonitor/DeviceControlActivity;->access$800(Lackmaniac/vescmonitor/DeviceControlActivity;)J

    move-result-wide v40

    invoke-static/range {v39 .. v41}, Lackmaniac/vescmonitor/DeviceControlActivity;->access$1302(Lackmaniac/vescmonitor/DeviceControlActivity;J)J

    .line 433
    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/DeviceControlActivity$2;->this$0:Lackmaniac/vescmonitor/DeviceControlActivity;

    move-object/from16 v39, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/DeviceControlActivity$2;->this$0:Lackmaniac/vescmonitor/DeviceControlActivity;

    move-object/from16 v40, v0

    invoke-static/range {v40 .. v40}, Lackmaniac/vescmonitor/DeviceControlActivity;->access$800(Lackmaniac/vescmonitor/DeviceControlActivity;)J

    move-result-wide v40

    invoke-static/range {v39 .. v41}, Lackmaniac/vescmonitor/DeviceControlActivity;->access$1402(Lackmaniac/vescmonitor/DeviceControlActivity;J)J

    .line 435
    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/DeviceControlActivity$2;->this$0:Lackmaniac/vescmonitor/DeviceControlActivity;

    move-object/from16 v39, v0

    move-object/from16 v0, v25

    iget v0, v0, Lackmaniac/vescmonitor/RealtimeData;->tachometerAbs:F

    move/from16 v40, v0

    move/from16 v0, v40

    float-to-int v0, v0

    move/from16 v40, v0

    invoke-static/range {v39 .. v40}, Lackmaniac/vescmonitor/DeviceControlActivity;->access$702(Lackmaniac/vescmonitor/DeviceControlActivity;I)I

    .line 437
    new-instance v31, Ljava/io/StringWriter;

    invoke-direct/range {v31 .. v31}, Ljava/io/StringWriter;-><init>()V

    .line 438
    .local v31, "header":Ljava/io/StringWriter;
    const-string v39, "//Motor_Max="

    move-object/from16 v0, v31

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/io/StringWriter;->append(Ljava/lang/CharSequence;)Ljava/io/StringWriter;

    move-result-object v39

    sget-object v40, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v41, "%.1f"

    const/16 v42, 0x1

    move/from16 v0, v42

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v42, v0

    const/16 v43, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/DeviceControlActivity$2;->this$0:Lackmaniac/vescmonitor/DeviceControlActivity;

    move-object/from16 v44, v0

    invoke-static/range {v44 .. v44}, Lackmaniac/vescmonitor/DeviceControlActivity;->access$2500(Lackmaniac/vescmonitor/DeviceControlActivity;)F

    move-result v44

    invoke-static/range {v44 .. v44}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v44

    aput-object v44, v42, v43

    invoke-static/range {v40 .. v42}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v40

    invoke-virtual/range {v39 .. v40}, Ljava/io/StringWriter;->append(Ljava/lang/CharSequence;)Ljava/io/StringWriter;

    move-result-object v39

    const-string v40, ","

    invoke-virtual/range {v39 .. v40}, Ljava/io/StringWriter;->append(Ljava/lang/CharSequence;)Ljava/io/StringWriter;

    move-result-object v39

    const-string v40, "Motor_Min="

    .line 439
    invoke-virtual/range {v39 .. v40}, Ljava/io/StringWriter;->append(Ljava/lang/CharSequence;)Ljava/io/StringWriter;

    move-result-object v39

    sget-object v40, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v41, "%.1f"

    const/16 v42, 0x1

    move/from16 v0, v42

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v42, v0

    const/16 v43, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/DeviceControlActivity$2;->this$0:Lackmaniac/vescmonitor/DeviceControlActivity;

    move-object/from16 v44, v0

    invoke-static/range {v44 .. v44}, Lackmaniac/vescmonitor/DeviceControlActivity;->access$2400(Lackmaniac/vescmonitor/DeviceControlActivity;)F

    move-result v44

    invoke-static/range {v44 .. v44}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v44

    aput-object v44, v42, v43

    invoke-static/range {v40 .. v42}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v40

    invoke-virtual/range {v39 .. v40}, Ljava/io/StringWriter;->append(Ljava/lang/CharSequence;)Ljava/io/StringWriter;

    move-result-object v39

    const-string v40, ","

    invoke-virtual/range {v39 .. v40}, Ljava/io/StringWriter;->append(Ljava/lang/CharSequence;)Ljava/io/StringWriter;

    move-result-object v39

    const-string v40, "Battery_Max="

    .line 440
    invoke-virtual/range {v39 .. v40}, Ljava/io/StringWriter;->append(Ljava/lang/CharSequence;)Ljava/io/StringWriter;

    move-result-object v39

    sget-object v40, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v41, "%.1f"

    const/16 v42, 0x1

    move/from16 v0, v42

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v42, v0

    const/16 v43, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/DeviceControlActivity$2;->this$0:Lackmaniac/vescmonitor/DeviceControlActivity;

    move-object/from16 v44, v0

    invoke-static/range {v44 .. v44}, Lackmaniac/vescmonitor/DeviceControlActivity;->access$2300(Lackmaniac/vescmonitor/DeviceControlActivity;)F

    move-result v44

    invoke-static/range {v44 .. v44}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v44

    aput-object v44, v42, v43

    invoke-static/range {v40 .. v42}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v40

    invoke-virtual/range {v39 .. v40}, Ljava/io/StringWriter;->append(Ljava/lang/CharSequence;)Ljava/io/StringWriter;

    move-result-object v39

    const-string v40, ","

    invoke-virtual/range {v39 .. v40}, Ljava/io/StringWriter;->append(Ljava/lang/CharSequence;)Ljava/io/StringWriter;

    move-result-object v39

    const-string v40, "Battery_Min="

    .line 441
    invoke-virtual/range {v39 .. v40}, Ljava/io/StringWriter;->append(Ljava/lang/CharSequence;)Ljava/io/StringWriter;

    move-result-object v39

    sget-object v40, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v41, "%.1f"

    const/16 v42, 0x1

    move/from16 v0, v42

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v42, v0

    const/16 v43, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/DeviceControlActivity$2;->this$0:Lackmaniac/vescmonitor/DeviceControlActivity;

    move-object/from16 v44, v0

    invoke-static/range {v44 .. v44}, Lackmaniac/vescmonitor/DeviceControlActivity;->access$2200(Lackmaniac/vescmonitor/DeviceControlActivity;)F

    move-result v44

    invoke-static/range {v44 .. v44}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v44

    aput-object v44, v42, v43

    invoke-static/range {v40 .. v42}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v40

    invoke-virtual/range {v39 .. v40}, Ljava/io/StringWriter;->append(Ljava/lang/CharSequence;)Ljava/io/StringWriter;

    move-result-object v39

    const-string v40, ","

    invoke-virtual/range {v39 .. v40}, Ljava/io/StringWriter;->append(Ljava/lang/CharSequence;)Ljava/io/StringWriter;

    move-result-object v39

    const-string v40, "Cutoff_Start="

    .line 442
    invoke-virtual/range {v39 .. v40}, Ljava/io/StringWriter;->append(Ljava/lang/CharSequence;)Ljava/io/StringWriter;

    move-result-object v39

    sget-object v40, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v41, "%.1f"

    const/16 v42, 0x1

    move/from16 v0, v42

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v42, v0

    const/16 v43, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/DeviceControlActivity$2;->this$0:Lackmaniac/vescmonitor/DeviceControlActivity;

    move-object/from16 v44, v0

    invoke-static/range {v44 .. v44}, Lackmaniac/vescmonitor/DeviceControlActivity;->access$2100(Lackmaniac/vescmonitor/DeviceControlActivity;)F

    move-result v44

    invoke-static/range {v44 .. v44}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v44

    aput-object v44, v42, v43

    invoke-static/range {v40 .. v42}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v40

    invoke-virtual/range {v39 .. v40}, Ljava/io/StringWriter;->append(Ljava/lang/CharSequence;)Ljava/io/StringWriter;

    move-result-object v39

    const-string v40, ","

    invoke-virtual/range {v39 .. v40}, Ljava/io/StringWriter;->append(Ljava/lang/CharSequence;)Ljava/io/StringWriter;

    move-result-object v39

    const-string v40, "Cutoff_End="

    .line 443
    invoke-virtual/range {v39 .. v40}, Ljava/io/StringWriter;->append(Ljava/lang/CharSequence;)Ljava/io/StringWriter;

    move-result-object v39

    sget-object v40, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v41, "%.1f"

    const/16 v42, 0x1

    move/from16 v0, v42

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v42, v0

    const/16 v43, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/DeviceControlActivity$2;->this$0:Lackmaniac/vescmonitor/DeviceControlActivity;

    move-object/from16 v44, v0

    invoke-static/range {v44 .. v44}, Lackmaniac/vescmonitor/DeviceControlActivity;->access$2000(Lackmaniac/vescmonitor/DeviceControlActivity;)F

    move-result v44

    invoke-static/range {v44 .. v44}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v44

    aput-object v44, v42, v43

    invoke-static/range {v40 .. v42}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v40

    invoke-virtual/range {v39 .. v40}, Ljava/io/StringWriter;->append(Ljava/lang/CharSequence;)Ljava/io/StringWriter;

    move-result-object v39

    const-string v40, ","

    invoke-virtual/range {v39 .. v40}, Ljava/io/StringWriter;->append(Ljava/lang/CharSequence;)Ljava/io/StringWriter;

    move-result-object v39

    const-string v40, "Temp_Start="

    .line 444
    invoke-virtual/range {v39 .. v40}, Ljava/io/StringWriter;->append(Ljava/lang/CharSequence;)Ljava/io/StringWriter;

    move-result-object v39

    sget-object v40, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v41, "%.1f"

    const/16 v42, 0x1

    move/from16 v0, v42

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v42, v0

    const/16 v43, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/DeviceControlActivity$2;->this$0:Lackmaniac/vescmonitor/DeviceControlActivity;

    move-object/from16 v44, v0

    invoke-static/range {v44 .. v44}, Lackmaniac/vescmonitor/DeviceControlActivity;->access$1900(Lackmaniac/vescmonitor/DeviceControlActivity;)F

    move-result v44

    invoke-static/range {v44 .. v44}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v44

    aput-object v44, v42, v43

    invoke-static/range {v40 .. v42}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v40

    invoke-virtual/range {v39 .. v40}, Ljava/io/StringWriter;->append(Ljava/lang/CharSequence;)Ljava/io/StringWriter;

    move-result-object v39

    const-string v40, ","

    invoke-virtual/range {v39 .. v40}, Ljava/io/StringWriter;->append(Ljava/lang/CharSequence;)Ljava/io/StringWriter;

    move-result-object v39

    const-string v40, "Temp_End="

    .line 445
    invoke-virtual/range {v39 .. v40}, Ljava/io/StringWriter;->append(Ljava/lang/CharSequence;)Ljava/io/StringWriter;

    move-result-object v39

    sget-object v40, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v41, "%.1f"

    const/16 v42, 0x1

    move/from16 v0, v42

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v42, v0

    const/16 v43, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/DeviceControlActivity$2;->this$0:Lackmaniac/vescmonitor/DeviceControlActivity;

    move-object/from16 v44, v0

    invoke-static/range {v44 .. v44}, Lackmaniac/vescmonitor/DeviceControlActivity;->access$1800(Lackmaniac/vescmonitor/DeviceControlActivity;)F

    move-result v44

    invoke-static/range {v44 .. v44}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v44

    aput-object v44, v42, v43

    invoke-static/range {v40 .. v42}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v40

    invoke-virtual/range {v39 .. v40}, Ljava/io/StringWriter;->append(Ljava/lang/CharSequence;)Ljava/io/StringWriter;

    move-result-object v39

    const-string v40, ","

    invoke-virtual/range {v39 .. v40}, Ljava/io/StringWriter;->append(Ljava/lang/CharSequence;)Ljava/io/StringWriter;

    move-result-object v39

    const-string v40, "Watt_Max="

    .line 446
    invoke-virtual/range {v39 .. v40}, Ljava/io/StringWriter;->append(Ljava/lang/CharSequence;)Ljava/io/StringWriter;

    move-result-object v40

    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/DeviceControlActivity$2;->this$0:Lackmaniac/vescmonitor/DeviceControlActivity;

    move-object/from16 v39, v0

    invoke-static/range {v39 .. v39}, Lackmaniac/vescmonitor/DeviceControlActivity;->access$1600(Lackmaniac/vescmonitor/DeviceControlActivity;)Z

    move-result v39

    if-eqz v39, :cond_2

    const/16 v39, 0x0

    :goto_2
    invoke-static/range {v39 .. v39}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, v40

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/io/StringWriter;->append(Ljava/lang/CharSequence;)Ljava/io/StringWriter;

    move-result-object v39

    const-string v40, ","

    invoke-virtual/range {v39 .. v40}, Ljava/io/StringWriter;->append(Ljava/lang/CharSequence;)Ljava/io/StringWriter;

    move-result-object v39

    const-string v40, "Speed_Limit="

    .line 447
    invoke-virtual/range {v39 .. v40}, Ljava/io/StringWriter;->append(Ljava/lang/CharSequence;)Ljava/io/StringWriter;

    move-result-object v39

    sget-object v40, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v41, "%.1f"

    const/16 v42, 0x1

    move/from16 v0, v42

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v42, v0

    const/16 v43, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/DeviceControlActivity$2;->this$0:Lackmaniac/vescmonitor/DeviceControlActivity;

    move-object/from16 v44, v0

    invoke-static/range {v44 .. v44}, Lackmaniac/vescmonitor/DeviceControlActivity;->access$1500(Lackmaniac/vescmonitor/DeviceControlActivity;)I

    move-result v44

    move/from16 v0, v44

    int-to-float v0, v0

    move/from16 v44, v0

    invoke-static {}, Lackmaniac/vescmonitor/Utils;->getSpeedDevider()F

    move-result v45

    div-float v44, v44, v45

    invoke-static/range {v44 .. v44}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v44

    aput-object v44, v42, v43

    invoke-static/range {v40 .. v42}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v40

    invoke-virtual/range {v39 .. v40}, Ljava/io/StringWriter;->append(Ljava/lang/CharSequence;)Ljava/io/StringWriter;

    move-result-object v39

    const-string v40, ","

    invoke-virtual/range {v39 .. v40}, Ljava/io/StringWriter;->append(Ljava/lang/CharSequence;)Ljava/io/StringWriter;

    move-result-object v39

    const-string v40, "Wheelsize="

    .line 448
    invoke-virtual/range {v39 .. v40}, Ljava/io/StringWriter;->append(Ljava/lang/CharSequence;)Ljava/io/StringWriter;

    move-result-object v39

    const-string v40, "WHEEL_SIZE"

    invoke-static/range {v40 .. v40}, Lackmaniac/vescmonitor/Utils;->getSettingsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v40

    const/16 v41, 0x53

    move-object/from16 v0, v35

    move-object/from16 v1, v40

    move/from16 v2, v41

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v40

    invoke-static/range {v40 .. v40}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v40

    invoke-virtual/range {v39 .. v40}, Ljava/io/StringWriter;->append(Ljava/lang/CharSequence;)Ljava/io/StringWriter;

    move-result-object v39

    const-string v40, ","

    invoke-virtual/range {v39 .. v40}, Ljava/io/StringWriter;->append(Ljava/lang/CharSequence;)Ljava/io/StringWriter;

    move-result-object v39

    const-string v40, "Motor_Teeth="

    .line 449
    invoke-virtual/range {v39 .. v40}, Ljava/io/StringWriter;->append(Ljava/lang/CharSequence;)Ljava/io/StringWriter;

    move-result-object v39

    const-string v40, "TEETH_MOTOR_PULLEY"

    invoke-static/range {v40 .. v40}, Lackmaniac/vescmonitor/Utils;->getSettingsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v40

    const/16 v41, 0xf

    move-object/from16 v0, v35

    move-object/from16 v1, v40

    move/from16 v2, v41

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v40

    invoke-static/range {v40 .. v40}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v40

    invoke-virtual/range {v39 .. v40}, Ljava/io/StringWriter;->append(Ljava/lang/CharSequence;)Ljava/io/StringWriter;

    move-result-object v39

    const-string v40, ","

    invoke-virtual/range {v39 .. v40}, Ljava/io/StringWriter;->append(Ljava/lang/CharSequence;)Ljava/io/StringWriter;

    move-result-object v39

    const-string v40, "Wheel_Teeth="

    .line 450
    invoke-virtual/range {v39 .. v40}, Ljava/io/StringWriter;->append(Ljava/lang/CharSequence;)Ljava/io/StringWriter;

    move-result-object v39

    const-string v40, "TEETH_WHEEL_PULLEY"

    invoke-static/range {v40 .. v40}, Lackmaniac/vescmonitor/Utils;->getSettingsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v40

    const/16 v41, 0x24

    move-object/from16 v0, v35

    move-object/from16 v1, v40

    move/from16 v2, v41

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v40

    invoke-static/range {v40 .. v40}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v40

    invoke-virtual/range {v39 .. v40}, Ljava/io/StringWriter;->append(Ljava/lang/CharSequence;)Ljava/io/StringWriter;

    move-result-object v39

    const-string v40, ","

    invoke-virtual/range {v39 .. v40}, Ljava/io/StringWriter;->append(Ljava/lang/CharSequence;)Ljava/io/StringWriter;

    move-result-object v39

    const-string v40, "Motor_Poles="

    .line 451
    invoke-virtual/range {v39 .. v40}, Ljava/io/StringWriter;->append(Ljava/lang/CharSequence;)Ljava/io/StringWriter;

    move-result-object v39

    const-string v40, "MAGNETS"

    invoke-static/range {v40 .. v40}, Lackmaniac/vescmonitor/Utils;->getSettingsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v40

    const/16 v41, 0xe

    move-object/from16 v0, v35

    move-object/from16 v1, v40

    move/from16 v2, v41

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v40

    invoke-static/range {v40 .. v40}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v40

    invoke-virtual/range {v39 .. v40}, Ljava/io/StringWriter;->append(Ljava/lang/CharSequence;)Ljava/io/StringWriter;

    move-result-object v39

    const-string v40, ","

    invoke-virtual/range {v39 .. v40}, Ljava/io/StringWriter;->append(Ljava/lang/CharSequence;)Ljava/io/StringWriter;

    move-result-object v39

    const-string v40, "Battery_Cells="

    .line 452
    invoke-virtual/range {v39 .. v40}, Ljava/io/StringWriter;->append(Ljava/lang/CharSequence;)Ljava/io/StringWriter;

    move-result-object v39

    const-string v40, "NO_OF_CELLS"

    invoke-static/range {v40 .. v40}, Lackmaniac/vescmonitor/Utils;->getSettingsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v40

    const/16 v41, 0xa

    move-object/from16 v0, v35

    move-object/from16 v1, v40

    move/from16 v2, v41

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v40

    invoke-static/range {v40 .. v40}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v40

    invoke-virtual/range {v39 .. v40}, Ljava/io/StringWriter;->append(Ljava/lang/CharSequence;)Ljava/io/StringWriter;

    move-result-object v39

    const-string v40, ","

    invoke-virtual/range {v39 .. v40}, Ljava/io/StringWriter;->append(Ljava/lang/CharSequence;)Ljava/io/StringWriter;

    move-result-object v39

    const-string v40, "Battery_Wh="

    .line 453
    invoke-virtual/range {v39 .. v40}, Ljava/io/StringWriter;->append(Ljava/lang/CharSequence;)Ljava/io/StringWriter;

    move-result-object v39

    const-string v40, "BATTERY_WH"

    invoke-static/range {v40 .. v40}, Lackmaniac/vescmonitor/Utils;->getSettingsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v40

    const/16 v41, 0x12c

    move-object/from16 v0, v35

    move-object/from16 v1, v40

    move/from16 v2, v41

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v40

    invoke-static/range {v40 .. v40}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v40

    invoke-virtual/range {v39 .. v40}, Ljava/io/StringWriter;->append(Ljava/lang/CharSequence;)Ljava/io/StringWriter;

    move-result-object v39

    const-string v40, ","

    invoke-virtual/range {v39 .. v40}, Ljava/io/StringWriter;->append(Ljava/lang/CharSequence;)Ljava/io/StringWriter;

    move-result-object v39

    const-string v40, "Vesc_Count="

    .line 454
    invoke-virtual/range {v39 .. v40}, Ljava/io/StringWriter;->append(Ljava/lang/CharSequence;)Ljava/io/StringWriter;

    move-result-object v39

    const-string v40, "NO_OF_MOTORS"

    invoke-static/range {v40 .. v40}, Lackmaniac/vescmonitor/Utils;->getSettingsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v40

    const/16 v41, 0x1

    move-object/from16 v0, v35

    move-object/from16 v1, v40

    move/from16 v2, v41

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v40

    invoke-static/range {v40 .. v40}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v40

    invoke-virtual/range {v39 .. v40}, Ljava/io/StringWriter;->append(Ljava/lang/CharSequence;)Ljava/io/StringWriter;

    move-result-object v39

    const-string v40, ","

    invoke-virtual/range {v39 .. v40}, Ljava/io/StringWriter;->append(Ljava/lang/CharSequence;)Ljava/io/StringWriter;

    move-result-object v39

    const-string v40, "Speed_Unit="

    .line 455
    invoke-virtual/range {v39 .. v40}, Ljava/io/StringWriter;->append(Ljava/lang/CharSequence;)Ljava/io/StringWriter;

    move-result-object v39

    const-string v40, "DISTANCE_UNIT"

    invoke-static/range {v40 .. v40}, Lackmaniac/vescmonitor/Utils;->getSettingsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v40

    const/16 v41, 0x0

    move-object/from16 v0, v35

    move-object/from16 v1, v40

    move/from16 v2, v41

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v40

    invoke-static/range {v40 .. v40}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v40

    invoke-virtual/range {v39 .. v40}, Ljava/io/StringWriter;->append(Ljava/lang/CharSequence;)Ljava/io/StringWriter;

    .line 457
    const-string v39, "\n"

    move-object/from16 v0, v31

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/io/StringWriter;->append(Ljava/lang/CharSequence;)Ljava/io/StringWriter;

    move-result-object v39

    const-string v40, "Time"

    .line 458
    invoke-virtual/range {v39 .. v40}, Ljava/io/StringWriter;->append(Ljava/lang/CharSequence;)Ljava/io/StringWriter;

    move-result-object v39

    const-string v40, ","

    invoke-virtual/range {v39 .. v40}, Ljava/io/StringWriter;->append(Ljava/lang/CharSequence;)Ljava/io/StringWriter;

    move-result-object v39

    const-string v40, "TempPcb"

    .line 459
    invoke-virtual/range {v39 .. v40}, Ljava/io/StringWriter;->append(Ljava/lang/CharSequence;)Ljava/io/StringWriter;

    move-result-object v39

    const-string v40, ","

    invoke-virtual/range {v39 .. v40}, Ljava/io/StringWriter;->append(Ljava/lang/CharSequence;)Ljava/io/StringWriter;

    move-result-object v39

    const-string v40, "MotorCurrent"

    .line 460
    invoke-virtual/range {v39 .. v40}, Ljava/io/StringWriter;->append(Ljava/lang/CharSequence;)Ljava/io/StringWriter;

    move-result-object v39

    const-string v40, ","

    invoke-virtual/range {v39 .. v40}, Ljava/io/StringWriter;->append(Ljava/lang/CharSequence;)Ljava/io/StringWriter;

    move-result-object v39

    const-string v40, "BatteryCurrent"

    .line 461
    invoke-virtual/range {v39 .. v40}, Ljava/io/StringWriter;->append(Ljava/lang/CharSequence;)Ljava/io/StringWriter;

    move-result-object v39

    const-string v40, ","

    invoke-virtual/range {v39 .. v40}, Ljava/io/StringWriter;->append(Ljava/lang/CharSequence;)Ljava/io/StringWriter;

    move-result-object v39

    const-string v40, "DutyCycle"

    .line 462
    invoke-virtual/range {v39 .. v40}, Ljava/io/StringWriter;->append(Ljava/lang/CharSequence;)Ljava/io/StringWriter;

    move-result-object v39

    const-string v40, ","

    invoke-virtual/range {v39 .. v40}, Ljava/io/StringWriter;->append(Ljava/lang/CharSequence;)Ljava/io/StringWriter;

    move-result-object v39

    const-string v40, "Speed"

    .line 463
    invoke-virtual/range {v39 .. v40}, Ljava/io/StringWriter;->append(Ljava/lang/CharSequence;)Ljava/io/StringWriter;

    move-result-object v39

    const-string v40, ","

    invoke-virtual/range {v39 .. v40}, Ljava/io/StringWriter;->append(Ljava/lang/CharSequence;)Ljava/io/StringWriter;

    move-result-object v39

    const-string v40, "InpVoltage"

    .line 464
    invoke-virtual/range {v39 .. v40}, Ljava/io/StringWriter;->append(Ljava/lang/CharSequence;)Ljava/io/StringWriter;

    move-result-object v39

    const-string v40, ","

    invoke-virtual/range {v39 .. v40}, Ljava/io/StringWriter;->append(Ljava/lang/CharSequence;)Ljava/io/StringWriter;

    move-result-object v39

    const-string v40, "AmpHours"

    .line 465
    invoke-virtual/range {v39 .. v40}, Ljava/io/StringWriter;->append(Ljava/lang/CharSequence;)Ljava/io/StringWriter;

    move-result-object v39

    const-string v40, ","

    invoke-virtual/range {v39 .. v40}, Ljava/io/StringWriter;->append(Ljava/lang/CharSequence;)Ljava/io/StringWriter;

    move-result-object v39

    const-string v40, "AmpHoursCharged"

    .line 466
    invoke-virtual/range {v39 .. v40}, Ljava/io/StringWriter;->append(Ljava/lang/CharSequence;)Ljava/io/StringWriter;

    move-result-object v39

    const-string v40, ","

    invoke-virtual/range {v39 .. v40}, Ljava/io/StringWriter;->append(Ljava/lang/CharSequence;)Ljava/io/StringWriter;

    move-result-object v39

    const-string v40, "WattHours"

    .line 467
    invoke-virtual/range {v39 .. v40}, Ljava/io/StringWriter;->append(Ljava/lang/CharSequence;)Ljava/io/StringWriter;

    move-result-object v39

    const-string v40, ","

    invoke-virtual/range {v39 .. v40}, Ljava/io/StringWriter;->append(Ljava/lang/CharSequence;)Ljava/io/StringWriter;

    move-result-object v39

    const-string v40, "WattHoursCharged"

    .line 468
    invoke-virtual/range {v39 .. v40}, Ljava/io/StringWriter;->append(Ljava/lang/CharSequence;)Ljava/io/StringWriter;

    move-result-object v39

    const-string v40, ","

    invoke-virtual/range {v39 .. v40}, Ljava/io/StringWriter;->append(Ljava/lang/CharSequence;)Ljava/io/StringWriter;

    move-result-object v39

    const-string v40, "Distance"

    .line 469
    invoke-virtual/range {v39 .. v40}, Ljava/io/StringWriter;->append(Ljava/lang/CharSequence;)Ljava/io/StringWriter;

    move-result-object v39

    const-string v40, ","

    invoke-virtual/range {v39 .. v40}, Ljava/io/StringWriter;->append(Ljava/lang/CharSequence;)Ljava/io/StringWriter;

    move-result-object v39

    const-string v40, "Power"

    .line 470
    invoke-virtual/range {v39 .. v40}, Ljava/io/StringWriter;->append(Ljava/lang/CharSequence;)Ljava/io/StringWriter;

    move-result-object v39

    const-string v40, ","

    invoke-virtual/range {v39 .. v40}, Ljava/io/StringWriter;->append(Ljava/lang/CharSequence;)Ljava/io/StringWriter;

    move-result-object v39

    const-string v40, "Fault"

    .line 471
    invoke-virtual/range {v39 .. v40}, Ljava/io/StringWriter;->append(Ljava/lang/CharSequence;)Ljava/io/StringWriter;

    move-result-object v39

    const-string v40, ","

    invoke-virtual/range {v39 .. v40}, Ljava/io/StringWriter;->append(Ljava/lang/CharSequence;)Ljava/io/StringWriter;

    move-result-object v39

    const-string v40, "TimePassedInMs"

    .line 472
    invoke-virtual/range {v39 .. v40}, Ljava/io/StringWriter;->append(Ljava/lang/CharSequence;)Ljava/io/StringWriter;

    move-result-object v39

    const-string v40, ","

    invoke-virtual/range {v39 .. v40}, Ljava/io/StringWriter;->append(Ljava/lang/CharSequence;)Ljava/io/StringWriter;

    move-result-object v39

    const-string v40, "Latitude"

    .line 473
    invoke-virtual/range {v39 .. v40}, Ljava/io/StringWriter;->append(Ljava/lang/CharSequence;)Ljava/io/StringWriter;

    move-result-object v39

    const-string v40, ","

    invoke-virtual/range {v39 .. v40}, Ljava/io/StringWriter;->append(Ljava/lang/CharSequence;)Ljava/io/StringWriter;

    move-result-object v39

    const-string v40, "Longitude"

    .line 474
    invoke-virtual/range {v39 .. v40}, Ljava/io/StringWriter;->append(Ljava/lang/CharSequence;)Ljava/io/StringWriter;

    move-result-object v39

    const-string v40, ","

    invoke-virtual/range {v39 .. v40}, Ljava/io/StringWriter;->append(Ljava/lang/CharSequence;)Ljava/io/StringWriter;

    move-result-object v39

    const-string v40, "Altitude"

    .line 475
    invoke-virtual/range {v39 .. v40}, Ljava/io/StringWriter;->append(Ljava/lang/CharSequence;)Ljava/io/StringWriter;

    move-result-object v39

    const-string v40, ","

    invoke-virtual/range {v39 .. v40}, Ljava/io/StringWriter;->append(Ljava/lang/CharSequence;)Ljava/io/StringWriter;

    move-result-object v39

    const-string v40, "GPSSpeed"

    .line 476
    invoke-virtual/range {v39 .. v40}, Ljava/io/StringWriter;->append(Ljava/lang/CharSequence;)Ljava/io/StringWriter;

    .line 478
    invoke-virtual/range {v31 .. v31}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/String;->getBytes()[B

    move-result-object v39

    move-object/from16 v0, v34

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_1

    .line 552
    .end local v31    # "header":Ljava/io/StringWriter;
    .end local v36    # "speedAbs":D
    :catch_0
    move-exception v26

    .line 553
    .local v26, "e":Ljava/io/IOException;
    :try_start_3
    invoke-virtual/range {v26 .. v26}, Ljava/io/IOException;->printStackTrace()V

    .line 554
    sget-object v39, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string v41, "Caught IOException: "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v26 .. v26}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v41

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    invoke-virtual/range {v39 .. v40}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_1

    .line 562
    .end local v25    # "data":Lackmaniac/vescmonitor/RealtimeData;
    .end local v26    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v26

    .line 563
    .local v26, "e":Ljava/lang/InterruptedException;
    :try_start_4
    invoke-virtual/range {v26 .. v26}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto/16 :goto_0

    .line 590
    .end local v4    # "biActiveWatt":F
    .end local v5    # "biAhCharged":F
    .end local v6    # "biAhDrawn":F
    .end local v7    # "biDistance":F
    .end local v8    # "biRidingBatteryAmpsNeg":F
    .end local v9    # "biRidingBatteryAmpsPos":F
    .end local v10    # "biRidingMotorAmpsNeg":F
    .end local v11    # "biRidingMotorAmpsPos":F
    .end local v12    # "biRidingTime":J
    .end local v14    # "biRidingWatt":F
    .end local v15    # "biTotalUsedNegTime":F
    .end local v16    # "biTotalTime":J
    .end local v18    # "biTotalUsedPosTime":F
    .end local v19    # "biUsedBatteryAmpsNeg":F
    .end local v20    # "biUsedBatteryAmpsPos":F
    .end local v21    # "biUsedMotorAmpsNeg":F
    .end local v22    # "biUsedMotorAmpsPos":F
    .end local v23    # "biWhCharged":F
    .end local v24    # "biWhDrawn":F
    .end local v26    # "e":Ljava/lang/InterruptedException;
    .end local v28    # "file":Ljava/io/File;
    .end local v29    # "fileName":Ljava/lang/String;
    .end local v30    # "gotData":Z
    .end local v34    # "out":Ljava/io/FileOutputStream;
    .end local v35    # "settings":Landroid/content/SharedPreferences;
    :catch_2
    move-exception v26

    .line 591
    .local v26, "e":Ljava/io/FileNotFoundException;
    invoke-virtual/range {v26 .. v26}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 592
    sget-object v39, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string v41, "FileNotFoundException: "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v26 .. v26}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v41

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    invoke-virtual/range {v39 .. v40}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 601
    .end local v26    # "e":Ljava/io/FileNotFoundException;
    :cond_1
    :goto_3
    return-void

    .line 446
    .restart local v4    # "biActiveWatt":F
    .restart local v5    # "biAhCharged":F
    .restart local v6    # "biAhDrawn":F
    .restart local v7    # "biDistance":F
    .restart local v8    # "biRidingBatteryAmpsNeg":F
    .restart local v9    # "biRidingBatteryAmpsPos":F
    .restart local v10    # "biRidingMotorAmpsNeg":F
    .restart local v11    # "biRidingMotorAmpsPos":F
    .restart local v12    # "biRidingTime":J
    .restart local v14    # "biRidingWatt":F
    .restart local v15    # "biTotalUsedNegTime":F
    .restart local v16    # "biTotalTime":J
    .restart local v18    # "biTotalUsedPosTime":F
    .restart local v19    # "biUsedBatteryAmpsNeg":F
    .restart local v20    # "biUsedBatteryAmpsPos":F
    .restart local v21    # "biUsedMotorAmpsNeg":F
    .restart local v22    # "biUsedMotorAmpsPos":F
    .restart local v23    # "biWhCharged":F
    .restart local v24    # "biWhDrawn":F
    .restart local v25    # "data":Lackmaniac/vescmonitor/RealtimeData;
    .restart local v28    # "file":Ljava/io/File;
    .restart local v29    # "fileName":Ljava/lang/String;
    .restart local v30    # "gotData":Z
    .restart local v31    # "header":Ljava/io/StringWriter;
    .restart local v34    # "out":Ljava/io/FileOutputStream;
    .restart local v35    # "settings":Landroid/content/SharedPreferences;
    .restart local v36    # "speedAbs":D
    :cond_2
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/DeviceControlActivity$2;->this$0:Lackmaniac/vescmonitor/DeviceControlActivity;

    move-object/from16 v39, v0

    invoke-static/range {v39 .. v39}, Lackmaniac/vescmonitor/DeviceControlActivity;->access$1700(Lackmaniac/vescmonitor/DeviceControlActivity;)I

    move-result v39

    goto/16 :goto_2

    .line 480
    .end local v31    # "header":Ljava/io/StringWriter;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/DeviceControlActivity$2;->this$0:Lackmaniac/vescmonitor/DeviceControlActivity;

    move-object/from16 v39, v0

    invoke-static/range {v39 .. v39}, Lackmaniac/vescmonitor/DeviceControlActivity;->access$2600(Lackmaniac/vescmonitor/DeviceControlActivity;)J

    move-result-wide v40

    const-wide/16 v42, 0x1388

    add-long v40, v40, v42

    move-object/from16 v0, v25

    iget-object v0, v0, Lackmaniac/vescmonitor/RealtimeData;->time:Ljava/util/Date;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Ljava/util/Date;->getTime()J

    move-result-wide v42

    cmp-long v39, v40, v42

    if-gez v39, :cond_0

    .line 481
    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/DeviceControlActivity$2;->this$0:Lackmaniac/vescmonitor/DeviceControlActivity;

    move-object/from16 v39, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lackmaniac/vescmonitor/RealtimeData;->time:Ljava/util/Date;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Ljava/util/Date;->getTime()J

    move-result-wide v40

    invoke-static/range {v39 .. v41}, Lackmaniac/vescmonitor/DeviceControlActivity;->access$2602(Lackmaniac/vescmonitor/DeviceControlActivity;J)J

    .line 482
    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/DeviceControlActivity$2;->this$0:Lackmaniac/vescmonitor/DeviceControlActivity;

    move-object/from16 v39, v0

    const/16 v40, 0x1

    invoke-static/range {v39 .. v40}, Lackmaniac/vescmonitor/DeviceControlActivity;->access$2702(Lackmaniac/vescmonitor/DeviceControlActivity;Z)Z

    goto/16 :goto_1

    .line 487
    :cond_4
    new-instance v38, Ljava/io/StringWriter;

    invoke-direct/range {v38 .. v38}, Ljava/io/StringWriter;-><init>()V

    .line 488
    .local v38, "writer":Ljava/io/StringWriter;
    const-string v39, "\n"

    invoke-virtual/range {v38 .. v39}, Ljava/io/StringWriter;->append(Ljava/lang/CharSequence;)Ljava/io/StringWriter;

    move-result-object v39

    sget-object v40, Lackmaniac/vescmonitor/Utils;->formatter:Ljava/text/DateFormat;

    move-object/from16 v0, v25

    iget-object v0, v0, Lackmaniac/vescmonitor/RealtimeData;->time:Ljava/util/Date;

    move-object/from16 v41, v0

    .line 489
    invoke-virtual/range {v40 .. v41}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v40

    invoke-virtual/range {v39 .. v40}, Ljava/io/StringWriter;->append(Ljava/lang/CharSequence;)Ljava/io/StringWriter;

    move-result-object v39

    const-string v40, ","

    invoke-virtual/range {v39 .. v40}, Ljava/io/StringWriter;->append(Ljava/lang/CharSequence;)Ljava/io/StringWriter;

    move-result-object v39

    sget-object v40, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v41, "%.1f"

    const/16 v42, 0x1

    move/from16 v0, v42

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v42, v0

    const/16 v43, 0x0

    move-object/from16 v0, v25

    iget v0, v0, Lackmaniac/vescmonitor/RealtimeData;->tempPcb:F

    move/from16 v44, v0

    .line 490
    invoke-static/range {v44 .. v44}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v44

    aput-object v44, v42, v43

    invoke-static/range {v40 .. v42}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v40

    invoke-virtual/range {v39 .. v40}, Ljava/io/StringWriter;->append(Ljava/lang/CharSequence;)Ljava/io/StringWriter;

    move-result-object v39

    const-string v40, ","

    invoke-virtual/range {v39 .. v40}, Ljava/io/StringWriter;->append(Ljava/lang/CharSequence;)Ljava/io/StringWriter;

    move-result-object v39

    sget-object v40, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v41, "%.2f"

    const/16 v42, 0x1

    move/from16 v0, v42

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v42, v0

    const/16 v43, 0x0

    move-object/from16 v0, v25

    iget v0, v0, Lackmaniac/vescmonitor/RealtimeData;->avgMotorCurrent:F

    move/from16 v44, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/DeviceControlActivity$2;->this$0:Lackmaniac/vescmonitor/DeviceControlActivity;

    move-object/from16 v45, v0

    .line 491
    invoke-static/range {v45 .. v45}, Lackmaniac/vescmonitor/DeviceControlActivity;->access$2800(Lackmaniac/vescmonitor/DeviceControlActivity;)I

    move-result v45

    move/from16 v0, v45

    int-to-float v0, v0

    move/from16 v45, v0

    mul-float v44, v44, v45

    invoke-static/range {v44 .. v44}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v44

    aput-object v44, v42, v43

    invoke-static/range {v40 .. v42}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v40

    invoke-virtual/range {v39 .. v40}, Ljava/io/StringWriter;->append(Ljava/lang/CharSequence;)Ljava/io/StringWriter;

    move-result-object v39

    const-string v40, ","

    invoke-virtual/range {v39 .. v40}, Ljava/io/StringWriter;->append(Ljava/lang/CharSequence;)Ljava/io/StringWriter;

    move-result-object v39

    sget-object v40, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v41, "%.2f"

    const/16 v42, 0x1

    move/from16 v0, v42

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v42, v0

    const/16 v43, 0x0

    move-object/from16 v0, v25

    iget v0, v0, Lackmaniac/vescmonitor/RealtimeData;->avgInputCurrent:F

    move/from16 v44, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/DeviceControlActivity$2;->this$0:Lackmaniac/vescmonitor/DeviceControlActivity;

    move-object/from16 v45, v0

    .line 492
    invoke-static/range {v45 .. v45}, Lackmaniac/vescmonitor/DeviceControlActivity;->access$2800(Lackmaniac/vescmonitor/DeviceControlActivity;)I

    move-result v45

    move/from16 v0, v45

    int-to-float v0, v0

    move/from16 v45, v0

    mul-float v44, v44, v45

    invoke-static/range {v44 .. v44}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v44

    aput-object v44, v42, v43

    invoke-static/range {v40 .. v42}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v40

    invoke-virtual/range {v39 .. v40}, Ljava/io/StringWriter;->append(Ljava/lang/CharSequence;)Ljava/io/StringWriter;

    move-result-object v39

    const-string v40, ","

    invoke-virtual/range {v39 .. v40}, Ljava/io/StringWriter;->append(Ljava/lang/CharSequence;)Ljava/io/StringWriter;

    move-result-object v39

    sget-object v40, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v41, "%.0f"

    const/16 v42, 0x1

    move/from16 v0, v42

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v42, v0

    const/16 v43, 0x0

    move-object/from16 v0, v25

    iget v0, v0, Lackmaniac/vescmonitor/RealtimeData;->dutyCycleNow:F

    move/from16 v44, v0

    .line 493
    invoke-static/range {v44 .. v44}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v44

    aput-object v44, v42, v43

    invoke-static/range {v40 .. v42}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v40

    invoke-virtual/range {v39 .. v40}, Ljava/io/StringWriter;->append(Ljava/lang/CharSequence;)Ljava/io/StringWriter;

    move-result-object v39

    const-string v40, ","

    invoke-virtual/range {v39 .. v40}, Ljava/io/StringWriter;->append(Ljava/lang/CharSequence;)Ljava/io/StringWriter;

    move-result-object v39

    sget-object v40, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v41, "%.1f"

    const/16 v42, 0x1

    move/from16 v0, v42

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v42, v0

    const/16 v43, 0x0

    move-object/from16 v0, v25

    iget v0, v0, Lackmaniac/vescmonitor/RealtimeData;->rpm:F

    move/from16 v44, v0

    .line 494
    invoke-static {}, Lackmaniac/vescmonitor/Utils;->getSpeedDevider()F

    move-result v45

    div-float v44, v44, v45

    invoke-static/range {v44 .. v44}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v44

    aput-object v44, v42, v43

    invoke-static/range {v40 .. v42}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v40

    invoke-virtual/range {v39 .. v40}, Ljava/io/StringWriter;->append(Ljava/lang/CharSequence;)Ljava/io/StringWriter;

    move-result-object v39

    const-string v40, ","

    invoke-virtual/range {v39 .. v40}, Ljava/io/StringWriter;->append(Ljava/lang/CharSequence;)Ljava/io/StringWriter;

    move-result-object v39

    sget-object v40, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v41, "%.1f"

    const/16 v42, 0x1

    move/from16 v0, v42

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v42, v0

    const/16 v43, 0x0

    move-object/from16 v0, v25

    iget v0, v0, Lackmaniac/vescmonitor/RealtimeData;->inpVoltage:F

    move/from16 v44, v0

    .line 495
    invoke-static/range {v44 .. v44}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v44

    aput-object v44, v42, v43

    invoke-static/range {v40 .. v42}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v40

    invoke-virtual/range {v39 .. v40}, Ljava/io/StringWriter;->append(Ljava/lang/CharSequence;)Ljava/io/StringWriter;

    move-result-object v39

    const-string v40, ","

    invoke-virtual/range {v39 .. v40}, Ljava/io/StringWriter;->append(Ljava/lang/CharSequence;)Ljava/io/StringWriter;

    move-result-object v39

    sget-object v40, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v41, "%.3f"

    const/16 v42, 0x1

    move/from16 v0, v42

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v42, v0

    const/16 v43, 0x0

    move-object/from16 v0, v25

    iget v0, v0, Lackmaniac/vescmonitor/RealtimeData;->ampHours:F

    move/from16 v44, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/DeviceControlActivity$2;->this$0:Lackmaniac/vescmonitor/DeviceControlActivity;

    move-object/from16 v45, v0

    .line 496
    invoke-static/range {v45 .. v45}, Lackmaniac/vescmonitor/DeviceControlActivity;->access$2800(Lackmaniac/vescmonitor/DeviceControlActivity;)I

    move-result v45

    move/from16 v0, v45

    int-to-float v0, v0

    move/from16 v45, v0

    mul-float v44, v44, v45

    invoke-static/range {v44 .. v44}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v44

    aput-object v44, v42, v43

    invoke-static/range {v40 .. v42}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v40

    invoke-virtual/range {v39 .. v40}, Ljava/io/StringWriter;->append(Ljava/lang/CharSequence;)Ljava/io/StringWriter;

    move-result-object v39

    const-string v40, ","

    invoke-virtual/range {v39 .. v40}, Ljava/io/StringWriter;->append(Ljava/lang/CharSequence;)Ljava/io/StringWriter;

    move-result-object v39

    sget-object v40, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v41, "%.3f"

    const/16 v42, 0x1

    move/from16 v0, v42

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v42, v0

    const/16 v43, 0x0

    move-object/from16 v0, v25

    iget v0, v0, Lackmaniac/vescmonitor/RealtimeData;->ampHoursCharged:F

    move/from16 v44, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/DeviceControlActivity$2;->this$0:Lackmaniac/vescmonitor/DeviceControlActivity;

    move-object/from16 v45, v0

    .line 497
    invoke-static/range {v45 .. v45}, Lackmaniac/vescmonitor/DeviceControlActivity;->access$2800(Lackmaniac/vescmonitor/DeviceControlActivity;)I

    move-result v45

    move/from16 v0, v45

    int-to-float v0, v0

    move/from16 v45, v0

    mul-float v44, v44, v45

    invoke-static/range {v44 .. v44}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v44

    aput-object v44, v42, v43

    invoke-static/range {v40 .. v42}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v40

    invoke-virtual/range {v39 .. v40}, Ljava/io/StringWriter;->append(Ljava/lang/CharSequence;)Ljava/io/StringWriter;

    move-result-object v39

    const-string v40, ","

    invoke-virtual/range {v39 .. v40}, Ljava/io/StringWriter;->append(Ljava/lang/CharSequence;)Ljava/io/StringWriter;

    move-result-object v39

    sget-object v40, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v41, "%.3f"

    const/16 v42, 0x1

    move/from16 v0, v42

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v42, v0

    const/16 v43, 0x0

    move-object/from16 v0, v25

    iget v0, v0, Lackmaniac/vescmonitor/RealtimeData;->wattHours:F

    move/from16 v44, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/DeviceControlActivity$2;->this$0:Lackmaniac/vescmonitor/DeviceControlActivity;

    move-object/from16 v45, v0

    .line 498
    invoke-static/range {v45 .. v45}, Lackmaniac/vescmonitor/DeviceControlActivity;->access$2800(Lackmaniac/vescmonitor/DeviceControlActivity;)I

    move-result v45

    move/from16 v0, v45

    int-to-float v0, v0

    move/from16 v45, v0

    mul-float v44, v44, v45

    invoke-static/range {v44 .. v44}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v44

    aput-object v44, v42, v43

    invoke-static/range {v40 .. v42}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v40

    invoke-virtual/range {v39 .. v40}, Ljava/io/StringWriter;->append(Ljava/lang/CharSequence;)Ljava/io/StringWriter;

    move-result-object v39

    const-string v40, ","

    invoke-virtual/range {v39 .. v40}, Ljava/io/StringWriter;->append(Ljava/lang/CharSequence;)Ljava/io/StringWriter;

    move-result-object v39

    sget-object v40, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v41, "%.3f"

    const/16 v42, 0x1

    move/from16 v0, v42

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v42, v0

    const/16 v43, 0x0

    move-object/from16 v0, v25

    iget v0, v0, Lackmaniac/vescmonitor/RealtimeData;->wattHoursCharged:F

    move/from16 v44, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/DeviceControlActivity$2;->this$0:Lackmaniac/vescmonitor/DeviceControlActivity;

    move-object/from16 v45, v0

    .line 499
    invoke-static/range {v45 .. v45}, Lackmaniac/vescmonitor/DeviceControlActivity;->access$2800(Lackmaniac/vescmonitor/DeviceControlActivity;)I

    move-result v45

    move/from16 v0, v45

    int-to-float v0, v0

    move/from16 v45, v0

    mul-float v44, v44, v45

    invoke-static/range {v44 .. v44}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v44

    aput-object v44, v42, v43

    invoke-static/range {v40 .. v42}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v40

    invoke-virtual/range {v39 .. v40}, Ljava/io/StringWriter;->append(Ljava/lang/CharSequence;)Ljava/io/StringWriter;

    move-result-object v39

    const-string v40, ","

    invoke-virtual/range {v39 .. v40}, Ljava/io/StringWriter;->append(Ljava/lang/CharSequence;)Ljava/io/StringWriter;

    move-result-object v39

    sget-object v40, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v41, "%.3f"

    const/16 v42, 0x1

    move/from16 v0, v42

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v42, v0

    const/16 v43, 0x0

    move-object/from16 v0, v25

    iget v0, v0, Lackmaniac/vescmonitor/RealtimeData;->tachometerAbs:F

    move/from16 v44, v0

    .line 500
    invoke-static {}, Lackmaniac/vescmonitor/Utils;->getDistanceFactor()F

    move-result v45

    mul-float v44, v44, v45

    const/high16 v45, 0x447a0000    # 1000.0f

    div-float v44, v44, v45

    invoke-static/range {v44 .. v44}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v44

    aput-object v44, v42, v43

    invoke-static/range {v40 .. v42}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v40

    invoke-virtual/range {v39 .. v40}, Ljava/io/StringWriter;->append(Ljava/lang/CharSequence;)Ljava/io/StringWriter;

    move-result-object v39

    const-string v40, ","

    invoke-virtual/range {v39 .. v40}, Ljava/io/StringWriter;->append(Ljava/lang/CharSequence;)Ljava/io/StringWriter;

    move-result-object v39

    sget-object v40, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v41, "%.0f"

    const/16 v42, 0x1

    move/from16 v0, v42

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v42, v0

    const/16 v43, 0x0

    move-object/from16 v0, v25

    iget v0, v0, Lackmaniac/vescmonitor/RealtimeData;->power:F

    move/from16 v44, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/DeviceControlActivity$2;->this$0:Lackmaniac/vescmonitor/DeviceControlActivity;

    move-object/from16 v45, v0

    .line 501
    invoke-static/range {v45 .. v45}, Lackmaniac/vescmonitor/DeviceControlActivity;->access$2800(Lackmaniac/vescmonitor/DeviceControlActivity;)I

    move-result v45

    move/from16 v0, v45

    int-to-float v0, v0

    move/from16 v45, v0

    mul-float v44, v44, v45

    invoke-static/range {v44 .. v44}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v44

    aput-object v44, v42, v43

    invoke-static/range {v40 .. v42}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v40

    invoke-virtual/range {v39 .. v40}, Ljava/io/StringWriter;->append(Ljava/lang/CharSequence;)Ljava/io/StringWriter;

    move-result-object v39

    const-string v40, ","

    invoke-virtual/range {v39 .. v40}, Ljava/io/StringWriter;->append(Ljava/lang/CharSequence;)Ljava/io/StringWriter;

    move-result-object v39

    move-object/from16 v0, v25

    iget v0, v0, Lackmaniac/vescmonitor/RealtimeData;->fault:I

    move/from16 v40, v0

    .line 502
    invoke-static/range {v40 .. v40}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v40

    invoke-virtual/range {v39 .. v40}, Ljava/io/StringWriter;->append(Ljava/lang/CharSequence;)Ljava/io/StringWriter;

    move-result-object v39

    const-string v40, ","

    invoke-virtual/range {v39 .. v40}, Ljava/io/StringWriter;->append(Ljava/lang/CharSequence;)Ljava/io/StringWriter;

    move-result-object v39

    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/DeviceControlActivity$2;->this$0:Lackmaniac/vescmonitor/DeviceControlActivity;

    move-object/from16 v40, v0

    .line 503
    invoke-static/range {v40 .. v40}, Lackmaniac/vescmonitor/DeviceControlActivity;->access$1400(Lackmaniac/vescmonitor/DeviceControlActivity;)J

    move-result-wide v40

    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/DeviceControlActivity$2;->this$0:Lackmaniac/vescmonitor/DeviceControlActivity;

    move-object/from16 v42, v0

    invoke-static/range {v42 .. v42}, Lackmaniac/vescmonitor/DeviceControlActivity;->access$800(Lackmaniac/vescmonitor/DeviceControlActivity;)J

    move-result-wide v42

    sub-long v40, v40, v42

    invoke-static/range {v40 .. v41}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v40

    invoke-virtual/range {v39 .. v40}, Ljava/io/StringWriter;->append(Ljava/lang/CharSequence;)Ljava/io/StringWriter;

    move-result-object v39

    const-string v40, ","

    invoke-virtual/range {v39 .. v40}, Ljava/io/StringWriter;->append(Ljava/lang/CharSequence;)Ljava/io/StringWriter;

    .line 504
    move-object/from16 v0, v25

    iget-object v0, v0, Lackmaniac/vescmonitor/RealtimeData;->location:Landroid/location/Location;

    move-object/from16 v39, v0

    if-eqz v39, :cond_6

    .line 505
    sget-object v39, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v40, "%.7f"

    const/16 v41, 0x1

    move/from16 v0, v41

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v41, v0

    const/16 v42, 0x0

    move-object/from16 v0, v25

    iget-object v0, v0, Lackmaniac/vescmonitor/RealtimeData;->location:Landroid/location/Location;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Landroid/location/Location;->getLatitude()D

    move-result-wide v44

    invoke-static/range {v44 .. v45}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v43

    aput-object v43, v41, v42

    invoke-static/range {v39 .. v41}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v39

    invoke-virtual/range {v38 .. v39}, Ljava/io/StringWriter;->append(Ljava/lang/CharSequence;)Ljava/io/StringWriter;

    move-result-object v39

    const-string v40, ","

    invoke-virtual/range {v39 .. v40}, Ljava/io/StringWriter;->append(Ljava/lang/CharSequence;)Ljava/io/StringWriter;

    move-result-object v39

    sget-object v40, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v41, "%.7f"

    const/16 v42, 0x1

    move/from16 v0, v42

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v42, v0

    const/16 v43, 0x0

    move-object/from16 v0, v25

    iget-object v0, v0, Lackmaniac/vescmonitor/RealtimeData;->location:Landroid/location/Location;

    move-object/from16 v44, v0

    .line 506
    invoke-virtual/range {v44 .. v44}, Landroid/location/Location;->getLongitude()D

    move-result-wide v44

    invoke-static/range {v44 .. v45}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v44

    aput-object v44, v42, v43

    invoke-static/range {v40 .. v42}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v40

    invoke-virtual/range {v39 .. v40}, Ljava/io/StringWriter;->append(Ljava/lang/CharSequence;)Ljava/io/StringWriter;

    move-result-object v39

    const-string v40, ","

    invoke-virtual/range {v39 .. v40}, Ljava/io/StringWriter;->append(Ljava/lang/CharSequence;)Ljava/io/StringWriter;

    move-result-object v39

    sget-object v40, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v41, "%.1f"

    const/16 v42, 0x1

    move/from16 v0, v42

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v42, v0

    const/16 v43, 0x0

    move-object/from16 v0, v25

    iget-object v0, v0, Lackmaniac/vescmonitor/RealtimeData;->location:Landroid/location/Location;

    move-object/from16 v44, v0

    .line 507
    invoke-virtual/range {v44 .. v44}, Landroid/location/Location;->getAltitude()D

    move-result-wide v44

    invoke-static/range {v44 .. v45}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v44

    aput-object v44, v42, v43

    invoke-static/range {v40 .. v42}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v40

    invoke-virtual/range {v39 .. v40}, Ljava/io/StringWriter;->append(Ljava/lang/CharSequence;)Ljava/io/StringWriter;

    move-result-object v39

    const-string v40, ","

    invoke-virtual/range {v39 .. v40}, Ljava/io/StringWriter;->append(Ljava/lang/CharSequence;)Ljava/io/StringWriter;

    move-result-object v40

    sget-object v41, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v42, "%.2f"

    const/16 v39, 0x1

    move/from16 v0, v39

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v43, v0

    const/16 v44, 0x0

    move-object/from16 v0, v25

    iget-object v0, v0, Lackmaniac/vescmonitor/RealtimeData;->location:Landroid/location/Location;

    move-object/from16 v39, v0

    .line 508
    invoke-virtual/range {v39 .. v39}, Landroid/location/Location;->getSpeed()F

    move-result v39

    const v45, 0x40666666    # 3.6f

    mul-float v45, v45, v39

    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/DeviceControlActivity$2;->this$0:Lackmaniac/vescmonitor/DeviceControlActivity;

    move-object/from16 v39, v0

    invoke-static/range {v39 .. v39}, Lackmaniac/vescmonitor/DeviceControlActivity;->access$2900(Lackmaniac/vescmonitor/DeviceControlActivity;)I

    move-result v39

    const/16 v46, 0x1

    move/from16 v0, v39

    move/from16 v1, v46

    if-ne v0, v1, :cond_5

    const v39, 0x3fcdfeda

    :goto_4
    div-float v39, v45, v39

    invoke-static/range {v39 .. v39}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v39

    aput-object v39, v43, v44

    invoke-static/range {v41 .. v43}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, v40

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/io/StringWriter;->append(Ljava/lang/CharSequence;)Ljava/io/StringWriter;

    .line 517
    :goto_5
    invoke-virtual/range {v38 .. v38}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/String;->getBytes()[B

    move-result-object v39

    move-object/from16 v0, v34

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 519
    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/DeviceControlActivity$2;->this$0:Lackmaniac/vescmonitor/DeviceControlActivity;

    move-object/from16 v39, v0

    invoke-static/range {v39 .. v39}, Lackmaniac/vescmonitor/DeviceControlActivity;->access$2600(Lackmaniac/vescmonitor/DeviceControlActivity;)J

    move-result-wide v40

    const-wide/16 v42, 0x1388

    add-long v40, v40, v42

    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/DeviceControlActivity$2;->this$0:Lackmaniac/vescmonitor/DeviceControlActivity;

    move-object/from16 v39, v0

    invoke-static/range {v39 .. v39}, Lackmaniac/vescmonitor/DeviceControlActivity;->access$1400(Lackmaniac/vescmonitor/DeviceControlActivity;)J

    move-result-wide v42

    cmp-long v39, v40, v42

    if-gez v39, :cond_0

    .line 520
    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/DeviceControlActivity$2;->this$0:Lackmaniac/vescmonitor/DeviceControlActivity;

    move-object/from16 v39, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/DeviceControlActivity$2;->this$0:Lackmaniac/vescmonitor/DeviceControlActivity;

    move-object/from16 v40, v0

    invoke-static/range {v40 .. v40}, Lackmaniac/vescmonitor/DeviceControlActivity;->access$1400(Lackmaniac/vescmonitor/DeviceControlActivity;)J

    move-result-wide v40

    invoke-static/range {v39 .. v41}, Lackmaniac/vescmonitor/DeviceControlActivity;->access$2602(Lackmaniac/vescmonitor/DeviceControlActivity;J)J

    .line 522
    invoke-interface/range {v35 .. v35}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v27

    .line 525
    .local v27, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v39, "BI_TOTAL_KM"

    invoke-static/range {v39 .. v39}, Lackmaniac/vescmonitor/Utils;->getSettingsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, v25

    iget v0, v0, Lackmaniac/vescmonitor/RealtimeData;->tachometerAbs:F

    move/from16 v39, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/DeviceControlActivity$2;->this$0:Lackmaniac/vescmonitor/DeviceControlActivity;

    move-object/from16 v41, v0

    invoke-static/range {v41 .. v41}, Lackmaniac/vescmonitor/DeviceControlActivity;->access$700(Lackmaniac/vescmonitor/DeviceControlActivity;)I

    move-result v41

    move/from16 v0, v41

    int-to-float v0, v0

    move/from16 v41, v0

    sub-float v39, v39, v41

    invoke-static {}, Lackmaniac/vescmonitor/Utils;->getDistanceFactor()F

    move-result v41

    mul-float v39, v39, v41

    const/high16 v41, 0x447a0000    # 1000.0f

    div-float v41, v39, v41

    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/DeviceControlActivity$2;->this$0:Lackmaniac/vescmonitor/DeviceControlActivity;

    move-object/from16 v39, v0

    invoke-static/range {v39 .. v39}, Lackmaniac/vescmonitor/DeviceControlActivity;->access$2900(Lackmaniac/vescmonitor/DeviceControlActivity;)I

    move-result v39

    const/16 v42, 0x1

    move/from16 v0, v39

    move/from16 v1, v42

    if-ne v0, v1, :cond_7

    const v39, 0x3fcdfeda

    :goto_6
    mul-float v39, v39, v41

    add-float v39, v39, v7

    move-object/from16 v0, v27

    move-object/from16 v1, v40

    move/from16 v2, v39

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 526
    const-string v39, "BI_WH_DRAWN"

    invoke-static/range {v39 .. v39}, Lackmaniac/vescmonitor/Utils;->getSettingsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, v25

    iget v0, v0, Lackmaniac/vescmonitor/RealtimeData;->wattHours:F

    move/from16 v40, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/DeviceControlActivity$2;->this$0:Lackmaniac/vescmonitor/DeviceControlActivity;

    move-object/from16 v41, v0

    invoke-static/range {v41 .. v41}, Lackmaniac/vescmonitor/DeviceControlActivity;->access$900(Lackmaniac/vescmonitor/DeviceControlActivity;)F

    move-result v41

    sub-float v40, v40, v41

    add-float v40, v40, v24

    move-object/from16 v0, v27

    move-object/from16 v1, v39

    move/from16 v2, v40

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 527
    const-string v39, "BI_WH_CHARGED"

    invoke-static/range {v39 .. v39}, Lackmaniac/vescmonitor/Utils;->getSettingsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, v25

    iget v0, v0, Lackmaniac/vescmonitor/RealtimeData;->wattHoursCharged:F

    move/from16 v40, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/DeviceControlActivity$2;->this$0:Lackmaniac/vescmonitor/DeviceControlActivity;

    move-object/from16 v41, v0

    invoke-static/range {v41 .. v41}, Lackmaniac/vescmonitor/DeviceControlActivity;->access$1000(Lackmaniac/vescmonitor/DeviceControlActivity;)F

    move-result v41

    sub-float v40, v40, v41

    add-float v40, v40, v23

    move-object/from16 v0, v27

    move-object/from16 v1, v39

    move/from16 v2, v40

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 528
    const-string v39, "BI_AH_DRAWN"

    invoke-static/range {v39 .. v39}, Lackmaniac/vescmonitor/Utils;->getSettingsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, v25

    iget v0, v0, Lackmaniac/vescmonitor/RealtimeData;->ampHours:F

    move/from16 v40, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/DeviceControlActivity$2;->this$0:Lackmaniac/vescmonitor/DeviceControlActivity;

    move-object/from16 v41, v0

    invoke-static/range {v41 .. v41}, Lackmaniac/vescmonitor/DeviceControlActivity;->access$1100(Lackmaniac/vescmonitor/DeviceControlActivity;)F

    move-result v41

    sub-float v40, v40, v41

    add-float v40, v40, v6

    move-object/from16 v0, v27

    move-object/from16 v1, v39

    move/from16 v2, v40

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 529
    const-string v39, "BI_AH_CHARGED"

    invoke-static/range {v39 .. v39}, Lackmaniac/vescmonitor/Utils;->getSettingsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, v25

    iget v0, v0, Lackmaniac/vescmonitor/RealtimeData;->ampHoursCharged:F

    move/from16 v40, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/DeviceControlActivity$2;->this$0:Lackmaniac/vescmonitor/DeviceControlActivity;

    move-object/from16 v41, v0

    invoke-static/range {v41 .. v41}, Lackmaniac/vescmonitor/DeviceControlActivity;->access$1200(Lackmaniac/vescmonitor/DeviceControlActivity;)F

    move-result v41

    sub-float v40, v40, v41

    add-float v40, v40, v5

    move-object/from16 v0, v27

    move-object/from16 v1, v39

    move/from16 v2, v40

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 530
    const-string v39, "BI_TOTAL_TIME"

    invoke-static/range {v39 .. v39}, Lackmaniac/vescmonitor/Utils;->getSettingsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/DeviceControlActivity$2;->this$0:Lackmaniac/vescmonitor/DeviceControlActivity;

    move-object/from16 v40, v0

    invoke-static/range {v40 .. v40}, Lackmaniac/vescmonitor/DeviceControlActivity;->access$1400(Lackmaniac/vescmonitor/DeviceControlActivity;)J

    move-result-wide v40

    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/DeviceControlActivity$2;->this$0:Lackmaniac/vescmonitor/DeviceControlActivity;

    move-object/from16 v42, v0

    invoke-static/range {v42 .. v42}, Lackmaniac/vescmonitor/DeviceControlActivity;->access$800(Lackmaniac/vescmonitor/DeviceControlActivity;)J

    move-result-wide v42

    sub-long v40, v40, v42

    add-long v40, v40, v16

    move-object/from16 v0, v27

    move-object/from16 v1, v39

    move-wide/from16 v2, v40

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 531
    const-string v39, "BI_RIDING_TIME"

    invoke-static/range {v39 .. v39}, Lackmaniac/vescmonitor/Utils;->getSettingsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/DeviceControlActivity$2;->this$0:Lackmaniac/vescmonitor/DeviceControlActivity;

    move-object/from16 v40, v0

    invoke-static/range {v40 .. v40}, Lackmaniac/vescmonitor/DeviceControlActivity;->access$3000(Lackmaniac/vescmonitor/DeviceControlActivity;)F

    move-result v40

    const/high16 v41, 0x447a0000    # 1000.0f

    mul-float v40, v40, v41

    move/from16 v0, v40

    float-to-long v0, v0

    move-wide/from16 v40, v0

    add-long v40, v40, v12

    move-object/from16 v0, v27

    move-object/from16 v1, v39

    move-wide/from16 v2, v40

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 532
    const-string v39, "BI_RIDING_WATT"

    invoke-static/range {v39 .. v39}, Lackmaniac/vescmonitor/Utils;->getSettingsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/DeviceControlActivity$2;->this$0:Lackmaniac/vescmonitor/DeviceControlActivity;

    move-object/from16 v40, v0

    invoke-static/range {v40 .. v40}, Lackmaniac/vescmonitor/DeviceControlActivity;->access$3100(Lackmaniac/vescmonitor/DeviceControlActivity;)F

    move-result v40

    add-float v40, v40, v14

    move-object/from16 v0, v27

    move-object/from16 v1, v39

    move/from16 v2, v40

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 533
    const-string v39, "BI_TOTAL_USED_POS_TIME"

    invoke-static/range {v39 .. v39}, Lackmaniac/vescmonitor/Utils;->getSettingsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/DeviceControlActivity$2;->this$0:Lackmaniac/vescmonitor/DeviceControlActivity;

    move-object/from16 v40, v0

    invoke-static/range {v40 .. v40}, Lackmaniac/vescmonitor/DeviceControlActivity;->access$3200(Lackmaniac/vescmonitor/DeviceControlActivity;)F

    move-result v40

    add-float v40, v40, v18

    move-object/from16 v0, v27

    move-object/from16 v1, v39

    move/from16 v2, v40

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 534
    const-string v39, "BI_TOTAL_USED_NEG_TIME"

    invoke-static/range {v39 .. v39}, Lackmaniac/vescmonitor/Utils;->getSettingsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/DeviceControlActivity$2;->this$0:Lackmaniac/vescmonitor/DeviceControlActivity;

    move-object/from16 v40, v0

    invoke-static/range {v40 .. v40}, Lackmaniac/vescmonitor/DeviceControlActivity;->access$3300(Lackmaniac/vescmonitor/DeviceControlActivity;)F

    move-result v40

    add-float v40, v40, v15

    move-object/from16 v0, v27

    move-object/from16 v1, v39

    move/from16 v2, v40

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 535
    const-string v39, "BI_ACTIVE_WATT"

    invoke-static/range {v39 .. v39}, Lackmaniac/vescmonitor/Utils;->getSettingsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/DeviceControlActivity$2;->this$0:Lackmaniac/vescmonitor/DeviceControlActivity;

    move-object/from16 v40, v0

    invoke-static/range {v40 .. v40}, Lackmaniac/vescmonitor/DeviceControlActivity;->access$3400(Lackmaniac/vescmonitor/DeviceControlActivity;)F

    move-result v40

    add-float v40, v40, v4

    move-object/from16 v0, v27

    move-object/from16 v1, v39

    move/from16 v2, v40

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 537
    const-string v39, "BI_USED_MOTOR_AMPS_POS"

    invoke-static/range {v39 .. v39}, Lackmaniac/vescmonitor/Utils;->getSettingsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/DeviceControlActivity$2;->this$0:Lackmaniac/vescmonitor/DeviceControlActivity;

    move-object/from16 v40, v0

    invoke-static/range {v40 .. v40}, Lackmaniac/vescmonitor/DeviceControlActivity;->access$3500(Lackmaniac/vescmonitor/DeviceControlActivity;)F

    move-result v40

    add-float v40, v40, v22

    move-object/from16 v0, v27

    move-object/from16 v1, v39

    move/from16 v2, v40

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 538
    const-string v39, "BI_USED_MOTOR_AMPS_NEG"

    invoke-static/range {v39 .. v39}, Lackmaniac/vescmonitor/Utils;->getSettingsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/DeviceControlActivity$2;->this$0:Lackmaniac/vescmonitor/DeviceControlActivity;

    move-object/from16 v40, v0

    invoke-static/range {v40 .. v40}, Lackmaniac/vescmonitor/DeviceControlActivity;->access$3600(Lackmaniac/vescmonitor/DeviceControlActivity;)F

    move-result v40

    add-float v40, v40, v21

    move-object/from16 v0, v27

    move-object/from16 v1, v39

    move/from16 v2, v40

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 539
    const-string v39, "BI_USED_BATTERY_AMPS_POS"

    invoke-static/range {v39 .. v39}, Lackmaniac/vescmonitor/Utils;->getSettingsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/DeviceControlActivity$2;->this$0:Lackmaniac/vescmonitor/DeviceControlActivity;

    move-object/from16 v40, v0

    invoke-static/range {v40 .. v40}, Lackmaniac/vescmonitor/DeviceControlActivity;->access$3700(Lackmaniac/vescmonitor/DeviceControlActivity;)F

    move-result v40

    add-float v40, v40, v20

    move-object/from16 v0, v27

    move-object/from16 v1, v39

    move/from16 v2, v40

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 540
    const-string v39, "BI_USED_BATTERY_AMPS_NEG"

    invoke-static/range {v39 .. v39}, Lackmaniac/vescmonitor/Utils;->getSettingsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/DeviceControlActivity$2;->this$0:Lackmaniac/vescmonitor/DeviceControlActivity;

    move-object/from16 v40, v0

    invoke-static/range {v40 .. v40}, Lackmaniac/vescmonitor/DeviceControlActivity;->access$3800(Lackmaniac/vescmonitor/DeviceControlActivity;)F

    move-result v40

    add-float v40, v40, v19

    move-object/from16 v0, v27

    move-object/from16 v1, v39

    move/from16 v2, v40

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 542
    const-string v39, "BI_RIDING_MOTOR_AMPS_POS"

    invoke-static/range {v39 .. v39}, Lackmaniac/vescmonitor/Utils;->getSettingsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/DeviceControlActivity$2;->this$0:Lackmaniac/vescmonitor/DeviceControlActivity;

    move-object/from16 v40, v0

    invoke-static/range {v40 .. v40}, Lackmaniac/vescmonitor/DeviceControlActivity;->access$3900(Lackmaniac/vescmonitor/DeviceControlActivity;)F

    move-result v40

    add-float v40, v40, v11

    move-object/from16 v0, v27

    move-object/from16 v1, v39

    move/from16 v2, v40

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 543
    const-string v39, "BI_RIDING_MOTOR_AMPS_NEG"

    invoke-static/range {v39 .. v39}, Lackmaniac/vescmonitor/Utils;->getSettingsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/DeviceControlActivity$2;->this$0:Lackmaniac/vescmonitor/DeviceControlActivity;

    move-object/from16 v40, v0

    invoke-static/range {v40 .. v40}, Lackmaniac/vescmonitor/DeviceControlActivity;->access$4000(Lackmaniac/vescmonitor/DeviceControlActivity;)F

    move-result v40

    add-float v40, v40, v10

    move-object/from16 v0, v27

    move-object/from16 v1, v39

    move/from16 v2, v40

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 544
    const-string v39, "BI_RIDING_BATTERY_AMPS_POS"

    invoke-static/range {v39 .. v39}, Lackmaniac/vescmonitor/Utils;->getSettingsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/DeviceControlActivity$2;->this$0:Lackmaniac/vescmonitor/DeviceControlActivity;

    move-object/from16 v40, v0

    invoke-static/range {v40 .. v40}, Lackmaniac/vescmonitor/DeviceControlActivity;->access$4100(Lackmaniac/vescmonitor/DeviceControlActivity;)F

    move-result v40

    add-float v40, v40, v9

    move-object/from16 v0, v27

    move-object/from16 v1, v39

    move/from16 v2, v40

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 545
    const-string v39, "BI_RIDING_BATTERY_AMPS_NEG"

    invoke-static/range {v39 .. v39}, Lackmaniac/vescmonitor/Utils;->getSettingsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/DeviceControlActivity$2;->this$0:Lackmaniac/vescmonitor/DeviceControlActivity;

    move-object/from16 v40, v0

    invoke-static/range {v40 .. v40}, Lackmaniac/vescmonitor/DeviceControlActivity;->access$4200(Lackmaniac/vescmonitor/DeviceControlActivity;)F

    move-result v40

    add-float v40, v40, v8

    move-object/from16 v0, v27

    move-object/from16 v1, v39

    move/from16 v2, v40

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 547
    invoke-interface/range {v27 .. v27}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 549
    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/DeviceControlActivity$2;->this$0:Lackmaniac/vescmonitor/DeviceControlActivity;

    move-object/from16 v39, v0

    const/16 v40, 0x1

    invoke-static/range {v39 .. v40}, Lackmaniac/vescmonitor/DeviceControlActivity;->access$2702(Lackmaniac/vescmonitor/DeviceControlActivity;Z)Z

    goto/16 :goto_1

    .line 508
    .end local v27    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_5
    const/high16 v39, 0x3f800000    # 1.0f

    goto/16 :goto_4

    .line 511
    :cond_6
    const-string v39, "0.0"

    invoke-virtual/range {v38 .. v39}, Ljava/io/StringWriter;->append(Ljava/lang/CharSequence;)Ljava/io/StringWriter;

    move-result-object v39

    const-string v40, ","

    invoke-virtual/range {v39 .. v40}, Ljava/io/StringWriter;->append(Ljava/lang/CharSequence;)Ljava/io/StringWriter;

    move-result-object v39

    const-string v40, "0.0"

    .line 512
    invoke-virtual/range {v39 .. v40}, Ljava/io/StringWriter;->append(Ljava/lang/CharSequence;)Ljava/io/StringWriter;

    move-result-object v39

    const-string v40, ","

    invoke-virtual/range {v39 .. v40}, Ljava/io/StringWriter;->append(Ljava/lang/CharSequence;)Ljava/io/StringWriter;

    move-result-object v39

    const-string v40, "0.0"

    .line 513
    invoke-virtual/range {v39 .. v40}, Ljava/io/StringWriter;->append(Ljava/lang/CharSequence;)Ljava/io/StringWriter;

    move-result-object v39

    const-string v40, ","

    invoke-virtual/range {v39 .. v40}, Ljava/io/StringWriter;->append(Ljava/lang/CharSequence;)Ljava/io/StringWriter;

    move-result-object v39

    const-string v40, "0.0"

    .line 514
    invoke-virtual/range {v39 .. v40}, Ljava/io/StringWriter;->append(Ljava/lang/CharSequence;)Ljava/io/StringWriter;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_2

    goto/16 :goto_5

    .line 525
    .restart local v27    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_7
    const/high16 v39, 0x3f800000    # 1.0f

    goto/16 :goto_6

    .line 557
    .end local v27    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v36    # "speedAbs":D
    .end local v38    # "writer":Ljava/io/StringWriter;
    :cond_8
    const/16 v30, 0x0

    goto/16 :goto_1

    .line 561
    .end local v25    # "data":Lackmaniac/vescmonitor/RealtimeData;
    :cond_9
    const-wide/16 v40, 0x64

    :try_start_6
    invoke-static/range {v40 .. v41}, Ljava/lang/Thread;->sleep(J)V
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto/16 :goto_0

    .line 594
    .end local v4    # "biActiveWatt":F
    .end local v5    # "biAhCharged":F
    .end local v6    # "biAhDrawn":F
    .end local v7    # "biDistance":F
    .end local v8    # "biRidingBatteryAmpsNeg":F
    .end local v9    # "biRidingBatteryAmpsPos":F
    .end local v10    # "biRidingMotorAmpsNeg":F
    .end local v11    # "biRidingMotorAmpsPos":F
    .end local v12    # "biRidingTime":J
    .end local v14    # "biRidingWatt":F
    .end local v15    # "biTotalUsedNegTime":F
    .end local v16    # "biTotalTime":J
    .end local v18    # "biTotalUsedPosTime":F
    .end local v19    # "biUsedBatteryAmpsNeg":F
    .end local v20    # "biUsedBatteryAmpsPos":F
    .end local v21    # "biUsedMotorAmpsNeg":F
    .end local v22    # "biUsedMotorAmpsPos":F
    .end local v23    # "biWhCharged":F
    .end local v24    # "biWhDrawn":F
    .end local v28    # "file":Ljava/io/File;
    .end local v29    # "fileName":Ljava/lang/String;
    .end local v30    # "gotData":Z
    .end local v34    # "out":Ljava/io/FileOutputStream;
    .end local v35    # "settings":Landroid/content/SharedPreferences;
    :catch_3
    move-exception v26

    .line 595
    .local v26, "e":Ljava/io/IOException;
    invoke-virtual/range {v26 .. v26}, Ljava/io/IOException;->printStackTrace()V

    .line 596
    sget-object v39, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string v41, "Caught IOException: "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v26 .. v26}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v41

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    invoke-virtual/range {v39 .. v40}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 567
    .end local v26    # "e":Ljava/io/IOException;
    .restart local v4    # "biActiveWatt":F
    .restart local v5    # "biAhCharged":F
    .restart local v6    # "biAhDrawn":F
    .restart local v7    # "biDistance":F
    .restart local v8    # "biRidingBatteryAmpsNeg":F
    .restart local v9    # "biRidingBatteryAmpsPos":F
    .restart local v10    # "biRidingMotorAmpsNeg":F
    .restart local v11    # "biRidingMotorAmpsPos":F
    .restart local v12    # "biRidingTime":J
    .restart local v14    # "biRidingWatt":F
    .restart local v15    # "biTotalUsedNegTime":F
    .restart local v16    # "biTotalTime":J
    .restart local v18    # "biTotalUsedPosTime":F
    .restart local v19    # "biUsedBatteryAmpsNeg":F
    .restart local v20    # "biUsedBatteryAmpsPos":F
    .restart local v21    # "biUsedMotorAmpsNeg":F
    .restart local v22    # "biUsedMotorAmpsPos":F
    .restart local v23    # "biWhCharged":F
    .restart local v24    # "biWhDrawn":F
    .restart local v28    # "file":Ljava/io/File;
    .restart local v29    # "fileName":Ljava/lang/String;
    .restart local v34    # "out":Ljava/io/FileOutputStream;
    .restart local v35    # "settings":Landroid/content/SharedPreferences;
    :cond_a
    :try_start_7
    invoke-virtual/range {v34 .. v34}, Ljava/io/FileOutputStream;->close()V

    .line 569
    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/DeviceControlActivity$2;->this$0:Lackmaniac/vescmonitor/DeviceControlActivity;

    move-object/from16 v39, v0

    invoke-static/range {v39 .. v39}, Lackmaniac/vescmonitor/DeviceControlActivity;->access$700(Lackmaniac/vescmonitor/DeviceControlActivity;)I

    move-result v39

    const/16 v40, -0x1

    move/from16 v0, v39

    move/from16 v1, v40

    if-ne v0, v1, :cond_b

    .line 570
    invoke-virtual/range {v28 .. v28}, Ljava/io/File;->delete()Z

    move-result v39

    if-nez v39, :cond_1

    .line 571
    const-string v39, "DELETE"

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string v41, "File "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v28 .. v28}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v41

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    const-string v41, " could not be deleted"

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    invoke-static/range {v39 .. v40}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 574
    :cond_b
    new-instance v32, Ljava/io/File;

    invoke-static/range {v35 .. v35}, Lackmaniac/vescmonitor/Utils;->getFolder(Landroid/content/SharedPreferences;)Ljava/lang/String;

    move-result-object v39

    sget-object v40, Lackmaniac/vescmonitor/Utils;->folderFormatter:Ljava/text/DateFormat;

    new-instance v41, Ljava/util/Date;

    invoke-direct/range {v41 .. v41}, Ljava/util/Date;-><init>()V

    invoke-virtual/range {v40 .. v41}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, v32

    move-object/from16 v1, v39

    move-object/from16 v2, v40

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 575
    .local v32, "newFile":Ljava/io/File;
    invoke-virtual/range {v32 .. v32}, Ljava/io/File;->exists()Z

    move-result v39

    if-nez v39, :cond_c

    .line 576
    invoke-virtual/range {v32 .. v32}, Ljava/io/File;->mkdirs()Z

    move-result v39

    if-nez v39, :cond_c

    .line 577
    new-instance v32, Ljava/io/File;

    .end local v32    # "newFile":Ljava/io/File;
    invoke-static/range {v35 .. v35}, Lackmaniac/vescmonitor/Utils;->getFolder(Landroid/content/SharedPreferences;)Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, v32

    move-object/from16 v1, v39

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 578
    .restart local v32    # "newFile":Ljava/io/File;
    invoke-static {}, Lackmaniac/vescmonitor/DeviceControlActivity;->access$4300()Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/DeviceControlActivity$2;->this$0:Lackmaniac/vescmonitor/DeviceControlActivity;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Lackmaniac/vescmonitor/DeviceControlActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v40

    const v41, 0x7f0d0046

    invoke-virtual/range {v40 .. v41}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v40

    invoke-static/range {v39 .. v40}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    :cond_c
    new-instance v33, Ljava/io/File;

    move-object/from16 v0, v33

    move-object/from16 v1, v32

    move-object/from16 v2, v29

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 582
    .local v33, "newFileWithFolder":Ljava/io/File;
    move-object/from16 v0, v28

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v39

    if-eqz v39, :cond_d

    .line 583
    const-string v39, "RENAME"

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string v41, "renamed file to "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v28 .. v28}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v41

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    invoke-static/range {v39 .. v40}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/DeviceControlActivity$2;->this$0:Lackmaniac/vescmonitor/DeviceControlActivity;

    move-object/from16 v39, v0

    const/16 v40, -0x1

    invoke-static/range {v39 .. v40}, Lackmaniac/vescmonitor/DeviceControlActivity;->access$702(Lackmaniac/vescmonitor/DeviceControlActivity;I)I

    goto/16 :goto_3

    .line 585
    :cond_d
    const-string v39, "RENAME"

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string v41, "renaming of file to "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v28 .. v28}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v41

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    const-string v41, "failed"

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    invoke-static/range {v39 .. v40}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_7

    .line 599
    .end local v4    # "biActiveWatt":F
    .end local v5    # "biAhCharged":F
    .end local v6    # "biAhDrawn":F
    .end local v7    # "biDistance":F
    .end local v8    # "biRidingBatteryAmpsNeg":F
    .end local v9    # "biRidingBatteryAmpsPos":F
    .end local v10    # "biRidingMotorAmpsNeg":F
    .end local v11    # "biRidingMotorAmpsPos":F
    .end local v12    # "biRidingTime":J
    .end local v14    # "biRidingWatt":F
    .end local v15    # "biTotalUsedNegTime":F
    .end local v16    # "biTotalTime":J
    .end local v18    # "biTotalUsedPosTime":F
    .end local v19    # "biUsedBatteryAmpsNeg":F
    .end local v20    # "biUsedBatteryAmpsPos":F
    .end local v21    # "biUsedMotorAmpsNeg":F
    .end local v22    # "biUsedMotorAmpsPos":F
    .end local v23    # "biWhCharged":F
    .end local v24    # "biWhDrawn":F
    .end local v28    # "file":Ljava/io/File;
    .end local v29    # "fileName":Ljava/lang/String;
    .end local v32    # "newFile":Ljava/io/File;
    .end local v33    # "newFileWithFolder":Ljava/io/File;
    .end local v34    # "out":Ljava/io/FileOutputStream;
    .end local v35    # "settings":Landroid/content/SharedPreferences;
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/DeviceControlActivity$2;->this$0:Lackmaniac/vescmonitor/DeviceControlActivity;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Lackmaniac/vescmonitor/DeviceControlActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v39

    const-string v40, "No storage found to save file"

    const/16 v41, 0x1

    invoke-static/range {v39 .. v41}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Landroid/widget/Toast;->show()V

    goto/16 :goto_3
.end method
