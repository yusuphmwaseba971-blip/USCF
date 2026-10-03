.class public final Lcom/anythink/core/common/f/a/e;
.super Lcom/anythink/core/api/BaseAd;

# interfaces
.implements Lcom/anythink/core/common/f/a/a;
.implements Ljava/io/Serializable;


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:Lcom/anythink/core/api/BaseAd;

.field private g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/anythink/core/api/BaseAd;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/anythink/core/api/BaseAd;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 36
    invoke-direct {p0}, Lcom/anythink/core/api/BaseAd;-><init>()V

    const/4 v0, 0x1

    .line 26
    iput v0, p0, Lcom/anythink/core/common/f/a/e;->a:I

    const/4 v1, 0x5

    .line 27
    iput v1, p0, Lcom/anythink/core/common/f/a/e;->b:I

    .line 28
    iput v0, p0, Lcom/anythink/core/common/f/a/e;->c:I

    .line 31
    iput v1, p0, Lcom/anythink/core/common/f/a/e;->e:I

    .line 37
    iput-object p1, p0, Lcom/anythink/core/common/f/a/e;->f:Lcom/anythink/core/api/BaseAd;

    .line 38
    iput-object p2, p0, Lcom/anythink/core/common/f/a/e;->g:Ljava/util/Map;

    const-string p1, "orientation"

    .line 1043
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1045
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/anythink/core/common/f/a/e;->a:I

    :cond_0
    const-string p1, "countdown"

    .line 1048
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1050
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/anythink/core/common/f/a/e;->b:I

    :cond_1
    const-string p1, "allows_skip"

    .line 1053
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 1055
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/anythink/core/common/f/a/e;->c:I

    :cond_2
    const-string p1, "button_type"

    .line 1058
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 1060
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/anythink/core/common/f/a/e;->d:I

    :cond_3
    const-string p1, "s_c_t"

    .line 1063
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 1065
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/anythink/core/common/f/a/e;->e:I

    :cond_4
    return-void
.end method

