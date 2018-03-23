.class Lackmaniac/vescmonitor/DeviceControlActivity$9;
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
    .line 2290
    iput-object p1, p0, Lackmaniac/vescmonitor/DeviceControlActivity$9;->this$0:Lackmaniac/vescmonitor/DeviceControlActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2293
    iget-object v0, p0, Lackmaniac/vescmonitor/DeviceControlActivity$9;->this$0:Lackmaniac/vescmonitor/DeviceControlActivity;

    invoke-static {v0}, Lackmaniac/vescmonitor/DeviceControlActivity;->access$5500(Lackmaniac/vescmonitor/DeviceControlActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2294
    iget-object v0, p0, Lackmaniac/vescmonitor/DeviceControlActivity$9;->this$0:Lackmaniac/vescmonitor/DeviceControlActivity;

    invoke-static {v0, v2}, Lackmaniac/vescmonitor/DeviceControlActivity;->access$5602(Lackmaniac/vescmonitor/DeviceControlActivity;Z)Z

    .line 2295
    iget-object v0, p0, Lackmaniac/vescmonitor/DeviceControlActivity$9;->this$0:Lackmaniac/vescmonitor/DeviceControlActivity;

    invoke-static {v0, v2}, Lackmaniac/vescmonitor/DeviceControlActivity;->access$5502(Lackmaniac/vescmonitor/DeviceControlActivity;Z)Z

    .line 2296
    iget-object v0, p0, Lackmaniac/vescmonitor/DeviceControlActivity$9;->this$0:Lackmaniac/vescmonitor/DeviceControlActivity;

    invoke-static {v0, v1}, Lackmaniac/vescmonitor/DeviceControlActivity;->access$5702(Lackmaniac/vescmonitor/DeviceControlActivity;Z)Z

    .line 2301
    :goto_0
    return-void

    .line 2298
    :cond_0
    iget-object v0, p0, Lackmaniac/vescmonitor/DeviceControlActivity$9;->this$0:Lackmaniac/vescmonitor/DeviceControlActivity;

    invoke-static {v0, v1}, Lackmaniac/vescmonitor/DeviceControlActivity;->access$5502(Lackmaniac/vescmonitor/DeviceControlActivity;Z)Z

    .line 2299
    iget-object v0, p0, Lackmaniac/vescmonitor/DeviceControlActivity$9;->this$0:Lackmaniac/vescmonitor/DeviceControlActivity;

    const-string v1, "Stopped acceleration recording."

    invoke-static {v0, v1}, Lackmaniac/vescmonitor/DeviceControlActivity;->access$5800(Lackmaniac/vescmonitor/DeviceControlActivity;Ljava/lang/String;)V

    goto :goto_0
.end method
