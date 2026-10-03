.class final Lcom/anythink/core/common/g$5;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/anythink/core/common/p/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/core/common/g;->a(Lcom/anythink/core/common/p/d;Lcom/anythink/core/common/f/h;Lcom/anythink/core/common/f/au;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/core/common/f/au;

.field final synthetic b:Lcom/anythink/core/common/g;


# direct methods
.method constructor <init>(Lcom/anythink/core/common/g;Lcom/anythink/core/common/f/au;)V
    .locals 0

    .line 796
    iput-object p1, p0, Lcom/anythink/core/common/g$5;->b:Lcom/anythink/core/common/g;

    iput-object p2, p0, Lcom/anythink/core/common/g$5;->a:Lcom/anythink/core/common/f/au;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/anythink/core/api/ATBaseAdAdapter;Ljava/lang/String;)V
    .locals 1

    .line 816
    iget-object v0, p0, Lcom/anythink/core/common/g$5;->b:Lcom/anythink/core/common/g;

    invoke-virtual {v0, p1, p2}, Lcom/anythink/core/common/g;->a(Lcom/anythink/core/api/ATBaseAdAdapter;Ljava/lang/String;)V

    return-void
.end method

.method public final a(Lcom/anythink/core/common/f/h;)V
    .locals 3

    .line 800
    iget-object v0, p0, Lcom/anythink/core/common/g$5;->b:Lcom/anythink/core/common/g;

    iget-object v0, v0, Lcom/anythink/core/common/g;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/anythink/core/common/n/a;->a(Landroid/content/Context;)Lcom/anythink/core/common/n/a;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/anythink/core/common/n/a;->a(ILcom/anythink/core/common/f/at;)V

    .line 801
    sget-object v0, Lcom/anythink/core/common/b/h$m;->a:Ljava/lang/String;

    sget-object v1, Lcom/anythink/core/common/b/h$m;->n:Ljava/lang/String;

    const-string v2, ""

    invoke-static {p1, v0, v1, v2}, Lcom/anythink/core/common/o/o;->a(Lcom/anythink/core/common/f/h;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final a(Lcom/anythink/core/common/f/h;Lcom/anythink/core/api/ATBaseAdAdapter;)V
    .locals 1

    .line 807
    iget-object v0, p0, Lcom/anythink/core/common/g$5;->b:Lcom/anythink/core/common/g;

    invoke-static {v0, p1}, Lcom/anythink/core/common/g;->a(Lcom/anythink/core/common/g;Lcom/anythink/core/common/f/h;)V

    .line 809
    iget-object p1, p0, Lcom/anythink/core/common/g$5;->a:Lcom/anythink/core/common/f/au;

    invoke-virtual {p1}, Lcom/anythink/core/common/f/au;->aC()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 810
    iget-object p1, p0, Lcom/anythink/core/common/g$5;->b:Lcom/anythink/core/common/g;

    invoke-static {p1, p2}, Lcom/anythink/core/common/g;->a(Lcom/anythink/core/common/g;Lcom/anythink/core/api/ATBaseAdAdapter;)V

    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;Lcom/anythink/core/api/ATBaseAdAdapter;Lcom/anythink/core/common/f/au;Lcom/anythink/core/common/f/b;)V
    .locals 1

    .line 830
    iget-object v0, p0, Lcom/anythink/core/common/g$5;->b:Lcom/anythink/core/common/g;

    invoke-virtual {p4}, Lcom/anythink/core/common/f/b;->e()Lcom/anythink/core/api/BaseAd;

    move-result-object p4

    invoke-static {v0, p1, p2, p4, p3}, Lcom/anythink/core/common/g;->a(Lcom/anythink/core/common/g;Ljava/lang/String;Lcom/anythink/core/api/ATBaseAdAdapter;Lcom/anythink/core/api/BaseAd;Lcom/anythink/core/common/f/au;)V

    return-void
.end method

.method public final a(Ljava/lang/String;Lcom/anythink/core/api/ATBaseAdAdapter;Lcom/anythink/core/common/p/a;)V
    .locals 1

    .line 861
    iget-object v0, p0, Lcom/anythink/core/common/g$5;->b:Lcom/anythink/core/common/g;

    invoke-virtual {v0, p1, p3}, Lcom/anythink/core/common/g;->a(Ljava/lang/String;Lcom/anythink/core/common/p/a;)V

    if-eqz p2, :cond_0

    .line 862
    invoke-virtual {p2}, Lcom/anythink/core/api/ATBaseAdAdapter;->getUnitGroupInfo()Lcom/anythink/core/common/f/au;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 863
    invoke-virtual {p2}, Lcom/anythink/core/api/ATBaseAdAdapter;->getUnitGroupInfo()Lcom/anythink/core/common/f/au;

    .line 865
    iget-object p1, p0, Lcom/anythink/core/common/g$5;->a:Lcom/anythink/core/common/f/au;

    invoke-virtual {p1}, Lcom/anythink/core/common/f/au;->aC()I

    move-result p1

    const/4 p3, 0x1

    if-ne p1, p3, :cond_0

    .line 866
    iget-object p1, p0, Lcom/anythink/core/common/g$5;->b:Lcom/anythink/core/common/g;

    invoke-static {p1, p2}, Lcom/anythink/core/common/g;->b(Lcom/anythink/core/common/g;Lcom/anythink/core/api/ATBaseAdAdapter;)V

    :cond_0
    return-void
