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
define dso_local void @lzma_lzma_optimum_normal(ptr noundef %0, ptr noalias noundef %1, ptr noalias nocapture noundef writeonly %2, ptr noalias nocapture noundef writeonly %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = alloca [4 x i32], align 16
  %7 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 30
  %8 = load i32, ptr %7, align 4, !tbaa !35
  %9 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 31
  %10 = load i32, ptr %9, align 8, !tbaa !45
  %11 = icmp eq i32 %8, %10
  br i1 %11, label %19, label %12

12:                                               ; preds = %5
  %13 = zext i32 %10 to i64
  %14 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 32, i64 %13, i32 6
  %15 = load i32, ptr %14, align 4, !tbaa !46
  %16 = sub i32 %15, %10
  store i32 %16, ptr %3, align 4, !tbaa !48
  %17 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 32, i64 %13, i32 7
  %18 = load i32, ptr %17, align 4, !tbaa !49
  store i32 %18, ptr %2, align 4, !tbaa !48
  store i32 %15, ptr %9, align 8, !tbaa !45
  br label %61

19:                                               ; preds = %5
  %20 = getelementptr inbounds %struct.lzma_mf_s, ptr %1, i64 0, i32 6
  %21 = load i32, ptr %20, align 4, !tbaa !50
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %33

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 27
  %25 = load i32, ptr %24, align 4, !tbaa !53
  %26 = icmp ugt i32 %25, 127
  br i1 %26, label %27, label %28

27:                                               ; preds = %23
  tail call fastcc void @fill_distances_prices(ptr noundef nonnull %0) #10
  br label %28

28:                                               ; preds = %27, %23
  %29 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 29
  %30 = load i32, ptr %29, align 8, !tbaa !54
  %31 = icmp ugt i32 %30, 15
  br i1 %31, label %32, label %33

32:                                               ; preds = %28
  tail call fastcc void @fill_align_prices(ptr noundef nonnull %0) #10
  br label %33

33:                                               ; preds = %28, %32, %19
  %34 = tail call fastcc i32 @helper1(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) #10, !range !55
  %35 = icmp eq i32 %34, -1
  br i1 %35, label %61, label %36

36:                                               ; preds = %33
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #11
  %37 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %6, ptr noundef nonnull align 4 dereferenceable(16) %37, i64 16, i1 false)
  %38 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 4
  %39 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 3
  %40 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 5
  %41 = getelementptr inbounds %struct.lzma_mf_s, ptr %1, i64 0, i32 18
  br label %42

42:                                               ; preds = %36, %48
  %43 = phi i32 [ 1, %36 ], [ %57, %48 ]
  %44 = phi i32 [ %34, %36 ], [ %56, %48 ]
  %45 = tail call i32 @lzma_mf_find(ptr noundef nonnull %1, ptr noundef nonnull %38, ptr noundef nonnull %39) #12
  store i32 %45, ptr %40, align 8, !tbaa !56
  %46 = load i32, ptr %41, align 8, !tbaa !57
  %47 = icmp ult i32 %45, %46
  br i1 %47, label %48, label %59

48:                                               ; preds = %42
  %49 = tail call fastcc ptr @mf_ptr(ptr noundef nonnull %1) #10
  %50 = getelementptr inbounds i8, ptr %49, i64 -1
  %51 = add i32 %43, %4
  %52 = tail call fastcc i32 @mf_avail(ptr noundef nonnull %1) #10
  %53 = add i32 %52, 1
  %54 = sub i32 4095, %43
  %55 = tail call i32 @llvm.umin.i32(i32 %53, i32 %54)
  %56 = call fastcc i32 @helper2(ptr noundef nonnull %0, ptr noundef nonnull %6, ptr noundef nonnull %50, i32 noundef %44, i32 noundef %51, i32 noundef %43, i32 noundef %46, i32 noundef %55) #10
  %57 = add nuw i32 %43, 1
  %58 = icmp ult i32 %57, %56
  br i1 %58, label %42, label %59, !llvm.loop !58

59:                                               ; preds = %42, %48
  %60 = phi i32 [ %43, %42 ], [ %57, %48 ]
  tail call fastcc void @backward(ptr noundef %0, ptr noundef %3, ptr noundef %2, i32 noundef %60) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #11
  br label %61

61:                                               ; preds = %59, %33, %12
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define internal fastcc void @fill_distances_prices(ptr nocapture noundef %0) unnamed_addr #2 !PGOFuncName !60 {
  %2 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 26
  br label %5

3:                                                ; preds = %23
  %4 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 20
  br label %43

5:                                                ; preds = %1, %23
  %6 = phi i64 [ 0, %1 ], [ %26, %23 ]
  %7 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 24, i64 %6
  %8 = load i32, ptr %2, align 8, !tbaa !61
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %23, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 19, i64 %6
  br label %14

12:                                               ; preds = %14
  %13 = icmp ugt i32 %20, 14
  br i1 %13, label %28, label %23

14:                                               ; preds = %10, %14
  %15 = phi i64 [ 0, %10 ], [ %19, %14 ]
  %16 = trunc i64 %15 to i32
  %17 = tail call fastcc i32 @rc_bittree_price(ptr noundef nonnull %11, i32 noundef 6, i32 noundef %16) #10
  %18 = getelementptr inbounds i32, ptr %7, i64 %15
  store i32 %17, ptr %18, align 4, !tbaa !48
  %19 = add nuw nsw i64 %15, 1
  %20 = load i32, ptr %2, align 8, !tbaa !61
  %21 = zext i32 %20 to i64
  %22 = icmp ult i64 %19, %21
  br i1 %22, label %14, label %12, !llvm.loop !62

23:                                               ; preds = %28, %5, %12
  %24 = load <4 x i32>, ptr %7, align 4, !tbaa !48
  %25 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 25, i64 %6, i64 0
  store <4 x i32> %24, ptr %25, align 4, !tbaa !48
  %26 = add nuw nsw i64 %6, 1
  %27 = icmp eq i64 %26, 4
  br i1 %27, label %3, label %5, !llvm.loop !63

28:                                               ; preds = %12, %28
  %29 = phi i64 [ %37, %28 ], [ 14, %12 ]
  %30 = trunc i64 %29 to i32
  %31 = lshr i32 %30, 1
  %32 = add nsw i32 %31, -5
  %33 = tail call fastcc i32 @rc_direct_price(i32 noundef %32) #10, !range !64
  %34 = getelementptr inbounds i32, ptr %7, i64 %29
  %35 = load i32, ptr %34, align 4, !tbaa !48
  %36 = add i32 %35, %33
  store i32 %36, ptr %34, align 4, !tbaa !48
  %37 = add nuw nsw i64 %29, 1
  %38 = load i32, ptr %2, align 8, !tbaa !61
  %39 = zext i32 %38 to i64
  %40 = icmp ult i64 %37, %39
  br i1 %40, label %28, label %23, !llvm.loop !65

41:                                               ; preds = %60
  %42 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 27
  store i32 0, ptr %42, align 4, !tbaa !53
  ret void

43:                                               ; preds = %3, %60
  %44 = phi i64 [ 4, %3 ], [ %61, %60 ]
  %45 = trunc i64 %44 to i32
  %46 = tail call fastcc i32 @get_pos_slot(i32 noundef %45) #10, !range !66
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
  br i1 %62, label %41, label %43, !llvm.loop !67

63:                                               ; preds = %43, %63
  %64 = phi i64 [ 0, %43 ], [ %69, %63 ]
  %65 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 24, i64 %64, i64 %54
  %66 = load i32, ptr %65, align 4, !tbaa !48
  %67 = add i32 %66, %59
  %68 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 25, i64 %64, i64 %44
  store i32 %67, ptr %68, align 4, !tbaa !48
  %69 = add nuw nsw i64 %64, 1
  %70 = icmp eq i64 %69, 4
  br i1 %70, label %60, label %63, !llvm.loop !68
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define internal fastcc void @fill_align_prices(ptr nocapture noundef %0) unnamed_addr #2 !PGOFuncName !69 {
  %2 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 21
  br label %5

3:                                                ; preds = %5
  %4 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 29
  store i32 0, ptr %4, align 8, !tbaa !54
  ret void

5:                                                ; preds = %1, %5
  %6 = phi i64 [ 0, %1 ], [ %10, %5 ]
  %7 = trunc i64 %6 to i32
  %8 = tail call fastcc i32 @rc_bittree_reverse_price(ptr noundef nonnull %2, i32 noundef 4, i32 noundef %7) #10
  %9 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 28, i64 %6
  store i32 %8, ptr %9, align 4, !tbaa !48
  %10 = add nuw nsw i64 %6, 1
  %11 = icmp eq i64 %10, 16
  br i1 %11, label %3, label %5, !llvm.loop !70
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @helper1(ptr noundef %0, ptr noalias noundef %1, ptr noalias nocapture noundef writeonly %2, ptr noalias nocapture noundef writeonly %3, i32 noundef %4) unnamed_addr #0 !PGOFuncName !71 {
  %6 = alloca i32, align 4
  %7 = alloca [4 x i32], align 16
  %8 = getelementptr inbounds %struct.lzma_mf_s, ptr %1, i64 0, i32 18
  %9 = load i32, ptr %8, align 8, !tbaa !57
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #11
  %10 = getelementptr inbounds %struct.lzma_mf_s, ptr %1, i64 0, i32 6
  %11 = load i32, ptr %10, align 4, !tbaa !50
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 3
  %15 = call i32 @lzma_mf_find(ptr noundef nonnull %1, ptr noundef nonnull %6, ptr noundef nonnull %14) #12
  br label %21

16:                                               ; preds = %5
  %17 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 5
  %18 = load i32, ptr %17, align 8, !tbaa !56
  %19 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 4
  %20 = load i32, ptr %19, align 4, !tbaa !72
  store i32 %20, ptr %6, align 4, !tbaa !48
  br label %21

21:                                               ; preds = %16, %13
  %22 = phi i32 [ %15, %13 ], [ %18, %16 ]
  %23 = call fastcc i32 @mf_avail(ptr noundef nonnull %1) #10
  %24 = add i32 %23, 1
  %25 = icmp ult i32 %24, 273
  br i1 %25, label %26, label %29

26:                                               ; preds = %21
  %27 = icmp ult i32 %24, 2
  br i1 %27, label %28, label %29

28:                                               ; preds = %26
  store i32 -1, ptr %2, align 4, !tbaa !48
  store i32 1, ptr %3, align 4, !tbaa !48
  br label %249

29:                                               ; preds = %21, %26
  %30 = phi i32 [ %24, %26 ], [ 273, %21 ]
  %31 = call fastcc ptr @mf_ptr(ptr noundef nonnull %1) #10
  %32 = getelementptr inbounds i8, ptr %31, i64 -1
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #11
  %33 = load i8, ptr %32, align 1, !tbaa !73
  %34 = icmp ugt i32 %30, 2
  %35 = zext nneg i32 %30 to i64
  br label %41

