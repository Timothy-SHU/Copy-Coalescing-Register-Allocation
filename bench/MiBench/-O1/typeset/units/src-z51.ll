; ModuleID = 'src/z51.c'
source_filename = "src/z51.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.back_end_rec = type { i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.word_type = type { [2 x %struct.LIST], %union.FIRST_UNION, %union.SECOND_UNION, %union.THIRD_UNION, [4 x i8] }
%struct.LIST = type { ptr, ptr }
%union.FIRST_UNION = type { %struct.FILE_POS }
%struct.FILE_POS = type { i8, i8, i16, i32 }
%union.SECOND_UNION = type { %struct.anon.1 }
%struct.anon.1 = type { i32 }
%union.THIRD_UNION = type { ptr, [8 x i8] }

@out_fp = internal unnamed_addr global ptr null, align 8
@prologue_done = internal unnamed_addr global i1 false, align 4
@.str = private unnamed_addr constant [20 x i8] c"assert failed in %s\00", align 1
@no_fpos = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [46 x i8] c"Plain_CoordTranslate: should never be called!\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"Plain_CoordScale: should never be called!\00", align 1
@.str.3 = private unnamed_addr constant [48 x i8] c"Plain_SaveGraphicState: should never be called!\00", align 1
@.str.4 = private unnamed_addr constant [51 x i8] c"Plain_RestoreGraphicState: should never be called!\00", align 1
@.str.5 = private unnamed_addr constant [50 x i8] c"Plain_PrintGraphicObject: should never be called!\00", align 1
@.str.6 = private unnamed_addr constant [50 x i8] c"Plain_DefineGraphicNames: should never be called!\00", align 1
@.str.7 = private unnamed_addr constant [55 x i8] c"Plain_SaveTranslateDefineSave: should never be called!\00", align 1
@.str.8 = private unnamed_addr constant [51 x i8] c"Plain_PrintGraphicInclude: should never be called!\00", align 1
@plain_back = internal global %struct.back_end_rec { i32 2, ptr @.str.9, i32 0, i32 0, i32 0, i32 0, i32 1, i32 0, i32 0, i32 0, ptr @Plain_PrintInitialize, ptr @Plain_PrintLength, ptr @Plain_PrintPageSetupForFont, ptr @Plain_PrintPageResourceForFont, ptr @Plain_PrintMapping, ptr @Plain_PrintBeforeFirstPage, ptr @Plain_PrintBetweenPages, ptr @Plain_PrintAfterLastPage, ptr @Plain_PrintWord, ptr @Plain_PrintPlainGraphic, ptr @Plain_PrintUnderline, ptr @Plain_CoordTranslate, ptr @Plain_CoordRotate, ptr @Plain_CoordScale, ptr @Plain_SaveGraphicState, ptr @Plain_RestoreGraphicState, ptr @Plain_PrintGraphicObject, ptr @Plain_DefineGraphicNames, ptr @Plain_SaveTranslateDefineSave, ptr @Plain_PrintGraphicInclude, ptr @Plain_LinkSource, ptr @Plain_LinkDest, ptr @Plain_LinkCheck }, align 8
@Plain_BackEnd = dso_local local_unnamed_addr global ptr @plain_back, align 8
@PlainCharWidth = dso_local local_unnamed_addr global i32 0, align 4
@PlainCharHeight = dso_local local_unnamed_addr global i32 0, align 4
@PlainFormFeed = dso_local local_unnamed_addr global i32 0, align 4
@.str.9 = private unnamed_addr constant [10 x i8] c"PlainText\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"%.2fs\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"%.2ff\00", align 1
@hsize = internal unnamed_addr global i32 0, align 4
@vsize = internal unnamed_addr global i32 0, align 4
@page = internal unnamed_addr global ptr null, align 8
@TotalWordCount = external local_unnamed_addr global i32, align 4
@.str.13 = private unnamed_addr constant [24 x i8] c"PrintWord:  h >= hsize!\00", align 1
@.str.15 = private unnamed_addr constant [24 x i8] c"PrintWord:  v >= vsize!\00", align 1
@.str.16 = private unnamed_addr constant [52 x i8] c"word %s deleted (internal error, off page at %d,%d)\00", align 1
@.str.17 = private unnamed_addr constant [43 x i8] c"left parameter of %s must be a simple word\00", align 1
@.str.18 = private unnamed_addr constant [14 x i8] c"@PlainGraphic\00", align 1
@.str.19 = private unnamed_addr constant [46 x i8] c"left parameter of %s must be a non-empty word\00", align 1
@.str.20 = private unnamed_addr constant [52 x i8] c"fill %s deleted (internal error, off page at %d,%d)\00", align 1
@.str.21 = private unnamed_addr constant [43 x i8] c"Plain_CoordRotate: should never be called!\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @Plain_PrintInitialize(ptr noundef %0) #0 {
  store ptr %0, ptr @out_fp, align 8, !tbaa !5
  store i1 false, ptr @prologue_done, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @Plain_CoordTranslate(i32 %0, i32 %1) #1 {
  %3 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %4 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %3, ptr noundef nonnull @.str.1) #11
  ret void
}

