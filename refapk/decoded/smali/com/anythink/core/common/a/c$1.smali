.class final Lcom/anythink/core/common/a/c$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/core/common/a/c;->a(Lcom/anythink/core/common/f/j;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/core/common/f/j;

.field final synthetic b:Lcom/anythink/core/common/a/c;


# direct methods
.method constructor <init>(Lcom/anythink/core/common/a/c;Lcom/anythink/core/common/f/j;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/anythink/core/common/a/c$1;->b:Lcom/anythink/core/common/a/c;

    iput-object p2, p0, Lcom/anythink/core/common/a/c$1;->a:Lcom/anythink/core/common/f/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 43
    new-instance v0, Lcom/anythink/core/common/a/g;

    invoke-direct {v0}, Lcom/anythink/core/common/a/g;-><init>()V

    .line 44
    iget-object v1, p0, Lcom/anythink/core/common/a/c$1;->a:Lcom/anythink/core/common/f/j;

    invoke-virtual {v1}, Lcom/anythink/core/common/f/j;->Z()Ljava/lang/String;

    move-result-object v1

    .line 1012
    iput-object v1, v0, Lcom/anythink/core/common/a/e;->a:Ljava/lang/String;

    .line 45
    iget-object v1, p0, Lcom/anythink/core/common/a/c$1;->a:Lcom/anythink/core/common/f/j;

    invoke-virtual {v1}, Lcom/anythink/core/common/f/j;->aa()Ljava/lang/String;

    move-result-object v1

    .line 1020
    iput-object v1, v0, Lcom/anythink/core/common/a/e;->b:Ljava/lang/String;

    .line 46
    iget-object v1, p0, Lcom/anythink/core/common/a/c$1;->a:Lcom/anythink/core/common/f/j;

    invoke-virtual {v1}, Lcom/anythink/core/common/f/j;->ab()I

    move-result v1

    .line 2012
    iput v1, v0, Lcom/anythink/core/common/a/g;->c:I

    const/4 v1, 0x0

    .line 2020
    iput v1, v0, Lcom/anythink/core/common/a/g;->d:I

    .line 48
    iget-object v1, p0, Lcom/anythink/core/common/a/c$1;->b:Lcom/anythink/core/common/a/c;

    invoke-static {v1}, Lcom/anythink/core/common/a/c;->a(Lcom/anythink/core/common/a/c;)Lcom/anythink/core/common/c/f;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/anythink/core/common/c/f;->a(Lcom/anythink/core/common/a/g;)J

    return-void
.end method
