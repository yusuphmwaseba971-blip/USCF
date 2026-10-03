.class public Lcom/anythink/basead/ui/LetterFullScreenATView;
.super Lcom/anythink/basead/ui/FullScreenATView;


# instance fields
.field ad:Lcom/anythink/basead/a/c/a;

.field ae:I

.field af:I

.field ag:I

.field ah:I

.field ai:I

.field aj:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 43
    invoke-direct {p0, p1}, Lcom/anythink/basead/ui/FullScreenATView;-><init>(Landroid/content/Context;)V

    .line 34
    invoke-virtual {p0}, Lcom/anythink/basead/ui/LetterFullScreenATView;->getContext()Landroid/content/Context;

    move-result-object p1

    const/high16 v0, 0x41500000    # 13.0f

    invoke-static {p1, v0}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;F)I

    move-result p1

    iput p1, p0, Lcom/anythink/basead/ui/LetterFullScreenATView;->ae:I

    .line 35
    invoke-virtual {p0}, Lcom/anythink/basead/ui/LetterFullScreenATView;->getContext()Landroid/content/Context;

    move-result-object p1

    const/high16 v0, 0x42700000    # 60.0f

    invoke-static {p1, v0}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;F)I

    move-result p1

    iput p1, p0, Lcom/anythink/basead/ui/LetterFullScreenATView;->af:I

    .line 36
    invoke-virtual {p0}, Lcom/anythink/basead/ui/LetterFullScreenATView;->getContext()Landroid/content/Context;

    move-result-object p1

    const/high16 v0, 0x42540000    # 53.0f

    invoke-static {p1, v0}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;F)I

    move-result p1

    iput p1, p0, Lcom/anythink/basead/ui/LetterFullScreenATView;->ag:I

    .line 37
    invoke-virtual {p0}, Lcom/anythink/basead/ui/LetterFullScreenATView;->getContext()Landroid/content/Context;

    move-result-object p1

    const/high16 v0, 0x41880000    # 17.0f

    invoke-static {p1, v0}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;F)I

    move-result p1

    iput p1, p0, Lcom/anythink/basead/ui/LetterFullScreenATView;->ah:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/anythink/core/common/f/m;Lcom/anythink/core/common/f/l;Ljava/lang/String;II)V
    .locals 0

    .line 49
    invoke-direct/range {p0 .. p6}, Lcom/anythink/basead/ui/FullScreenATView;-><init>(Landroid/content/Context;Lcom/anythink/core/common/f/m;Lcom/anythink/core/common/f/l;Ljava/lang/String;II)V

    .line 34
    invoke-virtual {p0}, Lcom/anythink/basead/ui/LetterFullScreenATView;->getContext()Landroid/content/Context;

    move-result-object p1

    const/high16 p2, 0x41500000    # 13.0f

    invoke-static {p1, p2}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;F)I

    move-result p1

    iput p1, p0, Lcom/anythink/basead/ui/LetterFullScreenATView;->ae:I

    .line 35
    invoke-virtual {p0}, Lcom/anythink/basead/ui/LetterFullScreenATView;->getContext()Landroid/content/Context;

    move-result-object p1

    const/high16 p2, 0x42700000    # 60.0f

    invoke-static {p1, p2}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;F)I

    move-result p1

    iput p1, p0, Lcom/anythink/basead/ui/LetterFullScreenATView;->af:I

    .line 36
    invoke-virtual {p0}, Lcom/anythink/basead/ui/LetterFullScreenATView;->getContext()Landroid/content/Context;

    move-result-object p1

    const/high16 p2, 0x42540000    # 53.0f

    invoke-static {p1, p2}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;F)I

    move-result p1

    iput p1, p0, Lcom/anythink/basead/ui/LetterFullScreenATView;->ag:I

    .line 37
    invoke-virtual {p0}, Lcom/anythink/basead/ui/LetterFullScreenATView;->getContext()Landroid/content/Context;

    move-result-object p1

    const/high16 p2, 0x41880000    # 17.0f

    invoke-static {p1, p2}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;F)I

    move-result p1

    iput p1, p0, Lcom/anythink/basead/ui/LetterFullScreenATView;->ah:I

    return-void
.end method

