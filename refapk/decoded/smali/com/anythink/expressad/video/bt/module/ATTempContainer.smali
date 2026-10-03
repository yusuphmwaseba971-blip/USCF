.class public Lcom/anythink/expressad/video/bt/module/ATTempContainer;
.super Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/anythink/expressad/video/bt/module/ATTempContainer$d;,
        Lcom/anythink/expressad/video/bt/module/ATTempContainer$c;,
        Lcom/anythink/expressad/video/bt/module/ATTempContainer$b;,
        Lcom/anythink/expressad/video/bt/module/ATTempContainer$e;,
        Lcom/anythink/expressad/video/bt/module/ATTempContainer$a;
    }
.end annotation


# static fields
.field private static final B:Ljava/lang/String; = "ATTempContainer"

.field private static final ab:J = 0x1388L

.field private static final ac:J = 0x7d0L

.field private static final ad:J = 0x64L

.field private static final ae:I = -0x1

.field private static final af:I = -0x2

.field private static final ag:I = -0x3

.field private static final ah:I = -0x3

.field private static final ai:I = -0x4

.field private static final am:I = 0xfa

.field protected static final b:I


# instance fields
.field private C:Landroid/view/View;

.field private D:Lcom/anythink/expressad/foundation/d/c;

.field private E:Lcom/anythink/expressad/videocommon/b/c;

.field private F:Lcom/anythink/expressad/video/bt/module/b/h;

.field private G:Lcom/anythink/expressad/video/bt/module/a/b;

.field private H:Lcom/anythink/expressad/video/dynview/f/a;

.field private I:I

.field private J:Ljava/lang/String;

.field private K:Lcom/anythink/expressad/video/signal/factory/b;

.field private L:I

.field private M:I

.field private N:Z

.field private O:I

.field private P:I

.field private Q:I

.field private R:I

.field private S:I

.field private T:Ljava/lang/String;

.field private U:Ljava/lang/String;

.field private V:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/anythink/expressad/foundation/d/c;",
            ">;"
        }
    .end annotation
.end field

.field private W:I

.field protected a:Z

.field private aa:Landroid/view/LayoutInflater;

.field private aj:I

.field private ak:I

.field private al:I

.field private an:Landroid/view/View;

.field private ao:Z

.field private ap:Z

.field private aq:Z

.field private ar:Z

.field private as:Z

.field private at:Z

.field private au:Z

.field private av:Z

.field private aw:Z

.field private ax:Z

.field private ay:Lcom/anythink/expressad/atsignalcommon/mraid/MraidVolumeChangeReceiver;

.field private az:Ljava/lang/Runnable;

.field protected c:Z

.field protected d:Lcom/anythink/expressad/video/bt/module/ATTempContainer$a;

.field protected e:Lcom/anythink/expressad/atsignalcommon/windvane/WindVaneWebView;

.field protected f:Lcom/anythink/expressad/video/module/AnythinkVideoView;

.field protected g:Lcom/anythink/expressad/video/module/AnythinkContainerView;

.field protected h:Landroid/os/Handler;

.field protected i:Ljava/lang/Runnable;

.field protected j:Ljava/lang/Runnable;

.field k:Lcom/anythink/expressad/reward/player/c;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 109
    invoke-direct {p0, p1}, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    .line 91
    iput v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->I:I

    const-string v0, ""

    .line 92
    iput-object v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->J:Ljava/lang/String;

    .line 95
    sget v1, Lcom/anythink/expressad/foundation/g/a;->cv:I

    iput v1, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->L:I

    const/4 v1, 0x0

    .line 99
    iput-boolean v1, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->N:Z

    .line 102
    iput-object v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->T:Ljava/lang/String;

    .line 105
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->V:Ljava/util/List;

    .line 106
    iput v1, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->W:I

    .line 118
    iput-boolean v1, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->a:Z

    .line 168
    iput-boolean v1, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->c:Z

    .line 172
    new-instance v0, Lcom/anythink/expressad/video/bt/module/ATTempContainer$a$a;

    invoke-direct {v0}, Lcom/anythink/expressad/video/bt/module/ATTempContainer$a$a;-><init>()V

    iput-object v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->d:Lcom/anythink/expressad/video/bt/module/ATTempContainer$a;

    .line 261
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->h:Landroid/os/Handler;

    .line 266
    iput v1, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->aj:I

    .line 268
    iput v1, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->ak:I

    .line 269
    iput v1, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->al:I

    .line 274
    new-instance v0, Lcom/anythink/expressad/video/bt/module/ATTempContainer$1;

    invoke-direct {v0, p0}, Lcom/anythink/expressad/video/bt/module/ATTempContainer$1;-><init>(Lcom/anythink/expressad/video/bt/module/ATTempContainer;)V

    iput-object v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->i:Ljava/lang/Runnable;

    .line 290
    new-instance v0, Lcom/anythink/expressad/video/bt/module/ATTempContainer$2;

    invoke-direct {v0, p0}, Lcom/anythink/expressad/video/bt/module/ATTempContainer$2;-><init>(Lcom/anythink/expressad/video/bt/module/ATTempContainer;)V

    iput-object v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->j:Ljava/lang/Runnable;

    .line 472
    iput-boolean v1, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->ao:Z

    .line 477
    iput-boolean v1, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->ap:Z

    .line 478
    iput-boolean v1, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->aq:Z

    .line 485
    iput-boolean v1, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->as:Z

    .line 486
    iput-boolean v1, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->at:Z

    .line 489
    iput-boolean v1, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->au:Z

    .line 491
    iput-boolean v1, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->av:Z

    .line 493
    iput-boolean v1, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->aw:Z

    .line 495
    iput-boolean v1, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->ax:Z

    .line 499
    new-instance v0, Lcom/anythink/expressad/video/bt/module/ATTempContainer$3;

    invoke-direct {v0, p0}, Lcom/anythink/expressad/video/bt/module/ATTempContainer$3;-><init>(Lcom/anythink/expressad/video/bt/module/ATTempContainer;)V

    iput-object v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->az:Ljava/lang/Runnable;

    .line 110
    invoke-virtual {p0, p1}, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 114
    invoke-direct {p0, p1, p2}, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x1

    .line 91
    iput p2, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->I:I

    const-string p2, ""

    .line 92
    iput-object p2, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->J:Ljava/lang/String;

    .line 95
    sget v0, Lcom/anythink/expressad/foundation/g/a;->cv:I

    iput v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->L:I

    const/4 v0, 0x0

    .line 99
    iput-boolean v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->N:Z

    .line 102
    iput-object p2, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->T:Ljava/lang/String;

    .line 105
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->V:Ljava/util/List;

    .line 106
    iput v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->W:I

    .line 118
    iput-boolean v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->a:Z

    .line 168
    iput-boolean v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->c:Z

    .line 172
    new-instance p2, Lcom/anythink/expressad/video/bt/module/ATTempContainer$a$a;

    invoke-direct {p2}, Lcom/anythink/expressad/video/bt/module/ATTempContainer$a$a;-><init>()V

    iput-object p2, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->d:Lcom/anythink/expressad/video/bt/module/ATTempContainer$a;

    .line 261
    new-instance p2, Landroid/os/Handler;

    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    iput-object p2, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->h:Landroid/os/Handler;

    .line 266
    iput v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->aj:I

    .line 268
    iput v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->ak:I

    .line 269
    iput v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->al:I

    .line 274
    new-instance p2, Lcom/anythink/expressad/video/bt/module/ATTempContainer$1;

    invoke-direct {p2, p0}, Lcom/anythink/expressad/video/bt/module/ATTempContainer$1;-><init>(Lcom/anythink/expressad/video/bt/module/ATTempContainer;)V

    iput-object p2, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->i:Ljava/lang/Runnable;

    .line 290
    new-instance p2, Lcom/anythink/expressad/video/bt/module/ATTempContainer$2;

    invoke-direct {p2, p0}, Lcom/anythink/expressad/video/bt/module/ATTempContainer$2;-><init>(Lcom/anythink/expressad/video/bt/module/ATTempContainer;)V

    iput-object p2, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->j:Ljava/lang/Runnable;

    .line 472
    iput-boolean v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->ao:Z

    .line 477
    iput-boolean v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->ap:Z

    .line 478
    iput-boolean v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->aq:Z

    .line 485
    iput-boolean v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->as:Z

    .line 486
    iput-boolean v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->at:Z

    .line 489
    iput-boolean v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->au:Z

    .line 491
    iput-boolean v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->av:Z

    .line 493
    iput-boolean v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->aw:Z

    .line 495
    iput-boolean v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->ax:Z

    .line 499
    new-instance p2, Lcom/anythink/expressad/video/bt/module/ATTempContainer$3;

    invoke-direct {p2, p0}, Lcom/anythink/expressad/video/bt/module/ATTempContainer$3;-><init>(Lcom/anythink/expressad/video/bt/module/ATTempContainer;)V

    iput-object p2, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->az:Ljava/lang/Runnable;

    .line 115
    invoke-virtual {p0, p1}, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->init(Landroid/content/Context;)V

    return-void
.end method

.method private a(II)I
    .locals 5

    if-gez p1, :cond_0

    return p1

    .line 1279
    :cond_0
    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->V:Ljava/util/List;

    if-nez v0, :cond_1

    return p1

    .line 1282
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    return p1

    :cond_2
    const/4 v0, 0x1

    if-gt p2, v0, :cond_3

    return p1

    :cond_3
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    add-int/lit8 v4, p2, -0x1

    if-ge v2, v4, :cond_5

    .line 1291
    iget-object v4, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->V:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 1292
    iget-object v4, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->V:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v4}, Lcom/anythink/expressad/foundation/d/c;->bi()I

    move-result v4

    add-int/2addr v3, v4

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    if-le p1, v3, :cond_6

    sub-int v1, p1, v3

    :cond_6
    return v1
.end method

.method static synthetic a(Lcom/anythink/expressad/video/bt/module/ATTempContainer;I)I
    .locals 0

    .line 80
    iput p1, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->aj:I

    return p1
.end method

.method static synthetic a(Lcom/anythink/expressad/video/bt/module/ATTempContainer;)Landroid/view/View;
    .locals 0

    .line 80
    iget-object p0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->an:Landroid/view/View;

    return-object p0
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .line 80
    sget-object v0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->B:Ljava/lang/String;

    return-object v0
.end method

.method private a(ILjava/lang/String;)V
    .locals 3

    .line 1193
    :try_start_0
    new-instance v0, Lcom/anythink/expressad/foundation/d/r;

    invoke-direct {v0}, Lcom/anythink/expressad/foundation/d/r;-><init>()V

    const-string v1, "2000037"

    .line 1194
    invoke-virtual {v0, v1}, Lcom/anythink/expressad/foundation/d/r;->h(Ljava/lang/String;)V

    .line 1195
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "code="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",desc="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/anythink/expressad/foundation/d/r;->c(Ljava/lang/String;)V

    .line 1197
    iget-object p1, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->D:Lcom/anythink/expressad/foundation/d/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string p2, ""

    if-eqz p1, :cond_0

    :try_start_1
    invoke-virtual {p1}, Lcom/anythink/expressad/foundation/d/c;->M()Lcom/anythink/expressad/foundation/d/c$c;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1198
    iget-object p1, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->D:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {p1}, Lcom/anythink/expressad/foundation/d/c;->M()Lcom/anythink/expressad/foundation/d/c$c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/anythink/expressad/foundation/d/c$c;->e()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, p2

    .line 1200
    :goto_0
    invoke-virtual {v0, p1}, Lcom/anythink/expressad/foundation/d/r;->b(Ljava/lang/String;)V

    .line 1201
    iget-object p1, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->n:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/anythink/expressad/foundation/d/r;->f(Ljava/lang/String;)V

    .line 1203
    iget-object p1, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->D:Lcom/anythink/expressad/foundation/d/c;

    if-eqz p1, :cond_1

    .line 1204
    invoke-virtual {p1}, Lcom/anythink/expressad/foundation/d/c;->aZ()Ljava/lang/String;

    move-result-object p2

    .line 1206
    :cond_1
    invoke-virtual {v0, p2}, Lcom/anythink/expressad/foundation/d/r;->g(Ljava/lang/String;)V

    .line 1207
    iget-object p1, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->D:Lcom/anythink/expressad/foundation/d/c;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/anythink/expressad/foundation/d/c;->Z()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 1208
    iget-object p1, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->D:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {p1}, Lcom/anythink/expressad/foundation/d/c;->Z()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/anythink/expressad/foundation/d/r;->d(Ljava/lang/String;)V

    .line 1210
    :cond_2
    iget-object p1, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->D:Lcom/anythink/expressad/foundation/d/c;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/anythink/expressad/foundation/d/c;->aa()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 1211
    iget-object p1, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->D:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {p1}, Lcom/anythink/expressad/foundation/d/c;->aa()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/anythink/expressad/foundation/d/r;->e(Ljava/lang/String;)V

    .line 1213
    :cond_3
    invoke-virtual {p0}, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->getContext()Landroid/content/Context;

    invoke-static {}, Lcom/anythink/expressad/foundation/h/k;->a()I

    move-result p1

    .line 1214
    invoke-virtual {v0, p1}, Lcom/anythink/expressad/foundation/d/r;->c(I)V

    .line 1215
    invoke-virtual {p0}, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/anythink/expressad/foundation/h/k;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/anythink/expressad/foundation/d/r;->j(Ljava/lang/String;)V

    .line 1216
    invoke-static {v0}, Lcom/anythink/expressad/foundation/d/r;->a(Lcom/anythink/expressad/foundation/d/r;)Ljava/lang/String;

    .line 1217
    invoke-static {}, Lcom/anythink/expressad/video/module/b/a;->a()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 1219
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/anythink/expressad/video/bt/module/ATTempContainer;Z)Z
    .locals 0

    .line 80
    iput-boolean p1, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->au:Z

    return p1
.end method

.method static synthetic b(Lcom/anythink/expressad/video/bt/module/ATTempContainer;I)I
    .locals 0

    .line 80
    iput p1, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->L:I

    return p1
.end method

.method static synthetic b(Lcom/anythink/expressad/video/bt/module/ATTempContainer;)Landroid/app/Activity;
    .locals 0

    .line 80
    iget-object p0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->m:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic c(Lcom/anythink/expressad/video/bt/module/ATTempContainer;I)I
    .locals 0

    .line 80
    iput p1, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->M:I

    return p1
.end method

.method static synthetic c(Lcom/anythink/expressad/video/bt/module/ATTempContainer;)Landroid/app/Activity;
    .locals 0

    .line 80
    iget-object p0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->m:Landroid/app/Activity;

    return-object p0
.end method

.method private static c()Landroid/widget/RelativeLayout$LayoutParams;
    .locals 2

    .line 131
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method static synthetic d(Lcom/anythink/expressad/video/bt/module/ATTempContainer;)Lcom/anythink/expressad/foundation/d/c;
    .locals 0

    .line 80
    iget-object p0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->D:Lcom/anythink/expressad/foundation/d/c;

    return-object p0
.end method

.method private d()V
    .locals 1

    .line 135
    iget-boolean v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->a:Z

    if-eqz v0, :cond_0

    .line 136
    invoke-virtual {p0}, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->setMatchParent()V

    :cond_0
    return-void
.end method

.method private e()I
    .locals 1

    .line 303
    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->D:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {p0, v0}, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->b(Lcom/anythink/expressad/foundation/d/c;)Lcom/anythink/expressad/video/signal/a/j;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 305
    invoke-virtual {v0}, Lcom/anythink/expressad/video/signal/a/j;->c()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic e(Lcom/anythink/expressad/video/bt/module/ATTempContainer;)Z
    .locals 0

    .line 80
    iget-boolean p0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->u:Z

    return p0
.end method

.method private f()I
    .locals 1

    .line 311
    invoke-virtual {p0}, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->getJSCommon()Lcom/anythink/expressad/video/signal/c;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 312
    invoke-virtual {p0}, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->getJSCommon()Lcom/anythink/expressad/video/signal/c;

    move-result-object v0

    invoke-interface {v0}, Lcom/anythink/expressad/video/signal/c;->n()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method static synthetic f(Lcom/anythink/expressad/video/bt/module/ATTempContainer;)Z
    .locals 0

    .line 80
    iget-boolean p0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->z:Z

    return p0
.end method

.method private g()I
    .locals 1

    .line 318
    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->D:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {p0, v0}, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->b(Lcom/anythink/expressad/foundation/d/c;)Lcom/anythink/expressad/video/signal/a/j;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 320
    invoke-virtual {v0}, Lcom/anythink/expressad/video/signal/a/j;->b()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic g(Lcom/anythink/expressad/video/bt/module/ATTempContainer;)Lcom/anythink/expressad/video/bt/module/b/h;
    .locals 0

    .line 80
    iget-object p0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->F:Lcom/anythink/expressad/video/bt/module/b/h;

    return-object p0
.end method

