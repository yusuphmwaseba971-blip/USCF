.class final Lcom/anythink/network/adx/AdxATNativeAd$1;
.super Lcom/anythink/basead/e/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/network/adx/AdxATNativeAd;-><init>(Landroid/content/Context;Lcom/anythink/basead/d/h;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic c:Landroid/content/Context;

.field final synthetic d:Lcom/anythink/network/adx/AdxATNativeAd;


# direct methods
.method constructor <init>(Lcom/anythink/network/adx/AdxATNativeAd;Lcom/anythink/core/common/f/l;Lcom/anythink/core/common/f/h;Landroid/content/Context;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/anythink/network/adx/AdxATNativeAd$1;->d:Lcom/anythink/network/adx/AdxATNativeAd;

    iput-object p4, p0, Lcom/anythink/network/adx/AdxATNativeAd$1;->c:Landroid/content/Context;

    invoke-direct {p0, p2, p3}, Lcom/anythink/basead/e/e;-><init>(Lcom/anythink/core/common/f/l;Lcom/anythink/core/common/f/h;)V

    return-void
.end method


# virtual methods
.method public final onAdClick(Lcom/anythink/basead/e/i;)V
    .locals 3

    .line 73
    invoke-super {p0, p1}, Lcom/anythink/basead/e/e;->onAdClick(Lcom/anythink/basead/e/i;)V

    .line 74
    iget-object p1, p0, Lcom/anythink/network/adx/AdxATNativeAd$1;->d:Lcom/anythink/network/adx/AdxATNativeAd;

    invoke-virtual {p1}, Lcom/anythink/network/adx/AdxATNativeAd;->notifyAdClicked()V

    .line 75
    iget-object p1, p0, Lcom/anythink/network/adx/AdxATNativeAd$1;->d:Lcom/anythink/network/adx/AdxATNativeAd;

    iget-object p1, p1, Lcom/anythink/network/adx/AdxATNativeAd;->a:Lcom/anythink/basead/d/h;

    invoke-virtual {p1}, Lcom/anythink/basead/d/h;->a()Lcom/anythink/core/common/f/l;

    move-result-object p1

    .line 76
    invoke-virtual {p1}, Lcom/anythink/core/common/f/l;->q()I

    move-result p1

    const/16 v0, 0x43

    if-ne p1, v0, :cond_1

    .line 77
    iget-object p1, p0, Lcom/anythink/network/adx/AdxATNativeAd$1;->d:Lcom/anythink/network/adx/AdxATNativeAd;

    iget-object p1, p1, Lcom/anythink/network/adx/AdxATNativeAd;->a:Lcom/anythink/basead/d/h;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/anythink/basead/d/h;->a(ZZ)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 78
    iget-object p1, p0, Lcom/anythink/network/adx/AdxATNativeAd$1;->c:Landroid/content/Context;

    invoke-static {p1}, Lcom/anythink/core/common/d/c;->a(Landroid/content/Context;)Lcom/anythink/core/common/d/c;

    move-result-object p1

    iget-object v2, p0, Lcom/anythink/network/adx/AdxATNativeAd$1;->d:Lcom/anythink/network/adx/AdxATNativeAd;

    iget-object v2, v2, Lcom/anythink/network/adx/AdxATNativeAd;->a:Lcom/anythink/basead/d/h;

    .line 79
    invoke-virtual {v2}, Lcom/anythink/basead/d/h;->a()Lcom/anythink/core/common/f/l;

    move-result-object v2

    invoke-virtual {v2}, Lcom/anythink/core/common/f/l;->s()Ljava/lang/String;

    move-result-object v2

    .line 78
    invoke-virtual {p1, v2, v0, v1}, Lcom/anythink/core/common/d/c;->a(Ljava/lang/String;II)V

    .line 81
    :cond_0
    iget-object p1, p0, Lcom/anythink/network/adx/AdxATNativeAd$1;->d:Lcom/anythink/network/adx/AdxATNativeAd;

    iget-object p1, p1, Lcom/anythink/network/adx/AdxATNativeAd;->a:Lcom/anythink/basead/d/h;

    invoke-virtual {p1, v1, v1}, Lcom/anythink/basead/d/h;->a(ZZ)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 82
    iget-object p1, p0, Lcom/anythink/network/adx/AdxATNativeAd$1;->c:Landroid/content/Context;

    invoke-static {p1}, Lcom/anythink/core/common/d/b;->a(Landroid/content/Context;)Lcom/anythink/core/common/d/a;

    move-result-object p1

    iget-object v2, p0, Lcom/anythink/network/adx/AdxATNativeAd$1;->d:Lcom/anythink/network/adx/AdxATNativeAd;

    iget-object v2, v2, Lcom/anythink/network/adx/AdxATNativeAd;->a:Lcom/anythink/basead/d/h;

    .line 84
    invoke-virtual {v2}, Lcom/anythink/basead/d/h;->a()Lcom/anythink/core/common/f/l;

    move-result-object v2

    invoke-virtual {v2}, Lcom/anythink/core/common/f/l;->s()Ljava/lang/String;

    move-result-object v2

    .line 83
    invoke-virtual {p1, v2, v0, v1}, Lcom/anythink/core/common/d/a;->a(Ljava/lang/String;II)V

    :cond_1
    return-void
.end method

.method public final onAdClosed()V
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/anythink/network/adx/AdxATNativeAd$1;->d:Lcom/anythink/network/adx/AdxATNativeAd;

    invoke-virtual {v0}, Lcom/anythink/network/adx/AdxATNativeAd;->notifyAdDislikeClick()V

    return-void
.end method

.method public final onAdShow(Lcom/anythink/basead/e/i;)V
    .locals 3

    .line 50
    invoke-super {p0, p1}, Lcom/anythink/basead/e/e;->onAdShow(Lcom/anythink/basead/e/i;)V

    .line 51
    iget-object p1, p0, Lcom/anythink/network/adx/AdxATNativeAd$1;->d:Lcom/anythink/network/adx/AdxATNativeAd;

    invoke-virtual {p1}, Lcom/anythink/network/adx/AdxATNativeAd;->notifyAdImpression()V

    .line 52
    iget-object p1, p0, Lcom/anythink/network/adx/AdxATNativeAd$1;->d:Lcom/anythink/network/adx/AdxATNativeAd;

    iget-object p1, p1, Lcom/anythink/network/adx/AdxATNativeAd;->a:Lcom/anythink/basead/d/h;

    invoke-virtual {p1}, Lcom/anythink/basead/d/h;->a()Lcom/anythink/core/common/f/l;

    move-result-object p1

    .line 53
    invoke-virtual {p1}, Lcom/anythink/core/common/f/l;->q()I

    move-result p1

    const/16 v0, 0x43

    if-ne p1, v0, :cond_1

    .line 54
    iget-object p1, p0, Lcom/anythink/network/adx/AdxATNativeAd$1;->d:Lcom/anythink/network/adx/AdxATNativeAd;

    iget-object p1, p1, Lcom/anythink/network/adx/AdxATNativeAd;->a:Lcom/anythink/basead/d/h;

    const/4 v0, 0x1

    invoke-virtual {p1, v0, v0}, Lcom/anythink/basead/d/h;->a(ZZ)Z

    move-result p1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 55
    iget-object p1, p0, Lcom/anythink/network/adx/AdxATNativeAd$1;->c:Landroid/content/Context;

    invoke-static {p1}, Lcom/anythink/core/common/d/c;->a(Landroid/content/Context;)Lcom/anythink/core/common/d/c;

    move-result-object p1

    iget-object v2, p0, Lcom/anythink/network/adx/AdxATNativeAd$1;->d:Lcom/anythink/network/adx/AdxATNativeAd;

    iget-object v2, v2, Lcom/anythink/network/adx/AdxATNativeAd;->a:Lcom/anythink/basead/d/h;

    .line 56
    invoke-virtual {v2}, Lcom/anythink/basead/d/h;->a()Lcom/anythink/core/common/f/l;

    move-result-object v2

    invoke-virtual {v2}, Lcom/anythink/core/common/f/l;->s()Ljava/lang/String;

    move-result-object v2

    .line 55
    invoke-virtual {p1, v2, v1, v0}, Lcom/anythink/core/common/d/c;->a(Ljava/lang/String;II)V

    .line 58
    :cond_0
    iget-object p1, p0, Lcom/anythink/network/adx/AdxATNativeAd$1;->d:Lcom/anythink/network/adx/AdxATNativeAd;

    iget-object p1, p1, Lcom/anythink/network/adx/AdxATNativeAd;->a:Lcom/anythink/basead/d/h;

    invoke-virtual {p1, v1, v0}, Lcom/anythink/basead/d/h;->a(ZZ)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 59
    iget-object p1, p0, Lcom/anythink/network/adx/AdxATNativeAd$1;->c:Landroid/content/Context;

    invoke-static {p1}, Lcom/anythink/core/common/d/b;->a(Landroid/content/Context;)Lcom/anythink/core/common/d/a;

    move-result-object p1

    iget-object v2, p0, Lcom/anythink/network/adx/AdxATNativeAd$1;->d:Lcom/anythink/network/adx/AdxATNativeAd;

    iget-object v2, v2, Lcom/anythink/network/adx/AdxATNativeAd;->a:Lcom/anythink/basead/d/h;

    .line 61
    invoke-virtual {v2}, Lcom/anythink/basead/d/h;->a()Lcom/anythink/core/common/f/l;

    move-result-object v2

    invoke-virtual {v2}, Lcom/anythink/core/common/f/l;->s()Ljava/lang/String;

    move-result-object v2

    .line 60
    invoke-virtual {p1, v2, v1, v0}, Lcom/anythink/core/common/d/a;->a(Ljava/lang/String;II)V

    :cond_1
    return-void
.end method

.method public final onDeeplinkCallback(Z)V
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/anythink/network/adx/AdxATNativeAd$1;->d:Lcom/anythink/network/adx/AdxATNativeAd;

    invoke-virtual {v0, p1}, Lcom/anythink/network/adx/AdxATNativeAd;->notifyDeeplinkCallback(Z)V

    return-void
.end method

.method public final onShowFailed(Lcom/anythink/basead/c/e;)V
    .locals 0

    return-void
.end method
