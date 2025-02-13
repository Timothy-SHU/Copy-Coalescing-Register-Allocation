; ModuleID = 'liblzma/common/block_header_decoder.c'
source_filename = "liblzma/common/block_header_decoder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.lzma_block = type { i32, i32, i32, i64, i64, ptr, [64 x i8], ptr, ptr, ptr, i32, i32, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.lzma_filter = type { i64, ptr }

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @lzma_block_header_decode(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca i64, align 8
  %5 = getelementptr inbounds %struct.lzma_block, ptr %0, i64 0, i32 5
  %6 = load ptr, ptr %5, align 8, !tbaa !6
  br label %15

7:                                                ; preds = %15
  store i32 0, ptr %0, align 8, !tbaa !13
  %8 = load i8, ptr %2, align 1, !tbaa !14
  %9 = zext i8 %8 to i32
  %10 = shl nuw nsw i32 %9, 2
  %11 = add nuw nsw i32 %10, 4
  %12 = getelementptr inbounds %struct.lzma_block, ptr %0, i64 0, i32 1
  %13 = load i32, ptr %12, align 4, !tbaa !15
  %14 = icmp eq i32 %11, %13
  br i1 %14, label %21, label %83

15:                                               ; preds = %3, %15
  %16 = phi i64 [ 0, %3 ], [ %19, %15 ]
  %17 = getelementptr inbounds %struct.lzma_filter, ptr %6, i64 %16
  store i64 -1, ptr %17, align 8, !tbaa !16
  %18 = getelementptr inbounds %struct.lzma_filter, ptr %6, i64 %16, i32 1
  store ptr null, ptr %18, align 8, !tbaa !18
  %19 = add nuw nsw i64 %16, 1
  %20 = icmp eq i64 %19, 5
  br i1 %20, label %7, label %15, !llvm.loop !19

21:                                               ; preds = %7
  %22 = getelementptr inbounds %struct.lzma_block, ptr %0, i64 0, i32 2
  %23 = load i32, ptr %22, align 8, !tbaa !21
  %24 = icmp ugt i32 %23, 15
  br i1 %24, label %83, label %25

25:                                               ; preds = %21
  %26 = zext nneg i32 %10 to i64
  %27 = tail call i32 @lzma_crc32(ptr noundef nonnull %2, i64 noundef %26, i32 noundef 0) #4
  %28 = getelementptr inbounds i8, ptr %2, i64 %26
  %29 = tail call fastcc i32 @unaligned_read32le(ptr noundef nonnull %28) #5
  %30 = icmp eq i32 %27, %29
  br i1 %30, label %31, label %83

31:                                               ; preds = %25
  %32 = getelementptr inbounds i8, ptr %2, i64 1
  %33 = load i8, ptr %32, align 1, !tbaa !14
  %34 = and i8 %33, 60
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %36, label %83

36:                                               ; preds = %31
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #6
  store i64 2, ptr %4, align 8, !tbaa !22
  %37 = and i8 %33, 64
  %38 = icmp eq i8 %37, 0
  %39 = getelementptr inbounds %struct.lzma_block, ptr %0, i64 0, i32 3
  br i1 %38, label %46, label %40

40:                                               ; preds = %36
  %41 = call i32 @lzma_vli_decode(ptr noundef nonnull %39, ptr noundef null, ptr noundef nonnull %2, ptr noundef nonnull %4, i64 noundef %26) #4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %81

43:                                               ; preds = %40
  %44 = call i64 @lzma_block_unpadded_size(ptr noundef nonnull %0) #4
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %81, label %47

46:                                               ; preds = %36
  store i64 -1, ptr %39, align 8, !tbaa !23
  br label %47

47:                                               ; preds = %43, %46
  %48 = load i8, ptr %32, align 1, !tbaa !14
  %49 = icmp sgt i8 %48, -1
  %50 = getelementptr inbounds %struct.lzma_block, ptr %0, i64 0, i32 4
  br i1 %49, label %54, label %51

51:                                               ; preds = %47
  %52 = call i32 @lzma_vli_decode(ptr noundef nonnull %50, ptr noundef null, ptr noundef nonnull %2, ptr noundef nonnull %4, i64 noundef %26) #4
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %55, label %81

54:                                               ; preds = %47
  store i64 -1, ptr %50, align 8, !tbaa !24
  br label %55

55:                                               ; preds = %51, %54
  %56 = load i8, ptr %32, align 1, !tbaa !14
  %57 = and i8 %56, 3
  %58 = add nuw nsw i8 %57, 1
  %59 = zext nneg i8 %58 to i64
  br label %65

60:                                               ; preds = %65
  %61 = add nuw nsw i64 %66, 1
  %62 = icmp eq i64 %61, %59
  br i1 %62, label %63, label %65, !llvm.loop !25

63:                                               ; preds = %60
  %64 = load i64, ptr %4, align 8, !tbaa !22
  br label %71

65:                                               ; preds = %55, %60
  %66 = phi i64 [ 0, %55 ], [ %61, %60 ]
  %67 = load ptr, ptr %5, align 8, !tbaa !6
  %68 = getelementptr inbounds %struct.lzma_filter, ptr %67, i64 %66
  %69 = call i32 @lzma_filter_flags_decode(ptr noundef %68, ptr noundef %1, ptr noundef nonnull %2, ptr noundef nonnull %4, i64 noundef %26) #4
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %60, label %79

71:                                               ; preds = %63, %74
  %72 = phi i64 [ %64, %63 ], [ %75, %74 ]
  %73 = icmp ult i64 %72, %26
  br i1 %73, label %74, label %81

74:                                               ; preds = %71
  %75 = add nuw nsw i64 %72, 1
  store i64 %75, ptr %4, align 8, !tbaa !22
  %76 = getelementptr inbounds i8, ptr %2, i64 %72
  %77 = load i8, ptr %76, align 1, !tbaa !14
  %78 = icmp eq i8 %77, 0
  br i1 %78, label %71, label %79, !llvm.loop !26

79:                                               ; preds = %65, %74
  %80 = phi i32 [ 8, %74 ], [ %69, %65 ]
  call fastcc void @free_properties(ptr noundef nonnull %0, ptr noundef %1) #5
  br label %81

81:                                               ; preds = %71, %79, %43, %40, %51
  %82 = phi i32 [ %52, %51 ], [ %41, %40 ], [ 9, %43 ], [ %80, %79 ], [ 0, %71 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #6
  br label %83

83:                                               ; preds = %81, %25, %31, %7, %21
  %84 = phi i32 [ 11, %21 ], [ 11, %7 ], [ %82, %81 ], [ 9, %25 ], [ 8, %31 ]
  ret i32 %84
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare i32 @lzma_crc32(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @unaligned_read32le(ptr nocapture noundef readonly %0) unnamed_addr #3 {
  %2 = load i32, ptr %0, align 1
  ret i32 %2
}

; Function Attrs: optsize
declare i32 @lzma_vli_decode(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i64 @lzma_block_unpadded_size(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @lzma_filter_flags_decode(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @free_properties(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.lzma_block, ptr %0, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !6
  br label %6

5:                                                ; preds = %6
  ret void

6:                                                ; preds = %2, %6
  %7 = phi ptr [ %4, %2 ], [ %11, %6 ]
  %8 = phi i64 [ 0, %2 ], [ %14, %6 ]
  %9 = getelementptr inbounds %struct.lzma_filter, ptr %7, i64 %8, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !18
  tail call void @lzma_free(ptr noundef %10, ptr noundef %1) #4
  %11 = load ptr, ptr %3, align 8, !tbaa !6
  %12 = getelementptr inbounds %struct.lzma_filter, ptr %11, i64 %8
  store i64 -1, ptr %12, align 8, !tbaa !16
  %13 = getelementptr inbounds %struct.lzma_filter, ptr %11, i64 %8, i32 1
  store ptr null, ptr %13, align 8, !tbaa !18
  %14 = add nuw nsw i64 %8, 1
  %15 = icmp eq i64 %14, 4
  br i1 %15, label %5, label %6, !llvm.loop !27
}

; Function Attrs: optsize
declare void @lzma_free(ptr noundef, ptr noundef) local_unnamed_addr #2

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind optsize }
attributes #5 = { optsize }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"openmp", i32 51}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!6 = !{!7, !12, i64 32}
!7 = !{!"", !8, i64 0, !8, i64 4, !8, i64 8, !11, i64 16, !11, i64 24, !12, i64 32, !9, i64 40, !12, i64 104, !12, i64 112, !12, i64 120, !8, i64 128, !8, i64 132, !11, i64 136, !11, i64 144, !11, i64 152, !11, i64 160, !11, i64 168, !11, i64 176, !8, i64 184, !8, i64 188, !8, i64 192, !8, i64 196, !9, i64 200, !9, i64 201, !9, i64 202, !9, i64 203, !9, i64 204, !9, i64 205, !9, i64 206, !9, i64 207}
!8 = !{!"int", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!"long", !9, i64 0}
!12 = !{!"any pointer", !9, i64 0}
!13 = !{!7, !8, i64 0}
!14 = !{!9, !9, i64 0}
!15 = !{!7, !8, i64 4}
!16 = !{!17, !11, i64 0}
!17 = !{!"", !11, i64 0, !12, i64 8}
!18 = !{!17, !12, i64 8}
!19 = distinct !{!19, !20}
!20 = !{!"llvm.loop.mustprogress"}
!21 = !{!7, !8, i64 8}
!22 = !{!11, !11, i64 0}
!23 = !{!7, !11, i64 16}
!24 = !{!7, !11, i64 24}
!25 = distinct !{!25, !20}
!26 = distinct !{!26, !20}
!27 = distinct !{!27, !20}
