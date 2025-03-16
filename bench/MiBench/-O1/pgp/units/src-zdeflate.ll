; ModuleID = 'src/zdeflate.c'
source_filename = "src/zdeflate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.config = type { i32, i32, i32, i8 }

@.str = private unnamed_addr constant [15 x i8] c"bad pack level\00", align 1
@head = dso_local local_unnamed_addr global [32768 x i16] zeroinitializer, align 16
@configuration_table = internal unnamed_addr constant [10 x %struct.config] [%struct.config zeroinitializer, %struct.config { i32 4, i32 4, i32 16, i8 4 }, %struct.config { i32 6, i32 8, i32 16, i8 0 }, %struct.config { i32 8, i32 16, i32 32, i8 0 }, %struct.config { i32 8, i32 32, i32 64, i8 0 }, %struct.config { i32 8, i32 64, i32 128, i8 0 }, %struct.config { i32 8, i32 128, i32 256, i8 0 }, %struct.config { i32 8, i32 128, i32 512, i8 0 }, %struct.config { i32 32, i32 258, i32 1024, i8 0 }, %struct.config { i32 32, i32 258, i32 4096, i8 2 }], align 16
@max_lazy_match = internal unnamed_addr global i32 0, align 4
@good_match = dso_local local_unnamed_addr global i32 0, align 4
@max_chain_length = dso_local local_unnamed_addr global i32 0, align 4
@strstart = dso_local local_unnamed_addr global i32 0, align 4
@block_start = dso_local local_unnamed_addr global i64 0, align 8
@slide = dso_local global [16384 x i8] zeroinitializer, align 16
@lookahead = internal unnamed_addr global i32 0, align 4
@eofile = internal unnamed_addr global i1 false, align 4
@ins_h = internal unnamed_addr global i32 0, align 4
@prev_length = dso_local local_unnamed_addr global i32 0, align 4
@match_start = dso_local local_unnamed_addr global i32 0, align 4
@prev = dso_local local_unnamed_addr global [8192 x i16] zeroinitializer, align 16

; Function Attrs: nounwind uwtable
define dso_local void @lm_init(i32 noundef %0, ptr nocapture noundef %1) local_unnamed_addr #0 {
  %3 = add i32 %0, -10
  %4 = icmp ult i32 %3, -9
  br i1 %4, label %5, label %6

5:                                                ; preds = %2
  tail call void @error(ptr noundef nonnull @.str) #7
  br label %6

6:                                                ; preds = %2, %5
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(65536) @head, i8 0, i64 65536, i1 false), !tbaa !5
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds [10 x %struct.config], ptr @configuration_table, i64 0, i64 %7
  %9 = getelementptr inbounds [10 x %struct.config], ptr @configuration_table, i64 0, i64 %7, i32 1
  %10 = load i32, ptr %9, align 4, !tbaa !9
  store i32 %10, ptr @max_lazy_match, align 4, !tbaa !12
  %11 = load i32, ptr %8, align 16, !tbaa !13
  store i32 %11, ptr @good_match, align 4, !tbaa !12
  %12 = getelementptr inbounds [10 x %struct.config], ptr @configuration_table, i64 0, i64 %7, i32 2
  %13 = load i32, ptr %12, align 8, !tbaa !14
  store i32 %13, ptr @max_chain_length, align 4, !tbaa !12
  %14 = getelementptr inbounds [10 x %struct.config], ptr @configuration_table, i64 0, i64 %7, i32 3
  %15 = load i8, ptr %14, align 4, !tbaa !15
  %16 = load i16, ptr %1, align 2, !tbaa !5
  %17 = zext i8 %15 to i16
  %18 = or i16 %16, %17
  store i16 %18, ptr %1, align 2, !tbaa !5
  store i32 0, ptr @strstart, align 4, !tbaa !12
  store i64 0, ptr @block_start, align 8, !tbaa !16
  %19 = tail call i32 @read_buf(ptr noundef nonnull @slide, i32 noundef 16384) #7
  store i32 %19, ptr @lookahead, align 4, !tbaa !12
  %20 = add i32 %19, 1
  %21 = icmp ult i32 %20, 2
  br i1 %21, label %22, label %23

