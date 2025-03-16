; ModuleID = 'src/tif_predict.c'
source_filename = "src/tif_predict.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.TIFFFieldInfo = type { i32, i16, i16, i32, i16, i8, i8, ptr }
%struct.tiff = type { ptr, i32, i32, i32, i32, i32, %struct.TIFFDirectory, %struct.TIFFHeader, ptr, ptr, ptr, i32, i16, i32, i32, i32, i16, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr }
%struct.TIFFDirectory = type { [3 x i64], i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i16, i16, double, double, float, float, i16, i16, float, float, [2 x i16], [3 x ptr], [2 x i16], i16, ptr, double, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, i16, ptr, ptr, [2 x i16], i16, ptr, ptr, ptr, [3 x ptr], i16, i16, [2 x i16], i32, ptr, ptr, i32, ptr, i32, ptr, i32, ptr, i32, i32, ptr, ptr, float, ptr, ptr }
%struct.TIFFHeader = type { i16, i16, i32 }
%struct.TIFFPredictorState = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.__va_list_tag = type { i32, i32, ptr, ptr }

@predictFieldInfo = internal constant [1 x %struct.TIFFFieldInfo] [%struct.TIFFFieldInfo { i32 317, i16 1, i16 1, i32 3, i16 62, i8 0, i8 0, ptr @.str }], align 16
@.str = private unnamed_addr constant [10 x i8] c"Predictor\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"  Predictor: \00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"none \00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"horizontal differencing \00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"%u (0x%x)\0A\00", align 1
@.str.5 = private unnamed_addr constant [35 x i8] c"\22Predictor\22 value %d not supported\00", align 1
@.str.6 = private unnamed_addr constant [70 x i8] c"Horizontal differencing \22Predictor\22 not supported with %d-bit samples\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"sp != NULL\00", align 1
@.str.8 = private unnamed_addr constant [18 x i8] c"src/tif_predict.c\00", align 1
@__PRETTY_FUNCTION__.PredictorDecodeRow = private unnamed_addr constant [61 x i8] c"int PredictorDecodeRow(TIFF *, tidata_t, tsize_t, tsample_t)\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"sp->coderow != NULL\00", align 1
@.str.10 = private unnamed_addr constant [18 x i8] c"sp->pfunc != NULL\00", align 1
@__PRETTY_FUNCTION__.PredictorDecodeTile = private unnamed_addr constant [62 x i8] c"int PredictorDecodeTile(TIFF *, tidata_t, tsize_t, tsample_t)\00", align 1
@.str.11 = private unnamed_addr constant [21 x i8] c"sp->codetile != NULL\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"rowsize > 0\00", align 1
@__PRETTY_FUNCTION__.PredictorEncodeRow = private unnamed_addr constant [61 x i8] c"int PredictorEncodeRow(TIFF *, tidata_t, tsize_t, tsample_t)\00", align 1
@__PRETTY_FUNCTION__.PredictorEncodeTile = private unnamed_addr constant [62 x i8] c"int PredictorEncodeTile(TIFF *, tidata_t, tsize_t, tsample_t)\00", align 1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @TIFFPredictorInit(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 37
  %3 = load ptr, ptr %2, align 8, !tbaa !5
  tail call void @_TIFFMergeFieldInfo(ptr noundef %0, ptr noundef nonnull @predictFieldInfo, i32 noundef 1) #6
  %4 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 58
  %5 = load ptr, ptr %4, align 8, !tbaa !16
  %6 = getelementptr inbounds %struct.TIFFPredictorState, ptr %3, i64 0, i32 7
  store ptr %5, ptr %6, align 8, !tbaa !17
  store ptr @PredictorVGetField, ptr %4, align 8, !tbaa !16
  %7 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 57
  %8 = load ptr, ptr %7, align 8, !tbaa !19
  %9 = getelementptr inbounds %struct.TIFFPredictorState, ptr %3, i64 0, i32 8
  store ptr %8, ptr %9, align 8, !tbaa !20
  store ptr @PredictorVSetField, ptr %7, align 8, !tbaa !19
  %10 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 59
  %11 = load ptr, ptr %10, align 8, !tbaa !21
  %12 = getelementptr inbounds %struct.TIFFPredictorState, ptr %3, i64 0, i32 9
  store ptr %11, ptr %12, align 8, !tbaa !22
  store ptr @PredictorPrintDir, ptr %10, align 8, !tbaa !21
  %13 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 21
  %14 = load ptr, ptr %13, align 8, !tbaa !23
  %15 = getelementptr inbounds %struct.TIFFPredictorState, ptr %3, i64 0, i32 10
  store ptr %14, ptr %15, align 8, !tbaa !24
  store ptr @PredictorSetupDecode, ptr %13, align 8, !tbaa !23
  %16 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 23
  %17 = load ptr, ptr %16, align 8, !tbaa !25
  %18 = getelementptr inbounds %struct.TIFFPredictorState, ptr %3, i64 0, i32 11
  store ptr %17, ptr %18, align 8, !tbaa !26
  store ptr @PredictorSetupEncode, ptr %16, align 8, !tbaa !25
  store i32 1, ptr %3, align 8, !tbaa !27
  %19 = getelementptr inbounds %struct.TIFFPredictorState, ptr %3, i64 0, i32 3
  store ptr null, ptr %19, align 8, !tbaa !28
  ret i32 1
}

