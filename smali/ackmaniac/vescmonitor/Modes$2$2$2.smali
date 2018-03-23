.class Lackmaniac/vescmonitor/Modes$2$2$2;
.super Ljava/lang/Object;
.source "Modes.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lackmaniac/vescmonitor/Modes$2$2;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lackmaniac/vescmonitor/Modes$2$2;


# direct methods
.method constructor <init>(Lackmaniac/vescmonitor/Modes$2$2;)V
    .locals 0
    .param p1, "this$2"    # Lackmaniac/vescmonitor/Modes$2$2;

    .prologue
    .line 183
    iput-object p1, p0, Lackmaniac/vescmonitor/Modes$2$2$2;->this$2:Lackmaniac/vescmonitor/Modes$2$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 185
    iget-object v0, p0, Lackmaniac/vescmonitor/Modes$2$2$2;->this$2:Lackmaniac/vescmonitor/Modes$2$2;

    iget-object v0, v0, Lackmaniac/vescmonitor/Modes$2$2;->this$1:Lackmaniac/vescmonitor/Modes$2;

    iget-object v0, v0, Lackmaniac/vescmonitor/Modes$2;->this$0:Lackmaniac/vescmonitor/Modes;

    invoke-virtual {v0}, Lackmaniac/vescmonitor/Modes;->finish()V

    .line 186
    iget-object v0, p0, Lackmaniac/vescmonitor/Modes$2$2$2;->this$2:Lackmaniac/vescmonitor/Modes$2$2;

    iget-object v0, v0, Lackmaniac/vescmonitor/Modes$2$2;->this$1:Lackmaniac/vescmonitor/Modes$2;

    iget-object v0, v0, Lackmaniac/vescmonitor/Modes$2;->this$0:Lackmaniac/vescmonitor/Modes;

    iget-object v1, p0, Lackmaniac/vescmonitor/Modes$2$2$2;->this$2:Lackmaniac/vescmonitor/Modes$2$2;

    iget-object v1, v1, Lackmaniac/vescmonitor/Modes$2$2;->this$1:Lackmaniac/vescmonitor/Modes$2;

    iget-object v1, v1, Lackmaniac/vescmonitor/Modes$2;->this$0:Lackmaniac/vescmonitor/Modes;

    invoke-virtual {v1}, Lackmaniac/vescmonitor/Modes;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lackmaniac/vescmonitor/Modes;->startActivity(Landroid/content/Intent;)V

    .line 187
    return-void
.end method
