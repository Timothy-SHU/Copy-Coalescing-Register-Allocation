; ModuleID = 'ilocate.c'
source_filename = "ilocate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.chunk_locator_s = type { ptr, ptr }
%struct.chunk_s = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i16, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr }
%struct.gc_state_s = type { %struct.chunk_locator_s, %union.vm_spaces_s, i32, i32 }
%union.vm_spaces_s = type { [4 x ptr] }
%struct.gs_ref_memory_s = type { %struct.gs_memory_procs_s, ptr, i32, i32, ptr, i32, %struct.gs_memory_gc_status_s, i64, ptr, ptr, %struct.chunk_s, ptr, %struct.chunk_locator_s, i64, i64, i64, %struct.lost_, ptr, i32, ptr, ptr, ptr, %struct.gs_memory_status_s, [101 x ptr] }
%struct.gs_memory_procs_s = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.gs_memory_gc_status_s = type { i64, i64, ptr, i32, i32, i64 }
%struct.lost_ = type { i64, i64, i64 }
%struct.gs_memory_status_s = type { i64, i64 }

; Function Attrs: nounwind uwtable
define dso_local ptr @gc_locate(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.chunk_locator_s, ptr %1, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !5
  %5 = icmp eq ptr %4, null
  br i1 %5, label %26, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.chunk_s, ptr %4, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !12
  %9 = icmp ugt ptr %8, %0
  br i1 %9, label %26, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.chunk_s, ptr %4, i64 0, i32 7
  %12 = load ptr, ptr %11, align 8, !tbaa !15
  %13 = icmp ugt ptr %12, %0
  br i1 %13, label %14, label %26

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.chunk_s, ptr %4, i64 0, i32 11
  %16 = load i32, ptr %15, align 8, !tbaa !16
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %29, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.chunk_s, ptr %4, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !17
  %21 = icmp ugt ptr %20, %0
  br i1 %21, label %29, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.chunk_s, ptr %4, i64 0, i32 5
  %24 = load ptr, ptr %23, align 8, !tbaa !18
  %25 = icmp ugt ptr %24, %0
  br i1 %25, label %26, label %29

26:                                               ; preds = %22, %10, %6, %2
  %27 = tail call i32 @chunk_locate_ptr(ptr noundef %0, ptr noundef %1) #3
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %26, %22, %18, %14
  %30 = load ptr, ptr %3, align 8, !tbaa !5
  br label %91

31:                                               ; preds = %26
  %32 = load ptr, ptr %1, align 8, !tbaa !19
  %33 = getelementptr inbounds %struct.gc_state_s, ptr %1, i64 0, i32 1, i32 0, i64 3
  %34 = load ptr, ptr %33, align 8, !tbaa !20
  %35 = getelementptr inbounds %struct.gc_state_s, ptr %1, i64 0, i32 1, i32 0, i64 2
  %36 = load ptr, ptr %35, align 8, !tbaa !20
  %37 = icmp eq ptr %34, %36
  br i1 %37, label %57, label %38

38:                                               ; preds = %31
  %39 = getelementptr inbounds %struct.gs_ref_memory_s, ptr %32, i64 0, i32 5
  %40 = load i32, ptr %39, align 8, !tbaa !21
  %41 = icmp eq i32 %40, 12
  %42 = select i1 %41, ptr %36, ptr %34
  store ptr %42, ptr %1, align 8, !tbaa !19
  store ptr null, ptr %3, align 8, !tbaa !5
  %43 = tail call i32 @chunk_locate_ptr(ptr noundef %0, ptr noundef nonnull %1) #3
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %47, label %45

45:                                               ; preds = %38
  %46 = load ptr, ptr %3, align 8, !tbaa !5
  br label %91

47:                                               ; preds = %38, %52
  %48 = load ptr, ptr %1, align 8, !tbaa !19
  %49 = getelementptr inbounds %struct.gs_ref_memory_s, ptr %48, i64 0, i32 20
  %50 = load ptr, ptr %49, align 8, !tbaa !28
  %51 = icmp eq ptr %50, null
  br i1 %51, label %57, label %52

52:                                               ; preds = %47
  store ptr %50, ptr %1, align 8, !tbaa !19
  store ptr null, ptr %3, align 8, !tbaa !5
  %53 = tail call i32 @chunk_locate_ptr(ptr noundef %0, ptr noundef nonnull %1) #3
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %47, label %55, !llvm.loop !29

55:                                               ; preds = %52
  %56 = load ptr, ptr %3, align 8, !tbaa !5
  br label %91

57:                                               ; preds = %47, %31
  %58 = getelementptr inbounds %struct.gc_state_s, ptr %1, i64 0, i32 1, i32 0, i64 1
  %59 = load ptr, ptr %58, align 8, !tbaa !20
  %60 = icmp eq ptr %32, %59
  br i1 %60, label %66, label %61

61:                                               ; preds = %57
  store ptr %59, ptr %1, align 8, !tbaa !19
  store ptr null, ptr %3, align 8, !tbaa !5
  %62 = tail call i32 @chunk_locate_ptr(ptr noundef %0, ptr noundef nonnull %1) #3
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %66, label %64

64:                                               ; preds = %61
  %65 = load ptr, ptr %3, align 8, !tbaa !5
  br label %91

66:                                               ; preds = %61, %57
  %67 = load ptr, ptr %58, align 8, !tbaa !20
  %68 = icmp eq ptr %32, %67
  br i1 %68, label %74, label %69

69:                                               ; preds = %66
  %70 = getelementptr inbounds %struct.gs_ref_memory_s, ptr %32, i64 0, i32 5
  %71 = load i32, ptr %70, align 8, !tbaa !21
  %72 = icmp eq i32 %71, 8
  %73 = select i1 %72, ptr %35, ptr %33
  br label %74

74:                                               ; preds = %69, %66
  %75 = phi ptr [ %35, %66 ], [ %73, %69 ]
  %76 = load ptr, ptr %75, align 8, !tbaa !20
  br label %77

77:                                               ; preds = %85, %74
  %78 = phi ptr [ %76, %74 ], [ %88, %85 ]
  store ptr %78, ptr %1, align 8, !tbaa !19
  %79 = icmp eq ptr %78, %32
  br i1 %79, label %85, label %80

80:                                               ; preds = %77
  store ptr null, ptr %3, align 8, !tbaa !5
  %81 = tail call i32 @chunk_locate_ptr(ptr noundef %0, ptr noundef nonnull %1) #3
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %85, label %83

83:                                               ; preds = %80
  %84 = load ptr, ptr %3, align 8, !tbaa !5
  br label %91

85:                                               ; preds = %80, %77
  %86 = load ptr, ptr %1, align 8, !tbaa !19
  %87 = getelementptr inbounds %struct.gs_ref_memory_s, ptr %86, i64 0, i32 20
  %88 = load ptr, ptr %87, align 8, !tbaa !28
  %89 = icmp eq ptr %88, null
  br i1 %89, label %90, label %77, !llvm.loop !31

90:                                               ; preds = %85
  store ptr %32, ptr %1, align 8, !tbaa !19
  store ptr null, ptr %3, align 8, !tbaa !5
  br label %91

91:                                               ; preds = %90, %83, %64, %55, %45, %29
  %92 = phi ptr [ %30, %29 ], [ %46, %45 ], [ %56, %55 ], [ %65, %64 ], [ %84, %83 ], [ null, %90 ]
  ret ptr %92
}

