.class Lackmaniac/vescmonitor/FileChooserActivity$4;
.super Ljava/lang/Object;
.source "FileChooserActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lackmaniac/vescmonitor/FileChooserActivity;->fill(Ljava/io/File;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lackmaniac/vescmonitor/FileChooserActivity;


# direct methods
.method constructor <init>(Lackmaniac/vescmonitor/FileChooserActivity;)V
    .locals 0
    .param p1, "this$0"    # Lackmaniac/vescmonitor/FileChooserActivity;

    .prologue
    .line 227
    iput-object p1, p0, Lackmaniac/vescmonitor/FileChooserActivity$4;->this$0:Lackmaniac/vescmonitor/FileChooserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 1
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
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
    .line 231
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lackmaniac/vescmonitor/FileChooserActivity$4;->this$0:Lackmaniac/vescmonitor/FileChooserActivity;

    invoke-static {v0, p3}, Lackmaniac/vescmonitor/FileChooserActivity;->access$300(Lackmaniac/vescmonitor/FileChooserActivity;I)V

    .line 233
    const/4 v0, 0x1

    return v0
.end method
