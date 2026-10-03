.class public Lcom/anythink/basead/ui/animplayerview/viewpager/CircleIndicatorView;
.super Landroid/view/View;


# instance fields
.field private a:Z

.field private final b:Landroid/graphics/Path;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 23
    invoke-direct {p0, p1, v0}, Lcom/anythink/basead/ui/animplayerview/viewpager/CircleIndicatorView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 27
    invoke-direct {p0, p1, p2, v0}, Lcom/anythink/basead/ui/animplayerview/viewpager/CircleIndicatorView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 32
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/anythink/basead/ui/animplayerview/viewpager/CircleIndicatorView;->b:Landroid/graphics/Path;

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    .line 47
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 48
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 49
    invoke-virtual {p0}, Lcom/anythink/basead/ui/animplayerview/viewpager/CircleIndicatorView;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 50
    invoke-virtual {p0}, Lcom/anythink/basead/ui/animplayerview/viewpager/CircleIndicatorView;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    .line 52
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 54
    iget-object v3, p0, Lcom/anythink/basead/ui/animplayerview/viewpager/CircleIndicatorView;->b:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->reset()V

    .line 55
    iget-object v3, p0, Lcom/anythink/basead/ui/animplayerview/viewpager/CircleIndicatorView;->b:Landroid/graphics/Path;

    int-to-float v0, v0

    int-to-float v1, v1

    int-to-float v2, v2

    sget-object v4, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v3, v0, v1, v2, v4}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 57
    iget-object v0, p0, Lcom/anythink/basead/ui/animplayerview/viewpager/CircleIndicatorView;->b:Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 60
    iget-boolean v0, p0, Lcom/anythink/basead/ui/animplayerview/viewpager/CircleIndicatorView;->a:Z

    if-eqz v0, :cond_0

    const v0, -0x777778

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    .line 61
    :goto_0
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 63
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public setSelectStatus(Z)V
    .locals 0

    .line 76
    iput-boolean p1, p0, Lcom/anythink/basead/ui/animplayerview/viewpager/CircleIndicatorView;->a:Z

    .line 77
    invoke-virtual {p0}, Lcom/anythink/basead/ui/animplayerview/viewpager/CircleIndicatorView;->invalidate()V

    return-void
.end method