declare i32 @chunk_locate_ptr(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @ialloc_validate_spaces(ptr nocapture noundef readnone %0) local_unnamed_addr #2 {
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @ialloc_validate_memory(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1) local_unnamed_addr #2 {
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @ialloc_validate_chunk(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1) local_unnamed_addr #2 {
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @ialloc_validate_object(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readnone %2) local_unnamed_addr #2 {
  ret void
}

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !8, i64 8}
!6 = !{!"gc_state_s", !7, i64 0, !9, i64 16, !11, i64 48, !11, i64 52}
!7 = !{!"chunk_locator_s", !8, i64 0, !8, i64 8}
!8 = !{!"any pointer", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!"int", !9, i64 0}
!12 = !{!13, !8, i64 8}
!13 = !{!"chunk_s", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !8, i64 40, !8, i64 48, !8, i64 56, !8, i64 64, !8, i64 72, !8, i64 80, !11, i64 88, !11, i64 92, !8, i64 96, !14, i64 104, !8, i64 112, !8, i64 120, !11, i64 128, !8, i64 136, !8, i64 144, !8, i64 152, !8, i64 160, !8, i64 168}
!14 = !{!"short", !9, i64 0}
!15 = !{!13, !8, i64 56}
!16 = !{!13, !11, i64 88}
!17 = !{!13, !8, i64 16}
!18 = !{!13, !8, i64 40}
!19 = !{!6, !8, i64 0}
!20 = !{!9, !9, i64 0}
!21 = !{!22, !11, i64 184}
!22 = !{!"gs_ref_memory_s", !23, i64 0, !8, i64 160, !11, i64 168, !11, i64 172, !8, i64 176, !11, i64 184, !24, i64 192, !25, i64 232, !8, i64 240, !8, i64 248, !13, i64 256, !8, i64 432, !7, i64 440, !25, i64 456, !25, i64 464, !25, i64 472, !26, i64 480, !8, i64 504, !11, i64 512, !8, i64 520, !8, i64 528, !8, i64 536, !27, i64 544, !9, i64 560}
!23 = !{!"gs_memory_procs_s", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !8, i64 40, !8, i64 48, !8, i64 56, !8, i64 64, !8, i64 72, !8, i64 80, !8, i64 88, !8, i64 96, !8, i64 104, !8, i64 112, !8, i64 120, !8, i64 128, !8, i64 136, !8, i64 144, !8, i64 152}
!24 = !{!"gs_memory_gc_status_s", !25, i64 0, !25, i64 8, !8, i64 16, !11, i64 24, !11, i64 28, !25, i64 32}
!25 = !{!"long", !9, i64 0}
!26 = !{!"lost_", !25, i64 0, !25, i64 8, !25, i64 16}
!27 = !{!"gs_memory_status_s", !25, i64 0, !25, i64 8}
!28 = !{!22, !8, i64 528}
!29 = distinct !{!29, !30}
!30 = !{!"llvm.loop.unroll.disable"}
!31 = distinct !{!31, !30}
