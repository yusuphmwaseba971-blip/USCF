.class public final Lcom/anythink/core/d/k;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(IILorg/json/JSONObject;)Lcom/anythink/core/common/f/au;
    .locals 16

    move/from16 v0, p1

    move-object/from16 v1, p2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    const/4 v4, 0x4

    if-eq v0, v4, :cond_0

    const/16 v4, 0x8

    if-eq v0, v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    .line 160
    :goto_0
    new-instance v5, Lcom/anythink/core/common/f/au;

    move/from16 v6, p0

    invoke-direct {v5, v6}, Lcom/anythink/core/common/f/au;-><init>(I)V

    .line 162
    invoke-virtual {v5, v0}, Lcom/anythink/core/common/f/au;->e(I)V

    .line 163
    invoke-virtual {v5, v4}, Lcom/anythink/core/common/f/au;->d(I)V

    const-string v6, "adapter_class"

    .line 164
    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v7

    const-string v8, ""

    if-eqz v7, :cond_1

    .line 165
    invoke-virtual {v5, v8}, Lcom/anythink/core/common/f/au;->c(Ljava/lang/String;)V

    goto :goto_1

    .line 167
    :cond_1
    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/anythink/core/common/f/au;->c(Ljava/lang/String;)V

    :goto_1
    const-string v6, "caps_d"

    .line 171
    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v7

    const/4 v9, -0x1

    if-eqz v7, :cond_2

    .line 172
    invoke-virtual {v5, v9}, Lcom/anythink/core/common/f/au;->b(I)V

    goto :goto_2

    .line 174
    :cond_2
    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/anythink/core/common/f/au;->b(I)V

    :goto_2
    const-string v6, "caps_h"

    .line 178
    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 179
    invoke-virtual {v5, v9}, Lcom/anythink/core/common/f/au;->c(I)V

    goto :goto_3

    .line 181
    :cond_3
    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/anythink/core/common/f/au;->c(I)V

    :goto_3
    const-string v6, "content"

    .line 184
    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 185
    invoke-virtual {v5, v8}, Lcom/anythink/core/common/f/au;->b(Ljava/lang/String;)V

    goto :goto_4

    .line 187
    :cond_4
    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/anythink/core/common/f/au;->b(Ljava/lang/String;)V

    :goto_4
    const-string v6, "nw_firm_id"

    .line 190
    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 191
    invoke-virtual {v5, v9}, Lcom/anythink/core/common/f/au;->a(I)V

    goto :goto_5

    .line 193
    :cond_5
    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/anythink/core/common/f/au;->a(I)V

    :goto_5
    const-string v6, "nw_firm_name"

    .line 196
    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 197
    invoke-virtual {v5, v8}, Lcom/anythink/core/common/f/au;->a(Ljava/lang/String;)V

    goto :goto_6

    .line 199
    :cond_6
    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/anythink/core/common/f/au;->a(Ljava/lang/String;)V

    :goto_6
    const-string v6, "ug_id"

    .line 202
    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    const-string v6, "unknown"

    .line 203
    invoke-virtual {v5, v6}, Lcom/anythink/core/common/f/au;->d(Ljava/lang/String;)V

    goto :goto_7

    .line 205
    :cond_7
    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/anythink/core/common/f/au;->d(Ljava/lang/String;)V

    :goto_7
    const-string v6, "nw_cache_time"

    .line 208
    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v7

    const-wide/16 v10, 0x0

    if-eqz v7, :cond_8

    .line 209
    invoke-virtual {v5, v10, v11}, Lcom/anythink/core/common/f/au;->c(J)V

    goto :goto_8

    .line 211
    :cond_8
    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {v5, v6, v7}, Lcom/anythink/core/common/f/au;->c(J)V

    :goto_8
    const-string v6, "nw_timeout"

    .line 215
    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 216
    invoke-virtual {v5, v10, v11}, Lcom/anythink/core/common/f/au;->d(J)V

    goto :goto_9

    .line 218
    :cond_9
    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {v5, v6, v7}, Lcom/anythink/core/common/f/au;->d(J)V

    :goto_9
    const-string v6, "nw_req_num"

    .line 221
    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 222
    invoke-virtual {v5, v3}, Lcom/anythink/core/common/f/au;->h(I)V

    goto :goto_a

    .line 224
    :cond_a
    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/anythink/core/common/f/au;->h(I)V

    :goto_a
    const-string v6, "pacing"

    .line 227
    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v7

    const-wide/16 v12, -0x1

    if-eqz v7, :cond_b

    .line 228
    invoke-virtual {v5, v12, v13}, Lcom/anythink/core/common/f/au;->e(J)V

    goto :goto_b

    .line 230
    :cond_b
    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/anythink/core/common/f/au;->e(J)V

    :goto_b
    const-string v6, "unit_id"

    .line 233
    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 234
    invoke-virtual {v5, v8}, Lcom/anythink/core/common/f/au;->e(Ljava/lang/String;)V

    goto :goto_c

    .line 236
    :cond_c
    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/anythink/core/common/f/au;->e(Ljava/lang/String;)V

    :goto_c
    const-string v6, "ecpm"

    .line 239
    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v7

    const-wide/16 v14, 0x0

    if-eqz v7, :cond_d

    .line 240
    invoke-virtual {v5, v14, v15}, Lcom/anythink/core/common/f/au;->a(D)V

    goto :goto_d

    .line 243
    :cond_d
    invoke-virtual {v1, v6, v14, v15}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/anythink/core/common/f/au;->a(D)V

    :goto_d
    const-string v6, "hb_timeout"

    .line 247
    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_e

    const-wide/16 v6, 0x7d0

    .line 248
    invoke-virtual {v5, v6, v7}, Lcom/anythink/core/common/f/au;->f(J)V

    goto :goto_e

    :cond_e
    const-string v6, "hb_timeout"

    .line 250
    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {v5, v6, v7}, Lcom/anythink/core/common/f/au;->f(J)V

    :goto_e
    const-string v6, "t_c_u"

    .line 254
    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_f

    .line 255
    invoke-virtual {v5, v8}, Lcom/anythink/core/common/f/au;->f(Ljava/lang/String;)V

    goto :goto_f

    :cond_f
    const-string v6, "t_c_u"

    .line 257
    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/anythink/core/common/f/au;->f(Ljava/lang/String;)V

    :goto_f
    const-string v6, "t_c_u_min_t"

    .line 260
    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_10

    .line 261
    invoke-virtual {v5, v2}, Lcom/anythink/core/common/f/au;->i(I)V

    goto :goto_10

    :cond_10
    const-string v6, "t_c_u_min_t"

    .line 263
    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/anythink/core/common/f/au;->i(I)V

    :goto_10
    const-string v6, "t_c_u_max_t"

    .line 266
    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_11

    const/16 v6, 0xbb8

    .line 267
    invoke-virtual {v5, v6}, Lcom/anythink/core/common/f/au;->j(I)V

    goto :goto_11

    :cond_11
    const-string v6, "t_c_u_max_t"

    .line 269
    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/anythink/core/common/f/au;->j(I)V

    :goto_11
    const-string v6, "payload"

    .line 272
    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_12

    .line 273
    invoke-virtual {v5, v8}, Lcom/anythink/core/common/f/au;->g(Ljava/lang/String;)V

    goto :goto_12

    :cond_12
    const-string v6, "payload"

    .line 275
    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/anythink/core/common/f/au;->g(Ljava/lang/String;)V

    :goto_12
    const-string v6, "error"

    .line 278
    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_13

    .line 279
    invoke-virtual {v5, v8}, Lcom/anythink/core/common/f/au;->h(Ljava/lang/String;)V

    goto :goto_13

    :cond_13
    const-string v6, "error"

    .line 281
    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/anythink/core/common/f/au;->h(Ljava/lang/String;)V

    :goto_13
    const-string v6, "l_s_t"

    .line 287
    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_14

    const-wide/32 v6, 0x1b7740

    .line 288
    invoke-virtual {v5, v6, v7}, Lcom/anythink/core/common/f/au;->g(J)V

    goto :goto_14

    :cond_14
    const-string v6, "l_s_t"

    .line 290
    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/anythink/core/common/f/au;->g(J)V

    :goto_14
    const-string v6, "n_d_t"

    .line 293
    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_15

    .line 294
    invoke-virtual {v5, v12, v13}, Lcom/anythink/core/common/f/au;->h(J)V

    goto :goto_15

    :cond_15
    const-string v6, "n_d_t"

    .line 296
    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/anythink/core/common/f/au;->h(J)V

    :goto_15
    const-string v6, "hb_t_c_t"

    .line 299
    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_16

    const-wide/32 v6, 0x1b7740

    .line 300
    invoke-virtual {v5, v6, v7}, Lcom/anythink/core/common/f/au;->b(J)V

    goto :goto_16

    :cond_16
    const-string v6, "hb_t_c_t"

    .line 302
    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/anythink/core/common/f/au;->b(J)V

    :goto_16
    const-string v6, "sort_type"

    .line 306
    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_17

    xor-int/2addr v4, v3

    .line 307
    invoke-virtual {v5, v4}, Lcom/anythink/core/common/f/au;->g(I)V

    goto :goto_17

    :cond_17
    const-string v4, "sort_type"

    .line 309
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v5, v4}, Lcom/anythink/core/common/f/au;->g(I)V

    :goto_17
    const-string v4, "s_sw"

    .line 313
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_18

    .line 314
    invoke-virtual {v5, v3}, Lcom/anythink/core/common/f/au;->k(I)V

    goto :goto_18

    :cond_18
    const-string v4, "s_sw"

    .line 316
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v5, v4}, Lcom/anythink/core/common/f/au;->k(I)V

    :goto_18
    const-string v4, "c_sw"

    .line 318
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_19

    .line 319
    invoke-virtual {v5, v3}, Lcom/anythink/core/common/f/au;->l(I)V

    goto :goto_19

    :cond_19
    const-string v4, "c_sw"

    .line 321
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v5, v4}, Lcom/anythink/core/common/f/au;->l(I)V

    :goto_19
    const-string v4, "ecpm_level"

    .line 325
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 326
    invoke-virtual {v5, v9}, Lcom/anythink/core/common/f/au;->m(I)V

    goto :goto_1a

    :cond_1a
    const-string v4, "ecpm_level"

    .line 328
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v5, v4}, Lcom/anythink/core/common/f/au;->m(I)V

    :goto_1a
    const-string v4, "precision"

    .line 331
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1b

    const-string v4, "publisher_defined"

    .line 332
    invoke-virtual {v5, v4}, Lcom/anythink/core/common/f/au;->i(Ljava/lang/String;)V

    goto :goto_1b

    :cond_1b
    const-string v4, "precision"

    .line 334
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/anythink/core/common/f/au;->i(Ljava/lang/String;)V

    :goto_1b
    const-string v4, "nx_req_time"

    .line 337
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1c

    .line 338
    invoke-virtual {v5, v10, v11}, Lcom/anythink/core/common/f/au;->i(J)V

    goto :goto_1c

    :cond_1c
    const-string v4, "nx_req_time"

    .line 340
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/anythink/core/common/f/au;->i(J)V

    :goto_1c
    const-string v4, "bid_fail_interval"

    .line 343
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 344
    invoke-virtual {v5, v10, v11}, Lcom/anythink/core/common/f/au;->j(J)V

    goto :goto_1d

    :cond_1d
    const-string v4, "bid_fail_interval"

    .line 346
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/anythink/core/common/f/au;->j(J)V

    :goto_1d
    const-string v4, "cy_ecpm"

    .line 352
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1e

    .line 353
    invoke-virtual {v5, v14, v15}, Lcom/anythink/core/common/f/au;->b(D)V

    goto :goto_1e

    :cond_1e
    const-string v4, "cy_ecpm"

    .line 355
    invoke-virtual {v1, v4, v14, v15}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/anythink/core/common/f/au;->b(D)V

    :goto_1e
    const-string v4, "irrf_sw"

    .line 361
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1f

    .line 362
    invoke-virtual {v5, v3}, Lcom/anythink/core/common/f/au;->n(I)V

    goto :goto_1f

    :cond_1f
    const-string v4, "irrf_sw"

    .line 364
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v5, v4}, Lcom/anythink/core/common/f/au;->n(I)V

    :goto_1f
    const-string v4, "wfe_t_sw"

    .line 370
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_20

    .line 371
    invoke-virtual {v5, v3}, Lcom/anythink/core/common/f/au;->o(I)V

    goto :goto_20

    :cond_20
    const-string v4, "wfe_t_sw"

    .line 373
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v5, v4}, Lcom/anythink/core/common/f/au;->o(I)V

    :goto_20
    const-string v4, "ubp_sw"

    .line 379
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    const/4 v6, 0x2

    if-eqz v4, :cond_21

    .line 380
    invoke-virtual {v5, v6}, Lcom/anythink/core/common/f/au;->p(I)V

    goto :goto_21

    :cond_21
    const-string v4, "ubp_sw"

    .line 382
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v5, v4}, Lcom/anythink/core/common/f/au;->p(I)V

    :goto_21
    const-string v4, "bid_pl_sw"

    .line 389
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_22

    .line 390
    invoke-virtual {v5, v3}, Lcom/anythink/core/common/f/au;->f(I)V

    goto :goto_22

    :cond_22
    const-string v4, "bid_pl_sw"

    .line 392
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v5, v4}, Lcom/anythink/core/common/f/au;->f(I)V

    :goto_22
    const-string v4, "s2s_sw"

    .line 398
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_23

    .line 399
    invoke-virtual {v5, v6}, Lcom/anythink/core/common/f/au;->q(I)V

    goto :goto_23

    :cond_23
    const-string v4, "s2s_sw"

    .line 401
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v5, v4}, Lcom/anythink/core/common/f/au;->q(I)V

    :goto_23
    const-string v4, "i_sw"

    .line 406
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_24

    .line 407
    invoke-virtual {v5, v6}, Lcom/anythink/core/common/f/au;->s(I)V

    goto :goto_24

    :cond_24
    const-string v4, "i_sw"

    .line 409
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v5, v4}, Lcom/anythink/core/common/f/au;->s(I)V

    :goto_24
    const-string v4, "sp_ps"

    .line 415
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_25

    .line 416
    invoke-virtual {v5, v2}, Lcom/anythink/core/common/f/au;->r(I)V

    goto :goto_25

    :cond_25
    const-string v4, "sp_ps"

    .line 418
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v5, v4}, Lcom/anythink/core/common/f/au;->r(I)V

    :goto_25
    const-string v4, "rtcb_hbecpm"

    .line 424
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_26

    .line 425
    invoke-virtual {v5, v3}, Lcom/anythink/core/common/f/au;->t(I)V

    goto :goto_26

    :cond_26
    const-string v4, "rtcb_hbecpm"

    .line 427
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v5, v4}, Lcom/anythink/core/common/f/au;->t(I)V

    :goto_26
    const-string v4, "oid"

    .line 433
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_27

    .line 434
    invoke-virtual {v5, v8}, Lcom/anythink/core/common/f/au;->j(Ljava/lang/String;)V

    goto :goto_27

    :cond_27
    const-string v4, "oid"

    .line 436
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/anythink/core/common/f/au;->j(Ljava/lang/String;)V

    :goto_27
    const/4 v4, 0x7

    if-ne v0, v4, :cond_28

    .line 440
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/o;->f()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/core/common/d/c;->a(Landroid/content/Context;)Lcom/anythink/core/common/d/c;

    move-result-object v0

    invoke-virtual {v5}, Lcom/anythink/core/common/f/au;->u()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5}, Lcom/anythink/core/common/f/au;->U()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v4, v7}, Lcom/anythink/core/common/d/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_28
    const-string v0, "show_req"

    .line 446
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 447
    invoke-virtual {v5, v6}, Lcom/anythink/core/common/f/au;->u(I)V

    goto :goto_28

    :cond_29
    const-string v0, "show_req"

    .line 449
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v5, v0}, Lcom/anythink/core/common/f/au;->u(I)V

    :goto_28
    const-string v0, "ad_type"

    .line 455
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 456
    invoke-virtual {v5, v9}, Lcom/anythink/core/common/f/au;->v(I)V

    goto :goto_29

    :cond_2a
    const-string v0, "ad_type"

    .line 458
    invoke-virtual {v1, v0, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v5, v0}, Lcom/anythink/core/common/f/au;->v(I)V

    :goto_29
    const-string v0, "hb_preq_sw"

    .line 464
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 465
    invoke-virtual {v5, v9}, Lcom/anythink/core/common/f/au;->w(I)V

    goto :goto_2a

    :cond_2b
    const-string v0, "hb_preq_sw"

    .line 467
    invoke-virtual {v1, v0, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v5, v0}, Lcom/anythink/core/common/f/au;->w(I)V

    .line 473
    :goto_2a
    invoke-virtual {v5}, Lcom/anythink/core/common/f/au;->m()I

    move-result v0

    if-ne v0, v6, :cond_2d

    .line 474
    invoke-virtual {v5}, Lcom/anythink/core/common/f/au;->d()I

    move-result v0

    const/16 v4, 0x16

    if-ne v0, v4, :cond_2c

    .line 475
    sget-object v0, Lcom/anythink/core/api/ATAdConst$CURRENCY;->RMB_CENT:Lcom/anythink/core/api/ATAdConst$CURRENCY;

    invoke-virtual {v5, v0}, Lcom/anythink/core/common/f/au;->a(Lcom/anythink/core/api/ATAdConst$CURRENCY;)V

    goto :goto_2b

    .line 477
    :cond_2c
    sget-object v0, Lcom/anythink/core/api/ATAdConst$CURRENCY;->USD:Lcom/anythink/core/api/ATAdConst$CURRENCY;

    invoke-virtual {v5, v0}, Lcom/anythink/core/common/f/au;->a(Lcom/anythink/core/api/ATAdConst$CURRENCY;)V

    goto :goto_2b

    .line 480
    :cond_2d
    sget-object v0, Lcom/anythink/core/api/ATAdConst$CURRENCY;->USD:Lcom/anythink/core/api/ATAdConst$CURRENCY;

    invoke-virtual {v5, v0}, Lcom/anythink/core/common/f/au;->a(Lcom/anythink/core/api/ATAdConst$CURRENCY;)V

    :goto_2b
    const-string v0, "show_delay"

    .line 486
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 487
    invoke-virtual {v5, v2}, Lcom/anythink/core/common/f/au;->y(I)V

    goto :goto_2c

    :cond_2e
    const-string v0, "show_delay"

    .line 489
    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v5, v0}, Lcom/anythink/core/common/f/au;->y(I)V

    :goto_2c
    const-string v0, "bid_floor"

    .line 495
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 496
    invoke-virtual {v5, v14, v15}, Lcom/anythink/core/common/f/au;->c(D)V

    goto :goto_2d

    :cond_2f
    const-string v0, "bid_floor"

    .line 498
    invoke-virtual {v1, v0, v14, v15}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v7

    invoke-virtual {v5, v7, v8}, Lcom/anythink/core/common/f/au;->c(D)V

    :goto_2d
    const-string v0, "ntf_sl_sw"

    .line 504
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 505
    invoke-virtual {v5, v9}, Lcom/anythink/core/common/f/au;->z(I)V

    goto :goto_2e

    :cond_30
    const-string v0, "ntf_sl_sw"

    .line 507
    invoke-virtual {v1, v0, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v5, v0}, Lcom/anythink/core/common/f/au;->z(I)V

    :goto_2e
    const-string v0, "s_pty"

    .line 509
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 510
    invoke-virtual {v5}, Lcom/anythink/core/common/f/au;->y()D

    move-result-wide v7

    invoke-virtual {v5, v7, v8}, Lcom/anythink/core/common/f/au;->d(D)V

    goto :goto_2f

    .line 512
    :cond_31
    invoke-virtual {v5}, Lcom/anythink/core/common/f/au;->y()D

    move-result-wide v7

    const-string v0, "s_pty"

    invoke-virtual {v1, v0, v7, v8}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v7

    invoke-virtual {v5, v7, v8}, Lcom/anythink/core/common/f/au;->d(D)V

    :goto_2f
    const-string v0, "nw_cur"

    .line 518
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_32

    const-string v0, "CNY"

    .line 519
    invoke-virtual {v5, v0}, Lcom/anythink/core/common/f/au;->k(Ljava/lang/String;)V

    goto :goto_30

    :cond_32
    const-string v0, "nw_cur"

    const-string v4, "CNY"

    .line 521
    invoke-virtual {v1, v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/anythink/core/common/f/au;->k(Ljava/lang/String;)V

    :goto_30
    const-string v0, "wn_st_md_sw"

    .line 527
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 528
    invoke-virtual {v5, v6}, Lcom/anythink/core/common/f/au;->A(I)V

    goto :goto_31

    :cond_33
    const-string v0, "wn_st_md_sw"

    .line 530
    invoke-virtual {v1, v0, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v5, v0}, Lcom/anythink/core/common/f/au;->A(I)V

    :goto_31
    const-string v0, "ads_max_cache_num"

    .line 536
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 537
    invoke-virtual {v5, v3}, Lcom/anythink/core/common/f/au;->D(I)V

    goto :goto_32

    :cond_34
    const-string v0, "ads_max_cache_num"

    .line 539
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v5, v0}, Lcom/anythink/core/common/f/au;->D(I)V

    :goto_32
    const-string v0, "ilrd_est_sw"

    .line 545
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 546
    invoke-virtual {v5, v6}, Lcom/anythink/core/common/f/au;->E(I)V

    goto :goto_33

    :cond_35
    const-string v0, "ilrd_est_sw"

    .line 548
    invoke-virtual {v1, v0, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v5, v0}, Lcom/anythink/core/common/f/au;->E(I)V

    :goto_33
    const-string v0, "g_ra_label"

    .line 554
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_36

    const-string v0, "TopOn"

    .line 555
    invoke-virtual {v5, v0}, Lcom/anythink/core/common/f/au;->l(Ljava/lang/String;)V

    goto :goto_34

    :cond_36
    const-string v0, "g_ra_label"

    .line 557
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/anythink/core/common/f/au;->l(Ljava/lang/String;)V

    :goto_34
    const-wide/16 v7, 0x3a98

    const-string v0, "ad_auto_refresh_time"

    .line 563
    invoke-virtual {v1, v0, v7, v8}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v7

    invoke-virtual {v5, v7, v8}, Lcom/anythink/core/common/f/au;->k(J)V

    const/4 v0, 0x0

    const-string v4, "mix_click_type"

    .line 566
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_37

    const-string v4, "mix_click_type"

    .line 567
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    if-eqz v4, :cond_37

    .line 568
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-lez v7, :cond_37

    .line 570
    :try_start_0
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v7

    new-array v0, v7, [I

    .line 571
    :goto_35
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v2, v7, :cond_37

    .line 572
    invoke-virtual {v4, v2}, Lorg/json/JSONArray;->getInt(I)I

    move-result v7

    aput v7, v0, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_35

    :catch_0
    nop

    .line 578
    :cond_37
    invoke-virtual {v5, v0}, Lcom/anythink/core/common/f/au;->a([I)V

    const-string v0, "c_w_pr_rt"

    .line 583
    invoke-virtual {v1, v0, v14, v15}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v7

    const-wide/high16 v9, 0x4059000000000000L    # 100.0

    div-double/2addr v7, v9

    invoke-virtual {v5, v7, v8}, Lcom/anythink/core/common/f/au;->f(D)V

    const-string v0, "c_l_pr_rt"

    .line 584
    invoke-virtual {v1, v0, v14, v15}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v7

    div-double/2addr v7, v9

    invoke-virtual {v5, v7, v8}, Lcom/anythink/core/common/f/au;->g(D)V

    const-string v0, "s_w_pr_rt"

    .line 585
    invoke-virtual {v1, v0, v14, v15}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v7

    div-double/2addr v7, v9

    invoke-virtual {v5, v7, v8}, Lcom/anythink/core/common/f/au;->h(D)V

    const-string v0, "s_l_pr_rt"

    .line 586
    invoke-virtual {v1, v0, v14, v15}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v7

    div-double/2addr v7, v9

    invoke-virtual {v5, v7, v8}, Lcom/anythink/core/common/f/au;->i(D)V

    const-string v0, "w_nt_sw"

    .line 589
    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v5, v0}, Lcom/anythink/core/common/f/au;->F(I)V

    const-string v0, "l_nt_sw"

    .line 590
    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v5, v0}, Lcom/anythink/core/common/f/au;->G(I)V

    const-string v0, "c_m_urls"

    .line 592
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_38

    const-string v0, "c_m_urls"

    .line 593
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/anythink/core/common/f/au;->a(Lorg/json/JSONArray;)V

    :cond_38
    const-string v0, "sys_sp"

    .line 596
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_39

    const-string v0, "sys_sp"

    .line 597
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v5, v0}, Lcom/anythink/core/common/f/au;->H(I)V

    .line 603
    :cond_39
    invoke-virtual {v5}, Lcom/anythink/core/common/f/au;->d()I

    move-result v0

    const v1, 0x186a0

    if-lt v0, v1, :cond_3b

    .line 604
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v0

    invoke-virtual {v5}, Lcom/anythink/core/common/f/au;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/b/o;->b(Ljava/lang/String;)Lcom/anythink/core/api/ATCustomAdapterConfig;

    move-result-object v0

    if-eqz v0, :cond_3b

    .line 606
    invoke-virtual {v0}, Lcom/anythink/core/api/ATCustomAdapterConfig;->isRealTimeBidSwitch()Z

    move-result v1

    if-eqz v1, :cond_3a

    const/4 v3, 0x2

    :cond_3a
    invoke-virtual {v5, v3}, Lcom/anythink/core/common/f/au;->f(I)V

    .line 607
    invoke-virtual {v0}, Lcom/anythink/core/api/ATCustomAdapterConfig;->getAdCacheTime()J

    move-result-wide v1

    invoke-virtual {v5, v1, v2}, Lcom/anythink/core/common/f/au;->c(J)V

    .line 608
    invoke-virtual {v0}, Lcom/anythink/core/api/ATCustomAdapterConfig;->getLossNoticePostion()I

    move-result v1

    if-lez v1, :cond_3b

    .line 609
    invoke-virtual {v0}, Lcom/anythink/core/api/ATCustomAdapterConfig;->getLossNoticePostion()I

    move-result v0

    invoke-virtual {v5, v0}, Lcom/anythink/core/common/f/au;->z(I)V

    :cond_3b
    return-object v5