.end method

.method public final varargs a(Ljava/lang/String;Lcom/anythink/core/api/ATBaseAdAdapter;[Lcom/anythink/core/api/BaseAd;)V
    .locals 4

    .line 835
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/core/common/g$5;->b:Lcom/anythink/core/common/g;

    iget-object v1, v1, Lcom/anythink/core/common/g;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/b/o;->p(Ljava/lang/String;)Lcom/anythink/core/api/IATAdFilter;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz p3, :cond_0

    .line 837
    array-length v2, p3

    if-lez v2, :cond_0

    const/4 v2, 0x0

    .line 838
    aget-object v2, p3, v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    if-eqz v0, :cond_1

    .line 840
    invoke-static {p2}, Lcom/anythink/core/common/b/k;->a(Lcom/anythink/core/common/b/d;)Lcom/anythink/core/common/b/k;

    move-result-object v3

    invoke-interface {v0, v3, v2}, Lcom/anythink/core/api/IATAdFilter;->isAdFilter(Lcom/anythink/core/api/ATAdInfo;Lcom/anythink/core/api/IATThirdPartyMaterial;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 841
    new-instance p3, Lcom/anythink/core/common/p/a;

    invoke-direct {p3}, Lcom/anythink/core/common/p/a;-><init>()V

    const/16 v0, 0x8

    .line 842
    iput v0, p3, Lcom/anythink/core/common/p/a;->a:I

    .line 843
    invoke-virtual {p2}, Lcom/anythink/core/api/ATBaseAdAdapter;->getTrackingInfo()Lcom/anythink/core/common/f/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/f/h;->P()J

    move-result-wide v0

    iput-wide v0, p3, Lcom/anythink/core/common/p/a;->c:J

    const-string v0, "4008"

    const-string v1, ""

    .line 844
    invoke-static {v0, v1, v1}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    move-result-object v0

    iput-object v0, p3, Lcom/anythink/core/common/p/a;->b:Lcom/anythink/core/api/AdError;

    .line 845
    invoke-virtual {p2}, Lcom/anythink/core/api/ATBaseAdAdapter;->getTrackingInfo()Lcom/anythink/core/common/f/h;

    move-result-object v0

    iput-object v0, p3, Lcom/anythink/core/common/p/a;->d:Lcom/anythink/core/common/f/h;

    .line 846
    invoke-virtual {p2}, Lcom/anythink/core/api/ATBaseAdAdapter;->getUnitGroupInfo()Lcom/anythink/core/common/f/au;

    move-result-object v0

    iput-object v0, p3, Lcom/anythink/core/common/p/a;->e:Lcom/anythink/core/common/f/au;

    .line 848
    iget-object v0, p0, Lcom/anythink/core/common/g$5;->b:Lcom/anythink/core/common/g;

    invoke-virtual {v0, p1, p3}, Lcom/anythink/core/common/g;->a(Ljava/lang/String;Lcom/anythink/core/common/p/a;)V

    goto :goto_1

    .line 850
    :cond_1
    iget-object v0, p0, Lcom/anythink/core/common/g$5;->b:Lcom/anythink/core/common/g;

    if-eqz p3, :cond_2

    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    :cond_2
    invoke-virtual {v0, p1, p2, v1}, Lcom/anythink/core/common/g;->a(Ljava/lang/String;Lcom/anythink/core/api/ATBaseAdAdapter;Ljava/util/List;)V

    .line 854
    :goto_1
    iget-object p1, p0, Lcom/anythink/core/common/g$5;->a:Lcom/anythink/core/common/f/au;

    invoke-virtual {p1}, Lcom/anythink/core/common/f/au;->aC()I

    move-result p1

    const/4 p3, 0x1

    if-ne p1, p3, :cond_3

    .line 855
    iget-object p1, p0, Lcom/anythink/core/common/g$5;->b:Lcom/anythink/core/common/g;

    invoke-static {p1, p2}, Lcom/anythink/core/common/g;->b(Lcom/anythink/core/common/g;Lcom/anythink/core/api/ATBaseAdAdapter;)V

    :cond_3
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 821
    iget-object p2, p0, Lcom/anythink/core/common/g$5;->b:Lcom/anythink/core/common/g;

    invoke-static {p2, p1}, Lcom/anythink/core/common/g;->a(Lcom/anythink/core/common/g;Ljava/lang/String;)V

    .line 823
    iget-object p1, p0, Lcom/anythink/core/common/g$5;->a:Lcom/anythink/core/common/f/au;

    invoke-virtual {p1}, Lcom/anythink/core/common/f/au;->aC()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    .line 824
    iget-object p1, p0, Lcom/anythink/core/common/g$5;->b:Lcom/anythink/core/common/g;

    invoke-static {p1}, Lcom/anythink/core/common/g;->d(Lcom/anythink/core/common/g;)V

    :cond_0
    return-void
.end method
