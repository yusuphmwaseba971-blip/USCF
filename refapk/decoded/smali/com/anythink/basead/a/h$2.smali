.class final Lcom/anythink/basead/a/h$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/basead/a/h;->a(Lcom/anythink/core/common/f/l;Ljava/lang/String;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/basead/a;

.field final synthetic b:Lcom/anythink/core/common/f/l;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lcom/anythink/basead/a/h;


# direct methods
.method constructor <init>(Lcom/anythink/basead/a/h;Lcom/anythink/basead/a;Lcom/anythink/core/common/f/l;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/anythink/basead/a/h$2;->e:Lcom/anythink/basead/a/h;

    iput-object p2, p0, Lcom/anythink/basead/a/h$2;->a:Lcom/anythink/basead/a;

    iput-object p3, p0, Lcom/anythink/basead/a/h$2;->b:Lcom/anythink/core/common/f/l;

    iput-object p4, p0, Lcom/anythink/basead/a/h$2;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/anythink/basead/a/h$2;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    .line 66
    iget-object v0, p0, Lcom/anythink/basead/a/h$2;->e:Lcom/anythink/basead/a/h;

    iget-object v0, v0, Lcom/anythink/basead/a/h;->b:Landroid/content/Context;

    check-cast v0, Landroid/app/Application;

    iget-object v1, p0, Lcom/anythink/basead/a/h$2;->a:Lcom/anythink/basead/a;

    invoke-virtual {v0, v1}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 67
    iget-object v0, p0, Lcom/anythink/basead/a/h$2;->e:Lcom/anythink/basead/a/h;

    iget-object v0, v0, Lcom/anythink/basead/a/h;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/anythink/basead/a/h$2;->b:Lcom/anythink/core/common/f/l;

    invoke-static {v0, v1}, Lcom/anythink/basead/a/a;->a(Landroid/content/Context;Lcom/anythink/core/common/f/l;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    iget-object v1, p0, Lcom/anythink/basead/a/h$2;->c:Ljava/lang/String;

    iget-object v0, p0, Lcom/anythink/basead/a/h$2;->b:Lcom/anythink/core/common/f/l;

    invoke-virtual {v0}, Lcom/anythink/core/common/f/l;->s()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/anythink/basead/a/h$2;->d:Ljava/lang/String;

    const/4 v4, 0x6

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    invoke-static/range {v1 .. v9}, Lcom/anythink/core/common/n/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;JJ)V

    :cond_0
    return-void
.end method
