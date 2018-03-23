.class public Lcom/androidplot/util/AttrUtils;
.super Ljava/lang/Object;
.source "AttrUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-class v0, Lcom/androidplot/util/AttrUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/androidplot/util/AttrUtils;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static configureBoxModelable(Landroid/content/res/TypedArray;Lcom/androidplot/ui/BoxModelable;IIIIIIII)V
    .locals 4
    .param p0, "attrs"    # Landroid/content/res/TypedArray;
    .param p1, "model"    # Lcom/androidplot/ui/BoxModelable;
    .param p2, "marginTop"    # I
    .param p3, "marginBottom"    # I
    .param p4, "marginLeft"    # I
    .param p5, "marginRight"    # I
    .param p6, "paddingTop"    # I
    .param p7, "paddingBottom"    # I
    .param p8, "paddingLeft"    # I
    .param p9, "paddingRight"    # I

    .prologue
    .line 135
    if-eqz p0, :cond_0

    .line 136
    invoke-interface {p1}, Lcom/androidplot/ui/BoxModelable;->getMarginLeft()F

    move-result v0

    invoke-virtual {p0, p4, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    .line 137
    invoke-interface {p1}, Lcom/androidplot/ui/BoxModelable;->getMarginTop()F

    move-result v1

    invoke-virtual {p0, p2, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    .line 138
    invoke-interface {p1}, Lcom/androidplot/ui/BoxModelable;->getMarginRight()F

    move-result v2

    invoke-virtual {p0, p5, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    .line 139
    invoke-interface {p1}, Lcom/androidplot/ui/BoxModelable;->getMarginBottom()F

    move-result v3

    invoke-virtual {p0, p3, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    .line 136
    invoke-interface {p1, v0, v1, v2, v3}, Lcom/androidplot/ui/BoxModelable;->setMargins(FFFF)V

    .line 141
    invoke-interface {p1}, Lcom/androidplot/ui/BoxModelable;->getPaddingLeft()F

    move-result v0

    invoke-virtual {p0, p8, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    .line 142
    invoke-interface {p1}, Lcom/androidplot/ui/BoxModelable;->getPaddingTop()F

    move-result v1

    invoke-virtual {p0, p6, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    .line 143
    invoke-interface {p1}, Lcom/androidplot/ui/BoxModelable;->getPaddingRight()F

    move-result v2

    invoke-virtual {p0, p9, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    .line 144
    invoke-interface {p1}, Lcom/androidplot/ui/BoxModelable;->getPaddingBottom()F

    move-result v3

    invoke-virtual {p0, p7, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    .line 141
    invoke-interface {p1, v0, v1, v2, v3}, Lcom/androidplot/ui/BoxModelable;->setPadding(FFFF)V

    .line 146
    :cond_0
    return-void
.end method

.method public static configureInsets(Landroid/content/res/TypedArray;Lcom/androidplot/ui/Insets;IIII)V
    .locals 1
    .param p0, "attrs"    # Landroid/content/res/TypedArray;
    .param p1, "insets"    # Lcom/androidplot/ui/Insets;
    .param p2, "topAttr"    # I
    .param p3, "bottomAttr"    # I
    .param p4, "leftAttr"    # I
    .param p5, "rightAttr"    # I

    .prologue
    .line 39
    invoke-virtual {p1}, Lcom/androidplot/ui/Insets;->getTop()F

    move-result v0

    invoke-virtual {p0, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/androidplot/ui/Insets;->setTop(F)V

    .line 40
    invoke-virtual {p1}, Lcom/androidplot/ui/Insets;->getBottom()F

    move-result v0

    invoke-virtual {p0, p3, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/androidplot/ui/Insets;->setBottom(F)V

    .line 41
    invoke-virtual {p1}, Lcom/androidplot/ui/Insets;->getLeft()F

    move-result v0

    invoke-virtual {p0, p4, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/androidplot/ui/Insets;->setLeft(F)V

    .line 42
    invoke-virtual {p1}, Lcom/androidplot/ui/Insets;->getRight()F

    move-result v0

    invoke-virtual {p0, p5, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/androidplot/ui/Insets;->setRight(F)V

    .line 43
    return-void
.end method

.method public static configureLinePaint(Landroid/content/res/TypedArray;Landroid/graphics/Paint;II)V
    .locals 1
    .param p0, "attrs"    # Landroid/content/res/TypedArray;
    .param p1, "paint"    # Landroid/graphics/Paint;
    .param p2, "colorAttr"    # I
    .param p3, "strokeWidthAttr"    # I

    .prologue
    .line 101
    if-eqz p0, :cond_0

    .line 102
    invoke-static {p0, p1, p2}, Lcom/androidplot/util/AttrUtils;->setColor(Landroid/content/res/TypedArray;Landroid/graphics/Paint;I)V

    .line 103
    invoke-virtual {p1}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    invoke-virtual {p0, p3, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 105
    :cond_0
    return-void
.end method

.method public static configurePositionMetrics(Landroid/content/res/TypedArray;Lcom/androidplot/ui/PositionMetrics;IIIII)V
    .locals 3
    .param p0, "attrs"    # Landroid/content/res/TypedArray;
    .param p1, "metrics"    # Lcom/androidplot/ui/PositionMetrics;
    .param p2, "xLayoutStyleAttr"    # I
    .param p3, "xLayoutValueAttr"    # I
    .param p4, "yLayoutStyleAttr"    # I
    .param p5, "yLayoutValueAttr"    # I
    .param p6, "anchorPositionAttr"    # I

    .prologue
    .line 210
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 211
    invoke-virtual {p1}, Lcom/androidplot/ui/PositionMetrics;->getXPositionMetric()Lcom/androidplot/ui/HorizontalPosition;

    move-result-object v1

    .line 212
    invoke-virtual {p1}, Lcom/androidplot/ui/PositionMetrics;->getXPositionMetric()Lcom/androidplot/ui/HorizontalPosition;

    move-result-object v0

    invoke-virtual {v0}, Lcom/androidplot/ui/HorizontalPosition;->getValue()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {p0, p3, v0}, Lcom/androidplot/util/AttrUtils;->getIntFloatDimenValue(Landroid/content/res/TypedArray;ILjava/lang/Number;)Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v2

    .line 213
    invoke-virtual {p1}, Lcom/androidplot/ui/PositionMetrics;->getXPositionMetric()Lcom/androidplot/ui/HorizontalPosition;

    move-result-object v0

    invoke-virtual {v0}, Lcom/androidplot/ui/HorizontalPosition;->getLayoutType()Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/androidplot/ui/HorizontalPositioning;

    invoke-static {p0, p2, v0}, Lcom/androidplot/util/AttrUtils;->getXLayoutStyle(Landroid/content/res/TypedArray;ILcom/androidplot/ui/HorizontalPositioning;)Lcom/androidplot/ui/HorizontalPositioning;

    move-result-object v0

    .line 211
    invoke-virtual {v1, v2, v0}, Lcom/androidplot/ui/HorizontalPosition;->set(FLjava/lang/Enum;)V

    .line 215
    invoke-virtual {p1}, Lcom/androidplot/ui/PositionMetrics;->getYPositionMetric()Lcom/androidplot/ui/VerticalPosition;

    move-result-object v1

    .line 216
    invoke-virtual {p1}, Lcom/androidplot/ui/PositionMetrics;->getYPositionMetric()Lcom/androidplot/ui/VerticalPosition;

    move-result-object v0

    invoke-virtual {v0}, Lcom/androidplot/ui/VerticalPosition;->getValue()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {p0, p5, v0}, Lcom/androidplot/util/AttrUtils;->getIntFloatDimenValue(Landroid/content/res/TypedArray;ILjava/lang/Number;)Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v2

    .line 217
    invoke-virtual {p1}, Lcom/androidplot/ui/PositionMetrics;->getYPositionMetric()Lcom/androidplot/ui/VerticalPosition;

    move-result-object v0

    invoke-virtual {v0}, Lcom/androidplot/ui/VerticalPosition;->getLayoutType()Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/androidplot/ui/VerticalPositioning;

    invoke-static {p0, p4, v0}, Lcom/androidplot/util/AttrUtils;->getYLayoutStyle(Landroid/content/res/TypedArray;ILcom/androidplot/ui/VerticalPositioning;)Lcom/androidplot/ui/VerticalPositioning;

    move-result-object v0

    .line 215
    invoke-virtual {v1, v2, v0}, Lcom/androidplot/ui/VerticalPosition;->set(FLjava/lang/Enum;)V

    .line 218
    invoke-virtual {p1}, Lcom/androidplot/ui/PositionMetrics;->getAnchor()Lcom/androidplot/ui/Anchor;

    move-result-object v0

    invoke-static {p0, p6, v0}, Lcom/androidplot/util/AttrUtils;->getAnchorPosition(Landroid/content/res/TypedArray;ILcom/androidplot/ui/Anchor;)Lcom/androidplot/ui/Anchor;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/androidplot/ui/PositionMetrics;->setAnchor(Lcom/androidplot/ui/Anchor;)V

    .line 220
    :cond_0
    return-void
.end method

.method public static configureSize(Landroid/content/res/TypedArray;Lcom/androidplot/ui/Size;IIII)V
    .locals 1
    .param p0, "attrs"    # Landroid/content/res/TypedArray;
    .param p1, "model"    # Lcom/androidplot/ui/Size;
    .param p2, "heightSizeLayoutTypeAttr"    # I
    .param p3, "heightAttr"    # I
    .param p4, "widthSizeLayoutTypeAttr"    # I
    .param p5, "widthAttr"    # I

    .prologue
    .line 159
    if-eqz p0, :cond_0

    .line 160
    invoke-virtual {p1}, Lcom/androidplot/ui/Size;->getHeight()Lcom/androidplot/ui/SizeMetric;

    move-result-object v0

    invoke-static {p0, v0, p2, p3}, Lcom/androidplot/util/AttrUtils;->configureSizeMetric(Landroid/content/res/TypedArray;Lcom/androidplot/ui/SizeMetric;II)V

    .line 161
    invoke-virtual {p1}, Lcom/androidplot/ui/Size;->getWidth()Lcom/androidplot/ui/SizeMetric;

    move-result-object v0

    invoke-static {p0, v0, p4, p5}, Lcom/androidplot/util/AttrUtils;->configureSizeMetric(Landroid/content/res/TypedArray;Lcom/androidplot/ui/SizeMetric;II)V

    .line 163
    :cond_0
    return-void
.end method

.method private static configureSizeMetric(Landroid/content/res/TypedArray;Lcom/androidplot/ui/SizeMetric;II)V
    .locals 3
    .param p0, "attrs"    # Landroid/content/res/TypedArray;
    .param p1, "model"    # Lcom/androidplot/ui/SizeMetric;
    .param p2, "typeAttr"    # I
    .param p3, "valueAttr"    # I

    .prologue
    .line 167
    invoke-virtual {p1}, Lcom/androidplot/ui/SizeMetric;->getValue()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-static {p0, p3, v2}, Lcom/androidplot/util/AttrUtils;->getIntFloatDimenValue(Landroid/content/res/TypedArray;ILjava/lang/Number;)Ljava/lang/Number;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    move-result v1

    .line 169
    .local v1, "value":F
    invoke-virtual {p1}, Lcom/androidplot/ui/SizeMetric;->getLayoutType()Ljava/lang/Enum;

    move-result-object v2

    check-cast v2, Lcom/androidplot/ui/SizeMode;

    invoke-static {p0, p2, v2}, Lcom/androidplot/util/AttrUtils;->getSizeLayoutType(Landroid/content/res/TypedArray;ILcom/androidplot/ui/SizeMode;)Lcom/androidplot/ui/SizeMode;

    move-result-object v0

    .line 171
    .local v0, "sizeMode":Lcom/androidplot/ui/SizeMode;
    invoke-virtual {p1, v1, v0}, Lcom/androidplot/ui/SizeMetric;->set(FLjava/lang/Enum;)V

    .line 172
    return-void
.end method

.method public static configureStep(Landroid/content/res/TypedArray;Lcom/androidplot/xy/StepModel;II)V
    .locals 2
    .param p0, "attrs"    # Landroid/content/res/TypedArray;
    .param p1, "model"    # Lcom/androidplot/xy/StepModel;
    .param p2, "stepModeAttr"    # I
    .param p3, "stepValueAttr"    # I

    .prologue
    .line 263
    if-eqz p0, :cond_0

    .line 264
    invoke-static {}, Lcom/androidplot/xy/StepMode;->values()[Lcom/androidplot/xy/StepMode;

    move-result-object v0

    invoke-virtual {p1}, Lcom/androidplot/xy/StepModel;->getMode()Lcom/androidplot/xy/StepMode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/androidplot/xy/StepMode;->ordinal()I

    move-result v1

    invoke-virtual {p0, p2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Lcom/androidplot/xy/StepModel;->setMode(Lcom/androidplot/xy/StepMode;)V

    .line 265
    invoke-virtual {p1}, Lcom/androidplot/xy/StepModel;->getValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-static {p0, p3, v0}, Lcom/androidplot/util/AttrUtils;->getIntFloatDimenValue(Landroid/content/res/TypedArray;ILjava/lang/Number;)Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/androidplot/xy/StepModel;->setValue(D)V

    .line 267
    :cond_0
    return-void
.end method

.method public static configureTextAlign(Landroid/content/res/TypedArray;Landroid/graphics/Paint;I)V
    .locals 3
    .param p0, "attrs"    # Landroid/content/res/TypedArray;
    .param p1, "paint"    # Landroid/graphics/Paint;
    .param p2, "alignAttr"    # I

    .prologue
    .line 84
    if-eqz p0, :cond_0

    .line 86
    invoke-static {}, Landroid/graphics/Paint$Align;->values()[Landroid/graphics/Paint$Align;

    move-result-object v1

    .line 87
    invoke-virtual {p1}, Landroid/graphics/Paint;->getTextAlign()Landroid/graphics/Paint$Align;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Paint$Align;->ordinal()I

    move-result v2

    invoke-virtual {p0, p2, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    aget-object v0, v1, v2

    .line 88
    .local v0, "alignment":Landroid/graphics/Paint$Align;
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 91
    .end local v0    # "alignment":Landroid/graphics/Paint$Align;
    :cond_0
    return-void
.end method

.method public static configureTextPaint(Landroid/content/res/TypedArray;Landroid/graphics/Paint;II)V
    .locals 1
    .param p0, "attrs"    # Landroid/content/res/TypedArray;
    .param p1, "paint"    # Landroid/graphics/Paint;
    .param p2, "colorAttr"    # I
    .param p3, "textSizeAttr"    # I

    .prologue
    .line 54
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/androidplot/util/AttrUtils;->configureTextPaint(Landroid/content/res/TypedArray;Landroid/graphics/Paint;IILjava/lang/Integer;)V

    .line 55
    return-void
.end method

.method public static configureTextPaint(Landroid/content/res/TypedArray;Landroid/graphics/Paint;IILjava/lang/Integer;)V
    .locals 1
    .param p0, "attrs"    # Landroid/content/res/TypedArray;
    .param p1, "paint"    # Landroid/graphics/Paint;
    .param p2, "colorAttr"    # I
    .param p3, "textSizeAttr"    # I
    .param p4, "alignAttr"    # Ljava/lang/Integer;

    .prologue
    .line 67
    if-eqz p0, :cond_0

    .line 68
    invoke-static {p0, p1, p2}, Lcom/androidplot/util/AttrUtils;->setColor(Landroid/content/res/TypedArray;Landroid/graphics/Paint;I)V

    .line 69
    invoke-static {p0, p1, p3}, Lcom/androidplot/util/AttrUtils;->setTextSize(Landroid/content/res/TypedArray;Landroid/graphics/Paint;I)V

    .line 71
    if-eqz p4, :cond_0

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {p0, p1, v0}, Lcom/androidplot/util/AttrUtils;->configureTextAlign(Landroid/content/res/TypedArray;Landroid/graphics/Paint;I)V

    .line 75
    :cond_0
    return-void
.end method

.method public static configureWidget(Landroid/content/res/TypedArray;Lcom/androidplot/ui/widget/Widget;IIIIIIIIII)V
    .locals 8
    .param p0, "attrs"    # Landroid/content/res/TypedArray;
    .param p1, "widget"    # Lcom/androidplot/ui/widget/Widget;
    .param p2, "heightSizeLayoutTypeAttr"    # I
    .param p3, "heightAttr"    # I
    .param p4, "widthSizeLayoutTypeAttr"    # I
    .param p5, "widthAttr"    # I
    .param p6, "xLayoutStyleAttr"    # I
    .param p7, "xLayoutValueAttr"    # I
    .param p8, "yLayoutStyleAttr"    # I
    .param p9, "yLayoutValueAttr"    # I
    .param p10, "anchorPositionAttr"    # I
    .param p11, "visibilityAttr"    # I

    .prologue
    .line 182
    if-eqz p0, :cond_0

    .line 183
    invoke-virtual {p1}, Lcom/androidplot/ui/widget/Widget;->getSize()Lcom/androidplot/ui/Size;

    move-result-object v2

    move-object v1, p0

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-static/range {v1 .. v6}, Lcom/androidplot/util/AttrUtils;->configureSize(Landroid/content/res/TypedArray;Lcom/androidplot/ui/Size;IIII)V

    .line 185
    invoke-virtual {p1}, Lcom/androidplot/ui/widget/Widget;->getPositionMetrics()Lcom/androidplot/ui/PositionMetrics;

    move-result-object v2

    move-object v1, p0

    move v3, p6

    move v4, p7

    move/from16 v5, p8

    move/from16 v6, p9

    move/from16 v7, p10

    invoke-static/range {v1 .. v7}, Lcom/androidplot/util/AttrUtils;->configurePositionMetrics(Landroid/content/res/TypedArray;Lcom/androidplot/ui/PositionMetrics;IIIII)V

    .line 187
    invoke-virtual {p1}, Lcom/androidplot/ui/widget/Widget;->isVisible()Z

    move-result v1

    move/from16 v0, p11

    invoke-virtual {p0, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p1, v1}, Lcom/androidplot/ui/widget/Widget;->setVisible(Z)V

    .line 189
    :cond_0
    return-void
.end method

.method public static configureWidgetRotation(Landroid/content/res/TypedArray;Lcom/androidplot/ui/widget/Widget;I)V
    .locals 1
    .param p0, "attrs"    # Landroid/content/res/TypedArray;
    .param p1, "widget"    # Lcom/androidplot/ui/widget/Widget;
    .param p2, "rotationAttr"    # I

    .prologue
    .line 192
    if-eqz p0, :cond_0

    .line 193
    sget-object v0, Lcom/androidplot/ui/widget/Widget$Rotation;->NONE:Lcom/androidplot/ui/widget/Widget$Rotation;

    invoke-static {p0, p2, v0}, Lcom/androidplot/util/AttrUtils;->getWidgetRotation(Landroid/content/res/TypedArray;ILcom/androidplot/ui/widget/Widget$Rotation;)Lcom/androidplot/ui/widget/Widget$Rotation;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/androidplot/ui/widget/Widget;->setRotation(Lcom/androidplot/ui/widget/Widget$Rotation;)V

    .line 195
    :cond_0
    return-void
.end method

.method private static getAnchorPosition(Landroid/content/res/TypedArray;ILcom/androidplot/ui/Anchor;)Lcom/androidplot/ui/Anchor;
    .locals 2
    .param p0, "attrs"    # Landroid/content/res/TypedArray;
    .param p1, "attr"    # I
    .param p2, "defaultValue"    # Lcom/androidplot/ui/Anchor;

    .prologue
    .line 259
    invoke-static {}, Lcom/androidplot/ui/Anchor;->values()[Lcom/androidplot/ui/Anchor;

    move-result-object v0

    invoke-virtual {p2}, Lcom/androidplot/ui/Anchor;->ordinal()I

    move-result v1

    invoke-virtual {p0, p1, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method private static getIntFloatDimenValue(Landroid/content/res/TypedArray;ILjava/lang/Number;)Ljava/lang/Number;
    .locals 4
    .param p0, "attrs"    # Landroid/content/res/TypedArray;
    .param p1, "valueAttr"    # I
    .param p2, "defaultValue"    # Ljava/lang/Number;

    .prologue
    .line 230
    move-object v0, p2

    .line 231
    .local v0, "result":Ljava/lang/Number;
    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 232
    invoke-virtual {p0, p1}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v2

    iget v1, v2, Landroid/util/TypedValue;->type:I

    .line 233
    .local v1, "valueType":I
    const/4 v2, 0x5

    if-ne v1, v2, :cond_1

    .line 234
    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    move-result v2

    invoke-virtual {p0, p1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    .line 243
    .end local v1    # "valueType":I
    :cond_0
    :goto_0
    return-object v0

    .line 235
    .restart local v1    # "valueType":I
    :cond_1
    const/16 v2, 0x10

    if-ne v1, v2, :cond_2

    .line 236
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result v2

    invoke-virtual {p0, p1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 237
    :cond_2
    const/4 v2, 0x4

    if-ne v1, v2, :cond_3

    .line 238
    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    move-result v2

    invoke-virtual {p0, p1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    goto :goto_0

    .line 240
    :cond_3
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Invalid value type - must be float or dimension."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private static getSizeLayoutType(Landroid/content/res/TypedArray;ILcom/androidplot/ui/SizeMode;)Lcom/androidplot/ui/SizeMode;
    .locals 2
    .param p0, "attrs"    # Landroid/content/res/TypedArray;
    .param p1, "attr"    # I
    .param p2, "defaultValue"    # Lcom/androidplot/ui/SizeMode;

    .prologue
    .line 175
    invoke-static {}, Lcom/androidplot/ui/SizeMode;->values()[Lcom/androidplot/ui/SizeMode;

    move-result-object v0

    invoke-virtual {p2}, Lcom/androidplot/ui/SizeMode;->ordinal()I

    move-result v1

    invoke-virtual {p0, p1, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method private static getWidgetRotation(Landroid/content/res/TypedArray;ILcom/androidplot/ui/widget/Widget$Rotation;)Lcom/androidplot/ui/widget/Widget$Rotation;
    .locals 2
    .param p0, "attrs"    # Landroid/content/res/TypedArray;
    .param p1, "attr"    # I
    .param p2, "defaultValue"    # Lcom/androidplot/ui/widget/Widget$Rotation;

    .prologue
    .line 255
    invoke-static {}, Lcom/androidplot/ui/widget/Widget$Rotation;->values()[Lcom/androidplot/ui/widget/Widget$Rotation;

    move-result-object v0

    invoke-virtual {p2}, Lcom/androidplot/ui/widget/Widget$Rotation;->ordinal()I

    move-result v1

    invoke-virtual {p0, p1, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method private static getXLayoutStyle(Landroid/content/res/TypedArray;ILcom/androidplot/ui/HorizontalPositioning;)Lcom/androidplot/ui/HorizontalPositioning;
    .locals 2
    .param p0, "attrs"    # Landroid/content/res/TypedArray;
    .param p1, "attr"    # I
    .param p2, "defaultValue"    # Lcom/androidplot/ui/HorizontalPositioning;

    .prologue
    .line 247
    invoke-static {}, Lcom/androidplot/ui/HorizontalPositioning;->values()[Lcom/androidplot/ui/HorizontalPositioning;

    move-result-object v0

    invoke-virtual {p2}, Lcom/androidplot/ui/HorizontalPositioning;->ordinal()I

    move-result v1

    invoke-virtual {p0, p1, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method private static getYLayoutStyle(Landroid/content/res/TypedArray;ILcom/androidplot/ui/VerticalPositioning;)Lcom/androidplot/ui/VerticalPositioning;
    .locals 2
    .param p0, "attrs"    # Landroid/content/res/TypedArray;
    .param p1, "attr"    # I
    .param p2, "defaultValue"    # Lcom/androidplot/ui/VerticalPositioning;

    .prologue
    .line 251
    invoke-static {}, Lcom/androidplot/ui/VerticalPositioning;->values()[Lcom/androidplot/ui/VerticalPositioning;

    move-result-object v0

    invoke-virtual {p2}, Lcom/androidplot/ui/VerticalPositioning;->ordinal()I

    move-result v1

    invoke-virtual {p0, p1, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public static setColor(Landroid/content/res/TypedArray;Landroid/graphics/Paint;I)V
    .locals 3
    .param p0, "attrs"    # Landroid/content/res/TypedArray;
    .param p1, "paint"    # Landroid/graphics/Paint;
    .param p2, "attrId"    # I

    .prologue
    .line 108
    if-nez p1, :cond_0

    .line 109
    sget-object v0, Lcom/androidplot/util/AttrUtils;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attempt to configure null Paint property for attrId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    :goto_0
    return-void

    .line 111
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    invoke-virtual {p0, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0
.end method

.method public static setTextSize(Landroid/content/res/TypedArray;Landroid/graphics/Paint;I)V
    .locals 1
    .param p0, "attrs"    # Landroid/content/res/TypedArray;
    .param p1, "paint"    # Landroid/graphics/Paint;
    .param p2, "attrId"    # I

    .prologue
    .line 116
    invoke-virtual {p1}, Landroid/graphics/Paint;->getTextSize()F

    move-result v0

    invoke-virtual {p0, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 117
    return-void
.end method
