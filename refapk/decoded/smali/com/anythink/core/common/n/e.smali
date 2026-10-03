.class public final Lcom/anythink/core/common/n/e;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lcom/anythink/core/common/f/h;IILjava/lang/String;Ljava/lang/String;ILjava/lang/Boolean;Ljava/lang/String;ZZZZ)V
    .locals 3

    .line 30
    new-instance v0, Lcom/anythink/core/common/f/k;

    invoke-virtual {p0}, Lcom/anythink/core/common/f/h;->ae()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/anythink/core/common/f/k;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "1004684"

    .line 31
    iput-object v1, v0, Lcom/anythink/core/common/f/k;->a:Ljava/lang/String;

    .line 32
    invoke-virtual {p0}, Lcom/anythink/core/common/f/h;->ad()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/anythink/core/common/f/k;->b:Ljava/lang/String;

    .line 33
    invoke-virtual {p0}, Lcom/anythink/core/common/f/h;->ac()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/anythink/core/common/f/k;->d:Ljava/lang/String;

    .line 34
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/anythink/core/common/f/k;->k:Ljava/lang/String;

    .line 35
    invoke-static {p5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p5

    iput-object p5, v0, Lcom/anythink/core/common/f/k;->m:Ljava/lang/String;

    .line 36
    invoke-virtual {p0}, Lcom/anythink/core/common/f/h;->ae()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/anythink/core/common/f/k;->n:Ljava/lang/String;

    const-string p0, "1"

    const-string p5, "2"

    if-eqz p8, :cond_0

    move-object p8, p0

    goto :goto_0

    :cond_0
    move-object p8, p5

    .line 37
    :goto_0
    iput-object p8, v0, Lcom/anythink/core/common/f/k;->o:Ljava/lang/String;

    .line 39
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, v0, Lcom/anythink/core/common/f/k;->p:Ljava/lang/String;

    .line 41
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 42
    iput-object p3, v0, Lcom/anythink/core/common/f/k;->q:Ljava/lang/String;

    .line 44
    :cond_1
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 45
    iput-object p4, v0, Lcom/anythink/core/common/f/k;->r:Ljava/lang/String;

    :cond_2
    if-nez p6, :cond_3

    const-string p2, "0"

    goto :goto_1

    .line 51
    :cond_3
    invoke-virtual {p6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_4

    move-object p2, p0

    goto :goto_1

    :cond_4
    move-object p2, p5

    :goto_1
    iput-object p2, v0, Lcom/anythink/core/common/f/k;->s:Ljava/lang/String;

    .line 54
    iput-object p7, v0, Lcom/anythink/core/common/f/k;->t:Ljava/lang/String;

    if-eqz p9, :cond_5

    move-object p2, p0

    goto :goto_2

    :cond_5
    move-object p2, p5

    .line 56
    :goto_2
    iput-object p2, v0, Lcom/anythink/core/common/f/k;->u:Ljava/lang/String;

    if-eqz p10, :cond_6

    move-object p2, p0

    goto :goto_3

    :cond_6
    move-object p2, p5

    .line 57
    :goto_3
    iput-object p2, v0, Lcom/anythink/core/common/f/k;->v:Ljava/lang/String;

    .line 58
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/anythink/core/common/f/k;->w:Ljava/lang/String;

    if-eqz p11, :cond_7

    goto :goto_4

    :cond_7
    move-object p0, p5

    .line 59
    :goto_4
    iput-object p0, v0, Lcom/anythink/core/common/f/k;->x:Ljava/lang/String;

    .line 62
    invoke-static {v0}, Lcom/anythink/core/common/n/c;->b(Lcom/anythink/core/common/f/k;)V

    return-void
.end method

.method public static a(Ljava/lang/String;Lcom/anythink/core/api/ATBaseAdAdapter;Lcom/anythink/core/api/BaseAd;)V
    .locals 5

    .line 71
    :try_start_0
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/o;->q()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v1, "null"

    if-eqz p1, :cond_2

    .line 74
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 75
    invoke-virtual {p1}, Lcom/anythink/core/api/ATBaseAdAdapter;->getTrackingInfo()Lcom/anythink/core/common/f/h;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 78
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object v3, v1

    .line 81
    :goto_0
    invoke-virtual {p1}, Lcom/anythink/core/api/ATBaseAdAdapter;->getUnitGroupInfo()Lcom/anythink/core/common/f/au;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 83
    invoke-virtual {p1}, Lcom/anythink/core/common/f/au;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_1
    move-object p1, v1

    move-object v1, v2

    goto :goto_1

    :cond_2
    move-object p1, v1

    move-object v3, p1

    .line 88
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "format: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " | adapter: "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " | tracking: "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " | unitGroupInfo: "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    if-eqz p2, :cond_3

    .line 91
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " | baseAd: "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_3
    const-string p1, "Empty ATAdInfo"

    .line 98
    invoke-static {p1, p0, v0}, Lcom/anythink/core/common/n/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    return-void
.end method
