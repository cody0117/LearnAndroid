.class public Lcom/aadhk/restpos/bean/Account;
.super Ljava/lang/Object;
.source "ProGuard"


# instance fields
.field private createDate:Ljava/lang/String;

.field private email:Ljava/lang/String;

.field private licenseKey:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private password:Ljava/lang/String;

.field private phoneNum:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCreateDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/aadhk/restpos/bean/Account;->createDate:Ljava/lang/String;

    return-object v0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/aadhk/restpos/bean/Account;->email:Ljava/lang/String;

    return-object v0
.end method

.method public getLicenseKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/aadhk/restpos/bean/Account;->licenseKey:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/aadhk/restpos/bean/Account;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/aadhk/restpos/bean/Account;->password:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoneNum()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/aadhk/restpos/bean/Account;->phoneNum:Ljava/lang/String;

    return-object v0
.end method

.method public setCreateDate(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 34
    iput-object p1, p0, Lcom/aadhk/restpos/bean/Account;->createDate:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public setEmail(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 16
    iput-object p1, p0, Lcom/aadhk/restpos/bean/Account;->email:Ljava/lang/String;

    .line 17
    return-void
.end method

.method public setLicenseKey(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 46
    iput-object p1, p0, Lcom/aadhk/restpos/bean/Account;->licenseKey:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 28
    iput-object p1, p0, Lcom/aadhk/restpos/bean/Account;->name:Ljava/lang/String;

    .line 29
    return-void
.end method

.method public setPassword(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 22
    iput-object p1, p0, Lcom/aadhk/restpos/bean/Account;->password:Ljava/lang/String;

    .line 23
    return-void
.end method

.method public setPhoneNum(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 40
    iput-object p1, p0, Lcom/aadhk/restpos/bean/Account;->phoneNum:Ljava/lang/String;

    .line 41
    return-void
.end method