22:                                               ; preds = %6
  store i1 true, ptr @eofile, align 4
  store i32 0, ptr @lookahead, align 4, !tbaa !12
  br label %44

23:                                               ; preds = %6
  store i1 false, ptr @eofile, align 4
  %24 = load i32, ptr @lookahead, align 4, !tbaa !12
  %25 = icmp ugt i32 %24, 261
  br i1 %25, label %31, label %26

26:                                               ; preds = %23, %26
  tail call fastcc void @fill_window()
  %27 = load i32, ptr @lookahead, align 4, !tbaa !12
  %28 = icmp ugt i32 %27, 261
  %29 = load i1, ptr @eofile, align 4
  %30 = select i1 %28, i1 true, i1 %29
  br i1 %30, label %31, label %26, !llvm.loop !18

31:                                               ; preds = %26, %23
  store i32 0, ptr @ins_h, align 4, !tbaa !12
  br label %32

32:                                               ; preds = %31, %32
  %33 = phi i64 [ 0, %31 ], [ %41, %32 ]
  %34 = phi i32 [ 0, %31 ], [ %40, %32 ]
  %35 = shl nuw nsw i32 %34, 5
  %36 = getelementptr inbounds [16384 x i8], ptr @slide, i64 0, i64 %33
  %37 = load i8, ptr %36, align 1, !tbaa !20
  %38 = zext i8 %37 to i32
  %39 = and i32 %35, 32736
  %40 = xor i32 %39, %38
  %41 = add nuw nsw i64 %33, 1
  %42 = icmp eq i64 %33, 0
  br i1 %42, label %32, label %43, !llvm.loop !21

43:                                               ; preds = %32
  store i32 %40, ptr @ins_h, align 4, !tbaa !12
  br label %44

44:                                               ; preds = %43, %22
  ret void
}

declare void @error(ptr noundef) local_unnamed_addr #1

declare i32 @read_buf(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc void @fill_window() unnamed_addr #0 {
  %1 = load i32, ptr @lookahead, align 4, !tbaa !12
  %2 = load i32, ptr @strstart, align 4, !tbaa !12
  %3 = add i32 %2, %1
  %4 = icmp eq i32 %3, 16385
  br i1 %4, label %34, label %5

5:                                                ; preds = %0
  %6 = sub i32 16384, %3
  %7 = icmp ult i32 %6, 2
  br i1 %7, label %8, label %34

8:                                                ; preds = %5
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(8192) @slide, ptr noundef nonnull align 16 dereferenceable(8192) getelementptr inbounds ([16384 x i8], ptr @slide, i64 0, i64 8192), i64 8192, i1 false)
  %9 = load i32, ptr @match_start, align 4, !tbaa !12
  %10 = add i32 %9, -8192
  store i32 %10, ptr @match_start, align 4, !tbaa !12
  %11 = add i32 %2, -8192
  store i32 %11, ptr @strstart, align 4, !tbaa !12
  %12 = load i64, ptr @block_start, align 8, !tbaa !16
  %13 = add nsw i64 %12, -8192
  store i64 %13, ptr @block_start, align 8, !tbaa !16
  br label %14

14:                                               ; preds = %8, %14
  %15 = phi i64 [ 0, %8 ], [ %21, %14 ]
  %16 = getelementptr inbounds [32768 x i16], ptr @head, i64 0, i64 %15
  %17 = load i16, ptr %16, align 2, !tbaa !5
  %18 = icmp ugt i16 %17, 8191
  %19 = add i16 %17, -8192
  %20 = select i1 %18, i16 %19, i16 0
  store i16 %20, ptr %16, align 2, !tbaa !5
  %21 = add nuw nsw i64 %15, 1
  %22 = icmp eq i64 %21, 32768
  br i1 %22, label %23, label %14, !llvm.loop !22

