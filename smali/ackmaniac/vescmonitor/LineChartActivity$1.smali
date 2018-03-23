.class Lackmaniac/vescmonitor/LineChartActivity$1;
.super Ljava/lang/Object;
.source "LineChartActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lackmaniac/vescmonitor/LineChartActivity;->showLineSelectionDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lackmaniac/vescmonitor/LineChartActivity;

.field final synthetic val$checkList:[Z

.field final synthetic val$listNames:[Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Lackmaniac/vescmonitor/LineChartActivity;[Z[Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "this$0"    # Lackmaniac/vescmonitor/LineChartActivity;

    .prologue
    .line 255
    iput-object p1, p0, Lackmaniac/vescmonitor/LineChartActivity$1;->this$0:Lackmaniac/vescmonitor/LineChartActivity;

    iput-object p2, p0, Lackmaniac/vescmonitor/LineChartActivity$1;->val$checkList:[Z

    iput-object p3, p0, Lackmaniac/vescmonitor/LineChartActivity$1;->val$listNames:[Ljava/lang/CharSequence;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    .prologue
    const/4 v4, 0x0

    .line 258
    iget-object v2, p0, Lackmaniac/vescmonitor/LineChartActivity$1;->this$0:Lackmaniac/vescmonitor/LineChartActivity;

    const-string v3, "VESC_SETTINGS"

    invoke-virtual {v2, v3, v4}, Lackmaniac/vescmonitor/LineChartActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 259
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const/4 v1, 0x0

    .local v1, "k":I
    :goto_0
    iget-object v2, p0, Lackmaniac/vescmonitor/LineChartActivity$1;->val$checkList:[Z

    array-length v2, v2

    if-ge v1, v2, :cond_8

    .line 260
    iget-object v2, p0, Lackmaniac/vescmonitor/LineChartActivity$1;->val$listNames:[Ljava/lang/CharSequence;

    aget-object v2, v2, v1

    const-string v3, "Temp"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 261
    iget-object v2, p0, Lackmaniac/vescmonitor/LineChartActivity$1;->this$0:Lackmaniac/vescmonitor/LineChartActivity;

    invoke-static {v2}, Lackmaniac/vescmonitor/LineChartActivity;->access$000(Lackmaniac/vescmonitor/LineChartActivity;)Lcom/github/mikephil/charting/data/LineDataSet;

    move-result-object v2

    iget-object v3, p0, Lackmaniac/vescmonitor/LineChartActivity$1;->val$checkList:[Z

    aget-boolean v3, v3, v1

    invoke-virtual {v2, v3}, Lcom/github/mikephil/charting/data/LineDataSet;->setVisible(Z)V

    .line 262
    const-string v2, "LINE_CHART_TEMP_ACTIVATED"

    iget-object v3, p0, Lackmaniac/vescmonitor/LineChartActivity$1;->val$checkList:[Z

    aget-boolean v3, v3, v1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 264
    :cond_0
    iget-object v2, p0, Lackmaniac/vescmonitor/LineChartActivity$1;->val$listNames:[Ljava/lang/CharSequence;

    aget-object v2, v2, v1

    const-string v3, "Motor A"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 265
    iget-object v2, p0, Lackmaniac/vescmonitor/LineChartActivity$1;->this$0:Lackmaniac/vescmonitor/LineChartActivity;

    invoke-static {v2}, Lackmaniac/vescmonitor/LineChartActivity;->access$100(Lackmaniac/vescmonitor/LineChartActivity;)Lcom/github/mikephil/charting/data/LineDataSet;

    move-result-object v2

    iget-object v3, p0, Lackmaniac/vescmonitor/LineChartActivity$1;->val$checkList:[Z

    aget-boolean v3, v3, v1

    invoke-virtual {v2, v3}, Lcom/github/mikephil/charting/data/LineDataSet;->setVisible(Z)V

    .line 266
    const-string v2, "LINE_CHART_MOTOR_AMPS_ACTIVATED"

    iget-object v3, p0, Lackmaniac/vescmonitor/LineChartActivity$1;->val$checkList:[Z

    aget-boolean v3, v3, v1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 268
    :cond_1
    iget-object v2, p0, Lackmaniac/vescmonitor/LineChartActivity$1;->val$listNames:[Ljava/lang/CharSequence;

    aget-object v2, v2, v1

    const-string v3, "Battery A"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 269
    iget-object v2, p0, Lackmaniac/vescmonitor/LineChartActivity$1;->this$0:Lackmaniac/vescmonitor/LineChartActivity;

    invoke-static {v2}, Lackmaniac/vescmonitor/LineChartActivity;->access$200(Lackmaniac/vescmonitor/LineChartActivity;)Lcom/github/mikephil/charting/data/LineDataSet;

    move-result-object v2

    iget-object v3, p0, Lackmaniac/vescmonitor/LineChartActivity$1;->val$checkList:[Z

    aget-boolean v3, v3, v1

    invoke-virtual {v2, v3}, Lcom/github/mikephil/charting/data/LineDataSet;->setVisible(Z)V

    .line 270
    const-string v2, "LINE_CHART_BATTERY_AMPS_ACTIVATED"

    iget-object v3, p0, Lackmaniac/vescmonitor/LineChartActivity$1;->val$checkList:[Z

    aget-boolean v3, v3, v1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 273
    :cond_2
    iget-object v2, p0, Lackmaniac/vescmonitor/LineChartActivity$1;->val$listNames:[Ljava/lang/CharSequence;

    aget-object v2, v2, v1

    const-string v3, "Duty"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 274
    iget-object v2, p0, Lackmaniac/vescmonitor/LineChartActivity$1;->this$0:Lackmaniac/vescmonitor/LineChartActivity;

    invoke-static {v2}, Lackmaniac/vescmonitor/LineChartActivity;->access$300(Lackmaniac/vescmonitor/LineChartActivity;)Lcom/github/mikephil/charting/data/LineDataSet;

    move-result-object v2

    iget-object v3, p0, Lackmaniac/vescmonitor/LineChartActivity$1;->val$checkList:[Z

    aget-boolean v3, v3, v1

    invoke-virtual {v2, v3}, Lcom/github/mikephil/charting/data/LineDataSet;->setVisible(Z)V

    .line 275
    const-string v2, "LINE_CHART_DUTY_ACTIVATED"

    iget-object v3, p0, Lackmaniac/vescmonitor/LineChartActivity$1;->val$checkList:[Z

    aget-boolean v3, v3, v1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 278
    :cond_3
    iget-object v2, p0, Lackmaniac/vescmonitor/LineChartActivity$1;->val$listNames:[Ljava/lang/CharSequence;

    aget-object v2, v2, v1

    const-string v3, "Speed"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 279
    iget-object v2, p0, Lackmaniac/vescmonitor/LineChartActivity$1;->this$0:Lackmaniac/vescmonitor/LineChartActivity;

    invoke-static {v2}, Lackmaniac/vescmonitor/LineChartActivity;->access$400(Lackmaniac/vescmonitor/LineChartActivity;)Lcom/github/mikephil/charting/data/LineDataSet;

    move-result-object v2

    iget-object v3, p0, Lackmaniac/vescmonitor/LineChartActivity$1;->val$checkList:[Z

    aget-boolean v3, v3, v1

    invoke-virtual {v2, v3}, Lcom/github/mikephil/charting/data/LineDataSet;->setVisible(Z)V

    .line 280
    const-string v2, "LINE_CHART_SPEED_ACTIVATED"

    iget-object v3, p0, Lackmaniac/vescmonitor/LineChartActivity$1;->val$checkList:[Z

    aget-boolean v3, v3, v1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 282
    :cond_4
    iget-object v2, p0, Lackmaniac/vescmonitor/LineChartActivity$1;->val$listNames:[Ljava/lang/CharSequence;

    aget-object v2, v2, v1

    const-string v3, "Volt"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 283
    iget-object v2, p0, Lackmaniac/vescmonitor/LineChartActivity$1;->this$0:Lackmaniac/vescmonitor/LineChartActivity;

    invoke-static {v2}, Lackmaniac/vescmonitor/LineChartActivity;->access$500(Lackmaniac/vescmonitor/LineChartActivity;)Lcom/github/mikephil/charting/data/LineDataSet;

    move-result-object v2

    iget-object v3, p0, Lackmaniac/vescmonitor/LineChartActivity$1;->val$checkList:[Z

    aget-boolean v3, v3, v1

    invoke-virtual {v2, v3}, Lcom/github/mikephil/charting/data/LineDataSet;->setVisible(Z)V

    .line 284
    const-string v2, "LINE_CHART_VOLT_ACTIVATED"

    iget-object v3, p0, Lackmaniac/vescmonitor/LineChartActivity$1;->val$checkList:[Z

    aget-boolean v3, v3, v1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 286
    :cond_5
    iget-object v2, p0, Lackmaniac/vescmonitor/LineChartActivity$1;->val$listNames:[Ljava/lang/CharSequence;

    aget-object v2, v2, v1

    const-string v3, "Watt"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 287
    iget-object v2, p0, Lackmaniac/vescmonitor/LineChartActivity$1;->this$0:Lackmaniac/vescmonitor/LineChartActivity;

    invoke-static {v2}, Lackmaniac/vescmonitor/LineChartActivity;->access$600(Lackmaniac/vescmonitor/LineChartActivity;)Lcom/github/mikephil/charting/data/LineDataSet;

    move-result-object v2

    iget-object v3, p0, Lackmaniac/vescmonitor/LineChartActivity$1;->val$checkList:[Z

    aget-boolean v3, v3, v1

    invoke-virtual {v2, v3}, Lcom/github/mikephil/charting/data/LineDataSet;->setVisible(Z)V

    .line 288
    const-string v2, "LINE_CHART_WATT_ACTIVATED"

    iget-object v3, p0, Lackmaniac/vescmonitor/LineChartActivity$1;->val$checkList:[Z

    aget-boolean v3, v3, v1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 289
    iget-object v2, p0, Lackmaniac/vescmonitor/LineChartActivity$1;->this$0:Lackmaniac/vescmonitor/LineChartActivity;

    invoke-static {v2}, Lackmaniac/vescmonitor/LineChartActivity;->access$600(Lackmaniac/vescmonitor/LineChartActivity;)Lcom/github/mikephil/charting/data/LineDataSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/github/mikephil/charting/data/LineDataSet;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 290
    iget-object v2, p0, Lackmaniac/vescmonitor/LineChartActivity$1;->this$0:Lackmaniac/vescmonitor/LineChartActivity;

    invoke-static {v2}, Lackmaniac/vescmonitor/LineChartActivity;->access$700(Lackmaniac/vescmonitor/LineChartActivity;)Lcom/github/mikephil/charting/charts/LineChart;

    move-result-object v2

    invoke-virtual {v2}, Lcom/github/mikephil/charting/charts/LineChart;->getAxisRight()Lcom/github/mikephil/charting/components/YAxis;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/github/mikephil/charting/components/YAxis;->setEnabled(Z)V

    .line 259
    :cond_6
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 292
    :cond_7
    iget-object v2, p0, Lackmaniac/vescmonitor/LineChartActivity$1;->this$0:Lackmaniac/vescmonitor/LineChartActivity;

    invoke-static {v2}, Lackmaniac/vescmonitor/LineChartActivity;->access$700(Lackmaniac/vescmonitor/LineChartActivity;)Lcom/github/mikephil/charting/charts/LineChart;

    move-result-object v2

    invoke-virtual {v2}, Lcom/github/mikephil/charting/charts/LineChart;->getAxisRight()Lcom/github/mikephil/charting/components/YAxis;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/github/mikephil/charting/components/YAxis;->setEnabled(Z)V

    goto :goto_1

    .line 296
    :cond_8
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 297
    iget-object v2, p0, Lackmaniac/vescmonitor/LineChartActivity$1;->this$0:Lackmaniac/vescmonitor/LineChartActivity;

    invoke-static {v2}, Lackmaniac/vescmonitor/LineChartActivity;->access$700(Lackmaniac/vescmonitor/LineChartActivity;)Lcom/github/mikephil/charting/charts/LineChart;

    move-result-object v2

    invoke-virtual {v2}, Lcom/github/mikephil/charting/charts/LineChart;->invalidate()V

    .line 298
    return-void
.end method
