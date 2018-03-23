.class Lackmaniac/vescmonitor/DeviceControlActivity$4;
.super Ljava/lang/Object;
.source "DeviceControlActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lackmaniac/vescmonitor/DeviceControlActivity;->playSound(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lackmaniac/vescmonitor/DeviceControlActivity;

.field final synthetic val$uri:Ljava/lang/String;


# direct methods
.method constructor <init>(Lackmaniac/vescmonitor/DeviceControlActivity;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lackmaniac/vescmonitor/DeviceControlActivity;

    .prologue
    .line 1163
    iput-object p1, p0, Lackmaniac/vescmonitor/DeviceControlActivity$4;->this$0:Lackmaniac/vescmonitor/DeviceControlActivity;

    iput-object p2, p0, Lackmaniac/vescmonitor/DeviceControlActivity$4;->val$uri:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 1166
    :try_start_0
    iget-object v4, p0, Lackmaniac/vescmonitor/DeviceControlActivity$4;->val$uri:Ljava/lang/String;

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 1167
    .local v2, "notification":Landroid/net/Uri;
    iget-object v4, p0, Lackmaniac/vescmonitor/DeviceControlActivity$4;->this$0:Lackmaniac/vescmonitor/DeviceControlActivity;

    invoke-virtual {v4}, Lackmaniac/vescmonitor/DeviceControlActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v2}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v3

    .line 1168
    .local v3, "r":Landroid/media/Ringtone;
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x15

    if-lt v4, v5, :cond_0

    .line 1169
    new-instance v4, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v4}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v5, 0x4

    .line 1170
    invoke-virtual {v4, v5}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v4

    const/4 v5, 0x2

    .line 1171
    invoke-virtual {v4, v5}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v4

    .line 1172
    invoke-virtual {v4}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    .line 1174
    .local v0, "attributes":Landroid/media/AudioAttributes;
    invoke-virtual {v3, v0}, Landroid/media/Ringtone;->setAudioAttributes(Landroid/media/AudioAttributes;)V

    .line 1176
    .end local v0    # "attributes":Landroid/media/AudioAttributes;
    :cond_0
    invoke-virtual {v3}, Landroid/media/Ringtone;->play()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1180
    .end local v2    # "notification":Landroid/net/Uri;
    .end local v3    # "r":Landroid/media/Ringtone;
    :goto_0
    return-void

    .line 1177
    :catch_0
    move-exception v1

    .line 1178
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
