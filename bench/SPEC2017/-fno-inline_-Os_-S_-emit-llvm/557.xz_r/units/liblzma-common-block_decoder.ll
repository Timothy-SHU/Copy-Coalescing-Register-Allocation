; ModuleID = 'liblzma/common/block_decoder.c'
source_filename = "liblzma/common/block_decoder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.lzma_next_coder_s = type { ptr, i64, i64, ptr, ptr, ptr, ptr, ptr }
%struct.lzma_block = type { i32, i32, i32, i64, i64, ptr, [64 x i8], ptr, ptr, ptr, i32, i32, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.lzma_coder_s = type { i32, %struct.lzma_next_coder_s, ptr, i64, i64, i64, i64, %struct.lzma_check_state }
%struct.lzma_check_state = type { %union.anon, %union.anon.0 }
%union.anon = type { [8 x i64] }
%union.anon.0 = type { %struct.anon }
%struct.anon = type { [8 x i32], i64 }
%struct.lzma_stream = type { ptr, i64, i64, ptr, i64, i64, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, i64, i64, i32, i32 }
%struct.lzma_internal_s = type { %struct.lzma_next_coder_s, i32, i64, [4 x i8], i8 }

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @lzma_block_decoder_init(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.lzma_next_coder_s, ptr %0, i64 0, i32 2
  %5 = load i64, ptr %4, align 8, !tbaa !5
  %6 = icmp eq i64 %5, ptrtoint (ptr @lzma_block_decoder_init to i64)
  br i1 %6, label %8, label %7

7:                                                ; preds = %3
  tail call void @lzma_next_end(ptr noundef nonnull %0, ptr noundef %1) #7
  br label %8

8:                                                ; preds = %7, %3
  store i64 ptrtoint (ptr @lzma_block_decoder_init to i64), ptr %4, align 8, !tbaa !5
  %9 = tail call i64 @lzma_block_unpadded_size(ptr noundef %2) #7
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %59, label %11

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.lzma_block, ptr %2, i64 0, i32 4
  %13 = load i64, ptr %12, align 8, !tbaa !11
  %14 = icmp sgt i64 %13, -2
  br i1 %14, label %15, label %59

15:                                               ; preds = %11
  %16 = load ptr, ptr %0, align 8, !tbaa !14
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %28

18:                                               ; preds = %15
  %19 = tail call ptr @lzma_alloc(i64 noundef 216, ptr noundef %1) #7
  store ptr %19, ptr %0, align 8, !tbaa !14
  %20 = icmp eq ptr %19, null
  br i1 %20, label %59, label %21

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.lzma_next_coder_s, ptr %0, i64 0, i32 3
  store ptr @block_decode, ptr %22, align 8, !tbaa !15
  %23 = getelementptr inbounds %struct.lzma_next_coder_s, ptr %0, i64 0, i32 4
  store ptr @block_decoder_end, ptr %23, align 8, !tbaa !16
  %24 = getelementptr inbounds %struct.lzma_coder_s, ptr %19, i64 0, i32 1
  store ptr null, ptr %24, align 8, !tbaa.struct !17
  %25 = getelementptr inbounds %struct.lzma_coder_s, ptr %19, i64 0, i32 1, i32 1
  store i64 -1, ptr %25, align 8, !tbaa.struct !20
  %26 = getelementptr inbounds %struct.lzma_coder_s, ptr %19, i64 0, i32 1, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %26, i8 0, i64 48, i1 false)
  %27 = load ptr, ptr %0, align 8, !tbaa !14
  br label %28

28:                                               ; preds = %21, %15
  %29 = phi ptr [ %27, %21 ], [ %16, %15 ]
  store i32 0, ptr %29, align 8, !tbaa !21
  %30 = getelementptr inbounds %struct.lzma_coder_s, ptr %29, i64 0, i32 2
  store ptr %2, ptr %30, align 8, !tbaa !24
  %31 = getelementptr inbounds %struct.lzma_coder_s, ptr %29, i64 0, i32 3
  %32 = getelementptr inbounds %struct.lzma_block, ptr %2, i64 0, i32 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %31, i8 0, i64 16, i1 false)
  %33 = load i64, ptr %32, align 8, !tbaa !25
  %34 = icmp eq i64 %33, -1
  br i1 %34, label %35, label %46

