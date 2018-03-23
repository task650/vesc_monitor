.class Lackmaniac/vescmonitor/Modes$2;
.super Ljava/lang/Object;
.source "Modes.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


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

.field final synthetic val$settings:Landroid/content/SharedPreferences;


# direct methods
.method constructor <init>(Lackmaniac/vescmonitor/Modes;Landroid/content/SharedPreferences;)V
    .locals 0
    .param p1, "this$0"    # Lackmaniac/vescmonitor/Modes;

    .prologue
    .line 59
    iput-object p1, p0, Lackmaniac/vescmonitor/Modes$2;->this$0:Lackmaniac/vescmonitor/Modes;

    iput-object p2, p0, Lackmaniac/vescmonitor/Modes$2;->val$settings:Landroid/content/SharedPreferences;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 8
    .param p2, "view"    # Landroid/view/View;
    .param p3, "i"    # I
    .param p4, "l"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .local p1, "adapterView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 63
    add-int/lit8 v2, p3, 0x1

    .line 65
    .local v2, "selected":I
    const/4 v3, 0x4

    new-array v1, v3, [Ljava/lang/CharSequence;

    const-string v3, "Move Up"

    aput-object v3, v1, v6

    const-string v3, "Move Down"

    aput-object v3, v1, v7

    const/4 v3, 0x2

    const-string v4, "Copy"

    aput-object v4, v1, v3

    const/4 v3, 0x3

    iget-object v4, p0, Lackmaniac/vescmonitor/Modes$2;->this$0:Lackmaniac/vescmonitor/Modes;

    .line 68
    invoke-virtual {v4}, Lackmaniac/vescmonitor/Modes;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d0002

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    .line 70
    .local v1, "menuSettingsArray":[Ljava/lang/CharSequence;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lackmaniac/vescmonitor/Modes$2;->this$0:Lackmaniac/vescmonitor/Modes;

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 73
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    new-instance v3, Lackmaniac/vescmonitor/Modes$2$2;

    invoke-direct {v3, p0, v2}, Lackmaniac/vescmonitor/Modes$2$2;-><init>(Lackmaniac/vescmonitor/Modes$2;I)V

    invoke-virtual {v0, v1, v6, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const/high16 v4, 0x1040000

    new-instance v5, Lackmaniac/vescmonitor/Modes$2$1;

    invoke-direct {v5, p0}, Lackmaniac/vescmonitor/Modes$2$1;-><init>(Lackmaniac/vescmonitor/Modes$2;)V

    .line 196
    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 202
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 203
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 205
    return v7
.end method