.method private S()V
    .locals 4

    .line 94
    iget v0, p0, Lcom/anythink/basead/ui/LetterFullScreenATView;->y:I

    iget v1, p0, Lcom/anythink/basead/ui/LetterFullScreenATView;->ag:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/anythink/basead/ui/LetterFullScreenATView;->af:I

    sub-int/2addr v0, v1

    int-to-double v0, v0

    const-wide v2, 0x3fdfd130463796adL    # 0.49714285714285716

    mul-double v0, v0, v2

    double-to-int v0, v0

    .line 96
    iget v1, p0, Lcom/anythink/basead/ui/LetterFullScreenATView;->x:I

    sub-int/2addr v1, v0

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/anythink/basead/ui/LetterFullScreenATView;->ae:I

    return-void
.end method


# virtual methods
.method protected final G()V
    .locals 2

    .line 180
    iget v0, p0, Lcom/anythink/basead/ui/LetterFullScreenATView;->E:I

    invoke-virtual {p0, v0}, Lcom/anythink/basead/ui/LetterFullScreenATView;->b(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 181
    invoke-virtual {p0}, Lcom/anythink/basead/ui/LetterFullScreenATView;->P()Lcom/anythink/basead/ui/PanelView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/anythink/basead/ui/PanelView;->setVisibility(I)V

    return-void

    .line 183
    :cond_0
    invoke-super {p0}, Lcom/anythink/basead/ui/FullScreenATView;->G()V

    return-void
.end method

.method protected final K()V
    .locals 6

    .line 143
    invoke-virtual {p0}, Lcom/anythink/basead/ui/LetterFullScreenATView;->R()V

    .line 145
    iget v0, p0, Lcom/anythink/basead/ui/LetterFullScreenATView;->E:I

    invoke-virtual {p0, v0}, Lcom/anythink/basead/ui/LetterFullScreenATView;->b(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/anythink/basead/ui/LetterFullScreenATView;->N:Lcom/anythink/basead/ui/BaseEndCardView;

    invoke-virtual {v0}, Lcom/anythink/basead/ui/BaseEndCardView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v2, p0, Lcom/anythink/basead/ui/LetterFullScreenATView;->aj:I

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 147
    iget-object v0, p0, Lcom/anythink/basead/ui/LetterFullScreenATView;->N:Lcom/anythink/basead/ui/BaseEndCardView;

    invoke-virtual {v0}, Lcom/anythink/basead/ui/BaseEndCardView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v2, p0, Lcom/anythink/basead/ui/LetterFullScreenATView;->ai:I

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 148
    iget-object v0, p0, Lcom/anythink/basead/ui/LetterFullScreenATView;->N:Lcom/anythink/basead/ui/BaseEndCardView;

    iget-object v2, p0, Lcom/anythink/basead/ui/LetterFullScreenATView;->ad:Lcom/anythink/basead/a/c/a;

    .line 149
    invoke-virtual {v2}, Lcom/anythink/basead/a/c/a;->a()I

    move-result v2

    iget v3, p0, Lcom/anythink/basead/ui/LetterFullScreenATView;->aj:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/anythink/basead/ui/LetterFullScreenATView;->ad:Lcom/anythink/basead/a/c/a;

    invoke-virtual {v3}, Lcom/anythink/basead/a/c/a;->b()I

    move-result v3

    sub-int/2addr v2, v3

    .line 148
    invoke-virtual {v0, v1, v1, v1, v2}, Lcom/anythink/basead/ui/BaseEndCardView;->setPadding(IIII)V

    .line 151
    invoke-virtual {p0}, Lcom/anythink/basead/ui/LetterFullScreenATView;->H()V

    goto :goto_0

    .line 153
    :cond_0
    invoke-virtual {p0}, Lcom/anythink/basead/ui/LetterFullScreenATView;->P()Lcom/anythink/basead/ui/PanelView;

    move-result-object v0

    .line 154
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, 0x3

    .line 155
    iget-object v4, p0, Lcom/anythink/basead/ui/LetterFullScreenATView;->N:Lcom/anythink/basead/ui/BaseEndCardView;

    invoke-virtual {v4}, Lcom/anythink/basead/ui/BaseEndCardView;->getId()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/4 v3, -0x2

    .line 156
    iput v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 157
    iget-object v3, p0, Lcom/anythink/basead/ui/LetterFullScreenATView;->ad:Lcom/anythink/basead/a/c/a;

    invoke-virtual {v3}, Lcom/anythink/basead/a/c/a;->b()I

    move-result v3

    iput v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    const/16 v3, 0xc

    .line 158
    invoke-virtual {v2, v3, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 159
    invoke-virtual {p0}, Lcom/anythink/basead/ui/LetterFullScreenATView;->getContext()Landroid/content/Context;

    move-result-object v3

    const/high16 v4, 0x41f00000    # 30.0f

    invoke-static {v3, v4}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;F)I

    move-result v3

    iget-object v4, p0, Lcom/anythink/basead/ui/LetterFullScreenATView;->ad:Lcom/anythink/basead/a/c/a;

    .line 160
    invoke-virtual {v4}, Lcom/anythink/basead/a/c/a;->b()I

    move-result v4

    div-int/lit16 v4, v4, 0x81

    mul-int/lit8 v4, v4, 0x45

    iget-object v5, p0, Lcom/anythink/basead/ui/LetterFullScreenATView;->ad:Lcom/anythink/basead/a/c/a;

    invoke-virtual {v5}, Lcom/anythink/basead/a/c/a;->a()I

    move-result v5

    add-int/2addr v4, v5

    iget v2, v2, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v4, v2

    .line 159
    invoke-virtual {v0, v1, v3, v1, v4}, Landroid/view/View;->setPadding(IIII)V

    const/4 v1, -0x1

    .line 161
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 162
    iget-object v0, p0, Lcom/anythink/basead/ui/LetterFullScreenATView;->N:Lcom/anythink/basead/ui/BaseEndCardView;

    invoke-virtual {v0}, Lcom/anythink/basead/ui/BaseEndCardView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcom/anythink/basead/ui/LetterFullScreenATView;->ai:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 165
    :goto_0
    iget-object v0, p0, Lcom/anythink/basead/ui/LetterFullScreenATView;->ad:Lcom/anythink/basead/a/c/a;

    iget-object v1, p0, Lcom/anythink/basead/ui/LetterFullScreenATView;->K:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Lcom/anythink/basead/a/c/a;->a(Landroid/view/View;)V

    return-void
.end method

.method protected final L()V
    .locals 1

    .line 170
    invoke-super {p0}, Lcom/anythink/basead/ui/FullScreenATView;->L()V

    .line 171
    iget-object v0, p0, Lcom/anythink/basead/ui/LetterFullScreenATView;->N:Lcom/anythink/basead/ui/BaseEndCardView;

    invoke-virtual {v0}, Lcom/anythink/basead/ui/BaseEndCardView;->b()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 173
    invoke-virtual {p0, v0}, Lcom/anythink/basead/ui/LetterFullScreenATView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method protected final a()V
    .locals 4

    .line 54
    invoke-virtual {p0}, Lcom/anythink/basead/ui/LetterFullScreenATView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 55
    invoke-virtual {p0}, Lcom/anythink/basead/ui/LetterFullScreenATView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "myoffer_letter_full_screen"

    const-string v3, "layout"

    invoke-static {v1, v2, v3}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    const/16 v0, 0xd

    .line 58
    invoke-virtual {p0, v0}, Lcom/anythink/basead/ui/LetterFullScreenATView;->setGravity(I)V

    .line 63
    iget-object v0, p0, Lcom/anythink/basead/ui/LetterFullScreenATView;->b:Lcom/anythink/core/common/f/m;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/anythink/basead/ui/LetterFullScreenATView;->b:Lcom/anythink/core/common/f/m;

    iget-object v0, v0, Lcom/anythink/core/common/f/m;->n:Lcom/anythink/core/common/f/n;

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/anythink/basead/ui/LetterFullScreenATView;->b:Lcom/anythink/core/common/f/m;

    iget-object v0, v0, Lcom/anythink/core/common/f/m;->n:Lcom/anythink/core/common/f/n;

    invoke-virtual {v0}, Lcom/anythink/core/common/f/n;->D()I

    move-result v0

    if-nez v0, :cond_0

    .line 65
    new-instance v0, Lcom/anythink/basead/ui/LetterFullScreenATView$1;

    invoke-direct {v0, p0}, Lcom/anythink/basead/ui/LetterFullScreenATView$1;-><init>(Lcom/anythink/basead/ui/LetterFullScreenATView;)V

    invoke-virtual {p0, v0}, Lcom/anythink/basead/ui/LetterFullScreenATView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method protected final b()V
    .locals 4

    .line 1094
    iget v0, p0, Lcom/anythink/basead/ui/LetterFullScreenATView;->y:I

    iget v1, p0, Lcom/anythink/basead/ui/LetterFullScreenATView;->ag:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/anythink/basead/ui/LetterFullScreenATView;->af:I

    sub-int/2addr v0, v1

    int-to-double v0, v0

    const-wide v2, 0x3fdfd130463796adL    # 0.49714285714285716

    mul-double v0, v0, v2

    double-to-int v0, v0

    .line 1096
    iget v1, p0, Lcom/anythink/basead/ui/LetterFullScreenATView;->x:I

    sub-int/2addr v1, v0

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/anythink/basead/ui/LetterFullScreenATView;->ae:I

    .line 81
    invoke-super {p0}, Lcom/anythink/basead/ui/FullScreenATView;->b()V

    .line 83
    iget-object v0, p0, Lcom/anythink/basead/ui/LetterFullScreenATView;->K:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 84
    iget v1, p0, Lcom/anythink/basead/ui/LetterFullScreenATView;->ah:I

    iget v2, p0, Lcom/anythink/basead/ui/LetterFullScreenATView;->af:I

    iget v3, p0, Lcom/anythink/basead/ui/LetterFullScreenATView;->ag:I

    invoke-virtual {v0, v1, v2, v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 86
    iget v0, p0, Lcom/anythink/basead/ui/LetterFullScreenATView;->ae:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v0, v1}, Lcom/anythink/basead/ui/LetterFullScreenATView;->setPadding(IIII)V

    return-void
.end method

.method protected final b(I)Z
    .locals 1

    .line 190
    iget-object p1, p0, Lcom/anythink/basead/ui/LetterFullScreenATView;->c:Lcom/anythink/core/common/f/l;

    invoke-virtual {p1}, Lcom/anythink/core/common/f/l;->j()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    return v0

    .line 194
    :cond_0
    iget-object p1, p0, Lcom/anythink/basead/ui/LetterFullScreenATView;->c:Lcom/anythink/core/common/f/l;

    invoke-virtual {p1}, Lcom/anythink/core/common/f/l;->w()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/anythink/basead/ui/LetterFullScreenATView;->c:Lcom/anythink/core/common/f/l;

    .line 195
    invoke-virtual {p1}, Lcom/anythink/core/common/f/l;->u()Ljava/lang/String;

    move-result-object p1

    .line 194
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/anythink/basead/ui/LetterFullScreenATView;->c:Lcom/anythink/core/common/f/l;

    .line 195
    invoke-virtual {p1}, Lcom/anythink/core/common/f/l;->v()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    return v0

    :cond_2
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method protected final c()V
    .locals 3

    .line 101
    invoke-super {p0}, Lcom/anythink/basead/ui/FullScreenATView;->c()V

    .line 102
    new-instance v0, Lcom/anythink/basead/a/c/a;

    invoke-virtual {p0}, Lcom/anythink/basead/ui/LetterFullScreenATView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/anythink/basead/a/c/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/anythink/basead/ui/LetterFullScreenATView;->ad:Lcom/anythink/basead/a/c/a;

    .line 103
    iget-object v1, p0, Lcom/anythink/basead/ui/LetterFullScreenATView;->c:Lcom/anythink/core/common/f/l;

    new-instance v2, Lcom/anythink/basead/ui/LetterFullScreenATView$2;

    invoke-direct {v2, p0}, Lcom/anythink/basead/ui/LetterFullScreenATView$2;-><init>(Lcom/anythink/basead/ui/LetterFullScreenATView;)V

    invoke-virtual {v0, v1, v2}, Lcom/anythink/basead/a/c/a;->a(Lcom/anythink/core/common/f/l;Landroid/view/View$OnClickListener;)V

    .line 111
    iget-object v0, p0, Lcom/anythink/basead/ui/LetterFullScreenATView;->ad:Lcom/anythink/basead/a/c/a;

    iget-object v1, p0, Lcom/anythink/basead/ui/LetterFullScreenATView;->K:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getId()I

    move-result v1

    invoke-virtual {v0, p0, v1}, Lcom/anythink/basead/a/c/a;->a(Landroid/widget/RelativeLayout;I)V

    .line 112
    iget-object v0, p0, Lcom/anythink/basead/ui/LetterFullScreenATView;->ad:Lcom/anythink/basead/a/c/a;

    iget v1, p0, Lcom/anythink/basead/ui/LetterFullScreenATView;->x:I

    iget v2, p0, Lcom/anythink/basead/ui/LetterFullScreenATView;->ae:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/anythink/basead/a/c/a;->a(I)V

    .line 114
    iget v0, p0, Lcom/anythink/basead/ui/LetterFullScreenATView;->x:I

    iget v1, p0, Lcom/anythink/basead/ui/LetterFullScreenATView;->ae:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/anythink/basead/ui/LetterFullScreenATView;->ah:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/anythink/basead/ui/LetterFullScreenATView;->ai:I

    .line 116
    iget v0, p0, Lcom/anythink/basead/ui/LetterFullScreenATView;->E:I

    invoke-virtual {p0, v0}, Lcom/anythink/basead/ui/LetterFullScreenATView;->b(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/anythink/basead/ui/LetterFullScreenATView;->ad:Lcom/anythink/basead/a/c/a;

    invoke-virtual {v0}, Lcom/anythink/basead/a/c/a;->b()I

    move-result v0

    iput v0, p0, Lcom/anythink/basead/ui/LetterFullScreenATView;->aj:I

    .line 118
    iget v0, p0, Lcom/anythink/basead/ui/LetterFullScreenATView;->ai:I

    iget-object v1, p0, Lcom/anythink/basead/ui/LetterFullScreenATView;->ad:Lcom/anythink/basead/a/c/a;

    invoke-virtual {v1}, Lcom/anythink/basead/a/c/a;->a()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/anythink/basead/ui/LetterFullScreenATView;->aj:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/anythink/basead/ui/LetterFullScreenATView;->ad:Lcom/anythink/basead/a/c/a;

    invoke-virtual {v1}, Lcom/anythink/basead/a/c/a;->b()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/anythink/basead/ui/LetterFullScreenATView;->ai:I

    :cond_0
    return-void
.end method

.method protected final m()Landroid/widget/RelativeLayout$LayoutParams;
    .locals 3

    .line 210
    iget v0, p0, Lcom/anythink/basead/ui/LetterFullScreenATView;->ai:I

    mul-int/lit8 v0, v0, 0x2

    div-int/lit8 v0, v0, 0x3

    .line 211
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0xb

    .line 213
    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/4 v2, 0x0

    .line 214
    invoke-virtual {v1, v2, v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    return-object v1
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 204
    invoke-super {p0, p1}, Lcom/anythink/basead/ui/FullScreenATView;->onDraw(Landroid/graphics/Canvas;)V

    const/high16 v0, 0x44000000    # 512.0f

    .line 205
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    return-void
.end method

.method protected final r()I
    .locals 1

    .line 138
    iget v0, p0, Lcom/anythink/basead/ui/LetterFullScreenATView;->E:I

    return v0
.end method

.method protected final x()V
    .locals 4

    const/16 v0, 0x9

    .line 124
    iput v0, p0, Lcom/anythink/basead/ui/LetterFullScreenATView;->E:I

    .line 125
    invoke-virtual {p0}, Lcom/anythink/basead/ui/LetterFullScreenATView;->P()Lcom/anythink/basead/ui/PanelView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 128
    iget v1, p0, Lcom/anythink/basead/ui/LetterFullScreenATView;->E:I

    invoke-virtual {v0, v1}, Lcom/anythink/basead/ui/PanelView;->setLayoutType(I)V

    .line 130
    invoke-virtual {p0}, Lcom/anythink/basead/ui/LetterFullScreenATView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "myoffer_iv_banner_icon"

    const-string v3, "id"

    invoke-static {v1, v2, v3}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 129
    invoke-virtual {v0, v1}, Lcom/anythink/basead/ui/PanelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 131
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 132
    invoke-virtual {p0}, Lcom/anythink/basead/ui/LetterFullScreenATView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x41f00000    # 30.0f

    invoke-static {v1, v2}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    :cond_0
    return-void
.end method
