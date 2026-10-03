.class public final Lcom/anythink/basead/ui/d/a;
.super Ljava/lang/Object;


# static fields
.field public static final a:I = -0x64

.field public static final b:I = -0x65

.field public static final c:I = -0x66


# instance fields
.field private final d:Lcom/anythink/core/common/f/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/anythink/core/common/f/l<",
            "*>;"
        }
    .end annotation
.end field

.field private final e:Lcom/anythink/core/common/f/n;

.field private f:I

.field private g:Landroid/view/View;

.field private h:Landroid/view/View;

.field private i:Landroid/view/View;

.field private j:Landroid/view/View;

.field private k:Landroid/view/View;

.field private l:Landroid/view/View;

.field private m:Landroid/view/View;

.field private n:Landroid/view/View;

.field private o:Lcom/anythink/basead/ui/c/a;


# direct methods
.method public constructor <init>(Lcom/anythink/core/common/f/l;Lcom/anythink/core/common/f/n;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/anythink/core/common/f/l<",
            "*>;",
            "Lcom/anythink/core/common/f/n;",
            ")V"
        }
    .end annotation

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/anythink/basead/ui/d/a;->d:Lcom/anythink/core/common/f/l;

    .line 49
    iput-object p2, p0, Lcom/anythink/basead/ui/d/a;->e:Lcom/anythink/core/common/f/n;

    return-void
.end method

.method private static a(Landroid/content/Context;F)I
    .locals 0

    .line 339
    invoke-static {p0, p1}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;F)I

    move-result p0

    return p0
.end method

.method static synthetic a(Lcom/anythink/basead/ui/d/a;)Lcom/anythink/basead/ui/c/a;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/anythink/basead/ui/d/a;->o:Lcom/anythink/basead/ui/c/a;

    return-object p0
.end method