23:                                               ; preds = %14, %23
  %24 = phi i64 [ %30, %23 ], [ 0, %14 ]
  %25 = getelementptr inbounds [8192 x i16], ptr @prev, i64 0, i64 %24
  %26 = load i16, ptr %25, align 2, !tbaa !5
  %27 = icmp ugt i16 %26, 8191
  %28 = add i16 %26, -8192
  %29 = select i1 %27, i16 %28, i16 0
  store i16 %29, ptr %25, align 2, !tbaa !5
  %30 = add nuw nsw i64 %24, 1
  %31 = icmp eq i64 %30, 8192
  br i1 %31, label %32, label %23, !llvm.loop !23

32:                                               ; preds = %23
  %33 = sub i32 24576, %3
  br label %34

34:                                               ; preds = %0, %5, %32
  %35 = phi i32 [ %33, %32 ], [ %6, %5 ], [ -2, %0 ]
  %36 = load i32, ptr @strstart, align 4, !tbaa !12
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds i8, ptr @slide, i64 %37
  %39 = zext i32 %1 to i64
  %40 = getelementptr inbounds i8, ptr %38, i64 %39
  %41 = tail call i32 @read_buf(ptr noundef nonnull %40, i32 noundef %35) #7
  %42 = add i32 %41, 1
  %43 = icmp ult i32 %42, 2
  br i1 %43, label %44, label %45

44:                                               ; preds = %34
  store i1 true, ptr @eofile, align 4
  br label %48

45:                                               ; preds = %34
  %46 = load i32, ptr @lookahead, align 4, !tbaa !12
  %47 = add i32 %46, %41
  store i32 %47, ptr @lookahead, align 4, !tbaa !12
  br label %48

48:                                               ; preds = %45, %44
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @lm_free() local_unnamed_addr #2 {
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local i32 @longest_match(i32 noundef %0) local_unnamed_addr #3 {
  %2 = load i32, ptr @max_chain_length, align 4, !tbaa !12
  %3 = load i32, ptr @strstart, align 4
  %4 = zext i32 %3 to i64
  %5 = getelementptr inbounds i8, ptr @slide, i64 %4
  %6 = load i32, ptr @prev_length, align 4, !tbaa !12
  %7 = tail call i32 @llvm.usub.sat.i32(i32 %3, i32 7930)
  %8 = load i16, ptr %5, align 2, !tbaa !5
  %9 = sext i32 %6 to i64
  %10 = getelementptr inbounds i8, ptr %5, i64 %9
  %11 = getelementptr inbounds i8, ptr %10, i64 -1
  %12 = load i16, ptr %11, align 2, !tbaa !5
  %13 = load i32, ptr @good_match, align 4, !tbaa !12
  %14 = icmp ult i32 %6, %13
  %15 = lshr i32 %2, 2
  %16 = select i1 %14, i32 %2, i32 %15
  %17 = getelementptr i8, ptr %5, i64 -1
  br label %18

18:                                               ; preds = %77, %1
  %19 = phi i32 [ %6, %1 ], [ %73, %77 ]
  %20 = phi i32 [ %16, %1 ], [ %75, %77 ]
  %21 = phi i32 [ %0, %1 ], [ %82, %77 ]
  %22 = phi i16 [ %12, %1 ], [ %74, %77 ]
  %23 = zext i32 %21 to i64
  %24 = getelementptr inbounds i8, ptr @slide, i64 %23
  %25 = sext i32 %19 to i64
  %26 = getelementptr inbounds i8, ptr %24, i64 %25
  %27 = getelementptr inbounds i8, ptr %26, i64 -1
  %28 = load i16, ptr %27, align 2, !tbaa !5
  %29 = icmp eq i16 %28, %22
  br i1 %29, label %30, label %72

30:                                               ; preds = %18
  %31 = load i16, ptr %24, align 2, !tbaa !5
  %32 = icmp eq i16 %31, %8
  br i1 %32, label %33, label %72

33:                                               ; preds = %30, %36
  %34 = phi i64 [ %37, %36 ], [ -1, %30 ]
  %35 = icmp slt i64 %34, 251
  br i1 %35, label %36, label %46

