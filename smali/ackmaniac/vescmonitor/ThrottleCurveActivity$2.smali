.class Lackmaniac/vescmonitor/ThrottleCurveActivity$2;
.super Ljava/lang/Object;
.source "ThrottleCurveActivity.java"

# interfaces
.implements Landroid/widget/NumberPicker$OnValueChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lackmaniac/vescmonitor/ThrottleCurveActivity;->initNumberPickerExp(Landroid/widget/NumberPicker;F)V
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
    .line 459
    iput-object p1, p0, Lackmaniac/vescmonitor/ThrottleCurveActivity$2;->this$0:Lackmaniac/vescmonitor/ThrottleCurveActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValueChange(Landroid/widget/NumberPicker;II)V
    .locals 1
    .param p1, "numberPicker"    # Landroid/widget/NumberPicker;
    .param p2, "i"    # I
    .param p3, "i1"    # I

    .prologue
    .line 462
    iget-object v0, p0, Lackmaniac/vescmonitor/ThrottleCurveActivity$2;->this$0:Lackmaniac/vescmonitor/ThrottleCurveActivity;

    invoke-static {v0}, Lackmaniac/vescmonitor/ThrottleCurveActivity;->access$000(Lackmaniac/vescmonitor/ThrottleCurveActivity;)V

    .line 463
    return-void
.end method
