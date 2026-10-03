.class public Lcom/anythink/basead/ui/MraidEndCardView;
.super Lcom/anythink/basead/ui/BaseEndCardView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/anythink/basead/ui/MraidEndCardView$a;
    }
.end annotation


# static fields
.field private static g:Ljava/lang/String; = "MraidEndCardView"


# instance fields
.field e:Lcom/anythink/basead/ui/MraidContainerView;

.field f:Lcom/anythink/basead/ui/MraidEndCardView$a;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/anythink/core/common/f/l;Lcom/anythink/core/common/f/m;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2, p3}, Lcom/anythink/basead/ui/BaseEndCardView;-><init>(Landroid/content/Context;Lcom/anythink/core/common/f/l;Lcom/anythink/core/common/f/m;)V

    .line 27
    invoke-virtual {p0}, Lcom/anythink/basead/ui/MraidEndCardView;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "myoffer_end_card_id"

    const-string p3, "id"

    invoke-static {p1, p2, p3}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/anythink/basead/ui/MraidEndCardView;->setId(I)V

    .line 29
    new-instance p1, Lcom/anythink/basead/ui/a/a;

    invoke-direct {p1}, Lcom/anythink/basead/ui/a/a;-><init>()V

    invoke-virtual {p0, p1}, Lcom/anythink/basead/ui/MraidEndCardView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/anythink/basead/ui/MraidEndCardView;->e:Lcom/anythink/basead/ui/MraidContainerView;

    if-eqz v0, :cond_0

    .line 139
    invoke-virtual {v0}, Lcom/anythink/basead/ui/MraidContainerView;->release()V

    :cond_0
    return-void
.end method

.method protected final b()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 145
    new-instance v0, Lcom/anythink/basead/ui/a/a;

    invoke-direct {v0}, Lcom/anythink/basead/ui/a/a;-><init>()V

    return-object v0
.end method

.method public init(Z)V
    .locals 5

    .line 48
    iget-object v0, p0, Lcom/anythink/basead/ui/MraidEndCardView;->c:Lcom/anythink/core/common/f/m;

    iget-object v0, v0, Lcom/anythink/core/common/f/m;->n:Lcom/anythink/core/common/f/n;

    invoke-virtual {v0}, Lcom/anythink/core/common/f/n;->D()I

    move-result v0

    if-nez v0, :cond_0

    .line 49
    new-instance v0, Lcom/anythink/basead/ui/MraidEndCardView$1;

    invoke-direct {v0, p0}, Lcom/anythink/basead/ui/MraidEndCardView$1;-><init>(Lcom/anythink/basead/ui/MraidEndCardView;)V

    invoke-virtual {p0, v0}, Lcom/anythink/basead/ui/MraidEndCardView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    :cond_0
    new-instance v0, Lcom/anythink/basead/ui/MraidContainerView;

    invoke-virtual {p0}, Lcom/anythink/basead/ui/MraidEndCardView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/anythink/basead/ui/MraidEndCardView;->b:Lcom/anythink/core/common/f/l;

    iget-object v3, p0, Lcom/anythink/basead/ui/MraidEndCardView;->c:Lcom/anythink/core/common/f/m;

    new-instance v4, Lcom/anythink/basead/ui/MraidEndCardView$2;

    invoke-direct {v4, p0}, Lcom/anythink/basead/ui/MraidEndCardView$2;-><init>(Lcom/anythink/basead/ui/MraidEndCardView;)V

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/anythink/basead/ui/MraidContainerView;-><init>(Landroid/content/Context;Lcom/anythink/core/common/f/l;Lcom/anythink/core/common/f/m;Lcom/anythink/basead/ui/MraidContainerView$a;)V

    iput-object v0, p0, Lcom/anythink/basead/ui/MraidEndCardView;->e:Lcom/anythink/basead/ui/MraidContainerView;

    const/4 v1, 0x0

    .line 89
    invoke-virtual {v0, v1}, Lcom/anythink/basead/ui/MraidContainerView;->setBackgroundColor(I)V

    .line 91
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 93
    iget-object v1, p0, Lcom/anythink/basead/ui/MraidEndCardView;->e:Lcom/anythink/basead/ui/MraidContainerView;

    invoke-virtual {v1, v0}, Lcom/anythink/basead/ui/MraidContainerView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 94
    iget-object v0, p0, Lcom/anythink/basead/ui/MraidEndCardView;->e:Lcom/anythink/basead/ui/MraidContainerView;

    invoke-virtual {p0, v0}, Lcom/anythink/basead/ui/MraidEndCardView;->addView(Landroid/view/View;)V

    .line 97
    iget-object v0, p0, Lcom/anythink/basead/ui/MraidEndCardView;->e:Lcom/anythink/basead/ui/MraidContainerView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/anythink/basead/ui/MraidContainerView;->setNeedRegisterVolumeChangeReceiver(Z)V

    .line 98
    iget-object v0, p0, Lcom/anythink/basead/ui/MraidEndCardView;->e:Lcom/anythink/basead/ui/MraidContainerView;

    invoke-virtual {v0}, Lcom/anythink/basead/ui/MraidContainerView;->init()V

    if-eqz p1, :cond_1

    .line 122
    iget-object p1, p0, Lcom/anythink/basead/ui/MraidEndCardView;->e:Lcom/anythink/basead/ui/MraidContainerView;

    invoke-virtual {p1, v1}, Lcom/anythink/basead/ui/MraidContainerView;->loadMraidWebView(I)V

    :cond_1
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    .line 129
    invoke-super {p0, p1}, Lcom/anythink/basead/ui/BaseEndCardView;->onWindowFocusChanged(Z)V

    .line 131
    iget-object v0, p0, Lcom/anythink/basead/ui/MraidEndCardView;->e:Lcom/anythink/basead/ui/MraidContainerView;

    if-eqz v0, :cond_0

    .line 132
    invoke-virtual {v0, p1}, Lcom/anythink/basead/ui/MraidContainerView;->fireMraidIsViewable(Z)V

    :cond_0
    return-void
.end method

.method public setEndCardListener(Lcom/anythink/basead/ui/MraidEndCardView$a;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/anythink/basead/ui/MraidEndCardView;->f:Lcom/anythink/basead/ui/MraidEndCardView$a;

    return-void
.end method