.end method

.method public static a(Lcom/anythink/core/d/e;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/anythink/core/d/e;",
            ")",
            "Ljava/util/List<",
            "Lcom/anythink/core/common/f/au;",
            ">;"
        }
    .end annotation

    .line 78
    invoke-virtual {p0}, Lcom/anythink/core/d/e;->aq()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x3

    invoke-static {p0, v0, v1, v2}, Lcom/anythink/core/d/k;->a(Lcom/anythink/core/d/e;Ljava/lang/String;II)Ljava/util/List;

    move-result-object v0

    .line 79
    invoke-virtual {p0}, Lcom/anythink/core/d/e;->O()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x4

    invoke-static {p0, v1, v2, v3}, Lcom/anythink/core/d/k;->a(Lcom/anythink/core/d/e;Ljava/lang/String;II)Ljava/util/List;

    move-result-object v1

    .line 80
    invoke-virtual {p0}, Lcom/anythink/core/d/e;->ar()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    invoke-static {p0, v3, v4, v4}, Lcom/anythink/core/d/k;->a(Lcom/anythink/core/d/e;Ljava/lang/String;II)Ljava/util/List;

    move-result-object v3

    .line 81
    invoke-virtual {p0}, Lcom/anythink/core/d/e;->M()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x5

    const/4 v6, 0x7

    invoke-static {p0, v4, v5, v6}, Lcom/anythink/core/d/k;->a(Lcom/anythink/core/d/e;Ljava/lang/String;II)Ljava/util/List;

    move-result-object v4

    .line 82
    invoke-virtual {p0}, Lcom/anythink/core/d/e;->E()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x6

    const/16 v9, 0xb

    invoke-static {p0, v7, v8, v9}, Lcom/anythink/core/d/k;->a(Lcom/anythink/core/d/e;Ljava/lang/String;II)Ljava/util/List;

    move-result-object v7

    .line 83
    invoke-virtual {p0}, Lcom/anythink/core/d/e;->ax()Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x8

    invoke-static {p0, v8, v6, v9}, Lcom/anythink/core/d/k;->a(Lcom/anythink/core/d/e;Ljava/lang/String;II)Ljava/util/List;

    move-result-object v6

    .line 84
    invoke-virtual {p0}, Lcom/anythink/core/d/e;->aA()Ljava/lang/String;

    move-result-object v8

    invoke-static {p0, v8, v2, v5}, Lcom/anythink/core/d/k;->a(Lcom/anythink/core/d/e;Ljava/lang/String;II)Ljava/util/List;

    move-result-object p0

    .line 86
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 87
    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 88
    invoke-interface {v0, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 89
    invoke-interface {v0, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 90
    invoke-interface {v0, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 91
    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method public static a(Lcom/anythink/core/d/e;Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/anythink/core/d/e;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/anythink/core/common/f/au;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x3

    const/4 v1, 0x4

    .line 112
    invoke-static {p0, p1, v0, v1}, Lcom/anythink/core/d/k;->a(Lcom/anythink/core/d/e;Ljava/lang/String;II)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static a(Lcom/anythink/core/d/e;Ljava/lang/String;II)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/anythink/core/d/e;",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/List<",
            "Lcom/anythink/core/common/f/au;",
            ">;"
        }
    .end annotation

    .line 135
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 137
    :try_start_0
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 141
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge p1, v2, :cond_1

    .line 142
    invoke-virtual {v1, p1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 146
    invoke-static {p3, p2, v2}, Lcom/anythink/core/d/k;->a(IILorg/json/JSONObject;)Lcom/anythink/core/common/f/au;

    move-result-object v2

    .line 147
    invoke-static {p0, v2}, Lcom/anythink/core/d/k;->a(Lcom/anythink/core/d/e;Lcom/anythink/core/common/f/au;)V

    .line 149
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :catch_0
    :cond_1
    return-object v0
.end method

.method private static a(Lcom/anythink/core/d/e;Lcom/anythink/core/common/f/au;)V
    .locals 5

    .line 61
    invoke-virtual {p1}, Lcom/anythink/core/common/f/au;->ad()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpg-double v4, v0, v2

    if-gtz v4, :cond_0

    if-eqz p0, :cond_0

    .line 63
    invoke-virtual {p0}, Lcom/anythink/core/d/e;->aD()D

    move-result-wide v0

    cmpl-double p0, v0, v2

    if-lez p0, :cond_0

    .line 65
    invoke-virtual {p1, v0, v1}, Lcom/anythink/core/common/f/au;->c(D)V

    :cond_0
    return-void
.end method

.method public static a(Lcom/anythink/core/d/e;Ljava/util/Map;Ljava/util/List;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/anythink/core/d/e;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/anythink/core/common/f/au;",
            ">;",
            "Ljava/util/List<",
            "Lcom/anythink/core/common/f/au;",
            ">;)V"
        }
    .end annotation

    .line 24
    invoke-virtual {p0}, Lcom/anythink/core/d/e;->ao()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-static/range {v0 .. v5}, Lcom/anythink/core/d/k;->a(Lcom/anythink/core/d/e;Ljava/util/Map;Ljava/util/List;Ljava/lang/String;II)V

    .line 25
    invoke-virtual {p0}, Lcom/anythink/core/d/e;->ap()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x6

    move-object v6, p0

    move-object v7, p1

    move-object v8, p2

    invoke-static/range {v6 .. v11}, Lcom/anythink/core/d/k;->a(Lcom/anythink/core/d/e;Ljava/util/Map;Ljava/util/List;Ljava/lang/String;II)V

    .line 26
    invoke-virtual {p0}, Lcom/anythink/core/d/e;->aq()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x3

    invoke-static/range {v0 .. v5}, Lcom/anythink/core/d/k;->a(Lcom/anythink/core/d/e;Ljava/util/Map;Ljava/util/List;Ljava/lang/String;II)V

    .line 27
    invoke-virtual {p0}, Lcom/anythink/core/d/e;->O()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x3

    const/4 v11, 0x4

    invoke-static/range {v6 .. v11}, Lcom/anythink/core/d/k;->a(Lcom/anythink/core/d/e;Ljava/util/Map;Ljava/util/List;Ljava/lang/String;II)V

    .line 28
    invoke-virtual {p0}, Lcom/anythink/core/d/e;->ar()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    const/4 v5, 0x2

    invoke-static/range {v0 .. v5}, Lcom/anythink/core/d/k;->a(Lcom/anythink/core/d/e;Ljava/util/Map;Ljava/util/List;Ljava/lang/String;II)V

    .line 29
    invoke-virtual {p0}, Lcom/anythink/core/d/e;->M()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x5

    const/4 v11, 0x7

    invoke-static/range {v6 .. v11}, Lcom/anythink/core/d/k;->a(Lcom/anythink/core/d/e;Ljava/util/Map;Ljava/util/List;Ljava/lang/String;II)V

    .line 30
    invoke-virtual {p0}, Lcom/anythink/core/d/e;->E()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x6

    const/16 v5, 0xb

    invoke-static/range {v0 .. v5}, Lcom/anythink/core/d/k;->a(Lcom/anythink/core/d/e;Ljava/util/Map;Ljava/util/List;Ljava/lang/String;II)V

    .line 31
    invoke-virtual {p0}, Lcom/anythink/core/d/e;->ax()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x7

    const/16 v11, 0x8

    invoke-static/range {v6 .. v11}, Lcom/anythink/core/d/k;->a(Lcom/anythink/core/d/e;Ljava/util/Map;Ljava/util/List;Ljava/lang/String;II)V

    .line 32
    invoke-virtual {p0}, Lcom/anythink/core/d/e;->aA()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    const/4 v5, 0x5

    invoke-static/range {v0 .. v5}, Lcom/anythink/core/d/k;->a(Lcom/anythink/core/d/e;Ljava/util/Map;Ljava/util/List;Ljava/lang/String;II)V

    .line 33
    invoke-virtual {p0}, Lcom/anythink/core/d/e;->z()Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x8

    const/16 v11, 0xa

    invoke-static/range {v6 .. v11}, Lcom/anythink/core/d/k;->a(Lcom/anythink/core/d/e;Ljava/util/Map;Ljava/util/List;Ljava/lang/String;II)V

    .line 34
    invoke-virtual {p0}, Lcom/anythink/core/d/e;->s()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    const/16 v5, 0x9

    invoke-static/range {v0 .. v5}, Lcom/anythink/core/d/k;->a(Lcom/anythink/core/d/e;Ljava/util/Map;Ljava/util/List;Ljava/lang/String;II)V

    return-void
.end method

.method private static a(Lcom/anythink/core/d/e;Ljava/util/Map;Ljava/util/List;Ljava/lang/String;II)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/anythink/core/d/e;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/anythink/core/common/f/au;",
            ">;",
            "Ljava/util/List<",
            "Lcom/anythink/core/common/f/au;",
            ">;",
            "Ljava/lang/String;",
            "II)V"
        }
    .end annotation

    .line 40
    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, p3}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 p3, 0x0

    .line 41
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge p3, v1, :cond_2

    .line 42
    invoke-virtual {v0, p3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 46
    invoke-static {p5, p4, v1}, Lcom/anythink/core/d/k;->a(IILorg/json/JSONObject;)Lcom/anythink/core/common/f/au;

    move-result-object v1

    .line 47
    invoke-virtual {v1}, Lcom/anythink/core/common/f/au;->u()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    invoke-virtual {v1}, Lcom/anythink/core/common/f/au;->d()I

    move-result v2

    const/16 v3, 0x23

    if-ne v2, v3, :cond_0

    .line 49
    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    :cond_0
    invoke-static {p0, v1}, Lcom/anythink/core/d/k;->a(Lcom/anythink/core/d/e;Lcom/anythink/core/common/f/au;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :catchall_0
    :cond_2
    return-void
.end method

.method public static b(Lcom/anythink/core/d/e;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/anythink/core/d/e;",
            ")",
            "Ljava/util/List<",
            "Lcom/anythink/core/common/f/au;",
            ">;"
        }
    .end annotation

    .line 97
    invoke-virtual {p0}, Lcom/anythink/core/d/e;->ao()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {p0, v0, v1, v2}, Lcom/anythink/core/d/k;->a(Lcom/anythink/core/d/e;Ljava/lang/String;II)Ljava/util/List;

    move-result-object v0

    .line 98
    invoke-virtual {p0}, Lcom/anythink/core/d/e;->ap()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    const/4 v3, 0x6

    invoke-static {p0, v1, v2, v3}, Lcom/anythink/core/d/k;->a(Lcom/anythink/core/d/e;Ljava/lang/String;II)Ljava/util/List;

    move-result-object p0

    .line 100
    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 102
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    return-object v0
.end method

.method public static c(Lcom/anythink/core/d/e;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/anythink/core/d/e;",
            ")",
            "Ljava/util/List<",
            "Lcom/anythink/core/common/f/au;",
            ">;"
        }
    .end annotation

    .line 108
    invoke-virtual {p0}, Lcom/anythink/core/d/e;->z()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x8

    const/16 v2, 0xa

    invoke-static {p0, v0, v1, v2}, Lcom/anythink/core/d/k;->a(Lcom/anythink/core/d/e;Ljava/lang/String;II)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static d(Lcom/anythink/core/d/e;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/anythink/core/d/e;",
            ")",
            "Ljava/util/List<",
            "Lcom/anythink/core/common/f/au;",
            ">;"
        }
    .end annotation

    .line 116
    invoke-virtual {p0}, Lcom/anythink/core/d/e;->s()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    const/16 v2, 0x9

    invoke-static {p0, v0, v1, v2}, Lcom/anythink/core/d/k;->a(Lcom/anythink/core/d/e;Ljava/lang/String;II)Ljava/util/List;

    move-result-object p0

    .line 120
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/anythink/core/common/f/au;

    .line 121
    invoke-virtual {v1}, Lcom/anythink/core/common/f/au;->ai()V

    goto :goto_0

    :cond_0
    return-object p0
.end method
