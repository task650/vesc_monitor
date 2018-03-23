.class Lackmaniac/vescmonitor/ThrottleCurveActivity$1;
.super Ljava/lang/Object;
.source "ThrottleCurveActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lackmaniac/vescmonitor/ThrottleCurveActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lackmaniac/vescmonitor/ThrottleCurveActivity;


# direct methods
.method constructor <init>(Lackmaniac/vescmonitor/ThrottleCurveActivity;)V
    .locals 0
    .param p1, "this$0"    # Lackmaniac/vescmonitor/ThrottleCurveActivity;

    .prologue
    .line 84
    iput-object p1, p0, Lackmaniac/vescmonitor/ThrottleCurveActivity$1;->this$0:Lackmaniac/vescmonitor/ThrottleCurveActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .param p2, "view"    # Landroid/view/View;
    .param p3, "i"    # I
    .param p4, "l"    # J
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
    .line 87
    .local p1, "adapterView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lackmaniac/vescmonitor/ThrottleCurveActivity$1;->this$0:Lackmaniac/vescmonitor/ThrottleCurveActivity;

    invoke-static {v0}, Lackmaniac/vescmonitor/ThrottleCurveActivity;->access$000(Lackmaniac/vescmonitor/ThrottleCurveActivity;)V

    .line 88
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 90
    .local p1, "adapterView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method
