.class public abstract Lcom/anythink/core/common/h/a;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String; = "http.loader"


# instance fields
.field protected m:Lcom/anythink/core/common/h/k;

.field protected n:Z

.field protected o:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/net/HttpURLConnection;)Ljava/io/InputStream;
    .locals 5

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 601
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    :goto_0
    const-string v1, "Content-Encoding"

    .line 605
    invoke-virtual {p0, v1}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "gzip"

    .line 606
    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x2

    :try_start_1
    new-array v1, p0, [B

    .line 611
    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-direct {v2, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 612
    invoke-virtual {v2, p0}, Ljava/io/BufferedInputStream;->mark(I)V

    .line 613
    invoke-virtual {v2, v1}, Ljava/io/BufferedInputStream;->read([B)I

    move-result p0

    .line 615
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->reset()V

    const/4 v3, 0x0

    .line 617
    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    const/4 v4, 0x1

    aget-byte v1, v1, v4

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v1, v3

    const/4 v3, -0x1

    if-eq p0, v3, :cond_1

    const p0, 0x8b1f

    if-ne v1, p0, :cond_1

    .line 620
    new-instance p0, Ljava/util/zip/GZIPInputStream;

    invoke-direct {p0, v2}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, p0

    goto :goto_1

    :cond_1
    move-object v0, v2

    :catch_1
    :cond_2
    :goto_1
    return-object v0
.end method

.method static synthetic a(Lcom/anythink/core/common/h/a;)V
    .locals 2

    .line 1667
    invoke-virtual {p0}, Lcom/anythink/core/common/h/a;->l()I

    move-result v0

    const/16 v1, 0x8

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    .line 1669
    invoke-static {}, Lcom/anythink/core/common/e/c;->a()Lcom/anythink/core/common/e/c;

    move-result-object v0

    iget-object p0, p0, Lcom/anythink/core/common/h/a;->o:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/anythink/core/common/e/c;->b(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected static b(Ljava/lang/String;)[B
    .locals 3

    if-eqz p0, :cond_1

    .line 636
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 639
    :cond_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 642
    :try_start_0
    new-instance v1, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v1, v0}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    const-string v2, "utf-8"

    .line 643
    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    .line 644
    invoke-virtual {v1}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 646
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 648
    :goto_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0

    :cond_1
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private d(I)V
    .locals 2

    .line 265
    new-instance v0, Lcom/anythink/core/common/h/a$1;

    invoke-direct {v0, p0, p1}, Lcom/anythink/core/common/h/a$1;-><init>(Lcom/anythink/core/common/h/a;I)V

    .line 530
    invoke-virtual {p0}, Lcom/anythink/core/common/h/a;->o()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 532
    invoke-static {}, Lcom/anythink/core/common/o/b/b;->a()Lcom/anythink/core/common/o/b/b;

    move-result-object p1

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/anythink/core/common/o/b/b;->a(Lcom/anythink/core/common/o/b/d;I)V

    return-void

    .line 534
    :cond_0
    invoke-static {}, Lcom/anythink/core/common/o/b/b;->a()Lcom/anythink/core/common/o/b/b;

    move-result-object p1

    const/16 v1, 0xa

    invoke-virtual {p1, v0, v1}, Lcom/anythink/core/common/o/b/b;->a(Lcom/anythink/core/common/o/b/d;I)V

    return-void
.end method

.method private p()V
    .locals 1

    const/4 v0, 0x1

    .line 123
    iput-boolean v0, p0, Lcom/anythink/core/common/h/a;->n:Z

    return-void
.end method

.method private q()V
    .locals 2

    .line 667
    invoke-virtual {p0}, Lcom/anythink/core/common/h/a;->l()I

    move-result v0

    const/16 v1, 0x8

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    .line 669
    invoke-static {}, Lcom/anythink/core/common/e/c;->a()Lcom/anythink/core/common/e/c;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/core/common/h/a;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/e/c;->b(Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected abstract a()I
.end method

.method protected abstract a(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method

.method protected final a(IILjava/lang/String;Lcom/anythink/core/api/AdError;)V
    .locals 1

    .line 565
    iget-object v0, p0, Lcom/anythink/core/common/h/a;->m:Lcom/anythink/core/common/h/k;

    if-eqz v0, :cond_0

    .line 566
    invoke-interface {v0, p1, p3, p4}, Lcom/anythink/core/common/h/k;->onLoadError(ILjava/lang/String;Lcom/anythink/core/api/AdError;)V

    .line 568
    :cond_0
    invoke-virtual {p0, p4}, Lcom/anythink/core/common/h/a;->b(Lcom/anythink/core/api/AdError;)V

    .line 571
    invoke-virtual {p0, p2}, Lcom/anythink/core/common/h/a;->b(I)V

    return-void
.end method

.method public a(ILcom/anythink/core/common/h/k;)V
    .locals 1

    const/4 v0, 0x0

    .line 113
    iput-boolean v0, p0, Lcom/anythink/core/common/h/a;->n:Z

    .line 115
    iput-object p2, p0, Lcom/anythink/core/common/h/a;->m:Lcom/anythink/core/common/h/k;

    .line 1265
    new-instance p2, Lcom/anythink/core/common/h/a$1;

    invoke-direct {p2, p0, p1}, Lcom/anythink/core/common/h/a$1;-><init>(Lcom/anythink/core/common/h/a;I)V

    .line 1530
    invoke-virtual {p0}, Lcom/anythink/core/common/h/a;->o()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1532
    invoke-static {}, Lcom/anythink/core/common/o/b/b;->a()Lcom/anythink/core/common/o/b/b;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Lcom/anythink/core/common/o/b/b;->a(Lcom/anythink/core/common/o/b/d;I)V

    return-void

    .line 1534
    :cond_0
    invoke-static {}, Lcom/anythink/core/common/o/b/b;->a()Lcom/anythink/core/common/o/b/b;

    move-result-object p1

    const/16 v0, 0xa

    invoke-virtual {p1, p2, v0}, Lcom/anythink/core/common/o/b/b;->a(Lcom/anythink/core/common/o/b/d;I)V

    return-void
.end method

.method protected a(ILjava/lang/Object;)V
    .locals 1

    .line 582
    iget-object v0, p0, Lcom/anythink/core/common/h/a;->m:Lcom/anythink/core/common/h/k;

    if-eqz v0, :cond_0

    .line 583
    invoke-interface {v0, p1, p2}, Lcom/anythink/core/common/h/k;->onLoadFinish(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method protected final a(ILorg/apache/http/conn/ConnectTimeoutException;)V
    .locals 2

    .line 552
    invoke-virtual {p2}, Lorg/apache/http/conn/ConnectTimeoutException;->getMessage()Ljava/lang/String;

    move-result-object p2

    const-string v0, "9999"

    .line 553
    invoke-static {v0, v0, p2}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    move-result-object p2

    .line 555
    iget-object v0, p0, Lcom/anythink/core/common/h/a;->m:Lcom/anythink/core/common/h/k;

    if-eqz v0, :cond_0

    const-string v1, "Connect timeout."

    .line 556
    invoke-interface {v0, p1, v1, p2}, Lcom/anythink/core/common/h/k;->onLoadError(ILjava/lang/String;Lcom/anythink/core/api/AdError;)V

    .line 558
    :cond_0
    invoke-virtual {p0, p2}, Lcom/anythink/core/common/h/a;->b(Lcom/anythink/core/api/AdError;)V

    const/16 p1, -0x3e9

    .line 561
    invoke-virtual {p0, p1}, Lcom/anythink/core/common/h/a;->b(I)V

    return-void
.end method

.method protected abstract a(Lcom/anythink/core/api/AdError;)V
.end method

.method protected abstract a(I)Z
.end method

.method protected abstract b()Ljava/lang/String;
.end method

.method protected b(I)V
    .locals 0

    return-void
.end method

.method protected abstract b(Lcom/anythink/core/api/AdError;)V
.end method

.method protected abstract c()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method protected final c(I)V
    .locals 1

    .line 575
    iget-object v0, p0, Lcom/anythink/core/common/h/a;->m:Lcom/anythink/core/common/h/k;

    if-eqz v0, :cond_0

    .line 576
    invoke-interface {v0, p1}, Lcom/anythink/core/common/h/k;->onLoadCanceled(I)V

    :cond_0
    return-void
.end method

.method protected abstract d()[B
.end method

.method protected e()Lorg/json/JSONObject;
    .locals 1

    .line 193
    invoke-virtual {p0}, Lcom/anythink/core/common/h/a;->l()I

    move-result v0

    invoke-static {v0}, Lcom/anythink/core/common/h/c;->a(I)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method protected f()Lorg/json/JSONObject;
    .locals 1

    .line 202
    invoke-virtual {p0}, Lcom/anythink/core/common/h/a;->l()I

    move-result v0

    invoke-static {v0}, Lcom/anythink/core/common/h/c;->b(I)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method protected g()Ljava/lang/String;
    .locals 5

    .line 207
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 208
    invoke-virtual {p0}, Lcom/anythink/core/common/h/a;->e()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/anythink/core/common/o/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 209
    invoke-virtual {p0}, Lcom/anythink/core/common/h/a;->f()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/anythink/core/common/o/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 211
    invoke-virtual {p0}, Lcom/anythink/core/common/h/a;->m()Ljava/lang/String;

    move-result-object v3

    const-string v4, "api_ver"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "p"

    .line 212
    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "p2"

    .line 213
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 218
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 219
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 221
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 222
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 223
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_0

    const-string v4, "&"

    .line 224
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    :cond_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "="

    .line 227
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 231
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, " sorted value list:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/anythink/core/common/h/a;->j()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/anythink/core/common/o/g;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "sign"

    .line 234
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    invoke-virtual {p0}, Lcom/anythink/core/common/h/a;->k()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 238
    invoke-virtual {p0}, Lcom/anythink/core/common/h/a;->k()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 241
    :cond_2
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 242
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 244
    :try_start_0
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 245
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    .line 247
    :cond_3
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 251
    :catch_0
    invoke-static {}, Ljava/lang/System;->gc()V

    :catch_1
    const/4 v0, 0x0

    return-object v0
.end method

.method protected abstract h()Ljava/lang/String;
.end method

.method protected abstract i()Landroid/content/Context;
.end method

.method protected abstract j()Ljava/lang/String;
.end method

.method protected abstract k()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end method

.method protected l()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected m()Ljava/lang/String;
    .locals 1

    const-string v0, "1.0"

    return-object v0
.end method

.method protected n()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected o()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
