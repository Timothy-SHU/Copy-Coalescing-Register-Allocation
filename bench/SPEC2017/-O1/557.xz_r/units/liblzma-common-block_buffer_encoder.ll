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

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i64 @lzma_block_buffer_bound(i64 noundef %0) local_unnamed_addr #0 !prof !34 {
  %2 = icmp ugt i64 %0, 9223372036854774716
  br i1 %2, label %12, label %3

3:                                                ; preds = %1
  %4 = add nuw i64 %0, 65535
  %5 = lshr i64 %4, 16
  %6 = mul nuw nsw i64 %5, 3
  %7 = sub nuw nsw i64 9223372036854774715, %6
  %8 = icmp ult i64 %7, %0
  %9 = add nuw i64 %0, 1
  %10 = add nuw i64 %9, %6
  %11 = select i1 %8, i64 0, i64 %10
  br label %12

12:                                               ; preds = %1, %3
  %13 = phi i64 [ %11, %3 ], [ 0, %1 ]
  %14 = icmp eq i64 %13, 0
  %15 = add nuw i64 %13, 3
  %16 = and i64 %15, -4
  %17 = add nuw i64 %16, 92
  %18 = select i1 %14, i64 0, i64 %17
  ret i64 %18
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold nounwind uwtable
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
  %19 = load i64, ptr %5, align 8, !tbaa !35
  %20 = icmp ugt i64 %19, %6
  br i1 %20, label %76, label %21

21:                                               ; preds = %18
  %22 = load i32, ptr %0, align 8, !tbaa !39
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %76

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.lzma_block, ptr %0, i64 0, i32 2
  %26 = load i32, ptr %25, align 8, !tbaa !43
  %27 = icmp ugt i32 %26, 15
  br i1 %27, label %76, label %28

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.lzma_block, ptr %0, i64 0, i32 5
  %30 = load ptr, ptr %29, align 8, !tbaa !44
  %31 = icmp eq ptr %30, null
  br i1 %31, label %76, label %32

32:                                               ; preds = %28
  %33 = tail call zeroext i8 @lzma_check_is_supported(i32 noundef %26) #7
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %76, label %35

35:                                               ; preds = %32
  %36 = load i64, ptr %5, align 8, !tbaa !35
  %37 = sub i64 %6, %36
  %38 = and i64 %37, 3
  %39 = sub i64 %6, %38
  %40 = load i32, ptr %25, align 8, !tbaa !43
  %41 = tail call i32 @lzma_check_size(i32 noundef %40) #7
  %42 = zext i32 %41 to i64
  %43 = load i64, ptr %5, align 8, !tbaa !35
  %44 = sub i64 %39, %43
  %45 = icmp ugt i64 %44, %42
  br i1 %45, label %46, label %76

46:                                               ; preds = %35
  %47 = sub i64 %39, %42
  %48 = tail call fastcc i32 @block_encode_normal(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4, ptr noundef nonnull %5, i64 noundef %47)
  switch i32 %48, label %76 [
    i32 0, label %52
    i32 10, label %49
  ]

49:                                               ; preds = %46
  %50 = tail call fastcc i32 @block_encode_uncompressed(ptr noundef nonnull %0, ptr noundef %2, i64 noundef %3, ptr noundef %4, ptr noundef nonnull %5, i64 noundef %47), !range !45
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %76

52:                                               ; preds = %49, %46
  %53 = getelementptr inbounds %struct.lzma_block, ptr %0, i64 0, i32 3
  %54 = load i64, ptr %53, align 8, !tbaa !46
  %55 = and i64 %54, 3
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %59, %52
  %58 = icmp eq i32 %41, 0
  br i1 %58, label %76, label %67

59:                                               ; preds = %52, %59
  %60 = phi i64 [ %64, %59 ], [ %54, %52 ]
  %61 = load i64, ptr %5, align 8, !tbaa !35
  %62 = add i64 %61, 1
  store i64 %62, ptr %5, align 8, !tbaa !35
  %63 = getelementptr inbounds i8, ptr %4, i64 %61
  store i8 0, ptr %63, align 1, !tbaa !47
  %64 = add i64 %60, 1
  %65 = and i64 %64, 3
  %66 = icmp eq i64 %65, 0
  br i1 %66, label %57, label %59, !llvm.loop !48

