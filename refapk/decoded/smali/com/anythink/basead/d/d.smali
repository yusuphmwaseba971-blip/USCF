.class public Lcom/anythink/basead/d/d;
.super Lcom/anythink/basead/d/b;


# static fields
.field public static final a:Ljava/lang/String; = "d"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/anythink/basead/d/b$b;Lcom/anythink/core/common/f/m;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2, p3}, Lcom/anythink/basead/d/b;-><init>(Landroid/content/Context;Lcom/anythink/basead/d/b$b;Lcom/anythink/core/common/f/m;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/app/Activity;Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 43
    :try_start_0
    invoke-virtual {p0}, Lcom/anythink/basead/d/d;->c()Z

    move-result v1

    if-nez v1, :cond_1

    .line 44
    iget-object p1, p0, Lcom/anythink/basead/d/d;->h:Lcom/anythink/basead/e/a;

    if-eqz p1, :cond_0

    .line 45
    iget-object p1, p0, Lcom/anythink/basead/d/d;->h:Lcom/anythink/basead/e/a;

    const-string p2, "30001"

    const-string v1, "No fill, offer = null!"

    invoke-static {p2, v1}, Lcom/anythink/basead/c/f;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/basead/c/e;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/anythink/basead/e/a;->onShowFailed(Lcom/anythink/basead/c/e;)V

    .line 47
    :cond_0
    iput-object v0, p0, Lcom/anythink/basead/d/d;->e:Lcom/anythink/core/common/f/ai;

    return-void

    :cond_1
    const-string v1, "extra_scenario"

    .line 51
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "extra_orientation"

    .line 52
    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 53
    iget-object v2, p0, Lcom/anythink/basead/d/d;->e:Lcom/anythink/core/common/f/ai;

    invoke-virtual {p0, v2}, Lcom/anythink/basead/d/d;->a(Lcom/anythink/core/common/f/ai;)Ljava/lang/String;

    move-result-object v2

    .line 55
    iget-object v3, p0, Lcom/anythink/basead/d/d;->f:Lcom/anythink/core/common/a/h;

    instance-of v3, v3, Lcom/anythink/expressad/reward/b/a;

    if-eqz v3, :cond_2

    .line 57
    iget-object p2, p0, Lcom/anythink/basead/d/d;->f:Lcom/anythink/core/common/a/h;

    check-cast p2, Lcom/anythink/expressad/reward/b/a;

    new-instance v2, Lcom/anythink/basead/d/d$1;

    invoke-direct {v2, p0, v1}, Lcom/anythink/basead/d/d$1;-><init>(Lcom/anythink/basead/d/d;Ljava/lang/String;)V

    invoke-virtual {p2, v2}, Lcom/anythink/expressad/reward/b/a;->a(Lcom/anythink/expressad/videocommon/d/a;)V

    .line 129
    iget-object p2, p0, Lcom/anythink/basead/d/d;->f:Lcom/anythink/core/common/a/h;

    move-object v1, p2

    check-cast v1, Lcom/anythink/expressad/reward/b/a;

    const-string v3, ""

    const-string v4, ""

    const-string v5, ""

    iget-object v6, p0, Lcom/anythink/basead/d/d;->c:Lcom/anythink/core/common/f/m;

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/anythink/expressad/reward/b/a;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/anythink/core/common/f/m;)V

    return-void

    .line 135
    :cond_2
    invoke-static {}, Lcom/anythink/basead/e/b;->a()Lcom/anythink/basead/e/b;

    move-result-object v3

    new-instance v4, Lcom/anythink/basead/d/d$2;

    invoke-direct {v4, p0, v2}, Lcom/anythink/basead/d/d$2;-><init>(Lcom/anythink/basead/d/d;Ljava/lang/String;)V

    invoke-virtual {v3, v2, v4}, Lcom/anythink/basead/e/b;->a(Ljava/lang/String;Lcom/anythink/basead/e/b$b;)V

    .line 197
    new-instance v3, Lcom/anythink/core/basead/b/c;

    invoke-direct {v3}, Lcom/anythink/core/basead/b/c;-><init>()V

    .line 198
    iget-object v4, p0, Lcom/anythink/basead/d/d;->e:Lcom/anythink/core/common/f/ai;

    iput-object v4, v3, Lcom/anythink/core/basead/b/c;->c:Lcom/anythink/core/common/f/l;

    .line 199
    iput-object v2, v3, Lcom/anythink/core/basead/b/c;->d:Ljava/lang/String;

    const/4 v2, 0x3

    .line 200
    iput v2, v3, Lcom/anythink/core/basead/b/c;->a:I

    .line 201
    iget-object v2, p0, Lcom/anythink/basead/d/d;->c:Lcom/anythink/core/common/f/m;

    iput-object v2, v3, Lcom/anythink/core/basead/b/c;->h:Lcom/anythink/core/common/f/m;

    .line 202
    iput p2, v3, Lcom/anythink/core/basead/b/c;->e:I

    .line 203
    iput-object v1, v3, Lcom/anythink/core/basead/b/c;->b:Ljava/lang/String;

    .line 206
    invoke-static {p1, v3}, Lcom/anythink/basead/ui/BaseATActivity;->a(Landroid/app/Activity;Lcom/anythink/core/basead/b/c;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 208
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 209
    iget-object p2, p0, Lcom/anythink/basead/d/d;->h:Lcom/anythink/basead/e/a;

    if-eqz p2, :cond_3

    .line 210
    iget-object p2, p0, Lcom/anythink/basead/d/d;->h:Lcom/anythink/basead/e/a;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v1, "-9999"

    invoke-static {v1, p1}, Lcom/anythink/basead/c/f;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/basead/c/e;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/anythink/basead/e/a;->onShowFailed(Lcom/anythink/basead/c/e;)V

    .line 212
    :cond_3
    iput-object v0, p0, Lcom/anythink/basead/d/d;->e:Lcom/anythink/core/common/f/ai;

    return-void
.end method

.method public final b()V
    .locals 1

    .line 220
    invoke-super {p0}, Lcom/anythink/basead/d/b;->b()V

    const/4 v0, 0x0

    .line 221
    iput-object v0, p0, Lcom/anythink/basead/d/d;->h:Lcom/anythink/basead/e/a;

    return-void
.end method
