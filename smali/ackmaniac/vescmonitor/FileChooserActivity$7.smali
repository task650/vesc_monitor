.class Lackmaniac/vescmonitor/FileChooserActivity$7;
.super Ljava/lang/Object;
.source "FileChooserActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lackmaniac/vescmonitor/FileChooserActivity;->showMenu(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lackmaniac/vescmonitor/FileChooserActivity;

.field final synthetic val$file:Ljava/io/File;


# direct methods
.method constructor <init>(Lackmaniac/vescmonitor/FileChooserActivity;Ljava/io/File;)V
    .locals 0
    .param p1, "this$0"    # Lackmaniac/vescmonitor/FileChooserActivity;

    .prologue
    .line 281
    iput-object p1, p0, Lackmaniac/vescmonitor/FileChooserActivity$7;->this$0:Lackmaniac/vescmonitor/FileChooserActivity;

    iput-object p2, p0, Lackmaniac/vescmonitor/FileChooserActivity$7;->val$file:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 283
    packed-switch p2, :pswitch_data_0

    .line 307
    :goto_0
    return-void

    .line 285
    :pswitch_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SEND"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 286
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "android.intent.extra.SUBJECT"

    const-string v3, "Title"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 288
    const-string v2, "video/mp4"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 289
    const-string v2, "android.intent.extra.STREAM"

    iget-object v3, p0, Lackmaniac/vescmonitor/FileChooserActivity$7;->val$file:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 291
    :try_start_0
    iget-object v2, p0, Lackmaniac/vescmonitor/FileChooserActivity$7;->this$0:Lackmaniac/vescmonitor/FileChooserActivity;

    iget-object v3, p0, Lackmaniac/vescmonitor/FileChooserActivity$7;->this$0:Lackmaniac/vescmonitor/FileChooserActivity;

    invoke-virtual {v3}, Lackmaniac/vescmonitor/FileChooserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d00a4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v2, v3}, Lackmaniac/vescmonitor/FileChooserActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 295
    :goto_1
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto :goto_0

    .line 292
    :catch_0
    move-exception v0

    .line 293
    .local v0, "ex":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 298
    .end local v0    # "ex":Landroid/content/ActivityNotFoundException;
    .end local v1    # "intent":Landroid/content/Intent;
    :pswitch_1
    iget-object v2, p0, Lackmaniac/vescmonitor/FileChooserActivity$7;->this$0:Lackmaniac/vescmonitor/FileChooserActivity;

    iget-object v3, p0, Lackmaniac/vescmonitor/FileChooserActivity$7;->val$file:Ljava/io/File;

    invoke-static {v2, v3}, Lackmaniac/vescmonitor/FileChooserActivity;->access$600(Lackmaniac/vescmonitor/FileChooserActivity;Ljava/io/File;)V

    .line 299
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto :goto_0

    .line 302
    :pswitch_2
    iget-object v2, p0, Lackmaniac/vescmonitor/FileChooserActivity$7;->val$file:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 303
    iget-object v2, p0, Lackmaniac/vescmonitor/FileChooserActivity$7;->this$0:Lackmaniac/vescmonitor/FileChooserActivity;

    iget-object v3, p0, Lackmaniac/vescmonitor/FileChooserActivity$7;->this$0:Lackmaniac/vescmonitor/FileChooserActivity;

    invoke-static {v3}, Lackmaniac/vescmonitor/FileChooserActivity;->access$000(Lackmaniac/vescmonitor/FileChooserActivity;)Ljava/io/File;

    move-result-object v3

    invoke-static {v2, v3}, Lackmaniac/vescmonitor/FileChooserActivity;->access$100(Lackmaniac/vescmonitor/FileChooserActivity;Ljava/io/File;)V

    .line 304
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto :goto_0

    .line 283
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
