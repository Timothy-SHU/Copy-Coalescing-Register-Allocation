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

; Function Attrs: cold nounwind uwtable
define dso_local i32 @lzma_block_decoder_init(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 !prof !50 {
  %4 = getelementptr inbounds %struct.lzma_next_coder_s, ptr %0, i64 0, i32 2
  %5 = load i64, ptr %4, align 8, !tbaa !51
  %6 = icmp eq i64 %5, ptrtoint (ptr @lzma_block_decoder_init to i64)
  br i1 %6, label %8, label %7, !prof !57

7:                                                ; preds = %3
  tail call void @lzma_next_end(ptr noundef %0, ptr noundef %1) #6
  br label %8

8:                                                ; preds = %7, %3
  store i64 ptrtoint (ptr @lzma_block_decoder_init to i64), ptr %4, align 8, !tbaa !51
  %9 = tail call i64 @lzma_block_unpadded_size(ptr noundef %2) #6
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %57, label %11, !prof !57

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.lzma_block, ptr %2, i64 0, i32 4
  %13 = load i64, ptr %12, align 8, !tbaa !58
  %14 = icmp sgt i64 %13, -2
  br i1 %14, label %15, label %57, !prof !61

15:                                               ; preds = %11
  %16 = load ptr, ptr %0, align 8, !tbaa !62
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %27, !prof !61

18:                                               ; preds = %15
  %19 = tail call ptr @lzma_alloc(i64 noundef 216, ptr noundef %1) #6
  store ptr %19, ptr %0, align 8, !tbaa !62
  %20 = icmp eq ptr %19, null
  br i1 %20, label %57, label %21, !prof !57

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.lzma_next_coder_s, ptr %0, i64 0, i32 3
  store ptr @block_decode, ptr %22, align 8, !tbaa !63
  %23 = getelementptr inbounds %struct.lzma_next_coder_s, ptr %0, i64 0, i32 4
  store ptr @block_decoder_end, ptr %23, align 8, !tbaa !64
  %24 = getelementptr inbounds %struct.lzma_coder_s, ptr %19, i64 0, i32 1
  store ptr null, ptr %24, align 8, !tbaa.struct !65
  %25 = getelementptr inbounds %struct.lzma_coder_s, ptr %19, i64 0, i32 1, i32 1
  store i64 -1, ptr %25, align 8, !tbaa.struct !68
  %26 = getelementptr inbounds %struct.lzma_coder_s, ptr %19, i64 0, i32 1, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %26, i8 0, i64 48, i1 false)
  br label %27

27:                                               ; preds = %21, %15
  %28 = load ptr, ptr %0, align 8, !tbaa !62
  store i32 0, ptr %28, align 8, !tbaa !69
  %29 = getelementptr inbounds %struct.lzma_coder_s, ptr %28, i64 0, i32 2
  store ptr %2, ptr %29, align 8, !tbaa !72
  %30 = getelementptr inbounds %struct.lzma_coder_s, ptr %28, i64 0, i32 3
  %31 = getelementptr inbounds %struct.lzma_block, ptr %2, i64 0, i32 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %30, i8 0, i64 16, i1 false)
  %32 = load i64, ptr %31, align 8, !tbaa !73
  %33 = icmp eq i64 %32, -1
  br i1 %33, label %34, label %44, !prof !61

34:                                               ; preds = %27
  %35 = getelementptr inbounds %struct.lzma_block, ptr %2, i64 0, i32 1
  %36 = load i32, ptr %35, align 4, !tbaa !74
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds %struct.lzma_block, ptr %2, i64 0, i32 2
  %39 = load i32, ptr %38, align 8, !tbaa !75
  %40 = tail call i32 @lzma_check_size(i32 noundef %39) #6
  %41 = zext i32 %40 to i64
  %42 = add nuw nsw i64 %37, %41
  %43 = sub nuw nsw i64 9223372036854775804, %42
  br label %44