36:                                               ; preds = %80
  %37 = zext i32 %81 to i64
  %38 = getelementptr inbounds [4 x i32], ptr %7, i64 0, i64 %37
  %39 = load i32, ptr %38, align 4, !tbaa !48
  %40 = icmp ult i32 %39, %9
  br i1 %40, label %86, label %84

41:                                               ; preds = %29, %80
  %42 = phi i64 [ 0, %29 ], [ %82, %80 ]
  %43 = phi i32 [ 0, %29 ], [ %81, %80 ]
  %44 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 2, i64 %42
  %45 = load i32, ptr %44, align 4, !tbaa !48
  %46 = zext i32 %45 to i64
  %47 = sub nsw i64 0, %46
  %48 = getelementptr inbounds i8, ptr %32, i64 %47
  %49 = getelementptr inbounds i8, ptr %48, i64 -1
  %50 = load i8, ptr %49, align 1, !tbaa !73
  %51 = icmp eq i8 %33, %50
  br i1 %51, label %52, label %57

52:                                               ; preds = %41
  %53 = load i8, ptr %31, align 1, !tbaa !73
  %54 = load i8, ptr %48, align 1, !tbaa !73
  %55 = icmp eq i8 %53, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %52
  br i1 %34, label %59, label %71

57:                                               ; preds = %52, %41
  %58 = getelementptr inbounds [4 x i32], ptr %7, i64 0, i64 %42
  store i32 0, ptr %58, align 4, !tbaa !48
  br label %80

59:                                               ; preds = %56, %66
  %60 = phi i64 [ %67, %66 ], [ 2, %56 ]
  %61 = getelementptr inbounds i8, ptr %32, i64 %60
  %62 = load i8, ptr %61, align 1, !tbaa !73
  %63 = getelementptr inbounds i8, ptr %49, i64 %60
  %64 = load i8, ptr %63, align 1, !tbaa !73
  %65 = icmp eq i8 %62, %64
  br i1 %65, label %66, label %69

66:                                               ; preds = %59
  %67 = add nuw nsw i64 %60, 1
  %68 = icmp eq i64 %67, %35
  br i1 %68, label %71, label %59, !llvm.loop !74

69:                                               ; preds = %59
  %70 = trunc i64 %60 to i32
  br label %71

71:                                               ; preds = %66, %69, %56
  %72 = phi i32 [ 2, %56 ], [ %70, %69 ], [ %30, %66 ]
  %73 = getelementptr inbounds [4 x i32], ptr %7, i64 0, i64 %42
  store i32 %72, ptr %73, align 4, !tbaa !48
  %74 = zext i32 %43 to i64
  %75 = getelementptr inbounds [4 x i32], ptr %7, i64 0, i64 %74
  %76 = load i32, ptr %75, align 4, !tbaa !48
  %77 = icmp ugt i32 %72, %76
  %78 = trunc i64 %42 to i32
  %79 = select i1 %77, i32 %78, i32 %43
  br label %80

80:                                               ; preds = %71, %57
  %81 = phi i32 [ %43, %57 ], [ %79, %71 ]
  %82 = add nuw nsw i64 %42, 1
  %83 = icmp eq i64 %82, 4
  br i1 %83, label %36, label %41, !llvm.loop !75

84:                                               ; preds = %36
  store i32 %81, ptr %2, align 4, !tbaa !48
  store i32 %39, ptr %3, align 4, !tbaa !48
  %85 = add i32 %39, -1
  call fastcc void @mf_skip(ptr noundef %1, i32 noundef %85) #10
  br label %247

86:                                               ; preds = %36
  %87 = icmp ult i32 %22, %9
  br i1 %87, label %96, label %88

88:                                               ; preds = %86
  %89 = load i32, ptr %6, align 4, !tbaa !48
  %90 = add i32 %89, -1
  %91 = zext i32 %90 to i64
  %92 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 3, i64 %91, i32 1
  %93 = load i32, ptr %92, align 4, !tbaa !76
  %94 = add i32 %93, 4
  store i32 %94, ptr %2, align 4, !tbaa !48
  store i32 %22, ptr %3, align 4, !tbaa !48
  %95 = add i32 %22, -1
  call fastcc void @mf_skip(ptr noundef %1, i32 noundef %95) #10
  br label %247

96:                                               ; preds = %86
  %97 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 2
  %98 = load i32, ptr %97, align 4, !tbaa !48
  %99 = zext i32 %98 to i64
  %100 = sub nsw i64 0, %99
  %101 = getelementptr inbounds i8, ptr %32, i64 %100
  %102 = getelementptr inbounds i8, ptr %101, i64 -1
  %103 = load i8, ptr %102, align 1, !tbaa !73
  %104 = icmp ult i32 %22, 2
  %105 = icmp ne i8 %33, %103
  %106 = select i1 %104, i1 %105, i1 false
  %107 = icmp ult i32 %39, 2
  %108 = and i1 %107, %106
  br i1 %108, label %109, label %110

109:                                              ; preds = %96
  store i32 -1, ptr %2, align 4, !tbaa !48
  store i32 1, ptr %3, align 4, !tbaa !48
  br label %247

110:                                              ; preds = %96
  %111 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 1
  %112 = load i32, ptr %111, align 8, !tbaa !78
  %113 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 32
  store i32 %112, ptr %113, align 4, !tbaa !79
  %114 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 9
  %115 = load i32, ptr %114, align 8, !tbaa !80
  %116 = and i32 %115, %4
  %117 = zext i32 %112 to i64
  %118 = zext i32 %116 to i64
  %119 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 13, i64 %117, i64 %118
  %120 = load i16, ptr %119, align 2, !tbaa !81
  %121 = call fastcc i32 @rc_bit_0_price(i16 noundef zeroext %120) #10, !range !66
  %122 = getelementptr inbounds i8, ptr %31, i64 -2
  %123 = load i8, ptr %122, align 1, !tbaa !73
  %124 = zext i8 %123 to i32
  %125 = icmp ugt i32 %112, 6
  %126 = zext i8 %103 to i32
  %127 = zext i8 %33 to i32
  %128 = call fastcc i32 @get_literal_price(ptr noundef nonnull %0, i32 noundef %4, i32 noundef %124, i1 noundef zeroext %125, i32 noundef %126, i32 noundef %127) #10
  %129 = add i32 %128, %121
  %130 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 32, i64 1
  %131 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 32, i64 1, i32 5
  store i32 %129, ptr %131, align 4, !tbaa !82
  call fastcc void @make_literal(ptr noundef nonnull %130) #10
  %132 = load i32, ptr %111, align 8, !tbaa !78
  %133 = zext i32 %132 to i64
  %134 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 13, i64 %133, i64 %118
  %135 = load i16, ptr %134, align 2, !tbaa !81
  %136 = call fastcc i32 @rc_bit_1_price(i16 noundef zeroext %135) #10, !range !66
  %137 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 14, i64 %133
  %138 = load i16, ptr %137, align 2, !tbaa !81
  %139 = call fastcc i32 @rc_bit_1_price(i16 noundef zeroext %138) #10, !range !66
  %140 = add nuw nsw i32 %139, %136
  br i1 %105, label %147, label %141

141:                                              ; preds = %110
  %142 = call fastcc i32 @get_short_rep_price(ptr noundef nonnull %0, i32 noundef %132, i32 noundef %116) #10, !range !83
  %143 = add nuw nsw i32 %142, %140
  %144 = load i32, ptr %131, align 4, !tbaa !82
  %145 = icmp ult i32 %143, %144
  br i1 %145, label %146, label %147

146:                                              ; preds = %141
  store i32 %143, ptr %131, align 4, !tbaa !82
  call fastcc void @make_short_rep(ptr noundef nonnull %130) #10
  br label %147

147:                                              ; preds = %141, %146, %110
  %148 = call i32 @llvm.umax.i32(i32 %22, i32 %39)
  %149 = icmp ult i32 %148, 2
  br i1 %149, label %150, label %153

150:                                              ; preds = %147
  %151 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 32, i64 1, i32 7
  %152 = load i32, ptr %151, align 4, !tbaa !49
  store i32 %152, ptr %2, align 4, !tbaa !48
  store i32 1, ptr %3, align 4, !tbaa !48
  br label %247

153:                                              ; preds = %147
  %154 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 32, i64 1, i32 6
  store i32 0, ptr %154, align 4, !tbaa !46
  %155 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 2, i64 0
  %156 = load <4 x i32>, ptr %155, align 4, !tbaa !48
  %157 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 32, i64 0, i32 8, i64 0
  store <4 x i32> %156, ptr %157, align 4, !tbaa !48
  %158 = call i32 @llvm.umax.i32(i32 %22, i32 %39)
  %159 = zext i32 %158 to i64
  br label %160

160:                                              ; preds = %153, %160
  %161 = phi i64 [ %159, %153 ], [ %166, %160 ]
  %162 = phi i32 [ %148, %153 ], [ %164, %160 ]
  %163 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 32, i64 %161, i32 5
  store i32 1073741824, ptr %163, align 4, !tbaa !82
  %164 = add i32 %162, -1
  %165 = icmp ugt i32 %164, 1
  %166 = add nsw i64 %161, -1
  br i1 %165, label %160, label %167, !llvm.loop !84

167:                                              ; preds = %160
  %168 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 23
  br label %181

169:                                              ; preds = %208
  %170 = load i32, ptr %111, align 8, !tbaa !78
  %171 = zext i32 %170 to i64
  %172 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 14, i64 %171
  %173 = load i16, ptr %172, align 2, !tbaa !81
  %174 = call fastcc i32 @rc_bit_0_price(i16 noundef zeroext %173) #10, !range !66
  %175 = add nuw nsw i32 %174, %136
  %176 = load i32, ptr %7, align 16
  %177 = add i32 %176, 1
  %178 = icmp ult i32 %176, 2
  %179 = select i1 %178, i32 2, i32 %177
  %180 = icmp ugt i32 %179, %22
  br i1 %180, label %247, label %211

181:                                              ; preds = %167, %208
  %182 = phi i64 [ 0, %167 ], [ %209, %208 ]
  %183 = getelementptr inbounds [4 x i32], ptr %7, i64 0, i64 %182
  %184 = load i32, ptr %183, align 4, !tbaa !48
  %185 = icmp ult i32 %184, 2
  br i1 %185, label %208, label %186

186:                                              ; preds = %181
  %187 = load i32, ptr %111, align 8, !tbaa !78
  %188 = trunc i64 %182 to i32
  %189 = call fastcc i32 @get_pure_rep_price(ptr noundef %0, i32 noundef %188, i32 noundef %187, i32 noundef %116) #10, !range !85
  %190 = add nuw nsw i32 %189, %140
  %191 = zext i32 %184 to i64
  br label %192

