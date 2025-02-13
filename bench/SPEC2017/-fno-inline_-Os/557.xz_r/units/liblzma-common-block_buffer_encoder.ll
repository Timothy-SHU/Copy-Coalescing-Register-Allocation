; ModuleID = 'liblzma/common/block_buffer_encoder.c'
source_filename = "liblzma/common/block_buffer_encoder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.lzma_check_state = type { %union.anon, %union.anon.0 }
%union.anon = type { [8 x i64] }
%union.anon.0 = type { %struct.anon }
%struct.anon = type { [8 x i32], i64 }
%struct.lzma_block = type { i32, i32, i32, i64, i64, ptr, [64 x i8], ptr, ptr, ptr, i32, i32, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.lzma_next_coder_s = type { ptr, i64, i64, ptr, ptr, ptr, ptr, ptr }
%struct.lzma_options_lzma = type { i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.lzma_filter = type { i64, ptr }

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local i64 @lzma_block_buffer_bound(i64 noundef %0) local_unnamed_addr #0 !prof !34 {
  %2 = tail call fastcc i64 @lzma2_bound(i64 noundef %0) #7, !range !35
  %3 = icmp eq i64 %2, 0
  %4 = add nuw i64 %2, 3
  %5 = and i64 %4, -4
  %6 = add nuw i64 %5, 92
  %7 = select i1 %3, i64 0, i64 %6
  ret i64 %7
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i64 @lzma2_bound(i64 noundef %0) unnamed_addr #0 !prof !34 !PGOFuncName !36 {
  %2 = icmp ugt i64 %0, 9223372036854774716
  br i1 %2, label %12, label %3

3:                                                ; preds = %1
  %4 = add nuw i64 %0, 65535
  %5 = lshr i64 %4, 16
  %6 = mul nuw nsw i64 %5, 3
  %7 = sub nuw nsw i64 9223372036854774715, %6
  %8 = icmp ult i64 %7, %0
  %9 = add nuw nsw i64 %0, 1
  %10 = add nuw i64 %9, %6
  %11 = select i1 %8, i64 0, i64 %10
  br label %12

12:                                               ; preds = %1, %3
  %13 = phi i64 [ %11, %3 ], [ 0, %1 ]
  ret i64 %13
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @lzma_block_buffer_encode(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4, ptr noundef %5, i64 noundef %6) local_unnamed_addr #2 !prof !34 {
  %8 = alloca %struct.lzma_check_state, align 8
  %9 = icmp eq ptr %0, null
  br i1 %9, label %76, label %10

10:                                               ; preds = %7
  %11 = icmp eq ptr %2, null
  %12 = icmp ne i64 %3, 0
  %13 = and i1 %11, %12
  %14 = icmp eq ptr %4, null
  %15 = or i1 %13, %14
  %16 = icmp eq ptr %5, null
  %17 = or i1 %15, %16
  br i1 %17, label %76, label %18

18:                                               ; preds = %10
  %19 = load i64, ptr %5, align 8, !tbaa !37
  %20 = icmp ugt i64 %19, %6
  br i1 %20, label %76, label %21

21:                                               ; preds = %18
  %22 = load i32, ptr %0, align 8, !tbaa !41
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %76

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.lzma_block, ptr %0, i64 0, i32 2
  %26 = load i32, ptr %25, align 8, !tbaa !45
  %27 = icmp ugt i32 %26, 15
  br i1 %27, label %76, label %28

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.lzma_block, ptr %0, i64 0, i32 5
  %30 = load ptr, ptr %29, align 8, !tbaa !46
  %31 = icmp eq ptr %30, null
  br i1 %31, label %76, label %32

32:                                               ; preds = %28
  %33 = tail call zeroext i8 @lzma_check_is_supported(i32 noundef %26) #8
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %76, label %35

35:                                               ; preds = %32
  %36 = load i64, ptr %5, align 8, !tbaa !37
  %37 = sub i64 %6, %36
  %38 = and i64 %37, 3
  %39 = sub i64 %6, %38
  %40 = load i32, ptr %25, align 8, !tbaa !45
  %41 = tail call i32 @lzma_check_size(i32 noundef %40) #8
  %42 = zext i32 %41 to i64
  %43 = load i64, ptr %5, align 8, !tbaa !37
  %44 = sub i64 %39, %43
  %45 = icmp ugt i64 %44, %42
  br i1 %45, label %46, label %76

46:                                               ; preds = %35
  %47 = sub i64 %39, %42
  %48 = tail call fastcc i32 @block_encode_normal(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %4, ptr noundef nonnull %5, i64 noundef %47) #7
  switch i32 %48, label %76 [
    i32 0, label %52
    i32 10, label %49
  ]

49:                                               ; preds = %46
  %50 = tail call fastcc i32 @block_encode_uncompressed(ptr noundef nonnull %0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %4, ptr noundef nonnull %5, i64 noundef %47) #7, !range !47
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %76

52:                                               ; preds = %46, %49
  %53 = getelementptr inbounds %struct.lzma_block, ptr %0, i64 0, i32 3
  %54 = load i64, ptr %53, align 8, !tbaa !48
  %55 = and i64 %54, 3
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %59, %52
  %58 = icmp eq i32 %41, 0
  br i1 %58, label %76, label %67

59:                                               ; preds = %52, %59
  %60 = phi i64 [ %64, %59 ], [ %54, %52 ]
  %61 = load i64, ptr %5, align 8, !tbaa !37
  %62 = add i64 %61, 1
  store i64 %62, ptr %5, align 8, !tbaa !37
  %63 = getelementptr inbounds i8, ptr %4, i64 %61
  store i8 0, ptr %63, align 1, !tbaa !49
  %64 = add i64 %60, 1
  %65 = and i64 %64, 3
  %66 = icmp eq i64 %65, 0
  br i1 %66, label %57, label %59, !llvm.loop !50

67:                                               ; preds = %57
  call void @llvm.lifetime.start.p0(i64 104, ptr nonnull %8) #9
  %68 = load i32, ptr %25, align 8, !tbaa !45
  call void @lzma_check_init(ptr noundef nonnull %8, i32 noundef %68) #8
  %69 = load i32, ptr %25, align 8, !tbaa !45
  call void @lzma_check_update(ptr noundef nonnull %8, i32 noundef %69, ptr noundef %2, i64 noundef %3) #8
  %70 = load i32, ptr %25, align 8, !tbaa !45
  call void @lzma_check_finish(ptr noundef nonnull %8, i32 noundef %70) #8
  %71 = getelementptr inbounds %struct.lzma_block, ptr %0, i64 0, i32 6
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %71, ptr nonnull align 8 %8, i64 %42, i1 false)
  %72 = load i64, ptr %5, align 8, !tbaa !37
  %73 = getelementptr inbounds i8, ptr %4, i64 %72
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %73, ptr nonnull align 8 %8, i64 %42, i1 false)
  %74 = load i64, ptr %5, align 8, !tbaa !37
  %75 = add i64 %74, %42
  store i64 %75, ptr %5, align 8, !tbaa !37
  call void @llvm.lifetime.end.p0(i64 104, ptr nonnull %8) #9
  br label %76