35:                                               ; preds = %28
  %36 = getelementptr inbounds %struct.lzma_block, ptr %2, i64 0, i32 1
  %37 = load i32, ptr %36, align 4, !tbaa !26
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds %struct.lzma_block, ptr %2, i64 0, i32 2
  %40 = load i32, ptr %39, align 8, !tbaa !27
  %41 = tail call i32 @lzma_check_size(i32 noundef %40) #7
  %42 = zext i32 %41 to i64
  %43 = add nuw nsw i64 %38, %42
  %44 = sub nuw nsw i64 9223372036854775804, %43
  %45 = load ptr, ptr %0, align 8, !tbaa !14
  br label %46

46:                                               ; preds = %28, %35
  %47 = phi ptr [ %45, %35 ], [ %29, %28 ]
  %48 = phi i64 [ %44, %35 ], [ %33, %28 ]
  %49 = getelementptr inbounds %struct.lzma_coder_s, ptr %47, i64 0, i32 5
  store i64 %48, ptr %49, align 8, !tbaa !28
  %50 = getelementptr inbounds %struct.lzma_coder_s, ptr %47, i64 0, i32 6
  store i64 0, ptr %50, align 8, !tbaa !29
  %51 = getelementptr inbounds %struct.lzma_coder_s, ptr %47, i64 0, i32 7
  %52 = getelementptr inbounds %struct.lzma_block, ptr %2, i64 0, i32 2
  %53 = load i32, ptr %52, align 8, !tbaa !27
  tail call void @lzma_check_init(ptr noundef nonnull %51, i32 noundef %53) #7
  %54 = load ptr, ptr %0, align 8, !tbaa !14
  %55 = getelementptr inbounds %struct.lzma_coder_s, ptr %54, i64 0, i32 1
  %56 = getelementptr inbounds %struct.lzma_block, ptr %2, i64 0, i32 5
  %57 = load ptr, ptr %56, align 8, !tbaa !30
  %58 = tail call i32 @lzma_raw_decoder_init(ptr noundef nonnull %55, ptr noundef %1, ptr noundef %57) #7
  br label %59

59:                                               ; preds = %18, %8, %11, %46
  %60 = phi i32 [ %58, %46 ], [ 11, %11 ], [ 11, %8 ], [ 5, %18 ]
  ret i32 %60
}

