.class Lackmaniac/vescmonitor/ModeSettings$2;
.super Ljava/lang/Object;
.source "ModeSettings.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lackmaniac/vescmonitor/ModeSettings;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lackmaniac/vescmonitor/ModeSettings;


# direct methods
.method constructor <init>(Lackmaniac/vescmonitor/ModeSettings;)V
    .locals 0
    .param p1, "this$0"    # Lackmaniac/vescmonitor/ModeSettings;

    .prologue
    .line 242
    iput-object p1, p0, Lackmaniac/vescmonitor/ModeSettings$2;->this$0:Lackmaniac/vescmonitor/ModeSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .param p1, "compoundButton"    # Landroid/widget/CompoundButton;
    .param p2, "b"    # Z

    .prologue
    .line 245
    iget-object v0, p0, Lackmaniac/vescmonitor/ModeSettings$2;->this$0:Lackmaniac/vescmonitor/ModeSettings;

    invoke-static {v0}, Lackmaniac/vescmonitor/ModeSettings;->access$100(Lackmaniac/vescmonitor/ModeSettings;)V

    .line 246
    return-void
.end method