.method private a(Landroid/content/Context;)V
    .locals 7

    .line 213
    iget-object v0, p0, Lcom/anythink/basead/ui/d/a;->i:Landroid/view/View;

    const-string v1, "id"

    if-nez v0, :cond_0

    .line 214
    iget-object v0, p0, Lcom/anythink/basead/ui/d/a;->g:Landroid/view/View;

    const-string v2, "myoffer_splash_ad_install_btn"

    .line 215
    invoke-static {p1, v2, v1}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 214
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/basead/ui/d/a;->i:Landroid/view/View;

    .line 217
    :cond_0
    iget-object v0, p0, Lcom/anythink/basead/ui/d/a;->j:Landroid/view/View;

    if-nez v0, :cond_1

    .line 218
    iget-object v0, p0, Lcom/anythink/basead/ui/d/a;->g:Landroid/view/View;

    const-string v2, "myoffer_shake_view"

    .line 219
    invoke-static {p1, v2, v1}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 218
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/basead/ui/d/a;->j:Landroid/view/View;

    .line 221
    :cond_1
    iget-object v0, p0, Lcom/anythink/basead/ui/d/a;->d:Lcom/anythink/core/common/f/l;

    iget-object v2, p0, Lcom/anythink/basead/ui/d/a;->e:Lcom/anythink/core/common/f/n;

    invoke-static {v0, v2}, Lcom/anythink/basead/ui/BaseSdkSplashATView;->isSinglePicture(Lcom/anythink/core/common/f/l;Lcom/anythink/core/common/f/n;)Z

    move-result v0

    const/high16 v2, 0x41d00000    # 26.0f

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    .line 224
    iget-object v0, p0, Lcom/anythink/basead/ui/d/a;->l:Landroid/view/View;

    .line 36339
    invoke-static {p1, v2}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;F)I

    move-result v1

    .line 224
    invoke-virtual {v0, v3, v1, v3, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 225
    iget-object v0, p0, Lcom/anythink/basead/ui/d/a;->i:Landroid/view/View;

    const/high16 v1, 0x42c80000    # 100.0f

    invoke-static {p1, v0, v1}, Lcom/anythink/basead/ui/d/a;->a(Landroid/content/Context;Landroid/view/View;F)V

    .line 226
    iget-object v0, p0, Lcom/anythink/basead/ui/d/a;->j:Landroid/view/View;

    invoke-static {p1, v0, v1}, Lcom/anythink/basead/ui/d/a;->a(Landroid/content/Context;Landroid/view/View;F)V

    goto/16 :goto_0

    .line 228
    :cond_2
    iget-object v0, p0, Lcom/anythink/basead/ui/d/a;->e:Lcom/anythink/core/common/f/n;

    invoke-virtual {v0}, Lcom/anythink/core/common/f/n;->w()I

    move-result v0

    const/4 v4, 0x2

    if-ne v0, v4, :cond_5

    .line 229
    iget-object v0, p0, Lcom/anythink/basead/ui/d/a;->l:Landroid/view/View;

    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 230
    iget-object v0, p0, Lcom/anythink/basead/ui/d/a;->m:Landroid/view/View;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 231
    iget-object v0, p0, Lcom/anythink/basead/ui/d/a;->m:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/high16 v2, 0x42380000    # 46.0f

    .line 37339
    invoke-static {p1, v2}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;F)I

    move-result v2

    .line 232
    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 233
    iget-object v2, p0, Lcom/anythink/basead/ui/d/a;->m:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 234
    iget-object v0, p0, Lcom/anythink/basead/ui/d/a;->m:Landroid/view/View;

    const/high16 v2, 0x41f80000    # 31.0f

    .line 38339
    invoke-static {p1, v2}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;F)I

    move-result v2

    const/high16 v4, 0x41500000    # 13.0f

    .line 39339
    invoke-static {p1, v4}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;F)I

    move-result v5

    const/high16 v6, 0x42040000    # 33.0f

    .line 40339
    invoke-static {p1, v6}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;F)I

    move-result v6

    .line 41339
    invoke-static {p1, v4}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;F)I

    move-result v4

    .line 234
    invoke-virtual {v0, v2, v5, v6, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 236
    iget-object v0, p0, Lcom/anythink/basead/ui/d/a;->m:Landroid/view/View;

    const-string v2, "myoffer_invalid_button_shape_radius_24"

    const-string v4, "drawable"

    .line 237
    invoke-static {p1, v2, v4}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 236
    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 240
    :cond_3
    iget-object v0, p0, Lcom/anythink/basead/ui/d/a;->n:Landroid/view/View;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 241
    iget-object v0, p0, Lcom/anythink/basead/ui/d/a;->n:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 242
    instance-of v2, v0, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v2, :cond_4

    .line 243
    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    const-string v2, "myoffer_fl_invalid_btn"

    .line 245
    invoke-static {p1, v2, v1}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 244
    invoke-virtual {v0, v3, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/high16 v1, 0x41200000    # 10.0f

    .line 42339
    invoke-static {p1, v1}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;F)I

    move-result p1

    .line 246
    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 248
    iget-object p1, p0, Lcom/anythink/basead/ui/d/a;->n:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 250
    :cond_4
    iget-object p1, p0, Lcom/anythink/basead/ui/d/a;->n:Landroid/view/View;

    invoke-virtual {p1, v3, v3, v3, v3}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0

    .line 253
    :cond_5
    iget-object v0, p0, Lcom/anythink/basead/ui/d/a;->l:Landroid/view/View;

    .line 43339
    invoke-static {p1, v2}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;F)I

    move-result v1

    .line 253
    invoke-virtual {v0, v3, v1, v3, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 254
    iget-object v0, p0, Lcom/anythink/basead/ui/d/a;->h:Landroid/view/View;

    if-eqz v0, :cond_6

    const/high16 v1, 0x41c80000    # 25.0f

    .line 44339
    invoke-static {p1, v1}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;F)I

    move-result p1

    .line 255
    invoke-virtual {v0, v3, p1, v3, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 259
    :cond_6
    :goto_0
    iget-object p1, p0, Lcom/anythink/basead/ui/d/a;->l:Landroid/view/View;

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 260
    invoke-direct {p0, v3}, Lcom/anythink/basead/ui/d/a;->a(Z)V

    return-void
.end method

.method private static a(Landroid/content/Context;Landroid/view/View;F)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 318
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 319
    instance-of v0, p1, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v0, :cond_1

    .line 320
    check-cast p1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 45339
    invoke-static {p0, p2}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;F)I

    move-result p0

    .line 320
    iput p0, p1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    return-void

    .line 321
    :cond_1
    instance-of v0, p1, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v0, :cond_2

    .line 322
    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    .line 46339
    invoke-static {p0, p2}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;F)I

    move-result p0

    .line 322
    iput p0, p1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    :cond_2
    return-void
.end method

