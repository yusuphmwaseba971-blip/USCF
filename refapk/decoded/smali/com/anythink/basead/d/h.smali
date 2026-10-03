.class public Lcom/anythink/basead/d/h;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/anythink/basead/d/h$a;
    }
.end annotation


# instance fields
.field a:Landroid/content/Context;

.field b:Lcom/anythink/basead/e/a;

.field c:Lcom/anythink/core/common/o/a/c;

.field d:Lcom/anythink/basead/a/b;

.field e:Landroid/view/View;

.field volatile f:Z

.field g:Lcom/anythink/core/common/f/ai;

.field h:Lcom/anythink/core/common/f/m;

.field i:Z

.field j:Z

.field k:Ljava/lang/String;

.field l:Lcom/anythink/expressad/advanced/d/c;

.field m:Lcom/anythink/basead/ui/BaseMediaATView;

.field n:Landroid/view/View;

.field o:Landroid/view/View$OnClickListener;

.field p:I

.field q:I

.field r:Lcom/anythink/basead/ui/b/a;

.field s:Lcom/anythink/basead/ui/OwnNativeATView;

.field private final t:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/anythink/core/common/f/ai;Lcom/anythink/core/common/f/m;Lcom/anythink/core/common/a/h;Z)V
    .locals 1

    .line 219
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/basead/d/h;->t:Ljava/lang/String;

    .line 82
    new-instance v0, Lcom/anythink/basead/d/h$1;

    invoke-direct {v0, p0}, Lcom/anythink/basead/d/h$1;-><init>(Lcom/anythink/basead/d/h;)V

    iput-object v0, p0, Lcom/anythink/basead/d/h;->o:Landroid/view/View$OnClickListener;

    .line 220
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/anythink/basead/d/h;->a:Landroid/content/Context;

    .line 221
    iput-object p2, p0, Lcom/anythink/basead/d/h;->g:Lcom/anythink/core/common/f/ai;

    .line 222
    iput-object p3, p0, Lcom/anythink/basead/d/h;->h:Lcom/anythink/core/common/f/m;

    .line 223
    iput-boolean p5, p0, Lcom/anythink/basead/d/h;->i:Z

    .line 225
    instance-of p1, p4, Lcom/anythink/expressad/advanced/d/c;

    if-eqz p1, :cond_0

    .line 226
    check-cast p4, Lcom/anythink/expressad/advanced/d/c;

    iput-object p4, p0, Lcom/anythink/basead/d/h;->l:Lcom/anythink/expressad/advanced/d/c;

    .line 227
    new-instance p1, Lcom/anythink/basead/d/h$3;

    invoke-direct {p1, p0}, Lcom/anythink/basead/d/h$3;-><init>(Lcom/anythink/basead/d/h;)V

    invoke-virtual {p4, p1}, Lcom/anythink/expressad/advanced/d/c;->a(Lcom/anythink/expressad/out/o;)V

    :cond_0
    return-void
.end method

.method private static a(I)I
    .locals 5

    .line 202
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    if-lez p0, :cond_0

    int-to-double v1, p0

    const-wide v3, 0x3fb999999999999aL    # 0.1

    mul-double v3, v3, v1

    double-to-int p0, v3

    const-wide v3, 0x3feccccccccccccdL    # 0.9

    mul-double v1, v1, v3

    double-to-int v1, v1

    sub-int/2addr v1, p0

    add-int/lit8 v1, v1, 0x1

    .line 206
    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/2addr v0, p0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private a(Landroid/content/Context;Lcom/anythink/core/common/f/l;)Landroid/view/View;
    .locals 1

    .line 535
    new-instance v0, Lcom/anythink/basead/ui/SimpleMediaATView;

    invoke-direct {v0, p1}, Lcom/anythink/basead/ui/SimpleMediaATView;-><init>(Landroid/content/Context;)V

    .line 536
    invoke-virtual {v0, p2}, Lcom/anythink/basead/ui/SimpleMediaATView;->initView(Lcom/anythink/core/common/f/l;)V

    .line 537
    iget-object p1, p0, Lcom/anythink/basead/d/h;->o:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, p1}, Lcom/anythink/basead/ui/SimpleMediaATView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method private a(Landroid/content/Context;ZZLcom/anythink/basead/ui/BaseMediaATView$a;)Landroid/view/View;
    .locals 6

    .line 474
    new-instance v5, Lcom/anythink/basead/d/h$a;

    invoke-direct {v5, p4}, Lcom/anythink/basead/d/h$a;-><init>(Lcom/anythink/basead/ui/BaseMediaATView$a;)V

    .line 477
    new-instance p4, Lcom/anythink/basead/ui/OwnNativeATView;

    iget-object v0, p0, Lcom/anythink/basead/d/h;->a:Landroid/content/Context;

    invoke-direct {p4, v0}, Lcom/anythink/basead/ui/OwnNativeATView;-><init>(Landroid/content/Context;)V

    .line 478
    iput-object p4, p0, Lcom/anythink/basead/d/h;->s:Lcom/anythink/basead/ui/OwnNativeATView;

    if-eqz p2, :cond_0

    .line 480
    new-instance p2, Lcom/anythink/basead/ui/MraidMediaView;

    iget-object v2, p0, Lcom/anythink/basead/d/h;->g:Lcom/anythink/core/common/f/ai;

    iget-object v3, p0, Lcom/anythink/basead/d/h;->h:Lcom/anythink/core/common/f/m;

    move-object v0, p2

    move-object v1, p1

    move v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/anythink/basead/ui/MraidMediaView;-><init>(Landroid/content/Context;Lcom/anythink/core/common/f/l;Lcom/anythink/core/common/f/m;ZLcom/anythink/basead/ui/BaseMediaATView$a;)V

    iput-object p2, p0, Lcom/anythink/basead/d/h;->m:Lcom/anythink/basead/ui/BaseMediaATView;

    .line 482
    check-cast p2, Lcom/anythink/basead/ui/MraidMediaView;

    new-instance p1, Lcom/anythink/basead/d/h$4;

    invoke-direct {p1, p0}, Lcom/anythink/basead/d/h$4;-><init>(Lcom/anythink/basead/d/h;)V

    invoke-virtual {p2, p1}, Lcom/anythink/basead/ui/MraidMediaView;->setMraidWebViewListener(Lcom/anythink/basead/ui/MraidMediaView$a;)V

    goto :goto_0

    .line 513
    :cond_0
    new-instance p2, Lcom/anythink/basead/ui/MediaATView;

    iget-object v2, p0, Lcom/anythink/basead/d/h;->g:Lcom/anythink/core/common/f/ai;

    iget-object v3, p0, Lcom/anythink/basead/d/h;->h:Lcom/anythink/core/common/f/m;

    move-object v0, p2

    move-object v1, p1

    move v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/anythink/basead/ui/MediaATView;-><init>(Landroid/content/Context;Lcom/anythink/core/common/f/l;Lcom/anythink/core/common/f/m;ZLcom/anythink/basead/ui/BaseMediaATView$a;)V

    iput-object p2, p0, Lcom/anythink/basead/d/h;->m:Lcom/anythink/basead/ui/BaseMediaATView;

    .line 516
    :goto_0
    iget-object p1, p0, Lcom/anythink/basead/d/h;->m:Lcom/anythink/basead/ui/BaseMediaATView;

    iget p2, p0, Lcom/anythink/basead/d/h;->p:I

    iget p3, p0, Lcom/anythink/basead/d/h;->q:I

    invoke-virtual {p1, p2, p3}, Lcom/anythink/basead/ui/BaseMediaATView;->init(II)V

    .line 518
    iget-object p1, p0, Lcom/anythink/basead/d/h;->m:Lcom/anythink/basead/ui/BaseMediaATView;

    new-instance p2, Landroid/widget/FrameLayout$LayoutParams;

    iget-object p3, p0, Lcom/anythink/basead/d/h;->m:Lcom/anythink/basead/ui/BaseMediaATView;

    .line 519
    invoke-virtual {p3}, Lcom/anythink/basead/ui/BaseMediaATView;->getMediaViewWidth()I

    move-result p3

    iget-object v0, p0, Lcom/anythink/basead/d/h;->m:Lcom/anythink/basead/ui/BaseMediaATView;

    .line 520
    invoke-virtual {v0}, Lcom/anythink/basead/ui/BaseMediaATView;->getMediaViewHeight()I

    move-result v0

    invoke-direct {p2, p3, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 518
    invoke-virtual {p4, p1, p2}, Lcom/anythink/basead/ui/OwnNativeATView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 529
    iget-object p1, p0, Lcom/anythink/basead/d/h;->m:Lcom/anythink/basead/ui/BaseMediaATView;

    invoke-virtual {p1}, Lcom/anythink/basead/ui/BaseMediaATView;->getClickViews()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p4, p1}, Lcom/anythink/basead/d/h;->a(Landroid/view/View;Ljava/util/List;)V

    return-object p4
