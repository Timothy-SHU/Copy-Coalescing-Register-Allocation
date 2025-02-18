; ModuleID = 'liblzma/common/block_encoder.c'
source_filename = "liblzma/common/block_encoder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.lzma_next_coder_s = type { ptr, i64, i64, ptr, ptr, ptr, ptr, ptr }
%struct.lzma_block = type { i32, i32, i32, i64, i64, ptr, [64 x i8], ptr, ptr, ptr, i32, i32, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.lzma_coder_s = type { %struct.lzma_next_coder_s, ptr, i32, i64, i64, i64, %struct.lzma_check_state }
%struct.lzma_check_state = type { %union.anon, %union.anon.0 }
%union.anon = type { [8 x i64] }
%union.anon.0 = type { %struct.anon }
%struct.anon = type { [8 x i32], i64 }
%struct.lzma_stream = type { ptr, i64, i64, ptr, i64, i64, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, i64, i64, i32, i32 }
%struct.lzma_internal_s = type { %struct.lzma_next_coder_s, i32, i64, [4 x i8], i8 }

; Function Attrs: cold nounwind uwtable
define dso_local i32 @lzma_block_encoder_init(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 !prof !47 {
  %4 = getelementptr inbounds %struct.lzma_next_coder_s, ptr %0, i64 0, i32 2
  %5 = load i64, ptr %4, align 8, !tbaa !48
  %6 = icmp eq i64 %5, ptrtoint (ptr @lzma_block_encoder_init to i64)
  br i1 %6, label %8, label %7, !prof !54

7:                                                ; preds = %3
  tail call void @lzma_next_end(ptr noundef %0, ptr noundef %1) #5
  br label %8

8:                                                ; preds = %7, %3
  store i64 ptrtoint (ptr @lzma_block_encoder_init to i64), ptr %4, align 8, !tbaa !48
  %9 = icmp eq ptr %2, null
  br i1 %9, label %43, label %10, !prof !54

10:                                               ; preds = %8
  %11 = load i32, ptr %2, align 8, !tbaa !55
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %43, !prof !58

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.lzma_block, ptr %2, i64 0, i32 2
  %15 = load i32, ptr %14, align 8, !tbaa !59
  %16 = icmp ugt i32 %15, 15
  br i1 %16, label %43, label %17, !prof !54

17:                                               ; preds = %13
  %18 = tail call zeroext i8 @lzma_check_is_supported(i32 noundef %15) #5
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %43, label %20, !prof !54

20:                                               ; preds = %17
  %21 = load ptr, ptr %0, align 8, !tbaa !60
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %32, !prof !58

23:                                               ; preds = %20
  %24 = tail call ptr @lzma_alloc(i64 noundef 208, ptr noundef %1) #5
  store ptr %24, ptr %0, align 8, !tbaa !60
  %25 = icmp eq ptr %24, null
  br i1 %25, label %43, label %26, !prof !54

26:                                               ; preds = %23
  %27 = getelementptr inbounds %struct.lzma_next_coder_s, ptr %0, i64 0, i32 3
  store ptr @block_encode, ptr %27, align 8, !tbaa !61
  %28 = getelementptr inbounds %struct.lzma_next_coder_s, ptr %0, i64 0, i32 4
  store ptr @block_encoder_end, ptr %28, align 8, !tbaa !62
  %29 = getelementptr inbounds %struct.lzma_next_coder_s, ptr %0, i64 0, i32 7
  store ptr @block_encoder_update, ptr %29, align 8, !tbaa !63
  store ptr null, ptr %24, align 8, !tbaa.struct !64
  %30 = getelementptr inbounds i8, ptr %24, i64 8
  store i64 -1, ptr %30, align 8, !tbaa.struct !67
  %31 = getelementptr inbounds i8, ptr %24, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %31, i8 0, i64 48, i1 false)
  br label %32

32:                                               ; preds = %26, %20
  %33 = load ptr, ptr %0, align 8, !tbaa !60
  %34 = getelementptr inbounds %struct.lzma_coder_s, ptr %33, i64 0, i32 2
  store i32 0, ptr %34, align 8, !tbaa !68
  %35 = getelementptr inbounds %struct.lzma_coder_s, ptr %33, i64 0, i32 1
  store ptr %2, ptr %35, align 8, !tbaa !71
  %36 = getelementptr inbounds %struct.lzma_coder_s, ptr %33, i64 0, i32 3
  %37 = getelementptr inbounds %struct.lzma_coder_s, ptr %33, i64 0, i32 6
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %36, i8 0, i64 24, i1 false)
  %38 = load i32, ptr %14, align 8, !tbaa !59
  tail call void @lzma_check_init(ptr noundef nonnull %37, i32 noundef %38) #5
  %39 = load ptr, ptr %0, align 8, !tbaa !60
  %40 = getelementptr inbounds %struct.lzma_block, ptr %2, i64 0, i32 5
  %41 = load ptr, ptr %40, align 8, !tbaa !72
  %42 = tail call i32 @lzma_raw_encoder_init(ptr noundef %39, ptr noundef %1, ptr noundef %41) #5
  br label %43

43:                                               ; preds = %23, %17, %13, %10, %8, %32
  %44 = phi i32 [ %42, %32 ], [ 11, %8 ], [ 8, %10 ], [ 11, %13 ], [ 3, %17 ], [ 5, %23 ]
  ret i32 %44
}

