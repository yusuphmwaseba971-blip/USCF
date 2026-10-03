.class final Lcom/anythink/core/b/e$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/anythink/core/b/i$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/core/b/e;->a(Lcom/anythink/core/b/b/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/core/b/e;


# direct methods
.method constructor <init>(Lcom/anythink/core/b/e;)V
    .locals 0

    .line 150
    iput-object p1, p0, Lcom/anythink/core/b/e$2;->a:Lcom/anythink/core/b/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onBidTokenObtainFail(Ljava/lang/String;Lcom/anythink/core/common/f/au;)V
    .locals 3

    .line 179
    iget-object v0, p0, Lcom/anythink/core/b/e$2;->a:Lcom/anythink/core/b/e;

    iget-object v0, v0, Lcom/anythink/core/b/e;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    const-string p1, ""

    .line 187
    :cond_1
    iget-object v0, p0, Lcom/anythink/core/b/e$2;->a:Lcom/anythink/core/b/e;

    iget-object v0, v0, Lcom/anythink/core/b/e;->w:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2}, Lcom/anythink/core/common/f/au;->u()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    iget-object v0, p0, Lcom/anythink/core/b/e$2;->a:Lcom/anythink/core/b/e;

    iget-object v0, v0, Lcom/anythink/core/b/e;->u:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2}, Lcom/anythink/core/common/f/au;->u()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    iget-object v0, p0, Lcom/anythink/core/b/e$2;->a:Lcom/anythink/core/b/e;

    invoke-static {v0, p1, p2}, Lcom/anythink/core/b/e;->a(Lcom/anythink/core/b/e;Ljava/lang/String;Lcom/anythink/core/common/f/au;)V

    .line 192
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "There is no Network Adapter."

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x5

    goto :goto_0

    :sswitch_1
    const-string v1, "The parameter is abnormal."

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x4

    goto :goto_0

    :sswitch_2
    const-string v1, "Network init error."

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v0, 0x3

    goto :goto_0

    :sswitch_3
    const-string v1, "Network BidToken or Custom bid info is Empty."

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_0

    :cond_5
    const/4 v0, 0x2

    goto :goto_0

    :sswitch_4
    const-string v1, "Request Token or Custom bid info Timeout."

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    goto :goto_0

    :cond_6
    const/4 v0, 0x1

    goto :goto_0

    :sswitch_5
    const-string v1, "This network don\'t support header bidding in current TopOn\'s version."

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    goto :goto_0

    :cond_7
    const/4 v0, 0x0

    :goto_0
    const/16 v1, -0x9

    packed-switch v0, :pswitch_data_0

    .line 204
    iget-object v0, p0, Lcom/anythink/core/b/e$2;->a:Lcom/anythink/core/b/e;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "Unknown error: "

    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p2, p1, v1}, Lcom/anythink/core/b/e;->a(Lcom/anythink/core/b/e;Lcom/anythink/core/common/f/au;Ljava/lang/String;I)V

    goto :goto_1

    .line 201
    :pswitch_0
    iget-object v0, p0, Lcom/anythink/core/b/e$2;->a:Lcom/anythink/core/b/e;

    const/4 v1, -0x2

    invoke-static {v0, p2, p1, v1}, Lcom/anythink/core/b/e;->a(Lcom/anythink/core/b/e;Lcom/anythink/core/common/f/au;Ljava/lang/String;I)V

    goto :goto_1

    .line 197
    :pswitch_1
    iget-object v0, p0, Lcom/anythink/core/b/e$2;->a:Lcom/anythink/core/b/e;

    invoke-static {v0, p2, p1, v1}, Lcom/anythink/core/b/e;->a(Lcom/anythink/core/b/e;Lcom/anythink/core/common/f/au;Ljava/lang/String;I)V

    .line 209
    :goto_1
    iget-object p1, p0, Lcom/anythink/core/b/e$2;->a:Lcom/anythink/core/b/e;

    const/4 p2, 0x0

    invoke-static {p1, p2, p2}, Lcom/anythink/core/b/e;->a(Lcom/anythink/core/b/e;Lorg/json/JSONObject;Lcom/anythink/core/common/f/au;)V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x4d3cfc4b -> :sswitch_5
        -0x2fad20e -> :sswitch_4
        0x36593cc -> :sswitch_3
        0xc309924 -> :sswitch_2
        0x4e7f8d36 -> :sswitch_1
        0x749dca96 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public final onBidTokenObtainStart(Lcom/anythink/core/common/f/au;Lcom/anythink/core/api/ATBaseAdAdapter;)V
    .locals 1

    .line 153
    iget-object v0, p0, Lcom/anythink/core/b/e$2;->a:Lcom/anythink/core/b/e;

    iget-object v0, v0, Lcom/anythink/core/b/e;->q:Lcom/anythink/core/b/b/a;

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/anythink/core/b/e$2;->a:Lcom/anythink/core/b/e;

    iget-object v0, v0, Lcom/anythink/core/b/e;->q:Lcom/anythink/core/b/b/a;

    invoke-interface {v0, p1, p2}, Lcom/anythink/core/b/b/a;->a(Lcom/anythink/core/common/f/au;Lcom/anythink/core/api/ATBaseAdAdapter;)V

    :cond_0
    return-void
.end method

.method public final onBidTokenObtainSuccess(Lcom/anythink/core/common/f/au;Lorg/json/JSONObject;)V
    .locals 2

    .line 160
    iget-object v0, p0, Lcom/anythink/core/b/e$2;->a:Lcom/anythink/core/b/e;

    iget-object v0, v0, Lcom/anythink/core/b/e;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 164
    :cond_0
    iget-object v0, p0, Lcom/anythink/core/b/e$2;->a:Lcom/anythink/core/b/e;

    iget-object v0, v0, Lcom/anythink/core/b/e;->w:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/anythink/core/common/f/au;->u()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    iget-object v0, p0, Lcom/anythink/core/b/e$2;->a:Lcom/anythink/core/b/e;

    invoke-static {v0, p1}, Lcom/anythink/core/b/e;->a(Lcom/anythink/core/b/e;Lcom/anythink/core/common/f/au;)V

    .line 168
    iget-object v0, p0, Lcom/anythink/core/b/e$2;->a:Lcom/anythink/core/b/e;

    iget-object v0, v0, Lcom/anythink/core/b/e;->s:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/anythink/core/b/e$2;->a:Lcom/anythink/core/b/e;

    iget-object v0, v0, Lcom/anythink/core/b/e;->s:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/anythink/core/b/e$2;->a:Lcom/anythink/core/b/e;

    iget-object v0, v0, Lcom/anythink/core/b/e;->f:Lcom/anythink/core/common/f/a;

    iget-object v0, v0, Lcom/anythink/core/common/f/a;->n:Lcom/anythink/core/common/f/az;

    invoke-virtual {v0}, Lcom/anythink/core/common/f/az;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const-string p2, "Request Token or Custom bid info Timeout."

    .line 172
    invoke-virtual {p0, p2, p1}, Lcom/anythink/core/b/e$2;->onBidTokenObtainFail(Ljava/lang/String;Lcom/anythink/core/common/f/au;)V

    return-void

    .line 170
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/anythink/core/b/e$2;->a:Lcom/anythink/core/b/e;

    invoke-static {v0, p2, p1}, Lcom/anythink/core/b/e;->a(Lcom/anythink/core/b/e;Lorg/json/JSONObject;Lcom/anythink/core/common/f/au;)V

    return-void
.end method