declare void @_TIFFMergeFieldInfo(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal i32 @PredictorVGetField(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 37
  %5 = load ptr, ptr %4, align 8, !tbaa !5
  %6 = icmp eq i32 %1, 317
  br i1 %6, label %7, label %25

7:                                                ; preds = %3
  %8 = load i32, ptr %5, align 8, !tbaa !27
  %9 = trunc i32 %8 to i16
  %10 = load i32, ptr %2, align 8
  %11 = icmp ult i32 %10, 41
  br i1 %11, label %12, label %18

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8
  %15 = zext nneg i32 %10 to i64
  %16 = getelementptr i8, ptr %14, i64 %15
  %17 = add nuw nsw i32 %10, 8
  store i32 %17, ptr %2, align 8
  br label %22

18:                                               ; preds = %7
  %19 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8
  %21 = getelementptr i8, ptr %20, i64 8
  store ptr %21, ptr %19, align 8
  br label %22

22:                                               ; preds = %18, %12
  %23 = phi ptr [ %16, %12 ], [ %20, %18 ]
  %24 = load ptr, ptr %23, align 8
  store i16 %9, ptr %24, align 2, !tbaa !29
  br label %29

25:                                               ; preds = %3
  %26 = getelementptr inbounds %struct.TIFFPredictorState, ptr %5, i64 0, i32 7
  %27 = load ptr, ptr %26, align 8, !tbaa !17
  %28 = tail call i32 %27(ptr noundef %0, i32 noundef %1, ptr noundef %2) #6
  br label %29

29:                                               ; preds = %22, %25
  %30 = phi i32 [ 1, %22 ], [ %28, %25 ]
  ret i32 %30
}

; Function Attrs: nounwind uwtable
define internal i32 @PredictorVSetField(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 37
  %5 = load ptr, ptr %4, align 8, !tbaa !5
  %6 = icmp eq i32 %1, 317
  br i1 %6, label %7, label %30

7:                                                ; preds = %3
  %8 = load i32, ptr %2, align 8
  %9 = icmp ult i32 %8, 41
  br i1 %9, label %10, label %16

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8
  %13 = zext nneg i32 %8 to i64
  %14 = getelementptr i8, ptr %12, i64 %13
  %15 = add nuw nsw i32 %8, 8
  store i32 %15, ptr %2, align 8
  br label %20

16:                                               ; preds = %7
  %17 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8
  %19 = getelementptr i8, ptr %18, i64 8
  store ptr %19, ptr %17, align 8
  br label %20

20:                                               ; preds = %16, %10
  %21 = phi ptr [ %14, %10 ], [ %18, %16 ]
  %22 = load i32, ptr %21, align 4
  %23 = and i32 %22, 65535
  store i32 %23, ptr %5, align 8, !tbaa !27
  %24 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 0, i64 1
  %25 = load i64, ptr %24, align 8, !tbaa !30
  %26 = or i64 %25, 1073741824
  store i64 %26, ptr %24, align 8, !tbaa !30
  %27 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 3
  %28 = load i32, ptr %27, align 8, !tbaa !32
  %29 = or i32 %28, 8
  store i32 %29, ptr %27, align 8, !tbaa !32
  br label %34

30:                                               ; preds = %3
  %31 = getelementptr inbounds %struct.TIFFPredictorState, ptr %5, i64 0, i32 8
  %32 = load ptr, ptr %31, align 8, !tbaa !20
  %33 = tail call i32 %32(ptr noundef %0, i32 noundef %1, ptr noundef %2) #6
  br label %34

34:                                               ; preds = %20, %30
  %35 = phi i32 [ 1, %20 ], [ %33, %30 ]
  ret i32 %35
}

; Function Attrs: nounwind uwtable
define internal void @PredictorPrintDir(ptr noundef %0, ptr noundef %1, i64 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 37
  %5 = load ptr, ptr %4, align 8, !tbaa !5
  %6 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 0, i64 1
  %7 = load i64, ptr %6, align 8, !tbaa !30
  %8 = and i64 %7, 1073741824
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %20, label %10

10:                                               ; preds = %3
  %11 = tail call i64 @fwrite(ptr nonnull @.str.1, i64 13, i64 1, ptr %1)
  %12 = load i32, ptr %5, align 8, !tbaa !27
  switch i32 %12, label %17 [
    i32 1, label %13
    i32 2, label %15
  ]

13:                                               ; preds = %10
  %14 = tail call i64 @fwrite(ptr nonnull @.str.2, i64 5, i64 1, ptr %1)
  br label %17

15:                                               ; preds = %10
  %16 = tail call i64 @fwrite(ptr nonnull @.str.3, i64 24, i64 1, ptr %1)
  br label %17

17:                                               ; preds = %10, %15, %13
  %18 = load i32, ptr %5, align 8, !tbaa !27
  %19 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.4, i32 noundef %18, i32 noundef %18)
  br label %20

20:                                               ; preds = %17, %3
  %21 = getelementptr inbounds %struct.TIFFPredictorState, ptr %5, i64 0, i32 9
  %22 = load ptr, ptr %21, align 8, !tbaa !22
  %23 = icmp eq ptr %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %20
  tail call void %22(ptr noundef %0, ptr noundef %1, i64 noundef %2) #6
  br label %25

25:                                               ; preds = %24, %20
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @PredictorSetupDecode(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 37
  %3 = load ptr, ptr %2, align 8, !tbaa !5
  %4 = getelementptr inbounds %struct.TIFFPredictorState, ptr %3, i64 0, i32 10
  %5 = load ptr, ptr %4, align 8, !tbaa !24
  %6 = tail call i32 %5(ptr noundef %0) #6
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %41, label %8

8:                                                ; preds = %1
  %9 = tail call fastcc i32 @PredictorSetup(ptr noundef %0), !range !33
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %41, label %11

11:                                               ; preds = %8
  %12 = load i32, ptr %3, align 8, !tbaa !27
  %13 = icmp eq i32 %12, 2
  br i1 %13, label %14, label %41

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 8
  %16 = load i16, ptr %15, align 4, !tbaa !34
  switch i16 %16, label %21 [
    i16 8, label %18
    i16 16, label %17
  ]

17:                                               ; preds = %14
  br label %18

18:                                               ; preds = %14, %17
  %19 = phi ptr [ @horAcc16, %17 ], [ @horAcc8, %14 ]
  %20 = getelementptr inbounds %struct.TIFFPredictorState, ptr %3, i64 0, i32 3
  store ptr %19, ptr %20, align 8, !tbaa !28
  br label %21

21:                                               ; preds = %18, %14
  %22 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 26
  %23 = load ptr, ptr %22, align 8, !tbaa !35
  %24 = getelementptr inbounds %struct.TIFFPredictorState, ptr %3, i64 0, i32 4
  store ptr %23, ptr %24, align 8, !tbaa !36
  store ptr @PredictorDecodeRow, ptr %22, align 8, !tbaa !35
  %25 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 28
  %26 = load ptr, ptr %25, align 8, !tbaa !37
  %27 = getelementptr inbounds %struct.TIFFPredictorState, ptr %3, i64 0, i32 5
  store ptr %26, ptr %27, align 8, !tbaa !38
  store ptr @PredictorDecodeTile, ptr %25, align 8, !tbaa !37
  %28 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 30
  %29 = load ptr, ptr %28, align 8, !tbaa !39
  %30 = getelementptr inbounds %struct.TIFFPredictorState, ptr %3, i64 0, i32 6
  store ptr %29, ptr %30, align 8, !tbaa !40
  store ptr @PredictorDecodeTile, ptr %28, align 8, !tbaa !39
  %31 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 3
  %32 = load i32, ptr %31, align 8, !tbaa !32
  %33 = and i32 %32, 128
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %41, label %35

35:                                               ; preds = %21
  %36 = getelementptr inbounds %struct.TIFFPredictorState, ptr %3, i64 0, i32 3
  %37 = load ptr, ptr %36, align 8, !tbaa !28
  %38 = icmp eq ptr %37, @horAcc16
  br i1 %38, label %39, label %41

39:                                               ; preds = %35
  store ptr @swabHorAcc16, ptr %36, align 8, !tbaa !28
  %40 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 54
  store ptr @_TIFFNoPostDecode, ptr %40, align 8, !tbaa !41
  br label %41

41:                                               ; preds = %11, %35, %39, %21, %1, %8
  %42 = phi i32 [ 0, %8 ], [ 0, %1 ], [ 1, %21 ], [ 1, %39 ], [ 1, %35 ], [ 1, %11 ]
  ret i32 %42
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @PredictorSetupEncode(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 37
  %3 = load ptr, ptr %2, align 8, !tbaa !5
  %4 = getelementptr inbounds %struct.TIFFPredictorState, ptr %3, i64 0, i32 11
  %5 = load ptr, ptr %4, align 8, !tbaa !26
  %6 = tail call i32 %5(ptr noundef %0) #6
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %31, label %8

8:                                                ; preds = %1
  %9 = tail call fastcc i32 @PredictorSetup(ptr noundef %0), !range !33
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %31, label %11

11:                                               ; preds = %8
  %12 = load i32, ptr %3, align 8, !tbaa !27
  %13 = icmp eq i32 %12, 2
  br i1 %13, label %14, label %31

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 8
  %16 = load i16, ptr %15, align 4, !tbaa !34
  switch i16 %16, label %21 [
    i16 8, label %18
    i16 16, label %17
  ]

17:                                               ; preds = %14
  br label %18

18:                                               ; preds = %14, %17
  %19 = phi ptr [ @horDiff16, %17 ], [ @horDiff8, %14 ]
  %20 = getelementptr inbounds %struct.TIFFPredictorState, ptr %3, i64 0, i32 3
  store ptr %19, ptr %20, align 8, !tbaa !28
  br label %21

21:                                               ; preds = %18, %14
  %22 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 27
  %23 = load ptr, ptr %22, align 8, !tbaa !42
  %24 = getelementptr inbounds %struct.TIFFPredictorState, ptr %3, i64 0, i32 4
  store ptr %23, ptr %24, align 8, !tbaa !36
  store ptr @PredictorEncodeRow, ptr %22, align 8, !tbaa !42
  %25 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 29
  %26 = load ptr, ptr %25, align 8, !tbaa !43
  %27 = getelementptr inbounds %struct.TIFFPredictorState, ptr %3, i64 0, i32 5
  store ptr %26, ptr %27, align 8, !tbaa !38
  store ptr @PredictorEncodeTile, ptr %25, align 8, !tbaa !43
  %28 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 31
  %29 = load ptr, ptr %28, align 8, !tbaa !44
  %30 = getelementptr inbounds %struct.TIFFPredictorState, ptr %3, i64 0, i32 6
  store ptr %29, ptr %30, align 8, !tbaa !40
  store ptr @PredictorEncodeTile, ptr %28, align 8, !tbaa !44
  br label %31

31:                                               ; preds = %11, %21, %1, %8
  %32 = phi i32 [ 0, %8 ], [ 0, %1 ], [ 1, %21 ], [ 1, %11 ]
  ret i32 %32
}

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc noundef i32 @PredictorSetup(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 37
  %3 = load ptr, ptr %2, align 8, !tbaa !5
  %4 = load i32, ptr %3, align 8, !tbaa !27
  switch i32 %4, label %5 [
    i32 1, label %33
    i32 2, label %7
  ]

5:                                                ; preds = %1
  %6 = load ptr, ptr %0, align 8, !tbaa !45
  tail call void (ptr, ptr, ...) @TIFFError(ptr noundef %6, ptr noundef nonnull @.str.5, i32 noundef %4) #6
  br label %33

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 8
  %9 = load i16, ptr %8, align 4, !tbaa !34
  switch i16 %9, label %10 [
    i16 8, label %13
    i16 16, label %13
  ]

10:                                               ; preds = %7
  %11 = zext i16 %9 to i32
  %12 = load ptr, ptr %0, align 8, !tbaa !45
  tail call void (ptr, ptr, ...) @TIFFError(ptr noundef %12, ptr noundef nonnull @.str.6, i32 noundef %11) #6
  br label %33

13:                                               ; preds = %7, %7
  %14 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 24
  %15 = load i16, ptr %14, align 2, !tbaa !46
  %16 = icmp eq i16 %15, 1
  br i1 %16, label %17, label %21

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 15
  %19 = load i16, ptr %18, align 2, !tbaa !47
  %20 = zext i16 %19 to i32
  br label %21

21:                                               ; preds = %13, %17
  %22 = phi i32 [ %20, %17 ], [ 1, %13 ]
  %23 = getelementptr inbounds %struct.TIFFPredictorState, ptr %3, i64 0, i32 1
  store i32 %22, ptr %23, align 4, !tbaa !48
  %24 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 3
  %25 = load i32, ptr %24, align 8, !tbaa !32
  %26 = and i32 %25, 1024
  %27 = icmp eq i32 %26, 0
  %28 = getelementptr inbounds %struct.TIFFPredictorState, ptr %3, i64 0, i32 2
  br i1 %27, label %31, label %29

29:                                               ; preds = %21
  %30 = tail call i32 @TIFFTileRowSize(ptr noundef %0) #6
  store i32 %30, ptr %28, align 8, !tbaa !49
  br label %33

31:                                               ; preds = %21
  %32 = tail call i32 @TIFFScanlineSize(ptr noundef %0) #6
  store i32 %32, ptr %28, align 8, !tbaa !49
  br label %33

33:                                               ; preds = %29, %31, %1, %10, %5
  %34 = phi i32 [ 0, %5 ], [ 0, %10 ], [ %4, %1 ], [ 1, %31 ], [ 1, %29 ]
  ret i32 %34
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal void @horAcc8(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, i32 noundef %2) #3 {
  %4 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 37
  %5 = load ptr, ptr %4, align 8, !tbaa !5
  %6 = getelementptr inbounds %struct.TIFFPredictorState, ptr %5, i64 0, i32 1
  %7 = load i32, ptr %6, align 4, !tbaa !48
  %8 = icmp slt i32 %7, %2
  br i1 %8, label %9, label %135

9:                                                ; preds = %3
  %10 = sub nsw i32 %2, %7
  switch i32 %7, label %11 [
    i32 3, label %18
    i32 4, label %50
  ]

11:                                               ; preds = %9
  %12 = add nsw i32 %7, -4
  %13 = icmp sgt i32 %7, 4
  %14 = sext i32 %7 to i64
  %15 = sext i32 %7 to i64
  %16 = sext i32 %7 to i64
  %17 = sext i32 %7 to i64
  br label %91

18:                                               ; preds = %9
  %19 = load i8, ptr %1, align 1, !tbaa !50
  %20 = zext i8 %19 to i32
  %21 = getelementptr inbounds i8, ptr %1, i64 1
  %22 = load i8, ptr %21, align 1, !tbaa !50
  %23 = zext i8 %22 to i32
  %24 = getelementptr inbounds i8, ptr %1, i64 2
  %25 = load i8, ptr %24, align 1, !tbaa !50
  %26 = zext i8 %25 to i32
  br label %27

27:                                               ; preds = %27, %18
  %28 = phi i32 [ %10, %18 ], [ %33, %27 ]
  %29 = phi ptr [ %1, %18 ], [ %34, %27 ]
  %30 = phi i32 [ %20, %18 ], [ %37, %27 ]
  %31 = phi i32 [ %23, %18 ], [ %42, %27 ]
  %32 = phi i32 [ %26, %18 ], [ %47, %27 ]
  %33 = add nsw i32 %28, -3
  %34 = getelementptr inbounds i8, ptr %29, i64 3
  %35 = load i8, ptr %34, align 1, !tbaa !50
  %36 = zext i8 %35 to i32
  %37 = add i32 %30, %36
  %38 = trunc i32 %37 to i8
  store i8 %38, ptr %34, align 1, !tbaa !50
  %39 = getelementptr inbounds i8, ptr %29, i64 4
  %40 = load i8, ptr %39, align 1, !tbaa !50
  %41 = zext i8 %40 to i32
  %42 = add i32 %31, %41
  %43 = trunc i32 %42 to i8
  store i8 %43, ptr %39, align 1, !tbaa !50
  %44 = getelementptr inbounds i8, ptr %29, i64 5
  %45 = load i8, ptr %44, align 1, !tbaa !50
  %46 = zext i8 %45 to i32
  %47 = add i32 %32, %46
  %48 = trunc i32 %47 to i8
  store i8 %48, ptr %44, align 1, !tbaa !50
  %49 = icmp sgt i32 %28, 3
  br i1 %49, label %27, label %135, !llvm.loop !51

50:                                               ; preds = %9
  %51 = load i8, ptr %1, align 1, !tbaa !50
  %52 = zext i8 %51 to i32
  %53 = getelementptr inbounds i8, ptr %1, i64 1
  %54 = load i8, ptr %53, align 1, !tbaa !50
  %55 = zext i8 %54 to i32
  %56 = getelementptr inbounds i8, ptr %1, i64 2
  %57 = load i8, ptr %56, align 1, !tbaa !50
  %58 = zext i8 %57 to i32
  %59 = getelementptr inbounds i8, ptr %1, i64 3
  %60 = load i8, ptr %59, align 1, !tbaa !50
  %61 = zext i8 %60 to i32
  br label %62

62:                                               ; preds = %62, %50
  %63 = phi i32 [ %10, %50 ], [ %69, %62 ]
  %64 = phi ptr [ %1, %50 ], [ %70, %62 ]
  %65 = phi i32 [ %52, %50 ], [ %73, %62 ]
  %66 = phi i32 [ %55, %50 ], [ %78, %62 ]
  %67 = phi i32 [ %58, %50 ], [ %83, %62 ]
  %68 = phi i32 [ %61, %50 ], [ %88, %62 ]
  %69 = add nsw i32 %63, -4
  %70 = getelementptr inbounds i8, ptr %64, i64 4
  %71 = load i8, ptr %70, align 1, !tbaa !50
  %72 = zext i8 %71 to i32
  %73 = add i32 %65, %72
  %74 = trunc i32 %73 to i8
  store i8 %74, ptr %70, align 1, !tbaa !50
  %75 = getelementptr inbounds i8, ptr %64, i64 5
  %76 = load i8, ptr %75, align 1, !tbaa !50
  %77 = zext i8 %76 to i32
  %78 = add i32 %66, %77
  %79 = trunc i32 %78 to i8
  store i8 %79, ptr %75, align 1, !tbaa !50
  %80 = getelementptr inbounds i8, ptr %64, i64 6
  %81 = load i8, ptr %80, align 1, !tbaa !50
  %82 = zext i8 %81 to i32
  %83 = add i32 %67, %82
  %84 = trunc i32 %83 to i8
  store i8 %84, ptr %80, align 1, !tbaa !50
  %85 = getelementptr inbounds i8, ptr %64, i64 7
  %86 = load i8, ptr %85, align 1, !tbaa !50
  %87 = zext i8 %86 to i32
  %88 = add i32 %68, %87
  %89 = trunc i32 %88 to i8
  store i8 %89, ptr %85, align 1, !tbaa !50
  %90 = icmp sgt i32 %63, 4
  br i1 %90, label %62, label %135, !llvm.loop !53

91:                                               ; preds = %11, %131
  %92 = phi i32 [ %133, %131 ], [ %10, %11 ]
  %93 = phi ptr [ %132, %131 ], [ %1, %11 ]
  switch i32 %7, label %94 [
    i32 4, label %105
    i32 0, label %131
    i32 2, label %117
    i32 1, label %124
  ]

94:                                               ; preds = %91
  br i1 %13, label %95, label %105

95:                                               ; preds = %94, %95
  %96 = phi i32 [ %103, %95 ], [ %12, %94 ]
  %97 = phi ptr [ %102, %95 ], [ %93, %94 ]
  %98 = load i8, ptr %97, align 1, !tbaa !50
  %99 = getelementptr inbounds i8, ptr %97, i64 %14
  %100 = load i8, ptr %99, align 1, !tbaa !50
  %101 = add i8 %100, %98
  store i8 %101, ptr %99, align 1, !tbaa !50
  %102 = getelementptr inbounds i8, ptr %97, i64 1
  %103 = add nsw i32 %96, -1
  %104 = icmp sgt i32 %96, 1
  br i1 %104, label %95, label %105, !llvm.loop !54

105:                                              ; preds = %95, %94, %91
  %106 = phi ptr [ %93, %91 ], [ %93, %94 ], [ %102, %95 ]
  %107 = load i8, ptr %106, align 1, !tbaa !50
  %108 = getelementptr inbounds i8, ptr %106, i64 %15
  %109 = load i8, ptr %108, align 1, !tbaa !50
  %110 = add i8 %109, %107
  store i8 %110, ptr %108, align 1, !tbaa !50
  %111 = getelementptr inbounds i8, ptr %106, i64 1
  %112 = load i8, ptr %111, align 1, !tbaa !50
  %113 = getelementptr inbounds i8, ptr %111, i64 %15
  %114 = load i8, ptr %113, align 1, !tbaa !50
  %115 = add i8 %114, %112
  store i8 %115, ptr %113, align 1, !tbaa !50
  %116 = getelementptr inbounds i8, ptr %106, i64 2
  br label %117

117:                                              ; preds = %91, %105
  %118 = phi ptr [ %116, %105 ], [ %93, %91 ]
  %119 = load i8, ptr %118, align 1, !tbaa !50
  %120 = getelementptr inbounds i8, ptr %118, i64 %16
  %121 = load i8, ptr %120, align 1, !tbaa !50
  %122 = add i8 %121, %119
  store i8 %122, ptr %120, align 1, !tbaa !50
  %123 = getelementptr inbounds i8, ptr %118, i64 1
  br label %124

124:                                              ; preds = %91, %117
  %125 = phi ptr [ %123, %117 ], [ %93, %91 ]
  %126 = load i8, ptr %125, align 1, !tbaa !50
  %127 = getelementptr inbounds i8, ptr %125, i64 %17
  %128 = load i8, ptr %127, align 1, !tbaa !50
  %129 = add i8 %128, %126
  store i8 %129, ptr %127, align 1, !tbaa !50
  %130 = getelementptr inbounds i8, ptr %125, i64 1
  br label %131

131:                                              ; preds = %91, %124
  %132 = phi ptr [ %130, %124 ], [ %93, %91 ]
  %133 = sub nsw i32 %92, %7
  %134 = icmp sgt i32 %133, 0
  br i1 %134, label %91, label %135, !llvm.loop !55

135:                                              ; preds = %62, %27, %131, %3
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal void @horAcc16(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, i32 noundef %2) #3 {
  %4 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 37
  %5 = load ptr, ptr %4, align 8, !tbaa !5
  %6 = getelementptr inbounds %struct.TIFFPredictorState, ptr %5, i64 0, i32 1
  %7 = load i32, ptr %6, align 4, !tbaa !48
  %8 = sdiv i32 %2, 2
  %9 = icmp sgt i32 %8, %7
  br i1 %9, label %10, label %65

10:                                               ; preds = %3
  %11 = sub nsw i32 %8, %7
  %12 = add nsw i32 %7, -4
  %13 = icmp sgt i32 %7, 4
  %14 = sext i32 %7 to i64
  %15 = sext i32 %7 to i64
  %16 = sext i32 %7 to i64
  %17 = sext i32 %7 to i64
  %18 = sext i32 %7 to i64
  br label %19

19:                                               ; preds = %61, %10
  %20 = phi ptr [ %1, %10 ], [ %62, %61 ]
  %21 = phi i32 [ %11, %10 ], [ %63, %61 ]
  switch i32 %7, label %22 [
    i32 4, label %33
    i32 3, label %40
    i32 2, label %47
    i32 1, label %54
    i32 0, label %61
  ]

22:                                               ; preds = %19
  br i1 %13, label %23, label %33

23:                                               ; preds = %22, %23
  %24 = phi i32 [ %31, %23 ], [ %12, %22 ]
  %25 = phi ptr [ %30, %23 ], [ %20, %22 ]
  %26 = load i16, ptr %25, align 2, !tbaa !29
  %27 = getelementptr inbounds i16, ptr %25, i64 %14
  %28 = load i16, ptr %27, align 2, !tbaa !29
  %29 = add i16 %28, %26
  store i16 %29, ptr %27, align 2, !tbaa !29
  %30 = getelementptr inbounds i16, ptr %25, i64 1
  %31 = add nsw i32 %24, -1
  %32 = icmp sgt i32 %24, 1
  br i1 %32, label %23, label %33, !llvm.loop !56

33:                                               ; preds = %23, %22, %19
  %34 = phi ptr [ %20, %19 ], [ %20, %22 ], [ %30, %23 ]
  %35 = load i16, ptr %34, align 2, !tbaa !29
  %36 = getelementptr inbounds i16, ptr %34, i64 %15
  %37 = load i16, ptr %36, align 2, !tbaa !29
  %38 = add i16 %37, %35
  store i16 %38, ptr %36, align 2, !tbaa !29
  %39 = getelementptr inbounds i16, ptr %34, i64 1
  br label %40

40:                                               ; preds = %19, %33
  %41 = phi ptr [ %39, %33 ], [ %20, %19 ]
  %42 = load i16, ptr %41, align 2, !tbaa !29
  %43 = getelementptr inbounds i16, ptr %41, i64 %16
  %44 = load i16, ptr %43, align 2, !tbaa !29
  %45 = add i16 %44, %42
  store i16 %45, ptr %43, align 2, !tbaa !29
  %46 = getelementptr inbounds i16, ptr %41, i64 1
  br label %47

47:                                               ; preds = %19, %40
  %48 = phi ptr [ %46, %40 ], [ %20, %19 ]
  %49 = load i16, ptr %48, align 2, !tbaa !29
  %50 = getelementptr inbounds i16, ptr %48, i64 %17
  %51 = load i16, ptr %50, align 2, !tbaa !29
  %52 = add i16 %51, %49
  store i16 %52, ptr %50, align 2, !tbaa !29
  %53 = getelementptr inbounds i16, ptr %48, i64 1
  br label %54

54:                                               ; preds = %19, %47
  %55 = phi ptr [ %53, %47 ], [ %20, %19 ]
  %56 = load i16, ptr %55, align 2, !tbaa !29
  %57 = getelementptr inbounds i16, ptr %55, i64 %18
  %58 = load i16, ptr %57, align 2, !tbaa !29
  %59 = add i16 %58, %56
  store i16 %59, ptr %57, align 2, !tbaa !29
  %60 = getelementptr inbounds i16, ptr %55, i64 1
  br label %61

61:                                               ; preds = %54, %19
  %62 = phi ptr [ %60, %54 ], [ %20, %19 ]
  %63 = sub nsw i32 %21, %7
  %64 = icmp sgt i32 %63, 0
  br i1 %64, label %19, label %65, !llvm.loop !57

65:                                               ; preds = %61, %3
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @PredictorDecodeRow(ptr noundef %0, ptr noundef %1, i32 noundef %2, i16 noundef zeroext %3) #0 {
  %5 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 37
  %6 = load ptr, ptr %5, align 8, !tbaa !5
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %4
  tail call void @__assert_fail(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, i32 noundef 244, ptr noundef nonnull @__PRETTY_FUNCTION__.PredictorDecodeRow) #7
  unreachable

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.TIFFPredictorState, ptr %6, i64 0, i32 4
  %11 = load ptr, ptr %10, align 8, !tbaa !36
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %9
  tail call void @__assert_fail(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.8, i32 noundef 245, ptr noundef nonnull @__PRETTY_FUNCTION__.PredictorDecodeRow) #7
  unreachable

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.TIFFPredictorState, ptr %6, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !28
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %14
  tail call void @__assert_fail(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.8, i32 noundef 246, ptr noundef nonnull @__PRETTY_FUNCTION__.PredictorDecodeRow) #7
  unreachable

19:                                               ; preds = %14
  %20 = tail call i32 %11(ptr noundef %0, ptr noundef %1, i32 noundef %2, i16 noundef zeroext %3) #6
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %19
  %23 = load ptr, ptr %15, align 8, !tbaa !28
  tail call void %23(ptr noundef %0, ptr noundef %1, i32 noundef %2) #6
  br label %24

24:                                               ; preds = %19, %22
  %25 = phi i32 [ 1, %22 ], [ 0, %19 ]
  ret i32 %25
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @PredictorDecodeTile(ptr noundef %0, ptr noundef %1, i32 noundef %2, i16 noundef zeroext %3) #0 {
  %5 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 37
  %6 = load ptr, ptr %5, align 8, !tbaa !5
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %4
  tail call void @__assert_fail(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, i32 noundef 266, ptr noundef nonnull @__PRETTY_FUNCTION__.PredictorDecodeTile) #7
  unreachable

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.TIFFPredictorState, ptr %6, i64 0, i32 6
  %11 = load ptr, ptr %10, align 8, !tbaa !40
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %9
  tail call void @__assert_fail(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.8, i32 noundef 267, ptr noundef nonnull @__PRETTY_FUNCTION__.PredictorDecodeTile) #7
  unreachable

14:                                               ; preds = %9
  %15 = tail call i32 %11(ptr noundef %0, ptr noundef %1, i32 noundef %2, i16 noundef zeroext %3) #6
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %38, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.TIFFPredictorState, ptr %6, i64 0, i32 2
  %19 = load i32, ptr %18, align 8, !tbaa !49
  %20 = icmp sgt i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %17
  tail call void @__assert_fail(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.8, i32 noundef 270, ptr noundef nonnull @__PRETTY_FUNCTION__.PredictorDecodeTile) #7
  unreachable

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.TIFFPredictorState, ptr %6, i64 0, i32 3
  %24 = load ptr, ptr %23, align 8, !tbaa !28
  %25 = icmp eq ptr %24, null
  br i1 %25, label %30, label %26

26:                                               ; preds = %22
  %27 = icmp sgt i32 %2, 0
  br i1 %27, label %28, label %38

28:                                               ; preds = %26
  %29 = zext nneg i32 %19 to i64
  br label %31

30:                                               ; preds = %22
  tail call void @__assert_fail(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.8, i32 noundef 271, ptr noundef nonnull @__PRETTY_FUNCTION__.PredictorDecodeTile) #7
  unreachable

31:                                               ; preds = %28, %31
  %32 = phi ptr [ %1, %28 ], [ %36, %31 ]
  %33 = phi i32 [ %2, %28 ], [ %35, %31 ]
  %34 = load ptr, ptr %23, align 8, !tbaa !28
  tail call void %34(ptr noundef %0, ptr noundef %32, i32 noundef %19) #6
  %35 = sub nsw i32 %33, %19
  %36 = getelementptr inbounds i8, ptr %32, i64 %29
  %37 = icmp sgt i32 %35, 0
  br i1 %37, label %31, label %38, !llvm.loop !58

38:                                               ; preds = %31, %26, %14
  %39 = phi i32 [ 0, %14 ], [ 1, %26 ], [ 1, %31 ]
  ret i32 %39
}

; Function Attrs: nounwind uwtable
define internal void @swabHorAcc16(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 37
  %5 = load ptr, ptr %4, align 8, !tbaa !5
  %6 = getelementptr inbounds %struct.TIFFPredictorState, ptr %5, i64 0, i32 1
  %7 = load i32, ptr %6, align 4, !tbaa !48
  %8 = sdiv i32 %2, 2
  %9 = icmp sgt i32 %8, %7
  br i1 %9, label %10, label %66

10:                                               ; preds = %3
  %11 = sext i32 %8 to i64
  tail call void @TIFFSwabArrayOfShort(ptr noundef %1, i64 noundef %11) #6
  %12 = sub nsw i32 %8, %7
  %13 = add nsw i32 %7, -4
  %14 = icmp sgt i32 %7, 4
  %15 = sext i32 %7 to i64
  %16 = sext i32 %7 to i64
  %17 = sext i32 %7 to i64
  %18 = sext i32 %7 to i64
  %19 = sext i32 %7 to i64
  br label %20

20:                                               ; preds = %62, %10
  %21 = phi ptr [ %1, %10 ], [ %63, %62 ]
  %22 = phi i32 [ %12, %10 ], [ %64, %62 ]
  switch i32 %7, label %23 [
    i32 4, label %34
    i32 3, label %41
    i32 2, label %48
    i32 1, label %55
    i32 0, label %62
  ]

23:                                               ; preds = %20
  br i1 %14, label %24, label %34

24:                                               ; preds = %23, %24
  %25 = phi i32 [ %32, %24 ], [ %13, %23 ]
  %26 = phi ptr [ %31, %24 ], [ %21, %23 ]
  %27 = load i16, ptr %26, align 2, !tbaa !29
  %28 = getelementptr inbounds i16, ptr %26, i64 %15
  %29 = load i16, ptr %28, align 2, !tbaa !29
  %30 = add i16 %29, %27
  store i16 %30, ptr %28, align 2, !tbaa !29
  %31 = getelementptr inbounds i16, ptr %26, i64 1
  %32 = add nsw i32 %25, -1
  %33 = icmp sgt i32 %25, 1
  br i1 %33, label %24, label %34, !llvm.loop !59

34:                                               ; preds = %24, %23, %20
  %35 = phi ptr [ %21, %20 ], [ %21, %23 ], [ %31, %24 ]
  %36 = load i16, ptr %35, align 2, !tbaa !29
  %37 = getelementptr inbounds i16, ptr %35, i64 %16
  %38 = load i16, ptr %37, align 2, !tbaa !29
  %39 = add i16 %38, %36
  store i16 %39, ptr %37, align 2, !tbaa !29
  %40 = getelementptr inbounds i16, ptr %35, i64 1
  br label %41

41:                                               ; preds = %20, %34
  %42 = phi ptr [ %40, %34 ], [ %21, %20 ]
  %43 = load i16, ptr %42, align 2, !tbaa !29
  %44 = getelementptr inbounds i16, ptr %42, i64 %17
  %45 = load i16, ptr %44, align 2, !tbaa !29
  %46 = add i16 %45, %43
  store i16 %46, ptr %44, align 2, !tbaa !29
  %47 = getelementptr inbounds i16, ptr %42, i64 1
  br label %48

48:                                               ; preds = %20, %41
  %49 = phi ptr [ %47, %41 ], [ %21, %20 ]
  %50 = load i16, ptr %49, align 2, !tbaa !29
  %51 = getelementptr inbounds i16, ptr %49, i64 %18
  %52 = load i16, ptr %51, align 2, !tbaa !29
  %53 = add i16 %52, %50
  store i16 %53, ptr %51, align 2, !tbaa !29
  %54 = getelementptr inbounds i16, ptr %49, i64 1
  br label %55

55:                                               ; preds = %20, %48
  %56 = phi ptr [ %54, %48 ], [ %21, %20 ]
  %57 = load i16, ptr %56, align 2, !tbaa !29
  %58 = getelementptr inbounds i16, ptr %56, i64 %19
  %59 = load i16, ptr %58, align 2, !tbaa !29
  %60 = add i16 %59, %57
  store i16 %60, ptr %58, align 2, !tbaa !29
  %61 = getelementptr inbounds i16, ptr %56, i64 1
  br label %62

62:                                               ; preds = %55, %20
  %63 = phi ptr [ %61, %55 ], [ %21, %20 ]
  %64 = sub nsw i32 %22, %7
  %65 = icmp sgt i32 %64, 0
  br i1 %65, label %20, label %66, !llvm.loop !60

66:                                               ; preds = %62, %3
  ret void
}

declare void @_TIFFNoPostDecode(ptr noundef, ptr noundef, i32 noundef) #1

declare void @TIFFError(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

declare i32 @TIFFTileRowSize(ptr noundef) local_unnamed_addr #1

declare i32 @TIFFScanlineSize(ptr noundef) local_unnamed_addr #1

; Function Attrs: noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

declare void @TIFFSwabArrayOfShort(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal void @horDiff8(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, i32 noundef %2) #3 {
  %4 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 37
  %5 = load ptr, ptr %4, align 8, !tbaa !5
  %6 = getelementptr inbounds %struct.TIFFPredictorState, ptr %5, i64 0, i32 1
  %7 = load i32, ptr %6, align 4, !tbaa !48
  %8 = icmp slt i32 %7, %2
  br i1 %8, label %9, label %117

9:                                                ; preds = %3
  %10 = sub nsw i32 %2, %7
  switch i32 %7, label %63 [
    i32 3, label %11
    i32 4, label %34
  ]

11:                                               ; preds = %9
  %12 = load i8, ptr %1, align 1, !tbaa !50
  %13 = getelementptr inbounds i8, ptr %1, i64 1
  %14 = load i8, ptr %13, align 1, !tbaa !50
  %15 = getelementptr inbounds i8, ptr %1, i64 2
  %16 = load i8, ptr %15, align 1, !tbaa !50
  br label %17

17:                                               ; preds = %17, %11
  %18 = phi i8 [ %16, %11 ], [ %30, %17 ]
  %19 = phi i8 [ %14, %11 ], [ %27, %17 ]
  %20 = phi i8 [ %12, %11 ], [ %24, %17 ]
  %21 = phi ptr [ %1, %11 ], [ %23, %17 ]
  %22 = phi i32 [ %10, %11 ], [ %32, %17 ]
  %23 = getelementptr inbounds i8, ptr %21, i64 3
  %24 = load i8, ptr %23, align 1, !tbaa !50
  %25 = sub i8 %24, %20
  store i8 %25, ptr %23, align 1, !tbaa !50
  %26 = getelementptr inbounds i8, ptr %21, i64 4
  %27 = load i8, ptr %26, align 1, !tbaa !50
  %28 = sub i8 %27, %19
  store i8 %28, ptr %26, align 1, !tbaa !50
  %29 = getelementptr inbounds i8, ptr %21, i64 5
  %30 = load i8, ptr %29, align 1, !tbaa !50
  %31 = sub i8 %30, %18
  store i8 %31, ptr %29, align 1, !tbaa !50
  %32 = add nsw i32 %22, -3
  %33 = icmp sgt i32 %22, 3
  br i1 %33, label %17, label %117, !llvm.loop !61

34:                                               ; preds = %9
  %35 = load i8, ptr %1, align 1, !tbaa !50
  %36 = getelementptr inbounds i8, ptr %1, i64 1
  %37 = load i8, ptr %36, align 1, !tbaa !50
  %38 = getelementptr inbounds i8, ptr %1, i64 2
  %39 = load i8, ptr %38, align 1, !tbaa !50
  %40 = getelementptr inbounds i8, ptr %1, i64 3
  %41 = load i8, ptr %40, align 1, !tbaa !50
  br label %42

42:                                               ; preds = %42, %34
  %43 = phi ptr [ %1, %34 ], [ %49, %42 ]
  %44 = phi i32 [ %10, %34 ], [ %61, %42 ]
  %45 = phi i8 [ %35, %34 ], [ %50, %42 ]
  %46 = phi i8 [ %37, %34 ], [ %53, %42 ]
  %47 = phi i8 [ %39, %34 ], [ %56, %42 ]
  %48 = phi i8 [ %41, %34 ], [ %59, %42 ]
  %49 = getelementptr inbounds i8, ptr %43, i64 4
  %50 = load i8, ptr %49, align 1, !tbaa !50
  %51 = sub i8 %50, %45
  store i8 %51, ptr %49, align 1, !tbaa !50
  %52 = getelementptr inbounds i8, ptr %43, i64 5
  %53 = load i8, ptr %52, align 1, !tbaa !50
  %54 = sub i8 %53, %46
  store i8 %54, ptr %52, align 1, !tbaa !50
  %55 = getelementptr inbounds i8, ptr %43, i64 6
  %56 = load i8, ptr %55, align 1, !tbaa !50
  %57 = sub i8 %56, %47
  store i8 %57, ptr %55, align 1, !tbaa !50
  %58 = getelementptr inbounds i8, ptr %43, i64 7
  %59 = load i8, ptr %58, align 1, !tbaa !50
  %60 = sub i8 %59, %48
  store i8 %60, ptr %58, align 1, !tbaa !50
  %61 = add nsw i32 %44, -4
  %62 = icmp sgt i32 %44, 4
  br i1 %62, label %42, label %117, !llvm.loop !62

63:                                               ; preds = %9
  %64 = sext i32 %10 to i64
  %65 = getelementptr i8, ptr %1, i64 %64
  %66 = getelementptr i8, ptr %65, i64 -1
  %67 = add nsw i32 %7, -4
  %68 = icmp sgt i32 %7, 4
  %69 = sext i32 %7 to i64
  %70 = sext i32 %7 to i64
  %71 = sext i32 %7 to i64
  %72 = sext i32 %7 to i64
  br label %73

73:                                               ; preds = %113, %63
  %74 = phi ptr [ %66, %63 ], [ %114, %113 ]
  %75 = phi i32 [ %10, %63 ], [ %115, %113 ]
  switch i32 %7, label %76 [
    i32 0, label %113
    i32 1, label %106
    i32 2, label %99
  ]

76:                                               ; preds = %73
  br i1 %68, label %77, label %87

77:                                               ; preds = %76, %77
  %78 = phi i32 [ %85, %77 ], [ %67, %76 ]
  %79 = phi ptr [ %84, %77 ], [ %74, %76 ]
  %80 = load i8, ptr %79, align 1, !tbaa !50
  %81 = getelementptr inbounds i8, ptr %79, i64 %69
  %82 = load i8, ptr %81, align 1, !tbaa !50
  %83 = sub i8 %82, %80
  store i8 %83, ptr %81, align 1, !tbaa !50
  %84 = getelementptr inbounds i8, ptr %79, i64 -1
  %85 = add nsw i32 %78, -1
  %86 = icmp sgt i32 %78, 1
  br i1 %86, label %77, label %87, !llvm.loop !63

87:                                               ; preds = %77, %76
  %88 = phi ptr [ %74, %76 ], [ %84, %77 ]
  %89 = load i8, ptr %88, align 1, !tbaa !50
  %90 = getelementptr inbounds i8, ptr %88, i64 %70
  %91 = load i8, ptr %90, align 1, !tbaa !50
  %92 = sub i8 %91, %89
  store i8 %92, ptr %90, align 1, !tbaa !50
  %93 = getelementptr inbounds i8, ptr %88, i64 -1
  %94 = load i8, ptr %93, align 1, !tbaa !50
  %95 = getelementptr inbounds i8, ptr %93, i64 %70
  %96 = load i8, ptr %95, align 1, !tbaa !50
  %97 = sub i8 %96, %94
  store i8 %97, ptr %95, align 1, !tbaa !50
  %98 = getelementptr inbounds i8, ptr %88, i64 -2
  br label %99

99:                                               ; preds = %73, %87
  %100 = phi ptr [ %98, %87 ], [ %74, %73 ]
  %101 = load i8, ptr %100, align 1, !tbaa !50
  %102 = getelementptr inbounds i8, ptr %100, i64 %71
  %103 = load i8, ptr %102, align 1, !tbaa !50
  %104 = sub i8 %103, %101
  store i8 %104, ptr %102, align 1, !tbaa !50
  %105 = getelementptr inbounds i8, ptr %100, i64 -1
  br label %106

106:                                              ; preds = %73, %99
  %107 = phi ptr [ %105, %99 ], [ %74, %73 ]
  %108 = load i8, ptr %107, align 1, !tbaa !50
  %109 = getelementptr inbounds i8, ptr %107, i64 %72
  %110 = load i8, ptr %109, align 1, !tbaa !50
  %111 = sub i8 %110, %108
  store i8 %111, ptr %109, align 1, !tbaa !50
  %112 = getelementptr inbounds i8, ptr %107, i64 -1
  br label %113

113:                                              ; preds = %73, %106
  %114 = phi ptr [ %112, %106 ], [ %74, %73 ]
  %115 = sub nsw i32 %75, %7
  %116 = icmp sgt i32 %115, 0
  br i1 %116, label %73, label %117, !llvm.loop !64

117:                                              ; preds = %42, %17, %113, %3
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal void @horDiff16(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, i32 noundef %2) #3 {
  %4 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 37
  %5 = load ptr, ptr %4, align 8, !tbaa !5
  %6 = getelementptr inbounds %struct.TIFFPredictorState, ptr %5, i64 0, i32 1
  %7 = load i32, ptr %6, align 4, !tbaa !48
  %8 = sdiv i32 %2, 2
  %9 = icmp sgt i32 %8, %7
  br i1 %9, label %10, label %68

10:                                               ; preds = %3
  %11 = sub nsw i32 %8, %7
  %12 = sext i32 %11 to i64
  %13 = getelementptr i16, ptr %1, i64 %12
  %14 = getelementptr i16, ptr %13, i64 -1
  %15 = add nsw i32 %7, -4
  %16 = icmp sgt i32 %7, 4
  %17 = sext i32 %7 to i64
  %18 = sext i32 %7 to i64
  %19 = sext i32 %7 to i64
  %20 = sext i32 %7 to i64
  %21 = sext i32 %7 to i64
  br label %22

22:                                               ; preds = %64, %10
  %23 = phi ptr [ %14, %10 ], [ %65, %64 ]
  %24 = phi i32 [ %11, %10 ], [ %66, %64 ]
  switch i32 %7, label %25 [
    i32 4, label %36
    i32 3, label %43
    i32 2, label %50
    i32 1, label %57
    i32 0, label %64
  ]

25:                                               ; preds = %22
  br i1 %16, label %26, label %36

26:                                               ; preds = %25, %26
  %27 = phi i32 [ %34, %26 ], [ %15, %25 ]
  %28 = phi ptr [ %33, %26 ], [ %23, %25 ]
  %29 = load i16, ptr %28, align 2, !tbaa !29
  %30 = getelementptr inbounds i16, ptr %28, i64 %17
  %31 = load i16, ptr %30, align 2, !tbaa !29
  %32 = sub i16 %31, %29
  store i16 %32, ptr %30, align 2, !tbaa !29
  %33 = getelementptr inbounds i16, ptr %28, i64 -1
  %34 = add nsw i32 %27, -1
  %35 = icmp sgt i32 %27, 1
  br i1 %35, label %26, label %36, !llvm.loop !65

36:                                               ; preds = %26, %25, %22
  %37 = phi ptr [ %23, %22 ], [ %23, %25 ], [ %33, %26 ]
  %38 = load i16, ptr %37, align 2, !tbaa !29
  %39 = getelementptr inbounds i16, ptr %37, i64 %18
  %40 = load i16, ptr %39, align 2, !tbaa !29
  %41 = sub i16 %40, %38
  store i16 %41, ptr %39, align 2, !tbaa !29
  %42 = getelementptr inbounds i16, ptr %37, i64 -1
  br label %43

43:                                               ; preds = %22, %36
  %44 = phi ptr [ %42, %36 ], [ %23, %22 ]
  %45 = load i16, ptr %44, align 2, !tbaa !29
  %46 = getelementptr inbounds i16, ptr %44, i64 %19
  %47 = load i16, ptr %46, align 2, !tbaa !29
  %48 = sub i16 %47, %45
  store i16 %48, ptr %46, align 2, !tbaa !29
  %49 = getelementptr inbounds i16, ptr %44, i64 -1
  br label %50

50:                                               ; preds = %22, %43
  %51 = phi ptr [ %49, %43 ], [ %23, %22 ]
  %52 = load i16, ptr %51, align 2, !tbaa !29
  %53 = getelementptr inbounds i16, ptr %51, i64 %20
  %54 = load i16, ptr %53, align 2, !tbaa !29
  %55 = sub i16 %54, %52
  store i16 %55, ptr %53, align 2, !tbaa !29
  %56 = getelementptr inbounds i16, ptr %51, i64 -1
  br label %57

57:                                               ; preds = %22, %50
  %58 = phi ptr [ %56, %50 ], [ %23, %22 ]
  %59 = load i16, ptr %58, align 2, !tbaa !29
  %60 = getelementptr inbounds i16, ptr %58, i64 %21
  %61 = load i16, ptr %60, align 2, !tbaa !29
  %62 = sub i16 %61, %59
  store i16 %62, ptr %60, align 2, !tbaa !29
  %63 = getelementptr inbounds i16, ptr %58, i64 -1
  br label %64

64:                                               ; preds = %57, %22
  %65 = phi ptr [ %63, %57 ], [ %23, %22 ]
  %66 = sub nsw i32 %24, %7
  %67 = icmp sgt i32 %66, 0
  br i1 %67, label %22, label %68, !llvm.loop !66

68:                                               ; preds = %64, %3
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @PredictorEncodeRow(ptr noundef %0, ptr noundef %1, i32 noundef %2, i16 noundef zeroext %3) #0 {
  %5 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 37
  %6 = load ptr, ptr %5, align 8, !tbaa !5
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %4
  tail call void @__assert_fail(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, i32 noundef 350, ptr noundef nonnull @__PRETTY_FUNCTION__.PredictorEncodeRow) #7
  unreachable

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.TIFFPredictorState, ptr %6, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !28
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %9
  tail call void @__assert_fail(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.8, i32 noundef 351, ptr noundef nonnull @__PRETTY_FUNCTION__.PredictorEncodeRow) #7
  unreachable

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.TIFFPredictorState, ptr %6, i64 0, i32 4
  %16 = load ptr, ptr %15, align 8, !tbaa !36
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %14
  tail call void @__assert_fail(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.8, i32 noundef 352, ptr noundef nonnull @__PRETTY_FUNCTION__.PredictorEncodeRow) #7
  unreachable

19:                                               ; preds = %14
  tail call void %11(ptr noundef %0, ptr noundef %1, i32 noundef %2) #6
  %20 = load ptr, ptr %15, align 8, !tbaa !36
  %21 = tail call i32 %20(ptr noundef %0, ptr noundef %1, i32 noundef %2, i16 noundef zeroext %3) #6
  ret i32 %21
}

; Function Attrs: nounwind uwtable
define internal i32 @PredictorEncodeTile(ptr noundef %0, ptr noundef %1, i32 noundef %2, i16 noundef zeroext %3) #0 {
  %5 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 37
  %6 = load ptr, ptr %5, align 8, !tbaa !5
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %4
  tail call void @__assert_fail(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, i32 noundef 365, ptr noundef nonnull @__PRETTY_FUNCTION__.PredictorEncodeTile) #7
  unreachable

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.TIFFPredictorState, ptr %6, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !28
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %9
  tail call void @__assert_fail(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.8, i32 noundef 366, ptr noundef nonnull @__PRETTY_FUNCTION__.PredictorEncodeTile) #7
  unreachable

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.TIFFPredictorState, ptr %6, i64 0, i32 6
  %16 = load ptr, ptr %15, align 8, !tbaa !40
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %14
  tail call void @__assert_fail(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.8, i32 noundef 367, ptr noundef nonnull @__PRETTY_FUNCTION__.PredictorEncodeTile) #7
  unreachable

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.TIFFPredictorState, ptr %6, i64 0, i32 2
  %21 = load i32, ptr %20, align 8, !tbaa !49
  %22 = icmp sgt i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %19
  %24 = icmp sgt i32 %2, 0
  br i1 %24, label %25, label %35

25:                                               ; preds = %23
  %26 = zext nneg i32 %21 to i64
  br label %28

27:                                               ; preds = %19
  tail call void @__assert_fail(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.8, i32 noundef 369, ptr noundef nonnull @__PRETTY_FUNCTION__.PredictorEncodeTile) #7
  unreachable

28:                                               ; preds = %25, %28
  %29 = phi ptr [ %1, %25 ], [ %33, %28 ]
  %30 = phi i32 [ %2, %25 ], [ %32, %28 ]
  %31 = load ptr, ptr %10, align 8, !tbaa !28
  tail call void %31(ptr noundef %0, ptr noundef %29, i32 noundef %21) #6
  %32 = sub nsw i32 %30, %21
  %33 = getelementptr inbounds i8, ptr %29, i64 %26
  %34 = icmp sgt i32 %32, 0
  br i1 %34, label %28, label %35, !llvm.loop !67

35:                                               ; preds = %28, %23
  %36 = load ptr, ptr %15, align 8, !tbaa !40
  %37 = tail call i32 %36(ptr noundef %0, ptr noundef %1, i32 noundef %2, i16 noundef zeroext %3) #6
  ret i32 %37
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind }
attributes #6 = { nounwind }
attributes #7 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !7, i64 704}
!6 = !{!"tiff", !7, i64 0, !10, i64 8, !10, i64 12, !10, i64 16, !10, i64 20, !10, i64 24, !11, i64 32, !15, i64 504, !7, i64 512, !7, i64 520, !7, i64 528, !10, i64 536, !12, i64 540, !10, i64 544, !10, i64 548, !10, i64 552, !12, i64 556, !10, i64 560, !10, i64 564, !10, i64 568, !10, i64 572, !7, i64 576, !7, i64 584, !7, i64 592, !7, i64 600, !7, i64 608, !7, i64 616, !7, i64 624, !7, i64 632, !7, i64 640, !7, i64 648, !7, i64 656, !7, i64 664, !7, i64 672, !7, i64 680, !7, i64 688, !7, i64 696, !7, i64 704, !10, i64 712, !10, i64 716, !7, i64 720, !10, i64 728, !7, i64 736, !10, i64 744, !7, i64 752, !10, i64 760, !7, i64 768, !7, i64 776, !7, i64 784, !7, i64 792, !7, i64 800, !7, i64 808, !7, i64 816, !7, i64 824, !7, i64 832, !7, i64 840, !10, i64 848, !7, i64 856, !7, i64 864, !7, i64 872}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"int", !8, i64 0}
!11 = !{!"", !8, i64 0, !10, i64 24, !10, i64 28, !10, i64 32, !10, i64 36, !10, i64 40, !10, i64 44, !10, i64 48, !12, i64 52, !12, i64 54, !12, i64 56, !12, i64 58, !12, i64 60, !12, i64 62, !12, i64 64, !12, i64 66, !10, i64 68, !12, i64 72, !12, i64 74, !13, i64 80, !13, i64 88, !14, i64 96, !14, i64 100, !12, i64 104, !12, i64 106, !14, i64 108, !14, i64 112, !8, i64 116, !8, i64 120, !8, i64 144, !12, i64 148, !7, i64 152, !13, i64 160, !7, i64 168, !7, i64 176, !7, i64 184, !7, i64 192, !7, i64 200, !7, i64 208, !7, i64 216, !7, i64 224, !7, i64 232, !10, i64 240, !10, i64 244, !7, i64 248, !7, i64 256, !12, i64 264, !7, i64 272, !7, i64 280, !8, i64 288, !12, i64 292, !7, i64 296, !7, i64 304, !7, i64 312, !8, i64 320, !12, i64 344, !12, i64 346, !8, i64 348, !10, i64 352, !7, i64 360, !7, i64 368, !10, i64 376, !7, i64 384, !10, i64 392, !7, i64 400, !10, i64 408, !7, i64 416, !10, i64 424, !10, i64 428, !7, i64 432, !7, i64 440, !14, i64 448, !7, i64 456, !7, i64 464}
!12 = !{!"short", !8, i64 0}
!13 = !{!"double", !8, i64 0}
!14 = !{!"float", !8, i64 0}
!15 = !{!"", !12, i64 0, !12, i64 2, !10, i64 4}
!16 = !{!6, !7, i64 864}
!17 = !{!18, !7, i64 48}
!18 = !{!"", !10, i64 0, !10, i64 4, !10, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80}
!19 = !{!6, !7, i64 856}
!20 = !{!18, !7, i64 56}
!21 = !{!6, !7, i64 872}
!22 = !{!18, !7, i64 64}
!23 = !{!6, !7, i64 576}
!24 = !{!18, !7, i64 72}
!25 = !{!6, !7, i64 592}
!26 = !{!18, !7, i64 80}
!27 = !{!18, !10, i64 0}
!28 = !{!18, !7, i64 16}
!29 = !{!12, !12, i64 0}
!30 = !{!31, !31, i64 0}
!31 = !{!"long", !8, i64 0}
!32 = !{!6, !10, i64 16}
!33 = !{i32 0, i32 2}
!34 = !{!11, !12, i64 52}
!35 = !{!6, !7, i64 616}
!36 = !{!18, !7, i64 24}
!37 = !{!6, !7, i64 632}
!38 = !{!18, !7, i64 32}
!39 = !{!6, !7, i64 648}
!40 = !{!18, !7, i64 40}
!41 = !{!6, !7, i64 832}
!42 = !{!6, !7, i64 624}
!43 = !{!6, !7, i64 640}
!44 = !{!6, !7, i64 656}
!45 = !{!6, !7, i64 0}
!46 = !{!11, !12, i64 106}
!47 = !{!11, !12, i64 66}
!48 = !{!18, !10, i64 4}
!49 = !{!18, !10, i64 8}
!50 = !{!8, !8, i64 0}
!51 = distinct !{!51, !52}
!52 = !{!"llvm.loop.unroll.disable"}
!53 = distinct !{!53, !52}
!54 = distinct !{!54, !52}
!55 = distinct !{!55, !52}
!56 = distinct !{!56, !52}
!57 = distinct !{!57, !52}
!58 = distinct !{!58, !52}
!59 = distinct !{!59, !52}
!60 = distinct !{!60, !52}
!61 = distinct !{!61, !52}
!62 = distinct !{!62, !52}
!63 = distinct !{!63, !52}
!64 = distinct !{!64, !52}
!65 = distinct !{!65, !52}
!66 = distinct !{!66, !52}
!67 = distinct !{!67, !52}
