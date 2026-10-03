.class public final Lcom/anythink/basead/a/c/a;
.super Ljava/lang/Object;


# instance fields
.field a:Landroid/widget/TextView;

.field b:Landroid/view/View;

.field c:Landroid/widget/ImageView;

.field d:Landroid/view/View;

.field e:Landroid/view/View;

.field f:Landroid/content/Context;

.field g:Landroid/animation/ValueAnimator;

.field h:Z

.field i:Z

.field j:I

.field k:I

.field private l:Landroid/view/ViewGroup;

.field private m:Landroid/widget/TextView;

.field private n:Landroid/widget/TextView;

.field private o:Landroid/widget/TextView;

.field private p:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/anythink/basead/a/c/a;->f:Landroid/content/Context;

    .line 52
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const-string v1, "myoffer_letter_top_layout"

    const-string v2, "layout"

    invoke-static {p1, v1, v2}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/basead/a/c/a;->d:Landroid/view/View;

    .line 53
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/anythink/basead/a/c/a;->e:Landroid/view/View;

    const-string v1, "myoffer_letter_bottom"

    const-string v2, "drawable"

    .line 54
    invoke-static {p1, v1, v2}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 55
    iget-object v0, p0, Lcom/anythink/basead/a/c/a;->d:Landroid/view/View;

    const-string v1, "myoffer_btn_banner_cta"

    const-string v2, "id"

    invoke-static {p1, v1, v2}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/anythink/basead/a/c/a;->a:Landroid/widget/TextView;

    .line 56
    iget-object v0, p0, Lcom/anythink/basead/a/c/a;->d:Landroid/view/View;

    const-string v1, "myoffer_letter_icon"

    invoke-static {p1, v1, v2}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/basead/a/c/a;->b:Landroid/view/View;

    .line 57
    iget-object v0, p0, Lcom/anythink/basead/a/c/a;->d:Landroid/view/View;

    const-string v1, "myoffer_four_element_container"

    invoke-static {p1, v1, v2}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/anythink/basead/a/c/a;->l:Landroid/view/ViewGroup;

    .line 58
    iget-object v0, p0, Lcom/anythink/basead/a/c/a;->d:Landroid/view/View;

    const-string v1, "myoffer_version_name"

    invoke-static {p1, v1, v2}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/anythink/basead/a/c/a;->m:Landroid/widget/TextView;

    .line 59
    iget-object v0, p0, Lcom/anythink/basead/a/c/a;->d:Landroid/view/View;

    const-string v1, "myoffer_publisher_name"

    invoke-static {p1, v1, v2}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/anythink/basead/a/c/a;->n:Landroid/widget/TextView;

    .line 60
    iget-object v0, p0, Lcom/anythink/basead/a/c/a;->d:Landroid/view/View;

    const-string v1, "myoffer_permission_manage"

    invoke-static {p1, v1, v2}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/anythink/basead/a/c/a;->o:Landroid/widget/TextView;

    .line 61
    iget-object v0, p0, Lcom/anythink/basead/a/c/a;->d:Landroid/view/View;

    const-string v1, "myoffer_privacy_agreement"

    invoke-static {p1, v1, v2}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/anythink/basead/a/c/a;->p:Landroid/widget/TextView;

    .line 62
    iget-object v0, p0, Lcom/anythink/basead/a/c/a;->d:Landroid/view/View;

    const-string v1, "myoffer_ad_logo"

    invoke-static {p1, v1, v2}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/anythink/basead/a/c/a;->c:Landroid/widget/ImageView;

    return-void
.end method