192:                                              ; preds = %204, %186
  %193 = phi i64 [ %205, %204 ], [ %191, %186 ]
  %194 = trunc i64 %193 to i32
  %195 = call fastcc i32 @get_len_price(ptr noundef nonnull %168, i32 noundef %194, i32 noundef %116) #10
  %196 = add i32 %190, %195
  %197 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 32, i64 %193, i32 5
  %198 = load i32, ptr %197, align 4, !tbaa !82
  %199 = icmp ult i32 %196, %198
  br i1 %199, label %200, label %204

200:                                              ; preds = %192
  store i32 %196, ptr %197, align 4, !tbaa !82
  %201 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 32, i64 %193, i32 6
  store i32 0, ptr %201, align 4, !tbaa !46
  %202 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 32, i64 %193, i32 7
  store i32 %188, ptr %202, align 4, !tbaa !49
  %203 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 32, i64 %193, i32 1
  store i8 0, ptr %203, align 4, !tbaa !86
  br label %204

204:                                              ; preds = %200, %192
  %205 = add nsw i64 %193, -1
  %206 = and i64 %205, 4294967294
  %207 = icmp eq i64 %206, 0
  br i1 %207, label %208, label %192, !llvm.loop !87

208:                                              ; preds = %204, %181
  %209 = add nuw nsw i64 %182, 1
  %210 = icmp eq i64 %209, 4
  br i1 %210, label %169, label %181, !llvm.loop !88

211:                                              ; preds = %169, %211
  %212 = phi i32 [ %217, %211 ], [ 0, %169 ]
  %213 = zext i32 %212 to i64
  %214 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 3, i64 %213
  %215 = load i32, ptr %214, align 4, !tbaa !89
  %216 = icmp ugt i32 %179, %215
  %217 = add i32 %212, 1
  br i1 %216, label %211, label %218, !llvm.loop !90

218:                                              ; preds = %211
  %219 = load i32, ptr %6, align 4
  br label %220

220:                                              ; preds = %218, %244
  %221 = phi i32 [ %246, %244 ], [ %179, %218 ]
  %222 = phi i32 [ %245, %244 ], [ %212, %218 ]
  %223 = zext i32 %222 to i64
  %224 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 3, i64 %223
  %225 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 3, i64 %223, i32 1
  %226 = load i32, ptr %225, align 4, !tbaa !76
  %227 = call fastcc i32 @get_pos_len_price(ptr noundef nonnull %0, i32 noundef %226, i32 noundef %221, i32 noundef %116) #10
  %228 = add i32 %175, %227
  %229 = zext i32 %221 to i64
  %230 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 32, i64 %229, i32 5
  %231 = load i32, ptr %230, align 4, !tbaa !82
  %232 = icmp ult i32 %228, %231
  br i1 %232, label %233, label %238

233:                                              ; preds = %220
  store i32 %228, ptr %230, align 4, !tbaa !82
  %234 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 32, i64 %229, i32 6
  store i32 0, ptr %234, align 4, !tbaa !46
  %235 = add i32 %226, 4
  %236 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 32, i64 %229, i32 7
  store i32 %235, ptr %236, align 4, !tbaa !49
  %237 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 32, i64 %229, i32 1
  store i8 0, ptr %237, align 4, !tbaa !86
  br label %238

238:                                              ; preds = %233, %220
  %239 = load i32, ptr %224, align 4, !tbaa !89
  %240 = icmp ne i32 %221, %239
  %241 = add i32 %222, 1
  %242 = icmp ne i32 %241, %219
  %243 = select i1 %240, i1 true, i1 %242
  br i1 %243, label %244, label %247

244:                                              ; preds = %238
  %245 = select i1 %240, i32 %222, i32 %241
  %246 = add i32 %221, 1
  br label %220

247:                                              ; preds = %238, %109, %169, %150, %88, %84
  %248 = phi i32 [ -1, %84 ], [ -1, %88 ], [ -1, %109 ], [ -1, %150 ], [ %148, %169 ], [ %148, %238 ]
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
define internal fastcc i32 @helper2(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7) unnamed_addr #2 !PGOFuncName !91 {
  %9 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 4
  %10 = load i32, ptr %9, align 4, !tbaa !72
  %11 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 5
  %12 = load i32, ptr %11, align 8, !tbaa !56
  %13 = zext i32 %5 to i64
  %14 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 32, i64 %13
  %15 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 32, i64 %13, i32 6
  %16 = load i32, ptr %15, align 4, !tbaa !46
  %17 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 32, i64 %13, i32 1
  %18 = load i8, ptr %17, align 4, !tbaa !86, !range !92, !noundef !93
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %41, label %20

20:                                               ; preds = %8
  %21 = add i32 %16, -1
  %22 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 32, i64 %13, i32 2
  %23 = load i8, ptr %22, align 1, !tbaa !94, !range !92, !noundef !93
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %47, label %25

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 32, i64 %13, i32 3
  %27 = load i32, ptr %26, align 4, !tbaa !95
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 32, i64 %28
  %30 = load i32, ptr %29, align 4, !tbaa !79
  %31 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 32, i64 %13, i32 4
  %32 = load i32, ptr %31, align 4, !tbaa !96
  %33 = icmp ult i32 %32, 4
  %34 = icmp ult i32 %30, 7
  %35 = select i1 %34, i32 8, i32 11
  %36 = select i1 %34, i32 7, i32 10
  %37 = select i1 %33, i32 %35, i32 %36
  %38 = select i1 %34, i32 -3, i32 -6
  %39 = add nsw i32 %38, %37
  %40 = icmp eq i32 %16, %5
  br i1 %40, label %57, label %71

41:                                               ; preds = %8
  %42 = zext i32 %16 to i64
  %43 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 32, i64 %42
  %44 = load i32, ptr %43, align 4, !tbaa !79
  %45 = add i32 %5, -1
  %46 = icmp eq i32 %16, %45
  br i1 %46, label %57, label %72

47:                                               ; preds = %20
  %48 = zext i32 %21 to i64
  %49 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 32, i64 %48
  %50 = load i32, ptr %49, align 4, !tbaa !79
  %51 = icmp ult i32 %50, 4
  %52 = icmp ult i32 %50, 10
  %53 = select i1 %52, i32 -3, i32 -6
  %54 = add i32 %53, %50
  %55 = select i1 %51, i32 0, i32 %54
  %56 = icmp eq i32 %16, %5
  br i1 %56, label %57, label %72

57:                                               ; preds = %47, %25, %41
  %58 = phi i32 [ %39, %25 ], [ %44, %41 ], [ %55, %47 ]
  %59 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 32, i64 %13, i32 7
  %60 = load i32, ptr %59, align 4, !tbaa !49
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %57
  %63 = icmp ult i32 %58, 7
  %64 = select i1 %63, i32 9, i32 11
  br label %138

65:                                               ; preds = %57
  %66 = icmp ult i32 %58, 4
  %67 = icmp ult i32 %58, 10
  %68 = select i1 %67, i32 -3, i32 -6
  %69 = add i32 %68, %58
  %70 = select i1 %66, i32 0, i32 %69
  br label %138

71:                                               ; preds = %25
  br i1 %24, label %72, label %83

72:                                               ; preds = %47, %41, %71
  %73 = phi i32 [ %39, %71 ], [ %44, %41 ], [ %55, %47 ]
  %74 = phi i32 [ %21, %71 ], [ %16, %41 ], [ %21, %47 ]
  %75 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 32, i64 %13, i32 7
  %76 = load i32, ptr %75, align 4, !tbaa !49
  %77 = icmp ult i32 %76, 4
  %78 = icmp ult i32 %73, 7
  br i1 %77, label %79, label %81

79:                                               ; preds = %72
  %80 = select i1 %78, i32 8, i32 11
  br label %91

81:                                               ; preds = %72
  %82 = select i1 %78, i32 7, i32 10
  br label %124

83:                                               ; preds = %71
  %84 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 32, i64 %13, i32 3
  %85 = load i32, ptr %84, align 4, !tbaa !95
  %86 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 32, i64 %13, i32 4
  %87 = load i32, ptr %86, align 4, !tbaa !96
  %88 = icmp ult i32 %39, 7
  %89 = select i1 %88, i32 8, i32 11
  %90 = icmp ult i32 %87, 4
  br i1 %90, label %91, label %124

91:                                               ; preds = %79, %83
  %92 = phi i32 [ %74, %79 ], [ %85, %83 ]
  %93 = phi i32 [ %80, %79 ], [ %89, %83 ]
  %94 = phi i32 [ %76, %79 ], [ %87, %83 ]
  %95 = zext i32 %92 to i64
  %96 = zext nneg i32 %94 to i64
  %97 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 32, i64 %95, i32 8, i64 %96
  %98 = load i32, ptr %97, align 4, !tbaa !48
  store i32 %98, ptr %1, align 4, !tbaa !48
  %99 = icmp eq i32 %94, 0
  br i1 %99, label %105, label %100

100:                                              ; preds = %91
  %101 = add nuw nsw i32 %94, 1
  %102 = zext nneg i32 %101 to i64
  br label %108

103:                                              ; preds = %108
  %104 = icmp ult i32 %94, 3
  br i1 %104, label %105, label %138

105:                                              ; preds = %91, %103
  %106 = phi i32 [ %101, %103 ], [ 1, %91 ]
  %107 = zext nneg i32 %106 to i64
  br label %116

108:                                              ; preds = %100, %108
  %109 = phi i64 [ 1, %100 ], [ %114, %108 ]
  %110 = add nsw i64 %109, -1
  %111 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 32, i64 %95, i32 8, i64 %110
  %112 = load i32, ptr %111, align 4, !tbaa !48
  %113 = getelementptr inbounds i32, ptr %1, i64 %109
  store i32 %112, ptr %113, align 4, !tbaa !48
  %114 = add nuw nsw i64 %109, 1
  %115 = icmp eq i64 %114, %102
  br i1 %115, label %103, label %108, !llvm.loop !97

116:                                              ; preds = %105, %116
  %117 = phi i64 [ %107, %105 ], [ %121, %116 ]
  %118 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 32, i64 %95, i32 8, i64 %117
  %119 = load i32, ptr %118, align 4, !tbaa !48
  %120 = getelementptr inbounds i32, ptr %1, i64 %117
  store i32 %119, ptr %120, align 4, !tbaa !48
  %121 = add nuw nsw i64 %117, 1
  %122 = and i64 %121, 4294967295
  %123 = icmp eq i64 %122, 4
  br i1 %123, label %138, label %116, !llvm.loop !98

124:                                              ; preds = %81, %83
  %125 = phi i32 [ %74, %81 ], [ %85, %83 ]
  %126 = phi i32 [ %82, %81 ], [ %89, %83 ]
  %127 = phi i32 [ %76, %81 ], [ %87, %83 ]
  %128 = add i32 %127, -4
  store i32 %128, ptr %1, align 4, !tbaa !48
  %129 = zext i32 %125 to i64
  br label %130

