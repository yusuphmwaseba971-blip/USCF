.class public abstract Lcom/anythink/core/common/f/at;
.super Ljava/lang/Object;


# static fields
.field public static final N:Ljava/lang/String; = "ofm_tid_key"

.field public static final O:I = 0x1

.field public static final P:I = 0x2

.field public static final Q:I = 0x3

.field public static final R:I = 0x4

.field public static final S:I = 0x5

.field public static final T:I = 0x6

.field public static final U:I = 0x7

.field public static final V:I = 0x8

.field public static final W:I = 0xa

.field public static final X:I = 0x0

.field public static final Y:I = 0x1

.field public static final Z:I = 0x2

.field public static final aa:I = 0x3

.field public static final ab:I = 0x4

.field public static final ac:I = 0x5

.field public static final ad:I = 0x8

.field public static final ae:Ljava/lang/String; = "0"

.field public static final af:Ljava/lang/String; = "1"

.field public static final ag:Ljava/lang/String; = "2"

.field public static final ah:Ljava/lang/String; = "3"

.field public static final ai:Ljava/lang/String; = "4"


# instance fields
.field private a:Ljava/lang/String;

.field protected aj:Ljava/lang/String;

.field protected ak:Ljava/lang/String;

.field protected al:Ljava/lang/String;

.field protected am:Ljava/lang/String;

.field public an:Ljava/lang/String;

.field public ao:I

.field public ap:I

.field protected aq:Ljava/lang/String;

.field protected ar:I

.field protected as:I

.field protected at:I

.field protected au:I

.field private b:Ljava/lang/String;

.field private c:I

.field private d:Lorg/json/JSONObject;

.field private e:I

.field private f:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 181
    iput v0, p0, Lcom/anythink/core/common/f/at;->au:I

    return-void
.end method

.method private a()Lorg/json/JSONObject;
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/anythink/core/common/f/at;->d:Lorg/json/JSONObject;

    return-object v0
.end method

.method private a(I)V
    .locals 0

    .line 170
    iput p1, p0, Lcom/anythink/core/common/f/at;->ao:I

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 0

    .line 162
    iput-object p1, p0, Lcom/anythink/core/common/f/at;->an:Ljava/lang/String;

    return-void
.end method

.method private b()I
    .locals 1

    .line 129
    iget v0, p0, Lcom/anythink/core/common/f/at;->at:I

    return v0
.end method

.method private b(I)V
    .locals 0

    .line 178
    iput p1, p0, Lcom/anythink/core/common/f/at;->ap:I

    return-void
.end method

.method private c()I
    .locals 1

    .line 134
    iget v0, p0, Lcom/anythink/core/common/f/at;->ar:I

    return v0
.end method

.method private d()Ljava/lang/String;
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/anythink/core/common/f/at;->an:Ljava/lang/String;

    return-object v0
.end method

.method private e()I
    .locals 1

    .line 166
    iget v0, p0, Lcom/anythink/core/common/f/at;->ao:I

    return v0
.end method

.method private f()I
    .locals 1

    .line 174
    iget v0, p0, Lcom/anythink/core/common/f/at;->ap:I

    return v0
.end method


# virtual methods
.method public F(I)Lorg/json/JSONObject;
    .locals 2

    .line 255
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "type"

    .line 257
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "pl_id"

    .line 258
    iget-object v1, p0, Lcom/anythink/core/common/f/at;->aj:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "req_id"

    .line 259
    iget-object v1, p0, Lcom/anythink/core/common/f/at;->ak:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 260
    iget-object p1, p0, Lcom/anythink/core/common/f/at;->al:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "format"

    .line 261
    iget-object v1, p0, Lcom/anythink/core/common/f/at;->al:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_0
    const-string p1, "ps_id"

    .line 263
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/core/common/b/o;->q()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 265
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object p1

    iget-object v1, p0, Lcom/anythink/core/common/f/at;->aj:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/anythink/core/common/b/o;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 266
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "sessionid"

    .line 267
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 269
    :cond_1
    iget p1, p0, Lcom/anythink/core/common/f/at;->au:I

    const/4 v1, -0x1

    if-eq p1, v1, :cond_2

    const-string v1, "traffic_group_id"

    .line 270
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 272
    :cond_2
    iget p1, p0, Lcom/anythink/core/common/f/at;->at:I

    const/4 v1, 0x1

    if-ne p1, v1, :cond_3

    const-string p1, "ofm_tid"

    .line 273
    iget v1, p0, Lcom/anythink/core/common/f/at;->as:I

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "ofm_system"

    .line 274
    iget v1, p0, Lcom/anythink/core/common/f/at;->ar:I

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "is_ofm"

    .line 275
    iget v1, p0, Lcom/anythink/core/common/f/at;->at:I

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_3
    const-string p1, "asid"

    .line 278
    iget-object v1, p0, Lcom/anythink/core/common/f/at;->am:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "wf_id"

    .line 281
    iget-object v1, p0, Lcom/anythink/core/common/f/at;->a:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "cp_pl_id"

    .line 282
    iget-object v1, p0, Lcom/anythink/core/common/f/at;->b:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 285
    iget-object p1, p0, Lcom/anythink/core/common/f/at;->d:Lorg/json/JSONObject;

    if-eqz p1, :cond_4

    const-string v1, "p_c"

    .line 286
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_4
    const-string p1, "wf2_mode"

    .line 289
    iget v1, p0, Lcom/anythink/core/common/f/at;->e:I

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 292
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-object v0
.end method

