.class public Lcom/anythink/basead/f/e;
.super Lcom/anythink/basead/f/c;


# instance fields
.field a:Lcom/anythink/basead/e/a;

.field k:Lcom/anythink/core/common/o/a/c;

.field l:Lcom/anythink/basead/a/b;

.field m:Landroid/view/View;

.field volatile n:Z

.field o:Landroid/view/View;

.field p:Landroid/view/View$OnClickListener;

.field q:Lcom/anythink/basead/ui/b/a;

.field private final r:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/anythink/core/common/f/m;Ljava/lang/String;Z)V
    .locals 0

    .line 157
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/anythink/basead/f/c;-><init>(Landroid/content/Context;Lcom/anythink/core/common/f/m;Ljava/lang/String;Z)V

    .line 42
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/anythink/basead/f/e;->r:Ljava/lang/String;

    .line 56
    new-instance p1, Lcom/anythink/basead/f/e$1;

    invoke-direct {p1, p0}, Lcom/anythink/basead/f/e$1;-><init>(Lcom/anythink/basead/f/e;)V

    iput-object p1, p0, Lcom/anythink/basead/f/e;->p:Landroid/view/View$OnClickListener;

    return-void
.end method

.method private a(I)V
    .locals 1

    .line 346
    iget-object v0, p0, Lcom/anythink/basead/f/e;->q:Lcom/anythink/basead/ui/b/a;

    if-eqz v0, :cond_0

    .line 347
    invoke-virtual {v0, p1}, Lcom/anythink/basead/ui/b/a;->a(I)V

    :cond_0
    return-void
.end method

.method private a(II)V
    .locals 4

    .line 74
    invoke-direct {p0}, Lcom/anythink/basead/f/e;->n()V

    .line 75
    iget-object v0, p0, Lcom/anythink/basead/f/e;->l:Lcom/anythink/basead/a/b;

    if-nez v0, :cond_0

    .line 76
    new-instance v0, Lcom/anythink/basead/a/b;

    iget-object v1, p0, Lcom/anythink/basead/f/e;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/anythink/basead/f/e;->d:Lcom/anythink/core/common/f/m;

    iget-object v3, p0, Lcom/anythink/basead/f/e;->g:Lcom/anythink/core/common/f/z;

    invoke-direct {v0, v1, v2, v3}, Lcom/anythink/basead/a/b;-><init>(Landroid/content/Context;Lcom/anythink/core/common/f/m;Lcom/anythink/core/common/f/l;)V

    iput-object v0, p0, Lcom/anythink/basead/f/e;->l:Lcom/anythink/basead/a/b;

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/anythink/basead/f/e;->l:Lcom/anythink/basead/a/b;

    invoke-virtual {v0}, Lcom/anythink/basead/a/b;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 85
    :cond_1
    iget-object v0, p0, Lcom/anythink/basead/f/e;->l:Lcom/anythink/basead/a/b;

    new-instance v1, Lcom/anythink/basead/f/e$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/anythink/basead/f/e$2;-><init>(Lcom/anythink/basead/f/e;II)V

    invoke-virtual {v0, v1}, Lcom/anythink/basead/a/b;->a(Lcom/anythink/basead/a/b$b;)V

    .line 116
    iget-object p1, p0, Lcom/anythink/basead/f/e;->l:Lcom/anythink/basead/a/b;

    new-instance p2, Lcom/anythink/basead/c/i;

    iget-object v0, p0, Lcom/anythink/basead/f/e;->d:Lcom/anythink/core/common/f/m;

    iget-object v0, v0, Lcom/anythink/core/common/f/m;->d:Ljava/lang/String;

    const-string v1, ""

    invoke-direct {p2, v0, v1}, Lcom/anythink/basead/c/i;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lcom/anythink/basead/a/b;->a(Lcom/anythink/basead/c/i;)V

    const/16 p1, 0x71

    .line 117
    invoke-direct {p0, p1}, Lcom/anythink/basead/f/e;->a(I)V

    return-void
.end method

