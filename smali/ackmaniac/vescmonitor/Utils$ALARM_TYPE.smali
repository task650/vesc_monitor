.class final enum Lackmaniac/vescmonitor/Utils$ALARM_TYPE;
.super Ljava/lang/Enum;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lackmaniac/vescmonitor/Utils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "ALARM_TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lackmaniac/vescmonitor/Utils$ALARM_TYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lackmaniac/vescmonitor/Utils$ALARM_TYPE;

.field public static final enum BATTERY_AT_PERCENT_0:Lackmaniac/vescmonitor/Utils$ALARM_TYPE;

.field public static final enum BATTERY_AT_PERCENT_10:Lackmaniac/vescmonitor/Utils$ALARM_TYPE;

.field public static final enum BATTERY_AT_PERCENT_20:Lackmaniac/vescmonitor/Utils$ALARM_TYPE;

.field public static final enum BATTERY_AT_PERCENT_30:Lackmaniac/vescmonitor/Utils$ALARM_TYPE;

.field public static final enum BATTERY_AT_PERCENT_40:Lackmaniac/vescmonitor/Utils$ALARM_TYPE;

.field public static final enum BATTERY_AT_PERCENT_50:Lackmaniac/vescmonitor/Utils$ALARM_TYPE;

.field public static final enum NONE:Lackmaniac/vescmonitor/Utils$ALARM_TYPE;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 152
    new-instance v0, Lackmaniac/vescmonitor/Utils$ALARM_TYPE;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v3}, Lackmaniac/vescmonitor/Utils$ALARM_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lackmaniac/vescmonitor/Utils$ALARM_TYPE;->NONE:Lackmaniac/vescmonitor/Utils$ALARM_TYPE;

    .line 153
    new-instance v0, Lackmaniac/vescmonitor/Utils$ALARM_TYPE;

    const-string v1, "BATTERY_AT_PERCENT_50"

    invoke-direct {v0, v1, v4}, Lackmaniac/vescmonitor/Utils$ALARM_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lackmaniac/vescmonitor/Utils$ALARM_TYPE;->BATTERY_AT_PERCENT_50:Lackmaniac/vescmonitor/Utils$ALARM_TYPE;

    .line 154
    new-instance v0, Lackmaniac/vescmonitor/Utils$ALARM_TYPE;

    const-string v1, "BATTERY_AT_PERCENT_40"

    invoke-direct {v0, v1, v5}, Lackmaniac/vescmonitor/Utils$ALARM_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lackmaniac/vescmonitor/Utils$ALARM_TYPE;->BATTERY_AT_PERCENT_40:Lackmaniac/vescmonitor/Utils$ALARM_TYPE;

    .line 155
    new-instance v0, Lackmaniac/vescmonitor/Utils$ALARM_TYPE;

    const-string v1, "BATTERY_AT_PERCENT_30"

    invoke-direct {v0, v1, v6}, Lackmaniac/vescmonitor/Utils$ALARM_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lackmaniac/vescmonitor/Utils$ALARM_TYPE;->BATTERY_AT_PERCENT_30:Lackmaniac/vescmonitor/Utils$ALARM_TYPE;

    .line 156
    new-instance v0, Lackmaniac/vescmonitor/Utils$ALARM_TYPE;

    const-string v1, "BATTERY_AT_PERCENT_20"

    invoke-direct {v0, v1, v7}, Lackmaniac/vescmonitor/Utils$ALARM_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lackmaniac/vescmonitor/Utils$ALARM_TYPE;->BATTERY_AT_PERCENT_20:Lackmaniac/vescmonitor/Utils$ALARM_TYPE;

    .line 157
    new-instance v0, Lackmaniac/vescmonitor/Utils$ALARM_TYPE;

    const-string v1, "BATTERY_AT_PERCENT_10"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lackmaniac/vescmonitor/Utils$ALARM_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lackmaniac/vescmonitor/Utils$ALARM_TYPE;->BATTERY_AT_PERCENT_10:Lackmaniac/vescmonitor/Utils$ALARM_TYPE;

    .line 158
    new-instance v0, Lackmaniac/vescmonitor/Utils$ALARM_TYPE;

    const-string v1, "BATTERY_AT_PERCENT_0"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lackmaniac/vescmonitor/Utils$ALARM_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lackmaniac/vescmonitor/Utils$ALARM_TYPE;->BATTERY_AT_PERCENT_0:Lackmaniac/vescmonitor/Utils$ALARM_TYPE;

    .line 151
    const/4 v0, 0x7

    new-array v0, v0, [Lackmaniac/vescmonitor/Utils$ALARM_TYPE;

    sget-object v1, Lackmaniac/vescmonitor/Utils$ALARM_TYPE;->NONE:Lackmaniac/vescmonitor/Utils$ALARM_TYPE;

    aput-object v1, v0, v3

    sget-object v1, Lackmaniac/vescmonitor/Utils$ALARM_TYPE;->BATTERY_AT_PERCENT_50:Lackmaniac/vescmonitor/Utils$ALARM_TYPE;

    aput-object v1, v0, v4

    sget-object v1, Lackmaniac/vescmonitor/Utils$ALARM_TYPE;->BATTERY_AT_PERCENT_40:Lackmaniac/vescmonitor/Utils$ALARM_TYPE;

    aput-object v1, v0, v5

    sget-object v1, Lackmaniac/vescmonitor/Utils$ALARM_TYPE;->BATTERY_AT_PERCENT_30:Lackmaniac/vescmonitor/Utils$ALARM_TYPE;

    aput-object v1, v0, v6

    sget-object v1, Lackmaniac/vescmonitor/Utils$ALARM_TYPE;->BATTERY_AT_PERCENT_20:Lackmaniac/vescmonitor/Utils$ALARM_TYPE;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lackmaniac/vescmonitor/Utils$ALARM_TYPE;->BATTERY_AT_PERCENT_10:Lackmaniac/vescmonitor/Utils$ALARM_TYPE;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lackmaniac/vescmonitor/Utils$ALARM_TYPE;->BATTERY_AT_PERCENT_0:Lackmaniac/vescmonitor/Utils$ALARM_TYPE;

    aput-object v2, v0, v1

    sput-object v0, Lackmaniac/vescmonitor/Utils$ALARM_TYPE;->$VALUES:[Lackmaniac/vescmonitor/Utils$ALARM_TYPE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 151
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lackmaniac/vescmonitor/Utils$ALARM_TYPE;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 151
    const-class v0, Lackmaniac/vescmonitor/Utils$ALARM_TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lackmaniac/vescmonitor/Utils$ALARM_TYPE;

    return-object v0
.end method

.method public static values()[Lackmaniac/vescmonitor/Utils$ALARM_TYPE;
    .locals 1

    .prologue
    .line 151
    sget-object v0, Lackmaniac/vescmonitor/Utils$ALARM_TYPE;->$VALUES:[Lackmaniac/vescmonitor/Utils$ALARM_TYPE;

    invoke-virtual {v0}, [Lackmaniac/vescmonitor/Utils$ALARM_TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lackmaniac/vescmonitor/Utils$ALARM_TYPE;

    return-object v0
.end method
