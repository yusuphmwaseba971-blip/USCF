.class public Lcom/anythink/basead/ui/CountDownCloseView;
.super Lcom/anythink/basead/ui/CloseImageView;


# instance fields
.field private a:Landroid/graphics/Paint;

.field private b:Landroid/graphics/Paint;

.field private c:F

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:Landroid/graphics/RectF;

.field private j:F

.field private k:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 38
    invoke-direct {p0, p1, v0}, Lcom/anythink/basead/ui/CountDownCloseView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 42
    invoke-direct {p0, p1, p2}, Lcom/anythink/basead/ui/CloseImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1048
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    const/4 p2, 0x1

    const/high16 v0, 0x40200000    # 2.5f

    invoke-static {p2, v0, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    iput p1, p0, Lcom/anythink/basead/ui/CountDownCloseView;->c:F

    const-string p1, "#FF57575A"

    .line 1050
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/anythink/basead/ui/CountDownCloseView;->d:I

    const/4 p1, -0x1

    .line 1051
    iput p1, p0, Lcom/anythink/basead/ui/CountDownCloseView;->e:I

    .line 1052
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/anythink/basead/ui/CountDownCloseView;->a:Landroid/graphics/Paint;

    .line 1053
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1054
    iget-object p1, p0, Lcom/anythink/basead/ui/CountDownCloseView;->a:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 1055
    iget-object p1, p0, Lcom/anythink/basead/ui/CountDownCloseView;->a:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1056
    iget-object p1, p0, Lcom/anythink/basead/ui/CountDownCloseView;->a:Landroid/graphics/Paint;

    iget v0, p0, Lcom/anythink/basead/ui/CountDownCloseView;->c:F

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1058
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/anythink/basead/ui/CountDownCloseView;->b:Landroid/graphics/Paint;

    .line 1059
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1060
    iget-object p1, p0, Lcom/anythink/basead/ui/CountDownCloseView;->b:Landroid/graphics/Paint;

    iget p2, p0, Lcom/anythink/basead/ui/CountDownCloseView;->e:I

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 1062
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/anythink/basead/ui/CountDownCloseView;->i:Landroid/graphics/RectF;

    return-void
.end method

.method private a()V
    .locals 5

    .line 76
    iget v0, p0, Lcom/anythink/basead/ui/CountDownCloseView;->c:F

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float v0, v0, v1

    .line 78
    iget-object v1, p0, Lcom/anythink/basead/ui/CountDownCloseView;->i:Landroid/graphics/RectF;

    const/4 v2, 0x0

    add-float/2addr v2, v0

    iget v3, p0, Lcom/anythink/basead/ui/CountDownCloseView;->f:I

    int-to-float v3, v3

    sub-float/2addr v3, v0

    iget v4, p0, Lcom/anythink/basead/ui/CountDownCloseView;->g:I

    int-to-float v4, v4

    sub-float/2addr v4, v0

    invoke-virtual {v1, v2, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 79
    iget-object v0, p0, Lcom/anythink/basead/ui/CountDownCloseView;->i:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    float-to-int v0, v0

    shr-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/anythink/basead/ui/CountDownCloseView;->h:I

    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 2

    .line 48
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    const/4 v0, 0x1

    const/high16 v1, 0x40200000    # 2.5f

    invoke-static {v0, v1, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    iput p1, p0, Lcom/anythink/basead/ui/CountDownCloseView;->c:F

    const-string p1, "#FF57575A"

    .line 50
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/anythink/basead/ui/CountDownCloseView;->d:I

    const/4 p1, -0x1

    .line 51
    iput p1, p0, Lcom/anythink/basead/ui/CountDownCloseView;->e:I

    .line 52
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/anythink/basead/ui/CountDownCloseView;->a:Landroid/graphics/Paint;

    .line 53
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 54
    iget-object p1, p0, Lcom/anythink/basead/ui/CountDownCloseView;->a:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 55
    iget-object p1, p0, Lcom/anythink/basead/ui/CountDownCloseView;->a:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 56
    iget-object p1, p0, Lcom/anythink/basead/ui/CountDownCloseView;->a:Landroid/graphics/Paint;

    iget v1, p0, Lcom/anythink/basead/ui/CountDownCloseView;->c:F

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 58
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/anythink/basead/ui/CountDownCloseView;->b:Landroid/graphics/Paint;

    .line 59
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 60
    iget-object p1, p0, Lcom/anythink/basead/ui/CountDownCloseView;->b:Landroid/graphics/Paint;

    iget v0, p0, Lcom/anythink/basead/ui/CountDownCloseView;->e:I

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 62
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/anythink/basead/ui/CountDownCloseView;->i:Landroid/graphics/RectF;

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    .line 105
    invoke-super {p0, p1}, Lcom/anythink/basead/ui/CloseImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 108
    iget v0, p0, Lcom/anythink/basead/ui/CountDownCloseView;->j:F

    const/high16 v1, 0x43b40000    # 360.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/anythink/basead/ui/CountDownCloseView;->a:Landroid/graphics/Paint;

    iget v1, p0, Lcom/anythink/basead/ui/CountDownCloseView;->d:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 110
    iget-object v3, p0, Lcom/anythink/basead/ui/CountDownCloseView;->i:Landroid/graphics/RectF;

    const/4 v4, 0x0

    const/high16 v5, 0x43b40000    # 360.0f

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/anythink/basead/ui/CountDownCloseView;->a:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 112
    iget-object v0, p0, Lcom/anythink/basead/ui/CountDownCloseView;->a:Landroid/graphics/Paint;

    iget v1, p0, Lcom/anythink/basead/ui/CountDownCloseView;->e:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 113
    iget-object v3, p0, Lcom/anythink/basead/ui/CountDownCloseView;->i:Landroid/graphics/RectF;

    const/high16 v4, -0x3d4c0000    # -90.0f

    iget v5, p0, Lcom/anythink/basead/ui/CountDownCloseView;->j:F

    iget-object v7, p0, Lcom/anythink/basead/ui/CountDownCloseView;->a:Landroid/graphics/Paint;

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 67
    invoke-super {p0, p1, p2, p3, p4}, Lcom/anythink/basead/ui/CloseImageView;->onSizeChanged(IIII)V

    .line 69
    iput p1, p0, Lcom/anythink/basead/ui/CountDownCloseView;->f:I

    .line 70
    iput p2, p0, Lcom/anythink/basead/ui/CountDownCloseView;->g:I

    .line 72
    invoke-direct {p0}, Lcom/anythink/basead/ui/CountDownCloseView;->a()V

    return-void
.end method

.method public refresh(J)V
    .locals 5

    .line 87
    iget-wide v0, p0, Lcom/anythink/basead/ui/CountDownCloseView;->k:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const/high16 v2, 0x43b40000    # 360.0f

    long-to-float p1, p1

    const/high16 p2, 0x3f800000    # 1.0f

    mul-float p1, p1, p2

    long-to-float p2, v0

    div-float/2addr p1, p2

    mul-float p1, p1, v2

    .line 88
    iput p1, p0, Lcom/anythink/basead/ui/CountDownCloseView;->j:F

    .line 89
    invoke-virtual {p0}, Lcom/anythink/basead/ui/CountDownCloseView;->postInvalidate()V

    :cond_0
    return-void
.end method

.method public setDuration(J)V
    .locals 0

    .line 83
    iput-wide p1, p0, Lcom/anythink/basead/ui/CountDownCloseView;->k:J

    return-void
.end method

.method public setThickInPx(I)V
    .locals 1

    int-to-float p1, p1

    .line 98
    iput p1, p0, Lcom/anythink/basead/ui/CountDownCloseView;->c:F

    .line 99
    iget-object v0, p0, Lcom/anythink/basead/ui/CountDownCloseView;->a:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 100
    invoke-direct {p0}, Lcom/anythink/basead/ui/CountDownCloseView;->a()V

    return-void
.end method

.method public setUnderRingColor(I)V
    .locals 0

    .line 94
    iput p1, p0, Lcom/anythink/basead/ui/CountDownCloseView;->d:I

    return-void
.end method