130:                                              ; preds = %124, %130
  %131 = phi i64 [ 1, %124 ], [ %136, %130 ]
  %132 = add nsw i64 %131, -1
  %133 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 32, i64 %129, i32 8, i64 %132
  %134 = load i32, ptr %133, align 4, !tbaa !48
  %135 = getelementptr inbounds i32, ptr %1, i64 %131
  store i32 %134, ptr %135, align 4, !tbaa !48
  %136 = add nuw nsw i64 %131, 1
  %137 = icmp eq i64 %136, 4
  br i1 %137, label %138, label %130, !llvm.loop !99

138:                                              ; preds = %130, %116, %103, %62, %65
  %139 = phi i32 [ %64, %62 ], [ %70, %65 ], [ %93, %103 ], [ %93, %116 ], [ %126, %130 ]
  store i32 %139, ptr %14, align 4, !tbaa !79
  br label %173

140:                                              ; preds = %173
  %141 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 32, i64 %13, i32 5
  %142 = load i32, ptr %141, align 4, !tbaa !82
  %143 = load i8, ptr %2, align 1, !tbaa !73
  %144 = load i32, ptr %1, align 4, !tbaa !48
  %145 = zext i32 %144 to i64
  %146 = sub nsw i64 0, %145
  %147 = getelementptr inbounds i8, ptr %2, i64 %146
  %148 = getelementptr inbounds i8, ptr %147, i64 -1
  %149 = load i8, ptr %148, align 1, !tbaa !73
  %150 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 9
  %151 = load i32, ptr %150, align 8, !tbaa !80
  %152 = and i32 %151, %4
  %153 = zext i32 %139 to i64
  %154 = zext i32 %152 to i64
  %155 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 13, i64 %153, i64 %154
  %156 = load i16, ptr %155, align 2, !tbaa !81
  %157 = tail call fastcc i32 @rc_bit_0_price(i16 noundef zeroext %156) #10, !range !66
  %158 = add i32 %157, %142
  %159 = getelementptr i8, ptr %2, i64 -1
  %160 = load i8, ptr %159, align 1, !tbaa !73
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
  %171 = load i32, ptr %170, align 4, !tbaa !82
  %172 = icmp ult i32 %166, %171
  br i1 %172, label %180, label %183

173:                                              ; preds = %138, %173
  %174 = phi i64 [ 0, %138 ], [ %178, %173 ]
  %175 = getelementptr inbounds i32, ptr %1, i64 %174
  %176 = load i32, ptr %175, align 4, !tbaa !48
  %177 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 32, i64 %13, i32 8, i64 %174
  store i32 %176, ptr %177, align 4, !tbaa !48
  %178 = add nuw nsw i64 %174, 1
  %179 = icmp eq i64 %178, 4
  br i1 %179, label %140, label %173, !llvm.loop !100

180:                                              ; preds = %140
  store i32 %166, ptr %170, align 4, !tbaa !82
  %181 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 32, i64 %168, i32 6
  store i32 %5, ptr %181, align 4, !tbaa !46
  tail call fastcc void @make_literal(ptr noundef nonnull %169) #10
  %182 = load i16, ptr %155, align 2, !tbaa !81
  br label %183

183:                                              ; preds = %180, %140
  %184 = phi i16 [ %182, %180 ], [ %156, %140 ]
  %185 = phi i8 [ 1, %180 ], [ 0, %140 ]
  %186 = tail call fastcc i32 @rc_bit_1_price(i16 noundef zeroext %184) #10, !range !66
  %187 = add i32 %186, %142
  %188 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 14, i64 %153
  %189 = load i16, ptr %188, align 2, !tbaa !81
  %190 = tail call fastcc i32 @rc_bit_1_price(i16 noundef zeroext %189) #10, !range !66
  %191 = add i32 %190, %187
  %192 = icmp eq i8 %149, %143
  br i1 %192, label %193, label %207

193:                                              ; preds = %183
  %194 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 32, i64 %168, i32 6
  %195 = load i32, ptr %194, align 4, !tbaa !46
  %196 = icmp ult i32 %195, %5
  br i1 %196, label %197, label %201

197:                                              ; preds = %193
  %198 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 32, i64 %168, i32 7
  %199 = load i32, ptr %198, align 4, !tbaa !49
  %200 = icmp eq i32 %199, 0
  br i1 %200, label %207, label %201

201:                                              ; preds = %197, %193
  %202 = tail call fastcc i32 @get_short_rep_price(ptr noundef nonnull %0, i32 noundef %139, i32 noundef %152) #10, !range !83
  %203 = add i32 %202, %191
  %204 = load i32, ptr %170, align 4, !tbaa !82
  %205 = icmp ugt i32 %203, %204
  br i1 %205, label %207, label %206

206:                                              ; preds = %201
  store i32 %203, ptr %170, align 4, !tbaa !82
  store i32 %5, ptr %194, align 4, !tbaa !46
  tail call fastcc void @make_short_rep(ptr noundef nonnull %169) #10
  br label %207

207:                                              ; preds = %201, %206, %197, %183
  %208 = phi i8 [ %185, %197 ], [ %185, %183 ], [ 1, %206 ], [ %185, %201 ]
  %209 = icmp ult i32 %7, 2
  br i1 %209, label %615, label %210

210:                                              ; preds = %207
  %211 = tail call i32 @llvm.umin.i32(i32 %7, i32 %6)
  %212 = icmp ne i8 %208, 0
  %213 = or i1 %192, %212
  br i1 %213, label %285, label %214

214:                                              ; preds = %210
  %215 = load i32, ptr %1, align 4, !tbaa !48
  %216 = zext i32 %215 to i64
  %217 = sub nsw i64 0, %216
  %218 = getelementptr inbounds i8, ptr %2, i64 %217
  %219 = getelementptr inbounds i8, ptr %218, i64 -1
  %220 = add i32 %6, 1
  %221 = tail call i32 @llvm.umin.i32(i32 %220, i32 %7)
  %222 = icmp ugt i32 %221, 1
  br i1 %222, label %223, label %285

223:                                              ; preds = %214
  %224 = zext i32 %221 to i64
  br label %225

225:                                              ; preds = %223, %232
  %226 = phi i64 [ 1, %223 ], [ %233, %232 ]
  %227 = getelementptr inbounds i8, ptr %2, i64 %226
  %228 = load i8, ptr %227, align 1, !tbaa !73
  %229 = getelementptr inbounds i8, ptr %219, i64 %226
  %230 = load i8, ptr %229, align 1, !tbaa !73
  %231 = icmp eq i8 %228, %230
  br i1 %231, label %232, label %235

232:                                              ; preds = %225
  %233 = add nuw nsw i64 %226, 1
  %234 = icmp eq i64 %233, %224
  br i1 %234, label %237, label %225, !llvm.loop !101

235:                                              ; preds = %225
  %236 = trunc i64 %226 to i32
  br label %237

237:                                              ; preds = %232, %235
  %238 = phi i32 [ %236, %235 ], [ %221, %232 ]
  %239 = add i32 %238, -1
  %240 = icmp ugt i32 %239, 1
  br i1 %240, label %241, label %285

241:                                              ; preds = %237
  %242 = icmp ult i32 %139, 4
  %243 = icmp ult i32 %139, 10
  %244 = select i1 %243, i32 -3, i32 -6
  %245 = add i32 %244, %139
  %246 = select i1 %242, i32 0, i32 %245
  %247 = add i32 %4, 1
  %248 = load i32, ptr %150, align 8, !tbaa !80
  %249 = and i32 %248, %247
  %250 = zext i32 %246 to i64
  %251 = zext i32 %249 to i64
  %252 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 13, i64 %250, i64 %251
  %253 = load i16, ptr %252, align 2, !tbaa !81
  %254 = tail call fastcc i32 @rc_bit_1_price(i16 noundef zeroext %253) #10, !range !66
  %255 = add i32 %254, %166
  %256 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 14, i64 %250
  %257 = load i16, ptr %256, align 2, !tbaa !81
  %258 = tail call fastcc i32 @rc_bit_1_price(i16 noundef zeroext %257) #10, !range !66
  %259 = add i32 %255, %258
  %260 = add i32 %238, %5
  %261 = icmp ugt i32 %260, %3
  br i1 %261, label %264, label %262

262:                                              ; preds = %241
  %263 = zext i32 %260 to i64
  br label %272

264:                                              ; preds = %241
  %265 = zext i32 %3 to i64
  %266 = zext i32 %260 to i64
  br label %267

267:                                              ; preds = %264, %267
  %268 = phi i64 [ %265, %264 ], [ %269, %267 ]
  %269 = add nuw nsw i64 %268, 1
  %270 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 32, i64 %269, i32 5
  store i32 1073741824, ptr %270, align 4, !tbaa !82
  %271 = icmp eq i64 %269, %266
  br i1 %271, label %272, label %267, !llvm.loop !102

272:                                              ; preds = %267, %262
  %273 = phi i64 [ %263, %262 ], [ %266, %267 ]
  %274 = phi i32 [ %3, %262 ], [ %260, %267 ]
  %275 = tail call fastcc i32 @get_rep_price(ptr noundef nonnull %0, i32 noundef %239, i32 noundef %246, i32 noundef %249) #10
  %276 = add i32 %259, %275
  %277 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 32, i64 %273, i32 5
  %278 = load i32, ptr %277, align 4, !tbaa !82
  %279 = icmp ult i32 %276, %278
  br i1 %279, label %280, label %285

280:                                              ; preds = %272
  store i32 %276, ptr %277, align 4, !tbaa !82
  %281 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 32, i64 %273, i32 6
  store i32 %167, ptr %281, align 4, !tbaa !46
  %282 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 32, i64 %273, i32 7
  store i32 0, ptr %282, align 4, !tbaa !49
  %283 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 32, i64 %273, i32 1
  store i8 1, ptr %283, align 4, !tbaa !86
  %284 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 32, i64 %273, i32 2
  store i8 0, ptr %284, align 1, !tbaa !94
  br label %285

285:                                              ; preds = %214, %237, %280, %272, %210
  %286 = phi i32 [ %3, %210 ], [ %3, %237 ], [ %274, %280 ], [ %274, %272 ], [ %3, %214 ]
  %287 = getelementptr inbounds i8, ptr %2, i64 1
  %288 = icmp ugt i32 %211, 2
  %289 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 23
  %290 = select i1 %162, i64 11, i64 8
  %291 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 14, i64 5
  %292 = zext i32 %211 to i64
  br label %295

293:                                              ; preds = %447
  %294 = icmp ugt i32 %12, %211
  br i1 %294, label %452, label %461

295:                                              ; preds = %285, %447
  %296 = phi i64 [ 0, %285 ], [ %450, %447 ]
  %297 = phi i32 [ %286, %285 ], [ %449, %447 ]
  %298 = phi i32 [ 2, %285 ], [ %448, %447 ]
  %299 = getelementptr inbounds i32, ptr %1, i64 %296
  %300 = load i32, ptr %299, align 4, !tbaa !48
  %301 = zext i32 %300 to i64
  %302 = sub nsw i64 0, %301
  %303 = getelementptr inbounds i8, ptr %2, i64 %302
  %304 = getelementptr inbounds i8, ptr %303, i64 -1
  %305 = load i8, ptr %2, align 1, !tbaa !73
  %306 = load i8, ptr %304, align 1, !tbaa !73
  %307 = icmp eq i8 %305, %306
  br i1 %307, label %308, label %447

