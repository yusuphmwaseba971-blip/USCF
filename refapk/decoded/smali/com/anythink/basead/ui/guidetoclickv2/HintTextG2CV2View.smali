.class public Lcom/anythink/basead/ui/guidetoclickv2/HintTextG2CV2View;
.super Lcom/anythink/basead/ui/guidetoclickv2/BaseG2CV2View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lcom/anythink/basead/ui/guidetoclickv2/BaseG2CV2View;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method final a(II)V
    .locals 8

    .line 31
    invoke-virtual {p0}, Lcom/anythink/basead/ui/guidetoclickv2/HintTextG2CV2View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 32
    invoke-virtual {p0}, Lcom/anythink/basead/ui/guidetoclickv2/HintTextG2CV2View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "myoffer_g2c_v2_hint_text"

    const-string v3, "layout"

    invoke-static {v1, v2, v3}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 31
    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 35
    invoke-virtual {p0}, Lcom/anythink/basead/ui/guidetoclickv2/HintTextG2CV2View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "myoffer_g2c_click_text"

    const-string v2, "id"

    invoke-static {v0, v1, v2}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 34
    invoke-virtual {p0, v0}, Lcom/anythink/basead/ui/guidetoclickv2/HintTextG2CV2View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 38
    invoke-virtual {p0}, Lcom/anythink/basead/ui/guidetoclickv2/HintTextG2CV2View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v3, "myoffer_g2c_hint_text"

    invoke-static {v1, v3, v2}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 37
    invoke-virtual {p0, v1}, Lcom/anythink/basead/ui/guidetoclickv2/HintTextG2CV2View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v0, :cond_0

    .line 41
    new-instance v2, Lcom/anythink/basead/ui/guidetoclickv2/HintTextG2CV2View$1;

    invoke-direct {v2, p0}, Lcom/anythink/basead/ui/guidetoclickv2/HintTextG2CV2View$1;-><init>(Lcom/anythink/basead/ui/guidetoclickv2/HintTextG2CV2View;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    const/16 v2, 0x11

    const/high16 v3, 0x41400000    # 12.0f

    const/16 v4, 0xe

    const/16 v5, 0xb

    const/4 v6, 0x2

    const/4 v7, 0x0

    if-ne p1, v6, :cond_3

    if-eqz v0, :cond_1

    .line 54
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 55
    invoke-virtual {p1, v5, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 56
    invoke-virtual {p1, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 57
    invoke-virtual {p0}, Lcom/anythink/basead/ui/guidetoclickv2/HintTextG2CV2View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, v3}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;F)I

    move-result p2

    invoke-virtual {p1, v7, p2, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 58
    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    if-eqz v1, :cond_5

    .line 62
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 63
    invoke-virtual {p0}, Lcom/anythink/basead/ui/guidetoclickv2/HintTextG2CV2View;->getContext()Landroid/content/Context;

    move-result-object p2

    const/high16 v0, 0x42700000    # 60.0f

    invoke-static {p2, v0}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;F)I

    move-result p2

    .line 64
    invoke-virtual {p0}, Lcom/anythink/basead/ui/guidetoclickv2/HintTextG2CV2View;->getContext()Landroid/content/Context;

    move-result-object v3

    const/high16 v4, 0x41900000    # 18.0f

    invoke-static {v3, v4}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;F)I

    move-result v3

    invoke-virtual {p0}, Lcom/anythink/basead/ui/guidetoclickv2/HintTextG2CV2View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v0}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;F)I

    move-result v0

    .line 63
    invoke-virtual {p1, p2, v3, v0, v7}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 66
    invoke-virtual {v1, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 67
    instance-of p1, v1, Landroid/widget/TextView;

    if-eqz p1, :cond_2

    .line 68
    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    const/4 p1, 0x1

    const/high16 p2, 0x41600000    # 14.0f

    .line 69
    invoke-virtual {v1, p1, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_2
    return-void

    :cond_3
    if-ne p2, v6, :cond_5

    if-eqz v0, :cond_4

    .line 76
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 77
    invoke-virtual {p1, v5, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 78
    invoke-virtual {p1, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 79
    invoke-virtual {p0}, Lcom/anythink/basead/ui/guidetoclickv2/HintTextG2CV2View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, v3}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;F)I

    move-result p2

    invoke-virtual {p1, v7, p2, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 80
    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_4
    if-eqz v1, :cond_5

    .line 83
    instance-of p1, v1, Landroid/widget/TextView;

    if-eqz p1, :cond_5

    .line 84
    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    :cond_5
    return-void
.end method
