.class public Lcom/androidplot/ui/widget/TextLabelWidget;
.super Lcom/androidplot/ui/widget/Widget;
.source "TextLabelWidget.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private autoPackEnabled:Z

.field private labelPaint:Landroid/graphics/Paint;

.field private orientation:Lcom/androidplot/ui/TextOrientation;

.field private text:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-class v0, Lcom/androidplot/ui/widget/TextLabelWidget;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/androidplot/ui/widget/TextLabelWidget;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/androidplot/ui/LayoutManager;Lcom/androidplot/ui/Size;)V
    .locals 1
    .param p1, "layoutManager"    # Lcom/androidplot/ui/LayoutManager;
    .param p2, "size"    # Lcom/androidplot/ui/Size;

    .prologue
    .line 42
    sget-object v0, Lcom/androidplot/ui/TextOrientation;->HORIZONTAL:Lcom/androidplot/ui/TextOrientation;

    invoke-direct {p0, p1, p2, v0}, Lcom/androidplot/ui/widget/TextLabelWidget;-><init>(Lcom/androidplot/ui/LayoutManager;Lcom/androidplot/ui/Size;Lcom/androidplot/ui/TextOrientation;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Lcom/androidplot/ui/LayoutManager;Lcom/androidplot/ui/Size;Lcom/androidplot/ui/TextOrientation;)V
    .locals 5
    .param p1, "layoutManager"    # Lcom/androidplot/ui/LayoutManager;
    .param p2, "size"    # Lcom/androidplot/ui/Size;
    .param p3, "orientation"    # Lcom/androidplot/ui/TextOrientation;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 51
    new-instance v0, Lcom/androidplot/ui/Size;

    sget-object v1, Lcom/androidplot/ui/SizeMode;->ABSOLUTE:Lcom/androidplot/ui/SizeMode;

    sget-object v2, Lcom/androidplot/ui/SizeMode;->ABSOLUTE:Lcom/androidplot/ui/SizeMode;

    invoke-direct {v0, v3, v1, v3, v2}, Lcom/androidplot/ui/Size;-><init>(FLcom/androidplot/ui/SizeMode;FLcom/androidplot/ui/SizeMode;)V

    invoke-direct {p0, p1, v0}, Lcom/androidplot/ui/widget/Widget;-><init>(Lcom/androidplot/ui/LayoutManager;Lcom/androidplot/ui/Size;)V

    .line 31
    iput-boolean v4, p0, Lcom/androidplot/ui/widget/TextLabelWidget;->autoPackEnabled:Z

    .line 34
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/androidplot/ui/widget/TextLabelWidget;->labelPaint:Landroid/graphics/Paint;

    .line 35
    iget-object v0, p0, Lcom/androidplot/ui/widget/TextLabelWidget;->labelPaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 36
    iget-object v0, p0, Lcom/androidplot/ui/widget/TextLabelWidget;->labelPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 37
    iget-object v0, p0, Lcom/androidplot/ui/widget/TextLabelWidget;->labelPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 38
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/androidplot/ui/widget/TextLabelWidget;->setClippingEnabled(Z)V

    .line 52
    invoke-virtual {p0, p2}, Lcom/androidplot/ui/widget/TextLabelWidget;->setSize(Lcom/androidplot/ui/Size;)V

    .line 53
    iput-object p3, p0, Lcom/androidplot/ui/widget/TextLabelWidget;->orientation:Lcom/androidplot/ui/TextOrientation;

    .line 54
    return-void
.end method

.method public constructor <init>(Lcom/androidplot/ui/LayoutManager;Ljava/lang/String;Lcom/androidplot/ui/Size;Lcom/androidplot/ui/TextOrientation;)V
    .locals 0
    .param p1, "layoutManager"    # Lcom/androidplot/ui/LayoutManager;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "size"    # Lcom/androidplot/ui/Size;
    .param p4, "orientation"    # Lcom/androidplot/ui/TextOrientation;

    .prologue
    .line 46
    invoke-direct {p0, p1, p3, p4}, Lcom/androidplot/ui/widget/TextLabelWidget;-><init>(Lcom/androidplot/ui/LayoutManager;Lcom/androidplot/ui/Size;Lcom/androidplot/ui/TextOrientation;)V

    .line 47
    invoke-virtual {p0, p2}, Lcom/androidplot/ui/widget/TextLabelWidget;->setText(Ljava/lang/String;)V

    .line 48
    return-void
.end method


