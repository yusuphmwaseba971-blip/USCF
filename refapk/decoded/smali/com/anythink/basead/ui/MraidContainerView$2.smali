.class final Lcom/anythink/basead/ui/MraidContainerView$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/basead/ui/MraidContainerView;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/ViewTreeObserver;

.field final synthetic b:Lcom/anythink/basead/ui/MraidContainerView;


# direct methods
.method constructor <init>(Lcom/anythink/basead/ui/MraidContainerView;Landroid/view/ViewTreeObserver;)V
    .locals 0

    .line 178
    iput-object p1, p0, Lcom/anythink/basead/ui/MraidContainerView$2;->b:Lcom/anythink/basead/ui/MraidContainerView;

    iput-object p2, p0, Lcom/anythink/basead/ui/MraidContainerView$2;->a:Landroid/view/ViewTreeObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .locals 6

    .line 182
    :try_start_0
    iget-object v0, p0, Lcom/anythink/basead/ui/MraidContainerView$2;->b:Lcom/anythink/basead/ui/MraidContainerView;

    iget-boolean v0, v0, Lcom/anythink/basead/ui/MraidContainerView;->i:Z

    if-nez v0, :cond_2

    .line 183
    iget-object v0, p0, Lcom/anythink/basead/ui/MraidContainerView$2;->b:Lcom/anythink/basead/ui/MraidContainerView;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/anythink/basead/ui/MraidContainerView;->i:Z

    .line 184
    iget-object v0, p0, Lcom/anythink/basead/ui/MraidContainerView$2;->b:Lcom/anythink/basead/ui/MraidContainerView;

    iget-object v0, v0, Lcom/anythink/basead/ui/MraidContainerView;->f:Lcom/anythink/basead/mraid/MraidWebView;

    invoke-virtual {v0}, Lcom/anythink/basead/mraid/MraidWebView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 185
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/core/common/b/o;->f()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/anythink/basead/ui/MraidContainerView$2;->b:Lcom/anythink/basead/ui/MraidContainerView;

    iget-object v2, v2, Lcom/anythink/basead/ui/MraidContainerView;->a:Lcom/anythink/core/common/f/l;

    invoke-virtual {v2}, Lcom/anythink/core/common/f/l;->f()I

    move-result v2

    int-to-float v2, v2

    invoke-static {v1, v2}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 186
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/core/common/b/o;->f()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/anythink/basead/ui/MraidContainerView$2;->b:Lcom/anythink/basead/ui/MraidContainerView;

    iget-object v2, v2, Lcom/anythink/basead/ui/MraidContainerView;->a:Lcom/anythink/core/common/f/l;

    invoke-virtual {v2}, Lcom/anythink/core/common/f/l;->g()I

    move-result v2

    int-to-float v2, v2

    invoke-static {v1, v2}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 187
    iget-object v1, p0, Lcom/anythink/basead/ui/MraidContainerView$2;->b:Lcom/anythink/basead/ui/MraidContainerView;

    invoke-virtual {v1}, Lcom/anythink/basead/ui/MraidContainerView;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/anythink/basead/ui/MraidContainerView$2;->b:Lcom/anythink/basead/ui/MraidContainerView;

    invoke-virtual {v2}, Lcom/anythink/basead/ui/MraidContainerView;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/anythink/basead/ui/MraidContainerView$2;->b:Lcom/anythink/basead/ui/MraidContainerView;

    invoke-virtual {v2}, Lcom/anythink/basead/ui/MraidContainerView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    .line 188
    iget-object v2, p0, Lcom/anythink/basead/ui/MraidContainerView$2;->b:Lcom/anythink/basead/ui/MraidContainerView;

    invoke-virtual {v2}, Lcom/anythink/basead/ui/MraidContainerView;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcom/anythink/basead/ui/MraidContainerView$2;->b:Lcom/anythink/basead/ui/MraidContainerView;

    invoke-virtual {v3}, Lcom/anythink/basead/ui/MraidContainerView;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/anythink/basead/ui/MraidContainerView$2;->b:Lcom/anythink/basead/ui/MraidContainerView;

    invoke-virtual {v3}, Lcom/anythink/basead/ui/MraidContainerView;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    .line 189
    iget-object v3, p0, Lcom/anythink/basead/ui/MraidContainerView$2;->b:Lcom/anythink/basead/ui/MraidContainerView;

    iget-object v3, v3, Lcom/anythink/basead/ui/MraidContainerView;->a:Lcom/anythink/core/common/f/l;

    invoke-virtual {v3}, Lcom/anythink/core/common/f/l;->f()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/anythink/basead/ui/MraidContainerView$2;->b:Lcom/anythink/basead/ui/MraidContainerView;

    iget-object v4, v4, Lcom/anythink/basead/ui/MraidContainerView;->a:Lcom/anythink/core/common/f/l;

    invoke-virtual {v4}, Lcom/anythink/core/common/f/l;->g()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x3f800000    # 1.0f

    mul-float v4, v4, v5

    div-float/2addr v3, v4

    .line 191
    iget v4, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 192
    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 194
    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    int-to-float v1, v1

    iget v2, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    int-to-float v2, v2

    mul-float v2, v2, v5

    div-float/2addr v1, v2

    cmpl-float v2, v1, v3

    if-lez v2, :cond_0

    .line 198
    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    int-to-float v1, v1

    mul-float v1, v1, v3

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    goto :goto_0

    :cond_0
    cmpg-float v1, v1, v3

    if-gez v1, :cond_1

    .line 200
    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    int-to-float v1, v1

    div-float/2addr v1, v3

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    :cond_1
    :goto_0
    const/16 v1, 0x11

    .line 203
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 206
    :cond_2
    iget-object v0, p0, Lcom/anythink/basead/ui/MraidContainerView$2;->a:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method