declare ptr @Error(i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @Plain_CoordScale(float %0, float %1) #1 {
  %3 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %4 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %3, ptr noundef nonnull @.str.2) #11
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @Plain_SaveGraphicState(ptr nocapture readnone %0) #1 {
  %2 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %3 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %2, ptr noundef nonnull @.str.3) #11
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @Plain_RestoreGraphicState() #1 {
  %1 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %2 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %1, ptr noundef nonnull @.str.4) #11
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @Plain_PrintGraphicObject(ptr nocapture readnone %0) #1 {
  %2 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %3 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %2, ptr noundef nonnull @.str.5) #11
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @Plain_DefineGraphicNames(ptr nocapture readnone %0) #1 {
  %2 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %3 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %2, ptr noundef nonnull @.str.6) #11
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @Plain_SaveTranslateDefineSave(ptr nocapture readnone %0, i32 %1, i32 %2) #1 {
  %4 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %5 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %4, ptr noundef nonnull @.str.7) #11
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @Plain_PrintGraphicInclude(ptr nocapture readnone %0, i32 %1, i32 %2) #1 {
  %4 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %5 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %4, ptr noundef nonnull @.str.8) #11
  ret void
}

; Function Attrs: nofree nounwind uwtable
define internal void @Plain_PrintLength(ptr nocapture noundef writeonly %0, i32 noundef %1, i32 noundef %2) #3 {
  %4 = icmp eq i32 %2, 0
  %5 = sitofp i32 %1 to float
  %6 = select i1 %4, ptr @.str.10, ptr @.str.11
  %7 = load i32, ptr @PlainCharWidth, align 4
  %8 = load i32, ptr @PlainCharHeight, align 4
  %9 = select i1 %4, i32 %7, i32 %8
  %10 = sitofp i32 %9 to float
  %11 = fdiv float %5, %10
  %12 = fpext float %11 to double
  %13 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) %6, double noundef %12) #11
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal void @Plain_PrintPageSetupForFont(ptr nocapture readnone %0, i32 %1, ptr nocapture readnone %2, ptr nocapture readnone %3) #4 {
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal void @Plain_PrintPageResourceForFont(ptr nocapture readnone %0, i32 %1) #4 {
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal void @Plain_PrintMapping(i32 %0) #4 {
  ret void
}

; Function Attrs: nofree nounwind memory(readwrite, argmem: none) uwtable
define internal void @Plain_PrintBeforeFirstPage(i32 noundef %0, i32 noundef %1, ptr nocapture readnone %2) #5 {
  %4 = add nsw i32 %0, -1
  %5 = load i32, ptr @PlainCharWidth, align 4, !tbaa !9
  %6 = sdiv i32 %4, %5
  %7 = add nsw i32 %6, 1
  store i32 %7, ptr @hsize, align 4, !tbaa !9
  %8 = add nsw i32 %1, -1
  %9 = load i32, ptr @PlainCharHeight, align 4, !tbaa !9
  %10 = sdiv i32 %8, %9
  %11 = add i32 %10, 1
  store i32 %11, ptr @vsize, align 4, !tbaa !9
  %12 = mul nsw i32 %11, %7
  %13 = sext i32 %12 to i64
  %14 = tail call noalias ptr @malloc(i64 noundef %13) #12
  store ptr %14, ptr @page, align 8, !tbaa !5
  %15 = or i32 %10, %6
  %16 = icmp sgt i32 %15, -1
  br i1 %16, label %17, label %83

17:                                               ; preds = %3
  %18 = zext nneg i32 %7 to i64
  %19 = zext i32 %11 to i64
  %20 = add nsw i64 %19, -1
  %21 = and i64 %19, 7
  %22 = icmp ult i64 %20, 7
  br i1 %22, label %70, label %23

23:                                               ; preds = %17
  %24 = and i64 %19, 4294967288
  br label %25

