.class final Lcom/anythink/core/common/a$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/core/common/a;->a(Landroid/content/Context;Lcom/anythink/core/common/f/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/anythink/core/common/f/h;

.field final synthetic c:Lcom/anythink/core/common/f/b;

.field final synthetic d:Lcom/anythink/core/api/ATBaseAdAdapter;

.field final synthetic e:Lcom/anythink/core/common/a;


# direct methods
.method constructor <init>(Lcom/anythink/core/common/a;Landroid/content/Context;Lcom/anythink/core/common/f/h;Lcom/anythink/core/common/f/b;Lcom/anythink/core/api/ATBaseAdAdapter;)V
    .locals 0

    .line 625
    iput-object p1, p0, Lcom/anythink/core/common/a$1;->e:Lcom/anythink/core/common/a;

    iput-object p2, p0, Lcom/anythink/core/common/a$1;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/anythink/core/common/a$1;->b:Lcom/anythink/core/common/f/h;

    iput-object p4, p0, Lcom/anythink/core/common/a$1;->c:Lcom/anythink/core/common/f/b;

    iput-object p5, p0, Lcom/anythink/core/common/a$1;->d:Lcom/anythink/core/api/ATBaseAdAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 631
    iget-object v0, p0, Lcom/anythink/core/common/a$1;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/anythink/core/a/a;->a(Landroid/content/Context;)Lcom/anythink/core/a/a;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/core/common/a$1;->b:Lcom/anythink/core/common/f/h;

    invoke-virtual {v1}, Lcom/anythink/core/common/f/h;->ae()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/anythink/core/common/a$1;->b:Lcom/anythink/core/common/f/h;

    invoke-virtual {v2}, Lcom/anythink/core/common/f/h;->ac()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/anythink/core/common/a$1;->b:Lcom/anythink/core/common/f/h;

    invoke-virtual {v3}, Lcom/anythink/core/common/f/h;->C()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/anythink/core/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 633
    invoke-static {}, Lcom/anythink/core/a/c;->a()Lcom/anythink/core/a/c;

    iget-object v0, p0, Lcom/anythink/core/common/a$1;->b:Lcom/anythink/core/common/f/h;

    invoke-virtual {v0}, Lcom/anythink/core/common/f/h;->ac()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/core/a/c;->a(Ljava/lang/String;)V

    .line 634
    invoke-static {}, Lcom/anythink/core/a/c;->a()Lcom/anythink/core/a/c;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/core/common/a$1;->b:Lcom/anythink/core/common/f/h;

    invoke-virtual {v1}, Lcom/anythink/core/common/f/h;->ac()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/anythink/core/common/a$1;->b:Lcom/anythink/core/common/f/h;

    invoke-virtual {v2}, Lcom/anythink/core/common/f/h;->C()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/anythink/core/a/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 637
    iget-object v0, p0, Lcom/anythink/core/common/a$1;->e:Lcom/anythink/core/common/a;

    iget-object v1, p0, Lcom/anythink/core/common/a$1;->c:Lcom/anythink/core/common/f/b;

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/a;->a(Lcom/anythink/core/common/f/b;)V

    .line 638
    iget-object v0, p0, Lcom/anythink/core/common/a$1;->e:Lcom/anythink/core/common/a;

    iget-object v1, p0, Lcom/anythink/core/common/a$1;->c:Lcom/anythink/core/common/f/b;

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/a;->b(Lcom/anythink/core/common/f/b;)V

    .line 643
    invoke-static {}, Lcom/anythink/core/b/f;->a()Lcom/anythink/core/b/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/b/f;->b()Lcom/anythink/core/api/MediationBidManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 645
    iget-object v1, p0, Lcom/anythink/core/common/a$1;->b:Lcom/anythink/core/common/f/h;

    invoke-virtual {v1}, Lcom/anythink/core/common/f/h;->ac()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/anythink/core/common/a$1;->d:Lcom/anythink/core/api/ATBaseAdAdapter;

    invoke-virtual {v2}, Lcom/anythink/core/api/ATBaseAdAdapter;->getUnitGroupInfo()Lcom/anythink/core/common/f/au;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/anythink/core/api/MediationBidManager;->notifyWinnerDisplay(Ljava/lang/String;Lcom/anythink/core/common/f/au;)V

    :cond_0
    return-void
.end method
