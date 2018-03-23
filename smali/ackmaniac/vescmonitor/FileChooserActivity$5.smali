.class Lackmaniac/vescmonitor/FileChooserActivity$5;
.super Ljava/lang/Object;
.source "FileChooserActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


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
    .line 237
    iput-object p1, p0, Lackmaniac/vescmonitor/FileChooserActivity$5;->this$0:Lackmaniac/vescmonitor/FileChooserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
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
    .line 240
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v2, p0, Lackmaniac/vescmonitor/FileChooserActivity$5;->this$0:Lackmaniac/vescmonitor/FileChooserActivity;

    invoke-static {v2}, Lackmaniac/vescmonitor/FileChooserActivity;->access$400(Lackmaniac/vescmonitor/FileChooserActivity;)Lackmaniac/vescmonitor/FileArrayAdapter;

    move-result-object v2

    invoke-virtual {v2, p3}, Lackmaniac/vescmonitor/FileArrayAdapter;->getItem(I)Lackmaniac/vescmonitor/FileInfo;

    move-result-object v0

    .line 241
    .local v0, "fileDescriptor":Lackmaniac/vescmonitor/FileInfo;
    invoke-virtual {v0}, Lackmaniac/vescmonitor/FileInfo;->isFolder()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Lackmaniac/vescmonitor/FileInfo;->isParent()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 242
    :cond_0
    iget-object v2, p0, Lackmaniac/vescmonitor/FileChooserActivity$5;->this$0:Lackmaniac/vescmonitor/FileChooserActivity;

    new-instance v3, Ljava/io/File;

    invoke-virtual {v0}, Lackmaniac/vescmonitor/FileInfo;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v3}, Lackmaniac/vescmonitor/FileChooserActivity;->access$002(Lackmaniac/vescmonitor/FileChooserActivity;Ljava/io/File;)Ljava/io/File;

    .line 243
    iget-object v2, p0, Lackmaniac/vescmonitor/FileChooserActivity$5;->this$0:Lackmaniac/vescmonitor/FileChooserActivity;

    iget-object v3, p0, Lackmaniac/vescmonitor/FileChooserActivity$5;->this$0:Lackmaniac/vescmonitor/FileChooserActivity;

    invoke-static {v3}, Lackmaniac/vescmonitor/FileChooserActivity;->access$000(Lackmaniac/vescmonitor/FileChooserActivity;)Ljava/io/File;

    move-result-object v3

    invoke-static {v2, v3}, Lackmaniac/vescmonitor/FileChooserActivity;->access$100(Lackmaniac/vescmonitor/FileChooserActivity;Ljava/io/File;)V

    .line 264
    :cond_1
    :goto_0
    return-void

    .line 245
    :cond_2
    iget-object v2, p0, Lackmaniac/vescmonitor/FileChooserActivity$5;->this$0:Lackmaniac/vescmonitor/FileChooserActivity;

    new-instance v3, Ljava/io/File;

    invoke-virtual {v0}, Lackmaniac/vescmonitor/FileInfo;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v3}, Lackmaniac/vescmonitor/FileChooserActivity;->access$502(Lackmaniac/vescmonitor/FileChooserActivity;Ljava/io/File;)Ljava/io/File;

    .line 247
    iget-object v2, p0, Lackmaniac/vescmonitor/FileChooserActivity$5;->this$0:Lackmaniac/vescmonitor/FileChooserActivity;

    invoke-static {v2}, Lackmaniac/vescmonitor/FileChooserActivity;->access$500(Lackmaniac/vescmonitor/FileChooserActivity;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "mp4"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 248
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    iget-object v3, p0, Lackmaniac/vescmonitor/FileChooserActivity$5;->this$0:Lackmaniac/vescmonitor/FileChooserActivity;

    invoke-static {v3}, Lackmaniac/vescmonitor/FileChooserActivity;->access$500(Lackmaniac/vescmonitor/FileChooserActivity;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 249
    .local v1, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lackmaniac/vescmonitor/FileChooserActivity$5;->this$0:Lackmaniac/vescmonitor/FileChooserActivity;

    invoke-static {v2}, Lackmaniac/vescmonitor/FileChooserActivity;->access$500(Lackmaniac/vescmonitor/FileChooserActivity;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-string v3, "video/mp4"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 250
    iget-object v2, p0, Lackmaniac/vescmonitor/FileChooserActivity$5;->this$0:Lackmaniac/vescmonitor/FileChooserActivity;

    invoke-virtual {v2, v1}, Lackmaniac/vescmonitor/FileChooserActivity;->startActivity(Landroid/content/Intent;)V

    .line 253
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_3
    iget-object v2, p0, Lackmaniac/vescmonitor/FileChooserActivity$5;->this$0:Lackmaniac/vescmonitor/FileChooserActivity;

    invoke-static {v2}, Lackmaniac/vescmonitor/FileChooserActivity;->access$500(Lackmaniac/vescmonitor/FileChooserActivity;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "csv"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 254
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lackmaniac/vescmonitor/FileChooserActivity$5;->this$0:Lackmaniac/vescmonitor/FileChooserActivity;

    invoke-virtual {v2}, Lackmaniac/vescmonitor/FileChooserActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lackmaniac/vescmonitor/LineChartActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 255
    .restart local v1    # "intent":Landroid/content/Intent;
    const-string v2, "FILENAMECHART"

    iget-object v3, p0, Lackmaniac/vescmonitor/FileChooserActivity$5;->this$0:Lackmaniac/vescmonitor/FileChooserActivity;

    invoke-static {v3}, Lackmaniac/vescmonitor/FileChooserActivity;->access$500(Lackmaniac/vescmonitor/FileChooserActivity;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 256
    iget-object v2, p0, Lackmaniac/vescmonitor/FileChooserActivity$5;->this$0:Lackmaniac/vescmonitor/FileChooserActivity;

    invoke-virtual {v2, v1}, Lackmaniac/vescmonitor/FileChooserActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method
