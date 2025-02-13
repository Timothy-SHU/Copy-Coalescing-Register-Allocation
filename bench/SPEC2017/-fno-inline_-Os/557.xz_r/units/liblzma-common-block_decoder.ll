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
define dso_local i32 @lzma_block_decoder_init(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 !prof !52 {
  %4 = getelementptr inbounds %struct.lzma_next_coder_s, ptr %0, i64 0, i32 2
  %5 = load i64, ptr %4, align 8, !tbaa !53
  %6 = icmp eq i64 %5, ptrtoint (ptr @lzma_block_decoder_init to i64)
  br i1 %6, label %8, label %7, !prof !59

7:                                                ; preds = %3
  tail call void @lzma_next_end(ptr noundef nonnull %0, ptr noundef %1) #7
  br label %8

8:                                                ; preds = %7, %3
  store i64 ptrtoint (ptr @lzma_block_decoder_init to i64), ptr %4, align 8, !tbaa !53
  %9 = tail call i64 @lzma_block_unpadded_size(ptr noundef %2) #7
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %59, label %11, !prof !59

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.lzma_block, ptr %2, i64 0, i32 4
  %13 = load i64, ptr %12, align 8, !tbaa !60
  %14 = icmp sgt i64 %13, -2
  br i1 %14, label %15, label %59, !prof !63

15:                                               ; preds = %11
  %16 = load ptr, ptr %0, align 8, !tbaa !64
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %28, !prof !65

18:                                               ; preds = %15
  %19 = tail call ptr @lzma_alloc(i64 noundef 216, ptr noundef %1) #7
  store ptr %19, ptr %0, align 8, !tbaa !64
  %20 = icmp eq ptr %19, null
  br i1 %20, label %59, label %21, !prof !59

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.lzma_next_coder_s, ptr %0, i64 0, i32 3
  store ptr @block_decode, ptr %22, align 8, !tbaa !66
  %23 = getelementptr inbounds %struct.lzma_next_coder_s, ptr %0, i64 0, i32 4
  store ptr @block_decoder_end, ptr %23, align 8, !tbaa !67
  %24 = getelementptr inbounds %struct.lzma_coder_s, ptr %19, i64 0, i32 1
  store ptr null, ptr %24, align 8, !tbaa.struct !68
  %25 = getelementptr inbounds %struct.lzma_coder_s, ptr %19, i64 0, i32 1, i32 1
  store i64 -1, ptr %25, align 8, !tbaa.struct !71
  %26 = getelementptr inbounds %struct.lzma_coder_s, ptr %19, i64 0, i32 1, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %26, i8 0, i64 48, i1 false)
  %27 = load ptr, ptr %0, align 8, !tbaa !64
  br label %28

28:                                               ; preds = %21, %15
  %29 = phi ptr [ %27, %21 ], [ %16, %15 ]
  store i32 0, ptr %29, align 8, !tbaa !72
  %30 = getelementptr inbounds %struct.lzma_coder_s, ptr %29, i64 0, i32 2
  store ptr %2, ptr %30, align 8, !tbaa !75
  %31 = getelementptr inbounds %struct.lzma_coder_s, ptr %29, i64 0, i32 3
  %32 = getelementptr inbounds %struct.lzma_block, ptr %2, i64 0, i32 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %31, i8 0, i64 16, i1 false)
  %33 = load i64, ptr %32, align 8, !tbaa !76
  %34 = icmp eq i64 %33, -1
  br i1 %34, label %35, label %46, !prof !65

35:                                               ; preds = %28
  %36 = getelementptr inbounds %struct.lzma_block, ptr %2, i64 0, i32 1
  %37 = load i32, ptr %36, align 4, !tbaa !77
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds %struct.lzma_block, ptr %2, i64 0, i32 2
  %40 = load i32, ptr %39, align 8, !tbaa !78
  %41 = tail call i32 @lzma_check_size(i32 noundef %40) #7
  %42 = zext i32 %41 to i64
  %43 = add nuw nsw i64 %38, %42
  %44 = sub nuw nsw i64 9223372036854775804, %43
  %45 = load ptr, ptr %0, align 8, !tbaa !64
  br label %46

