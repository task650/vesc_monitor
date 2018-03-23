.class public abstract Lcom/androidplot/Plot;
.super Landroid/view/View;
.source "Plot.java"

# interfaces
.implements Lcom/androidplot/ui/Resizable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/androidplot/Plot$BufferedCanvas;,
        Lcom/androidplot/Plot$RenderMode;,
        Lcom/androidplot/Plot$BorderStyle;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<SeriesType::",
        "Lcom/androidplot/Series;",
        "FormatterType:",
        "Lcom/androidplot/ui/Formatter;",
        "RendererType:",
        "Lcom/androidplot/ui/SeriesRenderer;",
        "BundleType:",
        "Lcom/androidplot/ui/SeriesBundle",
        "<TSeriesType;TFormatterType;>;RegistryType:",
        "Lcom/androidplot/SeriesRegistry",
        "<TBundleType;TSeriesType;TFormatterType;>;>",
        "Landroid/view/View;",
        "Lcom/androidplot/ui/Resizable;"
    }
.end annotation


# static fields
.field private static final BASE_PACKAGE:Ljava/lang/String; = "com.androidplot."

.field private static final DEFAULT_TITLE_WIDGET_TEXT_SIZE_SP:I = 0xa

.field private static final TAG:Ljava/lang/String;

.field private static final XML_ATTR_PREFIX:Ljava/lang/String; = "androidplot"


# instance fields
.field private backgroundPaint:Landroid/graphics/Paint;

.field private borderPaint:Landroid/graphics/Paint;

.field private borderRadiusX:F

.field private borderRadiusY:F

.field private borderStyle:Lcom/androidplot/Plot$BorderStyle;

.field private boxModel:Lcom/androidplot/ui/BoxModel;

.field private displayDims:Lcom/androidplot/util/DisplayDimensions;

.field private isIdle:Z

.field private keepRunning:Z

.field private layoutManager:Lcom/androidplot/ui/LayoutManager;

.field private final listeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/androidplot/PlotListener;",
            ">;"
        }
    .end annotation
.end field

.field private final pingPong:Lcom/androidplot/Plot$BufferedCanvas;

.field private registry:Lcom/androidplot/SeriesRegistry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TRegistryType;"
        }
    .end annotation
.end field

.field private renderMode:Lcom/androidplot/Plot$RenderMode;

.field private final renderSynch:Ljava/lang/Object;

.field private renderThread:Ljava/lang/Thread;

.field private renderers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Class",
            "<+TRendererType;>;TRendererType;>;"
        }
    .end annotation
.end field

