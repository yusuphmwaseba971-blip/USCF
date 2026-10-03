.class public abstract Lcom/anythink/core/common/f/l;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/anythink/core/common/f/n;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field public static final c:I = 0x1

.field public static final d:I = 0x2

.field public static final e:I = 0x3

.field public static final f:I = 0x4

.field public static final g:I = 0xa

.field public static final w:I = 0x1

.field public static final x:I = 0x2


# instance fields
.field protected A:Ljava/lang/String;

.field protected B:I

.field protected C:Ljava/lang/String;

.field protected D:Ljava/lang/String;

.field protected E:Ljava/lang/String;

.field protected F:Ljava/lang/String;

.field protected G:Ljava/lang/String;

.field protected H:Ljava/lang/String;

.field protected I:Ljava/lang/String;

.field protected J:Landroid/graphics/Bitmap;

.field protected K:Lcom/anythink/core/common/f/n;

.field protected L:Ljava/lang/String;

.field protected M:Ljava/lang/String;

.field protected N:I

.field protected O:Ljava/lang/String;

.field protected P:Ljava/lang/String;

.field protected Q:Ljava/lang/String;

.field protected R:Ljava/lang/String;

.field protected S:I

.field protected T:I

.field protected U:I

.field protected V:I

.field private a:Z

.field protected h:Ljava/lang/String;

.field protected i:Ljava/lang/String;

.field protected j:Ljava/lang/String;

.field protected k:Ljava/lang/String;

.field protected l:Ljava/lang/String;

.field protected m:Ljava/lang/String;

.field protected n:Ljava/lang/String;

.field protected o:Ljava/lang/String;

.field protected p:Ljava/lang/String;

.field protected q:Ljava/lang/String;

.field protected r:Ljava/lang/String;

.field protected s:Ljava/lang/String;

.field protected t:Ljava/lang/String;

.field protected u:Ljava/lang/String;

.field protected v:I

.field protected y:I

.field protected z:I


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private U()Ljava/lang/String;
    .locals 1

    .line 372
    iget-object v0, p0, Lcom/anythink/core/common/f/l;->A:Ljava/lang/String;

    return-object v0
.end method

.method private a()I
    .locals 1

    .line 156
    iget v0, p0, Lcom/anythink/core/common/f/l;->N:I

    return v0
.end method

.method private b()Ljava/lang/String;
    .locals 1

    .line 269
    iget-object v0, p0, Lcom/anythink/core/common/f/l;->m:Ljava/lang/String;

    return-object v0
.end method

.method private c()I
    .locals 1

    .line 364
    iget v0, p0, Lcom/anythink/core/common/f/l;->z:I

    return v0
.end method


# virtual methods
.method public final A()Ljava/lang/String;
    .locals 1

    .line 301
    iget-object v0, p0, Lcom/anythink/core/common/f/l;->q:Ljava/lang/String;

    return-object v0
.end method

.method public final A(Ljava/lang/String;)V
    .locals 0

    .line 395
    iput-object p1, p0, Lcom/anythink/core/common/f/l;->E:Ljava/lang/String;

    return-void
.end method

.method public final B()Ljava/lang/String;
    .locals 1

    .line 310
    iget-object v0, p0, Lcom/anythink/core/common/f/l;->r:Ljava/lang/String;

    return-object v0
.end method

.method public final B(Ljava/lang/String;)V
    .locals 0

    .line 403
    iput-object p1, p0, Lcom/anythink/core/common/f/l;->F:Ljava/lang/String;

    return-void
.end method

.method public final C()Ljava/lang/String;
    .locals 1

    .line 318
    iget-object v0, p0, Lcom/anythink/core/common/f/l;->s:Ljava/lang/String;

    return-object v0
.end method

.method public final C(Ljava/lang/String;)V
    .locals 0

    .line 411
    iput-object p1, p0, Lcom/anythink/core/common/f/l;->G:Ljava/lang/String;

    return-void
.end method

.method public final D()Ljava/lang/String;
    .locals 1

    .line 326
    iget-object v0, p0, Lcom/anythink/core/common/f/l;->t:Ljava/lang/String;

    return-object v0
.end method

.method public final D(Ljava/lang/String;)V
    .locals 0

    .line 441
    iput-object p1, p0, Lcom/anythink/core/common/f/l;->M:Ljava/lang/String;

    return-void
.end method

.method public final E()Ljava/lang/String;
    .locals 1

    .line 335
    iget-object v0, p0, Lcom/anythink/core/common/f/l;->u:Ljava/lang/String;

    return-object v0
.end method

