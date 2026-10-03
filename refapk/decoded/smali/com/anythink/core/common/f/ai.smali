.class public abstract Lcom/anythink/core/common/f/ai;
.super Lcom/anythink/core/common/f/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/anythink/core/common/f/l<",
        "Lcom/anythink/core/common/f/aj;",
        ">;"
    }
.end annotation


# static fields
.field public static final ac:I = 0x1

.field public static final ad:I = 0x2

.field public static final ae:I = 0x3

.field public static final af:I = 0x4

.field public static final ag:I = 0x5

.field public static final ah:I = 0x6


# instance fields
.field private W:I

.field private X:I

.field Y:J

.field Z:Ljava/lang/String;

.field private a:I

.field aa:Ljava/lang/String;

.field ab:I

.field ai:Ljava/lang/String;

.field aj:Ljava/lang/String;

.field ak:Lcom/anythink/core/common/f/ak;

.field al:I

.field am:Ljava/lang/String;

.field an:J

.field ao:J

.field ap:J

.field aq:Ljava/lang/String;

.field private ar:Ljava/lang/String;

.field private as:Ljava/lang/String;

.field private at:Ljava/lang/String;

.field private au:Ljava/lang/String;

.field private av:Ljava/lang/String;

.field private aw:I

.field private ax:I

.field private b:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Lcom/anythink/core/common/f/l;-><init>()V

    const-string v0, ""

    .line 237
    iput-object v0, p0, Lcom/anythink/core/common/f/ai;->aq:Ljava/lang/String;

    return-void
.end method

.method private a()J
    .locals 2

    .line 103
    iget-wide v0, p0, Lcom/anythink/core/common/f/ai;->an:J

    return-wide v0
.end method

