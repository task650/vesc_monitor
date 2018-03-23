.class Lackmaniac/vescmonitor/Modes$2$2;
.super Ljava/lang/Object;
.source "Modes.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lackmaniac/vescmonitor/Modes$2;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lackmaniac/vescmonitor/Modes$2;

.field final synthetic val$selected:I


# direct methods
.method constructor <init>(Lackmaniac/vescmonitor/Modes$2;I)V
    .locals 0
    .param p1, "this$1"    # Lackmaniac/vescmonitor/Modes$2;

    .prologue
    .line 73
    iput-object p1, p0, Lackmaniac/vescmonitor/Modes$2$2;->this$1:Lackmaniac/vescmonitor/Modes$2;

    iput p2, p0, Lackmaniac/vescmonitor/Modes$2$2;->val$selected:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 8
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v5, 0x0

    .line 75
    packed-switch p2, :pswitch_data_0

    .line 194
    :goto_0
    return-void

    .line 77
    :pswitch_0
    iget v0, p0, Lackmaniac/vescmonitor/Modes$2$2;->val$selected:I

    if-eq v0, v7, :cond_0

    .line 78
    iget-object v0, p0, Lackmaniac/vescmonitor/Modes$2$2;->this$1:Lackmaniac/vescmonitor/Modes$2;

    iget-object v0, v0, Lackmaniac/vescmonitor/Modes$2;->this$0:Lackmaniac/vescmonitor/Modes;

    const-string v2, "VESC_SETTINGS"

    invoke-virtual {v0, v2, v5}, Lackmaniac/vescmonitor/Modes;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 79
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    iget-object v0, p0, Lackmaniac/vescmonitor/Modes$2$2;->this$1:Lackmaniac/vescmonitor/Modes$2;

    iget-object v0, v0, Lackmaniac/vescmonitor/Modes$2;->this$0:Lackmaniac/vescmonitor/Modes;

    iget-object v2, p0, Lackmaniac/vescmonitor/Modes$2$2;->this$1:Lackmaniac/vescmonitor/Modes$2;

    iget-object v2, v2, Lackmaniac/vescmonitor/Modes$2;->val$settings:Landroid/content/SharedPreferences;

    iget v3, p0, Lackmaniac/vescmonitor/Modes$2$2;->val$selected:I

    add-int/lit8 v3, v3, -0x1

    iget v4, p0, Lackmaniac/vescmonitor/Modes$2$2;->val$selected:I

    invoke-static/range {v0 .. v5}, Lackmaniac/vescmonitor/Modes;->access$000(Lackmaniac/vescmonitor/Modes;Landroid/content/SharedPreferences$Editor;Landroid/content/SharedPreferences;IIZ)V

    .line 80
    iget-object v0, p0, Lackmaniac/vescmonitor/Modes$2$2;->this$1:Lackmaniac/vescmonitor/Modes$2;

    iget-object v0, v0, Lackmaniac/vescmonitor/Modes$2;->this$0:Lackmaniac/vescmonitor/Modes;

    iget-object v2, p0, Lackmaniac/vescmonitor/Modes$2$2;->this$1:Lackmaniac/vescmonitor/Modes$2;

    iget-object v2, v2, Lackmaniac/vescmonitor/Modes$2;->val$settings:Landroid/content/SharedPreferences;

    iget v3, p0, Lackmaniac/vescmonitor/Modes$2$2;->val$selected:I

    iget v4, p0, Lackmaniac/vescmonitor/Modes$2$2;->val$selected:I

    add-int/lit8 v4, v4, -0x1

    invoke-static/range {v0 .. v5}, Lackmaniac/vescmonitor/Modes;->access$000(Lackmaniac/vescmonitor/Modes;Landroid/content/SharedPreferences$Editor;Landroid/content/SharedPreferences;IIZ)V

    .line 81
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 83
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_0
    iget-object v0, p0, Lackmaniac/vescmonitor/Modes$2$2;->this$1:Lackmaniac/vescmonitor/Modes$2;

    iget-object v0, v0, Lackmaniac/vescmonitor/Modes$2;->this$0:Lackmaniac/vescmonitor/Modes;

    invoke-virtual {v0}, Lackmaniac/vescmonitor/Modes;->finish()V

    .line 84
    iget-object v0, p0, Lackmaniac/vescmonitor/Modes$2$2;->this$1:Lackmaniac/vescmonitor/Modes$2;

    iget-object v0, v0, Lackmaniac/vescmonitor/Modes$2;->this$0:Lackmaniac/vescmonitor/Modes;

    iget-object v2, p0, Lackmaniac/vescmonitor/Modes$2$2;->this$1:Lackmaniac/vescmonitor/Modes$2;

    iget-object v2, v2, Lackmaniac/vescmonitor/Modes$2;->this$0:Lackmaniac/vescmonitor/Modes;

    invoke-virtual {v2}, Lackmaniac/vescmonitor/Modes;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v0, v2}, Lackmaniac/vescmonitor/Modes;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 87
    :pswitch_1
    iget v0, p0, Lackmaniac/vescmonitor/Modes$2$2;->val$selected:I

    iget-object v2, p0, Lackmaniac/vescmonitor/Modes$2$2;->this$1:Lackmaniac/vescmonitor/Modes$2;

    iget-object v2, v2, Lackmaniac/vescmonitor/Modes$2;->this$0:Lackmaniac/vescmonitor/Modes;

    invoke-static {v2}, Lackmaniac/vescmonitor/Modes;->access$100(Lackmaniac/vescmonitor/Modes;)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-eq v0, v2, :cond_1

    .line 88
    iget-object v0, p0, Lackmaniac/vescmonitor/Modes$2$2;->this$1:Lackmaniac/vescmonitor/Modes$2;

    iget-object v0, v0, Lackmaniac/vescmonitor/Modes$2;->this$0:Lackmaniac/vescmonitor/Modes;

    const-string v2, "VESC_SETTINGS"

    invoke-virtual {v0, v2, v5}, Lackmaniac/vescmonitor/Modes;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 89
    .restart local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    iget-object v0, p0, Lackmaniac/vescmonitor/Modes$2$2;->this$1:Lackmaniac/vescmonitor/Modes$2;

    iget-object v0, v0, Lackmaniac/vescmonitor/Modes$2;->this$0:Lackmaniac/vescmonitor/Modes;

    iget-object v2, p0, Lackmaniac/vescmonitor/Modes$2$2;->this$1:Lackmaniac/vescmonitor/Modes$2;

    iget-object v2, v2, Lackmaniac/vescmonitor/Modes$2;->val$settings:Landroid/content/SharedPreferences;

    iget v3, p0, Lackmaniac/vescmonitor/Modes$2$2;->val$selected:I

    add-int/lit8 v3, v3, 0x1

    iget v4, p0, Lackmaniac/vescmonitor/Modes$2$2;->val$selected:I

    invoke-static/range {v0 .. v5}, Lackmaniac/vescmonitor/Modes;->access$000(Lackmaniac/vescmonitor/Modes;Landroid/content/SharedPreferences$Editor;Landroid/content/SharedPreferences;IIZ)V

    .line 90
    iget-object v0, p0, Lackmaniac/vescmonitor/Modes$2$2;->this$1:Lackmaniac/vescmonitor/Modes$2;

    iget-object v0, v0, Lackmaniac/vescmonitor/Modes$2;->this$0:Lackmaniac/vescmonitor/Modes;

    iget-object v2, p0, Lackmaniac/vescmonitor/Modes$2$2;->this$1:Lackmaniac/vescmonitor/Modes$2;

    iget-object v2, v2, Lackmaniac/vescmonitor/Modes$2;->val$settings:Landroid/content/SharedPreferences;

    iget v3, p0, Lackmaniac/vescmonitor/Modes$2$2;->val$selected:I

    iget v4, p0, Lackmaniac/vescmonitor/Modes$2$2;->val$selected:I

    add-int/lit8 v4, v4, 0x1

    invoke-static/range {v0 .. v5}, Lackmaniac/vescmonitor/Modes;->access$000(Lackmaniac/vescmonitor/Modes;Landroid/content/SharedPreferences$Editor;Landroid/content/SharedPreferences;IIZ)V

    .line 91
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 93
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_1
    iget-object v0, p0, Lackmaniac/vescmonitor/Modes$2$2;->this$1:Lackmaniac/vescmonitor/Modes$2;

    iget-object v0, v0, Lackmaniac/vescmonitor/Modes$2;->this$0:Lackmaniac/vescmonitor/Modes;

    invoke-virtual {v0}, Lackmaniac/vescmonitor/Modes;->finish()V

    .line 94
    iget-object v0, p0, Lackmaniac/vescmonitor/Modes$2$2;->this$1:Lackmaniac/vescmonitor/Modes$2;

    iget-object v0, v0, Lackmaniac/vescmonitor/Modes$2;->this$0:Lackmaniac/vescmonitor/Modes;

    iget-object v2, p0, Lackmaniac/vescmonitor/Modes$2$2;->this$1:Lackmaniac/vescmonitor/Modes$2;

    iget-object v2, v2, Lackmaniac/vescmonitor/Modes$2;->this$0:Lackmaniac/vescmonitor/Modes;

    invoke-virtual {v2}, Lackmaniac/vescmonitor/Modes;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v0, v2}, Lackmaniac/vescmonitor/Modes;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 97
    :pswitch_2
    iget-object v0, p0, Lackmaniac/vescmonitor/Modes$2$2;->this$1:Lackmaniac/vescmonitor/Modes$2;

    iget-object v0, v0, Lackmaniac/vescmonitor/Modes$2;->this$0:Lackmaniac/vescmonitor/Modes;

    const-string v2, "VESC_SETTINGS"

    invoke-virtual {v0, v2, v5}, Lackmaniac/vescmonitor/Modes;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 98
    .restart local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    iget-object v0, p0, Lackmaniac/vescmonitor/Modes$2$2;->this$1:Lackmaniac/vescmonitor/Modes$2;

    iget-object v0, v0, Lackmaniac/vescmonitor/Modes$2;->this$0:Lackmaniac/vescmonitor/Modes;

    iget-object v2, p0, Lackmaniac/vescmonitor/Modes$2$2;->this$1:Lackmaniac/vescmonitor/Modes$2;

    iget-object v2, v2, Lackmaniac/vescmonitor/Modes$2;->val$settings:Landroid/content/SharedPreferences;

    iget-object v3, p0, Lackmaniac/vescmonitor/Modes$2$2;->this$1:Lackmaniac/vescmonitor/Modes$2;

    iget-object v3, v3, Lackmaniac/vescmonitor/Modes$2;->this$0:Lackmaniac/vescmonitor/Modes;

    invoke-static {v3}, Lackmaniac/vescmonitor/Modes;->access$100(Lackmaniac/vescmonitor/Modes;)I

    move-result v3

    iget v4, p0, Lackmaniac/vescmonitor/Modes$2$2;->val$selected:I

    move v5, v7

    invoke-static/range {v0 .. v5}, Lackmaniac/vescmonitor/Modes;->access$000(Lackmaniac/vescmonitor/Modes;Landroid/content/SharedPreferences$Editor;Landroid/content/SharedPreferences;IIZ)V

    .line 99
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 100
    iget-object v0, p0, Lackmaniac/vescmonitor/Modes$2$2;->this$1:Lackmaniac/vescmonitor/Modes$2;

    iget-object v0, v0, Lackmaniac/vescmonitor/Modes$2;->this$0:Lackmaniac/vescmonitor/Modes;

    invoke-virtual {v0}, Lackmaniac/vescmonitor/Modes;->finish()V

    .line 101
    iget-object v0, p0, Lackmaniac/vescmonitor/Modes$2$2;->this$1:Lackmaniac/vescmonitor/Modes$2;

    iget-object v0, v0, Lackmaniac/vescmonitor/Modes$2;->this$0:Lackmaniac/vescmonitor/Modes;

    iget-object v2, p0, Lackmaniac/vescmonitor/Modes$2$2;->this$1:Lackmaniac/vescmonitor/Modes$2;

    iget-object v2, v2, Lackmaniac/vescmonitor/Modes$2;->this$0:Lackmaniac/vescmonitor/Modes;

    invoke-virtual {v2}, Lackmaniac/vescmonitor/Modes;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v0, v2}, Lackmaniac/vescmonitor/Modes;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 104
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    :pswitch_3
    new-instance v6, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lackmaniac/vescmonitor/Modes$2$2;->this$1:Lackmaniac/vescmonitor/Modes$2;

    iget-object v0, v0, Lackmaniac/vescmonitor/Modes$2;->this$0:Lackmaniac/vescmonitor/Modes;

    invoke-direct {v6, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 107
    .local v6, "alertDialog":Landroid/app/AlertDialog$Builder;
    const-string v0, "Delete mode."

    invoke-virtual {v6, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 110
    const-string v0, "Do you want to delete this mode?"

    invoke-virtual {v6, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 114
    const-string v0, "OK"

    new-instance v2, Lackmaniac/vescmonitor/Modes$2$2$1;

    invoke-direct {v2, p0}, Lackmaniac/vescmonitor/Modes$2$2$1;-><init>(Lackmaniac/vescmonitor/Modes$2$2;)V

    invoke-virtual {v6, v0, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 183
    const-string v0, "Cancel"

    new-instance v2, Lackmaniac/vescmonitor/Modes$2$2$2;

    invoke-direct {v2, p0}, Lackmaniac/vescmonitor/Modes$2$2$2;-><init>(Lackmaniac/vescmonitor/Modes$2$2;)V

    invoke-virtual {v6, v0, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 191
    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 75
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
