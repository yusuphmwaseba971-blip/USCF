.class final Lcom/anythink/basead/ui/animplayerview/BaseAnimPlayerView$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/basead/ui/animplayerview/BaseAnimPlayerView;->init(Lcom/anythink/core/common/f/l;Lcom/anythink/core/common/f/m;ZLjava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/basead/ui/animplayerview/BaseAnimPlayerView;


# direct methods
.method constructor <init>(Lcom/anythink/basead/ui/animplayerview/BaseAnimPlayerView;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/anythink/basead/ui/animplayerview/BaseAnimPlayerView$1;->a:Lcom/anythink/basead/ui/animplayerview/BaseAnimPlayerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    .line 87
    iget-object p1, p0, Lcom/anythink/basead/ui/animplayerview/BaseAnimPlayerView$1;->a:Lcom/anythink/basead/ui/animplayerview/BaseAnimPlayerView;

    iget-object p1, p1, Lcom/anythink/basead/ui/animplayerview/BaseAnimPlayerView;->v:Lcom/anythink/basead/ui/animplayerview/BasePlayerView$a;

    if-eqz p1, :cond_0

    .line 88
    iget-object p1, p0, Lcom/anythink/basead/ui/animplayerview/BaseAnimPlayerView$1;->a:Lcom/anythink/basead/ui/animplayerview/BaseAnimPlayerView;

    iget-object p1, p1, Lcom/anythink/basead/ui/animplayerview/BaseAnimPlayerView;->v:Lcom/anythink/basead/ui/animplayerview/BasePlayerView$a;

    invoke-interface {p1}, Lcom/anythink/basead/ui/animplayerview/BasePlayerView$a;->d()V

    :cond_0
    return-void
.end method
