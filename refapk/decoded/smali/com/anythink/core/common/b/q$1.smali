.class final Lcom/anythink/core/common/b/q$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/anythink/core/common/res/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/core/common/b/q;->onAdCacheLoaded([Lcom/anythink/core/api/BaseAd;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/core/api/BaseAd;

.field final synthetic b:Lcom/anythink/core/common/b/q;


# direct methods
.method constructor <init>(Lcom/anythink/core/common/b/q;Lcom/anythink/core/api/BaseAd;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/anythink/core/common/b/q$1;->b:Lcom/anythink/core/common/b/q;

    iput-object p2, p0, Lcom/anythink/core/common/b/q$1;->a:Lcom/anythink/core/api/BaseAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFail(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 56
    iget-object p1, p0, Lcom/anythink/core/common/b/q$1;->b:Lcom/anythink/core/common/b/q;

    iget-object p1, p1, Lcom/anythink/core/common/b/q;->a:Lcom/anythink/core/api/ATCustomLoadListener;

    if-eqz p1, :cond_0

    .line 57
    iget-object p1, p0, Lcom/anythink/core/common/b/q$1;->b:Lcom/anythink/core/common/b/q;

    iget-object p1, p1, Lcom/anythink/core/common/b/q;->a:Lcom/anythink/core/api/ATCustomLoadListener;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "load image fail:"

    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "10011"

    invoke-interface {p1, v0, p2}, Lcom/anythink/core/api/ATCustomLoadListener;->onAdLoadError(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final onSuccess(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 4

    .line 47
    iget-object p2, p0, Lcom/anythink/core/common/b/q$1;->a:Lcom/anythink/core/api/BaseAd;

    invoke-virtual {p2}, Lcom/anythink/core/api/BaseAd;->getMainImageUrl()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 48
    iget-object p1, p0, Lcom/anythink/core/common/b/q$1;->b:Lcom/anythink/core/common/b/q;

    iget-object p1, p1, Lcom/anythink/core/common/b/q;->a:Lcom/anythink/core/api/ATCustomLoadListener;

    if-eqz p1, :cond_0

    .line 49
    iget-object p1, p0, Lcom/anythink/core/common/b/q$1;->b:Lcom/anythink/core/common/b/q;

    iget-object p1, p1, Lcom/anythink/core/common/b/q;->a:Lcom/anythink/core/api/ATCustomLoadListener;

    const/4 p2, 0x1

    new-array p2, p2, [Lcom/anythink/core/api/BaseAd;

    const/4 v0, 0x0

    new-instance v1, Lcom/anythink/core/common/f/a/e;

    iget-object v2, p0, Lcom/anythink/core/common/b/q$1;->a:Lcom/anythink/core/api/BaseAd;

    iget-object v3, p0, Lcom/anythink/core/common/b/q$1;->b:Lcom/anythink/core/common/b/q;

    iget-object v3, v3, Lcom/anythink/core/common/b/q;->b:Ljava/util/Map;

    invoke-direct {v1, v2, v3}, Lcom/anythink/core/common/f/a/e;-><init>(Lcom/anythink/core/api/BaseAd;Ljava/util/Map;)V

    aput-object v1, p2, v0

    invoke-interface {p1, p2}, Lcom/anythink/core/api/ATCustomLoadListener;->onAdCacheLoaded([Lcom/anythink/core/api/BaseAd;)V

    :cond_0
    return-void
.end method
