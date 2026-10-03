.class public final Lcom/anythink/basead/ui/b/f;
.super Lcom/anythink/basead/ui/b/b;


# instance fields
.field i:Lcom/anythink/basead/ui/BaseShakeView;

.field j:Lcom/anythink/basead/ui/BaseShakeView;

.field final k:J

.field final l:J

.field m:Z

.field n:Z

.field o:Z

.field private p:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 51
    invoke-direct {p0}, Lcom/anythink/basead/ui/b/b;-><init>()V

    const/4 v0, 0x0

    .line 57
    iput-boolean v0, p0, Lcom/anythink/basead/ui/b/f;->p:Z

    const-wide/16 v1, 0xbb8

    .line 58
    iput-wide v1, p0, Lcom/anythink/basead/ui/b/f;->k:J

    const-wide/16 v1, 0x1f4

    .line 59
    iput-wide v1, p0, Lcom/anythink/basead/ui/b/f;->l:J

    .line 60
    iput-boolean v0, p0, Lcom/anythink/basead/ui/b/f;->m:Z

    .line 61
    iput-boolean v0, p0, Lcom/anythink/basead/ui/b/f;->n:Z

    .line 62
    iput-boolean v0, p0, Lcom/anythink/basead/ui/b/f;->o:Z

    return-void
.end method

.method private a(Lcom/anythink/basead/ui/BaseShakeView;)V
    .locals 2

    .line 381
    new-instance v0, Lcom/anythink/basead/ui/b/f$2;

    invoke-direct {v0, p0}, Lcom/anythink/basead/ui/b/f$2;-><init>(Lcom/anythink/basead/ui/b/f;)V

    invoke-virtual {p1, v0}, Lcom/anythink/basead/ui/BaseShakeView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 390
    new-instance v0, Lcom/anythink/basead/ui/b/f$3;

    invoke-direct {v0, p0}, Lcom/anythink/basead/ui/b/f$3;-><init>(Lcom/anythink/basead/ui/b/f;)V

    iget-object v1, p0, Lcom/anythink/basead/ui/b/f;->c:Lcom/anythink/core/common/f/m;

    iget-object v1, v1, Lcom/anythink/core/common/f/m;->n:Lcom/anythink/core/common/f/n;

    invoke-virtual {p1, v0, v1}, Lcom/anythink/basead/ui/BaseShakeView;->setOnShakeListener(Lcom/anythink/basead/ui/BaseShakeView$a;Lcom/anythink/core/common/f/n;)V

    return-void
.end method

.method static synthetic a(Lcom/anythink/basead/ui/b/f;)Z
    .locals 0

    .line 51
    invoke-direct {p0}, Lcom/anythink/basead/ui/b/f;->g()Z

    move-result p0

    return p0
.end method

