.class public Lackmaniac/vescmonitor/BlankActivity;
.super Landroid/app/Activity;
.source "BlankActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 10
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 11
    const v0, 0x7f0a001b

    invoke-virtual {p0, v0}, Lackmaniac/vescmonitor/BlankActivity;->setContentView(I)V

    .line 12
    invoke-virtual {p0}, Lackmaniac/vescmonitor/BlankActivity;->finish()V

    .line 13
    return-void
.end method
