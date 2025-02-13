; ModuleID = 'liblzma/lzma/lzma_encoder_optimum_normal.c'
source_filename = "liblzma/lzma/lzma_encoder_optimum_normal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.lzma_coder_s = type { %struct.lzma_range_encoder, i32, [4 x i32], [274 x %struct.lzma_match], i32, i32, i8, i8, i8, i32, i32, i32, [16 x [768 x i16]], [12 x [16 x i16]], [12 x i16], [12 x i16], [12 x i16], [12 x i16], [12 x [16 x i16]], [4 x [64 x i16]], [114 x i16], [16 x i16], %struct.lzma_length_encoder, %struct.lzma_length_encoder, [4 x [64 x i32]], [4 x [128 x i32]], i32, i32, [16 x i32], i32, i32, i32, [4096 x %struct.lzma_optimal] }
%struct.lzma_range_encoder = type { i64, i64, i32, i8, i64, i64, [58 x i32], [58 x ptr] }
%struct.lzma_match = type { i32, i32 }
%struct.lzma_length_encoder = type { i16, i16, [16 x [8 x i16]], [16 x [8 x i16]], [256 x i16], [16 x [272 x i32]], i32, [16 x i32] }
%struct.lzma_optimal = type { i32, i8, i8, i32, i32, i32, i32, i32, [4 x i32] }
%struct.lzma_mf_s = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@lzma_rc_prices = external local_unnamed_addr constant [128 x i8], align 16
@lzma_fastpos = external local_unnamed_addr constant [8192 x i8], align 16

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @lzma_lzma_optimum_normal(ptr noundef %0, ptr noalias noundef %1, ptr noalias nocapture noundef writeonly %2, ptr noalias nocapture noundef writeonly %3, i32 noundef %4) local_unnamed_addr #0 !prof !85 {
  %6 = alloca [4 x i32], align 16
  %7 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 30
  %8 = load i32, ptr %7, align 4, !tbaa !86
  %9 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 31
  %10 = load i32, ptr %9, align 8, !tbaa !96
  %11 = icmp eq i32 %8, %10
  br i1 %11, label %19, label %12, !prof !97

12:                                               ; preds = %5
  %13 = zext i32 %10 to i64
  %14 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 32, i64 %13, i32 6
  %15 = load i32, ptr %14, align 4, !tbaa !98
  %16 = sub i32 %15, %10
  store i32 %16, ptr %3, align 4, !tbaa !100
  %17 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 32, i64 %13, i32 7
  %18 = load i32, ptr %17, align 4, !tbaa !101
  store i32 %18, ptr %2, align 4, !tbaa !100
  store i32 %15, ptr %9, align 8, !tbaa !96
  br label %64

19:                                               ; preds = %5
  %20 = getelementptr inbounds %struct.lzma_mf_s, ptr %1, i64 0, i32 6
  %21 = load i32, ptr %20, align 4, !tbaa !102
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %33, !prof !105

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 27
  %25 = load i32, ptr %24, align 4, !tbaa !106
  %26 = icmp ugt i32 %25, 127
  br i1 %26, label %27, label %28, !prof !107

27:                                               ; preds = %23
  tail call fastcc void @fill_distances_prices(ptr noundef nonnull %0) #10
  br label %28

28:                                               ; preds = %27, %23
  %29 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 29
  %30 = load i32, ptr %29, align 8, !tbaa !108
  %31 = icmp ugt i32 %30, 15
  br i1 %31, label %32, label %33, !prof !109

32:                                               ; preds = %28
  tail call fastcc void @fill_align_prices(ptr noundef nonnull %0) #10
  br label %33

33:                                               ; preds = %28, %32, %19
  %34 = tail call fastcc i32 @helper1(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) #10, !range !110
  %35 = icmp eq i32 %34, -1
  br i1 %35, label %64, label %36, !prof !111

36:                                               ; preds = %33
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #11
  %37 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %6, ptr noundef nonnull align 4 dereferenceable(16) %37, i64 16, i1 false)
  %38 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 4
  %39 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 3
  %40 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 5
  %41 = getelementptr inbounds %struct.lzma_mf_s, ptr %1, i64 0, i32 18
  br label %42

42:                                               ; preds = %36, %57
  %43 = phi i32 [ 1, %36 ], [ %60, %57 ]
  %44 = phi i32 [ %34, %36 ], [ %59, %57 ]
  %45 = tail call i32 @lzma_mf_find(ptr noundef nonnull %1, ptr noundef nonnull %38, ptr noundef nonnull %39) #12
  store i32 %45, ptr %40, align 8, !tbaa !112
  %46 = load i32, ptr %41, align 8, !tbaa !113
  %47 = icmp ult i32 %45, %46
  br i1 %47, label %48, label %62, !prof !114

48:                                               ; preds = %42
  %49 = tail call fastcc ptr @mf_ptr(ptr noundef nonnull %1) #10
  %50 = getelementptr inbounds i8, ptr %49, i64 -1
  %51 = add i32 %43, %4
  %52 = tail call fastcc i32 @mf_avail(ptr noundef nonnull %1) #10
  %53 = add i32 %52, 1
  %54 = sub i32 4095, %43
  %55 = icmp ult i32 %53, %54
  br i1 %55, label %56, label %57, !prof !115

56:                                               ; preds = %48
  br label %57

57:                                               ; preds = %48, %56
  %58 = phi i32 [ %53, %56 ], [ %54, %48 ]
  %59 = call fastcc i32 @helper2(ptr noundef nonnull %0, ptr noundef nonnull %6, ptr noundef nonnull %50, i32 noundef %44, i32 noundef %51, i32 noundef %43, i32 noundef %46, i32 noundef %58) #10
  %60 = add nuw i32 %43, 1
  %61 = icmp ult i32 %60, %59
  br i1 %61, label %42, label %62, !prof !116, !llvm.loop !117

62:                                               ; preds = %42, %57
  %63 = phi i32 [ %43, %42 ], [ %60, %57 ]
  tail call fastcc void @backward(ptr noundef %0, ptr noundef %3, ptr noundef %2, i32 noundef %63) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #11
  br label %64

64:                                               ; preds = %62, %33, %12
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define internal fastcc void @fill_distances_prices(ptr nocapture noundef %0) unnamed_addr #2 !prof !119 !PGOFuncName !120 {
  %2 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 26
  br label %5

3:                                                ; preds = %23
  %4 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 20
  br label %43

5:                                                ; preds = %1, %23
  %6 = phi i64 [ 0, %1 ], [ %26, %23 ]
  %7 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 24, i64 %6
  %8 = load i32, ptr %2, align 8, !tbaa !121
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %23, label %10, !prof !122

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 19, i64 %6
  br label %14

12:                                               ; preds = %14
  %13 = icmp ugt i32 %20, 14
  br i1 %13, label %28, label %23, !prof !123

14:                                               ; preds = %10, %14
  %15 = phi i64 [ 0, %10 ], [ %19, %14 ]
  %16 = trunc i64 %15 to i32
  %17 = tail call fastcc i32 @rc_bittree_price(ptr noundef nonnull %11, i32 noundef 6, i32 noundef %16) #10
  %18 = getelementptr inbounds i32, ptr %7, i64 %15
  store i32 %17, ptr %18, align 4, !tbaa !100
  %19 = add nuw nsw i64 %15, 1
  %20 = load i32, ptr %2, align 8, !tbaa !121
  %21 = zext i32 %20 to i64
  %22 = icmp ult i64 %19, %21
  br i1 %22, label %14, label %12, !prof !124, !llvm.loop !125

23:                                               ; preds = %28, %5, %12
  %24 = load <4 x i32>, ptr %7, align 4, !tbaa !100
  %25 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 25, i64 %6, i64 0
  store <4 x i32> %24, ptr %25, align 4, !tbaa !100
  %26 = add nuw nsw i64 %6, 1
  %27 = icmp eq i64 %26, 4
  br i1 %27, label %3, label %5, !prof !126, !llvm.loop !127

28:                                               ; preds = %12, %28
  %29 = phi i64 [ %37, %28 ], [ 14, %12 ]
  %30 = trunc i64 %29 to i32
  %31 = lshr i32 %30, 1
  %32 = add nsw i32 %31, -5
  %33 = tail call fastcc i32 @rc_direct_price(i32 noundef %32) #10, !range !128
  %34 = getelementptr inbounds i32, ptr %7, i64 %29
  %35 = load i32, ptr %34, align 4, !tbaa !100
  %36 = add i32 %35, %33
  store i32 %36, ptr %34, align 4, !tbaa !100
  %37 = add nuw nsw i64 %29, 1
  %38 = load i32, ptr %2, align 8, !tbaa !121
  %39 = zext i32 %38 to i64
  %40 = icmp ult i64 %37, %39
  br i1 %40, label %28, label %23, !prof !129, !llvm.loop !130

41:                                               ; preds = %60
  %42 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 27
  store i32 0, ptr %42, align 4, !tbaa !106
  ret void

43:                                               ; preds = %3, %60
  %44 = phi i64 [ 4, %3 ], [ %61, %60 ]
  %45 = trunc i64 %44 to i32
  %46 = tail call fastcc i32 @get_pos_slot(i32 noundef %45) #10, !range !131
  %47 = lshr i32 %46, 1
  %48 = add nsw i32 %47, -1
  %49 = and i32 %46, 1
  %50 = or disjoint i32 %49, 2
  %51 = shl i32 %50, %48
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds i16, ptr %4, i64 %52
  %54 = zext nneg i32 %46 to i64
  %55 = sub nsw i64 0, %54
  %56 = getelementptr inbounds i16, ptr %53, i64 %55
  %57 = getelementptr inbounds i16, ptr %56, i64 -1
  %58 = sub i32 %45, %51
  %59 = tail call fastcc i32 @rc_bittree_reverse_price(ptr noundef nonnull %57, i32 noundef %48, i32 noundef %58) #10
  br label %63

60:                                               ; preds = %63
  %61 = add nuw nsw i64 %44, 1
  %62 = icmp eq i64 %61, 128
  br i1 %62, label %41, label %43, !prof !132, !llvm.loop !133

63:                                               ; preds = %43, %63
  %64 = phi i64 [ 0, %43 ], [ %69, %63 ]
  %65 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 24, i64 %64, i64 %54
  %66 = load i32, ptr %65, align 4, !tbaa !100
  %67 = add i32 %66, %59
  %68 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 25, i64 %64, i64 %44
  store i32 %67, ptr %68, align 4, !tbaa !100
  %69 = add nuw nsw i64 %64, 1
  %70 = icmp eq i64 %69, 4
  br i1 %70, label %60, label %63, !prof !134, !llvm.loop !135
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define internal fastcc void @fill_align_prices(ptr nocapture noundef %0) unnamed_addr #2 !prof !136 !PGOFuncName !137 {
  %2 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 21
  br label %5

3:                                                ; preds = %5
  %4 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 29
  store i32 0, ptr %4, align 8, !tbaa !108
  ret void

5:                                                ; preds = %1, %5
  %6 = phi i64 [ 0, %1 ], [ %10, %5 ]
  %7 = trunc i64 %6 to i32
  %8 = tail call fastcc i32 @rc_bittree_reverse_price(ptr noundef nonnull %2, i32 noundef 4, i32 noundef %7) #10
  %9 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 28, i64 %6
  store i32 %8, ptr %9, align 4, !tbaa !100
  %10 = add nuw nsw i64 %6, 1
  %11 = icmp eq i64 %10, 16
  br i1 %11, label %3, label %5, !prof !138, !llvm.loop !139
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @helper1(ptr noundef %0, ptr noalias noundef %1, ptr noalias nocapture noundef writeonly %2, ptr noalias nocapture noundef writeonly %3, i32 noundef %4) unnamed_addr #0 !prof !140 !PGOFuncName !141 {
  %6 = alloca i32, align 4
  %7 = alloca [4 x i32], align 16
  %8 = getelementptr inbounds %struct.lzma_mf_s, ptr %1, i64 0, i32 18
  %9 = load i32, ptr %8, align 8, !tbaa !113
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #11
  %10 = getelementptr inbounds %struct.lzma_mf_s, ptr %1, i64 0, i32 6
  %11 = load i32, ptr %10, align 4, !tbaa !102
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %16, !prof !105

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 3
  %15 = call i32 @lzma_mf_find(ptr noundef nonnull %1, ptr noundef nonnull %6, ptr noundef nonnull %14) #12
  br label %21

16:                                               ; preds = %5
  %17 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 5
  %18 = load i32, ptr %17, align 8, !tbaa !112
  %19 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 4
  %20 = load i32, ptr %19, align 4, !tbaa !142
  store i32 %20, ptr %6, align 4, !tbaa !100
  br label %21

21:                                               ; preds = %16, %13
  %22 = phi i32 [ %15, %13 ], [ %18, %16 ]
  %23 = call fastcc i32 @mf_avail(ptr noundef nonnull %1) #10
  %24 = add i32 %23, 1
  %25 = icmp ult i32 %24, 273
  br i1 %25, label %26, label %29, !prof !143

26:                                               ; preds = %21
  %27 = icmp ult i32 %24, 2
  br i1 %27, label %28, label %29, !prof !144

28:                                               ; preds = %26
  store i32 -1, ptr %2, align 4, !tbaa !100
  store i32 1, ptr %3, align 4, !tbaa !100
  br label %249

29:                                               ; preds = %21, %26
  %30 = phi i32 [ %24, %26 ], [ 273, %21 ]
  %31 = call fastcc ptr @mf_ptr(ptr noundef nonnull %1) #10
  %32 = getelementptr inbounds i8, ptr %31, i64 -1
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #11
  %33 = load i8, ptr %32, align 1, !tbaa !145
  br label %39

