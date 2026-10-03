.class public abstract Lcom/anythink/basead/ui/BaseScreenATView;
.super Lcom/anythink/basead/ui/BaseATView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/anythink/basead/ui/BaseScreenATView$a;
    }
.end annotation


# static fields
.field public static final FORMAT_INTERSTITIAL:I = 0x3

.field public static final FORMAT_REWARD_VIDEO:I = 0x1

.field public static final TAG:Ljava/lang/String; = "BaseScreenATView"


# instance fields
.field protected A:I

.field B:J

.field protected C:I

.field protected D:Z

.field protected E:I

.field protected F:I

.field protected G:Z

.field protected H:Z

.field protected I:Z

.field protected J:F

.field protected K:Landroid/widget/RelativeLayout;

.field protected L:Lcom/anythink/basead/ui/animplayerview/BasePlayerView;

.field protected M:Lcom/anythink/basead/ui/PanelView;

.field protected N:Lcom/anythink/basead/ui/BaseEndCardView;

.field protected O:Lcom/anythink/basead/ui/b;

.field protected P:Lcom/anythink/basead/ui/CountDownView;

.field protected Q:Lcom/anythink/basead/ui/CloseImageView;

.field protected R:Landroid/view/ViewGroup;

.field protected S:Lcom/anythink/basead/ui/MuteImageView;

.field protected T:Lcom/anythink/basead/e/h;

.field U:Ljava/lang/Runnable;

.field V:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field protected W:I

.field protected aa:I

.field protected ab:I

.field protected ac:I

.field private ad:J

.field private ae:J

.field private af:J

.field private ag:J

.field private ah:Z

.field private ai:Z

.field private aj:Z

.field private ak:Lcom/anythink/basead/c;

.field protected v:I

.field protected w:I

.field protected x:I

.field protected y:I

.field protected z:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 148
    invoke-direct {p0, p1}, Lcom/anythink/basead/ui/BaseATView;-><init>(Landroid/content/Context;)V

    const/16 p1, 0x64

    .line 121
    iput p1, p0, Lcom/anythink/basead/ui/BaseScreenATView;->F:I

    const/4 p1, 0x0

    .line 123
    iput-boolean p1, p0, Lcom/anythink/basead/ui/BaseScreenATView;->ah:Z

    .line 344
    new-instance p1, Lcom/anythink/basead/ui/BaseScreenATView$1;

    invoke-direct {p1, p0}, Lcom/anythink/basead/ui/BaseScreenATView$1;-><init>(Lcom/anythink/basead/ui/BaseScreenATView;)V

    iput-object p1, p0, Lcom/anythink/basead/ui/BaseScreenATView;->U:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/anythink/core/common/f/m;Lcom/anythink/core/common/f/l;Ljava/lang/String;II)V
    .locals 3

    .line 154
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/anythink/basead/ui/BaseATView;-><init>(Landroid/content/Context;Lcom/anythink/core/common/f/m;Lcom/anythink/core/common/f/l;Ljava/lang/String;)V

    const/16 p1, 0x64

    .line 121
    iput p1, p0, Lcom/anythink/basead/ui/BaseScreenATView;->F:I

    const/4 p2, 0x0

    .line 123
    iput-boolean p2, p0, Lcom/anythink/basead/ui/BaseScreenATView;->ah:Z

    .line 344
    new-instance p3, Lcom/anythink/basead/ui/BaseScreenATView$1;

    invoke-direct {p3, p0}, Lcom/anythink/basead/ui/BaseScreenATView$1;-><init>(Lcom/anythink/basead/ui/BaseScreenATView;)V

    iput-object p3, p0, Lcom/anythink/basead/ui/BaseScreenATView;->U:Ljava/lang/Runnable;

    .line 156
    iput p5, p0, Lcom/anythink/basead/ui/BaseScreenATView;->v:I

    .line 157
    iput p6, p0, Lcom/anythink/basead/ui/BaseScreenATView;->w:I

    .line 2167
    iget-object p3, p0, Lcom/anythink/basead/ui/BaseScreenATView;->b:Lcom/anythink/core/common/f/m;

    iget-object p3, p3, Lcom/anythink/core/common/f/m;->n:Lcom/anythink/core/common/f/n;

    invoke-virtual {p3}, Lcom/anythink/core/common/f/n;->B()I

    move-result p3

    if-lez p3, :cond_0

    iget-object p3, p0, Lcom/anythink/basead/ui/BaseScreenATView;->b:Lcom/anythink/core/common/f/m;

    iget-object p3, p3, Lcom/anythink/core/common/f/m;->n:Lcom/anythink/core/common/f/n;

    invoke-virtual {p3}, Lcom/anythink/core/common/f/n;->B()I

    move-result p3

    mul-int/lit16 p3, p3, 0x3e8

    goto :goto_0

    :cond_0
    iget-object p3, p0, Lcom/anythink/basead/ui/BaseScreenATView;->b:Lcom/anythink/core/common/f/m;

    iget-object p3, p3, Lcom/anythink/core/common/f/m;->n:Lcom/anythink/core/common/f/n;

    invoke-virtual {p3}, Lcom/anythink/core/common/f/n;->B()I

    move-result p3

    :goto_0
    int-to-long p3, p3

    iput-wide p3, p0, Lcom/anythink/basead/ui/BaseScreenATView;->ae:J

    .line 2168
    iget-object p3, p0, Lcom/anythink/basead/ui/BaseScreenATView;->b:Lcom/anythink/core/common/f/m;

    iget-object p3, p3, Lcom/anythink/core/common/f/m;->n:Lcom/anythink/core/common/f/n;

    invoke-virtual {p3}, Lcom/anythink/core/common/f/n;->C()I

    move-result p3

    if-lez p3, :cond_1

    iget-object p3, p0, Lcom/anythink/basead/ui/BaseScreenATView;->b:Lcom/anythink/core/common/f/m;

    iget-object p3, p3, Lcom/anythink/core/common/f/m;->n:Lcom/anythink/core/common/f/n;

    invoke-virtual {p3}, Lcom/anythink/core/common/f/n;->C()I

    move-result p3

    mul-int/lit16 p3, p3, 0x3e8

    goto :goto_1

    :cond_1
    iget-object p3, p0, Lcom/anythink/basead/ui/BaseScreenATView;->b:Lcom/anythink/core/common/f/m;

    iget-object p3, p3, Lcom/anythink/core/common/f/m;->n:Lcom/anythink/core/common/f/n;

    invoke-virtual {p3}, Lcom/anythink/core/common/f/n;->C()I

    move-result p3

    :goto_1
    int-to-long p3, p3

    iput-wide p3, p0, Lcom/anythink/basead/ui/BaseScreenATView;->af:J

    const-wide/16 p5, 0x0

    cmp-long v0, p3, p5

    if-lez v0, :cond_2

    .line 2169
    iget-wide v0, p0, Lcom/anythink/basead/ui/BaseScreenATView;->ae:J

    cmp-long v2, v0, p5

    if-ltz v2, :cond_2

    add-long/2addr v0, p3

    .line 2170
    iput-wide v0, p0, Lcom/anythink/basead/ui/BaseScreenATView;->ag:J

    goto :goto_2

    .line 2172
    :cond_2
    iput-wide p3, p0, Lcom/anythink/basead/ui/BaseScreenATView;->ag:J

    .line 2175
    :goto_2
    iget-object p3, p0, Lcom/anythink/basead/ui/BaseScreenATView;->b:Lcom/anythink/core/common/f/m;

    iget-object p3, p3, Lcom/anythink/core/common/f/m;->n:Lcom/anythink/core/common/f/n;

    invoke-virtual {p3}, Lcom/anythink/core/common/f/n;->F()I

    move-result p3

    mul-int/lit16 p3, p3, 0x3e8

    iput p3, p0, Lcom/anythink/basead/ui/BaseScreenATView;->C:I

    .line 2176
    iget-object p3, p0, Lcom/anythink/basead/ui/BaseScreenATView;->b:Lcom/anythink/core/common/f/m;

    iget-object p3, p3, Lcom/anythink/core/common/f/m;->n:Lcom/anythink/core/common/f/n;

    invoke-virtual {p3}, Lcom/anythink/core/common/f/n;->E()I

    move-result p3

    const/4 p4, 0x1

    if-nez p3, :cond_3

    const/4 p2, 0x1

    :cond_3
    iput-boolean p2, p0, Lcom/anythink/basead/ui/BaseScreenATView;->I:Z

    .line 2179
    iget p2, p0, Lcom/anythink/basead/ui/BaseScreenATView;->v:I

    if-ne p4, p2, :cond_6

    .line 2180
    iget-object p2, p0, Lcom/anythink/basead/ui/BaseScreenATView;->c:Lcom/anythink/core/common/f/l;

    invoke-virtual {p2}, Lcom/anythink/core/common/f/l;->H()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 2181
    iput p1, p0, Lcom/anythink/basead/ui/BaseScreenATView;->F:I

    return-void

    .line 2182
    :cond_4
    iget-object p1, p0, Lcom/anythink/basead/ui/BaseScreenATView;->b:Lcom/anythink/core/common/f/m;

    iget-object p1, p1, Lcom/anythink/core/common/f/m;->n:Lcom/anythink/core/common/f/n;

    invoke-virtual {p1}, Lcom/anythink/core/common/f/n;->aj()I

    move-result p1

    if-ne p1, p4, :cond_5

    const/16 p1, 0x65

    .line 2184
    iput p1, p0, Lcom/anythink/basead/ui/BaseScreenATView;->F:I

    return-void

    .line 2185
    :cond_5
    iget-object p1, p0, Lcom/anythink/basead/ui/BaseScreenATView;->b:Lcom/anythink/core/common/f/m;

    iget-object p1, p1, Lcom/anythink/core/common/f/m;->n:Lcom/anythink/core/common/f/n;

    invoke-virtual {p1}, Lcom/anythink/core/common/f/n;->ak()I

    move-result p1

    if-lez p1, :cond_6

    .line 2187
    iget-object p1, p0, Lcom/anythink/basead/ui/BaseScreenATView;->b:Lcom/anythink/core/common/f/m;

    iget-object p1, p1, Lcom/anythink/core/common/f/m;->n:Lcom/anythink/core/common/f/n;

    invoke-virtual {p1}, Lcom/anythink/core/common/f/n;->ak()I

    move-result p1

    iput p1, p0, Lcom/anythink/basead/ui/BaseScreenATView;->F:I

    :cond_6
    return-void
.end method

.method private R()V
    .locals 7

    .line 167
    iget-object v0, p0, Lcom/anythink/basead/ui/BaseScreenATView;->b:Lcom/anythink/core/common/f/m;

    iget-object v0, v0, Lcom/anythink/core/common/f/m;->n:Lcom/anythink/core/common/f/n;

    invoke-virtual {v0}, Lcom/anythink/core/common/f/n;->B()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/anythink/basead/ui/BaseScreenATView;->b:Lcom/anythink/core/common/f/m;

    iget-object v0, v0, Lcom/anythink/core/common/f/m;->n:Lcom/anythink/core/common/f/n;

    invoke-virtual {v0}, Lcom/anythink/core/common/f/n;->B()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/anythink/basead/ui/BaseScreenATView;->b:Lcom/anythink/core/common/f/m;

    iget-object v0, v0, Lcom/anythink/core/common/f/m;->n:Lcom/anythink/core/common/f/n;

    invoke-virtual {v0}, Lcom/anythink/core/common/f/n;->B()I

    move-result v0

    :goto_0
    int-to-long v0, v0

    iput-wide v0, p0, Lcom/anythink/basead/ui/BaseScreenATView;->ae:J

    .line 168
    iget-object v0, p0, Lcom/anythink/basead/ui/BaseScreenATView;->b:Lcom/anythink/core/common/f/m;

    iget-object v0, v0, Lcom/anythink/core/common/f/m;->n:Lcom/anythink/core/common/f/n;

    invoke-virtual {v0}, Lcom/anythink/core/common/f/n;->C()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/anythink/basead/ui/BaseScreenATView;->b:Lcom/anythink/core/common/f/m;

    iget-object v0, v0, Lcom/anythink/core/common/f/m;->n:Lcom/anythink/core/common/f/n;

    invoke-virtual {v0}, Lcom/anythink/core/common/f/n;->C()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/anythink/basead/ui/BaseScreenATView;->b:Lcom/anythink/core/common/f/m;

    iget-object v0, v0, Lcom/anythink/core/common/f/m;->n:Lcom/anythink/core/common/f/n;

    invoke-virtual {v0}, Lcom/anythink/core/common/f/n;->C()I

    move-result v0

    :goto_1
    int-to-long v0, v0

    iput-wide v0, p0, Lcom/anythink/basead/ui/BaseScreenATView;->af:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_2

    .line 169
    iget-wide v4, p0, Lcom/anythink/basead/ui/BaseScreenATView;->ae:J

    cmp-long v6, v4, v2

    if-ltz v6, :cond_2

    add-long/2addr v4, v0

    .line 170
    iput-wide v4, p0, Lcom/anythink/basead/ui/BaseScreenATView;->ag:J

    goto :goto_2

    .line 172
    :cond_2
    iput-wide v0, p0, Lcom/anythink/basead/ui/BaseScreenATView;->ag:J

    .line 175
    :goto_2
    iget-object v0, p0, Lcom/anythink/basead/ui/BaseScreenATView;->b:Lcom/anythink/core/common/f/m;

    iget-object v0, v0, Lcom/anythink/core/common/f/m;->n:Lcom/anythink/core/common/f/n;

    invoke-virtual {v0}, Lcom/anythink/core/common/f/n;->F()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    iput v0, p0, Lcom/anythink/basead/ui/BaseScreenATView;->C:I

    .line 176
    iget-object v0, p0, Lcom/anythink/basead/ui/BaseScreenATView;->b:Lcom/anythink/core/common/f/m;

    iget-object v0, v0, Lcom/anythink/core/common/f/m;->n:Lcom/anythink/core/common/f/n;

    invoke-virtual {v0}, Lcom/anythink/core/common/f/n;->E()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_3

    const/4 v0, 0x1

    goto :goto_3

    :cond_3
    const/4 v0, 0x0

    :goto_3
    iput-boolean v0, p0, Lcom/anythink/basead/ui/BaseScreenATView;->I:Z

    .line 179
    iget v0, p0, Lcom/anythink/basead/ui/BaseScreenATView;->v:I

    if-ne v1, v0, :cond_6

    .line 180
    iget-object v0, p0, Lcom/anythink/basead/ui/BaseScreenATView;->c:Lcom/anythink/core/common/f/l;

    invoke-virtual {v0}, Lcom/anythink/core/common/f/l;->H()Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0x64

    .line 181
    iput v0, p0, Lcom/anythink/basead/ui/BaseScreenATView;->F:I

    return-void

    .line 182
    :cond_4
    iget-object v0, p0, Lcom/anythink/basead/ui/BaseScreenATView;->b:Lcom/anythink/core/common/f/m;

    iget-object v0, v0, Lcom/anythink/core/common/f/m;->n:Lcom/anythink/core/common/f/n;

    invoke-virtual {v0}, Lcom/anythink/core/common/f/n;->aj()I

    move-result v0

    if-ne v0, v1, :cond_5

    const/16 v0, 0x65

    .line 184
    iput v0, p0, Lcom/anythink/basead/ui/BaseScreenATView;->F:I

    return-void

    .line 185
    :cond_5
    iget-object v0, p0, Lcom/anythink/basead/ui/BaseScreenATView;->b:Lcom/anythink/core/common/f/m;

    iget-object v0, v0, Lcom/anythink/core/common/f/m;->n:Lcom/anythink/core/common/f/n;

    invoke-virtual {v0}, Lcom/anythink/core/common/f/n;->ak()I

    move-result v0

    if-lez v0, :cond_6

    .line 187
    iget-object v0, p0, Lcom/anythink/basead/ui/BaseScreenATView;->b:Lcom/anythink/core/common/f/m;

    iget-object v0, v0, Lcom/anythink/core/common/f/m;->n:Lcom/anythink/core/common/f/n;

    invoke-virtual {v0}, Lcom/anythink/core/common/f/n;->ak()I

    move-result v0

    iput v0, p0, Lcom/anythink/basead/ui/BaseScreenATView;->F:I

    :cond_6
    return-void