67:                                               ; preds = %57
  call void @llvm.lifetime.start.p0(i64 104, ptr nonnull %8) #7
  %68 = load i32, ptr %25, align 8, !tbaa !43
  call void @lzma_check_init(ptr noundef nonnull %8, i32 noundef %68) #7
  %69 = load i32, ptr %25, align 8, !tbaa !43
  call void @lzma_check_update(ptr noundef nonnull %8, i32 noundef %69, ptr noundef %2, i64 noundef %3) #7
  %70 = load i32, ptr %25, align 8, !tbaa !43
  call void @lzma_check_finish(ptr noundef nonnull %8, i32 noundef %70) #7
  %71 = getelementptr inbounds %struct.lzma_block, ptr %0, i64 0, i32 6
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %71, ptr nonnull align 8 %8, i64 %42, i1 false)
  %72 = load i64, ptr %5, align 8, !tbaa !35
  %73 = getelementptr inbounds i8, ptr %4, i64 %72
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %73, ptr nonnull align 8 %8, i64 %42, i1 false)
  %74 = load i64, ptr %5, align 8, !tbaa !35
  %75 = add i64 %74, %42
  store i64 %75, ptr %5, align 8, !tbaa !35
  call void @llvm.lifetime.end.p0(i64 104, ptr nonnull %8) #7
  br label %76

76:                                               ; preds = %35, %57, %67, %46, %49, %32, %24, %28, %21, %7, %18, %10
  %77 = phi i32 [ 11, %10 ], [ 11, %18 ], [ 11, %7 ], [ 8, %21 ], [ 11, %28 ], [ 11, %24 ], [ 3, %32 ], [ 10, %35 ], [ %50, %49 ], [ %48, %46 ], [ 0, %67 ], [ 0, %57 ]
  ret i32 %77
}

declare zeroext i8 @lzma_check_is_supported(i32 noundef) local_unnamed_addr #3

declare i32 @lzma_check_size(i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc i32 @block_encode_normal(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4, ptr noundef %5, i64 noundef %6) unnamed_addr #2 !prof !34 {
  %8 = alloca %struct.lzma_next_coder_s, align 8
  %9 = alloca i64, align 8
  %10 = icmp ugt i64 %3, 9223372036854774716
  br i1 %10, label %20, label %11

11:                                               ; preds = %7
  %12 = add nuw i64 %3, 65535
  %13 = lshr i64 %12, 16
  %14 = mul nuw nsw i64 %13, 3
  %15 = sub nuw nsw i64 9223372036854774715, %14
  %16 = icmp ult i64 %15, %3
  %17 = add nuw i64 %3, 1
  %18 = add nuw i64 %17, %14
  %19 = select i1 %16, i64 0, i64 %18
  br label %20

20:                                               ; preds = %7, %11
  %21 = phi i64 [ %19, %11 ], [ 0, %7 ]
  %22 = getelementptr inbounds %struct.lzma_block, ptr %0, i64 0, i32 3
  store i64 %21, ptr %22, align 8, !tbaa !46
  %23 = icmp eq i64 %21, 0
  br i1 %23, label %73, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.lzma_block, ptr %0, i64 0, i32 4
  store i64 %3, ptr %25, align 8, !tbaa !51
  %26 = tail call i32 @lzma_block_header_size(ptr noundef %0) #7
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %73

28:                                               ; preds = %24
  %29 = load i64, ptr %5, align 8, !tbaa !35
  %30 = sub i64 %6, %29
  %31 = getelementptr inbounds %struct.lzma_block, ptr %0, i64 0, i32 1
  %32 = load i32, ptr %31, align 4, !tbaa !52
  %33 = zext i32 %32 to i64
  %34 = icmp ugt i64 %30, %33
  br i1 %34, label %35, label %73

35:                                               ; preds = %28
  %36 = add i64 %29, %33
  store i64 %36, ptr %5, align 8, !tbaa !35
  %37 = load i64, ptr %22, align 8, !tbaa !46
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %8) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %8, i8 0, i64 64, i1 false)
  %38 = getelementptr inbounds %struct.lzma_next_coder_s, ptr %8, i64 0, i32 1
  store i64 -1, ptr %38, align 8
  %39 = getelementptr inbounds %struct.lzma_block, ptr %0, i64 0, i32 5
  %40 = load ptr, ptr %39, align 8, !tbaa !44
  %41 = call i32 @lzma_raw_encoder_init(ptr noundef nonnull %8, ptr noundef %1, ptr noundef %40) #7
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %52