declare void @lzma_next_end(ptr noundef, ptr noundef) local_unnamed_addr #1

declare zeroext i8 @lzma_check_is_supported(i32 noundef) local_unnamed_addr #1

declare ptr @lzma_alloc(i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal i32 @block_encode(ptr noundef %0, ptr noundef %1, ptr noalias noundef %2, ptr noalias noundef %3, i64 noundef %4, ptr noalias noundef %5, ptr noalias noundef %6, i64 noundef %7, i32 noundef %8) #2 !prof !73 !PGOFuncName !74 {
  %10 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 4
  %11 = load i64, ptr %10, align 8, !tbaa !75
  %12 = sub i64 9223372036854775807, %11
  %13 = load i64, ptr %3, align 8, !tbaa !66
  %14 = sub i64 %4, %13
  %15 = icmp ult i64 %12, %14
  br i1 %15, label %95, label %16, !prof !76

16:                                               ; preds = %9
  %17 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 2
  %18 = load i32, ptr %17, align 8, !tbaa !68
  switch i32 %18, label %95 [
    i32 0, label %19
    i32 1, label %55
    i32 2, label %80
  ], !prof !77

19:                                               ; preds = %16
  %20 = load i64, ptr %6, align 8, !tbaa !66
  %21 = getelementptr inbounds %struct.lzma_next_coder_s, ptr %0, i64 0, i32 3
  %22 = load ptr, ptr %21, align 8, !tbaa !78
  %23 = load ptr, ptr %0, align 8, !tbaa !79
  %24 = tail call i32 %22(ptr noundef %23, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %3, i64 noundef %4, ptr noundef %5, ptr noundef nonnull %6, i64 noundef %7, i32 noundef %8) #5, !prof !80
  %25 = load i64, ptr %6, align 8, !tbaa !66
  %26 = sub i64 %25, %20
  %27 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 3
  %28 = load i64, ptr %27, align 8, !tbaa !81
  %29 = sub i64 9223372036854774716, %28
  %30 = icmp ult i64 %29, %26
  br i1 %30, label %52, label %31, !prof !76

31:                                               ; preds = %19
  %32 = load i64, ptr %3, align 8, !tbaa !66
  %33 = sub i64 %32, %13
  %34 = add i64 %28, %26
  store i64 %34, ptr %27, align 8, !tbaa !81
  %35 = load i64, ptr %10, align 8, !tbaa !75
  %36 = add i64 %35, %33
  store i64 %36, ptr %10, align 8, !tbaa !75
  %37 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 6
  %38 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 1
  %39 = load ptr, ptr %38, align 8, !tbaa !71
  %40 = getelementptr inbounds %struct.lzma_block, ptr %39, i64 0, i32 2
  %41 = load i32, ptr %40, align 8, !tbaa !59
  %42 = getelementptr inbounds i8, ptr %2, i64 %13
  tail call void @lzma_check_update(ptr noundef nonnull %37, i32 noundef %41, ptr noundef %42, i64 noundef %33) #5
  %43 = icmp ne i32 %24, 1
  %44 = icmp eq i32 %8, 1
  %45 = or i1 %44, %43
  br i1 %45, label %52, label %46, !prof !82

46:                                               ; preds = %31
  %47 = load i64, ptr %27, align 8, !tbaa !81
  %48 = load ptr, ptr %38, align 8, !tbaa !71
  %49 = getelementptr inbounds %struct.lzma_block, ptr %48, i64 0, i32 3
  store i64 %47, ptr %49, align 8, !tbaa !83
  %50 = load i64, ptr %10, align 8, !tbaa !75
  %51 = getelementptr inbounds %struct.lzma_block, ptr %48, i64 0, i32 4
  store i64 %50, ptr %51, align 8, !tbaa !84
  store i32 1, ptr %17, align 8, !tbaa !68
  br label %52

52:                                               ; preds = %31, %19, %46
  %53 = phi i1 [ true, %46 ], [ false, %19 ], [ false, %31 ]
  %54 = phi i32 [ undef, %46 ], [ 9, %19 ], [ %24, %31 ]
  br i1 %53, label %55, label %95, !prof !85

55:                                               ; preds = %52, %16
  %56 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 3
  %57 = load i64, ptr %56, align 8, !tbaa !81
  %58 = and i64 %57, 3
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %72, label %60, !prof !86

60:                                               ; preds = %55
  %61 = load i64, ptr %6, align 8, !tbaa !66
  br label %62

62:                                               ; preds = %60, %66
  %63 = phi i64 [ %61, %60 ], [ %68, %66 ]
  %64 = phi i64 [ %57, %60 ], [ %69, %66 ]
  %65 = icmp ult i64 %63, %7
  br i1 %65, label %66, label %95, !prof !87

66:                                               ; preds = %62
  %67 = getelementptr inbounds i8, ptr %5, i64 %63
  store i8 0, ptr %67, align 1, !tbaa !88
  %68 = add nuw i64 %63, 1
  store i64 %68, ptr %6, align 8, !tbaa !66
  %69 = add i64 %64, 1
  store i64 %69, ptr %56, align 8, !tbaa !81
  %70 = and i64 %69, 3
  %71 = icmp eq i64 %70, 0
  br i1 %71, label %72, label %62, !prof !89, !llvm.loop !90

72:                                               ; preds = %66, %55
  %73 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 1
  %74 = load ptr, ptr %73, align 8, !tbaa !71
  %75 = getelementptr inbounds %struct.lzma_block, ptr %74, i64 0, i32 2
  %76 = load i32, ptr %75, align 8, !tbaa !59
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %95, label %78, !prof !54

78:                                               ; preds = %72
  %79 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 6
  tail call void @lzma_check_finish(ptr noundef nonnull %79, i32 noundef %76) #5
  store i32 2, ptr %17, align 8, !tbaa !68
  br label %80

80:                                               ; preds = %16, %78
  %81 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 1
  %82 = load ptr, ptr %81, align 8, !tbaa !71
  %83 = getelementptr inbounds %struct.lzma_block, ptr %82, i64 0, i32 2
  %84 = load i32, ptr %83, align 8, !tbaa !59
  %85 = tail call i32 @lzma_check_size(i32 noundef %84) #5
  %86 = zext i32 %85 to i64
  %87 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 6
  %88 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 5
  %89 = tail call i64 @lzma_bufcpy(ptr noundef nonnull %87, ptr noundef nonnull %88, i64 noundef %86, ptr noundef %5, ptr noundef %6, i64 noundef %7) #5
  %90 = load i64, ptr %88, align 8, !tbaa !93
  %91 = icmp ult i64 %90, %86
  br i1 %91, label %95, label %92, !prof !54

92:                                               ; preds = %80
  %93 = load ptr, ptr %81, align 8, !tbaa !71
  %94 = getelementptr inbounds %struct.lzma_block, ptr %93, i64 0, i32 6
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %94, ptr nonnull align 8 %87, i64 %86, i1 false), !prof !94
  br label %95