25:                                               ; preds = %25, %23
  %26 = phi i64 [ 0, %23 ], [ %67, %25 ]
  %27 = phi i64 [ 0, %23 ], [ %68, %25 ]
  %28 = trunc i64 %26 to i32
  %29 = mul i32 %7, %28
  %30 = zext i32 %29 to i64
  %31 = getelementptr i8, ptr %14, i64 %30
  tail call void @llvm.memset.p0.i64(ptr align 1 %31, i8 32, i64 %18, i1 false), !tbaa !11
  %32 = trunc i64 %26 to i32
  %33 = or disjoint i32 %32, 1
  %34 = mul i32 %7, %33
  %35 = zext i32 %34 to i64
  %36 = getelementptr i8, ptr %14, i64 %35
  tail call void @llvm.memset.p0.i64(ptr align 1 %36, i8 32, i64 %18, i1 false), !tbaa !11
  %37 = trunc i64 %26 to i32
  %38 = or disjoint i32 %37, 2
  %39 = mul i32 %7, %38
  %40 = zext i32 %39 to i64
  %41 = getelementptr i8, ptr %14, i64 %40
  tail call void @llvm.memset.p0.i64(ptr align 1 %41, i8 32, i64 %18, i1 false), !tbaa !11
  %42 = trunc i64 %26 to i32
  %43 = or disjoint i32 %42, 3
  %44 = mul i32 %7, %43
  %45 = zext i32 %44 to i64
  %46 = getelementptr i8, ptr %14, i64 %45
  tail call void @llvm.memset.p0.i64(ptr align 1 %46, i8 32, i64 %18, i1 false), !tbaa !11
  %47 = trunc i64 %26 to i32
  %48 = or disjoint i32 %47, 4
  %49 = mul i32 %7, %48
  %50 = zext i32 %49 to i64
  %51 = getelementptr i8, ptr %14, i64 %50
  tail call void @llvm.memset.p0.i64(ptr align 1 %51, i8 32, i64 %18, i1 false), !tbaa !11
  %52 = trunc i64 %26 to i32
  %53 = or disjoint i32 %52, 5
  %54 = mul i32 %7, %53
  %55 = zext i32 %54 to i64
  %56 = getelementptr i8, ptr %14, i64 %55
  tail call void @llvm.memset.p0.i64(ptr align 1 %56, i8 32, i64 %18, i1 false), !tbaa !11
  %57 = trunc i64 %26 to i32
  %58 = or disjoint i32 %57, 6
  %59 = mul i32 %7, %58
  %60 = zext i32 %59 to i64
  %61 = getelementptr i8, ptr %14, i64 %60
  tail call void @llvm.memset.p0.i64(ptr align 1 %61, i8 32, i64 %18, i1 false), !tbaa !11
  %62 = trunc i64 %26 to i32
  %63 = or disjoint i32 %62, 7
  %64 = mul i32 %7, %63
  %65 = zext i32 %64 to i64
  %66 = getelementptr i8, ptr %14, i64 %65
  tail call void @llvm.memset.p0.i64(ptr align 1 %66, i8 32, i64 %18, i1 false), !tbaa !11
  %67 = add nuw nsw i64 %26, 8
  %68 = add i64 %27, 8
  %69 = icmp eq i64 %68, %24
  br i1 %69, label %70, label %25

70:                                               ; preds = %25, %17
  %71 = phi i64 [ 0, %17 ], [ %67, %25 ]
  %72 = icmp eq i64 %21, 0
  br i1 %72, label %83, label %73

73:                                               ; preds = %70, %73
  %74 = phi i64 [ %80, %73 ], [ %71, %70 ]
  %75 = phi i64 [ %81, %73 ], [ 0, %70 ]
  %76 = trunc i64 %74 to i32
  %77 = mul i32 %7, %76
  %78 = zext i32 %77 to i64
  %79 = getelementptr i8, ptr %14, i64 %78
  tail call void @llvm.memset.p0.i64(ptr align 1 %79, i8 32, i64 %18, i1 false), !tbaa !11
  %80 = add nuw nsw i64 %74, 1
  %81 = add i64 %75, 1
  %82 = icmp eq i64 %81, %21
  br i1 %82, label %83, label %73, !llvm.loop !12

83:                                               ; preds = %70, %73, %3
  store i1 true, ptr @prologue_done, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @Plain_PrintBetweenPages(i32 noundef %0, i32 noundef %1, ptr nocapture readnone %2) #1 {
  %4 = load i32, ptr @vsize, align 4, !tbaa !9
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %6, label %44

6:                                                ; preds = %3, %40
  %7 = phi i32 [ %8, %40 ], [ %4, %3 ]
  %8 = add nsw i32 %7, -1
  %9 = load i32, ptr @hsize, align 4, !tbaa !9
  %10 = load ptr, ptr @page, align 8
  %11 = mul nsw i32 %9, %8
  %12 = sext i32 %9 to i64
  %13 = sext i32 %11 to i64
  %14 = getelementptr i8, ptr %10, i64 %13
  br label %15

