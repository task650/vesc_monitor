.class Lackmaniac/vescmonitor/LineChartActivity$2;
.super Ljava/lang/Object;
.source "LineChartActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnMultiChoiceClickListener;


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


# direct methods
.method constructor <init>(Lackmaniac/vescmonitor/LineChartActivity;)V
    .locals 0
    .param p1, "this$0"    # Lackmaniac/vescmonitor/LineChartActivity;

    .prologue
    .line 250
    iput-object p1, p0, Lackmaniac/vescmonitor/LineChartActivity$2;->this$0:Lackmaniac/vescmonitor/LineChartActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;IZ)V
    .locals 2
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I
    .param p3, "b"    # Z

    .prologue
    .line 253
    const-string v0, "CheckStatus"

    invoke-static {p3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    return-void
.end method
