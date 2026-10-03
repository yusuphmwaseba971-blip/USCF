.class final Lcom/anythink/basead/ui/BaseATActivity$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/anythink/core/common/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anythink/basead/ui/BaseATActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/basead/ui/BaseATActivity;


# direct methods
.method constructor <init>(Lcom/anythink/basead/ui/BaseATActivity;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/anythink/basead/ui/BaseATActivity$1;->a:Lcom/anythink/basead/ui/BaseATActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 2

    .line 88
    instance-of v0, p1, Lcom/anythink/core/common/f/af;

    if-eqz v0, :cond_2

    .line 89
    iget-object v0, p0, Lcom/anythink/basead/ui/BaseATActivity$1;->a:Lcom/anythink/basead/ui/BaseATActivity;

    invoke-static {v0}, Lcom/anythink/basead/ui/BaseATActivity;->a(Lcom/anythink/basead/ui/BaseATActivity;)Lcom/anythink/core/common/f/l;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 93
    :cond_0
    check-cast p1, Lcom/anythink/core/common/f/af;

    invoke-virtual {p1}, Lcom/anythink/core/common/f/af;->a()Lcom/anythink/core/common/f/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/f/l;->E()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/basead/ui/BaseATActivity$1;->a:Lcom/anythink/basead/ui/BaseATActivity;

    invoke-static {v1}, Lcom/anythink/basead/ui/BaseATActivity;->a(Lcom/anythink/basead/ui/BaseATActivity;)Lcom/anythink/core/common/f/l;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/core/common/f/l;->E()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 94
    iget-object v0, p0, Lcom/anythink/basead/ui/BaseATActivity$1;->a:Lcom/anythink/basead/ui/BaseATActivity;

    iget-boolean v0, v0, Lcom/anythink/basead/ui/BaseATActivity;->b:Z

    if-eqz v0, :cond_1

    .line 95
    iget-object v0, p0, Lcom/anythink/basead/ui/BaseATActivity$1;->a:Lcom/anythink/basead/ui/BaseATActivity;

    invoke-virtual {p1, v0}, Lcom/anythink/core/common/f/af;->a(Landroid/app/Activity;)V

    return-void

    .line 97
    :cond_1
    iget-object v0, p0, Lcom/anythink/basead/ui/BaseATActivity$1;->a:Lcom/anythink/basead/ui/BaseATActivity;

    iput-object p1, v0, Lcom/anythink/basead/ui/BaseATActivity;->c:Lcom/anythink/core/common/f/af;

    :cond_2
    return-void
.end method
