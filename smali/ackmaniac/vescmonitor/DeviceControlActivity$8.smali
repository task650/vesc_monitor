.class Lackmaniac/vescmonitor/DeviceControlActivity$8;
.super Ljava/lang/Object;
.source "DeviceControlActivity.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


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
    .line 2281
    iput-object p1, p0, Lackmaniac/vescmonitor/DeviceControlActivity$8;->this$0:Lackmaniac/vescmonitor/DeviceControlActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 2284
    iget-object v0, p0, Lackmaniac/vescmonitor/DeviceControlActivity$8;->this$0:Lackmaniac/vescmonitor/DeviceControlActivity;

    invoke-static {v0}, Lackmaniac/vescmonitor/DeviceControlActivity;->access$5400(Lackmaniac/vescmonitor/DeviceControlActivity;)V

    .line 2285
    const/4 v0, 0x1

    return v0
.end method
