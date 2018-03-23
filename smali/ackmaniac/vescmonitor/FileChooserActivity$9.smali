.class Lackmaniac/vescmonitor/FileChooserActivity$9;
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
    .line 327
    iput-object p1, p0, Lackmaniac/vescmonitor/FileChooserActivity$9;->this$0:Lackmaniac/vescmonitor/FileChooserActivity;

    iput-object p2, p0, Lackmaniac/vescmonitor/FileChooserActivity$9;->val$file:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 9
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v8, 0x1

    .line 329
    packed-switch p2, :pswitch_data_0

    .line 360
    :goto_0
    return-void

    .line 331
    :pswitch_0
    iget-object v2, p0, Lackmaniac/vescmonitor/FileChooserActivity$9;->this$0:Lackmaniac/vescmonitor/FileChooserActivity;

    iget-object v3, p0, Lackmaniac/vescmonitor/FileChooserActivity$9;->val$file:Ljava/io/File;

    invoke-static {v2, v3}, Lackmaniac/vescmonitor/FileChooserActivity;->access$700(Lackmaniac/vescmonitor/FileChooserActivity;Ljava/io/File;)V

    .line 332
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto :goto_0

    .line 335
    :pswitch_1
    const/4 v0, 0x1

    .line 336
    .local v0, "deleteAllowed":Z
    iget-object v3, p0, Lackmaniac/vescmonitor/FileChooserActivity$9;->val$file:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    array-length v5, v4

    move v3, v2

    :goto_1
    if-ge v3, v5, :cond_1

    aget-object v1, v4, v3

    .line 337
    .local v1, "singleFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    const-string v7, ".mp4"

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    const-string v7, ".csv"

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 338
    const/4 v0, 0x0

    .line 336
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 341
    .end local v1    # "singleFile":Ljava/io/File;
    :cond_1
    if-eqz v0, :cond_5

    .line 342
    iget-object v3, p0, Lackmaniac/vescmonitor/FileChooserActivity$9;->val$file:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    array-length v4, v3

    :goto_2
    if-ge v2, v4, :cond_3

    aget-object v1, v3, v2

    .line 343
    .restart local v1    # "singleFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v5

    if-nez v5, :cond_2

    .line 344
    iget-object v5, p0, Lackmaniac/vescmonitor/FileChooserActivity$9;->this$0:Lackmaniac/vescmonitor/FileChooserActivity;

    invoke-virtual {v5}, Lackmaniac/vescmonitor/FileChooserActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Could not delete the file "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 342
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 347
    .end local v1    # "singleFile":Ljava/io/File;
    :cond_3
    iget-object v2, p0, Lackmaniac/vescmonitor/FileChooserActivity$9;->val$file:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 348
    iget-object v2, p0, Lackmaniac/vescmonitor/FileChooserActivity$9;->this$0:Lackmaniac/vescmonitor/FileChooserActivity;

    iget-object v3, p0, Lackmaniac/vescmonitor/FileChooserActivity$9;->this$0:Lackmaniac/vescmonitor/FileChooserActivity;

    invoke-static {v3}, Lackmaniac/vescmonitor/FileChooserActivity;->access$000(Lackmaniac/vescmonitor/FileChooserActivity;)Ljava/io/File;

    move-result-object v3

    invoke-static {v2, v3}, Lackmaniac/vescmonitor/FileChooserActivity;->access$100(Lackmaniac/vescmonitor/FileChooserActivity;Ljava/io/File;)V

    .line 349
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto/16 :goto_0

    .line 351
    :cond_4
    iget-object v2, p0, Lackmaniac/vescmonitor/FileChooserActivity$9;->this$0:Lackmaniac/vescmonitor/FileChooserActivity;

    invoke-virtual {v2}, Lackmaniac/vescmonitor/FileChooserActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lackmaniac/vescmonitor/FileChooserActivity$9;->this$0:Lackmaniac/vescmonitor/FileChooserActivity;

    invoke-virtual {v3}, Lackmaniac/vescmonitor/FileChooserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d003d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 355
    :cond_5
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 356
    iget-object v2, p0, Lackmaniac/vescmonitor/FileChooserActivity$9;->this$0:Lackmaniac/vescmonitor/FileChooserActivity;

    invoke-virtual {v2}, Lackmaniac/vescmonitor/FileChooserActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lackmaniac/vescmonitor/FileChooserActivity$9;->this$0:Lackmaniac/vescmonitor/FileChooserActivity;

    invoke-virtual {v3}, Lackmaniac/vescmonitor/FileChooserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d0094

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 329
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
