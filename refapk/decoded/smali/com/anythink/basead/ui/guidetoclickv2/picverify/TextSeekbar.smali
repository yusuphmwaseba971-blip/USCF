.class public Lcom/anythink/basead/ui/guidetoclickv2/picverify/TextSeekbar;
.super Landroid/widget/SeekBar;


# instance fields
.field a:Ljava/lang/String;

.field b:Landroid/graphics/RectF;

.field c:F

.field d:Landroid/graphics/Paint$FontMetrics;

.field private e:Landroid/graphics/Paint;

.field private f:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 32
    invoke-direct {p0, p1, p2, v0}, Lcom/anythink/basead/ui/guidetoclickv2/picverify/TextSeekbar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 36
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/anythink/basead/ui/guidetoclickv2/picverify/TextSeekbar;->e:Landroid/graphics/Paint;

    .line 38
    sget-object p3, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    const/high16 p2, 0x41400000    # 12.0f

    .line 39
    invoke-static {p1, p2}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;F)I

    move-result p1

    .line 40
    iget-object p3, p0, Lcom/anythink/basead/ui/guidetoclickv2/picverify/TextSeekbar;->e:Landroid/graphics/Paint;

    int-to-float p1, p1

    invoke-virtual {p3, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 41
    iget-object p1, p0, Lcom/anythink/basead/ui/guidetoclickv2/picverify/TextSeekbar;->e:Landroid/graphics/Paint;

    const/4 p3, 0x1

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 42
    iget-object p1, p0, Lcom/anythink/basead/ui/guidetoclickv2/picverify/TextSeekbar;->e:Landroid/graphics/Paint;

    const-string p3, "#FFFFFF"

    invoke-static {p3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p3

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 43
    invoke-virtual {p0}, Lcom/anythink/basead/ui/guidetoclickv2/picverify/TextSeekbar;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object p3

    invoke-virtual {p3}, Lcom/anythink/core/common/b/o;->f()Landroid/content/Context;

    move-result-object p3

    const-string v0, "myoffer_g2c_seek_to_click"

    const-string v1, "string"

    invoke-static {p3, v0, v1}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p3

    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/anythink/basead/ui/guidetoclickv2/picverify/TextSeekbar;->a:Ljava/lang/String;

    .line 45
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/anythink/basead/ui/guidetoclickv2/picverify/TextSeekbar;->f:Landroid/graphics/Paint;

    const-string p3, "#80000000"

    .line 46
    invoke-static {p3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p3

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 47
    invoke-virtual {p0}, Lcom/anythink/basead/ui/guidetoclickv2/picverify/TextSeekbar;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;F)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/anythink/basead/ui/guidetoclickv2/picverify/TextSeekbar;->c:F

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 52
    iget-object v0, p0, Lcom/anythink/basead/ui/guidetoclickv2/picverify/TextSeekbar;->b:Landroid/graphics/RectF;

    if-nez v0, :cond_0

    .line 53
    new-instance v0, Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/anythink/basead/ui/guidetoclickv2/picverify/TextSeekbar;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/anythink/basead/ui/guidetoclickv2/picverify/TextSeekbar;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/anythink/basead/ui/guidetoclickv2/picverify/TextSeekbar;->b:Landroid/graphics/RectF;

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/anythink/basead/ui/guidetoclickv2/picverify/TextSeekbar;->b:Landroid/graphics/RectF;

    iget v1, p0, Lcom/anythink/basead/ui/guidetoclickv2/picverify/TextSeekbar;->c:F

    iget-object v2, p0, Lcom/anythink/basead/ui/guidetoclickv2/picverify/TextSeekbar;->f:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v1, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 56
    iget-object v0, p0, Lcom/anythink/basead/ui/guidetoclickv2/picverify/TextSeekbar;->d:Landroid/graphics/Paint$FontMetrics;

    if-nez v0, :cond_1

    .line 57
    iget-object v0, p0, Lcom/anythink/basead/ui/guidetoclickv2/picverify/TextSeekbar;->e:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/basead/ui/guidetoclickv2/picverify/TextSeekbar;->d:Landroid/graphics/Paint$FontMetrics;

    .line 59
    :cond_1
    iget-object v0, p0, Lcom/anythink/basead/ui/guidetoclickv2/picverify/TextSeekbar;->d:Landroid/graphics/Paint$FontMetrics;

    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->top:F

    .line 60
    iget-object v1, p0, Lcom/anythink/basead/ui/guidetoclickv2/picverify/TextSeekbar;->d:Landroid/graphics/Paint$FontMetrics;

    iget v1, v1, Landroid/graphics/Paint$FontMetrics;->bottom:F

    .line 61
    invoke-virtual {p0}, Lcom/anythink/basead/ui/guidetoclickv2/picverify/TextSeekbar;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v0, v3

    sub-float/2addr v2, v0

    div-float/2addr v1, v3

    sub-float/2addr v2, v1

    float-to-int v0, v2

    .line 63
    iget-object v1, p0, Lcom/anythink/basead/ui/guidetoclickv2/picverify/TextSeekbar;->a:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/anythink/basead/ui/guidetoclickv2/picverify/TextSeekbar;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    int-to-float v0, v0

    iget-object v3, p0, Lcom/anythink/basead/ui/guidetoclickv2/picverify/TextSeekbar;->e:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v0, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 64
    invoke-super {p0, p1}, Landroid/widget/SeekBar;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method
