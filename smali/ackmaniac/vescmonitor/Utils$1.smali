.class final Lackmaniac/vescmonitor/Utils$1;
.super Ljava/util/ArrayList;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lackmaniac/vescmonitor/Utils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 281
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 282
    const-string v0, "faulta"

    invoke-virtual {p0, v0}, Lackmaniac/vescmonitor/Utils$1;->add(Ljava/lang/Object;)Z

    .line 283
    const-string v0, "can_member"

    invoke-virtual {p0, v0}, Lackmaniac/vescmonitor/Utils$1;->add(Ljava/lang/Object;)Z

    .line 284
    const-string v0, "kv"

    invoke-virtual {p0, v0}, Lackmaniac/vescmonitor/Utils$1;->add(Ljava/lang/Object;)Z

    .line 285
    const-string v0, "tacho"

    invoke-virtual {p0, v0}, Lackmaniac/vescmonitor/Utils$1;->add(Ljava/lang/Object;)Z

    .line 286
    const-string v0, "rpm"

    invoke-virtual {p0, v0}, Lackmaniac/vescmonitor/Utils$1;->add(Ljava/lang/Object;)Z

    .line 287
    const-string v0, "volt"

    invoke-virtual {p0, v0}, Lackmaniac/vescmonitor/Utils$1;->add(Ljava/lang/Object;)Z

    .line 288
    const-string v0, "can_erpms"

    invoke-virtual {p0, v0}, Lackmaniac/vescmonitor/Utils$1;->add(Ljava/lang/Object;)Z

    .line 289
    return-void
.end method
