.class public Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;
.super Ljava/lang/Object;
.source "QtiPhoneUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils$OnQtiPhoneReadyListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "QtiPhoneUtils"

.field private static sInstance:Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;

.field private static sReadyListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils$OnQtiPhoneReadyListener;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mCellularDataServiceCallbacks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/qualcomm/qti/internal/telephony/data/QtiDataServiceManager$QtiCellularDataServiceCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mClient:Lcom/qti/extphone/Client;

.field private mContext:Landroid/content/Context;

.field protected mExtPhoneCallback:Lcom/qti/extphone/IExtPhoneCallback;

.field private mExtTelManagerServiceCallback:Lcom/qti/extphone/ServiceCallback;

.field private mExtTelephonyManager:Lcom/qti/extphone/ExtTelephonyManager;

.field private final mPendingRequests:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field

.field private mQtiCarrierInfoResponse:Lcom/qualcomm/qti/internal/telephony/QtiCarrierInfoManager$QtiCarrierInfoResponse;


# direct methods
.method static bridge synthetic -$$Nest$fgetmCellularDataServiceCallbacks(Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;)Ljava/util/HashMap;
    .locals 0

    iget-object p0, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->mCellularDataServiceCallbacks:Ljava/util/HashMap;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmClient(Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;)Lcom/qti/extphone/Client;
    .locals 0

    iget-object p0, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->mClient:Lcom/qti/extphone/Client;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmExtTelephonyManager(Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;)Lcom/qti/extphone/ExtTelephonyManager;
    .locals 0

    iget-object p0, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->mExtTelephonyManager:Lcom/qti/extphone/ExtTelephonyManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPendingRequests(Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;)Ljava/util/HashMap;
    .locals 0

    iget-object p0, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->mPendingRequests:Ljava/util/HashMap;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmQtiCarrierInfoResponse(Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;)Lcom/qualcomm/qti/internal/telephony/QtiCarrierInfoManager$QtiCarrierInfoResponse;
    .locals 0

    iget-object p0, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->mQtiCarrierInfoResponse:Lcom/qualcomm/qti/internal/telephony/QtiCarrierInfoManager$QtiCarrierInfoResponse;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmClient(Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;Lcom/qti/extphone/Client;)V
    .locals 0

    iput-object p1, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->mClient:Lcom/qti/extphone/Client;

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetsReadyListeners()Ljava/util/List;
    .locals 1

    sget-object v0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->sReadyListeners:Ljava/util/List;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->sReadyListeners:Ljava/util/List;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->mPendingRequests:Ljava/util/HashMap;

    .line 80
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->mCellularDataServiceCallbacks:Ljava/util/HashMap;

    .line 138
    new-instance v0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils$1;

    invoke-direct {v0, p0}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils$1;-><init>(Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;)V

    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->mExtTelManagerServiceCallback:Lcom/qti/extphone/ServiceCallback;

    .line 156
    new-instance v0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils$2;

    invoke-direct {v0, p0}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils$2;-><init>(Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;)V

    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->mExtPhoneCallback:Lcom/qti/extphone/IExtPhoneCallback;

    .line 105
    iput-object p1, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->mContext:Landroid/content/Context;

    .line 106
    invoke-static {p1}, Lcom/qti/extphone/ExtTelephonyManager;->getInstance(Landroid/content/Context;)Lcom/qti/extphone/ExtTelephonyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->mExtTelephonyManager:Lcom/qti/extphone/ExtTelephonyManager;

    .line 107
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->mExtTelManagerServiceCallback:Lcom/qti/extphone/ServiceCallback;

    invoke-virtual {v0, v1}, Lcom/qti/extphone/ExtTelephonyManager;->connectService(Lcom/qti/extphone/ServiceCallback;)Z

    .line 108
    return-void
.end method

.method public static addOnQtiPhoneReadyListener(Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils$OnQtiPhoneReadyListener;)V
    .locals 1
    .param p0, "listener"    # Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils$OnQtiPhoneReadyListener;

    .line 117
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->sReadyListeners:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 118
    return-void
