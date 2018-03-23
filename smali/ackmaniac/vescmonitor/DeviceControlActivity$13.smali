.class Lackmaniac/vescmonitor/DeviceControlActivity$13;
.super Ljava/lang/Object;
.source "DeviceControlActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lackmaniac/vescmonitor/DeviceControlActivity;->onCreateBackgroundCamera(Z)V
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
    .line 2511
    iput-object p1, p0, Lackmaniac/vescmonitor/DeviceControlActivity$13;->this$0:Lackmaniac/vescmonitor/DeviceControlActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/16 v1, 0x8

    .line 2514
    iget-object v0, p0, Lackmaniac/vescmonitor/DeviceControlActivity$13;->this$0:Lackmaniac/vescmonitor/DeviceControlActivity;

    invoke-static {v0}, Lackmaniac/vescmonitor/DeviceControlActivity;->access$6500(Lackmaniac/vescmonitor/DeviceControlActivity;)Landroid/widget/ToggleButton;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ToggleButton;->getVisibility()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 2515
    iget-object v0, p0, Lackmaniac/vescmonitor/DeviceControlActivity$13;->this$0:Lackmaniac/vescmonitor/DeviceControlActivity;

    invoke-static {v0}, Lackmaniac/vescmonitor/DeviceControlActivity;->access$6500(Lackmaniac/vescmonitor/DeviceControlActivity;)Landroid/widget/ToggleButton;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setVisibility(I)V

    .line 2521
    :goto_0
    return-void

    .line 2517
    :cond_0
    iget-object v0, p0, Lackmaniac/vescmonitor/DeviceControlActivity$13;->this$0:Lackmaniac/vescmonitor/DeviceControlActivity;

    invoke-static {v0}, Lackmaniac/vescmonitor/DeviceControlActivity;->access$6500(Lackmaniac/vescmonitor/DeviceControlActivity;)Landroid/widget/ToggleButton;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setVisibility(I)V

    goto :goto_0
.end method