.method private h()Z
    .locals 1

    .line 326
    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->D:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {p0, v0}, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->b(Lcom/anythink/expressad/foundation/d/c;)Lcom/anythink/expressad/video/signal/a/j;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 328
    invoke-virtual {v0}, Lcom/anythink/expressad/video/signal/a/j;->a()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic h(Lcom/anythink/expressad/video/bt/module/ATTempContainer;)Z
    .locals 1

    const/4 v0, 0x1

    .line 80
    iput-boolean v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->ap:Z

    return v0
.end method

.method private i()Z
    .locals 2

    .line 334
    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->f:Lcom/anythink/expressad/video/module/AnythinkVideoView;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 335
    invoke-virtual {v0}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->isShowingAlertView()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->f:Lcom/anythink/expressad/video/module/AnythinkVideoView;

    invoke-virtual {v0}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->isInstallDialogShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0

    :cond_2
    return v1
.end method

.method static synthetic i(Lcom/anythink/expressad/video/bt/module/ATTempContainer;)Z
    .locals 0

    .line 80
    iget-boolean p0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->au:Z

    return p0
.end method

.method static synthetic j(Lcom/anythink/expressad/video/bt/module/ATTempContainer;)Lcom/anythink/expressad/videocommon/e/d;
    .locals 0

    .line 80
    iget-object p0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->p:Lcom/anythink/expressad/videocommon/e/d;

    return-object p0
.end method

.method private j()V
    .locals 6

    .line 342
    :try_start_0
    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->e:Lcom/anythink/expressad/atsignalcommon/windvane/WindVaneWebView;

    if-eqz v0, :cond_5

    .line 343
    invoke-virtual {p0}, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 346
    invoke-direct {p0}, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->h()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 347
    invoke-virtual {p0}, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/anythink/expressad/foundation/h/t;->g(Landroid/content/Context;)I

    move-result v1

    .line 348
    invoke-virtual {p0}, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/anythink/expressad/foundation/h/t;->h(Landroid/content/Context;)I

    move-result v2

    .line 349
    invoke-virtual {p0}, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/anythink/expressad/foundation/h/t;->a(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 350
    invoke-virtual {p0}, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/anythink/expressad/foundation/h/t;->i(Landroid/content/Context;)I

    move-result v3

    const/4 v4, 0x2

    if-ne v0, v4, :cond_0

    add-int/2addr v1, v3

    goto :goto_0

    :cond_0
    add-int/2addr v2, v3

    goto :goto_0

    .line 358
    :cond_1
    invoke-virtual {p0}, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/anythink/expressad/foundation/h/t;->f(Landroid/content/Context;)I

    move-result v1

    .line 359
    invoke-virtual {p0}, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/anythink/expressad/foundation/h/t;->e(Landroid/content/Context;)I

    move-result v2

    .line 361
    :cond_2
    :goto_0
    iget-object v3, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->D:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v3}, Lcom/anythink/expressad/foundation/d/c;->M()Lcom/anythink/expressad/foundation/d/c$c;

    move-result-object v3

    invoke-virtual {v3}, Lcom/anythink/expressad/foundation/d/c$c;->c()I

    move-result v3

    .line 363
    iget-object v4, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->D:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {p0, v4}, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->c(Lcom/anythink/expressad/foundation/d/c;)I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_3

    move v3, v0

    .line 366
    :cond_3
    invoke-virtual {p0}, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->getJSNotifyProxy()Lcom/anythink/expressad/video/signal/g;

    move-result-object v4

    invoke-interface {v4, v0, v3, v1, v2}, Lcom/anythink/expressad/video/signal/g;->a(IIII)V

    .line 367
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 368
    sget-object v1, Lcom/anythink/expressad/foundation/g/a;->ch:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/anythink/expressad/foundation/h/t;->c(Landroid/content/Context;)F

    move-result v2

    float-to-double v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 370
    :try_start_1
    iget-object v1, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->r:Lcom/anythink/expressad/videocommon/c/c;

    if-eqz v1, :cond_4

    .line 371
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "name"

    .line 372
    iget-object v3, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->r:Lcom/anythink/expressad/videocommon/c/c;

    invoke-virtual {v3}, Lcom/anythink/expressad/videocommon/c/c;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "amount"

    .line 373
    iget-object v3, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->r:Lcom/anythink/expressad/videocommon/c/c;

    invoke-virtual {v3}, Lcom/anythink/expressad/videocommon/c/c;->b()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "id"

    .line 374
    iget-object v3, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->s:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "userId"

    .line 375
    iget-object v3, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->q:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "reward"

    .line 376
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "playVideoMute"

    .line 377
    iget v2, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->t:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "extra"

    .line 378
    iget-object v2, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->U:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 383
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    goto :goto_1

    :catch_1
    move-exception v1

    .line 381
    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    .line 385
    :cond_4
    :goto_1
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 386
    invoke-virtual {p0}, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->getJSNotifyProxy()Lcom/anythink/expressad/video/signal/g;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/anythink/expressad/video/signal/g;->a(Ljava/lang/Object;)V

    .line 387
    invoke-static {}, Lcom/anythink/expressad/atsignalcommon/windvane/j;->a()Lcom/anythink/expressad/atsignalcommon/windvane/j;

    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->e:Lcom/anythink/expressad/atsignalcommon/windvane/WindVaneWebView;

    const-string v1, "oncutoutfetched"

    iget-object v2, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->T:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/anythink/expressad/atsignalcommon/windvane/j;->a(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    invoke-virtual {p0}, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->getJSCommon()Lcom/anythink/expressad/video/signal/c;

    move-result-object v0

    invoke-interface {v0}, Lcom/anythink/expressad/video/signal/c;->h()V

    .line 409
    invoke-virtual {p0}, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->loadModuleDatas()V

    .line 410
    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->h:Landroid/os/Handler;

    iget-object v1, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->i:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :cond_5
    return-void

    :catch_2
    move-exception v0

    .line 413
    sget-boolean v1, Lcom/anythink/expressad/a;->a:Z

    if-eqz v1, :cond_6

    .line 414
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_6
    return-void
.end method

.method private k()V
    .locals 2

    .line 421
    iget v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->aj:I

    const/4 v1, -0x3

    if-ne v0, v1, :cond_0

    .line 422
    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->i:Ljava/lang/Runnable;

    goto :goto_0

    :cond_0
    const/4 v1, -0x4

    if-ne v0, v1, :cond_1

    .line 424
    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->j:Ljava/lang/Runnable;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 427
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    const/4 v0, 0x0

    .line 428
    iput v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->aj:I

    :cond_2
    return-void
.end method

.method static synthetic k(Lcom/anythink/expressad/video/bt/module/ATTempContainer;)V
    .locals 4

    .line 9736
    :try_start_0
    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->G:Lcom/anythink/expressad/video/bt/module/a/b;

    if-eqz v0, :cond_3

    .line 9737
    iget-boolean v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->u:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->w:I

    sget v1, Lcom/anythink/expressad/foundation/g/a;->cr:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->w:I

    sget v1, Lcom/anythink/expressad/foundation/g/a;->cs:I

    if-ne v0, v1, :cond_2

    .line 9739
    :cond_0
    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->G:Lcom/anythink/expressad/video/bt/module/a/b;

    iget v1, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->M:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    iget v1, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->L:I

    invoke-interface {v0, v2, v1}, Lcom/anythink/expressad/video/bt/module/a/b;->a(ZI)V

    .line 9742
    :cond_2
    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->G:Lcom/anythink/expressad/video/bt/module/a/b;

    iget-object v1, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->J:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->ap:Z

    iget-object v3, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->r:Lcom/anythink/expressad/videocommon/c/c;

    invoke-interface {v0, v1, v2, v3}, Lcom/anythink/expressad/video/bt/module/a/b;->a(Ljava/lang/String;ZLcom/anythink/expressad/videocommon/c/c;)V

    return-void

    .line 9744
    :cond_3
    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->m:Landroid/app/Activity;

    if-eqz v0, :cond_4

    .line 9745
    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->m:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    return-void

    :catch_0
    nop

    .line 9749
    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->m:Landroid/app/Activity;

    if-eqz v0, :cond_5

    .line 9750
    iget-object p0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->m:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_5
    return-void
.end method

.method private l()Z
    .locals 7

    .line 443
    invoke-virtual {p0}, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->findWindVaneWebView()Lcom/anythink/expressad/atsignalcommon/windvane/WindVaneWebView;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->e:Lcom/anythink/expressad/atsignalcommon/windvane/WindVaneWebView;

    .line 444
    invoke-virtual {p0}, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->findAnythinkVideoView()Lcom/anythink/expressad/video/module/AnythinkVideoView;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->f:Lcom/anythink/expressad/video/module/AnythinkVideoView;

    .line 445
    iget-object v1, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->D:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v0, v1}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->setVideoLayout(Lcom/anythink/expressad/foundation/d/c;)V

    .line 446
    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->f:Lcom/anythink/expressad/video/module/AnythinkVideoView;

    iget-boolean v1, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->u:Z

    invoke-virtual {v0, v1}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->setIsIV(Z)V

    .line 447
    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->f:Lcom/anythink/expressad/video/module/AnythinkVideoView;

    iget-object v1, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->n:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->setUnitId(Ljava/lang/String;)V

    .line 448
    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->f:Lcom/anythink/expressad/video/module/AnythinkVideoView;

    iget-object v1, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->H:Lcom/anythink/expressad/video/dynview/f/a;

    iget-object v2, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->V:Ljava/util/List;

    iget v3, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->I:I

    iget v4, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->W:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->setCamPlayOrderCallback(Lcom/anythink/expressad/video/dynview/f/a;Ljava/util/List;II)V

    .line 449
    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->f:Lcom/anythink/expressad/video/module/AnythinkVideoView;

    iget-object v1, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->k:Lcom/anythink/expressad/reward/player/c;

    invoke-virtual {v0, v1}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->setTempEventListener(Lcom/anythink/expressad/reward/player/c;)V

    .line 451
    iget-boolean v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->z:Z

    if-eqz v0, :cond_0

    .line 452
    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->f:Lcom/anythink/expressad/video/module/AnythinkVideoView;

    iget v1, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->P:I

    iget v2, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->Q:I

    iget v3, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->R:I

    iget v4, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->S:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->setNotchPadding(IIII)V

    .line 454
    :cond_0
    invoke-virtual {p0}, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->findAnythinkContainerView()Lcom/anythink/expressad/video/module/AnythinkContainerView;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->g:Lcom/anythink/expressad/video/module/AnythinkContainerView;

    .line 455
    iget-boolean v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->z:Z

    if-eqz v0, :cond_1

    .line 456
    iget-object v1, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->g:Lcom/anythink/expressad/video/module/AnythinkContainerView;

    iget v2, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->O:I

    iget v3, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->P:I

    iget v4, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->Q:I

    iget v5, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->R:I

    iget v6, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->S:I

    invoke-virtual/range {v1 .. v6}, Lcom/anythink/expressad/video/module/AnythinkContainerView;->setNotchPadding(IIIII)V

    .line 458
    :cond_1
    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->f:Lcom/anythink/expressad/video/module/AnythinkVideoView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->g:Lcom/anythink/expressad/video/module/AnythinkContainerView;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->initViews()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    return v0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic l(Lcom/anythink/expressad/video/bt/module/ATTempContainer;)Z
    .locals 0

    .line 80
    iget-boolean p0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->z:Z

    return p0
.end method

.method private m()V
    .locals 4

    .line 574
    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->p:Lcom/anythink/expressad/videocommon/e/d;

    if-nez v0, :cond_0

    .line 575
    invoke-static {}, Lcom/anythink/expressad/videocommon/e/c;->a()Lcom/anythink/expressad/videocommon/e/c;

    move-result-object v0

    invoke-static {}, Lcom/anythink/expressad/foundation/b/a;->b()Lcom/anythink/expressad/foundation/b/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/expressad/foundation/b/a;->e()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->n:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->u:Z

    invoke-virtual {v0, v1, v2, v3}, Lcom/anythink/expressad/videocommon/e/c;->a(Ljava/lang/String;Ljava/lang/String;Z)Lcom/anythink/expressad/videocommon/e/d;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->p:Lcom/anythink/expressad/videocommon/e/d;

    :cond_0
    return-void
.end method

.method static synthetic m(Lcom/anythink/expressad/video/bt/module/ATTempContainer;)Z
    .locals 1

    const/4 v0, 0x1

    .line 80
    iput-boolean v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->av:Z

    return v0
.end method

.method static synthetic n(Lcom/anythink/expressad/video/bt/module/ATTempContainer;)Lcom/anythink/expressad/video/bt/module/a/b;
    .locals 0

    .line 80
    iget-object p0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->G:Lcom/anythink/expressad/video/bt/module/a/b;

    return-object p0
.end method

.method private static n()V
    .locals 0

    return-void
.end method

.method static synthetic o(Lcom/anythink/expressad/video/bt/module/ATTempContainer;)Ljava/lang/String;
    .locals 0

    .line 80
    iget-object p0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->J:Ljava/lang/String;

    return-object p0
.end method

.method private o()V
    .locals 4

    .line 736
    :try_start_0
    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->G:Lcom/anythink/expressad/video/bt/module/a/b;

    if-eqz v0, :cond_3

    .line 737
    iget-boolean v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->u:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->w:I

    sget v1, Lcom/anythink/expressad/foundation/g/a;->cr:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->w:I

    sget v1, Lcom/anythink/expressad/foundation/g/a;->cs:I

    if-ne v0, v1, :cond_2

    .line 739
    :cond_0
    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->G:Lcom/anythink/expressad/video/bt/module/a/b;

    iget v1, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->M:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    iget v1, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->L:I

    invoke-interface {v0, v2, v1}, Lcom/anythink/expressad/video/bt/module/a/b;->a(ZI)V

    .line 742
    :cond_2
    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->G:Lcom/anythink/expressad/video/bt/module/a/b;

    iget-object v1, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->J:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->ap:Z

    iget-object v3, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->r:Lcom/anythink/expressad/videocommon/c/c;

    invoke-interface {v0, v1, v2, v3}, Lcom/anythink/expressad/video/bt/module/a/b;->a(Ljava/lang/String;ZLcom/anythink/expressad/videocommon/c/c;)V

    return-void

    .line 744
    :cond_3
    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->m:Landroid/app/Activity;

    if-eqz v0, :cond_4

    .line 745
    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->m:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    return-void

    :catch_0
    nop

    .line 749
    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->m:Landroid/app/Activity;

    if-eqz v0, :cond_5

    .line 750
    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->m:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_5
    return-void
.end method

.method private static p()V
    .locals 0

    return-void
.end method

.method static synthetic p(Lcom/anythink/expressad/video/bt/module/ATTempContainer;)Z
    .locals 0

    .line 80
    iget-boolean p0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->u:Z

    return p0
.end method