36:                                               ; preds = %33
  %37 = add nsw i64 %34, 4
  %38 = getelementptr inbounds i8, ptr %5, i64 %37
  %39 = load i64, ptr %38, align 8, !tbaa !16
  %40 = getelementptr inbounds i8, ptr %24, i64 %37
  %41 = load i64, ptr %40, align 8, !tbaa !16
  %42 = icmp eq i64 %39, %41
  br i1 %42, label %33, label %43, !llvm.loop !24

43:                                               ; preds = %36
  %44 = trunc i64 %34 to i32
  %45 = trunc i64 %37 to i32
  br label %46

46:                                               ; preds = %33, %43
  %47 = phi i32 [ %44, %43 ], [ 251, %33 ]
  %48 = phi i32 [ %45, %43 ], [ 255, %33 ]
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i8, ptr %5, i64 %49
  %51 = load i16, ptr %50, align 2, !tbaa !5
  %52 = getelementptr inbounds i8, ptr %24, i64 %49
  %53 = load i16, ptr %52, align 2, !tbaa !5
  %54 = icmp eq i16 %51, %53
  %55 = add nsw i32 %47, 6
  %56 = select i1 %54, i32 %55, i32 %48
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i8, ptr %5, i64 %57
  %59 = load i8, ptr %58, align 1, !tbaa !20
  %60 = getelementptr inbounds i8, ptr %24, i64 %57
  %61 = load i8, ptr %60, align 1, !tbaa !20
  %62 = icmp eq i8 %59, %61
  %63 = zext i1 %62 to i32
  %64 = add nsw i32 %56, %63
  %65 = icmp sgt i32 %64, %19
  br i1 %65, label %66, label %72

66:                                               ; preds = %46
  store i32 %21, ptr @match_start, align 4, !tbaa !12
  %67 = icmp eq i32 %64, 258
  br i1 %67, label %84, label %68

68:                                               ; preds = %66
  %69 = sext i32 %64 to i64
  %70 = getelementptr i8, ptr %17, i64 %69
  %71 = load i16, ptr %70, align 2, !tbaa !5
  br label %72

72:                                               ; preds = %46, %68, %18, %30
  %73 = phi i32 [ %19, %18 ], [ %19, %30 ], [ %64, %68 ], [ %19, %46 ]
  %74 = phi i16 [ %22, %18 ], [ %22, %30 ], [ %71, %68 ], [ %22, %46 ]
  %75 = add i32 %20, -1
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %84, label %77

77:                                               ; preds = %72
  %78 = and i32 %21, 8191
  %79 = zext nneg i32 %78 to i64
  %80 = getelementptr inbounds [8192 x i16], ptr @prev, i64 0, i64 %79
  %81 = load i16, ptr %80, align 2, !tbaa !5
  %82 = zext i16 %81 to i32
  %83 = icmp ult i32 %7, %82
  br i1 %83, label %18, label %84, !llvm.loop !25

84:                                               ; preds = %72, %66, %77
  %85 = phi i32 [ %73, %77 ], [ %73, %72 ], [ 258, %66 ]
  ret i32 %85
}

; Function Attrs: nounwind uwtable
define dso_local i64 @deflate() local_unnamed_addr #0 {
  %1 = load i32, ptr @lookahead, align 4, !tbaa !12
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %228, label %6

3:                                                ; preds = %214, %207
  %4 = load i32, ptr @lookahead, align 4, !tbaa !12
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %219, label %6, !llvm.loop !26

