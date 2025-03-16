; ModuleID = 'src/tif_lzw.c'
source_filename = "src/tif_lzw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.tiff = type { ptr, i32, i32, i32, i32, i32, %struct.TIFFDirectory, %struct.TIFFHeader, ptr, ptr, ptr, i32, i16, i32, i32, i32, i16, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr }
%struct.TIFFDirectory = type { [3 x i64], i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i16, i16, double, double, float, float, i16, i16, float, float, [2 x i16], [3 x ptr], [2 x i16], i16, ptr, double, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, i16, ptr, ptr, [2 x i16], i16, ptr, ptr, ptr, [3 x ptr], i16, i16, [2 x i16], i32, ptr, ptr, i32, ptr, i32, ptr, i32, ptr, i32, i32, ptr, ptr, float, ptr, ptr }
%struct.TIFFHeader = type { i16, i16, i32 }
%struct.LZWDecodeState = type { %struct.LZWBaseState, i64, i64, i64, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.LZWBaseState = type { %struct.TIFFPredictorState, i16, i16, i16, i64, i64 }
%struct.TIFFPredictorState = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.code_ent = type { ptr, i16, i8, i8 }

@.str = private unnamed_addr constant [26 x i8] c"scheme == COMPRESSION_LZW\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"src/tif_lzw.c\00", align 1
@__PRETTY_FUNCTION__.TIFFInitLZW = private unnamed_addr constant [29 x i8] c"int TIFFInitLZW(TIFF *, int)\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"TIFFInitLZW\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"No space for LZW state block\00", align 1
@LZWSetupDecode.module = internal constant [16 x i8] c" LZWSetupDecode\00", align 16
@.str.4 = private unnamed_addr constant [11 x i8] c"sp != NULL\00", align 1
@__PRETTY_FUNCTION__.LZWSetupDecode = private unnamed_addr constant [27 x i8] c"int LZWSetupDecode(TIFF *)\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"No space for LZW code table\00", align 1
@__PRETTY_FUNCTION__.LZWPreDecode = private unnamed_addr constant [36 x i8] c"int LZWPreDecode(TIFF *, tsample_t)\00", align 1
@.str.6 = private unnamed_addr constant [34 x i8] c"Old-style LZW codes, convert file\00", align 1
@__PRETTY_FUNCTION__.LZWDecodeCompat = private unnamed_addr constant [58 x i8] c"int LZWDecodeCompat(TIFF *, tidata_t, tsize_t, tsample_t)\00", align 1
@.str.7 = private unnamed_addr constant [49 x i8] c"LZWDecode: Strip %d not terminated with EOI code\00", align 1
@.str.8 = private unnamed_addr constant [72 x i8] c"&sp->dec_codetab[0] <= free_entp && free_entp < &sp->dec_codetab[CSIZE]\00", align 1
@.str.9 = private unnamed_addr constant [65 x i8] c"LZWDecodeCompat: Not enough data at scanline %d (short %d bytes)\00", align 1
@__PRETTY_FUNCTION__.LZWDecode = private unnamed_addr constant [52 x i8] c"int LZWDecode(TIFF *, tidata_t, tsize_t, tsample_t)\00", align 1
@.str.10 = private unnamed_addr constant [59 x i8] c"LZWDecode: Not enough data at scanline %d (short %d bytes)\00", align 1
@.str.11 = private unnamed_addr constant [63 x i8] c"LZWDecode: Bogus encoding, loop in the code table; scanline %d\00", align 1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @TIFFInitLZW(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq i32 %1, 5
  br i1 %3, label %5, label %4

4:                                                ; preds = %2
  tail call void @__assert_fail(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 663, ptr noundef nonnull @__PRETTY_FUNCTION__.TIFFInitLZW) #6
  unreachable

5:                                                ; preds = %2
  %6 = tail call ptr @_TIFFmalloc(i32 noundef 184) #7
  %7 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 37
  store ptr %6, ptr %7, align 8, !tbaa !5
  %8 = icmp eq ptr %6, null
  br i1 %8, label %30, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 2
  %11 = load i32, ptr %10, align 4, !tbaa !16
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.LZWDecodeState, ptr %6, i64 0, i32 9
  store ptr null, ptr %14, align 8, !tbaa !17
  %15 = getelementptr inbounds %struct.LZWDecodeState, ptr %6, i64 0, i32 4
  store ptr null, ptr %15, align 8, !tbaa !22
  br label %16

16:                                               ; preds = %13, %9
  %17 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 21
  store ptr @LZWSetupDecode, ptr %17, align 8, !tbaa !23
  %18 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 22
  store ptr @LZWPreDecode, ptr %18, align 8, !tbaa !24
  %19 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 26
  store ptr @LZWDecode, ptr %19, align 8, !tbaa !25
  %20 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 28
  store ptr @LZWDecode, ptr %20, align 8, !tbaa !26
  %21 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 30
  store ptr @LZWDecode, ptr %21, align 8, !tbaa !27
  %22 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 23
  store ptr @_LZWtrue, ptr %22, align 8, !tbaa !28
  %23 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 24
  store ptr @_TIFFNoPreCode, ptr %23, align 8, !tbaa !29
  %24 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 25
  store ptr @_LZWtrue, ptr %24, align 8, !tbaa !30
  %25 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 27
  store ptr @_TIFFNoRowEncode, ptr %25, align 8, !tbaa !31
  %26 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 29
  store ptr @_TIFFNoStripEncode, ptr %26, align 8, !tbaa !32
  %27 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 31
  store ptr @_TIFFNoTileEncode, ptr %27, align 8, !tbaa !33
  %28 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 34
  store ptr @LZWCleanup, ptr %28, align 8, !tbaa !34
  %29 = tail call i32 @TIFFPredictorInit(ptr noundef %0) #7
  br label %31

30:                                               ; preds = %5
  tail call void (ptr, ptr, ...) @TIFFError(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3) #7
  br label %31

31:                                               ; preds = %30, %16
  %32 = phi i32 [ 0, %30 ], [ 1, %16 ]
  ret i32 %32
}

; Function Attrs: noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare ptr @_TIFFmalloc(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal noundef i32 @LZWSetupDecode(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 37
  %3 = load ptr, ptr %2, align 8, !tbaa !5
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  tail call void @__assert_fail(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 196, ptr noundef nonnull @__PRETTY_FUNCTION__.LZWSetupDecode) #6
  unreachable

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.LZWDecodeState, ptr %3, i64 0, i32 9
  %8 = load ptr, ptr %7, align 8, !tbaa !17
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %23

10:                                               ; preds = %6
  %11 = tail call ptr @_TIFFmalloc(i32 noundef 81904) #7
  store ptr %11, ptr %7, align 8, !tbaa !17
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %10
  tail call void (ptr, ptr, ...) @TIFFError(ptr noundef nonnull @LZWSetupDecode.module, ptr noundef nonnull @.str.5) #7
  br label %23

14:                                               ; preds = %10, %14
  %15 = phi i64 [ %21, %14 ], [ 255, %10 ]
  %16 = trunc i64 %15 to i8
  %17 = getelementptr inbounds %struct.code_ent, ptr %11, i64 %15, i32 2
  store i8 %16, ptr %17, align 2, !tbaa !35
  %18 = getelementptr inbounds %struct.code_ent, ptr %11, i64 %15, i32 3
  store i8 %16, ptr %18, align 1, !tbaa !37
  %19 = getelementptr inbounds %struct.code_ent, ptr %11, i64 %15, i32 1
  store i16 1, ptr %19, align 8, !tbaa !38
  %20 = getelementptr inbounds %struct.code_ent, ptr %11, i64 %15
  store ptr null, ptr %20, align 8, !tbaa !39
  %21 = add nsw i64 %15, -1
  %22 = icmp eq i64 %15, 0
  br i1 %22, label %23, label %14, !llvm.loop !40

23:                                               ; preds = %14, %6, %13
  %24 = phi i32 [ 0, %13 ], [ 1, %6 ], [ 1, %14 ]
  ret i32 %24
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @LZWPreDecode(ptr noundef %0, i16 zeroext %1) #0 {
  %3 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 37
  %4 = load ptr, ptr %3, align 8, !tbaa !5
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %2
  tail call void @__assert_fail(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 225, ptr noundef nonnull @__PRETTY_FUNCTION__.LZWPreDecode) #6
  unreachable

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 40
  %9 = load ptr, ptr %8, align 8, !tbaa !42
  %10 = load i8, ptr %9, align 1, !tbaa !43
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %31

12:                                               ; preds = %7
  %13 = getelementptr inbounds i8, ptr %9, i64 1
  %14 = load i8, ptr %13, align 1, !tbaa !43
  %15 = and i8 %14, 1
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %31, label %17

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.LZWDecodeState, ptr %4, i64 0, i32 4
  %19 = load ptr, ptr %18, align 8, !tbaa !22
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %29

21:                                               ; preds = %17
  %22 = load ptr, ptr %0, align 8, !tbaa !44
  tail call void (ptr, ptr, ...) @TIFFWarning(ptr noundef %22, ptr noundef nonnull @.str.6) #7
  %23 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 26
  store ptr @LZWDecodeCompat, ptr %23, align 8, !tbaa !25
  %24 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 28
  store ptr @LZWDecodeCompat, ptr %24, align 8, !tbaa !26
  %25 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 30
  store ptr @LZWDecodeCompat, ptr %25, align 8, !tbaa !27
  %26 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 21
  %27 = load ptr, ptr %26, align 8, !tbaa !23
  %28 = tail call i32 %27(ptr noundef nonnull %0) #7
  store ptr @LZWDecodeCompat, ptr %18, align 8, !tbaa !22
  br label %29

29:                                               ; preds = %21, %17
  %30 = getelementptr inbounds %struct.LZWBaseState, ptr %4, i64 0, i32 2
  store i16 511, ptr %30, align 2, !tbaa !45
  br label %34

31:                                               ; preds = %12, %7
  %32 = getelementptr inbounds %struct.LZWBaseState, ptr %4, i64 0, i32 2
  store i16 510, ptr %32, align 2, !tbaa !45
  %33 = getelementptr inbounds %struct.LZWDecodeState, ptr %4, i64 0, i32 4
  store ptr @LZWDecode, ptr %33, align 8, !tbaa !22
  br label %34

34:                                               ; preds = %31, %29
  %35 = getelementptr inbounds %struct.LZWBaseState, ptr %4, i64 0, i32 1
  store i16 9, ptr %35, align 8, !tbaa !46
  %36 = getelementptr inbounds %struct.LZWBaseState, ptr %4, i64 0, i32 4
  %37 = getelementptr inbounds %struct.LZWDecodeState, ptr %4, i64 0, i32 2
  store i64 0, ptr %37, align 8, !tbaa !47
  %38 = getelementptr inbounds %struct.LZWDecodeState, ptr %4, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %36, i8 0, i64 16, i1 false)
  store i64 511, ptr %38, align 8, !tbaa !48
  %39 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 43
  %40 = load i32, ptr %39, align 8, !tbaa !49
  %41 = shl i32 %40, 3
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.LZWDecodeState, ptr %4, i64 0, i32 3
  store i64 %42, ptr %43, align 8, !tbaa !50
  %44 = getelementptr inbounds %struct.LZWDecodeState, ptr %4, i64 0, i32 9
  %45 = load ptr, ptr %44, align 8, !tbaa !17
  %46 = getelementptr inbounds %struct.code_ent, ptr %45, i64 258
  %47 = getelementptr inbounds %struct.LZWDecodeState, ptr %4, i64 0, i32 7
  store ptr %46, ptr %47, align 8, !tbaa !51
  tail call void @_TIFFmemset(ptr noundef nonnull %46, i32 noundef 0, i32 noundef 77776) #7
  %48 = load ptr, ptr %44, align 8, !tbaa !17
  %49 = getelementptr inbounds %struct.code_ent, ptr %48, i64 -1
  %50 = getelementptr inbounds %struct.LZWDecodeState, ptr %4, i64 0, i32 6
  store ptr %49, ptr %50, align 8, !tbaa !52
  %51 = load i64, ptr %38, align 8, !tbaa !48
  %52 = getelementptr %struct.code_ent, ptr %48, i64 %51
  %53 = getelementptr %struct.code_ent, ptr %52, i64 -1
  %54 = getelementptr inbounds %struct.LZWDecodeState, ptr %4, i64 0, i32 8
  store ptr %53, ptr %54, align 8, !tbaa !53
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @LZWDecode(ptr nocapture noundef %0, ptr noundef writeonly %1, i32 noundef %2, i16 zeroext %3) #0 {
  %5 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 37
  %6 = load ptr, ptr %5, align 8, !tbaa !5
  %7 = sext i32 %2 to i64
  %8 = icmp eq ptr %6, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %4
  tail call void @__assert_fail(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 324, ptr noundef nonnull @__PRETTY_FUNCTION__.LZWDecode) #6
  unreachable

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.LZWDecodeState, ptr %6, i64 0, i32 2
  %12 = load i64, ptr %11, align 8, !tbaa !47
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %66, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.LZWDecodeState, ptr %6, i64 0, i32 5
  %16 = load ptr, ptr %15, align 8, !tbaa !54
  %17 = getelementptr inbounds %struct.code_ent, ptr %16, i64 0, i32 1
  %18 = load i16, ptr %17, align 8, !tbaa !38
  %19 = zext i16 %18 to i64
  %20 = sub nsw i64 %19, %12
  %21 = icmp sgt i64 %20, %7
  br i1 %21, label %22, label %47

22:                                               ; preds = %14
  %23 = add nsw i64 %12, %7
  store i64 %23, ptr %11, align 8, !tbaa !47
  br label %24

24:                                               ; preds = %24, %22
  %25 = phi ptr [ %16, %22 ], [ %27, %24 ]
  %26 = phi i64 [ %20, %22 ], [ %28, %24 ]
  %27 = load ptr, ptr %25, align 8, !tbaa !39
  %28 = add nsw i64 %26, -1
  %29 = icmp sgt i64 %28, %7
  %30 = icmp ne ptr %27, null
  %31 = select i1 %29, i1 %30, i1 false
  br i1 %31, label %24, label %32, !llvm.loop !55

32:                                               ; preds = %24
  br i1 %30, label %33, label %63

33:                                               ; preds = %32
  %34 = getelementptr inbounds i8, ptr %1, i64 %7
  br label %35

35:                                               ; preds = %35, %33
  %36 = phi ptr [ %34, %33 ], [ %41, %35 ]
  %37 = phi i64 [ %7, %33 ], [ %43, %35 ]
  %38 = phi ptr [ %27, %33 ], [ %42, %35 ]
  %39 = getelementptr inbounds %struct.code_ent, ptr %38, i64 0, i32 2
  %40 = load i8, ptr %39, align 2, !tbaa !35
  %41 = getelementptr inbounds i8, ptr %36, i64 -1
  store i8 %40, ptr %41, align 1, !tbaa !43
  %42 = load ptr, ptr %38, align 8, !tbaa !39
  %43 = add nsw i64 %37, -1
  %44 = icmp ne i64 %43, 0
  %45 = icmp ne ptr %42, null
  %46 = select i1 %44, i1 %45, i1 false
  br i1 %46, label %35, label %63, !llvm.loop !56

47:                                               ; preds = %14
  %48 = getelementptr inbounds i8, ptr %1, i64 %20
  br label %49

49:                                               ; preds = %49, %47
  %50 = phi ptr [ %48, %47 ], [ %53, %49 ]
  %51 = phi ptr [ %16, %47 ], [ %56, %49 ]
  %52 = phi i64 [ %20, %47 ], [ %57, %49 ]
  %53 = getelementptr inbounds i8, ptr %50, i64 -1
  %54 = getelementptr inbounds %struct.code_ent, ptr %51, i64 0, i32 2
  %55 = load i8, ptr %54, align 2, !tbaa !35
  %56 = load ptr, ptr %51, align 8, !tbaa !39
  store i8 %55, ptr %53, align 1, !tbaa !43
  %57 = add nsw i64 %52, -1
  %58 = icmp ne i64 %57, 0
  %59 = icmp ne ptr %56, null
  %60 = select i1 %58, i1 %59, i1 false
  br i1 %60, label %49, label %61, !llvm.loop !57

61:                                               ; preds = %49
  %62 = sub nsw i64 %7, %20
  store i64 0, ptr %11, align 8, !tbaa !47
  br label %63

63:                                               ; preds = %35, %32, %61
  %64 = phi i64 [ %62, %61 ], [ %7, %32 ], [ %43, %35 ]
  %65 = phi ptr [ %48, %61 ], [ %1, %32 ], [ %1, %35 ]
  br i1 %21, label %303, label %66

66:                                               ; preds = %63, %10
  %67 = phi i64 [ %64, %63 ], [ %7, %10 ]
  %68 = phi ptr [ %65, %63 ], [ %1, %10 ]
  %69 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 42
  %70 = load ptr, ptr %69, align 8, !tbaa !58
  %71 = getelementptr inbounds %struct.LZWBaseState, ptr %6, i64 0, i32 1
  %72 = load i16, ptr %71, align 8, !tbaa !46
  %73 = zext i16 %72 to i64
  %74 = getelementptr inbounds %struct.LZWBaseState, ptr %6, i64 0, i32 4
  %75 = load i64, ptr %74, align 8, !tbaa !59
  %76 = getelementptr inbounds %struct.LZWBaseState, ptr %6, i64 0, i32 5
  %77 = load i64, ptr %76, align 8, !tbaa !60
  %78 = getelementptr inbounds %struct.LZWDecodeState, ptr %6, i64 0, i32 1
  %79 = load i64, ptr %78, align 8, !tbaa !48
  %80 = getelementptr inbounds %struct.LZWDecodeState, ptr %6, i64 0, i32 6
  %81 = load ptr, ptr %80, align 8, !tbaa !52
  %82 = getelementptr inbounds %struct.LZWDecodeState, ptr %6, i64 0, i32 7
  %83 = load ptr, ptr %82, align 8, !tbaa !51
  %84 = getelementptr inbounds %struct.LZWDecodeState, ptr %6, i64 0, i32 8
  %85 = load ptr, ptr %84, align 8, !tbaa !53
  %86 = icmp sgt i64 %67, 0
  br i1 %86, label %87, label %287

87:                                               ; preds = %66
  %88 = getelementptr inbounds %struct.LZWDecodeState, ptr %6, i64 0, i32 3
  %89 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 13
  %90 = getelementptr inbounds %struct.LZWDecodeState, ptr %6, i64 0, i32 9
  %91 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 13
  %92 = getelementptr inbounds %struct.LZWDecodeState, ptr %6, i64 0, i32 9
  br label %93

93:                                               ; preds = %87, %184
  %94 = phi ptr [ %68, %87 ], [ %194, %184 ]
  %95 = phi ptr [ %81, %87 ], [ %193, %184 ]
  %96 = phi ptr [ %85, %87 ], [ %192, %184 ]
  %97 = phi ptr [ %83, %87 ], [ %191, %184 ]
  %98 = phi i64 [ %79, %87 ], [ %190, %184 ]
  %99 = phi i64 [ %75, %87 ], [ %189, %184 ]
  %100 = phi i64 [ %77, %87 ], [ %188, %184 ]
  %101 = phi i64 [ %73, %87 ], [ %187, %184 ]
  %102 = phi i64 [ %67, %87 ], [ %186, %184 ]
  %103 = phi ptr [ %70, %87 ], [ %185, %184 ]
  %104 = load i64, ptr %88, align 8, !tbaa !50
  %105 = icmp slt i64 %104, %101
  br i1 %105, label %106, label %109

106:                                              ; preds = %93
  %107 = load ptr, ptr %0, align 8, !tbaa !44
  %108 = load i32, ptr %89, align 8, !tbaa !61
  tail call void (ptr, ptr, ...) @TIFFWarning(ptr noundef %107, ptr noundef nonnull @.str.7, i32 noundef %108) #7
  br label %133

109:                                              ; preds = %93
  %110 = shl i64 %99, 8
  %111 = getelementptr inbounds i8, ptr %103, i64 1
  %112 = load i8, ptr %103, align 1, !tbaa !43
  %113 = zext i8 %112 to i64
  %114 = or disjoint i64 %110, %113
  %115 = add nsw i64 %100, 8
  %116 = icmp slt i64 %115, %101
  br i1 %116, label %117, label %124

117:                                              ; preds = %109
  %118 = shl i64 %114, 8
  %119 = getelementptr inbounds i8, ptr %103, i64 2
  %120 = load i8, ptr %111, align 1, !tbaa !43
  %121 = zext i8 %120 to i64
  %122 = or disjoint i64 %118, %121
  %123 = add nsw i64 %100, 16
  br label %124

124:                                              ; preds = %117, %109
  %125 = phi ptr [ %119, %117 ], [ %111, %109 ]
  %126 = phi i64 [ %123, %117 ], [ %115, %109 ]
  %127 = phi i64 [ %122, %117 ], [ %114, %109 ]
  %128 = sub nsw i64 %126, %101
  %129 = ashr i64 %127, %128
  %130 = and i64 %129, %98
  %131 = trunc i64 %130 to i16
  %132 = sub nsw i64 %104, %101
  store i64 %132, ptr %88, align 8, !tbaa !50
  br label %133

133:                                              ; preds = %124, %106
  %134 = phi ptr [ %103, %106 ], [ %125, %124 ]
  %135 = phi i16 [ 257, %106 ], [ %131, %124 ]
  %136 = phi i64 [ %100, %106 ], [ %128, %124 ]
  %137 = phi i64 [ %99, %106 ], [ %127, %124 ]
  switch i16 %135, label %196 [
    i16 257, label %287
    i16 256, label %138
  ]

138:                                              ; preds = %133
  %139 = load ptr, ptr %90, align 8, !tbaa !17
  %140 = getelementptr inbounds %struct.code_ent, ptr %139, i64 258
  %141 = getelementptr inbounds %struct.code_ent, ptr %139, i64 510
  %142 = load i64, ptr %88, align 8, !tbaa !50
  %143 = icmp slt i64 %142, 9
  br i1 %143, label %144, label %147

144:                                              ; preds = %138
  %145 = load ptr, ptr %0, align 8, !tbaa !44
  %146 = load i32, ptr %91, align 8, !tbaa !61
  tail call void (ptr, ptr, ...) @TIFFWarning(ptr noundef %145, ptr noundef nonnull @.str.7, i32 noundef %146) #7
  br label %171

147:                                              ; preds = %138
  %148 = shl i64 %137, 8
  %149 = getelementptr inbounds i8, ptr %134, i64 1
  %150 = load i8, ptr %134, align 1, !tbaa !43
  %151 = zext i8 %150 to i64
  %152 = or disjoint i64 %148, %151
  %153 = add nsw i64 %136, 8
  %154 = icmp slt i64 %136, 1
  br i1 %154, label %155, label %162

155:                                              ; preds = %147
  %156 = shl i64 %152, 8
  %157 = getelementptr inbounds i8, ptr %134, i64 2
  %158 = load i8, ptr %149, align 1, !tbaa !43
  %159 = zext i8 %158 to i64
  %160 = or disjoint i64 %156, %159
  %161 = add nsw i64 %136, 16
  br label %162

162:                                              ; preds = %155, %147
  %163 = phi ptr [ %157, %155 ], [ %149, %147 ]
  %164 = phi i64 [ %161, %155 ], [ %153, %147 ]
  %165 = phi i64 [ %160, %155 ], [ %152, %147 ]
  %166 = add nsw i64 %164, -9
  %167 = ashr i64 %165, %166
  %168 = trunc i64 %167 to i16
  %169 = and i16 %168, 511
  %170 = add nsw i64 %142, -9
  store i64 %170, ptr %88, align 8, !tbaa !50
  br label %171

171:                                              ; preds = %162, %144
  %172 = phi ptr [ %134, %144 ], [ %163, %162 ]
  %173 = phi i16 [ 257, %144 ], [ %169, %162 ]
  %174 = phi i64 [ %136, %144 ], [ %166, %162 ]
  %175 = phi i64 [ %137, %144 ], [ %165, %162 ]
  %176 = icmp eq i16 %173, 257
  br i1 %176, label %287, label %177

177:                                              ; preds = %171
  %178 = trunc i16 %173 to i8
  %179 = getelementptr inbounds i8, ptr %94, i64 1
  store i8 %178, ptr %94, align 1, !tbaa !43
  %180 = add nsw i64 %102, -1
  %181 = load ptr, ptr %90, align 8, !tbaa !17
  %182 = zext nneg i16 %173 to i64
  %183 = getelementptr inbounds %struct.code_ent, ptr %181, i64 %182
  br label %184

184:                                              ; preds = %276, %278, %177
  %185 = phi ptr [ %172, %177 ], [ %134, %278 ], [ %134, %276 ]
  %186 = phi i64 [ %180, %177 ], [ %281, %278 ], [ %277, %276 ]
  %187 = phi i64 [ 9, %177 ], [ %228, %278 ], [ %228, %276 ]
  %188 = phi i64 [ %174, %177 ], [ %136, %278 ], [ %136, %276 ]
  %189 = phi i64 [ %175, %177 ], [ %137, %278 ], [ %137, %276 ]
  %190 = phi i64 [ 511, %177 ], [ %229, %278 ], [ %229, %276 ]
  %191 = phi ptr [ %140, %177 ], [ %218, %278 ], [ %218, %276 ]
  %192 = phi ptr [ %141, %177 ], [ %230, %278 ], [ %230, %276 ]
  %193 = phi ptr [ %183, %177 ], [ %199, %278 ], [ %199, %276 ]
  %194 = phi ptr [ %179, %177 ], [ %280, %278 ], [ %264, %276 ]
  %195 = icmp sgt i64 %186, 0
  br i1 %195, label %93, label %287, !llvm.loop !62

196:                                              ; preds = %133
  %197 = load ptr, ptr %92, align 8, !tbaa !17
  %198 = zext i16 %135 to i64
  %199 = getelementptr inbounds %struct.code_ent, ptr %197, i64 %198
  %200 = icmp ule ptr %197, %97
  %201 = getelementptr inbounds %struct.code_ent, ptr %197, i64 5119
  %202 = icmp ult ptr %97, %201
  %203 = select i1 %200, i1 %202, i1 false
  br i1 %203, label %205, label %204

204:                                              ; preds = %196
  tail call void @__assert_fail(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.1, i32 noundef 398, ptr noundef nonnull @__PRETTY_FUNCTION__.LZWDecode) #6
  unreachable

205:                                              ; preds = %196
  store ptr %95, ptr %97, align 8, !tbaa !39
  %206 = getelementptr inbounds %struct.code_ent, ptr %95, i64 0, i32 3
  %207 = load i8, ptr %206, align 1, !tbaa !37
  %208 = getelementptr inbounds %struct.code_ent, ptr %97, i64 0, i32 3
  store i8 %207, ptr %208, align 1, !tbaa !37
  %209 = getelementptr inbounds %struct.code_ent, ptr %95, i64 0, i32 1
  %210 = load i16, ptr %209, align 8, !tbaa !38
  %211 = add i16 %210, 1
  %212 = getelementptr inbounds %struct.code_ent, ptr %97, i64 0, i32 1
  store i16 %211, ptr %212, align 8, !tbaa !38
  %213 = icmp ult ptr %199, %97
  %214 = getelementptr inbounds %struct.code_ent, ptr %197, i64 %198, i32 3
  %215 = select i1 %213, ptr %214, ptr %208
  %216 = load i8, ptr %215, align 1, !tbaa !37
  %217 = getelementptr inbounds %struct.code_ent, ptr %97, i64 0, i32 2
  store i8 %216, ptr %217, align 2, !tbaa !35
  %218 = getelementptr inbounds %struct.code_ent, ptr %97, i64 1
  %219 = icmp ugt ptr %218, %96
  br i1 %219, label %220, label %227

220:                                              ; preds = %205
  %221 = tail call i64 @llvm.smin.i64(i64 %101, i64 11)
  %222 = add nuw nsw i64 %221, 1
  %223 = shl i64 -2, %221
  %224 = xor i64 %223, -1
  %225 = getelementptr inbounds %struct.code_ent, ptr %197, i64 %224
  %226 = getelementptr inbounds %struct.code_ent, ptr %225, i64 -1
  br label %227

227:                                              ; preds = %220, %205
  %228 = phi i64 [ %222, %220 ], [ %101, %205 ]
  %229 = phi i64 [ %224, %220 ], [ %98, %205 ]
  %230 = phi ptr [ %226, %220 ], [ %96, %205 ]
  %231 = icmp ugt i16 %135, 255
  br i1 %231, label %232, label %278

232:                                              ; preds = %227
  %233 = getelementptr inbounds %struct.code_ent, ptr %197, i64 %198, i32 1
  %234 = load i16, ptr %233, align 8, !tbaa !38
  %235 = zext i16 %234 to i64
  %236 = icmp slt i64 %102, %235
  br i1 %236, label %237, label %263

237:                                              ; preds = %232
  %238 = getelementptr inbounds %struct.LZWDecodeState, ptr %6, i64 0, i32 5
  store ptr %199, ptr %238, align 8, !tbaa !54
  br label %239

239:                                              ; preds = %243, %237
  %240 = phi ptr [ %199, %237 ], [ %241, %243 ]
  %241 = load ptr, ptr %240, align 8, !tbaa !39
  %242 = icmp eq ptr %241, null
  br i1 %242, label %287, label %243

243:                                              ; preds = %239
  %244 = getelementptr inbounds %struct.code_ent, ptr %241, i64 0, i32 1
  %245 = load i16, ptr %244, align 8, !tbaa !38
  %246 = zext i16 %245 to i64
  %247 = icmp slt i64 %102, %246
  br i1 %247, label %239, label %248, !llvm.loop !63

248:                                              ; preds = %243
  store i64 %102, ptr %11, align 8, !tbaa !47
  %249 = getelementptr inbounds i8, ptr %94, i64 %102
  br label %250

250:                                              ; preds = %250, %248
  %251 = phi ptr [ %249, %248 ], [ %256, %250 ]
  %252 = phi i64 [ %102, %248 ], [ %258, %250 ]
  %253 = phi ptr [ %241, %248 ], [ %257, %250 ]
  %254 = getelementptr inbounds %struct.code_ent, ptr %253, i64 0, i32 2
  %255 = load i8, ptr %254, align 2, !tbaa !35
  %256 = getelementptr inbounds i8, ptr %251, i64 -1
  store i8 %255, ptr %256, align 1, !tbaa !43
  %257 = load ptr, ptr %253, align 8, !tbaa !39
  %258 = add nsw i64 %252, -1
  %259 = icmp ne i64 %258, 0
  %260 = icmp ne ptr %257, null
  %261 = select i1 %259, i1 %260, i1 false
  br i1 %261, label %250, label %262, !llvm.loop !64

262:                                              ; preds = %250
  br i1 %260, label %282, label %287

263:                                              ; preds = %232
  %264 = getelementptr inbounds i8, ptr %94, i64 %235
  br label %265

265:                                              ; preds = %265, %263
  %266 = phi ptr [ %264, %263 ], [ %268, %265 ]
  %267 = phi ptr [ %199, %263 ], [ %271, %265 ]
  %268 = getelementptr inbounds i8, ptr %266, i64 -1
  %269 = getelementptr inbounds %struct.code_ent, ptr %267, i64 0, i32 2
  %270 = load i8, ptr %269, align 2, !tbaa !35
  %271 = load ptr, ptr %267, align 8, !tbaa !39
  store i8 %270, ptr %268, align 1, !tbaa !43
  %272 = icmp ne ptr %271, null
  %273 = icmp ugt ptr %268, %94
  %274 = select i1 %272, i1 %273, i1 false
  br i1 %274, label %265, label %275, !llvm.loop !65

275:                                              ; preds = %265
  br i1 %272, label %282, label %276

276:                                              ; preds = %275
  %277 = sub nsw i64 %102, %235
  br label %184

278:                                              ; preds = %227
  %279 = trunc i16 %135 to i8
  %280 = getelementptr inbounds i8, ptr %94, i64 1
  store i8 %279, ptr %94, align 1, !tbaa !43
  %281 = add nsw i64 %102, -1
  br label %184

282:                                              ; preds = %275, %262
  %283 = phi i64 [ %258, %262 ], [ %102, %275 ]
  %284 = load ptr, ptr %0, align 8, !tbaa !44
  %285 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 11
  %286 = load i32, ptr %285, align 8, !tbaa !66
  tail call void (ptr, ptr, ...) @TIFFError(ptr noundef %284, ptr noundef nonnull @.str.11, i32 noundef %286) #7
  br label %287

287:                                              ; preds = %184, %171, %133, %239, %282, %66, %262
  %288 = phi ptr [ %134, %262 ], [ %70, %66 ], [ %134, %282 ], [ %134, %239 ], [ %134, %133 ], [ %172, %171 ], [ %185, %184 ]
  %289 = phi i64 [ %258, %262 ], [ %67, %66 ], [ %283, %282 ], [ %102, %239 ], [ %102, %133 ], [ %102, %171 ], [ %186, %184 ]
  %290 = phi i64 [ %228, %262 ], [ %73, %66 ], [ %228, %282 ], [ %228, %239 ], [ %101, %133 ], [ 9, %171 ], [ %187, %184 ]
  %291 = phi i64 [ %136, %262 ], [ %77, %66 ], [ %136, %282 ], [ %136, %239 ], [ %136, %133 ], [ %174, %171 ], [ %188, %184 ]
  %292 = phi i64 [ %137, %262 ], [ %75, %66 ], [ %137, %282 ], [ %137, %239 ], [ %137, %133 ], [ %175, %171 ], [ %189, %184 ]
  %293 = phi i64 [ %229, %262 ], [ %79, %66 ], [ %229, %282 ], [ %229, %239 ], [ %98, %133 ], [ 511, %171 ], [ %190, %184 ]
  %294 = phi ptr [ %218, %262 ], [ %83, %66 ], [ %218, %282 ], [ %218, %239 ], [ %97, %133 ], [ %140, %171 ], [ %191, %184 ]
  %295 = phi ptr [ %230, %262 ], [ %85, %66 ], [ %230, %282 ], [ %230, %239 ], [ %96, %133 ], [ %141, %171 ], [ %192, %184 ]
  %296 = phi ptr [ %199, %262 ], [ %81, %66 ], [ %199, %282 ], [ %199, %239 ], [ %95, %133 ], [ %95, %171 ], [ %193, %184 ]
  store ptr %288, ptr %69, align 8, !tbaa !58
  %297 = trunc i64 %290 to i16
  store i16 %297, ptr %71, align 8, !tbaa !46
  store i64 %292, ptr %74, align 8, !tbaa !59
  store i64 %291, ptr %76, align 8, !tbaa !60
  store i64 %293, ptr %78, align 8, !tbaa !48
  store ptr %296, ptr %80, align 8, !tbaa !52
  store ptr %294, ptr %82, align 8, !tbaa !51
  store ptr %295, ptr %84, align 8, !tbaa !53
  %298 = icmp sgt i64 %289, 0
  br i1 %298, label %299, label %303

299:                                              ; preds = %287
  %300 = load ptr, ptr %0, align 8, !tbaa !44
  %301 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 11
  %302 = load i32, ptr %301, align 8, !tbaa !66
  tail call void (ptr, ptr, ...) @TIFFError(ptr noundef %300, ptr noundef nonnull @.str.10, i32 noundef %302, i64 noundef %289) #7
  br label %303

303:                                              ; preds = %287, %63, %299
  %304 = phi i32 [ 0, %299 ], [ 1, %63 ], [ 1, %287 ]
  ret i32 %304
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @_LZWtrue(ptr nocapture readnone %0) #3 {
  ret i32 1
}

declare i32 @_TIFFNoPreCode(ptr noundef, i16 noundef zeroext) #2

declare i32 @_TIFFNoRowEncode(ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext) #2

declare i32 @_TIFFNoStripEncode(ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext) #2

declare i32 @_TIFFNoTileEncode(ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext) #2

; Function Attrs: nounwind uwtable
define internal void @LZWCleanup(ptr nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 37
  %3 = load ptr, ptr %2, align 8, !tbaa !5
  %4 = icmp eq ptr %3, null
  br i1 %4, label %16, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !16
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %14

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.LZWDecodeState, ptr %3, i64 0, i32 9
  %11 = load ptr, ptr %10, align 8, !tbaa !17
  %12 = icmp eq ptr %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %9
  tail call void @_TIFFfree(ptr noundef nonnull %11) #7
  br label %14

14:                                               ; preds = %9, %13, %5
  %15 = load ptr, ptr %2, align 8, !tbaa !5
  tail call void @_TIFFfree(ptr noundef %15) #7
  store ptr null, ptr %2, align 8, !tbaa !5
  br label %16

16:                                               ; preds = %14, %1
  ret void
}

declare i32 @TIFFPredictorInit(ptr noundef) local_unnamed_addr #2

declare void @TIFFError(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

declare void @TIFFWarning(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal noundef i32 @LZWDecodeCompat(ptr nocapture noundef %0, ptr nocapture noundef writeonly %1, i32 noundef %2, i16 zeroext %3) #0 {
  %5 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 37
  %6 = load ptr, ptr %5, align 8, !tbaa !5
  %7 = sext i32 %2 to i64
  %8 = icmp eq ptr %6, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %4
  tail call void @__assert_fail(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 504, ptr noundef nonnull @__PRETTY_FUNCTION__.LZWDecodeCompat) #6
  unreachable

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.LZWDecodeState, ptr %6, i64 0, i32 2
  %12 = load i64, ptr %11, align 8, !tbaa !47
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %59, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.LZWDecodeState, ptr %6, i64 0, i32 5
  %16 = load ptr, ptr %15, align 8, !tbaa !54
  %17 = getelementptr inbounds %struct.code_ent, ptr %16, i64 0, i32 1
  %18 = load i16, ptr %17, align 8, !tbaa !38
  %19 = zext i16 %18 to i64
  %20 = sub nsw i64 %19, %12
  %21 = icmp sgt i64 %20, %7
  br i1 %21, label %22, label %42

22:                                               ; preds = %14
  %23 = add nsw i64 %12, %7
  store i64 %23, ptr %11, align 8, !tbaa !47
  br label %24

24:                                               ; preds = %24, %22
  %25 = phi ptr [ %16, %22 ], [ %27, %24 ]
  %26 = phi i64 [ %20, %22 ], [ %28, %24 ]
  %27 = load ptr, ptr %25, align 8, !tbaa !39
  %28 = add nsw i64 %26, -1
  %29 = icmp sgt i64 %28, %7
  br i1 %29, label %24, label %30, !llvm.loop !67

30:                                               ; preds = %24
  %31 = getelementptr inbounds i8, ptr %1, i64 %7
  br label %32

32:                                               ; preds = %32, %30
  %33 = phi i64 [ %7, %30 ], [ %40, %32 ]
  %34 = phi ptr [ %31, %30 ], [ %38, %32 ]
  %35 = phi ptr [ %27, %30 ], [ %39, %32 ]
  %36 = getelementptr inbounds %struct.code_ent, ptr %35, i64 0, i32 2
  %37 = load i8, ptr %36, align 2, !tbaa !35
  %38 = getelementptr inbounds i8, ptr %34, i64 -1
  store i8 %37, ptr %38, align 1, !tbaa !43
  %39 = load ptr, ptr %35, align 8, !tbaa !39
  %40 = add nsw i64 %33, -1
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %56, label %32, !llvm.loop !68

42:                                               ; preds = %14
  %43 = getelementptr inbounds i8, ptr %1, i64 %20
  br label %44

44:                                               ; preds = %44, %42
  %45 = phi ptr [ %43, %42 ], [ %50, %44 ]
  %46 = phi ptr [ %16, %42 ], [ %51, %44 ]
  %47 = phi i64 [ %20, %42 ], [ %52, %44 ]
  %48 = getelementptr inbounds %struct.code_ent, ptr %46, i64 0, i32 2
  %49 = load i8, ptr %48, align 2, !tbaa !35
  %50 = getelementptr inbounds i8, ptr %45, i64 -1
  store i8 %49, ptr %50, align 1, !tbaa !43
  %51 = load ptr, ptr %46, align 8, !tbaa !39
  %52 = add nsw i64 %47, -1
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %54, label %44, !llvm.loop !69

54:                                               ; preds = %44
  %55 = sub nsw i64 %7, %20
  store i64 0, ptr %11, align 8, !tbaa !47
  br label %56

56:                                               ; preds = %32, %54
  %57 = phi ptr [ %43, %54 ], [ %1, %32 ]
  %58 = phi i64 [ %55, %54 ], [ 0, %32 ]
  br i1 %21, label %287, label %59

59:                                               ; preds = %56, %10
  %60 = phi ptr [ %57, %56 ], [ %1, %10 ]
  %61 = phi i64 [ %58, %56 ], [ %7, %10 ]
  %62 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 42
  %63 = load ptr, ptr %62, align 8, !tbaa !58
  %64 = getelementptr inbounds %struct.LZWBaseState, ptr %6, i64 0, i32 1
  %65 = load i16, ptr %64, align 8, !tbaa !46
  %66 = zext i16 %65 to i32
  %67 = getelementptr inbounds %struct.LZWBaseState, ptr %6, i64 0, i32 4
  %68 = load i64, ptr %67, align 8, !tbaa !59
  %69 = getelementptr inbounds %struct.LZWBaseState, ptr %6, i64 0, i32 5
  %70 = load i64, ptr %69, align 8, !tbaa !60
  %71 = getelementptr inbounds %struct.LZWDecodeState, ptr %6, i64 0, i32 1
  %72 = load i64, ptr %71, align 8, !tbaa !48
  %73 = getelementptr inbounds %struct.LZWDecodeState, ptr %6, i64 0, i32 6
  %74 = load ptr, ptr %73, align 8, !tbaa !52
  %75 = getelementptr inbounds %struct.LZWDecodeState, ptr %6, i64 0, i32 7
  %76 = load ptr, ptr %75, align 8, !tbaa !51
  %77 = getelementptr inbounds %struct.LZWDecodeState, ptr %6, i64 0, i32 8
  %78 = load ptr, ptr %77, align 8, !tbaa !53
  %79 = icmp sgt i64 %61, 0
  br i1 %79, label %80, label %271

80:                                               ; preds = %59
  %81 = getelementptr inbounds %struct.LZWDecodeState, ptr %6, i64 0, i32 3
  %82 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 13
  %83 = getelementptr inbounds %struct.LZWDecodeState, ptr %6, i64 0, i32 9
  %84 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 13
  %85 = getelementptr inbounds %struct.LZWDecodeState, ptr %6, i64 0, i32 9
  br label %86

86:                                               ; preds = %80, %183
  %87 = phi ptr [ %74, %80 ], [ %193, %183 ]
  %88 = phi ptr [ %78, %80 ], [ %192, %183 ]
  %89 = phi ptr [ %76, %80 ], [ %191, %183 ]
  %90 = phi i64 [ %72, %80 ], [ %190, %183 ]
  %91 = phi i64 [ %68, %80 ], [ %189, %183 ]
  %92 = phi i64 [ %70, %80 ], [ %188, %183 ]
  %93 = phi i32 [ %66, %80 ], [ %187, %183 ]
  %94 = phi ptr [ %63, %80 ], [ %186, %183 ]
  %95 = phi i64 [ %61, %80 ], [ %185, %183 ]
  %96 = phi ptr [ %60, %80 ], [ %184, %183 ]
  %97 = load i64, ptr %81, align 8, !tbaa !50
  %98 = zext nneg i32 %93 to i64
  %99 = icmp slt i64 %97, %98
  br i1 %99, label %100, label %103

100:                                              ; preds = %86
  %101 = load ptr, ptr %0, align 8, !tbaa !44
  %102 = load i32, ptr %82, align 8, !tbaa !61
  tail call void (ptr, ptr, ...) @TIFFWarning(ptr noundef %101, ptr noundef nonnull @.str.7, i32 noundef %102) #7
  br label %129

103:                                              ; preds = %86
  %104 = getelementptr inbounds i8, ptr %94, i64 1
  %105 = load i8, ptr %94, align 1, !tbaa !43
  %106 = zext i8 %105 to i64
  %107 = shl i64 %106, %92
  %108 = or i64 %107, %91
  %109 = add nsw i64 %92, 8
  %110 = icmp slt i64 %109, %98
  br i1 %110, label %111, label %118

111:                                              ; preds = %103
  %112 = getelementptr inbounds i8, ptr %94, i64 2
  %113 = load i8, ptr %104, align 1, !tbaa !43
  %114 = zext i8 %113 to i64
  %115 = shl i64 %114, %109
  %116 = or i64 %115, %108
  %117 = add nsw i64 %92, 16
  br label %118

118:                                              ; preds = %111, %103
  %119 = phi ptr [ %112, %111 ], [ %104, %103 ]
  %120 = phi i64 [ %117, %111 ], [ %109, %103 ]
  %121 = phi i64 [ %116, %111 ], [ %108, %103 ]
  %122 = and i64 %121, %90
  %123 = trunc i64 %122 to i32
  %124 = and i32 %123, 65535
  %125 = zext nneg i32 %93 to i64
  %126 = ashr i64 %121, %125
  %127 = sub nsw i64 %120, %98
  %128 = sub nsw i64 %97, %98
  store i64 %128, ptr %81, align 8, !tbaa !50
  br label %129

129:                                              ; preds = %118, %100
  %130 = phi ptr [ %94, %100 ], [ %119, %118 ]
  %131 = phi i32 [ 257, %100 ], [ %124, %118 ]
  %132 = phi i64 [ %92, %100 ], [ %127, %118 ]
  %133 = phi i64 [ %91, %100 ], [ %126, %118 ]
  %134 = trunc i32 %131 to i16
  switch i16 %134, label %195 [
    i16 257, label %271
    i16 256, label %135
  ]

135:                                              ; preds = %129
  %136 = load ptr, ptr %83, align 8, !tbaa !17
  %137 = getelementptr inbounds %struct.code_ent, ptr %136, i64 258
  %138 = getelementptr inbounds %struct.code_ent, ptr %136, i64 511
  %139 = load i64, ptr %81, align 8, !tbaa !50
  %140 = icmp slt i64 %139, 9
  br i1 %140, label %141, label %144

141:                                              ; preds = %135
  %142 = load ptr, ptr %0, align 8, !tbaa !44
  %143 = load i32, ptr %84, align 8, !tbaa !61
  tail call void (ptr, ptr, ...) @TIFFWarning(ptr noundef %142, ptr noundef nonnull @.str.7, i32 noundef %143) #7
  br label %168

144:                                              ; preds = %135
  %145 = getelementptr inbounds i8, ptr %130, i64 1
  %146 = load i8, ptr %130, align 1, !tbaa !43
  %147 = zext i8 %146 to i64
  %148 = shl i64 %147, %132
  %149 = or i64 %148, %133
  %150 = add nsw i64 %132, 8
  %151 = icmp slt i64 %132, 1
  br i1 %151, label %152, label %159

152:                                              ; preds = %144
  %153 = getelementptr inbounds i8, ptr %130, i64 2
  %154 = load i8, ptr %145, align 1, !tbaa !43
  %155 = zext i8 %154 to i64
  %156 = shl nuw nsw i64 %155, %150
  %157 = or i64 %156, %149
  %158 = add nsw i64 %132, 16
  br label %159

159:                                              ; preds = %152, %144
  %160 = phi ptr [ %153, %152 ], [ %145, %144 ]
  %161 = phi i64 [ %158, %152 ], [ %150, %144 ]
  %162 = phi i64 [ %157, %152 ], [ %149, %144 ]
  %163 = trunc i64 %162 to i32
  %164 = and i32 %163, 511
  %165 = ashr i64 %162, 9
  %166 = add nsw i64 %161, -9
  %167 = add nsw i64 %139, -9
  store i64 %167, ptr %81, align 8, !tbaa !50
  br label %168

168:                                              ; preds = %159, %141
  %169 = phi ptr [ %130, %141 ], [ %160, %159 ]
  %170 = phi i32 [ 257, %141 ], [ %164, %159 ]
  %171 = phi i64 [ %132, %141 ], [ %166, %159 ]
  %172 = phi i64 [ %133, %141 ], [ %165, %159 ]
  %173 = icmp eq i32 %170, 257
  br i1 %173, label %271, label %174

174:                                              ; preds = %168
  %175 = trunc i32 %170 to i8
  %176 = getelementptr inbounds i8, ptr %96, i64 1
  store i8 %175, ptr %96, align 1, !tbaa !43
  %177 = add nsw i64 %95, -1
  %178 = load ptr, ptr %83, align 8, !tbaa !17
  %179 = zext nneg i32 %170 to i64
  %180 = getelementptr inbounds %struct.code_ent, ptr %178, i64 %179
  br label %183

181:                                              ; preds = %259
  %182 = sub nsw i64 %95, %234
  br label %183

183:                                              ; preds = %181, %267, %174
  %184 = phi ptr [ %176, %174 ], [ %269, %267 ], [ %258, %181 ]
  %185 = phi i64 [ %177, %174 ], [ %270, %267 ], [ %182, %181 ]
  %186 = phi ptr [ %169, %174 ], [ %130, %267 ], [ %130, %181 ]
  %187 = phi i32 [ 9, %174 ], [ %227, %267 ], [ %227, %181 ]
  %188 = phi i64 [ %171, %174 ], [ %132, %267 ], [ %132, %181 ]
  %189 = phi i64 [ %172, %174 ], [ %133, %267 ], [ %133, %181 ]
  %190 = phi i64 [ 511, %174 ], [ %228, %267 ], [ %228, %181 ]
  %191 = phi ptr [ %137, %174 ], [ %217, %267 ], [ %217, %181 ]
  %192 = phi ptr [ %138, %174 ], [ %229, %267 ], [ %229, %181 ]
  %193 = phi ptr [ %180, %174 ], [ %198, %267 ], [ %198, %181 ]
  %194 = icmp sgt i64 %185, 0
  br i1 %194, label %86, label %271, !llvm.loop !70

195:                                              ; preds = %129
  %196 = load ptr, ptr %85, align 8, !tbaa !17
  %197 = zext nneg i32 %131 to i64
  %198 = getelementptr inbounds %struct.code_ent, ptr %196, i64 %197
  %199 = icmp ule ptr %196, %89
  %200 = getelementptr inbounds %struct.code_ent, ptr %196, i64 5119
  %201 = icmp ult ptr %89, %200
  %202 = select i1 %199, i1 %201, i1 false
  br i1 %202, label %204, label %203

203:                                              ; preds = %195
  tail call void @__assert_fail(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.1, i32 noundef 573, ptr noundef nonnull @__PRETTY_FUNCTION__.LZWDecodeCompat) #6
  unreachable

204:                                              ; preds = %195
  store ptr %87, ptr %89, align 8, !tbaa !39
  %205 = getelementptr inbounds %struct.code_ent, ptr %87, i64 0, i32 3
  %206 = load i8, ptr %205, align 1, !tbaa !37
  %207 = getelementptr inbounds %struct.code_ent, ptr %89, i64 0, i32 3
  store i8 %206, ptr %207, align 1, !tbaa !37
  %208 = getelementptr inbounds %struct.code_ent, ptr %87, i64 0, i32 1
  %209 = load i16, ptr %208, align 8, !tbaa !38
  %210 = add i16 %209, 1
  %211 = getelementptr inbounds %struct.code_ent, ptr %89, i64 0, i32 1
  store i16 %210, ptr %211, align 8, !tbaa !38
  %212 = icmp ult ptr %198, %89
  %213 = getelementptr inbounds %struct.code_ent, ptr %196, i64 %197, i32 3
  %214 = select i1 %212, ptr %213, ptr %207
  %215 = load i8, ptr %214, align 1, !tbaa !37
  %216 = getelementptr inbounds %struct.code_ent, ptr %89, i64 0, i32 2
  store i8 %215, ptr %216, align 2, !tbaa !35
  %217 = getelementptr inbounds %struct.code_ent, ptr %89, i64 1
  %218 = icmp ugt ptr %217, %88
  br i1 %218, label %219, label %226

219:                                              ; preds = %204
  %220 = tail call i32 @llvm.smin.i32(i32 %93, i32 11)
  %221 = add nuw nsw i32 %220, 1
  %222 = zext nneg i32 %221 to i64
  %223 = shl nsw i64 -1, %222
  %224 = xor i64 %223, -1
  %225 = getelementptr inbounds %struct.code_ent, ptr %196, i64 %224
  br label %226

226:                                              ; preds = %219, %204
  %227 = phi i32 [ %221, %219 ], [ %93, %204 ]
  %228 = phi i64 [ %224, %219 ], [ %90, %204 ]
  %229 = phi ptr [ %225, %219 ], [ %88, %204 ]
  %230 = icmp ugt i32 %131, 255
  br i1 %230, label %231, label %267

231:                                              ; preds = %226
  %232 = getelementptr inbounds %struct.code_ent, ptr %196, i64 %197, i32 1
  %233 = load i16, ptr %232, align 8, !tbaa !38
  %234 = zext i16 %233 to i64
  %235 = icmp slt i64 %95, %234
  br i1 %235, label %236, label %257

236:                                              ; preds = %231
  %237 = getelementptr inbounds %struct.LZWDecodeState, ptr %6, i64 0, i32 5
  store ptr %198, ptr %237, align 8, !tbaa !54
  br label %238

238:                                              ; preds = %238, %236
  %239 = phi ptr [ %198, %236 ], [ %240, %238 ]
  %240 = load ptr, ptr %239, align 8, !tbaa !39
  %241 = getelementptr inbounds %struct.code_ent, ptr %240, i64 0, i32 1
  %242 = load i16, ptr %241, align 8, !tbaa !38
  %243 = zext i16 %242 to i64
  %244 = icmp slt i64 %95, %243
  br i1 %244, label %238, label %245, !llvm.loop !71

245:                                              ; preds = %238
  store i64 %95, ptr %11, align 8, !tbaa !47
  %246 = getelementptr inbounds i8, ptr %96, i64 %95
  br label %247

247:                                              ; preds = %247, %245
  %248 = phi i64 [ %95, %245 ], [ %255, %247 ]
  %249 = phi ptr [ %246, %245 ], [ %253, %247 ]
  %250 = phi ptr [ %240, %245 ], [ %254, %247 ]
  %251 = getelementptr inbounds %struct.code_ent, ptr %250, i64 0, i32 2
  %252 = load i8, ptr %251, align 2, !tbaa !35
  %253 = getelementptr inbounds i8, ptr %249, i64 -1
  store i8 %252, ptr %253, align 1, !tbaa !43
  %254 = load ptr, ptr %250, align 8, !tbaa !39
  %255 = add nsw i64 %248, -1
  %256 = icmp eq i64 %255, 0
  br i1 %256, label %271, label %247, !llvm.loop !72

257:                                              ; preds = %231
  %258 = getelementptr inbounds i8, ptr %96, i64 %234
  br label %259

259:                                              ; preds = %259, %257
  %260 = phi ptr [ %258, %257 ], [ %264, %259 ]
  %261 = phi ptr [ %198, %257 ], [ %265, %259 ]
  %262 = getelementptr inbounds %struct.code_ent, ptr %261, i64 0, i32 2
  %263 = load i8, ptr %262, align 2, !tbaa !35
  %264 = getelementptr inbounds i8, ptr %260, i64 -1
  store i8 %263, ptr %264, align 1, !tbaa !43
  %265 = load ptr, ptr %261, align 8, !tbaa !39
  %266 = icmp eq ptr %265, null
  br i1 %266, label %181, label %259, !llvm.loop !73

267:                                              ; preds = %226
  %268 = trunc i32 %131 to i8
  %269 = getelementptr inbounds i8, ptr %96, i64 1
  store i8 %268, ptr %96, align 1, !tbaa !43
  %270 = add nsw i64 %95, -1
  br label %183

271:                                              ; preds = %183, %168, %129, %247, %59
  %272 = phi i64 [ %61, %59 ], [ 0, %247 ], [ %95, %129 ], [ %95, %168 ], [ %185, %183 ]
  %273 = phi ptr [ %63, %59 ], [ %130, %247 ], [ %130, %129 ], [ %169, %168 ], [ %186, %183 ]
  %274 = phi i32 [ %66, %59 ], [ %227, %247 ], [ %93, %129 ], [ 9, %168 ], [ %187, %183 ]
  %275 = phi i64 [ %70, %59 ], [ %132, %247 ], [ %132, %129 ], [ %171, %168 ], [ %188, %183 ]
  %276 = phi i64 [ %68, %59 ], [ %133, %247 ], [ %133, %129 ], [ %172, %168 ], [ %189, %183 ]
  %277 = phi i64 [ %72, %59 ], [ %228, %247 ], [ %90, %129 ], [ 511, %168 ], [ %190, %183 ]
  %278 = phi ptr [ %76, %59 ], [ %217, %247 ], [ %89, %129 ], [ %137, %168 ], [ %191, %183 ]
  %279 = phi ptr [ %78, %59 ], [ %229, %247 ], [ %88, %129 ], [ %138, %168 ], [ %192, %183 ]
  %280 = phi ptr [ %74, %59 ], [ %198, %247 ], [ %87, %129 ], [ %87, %168 ], [ %193, %183 ]
  store ptr %273, ptr %62, align 8, !tbaa !58
  %281 = trunc i32 %274 to i16
  store i16 %281, ptr %64, align 8, !tbaa !46
  store i64 %276, ptr %67, align 8, !tbaa !59
  store i64 %275, ptr %69, align 8, !tbaa !60
  store i64 %277, ptr %71, align 8, !tbaa !48
  store ptr %280, ptr %73, align 8, !tbaa !52
  store ptr %278, ptr %75, align 8, !tbaa !51
  store ptr %279, ptr %77, align 8, !tbaa !53
  %282 = icmp sgt i64 %272, 0
  br i1 %282, label %283, label %287

283:                                              ; preds = %271
  %284 = load ptr, ptr %0, align 8, !tbaa !44
  %285 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 11
  %286 = load i32, ptr %285, align 8, !tbaa !66
  tail call void (ptr, ptr, ...) @TIFFError(ptr noundef %284, ptr noundef nonnull @.str.9, i32 noundef %286, i64 noundef %272) #7
  br label %287

287:                                              ; preds = %271, %56, %283
  %288 = phi i32 [ 0, %283 ], [ 1, %56 ], [ 1, %271 ]
  ret i32 %288
}

declare void @_TIFFmemset(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @_TIFFfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { noreturn nounwind }
attributes #7 = { nounwind }

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
!16 = !{!6, !10, i64 12}
!17 = !{!18, !7, i64 176}
!18 = !{!"", !19, i64 0, !21, i64 112, !21, i64 120, !21, i64 128, !7, i64 136, !7, i64 144, !7, i64 152, !7, i64 160, !7, i64 168, !7, i64 176}
!19 = !{!"", !20, i64 0, !12, i64 88, !12, i64 90, !12, i64 92, !21, i64 96, !21, i64 104}
!20 = !{!"", !10, i64 0, !10, i64 4, !10, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80}
!21 = !{!"long", !8, i64 0}
!22 = !{!18, !7, i64 136}
!23 = !{!6, !7, i64 576}
!24 = !{!6, !7, i64 584}
!25 = !{!6, !7, i64 616}
!26 = !{!6, !7, i64 632}
!27 = !{!6, !7, i64 648}
!28 = !{!6, !7, i64 592}
!29 = !{!6, !7, i64 600}
!30 = !{!6, !7, i64 608}
!31 = !{!6, !7, i64 624}
!32 = !{!6, !7, i64 640}
!33 = !{!6, !7, i64 656}
!34 = !{!6, !7, i64 680}
!35 = !{!36, !8, i64 10}
!36 = !{!"code_ent", !7, i64 0, !12, i64 8, !8, i64 10, !8, i64 11}
!37 = !{!36, !8, i64 11}
!38 = !{!36, !12, i64 8}
!39 = !{!36, !7, i64 0}
!40 = distinct !{!40, !41}
!41 = !{!"llvm.loop.unroll.disable"}
!42 = !{!6, !7, i64 720}
!43 = !{!8, !8, i64 0}
!44 = !{!6, !7, i64 0}
!45 = !{!18, !12, i64 90}
!46 = !{!18, !12, i64 88}
!47 = !{!18, !21, i64 120}
!48 = !{!18, !21, i64 112}
!49 = !{!6, !10, i64 744}
!50 = !{!18, !21, i64 128}
!51 = !{!18, !7, i64 160}
!52 = !{!18, !7, i64 152}
!53 = !{!18, !7, i64 168}
!54 = !{!18, !7, i64 144}
!55 = distinct !{!55, !41}
!56 = distinct !{!56, !41}
!57 = distinct !{!57, !41}
!58 = !{!6, !7, i64 736}
!59 = !{!18, !21, i64 96}
!60 = !{!18, !21, i64 104}
!61 = !{!6, !10, i64 544}
!62 = distinct !{!62, !41}
!63 = distinct !{!63, !41}
!64 = distinct !{!64, !41}
!65 = distinct !{!65, !41}
!66 = !{!6, !10, i64 536}
!67 = distinct !{!67, !41}
!68 = distinct !{!68, !41}
!69 = distinct !{!69, !41}
!70 = distinct !{!70, !41}
!71 = distinct !{!71, !41}
!72 = distinct !{!72, !41}
!73 = distinct !{!73, !41}
