.class public Lackmaniac/vescmonitor/LineChartActivity;
.super Landroid/app/Activity;
.source "LineChartActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lackmaniac/vescmonitor/LineChartActivity$TimeFormatter;
    }
.end annotation


# instance fields
.field private final LABEL_BATTERY_AMP:Ljava/lang/String;

.field private final LABEL_DUTY:Ljava/lang/String;

.field private final LABEL_MOTOR_AMP:Ljava/lang/String;

.field private final LABEL_SPEED:Ljava/lang/String;

.field private final LABEL_TEMP:Ljava/lang/String;

.field private final LABEL_VOLT:Ljava/lang/String;

.field private final LABEL_WATT:Ljava/lang/String;

.field dataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lackmaniac/vescmonitor/RealtimeData;",
            ">;"
        }
    .end annotation
.end field

.field private lineChart:Lcom/github/mikephil/charting/charts/LineChart;

.field lineData:Lcom/github/mikephil/charting/data/LineData;

.field private lineDataSetBatteryAmps:Lcom/github/mikephil/charting/data/LineDataSet;

.field private lineDataSetDuty:Lcom/github/mikephil/charting/data/LineDataSet;

.field private lineDataSetMotorAmps:Lcom/github/mikephil/charting/data/LineDataSet;

.field private lineDataSetSpeed:Lcom/github/mikephil/charting/data/LineDataSet;

.field private lineDataSetTemp:Lcom/github/mikephil/charting/data/LineDataSet;

.field private lineDataSetVolt:Lcom/github/mikephil/charting/data/LineDataSet;

.field private lineDataSetWatt:Lcom/github/mikephil/charting/data/LineDataSet;

.field lineDataSets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 52
    const-string v0, "Temp"

    iput-object v0, p0, Lackmaniac/vescmonitor/LineChartActivity;->LABEL_TEMP:Ljava/lang/String;

    .line 53
    const-string v0, "Motor A"

    iput-object v0, p0, Lackmaniac/vescmonitor/LineChartActivity;->LABEL_MOTOR_AMP:Ljava/lang/String;

    .line 54
    const-string v0, "Battery A"

    iput-object v0, p0, Lackmaniac/vescmonitor/LineChartActivity;->LABEL_BATTERY_AMP:Ljava/lang/String;

    .line 55
    const-string v0, "Speed"

    iput-object v0, p0, Lackmaniac/vescmonitor/LineChartActivity;->LABEL_SPEED:Ljava/lang/String;

    .line 56
    const-string v0, "Duty"

    iput-object v0, p0, Lackmaniac/vescmonitor/LineChartActivity;->LABEL_DUTY:Ljava/lang/String;

    .line 57
    const-string v0, "Volt"

    iput-object v0, p0, Lackmaniac/vescmonitor/LineChartActivity;->LABEL_VOLT:Ljava/lang/String;

    .line 58
    const-string v0, "Watt"

    iput-object v0, p0, Lackmaniac/vescmonitor/LineChartActivity;->LABEL_WATT:Ljava/lang/String;

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lackmaniac/vescmonitor/LineChartActivity;->dataList:Ljava/util/List;

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lackmaniac/vescmonitor/LineChartActivity;->lineDataSets:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$000(Lackmaniac/vescmonitor/LineChartActivity;)Lcom/github/mikephil/charting/data/LineDataSet;
    .locals 1
    .param p0, "x0"    # Lackmaniac/vescmonitor/LineChartActivity;

    .prologue
    .line 40
    iget-object v0, p0, Lackmaniac/vescmonitor/LineChartActivity;->lineDataSetTemp:Lcom/github/mikephil/charting/data/LineDataSet;

    return-object v0
.end method

.method static synthetic access$100(Lackmaniac/vescmonitor/LineChartActivity;)Lcom/github/mikephil/charting/data/LineDataSet;
    .locals 1
    .param p0, "x0"    # Lackmaniac/vescmonitor/LineChartActivity;

    .prologue
    .line 40
    iget-object v0, p0, Lackmaniac/vescmonitor/LineChartActivity;->lineDataSetMotorAmps:Lcom/github/mikephil/charting/data/LineDataSet;

    return-object v0
.end method

.method static synthetic access$200(Lackmaniac/vescmonitor/LineChartActivity;)Lcom/github/mikephil/charting/data/LineDataSet;
    .locals 1
    .param p0, "x0"    # Lackmaniac/vescmonitor/LineChartActivity;

    .prologue
    .line 40
    iget-object v0, p0, Lackmaniac/vescmonitor/LineChartActivity;->lineDataSetBatteryAmps:Lcom/github/mikephil/charting/data/LineDataSet;

    return-object v0
.end method

.method static synthetic access$300(Lackmaniac/vescmonitor/LineChartActivity;)Lcom/github/mikephil/charting/data/LineDataSet;
    .locals 1
    .param p0, "x0"    # Lackmaniac/vescmonitor/LineChartActivity;

    .prologue
    .line 40
    iget-object v0, p0, Lackmaniac/vescmonitor/LineChartActivity;->lineDataSetDuty:Lcom/github/mikephil/charting/data/LineDataSet;

    return-object v0
.end method

.method static synthetic access$400(Lackmaniac/vescmonitor/LineChartActivity;)Lcom/github/mikephil/charting/data/LineDataSet;
    .locals 1
    .param p0, "x0"    # Lackmaniac/vescmonitor/LineChartActivity;

    .prologue
    .line 40
    iget-object v0, p0, Lackmaniac/vescmonitor/LineChartActivity;->lineDataSetSpeed:Lcom/github/mikephil/charting/data/LineDataSet;

    return-object v0
.end method

.method static synthetic access$500(Lackmaniac/vescmonitor/LineChartActivity;)Lcom/github/mikephil/charting/data/LineDataSet;
    .locals 1
    .param p0, "x0"    # Lackmaniac/vescmonitor/LineChartActivity;

    .prologue
    .line 40
    iget-object v0, p0, Lackmaniac/vescmonitor/LineChartActivity;->lineDataSetVolt:Lcom/github/mikephil/charting/data/LineDataSet;

    return-object v0
.end method

