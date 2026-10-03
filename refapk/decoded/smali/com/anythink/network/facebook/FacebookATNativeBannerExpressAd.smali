.class public Lcom/anythink/network/facebook/FacebookATNativeBannerExpressAd;
.super Lcom/anythink/network/facebook/FacebookATBaseNativeAd;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/anythink/network/facebook/FacebookATBaseNativeAd<",
        "Lcom/facebook/ads/NativeBannerAd;",
        ">;"
    }
.end annotation


# instance fields
.field i:Lcom/facebook/ads/NativeBannerAdView$Type;

.field j:Landroid/view/View;

.field private final k:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/facebook/ads/NativeBannerAd;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    .line 27
    invoke-direct {p0, p1, p2, v0}, Lcom/anythink/network/facebook/FacebookATBaseNativeAd;-><init>(Landroid/content/Context;Lcom/facebook/ads/NativeAdBase;Z)V

    .line 18
    const-class p1, Lcom/anythink/network/facebook/FacebookATNativeBannerExpressAd;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/anythink/network/facebook/FacebookATNativeBannerExpressAd;->k:Ljava/lang/String;

    .line 20
    sget-object p1, Lcom/facebook/ads/NativeBannerAdView$Type;->HEIGHT_50:Lcom/facebook/ads/NativeBannerAdView$Type;

    iput-object p1, p0, Lcom/anythink/network/facebook/FacebookATNativeBannerExpressAd;->i:Lcom/facebook/ads/NativeBannerAdView$Type;

    .line 29
    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    move-result p1

    const/4 p2, -0x1

    sparse-switch p1, :sswitch_data_0

    :goto_0
    const/4 v0, -0x1

    goto :goto_1

    :sswitch_0
    const-string p1, "120"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    goto :goto_1

    :sswitch_1
    const-string p1, "100"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :sswitch_2
    const-string p1, "50"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :cond_2
    :goto_1
    packed-switch v0, :pswitch_data_0

    goto :goto_2

    .line 37
    :pswitch_0
    sget-object p1, Lcom/facebook/ads/NativeBannerAdView$Type;->HEIGHT_120:Lcom/facebook/ads/NativeBannerAdView$Type;

    iput-object p1, p0, Lcom/anythink/network/facebook/FacebookATNativeBannerExpressAd;->i:Lcom/facebook/ads/NativeBannerAdView$Type;

    :goto_2
    return-void

    .line 34
    :pswitch_1
    sget-object p1, Lcom/facebook/ads/NativeBannerAdView$Type;->HEIGHT_100:Lcom/facebook/ads/NativeBannerAdView$Type;

    iput-object p1, p0, Lcom/anythink/network/facebook/FacebookATNativeBannerExpressAd;->i:Lcom/facebook/ads/NativeBannerAdView$Type;

    return-void

    .line 31
    :pswitch_2
    sget-object p1, Lcom/facebook/ads/NativeBannerAdView$Type;->HEIGHT_50:Lcom/facebook/ads/NativeBannerAdView$Type;

    iput-object p1, p0, Lcom/anythink/network/facebook/FacebookATNativeBannerExpressAd;->i:Lcom/facebook/ads/NativeBannerAdView$Type;

    return-void

    :sswitch_data_0
    .sparse-switch
        0x69b -> :sswitch_2
        0xbdf1 -> :sswitch_1
        0xbe2f -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public varargs getAdMediaView([Ljava/lang/Object;)Landroid/view/View;
    .locals 2

    .line 45
    :try_start_0
    iget-boolean p1, p0, Lcom/anythink/network/facebook/FacebookATNativeBannerExpressAd;->c:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/anythink/network/facebook/FacebookATNativeBannerExpressAd;->a:Lcom/facebook/ads/NativeAdBase;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/anythink/network/facebook/FacebookATNativeBannerExpressAd;->a:Lcom/facebook/ads/NativeAdBase;

    instance-of p1, p1, Lcom/facebook/ads/NativeBannerAd;

    if-eqz p1, :cond_1

    .line 46
    iget-object p1, p0, Lcom/anythink/network/facebook/FacebookATNativeBannerExpressAd;->j:Landroid/view/View;

    if-nez p1, :cond_0

    .line 47
    iget-object p1, p0, Lcom/anythink/network/facebook/FacebookATNativeBannerExpressAd;->b:Landroid/content/Context;

    iget-object v0, p0, Lcom/anythink/network/facebook/FacebookATNativeBannerExpressAd;->a:Lcom/facebook/ads/NativeAdBase;

    check-cast v0, Lcom/facebook/ads/NativeBannerAd;

    iget-object v1, p0, Lcom/anythink/network/facebook/FacebookATNativeBannerExpressAd;->i:Lcom/facebook/ads/NativeBannerAdView$Type;

    invoke-static {p1, v0, v1}, Lcom/facebook/ads/NativeBannerAdView;->render(Landroid/content/Context;Lcom/facebook/ads/NativeBannerAd;Lcom/facebook/ads/NativeBannerAdView$Type;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/anythink/network/facebook/FacebookATNativeBannerExpressAd;->j:Landroid/view/View;

    .line 49
    :cond_0
    iget-object p1, p0, Lcom/anythink/network/facebook/FacebookATNativeBannerExpressAd;->j:Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 52
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method
