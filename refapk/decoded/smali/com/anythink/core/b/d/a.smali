.class public Lcom/anythink/core/b/d/a;
.super Ljava/lang/Object;


# static fields
.field static final a:Ljava/lang/String; = "a"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(DD)D
    .locals 3

    const-wide/16 v0, 0x0

    cmpl-double v2, p2, v0

    if-lez v2, :cond_0

    mul-double p2, p2, p0

    add-double/2addr p0, p2

    :cond_0
    return-wide p0
.end method

.method public static a(DDD)D
    .locals 3

    const-wide/16 v0, 0x0

    cmpl-double v2, p4, v0

    if-lez v2, :cond_0

    sub-double/2addr p0, p2

    mul-double p0, p0, p4

    add-double/2addr p2, p0

    :cond_0
    return-wide p2
.end method

.method public static a(Lcom/anythink/core/common/f/au;)D
    .locals 4

    .line 185
    invoke-virtual {p0}, Lcom/anythink/core/common/f/au;->a()I

    move-result v0

    const/4 v1, 0x2

    const-wide/16 v2, 0x0

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    move-wide v0, v2

    goto :goto_0

    .line 195
    :cond_0
    invoke-virtual {p0}, Lcom/anythink/core/common/f/au;->av()D

    move-result-wide v0

    goto :goto_0

    .line 188
    :cond_1
    invoke-virtual {p0}, Lcom/anythink/core/common/f/au;->at()D

    move-result-wide v0

    :goto_0
    cmpl-double p0, v0, v2

    if-lez p0, :cond_2

    return-wide v0

    :cond_2
    return-wide v2
.end method

.method public static a(ZII)I
    .locals 0

    if-ne p1, p2, :cond_1

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_1

    :cond_0
    const/4 p0, 0x2

    goto :goto_1

    :cond_1
    const/16 p0, 0x43

    if-eq p1, p0, :cond_3

    const/16 p0, 0x23

    if-ne p1, p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 p0, 0x4

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p0, 0x3

    :goto_1
    return p0
.end method