.method static synthetic access$600(Lackmaniac/vescmonitor/LineChartActivity;)Lcom/github/mikephil/charting/data/LineDataSet;
    .locals 1
    .param p0, "x0"    # Lackmaniac/vescmonitor/LineChartActivity;

    .prologue
    .line 40
    iget-object v0, p0, Lackmaniac/vescmonitor/LineChartActivity;->lineDataSetWatt:Lcom/github/mikephil/charting/data/LineDataSet;

    return-object v0
.end method

.method static synthetic access$700(Lackmaniac/vescmonitor/LineChartActivity;)Lcom/github/mikephil/charting/charts/LineChart;
    .locals 1
    .param p0, "x0"    # Lackmaniac/vescmonitor/LineChartActivity;

    .prologue
    .line 40
    iget-object v0, p0, Lackmaniac/vescmonitor/LineChartActivity;->lineChart:Lcom/github/mikephil/charting/charts/LineChart;

    return-object v0
.end method

.method private readCSVFile(Ljava/lang/String;)V
    .locals 12
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    .line 305
    const/4 v3, 0x0

    .line 309
    .local v3, "fileInputStream":Ljava/io/FileInputStream;
    const/4 v5, 0x0

    .line 310
    .local v5, "lastTachometer":F
    const/4 v6, 0x0

    .line 311
    .local v6, "lastWhTotal":F
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    new-instance v10, Ljava/io/File;

    invoke-direct {v10, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v10}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 312
    .end local v3    # "fileInputStream":Ljava/io/FileInputStream;
    .local v4, "fileInputStream":Ljava/io/FileInputStream;
    :try_start_1
    new-instance v8, Ljava/io/BufferedReader;

    new-instance v10, Ljava/io/InputStreamReader;

    invoke-direct {v10, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v8, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 313
    .local v8, "reader":Ljava/io/BufferedReader;
    invoke-virtual {v8}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    .line 314
    .local v7, "line":Ljava/lang/String;
    :goto_0
    invoke-virtual {v8}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v7

    if-eqz v7, :cond_1

    .line 316
    :try_start_2
    const-string v10, ","

    invoke-virtual {v7, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 317
    .local v9, "rowData":[Ljava/lang/String;
    new-instance v0, Lackmaniac/vescmonitor/RealtimeData;

    invoke-direct {v0}, Lackmaniac/vescmonitor/RealtimeData;-><init>()V

    .line 318
    .local v0, "data":Lackmaniac/vescmonitor/RealtimeData;
    sget-object v10, Lackmaniac/vescmonitor/Utils;->formatter:Ljava/text/DateFormat;

    const/4 v11, 0x0

    aget-object v11, v9, v11

    invoke-virtual {v10, v11}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v10

    iput-object v10, v0, Lackmaniac/vescmonitor/RealtimeData;->time:Ljava/util/Date;

    .line 319
    const/4 v10, 0x1

    aget-object v10, v9, v10

    invoke-static {v10}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v10

    iput v10, v0, Lackmaniac/vescmonitor/RealtimeData;->tempPcb:F

    .line 320
    const/4 v10, 0x2

    aget-object v10, v9, v10

    invoke-static {v10}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v10

    iput v10, v0, Lackmaniac/vescmonitor/RealtimeData;->avgMotorCurrent:F

    .line 321
    const/4 v10, 0x3

    aget-object v10, v9, v10

    invoke-static {v10}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v10

    iput v10, v0, Lackmaniac/vescmonitor/RealtimeData;->avgInputCurrent:F

    .line 322
    const/4 v10, 0x4

    aget-object v10, v9, v10

    invoke-static {v10}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v10

    iput v10, v0, Lackmaniac/vescmonitor/RealtimeData;->dutyCycleNow:F

    .line 323
    const/4 v10, 0x5

    aget-object v10, v9, v10

    invoke-static {v10}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v10

    iput v10, v0, Lackmaniac/vescmonitor/RealtimeData;->rpm:F

    .line 324
    const/4 v10, 0x6

    aget-object v10, v9, v10

    invoke-static {v10}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v10

    iput v10, v0, Lackmaniac/vescmonitor/RealtimeData;->inpVoltage:F

    .line 341
    const/16 v10, 0xc

    aget-object v10, v9, v10

    invoke-static {v10}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v10

    iput v10, v0, Lackmaniac/vescmonitor/RealtimeData;->power:F

    .line 345
    iget-object v10, p0, Lackmaniac/vescmonitor/LineChartActivity;->dataList:Ljava/util/List;

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    .line 346
    .end local v0    # "data":Lackmaniac/vescmonitor/RealtimeData;
    .end local v9    # "rowData":[Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 347
    .local v2, "ex":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    .line 350
    .end local v2    # "ex":Ljava/lang/Exception;
    .end local v7    # "line":Ljava/lang/String;
    .end local v8    # "reader":Ljava/io/BufferedReader;
    :catch_1
    move-exception v2

    move-object v3, v4

    .line 351
    .end local v4    # "fileInputStream":Ljava/io/FileInputStream;
    .local v2, "ex":Ljava/io/IOException;
    .restart local v3    # "fileInputStream":Ljava/io/FileInputStream;
    :goto_1
    :try_start_4
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 354
    if-eqz v3, :cond_0

    .line 355
    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 361
    .end local v2    # "ex":Ljava/io/IOException;
    :cond_0
    :goto_2
    return-void

    .line 354
    .end local v3    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v4    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v7    # "line":Ljava/lang/String;
    .restart local v8    # "reader":Ljava/io/BufferedReader;
    :cond_1
    if-eqz v4, :cond_2

    .line 355
    :try_start_6
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    :cond_2
    move-object v3, v4

    .line 359
    .end local v4    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v3    # "fileInputStream":Ljava/io/FileInputStream;
    goto :goto_2

    .line 357
    .end local v3    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v4    # "fileInputStream":Ljava/io/FileInputStream;
    :catch_2
    move-exception v1

    .line 358
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    move-object v3, v4

    .line 360
    .end local v4    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v3    # "fileInputStream":Ljava/io/FileInputStream;
    goto :goto_2

    .line 357
    .end local v1    # "e":Ljava/io/IOException;
    .end local v7    # "line":Ljava/lang/String;
    .end local v8    # "reader":Ljava/io/BufferedReader;
    .restart local v2    # "ex":Ljava/io/IOException;
    :catch_3
    move-exception v1

    .line 358
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 353
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "ex":Ljava/io/IOException;
    :catchall_0
    move-exception v10

    .line 354
    :goto_3
    if-eqz v3, :cond_3

    .line 355
    :try_start_7
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    .line 359
    :cond_3
    :goto_4
    throw v10

    .line 357
    :catch_4
    move-exception v1

    .line 358
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 353
    .end local v1    # "e":Ljava/io/IOException;
    .end local v3    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v4    # "fileInputStream":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v10

    move-object v3, v4

    .end local v4    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v3    # "fileInputStream":Ljava/io/FileInputStream;
    goto :goto_3

    .line 350
    :catch_5
    move-exception v2

    goto :goto_1
.end method

.method private showLineSelectionDialog()V
    .locals 13

    .prologue
    .line 223
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 225
    .local v0, "alerBuilder":Landroid/app/AlertDialog$Builder;
    const-string v10, "Which lines should be shown"

    invoke-virtual {v0, v10}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 227
    invoke-virtual {p0}, Lackmaniac/vescmonitor/LineChartActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v10

    const v11, 0x7f0a0029

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    .line 229
    .local v9, "view":Landroid/view/View;
    const v10, 0x7f080065

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ListView;

    .line 231
    .local v7, "lv":Landroid/widget/ListView;
    const-string v10, "VESC_SETTINGS"

    const/4 v11, 0x0

    invoke-virtual {p0, v10, v11}, Lackmaniac/vescmonitor/LineChartActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v8

    .line 233
    .local v8, "settings":Landroid/content/SharedPreferences;
    new-instance v5, Ljava/util/LinkedHashMap;

    invoke-direct {v5}, Ljava/util/LinkedHashMap;-><init>()V

    .line 234
    .local v5, "dictionary":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    const-string v10, "Temp"

    iget-object v11, p0, Lackmaniac/vescmonitor/LineChartActivity;->lineDataSetTemp:Lcom/github/mikephil/charting/data/LineDataSet;

    invoke-virtual {v11}, Lcom/github/mikephil/charting/data/LineDataSet;->isVisible()Z

    move-result v11

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {v5, v10, v11}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    const-string v10, "Motor A"

    iget-object v11, p0, Lackmaniac/vescmonitor/LineChartActivity;->lineDataSetMotorAmps:Lcom/github/mikephil/charting/data/LineDataSet;

    invoke-virtual {v11}, Lcom/github/mikephil/charting/data/LineDataSet;->isVisible()Z

    move-result v11

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {v5, v10, v11}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    const-string v10, "Battery A"

    iget-object v11, p0, Lackmaniac/vescmonitor/LineChartActivity;->lineDataSetBatteryAmps:Lcom/github/mikephil/charting/data/LineDataSet;

    invoke-virtual {v11}, Lcom/github/mikephil/charting/data/LineDataSet;->isVisible()Z

    move-result v11

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {v5, v10, v11}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    const-string v10, "Duty"

    iget-object v11, p0, Lackmaniac/vescmonitor/LineChartActivity;->lineDataSetDuty:Lcom/github/mikephil/charting/data/LineDataSet;

    invoke-virtual {v11}, Lcom/github/mikephil/charting/data/LineDataSet;->isVisible()Z

    move-result v11

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {v5, v10, v11}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    const-string v10, "Speed"

    iget-object v11, p0, Lackmaniac/vescmonitor/LineChartActivity;->lineDataSetSpeed:Lcom/github/mikephil/charting/data/LineDataSet;

    invoke-virtual {v11}, Lcom/github/mikephil/charting/data/LineDataSet;->isVisible()Z

    move-result v11

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {v5, v10, v11}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    const-string v10, "Volt"

    iget-object v11, p0, Lackmaniac/vescmonitor/LineChartActivity;->lineDataSetVolt:Lcom/github/mikephil/charting/data/LineDataSet;

    invoke-virtual {v11}, Lcom/github/mikephil/charting/data/LineDataSet;->isVisible()Z

    move-result v11

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {v5, v10, v11}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    const-string v10, "Watt"

    iget-object v11, p0, Lackmaniac/vescmonitor/LineChartActivity;->lineDataSetWatt:Lcom/github/mikephil/charting/data/LineDataSet;

    invoke-virtual {v11}, Lcom/github/mikephil/charting/data/LineDataSet;->isVisible()Z

    move-result v11

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {v5, v10, v11}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    invoke-virtual {v5}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->size()I

    move-result v10

    new-array v6, v10, [Ljava/lang/CharSequence;

    .line 243
    .local v6, "listNames":[Ljava/lang/CharSequence;
    invoke-virtual {v5}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Collection;->size()I

    move-result v10

    new-array v1, v10, [Z

    .line 244
    .local v1, "checkList":[Z
    invoke-virtual {v5}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10, v6}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 245
    const/4 v3, 0x0

    .line 246
    .local v3, "count":I
    invoke-virtual {v5}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 247
    .local v2, "checked":Z
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "count":I
    .local v4, "count":I
    aput-boolean v2, v1, v3

    move v3, v4

    .line 248
    .end local v4    # "count":I
    .restart local v3    # "count":I
    goto :goto_0

    .line 250
    .end local v2    # "checked":Z
    :cond_0
    new-instance v10, Lackmaniac/vescmonitor/LineChartActivity$2;

    invoke-direct {v10, p0}, Lackmaniac/vescmonitor/LineChartActivity$2;-><init>(Lackmaniac/vescmonitor/LineChartActivity;)V

    invoke-virtual {v0, v6, v1, v10}, Landroid/app/AlertDialog$Builder;->setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    const v11, 0x104000a

    new-instance v12, Lackmaniac/vescmonitor/LineChartActivity$1;

    invoke-direct {v12, p0, v1, v6}, Lackmaniac/vescmonitor/LineChartActivity$1;-><init>(Lackmaniac/vescmonitor/LineChartActivity;[Z[Ljava/lang/CharSequence;)V

    .line 255
    invoke-virtual {v10, v11, v12}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    const/4 v11, 0x1

    .line 299
    invoke-virtual {v10, v11}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/AlertDialog;->show()V

    .line 300
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 28
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 67
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 68
    const v23, 0x7f0a001e

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lackmaniac/vescmonitor/LineChartActivity;->setContentView(I)V

    .line 70
    invoke-virtual/range {p0 .. p0}, Lackmaniac/vescmonitor/LineChartActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v23

    const/16 v24, 0x1

    invoke-virtual/range {v23 .. v24}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 72
    invoke-virtual/range {p0 .. p0}, Lackmaniac/vescmonitor/LineChartActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    .line 73
    .local v6, "intent":Landroid/content/Intent;
    const-string v23, "FILENAMECHART"

    move-object/from16 v0, v23

    invoke-virtual {v6, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 75
    .local v5, "fileName":Ljava/lang/String;
    const-string v23, "VESC_SETTINGS"

    const/16 v24, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lackmaniac/vescmonitor/LineChartActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v9

    .line 77
    .local v9, "settings":Landroid/content/SharedPreferences;
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lackmaniac/vescmonitor/LineChartActivity;->readCSVFile(Ljava/lang/String;)V

    .line 79
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 80
    .local v18, "yAXESTempPcb":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/github/mikephil/charting/data/Entry;>;"
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 81
    .local v15, "yAXESAvgMotorCurrent":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/github/mikephil/charting/data/Entry;>;"
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 82
    .local v14, "yAXESAvgInputCurrent":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/github/mikephil/charting/data/Entry;>;"
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 83
    .local v16, "yAXESDuty":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/github/mikephil/charting/data/Entry;>;"
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 84
    .local v17, "yAXESSpeed":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/github/mikephil/charting/data/Entry;>;"
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    .line 91
    .local v20, "yAXESinpVoltage":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/github/mikephil/charting/data/Entry;>;"
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 93
    .local v19, "yAXESWatt":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/github/mikephil/charting/data/Entry;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/LineChartActivity;->dataList:Ljava/util/List;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->size()I

    move-result v23

    if-eqz v23, :cond_2

    .line 94
    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/LineChartActivity;->dataList:Ljava/util/List;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-interface/range {v23 .. v24}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lackmaniac/vescmonitor/RealtimeData;

    move-object/from16 v0, v23

    iget-object v0, v0, Lackmaniac/vescmonitor/RealtimeData;->time:Ljava/util/Date;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/Date;->getTime()J

    move-result-wide v10

    .line 96
    .local v10, "timeOffset":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/LineChartActivity;->dataList:Ljava/util/List;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v23

    :goto_0
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_0

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lackmaniac/vescmonitor/RealtimeData;

    .line 97
    .local v8, "rtData":Lackmaniac/vescmonitor/RealtimeData;
    iget-object v0, v8, Lackmaniac/vescmonitor/RealtimeData;->time:Ljava/util/Date;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/util/Date;->getTime()J

    move-result-wide v24

    sub-long v24, v24, v10

    move-wide/from16 v0, v24

    long-to-float v0, v0

    move/from16 v24, v0

    const/high16 v25, 0x447a0000    # 1000.0f

    div-float v12, v24, v25

    .line 98
    .local v12, "x":F
    new-instance v24, Lcom/github/mikephil/charting/data/Entry;

    iget v0, v8, Lackmaniac/vescmonitor/RealtimeData;->tempPcb:F

    move/from16 v25, v0

    move-object/from16 v0, v24

    move/from16 v1, v25

    invoke-direct {v0, v12, v1}, Lcom/github/mikephil/charting/data/Entry;-><init>(FF)V

    move-object/from16 v0, v18

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 100
    new-instance v24, Lcom/github/mikephil/charting/data/Entry;

    iget v0, v8, Lackmaniac/vescmonitor/RealtimeData;->avgMotorCurrent:F

    move/from16 v25, v0

    move-object/from16 v0, v24

    move/from16 v1, v25

    invoke-direct {v0, v12, v1}, Lcom/github/mikephil/charting/data/Entry;-><init>(FF)V

    move-object/from16 v0, v24

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 101
    new-instance v24, Lcom/github/mikephil/charting/data/Entry;

    iget v0, v8, Lackmaniac/vescmonitor/RealtimeData;->avgInputCurrent:F

    move/from16 v25, v0

    move-object/from16 v0, v24

    move/from16 v1, v25

    invoke-direct {v0, v12, v1}, Lcom/github/mikephil/charting/data/Entry;-><init>(FF)V

    move-object/from16 v0, v24

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    new-instance v24, Lcom/github/mikephil/charting/data/Entry;

    iget v0, v8, Lackmaniac/vescmonitor/RealtimeData;->dutyCycleNow:F

    move/from16 v25, v0

    move-object/from16 v0, v24

    move/from16 v1, v25

    invoke-direct {v0, v12, v1}, Lcom/github/mikephil/charting/data/Entry;-><init>(FF)V

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 104
    new-instance v24, Lcom/github/mikephil/charting/data/Entry;

    iget v0, v8, Lackmaniac/vescmonitor/RealtimeData;->rpm:F

    move/from16 v25, v0

    move-object/from16 v0, v24

    move/from16 v1, v25

    invoke-direct {v0, v12, v1}, Lcom/github/mikephil/charting/data/Entry;-><init>(FF)V

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 105
    new-instance v24, Lcom/github/mikephil/charting/data/Entry;

    iget v0, v8, Lackmaniac/vescmonitor/RealtimeData;->inpVoltage:F

    move/from16 v25, v0

    move-object/from16 v0, v24

    move/from16 v1, v25

    invoke-direct {v0, v12, v1}, Lcom/github/mikephil/charting/data/Entry;-><init>(FF)V

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 112
    new-instance v24, Lcom/github/mikephil/charting/data/Entry;

    iget v0, v8, Lackmaniac/vescmonitor/RealtimeData;->power:F

    move/from16 v25, v0

    move-object/from16 v0, v24

    move/from16 v1, v25

    invoke-direct {v0, v12, v1}, Lcom/github/mikephil/charting/data/Entry;-><init>(FF)V

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 115
    .end local v8    # "rtData":Lackmaniac/vescmonitor/RealtimeData;
    .end local v12    # "x":F
    :cond_0
    const/high16 v7, 0x3fc00000    # 1.5f

    .line 117
    .local v7, "lineThickness":F
    new-instance v23, Lcom/github/mikephil/charting/data/LineDataSet;

    const-string v24, "Temp"

    move-object/from16 v0, v23

    move-object/from16 v1, v18

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/github/mikephil/charting/data/LineDataSet;-><init>(Ljava/util/List;Ljava/lang/String;)V

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lackmaniac/vescmonitor/LineChartActivity;->lineDataSetTemp:Lcom/github/mikephil/charting/data/LineDataSet;

    .line 118
    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/LineChartActivity;->lineDataSetTemp:Lcom/github/mikephil/charting/data/LineDataSet;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Lcom/github/mikephil/charting/data/LineDataSet;->setDrawCircles(Z)V

    .line 119
    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/LineChartActivity;->lineDataSetTemp:Lcom/github/mikephil/charting/data/LineDataSet;

    move-object/from16 v23, v0

    const v24, -0xffff01

    invoke-virtual/range {v23 .. v24}, Lcom/github/mikephil/charting/data/LineDataSet;->setColor(I)V

    .line 120
    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/LineChartActivity;->lineDataSetTemp:Lcom/github/mikephil/charting/data/LineDataSet;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v7}, Lcom/github/mikephil/charting/data/LineDataSet;->setLineWidth(F)V

    .line 121
    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/LineChartActivity;->lineDataSetTemp:Lcom/github/mikephil/charting/data/LineDataSet;

    move-object/from16 v23, v0

    const-string v24, "LINE_CHART_TEMP_ACTIVATED"

    const/16 v25, 0x1

    move-object/from16 v0, v24

    move/from16 v1, v25

    invoke-interface {v9, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v24

    invoke-virtual/range {v23 .. v24}, Lcom/github/mikephil/charting/data/LineDataSet;->setVisible(Z)V

    .line 123
    new-instance v23, Lcom/github/mikephil/charting/data/LineDataSet;

    const-string v24, "Motor A"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-direct {v0, v15, v1}, Lcom/github/mikephil/charting/data/LineDataSet;-><init>(Ljava/util/List;Ljava/lang/String;)V

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lackmaniac/vescmonitor/LineChartActivity;->lineDataSetMotorAmps:Lcom/github/mikephil/charting/data/LineDataSet;

    .line 124
    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/LineChartActivity;->lineDataSetMotorAmps:Lcom/github/mikephil/charting/data/LineDataSet;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Lcom/github/mikephil/charting/data/LineDataSet;->setDrawCircles(Z)V

    .line 125
    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/LineChartActivity;->lineDataSetMotorAmps:Lcom/github/mikephil/charting/data/LineDataSet;

    move-object/from16 v23, v0

    const/high16 v24, -0x1000000

    invoke-virtual/range {v23 .. v24}, Lcom/github/mikephil/charting/data/LineDataSet;->setColor(I)V

    .line 126
    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/LineChartActivity;->lineDataSetMotorAmps:Lcom/github/mikephil/charting/data/LineDataSet;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v7}, Lcom/github/mikephil/charting/data/LineDataSet;->setLineWidth(F)V

    .line 127
    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/LineChartActivity;->lineDataSetMotorAmps:Lcom/github/mikephil/charting/data/LineDataSet;

    move-object/from16 v23, v0

    const-string v24, "LINE_CHART_MOTOR_AMPS_ACTIVATED"

    const/16 v25, 0x1

    move-object/from16 v0, v24

    move/from16 v1, v25

    invoke-interface {v9, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v24

    invoke-virtual/range {v23 .. v24}, Lcom/github/mikephil/charting/data/LineDataSet;->setVisible(Z)V

    .line 129
    new-instance v23, Lcom/github/mikephil/charting/data/LineDataSet;

    const-string v24, "Battery A"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-direct {v0, v14, v1}, Lcom/github/mikephil/charting/data/LineDataSet;-><init>(Ljava/util/List;Ljava/lang/String;)V

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lackmaniac/vescmonitor/LineChartActivity;->lineDataSetBatteryAmps:Lcom/github/mikephil/charting/data/LineDataSet;

    .line 130
    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/LineChartActivity;->lineDataSetBatteryAmps:Lcom/github/mikephil/charting/data/LineDataSet;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Lcom/github/mikephil/charting/data/LineDataSet;->setDrawCircles(Z)V

    .line 131
    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/LineChartActivity;->lineDataSetBatteryAmps:Lcom/github/mikephil/charting/data/LineDataSet;

    move-object/from16 v23, v0

    const/high16 v24, -0x10000

    invoke-virtual/range {v23 .. v24}, Lcom/github/mikephil/charting/data/LineDataSet;->setColor(I)V

    .line 132
    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/LineChartActivity;->lineDataSetBatteryAmps:Lcom/github/mikephil/charting/data/LineDataSet;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v7}, Lcom/github/mikephil/charting/data/LineDataSet;->setLineWidth(F)V

    .line 133
    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/LineChartActivity;->lineDataSetBatteryAmps:Lcom/github/mikephil/charting/data/LineDataSet;

    move-object/from16 v23, v0

    const-string v24, "LINE_CHART_BATTERY_AMPS_ACTIVATED"

    const/16 v25, 0x1

    move-object/from16 v0, v24

    move/from16 v1, v25

    invoke-interface {v9, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v24

    invoke-virtual/range {v23 .. v24}, Lcom/github/mikephil/charting/data/LineDataSet;->setVisible(Z)V

    .line 135
    new-instance v23, Lcom/github/mikephil/charting/data/LineDataSet;

    const-string v24, "Duty"

    move-object/from16 v0, v23

    move-object/from16 v1, v16

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/github/mikephil/charting/data/LineDataSet;-><init>(Ljava/util/List;Ljava/lang/String;)V

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lackmaniac/vescmonitor/LineChartActivity;->lineDataSetDuty:Lcom/github/mikephil/charting/data/LineDataSet;

    .line 136
    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/LineChartActivity;->lineDataSetDuty:Lcom/github/mikephil/charting/data/LineDataSet;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Lcom/github/mikephil/charting/data/LineDataSet;->setDrawCircles(Z)V

    .line 137
    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/LineChartActivity;->lineDataSetDuty:Lcom/github/mikephil/charting/data/LineDataSet;

    move-object/from16 v23, v0

    const/16 v24, 0xff

    const/16 v25, 0x99

    const/16 v26, 0x4d

    const/16 v27, 0x0

    invoke-static/range {v24 .. v27}, Landroid/graphics/Color;->argb(IIII)I

    move-result v24

    invoke-virtual/range {v23 .. v24}, Lcom/github/mikephil/charting/data/LineDataSet;->setColor(I)V

    .line 138
    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/LineChartActivity;->lineDataSetDuty:Lcom/github/mikephil/charting/data/LineDataSet;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v7}, Lcom/github/mikephil/charting/data/LineDataSet;->setLineWidth(F)V

    .line 139
    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/LineChartActivity;->lineDataSetDuty:Lcom/github/mikephil/charting/data/LineDataSet;

    move-object/from16 v23, v0

    const-string v24, "LINE_CHART_DUTY_ACTIVATED"

    const/16 v25, 0x1

    move-object/from16 v0, v24

    move/from16 v1, v25

    invoke-interface {v9, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v24

    invoke-virtual/range {v23 .. v24}, Lcom/github/mikephil/charting/data/LineDataSet;->setVisible(Z)V

    .line 141
    new-instance v23, Lcom/github/mikephil/charting/data/LineDataSet;

    const-string v24, "Speed"

    move-object/from16 v0, v23

    move-object/from16 v1, v17

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/github/mikephil/charting/data/LineDataSet;-><init>(Ljava/util/List;Ljava/lang/String;)V

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lackmaniac/vescmonitor/LineChartActivity;->lineDataSetSpeed:Lcom/github/mikephil/charting/data/LineDataSet;

    .line 142
    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/LineChartActivity;->lineDataSetSpeed:Lcom/github/mikephil/charting/data/LineDataSet;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Lcom/github/mikephil/charting/data/LineDataSet;->setDrawCircles(Z)V

    .line 143
    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/LineChartActivity;->lineDataSetSpeed:Lcom/github/mikephil/charting/data/LineDataSet;

    move-object/from16 v23, v0

    const/16 v24, 0xff

    const/16 v25, 0x0

    const/16 v26, 0xcd

    const/16 v27, 0x0

    invoke-static/range {v24 .. v27}, Landroid/graphics/Color;->argb(IIII)I

    move-result v24

    invoke-virtual/range {v23 .. v24}, Lcom/github/mikephil/charting/data/LineDataSet;->setColor(I)V

    .line 144
    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/LineChartActivity;->lineDataSetSpeed:Lcom/github/mikephil/charting/data/LineDataSet;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v7}, Lcom/github/mikephil/charting/data/LineDataSet;->setLineWidth(F)V

    .line 145
    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/LineChartActivity;->lineDataSetSpeed:Lcom/github/mikephil/charting/data/LineDataSet;

    move-object/from16 v23, v0

    const-string v24, "LINE_CHART_SPEED_ACTIVATED"

    const/16 v25, 0x1

    move-object/from16 v0, v24

    move/from16 v1, v25

    invoke-interface {v9, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v24

    invoke-virtual/range {v23 .. v24}, Lcom/github/mikephil/charting/data/LineDataSet;->setVisible(Z)V

    .line 147
    new-instance v23, Lcom/github/mikephil/charting/data/LineDataSet;

    const-string v24, "Volt"

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/github/mikephil/charting/data/LineDataSet;-><init>(Ljava/util/List;Ljava/lang/String;)V

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lackmaniac/vescmonitor/LineChartActivity;->lineDataSetVolt:Lcom/github/mikephil/charting/data/LineDataSet;

    .line 148
    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/LineChartActivity;->lineDataSetVolt:Lcom/github/mikephil/charting/data/LineDataSet;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Lcom/github/mikephil/charting/data/LineDataSet;->setDrawCircles(Z)V

    .line 149
    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/LineChartActivity;->lineDataSetVolt:Lcom/github/mikephil/charting/data/LineDataSet;

    move-object/from16 v23, v0

    const/16 v24, 0xff

    const/16 v25, 0xff

    const/16 v26, 0xc1

    const/16 v27, 0x25

    invoke-static/range {v24 .. v27}, Landroid/graphics/Color;->argb(IIII)I

    move-result v24

    invoke-virtual/range {v23 .. v24}, Lcom/github/mikephil/charting/data/LineDataSet;->setColor(I)V

    .line 150
    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/LineChartActivity;->lineDataSetVolt:Lcom/github/mikephil/charting/data/LineDataSet;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v7}, Lcom/github/mikephil/charting/data/LineDataSet;->setLineWidth(F)V

    .line 151
    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/LineChartActivity;->lineDataSetVolt:Lcom/github/mikephil/charting/data/LineDataSet;

    move-object/from16 v23, v0

    const-string v24, "LINE_CHART_VOLT_ACTIVATED"

    const/16 v25, 0x1

    move-object/from16 v0, v24

    move/from16 v1, v25

    invoke-interface {v9, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v24

    invoke-virtual/range {v23 .. v24}, Lcom/github/mikephil/charting/data/LineDataSet;->setVisible(Z)V

    .line 153
    new-instance v23, Lcom/github/mikephil/charting/data/LineDataSet;

    const-string v24, "Watt"

    move-object/from16 v0, v23

    move-object/from16 v1, v19

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/github/mikephil/charting/data/LineDataSet;-><init>(Ljava/util/List;Ljava/lang/String;)V

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lackmaniac/vescmonitor/LineChartActivity;->lineDataSetWatt:Lcom/github/mikephil/charting/data/LineDataSet;

    .line 154
    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/LineChartActivity;->lineDataSetWatt:Lcom/github/mikephil/charting/data/LineDataSet;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Lcom/github/mikephil/charting/data/LineDataSet;->setDrawCircles(Z)V

    .line 155
    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/LineChartActivity;->lineDataSetWatt:Lcom/github/mikephil/charting/data/LineDataSet;

    move-object/from16 v23, v0

    const v24, -0xff01

    invoke-virtual/range {v23 .. v24}, Lcom/github/mikephil/charting/data/LineDataSet;->setColor(I)V

    .line 156
    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/LineChartActivity;->lineDataSetWatt:Lcom/github/mikephil/charting/data/LineDataSet;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v7}, Lcom/github/mikephil/charting/data/LineDataSet;->setLineWidth(F)V

    .line 157
    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/LineChartActivity;->lineDataSetWatt:Lcom/github/mikephil/charting/data/LineDataSet;

    move-object/from16 v23, v0

    sget-object v24, Lcom/github/mikephil/charting/components/YAxis$AxisDependency;->RIGHT:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    invoke-virtual/range {v23 .. v24}, Lcom/github/mikephil/charting/data/LineDataSet;->setAxisDependency(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)V

    .line 158
    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/LineChartActivity;->lineDataSetWatt:Lcom/github/mikephil/charting/data/LineDataSet;

    move-object/from16 v23, v0

    const-string v24, "LINE_CHART_WATT_ACTIVATED"

    const/16 v25, 0x1

    move-object/from16 v0, v24

    move/from16 v1, v25

    invoke-interface {v9, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v24

    invoke-virtual/range {v23 .. v24}, Lcom/github/mikephil/charting/data/LineDataSet;->setVisible(Z)V

    .line 160
    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/LineChartActivity;->lineDataSets:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/LineChartActivity;->lineDataSetTemp:Lcom/github/mikephil/charting/data/LineDataSet;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 161
    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/LineChartActivity;->lineDataSets:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/LineChartActivity;->lineDataSetMotorAmps:Lcom/github/mikephil/charting/data/LineDataSet;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 162
    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/LineChartActivity;->lineDataSets:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/LineChartActivity;->lineDataSetBatteryAmps:Lcom/github/mikephil/charting/data/LineDataSet;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 163
    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/LineChartActivity;->lineDataSets:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/LineChartActivity;->lineDataSetDuty:Lcom/github/mikephil/charting/data/LineDataSet;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 164
    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/LineChartActivity;->lineDataSets:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/LineChartActivity;->lineDataSetSpeed:Lcom/github/mikephil/charting/data/LineDataSet;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 165
    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/LineChartActivity;->lineDataSets:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/LineChartActivity;->lineDataSetVolt:Lcom/github/mikephil/charting/data/LineDataSet;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 166
    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/LineChartActivity;->lineDataSets:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/LineChartActivity;->lineDataSetWatt:Lcom/github/mikephil/charting/data/LineDataSet;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 168
    const v23, 0x7f0800b3

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lackmaniac/vescmonitor/LineChartActivity;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Lcom/github/mikephil/charting/charts/LineChart;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lackmaniac/vescmonitor/LineChartActivity;->lineChart:Lcom/github/mikephil/charting/charts/LineChart;

    .line 170
    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/LineChartActivity;->lineChart:Lcom/github/mikephil/charting/charts/LineChart;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/github/mikephil/charting/charts/LineChart;->getXAxis()Lcom/github/mikephil/charting/components/XAxis;

    move-result-object v13

    .line 171
    .local v13, "xAxis":Lcom/github/mikephil/charting/components/XAxis;
    sget-object v23, Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;->BOTTOM:Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    move-object/from16 v0, v23

    invoke-virtual {v13, v0}, Lcom/github/mikephil/charting/components/XAxis;->setPosition(Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;)V

    .line 172
    const/high16 v23, 0x40a00000    # 5.0f

    move/from16 v0, v23

    invoke-virtual {v13, v0}, Lcom/github/mikephil/charting/components/XAxis;->setTextSize(F)V

    .line 173
    const/high16 v23, -0x1000000

    move/from16 v0, v23

    invoke-virtual {v13, v0}, Lcom/github/mikephil/charting/components/XAxis;->setTextColor(I)V

    .line 174
    const/16 v23, 0x1

    move/from16 v0, v23

    invoke-virtual {v13, v0}, Lcom/github/mikephil/charting/components/XAxis;->setDrawAxisLine(Z)V

    .line 175
    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v13, v0}, Lcom/github/mikephil/charting/components/XAxis;->setDrawGridLines(Z)V

    .line 177
    new-instance v23, Lackmaniac/vescmonitor/LineChartActivity$TimeFormatter;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lackmaniac/vescmonitor/LineChartActivity$TimeFormatter;-><init>(Lackmaniac/vescmonitor/LineChartActivity;)V

    move-object/from16 v0, v23

    invoke-virtual {v13, v0}, Lcom/github/mikephil/charting/components/XAxis;->setValueFormatter(Lcom/github/mikephil/charting/formatter/IAxisValueFormatter;)V

    .line 179
    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/LineChartActivity;->lineChart:Lcom/github/mikephil/charting/charts/LineChart;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/github/mikephil/charting/charts/LineChart;->getAxisLeft()Lcom/github/mikephil/charting/components/YAxis;

    move-result-object v21

    .line 180
    .local v21, "yLeft":Lcom/github/mikephil/charting/components/YAxis;
    const/high16 v23, 0x40a00000    # 5.0f

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/components/YAxis;->setTextSize(F)V

    .line 182
    const/high16 v23, -0x1000000

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/components/YAxis;->setTextColor(I)V

    .line 186
    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/LineChartActivity;->lineChart:Lcom/github/mikephil/charting/charts/LineChart;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/github/mikephil/charting/charts/LineChart;->getAxisRight()Lcom/github/mikephil/charting/components/YAxis;

    move-result-object v22

    .line 187
    .local v22, "yRight":Lcom/github/mikephil/charting/components/YAxis;
    const/high16 v23, 0x40a00000    # 5.0f

    invoke-virtual/range {v22 .. v23}, Lcom/github/mikephil/charting/components/YAxis;->setTextSize(F)V

    .line 188
    const v23, -0xff01

    invoke-virtual/range {v22 .. v23}, Lcom/github/mikephil/charting/components/YAxis;->setTextColor(I)V

    .line 189
    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Lcom/github/mikephil/charting/components/YAxis;->setDrawGridLines(Z)V

    .line 191
    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/LineChartActivity;->lineDataSetWatt:Lcom/github/mikephil/charting/data/LineDataSet;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/github/mikephil/charting/data/LineDataSet;->isVisible()Z

    move-result v23

    if-eqz v23, :cond_1

    .line 192
    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/LineChartActivity;->lineChart:Lcom/github/mikephil/charting/charts/LineChart;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/github/mikephil/charting/charts/LineChart;->getAxisRight()Lcom/github/mikephil/charting/components/YAxis;

    move-result-object v23

    const/16 v24, 0x1

    invoke-virtual/range {v23 .. v24}, Lcom/github/mikephil/charting/components/YAxis;->setEnabled(Z)V

    .line 198
    :goto_1
    new-instance v4, Lcom/github/mikephil/charting/components/Description;

    invoke-direct {v4}, Lcom/github/mikephil/charting/components/Description;-><init>()V

    .line 199
    .local v4, "description":Lcom/github/mikephil/charting/components/Description;
    const-string v23, ""

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Lcom/github/mikephil/charting/components/Description;->setText(Ljava/lang/String;)V

    .line 200
    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/LineChartActivity;->lineChart:Lcom/github/mikephil/charting/charts/LineChart;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Lcom/github/mikephil/charting/charts/LineChart;->setDescription(Lcom/github/mikephil/charting/components/Description;)V

    .line 205
    new-instance v23, Lcom/github/mikephil/charting/data/LineData;

    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/LineChartActivity;->lineDataSets:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    invoke-direct/range {v23 .. v24}, Lcom/github/mikephil/charting/data/LineData;-><init>(Ljava/util/List;)V

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lackmaniac/vescmonitor/LineChartActivity;->lineData:Lcom/github/mikephil/charting/data/LineData;

    .line 206
    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/LineChartActivity;->lineData:Lcom/github/mikephil/charting/data/LineData;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    invoke-virtual/range {v23 .. v24}, Lcom/github/mikephil/charting/data/LineData;->setDrawValues(Z)V

    .line 207
    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/LineChartActivity;->lineChart:Lcom/github/mikephil/charting/charts/LineChart;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/LineChartActivity;->lineData:Lcom/github/mikephil/charting/data/LineData;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Lcom/github/mikephil/charting/charts/LineChart;->setData(Lcom/github/mikephil/charting/data/ChartData;)V

    .line 212
    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/LineChartActivity;->lineChart:Lcom/github/mikephil/charting/charts/LineChart;

    move-object/from16 v23, v0

    const/high16 v24, 0x42f00000    # 120.0f

    invoke-virtual/range {v23 .. v24}, Lcom/github/mikephil/charting/charts/LineChart;->setVisibleXRangeMaximum(F)V

    .line 213
    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/LineChartActivity;->lineChart:Lcom/github/mikephil/charting/charts/LineChart;

    move-object/from16 v23, v0

    const/high16 v24, 0x3f800000    # 1.0f

    invoke-virtual/range {v23 .. v24}, Lcom/github/mikephil/charting/charts/LineChart;->setVisibleXRangeMinimum(F)V

    .line 214
    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/LineChartActivity;->lineChart:Lcom/github/mikephil/charting/charts/LineChart;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Lcom/github/mikephil/charting/charts/LineChart;->setScaleYEnabled(Z)V

    .line 215
    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/LineChartActivity;->lineChart:Lcom/github/mikephil/charting/charts/LineChart;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/github/mikephil/charting/charts/LineChart;->invalidate()V

    .line 220
    .end local v4    # "description":Lcom/github/mikephil/charting/components/Description;
    .end local v7    # "lineThickness":F
    .end local v10    # "timeOffset":J
    .end local v13    # "xAxis":Lcom/github/mikephil/charting/components/XAxis;
    .end local v21    # "yLeft":Lcom/github/mikephil/charting/components/YAxis;
    .end local v22    # "yRight":Lcom/github/mikephil/charting/components/YAxis;
    :goto_2
    return-void

    .line 194
    .restart local v7    # "lineThickness":F
    .restart local v10    # "timeOffset":J
    .restart local v13    # "xAxis":Lcom/github/mikephil/charting/components/XAxis;
    .restart local v21    # "yLeft":Lcom/github/mikephil/charting/components/YAxis;
    .restart local v22    # "yRight":Lcom/github/mikephil/charting/components/YAxis;
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lackmaniac/vescmonitor/LineChartActivity;->lineChart:Lcom/github/mikephil/charting/charts/LineChart;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/github/mikephil/charting/charts/LineChart;->getAxisRight()Lcom/github/mikephil/charting/components/YAxis;

    move-result-object v23

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Lcom/github/mikephil/charting/components/YAxis;->setEnabled(Z)V

    goto :goto_1

    .line 218
    .end local v7    # "lineThickness":F
    .end local v10    # "timeOffset":J
    .end local v13    # "xAxis":Lcom/github/mikephil/charting/components/XAxis;
    .end local v21    # "yLeft":Lcom/github/mikephil/charting/components/YAxis;
    .end local v22    # "yRight":Lcom/github/mikephil/charting/components/YAxis;
    :cond_2
    const-string v23, "File doesn\'t contain readable Vesc data"

    const/16 v24, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    goto :goto_2
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 365
    invoke-virtual {p0}, Lackmaniac/vescmonitor/LineChartActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0b0002

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 366
    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 371
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 380
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_1
    return v0

    .line 373
    :sswitch_0
    invoke-direct {p0}, Lackmaniac/vescmonitor/LineChartActivity;->showLineSelectionDialog()V

    goto :goto_0

    .line 377
    :sswitch_1
    invoke-virtual {p0}, Lackmaniac/vescmonitor/LineChartActivity;->onBackPressed()V

    .line 378
    const/4 v0, 0x1

    goto :goto_1

    .line 371
    nop

    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_1
        0x7f0800d0 -> :sswitch_0
    .end sparse-switch
.end method