308:                                              ; preds = %295
  %309 = load i8, ptr %287, align 1, !tbaa !73
  %310 = load i8, ptr %303, align 1, !tbaa !73
  %311 = icmp eq i8 %309, %310
  br i1 %311, label %312, label %447

312:                                              ; preds = %308
  br i1 %288, label %313, label %325

313:                                              ; preds = %312, %320
  %314 = phi i64 [ %321, %320 ], [ 2, %312 ]
  %315 = getelementptr inbounds i8, ptr %2, i64 %314
  %316 = load i8, ptr %315, align 1, !tbaa !73
  %317 = getelementptr inbounds i8, ptr %304, i64 %314
  %318 = load i8, ptr %317, align 1, !tbaa !73
  %319 = icmp eq i8 %316, %318
  br i1 %319, label %320, label %323

320:                                              ; preds = %313
  %321 = add nuw nsw i64 %314, 1
  %322 = icmp eq i64 %321, %292
  br i1 %322, label %325, label %313, !llvm.loop !103

323:                                              ; preds = %313
  %324 = trunc i64 %314 to i32
  br label %325

325:                                              ; preds = %320, %323, %312
  %326 = phi i32 [ 2, %312 ], [ %324, %323 ], [ %211, %320 ]
  %327 = add i32 %326, %5
  %328 = icmp ult i32 %297, %327
  br i1 %328, label %329, label %337

329:                                              ; preds = %325
  %330 = zext i32 %297 to i64
  %331 = zext i32 %327 to i64
  br label %332

332:                                              ; preds = %329, %332
  %333 = phi i64 [ %330, %329 ], [ %334, %332 ]
  %334 = add nuw nsw i64 %333, 1
  %335 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 32, i64 %334, i32 5
  store i32 1073741824, ptr %335, align 4, !tbaa !82
  %336 = icmp eq i64 %334, %331
  br i1 %336, label %337, label %332, !llvm.loop !104

337:                                              ; preds = %332, %325
  %338 = phi i32 [ %297, %325 ], [ %327, %332 ]
  %339 = trunc i64 %296 to i32
  %340 = tail call fastcc i32 @get_pure_rep_price(ptr noundef %0, i32 noundef %339, i32 noundef %139, i32 noundef %152) #10, !range !85
  %341 = add i32 %340, %191
  br label %342

342:                                              ; preds = %355, %337
  %343 = phi i32 [ %326, %337 ], [ %356, %355 ]
  %344 = tail call fastcc i32 @get_len_price(ptr noundef nonnull %289, i32 noundef %343, i32 noundef %152) #10
  %345 = add i32 %344, %341
  %346 = add i32 %343, %5
  %347 = zext i32 %346 to i64
  %348 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 32, i64 %347, i32 5
  %349 = load i32, ptr %348, align 4, !tbaa !82
  %350 = icmp ult i32 %345, %349
  br i1 %350, label %351, label %355

351:                                              ; preds = %342
  store i32 %345, ptr %348, align 4, !tbaa !82
  %352 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 32, i64 %347, i32 6
  store i32 %5, ptr %352, align 4, !tbaa !46
  %353 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 32, i64 %347, i32 7
  store i32 %339, ptr %353, align 4, !tbaa !49
  %354 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 32, i64 %347, i32 1
  store i8 0, ptr %354, align 4, !tbaa !86
  br label %355

355:                                              ; preds = %351, %342
  %356 = add i32 %343, -1
  %357 = icmp ugt i32 %356, 1
  br i1 %357, label %342, label %358, !llvm.loop !105

358:                                              ; preds = %355
  %359 = icmp eq i64 %296, 0
  %360 = add i32 %326, 1
  %361 = select i1 %359, i32 %360, i32 %298
  %362 = add i32 %360, %6
  %363 = tail call i32 @llvm.umin.i32(i32 %362, i32 %7)
  %364 = icmp ult i32 %360, %363
  br i1 %364, label %365, label %380

365:                                              ; preds = %358
  %366 = zext i32 %360 to i64
  br label %367

367:                                              ; preds = %365, %374
  %368 = phi i64 [ %366, %365 ], [ %375, %374 ]
  %369 = getelementptr inbounds i8, ptr %2, i64 %368
  %370 = load i8, ptr %369, align 1, !tbaa !73
  %371 = getelementptr inbounds i8, ptr %304, i64 %368
  %372 = load i8, ptr %371, align 1, !tbaa !73
  %373 = icmp eq i8 %370, %372
  br i1 %373, label %374, label %378

374:                                              ; preds = %367
  %375 = add nuw nsw i64 %368, 1
  %376 = trunc i64 %375 to i32
  %377 = icmp eq i32 %363, %376
  br i1 %377, label %380, label %367, !llvm.loop !106

378:                                              ; preds = %367
  %379 = trunc i64 %368 to i32
  br label %380

380:                                              ; preds = %374, %378, %358
  %381 = phi i32 [ %360, %358 ], [ %379, %378 ], [ %363, %374 ]
  %382 = sub i32 %381, %360
  %383 = icmp ugt i32 %382, 1
  br i1 %383, label %384, label %447

384:                                              ; preds = %380
  %385 = add i32 %326, %4
  %386 = load i32, ptr %150, align 8, !tbaa !80
  %387 = and i32 %386, %385
  %388 = tail call fastcc i32 @get_len_price(ptr noundef nonnull %289, i32 noundef %326, i32 noundef %152) #10
  %389 = add i32 %388, %341
  %390 = zext i32 %387 to i64
  %391 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 13, i64 %290, i64 %390
  %392 = load i16, ptr %391, align 2, !tbaa !81
  %393 = tail call fastcc i32 @rc_bit_0_price(i16 noundef zeroext %392) #10, !range !66
  %394 = add i32 %389, %393
  %395 = add i32 %326, -1
  %396 = zext i32 %395 to i64
  %397 = getelementptr inbounds i8, ptr %2, i64 %396
  %398 = load i8, ptr %397, align 1, !tbaa !73
  %399 = zext i8 %398 to i32
  %400 = zext i32 %326 to i64
  %401 = getelementptr inbounds i8, ptr %304, i64 %400
  %402 = load i8, ptr %401, align 1, !tbaa !73
  %403 = zext i8 %402 to i32
  %404 = getelementptr inbounds i8, ptr %2, i64 %400
  %405 = load i8, ptr %404, align 1, !tbaa !73
  %406 = zext i8 %405 to i32
  %407 = tail call fastcc i32 @get_literal_price(ptr noundef %0, i32 noundef %385, i32 noundef %399, i1 noundef zeroext true, i32 noundef %403, i32 noundef %406) #10
  %408 = add i32 %394, %407
  %409 = add i32 %385, 1
  %410 = and i32 %386, %409
  %411 = zext i32 %410 to i64
  %412 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 13, i64 5, i64 %411
  %413 = load i16, ptr %412, align 2, !tbaa !81
  %414 = tail call fastcc i32 @rc_bit_1_price(i16 noundef zeroext %413) #10, !range !66
  %415 = add i32 %408, %414
  %416 = load i16, ptr %291, align 2, !tbaa !81
  %417 = tail call fastcc i32 @rc_bit_1_price(i16 noundef zeroext %416) #10, !range !66
  %418 = add i32 %415, %417
  %419 = add i32 %327, 1
  %420 = add i32 %382, %419
  %421 = icmp ult i32 %338, %420
  br i1 %421, label %424, label %422

422:                                              ; preds = %384
  %423 = zext i32 %420 to i64
  br label %432

424:                                              ; preds = %384
  %425 = zext i32 %338 to i64
  %426 = zext i32 %420 to i64
  br label %427

427:                                              ; preds = %424, %427
  %428 = phi i64 [ %425, %424 ], [ %429, %427 ]
  %429 = add nuw nsw i64 %428, 1
  %430 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 32, i64 %429, i32 5
  store i32 1073741824, ptr %430, align 4, !tbaa !82
  %431 = icmp eq i64 %429, %426
  br i1 %431, label %432, label %427, !llvm.loop !107

432:                                              ; preds = %427, %422
  %433 = phi i64 [ %423, %422 ], [ %426, %427 ]
  %434 = phi i32 [ %338, %422 ], [ %420, %427 ]
  %435 = tail call fastcc i32 @get_rep_price(ptr noundef nonnull %0, i32 noundef %382, i32 noundef 5, i32 noundef %410) #10
  %436 = add i32 %418, %435
  %437 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 32, i64 %433, i32 5
  %438 = load i32, ptr %437, align 4, !tbaa !82
  %439 = icmp ult i32 %436, %438
  br i1 %439, label %440, label %447

440:                                              ; preds = %432
  store i32 %436, ptr %437, align 4, !tbaa !82
  %441 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 32, i64 %433, i32 6
  store i32 %419, ptr %441, align 4, !tbaa !46
  %442 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 32, i64 %433, i32 7
  store i32 0, ptr %442, align 4, !tbaa !49
  %443 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 32, i64 %433, i32 1
  store i8 1, ptr %443, align 4, !tbaa !86
  %444 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 32, i64 %433, i32 2
  store i8 1, ptr %444, align 1, !tbaa !94
  %445 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 32, i64 %433, i32 3
  store i32 %5, ptr %445, align 4, !tbaa !95
  %446 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 32, i64 %433, i32 4
  store i32 %339, ptr %446, align 4, !tbaa !96
  br label %447

447:                                              ; preds = %380, %440, %432, %295, %308
  %448 = phi i32 [ %298, %308 ], [ %298, %295 ], [ %361, %432 ], [ %361, %440 ], [ %361, %380 ]
  %449 = phi i32 [ %297, %308 ], [ %297, %295 ], [ %434, %432 ], [ %434, %440 ], [ %338, %380 ]
  %450 = add nuw nsw i64 %296, 1
  %451 = icmp eq i64 %450, 4
  br i1 %451, label %293, label %295, !llvm.loop !108

452:                                              ; preds = %293, %452
  %453 = phi i32 [ %458, %452 ], [ 0, %293 ]
  %454 = zext i32 %453 to i64
  %455 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 3, i64 %454
  %456 = load i32, ptr %455, align 4, !tbaa !89
  %457 = icmp ugt i32 %211, %456
  %458 = add i32 %453, 1
  br i1 %457, label %452, label %459, !llvm.loop !109

459:                                              ; preds = %452
  %460 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 3, i64 %454
  store i32 %211, ptr %460, align 4, !tbaa !89
  br label %461

