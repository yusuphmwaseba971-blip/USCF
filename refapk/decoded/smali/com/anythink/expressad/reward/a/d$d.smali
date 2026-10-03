.class final Lcom/anythink/expressad/reward/a/d$d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/anythink/expressad/videocommon/b/i$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anythink/expressad/reward/a/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "d"
.end annotation


# instance fields
.field private a:Lcom/anythink/expressad/foundation/d/c;

.field private b:Ljava/lang/String;

.field private c:Lcom/anythink/expressad/videocommon/e/d;

.field private d:Lcom/anythink/expressad/reward/a/d;


# direct methods
.method public constructor <init>(Lcom/anythink/expressad/reward/a/d;Lcom/anythink/expressad/foundation/d/c;Ljava/lang/String;Lcom/anythink/expressad/videocommon/e/d;)V
    .locals 0

    .line 2827
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2828
    iput-object p2, p0, Lcom/anythink/expressad/reward/a/d$d;->a:Lcom/anythink/expressad/foundation/d/c;

    .line 2829
    iput-object p3, p0, Lcom/anythink/expressad/reward/a/d$d;->b:Ljava/lang/String;

    .line 2830
    iput-object p4, p0, Lcom/anythink/expressad/reward/a/d$d;->c:Lcom/anythink/expressad/videocommon/e/d;

    .line 2831
    iput-object p1, p0, Lcom/anythink/expressad/reward/a/d$d;->d:Lcom/anythink/expressad/reward/a/d;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 4

    .line 2837
    iget-object v0, p0, Lcom/anythink/expressad/reward/a/d$d;->d:Lcom/anythink/expressad/reward/a/d;

    if-eqz v0, :cond_0

    .line 2838
    iget-object v1, p0, Lcom/anythink/expressad/reward/a/d$d;->a:Lcom/anythink/expressad/foundation/d/c;

    iget-object v2, p0, Lcom/anythink/expressad/reward/a/d$d;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/anythink/expressad/reward/a/d$d;->c:Lcom/anythink/expressad/videocommon/e/d;

    invoke-static {v0, v1, p1, v2, v3}, Lcom/anythink/expressad/reward/a/d;->a(Lcom/anythink/expressad/reward/a/d;Lcom/anythink/expressad/foundation/d/c;Ljava/lang/String;Ljava/lang/String;Lcom/anythink/expressad/videocommon/e/d;)V

    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 2844
    iget-object p2, p0, Lcom/anythink/expressad/reward/a/d$d;->d:Lcom/anythink/expressad/reward/a/d;

    if-eqz p2, :cond_0

    const-string v0, "TemplateUrl source download failed"

    .line 2845
    invoke-static {p2, v0, p1}, Lcom/anythink/expressad/reward/a/d;->a(Lcom/anythink/expressad/reward/a/d;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
