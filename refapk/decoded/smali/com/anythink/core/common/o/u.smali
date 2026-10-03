.class public final Lcom/anythink/core/common/o/u;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/anythink/core/api/ATBaseAdAdapter;Lcom/anythink/core/common/f/h;Lcom/anythink/core/common/f/au;)Lcom/anythink/core/common/f/h;
    .locals 1

    .line 140
    invoke-virtual {p0, p2}, Lcom/anythink/core/api/ATBaseAdAdapter;->setUnitGroupInfo(Lcom/anythink/core/common/f/au;)V

    .line 141
    invoke-virtual {p1}, Lcom/anythink/core/common/f/h;->K()I

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/anythink/core/api/ATBaseAdAdapter;->setRefresh(Z)V

    .line 144
    :try_start_0
    invoke-virtual {p0}, Lcom/anythink/core/api/ATBaseAdAdapter;->getInternalNetworkSDKVersion()Ljava/lang/String;

    move-result-object p2

    .line 3582
    iput-object p2, p1, Lcom/anythink/core/common/f/h;->u:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    nop

    .line 149
    :goto_1
    invoke-virtual {p1}, Lcom/anythink/core/common/f/h;->Z()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 150
    invoke-virtual {p0}, Lcom/anythink/core/api/ATBaseAdAdapter;->getInternalNetworkName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/anythink/core/common/f/h;->u(Ljava/lang/String;)V

    .line 152
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/anythink/core/common/f/h;->e(Ljava/lang/String;)V

    .line 154
    invoke-virtual {p0, p1}, Lcom/anythink/core/api/ATBaseAdAdapter;->setTrackingInfo(Lcom/anythink/core/common/f/h;)V

    return-object p1
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Lcom/anythink/core/d/e;IILjava/util/Map;Lcom/anythink/core/common/f/c;)Lcom/anythink/core/common/f/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/anythink/core/d/e;",
            "II",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/anythink/core/common/f/c;",
            ")",
            "Lcom/anythink/core/common/f/h;"
        }
    .end annotation

    .line 51
    new-instance v0, Lcom/anythink/core/common/f/h;

    invoke-direct {v0}, Lcom/anythink/core/common/f/h;-><init>()V

    .line 52
    invoke-virtual {v0, p1}, Lcom/anythink/core/common/f/h;->w(Ljava/lang/String;)V

    .line 53
    invoke-virtual {v0, p0}, Lcom/anythink/core/common/f/h;->x(Ljava/lang/String;)V

    .line 57
    invoke-virtual {v0, p3}, Lcom/anythink/core/common/f/h;->x(I)V

    const/4 p0, 0x0

    .line 1730
    iput p0, v0, Lcom/anythink/core/common/f/h;->r:I

    const/4 p1, 0x2

    .line 2721
    iput p1, v0, Lcom/anythink/core/common/f/h;->q:I

    .line 2739
    iput p0, v0, Lcom/anythink/core/common/f/h;->s:I

    .line 63
    invoke-static {v0, p2}, Lcom/anythink/core/common/o/u;->a(Lcom/anythink/core/common/f/h;Lcom/anythink/core/d/e;)V

    .line 65
    invoke-virtual {v0}, Lcom/anythink/core/common/f/h;->X()V

    .line 66
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object p0

    invoke-virtual {p0}, Lcom/anythink/core/common/b/o;->i()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/anythink/core/common/f/h;->K(I)V

    .line 68
    invoke-virtual {v0, p4}, Lcom/anythink/core/common/f/h;->L(I)V

    if-eqz p2, :cond_0

    .line 70
    invoke-virtual {p2}, Lcom/anythink/core/d/e;->f()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/anythink/core/common/f/h;->I(I)V

    goto :goto_0

    .line 72
    :cond_0
    invoke-virtual {v0, p1}, Lcom/anythink/core/common/f/h;->I(I)V

    .line 76
    :goto_0
    invoke-static {p5, v0}, Lcom/anythink/core/common/o/u;->a(Ljava/util/Map;Lcom/anythink/core/common/f/h;)V

    .line 79
    invoke-virtual {v0, p6}, Lcom/anythink/core/common/f/h;->a(Lcom/anythink/core/common/f/c;)V

    return-object v0
