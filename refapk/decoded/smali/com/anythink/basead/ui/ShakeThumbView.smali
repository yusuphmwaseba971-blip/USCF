.class public Lcom/anythink/basead/ui/ShakeThumbView;
.super Lcom/anythink/basead/ui/BaseShakeView;


# instance fields
.field private k:Landroid/widget/ImageView;

.field private l:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Lcom/anythink/basead/ui/BaseShakeView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2}, Lcom/anythink/basead/ui/BaseShakeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2, p3}, Lcom/anythink/basead/ui/BaseShakeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/anythink/basead/ui/BaseShakeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method private a(Landroid/view/View;)V
    .locals 3

    .line 91
    invoke-virtual {p0}, Lcom/anythink/basead/ui/ShakeThumbView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x42b00000    # 88.0f

    invoke-static {v0, v1}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;F)I

    move-result v0

    const-string v1, "#99000000"

    .line 92
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    .line 93
    new-instance v2, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 94
    invoke-virtual {v2, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    int-to-float v0, v0

    .line 95
    invoke-virtual {v2, v0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 96
    invoke-virtual {p1, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method final a()V
    .locals 6

    const/4 v0, 0x1

    .line 46
    invoke-virtual {p0, v0}, Lcom/anythink/basead/ui/ShakeThumbView;->setOrientation(I)V

    .line 47
    invoke-virtual {p0, v0}, Lcom/anythink/basead/ui/ShakeThumbView;->setGravity(I)V

    .line 49
    new-instance v1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/anythink/basead/ui/ShakeThumbView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/anythink/basead/ui/ShakeThumbView;->k:Landroid/widget/ImageView;

    .line 50
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 51
    invoke-virtual {p0}, Lcom/anythink/basead/ui/ShakeThumbView;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x42b40000    # 90.0f

    invoke-static {v2, v3}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {p0}, Lcom/anythink/basead/ui/ShakeThumbView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v3}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;F)I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 52
    iget-object v2, p0, Lcom/anythink/basead/ui/ShakeThumbView;->k:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 53
    iget-object v1, p0, Lcom/anythink/basead/ui/ShakeThumbView;->k:Landroid/widget/ImageView;

    .line 1091
    invoke-virtual {p0}, Lcom/anythink/basead/ui/ShakeThumbView;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x42b00000    # 88.0f

    invoke-static {v2, v3}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;F)I

    move-result v2

    const-string v3, "#99000000"

    .line 1092
    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    .line 1093
    new-instance v4, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v4}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 1094
    invoke-virtual {v4, v3}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    int-to-float v2, v2

    .line 1095
    invoke-virtual {v4, v2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 1096
    invoke-virtual {v1, v4}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 55
    new-instance v1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/anythink/basead/ui/ShakeThumbView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/anythink/basead/ui/ShakeThumbView;->a:Landroid/widget/ImageView;

    .line 56
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 57
    invoke-virtual {p0}, Lcom/anythink/basead/ui/ShakeThumbView;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x42200000    # 40.0f

    invoke-static {v2, v3}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {p0}, Lcom/anythink/basead/ui/ShakeThumbView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v3}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;F)I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0x31

    .line 58
    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 59
    invoke-virtual {p0}, Lcom/anythink/basead/ui/ShakeThumbView;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x41400000    # 12.0f

    invoke-static {v2, v3}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;F)I

    move-result v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 60
    iget-object v2, p0, Lcom/anythink/basead/ui/ShakeThumbView;->a:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 65
    new-instance v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/anythink/basead/ui/ShakeThumbView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/anythink/basead/ui/ShakeThumbView;->l:Landroid/widget/TextView;

    .line 66
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 68
    iget-object v3, p0, Lcom/anythink/basead/ui/ShakeThumbView;->l:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/anythink/basead/ui/ShakeThumbView;->getContext()Landroid/content/Context;

    move-result-object v4

    const/high16 v5, 0x42780000    # 62.0f

    invoke-static {v4, v5}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;F)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 69
    iget-object v3, p0, Lcom/anythink/basead/ui/ShakeThumbView;->l:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 70
    iget-object v3, p0, Lcom/anythink/basead/ui/ShakeThumbView;->l:Landroid/widget/TextView;

    sget-object v4, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    const/16 v3, 0x51

    .line 71
    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 72
    invoke-virtual {p0}, Lcom/anythink/basead/ui/ShakeThumbView;->getContext()Landroid/content/Context;

    move-result-object v3

    const/high16 v4, 0x41600000    # 14.0f

    invoke-static {v3, v4}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;F)I

    move-result v3

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 73
    iget-object v3, p0, Lcom/anythink/basead/ui/ShakeThumbView;->l:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 74
    iget-object v1, p0, Lcom/anythink/basead/ui/ShakeThumbView;->l:Landroid/widget/TextView;

    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v3

    invoke-virtual {v3}, Lcom/anythink/core/common/b/o;->f()Landroid/content/Context;

    move-result-object v3

    const-string v4, "myoffer_shake_simple_title"

    const-string v5, "string"

    invoke-static {v3, v4, v5}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    .line 76
    iget-object v1, p0, Lcom/anythink/basead/ui/ShakeThumbView;->l:Landroid/widget/TextView;

    const/high16 v3, 0x41200000    # 10.0f

    invoke-virtual {v1, v0, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 77
    iget-object v0, p0, Lcom/anythink/basead/ui/ShakeThumbView;->l:Landroid/widget/TextView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 79
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/anythink/basead/ui/ShakeThumbView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 80
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 82
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 83
    iget-object v1, p0, Lcom/anythink/basead/ui/ShakeThumbView;->k:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 84
    iget-object v1, p0, Lcom/anythink/basead/ui/ShakeThumbView;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 85
    iget-object v1, p0, Lcom/anythink/basead/ui/ShakeThumbView;->l:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 87
    invoke-virtual {p0, v0}, Lcom/anythink/basead/ui/ShakeThumbView;->addView(Landroid/view/View;)V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .line 109
    invoke-super {p0}, Lcom/anythink/basead/ui/BaseShakeView;->onAttachedToWindow()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .line 114
    invoke-super {p0}, Lcom/anythink/basead/ui/BaseShakeView;->onDetachedFromWindow()V

    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 120
    :try_start_0
    iget-object v0, p0, Lcom/anythink/basead/ui/ShakeThumbView;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    iget-object v0, p0, Lcom/anythink/basead/ui/ShakeThumbView;->k:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public setShakeSetting(Lcom/anythink/core/common/f/n;)V
    .locals 1

    .line 101
    invoke-super {p0, p1}, Lcom/anythink/basead/ui/BaseShakeView;->setShakeSetting(Lcom/anythink/core/common/f/n;)V

    .line 102
    iget-object p1, p0, Lcom/anythink/basead/ui/ShakeThumbView;->g:Ljava/lang/String;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/anythink/basead/ui/ShakeThumbView;->l:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    .line 103
    iget-object v0, p0, Lcom/anythink/basead/ui/ShakeThumbView;->g:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
