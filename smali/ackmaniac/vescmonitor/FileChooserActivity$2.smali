.class Lackmaniac/vescmonitor/FileChooserActivity$2;
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


# direct methods
.method constructor <init>(Lackmaniac/vescmonitor/FileChooserActivity;)V
    .locals 0
    .param p1, "this$0"    # Lackmaniac/vescmonitor/FileChooserActivity;

    .prologue
    .line 204
    iput-object p1, p0, Lackmaniac/vescmonitor/FileChooserActivity$2;->this$0:Lackmaniac/vescmonitor/FileChooserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 207
    iget-object v2, p0, Lackmaniac/vescmonitor/FileChooserActivity$2;->this$0:Lackmaniac/vescmonitor/FileChooserActivity;

    const-string v3, "VESC_SETTINGS"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lackmaniac/vescmonitor/FileChooserActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 208
    .local v1, "settings":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 209
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "saveFolder"

    iget-object v3, p0, Lackmaniac/vescmonitor/FileChooserActivity$2;->this$0:Lackmaniac/vescmonitor/FileChooserActivity;

    invoke-static {v3}, Lackmaniac/vescmonitor/FileChooserActivity;->access$000(Lackmaniac/vescmonitor/FileChooserActivity;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 210
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 212
    iget-object v2, p0, Lackmaniac/vescmonitor/FileChooserActivity$2;->this$0:Lackmaniac/vescmonitor/FileChooserActivity;

    invoke-virtual {v2}, Lackmaniac/vescmonitor/FileChooserActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lackmaniac/vescmonitor/FileChooserActivity$2;->this$0:Lackmaniac/vescmonitor/FileChooserActivity;

    invoke-virtual {v4}, Lackmaniac/vescmonitor/FileChooserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d0035

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lackmaniac/vescmonitor/FileChooserActivity$2;->this$0:Lackmaniac/vescmonitor/FileChooserActivity;

    invoke-static {v4}, Lackmaniac/vescmonitor/FileChooserActivity;->access$000(Lackmaniac/vescmonitor/FileChooserActivity;)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-static {v5}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 214
    return-void
.end method