43:                                               ; preds = %35
  %44 = sub i64 %6, %36
  %45 = icmp ugt i64 %44, %37
  %46 = add i64 %37, %36
  %47 = select i1 %45, i64 %46, i64 %6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #7
  store i64 0, ptr %9, align 8, !tbaa !35
  %48 = getelementptr inbounds %struct.lzma_next_coder_s, ptr %8, i64 0, i32 3
  %49 = load ptr, ptr %48, align 8, !tbaa !53
  %50 = load ptr, ptr %8, align 8, !tbaa !55
  %51 = call i32 %49(ptr noundef %50, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %9, i64 noundef %3, ptr noundef %4, ptr noundef nonnull %5, i64 noundef %47, i32 noundef 3) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #7
  br label %52

52:                                               ; preds = %43, %35
  %53 = phi i32 [ %51, %43 ], [ %41, %35 ]
  call void @lzma_next_end(ptr noundef nonnull %8, ptr noundef %1) #7
  %54 = icmp eq i32 %53, 1
  br i1 %54, label %55, label %65

55:                                               ; preds = %52
  %56 = load i64, ptr %5, align 8, !tbaa !35
  %57 = load i32, ptr %31, align 4, !tbaa !52
  %58 = zext i32 %57 to i64
  %59 = add i64 %29, %58
  %60 = sub i64 %56, %59
  store i64 %60, ptr %22, align 8, !tbaa !46
  %61 = getelementptr inbounds i8, ptr %4, i64 %29
  %62 = call i32 @lzma_block_header_encode(ptr noundef %0, ptr noundef %61) #7
  %63 = icmp eq i32 %62, 0
  %64 = select i1 %63, i32 0, i32 11
  br label %68

65:                                               ; preds = %52
  %66 = icmp eq i32 %53, 0
  %67 = select i1 %66, i32 10, i32 %53
  br label %68

68:                                               ; preds = %65, %55
  %69 = phi i32 [ %64, %55 ], [ %67, %65 ]
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %72, label %71

71:                                               ; preds = %68
  store i64 %29, ptr %5, align 8, !tbaa !35
  br label %72

72:                                               ; preds = %71, %68
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %8) #7
  br label %73

73:                                               ; preds = %24, %28, %20, %72
  %74 = phi i32 [ %26, %24 ], [ %69, %72 ], [ 9, %20 ], [ 10, %28 ]
  ret i32 %74
}

; Function Attrs: cold nounwind uwtable
define internal fastcc noundef i32 @block_encode_uncompressed(ptr noundef %0, ptr nocapture noundef readonly %1, i64 noundef %2, ptr noundef %3, ptr nocapture noundef %4, i64 noundef %5) unnamed_addr #2 !prof !34 {
  %7 = alloca %struct.lzma_options_lzma, align 8
  %8 = alloca [2 x %struct.lzma_filter], align 16
  call void @llvm.lifetime.start.p0(i64 112, ptr nonnull %7) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %7, i8 0, i64 112, i1 false)
  store i32 4096, ptr %7, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %8) #7
  store i64 33, ptr %8, align 16, !tbaa !56
  %9 = getelementptr inbounds %struct.lzma_filter, ptr %8, i64 0, i32 1
  store ptr %7, ptr %9, align 8, !tbaa !58
  %10 = getelementptr inbounds [2 x %struct.lzma_filter], ptr %8, i64 0, i64 1
  store i64 -1, ptr %10, align 16, !tbaa !56
  %11 = getelementptr inbounds %struct.lzma_block, ptr %0, i64 0, i32 5
  %12 = load ptr, ptr %11, align 8, !tbaa !44
  store ptr %8, ptr %11, align 8, !tbaa !44
  %13 = call i32 @lzma_block_header_size(ptr noundef %0) #7
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %6
  store ptr %12, ptr %11, align 8, !tbaa !44
  br label %66

