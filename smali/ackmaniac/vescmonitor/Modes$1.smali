.class Lackmaniac/vescmonitor/Modes$1;
.super Ljava/lang/Object;
.source "Modes.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lackmaniac/vescmonitor/Modes;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lackmaniac/vescmonitor/Modes;


# direct methods
.method constructor <init>(Lackmaniac/vescmonitor/Modes;)V
    .locals 0
    .param p1, "this$0"    # Lackmaniac/vescmonitor/Modes;

    .prologue
    .line 50
    iput-object p1, p0, Lackmaniac/vescmonitor/Modes$1;->this$0:Lackmaniac/vescmonitor/Modes;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .param p2, "view"    # Landroid/view/View;
    .param p3, "i"    # I
    .param p4, "l"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 53
    .local p1, "adapterView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lackmaniac/vescmonitor/Modes$1;->this$0:Lackmaniac/vescmonitor/Modes;

    invoke-virtual {v1}, Lackmaniac/vescmonitor/Modes;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lackmaniac/vescmonitor/ModeSettings;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 54
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "MODE"

    add-int/lit8 v2, p3, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 55
    iget-object v1, p0, Lackmaniac/vescmonitor/Modes$1;->this$0:Lackmaniac/vescmonitor/Modes;

    invoke-virtual {v1, v0}, Lackmaniac/vescmonitor/Modes;->startActivity(Landroid/content/Intent;)V

    .line 56
    return-void
.end method
