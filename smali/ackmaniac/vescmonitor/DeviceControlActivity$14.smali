.class Lackmaniac/vescmonitor/DeviceControlActivity$14;
.super Ljava/lang/Object;
.source "DeviceControlActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lackmaniac/vescmonitor/DeviceControlActivity;->showCommandsDialog()V
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
    .line 2592
    iput-object p1, p0, Lackmaniac/vescmonitor/DeviceControlActivity$14;->this$0:Lackmaniac/vescmonitor/DeviceControlActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "item"    # I

    .prologue
    .line 2595
    packed-switch p2, :pswitch_data_0

    .line 2606
    :goto_0
    return-void

    .line 2597
    :pswitch_0
    iget-object v1, p0, Lackmaniac/vescmonitor/DeviceControlActivity$14;->this$0:Lackmaniac/vescmonitor/DeviceControlActivity;

    sget-object v0, Lackmaniac/vescmonitor/Utils;->terminalCommands:Ljava/util/List;

    sget-object v2, Lackmaniac/vescmonitor/Utils$CAN_COMMANDS;->TERMINAL_CAN_MEMBER:Lackmaniac/vescmonitor/Utils$CAN_COMMANDS;

    invoke-virtual {v2}, Lackmaniac/vescmonitor/Utils$CAN_COMMANDS;->ordinal()I

    move-result v2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v2, p0, Lackmaniac/vescmonitor/DeviceControlActivity$14;->this$0:Lackmaniac/vescmonitor/DeviceControlActivity;

    invoke-static {v2}, Lackmaniac/vescmonitor/DeviceControlActivity;->access$6600(Lackmaniac/vescmonitor/DeviceControlActivity;)Z

    move-result v2

    iget-object v3, p0, Lackmaniac/vescmonitor/DeviceControlActivity$14;->this$0:Lackmaniac/vescmonitor/DeviceControlActivity;

    invoke-static {v3}, Lackmaniac/vescmonitor/DeviceControlActivity;->access$6700(Lackmaniac/vescmonitor/DeviceControlActivity;)I

    move-result v3

    invoke-static {v1, v0, v2, v3}, Lackmaniac/vescmonitor/DeviceControlActivity;->access$6800(Lackmaniac/vescmonitor/DeviceControlActivity;Ljava/lang/String;ZI)V

    goto :goto_0

    .line 2600
    :pswitch_1
    iget-object v1, p0, Lackmaniac/vescmonitor/DeviceControlActivity$14;->this$0:Lackmaniac/vescmonitor/DeviceControlActivity;

    sget-object v0, Lackmaniac/vescmonitor/Utils;->terminalCommands:Ljava/util/List;

    sget-object v2, Lackmaniac/vescmonitor/Utils$CAN_COMMANDS;->TERMINAL_CAN_ERPMS:Lackmaniac/vescmonitor/Utils$CAN_COMMANDS;

    invoke-virtual {v2}, Lackmaniac/vescmonitor/Utils$CAN_COMMANDS;->ordinal()I

    move-result v2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v2, p0, Lackmaniac/vescmonitor/DeviceControlActivity$14;->this$0:Lackmaniac/vescmonitor/DeviceControlActivity;

    invoke-static {v2}, Lackmaniac/vescmonitor/DeviceControlActivity;->access$6600(Lackmaniac/vescmonitor/DeviceControlActivity;)Z

    move-result v2

    iget-object v3, p0, Lackmaniac/vescmonitor/DeviceControlActivity$14;->this$0:Lackmaniac/vescmonitor/DeviceControlActivity;

    invoke-static {v3}, Lackmaniac/vescmonitor/DeviceControlActivity;->access$6700(Lackmaniac/vescmonitor/DeviceControlActivity;)I

    move-result v3

    invoke-static {v1, v0, v2, v3}, Lackmaniac/vescmonitor/DeviceControlActivity;->access$6800(Lackmaniac/vescmonitor/DeviceControlActivity;Ljava/lang/String;ZI)V

    goto :goto_0

    .line 2603
    :pswitch_2
    iget-object v1, p0, Lackmaniac/vescmonitor/DeviceControlActivity$14;->this$0:Lackmaniac/vescmonitor/DeviceControlActivity;

    sget-object v0, Lackmaniac/vescmonitor/Utils;->terminalCommands:Ljava/util/List;

    sget-object v2, Lackmaniac/vescmonitor/Utils$CAN_COMMANDS;->TERMINAL_KV:Lackmaniac/vescmonitor/Utils$CAN_COMMANDS;

    invoke-virtual {v2}, Lackmaniac/vescmonitor/Utils$CAN_COMMANDS;->ordinal()I

    move-result v2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v2, p0, Lackmaniac/vescmonitor/DeviceControlActivity$14;->this$0:Lackmaniac/vescmonitor/DeviceControlActivity;

    invoke-static {v2}, Lackmaniac/vescmonitor/DeviceControlActivity;->access$6600(Lackmaniac/vescmonitor/DeviceControlActivity;)Z

    move-result v2

    iget-object v3, p0, Lackmaniac/vescmonitor/DeviceControlActivity$14;->this$0:Lackmaniac/vescmonitor/DeviceControlActivity;

    invoke-static {v3}, Lackmaniac/vescmonitor/DeviceControlActivity;->access$6700(Lackmaniac/vescmonitor/DeviceControlActivity;)I

    move-result v3

    invoke-static {v1, v0, v2, v3}, Lackmaniac/vescmonitor/DeviceControlActivity;->access$6800(Lackmaniac/vescmonitor/DeviceControlActivity;Ljava/lang/String;ZI)V

    goto :goto_0

    .line 2595
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
