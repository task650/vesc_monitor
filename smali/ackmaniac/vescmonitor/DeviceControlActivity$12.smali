.class Lackmaniac/vescmonitor/DeviceControlActivity$12;
.super Ljava/lang/Object;
.source "DeviceControlActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lackmaniac/vescmonitor/DeviceControlActivity;->onCreateRecorder()V
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
    .line 2423
    iput-object p1, p0, Lackmaniac/vescmonitor/DeviceControlActivity$12;->this$0:Lackmaniac/vescmonitor/DeviceControlActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .annotation build Landroid/support/annotation/RequiresApi;
        api = 0x15
    .end annotation

    .prologue
    .line 2428
    iget-object v0, p0, Lackmaniac/vescmonitor/DeviceControlActivity$12;->this$0:Lackmaniac/vescmonitor/DeviceControlActivity;

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lackmaniac/vescmonitor/DeviceControlActivity$12;->this$0:Lackmaniac/vescmonitor/DeviceControlActivity;

    const-string v2, "android.permission.RECORD_AUDIO"

    .line 2429
    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lackmaniac/vescmonitor/DeviceControlActivity$12;->this$0:Lackmaniac/vescmonitor/DeviceControlActivity;

    const-string v2, "android.permission.CAMERA"

    .line 2430
    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 2450
    iget-object v0, p0, Lackmaniac/vescmonitor/DeviceControlActivity$12;->this$0:Lackmaniac/vescmonitor/DeviceControlActivity;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "android.permission.RECORD_AUDIO"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "android.permission.CAMERA"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    invoke-static {v0, v1, v2}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 2480
    :goto_0
    return-void

    .line 2458
    :cond_0
    iget-object v0, p0, Lackmaniac/vescmonitor/DeviceControlActivity$12;->this$0:Lackmaniac/vescmonitor/DeviceControlActivity;

    invoke-static {v0, p1}, Lackmaniac/vescmonitor/DeviceControlActivity;->access$6400(Lackmaniac/vescmonitor/DeviceControlActivity;Landroid/view/View;)V

    goto :goto_0
.end method
