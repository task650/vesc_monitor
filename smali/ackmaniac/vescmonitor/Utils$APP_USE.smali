.class final enum Lackmaniac/vescmonitor/Utils$APP_USE;
.super Ljava/lang/Enum;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lackmaniac/vescmonitor/Utils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "APP_USE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lackmaniac/vescmonitor/Utils$APP_USE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lackmaniac/vescmonitor/Utils$APP_USE;

.field public static final enum APP_ADC:Lackmaniac/vescmonitor/Utils$APP_USE;

.field public static final enum APP_ADC_UART:Lackmaniac/vescmonitor/Utils$APP_USE;

.field public static final enum APP_CUSTOM:Lackmaniac/vescmonitor/Utils$APP_USE;

.field public static final enum APP_NONE:Lackmaniac/vescmonitor/Utils$APP_USE;

.field public static final enum APP_NRF:Lackmaniac/vescmonitor/Utils$APP_USE;

.field public static final enum APP_NUNCHUK:Lackmaniac/vescmonitor/Utils$APP_USE;

.field public static final enum APP_PPM:Lackmaniac/vescmonitor/Utils$APP_USE;

.field public static final enum APP_PPM_UART:Lackmaniac/vescmonitor/Utils$APP_USE;

.field public static final enum APP_UART:Lackmaniac/vescmonitor/Utils$APP_USE;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 242
    new-instance v0, Lackmaniac/vescmonitor/Utils$APP_USE;

    const-string v1, "APP_NONE"

    invoke-direct {v0, v1, v3}, Lackmaniac/vescmonitor/Utils$APP_USE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lackmaniac/vescmonitor/Utils$APP_USE;->APP_NONE:Lackmaniac/vescmonitor/Utils$APP_USE;

    .line 243
    new-instance v0, Lackmaniac/vescmonitor/Utils$APP_USE;

    const-string v1, "APP_PPM"

    invoke-direct {v0, v1, v4}, Lackmaniac/vescmonitor/Utils$APP_USE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lackmaniac/vescmonitor/Utils$APP_USE;->APP_PPM:Lackmaniac/vescmonitor/Utils$APP_USE;

    .line 244
    new-instance v0, Lackmaniac/vescmonitor/Utils$APP_USE;

    const-string v1, "APP_ADC"

    invoke-direct {v0, v1, v5}, Lackmaniac/vescmonitor/Utils$APP_USE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lackmaniac/vescmonitor/Utils$APP_USE;->APP_ADC:Lackmaniac/vescmonitor/Utils$APP_USE;

    .line 245
    new-instance v0, Lackmaniac/vescmonitor/Utils$APP_USE;

    const-string v1, "APP_UART"

    invoke-direct {v0, v1, v6}, Lackmaniac/vescmonitor/Utils$APP_USE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lackmaniac/vescmonitor/Utils$APP_USE;->APP_UART:Lackmaniac/vescmonitor/Utils$APP_USE;

    .line 246
    new-instance v0, Lackmaniac/vescmonitor/Utils$APP_USE;

    const-string v1, "APP_PPM_UART"

    invoke-direct {v0, v1, v7}, Lackmaniac/vescmonitor/Utils$APP_USE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lackmaniac/vescmonitor/Utils$APP_USE;->APP_PPM_UART:Lackmaniac/vescmonitor/Utils$APP_USE;

    .line 247
    new-instance v0, Lackmaniac/vescmonitor/Utils$APP_USE;

    const-string v1, "APP_ADC_UART"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lackmaniac/vescmonitor/Utils$APP_USE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lackmaniac/vescmonitor/Utils$APP_USE;->APP_ADC_UART:Lackmaniac/vescmonitor/Utils$APP_USE;

    .line 248
    new-instance v0, Lackmaniac/vescmonitor/Utils$APP_USE;

    const-string v1, "APP_NUNCHUK"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lackmaniac/vescmonitor/Utils$APP_USE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lackmaniac/vescmonitor/Utils$APP_USE;->APP_NUNCHUK:Lackmaniac/vescmonitor/Utils$APP_USE;

    .line 249
    new-instance v0, Lackmaniac/vescmonitor/Utils$APP_USE;

    const-string v1, "APP_NRF"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lackmaniac/vescmonitor/Utils$APP_USE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lackmaniac/vescmonitor/Utils$APP_USE;->APP_NRF:Lackmaniac/vescmonitor/Utils$APP_USE;

    .line 250
    new-instance v0, Lackmaniac/vescmonitor/Utils$APP_USE;

    const-string v1, "APP_CUSTOM"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lackmaniac/vescmonitor/Utils$APP_USE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lackmaniac/vescmonitor/Utils$APP_USE;->APP_CUSTOM:Lackmaniac/vescmonitor/Utils$APP_USE;

    .line 241
    const/16 v0, 0x9

    new-array v0, v0, [Lackmaniac/vescmonitor/Utils$APP_USE;

    sget-object v1, Lackmaniac/vescmonitor/Utils$APP_USE;->APP_NONE:Lackmaniac/vescmonitor/Utils$APP_USE;

    aput-object v1, v0, v3

    sget-object v1, Lackmaniac/vescmonitor/Utils$APP_USE;->APP_PPM:Lackmaniac/vescmonitor/Utils$APP_USE;

    aput-object v1, v0, v4

    sget-object v1, Lackmaniac/vescmonitor/Utils$APP_USE;->APP_ADC:Lackmaniac/vescmonitor/Utils$APP_USE;

    aput-object v1, v0, v5

    sget-object v1, Lackmaniac/vescmonitor/Utils$APP_USE;->APP_UART:Lackmaniac/vescmonitor/Utils$APP_USE;

    aput-object v1, v0, v6

    sget-object v1, Lackmaniac/vescmonitor/Utils$APP_USE;->APP_PPM_UART:Lackmaniac/vescmonitor/Utils$APP_USE;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lackmaniac/vescmonitor/Utils$APP_USE;->APP_ADC_UART:Lackmaniac/vescmonitor/Utils$APP_USE;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lackmaniac/vescmonitor/Utils$APP_USE;->APP_NUNCHUK:Lackmaniac/vescmonitor/Utils$APP_USE;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lackmaniac/vescmonitor/Utils$APP_USE;->APP_NRF:Lackmaniac/vescmonitor/Utils$APP_USE;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lackmaniac/vescmonitor/Utils$APP_USE;->APP_CUSTOM:Lackmaniac/vescmonitor/Utils$APP_USE;

    aput-object v2, v0, v1

    sput-object v0, Lackmaniac/vescmonitor/Utils$APP_USE;->$VALUES:[Lackmaniac/vescmonitor/Utils$APP_USE;

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
    .line 241
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lackmaniac/vescmonitor/Utils$APP_USE;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 241
    const-class v0, Lackmaniac/vescmonitor/Utils$APP_USE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lackmaniac/vescmonitor/Utils$APP_USE;

    return-object v0
.end method

.method public static values()[Lackmaniac/vescmonitor/Utils$APP_USE;
    .locals 1

    .prologue
    .line 241
    sget-object v0, Lackmaniac/vescmonitor/Utils$APP_USE;->$VALUES:[Lackmaniac/vescmonitor/Utils$APP_USE;

    invoke-virtual {v0}, [Lackmaniac/vescmonitor/Utils$APP_USE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lackmaniac/vescmonitor/Utils$APP_USE;

    return-object v0
.end method
