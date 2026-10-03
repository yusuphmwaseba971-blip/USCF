.class public abstract Lcom/anythink/basead/ui/BaseSplashATView;
.super Lcom/anythink/basead/ui/BaseATView;


# instance fields
.field protected C:Landroid/widget/TextView;

.field protected D:Lcom/anythink/basead/ui/CloseFrameLayout;

.field protected E:Ljava/lang/String;

.field protected F:Ljava/util/Timer;

.field protected G:Z

.field protected H:Lcom/anythink/basead/e/a;

.field protected I:Lcom/anythink/basead/ui/b;

.field final J:J

.field protected final K:Landroid/view/View$OnClickListener;

.field protected L:Lcom/anythink/basead/ui/d/a;

.field M:Z

.field N:Z

.field O:Z

.field P:Z

.field private v:Lcom/anythink/core/common/o/a/f$b;

.field private w:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 75
    invoke-direct {p0, p1}, Lcom/anythink/basead/ui/BaseATView;-><init>(Landroid/content/Context;)V

    const-string p1, "Skip"

    .line 47
    iput-object p1, p0, Lcom/anythink/basead/ui/BaseSplashATView;->E:Ljava/lang/String;

    const-wide/16 v0, 0x3e8

    .line 56
    iput-wide v0, p0, Lcom/anythink/basead/ui/BaseSplashATView;->J:J

    const-wide/16 v0, 0x1388

    .line 57
    iput-wide v0, p0, Lcom/anythink/basead/ui/BaseSplashATView;->w:J

    .line 59
    new-instance p1, Lcom/anythink/basead/ui/BaseSplashATView$1;

    invoke-direct {p1, p0}, Lcom/anythink/basead/ui/BaseSplashATView$1;-><init>(Lcom/anythink/basead/ui/BaseSplashATView;)V

    iput-object p1, p0, Lcom/anythink/basead/ui/BaseSplashATView;->K:Landroid/view/View$OnClickListener;

    const/4 p1, 0x0

    .line 157
    iput-boolean p1, p0, Lcom/anythink/basead/ui/BaseSplashATView;->M:Z

    .line 178
    iput-boolean p1, p0, Lcom/anythink/basead/ui/BaseSplashATView;->N:Z

    .line 179
    iput-boolean p1, p0, Lcom/anythink/basead/ui/BaseSplashATView;->O:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/anythink/core/common/f/m;Lcom/anythink/core/common/f/l;Lcom/anythink/basead/e/a;)V
    .locals 3

    .line 80
    invoke-direct {p0, p1, p2, p3}, Lcom/anythink/basead/ui/BaseATView;-><init>(Landroid/content/Context;Lcom/anythink/core/common/f/m;Lcom/anythink/core/common/f/l;)V

    const-string p1, "Skip"

    .line 47
    iput-object p1, p0, Lcom/anythink/basead/ui/BaseSplashATView;->E:Ljava/lang/String;

    const-wide/16 p1, 0x3e8

    .line 56
    iput-wide p1, p0, Lcom/anythink/basead/ui/BaseSplashATView;->J:J

    const-wide/16 p1, 0x1388

    .line 57
    iput-wide p1, p0, Lcom/anythink/basead/ui/BaseSplashATView;->w:J

    .line 59
    new-instance p1, Lcom/anythink/basead/ui/BaseSplashATView$1;

    invoke-direct {p1, p0}, Lcom/anythink/basead/ui/BaseSplashATView$1;-><init>(Lcom/anythink/basead/ui/BaseSplashATView;)V

    iput-object p1, p0, Lcom/anythink/basead/ui/BaseSplashATView;->K:Landroid/view/View$OnClickListener;

    const/4 p1, 0x0

    .line 157
    iput-boolean p1, p0, Lcom/anythink/basead/ui/BaseSplashATView;->M:Z

    .line 178
    iput-boolean p1, p0, Lcom/anythink/basead/ui/BaseSplashATView;->N:Z

    .line 179
    iput-boolean p1, p0, Lcom/anythink/basead/ui/BaseSplashATView;->O:Z

    .line 82
    new-instance p2, Lcom/anythink/core/common/o/a/f$b;

    invoke-direct {p2}, Lcom/anythink/core/common/o/a/f$b;-><init>()V

    iput-object p2, p0, Lcom/anythink/basead/ui/BaseSplashATView;->v:Lcom/anythink/core/common/o/a/f$b;

    .line 84
    iput-object p4, p0, Lcom/anythink/basead/ui/BaseSplashATView;->H:Lcom/anythink/basead/e/a;

    .line 86
    invoke-virtual {p0}, Lcom/anythink/basead/ui/BaseSplashATView;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    .line 87
    invoke-virtual {p0}, Lcom/anythink/basead/ui/BaseSplashATView;->getContext()Landroid/content/Context;

    move-result-object p4

    const-string v0, "myoffer_splash_skip_text"

    const-string v1, "string"

    invoke-static {p4, v0, v1}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p4

    .line 86
    invoke-virtual {p2, p4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/anythink/basead/ui/BaseSplashATView;->E:Ljava/lang/String;

    .line 89
    invoke-virtual {p0}, Lcom/anythink/basead/ui/BaseSplashATView;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string p4, "myoffer_splash_skip"

    const-string v0, "id"

    invoke-static {p2, p4, v0}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    .line 88
    invoke-virtual {p0, p2}, Lcom/anythink/basead/ui/BaseSplashATView;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/anythink/basead/ui/BaseSplashATView;->C:Landroid/widget/TextView;

    .line 91
    invoke-virtual {p0}, Lcom/anythink/basead/ui/BaseSplashATView;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string p4, "myoffer_splash_skip_area"

    invoke-static {p2, p4, v0}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    .line 90
    invoke-virtual {p0, p2}, Lcom/anythink/basead/ui/BaseSplashATView;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/anythink/basead/ui/CloseFrameLayout;

    iput-object p2, p0, Lcom/anythink/basead/ui/BaseSplashATView;->D:Lcom/anythink/basead/ui/CloseFrameLayout;

    .line 93
    iget-object p2, p0, Lcom/anythink/basead/ui/BaseSplashATView;->b:Lcom/anythink/core/common/f/m;

    iget-object p2, p2, Lcom/anythink/core/common/f/m;->n:Lcom/anythink/core/common/f/n;

    invoke-virtual {p2}, Lcom/anythink/core/common/f/n;->t()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/anythink/basead/ui/BaseSplashATView;->w:J

    .line 94
    iput-boolean p1, p0, Lcom/anythink/basead/ui/BaseSplashATView;->G:Z

    .line 96
    iget-object p1, p0, Lcom/anythink/basead/ui/BaseSplashATView;->D:Lcom/anythink/basead/ui/CloseFrameLayout;

    iget-object p2, p0, Lcom/anythink/basead/ui/BaseSplashATView;->b:Lcom/anythink/core/common/f/m;

    iget-object p2, p2, Lcom/anythink/core/common/f/m;->n:Lcom/anythink/core/common/f/n;

    .line 97
    invoke-virtual {p2}, Lcom/anythink/core/common/f/n;->n()I

    move-result p2

    .line 96
    invoke-virtual {p0, p1, p2}, Lcom/anythink/basead/ui/BaseSplashATView;->a(Lcom/anythink/basead/ui/a;I)F

    .line 100
    invoke-virtual {p3}, Lcom/anythink/core/common/f/l;->d()I

    move-result p1

    const/4 p2, 0x4

    if-ne p1, p2, :cond_2

    .line 103
    :try_start_0
    invoke-virtual {p0}, Lcom/anythink/basead/ui/BaseSplashATView;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "myoffer_splash_ad_install_btn"

    invoke-static {p1, p2, v0}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 102
    invoke-virtual {p0, p1}, Lcom/anythink/basead/ui/BaseSplashATView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 104
    invoke-static {}, Lcom/anythink/core/api/ATSDKGlobalSetting;->getDirectlySplashAdCTAButtongBgDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 107
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 109
    :cond_0
    invoke-virtual {p0}, Lcom/anythink/basead/ui/BaseSplashATView;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string p3, "myoffer_splash_bg_rectangle_btn_cta_directly_asseblem"

    const-string p4, "drawable"

    invoke-static {p2, p3, p4}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setBackgroundResource(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    .line 115
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    return-void
.end method

.method private a(J)V
    .locals 4

    .line 247
    iget-object v0, p0, Lcom/anythink/basead/ui/BaseSplashATView;->b:Lcom/anythink/core/common/f/m;

    iget-object v0, v0, Lcom/anythink/core/common/f/m;->n:Lcom/anythink/core/common/f/n;

    invoke-virtual {v0}, Lcom/anythink/core/common/f/n;->v()I

    move-result v0

    const-wide/16 v1, 0x3e8

    if-nez v0, :cond_0

    .line 248
    iget-object v0, p0, Lcom/anythink/basead/ui/BaseSplashATView;->C:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    div-long/2addr p1, v1

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "s | "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/anythink/basead/ui/BaseSplashATView;->E:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 250
    :cond_0
    iget-object v0, p0, Lcom/anythink/basead/ui/BaseSplashATView;->C:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    div-long/2addr p1, v1

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " s"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic a(Lcom/anythink/basead/ui/BaseSplashATView;)V
    .locals 1

    const/4 v0, 0x1

    .line 43
    invoke-super {p0, v0, v0}, Lcom/anythink/basead/ui/BaseATView;->a(II)V

    return-void
.end method

.method static synthetic a(Lcom/anythink/basead/ui/BaseSplashATView;J)V
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2}, Lcom/anythink/basead/ui/BaseSplashATView;->a(J)V

    return-void
.end method

.method static synthetic b(Lcom/anythink/basead/ui/BaseSplashATView;J)J
    .locals 0

    .line 43
    iput-wide p1, p0, Lcom/anythink/basead/ui/BaseSplashATView;->w:J

    return-wide p1
.end method

.method private b()V
    .locals 9

    .line 194
    iget-boolean v0, p0, Lcom/anythink/basead/ui/BaseSplashATView;->N:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 197
    iput-boolean v0, p0, Lcom/anythink/basead/ui/BaseSplashATView;->N:Z

    .line 201
    iget-boolean v0, p0, Lcom/anythink/basead/ui/BaseSplashATView;->P:Z

    if-eqz v0, :cond_1

    return-void

    .line 2209
    :cond_1
    iget-object v0, p0, Lcom/anythink/basead/ui/BaseSplashATView;->D:Lcom/anythink/basead/ui/CloseFrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/anythink/basead/ui/CloseFrameLayout;->setVisibility(I)V

    .line 2210
    iget-object v0, p0, Lcom/anythink/basead/ui/BaseSplashATView;->D:Lcom/anythink/basead/ui/CloseFrameLayout;

    new-instance v2, Lcom/anythink/basead/ui/BaseSplashATView$2;

    invoke-direct {v2, p0}, Lcom/anythink/basead/ui/BaseSplashATView$2;-><init>(Lcom/anythink/basead/ui/BaseSplashATView;)V

    invoke-virtual {v0, v2}, Lcom/anythink/basead/ui/CloseFrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2220
    iput-boolean v1, p0, Lcom/anythink/basead/ui/BaseSplashATView;->O:Z

    .line 2222
    new-instance v3, Ljava/util/Timer;

    invoke-direct {v3}, Ljava/util/Timer;-><init>()V

    iput-object v3, p0, Lcom/anythink/basead/ui/BaseSplashATView;->F:Ljava/util/Timer;

    .line 2223
    new-instance v4, Lcom/anythink/basead/ui/BaseSplashATView$3;

    invoke-direct {v4, p0}, Lcom/anythink/basead/ui/BaseSplashATView$3;-><init>(Lcom/anythink/basead/ui/BaseSplashATView;)V

    const-wide/16 v5, 0x3e8

    const-wide/16 v7, 0x3e8

    invoke-virtual/range {v3 .. v8}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 2242
    iget-wide v0, p0, Lcom/anythink/basead/ui/BaseSplashATView;->w:J

    invoke-direct {p0, v0, v1}, Lcom/anythink/basead/ui/BaseSplashATView;->a(J)V

    .line 2243
    iget-wide v0, p0, Lcom/anythink/basead/ui/BaseSplashATView;->w:J

    const-wide/16 v2, 0x3e8

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/anythink/basead/ui/BaseSplashATView;->w:J

    return-void
.end method

.method static synthetic b(Lcom/anythink/basead/ui/BaseSplashATView;)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x2

    .line 43
    invoke-super {p0, v0, v1}, Lcom/anythink/basead/ui/BaseATView;->a(II)V

    return-void
.end method

.method static synthetic c(Lcom/anythink/basead/ui/BaseSplashATView;)Lcom/anythink/core/common/o/a/f$b;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/anythink/basead/ui/BaseSplashATView;->v:Lcom/anythink/core/common/o/a/f$b;

    return-object p0
.end method

.method private c()V
    .locals 9

    .line 209
    iget-object v0, p0, Lcom/anythink/basead/ui/BaseSplashATView;->D:Lcom/anythink/basead/ui/CloseFrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/anythink/basead/ui/CloseFrameLayout;->setVisibility(I)V

    .line 210
    iget-object v0, p0, Lcom/anythink/basead/ui/BaseSplashATView;->D:Lcom/anythink/basead/ui/CloseFrameLayout;

    new-instance v2, Lcom/anythink/basead/ui/BaseSplashATView$2;

    invoke-direct {v2, p0}, Lcom/anythink/basead/ui/BaseSplashATView$2;-><init>(Lcom/anythink/basead/ui/BaseSplashATView;)V

    invoke-virtual {v0, v2}, Lcom/anythink/basead/ui/CloseFrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 220
    iput-boolean v1, p0, Lcom/anythink/basead/ui/BaseSplashATView;->O:Z

    .line 222
    new-instance v3, Ljava/util/Timer;

    invoke-direct {v3}, Ljava/util/Timer;-><init>()V

    iput-object v3, p0, Lcom/anythink/basead/ui/BaseSplashATView;->F:Ljava/util/Timer;

    .line 223
    new-instance v4, Lcom/anythink/basead/ui/BaseSplashATView$3;

    invoke-direct {v4, p0}, Lcom/anythink/basead/ui/BaseSplashATView$3;-><init>(Lcom/anythink/basead/ui/BaseSplashATView;)V

    const-wide/16 v5, 0x3e8

    const-wide/16 v7, 0x3e8

    invoke-virtual/range {v3 .. v8}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 242
    iget-wide v0, p0, Lcom/anythink/basead/ui/BaseSplashATView;->w:J

    invoke-direct {p0, v0, v1}, Lcom/anythink/basead/ui/BaseSplashATView;->a(J)V

    .line 243
    iget-wide v0, p0, Lcom/anythink/basead/ui/BaseSplashATView;->w:J

    const-wide/16 v2, 0x3e8

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/anythink/basead/ui/BaseSplashATView;->w:J

    return-void
.end method

.method static synthetic d(Lcom/anythink/basead/ui/BaseSplashATView;)J
    .locals 2

    .line 43
    iget-wide v0, p0, Lcom/anythink/basead/ui/BaseSplashATView;->w:J

    return-wide v0
.end method

.method static synthetic e(Lcom/anythink/basead/ui/BaseSplashATView;)V
    .locals 3

    const/4 v0, 0x1

    .line 2255
    invoke-virtual {p0, v0}, Lcom/anythink/basead/ui/BaseSplashATView;->b(Z)V

    .line 2256
    iget-object v1, p0, Lcom/anythink/basead/ui/BaseSplashATView;->C:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/anythink/basead/ui/BaseSplashATView;->E:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2257
    iput-boolean v0, p0, Lcom/anythink/basead/ui/BaseSplashATView;->O:Z

    return-void
.end method

.method private o()V
    .locals 3

    const/4 v0, 0x1

    .line 255
    invoke-virtual {p0, v0}, Lcom/anythink/basead/ui/BaseSplashATView;->b(Z)V

    .line 256
    iget-object v1, p0, Lcom/anythink/basead/ui/BaseSplashATView;->C:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/anythink/basead/ui/BaseSplashATView;->E:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 257
    iput-boolean v0, p0, Lcom/anythink/basead/ui/BaseSplashATView;->O:Z

    return-void
.end method


# virtual methods
.method protected final a(II)V
    .locals 0

    .line 307
    invoke-super {p0, p1, p2}, Lcom/anythink/basead/ui/BaseATView;->a(II)V

    .line 308
    iget-object p1, p0, Lcom/anythink/basead/ui/BaseSplashATView;->D:Lcom/anythink/basead/ui/CloseFrameLayout;

    iget-object p2, p0, Lcom/anythink/basead/ui/BaseSplashATView;->b:Lcom/anythink/core/common/f/m;

    iget-object p2, p2, Lcom/anythink/core/common/f/m;->n:Lcom/anythink/core/common/f/n;

    invoke-virtual {p2}, Lcom/anythink/core/common/f/n;->m()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/anythink/basead/ui/BaseSplashATView;->a(Lcom/anythink/basead/ui/a;I)F

    return-void
.end method

.method protected final a(Lcom/anythink/basead/c/e;)V
    .locals 1

    .line 160
    iget-boolean v0, p0, Lcom/anythink/basead/ui/BaseSplashATView;->M:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 161
    iput-boolean v0, p0, Lcom/anythink/basead/ui/BaseSplashATView;->M:Z

    .line 162
    iget-object v0, p0, Lcom/anythink/basead/ui/BaseSplashATView;->H:Lcom/anythink/basead/e/a;

    if-eqz v0, :cond_0

    .line 163
    invoke-interface {v0, p1}, Lcom/anythink/basead/e/a;->onShowFailed(Lcom/anythink/basead/c/e;)V

    :cond_0
    return-void
.end method

.method protected final a(Lcom/anythink/basead/e/i;)V
    .locals 1

    .line 293
    iget-object v0, p0, Lcom/anythink/basead/ui/BaseSplashATView;->H:Lcom/anythink/basead/e/a;

    if-eqz v0, :cond_0

    .line 294
    invoke-interface {v0, p1}, Lcom/anythink/basead/e/a;->onAdClick(Lcom/anythink/basead/e/i;)V

    :cond_0
    return-void
.end method

.method protected final a(Z)V
    .locals 1

    .line 300
    iget-object v0, p0, Lcom/anythink/basead/ui/BaseSplashATView;->H:Lcom/anythink/basead/e/a;

    if-eqz v0, :cond_0

    .line 301
    invoke-interface {v0, p1}, Lcom/anythink/basead/e/a;->onDeeplinkCallback(Z)V

    :cond_0
    return-void
.end method

.method protected final b(Z)V
    .locals 1

    .line 261
    iget-object v0, p0, Lcom/anythink/basead/ui/BaseSplashATView;->F:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 262
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    :cond_0
    const/4 v0, 0x0

    .line 264
    iput-object v0, p0, Lcom/anythink/basead/ui/BaseSplashATView;->F:Ljava/util/Timer;

    .line 266
    iget-boolean v0, p0, Lcom/anythink/basead/ui/BaseSplashATView;->G:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    .line 267
    iput-boolean v0, p0, Lcom/anythink/basead/ui/BaseSplashATView;->G:Z

    const/16 v0, 0x73

    .line 268
    invoke-virtual {p0, v0}, Lcom/anythink/basead/ui/BaseSplashATView;->a(I)V

    if-eqz p1, :cond_2

    .line 270
    iget-boolean p1, p0, Lcom/anythink/basead/ui/BaseSplashATView;->M:Z

    if-nez p1, :cond_1

    const-string p1, "40002"

    const-string v0, "SplashView not showing on screen."

    .line 271
    invoke-static {p1, v0}, Lcom/anythink/basead/c/f;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/basead/c/e;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/anythink/basead/ui/BaseSplashATView;->a(Lcom/anythink/basead/c/e;)V

    .line 275
    :cond_1
    iget-object p1, p0, Lcom/anythink/basead/ui/BaseSplashATView;->H:Lcom/anythink/basead/e/a;

    if-eqz p1, :cond_2

    .line 276
    invoke-interface {p1}, Lcom/anythink/basead/e/a;->onAdClosed()V

    :cond_2
    return-void
.end method

.method public checkSkipViewLocation()V
    .locals 5

    .line 130
    :try_start_0
    iget-object v0, p0, Lcom/anythink/basead/ui/BaseSplashATView;->C:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 131
    instance-of v1, v0, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v1, :cond_0

    .line 132
    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 133
    invoke-virtual {p0}, Lcom/anythink/basead/ui/BaseSplashATView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/anythink/core/common/o/i;->b(Landroid/content/Context;)I

    move-result v1

    add-int/2addr v0, v1

    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 137
    iget-object v2, p0, Lcom/anythink/basead/ui/BaseSplashATView;->C:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->getLocationOnScreen([I)V

    const/4 v2, 0x1

    .line 138
    aget v3, v1, v2

    if-ge v3, v0, :cond_0

    .line 140
    aget v1, v1, v2

    sub-int/2addr v0, v1

    .line 141
    iget-object v1, p0, Lcom/anythink/basead/ui/BaseSplashATView;->C:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 142
    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    .line 143
    move-object v2, v1

    check-cast v2, Landroid/view/ViewGroup;

    move-object v3, v1

    check-cast v3, Landroid/view/ViewGroup;

    .line 144
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v3

    move-object v4, v1

    check-cast v4, Landroid/view/ViewGroup;

    .line 145
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v4

    add-int/2addr v4, v0

    move-object v0, v1

    check-cast v0, Landroid/view/ViewGroup;

    .line 146
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v0

    check-cast v1, Landroid/view/ViewGroup;

    .line 147
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v1

    .line 143
    invoke-virtual {v2, v3, v4, v0, v1}, Landroid/view/ViewGroup;->setPadding(IIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    .line 152
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method protected final d()V
    .locals 3

    .line 122
    invoke-super {p0}, Lcom/anythink/basead/ui/BaseATView;->d()V

    .line 123
    iget-object v0, p0, Lcom/anythink/basead/ui/BaseSplashATView;->b:Lcom/anythink/core/common/f/m;

    if-eqz v0, :cond_0

    .line 124
    new-instance v0, Lcom/anythink/basead/ui/d/a;

    iget-object v1, p0, Lcom/anythink/basead/ui/BaseSplashATView;->c:Lcom/anythink/core/common/f/l;

    iget-object v2, p0, Lcom/anythink/basead/ui/BaseSplashATView;->b:Lcom/anythink/core/common/f/m;

    iget-object v2, v2, Lcom/anythink/core/common/f/m;->n:Lcom/anythink/core/common/f/n;

    invoke-direct {v0, v1, v2}, Lcom/anythink/basead/ui/d/a;-><init>(Lcom/anythink/core/common/f/l;Lcom/anythink/core/common/f/n;)V

    iput-object v0, p0, Lcom/anythink/basead/ui/BaseSplashATView;->L:Lcom/anythink/basead/ui/d/a;

    :cond_0
    return-void
.end method

.method public destroy()V
    .locals 1

    .line 337
    invoke-super {p0}, Lcom/anythink/basead/ui/BaseATView;->destroy()V

    const/4 v0, 0x0

    .line 339
    iput-object v0, p0, Lcom/anythink/basead/ui/BaseSplashATView;->H:Lcom/anythink/basead/e/a;

    return-void
.end method

.method protected final e()V
    .locals 2

    const/4 v0, 0x1

    .line 285
    iput-boolean v0, p0, Lcom/anythink/basead/ui/BaseSplashATView;->M:Z

    .line 286
    iget-object v0, p0, Lcom/anythink/basead/ui/BaseSplashATView;->H:Lcom/anythink/basead/e/a;

    if-eqz v0, :cond_0

    .line 287
    new-instance v1, Lcom/anythink/basead/e/i;

    invoke-direct {v1}, Lcom/anythink/basead/e/i;-><init>()V

    invoke-interface {v0, v1}, Lcom/anythink/basead/e/a;->onAdShow(Lcom/anythink/basead/e/i;)V

    :cond_0
    return-void
.end method

.method protected final f()V
    .locals 1

    .line 313
    iget-object v0, p0, Lcom/anythink/basead/ui/BaseSplashATView;->c:Lcom/anythink/core/common/f/l;

    instance-of v0, v0, Lcom/anythink/core/common/f/ai;

    if-eqz v0, :cond_1

    .line 314
    iget-object v0, p0, Lcom/anythink/basead/ui/BaseSplashATView;->I:Lcom/anythink/basead/ui/b;

    if-nez v0, :cond_0

    .line 315
    new-instance v0, Lcom/anythink/basead/ui/b;

    invoke-direct {v0, p0}, Lcom/anythink/basead/ui/b;-><init>(Landroid/view/ViewGroup;)V

    iput-object v0, p0, Lcom/anythink/basead/ui/BaseSplashATView;->I:Lcom/anythink/basead/ui/b;

    .line 317
    :cond_0
    iget-object v0, p0, Lcom/anythink/basead/ui/BaseSplashATView;->I:Lcom/anythink/basead/ui/b;

    invoke-virtual {v0}, Lcom/anythink/basead/ui/b;->b()V

    :cond_1
    return-void
.end method

.method protected final g()V
    .locals 1

    .line 323
    iget-object v0, p0, Lcom/anythink/basead/ui/BaseSplashATView;->c:Lcom/anythink/core/common/f/l;

    instance-of v0, v0, Lcom/anythink/core/common/f/ai;

    if-eqz v0, :cond_0

    .line 324
    iget-object v0, p0, Lcom/anythink/basead/ui/BaseSplashATView;->I:Lcom/anythink/basead/ui/b;

    if-eqz v0, :cond_0

    .line 325
    new-instance v0, Lcom/anythink/basead/ui/BaseSplashATView$4;

    invoke-direct {v0, p0}, Lcom/anythink/basead/ui/BaseSplashATView$4;-><init>(Lcom/anythink/basead/ui/BaseSplashATView;)V

    invoke-virtual {p0, v0}, Lcom/anythink/basead/ui/BaseSplashATView;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method protected final m()Landroid/widget/RelativeLayout$LayoutParams;
    .locals 5

    .line 372
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 374
    iget-object v1, p0, Lcom/anythink/basead/ui/BaseSplashATView;->b:Lcom/anythink/core/common/f/m;

    iget-object v1, v1, Lcom/anythink/core/common/f/m;->n:Lcom/anythink/core/common/f/n;

    invoke-virtual {v1}, Lcom/anythink/core/common/f/n;->w()I

    move-result v1

    const/16 v2, 0xb

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-ne v1, v3, :cond_0

    .line 376
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v1, 0xc

    .line 377
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 378
    invoke-virtual {p0}, Lcom/anythink/basead/ui/BaseSplashATView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x431a0000    # 154.0f

    invoke-static {v1, v2}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {v0, v4, v4, v4, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_0

    .line 380
    :cond_0
    invoke-virtual {p0}, Lcom/anythink/basead/ui/BaseSplashATView;->getMeasuredHeight()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    div-int/lit8 v1, v1, 0x3

    .line 381
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 382
    invoke-virtual {v0, v4, v1, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    :goto_0
    return-object v0
.end method

.method protected final n()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .line 350
    invoke-super {p0}, Lcom/anythink/basead/ui/BaseATView;->onAttachedToWindow()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 355
    invoke-super {p0}, Lcom/anythink/basead/ui/BaseATView;->onDetachedFromWindow()V

    const/4 v0, 0x0

    .line 356
    invoke-virtual {p0, v0}, Lcom/anythink/basead/ui/BaseSplashATView;->b(Z)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 344
    invoke-super/range {p0 .. p5}, Lcom/anythink/basead/ui/BaseATView;->onLayout(ZIIII)V

    .line 345
    invoke-virtual {p0}, Lcom/anythink/basead/ui/BaseSplashATView;->checkSkipViewLocation()V

    return-void
.end method

.method public onVisibilityAggregated(Z)V
    .locals 2

    .line 406
    invoke-super {p0, p1}, Lcom/anythink/basead/ui/BaseATView;->onVisibilityAggregated(Z)V

    .line 407
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_1

    if-eqz p1, :cond_0

    const/16 p1, 0x6e

    .line 409
    invoke-virtual {p0, p1}, Lcom/anythink/basead/ui/BaseSplashATView;->a(I)V

    return-void

    :cond_0
    const/16 p1, 0x6f

    .line 411
    invoke-virtual {p0, p1}, Lcom/anythink/basead/ui/BaseSplashATView;->a(I)V

    :cond_1
    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 1

    .line 394
    invoke-super {p0, p1, p2}, Lcom/anythink/basead/ui/BaseATView;->onVisibilityChanged(Landroid/view/View;I)V

    .line 395
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x18

    if-ge p1, v0, :cond_1

    if-nez p2, :cond_0

    const/16 p1, 0x6e

    .line 397
    invoke-virtual {p0, p1}, Lcom/anythink/basead/ui/BaseSplashATView;->a(I)V

    return-void

    :cond_0
    const/16 p1, 0x6f

    .line 399
    invoke-virtual {p0, p1}, Lcom/anythink/basead/ui/BaseSplashATView;->a(I)V

    :cond_1
    return-void
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 8

    .line 172
    invoke-super {p0, p1}, Lcom/anythink/basead/ui/BaseATView;->onWindowVisibilityChanged(I)V

    if-nez p1, :cond_0

    .line 1194
    iget-boolean p1, p0, Lcom/anythink/basead/ui/BaseSplashATView;->N:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 1197
    iput-boolean p1, p0, Lcom/anythink/basead/ui/BaseSplashATView;->N:Z

    .line 1201
    iget-boolean p1, p0, Lcom/anythink/basead/ui/BaseSplashATView;->P:Z

    if-nez p1, :cond_0

    .line 1209
    iget-object p1, p0, Lcom/anythink/basead/ui/BaseSplashATView;->D:Lcom/anythink/basead/ui/CloseFrameLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/anythink/basead/ui/CloseFrameLayout;->setVisibility(I)V

    .line 1210
    iget-object p1, p0, Lcom/anythink/basead/ui/BaseSplashATView;->D:Lcom/anythink/basead/ui/CloseFrameLayout;

    new-instance v1, Lcom/anythink/basead/ui/BaseSplashATView$2;

    invoke-direct {v1, p0}, Lcom/anythink/basead/ui/BaseSplashATView$2;-><init>(Lcom/anythink/basead/ui/BaseSplashATView;)V

    invoke-virtual {p1, v1}, Lcom/anythink/basead/ui/CloseFrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1220
    iput-boolean v0, p0, Lcom/anythink/basead/ui/BaseSplashATView;->O:Z

    .line 1222
    new-instance v2, Ljava/util/Timer;

    invoke-direct {v2}, Ljava/util/Timer;-><init>()V

    iput-object v2, p0, Lcom/anythink/basead/ui/BaseSplashATView;->F:Ljava/util/Timer;

    .line 1223
    new-instance v3, Lcom/anythink/basead/ui/BaseSplashATView$3;

    invoke-direct {v3, p0}, Lcom/anythink/basead/ui/BaseSplashATView$3;-><init>(Lcom/anythink/basead/ui/BaseSplashATView;)V

    const-wide/16 v4, 0x3e8

    const-wide/16 v6, 0x3e8

    invoke-virtual/range {v2 .. v7}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 1242
    iget-wide v0, p0, Lcom/anythink/basead/ui/BaseSplashATView;->w:J

    invoke-direct {p0, v0, v1}, Lcom/anythink/basead/ui/BaseSplashATView;->a(J)V

    .line 1243
    iget-wide v0, p0, Lcom/anythink/basead/ui/BaseSplashATView;->w:J

    const-wide/16 v2, 0x3e8

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/anythink/basead/ui/BaseSplashATView;->w:J

    :cond_0
    return-void
.end method

.method protected p()V
    .locals 4

    .line 360
    iget-object v0, p0, Lcom/anythink/basead/ui/BaseSplashATView;->p:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 363
    iget-object v2, p0, Lcom/anythink/basead/ui/BaseSplashATView;->p:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    if-eqz v2, :cond_0

    .line 365
    iget-object v3, p0, Lcom/anythink/basead/ui/BaseSplashATView;->K:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setDontCountDown(Z)V
    .locals 1

    .line 184
    iput-boolean p1, p0, Lcom/anythink/basead/ui/BaseSplashATView;->P:Z

    if-eqz p1, :cond_0

    .line 187
    iget-object p1, p0, Lcom/anythink/basead/ui/BaseSplashATView;->D:Lcom/anythink/basead/ui/CloseFrameLayout;

    if-eqz p1, :cond_0

    const/16 v0, 0x8

    .line 188
    invoke-virtual {p1, v0}, Lcom/anythink/basead/ui/CloseFrameLayout;->setVisibility(I)V

    :cond_0
    return-void
.end method