15:                                               ; preds = %18, %6
  %16 = phi i64 [ %19, %18 ], [ %12, %6 ]
  %17 = icmp sgt i64 %16, 0
  br i1 %17, label %18, label %40

18:                                               ; preds = %15
  %19 = add nsw i64 %16, -1
  %20 = getelementptr i8, ptr %14, i64 %19
  %21 = load i8, ptr %20, align 1, !tbaa !11
  %22 = icmp eq i8 %21, 32
  br i1 %22, label %15, label %23

23:                                               ; preds = %18
  %24 = trunc i64 %16 to i32
  %25 = icmp sgt i32 %24, 0
  br i1 %25, label %26, label %40

26:                                               ; preds = %23, %26
  %27 = phi i32 [ %38, %26 ], [ 0, %23 ]
  %28 = load ptr, ptr @page, align 8, !tbaa !5
  %29 = load i32, ptr @hsize, align 4, !tbaa !9
  %30 = mul nsw i32 %29, %8
  %31 = add nsw i32 %30, %27
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i8, ptr %28, i64 %32
  %34 = load i8, ptr %33, align 1, !tbaa !11
  %35 = zext i8 %34 to i32
  %36 = load ptr, ptr @out_fp, align 8, !tbaa !5
  %37 = tail call i32 @putc(i32 noundef %35, ptr noundef %36)
  %38 = add nuw nsw i32 %27, 1
  %39 = icmp eq i32 %38, %24
  br i1 %39, label %40, label %26

40:                                               ; preds = %15, %26, %23
  %41 = load ptr, ptr @out_fp, align 8, !tbaa !5
  %42 = tail call i32 @putc(i32 noundef 10, ptr noundef %41)
  %43 = icmp sgt i32 %7, 1
  br i1 %43, label %6, label %44

44:                                               ; preds = %40, %3
  %45 = load i32, ptr @PlainFormFeed, align 4, !tbaa !9
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %50, label %47

47:                                               ; preds = %44
  %48 = load ptr, ptr @out_fp, align 8, !tbaa !5
  %49 = tail call i32 @putc(i32 noundef 12, ptr noundef %48)
  br label %50

50:                                               ; preds = %47, %44
  %51 = add nsw i32 %0, -1
  %52 = load i32, ptr @PlainCharWidth, align 4, !tbaa !9
  %53 = sdiv i32 %51, %52
  %54 = add nsw i32 %53, 1
  %55 = add nsw i32 %1, -1
  %56 = load i32, ptr @PlainCharHeight, align 4, !tbaa !9
  %57 = sdiv i32 %55, %56
  %58 = add nsw i32 %57, 1
  %59 = load i32, ptr @hsize, align 4, !tbaa !9
  %60 = icmp eq i32 %54, %59
  %61 = load i32, ptr @vsize, align 4
  %62 = icmp eq i32 %58, %61
  %63 = select i1 %60, i1 %62, i1 false
  br i1 %63, label %69, label %64

64:                                               ; preds = %50
  %65 = load ptr, ptr @page, align 8, !tbaa !5
  tail call void @free(ptr noundef %65) #11
  store i32 %54, ptr @hsize, align 4, !tbaa !9
  store i32 %58, ptr @vsize, align 4, !tbaa !9
  %66 = mul nsw i32 %58, %54
  %67 = sext i32 %66 to i64
  %68 = tail call noalias ptr @malloc(i64 noundef %67) #12
  store ptr %68, ptr @page, align 8, !tbaa !5
  br label %69

69:                                               ; preds = %50, %64
  %70 = icmp sgt i32 %57, -1
  br i1 %70, label %71, label %140

71:                                               ; preds = %69
  %72 = icmp sgt i32 %53, -1
  %73 = load ptr, ptr @page, align 8
  br i1 %72, label %74, label %140

74:                                               ; preds = %71
  %75 = zext nneg i32 %54 to i64
  %76 = zext nneg i32 %58 to i64
  %77 = add nsw i64 %76, -1
  %78 = and i64 %76, 7
  %79 = icmp ult i64 %77, 7
  br i1 %79, label %127, label %80

80:                                               ; preds = %74
  %81 = and i64 %76, 2147483640
  br label %82