.method private q()V
    .locals 10

    .line 775
    iget-object v7, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->e:Lcom/anythink/expressad/atsignalcommon/windvane/WindVaneWebView;

    .line 776
    new-instance v8, Lcom/anythink/expressad/video/signal/factory/b;

    iget-object v1, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->m:Landroid/app/Activity;

    iget-object v3, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->f:Lcom/anythink/expressad/video/module/AnythinkVideoView;

    iget-object v4, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->g:Lcom/anythink/expressad/video/module/AnythinkContainerView;

    iget-object v5, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->D:Lcom/anythink/expressad/foundation/d/c;

    new-instance v6, Lcom/anythink/expressad/video/bt/module/ATTempContainer$d;

    const/4 v9, 0x0

    invoke-direct {v6, p0, v9}, Lcom/anythink/expressad/video/bt/module/ATTempContainer$d;-><init>(Lcom/anythink/expressad/video/bt/module/ATTempContainer;B)V

    move-object v0, v8

    move-object v2, v7

    invoke-direct/range {v0 .. v6}, Lcom/anythink/expressad/video/signal/factory/b;-><init>(Landroid/app/Activity;Landroid/webkit/WebView;Lcom/anythink/expressad/video/module/AnythinkVideoView;Lcom/anythink/expressad/video/module/AnythinkContainerView;Lcom/anythink/expressad/foundation/d/c;Lcom/anythink/expressad/video/signal/c$a;)V

    iput-object v8, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->K:Lcom/anythink/expressad/video/signal/factory/b;

    .line 778
    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->D:Lcom/anythink/expressad/foundation/d/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/d/c;->k()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->V:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 779
    iget-object v1, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->K:Lcom/anythink/expressad/video/signal/factory/b;

    invoke-virtual {v1, v0}, Lcom/anythink/expressad/video/signal/factory/b;->a(Ljava/util/List;)V

    .line 781
    :cond_0
    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->K:Lcom/anythink/expressad/video/signal/factory/b;

    invoke-virtual {p0, v0}, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->registerJsFactory(Lcom/anythink/expressad/video/signal/factory/IJSFactory;)V

    .line 782
    invoke-static {}, Lcom/anythink/expressad/foundation/f/b;->a()Lcom/anythink/expressad/foundation/f/b;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->n:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/anythink/expressad/video/bt/module/ATTempContainer$5;

    invoke-direct {v2, p0}, Lcom/anythink/expressad/video/bt/module/ATTempContainer$5;-><init>(Lcom/anythink/expressad/video/bt/module/ATTempContainer;)V

    invoke-virtual {v0, v1, v2}, Lcom/anythink/expressad/foundation/f/b;->a(Ljava/lang/String;Lcom/anythink/expressad/foundation/f/a;)V

    const-string v0, "preload template webview is null or load error"

    if-eqz v7, :cond_6

    .line 838
    iget-object v1, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->C:Landroid/view/View;

    invoke-virtual {p0}, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "anythink_video_templete_webview_parent"

    const-string v4, "id"

    invoke-static {v2, v3, v4}, Lcom/anythink/expressad/foundation/h/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 839
    iget-object v2, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->K:Lcom/anythink/expressad/video/signal/factory/b;

    invoke-virtual {v7, v2}, Lcom/anythink/expressad/atsignalcommon/windvane/WindVaneWebView;->setApiManagerJSFactory(Ljava/lang/Object;)V

    .line 840
    invoke-virtual {v7}, Lcom/anythink/expressad/atsignalcommon/windvane/WindVaneWebView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 841
    invoke-virtual {p0, v9, v0}, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->defaultLoad(ILjava/lang/String;)V

    return-void

    .line 844
    :cond_1
    invoke-virtual {v7}, Lcom/anythink/expressad/atsignalcommon/windvane/WindVaneWebView;->getObject()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/anythink/expressad/video/signal/a/j;

    if-eqz v0, :cond_4

    .line 845
    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->K:Lcom/anythink/expressad/video/signal/factory/b;

    invoke-virtual {v7}, Lcom/anythink/expressad/atsignalcommon/windvane/WindVaneWebView;->getObject()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/anythink/expressad/video/signal/a/j;

    invoke-virtual {v0, v2}, Lcom/anythink/expressad/video/signal/factory/b;->a(Lcom/anythink/expressad/video/signal/a/j;)V

    .line 6876
    invoke-virtual {p0}, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->getJSCommon()Lcom/anythink/expressad/video/signal/c;

    move-result-object v0

    iget v2, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->t:I

    invoke-interface {v0, v2}, Lcom/anythink/expressad/video/signal/c;->a(I)V

    .line 6877
    invoke-virtual {p0}, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->getJSCommon()Lcom/anythink/expressad/video/signal/c;

    move-result-object v0

    iget-object v2, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->n:Ljava/lang/String;

    invoke-interface {v0, v2}, Lcom/anythink/expressad/video/signal/c;->a(Ljava/lang/String;)V

    .line 6878
    invoke-virtual {p0}, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->getJSCommon()Lcom/anythink/expressad/video/signal/c;

    move-result-object v0

    iget-object v2, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->p:Lcom/anythink/expressad/videocommon/e/d;

    invoke-interface {v0, v2}, Lcom/anythink/expressad/video/signal/c;->a(Lcom/anythink/expressad/videocommon/e/d;)V

    .line 6879
    invoke-virtual {p0}, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->getJSCommon()Lcom/anythink/expressad/video/signal/c;

    move-result-object v0

    new-instance v2, Lcom/anythink/expressad/video/bt/module/ATTempContainer$d;

    invoke-direct {v2, p0, v9}, Lcom/anythink/expressad/video/bt/module/ATTempContainer$d;-><init>(Lcom/anythink/expressad/video/bt/module/ATTempContainer;B)V

    invoke-interface {v0, v2}, Lcom/anythink/expressad/video/signal/c;->a(Lcom/anythink/expressad/video/signal/c$a;)V

    .line 6882
    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->D:Lcom/anythink/expressad/foundation/d/c;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/d/c;->H()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->D:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/d/c;->ay()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 6883
    :cond_2
    new-instance v0, Lcom/anythink/expressad/atsignalcommon/mraid/MraidVolumeChangeReceiver;

    invoke-virtual {p0}, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/anythink/expressad/atsignalcommon/mraid/MraidVolumeChangeReceiver;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->ay:Lcom/anythink/expressad/atsignalcommon/mraid/MraidVolumeChangeReceiver;

    .line 6884
    invoke-virtual {v0}, Lcom/anythink/expressad/atsignalcommon/mraid/MraidVolumeChangeReceiver;->registerReceiver()V

    .line 6885
    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->ay:Lcom/anythink/expressad/atsignalcommon/mraid/MraidVolumeChangeReceiver;

    invoke-virtual {v0}, Lcom/anythink/expressad/atsignalcommon/mraid/MraidVolumeChangeReceiver;->getCurrentVolume()D

    .line 6886
    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->ay:Lcom/anythink/expressad/atsignalcommon/mraid/MraidVolumeChangeReceiver;

    new-instance v2, Lcom/anythink/expressad/video/bt/module/ATTempContainer$6;

    invoke-direct {v2, p0}, Lcom/anythink/expressad/video/bt/module/ATTempContainer$6;-><init>(Lcom/anythink/expressad/video/bt/module/ATTempContainer;)V

    invoke-virtual {v0, v2}, Lcom/anythink/expressad/atsignalcommon/mraid/MraidVolumeChangeReceiver;->setVolumeChangeListener(Lcom/anythink/expressad/atsignalcommon/mraid/MraidVolumeChangeReceiver$VolumeChangeListener;)V

    .line 847
    :cond_3
    invoke-virtual {v7}, Lcom/anythink/expressad/atsignalcommon/windvane/WindVaneWebView;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anythink/expressad/video/signal/a/j;

    invoke-virtual {v0}, Lcom/anythink/expressad/video/signal/a/j;->r()I

    move-result v0

    .line 848
    invoke-virtual {p0}, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->getJSContainerModule()Lcom/anythink/expressad/video/signal/e;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/anythink/expressad/video/signal/e;->readyStatus(I)V

    .line 849
    invoke-direct {p0}, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->j()V

    .line 850
    invoke-virtual {v7}, Lcom/anythink/expressad/atsignalcommon/windvane/WindVaneWebView;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anythink/expressad/video/signal/a/j;

    iget-object v0, v0, Lcom/anythink/expressad/video/signal/a/j;->r:Lcom/anythink/expressad/video/signal/c$a;

    invoke-interface {v0}, Lcom/anythink/expressad/video/signal/c$a;->c()V

    .line 852
    iget-boolean v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->z:Z

    if-eqz v0, :cond_4

    .line 853
    invoke-virtual {p0}, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->getJSCommon()Lcom/anythink/expressad/video/signal/c;

    move-result-object v0

    iget v2, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->ak:I

    invoke-interface {v0, v2}, Lcom/anythink/expressad/video/signal/c;->f(I)V

    .line 854
    invoke-virtual {p0}, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->getJSCommon()Lcom/anythink/expressad/video/signal/c;

    move-result-object v0

    iget v2, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->al:I

    invoke-interface {v0, v2}, Lcom/anythink/expressad/video/signal/c;->e(I)V

    .line 859
    :cond_4
    invoke-virtual {p0}, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->getJSCommon()Lcom/anythink/expressad/video/signal/c;

    move-result-object v0

    invoke-interface {v0}, Lcom/anythink/expressad/video/signal/c;->f()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_5

    .line 860
    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->C:Landroid/view/View;

    invoke-virtual {p0}, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v3, v4}, Lcom/anythink/expressad/foundation/h/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_5

    .line 862
    iget-object v3, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->C:Landroid/view/View;

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 863
    iget-object v3, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->C:Landroid/view/View;

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 866
    :cond_5
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v0, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v7, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    .line 869
    :cond_6
    invoke-virtual {p0, v9, v0}, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->defaultLoad(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic q(Lcom/anythink/expressad/video/bt/module/ATTempContainer;)Z
    .locals 1

    const/4 v0, 0x1

    .line 80
    iput-boolean v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->aw:Z

    return v0
.end method

.method static synthetic r(Lcom/anythink/expressad/video/bt/module/ATTempContainer;)Ljava/lang/Runnable;
    .locals 0

    .line 80
    iget-object p0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->az:Ljava/lang/Runnable;

    return-object p0
.end method

.method private r()V
    .locals 3

    .line 876
    invoke-virtual {p0}, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->getJSCommon()Lcom/anythink/expressad/video/signal/c;

    move-result-object v0

    iget v1, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->t:I

    invoke-interface {v0, v1}, Lcom/anythink/expressad/video/signal/c;->a(I)V

    .line 877
    invoke-virtual {p0}, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->getJSCommon()Lcom/anythink/expressad/video/signal/c;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->n:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/anythink/expressad/video/signal/c;->a(Ljava/lang/String;)V

    .line 878
    invoke-virtual {p0}, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->getJSCommon()Lcom/anythink/expressad/video/signal/c;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->p:Lcom/anythink/expressad/videocommon/e/d;

    invoke-interface {v0, v1}, Lcom/anythink/expressad/video/signal/c;->a(Lcom/anythink/expressad/videocommon/e/d;)V

    .line 879
    invoke-virtual {p0}, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->getJSCommon()Lcom/anythink/expressad/video/signal/c;

    move-result-object v0

    new-instance v1, Lcom/anythink/expressad/video/bt/module/ATTempContainer$d;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/anythink/expressad/video/bt/module/ATTempContainer$d;-><init>(Lcom/anythink/expressad/video/bt/module/ATTempContainer;B)V

    invoke-interface {v0, v1}, Lcom/anythink/expressad/video/signal/c;->a(Lcom/anythink/expressad/video/signal/c$a;)V

    .line 882
    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->D:Lcom/anythink/expressad/foundation/d/c;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/d/c;->H()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->D:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/d/c;->ay()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 883
    :cond_0
    new-instance v0, Lcom/anythink/expressad/atsignalcommon/mraid/MraidVolumeChangeReceiver;

    invoke-virtual {p0}, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/anythink/expressad/atsignalcommon/mraid/MraidVolumeChangeReceiver;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->ay:Lcom/anythink/expressad/atsignalcommon/mraid/MraidVolumeChangeReceiver;

    .line 884
    invoke-virtual {v0}, Lcom/anythink/expressad/atsignalcommon/mraid/MraidVolumeChangeReceiver;->registerReceiver()V

    .line 885
    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->ay:Lcom/anythink/expressad/atsignalcommon/mraid/MraidVolumeChangeReceiver;

    invoke-virtual {v0}, Lcom/anythink/expressad/atsignalcommon/mraid/MraidVolumeChangeReceiver;->getCurrentVolume()D

    .line 886
    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->ay:Lcom/anythink/expressad/atsignalcommon/mraid/MraidVolumeChangeReceiver;

    new-instance v1, Lcom/anythink/expressad/video/bt/module/ATTempContainer$6;

    invoke-direct {v1, p0}, Lcom/anythink/expressad/video/bt/module/ATTempContainer$6;-><init>(Lcom/anythink/expressad/video/bt/module/ATTempContainer;)V

    invoke-virtual {v0, v1}, Lcom/anythink/expressad/atsignalcommon/mraid/MraidVolumeChangeReceiver;->setVolumeChangeListener(Lcom/anythink/expressad/atsignalcommon/mraid/MraidVolumeChangeReceiver$VolumeChangeListener;)V

    :cond_1
    return-void
.end method

.method private s()V
    .locals 5

    .line 1096
    iget-boolean v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->ap:Z

    if-eqz v0, :cond_0

    .line 1102
    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->D:Lcom/anythink/expressad/foundation/d/c;

    iget-object v1, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->r:Lcom/anythink/expressad/videocommon/c/c;

    iget-object v2, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->n:Ljava/lang/String;

    iget-object v3, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->q:Ljava/lang/String;

    iget-object v4, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->U:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/anythink/expressad/video/module/b/a;->a(Lcom/anythink/expressad/foundation/d/c;Lcom/anythink/expressad/videocommon/c/c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method static synthetic s(Lcom/anythink/expressad/video/bt/module/ATTempContainer;)V
    .locals 2

    .line 10245
    invoke-virtual {p0}, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->isLoadSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 10246
    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->m:Landroid/app/Activity;

    new-instance v1, Lcom/anythink/expressad/video/bt/module/ATTempContainer$7;

    invoke-direct {v1, p0}, Lcom/anythink/expressad/video/bt/module/ATTempContainer$7;-><init>(Lcom/anythink/expressad/video/bt/module/ATTempContainer;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private t()V
    .locals 5

    const/4 v0, 0x1

    .line 1154
    :try_start_0
    iput-boolean v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->ao:Z

    .line 1157
    iget-object v1, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->D:Lcom/anythink/expressad/foundation/d/c;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/anythink/expressad/foundation/d/c;->J()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 1158
    iput-boolean v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->ap:Z

    .line 1161
    :cond_0
    iget-object v1, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->F:Lcom/anythink/expressad/video/bt/module/b/h;

    if-eqz v1, :cond_5

    .line 1162
    iget-boolean v1, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->u:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->w:I

    sget v3, Lcom/anythink/expressad/foundation/g/a;->cr:I

    if-eq v1, v3, :cond_1

    iget v1, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->w:I

    sget v3, Lcom/anythink/expressad/foundation/g/a;->cs:I

    if-ne v1, v3, :cond_3

    .line 1164
    :cond_1
    iget-object v1, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->F:Lcom/anythink/expressad/video/bt/module/b/h;

    iget v3, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->M:I

    if-ne v3, v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    iget v3, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->L:I

    invoke-interface {v1, v0, v3}, Lcom/anythink/expressad/video/bt/module/b/h;->a(ZI)V

    .line 1166
    :cond_3
    iget-boolean v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->ap:Z

    if-nez v0, :cond_4

    .line 1167
    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->r:Lcom/anythink/expressad/videocommon/c/c;

    invoke-virtual {v0, v2}, Lcom/anythink/expressad/videocommon/c/c;->a(I)V

    .line 1169
    :cond_4
    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->F:Lcom/anythink/expressad/video/bt/module/b/h;

    iget-boolean v1, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->ap:Z

    iget-object v2, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->r:Lcom/anythink/expressad/videocommon/c/c;

    invoke-interface {v0, v1, v2}, Lcom/anythink/expressad/video/bt/module/b/h;->a(ZLcom/anythink/expressad/videocommon/c/c;)V

    .line 1171
    :cond_5
    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->h:Landroid/os/Handler;

    iget-object v1, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->az:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1173
    iget-boolean v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->u:Z

    if-nez v0, :cond_6

    iget-boolean v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->z:Z

    if-eqz v0, :cond_7

    :cond_6
    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->D:Lcom/anythink/expressad/foundation/d/c;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/d/c;->j()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 9096
    :cond_7
    iget-boolean v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->ap:Z

    if-eqz v0, :cond_8

    .line 9102
    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->D:Lcom/anythink/expressad/foundation/d/c;

    iget-object v1, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->r:Lcom/anythink/expressad/videocommon/c/c;

    iget-object v2, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->n:Ljava/lang/String;

    iget-object v3, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->q:Ljava/lang/String;

    iget-object v4, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->U:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/anythink/expressad/video/module/b/a;->a(Lcom/anythink/expressad/foundation/d/c;Lcom/anythink/expressad/videocommon/c/c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1176
    :cond_8
    iget-boolean v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->z:Z

    if-nez v0, :cond_a

    .line 1177
    iget-boolean v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->u:Z

    if-eqz v0, :cond_9

    const/16 v0, 0x11f

    .line 1178
    iget-object v1, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->D:Lcom/anythink/expressad/foundation/d/c;

    invoke-static {v0, v1}, Lcom/anythink/expressad/videocommon/a;->b(ILcom/anythink/expressad/foundation/d/c;)V

    goto :goto_1

    :cond_9
    const/16 v0, 0x5e

    .line 1180
    iget-object v1, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->D:Lcom/anythink/expressad/foundation/d/c;

    invoke-static {v0, v1}, Lcom/anythink/expressad/videocommon/a;->b(ILcom/anythink/expressad/foundation/d/c;)V

    .line 1183
    :cond_a
    :goto_1
    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->g:Lcom/anythink/expressad/video/module/AnythinkContainerView;

    if-eqz v0, :cond_b

    .line 1184
    invoke-virtual {v0}, Lcom/anythink/expressad/video/module/AnythinkContainerView;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_b
    return-void

    :catchall_0
    move-exception v0

    .line 1187
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    return-void
.end method

.method static synthetic t(Lcom/anythink/expressad/video/bt/module/ATTempContainer;)Z
    .locals 1

    const/4 v0, 0x1

    .line 80
    iput-boolean v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->at:Z

    return v0
.end method

.method private static u()I
    .locals 2

    const/4 v0, 0x5

    .line 1230
    :try_start_0
    invoke-static {}, Lcom/anythink/expressad/videocommon/e/c;->a()Lcom/anythink/expressad/videocommon/e/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/expressad/videocommon/e/c;->b()Lcom/anythink/expressad/videocommon/e/a;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1232
    invoke-static {}, Lcom/anythink/expressad/videocommon/e/c;->a()Lcom/anythink/expressad/videocommon/e/c;

    invoke-static {}, Lcom/anythink/expressad/videocommon/e/c;->c()Lcom/anythink/expressad/videocommon/e/a;

    :cond_0
    if-eqz v1, :cond_1

    .line 1235
    invoke-virtual {v1}, Lcom/anythink/expressad/videocommon/e/a;->g()J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    long-to-int v0, v0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 1239
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_0
    return v0
.end method

.method static synthetic u(Lcom/anythink/expressad/video/bt/module/ATTempContainer;)V
    .locals 2

    .line 10258
    invoke-virtual {p0}, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->isLoadSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 10259
    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->m:Landroid/app/Activity;

    new-instance v1, Lcom/anythink/expressad/video/bt/module/ATTempContainer$8;

    invoke-direct {v1, p0}, Lcom/anythink/expressad/video/bt/module/ATTempContainer$8;-><init>(Lcom/anythink/expressad/video/bt/module/ATTempContainer;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method static synthetic v(Lcom/anythink/expressad/video/bt/module/ATTempContainer;)Landroid/app/Activity;
    .locals 0

    .line 80
    iget-object p0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->m:Landroid/app/Activity;

    return-object p0
.end method

.method private v()V
    .locals 2

    .line 1245
    invoke-virtual {p0}, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->isLoadSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1246
    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->m:Landroid/app/Activity;

    new-instance v1, Lcom/anythink/expressad/video/bt/module/ATTempContainer$7;

    invoke-direct {v1, p0}, Lcom/anythink/expressad/video/bt/module/ATTempContainer$7;-><init>(Lcom/anythink/expressad/video/bt/module/ATTempContainer;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private w()V
    .locals 2

    .line 1258
    invoke-virtual {p0}, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->isLoadSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1259
    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->m:Landroid/app/Activity;

    new-instance v1, Lcom/anythink/expressad/video/bt/module/ATTempContainer$8;

    invoke-direct {v1, p0}, Lcom/anythink/expressad/video/bt/module/ATTempContainer$8;-><init>(Lcom/anythink/expressad/video/bt/module/ATTempContainer;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method static synthetic w(Lcom/anythink/expressad/video/bt/module/ATTempContainer;)Z
    .locals 0

    .line 80
    iget-boolean p0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->z:Z

    return p0
.end method

.method static synthetic x(Lcom/anythink/expressad/video/bt/module/ATTempContainer;)Landroid/app/Activity;
    .locals 0

    .line 80
    iget-object p0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->m:Landroid/app/Activity;

    return-object p0
.end method


# virtual methods
.method protected final a(Ljava/lang/String;)V
    .locals 1

    .line 561
    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->F:Lcom/anythink/expressad/video/bt/module/b/h;

    if-eqz v0, :cond_0

    .line 562
    invoke-interface {v0, p1}, Lcom/anythink/expressad/video/bt/module/b/h;->a(Ljava/lang/String;)V

    .line 564
    :cond_0
    invoke-super {p0, p1}, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->a(Ljava/lang/String;)V

    return-void
.end method

.method public canBackPress()Z
    .locals 1

    .line 1107
    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->g:Lcom/anythink/expressad/video/module/AnythinkContainerView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/anythink/expressad/video/module/AnythinkContainerView;->canBackPress()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public defaultLoad(ILjava/lang/String;)V
    .locals 19

    move-object/from16 v0, p0

    .line 979
    invoke-virtual/range {p0 .. p2}, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->superDefaultLoad(ILjava/lang/String;)V

    .line 981
    invoke-virtual/range {p0 .. p0}, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->isLoadSuccess()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 982
    iget-object v1, v0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->D:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v1}, Lcom/anythink/expressad/foundation/d/c;->J()I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, -0x2

    if-ne v1, v2, :cond_1

    .line 983
    iget-object v1, v0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->g:Lcom/anythink/expressad/video/module/AnythinkContainerView;

    iget-object v2, v0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->D:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v1, v2}, Lcom/anythink/expressad/video/module/AnythinkContainerView;->setCampaign(Lcom/anythink/expressad/foundation/d/c;)V

    .line 984
    iget-object v1, v0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->g:Lcom/anythink/expressad/video/module/AnythinkContainerView;

    iget-object v2, v0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->V:Ljava/util/List;

    invoke-virtual {v1, v2}, Lcom/anythink/expressad/video/module/AnythinkContainerView;->addOrderViewData(Ljava/util/List;)V

    .line 985
    iget-object v1, v0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->g:Lcom/anythink/expressad/video/module/AnythinkContainerView;

    iget-object v2, v0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->n:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/anythink/expressad/video/module/AnythinkContainerView;->setUnitID(Ljava/lang/String;)V

    .line 987
    iget-object v1, v0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->D:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v1}, Lcom/anythink/expressad/foundation/d/c;->g()I

    move-result v1

    if-le v1, v4, :cond_0

    .line 988
    iget-object v1, v0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->D:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v1}, Lcom/anythink/expressad/foundation/d/c;->g()I

    move-result v1

    goto :goto_0

    .line 990
    :cond_0
    iget-object v1, v0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->p:Lcom/anythink/expressad/videocommon/e/d;

    invoke-virtual {v1}, Lcom/anythink/expressad/videocommon/e/d;->p()I

    move-result v1

    .line 992
    :goto_0
    iget-object v2, v0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->g:Lcom/anythink/expressad/video/module/AnythinkContainerView;

    invoke-virtual {v2, v1}, Lcom/anythink/expressad/video/module/AnythinkContainerView;->setCloseDelayTime(I)V

    .line 993
    iget-object v1, v0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->g:Lcom/anythink/expressad/video/module/AnythinkContainerView;

    iget-object v2, v0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->p:Lcom/anythink/expressad/videocommon/e/d;

    invoke-virtual {v2}, Lcom/anythink/expressad/videocommon/e/d;->j()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/anythink/expressad/video/module/AnythinkContainerView;->setPlayCloseBtnTm(I)V

    .line 994
    iget-object v1, v0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->g:Lcom/anythink/expressad/video/module/AnythinkContainerView;

    new-instance v2, Lcom/anythink/expressad/video/module/a/a/h;

    iget-object v5, v0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->D:Lcom/anythink/expressad/foundation/d/c;

    iget-object v6, v0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->E:Lcom/anythink/expressad/videocommon/b/c;

    iget-object v7, v0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->r:Lcom/anythink/expressad/videocommon/c/c;

    invoke-virtual/range {p0 .. p0}, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->b()Ljava/lang/String;

    move-result-object v8

    iget-object v9, v0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->n:Ljava/lang/String;

    new-instance v10, Lcom/anythink/expressad/video/bt/module/ATTempContainer$c;

    invoke-direct {v10, v0, v3}, Lcom/anythink/expressad/video/bt/module/ATTempContainer$c;-><init>(Lcom/anythink/expressad/video/bt/module/ATTempContainer;B)V

    iget-object v3, v0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->p:Lcom/anythink/expressad/videocommon/e/d;

    invoke-virtual {v3}, Lcom/anythink/expressad/videocommon/e/d;->M()I

    move-result v11

    iget-boolean v12, v0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->z:Z

    move-object v4, v2

    invoke-direct/range {v4 .. v12}, Lcom/anythink/expressad/video/module/a/a/h;-><init>(Lcom/anythink/expressad/foundation/d/c;Lcom/anythink/expressad/videocommon/b/c;Lcom/anythink/expressad/videocommon/c/c;Ljava/lang/String;Ljava/lang/String;Lcom/anythink/expressad/video/module/a/a;IZ)V

    invoke-virtual {v1, v2}, Lcom/anythink/expressad/video/module/AnythinkContainerView;->setNotifyListener(Lcom/anythink/expressad/video/module/a/a;)V

    .line 996
    iget-object v1, v0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->g:Lcom/anythink/expressad/video/module/AnythinkContainerView;

    iget-object v2, v0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->K:Lcom/anythink/expressad/video/signal/factory/b;

    invoke-virtual {v1, v2}, Lcom/anythink/expressad/video/module/AnythinkContainerView;->preLoadData(Lcom/anythink/expressad/video/signal/factory/b;)V

    .line 997
    iget-object v1, v0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->g:Lcom/anythink/expressad/video/module/AnythinkContainerView;

    invoke-virtual {v1}, Lcom/anythink/expressad/video/module/AnythinkContainerView;->showPlayableView()V

    return-void

    .line 999
    :cond_1
    invoke-direct/range {p0 .. p2}, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->a(ILjava/lang/String;)V

    .line 1000
    iget-object v1, v0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->an:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1001
    invoke-virtual/range {p0 .. p0}, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->loadModuleDatas()V

    .line 1002
    iget-object v1, v0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->p:Lcom/anythink/expressad/videocommon/e/d;

    invoke-virtual {v1}, Lcom/anythink/expressad/videocommon/e/d;->f()I

    move-result v1

    .line 1003
    invoke-direct/range {p0 .. p0}, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->e()I

    move-result v2

    if-eqz v2, :cond_2

    move v13, v2

    goto :goto_1

    :cond_2
    move v13, v1

    .line 1007
    :goto_1
    iget-object v1, v0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->D:Lcom/anythink/expressad/foundation/d/c;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/anythink/expressad/foundation/d/c;->j()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1008
    iget-object v1, v0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->f:Lcom/anythink/expressad/video/module/AnythinkVideoView;

    new-instance v2, Lcom/anythink/expressad/video/bt/module/ATTempContainer$b;

    iget-object v5, v0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->m:Landroid/app/Activity;

    iget-object v6, v0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->D:Lcom/anythink/expressad/foundation/d/c;

    invoke-direct {v2, v0, v5, v6}, Lcom/anythink/expressad/video/bt/module/ATTempContainer$b;-><init>(Lcom/anythink/expressad/video/bt/module/ATTempContainer;Landroid/app/Activity;Lcom/anythink/expressad/foundation/d/c;)V

    invoke-virtual {v1, v2}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->setContainerViewOnNotifyListener(Lcom/anythink/expressad/video/module/a/a;)V

    .line 1011
    :cond_3
    iget-object v1, v0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->D:Lcom/anythink/expressad/foundation/d/c;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/anythink/expressad/foundation/d/c;->h()I

    move-result v1

    if-le v1, v4, :cond_4

    .line 1012
    iget-object v1, v0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->D:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v1}, Lcom/anythink/expressad/foundation/d/c;->h()I

    move-result v1

    goto :goto_2

    .line 1014
    :cond_4
    iget-object v1, v0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->p:Lcom/anythink/expressad/videocommon/e/d;

    invoke-virtual {v1}, Lcom/anythink/expressad/videocommon/e/d;->e()I

    move-result v1

    .line 1017
    :goto_2
    iget-object v2, v0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->D:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v2}, Lcom/anythink/expressad/foundation/d/c;->k()I

    move-result v2

    const/4 v4, 0x5

    if-ne v2, v4, :cond_5

    iget v2, v0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->I:I

    const/4 v4, 0x1

    if-le v2, v4, :cond_5

    .line 1018
    invoke-direct {v0, v1, v2}, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->a(II)I

    move-result v1

    .line 1019
    iget-object v2, v0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->D:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v2, v1}, Lcom/anythink/expressad/foundation/d/c;->a(I)V

    :cond_5
    move v14, v1

    .line 1021
    iget-object v1, v0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->f:Lcom/anythink/expressad/video/module/AnythinkVideoView;

    invoke-virtual {v1, v14}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->setVideoSkipTime(I)V

    .line 1022
    iget-object v1, v0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->f:Lcom/anythink/expressad/video/module/AnythinkVideoView;

    new-instance v2, Lcom/anythink/expressad/video/module/a/a/m;

    iget-object v7, v0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->g:Lcom/anythink/expressad/video/module/AnythinkContainerView;

    iget-object v8, v0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->D:Lcom/anythink/expressad/foundation/d/c;

    iget-object v9, v0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->r:Lcom/anythink/expressad/videocommon/c/c;

    iget-object v10, v0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->E:Lcom/anythink/expressad/videocommon/b/c;

    invoke-virtual/range {p0 .. p0}, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->b()Ljava/lang/String;

    move-result-object v11

    iget-object v12, v0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->n:Ljava/lang/String;

    new-instance v15, Lcom/anythink/expressad/video/bt/module/ATTempContainer$e;

    invoke-direct {v15, v0, v3}, Lcom/anythink/expressad/video/bt/module/ATTempContainer$e;-><init>(Lcom/anythink/expressad/video/bt/module/ATTempContainer;B)V

    iget-object v3, v0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->p:Lcom/anythink/expressad/videocommon/e/d;

    invoke-virtual {v3}, Lcom/anythink/expressad/videocommon/e/d;->M()I

    move-result v16

    iget-boolean v3, v0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->z:Z

    iget-object v4, v0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->p:Lcom/anythink/expressad/videocommon/e/d;

    invoke-virtual {v4}, Lcom/anythink/expressad/videocommon/e/d;->U()I

    move-result v18

    move-object v5, v2

    move-object v6, v1

    move/from16 v17, v3

    invoke-direct/range {v5 .. v18}, Lcom/anythink/expressad/video/module/a/a/m;-><init>(Lcom/anythink/expressad/video/module/AnythinkVideoView;Lcom/anythink/expressad/video/module/AnythinkContainerView;Lcom/anythink/expressad/foundation/d/c;Lcom/anythink/expressad/videocommon/c/c;Lcom/anythink/expressad/videocommon/b/c;Ljava/lang/String;Ljava/lang/String;IILcom/anythink/expressad/video/module/a/a;IZI)V

    invoke-virtual {v1, v2}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->setNotifyListener(Lcom/anythink/expressad/video/module/a/a;)V

    .line 1024
    iget-object v1, v0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->f:Lcom/anythink/expressad/video/module/AnythinkVideoView;

    invoke-virtual {v1}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->defaultShow()V

    .line 1025
    iget-object v1, v0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->g:Lcom/anythink/expressad/video/module/AnythinkContainerView;

    new-instance v13, Lcom/anythink/expressad/video/module/a/a/b;

    iget-object v3, v0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->f:Lcom/anythink/expressad/video/module/AnythinkVideoView;

    iget-object v5, v0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->D:Lcom/anythink/expressad/foundation/d/c;

    iget-object v6, v0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->r:Lcom/anythink/expressad/videocommon/c/c;

    iget-object v7, v0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->E:Lcom/anythink/expressad/videocommon/b/c;

    invoke-virtual/range {p0 .. p0}, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->b()Ljava/lang/String;

    move-result-object v8

    iget-object v9, v0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->n:Ljava/lang/String;

    new-instance v10, Lcom/anythink/expressad/video/bt/module/ATTempContainer$b;

    iget-object v2, v0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->m:Landroid/app/Activity;

    iget-object v4, v0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->D:Lcom/anythink/expressad/foundation/d/c;

    invoke-direct {v10, v0, v2, v4}, Lcom/anythink/expressad/video/bt/module/ATTempContainer$b;-><init>(Lcom/anythink/expressad/video/bt/module/ATTempContainer;Landroid/app/Activity;Lcom/anythink/expressad/foundation/d/c;)V

    iget-object v2, v0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->p:Lcom/anythink/expressad/videocommon/e/d;

    invoke-virtual {v2}, Lcom/anythink/expressad/videocommon/e/d;->M()I

    move-result v11

    iget-boolean v12, v0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->z:Z

    move-object v2, v13

    move-object v4, v1

    invoke-direct/range {v2 .. v12}, Lcom/anythink/expressad/video/module/a/a/b;-><init>(Lcom/anythink/expressad/video/module/AnythinkVideoView;Lcom/anythink/expressad/video/module/AnythinkContainerView;Lcom/anythink/expressad/foundation/d/c;Lcom/anythink/expressad/videocommon/c/c;Lcom/anythink/expressad/videocommon/b/c;Ljava/lang/String;Ljava/lang/String;Lcom/anythink/expressad/video/module/a/a;IZ)V

    invoke-virtual {v1, v13}, Lcom/anythink/expressad/video/module/AnythinkContainerView;->setNotifyListener(Lcom/anythink/expressad/video/module/a/a;)V

    .line 1027
    iget-object v1, v0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->g:Lcom/anythink/expressad/video/module/AnythinkContainerView;

    invoke-virtual {v1}, Lcom/anythink/expressad/video/module/AnythinkContainerView;->defaultShow()V

    return-void

    .line 1030
    :cond_6
    invoke-direct/range {p0 .. p2}, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->a(ILjava/lang/String;)V

    .line 1031
    iget-object v1, v0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->m:Landroid/app/Activity;

    if-eqz v1, :cond_7

    .line 1032
    iget-object v1, v0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->m:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    :cond_7
    return-void
