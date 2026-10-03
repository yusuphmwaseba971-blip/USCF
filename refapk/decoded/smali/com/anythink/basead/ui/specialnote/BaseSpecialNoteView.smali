.class public abstract Lcom/anythink/basead/ui/specialnote/BaseSpecialNoteView;
.super Landroid/widget/LinearLayout;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/anythink/basead/ui/specialnote/BaseSpecialNoteView$a;
    }
.end annotation


# static fields
.field public static final SEPECIAL_NOTE_INTERVAL_TIME:J = 0x1f4L


# instance fields
.field final a:Ljava/lang/String;

.field final b:J

.field final c:I

.field d:J

.field e:J

.field f:J

.field g:J

.field h:Lcom/anythink/basead/ui/specialnote/BaseSpecialNoteView$a;

.field i:Ljava/lang/Runnable;

.field j:Lcom/anythink/core/common/o/a/c;

.field k:Lcom/anythink/core/common/o/a/f$b;

.field l:Landroid/widget/TextView;

.field m:Landroid/widget/TextView;

.field n:Ljava/lang/String;

.field private o:Landroid/view/View;

.field private p:I

.field private q:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 52
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 25
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/anythink/basead/ui/specialnote/BaseSpecialNoteView;->a:Ljava/lang/String;

    const-wide/16 v0, 0x1f4

    .line 29
    iput-wide v0, p0, Lcom/anythink/basead/ui/specialnote/BaseSpecialNoteView;->b:J

    const/16 p1, 0x32

    .line 30
    iput p1, p0, Lcom/anythink/basead/ui/specialnote/BaseSpecialNoteView;->c:I

    const-string p1, ""

    .line 46
    iput-object p1, p0, Lcom/anythink/basead/ui/specialnote/BaseSpecialNoteView;->n:Ljava/lang/String;

    const/4 p1, 0x0

    .line 49
    iput-boolean p1, p0, Lcom/anythink/basead/ui/specialnote/BaseSpecialNoteView;->q:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 56
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/anythink/basead/ui/specialnote/BaseSpecialNoteView;->a:Ljava/lang/String;

    const-wide/16 p1, 0x1f4

    .line 29
    iput-wide p1, p0, Lcom/anythink/basead/ui/specialnote/BaseSpecialNoteView;->b:J

    const/16 p1, 0x32

    .line 30
    iput p1, p0, Lcom/anythink/basead/ui/specialnote/BaseSpecialNoteView;->c:I

    const-string p1, ""

    .line 46
    iput-object p1, p0, Lcom/anythink/basead/ui/specialnote/BaseSpecialNoteView;->n:Ljava/lang/String;

    const/4 p1, 0x0

    .line 49
    iput-boolean p1, p0, Lcom/anythink/basead/ui/specialnote/BaseSpecialNoteView;->q:Z

    return-void
.end method

