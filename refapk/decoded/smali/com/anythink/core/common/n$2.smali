.class final Lcom/anythink/core/common/n$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/core/common/n;->a(ILcom/anythink/core/common/f/v;Lcom/anythink/core/common/f/az;Lcom/anythink/core/api/AdError;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/core/common/f/v;

.field final synthetic b:Lcom/anythink/core/common/f;

.field final synthetic c:Lcom/anythink/core/common/n;


# direct methods
.method constructor <init>(Lcom/anythink/core/common/n;Lcom/anythink/core/common/f/v;Lcom/anythink/core/common/f;)V
    .locals 0

    .line 179
    iput-object p1, p0, Lcom/anythink/core/common/n$2;->c:Lcom/anythink/core/common/n;

    iput-object p2, p0, Lcom/anythink/core/common/n$2;->a:Lcom/anythink/core/common/f/v;

    iput-object p3, p0, Lcom/anythink/core/common/n$2;->b:Lcom/anythink/core/common/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 182
    iget-object v0, p0, Lcom/anythink/core/common/n$2;->a:Lcom/anythink/core/common/f/v;

    invoke-virtual {v0}, Lcom/anythink/core/common/f/v;->b()Lcom/anythink/core/common/f/v;

    move-result-object v5

    const/16 v0, 0x8

    .line 183
    iput v0, v5, Lcom/anythink/core/common/f/v;->d:I

    const/4 v0, 0x0

    .line 184
    iput-object v0, v5, Lcom/anythink/core/common/f/v;->f:Lcom/anythink/core/common/n;

    .line 185
    iput-object v0, v5, Lcom/anythink/core/common/f/v;->e:Lcom/anythink/core/common/b/b;

    .line 186
    iget-object v1, p0, Lcom/anythink/core/common/n$2;->b:Lcom/anythink/core/common/f;

    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/o;->f()Landroid/content/Context;

    move-result-object v2

    iget-object v0, p0, Lcom/anythink/core/common/n$2;->c:Lcom/anythink/core/common/n;

    iget-object v3, v0, Lcom/anythink/core/common/n;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/anythink/core/common/n$2;->c:Lcom/anythink/core/common/n;

    iget-object v4, v0, Lcom/anythink/core/common/n;->a:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/anythink/core/common/f;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/anythink/core/common/f/v;Lcom/anythink/core/common/b/a;)V

    return-void
.end method