34:                                               ; preds = %81
  %35 = zext i32 %82 to i64
  %36 = getelementptr inbounds [4 x i32], ptr %7, i64 0, i64 %35
  %37 = load i32, ptr %36, align 4, !tbaa !100
  %38 = icmp ult i32 %37, %9
  br i1 %38, label %87, label %85, !prof !146

39:                                               ; preds = %29, %81
  %40 = phi i64 [ 0, %29 ], [ %83, %81 ]
  %41 = phi i32 [ 0, %29 ], [ %82, %81 ]
  %42 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 2, i64 %40
  %43 = load i32, ptr %42, align 4, !tbaa !100
  %44 = zext i32 %43 to i64
  %45 = sub nsw i64 0, %44
  %46 = getelementptr inbounds i8, ptr %32, i64 %45
  %47 = getelementptr inbounds i8, ptr %46, i64 -1
  %48 = load i8, ptr %47, align 1, !tbaa !145
  %49 = icmp eq i8 %33, %48
  br i1 %49, label %50, label %58, !prof !147

50:                                               ; preds = %39
  %51 = load i8, ptr %31, align 1, !tbaa !145
  %52 = load i8, ptr %46, align 1, !tbaa !145
  %53 = icmp eq i8 %51, %52
  br i1 %53, label %54, label %58, !prof !148

54:                                               ; preds = %50
  %55 = icmp ugt i32 %30, 2
  br i1 %55, label %56, label %72, !prof !149

56:                                               ; preds = %54
  %57 = zext nneg i32 %30 to i64
  br label %60

58:                                               ; preds = %50, %39
  %59 = getelementptr inbounds [4 x i32], ptr %7, i64 0, i64 %40
  store i32 0, ptr %59, align 4, !tbaa !100
  br label %81

60:                                               ; preds = %56, %67
  %61 = phi i64 [ %68, %67 ], [ 2, %56 ]
  %62 = getelementptr inbounds i8, ptr %32, i64 %61
  %63 = load i8, ptr %62, align 1, !tbaa !145
  %64 = getelementptr inbounds i8, ptr %47, i64 %61
  %65 = load i8, ptr %64, align 1, !tbaa !145
  %66 = icmp eq i8 %63, %65
  br i1 %66, label %67, label %70, !prof !150

67:                                               ; preds = %60
  %68 = add nuw nsw i64 %61, 1
  %69 = icmp eq i64 %68, %57
  br i1 %69, label %72, label %60, !prof !151, !llvm.loop !152

70:                                               ; preds = %60
  %71 = trunc i64 %61 to i32
  br label %72

72:                                               ; preds = %67, %70, %54
  %73 = phi i32 [ 2, %54 ], [ %71, %70 ], [ %30, %67 ]
  %74 = getelementptr inbounds [4 x i32], ptr %7, i64 0, i64 %40
  store i32 %73, ptr %74, align 4, !tbaa !100
  %75 = zext i32 %41 to i64
  %76 = getelementptr inbounds [4 x i32], ptr %7, i64 0, i64 %75
  %77 = load i32, ptr %76, align 4, !tbaa !100
  %78 = icmp ugt i32 %73, %77
  %79 = trunc i64 %40 to i32
  %80 = select i1 %78, i32 %79, i32 %41, !prof !153
  br label %81

81:                                               ; preds = %72, %58
  %82 = phi i32 [ %41, %58 ], [ %80, %72 ]
  %83 = add nuw nsw i64 %40, 1
  %84 = icmp eq i64 %83, 4
  br i1 %84, label %34, label %39, !prof !154, !llvm.loop !155

85:                                               ; preds = %34
  store i32 %82, ptr %2, align 4, !tbaa !100
  store i32 %37, ptr %3, align 4, !tbaa !100
  %86 = add i32 %37, -1
  call fastcc void @mf_skip(ptr noundef %1, i32 noundef %86) #10
  br label %247

87:                                               ; preds = %34
  %88 = icmp ult i32 %22, %9
  br i1 %88, label %97, label %89, !prof !156

89:                                               ; preds = %87
  %90 = load i32, ptr %6, align 4, !tbaa !100
  %91 = add i32 %90, -1
  %92 = zext i32 %91 to i64
  %93 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 3, i64 %92, i32 1
  %94 = load i32, ptr %93, align 4, !tbaa !157
  %95 = add i32 %94, 4
  store i32 %95, ptr %2, align 4, !tbaa !100
  store i32 %22, ptr %3, align 4, !tbaa !100
  %96 = add i32 %22, -1
  call fastcc void @mf_skip(ptr noundef %1, i32 noundef %96) #10
  br label %247

97:                                               ; preds = %87
  %98 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 2
  %99 = load i32, ptr %98, align 4, !tbaa !100
  %100 = zext i32 %99 to i64
  %101 = sub nsw i64 0, %100
  %102 = getelementptr inbounds i8, ptr %32, i64 %101
  %103 = getelementptr inbounds i8, ptr %102, i64 -1
  %104 = load i8, ptr %103, align 1, !tbaa !145
  %105 = icmp ult i32 %22, 2
  %106 = icmp ne i8 %33, %104
  %107 = select i1 %105, i1 %106, i1 false
  %108 = icmp ult i32 %37, 2
  %109 = and i1 %108, %107
  br i1 %109, label %110, label %111, !prof !159

110:                                              ; preds = %97
  store i32 -1, ptr %2, align 4, !tbaa !100
  store i32 1, ptr %3, align 4, !tbaa !100
  br label %247

111:                                              ; preds = %97
  %112 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 1
  %113 = load i32, ptr %112, align 8, !tbaa !160
  %114 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 32
  store i32 %113, ptr %114, align 4, !tbaa !161
  %115 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 9
  %116 = load i32, ptr %115, align 8, !tbaa !162
  %117 = and i32 %116, %4
  %118 = zext i32 %113 to i64
  %119 = zext i32 %117 to i64
  %120 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 13, i64 %118, i64 %119
  %121 = load i16, ptr %120, align 2, !tbaa !163
  %122 = call fastcc i32 @rc_bit_0_price(i16 noundef zeroext %121) #10, !range !131
  %123 = getelementptr inbounds i8, ptr %31, i64 -2
  %124 = load i8, ptr %123, align 1, !tbaa !145
  %125 = zext i8 %124 to i32
  %126 = icmp ugt i32 %113, 6
  %127 = zext i8 %104 to i32
  %128 = zext i8 %33 to i32
  %129 = call fastcc i32 @get_literal_price(ptr noundef nonnull %0, i32 noundef %4, i32 noundef %125, i1 noundef zeroext %126, i32 noundef %127, i32 noundef %128) #10
  %130 = add i32 %129, %122
  %131 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 32, i64 1
  %132 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 32, i64 1, i32 5
  store i32 %130, ptr %132, align 4, !tbaa !164
  call fastcc void @make_literal(ptr noundef nonnull %131) #10
  %133 = load i32, ptr %112, align 8, !tbaa !160
  %134 = zext i32 %133 to i64
  %135 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 13, i64 %134, i64 %119
  %136 = load i16, ptr %135, align 2, !tbaa !163
  %137 = call fastcc i32 @rc_bit_1_price(i16 noundef zeroext %136) #10, !range !131
  %138 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 14, i64 %134
  %139 = load i16, ptr %138, align 2, !tbaa !163
  %140 = call fastcc i32 @rc_bit_1_price(i16 noundef zeroext %139) #10, !range !131
  %141 = add nuw nsw i32 %140, %137
  br i1 %106, label %148, label %142, !prof !165

142:                                              ; preds = %111
  %143 = call fastcc i32 @get_short_rep_price(ptr noundef nonnull %0, i32 noundef %133, i32 noundef %117) #10, !range !166
  %144 = add nuw nsw i32 %143, %141
  %145 = load i32, ptr %132, align 4, !tbaa !164
  %146 = icmp ult i32 %144, %145
  br i1 %146, label %147, label %148, !prof !167

147:                                              ; preds = %142
  store i32 %144, ptr %132, align 4, !tbaa !164
  call fastcc void @make_short_rep(ptr noundef nonnull %131) #10
  br label %148

148:                                              ; preds = %142, %147, %111
  %149 = call i32 @llvm.umax.i32(i32 %22, i32 %37)
  %150 = icmp ult i32 %149, 2
  br i1 %150, label %151, label %154, !prof !168

151:                                              ; preds = %148
  %152 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 32, i64 1, i32 7
  %153 = load i32, ptr %152, align 4, !tbaa !101
  store i32 %153, ptr %2, align 4, !tbaa !100
  store i32 1, ptr %3, align 4, !tbaa !100
  br label %247

154:                                              ; preds = %148
  %155 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 32, i64 1, i32 6
  store i32 0, ptr %155, align 4, !tbaa !98
  %156 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 2, i64 0
  %157 = load <4 x i32>, ptr %156, align 4, !tbaa !100
  %158 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 32, i64 0, i32 8, i64 0
  store <4 x i32> %157, ptr %158, align 4, !tbaa !100
  %159 = call i32 @llvm.umax.i32(i32 %22, i32 %37)
  %160 = zext i32 %159 to i64
  br label %161

161:                                              ; preds = %154, %161
  %162 = phi i64 [ %160, %154 ], [ %167, %161 ]
  %163 = phi i32 [ %149, %154 ], [ %165, %161 ]
  %164 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 32, i64 %162, i32 5
  store i32 1073741824, ptr %164, align 4, !tbaa !164
  %165 = add i32 %163, -1
  %166 = icmp ugt i32 %165, 1
  %167 = add nsw i64 %162, -1
  br i1 %166, label %161, label %180, !prof !169, !llvm.loop !170

168:                                              ; preds = %208
  %169 = load i32, ptr %112, align 8, !tbaa !160
  %170 = zext i32 %169 to i64
  %171 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 14, i64 %170
  %172 = load i16, ptr %171, align 2, !tbaa !163
  %173 = call fastcc i32 @rc_bit_0_price(i16 noundef zeroext %172) #10, !range !131
  %174 = add nuw nsw i32 %173, %137
  %175 = load i32, ptr %7, align 16
  %176 = add i32 %175, 1
  %177 = icmp ult i32 %175, 2
  %178 = select i1 %177, i32 2, i32 %176, !prof !171
  %179 = icmp ugt i32 %178, %22
  br i1 %179, label %247, label %211, !prof !172

180:                                              ; preds = %161, %208
  %181 = phi i64 [ %209, %208 ], [ 0, %161 ]
  %182 = getelementptr inbounds [4 x i32], ptr %7, i64 0, i64 %181
  %183 = load i32, ptr %182, align 4, !tbaa !100
  %184 = icmp ult i32 %183, 2
  br i1 %184, label %208, label %185, !prof !173

185:                                              ; preds = %180
  %186 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 23
  %187 = load i32, ptr %112, align 8, !tbaa !160
  %188 = trunc i64 %181 to i32
  %189 = call fastcc i32 @get_pure_rep_price(ptr noundef %0, i32 noundef %188, i32 noundef %187, i32 noundef %117) #10, !range !174
  %190 = add nuw nsw i32 %189, %141
  %191 = zext i32 %183 to i64
  br label %192

192:                                              ; preds = %204, %185
  %193 = phi i64 [ %205, %204 ], [ %191, %185 ]
  %194 = trunc i64 %193 to i32
  %195 = call fastcc i32 @get_len_price(ptr noundef nonnull %186, i32 noundef %194, i32 noundef %117) #10
  %196 = add i32 %190, %195
  %197 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 32, i64 %193, i32 5
  %198 = load i32, ptr %197, align 4, !tbaa !164
  %199 = icmp ult i32 %196, %198
  br i1 %199, label %200, label %204, !prof !175

200:                                              ; preds = %192
  store i32 %196, ptr %197, align 4, !tbaa !164
  %201 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 32, i64 %193, i32 6
  store i32 0, ptr %201, align 4, !tbaa !98
  %202 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 32, i64 %193, i32 7
  store i32 %188, ptr %202, align 4, !tbaa !101
  %203 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 32, i64 %193, i32 1
  store i8 0, ptr %203, align 4, !tbaa !176
  br label %204

204:                                              ; preds = %200, %192
  %205 = add nsw i64 %193, -1
  %206 = and i64 %205, 4294967294
  %207 = icmp eq i64 %206, 0
  br i1 %207, label %208, label %192, !prof !177, !llvm.loop !178

208:                                              ; preds = %204, %180
  %209 = add nuw nsw i64 %181, 1
  %210 = icmp eq i64 %209, 4
  br i1 %210, label %168, label %180, !prof !179, !llvm.loop !180

211:                                              ; preds = %168, %211
  %212 = phi i32 [ %217, %211 ], [ 0, %168 ]
  %213 = zext i32 %212 to i64
  %214 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 3, i64 %213
  %215 = load i32, ptr %214, align 4, !tbaa !181
  %216 = icmp ugt i32 %178, %215
  %217 = add i32 %212, 1
  br i1 %216, label %211, label %218, !prof !182, !llvm.loop !183

218:                                              ; preds = %211
  %219 = load i32, ptr %6, align 4
  br label %220

220:                                              ; preds = %218, %244
  %221 = phi i32 [ %246, %244 ], [ %178, %218 ]
  %222 = phi i32 [ %245, %244 ], [ %212, %218 ]
  %223 = zext i32 %222 to i64
  %224 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 3, i64 %223
  %225 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 3, i64 %223, i32 1
  %226 = load i32, ptr %225, align 4, !tbaa !157
  %227 = call fastcc i32 @get_pos_len_price(ptr noundef nonnull %0, i32 noundef %226, i32 noundef %221, i32 noundef %117) #10
  %228 = add i32 %174, %227
  %229 = zext i32 %221 to i64
  %230 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 32, i64 %229, i32 5
  %231 = load i32, ptr %230, align 4, !tbaa !164
  %232 = icmp ult i32 %228, %231
  br i1 %232, label %233, label %238, !prof !184

