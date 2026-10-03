.class public final Lcom/anythink/core/common/res/image/a;
.super Lcom/anythink/core/common/res/image/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/anythink/core/common/res/image/a$a;
    }
.end annotation


# instance fields
.field a:Lcom/anythink/core/common/res/e;

.field b:Lcom/anythink/core/common/res/image/a$a;


# direct methods
.method public constructor <init>(Lcom/anythink/core/common/res/e;)V
    .locals 1

    .line 25
    iget-object v0, p1, Lcom/anythink/core/common/res/e;->f:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/anythink/core/common/res/image/b;-><init>(Ljava/lang/String;)V

    .line 26
    iput-object p1, p0, Lcom/anythink/core/common/res/image/a;->a:Lcom/anythink/core/common/res/e;

    return-void
.end method


# virtual methods
.method protected final a()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method protected final a(Lcom/anythink/core/common/o/b/d;)V
    .locals 2

    .line 50
    invoke-static {}, Lcom/anythink/core/common/o/b/b;->a()Lcom/anythink/core/common/o/b/b;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, p1, v1}, Lcom/anythink/core/common/o/b/b;->a(Lcom/anythink/core/common/o/b/d;I)V

    return-void
.end method

.method public final a(Lcom/anythink/core/common/res/image/a$a;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/anythink/core/common/res/image/a;->b:Lcom/anythink/core/common/res/image/a$a;

    return-void
.end method

.method protected final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 62
    iget-object p1, p0, Lcom/anythink/core/common/res/image/a;->b:Lcom/anythink/core/common/res/image/a$a;

    if-eqz p1, :cond_0

    .line 63
    iget-object v0, p0, Lcom/anythink/core/common/res/image/a;->a:Lcom/anythink/core/common/res/e;

    invoke-interface {p1, v0, p2}, Lcom/anythink/core/common/res/image/a$a;->a(Lcom/anythink/core/common/res/e;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected final a(Ljava/io/InputStream;)Z
    .locals 3

    .line 45
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/o;->f()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/core/common/res/d;->a(Landroid/content/Context;)Lcom/anythink/core/common/res/d;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/core/common/res/image/a;->a:Lcom/anythink/core/common/res/e;

    iget v1, v1, Lcom/anythink/core/common/res/e;->e:I

    iget-object v2, p0, Lcom/anythink/core/common/res/image/a;->a:Lcom/anythink/core/common/res/e;

    iget-object v2, v2, Lcom/anythink/core/common/res/e;->f:Ljava/lang/String;

    .line 1116
    invoke-static {v2}, Lcom/anythink/core/common/o/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 45
    invoke-virtual {v0, v1, v2, p1}, Lcom/anythink/core/common/res/d;->a(ILjava/lang/String;Ljava/io/InputStream;)Z

    move-result p1

    return p1
.end method

.method protected final b()V
    .locals 0

    return-void
.end method

.method protected final c()V
    .locals 2

    .line 55
    iget-object v0, p0, Lcom/anythink/core/common/res/image/a;->b:Lcom/anythink/core/common/res/image/a$a;

    if-eqz v0, :cond_0

    .line 56
    iget-object v1, p0, Lcom/anythink/core/common/res/image/a;->a:Lcom/anythink/core/common/res/e;

    invoke-interface {v0, v1}, Lcom/anythink/core/common/res/image/a$a;->a(Lcom/anythink/core/common/res/e;)V

    :cond_0
    return-void
.end method