.field private title:Lcom/androidplot/ui/widget/TextLabelWidget;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    const-class v0, Lcom/androidplot/Plot;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/androidplot/Plot;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .local p0, "this":Lcom/androidplot/Plot;, "Lcom/androidplot/Plot<TSeriesType;TFormatterType;TRendererType;TBundleType;TRegistryType;>;"
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/high16 v1, 0x41700000    # 15.0f

    const/16 v2, 0x96

    .line 294
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 152
    new-instance v0, Lcom/androidplot/ui/BoxModel;

    invoke-direct {v0}, Lcom/androidplot/ui/BoxModel;-><init>()V

    iput-object v0, p0, Lcom/androidplot/Plot;->boxModel:Lcom/androidplot/ui/BoxModel;

    .line 155
    sget-object v0, Lcom/androidplot/Plot$BorderStyle;->NONE:Lcom/androidplot/Plot$BorderStyle;

    iput-object v0, p0, Lcom/androidplot/Plot;->borderStyle:Lcom/androidplot/Plot$BorderStyle;

    .line 156
    iput v1, p0, Lcom/androidplot/Plot;->borderRadiusX:F

    .line 157
    iput v1, p0, Lcom/androidplot/Plot;->borderRadiusY:F

    .line 162
    new-instance v0, Lcom/androidplot/util/DisplayDimensions;

    invoke-direct {v0}, Lcom/androidplot/util/DisplayDimensions;-><init>()V

    iput-object v0, p0, Lcom/androidplot/Plot;->displayDims:Lcom/androidplot/util/DisplayDimensions;

    .line 163
    sget-object v0, Lcom/androidplot/Plot$RenderMode;->USE_MAIN_THREAD:Lcom/androidplot/Plot$RenderMode;

    iput-object v0, p0, Lcom/androidplot/Plot;->renderMode:Lcom/androidplot/Plot$RenderMode;

    .line 164
    new-instance v0, Lcom/androidplot/Plot$BufferedCanvas;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/androidplot/Plot$BufferedCanvas;-><init>(Lcom/androidplot/Plot$1;)V

    iput-object v0, p0, Lcom/androidplot/Plot;->pingPong:Lcom/androidplot/Plot$BufferedCanvas;

    .line 167
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/androidplot/Plot;->renderSynch:Ljava/lang/Object;

    .line 175
    iput-boolean v3, p0, Lcom/androidplot/Plot;->keepRunning:Z

    .line 176
    iput-boolean v4, p0, Lcom/androidplot/Plot;->isIdle:Z

    .line 179
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/androidplot/Plot;->listeners:Ljava/util/ArrayList;

    .line 180
    invoke-virtual {p0}, Lcom/androidplot/Plot;->getRegistryInstance()Lcom/androidplot/SeriesRegistry;

    move-result-object v0

    iput-object v0, p0, Lcom/androidplot/Plot;->registry:Lcom/androidplot/SeriesRegistry;

    .line 181
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/androidplot/Plot;->renderers:Ljava/util/HashMap;

    .line 183
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/androidplot/Plot;->borderPaint:Landroid/graphics/Paint;

    .line 184
    iget-object v0, p0, Lcom/androidplot/Plot;->borderPaint:Landroid/graphics/Paint;

    invoke-static {v2, v2, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 185
    iget-object v0, p0, Lcom/androidplot/Plot;->borderPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 186
    iget-object v0, p0, Lcom/androidplot/Plot;->borderPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 187
    iget-object v0, p0, Lcom/androidplot/Plot;->borderPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 188
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/androidplot/Plot;->backgroundPaint:Landroid/graphics/Paint;

    .line 189
    iget-object v0, p0, Lcom/androidplot/Plot;->backgroundPaint:Landroid/graphics/Paint;

    const v1, -0xbbbbbc

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 190
    iget-object v0, p0, Lcom/androidplot/Plot;->backgroundPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 295
    invoke-virtual {p0, p1, p2, v3}, Lcom/androidplot/Plot;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 296
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .local p0, "this":Lcom/androidplot/Plot;, "Lcom/androidplot/Plot<TSeriesType;TFormatterType;TRendererType;TBundleType;TRegistryType;>;"
    const/4 v3, 0x1

    const/high16 v1, 0x41700000    # 15.0f

    const/16 v2, 0x96

    .line 315
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 152
    new-instance v0, Lcom/androidplot/ui/BoxModel;

    invoke-direct {v0}, Lcom/androidplot/ui/BoxModel;-><init>()V

    iput-object v0, p0, Lcom/androidplot/Plot;->boxModel:Lcom/androidplot/ui/BoxModel;

    .line 155
    sget-object v0, Lcom/androidplot/Plot$BorderStyle;->NONE:Lcom/androidplot/Plot$BorderStyle;

    iput-object v0, p0, Lcom/androidplot/Plot;->borderStyle:Lcom/androidplot/Plot$BorderStyle;

    .line 156
    iput v1, p0, Lcom/androidplot/Plot;->borderRadiusX:F

    .line 157
    iput v1, p0, Lcom/androidplot/Plot;->borderRadiusY:F

    .line 162
    new-instance v0, Lcom/androidplot/util/DisplayDimensions;

    invoke-direct {v0}, Lcom/androidplot/util/DisplayDimensions;-><init>()V

    iput-object v0, p0, Lcom/androidplot/Plot;->displayDims:Lcom/androidplot/util/DisplayDimensions;

    .line 163
    sget-object v0, Lcom/androidplot/Plot$RenderMode;->USE_MAIN_THREAD:Lcom/androidplot/Plot$RenderMode;

    iput-object v0, p0, Lcom/androidplot/Plot;->renderMode:Lcom/androidplot/Plot$RenderMode;

    .line 164
    new-instance v0, Lcom/androidplot/Plot$BufferedCanvas;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/androidplot/Plot$BufferedCanvas;-><init>(Lcom/androidplot/Plot$1;)V

    iput-object v0, p0, Lcom/androidplot/Plot;->pingPong:Lcom/androidplot/Plot$BufferedCanvas;

    .line 167
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/androidplot/Plot;->renderSynch:Ljava/lang/Object;

    .line 175
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/androidplot/Plot;->keepRunning:Z

    .line 176
    iput-boolean v3, p0, Lcom/androidplot/Plot;->isIdle:Z

    .line 179
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/androidplot/Plot;->listeners:Ljava/util/ArrayList;

    .line 180
    invoke-virtual {p0}, Lcom/androidplot/Plot;->getRegistryInstance()Lcom/androidplot/SeriesRegistry;

    move-result-object v0

    iput-object v0, p0, Lcom/androidplot/Plot;->registry:Lcom/androidplot/SeriesRegistry;

    .line 181
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/androidplot/Plot;->renderers:Ljava/util/HashMap;

    .line 183
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/androidplot/Plot;->borderPaint:Landroid/graphics/Paint;

    .line 184
    iget-object v0, p0, Lcom/androidplot/Plot;->borderPaint:Landroid/graphics/Paint;

    invoke-static {v2, v2, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 185
    iget-object v0, p0, Lcom/androidplot/Plot;->borderPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 186
    iget-object v0, p0, Lcom/androidplot/Plot;->borderPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 187
    iget-object v0, p0, Lcom/androidplot/Plot;->borderPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 188
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/androidplot/Plot;->backgroundPaint:Landroid/graphics/Paint;

    .line 189
    iget-object v0, p0, Lcom/androidplot/Plot;->backgroundPaint:Landroid/graphics/Paint;

    const v1, -0xbbbbbc

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 190
    iget-object v0, p0, Lcom/androidplot/Plot;->backgroundPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 316
    invoke-virtual {p0, p1, p2, p3}, Lcom/androidplot/Plot;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 317
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "title"    # Ljava/lang/String;

    .prologue
    .line 262
    .local p0, "this":Lcom/androidplot/Plot;, "Lcom/androidplot/Plot<TSeriesType;TFormatterType;TRendererType;TBundleType;TRegistryType;>;"
    sget-object v0, Lcom/androidplot/Plot$RenderMode;->USE_MAIN_THREAD:Lcom/androidplot/Plot$RenderMode;

    invoke-direct {p0, p1, p2, v0}, Lcom/androidplot/Plot;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/androidplot/Plot$RenderMode;)V

    .line 263
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/androidplot/Plot$RenderMode;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "mode"    # Lcom/androidplot/Plot$RenderMode;

    .prologue
    .local p0, "this":Lcom/androidplot/Plot;, "Lcom/androidplot/Plot<TSeriesType;TFormatterType;TRendererType;TBundleType;TRegistryType;>;"
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/high16 v2, 0x41700000    # 15.0f

    const/16 v1, 0x96

    .line 271
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 152
    new-instance v0, Lcom/androidplot/ui/BoxModel;

    invoke-direct {v0}, Lcom/androidplot/ui/BoxModel;-><init>()V

    iput-object v0, p0, Lcom/androidplot/Plot;->boxModel:Lcom/androidplot/ui/BoxModel;

    .line 155
    sget-object v0, Lcom/androidplot/Plot$BorderStyle;->NONE:Lcom/androidplot/Plot$BorderStyle;

    iput-object v0, p0, Lcom/androidplot/Plot;->borderStyle:Lcom/androidplot/Plot$BorderStyle;

    .line 156
    iput v2, p0, Lcom/androidplot/Plot;->borderRadiusX:F

    .line 157
    iput v2, p0, Lcom/androidplot/Plot;->borderRadiusY:F

    .line 162
    new-instance v0, Lcom/androidplot/util/DisplayDimensions;

    invoke-direct {v0}, Lcom/androidplot/util/DisplayDimensions;-><init>()V

    iput-object v0, p0, Lcom/androidplot/Plot;->displayDims:Lcom/androidplot/util/DisplayDimensions;

    .line 163
    sget-object v0, Lcom/androidplot/Plot$RenderMode;->USE_MAIN_THREAD:Lcom/androidplot/Plot$RenderMode;

    iput-object v0, p0, Lcom/androidplot/Plot;->renderMode:Lcom/androidplot/Plot$RenderMode;

    .line 164
    new-instance v0, Lcom/androidplot/Plot$BufferedCanvas;

    invoke-direct {v0, v5}, Lcom/androidplot/Plot$BufferedCanvas;-><init>(Lcom/androidplot/Plot$1;)V

    iput-object v0, p0, Lcom/androidplot/Plot;->pingPong:Lcom/androidplot/Plot$BufferedCanvas;

    .line 167
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/androidplot/Plot;->renderSynch:Ljava/lang/Object;

    .line 175
    iput-boolean v3, p0, Lcom/androidplot/Plot;->keepRunning:Z

    .line 176
    iput-boolean v4, p0, Lcom/androidplot/Plot;->isIdle:Z

    .line 179
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/androidplot/Plot;->listeners:Ljava/util/ArrayList;

    .line 180
    invoke-virtual {p0}, Lcom/androidplot/Plot;->getRegistryInstance()Lcom/androidplot/SeriesRegistry;

    move-result-object v0

    iput-object v0, p0, Lcom/androidplot/Plot;->registry:Lcom/androidplot/SeriesRegistry;

    .line 181
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/androidplot/Plot;->renderers:Ljava/util/HashMap;

    .line 183
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/androidplot/Plot;->borderPaint:Landroid/graphics/Paint;

    .line 184
    iget-object v0, p0, Lcom/androidplot/Plot;->borderPaint:Landroid/graphics/Paint;

    invoke-static {v1, v1, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 185
    iget-object v0, p0, Lcom/androidplot/Plot;->borderPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 186
    iget-object v0, p0, Lcom/androidplot/Plot;->borderPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 187
    iget-object v0, p0, Lcom/androidplot/Plot;->borderPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 188
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/androidplot/Plot;->backgroundPaint:Landroid/graphics/Paint;

    .line 189
    iget-object v0, p0, Lcom/androidplot/Plot;->backgroundPaint:Landroid/graphics/Paint;

    const v1, -0xbbbbbc

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 190
    iget-object v0, p0, Lcom/androidplot/Plot;->backgroundPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 272
    iput-object p3, p0, Lcom/androidplot/Plot;->renderMode:Lcom/androidplot/Plot$RenderMode;

    .line 273
    invoke-virtual {p0, p1, v5, v3}, Lcom/androidplot/Plot;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 274
    invoke-virtual {p0}, Lcom/androidplot/Plot;->getTitle()Lcom/androidplot/ui/widget/TextLabelWidget;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/androidplot/ui/widget/TextLabelWidget;->setText(Ljava/lang/String;)V

    .line 275
    return-void
.end method

.method static synthetic access$100(Lcom/androidplot/Plot;)Z
    .locals 1
    .param p0, "x0"    # Lcom/androidplot/Plot;

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/androidplot/Plot;->keepRunning:Z

    return v0
.end method

.method static synthetic access$102(Lcom/androidplot/Plot;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/androidplot/Plot;
    .param p1, "x1"    # Z

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/androidplot/Plot;->keepRunning:Z

    return p1
.end method

.method static synthetic access$202(Lcom/androidplot/Plot;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/androidplot/Plot;
    .param p1, "x1"    # Z

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/androidplot/Plot;->isIdle:Z

    return p1
.end method

.method static synthetic access$300(Lcom/androidplot/Plot;)Lcom/androidplot/Plot$BufferedCanvas;
    .locals 1
    .param p0, "x0"    # Lcom/androidplot/Plot;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/androidplot/Plot;->pingPong:Lcom/androidplot/Plot$BufferedCanvas;

    return-object v0
.end method

.method static synthetic access$400(Lcom/androidplot/Plot;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/androidplot/Plot;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/androidplot/Plot;->renderSynch:Ljava/lang/Object;

    return-object v0
.end method

.method private loadAttrs(Landroid/util/AttributeSet;I)V
    .locals 13
    .param p1, "attrs"    # Landroid/util/AttributeSet;
    .param p2, "defStyle"    # I

    .prologue
    .line 468
    .local p0, "this":Lcom/androidplot/Plot;, "Lcom/androidplot/Plot<TSeriesType;TFormatterType;TRendererType;TBundleType;TRegistryType;>;"
    if-eqz p1, :cond_7

    .line 470
    const/4 v7, 0x0

    .line 471
    .local v7, "styleableFieldInR":Ljava/lang/reflect/Field;
    const/4 v9, 0x0

    .line 473
    .local v9, "typedAttrs":Landroid/content/res/TypedArray;
    const-class v6, Lcom/androidplot/R$styleable;

    .line 474
    .local v6, "styleableClass":Ljava/lang/Class;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    const-string v11, "com.androidplot."

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    .line 475
    .local v8, "styleableName":Ljava/lang/String;
    const/16 v10, 0x2e

    const/16 v11, 0x5f

    invoke-virtual {v8, v10, v11}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v8

    .line 483
    :try_start_0
    invoke-virtual {v6, v8}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 487
    :goto_0
    if-eqz v7, :cond_0

    .line 489
    const/4 v10, 0x0

    :try_start_1
    invoke-virtual {v7, v10}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [I

    move-object v0, v10

    check-cast v0, [I

    move-object v5, v0

    .line 490
    .local v5, "resIds":[I
    invoke-virtual {p0}, Lcom/androidplot/Plot;->getContext()Landroid/content/Context;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, p1, v5, p2, v11}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v9

    .line 494
    if-eqz v9, :cond_0

    .line 496
    invoke-virtual {p0, v9}, Lcom/androidplot/Plot;->processAttrs(Landroid/content/res/TypedArray;)V

    .line 497
    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    .line 503
    .end local v5    # "resIds":[I
    :cond_0
    :goto_1
    :try_start_2
    const-class v10, Lcom/androidplot/Plot;

    invoke-virtual {v10}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v7

    .line 504
    if-eqz v7, :cond_1

    .line 505
    const/4 v10, 0x0

    invoke-virtual {v7, v10}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [I

    move-object v0, v10

    check-cast v0, [I

    move-object v5, v0

    .line 506
    .restart local v5    # "resIds":[I
    invoke-virtual {p0}, Lcom/androidplot/Plot;->getContext()Landroid/content/Context;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, p1, v5, p2, v11}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;
    :try_end_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/NoSuchFieldException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v9

    .line 513
    .end local v5    # "resIds":[I
    :cond_1
    if-eqz v9, :cond_2

    .line 515
    invoke-direct {p0, v9}, Lcom/androidplot/Plot;->processBaseAttrs(Landroid/content/res/TypedArray;)V

    .line 516
    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    .line 522
    :cond_2
    :goto_2
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 523
    .local v1, "attrHash":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_3
    invoke-interface {p1}, Landroid/util/AttributeSet;->getAttributeCount()I

    move-result v10

    if-ge v4, v10, :cond_6

    .line 524
    invoke-interface {p1, v4}, Landroid/util/AttributeSet;->getAttributeName(I)Ljava/lang/String;

    move-result-object v2

    .line 527
    .local v2, "attrName":Ljava/lang/String;
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v10

    const-string v11, "androidplot"

    invoke-virtual {v11}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 528
    const-string v10, "androidplot"

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v10, v10, 0x1

    invoke-virtual {v2, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {p1, v4}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 523
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 484
    .end local v1    # "attrHash":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "attrName":Ljava/lang/String;
    .end local v4    # "i":I
    :catch_0
    move-exception v3

    .line 485
    .local v3, "e":Ljava/lang/NoSuchFieldException;
    sget-object v10, Lcom/androidplot/Plot;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Styleable definition not found for: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 491
    .end local v3    # "e":Ljava/lang/NoSuchFieldException;
    :catch_1
    move-exception v10

    .line 494
    if-eqz v9, :cond_0

    .line 496
    invoke-virtual {p0, v9}, Lcom/androidplot/Plot;->processAttrs(Landroid/content/res/TypedArray;)V

    .line 497
    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    goto/16 :goto_1

    .line 494
    :catchall_0
    move-exception v10

    if-eqz v9, :cond_4

    .line 496
    invoke-virtual {p0, v9}, Lcom/androidplot/Plot;->processAttrs(Landroid/content/res/TypedArray;)V

    .line 497
    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    :cond_4
    throw v10

    .line 508
    :catch_2
    move-exception v10

    .line 513
    if-eqz v9, :cond_2

    .line 515
    invoke-direct {p0, v9}, Lcom/androidplot/Plot;->processBaseAttrs(Landroid/content/res/TypedArray;)V

    .line 516
    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_2

    .line 510
    :catch_3
    move-exception v3

    .line 511
    .restart local v3    # "e":Ljava/lang/NoSuchFieldException;
    :try_start_3
    sget-object v10, Lcom/androidplot/Plot;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Styleable definition not found for: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-class v12, Lcom/androidplot/Plot;

    invoke-virtual {v12}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 513
    if-eqz v9, :cond_2

    .line 515
    invoke-direct {p0, v9}, Lcom/androidplot/Plot;->processBaseAttrs(Landroid/content/res/TypedArray;)V

    .line 516
    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    goto/16 :goto_2

    .line 513
    .end local v3    # "e":Ljava/lang/NoSuchFieldException;
    :catchall_1
    move-exception v10

    if-eqz v9, :cond_5

    .line 515
    invoke-direct {p0, v9}, Lcom/androidplot/Plot;->processBaseAttrs(Landroid/content/res/TypedArray;)V

    .line 516
    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    :cond_5
    throw v10

    .line 531
    .restart local v1    # "attrHash":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v4    # "i":I
    :cond_6
    invoke-virtual {p0}, Lcom/androidplot/Plot;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10, p0, v1}, Lcom/halfhp/fig/Fig;->configure(Landroid/content/Context;Ljava/lang/Object;Ljava/util/HashMap;)V

    .line 533
    .end local v1    # "attrHash":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v4    # "i":I
    .end local v6    # "styleableClass":Ljava/lang/Class;
    .end local v7    # "styleableFieldInR":Ljava/lang/reflect/Field;
    .end local v8    # "styleableName":Ljava/lang/String;
    .end local v9    # "typedAttrs":Landroid/content/res/TypedArray;
    :cond_7
    return-void
.end method

.method private processBaseAttrs(Landroid/content/res/TypedArray;)V
    .locals 12
    .param p1, "attrs"    # Landroid/content/res/TypedArray;

    .prologue
    .line 427
    .local p0, "this":Lcom/androidplot/Plot;, "Lcom/androidplot/Plot<TSeriesType;TFormatterType;TRendererType;TBundleType;TRegistryType;>;"
    sget v0, Lcom/androidplot/R$styleable;->Plot_markupEnabled:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v10

    .line 428
    .local v10, "markupEnabled":Z
    invoke-virtual {p0, v10}, Lcom/androidplot/Plot;->setMarkupEnabled(Z)V

    .line 431
    invoke-static {}, Lcom/androidplot/Plot$RenderMode;->values()[Lcom/androidplot/Plot$RenderMode;

    move-result-object v0

    sget v1, Lcom/androidplot/R$styleable;->Plot_renderMode:I

    .line 432
    invoke-virtual {p0}, Lcom/androidplot/Plot;->getRenderMode()Lcom/androidplot/Plot$RenderMode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/androidplot/Plot$RenderMode;->ordinal()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    aget-object v11, v0, v1

    .line 433
    .local v11, "renderMode":Lcom/androidplot/Plot$RenderMode;
    invoke-virtual {p0}, Lcom/androidplot/Plot;->getRenderMode()Lcom/androidplot/Plot$RenderMode;

    move-result-object v0

    if-eq v11, v0, :cond_0

    .line 434
    invoke-virtual {p0, v11}, Lcom/androidplot/Plot;->setRenderMode(Lcom/androidplot/Plot$RenderMode;)V

    .line 438
    :cond_0
    iget-object v1, p0, Lcom/androidplot/Plot;->boxModel:Lcom/androidplot/ui/BoxModel;

    sget v2, Lcom/androidplot/R$styleable;->Plot_marginTop:I

    sget v3, Lcom/androidplot/R$styleable;->Plot_marginBottom:I

    sget v4, Lcom/androidplot/R$styleable;->Plot_marginLeft:I

    sget v5, Lcom/androidplot/R$styleable;->Plot_marginRight:I

    sget v6, Lcom/androidplot/R$styleable;->Plot_paddingTop:I

    sget v7, Lcom/androidplot/R$styleable;->Plot_paddingBottom:I

    sget v8, Lcom/androidplot/R$styleable;->Plot_paddingLeft:I

    sget v9, Lcom/androidplot/R$styleable;->Plot_paddingRight:I

    move-object v0, p1

    invoke-static/range {v0 .. v9}, Lcom/androidplot/util/AttrUtils;->configureBoxModelable(Landroid/content/res/TypedArray;Lcom/androidplot/ui/BoxModelable;IIIIIIII)V

    .line 443
    invoke-virtual {p0}, Lcom/androidplot/Plot;->getTitle()Lcom/androidplot/ui/widget/TextLabelWidget;

    move-result-object v0

    sget v1, Lcom/androidplot/R$styleable;->Plot_title:I

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/androidplot/ui/widget/TextLabelWidget;->setText(Ljava/lang/String;)V

    .line 444
    invoke-virtual {p0}, Lcom/androidplot/Plot;->getTitle()Lcom/androidplot/ui/widget/TextLabelWidget;

    move-result-object v0

    invoke-virtual {v0}, Lcom/androidplot/ui/widget/TextLabelWidget;->getLabelPaint()Landroid/graphics/Paint;

    move-result-object v0

    sget v1, Lcom/androidplot/R$styleable;->Plot_titleTextSize:I

    const/high16 v2, 0x41200000    # 10.0f

    .line 446
    invoke-static {v2}, Lcom/androidplot/util/PixelUtils;->spToPix(F)F

    move-result v2

    .line 445
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    .line 444
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 448
    invoke-virtual {p0}, Lcom/androidplot/Plot;->getTitle()Lcom/androidplot/ui/widget/TextLabelWidget;

    move-result-object v0

    invoke-virtual {v0}, Lcom/androidplot/ui/widget/TextLabelWidget;->getLabelPaint()Landroid/graphics/Paint;

    move-result-object v0

    sget v1, Lcom/androidplot/R$styleable;->Plot_titleTextColor:I

    .line 449
    invoke-virtual {p0}, Lcom/androidplot/Plot;->getTitle()Lcom/androidplot/ui/widget/TextLabelWidget;

    move-result-object v2

    invoke-virtual {v2}, Lcom/androidplot/ui/widget/TextLabelWidget;->getLabelPaint()Landroid/graphics/Paint;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Paint;->getColor()I

    move-result v2

    .line 448
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 451
    invoke-virtual {p0}, Lcom/androidplot/Plot;->getBackgroundPaint()Landroid/graphics/Paint;

    move-result-object v0

    sget v1, Lcom/androidplot/R$styleable;->Plot_backgroundColor:I

    .line 452
    invoke-virtual {p0}, Lcom/androidplot/Plot;->getBackgroundPaint()Landroid/graphics/Paint;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Paint;->getColor()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    .line 451
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 454
    invoke-virtual {p0}, Lcom/androidplot/Plot;->getBorderPaint()Landroid/graphics/Paint;

    move-result-object v0

    sget v1, Lcom/androidplot/R$styleable;->Plot_borderColor:I

    sget v2, Lcom/androidplot/R$styleable;->Plot_borderThickness:I

    invoke-static {p1, v0, v1, v2}, Lcom/androidplot/util/AttrUtils;->configureLinePaint(Landroid/content/res/TypedArray;Landroid/graphics/Paint;II)V

    .line 456
    return-void
.end method


# virtual methods
.method public declared-synchronized addListener(Lcom/androidplot/PlotListener;)Z
    .locals 1
    .param p1, "listener"    # Lcom/androidplot/PlotListener;

    .prologue
    .line 540
    .local p0, "this":Lcom/androidplot/Plot;, "Lcom/androidplot/Plot<TSeriesType;TFormatterType;TRendererType;TBundleType;TRegistryType;>;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/androidplot/Plot;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/androidplot/Plot;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized addSeries(Lcom/androidplot/Series;Lcom/androidplot/ui/Formatter;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TSeriesType;TFormatterType;)Z"
        }
    .end annotation

    .prologue
    .line 588
    .local p0, "this":Lcom/androidplot/Plot;, "Lcom/androidplot/Plot<TSeriesType;TFormatterType;TRendererType;TBundleType;TRegistryType;>;"
    .local p1, "series":Lcom/androidplot/Series;, "TSeriesType;"
    .local p2, "formatter":Lcom/androidplot/ui/Formatter;, "TFormatterType;"
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/androidplot/Plot;->getRegistry()Lcom/androidplot/SeriesRegistry;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/androidplot/SeriesRegistry;->add(Lcom/androidplot/Series;Lcom/androidplot/ui/Formatter;)Z

    move-result v0

    .line 589
    .local v0, "result":Z
    invoke-virtual {p0, p1, p2}, Lcom/androidplot/Plot;->attachSeries(Lcom/androidplot/Series;Lcom/androidplot/ui/Formatter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 590
    monitor-exit p0

    return v0

    .line 588
    .end local v0    # "result":Z
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public varargs declared-synchronized addSeries(Lcom/androidplot/ui/Formatter;[Lcom/androidplot/Series;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TFormatterType;[TSeriesType;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/androidplot/Plot;, "Lcom/androidplot/Plot<TSeriesType;TFormatterType;TRendererType;TBundleType;TRegistryType;>;"
    .local p1, "formatter":Lcom/androidplot/ui/Formatter;, "TFormatterType;"
    .local p2, "series":[Lcom/androidplot/Series;, "[TSeriesType;"
    const/4 v1, 0x0

    .line 573
    monitor-enter p0

    :try_start_0
    array-length v3, p2

    move v2, v1

    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v0, p2, v2

    .line 574
    .local v0, "s":Lcom/androidplot/Series;, "TSeriesType;"
    invoke-virtual {p0, v0, p1}, Lcom/androidplot/Plot;->addSeries(Lcom/androidplot/Series;Lcom/androidplot/ui/Formatter;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-nez v4, :cond_0

    .line 578
    .end local v0    # "s":Lcom/androidplot/Series;, "TSeriesType;"
    :goto_1
    monitor-exit p0

    return v1

    .line 573
    .restart local v0    # "s":Lcom/androidplot/Series;, "TSeriesType;"
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 578
    .end local v0    # "s":Lcom/androidplot/Series;, "TSeriesType;"
    :cond_1
    const/4 v1, 0x1

    goto :goto_1

    .line 573
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method protected attachSeries(Lcom/androidplot/Series;Lcom/androidplot/ui/Formatter;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TSeriesType;TFormatterType;)V"
        }
    .end annotation

    .prologue
    .line 595
    .local p0, "this":Lcom/androidplot/Plot;, "Lcom/androidplot/Plot<TSeriesType;TFormatterType;TRendererType;TBundleType;TRegistryType;>;"
    .local p1, "series":Lcom/androidplot/Series;, "TSeriesType;"
    .local p2, "formatter":Lcom/androidplot/ui/Formatter;, "TFormatterType;"
    invoke-virtual {p2}, Lcom/androidplot/ui/Formatter;->getRendererClass()Ljava/lang/Class;

    move-result-object v0

    .line 598
    .local v0, "rendererClass":Ljava/lang/Class;
    invoke-virtual {p0}, Lcom/androidplot/Plot;->getRenderers()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 599
    invoke-virtual {p0}, Lcom/androidplot/Plot;->getRenderers()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {p2, p0}, Lcom/androidplot/ui/Formatter;->getRendererInstance(Lcom/androidplot/Plot;)Lcom/androidplot/ui/SeriesRenderer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 603
    :cond_0
    instance-of v1, p1, Lcom/androidplot/PlotListener;

    if-eqz v1, :cond_1

    .line 604
    check-cast p1, Lcom/androidplot/PlotListener;

    .end local p1    # "series":Lcom/androidplot/Series;, "TSeriesType;"
    invoke-virtual {p0, p1}, Lcom/androidplot/Plot;->addListener(Lcom/androidplot/PlotListener;)Z

    .line 606
    :cond_1
    return-void
.end method

.method public clear()V
    .locals 3

    .prologue
    .line 669
    .local p0, "this":Lcom/androidplot/Plot;, "Lcom/androidplot/Plot<TSeriesType;TFormatterType;TRendererType;TBundleType;TRegistryType;>;"
    invoke-virtual {p0}, Lcom/androidplot/Plot;->getRegistry()Lcom/androidplot/SeriesRegistry;

    move-result-object v1

    invoke-virtual {v1}, Lcom/androidplot/SeriesRegistry;->getSeriesList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/androidplot/Series;

    .line 670
    .local v0, "series":Lcom/androidplot/Series;, "TSeriesType;"
    instance-of v2, v0, Lcom/androidplot/PlotListener;

    if-eqz v2, :cond_0

    .line 671
    check-cast v0, Lcom/androidplot/PlotListener;

    .end local v0    # "series":Lcom/androidplot/Series;, "TSeriesType;"
    invoke-virtual {p0, v0}, Lcom/androidplot/Plot;->removeListener(Lcom/androidplot/PlotListener;)Z

    goto :goto_0

    .line 674
    :cond_1
    invoke-virtual {p0}, Lcom/androidplot/Plot;->getRegistry()Lcom/androidplot/SeriesRegistry;

    move-result-object v1

    invoke-virtual {v1}, Lcom/androidplot/SeriesRegistry;->clear()V

    .line 675
    return-void
.end method

.method protected drawBackground(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "dims"    # Landroid/graphics/RectF;

    .prologue
    .line 870
    .local p0, "this":Lcom/androidplot/Plot;, "Lcom/androidplot/Plot<TSeriesType;TFormatterType;TRendererType;TBundleType;TRegistryType;>;"
    iget-object v0, p0, Lcom/androidplot/Plot;->backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, p1, p2, v0}, Lcom/androidplot/Plot;->drawRect(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 871
    return-void
.end method

.method protected drawBorder(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "dims"    # Landroid/graphics/RectF;

    .prologue
    .line 866
    .local p0, "this":Lcom/androidplot/Plot;, "Lcom/androidplot/Plot<TSeriesType;TFormatterType;TRendererType;TBundleType;TRegistryType;>;"
    iget-object v0, p0, Lcom/androidplot/Plot;->borderPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, p1, p2, v0}, Lcom/androidplot/Plot;->drawRect(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 867
    return-void
.end method

.method protected drawRect(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "dims"    # Landroid/graphics/RectF;
    .param p3, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 874
    .local p0, "this":Lcom/androidplot/Plot;, "Lcom/androidplot/Plot<TSeriesType;TFormatterType;TRendererType;TBundleType;TRegistryType;>;"
    sget-object v0, Lcom/androidplot/Plot$2;->$SwitchMap$com$androidplot$Plot$BorderStyle:[I

    iget-object v1, p0, Lcom/androidplot/Plot;->borderStyle:Lcom/androidplot/Plot$BorderStyle;

    invoke-virtual {v1}, Lcom/androidplot/Plot$BorderStyle;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 880
    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 883
    :goto_0
    return-void

    .line 876
    :pswitch_0
    iget v0, p0, Lcom/androidplot/Plot;->borderRadiusX:F

    iget v1, p0, Lcom/androidplot/Plot;->borderRadiusY:F

    invoke-virtual {p1, p2, v0, v1, p3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 874
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public getBackgroundPaint()Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 894
    .local p0, "this":Lcom/androidplot/Plot;, "Lcom/androidplot/Plot<TSeriesType;TFormatterType;TRendererType;TBundleType;TRegistryType;>;"
    iget-object v0, p0, Lcom/androidplot/Plot;->backgroundPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public getBorderPaint()Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 994
    .local p0, "this":Lcom/androidplot/Plot;, "Lcom/androidplot/Plot<TSeriesType;TFormatterType;TRendererType;TBundleType;TRegistryType;>;"
    iget-object v0, p0, Lcom/androidplot/Plot;->borderPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public getDisplayDimensions()Lcom/androidplot/util/DisplayDimensions;
    .locals 1

    .prologue
    .line 57
    .local p0, "this":Lcom/androidplot/Plot;, "Lcom/androidplot/Plot<TSeriesType;TFormatterType;TRendererType;TBundleType;TRegistryType;>;"
    iget-object v0, p0, Lcom/androidplot/Plot;->displayDims:Lcom/androidplot/util/DisplayDimensions;

    return-object v0
.end method

.method public getFormatter(Lcom/androidplot/Series;Ljava/lang/Class;)Lcom/androidplot/ui/Formatter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TSeriesType;",
            "Ljava/lang/Class",
            "<+TRendererType;>;)TFormatterType;"
        }
    .end annotation

    .prologue
    .line 688
    .local p0, "this":Lcom/androidplot/Plot;, "Lcom/androidplot/Plot<TSeriesType;TFormatterType;TRendererType;TBundleType;TRegistryType;>;"
    .local p1, "series":Lcom/androidplot/Series;, "TSeriesType;"
    .local p2, "rendererClass":Ljava/lang/Class;, "Ljava/lang/Class<+TRendererType;>;"
    invoke-virtual {p0, p1, p2}, Lcom/androidplot/Plot;->getSeries(Lcom/androidplot/Series;Ljava/lang/Class;)Lcom/androidplot/ui/SeriesBundle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/androidplot/ui/SeriesBundle;->getFormatter()Lcom/androidplot/ui/Formatter;

    move-result-object v0

    return-object v0
.end method

.method public getLayoutManager()Lcom/androidplot/ui/LayoutManager;
    .locals 1

    .prologue
    .line 886
    .local p0, "this":Lcom/androidplot/Plot;, "Lcom/androidplot/Plot<TSeriesType;TFormatterType;TRendererType;TBundleType;TRegistryType;>;"
    iget-object v0, p0, Lcom/androidplot/Plot;->layoutManager:Lcom/androidplot/ui/LayoutManager;

    return-object v0
.end method

.method protected getListeners()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/androidplot/PlotListener;",
            ">;"
        }
    .end annotation

    .prologue
    .line 548
    .local p0, "this":Lcom/androidplot/Plot;, "Lcom/androidplot/Plot<TSeriesType;TFormatterType;TRendererType;TBundleType;TRegistryType;>;"
    iget-object v0, p0, Lcom/androidplot/Plot;->listeners:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getPlotMarginBottom()F
    .locals 1

    .prologue
    .line 938
    .local p0, "this":Lcom/androidplot/Plot;, "Lcom/androidplot/Plot<TSeriesType;TFormatterType;TRendererType;TBundleType;TRegistryType;>;"
    iget-object v0, p0, Lcom/androidplot/Plot;->boxModel:Lcom/androidplot/ui/BoxModel;

    invoke-virtual {v0}, Lcom/androidplot/ui/BoxModel;->getMarginBottom()F

    move-result v0

    return v0
.end method

.method public getPlotMarginLeft()F
    .locals 1

    .prologue
    .line 946
    .local p0, "this":Lcom/androidplot/Plot;, "Lcom/androidplot/Plot<TSeriesType;TFormatterType;TRendererType;TBundleType;TRegistryType;>;"
    iget-object v0, p0, Lcom/androidplot/Plot;->boxModel:Lcom/androidplot/ui/BoxModel;

    invoke-virtual {v0}, Lcom/androidplot/ui/BoxModel;->getMarginLeft()F

    move-result v0

    return v0
.end method

.method public getPlotMarginRight()F
    .locals 1

    .prologue
    .line 954
    .local p0, "this":Lcom/androidplot/Plot;, "Lcom/androidplot/Plot<TSeriesType;TFormatterType;TRendererType;TBundleType;TRegistryType;>;"
    iget-object v0, p0, Lcom/androidplot/Plot;->boxModel:Lcom/androidplot/ui/BoxModel;

    invoke-virtual {v0}, Lcom/androidplot/ui/BoxModel;->getMarginRight()F

    move-result v0

    return v0
.end method

.method public getPlotMarginTop()F
    .locals 1

    .prologue
    .line 930
    .local p0, "this":Lcom/androidplot/Plot;, "Lcom/androidplot/Plot<TSeriesType;TFormatterType;TRendererType;TBundleType;TRegistryType;>;"
    iget-object v0, p0, Lcom/androidplot/Plot;->boxModel:Lcom/androidplot/ui/BoxModel;

    invoke-virtual {v0}, Lcom/androidplot/ui/BoxModel;->getMarginTop()F

    move-result v0

    return v0
.end method

.method public getPlotPaddingBottom()F
    .locals 1

    .prologue
    .line 970
    .local p0, "this":Lcom/androidplot/Plot;, "Lcom/androidplot/Plot<TSeriesType;TFormatterType;TRendererType;TBundleType;TRegistryType;>;"
    iget-object v0, p0, Lcom/androidplot/Plot;->boxModel:Lcom/androidplot/ui/BoxModel;

    invoke-virtual {v0}, Lcom/androidplot/ui/BoxModel;->getPaddingBottom()F

    move-result v0

    return v0
.end method

.method public getPlotPaddingLeft()F
    .locals 1

    .prologue
    .line 978
    .local p0, "this":Lcom/androidplot/Plot;, "Lcom/androidplot/Plot<TSeriesType;TFormatterType;TRendererType;TBundleType;TRegistryType;>;"
    iget-object v0, p0, Lcom/androidplot/Plot;->boxModel:Lcom/androidplot/ui/BoxModel;

    invoke-virtual {v0}, Lcom/androidplot/ui/BoxModel;->getPaddingLeft()F

    move-result v0

    return v0
.end method

.method public getPlotPaddingRight()F
    .locals 1

    .prologue
    .line 986
    .local p0, "this":Lcom/androidplot/Plot;, "Lcom/androidplot/Plot<TSeriesType;TFormatterType;TRendererType;TBundleType;TRegistryType;>;"
    iget-object v0, p0, Lcom/androidplot/Plot;->boxModel:Lcom/androidplot/ui/BoxModel;

    invoke-virtual {v0}, Lcom/androidplot/ui/BoxModel;->getPaddingRight()F

    move-result v0

    return v0
.end method

.method public getPlotPaddingTop()F
    .locals 1

    .prologue
    .line 962
    .local p0, "this":Lcom/androidplot/Plot;, "Lcom/androidplot/Plot<TSeriesType;TFormatterType;TRendererType;TBundleType;TRegistryType;>;"
    iget-object v0, p0, Lcom/androidplot/Plot;->boxModel:Lcom/androidplot/ui/BoxModel;

    invoke-virtual {v0}, Lcom/androidplot/ui/BoxModel;->getPaddingTop()F

    move-result v0

    return v0
.end method

.method public getRegistry()Lcom/androidplot/SeriesRegistry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TRegistryType;"
        }
    .end annotation

    .prologue
    .line 72
    .local p0, "this":Lcom/androidplot/Plot;, "Lcom/androidplot/Plot<TSeriesType;TFormatterType;TRendererType;TBundleType;TRegistryType;>;"
    iget-object v0, p0, Lcom/androidplot/Plot;->registry:Lcom/androidplot/SeriesRegistry;

    return-object v0
.end method

.method protected abstract getRegistryInstance()Lcom/androidplot/SeriesRegistry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TRegistryType;"
        }
    .end annotation
.end method

.method public getRenderMode()Lcom/androidplot/Plot$RenderMode;
    .locals 1

    .prologue
    .line 536
    .local p0, "this":Lcom/androidplot/Plot;, "Lcom/androidplot/Plot<TSeriesType;TFormatterType;TRendererType;TBundleType;TRegistryType;>;"
    iget-object v0, p0, Lcom/androidplot/Plot;->renderMode:Lcom/androidplot/Plot$RenderMode;

    return-object v0
.end method

.method public getRenderer(Ljava/lang/Class;)Lcom/androidplot/ui/SeriesRenderer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:TRendererType;>(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 692
    .local p0, "this":Lcom/androidplot/Plot;, "Lcom/androidplot/Plot<TSeriesType;TFormatterType;TRendererType;TBundleType;TRegistryType;>;"
    .local p1, "rendererClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0}, Lcom/androidplot/Plot;->getRenderers()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/androidplot/ui/SeriesRenderer;

    return-object v0
.end method

.method public getRendererList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TRendererType;>;"
        }
    .end annotation

    .prologue
    .line 696
    .local p0, "this":Lcom/androidplot/Plot;, "Lcom/androidplot/Plot<TSeriesType;TFormatterType;TRendererType;TBundleType;TRegistryType;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/androidplot/Plot;->getRenderers()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getRenderers()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Class",
            "<+TRendererType;>;TRendererType;>;"
        }
    .end annotation

    .prologue
    .line 65
    .local p0, "this":Lcom/androidplot/Plot;, "Lcom/androidplot/Plot<TSeriesType;TFormatterType;TRendererType;TBundleType;TRegistryType;>;"
    iget-object v0, p0, Lcom/androidplot/Plot;->renderers:Ljava/util/HashMap;

    return-object v0
.end method

.method protected getSeries(Lcom/androidplot/Series;Ljava/lang/Class;)Lcom/androidplot/ui/SeriesBundle;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TSeriesType;",
            "Ljava/lang/Class",
            "<+TRendererType;>;)",
            "Lcom/androidplot/ui/SeriesBundle",
            "<TSeriesType;TFormatterType;>;"
        }
    .end annotation

    .prologue
    .line 615
    .local p0, "this":Lcom/androidplot/Plot;, "Lcom/androidplot/Plot<TSeriesType;TFormatterType;TRendererType;TBundleType;TRegistryType;>;"
    .local p1, "series":Lcom/androidplot/Series;, "TSeriesType;"
    .local p2, "rendererClass":Ljava/lang/Class;, "Ljava/lang/Class<+TRendererType;>;"
    invoke-virtual {p0, p1}, Lcom/androidplot/Plot;->getSeries(Lcom/androidplot/Series;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/androidplot/ui/SeriesBundle;

    .line 616
    .local v0, "thisPair":Lcom/androidplot/ui/SeriesBundle;, "Lcom/androidplot/ui/SeriesBundle<TSeriesType;TFormatterType;>;"
    invoke-virtual {v0}, Lcom/androidplot/ui/SeriesBundle;->getFormatter()Lcom/androidplot/ui/Formatter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/androidplot/ui/Formatter;->getRendererClass()Ljava/lang/Class;

    move-result-object v2

    if-ne v2, p2, :cond_0

    .line 620
    .end local v0    # "thisPair":Lcom/androidplot/ui/SeriesBundle;, "Lcom/androidplot/ui/SeriesBundle<TSeriesType;TFormatterType;>;"
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getSeries(Lcom/androidplot/Series;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TSeriesType;)",
            "Ljava/util/List",
            "<",
            "Lcom/androidplot/ui/SeriesBundle",
            "<TSeriesType;TFormatterType;>;>;"
        }
    .end annotation

    .prologue
    .line 629
    .local p0, "this":Lcom/androidplot/Plot;, "Lcom/androidplot/Plot<TSeriesType;TFormatterType;TRendererType;TBundleType;TRegistryType;>;"
    .local p1, "series":Lcom/androidplot/Series;, "TSeriesType;"
    invoke-virtual {p0}, Lcom/androidplot/Plot;->getRegistry()Lcom/androidplot/SeriesRegistry;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/androidplot/SeriesRegistry;->get(Lcom/androidplot/Series;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Lcom/androidplot/ui/widget/TextLabelWidget;
    .locals 1

    .prologue
    .line 89
    .local p0, "this":Lcom/androidplot/Plot;, "Lcom/androidplot/Plot<TSeriesType;TFormatterType;TRendererType;TBundleType;TRegistryType;>;"
    iget-object v0, p0, Lcom/androidplot/Plot;->title:Lcom/androidplot/ui/widget/TextLabelWidget;

    return-object v0
.end method

.method protected final init(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .local p0, "this":Lcom/androidplot/Plot;, "Lcom/androidplot/Plot<TSeriesType;TFormatterType;TRendererType;TBundleType;TRegistryType;>;"
    const/4 v1, 0x0

    .line 357
    invoke-static {p1}, Lcom/androidplot/util/PixelUtils;->init(Landroid/content/Context;)V

    .line 358
    new-instance v0, Lcom/androidplot/ui/LayoutManager;

    invoke-direct {v0}, Lcom/androidplot/ui/LayoutManager;-><init>()V

    iput-object v0, p0, Lcom/androidplot/Plot;->layoutManager:Lcom/androidplot/ui/LayoutManager;

    .line 359
    new-instance v0, Lcom/androidplot/ui/widget/TextLabelWidget;

    iget-object v2, p0, Lcom/androidplot/Plot;->layoutManager:Lcom/androidplot/ui/LayoutManager;

    new-instance v3, Lcom/androidplot/ui/Size;

    const/high16 v4, 0x41c80000    # 25.0f

    sget-object v5, Lcom/androidplot/ui/SizeMode;->ABSOLUTE:Lcom/androidplot/ui/SizeMode;

    const/high16 v6, 0x42c80000    # 100.0f

    sget-object v7, Lcom/androidplot/ui/SizeMode;->ABSOLUTE:Lcom/androidplot/ui/SizeMode;

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/androidplot/ui/Size;-><init>(FLcom/androidplot/ui/SizeMode;FLcom/androidplot/ui/SizeMode;)V

    sget-object v4, Lcom/androidplot/ui/TextOrientation;->HORIZONTAL:Lcom/androidplot/ui/TextOrientation;

    invoke-direct {v0, v2, v3, v4}, Lcom/androidplot/ui/widget/TextLabelWidget;-><init>(Lcom/androidplot/ui/LayoutManager;Lcom/androidplot/ui/Size;Lcom/androidplot/ui/TextOrientation;)V

    iput-object v0, p0, Lcom/androidplot/Plot;->title:Lcom/androidplot/ui/widget/TextLabelWidget;

    .line 363
    iget-object v0, p0, Lcom/androidplot/Plot;->title:Lcom/androidplot/ui/widget/TextLabelWidget;

    sget-object v2, Lcom/androidplot/ui/HorizontalPositioning;->RELATIVE_TO_CENTER:Lcom/androidplot/ui/HorizontalPositioning;

    sget-object v4, Lcom/androidplot/ui/VerticalPositioning;->ABSOLUTE_FROM_TOP:Lcom/androidplot/ui/VerticalPositioning;

    sget-object v5, Lcom/androidplot/ui/Anchor;->TOP_MIDDLE:Lcom/androidplot/ui/Anchor;

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Lcom/androidplot/ui/widget/TextLabelWidget;->position(FLcom/androidplot/ui/HorizontalPositioning;FLcom/androidplot/ui/VerticalPositioning;Lcom/androidplot/ui/Anchor;)V

    .line 367
    iget-object v0, p0, Lcom/androidplot/Plot;->title:Lcom/androidplot/ui/widget/TextLabelWidget;

    invoke-virtual {v0}, Lcom/androidplot/ui/widget/TextLabelWidget;->getLabelPaint()Landroid/graphics/Paint;

    move-result-object v0

    const/high16 v1, 0x41200000    # 10.0f

    .line 368
    invoke-static {v1}, Lcom/androidplot/util/PixelUtils;->spToPix(F)F

    move-result v1

    .line 367
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 370
    invoke-virtual {p0}, Lcom/androidplot/Plot;->onPreInit()V

    .line 372
    iget-object v0, p0, Lcom/androidplot/Plot;->layoutManager:Lcom/androidplot/ui/LayoutManager;

    iget-object v1, p0, Lcom/androidplot/Plot;->title:Lcom/androidplot/ui/widget/TextLabelWidget;

    invoke-virtual {v0, v1}, Lcom/androidplot/ui/LayoutManager;->moveToTop(Ljava/lang/Object;)Z

    .line 373
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 374
    invoke-direct {p0, p2, p3}, Lcom/androidplot/Plot;->loadAttrs(Landroid/util/AttributeSet;I)V

    .line 377
    :cond_0
    invoke-virtual {p0}, Lcom/androidplot/Plot;->onAfterConfig()V

    .line 379
    iget-object v0, p0, Lcom/androidplot/Plot;->layoutManager:Lcom/androidplot/ui/LayoutManager;

    invoke-virtual {v0}, Lcom/androidplot/ui/LayoutManager;->onPostInit()V

    .line 380
    iget-object v0, p0, Lcom/androidplot/Plot;->renderMode:Lcom/androidplot/Plot$RenderMode;

    sget-object v1, Lcom/androidplot/Plot$RenderMode;->USE_BACKGROUND_THREAD:Lcom/androidplot/Plot$RenderMode;

    if-ne v0, v1, :cond_1

    .line 381
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/androidplot/Plot$1;

    invoke-direct {v1, p0}, Lcom/androidplot/Plot$1;-><init>(Lcom/androidplot/Plot;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/androidplot/Plot;->renderThread:Ljava/lang/Thread;

    .line 410
    :cond_1
    return-void
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 678
    .local p0, "this":Lcom/androidplot/Plot;, "Lcom/androidplot/Plot<TSeriesType;TFormatterType;TRendererType;TBundleType;TRegistryType;>;"
    invoke-virtual {p0}, Lcom/androidplot/Plot;->getRegistry()Lcom/androidplot/SeriesRegistry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/androidplot/SeriesRegistry;->isEmpty()Z

    move-result v0

    return v0
.end method

.method protected isHwAccelerationSupported()Z
    .locals 1

    .prologue
    .line 327
    .local p0, "this":Lcom/androidplot/Plot;, "Lcom/androidplot/Plot<TSeriesType;TFormatterType;TRendererType;TBundleType;TRegistryType;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public declared-synchronized layout(Lcom/androidplot/util/DisplayDimensions;)V
    .locals 2
    .param p1, "dims"    # Lcom/androidplot/util/DisplayDimensions;

    .prologue
    .line 734
    .local p0, "this":Lcom/androidplot/Plot;, "Lcom/androidplot/Plot<TSeriesType;TFormatterType;TRendererType;TBundleType;TRegistryType;>;"
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/androidplot/Plot;->displayDims:Lcom/androidplot/util/DisplayDimensions;

    .line 735
    iget-object v0, p0, Lcom/androidplot/Plot;->layoutManager:Lcom/androidplot/ui/LayoutManager;

    iget-object v1, p0, Lcom/androidplot/Plot;->displayDims:Lcom/androidplot/util/DisplayDimensions;

    invoke-virtual {v0, v1}, Lcom/androidplot/ui/LayoutManager;->layout(Lcom/androidplot/util/DisplayDimensions;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 736
    monitor-exit p0

    return-void

    .line 734
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected notifyListenersAfterDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 558
    .local p0, "this":Lcom/androidplot/Plot;, "Lcom/androidplot/Plot<TSeriesType;TFormatterType;TRendererType;TBundleType;TRegistryType;>;"
    iget-object v1, p0, Lcom/androidplot/Plot;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/androidplot/PlotListener;

    .line 559
    .local v0, "listener":Lcom/androidplot/PlotListener;
    invoke-interface {v0, p0, p1}, Lcom/androidplot/PlotListener;->onAfterDraw(Lcom/androidplot/Plot;Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 561
    .end local v0    # "listener":Lcom/androidplot/PlotListener;
    :cond_0
    return-void
.end method

.method protected notifyListenersBeforeDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 552
    .local p0, "this":Lcom/androidplot/Plot;, "Lcom/androidplot/Plot<TSeriesType;TFormatterType;TRendererType;TBundleType;TRegistryType;>;"
    iget-object v1, p0, Lcom/androidplot/Plot;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/androidplot/PlotListener;

    .line 553
    .local v0, "listener":Lcom/androidplot/PlotListener;
    invoke-interface {v0, p0, p1}, Lcom/androidplot/PlotListener;->onBeforeDraw(Lcom/androidplot/Plot;Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 555
    .end local v0    # "listener":Lcom/androidplot/PlotListener;
    :cond_0
    return-void
.end method

.method protected onAfterConfig()V
    .locals 0

    .prologue
    .line 354
    .local p0, "this":Lcom/androidplot/Plot;, "Lcom/androidplot/Plot<TSeriesType;TFormatterType;TRendererType;TBundleType;TRegistryType;>;"
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 740
    .local p0, "this":Lcom/androidplot/Plot;, "Lcom/androidplot/Plot<TSeriesType;TFormatterType;TRendererType;TBundleType;TRegistryType;>;"
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 741
    iget-object v1, p0, Lcom/androidplot/Plot;->renderSynch:Ljava/lang/Object;

    monitor-enter v1

    .line 742
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/androidplot/Plot;->keepRunning:Z

    .line 743
    iget-object v0, p0, Lcom/androidplot/Plot;->renderSynch:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 744
    monitor-exit v1

    .line 745
    return-void

    .line 744
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 786
    .local p0, "this":Lcom/androidplot/Plot;, "Lcom/androidplot/Plot<TSeriesType;TFormatterType;TRendererType;TBundleType;TRegistryType;>;"
    iget-object v1, p0, Lcom/androidplot/Plot;->renderMode:Lcom/androidplot/Plot$RenderMode;

    sget-object v2, Lcom/androidplot/Plot$RenderMode;->USE_BACKGROUND_THREAD:Lcom/androidplot/Plot$RenderMode;

    if-ne v1, v2, :cond_1

    .line 787
    iget-object v2, p0, Lcom/androidplot/Plot;->pingPong:Lcom/androidplot/Plot$BufferedCanvas;

    monitor-enter v2

    .line 788
    :try_start_0
    iget-object v1, p0, Lcom/androidplot/Plot;->pingPong:Lcom/androidplot/Plot$BufferedCanvas;

    invoke-virtual {v1}, Lcom/androidplot/Plot$BufferedCanvas;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 789
    .local v0, "bmp":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 790
    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p1, v0, v1, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 792
    :cond_0
    monitor-exit v2

    .line 798
    .end local v0    # "bmp":Landroid/graphics/Bitmap;
    :goto_0
    return-void

    .line 792
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 793
    :cond_1
    iget-object v1, p0, Lcom/androidplot/Plot;->renderMode:Lcom/androidplot/Plot$RenderMode;

    sget-object v2, Lcom/androidplot/Plot$RenderMode;->USE_MAIN_THREAD:Lcom/androidplot/Plot$RenderMode;

    if-ne v1, v2, :cond_2

    .line 794
    invoke-virtual {p0, p1}, Lcom/androidplot/Plot;->renderOnCanvas(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 796
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported Render Mode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/androidplot/Plot;->renderMode:Lcom/androidplot/Plot$RenderMode;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected onPreInit()V
    .locals 0

    .prologue
    .line 347
    .local p0, "this":Lcom/androidplot/Plot;, "Lcom/androidplot/Plot<TSeriesType;TFormatterType;TRendererType;TBundleType;TRegistryType;>;"
    return-void
.end method

.method protected declared-synchronized onSizeChanged(IIII)V
    .locals 7
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 752
    .local p0, "this":Lcom/androidplot/Plot;, "Lcom/androidplot/Plot<TSeriesType;TFormatterType;TRendererType;TBundleType;TRegistryType;>;"
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/androidplot/Plot;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/androidplot/util/PixelUtils;->init(Landroid/content/Context;)V

    .line 757
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xb

    if-lt v3, v4, :cond_0

    .line 758
    invoke-virtual {p0}, Lcom/androidplot/Plot;->isHwAccelerationSupported()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p0}, Lcom/androidplot/Plot;->isHardwareAccelerated()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 759
    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lcom/androidplot/Plot;->setLayerType(ILandroid/graphics/Paint;)V

    .line 764
    :cond_0
    iget-object v3, p0, Lcom/androidplot/Plot;->renderMode:Lcom/androidplot/Plot$RenderMode;

    sget-object v4, Lcom/androidplot/Plot$RenderMode;->USE_BACKGROUND_THREAD:Lcom/androidplot/Plot$RenderMode;

    if-ne v3, v4, :cond_1

    .line 765
    iget-object v3, p0, Lcom/androidplot/Plot;->pingPong:Lcom/androidplot/Plot$BufferedCanvas;

    invoke-virtual {v3, p2, p1}, Lcom/androidplot/Plot$BufferedCanvas;->resize(II)V

    .line 768
    :cond_1
    new-instance v0, Landroid/graphics/RectF;

    const/4 v3, 0x0

    const/4 v4, 0x0

    int-to-float v5, p1

    int-to-float v6, p2

    invoke-direct {v0, v3, v4, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 769
    .local v0, "cRect":Landroid/graphics/RectF;
    iget-object v3, p0, Lcom/androidplot/Plot;->boxModel:Lcom/androidplot/ui/BoxModel;

    invoke-virtual {v3, v0}, Lcom/androidplot/ui/BoxModel;->getMarginatedRect(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v1

    .line 770
    .local v1, "mRect":Landroid/graphics/RectF;
    iget-object v3, p0, Lcom/androidplot/Plot;->boxModel:Lcom/androidplot/ui/BoxModel;

    invoke-virtual {v3, v1}, Lcom/androidplot/ui/BoxModel;->getPaddedRect(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v2

    .line 772
    .local v2, "pRect":Landroid/graphics/RectF;
    new-instance v3, Lcom/androidplot/util/DisplayDimensions;

    invoke-direct {v3, v0, v1, v2}, Lcom/androidplot/util/DisplayDimensions;-><init>(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    invoke-virtual {p0, v3}, Lcom/androidplot/Plot;->layout(Lcom/androidplot/util/DisplayDimensions;)V

    .line 773
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 774
    iget-object v3, p0, Lcom/androidplot/Plot;->renderThread:Ljava/lang/Thread;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/androidplot/Plot;->renderThread:Ljava/lang/Thread;

    invoke-virtual {v3}, Ljava/lang/Thread;->isAlive()Z

    move-result v3

    if-nez v3, :cond_2

    .line 775
    iget-object v3, p0, Lcom/androidplot/Plot;->renderThread:Ljava/lang/Thread;

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 777
    :cond_2
    monitor-exit p0

    return-void

    .line 752
    .end local v0    # "cRect":Landroid/graphics/RectF;
    .end local v1    # "mRect":Landroid/graphics/RectF;
    .end local v2    # "pRect":Landroid/graphics/RectF;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method protected abstract processAttrs(Landroid/content/res/TypedArray;)V
.end method

.method public redraw()V
    .locals 3

    .prologue
    .line 709
    .local p0, "this":Lcom/androidplot/Plot;, "Lcom/androidplot/Plot<TSeriesType;TFormatterType;TRendererType;TBundleType;TRegistryType;>;"
    iget-object v0, p0, Lcom/androidplot/Plot;->renderMode:Lcom/androidplot/Plot$RenderMode;

    sget-object v1, Lcom/androidplot/Plot$RenderMode;->USE_BACKGROUND_THREAD:Lcom/androidplot/Plot$RenderMode;

    if-ne v0, v1, :cond_1

    .line 714
    iget-boolean v0, p0, Lcom/androidplot/Plot;->isIdle:Z

    if-eqz v0, :cond_0

    .line 715
    iget-object v1, p0, Lcom/androidplot/Plot;->renderSynch:Ljava/lang/Object;

    monitor-enter v1

    .line 716
    :try_start_0
    iget-object v0, p0, Lcom/androidplot/Plot;->renderSynch:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 717
    monitor-exit v1

    .line 730
    :cond_0
    :goto_0
    return-void

    .line 717
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 719
    :cond_1
    iget-object v0, p0, Lcom/androidplot/Plot;->renderMode:Lcom/androidplot/Plot$RenderMode;

    sget-object v1, Lcom/androidplot/Plot$RenderMode;->USE_MAIN_THREAD:Lcom/androidplot/Plot$RenderMode;

    if-ne v0, v1, :cond_3

    .line 722
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_2

    .line 723
    invoke-virtual {p0}, Lcom/androidplot/Plot;->invalidate()V

    goto :goto_0

    .line 725
    :cond_2
    invoke-virtual {p0}, Lcom/androidplot/Plot;->postInvalidate()V

    goto :goto_0

    .line 728
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported Render Mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/androidplot/Plot;->renderMode:Lcom/androidplot/Plot$RenderMode;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public declared-synchronized removeListener(Lcom/androidplot/PlotListener;)Z
    .locals 1
    .param p1, "listener"    # Lcom/androidplot/PlotListener;

    .prologue
    .line 544
    .local p0, "this":Lcom/androidplot/Plot;, "Lcom/androidplot/Plot<TSeriesType;TFormatterType;TRendererType;TBundleType;TRegistryType;>;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/androidplot/Plot;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized removeSeries(Lcom/androidplot/Series;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TSeriesType;)V"
        }
    .end annotation

    .prologue
    .line 658
    .local p0, "this":Lcom/androidplot/Plot;, "Lcom/androidplot/Plot<TSeriesType;TFormatterType;TRendererType;TBundleType;TRegistryType;>;"
    .local p1, "series":Lcom/androidplot/Series;, "TSeriesType;"
    monitor-enter p0

    :try_start_0
    instance-of v1, p1, Lcom/androidplot/PlotListener;

    if-eqz v1, :cond_0

    .line 659
    move-object v0, p1

    check-cast v0, Lcom/androidplot/PlotListener;

    move-object v1, v0

    invoke-virtual {p0, v1}, Lcom/androidplot/Plot;->removeListener(Lcom/androidplot/PlotListener;)Z

    .line 662
    :cond_0
    invoke-virtual {p0}, Lcom/androidplot/Plot;->getRegistry()Lcom/androidplot/SeriesRegistry;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/androidplot/SeriesRegistry;->remove(Lcom/androidplot/Series;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 663
    monitor-exit p0

    return-void

    .line 658
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized removeSeries(Lcom/androidplot/Series;Ljava/lang/Class;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TSeriesType;",
            "Ljava/lang/Class",
            "<+TRendererType;>;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/androidplot/Plot;, "Lcom/androidplot/Plot<TSeriesType;TFormatterType;TRendererType;TBundleType;TRegistryType;>;"
    .local p1, "series":Lcom/androidplot/Series;, "TSeriesType;"
    .local p2, "rendererClass":Ljava/lang/Class;, "Ljava/lang/Class<+TRendererType;>;"
    const/4 v1, 0x1

    .line 642
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/androidplot/Plot;->getRegistry()Lcom/androidplot/SeriesRegistry;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Lcom/androidplot/SeriesRegistry;->remove(Lcom/androidplot/Series;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 645
    .local v0, "removedItems":Ljava/util/List;
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ne v2, v1, :cond_0

    instance-of v2, p1, Lcom/androidplot/PlotListener;

    if-eqz v2, :cond_0

    .line 646
    check-cast p1, Lcom/androidplot/PlotListener;

    .end local p1    # "series":Lcom/androidplot/Series;, "TSeriesType;"
    invoke-virtual {p0, p1}, Lcom/androidplot/Plot;->removeListener(Lcom/androidplot/PlotListener;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 649
    :goto_0
    monitor-exit p0

    return v1

    .restart local p1    # "series":Lcom/androidplot/Series;, "TSeriesType;"
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 642
    .end local v0    # "removedItems":Ljava/util/List;
    .end local p1    # "series":Lcom/androidplot/Series;, "TSeriesType;"
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method protected declared-synchronized renderOnCanvas(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 812
    .local p0, "this":Lcom/androidplot/Plot;, "Lcom/androidplot/Plot<TSeriesType;TFormatterType;TRendererType;TBundleType;TRegistryType;>;"
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/androidplot/Plot;->notifyListenersBeforeDraw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 817
    const/4 v1, 0x0

    :try_start_1
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 818
    iget-object v1, p0, Lcom/androidplot/Plot;->backgroundPaint:Landroid/graphics/Paint;

    if-eqz v1, :cond_0

    .line 819
    iget-object v1, p0, Lcom/androidplot/Plot;->displayDims:Lcom/androidplot/util/DisplayDimensions;

    iget-object v1, v1, Lcom/androidplot/util/DisplayDimensions;->marginatedRect:Landroid/graphics/RectF;

    invoke-virtual {p0, p1, v1}, Lcom/androidplot/Plot;->drawBackground(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V

    .line 822
    :cond_0
    iget-object v1, p0, Lcom/androidplot/Plot;->layoutManager:Lcom/androidplot/ui/LayoutManager;

    invoke-virtual {v1, p1}, Lcom/androidplot/ui/LayoutManager;->draw(Landroid/graphics/Canvas;)V

    .line 824
    invoke-virtual {p0}, Lcom/androidplot/Plot;->getBorderPaint()Landroid/graphics/Paint;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 825
    iget-object v1, p0, Lcom/androidplot/Plot;->displayDims:Lcom/androidplot/util/DisplayDimensions;

    iget-object v1, v1, Lcom/androidplot/util/DisplayDimensions;->marginatedRect:Landroid/graphics/RectF;

    invoke-virtual {p0, p1, v1}, Lcom/androidplot/Plot;->drawBorder(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V
    :try_end_1
    .catch Lcom/androidplot/exception/PlotRenderException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 833
    :cond_1
    :goto_0
    const/4 v1, 0x1

    :try_start_2
    iput-boolean v1, p0, Lcom/androidplot/Plot;->isIdle:Z

    .line 837
    invoke-virtual {p0, p1}, Lcom/androidplot/Plot;->notifyListenersAfterDraw(Landroid/graphics/Canvas;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 840
    monitor-exit p0

    return-void

    .line 827
    :catch_0
    move-exception v0

    .line 828
    .local v0, "e":Lcom/androidplot/exception/PlotRenderException;
    :try_start_3
    sget-object v1, Lcom/androidplot/Plot;->TAG:Ljava/lang/String;

    const-string v2, "Exception while rendering Plot."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 812
    .end local v0    # "e":Lcom/androidplot/exception/PlotRenderException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 829
    :catch_1
    move-exception v0

    .line 830
    .local v0, "e":Ljava/lang/Exception;
    :try_start_4
    sget-object v1, Lcom/androidplot/Plot;->TAG:Ljava/lang/String;

    const-string v2, "Exception while rendering Plot."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0
.end method

.method public setBackgroundPaint(Landroid/graphics/Paint;)V
    .locals 0
    .param p1, "backgroundPaint"    # Landroid/graphics/Paint;

    .prologue
    .line 898
    .local p0, "this":Lcom/androidplot/Plot;, "Lcom/androidplot/Plot<TSeriesType;TFormatterType;TRendererType;TBundleType;TRegistryType;>;"
    iput-object p1, p0, Lcom/androidplot/Plot;->backgroundPaint:Landroid/graphics/Paint;

    .line 899
    return-void
.end method

.method public setBorderPaint(Landroid/graphics/Paint;)V
    .locals 2
    .param p1, "borderPaint"    # Landroid/graphics/Paint;

    .prologue
    .line 1004
    .local p0, "this":Lcom/androidplot/Plot;, "Lcom/androidplot/Plot<TSeriesType;TFormatterType;TRendererType;TBundleType;TRegistryType;>;"
    if-nez p1, :cond_0

    .line 1005
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/androidplot/Plot;->borderPaint:Landroid/graphics/Paint;

    .line 1010
    :goto_0
    return-void

    .line 1007
    :cond_0
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, p1}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v0, p0, Lcom/androidplot/Plot;->borderPaint:Landroid/graphics/Paint;

    .line 1008
    iget-object v0, p0, Lcom/androidplot/Plot;->borderPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    goto :goto_0
.end method

.method public setBorderStyle(Lcom/androidplot/Plot$BorderStyle;Ljava/lang/Float;Ljava/lang/Float;)V
    .locals 2
    .param p1, "style"    # Lcom/androidplot/Plot$BorderStyle;
    .param p2, "radiusX"    # Ljava/lang/Float;
    .param p3, "radiusY"    # Ljava/lang/Float;

    .prologue
    .line 850
    .local p0, "this":Lcom/androidplot/Plot;, "Lcom/androidplot/Plot<TSeriesType;TFormatterType;TRendererType;TBundleType;TRegistryType;>;"
    sget-object v0, Lcom/androidplot/Plot$BorderStyle;->ROUNDED:Lcom/androidplot/Plot$BorderStyle;

    if-ne p1, v0, :cond_2

    .line 851
    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 852
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "radiusX and radiusY cannot be null when using BorderStyle.ROUNDED"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 854
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, p0, Lcom/androidplot/Plot;->borderRadiusX:F

    .line 855
    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, p0, Lcom/androidplot/Plot;->borderRadiusY:F

    .line 857
    :cond_2
    iput-object p1, p0, Lcom/androidplot/Plot;->borderStyle:Lcom/androidplot/Plot$BorderStyle;

    .line 858
    return-void
.end method

.method public setLayoutManager(Lcom/androidplot/ui/LayoutManager;)V
    .locals 0
    .param p1, "layoutManager"    # Lcom/androidplot/ui/LayoutManager;

    .prologue
    .line 890
    .local p0, "this":Lcom/androidplot/Plot;, "Lcom/androidplot/Plot<TSeriesType;TFormatterType;TRendererType;TBundleType;TRegistryType;>;"
    iput-object p1, p0, Lcom/androidplot/Plot;->layoutManager:Lcom/androidplot/ui/LayoutManager;

    .line 891
    return-void
.end method

.method public setMarkupEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 700
    .local p0, "this":Lcom/androidplot/Plot;, "Lcom/androidplot/Plot<TSeriesType;TFormatterType;TRendererType;TBundleType;TRegistryType;>;"
    iget-object v0, p0, Lcom/androidplot/Plot;->layoutManager:Lcom/androidplot/ui/LayoutManager;

    invoke-virtual {v0, p1}, Lcom/androidplot/ui/LayoutManager;->setMarkupEnabled(Z)V

    .line 701
    return-void
.end method

.method public setPlotMarginBottom(F)V
    .locals 1
    .param p1, "plotMarginBottom"    # F

    .prologue
    .line 942
    .local p0, "this":Lcom/androidplot/Plot;, "Lcom/androidplot/Plot<TSeriesType;TFormatterType;TRendererType;TBundleType;TRegistryType;>;"
    iget-object v0, p0, Lcom/androidplot/Plot;->boxModel:Lcom/androidplot/ui/BoxModel;

    invoke-virtual {v0, p1}, Lcom/androidplot/ui/BoxModel;->setMarginBottom(F)V

    .line 943
    return-void
.end method

.method public setPlotMarginLeft(F)V
    .locals 1
    .param p1, "plotMarginLeft"    # F

    .prologue
    .line 950
    .local p0, "this":Lcom/androidplot/Plot;, "Lcom/androidplot/Plot<TSeriesType;TFormatterType;TRendererType;TBundleType;TRegistryType;>;"
    iget-object v0, p0, Lcom/androidplot/Plot;->boxModel:Lcom/androidplot/ui/BoxModel;

    invoke-virtual {v0, p1}, Lcom/androidplot/ui/BoxModel;->setMarginLeft(F)V

    .line 951
    return-void
.end method

.method public setPlotMarginRight(F)V
    .locals 1
    .param p1, "plotMarginRight"    # F

    .prologue
    .line 958
    .local p0, "this":Lcom/androidplot/Plot;, "Lcom/androidplot/Plot<TSeriesType;TFormatterType;TRendererType;TBundleType;TRegistryType;>;"
    iget-object v0, p0, Lcom/androidplot/Plot;->boxModel:Lcom/androidplot/ui/BoxModel;

    invoke-virtual {v0, p1}, Lcom/androidplot/ui/BoxModel;->setMarginRight(F)V

    .line 959
    return-void
.end method

.method public setPlotMarginTop(F)V
    .locals 1
    .param p1, "plotMarginTop"    # F

    .prologue
    .line 934
    .local p0, "this":Lcom/androidplot/Plot;, "Lcom/androidplot/Plot<TSeriesType;TFormatterType;TRendererType;TBundleType;TRegistryType;>;"
    iget-object v0, p0, Lcom/androidplot/Plot;->boxModel:Lcom/androidplot/ui/BoxModel;

    invoke-virtual {v0, p1}, Lcom/androidplot/ui/BoxModel;->setMarginTop(F)V

    .line 935
    return-void
.end method

.method public setPlotMargins(FFFF)V
    .locals 0
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F

    .prologue
    .line 909
    .local p0, "this":Lcom/androidplot/Plot;, "Lcom/androidplot/Plot<TSeriesType;TFormatterType;TRendererType;TBundleType;TRegistryType;>;"
    invoke-virtual {p0, p1}, Lcom/androidplot/Plot;->setPlotMarginLeft(F)V

    .line 910
    invoke-virtual {p0, p2}, Lcom/androidplot/Plot;->setPlotMarginTop(F)V

    .line 911
    invoke-virtual {p0, p3}, Lcom/androidplot/Plot;->setPlotMarginRight(F)V

    .line 912
    invoke-virtual {p0, p4}, Lcom/androidplot/Plot;->setPlotMarginBottom(F)V

    .line 913
    return-void
.end method

.method public setPlotPadding(FFFF)V
    .locals 0
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F

    .prologue
    .line 923
    .local p0, "this":Lcom/androidplot/Plot;, "Lcom/androidplot/Plot<TSeriesType;TFormatterType;TRendererType;TBundleType;TRegistryType;>;"
    invoke-virtual {p0, p1}, Lcom/androidplot/Plot;->setPlotPaddingLeft(F)V

    .line 924
    invoke-virtual {p0, p2}, Lcom/androidplot/Plot;->setPlotPaddingTop(F)V

    .line 925
    invoke-virtual {p0, p3}, Lcom/androidplot/Plot;->setPlotPaddingRight(F)V

    .line 926
    invoke-virtual {p0, p4}, Lcom/androidplot/Plot;->setPlotPaddingBottom(F)V

    .line 927
    return-void
.end method

.method public setPlotPaddingBottom(F)V
    .locals 1
    .param p1, "plotPaddingBottom"    # F

    .prologue
    .line 974
    .local p0, "this":Lcom/androidplot/Plot;, "Lcom/androidplot/Plot<TSeriesType;TFormatterType;TRendererType;TBundleType;TRegistryType;>;"
    iget-object v0, p0, Lcom/androidplot/Plot;->boxModel:Lcom/androidplot/ui/BoxModel;

    invoke-virtual {v0, p1}, Lcom/androidplot/ui/BoxModel;->setPaddingBottom(F)V

    .line 975
    return-void
.end method

.method public setPlotPaddingLeft(F)V
    .locals 1
    .param p1, "plotPaddingLeft"    # F

    .prologue
    .line 982
    .local p0, "this":Lcom/androidplot/Plot;, "Lcom/androidplot/Plot<TSeriesType;TFormatterType;TRendererType;TBundleType;TRegistryType;>;"
    iget-object v0, p0, Lcom/androidplot/Plot;->boxModel:Lcom/androidplot/ui/BoxModel;

    invoke-virtual {v0, p1}, Lcom/androidplot/ui/BoxModel;->setPaddingLeft(F)V

    .line 983
    return-void
.end method

.method public setPlotPaddingRight(F)V
    .locals 1
    .param p1, "plotPaddingRight"    # F

    .prologue
    .line 990
    .local p0, "this":Lcom/androidplot/Plot;, "Lcom/androidplot/Plot<TSeriesType;TFormatterType;TRendererType;TBundleType;TRegistryType;>;"
    iget-object v0, p0, Lcom/androidplot/Plot;->boxModel:Lcom/androidplot/ui/BoxModel;

    invoke-virtual {v0, p1}, Lcom/androidplot/ui/BoxModel;->setPaddingRight(F)V

    .line 991
    return-void
.end method

.method public setPlotPaddingTop(F)V
    .locals 1
    .param p1, "plotPaddingTop"    # F

    .prologue
    .line 966
    .local p0, "this":Lcom/androidplot/Plot;, "Lcom/androidplot/Plot<TSeriesType;TFormatterType;TRendererType;TBundleType;TRegistryType;>;"
    iget-object v0, p0, Lcom/androidplot/Plot;->boxModel:Lcom/androidplot/ui/BoxModel;

    invoke-virtual {v0, p1}, Lcom/androidplot/ui/BoxModel;->setPaddingTop(F)V

    .line 967
    return-void
.end method

.method public setRegistry(Lcom/androidplot/SeriesRegistry;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TRegistryType;)V"
        }
    .end annotation

    .prologue
    .line 76
    .local p0, "this":Lcom/androidplot/Plot;, "Lcom/androidplot/Plot<TSeriesType;TFormatterType;TRendererType;TBundleType;TRegistryType;>;"
    .local p1, "registry":Lcom/androidplot/SeriesRegistry;, "TRegistryType;"
    iput-object p1, p0, Lcom/androidplot/Plot;->registry:Lcom/androidplot/SeriesRegistry;

    .line 77
    invoke-virtual {p1}, Lcom/androidplot/SeriesRegistry;->getSeriesAndFormatterList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/androidplot/ui/SeriesBundle;

    .line 78
    .local v0, "bundle":Lcom/androidplot/ui/SeriesBundle;, "TBundleType;"
    invoke-virtual {v0}, Lcom/androidplot/ui/SeriesBundle;->getSeries()Lcom/androidplot/Series;

    move-result-object v2

    invoke-virtual {v0}, Lcom/androidplot/ui/SeriesBundle;->getFormatter()Lcom/androidplot/ui/Formatter;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/androidplot/Plot;->attachSeries(Lcom/androidplot/Series;Lcom/androidplot/ui/Formatter;)V

    goto :goto_0

    .line 80
    .end local v0    # "bundle":Lcom/androidplot/ui/SeriesBundle;, "TBundleType;"
    :cond_0
    return-void
.end method

.method public setRenderMode(Lcom/androidplot/Plot$RenderMode;)V
    .locals 0
    .param p1, "mode"    # Lcom/androidplot/Plot$RenderMode;

    .prologue
    .line 337
    .local p0, "this":Lcom/androidplot/Plot;, "Lcom/androidplot/Plot<TSeriesType;TFormatterType;TRendererType;TBundleType;TRegistryType;>;"
    iput-object p1, p0, Lcom/androidplot/Plot;->renderMode:Lcom/androidplot/Plot$RenderMode;

    .line 338
    return-void
.end method

.method public setTitle(Lcom/androidplot/ui/widget/TextLabelWidget;)V
    .locals 0
    .param p1, "title"    # Lcom/androidplot/ui/widget/TextLabelWidget;

    .prologue
    .line 93
    .local p0, "this":Lcom/androidplot/Plot;, "Lcom/androidplot/Plot<TSeriesType;TFormatterType;TRendererType;TBundleType;TRegistryType;>;"
    iput-object p1, p0, Lcom/androidplot/Plot;->title:Lcom/androidplot/ui/widget/TextLabelWidget;

    .line 94
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 97
    .local p0, "this":Lcom/androidplot/Plot;, "Lcom/androidplot/Plot<TSeriesType;TFormatterType;TRendererType;TBundleType;TRegistryType;>;"
    invoke-virtual {p0}, Lcom/androidplot/Plot;->getTitle()Lcom/androidplot/ui/widget/TextLabelWidget;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/androidplot/ui/widget/TextLabelWidget;->setText(Ljava/lang/String;)V

    .line 98
    return-void
.end method