82:                                               ; preds = %82, %80
  %83 = phi i64 [ 0, %80 ], [ %124, %82 ]
  %84 = phi i64 [ 0, %80 ], [ %125, %82 ]
  %85 = trunc i64 %83 to i32
  %86 = mul i32 %54, %85
  %87 = zext i32 %86 to i64
  %88 = getelementptr i8, ptr %73, i64 %87
  tail call void @llvm.memset.p0.i64(ptr align 1 %88, i8 32, i64 %75, i1 false), !tbaa !11
  %89 = trunc i64 %83 to i32
  %90 = or disjoint i32 %89, 1
  %91 = mul i32 %54, %90
  %92 = zext i32 %91 to i64
  %93 = getelementptr i8, ptr %73, i64 %92
  tail call void @llvm.memset.p0.i64(ptr align 1 %93, i8 32, i64 %75, i1 false), !tbaa !11
  %94 = trunc i64 %83 to i32
  %95 = or disjoint i32 %94, 2
  %96 = mul i32 %54, %95
  %97 = zext i32 %96 to i64
  %98 = getelementptr i8, ptr %73, i64 %97
  tail call void @llvm.memset.p0.i64(ptr align 1 %98, i8 32, i64 %75, i1 false), !tbaa !11
  %99 = trunc i64 %83 to i32
  %100 = or disjoint i32 %99, 3
  %101 = mul i32 %54, %100
  %102 = zext i32 %101 to i64
  %103 = getelementptr i8, ptr %73, i64 %102
  tail call void @llvm.memset.p0.i64(ptr align 1 %103, i8 32, i64 %75, i1 false), !tbaa !11
  %104 = trunc i64 %83 to i32
  %105 = or disjoint i32 %104, 4
  %106 = mul i32 %54, %105
  %107 = zext i32 %106 to i64
  %108 = getelementptr i8, ptr %73, i64 %107
  tail call void @llvm.memset.p0.i64(ptr align 1 %108, i8 32, i64 %75, i1 false), !tbaa !11
  %109 = trunc i64 %83 to i32
  %110 = or disjoint i32 %109, 5
  %111 = mul i32 %54, %110
  %112 = zext i32 %111 to i64
  %113 = getelementptr i8, ptr %73, i64 %112
  tail call void @llvm.memset.p0.i64(ptr align 1 %113, i8 32, i64 %75, i1 false), !tbaa !11
  %114 = trunc i64 %83 to i32
  %115 = or disjoint i32 %114, 6
  %116 = mul i32 %54, %115
  %117 = zext i32 %116 to i64
  %118 = getelementptr i8, ptr %73, i64 %117
  tail call void @llvm.memset.p0.i64(ptr align 1 %118, i8 32, i64 %75, i1 false), !tbaa !11
  %119 = trunc i64 %83 to i32
  %120 = or disjoint i32 %119, 7
  %121 = mul i32 %54, %120
  %122 = zext i32 %121 to i64
  %123 = getelementptr i8, ptr %73, i64 %122
  tail call void @llvm.memset.p0.i64(ptr align 1 %123, i8 32, i64 %75, i1 false), !tbaa !11
  %124 = add nuw nsw i64 %83, 8
  %125 = add i64 %84, 8
  %126 = icmp eq i64 %125, %81
  br i1 %126, label %127, label %82

127:                                              ; preds = %82, %74
  %128 = phi i64 [ 0, %74 ], [ %124, %82 ]
  %129 = icmp eq i64 %78, 0
  br i1 %129, label %140, label %130

130:                                              ; preds = %127, %130
  %131 = phi i64 [ %137, %130 ], [ %128, %127 ]
  %132 = phi i64 [ %138, %130 ], [ 0, %127 ]
  %133 = trunc i64 %131 to i32
  %134 = mul i32 %54, %133
  %135 = zext i32 %134 to i64
  %136 = getelementptr i8, ptr %73, i64 %135
  tail call void @llvm.memset.p0.i64(ptr align 1 %136, i8 32, i64 %75, i1 false), !tbaa !11
  %137 = add nuw nsw i64 %131, 1
  %138 = add i64 %132, 1
  %139 = icmp eq i64 %138, %78
  br i1 %139, label %140, label %130, !llvm.loop !14

140:                                              ; preds = %127, %130, %71, %69
  ret void
}

; Function Attrs: nofree nounwind uwtable
define internal void @Plain_PrintAfterLastPage() #3 {
  %1 = load i1, ptr @prologue_done, align 4
  %2 = load i32, ptr @vsize, align 4
  %3 = icmp sgt i32 %2, 0
  %4 = select i1 %1, i1 %3, i1 false
  br i1 %4, label %5, label %43

5:                                                ; preds = %0, %39
  %6 = phi i32 [ %7, %39 ], [ %2, %0 ]
  %7 = add nsw i32 %6, -1
  %8 = load i32, ptr @hsize, align 4, !tbaa !9
  %9 = load ptr, ptr @page, align 8
  %10 = mul nsw i32 %8, %7
  %11 = sext i32 %8 to i64
  %12 = sext i32 %10 to i64
  %13 = getelementptr i8, ptr %9, i64 %12
  br label %14

