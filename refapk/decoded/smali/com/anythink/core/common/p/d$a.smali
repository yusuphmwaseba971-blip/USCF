.class public final Lcom/anythink/core/common/p/d$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/anythink/core/api/ATCustomLoadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anythink/core/common/p/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field a:Lcom/anythink/core/api/ATBaseAdAdapter;

.field b:Lcom/anythink/core/common/p/d;

.field final synthetic c:Lcom/anythink/core/common/p/d;


# direct methods
.method private constructor <init>(Lcom/anythink/core/common/p/d;Lcom/anythink/core/common/p/d;Lcom/anythink/core/api/ATBaseAdAdapter;)V
    .locals 0

    .line 556
    iput-object p1, p0, Lcom/anythink/core/common/p/d$a;->c:Lcom/anythink/core/common/p/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 557
    iput-object p2, p0, Lcom/anythink/core/common/p/d$a;->b:Lcom/anythink/core/common/p/d;

    .line 558
    iput-object p3, p0, Lcom/anythink/core/common/p/d$a;->a:Lcom/anythink/core/api/ATBaseAdAdapter;

    return-void
.end method

.method synthetic constructor <init>(Lcom/anythink/core/common/p/d;Lcom/anythink/core/common/p/d;Lcom/anythink/core/api/ATBaseAdAdapter;B)V
    .locals 0

    .line 552
    invoke-direct {p0, p1, p2, p3}, Lcom/anythink/core/common/p/d$a;-><init>(Lcom/anythink/core/common/p/d;Lcom/anythink/core/common/p/d;Lcom/anythink/core/api/ATBaseAdAdapter;)V

    return-void
.end method


# virtual methods
.method public final varargs onAdCacheLoaded([Lcom/anythink/core/api/BaseAd;)V
    .locals 2

    .line 577
    invoke-static {}, Lcom/anythink/core/common/i/e;->a()Lcom/anythink/core/common/i/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/i/e;->d()V

    .line 578
    invoke-static {}, Lcom/anythink/core/common/o/b/b;->a()Lcom/anythink/core/common/o/b/b;

    move-result-object v0

    new-instance v1, Lcom/anythink/core/common/p/d$a$2;

    invoke-direct {v1, p0, p1}, Lcom/anythink/core/common/p/d$a$2;-><init>(Lcom/anythink/core/common/p/d$a;[Lcom/anythink/core/api/BaseAd;)V

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/o/b/b;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onAdDataLoaded()V
    .locals 2

    .line 563
    invoke-static {}, Lcom/anythink/core/common/o/b/b;->a()Lcom/anythink/core/common/o/b/b;

    move-result-object v0

    new-instance v1, Lcom/anythink/core/common/p/d$a$1;

    invoke-direct {v1, p0}, Lcom/anythink/core/common/p/d$a$1;-><init>(Lcom/anythink/core/common/p/d$a;)V

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/o/b/b;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onAdLoadError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 595
    invoke-static {}, Lcom/anythink/core/common/i/e;->a()Lcom/anythink/core/common/i/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/i/e;->d()V

    .line 596
    invoke-static {}, Lcom/anythink/core/common/o/b/b;->a()Lcom/anythink/core/common/o/b/b;

    move-result-object v0

    new-instance v1, Lcom/anythink/core/common/p/d$a$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/anythink/core/common/p/d$a$3;-><init>(Lcom/anythink/core/common/p/d$a;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/o/b/b;->a(Ljava/lang/Runnable;)V

    return-void
.end method
