.class public Lcom/anythink/core/basead/ui/web/WebLoadFailRefrshView;
.super Landroid/widget/LinearLayout;


# instance fields
.field private a:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 23
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1028
    invoke-virtual {p0}, Lcom/anythink/core/basead/ui/web/WebLoadFailRefrshView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    .line 1029
    invoke-virtual {p0}, Lcom/anythink/core/basead/ui/web/WebLoadFailRefrshView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "web_load_fail_refresh"

    const-string v2, "layout"

    invoke-static {v0, v1, v2}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    const/4 p1, 0x1

    .line 1031
    invoke-virtual {p0, p1}, Lcom/anythink/core/basead/ui/web/WebLoadFailRefrshView;->setOrientation(I)V

    const/16 p1, 0x11

    .line 1032
    invoke-virtual {p0, p1}, Lcom/anythink/core/basead/ui/web/WebLoadFailRefrshView;->setGravity(I)V

    .line 1034
    invoke-virtual {p0}, Lcom/anythink/core/basead/ui/web/WebLoadFailRefrshView;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "id"

    invoke-static {p1, v1, v0}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/anythink/core/basead/ui/web/WebLoadFailRefrshView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/anythink/core/basead/ui/web/WebLoadFailRefrshView$1;

    invoke-direct {v0, p0}, Lcom/anythink/core/basead/ui/web/WebLoadFailRefrshView$1;-><init>(Lcom/anythink/core/basead/ui/web/WebLoadFailRefrshView;)V

    .line 1035
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic a(Lcom/anythink/core/basead/ui/web/WebLoadFailRefrshView;)Landroid/view/View$OnClickListener;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/anythink/core/basead/ui/web/WebLoadFailRefrshView;->a:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method private a()V
    .locals 4

    .line 28
    invoke-virtual {p0}, Lcom/anythink/core/basead/ui/web/WebLoadFailRefrshView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 29
    invoke-virtual {p0}, Lcom/anythink/core/basead/ui/web/WebLoadFailRefrshView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "web_load_fail_refresh"

    const-string v3, "layout"

    invoke-static {v1, v2, v3}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    const/4 v0, 0x1

    .line 31
    invoke-virtual {p0, v0}, Lcom/anythink/core/basead/ui/web/WebLoadFailRefrshView;->setOrientation(I)V

    const/16 v0, 0x11

    .line 32
    invoke-virtual {p0, v0}, Lcom/anythink/core/basead/ui/web/WebLoadFailRefrshView;->setGravity(I)V

    .line 34
    invoke-virtual {p0}, Lcom/anythink/core/basead/ui/web/WebLoadFailRefrshView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "id"

    invoke-static {v0, v2, v1}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/anythink/core/basead/ui/web/WebLoadFailRefrshView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/anythink/core/basead/ui/web/WebLoadFailRefrshView$1;

    invoke-direct {v1, p0}, Lcom/anythink/core/basead/ui/web/WebLoadFailRefrshView$1;-><init>(Lcom/anythink/core/basead/ui/web/WebLoadFailRefrshView;)V

    .line 35
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public setOnRefreshListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/anythink/core/basead/ui/web/WebLoadFailRefrshView;->a:Landroid/view/View$OnClickListener;

    return-void
.end method
