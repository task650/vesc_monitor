.class Lackmaniac/vescmonitor/DeviceControlActivity$15;
.super Ljava/lang/Object;
.source "DeviceControlActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lackmaniac/vescmonitor/DeviceControlActivity;->updateConnectionState(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lackmaniac/vescmonitor/DeviceControlActivity;

.field final synthetic val$resourceId:I


# direct methods
.method constructor <init>(Lackmaniac/vescmonitor/DeviceControlActivity;I)V
    .locals 0
    .param p1, "this$0"    # Lackmaniac/vescmonitor/DeviceControlActivity;

    .prologue
    .line 2613
    iput-object p1, p0, Lackmaniac/vescmonitor/DeviceControlActivity$15;->this$0:Lackmaniac/vescmonitor/DeviceControlActivity;

    iput p2, p0, Lackmaniac/vescmonitor/DeviceControlActivity$15;->val$resourceId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 2616
    iget-object v0, p0, Lackmaniac/vescmonitor/DeviceControlActivity$15;->this$0:Lackmaniac/vescmonitor/DeviceControlActivity;

    invoke-static {v0}, Lackmaniac/vescmonitor/DeviceControlActivity;->access$6900(Lackmaniac/vescmonitor/DeviceControlActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget v1, p0, Lackmaniac/vescmonitor/DeviceControlActivity$15;->val$resourceId:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 2617
    return-void
.end method