.end method

.method public static getInstance()Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;
    .locals 3

    .line 96
    const-class v0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;

    monitor-enter v0

    .line 97
    :try_start_0
    sget-object v1, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->sInstance:Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;

    if-eqz v1, :cond_0

    .line 100
    monitor-exit v0

    return-object v1

    .line 98
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "QtiPhoneUtils was not initialized!"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 101
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static getIntAtIndex(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    .locals 3
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/provider/Settings$SettingNotFoundException;
        }
    .end annotation

    .line 574
    invoke-static {p0, p1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 575
    .local v0, "v":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 576
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 577
    .local v1, "valArray":[Ljava/lang/String;
    if-ltz p2, :cond_0

    array-length v2, v1

    if-ge p2, v2, :cond_0

    aget-object v2, v1, p2

    if-eqz v2, :cond_0

    .line 579
    :try_start_0
    aget-object v2, v1, p2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    .line 580
    :catch_0
    move-exception v2

    .line 585
    .end local v1    # "valArray":[Ljava/lang/String;
    :cond_0
    new-instance v1, Landroid/provider/Settings$SettingNotFoundException;

    invoke-direct {v1, p1}, Landroid/provider/Settings$SettingNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static init(Landroid/content/Context;)Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 87
    const-class v0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;

    monitor-enter v0

    .line 88
    :try_start_0
    sget-object v1, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->sInstance:Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;

    if-nez v1, :cond_0

    .line 89
    new-instance v1, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;

    invoke-direct {v1, p0}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->sInstance:Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;

    .line 91
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->sInstance:Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;

    return-object v0

    .line 91
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static putIntAtIndex(Landroid/content/ContentResolver;Ljava/lang/String;II)Z
    .locals 7
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "index"    # I
    .param p3, "value"    # I

    .line 536
    const-string v0, ""

    .line 537
    .local v0, "data":Ljava/lang/String;
    const/4 v1, 0x0

    .line 538
    .local v1, "valArray":[Ljava/lang/String;
    invoke-static {p0, p1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 540
    .local v2, "v":Ljava/lang/String;
    const v3, 0x7fffffff

    if-eq p2, v3, :cond_5

    .line 543
    if-ltz p2, :cond_4

    .line 546
    const-string v3, ","

    if-eqz v2, :cond_0

    .line 547
    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 551
    :cond_0
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, p2, :cond_2

    .line 552
    const-string v5, ""

    .line 553
    .local v5, "str":Ljava/lang/String;
    if-eqz v1, :cond_1

    array-length v6, v1

    if-ge v4, v6, :cond_1

    .line 554
    aget-object v5, v1, v4

    .line 556
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 551
    .end local v5    # "str":Ljava/lang/String;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 559
    .end local v4    # "i":I
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 562
    if-eqz v1, :cond_3

    .line 563
    add-int/lit8 v4, p2, 0x1

    .restart local v4    # "i":I
    :goto_1
    array-length v5, v1

    if-ge v4, v5, :cond_3

    .line 564
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v1, v4

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 563
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 567
    .end local v4    # "i":I
    :cond_3
    invoke-static {p0, p1, v0}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    return v3

    .line 544
    :cond_4
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "putIntAtIndex index < 0 index="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 541
    :cond_5
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "putIntAtIndex index == MAX_VALUE index="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method


# virtual methods
.method public getCurrentUiccCardProvisioningStatus(I)I
    .locals 7
    .param p1, "slotId"    # I

    .line 589
    const/4 v0, -0x1

    .line 590
    .local v0, "currentStatus":I
    invoke-virtual {p0, p1}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->isValidPhoneId(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 591
    return v0

    .line 594
    :cond_0
    invoke-static {p1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 595
    .local v1, "phone":Lcom/android/internal/telephony/Phone;
    if-nez v1, :cond_1

    .line 596
    return v0

    .line 599
    :cond_1
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getHalVersion()Lcom/android/internal/telephony/HalVersion;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_5:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 600
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getSubId(I)[I

    move-result-object v2

    .line 601
    .local v2, "subIds":[I
    if-eqz v2, :cond_3

    array-length v3, v2

    if-eqz v3, :cond_3

    .line 602
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->mContext:Landroid/content/Context;

    .line 603
    const-string v4, "telephony_subscription_service"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/SubscriptionManager;

    .line 604
    .local v3, "subscriptionManager":Landroid/telephony/SubscriptionManager;
    const/4 v4, 0x0

    aget v5, v2, v4

    invoke-virtual {v3, v5}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v5

    .line 605
    .local v5, "si":Landroid/telephony/SubscriptionInfo;
    invoke-virtual {v5}, Landroid/telephony/SubscriptionInfo;->areUiccApplicationsEnabled()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 606
    const/4 v4, 0x1

    goto :goto_0

    .line 607
    :cond_2
    nop

    :goto_0
    move v0, v4

    .line 608
    .end local v3    # "subscriptionManager":Landroid/telephony/SubscriptionManager;
    .end local v5    # "si":Landroid/telephony/SubscriptionInfo;
    goto :goto_1

    .line 609
    :cond_3
    const/4 v0, -0x2

    .line 611
    .end local v2    # "subIds":[I
    :goto_1
    goto :goto_2

    .line 612
    :cond_4
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;

    move-result-object v2

    .line 613
    invoke-virtual {v2, p1}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->getCurrentUiccCardProvisioningStatus(I)I

    move-result v0

    .line 615
    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " getCurrentUiccCardProvisioningStatus, state["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "QtiPhoneUtils"

    invoke-static {v3, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    return v0
.end method

.method public getPhoneCount()I
    .locals 2

    .line 526
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 527
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    .line 526
    return v0
.end method

.method public getPropertyValueBool(Ljava/lang/String;Z)Z
    .locals 1
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "def"    # Z

    .line 135
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->mExtTelephonyManager:Lcom/qti/extphone/ExtTelephonyManager;

    invoke-virtual {v0, p1, p2}, Lcom/qti/extphone/ExtTelephonyManager;->getPropertyValueBool(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getQosParameters(IILandroid/os/Message;)V
    .locals 5
    .param p1, "phoneId"    # I
    .param p2, "cid"    # I
    .param p3, "response"    # Landroid/os/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 621
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->mExtTelephonyManager:Lcom/qti/extphone/ExtTelephonyManager;

    invoke-virtual {v0}, Lcom/qti/extphone/ExtTelephonyManager;->isServiceConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 622
    return-void

    .line 625
    :cond_0
    const-string v0, "QtiPhoneUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getQosParameters, phoneId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", cid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", response: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    const/4 v0, 0x0

    .line 631
    .local v0, "token":Lcom/qti/extphone/Token;
    :try_start_0
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->mExtTelephonyManager:Lcom/qti/extphone/ExtTelephonyManager;

    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->mClient:Lcom/qti/extphone/Client;

    invoke-virtual {v1, p1, p2, v2}, Lcom/qti/extphone/ExtTelephonyManager;->getQosParameters(IILcom/qti/extphone/Client;)Lcom/qti/extphone/Token;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 634
    goto :goto_0

    .line 632
    :catch_0
    move-exception v1

    .line 633
    .local v1, "ex":Ljava/lang/Exception;
    const-string v2, "QtiPhoneUtils"

    const-string v3, "getQosParameters, caught exception"

    invoke-static {v2, v3, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 636
    .end local v1    # "ex":Ljava/lang/Exception;
    :goto_0
    if-eqz v0, :cond_1

    .line 639
    invoke-virtual {v0}, Lcom/qti/extphone/Token;->get()I

    move-result v1

    .line 640
    .local v1, "serial":I
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->mPendingRequests:Ljava/util/HashMap;

    monitor-enter v2

    .line 641
    :try_start_1
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->mPendingRequests:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 642
    monitor-exit v2

    .line 644
    .end local v1    # "serial":I
    return-void

    .line 642
    .restart local v1    # "serial":I
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 637
    .end local v1    # "serial":I
    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "API is not available"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method getQtiRadioCapability(ILandroid/os/Message;)Z
    .locals 5
    .param p1, "phoneId"    # I
    .param p2, "response"    # Landroid/os/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 492
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->mExtTelephonyManager:Lcom/qti/extphone/ExtTelephonyManager;

    invoke-virtual {v0}, Lcom/qti/extphone/ExtTelephonyManager;->isServiceConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 493
    const/4 v0, 0x0

    return v0

    .line 495
    :cond_0
    const/4 v0, 0x0

    .line 496
    .local v0, "serial":I
    const-string v1, "QtiPhoneUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getQtiRadioCapability, response="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->mExtTelephonyManager:Lcom/qti/extphone/ExtTelephonyManager;

    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->mClient:Lcom/qti/extphone/Client;

    invoke-virtual {v1, p1, v2}, Lcom/qti/extphone/ExtTelephonyManager;->getQtiRadioCapability(ILcom/qti/extphone/Client;)Lcom/qti/extphone/Token;

    move-result-object v1

    .line 498
    .local v1, "token":Lcom/qti/extphone/Token;
    invoke-virtual {v1}, Lcom/qti/extphone/Token;->get()I

    move-result v0

    .line 499
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->mPendingRequests:Ljava/util/HashMap;

    monitor-enter v2

    .line 500
    :try_start_0
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->mPendingRequests:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 501
    monitor-exit v2

    .line 502
    const/4 v2, 0x1

    return v2

    .line 501
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public isValidPhoneId(I)Z
    .locals 1
    .param p1, "phoneId"    # I

    .line 531
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->getPhoneCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public registerDataServiceCallbackForQos(ILcom/qualcomm/qti/internal/telephony/data/QtiDataServiceManager$QtiCellularDataServiceCallback;)V
    .locals 2
    .param p1, "phoneId"    # I
    .param p2, "callback"    # Lcom/qualcomm/qti/internal/telephony/data/QtiDataServiceManager$QtiCellularDataServiceCallback;

    .line 130
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "registerDataServiceCallbackForQos, phoneId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QtiPhoneUtils"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->mCellularDataServiceCallbacks:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    return-void
.end method

.method sendCdmaSms(I[BLandroid/os/Message;Z)Z
    .locals 5
    .param p1, "phoneId"    # I
    .param p2, "pdu"    # [B
    .param p3, "result"    # Landroid/os/Message;
    .param p4, "expectMore"    # Z

    .line 386
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->mExtTelephonyManager:Lcom/qti/extphone/ExtTelephonyManager;

    invoke-virtual {v0}, Lcom/qti/extphone/ExtTelephonyManager;->isServiceConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 387
    const/4 v0, 0x0

    return v0

    .line 389
    :cond_0
    const/4 v0, 0x0

    .line 390
    .local v0, "serial":I
    const-string v1, "QtiPhoneUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendCdmaSms, expectMore="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    :try_start_0
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->mExtTelephonyManager:Lcom/qti/extphone/ExtTelephonyManager;

    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->mClient:Lcom/qti/extphone/Client;

    invoke-virtual {v1, p1, p2, p4, v2}, Lcom/qti/extphone/ExtTelephonyManager;->sendCdmaSms(I[BZLcom/qti/extphone/Client;)Lcom/qti/extphone/Token;

    move-result-object v1

    .line 395
    .local v1, "token":Lcom/qti/extphone/Token;
    invoke-virtual {v1}, Lcom/qti/extphone/Token;->get()I

    move-result v2
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    .line 398
    .end local v1    # "token":Lcom/qti/extphone/Token;
    goto :goto_0

    .line 396
    :catch_0
    move-exception v1

    .line 397
    .local v1, "e":Ljava/lang/RuntimeException;
    const-string v2, "QtiPhoneUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception sendCdmaSms "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :goto_0
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->mPendingRequests:Ljava/util/HashMap;

    monitor-enter v1

    .line 400
    :try_start_1
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->mPendingRequests:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 401
    monitor-exit v1

    .line 402
    const/4 v1, 0x1

    return v1

    .line 401
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method setCarrierInfoForImsiEncryption(ILandroid/telephony/ImsiEncryptionInfo;Lcom/qualcomm/qti/internal/telephony/QtiCarrierInfoManager$QtiCarrierInfoResponse;)V
    .locals 5
    .param p1, "phoneId"    # I
    .param p2, "imsiEncryptionInfo"    # Landroid/telephony/ImsiEncryptionInfo;
    .param p3, "response"    # Lcom/qualcomm/qti/internal/telephony/QtiCarrierInfoManager$QtiCarrierInfoResponse;

    .line 507
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->mExtTelephonyManager:Lcom/qti/extphone/ExtTelephonyManager;

    invoke-virtual {v0}, Lcom/qti/extphone/ExtTelephonyManager;->isServiceConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 508
    return-void

    .line 510
    :cond_0
    iput-object p3, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->mQtiCarrierInfoResponse:Lcom/qualcomm/qti/internal/telephony/QtiCarrierInfoManager$QtiCarrierInfoResponse;

    .line 511
    const/4 v0, 0x0

    .line 512
    .local v0, "tokenSerial":I
    const-string v1, "QtiPhoneUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setCarrierInfoForImsiEncryption, phoneId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    :try_start_0
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->mExtTelephonyManager:Lcom/qti/extphone/ExtTelephonyManager;

    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->mClient:Lcom/qti/extphone/Client;

    invoke-virtual {v1, p1, p2, v2}, Lcom/qti/extphone/ExtTelephonyManager;->setCarrierInfoForImsiEncryption(ILandroid/telephony/ImsiEncryptionInfo;Lcom/qti/extphone/Client;)Lcom/qti/extphone/Token;

    move-result-object v1

    .line 516
    .local v1, "token":Lcom/qti/extphone/Token;
    invoke-virtual {v1}, Lcom/qti/extphone/Token;->get()I

    move-result v2
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    .line 519
    .end local v1    # "token":Lcom/qti/extphone/Token;
    goto :goto_0

    .line 517
    :catch_0
    move-exception v1

    .line 518
    .local v1, "e":Ljava/lang/RuntimeException;
    const-string v2, "QtiPhoneUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception setCarrierInfoForImsiEncryption "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :goto_0
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->mPendingRequests:Ljava/util/HashMap;

    monitor-enter v1

    .line 521
    :try_start_1
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->mPendingRequests:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Landroid/os/Message;

    invoke-direct {v4}, Landroid/os/Message;-><init>()V

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 522
    monitor-exit v1

    .line 523
    return-void

    .line 522
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method setNetworkSelectionModeAutomatic(IILandroid/os/Message;)Z
    .locals 5
    .param p1, "phoneId"    # I
    .param p2, "accessType"    # I
    .param p3, "result"    # Landroid/os/Message;

    .line 473
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->mExtTelephonyManager:Lcom/qti/extphone/ExtTelephonyManager;

    invoke-virtual {v0}, Lcom/qti/extphone/ExtTelephonyManager;->isServiceConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 474
    const/4 v0, 0x0

    return v0

    .line 476
    :cond_0
    const/4 v0, 0x0

    .line 479
    .local v0, "serial":I
    :try_start_0
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->mExtTelephonyManager:Lcom/qti/extphone/ExtTelephonyManager;

    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->mClient:Lcom/qti/extphone/Client;

    invoke-virtual {v1, p1, p2, v2}, Lcom/qti/extphone/ExtTelephonyManager;->setNetworkSelectionModeAutomatic(IILcom/qti/extphone/Client;)Lcom/qti/extphone/Token;

    move-result-object v1

    .line 481
    .local v1, "token":Lcom/qti/extphone/Token;
    invoke-virtual {v1}, Lcom/qti/extphone/Token;->get()I

    move-result v2
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    .line 484
    .end local v1    # "token":Lcom/qti/extphone/Token;
    goto :goto_0

    .line 482
    :catch_0
    move-exception v1

    .line 483
    .local v1, "e":Ljava/lang/RuntimeException;
    const-string v2, "QtiPhoneUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception setNetworkSelectionModeAutomatic "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :goto_0
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->mPendingRequests:Ljava/util/HashMap;

    monitor-enter v1

    .line 486
    :try_start_1
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->mPendingRequests:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 487
    monitor-exit v1

    .line 488
    const/4 v1, 0x1

    return v1

    .line 487
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method setNetworkSelectionModeManual(ILcom/android/internal/telephony/OperatorInfo;Landroid/os/Message;)Z
    .locals 12
    .param p1, "phoneId"    # I
    .param p2, "network"    # Lcom/android/internal/telephony/OperatorInfo;
    .param p3, "result"    # Landroid/os/Message;

    .line 443
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->mExtTelephonyManager:Lcom/qti/extphone/ExtTelephonyManager;

    invoke-virtual {v0}, Lcom/qti/extphone/ExtTelephonyManager;->isServiceConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 444
    const/4 v0, 0x0

    return v0

    .line 446
    :cond_0
    const/4 v0, 0x0

    .line 447
    .local v0, "serial":I
    const-wide/16 v1, -0x1

    .line 448
    .local v1, "cagId":J
    const/4 v3, 0x0

    .line 449
    .local v3, "nId":[B
    invoke-virtual {p2}, Lcom/android/internal/telephony/OperatorInfo;->getCagInfo()Landroid/telephony/CagInfo;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 450
    invoke-virtual {p2}, Lcom/android/internal/telephony/OperatorInfo;->getCagInfo()Landroid/telephony/CagInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/CagInfo;->getCagId()J

    move-result-wide v1

    .line 452
    :cond_1
    invoke-virtual {p2}, Lcom/android/internal/telephony/OperatorInfo;->getSnpnInfo()Landroid/telephony/SnpnInfo;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 453
    invoke-virtual {p2}, Lcom/android/internal/telephony/OperatorInfo;->getSnpnInfo()Landroid/telephony/SnpnInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/SnpnInfo;->getNid()[B

    move-result-object v3

    .line 455
    :cond_2
    new-instance v11, Lcom/qti/extphone/QtiSetNetworkSelectionMode;

    .line 456
    invoke-virtual {p2}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2}, Lcom/android/internal/telephony/OperatorInfo;->getRan()I

    move-result v6

    .line 457
    invoke-virtual {p2}, Lcom/android/internal/telephony/OperatorInfo;->getAccessMode()I

    move-result v7

    move-object v4, v11

    move-wide v8, v1

    move-object v10, v3

    invoke-direct/range {v4 .. v10}, Lcom/qti/extphone/QtiSetNetworkSelectionMode;-><init>(Ljava/lang/String;IIJ[B)V

    .line 460
    .local v4, "mode":Lcom/qti/extphone/QtiSetNetworkSelectionMode;
    :try_start_0
    iget-object v5, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->mExtTelephonyManager:Lcom/qti/extphone/ExtTelephonyManager;

    iget-object v6, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->mClient:Lcom/qti/extphone/Client;

    invoke-virtual {v5, p1, v4, v6}, Lcom/qti/extphone/ExtTelephonyManager;->setNetworkSelectionModeManual(ILcom/qti/extphone/QtiSetNetworkSelectionMode;Lcom/qti/extphone/Client;)Lcom/qti/extphone/Token;

    move-result-object v5

    .line 462
    .local v5, "token":Lcom/qti/extphone/Token;
    invoke-virtual {v5}, Lcom/qti/extphone/Token;->get()I

    move-result v6
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v6

    .line 465
    .end local v5    # "token":Lcom/qti/extphone/Token;
    goto :goto_0

    .line 463
    :catch_0
    move-exception v5

    .line 464
    .local v5, "e":Ljava/lang/RuntimeException;
    const-string v6, "QtiPhoneUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception setNetworkSelectionModeManual "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    .end local v5    # "e":Ljava/lang/RuntimeException;
    :goto_0
    iget-object v5, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->mPendingRequests:Ljava/util/HashMap;

    monitor-enter v5

    .line 467
    :try_start_1
    iget-object v6, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->mPendingRequests:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 468
    monitor-exit v5

    .line 469
    const/4 v5, 0x1

    return v5

    .line 468
    :catchall_0
    move-exception v6

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6
.end method

.method startNetworkScan(ILandroid/telephony/NetworkScanRequest;Landroid/os/Message;)Z
    .locals 5
    .param p1, "phoneId"    # I
    .param p2, "networkScanRequest"    # Landroid/telephony/NetworkScanRequest;
    .param p3, "result"    # Landroid/os/Message;

    .line 406
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->mExtTelephonyManager:Lcom/qti/extphone/ExtTelephonyManager;

    invoke-virtual {v0}, Lcom/qti/extphone/ExtTelephonyManager;->isServiceConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 407
    const/4 v0, 0x0

    return v0

    .line 409
    :cond_0
    const/4 v0, 0x0

    .line 412
    .local v0, "serial":I
    :try_start_0
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->mExtTelephonyManager:Lcom/qti/extphone/ExtTelephonyManager;

    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->mClient:Lcom/qti/extphone/Client;

    invoke-virtual {v1, p1, p2, v2}, Lcom/qti/extphone/ExtTelephonyManager;->startNetworkScan(ILandroid/telephony/NetworkScanRequest;Lcom/qti/extphone/Client;)Lcom/qti/extphone/Token;

    move-result-object v1

    .line 414
    .local v1, "token":Lcom/qti/extphone/Token;
    invoke-virtual {v1}, Lcom/qti/extphone/Token;->get()I

    move-result v2
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    .line 417
    .end local v1    # "token":Lcom/qti/extphone/Token;
    goto :goto_0

    .line 415
    :catch_0
    move-exception v1

    .line 416
    .local v1, "e":Ljava/lang/RuntimeException;
    const-string v2, "QtiPhoneUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception startNetworkScan "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :goto_0
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->mPendingRequests:Ljava/util/HashMap;

    monitor-enter v1

    .line 419
    :try_start_1
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->mPendingRequests:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 420
    monitor-exit v1

    .line 421
    const/4 v1, 0x1

    return v1

    .line 420
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method stopNetworkScan(ILandroid/os/Message;)Z
    .locals 5
    .param p1, "phoneId"    # I
    .param p2, "result"    # Landroid/os/Message;

    .line 425
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->mExtTelephonyManager:Lcom/qti/extphone/ExtTelephonyManager;

    invoke-virtual {v0}, Lcom/qti/extphone/ExtTelephonyManager;->isServiceConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 426
    const/4 v0, 0x0

    return v0

    .line 428
    :cond_0
    const/4 v0, 0x0

    .line 431
    .local v0, "serial":I
    :try_start_0
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->mExtTelephonyManager:Lcom/qti/extphone/ExtTelephonyManager;

    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->mClient:Lcom/qti/extphone/Client;

    invoke-virtual {v1, p1, v2}, Lcom/qti/extphone/ExtTelephonyManager;->stopNetworkScan(ILcom/qti/extphone/Client;)Lcom/qti/extphone/Token;

    move-result-object v1

    .line 432
    .local v1, "token":Lcom/qti/extphone/Token;
    invoke-virtual {v1}, Lcom/qti/extphone/Token;->get()I

    move-result v2
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    .line 435
    .end local v1    # "token":Lcom/qti/extphone/Token;
    goto :goto_0

    .line 433
    :catch_0
    move-exception v1

    .line 434
    .local v1, "e":Ljava/lang/RuntimeException;
    const-string v2, "QtiPhoneUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception stopNetworkScan "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :goto_0
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->mPendingRequests:Ljava/util/HashMap;

    monitor-enter v1

    .line 437
    :try_start_1
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->mPendingRequests:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 438
    monitor-exit v1

    .line 439
    const/4 v1, 0x1

    return v1

    .line 438
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method