.end method

.method public static a(Landroid/content/Context;Lcom/anythink/core/common/f/h;)V
    .locals 8

    .line 368
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 369
    invoke-virtual {p1}, Lcom/anythink/core/common/f/h;->ae()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 370
    invoke-static {p0}, Lcom/anythink/core/a/a;->a(Landroid/content/Context;)Lcom/anythink/core/a/a;

    move-result-object v3

    invoke-virtual {p1}, Lcom/anythink/core/common/f/h;->ae()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/anythink/core/a/a;->a(I)[I

    move-result-object v3

    const/4 v4, 0x0

    .line 371
    aget v5, v3, v4

    const/4 v6, 0x1

    .line 372
    aget v3, v3, v6

    .line 374
    invoke-static {p0}, Lcom/anythink/core/a/a;->a(Landroid/content/Context;)Lcom/anythink/core/a/a;

    move-result-object p0

    invoke-virtual {p1}, Lcom/anythink/core/common/f/h;->ac()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7, v2}, Lcom/anythink/core/a/a;->a(Ljava/lang/String;I)Lcom/anythink/core/common/f/an;

    move-result-object p0

    add-int/2addr v5, v6

    .line 376
    invoke-virtual {p1, v5}, Lcom/anythink/core/common/f/h;->j(I)V

    add-int/2addr v3, v6

    .line 377
    invoke-virtual {p1, v3}, Lcom/anythink/core/common/f/h;->k(I)V

    if-eqz p0, :cond_0

    .line 378
    iget v2, p0, Lcom/anythink/core/common/f/an;->c:I

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    add-int/2addr v2, v6

    invoke-virtual {p1, v2}, Lcom/anythink/core/common/f/h;->l(I)V

    if-eqz p0, :cond_1

    .line 379
    iget v4, p0, Lcom/anythink/core/common/f/an;->d:I

    :cond_1
    add-int/2addr v4, v6

    invoke-virtual {p1, v4}, Lcom/anythink/core/common/f/h;->m(I)V

    .line 380
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "Check cap waite time:"

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    return-void
.end method