95:                                               ; preds = %62, %80, %52, %16, %92, %72, %9
  %96 = phi i32 [ 9, %9 ], [ 1, %72 ], [ 1, %92 ], [ 11, %16 ], [ %54, %52 ], [ 0, %80 ], [ 0, %62 ]
  ret i32 %96
}

; Function Attrs: cold nounwind uwtable
define internal void @block_encoder_end(ptr noundef %0, ptr noundef %1) #0 !prof !47 !PGOFuncName !95 {
  tail call void @lzma_next_end(ptr noundef %0, ptr noundef %1) #5
  tail call void @lzma_free(ptr noundef %0, ptr noundef %1) #5
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal i32 @block_encoder_update(ptr noundef %0, ptr noundef %1, ptr nocapture readnone %2, ptr noundef %3) #0 !prof !96 {
  %5 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 2
  %6 = load i32, ptr %5, align 8, !tbaa !68
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %4
  %9 = tail call i32 @lzma_next_filter_update(ptr noundef %0, ptr noundef %1, ptr noundef %3) #5
  br label %10

10:                                               ; preds = %4, %8
  %11 = phi i32 [ %9, %8 ], [ 11, %4 ]
  ret i32 %11
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

declare void @lzma_check_init(ptr noundef, i32 noundef) local_unnamed_addr #1

