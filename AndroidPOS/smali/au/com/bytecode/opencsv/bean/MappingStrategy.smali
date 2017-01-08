.class public interface abstract Lau/com/bytecode/opencsv/bean/MappingStrategy;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract captureHeader(Lau/com/bytecode/opencsv/CSVReader;)V
.end method

.method public abstract createBean()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public abstract findDescriptor(I)Ljava/beans/PropertyDescriptor;
.end method
