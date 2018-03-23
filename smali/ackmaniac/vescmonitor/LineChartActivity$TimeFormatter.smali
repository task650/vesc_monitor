.class public Lackmaniac/vescmonitor/LineChartActivity$TimeFormatter;
.super Ljava/lang/Object;
.source "LineChartActivity.java"

# interfaces
.implements Lcom/github/mikephil/charting/formatter/IAxisValueFormatter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lackmaniac/vescmonitor/LineChartActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TimeFormatter"
.end annotation


# instance fields
.field final synthetic this$0:Lackmaniac/vescmonitor/LineChartActivity;


# direct methods
.method public constructor <init>(Lackmaniac/vescmonitor/LineChartActivity;)V
    .locals 0
    .param p1, "this$0"    # Lackmaniac/vescmonitor/LineChartActivity;

    .prologue
    .line 391
    iput-object p1, p0, Lackmaniac/vescmonitor/LineChartActivity$TimeFormatter;->this$0:Lackmaniac/vescmonitor/LineChartActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFormattedValue(FLcom/github/mikephil/charting/components/AxisBase;)Ljava/lang/String;
    .locals 5
    .param p1, "value"    # F
    .param p2, "axis"    # Lcom/github/mikephil/charting/components/AxisBase;

    .prologue
    .line 395
    float-to-int v2, p1

    div-int/lit8 v0, v2, 0x3c

    .line 396
    .local v0, "minutes":I
    float-to-int v2, p1

    mul-int/lit8 v3, v0, 0x3c

    sub-int v1, v2, v3

    .line 397
    .local v1, "seconds":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v2, 0xa

    if-ge v1, v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "0"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_0
.end method
