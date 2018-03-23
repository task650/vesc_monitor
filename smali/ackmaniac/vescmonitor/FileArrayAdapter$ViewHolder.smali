.class Lackmaniac/vescmonitor/FileArrayAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "FileArrayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lackmaniac/vescmonitor/FileArrayAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field duration:Landroid/widget/TextView;

.field icon:Landroid/widget/ImageView;

.field name:Landroid/widget/TextView;

.field passedDays:Landroid/widget/TextView;

.field final synthetic this$0:Lackmaniac/vescmonitor/FileArrayAdapter;


# direct methods
.method constructor <init>(Lackmaniac/vescmonitor/FileArrayAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lackmaniac/vescmonitor/FileArrayAdapter;

    .prologue
    .line 109
    iput-object p1, p0, Lackmaniac/vescmonitor/FileArrayAdapter$ViewHolder;->this$0:Lackmaniac/vescmonitor/FileArrayAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
