.class Lackmaniac/vescmonitor/DeviceScanActivity$3;
.super Ljava/lang/Object;
.source "DeviceScanActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lackmaniac/vescmonitor/DeviceScanActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lackmaniac/vescmonitor/DeviceScanActivity;


# direct methods
.method constructor <init>(Lackmaniac/vescmonitor/DeviceScanActivity;)V
    .locals 0
    .param p1, "this$0"    # Lackmaniac/vescmonitor/DeviceScanActivity;

    .prologue
    .line 177
    iput-object p1, p0, Lackmaniac/vescmonitor/DeviceScanActivity$3;->this$0:Lackmaniac/vescmonitor/DeviceScanActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 181
    return-void
.end method
