.class public final Lcom/anythink/basead/a/b/c;
.super Ljava/lang/Object;


# static fields
.field public static final a:I = 0x0

.field public static final b:I = -0x1

.field public static final c:I = 0x64

.field private static d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static e:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/anythink/basead/mraid/MraidWebView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 34
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/anythink/basead/a/b/c;->d:Ljava/util/Map;

    .line 39
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    sput-object v0, Lcom/anythink/basead/a/b/c;->e:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;I)V
    .locals 1

    .line 47
    sget-object v0, Lcom/anythink/basead/a/b/c;->d:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 48
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ge v0, p1, :cond_1

    .line 49
    :cond_0
    sget-object v0, Lcom/anythink/basead/a/b/c;->d:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public static a(Ljava/lang/String;Lcom/anythink/basead/mraid/MraidWebView;)V
    .locals 1

    .line 54
    sget-object v0, Lcom/anythink/basead/a/b/c;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static a(Lcom/anythink/core/common/f/l;ILcom/anythink/core/common/f/n;)Z
    .locals 2

    .line 147
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_5

    .line 148
    invoke-virtual {p0}, Lcom/anythink/core/common/f/l;->A()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 149
    invoke-static {p0, p2}, Lcom/anythink/basead/a/b/c;->a(Lcom/anythink/core/common/f/l;Lcom/anythink/core/common/f/n;)Z

    move-result p0

    return p0

    .line 152
    :cond_0
    invoke-virtual {p2}, Lcom/anythink/core/common/f/n;->aj()I

    move-result p1

    const/4 v0, 0x0

    if-eq p1, v1, :cond_2

    invoke-virtual {p2}, Lcom/anythink/core/common/f/n;->ak()I

    move-result p1

    if-lez p1, :cond_1

    goto :goto_0

    :cond_1
    return v0

    .line 153
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/anythink/core/common/f/l;->x()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 155
    invoke-virtual {p0}, Lcom/anythink/core/common/f/l;->j()Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-virtual {p2}, Lcom/anythink/core/common/f/n;->ak()I

    move-result p0

    if-ne p0, v1, :cond_3

    return v1

    :cond_3
    return v0

    :cond_4
    return v1

    .line 170
    :cond_5
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "3"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-virtual {p0}, Lcom/anythink/core/common/f/l;->F()I

    move-result p1

    if-ne p1, v1, :cond_6

    .line 171
    invoke-virtual {p0}, Lcom/anythink/core/common/f/l;->A()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_6

    .line 173
    invoke-static {p0, p2}, Lcom/anythink/basead/a/b/c;->a(Lcom/anythink/core/common/f/l;Lcom/anythink/core/common/f/n;)Z

    move-result p0

    return p0

    :cond_6
    return v1
.end method

.method public static a(Lcom/anythink/core/common/f/l;Lcom/anythink/core/common/f/m;)Z
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 121
    :cond_0
    iget-object v0, p1, Lcom/anythink/core/common/f/m;->n:Lcom/anythink/core/common/f/n;

    .line 123
    iget p1, p1, Lcom/anythink/core/common/f/m;->j:I

    invoke-static {p0, p1, v0}, Lcom/anythink/basead/a/b/c;->a(Lcom/anythink/core/common/f/l;ILcom/anythink/core/common/f/n;)Z

    move-result p0

    return p0
.end method

.method public static a(Lcom/anythink/core/common/f/l;Lcom/anythink/core/common/f/n;)Z
    .locals 3

    .line 91
    invoke-virtual {p1}, Lcom/anythink/core/common/f/n;->W()I

    move-result v0

    .line 92
    invoke-virtual {p0}, Lcom/anythink/core/common/f/l;->A()Ljava/lang/String;

    move-result-object v1

    .line 93
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    if-nez v0, :cond_1

    const/4 p0, 0x1

    return p0

    .line 101
    :cond_1
    invoke-static {}, Lcom/anythink/core/common/a/k;->a()Lcom/anythink/core/common/a/k;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lcom/anythink/core/common/a/k;->a(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 103
    invoke-static {p0, p1}, Lcom/anythink/basead/a/b/g;->a(Lcom/anythink/core/common/f/l;Lcom/anythink/core/common/f/n;)V

    :cond_2
    return v0
.end method

.method public static a(Lcom/anythink/core/common/f/m;Lcom/anythink/core/common/f/l;)Z
    .locals 1

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 63
    sget-object v0, Lcom/anythink/basead/a/b/c;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p0, p1}, Lcom/anythink/basead/a/b/c;->b(Lcom/anythink/core/common/f/m;Lcom/anythink/core/common/f/l;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 1

    .line 42
    sget-object v0, Lcom/anythink/basead/a/b/c;->d:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-eqz p0, :cond_0

    .line 43
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static b(Ljava/lang/String;)Lcom/anythink/basead/mraid/MraidWebView;
    .locals 1

    .line 58
    sget-object v0, Lcom/anythink/basead/a/b/c;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/anythink/basead/mraid/MraidWebView;

    return-object p0
.end method

.method public static b(Lcom/anythink/core/common/f/m;Lcom/anythink/core/common/f/l;)Ljava/lang/String;
    .locals 1

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/anythink/core/common/f/m;->d:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "_"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/anythink/core/common/f/l;->s()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static b(Ljava/lang/String;I)Z
    .locals 1

    .line 1116
    invoke-static {p0}, Lcom/anythink/core/common/o/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 83
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/o;->f()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/core/common/res/d;->a(Landroid/content/Context;)Lcom/anythink/core/common/res/d;

    move-result-object v0

    invoke-virtual {v0, p1, p0}, Lcom/anythink/core/common/res/d;->b(ILjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static c(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x1

    .line 78
    invoke-static {p0, v0}, Lcom/anythink/basead/a/b/c;->b(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method