461:                                              ; preds = %459, %293
  %462 = phi i32 [ %211, %459 ], [ %12, %293 ]
  %463 = phi i32 [ %458, %459 ], [ %10, %293 ]
  %464 = icmp ult i32 %462, %448
  br i1 %464, label %615, label %465

465:                                              ; preds = %461
  %466 = load i16, ptr %188, align 2, !tbaa !81
  %467 = tail call fastcc i32 @rc_bit_0_price(i16 noundef zeroext %466) #10, !range !66
  %468 = add i32 %467, %187
  %469 = add i32 %462, %5
  %470 = icmp ult i32 %449, %469
  br i1 %470, label %471, label %474

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
  store i32 1073741824, ptr %479, align 4, !tbaa !82
  %480 = icmp eq i64 %478, %473
  br i1 %480, label %474, label %476, !llvm.loop !110

481:                                              ; preds = %481, %474
  %482 = phi i32 [ %487, %481 ], [ 0, %474 ]
  %483 = zext i32 %482 to i64
  %484 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 3, i64 %483
  %485 = load i32, ptr %484, align 4, !tbaa !89
  %486 = icmp ugt i32 %448, %485
  %487 = add i32 %482, 1
  br i1 %486, label %481, label %488, !llvm.loop !111

488:                                              ; preds = %481
  %489 = select i1 %162, i64 10, i64 7
  %490 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 14, i64 4
  br label %491

491:                                              ; preds = %611, %488
  %492 = phi i32 [ %505, %611 ], [ %448, %488 ]
  %493 = phi i32 [ %613, %611 ], [ %482, %488 ]
  %494 = phi i32 [ %526, %611 ], [ %448, %488 ]
  %495 = phi i32 [ %612, %611 ], [ %475, %488 ]
  %496 = zext i32 %493 to i64
  %497 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 3, i64 %496
  %498 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 3, i64 %496, i32 1
  %499 = load i32, ptr %498, align 4, !tbaa !76
  %500 = add i32 %499, 4
  %501 = load i32, ptr %497, align 4, !tbaa !89
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
  %511 = load i32, ptr %510, align 4, !tbaa !82
  %512 = icmp ult i32 %507, %511
  br i1 %512, label %513, label %517

513:                                              ; preds = %502
  store i32 %507, ptr %510, align 4, !tbaa !82
  %514 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 32, i64 %509, i32 6
  store i32 %5, ptr %514, align 4, !tbaa !46
  %515 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 32, i64 %509, i32 7
  store i32 %500, ptr %515, align 4, !tbaa !49
  %516 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 32, i64 %509, i32 1
  store i8 0, ptr %516, align 4, !tbaa !86
  br label %517

517:                                              ; preds = %513, %502
  %518 = icmp eq i32 %504, %501
  br i1 %518, label %521, label %519

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
  br i1 %529, label %530, label %545

530:                                              ; preds = %521
  %531 = zext i32 %528 to i64
  br label %532

532:                                              ; preds = %530, %539
  %533 = phi i64 [ %522, %530 ], [ %540, %539 ]
  %534 = getelementptr inbounds i8, ptr %2, i64 %533
  %535 = load i8, ptr %534, align 1, !tbaa !73
  %536 = getelementptr inbounds i8, ptr %525, i64 %533
  %537 = load i8, ptr %536, align 1, !tbaa !73
  %538 = icmp eq i8 %535, %537
  br i1 %538, label %539, label %542

539:                                              ; preds = %532
  %540 = add nuw nsw i64 %533, 1
  %541 = icmp ult i64 %540, %531
  br i1 %541, label %532, label %542, !llvm.loop !112

542:                                              ; preds = %539, %532
  %543 = phi i64 [ %533, %532 ], [ %540, %539 ]
  %544 = trunc i64 %543 to i32
  br label %545

545:                                              ; preds = %542, %521
  %546 = phi i32 [ %526, %521 ], [ %544, %542 ]
  %547 = sub i32 %546, %526
  %548 = icmp ugt i32 %547, 1
  br i1 %548, label %549, label %611

549:                                              ; preds = %545
  %550 = add i32 %504, %4
  %551 = load i32, ptr %150, align 8, !tbaa !80
  %552 = and i32 %551, %550
  %553 = zext i32 %552 to i64
  %554 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 13, i64 %489, i64 %553
  %555 = load i16, ptr %554, align 2, !tbaa !81
  %556 = tail call fastcc i32 @rc_bit_0_price(i16 noundef zeroext %555) #10, !range !66
  %557 = add i32 %556, %507
  %558 = add i32 %504, -1
  %559 = zext i32 %558 to i64
  %560 = getelementptr inbounds i8, ptr %2, i64 %559
  %561 = load i8, ptr %560, align 1, !tbaa !73
  %562 = zext i8 %561 to i32
  %563 = zext i32 %504 to i64
  %564 = getelementptr inbounds i8, ptr %525, i64 %563
  %565 = load i8, ptr %564, align 1, !tbaa !73
  %566 = zext i8 %565 to i32
  %567 = getelementptr inbounds i8, ptr %2, i64 %563
  %568 = load i8, ptr %567, align 1, !tbaa !73
  %569 = zext i8 %568 to i32
  %570 = tail call fastcc i32 @get_literal_price(ptr noundef %0, i32 noundef %550, i32 noundef %562, i1 noundef zeroext true, i32 noundef %566, i32 noundef %569) #10
  %571 = add i32 %557, %570
  %572 = add i32 %552, 1
  %573 = and i32 %572, %551
  %574 = zext i32 %573 to i64
  %575 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 13, i64 4, i64 %574
  %576 = load i16, ptr %575, align 2, !tbaa !81
  %577 = tail call fastcc i32 @rc_bit_1_price(i16 noundef zeroext %576) #10, !range !66
  %578 = add i32 %571, %577
  %579 = load i16, ptr %490, align 2, !tbaa !81
  %580 = tail call fastcc i32 @rc_bit_1_price(i16 noundef zeroext %579) #10, !range !66
  %581 = add i32 %578, %580
  %582 = add i32 %508, 1
  %583 = add i32 %547, %582
  %584 = icmp ult i32 %495, %583
  br i1 %584, label %587, label %585

585:                                              ; preds = %549
  %586 = zext i32 %583 to i64
  br label %595

587:                                              ; preds = %549
  %588 = zext i32 %495 to i64
  %589 = zext i32 %583 to i64
  br label %590

590:                                              ; preds = %587, %590
  %591 = phi i64 [ %588, %587 ], [ %592, %590 ]
  %592 = add nuw nsw i64 %591, 1
  %593 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 32, i64 %592, i32 5
  store i32 1073741824, ptr %593, align 4, !tbaa !82
  %594 = icmp eq i64 %592, %589
  br i1 %594, label %595, label %590, !llvm.loop !113

595:                                              ; preds = %590, %585
  %596 = phi i64 [ %586, %585 ], [ %589, %590 ]
  %597 = phi i32 [ %495, %585 ], [ %583, %590 ]
  %598 = tail call fastcc i32 @get_rep_price(ptr noundef nonnull %0, i32 noundef %547, i32 noundef 4, i32 noundef %573) #10
  %599 = add i32 %581, %598
  %600 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 32, i64 %596, i32 5
  %601 = load i32, ptr %600, align 4, !tbaa !82
  %602 = icmp ult i32 %599, %601
  br i1 %602, label %603, label %611

603:                                              ; preds = %595
  store i32 %599, ptr %600, align 4, !tbaa !82
  %604 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 32, i64 %596, i32 6
  store i32 %582, ptr %604, align 4, !tbaa !46
  %605 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 32, i64 %596, i32 7
  store i32 0, ptr %605, align 4, !tbaa !49
  %606 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 32, i64 %596, i32 1
  store i8 1, ptr %606, align 4, !tbaa !86
  %607 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 32, i64 %596, i32 2
  store i8 1, ptr %607, align 1, !tbaa !94
  %608 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 32, i64 %596, i32 3
  store i32 %5, ptr %608, align 4, !tbaa !95
  %609 = add i32 %499, 4
  %610 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 32, i64 %596, i32 4
  store i32 %609, ptr %610, align 4, !tbaa !96
  br label %611

611:                                              ; preds = %595, %603, %545
  %612 = phi i32 [ %495, %545 ], [ %597, %603 ], [ %597, %595 ]
  %613 = add i32 %493, 1
  %614 = icmp eq i32 %613, %463
  br i1 %614, label %615, label %491

615:                                              ; preds = %611, %461, %207
  %616 = phi i32 [ %3, %207 ], [ %449, %461 ], [ %612, %611 ]
  ret i32 %616
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @mf_ptr(ptr nocapture noundef readonly %0) unnamed_addr #5 !PGOFuncName !114 {
  %2 = load ptr, ptr %0, align 8, !tbaa !115
  %3 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 5
  %4 = load i32, ptr %3, align 8, !tbaa !116
  %5 = zext i32 %4 to i64
  %6 = getelementptr inbounds i8, ptr %2, i64 %5
  ret ptr %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @mf_avail(ptr nocapture noundef readonly %0) unnamed_addr #5 !PGOFuncName !117 {
  %2 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 8
  %3 = load i32, ptr %2, align 4, !tbaa !118
  %4 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 5
  %5 = load i32, ptr %4, align 8, !tbaa !116
  %6 = sub i32 %3, %5
  ret i32 %6
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define internal fastcc void @backward(ptr nocapture noundef %0, ptr noalias nocapture noundef writeonly %1, ptr noalias nocapture noundef writeonly %2, i32 noundef %3) unnamed_addr #2 !PGOFuncName !119 {
  %5 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 30
  store i32 %3, ptr %5, align 4, !tbaa !35
  %6 = zext i32 %3 to i64
  %7 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 32, i64 %6, i32 6
  %8 = load i32, ptr %7, align 4, !tbaa !46
  %9 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 32, i64 %6, i32 7
  %10 = load i32, ptr %9, align 4, !tbaa !49
  br label %11

11:                                               ; preds = %36, %4
  %12 = phi i32 [ %10, %4 ], [ %39, %36 ]
  %13 = phi i32 [ %8, %4 ], [ %37, %36 ]
  %14 = phi i32 [ %3, %4 ], [ %13, %36 ]
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 32, i64 %15, i32 1
  %17 = load i8, ptr %16, align 4, !tbaa !86, !range !92, !noundef !93
  %18 = icmp eq i8 %17, 0
  %19 = zext i32 %13 to i64
  br i1 %18, label %20, label %23

20:                                               ; preds = %11
  %21 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 32, i64 %19, i32 6
  %22 = load i32, ptr %21, align 4, !tbaa !46
  br label %36

23:                                               ; preds = %11
  %24 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 32, i64 %19
  tail call fastcc void @make_literal(ptr noundef nonnull %24) #10
  %25 = add i32 %13, -1
  %26 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 32, i64 %19, i32 6
  store i32 %25, ptr %26, align 4, !tbaa !46
  %27 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 32, i64 %15, i32 2
  %28 = load i8, ptr %27, align 1, !tbaa !94, !range !92, !noundef !93
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %36, label %30

