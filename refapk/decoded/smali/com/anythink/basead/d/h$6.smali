.class final Lcom/anythink/basead/d/h$6;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/anythink/basead/ui/b/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/basead/d/h;->w()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/basead/d/h;


# direct methods
.method constructor <init>(Lcom/anythink/basead/d/h;)V
    .locals 0

    .line 870
    iput-object p1, p0, Lcom/anythink/basead/d/h$6;->a:Lcom/anythink/basead/d/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(II)V
    .locals 2

    .line 873
    iget-object v0, p0, Lcom/anythink/basead/d/h$6;->a:Lcom/anythink/basead/d/h;

    invoke-static {v0}, Lcom/anythink/basead/d/h;->b(Lcom/anythink/basead/d/h;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Lcom/anythink/basead/d/h;->a(Landroid/view/View;II)V

    return-void
.end method
