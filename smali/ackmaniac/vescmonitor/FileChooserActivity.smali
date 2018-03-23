.class public Lackmaniac/vescmonitor/FileChooserActivity;
.super Landroid/app/ListActivity;
.source "FileChooserActivity.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private currentFolder:Ljava/io/File;

.field private extensions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private fileArrayListAdapter:Lackmaniac/vescmonitor/FileArrayAdapter;

.field private fileSelected:Ljava/io/File;

.field private folder:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 36
    const-string v0, "FileChooserActivity"

    iput-object v0, p0, Lackmaniac/vescmonitor/FileChooserActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lackmaniac/vescmonitor/FileChooserActivity;)Ljava/io/File;
    .locals 1
    .param p0, "x0"    # Lackmaniac/vescmonitor/FileChooserActivity;

    .prologue
    .line 27
    iget-object v0, p0, Lackmaniac/vescmonitor/FileChooserActivity;->currentFolder:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$002(Lackmaniac/vescmonitor/FileChooserActivity;Ljava/io/File;)Ljava/io/File;
    .locals 0
    .param p0, "x0"    # Lackmaniac/vescmonitor/FileChooserActivity;
    .param p1, "x1"    # Ljava/io/File;

    .prologue
    .line 27
    iput-object p1, p0, Lackmaniac/vescmonitor/FileChooserActivity;->currentFolder:Ljava/io/File;

    return-object p1
.end method

.method static synthetic access$100(Lackmaniac/vescmonitor/FileChooserActivity;Ljava/io/File;)V
    .locals 0
    .param p0, "x0"    # Lackmaniac/vescmonitor/FileChooserActivity;
    .param p1, "x1"    # Ljava/io/File;

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lackmaniac/vescmonitor/FileChooserActivity;->fill(Ljava/io/File;)V

    return-void
.end method

.method static synthetic access$200(Lackmaniac/vescmonitor/FileChooserActivity;)V
    .locals 0
    .param p0, "x0"    # Lackmaniac/vescmonitor/FileChooserActivity;

    .prologue
    .line 27
    invoke-direct {p0}, Lackmaniac/vescmonitor/FileChooserActivity;->addNewFolderDialog()V

    return-void
.end method

.method static synthetic access$300(Lackmaniac/vescmonitor/FileChooserActivity;I)V
    .locals 0
    .param p0, "x0"    # Lackmaniac/vescmonitor/FileChooserActivity;
    .param p1, "x1"    # I

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lackmaniac/vescmonitor/FileChooserActivity;->showMenu(I)V

    return-void
.end method

.method static synthetic access$400(Lackmaniac/vescmonitor/FileChooserActivity;)Lackmaniac/vescmonitor/FileArrayAdapter;
    .locals 1
    .param p0, "x0"    # Lackmaniac/vescmonitor/FileChooserActivity;

    .prologue
    .line 27
    iget-object v0, p0, Lackmaniac/vescmonitor/FileChooserActivity;->fileArrayListAdapter:Lackmaniac/vescmonitor/FileArrayAdapter;

    return-object v0
.end method

.method static synthetic access$500(Lackmaniac/vescmonitor/FileChooserActivity;)Ljava/io/File;
    .locals 1
    .param p0, "x0"    # Lackmaniac/vescmonitor/FileChooserActivity;

    .prologue
    .line 27
    iget-object v0, p0, Lackmaniac/vescmonitor/FileChooserActivity;->fileSelected:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$502(Lackmaniac/vescmonitor/FileChooserActivity;Ljava/io/File;)Ljava/io/File;
    .locals 0
    .param p0, "x0"    # Lackmaniac/vescmonitor/FileChooserActivity;
    .param p1, "x1"    # Ljava/io/File;

    .prologue
    .line 27
    iput-object p1, p0, Lackmaniac/vescmonitor/FileChooserActivity;->fileSelected:Ljava/io/File;

    return-object p1
.end method

