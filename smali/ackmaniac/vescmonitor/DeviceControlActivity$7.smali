.class Lackmaniac/vescmonitor/DeviceControlActivity$7;
.super Ljava/lang/Object;
.source "DeviceControlActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lackmaniac/vescmonitor/DeviceControlActivity;->initViews(ZLandroid/content/SharedPreferences;)V
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
    .line 2275
    iput-object p1, p0, Lackmaniac/vescmonitor/DeviceControlActivity$7;->this$0:Lackmaniac/vescmonitor/DeviceControlActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 2278
    iget-object v0, p0, Lackmaniac/vescmonitor/DeviceControlActivity$7;->this$0:Lackmaniac/vescmonitor/DeviceControlActivity;

    invoke-virtual {v0}, Lackmaniac/vescmonitor/DeviceControlActivity;->showModeDialog()V

    .line 2279
    return-void
.end method