.method public final E(Ljava/lang/String;)Z
    .locals 1

    .line 445
    iget-object v0, p0, Lcom/anythink/core/common/f/l;->q:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final F()I
    .locals 1

    .line 344
    iget v0, p0, Lcom/anythink/core/common/f/l;->v:I

    return v0
.end method

.method public final G()I
    .locals 1

    .line 352
    iget v0, p0, Lcom/anythink/core/common/f/l;->y:I

    return v0
.end method

.method public final H()Z
    .locals 1

    .line 360
    iget-object v0, p0, Lcom/anythink/core/common/f/l;->q:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final I()Ljava/lang/String;
    .locals 1

    .line 383
    iget-object v0, p0, Lcom/anythink/core/common/f/l;->D:Ljava/lang/String;

    return-object v0
.end method

.method public final J()Ljava/lang/String;
    .locals 1

    .line 391
    iget-object v0, p0, Lcom/anythink/core/common/f/l;->E:Ljava/lang/String;

    return-object v0
.end method

.method public final K()Ljava/lang/String;
    .locals 1

    .line 399
    iget-object v0, p0, Lcom/anythink/core/common/f/l;->F:Ljava/lang/String;

    return-object v0
.end method

.method public final L()Ljava/lang/String;
    .locals 1

    .line 407
    iget-object v0, p0, Lcom/anythink/core/common/f/l;->G:Ljava/lang/String;

    return-object v0
.end method

.method public final M()Landroid/graphics/Bitmap;
    .locals 1

    .line 415
    iget-object v0, p0, Lcom/anythink/core/common/f/l;->J:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public final N()Z
    .locals 1

    .line 425
    iget-object v0, p0, Lcom/anythink/core/common/f/l;->E:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/anythink/core/common/f/l;->D:Ljava/lang/String;

    .line 426
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/anythink/core/common/f/l;->F:Ljava/lang/String;

    .line 427
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/anythink/core/common/f/l;->G:Ljava/lang/String;

    .line 428
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public O()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final P()Ljava/lang/String;
    .locals 1

    .line 437
    iget-object v0, p0, Lcom/anythink/core/common/f/l;->M:Ljava/lang/String;

    return-object v0
.end method

.method public final Q()I
    .locals 1

    .line 450
    iget v0, p0, Lcom/anythink/core/common/f/l;->U:I

    return v0
.end method

.method public final R()I
    .locals 1

    .line 458
    iget v0, p0, Lcom/anythink/core/common/f/l;->V:I

    return v0
.end method

.method public final S()Z
    .locals 1

    .line 467
    iget-boolean v0, p0, Lcom/anythink/core/common/f/l;->a:Z

    return v0
.end method

.method public final T()V
    .locals 1

    const/4 v0, 0x1

    .line 471
    iput-boolean v0, p0, Lcom/anythink/core/common/f/l;->a:Z

    return-void
.end method

