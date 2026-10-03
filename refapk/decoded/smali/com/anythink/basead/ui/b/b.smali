.class public abstract Lcom/anythink/basead/ui/b/b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/anythink/basead/ui/b/b$a;
    }
.end annotation


# instance fields
.field protected a:Landroid/content/Context;

.field protected b:Lcom/anythink/core/common/f/l;

.field protected c:Lcom/anythink/core/common/f/m;

.field protected d:Landroid/view/ViewGroup;

.field protected e:I

.field f:Landroid/widget/RelativeLayout;

.field g:Landroid/view/View;

.field protected h:Lcom/anythink/basead/ui/b/b$a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method abstract a()V
.end method

.method abstract a(ILjava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method

.method public a(Landroid/content/Context;Lcom/anythink/core/common/f/l;Lcom/anythink/core/common/f/m;Landroid/view/ViewGroup;Landroid/widget/RelativeLayout;Landroid/view/View;ILcom/anythink/basead/ui/b/b$a;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/anythink/basead/ui/b/b;->a:Landroid/content/Context;

    .line 40
    iput-object p2, p0, Lcom/anythink/basead/ui/b/b;->b:Lcom/anythink/core/common/f/l;

    .line 41
    iput-object p3, p0, Lcom/anythink/basead/ui/b/b;->c:Lcom/anythink/core/common/f/m;

    .line 42
    iput-object p4, p0, Lcom/anythink/basead/ui/b/b;->d:Landroid/view/ViewGroup;

    .line 43
    iput p7, p0, Lcom/anythink/basead/ui/b/b;->e:I

    .line 44
    iput-object p8, p0, Lcom/anythink/basead/ui/b/b;->h:Lcom/anythink/basead/ui/b/b$a;

    .line 46
    iput-object p5, p0, Lcom/anythink/basead/ui/b/b;->f:Landroid/widget/RelativeLayout;

    .line 47
    iput-object p6, p0, Lcom/anythink/basead/ui/b/b;->g:Landroid/view/View;

    return-void
.end method
