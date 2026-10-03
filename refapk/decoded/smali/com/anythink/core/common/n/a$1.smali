.class final Lcom/anythink/core/common/n/a$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/core/common/n/a;->a(ILcom/anythink/core/common/f/at;Lcom/anythink/core/common/f/au;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/core/common/f/at;

.field final synthetic b:I

.field final synthetic c:Lcom/anythink/core/common/f/au;

.field final synthetic d:J

.field final synthetic e:Lcom/anythink/core/common/n/a;


# direct methods
.method constructor <init>(Lcom/anythink/core/common/n/a;Lcom/anythink/core/common/f/at;ILcom/anythink/core/common/f/au;J)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/anythink/core/common/n/a$1;->e:Lcom/anythink/core/common/n/a;

    iput-object p2, p0, Lcom/anythink/core/common/n/a$1;->a:Lcom/anythink/core/common/f/at;

    iput p3, p0, Lcom/anythink/core/common/n/a$1;->b:I

    iput-object p4, p0, Lcom/anythink/core/common/n/a$1;->c:Lcom/anythink/core/common/f/au;

    iput-wide p5, p0, Lcom/anythink/core/common/n/a$1;->d:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    .line 84
    iget-object v0, p0, Lcom/anythink/core/common/n/a$1;->a:Lcom/anythink/core/common/f/at;

    instance-of v0, v0, Lcom/anythink/core/common/f/h;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/o;->H()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    invoke-static {}, Lcom/anythink/core/common/b/j;->a()Lcom/anythink/core/common/b/j;

    move-result-object v0

    iget v1, p0, Lcom/anythink/core/common/n/a$1;->b:I

    iget-object v2, p0, Lcom/anythink/core/common/n/a$1;->a:Lcom/anythink/core/common/f/at;

    check-cast v2, Lcom/anythink/core/common/f/h;

    invoke-virtual {v0, v1, v2}, Lcom/anythink/core/common/b/j;->a(ILcom/anythink/core/common/f/h;)V

    .line 88
    :cond_0
    iget-object v3, p0, Lcom/anythink/core/common/n/a$1;->e:Lcom/anythink/core/common/n/a;

    iget v4, p0, Lcom/anythink/core/common/n/a$1;->b:I

    iget-object v5, p0, Lcom/anythink/core/common/n/a$1;->a:Lcom/anythink/core/common/f/at;

    iget-object v6, p0, Lcom/anythink/core/common/n/a$1;->c:Lcom/anythink/core/common/f/au;

    iget-wide v7, p0, Lcom/anythink/core/common/n/a$1;->d:J

    invoke-static/range {v3 .. v8}, Lcom/anythink/core/common/n/a;->a(Lcom/anythink/core/common/n/a;ILcom/anythink/core/common/f/at;Lcom/anythink/core/common/f/au;J)Lcom/anythink/core/common/f/i;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 97
    :cond_1
    iget-object v1, p0, Lcom/anythink/core/common/n/a$1;->e:Lcom/anythink/core/common/n/a;

    iget v2, p0, Lcom/anythink/core/common/n/a$1;->b:I

    iget-object v3, p0, Lcom/anythink/core/common/n/a$1;->a:Lcom/anythink/core/common/f/at;

    invoke-static {v2, v3}, Lcom/anythink/core/common/n/a;->b(ILcom/anythink/core/common/f/at;)Z

    move-result v2

    invoke-static {v1, v0, v2}, Lcom/anythink/core/common/n/a;->a(Lcom/anythink/core/common/n/a;Lcom/anythink/core/common/f/x;Z)V

    return-void
.end method