30:                                               ; preds = %23
  %31 = zext i32 %25 to i64
  %32 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 32, i64 %31, i32 1
  store i8 0, ptr %32, align 4, !tbaa !86
  %33 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 32, i64 %15, i32 3
  %34 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 32, i64 %31, i32 6
  %35 = load <2 x i32>, ptr %33, align 4, !tbaa !48
  store <2 x i32> %35, ptr %34, align 4, !tbaa !48
  br label %36

36:                                               ; preds = %20, %23, %30
  %37 = phi i32 [ %22, %20 ], [ %25, %23 ], [ %25, %30 ]
  %38 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 32, i64 %19, i32 7
  %39 = load i32, ptr %38, align 4, !tbaa !49
  %40 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 32, i64 %19, i32 6
  store i32 %12, ptr %38, align 4, !tbaa !49
  store i32 %14, ptr %40, align 4, !tbaa !46
  %41 = icmp eq i32 %13, 0
  br i1 %41, label %42, label %11, !llvm.loop !120

42:                                               ; preds = %36
  %43 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 32, i64 0, i32 6
  %44 = load i32, ptr %43, align 4, !tbaa !46
  %45 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 31
  store i32 %44, ptr %45, align 8, !tbaa !45
  store i32 %44, ptr %1, align 4, !tbaa !48
  %46 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 32, i64 0, i32 7
  %47 = load i32, ptr %46, align 4, !tbaa !49
  store i32 %47, ptr %2, align 4, !tbaa !48
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: read) uwtable
define internal fastcc i32 @rc_bittree_price(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) unnamed_addr #6 !PGOFuncName !121 {
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
  %13 = load i16, ptr %12, align 2, !tbaa !81
  %14 = tail call fastcc i32 @rc_bit_price(i16 noundef zeroext %13, i32 noundef %9) #10, !range !66
  %15 = add i32 %14, %7
  %16 = icmp eq i32 %10, 1
  br i1 %16, label %17, label %6, !llvm.loop !122

17:                                               ; preds = %6
  ret i32 %15
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i32 @rc_direct_price(i32 noundef %0) unnamed_addr #7 !PGOFuncName !123 {
  %2 = shl i32 %0, 4
  ret i32 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @get_pos_slot(i32 noundef %0) unnamed_addr #7 !PGOFuncName !124 {
  %2 = zext nneg i32 %0 to i64
  %3 = getelementptr inbounds [8192 x i8], ptr @lzma_fastpos, i64 0, i64 %2
  %4 = load i8, ptr %3, align 1, !tbaa !73
  %5 = zext i8 %4 to i32
  ret i32 %5
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: read) uwtable
define internal fastcc i32 @rc_bittree_reverse_price(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) unnamed_addr #6 !PGOFuncName !125 {
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
  %13 = load i16, ptr %12, align 2, !tbaa !81
  %14 = tail call fastcc i32 @rc_bit_price(i16 noundef zeroext %13, i32 noundef %9) #10, !range !66
  %15 = add i32 %14, %6
  %16 = shl i32 %7, 1
  %17 = or disjoint i32 %16, %9
  %18 = add i32 %8, -1
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %4, !llvm.loop !126

20:                                               ; preds = %4
  ret i32 %15
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @rc_bit_price(i16 noundef zeroext %0, i32 noundef %1) unnamed_addr #7 !PGOFuncName !127 {
  %3 = zext i16 %0 to i32
  %4 = sub nsw i32 0, %1
  %5 = and i32 %4, 2032
  %6 = xor i32 %5, %3
  %7 = lshr i32 %6, 4
  %8 = zext nneg i32 %7 to i64
  %9 = getelementptr inbounds [128 x i8], ptr @lzma_rc_prices, i64 0, i64 %8
  %10 = load i8, ptr %9, align 1, !tbaa !73
  %11 = zext i8 %10 to i32
  ret i32 %11
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @mf_skip(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !PGOFuncName !128 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %10, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 11
  %6 = load ptr, ptr %5, align 8, !tbaa !129
  tail call void %6(ptr noundef %0, i32 noundef %1) #12
  %7 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 6
  %8 = load i32, ptr %7, align 4, !tbaa !50
  %9 = add i32 %8, %1
  store i32 %9, ptr %7, align 4, !tbaa !50
  br label %10

10:                                               ; preds = %4, %2
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @rc_bit_0_price(i16 noundef zeroext %0) unnamed_addr #7 !PGOFuncName !130 {
  %2 = lshr i16 %0, 4
  %3 = zext nneg i16 %2 to i64
  %4 = getelementptr inbounds [128 x i8], ptr @lzma_rc_prices, i64 0, i64 %3
  %5 = load i8, ptr %4, align 1, !tbaa !73
  %6 = zext i8 %5 to i32
  ret i32 %6
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: read) uwtable
define internal fastcc i32 @get_literal_price(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i1 noundef zeroext %3, i32 noundef %4, i32 noundef %5) unnamed_addr #6 !PGOFuncName !131 {
  %7 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 11
  %8 = load i32, ptr %7, align 8, !tbaa !132
  %9 = and i32 %8, %1
  %10 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 10
  %11 = load i32, ptr %10, align 4, !tbaa !133
  %12 = shl i32 %9, %11
  %13 = sub i32 8, %11
  %14 = lshr i32 %2, %13
  %15 = add i32 %14, %12
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 12, i64 %16
  br i1 %3, label %20, label %18

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
  %36 = load i16, ptr %35, align 2, !tbaa !81
  %37 = tail call fastcc i32 @rc_bit_price(i16 noundef zeroext %36, i32 noundef %33) #10, !range !66
  %38 = add i32 %37, %24
  %39 = shl i32 %25, 1
  %40 = xor i32 %39, %27
  %41 = xor i32 %40, -1
  %42 = and i32 %23, %41
  %43 = icmp ult i32 %39, 65536
  br i1 %43, label %22, label %44, !llvm.loop !134