.end method

.method private S()V
    .locals 2

    .line 5544
    iget-object v0, p0, Lcom/anythink/basead/ui/BaseATView;->c:Lcom/anythink/core/common/f/l;

    invoke-static {v0}, Lcom/anythink/basead/a/d;->b(Lcom/anythink/core/common/f/l;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 332
    iget-object v0, p0, Lcom/anythink/basead/ui/BaseScreenATView;->b:Lcom/anythink/core/common/f/m;

    iget-object v1, p0, Lcom/anythink/basead/ui/BaseScreenATView;->c:Lcom/anythink/core/common/f/l;

    invoke-static {v0, v1}, Lcom/anythink/basead/a/b/c;->a(Lcom/anythink/core/common/f/m;Lcom/anythink/core/common/f/l;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 336
    iget-object v0, p0, Lcom/anythink/basead/ui/BaseScreenATView;->N:Lcom/anythink/basead/ui/BaseEndCardView;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 337
    invoke-direct {p0, v0}, Lcom/anythink/basead/ui/BaseScreenATView;->b(Z)Lcom/anythink/basead/ui/BaseEndCardView;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/basead/ui/BaseScreenATView;->N:Lcom/anythink/basead/ui/BaseEndCardView;

    :cond_0
    return-void
.end method

.method private T()V
    .locals 2

    .line 375
    invoke-virtual {p0}, Lcom/anythink/basead/ui/BaseScreenATView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 376
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v1, p0, Lcom/anythink/basead/ui/BaseScreenATView;->x:I

    .line 377
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v0, p0, Lcom/anythink/basead/ui/BaseScreenATView;->y:I

    .line 379
    iget v1, p0, Lcom/anythink/basead/ui/BaseScreenATView;->x:I

    iput v1, p0, Lcom/anythink/basead/ui/BaseScreenATView;->W:I

    .line 380
    iput v0, p0, Lcom/anythink/basead/ui/BaseScreenATView;->aa:I

    return-void
.end method

.method private U()V
    .locals 4

    .line 629
    iget v0, p0, Lcom/anythink/basead/ui/BaseScreenATView;->F:I

    const/16 v1, 0x64

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 630
    invoke-direct {p0, v0}, Lcom/anythink/basead/ui/BaseScreenATView;->a(Ljava/util/List;)V

    return-void

    .line 633
    :cond_0
    new-instance v0, Lcom/anythink/basead/ui/BaseScreenATView$7;

    invoke-direct {v0, p0}, Lcom/anythink/basead/ui/BaseScreenATView$7;-><init>(Lcom/anythink/basead/ui/BaseScreenATView;)V

    .line 6418
    invoke-static {}, Lcom/anythink/core/common/o/b/b;->a()Lcom/anythink/core/common/o/b/b;

    move-result-object v1

    new-instance v2, Lcom/anythink/basead/ui/BaseScreenATView$5;

    invoke-direct {v2, p0, v0}, Lcom/anythink/basead/ui/BaseScreenATView$5;-><init>(Lcom/anythink/basead/ui/BaseScreenATView;Lcom/anythink/basead/ui/BaseScreenATView$a;)V

    const/4 v0, 0x2

    const/4 v3, 0x1

    .line 7137
    invoke-virtual {v1, v2, v0, v3}, Lcom/anythink/core/common/o/b/b;->a(Ljava/lang/Runnable;IZ)V

    return-void
.end method

.method private V()V
    .locals 1

    .line 765
    iget-object v0, p0, Lcom/anythink/basead/ui/BaseScreenATView;->N:Lcom/anythink/basead/ui/BaseEndCardView;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 766
    invoke-direct {p0, v0}, Lcom/anythink/basead/ui/BaseScreenATView;->b(Z)Lcom/anythink/basead/ui/BaseEndCardView;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/basead/ui/BaseScreenATView;->N:Lcom/anythink/basead/ui/BaseEndCardView;

    .line 769
    :cond_0
    invoke-virtual {p0}, Lcom/anythink/basead/ui/BaseScreenATView;->K()V

    .line 770
    invoke-virtual {p0}, Lcom/anythink/basead/ui/BaseScreenATView;->L()V

    return-void
.end method

.method private W()V
    .locals 4

    .line 778
    invoke-virtual {p0}, Lcom/anythink/basead/ui/BaseScreenATView;->r()I

    move-result v0

    iput v0, p0, Lcom/anythink/basead/ui/BaseScreenATView;->E:I

    .line 780
    new-instance v0, Lcom/anythink/basead/ui/EndCardView;

    invoke-virtual {p0}, Lcom/anythink/basead/ui/BaseScreenATView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/anythink/basead/ui/BaseScreenATView;->c:Lcom/anythink/core/common/f/l;

    iget-object v3, p0, Lcom/anythink/basead/ui/BaseScreenATView;->b:Lcom/anythink/core/common/f/m;

    invoke-direct {v0, v1, v2, v3}, Lcom/anythink/basead/ui/EndCardView;-><init>(Landroid/content/Context;Lcom/anythink/core/common/f/l;Lcom/anythink/core/common/f/m;)V

    .line 781
    iget v1, p0, Lcom/anythink/basead/ui/BaseScreenATView;->x:I

    iget v2, p0, Lcom/anythink/basead/ui/BaseScreenATView;->y:I

    invoke-virtual {v0, v1, v2}, Lcom/anythink/basead/ui/EndCardView;->setSize(II)V

    .line 782
    new-instance v1, Lcom/anythink/basead/ui/BaseScreenATView$10;

    invoke-direct {v1, p0}, Lcom/anythink/basead/ui/BaseScreenATView$10;-><init>(Lcom/anythink/basead/ui/BaseScreenATView;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2, v1}, Lcom/anythink/basead/ui/EndCardView;->init(ZZLcom/anythink/basead/ui/EndCardView$a;)V

    .line 796
    iput-object v0, p0, Lcom/anythink/basead/ui/BaseScreenATView;->N:Lcom/anythink/basead/ui/BaseEndCardView;

    .line 798
    invoke-virtual {p0}, Lcom/anythink/basead/ui/BaseScreenATView;->K()V

    .line 801
    invoke-virtual {v0}, Lcom/anythink/basead/ui/EndCardView;->load()V

    .line 803
    iget v0, p0, Lcom/anythink/basead/ui/BaseScreenATView;->E:I

    invoke-virtual {p0, v0}, Lcom/anythink/basead/ui/BaseScreenATView;->b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 805
    invoke-virtual {p0}, Lcom/anythink/basead/ui/BaseScreenATView;->G()V

    .line 806
    invoke-virtual {p0}, Lcom/anythink/basead/ui/BaseScreenATView;->P()Lcom/anythink/basead/ui/PanelView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 807
    invoke-virtual {v0}, Lcom/anythink/basead/ui/PanelView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    .line 808
    invoke-virtual {v0}, Lcom/anythink/basead/ui/PanelView;->getCTAButton()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/anythink/basead/ui/PanelView;->getCTAButton()Landroid/view/View;

    move-result-object v1

    .line 809
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 810
    invoke-virtual {v0}, Lcom/anythink/basead/ui/PanelView;->getCTAButton()Landroid/view/View;

    move-result-object v0

    .line 10463
    iput-object v0, p0, Lcom/anythink/basead/ui/BaseATView;->q:Landroid/view/View;

    return-void

    .line 11463
    :cond_0
    iput-object v0, p0, Lcom/anythink/basead/ui/BaseATView;->q:Landroid/view/View;

    :cond_1
    return-void
.end method

.method private X()V
    .locals 5

    .line 828
    invoke-virtual {p0}, Lcom/anythink/basead/ui/BaseScreenATView;->t()V

    .line 830
    iget-object v0, p0, Lcom/anythink/basead/ui/BaseScreenATView;->ak:Lcom/anythink/basead/c;

    if-nez v0, :cond_0

    .line 831
    new-instance v0, Lcom/anythink/basead/c;

    invoke-direct {v0}, Lcom/anythink/basead/c;-><init>()V

    iput-object v0, p0, Lcom/anythink/basead/ui/BaseScreenATView;->ak:Lcom/anythink/basead/c;

    .line 833
    :cond_0
    iget-object v0, p0, Lcom/anythink/basead/ui/BaseScreenATView;->ak:Lcom/anythink/basead/c;

    invoke-virtual {p0}, Lcom/anythink/basead/ui/BaseScreenATView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/anythink/basead/ui/BaseScreenATView;->c:Lcom/anythink/core/common/f/l;

    iget-object v3, p0, Lcom/anythink/basead/ui/BaseScreenATView;->b:Lcom/anythink/core/common/f/m;

    new-instance v4, Lcom/anythink/basead/ui/BaseScreenATView$11;

    invoke-direct {v4, p0}, Lcom/anythink/basead/ui/BaseScreenATView$11;-><init>(Lcom/anythink/basead/ui/BaseScreenATView;)V

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/anythink/basead/c;->a(Landroid/content/Context;Lcom/anythink/core/common/f/l;Lcom/anythink/core/common/f/m;Lcom/anythink/basead/c$a;)V

    return-void
.end method

.method private Y()V
    .locals 2

    const/4 v0, 0x1

    .line 854
    iput-boolean v0, p0, Lcom/anythink/basead/ui/BaseScreenATView;->ai:Z

    .line 856
    invoke-virtual {p0}, Lcom/anythink/basead/ui/BaseScreenATView;->O()Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 857
    invoke-virtual {p0}, Lcom/anythink/basead/ui/BaseScreenATView;->O()Landroid/view/ViewGroup;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private Z()V
    .locals 2

    .line 880
    iget-object v0, p0, Lcom/anythink/basead/ui/BaseScreenATView;->O:Lcom/anythink/basead/ui/b;

    if-nez v0, :cond_0

    .line 881
    new-instance v0, Lcom/anythink/basead/ui/b;

    iget-object v1, p0, Lcom/anythink/basead/ui/BaseScreenATView;->K:Landroid/widget/RelativeLayout;

    invoke-direct {v0, v1}, Lcom/anythink/basead/ui/b;-><init>(Landroid/view/ViewGroup;)V

    iput-object v0, p0, Lcom/anythink/basead/ui/BaseScreenATView;->O:Lcom/anythink/basead/ui/b;

    .line 883
    :cond_0
    iget-object v0, p0, Lcom/anythink/basead/ui/BaseScreenATView;->O:Lcom/anythink/basead/ui/b;

    invoke-virtual {v0}, Lcom/anythink/basead/ui/b;->b()V

    return-void
.end method

.method private static a(Lcom/anythink/core/common/f/n;)I
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_4

    .line 682
    invoke-virtual {p0}, Lcom/anythink/core/common/f/n;->H()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v1, v2

    float-to-int v1, v1

    if-nez v1, :cond_0

    return v0

    .line 687
    :cond_0
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    const/16 v3, 0x64

    .line 688
    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    if-le v3, v1, :cond_1

    return v0

    .line 693
    :cond_1
    invoke-virtual {p0}, Lcom/anythink/core/common/f/n;->I()I

    move-result v1

    .line 694
    invoke-virtual {p0}, Lcom/anythink/core/common/f/n;->J()I

    move-result p0

    if-gtz p0, :cond_2

    return v0

    :cond_2
    if-ne v1, p0, :cond_3

    return v1

    :cond_3
    sub-int/2addr p0, v1

    .line 705
    :try_start_0
    invoke-virtual {v2, p0}, Ljava/util/Random;->nextInt(I)I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/2addr p0, v1

    return p0

    :catchall_0
    move-exception p0

    .line 707
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_4
    return v0
.end method

.method static synthetic a(Lcom/anythink/basead/ui/BaseScreenATView;J)J
    .locals 0

    .line 100
    iput-wide p1, p0, Lcom/anythink/basead/ui/BaseScreenATView;->ad:J

    return-wide p1
.end method

.method private a(Lcom/anythink/basead/ui/BaseScreenATView$a;)V
    .locals 3

    .line 1418
    invoke-static {}, Lcom/anythink/core/common/o/b/b;->a()Lcom/anythink/core/common/o/b/b;

    move-result-object v0

    new-instance v1, Lcom/anythink/basead/ui/BaseScreenATView$5;

    invoke-direct {v1, p0, p1}, Lcom/anythink/basead/ui/BaseScreenATView$5;-><init>(Lcom/anythink/basead/ui/BaseScreenATView;Lcom/anythink/basead/ui/BaseScreenATView$a;)V

    const/4 p1, 0x2

    const/4 v2, 0x1

    .line 15137
    invoke-virtual {v0, v1, p1, v2}, Lcom/anythink/core/common/o/b/b;->a(Ljava/lang/Runnable;IZ)V

    return-void
.end method

.method static synthetic a(Lcom/anythink/basead/ui/BaseScreenATView;)V
    .locals 0

    .line 100
    invoke-super {p0}, Lcom/anythink/basead/ui/BaseATView;->h()V

    return-void
.end method

.method static synthetic a(Lcom/anythink/basead/ui/BaseScreenATView;Ljava/util/List;)V
    .locals 0

    .line 100
    invoke-direct {p0, p1}, Lcom/anythink/basead/ui/BaseScreenATView;->a(Ljava/util/List;)V

    return-void
.end method

.method private a(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .line 401
    invoke-virtual {p0}, Lcom/anythink/basead/ui/BaseScreenATView;->o()V

    .line 403
    iget-object v0, p0, Lcom/anythink/basead/ui/BaseScreenATView;->L:Lcom/anythink/basead/ui/animplayerview/BasePlayerView;

    new-instance v1, Lcom/anythink/basead/ui/BaseScreenATView$6;

    invoke-direct {v1, p0}, Lcom/anythink/basead/ui/BaseScreenATView$6;-><init>(Lcom/anythink/basead/ui/BaseScreenATView;)V

    invoke-virtual {v0, v1}, Lcom/anythink/basead/ui/animplayerview/BasePlayerView;->setListener(Lcom/anythink/basead/ui/animplayerview/BasePlayerView$a;)V

    .line 607
    iget-object v0, p0, Lcom/anythink/basead/ui/BaseScreenATView;->T:Lcom/anythink/basead/e/h;

    invoke-interface {v0}, Lcom/anythink/basead/e/h;->e()V

    .line 609
    iget-object v0, p0, Lcom/anythink/basead/ui/BaseScreenATView;->L:Lcom/anythink/basead/ui/animplayerview/BasePlayerView;

    iget-object v1, p0, Lcom/anythink/basead/ui/BaseScreenATView;->c:Lcom/anythink/core/common/f/l;

    iget-object v2, p0, Lcom/anythink/basead/ui/BaseScreenATView;->b:Lcom/anythink/core/common/f/m;

    iget-boolean v3, p0, Lcom/anythink/basead/ui/BaseScreenATView;->I:Z

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/anythink/basead/ui/animplayerview/BasePlayerView;->init(Lcom/anythink/core/common/f/l;Lcom/anythink/core/common/f/m;ZLjava/util/List;)V

    .line 611
    iget p1, p0, Lcom/anythink/basead/ui/BaseScreenATView;->F:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 612
    invoke-virtual {p0}, Lcom/anythink/basead/ui/BaseScreenATView;->q()V

    return-void

    .line 615
    :cond_0
    iget-object p1, p0, Lcom/anythink/basead/ui/BaseScreenATView;->L:Lcom/anythink/basead/ui/animplayerview/BasePlayerView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/anythink/basead/ui/animplayerview/BasePlayerView;->setVisibility(I)V

    return-void
.end method

.method private aa()V
    .locals 1

    .line 887
    iget-object v0, p0, Lcom/anythink/basead/ui/BaseScreenATView;->O:Lcom/anythink/basead/ui/b;

    if-eqz v0, :cond_0

    .line 888
    invoke-virtual {v0}, Lcom/anythink/basead/ui/b;->c()V

    :cond_0
    return-void
.end method

.method private ab()V
    .locals 3

    .line 893
    iget-object v0, p0, Lcom/anythink/basead/ui/BaseScreenATView;->c:Lcom/anythink/core/common/f/l;

    .line 894
    invoke-virtual {p0}, Lcom/anythink/basead/ui/BaseScreenATView;->i()Lcom/anythink/basead/c/i;

    move-result-object v1

    const/4 v2, 0x1

    .line 893
    invoke-static {v2, v0, v1}, Lcom/anythink/basead/a/a;->a(ILcom/anythink/core/common/f/l;Lcom/anythink/basead/c/i;)V

    .line 896
    iget-object v0, p0, Lcom/anythink/basead/ui/BaseScreenATView;->T:Lcom/anythink/basead/e/h;

    if-eqz v0, :cond_0

    .line 897
    invoke-interface {v0}, Lcom/anythink/basead/e/h;->a()V

    :cond_0
    return-void
.end method

.method private ac()V
    .locals 5

    .line 998
    iget-object v0, p0, Lcom/anythink/basead/ui/BaseScreenATView;->L:Lcom/anythink/basead/ui/animplayerview/BasePlayerView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/anythink/basead/ui/animplayerview/BasePlayerView;->hasVideo()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 999
    iget-object v0, p0, Lcom/anythink/basead/ui/BaseScreenATView;->L:Lcom/anythink/basead/ui/animplayerview/BasePlayerView;

    invoke-virtual {v0}, Lcom/anythink/basead/ui/animplayerview/BasePlayerView;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1001
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/anythink/basead/ui/BaseScreenATView;->ad:J

    .line 1002
    iget-object v0, p0, Lcom/anythink/basead/ui/BaseScreenATView;->L:Lcom/anythink/basead/ui/animplayerview/BasePlayerView;

    invoke-virtual {v0}, Lcom/anythink/basead/ui/animplayerview/BasePlayerView;->getCurrentPosition()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/anythink/basead/ui/BaseScreenATView;->B:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/16 v0, 0xf

    .line 1004
    iget-object v1, p0, Lcom/anythink/basead/ui/BaseScreenATView;->c:Lcom/anythink/core/common/f/l;

    .line 1005
    invoke-virtual {p0}, Lcom/anythink/basead/ui/BaseScreenATView;->i()Lcom/anythink/basead/c/i;

    move-result-object v2

    .line 1004
    invoke-static {v0, v1, v2}, Lcom/anythink/basead/a/a;->a(ILcom/anythink/core/common/f/l;Lcom/anythink/basead/c/i;)V

    .line 1008
    :cond_0
    iget-object v0, p0, Lcom/anythink/basead/ui/BaseScreenATView;->L:Lcom/anythink/basead/ui/animplayerview/BasePlayerView;

    invoke-virtual {v0}, Lcom/anythink/basead/ui/animplayerview/BasePlayerView;->start()V

    :cond_1
    return-void
.end method

.method private ad()V
    .locals 1

    const/4 v0, 0x4

    .line 1191
    invoke-virtual {p0, v0}, Lcom/anythink/basead/ui/BaseScreenATView;->c(I)V

    return-void
.end method

.method private ae()V
    .locals 1

    .line 1524
    iget-object v0, p0, Lcom/anythink/basead/ui/BaseScreenATView;->L:Lcom/anythink/basead/ui/animplayerview/BasePlayerView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/anythink/basead/ui/animplayerview/BasePlayerView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/anythink/basead/ui/BaseScreenATView;->L:Lcom/anythink/basead/ui/animplayerview/BasePlayerView;

    invoke-virtual {v0}, Lcom/anythink/basead/ui/animplayerview/BasePlayerView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/anythink/basead/ui/BaseScreenATView;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/anythink/basead/ui/BaseScreenATView;->r:Z

    if-eqz v0, :cond_1

    .line 1525
    :cond_0
    invoke-virtual {p0}, Lcom/anythink/basead/ui/BaseScreenATView;->Q()V

    :cond_1
    return-void
.end method

.method private b(Z)Lcom/anythink/basead/ui/BaseEndCardView;
    .locals 4

    .line 717
    new-instance v0, Lcom/anythink/basead/ui/MraidEndCardView;

    invoke-virtual {p0}, Lcom/anythink/basead/ui/BaseScreenATView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/anythink/basead/ui/BaseScreenATView;->c:Lcom/anythink/core/common/f/l;

    iget-object v3, p0, Lcom/anythink/basead/ui/BaseScreenATView;->b:Lcom/anythink/core/common/f/m;

    invoke-direct {v0, v1, v2, v3}, Lcom/anythink/basead/ui/MraidEndCardView;-><init>(Landroid/content/Context;Lcom/anythink/core/common/f/l;Lcom/anythink/core/common/f/m;)V

    .line 719
    new-instance v1, Lcom/anythink/basead/ui/BaseScreenATView$9;

    invoke-direct {v1, p0}, Lcom/anythink/basead/ui/BaseScreenATView$9;-><init>(Lcom/anythink/basead/ui/BaseScreenATView;)V

    invoke-virtual {v0, v1}, Lcom/anythink/basead/ui/MraidEndCardView;->setEndCardListener(Lcom/anythink/basead/ui/MraidEndCardView$a;)V

    .line 756
    invoke-virtual {v0, p1}, Lcom/anythink/basead/ui/MraidEndCardView;->init(Z)V

    return-object v0
.end method

.method static synthetic b(Lcom/anythink/basead/ui/BaseScreenATView;)V
    .locals 3

    .line 15893
    iget-object v0, p0, Lcom/anythink/basead/ui/BaseScreenATView;->c:Lcom/anythink/core/common/f/l;

    .line 15894
    invoke-virtual {p0}, Lcom/anythink/basead/ui/BaseScreenATView;->i()Lcom/anythink/basead/c/i;

    move-result-object v1

    const/4 v2, 0x1

    .line 15893
    invoke-static {v2, v0, v1}, Lcom/anythink/basead/a/a;->a(ILcom/anythink/core/common/f/l;Lcom/anythink/basead/c/i;)V

    .line 15896
    iget-object p0, p0, Lcom/anythink/basead/ui/BaseScreenATView;->T:Lcom/anythink/basead/e/h;

    if-eqz p0, :cond_0

    .line 15897
    invoke-interface {p0}, Lcom/anythink/basead/e/h;->a()V

    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/anythink/basead/ui/BaseScreenATView;J)V
    .locals 5

    .line 16046
    iget-object v0, p0, Lcom/anythink/basead/ui/BaseScreenATView;->c:Lcom/anythink/core/common/f/l;

    instance-of v0, v0, Lcom/anythink/core/common/f/ai;

    if-eqz v0, :cond_3

    .line 16047
    iget-object v0, p0, Lcom/anythink/basead/ui/BaseScreenATView;->c:Lcom/anythink/core/common/f/l;

    check-cast v0, Lcom/anythink/core/common/f/ai;

    invoke-virtual {v0}, Lcom/anythink/core/common/f/ai;->ad()Lcom/anythink/core/common/f/ak;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 16051
    invoke-virtual {v0}, Lcom/anythink/core/common/f/ak;->y()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 16052
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 16053
    iget-object v1, p0, Lcom/anythink/basead/ui/BaseScreenATView;->V:Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v1, :cond_0

    .line 16054
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lcom/anythink/basead/ui/BaseScreenATView;->V:Ljava/util/concurrent/ConcurrentHashMap;

    :cond_0
    const-wide/16 v1, 0x3e8

    .line 16056
    div-long/2addr p1, v1

    .line 16057
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 16058
    iget-object v2, p0, Lcom/anythink/basead/ui/BaseScreenATView;->V:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/anythink/basead/ui/BaseScreenATView;->V:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_1

    .line 16062
    :cond_2
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v2, v2

    cmp-long v4, p1, v2

    if-ltz v4, :cond_1

    .line 16063
    iget-object v2, p0, Lcom/anythink/basead/ui/BaseScreenATView;->V:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2, v1, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16064
    invoke-virtual {p0}, Lcom/anythink/basead/ui/BaseScreenATView;->i()Lcom/anythink/basead/c/i;

    move-result-object v2

    .line 16065
    iget-object v3, v2, Lcom/anythink/basead/c/i;->h:Lcom/anythink/basead/c/j;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v3, Lcom/anythink/basead/c/j;->i:I

    const/16 v1, 0x20

    .line 16066
    iget-object v3, p0, Lcom/anythink/basead/ui/BaseScreenATView;->c:Lcom/anythink/core/common/f/l;

    invoke-static {v1, v3, v2}, Lcom/anythink/basead/a/a;->a(ILcom/anythink/core/common/f/l;Lcom/anythink/basead/c/i;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method static synthetic c(Lcom/anythink/basead/ui/BaseScreenATView;J)V
    .locals 5

    .line 16096
    iget-boolean v0, p0, Lcom/anythink/basead/ui/BaseScreenATView;->D:Z

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lcom/anythink/basead/ui/BaseScreenATView;->ae:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    iget-wide v0, p0, Lcom/anythink/basead/ui/BaseScreenATView;->af:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    .line 16098
    iput-wide p1, p0, Lcom/anythink/basead/ui/BaseScreenATView;->ae:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    add-long/2addr p1, v0

    .line 16101
    iput-wide p1, p0, Lcom/anythink/basead/ui/BaseScreenATView;->ag:J

    .line 16103
    :cond_0
    invoke-virtual {p0}, Lcom/anythink/basead/ui/BaseScreenATView;->G()V

    :cond_1
    return-void
.end method

.method static synthetic c(Lcom/anythink/basead/ui/BaseScreenATView;)Z
    .locals 0

    .line 100
    iget-boolean p0, p0, Lcom/anythink/basead/ui/BaseScreenATView;->ah:Z

    return p0
.end method

.method private d(J)V
    .locals 5

    .line 1046
    iget-object v0, p0, Lcom/anythink/basead/ui/BaseScreenATView;->c:Lcom/anythink/core/common/f/l;

    instance-of v0, v0, Lcom/anythink/core/common/f/ai;

    if-eqz v0, :cond_4

    .line 1047
    iget-object v0, p0, Lcom/anythink/basead/ui/BaseScreenATView;->c:Lcom/anythink/core/common/f/l;

    check-cast v0, Lcom/anythink/core/common/f/ai;

    invoke-virtual {v0}, Lcom/anythink/core/common/f/ai;->ad()Lcom/anythink/core/common/f/ak;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1051
    :cond_0
    invoke-virtual {v0}, Lcom/anythink/core/common/f/ak;->y()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 1052
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_4

    .line 1053
    iget-object v1, p0, Lcom/anythink/basead/ui/BaseScreenATView;->V:Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v1, :cond_1

    .line 1054
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lcom/anythink/basead/ui/BaseScreenATView;->V:Ljava/util/concurrent/ConcurrentHashMap;

    :cond_1
    const-wide/16 v1, 0x3e8

    .line 1056
    div-long/2addr p1, v1

    .line 1057
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 1058
    iget-object v2, p0, Lcom/anythink/basead/ui/BaseScreenATView;->V:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/anythink/basead/ui/BaseScreenATView;->V:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1062
    :cond_3
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v2, v2

    cmp-long v4, p1, v2

    if-ltz v4, :cond_2

    .line 1063
    iget-object v2, p0, Lcom/anythink/basead/ui/BaseScreenATView;->V:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2, v1, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1064
    invoke-virtual {p0}, Lcom/anythink/basead/ui/BaseScreenATView;->i()Lcom/anythink/basead/c/i;

    move-result-object v2

    .line 1065
    iget-object v3, v2, Lcom/anythink/basead/c/i;->h:Lcom/anythink/basead/c/j;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v3, Lcom/anythink/basead/c/j;->i:I

    const/16 v1, 0x20

    .line 1066
    iget-object v3, p0, Lcom/anythink/basead/ui/BaseScreenATView;->c:Lcom/anythink/core/common/f/l;

    invoke-static {v1, v3, v2}, Lcom/anythink/basead/a/a;->a(ILcom/anythink/core/common/f/l;Lcom/anythink/basead/c/i;)V

    goto :goto_0

    :cond_4
    return-void
.end method

.method static synthetic d(Lcom/anythink/basead/ui/BaseScreenATView;)V
    .locals 0

    .line 100
    invoke-direct {p0}, Lcom/anythink/basead/ui/BaseScreenATView;->ac()V

    return-void
.end method

.method private e(J)V
    .locals 5

    .line 1096
    iget-boolean v0, p0, Lcom/anythink/basead/ui/BaseScreenATView;->D:Z

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lcom/anythink/basead/ui/BaseScreenATView;->ae:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    iget-wide v0, p0, Lcom/anythink/basead/ui/BaseScreenATView;->af:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    .line 1098
    iput-wide p1, p0, Lcom/anythink/basead/ui/BaseScreenATView;->ae:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    add-long/2addr p1, v0

    .line 1101
    iput-wide p1, p0, Lcom/anythink/basead/ui/BaseScreenATView;->ag:J

    .line 1103
    :cond_0
    invoke-virtual {p0}, Lcom/anythink/basead/ui/BaseScreenATView;->G()V

    :cond_1
    return-void
.end method

.method static synthetic e(Lcom/anythink/basead/ui/BaseScreenATView;)V
    .locals 1

    const/4 v0, 0x1

    .line 16854
    iput-boolean v0, p0, Lcom/anythink/basead/ui/BaseScreenATView;->ai:Z

    .line 16856
    invoke-virtual {p0}, Lcom/anythink/basead/ui/BaseScreenATView;->O()Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 16857
    invoke-virtual {p0}, Lcom/anythink/basead/ui/BaseScreenATView;->O()Landroid/view/ViewGroup;

    move-result-object p0

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method static synthetic f(Lcom/anythink/basead/ui/BaseScreenATView;)Lcom/anythink/basead/c;
    .locals 0

    .line 100
    iget-object p0, p0, Lcom/anythink/basead/ui/BaseScreenATView;->ak:Lcom/anythink/basead/c;

    return-object p0
.end method

.method static synthetic g(Lcom/anythink/basead/ui/BaseScreenATView;)V
    .locals 0

    .line 16887
    iget-object p0, p0, Lcom/anythink/basead/ui/BaseScreenATView;->O:Lcom/anythink/basead/ui/b;

    if-eqz p0, :cond_0

    .line 16888
    invoke-virtual {p0}, Lcom/anythink/basead/ui/b;->c()V

    :cond_0
    return-void
.end method

.method static synthetic h(Lcom/anythink/basead/ui/BaseScreenATView;)V
    .locals 5

    .line 17828
    invoke-virtual {p0}, Lcom/anythink/basead/ui/BaseScreenATView;->t()V

    .line 17830
    iget-object v0, p0, Lcom/anythink/basead/ui/BaseScreenATView;->ak:Lcom/anythink/basead/c;

    if-nez v0, :cond_0

    .line 17831
    new-instance v0, Lcom/anythink/basead/c;

    invoke-direct {v0}, Lcom/anythink/basead/c;-><init>()V

    iput-object v0, p0, Lcom/anythink/basead/ui/BaseScreenATView;->ak:Lcom/anythink/basead/c;

    .line 17833
    :cond_0
    iget-object v0, p0, Lcom/anythink/basead/ui/BaseScreenATView;->ak:Lcom/anythink/basead/c;

    invoke-virtual {p0}, Lcom/anythink/basead/ui/BaseScreenATView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/anythink/basead/ui/BaseScreenATView;->c:Lcom/anythink/core/common/f/l;

    iget-object v3, p0, Lcom/anythink/basead/ui/BaseScreenATView;->b:Lcom/anythink/core/common/f/m;

    new-instance v4, Lcom/anythink/basead/ui/BaseScreenATView$11;

    invoke-direct {v4, p0}, Lcom/anythink/basead/ui/BaseScreenATView$11;-><init>(Lcom/anythink/basead/ui/BaseScreenATView;)V

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/anythink/basead/c;->a(Landroid/content/Context;Lcom/anythink/core/common/f/l;Lcom/anythink/core/common/f/m;Lcom/anythink/basead/c$a;)V

    return-void
.end method


# virtual methods
.method protected A()V
    .locals 2

    .line 1231
    invoke-virtual {p0}, Lcom/anythink/basead/ui/BaseScreenATView;->M()Lcom/anythink/basead/ui/CloseImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1232
    invoke-virtual {p0}, Lcom/anythink/basead/ui/BaseScreenATView;->M()Lcom/anythink/basead/ui/CloseImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/basead/ui/BaseScreenATView;->b:Lcom/anythink/core/common/f/m;

    iget-object v1, v1, Lcom/anythink/core/common/f/m;->n:Lcom/anythink/core/common/f/n;

    .line 1233
    invoke-virtual {v1}, Lcom/anythink/core/common/f/n;->n()I

    move-result v1

    .line 1232
    invoke-virtual {p0, v0, v1}, Lcom/anythink/basead/ui/BaseScreenATView;->a(Lcom/anythink/basead/ui/a;I)F

    move-result v0

    iput v0, p0, Lcom/anythink/basead/ui/BaseScreenATView;->J:F

    .line 1235
    invoke-virtual {p0}, Lcom/anythink/basead/ui/BaseScreenATView;->M()Lcom/anythink/basead/ui/CloseImageView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/anythink/basead/ui/CloseImageView;->setVisibility(I)V

    .line 1236
    invoke-virtual {p0}, Lcom/anythink/basead/ui/BaseScreenATView;->M()Lcom/anythink/basead/ui/CloseImageView;

    move-result-object v0

    new-instance v1, Lcom/anythink/basead/ui/BaseScreenATView$3;

    invoke-direct {v1, p0}, Lcom/anythink/basead/ui/BaseScreenATView$3;-><init>(Lcom/anythink/basead/ui/BaseScreenATView;)V

    invoke-virtual {v0, v1}, Lcom/anythink/basead/ui/CloseImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method protected abstract B()V
.end method

.method protected final C()V
    .locals 3

    .line 1251
    iget-object v0, p0, Lcom/anythink/basead/ui/BaseScreenATView;->L:Lcom/anythink/basead/ui/animplayerview/BasePlayerView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/anythink/basead/ui/animplayerview/BasePlayerView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1252
    iget-object v0, p0, Lcom/anythink/basead/ui/BaseScreenATView;->L:Lcom/anythink/basead/ui/animplayerview/BasePlayerView;

    invoke-virtual {v0}, Lcom/anythink/basead/ui/animplayerview/BasePlayerView;->stop()V

    .line 1253
    iget-object v0, p0, Lcom/anythink/basead/ui/BaseScreenATView;->L:Lcom/anythink/basead/ui/animplayerview/BasePlayerView;

    invoke-virtual {v0}, Lcom/anythink/basead/ui/animplayerview/BasePlayerView;->removeAllViews()V

    .line 1255
    invoke-virtual {p0}, Lcom/anythink/basead/ui/BaseScreenATView;->i()Lcom/anythink/basead/c/i;

    move-result-object v0

    .line 1256
    invoke-virtual {p0}, Lcom/anythink/basead/ui/BaseScreenATView;->j()Lcom/anythink/basead/c/a;

    move-result-object v1

    iput-object v1, v0, Lcom/anythink/basead/c/i;->g:Lcom/anythink/basead/c/a;

    const/16 v1, 0x10

    .line 1257
    iget-object v2, p0, Lcom/anythink/basead/ui/BaseScreenATView;->c:Lcom/anythink/core/common/f/l;

    invoke-static {v1, v2, v0}, Lcom/anythink/basead/a/a;->a(ILcom/anythink/core/common/f/l;Lcom/anythink/basead/c/i;)V

    :cond_0
    return-void
.end method

.method protected final D()V
    .locals 3

    .line 1264
    invoke-virtual {p0}, Lcom/anythink/basead/ui/BaseScreenATView;->i()Lcom/anythink/basead/c/i;

    move-result-object v0

    .line 1265
    invoke-virtual {p0}, Lcom/anythink/basead/ui/BaseScreenATView;->j()Lcom/anythink/basead/c/a;

    move-result-object v1

    iput-object v1, v0, Lcom/anythink/basead/c/i;->g:Lcom/anythink/basead/c/a;

    .line 1266
    iget-object v1, p0, Lcom/anythink/basead/ui/BaseScreenATView;->c:Lcom/anythink/core/common/f/l;

    const/4 v2, 0x7

    invoke-static {v2, v1, v0}, Lcom/anythink/basead/a/a;->a(ILcom/anythink/core/common/f/l;Lcom/anythink/basead/c/i;)V

    .line 1268
    iget-object v0, p0, Lcom/anythink/basead/ui/BaseScreenATView;->T:Lcom/anythink/basead/e/h;

    if-eqz v0, :cond_0

    .line 1269
    invoke-interface {v0}, Lcom/anythink/basead/e/h;->d()V

    :cond_0
    return-void
.end method

.method protected E()V
    .locals 2

    .line 1275
    invoke-virtual {p0}, Lcom/anythink/basead/ui/BaseScreenATView;->O()Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1276
    invoke-virtual {p0}, Lcom/anythink/basead/ui/BaseScreenATView;->O()Landroid/view/ViewGroup;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1277
    invoke-virtual {p0}, Lcom/anythink/basead/ui/BaseScreenATView;->O()Landroid/view/ViewGroup;

    move-result-object v0

    new-instance v1, Lcom/anythink/basead/ui/BaseScreenATView$4;

    invoke-direct {v1, p0}, Lcom/anythink/basead/ui/BaseScreenATView$4;-><init>(Lcom/anythink/basead/ui/BaseScreenATView;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method protected F()V
    .locals 2

    const/4 v0, 0x0

    .line 1292
    invoke-virtual {p0, v0}, Lcom/anythink/basead/ui/BaseScreenATView;->c(I)V

    .line 1294
    iget-object v1, p0, Lcom/anythink/basead/ui/BaseScreenATView;->S:Lcom/anythink/basead/ui/MuteImageView;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/anythink/basead/ui/MuteImageView;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    .line 1295
    iget-object v1, p0, Lcom/anythink/basead/ui/BaseScreenATView;->S:Lcom/anythink/basead/ui/MuteImageView;

    invoke-virtual {v1, v0}, Lcom/anythink/basead/ui/MuteImageView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method protected G()V
    .locals 2

    .line 1300
    invoke-virtual {p0}, Lcom/anythink/basead/ui/BaseScreenATView;->P()Lcom/anythink/basead/ui/PanelView;

    move-result-object v0

    .line 1301
    invoke-virtual {v0}, Lcom/anythink/basead/ui/PanelView;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x68

    .line 1302
    invoke-virtual {p0, v1}, Lcom/anythink/basead/ui/BaseScreenATView;->a(I)V

    const/4 v1, 0x0

    .line 1303
    invoke-virtual {v0, v1}, Lcom/anythink/basead/ui/PanelView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method protected H()V
    .locals 2

    .line 1308
    invoke-virtual {p0}, Lcom/anythink/basead/ui/BaseScreenATView;->P()Lcom/anythink/basead/ui/PanelView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/basead/ui/PanelView;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    .line 1309
    invoke-virtual {p0}, Lcom/anythink/basead/ui/BaseScreenATView;->P()Lcom/anythink/basead/ui/PanelView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/anythink/basead/ui/PanelView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method protected final I()V
    .locals 2

    .line 1314
    iget-boolean v0, p0, Lcom/anythink/basead/ui/BaseScreenATView;->ai:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/anythink/basead/ui/BaseScreenATView;->O()Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/anythink/basead/ui/BaseScreenATView;->O()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1315
    invoke-virtual {p0}, Lcom/anythink/basead/ui/BaseScreenATView;->O()Landroid/view/ViewGroup;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method protected J()V
    .locals 2

    .line 1320
    invoke-virtual {p0}, Lcom/anythink/basead/ui/BaseScreenATView;->M()Lcom/anythink/basead/ui/CloseImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/anythink/basead/ui/BaseScreenATView;->M()Lcom/anythink/basead/ui/CloseImageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/basead/ui/CloseImageView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1321
    invoke-virtual {p0}, Lcom/anythink/basead/ui/BaseScreenATView;->M()Lcom/anythink/basead/ui/CloseImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/anythink/basead/ui/CloseImageView;->setVisibility(I)V

    .line 1324
    invoke-virtual {p0}, Lcom/anythink/basead/ui/BaseScreenATView;->M()Lcom/anythink/basead/ui/CloseImageView;

    move-result-object v0

    iget v1, p0, Lcom/anythink/basead/ui/BaseScreenATView;->J:F

    invoke-virtual {v0, v1}, Lcom/anythink/basead/ui/CloseImageView;->setClickAreaScaleFactor(F)V

    .line 1327
    :cond_0
    invoke-virtual {p0}, Lcom/anythink/basead/ui/BaseScreenATView;->I()V

    return-void
.end method

.method protected abstract K()V
.end method

.method protected L()V
    .locals 3

    const/16 v0, 0x67

    .line 1340
    invoke-virtual {p0, v0}, Lcom/anythink/basead/ui/BaseScreenATView;->a(I)V

    .line 14524
    iget-object v0, p0, Lcom/anythink/basead/ui/BaseScreenATView;->L:Lcom/anythink/basead/ui/animplayerview/BasePlayerView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/anythink/basead/ui/animplayerview/BasePlayerView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/anythink/basead/ui/BaseScreenATView;->L:Lcom/anythink/basead/ui/animplayerview/BasePlayerView;

    invoke-virtual {v0}, Lcom/anythink/basead/ui/animplayerview/BasePlayerView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/anythink/basead/ui/BaseScreenATView;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/anythink/basead/ui/BaseScreenATView;->r:Z

    if-eqz v0, :cond_1

    .line 14525
    :cond_0
    invoke-virtual {p0}, Lcom/anythink/basead/ui/BaseScreenATView;->Q()V

    :cond_1
    const/16 v0, 0x8

    .line 1344
    invoke-virtual {p0, v0}, Lcom/anythink/basead/ui/BaseScreenATView;->c(I)V

    .line 1347
    invoke-virtual {p0}, Lcom/anythink/basead/ui/BaseScreenATView;->M()Lcom/anythink/basead/ui/CloseImageView;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1348
    invoke-virtual {p0}, Lcom/anythink/basead/ui/BaseScreenATView;->M()Lcom/anythink/basead/ui/CloseImageView;

    move-result-object v1

    iget v2, p0, Lcom/anythink/basead/ui/BaseScreenATView;->J:F

    invoke-virtual {v1, v2}, Lcom/anythink/basead/ui/CloseImageView;->setClickAreaScaleFactor(F)V

    .line 1351
    :cond_2
    iget-object v1, p0, Lcom/anythink/basead/ui/BaseScreenATView;->S:Lcom/anythink/basead/ui/MuteImageView;

    if-eqz v1, :cond_3

    .line 1352
    invoke-virtual {v1, v0}, Lcom/anythink/basead/ui/MuteImageView;->setVisibility(I)V

    :cond_3
    return-void
.end method

.method protected M()Lcom/anythink/basead/ui/CloseImageView;
    .locals 1

    .line 1409
    iget-object v0, p0, Lcom/anythink/basead/ui/BaseScreenATView;->Q:Lcom/anythink/basead/ui/CloseImageView;

    return-object v0
.end method

.method protected final N()Z
    .locals 3

    .line 1503
    iget v0, p0, Lcom/anythink/basead/ui/BaseScreenATView;->v:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/anythink/basead/ui/BaseScreenATView;->F:I

    const/16 v2, 0x65

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/anythink/basead/ui/BaseScreenATView;->L:Lcom/anythink/basead/ui/animplayerview/BasePlayerView;

    if-eqz v0, :cond_0

    instance-of v0, v0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected O()Landroid/view/ViewGroup;
    .locals 1

    .line 1513
    iget-object v0, p0, Lcom/anythink/basead/ui/BaseScreenATView;->R:Landroid/view/ViewGroup;

    return-object v0
.end method

.method protected P()Lcom/anythink/basead/ui/PanelView;
    .locals 1

    .line 1517
    iget-object v0, p0, Lcom/anythink/basead/ui/BaseScreenATView;->M:Lcom/anythink/basead/ui/PanelView;

    return-object v0
.end method

.method protected Q()V
    .locals 2

    .line 1533
    iget-object v0, p0, Lcom/anythink/basead/ui/BaseScreenATView;->L:Lcom/anythink/basead/ui/animplayerview/BasePlayerView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/anythink/basead/ui/animplayerview/BasePlayerView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1534
    iget-object v0, p0, Lcom/anythink/basead/ui/BaseScreenATView;->L:Lcom/anythink/basead/ui/animplayerview/BasePlayerView;

    invoke-virtual {v0}, Lcom/anythink/basead/ui/animplayerview/BasePlayerView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/anythink/basead/ui/BaseScreenATView;->L:Lcom/anythink/basead/ui/animplayerview/BasePlayerView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 1535
    iput-object v0, p0, Lcom/anythink/basead/ui/BaseScreenATView;->L:Lcom/anythink/basead/ui/animplayerview/BasePlayerView;

    :cond_0
    return-void
.end method

.method protected final a(II)V
    .locals 2

    .line 865
    invoke-virtual {p0}, Lcom/anythink/basead/ui/BaseScreenATView;->M()Lcom/anythink/basead/ui/CloseImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/basead/ui/BaseScreenATView;->b:Lcom/anythink/core/common/f/m;

    iget-object v1, v1, Lcom/anythink/core/common/f/m;->n:Lcom/anythink/core/common/f/n;

    .line 866
    invoke-virtual {v1}, Lcom/anythink/core/common/f/n;->m()I

    move-result v1

    .line 865
    invoke-virtual {p0, v0, v1}, Lcom/anythink/basead/ui/BaseScreenATView;->a(Lcom/anythink/basead/ui/a;I)F

    move-result v0

    iput v0, p0, Lcom/anythink/basead/ui/BaseScreenATView;->J:F

    .line 868
    iget-boolean v0, p0, Lcom/anythink/basead/ui/BaseScreenATView;->aj:Z

    if-eqz v0, :cond_0

    return-void

    .line 872
    :cond_0
    iget-object v0, p0, Lcom/anythink/basead/ui/BaseScreenATView;->c:Lcom/anythink/core/common/f/l;

    if-nez v0, :cond_1

    return-void

    .line 876
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/anythink/basead/ui/BaseATView;->a(II)V

    return-void
.end method

.method protected a(J)V
    .locals 5

    .line 1082
    iget-wide v0, p0, Lcom/anythink/basead/ui/BaseScreenATView;->ag:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    cmp-long v4, p1, v0

    if-lez v4, :cond_0

    .line 1083
    invoke-virtual {p0}, Lcom/anythink/basead/ui/BaseScreenATView;->H()V

    return-void

    .line 1084
    :cond_0
    iget-boolean v0, p0, Lcom/anythink/basead/ui/BaseScreenATView;->D:Z

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lcom/anythink/basead/ui/BaseScreenATView;->ae:J

    cmp-long v4, v0, v2

    if-ltz v4, :cond_1

    cmp-long v2, p1, v0

    if-ltz v2, :cond_1

    .line 1085
    invoke-virtual {p0}, Lcom/anythink/basead/ui/BaseScreenATView;->G()V

    :cond_1
    return-void
.end method

.method protected final a(Lcom/anythink/basead/c/e;)V
    .locals 1

    .line 902
    iget-object v0, p0, Lcom/anythink/basead/ui/BaseScreenATView;->T:Lcom/anythink/basead/e/h;

    if-eqz v0, :cond_0

    .line 903
    invoke-interface {v0, p1}, Lcom/anythink/basead/e/h;->a(Lcom/anythink/basead/c/e;)V

    :cond_0
    return-void
.end method

.method protected final a(Lcom/anythink/basead/e/i;)V
    .locals 1

    .line 955
    iget-object v0, p0, Lcom/anythink/basead/ui/BaseScreenATView;->T:Lcom/anythink/basead/e/h;

    if-eqz v0, :cond_0

    .line 956
    invoke-interface {v0, p1}, Lcom/anythink/basead/e/h;->b(Lcom/anythink/basead/e/i;)V

    :cond_0
    return-void
.end method

.method protected final a(Z)V
    .locals 1

    .line 962
    iget-object v0, p0, Lcom/anythink/basead/ui/BaseScreenATView;->T:Lcom/anythink/basead/e/h;

    if-eqz v0, :cond_0

    .line 963
    invoke-interface {v0, p1}, Lcom/anythink/basead/e/h;->a(Z)V

    :cond_0
    return-void
.end method

.method protected b()V
    .locals 3

    .line 297
    invoke-virtual {p0}, Lcom/anythink/basead/ui/BaseScreenATView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "myoffer_rl_root"

    const-string v2, "id"

    invoke-static {v0, v1, v2}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/anythink/basead/ui/BaseScreenATView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/anythink/basead/ui/BaseScreenATView;->K:Landroid/widget/RelativeLayout;

    .line 299
    invoke-virtual {p0}, Lcom/anythink/basead/ui/BaseScreenATView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "myoffer_player_view_id"

    invoke-static {v0, v1, v2}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 298
    invoke-virtual {p0, v0}, Lcom/anythink/basead/ui/BaseScreenATView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/anythink/basead/ui/animplayerview/BasePlayerView;

    iput-object v0, p0, Lcom/anythink/basead/ui/BaseScreenATView;->L:Lcom/anythink/basead/ui/animplayerview/BasePlayerView;

    .line 301
    invoke-virtual {p0}, Lcom/anythink/basead/ui/BaseScreenATView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "myoffer_banner_view_id"

    invoke-static {v0, v1, v2}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 300
    invoke-virtual {p0, v0}, Lcom/anythink/basead/ui/BaseScreenATView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/anythink/basead/ui/PanelView;

    iput-object v0, p0, Lcom/anythink/basead/ui/BaseScreenATView;->M:Lcom/anythink/basead/ui/PanelView;

    .line 303
    invoke-virtual {p0}, Lcom/anythink/basead/ui/BaseScreenATView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "myoffer_count_down_view_id"

    invoke-static {v0, v1, v2}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 302
    invoke-virtual {p0, v0}, Lcom/anythink/basead/ui/BaseScreenATView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/anythink/basead/ui/CountDownView;

    iput-object v0, p0, Lcom/anythink/basead/ui/BaseScreenATView;->P:Lcom/anythink/basead/ui/CountDownView;

    .line 304
    invoke-virtual {p0}, Lcom/anythink/basead/ui/BaseScreenATView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "myoffer_btn_mute_id"

    invoke-static {v0, v1, v2}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/anythink/basead/ui/BaseScreenATView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/anythink/basead/ui/MuteImageView;

    iput-object v0, p0, Lcom/anythink/basead/ui/BaseScreenATView;->S:Lcom/anythink/basead/ui/MuteImageView;

    .line 305
    invoke-virtual {p0}, Lcom/anythink/basead/ui/BaseScreenATView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "myoffer_btn_close_id"

    invoke-static {v0, v1, v2}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/anythink/basead/ui/BaseScreenATView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/anythink/basead/ui/CloseImageView;

    iput-object v0, p0, Lcom/anythink/basead/ui/BaseScreenATView;->Q:Lcom/anythink/basead/ui/CloseImageView;

    .line 307
    invoke-virtual {p0}, Lcom/anythink/basead/ui/BaseScreenATView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "myoffer_feedback_ll_id"

    invoke-static {v0, v1, v2}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 306
    invoke-virtual {p0, v0}, Lcom/anythink/basead/ui/BaseScreenATView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/anythink/basead/ui/BaseScreenATView;->R:Landroid/view/ViewGroup;

    .line 309
    invoke-virtual {p0}, Lcom/anythink/basead/ui/BaseScreenATView;->c()V

    const/4 v0, 0x4

    .line 5191
    invoke-virtual {p0, v0}, Lcom/anythink/basead/ui/BaseScreenATView;->c(I)V

    .line 311
    invoke-virtual {p0}, Lcom/anythink/basead/ui/BaseScreenATView;->z()V

    .line 312
    invoke-virtual {p0}, Lcom/anythink/basead/ui/BaseScreenATView;->A()V

    .line 313
    invoke-virtual {p0}, Lcom/anythink/basead/ui/BaseScreenATView;->E()V

    .line 314
    invoke-virtual {p0}, Lcom/anythink/basead/ui/BaseScreenATView;->w()V

    .line 316
    iget v0, p0, Lcom/anythink/basead/ui/BaseScreenATView;->E:I

    invoke-virtual {p0, v0}, Lcom/anythink/basead/ui/BaseScreenATView;->b(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/anythink/basead/ui/BaseScreenATView;->D:Z

    return-void
.end method

.method protected b(J)V
    .locals 1

    .line 1369
    iget-object v0, p0, Lcom/anythink/basead/ui/BaseScreenATView;->P:Lcom/anythink/basead/ui/CountDownView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/anythink/basead/ui/CountDownView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 1370
    iget-object v0, p0, Lcom/anythink/basead/ui/BaseScreenATView;->P:Lcom/anythink/basead/ui/CountDownView;

    invoke-virtual {v0, p1, p2}, Lcom/anythink/basead/ui/CountDownView;->refresh(J)V

    :cond_0
    return-void
.end method

.method protected abstract b(I)Z
.end method

.method protected c()V
    .locals 0

    return-void
.end method

.method protected c(I)V
    .locals 1

    .line 1357
    iget-object v0, p0, Lcom/anythink/basead/ui/BaseScreenATView;->P:Lcom/anythink/basead/ui/CountDownView;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    .line 1359
    invoke-virtual {v0}, Lcom/anythink/basead/ui/CountDownView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 1363
    :cond_0
    iget-object v0, p0, Lcom/anythink/basead/ui/BaseScreenATView;->P:Lcom/anythink/basead/ui/CountDownView;

    invoke-virtual {v0, p1}, Lcom/anythink/basead/ui/CountDownView;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method protected c(J)V
    .locals 1

    .line 1375
    iget-object v0, p0, Lcom/anythink/basead/ui/BaseScreenATView;->P:Lcom/anythink/basead/ui/CountDownView;

    if-eqz v0, :cond_0

    .line 1376
    invoke-virtual {v0, p1, p2}, Lcom/anythink/basead/ui/CountDownView;->setDuration(J)V

    :cond_0
    return-void
.end method

.method protected d()V
    .locals 2

    .line 2375
    invoke-virtual {p0}, Lcom/anythink/basead/ui/BaseScreenATView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 2376
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v1, p0, Lcom/anythink/basead/ui/BaseScreenATView;->x:I

    .line 2377
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v0, p0, Lcom/anythink/basead/ui/BaseScreenATView;->y:I

    .line 2379
    iget v1, p0, Lcom/anythink/basead/ui/BaseScreenATView;->x:I

    iput v1, p0, Lcom/anythink/basead/ui/BaseScreenATView;->W:I

    .line 2380
    iput v0, p0, Lcom/anythink/basead/ui/BaseScreenATView;->aa:I

    .line 265
    invoke-virtual {p0}, Lcom/anythink/basead/ui/BaseScreenATView;->v()V

    return-void
.end method

.method public destroy()V
    .locals 1

    .line 1115
    invoke-super {p0}, Lcom/anythink/basead/ui/BaseATView;->destroy()V

    const/4 v0, 0x0

    .line 1117
    iput-object v0, p0, Lcom/anythink/basead/ui/BaseScreenATView;->T:Lcom/anythink/basead/e/h;

    .line 1119
    iget-object v0, p0, Lcom/anythink/basead/ui/BaseScreenATView;->N:Lcom/anythink/basead/ui/BaseEndCardView;

    if-eqz v0, :cond_0

    .line 1120
    invoke-virtual {v0}, Lcom/anythink/basead/ui/BaseEndCardView;->a()V

    :cond_0
    return-void
.end method

.method protected final e()V
    .locals 6

    .line 909
    iget-object v0, p0, Lcom/anythink/basead/ui/BaseScreenATView;->T:Lcom/anythink/basead/e/h;

    if-eqz v0, :cond_9

    .line 911
    iget v0, p0, Lcom/anythink/basead/ui/BaseScreenATView;->F:I

    const/4 v1, 0x5

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eq v0, v5, :cond_4

    if-eq v0, v4, :cond_3

    if-eq v0, v3, :cond_2

    if-eq v0, v2, :cond_6

    if-eq v0, v1, :cond_1

    const/16 v1, 0x65

    if-eq v0, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x7

    goto :goto_0

    :cond_1
    const/4 v1, 0x6

    goto :goto_0

    :cond_2
    const/4 v1, 0x4

    goto :goto_0

    :cond_3
    const/4 v1, 0x3

    goto :goto_0

    .line 913
    :cond_4
    iget-object v0, p0, Lcom/anythink/basead/ui/BaseScreenATView;->b:Lcom/anythink/core/common/f/m;

    iget-object v0, v0, Lcom/anythink/core/common/f/m;->n:Lcom/anythink/core/common/f/n;

    invoke-virtual {v0}, Lcom/anythink/core/common/f/n;->ak()I

    move-result v0

    if-ne v0, v5, :cond_5

    const/4 v1, 0x2

    goto :goto_0

    :cond_5
    const/16 v1, 0x8

    .line 940
    :cond_6
    :goto_0
    new-instance v0, Lcom/anythink/basead/e/i;

    invoke-direct {v0}, Lcom/anythink/basead/e/i;-><init>()V

    .line 12016
    iput v1, v0, Lcom/anythink/basead/e/i;->c:I

    .line 944
    instance-of v1, p0, Lcom/anythink/basead/ui/LetterFullScreenATView;

    if-nez v1, :cond_8

    instance-of v1, p0, Lcom/anythink/basead/ui/LetterHalfScreenATView;

    if-eqz v1, :cond_7

    goto :goto_1

    .line 13027
    :cond_7
    iput v4, v0, Lcom/anythink/basead/e/i;->d:I

    goto :goto_2

    .line 12027
    :cond_8
    :goto_1
    iput v5, v0, Lcom/anythink/basead/e/i;->d:I

    .line 949
    :goto_2
    iget-object v1, p0, Lcom/anythink/basead/ui/BaseScreenATView;->T:Lcom/anythink/basead/e/h;

    invoke-interface {v1, v0}, Lcom/anythink/basead/e/h;->a(Lcom/anythink/basead/e/i;)V

    :cond_9
    return-void
.end method

.method protected final f()V
    .locals 2

    const/4 v0, 0x1

    .line 969
    iput-boolean v0, p0, Lcom/anythink/basead/ui/BaseScreenATView;->aj:Z

    .line 13880
    iget-object v0, p0, Lcom/anythink/basead/ui/BaseScreenATView;->O:Lcom/anythink/basead/ui/b;

    if-nez v0, :cond_0

    .line 13881
    new-instance v0, Lcom/anythink/basead/ui/b;

    iget-object v1, p0, Lcom/anythink/basead/ui/BaseScreenATView;->K:Landroid/widget/RelativeLayout;

    invoke-direct {v0, v1}, Lcom/anythink/basead/ui/b;-><init>(Landroid/view/ViewGroup;)V

    iput-object v0, p0, Lcom/anythink/basead/ui/BaseScreenATView;->O:Lcom/anythink/basead/ui/b;

    .line 13883
    :cond_0
    iget-object v0, p0, Lcom/anythink/basead/ui/BaseScreenATView;->O:Lcom/anythink/basead/ui/b;

    invoke-virtual {v0}, Lcom/anythink/basead/ui/b;->b()V

    return-void
.end method

.method public fillVideoEndRecord(Z)Lcom/anythink/basead/c/j;
    .locals 11

    .line 1025
    new-instance v0, Lcom/anythink/basead/c/j;

    invoke-direct {v0}, Lcom/anythink/basead/c/j;-><init>()V

    .line 1026
    iget v1, p0, Lcom/anythink/basead/ui/BaseScreenATView;->w:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-ne v1, v2, :cond_0

    const/4 v1, 0x4

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    iput v1, v0, Lcom/anythink/basead/c/j;->l:I

    .line 1027
    iput v3, v0, Lcom/anythink/basead/c/j;->r:I

    .line 1028
    iget-object v1, p0, Lcom/anythink/basead/ui/BaseScreenATView;->L:Lcom/anythink/basead/ui/animplayerview/BasePlayerView;

    const-wide/16 v4, 0x3e8

    const-wide/16 v6, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/anythink/basead/ui/animplayerview/BasePlayerView;->getVideoLength()J

    move-result-wide v8

    div-long/2addr v8, v4

    goto :goto_1

    :cond_1
    move-wide v8, v6

    :goto_1
    iput-wide v8, v0, Lcom/anythink/basead/c/j;->a:J

    .line 1029
    iget-wide v8, p0, Lcom/anythink/basead/ui/BaseScreenATView;->B:J

    div-long/2addr v8, v4

    iput-wide v8, v0, Lcom/anythink/basead/c/j;->b:J

    .line 1030
    iget-object v1, p0, Lcom/anythink/basead/ui/BaseScreenATView;->L:Lcom/anythink/basead/ui/animplayerview/BasePlayerView;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/anythink/basead/ui/animplayerview/BasePlayerView;->getCurrentPosition()J

    move-result-wide v8

    div-long/2addr v8, v4

    goto :goto_2

    :cond_2
    move-wide v8, v6

    :goto_2
    iput-wide v8, v0, Lcom/anythink/basead/c/j;->c:J

    .line 1031
    iget-wide v4, p0, Lcom/anythink/basead/ui/BaseScreenATView;->B:J

    const/4 v1, 0x0

    cmp-long v8, v4, v6

    if-nez v8, :cond_3

    const/4 v4, 0x1

    goto :goto_3

    :cond_3
    const/4 v4, 0x0

    :goto_3
    iput v4, v0, Lcom/anythink/basead/c/j;->d:I

    .line 1032
    iget-wide v4, p0, Lcom/anythink/basead/ui/BaseScreenATView;->B:J

    cmp-long v8, v4, v6

    if-nez v8, :cond_4

    const/4 v4, 0x1

    goto :goto_4

    :cond_4
    const/4 v4, 0x2

    :goto_4
    iput v4, v0, Lcom/anythink/basead/c/j;->o:I

    .line 1033
    iget-object v4, p0, Lcom/anythink/basead/ui/BaseScreenATView;->L:Lcom/anythink/basead/ui/animplayerview/BasePlayerView;

    if-eqz v4, :cond_5

    invoke-virtual {v4}, Lcom/anythink/basead/ui/animplayerview/BasePlayerView;->getCurrentPosition()J

    move-result-wide v4

    iget-object v8, p0, Lcom/anythink/basead/ui/BaseScreenATView;->L:Lcom/anythink/basead/ui/animplayerview/BasePlayerView;

    invoke-virtual {v8}, Lcom/anythink/basead/ui/animplayerview/BasePlayerView;->getVideoLength()J

    move-result-wide v8

    cmp-long v10, v4, v8

    if-nez v10, :cond_5

    goto :goto_5

    :cond_5
    const/4 v3, 0x0

    :goto_5
    iput v3, v0, Lcom/anythink/basead/c/j;->e:I

    if-eqz p1, :cond_6

    const/4 v2, 0x0

    .line 1034
    :cond_6
    iput v2, v0, Lcom/anythink/basead/c/j;->u:I

    .line 1035
    iget-wide v1, p0, Lcom/anythink/basead/ui/BaseScreenATView;->ad:J

    iput-wide v1, v0, Lcom/anythink/basead/c/j;->f:J

    .line 1036
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/anythink/basead/c/j;->g:J

    .line 1037
    iget-object p1, p0, Lcom/anythink/basead/ui/BaseScreenATView;->L:Lcom/anythink/basead/ui/animplayerview/BasePlayerView;

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Lcom/anythink/basead/ui/animplayerview/BasePlayerView;->getCurrentPosition()J

    move-result-wide v6

    :cond_7
    iput-wide v6, v0, Lcom/anythink/basead/c/j;->h:J

    .line 1039
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Video End Record:"

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/anythink/basead/c/j;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object v0
.end method

.method protected final g()V
    .locals 2

    const/4 v0, 0x0

    .line 975
    iput-boolean v0, p0, Lcom/anythink/basead/ui/BaseScreenATView;->aj:Z

    .line 976
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v0

    new-instance v1, Lcom/anythink/basead/ui/BaseScreenATView$12;

    invoke-direct {v1, p0}, Lcom/anythink/basead/ui/BaseScreenATView$12;-><init>(Lcom/anythink/basead/ui/BaseScreenATView;)V

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/b/o;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getCloseButtonScaleFactor()F
    .locals 1

    .line 257
    iget v0, p0, Lcom/anythink/basead/ui/BaseScreenATView;->J:F

    return v0
.end method

.method public getHideBannerTime()J
    .locals 2

    .line 237
    iget-wide v0, p0, Lcom/anythink/basead/ui/BaseScreenATView;->ag:J

    return-wide v0
.end method

.method public getPlayerViewType()I
    .locals 1

    .line 1540
    iget v0, p0, Lcom/anythink/basead/ui/BaseScreenATView;->F:I

    return v0
.end method

.method public getShowBannerTime()J
    .locals 2

    .line 229
    iget-wide v0, p0, Lcom/anythink/basead/ui/BaseScreenATView;->ae:J

    return-wide v0
.end method

.method protected final declared-synchronized h()V
    .locals 4

    monitor-enter p0

    .line 353
    :try_start_0
    iget-object v0, p0, Lcom/anythink/basead/ui/BaseScreenATView;->b:Lcom/anythink/core/common/f/m;

    iget-object v0, v0, Lcom/anythink/core/common/f/m;->n:Lcom/anythink/core/common/f/n;

    invoke-virtual {v0}, Lcom/anythink/core/common/f/n;->V()I

    move-result v0

    if-lez v0, :cond_0

    .line 355
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/basead/ui/BaseScreenATView;->U:Ljava/lang/Runnable;

    iget-object v2, p0, Lcom/anythink/basead/ui/BaseScreenATView;->b:Lcom/anythink/core/common/f/m;

    iget-object v2, v2, Lcom/anythink/core/common/f/m;->n:Lcom/anythink/core/common/f/n;

    .line 356
    invoke-virtual {v2}, Lcom/anythink/core/common/f/n;->V()I

    move-result v2

    int-to-long v2, v2

    .line 355
    invoke-virtual {v0, v1, v2, v3}, Lcom/anythink/core/common/b/o;->a(Ljava/lang/Runnable;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    .line 358
    :cond_0
    :try_start_1
    invoke-super {p0}, Lcom/anythink/basead/ui/BaseATView;->h()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 360
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public hasReward()Z
    .locals 1

    .line 205
    iget-boolean v0, p0, Lcom/anythink/basead/ui/BaseScreenATView;->H:Z

    return v0
.end method

.method protected final i()Lcom/anythink/basead/c/i;
    .locals 3

    .line 364
    new-instance v0, Lcom/anythink/basead/c/i;

    iget-object v1, p0, Lcom/anythink/basead/ui/BaseScreenATView;->b:Lcom/anythink/core/common/f/m;

    iget-object v1, v1, Lcom/anythink/core/common/f/m;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/anythink/basead/ui/BaseScreenATView;->o:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/anythink/basead/c/i;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    invoke-virtual {p0}, Lcom/anythink/basead/ui/BaseScreenATView;->getWidth()I

    move-result v1

    iput v1, v0, Lcom/anythink/basead/c/i;->e:I

    .line 367
    invoke-virtual {p0}, Lcom/anythink/basead/ui/BaseScreenATView;->getHeight()I

    move-result v1

    iput v1, v0, Lcom/anythink/basead/c/i;->f:I

    .line 368
    iget-object v1, p0, Lcom/anythink/basead/ui/BaseScreenATView;->L:Lcom/anythink/basead/ui/animplayerview/BasePlayerView;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/anythink/basead/ui/animplayerview/BasePlayerView;->hasVideo()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 369
    invoke-virtual {p0, v1}, Lcom/anythink/basead/ui/BaseScreenATView;->fillVideoEndRecord(Z)Lcom/anythink/basead/c/j;

    move-result-object v1

    iput-object v1, v0, Lcom/anythink/basead/c/i;->h:Lcom/anythink/basead/c/j;

    :cond_0
    return-object v0
.end method

.method public init()V
    .locals 4

    .line 269
    invoke-virtual {p0}, Lcom/anythink/basead/ui/BaseScreenATView;->b()V

    .line 271
    iget-boolean v0, p0, Lcom/anythink/basead/ui/BaseScreenATView;->G:Z

    if-eqz v0, :cond_0

    .line 272
    invoke-virtual {p0}, Lcom/anythink/basead/ui/BaseScreenATView;->q()V

    return-void

    .line 273
    :cond_0
    iget v0, p0, Lcom/anythink/basead/ui/BaseScreenATView;->v:I

    const/4 v1, 0x1

    if-ne v1, v0, :cond_2

    .line 2629
    iget v0, p0, Lcom/anythink/basead/ui/BaseScreenATView;->F:I

    const/16 v2, 0x64

    if-ne v0, v2, :cond_1

    const/4 v0, 0x0

    .line 2630
    invoke-direct {p0, v0}, Lcom/anythink/basead/ui/BaseScreenATView;->a(Ljava/util/List;)V

    goto :goto_0

    .line 2633
    :cond_1
    new-instance v0, Lcom/anythink/basead/ui/BaseScreenATView$7;

    invoke-direct {v0, p0}, Lcom/anythink/basead/ui/BaseScreenATView$7;-><init>(Lcom/anythink/basead/ui/BaseScreenATView;)V

    .line 3418
    invoke-static {}, Lcom/anythink/core/common/o/b/b;->a()Lcom/anythink/core/common/o/b/b;

    move-result-object v2

    new-instance v3, Lcom/anythink/basead/ui/BaseScreenATView$5;

    invoke-direct {v3, p0, v0}, Lcom/anythink/basead/ui/BaseScreenATView$5;-><init>(Lcom/anythink/basead/ui/BaseScreenATView;Lcom/anythink/basead/ui/BaseScreenATView$a;)V

    const/4 v0, 0x2

    .line 4137
    invoke-virtual {v2, v3, v0, v1}, Lcom/anythink/core/common/o/b/b;->a(Ljava/lang/Runnable;IZ)V

    .line 276
    :goto_0
    invoke-direct {p0}, Lcom/anythink/basead/ui/BaseScreenATView;->S()V

    return-void

    :cond_2
    const/4 v1, 0x3

    if-ne v1, v0, :cond_4

    .line 278
    iget-object v0, p0, Lcom/anythink/basead/ui/BaseScreenATView;->c:Lcom/anythink/core/common/f/l;

    iget-object v1, p0, Lcom/anythink/basead/ui/BaseScreenATView;->b:Lcom/anythink/core/common/f/m;

    invoke-static {v0, v1}, Lcom/anythink/basead/a/d;->a(Lcom/anythink/core/common/f/l;Lcom/anythink/core/common/f/m;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 280
    invoke-virtual {p0}, Lcom/anythink/basead/ui/BaseScreenATView;->p()V

    .line 282
    invoke-direct {p0}, Lcom/anythink/basead/ui/BaseScreenATView;->S()V

    return-void

    .line 284
    :cond_3
    invoke-virtual {p0}, Lcom/anythink/basead/ui/BaseScreenATView;->q()V

    .line 4544
    iget-object v0, p0, Lcom/anythink/basead/ui/BaseATView;->c:Lcom/anythink/core/common/f/l;

    invoke-static {v0}, Lcom/anythink/basead/a/d;->b(Lcom/anythink/core/common/f/l;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 287
    invoke-virtual {p0}, Lcom/anythink/basead/ui/BaseScreenATView;->h()V

    :cond_4
    return-void
.end method

.method public isShowEndCard()Z
    .locals 1

    .line 197
    iget-boolean v0, p0, Lcom/anythink/basead/ui/BaseScreenATView;->G:Z

    return v0
.end method

.method public isVideoMute()Z
    .locals 1

    .line 221
    iget-boolean v0, p0, Lcom/anythink/basead/ui/BaseScreenATView;->I:Z

    return v0
.end method

.method protected final l()Z
    .locals 2

    .line 1399
    iget-object v0, p0, Lcom/anythink/basead/ui/BaseScreenATView;->c:Lcom/anythink/core/common/f/l;

    iget-object v1, p0, Lcom/anythink/basead/ui/BaseScreenATView;->b:Lcom/anythink/core/common/f/m;

    invoke-static {v0, v1}, Lcom/anythink/basead/a/d;->a(Lcom/anythink/core/common/f/l;Lcom/anythink/core/common/f/m;)Z

    move-result v0

    return v0
.end method

.method protected m()Landroid/widget/RelativeLayout$LayoutParams;
    .locals 5

    .line 1382
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1384
    iget v1, p0, Lcom/anythink/basead/ui/BaseScreenATView;->w:I

    const/16 v2, 0xb

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-ne v1, v3, :cond_0

    .line 1386
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v1, 0xc

    .line 1387
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1388
    invoke-virtual {p0}, Lcom/anythink/basead/ui/BaseScreenATView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x431a0000    # 154.0f

    invoke-static {v1, v2}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {v0, v4, v4, v4, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_0

    .line 1390
    :cond_0
    invoke-virtual {p0}, Lcom/anythink/basead/ui/BaseScreenATView;->getMeasuredHeight()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    div-int/lit8 v1, v1, 0x3

    .line 1391
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1392
    invoke-virtual {v0, v4, v1, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    :goto_0
    return-object v0
.end method

.method public needHideFeedbackButton()Z
    .locals 1

    .line 217
    iget-boolean v0, p0, Lcom/anythink/basead/ui/BaseScreenATView;->ai:Z

    return v0
.end method

.method protected o()V
    .locals 0

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 1507
    invoke-virtual {p0}, Lcom/anythink/basead/ui/BaseScreenATView;->N()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1508
    iget-object v0, p0, Lcom/anythink/basead/ui/BaseScreenATView;->L:Lcom/anythink/basead/ui/animplayerview/BasePlayerView;

    check-cast v0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->onActivityResult(IILandroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method protected p()V
    .locals 1

    .line 620
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, v0}, Lcom/anythink/basead/ui/BaseScreenATView;->a(Ljava/util/List;)V

    return-void
.end method

.method protected q()V
    .locals 5

    const/16 v0, 0x66

    .line 653
    invoke-virtual {p0, v0}, Lcom/anythink/basead/ui/BaseScreenATView;->a(I)V

    const/4 v0, 0x1

    .line 654
    iput-boolean v0, p0, Lcom/anythink/basead/ui/BaseScreenATView;->G:Z

    .line 7544
    iget-object v0, p0, Lcom/anythink/basead/ui/BaseATView;->c:Lcom/anythink/core/common/f/l;

    invoke-static {v0}, Lcom/anythink/basead/a/d;->b(Lcom/anythink/core/common/f/l;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 7765
    iget-object v0, p0, Lcom/anythink/basead/ui/BaseScreenATView;->N:Lcom/anythink/basead/ui/BaseEndCardView;

    if-nez v0, :cond_0

    .line 7766
    invoke-direct {p0, v1}, Lcom/anythink/basead/ui/BaseScreenATView;->b(Z)Lcom/anythink/basead/ui/BaseEndCardView;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/basead/ui/BaseScreenATView;->N:Lcom/anythink/basead/ui/BaseEndCardView;

    .line 7769
    :cond_0
    invoke-virtual {p0}, Lcom/anythink/basead/ui/BaseScreenATView;->K()V

    .line 7770
    invoke-virtual {p0}, Lcom/anythink/basead/ui/BaseScreenATView;->L()V

    goto :goto_0

    .line 7778
    :cond_1
    invoke-virtual {p0}, Lcom/anythink/basead/ui/BaseScreenATView;->r()I

    move-result v0

    iput v0, p0, Lcom/anythink/basead/ui/BaseScreenATView;->E:I

    .line 7780
    new-instance v0, Lcom/anythink/basead/ui/EndCardView;

    invoke-virtual {p0}, Lcom/anythink/basead/ui/BaseScreenATView;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/anythink/basead/ui/BaseScreenATView;->c:Lcom/anythink/core/common/f/l;

    iget-object v4, p0, Lcom/anythink/basead/ui/BaseScreenATView;->b:Lcom/anythink/core/common/f/m;

    invoke-direct {v0, v2, v3, v4}, Lcom/anythink/basead/ui/EndCardView;-><init>(Landroid/content/Context;Lcom/anythink/core/common/f/l;Lcom/anythink/core/common/f/m;)V

    .line 7781
    iget v2, p0, Lcom/anythink/basead/ui/BaseScreenATView;->x:I

    iget v3, p0, Lcom/anythink/basead/ui/BaseScreenATView;->y:I

    invoke-virtual {v0, v2, v3}, Lcom/anythink/basead/ui/EndCardView;->setSize(II)V

    .line 7782
    new-instance v2, Lcom/anythink/basead/ui/BaseScreenATView$10;

    invoke-direct {v2, p0}, Lcom/anythink/basead/ui/BaseScreenATView$10;-><init>(Lcom/anythink/basead/ui/BaseScreenATView;)V

    invoke-virtual {v0, v1, v1, v2}, Lcom/anythink/basead/ui/EndCardView;->init(ZZLcom/anythink/basead/ui/EndCardView$a;)V

    .line 7796
    iput-object v0, p0, Lcom/anythink/basead/ui/BaseScreenATView;->N:Lcom/anythink/basead/ui/BaseEndCardView;

    .line 7798
    invoke-virtual {p0}, Lcom/anythink/basead/ui/BaseScreenATView;->K()V

    .line 7801
    invoke-virtual {v0}, Lcom/anythink/basead/ui/EndCardView;->load()V

    .line 7803
    iget v0, p0, Lcom/anythink/basead/ui/BaseScreenATView;->E:I

    invoke-virtual {p0, v0}, Lcom/anythink/basead/ui/BaseScreenATView;->b(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 7805
    invoke-virtual {p0}, Lcom/anythink/basead/ui/BaseScreenATView;->G()V

    .line 7806
    invoke-virtual {p0}, Lcom/anythink/basead/ui/BaseScreenATView;->P()Lcom/anythink/basead/ui/PanelView;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 7807
    invoke-virtual {v0}, Lcom/anythink/basead/ui/PanelView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_3

    .line 7808
    invoke-virtual {v0}, Lcom/anythink/basead/ui/PanelView;->getCTAButton()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/anythink/basead/ui/PanelView;->getCTAButton()Landroid/view/View;

    move-result-object v1

    .line 7809
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_2

    .line 7810
    invoke-virtual {v0}, Lcom/anythink/basead/ui/PanelView;->getCTAButton()Landroid/view/View;

    move-result-object v0

    .line 8463
    iput-object v0, p0, Lcom/anythink/basead/ui/BaseATView;->q:Landroid/view/View;

    goto :goto_0

    .line 9463
    :cond_2
    iput-object v0, p0, Lcom/anythink/basead/ui/BaseATView;->q:Landroid/view/View;

    .line 662
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/anythink/basead/ui/BaseScreenATView;->N:Lcom/anythink/basead/ui/BaseEndCardView;

    if-eqz v0, :cond_4

    .line 663
    new-instance v1, Lcom/anythink/basead/ui/BaseScreenATView$8;

    invoke-direct {v1, p0}, Lcom/anythink/basead/ui/BaseScreenATView$8;-><init>(Lcom/anythink/basead/ui/BaseScreenATView;)V

    iget-object v2, p0, Lcom/anythink/basead/ui/BaseScreenATView;->b:Lcom/anythink/core/common/f/m;

    iget-object v2, v2, Lcom/anythink/core/common/f/m;->n:Lcom/anythink/core/common/f/n;

    .line 668
    invoke-static {v2}, Lcom/anythink/basead/ui/BaseScreenATView;->a(Lcom/anythink/core/common/f/n;)I

    move-result v2

    int-to-long v2, v2

    .line 663
    invoke-virtual {v0, v1, v2, v3}, Lcom/anythink/basead/ui/BaseEndCardView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 671
    :cond_4
    invoke-virtual {p0}, Lcom/anythink/basead/ui/BaseScreenATView;->i()Lcom/anythink/basead/c/i;

    move-result-object v0

    const/4 v1, 0x6

    .line 672
    iget-object v2, p0, Lcom/anythink/basead/ui/BaseScreenATView;->c:Lcom/anythink/core/common/f/l;

    invoke-static {v1, v2, v0}, Lcom/anythink/basead/a/a;->a(ILcom/anythink/core/common/f/l;Lcom/anythink/basead/c/i;)V

    return-void
.end method

.method protected abstract r()I
.end method

.method protected final s()V
    .locals 1

    const/16 v0, 0x6e

    .line 985
    invoke-virtual {p0, v0}, Lcom/anythink/basead/ui/BaseScreenATView;->a(I)V

    const/4 v0, 0x1

    .line 986
    iput-boolean v0, p0, Lcom/anythink/basead/ui/BaseScreenATView;->ah:Z

    .line 988
    :try_start_0
    iget-object v0, p0, Lcom/anythink/basead/ui/BaseScreenATView;->ak:Lcom/anythink/basead/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/anythink/basead/c;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 991
    :cond_0
    invoke-direct {p0}, Lcom/anythink/basead/ui/BaseScreenATView;->ac()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 993
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method public setCloseButtonScaleFactor(F)V
    .locals 1

    .line 250
    iput p1, p0, Lcom/anythink/basead/ui/BaseScreenATView;->J:F

    .line 251
    invoke-virtual {p0}, Lcom/anythink/basead/ui/BaseScreenATView;->M()Lcom/anythink/basead/ui/CloseImageView;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 252
    invoke-virtual {p0}, Lcom/anythink/basead/ui/BaseScreenATView;->M()Lcom/anythink/basead/ui/CloseImageView;

    move-result-object p1

    iget v0, p0, Lcom/anythink/basead/ui/BaseScreenATView;->J:F

    invoke-virtual {p1, v0}, Lcom/anythink/basead/ui/CloseImageView;->setClickAreaScaleFactor(F)V

    :cond_0
    return-void
.end method

.method public setHasReward(Z)V
    .locals 0

    .line 209
    iput-boolean p1, p0, Lcom/anythink/basead/ui/BaseScreenATView;->H:Z

    return-void
.end method

.method public setHideBannerTime(J)V
    .locals 0

    .line 241
    iput-wide p1, p0, Lcom/anythink/basead/ui/BaseScreenATView;->ag:J

    return-void
.end method

.method public setHideFeedbackButton(Z)V
    .locals 0

    .line 213
    iput-boolean p1, p0, Lcom/anythink/basead/ui/BaseScreenATView;->ai:Z

    return-void
.end method

.method public setIsShowEndCard(Z)V
    .locals 0

    .line 201
    iput-boolean p1, p0, Lcom/anythink/basead/ui/BaseScreenATView;->G:Z

    return-void
.end method

.method public setListener(Lcom/anythink/basead/e/h;)V
    .locals 0

    .line 193
    iput-object p1, p0, Lcom/anythink/basead/ui/BaseScreenATView;->T:Lcom/anythink/basead/e/h;

    return-void
.end method

.method public setShowBannerTime(J)V
    .locals 0

    .line 233
    iput-wide p1, p0, Lcom/anythink/basead/ui/BaseScreenATView;->ae:J

    return-void
.end method

.method public setVideoMute(Z)V
    .locals 0

    .line 225
    iput-boolean p1, p0, Lcom/anythink/basead/ui/BaseScreenATView;->I:Z

    return-void
.end method

.method protected final t()V
    .locals 3

    const/16 v0, 0x6f

    .line 1013
    invoke-virtual {p0, v0}, Lcom/anythink/basead/ui/BaseScreenATView;->a(I)V

    const/4 v0, 0x0

    .line 1014
    iput-boolean v0, p0, Lcom/anythink/basead/ui/BaseScreenATView;->ah:Z

    .line 1015
    iget-object v0, p0, Lcom/anythink/basead/ui/BaseScreenATView;->L:Lcom/anythink/basead/ui/animplayerview/BasePlayerView;

    if-eqz v0, :cond_1

    .line 1016
    invoke-virtual {v0}, Lcom/anythink/basead/ui/animplayerview/BasePlayerView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xb

    .line 1017
    iget-object v1, p0, Lcom/anythink/basead/ui/BaseScreenATView;->c:Lcom/anythink/core/common/f/l;

    .line 1018
    invoke-virtual {p0}, Lcom/anythink/basead/ui/BaseScreenATView;->i()Lcom/anythink/basead/c/i;

    move-result-object v2

    .line 1017
    invoke-static {v0, v1, v2}, Lcom/anythink/basead/a/a;->a(ILcom/anythink/core/common/f/l;Lcom/anythink/basead/c/i;)V

    .line 1020
    :cond_0
    iget-object v0, p0, Lcom/anythink/basead/ui/BaseScreenATView;->L:Lcom/anythink/basead/ui/animplayerview/BasePlayerView;

    invoke-virtual {v0}, Lcom/anythink/basead/ui/animplayerview/BasePlayerView;->pause()V

    :cond_1
    return-void
.end method

.method protected u()V
    .locals 2

    .line 1109
    invoke-virtual {p0}, Lcom/anythink/basead/ui/BaseScreenATView;->destroy()V

    .line 1110
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/basead/ui/BaseScreenATView;->U:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/b/o;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected v()V
    .locals 3

    .line 1135
    iget-object v0, p0, Lcom/anythink/basead/ui/BaseScreenATView;->c:Lcom/anythink/core/common/f/l;

    invoke-virtual {v0}, Lcom/anythink/core/common/f/l;->x()Ljava/lang/String;

    move-result-object v0

    .line 1136
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1137
    invoke-static {}, Lcom/anythink/basead/a/e;->a()Lcom/anythink/basead/a/e;

    const/4 v1, 0x1

    .line 1138
    invoke-static {v1, v0}, Lcom/anythink/basead/a/e;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1137
    invoke-static {v0}, Lcom/anythink/core/common/o/c;->a(Ljava/lang/String;)[I

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    .line 1140
    aget v2, v0, v2

    iput v2, p0, Lcom/anythink/basead/ui/BaseScreenATView;->ab:I

    .line 1141
    aget v0, v0, v1

    iput v0, p0, Lcom/anythink/basead/ui/BaseScreenATView;->ac:I

    .line 1143
    iput v2, p0, Lcom/anythink/basead/ui/BaseScreenATView;->W:I

    .line 1144
    iput v0, p0, Lcom/anythink/basead/ui/BaseScreenATView;->aa:I

    .line 1148
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mMaterialWidth: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/anythink/basead/ui/BaseScreenATView;->W:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mMaterialHeight: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/anythink/basead/ui/BaseScreenATView;->aa:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    return-void
.end method

.method protected w()V
    .locals 8

    .line 1156
    iget-object v0, p0, Lcom/anythink/basead/ui/BaseScreenATView;->M:Lcom/anythink/basead/ui/PanelView;

    if-eqz v0, :cond_0

    const/4 v1, 0x4

    .line 1157
    invoke-virtual {v0, v1}, Lcom/anythink/basead/ui/PanelView;->setVisibility(I)V

    .line 1158
    iget-object v2, p0, Lcom/anythink/basead/ui/BaseScreenATView;->M:Lcom/anythink/basead/ui/PanelView;

    iget-object v3, p0, Lcom/anythink/basead/ui/BaseScreenATView;->c:Lcom/anythink/core/common/f/l;

    iget-object v4, p0, Lcom/anythink/basead/ui/BaseScreenATView;->b:Lcom/anythink/core/common/f/m;

    iget v5, p0, Lcom/anythink/basead/ui/BaseScreenATView;->w:I

    invoke-virtual {p0}, Lcom/anythink/basead/ui/BaseScreenATView;->k()Z

    move-result v6

    new-instance v7, Lcom/anythink/basead/ui/BaseScreenATView$13;

    invoke-direct {v7, p0}, Lcom/anythink/basead/ui/BaseScreenATView$13;-><init>(Lcom/anythink/basead/ui/BaseScreenATView;)V

    invoke-virtual/range {v2 .. v7}, Lcom/anythink/basead/ui/PanelView;->init(Lcom/anythink/core/common/f/l;Lcom/anythink/core/common/f/m;IZLcom/anythink/basead/ui/PanelView$a;)V

    .line 1176
    :cond_0
    invoke-virtual {p0}, Lcom/anythink/basead/ui/BaseScreenATView;->x()V

    return-void
.end method

.method protected x()V
    .locals 0

    return-void
.end method

.method protected final y()Z
    .locals 1

    .line 1187
    iget-object v0, p0, Lcom/anythink/basead/ui/BaseScreenATView;->ak:Lcom/anythink/basead/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/anythink/basead/c;->a()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/anythink/basead/ui/BaseScreenATView;->ah:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method protected z()V
    .locals 2

    .line 1196
    iget-object v0, p0, Lcom/anythink/basead/ui/BaseScreenATView;->S:Lcom/anythink/basead/ui/MuteImageView;

    if-nez v0, :cond_0

    return-void

    .line 1200
    :cond_0
    iget-boolean v1, p0, Lcom/anythink/basead/ui/BaseScreenATView;->I:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    .line 1201
    invoke-virtual {v0, v1}, Lcom/anythink/basead/ui/MuteImageView;->setMute(Z)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 1203
    invoke-virtual {v0, v1}, Lcom/anythink/basead/ui/MuteImageView;->setMute(Z)V

    .line 1206
    :goto_0
    iget-object v0, p0, Lcom/anythink/basead/ui/BaseScreenATView;->S:Lcom/anythink/basead/ui/MuteImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/anythink/basead/ui/MuteImageView;->setVisibility(I)V

    .line 1207
    iget-object v0, p0, Lcom/anythink/basead/ui/BaseScreenATView;->S:Lcom/anythink/basead/ui/MuteImageView;

    new-instance v1, Lcom/anythink/basead/ui/BaseScreenATView$2;

    invoke-direct {v1, p0}, Lcom/anythink/basead/ui/BaseScreenATView$2;-><init>(Lcom/anythink/basead/ui/BaseScreenATView;)V

    invoke-virtual {v0, v1}, Lcom/anythink/basead/ui/MuteImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