6:                                                ; preds = %0, %3
  %7 = phi i32 [ %4, %3 ], [ %1, %0 ]
  %8 = phi i32 [ %209, %3 ], [ 2, %0 ]
  %9 = phi i32 [ %208, %3 ], [ 0, %0 ]
  %10 = load i32, ptr @ins_h, align 4, !tbaa !12
  %11 = shl nuw nsw i32 %10, 5
  %12 = load i32, ptr @strstart, align 4
  %13 = add i32 %12, 2
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds [16384 x i8], ptr @slide, i64 0, i64 %14
  %16 = load i8, ptr %15, align 1, !tbaa !20
  %17 = zext i8 %16 to i32
  %18 = and i32 %11, 32736
  %19 = xor i32 %18, %17
  store i32 %19, ptr @ins_h, align 4, !tbaa !12
  %20 = zext nneg i32 %19 to i64
  %21 = getelementptr inbounds [32768 x i16], ptr @head, i64 0, i64 %20
  %22 = load i16, ptr %21, align 2, !tbaa !5
  %23 = zext i16 %22 to i32
  %24 = and i32 %12, 8191
  %25 = zext nneg i32 %24 to i64
  %26 = getelementptr inbounds [8192 x i16], ptr @prev, i64 0, i64 %25
  store i16 %22, ptr %26, align 2, !tbaa !5
  %27 = trunc i32 %12 to i16
  store i16 %27, ptr %21, align 2, !tbaa !5
  store i32 %8, ptr @prev_length, align 4, !tbaa !12
  %28 = load i32, ptr @match_start, align 4, !tbaa !12
  %29 = icmp ne i16 %22, 0
  %30 = load i32, ptr @max_lazy_match, align 4
  %31 = icmp ult i32 %8, %30
  %32 = select i1 %29, i1 %31, i1 false
  %33 = sub i32 %12, %23
  %34 = icmp ult i32 %33, 7931
  %35 = and i1 %34, %32
  br i1 %35, label %36, label %126

36:                                               ; preds = %6
  %37 = load i32, ptr @max_chain_length, align 4, !tbaa !12
  %38 = zext i32 %12 to i64
  %39 = getelementptr inbounds i8, ptr @slide, i64 %38
  %40 = tail call i32 @llvm.usub.sat.i32(i32 %12, i32 7930)
  %41 = load i16, ptr %39, align 2, !tbaa !5
  %42 = sext i32 %8 to i64
  %43 = getelementptr inbounds i8, ptr %39, i64 %42
  %44 = getelementptr inbounds i8, ptr %43, i64 -1
  %45 = load i16, ptr %44, align 2, !tbaa !5
  %46 = load i32, ptr @good_match, align 4, !tbaa !12
  %47 = icmp ult i32 %8, %46
  %48 = lshr i32 %37, 2
  %49 = select i1 %47, i32 %37, i32 %48
  %50 = getelementptr i8, ptr %39, i64 -1
  br label %51

51:                                               ; preds = %110, %36
  %52 = phi i32 [ %8, %36 ], [ %106, %110 ]
  %53 = phi i32 [ %49, %36 ], [ %108, %110 ]
  %54 = phi i32 [ %23, %36 ], [ %115, %110 ]
  %55 = phi i16 [ %45, %36 ], [ %107, %110 ]
  %56 = zext nneg i32 %54 to i64
  %57 = getelementptr inbounds i8, ptr @slide, i64 %56
  %58 = sext i32 %52 to i64
  %59 = getelementptr inbounds i8, ptr %57, i64 %58
  %60 = getelementptr inbounds i8, ptr %59, i64 -1
  %61 = load i16, ptr %60, align 2, !tbaa !5
  %62 = icmp eq i16 %61, %55
  br i1 %62, label %63, label %105

63:                                               ; preds = %51
  %64 = load i16, ptr %57, align 2, !tbaa !5
  %65 = icmp eq i16 %64, %41
  br i1 %65, label %66, label %105

66:                                               ; preds = %63, %69
  %67 = phi i64 [ %70, %69 ], [ -1, %63 ]
  %68 = icmp slt i64 %67, 251
  br i1 %68, label %69, label %79

69:                                               ; preds = %66
  %70 = add nsw i64 %67, 4
  %71 = getelementptr inbounds i8, ptr %39, i64 %70
  %72 = load i64, ptr %71, align 8, !tbaa !16
  %73 = getelementptr inbounds i8, ptr %57, i64 %70
  %74 = load i64, ptr %73, align 8, !tbaa !16
  %75 = icmp eq i64 %72, %74
  br i1 %75, label %66, label %76, !llvm.loop !24

