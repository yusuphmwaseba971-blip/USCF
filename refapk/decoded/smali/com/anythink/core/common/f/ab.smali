.class public final Lcom/anythink/core/common/f/ab;
.super Lcom/anythink/core/common/f/n;


# instance fields
.field protected n:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/anythink/core/common/f/n;-><init>()V

    return-void
.end method

.method private X(I)V
    .locals 0

    .line 179
    iput p1, p0, Lcom/anythink/core/common/f/ab;->n:I

    return-void
.end method

.method public static i(Ljava/lang/String;)Lcom/anythink/core/common/f/ab;
    .locals 22

    const-string v0, "rsdl_rate"

    const-string v1, "ready_rate"

    const-string v2, "sh_cl_itp"

    const-string v3, "ft_cl_sz"

    const-string v4, "click_nt_sw"

    const-string v5, "click_cache_time"

    const-string v6, "shk_time"

    const-string v7, "shk_strength_and"

    const-string v8, "shk_sw"

    const-string v9, "ap_pasbl"

    const-string v10, "ap_arpt"

    const-string v11, "clua"

    const-string v12, "ipua"

    const-string v13, "sh_ec"

    const-string v14, "int_cl_ti"

    const-string v15, "int_cl_sw"

    move-object/from16 v16, v0

    const-string v0, "at_ct_ti"

    move-object/from16 v17, v1

    const-string v1, "at_cl_sw"

    move-object/from16 v18, v2

    .line 28
    new-instance v2, Lcom/anythink/core/common/f/ab;

    invoke-direct {v2}, Lcom/anythink/core/common/f/ab;-><init>()V

    .line 29
    invoke-static/range {p0 .. p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_16

    move-object/from16 v19, v3

    .line 31
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    move-object/from16 v20, v4

    move-object/from16 v4, p0

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v4, "f_t"

    .line 33
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/anythink/core/common/f/ab;->s(I)V

    const-string v4, "v_c"

    .line 34
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/anythink/core/common/f/ab;->t(I)V

    const-string v4, "s_b_t"

    .line 35
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/anythink/core/common/f/ab;->u(I)V

    const-string v4, "e_c_a"

    .line 36
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/anythink/core/common/f/ab;->w(I)V

    const-string v4, "v_m"

    .line 37
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/anythink/core/common/f/ab;->x(I)V

    const-string v4, "s_c_t"

    .line 38
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/anythink/core/common/f/ab;->y(I)V

    const-string v4, "m_t"

    .line 39
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/anythink/core/common/f/ab;->n(I)V

    const-string v4, "o_c_t"

    move-object/from16 v21, v5

    .line 40
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/anythink/core/common/f/ab;->c(J)V

    const-string v4, "ak_cfm"

    .line 42
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/anythink/core/common/f/ab;->o(I)V

    const-string v4, "ctdown_time"

    .line 44
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/anythink/core/common/f/ab;->b(J)V

    const-string v4, "sk_able"

    .line 45
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/anythink/core/common/f/ab;->p(I)V

    const-string v4, "orient"

    .line 46
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/anythink/core/common/f/ab;->q(I)V

    const-string v4, "size"

    .line 47
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/anythink/core/common/f/ab;->e(Ljava/lang/String;)V

    const-string v4, "cl_btn"

    .line 48
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/anythink/core/common/f/ab;->r(I)V

    const-string v4, "ec_r"

    .line 51
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/anythink/core/common/f/ab;->z(I)V

    const-string v4, "ec_s_t"

    .line 52
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/anythink/core/common/f/ab;->A(I)V

    const-string v4, "ec_l_t"

    .line 53
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/anythink/core/common/f/ab;->B(I)V

    const-string v4, "inter_type"

    .line 56
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/anythink/core/common/f/ab;->f(Ljava/lang/String;)V

    const-string v4, "spl_type"

    .line 59
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    .line 1179
    iput v4, v2, Lcom/anythink/core/common/f/ab;->n:I

    const-string v4, "or_t"

    .line 62
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/anythink/core/common/f/ab;->a(J)V

    const-string v4, "rv_fail_reward"

    .line 63
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/anythink/core/common/f/ab;->g(I)V

    const-string v4, "cl_sz"

    .line 64
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/anythink/core/common/f/ab;->h(I)V

    const-string v4, "si_fit"

    .line 65
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/anythink/core/common/f/ab;->k(I)V

    .line 68
    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 69
    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/anythink/core/common/f/ab;->C(I)V

    .line 71
    :cond_0
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 72
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/anythink/core/common/f/ab;->D(I)V

    .line 74
    :cond_1
    invoke-virtual {v3, v15}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 75
    invoke-virtual {v3, v15}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/anythink/core/common/f/ab;->E(I)V

    .line 77
    :cond_2
    invoke-virtual {v3, v14}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 78
    invoke-virtual {v3, v14}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/anythink/core/common/f/ab;->F(I)V

    .line 80
    :cond_3
    invoke-virtual {v3, v13}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 81
    invoke-virtual {v3, v13}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/anythink/core/common/f/ab;->G(I)V

    .line 85
    :cond_4
    invoke-virtual {v3, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 86
    invoke-virtual {v3, v12}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/anythink/core/common/f/ab;->e(I)V

    .line 88
    :cond_5
    invoke-virtual {v3, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 89
    invoke-virtual {v3, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/anythink/core/common/f/ab;->f(I)V

    .line 93
    :cond_6
    invoke-virtual {v3, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 94
    invoke-virtual {v3, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/anythink/core/common/f/ab;->H(I)V

    .line 97
    :cond_7
    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 98
    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/anythink/core/common/f/ab;->I(I)V

    .line 102
    :cond_8
    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 103
    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/anythink/core/common/f/ab;->J(I)V

    .line 106
    :cond_9
    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 107
    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/anythink/core/common/f/ab;->K(I)V

    .line 110
    :cond_a
    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 111
    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Lcom/anythink/core/common/f/ab;->d(J)V

    :cond_b
    move-object/from16 v0, v21

    .line 115
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 116
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/anythink/core/common/f/ab;->L(I)V

    goto :goto_0

    :cond_c
    const v0, 0x36ee80

    .line 118
    invoke-virtual {v2, v0}, Lcom/anythink/core/common/f/ab;->L(I)V

    :goto_0
    move-object/from16 v0, v20

    .line 120
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    const/4 v4, 0x1

    if-eqz v1, :cond_d

    .line 121
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/anythink/core/common/f/ab;->M(I)V

    goto :goto_1

    .line 123
    :cond_d
    invoke-virtual {v2, v4}, Lcom/anythink/core/common/f/ab;->M(I)V

    :goto_1
    move-object/from16 v0, v19

    .line 126
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 127
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/anythink/core/common/f/ab;->i(I)V

    goto :goto_2

    .line 129
    :cond_e
    invoke-virtual {v2, v4}, Lcom/anythink/core/common/f/ab;->i(I)V

    :goto_2
    move-object/from16 v0, v18

    .line 132
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    const/4 v5, 0x2

    if-eqz v1, :cond_f

    .line 133
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/anythink/core/common/f/ab;->j(I)V

    goto :goto_3

    .line 135
    :cond_f
    invoke-virtual {v2, v5}, Lcom/anythink/core/common/f/ab;->j(I)V

    :goto_3
    const-string v0, "shm_t"

    const/4 v1, -0x1

    .line 138
    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/anythink/core/common/f/ab;->N(I)V

    move-object/from16 v0, v17

    .line 141
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 142
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/anythink/core/common/f/ab;->O(I)V

    goto :goto_4

    :cond_10
    const/16 v0, 0x64

    .line 144
    invoke-virtual {v2, v0}, Lcom/anythink/core/common/f/ab;->O(I)V

    :goto_4
    move-object/from16 v0, v16

    .line 146
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    const/4 v6, 0x0

    if-eqz v1, :cond_11

    .line 147
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/anythink/core/common/f/ab;->P(I)V

    goto :goto_5

    .line 149
    :cond_11
    invoke-virtual {v2, v6}, Lcom/anythink/core/common/f/ab;->P(I)V

    :goto_5
    const-string v0, "video_ctn_type"

    .line 151
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    const-string v0, "video_ctn_type"

    .line 152
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/anythink/core/common/f/ab;->Q(I)V

    goto :goto_6

    .line 154
    :cond_12
    invoke-virtual {v2, v5}, Lcom/anythink/core/common/f/ab;->Q(I)V

    :goto_6
    const-string v0, "at_cl_img"

    .line 158
    invoke-virtual {v3, v0, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v4, :cond_13

    const/4 v0, 0x1

    goto :goto_7

    :cond_13
    const/4 v0, 0x0

    :goto_7
    invoke-virtual {v2, v0}, Lcom/anythink/core/common/f/ab;->c(Z)V

    const-string v0, "at_cl_video"

    .line 159
    invoke-virtual {v3, v0, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v4, :cond_14

    const/4 v0, 0x1

    goto :goto_8

    :cond_14
    const/4 v0, 0x0

    :goto_8
    invoke-virtual {v2, v0}, Lcom/anythink/core/common/f/ab;->d(Z)V

    const-string v0, "at_cl_ec"

    .line 160
    invoke-virtual {v3, v0, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v4, :cond_15

    goto :goto_9

    :cond_15
    const/4 v4, 0x0

    :goto_9
    invoke-virtual {v2, v4}, Lcom/anythink/core/common/f/ab;->e(Z)V

    const-string v0, "at_cl_pt"

    const-wide/16 v4, 0x1388

    .line 162
    invoke-virtual {v3, v0, v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Lcom/anythink/core/common/f/ab;->e(J)V

    const-string v0, "at_cl_pct"

    .line 163
    invoke-virtual {v3, v0, v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Lcom/anythink/core/common/f/ab;->f(J)V

    const-string v0, "at_cl_ec_pt"

    .line 164
    invoke-virtual {v3, v0, v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Lcom/anythink/core/common/f/ab;->g(J)V

    const-string v0, "at_cl_ec_pct"

    .line 165
    invoke-virtual {v3, v0, v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Lcom/anythink/core/common/f/ab;->h(J)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_a

    :catch_0
    move-exception v0

    .line 167
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_16
    :goto_a
    return-object v2
.end method


# virtual methods
.method public final as()I
    .locals 1

    .line 175
    iget v0, p0, Lcom/anythink/core/common/f/ab;->n:I

    return v0
.end method