.method private static a(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const-string p0, "102"

    goto :goto_0

    :cond_0
    const-string p0, "1001"

    :goto_0
    return-object p0
.end method

.method public static a(Lcom/anythink/core/common/f/q;D)Ljava/lang/String;
    .locals 1

    .line 118
    iget p0, p0, Lcom/anythink/core/common/f/q;->d:I

    const/16 v0, 0x8

    if-eq p0, v0, :cond_1

    const/16 v0, 0x1c

    if-ne p0, v0, :cond_0

    goto :goto_0

    .line 123
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 121
    :cond_1
    :goto_0
    invoke-static {p1, p2}, Ljava/lang/Math;->round(D)J

    move-result-wide p0

    long-to-int p1, p0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lcom/anythink/core/common/f/q;DD)Ljava/lang/String;
    .locals 2

    .line 19
    iget-object v0, p0, Lcom/anythink/core/common/f/q;->winNoticeUrl:Ljava/lang/String;

    .line 20
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 21
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object p2, Lcom/anythink/core/b/d/a;->a:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " [return] getWinUrl, no win notice url, do nothing\n bid id: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/anythink/core/common/f/q;->token:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p0, 0x0

    return-object p0

    .line 27
    :cond_0
    iget v1, p0, Lcom/anythink/core/common/f/q;->d:I

    .line 29
    invoke-static {p0, p3, p4}, Lcom/anythink/core/b/d/a;->a(Lcom/anythink/core/common/f/q;D)Ljava/lang/String;

    move-result-object p3

    const-string p4, "${AUCTION_BID_TO_WIN}"

    invoke-virtual {v0, p4, p3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p3

    const/16 p4, 0x1c

    if-ne v1, p4, :cond_1

    .line 32
    invoke-static {p0, p1, p2}, Lcom/anythink/core/b/d/a;->a(Lcom/anythink/core/common/f/q;D)Ljava/lang/String;

    move-result-object p1

    const-string p2, "${AUCTION_PRICE}"

    invoke-virtual {p3, p2, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p3

    .line 35
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object p2, Lcom/anythink/core/b/d/a;->a:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " getWinUrl, \n bid id: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/anythink/core/common/f/q;->token:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\n origin win notice url: "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\n final win notice url: "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object p3
.end method

.method public static a(Lcom/anythink/core/common/f/q;IZDLjava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 45
    iget-object v0, p0, Lcom/anythink/core/common/f/q;->loseNoticeUrl:Ljava/lang/String;

    .line 46
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 47
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object p2, Lcom/anythink/core/b/d/a;->a:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " [return] getLossUrl, no loss notice url, do nothing\n bid id: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/anythink/core/common/f/q;->token:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p0, 0x0

    return-object p0

    .line 53
    :cond_0
    iget v1, p0, Lcom/anythink/core/common/f/q;->d:I

    .line 58
    invoke-static {p0, p3, p4}, Lcom/anythink/core/b/d/a;->a(Lcom/anythink/core/common/f/q;D)Ljava/lang/String;

    move-result-object p3

    const-string p4, "${AUCTION_PRICE}"

    invoke-virtual {v0, p4, p3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p3

    const-string p4, "${AUCTION_LOSS}"

    .line 59
    invoke-virtual {p3, p4, p5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p3

    const/16 p4, 0x8

    const-string p5, "${AUCTION_SEAT_ID}"

    if-ne v1, p4, :cond_5

    if-ne p1, v1, :cond_2

    if-nez p2, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x4

    goto :goto_1

    :cond_2
    const/16 p2, 0x43

    if-eq p1, p2, :cond_4

    const/16 p2, 0x23

    if-ne p1, p2, :cond_3

    goto :goto_0

    :cond_3
    const/4 p1, 0x2

    goto :goto_1

    :cond_4
    :goto_0
    const/4 p1, 0x3

    .line 62
    :goto_1
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p5, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    :cond_5
    const/16 p2, 0x1d

    if-ne v1, p2, :cond_7

    if-ne v1, p1, :cond_6

    const-string p1, "1"

    goto :goto_2

    :cond_6
    const-string p1, "10001"

    .line 64
    :goto_2
    invoke-virtual {p3, p5, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    :cond_7
    const-string p1, ""

    .line 66
    invoke-virtual {p3, p5, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    :goto_3
    const/4 p2, 0x6

    if-ne v1, p2, :cond_8

    .line 70
    sget-object p2, Lcom/anythink/core/api/ATAdConst$CURRENCY;->USD:Lcom/anythink/core/api/ATAdConst$CURRENCY;

    invoke-virtual {p2}, Lcom/anythink/core/api/ATAdConst$CURRENCY;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "${AUCTION_CURRENCY}"

    invoke-virtual {p1, p3, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 73
    :cond_8
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object p3, Lcom/anythink/core/b/d/a;->a:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " getLossUrl, \n bid id: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/anythink/core/common/f/q;->token:Ljava/lang/String;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\n origin loss notice url: "

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\n final loss notice url: "

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object p1
.end method

.method public static a(ZI)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    const-string p0, "-1"

    return-object p0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    const-string p0, "5"

    return-object p0

    :cond_1
    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    const-string p0, "2"

    return-object p0

    :cond_2
    if-eqz p0, :cond_3

    const-string p0, "102"

    return-object p0

    :cond_3
    const-string p0, "103"

    return-object p0
.end method

.method public static b(Lcom/anythink/core/common/f/au;)D
    .locals 6

    .line 219
    invoke-virtual {p0}, Lcom/anythink/core/common/f/au;->a()I

    move-result v0

    const/4 v1, 0x1

    const-wide/16 v2, 0x0

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 229
    :cond_0
    invoke-virtual {p0}, Lcom/anythink/core/common/f/au;->aw()D

    move-result-wide v0

    goto :goto_1

    .line 222
    :cond_1
    invoke-virtual {p0}, Lcom/anythink/core/common/f/au;->au()D

    move-result-wide v0

    goto :goto_1

    .line 232
    :cond_2
    invoke-virtual {p0}, Lcom/anythink/core/common/f/au;->d()I

    move-result v0

    const/16 v1, 0x16

    if-ne v0, v1, :cond_3

    .line 233
    invoke-virtual {p0}, Lcom/anythink/core/common/f/au;->au()D

    move-result-wide v0

    .line 234
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "getWinnerPricePrRateForLoss, baidu normal ad requesting, use pr rate: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v5, ", adSourceId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/anythink/core/common/f/au;->u()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_3
    :goto_0
    move-wide v0, v2

    :goto_1
    cmpl-double p0, v0, v2

    if-lez p0, :cond_4

    return-wide v0

    :cond_4
    return-wide v2
.end method

.method public static b(ZII)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    const-string p0, "-1"

    return-object p0

    :cond_0
    const/16 v0, 0x8

    const/4 v1, 0x1

    if-ne p2, v0, :cond_2

    if-ne p1, v1, :cond_1

    const-string p0, "5"

    return-object p0

    :cond_1
    const-string p0, "1"

    return-object p0

    :cond_2
    const/16 v0, 0x1d

    if-ne p2, v0, :cond_4

    if-ne p1, v1, :cond_3

    const-string p0, "2002"

    return-object p0

    :cond_3
    const-string p0, "2"

    return-object p0

    :cond_4
    const/16 v0, 0x22

    const-string v1, "102"

    if-ne p2, v0, :cond_6

    const/4 p0, 0x2

    if-ne p1, p0, :cond_5

    goto :goto_0

    :cond_5
    const-string v1, "1001"

    :goto_0
    return-object v1

    :cond_6
    const/16 p1, 0x3b

    if-ne p2, p1, :cond_7

    return-object v1

    :cond_7
    if-eqz p0, :cond_8

    return-object v1

    :cond_8
    const-string p0, "103"

    return-object p0
.end method

.method private static c(ZII)I
    .locals 0

    if-ne p1, p2, :cond_1

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_1

    :cond_0
    const/4 p0, 0x4

    goto :goto_1

    :cond_1
    const/16 p0, 0x43

    if-eq p1, p0, :cond_3

    const/16 p0, 0x23

    if-ne p1, p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 p0, 0x2

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p0, 0x3

    :goto_1
    return p0
.end method