.method static synthetic a(Lcom/anythink/basead/ui/specialnote/BaseSpecialNoteView;)V
    .locals 7

    .line 1150
    invoke-virtual {p0}, Lcom/anythink/basead/ui/specialnote/BaseSpecialNoteView;->getWindowVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 1151
    invoke-direct {p0}, Lcom/anythink/basead/ui/specialnote/BaseSpecialNoteView;->j()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1152
    iget-wide v0, p0, Lcom/anythink/basead/ui/specialnote/BaseSpecialNoteView;->e:J

    const-wide/16 v2, 0x1f4

    const-wide/16 v4, 0x0

    cmp-long v6, v0, v4

    if-lez v6, :cond_0

    sub-long/2addr v0, v2

    .line 1153
    iput-wide v0, p0, Lcom/anythink/basead/ui/specialnote/BaseSpecialNoteView;->e:J

    goto :goto_0

    .line 1155
    :cond_0
    iget-wide v0, p0, Lcom/anythink/basead/ui/specialnote/BaseSpecialNoteView;->g:J

    cmp-long v6, v0, v4

    if-lez v6, :cond_1

    sub-long/2addr v0, v2

    .line 1156
    iput-wide v0, p0, Lcom/anythink/basead/ui/specialnote/BaseSpecialNoteView;->g:J

    .line 1160
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/anythink/basead/ui/specialnote/BaseSpecialNoteView;->h()V

    .line 1161
    invoke-direct {p0}, Lcom/anythink/basead/ui/specialnote/BaseSpecialNoteView;->e()V

    return-void

    .line 1166
    :cond_2
    invoke-virtual {p0}, Lcom/anythink/basead/ui/specialnote/BaseSpecialNoteView;->d()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1167
    invoke-direct {p0}, Lcom/anythink/basead/ui/specialnote/BaseSpecialNoteView;->k()V

    .line 2130
    :cond_3
    iget-object v0, p0, Lcom/anythink/basead/ui/specialnote/BaseSpecialNoteView;->o:Landroid/view/View;

    if-eqz v0, :cond_4

    .line 2133
    iget-object v1, p0, Lcom/anythink/basead/ui/specialnote/BaseSpecialNoteView;->j:Lcom/anythink/core/common/o/a/c;

    new-instance v2, Lcom/anythink/basead/ui/specialnote/BaseSpecialNoteView$4;

    invoke-direct {v2, p0}, Lcom/anythink/basead/ui/specialnote/BaseSpecialNoteView$4;-><init>(Lcom/anythink/basead/ui/specialnote/BaseSpecialNoteView;)V

    invoke-virtual {v1, v0, v2}, Lcom/anythink/core/common/o/a/c;->a(Landroid/view/View;Lcom/anythink/core/common/o/a/b;)V

    :cond_4
    return-void
.end method