46:                                               ; preds = %28, %35
  %47 = phi ptr [ %45, %35 ], [ %29, %28 ]
  %48 = phi i64 [ %44, %35 ], [ %33, %28 ]
  %49 = getelementptr inbounds %struct.lzma_coder_s, ptr %47, i64 0, i32 5
  store i64 %48, ptr %49, align 8, !tbaa !79
  %50 = getelementptr inbounds %struct.lzma_coder_s, ptr %47, i64 0, i32 6
  store i64 0, ptr %50, align 8, !tbaa !80
  %51 = getelementptr inbounds %struct.lzma_coder_s, ptr %47, i64 0, i32 7
  %52 = getelementptr inbounds %struct.lzma_block, ptr %2, i64 0, i32 2
  %53 = load i32, ptr %52, align 8, !tbaa !78
  tail call void @lzma_check_init(ptr noundef nonnull %51, i32 noundef %53) #7
  %54 = load ptr, ptr %0, align 8, !tbaa !64
  %55 = getelementptr inbounds %struct.lzma_coder_s, ptr %54, i64 0, i32 1
  %56 = getelementptr inbounds %struct.lzma_block, ptr %2, i64 0, i32 5
  %57 = load ptr, ptr %56, align 8, !tbaa !81
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
define internal i32 @block_decode(ptr noundef %0, ptr noundef %1, ptr noalias noundef %2, ptr noalias noundef %3, i64 noundef %4, ptr noalias noundef %5, ptr noalias noundef %6, i64 noundef %7, i32 noundef %8) #0 !prof !82 !PGOFuncName !83 {
  %10 = load i32, ptr %0, align 8, !tbaa !72
  switch i32 %10, label %106 [
    i32 0, label %14
    i32 1, label %11
    i32 2, label %80
  ], !prof !84

11:                                               ; preds = %9
  %12 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 3
  %13 = load i64, ptr %12, align 8, !tbaa !85
  br label %56

14:                                               ; preds = %9
  %15 = load i64, ptr %3, align 8, !tbaa !70
  %16 = load i64, ptr %6, align 8, !tbaa !70
  %17 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 1
  %18 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 1, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !86
  %20 = load ptr, ptr %17, align 8, !tbaa !87
  %21 = tail call i32 %19(ptr noundef %20, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %3, i64 noundef %4, ptr noundef %5, ptr noundef nonnull %6, i64 noundef %7, i32 noundef %8) #7
  %22 = load i64, ptr %3, align 8, !tbaa !70
  %23 = sub i64 %22, %15
  %24 = load i64, ptr %6, align 8, !tbaa !70
  %25 = sub i64 %24, %16
  %26 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 3
  %27 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 5
  %28 = load i64, ptr %27, align 8, !tbaa !79
  %29 = tail call fastcc zeroext i1 @update_size(ptr noundef nonnull %26, i64 noundef %23, i64 noundef %28) #8
  br i1 %29, label %106, label %30, !prof !88

30:                                               ; preds = %14
  %31 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 4
  %32 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 2
  %33 = load ptr, ptr %32, align 8, !tbaa !75
  %34 = getelementptr inbounds %struct.lzma_block, ptr %33, i64 0, i32 4
  %35 = load i64, ptr %34, align 8, !tbaa !60
  %36 = tail call fastcc zeroext i1 @update_size(ptr noundef nonnull %31, i64 noundef %25, i64 noundef %35) #8
  br i1 %36, label %106, label %37, !prof !88

37:                                               ; preds = %30
  %38 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 7
  %39 = load ptr, ptr %32, align 8, !tbaa !75
  %40 = getelementptr inbounds %struct.lzma_block, ptr %39, i64 0, i32 2
  %41 = load i32, ptr %40, align 8, !tbaa !78
  %42 = getelementptr inbounds i8, ptr %5, i64 %16
  tail call void @lzma_check_update(ptr noundef nonnull %38, i32 noundef %41, ptr noundef %42, i64 noundef %25) #7
  %43 = icmp eq i32 %21, 1
  br i1 %43, label %44, label %106, !prof !89

44:                                               ; preds = %37
  %45 = load i64, ptr %26, align 8, !tbaa !85
  %46 = load ptr, ptr %32, align 8, !tbaa !75
  %47 = getelementptr inbounds %struct.lzma_block, ptr %46, i64 0, i32 3
  %48 = load i64, ptr %47, align 8, !tbaa !76
  %49 = tail call fastcc zeroext i1 @is_size_valid(i64 noundef %45, i64 noundef %48) #8
  br i1 %49, label %50, label %106, !prof !65