16:                                               ; preds = %6
  %17 = load i64, ptr %4, align 8, !tbaa !35
  %18 = sub i64 %5, %17
  %19 = getelementptr inbounds %struct.lzma_block, ptr %0, i64 0, i32 1
  %20 = load i32, ptr %19, align 4, !tbaa !52
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds %struct.lzma_block, ptr %0, i64 0, i32 3
  %23 = load i64, ptr %22, align 8, !tbaa !46
  %24 = add i64 %23, %21
  %25 = icmp ult i64 %18, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %16
  store ptr %12, ptr %11, align 8, !tbaa !44
  br label %66

27:                                               ; preds = %16
  %28 = getelementptr inbounds i8, ptr %3, i64 %17
  %29 = call i32 @lzma_block_header_encode(ptr noundef %0, ptr noundef %28) #7
  %30 = icmp eq i32 %29, 0
  store ptr %12, ptr %11, align 8, !tbaa !44
  br i1 %30, label %31, label %66

31:                                               ; preds = %27
  %32 = load i32, ptr %19, align 4, !tbaa !52
  %33 = zext i32 %32 to i64
  %34 = load i64, ptr %4, align 8, !tbaa !35
  %35 = add i64 %34, %33
  store i64 %35, ptr %4, align 8, !tbaa !35
  %36 = icmp eq i64 %2, 0
  br i1 %36, label %62, label %37

37:                                               ; preds = %31, %37
  %38 = phi i8 [ 2, %37 ], [ 1, %31 ]
  %39 = phi i64 [ %58, %37 ], [ 0, %31 ]
  %40 = phi i64 [ %60, %37 ], [ %35, %31 ]
  %41 = add i64 %40, 1
  store i64 %41, ptr %4, align 8, !tbaa !35
  %42 = getelementptr inbounds i8, ptr %3, i64 %40
  store i8 %38, ptr %42, align 1, !tbaa !47
  %43 = sub i64 %2, %39
  %44 = call i64 @llvm.umin.i64(i64 %43, i64 65536)
  %45 = add nsw i64 %44, -1
  %46 = lshr i64 %45, 8
  %47 = trunc i64 %46 to i8
  %48 = load i64, ptr %4, align 8, !tbaa !35
  %49 = add i64 %48, 1
  store i64 %49, ptr %4, align 8, !tbaa !35
  %50 = getelementptr inbounds i8, ptr %3, i64 %48
  store i8 %47, ptr %50, align 1, !tbaa !47
  %51 = trunc i64 %45 to i8
  %52 = load i64, ptr %4, align 8, !tbaa !35
  %53 = add i64 %52, 1
  store i64 %53, ptr %4, align 8, !tbaa !35
  %54 = getelementptr inbounds i8, ptr %3, i64 %52
  store i8 %51, ptr %54, align 1, !tbaa !47
  %55 = load i64, ptr %4, align 8, !tbaa !35
  %56 = getelementptr inbounds i8, ptr %3, i64 %55
  %57 = getelementptr inbounds i8, ptr %1, i64 %39
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %56, ptr align 1 %57, i64 %44, i1 false)
  %58 = add i64 %44, %39
  %59 = load i64, ptr %4, align 8, !tbaa !35
  %60 = add i64 %59, %44
  store i64 %60, ptr %4, align 8, !tbaa !35
  %61 = icmp ult i64 %58, %2
  br i1 %61, label %37, label %62, !llvm.loop !59

62:                                               ; preds = %37, %31
  %63 = phi i64 [ %35, %31 ], [ %60, %37 ]
  %64 = add i64 %63, 1
  store i64 %64, ptr %4, align 8, !tbaa !35
  %65 = getelementptr inbounds i8, ptr %3, i64 %63
  store i8 0, ptr %65, align 1, !tbaa !47
  br label %66

