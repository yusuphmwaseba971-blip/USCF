.class final Lcom/anythink/basead/d/h$7;
.super Lcom/anythink/basead/ui/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/basead/d/h;->w()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/basead/d/h;


# direct methods
.method constructor <init>(Lcom/anythink/basead/d/h;Landroid/view/ViewGroup;Lcom/anythink/core/common/f/l;Lcom/anythink/core/common/f/m;ILcom/anythink/basead/ui/b/b$a;)V
    .locals 6

    .line 877
    iput-object p1, p0, Lcom/anythink/basead/d/h$7;->a:Lcom/anythink/basead/d/h;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/anythink/basead/ui/b/a;-><init>(Landroid/view/ViewGroup;Lcom/anythink/core/common/f/l;Lcom/anythink/core/common/f/m;ILcom/anythink/basead/ui/b/b$a;)V

    return-void
.end method


# virtual methods
.method public final a()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .line 880
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 883
    iget-object v1, p0, Lcom/anythink/basead/d/h$7;->a:Lcom/anythink/basead/d/h;

    iget-object v1, v1, Lcom/anythink/basead/d/h;->s:Lcom/anythink/basead/ui/OwnNativeATView;

    if-eqz v1, :cond_0

    const/16 v1, 0x51

    .line 892
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const/4 v1, 0x0

    .line 893
    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    :cond_0
    return-object v0
.end method