.method public static a(Lcom/anythink/core/common/f/h;Lcom/anythink/core/common/f/au;IZ)V
    .locals 5

    const-string v0, "0"

    .line 166
    invoke-virtual {p0}, Lcom/anythink/core/common/f/h;->ae()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-eqz p3, :cond_0

    .line 168
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object p3

    invoke-virtual {p3}, Lcom/anythink/core/common/b/o;->f()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3}, Lcom/anythink/core/a/a;->a(Landroid/content/Context;)Lcom/anythink/core/a/a;

    move-result-object p3

    invoke-virtual {p0}, Lcom/anythink/core/common/f/h;->ac()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/anythink/core/common/f/au;->u()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v2, v3, v1}, Lcom/anythink/core/a/a;->a(Ljava/lang/String;Ljava/lang/String;I)Lcom/anythink/core/common/f/an$a;

    move-result-object p3

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    .line 171
    :goto_0
    invoke-virtual {p1}, Lcom/anythink/core/common/f/au;->a()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/anythink/core/common/f/h;->f(I)V

    .line 172
    invoke-virtual {p1}, Lcom/anythink/core/common/f/au;->m()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/anythink/core/common/f/h;->e(I)V

    .line 173
    invoke-virtual {p1}, Lcom/anythink/core/common/f/au;->d()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/anythink/core/common/f/h;->y(I)V

    .line 174
    invoke-virtual {p1}, Lcom/anythink/core/common/f/au;->u()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/anythink/core/common/f/h;->l(Ljava/lang/String;)V

    .line 175
    invoke-virtual {p1}, Lcom/anythink/core/common/f/au;->D()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/anythink/core/common/f/h;->p(I)V

    .line 176
    invoke-virtual {p1}, Lcom/anythink/core/common/f/au;->E()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/anythink/core/common/f/h;->q(I)V

    .line 177
    invoke-virtual {p1}, Lcom/anythink/core/common/f/au;->S()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/anythink/core/common/f/h;->i(I)V

    .line 178
    invoke-virtual {p0, p2}, Lcom/anythink/core/common/f/h;->s(I)V

    .line 179
    invoke-virtual {p1}, Lcom/anythink/core/common/f/au;->h()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/anythink/core/common/f/h;->n(Ljava/lang/String;)V

    const/4 p2, 0x0

    if-eqz p3, :cond_1

    .line 180
    iget v1, p3, Lcom/anythink/core/common/f/an$a;->e:I

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {p0, v1}, Lcom/anythink/core/common/f/h;->u(I)V

    if-eqz p3, :cond_2

    .line 181
    iget p2, p3, Lcom/anythink/core/common/f/an$a;->d:I

    :cond_2
    invoke-virtual {p0, p2}, Lcom/anythink/core/common/f/h;->v(I)V

    .line 184
    invoke-virtual {p1}, Lcom/anythink/core/common/f/au;->L()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 193
    invoke-virtual {p1}, Lcom/anythink/core/common/f/au;->ao()Z

    move-result p2

    invoke-virtual {p0, p2}, Lcom/anythink/core/common/f/h;->a(Z)V

    .line 194
    invoke-virtual {p1}, Lcom/anythink/core/common/f/au;->y()D

    move-result-wide p2

    invoke-virtual {p0, p2, p3}, Lcom/anythink/core/common/f/h;->f(D)V

    .line 195
    invoke-virtual {p1}, Lcom/anythink/core/common/f/au;->af()D

    move-result-wide p2

    invoke-virtual {p0, p2, p3}, Lcom/anythink/core/common/f/h;->c(D)V

    goto :goto_2

    :cond_3
    const-wide/16 p2, 0x0

    .line 198
    invoke-virtual {p0, p2, p3}, Lcom/anythink/core/common/f/h;->f(D)V

    .line 199
    invoke-virtual {p0, p2, p3}, Lcom/anythink/core/common/f/h;->c(D)V

    .line 203
    :goto_2
    invoke-virtual {p1}, Lcom/anythink/core/common/f/au;->k()Z

    move-result p2

    if-eqz p2, :cond_6

    .line 204
    invoke-virtual {p1}, Lcom/anythink/core/common/f/au;->T()I

    move-result p2

    const/4 p3, 0x2

    if-eq p2, p3, :cond_5

    .line 207
    invoke-virtual {p1}, Lcom/anythink/core/common/f/au;->Z()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 208
    invoke-virtual {p1}, Lcom/anythink/core/common/f/au;->M()Lcom/anythink/core/common/f/q;

    move-result-object p2

    if-eqz p2, :cond_5

    .line 210
    iget-wide v1, p2, Lcom/anythink/core/common/f/q;->o:D

    invoke-virtual {p0}, Lcom/anythink/core/common/f/h;->l()D

    move-result-wide v3

    mul-double v1, v1, v3

    invoke-virtual {p0, v1, v2}, Lcom/anythink/core/common/f/h;->d(D)V

    .line 211
    iget-object p2, p2, Lcom/anythink/core/common/f/q;->p:Ljava/lang/String;

    invoke-virtual {p0, p2}, Lcom/anythink/core/common/f/h;->i(Ljava/lang/String;)V

    goto :goto_3

    .line 214
    :cond_4
    invoke-virtual {p1}, Lcom/anythink/core/common/f/au;->y()D

    move-result-wide p2

    invoke-virtual {p0}, Lcom/anythink/core/common/f/h;->l()D

    move-result-wide v1

    mul-double p2, p2, v1

    invoke-virtual {p0, p2, p3}, Lcom/anythink/core/common/f/h;->d(D)V

    const-string p2, "exact"

    .line 215
    invoke-virtual {p0, p2}, Lcom/anythink/core/common/f/h;->i(Ljava/lang/String;)V

    .line 218
    :cond_5
    :goto_3
    invoke-virtual {p1}, Lcom/anythink/core/common/f/au;->ad()D

    move-result-wide p2

    invoke-virtual {p0}, Lcom/anythink/core/common/f/h;->l()D

    move-result-wide v1

    mul-double p2, p2, v1

    invoke-virtual {p0, p2, p3}, Lcom/anythink/core/common/f/h;->a(D)V

    goto :goto_4

    .line 220
    :cond_6
    invoke-virtual {p1}, Lcom/anythink/core/common/f/au;->J()D

    move-result-wide p2

    invoke-virtual {p0, p2, p3}, Lcom/anythink/core/common/f/h;->d(D)V

    .line 221
    invoke-virtual {p1}, Lcom/anythink/core/common/f/au;->G()Ljava/lang/String;

    move-result-object p2

    .line 222
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_7

    const-string p2, "publisher_defined"

    .line 225
    :cond_7
    invoke-virtual {p0, p2}, Lcom/anythink/core/common/f/h;->i(Ljava/lang/String;)V

    .line 229
    :goto_4
    invoke-virtual {p1}, Lcom/anythink/core/common/f/au;->j()I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/anythink/core/common/f/h;->r(I)V

    .line 230
    invoke-virtual {p1}, Lcom/anythink/core/common/f/au;->z()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/anythink/core/common/f/h;->f(Ljava/lang/String;)V

    .line 231
    invoke-virtual {p1}, Lcom/anythink/core/common/f/au;->v()Ljava/lang/String;

    move-result-object p2

    .line 4162
    iput-object p2, p0, Lcom/anythink/core/common/f/at;->an:Ljava/lang/String;

    .line 232
    invoke-virtual {p1}, Lcom/anythink/core/common/f/au;->w()I

    move-result p2

    .line 4170
    iput p2, p0, Lcom/anythink/core/common/f/at;->ao:I

    .line 233
    invoke-virtual {p1}, Lcom/anythink/core/common/f/au;->x()I

    move-result p2

    .line 4178
    iput p2, p0, Lcom/anythink/core/common/f/at;->ap:I

    .line 234
    invoke-virtual {p1}, Lcom/anythink/core/common/f/au;->F()I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/anythink/core/common/f/h;->n(I)V

    .line 237
    invoke-virtual {p1}, Lcom/anythink/core/common/f/au;->T()I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/anythink/core/common/f/h;->h(I)V

    .line 240
    :try_start_0
    new-instance p2, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/anythink/core/common/f/au;->h()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 241
    new-instance p3, Lorg/json/JSONObject;

    invoke-direct {p3}, Lorg/json/JSONObject;-><init>()V

    const/16 v1, 0x23

    .line 243
    invoke-virtual {p1}, Lcom/anythink/core/common/f/au;->d()I

    move-result v2

    if-ne v1, v2, :cond_8

    const-string v1, "my_oid"

    .line 245
    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 247
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v2

    invoke-virtual {v2}, Lcom/anythink/core/common/b/o;->f()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/anythink/core/d/f;->a(Landroid/content/Context;)Lcom/anythink/core/d/f;

    move-result-object v2

    invoke-virtual {p0}, Lcom/anythink/core/common/f/h;->ac()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/anythink/core/d/f;->a(Ljava/lang/String;)Lcom/anythink/core/d/e;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 249
    invoke-virtual {v2, v1}, Lcom/anythink/core/d/e;->b(Ljava/lang/String;)Lcom/anythink/core/common/f/z;

    move-result-object v2

    if-eqz v2, :cond_8

    const-string v3, "o_id"

    .line 253
    invoke-virtual {p3, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "c_id"

    .line 254
    invoke-virtual {v2}, Lcom/anythink/core/common/f/z;->t()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 259
    :cond_8
    invoke-virtual {p0}, Lcom/anythink/core/common/f/h;->ae()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    const/4 v1, 0x3

    .line 261
    invoke-virtual {p1}, Lcom/anythink/core/common/f/au;->m()I

    move-result v2

    if-eq v1, v2, :cond_9

    const/4 v1, 0x7

    invoke-virtual {p1}, Lcom/anythink/core/common/f/au;->m()I

    move-result v2

    if-ne v1, v2, :cond_c

    :cond_9
    const-string v1, "layout_type"

    .line 262
    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 263
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    :cond_a
    const-string p2, "2"

    :cond_b
    const-string v0, "tpl_type"

    .line 266
    invoke-virtual {p3, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_c
    const/16 p2, 0x1c

    .line 270
    invoke-virtual {p1}, Lcom/anythink/core/common/f/au;->d()I

    move-result v0

    if-ne p2, v0, :cond_d

    .line 271
    invoke-virtual {p1}, Lcom/anythink/core/common/f/au;->M()Lcom/anythink/core/common/f/q;

    move-result-object p2

    if-eqz p2, :cond_d

    const-string v0, "origin_price"

    .line 273
    iget-wide v1, p2, Lcom/anythink/core/common/f/q;->originPrice:D

    invoke-virtual {p3, v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 278
    :cond_d
    invoke-virtual {p3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/anythink/core/common/f/h;->p(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_5

    :catchall_0
    nop

    .line 284
    :goto_5
    invoke-virtual {p1}, Lcom/anythink/core/common/f/au;->M()Lcom/anythink/core/common/f/q;

    move-result-object p2

    if-eqz p2, :cond_e

    .line 285
    iget-object p2, p2, Lcom/anythink/core/common/f/q;->g:Ljava/lang/String;

    goto :goto_6

    :cond_e
    const-string p2, ""

    :goto_6
    invoke-virtual {p0, p2}, Lcom/anythink/core/common/f/h;->c(Ljava/lang/String;)V

    .line 287
    invoke-virtual {p1}, Lcom/anythink/core/common/f/au;->W()I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/anythink/core/common/f/h;->A(I)V

    .line 289
    invoke-virtual {p1}, Lcom/anythink/core/common/f/au;->e()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/anythink/core/common/f/h;->u(Ljava/lang/String;)V

    return-void
.end method

.method private static a(Lcom/anythink/core/common/f/h;Lcom/anythink/core/common/f/az;)V
    .locals 1

    if-eqz p0, :cond_0

    .line 355
    invoke-virtual {p1}, Lcom/anythink/core/common/f/az;->e()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/anythink/core/common/f/h;->c(I)V

    .line 356
    invoke-virtual {p1}, Lcom/anythink/core/common/f/az;->f()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/anythink/core/common/f/h;->d(I)V

    :cond_0
    return-void
.end method

.method public static a(Lcom/anythink/core/common/f/h;Lcom/anythink/core/d/e;)V
    .locals 3

    if-eqz p0, :cond_3

    if-eqz p1, :cond_3

    .line 302
    invoke-virtual {p1}, Lcom/anythink/core/d/e;->ag()I

    move-result v0

    const-string v1, "1"

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-ne v0, v2, :cond_0

    .line 303
    invoke-virtual {p0, v1}, Lcom/anythink/core/common/f/h;->o(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, "0"

    .line 305
    invoke-virtual {p0, v0}, Lcom/anythink/core/common/f/h;->o(Ljava/lang/String;)V

    .line 308
    :goto_0
    invoke-virtual {p1}, Lcom/anythink/core/d/e;->Y()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/anythink/core/common/f/h;->M(I)V

    .line 309
    invoke-virtual {p1}, Lcom/anythink/core/d/e;->ad()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/anythink/core/common/f/h;->v(Ljava/lang/String;)V

    .line 310
    invoke-virtual {p1}, Lcom/anythink/core/d/e;->an()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/anythink/core/common/f/h;->z(I)V

    .line 311
    invoke-virtual {p1}, Lcom/anythink/core/d/e;->ag()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/anythink/core/common/f/h;->y(Ljava/lang/String;)V

    .line 313
    invoke-virtual {p1}, Lcom/anythink/core/d/e;->U()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/anythink/core/common/f/h;->j(Ljava/lang/String;)V

    .line 314
    invoke-virtual {p1}, Lcom/anythink/core/d/e;->T()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/anythink/core/common/f/h;->k(Ljava/lang/String;)V

    .line 315
    invoke-virtual {p1}, Lcom/anythink/core/d/e;->J()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/anythink/core/common/f/h;->e(D)V

    .line 316
    invoke-virtual {p1}, Lcom/anythink/core/d/e;->K()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/anythink/core/common/f/h;->d(Ljava/lang/String;)V

    .line 318
    invoke-virtual {p1}, Lcom/anythink/core/d/e;->S()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/anythink/core/common/f/h;->c(Ljava/util/Map;)V

    .line 319
    invoke-virtual {p1}, Lcom/anythink/core/d/e;->V()Lcom/anythink/core/api/ATRewardInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/anythink/core/common/f/h;->a(Lcom/anythink/core/api/ATRewardInfo;)V

    .line 320
    invoke-virtual {p1}, Lcom/anythink/core/d/e;->W()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/anythink/core/common/f/h;->d(Ljava/util/Map;)V

    .line 322
    invoke-virtual {p1}, Lcom/anythink/core/d/e;->w()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/anythink/core/common/f/h;->c(I)V

    .line 323
    invoke-virtual {p1}, Lcom/anythink/core/d/e;->x()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/anythink/core/common/f/h;->d(I)V

    .line 326
    invoke-virtual {p1}, Lcom/anythink/core/d/e;->o()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/anythink/core/common/f/h;->s(Ljava/lang/String;)V

    .line 329
    invoke-virtual {p1}, Lcom/anythink/core/d/e;->aH()Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 331
    invoke-virtual {p0, v0}, Lcom/anythink/core/common/f/h;->a(Lorg/json/JSONObject;)V

    .line 334
    :cond_1
    invoke-virtual {p1}, Lcom/anythink/core/d/e;->f()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/anythink/core/common/f/h;->I(I)V

    .line 337
    invoke-static {}, Lcom/anythink/core/common/w;->a()Lcom/anythink/core/common/w;

    move-result-object v0

    invoke-virtual {p0}, Lcom/anythink/core/common/f/h;->ac()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/w;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    .line 338
    invoke-virtual {p0, v0}, Lcom/anythink/core/common/f/h;->b(I)V

    goto :goto_1

    :cond_2
    const/4 v0, 0x1

    .line 340
    invoke-virtual {p0, v0}, Lcom/anythink/core/common/f/h;->b(I)V

    .line 343
    :goto_1
    invoke-virtual {p1}, Lcom/anythink/core/d/e;->aS()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/anythink/core/common/f/h;->H(I)V

    :cond_3
    return-void
.end method

.method public static a(Ljava/lang/String;Lcom/anythink/core/common/f/h;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 121
    :cond_0
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/o;->f()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/core/d/f;->a(Landroid/content/Context;)Lcom/anythink/core/d/f;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/anythink/core/d/f;->a(Ljava/lang/String;)Lcom/anythink/core/d/e;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 122
    invoke-virtual {v0}, Lcom/anythink/core/d/e;->aV()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 125
    invoke-static {p0, v0, p1}, Lcom/anythink/core/common/o/u;->a(Ljava/lang/String;Lcom/anythink/core/d/e;Lcom/anythink/core/common/f/h;)V

    :cond_1
    return-void
.end method

.method public static a(Ljava/lang/String;Lcom/anythink/core/d/e;Lcom/anythink/core/common/f/h;)V
    .locals 2

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 109
    :cond_0
    new-instance v0, Lcom/anythink/core/common/f/c;

    invoke-direct {v0}, Lcom/anythink/core/common/f/c;-><init>()V

    .line 110
    invoke-virtual {p1}, Lcom/anythink/core/d/e;->an()I

    move-result v1

    invoke-virtual {p1}, Lcom/anythink/core/d/e;->Y()I

    move-result p1

    invoke-virtual {v0, p0, v1, p1}, Lcom/anythink/core/common/f/c;->a(Ljava/lang/String;II)V

    .line 112
    invoke-virtual {p2, v0}, Lcom/anythink/core/common/f/h;->a(Lcom/anythink/core/common/f/c;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static a(Ljava/util/Map;Lcom/anythink/core/common/f/h;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/anythink/core/common/f/h;",
            ")V"
        }
    .end annotation

    if-eqz p0, :cond_2

    const-string v0, "cp_placement_id"

    .line 86
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 88
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/anythink/core/common/f/h;->t(Ljava/lang/String;)V

    :cond_0
    const-string v0, "cp_pre_md"

    .line 91
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 92
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_1

    .line 93
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/anythink/core/common/f/h;->J(I)V

    :cond_1
    const-string v0, "cp_event_callback_info"

    .line 96
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 98
    invoke-virtual {p1, p0}, Lcom/anythink/core/common/f/h;->a(Ljava/lang/Object;)V

    :cond_2
    return-void
.end method
