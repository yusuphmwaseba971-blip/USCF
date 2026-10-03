.class public Lcom/anythink/basead/ui/LetterHalfScreenATView;
.super Lcom/anythink/basead/ui/HalfScreenATView;


# instance fields
.field ah:Lcom/anythink/basead/a/c/a;

.field ai:I

.field aj:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lcom/anythink/basead/ui/HalfScreenATView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/anythink/core/common/f/m;Lcom/anythink/core/common/f/l;Ljava/lang/String;II)V
    .locals 0

    .line 39
    invoke-direct/range {p0 .. p6}, Lcom/anythink/basead/ui/HalfScreenATView;-><init>(Landroid/content/Context;Lcom/anythink/core/common/f/m;Lcom/anythink/core/common/f/l;Ljava/lang/String;II)V

    .line 40
    iget-object p1, p0, Lcom/anythink/basead/ui/LetterHalfScreenATView;->t:Lcom/anythink/basead/ui/b/a;

    if-eqz p1, :cond_0

    .line 41
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const/4 p2, 0x1

    .line 42
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string p3, "screen_style"

    invoke-virtual {p1, p3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    iget-object p2, p0, Lcom/anythink/basead/ui/LetterHalfScreenATView;->t:Lcom/anythink/basead/ui/b/a;

    invoke-virtual {p2, p1}, Lcom/anythink/basead/ui/b/a;->a(Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method private T()V
    .locals 3

    .line 93
    iget-object v0, p0, Lcom/anythink/basead/ui/LetterHalfScreenATView;->ah:Lcom/anythink/basead/a/c/a;

    iget-object v1, p0, Lcom/anythink/basead/ui/LetterHalfScreenATView;->c:Lcom/anythink/core/common/f/l;

    new-instance v2, Lcom/anythink/basead/ui/LetterHalfScreenATView$2;

    invoke-direct {v2, p0}, Lcom/anythink/basead/ui/LetterHalfScreenATView$2;-><init>(Lcom/anythink/basead/ui/LetterHalfScreenATView;)V

    invoke-virtual {v0, v1, v2}, Lcom/anythink/basead/a/c/a;->a(Lcom/anythink/core/common/f/l;Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method protected final G()V
    .locals 2

    .line 196
    iget v0, p0, Lcom/anythink/basead/ui/LetterHalfScreenATView;->E:I

    invoke-virtual {p0, v0}, Lcom/anythink/basead/ui/LetterHalfScreenATView;->b(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 197
    invoke-virtual {p0}, Lcom/anythink/basead/ui/LetterHalfScreenATView;->P()Lcom/anythink/basead/ui/PanelView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/anythink/basead/ui/PanelView;->setVisibility(I)V

    return-void

    .line 199
    :cond_0
    invoke-super {p0}, Lcom/anythink/basead/ui/HalfScreenATView;->G()V

    return-void
.end method

.method protected final K()V
    .locals 5

    .line 104
    iget-object v0, p0, Lcom/anythink/basead/ui/LetterHalfScreenATView;->N:Lcom/anythink/basead/ui/BaseEndCardView;

    iget-object v1, p0, Lcom/anythink/basead/ui/LetterHalfScreenATView;->L:Lcom/anythink/basead/ui/animplayerview/BasePlayerView;

    invoke-virtual {v1}, Lcom/anythink/basead/ui/animplayerview/BasePlayerView;->getPaddingLeft()I

    move-result v1

    iget-object v2, p0, Lcom/anythink/basead/ui/LetterHalfScreenATView;->L:Lcom/anythink/basead/ui/animplayerview/BasePlayerView;

    .line 105
    invoke-virtual {v2}, Lcom/anythink/basead/ui/animplayerview/BasePlayerView;->getPaddingTop()I

    move-result v2

    iget-object v3, p0, Lcom/anythink/basead/ui/LetterHalfScreenATView;->L:Lcom/anythink/basead/ui/animplayerview/BasePlayerView;

    .line 106
    invoke-virtual {v3}, Lcom/anythink/basead/ui/animplayerview/BasePlayerView;->getPaddingRight()I

    move-result v3

    iget-object v4, p0, Lcom/anythink/basead/ui/LetterHalfScreenATView;->L:Lcom/anythink/basead/ui/animplayerview/BasePlayerView;

    .line 107
    invoke-virtual {v4}, Lcom/anythink/basead/ui/animplayerview/BasePlayerView;->getPaddingBottom()I

    move-result v4

    .line 104
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/anythink/basead/ui/BaseEndCardView;->setPadding(IIII)V

    .line 108
    invoke-super {p0}, Lcom/anythink/basead/ui/HalfScreenATView;->K()V

    return-void
.end method

.method protected final R()I
    .locals 1

    const/16 v0, 0x9

    return v0
.end method

.method protected final S()V
    .locals 8

    .line 117
    iget-object v0, p0, Lcom/anythink/basead/ui/LetterHalfScreenATView;->M:Lcom/anythink/basead/ui/PanelView;

    invoke-virtual {v0}, Lcom/anythink/basead/ui/PanelView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 118
    iget-object v1, p0, Lcom/anythink/basead/ui/LetterHalfScreenATView;->K:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 119
    iget-object v2, p0, Lcom/anythink/basead/ui/LetterHalfScreenATView;->L:Lcom/anythink/basead/ui/animplayerview/BasePlayerView;

    invoke-virtual {v2}, Lcom/anythink/basead/ui/animplayerview/BasePlayerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 121
    iget v3, p0, Lcom/anythink/basead/ui/LetterHalfScreenATView;->x:I

    iget v4, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    sub-int/2addr v3, v4

    iget v4, v1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/anythink/basead/ui/LetterHalfScreenATView;->ai:I

    mul-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    iput v3, p0, Lcom/anythink/basead/ui/LetterHalfScreenATView;->z:I

    .line 122
    iget v3, p0, Lcom/anythink/basead/ui/LetterHalfScreenATView;->z:I

    iput v3, p0, Lcom/anythink/basead/ui/LetterHalfScreenATView;->A:I

    .line 124
    iget-object v3, p0, Lcom/anythink/basead/ui/LetterHalfScreenATView;->ah:Lcom/anythink/basead/a/c/a;

    iget v4, p0, Lcom/anythink/basead/ui/LetterHalfScreenATView;->x:I

    iget v5, p0, Lcom/anythink/basead/ui/LetterHalfScreenATView;->ai:I

    mul-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    invoke-virtual {v3, v4}, Lcom/anythink/basead/a/c/a;->a(I)V

    .line 125
    iget-object v3, p0, Lcom/anythink/basead/ui/LetterHalfScreenATView;->ah:Lcom/anythink/basead/a/c/a;

    invoke-virtual {v3}, Lcom/anythink/basead/a/c/a;->a()I

    move-result v3

    const/4 v4, -0x1

    .line 127
    iput v4, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    const/4 v5, -0x2

    .line 128
    iput v5, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 129
    iget-object v6, p0, Lcom/anythink/basead/ui/LetterHalfScreenATView;->K:Landroid/widget/RelativeLayout;

    invoke-virtual {v6, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 131
    iget v1, p0, Lcom/anythink/basead/ui/LetterHalfScreenATView;->z:I

    iput v1, v2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 132
    iget v1, p0, Lcom/anythink/basead/ui/LetterHalfScreenATView;->A:I

    iput v1, v2, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 133
    iget-object v1, p0, Lcom/anythink/basead/ui/LetterHalfScreenATView;->L:Lcom/anythink/basead/ui/animplayerview/BasePlayerView;

    invoke-virtual {v1, v2}, Lcom/anythink/basead/ui/animplayerview/BasePlayerView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 135
    iput v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 136
    iput v5, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 137
    iget v1, p0, Lcom/anythink/basead/ui/LetterHalfScreenATView;->A:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 138
    iget-object v1, p0, Lcom/anythink/basead/ui/LetterHalfScreenATView;->ah:Lcom/anythink/basead/a/c/a;

    invoke-virtual {v1}, Lcom/anythink/basead/a/c/a;->b()I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 139
    iget-object v1, p0, Lcom/anythink/basead/ui/LetterHalfScreenATView;->M:Lcom/anythink/basead/ui/PanelView;

    invoke-virtual {v1, v0}, Lcom/anythink/basead/ui/PanelView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 140
    iget-object v0, p0, Lcom/anythink/basead/ui/LetterHalfScreenATView;->M:Lcom/anythink/basead/ui/PanelView;

    iget-object v1, p0, Lcom/anythink/basead/ui/LetterHalfScreenATView;->M:Lcom/anythink/basead/ui/PanelView;

    invoke-virtual {v1}, Lcom/anythink/basead/ui/PanelView;->getPaddingLeft()I

    move-result v1

    iget-object v4, p0, Lcom/anythink/basead/ui/LetterHalfScreenATView;->M:Lcom/anythink/basead/ui/PanelView;

    .line 141
    invoke-virtual {v4}, Lcom/anythink/basead/ui/PanelView;->getPaddingTop()I

    move-result v4

    iget-object v5, p0, Lcom/anythink/basead/ui/LetterHalfScreenATView;->M:Lcom/anythink/basead/ui/PanelView;

    .line 142
    invoke-virtual {v5}, Lcom/anythink/basead/ui/PanelView;->getPaddingRight()I

    move-result v5

    iget-object v6, p0, Lcom/anythink/basead/ui/LetterHalfScreenATView;->ah:Lcom/anythink/basead/a/c/a;

    .line 143
    invoke-virtual {v6}, Lcom/anythink/basead/a/c/a;->b()I

    move-result v6

    sub-int/2addr v3, v6

    invoke-virtual {p0}, Lcom/anythink/basead/ui/LetterHalfScreenATView;->getContext()Landroid/content/Context;

    move-result-object v6

    const/high16 v7, 0x41100000    # 9.0f

    invoke-static {v6, v7}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;F)I

    move-result v6

    add-int/2addr v3, v6

    .line 140
    invoke-virtual {v0, v1, v4, v5, v3}, Lcom/anythink/basead/ui/PanelView;->setPadding(IIII)V

    .line 146
    iget v0, p0, Lcom/anythink/basead/ui/LetterHalfScreenATView;->E:I

    invoke-virtual {p0, v0}, Lcom/anythink/basead/ui/LetterHalfScreenATView;->b(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/anythink/basead/ui/LetterHalfScreenATView;->ah:Lcom/anythink/basead/a/c/a;

    invoke-virtual {v0}, Lcom/anythink/basead/a/c/a;->b()I

    move-result v0

    iput v0, v2, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 152
    iget v0, p0, Lcom/anythink/basead/ui/LetterHalfScreenATView;->A:I

    iget-object v1, p0, Lcom/anythink/basead/ui/LetterHalfScreenATView;->ah:Lcom/anythink/basead/a/c/a;

    invoke-virtual {v1}, Lcom/anythink/basead/a/c/a;->a()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/anythink/basead/ui/LetterHalfScreenATView;->ah:Lcom/anythink/basead/a/c/a;

    invoke-virtual {v1}, Lcom/anythink/basead/a/c/a;->b()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iput v0, v2, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 154
    iget-object v0, p0, Lcom/anythink/basead/ui/LetterHalfScreenATView;->L:Lcom/anythink/basead/ui/animplayerview/BasePlayerView;

    invoke-virtual {v0, v2}, Lcom/anythink/basead/ui/animplayerview/BasePlayerView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 155
    iget-object v0, p0, Lcom/anythink/basead/ui/LetterHalfScreenATView;->L:Lcom/anythink/basead/ui/animplayerview/BasePlayerView;

    iget-object v1, p0, Lcom/anythink/basead/ui/LetterHalfScreenATView;->L:Lcom/anythink/basead/ui/animplayerview/BasePlayerView;

    invoke-virtual {v1}, Lcom/anythink/basead/ui/animplayerview/BasePlayerView;->getPaddingLeft()I

    move-result v1

    iget-object v3, p0, Lcom/anythink/basead/ui/LetterHalfScreenATView;->L:Lcom/anythink/basead/ui/animplayerview/BasePlayerView;

    .line 156
    invoke-virtual {v3}, Lcom/anythink/basead/ui/animplayerview/BasePlayerView;->getPaddingTop()I

    move-result v3

    iget-object v4, p0, Lcom/anythink/basead/ui/LetterHalfScreenATView;->L:Lcom/anythink/basead/ui/animplayerview/BasePlayerView;

    .line 157
    invoke-virtual {v4}, Lcom/anythink/basead/ui/animplayerview/BasePlayerView;->getPaddingRight()I

    move-result v4

    iget-object v5, p0, Lcom/anythink/basead/ui/LetterHalfScreenATView;->ah:Lcom/anythink/basead/a/c/a;

    .line 158
    invoke-virtual {v5}, Lcom/anythink/basead/a/c/a;->a()I

    move-result v5

    iget-object v6, p0, Lcom/anythink/basead/ui/LetterHalfScreenATView;->ah:Lcom/anythink/basead/a/c/a;

    invoke-virtual {v6}, Lcom/anythink/basead/a/c/a;->b()I

    move-result v6

    mul-int/lit8 v6, v6, 0x2

    sub-int/2addr v5, v6

    .line 155
    invoke-virtual {v0, v1, v3, v4, v5}, Lcom/anythink/basead/ui/animplayerview/BasePlayerView;->setPadding(IIII)V

    .line 165
    :cond_0
    iget v0, v2, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    iput v0, p0, Lcom/anythink/basead/ui/LetterHalfScreenATView;->aj:I

    .line 167
    iget-object v0, p0, Lcom/anythink/basead/ui/LetterHalfScreenATView;->ah:Lcom/anythink/basead/a/c/a;

    iget-object v1, p0, Lcom/anythink/basead/ui/LetterHalfScreenATView;->K:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Lcom/anythink/basead/a/c/a;->a(Landroid/view/View;)V

    return-void
.end method

.method protected final a()V
    .locals 4

    .line 57
    invoke-virtual {p0}, Lcom/anythink/basead/ui/LetterHalfScreenATView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x42180000    # 38.0f

    invoke-static {v0, v1}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/anythink/basead/ui/LetterHalfScreenATView;->ai:I

    .line 58
    invoke-virtual {p0}, Lcom/anythink/basead/ui/LetterHalfScreenATView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {p0}, Lcom/anythink/basead/ui/LetterHalfScreenATView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "myoffer_half_screen_letter_vertical"

    const-string v3, "layout"

    invoke-static {v1, v2, v3}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 59
    iget v0, p0, Lcom/anythink/basead/ui/LetterHalfScreenATView;->ai:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v0, v1}, Lcom/anythink/basead/ui/LetterHalfScreenATView;->setPadding(IIII)V

    .line 60
    invoke-virtual {p0}, Lcom/anythink/basead/ui/LetterHalfScreenATView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "dailog_background_color"

    const-string v2, "color"

    invoke-static {v0, v1, v2}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/anythink/basead/ui/LetterHalfScreenATView;->setBackgroundResource(I)V

    return-void
.end method

.method protected final b()V
    .locals 2

    .line 65
    invoke-super {p0}, Lcom/anythink/basead/ui/HalfScreenATView;->b()V

    .line 69
    iget-object v0, p0, Lcom/anythink/basead/ui/LetterHalfScreenATView;->b:Lcom/anythink/core/common/f/m;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/anythink/basead/ui/LetterHalfScreenATView;->b:Lcom/anythink/core/common/f/m;

    iget-object v0, v0, Lcom/anythink/core/common/f/m;->n:Lcom/anythink/core/common/f/n;

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/anythink/basead/ui/LetterHalfScreenATView;->b:Lcom/anythink/core/common/f/m;

    iget-object v0, v0, Lcom/anythink/core/common/f/m;->n:Lcom/anythink/core/common/f/n;

    invoke-virtual {v0}, Lcom/anythink/core/common/f/n;->D()I

    move-result v0

    if-nez v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/anythink/basead/ui/LetterHalfScreenATView;->K:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/anythink/basead/ui/LetterHalfScreenATView$1;

    invoke-direct {v1, p0}, Lcom/anythink/basead/ui/LetterHalfScreenATView$1;-><init>(Lcom/anythink/basead/ui/LetterHalfScreenATView;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method protected final b(I)Z
    .locals 1

    .line 181
    iget-object p1, p0, Lcom/anythink/basead/ui/LetterHalfScreenATView;->c:Lcom/anythink/core/common/f/l;

    invoke-virtual {p1}, Lcom/anythink/core/common/f/l;->j()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    return v0

    .line 185
    :cond_0
    iget-object p1, p0, Lcom/anythink/basead/ui/LetterHalfScreenATView;->c:Lcom/anythink/core/common/f/l;

    invoke-virtual {p1}, Lcom/anythink/core/common/f/l;->w()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/anythink/basead/ui/LetterHalfScreenATView;->c:Lcom/anythink/core/common/f/l;

    .line 186
    invoke-virtual {p1}, Lcom/anythink/core/common/f/l;->u()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/anythink/basead/ui/LetterHalfScreenATView;->c:Lcom/anythink/core/common/f/l;

    .line 187
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

    .line 83
    invoke-super {p0}, Lcom/anythink/basead/ui/HalfScreenATView;->c()V

    .line 84
    new-instance v0, Lcom/anythink/basead/a/c/a;

    invoke-virtual {p0}, Lcom/anythink/basead/ui/LetterHalfScreenATView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/anythink/basead/a/c/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/anythink/basead/ui/LetterHalfScreenATView;->ah:Lcom/anythink/basead/a/c/a;

    .line 85
    iget-object v1, p0, Lcom/anythink/basead/ui/LetterHalfScreenATView;->K:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/anythink/basead/ui/LetterHalfScreenATView;->K:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/anythink/basead/a/c/a;->a(Landroid/widget/RelativeLayout;I)V

    .line 1093
    iget-object v0, p0, Lcom/anythink/basead/ui/LetterHalfScreenATView;->ah:Lcom/anythink/basead/a/c/a;

    iget-object v1, p0, Lcom/anythink/basead/ui/LetterHalfScreenATView;->c:Lcom/anythink/core/common/f/l;

    new-instance v2, Lcom/anythink/basead/ui/LetterHalfScreenATView$2;

    invoke-direct {v2, p0}, Lcom/anythink/basead/ui/LetterHalfScreenATView$2;-><init>(Lcom/anythink/basead/ui/LetterHalfScreenATView;)V

    invoke-virtual {v0, v1, v2}, Lcom/anythink/basead/a/c/a;->a(Lcom/anythink/core/common/f/l;Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected final m()Landroid/widget/RelativeLayout$LayoutParams;
    .locals 3

    .line 205
    iget v0, p0, Lcom/anythink/basead/ui/LetterHalfScreenATView;->aj:I

    mul-int/lit8 v0, v0, 0x2

    div-int/lit8 v0, v0, 0x3

    .line 206
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0xb

    .line 209
    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/4 v2, 0x0

    .line 211
    invoke-virtual {v1, v2, v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    return-object v1
.end method

.method protected final u()V
    .locals 1

    .line 173
    invoke-super {p0}, Lcom/anythink/basead/ui/HalfScreenATView;->u()V

    .line 174
    iget-object v0, p0, Lcom/anythink/basead/ui/LetterHalfScreenATView;->ah:Lcom/anythink/basead/a/c/a;

    if-eqz v0, :cond_0

    .line 175
    invoke-virtual {v0}, Lcom/anythink/basead/a/c/a;->c()V

    :cond_0
    return-void
.end method
