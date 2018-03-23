.class Lackmaniac/vescmonitor/BoardInfo$2;
.super Ljava/lang/Object;
.source "BoardInfo.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lackmaniac/vescmonitor/BoardInfo;->resetTrip()V
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
    .line 171
    iput-object p1, p0, Lackmaniac/vescmonitor/BoardInfo$2;->this$0:Lackmaniac/vescmonitor/BoardInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    .prologue
    .line 174
    iget-object v0, p0, Lackmaniac/vescmonitor/BoardInfo$2;->this$0:Lackmaniac/vescmonitor/BoardInfo;

    iget-object v0, v0, Lackmaniac/vescmonitor/BoardInfo;->actualTrip:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lackmaniac/vescmonitor/BoardInfo$2;->this$0:Lackmaniac/vescmonitor/BoardInfo;

    const-string v1, ""

    invoke-static {v0, v1}, Lackmaniac/vescmonitor/BoardInfo;->access$000(Lackmaniac/vescmonitor/BoardInfo;Ljava/lang/String;)V

    .line 176
    iget-object v0, p0, Lackmaniac/vescmonitor/BoardInfo$2;->this$0:Lackmaniac/vescmonitor/BoardInfo;

    const-string v1, "1"

    invoke-static {v0, v1}, Lackmaniac/vescmonitor/BoardInfo;->access$000(Lackmaniac/vescmonitor/BoardInfo;Ljava/lang/String;)V

    .line 177
    iget-object v0, p0, Lackmaniac/vescmonitor/BoardInfo$2;->this$0:Lackmaniac/vescmonitor/BoardInfo;

    const-string v1, "2"

    invoke-static {v0, v1}, Lackmaniac/vescmonitor/BoardInfo;->access$000(Lackmaniac/vescmonitor/BoardInfo;Ljava/lang/String;)V

    .line 178
    iget-object v0, p0, Lackmaniac/vescmonitor/BoardInfo$2;->this$0:Lackmaniac/vescmonitor/BoardInfo;

    const-string v1, "3"

    invoke-static {v0, v1}, Lackmaniac/vescmonitor/BoardInfo;->access$000(Lackmaniac/vescmonitor/BoardInfo;Ljava/lang/String;)V

    .line 184
    :goto_0
    return-void

    .line 180
    :cond_0
    iget-object v0, p0, Lackmaniac/vescmonitor/BoardInfo$2;->this$0:Lackmaniac/vescmonitor/BoardInfo;

    iget-object v1, p0, Lackmaniac/vescmonitor/BoardInfo$2;->this$0:Lackmaniac/vescmonitor/BoardInfo;

    iget-object v1, v1, Lackmaniac/vescmonitor/BoardInfo;->actualTrip:Ljava/lang/String;

    invoke-static {v0, v1}, Lackmaniac/vescmonitor/BoardInfo;->access$000(Lackmaniac/vescmonitor/BoardInfo;Ljava/lang/String;)V

    .line 181
    iget-object v0, p0, Lackmaniac/vescmonitor/BoardInfo$2;->this$0:Lackmaniac/vescmonitor/BoardInfo;

    invoke-virtual {v0}, Lackmaniac/vescmonitor/BoardInfo;->finish()V

    .line 182
    iget-object v0, p0, Lackmaniac/vescmonitor/BoardInfo$2;->this$0:Lackmaniac/vescmonitor/BoardInfo;

    iget-object v1, p0, Lackmaniac/vescmonitor/BoardInfo$2;->this$0:Lackmaniac/vescmonitor/BoardInfo;

    invoke-virtual {v1}, Lackmaniac/vescmonitor/BoardInfo;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lackmaniac/vescmonitor/BoardInfo;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