.end method

.method private a(Landroid/view/View;Landroid/view/View$OnClickListener;)V
    .locals 2

    .line 650
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 651
    check-cast p1, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    .line 652
    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 653
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 654
    invoke-direct {p0, v1, p2}, Lcom/anythink/basead/d/h;->a(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void

    .line 657
    :cond_1
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private a(Landroid/view/View;[Landroid/view/View;)V
    .locals 3

    .line 769
    instance-of v0, p1, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 770
    check-cast p1, Landroid/view/ViewGroup;

    .line 771
    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 772
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 773
    invoke-direct {p0, v0, p2}, Lcom/anythink/basead/d/h;->a(Landroid/view/View;[Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void

    .line 776
    :cond_1
    instance-of v0, p1, Landroid/widget/Button;

    if-nez v0, :cond_2

    instance-of v0, p1, Landroid/widget/TextView;

    if-eqz v0, :cond_3

    .line 777
    :cond_2
    move-object v0, p1

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 778
    iget-object v2, p0, Lcom/anythink/basead/d/h;->g:Lcom/anythink/core/common/f/ai;

    invoke-virtual {v2}, Lcom/anythink/core/common/f/ai;->z()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 779
    aput-object p1, p2, v1

    :cond_3
    return-void
.end method

.method static synthetic a(Lcom/anythink/basead/d/h;)V
    .locals 0

    .line 54
    invoke-direct {p0}, Lcom/anythink/basead/d/h;->u()V

    return-void
.end method

.method static synthetic a(Lcom/anythink/basead/d/h;I)V
    .locals 0

    .line 54
    invoke-direct {p0, p1}, Lcom/anythink/basead/d/h;->b(I)V

    return-void
.end method

.method private a([Lcom/anythink/basead/ui/OwnNativeATView;Landroid/view/View;)V
    .locals 2

    .line 637
    instance-of v0, p2, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 638
    instance-of v0, p2, Lcom/anythink/basead/ui/OwnNativeATView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 639
    move-object v0, p2

    check-cast v0, Lcom/anythink/basead/ui/OwnNativeATView;

    aput-object v0, p1, v1

    .line 641
    :cond_0
    check-cast p2, Landroid/view/ViewGroup;

    .line 642
    :goto_0
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 643
    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 644
    invoke-direct {p0, p1, v0}, Lcom/anythink/basead/d/h;->a([Lcom/anythink/basead/ui/OwnNativeATView;Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method static synthetic b(Lcom/anythink/basead/d/h;)Landroid/view/View;
    .locals 3

    .line 2749
    iget-object v0, p0, Lcom/anythink/basead/d/h;->m:Lcom/anythink/basead/ui/BaseMediaATView;

    if-eqz v0, :cond_0

    .line 2750
    invoke-virtual {v0}, Lcom/anythink/basead/ui/BaseMediaATView;->getMonitorClickView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2752
    iput-object v0, p0, Lcom/anythink/basead/d/h;->n:Landroid/view/View;

    return-object v0

    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/view/View;

    .line 2758
    iget-object v1, p0, Lcom/anythink/basead/d/h;->s:Lcom/anythink/basead/ui/OwnNativeATView;

    invoke-direct {p0, v1, v0}, Lcom/anythink/basead/d/h;->a(Landroid/view/View;[Landroid/view/View;)V

    const/4 v1, 0x0

    .line 2759
    aget-object v2, v0, v1

    if-eqz v2, :cond_1

    .line 2760
    aget-object v2, v0, v1

    iput-object v2, p0, Lcom/anythink/basead/d/h;->n:Landroid/view/View;

    .line 2761
    aget-object p0, v0, v1

    return-object p0

    .line 2764
    :cond_1
    iget-object p0, p0, Lcom/anythink/basead/d/h;->s:Lcom/anythink/basead/ui/OwnNativeATView;

    return-object p0
.end method

.method private b(I)V
    .locals 1

    .line 913
    iget-object v0, p0, Lcom/anythink/basead/d/h;->r:Lcom/anythink/basead/ui/b/a;

    if-eqz v0, :cond_0

    .line 914
    invoke-virtual {v0, p1}, Lcom/anythink/basead/ui/b/a;->a(I)V

    :cond_0
    return-void
.end method

.method private static c(Landroid/view/View;)Lcom/anythink/basead/c/a;
    .locals 8

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 180
    invoke-virtual {p0, v0}, Landroid/view/View;->getLocationInWindow([I)V

    const/4 v1, 0x0

    .line 181
    aget v1, v0, v1

    const/4 v2, 0x1

    .line 182
    aget v0, v0, v2

    .line 183
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    .line 184
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    .line 185
    invoke-static {v2}, Lcom/anythink/basead/d/h;->a(I)I

    move-result v2

    .line 186
    invoke-static {p0}, Lcom/anythink/basead/d/h;->a(I)I

    move-result p0

    .line 188
    new-instance v3, Lcom/anythink/basead/c/a;

    invoke-direct {v3}, Lcom/anythink/basead/c/a;-><init>()V

    add-int v4, v1, v2

    .line 189
    iput v4, v3, Lcom/anythink/basead/c/a;->a:I

    add-int v4, v0, p0

    .line 190
    iput v4, v3, Lcom/anythink/basead/c/a;->b:I

    .line 191
    iput v2, v3, Lcom/anythink/basead/c/a;->e:I

    .line 192
    iput p0, v3, Lcom/anythink/basead/c/a;->f:I

    .line 194
    iget p0, v3, Lcom/anythink/basead/c/a;->a:I

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    const-wide/high16 v6, 0x402e000000000000L    # 15.0

    mul-double v4, v4, v6

    double-to-int v2, v4

    add-int/2addr p0, v2

    iput p0, v3, Lcom/anythink/basead/c/a;->c:I

    .line 195
    iget p0, v3, Lcom/anythink/basead/c/a;->b:I

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    mul-double v4, v4, v6

    double-to-int v2, v4

    add-int/2addr p0, v2

    iput p0, v3, Lcom/anythink/basead/c/a;->d:I

    .line 196
    iget p0, v3, Lcom/anythink/basead/c/a;->c:I

    sub-int/2addr p0, v1

    iput p0, v3, Lcom/anythink/basead/c/a;->g:I

    .line 197
    iget p0, v3, Lcom/anythink/basead/c/a;->d:I

    sub-int/2addr p0, v0

    iput p0, v3, Lcom/anythink/basead/c/a;->h:I

    return-object v3
.end method

.method private d(Landroid/view/View;)Z
    .locals 4

    .line 616
    iget-object v0, p0, Lcom/anythink/basead/d/h;->s:Lcom/anythink/basead/ui/OwnNativeATView;

    const/4 v1, 0x1

    if-nez v0, :cond_2

    new-array v0, v1, [Lcom/anythink/basead/ui/OwnNativeATView;

    .line 618
    invoke-direct {p0, v0, p1}, Lcom/anythink/basead/d/h;->a([Lcom/anythink/basead/ui/OwnNativeATView;Landroid/view/View;)V

    const/4 p1, 0x0

    .line 619
    aget-object v2, v0, p1

    const-string v3, "anythink"

    if-nez v2, :cond_0

    const-string v0, "Register View don\'t contain OwnNativeAdView."

    .line 620
    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p1

    .line 624
    :cond_0
    aget-object v2, v0, p1

    invoke-virtual {v2}, Lcom/anythink/basead/ui/OwnNativeATView;->getChildCount()I

    move-result v2

    if-nez v2, :cond_1

    const-string v0, "OwnNativeAdView View don\'t contain any child views."

    .line 625
    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p1

    .line 629
    :cond_1
    aget-object p1, v0, p1

    iput-object p1, p0, Lcom/anythink/basead/d/h;->s:Lcom/anythink/basead/ui/OwnNativeATView;

    :cond_2
    return v1
.end method

.method private u()V
    .locals 5

    .line 704
    iget-boolean v0, p0, Lcom/anythink/basead/d/h;->f:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 708
    iput-boolean v0, p0, Lcom/anythink/basead/d/h;->f:Z

    .line 717
    iget-boolean v0, p0, Lcom/anythink/basead/d/h;->j:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/anythink/basead/d/h;->g:Lcom/anythink/core/common/f/ai;

    invoke-virtual {v0}, Lcom/anythink/core/common/f/ai;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/anythink/basead/d/h;->m:Lcom/anythink/basead/ui/BaseMediaATView;

    instance-of v1, v0, Lcom/anythink/basead/ui/MraidMediaView;

    if-eqz v1, :cond_1

    .line 718
    check-cast v0, Lcom/anythink/basead/ui/MraidMediaView;

    iget-boolean v1, p0, Lcom/anythink/basead/d/h;->j:Z

    invoke-virtual {v0, v1}, Lcom/anythink/basead/ui/MraidMediaView;->fireAudioVolumeChange(Z)V

    .line 721
    :cond_1
    iget-object v0, p0, Lcom/anythink/basead/d/h;->g:Lcom/anythink/core/common/f/ai;

    instance-of v0, v0, Lcom/anythink/core/common/f/ah;

    if-eqz v0, :cond_2

    .line 722
    invoke-static {}, Lcom/anythink/basead/d/c/d;->a()Lcom/anythink/basead/d/c/d;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/basead/d/h;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/anythink/basead/d/h;->h:Lcom/anythink/core/common/f/m;

    iget-object v2, v2, Lcom/anythink/core/common/f/m;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/anythink/basead/d/h;->h:Lcom/anythink/core/common/f/m;

    iget-object v3, v3, Lcom/anythink/core/common/f/m;->c:Ljava/lang/String;

    .line 723
    invoke-static {v2, v3}, Lcom/anythink/basead/d/c/d;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/anythink/basead/d/h;->g:Lcom/anythink/core/common/f/ai;

    iget-object v4, p0, Lcom/anythink/basead/d/h;->h:Lcom/anythink/core/common/f/m;

    iget-object v4, v4, Lcom/anythink/core/common/f/m;->n:Lcom/anythink/core/common/f/n;

    .line 722
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/anythink/basead/d/c/d;->a(Landroid/content/Context;Ljava/lang/String;Lcom/anythink/core/common/f/l;Lcom/anythink/core/common/f/n;)V

    .line 727
    :cond_2
    iget-object v0, p0, Lcom/anythink/basead/d/h;->l:Lcom/anythink/expressad/advanced/d/c;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/anythink/expressad/advanced/d/c;->c()Lcom/anythink/expressad/advanced/view/ATOutNativeAdvancedViewGroup;

    move-result-object v0

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/anythink/basead/d/h;->s:Lcom/anythink/basead/ui/OwnNativeATView;

    .line 729
    :goto_0
    iget-object v1, p0, Lcom/anythink/basead/d/h;->g:Lcom/anythink/core/common/f/ai;

    invoke-virtual {v1}, Lcom/anythink/core/common/f/ai;->j()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 730
    iget-object v0, p0, Lcom/anythink/basead/d/h;->m:Lcom/anythink/basead/ui/BaseMediaATView;

    :cond_4
    if-eqz v0, :cond_5

    .line 734
    new-instance v1, Lcom/anythink/basead/c/i;

    iget-object v2, p0, Lcom/anythink/basead/d/h;->h:Lcom/anythink/core/common/f/m;

    iget-object v2, v2, Lcom/anythink/core/common/f/m;->d:Ljava/lang/String;

    const-string v3, ""

    invoke-direct {v1, v2, v3}, Lcom/anythink/basead/c/i;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 735
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v2

    iput v2, v1, Lcom/anythink/basead/c/i;->f:I

    .line 736
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    iput v0, v1, Lcom/anythink/basead/c/i;->e:I

    const/16 v0, 0x8

    .line 737
    iget-object v2, p0, Lcom/anythink/basead/d/h;->g:Lcom/anythink/core/common/f/ai;

    invoke-static {v0, v2, v1}, Lcom/anythink/basead/a/a;->a(ILcom/anythink/core/common/f/l;Lcom/anythink/basead/c/i;)V

    .line 739
    iget-object v0, p0, Lcom/anythink/basead/d/h;->b:Lcom/anythink/basead/e/a;

    if-eqz v0, :cond_5

    .line 740
    new-instance v1, Lcom/anythink/basead/e/i;

    invoke-direct {v1}, Lcom/anythink/basead/e/i;-><init>()V

    invoke-interface {v0, v1}, Lcom/anythink/basead/e/a;->onAdShow(Lcom/anythink/basead/e/i;)V

    :cond_5
    const/16 v0, 0x72

    .line 744
    invoke-direct {p0, v0}, Lcom/anythink/basead/d/h;->b(I)V

    return-void
.end method

.method private v()Landroid/view/View;
    .locals 3

    .line 749
    iget-object v0, p0, Lcom/anythink/basead/d/h;->m:Lcom/anythink/basead/ui/BaseMediaATView;

    if-eqz v0, :cond_0

    .line 750
    invoke-virtual {v0}, Lcom/anythink/basead/ui/BaseMediaATView;->getMonitorClickView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 752
    iput-object v0, p0, Lcom/anythink/basead/d/h;->n:Landroid/view/View;

    return-object v0

    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/view/View;

    .line 758
    iget-object v1, p0, Lcom/anythink/basead/d/h;->s:Lcom/anythink/basead/ui/OwnNativeATView;

    invoke-direct {p0, v1, v0}, Lcom/anythink/basead/d/h;->a(Landroid/view/View;[Landroid/view/View;)V

    const/4 v1, 0x0

    .line 759
    aget-object v2, v0, v1

    if-eqz v2, :cond_1

    .line 760
    aget-object v2, v0, v1

    iput-object v2, p0, Lcom/anythink/basead/d/h;->n:Landroid/view/View;

    .line 761
    aget-object v0, v0, v1

    return-object v0

    .line 764
    :cond_1
    iget-object v0, p0, Lcom/anythink/basead/d/h;->s:Lcom/anythink/basead/ui/OwnNativeATView;

    return-object v0
.end method

.method private w()V
    .locals 8

    .line 856
    iget-object v0, p0, Lcom/anythink/basead/d/h;->l:Lcom/anythink/expressad/advanced/d/c;

    if-nez v0, :cond_4

    .line 857
    iget-object v3, p0, Lcom/anythink/basead/d/h;->s:Lcom/anythink/basead/ui/OwnNativeATView;

    if-nez v3, :cond_0

    return-void

    .line 860
    :cond_0
    iget-object v4, p0, Lcom/anythink/basead/d/h;->g:Lcom/anythink/core/common/f/ai;

    if-nez v4, :cond_1

    return-void

    .line 863
    :cond_1
    iget-object v5, p0, Lcom/anythink/basead/d/h;->h:Lcom/anythink/core/common/f/m;

    if-nez v5, :cond_2

    return-void

    .line 866
    :cond_2
    new-instance v0, Lcom/anythink/basead/d/h$7;

    .line 869
    iget-boolean v1, p0, Lcom/anythink/basead/d/h;->i:Z

    if-eqz v1, :cond_3

    const/4 v1, 0x5

    const/4 v6, 0x5

    goto :goto_0

    :cond_3
    const/4 v1, 0x6

    const/4 v6, 0x6

    :goto_0
    new-instance v7, Lcom/anythink/basead/d/h$6;

    invoke-direct {v7, p0}, Lcom/anythink/basead/d/h$6;-><init>(Lcom/anythink/basead/d/h;)V

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Lcom/anythink/basead/d/h$7;-><init>(Lcom/anythink/basead/d/h;Landroid/view/ViewGroup;Lcom/anythink/core/common/f/l;Lcom/anythink/core/common/f/m;ILcom/anythink/basead/ui/b/b$a;)V

    iput-object v0, p0, Lcom/anythink/basead/d/h;->r:Lcom/anythink/basead/ui/b/a;

    .line 898
    iget-object v0, p0, Lcom/anythink/basead/d/h;->s:Lcom/anythink/basead/ui/OwnNativeATView;

    new-instance v1, Lcom/anythink/basead/d/h$8;

    invoke-direct {v1, p0}, Lcom/anythink/basead/d/h$8;-><init>(Lcom/anythink/basead/d/h;)V

    invoke-virtual {v0, v1}, Lcom/anythink/basead/ui/OwnNativeATView;->setLifeCallback(Lcom/anythink/basead/ui/OwnNativeATView$a;)V

    :cond_4
    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;ZLcom/anythink/basead/ui/BaseMediaATView$a;)Landroid/view/View;
    .locals 3

    .line 444
    iget-object v0, p0, Lcom/anythink/basead/d/h;->l:Lcom/anythink/expressad/advanced/d/c;

    if-eqz v0, :cond_0

    .line 445
    invoke-virtual {v0, p2}, Lcom/anythink/expressad/advanced/d/c;->a(I)V

    .line 446
    iget-object p1, p0, Lcom/anythink/basead/d/h;->l:Lcom/anythink/expressad/advanced/d/c;

    invoke-virtual {p1}, Lcom/anythink/expressad/advanced/d/c;->c()Lcom/anythink/expressad/advanced/view/ATOutNativeAdvancedViewGroup;

    move-result-object p1

    return-object p1

    .line 449
    :cond_0
    iget-object v0, p0, Lcom/anythink/basead/d/h;->g:Lcom/anythink/core/common/f/ai;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/anythink/core/common/f/ai;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/anythink/basead/d/h;->i:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 450
    invoke-direct {p0, p1, v0, p2, p3}, Lcom/anythink/basead/d/h;->a(Landroid/content/Context;ZZLcom/anythink/basead/ui/BaseMediaATView$a;)Landroid/view/View;

    move-result-object p1

    return-object p1

    .line 453
    :cond_1
    iget-object v0, p0, Lcom/anythink/basead/d/h;->g:Lcom/anythink/core/common/f/ai;

    const/4 v1, 0x0

    if-nez v0, :cond_2

    return-object v1

    .line 457
    :cond_2
    invoke-virtual {v0}, Lcom/anythink/core/common/f/ai;->x()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    return-object v1

    .line 461
    :cond_3
    iget-boolean v0, p0, Lcom/anythink/basead/d/h;->i:Z

    if-eqz v0, :cond_4

    iget-object v2, p0, Lcom/anythink/basead/d/h;->g:Lcom/anythink/core/common/f/ai;

    instance-of v2, v2, Lcom/anythink/core/common/f/j;

    if-eqz v2, :cond_4

    const/4 v0, 0x0

    .line 462
    invoke-direct {p0, p1, v0, p2, p3}, Lcom/anythink/basead/d/h;->a(Landroid/content/Context;ZZLcom/anythink/basead/ui/BaseMediaATView$a;)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_4
    if-nez v0, :cond_5

    .line 465
    iget-object p2, p0, Lcom/anythink/basead/d/h;->g:Lcom/anythink/core/common/f/ai;

    instance-of p3, p2, Lcom/anythink/core/common/f/j;

    if-eqz p3, :cond_5

    .line 1535
    new-instance p3, Lcom/anythink/basead/ui/SimpleMediaATView;

    invoke-direct {p3, p1}, Lcom/anythink/basead/ui/SimpleMediaATView;-><init>(Landroid/content/Context;)V

    .line 1536
    invoke-virtual {p3, p2}, Lcom/anythink/basead/ui/SimpleMediaATView;->initView(Lcom/anythink/core/common/f/l;)V

    .line 1537
    iget-object p1, p0, Lcom/anythink/basead/d/h;->o:Landroid/view/View$OnClickListener;

    invoke-virtual {p3, p1}, Lcom/anythink/basead/ui/SimpleMediaATView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p3

    :cond_5
    return-object v1
.end method

.method public final a()Lcom/anythink/core/common/f/l;
    .locals 1

    .line 340
    iget-object v0, p0, Lcom/anythink/basead/d/h;->g:Lcom/anythink/core/common/f/ai;

    return-object v0
.end method

.method public final a(II)V
    .locals 1

    .line 331
    iput p1, p0, Lcom/anythink/basead/d/h;->p:I

    .line 332
    iput p2, p0, Lcom/anythink/basead/d/h;->q:I

    .line 333
    iget-object v0, p0, Lcom/anythink/basead/d/h;->l:Lcom/anythink/expressad/advanced/d/c;

    if-eqz v0, :cond_0

    .line 334
    invoke-virtual {v0, p2, p1}, Lcom/anythink/expressad/advanced/d/c;->a(II)V

    :cond_0
    return-void
.end method

.method public final a(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    .line 603
    invoke-virtual {p0, p1, v0}, Lcom/anythink/basead/d/h;->a(Landroid/view/View;Ljava/util/List;)V

    return-void
.end method

.method final a(Landroid/view/View;II)V
    .locals 7

    .line 107
    iget-object v0, p0, Lcom/anythink/basead/d/h;->s:Lcom/anythink/basead/ui/OwnNativeATView;

    if-eqz v0, :cond_4

    .line 109
    invoke-direct {p0}, Lcom/anythink/basead/d/h;->u()V

    .line 111
    iget-object v0, p0, Lcom/anythink/basead/d/h;->d:Lcom/anythink/basead/a/b;

    if-nez v0, :cond_0

    .line 112
    new-instance v0, Lcom/anythink/basead/a/b;

    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/core/common/b/o;->f()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/anythink/basead/d/h;->h:Lcom/anythink/core/common/f/m;

    iget-object v3, p0, Lcom/anythink/basead/d/h;->g:Lcom/anythink/core/common/f/ai;

    invoke-direct {v0, v1, v2, v3}, Lcom/anythink/basead/a/b;-><init>(Landroid/content/Context;Lcom/anythink/core/common/f/m;Lcom/anythink/core/common/f/l;)V

    iput-object v0, p0, Lcom/anythink/basead/d/h;->d:Lcom/anythink/basead/a/b;

    .line 115
    :cond_0
    iget-object v0, p0, Lcom/anythink/basead/d/h;->d:Lcom/anythink/basead/a/b;

    invoke-virtual {v0}, Lcom/anythink/basead/a/b;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 122
    :cond_1
    iget-object v0, p0, Lcom/anythink/basead/d/h;->d:Lcom/anythink/basead/a/b;

    new-instance v1, Lcom/anythink/basead/d/h$2;

    invoke-direct {v1, p0, p2, p3}, Lcom/anythink/basead/d/h$2;-><init>(Lcom/anythink/basead/d/h;II)V

    invoke-virtual {v0, v1}, Lcom/anythink/basead/a/b;->a(Lcom/anythink/basead/a/b$b;)V

    .line 157
    new-instance p3, Lcom/anythink/basead/c/i;

    iget-object v0, p0, Lcom/anythink/basead/d/h;->h:Lcom/anythink/core/common/f/m;

    iget-object v0, v0, Lcom/anythink/core/common/f/m;->d:Ljava/lang/String;

    const-string v1, ""

    invoke-direct {p3, v0, v1}, Lcom/anythink/basead/c/i;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    iget-object v0, p0, Lcom/anythink/basead/d/h;->s:Lcom/anythink/basead/ui/OwnNativeATView;

    invoke-virtual {v0}, Lcom/anythink/basead/ui/OwnNativeATView;->getHeight()I

    move-result v0

    iput v0, p3, Lcom/anythink/basead/c/i;->f:I

    .line 159
    iget-object v0, p0, Lcom/anythink/basead/d/h;->s:Lcom/anythink/basead/ui/OwnNativeATView;

    invoke-virtual {v0}, Lcom/anythink/basead/ui/OwnNativeATView;->getWidth()I

    move-result v0

    iput v0, p3, Lcom/anythink/basead/c/i;->e:I

    const/4 v0, 0x1

    if-ne p2, v0, :cond_2

    .line 160
    iget-object p1, p0, Lcom/anythink/basead/d/h;->s:Lcom/anythink/basead/ui/OwnNativeATView;

    invoke-virtual {p1}, Lcom/anythink/basead/ui/OwnNativeATView;->getAdClickRecord()Lcom/anythink/basead/c/a;

    move-result-object p1

    goto :goto_0

    :cond_2
    if-nez p1, :cond_3

    const/4 p1, 0x0

    goto :goto_0

    :cond_3
    const/4 p2, 0x2

    new-array p2, p2, [I

    .line 1180
    invoke-virtual {p1, p2}, Landroid/view/View;->getLocationInWindow([I)V

    const/4 v1, 0x0

    .line 1181
    aget v1, p2, v1

    .line 1182
    aget p2, p2, v0

    .line 1183
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 1184
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    .line 1185
    invoke-static {v0}, Lcom/anythink/basead/d/h;->a(I)I

    move-result v0

    .line 1186
    invoke-static {p1}, Lcom/anythink/basead/d/h;->a(I)I

    move-result p1

    .line 1188
    new-instance v2, Lcom/anythink/basead/c/a;

    invoke-direct {v2}, Lcom/anythink/basead/c/a;-><init>()V

    add-int v3, v1, v0

    .line 1189
    iput v3, v2, Lcom/anythink/basead/c/a;->a:I

    add-int v3, p2, p1

    .line 1190
    iput v3, v2, Lcom/anythink/basead/c/a;->b:I

    .line 1191
    iput v0, v2, Lcom/anythink/basead/c/a;->e:I

    .line 1192
    iput p1, v2, Lcom/anythink/basead/c/a;->f:I

    .line 1194
    iget p1, v2, Lcom/anythink/basead/c/a;->a:I

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v3

    const-wide/high16 v5, 0x402e000000000000L    # 15.0

    mul-double v3, v3, v5

    double-to-int v0, v3

    add-int/2addr p1, v0

    iput p1, v2, Lcom/anythink/basead/c/a;->c:I

    .line 1195
    iget p1, v2, Lcom/anythink/basead/c/a;->b:I

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v3

    mul-double v3, v3, v5

    double-to-int v0, v3

    add-int/2addr p1, v0

    iput p1, v2, Lcom/anythink/basead/c/a;->d:I

    .line 1196
    iget p1, v2, Lcom/anythink/basead/c/a;->c:I

    sub-int/2addr p1, v1

    iput p1, v2, Lcom/anythink/basead/c/a;->g:I

    .line 1197
    iget p1, v2, Lcom/anythink/basead/c/a;->d:I

    sub-int/2addr p1, p2

    iput p1, v2, Lcom/anythink/basead/c/a;->h:I

    move-object p1, v2

    .line 160
    :goto_0
    iput-object p1, p3, Lcom/anythink/basead/c/i;->g:Lcom/anythink/basead/c/a;

    .line 169
    iget-object p1, p0, Lcom/anythink/basead/d/h;->d:Lcom/anythink/basead/a/b;

    invoke-virtual {p1, p3}, Lcom/anythink/basead/a/b;->a(Lcom/anythink/basead/c/i;)V

    const/16 p1, 0x71

    .line 170
    invoke-direct {p0, p1}, Lcom/anythink/basead/d/h;->b(I)V

    :cond_4
    return-void
.end method

.method public final a(Landroid/view/View;Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 1616
    iget-object v0, p0, Lcom/anythink/basead/d/h;->s:Lcom/anythink/basead/ui/OwnNativeATView;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_2

    new-array v0, v1, [Lcom/anythink/basead/ui/OwnNativeATView;

    .line 1618
    invoke-direct {p0, v0, p1}, Lcom/anythink/basead/d/h;->a([Lcom/anythink/basead/ui/OwnNativeATView;Landroid/view/View;)V

    .line 1619
    aget-object v3, v0, v2

    const-string v4, "anythink"

    if-nez v3, :cond_0

    const-string v0, "Register View don\'t contain OwnNativeAdView."

    .line 1620
    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 v1, 0x0

    goto :goto_1

    .line 1624
    :cond_0
    aget-object v3, v0, v2

    invoke-virtual {v3}, Lcom/anythink/basead/ui/OwnNativeATView;->getChildCount()I

    move-result v3

    if-nez v3, :cond_1

    const-string v0, "OwnNativeAdView View don\'t contain any child views."

    .line 1625
    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1629
    :cond_1
    aget-object v0, v0, v2

    iput-object v0, p0, Lcom/anythink/basead/d/h;->s:Lcom/anythink/basead/ui/OwnNativeATView;

    :cond_2
    :goto_1
    if-nez v1, :cond_3

    return-void

    .line 584
    :cond_3
    iget-object v0, p0, Lcom/anythink/basead/d/h;->g:Lcom/anythink/core/common/f/ai;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/anythink/core/common/f/ai;->j()Z

    move-result v0

    if-nez v0, :cond_6

    .line 585
    invoke-virtual {p0, p1}, Lcom/anythink/basead/d/h;->b(Landroid/view/View;)V

    if-eqz p2, :cond_5

    .line 586
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 587
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    if-eqz p2, :cond_4

    .line 589
    iget-object v0, p0, Lcom/anythink/basead/d/h;->o:Landroid/view/View$OnClickListener;

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    .line 594
    :cond_5
    iget-object p2, p0, Lcom/anythink/basead/d/h;->o:Landroid/view/View$OnClickListener;

    invoke-direct {p0, p1, p2}, Lcom/anythink/basead/d/h;->a(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 1856
    :cond_6
    iget-object p1, p0, Lcom/anythink/basead/d/h;->l:Lcom/anythink/expressad/advanced/d/c;

    if-nez p1, :cond_8

    .line 1857
    iget-object v2, p0, Lcom/anythink/basead/d/h;->s:Lcom/anythink/basead/ui/OwnNativeATView;

    if-eqz v2, :cond_8

    .line 1860
    iget-object v3, p0, Lcom/anythink/basead/d/h;->g:Lcom/anythink/core/common/f/ai;

    if-eqz v3, :cond_8

    .line 1863
    iget-object v4, p0, Lcom/anythink/basead/d/h;->h:Lcom/anythink/core/common/f/m;

    if-eqz v4, :cond_8

    .line 1866
    new-instance p1, Lcom/anythink/basead/d/h$7;

    .line 1869
    iget-boolean p2, p0, Lcom/anythink/basead/d/h;->i:Z

    if-eqz p2, :cond_7

    const/4 p2, 0x5

    const/4 v5, 0x5

    goto :goto_3

    :cond_7
    const/4 p2, 0x6

    const/4 v5, 0x6

    :goto_3
    new-instance v6, Lcom/anythink/basead/d/h$6;

    invoke-direct {v6, p0}, Lcom/anythink/basead/d/h$6;-><init>(Lcom/anythink/basead/d/h;)V

    move-object v0, p1

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/anythink/basead/d/h$7;-><init>(Lcom/anythink/basead/d/h;Landroid/view/ViewGroup;Lcom/anythink/core/common/f/l;Lcom/anythink/core/common/f/m;ILcom/anythink/basead/ui/b/b$a;)V

    iput-object p1, p0, Lcom/anythink/basead/d/h;->r:Lcom/anythink/basead/ui/b/a;

    .line 1898
    iget-object p1, p0, Lcom/anythink/basead/d/h;->s:Lcom/anythink/basead/ui/OwnNativeATView;

    new-instance p2, Lcom/anythink/basead/d/h$8;

    invoke-direct {p2, p0}, Lcom/anythink/basead/d/h$8;-><init>(Lcom/anythink/basead/d/h;)V

    invoke-virtual {p1, p2}, Lcom/anythink/basead/ui/OwnNativeATView;->setLifeCallback(Lcom/anythink/basead/ui/OwnNativeATView$a;)V

    :cond_8
    return-void
.end method

.method public final a(Lcom/anythink/basead/e/a;)V
    .locals 0

    .line 546
    iput-object p1, p0, Lcom/anythink/basead/d/h;->b:Lcom/anythink/basead/e/a;

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 5

    .line 557
    iput-object p1, p0, Lcom/anythink/basead/d/h;->k:Ljava/lang/String;

    .line 558
    iget-object v0, p0, Lcom/anythink/basead/d/h;->l:Lcom/anythink/expressad/advanced/d/c;

    if-eqz v0, :cond_4

    .line 559
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v0, 0x3

    if-nez p1, :cond_3

    .line 560
    iget-object p1, p0, Lcom/anythink/basead/d/h;->k:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const/4 v1, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x1

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string v2, "3"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    goto :goto_0

    :pswitch_1
    const-string v2, "2"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    :pswitch_2
    const-string v2, "1"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_1

    goto :goto_1

    .line 568
    :pswitch_3
    iget-object p1, p0, Lcom/anythink/basead/d/h;->l:Lcom/anythink/expressad/advanced/d/c;

    invoke-virtual {p1, v3}, Lcom/anythink/expressad/advanced/d/c;->c(I)V

    :goto_1
    return-void

    .line 565
    :pswitch_4
    iget-object p1, p0, Lcom/anythink/basead/d/h;->l:Lcom/anythink/expressad/advanced/d/c;

    invoke-virtual {p1, v4}, Lcom/anythink/expressad/advanced/d/c;->c(I)V

    return-void

    .line 562
    :pswitch_5
    iget-object p1, p0, Lcom/anythink/basead/d/h;->l:Lcom/anythink/expressad/advanced/d/c;

    invoke-virtual {p1, v0}, Lcom/anythink/expressad/advanced/d/c;->c(I)V

    return-void

    .line 572
    :cond_3
    iget-object p1, p0, Lcom/anythink/basead/d/h;->l:Lcom/anythink/expressad/advanced/d/c;

    invoke-virtual {p1, v0}, Lcom/anythink/expressad/advanced/d/c;->c(I)V

    :cond_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x31
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method public final a(Z)V
    .locals 1

    .line 550
    iput-boolean p1, p0, Lcom/anythink/basead/d/h;->j:Z

    .line 551
    iget-object v0, p0, Lcom/anythink/basead/d/h;->l:Lcom/anythink/expressad/advanced/d/c;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    .line 552
    :goto_0
    invoke-virtual {v0, p1}, Lcom/anythink/expressad/advanced/d/c;->b(I)V

    :cond_1
    return-void
.end method

.method public final a(ZZ)Z
    .locals 2

    .line 816
    iget-object v0, p0, Lcom/anythink/basead/d/h;->g:Lcom/anythink/core/common/f/ai;

    invoke-virtual {v0}, Lcom/anythink/core/common/f/ai;->q()I

    move-result v0

    const/16 v1, 0x43

    if-eq v0, v1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 819
    :cond_0
    iget-object v0, p0, Lcom/anythink/basead/d/h;->g:Lcom/anythink/core/common/f/ai;

    invoke-virtual {v0, p1, p2}, Lcom/anythink/core/common/f/ai;->a(ZZ)Z

    move-result p1

    return p1
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .line 344
    iget-object v0, p0, Lcom/anythink/basead/d/h;->g:Lcom/anythink/core/common/f/ai;

    if-eqz v0, :cond_0

    .line 345
    invoke-virtual {v0}, Lcom/anythink/core/common/f/ai;->u()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public final b(Landroid/view/View;)V
    .locals 3

    .line 668
    iput-object p1, p0, Lcom/anythink/basead/d/h;->e:Landroid/view/View;

    .line 669
    new-instance v0, Lcom/anythink/basead/d/h$5;

    invoke-direct {v0, p0}, Lcom/anythink/basead/d/h$5;-><init>(Lcom/anythink/basead/d/h;)V

    .line 676
    iget-object v1, p0, Lcom/anythink/basead/d/h;->c:Lcom/anythink/core/common/o/a/c;

    if-nez v1, :cond_1

    .line 677
    new-instance v1, Lcom/anythink/core/common/o/a/c;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 678
    iget-object v2, p0, Lcom/anythink/basead/d/h;->h:Lcom/anythink/core/common/f/m;

    iget-object v2, v2, Lcom/anythink/core/common/f/m;->n:Lcom/anythink/core/common/f/n;

    invoke-virtual {v2}, Lcom/anythink/core/common/f/n;->V()I

    move-result v2

    if-gtz v2, :cond_0

    const/16 v2, 0x64

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/anythink/basead/d/h;->h:Lcom/anythink/core/common/f/m;

    iget-object v2, v2, Lcom/anythink/core/common/f/m;->n:Lcom/anythink/core/common/f/n;

    invoke-virtual {v2}, Lcom/anythink/core/common/f/n;->V()I

    move-result v2

    :goto_0
    invoke-direct {v1, v2}, Lcom/anythink/core/common/o/a/c;-><init>(I)V

    iput-object v1, p0, Lcom/anythink/basead/d/h;->c:Lcom/anythink/core/common/o/a/c;

    .line 683
    :cond_1
    iget-object v1, p0, Lcom/anythink/basead/d/h;->c:Lcom/anythink/core/common/o/a/c;

    invoke-virtual {v1, p1, v0}, Lcom/anythink/core/common/o/a/c;->a(Landroid/view/View;Lcom/anythink/core/common/o/a/b;)V

    return-void
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .line 351
    iget-object v0, p0, Lcom/anythink/basead/d/h;->g:Lcom/anythink/core/common/f/ai;

    if-eqz v0, :cond_0

    .line 352
    invoke-virtual {v0}, Lcom/anythink/core/common/f/ai;->v()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .line 358
    iget-object v0, p0, Lcom/anythink/basead/d/h;->g:Lcom/anythink/core/common/f/ai;

    if-eqz v0, :cond_0

    .line 359
    invoke-virtual {v0}, Lcom/anythink/core/common/f/ai;->z()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    .line 365
    iget-object v0, p0, Lcom/anythink/basead/d/h;->g:Lcom/anythink/core/common/f/ai;

    if-eqz v0, :cond_0

    .line 366
    invoke-virtual {v0}, Lcom/anythink/core/common/f/ai;->w()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    .line 372
    iget-object v0, p0, Lcom/anythink/basead/d/h;->g:Lcom/anythink/core/common/f/ai;

    if-eqz v0, :cond_0

    .line 373
    invoke-virtual {v0}, Lcom/anythink/core/common/f/ai;->x()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public final g()Ljava/lang/String;
    .locals 1

    .line 379
    iget-object v0, p0, Lcom/anythink/basead/d/h;->g:Lcom/anythink/core/common/f/ai;

    if-eqz v0, :cond_0

    .line 380
    invoke-virtual {v0}, Lcom/anythink/core/common/f/ai;->y()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public final h()Ljava/lang/String;
    .locals 1

    .line 386
    iget-object v0, p0, Lcom/anythink/basead/d/h;->g:Lcom/anythink/core/common/f/ai;

    if-eqz v0, :cond_0

    .line 387
    invoke-virtual {v0}, Lcom/anythink/core/common/f/ai;->ag()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public final i()Ljava/lang/String;
    .locals 1

    .line 393
    iget-object v0, p0, Lcom/anythink/basead/d/h;->g:Lcom/anythink/core/common/f/ai;

    if-eqz v0, :cond_0

    .line 394
    invoke-virtual {v0}, Lcom/anythink/core/common/f/ai;->I()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public final j()Ljava/lang/String;
    .locals 1

    .line 400
    iget-object v0, p0, Lcom/anythink/basead/d/h;->g:Lcom/anythink/core/common/f/ai;

    if-eqz v0, :cond_0

    .line 401
    invoke-virtual {v0}, Lcom/anythink/core/common/f/ai;->L()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public final k()Ljava/lang/String;
    .locals 1

    .line 407
    iget-object v0, p0, Lcom/anythink/basead/d/h;->g:Lcom/anythink/core/common/f/ai;

    if-eqz v0, :cond_0

    .line 408
    invoke-virtual {v0}, Lcom/anythink/core/common/f/ai;->K()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public final l()Ljava/lang/String;
    .locals 1

    .line 414
    iget-object v0, p0, Lcom/anythink/basead/d/h;->g:Lcom/anythink/core/common/f/ai;

    if-eqz v0, :cond_0

    .line 415
    invoke-virtual {v0}, Lcom/anythink/core/common/f/ai;->J()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public final m()Ljava/lang/String;
    .locals 1

    .line 421
    iget-object v0, p0, Lcom/anythink/basead/d/h;->g:Lcom/anythink/core/common/f/ai;

    if-eqz v0, :cond_0

    .line 422
    invoke-virtual {v0}, Lcom/anythink/core/common/f/ai;->e()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public final n()Z
    .locals 1

    .line 428
    iget-object v0, p0, Lcom/anythink/basead/d/h;->g:Lcom/anythink/core/common/f/ai;

    if-eqz v0, :cond_1

    .line 429
    invoke-virtual {v0}, Lcom/anythink/core/common/f/ai;->I()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/anythink/basead/d/h;->g:Lcom/anythink/core/common/f/ai;

    .line 430
    invoke-virtual {v0}, Lcom/anythink/core/common/f/ai;->ag()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/anythink/basead/d/h;->g:Lcom/anythink/core/common/f/ai;

    .line 431
    invoke-virtual {v0}, Lcom/anythink/core/common/f/ai;->L()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/anythink/basead/d/h;->g:Lcom/anythink/core/common/f/ai;

    .line 432
    invoke-virtual {v0}, Lcom/anythink/core/common/f/ai;->K()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/anythink/basead/d/h;->g:Lcom/anythink/core/common/f/ai;

    .line 433
    invoke-virtual {v0}, Lcom/anythink/core/common/f/ai;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/anythink/basead/d/h;->g:Lcom/anythink/core/common/f/ai;

    .line 434
    invoke-virtual {v0}, Lcom/anythink/core/common/f/ai;->J()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public final o()Z
    .locals 1

    .line 542
    iget-boolean v0, p0, Lcom/anythink/basead/d/h;->i:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/anythink/basead/d/h;->l:Lcom/anythink/expressad/advanced/d/c;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public final p()V
    .locals 1

    .line 662
    iget-object v0, p0, Lcom/anythink/basead/d/h;->c:Lcom/anythink/core/common/o/a/c;

    if-eqz v0, :cond_0

    .line 663
    invoke-virtual {v0}, Lcom/anythink/core/common/o/a/c;->a()V

    :cond_0
    return-void
.end method

.method public final q()V
    .locals 2

    .line 786
    invoke-virtual {p0}, Lcom/anythink/basead/d/h;->p()V

    const/16 v0, 0x70

    .line 787
    invoke-direct {p0, v0}, Lcom/anythink/basead/d/h;->b(I)V

    const/4 v0, 0x0

    .line 788
    iput-object v0, p0, Lcom/anythink/basead/d/h;->e:Landroid/view/View;

    .line 789
    iput-object v0, p0, Lcom/anythink/basead/d/h;->s:Lcom/anythink/basead/ui/OwnNativeATView;

    .line 790
    iput-object v0, p0, Lcom/anythink/basead/d/h;->b:Lcom/anythink/basead/e/a;

    .line 793
    :try_start_0
    iget-object v1, p0, Lcom/anythink/basead/d/h;->l:Lcom/anythink/expressad/advanced/d/c;

    if-eqz v1, :cond_0

    .line 794
    invoke-virtual {v1}, Lcom/anythink/expressad/advanced/d/c;->e()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 797
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 801
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/anythink/basead/d/h;->d:Lcom/anythink/basead/a/b;

    if-eqz v1, :cond_1

    .line 802
    invoke-virtual {v1}, Lcom/anythink/basead/a/b;->d()V

    .line 803
    iput-object v0, p0, Lcom/anythink/basead/d/h;->d:Lcom/anythink/basead/a/b;

    .line 805
    :cond_1
    iget-object v1, p0, Lcom/anythink/basead/d/h;->c:Lcom/anythink/core/common/o/a/c;

    if-eqz v1, :cond_2

    .line 806
    invoke-virtual {v1}, Lcom/anythink/core/common/o/a/c;->b()V

    .line 807
    iput-object v0, p0, Lcom/anythink/basead/d/h;->c:Lcom/anythink/core/common/o/a/c;

    .line 809
    :cond_2
    iget-object v0, p0, Lcom/anythink/basead/d/h;->m:Lcom/anythink/basead/ui/BaseMediaATView;

    if-eqz v0, :cond_3

    .line 810
    invoke-virtual {v0}, Lcom/anythink/basead/ui/BaseMediaATView;->destroy()V

    :cond_3
    return-void
.end method

.method public final r()V
    .locals 2

    .line 823
    iget-object v0, p0, Lcom/anythink/basead/d/h;->l:Lcom/anythink/expressad/advanced/d/c;

    if-eqz v0, :cond_0

    const/4 v1, 0x3

    .line 825
    invoke-virtual {v0, v1}, Lcom/anythink/expressad/advanced/d/c;->d(I)V

    :cond_0
    return-void
.end method

.method public final s()V
    .locals 2

    .line 831
    iget-object v0, p0, Lcom/anythink/basead/d/h;->l:Lcom/anythink/expressad/advanced/d/c;

    if-eqz v0, :cond_0

    const/4 v1, 0x3

    .line 832
    invoke-virtual {v0, v1}, Lcom/anythink/expressad/advanced/d/c;->e(I)V

    :cond_0
    return-void
.end method

.method public final t()I
    .locals 1

    .line 923
    iget-object v0, p0, Lcom/anythink/basead/d/h;->l:Lcom/anythink/expressad/advanced/d/c;

    if-nez v0, :cond_0

    const/4 v0, 0x2

    return v0

    .line 926
    :cond_0
    invoke-virtual {v0}, Lcom/anythink/expressad/advanced/d/c;->f()I

    move-result v0

    return v0
.end method
