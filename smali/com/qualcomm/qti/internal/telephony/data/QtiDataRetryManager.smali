.class public Lcom/qualcomm/qti/internal/telephony/data/QtiDataRetryManager;
.super Lcom/android/internal/telephony/data/DataRetryManager;
.source "QtiDataRetryManager.java"


# static fields
.field public static final MAX_PDP_REJECT_COUNT:I = 0x3

.field protected static mDataRejectDialog:Landroid/app/AlertDialog;


# instance fields
.field private mDataRejectCount:I

.field private mDataRejectReason:Ljava/lang/String;

.field private final mNoResetReasons:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mPdpRejectCauseCode:I

.field private mQtiDataConfigManager:Lcom/qualcomm/qti/internal/telephony/data/QtiDataConfigManager;

.field private mQtiDataResetEventTracker:Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDataResetEventTracker;

.field private mResetEventListener:Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDataResetEventTracker$ResetEventListener;


# direct methods
.method static bridge synthetic -$$Nest$fgetmQtiDataResetEventTracker(Lcom/qualcomm/qti/internal/telephony/data/QtiDataRetryManager;)Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDataResetEventTracker;
    .locals 0

    iget-object p0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataRetryManager;->mQtiDataResetEventTracker:Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDataResetEventTracker;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mresetDataRejectCounter(Lcom/qualcomm/qti/internal/telephony/data/QtiDataRetryManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataRetryManager;->resetDataRejectCounter()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 67
    const/4 v0, 0x0

    sput-object v0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataRetryManager;->mDataRejectDialog:Landroid/app/AlertDialog;

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/data/DataNetworkController;Landroid/util/SparseArray;Landroid/os/Looper;Lcom/android/internal/telephony/data/DataRetryManager$DataRetryManagerCallback;)V
    .locals 1
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;
    .param p2, "dataNetworkController"    # Lcom/android/internal/telephony/data/DataNetworkController;
    .param p4, "looper"    # Landroid/os/Looper;
    .param p5, "dataRetryManagerCallback"    # Lcom/android/internal/telephony/data/DataRetryManager$DataRetryManagerCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/Phone;",
            "Lcom/android/internal/telephony/data/DataNetworkController;",
            "Landroid/util/SparseArray<",
            "Lcom/android/internal/telephony/data/DataServiceManager;",
            ">;",
            "Landroid/os/Looper;",
            "Lcom/android/internal/telephony/data/DataRetryManager$DataRetryManagerCallback;",
            ")V"
        }
    .end annotation

    .line 102
    .local p3, "dataServiceManagers":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/telephony/data/DataServiceManager;>;"
    invoke-direct/range {p0 .. p5}, Lcom/android/internal/telephony/data/DataRetryManager;-><init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/data/DataNetworkController;Landroid/util/SparseArray;Landroid/os/Looper;Lcom/android/internal/telephony/data/DataRetryManager$DataRetryManagerCallback;)V

    .line 64
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataRetryManager;->mQtiDataResetEventTracker:Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDataResetEventTracker;

    .line 69
    const-string v0, "NONE"

    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataRetryManager;->mDataRejectReason:Ljava/lang/String;

    .line 71
    const/4 v0, 0x0

    iput v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataRetryManager;->mDataRejectCount:I

    .line 73
    iput v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataRetryManager;->mPdpRejectCauseCode:I

    .line 81
    new-instance v0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataRetryManager$1;

    invoke-direct {v0, p0}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataRetryManager$1;-><init>(Lcom/qualcomm/qti/internal/telephony/data/QtiDataRetryManager;)V

    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataRetryManager;->mNoResetReasons:Ljava/util/Set;

    .line 184
    new-instance v0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataRetryManager$2;

    invoke-direct {v0, p0}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataRetryManager$2;-><init>(Lcom/qualcomm/qti/internal/telephony/data/QtiDataRetryManager;)V

    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataRetryManager;->mResetEventListener:Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDataResetEventTracker$ResetEventListener;

    .line 103
    const-string v0, "QtiDataRetryManager: constructor"

    invoke-virtual {p0, v0}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataRetryManager;->log(Ljava/lang/String;)V

    .line 104
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataRetryManager;->mDataConfigManager:Lcom/android/internal/telephony/data/DataConfigManager;

    check-cast v0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataConfigManager;

    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataRetryManager;->mQtiDataConfigManager:Lcom/qualcomm/qti/internal/telephony/data/QtiDataConfigManager;

    .line 105
    return-void
.end method

