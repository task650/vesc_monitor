.class Lackmaniac/vescmonitor/BoardInfo$1;
.super Ljava/lang/Object;
.source "BoardInfo.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lackmaniac/vescmonitor/BoardInfo;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lackmaniac/vescmonitor/BoardInfo;


# direct methods
.method constructor <init>(Lackmaniac/vescmonitor/BoardInfo;)V
    .locals 0
    .param p1, "this$0"    # Lackmaniac/vescmonitor/BoardInfo;

    .prologue
    .line 103
    iput-object p1, p0, Lackmaniac/vescmonitor/BoardInfo$1;->this$0:Lackmaniac/vescmonitor/BoardInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 106
    iget-object v0, p0, Lackmaniac/vescmonitor/BoardInfo$1;->this$0:Lackmaniac/vescmonitor/BoardInfo;

    invoke-virtual {v0}, Lackmaniac/vescmonitor/BoardInfo;->resetTrip()V

    .line 107
    const/4 v0, 0x0

    return v0
.end method
