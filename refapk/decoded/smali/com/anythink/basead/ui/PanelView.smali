.class public Lcom/anythink/basead/ui/PanelView;
.super Landroid/widget/RelativeLayout;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/anythink/basead/ui/PanelView$a;
    }
.end annotation


# static fields
.field public static final TYPE_FULL_SCREEN_BANNER:I = 0x0

.field public static final TYPE_FULL_SCREEN_EMPTY_INFO:I = 0x8

.field public static final TYPE_FULL_SCREEN_ENDCARD_HORIZONTAL_LANDSCAPE:I = 0x6

.field public static final TYPE_FULL_SCREEN_ENDCARD_HORIZONTAL_PORTRAIT:I = 0x1

.field public static final TYPE_FULL_SCREEN_ENDCARD_VERTICAL_LANDSCAPE:I = 0x2

.field public static final TYPE_FULL_SCREEN_ENDCARD_VERTICAL_PORTRAIT:I = 0x5

.field public static final TYPE_HALF_SCREEN_EMPTY_INFO:I = 0x7

.field public static final TYPE_HALF_SCREEN_HORIZONTAL:I = 0x4

.field public static final TYPE_HALF_SCREEN_VERTICAL:I = 0x3

.field public static final TYPE_LETTER:I = 0x9


# instance fields
.field private a:Landroid/view/View;

.field private b:Landroid/widget/ImageView;

.field private c:Landroid/widget/ImageView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/Button;

.field private g:Lcom/anythink/basead/ui/BaseShakeView;

.field private h:Lcom/anythink/basead/ui/PanelView$a;

.field private i:I

.field private j:Lcom/anythink/core/common/f/n;

.field private k:Lcom/anythink/core/common/f/m;

.field private l:Lcom/anythink/core/common/f/l;

.field private m:I

.field private n:Landroid/view/ViewGroup;

.field private o:Landroid/widget/TextView;

.field private p:Landroid/widget/TextView;

.field private q:Landroid/widget/TextView;

.field private r:Landroid/widget/TextView;

.field private s:Z

.field private t:Z

.field private u:Z

.field private v:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private w:Lcom/anythink/basead/ui/d/a;

.field private final x:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 94
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 74
    iput p1, p0, Lcom/anythink/basead/ui/PanelView;->m:I

    .line 84
    iput-boolean p1, p0, Lcom/anythink/basead/ui/PanelView;->s:Z

    .line 85
    iput-boolean p1, p0, Lcom/anythink/basead/ui/PanelView;->t:Z

    .line 86
    iput-boolean p1, p0, Lcom/anythink/basead/ui/PanelView;->u:Z

    .line 496
    new-instance p1, Lcom/anythink/basead/ui/PanelView$9;

    invoke-direct {p1, p0}, Lcom/anythink/basead/ui/PanelView$9;-><init>(Lcom/anythink/basead/ui/PanelView;)V

    iput-object p1, p0, Lcom/anythink/basead/ui/PanelView;->x:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic a(Lcom/anythink/basead/ui/PanelView;)Lcom/anythink/basead/ui/PanelView$a;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/anythink/basead/ui/PanelView;->h:Lcom/anythink/basead/ui/PanelView$a;

    return-object p0
.end method

