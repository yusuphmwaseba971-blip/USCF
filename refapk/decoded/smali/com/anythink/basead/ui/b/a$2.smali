.class final Lcom/anythink/basead/ui/b/a$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/basead/ui/b/a;->a(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/anythink/basead/ui/b/a;


# direct methods
.method constructor <init>(Lcom/anythink/basead/ui/b/a;I)V
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/anythink/basead/ui/b/a$2;->b:Lcom/anythink/basead/ui/b/a;

    iput p2, p0, Lcom/anythink/basead/ui/b/a$2;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 99
    iget-object v0, p0, Lcom/anythink/basead/ui/b/a$2;->b:Lcom/anythink/basead/ui/b/a;

    iget v1, p0, Lcom/anythink/basead/ui/b/a$2;->a:I

    invoke-virtual {v0, v1}, Lcom/anythink/basead/ui/b/a;->a(I)V

    return-void
.end method
