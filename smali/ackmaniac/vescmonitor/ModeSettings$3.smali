.class Lackmaniac/vescmonitor/ModeSettings$3;
.super Ljava/lang/Object;
.source "ModeSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lackmaniac/vescmonitor/ModeSettings;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lackmaniac/vescmonitor/ModeSettings;


# direct methods
.method constructor <init>(Lackmaniac/vescmonitor/ModeSettings;)V
    .locals 0
    .param p1, "this$0"    # Lackmaniac/vescmonitor/ModeSettings;

    .prologue
    .line 250
    iput-object p1, p0, Lackmaniac/vescmonitor/ModeSettings$3;->this$0:Lackmaniac/vescmonitor/ModeSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 253
    iget-object v1, p0, Lackmaniac/vescmonitor/ModeSettings$3;->this$0:Lackmaniac/vescmonitor/ModeSettings;

    invoke-static {v1}, Lackmaniac/vescmonitor/ModeSettings;->access$200(Lackmaniac/vescmonitor/ModeSettings;)V

    .line 254
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lackmaniac/vescmonitor/ModeSettings$3;->this$0:Lackmaniac/vescmonitor/ModeSettings;

    invoke-virtual {v1}, Lackmaniac/vescmonitor/ModeSettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lackmaniac/vescmonitor/ThrottleCurveActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 255
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "MODE"

    iget-object v2, p0, Lackmaniac/vescmonitor/ModeSettings$3;->this$0:Lackmaniac/vescmonitor/ModeSettings;

    invoke-static {v2}, Lackmaniac/vescmonitor/ModeSettings;->access$300(Lackmaniac/vescmonitor/ModeSettings;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 256
    iget-object v1, p0, Lackmaniac/vescmonitor/ModeSettings$3;->this$0:Lackmaniac/vescmonitor/ModeSettings;

    invoke-virtual {v1, v0}, Lackmaniac/vescmonitor/ModeSettings;->startActivity(Landroid/content/Intent;)V

    .line 257
    return-void
.end method