.method static synthetic b(Lcom/anythink/basead/ui/specialnote/BaseSpecialNoteView;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/anythink/basead/ui/specialnote/BaseSpecialNoteView;->e()V

    return-void
.end method

.method private e()V
    .locals 3

    .line 123
    iget-object v0, p0, Lcom/anythink/basead/ui/specialnote/BaseSpecialNoteView;->h:Lcom/anythink/basead/ui/specialnote/BaseSpecialNoteView$a;

    if-nez v0, :cond_0

    return-void

    .line 126
    :cond_0
    iget-object v0, p0, Lcom/anythink/basead/ui/specialnote/BaseSpecialNoteView;->i:Ljava/lang/Runnable;

    const-wide/16 v1, 0x1f4

    invoke-virtual {p0, v0, v1, v2}, Lcom/anythink/basead/ui/specialnote/BaseSpecialNoteView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private f()V
    .locals 3

    .line 130
    iget-object v0, p0, Lcom/anythink/basead/ui/specialnote/BaseSpecialNoteView;->o:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    .line 133
    :cond_0
    iget-object v1, p0, Lcom/anythink/basead/ui/specialnote/BaseSpecialNoteView;->j:Lcom/anythink/core/common/o/a/c;

    new-instance v2, Lcom/anythink/basead/ui/specialnote/BaseSpecialNoteView$4;

    invoke-direct {v2, p0}, Lcom/anythink/basead/ui/specialnote/BaseSpecialNoteView$4;-><init>(Lcom/anythink/basead/ui/specialnote/BaseSpecialNoteView;)V

    invoke-virtual {v1, v0, v2}, Lcom/anythink/core/common/o/a/c;->a(Landroid/view/View;Lcom/anythink/core/common/o/a/b;)V

    return-void
.end method

.method private g()V
    .locals 7

    .line 150
    invoke-virtual {p0}, Lcom/anythink/basead/ui/specialnote/BaseSpecialNoteView;->getWindowVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 151
    invoke-direct {p0}, Lcom/anythink/basead/ui/specialnote/BaseSpecialNoteView;->j()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 152
    iget-wide v0, p0, Lcom/anythink/basead/ui/specialnote/BaseSpecialNoteView;->e:J

    const-wide/16 v2, 0x1f4

    const-wide/16 v4, 0x0

    cmp-long v6, v0, v4

    if-lez v6, :cond_0

    sub-long/2addr v0, v2

    .line 153
    iput-wide v0, p0, Lcom/anythink/basead/ui/specialnote/BaseSpecialNoteView;->e:J

    goto :goto_0

    .line 155
    :cond_0
    iget-wide v0, p0, Lcom/anythink/basead/ui/specialnote/BaseSpecialNoteView;->g:J

    cmp-long v6, v0, v4

    if-lez v6, :cond_1

    sub-long/2addr v0, v2

    .line 156
    iput-wide v0, p0, Lcom/anythink/basead/ui/specialnote/BaseSpecialNoteView;->g:J

    .line 160
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/anythink/basead/ui/specialnote/BaseSpecialNoteView;->h()V

    .line 161
    invoke-direct {p0}, Lcom/anythink/basead/ui/specialnote/BaseSpecialNoteView;->e()V

    return-void

    .line 166
    :cond_2
    invoke-virtual {p0}, Lcom/anythink/basead/ui/specialnote/BaseSpecialNoteView;->d()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 167
    invoke-direct {p0}, Lcom/anythink/basead/ui/specialnote/BaseSpecialNoteView;->k()V

    .line 1130
    :cond_3
    iget-object v0, p0, Lcom/anythink/basead/ui/specialnote/BaseSpecialNoteView;->o:Landroid/view/View;

    if-eqz v0, :cond_4

    .line 1133
    iget-object v1, p0, Lcom/anythink/basead/ui/specialnote/BaseSpecialNoteView;->j:Lcom/anythink/core/common/o/a/c;

    new-instance v2, Lcom/anythink/basead/ui/specialnote/BaseSpecialNoteView$4;

    invoke-direct {v2, p0}, Lcom/anythink/basead/ui/specialnote/BaseSpecialNoteView$4;-><init>(Lcom/anythink/basead/ui/specialnote/BaseSpecialNoteView;)V

    invoke-virtual {v1, v0, v2}, Lcom/anythink/core/common/o/a/c;->a(Landroid/view/View;Lcom/anythink/core/common/o/a/b;)V

    :cond_4
    return-void
.end method

.method private h()V
    .locals 9

    .line 174
    iget-wide v0, p0, Lcom/anythink/basead/ui/specialnote/BaseSpecialNoteView;->e:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 175
    invoke-virtual {p0}, Lcom/anythink/basead/ui/specialnote/BaseSpecialNoteView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x4

    .line 176
    invoke-virtual {p0, v0}, Lcom/anythink/basead/ui/specialnote/BaseSpecialNoteView;->setVisibility(I)V

    return-void

    .line 179
    :cond_0
    iget-wide v0, p0, Lcom/anythink/basead/ui/specialnote/BaseSpecialNoteView;->g:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_2

    .line 180
    iget-object v2, p0, Lcom/anythink/basead/ui/specialnote/BaseSpecialNoteView;->l:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/anythink/basead/ui/specialnote/BaseSpecialNoteView;->n:Ljava/lang/String;

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-wide/16 v7, 0x3e8

    div-long/2addr v0, v7

    long-to-int v1, v0

    add-int/2addr v1, v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v6

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 185
    invoke-virtual {p0}, Lcom/anythink/basead/ui/specialnote/BaseSpecialNoteView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 187
    iput-boolean v4, p0, Lcom/anythink/basead/ui/specialnote/BaseSpecialNoteView;->q:Z

    .line 188
    invoke-virtual {p0}, Lcom/anythink/basead/ui/specialnote/BaseSpecialNoteView;->c()V

    :cond_1
    return-void

    .line 182
    :cond_2
    invoke-direct {p0}, Lcom/anythink/basead/ui/specialnote/BaseSpecialNoteView;->i()V

    return-void
.end method

.method private i()V
    .locals 2

    .line 195
    iget-object v0, p0, Lcom/anythink/basead/ui/specialnote/BaseSpecialNoteView;->o:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    .line 199
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SpecialNote do action,type:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/anythink/basead/ui/specialnote/BaseSpecialNoteView;->p:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 200
    iget-object v0, p0, Lcom/anythink/basead/ui/specialnote/BaseSpecialNoteView;->h:Lcom/anythink/basead/ui/specialnote/BaseSpecialNoteView$a;

    if-eqz v0, :cond_1

    .line 201
    iget v1, p0, Lcom/anythink/basead/ui/specialnote/BaseSpecialNoteView;->p:I

    invoke-interface {v0, v1}, Lcom/anythink/basead/ui/specialnote/BaseSpecialNoteView$a;->a(I)V

    .line 203
    :cond_1
    invoke-virtual {p0}, Lcom/anythink/basead/ui/specialnote/BaseSpecialNoteView;->release()V

    return-void
.end method

.method private j()Z
    .locals 5

    .line 207
    iget-object v0, p0, Lcom/anythink/basead/ui/specialnote/BaseSpecialNoteView;->o:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/anythink/basead/ui/specialnote/BaseSpecialNoteView;->o:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 209
    instance-of v2, v0, Landroid/view/View;

    if-eqz v2, :cond_0

    .line 210
    iget-object v2, p0, Lcom/anythink/basead/ui/specialnote/BaseSpecialNoteView;->k:Lcom/anythink/core/common/o/a/f$b;

    check-cast v0, Landroid/view/View;

    iget-object v3, p0, Lcom/anythink/basead/ui/specialnote/BaseSpecialNoteView;->o:Landroid/view/View;

    const/16 v4, 0x32

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v0, v3, v4, v1}, Lcom/anythink/core/common/o/a/f$b;->a(Landroid/view/View;Landroid/view/View;ILjava/lang/Integer;)Z

    move-result v0

    return v0

    :cond_0
    return v1