50:                                               ; preds = %44
  %51 = load i64, ptr %31, align 8, !tbaa !90
  %52 = getelementptr inbounds %struct.lzma_block, ptr %46, i64 0, i32 4
  %53 = load i64, ptr %52, align 8, !tbaa !60
  %54 = tail call fastcc zeroext i1 @is_size_valid(i64 noundef %51, i64 noundef %53) #8
  br i1 %54, label %55, label %106, !prof !65

55:                                               ; preds = %50
  store i64 %45, ptr %47, align 8, !tbaa !76
  store i64 %51, ptr %52, align 8, !tbaa !60
  store i32 1, ptr %0, align 8, !tbaa !72
  br label %56

56:                                               ; preds = %11, %55
  %57 = phi i64 [ %13, %11 ], [ %45, %55 ]
  br label %58

58:                                               ; preds = %65, %56
  %59 = phi i64 [ %67, %65 ], [ %57, %56 ]
  %60 = and i64 %59, 3
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %72, label %62, !prof !91

62:                                               ; preds = %58
  %63 = load i64, ptr %3, align 8, !tbaa !70
  %64 = icmp ult i64 %63, %4
  br i1 %64, label %65, label %106, !prof !65

65:                                               ; preds = %62
  %66 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 3
  %67 = add i64 %59, 1
  store i64 %67, ptr %66, align 8, !tbaa !85
  %68 = add nuw i64 %63, 1
  store i64 %68, ptr %3, align 8, !tbaa !70
  %69 = getelementptr inbounds i8, ptr %2, i64 %63
  %70 = load i8, ptr %69, align 1, !tbaa !92
  %71 = icmp eq i8 %70, 0
  br i1 %71, label %58, label %106, !prof !65, !llvm.loop !93

72:                                               ; preds = %58
  %73 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 2
  %74 = load ptr, ptr %73, align 8, !tbaa !75
  %75 = getelementptr inbounds %struct.lzma_block, ptr %74, i64 0, i32 2
  %76 = load i32, ptr %75, align 8, !tbaa !78
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %106, label %78, !prof !59

78:                                               ; preds = %72
  %79 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 7
  tail call void @lzma_check_finish(ptr noundef nonnull %79, i32 noundef %76) #7
  store i32 2, ptr %0, align 8, !tbaa !72
  br label %80

80:                                               ; preds = %9, %78
  %81 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 2
  %82 = load ptr, ptr %81, align 8, !tbaa !75
  %83 = getelementptr inbounds %struct.lzma_block, ptr %82, i64 0, i32 2
  %84 = load i32, ptr %83, align 8, !tbaa !78
  %85 = tail call i32 @lzma_check_size(i32 noundef %84) #7
  %86 = zext i32 %85 to i64
  %87 = load ptr, ptr %81, align 8, !tbaa !75
  %88 = getelementptr inbounds %struct.lzma_block, ptr %87, i64 0, i32 6
  %89 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 6
  %90 = tail call i64 @lzma_bufcpy(ptr noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef nonnull %88, ptr noundef nonnull %89, i64 noundef %86) #7
  %91 = load i64, ptr %89, align 8, !tbaa !80
  %92 = icmp ult i64 %91, %86
  br i1 %92, label %106, label %93, !prof !59

93:                                               ; preds = %80
  %94 = load ptr, ptr %81, align 8, !tbaa !75
  %95 = getelementptr inbounds %struct.lzma_block, ptr %94, i64 0, i32 2
  %96 = load i32, ptr %95, align 8, !tbaa !78
  %97 = tail call zeroext i8 @lzma_check_is_supported(i32 noundef %96) #7
  %98 = icmp eq i8 %97, 0
  br i1 %98, label %105, label %99, !prof !59

99:                                               ; preds = %93
  %100 = load ptr, ptr %81, align 8, !tbaa !75
  %101 = getelementptr inbounds %struct.lzma_block, ptr %100, i64 0, i32 6
  %102 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 7
  %103 = tail call i32 @bcmp(ptr nonnull %101, ptr nonnull %102, i64 %86)
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %106, !prof !65

105:                                              ; preds = %99, %93
  br label %106

