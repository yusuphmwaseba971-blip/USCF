.class public Lcom/anythink/core/common/f/au;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/anythink/core/common/f/au;",
        ">;"
    }
.end annotation


# instance fields
.field private A:Ljava/lang/String;

.field private B:Ljava/lang/String;

.field private C:J

.field private D:Ljava/lang/String;

.field private E:I

.field private F:I

.field private G:D

.field private H:I

.field private I:Ljava/lang/String;

.field private J:Ljava/lang/String;

.field private K:I

.field private L:J

.field private M:J

.field private N:J

.field private O:J

.field private P:I

.field private Q:Ljava/lang/String;

.field private R:J

.field private S:J

.field private T:J

.field private U:J

.field private V:I

.field private W:I

.field private X:I

.field private Y:I

.field private Z:Ljava/lang/String;

.field a:I

.field private aA:I

.field private aa:J

.field private ab:J

.field private ac:D

.field private ad:I

.field private ae:I

.field private af:I

.field private ag:I

.field private ah:I

.field private ai:I

.field private aj:Lcom/anythink/core/common/f/q;

.field private ak:I

.field private al:I

.field private am:Ljava/lang/String;

.field private an:I

.field private ao:I

.field private ap:I

.field private aq:I

.field private ar:Lcom/anythink/core/api/ATAdConst$CURRENCY;

.field private as:D

.field private at:D

.field private au:D

.field private av:D

