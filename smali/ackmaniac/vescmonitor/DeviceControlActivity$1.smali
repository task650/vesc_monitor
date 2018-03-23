.class Lackmaniac/vescmonitor/DeviceControlActivity$1;
.super Ljava/lang/Thread;
.source "DeviceControlActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lackmaniac/vescmonitor/DeviceControlActivity;
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
    .line 342
    iput-object p1, p0, Lackmaniac/vescmonitor/DeviceControlActivity$1;->this$0:Lackmaniac/vescmonitor/DeviceControlActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 344
    iget-object v1, p0, Lackmaniac/vescmonitor/DeviceControlActivity$1;->this$0:Lackmaniac/vescmonitor/DeviceControlActivity;

    invoke-static {v1, v6}, Lackmaniac/vescmonitor/DeviceControlActivity;->access$002(Lackmaniac/vescmonitor/DeviceControlActivity;Z)Z

    .line 345
    :goto_0
    iget-object v1, p0, Lackmaniac/vescmonitor/DeviceControlActivity$1;->this$0:Lackmaniac/vescmonitor/DeviceControlActivity;

    invoke-static {v1}, Lackmaniac/vescmonitor/DeviceControlActivity;->access$000(Lackmaniac/vescmonitor/DeviceControlActivity;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 347
    :try_start_0
    iget-object v1, p0, Lackmaniac/vescmonitor/DeviceControlActivity$1;->this$0:Lackmaniac/vescmonitor/DeviceControlActivity;

    invoke-static {v1}, Lackmaniac/vescmonitor/DeviceControlActivity;->access$100(Lackmaniac/vescmonitor/DeviceControlActivity;)J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    add-long/2addr v2, v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-gez v1, :cond_0

    .line 348
    invoke-static {}, Lackmaniac/vescmonitor/Utils;->getFirmwareVersion()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 349
    iget-object v1, p0, Lackmaniac/vescmonitor/DeviceControlActivity$1;->this$0:Lackmaniac/vescmonitor/DeviceControlActivity;

    invoke-static {v1}, Lackmaniac/vescmonitor/DeviceControlActivity;->access$200(Lackmaniac/vescmonitor/DeviceControlActivity;)V

    .line 350
    const-string v1, "COMM THREAD"

    const-string v2, "getFirmwareVersion 1"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    iget-object v1, p0, Lackmaniac/vescmonitor/DeviceControlActivity$1;->this$0:Lackmaniac/vescmonitor/DeviceControlActivity;

    invoke-static {v1}, Lackmaniac/vescmonitor/DeviceControlActivity;->access$300(Lackmaniac/vescmonitor/DeviceControlActivity;)V

    .line 361
    :goto_1
    iget-object v1, p0, Lackmaniac/vescmonitor/DeviceControlActivity$1;->this$0:Lackmaniac/vescmonitor/DeviceControlActivity;

    invoke-static {v1}, Lackmaniac/vescmonitor/DeviceControlActivity;->access$600(Lackmaniac/vescmonitor/DeviceControlActivity;)I

    move-result v1

    if-ne v1, v6, :cond_3

    .line 362
    invoke-static {}, Lackmaniac/vescmonitor/Utils;->resetProcessReader()V

    .line 364
    iget-object v1, p0, Lackmaniac/vescmonitor/DeviceControlActivity$1;->this$0:Lackmaniac/vescmonitor/DeviceControlActivity;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lackmaniac/vescmonitor/DeviceControlActivity;->access$602(Lackmaniac/vescmonitor/DeviceControlActivity;I)I

    .line 365
    const-string v1, "COMM THREAD"

    const-string v2, "try to register receiver"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    :cond_0
    :goto_2
    const-wide/16 v2, 0x64

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 371
    :catch_0
    move-exception v0

    .line 372
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 353
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_1
    :try_start_1
    iget-object v1, p0, Lackmaniac/vescmonitor/DeviceControlActivity$1;->this$0:Lackmaniac/vescmonitor/DeviceControlActivity;

    invoke-static {v1}, Lackmaniac/vescmonitor/DeviceControlActivity;->access$400(Lackmaniac/vescmonitor/DeviceControlActivity;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    .line 354
    iget-object v1, p0, Lackmaniac/vescmonitor/DeviceControlActivity$1;->this$0:Lackmaniac/vescmonitor/DeviceControlActivity;

    invoke-static {v1}, Lackmaniac/vescmonitor/DeviceControlActivity;->access$500(Lackmaniac/vescmonitor/DeviceControlActivity;)V

    .line 355
    iget-object v1, p0, Lackmaniac/vescmonitor/DeviceControlActivity$1;->this$0:Lackmaniac/vescmonitor/DeviceControlActivity;

    invoke-static {v1}, Lackmaniac/vescmonitor/DeviceControlActivity;->access$300(Lackmaniac/vescmonitor/DeviceControlActivity;)V

    goto :goto_1

    .line 357
    :cond_2
    iget-object v1, p0, Lackmaniac/vescmonitor/DeviceControlActivity$1;->this$0:Lackmaniac/vescmonitor/DeviceControlActivity;

    invoke-static {v1}, Lackmaniac/vescmonitor/DeviceControlActivity;->access$300(Lackmaniac/vescmonitor/DeviceControlActivity;)V

    .line 358
    const-string v1, "COMM THREAD"

    const-string v2, "normal"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 367
    :cond_3
    iget-object v1, p0, Lackmaniac/vescmonitor/DeviceControlActivity$1;->this$0:Lackmaniac/vescmonitor/DeviceControlActivity;

    invoke-static {v1}, Lackmaniac/vescmonitor/DeviceControlActivity;->access$608(Lackmaniac/vescmonitor/DeviceControlActivity;)I
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 375
    :cond_4
    return-void
.end method