.end method

.method public findAnythinkContainerView()Lcom/anythink/expressad/video/module/AnythinkContainerView;
    .locals 1

    const-string v0, "anythink_video_templete_container"

    .line 1087
    invoke-virtual {p0, v0}, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->findID(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/anythink/expressad/video/module/AnythinkContainerView;

    return-object v0
.end method

.method public findAnythinkVideoView()Lcom/anythink/expressad/video/module/AnythinkVideoView;
    .locals 1

    const-string v0, "anythink_video_templete_videoview"

    .line 1083
    invoke-virtual {p0, v0}, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->findID(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/anythink/expressad/video/module/AnythinkVideoView;

    return-object v0
.end method

.method public findID(Ljava/lang/String;)I
    .locals 2

    .line 179
    invoke-virtual {p0}, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "id"

    invoke-static {v0, p1, v1}, Lcom/anythink/expressad/foundation/h/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public findLayout(Ljava/lang/String;)I
    .locals 2

    .line 183
    invoke-virtual {p0}, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout"

    invoke-static {v0, p1, v1}, Lcom/anythink/expressad/foundation/h/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public findWindVaneWebView()Lcom/anythink/expressad/atsignalcommon/windvane/WindVaneWebView;
    .locals 4

    const-string v0, "_"

    .line 1044
    :try_start_0
    iget-boolean v1, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->z:Z

    if-eqz v1, :cond_0

    .line 1046
    iget-object v1, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->D:Lcom/anythink/expressad/foundation/d/c;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/anythink/expressad/foundation/d/c;->M()Lcom/anythink/expressad/foundation/d/c$c;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 1048
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->n:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->D:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v2}, Lcom/anythink/expressad/foundation/d/c;->aZ()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->D:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v2}, Lcom/anythink/expressad/foundation/d/c;->Z()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->D:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/d/c;->M()Lcom/anythink/expressad/foundation/d/c$c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/d/c$c;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1049
    invoke-static {v0}, Lcom/anythink/expressad/videocommon/a;->a(Ljava/lang/String;)Lcom/anythink/expressad/videocommon/a$a;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 1051
    invoke-virtual {v0}, Lcom/anythink/expressad/videocommon/a$a;->a()Lcom/anythink/expressad/atsignalcommon/windvane/WindVaneWebView;

    move-result-object v0

    return-object v0

    .line 1056
    :cond_0
    iget-boolean v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->u:Z

    const/16 v1, 0x11f

    const/16 v2, 0x5e

    if-eqz v0, :cond_1

    .line 1057
    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->D:Lcom/anythink/expressad/foundation/d/c;

    invoke-static {v1, v0}, Lcom/anythink/expressad/videocommon/a;->a(ILcom/anythink/expressad/foundation/d/c;)Lcom/anythink/expressad/videocommon/a$a;

    move-result-object v0

    goto :goto_0

    .line 1059
    :cond_1
    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->D:Lcom/anythink/expressad/foundation/d/c;

    invoke-static {v2, v0}, Lcom/anythink/expressad/videocommon/a;->a(ILcom/anythink/expressad/foundation/d/c;)Lcom/anythink/expressad/videocommon/a$a;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_4

    .line 1061
    invoke-virtual {v0}, Lcom/anythink/expressad/videocommon/a$a;->c()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1062
    iget-boolean v3, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->u:Z

    if-eqz v3, :cond_2

    .line 1063
    iget-object v2, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->D:Lcom/anythink/expressad/foundation/d/c;

    invoke-static {v1, v2}, Lcom/anythink/expressad/videocommon/a;->b(ILcom/anythink/expressad/foundation/d/c;)V

    goto :goto_1

    .line 1065
    :cond_2
    iget-object v1, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->D:Lcom/anythink/expressad/foundation/d/c;

    invoke-static {v2, v1}, Lcom/anythink/expressad/videocommon/a;->b(ILcom/anythink/expressad/foundation/d/c;)V

    .line 1067
    :goto_1
    invoke-virtual {v0}, Lcom/anythink/expressad/videocommon/a$a;->a()Lcom/anythink/expressad/atsignalcommon/windvane/WindVaneWebView;

    move-result-object v0

    .line 1068
    iget-boolean v1, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->as:Z

    if-eqz v1, :cond_3

    .line 1069
    invoke-virtual {v0}, Lcom/anythink/expressad/atsignalcommon/windvane/WindVaneWebView;->setWebViewTransparent()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    return-object v0

    :catch_0
    move-exception v0

    .line 1075
    sget-boolean v1, Lcom/anythink/expressad/a;->a:Z

    if-eqz v1, :cond_4

    .line 1076
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCampaign()Lcom/anythink/expressad/foundation/d/c;
    .locals 1

    .line 1732
    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->D:Lcom/anythink/expressad/foundation/d/c;

    return-object v0