233:                                              ; preds = %220
  store i32 %228, ptr %230, align 4, !tbaa !164
  %234 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 32, i64 %229, i32 6
  store i32 0, ptr %234, align 4, !tbaa !98
  %235 = add i32 %226, 4
  %236 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 32, i64 %229, i32 7
  store i32 %235, ptr %236, align 4, !tbaa !101
  %237 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 32, i64 %229, i32 1
  store i8 0, ptr %237, align 4, !tbaa !176
  br label %238

238:                                              ; preds = %233, %220
  %239 = load i32, ptr %224, align 4, !tbaa !181
  %240 = icmp ne i32 %221, %239
  %241 = add i32 %222, 1
  %242 = icmp ne i32 %241, %219
  %243 = select i1 %240, i1 true, i1 %242
  br i1 %243, label %244, label %247

244:                                              ; preds = %238
  %245 = select i1 %240, i32 %222, i32 %241, !prof !185
  %246 = add i32 %221, 1
  br label %220

247:                                              ; preds = %238, %110, %168, %151, %89, %85
  %248 = phi i32 [ -1, %85 ], [ -1, %89 ], [ -1, %110 ], [ -1, %151 ], [ %149, %168 ], [ %149, %238 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #11
  br label %249

249:                                              ; preds = %247, %28
  %250 = phi i32 [ -1, %28 ], [ %248, %247 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #11
  ret i32 %250
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: optsize
declare i32 @lzma_mf_find(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define internal fastcc i32 @helper2(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7) unnamed_addr #2 !prof !186 !PGOFuncName !187 {
  %9 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 4
  %10 = load i32, ptr %9, align 4, !tbaa !142
  %11 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 5
  %12 = load i32, ptr %11, align 8, !tbaa !112
  %13 = zext i32 %5 to i64
  %14 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 32, i64 %13
  %15 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 32, i64 %13, i32 6
  %16 = load i32, ptr %15, align 4, !tbaa !98
  %17 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 32, i64 %13, i32 1
  %18 = load i8, ptr %17, align 4, !tbaa !176, !range !188, !noundef !189
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %41, label %20, !prof !190

20:                                               ; preds = %8
  %21 = add i32 %16, -1
  %22 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 32, i64 %13, i32 2
  %23 = load i8, ptr %22, align 1, !tbaa !191, !range !188, !noundef !189
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %47, label %25, !prof !192

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 32, i64 %13, i32 3
  %27 = load i32, ptr %26, align 4, !tbaa !193
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 32, i64 %28
  %30 = load i32, ptr %29, align 4, !tbaa !161
  %31 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 32, i64 %13, i32 4
  %32 = load i32, ptr %31, align 4, !tbaa !194
  %33 = icmp ult i32 %32, 4
  %34 = icmp ult i32 %30, 7
  %35 = select i1 %34, i32 8, i32 11
  %36 = select i1 %34, i32 7, i32 10
  %37 = select i1 %33, i32 %35, i32 %36, !prof !195
  %38 = select i1 %34, i32 -3, i32 -6
  %39 = add nsw i32 %38, %37
  %40 = icmp eq i32 %16, %5
  br i1 %40, label %57, label %71, !prof !196

41:                                               ; preds = %8
  %42 = zext i32 %16 to i64
  %43 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 32, i64 %42
  %44 = load i32, ptr %43, align 4, !tbaa !161
  %45 = add i32 %5, -1
  %46 = icmp eq i32 %16, %45
  br i1 %46, label %57, label %72, !prof !196

47:                                               ; preds = %20
  %48 = zext i32 %21 to i64
  %49 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 32, i64 %48
  %50 = load i32, ptr %49, align 4, !tbaa !161
  %51 = icmp ult i32 %50, 4
  %52 = icmp ult i32 %50, 10
  %53 = select i1 %52, i32 -3, i32 -6
  %54 = add i32 %53, %50
  %55 = select i1 %51, i32 0, i32 %54, !prof !197
  %56 = icmp eq i32 %16, %5
  br i1 %56, label %57, label %72, !prof !196

57:                                               ; preds = %47, %25, %41
  %58 = phi i32 [ %39, %25 ], [ %44, %41 ], [ %55, %47 ]
  %59 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 32, i64 %13, i32 7
  %60 = load i32, ptr %59, align 4, !tbaa !101
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %65, !prof !198

62:                                               ; preds = %57
  %63 = icmp ult i32 %58, 7
  %64 = select i1 %63, i32 9, i32 11
  br label %138

65:                                               ; preds = %57
  %66 = icmp ult i32 %58, 4
  %67 = icmp ult i32 %58, 10
  %68 = select i1 %67, i32 -3, i32 -6
  %69 = add i32 %68, %58
  %70 = select i1 %66, i32 0, i32 %69, !prof !199
  br label %138

71:                                               ; preds = %25
  br i1 %24, label %72, label %83, !prof !200

72:                                               ; preds = %47, %41, %71
  %73 = phi i32 [ %39, %71 ], [ %44, %41 ], [ %55, %47 ]
  %74 = phi i32 [ %21, %71 ], [ %16, %41 ], [ %21, %47 ]
  %75 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 32, i64 %13, i32 7
  %76 = load i32, ptr %75, align 4, !tbaa !101
  %77 = icmp ult i32 %76, 4
  %78 = icmp ult i32 %73, 7
  br i1 %77, label %79, label %81, !prof !201

79:                                               ; preds = %72
  %80 = select i1 %78, i32 8, i32 11
  br label %91

81:                                               ; preds = %72
  %82 = select i1 %78, i32 7, i32 10
  br label %124

83:                                               ; preds = %71
  %84 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 32, i64 %13, i32 3
  %85 = load i32, ptr %84, align 4, !tbaa !193
  %86 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 32, i64 %13, i32 4
  %87 = load i32, ptr %86, align 4, !tbaa !194
  %88 = icmp ult i32 %39, 7
  %89 = select i1 %88, i32 8, i32 11
  %90 = icmp ult i32 %87, 4
  br i1 %90, label %91, label %124, !prof !202

91:                                               ; preds = %79, %83
  %92 = phi i32 [ %74, %79 ], [ %85, %83 ]
  %93 = phi i32 [ %80, %79 ], [ %89, %83 ]
  %94 = phi i32 [ %76, %79 ], [ %87, %83 ]
  %95 = zext i32 %92 to i64
  %96 = zext nneg i32 %94 to i64
  %97 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 32, i64 %95, i32 8, i64 %96
  %98 = load i32, ptr %97, align 4, !tbaa !100
  store i32 %98, ptr %1, align 4, !tbaa !100
  %99 = icmp eq i32 %94, 0
  br i1 %99, label %105, label %100, !prof !203

100:                                              ; preds = %91
  %101 = add nuw nsw i32 %94, 1
  %102 = zext nneg i32 %101 to i64
  br label %108

103:                                              ; preds = %108
  %104 = icmp ult i32 %94, 3
  br i1 %104, label %105, label %138, !prof !204

105:                                              ; preds = %91, %103
  %106 = phi i32 [ %101, %103 ], [ 1, %91 ]
  %107 = zext nneg i32 %106 to i64
  br label %116

108:                                              ; preds = %100, %108
  %109 = phi i64 [ 1, %100 ], [ %114, %108 ]
  %110 = add nsw i64 %109, -1
  %111 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 32, i64 %95, i32 8, i64 %110
  %112 = load i32, ptr %111, align 4, !tbaa !100
  %113 = getelementptr inbounds i32, ptr %1, i64 %109
  store i32 %112, ptr %113, align 4, !tbaa !100
  %114 = add nuw nsw i64 %109, 1
  %115 = icmp eq i64 %114, %102
  br i1 %115, label %103, label %108, !prof !205, !llvm.loop !206

116:                                              ; preds = %105, %116
  %117 = phi i64 [ %107, %105 ], [ %121, %116 ]
  %118 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 32, i64 %95, i32 8, i64 %117
  %119 = load i32, ptr %118, align 4, !tbaa !100
  %120 = getelementptr inbounds i32, ptr %1, i64 %117
  store i32 %119, ptr %120, align 4, !tbaa !100
  %121 = add nuw nsw i64 %117, 1
  %122 = and i64 %121, 4294967295
  %123 = icmp eq i64 %122, 4
  br i1 %123, label %138, label %116, !prof !207, !llvm.loop !208

124:                                              ; preds = %81, %83
  %125 = phi i32 [ %74, %81 ], [ %85, %83 ]
  %126 = phi i32 [ %82, %81 ], [ %89, %83 ]
  %127 = phi i32 [ %76, %81 ], [ %87, %83 ]
  %128 = add i32 %127, -4
  store i32 %128, ptr %1, align 4, !tbaa !100
  %129 = zext i32 %125 to i64
  br label %130

130:                                              ; preds = %124, %130
  %131 = phi i64 [ 1, %124 ], [ %136, %130 ]
  %132 = add nsw i64 %131, -1
  %133 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 32, i64 %129, i32 8, i64 %132
  %134 = load i32, ptr %133, align 4, !tbaa !100
  %135 = getelementptr inbounds i32, ptr %1, i64 %131
  store i32 %134, ptr %135, align 4, !tbaa !100
  %136 = add nuw nsw i64 %131, 1
  %137 = icmp eq i64 %136, 4
  br i1 %137, label %138, label %130, !prof !209, !llvm.loop !210

138:                                              ; preds = %130, %116, %103, %62, %65
  %139 = phi i32 [ %64, %62 ], [ %70, %65 ], [ %93, %103 ], [ %93, %116 ], [ %126, %130 ]
  store i32 %139, ptr %14, align 4, !tbaa !161
  br label %173

140:                                              ; preds = %173
  %141 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 32, i64 %13, i32 5
  %142 = load i32, ptr %141, align 4, !tbaa !164
  %143 = load i8, ptr %2, align 1, !tbaa !145
  %144 = load i32, ptr %1, align 4, !tbaa !100
  %145 = zext i32 %144 to i64
  %146 = sub nsw i64 0, %145
  %147 = getelementptr inbounds i8, ptr %2, i64 %146
  %148 = getelementptr inbounds i8, ptr %147, i64 -1
  %149 = load i8, ptr %148, align 1, !tbaa !145
  %150 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 9
  %151 = load i32, ptr %150, align 8, !tbaa !162
  %152 = and i32 %151, %4
  %153 = zext i32 %139 to i64
  %154 = zext i32 %152 to i64
  %155 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 13, i64 %153, i64 %154
  %156 = load i16, ptr %155, align 2, !tbaa !163
  %157 = tail call fastcc i32 @rc_bit_0_price(i16 noundef zeroext %156) #10, !range !131
  %158 = add i32 %157, %142
  %159 = getelementptr i8, ptr %2, i64 -1
  %160 = load i8, ptr %159, align 1, !tbaa !145
  %161 = zext i8 %160 to i32
  %162 = icmp ugt i32 %139, 6
  %163 = zext i8 %149 to i32
  %164 = zext i8 %143 to i32
  %165 = tail call fastcc i32 @get_literal_price(ptr noundef nonnull %0, i32 noundef %4, i32 noundef %161, i1 noundef zeroext %162, i32 noundef %163, i32 noundef %164) #10
  %166 = add i32 %158, %165
  %167 = add i32 %5, 1
  %168 = zext i32 %167 to i64
  %169 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 32, i64 %168
  %170 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 32, i64 %168, i32 5
  %171 = load i32, ptr %170, align 4, !tbaa !164
  %172 = icmp ult i32 %166, %171
  br i1 %172, label %180, label %183, !prof !211

173:                                              ; preds = %138, %173
  %174 = phi i64 [ 0, %138 ], [ %178, %173 ]
  %175 = getelementptr inbounds i32, ptr %1, i64 %174
  %176 = load i32, ptr %175, align 4, !tbaa !100
  %177 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 32, i64 %13, i32 8, i64 %174
  store i32 %176, ptr %177, align 4, !tbaa !100
  %178 = add nuw nsw i64 %174, 1
  %179 = icmp eq i64 %178, 4
  br i1 %179, label %140, label %173, !prof !212, !llvm.loop !213

180:                                              ; preds = %140
  store i32 %166, ptr %170, align 4, !tbaa !164
  %181 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 32, i64 %168, i32 6
  store i32 %5, ptr %181, align 4, !tbaa !98
  tail call fastcc void @make_literal(ptr noundef nonnull %169) #10
  %182 = load i16, ptr %155, align 2, !tbaa !163
  br label %183

183:                                              ; preds = %180, %140
  %184 = phi i16 [ %182, %180 ], [ %156, %140 ]
  %185 = phi i8 [ 1, %180 ], [ 0, %140 ]
  %186 = tail call fastcc i32 @rc_bit_1_price(i16 noundef zeroext %184) #10, !range !131
  %187 = add i32 %186, %142
  %188 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 14, i64 %153
  %189 = load i16, ptr %188, align 2, !tbaa !163
  %190 = tail call fastcc i32 @rc_bit_1_price(i16 noundef zeroext %189) #10, !range !131
  %191 = add i32 %190, %187
  %192 = icmp eq i8 %149, %143
  br i1 %192, label %193, label %207, !prof !214

193:                                              ; preds = %183
  %194 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 32, i64 %168, i32 6
  %195 = load i32, ptr %194, align 4, !tbaa !98
  %196 = icmp ult i32 %195, %5
  br i1 %196, label %197, label %201, !prof !215

197:                                              ; preds = %193
  %198 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 32, i64 %168, i32 7
  %199 = load i32, ptr %198, align 4, !tbaa !101
  %200 = icmp eq i32 %199, 0
  br i1 %200, label %207, label %201, !prof !216

201:                                              ; preds = %197, %193
  %202 = tail call fastcc i32 @get_short_rep_price(ptr noundef nonnull %0, i32 noundef %139, i32 noundef %152) #10, !range !166
  %203 = add i32 %202, %191
  %204 = load i32, ptr %170, align 4, !tbaa !164
  %205 = icmp ugt i32 %203, %204
  br i1 %205, label %207, label %206, !prof !217

206:                                              ; preds = %201
  store i32 %203, ptr %170, align 4, !tbaa !164
  store i32 %5, ptr %194, align 4, !tbaa !98
  tail call fastcc void @make_short_rep(ptr noundef nonnull %169) #10
  br label %207

207:                                              ; preds = %201, %206, %197, %183
  %208 = phi i8 [ %185, %197 ], [ %185, %183 ], [ 1, %206 ], [ %185, %201 ]
  %209 = icmp ult i32 %7, 2
  br i1 %209, label %614, label %210, !prof !218

210:                                              ; preds = %207
  %211 = tail call i32 @llvm.umin.i32(i32 %7, i32 %6)
  %212 = icmp ne i8 %208, 0
  %213 = or i1 %192, %212
  br i1 %213, label %284, label %214, !prof !219

214:                                              ; preds = %210
  %215 = load i32, ptr %1, align 4, !tbaa !100
  %216 = zext i32 %215 to i64
  %217 = sub nsw i64 0, %216
  %218 = getelementptr inbounds i8, ptr %2, i64 %217
  %219 = getelementptr inbounds i8, ptr %218, i64 -1
  %220 = add i32 %6, 1
  %221 = tail call i32 @llvm.umin.i32(i32 %220, i32 %7)
  %222 = icmp ugt i32 %221, 1
  br i1 %222, label %223, label %284, !prof !220

223:                                              ; preds = %214, %230
  %224 = phi i64 [ %232, %230 ], [ 1, %214 ]
  %225 = getelementptr inbounds i8, ptr %2, i64 %224
  %226 = load i8, ptr %225, align 1, !tbaa !145
  %227 = getelementptr inbounds i8, ptr %219, i64 %224
  %228 = load i8, ptr %227, align 1, !tbaa !145
  %229 = icmp eq i8 %226, %228
  br i1 %229, label %230, label %234, !prof !221

230:                                              ; preds = %223
  %231 = zext i32 %221 to i64
  %232 = add nuw nsw i64 %224, 1
  %233 = icmp eq i64 %232, %231
  br i1 %233, label %236, label %223, !prof !222, !llvm.loop !223

234:                                              ; preds = %223
  %235 = trunc i64 %224 to i32
  br label %236

236:                                              ; preds = %230, %234
  %237 = phi i32 [ %235, %234 ], [ %221, %230 ]
  %238 = add i32 %237, -1
  %239 = icmp ugt i32 %238, 1
  br i1 %239, label %240, label %284, !prof !224

240:                                              ; preds = %236
  %241 = icmp ult i32 %139, 4
  %242 = icmp ult i32 %139, 10
  %243 = select i1 %242, i32 -3, i32 -6
  %244 = add i32 %243, %139
  %245 = select i1 %241, i32 0, i32 %244, !prof !225
  %246 = add i32 %4, 1
  %247 = load i32, ptr %150, align 8, !tbaa !162
  %248 = and i32 %247, %246
  %249 = zext i32 %245 to i64
  %250 = zext i32 %248 to i64
  %251 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 13, i64 %249, i64 %250
  %252 = load i16, ptr %251, align 2, !tbaa !163
  %253 = tail call fastcc i32 @rc_bit_1_price(i16 noundef zeroext %252) #10, !range !131
  %254 = add i32 %253, %166
  %255 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 14, i64 %249
  %256 = load i16, ptr %255, align 2, !tbaa !163
  %257 = tail call fastcc i32 @rc_bit_1_price(i16 noundef zeroext %256) #10, !range !131
  %258 = add i32 %254, %257
  %259 = add i32 %237, %5
  %260 = icmp ugt i32 %259, %3
  br i1 %260, label %263, label %261, !prof !226

261:                                              ; preds = %240
  %262 = zext i32 %259 to i64
  br label %271

263:                                              ; preds = %240
  %264 = zext i32 %3 to i64
  %265 = zext i32 %259 to i64
  br label %266

266:                                              ; preds = %263, %266
  %267 = phi i64 [ %264, %263 ], [ %268, %266 ]
  %268 = add nuw nsw i64 %267, 1
  %269 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 32, i64 %268, i32 5
  store i32 1073741824, ptr %269, align 4, !tbaa !164
  %270 = icmp eq i64 %268, %265
  br i1 %270, label %271, label %266, !prof !227, !llvm.loop !228

271:                                              ; preds = %266, %261
  %272 = phi i64 [ %262, %261 ], [ %265, %266 ]
  %273 = phi i32 [ %3, %261 ], [ %259, %266 ]
  %274 = tail call fastcc i32 @get_rep_price(ptr noundef nonnull %0, i32 noundef %238, i32 noundef %245, i32 noundef %248) #10
  %275 = add i32 %258, %274
  %276 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 32, i64 %272, i32 5
  %277 = load i32, ptr %276, align 4, !tbaa !164
  %278 = icmp ult i32 %275, %277
  br i1 %278, label %279, label %284, !prof !229

279:                                              ; preds = %271
  store i32 %275, ptr %276, align 4, !tbaa !164
  %280 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 32, i64 %272, i32 6
  store i32 %167, ptr %280, align 4, !tbaa !98
  %281 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 32, i64 %272, i32 7
  store i32 0, ptr %281, align 4, !tbaa !101
  %282 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 32, i64 %272, i32 1
  store i8 1, ptr %282, align 4, !tbaa !176
  %283 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 32, i64 %272, i32 2
  store i8 0, ptr %283, align 1, !tbaa !191
  br label %284

284:                                              ; preds = %214, %236, %279, %271, %210
  %285 = phi i32 [ %3, %210 ], [ %3, %236 ], [ %273, %279 ], [ %273, %271 ], [ %3, %214 ]
  %286 = getelementptr inbounds i8, ptr %2, i64 1
  br label %289

287:                                              ; preds = %447
  %288 = icmp ugt i32 %12, %211
  br i1 %288, label %452, label %461, !prof !230

289:                                              ; preds = %284, %447
  %290 = phi i64 [ 0, %284 ], [ %450, %447 ]
  %291 = phi i32 [ %285, %284 ], [ %449, %447 ]
  %292 = phi i32 [ 2, %284 ], [ %448, %447 ]
  %293 = getelementptr inbounds i32, ptr %1, i64 %290
  %294 = load i32, ptr %293, align 4, !tbaa !100
  %295 = zext i32 %294 to i64
  %296 = sub nsw i64 0, %295
  %297 = getelementptr inbounds i8, ptr %2, i64 %296
  %298 = getelementptr inbounds i8, ptr %297, i64 -1
  %299 = load i8, ptr %2, align 1, !tbaa !145
  %300 = load i8, ptr %298, align 1, !tbaa !145
  %301 = icmp eq i8 %299, %300
  br i1 %301, label %302, label %447, !prof !231

302:                                              ; preds = %289
  %303 = load i8, ptr %286, align 1, !tbaa !145
  %304 = load i8, ptr %297, align 1, !tbaa !145
  %305 = icmp eq i8 %303, %304
  br i1 %305, label %306, label %447, !prof !232

306:                                              ; preds = %302
  %307 = icmp ugt i32 %211, 2
  %308 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 23
  br i1 %307, label %309, label %323, !prof !233

309:                                              ; preds = %306
  %310 = zext i32 %211 to i64
  br label %311

311:                                              ; preds = %309, %318
  %312 = phi i64 [ %319, %318 ], [ 2, %309 ]
  %313 = getelementptr inbounds i8, ptr %2, i64 %312
  %314 = load i8, ptr %313, align 1, !tbaa !145
  %315 = getelementptr inbounds i8, ptr %298, i64 %312
  %316 = load i8, ptr %315, align 1, !tbaa !145
  %317 = icmp eq i8 %314, %316
  br i1 %317, label %318, label %321, !prof !234

318:                                              ; preds = %311
  %319 = add nuw nsw i64 %312, 1
  %320 = icmp eq i64 %319, %310
  br i1 %320, label %323, label %311, !prof !235, !llvm.loop !236

321:                                              ; preds = %311
  %322 = trunc i64 %312 to i32
  br label %323

323:                                              ; preds = %318, %321, %306
  %324 = phi i32 [ 2, %306 ], [ %322, %321 ], [ %211, %318 ]
  %325 = add i32 %324, %5
  %326 = icmp ult i32 %291, %325
  br i1 %326, label %327, label %335, !prof !237

327:                                              ; preds = %323
  %328 = zext i32 %291 to i64
  %329 = zext i32 %325 to i64
  br label %330

330:                                              ; preds = %327, %330
  %331 = phi i64 [ %328, %327 ], [ %332, %330 ]
  %332 = add nuw nsw i64 %331, 1
  %333 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 32, i64 %332, i32 5
  store i32 1073741824, ptr %333, align 4, !tbaa !164
  %334 = icmp eq i64 %332, %329
  br i1 %334, label %335, label %330, !prof !238, !llvm.loop !239

335:                                              ; preds = %330, %323
  %336 = phi i32 [ %291, %323 ], [ %325, %330 ]
  %337 = trunc i64 %290 to i32
  %338 = tail call fastcc i32 @get_pure_rep_price(ptr noundef %0, i32 noundef %337, i32 noundef %139, i32 noundef %152) #10, !range !174
  %339 = add i32 %338, %191
  br label %340

340:                                              ; preds = %353, %335
  %341 = phi i32 [ %324, %335 ], [ %354, %353 ]
  %342 = tail call fastcc i32 @get_len_price(ptr noundef nonnull %308, i32 noundef %341, i32 noundef %152) #10
  %343 = add i32 %342, %339
  %344 = add i32 %341, %5
  %345 = zext i32 %344 to i64
  %346 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 32, i64 %345, i32 5
  %347 = load i32, ptr %346, align 4, !tbaa !164
  %348 = icmp ult i32 %343, %347
  br i1 %348, label %349, label %353, !prof !240

349:                                              ; preds = %340
  store i32 %343, ptr %346, align 4, !tbaa !164
  %350 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 32, i64 %345, i32 6
  store i32 %5, ptr %350, align 4, !tbaa !98
  %351 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 32, i64 %345, i32 7
  store i32 %337, ptr %351, align 4, !tbaa !101
  %352 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 32, i64 %345, i32 1
  store i8 0, ptr %352, align 4, !tbaa !176
  br label %353

353:                                              ; preds = %349, %340
  %354 = add i32 %341, -1
  %355 = icmp ugt i32 %354, 1
  br i1 %355, label %340, label %356, !prof !234, !llvm.loop !241

356:                                              ; preds = %353
  %357 = icmp eq i64 %290, 0
  %358 = add i32 %324, 1
  %359 = select i1 %357, i32 %358, i32 %292, !prof !242
  %360 = add i32 %358, %6
  %361 = tail call i32 @llvm.umin.i32(i32 %360, i32 %7)
  %362 = icmp ult i32 %358, %361
  br i1 %362, label %363, label %378, !prof !243

363:                                              ; preds = %356
  %364 = zext i32 %358 to i64
  br label %365

365:                                              ; preds = %363, %372
  %366 = phi i64 [ %364, %363 ], [ %373, %372 ]
  %367 = getelementptr inbounds i8, ptr %2, i64 %366
  %368 = load i8, ptr %367, align 1, !tbaa !145
  %369 = getelementptr inbounds i8, ptr %298, i64 %366
  %370 = load i8, ptr %369, align 1, !tbaa !145
  %371 = icmp eq i8 %368, %370
  br i1 %371, label %372, label %376, !prof !244

372:                                              ; preds = %365
  %373 = add nuw nsw i64 %366, 1
  %374 = trunc i64 %373 to i32
  %375 = icmp eq i32 %361, %374
  br i1 %375, label %378, label %365, !prof !245, !llvm.loop !246

376:                                              ; preds = %365
  %377 = trunc i64 %366 to i32
  br label %378

378:                                              ; preds = %372, %376, %356
  %379 = phi i32 [ %358, %356 ], [ %377, %376 ], [ %361, %372 ]
  %380 = sub i32 %379, %358
  %381 = icmp ugt i32 %380, 1
  br i1 %381, label %382, label %447, !prof !247

382:                                              ; preds = %378
  %383 = select i1 %162, i64 11, i64 8
  %384 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 14, i64 5
  %385 = add i32 %324, %4
  %386 = load i32, ptr %150, align 8, !tbaa !162
  %387 = and i32 %386, %385
  %388 = tail call fastcc i32 @get_len_price(ptr noundef nonnull %308, i32 noundef %324, i32 noundef %152) #10
  %389 = add i32 %388, %339
  %390 = zext i32 %387 to i64
  %391 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 13, i64 %383, i64 %390
  %392 = load i16, ptr %391, align 2, !tbaa !163
  %393 = tail call fastcc i32 @rc_bit_0_price(i16 noundef zeroext %392) #10, !range !131
  %394 = add i32 %389, %393
  %395 = add i32 %324, -1
  %396 = zext i32 %395 to i64
  %397 = getelementptr inbounds i8, ptr %2, i64 %396
  %398 = load i8, ptr %397, align 1, !tbaa !145
  %399 = zext i8 %398 to i32
  %400 = zext i32 %324 to i64
  %401 = getelementptr inbounds i8, ptr %298, i64 %400
  %402 = load i8, ptr %401, align 1, !tbaa !145
  %403 = zext i8 %402 to i32
  %404 = getelementptr inbounds i8, ptr %2, i64 %400
  %405 = load i8, ptr %404, align 1, !tbaa !145
  %406 = zext i8 %405 to i32
  %407 = tail call fastcc i32 @get_literal_price(ptr noundef %0, i32 noundef %385, i32 noundef %399, i1 noundef zeroext true, i32 noundef %403, i32 noundef %406) #10
  %408 = add i32 %394, %407
  %409 = add i32 %385, 1
  %410 = and i32 %386, %409
  %411 = zext i32 %410 to i64
  %412 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 13, i64 5, i64 %411
  %413 = load i16, ptr %412, align 2, !tbaa !163
  %414 = tail call fastcc i32 @rc_bit_1_price(i16 noundef zeroext %413) #10, !range !131
  %415 = add i32 %408, %414
  %416 = load i16, ptr %384, align 2, !tbaa !163
  %417 = tail call fastcc i32 @rc_bit_1_price(i16 noundef zeroext %416) #10, !range !131
  %418 = add i32 %415, %417
  %419 = add i32 %325, 1
  %420 = add i32 %380, %419
  %421 = icmp ult i32 %336, %420
  br i1 %421, label %424, label %422, !prof !248

422:                                              ; preds = %382
  %423 = zext i32 %420 to i64
  br label %432

424:                                              ; preds = %382
  %425 = zext i32 %336 to i64
  %426 = zext i32 %420 to i64
  br label %427

427:                                              ; preds = %424, %427
  %428 = phi i64 [ %425, %424 ], [ %429, %427 ]
  %429 = add nuw nsw i64 %428, 1
  %430 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 32, i64 %429, i32 5
  store i32 1073741824, ptr %430, align 4, !tbaa !164
  %431 = icmp eq i64 %429, %426
  br i1 %431, label %432, label %427, !prof !249, !llvm.loop !250

432:                                              ; preds = %427, %422
  %433 = phi i64 [ %423, %422 ], [ %426, %427 ]
  %434 = phi i32 [ %336, %422 ], [ %420, %427 ]
  %435 = tail call fastcc i32 @get_rep_price(ptr noundef nonnull %0, i32 noundef %380, i32 noundef 5, i32 noundef %410) #10
  %436 = add i32 %418, %435
  %437 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 32, i64 %433, i32 5
  %438 = load i32, ptr %437, align 4, !tbaa !164
  %439 = icmp ult i32 %436, %438
  br i1 %439, label %440, label %447, !prof !251

440:                                              ; preds = %432
  store i32 %436, ptr %437, align 4, !tbaa !164
  %441 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 32, i64 %433, i32 6
  store i32 %419, ptr %441, align 4, !tbaa !98
  %442 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 32, i64 %433, i32 7
  store i32 0, ptr %442, align 4, !tbaa !101
  %443 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 32, i64 %433, i32 1
  store i8 1, ptr %443, align 4, !tbaa !176
  %444 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 32, i64 %433, i32 2
  store i8 1, ptr %444, align 1, !tbaa !191
  %445 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 32, i64 %433, i32 3
  store i32 %5, ptr %445, align 4, !tbaa !193
  %446 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 32, i64 %433, i32 4
  store i32 %337, ptr %446, align 4, !tbaa !194
  br label %447

447:                                              ; preds = %378, %440, %432, %289, %302
  %448 = phi i32 [ %292, %302 ], [ %292, %289 ], [ %359, %432 ], [ %359, %440 ], [ %359, %378 ]
  %449 = phi i32 [ %291, %302 ], [ %291, %289 ], [ %434, %432 ], [ %434, %440 ], [ %336, %378 ]
  %450 = add nuw nsw i64 %290, 1
  %451 = icmp eq i64 %450, 4
  br i1 %451, label %287, label %289, !prof !252, !llvm.loop !253

452:                                              ; preds = %287, %452
  %453 = phi i32 [ %458, %452 ], [ 0, %287 ]
  %454 = zext i32 %453 to i64
  %455 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 3, i64 %454
  %456 = load i32, ptr %455, align 4, !tbaa !181
  %457 = icmp ugt i32 %211, %456
  %458 = add i32 %453, 1
  br i1 %457, label %452, label %459, !prof !254, !llvm.loop !255

459:                                              ; preds = %452
  %460 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 3, i64 %454
  store i32 %211, ptr %460, align 4, !tbaa !181
  br label %461

461:                                              ; preds = %459, %287
  %462 = phi i32 [ %211, %459 ], [ %12, %287 ]
  %463 = phi i32 [ %458, %459 ], [ %10, %287 ]
  %464 = icmp ult i32 %462, %448
  br i1 %464, label %614, label %465, !prof !256

465:                                              ; preds = %461
  %466 = load i16, ptr %188, align 2, !tbaa !163
  %467 = tail call fastcc i32 @rc_bit_0_price(i16 noundef zeroext %466) #10, !range !131
  %468 = add i32 %467, %187
  %469 = add i32 %462, %5
  %470 = icmp ult i32 %449, %469
  br i1 %470, label %471, label %474, !prof !257

471:                                              ; preds = %465
  %472 = zext i32 %449 to i64
  %473 = zext i32 %469 to i64
  br label %476

474:                                              ; preds = %476, %465
  %475 = phi i32 [ %449, %465 ], [ %469, %476 ]
  br label %481

476:                                              ; preds = %471, %476
  %477 = phi i64 [ %472, %471 ], [ %478, %476 ]
  %478 = add nuw nsw i64 %477, 1
  %479 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 32, i64 %478, i32 5
  store i32 1073741824, ptr %479, align 4, !tbaa !164
  %480 = icmp eq i64 %478, %473
  br i1 %480, label %474, label %476, !prof !258, !llvm.loop !259

481:                                              ; preds = %481, %474
  %482 = phi i32 [ %487, %481 ], [ 0, %474 ]
  %483 = zext i32 %482 to i64
  %484 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 3, i64 %483
  %485 = load i32, ptr %484, align 4, !tbaa !181
  %486 = icmp ugt i32 %448, %485
  %487 = add i32 %482, 1
  br i1 %486, label %481, label %488, !prof !260, !llvm.loop !261

488:                                              ; preds = %481
  %489 = select i1 %162, i64 10, i64 7
  %490 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 14, i64 4
  br label %491

491:                                              ; preds = %610, %488
  %492 = phi i32 [ %505, %610 ], [ %448, %488 ]
  %493 = phi i32 [ %612, %610 ], [ %482, %488 ]
  %494 = phi i32 [ %526, %610 ], [ %448, %488 ]
  %495 = phi i32 [ %611, %610 ], [ %475, %488 ]
  %496 = zext i32 %493 to i64
  %497 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 3, i64 %496
  %498 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 3, i64 %496, i32 1
  %499 = load i32, ptr %498, align 4, !tbaa !157
  %500 = add i32 %499, 4
  %501 = load i32, ptr %497, align 4, !tbaa !181
  br label %502

502:                                              ; preds = %491, %519
  %503 = phi i32 [ %505, %519 ], [ %492, %491 ]
  %504 = phi i32 [ %520, %519 ], [ %494, %491 ]
  %505 = add i32 %503, 1
  %506 = tail call fastcc i32 @get_pos_len_price(ptr noundef %0, i32 noundef %499, i32 noundef %504, i32 noundef %152) #10
  %507 = add i32 %468, %506
  %508 = add i32 %504, %5
  %509 = zext i32 %508 to i64
  %510 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 32, i64 %509, i32 5
  %511 = load i32, ptr %510, align 4, !tbaa !164
  %512 = icmp ult i32 %507, %511
  br i1 %512, label %513, label %517, !prof !262

513:                                              ; preds = %502
  store i32 %507, ptr %510, align 4, !tbaa !164
  %514 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 32, i64 %509, i32 6
  store i32 %5, ptr %514, align 4, !tbaa !98
  %515 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 32, i64 %509, i32 7
  store i32 %500, ptr %515, align 4, !tbaa !101
  %516 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 32, i64 %509, i32 1
  store i8 0, ptr %516, align 4, !tbaa !176
  br label %517

517:                                              ; preds = %513, %502
  %518 = icmp eq i32 %504, %501
  br i1 %518, label %521, label %519, !prof !263

519:                                              ; preds = %517
  %520 = add i32 %504, 1
  br label %502

521:                                              ; preds = %517
  %522 = zext i32 %505 to i64
  %523 = zext i32 %499 to i64
  %524 = sub nsw i64 0, %523
  %525 = getelementptr i8, ptr %159, i64 %524
  %526 = add i32 %504, 1
  %527 = add i32 %526, %6
  %528 = tail call i32 @llvm.umin.i32(i32 %527, i32 %7)
  %529 = icmp ult i32 %526, %528
  br i1 %529, label %530, label %544, !prof !264

530:                                              ; preds = %521, %537
  %531 = phi i64 [ %539, %537 ], [ %522, %521 ]
  %532 = getelementptr inbounds i8, ptr %2, i64 %531
  %533 = load i8, ptr %532, align 1, !tbaa !145
  %534 = getelementptr inbounds i8, ptr %525, i64 %531
  %535 = load i8, ptr %534, align 1, !tbaa !145
  %536 = icmp eq i8 %533, %535
  br i1 %536, label %537, label %541, !prof !265

537:                                              ; preds = %530
  %538 = zext i32 %528 to i64
  %539 = add nuw nsw i64 %531, 1
  %540 = icmp ult i64 %539, %538
  br i1 %540, label %530, label %541, !prof !266, !llvm.loop !267

541:                                              ; preds = %537, %530
  %542 = phi i64 [ %531, %530 ], [ %539, %537 ]
  %543 = trunc i64 %542 to i32
  br label %544

544:                                              ; preds = %541, %521
  %545 = phi i32 [ %526, %521 ], [ %543, %541 ]
  %546 = sub i32 %545, %526
  %547 = icmp ugt i32 %546, 1
  br i1 %547, label %548, label %610, !prof !268

548:                                              ; preds = %544
  %549 = add i32 %504, %4
  %550 = load i32, ptr %150, align 8, !tbaa !162
  %551 = and i32 %550, %549
  %552 = zext i32 %551 to i64
  %553 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 13, i64 %489, i64 %552
  %554 = load i16, ptr %553, align 2, !tbaa !163
  %555 = tail call fastcc i32 @rc_bit_0_price(i16 noundef zeroext %554) #10, !range !131
  %556 = add i32 %555, %507
  %557 = add i32 %504, -1
  %558 = zext i32 %557 to i64
  %559 = getelementptr inbounds i8, ptr %2, i64 %558
  %560 = load i8, ptr %559, align 1, !tbaa !145
  %561 = zext i8 %560 to i32
  %562 = zext i32 %504 to i64
  %563 = getelementptr inbounds i8, ptr %525, i64 %562
  %564 = load i8, ptr %563, align 1, !tbaa !145
  %565 = zext i8 %564 to i32
  %566 = getelementptr inbounds i8, ptr %2, i64 %562
  %567 = load i8, ptr %566, align 1, !tbaa !145
  %568 = zext i8 %567 to i32
  %569 = tail call fastcc i32 @get_literal_price(ptr noundef %0, i32 noundef %549, i32 noundef %561, i1 noundef zeroext true, i32 noundef %565, i32 noundef %568) #10
  %570 = add i32 %556, %569
  %571 = add i32 %551, 1
  %572 = and i32 %571, %550
  %573 = zext i32 %572 to i64
  %574 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 13, i64 4, i64 %573
  %575 = load i16, ptr %574, align 2, !tbaa !163
  %576 = tail call fastcc i32 @rc_bit_1_price(i16 noundef zeroext %575) #10, !range !131
  %577 = add i32 %570, %576
  %578 = load i16, ptr %490, align 2, !tbaa !163
  %579 = tail call fastcc i32 @rc_bit_1_price(i16 noundef zeroext %578) #10, !range !131
  %580 = add i32 %577, %579
  %581 = add i32 %508, 1
  %582 = add i32 %546, %581
  %583 = icmp ult i32 %495, %582
  br i1 %583, label %586, label %584, !prof !269

584:                                              ; preds = %548
  %585 = zext i32 %582 to i64
  br label %594

586:                                              ; preds = %548
  %587 = zext i32 %495 to i64
  %588 = zext i32 %582 to i64
  br label %589

589:                                              ; preds = %586, %589
  %590 = phi i64 [ %587, %586 ], [ %591, %589 ]
  %591 = add nuw nsw i64 %590, 1
  %592 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 32, i64 %591, i32 5
  store i32 1073741824, ptr %592, align 4, !tbaa !164
  %593 = icmp eq i64 %591, %588
  br i1 %593, label %594, label %589, !prof !270, !llvm.loop !271

594:                                              ; preds = %589, %584
  %595 = phi i64 [ %585, %584 ], [ %588, %589 ]
  %596 = phi i32 [ %495, %584 ], [ %582, %589 ]
  %597 = tail call fastcc i32 @get_rep_price(ptr noundef nonnull %0, i32 noundef %546, i32 noundef 4, i32 noundef %572) #10
  %598 = add i32 %580, %597
  %599 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 32, i64 %595, i32 5
  %600 = load i32, ptr %599, align 4, !tbaa !164
  %601 = icmp ult i32 %598, %600
  br i1 %601, label %602, label %610, !prof !272

602:                                              ; preds = %594
  store i32 %598, ptr %599, align 4, !tbaa !164
  %603 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 32, i64 %595, i32 6
  store i32 %581, ptr %603, align 4, !tbaa !98
  %604 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 32, i64 %595, i32 7
  store i32 0, ptr %604, align 4, !tbaa !101
  %605 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 32, i64 %595, i32 1
  store i8 1, ptr %605, align 4, !tbaa !176
  %606 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 32, i64 %595, i32 2
  store i8 1, ptr %606, align 1, !tbaa !191
  %607 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 32, i64 %595, i32 3
  store i32 %5, ptr %607, align 4, !tbaa !193
  %608 = add i32 %499, 4
  %609 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 32, i64 %595, i32 4
  store i32 %608, ptr %609, align 4, !tbaa !194
  br label %610

610:                                              ; preds = %594, %602, %544
  %611 = phi i32 [ %495, %544 ], [ %596, %602 ], [ %596, %594 ]
  %612 = add i32 %493, 1
  %613 = icmp eq i32 %612, %463
  br i1 %613, label %614, label %491

614:                                              ; preds = %610, %461, %207
  %615 = phi i32 [ %3, %207 ], [ %449, %461 ], [ %611, %610 ]
  ret i32 %615
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @mf_ptr(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !273 !PGOFuncName !274 {
  %2 = load ptr, ptr %0, align 8, !tbaa !275
  %3 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 5
  %4 = load i32, ptr %3, align 8, !tbaa !276
  %5 = zext i32 %4 to i64
  %6 = getelementptr inbounds i8, ptr %2, i64 %5
  ret ptr %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @mf_avail(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !277 !PGOFuncName !278 {
  %2 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 8
  %3 = load i32, ptr %2, align 4, !tbaa !279
  %4 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 5
  %5 = load i32, ptr %4, align 8, !tbaa !276
  %6 = sub i32 %3, %5
  ret i32 %6
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define internal fastcc void @backward(ptr nocapture noundef %0, ptr noalias nocapture noundef writeonly %1, ptr noalias nocapture noundef writeonly %2, i32 noundef %3) unnamed_addr #2 !prof !280 !PGOFuncName !281 {
  %5 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 30
  store i32 %3, ptr %5, align 4, !tbaa !86
  %6 = zext i32 %3 to i64
  %7 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 32, i64 %6, i32 6
  %8 = load i32, ptr %7, align 4, !tbaa !98
  %9 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 32, i64 %6, i32 7
  %10 = load i32, ptr %9, align 4, !tbaa !101
  br label %11

11:                                               ; preds = %36, %4
  %12 = phi i32 [ %10, %4 ], [ %39, %36 ]
  %13 = phi i32 [ %8, %4 ], [ %37, %36 ]
  %14 = phi i32 [ %3, %4 ], [ %13, %36 ]
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 32, i64 %15, i32 1
  %17 = load i8, ptr %16, align 4, !tbaa !176, !range !188, !noundef !189
  %18 = icmp eq i8 %17, 0
  %19 = zext i32 %13 to i64
  br i1 %18, label %20, label %23, !prof !282

20:                                               ; preds = %11
  %21 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 32, i64 %19, i32 6
  %22 = load i32, ptr %21, align 4, !tbaa !98
  br label %36

23:                                               ; preds = %11
  %24 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 32, i64 %19
  tail call fastcc void @make_literal(ptr noundef nonnull %24) #10
  %25 = add i32 %13, -1
  %26 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 32, i64 %19, i32 6
  store i32 %25, ptr %26, align 4, !tbaa !98
  %27 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 32, i64 %15, i32 2
  %28 = load i8, ptr %27, align 1, !tbaa !191, !range !188, !noundef !189
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %36, label %30, !prof !283

30:                                               ; preds = %23
  %31 = zext i32 %25 to i64
  %32 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 32, i64 %31, i32 1
  store i8 0, ptr %32, align 4, !tbaa !176
  %33 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 32, i64 %15, i32 3
  %34 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 32, i64 %31, i32 6
  %35 = load <2 x i32>, ptr %33, align 4, !tbaa !100
  store <2 x i32> %35, ptr %34, align 4, !tbaa !100
  br label %36

36:                                               ; preds = %20, %23, %30
  %37 = phi i32 [ %22, %20 ], [ %25, %23 ], [ %25, %30 ]
  %38 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 32, i64 %19, i32 7
  %39 = load i32, ptr %38, align 4, !tbaa !101
  %40 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 32, i64 %19, i32 6
  store i32 %12, ptr %38, align 4, !tbaa !101
  store i32 %14, ptr %40, align 4, !tbaa !98
  %41 = icmp eq i32 %13, 0
  br i1 %41, label %42, label %11, !prof !284, !llvm.loop !285

42:                                               ; preds = %36
  %43 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 32, i64 0, i32 6
  %44 = load i32, ptr %43, align 4, !tbaa !98
  %45 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 31
  store i32 %44, ptr %45, align 8, !tbaa !96
  store i32 %44, ptr %1, align 4, !tbaa !100
  %46 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 32, i64 0, i32 7
  %47 = load i32, ptr %46, align 4, !tbaa !101
  store i32 %47, ptr %2, align 4, !tbaa !100
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: read) uwtable
define internal fastcc i32 @rc_bittree_price(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) unnamed_addr #6 !prof !286 !PGOFuncName !287 {
  %4 = shl nuw nsw i32 1, %1
  %5 = add i32 %4, %2
  br label %6

6:                                                ; preds = %6, %3
  %7 = phi i32 [ 0, %3 ], [ %15, %6 ]
  %8 = phi i32 [ %5, %3 ], [ %10, %6 ]
  %9 = and i32 %8, 1
  %10 = lshr i32 %8, 1
  %11 = zext nneg i32 %10 to i64
  %12 = getelementptr inbounds i16, ptr %0, i64 %11
  %13 = load i16, ptr %12, align 2, !tbaa !163
  %14 = tail call fastcc i32 @rc_bit_price(i16 noundef zeroext %13, i32 noundef %9) #10, !range !131
  %15 = add i32 %14, %7
  %16 = icmp eq i32 %10, 1
  br i1 %16, label %17, label %6, !prof !288, !llvm.loop !289

17:                                               ; preds = %6
  ret i32 %15
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i32 @rc_direct_price(i32 noundef %0) unnamed_addr #7 !prof !290 !PGOFuncName !291 {
  %2 = shl i32 %0, 4
  ret i32 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @get_pos_slot(i32 noundef %0) unnamed_addr #7 !prof !292 !PGOFuncName !293 {
  %2 = zext nneg i32 %0 to i64
  %3 = getelementptr inbounds [8192 x i8], ptr @lzma_fastpos, i64 0, i64 %2
  %4 = load i8, ptr %3, align 1, !tbaa !145
  %5 = zext i8 %4 to i32
  ret i32 %5
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: read) uwtable
define internal fastcc i32 @rc_bittree_reverse_price(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) unnamed_addr #6 !prof !294 !PGOFuncName !295 {
  br label %4

4:                                                ; preds = %4, %3
  %5 = phi i32 [ %2, %3 ], [ %10, %4 ]
  %6 = phi i32 [ 0, %3 ], [ %15, %4 ]
  %7 = phi i32 [ 1, %3 ], [ %17, %4 ]
  %8 = phi i32 [ %1, %3 ], [ %18, %4 ]
  %9 = and i32 %5, 1
  %10 = lshr i32 %5, 1
  %11 = zext i32 %7 to i64
  %12 = getelementptr inbounds i16, ptr %0, i64 %11
  %13 = load i16, ptr %12, align 2, !tbaa !163
  %14 = tail call fastcc i32 @rc_bit_price(i16 noundef zeroext %13, i32 noundef %9) #10, !range !131
  %15 = add i32 %14, %6
  %16 = shl i32 %7, 1
  %17 = or disjoint i32 %16, %9
  %18 = add i32 %8, -1
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %4, !prof !296, !llvm.loop !297

20:                                               ; preds = %4
  ret i32 %15
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @rc_bit_price(i16 noundef zeroext %0, i32 noundef %1) unnamed_addr #7 !prof !298 !PGOFuncName !299 {
  %3 = zext i16 %0 to i32
  %4 = sub nsw i32 0, %1
  %5 = and i32 %4, 2032
  %6 = xor i32 %5, %3
  %7 = lshr i32 %6, 4
  %8 = zext nneg i32 %7 to i64
  %9 = getelementptr inbounds [128 x i8], ptr @lzma_rc_prices, i64 0, i64 %8
  %10 = load i8, ptr %9, align 1, !tbaa !145
  %11 = zext i8 %10 to i32
  ret i32 %11
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @mf_skip(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !prof !300 !PGOFuncName !301 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %10, label %4, !prof !302

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 11
  %6 = load ptr, ptr %5, align 8, !tbaa !303
  tail call void %6(ptr noundef %0, i32 noundef %1) #12
  %7 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 6
  %8 = load i32, ptr %7, align 4, !tbaa !102
  %9 = add i32 %8, %1
  store i32 %9, ptr %7, align 4, !tbaa !102
  br label %10

10:                                               ; preds = %4, %2
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @rc_bit_0_price(i16 noundef zeroext %0) unnamed_addr #7 !prof !304 !PGOFuncName !305 {
  %2 = lshr i16 %0, 4
  %3 = zext nneg i16 %2 to i64
  %4 = getelementptr inbounds [128 x i8], ptr @lzma_rc_prices, i64 0, i64 %3
  %5 = load i8, ptr %4, align 1, !tbaa !145
  %6 = zext i8 %5 to i32
  ret i32 %6
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: read) uwtable
define internal fastcc i32 @get_literal_price(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i1 noundef zeroext %3, i32 noundef %4, i32 noundef %5) unnamed_addr #6 !prof !306 !PGOFuncName !307 {
  %7 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 11
  %8 = load i32, ptr %7, align 8, !tbaa !308
  %9 = and i32 %8, %1
  %10 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 10
  %11 = load i32, ptr %10, align 4, !tbaa !309
  %12 = shl i32 %9, %11
  %13 = sub i32 8, %11
  %14 = lshr i32 %2, %13
  %15 = add i32 %14, %12
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 12, i64 %16
  br i1 %3, label %20, label %18, !prof !310

18:                                               ; preds = %6
  %19 = tail call fastcc i32 @rc_bittree_price(ptr noundef nonnull %17, i32 noundef 8, i32 noundef %5) #10
  br label %44

20:                                               ; preds = %6
  %21 = add nuw nsw i32 %5, 256
  br label %22

22:                                               ; preds = %22, %20
  %23 = phi i32 [ 256, %20 ], [ %42, %22 ]
  %24 = phi i32 [ 0, %20 ], [ %38, %22 ]
  %25 = phi i32 [ %21, %20 ], [ %39, %22 ]
  %26 = phi i32 [ %4, %20 ], [ %27, %22 ]
  %27 = shl i32 %26, 1
  %28 = and i32 %27, %23
  %29 = lshr i32 %25, 8
  %30 = add nuw nsw i32 %29, %23
  %31 = add nuw nsw i32 %30, %28
  %32 = lshr i32 %25, 7
  %33 = and i32 %32, 1
  %34 = zext nneg i32 %31 to i64
  %35 = getelementptr inbounds i16, ptr %17, i64 %34
  %36 = load i16, ptr %35, align 2, !tbaa !163
  %37 = tail call fastcc i32 @rc_bit_price(i16 noundef zeroext %36, i32 noundef %33) #10, !range !131
  %38 = add i32 %37, %24
  %39 = shl i32 %25, 1
  %40 = xor i32 %39, %27
  %41 = xor i32 %40, -1
  %42 = and i32 %23, %41
  %43 = icmp ult i32 %39, 65536
  br i1 %43, label %22, label %44, !prof !311, !llvm.loop !312

44:                                               ; preds = %22, %18
  %45 = phi i32 [ %19, %18 ], [ %38, %22 ]
  ret i32 %45
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @make_literal(ptr nocapture noundef writeonly %0) unnamed_addr #8 !prof !313 !PGOFuncName !314 {
  %2 = getelementptr inbounds %struct.lzma_optimal, ptr %0, i64 0, i32 7
  store i32 -1, ptr %2, align 4, !tbaa !101
  %3 = getelementptr inbounds %struct.lzma_optimal, ptr %0, i64 0, i32 1
  store i8 0, ptr %3, align 4, !tbaa !176
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @rc_bit_1_price(i16 noundef zeroext %0) unnamed_addr #7 !prof !315 !PGOFuncName !316 {
  %2 = lshr i16 %0, 4
  %3 = xor i16 %2, 127
  %4 = zext nneg i16 %3 to i64
  %5 = getelementptr inbounds [128 x i8], ptr @lzma_rc_prices, i64 0, i64 %4
  %6 = load i8, ptr %5, align 1, !tbaa !145
  %7 = zext i8 %6 to i32
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @get_short_rep_price(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) unnamed_addr #5 !prof !317 !PGOFuncName !318 {
  %4 = zext i32 %1 to i64
  %5 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 15, i64 %4
  %6 = load i16, ptr %5, align 2, !tbaa !163
  %7 = tail call fastcc i32 @rc_bit_0_price(i16 noundef zeroext %6) #10, !range !131
  %8 = zext i32 %2 to i64
  %9 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 18, i64 %4, i64 %8
  %10 = load i16, ptr %9, align 2, !tbaa !163
  %11 = tail call fastcc i32 @rc_bit_0_price(i16 noundef zeroext %10) #10, !range !131
  %12 = add nuw nsw i32 %11, %7
  ret i32 %12
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @make_short_rep(ptr nocapture noundef writeonly %0) unnamed_addr #8 !prof !319 !PGOFuncName !320 {
  %2 = getelementptr inbounds %struct.lzma_optimal, ptr %0, i64 0, i32 7
  store i32 0, ptr %2, align 4, !tbaa !101
  %3 = getelementptr inbounds %struct.lzma_optimal, ptr %0, i64 0, i32 1
  store i8 0, ptr %3, align 4, !tbaa !176
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @get_pure_rep_price(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #5 !prof !321 !PGOFuncName !322 {
  %5 = icmp eq i32 %1, 0
  %6 = zext i32 %2 to i64
  %7 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 15, i64 %6
  %8 = load i16, ptr %7, align 2, !tbaa !163
  br i1 %5, label %9, label %16, !prof !323

9:                                                ; preds = %4
  %10 = tail call fastcc i32 @rc_bit_0_price(i16 noundef zeroext %8) #10, !range !131
  %11 = zext i32 %3 to i64
  %12 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 18, i64 %6, i64 %11
  %13 = load i16, ptr %12, align 2, !tbaa !163
  %14 = tail call fastcc i32 @rc_bit_1_price(i16 noundef zeroext %13) #10, !range !131
  %15 = add nuw nsw i32 %14, %10
  br label %32

16:                                               ; preds = %4
  %17 = tail call fastcc i32 @rc_bit_1_price(i16 noundef zeroext %8) #10, !range !131
  %18 = icmp eq i32 %1, 1
  %19 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 16, i64 %6
  %20 = load i16, ptr %19, align 2, !tbaa !163
  br i1 %18, label %21, label %24, !prof !324

21:                                               ; preds = %16
  %22 = tail call fastcc i32 @rc_bit_0_price(i16 noundef zeroext %20) #10, !range !131
  %23 = add nuw nsw i32 %22, %17
  br label %32

24:                                               ; preds = %16
  %25 = tail call fastcc i32 @rc_bit_1_price(i16 noundef zeroext %20) #10, !range !131
  %26 = add nuw nsw i32 %25, %17
  %27 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 17, i64 %6
  %28 = load i16, ptr %27, align 2, !tbaa !163
  %29 = add nsw i32 %1, -2
  %30 = tail call fastcc i32 @rc_bit_price(i16 noundef zeroext %28, i32 noundef %29) #10, !range !131
  %31 = add nuw nsw i32 %26, %30
  br label %32

32:                                               ; preds = %21, %24, %9
  %33 = phi i32 [ %15, %9 ], [ %23, %21 ], [ %31, %24 ]
  ret i32 %33
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @get_len_price(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) unnamed_addr #5 !prof !325 !PGOFuncName !326 {
  %4 = zext i32 %2 to i64
  %5 = add i32 %1, -2
  %6 = zext i32 %5 to i64
  %7 = getelementptr inbounds %struct.lzma_length_encoder, ptr %0, i64 0, i32 5, i64 %4, i64 %6
  %8 = load i32, ptr %7, align 4, !tbaa !100
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @get_pos_len_price(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #5 !prof !327 !PGOFuncName !328 {
  %5 = icmp ult i32 %2, 6
  %6 = add i32 %2, -2
  %7 = select i1 %5, i32 %6, i32 3, !prof !329
  %8 = icmp ult i32 %1, 128
  br i1 %8, label %9, label %14, !prof !330

9:                                                ; preds = %4
  %10 = zext i32 %7 to i64
  %11 = zext nneg i32 %1 to i64
  %12 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 25, i64 %10, i64 %11
  %13 = load i32, ptr %12, align 4, !tbaa !100
  br label %25

14:                                               ; preds = %4
  %15 = tail call fastcc i32 @get_pos_slot_2(i32 noundef %1) #10, !range !331
  %16 = zext i32 %7 to i64
  %17 = zext nneg i32 %15 to i64
  %18 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 24, i64 %16, i64 %17
  %19 = load i32, ptr %18, align 4, !tbaa !100
  %20 = and i32 %1, 15
  %21 = zext nneg i32 %20 to i64
  %22 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 28, i64 %21
  %23 = load i32, ptr %22, align 4, !tbaa !100
  %24 = add i32 %23, %19
  br label %25

25:                                               ; preds = %14, %9
  %26 = phi i32 [ %13, %9 ], [ %24, %14 ]
  %27 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 22
  %28 = tail call fastcc i32 @get_len_price(ptr noundef nonnull %27, i32 noundef %2, i32 noundef %3) #10
  %29 = add i32 %28, %26
  ret i32 %29
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @get_pos_slot_2(i32 noundef %0) unnamed_addr #7 !prof !332 !PGOFuncName !333 {
  %2 = icmp ult i32 %0, 524288
  %3 = icmp sgt i32 %0, -1
  %4 = select i1 %3, i32 18, i32 30
  %5 = select i1 %3, i32 36, i32 60
  %6 = select i1 %2, i32 6, i32 %4, !prof !334
  %7 = select i1 %2, i32 12, i32 %5, !prof !334
  %8 = lshr i32 %0, %6
  %9 = zext nneg i32 %8 to i64
  %10 = getelementptr inbounds [8192 x i8], ptr @lzma_fastpos, i64 0, i64 %9
  %11 = load i8, ptr %10, align 1, !tbaa !145
  %12 = zext i8 %11 to i32
  %13 = add nuw nsw i32 %7, %12
  ret i32 %13
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @get_rep_price(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #5 !prof !335 !PGOFuncName !336 {
  %5 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 23
  %6 = tail call fastcc i32 @get_len_price(ptr noundef nonnull %5, i32 noundef %1, i32 noundef %3) #10
  %7 = tail call fastcc i32 @get_pure_rep_price(ptr noundef %0, i32 noundef 0, i32 noundef %2, i32 noundef %3) #10, !range !174
  %8 = add i32 %7, %6
  ret i32 %8
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #9

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree noinline norecurse nosync nounwind optsize memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { optsize }
attributes #11 = { nounwind }
attributes #12 = { nounwind optsize }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!84}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 42596457582}
!4 = !{!"MaxCount", i64 3509320374}
!5 = !{!"MaxInternalCount", i64 1880543368}
!6 = !{!"MaxFunctionCount", i64 3509320374}
!7 = !{!"NumCounts", i64 1899}
!8 = !{!"NumFunctions", i64 428}
!9 = !{!"IsPartialProfile", i64 0}
!10 = !{!"PartialProfileRatio", double 0.000000e+00}
!11 = !{!"DetailedSummary", !12}
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!13 = !{i32 10000, i64 3509320374, i32 1}
!14 = !{i32 100000, i64 3323890816, i32 2}
!15 = !{i32 200000, i64 2354835913, i32 3}
!16 = !{i32 300000, i64 1717654358, i32 5}
!17 = !{i32 400000, i64 1697273389, i32 8}
!18 = !{i32 500000, i64 1349259993, i32 11}
!19 = !{i32 600000, i64 759326020, i32 16}
!20 = !{i32 700000, i64 575792475, i32 22}
!21 = !{i32 800000, i64 285720408, i32 36}
!22 = !{i32 900000, i64 154264530, i32 55}
!23 = !{i32 950000, i64 86561411, i32 73}
!24 = !{i32 990000, i64 20049460, i32 113}
!25 = !{i32 999000, i64 3293392, i32 158}
!26 = !{i32 999900, i64 80863, i32 231}
!27 = !{i32 999990, i64 33328, i32 274}
!28 = !{i32 999999, i64 3584, i32 298}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 8, !"PIC Level", i32 2}
!31 = !{i32 7, !"PIE Level", i32 2}
!32 = !{i32 7, !"uwtable", i32 2}
!33 = !{i32 5, !"CG Profile", !34}
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83}
!35 = !{ptr @lzma_lzma_optimum_normal, ptr @fill_distances_prices, i64 63340}
!36 = !{ptr @lzma_lzma_optimum_normal, ptr @fill_align_prices, i64 205838}
!37 = !{ptr @lzma_lzma_optimum_normal, ptr @helper1, i64 5940682}
!38 = !{ptr @lzma_lzma_optimum_normal, ptr @lzma_mf_find, i64 190378318}
!39 = !{ptr @lzma_lzma_optimum_normal, ptr @mf_ptr, i64 190047418}
!40 = !{ptr @lzma_lzma_optimum_normal, ptr @mf_avail, i64 190047418}
!41 = !{ptr @lzma_lzma_optimum_normal, ptr @helper2, i64 190047418}
!42 = !{ptr @lzma_lzma_optimum_normal, ptr @backward, i64 858570}
!43 = !{ptr @fill_distances_prices, ptr @rc_bittree_price, i64 12160897}
!44 = !{ptr @fill_distances_prices, ptr @rc_direct_price, i64 8613969}
!45 = !{ptr @fill_distances_prices, ptr @get_pos_slot, i64 7853913}
!46 = !{ptr @fill_distances_prices, ptr @rc_bittree_reverse_price, i64 7853913}
!47 = !{ptr @fill_align_prices, ptr @rc_bittree_reverse_price, i64 3293377}
!48 = !{ptr @helper1, ptr @lzma_mf_find, i64 5610134}
!49 = !{ptr @helper1, ptr @mf_avail, i64 5940681}
!50 = !{ptr @helper1, ptr @mf_ptr, i64 5940680}
!51 = !{ptr @helper1, ptr @mf_skip, i64 463537}
!52 = !{ptr @helper1, ptr @rc_bit_0_price, i64 1820710}
!53 = !{ptr @helper1, ptr @get_literal_price, i64 962140}
!54 = !{ptr @helper1, ptr @make_literal, i64 962140}
!55 = !{ptr @helper1, ptr @rc_bit_1_price, i64 1924280}
!56 = !{ptr @helper1, ptr @get_short_rep_price, i64 153761}
!57 = !{ptr @helper1, ptr @make_short_rep, i64 114055}
!58 = !{ptr @helper1, ptr @get_pure_rep_price, i64 107478}
!59 = !{ptr @helper1, ptr @get_len_price, i64 1262993}
!60 = !{ptr @helper1, ptr @get_pos_len_price, i64 26720645}
!61 = !{ptr @helper2, ptr @rc_bit_0_price, i64 773594494}
!62 = !{ptr @helper2, ptr @get_literal_price, i64 625767181}
!63 = !{ptr @helper2, ptr @make_literal, i64 31585174}
!64 = !{ptr @helper2, ptr @rc_bit_1_price, i64 1253359088}
!65 = !{ptr @helper2, ptr @get_short_rep_price, i64 106101415}
!66 = !{ptr @helper2, ptr @make_short_rep, i64 3650683}
!67 = !{ptr @helper2, ptr @get_rep_price, i64 436835015}
!68 = !{ptr @helper2, ptr @get_pure_rep_price, i64 183533543}
!69 = !{ptr @helper2, ptr @get_len_price, i64 1936398267}
!70 = !{ptr @helper2, ptr @get_pos_len_price, i64 19551323951}
!71 = !{ptr @backward, ptr @make_literal, i64 974130}
!72 = !{ptr @rc_bittree_price, ptr @rc_bit_price, i64 311165851}
!73 = !{ptr @rc_bittree_reverse_price, ptr @rc_bit_price, i64 45856490}
!74 = !{ptr @get_literal_price, ptr @rc_bittree_price, i64 29774917}
!75 = !{ptr @get_literal_price, ptr @rc_bit_price, i64 1963033538}
!76 = !{ptr @get_short_rep_price, ptr @rc_bit_0_price, i64 212510352}
!77 = !{ptr @get_pure_rep_price, ptr @rc_bit_0_price, i64 234120814}
!78 = !{ptr @get_pure_rep_price, ptr @rc_bit_1_price, i64 303680840}
!79 = !{ptr @get_pure_rep_price, ptr @rc_bit_price, i64 34780013}
!80 = !{ptr @get_pos_len_price, ptr @get_pos_slot_2, i64 1258327879}
!81 = !{ptr @get_pos_len_price, ptr @get_len_price, i64 1486399284}
!82 = !{ptr @get_rep_price, ptr @get_len_price, i64 85259805}
!83 = !{ptr @get_rep_price, ptr @get_pure_rep_price, i64 85259805}
!84 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!85 = !{!"function_entry_count", i64 27196108}
!86 = !{!87, !92, i64 69340}
!87 = !{!"lzma_coder_s", !88, i64 0, !92, i64 736, !90, i64 740, !90, i64 756, !92, i64 2948, !92, i64 2952, !93, i64 2956, !93, i64 2957, !93, i64 2958, !92, i64 2960, !92, i64 2964, !92, i64 2968, !90, i64 2972, !90, i64 27548, !90, i64 27932, !90, i64 27956, !90, i64 27980, !90, i64 28004, !90, i64 28028, !90, i64 28412, !90, i64 28924, !90, i64 29152, !94, i64 29184, !94, i64 47688, !90, i64 66192, !90, i64 67216, !92, i64 69264, !92, i64 69268, !90, i64 69272, !92, i64 69336, !92, i64 69340, !92, i64 69344, !90, i64 69348}
!88 = !{!"", !89, i64 0, !89, i64 8, !92, i64 16, !90, i64 20, !89, i64 24, !89, i64 32, !90, i64 40, !90, i64 272}
!89 = !{!"long", !90, i64 0}
!90 = !{!"omnipotent char", !91, i64 0}
!91 = !{!"Simple C/C++ TBAA"}
!92 = !{!"int", !90, i64 0}
!93 = !{!"_Bool", !90, i64 0}
!94 = !{!"", !95, i64 0, !95, i64 2, !90, i64 4, !90, i64 260, !90, i64 516, !90, i64 1028, !92, i64 18436, !90, i64 18440}
!95 = !{!"short", !90, i64 0}
!96 = !{!87, !92, i64 69344}
!97 = !{!"branch_weights", i32 5940682, i32 21255428}
!98 = !{!99, !92, i64 20}
!99 = !{!"", !92, i64 0, !93, i64 4, !93, i64 5, !92, i64 8, !92, i64 12, !92, i64 16, !92, i64 20, !92, i64 24, !90, i64 28}
!100 = !{!92, !92, i64 0}
!101 = !{!99, !92, i64 24}
!102 = !{!103, !92, i64 28}
!103 = !{!"lzma_mf_s", !104, i64 0, !92, i64 8, !92, i64 12, !92, i64 16, !92, i64 20, !92, i64 24, !92, i64 28, !92, i64 32, !92, i64 36, !92, i64 40, !104, i64 48, !104, i64 56, !104, i64 64, !104, i64 72, !92, i64 80, !92, i64 84, !92, i64 88, !92, i64 92, !92, i64 96, !92, i64 100, !92, i64 104, !92, i64 108, !92, i64 112}
!104 = !{!"any pointer", !90, i64 0}
!105 = !{!"branch_weights", i32 5610136, i32 330547}
!106 = !{!87, !92, i64 69268}
!107 = !{!"branch_weights", i32 63340, i32 5546797}
!108 = !{!87, !92, i64 69336}
!109 = !{!"branch_weights", i32 205838, i32 5404299}
!110 = !{i32 2, i32 0}
!111 = !{!"branch_weights", i32 5082113, i32 858570}
!112 = !{!87, !92, i64 2952}
!113 = !{!103, !92, i64 96}
!114 = !{!"branch_weights", i32 189844530, i32 330547}
!115 = !{!"branch_weights", i32 1315, i32 189843216}
!116 = !{!"branch_weights", i32 189647052, i32 528024}
!117 = distinct !{!117, !118}
!118 = !{!"llvm.loop.mustprogress"}
!119 = !{!"function_entry_count", i64 63339}
!120 = !{!"lzma_encoder_optimum_normal.c:fill_distances_prices"}
!121 = !{!87, !92, i64 69264}
!122 = !{!"branch_weights", i32 1, i32 253356}
!123 = !{!"branch_weights", i32 -2147483648, i32 0}
!124 = !{!"branch_weights", i32 11907733, i32 253356}
!125 = distinct !{!125, !118}
!126 = !{!"branch_weights", i32 63340, i32 190017}
!127 = distinct !{!127, !118}
!128 = !{i32 0, i32 -15}
!129 = !{!"branch_weights", i32 8360749, i32 253356}
!130 = distinct !{!130, !118}
!131 = !{i32 0, i32 256}
!132 = !{!"branch_weights", i32 63340, i32 7790697}
!133 = distinct !{!133, !118}
!134 = !{!"branch_weights", i32 7854037, i32 23562108}
!135 = distinct !{!135, !118}
!136 = !{!"function_entry_count", i64 205837}
!137 = !{!"lzma_encoder_optimum_normal.c:fill_align_prices"}
!138 = !{!"branch_weights", i32 205838, i32 3087555}
!139 = distinct !{!139, !118}
!140 = !{!"function_entry_count", i64 5940681}
!141 = !{!"lzma_encoder_optimum_normal.c:helper1"}
!142 = !{!87, !92, i64 2948}
!143 = !{!"branch_weights", i32 2, i32 5940681}
!144 = !{!"branch_weights", i32 1072256703, i32 1075226945}
!145 = !{!90, !90, i64 0}
!146 = !{!"branch_weights", i32 5810847, i32 129836}
!147 = !{!"branch_weights", i32 937170, i32 22825556}
!148 = !{!"branch_weights", i32 484420, i32 452751}
!149 = !{!"branch_weights", i32 72642, i32 1}
!150 = !{!"branch_weights", i32 33807813, i32 484420}
!151 = !{!"branch_weights", i32 72642, i32 34146948}
!152 = distinct !{!152, !118}
!153 = !{!"branch_weights", i32 87835, i32 396586}
!154 = !{!"branch_weights", i32 5940682, i32 17822043}
!155 = distinct !{!155, !118}
!156 = !{!"branch_weights", i32 5477147, i32 333701}
!157 = !{!158, !92, i64 4}
!158 = !{!"", !92, i64 0, !92, i64 4}
!159 = !{!"branch_weights", i32 -1554032504, i32 584088942}
!160 = !{!87, !92, i64 736}
!161 = !{!99, !92, i64 0}
!162 = !{!87, !92, i64 2960}
!163 = !{!95, !95, i64 0}
!164 = !{!99, !92, i64 16}
!165 = !{!"branch_weights", i32 808379, i32 153761}
!166 = !{i32 0, i32 511}
!167 = !{!"branch_weights", i32 114056, i32 39706}
!168 = !{!"branch_weights", i32 103570, i32 858570}
!169 = !{!"branch_weights", i32 7743482, i32 858570}
!170 = distinct !{!170, !118}
!171 = !{!"branch_weights", i32 824333, i32 34238}
!172 = !{!"branch_weights", i32 23550, i32 835021}
!173 = !{!"branch_weights", i32 3326800, i32 107478}
!174 = !{i32 0, i32 766}
!175 = !{!"branch_weights", i32 1059955, i32 203038}
!176 = !{!99, !93, i64 4}
!177 = !{!"branch_weights", i32 107478, i32 1155515}
!178 = distinct !{!178, !118}
!179 = !{!"branch_weights", i32 858570, i32 2575707}
!180 = distinct !{!180, !118}
!181 = !{!158, !92, i64 0}
!182 = !{!"branch_weights", i32 11529, i32 835021}
!183 = distinct !{!183, !118}
!184 = !{!"branch_weights", i32 7639858, i32 523156}
!185 = !{!"branch_weights", i32 6544233, i32 1618781}
!186 = !{!"function_entry_count", i64 189844529}
!187 = !{!"lzma_encoder_optimum_normal.c:helper2"}
!188 = !{i8 0, i8 2}
!189 = !{}
!190 = !{!"branch_weights", i32 187761284, i32 2083247}
!191 = !{!99, !93, i64 5}
!192 = !{!"branch_weights", i32 24734, i32 2058514}
!193 = !{!99, !92, i64 8}
!194 = !{!99, !92, i64 12}
!195 = !{!"branch_weights", i32 1434144, i32 624371}
!196 = !{!"branch_weights", i32 32929552, i32 156914979}
!197 = !{!"branch_weights", i32 5367, i32 2077881}
!198 = !{!"branch_weights", i32 3665689, i32 29263864}
!199 = !{!"branch_weights", i32 4151650, i32 25112215}
!200 = !{!"branch_weights", i32 0, i32 -2147483648}
!201 = !{!"branch_weights", i32 47630440, i32 107226027}
!202 = !{!"branch_weights", i32 1496127872, i32 651355776}
!203 = !{!"branch_weights", i32 29015122, i32 20049461}
!204 = !{!"branch_weights", i32 2147483541, i32 107}
!205 = !{!"branch_weights", i32 20049461, i32 0}
!206 = distinct !{!206, !118}
!207 = !{!"branch_weights", i32 49064582, i32 78079705}
!208 = distinct !{!208, !118}
!209 = !{!"branch_weights", i32 107850397, i32 215700792}
!210 = distinct !{!210, !118}
!211 = !{!"branch_weights", i32 31585174, i32 158259357}
!212 = !{!"branch_weights", i32 189844530, i32 569533587}
!213 = distinct !{!213, !118}
!214 = !{!"branch_weights", i32 138432410, i32 51412121}
!215 = !{!"branch_weights", i32 132162656, i32 6269755}
!216 = !{!"branch_weights", i32 32330994, i32 99831663}
!217 = !{!"branch_weights", i32 102450735, i32 3650683}
!218 = !{!"branch_weights", i32 13025, i32 189831506}
!219 = !{!"branch_weights", i32 -1224571235, i32 489355559}
!220 = !{!"branch_weights", i32 3621, i32 1}
!221 = !{!"branch_weights", i32 8086446, i32 26095951}
!222 = !{!"branch_weights", i32 3621, i32 34175154}
!223 = distinct !{!223, !118}
!224 = !{!"branch_weights", i32 75100756, i32 2072382892}
!225 = !{!"branch_weights", i32 110869, i32 801495}
!226 = !{!"branch_weights", i32 599613, i32 312750}
!227 = !{!"branch_weights", i32 599613, i32 0}
!228 = distinct !{!228, !118}
!229 = !{!"branch_weights", i32 91477, i32 820887}
!230 = !{!"branch_weights", i32 184367, i32 189647140}
!231 = !{!"branch_weights", i32 233979941, i32 525346081}
!232 = !{!"branch_weights", i32 183533546, i32 50446396}
!233 = !{!"branch_weights", i32 263566, i32 1}
!234 = !{!"branch_weights", i32 1697273390, i32 183533546}
!235 = !{!"branch_weights", i32 263566, i32 1880279803}
!236 = distinct !{!236, !118}
!237 = !{!"branch_weights", i32 3624909, i32 179908637}
!238 = !{!"branch_weights", i32 3624909, i32 0}
!239 = distinct !{!239, !118}
!240 = !{!"branch_weights", i32 75418468, i32 1805388468}
!241 = distinct !{!241, !118}
!242 = !{!"branch_weights", i32 116865866, i32 66667681}
!243 = !{!"branch_weights", i32 594221, i32 1}
!244 = !{!"branch_weights", i32 611059790, i32 183533546}
!245 = !{!"branch_weights", i32 594221, i32 793404893}
!246 = distinct !{!246, !118}
!247 = !{!"branch_weights", i32 55591361, i32 127942186}
!248 = !{!"branch_weights", i32 22053452, i32 33537909}
!249 = !{!"branch_weights", i32 22053452, i32 0}
!250 = distinct !{!250, !118}
!251 = !{!"branch_weights", i32 3733042, i32 51858320}
!252 = !{!"branch_weights", i32 189831506, i32 569494515}
!253 = distinct !{!253, !118}
!254 = !{!"branch_weights", i32 109829, i32 184367}
!255 = distinct !{!255, !118}
!256 = !{!"branch_weights", i32 42004192, i32 147827315}
!257 = !{!"branch_weights", i32 130745025, i32 17082290}
!258 = !{!"branch_weights", i32 130745025, i32 0}
!259 = distinct !{!259, !118}
!260 = !{!"branch_weights", i32 86561412, i32 147827315}
!261 = distinct !{!261, !118}
!262 = !{!"branch_weights", i32 359430047, i32 1118806227}
!263 = !{!"branch_weights", i32 357661624, i32 1120574650}
!264 = !{!"branch_weights", i32 292655, i32 1}
!265 = !{!"branch_weights", i32 285720409, i32 357661624}
!266 = !{!"branch_weights", i32 642796722, i32 292655}
!267 = distinct !{!267, !118}
!268 = !{!"branch_weights", i32 28756084, i32 328905541}
!269 = !{!"branch_weights", i32 28756083, i32 1}
!270 = !{!"branch_weights", i32 28756083, i32 3087493}
!271 = distinct !{!271, !118}
!272 = !{!"branch_weights", i32 6678625, i32 22077460}
!273 = !{!"function_entry_count", i64 195785210}
!274 = !{!"lzma_encoder_optimum_normal.c:mf_ptr"}
!275 = !{!103, !104, i64 0}
!276 = !{!103, !92, i64 24}
!277 = !{!"function_entry_count", i64 195786525}
!278 = !{!"lzma_encoder_optimum_normal.c:mf_avail"}
!279 = !{!103, !92, i64 36}
!280 = !{!"function_entry_count", i64 858569}
!281 = !{!"lzma_encoder_optimum_normal.c:backward"}
!282 = !{!"branch_weights", i32 21139871, i32 974131}
!283 = !{!"branch_weights", i32 12363, i32 961769}
!284 = !{!"branch_weights", i32 858570, i32 21255432}
!285 = distinct !{!285, !118}
!286 = !{!"function_entry_count", i64 41936004}
!287 = !{!"lzma_encoder_optimum_normal.c:rc_bittree_price"}
!288 = !{!"branch_weights", i32 41936005, i32 269229853}
!289 = distinct !{!289, !118}
!290 = !{!"function_entry_count", i64 8614104}
!291 = !{!"lzma_encoder_optimum_normal.c:rc_direct_price"}
!292 = !{!"function_entry_count", i64 7854036}
!293 = !{!"lzma_encoder_optimum_normal.c:get_pos_slot"}
!294 = !{!"function_entry_count", i64 11147428}
!295 = !{!"lzma_encoder_optimum_normal.c:rc_bittree_reverse_price"}
!296 = !{!"branch_weights", i32 11147429, i32 34709065}
!297 = distinct !{!297, !118}
!298 = !{!"function_entry_count", i64 2354835913}
!299 = !{!"lzma_encoder_optimum_normal.c:rc_bit_price"}
!300 = !{!"function_entry_count", i64 463535}
!301 = !{!"lzma_encoder_optimum_normal.c:mf_skip"}
!302 = !{!"branch_weights", i32 1, i32 463536}
!303 = !{!103, !104, i64 56}
!304 = !{!"function_entry_count", i64 870471159}
!305 = !{!"lzma_encoder_optimum_normal.c:rc_bit_0_price"}
!306 = !{!"function_entry_count", i64 275154110}
!307 = !{!"lzma_encoder_optimum_normal.c:get_literal_price"}
!308 = !{!87, !92, i64 2968}
!309 = !{!87, !92, i64 2964}
!310 = !{!"branch_weights", i32 245379195, i32 29774917}
!311 = !{!"branch_weights", i32 1717654359, i32 245379195}
!312 = distinct !{!312, !118}
!313 = !{!"function_entry_count", i64 33521441}
!314 = !{!"lzma_encoder_optimum_normal.c:make_literal"}
!315 = !{!"function_entry_count", i64 855813784}
!316 = !{!"lzma_encoder_optimum_normal.c:rc_bit_1_price"}
!317 = !{!"function_entry_count", i64 106255176}
!318 = !{!"lzma_encoder_optimum_normal.c:get_short_rep_price"}
!319 = !{!"function_entry_count", i64 3764737}
!320 = !{!"lzma_encoder_optimum_normal.c:make_short_rep"}
!321 = !{!"function_entry_count", i64 268900827}
!322 = !{!"lzma_encoder_optimum_normal.c:get_pure_rep_price"}
!323 = !{!"branch_weights", i32 202159908, i32 66740921}
!324 = !{!"branch_weights", i32 31960908, i32 34780014}
!325 = !{!"function_entry_count", i64 3509320374}
!326 = !{!"lzma_encoder_optimum_normal.c:get_len_price"}
!327 = !{!"function_entry_count", i64 1486399284}
!328 = !{!"lzma_encoder_optimum_normal.c:get_pos_len_price"}
!329 = !{!"branch_weights", i32 354962536, i32 1131436750}
!330 = !{!"branch_weights", i32 228071405, i32 1258327881}
!331 = !{i32 12, i32 316}
!332 = !{!"function_entry_count", i64 1258327880}
!333 = !{!"lzma_encoder_optimum_normal.c:get_pos_slot_2"}
!334 = !{!"branch_weights", i32 960532476, i32 297795406}
!335 = !{!"function_entry_count", i64 85259805}
!336 = !{!"lzma_encoder_optimum_normal.c:get_rep_price"}
