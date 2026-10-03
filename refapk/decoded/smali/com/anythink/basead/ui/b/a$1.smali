.class final Lcom/anythink/basead/ui/b/a$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/basead/ui/b/a;-><init>(Landroid/view/ViewGroup;Lcom/anythink/core/common/f/l;Lcom/anythink/core/common/f/m;ILcom/anythink/basead/ui/b/b$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/basead/ui/b/g;

.field final synthetic b:Lcom/anythink/basead/ui/b/a;


# direct methods
.method constructor <init>(Lcom/anythink/basead/ui/b/a;Lcom/anythink/basead/ui/b/g;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/anythink/basead/ui/b/a$1;->b:Lcom/anythink/basead/ui/b/a;

    iput-object p2, p0, Lcom/anythink/basead/ui/b/a$1;->a:Lcom/anythink/basead/ui/b/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 63
    iget-object v0, p0, Lcom/anythink/basead/ui/b/a$1;->b:Lcom/anythink/basead/ui/b/a;

    invoke-virtual {v0}, Lcom/anythink/basead/ui/b/a;->a()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 64
    iget-object v1, p0, Lcom/anythink/basead/ui/b/a$1;->a:Lcom/anythink/basead/ui/b/g;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/anythink/basead/ui/b/a$1;->b:Lcom/anythink/basead/ui/b/a;

    invoke-virtual {v1}, Lcom/anythink/basead/ui/b/a;->a()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 65
    iget-object v1, p0, Lcom/anythink/basead/ui/b/a$1;->a:Lcom/anythink/basead/ui/b/g;

    .line 1201
    iget-object v2, v1, Lcom/anythink/basead/ui/b/g;->i:Lcom/anythink/basead/ui/specialnote/BaseSpecialNoteView;

    if-eqz v2, :cond_0

    .line 1202
    iget-object v1, v1, Lcom/anythink/basead/ui/b/g;->i:Lcom/anythink/basead/ui/specialnote/BaseSpecialNoteView;

    invoke-virtual {v1, v0}, Lcom/anythink/basead/ui/specialnote/BaseSpecialNoteView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method
