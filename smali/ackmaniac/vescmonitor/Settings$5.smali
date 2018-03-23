.class Lackmaniac/vescmonitor/Settings$5;
.super Ljava/lang/Object;
.source "Settings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lackmaniac/vescmonitor/Settings;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lackmaniac/vescmonitor/Settings;


# direct methods
.method constructor <init>(Lackmaniac/vescmonitor/Settings;)V
    .locals 0
    .param p1, "this$0"    # Lackmaniac/vescmonitor/Settings;

    .prologue
    .line 71
    iput-object p1, p0, Lackmaniac/vescmonitor/Settings$5;->this$0:Lackmaniac/vescmonitor/Settings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 74
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lackmaniac/vescmonitor/Settings$5;->this$0:Lackmaniac/vescmonitor/Settings;

    invoke-virtual {v1}, Lackmaniac/vescmonitor/Settings;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lackmaniac/vescmonitor/BoardInfo;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 75
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lackmaniac/vescmonitor/Settings$5;->this$0:Lackmaniac/vescmonitor/Settings;

    invoke-virtual {v1, v0}, Lackmaniac/vescmonitor/Settings;->startActivity(Landroid/content/Intent;)V

    .line 76
    return-void
.end method