76:                                               ; preds = %69
  %77 = trunc i64 %67 to i32
  %78 = trunc i64 %70 to i32
  br label %79

79:                                               ; preds = %66, %76
  %80 = phi i32 [ %77, %76 ], [ 251, %66 ]
  %81 = phi i32 [ %78, %76 ], [ 255, %66 ]
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i8, ptr %39, i64 %82
  %84 = load i16, ptr %83, align 2, !tbaa !5
  %85 = getelementptr inbounds i8, ptr %57, i64 %82
  %86 = load i16, ptr %85, align 2, !tbaa !5
  %87 = icmp eq i16 %84, %86
  %88 = add nsw i32 %80, 6
  %89 = select i1 %87, i32 %88, i32 %81
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i8, ptr %39, i64 %90
  %92 = load i8, ptr %91, align 1, !tbaa !20
  %93 = getelementptr inbounds i8, ptr %57, i64 %90
  %94 = load i8, ptr %93, align 1, !tbaa !20
  %95 = icmp eq i8 %92, %94
  %96 = zext i1 %95 to i32
  %97 = add nsw i32 %89, %96
  %98 = icmp sgt i32 %97, %52
  br i1 %98, label %99, label %105

99:                                               ; preds = %79
  store i32 %54, ptr @match_start, align 4, !tbaa !12
  %100 = icmp eq i32 %97, 258
  br i1 %100, label %117, label %101

101:                                              ; preds = %99
  %102 = sext i32 %97 to i64
  %103 = getelementptr i8, ptr %50, i64 %102
  %104 = load i16, ptr %103, align 2, !tbaa !5
  br label %105

105:                                              ; preds = %101, %79, %63, %51
  %106 = phi i32 [ %52, %51 ], [ %52, %63 ], [ %97, %101 ], [ %52, %79 ]
  %107 = phi i16 [ %55, %51 ], [ %55, %63 ], [ %104, %101 ], [ %55, %79 ]
  %108 = add i32 %53, -1
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %117, label %110

110:                                              ; preds = %105
  %111 = and i32 %54, 8191
  %112 = zext nneg i32 %111 to i64
  %113 = getelementptr inbounds [8192 x i16], ptr @prev, i64 0, i64 %112
  %114 = load i16, ptr %113, align 2, !tbaa !5
  %115 = zext i16 %114 to i32
  %116 = icmp ult i32 %40, %115
  br i1 %116, label %51, label %117, !llvm.loop !25

117:                                              ; preds = %99, %105, %110
  %118 = phi i32 [ %106, %110 ], [ %106, %105 ], [ 258, %99 ]
  %119 = tail call i32 @llvm.umin.i32(i32 %118, i32 %7)
  %120 = icmp eq i32 %119, 3
  br i1 %120, label %121, label %126

121:                                              ; preds = %117
  %122 = load i32, ptr @match_start, align 4, !tbaa !12
  %123 = sub i32 %12, %122
  %124 = icmp ugt i32 %123, 4096
  %125 = select i1 %124, i32 2, i32 3
  br label %126

126:                                              ; preds = %121, %117, %6
  %127 = phi i32 [ %119, %117 ], [ 2, %6 ], [ %125, %121 ]
  %128 = icmp ugt i32 %8, 2
  %129 = icmp ule i32 %127, %8
  %130 = and i1 %128, %129
  br i1 %130, label %131, label %178

131:                                              ; preds = %126
  %132 = xor i32 %28, -1
  %133 = add i32 %12, %132
  %134 = add i32 %8, -3
  %135 = tail call i32 @ct_tally(i32 noundef %133, i32 noundef %134) #7
  %136 = load i32, ptr @prev_length, align 4, !tbaa !12
  %137 = load i32, ptr @lookahead, align 4, !tbaa !12
  %138 = sub i32 %137, %136
  %139 = add i32 %138, 1
  store i32 %139, ptr @lookahead, align 4, !tbaa !12
  %140 = add i32 %136, -2
  store i32 %140, ptr @prev_length, align 4, !tbaa !12
  %141 = load i32, ptr @strstart, align 4, !tbaa !12
  %142 = load i32, ptr @ins_h, align 4, !tbaa !12
  br label %143

