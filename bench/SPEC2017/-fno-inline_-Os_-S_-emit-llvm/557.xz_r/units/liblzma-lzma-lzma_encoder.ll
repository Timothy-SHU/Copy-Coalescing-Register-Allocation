; ModuleID = 'liblzma/lzma/lzma_encoder.c'
source_filename = "liblzma/lzma/lzma_encoder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.lzma_coder_s = type { %struct.lzma_range_encoder, i32, [4 x i32], [274 x %struct.lzma_match], i32, i32, i8, i8, i8, i32, i32, i32, [16 x [768 x i16]], [12 x [16 x i16]], [12 x i16], [12 x i16], [12 x i16], [12 x i16], [12 x [16 x i16]], [4 x [64 x i16]], [114 x i16], [16 x i16], %struct.lzma_length_encoder, %struct.lzma_length_encoder, [4 x [64 x i32]], [4 x [128 x i32]], i32, i32, [16 x i32], i32, i32, i32, [4096 x %struct.lzma_optimal] }
%struct.lzma_range_encoder = type { i64, i64, i32, i8, i64, i64, [58 x i32], [58 x ptr] }
%struct.lzma_match = type { i32, i32 }
%struct.lzma_length_encoder = type { i16, i16, [16 x [8 x i16]], [16 x [8 x i16]], [256 x i16], [16 x [272 x i32]], i32, [16 x i32] }
%struct.lzma_optimal = type { i32, i8, i8, i32, i32, i32, i32, i32, [4 x i32] }
%struct.lzma_mf_s = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.lzma_options_lzma = type { i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.lzma_lz_options = type { i64, i64, i64, i64, i64, i32, i32, ptr, i32 }
%struct.lzma_lz_encoder = type { ptr, ptr, ptr, ptr }

@lzma_rc_prices = external local_unnamed_addr constant [128 x i8], align 16
@lzma_fastpos = external local_unnamed_addr constant [8192 x i8], align 16

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @lzma_lzma_encode(ptr noundef %0, ptr noalias noundef %1, ptr noalias nocapture noundef writeonly %2, ptr noalias nocapture noundef %3, i64 noundef %4, i32 noundef %5) local_unnamed_addr #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 7
  %10 = load i8, ptr %9, align 1, !tbaa !5, !range !15, !noundef !16
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %6
  %13 = tail call fastcc zeroext i1 @encode_init(ptr noundef nonnull %0, ptr noundef %1) #14
  br i1 %13, label %14, label %64

14:                                               ; preds = %12, %6
  %15 = tail call fastcc i32 @mf_position(ptr noundef %1) #14
  %16 = tail call fastcc zeroext i1 @rc_encode(ptr noundef nonnull %0, ptr noundef %2, ptr noundef %3, i64 noundef %4) #14
  br i1 %16, label %64, label %17

17:                                               ; preds = %14
  %18 = icmp eq i32 %5, -1
  %19 = getelementptr inbounds %struct.lzma_mf_s, ptr %1, i64 0, i32 5
  %20 = getelementptr inbounds %struct.lzma_mf_s, ptr %1, i64 0, i32 6
  %21 = getelementptr inbounds %struct.lzma_mf_s, ptr %1, i64 0, i32 7
  %22 = getelementptr inbounds %struct.lzma_mf_s, ptr %1, i64 0, i32 20
  %23 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 6
  br label %24

24:                                               ; preds = %17, %50
  %25 = phi i32 [ %15, %17 ], [ %53, %50 ]
  %26 = load i32, ptr %19, align 8, !tbaa !17
  br i1 %18, label %36, label %27

27:                                               ; preds = %24
  %28 = load i32, ptr %20, align 4, !tbaa !20
  %29 = sub i32 %26, %28
  %30 = icmp ult i32 %29, %5
  br i1 %30, label %31, label %55

31:                                               ; preds = %27
  %32 = load i64, ptr %3, align 8, !tbaa !21
  %33 = call fastcc i64 @rc_pending(ptr noundef nonnull %0) #14
  %34 = add i64 %33, %32
  %35 = icmp ugt i64 %34, 61438
  br i1 %35, label %55, label %36

36:                                               ; preds = %31, %24
  %37 = load i32, ptr %21, align 8, !tbaa !22
  %38 = icmp ult i32 %26, %37
  br i1 %38, label %45, label %39

39:                                               ; preds = %36
  %40 = load i32, ptr %22, align 8, !tbaa !23
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %64, label %42

42:                                               ; preds = %39
  %43 = load i32, ptr %20, align 4, !tbaa !20
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %55, label %45

45:                                               ; preds = %42, %36
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #15
  %46 = load i8, ptr %23, align 4, !tbaa !24, !range !15, !noundef !16
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %45
  call void @lzma_lzma_optimum_fast(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %8, ptr noundef nonnull %7) #16
  br label %50

49:                                               ; preds = %45
  call void @lzma_lzma_optimum_normal(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %8, ptr noundef nonnull %7, i32 noundef %25) #16
  br label %50

50:                                               ; preds = %49, %48
  %51 = load i32, ptr %8, align 4, !tbaa !25
  %52 = load i32, ptr %7, align 4, !tbaa !25
  call fastcc void @encode_symbol(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef %51, i32 noundef %52, i32 noundef %25) #14
  %53 = add i32 %52, %25
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #15
  %54 = call fastcc zeroext i1 @rc_encode(ptr noundef nonnull %0, ptr noundef %2, ptr noundef %3, i64 noundef %4) #14
  br i1 %54, label %64, label %24

55:                                               ; preds = %42, %27, %31
  %56 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 8
  %57 = load i8, ptr %56, align 2, !tbaa !26, !range !15, !noundef !16
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %55
  store i8 1, ptr %56, align 2, !tbaa !26
  br i1 %18, label %60, label %61

60:                                               ; preds = %59
  call fastcc void @encode_eopm(ptr noundef nonnull %0, i32 noundef %25) #14
  br label %61

61:                                               ; preds = %60, %59
  call fastcc void @rc_flush(ptr noundef nonnull %0) #14
  %62 = call fastcc zeroext i1 @rc_encode(ptr noundef nonnull %0, ptr noundef %2, ptr noundef %3, i64 noundef %4) #14
  br i1 %62, label %64, label %63

63:                                               ; preds = %61, %55
  store i8 0, ptr %56, align 2, !tbaa !26
  br label %64

64:                                               ; preds = %39, %50, %14, %63, %61, %12
  %65 = phi i32 [ 0, %12 ], [ 1, %63 ], [ 0, %61 ], [ 0, %14 ], [ 0, %50 ], [ 0, %39 ]
  ret i32 %65
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i1 @encode_init(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.lzma_mf_s, ptr %1, i64 0, i32 5
  %4 = load i32, ptr %3, align 8, !tbaa !17
  %5 = getelementptr inbounds %struct.lzma_mf_s, ptr %1, i64 0, i32 7
  %6 = load i32, ptr %5, align 8, !tbaa !22
  %7 = icmp eq i32 %4, %6
  br i1 %7, label %8, label %12

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.lzma_mf_s, ptr %1, i64 0, i32 20
  %10 = load i32, ptr %9, align 8, !tbaa !23
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %21, label %19

12:                                               ; preds = %2
  tail call fastcc void @mf_skip(ptr noundef nonnull %1) #14
  %13 = getelementptr inbounds %struct.lzma_mf_s, ptr %1, i64 0, i32 6
  store i32 0, ptr %13, align 4, !tbaa !20
  %14 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 13
  tail call fastcc void @rc_bit(ptr noundef %0, ptr noundef nonnull %14, i32 noundef 0) #14
  %15 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 12
  %16 = load ptr, ptr %1, align 8, !tbaa !27
  %17 = load i8, ptr %16, align 1, !tbaa !28
  %18 = zext i8 %17 to i32
  tail call fastcc void @rc_bittree(ptr noundef %0, ptr noundef nonnull %15, i32 noundef 8, i32 noundef %18) #14
  br label %19

19:                                               ; preds = %8, %12
  %20 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 7
  store i8 1, ptr %20, align 1, !tbaa !5
  br label %21

21:                                               ; preds = %8, %19
  %22 = phi i1 [ true, %19 ], [ false, %8 ]
  ret i1 %22
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @mf_position(ptr nocapture noundef readonly %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 5
  %3 = load i32, ptr %2, align 8, !tbaa !17
  %4 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 6
  %5 = load i32, ptr %4, align 4, !tbaa !20
  %6 = sub i32 %3, %5
  ret i32 %6
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i1 @rc_encode(ptr nocapture noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef %2, i64 noundef %3) unnamed_addr #3 {
  %5 = getelementptr inbounds %struct.lzma_range_encoder, ptr %0, i64 0, i32 5
  %6 = getelementptr inbounds %struct.lzma_range_encoder, ptr %0, i64 0, i32 4
  %7 = load i64, ptr %5, align 8, !tbaa !29
  %8 = load i64, ptr %6, align 8, !tbaa !30
  %9 = icmp ult i64 %7, %8
  br i1 %9, label %10, label %73

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.lzma_range_encoder, ptr %0, i64 0, i32 2
  %12 = load i32, ptr %11, align 8, !tbaa !31
  br label %13

13:                                               ; preds = %10, %68
  %14 = phi i64 [ %7, %10 ], [ %70, %68 ]
  %15 = phi i32 [ %12, %10 ], [ %69, %68 ]
  %16 = icmp ult i32 %15, 16777216
  br i1 %16, label %17, label %23

17:                                               ; preds = %13
  %18 = tail call fastcc zeroext i1 @rc_shift_low(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) #14
  br i1 %18, label %74, label %19

19:                                               ; preds = %17
  %20 = load i32, ptr %11, align 8, !tbaa !31
  %21 = shl i32 %20, 8
  store i32 %21, ptr %11, align 8, !tbaa !31
  %22 = load i64, ptr %5, align 8, !tbaa !29
  br label %23

23:                                               ; preds = %19, %13
  %24 = phi i64 [ %22, %19 ], [ %14, %13 ]
  %25 = phi i32 [ %21, %19 ], [ %15, %13 ]
  %26 = getelementptr inbounds %struct.lzma_range_encoder, ptr %0, i64 0, i32 6, i64 %24
  %27 = load i32, ptr %26, align 4, !tbaa !25
  switch i32 %27, label %68 [
    i32 0, label %28
    i32 1, label %39
    i32 2, label %52
    i32 3, label %54
    i32 4, label %59
  ]

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.lzma_range_encoder, ptr %0, i64 0, i32 7, i64 %24
  %30 = load ptr, ptr %29, align 8, !tbaa !32
  %31 = load i16, ptr %30, align 2, !tbaa !33
  %32 = lshr i32 %25, 11
  %33 = zext i16 %31 to i32
  %34 = mul i32 %32, %33
  store i32 %34, ptr %11, align 8, !tbaa !31
  %35 = sub nsw i32 2048, %33
  %36 = lshr i32 %35, 5
  %37 = trunc i32 %36 to i16
  %38 = add i16 %31, %37
  store i16 %38, ptr %30, align 2, !tbaa !33
  br label %68

39:                                               ; preds = %23
  %40 = getelementptr inbounds %struct.lzma_range_encoder, ptr %0, i64 0, i32 7, i64 %24
  %41 = load ptr, ptr %40, align 8, !tbaa !32
  %42 = load i16, ptr %41, align 2, !tbaa !33
  %43 = zext i16 %42 to i32
  %44 = lshr i32 %25, 11
  %45 = mul i32 %44, %43
  %46 = zext i32 %45 to i64
  %47 = load i64, ptr %0, align 8, !tbaa !34
  %48 = add i64 %47, %46
  store i64 %48, ptr %0, align 8, !tbaa !34
  %49 = sub i32 %25, %45
  store i32 %49, ptr %11, align 8, !tbaa !31
  %50 = lshr i16 %42, 5
  %51 = sub i16 %42, %50
  store i16 %51, ptr %41, align 2, !tbaa !33
  br label %68

52:                                               ; preds = %23
  %53 = lshr i32 %25, 1
  store i32 %53, ptr %11, align 8, !tbaa !31
  br label %68

54:                                               ; preds = %23
  %55 = lshr i32 %25, 1
  store i32 %55, ptr %11, align 8, !tbaa !31
  %56 = zext nneg i32 %55 to i64
  %57 = load i64, ptr %0, align 8, !tbaa !34
  %58 = add i64 %57, %56
  store i64 %58, ptr %0, align 8, !tbaa !34
  br label %68

59:                                               ; preds = %23
  store i32 -1, ptr %11, align 8, !tbaa !31
  br label %60

60:                                               ; preds = %62, %59
  %61 = tail call fastcc zeroext i1 @rc_shift_low(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) #14
  br i1 %61, label %74, label %62

62:                                               ; preds = %60
  %63 = load i64, ptr %5, align 8, !tbaa !29
  %64 = add i64 %63, 1
  store i64 %64, ptr %5, align 8, !tbaa !29
  %65 = load i64, ptr %6, align 8, !tbaa !30
  %66 = icmp ult i64 %64, %65
  br i1 %66, label %60, label %67, !llvm.loop !35

67:                                               ; preds = %62
  tail call fastcc void @rc_reset(ptr noundef nonnull %0) #14
  br label %74

68:                                               ; preds = %23, %54, %52, %39, %28
  %69 = phi i32 [ %25, %23 ], [ %55, %54 ], [ %53, %52 ], [ %49, %39 ], [ %34, %28 ]
  %70 = add i64 %24, 1
  store i64 %70, ptr %5, align 8, !tbaa !29
  %71 = load i64, ptr %6, align 8, !tbaa !30
  %72 = icmp ult i64 %70, %71
  br i1 %72, label %13, label %73, !llvm.loop !37

73:                                               ; preds = %68, %4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  br label %74

74:                                               ; preds = %17, %60, %73, %67
  %75 = phi i1 [ false, %67 ], [ false, %73 ], [ true, %60 ], [ true, %17 ]
  ret i1 %75
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i64 @rc_pending(ptr nocapture noundef readonly %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.lzma_range_encoder, ptr %0, i64 0, i32 1
  %3 = load i64, ptr %2, align 8, !tbaa !38
  %4 = add i64 %3, 4
  ret i64 %4
}

; Function Attrs: optsize
declare void @lzma_lzma_optimum_fast(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @lzma_lzma_optimum_normal(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @encode_symbol(ptr noundef %0, ptr nocapture noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #5 {
  %6 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 9
  %7 = load i32, ptr %6, align 8, !tbaa !39
  %8 = and i32 %7, %4
  %9 = icmp eq i32 %2, -1
  %10 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 1
  %11 = load i32, ptr %10, align 8, !tbaa !40
  %12 = zext i32 %11 to i64
  %13 = zext i32 %8 to i64
  %14 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 13, i64 %12, i64 %13
  br i1 %9, label %15, label %16

15:                                               ; preds = %5
  tail call fastcc void @rc_bit(ptr noundef nonnull %0, ptr noundef nonnull %14, i32 noundef 0) #14
  tail call fastcc void @literal(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %4) #14
  br label %24

16:                                               ; preds = %5
  tail call fastcc void @rc_bit(ptr noundef nonnull %0, ptr noundef nonnull %14, i32 noundef 1) #14
  %17 = icmp ult i32 %2, 4
  %18 = load i32, ptr %10, align 8, !tbaa !40
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 14, i64 %19
  br i1 %17, label %21, label %22

21:                                               ; preds = %16
  tail call fastcc void @rc_bit(ptr noundef nonnull %0, ptr noundef nonnull %20, i32 noundef 1) #14
  tail call fastcc void @rep_match(ptr noundef nonnull %0, i32 noundef %8, i32 noundef %2, i32 noundef %3) #14
  br label %24

22:                                               ; preds = %16
  tail call fastcc void @rc_bit(ptr noundef nonnull %0, ptr noundef nonnull %20, i32 noundef 0) #14
  %23 = add i32 %2, -4
  tail call fastcc void @match(ptr noundef nonnull %0, i32 noundef %8, i32 noundef %23, i32 noundef %3) #14
  br label %24

24:                                               ; preds = %21, %22, %15
  %25 = getelementptr inbounds %struct.lzma_mf_s, ptr %1, i64 0, i32 6
  %26 = load i32, ptr %25, align 4, !tbaa !20
  %27 = sub i32 %26, %3
  store i32 %27, ptr %25, align 4, !tbaa !20
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define internal fastcc void @encode_eopm(ptr noundef %0, i32 noundef %1) unnamed_addr #6 {
  %3 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 9
  %4 = load i32, ptr %3, align 8, !tbaa !39
  %5 = and i32 %4, %1
  %6 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 1
  %7 = load i32, ptr %6, align 8, !tbaa !40
  %8 = zext i32 %7 to i64
  %9 = zext i32 %5 to i64
  %10 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 13, i64 %8, i64 %9
  tail call fastcc void @rc_bit(ptr noundef %0, ptr noundef nonnull %10, i32 noundef 1) #14
  %11 = load i32, ptr %6, align 8, !tbaa !40
  %12 = zext i32 %11 to i64
  %13 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 14, i64 %12
  tail call fastcc void @rc_bit(ptr noundef %0, ptr noundef nonnull %13, i32 noundef 0) #14
  tail call fastcc void @match(ptr noundef %0, i32 noundef %5, i32 noundef -1, i32 noundef 2) #14
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define internal fastcc void @rc_flush(ptr nocapture noundef %0) unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.lzma_range_encoder, ptr %0, i64 0, i32 4
  %3 = load i64, ptr %2, align 8, !tbaa !30
  br label %5

4:                                                ; preds = %5
  store i64 %8, ptr %2, align 8, !tbaa !30
  ret void

5:                                                ; preds = %1, %5
  %6 = phi i64 [ 0, %1 ], [ %10, %5 ]
  %7 = phi i64 [ %3, %1 ], [ %8, %5 ]
  %8 = add i64 %7, 1
  %9 = getelementptr inbounds %struct.lzma_range_encoder, ptr %0, i64 0, i32 6, i64 %7
  store i32 4, ptr %9, align 4, !tbaa !25
  %10 = add nuw nsw i64 %6, 1
  %11 = icmp eq i64 %10, 5
  br i1 %11, label %4, label %5, !llvm.loop !41
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define dso_local noundef i32 @lzma_lzma_encoder_reset(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #6 {
  %3 = tail call fastcc zeroext i1 @is_options_valid(ptr noundef %1) #14
  br i1 %3, label %4, label %113

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.lzma_options_lzma, ptr %1, i64 0, i32 5
  %6 = load i32, ptr %5, align 4, !tbaa !42
  %7 = shl nsw i32 -1, %6
  %8 = xor i32 %7, -1
  %9 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 9
  store i32 %8, ptr %9, align 8, !tbaa !39
  %10 = getelementptr inbounds %struct.lzma_options_lzma, ptr %1, i64 0, i32 3
  %11 = load i32, ptr %10, align 4, !tbaa !44
  %12 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 10
  store i32 %11, ptr %12, align 4, !tbaa !45
  %13 = getelementptr inbounds %struct.lzma_options_lzma, ptr %1, i64 0, i32 4
  %14 = load i32, ptr %13, align 8, !tbaa !46
  %15 = shl nsw i32 -1, %14
  %16 = xor i32 %15, -1
  %17 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 11
  store i32 %16, ptr %17, align 8, !tbaa !47
  tail call fastcc void @rc_reset(ptr noundef %0) #14
  %18 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 1
  %19 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 12
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %18, i8 0, i64 20, i1 false)
  %20 = load i32, ptr %10, align 4, !tbaa !44
  %21 = load i32, ptr %13, align 8, !tbaa !46
  tail call fastcc void @literal_init(ptr noundef nonnull %19, i32 noundef %20, i32 noundef %21) #14
  %22 = load i32, ptr %9, align 8, !tbaa !39
  %23 = zext i32 %22 to i64
  br label %24

24:                                               ; preds = %4, %26
  %25 = phi i64 [ 0, %4 ], [ %31, %26 ]
  br label %79

26:                                               ; preds = %79
  %27 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 14, i64 %25
  store i16 1024, ptr %27, align 2, !tbaa !33
  %28 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 15, i64 %25
  store i16 1024, ptr %28, align 2, !tbaa !33
  %29 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 16, i64 %25
  store i16 1024, ptr %29, align 2, !tbaa !33
  %30 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 17, i64 %25
  store i16 1024, ptr %30, align 2, !tbaa !33
  %31 = add nuw nsw i64 %25, 1
  %32 = icmp eq i64 %31, 12
  br i1 %32, label %33, label %24, !llvm.loop !48

33:                                               ; preds = %26, %75
  %34 = phi i64 [ %76, %75 ], [ 0, %26 ]
  %35 = phi <8 x i64> [ %77, %75 ], [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>, %26 ]
  %36 = icmp ult <8 x i64> %35, <i64 114, i64 114, i64 114, i64 114, i64 114, i64 114, i64 114, i64 114>
  %37 = extractelement <8 x i1> %36, i64 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %33
  %39 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 20, i64 %34
  store i16 1024, ptr %39, align 2, !tbaa !33
  br label %40

40:                                               ; preds = %38, %33
  %41 = extractelement <8 x i1> %36, i64 1
  br i1 %41, label %42, label %45

42:                                               ; preds = %40
  %43 = or disjoint i64 %34, 1
  %44 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 20, i64 %43
  store i16 1024, ptr %44, align 2, !tbaa !33
  br label %45

45:                                               ; preds = %42, %40
  %46 = extractelement <8 x i1> %36, i64 2
  br i1 %46, label %47, label %50

47:                                               ; preds = %45
  %48 = or disjoint i64 %34, 2
  %49 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 20, i64 %48
  store i16 1024, ptr %49, align 2, !tbaa !33
  br label %50

50:                                               ; preds = %47, %45
  %51 = extractelement <8 x i1> %36, i64 3
  br i1 %51, label %52, label %55

52:                                               ; preds = %50
  %53 = or disjoint i64 %34, 3
  %54 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 20, i64 %53
  store i16 1024, ptr %54, align 2, !tbaa !33
  br label %55

55:                                               ; preds = %52, %50
  %56 = extractelement <8 x i1> %36, i64 4
  br i1 %56, label %57, label %60

57:                                               ; preds = %55
  %58 = or disjoint i64 %34, 4
  %59 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 20, i64 %58
  store i16 1024, ptr %59, align 2, !tbaa !33
  br label %60

60:                                               ; preds = %57, %55
  %61 = extractelement <8 x i1> %36, i64 5
  br i1 %61, label %62, label %65

62:                                               ; preds = %60
  %63 = or disjoint i64 %34, 5
  %64 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 20, i64 %63
  store i16 1024, ptr %64, align 2, !tbaa !33
  br label %65

65:                                               ; preds = %62, %60
  %66 = extractelement <8 x i1> %36, i64 6
  br i1 %66, label %67, label %70

67:                                               ; preds = %65
  %68 = or disjoint i64 %34, 6
  %69 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 20, i64 %68
  store i16 1024, ptr %69, align 2, !tbaa !33
  br label %70

70:                                               ; preds = %67, %65
  %71 = extractelement <8 x i1> %36, i64 7
  br i1 %71, label %72, label %75

72:                                               ; preds = %70
  %73 = or disjoint i64 %34, 7
  %74 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 20, i64 %73
  store i16 1024, ptr %74, align 2, !tbaa !33
  br label %75

75:                                               ; preds = %72, %70
  %76 = add i64 %34, 8
  %77 = add <8 x i64> %35, <i64 8, i64 8, i64 8, i64 8, i64 8, i64 8, i64 8, i64 8>
  %78 = icmp eq i64 %76, 120
  br i1 %78, label %85, label %33, !llvm.loop !49

79:                                               ; preds = %24, %79
  %80 = phi i64 [ 0, %24 ], [ %83, %79 ]
  %81 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 13, i64 %25, i64 %80
  store i16 1024, ptr %81, align 2, !tbaa !33
  %82 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 18, i64 %25, i64 %80
  store i16 1024, ptr %82, align 2, !tbaa !33
  %83 = add nuw nsw i64 %80, 1
  %84 = icmp eq i64 %80, %23
  br i1 %84, label %26, label %79, !llvm.loop !52

85:                                               ; preds = %75, %92
  %86 = phi i64 [ %93, %92 ], [ 0, %75 ]
  br label %87

87:                                               ; preds = %87, %85
  %88 = phi i64 [ 0, %85 ], [ %90, %87 ]
  %89 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 19, i64 %86, i64 %88
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %89, align 2, !tbaa !33
  %90 = add nuw i64 %88, 8
  %91 = icmp eq i64 %90, 64
  br i1 %91, label %92, label %87, !llvm.loop !53

92:                                               ; preds = %87
  %93 = add nuw nsw i64 %86, 1
  %94 = icmp eq i64 %93, 4
  br i1 %94, label %95, label %85, !llvm.loop !54

95:                                               ; preds = %92
  %96 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 21, i64 0
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %96, align 2, !tbaa !33
  %97 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 21, i64 8
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %97, align 2, !tbaa !33
  %98 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 22
  %99 = load i32, ptr %5, align 4, !tbaa !42
  %100 = shl nuw i32 1, %99
  %101 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 6
  %102 = load i8, ptr %101, align 4, !tbaa !24, !range !15, !noundef !16
  %103 = icmp ne i8 %102, 0
  tail call fastcc void @length_encoder_reset(ptr noundef nonnull %98, i32 noundef %100, i1 noundef zeroext %103) #14
  %104 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 23
  %105 = load i32, ptr %5, align 4, !tbaa !42
  %106 = shl nuw i32 1, %105
  %107 = load i8, ptr %101, align 4, !tbaa !24, !range !15, !noundef !16
  %108 = icmp ne i8 %107, 0
  tail call fastcc void @length_encoder_reset(ptr noundef nonnull %104, i32 noundef %106, i1 noundef zeroext %108) #14
  %109 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 27
  store i32 2147483647, ptr %109, align 4, !tbaa !55
  %110 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 29
  store i32 2147483647, ptr %110, align 8, !tbaa !56
  %111 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 30
  store i32 0, ptr %111, align 4, !tbaa !57
  %112 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 31
  store i32 0, ptr %112, align 8, !tbaa !58
  br label %113

113:                                              ; preds = %2, %95
  %114 = phi i32 [ 0, %95 ], [ 8, %2 ]
  ret i32 %114
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i1 @is_options_valid(ptr nocapture noundef readonly %0) unnamed_addr #2 {
  %2 = tail call fastcc zeroext i1 @is_lclppb_valid(ptr noundef %0) #14
  br i1 %2, label %3, label %13

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.lzma_options_lzma, ptr %0, i64 0, i32 7
  %5 = load i32, ptr %4, align 4, !tbaa !59
  %6 = add i32 %5, -2
  %7 = icmp ult i32 %6, 272
  br i1 %7, label %8, label %13

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.lzma_options_lzma, ptr %0, i64 0, i32 6
  %10 = load i32, ptr %9, align 8, !tbaa !60
  %11 = add i32 %10, -1
  %12 = icmp ult i32 %11, 2
  br label %13

13:                                               ; preds = %8, %3, %1
  %14 = phi i1 [ false, %3 ], [ false, %1 ], [ %12, %8 ]
  ret i1 %14
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @rc_reset(ptr nocapture noundef writeonly %0) unnamed_addr #7 {
  store i64 0, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.lzma_range_encoder, ptr %0, i64 0, i32 1
  store i64 1, ptr %2, align 8, !tbaa !38
  %3 = getelementptr inbounds %struct.lzma_range_encoder, ptr %0, i64 0, i32 2
  store i32 -1, ptr %3, align 8, !tbaa !31
  %4 = getelementptr inbounds %struct.lzma_range_encoder, ptr %0, i64 0, i32 3
  store i8 0, ptr %4, align 4, !tbaa !61
  %5 = getelementptr inbounds %struct.lzma_range_encoder, ptr %0, i64 0, i32 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: write) uwtable
define internal fastcc void @literal_init(ptr nocapture noundef writeonly %0, i32 noundef %1, i32 noundef %2) unnamed_addr #8 {
  %4 = add i32 %2, %1
  br label %5

5:                                                ; preds = %3, %14
  %6 = phi i32 [ 0, %3 ], [ %15, %14 ]
  %7 = zext i32 %6 to i64
  br label %8

8:                                                ; preds = %8, %5
  %9 = phi i64 [ 0, %5 ], [ %11, %8 ]
  %10 = getelementptr inbounds [768 x i16], ptr %0, i64 %7, i64 %9
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %10, align 2, !tbaa !33
  %11 = add nuw i64 %9, 8
  %12 = icmp eq i64 %11, 768
  br i1 %12, label %14, label %8, !llvm.loop !62

13:                                               ; preds = %14
  ret void

14:                                               ; preds = %8
  %15 = add i32 %6, 1
  %16 = lshr i32 %15, %4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %5, label %13, !llvm.loop !63
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define internal fastcc void @length_encoder_reset(ptr nocapture noundef %0, i32 noundef %1, i1 noundef zeroext %2) unnamed_addr #6 {
  store i16 1024, ptr %0, align 4, !tbaa !64
  %4 = getelementptr inbounds %struct.lzma_length_encoder, ptr %0, i64 0, i32 1
  store i16 1024, ptr %4, align 2, !tbaa !65
  %5 = zext i32 %1 to i64
  %6 = icmp eq i32 %1, 0
  br i1 %6, label %13, label %7

7:                                                ; preds = %3, %7
  %8 = phi i64 [ %11, %7 ], [ 0, %3 ]
  %9 = getelementptr inbounds %struct.lzma_length_encoder, ptr %0, i64 0, i32 2, i64 %8, i64 0
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %9, align 2, !tbaa !33
  %10 = getelementptr inbounds %struct.lzma_length_encoder, ptr %0, i64 0, i32 3, i64 %8, i64 0
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %10, align 2, !tbaa !33
  %11 = add nuw nsw i64 %8, 1
  %12 = icmp eq i64 %11, %5
  br i1 %12, label %13, label %7, !llvm.loop !66

13:                                               ; preds = %7, %3
  br label %14

14:                                               ; preds = %13, %14
  %15 = phi i64 [ %17, %14 ], [ 0, %13 ]
  %16 = getelementptr inbounds %struct.lzma_length_encoder, ptr %0, i64 0, i32 4, i64 %15
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %16, align 2, !tbaa !33
  %17 = add nuw i64 %15, 8
  %18 = icmp eq i64 %17, 256
  br i1 %18, label %19, label %14, !llvm.loop !67

19:                                               ; preds = %14
  %20 = or i1 %6, %2
  br i1 %20, label %26, label %21

21:                                               ; preds = %19, %21
  %22 = phi i64 [ %24, %21 ], [ 0, %19 ]
  %23 = trunc i64 %22 to i32
  tail call fastcc void @length_update_prices(ptr noundef nonnull %0, i32 noundef %23) #14
  %24 = add nuw nsw i64 %22, 1
  %25 = icmp eq i64 %24, %5
  br i1 %25, label %26, label %21, !llvm.loop !68

26:                                               ; preds = %21, %19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @lzma_lzma_encoder_create(ptr nocapture noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #0 {
  %5 = load ptr, ptr %0, align 8, !tbaa !32
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %10

7:                                                ; preds = %4
  %8 = tail call ptr @lzma_alloc(i64 noundef 249576, ptr noundef %1) #16
  store ptr %8, ptr %0, align 8, !tbaa !32
  %9 = icmp eq ptr %8, null
  br i1 %9, label %46, label %10

10:                                               ; preds = %7, %4
  %11 = phi ptr [ %8, %7 ], [ %5, %4 ]
  %12 = getelementptr inbounds %struct.lzma_options_lzma, ptr %2, i64 0, i32 6
  %13 = load i32, ptr %12, align 8, !tbaa !60
  switch i32 %13, label %46 [
    i32 1, label %14
    i32 2, label %16
  ]

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.lzma_coder_s, ptr %11, i64 0, i32 6
  store i8 1, ptr %15, align 4, !tbaa !24
  br label %32

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.lzma_coder_s, ptr %11, i64 0, i32 6
  store i8 0, ptr %17, align 4, !tbaa !24
  %18 = load i32, ptr %2, align 8, !tbaa !69
  br label %19

19:                                               ; preds = %19, %16
  %20 = phi i32 [ 0, %16 ], [ %23, %19 ]
  %21 = shl nuw i32 1, %20
  %22 = icmp ult i32 %21, %18
  %23 = add i32 %20, 1
  br i1 %22, label %19, label %24, !llvm.loop !70

24:                                               ; preds = %19
  %25 = shl i32 %20, 1
  %26 = getelementptr inbounds %struct.lzma_coder_s, ptr %11, i64 0, i32 26
  store i32 %25, ptr %26, align 8, !tbaa !71
  %27 = getelementptr inbounds %struct.lzma_options_lzma, ptr %2, i64 0, i32 7
  %28 = load i32, ptr %27, align 4, !tbaa !59
  %29 = add i32 %28, -1
  %30 = getelementptr inbounds %struct.lzma_coder_s, ptr %11, i64 0, i32 22, i32 6
  store i32 %29, ptr %30, align 4, !tbaa !72
  %31 = getelementptr inbounds %struct.lzma_coder_s, ptr %11, i64 0, i32 23, i32 6
  store i32 %29, ptr %31, align 4, !tbaa !73
  br label %32

32:                                               ; preds = %24, %14
  %33 = getelementptr inbounds %struct.lzma_options_lzma, ptr %2, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !74
  %35 = icmp eq ptr %34, null
  br i1 %35, label %41, label %36

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.lzma_options_lzma, ptr %2, i64 0, i32 2
  %38 = load i32, ptr %37, align 8, !tbaa !75
  %39 = icmp ne i32 %38, 0
  %40 = zext i1 %39 to i8
  br label %41

41:                                               ; preds = %36, %32
  %42 = phi i8 [ 0, %32 ], [ %40, %36 ]
  %43 = getelementptr inbounds %struct.lzma_coder_s, ptr %11, i64 0, i32 7
  store i8 %42, ptr %43, align 1, !tbaa !5
  %44 = getelementptr inbounds %struct.lzma_coder_s, ptr %11, i64 0, i32 8
  store i8 0, ptr %44, align 2, !tbaa !26
  tail call fastcc void @set_lz_options(ptr noundef %3, ptr noundef nonnull %2) #14
  %45 = tail call i32 @lzma_lzma_encoder_reset(ptr noundef nonnull %11, ptr noundef nonnull %2) #14, !range !76
  br label %46

46:                                               ; preds = %41, %10, %7
  %47 = phi i32 [ 5, %7 ], [ %45, %41 ], [ 8, %10 ]
  ret i32 %47
}

; Function Attrs: optsize
declare ptr @lzma_alloc(i64 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @set_lz_options(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #9 {
  store i64 4096, ptr %0, align 8, !tbaa !77
  %3 = load i32, ptr %1, align 8, !tbaa !69
  %4 = zext i32 %3 to i64
  %5 = getelementptr inbounds %struct.lzma_lz_options, ptr %0, i64 0, i32 1
  store i64 %4, ptr %5, align 8, !tbaa !79
  %6 = getelementptr inbounds %struct.lzma_lz_options, ptr %0, i64 0, i32 2
  store i64 4097, ptr %6, align 8, !tbaa !80
  %7 = getelementptr inbounds %struct.lzma_lz_options, ptr %0, i64 0, i32 3
  store i64 273, ptr %7, align 8, !tbaa !81
  %8 = getelementptr inbounds %struct.lzma_options_lzma, ptr %1, i64 0, i32 7
  %9 = load i32, ptr %8, align 4, !tbaa !59
  %10 = zext i32 %9 to i64
  %11 = getelementptr inbounds %struct.lzma_lz_options, ptr %0, i64 0, i32 4
  store i64 %10, ptr %11, align 8, !tbaa !82
  %12 = getelementptr inbounds %struct.lzma_options_lzma, ptr %1, i64 0, i32 8
  %13 = getelementptr inbounds %struct.lzma_lz_options, ptr %0, i64 0, i32 5
  %14 = load <2 x i32>, ptr %12, align 8, !tbaa !25
  store <2 x i32> %14, ptr %13, align 8, !tbaa !25
  %15 = getelementptr inbounds %struct.lzma_options_lzma, ptr %1, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !74
  %17 = getelementptr inbounds %struct.lzma_lz_options, ptr %0, i64 0, i32 7
  store ptr %16, ptr %17, align 8, !tbaa !83
  %18 = getelementptr inbounds %struct.lzma_options_lzma, ptr %1, i64 0, i32 2
  %19 = load i32, ptr %18, align 8, !tbaa !75
  %20 = getelementptr inbounds %struct.lzma_lz_options, ptr %0, i64 0, i32 8
  store i32 %19, ptr %20, align 8, !tbaa !84
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @lzma_lzma_encoder_init(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call i32 @lzma_lz_encoder_init(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull @lzma_encoder_init) #16
  ret i32 %4
}

; Function Attrs: optsize
declare i32 @lzma_lz_encoder_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @lzma_encoder_init(ptr nocapture noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef writeonly %3) #0 {
  %5 = getelementptr inbounds %struct.lzma_lz_encoder, ptr %0, i64 0, i32 1
  store ptr @lzma_encode, ptr %5, align 8, !tbaa !85
  %6 = tail call i32 @lzma_lzma_encoder_create(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #14, !range !76
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i64 @lzma_lzma_encoder_memusage(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = alloca %struct.lzma_lz_options, align 8
  %3 = tail call fastcc zeroext i1 @is_options_valid(ptr noundef %0) #14
  br i1 %3, label %4, label %9

4:                                                ; preds = %1
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %2) #15
  call fastcc void @set_lz_options(ptr noundef nonnull %2, ptr noundef %0) #14
  %5 = call i64 @lzma_lz_encoder_memusage(ptr noundef nonnull %2) #16
  %6 = icmp eq i64 %5, -1
  %7 = add i64 %5, 249576
  %8 = select i1 %6, i64 -1, i64 %7
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %2) #15
  br label %9

9:                                                ; preds = %1, %4
  %10 = phi i64 [ %8, %4 ], [ -1, %1 ]
  ret i64 %10
}

; Function Attrs: optsize
declare i64 @lzma_lz_encoder_memusage(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local noundef zeroext i1 @lzma_lzma_lclppb_encode(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #9 {
  %3 = tail call fastcc zeroext i1 @is_lclppb_valid(ptr noundef %0) #14
  br i1 %3, label %4, label %16

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.lzma_options_lzma, ptr %0, i64 0, i32 5
  %6 = load i32, ptr %5, align 4, !tbaa !42
  %7 = mul i32 %6, 5
  %8 = getelementptr inbounds %struct.lzma_options_lzma, ptr %0, i64 0, i32 4
  %9 = load i32, ptr %8, align 8, !tbaa !46
  %10 = add i32 %7, %9
  %11 = mul i32 %10, 9
  %12 = getelementptr inbounds %struct.lzma_options_lzma, ptr %0, i64 0, i32 3
  %13 = load i32, ptr %12, align 4, !tbaa !44
  %14 = add i32 %11, %13
  %15 = trunc i32 %14 to i8
  store i8 %15, ptr %1, align 1, !tbaa !28
  br label %16

16:                                               ; preds = %2, %4
  %17 = xor i1 %3, true
  ret i1 %17
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i1 @is_lclppb_valid(ptr nocapture noundef readonly %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.lzma_options_lzma, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 4, !tbaa !44
  %4 = icmp ult i32 %3, 5
  br i1 %4, label %5, label %16

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.lzma_options_lzma, ptr %0, i64 0, i32 4
  %7 = load i32, ptr %6, align 8, !tbaa !46
  %8 = icmp ult i32 %7, 5
  %9 = add nuw nsw i32 %7, %3
  %10 = icmp ult i32 %9, 5
  %11 = select i1 %8, i1 %10, i1 false
  br i1 %11, label %12, label %16

12:                                               ; preds = %5
  %13 = getelementptr inbounds %struct.lzma_options_lzma, ptr %0, i64 0, i32 5
  %14 = load i32, ptr %13, align 4, !tbaa !42
  %15 = icmp ult i32 %14, 5
  br label %16

16:                                               ; preds = %12, %5, %1
  %17 = phi i1 [ false, %5 ], [ false, %1 ], [ %15, %12 ]
  ret i1 %17
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local noundef i32 @lzma_lzma_props_encode(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #9 {
  %3 = tail call zeroext i1 @lzma_lzma_lclppb_encode(ptr noundef %0, ptr noundef %1) #14
  br i1 %3, label %7, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds i8, ptr %1, i64 1
  %6 = load i32, ptr %0, align 8, !tbaa !69
  tail call fastcc void @unaligned_write32le(ptr noundef nonnull %5, i32 noundef %6) #14
  br label %7

7:                                                ; preds = %2, %4
  %8 = phi i32 [ 0, %4 ], [ 11, %2 ]
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @unaligned_write32le(ptr nocapture noundef writeonly %0, i32 noundef %1) unnamed_addr #7 {
  %3 = trunc i32 %1 to i8
  store i8 %3, ptr %0, align 1, !tbaa !28
  %4 = lshr i32 %1, 8
  %5 = trunc i32 %4 to i8
  %6 = getelementptr inbounds i8, ptr %0, i64 1
  store i8 %5, ptr %6, align 1, !tbaa !28
  %7 = lshr i32 %1, 16
  %8 = trunc i32 %7 to i8
  %9 = getelementptr inbounds i8, ptr %0, i64 2
  store i8 %8, ptr %9, align 1, !tbaa !28
  %10 = lshr i32 %1, 24
  %11 = trunc i32 %10 to i8
  %12 = getelementptr inbounds i8, ptr %0, i64 3
  store i8 %11, ptr %12, align 1, !tbaa !28
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef zeroext i8 @lzma_mode_is_supported(i32 noundef %0) local_unnamed_addr #10 {
  %2 = add i32 %0, -1
  %3 = icmp ult i32 %2, 2
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @mf_skip(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 11
  %3 = load ptr, ptr %2, align 8, !tbaa !87
  tail call void %3(ptr noundef %0, i32 noundef 1) #16
  %4 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 6
  %5 = load i32, ptr %4, align 4, !tbaa !20
  %6 = add i32 %5, 1
  store i32 %6, ptr %4, align 4, !tbaa !20
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @rc_bit(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #9 {
  %4 = getelementptr inbounds %struct.lzma_range_encoder, ptr %0, i64 0, i32 4
  %5 = load i64, ptr %4, align 8, !tbaa !30
  %6 = getelementptr inbounds %struct.lzma_range_encoder, ptr %0, i64 0, i32 6, i64 %5
  store i32 %2, ptr %6, align 4, !tbaa !25
  %7 = getelementptr inbounds %struct.lzma_range_encoder, ptr %0, i64 0, i32 7, i64 %5
  store ptr %1, ptr %7, align 8, !tbaa !32
  %8 = add i64 %5, 1
  store i64 %8, ptr %4, align 8, !tbaa !30
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define internal fastcc void @rc_bittree(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #6 {
  br label %5

5:                                                ; preds = %5, %4
  %6 = phi i32 [ 1, %4 ], [ %14, %5 ]
  %7 = phi i32 [ %2, %4 ], [ %8, %5 ]
  %8 = add i32 %7, -1
  %9 = lshr i32 %3, %8
  %10 = and i32 %9, 1
  %11 = zext i32 %6 to i64
  %12 = getelementptr inbounds i16, ptr %1, i64 %11
  tail call fastcc void @rc_bit(ptr noundef %0, ptr noundef %12, i32 noundef %10) #14
  %13 = shl i32 %6, 1
  %14 = or disjoint i32 %10, %13
  %15 = icmp eq i32 %8, 0
  br i1 %15, label %16, label %5, !llvm.loop !88

16:                                               ; preds = %5
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define internal fastcc noundef zeroext i1 @rc_shift_low(ptr nocapture noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef %2, i64 noundef %3) unnamed_addr #6 {
  %5 = load i64, ptr %0, align 8, !tbaa !34
  %6 = and i64 %5, -16777216
  %7 = icmp eq i64 %6, 4278190080
  br i1 %7, label %8, label %12

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.lzma_range_encoder, ptr %0, i64 0, i32 1
  %10 = load i64, ptr %9, align 8, !tbaa !38
  %11 = add i64 %10, 1
  br label %34

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.lzma_range_encoder, ptr %0, i64 0, i32 3
  %14 = getelementptr inbounds %struct.lzma_range_encoder, ptr %0, i64 0, i32 1
  br label %15

15:                                               ; preds = %12, %18
  %16 = load i64, ptr %2, align 8, !tbaa !21
  %17 = icmp eq i64 %16, %3
  br i1 %17, label %40, label %18

18:                                               ; preds = %15
  %19 = load i8, ptr %13, align 4, !tbaa !61
  %20 = load i64, ptr %0, align 8, !tbaa !34
  %21 = lshr i64 %20, 32
  %22 = trunc i64 %21 to i8
  %23 = add i8 %19, %22
  %24 = getelementptr inbounds i8, ptr %1, i64 %16
  store i8 %23, ptr %24, align 1, !tbaa !28
  %25 = load i64, ptr %2, align 8, !tbaa !21
  %26 = add i64 %25, 1
  store i64 %26, ptr %2, align 8, !tbaa !21
  store i8 -1, ptr %13, align 4, !tbaa !61
  %27 = load i64, ptr %14, align 8, !tbaa !38
  %28 = add i64 %27, -1
  store i64 %28, ptr %14, align 8, !tbaa !38
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %15, !llvm.loop !89

30:                                               ; preds = %18
  %31 = load i64, ptr %0, align 8, !tbaa !34
  %32 = lshr i64 %31, 24
  %33 = trunc i64 %32 to i8
  store i8 %33, ptr %13, align 4, !tbaa !61
  br label %34

34:                                               ; preds = %8, %30
  %35 = phi i64 [ %5, %8 ], [ %31, %30 ]
  %36 = phi i64 [ %11, %8 ], [ 1, %30 ]
  %37 = getelementptr inbounds %struct.lzma_range_encoder, ptr %0, i64 0, i32 1
  store i64 %36, ptr %37, align 8, !tbaa !38
  %38 = shl i64 %35, 8
  %39 = and i64 %38, 4294967040
  store i64 %39, ptr %0, align 8, !tbaa !34
  br label %40

40:                                               ; preds = %15, %34
  %41 = phi i1 [ false, %34 ], [ true, %15 ]
  ret i1 %41
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @literal(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #5 {
  %4 = load ptr, ptr %1, align 8, !tbaa !27
  %5 = getelementptr inbounds %struct.lzma_mf_s, ptr %1, i64 0, i32 5
  %6 = load i32, ptr %5, align 8, !tbaa !17
  %7 = getelementptr inbounds %struct.lzma_mf_s, ptr %1, i64 0, i32 6
  %8 = load i32, ptr %7, align 4, !tbaa !20
  %9 = sub i32 %6, %8
  %10 = zext i32 %9 to i64
  %11 = getelementptr inbounds i8, ptr %4, i64 %10
  %12 = load i8, ptr %11, align 1, !tbaa !28
  %13 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 11
  %14 = load i32, ptr %13, align 8, !tbaa !47
  %15 = and i32 %14, %2
  %16 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 10
  %17 = load i32, ptr %16, align 4, !tbaa !45
  %18 = shl i32 %15, %17
  %19 = add i32 %9, -1
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds i8, ptr %4, i64 %20
  %22 = load i8, ptr %21, align 1, !tbaa !28
  %23 = zext i8 %22 to i32
  %24 = sub i32 8, %17
  %25 = lshr i32 %23, %24
  %26 = add i32 %25, %18
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 12, i64 %27
  %29 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 1
  %30 = load i32, ptr %29, align 8, !tbaa !40
  %31 = icmp ult i32 %30, 7
  br i1 %31, label %32, label %34

32:                                               ; preds = %3
  %33 = zext i8 %12 to i32
  tail call fastcc void @rc_bittree(ptr noundef nonnull %0, ptr noundef nonnull %28, i32 noundef 8, i32 noundef %33) #14
  br label %44

34:                                               ; preds = %3
  %35 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 2
  %36 = load i32, ptr %35, align 4, !tbaa !25
  %37 = xor i32 %36, -1
  %38 = add i32 %9, %37
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds i8, ptr %4, i64 %39
  %41 = load i8, ptr %40, align 1, !tbaa !28
  %42 = zext i8 %41 to i32
  %43 = zext i8 %12 to i32
  tail call fastcc void @literal_matched(ptr noundef nonnull %0, ptr noundef nonnull %28, i32 noundef %42, i32 noundef %43) #14
  br label %44

44:                                               ; preds = %34, %32
  %45 = load i32, ptr %29, align 8, !tbaa !40
  %46 = icmp ult i32 %45, 4
  br i1 %46, label %53, label %47

47:                                               ; preds = %44
  %48 = icmp ult i32 %45, 10
  br i1 %48, label %49, label %51

49:                                               ; preds = %47
  %50 = add nsw i32 %45, -3
  br label %53

51:                                               ; preds = %47
  %52 = add i32 %45, -6
  br label %53

53:                                               ; preds = %49, %51, %44
  %54 = phi i32 [ 0, %44 ], [ %50, %49 ], [ %52, %51 ]
  store i32 %54, ptr %29, align 8, !tbaa !40
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define internal fastcc void @rep_match(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #6 {
  %5 = icmp eq i32 %2, 0
  br i1 %5, label %6, label %17

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 1
  %8 = load i32, ptr %7, align 8, !tbaa !40
  %9 = zext i32 %8 to i64
  %10 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 15, i64 %9
  tail call fastcc void @rc_bit(ptr noundef %0, ptr noundef nonnull %10, i32 noundef 0) #14
  %11 = load i32, ptr %7, align 8, !tbaa !40
  %12 = zext i32 %11 to i64
  %13 = zext i32 %1 to i64
  %14 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 18, i64 %12, i64 %13
  %15 = icmp ne i32 %3, 1
  %16 = zext i1 %15 to i32
  tail call fastcc void @rc_bit(ptr noundef %0, ptr noundef nonnull %14, i32 noundef %16) #14
  br label %48

17:                                               ; preds = %4
  %18 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 2
  %19 = zext nneg i32 %2 to i64
  %20 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 2, i64 %19
  %21 = load i32, ptr %20, align 4, !tbaa !25
  %22 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 1
  %23 = load i32, ptr %22, align 8, !tbaa !40
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 15, i64 %24
  tail call fastcc void @rc_bit(ptr noundef %0, ptr noundef nonnull %25, i32 noundef 1) #14
  %26 = icmp eq i32 %2, 1
  %27 = load i32, ptr %22, align 8, !tbaa !40
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 16, i64 %28
  br i1 %26, label %30, label %31

30:                                               ; preds = %17
  tail call fastcc void @rc_bit(ptr noundef nonnull %0, ptr noundef nonnull %29, i32 noundef 0) #14
  br label %45

31:                                               ; preds = %17
  tail call fastcc void @rc_bit(ptr noundef nonnull %0, ptr noundef nonnull %29, i32 noundef 1) #14
  %32 = load i32, ptr %22, align 8, !tbaa !40
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 17, i64 %33
  %35 = add nsw i32 %2, -2
  tail call fastcc void @rc_bit(ptr noundef nonnull %0, ptr noundef nonnull %34, i32 noundef %35) #14
  %36 = icmp eq i32 %2, 3
  br i1 %36, label %37, label %41

37:                                               ; preds = %31
  %38 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 2, i64 2
  %39 = load i32, ptr %38, align 4, !tbaa !25
  %40 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 2, i64 3
  store i32 %39, ptr %40, align 4, !tbaa !25
  br label %41

41:                                               ; preds = %37, %31
  %42 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 2, i64 1
  %43 = load i32, ptr %42, align 4, !tbaa !25
  %44 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 2, i64 2
  store i32 %43, ptr %44, align 4, !tbaa !25
  br label %45

45:                                               ; preds = %41, %30
  %46 = load i32, ptr %18, align 4, !tbaa !25
  %47 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 2, i64 1
  store i32 %46, ptr %47, align 4, !tbaa !25
  store i32 %21, ptr %18, align 4, !tbaa !25
  br label %48

48:                                               ; preds = %45, %6
  %49 = icmp eq i32 %3, 1
  br i1 %49, label %55, label %50

50:                                               ; preds = %48
  %51 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 23
  %52 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 6
  %53 = load i8, ptr %52, align 4, !tbaa !24, !range !15, !noundef !16
  %54 = icmp ne i8 %53, 0
  tail call fastcc void @length(ptr noundef nonnull %0, ptr noundef nonnull %51, i32 noundef %1, i32 noundef %3, i1 noundef zeroext %54) #14
  br label %55

55:                                               ; preds = %48, %50
  %56 = phi i32 [ 8, %50 ], [ 9, %48 ]
  %57 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 1
  %58 = load i32, ptr %57, align 8, !tbaa !40
  %59 = icmp ult i32 %58, 7
  %60 = select i1 %59, i32 %56, i32 11
  store i32 %60, ptr %57, align 8, !tbaa !40
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define internal fastcc void @match(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #6 {
  %5 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 1
  %6 = load i32, ptr %5, align 8, !tbaa !40
  %7 = icmp ult i32 %6, 7
  %8 = select i1 %7, i32 7, i32 10
  store i32 %8, ptr %5, align 8, !tbaa !40
  %9 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 22
  %10 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 6
  %11 = load i8, ptr %10, align 4, !tbaa !24, !range !15, !noundef !16
  %12 = icmp ne i8 %11, 0
  tail call fastcc void @length(ptr noundef %0, ptr noundef nonnull %9, i32 noundef %1, i32 noundef %3, i1 noundef zeroext %12) #14
  %13 = tail call fastcc i32 @get_pos_slot(i32 noundef %2) #14, !range !90
  %14 = icmp ult i32 %3, 6
  %15 = add i32 %3, -2
  %16 = select i1 %14, i32 %15, i32 3
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 19, i64 %17
  tail call fastcc void @rc_bittree(ptr noundef %0, ptr noundef nonnull %18, i32 noundef 6, i32 noundef %13) #14
  %19 = icmp ugt i32 %13, 3
  br i1 %19, label %20, label %44

20:                                               ; preds = %4
  %21 = lshr i32 %13, 1
  %22 = add nsw i32 %21, -1
  %23 = and i32 %13, 1
  %24 = or disjoint i32 %23, 2
  %25 = shl i32 %24, %22
  %26 = sub i32 %2, %25
  %27 = icmp ult i32 %13, 14
  br i1 %27, label %28, label %36

28:                                               ; preds = %20
  %29 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 20
  %30 = zext i32 %25 to i64
  %31 = getelementptr inbounds i16, ptr %29, i64 %30
  %32 = zext nneg i32 %13 to i64
  %33 = sub nsw i64 0, %32
  %34 = getelementptr inbounds i16, ptr %31, i64 %33
  %35 = getelementptr inbounds i16, ptr %34, i64 -1
  tail call fastcc void @rc_bittree_reverse(ptr noundef nonnull %0, ptr noundef nonnull %35, i32 noundef %22, i32 noundef %26) #14
  br label %44

36:                                               ; preds = %20
  %37 = lshr i32 %26, 4
  %38 = add nsw i32 %21, -5
  tail call fastcc void @rc_direct(ptr noundef nonnull %0, i32 noundef %37, i32 noundef %38) #14
  %39 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 21
  %40 = and i32 %26, 15
  tail call fastcc void @rc_bittree_reverse(ptr noundef nonnull %0, ptr noundef nonnull %39, i32 noundef 4, i32 noundef %40) #14
  %41 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 29
  %42 = load i32, ptr %41, align 8, !tbaa !56
  %43 = add i32 %42, 1
  store i32 %43, ptr %41, align 8, !tbaa !56
  br label %44

44:                                               ; preds = %28, %36, %4
  %45 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 2
  %46 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 2, i64 2
  %47 = load i32, ptr %46, align 4, !tbaa !25
  %48 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 2, i64 3
  store i32 %47, ptr %48, align 4, !tbaa !25
  %49 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 2, i64 1
  %50 = load <2 x i32>, ptr %45, align 4, !tbaa !25
  store <2 x i32> %50, ptr %49, align 4, !tbaa !25
  store i32 %2, ptr %45, align 4, !tbaa !25
  %51 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 27
  %52 = load i32, ptr %51, align 4, !tbaa !55
  %53 = add i32 %52, 1
  store i32 %53, ptr %51, align 4, !tbaa !55
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define internal fastcc void @literal_matched(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #6 {
  %5 = add nuw nsw i32 %3, 256
  br label %6

6:                                                ; preds = %6, %4
  %7 = phi i32 [ 256, %4 ], [ %22, %6 ]
  %8 = phi i32 [ %5, %4 ], [ %19, %6 ]
  %9 = phi i32 [ %2, %4 ], [ %10, %6 ]
  %10 = shl i32 %9, 1
  %11 = and i32 %10, %7
  %12 = lshr i32 %8, 8
  %13 = add nuw nsw i32 %12, %7
  %14 = add nuw nsw i32 %13, %11
  %15 = lshr i32 %8, 7
  %16 = and i32 %15, 1
  %17 = zext nneg i32 %14 to i64
  %18 = getelementptr inbounds i16, ptr %1, i64 %17
  tail call fastcc void @rc_bit(ptr noundef %0, ptr noundef %18, i32 noundef %16) #14
  %19 = shl i32 %8, 1
  %20 = xor i32 %19, %10
  %21 = xor i32 %20, -1
  %22 = and i32 %7, %21
  %23 = icmp ult i32 %19, 65536
  br i1 %23, label %6, label %24, !llvm.loop !91

24:                                               ; preds = %6
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define internal fastcc void @length(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i1 noundef zeroext %4) unnamed_addr #6 {
  %6 = add i32 %3, -2
  %7 = icmp ult i32 %6, 8
  br i1 %7, label %8, label %11

8:                                                ; preds = %5
  tail call fastcc void @rc_bit(ptr noundef %0, ptr noundef %1, i32 noundef 0) #14
  %9 = zext i32 %2 to i64
  %10 = getelementptr inbounds %struct.lzma_length_encoder, ptr %1, i64 0, i32 2, i64 %9
  tail call fastcc void @rc_bittree(ptr noundef %0, ptr noundef nonnull %10, i32 noundef 3, i32 noundef %6) #14
  br label %21

11:                                               ; preds = %5
  tail call fastcc void @rc_bit(ptr noundef %0, ptr noundef %1, i32 noundef 1) #14
  %12 = add i32 %3, -10
  %13 = icmp ult i32 %12, 8
  %14 = getelementptr inbounds %struct.lzma_length_encoder, ptr %1, i64 0, i32 1
  br i1 %13, label %15, label %18

15:                                               ; preds = %11
  tail call fastcc void @rc_bit(ptr noundef %0, ptr noundef nonnull %14, i32 noundef 0) #14
  %16 = zext i32 %2 to i64
  %17 = getelementptr inbounds %struct.lzma_length_encoder, ptr %1, i64 0, i32 3, i64 %16
  tail call fastcc void @rc_bittree(ptr noundef %0, ptr noundef nonnull %17, i32 noundef 3, i32 noundef %12) #14
  br label %21

18:                                               ; preds = %11
  tail call fastcc void @rc_bit(ptr noundef %0, ptr noundef nonnull %14, i32 noundef 1) #14
  %19 = add i32 %3, -18
  %20 = getelementptr inbounds %struct.lzma_length_encoder, ptr %1, i64 0, i32 4
  tail call fastcc void @rc_bittree(ptr noundef %0, ptr noundef nonnull %20, i32 noundef 8, i32 noundef %19) #14
  br label %21

21:                                               ; preds = %15, %18, %8
  br i1 %4, label %29, label %22

22:                                               ; preds = %21
  %23 = zext i32 %2 to i64
  %24 = getelementptr inbounds %struct.lzma_length_encoder, ptr %1, i64 0, i32 7, i64 %23
  %25 = load i32, ptr %24, align 4, !tbaa !25
  %26 = add i32 %25, -1
  store i32 %26, ptr %24, align 4, !tbaa !25
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %22
  tail call fastcc void @length_update_prices(ptr noundef nonnull %1, i32 noundef %2) #14
  br label %29

29:                                               ; preds = %22, %28, %21
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define internal fastcc void @length_update_prices(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #6 {
  %3 = getelementptr inbounds %struct.lzma_length_encoder, ptr %0, i64 0, i32 6
  %4 = load i32, ptr %3, align 4, !tbaa !92
  %5 = zext i32 %1 to i64
  %6 = getelementptr inbounds %struct.lzma_length_encoder, ptr %0, i64 0, i32 7, i64 %5
  store i32 %4, ptr %6, align 4, !tbaa !25
  %7 = load i16, ptr %0, align 4, !tbaa !64
  %8 = tail call fastcc i32 @rc_bit_0_price(i16 noundef zeroext %7) #14, !range !93
  %9 = tail call fastcc i32 @rc_bit_1_price(i16 noundef zeroext %7) #14, !range !93
  %10 = getelementptr inbounds %struct.lzma_length_encoder, ptr %0, i64 0, i32 1
  %11 = load i16, ptr %10, align 2, !tbaa !65
  %12 = tail call fastcc i32 @rc_bit_0_price(i16 noundef zeroext %11) #14, !range !93
  %13 = add nuw nsw i32 %12, %9
  %14 = tail call fastcc i32 @rc_bit_1_price(i16 noundef zeroext %11) #14, !range !93
  %15 = add nuw nsw i32 %14, %9
  %16 = getelementptr inbounds %struct.lzma_length_encoder, ptr %0, i64 0, i32 5, i64 %5
  %17 = tail call i32 @llvm.umin.i32(i32 %4, i32 8)
  %18 = icmp eq i32 %4, 0
  br i1 %18, label %37, label %19

19:                                               ; preds = %2
  %20 = getelementptr inbounds %struct.lzma_length_encoder, ptr %0, i64 0, i32 2, i64 %5
  %21 = zext nneg i32 %17 to i64
  br label %29

22:                                               ; preds = %29
  %23 = tail call i32 @llvm.umin.i32(i32 %4, i32 16)
  %24 = icmp ugt i32 %4, 8
  br i1 %24, label %25, label %37

25:                                               ; preds = %22
  %26 = getelementptr inbounds %struct.lzma_length_encoder, ptr %0, i64 0, i32 3, i64 %5
  %27 = zext nneg i32 %17 to i64
  %28 = zext nneg i32 %23 to i64
  br label %43

29:                                               ; preds = %19, %29
  %30 = phi i64 [ 0, %19 ], [ %35, %29 ]
  %31 = trunc i64 %30 to i32
  %32 = tail call fastcc i32 @rc_bittree_price(ptr noundef nonnull %20, i32 noundef 3, i32 noundef %31) #14
  %33 = add i32 %32, %8
  %34 = getelementptr inbounds i32, ptr %16, i64 %30
  store i32 %33, ptr %34, align 4, !tbaa !25
  %35 = add nuw nsw i64 %30, 1
  %36 = icmp eq i64 %35, %21
  br i1 %36, label %22, label %29, !llvm.loop !94

37:                                               ; preds = %43, %2, %22
  %38 = phi i32 [ %17, %22 ], [ 0, %2 ], [ %23, %43 ]
  %39 = icmp ult i32 %38, %4
  br i1 %39, label %40, label %62

40:                                               ; preds = %37
  %41 = getelementptr inbounds %struct.lzma_length_encoder, ptr %0, i64 0, i32 4
  %42 = zext nneg i32 %38 to i64
  br label %52

43:                                               ; preds = %25, %43
  %44 = phi i64 [ %27, %25 ], [ %50, %43 ]
  %45 = trunc i64 %44 to i32
  %46 = add i32 %45, -8
  %47 = tail call fastcc i32 @rc_bittree_price(ptr noundef nonnull %26, i32 noundef 3, i32 noundef %46) #14
  %48 = add i32 %13, %47
  %49 = getelementptr inbounds i32, ptr %16, i64 %44
  store i32 %48, ptr %49, align 4, !tbaa !25
  %50 = add nuw nsw i64 %44, 1
  %51 = icmp eq i64 %50, %28
  br i1 %51, label %37, label %43, !llvm.loop !95

52:                                               ; preds = %40, %52
  %53 = phi i64 [ %42, %40 ], [ %59, %52 ]
  %54 = trunc i64 %53 to i32
  %55 = add i32 %54, -16
  %56 = tail call fastcc i32 @rc_bittree_price(ptr noundef nonnull %41, i32 noundef 8, i32 noundef %55) #14
  %57 = add i32 %15, %56
  %58 = getelementptr inbounds i32, ptr %16, i64 %53
  store i32 %57, ptr %58, align 4, !tbaa !25
  %59 = add nuw nsw i64 %53, 1
  %60 = trunc i64 %59 to i32
  %61 = icmp eq i32 %4, %60
  br i1 %61, label %62, label %52, !llvm.loop !96

62:                                               ; preds = %52, %37
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @rc_bit_0_price(i16 noundef zeroext %0) unnamed_addr #10 {
  %2 = lshr i16 %0, 4
  %3 = zext nneg i16 %2 to i64
  %4 = getelementptr inbounds [128 x i8], ptr @lzma_rc_prices, i64 0, i64 %3
  %5 = load i8, ptr %4, align 1, !tbaa !28
  %6 = zext i8 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @rc_bit_1_price(i16 noundef zeroext %0) unnamed_addr #10 {
  %2 = lshr i16 %0, 4
  %3 = xor i16 %2, 127
  %4 = zext nneg i16 %3 to i64
  %5 = getelementptr inbounds [128 x i8], ptr @lzma_rc_prices, i64 0, i64 %4
  %6 = load i8, ptr %5, align 1, !tbaa !28
  %7 = zext i8 %6 to i32
  ret i32 %7
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: read) uwtable
define internal fastcc i32 @rc_bittree_price(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) unnamed_addr #11 {
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
  %13 = load i16, ptr %12, align 2, !tbaa !33
  %14 = tail call fastcc i32 @rc_bit_price(i16 noundef zeroext %13, i32 noundef %9) #14, !range !93
  %15 = add i32 %14, %7
  %16 = icmp eq i32 %10, 1
  br i1 %16, label %17, label %6, !llvm.loop !97

17:                                               ; preds = %6
  ret i32 %15
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @rc_bit_price(i16 noundef zeroext %0, i32 noundef %1) unnamed_addr #10 {
  %3 = zext i16 %0 to i32
  %4 = sub nsw i32 0, %1
  %5 = and i32 %4, 2032
  %6 = xor i32 %5, %3
  %7 = lshr i32 %6, 4
  %8 = zext nneg i32 %7 to i64
  %9 = getelementptr inbounds [128 x i8], ptr @lzma_rc_prices, i64 0, i64 %8
  %10 = load i8, ptr %9, align 1, !tbaa !28
  %11 = zext i8 %10 to i32
  ret i32 %11
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @get_pos_slot(i32 noundef %0) unnamed_addr #10 {
  %2 = icmp ult i32 %0, 8192
  br i1 %2, label %3, label %8

3:                                                ; preds = %1
  %4 = zext nneg i32 %0 to i64
  %5 = getelementptr inbounds [8192 x i8], ptr @lzma_fastpos, i64 0, i64 %4
  %6 = load i8, ptr %5, align 1, !tbaa !28
  %7 = zext i8 %6 to i32
  br label %24

8:                                                ; preds = %1
  %9 = icmp ult i32 %0, 33554432
  br i1 %9, label %10, label %17

10:                                               ; preds = %8
  %11 = lshr i32 %0, 12
  %12 = zext nneg i32 %11 to i64
  %13 = getelementptr inbounds [8192 x i8], ptr @lzma_fastpos, i64 0, i64 %12
  %14 = load i8, ptr %13, align 1, !tbaa !28
  %15 = zext i8 %14 to i32
  %16 = add nuw nsw i32 %15, 24
  br label %24

17:                                               ; preds = %8
  %18 = lshr i32 %0, 24
  %19 = zext nneg i32 %18 to i64
  %20 = getelementptr inbounds [8192 x i8], ptr @lzma_fastpos, i64 0, i64 %19
  %21 = load i8, ptr %20, align 1, !tbaa !28
  %22 = zext i8 %21 to i32
  %23 = add nuw nsw i32 %22, 48
  br label %24

24:                                               ; preds = %17, %10, %3
  %25 = phi i32 [ %7, %3 ], [ %16, %10 ], [ %23, %17 ]
  ret i32 %25
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define internal fastcc void @rc_bittree_reverse(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #6 {
  br label %5

5:                                                ; preds = %5, %4
  %6 = phi i32 [ %3, %4 ], [ %10, %5 ]
  %7 = phi i32 [ 1, %4 ], [ %14, %5 ]
  %8 = phi i32 [ %2, %4 ], [ %15, %5 ]
  %9 = and i32 %6, 1
  %10 = lshr i32 %6, 1
  %11 = zext i32 %7 to i64
  %12 = getelementptr inbounds i16, ptr %1, i64 %11
  tail call fastcc void @rc_bit(ptr noundef %0, ptr noundef %12, i32 noundef %9) #14
  %13 = shl i32 %7, 1
  %14 = or disjoint i32 %13, %9
  %15 = add i32 %8, -1
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %5, !llvm.loop !98

17:                                               ; preds = %5
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define internal fastcc void @rc_direct(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #6 {
  %4 = getelementptr inbounds %struct.lzma_range_encoder, ptr %0, i64 0, i32 4
  %5 = load i64, ptr %4, align 8, !tbaa !30
  br label %6

6:                                                ; preds = %6, %3
  %7 = phi i64 [ %5, %3 ], [ %13, %6 ]
  %8 = phi i32 [ %2, %3 ], [ %9, %6 ]
  %9 = add i32 %8, -1
  %10 = lshr i32 %1, %9
  %11 = and i32 %10, 1
  %12 = or disjoint i32 %11, 2
  %13 = add i64 %7, 1
  %14 = getelementptr inbounds %struct.lzma_range_encoder, ptr %0, i64 0, i32 6, i64 %7
  store i32 %12, ptr %14, align 4, !tbaa !25
  %15 = icmp eq i32 %9, 0
  br i1 %15, label %16, label %6, !llvm.loop !99

16:                                               ; preds = %6
  store i64 %13, ptr %4, align 8, !tbaa !30
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @lzma_encode(ptr noundef %0, ptr noalias noundef %1, ptr noalias nocapture noundef writeonly %2, ptr noalias nocapture noundef %3, i64 noundef %4) #0 {
  %6 = getelementptr inbounds %struct.lzma_mf_s, ptr %1, i64 0, i32 20
  %7 = load i32, ptr %6, align 8, !tbaa !23
  %8 = icmp eq i32 %7, 1
  br i1 %8, label %11, label %9

9:                                                ; preds = %5
  %10 = tail call i32 @lzma_lzma_encode(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3, i64 noundef %4, i32 noundef -1) #14, !range !100
  br label %11

11:                                               ; preds = %5, %9
  %12 = phi i32 [ %10, %9 ], [ 8, %5 ]
  ret i32 %12
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #12

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #13

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree noinline norecurse nosync nounwind optsize memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree noinline norecurse nosync nounwind optsize memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #13 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { optsize }
attributes #15 = { nounwind }
attributes #16 = { nounwind optsize }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !12, i64 2957}
!6 = !{!"lzma_coder_s", !7, i64 0, !11, i64 736, !9, i64 740, !9, i64 756, !11, i64 2948, !11, i64 2952, !12, i64 2956, !12, i64 2957, !12, i64 2958, !11, i64 2960, !11, i64 2964, !11, i64 2968, !9, i64 2972, !9, i64 27548, !9, i64 27932, !9, i64 27956, !9, i64 27980, !9, i64 28004, !9, i64 28028, !9, i64 28412, !9, i64 28924, !9, i64 29152, !13, i64 29184, !13, i64 47688, !9, i64 66192, !9, i64 67216, !11, i64 69264, !11, i64 69268, !9, i64 69272, !11, i64 69336, !11, i64 69340, !11, i64 69344, !9, i64 69348}
!7 = !{!"", !8, i64 0, !8, i64 8, !11, i64 16, !9, i64 20, !8, i64 24, !8, i64 32, !9, i64 40, !9, i64 272}
!8 = !{!"long", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!"int", !9, i64 0}
!12 = !{!"_Bool", !9, i64 0}
!13 = !{!"", !14, i64 0, !14, i64 2, !9, i64 4, !9, i64 260, !9, i64 516, !9, i64 1028, !11, i64 18436, !9, i64 18440}
!14 = !{!"short", !9, i64 0}
!15 = !{i8 0, i8 2}
!16 = !{}
!17 = !{!18, !11, i64 24}
!18 = !{!"lzma_mf_s", !19, i64 0, !11, i64 8, !11, i64 12, !11, i64 16, !11, i64 20, !11, i64 24, !11, i64 28, !11, i64 32, !11, i64 36, !11, i64 40, !19, i64 48, !19, i64 56, !19, i64 64, !19, i64 72, !11, i64 80, !11, i64 84, !11, i64 88, !11, i64 92, !11, i64 96, !11, i64 100, !11, i64 104, !11, i64 108, !11, i64 112}
!19 = !{!"any pointer", !9, i64 0}
!20 = !{!18, !11, i64 28}
!21 = !{!8, !8, i64 0}
!22 = !{!18, !11, i64 32}
!23 = !{!18, !11, i64 104}
!24 = !{!6, !12, i64 2956}
!25 = !{!11, !11, i64 0}
!26 = !{!6, !12, i64 2958}
!27 = !{!18, !19, i64 0}
!28 = !{!9, !9, i64 0}
!29 = !{!7, !8, i64 32}
!30 = !{!7, !8, i64 24}
!31 = !{!7, !11, i64 16}
!32 = !{!19, !19, i64 0}
!33 = !{!14, !14, i64 0}
!34 = !{!7, !8, i64 0}
!35 = distinct !{!35, !36}
!36 = !{!"llvm.loop.mustprogress"}
!37 = distinct !{!37, !36}
!38 = !{!7, !8, i64 8}
!39 = !{!6, !11, i64 2960}
!40 = !{!6, !11, i64 736}
!41 = distinct !{!41, !36}
!42 = !{!43, !11, i64 28}
!43 = !{!"", !11, i64 0, !19, i64 8, !11, i64 16, !11, i64 20, !11, i64 24, !11, i64 28, !11, i64 32, !11, i64 36, !11, i64 40, !11, i64 44, !11, i64 48, !11, i64 52, !11, i64 56, !11, i64 60, !11, i64 64, !11, i64 68, !11, i64 72, !11, i64 76, !11, i64 80, !11, i64 84, !11, i64 88, !11, i64 92, !19, i64 96, !19, i64 104}
!44 = !{!43, !11, i64 20}
!45 = !{!6, !11, i64 2964}
!46 = !{!43, !11, i64 24}
!47 = !{!6, !11, i64 2968}
!48 = distinct !{!48, !36}
!49 = distinct !{!49, !36, !50, !51}
!50 = !{!"llvm.loop.isvectorized", i32 1}
!51 = !{!"llvm.loop.unroll.runtime.disable"}
!52 = distinct !{!52, !36}
!53 = distinct !{!53, !36, !50, !51}
!54 = distinct !{!54, !36}
!55 = !{!6, !11, i64 69268}
!56 = !{!6, !11, i64 69336}
!57 = !{!6, !11, i64 69340}
!58 = !{!6, !11, i64 69344}
!59 = !{!43, !11, i64 36}
!60 = !{!43, !11, i64 32}
!61 = !{!7, !9, i64 20}
!62 = distinct !{!62, !36, !50, !51}
!63 = distinct !{!63, !36}
!64 = !{!13, !14, i64 0}
!65 = !{!13, !14, i64 2}
!66 = distinct !{!66, !36}
!67 = distinct !{!67, !36, !50, !51}
!68 = distinct !{!68, !36}
!69 = !{!43, !11, i64 0}
!70 = distinct !{!70, !36}
!71 = !{!6, !11, i64 69264}
!72 = !{!6, !11, i64 47620}
!73 = !{!6, !11, i64 66124}
!74 = !{!43, !19, i64 8}
!75 = !{!43, !11, i64 16}
!76 = !{i32 0, i32 9}
!77 = !{!78, !8, i64 0}
!78 = !{!"", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !11, i64 40, !11, i64 44, !19, i64 48, !11, i64 56}
!79 = !{!78, !8, i64 8}
!80 = !{!78, !8, i64 16}
!81 = !{!78, !8, i64 24}
!82 = !{!78, !8, i64 32}
!83 = !{!78, !19, i64 48}
!84 = !{!78, !11, i64 56}
!85 = !{!86, !19, i64 8}
!86 = !{!"", !19, i64 0, !19, i64 8, !19, i64 16, !19, i64 24}
!87 = !{!18, !19, i64 56}
!88 = distinct !{!88, !36}
!89 = distinct !{!89, !36}
!90 = !{i32 0, i32 304}
!91 = distinct !{!91, !36}
!92 = !{!13, !11, i64 18436}
!93 = !{i32 0, i32 256}
!94 = distinct !{!94, !36}
!95 = distinct !{!95, !36}
!96 = distinct !{!96, !36}
!97 = distinct !{!97, !36}
!98 = distinct !{!98, !36}
!99 = distinct !{!99, !36}
!100 = !{i32 0, i32 2}