.method private a(Landroid/view/View;Landroid/view/View$OnClickListener;)V
    .locals 2

    .line 242
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 243
    check-cast p1, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    .line 244
    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 245
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 246
    invoke-direct {p0, v1, p2}, Lcom/anythink/basead/f/e;->a(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void

    .line 249
    :cond_1
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private a(Landroid/view/View;[Landroid/view/View;)V
    .locals 3

    .line 121
    instance-of v0, p1, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 122
    check-cast p1, Landroid/view/ViewGroup;

    .line 123
    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 124
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 125
    invoke-direct {p0, v0, p2}, Lcom/anythink/basead/f/e;->a(Landroid/view/View;[Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void

    .line 128
    :cond_1
    instance-of v0, p1, Landroid/widget/Button;

    if-nez v0, :cond_2

    instance-of v0, p1, Landroid/widget/TextView;

    if-eqz v0, :cond_3

    .line 129
    :cond_2
    move-object v0, p1

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 130
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p0}, Lcom/anythink/basead/f/e;->g()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 131
    aput-object p1, p2, v1

    :cond_3
    return-void
.end method

.method static synthetic a(Lcom/anythink/basead/f/e;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/anythink/basead/f/e;->n()V

    return-void
.end method

.method static synthetic a(Lcom/anythink/basead/f/e;II)V
    .locals 4

    .line 1074
    invoke-direct {p0}, Lcom/anythink/basead/f/e;->n()V

    .line 1075
    iget-object v0, p0, Lcom/anythink/basead/f/e;->l:Lcom/anythink/basead/a/b;

    if-nez v0, :cond_0

    .line 1076
    new-instance v0, Lcom/anythink/basead/a/b;

    iget-object v1, p0, Lcom/anythink/basead/f/e;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/anythink/basead/f/e;->d:Lcom/anythink/core/common/f/m;

    iget-object v3, p0, Lcom/anythink/basead/f/e;->g:Lcom/anythink/core/common/f/z;

    invoke-direct {v0, v1, v2, v3}, Lcom/anythink/basead/a/b;-><init>(Landroid/content/Context;Lcom/anythink/core/common/f/m;Lcom/anythink/core/common/f/l;)V

    iput-object v0, p0, Lcom/anythink/basead/f/e;->l:Lcom/anythink/basead/a/b;

    .line 1078
    :cond_0
    iget-object v0, p0, Lcom/anythink/basead/f/e;->l:Lcom/anythink/basead/a/b;

    invoke-virtual {v0}, Lcom/anythink/basead/a/b;->a()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1085
    iget-object v0, p0, Lcom/anythink/basead/f/e;->l:Lcom/anythink/basead/a/b;

    new-instance v1, Lcom/anythink/basead/f/e$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/anythink/basead/f/e$2;-><init>(Lcom/anythink/basead/f/e;II)V

    invoke-virtual {v0, v1}, Lcom/anythink/basead/a/b;->a(Lcom/anythink/basead/a/b$b;)V

    .line 1116
    iget-object p1, p0, Lcom/anythink/basead/f/e;->l:Lcom/anythink/basead/a/b;

    new-instance p2, Lcom/anythink/basead/c/i;

    iget-object v0, p0, Lcom/anythink/basead/f/e;->d:Lcom/anythink/core/common/f/m;

    iget-object v0, v0, Lcom/anythink/core/common/f/m;->d:Ljava/lang/String;

    const-string v1, ""

    invoke-direct {p2, v0, v1}, Lcom/anythink/basead/c/i;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lcom/anythink/basead/a/b;->a(Lcom/anythink/basead/c/i;)V

    const/16 p1, 0x71

    .line 1117
    invoke-direct {p0, p1}, Lcom/anythink/basead/f/e;->a(I)V

    :cond_1
    return-void
.end method

.method private b(Landroid/view/View;)V
    .locals 2

    .line 260
    iput-object p1, p0, Lcom/anythink/basead/f/e;->m:Landroid/view/View;

    .line 262
    invoke-direct {p0}, Lcom/anythink/basead/f/e;->o()V

    .line 264
    new-instance v0, Lcom/anythink/basead/f/e$3;

    invoke-direct {v0, p0}, Lcom/anythink/basead/f/e$3;-><init>(Lcom/anythink/basead/f/e;)V

    .line 271
    iget-object v1, p0, Lcom/anythink/basead/f/e;->k:Lcom/anythink/core/common/o/a/c;

    if-nez v1, :cond_0

    .line 272
    new-instance v1, Lcom/anythink/core/common/o/a/c;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    invoke-direct {v1}, Lcom/anythink/core/common/o/a/c;-><init>()V

    iput-object v1, p0, Lcom/anythink/basead/f/e;->k:Lcom/anythink/core/common/o/a/c;

    .line 275
    :cond_0
    iget-object v1, p0, Lcom/anythink/basead/f/e;->k:Lcom/anythink/core/common/o/a/c;

    invoke-virtual {v1, p1, v0}, Lcom/anythink/core/common/o/a/c;->a(Landroid/view/View;Lcom/anythink/core/common/o/a/b;)V

    return-void
.end method

.method public static k()Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method private n()V
    .locals 5

    .line 280
    iget-boolean v0, p0, Lcom/anythink/basead/f/e;->n:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x72

    .line 283
    invoke-direct {p0, v0}, Lcom/anythink/basead/f/e;->a(I)V

    const/4 v0, 0x1

    .line 284
    iput-boolean v0, p0, Lcom/anythink/basead/f/e;->n:Z

    .line 285
    iget-object v0, p0, Lcom/anythink/basead/f/e;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/anythink/basead/f/a/b;->a(Landroid/content/Context;)Lcom/anythink/basead/f/a/b;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/basead/f/e;->g:Lcom/anythink/core/common/f/z;

    invoke-virtual {v0, v1}, Lcom/anythink/basead/f/a/b;->a(Lcom/anythink/core/common/f/z;)V

    const/16 v0, 0x8

    .line 286
    iget-object v1, p0, Lcom/anythink/basead/f/e;->g:Lcom/anythink/core/common/f/z;

    new-instance v2, Lcom/anythink/basead/c/i;

    iget-object v3, p0, Lcom/anythink/basead/f/e;->d:Lcom/anythink/core/common/f/m;

    iget-object v3, v3, Lcom/anythink/core/common/f/m;->d:Ljava/lang/String;

    const-string v4, ""

    invoke-direct {v2, v3, v4}, Lcom/anythink/basead/c/i;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v1, v2}, Lcom/anythink/basead/a/a;->a(ILcom/anythink/core/common/f/l;Lcom/anythink/basead/c/i;)V

    .line 289
    iget-object v0, p0, Lcom/anythink/basead/f/e;->a:Lcom/anythink/basead/e/a;

    if-eqz v0, :cond_1

    .line 290
    new-instance v1, Lcom/anythink/basead/e/i;

    invoke-direct {v1}, Lcom/anythink/basead/e/i;-><init>()V

    invoke-interface {v0, v1}, Lcom/anythink/basead/e/a;->onAdShow(Lcom/anythink/basead/e/i;)V

    :cond_1
    return-void
.end method

.method private o()V
    .locals 7

    .line 312
    iget-object v0, p0, Lcom/anythink/basead/f/e;->m:Landroid/view/View;

    if-eqz v0, :cond_3

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    goto :goto_0

    .line 315
    :cond_0
    iget-object v0, p0, Lcom/anythink/basead/f/e;->g:Lcom/anythink/core/common/f/z;

    if-nez v0, :cond_1

    return-void

    .line 318
    :cond_1
    iget-object v0, p0, Lcom/anythink/basead/f/e;->d:Lcom/anythink/core/common/f/m;

    if-nez v0, :cond_2

    return-void

    .line 321
    :cond_2
    new-instance v0, Lcom/anythink/basead/f/e$5;

    iget-object v1, p0, Lcom/anythink/basead/f/e;->m:Landroid/view/View;

    move-object v3, v1

    check-cast v3, Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/anythink/basead/f/e;->g:Lcom/anythink/core/common/f/z;

    iget-object v5, p0, Lcom/anythink/basead/f/e;->d:Lcom/anythink/core/common/f/m;

    new-instance v6, Lcom/anythink/basead/f/e$4;

    invoke-direct {v6, p0}, Lcom/anythink/basead/f/e$4;-><init>(Lcom/anythink/basead/f/e;)V

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/anythink/basead/f/e$5;-><init>(Lcom/anythink/basead/f/e;Landroid/view/ViewGroup;Lcom/anythink/core/common/f/l;Lcom/anythink/core/common/f/m;Lcom/anythink/basead/ui/b/b$a;)V

    iput-object v0, p0, Lcom/anythink/basead/f/e;->q:Lcom/anythink/basead/ui/b/a;

    :cond_3
    :goto_0
    return-void
.end method


# virtual methods
.method public final a(Landroid/app/Activity;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public final a(Landroid/view/View;)V
    .locals 1

    .line 236
    invoke-direct {p0, p1}, Lcom/anythink/basead/f/e;->b(Landroid/view/View;)V

    .line 238
    iget-object v0, p0, Lcom/anythink/basead/f/e;->p:Landroid/view/View$OnClickListener;

    invoke-direct {p0, p1, v0}, Lcom/anythink/basead/f/e;->a(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final a(Landroid/view/View;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 218
    invoke-direct {p0, p1}, Lcom/anythink/basead/f/e;->b(Landroid/view/View;)V

    if-eqz p2, :cond_3

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/view/View;

    .line 221
    invoke-direct {p0, p1, v0}, Lcom/anythink/basead/f/e;->a(Landroid/view/View;[Landroid/view/View;)V

    const/4 p1, 0x0

    .line 222
    aget-object v1, v0, p1

    if-eqz v1, :cond_0

    .line 223
    aget-object p1, v0, p1

    iput-object p1, p0, Lcom/anythink/basead/f/e;->o:Landroid/view/View;

    .line 225
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    if-eqz p2, :cond_1

    .line 227
    iget-object v0, p0, Lcom/anythink/basead/f/e;->p:Landroid/view/View$OnClickListener;

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_2
    return-void

    .line 231
    :cond_3
    iget-object p2, p0, Lcom/anythink/basead/f/e;->p:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final a(Lcom/anythink/basead/e/a;)V
    .locals 0

    .line 209
    iput-object p1, p0, Lcom/anythink/basead/f/e;->a:Lcom/anythink/basead/e/a;

    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .line 162
    iget-object v0, p0, Lcom/anythink/basead/f/e;->g:Lcom/anythink/core/common/f/z;

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/anythink/basead/f/e;->g:Lcom/anythink/core/common/f/z;

    invoke-virtual {v0}, Lcom/anythink/core/common/f/z;->u()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    .line 169
    iget-object v0, p0, Lcom/anythink/basead/f/e;->g:Lcom/anythink/core/common/f/z;

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/anythink/basead/f/e;->g:Lcom/anythink/core/common/f/z;

    invoke-virtual {v0}, Lcom/anythink/core/common/f/z;->v()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public final g()Ljava/lang/String;
    .locals 1

    .line 176
    iget-object v0, p0, Lcom/anythink/basead/f/e;->g:Lcom/anythink/core/common/f/z;

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/anythink/basead/f/e;->g:Lcom/anythink/core/common/f/z;

    invoke-virtual {v0}, Lcom/anythink/core/common/f/z;->z()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public final h()Ljava/lang/String;
    .locals 1

    .line 183
    iget-object v0, p0, Lcom/anythink/basead/f/e;->g:Lcom/anythink/core/common/f/z;

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/anythink/basead/f/e;->g:Lcom/anythink/core/common/f/z;

    invoke-virtual {v0}, Lcom/anythink/core/common/f/z;->w()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public final i()Ljava/lang/String;
    .locals 1

    .line 190
    iget-object v0, p0, Lcom/anythink/basead/f/e;->g:Lcom/anythink/core/common/f/z;

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/anythink/basead/f/e;->g:Lcom/anythink/core/common/f/z;

    invoke-virtual {v0}, Lcom/anythink/core/common/f/z;->x()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public final j()Ljava/lang/String;
    .locals 1

    .line 197
    iget-object v0, p0, Lcom/anythink/basead/f/e;->g:Lcom/anythink/core/common/f/z;

    if-eqz v0, :cond_0

    .line 198
    iget-object v0, p0, Lcom/anythink/basead/f/e;->g:Lcom/anythink/core/common/f/z;

    invoke-virtual {v0}, Lcom/anythink/core/common/f/z;->y()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public final l()V
    .locals 1

    .line 254
    iget-object v0, p0, Lcom/anythink/basead/f/e;->k:Lcom/anythink/core/common/o/a/c;

    if-eqz v0, :cond_0

    .line 255
    invoke-virtual {v0}, Lcom/anythink/core/common/o/a/c;->a()V

    :cond_0
    return-void
.end method

.method public final m()V
    .locals 2

    .line 296
    invoke-virtual {p0}, Lcom/anythink/basead/f/e;->l()V

    const/16 v0, 0x70

    .line 297
    invoke-direct {p0, v0}, Lcom/anythink/basead/f/e;->a(I)V

    const/4 v0, 0x0

    .line 298
    iput-object v0, p0, Lcom/anythink/basead/f/e;->a:Lcom/anythink/basead/e/a;

    .line 299
    iget-object v1, p0, Lcom/anythink/basead/f/e;->l:Lcom/anythink/basead/a/b;

    if-eqz v1, :cond_0

    .line 300
    invoke-virtual {v1}, Lcom/anythink/basead/a/b;->d()V

    .line 301
    iput-object v0, p0, Lcom/anythink/basead/f/e;->l:Lcom/anythink/basead/a/b;

    .line 303
    :cond_0
    iget-object v1, p0, Lcom/anythink/basead/f/e;->k:Lcom/anythink/core/common/o/a/c;

    if-eqz v1, :cond_1

    .line 304
    invoke-virtual {v1}, Lcom/anythink/core/common/o/a/c;->b()V

    .line 305
    iput-object v0, p0, Lcom/anythink/basead/f/e;->k:Lcom/anythink/core/common/o/a/c;

    :cond_1
    return-void
.end method