.end method

.method public getInstanceId()Ljava/lang/String;
    .locals 1

    .line 1805
    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->J:Ljava/lang/String;

    return-object v0
.end method

.method public getLayoutID()I
    .locals 1

    .line 1038
    iget-boolean v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->as:Z

    if-eqz v0, :cond_0

    const-string v0, "anythink_reward_activity_video_templete_transparent"

    :goto_0
    invoke-virtual {p0, v0}, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->findLayout(Ljava/lang/String;)I

    move-result v0

    return v0

    :cond_0
    const-string v0, "anythink_reward_activity_video_templete"

    goto :goto_0
.end method

.method public init(Landroid/content/Context;)V
    .locals 0

    .line 123
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->aa:Landroid/view/LayoutInflater;

    return-void
.end method

.method public initViews()Z
    .locals 1

    const-string v0, "anythink_video_templete_progressbar"

    .line 1091
    invoke-virtual {p0, v0}, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->findID(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->an:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isLoadSuccess()Z
    .locals 1

    .line 220
    iget-boolean v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->c:Z

    return v0
.end method

.method public loadModuleDatas()V
    .locals 20

    move-object/from16 v0, p0

    .line 7318
    iget-object v1, v0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->D:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v0, v1}, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->b(Lcom/anythink/expressad/foundation/d/c;)Lcom/anythink/expressad/video/signal/a/j;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 7320
    invoke-virtual {v1}, Lcom/anythink/expressad/video/signal/a/j;->b()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    .line 907
    iput v1, v0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->t:I

    .line 909
    :cond_1
    iget-object v1, v0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->p:Lcom/anythink/expressad/videocommon/e/d;

    invoke-virtual {v1}, Lcom/anythink/expressad/videocommon/e/d;->f()I

    move-result v1

    .line 910
    invoke-direct/range {p0 .. p0}, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->e()I

    move-result v3

    if-eqz v3, :cond_2

    move v11, v3

    goto :goto_1

    :cond_2
    move v11, v1

    .line 914
    :goto_1
    iget-object v1, v0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->f:Lcom/anythink/expressad/video/module/AnythinkVideoView;

    iget v3, v0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->t:I

    invoke-virtual {v1, v3}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->setSoundState(I)V

    .line 915
    iget-object v1, v0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->f:Lcom/anythink/expressad/video/module/AnythinkVideoView;

    iget-object v3, v0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->D:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v1, v3}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->setCampaign(Lcom/anythink/expressad/foundation/d/c;)V

    .line 917
    iget-object v1, v0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->f:Lcom/anythink/expressad/video/module/AnythinkVideoView;

    iget-object v3, v0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->E:Lcom/anythink/expressad/videocommon/b/c;

    invoke-virtual {v3}, Lcom/anythink/expressad/videocommon/b/c;->r()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->setPlayURL(Ljava/lang/String;)V

    .line 920
    iget-object v1, v0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->D:Lcom/anythink/expressad/foundation/d/c;

    const/4 v3, -0x2

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/anythink/expressad/foundation/d/c;->h()I

    move-result v1

    if-le v1, v3, :cond_3

    .line 921
    iget-object v1, v0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->D:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v1}, Lcom/anythink/expressad/foundation/d/c;->h()I

    move-result v1

    goto :goto_2

    .line 923
    :cond_3
    iget-object v1, v0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->p:Lcom/anythink/expressad/videocommon/e/d;

    invoke-virtual {v1}, Lcom/anythink/expressad/videocommon/e/d;->e()I

    move-result v1

    .line 926
    :goto_2
    iget-object v4, v0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->D:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v4}, Lcom/anythink/expressad/foundation/d/c;->k()I

    move-result v4

    const/4 v5, 0x5

    const/4 v15, 0x1

    if-ne v4, v5, :cond_4

    iget v4, v0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->I:I

    if-le v4, v15, :cond_4

    .line 927
    invoke-direct {v0, v1, v4}, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->a(II)I

    move-result v1

    .line 928
    iget-object v4, v0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->D:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v4, v1}, Lcom/anythink/expressad/foundation/d/c;->a(I)V

    .line 930
    :cond_4
    iget-object v4, v0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->f:Lcom/anythink/expressad/video/module/AnythinkVideoView;

    invoke-virtual {v4, v1}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->setVideoSkipTime(I)V

    .line 931
    iget-object v4, v0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->f:Lcom/anythink/expressad/video/module/AnythinkVideoView;

    iget-object v5, v0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->p:Lcom/anythink/expressad/videocommon/e/d;

    invoke-virtual {v5}, Lcom/anythink/expressad/videocommon/e/d;->k()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->setCloseAlert(I)V

    .line 932
    iget-object v4, v0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->f:Lcom/anythink/expressad/video/module/AnythinkVideoView;

    invoke-static {}, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->u()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->setBufferTimeout(I)V

    .line 933
    iget-object v14, v0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->f:Lcom/anythink/expressad/video/module/AnythinkVideoView;

    new-instance v13, Lcom/anythink/expressad/video/module/a/a/n;

    iget-object v5, v0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->K:Lcom/anythink/expressad/video/signal/factory/b;

    iget-object v6, v0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->D:Lcom/anythink/expressad/foundation/d/c;

    iget-object v7, v0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->r:Lcom/anythink/expressad/videocommon/c/c;

    iget-object v8, v0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->E:Lcom/anythink/expressad/videocommon/b/c;

    invoke-virtual/range {p0 .. p0}, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->b()Ljava/lang/String;

    move-result-object v9

    iget-object v10, v0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->n:Ljava/lang/String;

    new-instance v12, Lcom/anythink/expressad/video/bt/module/ATTempContainer$e;

    invoke-direct {v12, v0, v2}, Lcom/anythink/expressad/video/bt/module/ATTempContainer$e;-><init>(Lcom/anythink/expressad/video/bt/module/ATTempContainer;B)V

    iget-object v4, v0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->p:Lcom/anythink/expressad/videocommon/e/d;

    invoke-virtual {v4}, Lcom/anythink/expressad/videocommon/e/d;->M()I

    move-result v16

    iget-boolean v4, v0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->z:Z

    iget-object v15, v0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->p:Lcom/anythink/expressad/videocommon/e/d;

    invoke-virtual {v15}, Lcom/anythink/expressad/videocommon/e/d;->U()I

    move-result v18

    move v15, v4

    move-object v4, v13

    move-object/from16 v19, v12

    move v12, v1

    move-object v2, v13

    move-object/from16 v13, v19

    move-object v3, v14

    move/from16 v14, v16

    const/16 v17, 0x1

    move/from16 v16, v18

    invoke-direct/range {v4 .. v16}, Lcom/anythink/expressad/video/module/a/a/n;-><init>(Lcom/anythink/expressad/video/signal/factory/IJSFactory;Lcom/anythink/expressad/foundation/d/c;Lcom/anythink/expressad/videocommon/c/c;Lcom/anythink/expressad/videocommon/b/c;Ljava/lang/String;Ljava/lang/String;IILcom/anythink/expressad/video/module/a/a;IZI)V

    invoke-virtual {v3, v2}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->setNotifyListener(Lcom/anythink/expressad/video/module/a/a;)V

    .line 934
    iget-object v2, v0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->f:Lcom/anythink/expressad/video/module/AnythinkVideoView;

    iget-boolean v3, v0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->as:Z

    invoke-virtual {v2, v3}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->setShowingTransparent(Z)V

    .line 935
    iget-boolean v2, v0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->u:Z

    if-eqz v2, :cond_7

    iget v2, v0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->w:I

    sget v3, Lcom/anythink/expressad/foundation/g/a;->cr:I

    if-eq v2, v3, :cond_5

    iget v2, v0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->w:I

    sget v3, Lcom/anythink/expressad/foundation/g/a;->cs:I

    if-ne v2, v3, :cond_7

    .line 936
    :cond_5
    iget-object v2, v0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->f:Lcom/anythink/expressad/video/module/AnythinkVideoView;

    iget v3, v0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->w:I

    iget v4, v0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->x:I

    iget v5, v0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->y:I

    invoke-virtual {v2, v3, v4, v5}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->setIVRewardEnable(III)V

    .line 937
    iget-object v2, v0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->f:Lcom/anythink/expressad/video/module/AnythinkVideoView;

    .line 8311
    invoke-virtual/range {p0 .. p0}, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->getJSCommon()Lcom/anythink/expressad/video/signal/c;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 8312
    invoke-virtual/range {p0 .. p0}, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->getJSCommon()Lcom/anythink/expressad/video/signal/c;

    move-result-object v3

    invoke-interface {v3}, Lcom/anythink/expressad/video/signal/c;->n()I

    move-result v15

    goto :goto_3

    :cond_6
    const/4 v15, 0x1

    .line 937
    :goto_3
    invoke-virtual {v2, v15}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->setDialogRole(I)V

    .line 939
    :cond_7
    iget-object v2, v0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->g:Lcom/anythink/expressad/video/module/AnythinkContainerView;

    iget-object v3, v0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->D:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v2, v3}, Lcom/anythink/expressad/video/module/AnythinkContainerView;->setCampaign(Lcom/anythink/expressad/foundation/d/c;)V

    .line 940
    iget-object v2, v0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->g:Lcom/anythink/expressad/video/module/AnythinkContainerView;

    iget-object v3, v0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->V:Ljava/util/List;

    invoke-virtual {v2, v3}, Lcom/anythink/expressad/video/module/AnythinkContainerView;->addOrderViewData(Ljava/util/List;)V

    .line 941
    iget-object v2, v0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->g:Lcom/anythink/expressad/video/module/AnythinkContainerView;

    iget-object v3, v0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->n:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/anythink/expressad/video/module/AnythinkContainerView;->setUnitID(Ljava/lang/String;)V

    .line 943
    iget-object v2, v0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->D:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v2}, Lcom/anythink/expressad/foundation/d/c;->g()I

    move-result v2

    const/4 v3, -0x2

    if-le v2, v3, :cond_8

    .line 944
    iget-object v2, v0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->D:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v2}, Lcom/anythink/expressad/foundation/d/c;->g()I

    move-result v2

    goto :goto_4

    .line 946
    :cond_8
    iget-object v2, v0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->p:Lcom/anythink/expressad/videocommon/e/d;

    invoke-virtual {v2}, Lcom/anythink/expressad/videocommon/e/d;->p()I

    move-result v2

    .line 948
    :goto_4
    iget-object v3, v0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->g:Lcom/anythink/expressad/video/module/AnythinkContainerView;

    invoke-virtual {v3, v2}, Lcom/anythink/expressad/video/module/AnythinkContainerView;->setCloseDelayTime(I)V

    .line 949
    iget-object v2, v0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->g:Lcom/anythink/expressad/video/module/AnythinkContainerView;

    iget-object v3, v0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->p:Lcom/anythink/expressad/videocommon/e/d;

    invoke-virtual {v3}, Lcom/anythink/expressad/videocommon/e/d;->j()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/anythink/expressad/video/module/AnythinkContainerView;->setPlayCloseBtnTm(I)V

    .line 951
    iget-object v2, v0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->g:Lcom/anythink/expressad/video/module/AnythinkContainerView;

    iget-object v3, v0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->p:Lcom/anythink/expressad/videocommon/e/d;

    invoke-virtual {v3}, Lcom/anythink/expressad/videocommon/e/d;->h()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/anythink/expressad/video/module/AnythinkContainerView;->setVideoInteractiveType(I)V

    .line 952
    iget-object v2, v0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->g:Lcom/anythink/expressad/video/module/AnythinkContainerView;

    iget-object v3, v0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->p:Lcom/anythink/expressad/videocommon/e/d;

    invoke-virtual {v3}, Lcom/anythink/expressad/videocommon/e/d;->r()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/anythink/expressad/video/module/AnythinkContainerView;->setEndscreenType(I)V

    .line 953
    iget-object v2, v0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->g:Lcom/anythink/expressad/video/module/AnythinkContainerView;

    invoke-virtual {v2, v1}, Lcom/anythink/expressad/video/module/AnythinkContainerView;->setVideoSkipTime(I)V

    .line 954
    iget-object v1, v0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->g:Lcom/anythink/expressad/video/module/AnythinkContainerView;

    iget-boolean v2, v0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->as:Z

    invoke-virtual {v1, v2}, Lcom/anythink/expressad/video/module/AnythinkContainerView;->setShowingTransparent(Z)V

    .line 955
    iget-object v1, v0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->g:Lcom/anythink/expressad/video/module/AnythinkContainerView;

    iget-object v2, v0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->K:Lcom/anythink/expressad/video/signal/factory/b;

    invoke-virtual {v1, v2}, Lcom/anythink/expressad/video/module/AnythinkContainerView;->setJSFactory(Lcom/anythink/expressad/video/signal/factory/b;)V

    .line 956
    iget-object v1, v0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->D:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v1}, Lcom/anythink/expressad/foundation/d/c;->J()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_9

    .line 957
    iget-object v1, v0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->g:Lcom/anythink/expressad/video/module/AnythinkContainerView;

    new-instance v11, Lcom/anythink/expressad/video/module/a/a/h;

    iget-object v3, v0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->D:Lcom/anythink/expressad/foundation/d/c;

    iget-object v4, v0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->E:Lcom/anythink/expressad/videocommon/b/c;

    iget-object v5, v0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->r:Lcom/anythink/expressad/videocommon/c/c;

    invoke-virtual/range {p0 .. p0}, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->b()Ljava/lang/String;

    move-result-object v6

    iget-object v7, v0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->n:Ljava/lang/String;

    new-instance v8, Lcom/anythink/expressad/video/bt/module/ATTempContainer$c;

    const/4 v2, 0x0

    invoke-direct {v8, v0, v2}, Lcom/anythink/expressad/video/bt/module/ATTempContainer$c;-><init>(Lcom/anythink/expressad/video/bt/module/ATTempContainer;B)V

    iget-object v2, v0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->p:Lcom/anythink/expressad/videocommon/e/d;

    invoke-virtual {v2}, Lcom/anythink/expressad/videocommon/e/d;->M()I

    move-result v9

    iget-boolean v10, v0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->z:Z

    move-object v2, v11

    invoke-direct/range {v2 .. v10}, Lcom/anythink/expressad/video/module/a/a/h;-><init>(Lcom/anythink/expressad/foundation/d/c;Lcom/anythink/expressad/videocommon/b/c;Lcom/anythink/expressad/videocommon/c/c;Ljava/lang/String;Ljava/lang/String;Lcom/anythink/expressad/video/module/a/a;IZ)V

    invoke-virtual {v1, v11}, Lcom/anythink/expressad/video/module/AnythinkContainerView;->setNotifyListener(Lcom/anythink/expressad/video/module/a/a;)V

    .line 958
    iget-object v1, v0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->g:Lcom/anythink/expressad/video/module/AnythinkContainerView;

    iget-object v2, v0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->K:Lcom/anythink/expressad/video/signal/factory/b;

    invoke-virtual {v1, v2}, Lcom/anythink/expressad/video/module/AnythinkContainerView;->preLoadData(Lcom/anythink/expressad/video/signal/factory/b;)V

    .line 959
    iget-object v1, v0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->g:Lcom/anythink/expressad/video/module/AnythinkContainerView;

    invoke-virtual {v1}, Lcom/anythink/expressad/video/module/AnythinkContainerView;->showPlayableView()V

    goto :goto_5

    .line 961
    :cond_9
    iget-object v1, v0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->g:Lcom/anythink/expressad/video/module/AnythinkContainerView;

    new-instance v12, Lcom/anythink/expressad/video/module/a/a/c;

    iget-object v3, v0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->K:Lcom/anythink/expressad/video/signal/factory/b;

    iget-object v4, v0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->D:Lcom/anythink/expressad/foundation/d/c;

    iget-object v5, v0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->r:Lcom/anythink/expressad/videocommon/c/c;

    iget-object v6, v0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->E:Lcom/anythink/expressad/videocommon/b/c;

    invoke-virtual/range {p0 .. p0}, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->b()Ljava/lang/String;

    move-result-object v7

    iget-object v8, v0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->n:Ljava/lang/String;

    new-instance v9, Lcom/anythink/expressad/video/bt/module/ATTempContainer$b;

    iget-object v2, v0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->m:Landroid/app/Activity;

    iget-object v10, v0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->D:Lcom/anythink/expressad/foundation/d/c;

    invoke-direct {v9, v0, v2, v10}, Lcom/anythink/expressad/video/bt/module/ATTempContainer$b;-><init>(Lcom/anythink/expressad/video/bt/module/ATTempContainer;Landroid/app/Activity;Lcom/anythink/expressad/foundation/d/c;)V

    iget-object v2, v0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->p:Lcom/anythink/expressad/videocommon/e/d;

    invoke-virtual {v2}, Lcom/anythink/expressad/videocommon/e/d;->M()I

    move-result v10

    iget-boolean v11, v0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->z:Z

    move-object v2, v12

    invoke-direct/range {v2 .. v11}, Lcom/anythink/expressad/video/module/a/a/c;-><init>(Lcom/anythink/expressad/video/signal/factory/IJSFactory;Lcom/anythink/expressad/foundation/d/c;Lcom/anythink/expressad/videocommon/c/c;Lcom/anythink/expressad/videocommon/b/c;Ljava/lang/String;Ljava/lang/String;Lcom/anythink/expressad/video/module/a/a;IZ)V

    invoke-virtual {v1, v12}, Lcom/anythink/expressad/video/module/AnythinkContainerView;->setNotifyListener(Lcom/anythink/expressad/video/module/a/a;)V

    .line 962
    iget-object v1, v0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->g:Lcom/anythink/expressad/video/module/AnythinkContainerView;

    iget-object v2, v0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->K:Lcom/anythink/expressad/video/signal/factory/b;

    invoke-virtual {v1, v2}, Lcom/anythink/expressad/video/module/AnythinkContainerView;->preLoadData(Lcom/anythink/expressad/video/signal/factory/b;)V

    .line 963
    iget-object v1, v0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->f:Lcom/anythink/expressad/video/module/AnythinkVideoView;

    iget-object v2, v0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->K:Lcom/anythink/expressad/video/signal/factory/b;

    invoke-virtual {v1, v2}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->preLoadData(Lcom/anythink/expressad/video/signal/factory/b;)V

    .line 965
    :goto_5
    iget-boolean v1, v0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->as:Z

    if-eqz v1, :cond_a

    .line 966
    iget-object v1, v0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->g:Lcom/anythink/expressad/video/module/AnythinkContainerView;

    invoke-virtual {v1}, Lcom/anythink/expressad/video/module/AnythinkContainerView;->setAnythinkClickMiniCardViewTransparent()V

    :cond_a
    return-void
