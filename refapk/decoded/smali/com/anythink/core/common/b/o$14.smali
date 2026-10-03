.class final Lcom/anythink/core/common/b/o$14;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/core/common/b/o;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/anythink/core/common/b/o;


# direct methods
.method constructor <init>(Lcom/anythink/core/common/b/o;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 1191
    iput-object p1, p0, Lcom/anythink/core/common/b/o$14;->c:Lcom/anythink/core/common/b/o;

    iput-object p2, p0, Lcom/anythink/core/common/b/o$14;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/anythink/core/common/b/o$14;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1194
    iget-object v0, p0, Lcom/anythink/core/common/b/o$14;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/core/d/b;->a(Landroid/content/Context;)Lcom/anythink/core/d/b;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/core/common/b/o$14;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/anythink/core/d/b;->b(Ljava/lang/String;)Lcom/anythink/core/d/a;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1196
    invoke-virtual {v0}, Lcom/anythink/core/d/a;->O()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1197
    iget-object v1, p0, Lcom/anythink/core/common/b/o$14;->c:Lcom/anythink/core/common/b/o;

    invoke-static {v1}, Lcom/anythink/core/common/b/o;->b(Lcom/anythink/core/common/b/o;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/anythink/core/common/q;->a(Landroid/content/Context;)Lcom/anythink/core/common/q;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/anythink/core/common/q;->a(Lcom/anythink/core/d/a;)V

    .line 1200
    invoke-static {}, Lcom/anythink/core/common/w;->a()Lcom/anythink/core/common/w;

    move-result-object v1

    invoke-virtual {v0}, Lcom/anythink/core/d/a;->b()Lcom/anythink/core/common/l/d;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/anythink/core/common/w;->a(Lcom/anythink/core/common/l/d;)V

    .line 1202
    :cond_0
    iget-object v1, p0, Lcom/anythink/core/common/b/o$14;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/anythink/core/d/b;->a(Landroid/content/Context;)Lcom/anythink/core/d/b;

    move-result-object v1

    iget-object v2, p0, Lcom/anythink/core/common/b/o$14;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/anythink/core/d/b;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1205
    iget-object v1, p0, Lcom/anythink/core/common/b/o$14;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/anythink/core/d/b;->a(Landroid/content/Context;)Lcom/anythink/core/d/b;

    .line 1207
    :cond_1
    invoke-static {}, Lcom/anythink/core/common/i/e;->a()Lcom/anythink/core/common/i/e;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/anythink/core/common/i/e;->a(Lcom/anythink/core/d/a;)V

    :cond_2
    return-void
.end method