44:                                               ; preds = %27, %34
  %45 = phi i64 [ %43, %34 ], [ %32, %27 ]
  %46 = load ptr, ptr %0, align 8, !tbaa !62
  %47 = getelementptr inbounds %struct.lzma_coder_s, ptr %46, i64 0, i32 5
  store i64 %45, ptr %47, align 8, !tbaa !76
  %48 = getelementptr inbounds %struct.lzma_coder_s, ptr %46, i64 0, i32 6
  store i64 0, ptr %48, align 8, !tbaa !77
  %49 = getelementptr inbounds %struct.lzma_coder_s, ptr %46, i64 0, i32 7
  %50 = getelementptr inbounds %struct.lzma_block, ptr %2, i64 0, i32 2
  %51 = load i32, ptr %50, align 8, !tbaa !75
  tail call void @lzma_check_init(ptr noundef nonnull %49, i32 noundef %51) #6
  %52 = load ptr, ptr %0, align 8, !tbaa !62
  %53 = getelementptr inbounds %struct.lzma_coder_s, ptr %52, i64 0, i32 1
  %54 = getelementptr inbounds %struct.lzma_block, ptr %2, i64 0, i32 5
  %55 = load ptr, ptr %54, align 8, !tbaa !78
  %56 = tail call i32 @lzma_raw_decoder_init(ptr noundef nonnull %53, ptr noundef %1, ptr noundef %55) #6
  br label %57

57:                                               ; preds = %18, %8, %11, %44
  %58 = phi i32 [ %56, %44 ], [ 11, %11 ], [ 11, %8 ], [ 5, %18 ]
  ret i32 %58
}

