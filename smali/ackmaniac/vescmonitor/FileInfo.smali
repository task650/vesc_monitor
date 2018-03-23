.class public Lackmaniac/vescmonitor/FileInfo;
.super Ljava/lang/Object;
.source "FileInfo.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "DefaultLocale"
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lackmaniac/vescmonitor/FileInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private data:Ljava/lang/String;

.field private folder:Z

.field private isChecked:Z

.field private name:Ljava/lang/String;

.field private parent:Z

.field private passedDays:Ljava/lang/String;

.field private path:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;)V
    .locals 0
    .param p1, "n"    # Ljava/lang/String;
    .param p2, "d"    # Ljava/lang/String;
    .param p3, "p"    # Ljava/lang/String;
    .param p4, "folder"    # Z
    .param p5, "parent"    # Z
    .param p6, "isChecked"    # Z
    .param p7, "passedDays"    # Ljava/lang/String;

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lackmaniac/vescmonitor/FileInfo;->name:Ljava/lang/String;

    .line 17
    iput-object p2, p0, Lackmaniac/vescmonitor/FileInfo;->data:Ljava/lang/String;

    .line 18
    iput-object p3, p0, Lackmaniac/vescmonitor/FileInfo;->path:Ljava/lang/String;

    .line 19
    iput-boolean p4, p0, Lackmaniac/vescmonitor/FileInfo;->folder:Z

    .line 20
    iput-boolean p5, p0, Lackmaniac/vescmonitor/FileInfo;->parent:Z

    .line 21
    iput-boolean p6, p0, Lackmaniac/vescmonitor/FileInfo;->isChecked:Z

    .line 22
    iput-object p7, p0, Lackmaniac/vescmonitor/FileInfo;->passedDays:Ljava/lang/String;

    .line 23
    return-void
.end method


# virtual methods
.method public compareTo(Lackmaniac/vescmonitor/FileInfo;)I
    .locals 2
    .param p1, "o"    # Lackmaniac/vescmonitor/FileInfo;

    .prologue
    .line 39
    iget-object v0, p0, Lackmaniac/vescmonitor/FileInfo;->name:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 40
    iget-object v0, p0, Lackmaniac/vescmonitor/FileInfo;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lackmaniac/vescmonitor/FileInfo;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 42
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 5
    check-cast p1, Lackmaniac/vescmonitor/FileInfo;

    invoke-virtual {p0, p1}, Lackmaniac/vescmonitor/FileInfo;->compareTo(Lackmaniac/vescmonitor/FileInfo;)I

    move-result v0

    return v0
.end method

.method public getDuration()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lackmaniac/vescmonitor/FileInfo;->data:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lackmaniac/vescmonitor/FileInfo;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPassedDays()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lackmaniac/vescmonitor/FileInfo;->passedDays:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lackmaniac/vescmonitor/FileInfo;->path:Ljava/lang/String;

    return-object v0
.end method

.method public isFolder()Z
    .locals 1

    .prologue
    .line 46
    iget-boolean v0, p0, Lackmaniac/vescmonitor/FileInfo;->folder:Z

    return v0
.end method

.method public isParent()Z
    .locals 1

    .prologue
    .line 50
    iget-boolean v0, p0, Lackmaniac/vescmonitor/FileInfo;->parent:Z

    return v0
.end method