.field private aw:[I

.field private ax:I

.field private ay:I

.field private az:Lorg/json/JSONArray;

.field b:I

.field c:I

.field d:I

.field e:Ljava/lang/String;

.field f:I

.field g:I

.field h:D

.field i:I

.field j:D

.field k:Ljava/lang/String;

.field l:Z

.field protected m:I

.field n:I

.field o:I

.field p:I

.field q:I

.field r:Z

.field s:D

.field t:Ljava/lang/String;

.field u:J

.field private v:I

.field private w:Ljava/lang/String;

.field private x:I

.field private y:I

.field private z:Ljava/lang/String;


# direct methods
.method public constructor <init>(I)V
    .locals 2

    .line 321
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 243
    iput v0, p0, Lcom/anythink/core/common/f/au;->b:I

    const/4 v1, -0x1

    .line 264
    iput v1, p0, Lcom/anythink/core/common/f/au;->aq:I

    .line 270
    sget-object v1, Lcom/anythink/core/api/ATAdConst$CURRENCY;->USD:Lcom/anythink/core/api/ATAdConst$CURRENCY;

    iput-object v1, p0, Lcom/anythink/core/common/f/au;->ar:Lcom/anythink/core/api/ATAdConst$CURRENCY;

    const/4 v1, 0x2

    .line 301
    iput v1, p0, Lcom/anythink/core/common/f/au;->q:I

    .line 302
    iput-boolean v0, p0, Lcom/anythink/core/common/f/au;->r:Z

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    .line 303
    iput-wide v0, p0, Lcom/anythink/core/common/f/au;->s:D

    const/4 v0, 0x1

    .line 315
    iput v0, p0, Lcom/anythink/core/common/f/au;->ax:I

    .line 316
    iput v0, p0, Lcom/anythink/core/common/f/au;->ay:I

    .line 322
    iput p1, p0, Lcom/anythink/core/common/f/au;->ao:I

    return-void
.end method

.method private I(I)V
    .locals 0

    .line 589
    iput p1, p0, Lcom/anythink/core/common/f/au;->X:I

    return-void
.end method

.method private J(I)V
    .locals 0

    .line 669
    iput p1, p0, Lcom/anythink/core/common/f/au;->ak:I

    return-void
.end method

.method private a(Lcom/anythink/core/common/f/au;)I
    .locals 5

    .line 766
    invoke-static {p0}, Lcom/anythink/core/common/o/h;->a(Lcom/anythink/core/common/f/au;)D

    move-result-wide v0

    invoke-static {p1}, Lcom/anythink/core/common/o/h;->a(Lcom/anythink/core/common/f/au;)D

    move-result-wide v2

    cmpl-double v4, v0, v2

    if-lez v4, :cond_0

    const/4 p1, -0x1

    return p1

    .line 772
    :cond_0
    invoke-static {p0}, Lcom/anythink/core/common/o/h;->a(Lcom/anythink/core/common/f/au;)D

    move-result-wide v0

    invoke-static {p1}, Lcom/anythink/core/common/o/h;->a(Lcom/anythink/core/common/f/au;)D

    move-result-wide v2

    cmpl-double p1, v0, v2

    if-nez p1, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method private a(Lcom/anythink/core/common/f/q;)V
    .locals 0

    .line 661
    iput-object p1, p0, Lcom/anythink/core/common/f/au;->aj:Lcom/anythink/core/common/f/q;

    return-void
.end method

.method private aD()J
    .locals 2

    .line 529
    iget-wide v0, p0, Lcom/anythink/core/common/f/au;->R:J

    return-wide v0
.end method

.method private aE()I
    .locals 1

    .line 585
    iget v0, p0, Lcom/anythink/core/common/f/au;->X:I

    return v0
.end method

.method private aF()I
    .locals 1

    .line 633
    iget v0, p0, Lcom/anythink/core/common/f/au;->ad:I

    return v0
.end method

.method private aG()I
    .locals 1

    .line 689
    iget v0, p0, Lcom/anythink/core/common/f/au;->ap:I

    return v0
.end method

.method private aH()Z
    .locals 2

    .line 1054
    iget v0, p0, Lcom/anythink/core/common/f/au;->ay:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private m(Ljava/lang/String;)V
    .locals 0

    .line 685
    iput-object p1, p0, Lcom/anythink/core/common/f/au;->am:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final A()Ljava/lang/String;
    .locals 1

    .line 545
    iget-object v0, p0, Lcom/anythink/core/common/f/au;->J:Ljava/lang/String;

    return-object v0
.end method

.method public final A(I)V
    .locals 0

    .line 913
    iput p1, p0, Lcom/anythink/core/common/f/au;->m:I

    return-void
.end method

.method public final B()J
    .locals 2

    .line 557
    iget-wide v0, p0, Lcom/anythink/core/common/f/au;->S:J

    return-wide v0
.end method

.method public final B(I)V
    .locals 0

    .line 921
    iput p1, p0, Lcom/anythink/core/common/f/au;->n:I

    return-void
.end method

.method public final C()J
    .locals 2

    .line 565
    iget-wide v0, p0, Lcom/anythink/core/common/f/au;->T:J

    return-wide v0
.end method

.method public final C(I)V
    .locals 0

    .line 929
    iput p1, p0, Lcom/anythink/core/common/f/au;->o:I

    return-void
.end method

.method public final D()I
    .locals 1

    .line 569
    iget v0, p0, Lcom/anythink/core/common/f/au;->V:I

    return v0
.end method

.method public final D(I)V
    .locals 0

    .line 937
    iput p1, p0, Lcom/anythink/core/common/f/au;->p:I

    return-void
.end method

.method public final E()I
    .locals 1

    .line 577
    iget v0, p0, Lcom/anythink/core/common/f/au;->W:I

    return v0
.end method

.method public final E(I)V
    .locals 0

    .line 945
    iput p1, p0, Lcom/anythink/core/common/f/au;->q:I

    return-void
.end method

.method public final F()I
    .locals 1

    .line 593
    iget v0, p0, Lcom/anythink/core/common/f/au;->Y:I

    return v0
.end method

.method public final F(I)V
    .locals 0

    .line 1042
    iput p1, p0, Lcom/anythink/core/common/f/au;->ax:I

    return-void
.end method

.method public final G()Ljava/lang/String;
    .locals 1

    .line 601
    iget-object v0, p0, Lcom/anythink/core/common/f/au;->Z:Ljava/lang/String;

    return-object v0
.end method

.method public final G(I)V
    .locals 0

    .line 1050
    iput p1, p0, Lcom/anythink/core/common/f/au;->ay:I

    return-void
.end method

.method public final H()J
    .locals 2

    .line 613
    iget-wide v0, p0, Lcom/anythink/core/common/f/au;->aa:J

    return-wide v0
.end method

.method public final H(I)V
    .locals 0

    .line 1081
    iput p1, p0, Lcom/anythink/core/common/f/au;->aA:I

    return-void
.end method

.method public final I()J
    .locals 2

    .line 617
    iget-wide v0, p0, Lcom/anythink/core/common/f/au;->ab:J

    return-wide v0
.end method

.method public final J()D
    .locals 2

    .line 625
    iget-wide v0, p0, Lcom/anythink/core/common/f/au;->ac:D

    return-wide v0
.end method

.method public final K()I
    .locals 1

    .line 641
    iget v0, p0, Lcom/anythink/core/common/f/au;->ae:I

    return v0
.end method

.method public final L()Z
    .locals 2

    .line 649
    iget v0, p0, Lcom/anythink/core/common/f/au;->af:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final M()Lcom/anythink/core/common/f/q;
    .locals 1

    .line 657
    iget-object v0, p0, Lcom/anythink/core/common/f/au;->aj:Lcom/anythink/core/common/f/q;

    return-object v0
.end method

.method public final N()I
    .locals 1

    .line 665
    iget v0, p0, Lcom/anythink/core/common/f/au;->ak:I

    return v0
.end method

.method public final O()I
    .locals 1

    .line 673
    iget v0, p0, Lcom/anythink/core/common/f/au;->al:I

    return v0
.end method

.method public final P()V
    .locals 1

    const/4 v0, 0x1

    .line 677
    iput v0, p0, Lcom/anythink/core/common/f/au;->al:I

    return-void
.end method

.method public final Q()Ljava/lang/String;
    .locals 1

    .line 681
    iget-object v0, p0, Lcom/anythink/core/common/f/au;->am:Ljava/lang/String;

    return-object v0
.end method

.method public final R()I
    .locals 1

    .line 702
    iget v0, p0, Lcom/anythink/core/common/f/au;->b:I

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public final S()I
    .locals 1

    .line 713
    iget v0, p0, Lcom/anythink/core/common/f/au;->c:I

    return v0
.end method

.method public final T()I
    .locals 1

    .line 718
    iget v0, p0, Lcom/anythink/core/common/f/au;->d:I

    return v0
.end method

.method public final U()Ljava/lang/String;
    .locals 1

    .line 726
    iget-object v0, p0, Lcom/anythink/core/common/f/au;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final V()I
    .locals 1

    .line 734
    iget v0, p0, Lcom/anythink/core/common/f/au;->a:I

    return v0
.end method

.method public final W()I
    .locals 1

    .line 742
    iget v0, p0, Lcom/anythink/core/common/f/au;->aq:I

    return v0
.end method

.method public final X()I
    .locals 1

    .line 750
    iget-object v0, p0, Lcom/anythink/core/common/f/au;->aj:Lcom/anythink/core/common/f/q;

    if-eqz v0, :cond_0

    iget v0, v0, Lcom/anythink/core/common/f/q;->n:I

    if-eqz v0, :cond_0

    .line 751
    iget-object v0, p0, Lcom/anythink/core/common/f/au;->aj:Lcom/anythink/core/common/f/q;

    iget v0, v0, Lcom/anythink/core/common/f/q;->n:I

    return v0

    .line 753
    :cond_0
    iget v0, p0, Lcom/anythink/core/common/f/au;->f:I

    return v0
.end method

.method public final Y()Z
    .locals 2

    .line 1341
    iget v0, p0, Lcom/anythink/core/common/f/au;->v:I

    const/16 v1, 0x42

    if-eq v0, v1, :cond_1

    const/16 v1, 0x43

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public final Z()Z
    .locals 2

    .line 835
    iget v0, p0, Lcom/anythink/core/common/f/au;->v:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/anythink/core/common/f/au;->ai:I

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final a()I
    .locals 1

    .line 326
    iget v0, p0, Lcom/anythink/core/common/f/au;->ao:I

    return v0
.end method

.method public final a(D)V
    .locals 0

    .line 525
    iput-wide p1, p0, Lcom/anythink/core/common/f/au;->G:D

    return-void
.end method

.method public final a(I)V
    .locals 0

    .line 345
    iput p1, p0, Lcom/anythink/core/common/f/au;->v:I

    return-void
.end method

.method public final a(J)V
    .locals 0

    .line 413
    iput-wide p1, p0, Lcom/anythink/core/common/f/au;->M:J

    return-void
.end method

.method public final a(Lcom/anythink/core/api/ATAdConst$CURRENCY;)V
    .locals 0

    .line 855
    iput-object p1, p0, Lcom/anythink/core/common/f/au;->ar:Lcom/anythink/core/api/ATAdConst$CURRENCY;

    return-void
.end method

.method public final declared-synchronized a(Lcom/anythink/core/common/f/au;III)V
    .locals 2

    monitor-enter p0

    .line 787
    :try_start_0
    iget-object v0, p1, Lcom/anythink/core/common/f/au;->Q:Ljava/lang/String;

    iget-object v1, p0, Lcom/anythink/core/common/f/au;->Q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 788
    iget-wide v0, p1, Lcom/anythink/core/common/f/au;->G:D

    .line 2525
    iput-wide v0, p0, Lcom/anythink/core/common/f/au;->G:D

    .line 789
    iget-wide v0, p1, Lcom/anythink/core/common/f/au;->j:D

    .line 2889
    iput-wide v0, p0, Lcom/anythink/core/common/f/au;->j:D

    .line 3446
    iput p3, p0, Lcom/anythink/core/common/f/au;->K:I

    .line 791
    iget-object p3, p1, Lcom/anythink/core/common/f/au;->I:Ljava/lang/String;

    .line 3541
    iput-object p3, p0, Lcom/anythink/core/common/f/au;->I:Ljava/lang/String;

    .line 792
    iget-object p3, p1, Lcom/anythink/core/common/f/au;->am:Ljava/lang/String;

    .line 3685
    iput-object p3, p0, Lcom/anythink/core/common/f/au;->am:Ljava/lang/String;

    const/4 p3, 0x0

    .line 793
    iput p3, p0, Lcom/anythink/core/common/f/au;->ah:I

    if-nez p2, :cond_0

    .line 4665
    iget p2, p1, Lcom/anythink/core/common/f/au;->ak:I

    .line 4669
    iput p2, p0, Lcom/anythink/core/common/f/au;->ak:I

    goto :goto_0

    .line 5669
    :cond_0
    iput p2, p0, Lcom/anythink/core/common/f/au;->ak:I

    .line 6545
    :goto_0
    iget-object p2, p1, Lcom/anythink/core/common/f/au;->J:Ljava/lang/String;

    .line 6549
    iput-object p2, p0, Lcom/anythink/core/common/f/au;->J:Ljava/lang/String;

    .line 6657
    iget-object p1, p1, Lcom/anythink/core/common/f/au;->aj:Lcom/anythink/core/common/f/q;

    .line 6661
    iput-object p1, p0, Lcom/anythink/core/common/f/au;->aj:Lcom/anythink/core/common/f/q;

    .line 6677
    iput p4, p0, Lcom/anythink/core/common/f/au;->al:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 804
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final a(Lcom/anythink/core/common/f/q;III)V
    .locals 2

    .line 7446
    iput p3, p0, Lcom/anythink/core/common/f/au;->K:I

    .line 812
    invoke-virtual {p1}, Lcom/anythink/core/common/f/q;->getPrice()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/anythink/core/common/f/au;->G:D

    .line 813
    invoke-virtual {p1}, Lcom/anythink/core/common/f/q;->getSortPrice()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/anythink/core/common/f/au;->j:D

    .line 814
    iget-object p3, p1, Lcom/anythink/core/common/f/q;->token:Ljava/lang/String;

    iput-object p3, p0, Lcom/anythink/core/common/f/au;->I:Ljava/lang/String;

    .line 815
    iget-object p3, p1, Lcom/anythink/core/common/f/q;->m:Ljava/lang/String;

    iput-object p3, p0, Lcom/anythink/core/common/f/au;->am:Ljava/lang/String;

    const/4 p3, 0x0

    .line 816
    iput p3, p0, Lcom/anythink/core/common/f/au;->ah:I

    .line 7669
    iput p2, p0, Lcom/anythink/core/common/f/au;->ak:I

    .line 8661
    iput-object p1, p0, Lcom/anythink/core/common/f/au;->aj:Lcom/anythink/core/common/f/q;

    .line 8677
    iput p4, p0, Lcom/anythink/core/common/f/au;->al:I

    const/4 p1, 0x1

    if-ne p4, p1, :cond_0

    const-string p1, ""

    .line 9549
    iput-object p1, p0, Lcom/anythink/core/common/f/au;->J:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    .line 353
    iput-object p1, p0, Lcom/anythink/core/common/f/au;->w:Ljava/lang/String;

    return-void
.end method

.method public final a(Lorg/json/JSONArray;)V
    .locals 0

    .line 1073
    iput-object p1, p0, Lcom/anythink/core/common/f/au;->az:Lorg/json/JSONArray;

    return-void
.end method

.method public final a([I)V
    .locals 0

    .line 1030
    iput-object p1, p0, Lcom/anythink/core/common/f/au;->aw:[I

    return-void
.end method

.method public final aA()Z
    .locals 2

    .line 1063
    iget v0, p0, Lcom/anythink/core/common/f/au;->v:I

    const/16 v1, 0x1c

    if-eq v0, v1, :cond_1

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    const/16 v1, 0x1d

    if-eq v0, v1, :cond_1

    const/16 v1, 0xf

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public final aB()Lorg/json/JSONArray;
    .locals 1

    .line 1069
    iget-object v0, p0, Lcom/anythink/core/common/f/au;->az:Lorg/json/JSONArray;

    return-object v0
.end method

.method public final aC()I
    .locals 1

    .line 1077
    iget v0, p0, Lcom/anythink/core/common/f/au;->aA:I

    return v0
.end method

.method public final aa()I
    .locals 1

    .line 841
    iget v0, p0, Lcom/anythink/core/common/f/au;->an:I

    return v0
.end method

.method public final ab()Lcom/anythink/core/api/ATAdConst$CURRENCY;
    .locals 1

    .line 851
    iget-object v0, p0, Lcom/anythink/core/common/f/au;->ar:Lcom/anythink/core/api/ATAdConst$CURRENCY;

    return-object v0
.end method

.method public final ac()I
    .locals 1

    .line 860
    iget v0, p0, Lcom/anythink/core/common/f/au;->g:I

    return v0
.end method

.method public final ad()D
    .locals 2

    .line 869
    iget-wide v0, p0, Lcom/anythink/core/common/f/au;->h:D

    return-wide v0
.end method

.method public final ae()I
    .locals 1

    .line 877
    iget v0, p0, Lcom/anythink/core/common/f/au;->i:I

    return v0
.end method

.method public final af()D
    .locals 2

    .line 885
    iget-wide v0, p0, Lcom/anythink/core/common/f/au;->j:D

    return-wide v0
.end method

.method public final ag()Ljava/lang/String;
    .locals 1

    .line 893
    iget-object v0, p0, Lcom/anythink/core/common/f/au;->k:Ljava/lang/String;

    return-object v0
.end method

.method public final ah()Z
    .locals 1

    .line 901
    iget-boolean v0, p0, Lcom/anythink/core/common/f/au;->l:Z

    return v0
.end method

.method public final ai()V
    .locals 1

    const/4 v0, 0x1

    .line 905
    iput-boolean v0, p0, Lcom/anythink/core/common/f/au;->l:Z

    return-void
.end method

.method public final aj()I
    .locals 1

    .line 909
    iget v0, p0, Lcom/anythink/core/common/f/au;->m:I

    return v0
.end method

.method public final ak()I
    .locals 1

    .line 917
    iget v0, p0, Lcom/anythink/core/common/f/au;->n:I

    return v0
.end method

.method public final al()I
    .locals 1

    .line 925
    iget v0, p0, Lcom/anythink/core/common/f/au;->o:I

    return v0
.end method

.method public final am()I
    .locals 1

    .line 933
    iget v0, p0, Lcom/anythink/core/common/f/au;->p:I

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public final an()I
    .locals 1

    .line 941
    iget v0, p0, Lcom/anythink/core/common/f/au;->q:I

    return v0
.end method

.method public final ao()Z
    .locals 1

    .line 949
    iget-boolean v0, p0, Lcom/anythink/core/common/f/au;->r:Z

    return v0
.end method

.method public final ap()V
    .locals 1

    const/4 v0, 0x1

    .line 953
    iput-boolean v0, p0, Lcom/anythink/core/common/f/au;->r:Z

    return-void
.end method

.method public final aq()D
    .locals 2

    .line 957
    iget-wide v0, p0, Lcom/anythink/core/common/f/au;->s:D

    return-wide v0
.end method

.method public final ar()Ljava/lang/String;
    .locals 1

    .line 965
    iget-object v0, p0, Lcom/anythink/core/common/f/au;->t:Ljava/lang/String;

    return-object v0
.end method

.method public final as()J
    .locals 2

    .line 973
    iget-wide v0, p0, Lcom/anythink/core/common/f/au;->u:J

    return-wide v0
.end method

.method public final at()D
    .locals 2

    .line 981
    iget-wide v0, p0, Lcom/anythink/core/common/f/au;->as:D

    return-wide v0
.end method

.method public final au()D
    .locals 2

    .line 989
    iget-wide v0, p0, Lcom/anythink/core/common/f/au;->at:D

    return-wide v0
.end method

.method public final av()D
    .locals 2

    .line 997
    iget-wide v0, p0, Lcom/anythink/core/common/f/au;->au:D

    return-wide v0
.end method

.method public final aw()D
    .locals 2

    .line 1005
    iget-wide v0, p0, Lcom/anythink/core/common/f/au;->av:D

    return-wide v0
.end method

.method public final ax()[I
    .locals 1

    .line 1034
    iget-object v0, p0, Lcom/anythink/core/common/f/au;->aw:[I

    return-object v0
.end method

.method public final ay()I
    .locals 1

    .line 1038
    iget v0, p0, Lcom/anythink/core/common/f/au;->ax:I

    return v0
.end method

.method public final az()I
    .locals 1

    .line 1046
    iget v0, p0, Lcom/anythink/core/common/f/au;->ay:I

    return v0
.end method

.method public final b()I
    .locals 1

    .line 330
    iget v0, p0, Lcom/anythink/core/common/f/au;->ah:I

    return v0
.end method

.method public final b(D)V
    .locals 0

    .line 629
    iput-wide p1, p0, Lcom/anythink/core/common/f/au;->ac:D

    return-void
.end method

.method public final b(I)V
    .locals 0

    .line 361
    iput p1, p0, Lcom/anythink/core/common/f/au;->x:I

    return-void
.end method

.method public final b(J)V
    .locals 0

    .line 438
    iput-wide p1, p0, Lcom/anythink/core/common/f/au;->U:J

    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 0

    .line 377
    iput-object p1, p0, Lcom/anythink/core/common/f/au;->z:Ljava/lang/String;

    return-void
.end method

.method public final c()V
    .locals 1

    const/4 v0, -0x1

    .line 334
    iput v0, p0, Lcom/anythink/core/common/f/au;->ah:I

    return-void
.end method

.method public final c(D)V
    .locals 0

    .line 873
    iput-wide p1, p0, Lcom/anythink/core/common/f/au;->h:D

    return-void
.end method

.method public final c(I)V
    .locals 0

    .line 369
    iput p1, p0, Lcom/anythink/core/common/f/au;->y:I

    return-void
.end method

.method public final c(J)V
    .locals 0

    .line 454
    iput-wide p1, p0, Lcom/anythink/core/common/f/au;->N:J

    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 0

    .line 385
    iput-object p1, p0, Lcom/anythink/core/common/f/au;->A:Ljava/lang/String;

    return-void
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 5

    .line 17
    check-cast p1, Lcom/anythink/core/common/f/au;

    .line 10766
    invoke-static {p0}, Lcom/anythink/core/common/o/h;->a(Lcom/anythink/core/common/f/au;)D

    move-result-wide v0

    invoke-static {p1}, Lcom/anythink/core/common/o/h;->a(Lcom/anythink/core/common/f/au;)D

    move-result-wide v2

    cmpl-double v4, v0, v2

    if-lez v4, :cond_0

    const/4 p1, -0x1

    return p1

    .line 10772
    :cond_0
    invoke-static {p0}, Lcom/anythink/core/common/o/h;->a(Lcom/anythink/core/common/f/au;)D

    move-result-wide v0

    invoke-static {p1}, Lcom/anythink/core/common/o/h;->a(Lcom/anythink/core/common/f/au;)D

    move-result-wide v2

    cmpl-double p1, v0, v2

    if-nez p1, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public final d()I
    .locals 1

    .line 341
    iget v0, p0, Lcom/anythink/core/common/f/au;->v:I

    return v0
.end method

.method public final d(D)V
    .locals 0

    .line 889
    iput-wide p1, p0, Lcom/anythink/core/common/f/au;->j:D

    return-void
.end method

.method public final d(I)V
    .locals 0

    .line 405
    iput p1, p0, Lcom/anythink/core/common/f/au;->H:I

    return-void
.end method

.method public final d(J)V
    .locals 0

    .line 462
    iput-wide p1, p0, Lcom/anythink/core/common/f/au;->O:J

    return-void
.end method

.method public final d(Ljava/lang/String;)V
    .locals 0

    .line 393
    iput-object p1, p0, Lcom/anythink/core/common/f/au;->B:Ljava/lang/String;

    return-void
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    .line 349
    iget-object v0, p0, Lcom/anythink/core/common/f/au;->w:Ljava/lang/String;

    return-object v0
.end method

.method public final e(D)V
    .locals 0

    .line 961
    iput-wide p1, p0, Lcom/anythink/core/common/f/au;->s:D

    return-void
.end method

.method public final e(I)V
    .locals 0

    .line 422
    iput p1, p0, Lcom/anythink/core/common/f/au;->ai:I

    return-void
.end method

.method public final e(J)V
    .locals 0

    .line 478
    iput-wide p1, p0, Lcom/anythink/core/common/f/au;->C:J

    return-void
.end method

.method public final e(Ljava/lang/String;)V
    .locals 0

    .line 490
    iput-object p1, p0, Lcom/anythink/core/common/f/au;->Q:Ljava/lang/String;

    return-void
.end method

.method public final f()I
    .locals 1

    .line 357
    iget v0, p0, Lcom/anythink/core/common/f/au;->x:I

    return v0
.end method

.method public final f(D)V
    .locals 0

    .line 985
    iput-wide p1, p0, Lcom/anythink/core/common/f/au;->as:D

    return-void
.end method

.method public final f(I)V
    .locals 0

    .line 430
    iput p1, p0, Lcom/anythink/core/common/f/au;->ag:I

    return-void
.end method

.method public final f(J)V
    .locals 0

    .line 533
    iput-wide p1, p0, Lcom/anythink/core/common/f/au;->R:J

    return-void
.end method

.method public final f(Ljava/lang/String;)V
    .locals 0

    .line 498
    iput-object p1, p0, Lcom/anythink/core/common/f/au;->D:Ljava/lang/String;

    return-void
.end method

.method public final g()I
    .locals 1

    .line 365
    iget v0, p0, Lcom/anythink/core/common/f/au;->y:I

    return v0
.end method

.method public final g(D)V
    .locals 0

    .line 993
    iput-wide p1, p0, Lcom/anythink/core/common/f/au;->at:D

    return-void
.end method

.method public final g(I)V
    .locals 0

    .line 446
    iput p1, p0, Lcom/anythink/core/common/f/au;->K:I

    return-void
.end method

.method public final g(J)V
    .locals 0

    .line 553
    iput-wide p1, p0, Lcom/anythink/core/common/f/au;->S:J

    return-void
.end method

.method public final g(Ljava/lang/String;)V
    .locals 0

    .line 541
    iput-object p1, p0, Lcom/anythink/core/common/f/au;->I:Ljava/lang/String;

    return-void
.end method

.method public final h()Ljava/lang/String;
    .locals 1

    .line 373
    iget-object v0, p0, Lcom/anythink/core/common/f/au;->z:Ljava/lang/String;

    return-object v0
.end method

.method public final h(D)V
    .locals 0

    .line 1001
    iput-wide p1, p0, Lcom/anythink/core/common/f/au;->au:D

    return-void
.end method

.method public final h(I)V
    .locals 0

    .line 470
    iput p1, p0, Lcom/anythink/core/common/f/au;->P:I

    return-void
.end method

.method public final h(J)V
    .locals 0

    .line 561
    iput-wide p1, p0, Lcom/anythink/core/common/f/au;->T:J

    return-void
.end method

.method public final h(Ljava/lang/String;)V
    .locals 0

    .line 549
    iput-object p1, p0, Lcom/anythink/core/common/f/au;->J:Ljava/lang/String;

    return-void
.end method

.method public final i()Ljava/lang/String;
    .locals 1

    .line 381
    iget-object v0, p0, Lcom/anythink/core/common/f/au;->A:Ljava/lang/String;

    return-object v0
.end method

.method public final i(D)V
    .locals 0

    .line 1009
    iput-wide p1, p0, Lcom/anythink/core/common/f/au;->av:D

    return-void
.end method

.method public final i(I)V
    .locals 0

    .line 506
    iput p1, p0, Lcom/anythink/core/common/f/au;->E:I

    return-void
.end method

.method public final i(J)V
    .locals 0

    .line 609
    iput-wide p1, p0, Lcom/anythink/core/common/f/au;->aa:J

    return-void
.end method

.method public final i(Ljava/lang/String;)V
    .locals 0

    .line 605
    iput-object p1, p0, Lcom/anythink/core/common/f/au;->Z:Ljava/lang/String;

    return-void
.end method

.method public final j()I
    .locals 1

    .line 397
    iget v0, p0, Lcom/anythink/core/common/f/au;->H:I

    return v0
.end method

.method public final j(I)V
    .locals 0

    .line 514
    iput p1, p0, Lcom/anythink/core/common/f/au;->F:I

    return-void
.end method

.method public final j(J)V
    .locals 0

    .line 621
    iput-wide p1, p0, Lcom/anythink/core/common/f/au;->ab:J

    return-void
.end method

.method public final j(Ljava/lang/String;)V
    .locals 0

    .line 730
    iput-object p1, p0, Lcom/anythink/core/common/f/au;->e:Ljava/lang/String;

    return-void
.end method

.method public final k(I)V
    .locals 0

    .line 573
    iput p1, p0, Lcom/anythink/core/common/f/au;->V:I

    return-void
.end method

.method public final k(J)V
    .locals 0

    .line 977
    iput-wide p1, p0, Lcom/anythink/core/common/f/au;->u:J

    return-void
.end method

.method public final k(Ljava/lang/String;)V
    .locals 0

    .line 897
    iput-object p1, p0, Lcom/anythink/core/common/f/au;->k:Ljava/lang/String;

    return-void
.end method

.method public final k()Z
    .locals 2

    .line 401
    iget v0, p0, Lcom/anythink/core/common/f/au;->H:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final l()J
    .locals 2

    .line 409
    iget-wide v0, p0, Lcom/anythink/core/common/f/au;->M:J

    return-wide v0
.end method

.method public final l(I)V
    .locals 0

    .line 581
    iput p1, p0, Lcom/anythink/core/common/f/au;->W:I

    return-void
.end method

.method public final l(Ljava/lang/String;)V
    .locals 0

    .line 969
    iput-object p1, p0, Lcom/anythink/core/common/f/au;->t:Ljava/lang/String;

    return-void
.end method

.method public final m()I
    .locals 1

    .line 418
    iget v0, p0, Lcom/anythink/core/common/f/au;->ai:I

    return v0
.end method

.method public final m(I)V
    .locals 0

    .line 597
    iput p1, p0, Lcom/anythink/core/common/f/au;->Y:I

    return-void
.end method

.method public final n()I
    .locals 1

    .line 426
    iget v0, p0, Lcom/anythink/core/common/f/au;->ag:I

    return v0
.end method

.method public final n(I)V
    .locals 0

    .line 637
    iput p1, p0, Lcom/anythink/core/common/f/au;->ad:I

    return-void
.end method

.method public final o()J
    .locals 2

    .line 434
    iget-wide v0, p0, Lcom/anythink/core/common/f/au;->U:J

    return-wide v0
.end method

.method public final o(I)V
    .locals 0

    .line 645
    iput p1, p0, Lcom/anythink/core/common/f/au;->ae:I

    return-void
.end method

.method public final p()I
    .locals 1

    .line 442
    iget v0, p0, Lcom/anythink/core/common/f/au;->K:I

    return v0
.end method

.method public final p(I)V
    .locals 0

    .line 653
    iput p1, p0, Lcom/anythink/core/common/f/au;->af:I

    return-void
.end method

.method public final q()J
    .locals 2

    .line 450
    iget-wide v0, p0, Lcom/anythink/core/common/f/au;->N:J

    return-wide v0
.end method

.method public final q(I)V
    .locals 0

    .line 693
    iput p1, p0, Lcom/anythink/core/common/f/au;->ap:I

    return-void
.end method

.method public final r()J
    .locals 2

    .line 458
    iget-wide v0, p0, Lcom/anythink/core/common/f/au;->O:J

    return-wide v0
.end method

.method public final r(I)V
    .locals 0

    .line 698
    iput p1, p0, Lcom/anythink/core/common/f/au;->b:I

    return-void
.end method

.method public final s()I
    .locals 1

    .line 466
    iget v0, p0, Lcom/anythink/core/common/f/au;->P:I

    return v0
.end method

.method public final s(I)V
    .locals 0

    .line 709
    iput p1, p0, Lcom/anythink/core/common/f/au;->c:I

    return-void
.end method

.method public final t()J
    .locals 2

    .line 474
    iget-wide v0, p0, Lcom/anythink/core/common/f/au;->C:J

    return-wide v0
.end method

.method public final t(I)V
    .locals 0

    .line 722
    iput p1, p0, Lcom/anythink/core/common/f/au;->d:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1014
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "UnitGroupInfo{networkFirmId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/anythink/core/common/f/au;->v:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", networkName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/anythink/core/common/f/au;->w:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", adSourceId=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/anythink/core/common/f/au;->Q:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", bidType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1018
    iget v1, p0, Lcom/anythink/core/common/f/au;->H:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/anythink/core/common/f/au;->ao:I

    invoke-static {v1}, Lcom/anythink/core/common/o/h;->a(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1019
    iget-object v1, p0, Lcom/anythink/core/common/f/au;->aj:Lcom/anythink/core/common/f/q;

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ", bidId="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/anythink/core/common/f/au;->aj:Lcom/anythink/core/common/f/q;

    iget-object v2, v2, Lcom/anythink/core/common/f/q;->token:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    const-string v1, ""

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", sortPrice="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1020
    invoke-static {p0}, Lcom/anythink/core/common/o/h;->a(Lcom/anythink/core/common/f/au;)D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", maxOfferCacheSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1021
    invoke-virtual {p0}, Lcom/anythink/core/common/f/au;->am()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", samePriceSortIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9917
    iget v1, p0, Lcom/anythink/core/common/f/au;->n:I

    .line 1022
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", content="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/anythink/core/common/f/au;->z:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", lossSendSwitch="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/anythink/core/common/f/au;->ay:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", winSendSwitch="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/anythink/core/common/f/au;->ax:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final u()Ljava/lang/String;
    .locals 1

    .line 486
    iget-object v0, p0, Lcom/anythink/core/common/f/au;->Q:Ljava/lang/String;

    return-object v0
.end method

.method public final u(I)V
    .locals 0

    .line 738
    iput p1, p0, Lcom/anythink/core/common/f/au;->a:I

    return-void
.end method

.method public final v()Ljava/lang/String;
    .locals 1

    .line 494
    iget-object v0, p0, Lcom/anythink/core/common/f/au;->D:Ljava/lang/String;

    return-object v0
.end method

.method public final v(I)V
    .locals 0

    .line 746
    iput p1, p0, Lcom/anythink/core/common/f/au;->aq:I

    return-void
.end method

.method public final w()I
    .locals 1

    .line 502
    iget v0, p0, Lcom/anythink/core/common/f/au;->E:I

    return v0
.end method

.method public final w(I)V
    .locals 0

    .line 757
    iput p1, p0, Lcom/anythink/core/common/f/au;->f:I

    return-void
.end method

.method public final x()I
    .locals 1

    .line 510
    iget v0, p0, Lcom/anythink/core/common/f/au;->F:I

    return v0
.end method

.method public final x(I)V
    .locals 0

    .line 846
    iput p1, p0, Lcom/anythink/core/common/f/au;->an:I

    return-void
.end method

.method public final y()D
    .locals 2

    .line 521
    iget-wide v0, p0, Lcom/anythink/core/common/f/au;->G:D

    return-wide v0
.end method

.method public final y(I)V
    .locals 0

    .line 865
    iput p1, p0, Lcom/anythink/core/common/f/au;->g:I

    return-void
.end method

.method public final z()Ljava/lang/String;
    .locals 1

    .line 537
    iget-object v0, p0, Lcom/anythink/core/common/f/au;->I:Ljava/lang/String;

    return-object v0
.end method

.method public final z(I)V
    .locals 0

    .line 881
    iput p1, p0, Lcom/anythink/core/common/f/au;->i:I

    return-void
.end method