declare void @lzma_next_end(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i64 @lzma_block_unpadded_size(ptr noundef) local_unnamed_addr #1

declare ptr @lzma_alloc(i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal i32 @block_decode(ptr noundef %0, ptr noundef %1, ptr noalias noundef %2, ptr noalias noundef %3, i64 noundef %4, ptr noalias noundef %5, ptr noalias noundef %6, i64 noundef %7, i32 noundef %8) #2 !prof !79 !PGOFuncName !80 {
  %10 = load i32, ptr %0, align 8, !tbaa !69
  switch i32 %10, label %121 [
    i32 0, label %11
    i32 1, label %71
    i32 2, label %95
  ], !prof !81

11:                                               ; preds = %9
  %12 = load i64, ptr %3, align 8, !tbaa !67
  %13 = load i64, ptr %6, align 8, !tbaa !67
  %14 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 1
  %15 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 1, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !82
  %17 = load ptr, ptr %14, align 8, !tbaa !83
  %18 = tail call i32 %16(ptr noundef %17, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %3, i64 noundef %4, ptr noundef %5, ptr noundef nonnull %6, i64 noundef %7, i32 noundef %8) #6, !prof !84
  %19 = load i64, ptr %3, align 8, !tbaa !67
  %20 = sub i64 %19, %12
  %21 = load i64, ptr %6, align 8, !tbaa !67
  %22 = sub i64 %21, %13
  %23 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 3
  %24 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 5
  %25 = load i64, ptr %24, align 8, !tbaa !76
  %26 = tail call i64 @llvm.umin.i64(i64 %25, i64 9223372036854775807)
  %27 = load i64, ptr %23, align 8, !tbaa !67
  %28 = icmp ult i64 %26, %27
  %29 = sub i64 %26, %27
  %30 = icmp ult i64 %29, %20
  %31 = or i1 %28, %30
  br i1 %31, label %68, label %32, !prof !85

32:                                               ; preds = %11
  %33 = add i64 %27, %20
  store i64 %33, ptr %23, align 8, !tbaa !67
  %34 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 4
  %35 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 2
  %36 = load ptr, ptr %35, align 8, !tbaa !72
  %37 = getelementptr inbounds %struct.lzma_block, ptr %36, i64 0, i32 4
  %38 = load i64, ptr %37, align 8, !tbaa !58
  %39 = tail call i64 @llvm.umin.i64(i64 %38, i64 9223372036854775807)
  %40 = load i64, ptr %34, align 8, !tbaa !67
  %41 = icmp ult i64 %39, %40
  %42 = sub i64 %39, %40
  %43 = icmp ult i64 %42, %22
  %44 = or i1 %41, %43
  br i1 %44, label %68, label %45, !prof !85

45:                                               ; preds = %32
  %46 = add i64 %40, %22
  store i64 %46, ptr %34, align 8, !tbaa !67
  %47 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 7
  %48 = getelementptr inbounds %struct.lzma_block, ptr %36, i64 0, i32 2
  %49 = load i32, ptr %48, align 8, !tbaa !75
  %50 = getelementptr inbounds i8, ptr %5, i64 %13
  tail call void @lzma_check_update(ptr noundef nonnull %47, i32 noundef %49, ptr noundef %50, i64 noundef %22) #6
  %51 = icmp eq i32 %18, 1
  br i1 %51, label %52, label %68, !prof !86

52:                                               ; preds = %45
  %53 = load i64, ptr %23, align 8, !tbaa !87
  %54 = load ptr, ptr %35, align 8, !tbaa !72
  %55 = getelementptr inbounds %struct.lzma_block, ptr %54, i64 0, i32 3
  %56 = load i64, ptr %55, align 8, !tbaa !73
  %57 = icmp eq i64 %56, -1
  %58 = icmp eq i64 %56, %53
  %59 = or i1 %57, %58
  br i1 %59, label %60, label %68, !prof !61

60:                                               ; preds = %52
  %61 = load i64, ptr %34, align 8, !tbaa !88
  %62 = getelementptr inbounds %struct.lzma_block, ptr %54, i64 0, i32 4
  %63 = load i64, ptr %62, align 8, !tbaa !58
  %64 = icmp eq i64 %63, -1
  %65 = icmp eq i64 %63, %61
  %66 = or i1 %64, %65
  br i1 %66, label %67, label %68, !prof !61

67:                                               ; preds = %60
  store i64 %53, ptr %55, align 8, !tbaa !73
  store i64 %61, ptr %62, align 8, !tbaa !58
  store i32 1, ptr %0, align 8, !tbaa !69
  br label %68

68:                                               ; preds = %32, %11, %52, %60, %45, %67
  %69 = phi i1 [ true, %67 ], [ false, %45 ], [ false, %60 ], [ false, %52 ], [ false, %11 ], [ false, %32 ]
  %70 = phi i32 [ undef, %67 ], [ %18, %45 ], [ 9, %60 ], [ 9, %52 ], [ 9, %11 ], [ 9, %32 ]
  br i1 %69, label %71, label %121, !prof !86

71:                                               ; preds = %68, %9
  %72 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 3
  %73 = load i64, ptr %72, align 8, !tbaa !87
  br label %74

74:                                               ; preds = %81, %71
  %75 = phi i64 [ %82, %81 ], [ %73, %71 ]
  %76 = and i64 %75, 3
  %77 = icmp eq i64 %76, 0
  br i1 %77, label %87, label %78, !prof !89

78:                                               ; preds = %74
  %79 = load i64, ptr %3, align 8, !tbaa !67
  %80 = icmp ult i64 %79, %4
  br i1 %80, label %81, label %121, !prof !61

81:                                               ; preds = %78
  %82 = add i64 %75, 1
  store i64 %82, ptr %72, align 8, !tbaa !87
  %83 = add i64 %79, 1
  store i64 %83, ptr %3, align 8, !tbaa !67
  %84 = getelementptr inbounds i8, ptr %2, i64 %79
  %85 = load i8, ptr %84, align 1, !tbaa !90
  %86 = icmp eq i8 %85, 0
  br i1 %86, label %74, label %121, !prof !61, !llvm.loop !91

87:                                               ; preds = %74
  %88 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 2
  %89 = load ptr, ptr %88, align 8, !tbaa !72
  %90 = getelementptr inbounds %struct.lzma_block, ptr %89, i64 0, i32 2
  %91 = load i32, ptr %90, align 8, !tbaa !75
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %121, label %93, !prof !57

93:                                               ; preds = %87
  %94 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 7
  tail call void @lzma_check_finish(ptr noundef nonnull %94, i32 noundef %91) #6
  store i32 2, ptr %0, align 8, !tbaa !69
  br label %95

95:                                               ; preds = %9, %93
  %96 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 2
  %97 = load ptr, ptr %96, align 8, !tbaa !72
  %98 = getelementptr inbounds %struct.lzma_block, ptr %97, i64 0, i32 2
  %99 = load i32, ptr %98, align 8, !tbaa !75
  %100 = tail call i32 @lzma_check_size(i32 noundef %99) #6
  %101 = zext i32 %100 to i64
  %102 = load ptr, ptr %96, align 8, !tbaa !72
  %103 = getelementptr inbounds %struct.lzma_block, ptr %102, i64 0, i32 6
  %104 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 6
  %105 = tail call i64 @lzma_bufcpy(ptr noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef nonnull %103, ptr noundef nonnull %104, i64 noundef %101) #6
  %106 = load i64, ptr %104, align 8, !tbaa !77
  %107 = icmp ult i64 %106, %101
  br i1 %107, label %121, label %108, !prof !57

108:                                              ; preds = %95
  %109 = load ptr, ptr %96, align 8, !tbaa !72
  %110 = getelementptr inbounds %struct.lzma_block, ptr %109, i64 0, i32 2
  %111 = load i32, ptr %110, align 8, !tbaa !75
  %112 = tail call zeroext i8 @lzma_check_is_supported(i32 noundef %111) #6
  %113 = icmp eq i8 %112, 0
  br i1 %113, label %120, label %114, !prof !57

114:                                              ; preds = %108
  %115 = load ptr, ptr %96, align 8, !tbaa !72
  %116 = getelementptr inbounds %struct.lzma_block, ptr %115, i64 0, i32 6
  %117 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 7
  %118 = tail call i32 @bcmp(ptr nonnull %116, ptr nonnull %117, i64 %101), !prof !94
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %120, label %121, !prof !61

120:                                              ; preds = %114, %108
  br label %121

121:                                              ; preds = %81, %78, %95, %68, %9, %120, %114, %87
  %122 = phi i32 [ 1, %87 ], [ 1, %120 ], [ 9, %114 ], [ 11, %9 ], [ %70, %68 ], [ 0, %95 ], [ 0, %78 ], [ 9, %81 ]
  ret i32 %122
}

; Function Attrs: cold nounwind uwtable
define internal void @block_decoder_end(ptr noundef %0, ptr noundef %1) #0 !prof !50 !PGOFuncName !95 {
  %3 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 1
  tail call void @lzma_next_end(ptr noundef nonnull %3, ptr noundef %1) #6
  tail call void @lzma_free(ptr noundef %0, ptr noundef %1) #6
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

declare i32 @lzma_check_size(i32 noundef) local_unnamed_addr #1

declare void @lzma_check_init(ptr noundef, i32 noundef) local_unnamed_addr #1

declare i32 @lzma_raw_decoder_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind uwtable
define dso_local i32 @lzma_block_decoder(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !96 {
  %3 = tail call i32 @lzma_strm_init(ptr noundef %0) #6
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %19

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.lzma_stream, ptr %0, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !97
  %8 = getelementptr inbounds %struct.lzma_stream, ptr %0, i64 0, i32 6
  %9 = load ptr, ptr %8, align 8, !tbaa !99
  %10 = tail call i32 @lzma_block_decoder_init(ptr noundef %7, ptr noundef %9, ptr noundef %1)
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %5
  tail call void @lzma_end(ptr noundef %0) #6
  br label %13

13:                                               ; preds = %5, %12
  %14 = phi i32 [ %10, %12 ], [ %3, %5 ]
  br i1 %11, label %15, label %19

15:                                               ; preds = %13
  %16 = load ptr, ptr %6, align 8, !tbaa !97
  %17 = getelementptr inbounds %struct.lzma_internal_s, ptr %16, i64 0, i32 3
  store i8 1, ptr %17, align 8, !tbaa !100
  %18 = getelementptr inbounds %struct.lzma_internal_s, ptr %16, i64 0, i32 3, i64 3
  store i8 1, ptr %18, align 1, !tbaa !100
  br label %19

19:                                               ; preds = %2, %13, %15
  %20 = phi i32 [ %3, %2 ], [ %14, %13 ], [ 0, %15 ]
  ret i32 %20
}

declare i32 @lzma_strm_init(ptr noundef) local_unnamed_addr #1

declare void @lzma_end(ptr noundef) local_unnamed_addr #1

declare void @lzma_check_update(ptr noundef, i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare void @lzma_check_finish(ptr noundef, i32 noundef) local_unnamed_addr #1

declare i64 @lzma_bufcpy(ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare zeroext i8 @lzma_check_is_supported(i32 noundef) local_unnamed_addr #1

declare void @lzma_free(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #5

attributes #0 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { nofree nounwind willreturn memory(argmem: read) }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!49}

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
!33 = !{i32 5, !"CG Profile", !34}
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48}
!35 = !{ptr @lzma_block_decoder_init, ptr @lzma_next_end, i64 2}
!36 = !{ptr @lzma_block_decoder_init, ptr @lzma_block_unpadded_size, i64 2}
!37 = !{ptr @lzma_block_decoder_init, ptr @lzma_alloc, i64 2}
!38 = !{ptr @lzma_block_decoder_init, ptr @lzma_check_size, i64 2}
!39 = !{ptr @lzma_block_decoder_init, ptr @lzma_check_init, i64 2}
!40 = !{ptr @lzma_block_decoder_init, ptr @lzma_raw_decoder_init, i64 2}
!41 = !{ptr @block_decode, ptr @lzma_check_update, i64 44547}
!42 = !{ptr @block_decode, ptr @lzma_check_finish, i64 2}
!43 = !{ptr @block_decode, ptr @lzma_check_size, i64 2}
!44 = !{ptr @block_decode, ptr @lzma_bufcpy, i64 2}
!45 = !{ptr @block_decode, ptr @lzma_check_is_supported, i64 2}
!46 = !{ptr @block_decode, ptr @bcmp, i64 2}
!47 = !{ptr @block_decoder_end, ptr @lzma_next_end, i64 2}
!48 = !{ptr @block_decoder_end, ptr @lzma_free, i64 2}
!49 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!50 = !{!"function_entry_count", i64 2}
!51 = !{!52, !56, i64 16}
!52 = !{!"lzma_next_coder_s", !53, i64 0, !56, i64 8, !56, i64 16, !53, i64 24, !53, i64 32, !53, i64 40, !53, i64 48, !53, i64 56}
!53 = !{!"any pointer", !54, i64 0}
!54 = !{!"omnipotent char", !55, i64 0}
!55 = !{!"Simple C/C++ TBAA"}
!56 = !{!"long", !54, i64 0}
!57 = !{!"branch_weights", i32 0, i32 2}
!58 = !{!59, !56, i64 24}
!59 = !{!"", !60, i64 0, !60, i64 4, !60, i64 8, !56, i64 16, !56, i64 24, !53, i64 32, !54, i64 40, !53, i64 104, !53, i64 112, !53, i64 120, !60, i64 128, !60, i64 132, !56, i64 136, !56, i64 144, !56, i64 152, !56, i64 160, !56, i64 168, !56, i64 176, !60, i64 184, !60, i64 188, !60, i64 192, !60, i64 196, !54, i64 200, !54, i64 201, !54, i64 202, !54, i64 203, !54, i64 204, !54, i64 205, !54, i64 206, !54, i64 207}
!60 = !{!"int", !54, i64 0}
!61 = !{!"branch_weights", i32 2, i32 0}
!62 = !{!52, !53, i64 0}
!63 = !{!52, !53, i64 24}
!64 = !{!52, !53, i64 32}
!65 = !{i64 0, i64 8, !66, i64 8, i64 8, !67, i64 16, i64 8, !67, i64 24, i64 8, !66, i64 32, i64 8, !66, i64 40, i64 8, !66, i64 48, i64 8, !66, i64 56, i64 8, !66}
!66 = !{!53, !53, i64 0}
!67 = !{!56, !56, i64 0}
!68 = !{i64 0, i64 8, !67, i64 8, i64 8, !67, i64 16, i64 8, !66, i64 24, i64 8, !66, i64 32, i64 8, !66, i64 40, i64 8, !66, i64 48, i64 8, !66}
!69 = !{!70, !60, i64 0}
!70 = !{!"lzma_coder_s", !60, i64 0, !52, i64 8, !53, i64 72, !56, i64 80, !56, i64 88, !56, i64 96, !56, i64 104, !71, i64 112}
!71 = !{!"", !54, i64 0, !54, i64 64}
!72 = !{!70, !53, i64 72}
!73 = !{!59, !56, i64 16}
!74 = !{!59, !60, i64 4}
!75 = !{!59, !60, i64 8}
!76 = !{!70, !56, i64 96}
!77 = !{!70, !56, i64 104}
!78 = !{!59, !53, i64 32}
!79 = !{!"function_entry_count", i64 44547}
!80 = !{!"liblzma/common/block_decoder.c;block_decode"}
!81 = !{!"branch_weights", i32 0, i32 44547, i32 0, i32 0}
!82 = !{!70, !53, i64 32}
!83 = !{!70, !53, i64 8}
!84 = !{!"VP", i32 0, i64 44547, i64 4791744388173059044, i64 44547}
!85 = !{!"branch_weights", i32 0, i32 44547}
!86 = !{!"branch_weights", i32 2, i32 44545}
!87 = !{!70, !56, i64 80}
!88 = !{!70, !56, i64 88}
!89 = !{!"branch_weights", i32 2, i32 2}
!90 = !{!54, !54, i64 0}
!91 = distinct !{!91, !92, !93}
!92 = !{!"llvm.loop.mustprogress"}
!93 = !{!"llvm.loop.unroll.disable"}
!94 = !{!"VP", i32 1, i64 2, i64 8, i64 2}
!95 = !{!"liblzma/common/block_decoder.c;block_decoder_end"}
!96 = !{!"function_entry_count", i64 0}
!97 = !{!98, !53, i64 56}
!98 = !{!"", !53, i64 0, !56, i64 8, !56, i64 16, !53, i64 24, !56, i64 32, !56, i64 40, !53, i64 48, !53, i64 56, !53, i64 64, !53, i64 72, !53, i64 80, !53, i64 88, !56, i64 96, !56, i64 104, !56, i64 112, !56, i64 120, !60, i64 128, !60, i64 132}
!99 = !{!98, !53, i64 48}
!100 = !{!101, !101, i64 0}
!101 = !{!"_Bool", !54, i64 0}
