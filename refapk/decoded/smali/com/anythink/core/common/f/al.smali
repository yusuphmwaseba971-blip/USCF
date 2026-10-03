.class public final Lcom/anythink/core/common/f/al;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:I

.field private f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/anythink/core/common/f/al;->a:Ljava/lang/String;

    .line 24
    iput-object p2, p0, Lcom/anythink/core/common/f/al;->b:Ljava/lang/String;

    .line 25
    iput-object p3, p0, Lcom/anythink/core/common/f/al;->c:Ljava/lang/String;

    .line 26
    iput-object p4, p0, Lcom/anythink/core/common/f/al;->d:Ljava/lang/String;

    .line 27
    iput-object p5, p0, Lcom/anythink/core/common/f/al;->f:Ljava/util/Map;

    .line 28
    iput-object p6, p0, Lcom/anythink/core/common/f/al;->g:Ljava/util/Map;

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/anythink/core/common/f/al;->a:Ljava/lang/String;

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/anythink/core/common/f/al;->b:Ljava/lang/String;

    return-void
.end method

.method private b(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 68
    iput-object p1, p0, Lcom/anythink/core/common/f/al;->f:Ljava/util/Map;

    return-void
.end method

.method private c(Ljava/lang/String;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/anythink/core/common/f/al;->c:Ljava/lang/String;

    return-void
.end method

.method private c(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 76
    iput-object p1, p0, Lcom/anythink/core/common/f/al;->g:Ljava/util/Map;

    return-void
.end method

.method private d(Ljava/lang/String;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/anythink/core/common/f/al;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/anythink/core/common/f/al;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final a(I)V
    .locals 0

    .line 84
    iput p1, p0, Lcom/anythink/core/common/f/al;->e:I

    return-void
.end method

.method public final a(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 92
    iput-object p1, p0, Lcom/anythink/core/common/f/al;->h:Ljava/util/Map;

    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/anythink/core/common/f/al;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/anythink/core/common/f/al;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/anythink/core/common/f/al;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final e()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 64
    iget-object v0, p0, Lcom/anythink/core/common/f/al;->f:Ljava/util/Map;

    return-object v0
.end method

.method public final f()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 72
    iget-object v0, p0, Lcom/anythink/core/common/f/al;->g:Ljava/util/Map;

    return-object v0
.end method

.method public final g()I
    .locals 1

    .line 80
    iget v0, p0, Lcom/anythink/core/common/f/al;->e:I

    return v0
.end method

.method public final h()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 88
    iget-object v0, p0, Lcom/anythink/core/common/f/al;->h:Ljava/util/Map;

    return-object v0
.end method
