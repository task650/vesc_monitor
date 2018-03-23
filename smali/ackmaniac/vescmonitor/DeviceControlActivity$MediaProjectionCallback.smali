.class Lackmaniac/vescmonitor/DeviceControlActivity$MediaProjectionCallback;
.super Landroid/media/projection/MediaProjection$Callback;
.source "DeviceControlActivity.java"


# annotations
.annotation build Landroid/support/annotation/RequiresApi;
    api = 0x15
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lackmaniac/vescmonitor/DeviceControlActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MediaProjectionCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lackmaniac/vescmonitor/DeviceControlActivity;


# direct methods
.method private constructor <init>(Lackmaniac/vescmonitor/DeviceControlActivity;)V
    .locals 0

    .prologue
    .line 3625
    iput-object p1, p0, Lackmaniac/vescmonitor/DeviceControlActivity$MediaProjectionCallback;->this$0:Lackmaniac/vescmonitor/DeviceControlActivity;

    invoke-direct {p0}, Landroid/media/projection/MediaProjection$Callback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lackmaniac/vescmonitor/DeviceControlActivity;Lackmaniac/vescmonitor/DeviceControlActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lackmaniac/vescmonitor/DeviceControlActivity;
    .param p2, "x1"    # Lackmaniac/vescmonitor/DeviceControlActivity$1;

    .prologue
    .line 3625
    invoke-direct {p0, p1}, Lackmaniac/vescmonitor/DeviceControlActivity$MediaProjectionCallback;-><init>(Lackmaniac/vescmonitor/DeviceControlActivity;)V

    return-void
.end method


# virtual methods
.method public onStop()V
    .locals 2
    .annotation build Landroid/support/annotation/RequiresApi;
        api = 0x15
    .end annotation

    .prologue
    .line 3629
    iget-object v0, p0, Lackmaniac/vescmonitor/DeviceControlActivity$MediaProjectionCallback;->this$0:Lackmaniac/vescmonitor/DeviceControlActivity;

    invoke-static {v0}, Lackmaniac/vescmonitor/DeviceControlActivity;->access$6500(Lackmaniac/vescmonitor/DeviceControlActivity;)Landroid/widget/ToggleButton;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3630
    iget-object v0, p0, Lackmaniac/vescmonitor/DeviceControlActivity$MediaProjectionCallback;->this$0:Lackmaniac/vescmonitor/DeviceControlActivity;

    invoke-static {v0}, Lackmaniac/vescmonitor/DeviceControlActivity;->access$6500(Lackmaniac/vescmonitor/DeviceControlActivity;)Landroid/widget/ToggleButton;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 3631
    iget-object v0, p0, Lackmaniac/vescmonitor/DeviceControlActivity$MediaProjectionCallback;->this$0:Lackmaniac/vescmonitor/DeviceControlActivity;

    invoke-static {v0}, Lackmaniac/vescmonitor/DeviceControlActivity;->access$7500(Lackmaniac/vescmonitor/DeviceControlActivity;)Landroid/media/MediaRecorder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->stop()V

    .line 3632
    iget-object v0, p0, Lackmaniac/vescmonitor/DeviceControlActivity$MediaProjectionCallback;->this$0:Lackmaniac/vescmonitor/DeviceControlActivity;

    invoke-static {v0}, Lackmaniac/vescmonitor/DeviceControlActivity;->access$7500(Lackmaniac/vescmonitor/DeviceControlActivity;)Landroid/media/MediaRecorder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->reset()V

    .line 3634
    :cond_0
    iget-object v0, p0, Lackmaniac/vescmonitor/DeviceControlActivity$MediaProjectionCallback;->this$0:Lackmaniac/vescmonitor/DeviceControlActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lackmaniac/vescmonitor/DeviceControlActivity;->access$7602(Lackmaniac/vescmonitor/DeviceControlActivity;Landroid/media/projection/MediaProjection;)Landroid/media/projection/MediaProjection;

    .line 3635
    iget-object v0, p0, Lackmaniac/vescmonitor/DeviceControlActivity$MediaProjectionCallback;->this$0:Lackmaniac/vescmonitor/DeviceControlActivity;

    invoke-static {v0}, Lackmaniac/vescmonitor/DeviceControlActivity;->access$7700(Lackmaniac/vescmonitor/DeviceControlActivity;)V

    .line 3636
    return-void
.end method