76:                                               ; preds = %35, %57, %67, %46, %49, %32, %24, %28, %21, %7, %18, %10
  %77 = phi i32 [ 11, %10 ], [ 11, %18 ], [ 11, %7 ], [ 8, %21 ], [ 11, %28 ], [ 11, %24 ], [ 3, %32 ], [ 10, %35 ], [ %50, %49 ], [ %48, %46 ], [ 0, %67 ], [ 0, %57 ]
  ret i32 %77
}

; Function Attrs: optsize
declare zeroext i8 @lzma_check_is_supported(i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @lzma_check_size(i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @block_encode_normal(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4, ptr noundef %5, i64 noundef %6) unnamed_addr #2 !prof !34 !PGOFuncName !52 {
  %8 = alloca %struct.lzma_next_coder_s, align 8
  %9 = alloca i64, align 8
  %10 = tail call fastcc i64 @lzma2_bound(i64 noundef %3) #7, !range !35
  %11 = getelementptr inbounds %struct.lzma_block, ptr %0, i64 0, i32 3
  store i64 %10, ptr %11, align 8, !tbaa !48
  %12 = icmp eq i64 %10, 0
  br i1 %12, label %57, label %13

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.lzma_block, ptr %0, i64 0, i32 4
  store i64 %3, ptr %14, align 8, !tbaa !53
  %15 = tail call i32 @lzma_block_header_size(ptr noundef nonnull %0) #8
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %57

17:                                               ; preds = %13
  %18 = load i64, ptr %5, align 8, !tbaa !37
  %19 = sub i64 %6, %18
  %20 = getelementptr inbounds %struct.lzma_block, ptr %0, i64 0, i32 1
  %21 = load i32, ptr %20, align 4, !tbaa !54
  %22 = zext i32 %21 to i64
  %23 = icmp ugt i64 %19, %22
  br i1 %23, label %24, label %57

24:                                               ; preds = %17
  %25 = add i64 %18, %22
  store i64 %25, ptr %5, align 8, !tbaa !37
  %26 = load i64, ptr %11, align 8, !tbaa !48
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %8) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %8, i8 0, i64 64, i1 false)
  %27 = getelementptr inbounds %struct.lzma_next_coder_s, ptr %8, i64 0, i32 1
  store i64 -1, ptr %27, align 8
  %28 = getelementptr inbounds %struct.lzma_block, ptr %0, i64 0, i32 5
  %29 = load ptr, ptr %28, align 8, !tbaa !46
  %30 = call i32 @lzma_raw_encoder_init(ptr noundef nonnull %8, ptr noundef %1, ptr noundef %29) #8
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %41

