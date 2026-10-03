.class final Lcom/anythink/core/common/n/c$5;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/core/common/n/c;->a(Lcom/anythink/core/common/f/k;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/core/common/f/k;


# direct methods
.method constructor <init>(Lcom/anythink/core/common/f/k;)V
    .locals 0

    .line 1788
    iput-object p1, p0, Lcom/anythink/core/common/n/c$5;->a:Lcom/anythink/core/common/f/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1791
    iget-object v0, p0, Lcom/anythink/core/common/n/c$5;->a:Lcom/anythink/core/common/f/k;

    iget-object v0, v0, Lcom/anythink/core/common/f/k;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1792
    iget-object v0, p0, Lcom/anythink/core/common/n/c$5;->a:Lcom/anythink/core/common/f/k;

    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/core/common/b/o;->q()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/anythink/core/common/f/k;->e:Ljava/lang/String;

    .line 1796
    :cond_0
    iget-object v0, p0, Lcom/anythink/core/common/n/c$5;->a:Lcom/anythink/core/common/f/k;

    iget-object v0, v0, Lcom/anythink/core/common/f/k;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1797
    iget-object v0, p0, Lcom/anythink/core/common/n/c$5;->a:Lcom/anythink/core/common/f/k;

    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v1

    iget-object v2, p0, Lcom/anythink/core/common/n/c$5;->a:Lcom/anythink/core/common/f/k;

    iget-object v2, v2, Lcom/anythink/core/common/f/k;->d:Ljava/lang/String;

    .line 1798
    invoke-virtual {v1, v2}, Lcom/anythink/core/common/b/o;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/anythink/core/common/f/k;->f:Ljava/lang/String;

    .line 1799
    iget-object v0, p0, Lcom/anythink/core/common/n/c$5;->a:Lcom/anythink/core/common/f/k;

    invoke-static {v0}, Lcom/anythink/core/common/n/c;->c(Lcom/anythink/core/common/f/k;)V

    .line 1802
    :cond_1
    iget-object v0, p0, Lcom/anythink/core/common/n/c$5;->a:Lcom/anythink/core/common/f/k;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/anythink/core/common/f/k;->i:Ljava/lang/String;

    .line 1804
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/o;->f()Landroid/content/Context;

    move-result-object v0

    .line 1803
    invoke-static {v0}, Lcom/anythink/core/d/b;->a(Landroid/content/Context;)Lcom/anythink/core/d/b;

    move-result-object v0

    .line 1805
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/core/common/b/o;->o()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/anythink/core/d/b;->b(Ljava/lang/String;)Lcom/anythink/core/d/a;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 1809
    iget-object v1, p0, Lcom/anythink/core/common/n/c$5;->a:Lcom/anythink/core/common/f/k;

    invoke-static {v1, v0}, Lcom/anythink/core/common/n/c;->a(Lcom/anythink/core/common/f/k;Lcom/anythink/core/d/a;)Z

    move-result v1

    .line 1812
    iget-object v2, p0, Lcom/anythink/core/common/n/c$5;->a:Lcom/anythink/core/common/f/k;

    invoke-static {v0, v2}, Lcom/anythink/core/common/n/c;->a(Lcom/anythink/core/d/a;Lcom/anythink/core/common/f/k;)Z

    move-result v2

    if-eqz v2, :cond_2

    return-void

    .line 1816
    :cond_2
    iget-object v2, p0, Lcom/anythink/core/common/n/c$5;->a:Lcom/anythink/core/common/f/k;

    invoke-static {v0, v2}, Lcom/anythink/core/common/n/c;->b(Lcom/anythink/core/d/a;Lcom/anythink/core/common/f/k;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1817
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/o;->f()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/core/common/n/d;->a(Landroid/content/Context;)Lcom/anythink/core/common/n/d;

    move-result-object v0

    iget-object v2, p0, Lcom/anythink/core/common/n/c$5;->a:Lcom/anythink/core/common/f/k;

    .line 1818
    invoke-virtual {v0, v2, v1}, Lcom/anythink/core/common/n/d;->a(Lcom/anythink/core/common/f/x;Z)V

    return-void

    .line 1822
    :cond_3
    invoke-static {}, Lcom/anythink/core/common/n/b;->a()Lcom/anythink/core/common/n/b;

    move-result-object v0

    iget-object v2, p0, Lcom/anythink/core/common/n/c$5;->a:Lcom/anythink/core/common/f/k;

    invoke-virtual {v0, v2, v1}, Lcom/anythink/core/common/n/b;->a(Lcom/anythink/core/common/f/k;Z)V

    return-void
.end method
