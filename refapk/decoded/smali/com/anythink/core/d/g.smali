.class public final Lcom/anythink/core/d/g;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/anythink/core/d/f;


# direct methods
.method public constructor <init>(Lcom/anythink/core/d/f;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/anythink/core/d/g;->a:Lcom/anythink/core/d/f;

    return-void
.end method

.method static synthetic a(Lcom/anythink/core/d/g;)Lcom/anythink/core/d/f;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/anythink/core/d/g;->a:Lcom/anythink/core/d/f;

    return-object p0
.end method

.method public static a(Landroid/content/Context;Lcom/anythink/core/common/f/al;Lcom/anythink/core/common/h/k;)V
    .locals 1

    .line 74
    new-instance v0, Lcom/anythink/core/common/h/l;

    invoke-direct {v0, p0, p1}, Lcom/anythink/core/common/h/l;-><init>(Landroid/content/Context;Lcom/anythink/core/common/f/al;)V

    const/4 p0, 0x0

    .line 75
    invoke-virtual {v0, p0, p2}, Lcom/anythink/core/common/h/l;->a(ILcom/anythink/core/common/h/k;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lcom/anythink/core/common/f/al;)V
    .locals 3

    if-nez p2, :cond_0

    return-void

    .line 29
    :cond_0
    iget-object v0, p0, Lcom/anythink/core/d/g;->a:Lcom/anythink/core/d/f;

    invoke-virtual {p2}, Lcom/anythink/core/common/f/al;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/anythink/core/d/f;->d(Ljava/lang/String;)Lcom/anythink/core/d/e;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 31
    invoke-virtual {v0}, Lcom/anythink/core/d/e;->az()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/anythink/core/common/f/al;->a(Ljava/util/Map;)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 33
    invoke-virtual {p2, v1}, Lcom/anythink/core/common/f/al;->a(Ljava/util/Map;)V

    .line 35
    :goto_0
    new-instance v1, Lcom/anythink/core/common/h/l;

    invoke-direct {v1, p1, p2}, Lcom/anythink/core/common/h/l;-><init>(Landroid/content/Context;Lcom/anythink/core/common/f/al;)V

    const/4 p1, 0x0

    .line 36
    new-instance v2, Lcom/anythink/core/d/g$1;

    invoke-direct {v2, p0, v0, p2}, Lcom/anythink/core/d/g$1;-><init>(Lcom/anythink/core/d/g;Lcom/anythink/core/d/e;Lcom/anythink/core/common/f/al;)V

    invoke-virtual {v1, p1, v2}, Lcom/anythink/core/common/h/l;->a(ILcom/anythink/core/common/h/k;)V

    return-void
.end method
