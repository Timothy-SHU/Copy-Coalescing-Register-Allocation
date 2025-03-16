; ModuleID = 'gsinit.c'
source_filename = "gsinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gs_memory_s = type { %struct.gs_memory_procs_s }
%struct.gs_memory_procs_s = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@gs_memory_default = external global %struct.gs_memory_s, align 8
@gs_debug_out = external local_unnamed_addr global ptr, align 8
@gs_debug = external local_unnamed_addr global [128 x i8], align 16
@gx_init_table = external local_unnamed_addr global [0 x ptr], align 8
@stderr = external local_unnamed_addr global ptr, align 8

; Function Attrs: nounwind uwtable
define dso_local void @gs_lib_init(ptr noundef %0) local_unnamed_addr #0 {
  store ptr %0, ptr @gs_debug_out, align 8, !tbaa !5
  tail call void @gs_malloc_init() #4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) @gs_debug, i8 0, i64 128, i1 false)
  %2 = load ptr, ptr @gx_init_table, align 8, !tbaa !5
  %3 = icmp eq ptr %2, null
  br i1 %3, label %10, label %4

4:                                                ; preds = %1, %4
  %5 = phi ptr [ %8, %4 ], [ %2, %1 ]
  %6 = phi ptr [ %7, %4 ], [ @gx_init_table, %1 ]
  tail call void %5(ptr noundef nonnull @gs_memory_default) #4
  %7 = getelementptr inbounds ptr, ptr %6, i64 1
  %8 = load ptr, ptr %7, align 8, !tbaa !5
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %4, !llvm.loop !9

10:                                               ; preds = %4, %1
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @gs_lib_init0(ptr noundef %0) local_unnamed_addr #0 {
  store ptr %0, ptr @gs_debug_out, align 8, !tbaa !5
  tail call void @gs_malloc_init() #4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) @gs_debug, i8 0, i64 128, i1 false)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @gs_lib_init1(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @gx_init_table, align 8, !tbaa !5
  %3 = icmp eq ptr %2, null
  br i1 %3, label %10, label %4

4:                                                ; preds = %1, %4
  %5 = phi ptr [ %8, %4 ], [ %2, %1 ]
  %6 = phi ptr [ %7, %4 ], [ @gx_init_table, %1 ]
  tail call void %5(ptr noundef %0) #4
  %7 = getelementptr inbounds ptr, ptr %6, i64 1
  %8 = load ptr, ptr %7, align 8, !tbaa !5
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %4, !llvm.loop !9

10:                                               ; preds = %4, %1
  ret void
}

declare void @gs_malloc_init() local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: nounwind uwtable
define dso_local void @gs_lib_finit(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr @stderr, align 8, !tbaa !5
  %4 = tail call i32 @fflush(ptr noundef %3)
  tail call void @gp_exit(i32 noundef %0, i32 noundef %1) #4
  tail call void @gs_malloc_release() #4
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #3

declare void @gp_exit(i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @gs_malloc_release() local_unnamed_addr #1

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.unroll.disable"}
