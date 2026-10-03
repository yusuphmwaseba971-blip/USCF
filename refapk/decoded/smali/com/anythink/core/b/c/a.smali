.class public final Lcom/anythink/core/b/c/a;
.super Ljava/lang/Object;


# instance fields
.field a:Lcom/anythink/core/api/ATBaseAdAdapter;

.field b:Lcom/anythink/core/api/BaseAd;


# direct methods
.method public constructor <init>(Lcom/anythink/core/api/ATBaseAdAdapter;Lcom/anythink/core/api/BaseAd;)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/anythink/core/b/c/a;->a:Lcom/anythink/core/api/ATBaseAdAdapter;

    .line 13
    iput-object p2, p0, Lcom/anythink/core/b/c/a;->b:Lcom/anythink/core/api/BaseAd;

    return-void
.end method


# virtual methods
.method public final a()Lcom/anythink/core/api/ATBaseAdAdapter;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/anythink/core/b/c/a;->a:Lcom/anythink/core/api/ATBaseAdAdapter;

    return-object v0
.end method

.method public final b()Lcom/anythink/core/api/BaseAd;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/anythink/core/b/c/a;->b:Lcom/anythink/core/api/BaseAd;

    return-object v0
.end method