32:                                               ; preds = %24
  %33 = sub i64 %6, %25
  %34 = icmp ugt i64 %33, %26
  %35 = add i64 %26, %25
  %36 = select i1 %34, i64 %35, i64 %6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #9
  store i64 0, ptr %9, align 8, !tbaa !37
  %37 = getelementptr inbounds %struct.lzma_next_coder_s, ptr %8, i64 0, i32 3
  %38 = load ptr, ptr %37, align 8, !tbaa !55
  %39 = load ptr, ptr %8, align 8, !tbaa !57
  %40 = call i32 %38(ptr noundef %39, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %9, i64 noundef %3, ptr noundef %4, ptr noundef nonnull %5, i64 noundef %36, i32 noundef 3) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #9
  br label %41

41:                                               ; preds = %32, %24
  %42 = phi i32 [ %40, %32 ], [ %30, %24 ]
  call void @lzma_next_end(ptr noundef nonnull %8, ptr noundef %1) #8
  switch i32 %42, label %53 [
    i32 1, label %43
    i32 0, label %52
  ]

43:                                               ; preds = %41
  %44 = load i64, ptr %5, align 8, !tbaa !37
  %45 = load i32, ptr %20, align 4, !tbaa !54
  %46 = zext i32 %45 to i64
  %47 = add i64 %18, %46
  %48 = sub i64 %44, %47
  store i64 %48, ptr %11, align 8, !tbaa !48
  %49 = getelementptr inbounds i8, ptr %4, i64 %18
  %50 = call i32 @lzma_block_header_encode(ptr noundef nonnull %0, ptr noundef %49) #8
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %55, label %53

52:                                               ; preds = %41
  br label %53

53:                                               ; preds = %41, %43, %52
  %54 = phi i32 [ 10, %52 ], [ 11, %43 ], [ %42, %41 ]
  store i64 %18, ptr %5, align 8, !tbaa !37
  br label %55

55:                                               ; preds = %43, %53
  %56 = phi i32 [ %54, %53 ], [ 0, %43 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %8) #9
  br label %57