.method public final I(I)V
    .locals 0

    .line 89
    iput p1, p0, Lcom/anythink/core/common/f/at;->e:I

    return-void
.end method

.method public final J(I)V
    .locals 0

    .line 105
    iput p1, p0, Lcom/anythink/core/common/f/at;->c:I

    return-void
.end method

.method public final K(I)V
    .locals 0

    .line 125
    iput p1, p0, Lcom/anythink/core/common/f/at;->at:I

    return-void
.end method

.method public final L(I)V
    .locals 0

    .line 146
    iput p1, p0, Lcom/anythink/core/common/f/at;->as:I

    return-void
.end method

.method public final M(I)V
    .locals 0

    .line 188
    iput p1, p0, Lcom/anythink/core/common/f/at;->au:I

    return-void
.end method

.method public final T()Ljava/lang/Object;
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/anythink/core/common/f/at;->f:Ljava/lang/Object;

    return-object v0
.end method

.method public final U()I
    .locals 1

    .line 101
    iget v0, p0, Lcom/anythink/core/common/f/at;->c:I

    return v0
.end method

.method public final V()Ljava/lang/String;
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/anythink/core/common/f/at;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final W()Ljava/lang/String;
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/anythink/core/common/f/at;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final X()V
    .locals 1

    const/4 v0, 0x1

    .line 138
    iput v0, p0, Lcom/anythink/core/common/f/at;->ar:I

    return-void
.end method

.method public final Y()I
    .locals 1

    .line 142
    iget v0, p0, Lcom/anythink/core/common/f/at;->as:I

    return v0
.end method

.method public final Z()Ljava/lang/String;
    .locals 1

    .line 150
    iget-object v0, p0, Lcom/anythink/core/common/f/at;->aq:Ljava/lang/String;

    return-object v0
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/anythink/core/common/f/at;->f:Ljava/lang/Object;

    return-void
.end method

.method public final a(Lorg/json/JSONObject;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/anythink/core/common/f/at;->d:Lorg/json/JSONObject;

    return-void
.end method

.method public final aa()I
    .locals 1

    .line 184
    iget v0, p0, Lcom/anythink/core/common/f/at;->au:I

    return v0
.end method

.method public final ab()Ljava/lang/String;
    .locals 1

    .line 207
    iget-object v0, p0, Lcom/anythink/core/common/f/at;->am:Ljava/lang/String;

    return-object v0
.end method

.method public final ac()Ljava/lang/String;
    .locals 1

    .line 215
    iget-object v0, p0, Lcom/anythink/core/common/f/at;->aj:Ljava/lang/String;

    return-object v0
.end method

.method public final ad()Ljava/lang/String;
    .locals 1

    .line 223
    iget-object v0, p0, Lcom/anythink/core/common/f/at;->ak:Ljava/lang/String;

    return-object v0
.end method

.method public final ae()Ljava/lang/String;
    .locals 1

    .line 231
    iget-object v0, p0, Lcom/anythink/core/common/f/at;->al:Ljava/lang/String;

    return-object v0
.end method

.method public final af()Ljava/lang/String;
    .locals 3

    .line 235
    iget-object v0, p0, Lcom/anythink/core/common/f/at;->al:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, -0x1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string v1, "4"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x4

    goto :goto_0

    :pswitch_1
    const-string v1, "3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x3

    goto :goto_0

    :pswitch_2
    const-string v1, "2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x2

    goto :goto_0

    :pswitch_3
    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v2, 0x1

    goto :goto_0

    :pswitch_4
    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v2, 0x0

    :goto_0
    packed-switch v2, :pswitch_data_1

    const-string v0, "none"

    return-object v0

    :pswitch_5
    const-string v0, "splash"

    return-object v0

    :pswitch_6
    const-string v0, "inter"

    return-object v0

    :pswitch_7
    const-string v0, "banner"

    return-object v0

    :pswitch_8
    const-string v0, "reward"

    return-object v0

    :pswitch_9
    const-string v0, "native"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method

.method public final s(Ljava/lang/String;)V
    .locals 0

    .line 109
    iput-object p1, p0, Lcom/anythink/core/common/f/at;->a:Ljava/lang/String;

    return-void
.end method

.method public final t(Ljava/lang/String;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lcom/anythink/core/common/f/at;->b:Ljava/lang/String;

    return-void
.end method

.method public final u(Ljava/lang/String;)V
    .locals 0

    .line 154
    iput-object p1, p0, Lcom/anythink/core/common/f/at;->aq:Ljava/lang/String;

    return-void
.end method

.method public final v(Ljava/lang/String;)V
    .locals 0

    .line 211
    iput-object p1, p0, Lcom/anythink/core/common/f/at;->am:Ljava/lang/String;

    return-void
.end method

.method public final w(Ljava/lang/String;)V
    .locals 0

    .line 219
    iput-object p1, p0, Lcom/anythink/core/common/f/at;->aj:Ljava/lang/String;

    return-void
.end method

.method public final x(Ljava/lang/String;)V
    .locals 0

    .line 227
    iput-object p1, p0, Lcom/anythink/core/common/f/at;->ak:Ljava/lang/String;

    return-void
.end method

.method public final y(Ljava/lang/String;)V
    .locals 0

    .line 251
    iput-object p1, p0, Lcom/anythink/core/common/f/at;->al:Ljava/lang/String;

    return-void
.end method