.end method

.method private k()V
    .locals 2

    .line 268
    iget-wide v0, p0, Lcom/anythink/basead/ui/specialnote/BaseSpecialNoteView;->d:J

    iput-wide v0, p0, Lcom/anythink/basead/ui/specialnote/BaseSpecialNoteView;->e:J

    .line 269
    iget-wide v0, p0, Lcom/anythink/basead/ui/specialnote/BaseSpecialNoteView;->f:J

    iput-wide v0, p0, Lcom/anythink/basead/ui/specialnote/BaseSpecialNoteView;->g:J

    const/4 v0, 0x4

    .line 270
    invoke-virtual {p0, v0}, Lcom/anythink/basead/ui/specialnote/BaseSpecialNoteView;->setVisibility(I)V

    const/4 v0, 0x0

    .line 271
    iput-boolean v0, p0, Lcom/anythink/basead/ui/specialnote/BaseSpecialNoteView;->q:Z

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 4

    .line 117
    invoke-virtual {p0}, Lcom/anythink/basead/ui/specialnote/BaseSpecialNoteView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/core/common/b/o;->f()Landroid/content/Context;

    move-result-object v1

    const-string v2, "myoffer_special_note_delay_click"

    const-string v3, "string"

    invoke-static {v1, v2, v3}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/basead/ui/specialnote/BaseSpecialNoteView;->n:Ljava/lang/String;

    return-void
.end method

.method protected abstract b()V
.end method

