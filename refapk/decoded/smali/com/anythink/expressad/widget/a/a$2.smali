.class final Lcom/anythink/expressad/widget/a/a$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/expressad/widget/a/a;-><init>(Landroid/content/Context;Lcom/anythink/expressad/widget/a/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/expressad/widget/a/b;

.field final synthetic b:Lcom/anythink/expressad/widget/a/a;


# direct methods
.method constructor <init>(Lcom/anythink/expressad/widget/a/a;Lcom/anythink/expressad/widget/a/b;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/anythink/expressad/widget/a/a$2;->b:Lcom/anythink/expressad/widget/a/a;

    iput-object p2, p0, Lcom/anythink/expressad/widget/a/a$2;->a:Lcom/anythink/expressad/widget/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    .line 74
    iget-object p1, p0, Lcom/anythink/expressad/widget/a/a$2;->a:Lcom/anythink/expressad/widget/a/b;

    if-eqz p1, :cond_0

    .line 75
    invoke-interface {p1}, Lcom/anythink/expressad/widget/a/b;->b()V

    .line 77
    :cond_0
    iget-object p1, p0, Lcom/anythink/expressad/widget/a/a$2;->b:Lcom/anythink/expressad/widget/a/a;

    invoke-virtual {p1}, Lcom/anythink/expressad/widget/a/a;->cancel()V

    .line 78
    iget-object p1, p0, Lcom/anythink/expressad/widget/a/a$2;->b:Lcom/anythink/expressad/widget/a/a;

    invoke-virtual {p1}, Lcom/anythink/expressad/widget/a/a;->a()V

    return-void
.end method