; Function Attrs: optsize
declare void @lzma_next_end(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i64 @lzma_block_unpadded_size(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @lzma_alloc(i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @block_decode(ptr noundef %0, ptr noundef %1, ptr noalias noundef %2, ptr noalias noundef %3, i64 noundef %4, ptr noalias noundef %5, ptr noalias noundef %6, i64 noundef %7, i32 noundef %8) #0 {
  %10 = load i32, ptr %0, align 8, !tbaa !21
  switch i32 %10, label %106 [
    i32 0, label %14
    i32 1, label %11
    i32 2, label %80
  ]

11:                                               ; preds = %9
  %12 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 3
  %13 = load i64, ptr %12, align 8, !tbaa !31
  br label %56

14:                                               ; preds = %9
  %15 = load i64, ptr %3, align 8, !tbaa !19
  %16 = load i64, ptr %6, align 8, !tbaa !19
  %17 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 1
  %18 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 1, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !32
  %20 = load ptr, ptr %17, align 8, !tbaa !33
  %21 = tail call i32 %19(ptr noundef %20, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %3, i64 noundef %4, ptr noundef %5, ptr noundef nonnull %6, i64 noundef %7, i32 noundef %8) #7
  %22 = load i64, ptr %3, align 8, !tbaa !19
  %23 = sub i64 %22, %15
  %24 = load i64, ptr %6, align 8, !tbaa !19
  %25 = sub i64 %24, %16
  %26 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 3
  %27 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 5
  %28 = load i64, ptr %27, align 8, !tbaa !28
  %29 = tail call fastcc zeroext i1 @update_size(ptr noundef nonnull %26, i64 noundef %23, i64 noundef %28) #8
  br i1 %29, label %106, label %30

30:                                               ; preds = %14
  %31 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 4
  %32 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 2
  %33 = load ptr, ptr %32, align 8, !tbaa !24
  %34 = getelementptr inbounds %struct.lzma_block, ptr %33, i64 0, i32 4
  %35 = load i64, ptr %34, align 8, !tbaa !11
  %36 = tail call fastcc zeroext i1 @update_size(ptr noundef nonnull %31, i64 noundef %25, i64 noundef %35) #8
  br i1 %36, label %106, label %37

37:                                               ; preds = %30
  %38 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 7
  %39 = load ptr, ptr %32, align 8, !tbaa !24
  %40 = getelementptr inbounds %struct.lzma_block, ptr %39, i64 0, i32 2
  %41 = load i32, ptr %40, align 8, !tbaa !27
  %42 = getelementptr inbounds i8, ptr %5, i64 %16
  tail call void @lzma_check_update(ptr noundef nonnull %38, i32 noundef %41, ptr noundef %42, i64 noundef %25) #7
  %43 = icmp eq i32 %21, 1
  br i1 %43, label %44, label %106

44:                                               ; preds = %37
  %45 = load i64, ptr %26, align 8, !tbaa !31
  %46 = load ptr, ptr %32, align 8, !tbaa !24
  %47 = getelementptr inbounds %struct.lzma_block, ptr %46, i64 0, i32 3
  %48 = load i64, ptr %47, align 8, !tbaa !25
  %49 = tail call fastcc zeroext i1 @is_size_valid(i64 noundef %45, i64 noundef %48) #8
  br i1 %49, label %50, label %106

50:                                               ; preds = %44
  %51 = load i64, ptr %31, align 8, !tbaa !34
  %52 = getelementptr inbounds %struct.lzma_block, ptr %46, i64 0, i32 4
  %53 = load i64, ptr %52, align 8, !tbaa !11
  %54 = tail call fastcc zeroext i1 @is_size_valid(i64 noundef %51, i64 noundef %53) #8
  br i1 %54, label %55, label %106

55:                                               ; preds = %50
  store i64 %45, ptr %47, align 8, !tbaa !25
  store i64 %51, ptr %52, align 8, !tbaa !11
  store i32 1, ptr %0, align 8, !tbaa !21
  br label %56

56:                                               ; preds = %11, %55
  %57 = phi i64 [ %13, %11 ], [ %45, %55 ]
  %58 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 3
  br label %59

59:                                               ; preds = %66, %56
  %60 = phi i64 [ %67, %66 ], [ %57, %56 ]
  %61 = and i64 %60, 3
  %62 = icmp eq i64 %61, 0
  br i1 %62, label %72, label %63

63:                                               ; preds = %59
  %64 = load i64, ptr %3, align 8, !tbaa !19
  %65 = icmp ult i64 %64, %4
  br i1 %65, label %66, label %106

66:                                               ; preds = %63
  %67 = add i64 %60, 1
  store i64 %67, ptr %58, align 8, !tbaa !31
  %68 = add nuw i64 %64, 1
  store i64 %68, ptr %3, align 8, !tbaa !19
  %69 = getelementptr inbounds i8, ptr %2, i64 %64
  %70 = load i8, ptr %69, align 1, !tbaa !35
  %71 = icmp eq i8 %70, 0
  br i1 %71, label %59, label %106, !llvm.loop !36

72:                                               ; preds = %59
  %73 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 2
  %74 = load ptr, ptr %73, align 8, !tbaa !24
  %75 = getelementptr inbounds %struct.lzma_block, ptr %74, i64 0, i32 2
  %76 = load i32, ptr %75, align 8, !tbaa !27
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %106, label %78

78:                                               ; preds = %72
  %79 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 7
  tail call void @lzma_check_finish(ptr noundef nonnull %79, i32 noundef %76) #7
  store i32 2, ptr %0, align 8, !tbaa !21
  br label %80

80:                                               ; preds = %9, %78
  %81 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 2
  %82 = load ptr, ptr %81, align 8, !tbaa !24
  %83 = getelementptr inbounds %struct.lzma_block, ptr %82, i64 0, i32 2
  %84 = load i32, ptr %83, align 8, !tbaa !27
  %85 = tail call i32 @lzma_check_size(i32 noundef %84) #7
  %86 = zext i32 %85 to i64
  %87 = load ptr, ptr %81, align 8, !tbaa !24
  %88 = getelementptr inbounds %struct.lzma_block, ptr %87, i64 0, i32 6
  %89 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 6
  %90 = tail call i64 @lzma_bufcpy(ptr noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef nonnull %88, ptr noundef nonnull %89, i64 noundef %86) #7
  %91 = load i64, ptr %89, align 8, !tbaa !29
  %92 = icmp ult i64 %91, %86
  br i1 %92, label %106, label %93

93:                                               ; preds = %80
  %94 = load ptr, ptr %81, align 8, !tbaa !24
  %95 = getelementptr inbounds %struct.lzma_block, ptr %94, i64 0, i32 2
  %96 = load i32, ptr %95, align 8, !tbaa !27
  %97 = tail call zeroext i8 @lzma_check_is_supported(i32 noundef %96) #7
  %98 = icmp eq i8 %97, 0
  br i1 %98, label %105, label %99

99:                                               ; preds = %93
  %100 = load ptr, ptr %81, align 8, !tbaa !24
  %101 = getelementptr inbounds %struct.lzma_block, ptr %100, i64 0, i32 6
  %102 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 7
  %103 = tail call i32 @bcmp(ptr nonnull %101, ptr nonnull %102, i64 %86)
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %99, %93
  br label %106

106:                                              ; preds = %66, %63, %44, %50, %37, %14, %30, %9, %105, %80, %99, %72
  %107 = phi i32 [ 1, %72 ], [ 1, %105 ], [ 0, %80 ], [ 9, %99 ], [ 11, %9 ], [ 9, %44 ], [ 9, %50 ], [ %21, %37 ], [ 9, %14 ], [ 9, %30 ], [ 9, %66 ], [ 0, %63 ]
  ret i32 %107
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @block_decoder_end(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 1
  tail call void @lzma_next_end(ptr noundef nonnull %3, ptr noundef %1) #7
  tail call void @lzma_free(ptr noundef %0, ptr noundef %1) #7
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: optsize
declare i32 @lzma_check_size(i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @lzma_check_init(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @lzma_raw_decoder_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @lzma_block_decoder(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call i32 @lzma_strm_init(ptr noundef %0) #7
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %17

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.lzma_stream, ptr %0, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !38
  %8 = getelementptr inbounds %struct.lzma_stream, ptr %0, i64 0, i32 6
  %9 = load ptr, ptr %8, align 8, !tbaa !40
  %10 = tail call i32 @lzma_block_decoder_init(ptr noundef %7, ptr noundef %9, ptr noundef %1) #8
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %5
  tail call void @lzma_end(ptr noundef nonnull %0) #7
  br label %17

13:                                               ; preds = %5
  %14 = load ptr, ptr %6, align 8, !tbaa !38
  %15 = getelementptr inbounds %struct.lzma_internal_s, ptr %14, i64 0, i32 3
  store i8 1, ptr %15, align 8, !tbaa !41
  %16 = getelementptr inbounds %struct.lzma_internal_s, ptr %14, i64 0, i32 3, i64 3
  store i8 1, ptr %16, align 1, !tbaa !41
  br label %17

17:                                               ; preds = %12, %2, %13
  %18 = phi i32 [ %3, %2 ], [ %10, %12 ], [ 0, %13 ]
  ret i32 %18
}

; Function Attrs: optsize
declare i32 @lzma_strm_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @lzma_end(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef zeroext i1 @update_size(ptr nocapture noundef %0, i64 noundef %1, i64 noundef %2) unnamed_addr #3 {
  %4 = tail call i64 @llvm.umin.i64(i64 %2, i64 9223372036854775807)
  %5 = load i64, ptr %0, align 8, !tbaa !19
  %6 = icmp ult i64 %4, %5
  %7 = sub i64 %4, %5
  %8 = icmp ult i64 %7, %1
  %9 = or i1 %6, %8
  br i1 %9, label %12, label %10

10:                                               ; preds = %3
  %11 = add i64 %5, %1
  store i64 %11, ptr %0, align 8, !tbaa !19
  br label %12

12:                                               ; preds = %3, %10
  ret i1 %9
}

; Function Attrs: optsize
declare void @lzma_check_update(ptr noundef, i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef zeroext i1 @is_size_valid(i64 noundef %0, i64 noundef %1) unnamed_addr #4 {
  %3 = icmp eq i64 %1, -1
  %4 = icmp eq i64 %1, %0
  %5 = or i1 %3, %4
  ret i1 %5
}

; Function Attrs: optsize
declare void @lzma_check_finish(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i64 @lzma_bufcpy(ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare zeroext i8 @lzma_check_is_supported(i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @lzma_free(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #6

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind willreturn memory(argmem: read) }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind optsize }
attributes #8 = { optsize }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !10, i64 16}
!6 = !{!"lzma_next_coder_s", !7, i64 0, !10, i64 8, !10, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"long", !8, i64 0}
!11 = !{!12, !10, i64 24}
!12 = !{!"", !13, i64 0, !13, i64 4, !13, i64 8, !10, i64 16, !10, i64 24, !7, i64 32, !8, i64 40, !7, i64 104, !7, i64 112, !7, i64 120, !13, i64 128, !13, i64 132, !10, i64 136, !10, i64 144, !10, i64 152, !10, i64 160, !10, i64 168, !10, i64 176, !13, i64 184, !13, i64 188, !13, i64 192, !13, i64 196, !8, i64 200, !8, i64 201, !8, i64 202, !8, i64 203, !8, i64 204, !8, i64 205, !8, i64 206, !8, i64 207}
!13 = !{!"int", !8, i64 0}
!14 = !{!6, !7, i64 0}
!15 = !{!6, !7, i64 24}
!16 = !{!6, !7, i64 32}
!17 = !{i64 0, i64 8, !18, i64 8, i64 8, !19, i64 16, i64 8, !19, i64 24, i64 8, !18, i64 32, i64 8, !18, i64 40, i64 8, !18, i64 48, i64 8, !18, i64 56, i64 8, !18}
!18 = !{!7, !7, i64 0}
!19 = !{!10, !10, i64 0}
!20 = !{i64 0, i64 8, !19, i64 8, i64 8, !19, i64 16, i64 8, !18, i64 24, i64 8, !18, i64 32, i64 8, !18, i64 40, i64 8, !18, i64 48, i64 8, !18}
!21 = !{!22, !13, i64 0}
!22 = !{!"lzma_coder_s", !13, i64 0, !6, i64 8, !7, i64 72, !10, i64 80, !10, i64 88, !10, i64 96, !10, i64 104, !23, i64 112}
!23 = !{!"", !8, i64 0, !8, i64 64}
!24 = !{!22, !7, i64 72}
!25 = !{!12, !10, i64 16}
!26 = !{!12, !13, i64 4}
!27 = !{!12, !13, i64 8}
!28 = !{!22, !10, i64 96}
!29 = !{!22, !10, i64 104}
!30 = !{!12, !7, i64 32}
!31 = !{!22, !10, i64 80}
!32 = !{!22, !7, i64 32}
!33 = !{!22, !7, i64 8}
!34 = !{!22, !10, i64 88}
!35 = !{!8, !8, i64 0}
!36 = distinct !{!36, !37}
!37 = !{!"llvm.loop.mustprogress"}
!38 = !{!39, !7, i64 56}
!39 = !{!"", !7, i64 0, !10, i64 8, !10, i64 16, !7, i64 24, !10, i64 32, !10, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !7, i64 88, !10, i64 96, !10, i64 104, !10, i64 112, !10, i64 120, !13, i64 128, !13, i64 132}
!40 = !{!39, !7, i64 48}
!41 = !{!42, !42, i64 0}
!42 = !{!"_Bool", !8, i64 0}
