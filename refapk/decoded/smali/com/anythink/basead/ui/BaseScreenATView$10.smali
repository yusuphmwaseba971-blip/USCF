.class final Lcom/anythink/basead/ui/BaseScreenATView$10;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/anythink/basead/ui/EndCardView$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/basead/ui/BaseScreenATView;->W()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/basead/ui/BaseScreenATView;


# direct methods
.method constructor <init>(Lcom/anythink/basead/ui/BaseScreenATView;)V
    .locals 0

    .line 782
    iput-object p1, p0, Lcom/anythink/basead/ui/BaseScreenATView$10;->a:Lcom/anythink/basead/ui/BaseScreenATView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 785
    sget-object v0, Lcom/anythink/basead/ui/BaseScreenATView;->TAG:Ljava/lang/String;

    .line 786
    iget-object v0, p0, Lcom/anythink/basead/ui/BaseScreenATView$10;->a:Lcom/anythink/basead/ui/BaseScreenATView;

    .line 787
    iget-boolean v1, v0, Lcom/anythink/basead/ui/BaseScreenATView;->r:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x7

    goto :goto_0

    :cond_0
    const/4 v1, 0x3

    :goto_0
    const/4 v2, 0x1

    .line 786
    invoke-virtual {v0, v2, v1}, Lcom/anythink/basead/ui/BaseScreenATView;->a(II)V

    return-void
.end method

.method public final b()V
    .locals 1

    .line 792
    iget-object v0, p0, Lcom/anythink/basead/ui/BaseScreenATView$10;->a:Lcom/anythink/basead/ui/BaseScreenATView;

    invoke-virtual {v0}, Lcom/anythink/basead/ui/BaseScreenATView;->L()V

    return-void
.end method