14:                                               ; preds = %17, %5
  %15 = phi i64 [ %18, %17 ], [ %11, %5 ]
  %16 = icmp sgt i64 %15, 0
  br i1 %16, label %17, label %39

17:                                               ; preds = %14
  %18 = add nsw i64 %15, -1
  %19 = getelementptr i8, ptr %13, i64 %18
  %20 = load i8, ptr %19, align 1, !tbaa !11
  %21 = icmp eq i8 %20, 32
  br i1 %21, label %14, label %22

22:                                               ; preds = %17
  %23 = trunc i64 %15 to i32
  %24 = icmp sgt i32 %23, 0
  br i1 %24, label %25, label %39

25:                                               ; preds = %22, %25
  %26 = phi i32 [ %37, %25 ], [ 0, %22 ]
  %27 = load ptr, ptr @page, align 8, !tbaa !5
  %28 = load i32, ptr @hsize, align 4, !tbaa !9
  %29 = mul nsw i32 %28, %7
  %30 = add nsw i32 %29, %26
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i8, ptr %27, i64 %31
  %33 = load i8, ptr %32, align 1, !tbaa !11
  %34 = zext i8 %33 to i32
  %35 = load ptr, ptr @out_fp, align 8, !tbaa !5
  %36 = tail call i32 @putc(i32 noundef %34, ptr noundef %35)
  %37 = add nuw nsw i32 %26, 1
  %38 = icmp eq i32 %37, %23
  br i1 %38, label %39, label %25

39:                                               ; preds = %14, %25, %22
  %40 = load ptr, ptr @out_fp, align 8, !tbaa !5
  %41 = tail call i32 @putc(i32 noundef 10, ptr noundef %40)
  %42 = icmp sgt i32 %6, 1
  br i1 %42, label %5, label %43

43:                                               ; preds = %39, %0
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @Plain_PrintWord(ptr noundef %0, i32 noundef %1, i32 noundef %2) #1 {
  %4 = load i32, ptr @TotalWordCount, align 4, !tbaa !9
  %5 = add nsw i32 %4, 1
  store i32 %5, ptr @TotalWordCount, align 4, !tbaa !9
  %6 = sitofp i32 %1 to float
  %7 = load i32, ptr @PlainCharWidth, align 4, !tbaa !9
  %8 = sitofp i32 %7 to float
  %9 = fdiv float %6, %8
  %10 = fpext float %9 to double
  %11 = fadd double %10, 5.000000e-01
  %12 = fptosi double %11 to i32
  %13 = sitofp i32 %2 to float
  %14 = load i32, ptr @PlainCharHeight, align 4, !tbaa !9
  %15 = sitofp i32 %14 to float
  %16 = fdiv float %13, %15
  %17 = fptosi float %16 to i32
  %18 = icmp sgt i32 %12, -1
  br i1 %18, label %19, label %63

19:                                               ; preds = %3
  %20 = zext nneg i32 %12 to i64
  %21 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 4
  %22 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %21) #13
  %23 = add i64 %22, %20
  %24 = load i32, ptr @hsize, align 4, !tbaa !9
  %25 = sext i32 %24 to i64
  %26 = icmp ult i64 %23, %25
  %27 = icmp sgt i32 %17, -1
  %28 = select i1 %26, i1 %27, i1 false
  %29 = load i32, ptr @vsize, align 4
  %30 = icmp sgt i32 %29, %17
  %31 = select i1 %28, i1 %30, i1 false
  br i1 %31, label %32, label %63

32:                                               ; preds = %19
  %33 = icmp sgt i32 %24, %12
  br i1 %33, label %38, label %34

34:                                               ; preds = %32
  %35 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %36 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %35, ptr noundef nonnull @.str.13) #11
  %37 = load i32, ptr @vsize, align 4, !tbaa !9
  br label %38

38:                                               ; preds = %32, %34
  %39 = phi i32 [ %29, %32 ], [ %37, %34 ]
  %40 = icmp sgt i32 %39, %17
  br i1 %40, label %44, label %41

41:                                               ; preds = %38
  %42 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %43 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %42, ptr noundef nonnull @.str.15) #11
  br label %44

44:                                               ; preds = %41, %38
  %45 = load i8, ptr %21, align 1, !tbaa !11
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %67, label %47

47:                                               ; preds = %44
  %48 = load ptr, ptr @page, align 8, !tbaa !5
  %49 = load i32, ptr @hsize, align 4, !tbaa !9
  %50 = mul nsw i32 %49, %17
  %51 = add nsw i32 %50, %12
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i8, ptr %48, i64 %52
  br label %54

