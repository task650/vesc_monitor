.class Lackmaniac/vescmonitor/DeviceControlActivity$6;
.super Ljava/lang/Object;
.source "DeviceControlActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lackmaniac/vescmonitor/DeviceControlActivity;->onStart()V
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
    .line 1995
    iput-object p1, p0, Lackmaniac/vescmonitor/DeviceControlActivity$6;->this$0:Lackmaniac/vescmonitor/DeviceControlActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1998
    iget-object v0, p0, Lackmaniac/vescmonitor/DeviceControlActivity$6;->this$0:Lackmaniac/vescmonitor/DeviceControlActivity;

    invoke-static {v0}, Lackmaniac/vescmonitor/DeviceControlActivity;->access$5200(Lackmaniac/vescmonitor/DeviceControlActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1999
    iget-object v0, p0, Lackmaniac/vescmonitor/DeviceControlActivity$6;->this$0:Lackmaniac/vescmonitor/DeviceControlActivity;

    invoke-static {v0}, Lackmaniac/vescmonitor/DeviceControlActivity;->access$5300(Lackmaniac/vescmonitor/DeviceControlActivity;)V

    .line 2001
    :cond_0
    return-void
.end method