.method static synthetic access$600(Lackmaniac/vescmonitor/FileChooserActivity;Ljava/io/File;)V
    .locals 0
    .param p0, "x0"    # Lackmaniac/vescmonitor/FileChooserActivity;
    .param p1, "x1"    # Ljava/io/File;

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lackmaniac/vescmonitor/FileChooserActivity;->nameForRenameDialog(Ljava/io/File;)V

    return-void
.end method

.method static synthetic access$700(Lackmaniac/vescmonitor/FileChooserActivity;Ljava/io/File;)V
    .locals 0
    .param p0, "x0"    # Lackmaniac/vescmonitor/FileChooserActivity;
    .param p1, "x1"    # Ljava/io/File;

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lackmaniac/vescmonitor/FileChooserActivity;->nameForRenameFolderDialog(Ljava/io/File;)V

    return-void
.end method

.method private addNewFolderDialog()V
    .locals 6

    .prologue
    const/4 v5, -0x2

    const/4 v4, 0x2

    .line 451
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 454
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v3, 0x7f0d009f

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 455
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 456
    .local v2, "layout":Landroid/widget/LinearLayout;
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 458
    invoke-virtual {v2, v4, v4, v4, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 460
    new-instance v1, Landroid/widget/EditText;

    invoke-direct {v1, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 461
    .local v1, "et":Landroid/widget/EditText;
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 462
    const v3, 0x7f0d003b

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setText(I)V

    .line 463
    const/high16 v3, 0x41a00000    # 20.0f

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setTextSize(F)V

    .line 465
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 467
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 468
    const/high16 v3, 0x1040000

    new-instance v4, Lackmaniac/vescmonitor/FileChooserActivity$14;

    invoke-direct {v4, p0}, Lackmaniac/vescmonitor/FileChooserActivity$14;-><init>(Lackmaniac/vescmonitor/FileChooserActivity;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 474
    const v3, 0x104000a

    new-instance v4, Lackmaniac/vescmonitor/FileChooserActivity$15;

    invoke-direct {v4, p0, v1}, Lackmaniac/vescmonitor/FileChooserActivity$15;-><init>(Lackmaniac/vescmonitor/FileChooserActivity;Landroid/widget/EditText;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 487
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 488
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 489
    return-void
.end method

.method private fill(Ljava/io/File;)V
    .locals 49
    .param p1, "f"    # Ljava/io/File;

    .prologue
    .line 94
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v33

    .line 103
    .local v33, "folders":[Ljava/io/File;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f0d0039

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lackmaniac/vescmonitor/FileChooserActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-static {v4}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lackmaniac/vescmonitor/FileChooserActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 104
    invoke-virtual/range {p0 .. p0}, Lackmaniac/vescmonitor/FileChooserActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 105
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    .line 106
    .local v20, "dirs":Ljava/util/List;, "Ljava/util/List<Lackmaniac/vescmonitor/FileInfo;>;"
    new-instance v30, Ljava/util/ArrayList;

    invoke-direct/range {v30 .. v30}, Ljava/util/ArrayList;-><init>()V

    .line 108
    .local v30, "files":Ljava/util/List;, "Ljava/util/List<Lackmaniac/vescmonitor/FileInfo;>;"
    :try_start_0
    move-object/from16 v0, v33

    array-length v0, v0

    move/from16 v48, v0

    const/4 v2, 0x0

    move/from16 v45, v2

    :goto_0
    move/from16 v0, v45

    move/from16 v1, v48

    if-ge v0, v1, :cond_6

    aget-object v25, v33, v45
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 110
    .local v25, "file":Ljava/io/File;
    :try_start_1
    invoke-virtual/range {v25 .. v25}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual/range {v25 .. v25}, Ljava/io/File;->isHidden()Z

    move-result v2

    if-nez v2, :cond_3

    .line 111
    const-string v9, ""

    .line 113
    .local v9, "daysAgoText":Ljava/lang/String;
    invoke-virtual/range {v25 .. v25}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    .line 114
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual/range {v25 .. v25}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/32 v4, 0x5265c00

    div-long/2addr v2, v4

    long-to-int v0, v2

    move/from16 v19, v0

    .line 116
    .local v19, "daysAgo":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " days ago"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 117
    const/4 v2, 0x1

    move/from16 v0, v19

    if-ne v0, v2, :cond_0

    const-string v9, "Yesterday"

    .line 118
    :cond_0
    if-nez v19, :cond_1

    const-string v9, "Today"

    .line 121
    .end local v19    # "daysAgo":I
    :cond_1
    new-instance v2, Lackmaniac/vescmonitor/FileInfo;

    invoke-virtual/range {v25 .. v25}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    .line 122
    invoke-virtual/range {p0 .. p0}, Lackmaniac/vescmonitor/FileChooserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d0005

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 123
    invoke-virtual/range {v25 .. v25}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v2 .. v9}, Lackmaniac/vescmonitor/FileInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;)V

    .line 121
    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 108
    .end local v9    # "daysAgoText":Ljava/lang/String;
    :cond_2
    :goto_1
    add-int/lit8 v2, v45, 0x1

    move/from16 v45, v2

    goto :goto_0

    .line 129
    :cond_3
    invoke-virtual/range {v25 .. v25}, Ljava/io/File;->isHidden()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual/range {v25 .. v25}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "mp4"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual/range {v25 .. v25}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "csv"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 130
    :cond_4
    invoke-virtual/range {v25 .. v25}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x400

    div-long v26, v2, v4

    .line 132
    .local v26, "fileSize":J
    const-wide/16 v2, 0x400

    cmp-long v2, v26, v2

    if-ltz v2, :cond_7

    .line 133
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-wide/from16 v0, v26

    long-to-double v4, v0

    const-wide/high16 v6, 0x4090000000000000L    # 1024.0

    div-double/2addr v4, v6

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    mul-double/2addr v4, v6

    double-to-int v3, v4

    int-to-double v4, v3

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    div-double/2addr v4, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Mb"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    .line 138
    .local v28, "fileSizeText":Ljava/lang/String;
    :goto_2
    const-string v21, "?"

    .line 140
    .local v21, "durationtext":Ljava/lang/String;
    invoke-virtual/range {v25 .. v25}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "mp4"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 141
    new-instance v40, Landroid/media/MediaMetadataRetriever;

    invoke-direct/range {v40 .. v40}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 142
    .local v40, "retriever":Landroid/media/MediaMetadataRetriever;
    invoke-virtual/range {v25 .. v25}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v40

    invoke-virtual {v0, v2}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 143
    const/16 v2, 0x9

    move-object/from16 v0, v40

    invoke-virtual {v0, v2}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v44

    .line 144
    .local v44, "time":Ljava/lang/String;
    if-eqz v44, :cond_5

    .line 145
    invoke-static/range {v44 .. v44}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v46

    .line 146
    .local v46, "timeInmillisec":J
    const-wide/16 v2, 0x3e8

    div-long v22, v46, v2

    .line 147
    .local v22, "duration":J
    const-wide/16 v2, 0xe10

    div-long v36, v22, v2

    .line 148
    .local v36, "hours":J
    const-wide/16 v2, 0xe10

    mul-long v2, v2, v36

    sub-long v2, v22, v2

    const-wide/16 v4, 0x3c

    div-long v38, v2, v4

    .line 149
    .local v38, "minutes":J
    const-wide/16 v2, 0xe10

    mul-long v2, v2, v36

    const-wide/16 v4, 0x3c

    mul-long v4, v4, v38

    add-long/2addr v2, v4

    sub-long v42, v22, v2

    .line 150
    .local v42, "seconds":J
    const-string v2, "%02d:%02d:%02d"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static/range {v36 .. v37}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static/range {v38 .. v39}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-static/range {v42 .. v43}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    .line 154
    .end local v22    # "duration":J
    .end local v36    # "hours":J
    .end local v38    # "minutes":J
    .end local v40    # "retriever":Landroid/media/MediaMetadataRetriever;
    .end local v42    # "seconds":J
    .end local v44    # "time":Ljava/lang/String;
    .end local v46    # "timeInmillisec":J
    :cond_5
    new-instance v10, Lackmaniac/vescmonitor/FileInfo;

    invoke-virtual/range {v25 .. v25}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v11

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f0d0088

    .line 155
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lackmaniac/vescmonitor/FileChooserActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v28

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v2, "?"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    const-string v2, ""

    :goto_3
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 156
    invoke-virtual/range {v25 .. v25}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const-string v17, ""

    invoke-direct/range {v10 .. v17}, Lackmaniac/vescmonitor/FileInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;)V

    .line 154
    move-object/from16 v0, v30

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 163
    .end local v21    # "durationtext":Ljava/lang/String;
    .end local v26    # "fileSize":J
    .end local v28    # "fileSizeText":Ljava/lang/String;
    :catch_0
    move-exception v24

    .line 164
    .local v24, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual/range {v24 .. v24}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_1

    .line 167
    .end local v24    # "e":Ljava/lang/Exception;
    .end local v25    # "file":Ljava/io/File;
    :catch_1
    move-exception v24

    .line 168
    .restart local v24    # "e":Ljava/lang/Exception;
    invoke-virtual/range {v24 .. v24}, Ljava/lang/Exception;->printStackTrace()V

    .line 170
    .end local v24    # "e":Ljava/lang/Exception;
    :cond_6
    invoke-static/range {v20 .. v20}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 171
    invoke-static/range {v30 .. v30}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 172
    new-instance v31, Ljava/util/ArrayList;

    invoke-direct/range {v31 .. v31}, Ljava/util/ArrayList;-><init>()V

    .line 173
    .local v31, "finalFileList":Ljava/util/List;, "Ljava/util/List<Lackmaniac/vescmonitor/FileInfo;>;"
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Lackmaniac/vescmonitor/FileInfo;

    .line 174
    .local v32, "folderInfo":Lackmaniac/vescmonitor/FileInfo;
    const/4 v3, 0x0

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    invoke-interface {v0, v3, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_4

    .line 135
    .end local v31    # "finalFileList":Ljava/util/List;, "Ljava/util/List<Lackmaniac/vescmonitor/FileInfo;>;"
    .end local v32    # "folderInfo":Lackmaniac/vescmonitor/FileInfo;
    .restart local v25    # "file":Ljava/io/File;
    .restart local v26    # "fileSize":J
    :cond_7
    :try_start_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-wide/from16 v0, v26

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Kb"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    .restart local v28    # "fileSizeText":Ljava/lang/String;
    goto/16 :goto_2

    .line 155
    .restart local v21    # "durationtext":Ljava/lang/String;
    :cond_8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "   "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v4, 0x7f0d0043

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lackmaniac/vescmonitor/FileChooserActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ": "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v2

    goto/16 :goto_3

    .line 176
    .end local v21    # "durationtext":Ljava/lang/String;
    .end local v25    # "file":Ljava/io/File;
    .end local v26    # "fileSize":J
    .end local v28    # "fileSizeText":Ljava/lang/String;
    .restart local v31    # "finalFileList":Ljava/util/List;, "Ljava/util/List<Lackmaniac/vescmonitor/FileInfo;>;"
    :cond_9
    new-instance v34, Ljava/util/ArrayList;

    invoke-direct/range {v34 .. v34}, Ljava/util/ArrayList;-><init>()V

    .line 177
    .local v34, "helperListFiles":Ljava/util/List;, "Ljava/util/List<Lackmaniac/vescmonitor/FileInfo;>;"
    invoke-interface/range {v30 .. v30}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lackmaniac/vescmonitor/FileInfo;

    .line 178
    .local v29, "fileinfo":Lackmaniac/vescmonitor/FileInfo;
    const/4 v3, 0x0

    move-object/from16 v0, v34

    move-object/from16 v1, v29

    invoke-interface {v0, v3, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_5

    .line 180
    .end local v29    # "fileinfo":Lackmaniac/vescmonitor/FileInfo;
    :cond_a
    move-object/from16 v0, v31

    move-object/from16 v1, v34

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 182
    new-instance v2, Lackmaniac/vescmonitor/FileArrayAdapter;

    const v3, 0x7f0a002a

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-direct {v2, v0, v3, v1}, Lackmaniac/vescmonitor/FileArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lackmaniac/vescmonitor/FileChooserActivity;->fileArrayListAdapter:Lackmaniac/vescmonitor/FileArrayAdapter;

    .line 184
    move-object/from16 v0, p0

    iget-object v2, v0, Lackmaniac/vescmonitor/FileChooserActivity;->fileArrayListAdapter:Lackmaniac/vescmonitor/FileArrayAdapter;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lackmaniac/vescmonitor/FileChooserActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 186
    const v2, 0x7f08003e

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lackmaniac/vescmonitor/FileChooserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v35

    check-cast v35, Landroid/widget/RelativeLayout;

    .line 190
    .local v35, "parentLayout":Landroid/widget/RelativeLayout;
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_b

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lackmaniac/vescmonitor/FileChooserActivity;->currentFolder:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    .line 191
    const/4 v2, 0x0

    move-object/from16 v0, v35

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 192
    new-instance v2, Lackmaniac/vescmonitor/FileChooserActivity$1;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v2, v0, v1}, Lackmaniac/vescmonitor/FileChooserActivity$1;-><init>(Lackmaniac/vescmonitor/FileChooserActivity;Ljava/io/File;)V

    move-object/from16 v0, v35

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 203
    :goto_6
    const v2, 0x7f08012c

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lackmaniac/vescmonitor/FileChooserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v41

    check-cast v41, Landroid/widget/ImageButton;

    .line 204
    .local v41, "saveFolderButton":Landroid/widget/ImageButton;
    new-instance v2, Lackmaniac/vescmonitor/FileChooserActivity$2;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lackmaniac/vescmonitor/FileChooserActivity$2;-><init>(Lackmaniac/vescmonitor/FileChooserActivity;)V

    move-object/from16 v0, v41

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 217
    const v2, 0x7f080026

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lackmaniac/vescmonitor/FileChooserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/ImageButton;

    .line 218
    .local v18, "addFolderButton":Landroid/widget/ImageButton;
    new-instance v2, Lackmaniac/vescmonitor/FileChooserActivity$3;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lackmaniac/vescmonitor/FileChooserActivity$3;-><init>(Lackmaniac/vescmonitor/FileChooserActivity;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 227
    invoke-virtual/range {p0 .. p0}, Lackmaniac/vescmonitor/FileChooserActivity;->getListView()Landroid/widget/ListView;

    move-result-object v2

    new-instance v3, Lackmaniac/vescmonitor/FileChooserActivity$4;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lackmaniac/vescmonitor/FileChooserActivity$4;-><init>(Lackmaniac/vescmonitor/FileChooserActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 237
    invoke-virtual/range {p0 .. p0}, Lackmaniac/vescmonitor/FileChooserActivity;->getListView()Landroid/widget/ListView;

    move-result-object v2

    new-instance v3, Lackmaniac/vescmonitor/FileChooserActivity$5;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lackmaniac/vescmonitor/FileChooserActivity$5;-><init>(Lackmaniac/vescmonitor/FileChooserActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 266
    return-void

    .line 200
    .end local v18    # "addFolderButton":Landroid/widget/ImageButton;
    .end local v41    # "saveFolderButton":Landroid/widget/ImageButton;
    :cond_b
    const/16 v2, 0x8

    move-object/from16 v0, v35

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_6
.end method

.method private nameForRenameDialog(Ljava/io/File;)V
    .locals 8
    .param p1, "file"    # Ljava/io/File;

    .prologue
    const/4 v7, -0x2

    const/4 v5, 0x2

    .line 412
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 415
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v4, 0x7f0d00a0

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 416
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 417
    .local v2, "layout":Landroid/widget/LinearLayout;
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 419
    invoke-virtual {v2, v5, v5, v5, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 421
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x4

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 423
    .local v3, "suffix":Ljava/lang/String;
    new-instance v1, Landroid/widget/EditText;

    invoke-direct {v1, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 424
    .local v1, "et":Landroid/widget/EditText;
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x1

    invoke-direct {v4, v5, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 425
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x4

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 426
    const/high16 v4, 0x41a00000    # 20.0f

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setTextSize(F)V

    .line 428
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 430
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 431
    const/high16 v4, 0x1040000

    new-instance v5, Lackmaniac/vescmonitor/FileChooserActivity$12;

    invoke-direct {v5, p0}, Lackmaniac/vescmonitor/FileChooserActivity$12;-><init>(Lackmaniac/vescmonitor/FileChooserActivity;)V

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 437
    const v4, 0x104000a

    new-instance v5, Lackmaniac/vescmonitor/FileChooserActivity$13;

    invoke-direct {v5, p0, p1, v1, v3}, Lackmaniac/vescmonitor/FileChooserActivity$13;-><init>(Lackmaniac/vescmonitor/FileChooserActivity;Ljava/io/File;Landroid/widget/EditText;Ljava/lang/String;)V

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 445
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 446
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 447
    return-void
.end method

.method private nameForRenameFolderDialog(Ljava/io/File;)V
    .locals 6
    .param p1, "file"    # Ljava/io/File;

    .prologue
    const/4 v5, -0x2

    const/4 v4, 0x2

    .line 375
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 378
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v3, 0x7f0d00a0

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 379
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 380
    .local v2, "layout":Landroid/widget/LinearLayout;
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 382
    invoke-virtual {v2, v4, v4, v4, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 384
    new-instance v1, Landroid/widget/EditText;

    invoke-direct {v1, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 385
    .local v1, "et":Landroid/widget/EditText;
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 386
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 387
    const/high16 v3, 0x41a00000    # 20.0f

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setTextSize(F)V

    .line 389
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 391
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 392
    const/high16 v3, 0x1040000

    new-instance v4, Lackmaniac/vescmonitor/FileChooserActivity$10;

    invoke-direct {v4, p0}, Lackmaniac/vescmonitor/FileChooserActivity$10;-><init>(Lackmaniac/vescmonitor/FileChooserActivity;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 398
    const v3, 0x104000a

    new-instance v4, Lackmaniac/vescmonitor/FileChooserActivity$11;

    invoke-direct {v4, p0, p1, v1}, Lackmaniac/vescmonitor/FileChooserActivity$11;-><init>(Lackmaniac/vescmonitor/FileChooserActivity;Ljava/io/File;Landroid/widget/EditText;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 406
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 407
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 408
    return-void
.end method

.method private showMenu(I)V
    .locals 10
    .param p1, "position"    # I

    .prologue
    const v9, 0x7f0d0002

    const/high16 v8, 0x1040000

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 270
    new-instance v1, Ljava/io/File;

    iget-object v3, p0, Lackmaniac/vescmonitor/FileChooserActivity;->fileArrayListAdapter:Lackmaniac/vescmonitor/FileArrayAdapter;

    invoke-virtual {v3, p1}, Lackmaniac/vescmonitor/FileArrayAdapter;->getItem(I)Lackmaniac/vescmonitor/FileInfo;

    move-result-object v3

    invoke-virtual {v3}, Lackmaniac/vescmonitor/FileInfo;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 272
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, ".mp4"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, ".csv"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 274
    :cond_0
    const/4 v3, 0x3

    new-array v2, v3, [Ljava/lang/CharSequence;

    invoke-virtual {p0}, Lackmaniac/vescmonitor/FileChooserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d0008

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    .line 275
    invoke-virtual {p0}, Lackmaniac/vescmonitor/FileChooserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d0007

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    .line 276
    invoke-virtual {p0}, Lackmaniac/vescmonitor/FileChooserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    .line 278
    .local v2, "menuSettingsArray":[Ljava/lang/CharSequence;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 281
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    new-instance v3, Lackmaniac/vescmonitor/FileChooserActivity$7;

    invoke-direct {v3, p0, v1}, Lackmaniac/vescmonitor/FileChooserActivity$7;-><init>(Lackmaniac/vescmonitor/FileChooserActivity;Ljava/io/File;)V

    invoke-virtual {v0, v2, v5, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lackmaniac/vescmonitor/FileChooserActivity$6;

    invoke-direct {v4, p0}, Lackmaniac/vescmonitor/FileChooserActivity$6;-><init>(Lackmaniac/vescmonitor/FileChooserActivity;)V

    .line 309
    invoke-virtual {v3, v8, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 315
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 316
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 371
    :goto_0
    return-void

    .line 318
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v2    # "menuSettingsArray":[Ljava/lang/CharSequence;
    :cond_1
    new-array v2, v7, [Ljava/lang/CharSequence;

    invoke-virtual {p0}, Lackmaniac/vescmonitor/FileChooserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d0007

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    .line 319
    invoke-virtual {p0}, Lackmaniac/vescmonitor/FileChooserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    .line 321
    .restart local v2    # "menuSettingsArray":[Ljava/lang/CharSequence;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 324
    .restart local v0    # "builder":Landroid/app/AlertDialog$Builder;
    const v3, 0x7f0d0003

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lackmaniac/vescmonitor/FileChooserActivity$9;

    invoke-direct {v4, p0, v1}, Lackmaniac/vescmonitor/FileChooserActivity$9;-><init>(Lackmaniac/vescmonitor/FileChooserActivity;Ljava/io/File;)V

    .line 327
    invoke-virtual {v3, v2, v5, v4}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lackmaniac/vescmonitor/FileChooserActivity$8;

    invoke-direct {v4, p0}, Lackmaniac/vescmonitor/FileChooserActivity$8;-><init>(Lackmaniac/vescmonitor/FileChooserActivity;)V

    .line 362
    invoke-virtual {v3, v8, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 368
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 369
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 40
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 41
    const v2, 0x7f0a001d

    invoke-virtual {p0, v2}, Lackmaniac/vescmonitor/FileChooserActivity;->setContentView(I)V

    .line 60
    const-string v2, "VESC_SETTINGS"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lackmaniac/vescmonitor/FileChooserActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 61
    .local v1, "settings":Landroid/content/SharedPreferences;
    iget-object v2, p0, Lackmaniac/vescmonitor/FileChooserActivity;->folder:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 62
    invoke-static {v1}, Lackmaniac/vescmonitor/Utils;->getFolder(Landroid/content/SharedPreferences;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lackmaniac/vescmonitor/FileChooserActivity;->folder:Ljava/lang/String;

    .line 65
    :cond_0
    iget-object v2, p0, Lackmaniac/vescmonitor/FileChooserActivity;->folder:Ljava/lang/String;

    if-nez v2, :cond_1

    .line 66
    new-instance v2, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lackmaniac/vescmonitor/FileChooserActivity;->currentFolder:Ljava/io/File;

    .line 67
    iget-object v2, p0, Lackmaniac/vescmonitor/FileChooserActivity;->currentFolder:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lackmaniac/vescmonitor/FileChooserActivity;->folder:Ljava/lang/String;

    .line 77
    :goto_0
    iget-object v2, p0, Lackmaniac/vescmonitor/FileChooserActivity;->currentFolder:Ljava/io/File;

    invoke-direct {p0, v2}, Lackmaniac/vescmonitor/FileChooserActivity;->fill(Ljava/io/File;)V

    .line 78
    return-void

    .line 70
    :cond_1
    :try_start_0
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lackmaniac/vescmonitor/FileChooserActivity;->folder:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lackmaniac/vescmonitor/FileChooserActivity;->currentFolder:Ljava/io/File;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 71
    :catch_0
    move-exception v0

    .line 72
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v2, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lackmaniac/vescmonitor/FileChooserActivity;->currentFolder:Ljava/io/File;

    .line 73
    iget-object v2, p0, Lackmaniac/vescmonitor/FileChooserActivity;->currentFolder:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lackmaniac/vescmonitor/FileChooserActivity;->folder:Ljava/lang/String;

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 82
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 83
    .local v0, "id":I
    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 86
    invoke-virtual {p0}, Lackmaniac/vescmonitor/FileChooserActivity;->onBackPressed()V

    .line 87
    const/4 v1, 0x1

    .line 90
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_0
.end method