54:                                               ; preds = %47, %54
  %55 = phi i64 [ 0, %47 ], [ %59, %54 ]
  %56 = phi i8 [ %45, %47 ], [ %61, %54 ]
  %57 = phi ptr [ %53, %47 ], [ %58, %54 ]
  %58 = getelementptr inbounds i8, ptr %57, i64 1
  store i8 %56, ptr %57, align 1, !tbaa !11
  %59 = add nuw nsw i64 %55, 1
  %60 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 4, i64 %59
  %61 = load i8, ptr %60, align 1, !tbaa !11
  %62 = icmp eq i8 %61, 0
  br i1 %62, label %67, label %54

63:                                               ; preds = %19, %3
  %64 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 1
  %65 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 4
  %66 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 51, i32 noundef 1, ptr noundef nonnull @.str.16, i32 noundef 2, ptr noundef nonnull %64, ptr noundef nonnull %65, i32 noundef %12, i32 noundef %17) #11
  br label %67

67:                                               ; preds = %54, %44, %63
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @Plain_PrintPlainGraphic(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3) #1 {
  %5 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 1
  %6 = load i8, ptr %5, align 8, !tbaa !11
  %7 = add i8 %6, -11
  %8 = icmp ult i8 %7, 2
  br i1 %8, label %11, label %9

9:                                                ; preds = %4
  %10 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 51, i32 noundef 2, ptr noundef nonnull @.str.17, i32 noundef 2, ptr noundef nonnull %5, ptr noundef nonnull @.str.18) #11
  br label %121

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 4
  %13 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %12) #13
  %14 = trunc i64 %13 to i32
  %15 = icmp eq i64 %13, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %11
  %17 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 51, i32 noundef 3, ptr noundef nonnull @.str.19, i32 noundef 2, ptr noundef nonnull %5, ptr noundef nonnull @.str.18) #11
  br label %121

18:                                               ; preds = %11
  %19 = sitofp i32 %1 to float
  %20 = load i32, ptr @PlainCharWidth, align 4, !tbaa !9
  %21 = sitofp i32 %20 to float
  %22 = fdiv float %19, %21
  %23 = fpext float %22 to double
  %24 = fadd double %23, 5.000000e-01
  %25 = fptosi double %24 to i32
  %26 = sitofp i32 %2 to float
  %27 = load i32, ptr @PlainCharHeight, align 4, !tbaa !9
  %28 = sitofp i32 %27 to float
  %29 = getelementptr inbounds %struct.word_type, ptr %3, i64 0, i32 3
  %30 = load i32, ptr %29, align 8, !tbaa !11
  %31 = getelementptr inbounds %struct.word_type, ptr %3, i64 0, i32 3, i32 1
  %32 = load i32, ptr %31, align 8, !tbaa !11
  %33 = add nsw i32 %32, %30
  %34 = sitofp i32 %33 to float
  %35 = fadd float %19, %34
  %36 = fdiv float %35, %21
  %37 = fpext float %36 to double
  %38 = fadd double %37, 5.000000e-01
  %39 = fptosi double %38 to i32
  %40 = getelementptr inbounds i8, ptr %3, i64 52
  %41 = load i32, ptr %40, align 4, !tbaa !11
  %42 = getelementptr inbounds %struct.word_type, ptr %3, i64 0, i32 3, i32 1, i64 4
  %43 = load i32, ptr %42, align 4, !tbaa !11
  %44 = add nsw i32 %43, %41
  %45 = sitofp i32 %44 to float
  %46 = fsub float %26, %45
  %47 = fdiv float %46, %28
  %48 = fptosi float %47 to i32
  tail call void @SetLengthDim(i32 noundef 0) #11
  tail call void @SetLengthDim(i32 noundef 1) #11
  %49 = icmp sgt i32 %25, -1
  br i1 %49, label %50, label %119

50:                                               ; preds = %18
  %51 = fdiv float %26, %28
  %52 = fptosi float %51 to i32
  %53 = load i32, ptr @hsize, align 4, !tbaa !9
  %54 = icmp sgt i32 %53, %39
  %55 = icmp sgt i32 %52, -1
  %56 = select i1 %54, i1 %55, i1 false
  %57 = load i32, ptr @vsize, align 4
  %58 = icmp sgt i32 %57, %48
  %59 = select i1 %56, i1 %58, i1 false
  br i1 %59, label %60, label %119

60:                                               ; preds = %50
  %61 = icmp sgt i32 %52, %48
  br i1 %61, label %62, label %121

62:                                               ; preds = %60
  %63 = icmp slt i32 %25, %39
  %64 = load ptr, ptr @page, align 8
  br i1 %63, label %65, label %121

