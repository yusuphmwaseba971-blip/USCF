.class final Lcom/anythink/basead/ui/MediaATView$7;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/basead/ui/MediaATView;->init(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/basead/ui/MediaATView;


# direct methods
.method constructor <init>(Lcom/anythink/basead/ui/MediaATView;)V
    .locals 0

    .line 296
    iput-object p1, p0, Lcom/anythink/basead/ui/MediaATView$7;->a:Lcom/anythink/basead/ui/MediaATView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 299
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object p1

    invoke-virtual {p1}, Lcom/anythink/core/common/b/o;->f()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/anythink/basead/ui/MediaATView$7;->a:Lcom/anythink/basead/ui/MediaATView;

    iget-object v0, v0, Lcom/anythink/basead/ui/MediaATView;->a:Lcom/anythink/core/common/f/l;

    invoke-virtual {v0}, Lcom/anythink/core/common/f/l;->L()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/anythink/core/common/o/m;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