declare i32 @lzma_raw_encoder_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind uwtable
define dso_local i32 @lzma_block_encoder(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !96 {
  %3 = tail call i32 @lzma_strm_init(ptr noundef %0) #5
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %19

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.lzma_stream, ptr %0, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !97
  %8 = getelementptr inbounds %struct.lzma_stream, ptr %0, i64 0, i32 6
  %9 = load ptr, ptr %8, align 8, !tbaa !99
  %10 = tail call i32 @lzma_block_encoder_init(ptr noundef %7, ptr noundef %9, ptr noundef %1)
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %5
  tail call void @lzma_end(ptr noundef %0) #5
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

declare i32 @lzma_check_size(i32 noundef) local_unnamed_addr #1

declare i64 @lzma_bufcpy(ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare void @lzma_free(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @lzma_next_filter_update(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!46}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45}
!35 = !{ptr @lzma_block_encoder_init, ptr @lzma_next_end, i64 1}
!36 = !{ptr @lzma_block_encoder_init, ptr @lzma_check_is_supported, i64 1}
!37 = !{ptr @lzma_block_encoder_init, ptr @lzma_alloc, i64 1}
!38 = !{ptr @lzma_block_encoder_init, ptr @lzma_check_init, i64 1}
!39 = !{ptr @lzma_block_encoder_init, ptr @lzma_raw_encoder_init, i64 1}
!40 = !{ptr @block_encode, ptr @lzma_check_update, i64 36316}
!41 = !{ptr @block_encode, ptr @lzma_check_finish, i64 1}
!42 = !{ptr @block_encode, ptr @lzma_check_size, i64 1}
!43 = !{ptr @block_encode, ptr @lzma_bufcpy, i64 1}
!44 = !{ptr @block_encoder_end, ptr @lzma_next_end, i64 1}
!45 = !{ptr @block_encoder_end, ptr @lzma_free, i64 1}
!46 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!47 = !{!"function_entry_count", i64 1}
!48 = !{!49, !53, i64 16}
!49 = !{!"lzma_next_coder_s", !50, i64 0, !53, i64 8, !53, i64 16, !50, i64 24, !50, i64 32, !50, i64 40, !50, i64 48, !50, i64 56}
!50 = !{!"any pointer", !51, i64 0}
!51 = !{!"omnipotent char", !52, i64 0}
!52 = !{!"Simple C/C++ TBAA"}
!53 = !{!"long", !51, i64 0}
!54 = !{!"branch_weights", i32 0, i32 1}
!55 = !{!56, !57, i64 0}
!56 = !{!"", !57, i64 0, !57, i64 4, !57, i64 8, !53, i64 16, !53, i64 24, !50, i64 32, !51, i64 40, !50, i64 104, !50, i64 112, !50, i64 120, !57, i64 128, !57, i64 132, !53, i64 136, !53, i64 144, !53, i64 152, !53, i64 160, !53, i64 168, !53, i64 176, !57, i64 184, !57, i64 188, !57, i64 192, !57, i64 196, !51, i64 200, !51, i64 201, !51, i64 202, !51, i64 203, !51, i64 204, !51, i64 205, !51, i64 206, !51, i64 207}
!57 = !{!"int", !51, i64 0}
!58 = !{!"branch_weights", i32 1, i32 0}
!59 = !{!56, !57, i64 8}
!60 = !{!49, !50, i64 0}
!61 = !{!49, !50, i64 24}
!62 = !{!49, !50, i64 32}
!63 = !{!49, !50, i64 56}
!64 = !{i64 0, i64 8, !65, i64 8, i64 8, !66, i64 16, i64 8, !66, i64 24, i64 8, !65, i64 32, i64 8, !65, i64 40, i64 8, !65, i64 48, i64 8, !65, i64 56, i64 8, !65}
!65 = !{!50, !50, i64 0}
!66 = !{!53, !53, i64 0}
!67 = !{i64 0, i64 8, !66, i64 8, i64 8, !66, i64 16, i64 8, !65, i64 24, i64 8, !65, i64 32, i64 8, !65, i64 40, i64 8, !65, i64 48, i64 8, !65}
!68 = !{!69, !57, i64 72}
!69 = !{!"lzma_coder_s", !49, i64 0, !50, i64 64, !57, i64 72, !53, i64 80, !53, i64 88, !53, i64 96, !70, i64 104}
!70 = !{!"", !51, i64 0, !51, i64 64}
!71 = !{!69, !50, i64 64}
!72 = !{!56, !50, i64 32}
!73 = !{!"function_entry_count", i64 36316}
!74 = !{!"liblzma/common/block_encoder.c;block_encode"}
!75 = !{!69, !53, i64 88}
!76 = !{!"branch_weights", i32 0, i32 36316}
!77 = !{!"branch_weights", i32 0, i32 36316, i32 0, i32 0}
!78 = !{!69, !50, i64 24}
!79 = !{!69, !50, i64 0}
!80 = !{!"VP", i32 0, i64 36316, i64 1483926104714810873, i64 36316}
!81 = !{!69, !53, i64 80}
!82 = !{!"branch_weights", i32 36315, i32 1}
!83 = !{!56, !53, i64 16}
!84 = !{!56, !53, i64 24}
!85 = !{!"branch_weights", i32 1, i32 36315}
!86 = !{!"branch_weights", i32 1, i32 127}
!87 = !{!"branch_weights", i32 2, i32 0}
!88 = !{!51, !51, i64 0}
!89 = !{!"branch_weights", i32 127, i32 129}
!90 = distinct !{!90, !91, !92}
!91 = !{!"llvm.loop.mustprogress"}
!92 = !{!"llvm.loop.unroll.disable"}
!93 = !{!69, !53, i64 96}
!94 = !{!"VP", i32 1, i64 1, i64 8, i64 1}
!95 = !{!"liblzma/common/block_encoder.c;block_encoder_end"}
!96 = !{!"function_entry_count", i64 0}
!97 = !{!98, !50, i64 56}
!98 = !{!"", !50, i64 0, !53, i64 8, !53, i64 16, !50, i64 24, !53, i64 32, !53, i64 40, !50, i64 48, !50, i64 56, !50, i64 64, !50, i64 72, !50, i64 80, !50, i64 88, !53, i64 96, !53, i64 104, !53, i64 112, !53, i64 120, !57, i64 128, !57, i64 132}
!99 = !{!98, !50, i64 48}
!100 = !{!101, !101, i64 0}
!101 = !{!"_Bool", !51, i64 0}