.method private a(Lcom/anythink/core/common/f/aj;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/anythink/core/common/f/aj;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 241
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 243
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 257
    invoke-virtual {p1}, Lcom/anythink/core/common/f/aj;->z()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "1"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, "full_u,"

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_8

    .line 258
    invoke-virtual {p0}, Lcom/anythink/core/common/f/ai;->j()Z

    move-result v2

    if-nez v2, :cond_3

    .line 259
    iget-object v2, p0, Lcom/anythink/core/common/f/ai;->l:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 260
    iget-object v2, p0, Lcom/anythink/core/common/f/ai;->l:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 263
    :cond_0
    iget-object v2, p0, Lcom/anythink/core/common/f/ai;->o:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 264
    iget-object v2, p0, Lcom/anythink/core/common/f/ai;->o:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 267
    :cond_1
    iget-object v2, p0, Lcom/anythink/core/common/f/ai;->n:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 268
    iget-object v2, p0, Lcom/anythink/core/common/f/ai;->n:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 270
    :cond_2
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v2, 0x1

    .line 274
    :goto_1
    iget-object v6, p0, Lcom/anythink/core/common/f/ai;->q:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 275
    iget-object v6, p0, Lcom/anythink/core/common/f/ai;->q:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 276
    :cond_4
    invoke-virtual {p1}, Lcom/anythink/core/common/f/aj;->aj()I

    move-result v6

    if-eq v6, v4, :cond_6

    invoke-virtual {p1}, Lcom/anythink/core/common/f/aj;->ak()I

    move-result v6

    if-lez v6, :cond_5

    goto :goto_3

    :cond_5
    const-string v2, "video_u,"

    .line 291
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_2
    const/4 v2, 0x0

    goto :goto_4

    .line 279
    :cond_6
    :goto_3
    invoke-virtual {p1}, Lcom/anythink/core/common/f/aj;->ak()I

    move-result v6

    if-eq v6, v4, :cond_9

    .line 280
    iget-object v6, p0, Lcom/anythink/core/common/f/ai;->n:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_7

    .line 281
    iget-object v6, p0, Lcom/anythink/core/common/f/ai;->n:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_9

    .line 282
    iget-object v6, p0, Lcom/anythink/core/common/f/ai;->n:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 285
    :cond_7
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_8
    const/4 v2, 0x1

    .line 296
    :cond_9
    :goto_4
    invoke-virtual {p1}, Lcom/anythink/core/common/f/aj;->z()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "3"

    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 297
    invoke-virtual {p0}, Lcom/anythink/core/common/f/ai;->j()Z

    move-result v6

    if-nez v6, :cond_d

    .line 298
    iget-object v6, p0, Lcom/anythink/core/common/f/ai;->l:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_a

    .line 299
    iget-object v6, p0, Lcom/anythink/core/common/f/ai;->l:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 302
    :cond_a
    iget-object v6, p0, Lcom/anythink/core/common/f/ai;->o:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_b

    .line 303
    iget-object v6, p0, Lcom/anythink/core/common/f/ai;->o:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 306
    :cond_b
    iget-object v6, p0, Lcom/anythink/core/common/f/ai;->n:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_c

    .line 307
    iget-object v6, p0, Lcom/anythink/core/common/f/ai;->n:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 309
    :cond_c
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    .line 314
    :cond_d
    :goto_5
    invoke-virtual {p0}, Lcom/anythink/core/common/f/ai;->H()Z

    move-result v6

    if-eqz v6, :cond_e

    .line 315
    iget-object v6, p0, Lcom/anythink/core/common/f/ai;->q:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 320
    :cond_e
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/anythink/core/common/f/aj;->z()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "2"

    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_17

    .line 1213
    iget v6, p0, Lcom/anythink/core/common/f/ai;->ab:I

    if-eq v6, v4, :cond_14

    const/4 v7, 0x2

    if-eq v6, v7, :cond_13

    const/4 v7, 0x3

    if-eq v6, v7, :cond_f

    const/4 v7, 0x4

    if-eq v6, v7, :cond_13

    goto :goto_7

    .line 332
    :cond_f
    invoke-virtual {p1}, Lcom/anythink/core/common/f/aj;->x()Ljava/lang/String;

    move-result-object v6

    const-string v7, "320x50"

    invoke-static {v7, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_11

    .line 333
    iget-object v6, p0, Lcom/anythink/core/common/f/ai;->l:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_10

    .line 334
    iget-object v6, p0, Lcom/anythink/core/common/f/ai;->l:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_10
    const-string v2, "icon_u,"

    .line 336
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_6

    .line 340
    :cond_11
    iget-object v6, p0, Lcom/anythink/core/common/f/ai;->n:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_12

    .line 341
    iget-object v6, p0, Lcom/anythink/core/common/f/ai;->n:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 343
    :cond_12
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_6

    .line 350
    :cond_13
    iget-object v6, p0, Lcom/anythink/core/common/f/ai;->ai:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_16

    const-string v2, "img_list,"

    .line 353
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_6

    .line 324
    :cond_14
    iget-object v6, p0, Lcom/anythink/core/common/f/ai;->n:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_15

    .line 325
    iget-object v6, p0, Lcom/anythink/core/common/f/ai;->n:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 327
    :cond_15
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_6
    const/4 v2, 0x0

    .line 361
    :cond_16
    :goto_7
    iget-object v6, p0, Lcom/anythink/core/common/f/ai;->o:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_17

    .line 362
    iget-object v6, p0, Lcom/anythink/core/common/f/ai;->o:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 371
    :cond_17
    invoke-virtual {p1}, Lcom/anythink/core/common/f/aj;->z()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v6, "4"

    invoke-static {p1, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1b

    .line 2213
    iget p1, p0, Lcom/anythink/core/common/f/ai;->ab:I

    if-eq v4, p1, :cond_18

    .line 374
    iget-object p1, p0, Lcom/anythink/core/common/f/ai;->l:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_18

    .line 375
    iget-object p1, p0, Lcom/anythink/core/common/f/ai;->l:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 379
    :cond_18
    iget-object p1, p0, Lcom/anythink/core/common/f/ai;->o:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_19

    .line 380
    iget-object p1, p0, Lcom/anythink/core/common/f/ai;->o:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 383
    :cond_19
    iget-object p1, p0, Lcom/anythink/core/common/f/ai;->n:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1a

    .line 384
    iget-object p1, p0, Lcom/anythink/core/common/f/ai;->n:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 386
    :cond_1a
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    :cond_1b
    :goto_8
    if-eqz v2, :cond_1c

    return-object v0

    .line 396
    :cond_1c
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result p1

    sub-int/2addr p1, v4

    invoke-virtual {v1, v5, p1}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/anythink/core/common/f/ai;->aq:Ljava/lang/String;

    const/4 p1, 0x0

    return-object p1
.end method

.method private a(I)V
    .locals 0

    .line 169
    iput p1, p0, Lcom/anythink/core/common/f/ai;->al:I

    return-void
.end method

.method private ah()Ljava/lang/String;
    .locals 1

    .line 197
    iget-object v0, p0, Lcom/anythink/core/common/f/ai;->Z:Ljava/lang/String;

    return-object v0
.end method

.method private ai()Ljava/lang/String;
    .locals 1

    .line 205
    iget-object v0, p0, Lcom/anythink/core/common/f/ai;->aa:Ljava/lang/String;

    return-object v0
.end method

.method private aj()Ljava/lang/String;
    .locals 1

    .line 230
    iget-object v0, p0, Lcom/anythink/core/common/f/ai;->aj:Ljava/lang/String;

    return-object v0
.end method

.method private ak()I
    .locals 1

    .line 417
    iget v0, p0, Lcom/anythink/core/common/f/ai;->a:I

    return v0
.end method

.method private al()I
    .locals 1

    .line 425
    iget v0, p0, Lcom/anythink/core/common/f/ai;->b:I

    return v0
.end method

.method private am()I
    .locals 1

    .line 433
    iget v0, p0, Lcom/anythink/core/common/f/ai;->W:I

    return v0
.end method

.method private an()I
    .locals 1

    .line 441
    iget v0, p0, Lcom/anythink/core/common/f/ai;->X:I

    return v0
.end method

.method private b()I
    .locals 1

    .line 165
    iget v0, p0, Lcom/anythink/core/common/f/ai;->al:I

    return v0
.end method

.method private c()J
    .locals 2

    .line 189
    iget-wide v0, p0, Lcom/anythink/core/common/f/ai;->Y:J

    return-wide v0
.end method


# virtual methods
.method public final F(Ljava/lang/String;)V
    .locals 0

    .line 112
    iput-object p1, p0, Lcom/anythink/core/common/f/ai;->ar:Ljava/lang/String;

    return-void
.end method

.method public final G(Ljava/lang/String;)V
    .locals 0

    .line 120
    iput-object p1, p0, Lcom/anythink/core/common/f/ai;->as:Ljava/lang/String;

    return-void
.end method

.method public final H(Ljava/lang/String;)V
    .locals 0

    .line 128
    iput-object p1, p0, Lcom/anythink/core/common/f/ai;->at:Ljava/lang/String;

    return-void
.end method

.method public final I(Ljava/lang/String;)V
    .locals 0

    .line 136
    iput-object p1, p0, Lcom/anythink/core/common/f/ai;->au:Ljava/lang/String;

    return-void
.end method

.method public final J(Ljava/lang/String;)V
    .locals 0

    .line 144
    iput-object p1, p0, Lcom/anythink/core/common/f/ai;->av:Ljava/lang/String;

    return-void
.end method

.method public final K(Ljava/lang/String;)V
    .locals 0

    .line 201
    iput-object p1, p0, Lcom/anythink/core/common/f/ai;->Z:Ljava/lang/String;

    return-void
.end method

.method public final L(Ljava/lang/String;)V
    .locals 0

    .line 209
    iput-object p1, p0, Lcom/anythink/core/common/f/ai;->aa:Ljava/lang/String;

    return-void
.end method

.method public final M(Ljava/lang/String;)V
    .locals 0

    .line 225
    iput-object p1, p0, Lcom/anythink/core/common/f/ai;->ai:Ljava/lang/String;

    return-void
.end method

.method public final N(Ljava/lang/String;)V
    .locals 0

    .line 234
    iput-object p1, p0, Lcom/anythink/core/common/f/ai;->aj:Ljava/lang/String;

    return-void
.end method

.method public final O(Ljava/lang/String;)V
    .locals 0

    .line 412
    iput-object p1, p0, Lcom/anythink/core/common/f/ai;->am:Ljava/lang/String;

    return-void
.end method

.method public final U()Z
    .locals 5

    .line 85
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/anythink/core/common/f/ai;->ap:J

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final V()J
    .locals 2

    .line 99
    iget-wide v0, p0, Lcom/anythink/core/common/f/ai;->ap:J

    return-wide v0
.end method

.method public final W()Ljava/lang/String;
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/anythink/core/common/f/ai;->ar:Ljava/lang/String;

    return-object v0
.end method

.method public final X()Ljava/lang/String;
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/anythink/core/common/f/ai;->as:Ljava/lang/String;

    return-object v0
.end method

.method public final Y()Ljava/lang/String;
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/anythink/core/common/f/ai;->at:Ljava/lang/String;

    return-object v0
.end method

.method public final Z()Ljava/lang/String;
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/anythink/core/common/f/ai;->au:Ljava/lang/String;

    return-object v0
.end method

.method public final a(J)V
    .locals 2

    .line 71
    iput-wide p1, p0, Lcom/anythink/core/common/f/ai;->an:J

    .line 73
    iget-wide v0, p0, Lcom/anythink/core/common/f/ai;->ao:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/anythink/core/common/f/ai;->ap:J

    return-void
.end method

.method public final a(Lcom/anythink/core/common/f/ak;)V
    .locals 0

    .line 185
    iput-object p1, p0, Lcom/anythink/core/common/f/ai;->ak:Lcom/anythink/core/common/f/ak;

    return-void
.end method

.method public final a(ZZ)Z
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_3

    if-eqz p2, :cond_1

    .line 2417
    iget p1, p0, Lcom/anythink/core/common/f/ai;->a:I

    if-ne p1, v1, :cond_0

    return v1

    :cond_0
    return v0

    .line 2425
    :cond_1
    iget p1, p0, Lcom/anythink/core/common/f/ai;->b:I

    if-ne p1, v1, :cond_2

    return v1

    :cond_2
    return v0

    :cond_3
    if-eqz p2, :cond_5

    .line 2433
    iget p1, p0, Lcom/anythink/core/common/f/ai;->W:I

    if-ne p1, v1, :cond_4

    return v1

    :cond_4
    return v0

    .line 2441
    :cond_5
    iget p1, p0, Lcom/anythink/core/common/f/ai;->X:I

    if-ne p1, v1, :cond_6

    return v1

    :cond_6
    return v0
.end method

.method public final aa()Ljava/lang/String;
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/anythink/core/common/f/ai;->av:Ljava/lang/String;

    return-object v0
.end method

.method public final ab()I
    .locals 1

    .line 148
    iget v0, p0, Lcom/anythink/core/common/f/ai;->aw:I

    return v0
.end method

.method public final ac()I
    .locals 1

    .line 156
    iget v0, p0, Lcom/anythink/core/common/f/ai;->ax:I

    return v0
.end method

.method public final ad()Lcom/anythink/core/common/f/ak;
    .locals 1

    .line 181
    iget-object v0, p0, Lcom/anythink/core/common/f/ai;->ak:Lcom/anythink/core/common/f/ak;

    return-object v0
.end method

.method public final ae()I
    .locals 1

    .line 213
    iget v0, p0, Lcom/anythink/core/common/f/ai;->ab:I

    return v0
.end method

.method public final af()Ljava/lang/String;
    .locals 1

    .line 221
    iget-object v0, p0, Lcom/anythink/core/common/f/ai;->ai:Ljava/lang/String;

    return-object v0
.end method

.method public final ag()Ljava/lang/String;
    .locals 1

    .line 408
    iget-object v0, p0, Lcom/anythink/core/common/f/ai;->am:Ljava/lang/String;

    return-object v0
.end method

.method public final synthetic b(Lcom/anythink/core/common/f/n;)Ljava/util/List;
    .locals 8

    .line 17
    check-cast p1, Lcom/anythink/core/common/f/aj;

    .line 3241
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3243
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 3257
    invoke-virtual {p1}, Lcom/anythink/core/common/f/aj;->z()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "1"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, "full_u,"

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_8

    .line 3258
    invoke-virtual {p0}, Lcom/anythink/core/common/f/ai;->j()Z

    move-result v2

    if-nez v2, :cond_3

    .line 3259
    iget-object v2, p0, Lcom/anythink/core/common/f/ai;->l:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3260
    iget-object v2, p0, Lcom/anythink/core/common/f/ai;->l:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3263
    :cond_0
    iget-object v2, p0, Lcom/anythink/core/common/f/ai;->o:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 3264
    iget-object v2, p0, Lcom/anythink/core/common/f/ai;->o:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3267
    :cond_1
    iget-object v2, p0, Lcom/anythink/core/common/f/ai;->n:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 3268
    iget-object v2, p0, Lcom/anythink/core/common/f/ai;->n:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3270
    :cond_2
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v2, 0x1

    .line 3274
    :goto_1
    iget-object v6, p0, Lcom/anythink/core/common/f/ai;->q:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 3275
    iget-object v6, p0, Lcom/anythink/core/common/f/ai;->q:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 3276
    :cond_4
    invoke-virtual {p1}, Lcom/anythink/core/common/f/aj;->aj()I

    move-result v6

    if-eq v6, v4, :cond_6

    invoke-virtual {p1}, Lcom/anythink/core/common/f/aj;->ak()I

    move-result v6

    if-lez v6, :cond_5

    goto :goto_3

    :cond_5
    const-string v2, "video_u,"

    .line 3291
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_2
    const/4 v2, 0x0

    goto :goto_4

    .line 3279
    :cond_6
    :goto_3
    invoke-virtual {p1}, Lcom/anythink/core/common/f/aj;->ak()I

    move-result v6

    if-eq v6, v4, :cond_9

    .line 3280
    iget-object v6, p0, Lcom/anythink/core/common/f/ai;->n:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_7

    .line 3281
    iget-object v6, p0, Lcom/anythink/core/common/f/ai;->n:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_9

    .line 3282
    iget-object v6, p0, Lcom/anythink/core/common/f/ai;->n:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 3285
    :cond_7
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_8
    const/4 v2, 0x1

    .line 3296
    :cond_9
    :goto_4
    invoke-virtual {p1}, Lcom/anythink/core/common/f/aj;->z()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "3"

    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 3297
    invoke-virtual {p0}, Lcom/anythink/core/common/f/ai;->j()Z

    move-result v6

    if-nez v6, :cond_d

    .line 3298
    iget-object v6, p0, Lcom/anythink/core/common/f/ai;->l:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_a

    .line 3299
    iget-object v6, p0, Lcom/anythink/core/common/f/ai;->l:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3302
    :cond_a
    iget-object v6, p0, Lcom/anythink/core/common/f/ai;->o:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_b

    .line 3303
    iget-object v6, p0, Lcom/anythink/core/common/f/ai;->o:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3306
    :cond_b
    iget-object v6, p0, Lcom/anythink/core/common/f/ai;->n:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_c

    .line 3307
    iget-object v6, p0, Lcom/anythink/core/common/f/ai;->n:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 3309
    :cond_c
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    .line 3314
    :cond_d
    :goto_5
    invoke-virtual {p0}, Lcom/anythink/core/common/f/ai;->H()Z

    move-result v6

    if-eqz v6, :cond_e

    .line 3315
    iget-object v6, p0, Lcom/anythink/core/common/f/ai;->q:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3320
    :cond_e
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/anythink/core/common/f/aj;->z()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "2"

    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_17

    .line 4213
    iget v6, p0, Lcom/anythink/core/common/f/ai;->ab:I

    if-eq v6, v4, :cond_14

    const/4 v7, 0x2

    if-eq v6, v7, :cond_13

    const/4 v7, 0x3

    if-eq v6, v7, :cond_f

    const/4 v7, 0x4

    if-eq v6, v7, :cond_13

    goto :goto_7

    .line 3332
    :cond_f
    invoke-virtual {p1}, Lcom/anythink/core/common/f/aj;->x()Ljava/lang/String;

    move-result-object v6

    const-string v7, "320x50"

    invoke-static {v7, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_11

    .line 3333
    iget-object v6, p0, Lcom/anythink/core/common/f/ai;->l:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_10

    .line 3334
    iget-object v6, p0, Lcom/anythink/core/common/f/ai;->l:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_10
    const-string v2, "icon_u,"

    .line 3336
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_6

    .line 3340
    :cond_11
    iget-object v6, p0, Lcom/anythink/core/common/f/ai;->n:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_12

    .line 3341
    iget-object v6, p0, Lcom/anythink/core/common/f/ai;->n:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 3343
    :cond_12
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_6

    .line 3350
    :cond_13
    iget-object v6, p0, Lcom/anythink/core/common/f/ai;->ai:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_16

    const-string v2, "img_list,"

    .line 3353
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_6

    .line 3324
    :cond_14
    iget-object v6, p0, Lcom/anythink/core/common/f/ai;->n:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_15

    .line 3325
    iget-object v6, p0, Lcom/anythink/core/common/f/ai;->n:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 3327
    :cond_15
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_6
    const/4 v2, 0x0

    .line 3361
    :cond_16
    :goto_7
    iget-object v6, p0, Lcom/anythink/core/common/f/ai;->o:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_17

    .line 3362
    iget-object v6, p0, Lcom/anythink/core/common/f/ai;->o:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3371
    :cond_17
    invoke-virtual {p1}, Lcom/anythink/core/common/f/aj;->z()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v6, "4"

    invoke-static {p1, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1b

    .line 5213
    iget p1, p0, Lcom/anythink/core/common/f/ai;->ab:I

    if-eq v4, p1, :cond_18

    .line 3374
    iget-object p1, p0, Lcom/anythink/core/common/f/ai;->l:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_18

    .line 3375
    iget-object p1, p0, Lcom/anythink/core/common/f/ai;->l:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3379
    :cond_18
    iget-object p1, p0, Lcom/anythink/core/common/f/ai;->o:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_19

    .line 3380
    iget-object p1, p0, Lcom/anythink/core/common/f/ai;->o:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3383
    :cond_19
    iget-object p1, p0, Lcom/anythink/core/common/f/ai;->n:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1a

    .line 3384
    iget-object p1, p0, Lcom/anythink/core/common/f/ai;->n:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 3386
    :cond_1a
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    :cond_1b
    :goto_8
    if-eqz v2, :cond_1c

    return-object v0

    .line 3396
    :cond_1c
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result p1

    sub-int/2addr p1, v4

    invoke-virtual {v1, v5, p1}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/anythink/core/common/f/ai;->aq:Ljava/lang/String;

    const/4 p1, 0x0

    return-object p1
.end method

.method public final b(J)V
    .locals 0

    .line 81
    iput-wide p1, p0, Lcom/anythink/core/common/f/ai;->ao:J

    return-void
.end method

.method public final c(J)V
    .locals 0

    .line 95
    iput-wide p1, p0, Lcom/anythink/core/common/f/ai;->ap:J

    return-void
.end method

.method public final d(J)V
    .locals 0

    .line 193
    iput-wide p1, p0, Lcom/anythink/core/common/f/ai;->Y:J

    return-void
.end method

.method public final l(I)V
    .locals 0

    .line 152
    iput p1, p0, Lcom/anythink/core/common/f/ai;->aw:I

    return-void
.end method

.method public final m(I)V
    .locals 0

    .line 160
    iput p1, p0, Lcom/anythink/core/common/f/ai;->ax:I

    return-void
.end method

.method public final n(I)V
    .locals 0

    .line 217
    iput p1, p0, Lcom/anythink/core/common/f/ai;->ab:I

    return-void
.end method

.method public final o(I)V
    .locals 0

    .line 421
    iput p1, p0, Lcom/anythink/core/common/f/ai;->a:I

    return-void
.end method

.method public final p()Ljava/lang/String;
    .locals 1

    .line 404
    iget-object v0, p0, Lcom/anythink/core/common/f/ai;->aq:Ljava/lang/String;

    return-object v0
.end method

.method public final p(I)V
    .locals 0

    .line 429
    iput p1, p0, Lcom/anythink/core/common/f/ai;->b:I

    return-void
.end method

.method public final q(I)V
    .locals 0

    .line 437
    iput p1, p0, Lcom/anythink/core/common/f/ai;->W:I

    return-void
.end method

.method public final r(I)V
    .locals 0

    .line 445
    iput p1, p0, Lcom/anythink/core/common/f/ai;->X:I

    return-void
.end method