57:                                               ; preds = %13, %17, %7, %55
  %58 = phi i32 [ %15, %13 ], [ %56, %55 ], [ 9, %7 ], [ 10, %17 ]
  ret i32 %58
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @block_encode_uncompressed(ptr noundef %0, ptr nocapture noundef readonly %1, i64 noundef %2, ptr noundef %3, ptr nocapture noundef %4, i64 noundef %5) unnamed_addr #2 !prof !34 !PGOFuncName !58 {
  %7 = alloca %struct.lzma_options_lzma, align 8
  %8 = alloca [2 x %struct.lzma_filter], align 16
  call void @llvm.lifetime.start.p0(i64 112, ptr nonnull %7) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %7, i8 0, i64 112, i1 false)
  store i32 4096, ptr %7, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %8) #9
  store i64 33, ptr %8, align 16, !tbaa !59
  %9 = getelementptr inbounds %struct.lzma_filter, ptr %8, i64 0, i32 1
  store ptr %7, ptr %9, align 8, !tbaa !61
  %10 = getelementptr inbounds [2 x %struct.lzma_filter], ptr %8, i64 0, i64 1
  store i64 -1, ptr %10, align 16, !tbaa !59
  %11 = getelementptr inbounds %struct.lzma_block, ptr %0, i64 0, i32 5
  %12 = load ptr, ptr %11, align 8, !tbaa !46
  store ptr %8, ptr %11, align 8, !tbaa !46
  %13 = call i32 @lzma_block_header_size(ptr noundef %0) #8
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %6
  store ptr %12, ptr %11, align 8, !tbaa !46
  br label %66

16:                                               ; preds = %6
  %17 = load i64, ptr %4, align 8, !tbaa !37
  %18 = sub i64 %5, %17
  %19 = getelementptr inbounds %struct.lzma_block, ptr %0, i64 0, i32 1
  %20 = load i32, ptr %19, align 4, !tbaa !54
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds %struct.lzma_block, ptr %0, i64 0, i32 3
  %23 = load i64, ptr %22, align 8, !tbaa !48
  %24 = add i64 %23, %21
  %25 = icmp ult i64 %18, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %16
  store ptr %12, ptr %11, align 8, !tbaa !46
  br label %66

27:                                               ; preds = %16
  %28 = getelementptr inbounds i8, ptr %3, i64 %17
  %29 = call i32 @lzma_block_header_encode(ptr noundef nonnull %0, ptr noundef %28) #8
  %30 = icmp eq i32 %29, 0
  store ptr %12, ptr %11, align 8, !tbaa !46
  br i1 %30, label %31, label %66

31:                                               ; preds = %27
  %32 = load i32, ptr %19, align 4, !tbaa !54
  %33 = zext i32 %32 to i64
  %34 = load i64, ptr %4, align 8, !tbaa !37
  %35 = add i64 %34, %33
  %36 = icmp eq i64 %2, 0
  br i1 %36, label %62, label %37

37:                                               ; preds = %31, %37
  %38 = phi i8 [ 2, %37 ], [ 1, %31 ]
  %39 = phi i64 [ %58, %37 ], [ 0, %31 ]
  %40 = phi i64 [ %60, %37 ], [ %35, %31 ]
  %41 = add i64 %40, 1
  store i64 %41, ptr %4, align 8, !tbaa !37
  %42 = getelementptr inbounds i8, ptr %3, i64 %40
  store i8 %38, ptr %42, align 1, !tbaa !49
  %43 = sub i64 %2, %39
  %44 = call i64 @llvm.umin.i64(i64 %43, i64 65536)
  %45 = add nsw i64 %44, -1
  %46 = lshr i64 %45, 8
  %47 = trunc i64 %46 to i8
  %48 = load i64, ptr %4, align 8, !tbaa !37
  %49 = add i64 %48, 1
  store i64 %49, ptr %4, align 8, !tbaa !37
  %50 = getelementptr inbounds i8, ptr %3, i64 %48
  store i8 %47, ptr %50, align 1, !tbaa !49
  %51 = trunc i64 %45 to i8
  %52 = load i64, ptr %4, align 8, !tbaa !37
  %53 = add i64 %52, 1
  store i64 %53, ptr %4, align 8, !tbaa !37
  %54 = getelementptr inbounds i8, ptr %3, i64 %52
  store i8 %51, ptr %54, align 1, !tbaa !49
  %55 = load i64, ptr %4, align 8, !tbaa !37
  %56 = getelementptr inbounds i8, ptr %3, i64 %55
  %57 = getelementptr inbounds i8, ptr %1, i64 %39
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %56, ptr align 1 %57, i64 %44, i1 false)
  %58 = add i64 %44, %39
  %59 = load i64, ptr %4, align 8, !tbaa !37
  %60 = add i64 %59, %44
  store i64 %60, ptr %4, align 8, !tbaa !37
  %61 = icmp ult i64 %58, %2
  br i1 %61, label %37, label %62, !llvm.loop !62