.method private a(Lcom/anythink/core/common/f/l;)V
    .locals 6

    .line 136
    invoke-virtual {p1}, Lcom/anythink/core/common/f/l;->N()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 137
    iget-object v0, p0, Lcom/anythink/basead/a/c/a;->m:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/anythink/basead/a/c/a;->f:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/anythink/basead/a/c/a;->f:Landroid/content/Context;

    const-string v3, "myoffer_panel_version"

    const-string v4, "string"

    .line 138
    invoke-static {v2, v3, v4}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    .line 139
    invoke-virtual {p1}, Lcom/anythink/core/common/f/l;->J()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 137
    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 142
    iget-object v0, p0, Lcom/anythink/basead/a/c/a;->n:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/anythink/core/common/f/l;->I()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 144
    iget-object v0, p0, Lcom/anythink/basead/a/c/a;->p:Landroid/widget/TextView;

    new-instance v1, Lcom/anythink/basead/a/c/a$2;

    invoke-direct {v1, p0, p1}, Lcom/anythink/basead/a/c/a$2;-><init>(Lcom/anythink/basead/a/c/a;Lcom/anythink/core/common/f/l;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 150
    iget-object v0, p0, Lcom/anythink/basead/a/c/a;->o:Landroid/widget/TextView;

    new-instance v1, Lcom/anythink/basead/a/c/a$3;

    invoke-direct {v1, p0, p1}, Lcom/anythink/basead/a/c/a$3;-><init>(Lcom/anythink/basead/a/c/a;Lcom/anythink/core/common/f/l;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 157
    iget-object p1, p0, Lcom/anythink/basead/a/c/a;->m:Landroid/widget/TextView;

    new-instance v0, Lcom/anythink/basead/a/c/a$4;

    invoke-direct {v0, p0}, Lcom/anythink/basead/a/c/a$4;-><init>(Lcom/anythink/basead/a/c/a;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 163
    iget-object p1, p0, Lcom/anythink/basead/a/c/a;->n:Landroid/widget/TextView;

    new-instance v0, Lcom/anythink/basead/a/c/a$5;

    invoke-direct {v0, p0}, Lcom/anythink/basead/a/c/a$5;-><init>(Lcom/anythink/basead/a/c/a;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 170
    iget-object p1, p0, Lcom/anythink/basead/a/c/a;->l:Landroid/view/ViewGroup;

    if-eqz p1, :cond_0

    .line 171
    invoke-virtual {p1, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 173
    :cond_0
    iget-object p1, p0, Lcom/anythink/basead/a/c/a;->m:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    .line 174
    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 176
    :cond_1
    iget-object p1, p0, Lcom/anythink/basead/a/c/a;->n:Landroid/widget/TextView;

    if-eqz p1, :cond_2

    .line 177
    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 179
    :cond_2
    iget-object p1, p0, Lcom/anythink/basead/a/c/a;->p:Landroid/widget/TextView;

    if-eqz p1, :cond_3

    .line 180
    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 182
    :cond_3
    iget-object p1, p0, Lcom/anythink/basead/a/c/a;->o:Landroid/widget/TextView;

    if-eqz p1, :cond_a

    .line 183
    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    return-void

    .line 186
    :cond_4
    iget-object p1, p0, Lcom/anythink/basead/a/c/a;->l:Landroid/view/ViewGroup;

    const/16 v0, 0x8

    if-eqz p1, :cond_5

    .line 187
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 189
    :cond_5
    iget-object p1, p0, Lcom/anythink/basead/a/c/a;->m:Landroid/widget/TextView;

    if-eqz p1, :cond_6

    .line 190
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 192
    :cond_6
    iget-object p1, p0, Lcom/anythink/basead/a/c/a;->n:Landroid/widget/TextView;

    if-eqz p1, :cond_7

    .line 193
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 195
    :cond_7
    iget-object p1, p0, Lcom/anythink/basead/a/c/a;->p:Landroid/widget/TextView;

    if-eqz p1, :cond_8

    .line 196
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 198
    :cond_8
    iget-object p1, p0, Lcom/anythink/basead/a/c/a;->o:Landroid/widget/TextView;

    if-eqz p1, :cond_9

    .line 199
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 202
    :cond_9
    :try_start_0
    iget-object p1, p0, Lcom/anythink/basead/a/c/a;->d:Landroid/view/View;

    iget-object v0, p0, Lcom/anythink/basead/a/c/a;->f:Landroid/content/Context;

    const-string v1, "myoffer_four_element_container_bg"

    const-string v2, "id"

    invoke-static {v0, v1, v2}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_a

    const/4 v0, 0x0

    .line 204
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_a
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 276
    iget v0, p0, Lcom/anythink/basead/a/c/a;->j:I

    return v0
.end method

.method public final a(I)V
    .locals 2

    mul-int/lit8 v0, p1, 0x6f

    .line 216
    div-int/lit16 v0, v0, 0x12c

    iput v0, p0, Lcom/anythink/basead/a/c/a;->j:I

    .line 217
    iget-object v0, p0, Lcom/anythink/basead/a/c/a;->d:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 218
    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 219
    iget v1, p0, Lcom/anythink/basead/a/c/a;->j:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 220
    iget-object v1, p0, Lcom/anythink/basead/a/c/a;->d:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 222
    iget-object v1, p0, Lcom/anythink/basead/a/c/a;->e:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 223
    iput p1, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 224
    iget p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    mul-int/lit16 p1, p1, 0xc8

    div-int/lit8 p1, p1, 0x6f

    iput p1, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 225
    iget-object p1, p0, Lcom/anythink/basead/a/c/a;->e:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 227
    iget-object p1, p0, Lcom/anythink/basead/a/c/a;->a:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 228
    iget v0, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    mul-int/lit8 v0, v0, 0x30

    div-int/lit8 v0, v0, 0x7e

    iput v0, p1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 229
    iget v0, p0, Lcom/anythink/basead/a/c/a;->j:I

    div-int/lit16 v0, v0, 0x81

    mul-int/lit8 v0, v0, 0x23

    iput v0, p1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 232
    iget-object p1, p0, Lcom/anythink/basead/a/c/a;->b:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 233
    iget v0, p0, Lcom/anythink/basead/a/c/a;->j:I

    div-int/lit16 v0, v0, 0x81

    mul-int/lit8 v0, v0, 0x23

    iput v0, p1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 235
    iget p1, p0, Lcom/anythink/basead/a/c/a;->j:I

    div-int/lit8 p1, p1, 0x3

    iput p1, p0, Lcom/anythink/basead/a/c/a;->k:I

    return-void
.end method

.method public final a(Landroid/view/View;)V
    .locals 3

    .line 241
    iget-boolean v0, p0, Lcom/anythink/basead/a/c/a;->h:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/anythink/basead/a/c/a;->i:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 245
    iput-boolean v0, p0, Lcom/anythink/basead/a/c/a;->h:Z

    .line 247
    new-instance v0, Lcom/anythink/basead/a/c/a$6;

    invoke-direct {v0, p0, p1}, Lcom/anythink/basead/a/c/a$6;-><init>(Lcom/anythink/basead/a/c/a;Landroid/view/View;)V

    const-wide/16 v1, 0x7d0

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public final a(Landroid/widget/RelativeLayout;I)V
    .locals 4

    .line 66
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0x8

    .line 67
    invoke-virtual {v0, v3, p2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 68
    iget-object p2, p0, Lcom/anythink/basead/a/c/a;->d:Landroid/view/View;

    invoke-virtual {p2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 69
    iget-object p2, p0, Lcom/anythink/basead/a/c/a;->d:Landroid/view/View;

    invoke-virtual {p1, p2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 71
    new-instance p2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {p2, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 72
    iget-object v0, p0, Lcom/anythink/basead/a/c/a;->d:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {p2, v3, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 73
    iget-object v0, p0, Lcom/anythink/basead/a/c/a;->d:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    const/4 v1, 0x5

    invoke-virtual {p2, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 74
    iget-object v0, p0, Lcom/anythink/basead/a/c/a;->d:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    const/4 v1, 0x7

    invoke-virtual {p2, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 75
    iget-object v0, p0, Lcom/anythink/basead/a/c/a;->e:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, p2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final a(Lcom/anythink/core/common/f/l;Landroid/view/View$OnClickListener;)V
    .locals 9

    .line 79
    invoke-virtual {p1}, Lcom/anythink/core/common/f/l;->D()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-nez v0, :cond_1

    .line 80
    invoke-virtual {p1}, Lcom/anythink/core/common/f/l;->z()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/anythink/basead/a/c/a;->a:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/anythink/core/common/f/l;->z()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/anythink/basead/a/c/a;->a:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/anythink/basead/a/c/a;->f:Landroid/content/Context;

    invoke-static {v3, p1}, Lcom/anythink/basead/a/d;->a(Landroid/content/Context;Lcom/anythink/core/common/f/l;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 86
    :goto_0
    iget-object v0, p0, Lcom/anythink/basead/a/c/a;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    iget-object p2, p0, Lcom/anythink/basead/a/c/a;->b:Landroid/view/View;

    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    .line 88
    iget-object p2, p0, Lcom/anythink/basead/a/c/a;->a:Landroid/widget/TextView;

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 90
    :cond_1
    iget-object p2, p0, Lcom/anythink/basead/a/c/a;->a:Landroid/widget/TextView;

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 91
    iget-object p2, p0, Lcom/anythink/basead/a/c/a;->b:Landroid/view/View;

    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 95
    :goto_1
    iget-object p2, p0, Lcom/anythink/basead/a/c/a;->c:Landroid/widget/ImageView;

    const/4 v0, 0x1

    if-eqz p2, :cond_3

    .line 96
    invoke-virtual {p1}, Lcom/anythink/core/common/f/l;->y()Ljava/lang/String;

    move-result-object p2

    .line 97
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 98
    iget-object v3, p0, Lcom/anythink/basead/a/c/a;->c:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 99
    iget v4, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 100
    iget v5, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 101
    iget-object v6, p0, Lcom/anythink/basead/a/c/a;->f:Landroid/content/Context;

    invoke-static {v6}, Lcom/anythink/core/common/res/b;->a(Landroid/content/Context;)Lcom/anythink/core/common/res/b;

    move-result-object v6

    new-instance v7, Lcom/anythink/core/common/res/e;

    invoke-direct {v7, v0, p2}, Lcom/anythink/core/common/res/e;-><init>(ILjava/lang/String;)V

    new-instance v8, Lcom/anythink/basead/a/c/a$1;

    invoke-direct {v8, p0, p2, v3}, Lcom/anythink/basead/a/c/a$1;-><init>(Lcom/anythink/basead/a/c/a;Ljava/lang/String;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v6, v7, v4, v5, v8}, Lcom/anythink/core/common/res/b;->a(Lcom/anythink/core/common/res/e;IILcom/anythink/core/common/res/b$a;)V

    goto :goto_2

    .line 128
    :cond_2
    iget-object p2, p0, Lcom/anythink/basead/a/c/a;->c:Landroid/widget/ImageView;

    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1136
    :cond_3
    :goto_2
    invoke-virtual {p1}, Lcom/anythink/core/common/f/l;->N()Z

    move-result p2

    if-eqz p2, :cond_8

    .line 1137
    iget-object p2, p0, Lcom/anythink/basead/a/c/a;->m:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/anythink/basead/a/c/a;->f:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/anythink/basead/a/c/a;->f:Landroid/content/Context;

    const-string v4, "myoffer_panel_version"

    const-string v5, "string"

    .line 1138
    invoke-static {v3, v4, v5}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    new-array v0, v0, [Ljava/lang/Object;

    .line 1139
    invoke-virtual {p1}, Lcom/anythink/core/common/f/l;->J()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v1

    .line 1137
    invoke-virtual {v2, v3, v0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1142
    iget-object p2, p0, Lcom/anythink/basead/a/c/a;->n:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/anythink/core/common/f/l;->I()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1144
    iget-object p2, p0, Lcom/anythink/basead/a/c/a;->p:Landroid/widget/TextView;

    new-instance v0, Lcom/anythink/basead/a/c/a$2;

    invoke-direct {v0, p0, p1}, Lcom/anythink/basead/a/c/a$2;-><init>(Lcom/anythink/basead/a/c/a;Lcom/anythink/core/common/f/l;)V

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1150
    iget-object p2, p0, Lcom/anythink/basead/a/c/a;->o:Landroid/widget/TextView;

    new-instance v0, Lcom/anythink/basead/a/c/a$3;

    invoke-direct {v0, p0, p1}, Lcom/anythink/basead/a/c/a$3;-><init>(Lcom/anythink/basead/a/c/a;Lcom/anythink/core/common/f/l;)V

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1157
    iget-object p1, p0, Lcom/anythink/basead/a/c/a;->m:Landroid/widget/TextView;

    new-instance p2, Lcom/anythink/basead/a/c/a$4;

    invoke-direct {p2, p0}, Lcom/anythink/basead/a/c/a$4;-><init>(Lcom/anythink/basead/a/c/a;)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1163
    iget-object p1, p0, Lcom/anythink/basead/a/c/a;->n:Landroid/widget/TextView;

    new-instance p2, Lcom/anythink/basead/a/c/a$5;

    invoke-direct {p2, p0}, Lcom/anythink/basead/a/c/a$5;-><init>(Lcom/anythink/basead/a/c/a;)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1170
    iget-object p1, p0, Lcom/anythink/basead/a/c/a;->l:Landroid/view/ViewGroup;

    if-eqz p1, :cond_4

    .line 1171
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1173
    :cond_4
    iget-object p1, p0, Lcom/anythink/basead/a/c/a;->m:Landroid/widget/TextView;

    if-eqz p1, :cond_5

    .line 1174
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1176
    :cond_5
    iget-object p1, p0, Lcom/anythink/basead/a/c/a;->n:Landroid/widget/TextView;

    if-eqz p1, :cond_6

    .line 1177
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1179
    :cond_6
    iget-object p1, p0, Lcom/anythink/basead/a/c/a;->p:Landroid/widget/TextView;

    if-eqz p1, :cond_7

    .line 1180
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1182
    :cond_7
    iget-object p1, p0, Lcom/anythink/basead/a/c/a;->o:Landroid/widget/TextView;

    if-eqz p1, :cond_e

    .line 1183
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void

    .line 1186
    :cond_8
    iget-object p1, p0, Lcom/anythink/basead/a/c/a;->l:Landroid/view/ViewGroup;

    if-eqz p1, :cond_9

    .line 1187
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1189
    :cond_9
    iget-object p1, p0, Lcom/anythink/basead/a/c/a;->m:Landroid/widget/TextView;

    if-eqz p1, :cond_a

    .line 1190
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1192
    :cond_a
    iget-object p1, p0, Lcom/anythink/basead/a/c/a;->n:Landroid/widget/TextView;

    if-eqz p1, :cond_b

    .line 1193
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1195
    :cond_b
    iget-object p1, p0, Lcom/anythink/basead/a/c/a;->p:Landroid/widget/TextView;

    if-eqz p1, :cond_c

    .line 1196
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1198
    :cond_c
    iget-object p1, p0, Lcom/anythink/basead/a/c/a;->o:Landroid/widget/TextView;

    if-eqz p1, :cond_d

    .line 1199
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1202
    :cond_d
    :try_start_0
    iget-object p1, p0, Lcom/anythink/basead/a/c/a;->d:Landroid/view/View;

    iget-object p2, p0, Lcom/anythink/basead/a/c/a;->f:Landroid/content/Context;

    const-string v0, "myoffer_four_element_container_bg"

    const-string v1, "id"

    invoke-static {p2, v0, v1}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_e

    const/4 p2, 0x0

    .line 1204
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_e
    return-void
.end method

.method public final b()I
    .locals 1

    .line 280
    iget v0, p0, Lcom/anythink/basead/a/c/a;->k:I

    return v0
.end method

.method public final c()V
    .locals 1

    const/4 v0, 0x1

    .line 284
    iput-boolean v0, p0, Lcom/anythink/basead/a/c/a;->i:Z

    .line 286
    :try_start_0
    iget-object v0, p0, Lcom/anythink/basead/a/c/a;->g:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 287
    iget-object v0, p0, Lcom/anythink/basead/a/c/a;->g:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method
