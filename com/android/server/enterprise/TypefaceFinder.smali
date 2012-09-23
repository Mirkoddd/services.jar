.class public Lcom/android/server/enterprise/TypefaceFinder;
.super Ljava/lang/Object;
.source "TypefaceFinder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/TypefaceFinder$TypefaceSortByName;
    }
.end annotation


# static fields
.field public static final DEFAULT_FONT_VALUE:Ljava/lang/String; = "default"

.field static final FONT_ASSET_DIR:Ljava/lang/String; = "xml"

.field private static final TAG:Ljava/lang/String; = "TypefaceFinder"


# instance fields
.field public context:Landroid/content/Context;

.field public final mTypefaces:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/server/enterprise/Typeface;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 41
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/TypefaceFinder;->mTypefaces:Ljava/util/List;

    .line 178
    return-void
.end method


# virtual methods
.method public findMatchingTypeface(Ljava/lang/String;)Lcom/android/server/enterprise/Typeface;
    .registers 5
    .parameter "typefaceFilename"

    .prologue
    .line 344
    const/4 v1, 0x0

    .line 349
    .local v1, typeface:Lcom/android/server/enterprise/Typeface;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    iget-object v2, p0, Lcom/android/server/enterprise/TypefaceFinder;->mTypefaces:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1c

    .line 353
    iget-object v2, p0, Lcom/android/server/enterprise/TypefaceFinder;->mTypefaces:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #typeface:Lcom/android/server/enterprise/Typeface;
    check-cast v1, Lcom/android/server/enterprise/Typeface;

    .line 355
    .restart local v1       #typeface:Lcom/android/server/enterprise/Typeface;
    invoke-virtual {v1}, Lcom/android/server/enterprise/Typeface;->getTypefaceFilename()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 365
    :cond_1c
    return-object v1

    .line 360
    :cond_1d
    const/4 v1, 0x0

    .line 349
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public findMatchingTypefaceByName(Ljava/lang/String;)Lcom/android/server/enterprise/Typeface;
    .registers 7
    .parameter "fontName"

    .prologue
    .line 374
    const/4 v1, 0x0

    .line 376
    .local v1, typeface:Lcom/android/server/enterprise/Typeface;
    const-string v2, "TypefaceFinder"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "findMatchingTypefaceByName:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1a
    iget-object v2, p0, Lcom/android/server/enterprise/TypefaceFinder;->mTypefaces:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_50

    .line 383
    iget-object v2, p0, Lcom/android/server/enterprise/TypefaceFinder;->mTypefaces:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #typeface:Lcom/android/server/enterprise/Typeface;
    check-cast v1, Lcom/android/server/enterprise/Typeface;

    .line 384
    .restart local v1       #typeface:Lcom/android/server/enterprise/Typeface;
    const-string v2, "TypefaceFinder"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "findMatchingTypeface:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/server/enterprise/Typeface;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    invoke-virtual {v1}, Lcom/android/server/enterprise/Typeface;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_51

    .line 395
    :cond_50
    return-object v1

    .line 390
    :cond_51
    const/4 v1, 0x0

    .line 379
    add-int/lit8 v0, v0, 0x1

    goto :goto_1a
.end method

.method public findTypefaces(Landroid/content/res/AssetManager;Ljava/lang/String;)Z
    .registers 9
    .parameter "assetManager"
    .parameter "fontPackageName"

    .prologue
    .line 79
    const/4 v3, 0x0

    .line 83
    .local v3, xmlfiles:[Ljava/lang/String;
    :try_start_1
    const-string v4, "xml"

    invoke-virtual {p1, v4}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_6} :catch_2c

    move-result-object v3

    .line 97
    const/4 v1, 0x0

    .line 99
    .local v1, i:I
    :goto_8
    array-length v4, v3

    if-ge v1, v4, :cond_2f

    .line 103
    :try_start_b
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "xml/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v3, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 105
    .local v2, in:Ljava/io/InputStream;
    aget-object v4, v3, v1

    invoke-virtual {p0, v4, v2, p2}, Lcom/android/server/enterprise/TypefaceFinder;->parseTypefaceXml(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_29} :catch_31

    .line 115
    .end local v2           #in:Ljava/io/InputStream;
    :goto_29
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 87
    .end local v1           #i:I
    :catch_2c
    move-exception v0

    .line 89
    .local v0, ex:Ljava/lang/Exception;
    const/4 v4, 0x0

    .line 119
    .end local v0           #ex:Ljava/lang/Exception;
    :goto_2e
    return v4

    .restart local v1       #i:I
    :cond_2f
    const/4 v4, 0x1

    goto :goto_2e

    .line 109
    :catch_31
    move-exception v4

    goto :goto_29