.method private a(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "orientation"

    .line 43
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 45
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/anythink/core/common/f/a/e;->a:I

    :cond_0
    const-string v0, "countdown"

    .line 48
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 50
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/anythink/core/common/f/a/e;->b:I

    :cond_1
    const-string v0, "allows_skip"

    .line 53
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 55
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/anythink/core/common/f/a/e;->c:I

    :cond_2
    const-string v0, "button_type"

    .line 58
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 60
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/anythink/core/common/f/a/e;->d:I

    :cond_3
    const-string v0, "s_c_t"

    .line 63
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 65
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/anythink/core/common/f/a/e;->e:I

    :cond_4
    return-void
.end method

.method private j()Z
    .locals 1

    .line 410
    invoke-virtual {p0}, Lcom/anythink/core/common/f/a/e;->i()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 71
    iget v0, p0, Lcom/anythink/core/common/f/a/e;->a:I

    return v0
.end method

.method public final b()J
    .locals 2

    .line 76
    iget v0, p0, Lcom/anythink/core/common/f/a/e;->b:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public final c()I
    .locals 3

    .line 82
    iget v0, p0, Lcom/anythink/core/common/f/a/e;->c:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    return v2

    :cond_1
    return v1
.end method

.method public final clear(Landroid/view/View;)V
    .locals 1

    .line 415
    iget-object v0, p0, Lcom/anythink/core/common/f/a/e;->f:Lcom/anythink/core/api/BaseAd;

    if-eqz v0, :cond_0

    .line 416
    invoke-virtual {v0, p1}, Lcom/anythink/core/api/BaseAd;->clear(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public final d()I
    .locals 3

    .line 92
    iget v0, p0, Lcom/anythink/core/common/f/a/e;->d:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    return v2

    :cond_0
    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public final destroy()V
    .locals 1

    .line 154
    iget-object v0, p0, Lcom/anythink/core/common/f/a/e;->f:Lcom/anythink/core/api/BaseAd;

    invoke-virtual {v0}, Lcom/anythink/core/api/BaseAd;->destroy()V

    return-void
.end method

.method public final e()I
    .locals 1

    .line 105
    iget v0, p0, Lcom/anythink/core/common/f/a/e;->e:I

    return v0
.end method

.method public final f()I
    .locals 2

    .line 113
    iget-object v0, p0, Lcom/anythink/core/common/f/a/e;->f:Lcom/anythink/core/api/BaseAd;

    invoke-virtual {v0}, Lcom/anythink/core/api/BaseAd;->getDetail()Lcom/anythink/core/common/f/h;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 114
    iget-object v0, p0, Lcom/anythink/core/common/f/a/e;->f:Lcom/anythink/core/api/BaseAd;

    invoke-virtual {v0}, Lcom/anythink/core/api/BaseAd;->getDetail()Lcom/anythink/core/common/f/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/f/h;->M()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 117
    :cond_0
    iget-object v0, p0, Lcom/anythink/core/common/f/a/e;->g:Ljava/util/Map;

    const-string v1, "video_muted"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 119
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public final g()I
    .locals 2

    .line 371
    iget-object v0, p0, Lcom/anythink/core/common/f/a/e;->g:Ljava/util/Map;

    if-eqz v0, :cond_0

    const-string v1, "bn_template_id"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 372
    iget-object v0, p0, Lcom/anythink/core/common/f/a/e;->g:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 373
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 374
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method public final getAdAppInfo()Lcom/anythink/core/api/ATAdAppInfo;
    .locals 1

    .line 224
    iget-object v0, p0, Lcom/anythink/core/common/f/a/e;->f:Lcom/anythink/core/api/BaseAd;

    invoke-virtual {v0}, Lcom/anythink/core/api/BaseAd;->getAdAppInfo()Lcom/anythink/core/api/ATAdAppInfo;

    move-result-object v0

    return-object v0
.end method

.method public final getAdChoiceIconUrl()Ljava/lang/String;
    .locals 1

    .line 204
    iget-object v0, p0, Lcom/anythink/core/common/f/a/e;->f:Lcom/anythink/core/api/BaseAd;

    invoke-virtual {v0}, Lcom/anythink/core/api/BaseAd;->getAdChoiceIconUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getAdFrom()Ljava/lang/String;
    .locals 1

    .line 209
    iget-object v0, p0, Lcom/anythink/core/common/f/a/e;->f:Lcom/anythink/core/api/BaseAd;

    invoke-virtual {v0}, Lcom/anythink/core/api/BaseAd;->getAdFrom()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getAdIconView()Landroid/view/View;
    .locals 1

    .line 164
    iget-object v0, p0, Lcom/anythink/core/common/f/a/e;->f:Lcom/anythink/core/api/BaseAd;

    invoke-virtual {v0}, Lcom/anythink/core/api/BaseAd;->getAdIconView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final getAdLogo()Landroid/graphics/Bitmap;
    .locals 1

    .line 234
    iget-object v0, p0, Lcom/anythink/core/common/f/a/e;->f:Lcom/anythink/core/api/BaseAd;

    invoke-virtual {v0}, Lcom/anythink/core/api/BaseAd;->getAdLogo()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public final getAdLogoView()Landroid/view/View;
    .locals 1

    .line 214
    iget-object v0, p0, Lcom/anythink/core/common/f/a/e;->f:Lcom/anythink/core/api/BaseAd;

    invoke-virtual {v0}, Lcom/anythink/core/api/BaseAd;->getAdLogoView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final varargs getAdMediaView([Ljava/lang/Object;)Landroid/view/View;
    .locals 1

    .line 229
    iget-object v0, p0, Lcom/anythink/core/common/f/a/e;->f:Lcom/anythink/core/api/BaseAd;

    invoke-virtual {v0, p1}, Lcom/anythink/core/api/BaseAd;->getAdMediaView([Ljava/lang/Object;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public final getAdType()Ljava/lang/String;
    .locals 1

    .line 309
    iget-object v0, p0, Lcom/anythink/core/common/f/a/e;->f:Lcom/anythink/core/api/BaseAd;

    invoke-virtual {v0}, Lcom/anythink/core/api/BaseAd;->getAdType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getAdvertiserInfoOperate()Lcom/anythink/core/api/IATAdvertiserInfoOperate;
    .locals 1

    .line 354
    iget-object v0, p0, Lcom/anythink/core/common/f/a/e;->f:Lcom/anythink/core/api/BaseAd;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/anythink/core/api/BaseAd;->getAdvertiserInfoOperate()Lcom/anythink/core/api/IATAdvertiserInfoOperate;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getAdvertiserName()Ljava/lang/String;
    .locals 1

    .line 284
    iget-object v0, p0, Lcom/anythink/core/common/f/a/e;->f:Lcom/anythink/core/api/BaseAd;

    invoke-virtual {v0}, Lcom/anythink/core/api/BaseAd;->getAdvertiserName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getAppCommentNum()I
    .locals 1

    .line 279
    iget-object v0, p0, Lcom/anythink/core/common/f/a/e;->f:Lcom/anythink/core/api/BaseAd;

    invoke-virtual {v0}, Lcom/anythink/core/api/BaseAd;->getAppCommentNum()I

    move-result v0

    return v0
.end method

.method public final getAppDownloadButton()Landroid/view/View;
    .locals 1

    .line 149
    iget-object v0, p0, Lcom/anythink/core/common/f/a/e;->f:Lcom/anythink/core/api/BaseAd;

    invoke-virtual {v0}, Lcom/anythink/core/api/BaseAd;->getAppDownloadButton()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final getAppPrice()D
    .locals 2

    .line 274
    iget-object v0, p0, Lcom/anythink/core/common/f/a/e;->f:Lcom/anythink/core/api/BaseAd;

    invoke-virtual {v0}, Lcom/anythink/core/api/BaseAd;->getAppPrice()D

    move-result-wide v0

    return-wide v0
.end method

.method public final getCallToActionText()Ljava/lang/String;
    .locals 1

    .line 189
    iget-object v0, p0, Lcom/anythink/core/common/f/a/e;->f:Lcom/anythink/core/api/BaseAd;

    invoke-virtual {v0}, Lcom/anythink/core/api/BaseAd;->getCallToActionText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getCustomAdContainer()Landroid/view/ViewGroup;
    .locals 1

    .line 239
    iget-object v0, p0, Lcom/anythink/core/common/f/a/e;->f:Lcom/anythink/core/api/BaseAd;

    invoke-virtual {v0}, Lcom/anythink/core/api/BaseAd;->getCustomAdContainer()Landroid/view/ViewGroup;

    move-result-object v0

    return-object v0
.end method

.method public final getDescriptionText()Ljava/lang/String;
    .locals 1

    .line 174
    iget-object v0, p0, Lcom/anythink/core/common/f/a/e;->f:Lcom/anythink/core/api/BaseAd;

    invoke-virtual {v0}, Lcom/anythink/core/api/BaseAd;->getDescriptionText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getDetail()Lcom/anythink/core/common/f/h;
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/anythink/core/common/f/a/e;->f:Lcom/anythink/core/api/BaseAd;

    invoke-virtual {v0}, Lcom/anythink/core/api/BaseAd;->getDetail()Lcom/anythink/core/common/f/h;

    move-result-object v0

    return-object v0
.end method

.method public final getDomain()Ljava/lang/String;
    .locals 1

    .line 329
    iget-object v0, p0, Lcom/anythink/core/common/f/a/e;->f:Lcom/anythink/core/api/BaseAd;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/anythink/core/api/BaseAd;->getDomain()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public final getIconImageUrl()Ljava/lang/String;
    .locals 1

    .line 184
    iget-object v0, p0, Lcom/anythink/core/common/f/a/e;->f:Lcom/anythink/core/api/BaseAd;

    invoke-virtual {v0}, Lcom/anythink/core/api/BaseAd;->getIconImageUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getImageUrlList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 219
    iget-object v0, p0, Lcom/anythink/core/common/f/a/e;->f:Lcom/anythink/core/api/BaseAd;

    invoke-virtual {v0}, Lcom/anythink/core/api/BaseAd;->getImageUrlList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getMainImageHeight()I
    .locals 1

    .line 244
    iget-object v0, p0, Lcom/anythink/core/common/f/a/e;->f:Lcom/anythink/core/api/BaseAd;

    invoke-virtual {v0}, Lcom/anythink/core/api/BaseAd;->getMainImageHeight()I

    move-result v0

    return v0
.end method

.method public final getMainImageUrl()Ljava/lang/String;
    .locals 1

    .line 179
    iget-object v0, p0, Lcom/anythink/core/common/f/a/e;->f:Lcom/anythink/core/api/BaseAd;

    invoke-virtual {v0}, Lcom/anythink/core/api/BaseAd;->getMainImageUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getMainImageWidth()I
    .locals 1

    .line 249
    iget-object v0, p0, Lcom/anythink/core/common/f/a/e;->f:Lcom/anythink/core/api/BaseAd;

    invoke-virtual {v0}, Lcom/anythink/core/api/BaseAd;->getMainImageWidth()I

    move-result v0

    return v0
.end method

.method public final getNativeAdInteractionType()I
    .locals 1

    .line 294
    iget-object v0, p0, Lcom/anythink/core/common/f/a/e;->f:Lcom/anythink/core/api/BaseAd;

    invoke-virtual {v0}, Lcom/anythink/core/api/BaseAd;->getNativeAdInteractionType()I

    move-result v0

    return v0
.end method

.method public final getNativeCustomVideo()Lcom/anythink/core/api/ATCustomVideo;
    .locals 1

    .line 314
    iget-object v0, p0, Lcom/anythink/core/common/f/a/e;->f:Lcom/anythink/core/api/BaseAd;

    invoke-virtual {v0}, Lcom/anythink/core/api/BaseAd;->getNativeCustomVideo()Lcom/anythink/core/api/ATCustomVideo;

    move-result-object v0

    return-object v0
.end method

.method public final getNativeExpressHeight()I
    .locals 1

    .line 259
    iget-object v0, p0, Lcom/anythink/core/common/f/a/e;->f:Lcom/anythink/core/api/BaseAd;

    invoke-virtual {v0}, Lcom/anythink/core/api/BaseAd;->getNativeExpressHeight()I

    move-result v0

    return v0
.end method

.method public final getNativeExpressWidth()I
    .locals 1

    .line 254
    iget-object v0, p0, Lcom/anythink/core/common/f/a/e;->f:Lcom/anythink/core/api/BaseAd;

    invoke-virtual {v0}, Lcom/anythink/core/api/BaseAd;->getNativeExpressWidth()I

    move-result v0

    return v0
.end method

.method public final getNativeType()I
    .locals 1

    .line 289
    iget-object v0, p0, Lcom/anythink/core/common/f/a/e;->f:Lcom/anythink/core/api/BaseAd;

    invoke-virtual {v0}, Lcom/anythink/core/api/BaseAd;->getNativeType()I

    move-result v0

    return v0
.end method

.method public final getNetworkInfoMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 144
    iget-object v0, p0, Lcom/anythink/core/common/f/a/e;->f:Lcom/anythink/core/api/BaseAd;

    invoke-virtual {v0}, Lcom/anythink/core/api/BaseAd;->getNetworkInfoMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final getShakeView(IILcom/anythink/core/api/ATShakeViewListener;)Landroid/view/View;
    .locals 1

    .line 339
    iget-object v0, p0, Lcom/anythink/core/common/f/a/e;->f:Lcom/anythink/core/api/BaseAd;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3}, Lcom/anythink/core/api/BaseAd;->getShakeView(IILcom/anythink/core/api/ATShakeViewListener;)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final getSlideView(IIILcom/anythink/core/api/ATShakeViewListener;)Landroid/view/View;
    .locals 1

    .line 344
    iget-object v0, p0, Lcom/anythink/core/common/f/a/e;->f:Lcom/anythink/core/api/BaseAd;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/anythink/core/api/BaseAd;->getSlideView(IIILcom/anythink/core/api/ATShakeViewListener;)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final getStarRating()Ljava/lang/Double;
    .locals 1

    .line 194
    iget-object v0, p0, Lcom/anythink/core/common/f/a/e;->f:Lcom/anythink/core/api/BaseAd;

    invoke-virtual {v0}, Lcom/anythink/core/api/BaseAd;->getStarRating()Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 1

    .line 169
    iget-object v0, p0, Lcom/anythink/core/common/f/a/e;->f:Lcom/anythink/core/api/BaseAd;

    invoke-virtual {v0}, Lcom/anythink/core/api/BaseAd;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getVideoDuration()D
    .locals 2

    .line 299
    iget-object v0, p0, Lcom/anythink/core/common/f/a/e;->f:Lcom/anythink/core/api/BaseAd;

    invoke-virtual {v0}, Lcom/anythink/core/api/BaseAd;->getVideoDuration()D

    move-result-wide v0

    return-wide v0
.end method

.method public final getVideoHeight()I
    .locals 1

    .line 269
    iget-object v0, p0, Lcom/anythink/core/common/f/a/e;->f:Lcom/anythink/core/api/BaseAd;

    invoke-virtual {v0}, Lcom/anythink/core/api/BaseAd;->getVideoHeight()I

    move-result v0

    return v0
.end method

.method public final getVideoProgress()D
    .locals 2

    .line 304
    iget-object v0, p0, Lcom/anythink/core/common/f/a/e;->f:Lcom/anythink/core/api/BaseAd;

    invoke-virtual {v0}, Lcom/anythink/core/api/BaseAd;->getVideoProgress()D

    move-result-wide v0

    return-wide v0
.end method

.method public final getVideoUrl()Ljava/lang/String;
    .locals 1

    .line 199
    iget-object v0, p0, Lcom/anythink/core/common/f/a/e;->f:Lcom/anythink/core/api/BaseAd;

    invoke-virtual {v0}, Lcom/anythink/core/api/BaseAd;->getVideoUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getVideoWidth()I
    .locals 1

    .line 264
    iget-object v0, p0, Lcom/anythink/core/common/f/a/e;->f:Lcom/anythink/core/api/BaseAd;

    invoke-virtual {v0}, Lcom/anythink/core/api/BaseAd;->getVideoWidth()I

    move-result v0

    return v0
.end method

.method public final getWarning()Ljava/lang/String;
    .locals 1

    .line 334
    iget-object v0, p0, Lcom/anythink/core/common/f/a/e;->f:Lcom/anythink/core/api/BaseAd;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/anythink/core/api/BaseAd;->getWarning()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public final h()[I
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [I

    .line 383
    fill-array-data v0, :array_0

    .line 384
    iget-object v1, p0, Lcom/anythink/core/common/f/a/e;->g:Ljava/util/Map;

    if-eqz v1, :cond_0

    const-string v2, "mix_click_type"

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 385
    iget-object v1, p0, Lcom/anythink/core/common/f/a/e;->g:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 386
    instance-of v2, v1, [I

    if-eqz v2, :cond_0

    .line 387
    move-object v0, v1

    check-cast v0, [I

    :cond_0
    return-object v0

    :array_0
    .array-data 4
        0x1
        0x2
        0x3
        0x4
        0x5
    .end array-data
.end method

.method public final i()I
    .locals 3

    .line 396
    iget-object v0, p0, Lcom/anythink/core/common/f/a/e;->g:Ljava/util/Map;

    if-eqz v0, :cond_0

    const-string v1, "close_button"

    .line 397
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 400
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 402
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getCloseButtonVisibility() failed: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final registerListener(Landroid/view/View;Ljava/util/List;Landroid/widget/FrameLayout$LayoutParams;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Landroid/widget/FrameLayout$LayoutParams;",
            ")V"
        }
    .end annotation

    .line 319
    iget-object v0, p0, Lcom/anythink/core/common/f/a/e;->f:Lcom/anythink/core/api/BaseAd;

    invoke-virtual {v0, p1, p2, p3}, Lcom/anythink/core/api/BaseAd;->registerListener(Landroid/view/View;Ljava/util/List;Landroid/widget/FrameLayout$LayoutParams;)V

    return-void
.end method

.method public final registerListener(Landroid/view/View;Ljava/util/List;Landroid/widget/FrameLayout$LayoutParams;Lcom/anythink/core/basead/b/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Landroid/widget/FrameLayout$LayoutParams;",
            "Lcom/anythink/core/basead/b/b;",
            ")V"
        }
    .end annotation

    .line 324
    iget-object v0, p0, Lcom/anythink/core/common/f/a/e;->f:Lcom/anythink/core/api/BaseAd;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/anythink/core/api/BaseAd;->registerListener(Landroid/view/View;Ljava/util/List;Landroid/widget/FrameLayout$LayoutParams;Lcom/anythink/core/basead/b/b;)V

    return-void
.end method

.method public final setNativeEventListener(Lcom/anythink/core/common/b/m;)V
    .locals 1

    .line 159
    iget-object v0, p0, Lcom/anythink/core/common/f/a/e;->f:Lcom/anythink/core/api/BaseAd;

    invoke-virtual {v0, p1}, Lcom/anythink/core/api/BaseAd;->setNativeEventListener(Lcom/anythink/core/common/b/m;)V

    return-void
.end method

.method public final setNetworkInfoMap(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 139
    iget-object v0, p0, Lcom/anythink/core/common/f/a/e;->f:Lcom/anythink/core/api/BaseAd;

    invoke-virtual {v0, p1}, Lcom/anythink/core/api/BaseAd;->setNetworkInfoMap(Ljava/util/Map;)V

    return-void
.end method

.method public final setTrackingInfo(Lcom/anythink/core/common/f/h;)V
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/anythink/core/common/f/a/e;->f:Lcom/anythink/core/api/BaseAd;

    invoke-virtual {v0, p1}, Lcom/anythink/core/api/BaseAd;->setTrackingInfo(Lcom/anythink/core/common/f/h;)V

    return-void
.end method

.method public final setVideoMute(Z)V
    .locals 1

    .line 349
    iget-object v0, p0, Lcom/anythink/core/common/f/a/e;->f:Lcom/anythink/core/api/BaseAd;

    invoke-virtual {v0, p1}, Lcom/anythink/core/api/BaseAd;->setVideoMute(Z)V

    return-void
.end method

.method public final supportSetPermissionClickViewList()Z
    .locals 1

    .line 359
    iget-object v0, p0, Lcom/anythink/core/common/f/a/e;->f:Lcom/anythink/core/api/BaseAd;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/anythink/core/api/BaseAd;->supportSetPermissionClickViewList()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final supportSetPrivacyClickViewList()Z
    .locals 1

    .line 364
    iget-object v0, p0, Lcom/anythink/core/common/f/a/e;->f:Lcom/anythink/core/api/BaseAd;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/anythink/core/api/BaseAd;->supportSetPrivacyClickViewList()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