.method static synthetic access$000(Lcom/qualcomm/qti/internal/telephony/data/QtiDataRetryManager;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/telephony/data/QtiDataRetryManager;
    .param p1, "x1"    # Ljava/lang/String;

    .line 59
    invoke-virtual {p0, p1}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataRetryManager;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/qualcomm/qti/internal/telephony/data/QtiDataRetryManager;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/telephony/data/QtiDataRetryManager;
    .param p1, "x1"    # Ljava/lang/String;

    .line 59
    invoke-virtual {p0, p1}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataRetryManager;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/qualcomm/qti/internal/telephony/data/QtiDataRetryManager;)Lcom/android/internal/telephony/data/DataNetworkController;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/telephony/data/QtiDataRetryManager;

    .line 59
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataRetryManager;->mDataNetworkController:Lcom/android/internal/telephony/data/DataNetworkController;

    return-object v0
.end method

.method static synthetic access$300(Lcom/qualcomm/qti/internal/telephony/data/QtiDataRetryManager;)Lcom/android/internal/telephony/data/DataNetworkController;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/telephony/data/QtiDataRetryManager;

    .line 59
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataRetryManager;->mDataNetworkController:Lcom/android/internal/telephony/data/DataNetworkController;

    return-object v0
.end method

.method static synthetic access$400(Lcom/qualcomm/qti/internal/telephony/data/QtiDataRetryManager;)Lcom/android/internal/telephony/data/DataNetworkController;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/telephony/data/QtiDataRetryManager;

    .line 59
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataRetryManager;->mDataNetworkController:Lcom/android/internal/telephony/data/DataNetworkController;

    return-object v0
.end method

.method private displayPdpRejectPopup(I)V
    .locals 5
    .param p1, "dataFailCause"    # I

    .line 260
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "displayPdpRejectPopup : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Landroid/telephony/DataFailCause;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataRetryManager;->log(Ljava/lang/String;)V

    .line 261
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataRetryManager;->mQtiDataConfigManager:Lcom/qualcomm/qti/internal/telephony/data/QtiDataConfigManager;

    invoke-virtual {v0}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataConfigManager;->getPdpRejectDialogTitle()Ljava/lang/String;

    move-result-object v0

    .line 262
    .local v0, "title":Ljava/lang/String;
    const/4 v1, 0x0

    .line 264
    .local v1, "message":Ljava/lang/String;
    sparse-switch p1, :sswitch_data_0

    .line 275
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "displayPdpRejectPopup: invalid dataFailCause: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataRetryManager;->loge(Ljava/lang/String;)V

    .line 276
    return-void

    .line 272
    :sswitch_0
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataRetryManager;->mQtiDataConfigManager:Lcom/qualcomm/qti/internal/telephony/data/QtiDataConfigManager;

    invoke-virtual {v2}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataConfigManager;->getPdpRejectCauseSamePdnNotAllowed()Ljava/lang/String;

    move-result-object v1

    .line 273
    goto :goto_0

    .line 269
    :sswitch_1
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataRetryManager;->mQtiDataConfigManager:Lcom/qualcomm/qti/internal/telephony/data/QtiDataConfigManager;

    invoke-virtual {v2}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataConfigManager;->getPdpRejectCauseServiceNotSubscribed()Ljava/lang/String;

    move-result-object v1

    .line 270
    goto :goto_0

    .line 266
    :sswitch_2
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataRetryManager;->mQtiDataConfigManager:Lcom/qualcomm/qti/internal/telephony/data/QtiDataConfigManager;

    invoke-virtual {v2}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataConfigManager;->getPdpRejectCauseUserAuthentication()Ljava/lang/String;

    move-result-object v1

    .line 267
    nop

    .line 279
    :goto_0
    sget-object v2, Lcom/qualcomm/qti/internal/telephony/data/QtiDataRetryManager;->mDataRejectDialog:Landroid/app/AlertDialog;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v2

    if-nez v2, :cond_1

    .line 280
    :cond_0
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataRetryManager;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 281
    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 282
    .local v2, "builder":Landroid/app/AlertDialog$Builder;
    const v3, 0x104000a

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 283
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    sput-object v3, Lcom/qualcomm/qti/internal/telephony/data/QtiDataRetryManager;->mDataRejectDialog:Landroid/app/AlertDialog;

    .line 286
    .end local v2    # "builder":Landroid/app/AlertDialog$Builder;
    :cond_1
    sget-object v2, Lcom/qualcomm/qti/internal/telephony/data/QtiDataRetryManager;->mDataRejectDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 287
    sget-object v2, Lcom/qualcomm/qti/internal/telephony/data/QtiDataRetryManager;->mDataRejectDialog:Landroid/app/AlertDialog;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 288
    sget-object v2, Lcom/qualcomm/qti/internal/telephony/data/QtiDataRetryManager;->mDataRejectDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 289
    sget-object v2, Lcom/qualcomm/qti/internal/telephony/data/QtiDataRetryManager;->mDataRejectDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x7d3

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    .line 291
    sget-object v2, Lcom/qualcomm/qti/internal/telephony/data/QtiDataRetryManager;->mDataRejectDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 292
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x1d -> :sswitch_2
        0x21 -> :sswitch_1
        0x37 -> :sswitch_0
    .end sparse-switch