62:                                               ; preds = %37, %31
  %63 = phi i64 [ %35, %31 ], [ %60, %37 ]
  %64 = add i64 %63, 1
  store i64 %64, ptr %4, align 8, !tbaa !37
  %65 = getelementptr inbounds i8, ptr %3, i64 %63
  store i8 0, ptr %65, align 1, !tbaa !49
  br label %66

66:                                               ; preds = %27, %62, %26, %15
  %67 = phi i32 [ 11, %15 ], [ 10, %26 ], [ 0, %62 ], [ 11, %27 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %8) #9
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %7) #9
  ret i32 %67
}

; Function Attrs: optsize
declare void @lzma_check_init(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @lzma_check_update(ptr noundef, i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @lzma_check_finish(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: optsize
declare i32 @lzma_block_header_size(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: optsize
declare i32 @lzma_raw_encoder_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @lzma_next_end(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @lzma_block_header_encode(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #6

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { optsize }
attributes #8 = { nounwind optsize }
attributes #9 = { nounwind }

!llvm.module.flags = !{!0, !29, !30, !31, !32}
!llvm.ident = !{!33}

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
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!"function_entry_count", i64 0}
!35 = !{i64 0, i64 -9222949824389710915}
!36 = !{!"block_buffer_encoder.c:lzma2_bound"}
!37 = !{!38, !38, i64 0}
!38 = !{!"long", !39, i64 0}
!39 = !{!"omnipotent char", !40, i64 0}
!40 = !{!"Simple C/C++ TBAA"}
!41 = !{!42, !43, i64 0}
!42 = !{!"", !43, i64 0, !43, i64 4, !43, i64 8, !38, i64 16, !38, i64 24, !44, i64 32, !39, i64 40, !44, i64 104, !44, i64 112, !44, i64 120, !43, i64 128, !43, i64 132, !38, i64 136, !38, i64 144, !38, i64 152, !38, i64 160, !38, i64 168, !38, i64 176, !43, i64 184, !43, i64 188, !43, i64 192, !43, i64 196, !39, i64 200, !39, i64 201, !39, i64 202, !39, i64 203, !39, i64 204, !39, i64 205, !39, i64 206, !39, i64 207}
!43 = !{!"int", !39, i64 0}
!44 = !{!"any pointer", !39, i64 0}
!45 = !{!42, !43, i64 8}
!46 = !{!42, !44, i64 32}
!47 = !{i32 0, i32 12}
!48 = !{!42, !38, i64 16}
!49 = !{!39, !39, i64 0}
!50 = distinct !{!50, !51}
!51 = !{!"llvm.loop.mustprogress"}
!52 = !{!"block_buffer_encoder.c:block_encode_normal"}
!53 = !{!42, !38, i64 24}
!54 = !{!42, !43, i64 4}
!55 = !{!56, !44, i64 24}
!56 = !{!"lzma_next_coder_s", !44, i64 0, !38, i64 8, !38, i64 16, !44, i64 24, !44, i64 32, !44, i64 40, !44, i64 48, !44, i64 56}
!57 = !{!56, !44, i64 0}
!58 = !{!"block_buffer_encoder.c:block_encode_uncompressed"}
!59 = !{!60, !38, i64 0}
!60 = !{!"", !38, i64 0, !44, i64 8}
!61 = !{!60, !44, i64 8}
!62 = distinct !{!62, !51}