44:                                               ; preds = %22, %18
  %45 = phi i32 [ %19, %18 ], [ %38, %22 ]
  ret i32 %45
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @make_literal(ptr nocapture noundef writeonly %0) unnamed_addr #8 !PGOFuncName !135 {
  %2 = getelementptr inbounds %struct.lzma_optimal, ptr %0, i64 0, i32 7
  store i32 -1, ptr %2, align 4, !tbaa !49
  %3 = getelementptr inbounds %struct.lzma_optimal, ptr %0, i64 0, i32 1
  store i8 0, ptr %3, align 4, !tbaa !86
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @rc_bit_1_price(i16 noundef zeroext %0) unnamed_addr #7 !PGOFuncName !136 {
  %2 = lshr i16 %0, 4
  %3 = xor i16 %2, 127
  %4 = zext nneg i16 %3 to i64
  %5 = getelementptr inbounds [128 x i8], ptr @lzma_rc_prices, i64 0, i64 %4
  %6 = load i8, ptr %5, align 1, !tbaa !73
  %7 = zext i8 %6 to i32
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @get_short_rep_price(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) unnamed_addr #5 !PGOFuncName !137 {
  %4 = zext i32 %1 to i64
  %5 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 15, i64 %4
  %6 = load i16, ptr %5, align 2, !tbaa !81
  %7 = tail call fastcc i32 @rc_bit_0_price(i16 noundef zeroext %6) #10, !range !66
  %8 = zext i32 %2 to i64
  %9 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 18, i64 %4, i64 %8
  %10 = load i16, ptr %9, align 2, !tbaa !81
  %11 = tail call fastcc i32 @rc_bit_0_price(i16 noundef zeroext %10) #10, !range !66
  %12 = add nuw nsw i32 %11, %7
  ret i32 %12
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @make_short_rep(ptr nocapture noundef writeonly %0) unnamed_addr #8 !PGOFuncName !138 {
  %2 = getelementptr inbounds %struct.lzma_optimal, ptr %0, i64 0, i32 7
  store i32 0, ptr %2, align 4, !tbaa !49
  %3 = getelementptr inbounds %struct.lzma_optimal, ptr %0, i64 0, i32 1
  store i8 0, ptr %3, align 4, !tbaa !86
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @get_pure_rep_price(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #5 !PGOFuncName !139 {
  %5 = icmp eq i32 %1, 0
  %6 = zext i32 %2 to i64
  %7 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 15, i64 %6
  %8 = load i16, ptr %7, align 2, !tbaa !81
  br i1 %5, label %9, label %16

9:                                                ; preds = %4
  %10 = tail call fastcc i32 @rc_bit_0_price(i16 noundef zeroext %8) #10, !range !66
  %11 = zext i32 %3 to i64
  %12 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 18, i64 %6, i64 %11
  %13 = load i16, ptr %12, align 2, !tbaa !81
  %14 = tail call fastcc i32 @rc_bit_1_price(i16 noundef zeroext %13) #10, !range !66
  %15 = add nuw nsw i32 %14, %10
  br label %32

16:                                               ; preds = %4
  %17 = tail call fastcc i32 @rc_bit_1_price(i16 noundef zeroext %8) #10, !range !66
  %18 = icmp eq i32 %1, 1
  %19 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 16, i64 %6
  %20 = load i16, ptr %19, align 2, !tbaa !81
  br i1 %18, label %21, label %24

21:                                               ; preds = %16
  %22 = tail call fastcc i32 @rc_bit_0_price(i16 noundef zeroext %20) #10, !range !66
  %23 = add nuw nsw i32 %22, %17
  br label %32

24:                                               ; preds = %16
  %25 = tail call fastcc i32 @rc_bit_1_price(i16 noundef zeroext %20) #10, !range !66
  %26 = add nuw nsw i32 %25, %17
  %27 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 17, i64 %6
  %28 = load i16, ptr %27, align 2, !tbaa !81
  %29 = add nsw i32 %1, -2
  %30 = tail call fastcc i32 @rc_bit_price(i16 noundef zeroext %28, i32 noundef %29) #10, !range !66
  %31 = add nuw nsw i32 %26, %30
  br label %32

32:                                               ; preds = %21, %24, %9
  %33 = phi i32 [ %15, %9 ], [ %23, %21 ], [ %31, %24 ]
  ret i32 %33
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @get_len_price(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) unnamed_addr #5 !PGOFuncName !140 {
  %4 = zext i32 %2 to i64
  %5 = add i32 %1, -2
  %6 = zext i32 %5 to i64
  %7 = getelementptr inbounds %struct.lzma_length_encoder, ptr %0, i64 0, i32 5, i64 %4, i64 %6
  %8 = load i32, ptr %7, align 4, !tbaa !48
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @get_pos_len_price(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #5 !PGOFuncName !141 {
  %5 = icmp ult i32 %2, 6
  %6 = add i32 %2, -2
  %7 = select i1 %5, i32 %6, i32 3
  %8 = icmp ult i32 %1, 128
  br i1 %8, label %9, label %14

9:                                                ; preds = %4
  %10 = zext i32 %7 to i64
  %11 = zext nneg i32 %1 to i64
  %12 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 25, i64 %10, i64 %11
  %13 = load i32, ptr %12, align 4, !tbaa !48
  br label %25

14:                                               ; preds = %4
  %15 = tail call fastcc i32 @get_pos_slot_2(i32 noundef %1) #10, !range !142
  %16 = zext i32 %7 to i64
  %17 = zext nneg i32 %15 to i64
  %18 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 24, i64 %16, i64 %17
  %19 = load i32, ptr %18, align 4, !tbaa !48
  %20 = and i32 %1, 15
  %21 = zext nneg i32 %20 to i64
  %22 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 28, i64 %21
  %23 = load i32, ptr %22, align 4, !tbaa !48
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
define internal fastcc i32 @get_pos_slot_2(i32 noundef %0) unnamed_addr #7 !PGOFuncName !143 {
  %2 = icmp ult i32 %0, 524288
  %3 = icmp sgt i32 %0, -1
  %4 = select i1 %3, i32 18, i32 30
  %5 = select i1 %3, i32 36, i32 60
  %6 = select i1 %2, i32 6, i32 %4
  %7 = select i1 %2, i32 12, i32 %5
  %8 = lshr i32 %0, %6
  %9 = zext nneg i32 %8 to i64
  %10 = getelementptr inbounds [8192 x i8], ptr @lzma_fastpos, i64 0, i64 %9
  %11 = load i8, ptr %10, align 1, !tbaa !73
  %12 = zext i8 %11 to i32
  %13 = add nuw nsw i32 %7, %12
  ret i32 %13
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @get_rep_price(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #5 !PGOFuncName !144 {
  %5 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 23
  %6 = tail call fastcc i32 @get_len_price(ptr noundef nonnull %5, i32 noundef %1, i32 noundef %3) #10
  %7 = tail call fastcc i32 @get_pure_rep_price(ptr noundef %0, i32 noundef 0, i32 noundef %2, i32 noundef %3) #10, !range !85
  %8 = add i32 %7, %6
  ret i32 %8
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #9

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
!llvm.ident = !{!34}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 0}
!4 = !{!"MaxCount", i64 0}
!5 = !{!"MaxInternalCount", i64 0}
!6 = !{!"MaxFunctionCount", i64 0}
!7 = !{!"NumCounts", i64 0}
!8 = !{!"NumFunctions", i64 0}
!9 = !{!"IsPartialProfile", i64 0}
!10 = !{!"PartialProfileRatio", double 0.000000e+00}
!11 = !{!"DetailedSummary", !12}
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!13 = !{i32 10000, i64 0, i32 0}
!14 = !{i32 100000, i64 0, i32 0}
!15 = !{i32 200000, i64 0, i32 0}
!16 = !{i32 300000, i64 0, i32 0}
!17 = !{i32 400000, i64 0, i32 0}
!18 = !{i32 500000, i64 0, i32 0}
!19 = !{i32 600000, i64 0, i32 0}
!20 = !{i32 700000, i64 0, i32 0}
!21 = !{i32 800000, i64 0, i32 0}
!22 = !{i32 900000, i64 0, i32 0}
!23 = !{i32 950000, i64 0, i32 0}
!24 = !{i32 990000, i64 0, i32 0}
!25 = !{i32 999000, i64 0, i32 0}
!26 = !{i32 999900, i64 0, i32 0}
!27 = !{i32 999990, i64 0, i32 0}
!28 = !{i32 999999, i64 0, i32 0}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 7, !"openmp", i32 51}
!31 = !{i32 8, !"PIC Level", i32 2}
!32 = !{i32 7, !"PIE Level", i32 2}
!33 = !{i32 7, !"uwtable", i32 2}
!34 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!35 = !{!36, !41, i64 69340}
!36 = !{!"lzma_coder_s", !37, i64 0, !41, i64 736, !39, i64 740, !39, i64 756, !41, i64 2948, !41, i64 2952, !42, i64 2956, !42, i64 2957, !42, i64 2958, !41, i64 2960, !41, i64 2964, !41, i64 2968, !39, i64 2972, !39, i64 27548, !39, i64 27932, !39, i64 27956, !39, i64 27980, !39, i64 28004, !39, i64 28028, !39, i64 28412, !39, i64 28924, !39, i64 29152, !43, i64 29184, !43, i64 47688, !39, i64 66192, !39, i64 67216, !41, i64 69264, !41, i64 69268, !39, i64 69272, !41, i64 69336, !41, i64 69340, !41, i64 69344, !39, i64 69348}
!37 = !{!"", !38, i64 0, !38, i64 8, !41, i64 16, !39, i64 20, !38, i64 24, !38, i64 32, !39, i64 40, !39, i64 272}
!38 = !{!"long", !39, i64 0}
!39 = !{!"omnipotent char", !40, i64 0}
!40 = !{!"Simple C/C++ TBAA"}
!41 = !{!"int", !39, i64 0}
!42 = !{!"_Bool", !39, i64 0}
!43 = !{!"", !44, i64 0, !44, i64 2, !39, i64 4, !39, i64 260, !39, i64 516, !39, i64 1028, !41, i64 18436, !39, i64 18440}
!44 = !{!"short", !39, i64 0}
!45 = !{!36, !41, i64 69344}
!46 = !{!47, !41, i64 20}
!47 = !{!"", !41, i64 0, !42, i64 4, !42, i64 5, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !41, i64 24, !39, i64 28}
!48 = !{!41, !41, i64 0}
!49 = !{!47, !41, i64 24}
!50 = !{!51, !41, i64 28}
!51 = !{!"lzma_mf_s", !52, i64 0, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !41, i64 24, !41, i64 28, !41, i64 32, !41, i64 36, !41, i64 40, !52, i64 48, !52, i64 56, !52, i64 64, !52, i64 72, !41, i64 80, !41, i64 84, !41, i64 88, !41, i64 92, !41, i64 96, !41, i64 100, !41, i64 104, !41, i64 108, !41, i64 112}
!52 = !{!"any pointer", !39, i64 0}
!53 = !{!36, !41, i64 69268}
!54 = !{!36, !41, i64 69336}
!55 = !{i32 2, i32 0}
!56 = !{!36, !41, i64 2952}
!57 = !{!51, !41, i64 96}
!58 = distinct !{!58, !59}
!59 = !{!"llvm.loop.mustprogress"}
!60 = !{!"lzma_encoder_optimum_normal.c:fill_distances_prices"}
!61 = !{!36, !41, i64 69264}
!62 = distinct !{!62, !59}
!63 = distinct !{!63, !59}
!64 = !{i32 0, i32 -15}
!65 = distinct !{!65, !59}
!66 = !{i32 0, i32 256}
!67 = distinct !{!67, !59}
!68 = distinct !{!68, !59}
!69 = !{!"lzma_encoder_optimum_normal.c:fill_align_prices"}
!70 = distinct !{!70, !59}
!71 = !{!"lzma_encoder_optimum_normal.c:helper1"}
!72 = !{!36, !41, i64 2948}
!73 = !{!39, !39, i64 0}
!74 = distinct !{!74, !59}
!75 = distinct !{!75, !59}
!76 = !{!77, !41, i64 4}
!77 = !{!"", !41, i64 0, !41, i64 4}
!78 = !{!36, !41, i64 736}
!79 = !{!47, !41, i64 0}
!80 = !{!36, !41, i64 2960}
!81 = !{!44, !44, i64 0}
!82 = !{!47, !41, i64 16}
!83 = !{i32 0, i32 511}
!84 = distinct !{!84, !59}
!85 = !{i32 0, i32 766}
!86 = !{!47, !42, i64 4}
!87 = distinct !{!87, !59}
!88 = distinct !{!88, !59}
!89 = !{!77, !41, i64 0}
!90 = distinct !{!90, !59}
!91 = !{!"lzma_encoder_optimum_normal.c:helper2"}
!92 = !{i8 0, i8 2}
!93 = !{}
!94 = !{!47, !42, i64 5}
!95 = !{!47, !41, i64 8}
!96 = !{!47, !41, i64 12}
!97 = distinct !{!97, !59}
!98 = distinct !{!98, !59}
!99 = distinct !{!99, !59}
!100 = distinct !{!100, !59}
!101 = distinct !{!101, !59}
!102 = distinct !{!102, !59}
!103 = distinct !{!103, !59}
!104 = distinct !{!104, !59}
!105 = distinct !{!105, !59}
!106 = distinct !{!106, !59}
!107 = distinct !{!107, !59}
!108 = distinct !{!108, !59}
!109 = distinct !{!109, !59}
!110 = distinct !{!110, !59}
!111 = distinct !{!111, !59}
!112 = distinct !{!112, !59}
!113 = distinct !{!113, !59}
!114 = !{!"lzma_encoder_optimum_normal.c:mf_ptr"}
!115 = !{!51, !52, i64 0}
!116 = !{!51, !41, i64 24}
!117 = !{!"lzma_encoder_optimum_normal.c:mf_avail"}
!118 = !{!51, !41, i64 36}
!119 = !{!"lzma_encoder_optimum_normal.c:backward"}
!120 = distinct !{!120, !59}
!121 = !{!"lzma_encoder_optimum_normal.c:rc_bittree_price"}
!122 = distinct !{!122, !59}
!123 = !{!"lzma_encoder_optimum_normal.c:rc_direct_price"}
!124 = !{!"lzma_encoder_optimum_normal.c:get_pos_slot"}
!125 = !{!"lzma_encoder_optimum_normal.c:rc_bittree_reverse_price"}
!126 = distinct !{!126, !59}
!127 = !{!"lzma_encoder_optimum_normal.c:rc_bit_price"}
!128 = !{!"lzma_encoder_optimum_normal.c:mf_skip"}
!129 = !{!51, !52, i64 56}
!130 = !{!"lzma_encoder_optimum_normal.c:rc_bit_0_price"}
!131 = !{!"lzma_encoder_optimum_normal.c:get_literal_price"}
!132 = !{!36, !41, i64 2968}
!133 = !{!36, !41, i64 2964}
!134 = distinct !{!134, !59}
!135 = !{!"lzma_encoder_optimum_normal.c:make_literal"}
!136 = !{!"lzma_encoder_optimum_normal.c:rc_bit_1_price"}
!137 = !{!"lzma_encoder_optimum_normal.c:get_short_rep_price"}
!138 = !{!"lzma_encoder_optimum_normal.c:make_short_rep"}
!139 = !{!"lzma_encoder_optimum_normal.c:get_pure_rep_price"}
!140 = !{!"lzma_encoder_optimum_normal.c:get_len_price"}
!141 = !{!"lzma_encoder_optimum_normal.c:get_pos_len_price"}
!142 = !{i32 12, i32 316}
!143 = !{!"lzma_encoder_optimum_normal.c:get_pos_slot_2"}
!144 = !{!"lzma_encoder_optimum_normal.c:get_rep_price"}