.end method

.method private isMatchingPdpRejectCause(I)Z
    .locals 1
    .param p1, "dataFailCause"    # I

    .line 167
    const/16 v0, 0x1d

    if-eq p1, v0, :cond_1

    const/16 v0, 0x21

    if-eq p1, v0, :cond_1

    const/16 v0, 0x37

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private isWcdma(I)Z
    .locals 2
    .param p1, "networkType"    # I

    .line 209
    invoke-static {p1}, Lcom/android/internal/telephony/data/DataUtils;->networkTypeToAccessNetworkType(I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private resetDataRejectCounter()V
    .locals 1

    .line 176
    const/4 v0, 0x0

    iput v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataRetryManager;->mDataRejectCount:I

    .line 177
    const-string v0, "NONE"

    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataRetryManager;->mDataRejectReason:Ljava/lang/String;

    .line 178
    return-void
.end method


# virtual methods
.method public evaluateDataSetupRetry(Landroid/telephony/data/DataProfile;ILcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;IJ)V
    .locals 7
    .param p1, "dataProfile"    # Landroid/telephony/data/DataProfile;
    .param p2, "transport"    # I
    .param p3, "requestList"    # Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;
    .param p4, "cause"    # I
    .param p5, "retryDelayMillis"    # J

    .line 300
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataRetryManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataRetryManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v1

    invoke-static {v0, p4, v1}, Landroid/telephony/DataFailCause;->isPermanentFailure(Landroid/content/Context;II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 301
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Reset retry delay to undefined for permanent failure. cause="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p4}, Landroid/telephony/DataFailCause;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataRetryManager;->log(Ljava/lang/String;)V

    .line 302
    const-wide/16 p5, -0x1

    .line 304
    :cond_0
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move-wide v5, p5

    invoke-super/range {v0 .. v6}, Lcom/android/internal/telephony/data/DataRetryManager;->evaluateDataSetupRetry(Landroid/telephony/data/DataProfile;ILcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;IJ)V

    .line 305
    return-void
.end method

.method public handlePdpRejectCauseSuccess()V
    .locals 1

    .line 157
    iget v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataRetryManager;->mDataRejectCount:I

    if-lez v0, :cond_0

    .line 158
    const-string v0, "handlePdpRejectCauseSuccess: reset reject count"

    invoke-virtual {p0, v0}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataRetryManager;->log(Ljava/lang/String;)V

    .line 159
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataRetryManager;->resetDataRejectCounter()V

    .line 161
    :cond_0
    return-void
.end method

.method isDataProfileOfTypeDefault(Landroid/telephony/data/DataProfile;)Z
    .locals 2
    .param p1, "dataProfile"    # Landroid/telephony/data/DataProfile;

    .line 130
    if-eqz p1, :cond_0

    .line 131
    invoke-virtual {p1}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 132
    invoke-virtual {p1}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/data/ApnSetting;->getApnTypeBitmask()I

    move-result v0

    const/16 v1, 0x11

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isDataProfileOfTypeDefault: true, dataProfile: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataRetryManager;->log(Ljava/lang/String;)V

    .line 135
    const/4 v0, 0x1

    return v0

    .line 137
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method isPdpRejectRetryOngoing()Z
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataRetryManager;->mQtiDataConfigManager:Lcom/qualcomm/qti/internal/telephony/data/QtiDataConfigManager;

    invoke-virtual {v0}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataConfigManager;->isPdpRejectConfigEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataRetryManager;->mDataRejectCount:I

    if-lez v0, :cond_0

    .line 146
    const-string v0, "isPdpRejectRetryOngoing: true"

    invoke-virtual {p0, v0}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataRetryManager;->log(Ljava/lang/String;)V

    .line 147
    const/4 v0, 0x1

    return v0

    .line 149
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected onEvaluateDataSetupRetry(Landroid/telephony/data/DataProfile;ILcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;IJ)V
    .locals 9
    .param p1, "dataProfile"    # Landroid/telephony/data/DataProfile;
    .param p2, "transport"    # I
    .param p3, "requestList"    # Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;
    .param p4, "cause"    # I
    .param p5, "retryDelayMillis"    # J

    .line 216
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataRetryManager;->mQtiDataConfigManager:Lcom/qualcomm/qti/internal/telephony/data/QtiDataConfigManager;

    invoke-virtual {v0}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataConfigManager;->isPdpRejectConfigEnabled()Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    .line 217
    invoke-virtual {p3, v0}, Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;

    invoke-virtual {v0}, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->getApnTypeNetworkCapability()I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_5

    .line 219
    invoke-static {p4}, Landroid/telephony/DataFailCause;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 220
    .local v0, "reason":Ljava/lang/String;
    invoke-direct {p0, p4}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataRetryManager;->isMatchingPdpRejectCause(I)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataRetryManager;->mDataNetworkController:Lcom/android/internal/telephony/data/DataNetworkController;

    .line 221
    invoke-virtual {v1, p2}, Lcom/android/internal/telephony/data/DataNetworkController;->getDataNetworkType(I)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataRetryManager;->isWcdma(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 222
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataRetryManager;->mQtiDataResetEventTracker:Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDataResetEventTracker;

    if-nez v1, :cond_0

    .line 223
    new-instance v1, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDataResetEventTracker;

    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataRetryManager;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataRetryManager;->mResetEventListener:Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDataResetEventTracker$ResetEventListener;

    invoke-direct {v1, p2, v2, v3}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDataResetEventTracker;-><init>(ILcom/android/internal/telephony/Phone;Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDataResetEventTracker$ResetEventListener;)V

    iput-object v1, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataRetryManager;->mQtiDataResetEventTracker:Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDataResetEventTracker;

    .line 229
    :cond_0
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataRetryManager;->mDataRejectReason:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 230
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataRetryManager;->resetDataRejectCounter()V

    .line 232
    :cond_1
    iget v1, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataRetryManager;->mDataRejectCount:I

    if-nez v1, :cond_2

    .line 233
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataRetryManager;->mQtiDataResetEventTracker:Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDataResetEventTracker;

    invoke-virtual {v1}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDataResetEventTracker;->startResetEventTracker()V

    .line 235
    :cond_2
    iget v1, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataRetryManager;->mDataRejectCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataRetryManager;->mDataRejectCount:I

    .line 236
    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataRetryManager;->mDataRejectReason:Ljava/lang/String;

    .line 237
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RejectCount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataRetryManager;->mDataRejectCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", RejectReason: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataRetryManager;->mDataRejectReason:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataRetryManager;->log(Ljava/lang/String;)V

    .line 239
    const/4 v1, 0x3

    iget v2, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataRetryManager;->mDataRejectCount:I

    if-gt v1, v2, :cond_3

    .line 240
    const-string v1, "onEvaluateDataSetupRetry: reached max retry count"

    invoke-virtual {p0, v1}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataRetryManager;->log(Ljava/lang/String;)V

    .line 241
    invoke-direct {p0, p4}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataRetryManager;->displayPdpRejectPopup(I)V

    .line 242
    const-wide p5, 0x7fffffffffffffffL

    goto :goto_0

    .line 243
    :cond_3
    const-wide/16 v1, -0x1

    cmp-long v1, p5, v1

    if-nez v1, :cond_5

    .line 244
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataRetryManager;->mQtiDataConfigManager:Lcom/qualcomm/qti/internal/telephony/data/QtiDataConfigManager;

    invoke-virtual {v1}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataConfigManager;->getPdpRejectRetryDelay()J

    move-result-wide p5

    .line 245
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onEvaluateDataSetupRetry: delay from config: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataRetryManager;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 248
    :cond_4
    const-string v1, "onDataSetupCompleteError: reset reject count"

    invoke-virtual {p0, v1}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataRetryManager;->log(Ljava/lang/String;)V

    .line 249
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataRetryManager;->resetDataRejectCounter()V

    .line 252
    .end local v0    # "reason":Ljava/lang/String;
    :cond_5
    :goto_0
    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move v6, p4

    move-wide v7, p5

    invoke-super/range {v2 .. v8}, Lcom/android/internal/telephony/data/DataRetryManager;->onEvaluateDataSetupRetry(Landroid/telephony/data/DataProfile;ILcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;IJ)V

    .line 254
    return-void
.end method

.method protected onReset(I)V
    .locals 2
    .param p1, "reason"    # I

    .line 114
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataRetryManager;->mQtiDataConfigManager:Lcom/qualcomm/qti/internal/telephony/data/QtiDataConfigManager;

    invoke-virtual {v0}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataConfigManager;->isPdpRejectConfigEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataRetryManager;->mDataRejectCount:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataRetryManager;->mNoResetReasons:Ljava/util/Set;

    .line 116
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Skipping reset for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataRetryManager;->resetReasonToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataRetryManager;->log(Ljava/lang/String;)V

    .line 118
    return-void

    .line 120
    :cond_0
    invoke-super {p0, p1}, Lcom/android/internal/telephony/data/DataRetryManager;->onReset(I)V

    .line 121
    return-void
.end method