65:                                               ; preds = %62
  %66 = zext nneg i32 %25 to i64
  %67 = zext nneg i32 %52 to i64
  %68 = sext i32 %48 to i64
  %69 = sext i32 %53 to i64
  %70 = sext i32 %39 to i64
  %71 = sub nsw i64 %70, %66
  %72 = and i64 %71, 1
  %73 = icmp eq i64 %72, 0
  %74 = add nuw nsw i64 %66, 1
  %75 = add nsw i64 %70, -1
  %76 = icmp eq i64 %75, %66
  br label %77

77:                                               ; preds = %65, %116
  %78 = phi i64 [ %67, %65 ], [ %80, %116 ]
  %79 = phi i32 [ 0, %65 ], [ %117, %116 ]
  %80 = add nsw i64 %78, -1
  %81 = mul nsw i64 %80, %69
  %82 = getelementptr i8, ptr %64, i64 %81
  br i1 %73, label %91, label %83

83:                                               ; preds = %77
  %84 = icmp eq i32 %79, %14
  %85 = select i1 %84, i32 0, i32 %79
  %86 = add nsw i32 %85, 1
  %87 = sext i32 %85 to i64
  %88 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 4, i64 %87
  %89 = load i8, ptr %88, align 1, !tbaa !11
  %90 = getelementptr i8, ptr %82, i64 %66
  store i8 %89, ptr %90, align 1, !tbaa !11
  br label %91

91:                                               ; preds = %83, %77
  %92 = phi i32 [ undef, %77 ], [ %86, %83 ]
  %93 = phi i64 [ %66, %77 ], [ %74, %83 ]
  %94 = phi i32 [ %79, %77 ], [ %86, %83 ]
  br i1 %76, label %116, label %95

95:                                               ; preds = %91
  %96 = getelementptr i8, ptr %82, i64 1
  br label %97

97:                                               ; preds = %97, %95
  %98 = phi i64 [ %93, %95 ], [ %114, %97 ]
  %99 = phi i32 [ %94, %95 ], [ %109, %97 ]
  %100 = icmp eq i32 %99, %14
  %101 = select i1 %100, i32 0, i32 %99
  %102 = add nsw i32 %101, 1
  %103 = sext i32 %101 to i64
  %104 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 4, i64 %103
  %105 = load i8, ptr %104, align 1, !tbaa !11
  %106 = getelementptr i8, ptr %82, i64 %98
  store i8 %105, ptr %106, align 1, !tbaa !11
  %107 = icmp eq i32 %102, %14
  %108 = select i1 %107, i32 0, i32 %102
  %109 = add nsw i32 %108, 1
  %110 = sext i32 %108 to i64
  %111 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 4, i64 %110
  %112 = load i8, ptr %111, align 1, !tbaa !11
  %113 = getelementptr i8, ptr %96, i64 %98
  store i8 %112, ptr %113, align 1, !tbaa !11
  %114 = add nuw nsw i64 %98, 2
  %115 = icmp eq i64 %114, %70
  br i1 %115, label %116, label %97

116:                                              ; preds = %97, %91
  %117 = phi i32 [ %92, %91 ], [ %109, %97 ]
  %118 = icmp sgt i64 %80, %68
  br i1 %118, label %77, label %121

119:                                              ; preds = %50, %18
  %120 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 51, i32 noundef 4, ptr noundef nonnull @.str.20, i32 noundef 2, ptr noundef nonnull %5, ptr noundef nonnull %12, i32 noundef undef, i32 noundef undef) #11
  br label %121

121:                                              ; preds = %116, %62, %60, %119, %16, %9
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal void @Plain_PrintUnderline(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4) #4 {
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @Plain_CoordRotate(i32 %0) #1 {
  %2 = load ptr, ptr @no_fpos, align 8, !tbaa !5
  %3 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %2, ptr noundef nonnull @.str.21) #11
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal void @Plain_LinkSource(ptr nocapture readnone %0, i32 %1, i32 %2, i32 %3, i32 %4) #4 {
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal void @Plain_LinkDest(ptr nocapture readnone %0, i32 %1, i32 %2, i32 %3, i32 %4) #4 {
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare noundef i32 @putc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #9

declare void @SetLengthDim(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal void @Plain_LinkCheck() #4 {
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #10

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind memory(readwrite, argmem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #11 = { nounwind }
attributes #12 = { nounwind allocsize(0) }
attributes #13 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"int", !7, i64 0}
!11 = !{!7, !7, i64 0}
!12 = distinct !{!12, !13}
!13 = !{!"llvm.loop.unroll.disable"}
!14 = distinct !{!14, !13}
