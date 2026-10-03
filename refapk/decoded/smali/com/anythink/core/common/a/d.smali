.class public final Lcom/anythink/core/common/a/d;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;Lorg/json/JSONObject;I)Lcom/anythink/core/common/f/j;
    .locals 5

    const-string v0, ""

    const/4 v1, 0x0

    .line 27
    :try_start_0
    sget-object v2, Lcom/anythink/core/common/b/h$d;->e:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const-string v3, "seatbid"

    if-nez v2, :cond_0

    .line 29
    :try_start_1
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    return-object v1

    :cond_0
    move-object p1, v2

    .line 37
    :cond_1
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    const/4 v2, 0x0

    .line 38
    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object p1

    .line 40
    new-instance v2, Lcom/anythink/core/common/f/j;

    invoke-direct {v2}, Lcom/anythink/core/common/f/j;-><init>()V

    .line 41
    invoke-virtual {v2, p0}, Lcom/anythink/core/common/f/j;->b(Ljava/lang/String;)V

    const-string p0, "oid"

    .line 42
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Lcom/anythink/core/common/f/j;->k(Ljava/lang/String;)V

    const-string p0, "c_id"

    .line 43
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Lcom/anythink/core/common/f/j;->l(Ljava/lang/String;)V

    const-string p0, "pkg"

    .line 44
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Lcom/anythink/core/common/f/j;->x(Ljava/lang/String;)V

    const-string p0, "title"

    .line 45
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Lcom/anythink/core/common/f/j;->m(Ljava/lang/String;)V

    const-string p0, "desc"

    .line 46
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Lcom/anythink/core/common/f/j;->n(Ljava/lang/String;)V

    const-string p0, "rating"

    .line 47
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {v2, p0}, Lcom/anythink/core/common/f/j;->h(I)V

    const-string p0, "icon_u"

    .line 48
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Lcom/anythink/core/common/f/j;->o(Ljava/lang/String;)V

    const-string p0, "full_u"

    .line 49
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Lcom/anythink/core/common/f/j;->q(Ljava/lang/String;)V

    const-string p0, "unit_type"

    .line 50
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {v2, p0}, Lcom/anythink/core/common/f/j;->f(I)V

    const-string p0, "tp_logo_u"

    .line 51
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Lcom/anythink/core/common/f/j;->r(Ljava/lang/String;)V

    const-string p0, "cta"

    .line 52
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Lcom/anythink/core/common/f/j;->s(Ljava/lang/String;)V

    const-string p0, "video_u"

    .line 53
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Lcom/anythink/core/common/f/j;->t(Ljava/lang/String;)V

    const-string p0, "video_l"

    .line 54
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p0

    int-to-long v3, p0

    invoke-virtual {v2, v3, v4}, Lcom/anythink/core/common/f/j;->d(J)V

    const-string p0, "video_r"

    .line 55
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Lcom/anythink/core/common/f/j;->K(Ljava/lang/String;)V

    const-string p0, "ec_u"

    .line 56
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Lcom/anythink/core/common/f/j;->L(Ljava/lang/String;)V

    const-string p0, "store_u"

    .line 57
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Lcom/anythink/core/common/f/j;->u(Ljava/lang/String;)V

    const-string p0, "link_type"

    .line 58
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {v2, p0}, Lcom/anythink/core/common/f/j;->g(I)V

    const-string p0, "click_u"

    .line 59
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Lcom/anythink/core/common/f/j;->w(Ljava/lang/String;)V

    const-string p0, "deeplink"

    .line 60
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Lcom/anythink/core/common/f/j;->v(Ljava/lang/String;)V

    const-string p0, "crt_type"

    const/4 v3, 0x1

    .line 63
    invoke-virtual {p1, p0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p0

    invoke-virtual {v2, p0}, Lcom/anythink/core/common/f/j;->n(I)V

    const-string p0, "img_list"

    .line 64
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Lcom/anythink/core/common/f/j;->M(Ljava/lang/String;)V

    const-string p0, "banner_xhtml"

    .line 65
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Lcom/anythink/core/common/f/j;->N(Ljava/lang/String;)V

    const-string p0, "offer_firm_id"

    .line 68
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {v2, p0}, Lcom/anythink/core/common/f/j;->e(I)V

    const-string p0, "jump_url"

    .line 69
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Lcom/anythink/core/common/f/j;->j(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    const-string p0, "sdk_resp"

    .line 73
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 74
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 75
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "data"

    .line 76
    invoke-virtual {v4, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 77
    invoke-virtual {v2, p0}, Lcom/anythink/core/common/f/j;->a(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    :cond_2
    :try_start_3
    const-string p0, "app_name"

    .line 84
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Lcom/anythink/core/common/f/j;->O(Ljava/lang/String;)V

    const-string p0, "publisher"

    .line 85
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Lcom/anythink/core/common/f/j;->z(Ljava/lang/String;)V

    const-string p0, "app_version"

    .line 86
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Lcom/anythink/core/common/f/j;->A(Ljava/lang/String;)V

    const-string p0, "privacy"

    .line 87
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Lcom/anythink/core/common/f/j;->B(Ljava/lang/String;)V

    const-string p0, "permission"

    .line 88
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Lcom/anythink/core/common/f/j;->C(Ljava/lang/String;)V

    const-string p0, "app_desc"

    .line 89
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Lcom/anythink/core/common/f/j;->c(Ljava/lang/String;)V

    const-string p0, "mtr_ver"

    .line 91
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Lcom/anythink/core/common/f/j;->i(Ljava/lang/String;)V

    const-string p0, "o_im_cap_sw"

    const/4 v4, 0x2

    .line 95
    invoke-virtual {p1, p0, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p0

    invoke-virtual {v2, p0}, Lcom/anythink/core/common/f/j;->o(I)V

    const-string p0, "o_cl_cap_sw"

    .line 96
    invoke-virtual {p1, p0, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p0

    invoke-virtual {v2, p0}, Lcom/anythink/core/common/f/j;->p(I)V

    const-string p0, "c_im_cap_sw"

    .line 97
    invoke-virtual {p1, p0, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p0

    invoke-virtual {v2, p0}, Lcom/anythink/core/common/f/j;->q(I)V

    const-string p0, "c_cl_cap_sw"

    .line 98
    invoke-virtual {p1, p0, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p0

    invoke-virtual {v2, p0}, Lcom/anythink/core/common/f/j;->r(I)V

    const/16 p0, 0x43

    if-ne p2, p0, :cond_3

    .line 102
    invoke-virtual {v2, v4}, Lcom/anythink/core/common/f/j;->a(I)V

    goto :goto_0

    .line 104
    :cond_3
    invoke-virtual {v2, v3}, Lcom/anythink/core/common/f/j;->a(I)V

    :goto_0
    const-string p0, "ctrl"

    .line 107
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/anythink/core/common/f/aj;->i(Ljava/lang/String;)Lcom/anythink/core/common/f/aj;

    move-result-object p0

    .line 108
    invoke-virtual {v2, p0}, Lcom/anythink/core/common/f/j;->a(Lcom/anythink/core/common/f/n;)V

    const-string p0, "tk"

    .line 110
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/anythink/core/common/f/ak;->a(Ljava/lang/String;)Lcom/anythink/core/common/f/ak;

    move-result-object p0

    .line 111
    invoke-virtual {v2, p0}, Lcom/anythink/core/common/f/j;->a(Lcom/anythink/core/common/f/ak;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 114
    :try_start_4
    new-instance p0, Lorg/json/JSONObject;

    const-string p2, "nw_info"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "app_id"

    .line 115
    invoke-virtual {p0, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Lcom/anythink/core/common/f/j;->F(Ljava/lang/String;)V

    const-string p2, "app_key"

    .line 116
    invoke-virtual {p0, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Lcom/anythink/core/common/f/j;->G(Ljava/lang/String;)V

    const-string p2, "unit_id"

    .line 117
    invoke-virtual {p0, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Lcom/anythink/core/common/f/j;->H(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    :try_start_5
    const-string p0, "dsp_id"

    .line 121
    invoke-virtual {p1, p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Lcom/anythink/core/common/f/j;->I(Ljava/lang/String;)V

    const-string p0, "dsp_oid"

    .line 122
    invoke-virtual {p1, p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Lcom/anythink/core/common/f/j;->J(Ljava/lang/String;)V

    const-string p0, "fca"

    const/4 p2, -0x1

    .line 123
    invoke-virtual {p1, p0, p2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p0

    invoke-virtual {v2, p0}, Lcom/anythink/core/common/f/j;->l(I)V

    const-string p0, "install_sw"

    .line 124
    invoke-virtual {p1, p0, p2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p0

    invoke-virtual {v2, p0}, Lcom/anythink/core/common/f/j;->m(I)V

    const-string p0, "wv_ctrl"

    .line 127
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Lcom/anythink/core/common/f/j;->D(Ljava/lang/String;)V

    const-string p0, "adp_type"

    .line 130
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {v2, p0}, Lcom/anythink/core/common/f/j;->d(I)V

    const-string p0, "offer_html"

    .line 131
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Lcom/anythink/core/common/f/j;->f(Ljava/lang/String;)V

    const-string p0, "offer_url"

    .line 132
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Lcom/anythink/core/common/f/j;->g(Ljava/lang/String;)V

    const-string p0, "wx_username"

    .line 134
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Lcom/anythink/core/common/f/j;->d(Ljava/lang/String;)V

    const-string p0, "wx_path"

    .line 135
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Lcom/anythink/core/common/f/j;->e(Ljava/lang/String;)V

    const-string p0, "o_w"

    .line 138
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {v2, p0}, Lcom/anythink/core/common/f/j;->b(I)V

    const-string p0, "o_h"

    .line 139
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {v2, p0}, Lcom/anythink/core/common/f/j;->c(I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    return-object v2

    :catchall_2
    return-object v1
.end method