.method private a(Lcom/anythink/core/common/f/l;)V
    .locals 8

    .line 277
    iget-object v0, p0, Lcom/anythink/basead/ui/PanelView;->b:Landroid/widget/ImageView;

    const/4 v1, 0x1

    const/16 v2, 0x8

    if-eqz v0, :cond_1

    .line 278
    invoke-virtual {p1}, Lcom/anythink/core/common/f/l;->w()Ljava/lang/String;

    move-result-object v0

    .line 279
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 280
    iget-object v3, p0, Lcom/anythink/basead/ui/PanelView;->b:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 281
    iget v4, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 282
    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 283
    invoke-virtual {p0}, Lcom/anythink/basead/ui/PanelView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/anythink/core/common/res/b;->a(Landroid/content/Context;)Lcom/anythink/core/common/res/b;

    move-result-object v5

    new-instance v6, Lcom/anythink/core/common/res/e;

    invoke-direct {v6, v1, v0}, Lcom/anythink/core/common/res/e;-><init>(ILjava/lang/String;)V

    new-instance v7, Lcom/anythink/basead/ui/PanelView$2;

    invoke-direct {v7, p0, v0}, Lcom/anythink/basead/ui/PanelView$2;-><init>(Lcom/anythink/basead/ui/PanelView;Ljava/lang/String;)V

    invoke-virtual {v5, v6, v4, v3, v7}, Lcom/anythink/core/common/res/b;->a(Lcom/anythink/core/common/res/e;IILcom/anythink/core/common/res/b$a;)V

    .line 299
    :cond_0
    invoke-virtual {p1}, Lcom/anythink/core/common/f/l;->w()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 300
    iget-object v0, p0, Lcom/anythink/basead/ui/PanelView;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 304
    :cond_1
    iget-object v0, p0, Lcom/anythink/basead/ui/PanelView;->c:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    .line 305
    invoke-virtual {p1}, Lcom/anythink/core/common/f/l;->y()Ljava/lang/String;

    move-result-object v0

    .line 306
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 307
    iget-object v3, p0, Lcom/anythink/basead/ui/PanelView;->c:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 308
    iget v4, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 309
    iget v5, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 310
    invoke-virtual {p0}, Lcom/anythink/basead/ui/PanelView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/anythink/core/common/res/b;->a(Landroid/content/Context;)Lcom/anythink/core/common/res/b;

    move-result-object v6

    new-instance v7, Lcom/anythink/core/common/res/e;

    invoke-direct {v7, v1, v0}, Lcom/anythink/core/common/res/e;-><init>(ILjava/lang/String;)V

    new-instance v1, Lcom/anythink/basead/ui/PanelView$3;

    invoke-direct {v1, p0, v0, v3}, Lcom/anythink/basead/ui/PanelView$3;-><init>(Lcom/anythink/basead/ui/PanelView;Ljava/lang/String;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v6, v7, v4, v5, v1}, Lcom/anythink/core/common/res/b;->a(Lcom/anythink/core/common/res/e;IILcom/anythink/core/common/res/b$a;)V

    goto :goto_0

    .line 337
    :cond_2
    iget-object v0, p0, Lcom/anythink/basead/ui/PanelView;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 341
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/anythink/basead/ui/PanelView;->e:Landroid/widget/TextView;

    if-eqz v0, :cond_5

    .line 342
    invoke-virtual {p1}, Lcom/anythink/core/common/f/l;->v()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 343
    iget-object v0, p0, Lcom/anythink/basead/ui/PanelView;->e:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/anythink/core/common/f/l;->v()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 345
    :cond_4
    iget-object v0, p0, Lcom/anythink/basead/ui/PanelView;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 349
    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/anythink/basead/ui/PanelView;->d:Landroid/widget/TextView;

    if-eqz v0, :cond_7

    .line 350
    invoke-virtual {p1}, Lcom/anythink/core/common/f/l;->u()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 351
    iget-object v0, p0, Lcom/anythink/basead/ui/PanelView;->d:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/anythink/core/common/f/l;->u()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 353
    :cond_6
    iget-object v0, p0, Lcom/anythink/basead/ui/PanelView;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 357
    :cond_7
    :goto_2
    iget-object v0, p0, Lcom/anythink/basead/ui/PanelView;->f:Landroid/widget/Button;

    if-eqz v0, :cond_9

    .line 358
    invoke-virtual {p1}, Lcom/anythink/core/common/f/l;->z()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 359
    iget-object v0, p0, Lcom/anythink/basead/ui/PanelView;->f:Landroid/widget/Button;

    invoke-virtual {p1}, Lcom/anythink/core/common/f/l;->z()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 361
    :cond_8
    iget-object v0, p0, Lcom/anythink/basead/ui/PanelView;->f:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/anythink/basead/ui/PanelView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/anythink/basead/ui/PanelView;->l:Lcom/anythink/core/common/f/l;

    invoke-static {v1, v2}, Lcom/anythink/basead/a/d;->a(Landroid/content/Context;Lcom/anythink/core/common/f/l;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 367
    :cond_9
    :goto_3
    invoke-direct {p0, p1}, Lcom/anythink/basead/ui/PanelView;->b(Lcom/anythink/core/common/f/l;)V

    return-void
.end method

.method private a()Z
    .locals 1

    .line 199
    iget-boolean v0, p0, Lcom/anythink/basead/ui/PanelView;->s:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/anythink/basead/ui/PanelView;->t:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic b(Lcom/anythink/basead/ui/PanelView;)Landroid/widget/ImageView;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/anythink/basead/ui/PanelView;->b:Landroid/widget/ImageView;

    return-object p0
.end method

.method private b()V
    .locals 10

    .line 203
    invoke-direct {p0}, Lcom/anythink/basead/ui/PanelView;->d()V

    .line 204
    iget-object v0, p0, Lcom/anythink/basead/ui/PanelView;->l:Lcom/anythink/core/common/f/l;

    .line 2277
    iget-object v1, p0, Lcom/anythink/basead/ui/PanelView;->b:Landroid/widget/ImageView;

    const/4 v2, 0x1

    const/16 v3, 0x8

    if-eqz v1, :cond_1

    .line 2278
    invoke-virtual {v0}, Lcom/anythink/core/common/f/l;->w()Ljava/lang/String;

    move-result-object v1

    .line 2279
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 2280
    iget-object v4, p0, Lcom/anythink/basead/ui/PanelView;->b:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .line 2281
    iget v5, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 2282
    iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 2283
    invoke-virtual {p0}, Lcom/anythink/basead/ui/PanelView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/anythink/core/common/res/b;->a(Landroid/content/Context;)Lcom/anythink/core/common/res/b;

    move-result-object v6

    new-instance v7, Lcom/anythink/core/common/res/e;

    invoke-direct {v7, v2, v1}, Lcom/anythink/core/common/res/e;-><init>(ILjava/lang/String;)V

    new-instance v8, Lcom/anythink/basead/ui/PanelView$2;

    invoke-direct {v8, p0, v1}, Lcom/anythink/basead/ui/PanelView$2;-><init>(Lcom/anythink/basead/ui/PanelView;Ljava/lang/String;)V

    invoke-virtual {v6, v7, v5, v4, v8}, Lcom/anythink/core/common/res/b;->a(Lcom/anythink/core/common/res/e;IILcom/anythink/core/common/res/b$a;)V

    .line 2299
    :cond_0
    invoke-virtual {v0}, Lcom/anythink/core/common/f/l;->w()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2300
    iget-object v1, p0, Lcom/anythink/basead/ui/PanelView;->b:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2304
    :cond_1
    iget-object v1, p0, Lcom/anythink/basead/ui/PanelView;->c:Landroid/widget/ImageView;

    if-eqz v1, :cond_3

    .line 2305
    invoke-virtual {v0}, Lcom/anythink/core/common/f/l;->y()Ljava/lang/String;

    move-result-object v1

    .line 2306
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 2307
    iget-object v4, p0, Lcom/anythink/basead/ui/PanelView;->c:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .line 2308
    iget v5, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 2309
    iget v6, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 2310
    invoke-virtual {p0}, Lcom/anythink/basead/ui/PanelView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/anythink/core/common/res/b;->a(Landroid/content/Context;)Lcom/anythink/core/common/res/b;

    move-result-object v7

    new-instance v8, Lcom/anythink/core/common/res/e;

    invoke-direct {v8, v2, v1}, Lcom/anythink/core/common/res/e;-><init>(ILjava/lang/String;)V

    new-instance v9, Lcom/anythink/basead/ui/PanelView$3;

    invoke-direct {v9, p0, v1, v4}, Lcom/anythink/basead/ui/PanelView$3;-><init>(Lcom/anythink/basead/ui/PanelView;Ljava/lang/String;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v7, v8, v5, v6, v9}, Lcom/anythink/core/common/res/b;->a(Lcom/anythink/core/common/res/e;IILcom/anythink/core/common/res/b$a;)V

    goto :goto_0

    .line 2337
    :cond_2
    iget-object v1, p0, Lcom/anythink/basead/ui/PanelView;->c:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2341
    :cond_3
    :goto_0
    iget-object v1, p0, Lcom/anythink/basead/ui/PanelView;->e:Landroid/widget/TextView;

    if-eqz v1, :cond_5

    .line 2342
    invoke-virtual {v0}, Lcom/anythink/core/common/f/l;->v()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 2343
    iget-object v1, p0, Lcom/anythink/basead/ui/PanelView;->e:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/anythink/core/common/f/l;->v()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 2345
    :cond_4
    iget-object v1, p0, Lcom/anythink/basead/ui/PanelView;->e:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2349
    :cond_5
    :goto_1
    iget-object v1, p0, Lcom/anythink/basead/ui/PanelView;->d:Landroid/widget/TextView;

    if-eqz v1, :cond_7

    .line 2350
    invoke-virtual {v0}, Lcom/anythink/core/common/f/l;->u()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 2351
    iget-object v1, p0, Lcom/anythink/basead/ui/PanelView;->d:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/anythink/core/common/f/l;->u()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 2353
    :cond_6
    iget-object v1, p0, Lcom/anythink/basead/ui/PanelView;->d:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2357
    :cond_7
    :goto_2
    iget-object v1, p0, Lcom/anythink/basead/ui/PanelView;->f:Landroid/widget/Button;

    if-eqz v1, :cond_9

    .line 2358
    invoke-virtual {v0}, Lcom/anythink/core/common/f/l;->z()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 2359
    iget-object v1, p0, Lcom/anythink/basead/ui/PanelView;->f:Landroid/widget/Button;

    invoke-virtual {v0}, Lcom/anythink/core/common/f/l;->z()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 2361
    :cond_8
    iget-object v1, p0, Lcom/anythink/basead/ui/PanelView;->f:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/anythink/basead/ui/PanelView;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/anythink/basead/ui/PanelView;->l:Lcom/anythink/core/common/f/l;

    invoke-static {v4, v5}, Lcom/anythink/basead/a/d;->a(Landroid/content/Context;Lcom/anythink/core/common/f/l;)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setText(I)V

    .line 2367
    :cond_9
    :goto_3
    invoke-direct {p0, v0}, Lcom/anythink/basead/ui/PanelView;->b(Lcom/anythink/core/common/f/l;)V

    .line 2454
    iget-object v0, p0, Lcom/anythink/basead/ui/PanelView;->b:Landroid/widget/ImageView;

    if-eqz v0, :cond_a

    .line 2455
    iget-object v1, p0, Lcom/anythink/basead/ui/PanelView;->x:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2456
    iget-object v0, p0, Lcom/anythink/basead/ui/PanelView;->v:Ljava/util/List;

    iget-object v1, p0, Lcom/anythink/basead/ui/PanelView;->b:Landroid/widget/ImageView;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2458
    :cond_a
    iget-object v0, p0, Lcom/anythink/basead/ui/PanelView;->d:Landroid/widget/TextView;

    if-eqz v0, :cond_b

    .line 2459
    iget-object v1, p0, Lcom/anythink/basead/ui/PanelView;->x:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2460
    iget-object v0, p0, Lcom/anythink/basead/ui/PanelView;->v:Ljava/util/List;

    iget-object v1, p0, Lcom/anythink/basead/ui/PanelView;->d:Landroid/widget/TextView;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2462
    :cond_b
    iget-object v0, p0, Lcom/anythink/basead/ui/PanelView;->e:Landroid/widget/TextView;

    if-eqz v0, :cond_c

    .line 2463
    iget-object v1, p0, Lcom/anythink/basead/ui/PanelView;->x:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2464
    iget-object v0, p0, Lcom/anythink/basead/ui/PanelView;->v:Ljava/util/List;

    iget-object v1, p0, Lcom/anythink/basead/ui/PanelView;->e:Landroid/widget/TextView;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2467
    :cond_c
    iget-object v0, p0, Lcom/anythink/basead/ui/PanelView;->f:Landroid/widget/Button;

    if-eqz v0, :cond_d

    .line 2468
    iget-object v1, p0, Lcom/anythink/basead/ui/PanelView;->x:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2469
    iget-object v0, p0, Lcom/anythink/basead/ui/PanelView;->v:Ljava/util/List;

    iget-object v1, p0, Lcom/anythink/basead/ui/PanelView;->f:Landroid/widget/Button;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2473
    :cond_d
    iget-object v0, p0, Lcom/anythink/basead/ui/PanelView;->c:Landroid/widget/ImageView;

    if-eqz v0, :cond_e

    .line 2474
    iget-object v1, p0, Lcom/anythink/basead/ui/PanelView;->x:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2475
    iget-object v0, p0, Lcom/anythink/basead/ui/PanelView;->v:Ljava/util/List;

    iget-object v1, p0, Lcom/anythink/basead/ui/PanelView;->c:Landroid/widget/ImageView;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2477
    :cond_e
    iget-object v0, p0, Lcom/anythink/basead/ui/PanelView;->g:Lcom/anythink/basead/ui/BaseShakeView;

    if-eqz v0, :cond_f

    iget-boolean v1, p0, Lcom/anythink/basead/ui/PanelView;->u:Z

    if-eqz v1, :cond_f

    .line 2478
    iget-object v1, p0, Lcom/anythink/basead/ui/PanelView;->x:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/anythink/basead/ui/BaseShakeView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2479
    iget-object v0, p0, Lcom/anythink/basead/ui/PanelView;->g:Lcom/anythink/basead/ui/BaseShakeView;

    new-instance v1, Lcom/anythink/basead/ui/PanelView$8;

    invoke-direct {v1, p0}, Lcom/anythink/basead/ui/PanelView$8;-><init>(Lcom/anythink/basead/ui/PanelView;)V

    iget-object v4, p0, Lcom/anythink/basead/ui/PanelView;->j:Lcom/anythink/core/common/f/n;

    invoke-virtual {v0, v1, v4}, Lcom/anythink/basead/ui/BaseShakeView;->setOnShakeListener(Lcom/anythink/basead/ui/BaseShakeView$a;Lcom/anythink/core/common/f/n;)V

    .line 2486
    :cond_f
    iget-object v0, p0, Lcom/anythink/basead/ui/PanelView;->a:Landroid/view/View;

    invoke-virtual {p0}, Lcom/anythink/basead/ui/PanelView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v4, "myoffer_panel_view_blank"

    const-string v5, "id"

    invoke-static {v1, v4, v5}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 2488
    iget-object v1, p0, Lcom/anythink/basead/ui/PanelView;->x:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2489
    iget-object v1, p0, Lcom/anythink/basead/ui/PanelView;->v:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 2491
    :cond_10
    iget-object v0, p0, Lcom/anythink/basead/ui/PanelView;->a:Landroid/view/View;

    iget-object v1, p0, Lcom/anythink/basead/ui/PanelView;->x:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2492
    iget-object v0, p0, Lcom/anythink/basead/ui/PanelView;->v:Ljava/util/List;

    iget-object v1, p0, Lcom/anythink/basead/ui/PanelView;->a:Landroid/view/View;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3225
    :goto_4
    iget-object v0, p0, Lcom/anythink/basead/ui/PanelView;->b:Landroid/widget/ImageView;

    instance-of v1, v0, Lcom/anythink/core/common/ui/component/RoundImageView;

    if-eqz v1, :cond_12

    .line 3226
    check-cast v0, Lcom/anythink/core/common/ui/component/RoundImageView;

    invoke-virtual {v0, v2}, Lcom/anythink/core/common/ui/component/RoundImageView;->setNeedRadiu(Z)V

    .line 3227
    iget v0, p0, Lcom/anythink/basead/ui/PanelView;->m:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_11

    const/4 v1, 0x6

    if-eq v0, v1, :cond_11

    .line 3233
    iget-object v0, p0, Lcom/anythink/basead/ui/PanelView;->b:Landroid/widget/ImageView;

    check-cast v0, Lcom/anythink/core/common/ui/component/RoundImageView;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/ui/component/RoundImageView;->setRadiusInDip(I)V

    goto :goto_5

    .line 3230
    :cond_11
    iget-object v0, p0, Lcom/anythink/basead/ui/PanelView;->b:Landroid/widget/ImageView;

    check-cast v0, Lcom/anythink/core/common/ui/component/RoundImageView;

    invoke-virtual {v0, v3}, Lcom/anythink/core/common/ui/component/RoundImageView;->setRadiusInDip(I)V

    .line 3236
    :goto_5
    iget-object v0, p0, Lcom/anythink/basead/ui/PanelView;->b:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->invalidate()V

    .line 210
    :cond_12
    iget-object v0, p0, Lcom/anythink/basead/ui/PanelView;->w:Lcom/anythink/basead/ui/d/a;

    if-eqz v0, :cond_13

    .line 211
    iget v1, p0, Lcom/anythink/basead/ui/PanelView;->m:I

    invoke-virtual {v0, v1}, Lcom/anythink/basead/ui/d/a;->a(I)Lcom/anythink/basead/ui/d/a;

    move-result-object v0

    new-instance v1, Lcom/anythink/basead/ui/PanelView$1;

    invoke-direct {v1, p0}, Lcom/anythink/basead/ui/PanelView$1;-><init>(Lcom/anythink/basead/ui/PanelView;)V

    .line 212
    invoke-virtual {v0, v1}, Lcom/anythink/basead/ui/d/a;->a(Lcom/anythink/basead/ui/c/a;)Lcom/anythink/basead/ui/d/a;

    move-result-object v0

    .line 220
    invoke-virtual {p0}, Lcom/anythink/basead/ui/PanelView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/anythink/basead/ui/PanelView;->a:Landroid/view/View;

    invoke-virtual {v0, v1, v2}, Lcom/anythink/basead/ui/d/a;->a(Landroid/content/Context;Landroid/view/View;)V

    :cond_13
    return-void
.end method

.method private b(Lcom/anythink/core/common/f/l;)V
    .locals 6

    .line 371
    iget-object v0, p0, Lcom/anythink/basead/ui/PanelView;->n:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    return-void

    .line 374
    :cond_0
    invoke-direct {p0}, Lcom/anythink/basead/ui/PanelView;->a()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 375
    iget-object v0, p0, Lcom/anythink/basead/ui/PanelView;->o:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/anythink/basead/ui/PanelView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 376
    invoke-virtual {p0}, Lcom/anythink/basead/ui/PanelView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "myoffer_panel_version"

    const-string v4, "string"

    invoke-static {v2, v3, v4}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    .line 377
    invoke-virtual {p1}, Lcom/anythink/core/common/f/l;->J()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 375
    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 380
    iget-object v0, p0, Lcom/anythink/basead/ui/PanelView;->p:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/anythink/core/common/f/l;->I()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 382
    iget-object v0, p0, Lcom/anythink/basead/ui/PanelView;->r:Landroid/widget/TextView;

    new-instance v1, Lcom/anythink/basead/ui/PanelView$4;

    invoke-direct {v1, p0, p1}, Lcom/anythink/basead/ui/PanelView$4;-><init>(Lcom/anythink/basead/ui/PanelView;Lcom/anythink/core/common/f/l;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 388
    iget-object v0, p0, Lcom/anythink/basead/ui/PanelView;->q:Landroid/widget/TextView;

    new-instance v1, Lcom/anythink/basead/ui/PanelView$5;

    invoke-direct {v1, p0, p1}, Lcom/anythink/basead/ui/PanelView$5;-><init>(Lcom/anythink/basead/ui/PanelView;Lcom/anythink/core/common/f/l;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 395
    iget-object p1, p0, Lcom/anythink/basead/ui/PanelView;->o:Landroid/widget/TextView;

    new-instance v0, Lcom/anythink/basead/ui/PanelView$6;

    invoke-direct {v0, p0}, Lcom/anythink/basead/ui/PanelView$6;-><init>(Lcom/anythink/basead/ui/PanelView;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 401
    iget-object p1, p0, Lcom/anythink/basead/ui/PanelView;->p:Landroid/widget/TextView;

    new-instance v0, Lcom/anythink/basead/ui/PanelView$7;

    invoke-direct {v0, p0}, Lcom/anythink/basead/ui/PanelView$7;-><init>(Lcom/anythink/basead/ui/PanelView;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 408
    iget-object p1, p0, Lcom/anythink/basead/ui/PanelView;->n:Landroid/view/ViewGroup;

    if-eqz p1, :cond_1

    .line 409
    invoke-virtual {p1, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 411
    :cond_1
    iget-object p1, p0, Lcom/anythink/basead/ui/PanelView;->o:Landroid/widget/TextView;

    if-eqz p1, :cond_2

    .line 412
    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 414
    :cond_2
    iget-object p1, p0, Lcom/anythink/basead/ui/PanelView;->p:Landroid/widget/TextView;

    if-eqz p1, :cond_3

    .line 415
    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 417
    :cond_3
    iget-object p1, p0, Lcom/anythink/basead/ui/PanelView;->r:Landroid/widget/TextView;

    if-eqz p1, :cond_4

    .line 418
    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 420
    :cond_4
    iget-object p1, p0, Lcom/anythink/basead/ui/PanelView;->q:Landroid/widget/TextView;

    if-eqz p1, :cond_b

    .line 421
    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    return-void

    .line 424
    :cond_5
    iget-object p1, p0, Lcom/anythink/basead/ui/PanelView;->n:Landroid/view/ViewGroup;

    const/16 v0, 0x8

    if-eqz p1, :cond_6

    .line 425
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 427
    :cond_6
    iget-object p1, p0, Lcom/anythink/basead/ui/PanelView;->o:Landroid/widget/TextView;

    if-eqz p1, :cond_7

    .line 428
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 430
    :cond_7
    iget-object p1, p0, Lcom/anythink/basead/ui/PanelView;->p:Landroid/widget/TextView;

    if-eqz p1, :cond_8

    .line 431
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 433
    :cond_8
    iget-object p1, p0, Lcom/anythink/basead/ui/PanelView;->r:Landroid/widget/TextView;

    if-eqz p1, :cond_9

    .line 434
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 436
    :cond_9
    iget-object p1, p0, Lcom/anythink/basead/ui/PanelView;->q:Landroid/widget/TextView;

    if-eqz p1, :cond_a

    .line 437
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 440
    :cond_a
    :try_start_0
    invoke-virtual {p0}, Lcom/anythink/basead/ui/PanelView;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "myoffer_four_element_container_bg"

    const-string v1, "id"

    invoke-static {p1, v0, v1}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/anythink/basead/ui/PanelView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_b

    const/4 v0, 0x0

    .line 442
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_b
    return-void
.end method

.method static synthetic c(Lcom/anythink/basead/ui/PanelView;)Landroid/widget/ImageView;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/anythink/basead/ui/PanelView;->c:Landroid/widget/ImageView;

    return-object p0
.end method

.method private c()V
    .locals 2

    .line 225
    iget-object v0, p0, Lcom/anythink/basead/ui/PanelView;->b:Landroid/widget/ImageView;

    instance-of v1, v0, Lcom/anythink/core/common/ui/component/RoundImageView;

    if-eqz v1, :cond_1

    .line 226
    check-cast v0, Lcom/anythink/core/common/ui/component/RoundImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/ui/component/RoundImageView;->setNeedRadiu(Z)V

    .line 227
    iget v0, p0, Lcom/anythink/basead/ui/PanelView;->m:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    .line 233
    iget-object v0, p0, Lcom/anythink/basead/ui/PanelView;->b:Landroid/widget/ImageView;

    check-cast v0, Lcom/anythink/core/common/ui/component/RoundImageView;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/ui/component/RoundImageView;->setRadiusInDip(I)V

    goto :goto_0

    .line 230
    :cond_0
    iget-object v0, p0, Lcom/anythink/basead/ui/PanelView;->b:Landroid/widget/ImageView;

    check-cast v0, Lcom/anythink/core/common/ui/component/RoundImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/ui/component/RoundImageView;->setRadiusInDip(I)V

    .line 236
    :goto_0
    iget-object v0, p0, Lcom/anythink/basead/ui/PanelView;->b:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->invalidate()V

    :cond_1
    return-void
.end method

.method static synthetic d(Lcom/anythink/basead/ui/PanelView;)Lcom/anythink/core/common/f/n;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/anythink/basead/ui/PanelView;->j:Lcom/anythink/core/common/f/n;

    return-object p0
.end method

.method private d()V
    .locals 4

    .line 243
    iget-object v0, p0, Lcom/anythink/basead/ui/PanelView;->v:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 245
    iget-object v0, p0, Lcom/anythink/basead/ui/PanelView;->a:Landroid/view/View;

    invoke-virtual {p0}, Lcom/anythink/basead/ui/PanelView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "myoffer_iv_banner_icon"

    const-string v3, "id"

    invoke-static {v1, v2, v3}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/anythink/basead/ui/PanelView;->b:Landroid/widget/ImageView;

    .line 246
    iget-object v0, p0, Lcom/anythink/basead/ui/PanelView;->a:Landroid/view/View;

    invoke-virtual {p0}, Lcom/anythink/basead/ui/PanelView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "myoffer_tv_banner_title"

    invoke-static {v1, v2, v3}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/anythink/basead/ui/PanelView;->d:Landroid/widget/TextView;

    .line 247
    iget-object v0, p0, Lcom/anythink/basead/ui/PanelView;->a:Landroid/view/View;

    invoke-virtual {p0}, Lcom/anythink/basead/ui/PanelView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "myoffer_tv_banner_desc"

    invoke-static {v1, v2, v3}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/anythink/basead/ui/PanelView;->e:Landroid/widget/TextView;

    .line 248
    iget-object v0, p0, Lcom/anythink/basead/ui/PanelView;->a:Landroid/view/View;

    invoke-virtual {p0}, Lcom/anythink/basead/ui/PanelView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "myoffer_btn_banner_cta"

    invoke-static {v1, v2, v3}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/anythink/basead/ui/PanelView;->f:Landroid/widget/Button;

    .line 249
    iget-object v0, p0, Lcom/anythink/basead/ui/PanelView;->a:Landroid/view/View;

    invoke-virtual {p0}, Lcom/anythink/basead/ui/PanelView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "myoffer_ad_logo"

    invoke-static {v1, v2, v3}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/anythink/basead/ui/PanelView;->c:Landroid/widget/ImageView;

    .line 251
    iget-object v0, p0, Lcom/anythink/basead/ui/PanelView;->a:Landroid/view/View;

    invoke-virtual {p0}, Lcom/anythink/basead/ui/PanelView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "myoffer_four_element_container"

    invoke-static {v1, v2, v3}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/anythink/basead/ui/PanelView;->n:Landroid/view/ViewGroup;

    .line 252
    iget-object v0, p0, Lcom/anythink/basead/ui/PanelView;->a:Landroid/view/View;

    invoke-virtual {p0}, Lcom/anythink/basead/ui/PanelView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "myoffer_version_name"

    invoke-static {v1, v2, v3}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/anythink/basead/ui/PanelView;->o:Landroid/widget/TextView;

    .line 253
    iget-object v0, p0, Lcom/anythink/basead/ui/PanelView;->a:Landroid/view/View;

    invoke-virtual {p0}, Lcom/anythink/basead/ui/PanelView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "myoffer_publisher_name"

    invoke-static {v1, v2, v3}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/anythink/basead/ui/PanelView;->p:Landroid/widget/TextView;

    .line 254
    iget-object v0, p0, Lcom/anythink/basead/ui/PanelView;->a:Landroid/view/View;

    invoke-virtual {p0}, Lcom/anythink/basead/ui/PanelView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "myoffer_permission_manage"

    invoke-static {v1, v2, v3}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/anythink/basead/ui/PanelView;->q:Landroid/widget/TextView;

    .line 255
    iget-object v0, p0, Lcom/anythink/basead/ui/PanelView;->a:Landroid/view/View;

    invoke-virtual {p0}, Lcom/anythink/basead/ui/PanelView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "myoffer_privacy_agreement"

    invoke-static {v1, v2, v3}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/anythink/basead/ui/PanelView;->r:Landroid/widget/TextView;

    .line 258
    :try_start_0
    iget-object v0, p0, Lcom/anythink/basead/ui/PanelView;->a:Landroid/view/View;

    invoke-virtual {p0}, Lcom/anythink/basead/ui/PanelView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "myoffer_shake_hint_text"

    invoke-static {v1, v2, v3}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/anythink/basead/ui/BaseShakeView;

    iput-object v0, p0, Lcom/anythink/basead/ui/PanelView;->g:Lcom/anythink/basead/ui/BaseShakeView;

    .line 259
    iget-object v1, p0, Lcom/anythink/basead/ui/PanelView;->k:Lcom/anythink/core/common/f/m;

    iget-object v1, v1, Lcom/anythink/core/common/f/m;->n:Lcom/anythink/core/common/f/n;

    invoke-virtual {v0, v1}, Lcom/anythink/basead/ui/BaseShakeView;->setShakeSetting(Lcom/anythink/core/common/f/n;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 262
    :catchall_0
    invoke-direct {p0}, Lcom/anythink/basead/ui/PanelView;->e()V

    return-void
.end method

.method static synthetic e(Lcom/anythink/basead/ui/PanelView;)Landroid/widget/Button;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/anythink/basead/ui/PanelView;->f:Landroid/widget/Button;

    return-object p0
.end method

.method private e()V
    .locals 3

    .line 266
    iget-boolean v0, p0, Lcom/anythink/basead/ui/PanelView;->u:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/anythink/basead/ui/PanelView;->g:Lcom/anythink/basead/ui/BaseShakeView;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/anythink/basead/ui/PanelView;->m:I

    const/16 v2, 0x8

    if-eq v1, v2, :cond_0

    const/4 v1, 0x0

    .line 268
    invoke-virtual {v0, v1}, Lcom/anythink/basead/ui/BaseShakeView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method static synthetic f(Lcom/anythink/basead/ui/PanelView;)Lcom/anythink/basead/ui/BaseShakeView;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/anythink/basead/ui/PanelView;->g:Lcom/anythink/basead/ui/BaseShakeView;

    return-object p0
.end method

.method private f()V
    .locals 4

    .line 454
    iget-object v0, p0, Lcom/anythink/basead/ui/PanelView;->b:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 455
    iget-object v1, p0, Lcom/anythink/basead/ui/PanelView;->x:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 456
    iget-object v0, p0, Lcom/anythink/basead/ui/PanelView;->v:Ljava/util/List;

    iget-object v1, p0, Lcom/anythink/basead/ui/PanelView;->b:Landroid/widget/ImageView;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 458
    :cond_0
    iget-object v0, p0, Lcom/anythink/basead/ui/PanelView;->d:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 459
    iget-object v1, p0, Lcom/anythink/basead/ui/PanelView;->x:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 460
    iget-object v0, p0, Lcom/anythink/basead/ui/PanelView;->v:Ljava/util/List;

    iget-object v1, p0, Lcom/anythink/basead/ui/PanelView;->d:Landroid/widget/TextView;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 462
    :cond_1
    iget-object v0, p0, Lcom/anythink/basead/ui/PanelView;->e:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 463
    iget-object v1, p0, Lcom/anythink/basead/ui/PanelView;->x:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 464
    iget-object v0, p0, Lcom/anythink/basead/ui/PanelView;->v:Ljava/util/List;

    iget-object v1, p0, Lcom/anythink/basead/ui/PanelView;->e:Landroid/widget/TextView;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 467
    :cond_2
    iget-object v0, p0, Lcom/anythink/basead/ui/PanelView;->f:Landroid/widget/Button;

    if-eqz v0, :cond_3

    .line 468
    iget-object v1, p0, Lcom/anythink/basead/ui/PanelView;->x:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 469
    iget-object v0, p0, Lcom/anythink/basead/ui/PanelView;->v:Ljava/util/List;

    iget-object v1, p0, Lcom/anythink/basead/ui/PanelView;->f:Landroid/widget/Button;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 473
    :cond_3
    iget-object v0, p0, Lcom/anythink/basead/ui/PanelView;->c:Landroid/widget/ImageView;

    if-eqz v0, :cond_4

    .line 474
    iget-object v1, p0, Lcom/anythink/basead/ui/PanelView;->x:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 475
    iget-object v0, p0, Lcom/anythink/basead/ui/PanelView;->v:Ljava/util/List;

    iget-object v1, p0, Lcom/anythink/basead/ui/PanelView;->c:Landroid/widget/ImageView;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 477
    :cond_4
    iget-object v0, p0, Lcom/anythink/basead/ui/PanelView;->g:Lcom/anythink/basead/ui/BaseShakeView;

    if-eqz v0, :cond_5

    iget-boolean v1, p0, Lcom/anythink/basead/ui/PanelView;->u:Z

    if-eqz v1, :cond_5

    .line 478
    iget-object v1, p0, Lcom/anythink/basead/ui/PanelView;->x:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/anythink/basead/ui/BaseShakeView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 479
    iget-object v0, p0, Lcom/anythink/basead/ui/PanelView;->g:Lcom/anythink/basead/ui/BaseShakeView;

    new-instance v1, Lcom/anythink/basead/ui/PanelView$8;

    invoke-direct {v1, p0}, Lcom/anythink/basead/ui/PanelView$8;-><init>(Lcom/anythink/basead/ui/PanelView;)V

    iget-object v2, p0, Lcom/anythink/basead/ui/PanelView;->j:Lcom/anythink/core/common/f/n;

    invoke-virtual {v0, v1, v2}, Lcom/anythink/basead/ui/BaseShakeView;->setOnShakeListener(Lcom/anythink/basead/ui/BaseShakeView$a;Lcom/anythink/core/common/f/n;)V

    .line 486
    :cond_5
    iget-object v0, p0, Lcom/anythink/basead/ui/PanelView;->a:Landroid/view/View;

    invoke-virtual {p0}, Lcom/anythink/basead/ui/PanelView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "myoffer_panel_view_blank"

    const-string v3, "id"

    invoke-static {v1, v2, v3}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 488
    iget-object v1, p0, Lcom/anythink/basead/ui/PanelView;->x:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 489
    iget-object v1, p0, Lcom/anythink/basead/ui/PanelView;->v:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 491
    :cond_6
    iget-object v0, p0, Lcom/anythink/basead/ui/PanelView;->a:Landroid/view/View;

    iget-object v1, p0, Lcom/anythink/basead/ui/PanelView;->x:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 492
    iget-object v0, p0, Lcom/anythink/basead/ui/PanelView;->v:Ljava/util/List;

    iget-object v1, p0, Lcom/anythink/basead/ui/PanelView;->a:Landroid/view/View;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public getCTAButton()Landroid/view/View;
    .locals 1

    .line 549
    iget-object v0, p0, Lcom/anythink/basead/ui/PanelView;->f:Landroid/widget/Button;

    return-object v0
.end method

.method public getClickViews()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 528
    iget-object v0, p0, Lcom/anythink/basead/ui/PanelView;->v:Ljava/util/List;

    return-object v0
.end method

.method public getShakeView()Landroid/view/View;
    .locals 1

    .line 553
    iget-object v0, p0, Lcom/anythink/basead/ui/PanelView;->g:Lcom/anythink/basead/ui/BaseShakeView;

    return-object v0
.end method

.method public init(Lcom/anythink/core/common/f/l;Lcom/anythink/core/common/f/m;IZLcom/anythink/basead/ui/PanelView$a;)V
    .locals 0

    .line 98
    iput-object p5, p0, Lcom/anythink/basead/ui/PanelView;->h:Lcom/anythink/basead/ui/PanelView$a;

    .line 99
    iput p3, p0, Lcom/anythink/basead/ui/PanelView;->i:I

    .line 100
    iput-object p1, p0, Lcom/anythink/basead/ui/PanelView;->l:Lcom/anythink/core/common/f/l;

    .line 101
    iput-object p2, p0, Lcom/anythink/basead/ui/PanelView;->k:Lcom/anythink/core/common/f/m;

    .line 102
    iget-object p2, p2, Lcom/anythink/core/common/f/m;->n:Lcom/anythink/core/common/f/n;

    iput-object p2, p0, Lcom/anythink/basead/ui/PanelView;->j:Lcom/anythink/core/common/f/n;

    .line 103
    iput-boolean p4, p0, Lcom/anythink/basead/ui/PanelView;->u:Z

    .line 105
    invoke-virtual {p1}, Lcom/anythink/core/common/f/l;->N()Z

    move-result p2

    iput-boolean p2, p0, Lcom/anythink/basead/ui/PanelView;->s:Z

    .line 106
    iget-object p2, p0, Lcom/anythink/basead/ui/PanelView;->j:Lcom/anythink/core/common/f/n;

    invoke-virtual {p2}, Lcom/anythink/core/common/f/n;->u()I

    move-result p2

    const/4 p3, 0x1

    if-ne p2, p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    iput-boolean p3, p0, Lcom/anythink/basead/ui/PanelView;->t:Z

    .line 107
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/anythink/basead/ui/PanelView;->v:Ljava/util/List;

    .line 109
    new-instance p2, Lcom/anythink/basead/ui/d/a;

    iget-object p3, p0, Lcom/anythink/basead/ui/PanelView;->j:Lcom/anythink/core/common/f/n;

    invoke-direct {p2, p1, p3}, Lcom/anythink/basead/ui/d/a;-><init>(Lcom/anythink/core/common/f/l;Lcom/anythink/core/common/f/n;)V

    iput-object p2, p0, Lcom/anythink/basead/ui/PanelView;->w:Lcom/anythink/basead/ui/d/a;

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .line 524
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    return-void
.end method

.method public setLayoutType(I)V
    .locals 9

    .line 114
    iput p1, p0, Lcom/anythink/basead/ui/PanelView;->m:I

    const-string v0, "myoffer_panel_view_horizontal_without_icon"

    const-string v1, "myoffer_panel_view_horizontal"

    const-string v2, "myoffer_panel_view_endcard_portrait_without_icon"

    const-string v3, "layout"

    const/4 v4, 0x1

    packed-switch p1, :pswitch_data_0

    .line 186
    iget-object p1, p0, Lcom/anythink/basead/ui/PanelView;->l:Lcom/anythink/core/common/f/l;

    invoke-virtual {p1}, Lcom/anythink/core/common/f/l;->w()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 187
    invoke-virtual {p0}, Lcom/anythink/basead/ui/PanelView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    .line 188
    invoke-virtual {p0}, Lcom/anythink/basead/ui/PanelView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "myoffer_panel_view_bottom_banner_without_icon"

    invoke-static {v0, v1, v3}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 187
    invoke-virtual {p1, v0, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/anythink/basead/ui/PanelView;->a:Landroid/view/View;

    goto/16 :goto_0

    .line 181
    :pswitch_0
    invoke-virtual {p0}, Lcom/anythink/basead/ui/PanelView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    .line 182
    invoke-virtual {p0}, Lcom/anythink/basead/ui/PanelView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "myoffer_panel_view_letter"

    invoke-static {v0, v1, v3}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 181
    invoke-virtual {p1, v0, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/anythink/basead/ui/PanelView;->a:Landroid/view/View;

    goto/16 :goto_0

    .line 177
    :pswitch_1
    invoke-virtual {p0}, Lcom/anythink/basead/ui/PanelView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    .line 178
    invoke-virtual {p0}, Lcom/anythink/basead/ui/PanelView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "myoffer_panel_view_full_screen_empty_info"

    invoke-static {v0, v1, v3}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 177
    invoke-virtual {p1, v0, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/anythink/basead/ui/PanelView;->a:Landroid/view/View;

    goto/16 :goto_0

    .line 173
    :pswitch_2
    invoke-virtual {p0}, Lcom/anythink/basead/ui/PanelView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    .line 174
    invoke-virtual {p0}, Lcom/anythink/basead/ui/PanelView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "myoffer_panel_view_empty_info"

    invoke-static {v0, v1, v3}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 173
    invoke-virtual {p1, v0, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/anythink/basead/ui/PanelView;->a:Landroid/view/View;

    goto/16 :goto_0

    .line 117
    :pswitch_3
    iget-object p1, p0, Lcom/anythink/basead/ui/PanelView;->l:Lcom/anythink/core/common/f/l;

    invoke-virtual {p1}, Lcom/anythink/core/common/f/l;->w()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 118
    invoke-virtual {p0}, Lcom/anythink/basead/ui/PanelView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    .line 119
    invoke-virtual {p0}, Lcom/anythink/basead/ui/PanelView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v2, v3}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 118
    invoke-virtual {p1, v0, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/anythink/basead/ui/PanelView;->a:Landroid/view/View;

    goto/16 :goto_0

    .line 121
    :cond_0
    invoke-virtual {p0}, Lcom/anythink/basead/ui/PanelView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    .line 122
    invoke-virtual {p0}, Lcom/anythink/basead/ui/PanelView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "myoffer_panel_view_endcard_vertical_portrait"

    invoke-static {v0, v1, v3}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 121
    invoke-virtual {p1, v0, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/anythink/basead/ui/PanelView;->a:Landroid/view/View;

    goto/16 :goto_0

    .line 164
    :pswitch_4
    iget-object p1, p0, Lcom/anythink/basead/ui/PanelView;->l:Lcom/anythink/core/common/f/l;

    invoke-virtual {p1}, Lcom/anythink/core/common/f/l;->w()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 165
    invoke-virtual {p0}, Lcom/anythink/basead/ui/PanelView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    .line 166
    invoke-virtual {p0}, Lcom/anythink/basead/ui/PanelView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0, v3}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 165
    invoke-virtual {p1, v0, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/anythink/basead/ui/PanelView;->a:Landroid/view/View;

    goto/16 :goto_0

    .line 168
    :cond_1
    invoke-virtual {p0}, Lcom/anythink/basead/ui/PanelView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    .line 169
    invoke-virtual {p0}, Lcom/anythink/basead/ui/PanelView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1, v3}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 168
    invoke-virtual {p1, v0, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/anythink/basead/ui/PanelView;->a:Landroid/view/View;

    goto/16 :goto_0

    .line 145
    :pswitch_5
    iget p1, p0, Lcom/anythink/basead/ui/PanelView;->i:I

    if-ne p1, v4, :cond_3

    .line 146
    iget-object p1, p0, Lcom/anythink/basead/ui/PanelView;->l:Lcom/anythink/core/common/f/l;

    invoke-virtual {p1}, Lcom/anythink/core/common/f/l;->w()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 147
    invoke-virtual {p0}, Lcom/anythink/basead/ui/PanelView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    .line 148
    invoke-virtual {p0}, Lcom/anythink/basead/ui/PanelView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0, v3}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 147
    invoke-virtual {p1, v0, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/anythink/basead/ui/PanelView;->a:Landroid/view/View;

    goto/16 :goto_0

    .line 150
    :cond_2
    invoke-virtual {p0}, Lcom/anythink/basead/ui/PanelView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    .line 151
    invoke-virtual {p0}, Lcom/anythink/basead/ui/PanelView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1, v3}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 150
    invoke-virtual {p1, v0, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/anythink/basead/ui/PanelView;->a:Landroid/view/View;

    goto/16 :goto_0

    .line 154
    :cond_3
    iget-object p1, p0, Lcom/anythink/basead/ui/PanelView;->l:Lcom/anythink/core/common/f/l;

    invoke-virtual {p1}, Lcom/anythink/core/common/f/l;->w()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 155
    invoke-virtual {p0}, Lcom/anythink/basead/ui/PanelView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    .line 156
    invoke-virtual {p0}, Lcom/anythink/basead/ui/PanelView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "myoffer_panel_view_vertical_without_icon"

    invoke-static {v0, v1, v3}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 155
    invoke-virtual {p1, v0, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/anythink/basead/ui/PanelView;->a:Landroid/view/View;

    goto/16 :goto_0

    .line 158
    :cond_4
    invoke-virtual {p0}, Lcom/anythink/basead/ui/PanelView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    .line 159
    invoke-virtual {p0}, Lcom/anythink/basead/ui/PanelView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "myoffer_panel_view_vertical"

    invoke-static {v0, v1, v3}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 158
    invoke-virtual {p1, v0, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/anythink/basead/ui/PanelView;->a:Landroid/view/View;

    goto/16 :goto_0

    .line 136
    :pswitch_6
    iget-object p1, p0, Lcom/anythink/basead/ui/PanelView;->l:Lcom/anythink/core/common/f/l;

    invoke-virtual {p1}, Lcom/anythink/core/common/f/l;->w()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 137
    invoke-virtual {p0}, Lcom/anythink/basead/ui/PanelView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    .line 138
    invoke-virtual {p0}, Lcom/anythink/basead/ui/PanelView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "myoffer_panel_view_endcard_landscape_without_icon"

    invoke-static {v0, v1, v3}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 137
    invoke-virtual {p1, v0, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/anythink/basead/ui/PanelView;->a:Landroid/view/View;

    goto :goto_0

    .line 140
    :cond_5
    invoke-virtual {p0}, Lcom/anythink/basead/ui/PanelView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    .line 141
    invoke-virtual {p0}, Lcom/anythink/basead/ui/PanelView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "myoffer_panel_view_endcard_landscape"

    invoke-static {v0, v1, v3}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 140
    invoke-virtual {p1, v0, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/anythink/basead/ui/PanelView;->a:Landroid/view/View;

    goto :goto_0

    .line 126
    :pswitch_7
    iget-object p1, p0, Lcom/anythink/basead/ui/PanelView;->l:Lcom/anythink/core/common/f/l;

    invoke-virtual {p1}, Lcom/anythink/core/common/f/l;->w()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 127
    invoke-virtual {p0}, Lcom/anythink/basead/ui/PanelView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    .line 128
    invoke-virtual {p0}, Lcom/anythink/basead/ui/PanelView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v2, v3}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 127
    invoke-virtual {p1, v0, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/anythink/basead/ui/PanelView;->a:Landroid/view/View;

    goto :goto_0

    .line 130
    :cond_6
    invoke-virtual {p0}, Lcom/anythink/basead/ui/PanelView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    .line 131
    invoke-virtual {p0}, Lcom/anythink/basead/ui/PanelView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "myoffer_panel_view_endcard_horizontal_portrait"

    invoke-static {v0, v1, v3}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 130
    invoke-virtual {p1, v0, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/anythink/basead/ui/PanelView;->a:Landroid/view/View;

    goto :goto_0

    .line 190
    :cond_7
    invoke-virtual {p0}, Lcom/anythink/basead/ui/PanelView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    .line 191
    invoke-virtual {p0}, Lcom/anythink/basead/ui/PanelView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "myoffer_panel_view_bottom_banner"

    invoke-static {v0, v1, v3}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 190
    invoke-virtual {p1, v0, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/anythink/basead/ui/PanelView;->a:Landroid/view/View;

    .line 1203
    :goto_0
    invoke-direct {p0}, Lcom/anythink/basead/ui/PanelView;->d()V

    .line 1204
    iget-object p1, p0, Lcom/anythink/basead/ui/PanelView;->l:Lcom/anythink/core/common/f/l;

    .line 1277
    iget-object v0, p0, Lcom/anythink/basead/ui/PanelView;->b:Landroid/widget/ImageView;

    const/16 v1, 0x8

    if-eqz v0, :cond_9

    .line 1278
    invoke-virtual {p1}, Lcom/anythink/core/common/f/l;->w()Ljava/lang/String;

    move-result-object v0

    .line 1279
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 1280
    iget-object v2, p0, Lcom/anythink/basead/ui/PanelView;->b:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 1281
    iget v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1282
    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1283
    invoke-virtual {p0}, Lcom/anythink/basead/ui/PanelView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/anythink/core/common/res/b;->a(Landroid/content/Context;)Lcom/anythink/core/common/res/b;

    move-result-object v5

    new-instance v6, Lcom/anythink/core/common/res/e;

    invoke-direct {v6, v4, v0}, Lcom/anythink/core/common/res/e;-><init>(ILjava/lang/String;)V

    new-instance v7, Lcom/anythink/basead/ui/PanelView$2;

    invoke-direct {v7, p0, v0}, Lcom/anythink/basead/ui/PanelView$2;-><init>(Lcom/anythink/basead/ui/PanelView;Ljava/lang/String;)V

    invoke-virtual {v5, v6, v3, v2, v7}, Lcom/anythink/core/common/res/b;->a(Lcom/anythink/core/common/res/e;IILcom/anythink/core/common/res/b$a;)V

    .line 1299
    :cond_8
    invoke-virtual {p1}, Lcom/anythink/core/common/f/l;->w()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1300
    iget-object v0, p0, Lcom/anythink/basead/ui/PanelView;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1304
    :cond_9
    iget-object v0, p0, Lcom/anythink/basead/ui/PanelView;->c:Landroid/widget/ImageView;

    if-eqz v0, :cond_b

    .line 1305
    invoke-virtual {p1}, Lcom/anythink/core/common/f/l;->y()Ljava/lang/String;

    move-result-object v0

    .line 1306
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 1307
    iget-object v2, p0, Lcom/anythink/basead/ui/PanelView;->c:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 1308
    iget v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1309
    iget v5, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1310
    invoke-virtual {p0}, Lcom/anythink/basead/ui/PanelView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/anythink/core/common/res/b;->a(Landroid/content/Context;)Lcom/anythink/core/common/res/b;

    move-result-object v6

    new-instance v7, Lcom/anythink/core/common/res/e;

    invoke-direct {v7, v4, v0}, Lcom/anythink/core/common/res/e;-><init>(ILjava/lang/String;)V

    new-instance v8, Lcom/anythink/basead/ui/PanelView$3;

    invoke-direct {v8, p0, v0, v2}, Lcom/anythink/basead/ui/PanelView$3;-><init>(Lcom/anythink/basead/ui/PanelView;Ljava/lang/String;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v6, v7, v3, v5, v8}, Lcom/anythink/core/common/res/b;->a(Lcom/anythink/core/common/res/e;IILcom/anythink/core/common/res/b$a;)V

    goto :goto_1

    .line 1337
    :cond_a
    iget-object v0, p0, Lcom/anythink/basead/ui/PanelView;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1341
    :cond_b
    :goto_1
    iget-object v0, p0, Lcom/anythink/basead/ui/PanelView;->e:Landroid/widget/TextView;

    if-eqz v0, :cond_d

    .line 1342
    invoke-virtual {p1}, Lcom/anythink/core/common/f/l;->v()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 1343
    iget-object v0, p0, Lcom/anythink/basead/ui/PanelView;->e:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/anythink/core/common/f/l;->v()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 1345
    :cond_c
    iget-object v0, p0, Lcom/anythink/basead/ui/PanelView;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1349
    :cond_d
    :goto_2
    iget-object v0, p0, Lcom/anythink/basead/ui/PanelView;->d:Landroid/widget/TextView;

    if-eqz v0, :cond_f

    .line 1350
    invoke-virtual {p1}, Lcom/anythink/core/common/f/l;->u()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 1351
    iget-object v0, p0, Lcom/anythink/basead/ui/PanelView;->d:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/anythink/core/common/f/l;->u()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 1353
    :cond_e
    iget-object v0, p0, Lcom/anythink/basead/ui/PanelView;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1357
    :cond_f
    :goto_3
    iget-object v0, p0, Lcom/anythink/basead/ui/PanelView;->f:Landroid/widget/Button;

    if-eqz v0, :cond_11

    .line 1358
    invoke-virtual {p1}, Lcom/anythink/core/common/f/l;->z()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 1359
    iget-object v0, p0, Lcom/anythink/basead/ui/PanelView;->f:Landroid/widget/Button;

    invoke-virtual {p1}, Lcom/anythink/core/common/f/l;->z()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 1361
    :cond_10
    iget-object v0, p0, Lcom/anythink/basead/ui/PanelView;->f:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/anythink/basead/ui/PanelView;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/anythink/basead/ui/PanelView;->l:Lcom/anythink/core/common/f/l;

    invoke-static {v2, v3}, Lcom/anythink/basead/a/d;->a(Landroid/content/Context;Lcom/anythink/core/common/f/l;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(I)V

    .line 1367
    :cond_11
    :goto_4
    invoke-direct {p0, p1}, Lcom/anythink/basead/ui/PanelView;->b(Lcom/anythink/core/common/f/l;)V

    .line 1454
    iget-object p1, p0, Lcom/anythink/basead/ui/PanelView;->b:Landroid/widget/ImageView;

    if-eqz p1, :cond_12

    .line 1455
    iget-object v0, p0, Lcom/anythink/basead/ui/PanelView;->x:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1456
    iget-object p1, p0, Lcom/anythink/basead/ui/PanelView;->v:Ljava/util/List;

    iget-object v0, p0, Lcom/anythink/basead/ui/PanelView;->b:Landroid/widget/ImageView;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1458
    :cond_12
    iget-object p1, p0, Lcom/anythink/basead/ui/PanelView;->d:Landroid/widget/TextView;

    if-eqz p1, :cond_13

    .line 1459
    iget-object v0, p0, Lcom/anythink/basead/ui/PanelView;->x:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1460
    iget-object p1, p0, Lcom/anythink/basead/ui/PanelView;->v:Ljava/util/List;

    iget-object v0, p0, Lcom/anythink/basead/ui/PanelView;->d:Landroid/widget/TextView;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1462
    :cond_13
    iget-object p1, p0, Lcom/anythink/basead/ui/PanelView;->e:Landroid/widget/TextView;

    if-eqz p1, :cond_14

    .line 1463
    iget-object v0, p0, Lcom/anythink/basead/ui/PanelView;->x:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1464
    iget-object p1, p0, Lcom/anythink/basead/ui/PanelView;->v:Ljava/util/List;

    iget-object v0, p0, Lcom/anythink/basead/ui/PanelView;->e:Landroid/widget/TextView;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1467
    :cond_14
    iget-object p1, p0, Lcom/anythink/basead/ui/PanelView;->f:Landroid/widget/Button;

    if-eqz p1, :cond_15

    .line 1468
    iget-object v0, p0, Lcom/anythink/basead/ui/PanelView;->x:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1469
    iget-object p1, p0, Lcom/anythink/basead/ui/PanelView;->v:Ljava/util/List;

    iget-object v0, p0, Lcom/anythink/basead/ui/PanelView;->f:Landroid/widget/Button;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1473
    :cond_15
    iget-object p1, p0, Lcom/anythink/basead/ui/PanelView;->c:Landroid/widget/ImageView;

    if-eqz p1, :cond_16

    .line 1474
    iget-object v0, p0, Lcom/anythink/basead/ui/PanelView;->x:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1475
    iget-object p1, p0, Lcom/anythink/basead/ui/PanelView;->v:Ljava/util/List;

    iget-object v0, p0, Lcom/anythink/basead/ui/PanelView;->c:Landroid/widget/ImageView;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1477
    :cond_16
    iget-object p1, p0, Lcom/anythink/basead/ui/PanelView;->g:Lcom/anythink/basead/ui/BaseShakeView;

    if-eqz p1, :cond_17

    iget-boolean v0, p0, Lcom/anythink/basead/ui/PanelView;->u:Z

    if-eqz v0, :cond_17

    .line 1478
    iget-object v0, p0, Lcom/anythink/basead/ui/PanelView;->x:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Lcom/anythink/basead/ui/BaseShakeView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1479
    iget-object p1, p0, Lcom/anythink/basead/ui/PanelView;->g:Lcom/anythink/basead/ui/BaseShakeView;

    new-instance v0, Lcom/anythink/basead/ui/PanelView$8;

    invoke-direct {v0, p0}, Lcom/anythink/basead/ui/PanelView$8;-><init>(Lcom/anythink/basead/ui/PanelView;)V

    iget-object v2, p0, Lcom/anythink/basead/ui/PanelView;->j:Lcom/anythink/core/common/f/n;

    invoke-virtual {p1, v0, v2}, Lcom/anythink/basead/ui/BaseShakeView;->setOnShakeListener(Lcom/anythink/basead/ui/BaseShakeView$a;Lcom/anythink/core/common/f/n;)V

    .line 1486
    :cond_17
    iget-object p1, p0, Lcom/anythink/basead/ui/PanelView;->a:Landroid/view/View;

    invoke-virtual {p0}, Lcom/anythink/basead/ui/PanelView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "myoffer_panel_view_blank"

    const-string v3, "id"

    invoke-static {v0, v2, v3}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_18

    .line 1488
    iget-object v0, p0, Lcom/anythink/basead/ui/PanelView;->x:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1489
    iget-object v0, p0, Lcom/anythink/basead/ui/PanelView;->v:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 1491
    :cond_18
    iget-object p1, p0, Lcom/anythink/basead/ui/PanelView;->a:Landroid/view/View;

    iget-object v0, p0, Lcom/anythink/basead/ui/PanelView;->x:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1492
    iget-object p1, p0, Lcom/anythink/basead/ui/PanelView;->v:Ljava/util/List;

    iget-object v0, p0, Lcom/anythink/basead/ui/PanelView;->a:Landroid/view/View;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2225
    :goto_5
    iget-object p1, p0, Lcom/anythink/basead/ui/PanelView;->b:Landroid/widget/ImageView;

    instance-of v0, p1, Lcom/anythink/core/common/ui/component/RoundImageView;

    if-eqz v0, :cond_1a

    .line 2226
    check-cast p1, Lcom/anythink/core/common/ui/component/RoundImageView;

    invoke-virtual {p1, v4}, Lcom/anythink/core/common/ui/component/RoundImageView;->setNeedRadiu(Z)V

    .line 2227
    iget p1, p0, Lcom/anythink/basead/ui/PanelView;->m:I

    const/4 v0, 0x2

    if-eq p1, v0, :cond_19

    const/4 v0, 0x6

    if-eq p1, v0, :cond_19

    .line 2233
    iget-object p1, p0, Lcom/anythink/basead/ui/PanelView;->b:Landroid/widget/ImageView;

    check-cast p1, Lcom/anythink/core/common/ui/component/RoundImageView;

    const/16 v0, 0xc

    invoke-virtual {p1, v0}, Lcom/anythink/core/common/ui/component/RoundImageView;->setRadiusInDip(I)V

    goto :goto_6

    .line 2230
    :cond_19
    iget-object p1, p0, Lcom/anythink/basead/ui/PanelView;->b:Landroid/widget/ImageView;

    check-cast p1, Lcom/anythink/core/common/ui/component/RoundImageView;

    invoke-virtual {p1, v1}, Lcom/anythink/core/common/ui/component/RoundImageView;->setRadiusInDip(I)V

    .line 2236
    :goto_6
    iget-object p1, p0, Lcom/anythink/basead/ui/PanelView;->b:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->invalidate()V

    .line 1210
    :cond_1a
    iget-object p1, p0, Lcom/anythink/basead/ui/PanelView;->w:Lcom/anythink/basead/ui/d/a;

    if-eqz p1, :cond_1b

    .line 1211
    iget v0, p0, Lcom/anythink/basead/ui/PanelView;->m:I

    invoke-virtual {p1, v0}, Lcom/anythink/basead/ui/d/a;->a(I)Lcom/anythink/basead/ui/d/a;

    move-result-object p1

    new-instance v0, Lcom/anythink/basead/ui/PanelView$1;

    invoke-direct {v0, p0}, Lcom/anythink/basead/ui/PanelView$1;-><init>(Lcom/anythink/basead/ui/PanelView;)V

    .line 1212
    invoke-virtual {p1, v0}, Lcom/anythink/basead/ui/d/a;->a(Lcom/anythink/basead/ui/c/a;)Lcom/anythink/basead/ui/d/a;

    move-result-object p1

    .line 1220
    invoke-virtual {p0}, Lcom/anythink/basead/ui/PanelView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/basead/ui/PanelView;->a:Landroid/view/View;

    invoke-virtual {p1, v0, v1}, Lcom/anythink/basead/ui/d/a;->a(Landroid/content/Context;Landroid/view/View;)V

    :cond_1b
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_6
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
