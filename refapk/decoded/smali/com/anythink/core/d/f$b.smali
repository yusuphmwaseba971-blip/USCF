.class final Lcom/anythink/core/d/f$b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/anythink/core/d/f$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anythink/core/d/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lcom/anythink/core/d/f$c;

.field private c:Z

.field private volatile d:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/anythink/core/d/f$c;)V
    .locals 1

    .line 453
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 450
    iput-boolean v0, p0, Lcom/anythink/core/d/f$b;->c:Z

    const/4 v0, 0x0

    .line 451
    iput-boolean v0, p0, Lcom/anythink/core/d/f$b;->d:Z

    .line 454
    iput-object p1, p0, Lcom/anythink/core/d/f$b;->a:Ljava/lang/String;

    .line 455
    iput-object p2, p0, Lcom/anythink/core/d/f$b;->b:Lcom/anythink/core/d/f$c;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    const/4 v0, 0x0

    .line 459
    iput-boolean v0, p0, Lcom/anythink/core/d/f$b;->c:Z

    return-void
.end method

.method public final a(Lcom/anythink/core/api/AdError;)V
    .locals 1

    .line 475
    iget-object v0, p0, Lcom/anythink/core/d/f$b;->b:Lcom/anythink/core/d/f$c;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/anythink/core/d/f$b;->d:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 476
    iput-boolean v0, p0, Lcom/anythink/core/d/f$b;->d:Z

    .line 477
    iget-object v0, p0, Lcom/anythink/core/d/f$b;->b:Lcom/anythink/core/d/f$c;

    invoke-interface {v0, p1}, Lcom/anythink/core/d/f$c;->a(Lcom/anythink/core/api/AdError;)V

    :cond_0
    return-void
.end method

.method public final a(Lcom/anythink/core/d/e;)V
    .locals 3

    .line 464
    iget-object v0, p0, Lcom/anythink/core/d/f$b;->b:Lcom/anythink/core/d/f$c;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/anythink/core/d/f$b;->d:Z

    if-nez v0, :cond_0

    .line 465
    invoke-virtual {p1}, Lcom/anythink/core/d/e;->aQ()I

    move-result v0

    .line 466
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/core/common/b/o;->f()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/anythink/core/d/f;->a(Landroid/content/Context;)Lcom/anythink/core/d/f;

    move-result-object v1

    iget-object v2, p0, Lcom/anythink/core/d/f$b;->a:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/anythink/core/d/f;->a(Ljava/lang/String;I)V

    .line 467
    sget-object v1, Lcom/anythink/core/d/f;->a:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    const/4 v0, 0x1

    .line 468
    iput-boolean v0, p0, Lcom/anythink/core/d/f$b;->d:Z

    .line 469
    iget-object v0, p0, Lcom/anythink/core/d/f$b;->b:Lcom/anythink/core/d/f$c;

    invoke-interface {v0, p1}, Lcom/anythink/core/d/f$c;->a(Lcom/anythink/core/d/e;)V

    :cond_0
    return-void
.end method

.method public final b(Lcom/anythink/core/d/e;)V
    .locals 2

    .line 483
    iget-object v0, p0, Lcom/anythink/core/d/f$b;->b:Lcom/anythink/core/d/f$c;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/anythink/core/d/f$b;->c:Z

    if-eqz v1, :cond_0

    .line 484
    invoke-interface {v0, p1}, Lcom/anythink/core/d/f$c;->b(Lcom/anythink/core/d/e;)V

    :cond_0
    return-void
.end method
