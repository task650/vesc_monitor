.class public Lackmaniac/vescmonitor/FileArrayAdapter;
.super Landroid/widget/ArrayAdapter;
.source "FileArrayAdapter.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "DefaultLocale"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lackmaniac/vescmonitor/FileArrayAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lackmaniac/vescmonitor/FileInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lackmaniac/vescmonitor/FileInfo;",
            ">;"
        }
    .end annotation
.end field

.field private resorceID:I


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/util/List;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "textViewResourceId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List",
            "<",
            "Lackmaniac/vescmonitor/FileInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 23
    .local p3, "objects":Ljava/util/List;, "Ljava/util/List<Lackmaniac/vescmonitor/FileInfo;>;"
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 24
    iput-object p1, p0, Lackmaniac/vescmonitor/FileArrayAdapter;->context:Landroid/content/Context;

    .line 25
    iput p2, p0, Lackmaniac/vescmonitor/FileArrayAdapter;->resorceID:I

    .line 26
    iput-object p3, p0, Lackmaniac/vescmonitor/FileArrayAdapter;->items:Ljava/util/List;

    .line 27
    return-void
.end method


# virtual methods
.method public getItem(I)Lackmaniac/vescmonitor/FileInfo;
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 30
    iget-object v0, p0, Lackmaniac/vescmonitor/FileArrayAdapter;->items:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lackmaniac/vescmonitor/FileInfo;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 14
    invoke-virtual {p0, p1}, Lackmaniac/vescmonitor/FileArrayAdapter;->getItem(I)Lackmaniac/vescmonitor/FileInfo;

    move-result-object v0

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 36
    if-nez p2, :cond_1

    .line 37
    iget-object v4, p0, Lackmaniac/vescmonitor/FileArrayAdapter;->context:Landroid/content/Context;

    const-string v5, "layout_inflater"

    .line 38
    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 39
    .local v0, "layoutInflater":Landroid/view/LayoutInflater;
    iget v4, p0, Lackmaniac/vescmonitor/FileArrayAdapter;->resorceID:I

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 40
    new-instance v3, Lackmaniac/vescmonitor/FileArrayAdapter$ViewHolder;

    invoke-direct {v3, p0}, Lackmaniac/vescmonitor/FileArrayAdapter$ViewHolder;-><init>(Lackmaniac/vescmonitor/FileArrayAdapter;)V

    .line 41
    .local v3, "viewHolder":Lackmaniac/vescmonitor/FileArrayAdapter$ViewHolder;
    const v4, 0x1020006

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, v3, Lackmaniac/vescmonitor/FileArrayAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    .line 42
    const v4, 0x7f0800f1

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v3, Lackmaniac/vescmonitor/FileArrayAdapter$ViewHolder;->name:Landroid/widget/TextView;

    .line 43
    const v4, 0x7f080077

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v3, Lackmaniac/vescmonitor/FileArrayAdapter$ViewHolder;->duration:Landroid/widget/TextView;

    .line 44
    const v4, 0x7f08010c

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v3, Lackmaniac/vescmonitor/FileArrayAdapter$ViewHolder;->passedDays:Landroid/widget/TextView;

    .line 45
    invoke-virtual {p2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 50
    .end local v0    # "layoutInflater":Landroid/view/LayoutInflater;
    :goto_0
    iget-object v4, p0, Lackmaniac/vescmonitor/FileArrayAdapter;->items:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lackmaniac/vescmonitor/FileInfo;

    .line 51
    .local v2, "option":Lackmaniac/vescmonitor/FileInfo;
    if-eqz v2, :cond_0

    .line 53
    invoke-virtual {v2}, Lackmaniac/vescmonitor/FileInfo;->getDuration()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lackmaniac/vescmonitor/FileArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0d0005

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 54
    iget-object v4, v3, Lackmaniac/vescmonitor/FileArrayAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    const v5, 0x7f07005e

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 101
    :goto_1
    iget-object v4, v3, Lackmaniac/vescmonitor/FileArrayAdapter$ViewHolder;->name:Landroid/widget/TextView;

    invoke-virtual {v2}, Lackmaniac/vescmonitor/FileInfo;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    iget-object v4, v3, Lackmaniac/vescmonitor/FileArrayAdapter$ViewHolder;->duration:Landroid/widget/TextView;

    invoke-virtual {v2}, Lackmaniac/vescmonitor/FileInfo;->getDuration()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    iget-object v4, v3, Lackmaniac/vescmonitor/FileArrayAdapter$ViewHolder;->passedDays:Landroid/widget/TextView;

    invoke-virtual {v2}, Lackmaniac/vescmonitor/FileInfo;->getPassedDays()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    :cond_0
    return-object p2

    .line 47
    .end local v2    # "option":Lackmaniac/vescmonitor/FileInfo;
    .end local v3    # "viewHolder":Lackmaniac/vescmonitor/FileArrayAdapter$ViewHolder;
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lackmaniac/vescmonitor/FileArrayAdapter$ViewHolder;

    .restart local v3    # "viewHolder":Lackmaniac/vescmonitor/FileArrayAdapter$ViewHolder;
    goto :goto_0

    .line 55
    .restart local v2    # "option":Lackmaniac/vescmonitor/FileInfo;
    :cond_2
    invoke-virtual {v2}, Lackmaniac/vescmonitor/FileInfo;->getDuration()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lackmaniac/vescmonitor/FileArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0d0006

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 56
    iget-object v4, v3, Lackmaniac/vescmonitor/FileArrayAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    const v5, 0x7f070056

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 58
    :cond_3
    invoke-virtual {v2}, Lackmaniac/vescmonitor/FileInfo;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 59
    .local v1, "name":Ljava/lang/String;
    const-string v4, ".xls"

    invoke-virtual {v1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, ".xls"

    .line 60
    invoke-virtual {v1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 61
    :cond_4
    iget-object v4, v3, Lackmaniac/vescmonitor/FileArrayAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    const v5, 0x7f07007e

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 62
    :cond_5
    const-string v4, ".doc"

    invoke-virtual {v1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_6

    const-string v4, ".docx"

    .line 63
    invoke-virtual {v1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 64
    :cond_6
    iget-object v4, v3, Lackmaniac/vescmonitor/FileArrayAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    const v5, 0x7f07005b

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 65
    :cond_7
    const-string v4, ".ppt"

    invoke-virtual {v1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 66
    invoke-virtual {v2}, Lackmaniac/vescmonitor/FileInfo;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, ".pptx"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 67
    :cond_8
    iget-object v4, v3, Lackmaniac/vescmonitor/FileArrayAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    const v5, 0x7f070077

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1

    .line 68
    :cond_9
    const-string v4, ".pdf"

    invoke-virtual {v1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 69
    iget-object v4, v3, Lackmaniac/vescmonitor/FileArrayAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    const v5, 0x7f070071

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1

    .line 70
    :cond_a
    const-string v4, ".apk"

    invoke-virtual {v1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 71
    iget-object v4, v3, Lackmaniac/vescmonitor/FileArrayAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    const v5, 0x7f070054

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1

    .line 72
    :cond_b
    const-string v4, ".txt"

    invoke-virtual {v1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 73
    iget-object v4, v3, Lackmaniac/vescmonitor/FileArrayAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    const v5, 0x7f07007d

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1

    .line 74
    :cond_c
    const-string v4, ".jpg"

    invoke-virtual {v1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_d

    const-string v4, ".jpeg"

    .line 75
    invoke-virtual {v1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 76
    :cond_d
    iget-object v4, v3, Lackmaniac/vescmonitor/FileArrayAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    const v5, 0x7f070062

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1

    .line 77
    :cond_e
    const-string v4, ".png"

    invoke-virtual {v1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 78
    iget-object v4, v3, Lackmaniac/vescmonitor/FileArrayAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    const v5, 0x7f070076

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1

    .line 79
    :cond_f
    const-string v4, ".zip"

    invoke-virtual {v1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 80
    iget-object v4, v3, Lackmaniac/vescmonitor/FileArrayAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    const v5, 0x7f07007f

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1

    .line 81
    :cond_10
    const-string v4, ".rtf"

    invoke-virtual {v1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 82
    iget-object v4, v3, Lackmaniac/vescmonitor/FileArrayAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    const v5, 0x7f070079

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1

    .line 83
    :cond_11
    const-string v4, ".gif"

    invoke-virtual {v1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 84
    iget-object v4, v3, Lackmaniac/vescmonitor/FileArrayAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    const v5, 0x7f07005f

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1

    .line 85
    :cond_12
    const-string v4, ".avi"

    invoke-virtual {v1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 86
    iget-object v4, v3, Lackmaniac/vescmonitor/FileArrayAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    const v5, 0x7f070055

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1

    .line 87
    :cond_13
    const-string v4, ".mp3"

    invoke-virtual {v1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 88
    iget-object v4, v3, Lackmaniac/vescmonitor/FileArrayAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    const v5, 0x7f070063

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1

    .line 89
    :cond_14
    const-string v4, ".mp4"

    invoke-virtual {v1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_15

    .line 90
    iget-object v4, v3, Lackmaniac/vescmonitor/FileArrayAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    const v5, 0x7f070064

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1

    .line 91
    :cond_15
    const-string v4, ".rar"

    invoke-virtual {v1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_16

    .line 92
    iget-object v4, v3, Lackmaniac/vescmonitor/FileArrayAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    const v5, 0x7f070078

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1

    .line 93
    :cond_16
    const-string v4, ".acc"

    invoke-virtual {v1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_17

    .line 94
    iget-object v4, v3, Lackmaniac/vescmonitor/FileArrayAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    const/high16 v5, 0x7f070000

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1

    .line 95
    :cond_17
    const-string v4, ".csv"

    invoke-virtual {v1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_18

    .line 96
    iget-object v4, v3, Lackmaniac/vescmonitor/FileArrayAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    const v5, 0x7f070058

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1

    .line 98
    :cond_18
    iget-object v4, v3, Lackmaniac/vescmonitor/FileArrayAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    const v5, 0x7f070057

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1
.end method
