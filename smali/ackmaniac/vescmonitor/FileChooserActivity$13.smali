.class Lackmaniac/vescmonitor/FileChooserActivity$13;
.super Ljava/lang/Object;
.source "FileChooserActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lackmaniac/vescmonitor/FileChooserActivity;->nameForRenameDialog(Ljava/io/File;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lackmaniac/vescmonitor/FileChooserActivity;

.field final synthetic val$et:Landroid/widget/EditText;

.field final synthetic val$file:Ljava/io/File;

.field final synthetic val$suffix:Ljava/lang/String;


# direct methods
.method constructor <init>(Lackmaniac/vescmonitor/FileChooserActivity;Ljava/io/File;Landroid/widget/EditText;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lackmaniac/vescmonitor/FileChooserActivity;

    .prologue
    .line 437
    iput-object p1, p0, Lackmaniac/vescmonitor/FileChooserActivity$13;->this$0:Lackmaniac/vescmonitor/FileChooserActivity;

    iput-object p2, p0, Lackmaniac/vescmonitor/FileChooserActivity$13;->val$file:Ljava/io/File;

    iput-object p3, p0, Lackmaniac/vescmonitor/FileChooserActivity$13;->val$et:Landroid/widget/EditText;

    iput-object p4, p0, Lackmaniac/vescmonitor/FileChooserActivity$13;->val$suffix:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 440
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lackmaniac/vescmonitor/FileChooserActivity$13;->val$file:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lackmaniac/vescmonitor/FileChooserActivity$13;->val$et:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lackmaniac/vescmonitor/FileChooserActivity$13;->val$suffix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 441
    .local v0, "newFile":Ljava/io/File;
    iget-object v1, p0, Lackmaniac/vescmonitor/FileChooserActivity$13;->val$file:Ljava/io/File;

    invoke-virtual {v1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 442
    iget-object v1, p0, Lackmaniac/vescmonitor/FileChooserActivity$13;->this$0:Lackmaniac/vescmonitor/FileChooserActivity;

    iget-object v2, p0, Lackmaniac/vescmonitor/FileChooserActivity$13;->this$0:Lackmaniac/vescmonitor/FileChooserActivity;

    invoke-static {v2}, Lackmaniac/vescmonitor/FileChooserActivity;->access$000(Lackmaniac/vescmonitor/FileChooserActivity;)Ljava/io/File;

    move-result-object v2

    invoke-static {v1, v2}, Lackmaniac/vescmonitor/FileChooserActivity;->access$100(Lackmaniac/vescmonitor/FileChooserActivity;Ljava/io/File;)V

    .line 443
    return-void
.end method