66:                                               ; preds = %27, %62, %26, %15
  %67 = phi i32 [ 11, %15 ], [ 10, %26 ], [ 0, %62 ], [ 11, %27 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %8) #7
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %7) #7
  ret i32 %67
}

declare void @lzma_check_init(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @lzma_check_update(ptr noundef, i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare void @lzma_check_finish(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

declare i32 @lzma_block_header_size(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

declare i32 @lzma_raw_encoder_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @lzma_next_end(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @lzma_block_header_encode(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #6

attributes #0 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!33}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 1, !"ProfileSummary", !5}
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15}
!6 = !{!"ProfileFormat", !"InstrProf"}
!7 = !{!"TotalCount", i64 47149273342}
!8 = !{!"MaxCount", i64 6329676010}
!9 = !{!"MaxInternalCount", i64 6329676010}
!10 = !{!"MaxFunctionCount", i64 1717654358}
!11 = !{!"NumCounts", i64 2810}
!12 = !{!"NumFunctions", i64 379}
!13 = !{!"IsPartialProfile", i64 0}
!14 = !{!"PartialProfileRatio", double 0.000000e+00}
!15 = !{!"DetailedSummary", !16}
!16 = !{!17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32}
!17 = !{i32 10000, i64 6329676010, i32 1}
!18 = !{i32 100000, i64 6329676010, i32 1}
!19 = !{i32 200000, i64 5133904873, i32 2}
!20 = !{i32 300000, i64 1880543368, i32 4}
!21 = !{i32 400000, i64 1717654358, i32 6}
!22 = !{i32 500000, i64 1179118894, i32 9}
!23 = !{i32 600000, i64 845267354, i32 14}
!24 = !{i32 700000, i64 611059789, i32 20}
!25 = !{i32 800000, i64 289033984, i32 32}
!26 = !{i32 900000, i64 144512423, i32 55}
!27 = !{i32 950000, i64 47630439, i32 82}
!28 = !{i32 990000, i64 5873050, i32 171}
!29 = !{i32 999000, i64 869247, i32 334}
!30 = !{i32 999900, i64 80863, i32 461}
!31 = !{i32 999990, i64 32025, i32 533}
!32 = !{i32 999999, i64 3325, i32 567}
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!"function_entry_count", i64 0}
!35 = !{!36, !36, i64 0}
!36 = !{!"long", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!40, !41, i64 0}
!40 = !{!"", !41, i64 0, !41, i64 4, !41, i64 8, !36, i64 16, !36, i64 24, !42, i64 32, !37, i64 40, !42, i64 104, !42, i64 112, !42, i64 120, !41, i64 128, !41, i64 132, !36, i64 136, !36, i64 144, !36, i64 152, !36, i64 160, !36, i64 168, !36, i64 176, !41, i64 184, !41, i64 188, !41, i64 192, !41, i64 196, !37, i64 200, !37, i64 201, !37, i64 202, !37, i64 203, !37, i64 204, !37, i64 205, !37, i64 206, !37, i64 207}
!41 = !{!"int", !37, i64 0}
!42 = !{!"any pointer", !37, i64 0}
!43 = !{!40, !41, i64 8}
!44 = !{!40, !42, i64 32}
!45 = !{i32 0, i32 12}
!46 = !{!40, !36, i64 16}
!47 = !{!37, !37, i64 0}
!48 = distinct !{!48, !49, !50}
!49 = !{!"llvm.loop.mustprogress"}
!50 = !{!"llvm.loop.unroll.disable"}
!51 = !{!40, !36, i64 24}
!52 = !{!40, !41, i64 4}
!53 = !{!54, !42, i64 24}
!54 = !{!"lzma_next_coder_s", !42, i64 0, !36, i64 8, !36, i64 16, !42, i64 24, !42, i64 32, !42, i64 40, !42, i64 48, !42, i64 56}
!55 = !{!54, !42, i64 0}
!56 = !{!57, !36, i64 0}
!57 = !{!"", !36, i64 0, !42, i64 8}
!58 = !{!57, !42, i64 8}
!59 = distinct !{!59, !49, !50}
