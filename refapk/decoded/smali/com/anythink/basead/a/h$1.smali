.class final Lcom/anythink/basead/a/h$1;
.super Lcom/anythink/basead/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/basead/a/h;->a(Lcom/anythink/core/common/f/l;Ljava/lang/String;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/basead/a/h;


# direct methods
.method constructor <init>(Lcom/anythink/basead/a/h;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/anythink/basead/a/h$1;->a:Lcom/anythink/basead/a/h;

    invoke-direct {p0}, Lcom/anythink/basead/a;-><init>()V

    return-void
.end method


# virtual methods
.method public final onActivityPaused(Landroid/app/Activity;)V
    .locals 0

    .line 57
    invoke-super {p0, p1}, Lcom/anythink/basead/a;->onActivityPaused(Landroid/app/Activity;)V

    .line 58
    iget-object p1, p0, Lcom/anythink/basead/a/h$1;->a:Lcom/anythink/basead/a/h;

    iget-object p1, p1, Lcom/anythink/basead/a/h;->a:Lcom/anythink/core/common/m/c;

    if-eqz p1, :cond_0

    .line 59
    iget-object p1, p0, Lcom/anythink/basead/a/h$1;->a:Lcom/anythink/basead/a/h;

    iget-object p1, p1, Lcom/anythink/basead/a/h;->a:Lcom/anythink/core/common/m/c;

    invoke-virtual {p1}, Lcom/anythink/core/common/m/c;->b()V

    :cond_0
    return-void
.end method

.method public final onActivityResumed(Landroid/app/Activity;)V
    .locals 0

    .line 49
    invoke-super {p0, p1}, Lcom/anythink/basead/a;->onActivityResumed(Landroid/app/Activity;)V

    .line 50
    iget-object p1, p0, Lcom/anythink/basead/a/h$1;->a:Lcom/anythink/basead/a/h;

    iget-object p1, p1, Lcom/anythink/basead/a/h;->a:Lcom/anythink/core/common/m/c;

    if-eqz p1, :cond_0

    .line 51
    iget-object p1, p0, Lcom/anythink/basead/a/h$1;->a:Lcom/anythink/basead/a/h;

    iget-object p1, p1, Lcom/anythink/basead/a/h;->a:Lcom/anythink/core/common/m/c;

    invoke-virtual {p1}, Lcom/anythink/core/common/m/c;->a()V

    :cond_0
    return-void
.end method