106:                                              ; preds = %65, %62, %44, %50, %37, %14, %30, %9, %105, %80, %99, %72
  %107 = phi i32 [ 1, %72 ], [ 1, %105 ], [ 0, %80 ], [ 9, %99 ], [ 11, %9 ], [ 9, %44 ], [ 9, %50 ], [ %21, %37 ], [ 9, %14 ], [ 9, %30 ], [ 9, %65 ], [ 0, %62 ]
  ret i32 %107
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @block_decoder_end(ptr noundef %0, ptr noundef %1) #0 !prof !52 !PGOFuncName !95 {
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
define dso_local i32 @lzma_block_decoder(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !96 {
  %3 = tail call i32 @lzma_strm_init(ptr noundef %0) #7
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %17

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.lzma_stream, ptr %0, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !97
  %8 = getelementptr inbounds %struct.lzma_stream, ptr %0, i64 0, i32 6
  %9 = load ptr, ptr %8, align 8, !tbaa !99
  %10 = tail call i32 @lzma_block_decoder_init(ptr noundef %7, ptr noundef %9, ptr noundef %1) #8
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %5
  tail call void @lzma_end(ptr noundef nonnull %0) #7
  br label %17

13:                                               ; preds = %5
  %14 = load ptr, ptr %6, align 8, !tbaa !97
  %15 = getelementptr inbounds %struct.lzma_internal_s, ptr %14, i64 0, i32 3
  store i8 1, ptr %15, align 8, !tbaa !100
  %16 = getelementptr inbounds %struct.lzma_internal_s, ptr %14, i64 0, i32 3, i64 3
  store i8 1, ptr %16, align 1, !tbaa !100
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
define internal fastcc noundef zeroext i1 @update_size(ptr nocapture noundef %0, i64 noundef %1, i64 noundef %2) unnamed_addr #3 !prof !102 !PGOFuncName !103 {
  %4 = tail call i64 @llvm.umin.i64(i64 %2, i64 9223372036854775807)
  %5 = load i64, ptr %0, align 8, !tbaa !70
  %6 = icmp ult i64 %4, %5
  %7 = sub i64 %4, %5
  %8 = icmp ult i64 %7, %1
  %9 = or i1 %6, %8
  br i1 %9, label %12, label %10, !prof !104

10:                                               ; preds = %3
  %11 = add i64 %5, %1
  store i64 %11, ptr %0, align 8, !tbaa !70
  br label %12

12:                                               ; preds = %3, %10
  ret i1 %9
}

; Function Attrs: optsize
declare void @lzma_check_update(ptr noundef, i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef zeroext i1 @is_size_valid(i64 noundef %0, i64 noundef %1) unnamed_addr #4 !prof !105 !PGOFuncName !106 {
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

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!51}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50}
!35 = !{ptr @lzma_block_decoder_init, ptr @lzma_next_end, i64 2}
!36 = !{ptr @lzma_block_decoder_init, ptr @lzma_block_unpadded_size, i64 2}
!37 = !{ptr @lzma_block_decoder_init, ptr @lzma_alloc, i64 1}
!38 = !{ptr @lzma_block_decoder_init, ptr @lzma_check_size, i64 1}
!39 = !{ptr @lzma_block_decoder_init, ptr @lzma_check_init, i64 1}
!40 = !{ptr @lzma_block_decoder_init, ptr @lzma_raw_decoder_init, i64 1}
!41 = !{ptr @block_decode, ptr @update_size, i64 89087}
!42 = !{ptr @block_decode, ptr @lzma_check_update, i64 44542}
!43 = !{ptr @block_decode, ptr @is_size_valid, i64 5}
!44 = !{ptr @block_decode, ptr @lzma_check_finish, i64 1}
!45 = !{ptr @block_decode, ptr @lzma_check_size, i64 2}
!46 = !{ptr @block_decode, ptr @lzma_bufcpy, i64 2}
!47 = !{ptr @block_decode, ptr @lzma_check_is_supported, i64 2}
!48 = !{ptr @block_decode, ptr @bcmp, i64 1}
!49 = !{ptr @block_decoder_end, ptr @lzma_next_end, i64 2}
!50 = !{ptr @block_decoder_end, ptr @lzma_free, i64 2}
!51 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!52 = !{!"function_entry_count", i64 2}
!53 = !{!54, !58, i64 16}
!54 = !{!"lzma_next_coder_s", !55, i64 0, !58, i64 8, !58, i64 16, !55, i64 24, !55, i64 32, !55, i64 40, !55, i64 48, !55, i64 56}
!55 = !{!"any pointer", !56, i64 0}
!56 = !{!"omnipotent char", !57, i64 0}
!57 = !{!"Simple C/C++ TBAA"}
!58 = !{!"long", !56, i64 0}
!59 = !{!"branch_weights", i32 1, i32 3}
!60 = !{!61, !58, i64 24}
!61 = !{!"", !62, i64 0, !62, i64 4, !62, i64 8, !58, i64 16, !58, i64 24, !55, i64 32, !56, i64 40, !55, i64 104, !55, i64 112, !55, i64 120, !62, i64 128, !62, i64 132, !58, i64 136, !58, i64 144, !58, i64 152, !58, i64 160, !58, i64 168, !58, i64 176, !62, i64 184, !62, i64 188, !62, i64 192, !62, i64 196, !56, i64 200, !56, i64 201, !56, i64 202, !56, i64 203, !56, i64 204, !56, i64 205, !56, i64 206, !56, i64 207}
!62 = !{!"int", !56, i64 0}
!63 = !{!"branch_weights", i32 13, i32 3}
!64 = !{!54, !55, i64 0}
!65 = !{!"branch_weights", i32 3, i32 1}
!66 = !{!54, !55, i64 24}
!67 = !{!54, !55, i64 32}
!68 = !{i64 0, i64 8, !69, i64 8, i64 8, !70, i64 16, i64 8, !70, i64 24, i64 8, !69, i64 32, i64 8, !69, i64 40, i64 8, !69, i64 48, i64 8, !69, i64 56, i64 8, !69}
!69 = !{!55, !55, i64 0}
!70 = !{!58, !58, i64 0}
!71 = !{i64 0, i64 8, !70, i64 8, i64 8, !70, i64 16, i64 8, !69, i64 24, i64 8, !69, i64 32, i64 8, !69, i64 40, i64 8, !69, i64 48, i64 8, !69}
!72 = !{!73, !62, i64 0}
!73 = !{!"lzma_coder_s", !62, i64 0, !54, i64 8, !55, i64 72, !58, i64 80, !58, i64 88, !58, i64 96, !58, i64 104, !74, i64 112}
!74 = !{!"", !56, i64 0, !56, i64 64}
!75 = !{!73, !55, i64 72}
!76 = !{!61, !58, i64 16}
!77 = !{!61, !62, i64 4}
!78 = !{!61, !62, i64 8}
!79 = !{!73, !58, i64 96}
!80 = !{!73, !58, i64 104}
!81 = !{!61, !55, i64 32}
!82 = !{!"function_entry_count", i64 44547}
!83 = !{!"block_decoder.c:block_decode"}
!84 = !{!"branch_weights", i32 1, i32 44548, i32 1, i32 1}
!85 = !{!73, !58, i64 80}
!86 = !{!73, !55, i64 32}
!87 = !{!73, !55, i64 8}
!88 = !{!"branch_weights", i32 1, i32 44548}
!89 = !{!"branch_weights", i32 3, i32 44546}
!90 = !{!73, !58, i64 88}
!91 = !{!"branch_weights", i32 3, i32 3}
!92 = !{!56, !56, i64 0}
!93 = distinct !{!93, !94}
!94 = !{!"llvm.loop.mustprogress"}
!95 = !{!"block_decoder.c:block_decoder_end"}
!96 = !{!"function_entry_count", i64 0}
!97 = !{!98, !55, i64 56}
!98 = !{!"", !55, i64 0, !58, i64 8, !58, i64 16, !55, i64 24, !58, i64 32, !58, i64 40, !55, i64 48, !55, i64 56, !55, i64 64, !55, i64 72, !55, i64 80, !55, i64 88, !58, i64 96, !58, i64 104, !58, i64 112, !58, i64 120, !62, i64 128, !62, i64 132}
!99 = !{!98, !55, i64 48}
!100 = !{!101, !101, i64 0}
!101 = !{!"_Bool", !56, i64 0}
!102 = !{!"function_entry_count", i64 89094}
!103 = !{!"block_decoder.c:update_size"}
!104 = !{!"branch_weights", i32 89095, i32 -326007784}
!105 = !{!"function_entry_count", i64 4}
!106 = !{!"block_decoder.c:is_size_valid"}
