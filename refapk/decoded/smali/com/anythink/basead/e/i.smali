.class public Lcom/anythink/basead/e/i;
.super Ljava/lang/Object;


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 12
    iput v0, p0, Lcom/anythink/basead/e/i;->c:I

    return-void
.end method

.method private a(I)Lcom/anythink/basead/e/i;
    .locals 0

    .line 16
    iput p1, p0, Lcom/anythink/basead/e/i;->c:I

    return-object p0
.end method

.method private b(I)Lcom/anythink/basead/e/i;
    .locals 0

    .line 27
    iput p1, p0, Lcom/anythink/basead/e/i;->d:I

    return-object p0
.end method


# virtual methods
.method public final a(II)Lcom/anythink/basead/e/i;
    .locals 0

    .line 21
    iput p1, p0, Lcom/anythink/basead/e/i;->a:I

    .line 22
    iput p2, p0, Lcom/anythink/basead/e/i;->b:I

    return-object p0
.end method