.end method

.method public notifyEvent(Ljava/lang/String;)V
    .locals 3

    .line 1817
    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->e:Lcom/anythink/expressad/atsignalcommon/windvane/WindVaneWebView;

    if-eqz v0, :cond_0

    .line 1818
    iget-object v1, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->J:Ljava/lang/String;

    .line 9175
    invoke-static {}, Lcom/anythink/expressad/atsignalcommon/windvane/j;->a()Lcom/anythink/expressad/atsignalcommon/windvane/j;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/anythink/expressad/atsignalcommon/windvane/j;->a(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .line 1111
    iget-boolean v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->as:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->f:Lcom/anythink/expressad/video/module/AnythinkVideoView;

    if-eqz v0, :cond_0

    .line 1112
    invoke-virtual {v0}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->notifyVideoClose()V

    return-void

    .line 1115
    :cond_0
    iget-boolean v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->au:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->f:Lcom/anythink/expressad/video/module/AnythinkVideoView;

    if-eqz v0, :cond_3

    .line 1116
    invoke-virtual {v0}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->isMiniCardShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1117
    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->g:Lcom/anythink/expressad/video/module/AnythinkContainerView;

    if-eqz v0, :cond_1

    .line 1118
    invoke-virtual {v0}, Lcom/anythink/expressad/video/module/AnythinkContainerView;->onMiniEndcardBackPress()V

    :cond_1
    return-void

    .line 1122
    :cond_2
    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->f:Lcom/anythink/expressad/video/module/AnythinkVideoView;

    invoke-virtual {v0}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->onBackPress()V

    return-void

    .line 1125
    :cond_3
    iget-boolean v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->aw:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->g:Lcom/anythink/expressad/video/module/AnythinkContainerView;

    if-eqz v0, :cond_4

    .line 1126
    invoke-virtual {v0}, Lcom/anythink/expressad/video/module/AnythinkContainerView;->onPlayableBackPress()V

    return-void

    .line 1129
    :cond_4
    iget-boolean v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->av:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->g:Lcom/anythink/expressad/video/module/AnythinkContainerView;

    if-eqz v0, :cond_5

    .line 1130
    invoke-virtual {v0}, Lcom/anythink/expressad/video/module/AnythinkContainerView;->onEndcardBackPress()V

    .line 1133
    :cond_5
    invoke-virtual {p0}, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->getJSCommon()Lcom/anythink/expressad/video/signal/c;

    move-result-object v0

    invoke-interface {v0}, Lcom/anythink/expressad/video/signal/c;->g()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1135
    invoke-virtual {p0}, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->getJSContainerModule()Lcom/anythink/expressad/video/signal/e;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->getJSContainerModule()Lcom/anythink/expressad/video/signal/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/anythink/expressad/video/signal/e;->miniCardShowing()Z

    move-result v0

    if-nez v0, :cond_8

    .line 1138
    :cond_6
    invoke-virtual {p0}, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->getActivityProxy()Lcom/anythink/expressad/video/signal/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/anythink/expressad/video/signal/a;->g()V

    return-void

    .line 1141
    :cond_7
    invoke-virtual {p0}, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->canBackPress()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1142
    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->m:Landroid/app/Activity;

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->z:Z

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->ax:Z

    if-nez v0, :cond_8

    const/4 v0, 0x1

    .line 1143
    iput-boolean v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->ax:Z

    .line 1144
    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->m:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    :cond_8
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 510
    invoke-super {p0, p1}, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreate()V
    .locals 14

    const-string v0, "id"

    const-string v1, "anythink_video_templete_webview_parent"

    .line 514
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onCreate isBigOffer: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->z:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 2574
    iget-object v2, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->p:Lcom/anythink/expressad/videocommon/e/d;

    if-nez v2, :cond_0

    .line 2575
    invoke-static {}, Lcom/anythink/expressad/videocommon/e/c;->a()Lcom/anythink/expressad/videocommon/e/c;

    move-result-object v2

    invoke-static {}, Lcom/anythink/expressad/foundation/b/a;->b()Lcom/anythink/expressad/foundation/b/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/anythink/expressad/foundation/b/a;->e()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->n:Ljava/lang/String;

    iget-boolean v5, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->u:Z

    invoke-virtual {v2, v3, v4, v5}, Lcom/anythink/expressad/videocommon/e/c;->a(Ljava/lang/String;Ljava/lang/String;Z)Lcom/anythink/expressad/videocommon/e/d;

    move-result-object v2

    iput-object v2, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->p:Lcom/anythink/expressad/videocommon/e/d;

    :cond_0
    const/4 v2, 0x0

    .line 516
    iput-boolean v2, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->ax:Z

    .line 519
    :try_start_0
    iget-boolean v3, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->z:Z

    if-eqz v3, :cond_2

    .line 520
    iget-object v3, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->D:Lcom/anythink/expressad/foundation/d/c;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/anythink/expressad/foundation/d/c;->j()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 521
    new-instance v3, Lcom/anythink/expressad/video/bt/module/b/e;

    invoke-virtual {p0}, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-boolean v6, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->u:Z

    iget-object v7, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->p:Lcom/anythink/expressad/videocommon/e/d;

    iget-object v8, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->D:Lcom/anythink/expressad/foundation/d/c;

    iget-object v9, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->F:Lcom/anythink/expressad/video/bt/module/b/h;

    invoke-virtual {p0}, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->b()Ljava/lang/String;

    move-result-object v10

    iget-object v11, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->n:Ljava/lang/String;

    move-object v4, v3

    invoke-direct/range {v4 .. v11}, Lcom/anythink/expressad/video/bt/module/b/e;-><init>(Landroid/content/Context;ZLcom/anythink/expressad/videocommon/e/d;Lcom/anythink/expressad/foundation/d/c;Lcom/anythink/expressad/video/bt/module/b/h;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->F:Lcom/anythink/expressad/video/bt/module/b/h;

    goto :goto_0

    .line 525
    :cond_1
    new-instance v3, Lcom/anythink/expressad/video/bt/module/b/d;

    iget-object v4, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->G:Lcom/anythink/expressad/video/bt/module/a/b;

    iget-object v5, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->J:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Lcom/anythink/expressad/video/bt/module/b/d;-><init>(Lcom/anythink/expressad/video/bt/module/a/b;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->F:Lcom/anythink/expressad/video/bt/module/b/h;

    goto :goto_0

    .line 528
    :cond_2
    new-instance v11, Lcom/anythink/expressad/video/bt/module/b/e;

    invoke-virtual {p0}, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-boolean v5, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->u:Z

    iget-object v6, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->p:Lcom/anythink/expressad/videocommon/e/d;

    iget-object v7, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->D:Lcom/anythink/expressad/foundation/d/c;

    iget-object v8, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->F:Lcom/anythink/expressad/video/bt/module/b/h;

    invoke-virtual {p0}, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->b()Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->n:Ljava/lang/String;

    move-object v3, v11

    invoke-direct/range {v3 .. v10}, Lcom/anythink/expressad/video/bt/module/b/e;-><init>(Landroid/content/Context;ZLcom/anythink/expressad/videocommon/e/d;Lcom/anythink/expressad/foundation/d/c;Lcom/anythink/expressad/video/bt/module/b/h;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v11, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->F:Lcom/anythink/expressad/video/bt/module/b/h;

    .line 531
    :goto_0
    new-instance v3, Lcom/anythink/expressad/video/bt/module/b/f;

    iget-object v4, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->F:Lcom/anythink/expressad/video/bt/module/b/h;

    invoke-direct {v3, v4}, Lcom/anythink/expressad/video/bt/module/b/f;-><init>(Lcom/anythink/expressad/video/bt/module/b/h;)V

    invoke-virtual {p0, v3}, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->registerErrorListener(Lcom/anythink/expressad/video/bt/module/ATTempContainer$a;)V

    .line 533
    iget-object v3, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->p:Lcom/anythink/expressad/videocommon/e/d;

    iget-object v4, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->D:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {p0, v3, v4}, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->a(Lcom/anythink/expressad/videocommon/e/d;Lcom/anythink/expressad/foundation/d/c;)V

    .line 534
    invoke-virtual {p0}, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->setShowingTransparent()V

    .line 536
    invoke-virtual {p0}, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->getLayoutID()I

    move-result v3

    if-gtz v3, :cond_3

    const-string v0, "layoutID not found"

    .line 538
    invoke-virtual {p0, v0}, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->a(Ljava/lang/String;)V

    return-void

    .line 540
    :cond_3
    iget-object v4, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->aa:Landroid/view/LayoutInflater;

    const/4 v5, 0x0

    invoke-virtual {v4, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->C:Landroid/view/View;

    .line 3131
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v5, -0x1

    invoke-direct {v4, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 541
    invoke-virtual {p0, v3, v4}, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3135
    iget-boolean v3, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->a:Z

    if-eqz v3, :cond_4

    .line 3136
    invoke-virtual {p0}, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->setMatchParent()V

    .line 3443
    :cond_4
    invoke-virtual {p0}, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->findWindVaneWebView()Lcom/anythink/expressad/atsignalcommon/windvane/WindVaneWebView;

    move-result-object v3

    iput-object v3, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->e:Lcom/anythink/expressad/atsignalcommon/windvane/WindVaneWebView;

    .line 3444
    invoke-virtual {p0}, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->findAnythinkVideoView()Lcom/anythink/expressad/video/module/AnythinkVideoView;

    move-result-object v3

    iput-object v3, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->f:Lcom/anythink/expressad/video/module/AnythinkVideoView;

    .line 3445
    iget-object v4, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->D:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v3, v4}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->setVideoLayout(Lcom/anythink/expressad/foundation/d/c;)V

    .line 3446
    iget-object v3, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->f:Lcom/anythink/expressad/video/module/AnythinkVideoView;

    iget-boolean v4, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->u:Z

    invoke-virtual {v3, v4}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->setIsIV(Z)V

    .line 3447
    iget-object v3, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->f:Lcom/anythink/expressad/video/module/AnythinkVideoView;

    iget-object v4, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->n:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->setUnitId(Ljava/lang/String;)V

    .line 3448
    iget-object v3, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->f:Lcom/anythink/expressad/video/module/AnythinkVideoView;

    iget-object v4, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->H:Lcom/anythink/expressad/video/dynview/f/a;

    iget-object v6, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->V:Ljava/util/List;

    iget v7, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->I:I

    iget v8, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->W:I

    invoke-virtual {v3, v4, v6, v7, v8}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->setCamPlayOrderCallback(Lcom/anythink/expressad/video/dynview/f/a;Ljava/util/List;II)V

    .line 3449
    iget-object v3, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->f:Lcom/anythink/expressad/video/module/AnythinkVideoView;

    iget-object v4, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->k:Lcom/anythink/expressad/reward/player/c;

    invoke-virtual {v3, v4}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->setTempEventListener(Lcom/anythink/expressad/reward/player/c;)V

    .line 3451
    iget-boolean v3, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->z:Z

    if-eqz v3, :cond_5

    .line 3452
    iget-object v3, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->f:Lcom/anythink/expressad/video/module/AnythinkVideoView;

    iget v4, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->P:I

    iget v6, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->Q:I

    iget v7, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->R:I

    iget v8, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->S:I

    invoke-virtual {v3, v4, v6, v7, v8}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->setNotchPadding(IIII)V

    .line 3454
    :cond_5
    invoke-virtual {p0}, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->findAnythinkContainerView()Lcom/anythink/expressad/video/module/AnythinkContainerView;

    move-result-object v3

    iput-object v3, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->g:Lcom/anythink/expressad/video/module/AnythinkContainerView;

    .line 3455
    iget-boolean v3, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->z:Z

    if-eqz v3, :cond_6

    .line 3456
    iget-object v6, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->g:Lcom/anythink/expressad/video/module/AnythinkContainerView;

    iget v7, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->O:I

    iget v8, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->P:I

    iget v9, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->Q:I

    iget v10, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->R:I

    iget v11, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->S:I

    invoke-virtual/range {v6 .. v11}, Lcom/anythink/expressad/video/module/AnythinkContainerView;->setNotchPadding(IIIII)V

    .line 3458
    :cond_6
    iget-object v3, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->f:Lcom/anythink/expressad/video/module/AnythinkVideoView;

    const/4 v4, 0x1

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->g:Lcom/anythink/expressad/video/module/AnythinkContainerView;

    if-eqz v3, :cond_7

    invoke-virtual {p0}, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->initViews()Z

    move-result v3

    if-eqz v3, :cond_7

    const/4 v3, 0x1

    goto :goto_1

    :cond_7
    const/4 v3, 0x0

    :goto_1
    if-nez v3, :cond_8

    .line 545
    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->d:Lcom/anythink/expressad/video/bt/module/ATTempContainer$a;

    const-string v1, "not found View IDS"

    invoke-interface {v0, v1}, Lcom/anythink/expressad/video/bt/module/ATTempContainer$a;->a(Ljava/lang/String;)V

    .line 546
    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->m:Landroid/app/Activity;

    if-eqz v0, :cond_10

    .line 547
    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->m:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void

    .line 550
    :cond_8
    iput-boolean v4, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->c:Z

    .line 3775
    iget-object v3, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->e:Lcom/anythink/expressad/atsignalcommon/windvane/WindVaneWebView;

    .line 3776
    new-instance v13, Lcom/anythink/expressad/video/signal/factory/b;

    iget-object v7, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->m:Landroid/app/Activity;

    iget-object v9, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->f:Lcom/anythink/expressad/video/module/AnythinkVideoView;

    iget-object v10, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->g:Lcom/anythink/expressad/video/module/AnythinkContainerView;

    iget-object v11, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->D:Lcom/anythink/expressad/foundation/d/c;

    new-instance v12, Lcom/anythink/expressad/video/bt/module/ATTempContainer$d;

    invoke-direct {v12, p0, v2}, Lcom/anythink/expressad/video/bt/module/ATTempContainer$d;-><init>(Lcom/anythink/expressad/video/bt/module/ATTempContainer;B)V

    move-object v6, v13

    move-object v8, v3

    invoke-direct/range {v6 .. v12}, Lcom/anythink/expressad/video/signal/factory/b;-><init>(Landroid/app/Activity;Landroid/webkit/WebView;Lcom/anythink/expressad/video/module/AnythinkVideoView;Lcom/anythink/expressad/video/module/AnythinkContainerView;Lcom/anythink/expressad/foundation/d/c;Lcom/anythink/expressad/video/signal/c$a;)V

    iput-object v13, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->K:Lcom/anythink/expressad/video/signal/factory/b;

    .line 3778
    iget-object v6, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->D:Lcom/anythink/expressad/foundation/d/c;

    if-eqz v6, :cond_9

    invoke-virtual {v6}, Lcom/anythink/expressad/foundation/d/c;->k()I

    move-result v6

    const/4 v7, 0x5

    if-ne v6, v7, :cond_9

    iget-object v6, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->V:Ljava/util/List;

    if-eqz v6, :cond_9

    .line 3779
    iget-object v7, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->K:Lcom/anythink/expressad/video/signal/factory/b;

    invoke-virtual {v7, v6}, Lcom/anythink/expressad/video/signal/factory/b;->a(Ljava/util/List;)V

    .line 3781
    :cond_9
    iget-object v6, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->K:Lcom/anythink/expressad/video/signal/factory/b;

    invoke-virtual {p0, v6}, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->registerJsFactory(Lcom/anythink/expressad/video/signal/factory/IJSFactory;)V

    .line 3782
    invoke-static {}, Lcom/anythink/expressad/foundation/f/b;->a()Lcom/anythink/expressad/foundation/f/b;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->n:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "_1"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lcom/anythink/expressad/video/bt/module/ATTempContainer$5;

    invoke-direct {v8, p0}, Lcom/anythink/expressad/video/bt/module/ATTempContainer$5;-><init>(Lcom/anythink/expressad/video/bt/module/ATTempContainer;)V

    invoke-virtual {v6, v7, v8}, Lcom/anythink/expressad/foundation/f/b;->a(Ljava/lang/String;Lcom/anythink/expressad/foundation/f/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v6, "preload template webview is null or load error"

    if-eqz v3, :cond_f

    .line 3838
    :try_start_1
    iget-object v7, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->C:Landroid/view/View;

    invoke-virtual {p0}, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8, v1, v0}, Lcom/anythink/expressad/foundation/h/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    .line 3839
    iget-object v8, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->K:Lcom/anythink/expressad/video/signal/factory/b;

    invoke-virtual {v3, v8}, Lcom/anythink/expressad/atsignalcommon/windvane/WindVaneWebView;->setApiManagerJSFactory(Ljava/lang/Object;)V

    .line 3840
    invoke-virtual {v3}, Lcom/anythink/expressad/atsignalcommon/windvane/WindVaneWebView;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    if-eqz v8, :cond_a

    .line 3841
    invoke-virtual {p0, v2, v6}, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->defaultLoad(ILjava/lang/String;)V

    return-void

    .line 3844
    :cond_a
    invoke-virtual {v3}, Lcom/anythink/expressad/atsignalcommon/windvane/WindVaneWebView;->getObject()Ljava/lang/Object;

    move-result-object v6

    instance-of v6, v6, Lcom/anythink/expressad/video/signal/a/j;

    if-eqz v6, :cond_d

    .line 3845
    iget-object v6, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->K:Lcom/anythink/expressad/video/signal/factory/b;

    invoke-virtual {v3}, Lcom/anythink/expressad/atsignalcommon/windvane/WindVaneWebView;->getObject()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/anythink/expressad/video/signal/a/j;

    invoke-virtual {v6, v8}, Lcom/anythink/expressad/video/signal/factory/b;->a(Lcom/anythink/expressad/video/signal/a/j;)V

    .line 3876
    invoke-virtual {p0}, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->getJSCommon()Lcom/anythink/expressad/video/signal/c;

    move-result-object v6

    iget v8, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->t:I

    invoke-interface {v6, v8}, Lcom/anythink/expressad/video/signal/c;->a(I)V

    .line 3877
    invoke-virtual {p0}, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->getJSCommon()Lcom/anythink/expressad/video/signal/c;

    move-result-object v6

    iget-object v8, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->n:Ljava/lang/String;

    invoke-interface {v6, v8}, Lcom/anythink/expressad/video/signal/c;->a(Ljava/lang/String;)V

    .line 3878
    invoke-virtual {p0}, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->getJSCommon()Lcom/anythink/expressad/video/signal/c;

    move-result-object v6

    iget-object v8, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->p:Lcom/anythink/expressad/videocommon/e/d;

    invoke-interface {v6, v8}, Lcom/anythink/expressad/video/signal/c;->a(Lcom/anythink/expressad/videocommon/e/d;)V

    .line 3879
    invoke-virtual {p0}, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->getJSCommon()Lcom/anythink/expressad/video/signal/c;

    move-result-object v6

    new-instance v8, Lcom/anythink/expressad/video/bt/module/ATTempContainer$d;

    invoke-direct {v8, p0, v2}, Lcom/anythink/expressad/video/bt/module/ATTempContainer$d;-><init>(Lcom/anythink/expressad/video/bt/module/ATTempContainer;B)V

    invoke-interface {v6, v8}, Lcom/anythink/expressad/video/signal/c;->a(Lcom/anythink/expressad/video/signal/c$a;)V

    .line 3882
    iget-object v2, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->D:Lcom/anythink/expressad/foundation/d/c;

    if-eqz v2, :cond_c

    invoke-virtual {v2}, Lcom/anythink/expressad/foundation/d/c;->H()Z

    move-result v2

    if-nez v2, :cond_b

    iget-object v2, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->D:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v2}, Lcom/anythink/expressad/foundation/d/c;->ay()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 3883
    :cond_b
    new-instance v2, Lcom/anythink/expressad/atsignalcommon/mraid/MraidVolumeChangeReceiver;

    invoke-virtual {p0}, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v2, v6}, Lcom/anythink/expressad/atsignalcommon/mraid/MraidVolumeChangeReceiver;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->ay:Lcom/anythink/expressad/atsignalcommon/mraid/MraidVolumeChangeReceiver;

    .line 3884
    invoke-virtual {v2}, Lcom/anythink/expressad/atsignalcommon/mraid/MraidVolumeChangeReceiver;->registerReceiver()V

    .line 3885
    iget-object v2, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->ay:Lcom/anythink/expressad/atsignalcommon/mraid/MraidVolumeChangeReceiver;

    invoke-virtual {v2}, Lcom/anythink/expressad/atsignalcommon/mraid/MraidVolumeChangeReceiver;->getCurrentVolume()D

    .line 3886
    iget-object v2, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->ay:Lcom/anythink/expressad/atsignalcommon/mraid/MraidVolumeChangeReceiver;

    new-instance v6, Lcom/anythink/expressad/video/bt/module/ATTempContainer$6;

    invoke-direct {v6, p0}, Lcom/anythink/expressad/video/bt/module/ATTempContainer$6;-><init>(Lcom/anythink/expressad/video/bt/module/ATTempContainer;)V

    invoke-virtual {v2, v6}, Lcom/anythink/expressad/atsignalcommon/mraid/MraidVolumeChangeReceiver;->setVolumeChangeListener(Lcom/anythink/expressad/atsignalcommon/mraid/MraidVolumeChangeReceiver$VolumeChangeListener;)V

    .line 3847
    :cond_c
    invoke-virtual {v3}, Lcom/anythink/expressad/atsignalcommon/windvane/WindVaneWebView;->getObject()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/anythink/expressad/video/signal/a/j;

    invoke-virtual {v2}, Lcom/anythink/expressad/video/signal/a/j;->r()I

    move-result v2

    .line 3848
    invoke-virtual {p0}, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->getJSContainerModule()Lcom/anythink/expressad/video/signal/e;

    move-result-object v6

    invoke-interface {v6, v2}, Lcom/anythink/expressad/video/signal/e;->readyStatus(I)V

    .line 3849
    invoke-direct {p0}, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->j()V

    .line 3850
    invoke-virtual {v3}, Lcom/anythink/expressad/atsignalcommon/windvane/WindVaneWebView;->getObject()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/anythink/expressad/video/signal/a/j;

    iget-object v2, v2, Lcom/anythink/expressad/video/signal/a/j;->r:Lcom/anythink/expressad/video/signal/c$a;

    invoke-interface {v2}, Lcom/anythink/expressad/video/signal/c$a;->c()V

    .line 3852
    iget-boolean v2, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->z:Z

    if-eqz v2, :cond_d

    .line 3853
    invoke-virtual {p0}, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->getJSCommon()Lcom/anythink/expressad/video/signal/c;

    move-result-object v2

    iget v6, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->ak:I

    invoke-interface {v2, v6}, Lcom/anythink/expressad/video/signal/c;->f(I)V

    .line 3854
    invoke-virtual {p0}, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->getJSCommon()Lcom/anythink/expressad/video/signal/c;

    move-result-object v2

    iget v6, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->al:I

    invoke-interface {v2, v6}, Lcom/anythink/expressad/video/signal/c;->e(I)V

    .line 3859
    :cond_d
    invoke-virtual {p0}, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->getJSCommon()Lcom/anythink/expressad/video/signal/c;

    move-result-object v2

    invoke-interface {v2}, Lcom/anythink/expressad/video/signal/c;->f()I

    move-result v2

    if-ne v2, v4, :cond_e

    .line 3860
    iget-object v2, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->C:Landroid/view/View;

    invoke-virtual {p0}, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v1, v0}, Lcom/anythink/expressad/foundation/h/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_e

    .line 3862
    iget-object v1, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->C:Landroid/view/View;

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 3863
    iget-object v1, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->C:Landroid/view/View;

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 3866
    :cond_e
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v7, v3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    .line 3869
    :cond_f
    invoke-virtual {p0, v2, v6}, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->defaultLoad(ILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_10
    return-void

    :catchall_0
    move-exception v0

    .line 555
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onCreate error"

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->a(Ljava/lang/String;)V

    return-void
.end method

.method public onDestroy()V
    .locals 5

    .line 641
    iget-boolean v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->N:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 644
    iput-boolean v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->N:Z

    .line 645
    invoke-super {p0}, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->onDestroy()V

    .line 651
    :try_start_0
    iget-object v1, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->f:Lcom/anythink/expressad/video/module/AnythinkVideoView;

    if-eqz v1, :cond_1

    .line 652
    invoke-virtual {v1}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->releasePlayer()V

    .line 657
    :cond_1
    iget-object v1, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->e:Lcom/anythink/expressad/atsignalcommon/windvane/WindVaneWebView;

    if-eqz v1, :cond_3

    .line 658
    invoke-virtual {v1}, Lcom/anythink/expressad/atsignalcommon/windvane/WindVaneWebView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_2

    .line 660
    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 662
    :cond_2
    iget-object v1, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->e:Lcom/anythink/expressad/atsignalcommon/windvane/WindVaneWebView;

    invoke-virtual {v1}, Lcom/anythink/expressad/atsignalcommon/windvane/WindVaneWebView;->clearWebView()V

    .line 663
    iget-object v1, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->e:Lcom/anythink/expressad/atsignalcommon/windvane/WindVaneWebView;

    invoke-virtual {v1}, Lcom/anythink/expressad/atsignalcommon/windvane/WindVaneWebView;->release()V

    .line 665
    :cond_3
    iget-object v1, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->G:Lcom/anythink/expressad/video/bt/module/a/b;

    if-eqz v1, :cond_4

    const/4 v1, 0x0

    .line 666
    iput-object v1, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->G:Lcom/anythink/expressad/video/bt/module/a/b;

    .line 669
    :cond_4
    iget-object v1, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->h:Landroid/os/Handler;

    iget-object v2, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->i:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 670
    iget-object v1, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->h:Landroid/os/Handler;

    iget-object v2, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->j:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 672
    invoke-virtual {p0}, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->getJSCommon()Lcom/anythink/expressad/video/signal/c;

    move-result-object v1

    invoke-interface {v1}, Lcom/anythink/expressad/video/signal/c;->k()V

    .line 674
    iget-boolean v1, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->u:Z

    if-eqz v1, :cond_5

    .line 675
    invoke-static {}, Lcom/anythink/expressad/d/b;->a()Lcom/anythink/expressad/d/b;

    iget-object v1, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->n:Ljava/lang/String;

    invoke-static {v1}, Lcom/anythink/expressad/d/b;->c(Ljava/lang/String;)V

    .line 679
    :cond_5
    iget-boolean v1, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->ao:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v1, :cond_11

    .line 5154
    :try_start_1
    iput-boolean v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->ao:Z

    .line 5157
    iget-object v1, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->D:Lcom/anythink/expressad/foundation/d/c;

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Lcom/anythink/expressad/foundation/d/c;->J()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_6

    .line 5158
    iput-boolean v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->ap:Z

    .line 5161
    :cond_6
    iget-object v1, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->F:Lcom/anythink/expressad/video/bt/module/b/h;

    if-eqz v1, :cond_b

    .line 5162
    iget-boolean v1, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->u:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_9

    iget v1, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->w:I

    sget v3, Lcom/anythink/expressad/foundation/g/a;->cr:I

    if-eq v1, v3, :cond_7

    iget v1, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->w:I

    sget v3, Lcom/anythink/expressad/foundation/g/a;->cs:I

    if-ne v1, v3, :cond_9

    .line 5164
    :cond_7
    iget-object v1, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->F:Lcom/anythink/expressad/video/bt/module/b/h;

    iget v3, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->M:I

    if-ne v3, v0, :cond_8

    goto :goto_0

    :cond_8
    const/4 v0, 0x0

    :goto_0
    iget v3, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->L:I

    invoke-interface {v1, v0, v3}, Lcom/anythink/expressad/video/bt/module/b/h;->a(ZI)V

    .line 5166
    :cond_9
    iget-boolean v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->ap:Z

    if-nez v0, :cond_a

    .line 5167
    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->r:Lcom/anythink/expressad/videocommon/c/c;

    invoke-virtual {v0, v2}, Lcom/anythink/expressad/videocommon/c/c;->a(I)V

    .line 5169
    :cond_a
    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->F:Lcom/anythink/expressad/video/bt/module/b/h;

    iget-boolean v1, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->ap:Z

    iget-object v2, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->r:Lcom/anythink/expressad/videocommon/c/c;

    invoke-interface {v0, v1, v2}, Lcom/anythink/expressad/video/bt/module/b/h;->a(ZLcom/anythink/expressad/videocommon/c/c;)V

    .line 5171
    :cond_b
    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->h:Landroid/os/Handler;

    iget-object v1, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->az:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 5173
    iget-boolean v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->u:Z

    if-nez v0, :cond_c

    iget-boolean v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->z:Z

    if-eqz v0, :cond_d

    :cond_c
    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->D:Lcom/anythink/expressad/foundation/d/c;

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/d/c;->j()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 6096
    :cond_d
    iget-boolean v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->ap:Z

    if-eqz v0, :cond_e

    .line 6102
    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->D:Lcom/anythink/expressad/foundation/d/c;

    iget-object v1, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->r:Lcom/anythink/expressad/videocommon/c/c;

    iget-object v2, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->n:Ljava/lang/String;

    iget-object v3, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->q:Ljava/lang/String;

    iget-object v4, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->U:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/anythink/expressad/video/module/b/a;->a(Lcom/anythink/expressad/foundation/d/c;Lcom/anythink/expressad/videocommon/c/c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 5176
    :cond_e
    iget-boolean v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->z:Z

    if-nez v0, :cond_10

    .line 5177
    iget-boolean v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->u:Z

    if-eqz v0, :cond_f

    const/16 v0, 0x11f

    .line 5178
    iget-object v1, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->D:Lcom/anythink/expressad/foundation/d/c;

    invoke-static {v0, v1}, Lcom/anythink/expressad/videocommon/a;->b(ILcom/anythink/expressad/foundation/d/c;)V

    goto :goto_1

    :cond_f
    const/16 v0, 0x5e

    .line 5180
    iget-object v1, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->D:Lcom/anythink/expressad/foundation/d/c;

    invoke-static {v0, v1}, Lcom/anythink/expressad/videocommon/a;->b(ILcom/anythink/expressad/foundation/d/c;)V

    .line 5183
    :cond_10
    :goto_1
    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->g:Lcom/anythink/expressad/video/module/AnythinkContainerView;

    if-eqz v0, :cond_11

    .line 5184
    invoke-virtual {v0}, Lcom/anythink/expressad/video/module/AnythinkContainerView;->release()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    .line 5187
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 686
    :cond_11
    :goto_2
    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->ay:Lcom/anythink/expressad/atsignalcommon/mraid/MraidVolumeChangeReceiver;

    if-eqz v0, :cond_12

    .line 687
    invoke-virtual {v0}, Lcom/anythink/expressad/atsignalcommon/mraid/MraidVolumeChangeReceiver;->unregisterReceiver()V

    .line 690
    :cond_12
    iget-boolean v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->z:Z

    if-nez v0, :cond_14

    .line 691
    invoke-virtual {p0}, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->isLoadSuccess()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 692
    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->h:Landroid/os/Handler;

    new-instance v1, Lcom/anythink/expressad/video/bt/module/ATTempContainer$4;

    invoke-direct {v1, p0}, Lcom/anythink/expressad/video/bt/module/ATTempContainer$4;-><init>(Lcom/anythink/expressad/video/bt/module/ATTempContainer;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_3

    .line 701
    :cond_13
    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->m:Landroid/app/Activity;

    if-eqz v0, :cond_14

    .line 702
    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->m:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 710
    :cond_14
    :goto_3
    invoke-static {}, Lcom/anythink/expressad/video/bt/a/c;->a()Lcom/anythink/expressad/video/bt/a/c;

    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->J:Ljava/lang/String;

    invoke-static {v0}, Lcom/anythink/expressad/video/bt/a/c;->f(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    :catchall_1
    move-exception v0

    .line 713
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .line 628
    invoke-super {p0}, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->onDetachedFromWindow()V

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 581
    invoke-super {p0}, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->onPause()V

    const/4 v0, 0x1

    .line 583
    iput-boolean v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->aq:Z

    .line 585
    :try_start_0
    invoke-virtual {p0}, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->getJSVideoModule()Lcom/anythink/expressad/video/signal/j;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/anythink/expressad/video/signal/j;->videoOperate(I)V

    .line 587
    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->g:Lcom/anythink/expressad/video/module/AnythinkContainerView;

    if-eqz v0, :cond_0

    .line 588
    invoke-virtual {v0}, Lcom/anythink/expressad/video/module/AnythinkContainerView;->setOnPause()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    .line 591
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 597
    invoke-super {p0}, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->onResume()V

    .line 4421
    iget v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->aj:I

    const/4 v1, -0x3

    if-ne v0, v1, :cond_0

    .line 4422
    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->i:Ljava/lang/Runnable;

    goto :goto_0

    :cond_0
    const/4 v1, -0x4

    if-ne v0, v1, :cond_1

    .line 4424
    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->j:Ljava/lang/Runnable;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 4427
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 4428
    iput v1, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->aj:I

    .line 602
    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->f:Lcom/anythink/expressad/video/module/AnythinkVideoView;

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->i()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->f:Lcom/anythink/expressad/video/module/AnythinkVideoView;

    invoke-virtual {v0}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->isMiniCardShowing()Z

    move-result v0

    if-nez v0, :cond_3

    sget-boolean v0, Lcom/anythink/expressad/foundation/f/b;->c:Z

    if-nez v0, :cond_3

    .line 603
    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->f:Lcom/anythink/expressad/video/module/AnythinkVideoView;

    invoke-virtual {v0, v1}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->setCover(Z)V

    .line 606
    :cond_3
    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->g:Lcom/anythink/expressad/video/module/AnythinkContainerView;

    if-eqz v0, :cond_4

    .line 607
    invoke-virtual {v0}, Lcom/anythink/expressad/video/module/AnythinkContainerView;->setOnResume()V

    .line 610
    :cond_4
    iget-boolean v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->aq:Z

    if-eqz v0, :cond_5

    invoke-direct {p0}, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->i()Z

    move-result v0

    if-nez v0, :cond_5

    sget-boolean v0, Lcom/anythink/expressad/foundation/f/b;->c:Z

    if-nez v0, :cond_5

    .line 611
    invoke-virtual {p0}, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->getJSVideoModule()Lcom/anythink/expressad/video/signal/j;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/anythink/expressad/video/signal/j;->videoOperate(I)V

    .line 613
    :cond_5
    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->m:Landroid/app/Activity;

    if-eqz v0, :cond_6

    .line 614
    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->m:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/expressad/foundation/h/t;->a(Landroid/view/View;)V

    .line 616
    :cond_6
    iget-boolean v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->as:Z

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->at:Z

    if-eqz v0, :cond_7

    .line 617
    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->m:Landroid/app/Activity;

    if-eqz v0, :cond_7

    .line 618
    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->m:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_7
    return-void

    :catchall_0
    move-exception v0

    .line 622
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    return-void
.end method

.method public onStop()V
    .locals 2

    .line 633
    invoke-super {p0}, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->onStop()V

    .line 634
    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->f:Lcom/anythink/expressad/video/module/AnythinkVideoView;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 635
    invoke-virtual {v0, v1}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->setCover(Z)V

    :cond_0
    return-void
.end method

.method public preload()V
    .locals 0

    return-void
.end method

.method public receiveSuccess()V
    .locals 4

    .line 973
    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->h:Landroid/os/Handler;

    iget-object v1, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->j:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 974
    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->h:Landroid/os/Handler;

    iget-object v1, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->az:Ljava/lang/Runnable;

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public registerErrorListener(Lcom/anythink/expressad/video/bt/module/ATTempContainer$a;)V
    .locals 0

    .line 175
    iput-object p1, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->d:Lcom/anythink/expressad/video/bt/module/ATTempContainer$a;

    return-void
.end method

.method public setAnythinkTempCallback(Lcom/anythink/expressad/video/bt/module/a/b;)V
    .locals 0

    .line 1788
    iput-object p1, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->G:Lcom/anythink/expressad/video/bt/module/a/b;

    return-void
.end method

.method public setCamPlayOrderCallback(Lcom/anythink/expressad/video/dynview/f/a;I)V
    .locals 0

    .line 1792
    iput-object p1, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->H:Lcom/anythink/expressad/video/dynview/f/a;

    .line 1793
    iput p2, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->I:I

    return-void
.end method

.method public setCampOrderViewData(Ljava/util/List;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/anythink/expressad/foundation/d/c;",
            ">;I)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 153
    iput-object p1, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->V:Ljava/util/List;

    .line 155
    :cond_0
    iput p2, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->W:I

    return-void
.end method

.method public setCampaign(Lcom/anythink/expressad/foundation/d/c;)V
    .locals 3

    .line 1722
    iput-object p1, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->D:Lcom/anythink/expressad/foundation/d/c;

    if-eqz p1, :cond_1

    .line 1724
    invoke-virtual {p1}, Lcom/anythink/expressad/foundation/d/c;->K()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->n:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1725
    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->n:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/anythink/expressad/foundation/d/c;->l(Ljava/lang/String;)V

    .line 1727
    :cond_0
    invoke-static {}, Lcom/anythink/expressad/foundation/f/b;->a()Lcom/anythink/expressad/foundation/f/b;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/anythink/expressad/foundation/d/c;->K()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/anythink/expressad/foundation/f/b;->a(Ljava/lang/String;Lcom/anythink/expressad/foundation/d/c;)V

    :cond_1
    return-void
.end method

.method public setCampaignDownLoadTask(Lcom/anythink/expressad/videocommon/b/c;)V
    .locals 0

    .line 1773
    iput-object p1, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->E:Lcom/anythink/expressad/videocommon/b/c;

    return-void
.end method

.method public setCampaignExpired(Z)V
    .locals 2

    .line 1737
    :try_start_0
    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->D:Lcom/anythink/expressad/foundation/d/c;

    if-eqz v0, :cond_4

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    .line 1740
    invoke-virtual {v0, p1}, Lcom/anythink/expressad/foundation/d/c;->e(I)V

    .line 1741
    iget-boolean v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->v:Z

    if-eqz v0, :cond_0

    .line 1742
    iget-object p1, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->D:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {p1, v1}, Lcom/anythink/expressad/foundation/d/c;->m(I)V

    return-void

    .line 1744
    :cond_0
    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->p:Lcom/anythink/expressad/videocommon/e/d;

    if-eqz v0, :cond_4

    .line 1745
    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->p:Lcom/anythink/expressad/videocommon/e/d;

    invoke-virtual {v0}, Lcom/anythink/expressad/videocommon/e/d;->M()I

    move-result v0

    if-ne v0, p1, :cond_1

    .line 1746
    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->D:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v0, p1}, Lcom/anythink/expressad/foundation/d/c;->m(I)V

    return-void

    .line 1748
    :cond_1
    iget-object p1, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->D:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {p1, v1}, Lcom/anythink/expressad/foundation/d/c;->m(I)V

    return-void

    .line 1753
    :cond_2
    invoke-virtual {v0, v1}, Lcom/anythink/expressad/foundation/d/c;->e(I)V

    .line 1755
    iget-object p1, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->D:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {p1}, Lcom/anythink/expressad/foundation/d/c;->A()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 1756
    iget-object p1, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->D:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {p1, v1}, Lcom/anythink/expressad/foundation/d/c;->m(I)V

    return-void

    .line 1758
    :cond_3
    iget-object p1, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->p:Lcom/anythink/expressad/videocommon/e/d;

    if-eqz p1, :cond_4

    .line 1759
    iget-object p1, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->p:Lcom/anythink/expressad/videocommon/e/d;

    invoke-virtual {p1}, Lcom/anythink/expressad/videocommon/e/d;->a()I

    move-result p1

    .line 1762
    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->D:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v0, p1}, Lcom/anythink/expressad/foundation/d/c;->m(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    return-void

    :catch_0
    move-exception p1

    .line 1768
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    return-void
.end method

.method public setDeveloperExtraData(Ljava/lang/String;)V
    .locals 0

    .line 1851
    iput-object p1, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->U:Ljava/lang/String;

    return-void
.end method

.method public setH5Cbp(I)V
    .locals 0

    .line 1809
    iput p1, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->al:I

    return-void
.end method

.method public setInstanceId(Ljava/lang/String;)V
    .locals 0

    .line 1801
    iput-object p1, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->J:Ljava/lang/String;

    return-void
.end method

.method public setJSFactory(Lcom/anythink/expressad/video/signal/factory/b;)V
    .locals 0

    .line 1797
    iput-object p1, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->K:Lcom/anythink/expressad/video/signal/factory/b;

    return-void
.end method

.method public setMatchParent()V
    .locals 2

    .line 141
    invoke-virtual {p0}, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    .line 143
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 144
    invoke-virtual {p0, v0}, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    .line 146
    :cond_0
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 147
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    return-void
.end method

.method public setMediaPlayerUrl(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setNotchPadding(IIIII)V
    .locals 7

    .line 1823
    iput p1, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->O:I

    .line 1824
    iput p2, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->P:I

    .line 1825
    iput p3, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->Q:I

    .line 1826
    iput p4, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->R:I

    .line 1827
    iput p5, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->S:I

    .line 1829
    invoke-static {p1, p2, p3, p4, p5}, Lcom/anythink/expressad/foundation/h/h;->a(IIIII)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->T:Ljava/lang/String;

    .line 1833
    invoke-virtual {p0}, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->getJSCommon()Lcom/anythink/expressad/video/signal/c;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->T:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1834
    invoke-virtual {p0}, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->getJSCommon()Lcom/anythink/expressad/video/signal/c;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->T:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/anythink/expressad/video/signal/c;->b(Ljava/lang/String;)V

    .line 1836
    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->e:Lcom/anythink/expressad/atsignalcommon/windvane/WindVaneWebView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->T:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1837
    invoke-static {}, Lcom/anythink/expressad/atsignalcommon/windvane/j;->a()Lcom/anythink/expressad/atsignalcommon/windvane/j;

    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->e:Lcom/anythink/expressad/atsignalcommon/windvane/WindVaneWebView;

    iget-object v1, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->T:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    const-string v2, "oncutoutfetched"

    invoke-static {v0, v2, v1}, Lcom/anythink/expressad/atsignalcommon/windvane/j;->a(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V

    .line 1841
    :cond_0
    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->f:Lcom/anythink/expressad/video/module/AnythinkVideoView;

    if-eqz v0, :cond_1

    .line 1842
    invoke-virtual {v0, p2, p3, p4, p5}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->setNotchPadding(IIII)V

    .line 1845
    :cond_1
    iget-object v1, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->g:Lcom/anythink/expressad/video/module/AnythinkContainerView;

    if-eqz v1, :cond_2

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    .line 1846
    invoke-virtual/range {v1 .. v6}, Lcom/anythink/expressad/video/module/AnythinkContainerView;->setNotchPadding(IIIII)V

    :cond_2
    return-void
.end method

.method public setShowRewardListener(Lcom/anythink/expressad/video/bt/module/b/h;)V
    .locals 0

    .line 1777
    iput-object p1, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->F:Lcom/anythink/expressad/video/bt/module/b/h;

    return-void
.end method

.method public setShowingTransparent()V
    .locals 3

    .line 765
    invoke-direct {p0}, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->h()Z

    move-result v0

    iput-boolean v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->as:Z

    if-nez v0, :cond_0

    .line 767
    invoke-virtual {p0}, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "anythink_reward_theme"

    const-string v2, "style"

    invoke-static {v0, v1, v2}, Lcom/anythink/expressad/foundation/h/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 768
    iget-object v1, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->m:Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 769
    iget-object v1, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->m:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->setTheme(I)V

    :cond_0
    return-void
.end method

.method public setTempEventListener(Lcom/anythink/expressad/reward/player/c;)V
    .locals 0

    .line 1783
    iput-object p1, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->k:Lcom/anythink/expressad/reward/player/c;

    return-void
.end method

.method public setWebViewFront(I)V
    .locals 0

    .line 1813
    iput p1, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->ak:I

    return-void
.end method

.method public superDefaultLoad(ILjava/lang/String;)V
    .locals 2

    .line 433
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "receiveError:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",descroption:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 434
    iget-object p1, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->h:Landroid/os/Handler;

    iget-object p2, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->i:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 435
    iget-object p1, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->h:Landroid/os/Handler;

    iget-object p2, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->j:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 436
    iget-object p1, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->d:Lcom/anythink/expressad/video/bt/module/ATTempContainer$a;

    invoke-interface {p1}, Lcom/anythink/expressad/video/bt/module/ATTempContainer$a;->b()V

    .line 437
    iget-object p1, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->e:Lcom/anythink/expressad/atsignalcommon/windvane/WindVaneWebView;

    if-eqz p1, :cond_0

    const/16 p2, 0x8

    .line 438
    invoke-virtual {p1, p2}, Lcom/anythink/expressad/atsignalcommon/windvane/WindVaneWebView;->setVisibility(I)V

    :cond_0
    return-void
.end method
