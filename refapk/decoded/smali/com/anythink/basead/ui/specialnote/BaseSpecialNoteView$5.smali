.class final Lcom/anythink/basead/ui/specialnote/BaseSpecialNoteView$5;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/basead/ui/specialnote/BaseSpecialNoteView;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/basead/ui/specialnote/BaseSpecialNoteView;


# direct methods
.method constructor <init>(Lcom/anythink/basead/ui/specialnote/BaseSpecialNoteView;)V
    .locals 0

    .line 220
    iput-object p1, p0, Lcom/anythink/basead/ui/specialnote/BaseSpecialNoteView$5;->a:Lcom/anythink/basead/ui/specialnote/BaseSpecialNoteView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 223
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 224
    iget-object v0, p0, Lcom/anythink/basead/ui/specialnote/BaseSpecialNoteView$5;->a:Lcom/anythink/basead/ui/specialnote/BaseSpecialNoteView;

    invoke-virtual {v0, p1}, Lcom/anythink/basead/ui/specialnote/BaseSpecialNoteView;->setAlpha(F)V

    return-void
.end method
