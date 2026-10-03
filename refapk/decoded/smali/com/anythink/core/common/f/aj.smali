.class public final Lcom/anythink/core/common/f/aj;
.super Lcom/anythink/core/common/f/n;


# instance fields
.field private n:I

.field private o:I

.field private p:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/anythink/core/common/f/n;-><init>()V

    return-void
.end method

.method private X(I)V
    .locals 0

    .line 35
    iput p1, p0, Lcom/anythink/core/common/f/aj;->o:I

    return-void
.end method

.method private Y(I)V
    .locals 0

    .line 43
    iput p1, p0, Lcom/anythink/core/common/f/aj;->n:I

    return-void
.end method

.method private Z(I)V
    .locals 0

    .line 52
    iput p1, p0, Lcom/anythink/core/common/f/aj;->p:I

    return-void
.end method

.method public static i(Ljava/lang/String;)Lcom/anythink/core/common/f/aj;
    .locals 22

    const-string v0, "sh_cl_itp"

    const-string v1, "ft_cl_sz"

    const-string v2, "click_nt_sw"

    const-string v3, "click_cache_time"

    const-string v4, "shk_time"

    const-string v5, "shk_strength_and"

    const-string v6, "shk_sw"

    const-string v7, "inter_type"

    const-string v8, "ap_pasbl"

    const-string v9, "ap_arpt"

    const-string v10, "sh_ec"

    const-string v11, "int_cl_ti"

    const-string v12, "int_cl_sw"

    const-string v13, "at_ct_ti"

    const-string v14, "at_cl_sw"

    const-string v15, "s_b_d"

    move-object/from16 v16, v0

    const-string v0, ""

    move-object/from16 v17, v1

    .line 56
    new-instance v1, Lcom/anythink/core/common/f/aj;

    invoke-direct {v1}, Lcom/anythink/core/common/f/aj;-><init>()V

    .line 57
    invoke-static/range {p0 .. p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_0

    return-object v1

    :cond_0
    move-object/from16 v18, v0

    .line 61
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    move-object/from16 v19, v2

    move-object/from16 v2, p0

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "f_t"

    .line 63
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/anythink/core/common/f/aj;->s(I)V

    const-string v2, "v_c"

    .line 65
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v20, v3

    const/4 v3, 0x2

    move-object/from16 v21, v4

    const/4 v4, 0x1

    if-eq v2, v4, :cond_2

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    .line 74
    :goto_0
    invoke-virtual {v1, v2}, Lcom/anythink/core/common/f/aj;->t(I)V

    const-string v2, "s_b_t"

    .line 76
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/anythink/core/common/f/aj;->u(I)V

    .line 79
    invoke-virtual {v0, v15}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 80
    invoke-virtual {v0, v15}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/anythink/core/common/f/aj;->v(I)V

    :cond_3
    const-string v2, "e_c_a"

    .line 84
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v4, :cond_6

    if-eq v2, v3, :cond_5

    const/4 v15, 0x3

    if-eq v2, v15, :cond_4

    goto :goto_1

    :cond_4
    const/4 v2, 0x2

    goto :goto_1

    :cond_5
    const/4 v2, 0x1

    goto :goto_1

    :cond_6
    const/4 v2, 0x0

    .line 96
    :goto_1
    invoke-virtual {v1, v2}, Lcom/anythink/core/common/f/aj;->w(I)V

    const-string v2, "ak_cfm"

    .line 99
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v4, :cond_8

    if-eq v2, v3, :cond_7

    goto :goto_2

    :cond_7
    const/4 v2, 0x1

    goto :goto_2

    :cond_8
    const/4 v2, 0x0

    .line 108
    :goto_2
    invoke-virtual {v1, v2}, Lcom/anythink/core/common/f/aj;->o(I)V

    const-string v2, "m_t"

    .line 110
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/anythink/core/common/f/aj;->n(I)V

    const-string v2, "cm"

    .line 119
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v4, :cond_a

    if-eq v2, v3, :cond_9

    goto :goto_3

    :cond_9
    const/4 v2, 0x1

    goto :goto_3

    :cond_a
    const/4 v2, 0x0

    .line 1043
    :goto_3
    iput v2, v1, Lcom/anythink/core/common/f/aj;->n:I

    const-string v2, "ipua"

    .line 130
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/anythink/core/common/f/aj;->e(I)V

    const-string v2, "clua"

    .line 131
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/anythink/core/common/f/aj;->f(I)V

    const-string v2, "dp_cm"

    .line 132
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/anythink/core/common/f/aj;->m(I)V

    const-string v2, "l_o_num"

    .line 133
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    .line 2035
    iput v2, v1, Lcom/anythink/core/common/f/aj;->o:I

    const-string v2, "ld_t"

    .line 134
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/anythink/core/common/f/aj;->l(I)V

    const-string v2, "ec_r"

    .line 137
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/anythink/core/common/f/aj;->z(I)V

    const-string v2, "ec_s_t"

    .line 138
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/anythink/core/common/f/aj;->A(I)V

    const-string v2, "ec_l_t"

    .line 139
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/anythink/core/common/f/aj;->B(I)V

    const-string v2, "or_t"

    .line 142
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Lcom/anythink/core/common/f/aj;->a(J)V

    const-string v2, "rv_fail_reward"

    .line 143
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/anythink/core/common/f/aj;->g(I)V

    const-string v2, "cl_sz"

    .line 144
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/anythink/core/common/f/aj;->h(I)V

    const-string v2, "si_fit"

    .line 145
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/anythink/core/common/f/aj;->k(I)V

    .line 148
    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 149
    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/anythink/core/common/f/aj;->C(I)V

    .line 151
    :cond_b
    invoke-virtual {v0, v13}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 152
    invoke-virtual {v0, v13}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/anythink/core/common/f/aj;->D(I)V

    .line 154
    :cond_c
    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 155
    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/anythink/core/common/f/aj;->E(I)V

    .line 157
    :cond_d
    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 158
    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/anythink/core/common/f/aj;->F(I)V

    .line 160
    :cond_e
    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 161
    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/anythink/core/common/f/aj;->G(I)V

    .line 164
    :cond_f
    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 165
    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/anythink/core/common/f/aj;->H(I)V

    .line 168
    :cond_10
    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 169
    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/anythink/core/common/f/aj;->I(I)V

    .line 173
    :cond_11
    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 174
    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/anythink/core/common/f/aj;->f(Ljava/lang/String;)V

    .line 178
    :cond_12
    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 179
    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/anythink/core/common/f/aj;->J(I)V

    .line 182
    :cond_13
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 183
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/anythink/core/common/f/aj;->K(I)V

    :cond_14
    move-object/from16 v2, v21

    .line 186
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 187
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/anythink/core/common/f/aj;->d(J)V

    :cond_15
    move-object/from16 v2, v20

    .line 191
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 192
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/anythink/core/common/f/aj;->L(I)V

    :cond_16
    move-object/from16 v2, v19

    .line 194
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 195
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/anythink/core/common/f/aj;->M(I)V

    :cond_17
    move-object/from16 v2, v17

    .line 198
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 199
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/anythink/core/common/f/aj;->i(I)V

    goto :goto_4

    :cond_18
    const/4 v2, 0x1

    .line 201
    invoke-virtual {v1, v2}, Lcom/anythink/core/common/f/aj;->i(I)V

    :goto_4
    move-object/from16 v2, v16

    .line 204
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 205
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/anythink/core/common/f/aj;->j(I)V

    goto :goto_5

    :cond_19
    const/4 v2, 0x2

    .line 207
    invoke-virtual {v1, v2}, Lcom/anythink/core/common/f/aj;->j(I)V

    :goto_5
    const-string v2, "shm_t"

    const/4 v3, -0x1

    .line 210
    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/anythink/core/common/f/aj;->N(I)V

    const-string v2, "ready_rate"

    .line 213
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1a

    const-string v2, "ready_rate"

    .line 214
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/anythink/core/common/f/aj;->O(I)V

    goto :goto_6

    :cond_1a
    const/16 v2, 0x64

    .line 216
    invoke-virtual {v1, v2}, Lcom/anythink/core/common/f/aj;->O(I)V

    :goto_6
    const-string v2, "rsdl_rate"

    .line 218
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1b

    const-string v2, "rsdl_rate"

    .line 219
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/anythink/core/common/f/aj;->P(I)V

    goto :goto_7

    :cond_1b
    const/4 v2, 0x0

    .line 221
    invoke-virtual {v1, v2}, Lcom/anythink/core/common/f/aj;->P(I)V

    :goto_7
    const-string v2, "video_ctn_type"

    .line 223
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1c

    const-string v2, "video_ctn_type"

    .line 224
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/anythink/core/common/f/aj;->Q(I)V

    goto :goto_8

    :cond_1c
    const/4 v2, 0x2

    .line 226
    invoke-virtual {v1, v2}, Lcom/anythink/core/common/f/aj;->Q(I)V

    :goto_8
    const-string v2, "preload_offer_html"

    .line 229
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1e

    const-string v2, "preload_offer_html"

    .line 230
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_1d

    const/4 v2, 0x1

    goto :goto_9

    :cond_1d
    const/4 v2, 0x0

    :goto_9
    invoke-virtual {v1, v2}, Lcom/anythink/core/common/f/aj;->a(Z)V

    goto :goto_a

    :cond_1e
    const/4 v2, 0x1

    .line 232
    invoke-virtual {v1, v2}, Lcom/anythink/core/common/f/aj;->a(Z)V

    :goto_a
    const-string v2, "re_monitor"

    .line 234
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_20

    const-string v2, "re_monitor"

    .line 235
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_1f

    const/4 v2, 0x1

    goto :goto_b

    :cond_1f
    const/4 v2, 0x0

    :goto_b
    invoke-virtual {v1, v2}, Lcom/anythink/core/common/f/aj;->b(Z)V

    const/4 v2, 0x0

    goto :goto_c

    :cond_20
    const/4 v2, 0x0

    .line 237
    invoke-virtual {v1, v2}, Lcom/anythink/core/common/f/aj;->b(Z)V

    :goto_c
    const-string v4, "wn_st_md_sw"

    .line 240
    invoke-virtual {v0, v4, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    .line 2052
    iput v4, v1, Lcom/anythink/core/common/f/aj;->p:I

    const-string v2, "at_cl_img"

    const/4 v4, 0x2

    .line 243
    invoke-virtual {v0, v2, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    const/4 v5, 0x1

    if-ne v2, v5, :cond_21

    const/4 v2, 0x1

    goto :goto_d

    :cond_21
    const/4 v2, 0x0

    :goto_d
    invoke-virtual {v1, v2}, Lcom/anythink/core/common/f/aj;->c(Z)V

    const-string v2, "at_cl_video"

    .line 244
    invoke-virtual {v0, v2, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v5, :cond_22

    const/4 v2, 0x1

    goto :goto_e

    :cond_22
    const/4 v2, 0x0

    :goto_e
    invoke-virtual {v1, v2}, Lcom/anythink/core/common/f/aj;->d(Z)V

    const-string v2, "at_cl_ec"

    .line 245
    invoke-virtual {v0, v2, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v5, :cond_23

    const/4 v2, 0x1

    goto :goto_f

    :cond_23
    const/4 v2, 0x0

    :goto_f
    invoke-virtual {v1, v2}, Lcom/anythink/core/common/f/aj;->e(Z)V

    const-string v2, "at_cl_pt"

    const-wide/16 v4, 0x1388

    .line 247
    invoke-virtual {v0, v2, v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v6

    invoke-virtual {v1, v6, v7}, Lcom/anythink/core/common/f/aj;->e(J)V

    const-string v2, "at_cl_pct"

    .line 248
    invoke-virtual {v0, v2, v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v6

    invoke-virtual {v1, v6, v7}, Lcom/anythink/core/common/f/aj;->f(J)V

    const-string v2, "at_cl_ec_pt"

    .line 249
    invoke-virtual {v0, v2, v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v6

    invoke-virtual {v1, v6, v7}, Lcom/anythink/core/common/f/aj;->g(J)V

    const-string v2, "at_cl_ec_pct"

    .line 250
    invoke-virtual {v0, v2, v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v6

    invoke-virtual {v1, v6, v7}, Lcom/anythink/core/common/f/aj;->h(J)V

    const-string v2, "or_img_t"

    .line 253
    invoke-virtual {v0, v2, v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lcom/anythink/core/common/f/aj;->i(J)V

    const-string v2, "animate_type"

    .line 254
    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/anythink/core/common/f/aj;->S(I)V

    const-string v2, "render_wv_ld"

    const/4 v3, 0x2

    .line 255
    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/anythink/core/common/f/aj;->R(I)V

    const-string v2, "cl_invalid_sw"

    .line 258
    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/anythink/core/common/f/aj;->T(I)V

    const-string v2, "stc_sw"

    const/4 v3, 0x1

    .line 259
    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/anythink/core/common/f/aj;->U(I)V

    const-string v2, "close_button_m"

    const/4 v3, 0x0

    .line 261
    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/anythink/core/common/f/aj;->V(I)V

    const-string v2, "cgf_sw"

    const/4 v3, 0x1

    .line 264
    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/anythink/core/common/f/aj;->W(I)V

    const-string v2, "cgf_t"

    const-wide/16 v3, 0x0

    .line 265
    invoke-virtual {v0, v2, v3, v4}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/anythink/core/common/f/aj;->j(J)V

    const-string v2, "cgf_list"

    move-object/from16 v3, v18

    .line 266
    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/anythink/core/common/f/aj;->g(Ljava/lang/String;)V

    const-string v2, "qa_po"

    .line 267
    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/anythink/core/common/f/aj;->h(Ljava/lang/String;)V

    const-string v2, "lp_pop"

    const/4 v4, 0x2

    .line 270
    invoke-virtual {v0, v2, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/anythink/core/common/f/aj;->b(I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    const-string v2, "shk_obj"

    .line 274
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_24

    const-string v2, "shk_type"

    const/4 v4, 0x1

    .line 276
    invoke-virtual {v0, v2, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/anythink/core/common/f/aj;->a(I)V

    const-string v2, "shk_icon"

    .line 277
    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/anythink/core/common/f/aj;->a(Ljava/lang/String;)V

    const-string v2, "shk_text_l"

    .line 278
    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/anythink/core/common/f/aj;->b(Ljava/lang/String;)V

    const-string v2, "shk_text_m"

    .line 279
    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/anythink/core/common/f/aj;->c(Ljava/lang/String;)V

    const-string v2, "shk_text_s"

    .line 280
    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/anythink/core/common/f/aj;->d(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_10

    :catch_0
    move-exception v0

    .line 286
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :catchall_0
    :cond_24
    :goto_10
    return-object v1
.end method


# virtual methods
.method public final as()I
    .locals 1

    .line 31
    iget v0, p0, Lcom/anythink/core/common/f/aj;->o:I

    return v0
.end method

.method public final at()I
    .locals 1

    .line 39
    iget v0, p0, Lcom/anythink/core/common/f/aj;->n:I

    return v0
.end method

.method public final au()I
    .locals 1

    .line 48
    iget v0, p0, Lcom/anythink/core/common/f/aj;->p:I

    return v0
.end method
