.class Lackmaniac/vescmonitor/DeviceControlActivity$18;
.super Ljava/lang/Object;
.source "DeviceControlActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lackmaniac/vescmonitor/DeviceControlActivity;->showModeDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lackmaniac/vescmonitor/DeviceControlActivity;

.field final synthetic val$dialog:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lackmaniac/vescmonitor/DeviceControlActivity;Landroid/app/Dialog;)V
    .locals 0
    .param p1, "this$0"    # Lackmaniac/vescmonitor/DeviceControlActivity;

    .prologue
    .line 2823
    iput-object p1, p0, Lackmaniac/vescmonitor/DeviceControlActivity$18;->this$0:Lackmaniac/vescmonitor/DeviceControlActivity;

    iput-object p2, p0, Lackmaniac/vescmonitor/DeviceControlActivity$18;->val$dialog:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
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
    .line 2826
    .local p1, "adapterView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lackmaniac/vescmonitor/DeviceControlActivity$18;->this$0:Lackmaniac/vescmonitor/DeviceControlActivity;

    invoke-static {v0, p3}, Lackmaniac/vescmonitor/DeviceControlActivity;->access$7000(Lackmaniac/vescmonitor/DeviceControlActivity;I)V

    .line 2827
    iget-object v0, p0, Lackmaniac/vescmonitor/DeviceControlActivity$18;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 2828
    return-void
.end method
