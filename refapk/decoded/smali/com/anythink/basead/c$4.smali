.class final Lcom/anythink/basead/c$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/basead/c;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/basead/c;


# direct methods
.method constructor <init>(Lcom/anythink/basead/c;)V
    .locals 0

    .line 181
    iput-object p1, p0, Lcom/anythink/basead/c$4;->a:Lcom/anythink/basead/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 184
    iget-object v0, p0, Lcom/anythink/basead/c$4;->a:Lcom/anythink/basead/c;

    invoke-static {v0}, Lcom/anythink/basead/c;->f(Lcom/anythink/basead/c;)Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/anythink/basead/c$4;->a:Lcom/anythink/basead/c;

    invoke-static {v0}, Lcom/anythink/basead/c;->f(Lcom/anythink/basead/c;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 187
    :cond_0
    iget-object v0, p0, Lcom/anythink/basead/c$4;->a:Lcom/anythink/basead/c;

    invoke-static {v0}, Lcom/anythink/basead/c;->a(Lcom/anythink/basead/c;)Lcom/anythink/basead/c$a;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 188
    iget-object v0, p0, Lcom/anythink/basead/c$4;->a:Lcom/anythink/basead/c;

    invoke-static {v0}, Lcom/anythink/basead/c;->a(Lcom/anythink/basead/c;)Lcom/anythink/basead/c$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/anythink/basead/c$a;->b()V

    :cond_1
    return-void
.end method