.end method

.method public getMonospaceEntries(Ljava/util/Vector;Ljava/util/Vector;)V
    .registers 6
    .parameter "entries"
    .parameter "entryValues"

    .prologue
    .line 302
    const-string v2, "default"

    invoke-virtual {p1, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 304
    const-string v2, "default"

    invoke-virtual {p2, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 308
    const/4 v0, 0x0

    .local v0, i:I
    :goto_b
    iget-object v2, p0, Lcom/android/server/enterprise/TypefaceFinder;->mTypefaces:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_36

    .line 312
    iget-object v2, p0, Lcom/android/server/enterprise/TypefaceFinder;->mTypefaces:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/enterprise/Typeface;

    invoke-virtual {v2}, Lcom/android/server/enterprise/Typeface;->getMonospaceName()Ljava/lang/String;

    move-result-object v1

    .line 314
    .local v1, s:Ljava/lang/String;
    if-eqz v1, :cond_33

    .line 318
    invoke-virtual {p1, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 320
    iget-object v2, p0, Lcom/android/server/enterprise/TypefaceFinder;->mTypefaces:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/enterprise/Typeface;

    invoke-virtual {v2}, Lcom/android/server/enterprise/Typeface;->getTypefaceFilename()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 308
    :cond_33
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 326
    .end local v1           #s:Ljava/lang/String;
    :cond_36
    return-void
.end method

.method public getSansEntries(Ljava/util/Vector;Ljava/util/Vector;Ljava/util/Vector;)V
    .registers 8
    .parameter "entries"
    .parameter "entryValues"
    .parameter "fontPackageName"

    .prologue
    .line 207
    const-string v2, "default"

    invoke-virtual {p1, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 209
    const-string v2, "default"

    invoke-virtual {p2, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 211
    const-string v2, ""

    invoke-virtual {p3, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 218
    iget-object v2, p0, Lcom/android/server/enterprise/TypefaceFinder;->mTypefaces:Ljava/util/List;

    new-instance v3, Lcom/android/server/enterprise/TypefaceFinder$TypefaceSortByName;

    invoke-direct {v3, p0}, Lcom/android/server/enterprise/TypefaceFinder$TypefaceSortByName;-><init>(Lcom/android/server/enterprise/TypefaceFinder;)V

    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 222
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1a
    iget-object v2, p0, Lcom/android/server/enterprise/TypefaceFinder;->mTypefaces:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_54

    .line 226
    iget-object v2, p0, Lcom/android/server/enterprise/TypefaceFinder;->mTypefaces:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/enterprise/Typeface;

    invoke-virtual {v2}, Lcom/android/server/enterprise/Typeface;->getSansName()Ljava/lang/String;

    move-result-object v1

    .line 228
    .local v1, s:Ljava/lang/String;
    if-eqz v1, :cond_51

    .line 232
    invoke-virtual {p1, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 234
    iget-object v2, p0, Lcom/android/server/enterprise/TypefaceFinder;->mTypefaces:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/enterprise/Typeface;

    invoke-virtual {v2}, Lcom/android/server/enterprise/Typeface;->getTypefaceFilename()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 236
    iget-object v2, p0, Lcom/android/server/enterprise/TypefaceFinder;->mTypefaces:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/enterprise/Typeface;

    invoke-virtual {v2}, Lcom/android/server/enterprise/Typeface;->getFontPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 222
    :cond_51
    add-int/lit8 v0, v0, 0x1

    goto :goto_1a

    .line 242
    .end local v1           #s:Ljava/lang/String;
    :cond_54
    return-void
.end method

.method public getSerifEntries(Ljava/util/Vector;Ljava/util/Vector;)V
    .registers 6
    .parameter "entries"
    .parameter "entryValues"

    .prologue
    .line 260
    const-string v2, "default"

    invoke-virtual {p1, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 262
    const-string v2, "default"

    invoke-virtual {p2, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 266
    const/4 v0, 0x0

    .local v0, i:I
    :goto_b
    iget-object v2, p0, Lcom/android/server/enterprise/TypefaceFinder;->mTypefaces:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_36

    .line 270
    iget-object v2, p0, Lcom/android/server/enterprise/TypefaceFinder;->mTypefaces:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/enterprise/Typeface;

    invoke-virtual {v2}, Lcom/android/server/enterprise/Typeface;->getSerifName()Ljava/lang/String;

    move-result-object v1

    .line 272
    .local v1, s:Ljava/lang/String;
    if-eqz v1, :cond_33

    .line 276
    invoke-virtual {p1, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 278
    iget-object v2, p0, Lcom/android/server/enterprise/TypefaceFinder;->mTypefaces:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/enterprise/Typeface;

    invoke-virtual {v2}, Lcom/android/server/enterprise/Typeface;->getTypefaceFilename()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 266
    :cond_33
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 284
    .end local v1           #s:Ljava/lang/String;
    :cond_36
    return-void
.end method

.method public parseTypefaceXml(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)V
    .registers 10
    .parameter "xmlFilename"
    .parameter "inStream"
    .parameter "fontPackageName"

    .prologue
    .line 135
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v3

    .line 137
    .local v3, spf:Ljavax/xml/parsers/SAXParserFactory;
    invoke-virtual {v3}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v2

    .line 139
    .local v2, sp:Ljavax/xml/parsers/SAXParser;
    invoke-virtual {v2}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v4

    .line 143
    .local v4, xr:Lorg/xml/sax/XMLReader;
    new-instance v0, Lcom/android/server/enterprise/TypefaceParser;

    invoke-direct {v0}, Lcom/android/server/enterprise/TypefaceParser;-><init>()V

    .line 145
    .local v0, fontParser:Lcom/android/server/enterprise/TypefaceParser;
    invoke-interface {v4, v0}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 147
    new-instance v5, Lorg/xml/sax/InputSource;

    invoke-direct {v5, p2}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    invoke-interface {v4, v5}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V

    .line 151
    invoke-virtual {v0}, Lcom/android/server/enterprise/TypefaceParser;->getParsedData()Lcom/android/server/enterprise/Typeface;

    move-result-object v1

    .line 155
    .local v1, newTypeface:Lcom/android/server/enterprise/Typeface;
    invoke-virtual {v1, p1}, Lcom/android/server/enterprise/Typeface;->setTypefaceFilename(Ljava/lang/String;)V

    .line 157
    invoke-virtual {v1, p3}, Lcom/android/server/enterprise/Typeface;->setFontPackageName(Ljava/lang/String;)V

    .line 160
    iget-object v5, p0, Lcom/android/server/enterprise/TypefaceFinder;->mTypefaces:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2b} :catch_2c

    .line 172
    .end local v0           #fontParser:Lcom/android/server/enterprise/TypefaceParser;
    .end local v1           #newTypeface:Lcom/android/server/enterprise/Typeface;
    .end local v2           #sp:Ljavax/xml/parsers/SAXParser;
    .end local v3           #spf:Ljavax/xml/parsers/SAXParserFactory;
    .end local v4           #xr:Lorg/xml/sax/XMLReader;
    :goto_2b
    return-void

    .line 164
    :catch_2c
    move-exception v5

    goto :goto_2b
.end method