.method protected c()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 217
    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v1, 0x1f4

    .line 218
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 220
    new-instance v1, Lcom/anythink/basead/ui/specialnote/BaseSpecialNoteView$5;

    invoke-direct {v1, p0}, Lcom/anythink/basead/ui/specialnote/BaseSpecialNoteView$5;-><init>(Lcom/anythink/basead/ui/specialnote/BaseSpecialNoteView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 228
    new-instance v1, Lcom/anythink/basead/ui/specialnote/BaseSpecialNoteView$6;

    invoke-direct {v1, p0, v0}, Lcom/anythink/basead/ui/specialnote/BaseSpecialNoteView$6;-><init>(Lcom/anythink/basead/ui/specialnote/BaseSpecialNoteView;Landroid/animation/ValueAnimator;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 244
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x3e4ccccd    # 0.2f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method protected abstract d()Z
.end method

.method public hasBeenShow()Z
    .locals 1

    .line 297
    iget-boolean v0, p0, Lcom/anythink/basead/ui/specialnote/BaseSpecialNoteView;->q:Z

    return v0
.end method

.method public initSetting(Landroid/view/View;ILcom/anythink/basead/ui/specialnote/BaseSpecialNoteView$a;JJ)V
    .locals 2

    .line 73
    iput p2, p0, Lcom/anythink/basead/ui/specialnote/BaseSpecialNoteView;->p:I

    .line 74
    invoke-virtual {p0}, Lcom/anythink/basead/ui/specialnote/BaseSpecialNoteView;->a()V

    .line 75
    invoke-virtual {p0}, Lcom/anythink/basead/ui/specialnote/BaseSpecialNoteView;->b()V

    const/4 p2, 0x4

    .line 76
    invoke-virtual {p0, p2}, Lcom/anythink/basead/ui/specialnote/BaseSpecialNoteView;->setVisibility(I)V

    .line 78
    invoke-static {}, Lcom/anythink/basead/a/j;->a()Lcom/anythink/basead/a/j;

    move-result-object p2

    invoke-virtual {p2}, Lcom/anythink/basead/a/j;->b()Lcom/anythink/core/common/o/a/c;

    move-result-object p2

    iput-object p2, p0, Lcom/anythink/basead/ui/specialnote/BaseSpecialNoteView;->j:Lcom/anythink/core/common/o/a/c;

    .line 79
    invoke-static {}, Lcom/anythink/basead/a/j;->a()Lcom/anythink/basead/a/j;

    move-result-object p2

    invoke-virtual {p2}, Lcom/anythink/basead/a/j;->c()Lcom/anythink/core/common/o/a/f$b;

    move-result-object p2

    iput-object p2, p0, Lcom/anythink/basead/ui/specialnote/BaseSpecialNoteView;->k:Lcom/anythink/core/common/o/a/f$b;

    .line 81
    iput-object p1, p0, Lcom/anythink/basead/ui/specialnote/BaseSpecialNoteView;->o:Landroid/view/View;

    .line 82
    iput-object p3, p0, Lcom/anythink/basead/ui/specialnote/BaseSpecialNoteView;->h:Lcom/anythink/basead/ui/specialnote/BaseSpecialNoteView$a;

    .line 84
    iput-wide p4, p0, Lcom/anythink/basead/ui/specialnote/BaseSpecialNoteView;->d:J

    .line 85
    iput-wide p6, p0, Lcom/anythink/basead/ui/specialnote/BaseSpecialNoteView;->f:J

    .line 87
    iput-wide p4, p0, Lcom/anythink/basead/ui/specialnote/BaseSpecialNoteView;->e:J

    .line 88
    iput-wide p6, p0, Lcom/anythink/basead/ui/specialnote/BaseSpecialNoteView;->g:J

    .line 90
    new-instance p1, Lcom/anythink/basead/ui/specialnote/BaseSpecialNoteView$1;

    invoke-direct {p1, p0}, Lcom/anythink/basead/ui/specialnote/BaseSpecialNoteView$1;-><init>(Lcom/anythink/basead/ui/specialnote/BaseSpecialNoteView;)V

    iput-object p1, p0, Lcom/anythink/basead/ui/specialnote/BaseSpecialNoteView;->i:Ljava/lang/Runnable;

    .line 97
    new-instance p1, Lcom/anythink/basead/ui/specialnote/BaseSpecialNoteView$2;

    invoke-direct {p1, p0}, Lcom/anythink/basead/ui/specialnote/BaseSpecialNoteView$2;-><init>(Lcom/anythink/basead/ui/specialnote/BaseSpecialNoteView;)V

    invoke-virtual {p0, p1}, Lcom/anythink/basead/ui/specialnote/BaseSpecialNoteView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    iget-object p1, p0, Lcom/anythink/basead/ui/specialnote/BaseSpecialNoteView;->m:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    .line 104
    new-instance p2, Lcom/anythink/basead/ui/specialnote/BaseSpecialNoteView$3;

    invoke-direct {p2, p0}, Lcom/anythink/basead/ui/specialnote/BaseSpecialNoteView$3;-><init>(Lcom/anythink/basead/ui/specialnote/BaseSpecialNoteView;)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    :cond_0
    iget-object p1, p0, Lcom/anythink/basead/ui/specialnote/BaseSpecialNoteView;->l:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    .line 112
    iget-object p2, p0, Lcom/anythink/basead/ui/specialnote/BaseSpecialNoteView;->n:Ljava/lang/String;

    const/4 p3, 0x1

    new-array p4, p3, [Ljava/lang/Object;

    const/4 p5, 0x0

    iget-wide p6, p0, Lcom/anythink/basead/ui/specialnote/BaseSpecialNoteView;->g:J

    const-wide/16 v0, 0x3e8

    div-long/2addr p6, v0

    long-to-int p7, p6

    add-int/2addr p7, p3

    invoke-static {p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, p4, p5

    invoke-static {p2, p4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .line 61
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 62
    invoke-virtual {p0}, Lcom/anythink/basead/ui/specialnote/BaseSpecialNoteView;->resume()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .line 67
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 68
    invoke-virtual {p0}, Lcom/anythink/basead/ui/specialnote/BaseSpecialNoteView;->pause()V

    return-void
.end method

.method public pause()V
    .locals 2

    const/4 v0, 0x4

    .line 257
    invoke-virtual {p0, v0}, Lcom/anythink/basead/ui/specialnote/BaseSpecialNoteView;->setVisibility(I)V

    .line 258
    iget-object v0, p0, Lcom/anythink/basead/ui/specialnote/BaseSpecialNoteView;->i:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 259
    invoke-virtual {p0, v0}, Lcom/anythink/basead/ui/specialnote/BaseSpecialNoteView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 261
    :cond_0
    iget-object v0, p0, Lcom/anythink/basead/ui/specialnote/BaseSpecialNoteView;->o:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 262
    iget-object v1, p0, Lcom/anythink/basead/ui/specialnote/BaseSpecialNoteView;->j:Lcom/anythink/core/common/o/a/c;

    invoke-virtual {v1, v0}, Lcom/anythink/core/common/o/a/c;->a(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method public release()V
    .locals 1

    .line 282
    iget-object v0, p0, Lcom/anythink/basead/ui/specialnote/BaseSpecialNoteView;->h:Lcom/anythink/basead/ui/specialnote/BaseSpecialNoteView$a;

    if-eqz v0, :cond_0

    .line 284
    invoke-virtual {p0}, Lcom/anythink/basead/ui/specialnote/BaseSpecialNoteView;->pause()V

    const/4 v0, 0x0

    .line 285
    iput-object v0, p0, Lcom/anythink/basead/ui/specialnote/BaseSpecialNoteView;->h:Lcom/anythink/basead/ui/specialnote/BaseSpecialNoteView$a;

    .line 286
    iput-object v0, p0, Lcom/anythink/basead/ui/specialnote/BaseSpecialNoteView;->o:Landroid/view/View;

    :cond_0
    return-void
.end method

.method public reset(IJJ)V
    .locals 0

    .line 275
    iput p1, p0, Lcom/anythink/basead/ui/specialnote/BaseSpecialNoteView;->p:I

    .line 276
    iput-wide p2, p0, Lcom/anythink/basead/ui/specialnote/BaseSpecialNoteView;->d:J

    .line 277
    iput-wide p4, p0, Lcom/anythink/basead/ui/specialnote/BaseSpecialNoteView;->f:J

    .line 278
    invoke-direct {p0}, Lcom/anythink/basead/ui/specialnote/BaseSpecialNoteView;->k()V

    return-void
.end method

.method public resume()V
    .locals 1

    .line 249
    invoke-direct {p0}, Lcom/anythink/basead/ui/specialnote/BaseSpecialNoteView;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 250
    invoke-direct {p0}, Lcom/anythink/basead/ui/specialnote/BaseSpecialNoteView;->h()V

    .line 252
    :cond_0
    invoke-direct {p0}, Lcom/anythink/basead/ui/specialnote/BaseSpecialNoteView;->e()V

    return-void
.end method
