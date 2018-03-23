.class Lackmaniac/vescmonitor/FileChooserActivity$1;
.super Ljava/lang/Object;
.source "FileChooserActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

.field final synthetic val$f:Ljava/io/File;


# direct methods
.method constructor <init>(Lackmaniac/vescmonitor/FileChooserActivity;Ljava/io/File;)V
    .locals 0
    .param p1, "this$0"    # Lackmaniac/vescmonitor/FileChooserActivity;

    .prologue
    .line 192
    iput-object p1, p0, Lackmaniac/vescmonitor/FileChooserActivity$1;->this$0:Lackmaniac/vescmonitor/FileChooserActivity;

    iput-object p2, p0, Lackmaniac/vescmonitor/FileChooserActivity$1;->val$f:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 195
    iget-object v0, p0, Lackmaniac/vescmonitor/FileChooserActivity$1;->this$0:Lackmaniac/vescmonitor/FileChooserActivity;

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lackmaniac/vescmonitor/FileChooserActivity$1;->val$f:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lackmaniac/vescmonitor/FileChooserActivity;->access$002(Lackmaniac/vescmonitor/FileChooserActivity;Ljava/io/File;)Ljava/io/File;

    .line 196
    iget-object v0, p0, Lackmaniac/vescmonitor/FileChooserActivity$1;->this$0:Lackmaniac/vescmonitor/FileChooserActivity;

    iget-object v1, p0, Lackmaniac/vescmonitor/FileChooserActivity$1;->this$0:Lackmaniac/vescmonitor/FileChooserActivity;

    invoke-static {v1}, Lackmaniac/vescmonitor/FileChooserActivity;->access$000(Lackmaniac/vescmonitor/FileChooserActivity;)Ljava/io/File;

    move-result-object v1

    invoke-static {v0, v1}, Lackmaniac/vescmonitor/FileChooserActivity;->access$100(Lackmaniac/vescmonitor/FileChooserActivity;Ljava/io/File;)V

    .line 197
    return-void
.end method
