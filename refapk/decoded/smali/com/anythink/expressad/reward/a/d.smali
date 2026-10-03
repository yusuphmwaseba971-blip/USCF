.class public final Lcom/anythink/expressad/reward/a/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/anythink/expressad/reward/a/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/anythink/expressad/reward/a/d$b;,
        Lcom/anythink/expressad/reward/a/d$c;,
        Lcom/anythink/expressad/reward/a/d$e;,
        Lcom/anythink/expressad/reward/a/d$i;,
        Lcom/anythink/expressad/reward/a/d$f;,
        Lcom/anythink/expressad/reward/a/d$d;,
        Lcom/anythink/expressad/reward/a/d$j;,
        Lcom/anythink/expressad/reward/a/d$a;,
        Lcom/anythink/expressad/reward/a/d$h;,
        Lcom/anythink/expressad/reward/a/d$g;
    }
.end annotation


# static fields
.field private static final L:I = 0x8

.field private static final M:I = 0x9

.field private static final N:I = 0x10

.field private static final O:I = 0x11

.field private static final P:I = 0x1388

.field private static final Q:I = 0x7530

.field public static final a:Ljava/lang/String; = "APP ALREADY INSTALLED"

.field public static final b:Ljava/lang/String; = "Offer list is empty"

.field public static final d:Ljava/lang/String; = "1"

.field public static final e:Ljava/lang/String; = "1"

.field public static final f:I = 0x1

.field public static final g:I = 0x2

.field public static final h:I = 0x3

.field public static final i:I = 0x4

.field public static final j:I = 0x5

.field public static final k:I = 0x6

.field public static final l:I = 0x7

.field private static final u:Ljava/lang/String; = "RewardMVVideoAdapter"


# instance fields
.field private A:I

.field private B:I

.field private C:Z

.field private D:Ljava/lang/String;

.field private E:Ljava/lang/String;

.field private F:Lcom/anythink/expressad/video/bt/module/b/h;

.field private volatile G:Lcom/anythink/expressad/reward/a/b;

.field private H:Ljava/lang/Runnable;

.field private I:Lcom/anythink/expressad/videocommon/e/d;

.field private J:Z

.field private K:Z

.field private R:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/anythink/expressad/foundation/d/c;",
            ">;"
        }
    .end annotation
.end field

.field private S:I

.field private T:Z

.field private U:Z

.field private V:Ljava/lang/String;

.field private W:I

.field private X:I

.field private Y:I

.field private Z:Lcom/anythink/expressad/foundation/d/d;

.field private aa:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/anythink/expressad/foundation/d/c;",
            ">;"
        }
    .end annotation
.end field

.field private ab:Z

.field private ac:J

.field private ad:Landroid/os/Handler;

.field private ae:J

.field private af:Ljava/lang/String;

.field private ag:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/anythink/expressad/foundation/d/c;",
            ">;"
        }
    .end annotation
.end field

.field private ah:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/anythink/expressad/foundation/d/c;",
            ">;"
        }
    .end annotation
.end field

.field public c:Ljava/lang/Object;

.field public m:Ljava/lang/String;

.field public n:Ljava/lang/String;

.field o:Z

.field volatile p:Z

.field volatile q:Z

.field volatile r:Z

.field volatile s:Z

.field volatile t:Z

.field private v:Landroid/content/Context;

.field private w:Ljava/lang/String;

.field private x:Ljava/lang/String;

.field private y:I

.field private z:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 1076
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 110
    iput-boolean v0, p0, Lcom/anythink/expressad/reward/a/d;->J:Z

    .line 114
    iput-boolean v0, p0, Lcom/anythink/expressad/reward/a/d;->K:Z

    .line 115
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/anythink/expressad/reward/a/d;->c:Ljava/lang/Object;

    .line 159
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v1, p0, Lcom/anythink/expressad/reward/a/d;->R:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 v1, 0x2

    .line 161
    iput v1, p0, Lcom/anythink/expressad/reward/a/d;->S:I

    const-string v1, ""

    .line 164
    iput-object v1, p0, Lcom/anythink/expressad/reward/a/d;->V:Ljava/lang/String;

    .line 171
    iput-boolean v0, p0, Lcom/anythink/expressad/reward/a/d;->ab:Z

    .line 172
    iput-object v1, p0, Lcom/anythink/expressad/reward/a/d;->m:Ljava/lang/String;

    .line 173
    iput-object v1, p0, Lcom/anythink/expressad/reward/a/d;->n:Ljava/lang/String;

    const-wide/16 v2, 0x0

    .line 175
    iput-wide v2, p0, Lcom/anythink/expressad/reward/a/d;->ac:J

    .line 223
    new-instance v4, Lcom/anythink/expressad/reward/a/d$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v4, p0, v5}, Lcom/anythink/expressad/reward/a/d$1;-><init>(Lcom/anythink/expressad/reward/a/d;Landroid/os/Looper;)V

    iput-object v4, p0, Lcom/anythink/expressad/reward/a/d;->ad:Landroid/os/Handler;

    .line 1110
    iput-boolean v0, p0, Lcom/anythink/expressad/reward/a/d;->o:Z

    .line 1576
    iput-wide v2, p0, Lcom/anythink/expressad/reward/a/d;->ae:J

    .line 1908
    iput-boolean v0, p0, Lcom/anythink/expressad/reward/a/d;->p:Z

    .line 1909
    iput-boolean v0, p0, Lcom/anythink/expressad/reward/a/d;->q:Z

    .line 1910
    iput-boolean v0, p0, Lcom/anythink/expressad/reward/a/d;->r:Z

    .line 1911
    iput-boolean v0, p0, Lcom/anythink/expressad/reward/a/d;->s:Z

    .line 1912
    iput-boolean v0, p0, Lcom/anythink/expressad/reward/a/d;->t:Z

    .line 1915
    iput-object v1, p0, Lcom/anythink/expressad/reward/a/d;->af:Ljava/lang/String;

    .line 1078
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/anythink/expressad/reward/a/d;->v:Landroid/content/Context;

    .line 1079
    iput-object p3, p0, Lcom/anythink/expressad/reward/a/d;->w:Ljava/lang/String;

    .line 1080
    iput-object p2, p0, Lcom/anythink/expressad/reward/a/d;->x:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 1082
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method static synthetic a(Lcom/anythink/expressad/reward/a/d;)Ljava/lang/String;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/anythink/expressad/reward/a/d;->D:Ljava/lang/String;

    return-object p0
.end method

.method private a(Lcom/anythink/expressad/atsignalcommon/windvane/WindVaneWebView;Ljava/lang/String;Lcom/anythink/expressad/foundation/d/c;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lcom/anythink/expressad/videocommon/e/d;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/anythink/expressad/atsignalcommon/windvane/WindVaneWebView;",
            "Ljava/lang/String;",
            "Lcom/anythink/expressad/foundation/d/c;",
            "Ljava/util/List<",
            "Lcom/anythink/expressad/foundation/d/c;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/anythink/expressad/videocommon/e/d;",
            ")V"
        }
    .end annotation

    move-object/from16 v12, p0

    move-object/from16 v0, p3

    move-object/from16 v6, p4

    .line 761
    :try_start_0
    new-instance v13, Lcom/anythink/expressad/videocommon/a$a;

    invoke-direct {v13}, Lcom/anythink/expressad/videocommon/a$a;-><init>()V

    .line 762
    new-instance v14, Lcom/anythink/expressad/atsignalcommon/windvane/WindVaneWebView;

    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/core/common/b/o;->f()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v14, v1}, Lcom/anythink/expressad/atsignalcommon/windvane/WindVaneWebView;-><init>(Landroid/content/Context;)V

    .line 763
    invoke-virtual {v13, v14}, Lcom/anythink/expressad/videocommon/a$a;->a(Lcom/anythink/expressad/atsignalcommon/windvane/WindVaneWebView;)V

    const/4 v1, 0x0

    if-eqz v6, :cond_0

    .line 765
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 766
    new-instance v2, Lcom/anythink/expressad/video/signal/a/j;

    invoke-direct {v2, v1, v0, v6}, Lcom/anythink/expressad/video/signal/a/j;-><init>(Landroid/app/Activity;Lcom/anythink/expressad/foundation/d/c;Ljava/util/List;)V

    goto :goto_0

    .line 768
    :cond_0
    new-instance v2, Lcom/anythink/expressad/video/signal/a/j;

    invoke-direct {v2, v1, v0}, Lcom/anythink/expressad/video/signal/a/j;-><init>(Landroid/app/Activity;Lcom/anythink/expressad/foundation/d/c;)V

    :goto_0
    move-object v15, v2

    .line 770
    iget v1, v12, Lcom/anythink/expressad/reward/a/d;->S:I

    invoke-virtual {v15, v1}, Lcom/anythink/expressad/video/signal/a/j;->a(I)V

    move-object/from16 v11, p6

    .line 771
    invoke-virtual {v15, v11}, Lcom/anythink/expressad/video/signal/a/j;->a(Ljava/lang/String;)V

    move-object/from16 v9, p7

    .line 772
    invoke-virtual {v15, v9}, Lcom/anythink/expressad/video/signal/a/j;->a(Lcom/anythink/expressad/videocommon/e/d;)V

    .line 773
    iget-boolean v1, v12, Lcom/anythink/expressad/reward/a/d;->ab:Z

    invoke-virtual {v15, v1}, Lcom/anythink/expressad/video/signal/a/j;->b(Z)V

    .line 774
    new-instance v10, Lcom/anythink/expressad/reward/a/d$h;

    iget v8, v12, Lcom/anythink/expressad/reward/a/d;->S:I

    move-object v1, v10

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p6

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v16, v8

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 p4, v10

    move/from16 v10, v16

    move-object/from16 v11, p0

    invoke-direct/range {v1 .. v11}, Lcom/anythink/expressad/reward/a/d$h;-><init>(Lcom/anythink/expressad/reward/a/d;Lcom/anythink/expressad/atsignalcommon/windvane/WindVaneWebView;Ljava/lang/String;Lcom/anythink/expressad/foundation/d/c;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lcom/anythink/expressad/videocommon/e/d;ILcom/anythink/expressad/reward/a/d;)V

    .line 775
    new-instance v10, Lcom/anythink/expressad/reward/a/d$j;

    iget-object v9, v12, Lcom/anythink/expressad/reward/a/d;->ad:Landroid/os/Handler;

    move-object v1, v10

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p6

    move-object v5, v13

    move-object/from16 v6, p3

    move-object/from16 v7, p0

    move-object/from16 v8, p4

    invoke-direct/range {v1 .. v9}, Lcom/anythink/expressad/reward/a/d$j;-><init>(Lcom/anythink/expressad/atsignalcommon/windvane/WindVaneWebView;Ljava/lang/String;Ljava/lang/String;Lcom/anythink/expressad/videocommon/a$a;Lcom/anythink/expressad/foundation/d/c;Lcom/anythink/expressad/reward/a/d;Lcom/anythink/expressad/reward/a/d$h;Landroid/os/Handler;)V

    .line 776
    invoke-virtual {v14, v10}, Lcom/anythink/expressad/atsignalcommon/windvane/WindVaneWebView;->setWebViewListener(Lcom/anythink/expressad/atsignalcommon/windvane/e;)V

    .line 777
    invoke-virtual {v14, v15}, Lcom/anythink/expressad/atsignalcommon/windvane/WindVaneWebView;->setObject(Ljava/lang/Object;)V

    move-object/from16 v0, p5

    .line 778
    invoke-virtual {v14, v0}, Lcom/anythink/expressad/atsignalcommon/windvane/WindVaneWebView;->loadUrl(Ljava/lang/String;)V

    .line 779
    iget-object v0, v12, Lcom/anythink/expressad/reward/a/d;->ad:Landroid/os/Handler;

    const-wide/16 v1, 0x1388

    move-object/from16 v3, p4

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    .line 785
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    return-void

    :catch_0
    move-exception v0

    .line 781
    sget-boolean v1, Lcom/anythink/expressad/a;->a:Z

    if-eqz v1, :cond_1

    .line 782
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    return-void
.end method

.method private a(Lcom/anythink/expressad/foundation/d/c;Ljava/lang/String;Ljava/lang/String;Lcom/anythink/expressad/videocommon/e/d;)V
    .locals 4

    .line 3026
    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    .line 3029
    invoke-static {}, Lcom/anythink/expressad/videocommon/b/i;->a()Lcom/anythink/expressad/videocommon/b/i;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/anythink/expressad/videocommon/b/i;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3030
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    const/16 v3, 0x10

    .line 3031
    iput v3, v2, Landroid/os/Message;->what:I

    const/4 v3, 0x0

    aput-object p1, v0, v3

    const/4 p1, 0x1

    aput-object v1, v0, p1

    const/4 p1, 0x2

    aput-object p3, v0, p1

    const/4 p1, 0x3

    aput-object p4, v0, p1

    const/4 p1, 0x4

    aput-object p2, v0, p1

    .line 3037
    iput-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 3038
    iget-object p1, p0, Lcom/anythink/expressad/reward/a/d;->ad:Landroid/os/Handler;

    if-eqz p1, :cond_0

    .line 3039
    invoke-virtual {p1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/anythink/expressad/reward/a/d;Lcom/anythink/expressad/atsignalcommon/windvane/WindVaneWebView;Ljava/lang/String;Lcom/anythink/expressad/foundation/d/c;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lcom/anythink/expressad/videocommon/e/d;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v12, p3

    move-object/from16 v6, p4

    .line 24761
    :try_start_0
    new-instance v13, Lcom/anythink/expressad/videocommon/a$a;

    invoke-direct {v13}, Lcom/anythink/expressad/videocommon/a$a;-><init>()V

    .line 24762
    new-instance v14, Lcom/anythink/expressad/atsignalcommon/windvane/WindVaneWebView;

    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/core/common/b/o;->f()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v14, v1}, Lcom/anythink/expressad/atsignalcommon/windvane/WindVaneWebView;-><init>(Landroid/content/Context;)V

    .line 24763
    invoke-virtual {v13, v14}, Lcom/anythink/expressad/videocommon/a$a;->a(Lcom/anythink/expressad/atsignalcommon/windvane/WindVaneWebView;)V

    const/4 v1, 0x0

    if-eqz v6, :cond_0

    .line 24765
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 24766
    new-instance v2, Lcom/anythink/expressad/video/signal/a/j;

    invoke-direct {v2, v1, v12, v6}, Lcom/anythink/expressad/video/signal/a/j;-><init>(Landroid/app/Activity;Lcom/anythink/expressad/foundation/d/c;Ljava/util/List;)V

    goto :goto_0

    .line 24768
    :cond_0
    new-instance v2, Lcom/anythink/expressad/video/signal/a/j;

    invoke-direct {v2, v1, v12}, Lcom/anythink/expressad/video/signal/a/j;-><init>(Landroid/app/Activity;Lcom/anythink/expressad/foundation/d/c;)V

    :goto_0
    move-object v15, v2

    .line 24770
    iget v1, v0, Lcom/anythink/expressad/reward/a/d;->S:I

    invoke-virtual {v15, v1}, Lcom/anythink/expressad/video/signal/a/j;->a(I)V

    move-object/from16 v11, p6

    .line 24771
    invoke-virtual {v15, v11}, Lcom/anythink/expressad/video/signal/a/j;->a(Ljava/lang/String;)V

    move-object/from16 v9, p7

    .line 24772
    invoke-virtual {v15, v9}, Lcom/anythink/expressad/video/signal/a/j;->a(Lcom/anythink/expressad/videocommon/e/d;)V

    .line 24773
    iget-boolean v1, v0, Lcom/anythink/expressad/reward/a/d;->ab:Z

    invoke-virtual {v15, v1}, Lcom/anythink/expressad/video/signal/a/j;->b(Z)V

    .line 24774
    new-instance v10, Lcom/anythink/expressad/reward/a/d$h;

    iget v8, v0, Lcom/anythink/expressad/reward/a/d;->S:I

    move-object v1, v10

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p6

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v16, v8

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 p4, v10

    move/from16 v10, v16

    move-object/from16 v11, p0

    invoke-direct/range {v1 .. v11}, Lcom/anythink/expressad/reward/a/d$h;-><init>(Lcom/anythink/expressad/reward/a/d;Lcom/anythink/expressad/atsignalcommon/windvane/WindVaneWebView;Ljava/lang/String;Lcom/anythink/expressad/foundation/d/c;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lcom/anythink/expressad/videocommon/e/d;ILcom/anythink/expressad/reward/a/d;)V

    .line 24775
    new-instance v10, Lcom/anythink/expressad/reward/a/d$j;

    iget-object v9, v0, Lcom/anythink/expressad/reward/a/d;->ad:Landroid/os/Handler;

    move-object v1, v10

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p6

    move-object v5, v13

    move-object/from16 v6, p3

    move-object/from16 v7, p0

    move-object/from16 v8, p4

    invoke-direct/range {v1 .. v9}, Lcom/anythink/expressad/reward/a/d$j;-><init>(Lcom/anythink/expressad/atsignalcommon/windvane/WindVaneWebView;Ljava/lang/String;Ljava/lang/String;Lcom/anythink/expressad/videocommon/a$a;Lcom/anythink/expressad/foundation/d/c;Lcom/anythink/expressad/reward/a/d;Lcom/anythink/expressad/reward/a/d$h;Landroid/os/Handler;)V

    .line 24776
    invoke-virtual {v14, v10}, Lcom/anythink/expressad/atsignalcommon/windvane/WindVaneWebView;->setWebViewListener(Lcom/anythink/expressad/atsignalcommon/windvane/e;)V

    .line 24777
    invoke-virtual {v14, v15}, Lcom/anythink/expressad/atsignalcommon/windvane/WindVaneWebView;->setObject(Ljava/lang/Object;)V

    move-object/from16 v1, p5

    .line 24778
    invoke-virtual {v14, v1}, Lcom/anythink/expressad/atsignalcommon/windvane/WindVaneWebView;->loadUrl(Ljava/lang/String;)V

    .line 24779
    iget-object v0, v0, Lcom/anythink/expressad/reward/a/d;->ad:Landroid/os/Handler;

    const-wide/16 v1, 0x1388

    move-object/from16 v3, p4

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    .line 24785
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    return-void

    :catch_0
    move-exception v0

    .line 24781
    sget-boolean v1, Lcom/anythink/expressad/a;->a:Z

    if-eqz v1, :cond_1

    .line 24782
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/anythink/expressad/reward/a/d;Lcom/anythink/expressad/foundation/d/c;Ljava/lang/String;Ljava/lang/String;Lcom/anythink/expressad/videocommon/e/d;)V
    .locals 0

    .line 60
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/anythink/expressad/reward/a/d;->a(Lcom/anythink/expressad/foundation/d/c;Ljava/lang/String;Ljava/lang/String;Lcom/anythink/expressad/videocommon/e/d;)V

    return-void
