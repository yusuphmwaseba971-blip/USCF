.class final Lcom/anythink/core/common/res/b$3;
.super Lcom/anythink/core/common/res/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/core/common/res/b;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/anythink/core/common/res/c<",
        "Ljava/lang/String;",
        "Ljava/lang/ref/SoftReference<",
        "Landroid/graphics/Bitmap;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/core/common/res/b;


# direct methods
.method constructor <init>(Lcom/anythink/core/common/res/b;I)V
    .locals 0

    .line 200
    iput-object p1, p0, Lcom/anythink/core/common/res/b$3;->a:Lcom/anythink/core/common/res/b;

    invoke-direct {p0, p2}, Lcom/anythink/core/common/res/c;-><init>(I)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/ref/SoftReference;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/ref/SoftReference<",
            "Landroid/graphics/Bitmap;",
            ">;)I"
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 204
    invoke-virtual {p2}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/graphics/Bitmap;

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 206
    :goto_0
    iget-object v0, p0, Lcom/anythink/core/common/res/b$3;->a:Lcom/anythink/core/common/res/b;

    invoke-static {v0}, Lcom/anythink/core/common/res/b;->a(Lcom/anythink/core/common/res/b;)Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_1

    .line 207
    iget-object v0, p0, Lcom/anythink/core/common/res/b$3;->a:Lcom/anythink/core/common/res/b;

    new-instance v1, Ljava/util/HashMap;

    const/16 v2, 0x8

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    invoke-static {v0, v1}, Lcom/anythink/core/common/res/b;->a(Lcom/anythink/core/common/res/b;Ljava/util/Map;)Ljava/util/Map;

    :cond_1
    if-eqz p2, :cond_2

    .line 211
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p2

    mul-int v0, v0, p2

    .line 213
    iget-object p2, p0, Lcom/anythink/core/common/res/b$3;->a:Lcom/anythink/core/common/res/b;

    invoke-static {p2}, Lcom/anythink/core/common/res/b;->a(Lcom/anythink/core/common/res/b;)Ljava/util/Map;

    move-result-object p2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v0

    .line 217
    :cond_2
    iget-object p2, p0, Lcom/anythink/core/common/res/b$3;->a:Lcom/anythink/core/common/res/b;

    invoke-static {p2}, Lcom/anythink/core/common/res/b;->a(Lcom/anythink/core/common/res/b;)Ljava/util/Map;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_3

    .line 219
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method private a(ZLjava/lang/String;Ljava/lang/ref/SoftReference;Ljava/lang/ref/SoftReference;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "Ljava/lang/ref/SoftReference<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Ljava/lang/ref/SoftReference<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .line 228
    invoke-super {p0, p1, p2, p3, p4}, Lcom/anythink/core/common/res/c;->a(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    if-eqz p3, :cond_0

    .line 231
    :try_start_0
    invoke-virtual {p3}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 236
    :goto_0
    iget-object v0, p0, Lcom/anythink/core/common/res/b$3;->a:Lcom/anythink/core/common/res/b;

    invoke-static {v0}, Lcom/anythink/core/common/res/b;->a(Lcom/anythink/core/common/res/b;)Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 237
    iget-object v0, p0, Lcom/anythink/core/common/res/b$3;->a:Lcom/anythink/core/common/res/b;

    invoke-static {v0}, Lcom/anythink/core/common/res/b;->a(Lcom/anythink/core/common/res/b;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    if-eqz p3, :cond_2

    .line 240
    invoke-virtual {p3, p4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p2

    if-nez p2, :cond_2

    .line 243
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    return-void
.end method


# virtual methods
.method protected final synthetic a(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 3

    .line 200
    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/ref/SoftReference;

    if-eqz p2, :cond_0

    .line 1204
    invoke-virtual {p2}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/graphics/Bitmap;

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 1206
    :goto_0
    iget-object v0, p0, Lcom/anythink/core/common/res/b$3;->a:Lcom/anythink/core/common/res/b;

    invoke-static {v0}, Lcom/anythink/core/common/res/b;->a(Lcom/anythink/core/common/res/b;)Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1207
    iget-object v0, p0, Lcom/anythink/core/common/res/b$3;->a:Lcom/anythink/core/common/res/b;

    new-instance v1, Ljava/util/HashMap;

    const/16 v2, 0x8

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    invoke-static {v0, v1}, Lcom/anythink/core/common/res/b;->a(Lcom/anythink/core/common/res/b;Ljava/util/Map;)Ljava/util/Map;

    :cond_1
    if-eqz p2, :cond_2

    .line 1211
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p2

    mul-int v0, v0, p2

    .line 1213
    iget-object p2, p0, Lcom/anythink/core/common/res/b$3;->a:Lcom/anythink/core/common/res/b;

    invoke-static {p2}, Lcom/anythink/core/common/res/b;->a(Lcom/anythink/core/common/res/b;)Ljava/util/Map;

    move-result-object p2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v0

    .line 1217
    :cond_2
    iget-object p2, p0, Lcom/anythink/core/common/res/b$3;->a:Lcom/anythink/core/common/res/b;

    invoke-static {p2}, Lcom/anythink/core/common/res/b;->a(Lcom/anythink/core/common/res/b;)Ljava/util/Map;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_3

    .line 1219
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method protected final synthetic a(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 200
    check-cast p2, Ljava/lang/String;

    check-cast p3, Ljava/lang/ref/SoftReference;

    check-cast p4, Ljava/lang/ref/SoftReference;

    .line 1228
    invoke-super {p0, p1, p2, p3, p4}, Lcom/anythink/core/common/res/c;->a(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    if-eqz p3, :cond_0

    .line 1231
    :try_start_0
    invoke-virtual {p3}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 1236
    :goto_0
    iget-object v0, p0, Lcom/anythink/core/common/res/b$3;->a:Lcom/anythink/core/common/res/b;

    invoke-static {v0}, Lcom/anythink/core/common/res/b;->a(Lcom/anythink/core/common/res/b;)Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1237
    iget-object v0, p0, Lcom/anythink/core/common/res/b$3;->a:Lcom/anythink/core/common/res/b;

    invoke-static {v0}, Lcom/anythink/core/common/res/b;->a(Lcom/anythink/core/common/res/b;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    if-eqz p3, :cond_2

    .line 1240
    invoke-virtual {p3, p4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p2

    if-nez p2, :cond_2

    .line 1243
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    return-void
.end method