# virtual methods
.method public doOnDraw(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "widgetRect"    # Landroid/graphics/RectF;

    .prologue
    .line 103
    iget-object v2, p0, Lcom/androidplot/ui/widget/TextLabelWidget;->text:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/androidplot/ui/widget/TextLabelWidget;->text:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 137
    :cond_0
    :goto_0
    return-void

    .line 107
    :cond_1
    iget-object v2, p0, Lcom/androidplot/ui/widget/TextLabelWidget;->labelPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v2

    iget v1, v2, Landroid/graphics/Paint$FontMetrics;->descent:F

    .line 108
    .local v1, "vOffset":F
    sget-object v2, Lcom/androidplot/ui/Anchor;->CENTER:Lcom/androidplot/ui/Anchor;

    invoke-static {p2, v2}, Lcom/androidplot/ui/widget/TextLabelWidget;->getAnchorCoordinates(Landroid/graphics/RectF;Lcom/androidplot/ui/Anchor;)Landroid/graphics/PointF;

    move-result-object v0

    .line 115
    .local v0, "start":Landroid/graphics/PointF;
    const/16 v2, 0x1f

    :try_start_0
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->save(I)I

    .line 116
    iget v2, v0, Landroid/graphics/PointF;->x:F

    iget v3, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 117
    sget-object v2, Lcom/androidplot/ui/widget/TextLabelWidget$1;->$SwitchMap$com$androidplot$ui$TextOrientation:[I

    iget-object v3, p0, Lcom/androidplot/ui/widget/TextLabelWidget;->orientation:Lcom/androidplot/ui/TextOrientation;

    invoke-virtual {v3}, Lcom/androidplot/ui/TextOrientation;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 128
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Orientation "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/androidplot/ui/widget/TextLabelWidget;->orientation:Lcom/androidplot/ui/TextOrientation;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " not yet implemented for TextLabelWidget."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 133
    :catchall_0
    move-exception v2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    throw v2

    .line 121
    :pswitch_0
    const/high16 v2, -0x3d4c0000    # -90.0f

    :try_start_1
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->rotate(F)V

    .line 130
    :goto_1
    :pswitch_1
    iget-object v2, p0, Lcom/androidplot/ui/widget/TextLabelWidget;->text:Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/androidplot/ui/widget/TextLabelWidget;->labelPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v1, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 133
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0

    .line 124
    :pswitch_2
    const/high16 v2, 0x42b40000    # 90.0f

    :try_start_2
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->rotate(F)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 117
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public getLabelPaint()Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/androidplot/ui/widget/TextLabelWidget;->labelPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public getOrientation()Lcom/androidplot/ui/TextOrientation;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/androidplot/ui/widget/TextLabelWidget;->orientation:Lcom/androidplot/ui/TextOrientation;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/androidplot/ui/widget/TextLabelWidget;->text:Ljava/lang/String;

    return-object v0
.end method

.method public isAutoPackEnabled()Z
    .locals 1

    .prologue
    .line 165
    iget-boolean v0, p0, Lcom/androidplot/ui/widget/TextLabelWidget;->autoPackEnabled:Z

    return v0
.end method

.method protected onMetricsChanged(Lcom/androidplot/ui/Size;Lcom/androidplot/ui/Size;)V
    .locals 1
    .param p1, "olds"    # Lcom/androidplot/ui/Size;
    .param p2, "news"    # Lcom/androidplot/ui/Size;

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/androidplot/ui/widget/TextLabelWidget;->autoPackEnabled:Z

    if-eqz v0, :cond_0

    .line 59
    invoke-virtual {p0}, Lcom/androidplot/ui/widget/TextLabelWidget;->pack()V

    .line 61
    :cond_0
    return-void
.end method

.method public onPostInit()V
    .locals 1

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/androidplot/ui/widget/TextLabelWidget;->autoPackEnabled:Z

    if-eqz v0, :cond_0

    .line 66
    invoke-virtual {p0}, Lcom/androidplot/ui/widget/TextLabelWidget;->pack()V

    .line 68
    :cond_0
    return-void
.end method

.method public pack()V
    .locals 6

    .prologue
    .line 77
    iget-object v1, p0, Lcom/androidplot/ui/widget/TextLabelWidget;->text:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/androidplot/ui/widget/TextLabelWidget;->getLabelPaint()Landroid/graphics/Paint;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/androidplot/util/FontUtils;->getStringDimensions(Ljava/lang/String;Landroid/graphics/Paint;)Landroid/graphics/Rect;

    move-result-object v0

    .line 78
    .local v0, "size":Landroid/graphics/Rect;
    if-nez v0, :cond_0

    .line 93
    :goto_0
    return-void

    .line 82
    :cond_0
    sget-object v1, Lcom/androidplot/ui/widget/TextLabelWidget$1;->$SwitchMap$com$androidplot$ui$TextOrientation:[I

    iget-object v2, p0, Lcom/androidplot/ui/widget/TextLabelWidget;->orientation:Lcom/androidplot/ui/TextOrientation;

    invoke-virtual {v2}, Lcom/androidplot/ui/TextOrientation;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 91
    :goto_1
    invoke-virtual {p0}, Lcom/androidplot/ui/widget/TextLabelWidget;->refreshLayout()V

    goto :goto_0

    .line 84
    :pswitch_0
    new-instance v1, Lcom/androidplot/ui/Size;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    sget-object v3, Lcom/androidplot/ui/SizeMode;->ABSOLUTE:Lcom/androidplot/ui/SizeMode;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v4

    add-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    sget-object v5, Lcom/androidplot/ui/SizeMode;->ABSOLUTE:Lcom/androidplot/ui/SizeMode;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/androidplot/ui/Size;-><init>(FLcom/androidplot/ui/SizeMode;FLcom/androidplot/ui/SizeMode;)V

    invoke-virtual {p0, v1}, Lcom/androidplot/ui/widget/TextLabelWidget;->setSize(Lcom/androidplot/ui/Size;)V

    goto :goto_1

    .line 88
    :pswitch_1
    new-instance v1, Lcom/androidplot/ui/Size;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    sget-object v3, Lcom/androidplot/ui/SizeMode;->ABSOLUTE:Lcom/androidplot/ui/SizeMode;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v4

    add-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    sget-object v5, Lcom/androidplot/ui/SizeMode;->ABSOLUTE:Lcom/androidplot/ui/SizeMode;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/androidplot/ui/Size;-><init>(FLcom/androidplot/ui/SizeMode;FLcom/androidplot/ui/SizeMode;)V

    invoke-virtual {p0, v1}, Lcom/androidplot/ui/widget/TextLabelWidget;->setSize(Lcom/androidplot/ui/Size;)V

    goto :goto_1

    .line 82
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public setAutoPackEnabled(Z)V
    .locals 0
    .param p1, "autoPackEnabled"    # Z

    .prologue
    .line 169
    iput-boolean p1, p0, Lcom/androidplot/ui/widget/TextLabelWidget;->autoPackEnabled:Z

    .line 170
    if-eqz p1, :cond_0

    .line 171
    invoke-virtual {p0}, Lcom/androidplot/ui/widget/TextLabelWidget;->pack()V

    .line 173
    :cond_0
    return-void
.end method

.method public setLabelPaint(Landroid/graphics/Paint;)V
    .locals 1
    .param p1, "labelPaint"    # Landroid/graphics/Paint;

    .prologue
    .line 144
    iput-object p1, p0, Lcom/androidplot/ui/widget/TextLabelWidget;->labelPaint:Landroid/graphics/Paint;

    .line 148
    iget-boolean v0, p0, Lcom/androidplot/ui/widget/TextLabelWidget;->autoPackEnabled:Z

    if-eqz v0, :cond_0

    .line 149
    invoke-virtual {p0}, Lcom/androidplot/ui/widget/TextLabelWidget;->pack()V

    .line 151
    :cond_0
    return-void
.end method

.method public setOrientation(Lcom/androidplot/ui/TextOrientation;)V
    .locals 1
    .param p1, "orientation"    # Lcom/androidplot/ui/TextOrientation;

    .prologue
    .line 158
    iput-object p1, p0, Lcom/androidplot/ui/widget/TextLabelWidget;->orientation:Lcom/androidplot/ui/TextOrientation;

    .line 159
    iget-boolean v0, p0, Lcom/androidplot/ui/widget/TextLabelWidget;->autoPackEnabled:Z

    if-eqz v0, :cond_0

    .line 160
    invoke-virtual {p0}, Lcom/androidplot/ui/widget/TextLabelWidget;->pack()V

    .line 162
    :cond_0
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 177
    iput-object p1, p0, Lcom/androidplot/ui/widget/TextLabelWidget;->text:Ljava/lang/String;

    .line 178
    iget-boolean v0, p0, Lcom/androidplot/ui/widget/TextLabelWidget;->autoPackEnabled:Z

    if-eqz v0, :cond_0

    .line 179
    invoke-virtual {p0}, Lcom/androidplot/ui/widget/TextLabelWidget;->pack()V

    .line 181
    :cond_0
    return-void
.end method