.method public final a(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 419
    iput-object p1, p0, Lcom/anythink/core/common/f/l;->J:Landroid/graphics/Bitmap;

    return-void
.end method

.method public final a(Lcom/anythink/core/common/f/n;)V
    .locals 0

    .line 196
    iput-object p1, p0, Lcom/anythink/core/common/f/l;->K:Lcom/anythink/core/common/f/n;

    return-void
.end method

.method public abstract b(Lcom/anythink/core/common/f/n;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public final b(I)V
    .locals 0

    .line 120
    iput p1, p0, Lcom/anythink/core/common/f/l;->S:I

    return-void
.end method

.method public final c(I)V
    .locals 0

    .line 128
    iput p1, p0, Lcom/anythink/core/common/f/l;->T:I

    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 0

    .line 112
    iput-object p1, p0, Lcom/anythink/core/common/f/l;->H:Ljava/lang/String;

    return-void
.end method

.method public abstract d()I
.end method

.method public final d(I)V
    .locals 0

    .line 164
    iput p1, p0, Lcom/anythink/core/common/f/l;->N:I

    return-void
.end method

.method public final d(Ljava/lang/String;)V
    .locals 0

    .line 144
    iput-object p1, p0, Lcom/anythink/core/common/f/l;->Q:Ljava/lang/String;

    return-void
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/anythink/core/common/f/l;->H:Ljava/lang/String;

    return-object v0
.end method

.method public final e(I)V
    .locals 0

    .line 217
    iput p1, p0, Lcom/anythink/core/common/f/l;->B:I

    return-void
.end method

.method public final e(Ljava/lang/String;)V
    .locals 0

    .line 152
    iput-object p1, p0, Lcom/anythink/core/common/f/l;->R:Ljava/lang/String;

    return-void
.end method

.method public final f()I
    .locals 1

    .line 116
    iget v0, p0, Lcom/anythink/core/common/f/l;->S:I

    return v0
.end method

.method public final f(I)V
    .locals 0

    .line 348
    iput p1, p0, Lcom/anythink/core/common/f/l;->v:I

    return-void
.end method

.method public final f(Ljava/lang/String;)V
    .locals 0

    .line 172
    iput-object p1, p0, Lcom/anythink/core/common/f/l;->O:Ljava/lang/String;

    return-void
.end method

.method public final g()I
    .locals 1

    .line 124
    iget v0, p0, Lcom/anythink/core/common/f/l;->T:I

    return v0
.end method

.method public final g(I)V
    .locals 0

    .line 356
    iput p1, p0, Lcom/anythink/core/common/f/l;->y:I

    return-void
.end method

.method public final g(Ljava/lang/String;)V
    .locals 0

    .line 180
    iput-object p1, p0, Lcom/anythink/core/common/f/l;->P:Ljava/lang/String;

    return-void
.end method

.method public final h()Ljava/lang/String;
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/anythink/core/common/f/l;->Q:Ljava/lang/String;

    return-object v0
.end method

.method public final h(I)V
    .locals 0

    .line 368
    iput p1, p0, Lcom/anythink/core/common/f/l;->z:I

    return-void
.end method

.method public final h(Ljava/lang/String;)V
    .locals 0

    .line 188
    iput-object p1, p0, Lcom/anythink/core/common/f/l;->L:Ljava/lang/String;

    return-void
.end method

.method public final i()Ljava/lang/String;
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/anythink/core/common/f/l;->R:Ljava/lang/String;

    return-object v0
.end method

.method public final i(I)V
    .locals 0

    .line 454
    iput p1, p0, Lcom/anythink/core/common/f/l;->U:I

    return-void
.end method

.method public final i(Ljava/lang/String;)V
    .locals 0

    .line 204
    iput-object p1, p0, Lcom/anythink/core/common/f/l;->I:Ljava/lang/String;

    return-void
.end method

.method public final j(I)V
    .locals 0

    .line 462
    iput p1, p0, Lcom/anythink/core/common/f/l;->V:I

    return-void
.end method

.method public final j(Ljava/lang/String;)V
    .locals 0

    .line 225
    iput-object p1, p0, Lcom/anythink/core/common/f/l;->C:Ljava/lang/String;

    return-void
.end method

.method public final j()Z
    .locals 2

    .line 160
    iget v0, p0, Lcom/anythink/core/common/f/l;->N:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final k()Ljava/lang/String;
    .locals 1

    .line 168
    iget-object v0, p0, Lcom/anythink/core/common/f/l;->O:Ljava/lang/String;

    return-object v0
.end method

.method public final k(Ljava/lang/String;)V
    .locals 0

    .line 233
    iput-object p1, p0, Lcom/anythink/core/common/f/l;->h:Ljava/lang/String;

    return-void
.end method

.method public final l()Ljava/lang/String;
    .locals 1

    .line 176
    iget-object v0, p0, Lcom/anythink/core/common/f/l;->P:Ljava/lang/String;

    return-object v0
.end method

.method public final l(Ljava/lang/String;)V
    .locals 0

    .line 241
    iput-object p1, p0, Lcom/anythink/core/common/f/l;->i:Ljava/lang/String;

    return-void
.end method

.method public final m()Ljava/lang/String;
    .locals 1

    .line 184
    iget-object v0, p0, Lcom/anythink/core/common/f/l;->L:Ljava/lang/String;

    return-object v0
.end method

.method public final m(Ljava/lang/String;)V
    .locals 0

    .line 249
    iput-object p1, p0, Lcom/anythink/core/common/f/l;->j:Ljava/lang/String;

    return-void
.end method

.method public final n()Lcom/anythink/core/common/f/n;
    .locals 1

    .line 192
    iget-object v0, p0, Lcom/anythink/core/common/f/l;->K:Lcom/anythink/core/common/f/n;

    return-object v0
.end method

.method public final n(Ljava/lang/String;)V
    .locals 0

    .line 257
    iput-object p1, p0, Lcom/anythink/core/common/f/l;->k:Ljava/lang/String;

    return-void
.end method

.method public final o()Ljava/lang/String;
    .locals 1

    .line 200
    iget-object v0, p0, Lcom/anythink/core/common/f/l;->I:Ljava/lang/String;

    return-object v0
.end method

.method public final o(Ljava/lang/String;)V
    .locals 0

    .line 265
    iput-object p1, p0, Lcom/anythink/core/common/f/l;->l:Ljava/lang/String;

    return-void
.end method

.method public abstract p()Ljava/lang/String;
.end method

.method public final p(Ljava/lang/String;)V
    .locals 0

    .line 273
    iput-object p1, p0, Lcom/anythink/core/common/f/l;->m:Ljava/lang/String;

    return-void
.end method

.method public final q()I
    .locals 1

    .line 213
    iget v0, p0, Lcom/anythink/core/common/f/l;->B:I

    return v0
.end method

.method public final q(Ljava/lang/String;)V
    .locals 0

    .line 281
    iput-object p1, p0, Lcom/anythink/core/common/f/l;->n:Ljava/lang/String;

    return-void
.end method

.method public final r()Ljava/lang/String;
    .locals 1

    .line 221
    iget-object v0, p0, Lcom/anythink/core/common/f/l;->C:Ljava/lang/String;

    return-object v0
.end method

.method public final r(Ljava/lang/String;)V
    .locals 0

    .line 289
    iput-object p1, p0, Lcom/anythink/core/common/f/l;->o:Ljava/lang/String;

    return-void
.end method

.method public final s()Ljava/lang/String;
    .locals 1

    .line 229
    iget-object v0, p0, Lcom/anythink/core/common/f/l;->h:Ljava/lang/String;

    return-object v0
.end method

.method public final s(Ljava/lang/String;)V
    .locals 0

    .line 297
    iput-object p1, p0, Lcom/anythink/core/common/f/l;->p:Ljava/lang/String;

    return-void
.end method

.method public final t()Ljava/lang/String;
    .locals 1

    .line 237
    iget-object v0, p0, Lcom/anythink/core/common/f/l;->i:Ljava/lang/String;

    return-object v0
.end method

.method public final t(Ljava/lang/String;)V
    .locals 0

    .line 305
    iput-object p1, p0, Lcom/anythink/core/common/f/l;->q:Ljava/lang/String;

    return-void
.end method

.method public final u()Ljava/lang/String;
    .locals 1

    .line 245
    iget-object v0, p0, Lcom/anythink/core/common/f/l;->j:Ljava/lang/String;

    return-object v0
.end method

.method public final u(Ljava/lang/String;)V
    .locals 0

    .line 314
    iput-object p1, p0, Lcom/anythink/core/common/f/l;->r:Ljava/lang/String;

    return-void
.end method

.method public final v()Ljava/lang/String;
    .locals 1

    .line 253
    iget-object v0, p0, Lcom/anythink/core/common/f/l;->k:Ljava/lang/String;

    return-object v0
.end method

.method public final v(Ljava/lang/String;)V
    .locals 0

    .line 322
    iput-object p1, p0, Lcom/anythink/core/common/f/l;->s:Ljava/lang/String;

    return-void
.end method

.method public final w()Ljava/lang/String;
    .locals 1

    .line 261
    iget-object v0, p0, Lcom/anythink/core/common/f/l;->l:Ljava/lang/String;

    return-object v0
.end method

.method public final w(Ljava/lang/String;)V
    .locals 0

    .line 330
    iput-object p1, p0, Lcom/anythink/core/common/f/l;->t:Ljava/lang/String;

    return-void
.end method

.method public final x()Ljava/lang/String;
    .locals 1

    .line 277
    iget-object v0, p0, Lcom/anythink/core/common/f/l;->n:Ljava/lang/String;

    return-object v0
.end method

.method public final x(Ljava/lang/String;)V
    .locals 0

    .line 339
    iput-object p1, p0, Lcom/anythink/core/common/f/l;->u:Ljava/lang/String;

    return-void
.end method

.method public final y()Ljava/lang/String;
    .locals 1

    .line 285
    iget-object v0, p0, Lcom/anythink/core/common/f/l;->o:Ljava/lang/String;

    return-object v0
.end method

.method public final y(Ljava/lang/String;)V
    .locals 0

    .line 376
    iput-object p1, p0, Lcom/anythink/core/common/f/l;->A:Ljava/lang/String;

    return-void
.end method

.method public final z()Ljava/lang/String;
    .locals 1

    .line 293
    iget-object v0, p0, Lcom/anythink/core/common/f/l;->p:Ljava/lang/String;

    return-object v0
.end method

.method public final z(Ljava/lang/String;)V
    .locals 0

    .line 387
    iput-object p1, p0, Lcom/anythink/core/common/f/l;->D:Ljava/lang/String;

    return-void
.end method
