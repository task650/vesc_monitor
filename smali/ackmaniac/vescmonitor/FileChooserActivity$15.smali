.class Lackmaniac/vescmonitor/FileChooserActivity$15;
.super Ljava/lang/Object;
.source "FileChooserActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lackmaniac/vescmonitor/FileChooserActivity;->addNewFolderDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lackmaniac/vescmonitor/FileChooserActivity;

.field final synthetic val$et:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lackmaniac/vescmonitor/FileChooserActivity;Landroid/widget/EditText;)V
    .locals 0
    .param p1, "this$0"    # Lackmaniac/vescmonitor/FileChooserActivity;

    .prologue
    .line 474
    iput-object p1, p0, Lackmaniac/vescmonitor/FileChooserActivity$15;->this$0:Lackmaniac/vescmonitor/FileChooserActivity;

    iput-object p2, p0, Lackmaniac/vescmonitor/FileChooserActivity$15;->val$et:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 477
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lackmaniac/vescmonitor/FileChooserActivity$15;->this$0:Lackmaniac/vescmonitor/FileChooserActivity;

    invoke-static {v1}, Lackmaniac/vescmonitor/FileChooserActivity;->access$000(Lackmaniac/vescmonitor/FileChooserActivity;)Ljava/io/File;

    move-result-object v1

    iget-object v2, p0, Lackmaniac/vescmonitor/FileChooserActivity$15;->val$et:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 479
    .local v0, "newFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 480
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_0

    .line 481
    const-string v1, "FileChooserActivity"

    iget-object v2, p0, Lackmaniac/vescmonitor/FileChooserActivity$15;->this$0:Lackmaniac/vescmonitor/FileChooserActivity;

    invoke-virtual {v2}, Lackmaniac/vescmonitor/FileChooserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0046

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    :cond_0
    iget-object v1, p0, Lackmaniac/vescmonitor/FileChooserActivity$15;->this$0:Lackmaniac/vescmonitor/FileChooserActivity;

    iget-object v2, p0, Lackmaniac/vescmonitor/FileChooserActivity$15;->this$0:Lackmaniac/vescmonitor/FileChooserActivity;

    invoke-static {v2}, Lackmaniac/vescmonitor/FileChooserActivity;->access$000(Lackmaniac/vescmonitor/FileChooserActivity;)Ljava/io/File;

    move-result-object v2

    invoke-static {v1, v2}, Lackmaniac/vescmonitor/FileChooserActivity;->access$100(Lackmaniac/vescmonitor/FileChooserActivity;Ljava/io/File;)V

    .line 485
    return-void
.end method
