.class public final Lcom/anythink/basead/d/b/b;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/lang/String; = "sdk_updatetime"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a(Lcom/anythink/core/common/f/m;Lorg/json/JSONObject;)Lcom/anythink/core/common/f/ah;
    .locals 5

    const/4 v0, 0x0

    .line 25
    :try_start_0
    sget-object v1, Lcom/anythink/core/common/b/h$d;->e:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    const-string v2, "offers"

    .line 31
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    const/4 v2, 0x0

    .line 32
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 35
    new-instance v2, Lcom/anythink/core/common/f/ah;

    invoke-direct {v2}, Lcom/anythink/core/common/f/ah;-><init>()V

    .line 36
    iget p0, p0, Lcom/anythink/core/common/f/m;->f:I

    invoke-virtual {v2, p0}, Lcom/anythink/core/common/f/ah;->a(I)V

    const-string p0, "oid"

    .line 37
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Lcom/anythink/core/common/f/ah;->k(Ljava/lang/String;)V

    const-string p0, "c_id"

    .line 38
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Lcom/anythink/core/common/f/ah;->l(Ljava/lang/String;)V

    const-string p0, "pkg"

    .line 39
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Lcom/anythink/core/common/f/ah;->x(Ljava/lang/String;)V

    const-string p0, "title"

    .line 40
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Lcom/anythink/core/common/f/ah;->m(Ljava/lang/String;)V

    const-string p0, "desc"

    .line 41
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Lcom/anythink/core/common/f/ah;->n(Ljava/lang/String;)V

    const-string p0, "rating"

    .line 42
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {v2, p0}, Lcom/anythink/core/common/f/ah;->h(I)V

    const-string p0, "icon_u"

    .line 43
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Lcom/anythink/core/common/f/ah;->o(Ljava/lang/String;)V

    const-string p0, "full_u"

    .line 44
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Lcom/anythink/core/common/f/ah;->q(Ljava/lang/String;)V

    const-string p0, "unit_type"

    .line 45
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {v2, p0}, Lcom/anythink/core/common/f/ah;->f(I)V

    const-string p0, "tp_logo_u"

    .line 46
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Lcom/anythink/core/common/f/ah;->r(Ljava/lang/String;)V

    const-string p0, "cta"

    .line 47
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Lcom/anythink/core/common/f/ah;->s(Ljava/lang/String;)V

    const-string p0, "video_u"

    .line 48
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Lcom/anythink/core/common/f/ah;->t(Ljava/lang/String;)V

    const-string p0, "video_l"

    .line 49
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p0

    int-to-long v3, p0

    invoke-virtual {v2, v3, v4}, Lcom/anythink/core/common/f/ah;->d(J)V

    const-string p0, "video_r"

    .line 50
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Lcom/anythink/core/common/f/ah;->K(Ljava/lang/String;)V

    const-string p0, "ec_u"

    .line 51
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Lcom/anythink/core/common/f/ah;->L(Ljava/lang/String;)V

    const-string p0, "store_u"

    .line 52
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Lcom/anythink/core/common/f/ah;->u(Ljava/lang/String;)V

    const-string p0, "link_type"

    .line 53
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {v2, p0}, Lcom/anythink/core/common/f/ah;->g(I)V

    const-string p0, "click_u"

    .line 54
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Lcom/anythink/core/common/f/ah;->w(Ljava/lang/String;)V

    const-string p0, "deeplink"

    .line 55
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Lcom/anythink/core/common/f/ah;->v(Ljava/lang/String;)V

    const-string p0, "r_target"

    .line 56
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {v2, p0}, Lcom/anythink/core/common/f/ah;->k(I)V

    const-string p0, "expire"

    .line 57
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/anythink/core/common/f/ah;->a(J)V

    const-string p0, "ad_logo_title"

    .line 58
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Lcom/anythink/core/common/f/ah;->y(Ljava/lang/String;)V

    const-string p0, "crt_type"

    const/4 v3, 0x1

    .line 60
    invoke-virtual {v1, p0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p0

    invoke-virtual {v2, p0}, Lcom/anythink/core/common/f/ah;->n(I)V

    const-string p0, "img_list"

    .line 61
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Lcom/anythink/core/common/f/ah;->M(Ljava/lang/String;)V

    const-string p0, "banner_xhtml"

    .line 62
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Lcom/anythink/core/common/f/ah;->N(Ljava/lang/String;)V

    const-string p0, "sdk_updatetime"

    .line 63
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide p0

    invoke-virtual {v2, p0, p1}, Lcom/anythink/core/common/f/ah;->b(J)V

    const-string p0, "offer_firm_id"

    .line 66
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {v2, p0}, Lcom/anythink/core/common/f/ah;->e(I)V

    const-string p0, "jump_url"

    .line 67
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Lcom/anythink/core/common/f/ah;->j(Ljava/lang/String;)V

    const-string p0, "app_name"

    .line 71
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Lcom/anythink/core/common/f/ah;->O(Ljava/lang/String;)V

    const-string p0, "publisher"

    .line 72
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Lcom/anythink/core/common/f/ah;->z(Ljava/lang/String;)V

    const-string p0, "app_version"

    .line 73
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Lcom/anythink/core/common/f/ah;->A(Ljava/lang/String;)V

    const-string p0, "privacy"

    .line 74
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Lcom/anythink/core/common/f/ah;->B(Ljava/lang/String;)V

    const-string p0, "permission"

    .line 75
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Lcom/anythink/core/common/f/ah;->C(Ljava/lang/String;)V

    const-string p0, "app_desc"

    .line 76
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Lcom/anythink/core/common/f/ah;->c(Ljava/lang/String;)V

    const-string p0, "wv_ctrl"

    .line 79
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Lcom/anythink/core/common/f/ah;->D(Ljava/lang/String;)V

    const-string p0, "ctrl"

    .line 81
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/anythink/core/common/f/aj;->i(Ljava/lang/String;)Lcom/anythink/core/common/f/aj;

    move-result-object p0

    .line 82
    invoke-virtual {v2, p0}, Lcom/anythink/core/common/f/ah;->a(Lcom/anythink/core/common/f/n;)V

    const-string p0, "tk"

    .line 84
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/anythink/core/common/f/ak;->a(Ljava/lang/String;)Lcom/anythink/core/common/f/ak;

    move-result-object p0

    .line 85
    invoke-virtual {v2, p0}, Lcom/anythink/core/common/f/ah;->a(Lcom/anythink/core/common/f/ak;)V

    const-string p0, "adp_type"

    .line 88
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {v2, p0}, Lcom/anythink/core/common/f/ah;->d(I)V

    const-string p0, "offer_html"

    .line 89
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Lcom/anythink/core/common/f/ah;->f(Ljava/lang/String;)V

    const-string p0, "offer_url"

    .line 90
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Lcom/anythink/core/common/f/ah;->g(Ljava/lang/String;)V

    const-string p0, "wx_username"

    .line 92
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Lcom/anythink/core/common/f/ah;->d(Ljava/lang/String;)V

    const-string p0, "wx_path"

    .line 93
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Lcom/anythink/core/common/f/ah;->e(Ljava/lang/String;)V

    const-string p0, "o_w"

    .line 96
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {v2, p0}, Lcom/anythink/core/common/f/ah;->b(I)V

    const-string p0, "o_h"

    .line 97
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {v2, p0}, Lcom/anythink/core/common/f/ah;->c(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v2

    :catchall_0
    return-object v0
.end method