143:                                              ; preds = %143, %131
  %144 = phi i32 [ %163, %143 ], [ %140, %131 ]
  %145 = phi i32 [ %155, %143 ], [ %142, %131 ]
  %146 = phi i32 [ %147, %143 ], [ %141, %131 ]
  %147 = add i32 %146, 1
  %148 = shl nuw nsw i32 %145, 5
  %149 = add i32 %146, 3
  %150 = zext i32 %149 to i64
  %151 = getelementptr inbounds [16384 x i8], ptr @slide, i64 0, i64 %150
  %152 = load i8, ptr %151, align 1, !tbaa !20
  %153 = zext i8 %152 to i32
  %154 = and i32 %148, 32736
  %155 = xor i32 %154, %153
  %156 = zext nneg i32 %155 to i64
  %157 = getelementptr inbounds [32768 x i16], ptr @head, i64 0, i64 %156
  %158 = load i16, ptr %157, align 2, !tbaa !5
  %159 = and i32 %147, 8191
  %160 = zext nneg i32 %159 to i64
  %161 = getelementptr inbounds [8192 x i16], ptr @prev, i64 0, i64 %160
  store i16 %158, ptr %161, align 2, !tbaa !5
  %162 = trunc i32 %147 to i16
  store i16 %162, ptr %157, align 2, !tbaa !5
  %163 = add i32 %144, -1
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %165, label %143, !llvm.loop !27

165:                                              ; preds = %143
  store i32 %147, ptr @strstart, align 4, !tbaa !12
  store i32 %155, ptr @ins_h, align 4, !tbaa !12
  store i32 0, ptr @prev_length, align 4, !tbaa !12
  %166 = add i32 %146, 2
  store i32 %166, ptr @strstart, align 4, !tbaa !12
  %167 = icmp eq i32 %135, 0
  br i1 %167, label %207, label %168

168:                                              ; preds = %165
  %169 = load i64, ptr @block_start, align 8
  %170 = icmp sgt i64 %169, -1
  %171 = getelementptr inbounds [16384 x i8], ptr @slide, i64 0, i64 %169
  %172 = select i1 %170, ptr %171, ptr null
  %173 = zext i32 %166 to i64
  %174 = sub nsw i64 %173, %169
  %175 = tail call i64 @flush_block(ptr noundef %172, i64 noundef %174, i32 noundef 0) #7
  %176 = load i32, ptr @strstart, align 4, !tbaa !12
  %177 = zext i32 %176 to i64
  store i64 %177, ptr @block_start, align 8, !tbaa !16
  br label %207

178:                                              ; preds = %126
  %179 = icmp eq i32 %9, 0
  br i1 %179, label %204, label %180

180:                                              ; preds = %178
  %181 = add i32 %12, -1
  %182 = zext i32 %181 to i64
  %183 = getelementptr inbounds [16384 x i8], ptr @slide, i64 0, i64 %182
  %184 = load i8, ptr %183, align 1, !tbaa !20
  %185 = zext i8 %184 to i32
  %186 = tail call i32 @ct_tally(i32 noundef 0, i32 noundef %185) #7
  %187 = icmp eq i32 %186, 0
  br i1 %187, label %199, label %188

188:                                              ; preds = %180
  %189 = load i64, ptr @block_start, align 8
  %190 = icmp sgt i64 %189, -1
  %191 = getelementptr inbounds [16384 x i8], ptr @slide, i64 0, i64 %189
  %192 = select i1 %190, ptr %191, ptr null
  %193 = load i32, ptr @strstart, align 4, !tbaa !12
  %194 = zext i32 %193 to i64
  %195 = sub nsw i64 %194, %189
  %196 = tail call i64 @flush_block(ptr noundef %192, i64 noundef %195, i32 noundef 0) #7
  %197 = load i32, ptr @strstart, align 4, !tbaa !12
  %198 = zext i32 %197 to i64
  store i64 %198, ptr @block_start, align 8, !tbaa !16
  br label %199