.end method

.method static synthetic a(Lcom/anythink/expressad/reward/a/d;Ljava/lang/String;)V
    .locals 0

    .line 60
    invoke-direct {p0, p1}, Lcom/anythink/expressad/reward/a/d;->b(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/anythink/expressad/reward/a/d;Ljava/lang/String;Lcom/anythink/expressad/foundation/d/c;Ljava/lang/String;Ljava/lang/String;Lcom/anythink/expressad/videocommon/e/d;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v10, p2

    .line 25728
    :try_start_0
    new-instance v11, Lcom/anythink/expressad/videocommon/a$a;

    invoke-direct {v11}, Lcom/anythink/expressad/videocommon/a$a;-><init>()V

    .line 25729
    new-instance v12, Lcom/anythink/expressad/atsignalcommon/windvane/WindVaneWebView;

    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/core/common/b/o;->f()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v12, v1}, Lcom/anythink/expressad/atsignalcommon/windvane/WindVaneWebView;-><init>(Landroid/content/Context;)V

    .line 25730
    invoke-virtual {v11, v12}, Lcom/anythink/expressad/videocommon/a$a;->a(Lcom/anythink/expressad/atsignalcommon/windvane/WindVaneWebView;)V

    .line 25731
    invoke-static {}, Lcom/anythink/expressad/video/bt/a/c;->a()Lcom/anythink/expressad/video/bt/a/c;

    invoke-static {}, Lcom/anythink/expressad/video/bt/a/c;->b()Ljava/lang/String;

    move-result-object v1

    .line 25732
    invoke-virtual {v11, v1}, Lcom/anythink/expressad/videocommon/a$a;->a(Ljava/lang/String;)V

    .line 25734
    iget-object v2, v0, Lcom/anythink/expressad/reward/a/d;->Z:Lcom/anythink/expressad/foundation/d/d;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 26374
    iget-object v2, v2, Lcom/anythink/expressad/foundation/d/d;->J:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 25734
    iget-object v2, v0, Lcom/anythink/expressad/reward/a/d;->Z:Lcom/anythink/expressad/foundation/d/d;

    .line 27374
    iget-object v2, v2, Lcom/anythink/expressad/foundation/d/d;->J:Ljava/util/ArrayList;

    .line 25734
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 25735
    new-instance v2, Lcom/anythink/expressad/video/signal/a/j;

    iget-object v4, v0, Lcom/anythink/expressad/reward/a/d;->Z:Lcom/anythink/expressad/foundation/d/d;

    .line 28374
    iget-object v4, v4, Lcom/anythink/expressad/foundation/d/d;->J:Ljava/util/ArrayList;

    .line 25735
    invoke-direct {v2, v3, v10, v4}, Lcom/anythink/expressad/video/signal/a/j;-><init>(Landroid/app/Activity;Lcom/anythink/expressad/foundation/d/c;Ljava/util/List;)V

    goto :goto_0

    .line 25737
    :cond_0
    new-instance v2, Lcom/anythink/expressad/video/signal/a/j;

    invoke-direct {v2, v3, v10}, Lcom/anythink/expressad/video/signal/a/j;-><init>(Landroid/app/Activity;Lcom/anythink/expressad/foundation/d/c;)V

    :goto_0
    move-object v13, v2

    .line 25739
    iget v2, v0, Lcom/anythink/expressad/reward/a/d;->S:I

    invoke-virtual {v13, v2}, Lcom/anythink/expressad/video/signal/a/j;->a(I)V

    move-object/from16 v14, p4

    .line 25740
    invoke-virtual {v13, v14}, Lcom/anythink/expressad/video/signal/a/j;->a(Ljava/lang/String;)V

    .line 25741
    invoke-virtual {v13, v1}, Lcom/anythink/expressad/video/signal/a/j;->c(Ljava/lang/String;)V

    move-object/from16 v7, p5

    .line 25742
    invoke-virtual {v13, v7}, Lcom/anythink/expressad/video/signal/a/j;->a(Lcom/anythink/expressad/videocommon/e/d;)V

    .line 25743
    iget-boolean v1, v0, Lcom/anythink/expressad/reward/a/d;->ab:Z

    invoke-virtual {v13, v1}, Lcom/anythink/expressad/video/signal/a/j;->b(Z)V

    .line 25744
    new-instance v15, Lcom/anythink/expressad/reward/a/d$g;

    iget v8, v0, Lcom/anythink/expressad/reward/a/d;->S:I

    move-object v1, v15

    move-object/from16 v2, p0

    move-object/from16 v3, p4

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v9, p0

    invoke-direct/range {v1 .. v9}, Lcom/anythink/expressad/reward/a/d$g;-><init>(Lcom/anythink/expressad/reward/a/d;Ljava/lang/String;Lcom/anythink/expressad/foundation/d/c;Ljava/lang/String;Ljava/lang/String;Lcom/anythink/expressad/videocommon/e/d;ILcom/anythink/expressad/reward/a/d;)V

    .line 25745
    new-instance v9, Lcom/anythink/expressad/reward/a/d$a;

    iget-object v8, v0, Lcom/anythink/expressad/reward/a/d;->ad:Landroid/os/Handler;

    move-object v1, v9

    move-object/from16 v2, p1

    move-object/from16 v3, p4

    move-object v4, v11

    move-object/from16 v5, p2

    move-object/from16 v6, p0

    move-object v7, v15

    invoke-direct/range {v1 .. v8}, Lcom/anythink/expressad/reward/a/d$a;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/anythink/expressad/videocommon/a$a;Lcom/anythink/expressad/foundation/d/c;Lcom/anythink/expressad/reward/a/d;Lcom/anythink/expressad/reward/a/d$g;Landroid/os/Handler;)V

    .line 25746
    invoke-virtual {v12, v9}, Lcom/anythink/expressad/atsignalcommon/windvane/WindVaneWebView;->setWebViewListener(Lcom/anythink/expressad/atsignalcommon/windvane/e;)V

    .line 25747
    invoke-virtual {v12, v13}, Lcom/anythink/expressad/atsignalcommon/windvane/WindVaneWebView;->setObject(Ljava/lang/Object;)V

    move-object/from16 v1, p3

    .line 25748
    invoke-virtual {v12, v1}, Lcom/anythink/expressad/atsignalcommon/windvane/WindVaneWebView;->loadUrl(Ljava/lang/String;)V

    .line 25749
    iget-object v0, v0, Lcom/anythink/expressad/reward/a/d;->ad:Landroid/os/Handler;

    const-wide/16 v1, 0x1388

    invoke-virtual {v0, v15, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    .line 25755
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    return-void

    :catch_0
    move-exception v0

    .line 25751
    sget-boolean v1, Lcom/anythink/expressad/a;->a:Z

    if-eqz v1, :cond_1

    .line 25752
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/anythink/expressad/reward/a/d;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    const/4 v0, 0x5

    .line 28685
    :try_start_0
    iget-object v1, p0, Lcom/anythink/expressad/reward/a/d;->R:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v1, :cond_7

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 28686
    iget-object v1, p0, Lcom/anythink/expressad/reward/a/d;->R:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/anythink/expressad/foundation/d/c;

    if-eqz v2, :cond_0

    .line 28688
    invoke-virtual {v2}, Lcom/anythink/expressad/foundation/d/c;->S()Ljava/lang/String;

    move-result-object v3

    .line 28689
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 28690
    iget-object p2, p0, Lcom/anythink/expressad/reward/a/d;->R:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p2, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 28695
    :cond_1
    invoke-virtual {v2}, Lcom/anythink/expressad/foundation/d/c;->I()Ljava/lang/String;

    move-result-object v3

    .line 28696
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 28697
    iget-object p2, p0, Lcom/anythink/expressad/reward/a/d;->R:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p2, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 28702
    :cond_2
    invoke-virtual {v2}, Lcom/anythink/expressad/foundation/d/c;->M()Lcom/anythink/expressad/foundation/d/c$c;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 28704
    invoke-virtual {v3}, Lcom/anythink/expressad/foundation/d/c$c;->f()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 28706
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/anythink/expressad/foundation/d/c$c$a;

    if-eqz v5, :cond_3

    .line 28707
    iget-object v6, v5, Lcom/anythink/expressad/foundation/d/c$c$a;->b:Ljava/util/List;

    if-eqz v6, :cond_3

    .line 28708
    iget-object v5, v5, Lcom/anythink/expressad/foundation/d/c$c$a;->b:Ljava/util/List;

    invoke-interface {v5, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 28709
    iget-object v4, p0, Lcom/anythink/expressad/reward/a/d;->R:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 28717
    :cond_4
    invoke-virtual {v3}, Lcom/anythink/expressad/foundation/d/c$c;->e()Ljava/lang/String;

    move-result-object v3

    .line 28718
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 28719
    iget-object p2, p0, Lcom/anythink/expressad/reward/a/d;->R:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p2, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 28727
    :cond_5
    :goto_0
    iget-object p2, p0, Lcom/anythink/expressad/reward/a/d;->G:Lcom/anythink/expressad/reward/a/b;

    if-eqz p2, :cond_9

    iget-object p2, p0, Lcom/anythink/expressad/reward/a/d;->R:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz p2, :cond_9

    invoke-virtual {p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result p2

    if-nez p2, :cond_9

    .line 28728
    iget-object p2, p0, Lcom/anythink/expressad/reward/a/d;->ad:Landroid/os/Handler;

    if-eqz p2, :cond_6

    .line 28729
    invoke-virtual {p2, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 28732
    :cond_6
    invoke-direct {p0, p1}, Lcom/anythink/expressad/reward/a/d;->b(Ljava/lang/String;)V

    .line 28733
    iget-object p2, p0, Lcom/anythink/expressad/reward/a/d;->G:Lcom/anythink/expressad/reward/a/b;

    invoke-interface {p2, p1}, Lcom/anythink/expressad/reward/a/b;->a(Ljava/lang/String;)V

    return-void

    .line 28737
    :cond_7
    iget-object p2, p0, Lcom/anythink/expressad/reward/a/d;->G:Lcom/anythink/expressad/reward/a/b;

    if-eqz p2, :cond_9

    .line 28738
    iget-object p2, p0, Lcom/anythink/expressad/reward/a/d;->ad:Landroid/os/Handler;

    if-eqz p2, :cond_8

    .line 28739
    invoke-virtual {p2, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 28742
    :cond_8
    invoke-direct {p0, p1}, Lcom/anythink/expressad/reward/a/d;->b(Ljava/lang/String;)V

    .line 28743
    iget-object p2, p0, Lcom/anythink/expressad/reward/a/d;->G:Lcom/anythink/expressad/reward/a/b;

    invoke-interface {p2, p1}, Lcom/anythink/expressad/reward/a/b;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_9
    return-void

    :catchall_0
    move-exception p2

    .line 28748
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 28750
    :try_start_1
    iget-object p2, p0, Lcom/anythink/expressad/reward/a/d;->G:Lcom/anythink/expressad/reward/a/b;

    if-eqz p2, :cond_b

    .line 28751
    iget-object p2, p0, Lcom/anythink/expressad/reward/a/d;->ad:Landroid/os/Handler;

    if-eqz p2, :cond_a

    .line 28752
    invoke-virtual {p2, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 28755
    :cond_a
    invoke-direct {p0, p1}, Lcom/anythink/expressad/reward/a/d;->b(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_b
    return-void

    :catchall_1
    move-exception p0

    .line 28758
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/anythink/expressad/reward/a/d;Ljava/util/List;)V
    .locals 3

    .line 29736
    iget-object v0, p0, Lcom/anythink/expressad/reward/a/d;->v:Landroid/content/Context;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 29744
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 29745
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/anythink/expressad/foundation/d/c;

    if-eqz v1, :cond_1

    .line 29748
    iget-object v2, p0, Lcom/anythink/expressad/reward/a/d;->v:Landroid/content/Context;

    invoke-virtual {v1}, Lcom/anythink/expressad/foundation/d/c;->ba()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/anythink/expressad/foundation/h/t;->a(Landroid/content/Context;Ljava/lang/String;)Z

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method private a(Ljava/lang/Runnable;)V
    .locals 0

    .line 1905
    iput-object p1, p0, Lcom/anythink/expressad/reward/a/d;->H:Ljava/lang/Runnable;

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 0

    .line 186
    iput-object p1, p0, Lcom/anythink/expressad/reward/a/d;->V:Ljava/lang/String;

    return-void
.end method

.method private a(Ljava/lang/String;Lcom/anythink/expressad/foundation/d/c;Ljava/lang/String;Ljava/lang/String;Lcom/anythink/expressad/videocommon/e/d;)V
    .locals 16

    move-object/from16 v10, p0

    move-object/from16 v0, p2

    .line 728
    :try_start_0
    new-instance v11, Lcom/anythink/expressad/videocommon/a$a;

    invoke-direct {v11}, Lcom/anythink/expressad/videocommon/a$a;-><init>()V

    .line 729
    new-instance v12, Lcom/anythink/expressad/atsignalcommon/windvane/WindVaneWebView;

    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/core/common/b/o;->f()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v12, v1}, Lcom/anythink/expressad/atsignalcommon/windvane/WindVaneWebView;-><init>(Landroid/content/Context;)V

    .line 730
    invoke-virtual {v11, v12}, Lcom/anythink/expressad/videocommon/a$a;->a(Lcom/anythink/expressad/atsignalcommon/windvane/WindVaneWebView;)V

    .line 731
    invoke-static {}, Lcom/anythink/expressad/video/bt/a/c;->a()Lcom/anythink/expressad/video/bt/a/c;

    invoke-static {}, Lcom/anythink/expressad/video/bt/a/c;->b()Ljava/lang/String;

    move-result-object v1

    .line 732
    invoke-virtual {v11, v1}, Lcom/anythink/expressad/videocommon/a$a;->a(Ljava/lang/String;)V

    .line 734
    iget-object v2, v10, Lcom/anythink/expressad/reward/a/d;->Z:Lcom/anythink/expressad/foundation/d/d;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 4374
    iget-object v2, v2, Lcom/anythink/expressad/foundation/d/d;->J:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 734
    iget-object v2, v10, Lcom/anythink/expressad/reward/a/d;->Z:Lcom/anythink/expressad/foundation/d/d;

    .line 5374
    iget-object v2, v2, Lcom/anythink/expressad/foundation/d/d;->J:Ljava/util/ArrayList;

    .line 734
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 735
    new-instance v2, Lcom/anythink/expressad/video/signal/a/j;

    iget-object v4, v10, Lcom/anythink/expressad/reward/a/d;->Z:Lcom/anythink/expressad/foundation/d/d;

    .line 6374
    iget-object v4, v4, Lcom/anythink/expressad/foundation/d/d;->J:Ljava/util/ArrayList;

    .line 735
    invoke-direct {v2, v3, v0, v4}, Lcom/anythink/expressad/video/signal/a/j;-><init>(Landroid/app/Activity;Lcom/anythink/expressad/foundation/d/c;Ljava/util/List;)V

    goto :goto_0

    .line 737
    :cond_0
    new-instance v2, Lcom/anythink/expressad/video/signal/a/j;

    invoke-direct {v2, v3, v0}, Lcom/anythink/expressad/video/signal/a/j;-><init>(Landroid/app/Activity;Lcom/anythink/expressad/foundation/d/c;)V

    :goto_0
    move-object v13, v2

    .line 739
    iget v2, v10, Lcom/anythink/expressad/reward/a/d;->S:I

    invoke-virtual {v13, v2}, Lcom/anythink/expressad/video/signal/a/j;->a(I)V

    move-object/from16 v14, p4

    .line 740
    invoke-virtual {v13, v14}, Lcom/anythink/expressad/video/signal/a/j;->a(Ljava/lang/String;)V

    .line 741
    invoke-virtual {v13, v1}, Lcom/anythink/expressad/video/signal/a/j;->c(Ljava/lang/String;)V

    move-object/from16 v7, p5

    .line 742
    invoke-virtual {v13, v7}, Lcom/anythink/expressad/video/signal/a/j;->a(Lcom/anythink/expressad/videocommon/e/d;)V

    .line 743
    iget-boolean v1, v10, Lcom/anythink/expressad/reward/a/d;->ab:Z

    invoke-virtual {v13, v1}, Lcom/anythink/expressad/video/signal/a/j;->b(Z)V

    .line 744
    new-instance v15, Lcom/anythink/expressad/reward/a/d$g;

    iget v8, v10, Lcom/anythink/expressad/reward/a/d;->S:I

    move-object v1, v15

    move-object/from16 v2, p0

    move-object/from16 v3, p4

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v9, p0

    invoke-direct/range {v1 .. v9}, Lcom/anythink/expressad/reward/a/d$g;-><init>(Lcom/anythink/expressad/reward/a/d;Ljava/lang/String;Lcom/anythink/expressad/foundation/d/c;Ljava/lang/String;Ljava/lang/String;Lcom/anythink/expressad/videocommon/e/d;ILcom/anythink/expressad/reward/a/d;)V

    .line 745
    new-instance v9, Lcom/anythink/expressad/reward/a/d$a;

    iget-object v8, v10, Lcom/anythink/expressad/reward/a/d;->ad:Landroid/os/Handler;

    move-object v1, v9

    move-object/from16 v2, p1

    move-object/from16 v3, p4

    move-object v4, v11

    move-object/from16 v5, p2

    move-object/from16 v6, p0

    move-object v7, v15

    invoke-direct/range {v1 .. v8}, Lcom/anythink/expressad/reward/a/d$a;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/anythink/expressad/videocommon/a$a;Lcom/anythink/expressad/foundation/d/c;Lcom/anythink/expressad/reward/a/d;Lcom/anythink/expressad/reward/a/d$g;Landroid/os/Handler;)V

    .line 746
    invoke-virtual {v12, v9}, Lcom/anythink/expressad/atsignalcommon/windvane/WindVaneWebView;->setWebViewListener(Lcom/anythink/expressad/atsignalcommon/windvane/e;)V

    .line 747
    invoke-virtual {v12, v13}, Lcom/anythink/expressad/atsignalcommon/windvane/WindVaneWebView;->setObject(Ljava/lang/Object;)V

    move-object/from16 v0, p3

    .line 748
    invoke-virtual {v12, v0}, Lcom/anythink/expressad/atsignalcommon/windvane/WindVaneWebView;->loadUrl(Ljava/lang/String;)V

    .line 749
    iget-object v0, v10, Lcom/anythink/expressad/reward/a/d;->ad:Landroid/os/Handler;

    const-wide/16 v1, 0x1388

    invoke-virtual {v0, v15, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    .line 755
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    return-void

    :catch_0
    move-exception v0

    .line 751
    sget-boolean v1, Lcom/anythink/expressad/a;->a:Z

    if-eqz v1, :cond_1

    .line 752
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    const/4 v0, 0x5

    .line 2685
    :try_start_0
    iget-object v1, p0, Lcom/anythink/expressad/reward/a/d;->R:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v1, :cond_7

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 2686
    iget-object v1, p0, Lcom/anythink/expressad/reward/a/d;->R:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/anythink/expressad/foundation/d/c;

    if-eqz v2, :cond_0

    .line 2688
    invoke-virtual {v2}, Lcom/anythink/expressad/foundation/d/c;->S()Ljava/lang/String;

    move-result-object v3

    .line 2689
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2690
    iget-object p2, p0, Lcom/anythink/expressad/reward/a/d;->R:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p2, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2695
    :cond_1
    invoke-virtual {v2}, Lcom/anythink/expressad/foundation/d/c;->I()Ljava/lang/String;

    move-result-object v3

    .line 2696
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2697
    iget-object p2, p0, Lcom/anythink/expressad/reward/a/d;->R:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p2, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2702
    :cond_2
    invoke-virtual {v2}, Lcom/anythink/expressad/foundation/d/c;->M()Lcom/anythink/expressad/foundation/d/c$c;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2704
    invoke-virtual {v3}, Lcom/anythink/expressad/foundation/d/c$c;->f()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 2706
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/anythink/expressad/foundation/d/c$c$a;

    if-eqz v5, :cond_3

    .line 2707
    iget-object v6, v5, Lcom/anythink/expressad/foundation/d/c$c$a;->b:Ljava/util/List;

    if-eqz v6, :cond_3

    .line 2708
    iget-object v5, v5, Lcom/anythink/expressad/foundation/d/c$c$a;->b:Ljava/util/List;

    invoke-interface {v5, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 2709
    iget-object v4, p0, Lcom/anythink/expressad/reward/a/d;->R:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 2717
    :cond_4
    invoke-virtual {v3}, Lcom/anythink/expressad/foundation/d/c$c;->e()Ljava/lang/String;

    move-result-object v3

    .line 2718
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2719
    iget-object p2, p0, Lcom/anythink/expressad/reward/a/d;->R:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p2, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 2727
    :cond_5
    :goto_0
    iget-object p2, p0, Lcom/anythink/expressad/reward/a/d;->G:Lcom/anythink/expressad/reward/a/b;

    if-eqz p2, :cond_9

    iget-object p2, p0, Lcom/anythink/expressad/reward/a/d;->R:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz p2, :cond_9

    invoke-virtual {p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result p2

    if-nez p2, :cond_9

    .line 2728
    iget-object p2, p0, Lcom/anythink/expressad/reward/a/d;->ad:Landroid/os/Handler;

    if-eqz p2, :cond_6

    .line 2729
    invoke-virtual {p2, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 2732
    :cond_6
    invoke-direct {p0, p1}, Lcom/anythink/expressad/reward/a/d;->b(Ljava/lang/String;)V

    .line 2733
    iget-object p2, p0, Lcom/anythink/expressad/reward/a/d;->G:Lcom/anythink/expressad/reward/a/b;

    invoke-interface {p2, p1}, Lcom/anythink/expressad/reward/a/b;->a(Ljava/lang/String;)V

    return-void

    .line 2737
    :cond_7
    iget-object p2, p0, Lcom/anythink/expressad/reward/a/d;->G:Lcom/anythink/expressad/reward/a/b;

    if-eqz p2, :cond_9

    .line 2738
    iget-object p2, p0, Lcom/anythink/expressad/reward/a/d;->ad:Landroid/os/Handler;

    if-eqz p2, :cond_8

    .line 2739
    invoke-virtual {p2, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 2742
    :cond_8
    invoke-direct {p0, p1}, Lcom/anythink/expressad/reward/a/d;->b(Ljava/lang/String;)V

    .line 2743
    iget-object p2, p0, Lcom/anythink/expressad/reward/a/d;->G:Lcom/anythink/expressad/reward/a/b;

    invoke-interface {p2, p1}, Lcom/anythink/expressad/reward/a/b;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_9
    return-void

    :catchall_0
    move-exception p2

    .line 2748
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 2750
    :try_start_1
    iget-object p2, p0, Lcom/anythink/expressad/reward/a/d;->G:Lcom/anythink/expressad/reward/a/b;

    if-eqz p2, :cond_b

    .line 2751
    iget-object p2, p0, Lcom/anythink/expressad/reward/a/d;->ad:Landroid/os/Handler;

    if-eqz p2, :cond_a

    .line 2752
    invoke-virtual {p2, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 2755
    :cond_a
    invoke-direct {p0, p1}, Lcom/anythink/expressad/reward/a/d;->b(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_b
    return-void

    :catchall_1
    move-exception p1

    .line 2758
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Ljava/lang/String;Ljava/util/List;)V
    .locals 4

    if-eqz p1, :cond_1

    .line 24610
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 24611
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mark cache data: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 24613
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anythink/expressad/foundation/d/c;

    .line 24615
    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/d/c;->M()Lcom/anythink/expressad/foundation/d/c$c;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/d/c;->M()Lcom/anythink/expressad/foundation/d/c$c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/expressad/foundation/d/c$c;->e()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 24616
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/d/c;->aZ()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/d/c;->Z()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/d/c;->M()Lcom/anythink/expressad/foundation/d/c$c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/anythink/expressad/foundation/d/c$c;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/anythink/expressad/videocommon/a;->b(Ljava/lang/String;)V

    .line 24617
    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/d/c;->w()I

    move-result v1

    invoke-static {v1, v0}, Lcom/anythink/expressad/videocommon/a;->b(ILcom/anythink/expressad/foundation/d/c;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private a(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/anythink/expressad/foundation/d/c;",
            ">;)V"
        }
    .end annotation

    .line 1736
    iget-object v0, p0, Lcom/anythink/expressad/reward/a/d;->v:Landroid/content/Context;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 1744
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 1745
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/anythink/expressad/foundation/d/c;

    if-eqz v1, :cond_1

    .line 1748
    iget-object v2, p0, Lcom/anythink/expressad/reward/a/d;->v:Landroid/content/Context;

    invoke-virtual {v1}, Lcom/anythink/expressad/foundation/d/c;->ba()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/anythink/expressad/foundation/h/t;->a(Landroid/content/Context;Ljava/lang/String;)Z

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method private a(Ljava/util/List;Lcom/anythink/expressad/videocommon/e/d;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/anythink/expressad/foundation/d/c;",
            ">;",
            "Lcom/anythink/expressad/videocommon/e/d;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_4

    .line 2988
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anythink/expressad/foundation/d/c;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    .line 2989
    :goto_1
    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/d/c;->M()Lcom/anythink/expressad/foundation/d/c$c;

    move-result-object v4

    if-eqz v4, :cond_2

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    and-int/2addr v1, v3

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/d/c;->M()Lcom/anythink/expressad/foundation/d/c$c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/expressad/foundation/d/c$c;->e()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 2990
    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/d/c;->M()Lcom/anythink/expressad/foundation/d/c$c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/expressad/foundation/d/c$c;->e()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/anythink/expressad/reward/a/d;->w:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2, p2}, Lcom/anythink/expressad/reward/a/d;->a(Lcom/anythink/expressad/foundation/d/c;Ljava/lang/String;Ljava/lang/String;Lcom/anythink/expressad/videocommon/e/d;)V

    :cond_3
    if-eqz v0, :cond_0

    .line 2993
    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/d/c;->ar()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2994
    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/d/c;->ar()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/anythink/expressad/reward/a/d;->w:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2, p2}, Lcom/anythink/expressad/reward/a/d;->a(Lcom/anythink/expressad/foundation/d/c;Ljava/lang/String;Ljava/lang/String;Lcom/anythink/expressad/videocommon/e/d;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3013
    sget-boolean p2, Lcom/anythink/expressad/a;->a:Z

    if-eqz p2, :cond_4

    .line 3014
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4
    return-void
.end method

.method private static a(Lcom/anythink/expressad/foundation/d/c;)Z
    .locals 1

    .line 1863
    :try_start_0
    invoke-static {}, Lcom/anythink/expressad/videocommon/a/a;->a()Lcom/anythink/expressad/videocommon/a/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1864
    invoke-static {}, Lcom/anythink/expressad/videocommon/a/a;->a()Lcom/anythink/expressad/videocommon/a/a;

    invoke-static {p0}, Lcom/anythink/expressad/videocommon/a/a;->a(Lcom/anythink/expressad/foundation/d/c;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 1867
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method static synthetic a(Lcom/anythink/expressad/reward/a/d;Ljava/util/List;ZI)Z
    .locals 0

    .line 60
    invoke-direct {p0, p1, p2, p3}, Lcom/anythink/expressad/reward/a/d;->b(Ljava/util/List;ZI)Z

    move-result p0

    return p0
.end method

.method private static a(Ljava/util/List;Ljava/lang/String;ZI)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/anythink/expressad/foundation/d/c;",
            ">;",
            "Ljava/lang/String;",
            "ZI)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_7

    .line 1174
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_7

    .line 1175
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/anythink/expressad/foundation/d/c;

    .line 1176
    invoke-static {}, Lcom/anythink/expressad/videocommon/b/e;->a()Lcom/anythink/expressad/videocommon/b/e;

    move-result-object v2

    const/4 v4, 0x0

    .line 1177
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v5

    move-object v3, p1

    move v6, p2

    move v7, p3

    move-object v8, p0

    .line 1176
    invoke-virtual/range {v2 .. v8}, Lcom/anythink/expressad/videocommon/b/e;->b(Ljava/lang/String;ZIZILjava/util/List;)Z

    move-result p0

    if-eqz p0, :cond_7

    const-string p0, "_"

    const/4 p3, 0x1

    if-eqz p2, :cond_3

    .line 1180
    invoke-virtual {v1}, Lcom/anythink/expressad/foundation/d/c;->j()Z

    move-result p2

    if-eqz p2, :cond_0

    return p3

    .line 1183
    :cond_0
    invoke-virtual {v1}, Lcom/anythink/expressad/foundation/d/c;->aB()Ljava/util/ArrayList;

    move-result-object p2

    if-eqz p2, :cond_2

    invoke-virtual {v1}, Lcom/anythink/expressad/foundation/d/c;->aB()Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_2

    .line 1184
    invoke-virtual {v1}, Lcom/anythink/expressad/foundation/d/c;->aB()Ljava/util/ArrayList;

    move-result-object p2

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    return p3

    .line 1190
    :cond_1
    invoke-virtual {v1}, Lcom/anythink/expressad/foundation/d/c;->ar()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1}, Lcom/anythink/expressad/foundation/d/c;->I()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 1191
    invoke-virtual {v1}, Lcom/anythink/expressad/foundation/d/c;->aB()Ljava/util/ArrayList;

    move-result-object p2

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    return p3

    .line 1198
    :cond_2
    invoke-static {}, Lcom/anythink/expressad/videocommon/b/l;->a()Lcom/anythink/expressad/videocommon/b/l;

    move-result-object p2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/anythink/expressad/foundation/d/c;->Z()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/anythink/expressad/foundation/d/c;->ar()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/anythink/expressad/videocommon/b/l;->d(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_7

    return p3

    :cond_3
    if-eqz v1, :cond_4

    .line 1203
    invoke-virtual {v1}, Lcom/anythink/expressad/foundation/d/c;->j()Z

    move-result p2

    if-eqz p2, :cond_4

    return p3

    .line 1207
    :cond_4
    invoke-virtual {v1}, Lcom/anythink/expressad/foundation/d/c;->aB()Ljava/util/ArrayList;

    move-result-object p2

    if-eqz p2, :cond_5

    invoke-virtual {v1}, Lcom/anythink/expressad/foundation/d/c;->aB()Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_5

    .line 1208
    invoke-virtual {v1}, Lcom/anythink/expressad/foundation/d/c;->aB()Ljava/util/ArrayList;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    return p3

    .line 1214
    :cond_5
    invoke-virtual {v1}, Lcom/anythink/expressad/foundation/d/c;->M()Lcom/anythink/expressad/foundation/d/c$c;

    move-result-object p2

    if-eqz p2, :cond_6

    invoke-virtual {v1}, Lcom/anythink/expressad/foundation/d/c;->M()Lcom/anythink/expressad/foundation/d/c$c;

    move-result-object p2

    invoke-virtual {p2}, Lcom/anythink/expressad/foundation/d/c$c;->e()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_6

    .line 1215
    invoke-static {}, Lcom/anythink/expressad/videocommon/b/l;->a()Lcom/anythink/expressad/videocommon/b/l;

    move-result-object p2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/anythink/expressad/foundation/d/c;->Z()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/anythink/expressad/foundation/d/c;->M()Lcom/anythink/expressad/foundation/d/c$c;

    move-result-object p0

    invoke-virtual {p0}, Lcom/anythink/expressad/foundation/d/c$c;->e()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/anythink/expressad/videocommon/b/l;->d(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_7

    :cond_6
    return p3

    :cond_7
    return v0
.end method

.method static synthetic b(Lcom/anythink/expressad/reward/a/d;)Ljava/lang/String;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/anythink/expressad/reward/a/d;->E:Ljava/lang/String;

    return-object p0
.end method

.method private b(Lcom/anythink/expressad/foundation/d/c;Ljava/lang/String;Ljava/lang/String;Lcom/anythink/expressad/videocommon/e/d;)V
    .locals 4

    .line 3049
    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "zip"

    .line 3052
    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/anythink/expressad/reward/a/d;->ad:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 3054
    invoke-static {}, Lcom/anythink/expressad/videocommon/b/i;->a()Lcom/anythink/expressad/videocommon/b/i;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/anythink/expressad/videocommon/b/i;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3056
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    const/16 v3, 0x11

    .line 3057
    iput v3, v2, Landroid/os/Message;->what:I

    const/4 v3, 0x0

    aput-object p1, v0, v3

    const/4 p1, 0x1

    aput-object v1, v0, p1

    const/4 p1, 0x2

    aput-object p3, v0, p1

    const/4 p1, 0x3

    aput-object p4, v0, p1

    const/4 p1, 0x4

    aput-object p2, v0, p1

    .line 3063
    iput-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 3064
    iget-object p1, p0, Lcom/anythink/expressad/reward/a/d;->ad:Landroid/os/Handler;

    invoke-virtual {p1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method private b(Lcom/anythink/expressad/foundation/d/d;)V
    .locals 2

    .line 1583
    :try_start_0
    iput-object p1, p0, Lcom/anythink/expressad/reward/a/d;->Z:Lcom/anythink/expressad/foundation/d/d;

    .line 1585
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "V3 data just requested back,requestId "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/anythink/expressad/reward/a/d;->Z:Lcom/anythink/expressad/foundation/d/d;

    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/d/d;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1586
    iget-object p1, p0, Lcom/anythink/expressad/reward/a/d;->Z:Lcom/anythink/expressad/foundation/d/d;

    if-eqz p1, :cond_0

    .line 12374
    iget-object p1, p1, Lcom/anythink/expressad/foundation/d/d;->J:Ljava/util/ArrayList;

    if-eqz p1, :cond_0

    .line 1586
    iget-object p1, p0, Lcom/anythink/expressad/reward/a/d;->Z:Lcom/anythink/expressad/foundation/d/d;

    .line 13374
    iget-object p1, p1, Lcom/anythink/expressad/foundation/d/d;->J:Ljava/util/ArrayList;

    .line 1586
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 1593
    :cond_0
    iget-object p1, p0, Lcom/anythink/expressad/reward/a/d;->Z:Lcom/anythink/expressad/foundation/d/d;

    invoke-direct {p0, p1}, Lcom/anythink/expressad/reward/a/d;->c(Lcom/anythink/expressad/foundation/d/d;)V

    .line 1594
    iget-object p1, p0, Lcom/anythink/expressad/reward/a/d;->Z:Lcom/anythink/expressad/foundation/d/d;

    invoke-virtual {p1}, Lcom/anythink/expressad/foundation/d/d;->f()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/anythink/expressad/reward/a/d;->m:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 1596
    sget-boolean v0, Lcom/anythink/expressad/a;->a:Z

    if-eqz v0, :cond_1

    .line 1597
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1600
    :cond_1
    iget-object p1, p0, Lcom/anythink/expressad/reward/a/d;->aa:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz p1, :cond_2

    .line 1601
    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 1603
    :cond_2
    iget-object p1, p0, Lcom/anythink/expressad/reward/a/d;->ag:Ljava/util/List;

    if-eqz p1, :cond_3

    .line 1604
    invoke-interface {p1}, Ljava/util/List;->clear()V

    :cond_3
    const/4 p1, 0x0

    .line 1606
    iput-boolean p1, p0, Lcom/anythink/expressad/reward/a/d;->p:Z

    .line 1607
    iput-boolean p1, p0, Lcom/anythink/expressad/reward/a/d;->q:Z

    .line 1608
    iget-object v0, p0, Lcom/anythink/expressad/reward/a/d;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 1609
    :try_start_1
    iget-boolean v1, p0, Lcom/anythink/expressad/reward/a/d;->r:Z

    if-eqz v1, :cond_4

    .line 1610
    iput-boolean p1, p0, Lcom/anythink/expressad/reward/a/d;->r:Z

    .line 1612
    :cond_4
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1613
    iput-boolean p1, p0, Lcom/anythink/expressad/reward/a/d;->t:Z

    .line 1614
    iput-boolean p1, p0, Lcom/anythink/expressad/reward/a/d;->s:Z

    const-string p1, "exception after load success"

    .line 1620
    invoke-direct {p0, p1}, Lcom/anythink/expressad/reward/a/d;->b(Ljava/lang/String;)V

    .line 1621
    invoke-direct {p0}, Lcom/anythink/expressad/reward/a/d;->r()V

    return-void

    :catchall_0
    move-exception p1

    .line 1612
    monitor-exit v0

    throw p1
.end method

.method private b(Ljava/lang/String;)V
    .locals 2

    .line 1638
    iget-object v0, p0, Lcom/anythink/expressad/reward/a/d;->ad:Landroid/os/Handler;

    if-eqz v0, :cond_2

    .line 1639
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x4

    if-eqz v0, :cond_0

    .line 1640
    iget-object p1, p0, Lcom/anythink/expressad/reward/a/d;->ad:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    .line 1642
    :cond_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 1643
    iput v1, v0, Landroid/os/Message;->what:I

    .line 1644
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    const-string v1, "exception"

    .line 1645
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1646
    iget-object p1, p0, Lcom/anythink/expressad/reward/a/d;->ad:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    return-void

    .line 1648
    :cond_1
    iget-object p1, p0, Lcom/anythink/expressad/reward/a/d;->ad:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_2
    return-void
.end method

.method private static b(Ljava/lang/String;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/anythink/expressad/foundation/d/c;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 2610
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 2611
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mark cache data: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2613
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anythink/expressad/foundation/d/c;

    .line 2615
    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/d/c;->M()Lcom/anythink/expressad/foundation/d/c$c;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/d/c;->M()Lcom/anythink/expressad/foundation/d/c$c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/expressad/foundation/d/c$c;->e()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2616
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/d/c;->aZ()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/d/c;->Z()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/d/c;->M()Lcom/anythink/expressad/foundation/d/c$c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/anythink/expressad/foundation/d/c$c;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/anythink/expressad/videocommon/a;->b(Ljava/lang/String;)V

    .line 2617
    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/d/c;->w()I

    move-result v1

    invoke-static {v1, v0}, Lcom/anythink/expressad/videocommon/a;->b(ILcom/anythink/expressad/foundation/d/c;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private b(Ljava/util/List;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/anythink/expressad/foundation/d/c;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_5

    .line 2814
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 2815
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anythink/expressad/foundation/d/c;

    if-eqz v0, :cond_0

    .line 18781
    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/d/c;->P()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 18782
    invoke-static {}, Lcom/anythink/expressad/videocommon/b/i;->a()Lcom/anythink/expressad/videocommon/b/i;

    move-result-object v1

    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/d/c;->P()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/anythink/expressad/videocommon/b/i;->b(Ljava/lang/String;)V

    .line 18784
    :cond_1
    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/d/c;->M()Lcom/anythink/expressad/foundation/d/c$c;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 18785
    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/d/c;->M()Lcom/anythink/expressad/foundation/d/c$c;

    move-result-object v8

    .line 18786
    invoke-virtual {v8}, Lcom/anythink/expressad/foundation/d/c$c;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v9, ".zip"

    if-nez v1, :cond_3

    .line 18787
    invoke-virtual {v8}, Lcom/anythink/expressad/foundation/d/c$c;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 18789
    new-instance v10, Lcom/anythink/expressad/reward/a/d$i;

    iget-object v4, p0, Lcom/anythink/expressad/reward/a/d;->w:Ljava/lang/String;

    const/16 v5, 0x139

    iget-object v6, p0, Lcom/anythink/expressad/reward/a/d;->I:Lcom/anythink/expressad/videocommon/e/d;

    const/4 v7, 0x0

    move-object v1, v10

    move-object v2, v0

    move-object v3, p0

    invoke-direct/range {v1 .. v7}, Lcom/anythink/expressad/reward/a/d$i;-><init>(Lcom/anythink/expressad/foundation/d/c;Lcom/anythink/expressad/reward/a/d;Ljava/lang/String;ILcom/anythink/expressad/videocommon/e/d;Z)V

    .line 18790
    invoke-static {}, Lcom/anythink/expressad/videocommon/b/i;->a()Lcom/anythink/expressad/videocommon/b/i;

    move-result-object v1

    invoke-virtual {v8}, Lcom/anythink/expressad/foundation/d/c$c;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v10}, Lcom/anythink/expressad/videocommon/b/i;->b(Ljava/lang/String;Lcom/anythink/expressad/videocommon/b/i$a;)V

    goto :goto_1

    .line 18793
    :cond_2
    invoke-static {}, Lcom/anythink/expressad/videocommon/b/i;->a()Lcom/anythink/expressad/videocommon/b/i;

    move-result-object v1

    invoke-virtual {v8}, Lcom/anythink/expressad/foundation/d/c$c;->d()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 19257
    invoke-virtual {v1, v2, v3}, Lcom/anythink/expressad/videocommon/b/i;->b(Ljava/lang/String;Lcom/anythink/expressad/videocommon/b/i$a;)V

    .line 18796
    :cond_3
    :goto_1
    invoke-virtual {v8}, Lcom/anythink/expressad/foundation/d/c$c;->e()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v8}, Lcom/anythink/expressad/foundation/d/c$c;->e()Ljava/lang/String;

    move-result-object v1

    const-string v2, "cmpt=1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 18797
    invoke-virtual {v8}, Lcom/anythink/expressad/foundation/d/c$c;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 18799
    new-instance v9, Lcom/anythink/expressad/reward/a/d$i;

    iget-object v4, p0, Lcom/anythink/expressad/reward/a/d;->w:Ljava/lang/String;

    const/16 v5, 0x35b

    iget-object v6, p0, Lcom/anythink/expressad/reward/a/d;->I:Lcom/anythink/expressad/videocommon/e/d;

    const/4 v7, 0x0

    move-object v1, v9

    move-object v2, v0

    move-object v3, p0

    invoke-direct/range {v1 .. v7}, Lcom/anythink/expressad/reward/a/d$i;-><init>(Lcom/anythink/expressad/foundation/d/c;Lcom/anythink/expressad/reward/a/d;Ljava/lang/String;ILcom/anythink/expressad/videocommon/e/d;Z)V

    .line 18800
    invoke-static {}, Lcom/anythink/expressad/videocommon/b/i;->a()Lcom/anythink/expressad/videocommon/b/i;

    move-result-object v0

    invoke-virtual {v8}, Lcom/anythink/expressad/foundation/d/c$c;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v9}, Lcom/anythink/expressad/videocommon/b/i;->b(Ljava/lang/String;Lcom/anythink/expressad/videocommon/b/i$a;)V

    goto/16 :goto_0

    .line 18803
    :cond_4
    new-instance v1, Lcom/anythink/expressad/reward/a/d$d;

    iget-object v2, p0, Lcom/anythink/expressad/reward/a/d;->w:Ljava/lang/String;

    iget-object v3, p0, Lcom/anythink/expressad/reward/a/d;->I:Lcom/anythink/expressad/videocommon/e/d;

    invoke-direct {v1, p0, v0, v2, v3}, Lcom/anythink/expressad/reward/a/d$d;-><init>(Lcom/anythink/expressad/reward/a/d;Lcom/anythink/expressad/foundation/d/c;Ljava/lang/String;Lcom/anythink/expressad/videocommon/e/d;)V

    .line 18804
    invoke-static {}, Lcom/anythink/expressad/videocommon/b/i;->a()Lcom/anythink/expressad/videocommon/b/i;

    move-result-object v0

    invoke-virtual {v8}, Lcom/anythink/expressad/foundation/d/c$c;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/anythink/expressad/videocommon/b/i;->b(Ljava/lang/String;Lcom/anythink/expressad/videocommon/b/i$a;)V

    goto/16 :goto_0

    :cond_5
    return-void
.end method

.method private b(Lcom/anythink/expressad/foundation/d/c;)Z
    .locals 4

    .line 2519
    iget-object v0, p0, Lcom/anythink/expressad/reward/a/d;->aa:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 2520
    iget-object v0, p0, Lcom/anythink/expressad/reward/a/d;->aa:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/anythink/expressad/foundation/d/c;

    .line 2521
    invoke-virtual {v2}, Lcom/anythink/expressad/foundation/d/c;->aZ()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/anythink/expressad/foundation/d/c;->aZ()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method private b(Ljava/util/List;ZI)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/anythink/expressad/foundation/d/c;",
            ">;ZI)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_7

    .line 1117
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_7

    .line 1118
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/anythink/expressad/foundation/d/c;

    .line 1119
    invoke-static {}, Lcom/anythink/expressad/videocommon/b/e;->a()Lcom/anythink/expressad/videocommon/b/e;

    move-result-object v2

    iget-object v3, p0, Lcom/anythink/expressad/reward/a/d;->w:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/anythink/expressad/reward/a/d;->U:Z

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    move v6, p2

    move v7, p3

    move-object v8, p1

    invoke-virtual/range {v2 .. v8}, Lcom/anythink/expressad/videocommon/b/e;->b(Ljava/lang/String;ZIZILjava/util/List;)Z

    move-result p1

    if-eqz p1, :cond_7

    const-string p1, "_"

    const/4 p3, 0x1

    if-eqz p2, :cond_3

    .line 1122
    invoke-virtual {v1}, Lcom/anythink/expressad/foundation/d/c;->j()Z

    move-result p2

    if-eqz p2, :cond_0

    return p3

    .line 1125
    :cond_0
    invoke-virtual {v1}, Lcom/anythink/expressad/foundation/d/c;->aB()Ljava/util/ArrayList;

    move-result-object p2

    if-eqz p2, :cond_2

    invoke-virtual {v1}, Lcom/anythink/expressad/foundation/d/c;->aB()Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_2

    .line 1126
    invoke-virtual {v1}, Lcom/anythink/expressad/foundation/d/c;->aB()Ljava/util/ArrayList;

    move-result-object p2

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    return p3

    .line 1132
    :cond_1
    invoke-virtual {v1}, Lcom/anythink/expressad/foundation/d/c;->ar()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1}, Lcom/anythink/expressad/foundation/d/c;->I()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 1133
    invoke-virtual {v1}, Lcom/anythink/expressad/foundation/d/c;->aB()Ljava/util/ArrayList;

    move-result-object p2

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    return p3

    .line 1140
    :cond_2
    invoke-static {}, Lcom/anythink/expressad/videocommon/b/l;->a()Lcom/anythink/expressad/videocommon/b/l;

    move-result-object p2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/anythink/expressad/reward/a/d;->w:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/anythink/expressad/foundation/d/c;->Z()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/anythink/expressad/foundation/d/c;->ar()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/anythink/expressad/videocommon/b/l;->d(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_7

    return p3

    :cond_3
    if-eqz v1, :cond_4

    .line 1145
    invoke-virtual {v1}, Lcom/anythink/expressad/foundation/d/c;->j()Z

    move-result p2

    if-eqz p2, :cond_4

    return p3

    .line 1149
    :cond_4
    invoke-virtual {v1}, Lcom/anythink/expressad/foundation/d/c;->aB()Ljava/util/ArrayList;

    move-result-object p2

    if-eqz p2, :cond_5

    invoke-virtual {v1}, Lcom/anythink/expressad/foundation/d/c;->aB()Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_5

    .line 1150
    invoke-virtual {v1}, Lcom/anythink/expressad/foundation/d/c;->aB()Ljava/util/ArrayList;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    return p3

    .line 1156
    :cond_5
    invoke-virtual {v1}, Lcom/anythink/expressad/foundation/d/c;->M()Lcom/anythink/expressad/foundation/d/c$c;

    move-result-object p2

    if-eqz p2, :cond_6

    invoke-virtual {v1}, Lcom/anythink/expressad/foundation/d/c;->M()Lcom/anythink/expressad/foundation/d/c$c;

    move-result-object p2

    invoke-virtual {p2}, Lcom/anythink/expressad/foundation/d/c$c;->e()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_6

    .line 1157
    invoke-static {}, Lcom/anythink/expressad/videocommon/b/l;->a()Lcom/anythink/expressad/videocommon/b/l;

    move-result-object p2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/anythink/expressad/reward/a/d;->w:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/anythink/expressad/foundation/d/c;->Z()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/anythink/expressad/foundation/d/c;->M()Lcom/anythink/expressad/foundation/d/c$c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/anythink/expressad/foundation/d/c$c;->e()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/anythink/expressad/videocommon/b/l;->d(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_7

    :cond_6
    return p3

    :cond_7
    return v0
.end method

.method static synthetic c(Lcom/anythink/expressad/reward/a/d;)Lcom/anythink/expressad/reward/a/b;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/anythink/expressad/reward/a/d;->G:Lcom/anythink/expressad/reward/a/b;

    return-object p0
.end method

.method private c(Lcom/anythink/expressad/foundation/d/c;)V
    .locals 10

    if-nez p1, :cond_0

    return-void

    .line 2781
    :cond_0
    invoke-virtual {p1}, Lcom/anythink/expressad/foundation/d/c;->P()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2782
    invoke-static {}, Lcom/anythink/expressad/videocommon/b/i;->a()Lcom/anythink/expressad/videocommon/b/i;

    move-result-object v0

    invoke-virtual {p1}, Lcom/anythink/expressad/foundation/d/c;->P()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/anythink/expressad/videocommon/b/i;->b(Ljava/lang/String;)V

    .line 2784
    :cond_1
    invoke-virtual {p1}, Lcom/anythink/expressad/foundation/d/c;->M()Lcom/anythink/expressad/foundation/d/c$c;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 2785
    invoke-virtual {p1}, Lcom/anythink/expressad/foundation/d/c;->M()Lcom/anythink/expressad/foundation/d/c$c;

    move-result-object v0

    .line 2786
    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/d/c$c;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, ".zip"

    if-nez v1, :cond_3

    .line 2787
    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/d/c$c;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2789
    new-instance v1, Lcom/anythink/expressad/reward/a/d$i;

    iget-object v6, p0, Lcom/anythink/expressad/reward/a/d;->w:Ljava/lang/String;

    const/16 v7, 0x139

    iget-object v8, p0, Lcom/anythink/expressad/reward/a/d;->I:Lcom/anythink/expressad/videocommon/e/d;

    const/4 v9, 0x0

    move-object v3, v1

    move-object v4, p1

    move-object v5, p0

    invoke-direct/range {v3 .. v9}, Lcom/anythink/expressad/reward/a/d$i;-><init>(Lcom/anythink/expressad/foundation/d/c;Lcom/anythink/expressad/reward/a/d;Ljava/lang/String;ILcom/anythink/expressad/videocommon/e/d;Z)V

    .line 2790
    invoke-static {}, Lcom/anythink/expressad/videocommon/b/i;->a()Lcom/anythink/expressad/videocommon/b/i;

    move-result-object v3

    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/d/c$c;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Lcom/anythink/expressad/videocommon/b/i;->b(Ljava/lang/String;Lcom/anythink/expressad/videocommon/b/i$a;)V

    goto :goto_0

    .line 2793
    :cond_2
    invoke-static {}, Lcom/anythink/expressad/videocommon/b/i;->a()Lcom/anythink/expressad/videocommon/b/i;

    move-result-object v1

    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/d/c$c;->d()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    .line 18257
    invoke-virtual {v1, v3, v4}, Lcom/anythink/expressad/videocommon/b/i;->b(Ljava/lang/String;Lcom/anythink/expressad/videocommon/b/i$a;)V

    .line 2796
    :cond_3
    :goto_0
    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/d/c$c;->e()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/d/c$c;->e()Ljava/lang/String;

    move-result-object v1

    const-string v3, "cmpt=1"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 2797
    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/d/c$c;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2799
    new-instance v1, Lcom/anythink/expressad/reward/a/d$i;

    iget-object v5, p0, Lcom/anythink/expressad/reward/a/d;->w:Ljava/lang/String;

    const/16 v6, 0x35b

    iget-object v7, p0, Lcom/anythink/expressad/reward/a/d;->I:Lcom/anythink/expressad/videocommon/e/d;

    const/4 v8, 0x0

    move-object v2, v1

    move-object v3, p1

    move-object v4, p0

    invoke-direct/range {v2 .. v8}, Lcom/anythink/expressad/reward/a/d$i;-><init>(Lcom/anythink/expressad/foundation/d/c;Lcom/anythink/expressad/reward/a/d;Ljava/lang/String;ILcom/anythink/expressad/videocommon/e/d;Z)V

    .line 2800
    invoke-static {}, Lcom/anythink/expressad/videocommon/b/i;->a()Lcom/anythink/expressad/videocommon/b/i;

    move-result-object p1

    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/d/c$c;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v1}, Lcom/anythink/expressad/videocommon/b/i;->b(Ljava/lang/String;Lcom/anythink/expressad/videocommon/b/i$a;)V

    return-void

    .line 2803
    :cond_4
    new-instance v1, Lcom/anythink/expressad/reward/a/d$d;

    iget-object v2, p0, Lcom/anythink/expressad/reward/a/d;->w:Ljava/lang/String;

    iget-object v3, p0, Lcom/anythink/expressad/reward/a/d;->I:Lcom/anythink/expressad/videocommon/e/d;

    invoke-direct {v1, p0, p1, v2, v3}, Lcom/anythink/expressad/reward/a/d$d;-><init>(Lcom/anythink/expressad/reward/a/d;Lcom/anythink/expressad/foundation/d/c;Ljava/lang/String;Lcom/anythink/expressad/videocommon/e/d;)V

    .line 2804
    invoke-static {}, Lcom/anythink/expressad/videocommon/b/i;->a()Lcom/anythink/expressad/videocommon/b/i;

    move-result-object p1

    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/d/c$c;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v1}, Lcom/anythink/expressad/videocommon/b/i;->b(Ljava/lang/String;Lcom/anythink/expressad/videocommon/b/i$a;)V

    :cond_5
    return-void
.end method

.method private c(Lcom/anythink/expressad/foundation/d/d;)V
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 1924
    iput-object v0, v1, Lcom/anythink/expressad/reward/a/d;->Z:Lcom/anythink/expressad/foundation/d/d;

    .line 1925
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Campaign request success: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14374
    iget-object v3, v0, Lcom/anythink/expressad/foundation/d/d;->J:Ljava/util/ArrayList;

    .line 1925
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1928
    invoke-direct/range {p0 .. p1}, Lcom/anythink/expressad/reward/a/d;->d(Lcom/anythink/expressad/foundation/d/d;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v2

    iput-object v2, v1, Lcom/anythink/expressad/reward/a/d;->aa:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 14659
    invoke-static {}, Lcom/anythink/core/common/o/b/b;->a()Lcom/anythink/core/common/o/b/b;

    move-result-object v2

    new-instance v3, Lcom/anythink/expressad/reward/a/d$5;

    invoke-direct {v3, v1, v0}, Lcom/anythink/expressad/reward/a/d$5;-><init>(Lcom/anythink/expressad/reward/a/d;Lcom/anythink/expressad/foundation/d/d;)V

    invoke-virtual {v2, v3}, Lcom/anythink/core/common/o/b/b;->a(Ljava/lang/Runnable;)V

    .line 1937
    iget-object v2, v1, Lcom/anythink/expressad/reward/a/d;->aa:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v2, :cond_a

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v2

    if-lez v2, :cond_a

    .line 1938
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onload load success,size:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v1, Lcom/anythink/expressad/reward/a/d;->aa:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 15629
    iget-object v2, v1, Lcom/anythink/expressad/reward/a/d;->ad:Landroid/os/Handler;

    if-eqz v2, :cond_0

    const/4 v3, 0x3

    .line 15630
    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    if-eqz v0, :cond_1

    .line 1951
    invoke-virtual/range {p1 .. p1}, Lcom/anythink/expressad/foundation/d/d;->c()Ljava/lang/String;

    move-result-object v0

    .line 15766
    invoke-static {v0}, Lcom/anythink/expressad/foundation/h/w;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 15768
    sput-object v0, Lcom/anythink/expressad/reward/b/a;->b:Ljava/lang/String;

    .line 1955
    :cond_1
    iget-object v0, v1, Lcom/anythink/expressad/reward/a/d;->aa:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 16688
    :try_start_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 16689
    iget v3, v1, Lcom/anythink/expressad/reward/a/d;->y:I

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr v3, v0

    iput v3, v1, Lcom/anythink/expressad/reward/a/d;->y:I

    .line 16691
    :cond_2
    iget-object v0, v1, Lcom/anythink/expressad/reward/a/d;->I:Lcom/anythink/expressad/videocommon/e/d;

    if-eqz v0, :cond_3

    iget v3, v1, Lcom/anythink/expressad/reward/a/d;->y:I

    invoke-virtual {v0}, Lcom/anythink/expressad/videocommon/e/d;->D()I

    move-result v0

    if-le v3, v0, :cond_4

    .line 16693
    :cond_3
    iput v2, v1, Lcom/anythink/expressad/reward/a/d;->y:I

    .line 16695
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "onload \u7b97\u51fa \u4e0b\u6b21\u7684offset\u662f:"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v1, Lcom/anythink/expressad/reward/a/d;->y:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16697
    iget-object v0, v1, Lcom/anythink/expressad/reward/a/d;->w:Ljava/lang/String;

    invoke-static {v0}, Lcom/anythink/expressad/foundation/h/w;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 16698
    iget-object v0, v1, Lcom/anythink/expressad/reward/a/d;->w:Ljava/lang/String;

    iget v3, v1, Lcom/anythink/expressad/reward/a/d;->y:I

    invoke-static {v0, v3}, Lcom/anythink/expressad/reward/b/a;->a(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 16701
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1957
    :cond_5
    :goto_0
    iget-object v0, v1, Lcom/anythink/expressad/reward/a/d;->aa:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    if-lez v0, :cond_6

    .line 1958
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "#######onload,save the ad data locally,size:"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v1, Lcom/anythink/expressad/reward/a/d;->aa:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1962
    :cond_6
    iget-object v0, v1, Lcom/anythink/expressad/reward/a/d;->aa:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/anythink/expressad/foundation/d/c;

    .line 1963
    invoke-virtual {v5}, Lcom/anythink/expressad/foundation/d/c;->ar()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 1964
    invoke-virtual {v5}, Lcom/anythink/expressad/foundation/d/c;->ap()I

    move-result v3

    .line 1966
    iput-boolean v2, v1, Lcom/anythink/expressad/reward/a/d;->p:Z

    .line 1967
    iput-boolean v2, v1, Lcom/anythink/expressad/reward/a/d;->q:Z

    .line 1968
    iget-object v4, v1, Lcom/anythink/expressad/reward/a/d;->c:Ljava/lang/Object;

    monitor-enter v4

    .line 1969
    :try_start_1
    iget-boolean v6, v1, Lcom/anythink/expressad/reward/a/d;->r:Z

    if-eqz v6, :cond_7

    .line 1970
    iput-boolean v2, v1, Lcom/anythink/expressad/reward/a/d;->r:Z

    .line 1972
    :cond_7
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1973
    iput-boolean v2, v1, Lcom/anythink/expressad/reward/a/d;->t:Z

    .line 1974
    iput-boolean v2, v1, Lcom/anythink/expressad/reward/a/d;->s:Z

    .line 17076
    invoke-static {}, Lcom/anythink/expressad/reward/a/c$m;->a()Lcom/anythink/expressad/reward/a/c;

    move-result-object v6

    .line 1982
    iget-object v7, v1, Lcom/anythink/expressad/reward/a/d;->v:Landroid/content/Context;

    iget-boolean v10, v1, Lcom/anythink/expressad/reward/a/d;->U:Z

    iget-boolean v2, v1, Lcom/anythink/expressad/reward/a/d;->T:Z

    if-eqz v2, :cond_8

    const/16 v2, 0x11f

    const/16 v11, 0x11f

    goto :goto_1

    :cond_8
    const/16 v2, 0x5e

    const/16 v11, 0x5e

    :goto_1
    iget-object v12, v1, Lcom/anythink/expressad/reward/a/d;->x:Ljava/lang/String;

    iget-object v13, v1, Lcom/anythink/expressad/reward/a/d;->w:Ljava/lang/String;

    invoke-virtual {v5}, Lcom/anythink/expressad/foundation/d/c;->Z()Ljava/lang/String;

    move-result-object v14

    iget-object v15, v1, Lcom/anythink/expressad/reward/a/d;->aa:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v2, Lcom/anythink/expressad/reward/a/d$2;

    invoke-direct {v2, v1, v0, v5, v3}, Lcom/anythink/expressad/reward/a/d$2;-><init>(Lcom/anythink/expressad/reward/a/d;ZLcom/anythink/expressad/foundation/d/c;I)V

    new-instance v4, Lcom/anythink/expressad/reward/a/d$3;

    invoke-direct {v4, v1, v0, v5, v3}, Lcom/anythink/expressad/reward/a/d$3;-><init>(Lcom/anythink/expressad/reward/a/d;ZLcom/anythink/expressad/foundation/d/c;I)V

    move v8, v0

    move v9, v3

    move-object/from16 v16, v2

    move-object/from16 v17, v4

    invoke-virtual/range {v6 .. v17}, Lcom/anythink/expressad/reward/a/c;->a(Landroid/content/Context;ZIZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/CopyOnWriteArrayList;Lcom/anythink/expressad/reward/a/c$c;Lcom/anythink/expressad/reward/a/c$i;)V

    if-eqz v0, :cond_9

    .line 18076
    invoke-static {}, Lcom/anythink/expressad/reward/a/c$m;->a()Lcom/anythink/expressad/reward/a/c;

    move-result-object v2

    .line 2345
    iget-object v4, v1, Lcom/anythink/expressad/reward/a/d;->v:Landroid/content/Context;

    iget-object v6, v1, Lcom/anythink/expressad/reward/a/d;->x:Ljava/lang/String;

    iget-object v7, v1, Lcom/anythink/expressad/reward/a/d;->w:Ljava/lang/String;

    invoke-virtual {v5}, Lcom/anythink/expressad/foundation/d/c;->Z()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Lcom/anythink/expressad/reward/a/d$4;

    invoke-direct {v9, v1, v5, v0, v3}, Lcom/anythink/expressad/reward/a/d$4;-><init>(Lcom/anythink/expressad/reward/a/d;Lcom/anythink/expressad/foundation/d/c;ZI)V

    move-object v3, v2

    invoke-virtual/range {v3 .. v9}, Lcom/anythink/expressad/reward/a/c;->a(Landroid/content/Context;Lcom/anythink/expressad/foundation/d/c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/anythink/expressad/reward/a/c$i;)V

    :cond_9
    return-void

    :catchall_0
    move-exception v0

    .line 1972
    monitor-exit v4

    throw v0

    .line 1942
    :cond_a
    iget-object v0, v1, Lcom/anythink/expressad/reward/a/d;->af:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "Offer list is empty"

    .line 1943
    iput-object v0, v1, Lcom/anythink/expressad/reward/a/d;->af:Ljava/lang/String;

    .line 1945
    :cond_b
    iget-object v0, v1, Lcom/anythink/expressad/reward/a/d;->af:Ljava/lang/String;

    invoke-direct {v1, v0}, Lcom/anythink/expressad/reward/a/d;->b(Ljava/lang/String;)V

    return-void
.end method

.method private static c(Ljava/lang/String;)V
    .locals 1

    .line 3766
    invoke-static {p0}, Lcom/anythink/expressad/foundation/h/w;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3768
    sput-object p0, Lcom/anythink/expressad/reward/b/a;->b:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method private c(Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/anythink/expressad/foundation/d/c;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 2868
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 2869
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/anythink/expressad/foundation/d/c;

    .line 2870
    invoke-virtual {v2}, Lcom/anythink/expressad/foundation/d/c;->I()Ljava/lang/String;

    move-result-object v0

    .line 2872
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v2}, Lcom/anythink/expressad/foundation/d/c;->H()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, ".zip"

    .line 2873
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "md5filename"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2876
    invoke-static {}, Lcom/anythink/expressad/videocommon/b/i;->a()Lcom/anythink/expressad/videocommon/b/i;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/anythink/expressad/videocommon/b/i;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    .line 2879
    new-instance v8, Lcom/anythink/expressad/reward/a/d$i;

    iget-object v4, p0, Lcom/anythink/expressad/reward/a/d;->w:Ljava/lang/String;

    const/16 v5, 0x1f1

    iget-object v6, p0, Lcom/anythink/expressad/reward/a/d;->I:Lcom/anythink/expressad/videocommon/e/d;

    move-object v1, v8

    move-object v3, p0

    invoke-direct/range {v1 .. v7}, Lcom/anythink/expressad/reward/a/d$i;-><init>(Lcom/anythink/expressad/foundation/d/c;Lcom/anythink/expressad/reward/a/d;Ljava/lang/String;ILcom/anythink/expressad/videocommon/e/d;Z)V

    .line 2880
    invoke-static {}, Lcom/anythink/expressad/videocommon/b/i;->a()Lcom/anythink/expressad/videocommon/b/i;

    move-result-object v1

    invoke-virtual {v1, v0, v8}, Lcom/anythink/expressad/videocommon/b/i;->b(Ljava/lang/String;Lcom/anythink/expressad/videocommon/b/i$a;)V

    goto :goto_0

    .line 2884
    :cond_1
    invoke-static {}, Lcom/anythink/expressad/videocommon/b/j;->a()Lcom/anythink/expressad/videocommon/b/j;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/anythink/expressad/videocommon/b/j;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    .line 2887
    new-instance v3, Lcom/anythink/expressad/reward/a/d$f;

    iget-object v4, p0, Lcom/anythink/expressad/reward/a/d;->w:Ljava/lang/String;

    invoke-direct {v3, p0, v2, v4, v1}, Lcom/anythink/expressad/reward/a/d$f;-><init>(Lcom/anythink/expressad/reward/a/d;Lcom/anythink/expressad/foundation/d/c;Ljava/lang/String;Z)V

    .line 2888
    invoke-static {}, Lcom/anythink/expressad/videocommon/b/i;->a()Lcom/anythink/expressad/videocommon/b/i;

    move-result-object v1

    invoke-virtual {v1, v0, v3}, Lcom/anythink/expressad/videocommon/b/i;->b(Ljava/lang/String;Lcom/anythink/expressad/videocommon/b/i$a;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method static synthetic d(Lcom/anythink/expressad/reward/a/d;)Ljava/util/List;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/anythink/expressad/reward/a/d;->ag:Ljava/util/List;

    return-object p0
.end method

.method private d(Lcom/anythink/expressad/foundation/d/d;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/anythink/expressad/foundation/d/d;",
            ")",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/anythink/expressad/foundation/d/c;",
            ">;"
        }
    .end annotation

    .line 3446
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 3451
    :try_start_0
    iget-object v1, p0, Lcom/anythink/expressad/reward/a/d;->I:Lcom/anythink/expressad/videocommon/e/d;

    if-eqz v1, :cond_0

    .line 3452
    invoke-virtual {v1}, Lcom/anythink/expressad/videocommon/e/d;->A()I

    :cond_0
    if-eqz p1, :cond_12

    .line 19374
    iget-object v1, p1, Lcom/anythink/expressad/foundation/d/d;->J:Ljava/util/ArrayList;

    if-eqz v1, :cond_12

    .line 20374
    iget-object v1, p1, Lcom/anythink/expressad/foundation/d/d;->J:Ljava/util/ArrayList;

    .line 3459
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_12

    .line 21374
    iget-object v1, p1, Lcom/anythink/expressad/foundation/d/d;->J:Ljava/util/ArrayList;

    .line 3461
    iput-object v1, p0, Lcom/anythink/expressad/reward/a/d;->ag:Ljava/util/List;

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    .line 22374
    iget-object v3, p1, Lcom/anythink/expressad/foundation/d/d;->J:Ljava/util/ArrayList;

    if-eqz v3, :cond_1

    .line 23374
    iget-object v3, p1, Lcom/anythink/expressad/foundation/d/d;->J:Ljava/util/ArrayList;

    .line 3463
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 24374
    iget-object p1, p1, Lcom/anythink/expressad/foundation/d/d;->J:Ljava/util/ArrayList;

    const/4 v3, 0x0

    .line 3465
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 3466
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/anythink/expressad/foundation/d/c;

    .line 3467
    iget-object v5, p0, Lcom/anythink/expressad/reward/a/d;->w:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/anythink/expressad/foundation/d/c;->l(Ljava/lang/String;)V

    .line 3468
    invoke-interface {p1, v3, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 3472
    :goto_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge p1, v3, :cond_11

    const v3, 0x7fffffff

    if-ge p1, v3, :cond_11

    .line 3473
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/anythink/expressad/foundation/d/c;

    .line 3479
    invoke-virtual {v3}, Lcom/anythink/expressad/foundation/d/c;->H()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 3480
    invoke-virtual {v3}, Lcom/anythink/expressad/foundation/d/c;->G()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_10

    const/4 v4, 0x0

    .line 3483
    invoke-virtual {v3}, Lcom/anythink/expressad/foundation/d/c;->w()I

    move-result v5

    const/16 v6, 0x11f

    if-eq v5, v6, :cond_2

    .line 3485
    invoke-virtual {v3}, Lcom/anythink/expressad/foundation/d/c;->w()I

    move-result v5

    const/16 v6, 0x5e

    if-eq v5, v6, :cond_2

    .line 3487
    invoke-virtual {v3}, Lcom/anythink/expressad/foundation/d/c;->w()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 3491
    :cond_2
    :try_start_1
    sget-object v5, Lcom/anythink/expressad/foundation/g/c/a;->i:Lcom/anythink/expressad/foundation/g/c/a;

    invoke-static {v5}, Lcom/anythink/expressad/foundation/g/c/d;->b(Lcom/anythink/expressad/foundation/g/c/a;)Ljava/lang/String;

    move-result-object v5

    .line 3492
    invoke-virtual {v3}, Lcom/anythink/expressad/foundation/d/c;->G()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/anythink/expressad/foundation/h/p;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 3493
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 3494
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    :cond_3
    const-string v7, ".html"

    invoke-virtual {v6, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 3495
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 3496
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 3498
    :try_start_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "<script>"

    .line 3499
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/anythink/expressad/d/b/a;->a()Lcom/anythink/expressad/d/b/a;

    invoke-static {}, Lcom/anythink/expressad/d/b/a;->b()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "</script>"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3500
    invoke-virtual {v3}, Lcom/anythink/expressad/foundation/d/c;->G()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3502
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/io/FileOutputStream;->write([B)V

    .line 3503
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->flush()V

    .line 3504
    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/anythink/expressad/foundation/d/c;->j(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3513
    :try_start_3
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_3

    :catchall_0
    move-exception p1

    move-object v4, v5

    goto :goto_4

    :catch_0
    move-exception v4

    move-object v8, v5

    move-object v5, v4

    move-object v4, v8

    goto :goto_2

    :catchall_1
    move-exception p1

    goto :goto_4

    :catch_1
    move-exception v5

    .line 3508
    :goto_2
    :try_start_4
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    const-string v5, ""

    .line 3509
    invoke-virtual {v3, v5}, Lcom/anythink/expressad/foundation/d/c;->j(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v4, :cond_4

    .line 3513
    :try_start_5
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    .line 3517
    :cond_4
    :goto_3
    new-instance v4, Ljava/io/File;

    invoke-virtual {v3}, Lcom/anythink/expressad/foundation/d/c;->G()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3518
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {v4}, Ljava/io/File;->canRead()Z

    move-result v4

    if-nez v4, :cond_7

    :cond_5
    const-string v3, "mraid resource write fail"

    .line 3519
    invoke-direct {p0, v3}, Lcom/anythink/expressad/reward/a/d;->b(Ljava/lang/String;)V

    goto/16 :goto_9

    :goto_4
    if-eqz v4, :cond_6

    .line 3513
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    .line 3515
    :cond_6
    throw p1

    :cond_7
    if-eqz v3, :cond_10

    .line 3527
    invoke-virtual {v3}, Lcom/anythink/expressad/foundation/d/c;->O()I

    move-result v4

    const/16 v5, 0x63

    if-eq v4, v5, :cond_10

    .line 3529
    invoke-static {v3}, Lcom/anythink/expressad/reward/a/d;->e(Lcom/anythink/expressad/foundation/d/c;)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_8

    .line 3530
    invoke-virtual {v3}, Lcom/anythink/expressad/foundation/d/c;->I()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/anythink/expressad/foundation/h/w;->a(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-virtual {v3}, Lcom/anythink/expressad/foundation/d/c;->G()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_9

    goto :goto_5

    .line 3534
    :cond_8
    invoke-virtual {v3}, Lcom/anythink/expressad/foundation/d/c;->S()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/anythink/expressad/foundation/h/w;->a(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    :goto_5
    const/4 v4, 0x0

    goto :goto_6

    :cond_9
    const/4 v4, 0x1

    :goto_6
    if-eqz v4, :cond_f

    .line 3540
    invoke-static {v3}, Lcom/anythink/expressad/foundation/h/t;->a(Lcom/anythink/expressad/foundation/d/c;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 3541
    iget-object v4, p0, Lcom/anythink/expressad/reward/a/d;->v:Landroid/content/Context;

    invoke-virtual {v3}, Lcom/anythink/expressad/foundation/d/c;->ba()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/anythink/expressad/foundation/h/t;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    const/4 v4, 0x1

    goto :goto_7

    :cond_a
    const/4 v4, 0x2

    :goto_7
    invoke-virtual {v3, v4}, Lcom/anythink/expressad/foundation/d/c;->i(I)V

    .line 3544
    :cond_b
    invoke-virtual {v3}, Lcom/anythink/expressad/foundation/d/c;->ae()I

    move-result v4

    if-eq v4, v5, :cond_e

    iget-object v4, p0, Lcom/anythink/expressad/reward/a/d;->v:Landroid/content/Context;

    invoke-virtual {v3}, Lcom/anythink/expressad/foundation/d/c;->ba()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/anythink/expressad/foundation/h/t;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_c

    goto :goto_8

    .line 3547
    :cond_c
    invoke-static {v3}, Lcom/anythink/expressad/foundation/h/t;->a(Lcom/anythink/expressad/foundation/d/c;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 3548
    invoke-virtual {v0, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_d
    const-string v3, "APP ALREADY INSTALLED"

    .line 3552
    iput-object v3, p0, Lcom/anythink/expressad/reward/a/d;->af:Ljava/lang/String;

    goto :goto_9

    .line 3545
    :cond_e
    :goto_8
    invoke-virtual {v0, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_f
    const-string v3, "No video campaign"

    .line 3557
    iput-object v3, p0, Lcom/anythink/expressad/reward/a/d;->af:Ljava/lang/String;

    :cond_10
    :goto_9
    add-int/lit8 p1, p1, 0x1

    goto/16 :goto_1

    .line 3562
    :cond_11
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "onload,return campaign with the following video resources:"

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_a

    :catch_2
    move-exception p1

    .line 3565
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_12
    :goto_a
    return-object v0
.end method

.method private d(Lcom/anythink/expressad/foundation/d/c;)V
    .locals 9

    if-eqz p1, :cond_0

    .line 2851
    invoke-virtual {p1}, Lcom/anythink/expressad/foundation/d/c;->ar()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2852
    invoke-virtual {p1}, Lcom/anythink/expressad/foundation/d/c;->ar()Ljava/lang/String;

    move-result-object v0

    .line 2854
    invoke-static {}, Lcom/anythink/expressad/videocommon/b/i;->a()Lcom/anythink/expressad/videocommon/b/i;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/anythink/expressad/videocommon/b/i;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    .line 2857
    new-instance v1, Lcom/anythink/expressad/reward/a/d$i;

    iget-object v5, p0, Lcom/anythink/expressad/reward/a/d;->w:Ljava/lang/String;

    const/16 v6, 0x1f6

    iget-object v7, p0, Lcom/anythink/expressad/reward/a/d;->I:Lcom/anythink/expressad/videocommon/e/d;

    move-object v2, v1

    move-object v3, p1

    move-object v4, p0

    invoke-direct/range {v2 .. v8}, Lcom/anythink/expressad/reward/a/d$i;-><init>(Lcom/anythink/expressad/foundation/d/c;Lcom/anythink/expressad/reward/a/d;Ljava/lang/String;ILcom/anythink/expressad/videocommon/e/d;Z)V

    .line 2858
    invoke-static {}, Lcom/anythink/expressad/videocommon/b/i;->a()Lcom/anythink/expressad/videocommon/b/i;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Lcom/anythink/expressad/videocommon/b/i;->b(Ljava/lang/String;Lcom/anythink/expressad/videocommon/b/i$a;)V

    :cond_0
    return-void
.end method

.method private d(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/anythink/expressad/foundation/d/c;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 3277
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 3278
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anythink/expressad/foundation/d/c;

    .line 3279
    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/d/c;->bd()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 3280
    new-instance v1, Lcom/anythink/expressad/reward/a/d$c;

    iget-object v2, p0, Lcom/anythink/expressad/reward/a/d;->w:Ljava/lang/String;

    invoke-direct {v1, p0, v0, v2}, Lcom/anythink/expressad/reward/a/d$c;-><init>(Lcom/anythink/expressad/reward/a/d;Lcom/anythink/expressad/foundation/d/c;Ljava/lang/String;)V

    .line 3281
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v2

    invoke-virtual {v2}, Lcom/anythink/core/common/b/o;->f()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/anythink/expressad/foundation/g/d/b;->a(Landroid/content/Context;)Lcom/anythink/expressad/foundation/g/d/b;

    move-result-object v2

    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/d/c;->bd()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/anythink/expressad/foundation/g/d/b;->a(Ljava/lang/String;Lcom/anythink/expressad/foundation/g/d/c;)V

    .line 3283
    :cond_1
    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/d/c;->be()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3284
    new-instance v1, Lcom/anythink/expressad/reward/a/d$c;

    iget-object v2, p0, Lcom/anythink/expressad/reward/a/d;->w:Ljava/lang/String;

    invoke-direct {v1, p0, v0, v2}, Lcom/anythink/expressad/reward/a/d$c;-><init>(Lcom/anythink/expressad/reward/a/d;Lcom/anythink/expressad/foundation/d/c;Ljava/lang/String;)V

    .line 3285
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v2

    invoke-virtual {v2}, Lcom/anythink/core/common/b/o;->f()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/anythink/expressad/foundation/g/d/b;->a(Landroid/content/Context;)Lcom/anythink/expressad/foundation/g/d/b;

    move-result-object v2

    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/d/c;->be()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0, v1}, Lcom/anythink/expressad/foundation/g/d/b;->a(Ljava/lang/String;Lcom/anythink/expressad/foundation/g/d/c;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method static synthetic e(Lcom/anythink/expressad/reward/a/d;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/anythink/expressad/reward/a/d;->aa:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object p0
.end method

.method private e(Lcom/anythink/expressad/foundation/d/d;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/anythink/expressad/foundation/d/d;",
            ")V"
        }
    .end annotation

    .line 3659
    invoke-static {}, Lcom/anythink/core/common/o/b/b;->a()Lcom/anythink/core/common/o/b/b;

    move-result-object v0

    new-instance v1, Lcom/anythink/expressad/reward/a/d$5;

    invoke-direct {v1, p0, p1}, Lcom/anythink/expressad/reward/a/d$5;-><init>(Lcom/anythink/expressad/reward/a/d;Lcom/anythink/expressad/foundation/d/d;)V

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/o/b/b;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method private e(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/anythink/expressad/foundation/d/c;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_3

    .line 3298
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 3299
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anythink/expressad/foundation/d/c;

    .line 3300
    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/d/c;->M()Lcom/anythink/expressad/foundation/d/c$c;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/d/c;->M()Lcom/anythink/expressad/foundation/d/c$c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/expressad/foundation/d/c$c;->f()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3301
    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/d/c;->M()Lcom/anythink/expressad/foundation/d/c$c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/expressad/foundation/d/c$c;->f()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3304
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/anythink/expressad/foundation/d/c$c$a;

    if-eqz v2, :cond_1

    .line 3305
    iget-object v3, v2, Lcom/anythink/expressad/foundation/d/c$c$a;->b:Ljava/util/List;

    if-eqz v3, :cond_1

    .line 3306
    iget-object v2, v2, Lcom/anythink/expressad/foundation/d/c$c$a;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 3307
    invoke-static {v3}, Lcom/anythink/expressad/foundation/h/w;->b(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 3308
    new-instance v4, Lcom/anythink/expressad/reward/a/d$e;

    iget-object v5, p0, Lcom/anythink/expressad/reward/a/d;->w:Ljava/lang/String;

    invoke-direct {v4, p0, v0, v5}, Lcom/anythink/expressad/reward/a/d$e;-><init>(Lcom/anythink/expressad/reward/a/d;Lcom/anythink/expressad/foundation/d/c;Ljava/lang/String;)V

    .line 3309
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v5

    invoke-virtual {v5}, Lcom/anythink/core/common/b/o;->f()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/anythink/expressad/foundation/g/d/b;->a(Landroid/content/Context;)Lcom/anythink/expressad/foundation/g/d/b;

    move-result-object v5

    invoke-virtual {v5, v3, v4}, Lcom/anythink/expressad/foundation/g/d/b;->a(Ljava/lang/String;Lcom/anythink/expressad/foundation/g/d/c;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 3319
    sget-boolean v0, Lcom/anythink/expressad/a;->a:Z

    if-eqz v0, :cond_3

    .line 3320
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3
    return-void
.end method

.method private static e(Lcom/anythink/expressad/foundation/d/c;)Z
    .locals 1

    if-eqz p0, :cond_0

    .line 3965
    :try_start_0
    invoke-virtual {p0}, Lcom/anythink/expressad/foundation/d/c;->J()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p0

    .line 3969
    sget-boolean v0, Lcom/anythink/expressad/a;->a:Z

    if-eqz v0, :cond_0

    .line 3970
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method static synthetic f(Lcom/anythink/expressad/reward/a/d;)Ljava/lang/String;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/anythink/expressad/reward/a/d;->w:Ljava/lang/String;

    return-object p0
.end method

.method private f(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/anythink/expressad/foundation/d/c;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 3578
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 3579
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onload \u5f00\u59cb\u4e0b\u8f7d\u89c6\u9891\u7d20\u6750 size:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3580
    iget-object v0, p0, Lcom/anythink/expressad/reward/a/d;->R:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 3581
    iget-object v0, p0, Lcom/anythink/expressad/reward/a/d;->R:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->addAll(Ljava/util/Collection;)Z

    .line 3582
    invoke-static {}, Lcom/anythink/expressad/videocommon/b/l;->a()Lcom/anythink/expressad/videocommon/b/l;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/anythink/expressad/videocommon/b/l;->a(Ljava/util/List;)V

    .line 3583
    invoke-static {}, Lcom/anythink/expressad/videocommon/b/e;->a()Lcom/anythink/expressad/videocommon/b/e;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3584
    new-instance v0, Lcom/anythink/expressad/reward/a/d$b;

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/anythink/expressad/foundation/d/c;

    invoke-direct {v0, p0, v1}, Lcom/anythink/expressad/reward/a/d$b;-><init>(Lcom/anythink/expressad/reward/a/d;Lcom/anythink/expressad/foundation/d/c;)V

    .line 3585
    invoke-static {}, Lcom/anythink/expressad/videocommon/b/e;->a()Lcom/anythink/expressad/videocommon/b/e;

    move-result-object v1

    iget-object v2, p0, Lcom/anythink/expressad/reward/a/d;->w:Ljava/lang/String;

    const/16 v3, 0x5e

    invoke-virtual {v1, v2, p1, v3, v0}, Lcom/anythink/expressad/videocommon/b/e;->a(Ljava/lang/String;Ljava/util/List;ILcom/anythink/expressad/videocommon/d/b;)Lcom/anythink/expressad/videocommon/b/n;

    .line 3586
    invoke-static {}, Lcom/anythink/expressad/videocommon/b/e;->a()Lcom/anythink/expressad/videocommon/b/e;

    move-result-object p1

    iget-object v0, p0, Lcom/anythink/expressad/reward/a/d;->w:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/anythink/expressad/videocommon/b/e;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3592
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    :cond_0
    :goto_0
    return-void
.end method

.method static synthetic g(Lcom/anythink/expressad/reward/a/d;)Ljava/util/List;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/anythink/expressad/reward/a/d;->ah:Ljava/util/List;

    return-object p0
.end method

.method private g()V
    .locals 1

    .line 190
    iget-object v0, p0, Lcom/anythink/expressad/reward/a/d;->R:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/anythink/expressad/reward/a/d;->R:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    :cond_0
    return-void
.end method

.method private g(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/anythink/expressad/foundation/d/c;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 3688
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 3689
    iget v0, p0, Lcom/anythink/expressad/reward/a/d;->y:I

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    add-int/2addr v0, p1

    iput v0, p0, Lcom/anythink/expressad/reward/a/d;->y:I

    .line 3691
    :cond_0
    iget-object p1, p0, Lcom/anythink/expressad/reward/a/d;->I:Lcom/anythink/expressad/videocommon/e/d;

    if-eqz p1, :cond_1

    iget v0, p0, Lcom/anythink/expressad/reward/a/d;->y:I

    invoke-virtual {p1}, Lcom/anythink/expressad/videocommon/e/d;->D()I

    move-result p1

    if-le v0, p1, :cond_2

    :cond_1
    const/4 p1, 0x0

    .line 3693
    iput p1, p0, Lcom/anythink/expressad/reward/a/d;->y:I

    .line 3695
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "onload \u7b97\u51fa \u4e0b\u6b21\u7684offset\u662f:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/anythink/expressad/reward/a/d;->y:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3697
    iget-object p1, p0, Lcom/anythink/expressad/reward/a/d;->w:Ljava/lang/String;

    invoke-static {p1}, Lcom/anythink/expressad/foundation/h/w;->b(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 3698
    iget-object p1, p0, Lcom/anythink/expressad/reward/a/d;->w:Ljava/lang/String;

    iget v0, p0, Lcom/anythink/expressad/reward/a/d;->y:I

    invoke-static {p1, v0}, Lcom/anythink/expressad/reward/b/a;->a(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    return-void

    :catch_0
    move-exception p1

    .line 3701
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method private h()I
    .locals 1

    .line 196
    iget v0, p0, Lcom/anythink/expressad/reward/a/d;->S:I

    return v0
.end method

.method private h(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/anythink/expressad/foundation/d/c;",
            ">;)V"
        }
    .end annotation

    .line 3992
    iput-object p1, p0, Lcom/anythink/expressad/reward/a/d;->ah:Ljava/util/List;

    return-void
.end method

.method static synthetic h(Lcom/anythink/expressad/reward/a/d;)Z
    .locals 0

    .line 60
    iget-boolean p0, p0, Lcom/anythink/expressad/reward/a/d;->U:Z

    return p0
.end method

.method static synthetic i(Lcom/anythink/expressad/reward/a/d;)Landroid/os/Handler;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/anythink/expressad/reward/a/d;->ad:Landroid/os/Handler;

    return-object p0
.end method

.method private static i()V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    return-void
.end method

.method static synthetic j(Lcom/anythink/expressad/reward/a/d;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/anythink/expressad/reward/a/d;->R:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object p0
.end method

.method private static j()V
    .locals 0

    return-void
.end method

.method static synthetic k(Lcom/anythink/expressad/reward/a/d;)Lcom/anythink/expressad/foundation/d/d;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/anythink/expressad/reward/a/d;->Z:Lcom/anythink/expressad/foundation/d/d;

    return-object p0
.end method

.method private k()V
    .locals 2

    .line 1629
    iget-object v0, p0, Lcom/anythink/expressad/reward/a/d;->ad:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v1, 0x3

    .line 1630
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method private static l()V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    return-void
.end method

.method static synthetic l(Lcom/anythink/expressad/reward/a/d;)Z
    .locals 0

    .line 60
    iget-boolean p0, p0, Lcom/anythink/expressad/reward/a/d;->ab:Z

    return p0
.end method

.method private static m()V
    .locals 0

    return-void
.end method

.method static synthetic m(Lcom/anythink/expressad/reward/a/d;)Z
    .locals 0

    .line 60
    iget-boolean p0, p0, Lcom/anythink/expressad/reward/a/d;->T:Z

    return p0
.end method

.method static synthetic n(Lcom/anythink/expressad/reward/a/d;)I
    .locals 0

    .line 60
    iget p0, p0, Lcom/anythink/expressad/reward/a/d;->S:I

    return p0
.end method

.method private static n()V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    return-void
.end method

.method static synthetic o(Lcom/anythink/expressad/reward/a/d;)Lcom/anythink/expressad/videocommon/e/d;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/anythink/expressad/reward/a/d;->I:Lcom/anythink/expressad/videocommon/e/d;

    return-object p0
.end method

.method private static o()V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    return-void
.end method

.method static synthetic p(Lcom/anythink/expressad/reward/a/d;)Ljava/lang/String;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/anythink/expressad/reward/a/d;->x:Ljava/lang/String;

    return-object p0
.end method

.method private static p()V
    .locals 0

    return-void
.end method

.method private q()I
    .locals 3

    const/4 v0, 0x0

    .line 3713
    :try_start_0
    iget-object v1, p0, Lcom/anythink/expressad/reward/a/d;->w:Ljava/lang/String;

    invoke-static {v1}, Lcom/anythink/expressad/foundation/h/w;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3715
    iget-object v1, p0, Lcom/anythink/expressad/reward/a/d;->w:Ljava/lang/String;

    invoke-static {v1}, Lcom/anythink/expressad/reward/b/a;->a(Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 3717
    :goto_0
    iget-object v2, p0, Lcom/anythink/expressad/reward/a/d;->I:Lcom/anythink/expressad/videocommon/e/d;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/anythink/expressad/videocommon/e/d;->D()I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-le v1, v2, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    goto :goto_1

    :catch_0
    move-exception v1

    .line 3723
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_1
    return v0
.end method

.method static synthetic q(Lcom/anythink/expressad/reward/a/d;)Landroid/content/Context;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/anythink/expressad/reward/a/d;->v:Landroid/content/Context;

    return-object p0
.end method

.method private r()V
    .locals 2

    .line 3733
    :try_start_0
    iget-object v0, p0, Lcom/anythink/expressad/reward/a/d;->w:Ljava/lang/String;

    invoke-static {v0}, Lcom/anythink/expressad/foundation/h/w;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3734
    iget-object v0, p0, Lcom/anythink/expressad/reward/a/d;->w:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/anythink/expressad/reward/b/a;->a(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    .line 3737
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method private static s()Ljava/lang/String;
    .locals 2

    const-string v0, ""

    .line 3750
    :try_start_0
    sget-object v1, Lcom/anythink/expressad/reward/b/a;->b:Ljava/lang/String;

    invoke-static {v1}, Lcom/anythink/expressad/foundation/h/w;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3751
    sget-object v0, Lcom/anythink/expressad/reward/b/a;->b:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 3754
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-object v0
.end method

.method private static t()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method private static u()V
    .locals 2

    .line 3806
    :try_start_0
    sget-object v0, Lcom/anythink/expressad/foundation/g/a/f;->h:Ljava/util/Map;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/anythink/expressad/foundation/g/a/f;->h:Ljava/util/Map;

    .line 3807
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 3808
    sget-object v0, Lcom/anythink/expressad/foundation/g/a/f;->h:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    .line 3811
    sget-boolean v1, Lcom/anythink/expressad/a;->a:Z

    if-eqz v1, :cond_1

    .line 3812
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    return-void
.end method

.method private static v()V
    .locals 0

    return-void
.end method

.method private static synthetic w()V
    .locals 0

    return-void
.end method

.method private static synthetic x()V
    .locals 0

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 0

    .line 200
    iput p1, p0, Lcom/anythink/expressad/reward/a/d;->S:I

    return-void
.end method

.method public final a(III)V
    .locals 0

    .line 4039
    iput p1, p0, Lcom/anythink/expressad/reward/a/d;->W:I

    .line 4040
    iput p2, p0, Lcom/anythink/expressad/reward/a/d;->X:I

    .line 4041
    iput p3, p0, Lcom/anythink/expressad/reward/a/d;->Y:I

    return-void
.end method

.method public final a(Landroid/app/Activity;Lcom/anythink/expressad/video/bt/module/b/h;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/anythink/core/common/f/m;)V
    .locals 2

    .line 1330
    :try_start_0
    iput-object p2, p0, Lcom/anythink/expressad/reward/a/d;->F:Lcom/anythink/expressad/video/bt/module/b/h;

    .line 1332
    iget-object p2, p0, Lcom/anythink/expressad/reward/a/d;->v:Landroid/content/Context;

    if-eqz p2, :cond_8

    iget-object p2, p0, Lcom/anythink/expressad/reward/a/d;->w:Ljava/lang/String;

    invoke-static {p2}, Lcom/anythink/expressad/foundation/h/w;->a(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto/16 :goto_2

    .line 1340
    :cond_0
    iget-object p2, p0, Lcom/anythink/expressad/reward/a/d;->v:Landroid/content/Context;

    if-eqz p1, :cond_1

    .line 1341
    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const-string p1, "anythink_BaseAdActivity"

    const-string v0, "Activity is null"

    .line 1344
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object p1, p2

    .line 1348
    :goto_0
    new-instance p2, Landroid/content/Intent;

    const-class v0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;

    invoke-direct {p2, p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1349
    instance-of v0, p1, Landroid/app/Activity;

    if-nez v0, :cond_2

    const/high16 v0, 0x10000000

    .line 1350
    invoke-virtual {p2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1352
    :cond_2
    sget-object v0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/anythink/expressad/reward/a/d;->w:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1353
    sget-object v0, Lcom/anythink/expressad/a;->y:Ljava/lang/String;

    iget-object v1, p0, Lcom/anythink/expressad/reward/a/d;->x:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1354
    sget-object v0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->c:Ljava/lang/String;

    invoke-virtual {p2, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1355
    sget-object p3, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->d:Ljava/lang/String;

    invoke-virtual {p2, p3, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1356
    sget-object p3, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->e:Ljava/lang/String;

    iget-boolean p5, p0, Lcom/anythink/expressad/reward/a/d;->T:Z

    invoke-virtual {p2, p3, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1357
    sget-object p3, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->f:Ljava/lang/String;

    iget-boolean p5, p0, Lcom/anythink/expressad/reward/a/d;->U:Z

    invoke-virtual {p2, p3, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1358
    sget-object p3, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->l:Ljava/lang/String;

    invoke-virtual {p2, p3, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1359
    sget-object p3, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->m:Ljava/lang/String;

    invoke-virtual {p2, p3, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1361
    invoke-static {}, Lcom/anythink/expressad/videocommon/b/e;->a()Lcom/anythink/expressad/videocommon/b/e;

    move-result-object p3

    iget-object p5, p0, Lcom/anythink/expressad/reward/a/d;->w:Ljava/lang/String;

    invoke-virtual {p3, p5}, Lcom/anythink/expressad/videocommon/b/e;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object p3

    .line 1362
    new-instance p5, Ljava/lang/StringBuilder;

    const-string p6, "cur showing Offer requestId"

    invoke-direct {p5, p6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 p6, 0x0

    invoke-interface {p3, p6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p7

    check-cast p7, Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {p7}, Lcom/anythink/expressad/foundation/d/c;->Z()Ljava/lang/String;

    move-result-object p7

    invoke-virtual {p5, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p3, :cond_4

    .line 1363
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p5

    if-lez p5, :cond_4

    .line 1364
    new-instance p5, Ljava/lang/StringBuilder;

    const-string p7, "can show data: "

    invoke-direct {p5, p7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p7

    invoke-virtual {p5, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1365
    invoke-interface {p3, p6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/anythink/expressad/foundation/d/c;

    if-eqz p3, :cond_3

    .line 1367
    invoke-virtual {p3}, Lcom/anythink/expressad/foundation/d/c;->Z()Ljava/lang/String;

    move-result-object p5

    iput-object p5, p0, Lcom/anythink/expressad/reward/a/d;->n:Ljava/lang/String;

    :cond_3
    if-eqz p3, :cond_5

    .line 1369
    invoke-virtual {p3}, Lcom/anythink/expressad/foundation/d/c;->ar()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_5

    const/4 p3, 0x1

    const/4 p6, 0x1

    goto :goto_1

    .line 1375
    :cond_4
    iget-object p3, p0, Lcom/anythink/expressad/reward/a/d;->F:Lcom/anythink/expressad/video/bt/module/b/h;

    if-eqz p3, :cond_5

    const-string p1, "load failed"

    .line 1376
    invoke-interface {p3, p1}, Lcom/anythink/expressad/video/bt/module/b/h;->a(Ljava/lang/String;)V

    return-void

    .line 1381
    :cond_5
    :goto_1
    sget-object p3, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->g:Ljava/lang/String;

    invoke-virtual {p2, p3, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1382
    iget-boolean p3, p0, Lcom/anythink/expressad/reward/a/d;->T:Z

    if-eqz p3, :cond_6

    .line 1383
    sget-object p3, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->i:Ljava/lang/String;

    iget p5, p0, Lcom/anythink/expressad/reward/a/d;->W:I

    invoke-virtual {p2, p3, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1384
    sget-object p3, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->j:Ljava/lang/String;

    iget p5, p0, Lcom/anythink/expressad/reward/a/d;->X:I

    invoke-virtual {p2, p3, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1385
    sget-object p3, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->k:Ljava/lang/String;

    iget p5, p0, Lcom/anythink/expressad/reward/a/d;->Y:I

    invoke-virtual {p2, p3, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1388
    :cond_6
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_7

    .line 1389
    sget-object p3, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->b:Ljava/lang/String;

    invoke-virtual {p2, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 8018
    :cond_7
    invoke-static {}, Lcom/anythink/expressad/reward/a/e$a;->a()Lcom/anythink/expressad/reward/a/e;

    move-result-object p3

    .line 1391
    iget-object p4, p0, Lcom/anythink/expressad/reward/a/d;->x:Ljava/lang/String;

    iget-object p5, p0, Lcom/anythink/expressad/reward/a/d;->w:Ljava/lang/String;

    iget-object p6, p0, Lcom/anythink/expressad/reward/a/d;->I:Lcom/anythink/expressad/videocommon/e/d;

    invoke-virtual {p3, p4, p5, p6}, Lcom/anythink/expressad/reward/a/e;->a(Ljava/lang/String;Ljava/lang/String;Lcom/anythink/expressad/videocommon/e/d;)V

    .line 1392
    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void

    .line 1333
    :cond_8
    :goto_2
    iget-object p1, p0, Lcom/anythink/expressad/reward/a/d;->F:Lcom/anythink/expressad/video/bt/module/b/h;

    if-eqz p1, :cond_9

    const-string p2, "context or unitid is null"

    .line 1334
    invoke-interface {p1, p2}, Lcom/anythink/expressad/video/bt/module/b/h;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_9
    return-void

    :catch_0
    move-exception p1

    .line 1395
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1396
    iget-object p2, p0, Lcom/anythink/expressad/reward/a/d;->F:Lcom/anythink/expressad/video/bt/module/b/h;

    if-eqz p2, :cond_a

    .line 1397
    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "show failed, exception is "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/anythink/expressad/video/bt/module/b/h;->a(Ljava/lang/String;)V

    :cond_a
    return-void
.end method

.method public final a(Lcom/anythink/expressad/foundation/d/d;)V
    .locals 3

    const/4 v0, 0x1

    .line 1477
    iput v0, p0, Lcom/anythink/expressad/reward/a/d;->z:I

    const/16 v1, 0x8

    .line 1478
    iput v1, p0, Lcom/anythink/expressad/reward/a/d;->B:I

    .line 1479
    iput-boolean v0, p0, Lcom/anythink/expressad/reward/a/d;->C:Z

    .line 1482
    iget-object v0, p0, Lcom/anythink/expressad/reward/a/d;->aa:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_0

    .line 1483
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 1486
    :cond_0
    iget-object v0, p0, Lcom/anythink/expressad/reward/a/d;->ag:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 1487
    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_1
    const/4 v0, 0x0

    .line 1490
    iput-boolean v0, p0, Lcom/anythink/expressad/reward/a/d;->p:Z

    .line 1491
    iput-boolean v0, p0, Lcom/anythink/expressad/reward/a/d;->q:Z

    .line 1492
    iget-object v1, p0, Lcom/anythink/expressad/reward/a/d;->c:Ljava/lang/Object;

    monitor-enter v1

    .line 1493
    :try_start_0
    iget-boolean v2, p0, Lcom/anythink/expressad/reward/a/d;->r:Z

    if-eqz v2, :cond_2

    .line 1494
    iput-boolean v0, p0, Lcom/anythink/expressad/reward/a/d;->r:Z

    .line 1496
    :cond_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1497
    iput-boolean v0, p0, Lcom/anythink/expressad/reward/a/d;->t:Z

    .line 1498
    iput-boolean v0, p0, Lcom/anythink/expressad/reward/a/d;->s:Z

    .line 1513
    iget-object v1, p0, Lcom/anythink/expressad/reward/a/d;->v:Landroid/content/Context;

    if-nez v1, :cond_3

    const-string p1, "Context is null"

    .line 1514
    invoke-direct {p0, p1}, Lcom/anythink/expressad/reward/a/d;->b(Ljava/lang/String;)V

    return-void

    .line 1517
    :cond_3
    iget-object v1, p0, Lcom/anythink/expressad/reward/a/d;->w:Ljava/lang/String;

    invoke-static {v1}, Lcom/anythink/expressad/foundation/h/w;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string p1, "UnitId is null"

    .line 1518
    invoke-direct {p0, p1}, Lcom/anythink/expressad/reward/a/d;->b(Ljava/lang/String;)V

    return-void

    .line 1521
    :cond_4
    iget-object v1, p0, Lcom/anythink/expressad/reward/a/d;->I:Lcom/anythink/expressad/videocommon/e/d;

    if-nez v1, :cond_5

    const-string p1, "RewardUnitSetting is null"

    .line 1522
    invoke-direct {p0, p1}, Lcom/anythink/expressad/reward/a/d;->b(Ljava/lang/String;)V

    return-void

    .line 8806
    :cond_5
    :try_start_1
    sget-object v1, Lcom/anythink/expressad/foundation/g/a/f;->h:Ljava/util/Map;

    if-eqz v1, :cond_6

    sget-object v1, Lcom/anythink/expressad/foundation/g/a/f;->h:Ljava/util/Map;

    .line 8807
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_6

    .line 8808
    sget-object v1, Lcom/anythink/expressad/foundation/g/a/f;->h:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 8811
    sget-boolean v2, Lcom/anythink/expressad/a;->a:Z

    if-eqz v2, :cond_6

    .line 8812
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 9583
    :cond_6
    :goto_0
    :try_start_2
    iput-object p1, p0, Lcom/anythink/expressad/reward/a/d;->Z:Lcom/anythink/expressad/foundation/d/d;

    .line 9585
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "V3 data just requested back,requestId "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/anythink/expressad/reward/a/d;->Z:Lcom/anythink/expressad/foundation/d/d;

    invoke-virtual {v1}, Lcom/anythink/expressad/foundation/d/d;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9586
    iget-object p1, p0, Lcom/anythink/expressad/reward/a/d;->Z:Lcom/anythink/expressad/foundation/d/d;

    if-eqz p1, :cond_7

    .line 10374
    iget-object p1, p1, Lcom/anythink/expressad/foundation/d/d;->J:Ljava/util/ArrayList;

    if-eqz p1, :cond_7

    .line 9586
    iget-object p1, p0, Lcom/anythink/expressad/reward/a/d;->Z:Lcom/anythink/expressad/foundation/d/d;

    .line 11374
    iget-object p1, p1, Lcom/anythink/expressad/foundation/d/d;->J:Ljava/util/ArrayList;

    .line 9586
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 9593
    :cond_7
    iget-object p1, p0, Lcom/anythink/expressad/reward/a/d;->Z:Lcom/anythink/expressad/foundation/d/d;

    invoke-direct {p0, p1}, Lcom/anythink/expressad/reward/a/d;->c(Lcom/anythink/expressad/foundation/d/d;)V

    .line 9594
    iget-object p1, p0, Lcom/anythink/expressad/reward/a/d;->Z:Lcom/anythink/expressad/foundation/d/d;

    invoke-virtual {p1}, Lcom/anythink/expressad/foundation/d/d;->f()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/anythink/expressad/reward/a/d;->m:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    return-void

    :catch_1
    move-exception p1

    .line 9596
    sget-boolean v1, Lcom/anythink/expressad/a;->a:Z

    if-eqz v1, :cond_8

    .line 9597
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 9600
    :cond_8
    iget-object p1, p0, Lcom/anythink/expressad/reward/a/d;->aa:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz p1, :cond_9

    .line 9601
    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 9603
    :cond_9
    iget-object p1, p0, Lcom/anythink/expressad/reward/a/d;->ag:Ljava/util/List;

    if-eqz p1, :cond_a

    .line 9604
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 9606
    :cond_a
    iput-boolean v0, p0, Lcom/anythink/expressad/reward/a/d;->p:Z

    .line 9607
    iput-boolean v0, p0, Lcom/anythink/expressad/reward/a/d;->q:Z

    .line 9608
    iget-object p1, p0, Lcom/anythink/expressad/reward/a/d;->c:Ljava/lang/Object;

    monitor-enter p1

    .line 9609
    :try_start_3
    iget-boolean v1, p0, Lcom/anythink/expressad/reward/a/d;->r:Z

    if-eqz v1, :cond_b

    .line 9610
    iput-boolean v0, p0, Lcom/anythink/expressad/reward/a/d;->r:Z

    .line 9612
    :cond_b
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 9613
    iput-boolean v0, p0, Lcom/anythink/expressad/reward/a/d;->t:Z

    .line 9614
    iput-boolean v0, p0, Lcom/anythink/expressad/reward/a/d;->s:Z

    const-string p1, "exception after load success"

    .line 9620
    invoke-direct {p0, p1}, Lcom/anythink/expressad/reward/a/d;->b(Ljava/lang/String;)V

    .line 9621
    invoke-direct {p0}, Lcom/anythink/expressad/reward/a/d;->r()V

    return-void

    :catchall_0
    move-exception v0

    .line 9612
    monitor-exit p1

    throw v0

    :catchall_1
    move-exception p1

    .line 1496
    monitor-exit v1

    throw p1
.end method

.method public final a(Lcom/anythink/expressad/reward/a/b;)V
    .locals 0

    .line 1896
    iput-object p1, p0, Lcom/anythink/expressad/reward/a/d;->G:Lcom/anythink/expressad/reward/a/b;

    return-void
.end method

.method public final a(Lcom/anythink/expressad/videocommon/e/d;)V
    .locals 1

    .line 1088
    :try_start_0
    iput-object p1, p0, Lcom/anythink/expressad/reward/a/d;->I:Lcom/anythink/expressad/videocommon/e/d;

    if-eqz p1, :cond_0

    .line 1095
    invoke-virtual {p1}, Lcom/anythink/expressad/videocommon/e/d;->V()I

    move-result p1

    mul-int/lit16 p1, p1, 0x3e8

    sget v0, Lcom/anythink/expressad/foundation/g/a;->cq:I

    if-eq p1, v0, :cond_0

    .line 1096
    iget-object p1, p0, Lcom/anythink/expressad/reward/a/d;->I:Lcom/anythink/expressad/videocommon/e/d;

    invoke-virtual {p1}, Lcom/anythink/expressad/videocommon/e/d;->V()I

    move-result p1

    mul-int/lit16 p1, p1, 0x3e8

    sput p1, Lcom/anythink/expressad/foundation/g/a;->cq:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    .line 1099
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    return-void
.end method

.method public final a(Z)V
    .locals 0

    .line 178
    iput-boolean p1, p0, Lcom/anythink/expressad/reward/a/d;->T:Z

    return-void
.end method

.method public final a()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final a(Ljava/util/List;ZI)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/anythink/expressad/foundation/d/c;",
            ">;ZI)Z"
        }
    .end annotation

    .line 1113
    invoke-direct {p0, p1, p2, p3}, Lcom/anythink/expressad/reward/a/d;->b(Ljava/util/List;ZI)Z

    move-result p1

    return p1
.end method

.method public final b()V
    .locals 0

    return-void
.end method

.method public final b(Z)V
    .locals 0

    .line 182
    iput-boolean p1, p0, Lcom/anythink/expressad/reward/a/d;->U:Z

    return-void
.end method

.method public final c(Z)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_1

    .line 209
    iget-object p1, p0, Lcom/anythink/expressad/reward/a/d;->n:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 210
    invoke-static {}, Lcom/anythink/expressad/videocommon/b/e;->a()Lcom/anythink/expressad/videocommon/b/e;

    move-result-object p1

    iget-object v0, p0, Lcom/anythink/expressad/reward/a/d;->w:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/anythink/expressad/videocommon/b/e;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 211
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    .line 212
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/anythink/expressad/foundation/d/c;

    if-eqz p1, :cond_0

    .line 214
    invoke-virtual {p1}, Lcom/anythink/expressad/foundation/d/c;->Z()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/anythink/expressad/reward/a/d;->n:Ljava/lang/String;

    .line 218
    :cond_0
    iget-object p1, p0, Lcom/anythink/expressad/reward/a/d;->n:Ljava/lang/String;

    return-object p1

    .line 220
    :cond_1
    iget-object p1, p0, Lcom/anythink/expressad/reward/a/d;->m:Ljava/lang/String;

    return-object p1
.end method

.method public final c()Z
    .locals 3

    .line 1256
    iget-object v0, p0, Lcom/anythink/expressad/reward/a/d;->aa:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1260
    :cond_0
    iget-object v0, p0, Lcom/anythink/expressad/reward/a/d;->aa:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anythink/expressad/foundation/d/c;

    .line 1262
    iget-object v1, p0, Lcom/anythink/expressad/reward/a/d;->aa:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/d/c;->ar()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/d/c;->ap()I

    move-result v0

    .line 7113
    invoke-direct {p0, v1, v2, v0}, Lcom/anythink/expressad/reward/a/d;->b(Ljava/util/List;ZI)Z

    move-result v0

    return v0

    :cond_1
    :goto_0
    return v1
.end method

.method public final d()V
    .locals 0

    return-void
.end method

.method public final d(Z)V
    .locals 0

    if-nez p1, :cond_0

    .line 2535
    iget-object p1, p0, Lcom/anythink/expressad/reward/a/d;->aa:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result p1

    if-lez p1, :cond_0

    .line 2536
    invoke-static {}, Lcom/anythink/expressad/videocommon/a/a;->a()Lcom/anythink/expressad/videocommon/a/a;

    :cond_0
    return-void
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    .line 204
    iget-object v0, p0, Lcom/anythink/expressad/reward/a/d;->w:Ljava/lang/String;

    return-object v0
.end method

.method public final e(Z)V
    .locals 6

    const-string v0, "_"

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 2543
    iget-object p1, p0, Lcom/anythink/expressad/reward/a/d;->ah:Ljava/util/List;

    if-eqz p1, :cond_4

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_4

    .line 2544
    iget-object p1, p0, Lcom/anythink/expressad/reward/a/d;->ah:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/anythink/expressad/foundation/d/c;

    if-eqz v2, :cond_0

    .line 2546
    invoke-virtual {v2, v1}, Lcom/anythink/expressad/foundation/d/c;->l(I)V

    .line 2547
    invoke-virtual {v2}, Lcom/anythink/expressad/foundation/d/c;->M()Lcom/anythink/expressad/foundation/d/c$c;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/anythink/expressad/foundation/d/c;->M()Lcom/anythink/expressad/foundation/d/c$c;

    move-result-object v3

    invoke-virtual {v3}, Lcom/anythink/expressad/foundation/d/c$c;->e()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2548
    invoke-static {}, Lcom/anythink/expressad/videocommon/b/l;->a()Lcom/anythink/expressad/videocommon/b/l;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/anythink/expressad/reward/a/d;->w:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/anythink/expressad/foundation/d/c;->Z()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/anythink/expressad/foundation/d/c;->M()Lcom/anythink/expressad/foundation/d/c$c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/anythink/expressad/foundation/d/c$c;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2, v1}, Lcom/anythink/expressad/videocommon/b/l;->c(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_1
    return-void

    .line 2556
    :cond_2
    iget-object p1, p0, Lcom/anythink/expressad/reward/a/d;->aa:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result p1

    if-lez p1, :cond_4

    .line 2558
    iget-object p1, p0, Lcom/anythink/expressad/reward/a/d;->aa:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/anythink/expressad/foundation/d/c;

    if-eqz v2, :cond_3

    .line 2560
    invoke-virtual {v2, v1}, Lcom/anythink/expressad/foundation/d/c;->l(I)V

    .line 2561
    invoke-virtual {v2}, Lcom/anythink/expressad/foundation/d/c;->M()Lcom/anythink/expressad/foundation/d/c$c;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v2}, Lcom/anythink/expressad/foundation/d/c;->M()Lcom/anythink/expressad/foundation/d/c$c;

    move-result-object v3

    invoke-virtual {v3}, Lcom/anythink/expressad/foundation/d/c$c;->e()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 2562
    invoke-static {}, Lcom/anythink/expressad/videocommon/b/l;->a()Lcom/anythink/expressad/videocommon/b/l;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/anythink/expressad/reward/a/d;->w:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/anythink/expressad/foundation/d/c;->Z()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/anythink/expressad/foundation/d/c;->M()Lcom/anythink/expressad/foundation/d/c$c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/anythink/expressad/foundation/d/c$c;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2, v1}, Lcom/anythink/expressad/videocommon/b/l;->c(Ljava/lang/String;Z)V

    goto :goto_1

    :cond_4
    return-void
.end method

.method public final f()Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/anythink/expressad/foundation/d/c;",
            ">;"
        }
    .end annotation

    .line 3996
    iget-object v0, p0, Lcom/anythink/expressad/reward/a/d;->aa:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object v0
.end method

.method public final f(Z)Z
    .locals 6

    const-string v0, "_"

    const/4 v1, 0x1

    if-eqz p1, :cond_2

    .line 2574
    iget-object p1, p0, Lcom/anythink/expressad/reward/a/d;->ah:Ljava/util/List;

    if-eqz p1, :cond_5

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_5

    .line 2576
    iget-object p1, p0, Lcom/anythink/expressad/reward/a/d;->ah:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/anythink/expressad/foundation/d/c;

    if-eqz v2, :cond_0

    .line 2578
    invoke-virtual {v2, v1}, Lcom/anythink/expressad/foundation/d/c;->l(I)V

    .line 2579
    invoke-virtual {v2}, Lcom/anythink/expressad/foundation/d/c;->M()Lcom/anythink/expressad/foundation/d/c$c;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/anythink/expressad/foundation/d/c;->M()Lcom/anythink/expressad/foundation/d/c$c;

    move-result-object v3

    invoke-virtual {v3}, Lcom/anythink/expressad/foundation/d/c$c;->e()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2580
    invoke-static {}, Lcom/anythink/expressad/videocommon/b/l;->a()Lcom/anythink/expressad/videocommon/b/l;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/anythink/expressad/reward/a/d;->w:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/anythink/expressad/foundation/d/c;->Z()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/anythink/expressad/foundation/d/c;->M()Lcom/anythink/expressad/foundation/d/c$c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/anythink/expressad/foundation/d/c$c;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2, v1}, Lcom/anythink/expressad/videocommon/b/l;->c(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_1
    return v1

    .line 2589
    :cond_2
    iget-object p1, p0, Lcom/anythink/expressad/reward/a/d;->aa:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result p1

    if-lez p1, :cond_5

    .line 2591
    iget-object p1, p0, Lcom/anythink/expressad/reward/a/d;->aa:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/anythink/expressad/foundation/d/c;

    if-eqz v2, :cond_3

    .line 2593
    invoke-virtual {v2, v1}, Lcom/anythink/expressad/foundation/d/c;->l(I)V

    .line 2594
    invoke-virtual {v2}, Lcom/anythink/expressad/foundation/d/c;->M()Lcom/anythink/expressad/foundation/d/c$c;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v2}, Lcom/anythink/expressad/foundation/d/c;->M()Lcom/anythink/expressad/foundation/d/c$c;

    move-result-object v3

    invoke-virtual {v3}, Lcom/anythink/expressad/foundation/d/c$c;->e()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 2595
    invoke-static {}, Lcom/anythink/expressad/videocommon/b/l;->a()Lcom/anythink/expressad/videocommon/b/l;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/anythink/expressad/reward/a/d;->w:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/anythink/expressad/foundation/d/c;->Z()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/anythink/expressad/foundation/d/c;->M()Lcom/anythink/expressad/foundation/d/c$c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/anythink/expressad/foundation/d/c$c;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2, v1}, Lcom/anythink/expressad/videocommon/b/l;->c(Ljava/lang/String;Z)V

    goto :goto_1

    :cond_4
    return v1

    :cond_5
    const/4 p1, 0x0

    return p1
.end method