.method private c()V
    .locals 6

    .line 248
    iget-object v0, p0, Lcom/anythink/basead/ui/b/f;->g:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/anythink/basead/ui/b/f;->d:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/anythink/basead/ui/b/f;->g:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    if-lez v0, :cond_0

    .line 249
    iget-object v0, p0, Lcom/anythink/basead/ui/b/f;->d:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/anythink/basead/ui/b/f;->g:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    .line 252
    :goto_0
    iget v1, p0, Lcom/anythink/basead/ui/b/f;->e:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 253
    iget-object v1, p0, Lcom/anythink/basead/ui/b/f;->i:Lcom/anythink/basead/ui/BaseShakeView;

    if-eqz v1, :cond_5

    .line 254
    invoke-static {v1}, Lcom/anythink/core/common/o/w;->a(Landroid/view/View;)V

    .line 255
    iget-object v1, p0, Lcom/anythink/basead/ui/b/f;->i:Lcom/anythink/basead/ui/BaseShakeView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/anythink/basead/ui/BaseShakeView;->setVisibility(I)V

    .line 256
    iget-object v1, p0, Lcom/anythink/basead/ui/b/f;->d:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/anythink/basead/ui/b/f;->i:Lcom/anythink/basead/ui/BaseShakeView;

    invoke-virtual {v1, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    return-void

    :cond_1
    const/4 v1, 0x0

    .line 261
    :try_start_0
    iget-object v2, p0, Lcom/anythink/basead/ui/b/f;->d:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/anythink/basead/ui/b/f;->a:Landroid/content/Context;

    const-string v4, "myoffer_end_card_id"

    const-string v5, "id"

    .line 262
    invoke-static {v3, v4, v5}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 261
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, v2

    goto :goto_1

    :catchall_0
    nop

    .line 266
    :goto_1
    iget-object v2, p0, Lcom/anythink/basead/ui/b/f;->i:Lcom/anythink/basead/ui/BaseShakeView;

    const/16 v3, 0x8

    if-eqz v2, :cond_3

    .line 267
    invoke-static {v2}, Lcom/anythink/core/common/o/w;->a(Landroid/view/View;)V

    .line 268
    iget-object v2, p0, Lcom/anythink/basead/ui/b/f;->i:Lcom/anythink/basead/ui/BaseShakeView;

    invoke-virtual {v2, v3}, Lcom/anythink/basead/ui/BaseShakeView;->setVisibility(I)V

    if-eqz v1, :cond_2

    .line 270
    iget-object v2, p0, Lcom/anythink/basead/ui/b/f;->i:Lcom/anythink/basead/ui/BaseShakeView;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    goto :goto_2

    .line 272
    :cond_2
    iget-object v2, p0, Lcom/anythink/basead/ui/b/f;->d:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/anythink/basead/ui/b/f;->i:Lcom/anythink/basead/ui/BaseShakeView;

    invoke-virtual {v2, v4, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 276
    :cond_3
    :goto_2
    iget-object v2, p0, Lcom/anythink/basead/ui/b/f;->j:Lcom/anythink/basead/ui/BaseShakeView;

    if-eqz v2, :cond_5

    .line 277
    invoke-static {v2}, Lcom/anythink/core/common/o/w;->a(Landroid/view/View;)V

    .line 278
    iget-object v2, p0, Lcom/anythink/basead/ui/b/f;->j:Lcom/anythink/basead/ui/BaseShakeView;

    invoke-virtual {v2, v3}, Lcom/anythink/basead/ui/BaseShakeView;->setVisibility(I)V

    if-eqz v1, :cond_4

    .line 280
    iget-object v0, p0, Lcom/anythink/basead/ui/b/f;->j:Lcom/anythink/basead/ui/BaseShakeView;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    return-void

    .line 282
    :cond_4
    iget-object v1, p0, Lcom/anythink/basead/ui/b/f;->d:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/anythink/basead/ui/b/f;->j:Lcom/anythink/basead/ui/BaseShakeView;

    invoke-virtual {v1, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    :cond_5
    return-void
.end method

.method private d()V
    .locals 4

    .line 290
    iget-object v0, p0, Lcom/anythink/basead/ui/b/f;->i:Lcom/anythink/basead/ui/BaseShakeView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/anythink/basead/ui/b/f;->j:Lcom/anythink/basead/ui/BaseShakeView;

    if-eqz v0, :cond_0

    .line 291
    iget-boolean v0, p0, Lcom/anythink/basead/ui/b/f;->p:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/anythink/basead/ui/b/f;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 292
    iput-boolean v0, p0, Lcom/anythink/basead/ui/b/f;->p:Z

    .line 293
    iget-object v0, p0, Lcom/anythink/basead/ui/b/f;->i:Lcom/anythink/basead/ui/BaseShakeView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/anythink/basead/ui/BaseShakeView;->setVisibility(I)V

    .line 294
    iget-object v0, p0, Lcom/anythink/basead/ui/b/f;->i:Lcom/anythink/basead/ui/BaseShakeView;

    new-instance v1, Lcom/anythink/basead/ui/b/f$1;

    invoke-direct {v1, p0}, Lcom/anythink/basead/ui/b/f$1;-><init>(Lcom/anythink/basead/ui/b/f;)V

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Lcom/anythink/basead/ui/BaseShakeView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method private e()V
    .locals 2

    .line 344
    invoke-direct {p0}, Lcom/anythink/basead/ui/b/f;->f()V

    .line 346
    iget-object v0, p0, Lcom/anythink/basead/ui/b/f;->j:Lcom/anythink/basead/ui/BaseShakeView;

    if-eqz v0, :cond_0

    .line 348
    iget v0, p0, Lcom/anythink/basead/ui/b/f;->e:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/anythink/basead/ui/b/f;->b:Lcom/anythink/core/common/f/l;

    invoke-static {v0}, Lcom/anythink/basead/a/d;->b(Lcom/anythink/core/common/f/l;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/anythink/basead/ui/b/f;->b:Lcom/anythink/core/common/f/l;

    .line 349
    invoke-static {v0}, Lcom/anythink/basead/a/d;->a(Lcom/anythink/core/common/f/l;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 351
    iget-object v0, p0, Lcom/anythink/basead/ui/b/f;->c:Lcom/anythink/core/common/f/m;

    iget-object v0, v0, Lcom/anythink/core/common/f/m;->n:Lcom/anythink/core/common/f/n;

    invoke-virtual {v0}, Lcom/anythink/core/common/f/n;->D()I

    move-result v0

    if-nez v0, :cond_0

    .line 352
    iget-object v0, p0, Lcom/anythink/basead/ui/b/f;->j:Lcom/anythink/basead/ui/BaseShakeView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/anythink/basead/ui/BaseShakeView;->setAlpha(F)V

    .line 353
    iget-object v0, p0, Lcom/anythink/basead/ui/b/f;->j:Lcom/anythink/basead/ui/BaseShakeView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/anythink/basead/ui/BaseShakeView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private f()V
    .locals 2

    .line 360
    iget-object v0, p0, Lcom/anythink/basead/ui/b/f;->i:Lcom/anythink/basead/ui/BaseShakeView;

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    .line 361
    invoke-virtual {v0, v1}, Lcom/anythink/basead/ui/BaseShakeView;->setVisibility(I)V

    .line 364
    :cond_0
    iget-object v0, p0, Lcom/anythink/basead/ui/b/f;->j:Lcom/anythink/basead/ui/BaseShakeView;

    if-eqz v0, :cond_1

    .line 365
    invoke-virtual {v0, v1}, Lcom/anythink/basead/ui/BaseShakeView;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method private g()Z
    .locals 3

    .line 412
    iget v0, p0, Lcom/anythink/basead/ui/b/f;->e:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/anythink/basead/ui/b/f;->b:Lcom/anythink/core/common/f/l;

    iget-object v2, p0, Lcom/anythink/basead/ui/b/f;->c:Lcom/anythink/core/common/f/m;

    invoke-static {v0, v2}, Lcom/anythink/basead/a/d;->a(Lcom/anythink/core/common/f/l;Lcom/anythink/core/common/f/m;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/anythink/basead/ui/b/f;->m:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    return v1
.end method


# virtual methods
.method public final a()V
    .locals 0

    return-void
.end method

.method public final a(ILjava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/16 v0, 0x66

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p1, v0, :cond_7

    const/16 v0, 0x69

    if-eq p1, v0, :cond_6

    const/16 v0, 0x6a

    const/4 v3, 0x3

    if-eq p1, v0, :cond_5

    const/16 v0, 0x6e

    if-eq p1, v0, :cond_4

    const/16 v0, 0x6f

    if-eq p1, v0, :cond_3

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    .line 171
    :pswitch_0
    iget p1, p0, Lcom/anythink/basead/ui/b/f;->e:I

    if-ne p1, v3, :cond_8

    iget-object p1, p0, Lcom/anythink/basead/ui/b/f;->b:Lcom/anythink/core/common/f/l;

    invoke-static {p1}, Lcom/anythink/basead/a/d;->b(Lcom/anythink/core/common/f/l;)Z

    move-result p1

    if-nez p1, :cond_8

    .line 172
    invoke-direct {p0}, Lcom/anythink/basead/ui/b/f;->c()V

    return-void

    .line 233
    :pswitch_1
    iput-boolean v2, p0, Lcom/anythink/basead/ui/b/f;->o:Z

    goto/16 :goto_0

    .line 195
    :pswitch_2
    iget p1, p0, Lcom/anythink/basead/ui/b/f;->e:I

    if-ne p1, v2, :cond_0

    .line 196
    invoke-direct {p0}, Lcom/anythink/basead/ui/b/f;->c()V

    .line 197
    invoke-direct {p0}, Lcom/anythink/basead/ui/b/f;->d()V

    :cond_0
    if-eqz p2, :cond_1

    const-string p1, "screen_style"

    .line 202
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 204
    instance-of p2, p1, Ljava/lang/Integer;

    if-eqz p2, :cond_1

    .line 205
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    if-nez v1, :cond_2

    .line 210
    iget p1, p0, Lcom/anythink/basead/ui/b/f;->e:I

    const/4 p2, 0x2

    if-ne p1, p2, :cond_8

    iget-object p1, p0, Lcom/anythink/basead/ui/b/f;->b:Lcom/anythink/core/common/f/l;

    invoke-static {p1}, Lcom/anythink/basead/a/d;->a(Lcom/anythink/core/common/f/l;)Z

    move-result p1

    if-nez p1, :cond_8

    .line 212
    :cond_2
    invoke-direct {p0}, Lcom/anythink/basead/ui/b/f;->c()V

    .line 213
    invoke-direct {p0}, Lcom/anythink/basead/ui/b/f;->d()V

    return-void

    .line 230
    :cond_3
    iput-boolean v1, p0, Lcom/anythink/basead/ui/b/f;->n:Z

    return-void

    .line 227
    :cond_4
    iput-boolean v2, p0, Lcom/anythink/basead/ui/b/f;->n:Z

    return-void

    .line 177
    :cond_5
    iget p1, p0, Lcom/anythink/basead/ui/b/f;->e:I

    if-ne p1, v3, :cond_8

    iget-object p1, p0, Lcom/anythink/basead/ui/b/f;->b:Lcom/anythink/core/common/f/l;

    invoke-static {p1}, Lcom/anythink/basead/a/d;->b(Lcom/anythink/core/common/f/l;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 178
    invoke-direct {p0}, Lcom/anythink/basead/ui/b/f;->c()V

    return-void

    .line 224
    :cond_6
    invoke-direct {p0}, Lcom/anythink/basead/ui/b/f;->f()V

    return-void

    .line 217
    :cond_7
    iput-boolean v2, p0, Lcom/anythink/basead/ui/b/f;->m:Z

    .line 218
    iget p1, p0, Lcom/anythink/basead/ui/b/f;->e:I

    if-ne p1, v2, :cond_8

    iget-object p1, p0, Lcom/anythink/basead/ui/b/f;->b:Lcom/anythink/core/common/f/l;

    iget-object p2, p0, Lcom/anythink/basead/ui/b/f;->c:Lcom/anythink/core/common/f/m;

    invoke-static {p1, p2}, Lcom/anythink/basead/a/d;->a(Lcom/anythink/core/common/f/l;Lcom/anythink/core/common/f/m;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 1344
    invoke-direct {p0}, Lcom/anythink/basead/ui/b/f;->f()V

    .line 1346
    iget-object p1, p0, Lcom/anythink/basead/ui/b/f;->j:Lcom/anythink/basead/ui/BaseShakeView;

    if-eqz p1, :cond_8

    .line 1348
    iget p1, p0, Lcom/anythink/basead/ui/b/f;->e:I

    if-ne p1, v2, :cond_8

    iget-object p1, p0, Lcom/anythink/basead/ui/b/f;->b:Lcom/anythink/core/common/f/l;

    invoke-static {p1}, Lcom/anythink/basead/a/d;->b(Lcom/anythink/core/common/f/l;)Z

    move-result p1

    if-nez p1, :cond_8

    iget-object p1, p0, Lcom/anythink/basead/ui/b/f;->b:Lcom/anythink/core/common/f/l;

    .line 1349
    invoke-static {p1}, Lcom/anythink/basead/a/d;->a(Lcom/anythink/core/common/f/l;)Z

    move-result p1

    if-nez p1, :cond_8

    .line 1351
    iget-object p1, p0, Lcom/anythink/basead/ui/b/f;->c:Lcom/anythink/core/common/f/m;

    iget-object p1, p1, Lcom/anythink/core/common/f/m;->n:Lcom/anythink/core/common/f/n;

    invoke-virtual {p1}, Lcom/anythink/core/common/f/n;->D()I

    move-result p1

    if-nez p1, :cond_8

    .line 1352
    iget-object p1, p0, Lcom/anythink/basead/ui/b/f;->j:Lcom/anythink/basead/ui/BaseShakeView;

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {p1, p2}, Lcom/anythink/basead/ui/BaseShakeView;->setAlpha(F)V

    .line 1353
    iget-object p1, p0, Lcom/anythink/basead/ui/b/f;->j:Lcom/anythink/basead/ui/BaseShakeView;

    invoke-virtual {p1, v1}, Lcom/anythink/basead/ui/BaseShakeView;->setVisibility(I)V

    :cond_8
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x72
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final a(Landroid/content/Context;Lcom/anythink/core/common/f/l;Lcom/anythink/core/common/f/m;Landroid/view/ViewGroup;Landroid/widget/RelativeLayout;Landroid/view/View;ILcom/anythink/basead/ui/b/b$a;)V
    .locals 5

    .line 69
    invoke-super/range {p0 .. p8}, Lcom/anythink/basead/ui/b/b;->a(Landroid/content/Context;Lcom/anythink/core/common/f/l;Lcom/anythink/core/common/f/m;Landroid/view/ViewGroup;Landroid/widget/RelativeLayout;Landroid/view/View;ILcom/anythink/basead/ui/b/b$a;)V

    .line 72
    iget p3, p0, Lcom/anythink/basead/ui/b/f;->e:I

    const/16 p4, 0xc

    const/4 p5, 0x2

    const/16 p6, 0xf

    const/16 p8, 0xb

    const/16 v0, 0xd

    const/4 v1, 0x1

    const/4 v2, -0x2

    const/4 v3, 0x0

    const/4 v4, 0x3

    if-eq p3, v4, :cond_1

    .line 73
    new-instance p2, Lcom/anythink/basead/ui/ShakeThumbView;

    invoke-direct {p2, p1}, Lcom/anythink/basead/ui/ShakeThumbView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/anythink/basead/ui/b/f;->i:Lcom/anythink/basead/ui/BaseShakeView;

    .line 74
    new-instance p2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {p2, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 76
    invoke-virtual {p2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 77
    iget-object p3, p0, Lcom/anythink/basead/ui/b/f;->i:Lcom/anythink/basead/ui/BaseShakeView;

    invoke-virtual {p3, p2}, Lcom/anythink/basead/ui/BaseShakeView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 79
    new-instance p2, Lcom/anythink/basead/ui/ShakeBorderThumbView;

    invoke-direct {p2, p1}, Lcom/anythink/basead/ui/ShakeBorderThumbView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/anythink/basead/ui/b/f;->j:Lcom/anythink/basead/ui/BaseShakeView;

    .line 80
    new-instance p2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {p2, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 82
    invoke-virtual {p2, p8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    if-ne p7, v1, :cond_0

    .line 84
    invoke-static {p1}, Lcom/anythink/core/common/o/e;->g(Landroid/content/Context;)I

    move-result p3

    if-ne p3, p5, :cond_0

    .line 86
    invoke-virtual {p2, p4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/high16 p3, 0x43400000    # 192.0f

    .line 87
    invoke-static {p1, p3}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;F)I

    move-result p1

    invoke-virtual {p2, v3, v3, v3, p1}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_0

    .line 89
    :cond_0
    invoke-virtual {p2, p6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 91
    :goto_0
    iget-object p1, p0, Lcom/anythink/basead/ui/b/f;->j:Lcom/anythink/basead/ui/BaseShakeView;

    invoke-virtual {p1, p2}, Lcom/anythink/basead/ui/BaseShakeView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 93
    iget-object p1, p0, Lcom/anythink/basead/ui/b/f;->i:Lcom/anythink/basead/ui/BaseShakeView;

    invoke-direct {p0, p1}, Lcom/anythink/basead/ui/b/f;->a(Lcom/anythink/basead/ui/BaseShakeView;)V

    .line 94
    iget-object p1, p0, Lcom/anythink/basead/ui/b/f;->j:Lcom/anythink/basead/ui/BaseShakeView;

    invoke-direct {p0, p1}, Lcom/anythink/basead/ui/b/f;->a(Lcom/anythink/basead/ui/BaseShakeView;)V

    goto/16 :goto_4

    .line 96
    :cond_1
    new-instance p3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {p3, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 99
    iget-object p7, p0, Lcom/anythink/basead/ui/b/f;->c:Lcom/anythink/core/common/f/m;

    iget-object p7, p7, Lcom/anythink/core/common/f/m;->n:Lcom/anythink/core/common/f/n;

    invoke-virtual {p7}, Lcom/anythink/core/common/f/n;->ao()I

    move-result p7

    if-ne p7, v1, :cond_2

    iget-object p7, p0, Lcom/anythink/basead/ui/b/f;->c:Lcom/anythink/core/common/f/m;

    iget-object p7, p7, Lcom/anythink/core/common/f/m;->n:Lcom/anythink/core/common/f/n;

    .line 100
    invoke-virtual {p7}, Lcom/anythink/core/common/f/n;->aq()Ljava/lang/String;

    move-result-object p7

    .line 99
    invoke-static {p7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p7

    if-eqz p7, :cond_4

    :cond_2
    iget-object p7, p0, Lcom/anythink/basead/ui/b/f;->c:Lcom/anythink/core/common/f/m;

    iget-object p7, p7, Lcom/anythink/core/common/f/m;->n:Lcom/anythink/core/common/f/n;

    .line 100
    invoke-virtual {p7}, Lcom/anythink/core/common/f/n;->ab()Z

    move-result p7

    if-nez p7, :cond_4

    iget-object p7, p0, Lcom/anythink/basead/ui/b/f;->c:Lcom/anythink/core/common/f/m;

    iget-object p7, p7, Lcom/anythink/core/common/f/m;->n:Lcom/anythink/core/common/f/n;

    invoke-virtual {p7}, Lcom/anythink/core/common/f/n;->al()Z

    move-result p7

    if-eqz p7, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    .line 102
    :cond_4
    :goto_1
    iget-object p7, p0, Lcom/anythink/basead/ui/b/f;->b:Lcom/anythink/core/common/f/l;

    invoke-virtual {p7}, Lcom/anythink/core/common/f/l;->j()Z

    move-result p7

    const/high16 v2, 0x41d00000    # 26.0f

    if-eqz p7, :cond_6

    if-nez v1, :cond_5

    .line 104
    new-instance p2, Lcom/anythink/basead/ui/ShakeThumbView;

    invoke-direct {p2, p1}, Lcom/anythink/basead/ui/ShakeThumbView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/anythink/basead/ui/b/f;->i:Lcom/anythink/basead/ui/BaseShakeView;

    .line 105
    invoke-virtual {p3, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 106
    iget-object p2, p0, Lcom/anythink/basead/ui/b/f;->i:Lcom/anythink/basead/ui/BaseShakeView;

    invoke-static {p1, v2}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;F)I

    move-result p1

    invoke-virtual {p2, v3, v3, v3, p1}, Lcom/anythink/basead/ui/BaseShakeView;->setPadding(IIII)V

    goto/16 :goto_3

    .line 109
    :cond_5
    new-instance p2, Lcom/anythink/basead/ui/ShakeBorderThumbView;

    invoke-direct {p2, p1}, Lcom/anythink/basead/ui/ShakeBorderThumbView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/anythink/basead/ui/b/f;->i:Lcom/anythink/basead/ui/BaseShakeView;

    .line 110
    invoke-virtual {p3, p8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 111
    invoke-virtual {p3, p6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto/16 :goto_3

    .line 113
    :cond_6
    iget-object p7, p0, Lcom/anythink/basead/ui/b/f;->b:Lcom/anythink/core/common/f/l;

    iget-object v4, p0, Lcom/anythink/basead/ui/b/f;->c:Lcom/anythink/core/common/f/m;

    iget-object v4, v4, Lcom/anythink/core/common/f/m;->n:Lcom/anythink/core/common/f/n;

    invoke-static {p7, v4}, Lcom/anythink/basead/ui/BaseSdkSplashATView;->isSinglePicture(Lcom/anythink/core/common/f/l;Lcom/anythink/core/common/f/n;)Z

    move-result p7

    if-eqz p7, :cond_9

    .line 115
    new-instance p6, Lcom/anythink/basead/ui/ShakeView;

    invoke-direct {p6, p1}, Lcom/anythink/basead/ui/ShakeView;-><init>(Landroid/content/Context;)V

    iput-object p6, p0, Lcom/anythink/basead/ui/b/f;->i:Lcom/anythink/basead/ui/BaseShakeView;

    const/16 p6, 0xe

    .line 116
    invoke-virtual {p3, p6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 117
    invoke-virtual {p3, p4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 119
    iget-object p4, p0, Lcom/anythink/basead/ui/b/f;->c:Lcom/anythink/core/common/f/m;

    iget-object p4, p4, Lcom/anythink/core/common/f/m;->n:Lcom/anythink/core/common/f/n;

    invoke-virtual {p4}, Lcom/anythink/core/common/f/n;->w()I

    move-result p4

    if-ne p4, p5, :cond_7

    const/high16 p4, 0x42380000    # 46.0f

    invoke-static {p1, p4}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;F)I

    move-result p4

    goto :goto_2

    :cond_7
    const/high16 p4, 0x427c0000    # 63.0f

    .line 120
    invoke-static {p1, p4}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;F)I

    move-result p4

    .line 122
    :goto_2
    iget-object p5, p0, Lcom/anythink/basead/ui/b/f;->c:Lcom/anythink/core/common/f/m;

    iget-object p5, p5, Lcom/anythink/core/common/f/m;->n:Lcom/anythink/core/common/f/n;

    invoke-virtual {p5}, Lcom/anythink/core/common/f/n;->al()Z

    move-result p5

    if-eqz p5, :cond_8

    const/high16 p4, 0x42c80000    # 100.0f

    .line 123
    invoke-static {p1, p4}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;F)I

    move-result p4

    .line 126
    :cond_8
    iget-object p1, p0, Lcom/anythink/basead/ui/b/f;->i:Lcom/anythink/basead/ui/BaseShakeView;

    check-cast p1, Lcom/anythink/basead/ui/ShakeView;

    invoke-virtual {p1, v1}, Lcom/anythink/basead/ui/ShakeView;->setNeedHideShakeIcon(Z)V

    .line 128
    invoke-virtual {p3, v3, v3, v3, p4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 130
    invoke-virtual {p2}, Lcom/anythink/core/common/f/l;->d()I

    move-result p1

    const/4 p2, 0x4

    if-ne p1, p2, :cond_c

    .line 131
    invoke-static {}, Lcom/anythink/core/api/ATSDKGlobalSetting;->getDirectlySplashAdShakeIconString()Ljava/lang/String;

    move-result-object p1

    .line 132
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_c

    .line 133
    iget-object p2, p0, Lcom/anythink/basead/ui/b/f;->i:Lcom/anythink/basead/ui/BaseShakeView;

    check-cast p2, Lcom/anythink/basead/ui/ShakeView;

    invoke-virtual {p2, p1}, Lcom/anythink/basead/ui/ShakeView;->setShakeHintText(Ljava/lang/String;)V

    goto :goto_3

    :cond_9
    if-nez v1, :cond_b

    .line 138
    new-instance p2, Lcom/anythink/basead/ui/ShakeThumbView;

    invoke-direct {p2, p1}, Lcom/anythink/basead/ui/ShakeThumbView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/anythink/basead/ui/b/f;->i:Lcom/anythink/basead/ui/BaseShakeView;

    .line 139
    invoke-virtual {p3, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 140
    iget-object p2, p0, Lcom/anythink/basead/ui/b/f;->c:Lcom/anythink/core/common/f/m;

    iget-object p2, p2, Lcom/anythink/core/common/f/m;->n:Lcom/anythink/core/common/f/n;

    invoke-virtual {p2}, Lcom/anythink/core/common/f/n;->w()I

    move-result p2

    if-ne p2, p5, :cond_a

    .line 142
    iget-object p2, p0, Lcom/anythink/basead/ui/b/f;->i:Lcom/anythink/basead/ui/BaseShakeView;

    invoke-static {p1, v2}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;F)I

    move-result p1

    invoke-virtual {p2, v3, v3, v3, p1}, Lcom/anythink/basead/ui/BaseShakeView;->setPadding(IIII)V

    goto :goto_3

    .line 145
    :cond_a
    iget-object p2, p0, Lcom/anythink/basead/ui/b/f;->i:Lcom/anythink/basead/ui/BaseShakeView;

    const/high16 p4, 0x42b80000    # 92.0f

    invoke-static {p1, p4}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;F)I

    move-result p1

    invoke-virtual {p2, v3, v3, v3, p1}, Lcom/anythink/basead/ui/BaseShakeView;->setPadding(IIII)V

    goto :goto_3

    .line 149
    :cond_b
    new-instance p2, Lcom/anythink/basead/ui/ShakeBorderThumbView;

    invoke-direct {p2, p1}, Lcom/anythink/basead/ui/ShakeBorderThumbView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/anythink/basead/ui/b/f;->i:Lcom/anythink/basead/ui/BaseShakeView;

    .line 150
    invoke-virtual {p3, p8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 151
    invoke-virtual {p3, p6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 154
    :cond_c
    :goto_3
    iget-object p1, p0, Lcom/anythink/basead/ui/b/f;->i:Lcom/anythink/basead/ui/BaseShakeView;

    invoke-virtual {p1, p3}, Lcom/anythink/basead/ui/BaseShakeView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 155
    iget-object p1, p0, Lcom/anythink/basead/ui/b/f;->i:Lcom/anythink/basead/ui/BaseShakeView;

    invoke-direct {p0, p1}, Lcom/anythink/basead/ui/b/f;->a(Lcom/anythink/basead/ui/BaseShakeView;)V

    .line 158
    :goto_4
    iget-object p1, p0, Lcom/anythink/basead/ui/b/f;->i:Lcom/anythink/basead/ui/BaseShakeView;

    if-eqz p1, :cond_d

    .line 159
    iget-object p2, p0, Lcom/anythink/basead/ui/b/f;->c:Lcom/anythink/core/common/f/m;

    iget-object p2, p2, Lcom/anythink/core/common/f/m;->n:Lcom/anythink/core/common/f/n;

    invoke-virtual {p1, p2}, Lcom/anythink/basead/ui/BaseShakeView;->setShakeSetting(Lcom/anythink/core/common/f/n;)V

    .line 161
    :cond_d
    iget-object p1, p0, Lcom/anythink/basead/ui/b/f;->j:Lcom/anythink/basead/ui/BaseShakeView;

    if-eqz p1, :cond_e

    .line 162
    iget-object p2, p0, Lcom/anythink/basead/ui/b/f;->c:Lcom/anythink/core/common/f/m;

    iget-object p2, p2, Lcom/anythink/core/common/f/m;->n:Lcom/anythink/core/common/f/n;

    invoke-virtual {p1, p2}, Lcom/anythink/basead/ui/BaseShakeView;->setShakeSetting(Lcom/anythink/core/common/f/n;)V

    :cond_e
    return-void
.end method

.method protected final b()Z
    .locals 2

    .line 376
    iget v0, p0, Lcom/anythink/basead/ui/b/f;->e:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/anythink/basead/ui/b/f;->n:Z

    if-nez v0, :cond_1

    :cond_0
    iget v0, p0, Lcom/anythink/basead/ui/b/f;->e:I

    if-ne v0, v1, :cond_2

    iget-boolean v0, p0, Lcom/anythink/basead/ui/b/f;->o:Z

    if-nez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    return v0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method