.method private a(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 287
    iget-object p1, p0, Lcom/anythink/basead/ui/d/a;->m:Landroid/view/View;

    if-eqz p1, :cond_0

    .line 288
    new-instance v0, Lcom/anythink/basead/ui/d/a$1;

    invoke-direct {v0, p0}, Lcom/anythink/basead/ui/d/a$1;-><init>(Lcom/anythink/basead/ui/d/a;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    .line 298
    :cond_0
    iget-object p1, p0, Lcom/anythink/basead/ui/d/a;->l:Landroid/view/View;

    if-nez p1, :cond_1

    return-void

    .line 301
    :cond_1
    new-instance v0, Lcom/anythink/basead/ui/d/a$2;

    invoke-direct {v0, p0}, Lcom/anythink/basead/ui/d/a$2;-><init>(Lcom/anythink/basead/ui/d/a;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic b(Lcom/anythink/basead/ui/d/a;)Landroid/view/View;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/anythink/basead/ui/d/a;->l:Landroid/view/View;

    return-object p0
.end method

.method private b(Landroid/content/Context;)V
    .locals 3

    .line 264
    iget-object v0, p0, Lcom/anythink/basead/ui/d/a;->g:Landroid/view/View;

    const-string v1, "myoffer_include_invalid_button_full_screen"

    const-string v2, "id"

    .line 265
    invoke-static {p1, v1, v2}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 264
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/basead/ui/d/a;->l:Landroid/view/View;

    if-nez v0, :cond_0

    .line 267
    iget-object v0, p0, Lcom/anythink/basead/ui/d/a;->g:Landroid/view/View;

    const-string v1, "myoffer_fl_invalid_btn"

    .line 268
    invoke-static {p1, v1, v2}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 267
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/basead/ui/d/a;->l:Landroid/view/View;

    .line 270
    :cond_0
    iget-object v0, p0, Lcom/anythink/basead/ui/d/a;->g:Landroid/view/View;

    const-string v1, "myoffer_splash_ad_bottom_container"

    .line 271
    invoke-static {p1, v1, v2}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 270
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/basead/ui/d/a;->h:Landroid/view/View;

    .line 272
    iget-object v0, p0, Lcom/anythink/basead/ui/d/a;->g:Landroid/view/View;

    const-string v1, "myoffer_ll_top_content"

    .line 273
    invoke-static {p1, v1, v2}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 272
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/basead/ui/d/a;->k:Landroid/view/View;

    .line 274
    iget-object v0, p0, Lcom/anythink/basead/ui/d/a;->g:Landroid/view/View;

    const-string v1, "myoffer_btn_banner_cta"

    .line 275
    invoke-static {p1, v1, v2}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 274
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/basead/ui/d/a;->i:Landroid/view/View;

    .line 276
    iget-object v0, p0, Lcom/anythink/basead/ui/d/a;->g:Landroid/view/View;

    const-string v1, "myoffer_shake_hint_text"

    .line 277
    invoke-static {p1, v1, v2}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 276
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/basead/ui/d/a;->j:Landroid/view/View;

    .line 278
    iget-object v0, p0, Lcom/anythink/basead/ui/d/a;->g:Landroid/view/View;

    const-string v1, "myoffer_ll_title_desc_container"

    .line 279
    invoke-static {p1, v1, v2}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 278
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/basead/ui/d/a;->n:Landroid/view/View;

    .line 280
    iget-object v0, p0, Lcom/anythink/basead/ui/d/a;->l:Landroid/view/View;

    if-eqz v0, :cond_1

    const-string v1, "myoffer_invalid_btn"

    .line 282
    invoke-static {p1, v1, v2}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 281
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/anythink/basead/ui/d/a;->m:Landroid/view/View;

    :cond_1
    return-void
.end method

.method private static b(Landroid/content/Context;Landroid/view/View;F)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 330
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 331
    instance-of v0, p1, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v0, :cond_1

    .line 332
    check-cast p1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 47339
    invoke-static {p0, p2}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;F)I

    move-result p0

    .line 332
    iput p0, p1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    return-void

    .line 333
    :cond_1
    instance-of v0, p1, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v0, :cond_2

    .line 334
    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    .line 48339
    invoke-static {p0, p2}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;F)I

    move-result p0

    .line 334
    iput p0, p1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    :cond_2
    return-void
.end method


# virtual methods
.method public final a(I)Lcom/anythink/basead/ui/d/a;
    .locals 0

    .line 53
    iput p1, p0, Lcom/anythink/basead/ui/d/a;->f:I

    return-object p0
.end method

.method public final a(Lcom/anythink/basead/ui/c/a;)Lcom/anythink/basead/ui/d/a;
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/anythink/basead/ui/d/a;->o:Lcom/anythink/basead/ui/c/a;

    return-object p0
.end method

.method public final a()V
    .locals 2

    .line 343
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v0

    new-instance v1, Lcom/anythink/basead/ui/d/a$3;

    invoke-direct {v1, p0}, Lcom/anythink/basead/ui/d/a$3;-><init>(Lcom/anythink/basead/ui/d/a;)V

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/b/o;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final a(Landroid/content/Context;Landroid/view/View;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 66
    iput-object v2, v0, Lcom/anythink/basead/ui/d/a;->g:Landroid/view/View;

    if-eqz v2, :cond_18

    .line 67
    iget-object v2, v0, Lcom/anythink/basead/ui/d/a;->d:Lcom/anythink/core/common/f/l;

    if-eqz v2, :cond_18

    iget-object v2, v0, Lcom/anythink/basead/ui/d/a;->e:Lcom/anythink/core/common/f/n;

    if-eqz v2, :cond_18

    invoke-virtual {v2}, Lcom/anythink/core/common/f/n;->al()Z

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_3

    .line 1264
    :cond_0
    iget-object v2, v0, Lcom/anythink/basead/ui/d/a;->g:Landroid/view/View;

    const-string v3, "myoffer_include_invalid_button_full_screen"

    const-string v4, "id"

    .line 1265
    invoke-static {v1, v3, v4}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 1264
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v0, Lcom/anythink/basead/ui/d/a;->l:Landroid/view/View;

    const-string v3, "myoffer_fl_invalid_btn"

    if-nez v2, :cond_1

    .line 1267
    iget-object v2, v0, Lcom/anythink/basead/ui/d/a;->g:Landroid/view/View;

    .line 1268
    invoke-static {v1, v3, v4}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 1267
    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v0, Lcom/anythink/basead/ui/d/a;->l:Landroid/view/View;

    .line 1270
    :cond_1
    iget-object v2, v0, Lcom/anythink/basead/ui/d/a;->g:Landroid/view/View;

    const-string v5, "myoffer_splash_ad_bottom_container"

    .line 1271
    invoke-static {v1, v5, v4}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 1270
    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v0, Lcom/anythink/basead/ui/d/a;->h:Landroid/view/View;

    .line 1272
    iget-object v2, v0, Lcom/anythink/basead/ui/d/a;->g:Landroid/view/View;

    const-string v5, "myoffer_ll_top_content"

    .line 1273
    invoke-static {v1, v5, v4}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 1272
    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v0, Lcom/anythink/basead/ui/d/a;->k:Landroid/view/View;

    .line 1274
    iget-object v2, v0, Lcom/anythink/basead/ui/d/a;->g:Landroid/view/View;

    const-string v5, "myoffer_btn_banner_cta"

    .line 1275
    invoke-static {v1, v5, v4}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 1274
    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v0, Lcom/anythink/basead/ui/d/a;->i:Landroid/view/View;

    .line 1276
    iget-object v2, v0, Lcom/anythink/basead/ui/d/a;->g:Landroid/view/View;

    const-string v5, "myoffer_shake_hint_text"

    .line 1277
    invoke-static {v1, v5, v4}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 1276
    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v0, Lcom/anythink/basead/ui/d/a;->j:Landroid/view/View;

    .line 1278
    iget-object v2, v0, Lcom/anythink/basead/ui/d/a;->g:Landroid/view/View;

    const-string v5, "myoffer_ll_title_desc_container"

    .line 1279
    invoke-static {v1, v5, v4}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 1278
    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v0, Lcom/anythink/basead/ui/d/a;->n:Landroid/view/View;

    .line 1280
    iget-object v2, v0, Lcom/anythink/basead/ui/d/a;->l:Landroid/view/View;

    if-eqz v2, :cond_2

    const-string v5, "myoffer_invalid_btn"

    .line 1282
    invoke-static {v1, v5, v4}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 1281
    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v0, Lcom/anythink/basead/ui/d/a;->m:Landroid/view/View;

    .line 71
    :cond_2
    iget-object v2, v0, Lcom/anythink/basead/ui/d/a;->l:Landroid/view/View;

    if-nez v2, :cond_3

    return-void

    .line 74
    :cond_3
    iget-object v2, v0, Lcom/anythink/basead/ui/d/a;->e:Lcom/anythink/core/common/f/n;

    invoke-virtual {v2}, Lcom/anythink/core/common/f/n;->z()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v5, "4"

    invoke-static {v2, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    const/high16 v5, 0x41200000    # 10.0f

    const-string v6, "drawable"

    const-string v7, "myoffer_invalid_button_shape_radius_24"

    const/high16 v8, 0x42c80000    # 100.0f

    const/high16 v9, 0x41d00000    # 26.0f

    const/4 v10, 0x0

    if-eqz v2, :cond_b

    .line 2213
    iget-object v2, v0, Lcom/anythink/basead/ui/d/a;->i:Landroid/view/View;

    if-nez v2, :cond_4

    .line 2214
    iget-object v2, v0, Lcom/anythink/basead/ui/d/a;->g:Landroid/view/View;

    const-string v11, "myoffer_splash_ad_install_btn"

    .line 2215
    invoke-static {v1, v11, v4}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v11

    .line 2214
    invoke-virtual {v2, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v0, Lcom/anythink/basead/ui/d/a;->i:Landroid/view/View;

    .line 2217
    :cond_4
    iget-object v2, v0, Lcom/anythink/basead/ui/d/a;->j:Landroid/view/View;

    if-nez v2, :cond_5

    .line 2218
    iget-object v2, v0, Lcom/anythink/basead/ui/d/a;->g:Landroid/view/View;

    const-string v11, "myoffer_shake_view"

    .line 2219
    invoke-static {v1, v11, v4}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v11

    .line 2218
    invoke-virtual {v2, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v0, Lcom/anythink/basead/ui/d/a;->j:Landroid/view/View;

    .line 2221
    :cond_5
    iget-object v2, v0, Lcom/anythink/basead/ui/d/a;->d:Lcom/anythink/core/common/f/l;

    iget-object v11, v0, Lcom/anythink/basead/ui/d/a;->e:Lcom/anythink/core/common/f/n;

    invoke-static {v2, v11}, Lcom/anythink/basead/ui/BaseSdkSplashATView;->isSinglePicture(Lcom/anythink/core/common/f/l;Lcom/anythink/core/common/f/n;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 2224
    iget-object v2, v0, Lcom/anythink/basead/ui/d/a;->l:Landroid/view/View;

    .line 2339
    invoke-static {v1, v9}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;F)I

    move-result v3

    .line 2224
    invoke-virtual {v2, v10, v3, v10, v10}, Landroid/view/View;->setPadding(IIII)V

    .line 2225
    iget-object v2, v0, Lcom/anythink/basead/ui/d/a;->i:Landroid/view/View;

    invoke-static {v1, v2, v8}, Lcom/anythink/basead/ui/d/a;->a(Landroid/content/Context;Landroid/view/View;F)V

    .line 2226
    iget-object v2, v0, Lcom/anythink/basead/ui/d/a;->j:Landroid/view/View;

    invoke-static {v1, v2, v8}, Lcom/anythink/basead/ui/d/a;->a(Landroid/content/Context;Landroid/view/View;F)V

    goto/16 :goto_0

    .line 2228
    :cond_6
    iget-object v2, v0, Lcom/anythink/basead/ui/d/a;->e:Lcom/anythink/core/common/f/n;

    invoke-virtual {v2}, Lcom/anythink/core/common/f/n;->w()I

    move-result v2

    const/4 v8, 0x2

    if-ne v2, v8, :cond_9

    .line 2229
    iget-object v2, v0, Lcom/anythink/basead/ui/d/a;->l:Landroid/view/View;

    invoke-virtual {v2, v10, v10, v10, v10}, Landroid/view/View;->setPadding(IIII)V

    .line 2230
    iget-object v2, v0, Lcom/anythink/basead/ui/d/a;->m:Landroid/view/View;

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 2231
    iget-object v2, v0, Lcom/anythink/basead/ui/d/a;->m:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    const/high16 v8, 0x42380000    # 46.0f

    .line 3339
    invoke-static {v1, v8}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;F)I

    move-result v8

    .line 2232
    iput v8, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 2233
    iget-object v8, v0, Lcom/anythink/basead/ui/d/a;->m:Landroid/view/View;

    invoke-virtual {v8, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2234
    iget-object v2, v0, Lcom/anythink/basead/ui/d/a;->m:Landroid/view/View;

    const/high16 v8, 0x41f80000    # 31.0f

    .line 4339
    invoke-static {v1, v8}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;F)I

    move-result v8

    const/high16 v9, 0x41500000    # 13.0f

    .line 5339
    invoke-static {v1, v9}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;F)I

    move-result v11

    const/high16 v12, 0x42040000    # 33.0f

    .line 6339
    invoke-static {v1, v12}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;F)I

    move-result v12

    .line 7339
    invoke-static {v1, v9}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;F)I

    move-result v9

    .line 2234
    invoke-virtual {v2, v8, v11, v12, v9}, Landroid/view/View;->setPadding(IIII)V

    .line 2236
    iget-object v2, v0, Lcom/anythink/basead/ui/d/a;->m:Landroid/view/View;

    .line 2237
    invoke-static {v1, v7, v6}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 2236
    invoke-virtual {v2, v6}, Landroid/view/View;->setBackgroundResource(I)V

    .line 2240
    :cond_7
    iget-object v2, v0, Lcom/anythink/basead/ui/d/a;->n:Landroid/view/View;

    if-eqz v2, :cond_a

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    if-eqz v2, :cond_a

    .line 2241
    iget-object v2, v0, Lcom/anythink/basead/ui/d/a;->n:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 2242
    instance-of v6, v2, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v6, :cond_8

    .line 2243
    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 2245
    invoke-static {v1, v3, v4}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 2244
    invoke-virtual {v2, v10, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 8339
    invoke-static {v1, v5}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;F)I

    move-result v1

    .line 2246
    iput v1, v2, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 2248
    iget-object v1, v0, Lcom/anythink/basead/ui/d/a;->n:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2250
    :cond_8
    iget-object v1, v0, Lcom/anythink/basead/ui/d/a;->n:Landroid/view/View;

    invoke-virtual {v1, v10, v10, v10, v10}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0

    .line 2253
    :cond_9
    iget-object v2, v0, Lcom/anythink/basead/ui/d/a;->l:Landroid/view/View;

    .line 9339
    invoke-static {v1, v9}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;F)I

    move-result v3

    .line 2253
    invoke-virtual {v2, v10, v3, v10, v10}, Landroid/view/View;->setPadding(IIII)V

    .line 2254
    iget-object v2, v0, Lcom/anythink/basead/ui/d/a;->h:Landroid/view/View;

    if-eqz v2, :cond_a

    const/high16 v3, 0x41c80000    # 25.0f

    .line 10339
    invoke-static {v1, v3}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;F)I

    move-result v1

    .line 2255
    invoke-virtual {v2, v10, v1, v10, v10}, Landroid/view/View;->setPadding(IIII)V

    .line 2259
    :cond_a
    :goto_0
    iget-object v1, v0, Lcom/anythink/basead/ui/d/a;->l:Landroid/view/View;

    invoke-virtual {v1, v10}, Landroid/view/View;->setVisibility(I)V

    .line 2260
    invoke-direct {v0, v10}, Lcom/anythink/basead/ui/d/a;->a(Z)V

    return-void

    .line 82
    :cond_b
    iget v2, v0, Lcom/anythink/basead/ui/d/a;->f:I

    const/high16 v12, 0x41a00000    # 20.0f

    const/16 v13, 0xb

    const/4 v14, -0x2

    const/high16 v15, 0x42400000    # 48.0f

    const/16 v8, -0x65

    const/high16 v5, 0x42080000    # 34.0f

    const/high16 v11, 0x41600000    # 14.0f

    if-eq v2, v8, :cond_13

    packed-switch v2, :pswitch_data_0

    .line 160
    invoke-static/range {p1 .. p1}, Lcom/anythink/core/common/o/e;->h(Landroid/content/Context;)Z

    move-result v2

    const/16 v8, -0x64

    if-nez v2, :cond_d

    .line 161
    iget-object v2, v0, Lcom/anythink/basead/ui/d/a;->l:Landroid/view/View;

    .line 28339
    invoke-static {v1, v9}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;F)I

    move-result v3

    .line 161
    invoke-virtual {v2, v10, v3, v10, v10}, Landroid/view/View;->setPadding(IIII)V

    .line 162
    iget-object v2, v0, Lcom/anythink/basead/ui/d/a;->h:Landroid/view/View;

    if-eqz v2, :cond_c

    .line 163
    invoke-virtual {v2, v10, v10, v10, v10}, Landroid/view/View;->setPadding(IIII)V

    .line 165
    :cond_c
    iget-object v2, v0, Lcom/anythink/basead/ui/d/a;->k:Landroid/view/View;

    invoke-static {v1, v2, v11}, Lcom/anythink/basead/ui/d/a;->b(Landroid/content/Context;Landroid/view/View;F)V

    .line 166
    iget-object v2, v0, Lcom/anythink/basead/ui/d/a;->i:Landroid/view/View;

    const/high16 v3, 0x42b80000    # 92.0f

    invoke-static {v1, v2, v3}, Lcom/anythink/basead/ui/d/a;->b(Landroid/content/Context;Landroid/view/View;F)V

    .line 167
    iget v2, v0, Lcom/anythink/basead/ui/d/a;->f:I

    if-ne v2, v8, :cond_17

    .line 168
    iget-object v2, v0, Lcom/anythink/basead/ui/d/a;->l:Landroid/view/View;

    const/high16 v3, 0x42300000    # 44.0f

    invoke-static {v1, v2, v3}, Lcom/anythink/basead/ui/d/a;->a(Landroid/content/Context;Landroid/view/View;F)V

    goto/16 :goto_1

    .line 171
    :cond_d
    iget-object v2, v0, Lcom/anythink/basead/ui/d/a;->l:Landroid/view/View;

    invoke-virtual {v2, v10, v10, v10, v10}, Landroid/view/View;->setPadding(IIII)V

    .line 172
    iget-object v2, v0, Lcom/anythink/basead/ui/d/a;->m:Landroid/view/View;

    if-eqz v2, :cond_e

    .line 173
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 29339
    invoke-static {v1, v15}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;F)I

    move-result v9

    .line 174
    iput v9, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 175
    iget-object v9, v0, Lcom/anythink/basead/ui/d/a;->m:Landroid/view/View;

    invoke-virtual {v9, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 176
    iget-object v2, v0, Lcom/anythink/basead/ui/d/a;->m:Landroid/view/View;

    .line 30339
    invoke-static {v1, v5}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;F)I

    move-result v9

    .line 31339
    invoke-static {v1, v11}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;F)I

    move-result v15

    .line 32339
    invoke-static {v1, v5}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;F)I

    move-result v5

    .line 33339
    invoke-static {v1, v11}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;F)I

    move-result v11

    .line 176
    invoke-virtual {v2, v9, v15, v5, v11}, Landroid/view/View;->setPadding(IIII)V

    .line 178
    iget-object v2, v0, Lcom/anythink/basead/ui/d/a;->m:Landroid/view/View;

    invoke-static {v1, v7, v6}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/view/View;->setBackgroundResource(I)V

    .line 181
    :cond_e
    iget-object v2, v0, Lcom/anythink/basead/ui/d/a;->n:Landroid/view/View;

    if-eqz v2, :cond_f

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    if-eqz v2, :cond_f

    .line 182
    iget-object v2, v0, Lcom/anythink/basead/ui/d/a;->n:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 183
    instance-of v5, v2, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v5, :cond_f

    .line 184
    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 186
    invoke-static {v1, v3, v4}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 185
    invoke-virtual {v2, v10, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 189
    iget-object v3, v0, Lcom/anythink/basead/ui/d/a;->n:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 192
    :cond_f
    iget v2, v0, Lcom/anythink/basead/ui/d/a;->f:I

    if-ne v2, v8, :cond_17

    .line 193
    iget-object v2, v0, Lcom/anythink/basead/ui/d/a;->l:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 194
    iput v14, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 195
    instance-of v3, v2, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v3, :cond_10

    .line 196
    move-object v3, v2

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v3, v13}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 34339
    invoke-static {v1, v12}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;F)I

    move-result v4

    .line 198
    iput v4, v3, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    const/high16 v4, 0x41f00000    # 30.0f

    .line 35339
    invoke-static {v1, v4}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;F)I

    move-result v1

    .line 200
    iput v1, v3, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 203
    :cond_10
    iget-object v1, v0, Lcom/anythink/basead/ui/d/a;->l:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_1

    .line 139
    :pswitch_0
    invoke-static/range {p1 .. p1}, Lcom/anythink/core/common/o/e;->h(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 140
    iget-object v2, v0, Lcom/anythink/basead/ui/d/a;->m:Landroid/view/View;

    if-eqz v2, :cond_11

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    if-eqz v2, :cond_11

    .line 141
    iget-object v2, v0, Lcom/anythink/basead/ui/d/a;->m:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    const/high16 v3, 0x42a00000    # 80.0f

    .line 21339
    invoke-static {v1, v3}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;F)I

    move-result v3

    .line 142
    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 22339
    invoke-static {v1, v15}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;F)I

    move-result v3

    .line 143
    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 144
    iget-object v3, v0, Lcom/anythink/basead/ui/d/a;->m:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 145
    iget-object v2, v0, Lcom/anythink/basead/ui/d/a;->m:Landroid/view/View;

    .line 23339
    invoke-static {v1, v5}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;F)I

    move-result v3

    .line 24339
    invoke-static {v1, v11}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;F)I

    move-result v4

    .line 25339
    invoke-static {v1, v5}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;F)I

    move-result v5

    .line 26339
    invoke-static {v1, v11}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;F)I

    move-result v8

    .line 145
    invoke-virtual {v2, v3, v4, v5, v8}, Landroid/view/View;->setPadding(IIII)V

    .line 147
    iget-object v2, v0, Lcom/anythink/basead/ui/d/a;->m:Landroid/view/View;

    invoke-static {v1, v7, v6}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_11
    const/4 v1, 0x1

    goto/16 :goto_2

    .line 153
    :cond_12
    iget-object v2, v0, Lcom/anythink/basead/ui/d/a;->l:Landroid/view/View;

    const/high16 v3, 0x41200000    # 10.0f

    .line 27339
    invoke-static {v1, v3}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;F)I

    move-result v1

    .line 153
    invoke-virtual {v2, v10, v1, v10, v10}, Landroid/view/View;->setPadding(IIII)V

    goto/16 :goto_1

    :pswitch_1
    const/high16 v3, 0x41200000    # 10.0f

    .line 93
    iget-object v2, v0, Lcom/anythink/basead/ui/d/a;->l:Landroid/view/View;

    .line 12339
    invoke-static {v1, v3}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;F)I

    move-result v3

    .line 93
    invoke-virtual {v2, v10, v3, v10, v10}, Landroid/view/View;->setPadding(IIII)V

    .line 94
    iget-object v2, v0, Lcom/anythink/basead/ui/d/a;->d:Lcom/anythink/core/common/f/l;

    invoke-virtual {v2}, Lcom/anythink/core/common/f/l;->w()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_17

    .line 95
    iget-object v2, v0, Lcom/anythink/basead/ui/d/a;->k:Landroid/view/View;

    const/high16 v3, 0x43200000    # 160.0f

    invoke-static {v1, v2, v3}, Lcom/anythink/basead/ui/d/a;->a(Landroid/content/Context;Landroid/view/View;F)V

    .line 96
    iget-object v2, v0, Lcom/anythink/basead/ui/d/a;->i:Landroid/view/View;

    const/high16 v3, 0x428c0000    # 70.0f

    invoke-static {v1, v2, v3}, Lcom/anythink/basead/ui/d/a;->a(Landroid/content/Context;Landroid/view/View;F)V

    .line 97
    iget-object v2, v0, Lcom/anythink/basead/ui/d/a;->j:Landroid/view/View;

    const/high16 v3, 0x42f80000    # 124.0f

    invoke-static {v1, v2, v3}, Lcom/anythink/basead/ui/d/a;->a(Landroid/content/Context;Landroid/view/View;F)V

    goto/16 :goto_1

    .line 85
    :pswitch_2
    iget-object v2, v0, Lcom/anythink/basead/ui/d/a;->l:Landroid/view/View;

    .line 11339
    invoke-static {v1, v9}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;F)I

    move-result v3

    .line 85
    invoke-virtual {v2, v10, v3, v10, v10}, Landroid/view/View;->setPadding(IIII)V

    .line 86
    iget-object v2, v0, Lcom/anythink/basead/ui/d/a;->d:Lcom/anythink/core/common/f/l;

    invoke-virtual {v2}, Lcom/anythink/core/common/f/l;->w()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_17

    .line 87
    iget-object v2, v0, Lcom/anythink/basead/ui/d/a;->i:Landroid/view/View;

    const/high16 v3, 0x42c80000    # 100.0f

    invoke-static {v1, v2, v3}, Lcom/anythink/basead/ui/d/a;->a(Landroid/content/Context;Landroid/view/View;F)V

    .line 88
    iget-object v2, v0, Lcom/anythink/basead/ui/d/a;->j:Landroid/view/View;

    const/high16 v3, 0x431a0000    # 154.0f

    invoke-static {v1, v2, v3}, Lcom/anythink/basead/ui/d/a;->a(Landroid/content/Context;Landroid/view/View;F)V

    goto/16 :goto_1

    .line 102
    :cond_13
    :pswitch_3
    invoke-static/range {p1 .. p1}, Lcom/anythink/core/common/o/e;->h(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_14

    .line 103
    iget-object v2, v0, Lcom/anythink/basead/ui/d/a;->l:Landroid/view/View;

    .line 13339
    invoke-static {v1, v9}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;F)I

    move-result v3

    .line 103
    invoke-virtual {v2, v10, v3, v10, v10}, Landroid/view/View;->setPadding(IIII)V

    .line 104
    iget-object v2, v0, Lcom/anythink/basead/ui/d/a;->i:Landroid/view/View;

    const/high16 v3, 0x42c80000    # 100.0f

    invoke-static {v1, v2, v3}, Lcom/anythink/basead/ui/d/a;->a(Landroid/content/Context;Landroid/view/View;F)V

    .line 105
    iget-object v2, v0, Lcom/anythink/basead/ui/d/a;->j:Landroid/view/View;

    const/high16 v3, 0x43180000    # 152.0f

    invoke-static {v1, v2, v3}, Lcom/anythink/basead/ui/d/a;->a(Landroid/content/Context;Landroid/view/View;F)V

    .line 106
    iget v2, v0, Lcom/anythink/basead/ui/d/a;->f:I

    if-ne v2, v8, :cond_17

    .line 107
    iget-object v2, v0, Lcom/anythink/basead/ui/d/a;->l:Landroid/view/View;

    const/high16 v3, 0x420c0000    # 35.0f

    invoke-static {v1, v2, v3}, Lcom/anythink/basead/ui/d/a;->a(Landroid/content/Context;Landroid/view/View;F)V

    goto :goto_1

    .line 111
    :cond_14
    iget-object v2, v0, Lcom/anythink/basead/ui/d/a;->l:Landroid/view/View;

    invoke-virtual {v2, v10, v10, v10, v10}, Landroid/view/View;->setPadding(IIII)V

    .line 112
    iget-object v2, v0, Lcom/anythink/basead/ui/d/a;->m:Landroid/view/View;

    if-eqz v2, :cond_15

    .line 113
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 14339
    invoke-static {v1, v15}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;F)I

    move-result v3

    .line 114
    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 115
    iget-object v3, v0, Lcom/anythink/basead/ui/d/a;->m:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 116
    iget-object v2, v0, Lcom/anythink/basead/ui/d/a;->m:Landroid/view/View;

    .line 15339
    invoke-static {v1, v5}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;F)I

    move-result v3

    .line 16339
    invoke-static {v1, v11}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;F)I

    move-result v4

    .line 17339
    invoke-static {v1, v5}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;F)I

    move-result v5

    .line 18339
    invoke-static {v1, v11}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;F)I

    move-result v9

    .line 116
    invoke-virtual {v2, v3, v4, v5, v9}, Landroid/view/View;->setPadding(IIII)V

    .line 118
    iget-object v2, v0, Lcom/anythink/basead/ui/d/a;->m:Landroid/view/View;

    invoke-static {v1, v7, v6}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 121
    :cond_15
    iget v2, v0, Lcom/anythink/basead/ui/d/a;->f:I

    if-ne v2, v8, :cond_17

    .line 122
    iget-object v2, v0, Lcom/anythink/basead/ui/d/a;->l:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 123
    iput v14, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 124
    instance-of v3, v2, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v3, :cond_16

    .line 125
    move-object v3, v2

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v3, v13}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 19339
    invoke-static {v1, v12}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;F)I

    move-result v4

    .line 127
    iput v4, v3, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    const/high16 v4, 0x41f00000    # 30.0f

    .line 20339
    invoke-static {v1, v4}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;F)I

    move-result v1

    .line 129
    iput v1, v3, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 132
    :cond_16
    iget-object v1, v0, Lcom/anythink/basead/ui/d/a;->l:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_17
    :goto_1
    const/4 v1, 0x0

    .line 208
    :goto_2
    iget-object v2, v0, Lcom/anythink/basead/ui/d/a;->l:Landroid/view/View;

    invoke-virtual {v2, v10}, Landroid/view/View;->setVisibility(I)V

    .line 209
    invoke-direct {v0, v1}, Lcom/anythink/basead/ui/d/a;->a(Z)V

    :cond_18
    :goto_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public final b()V
    .locals 2

    .line 354
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v0

    new-instance v1, Lcom/anythink/basead/ui/d/a$4;

    invoke-direct {v1, p0}, Lcom/anythink/basead/ui/d/a$4;-><init>(Lcom/anythink/basead/ui/d/a;)V

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/b/o;->b(Ljava/lang/Runnable;)V

    return-void
.end method