199:                                              ; preds = %188, %180
  %200 = load i32, ptr @strstart, align 4, !tbaa !12
  %201 = add i32 %200, 1
  store i32 %201, ptr @strstart, align 4, !tbaa !12
  %202 = load i32, ptr @lookahead, align 4, !tbaa !12
  %203 = add i32 %202, -1
  store i32 %203, ptr @lookahead, align 4, !tbaa !12
  br label %207

204:                                              ; preds = %178
  %205 = add i32 %12, 1
  store i32 %205, ptr @strstart, align 4, !tbaa !12
  %206 = add i32 %7, -1
  store i32 %206, ptr @lookahead, align 4, !tbaa !12
  br label %207

207:                                              ; preds = %199, %204, %165, %168
  %208 = phi i32 [ 0, %168 ], [ 0, %165 ], [ 1, %199 ], [ 1, %204 ]
  %209 = phi i32 [ 2, %168 ], [ 2, %165 ], [ %127, %199 ], [ %127, %204 ]
  %210 = load i32, ptr @lookahead, align 4, !tbaa !12
  %211 = icmp ugt i32 %210, 261
  %212 = load i1, ptr @eofile, align 4
  %213 = select i1 %211, i1 true, i1 %212
  br i1 %213, label %3, label %214

214:                                              ; preds = %207, %214
  tail call fastcc void @fill_window()
  %215 = load i32, ptr @lookahead, align 4, !tbaa !12
  %216 = icmp ugt i32 %215, 261
  %217 = load i1, ptr @eofile, align 4
  %218 = select i1 %216, i1 true, i1 %217
  br i1 %218, label %3, label %214, !llvm.loop !28

219:                                              ; preds = %3
  br i1 %130, label %228, label %220

220:                                              ; preds = %219
  %221 = load i32, ptr @strstart, align 4, !tbaa !12
  %222 = add i32 %221, -1
  %223 = zext i32 %222 to i64
  %224 = getelementptr inbounds [16384 x i8], ptr @slide, i64 0, i64 %223
  %225 = load i8, ptr %224, align 1, !tbaa !20
  %226 = zext i8 %225 to i32
  %227 = tail call i32 @ct_tally(i32 noundef 0, i32 noundef %226) #7
  br label %228

228:                                              ; preds = %0, %220, %219
  %229 = load i64, ptr @block_start, align 8
  %230 = icmp sgt i64 %229, -1
  %231 = getelementptr inbounds [16384 x i8], ptr @slide, i64 0, i64 %229
  %232 = select i1 %230, ptr %231, ptr null
  %233 = load i32, ptr @strstart, align 4, !tbaa !12
  %234 = zext i32 %233 to i64
  %235 = sub nsw i64 %234, %229
  %236 = tail call i64 @flush_block(ptr noundef %232, i64 noundef %235, i32 noundef 1) #7
  ret i64 %236
}

declare i32 @ct_tally(i32 noundef, i32 noundef) local_unnamed_addr #1

declare i64 @flush_block(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #5

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"short", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !11, i64 4}
!10 = !{!"config", !11, i64 0, !11, i64 4, !11, i64 8, !7, i64 12}
!11 = !{!"int", !7, i64 0}
!12 = !{!11, !11, i64 0}
!13 = !{!10, !11, i64 0}
!14 = !{!10, !11, i64 8}
!15 = !{!10, !7, i64 12}
!16 = !{!17, !17, i64 0}
!17 = !{!"long", !7, i64 0}
!18 = distinct !{!18, !19}
!19 = !{!"llvm.loop.unroll.disable"}
!20 = !{!7, !7, i64 0}
!21 = distinct !{!21, !19}
!22 = distinct !{!22, !19}
!23 = distinct !{!23, !19}
!24 = distinct !{!24, !19}
!25 = distinct !{!25, !19}
!26 = distinct !{!26, !19}
!27 = distinct !{!27, !19}
!28 = distinct !{!28, !19}
