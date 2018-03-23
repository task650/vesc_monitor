.class Lackmaniac/vescmonitor/SampleGattAttributes;
.super Ljava/lang/Object;
.source "SampleGattAttributes.java"


# static fields
.field static CLIENT_CHARACTERISTIC_CONFIG:Ljava/lang/String;

.field static HEART_RATE_MEASUREMENT:Ljava/lang/String;

.field static HM_RX_TX:Ljava/lang/String;

.field private static attributes:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 9
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lackmaniac/vescmonitor/SampleGattAttributes;->attributes:Ljava/util/HashMap;

    .line 10
    const-string v0, "00002a37-0000-1000-8000-00805f9b34fb"

    sput-object v0, Lackmaniac/vescmonitor/SampleGattAttributes;->HEART_RATE_MEASUREMENT:Ljava/lang/String;

    .line 11
    const-string v0, "00002902-0000-1000-8000-00805f9b34fb"

    sput-object v0, Lackmaniac/vescmonitor/SampleGattAttributes;->CLIENT_CHARACTERISTIC_CONFIG:Ljava/lang/String;

    .line 14
    const-string v0, "0000ffe1-0000-1000-8000-00805f9b34fb"

    sput-object v0, Lackmaniac/vescmonitor/SampleGattAttributes;->HM_RX_TX:Ljava/lang/String;

    .line 18
    sget-object v0, Lackmaniac/vescmonitor/SampleGattAttributes;->attributes:Ljava/util/HashMap;

    const-string v1, "0000180d-0000-1000-8000-00805f9b34fb"

    const-string v2, "Heart Rate Service"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    sget-object v0, Lackmaniac/vescmonitor/SampleGattAttributes;->attributes:Ljava/util/HashMap;

    const-string v1, "0000180a-0000-1000-8000-00805f9b34fb"

    const-string v2, "Device Information Service"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    sget-object v0, Lackmaniac/vescmonitor/SampleGattAttributes;->attributes:Ljava/util/HashMap;

    const-string v1, "0000ffe0-0000-1000-8000-00805f9b34fb"

    const-string v2, "HM 10 Serial"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    sget-object v0, Lackmaniac/vescmonitor/SampleGattAttributes;->attributes:Ljava/util/HashMap;

    sget-object v1, Lackmaniac/vescmonitor/SampleGattAttributes;->HEART_RATE_MEASUREMENT:Ljava/lang/String;

    const-string v2, "Heart Rate Measurement"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    sget-object v0, Lackmaniac/vescmonitor/SampleGattAttributes;->attributes:Ljava/util/HashMap;

    const-string v1, "00002a29-0000-1000-8000-00805f9b34fb"

    const-string v2, "Manufacturer Name String"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    sget-object v0, Lackmaniac/vescmonitor/SampleGattAttributes;->attributes:Ljava/util/HashMap;

    sget-object v1, Lackmaniac/vescmonitor/SampleGattAttributes;->HM_RX_TX:Ljava/lang/String;

    const-string v2, "RX/TX data"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static lookup(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "uuid"    # Ljava/lang/String;
    .param p1, "defaultName"    # Ljava/lang/String;

    .prologue
    .line 35
    sget-object v1, Lackmaniac/vescmonitor/SampleGattAttributes;->attributes:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 36
    .local v0, "name":Ljava/lang/String;
    if-nez v0, :cond_0

    .end local p1    # "defaultName":Ljava/lang/String;
    :goto_0
    return-object p1

    .restart local p1    # "defaultName":Ljava/lang/String;
    :cond_0
    move-object p1, v0

    goto :goto_0
.end method
