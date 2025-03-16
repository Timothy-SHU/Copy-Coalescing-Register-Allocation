; ModuleID = 'icontext.c'
source_filename = "icontext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ref_stack_s = type { ptr, ptr, ptr, %struct.ref_s, i32, i32, %struct.ref_s, i32, i32, i32, i32, i32, %struct.ref_s, i32, i32, i32, ptr }
%struct.ref_s = type { %struct.tas_s, %union.v }
%struct.tas_s = type { i16, i16 }
%union.v = type { i64 }
%struct.gs_dual_memory_s = type { ptr, %union.vm_spaces_s, i32, i32, ptr, i32, i32 }
%union.vm_spaces_s = type { [4 x ptr] }
%struct.gs_context_state_s = type { %struct.ref_stack_s, %struct.ref_stack_s, %struct.ref_stack_s, ptr, %struct.gs_dual_memory_s, %struct.ref_s, %struct.ref_s, i64, i64, i32 }
%struct.gs_ref_memory_s = type { %struct.gs_memory_procs_s, ptr, i32, i32, ptr, i32, %struct.gs_memory_gc_status_s, i64, ptr, ptr, %struct.chunk_s, ptr, %struct.chunk_locator_s, i64, i64, i64, %struct.lost_, ptr, i32, ptr, ptr, ptr, %struct.gs_memory_status_s, [101 x ptr] }
%struct.gs_memory_procs_s = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.gs_memory_gc_status_s = type { i64, i64, ptr, i32, i32, i64 }
%struct.chunk_s = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i16, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr }
%struct.chunk_locator_s = type { ptr, ptr }
%struct.lost_ = type { i64, i64, i64 }
%struct.gs_memory_status_s = type { i64, i64 }

@d_stack = external local_unnamed_addr global %struct.ref_stack_s, align 8
@e_stack = external local_unnamed_addr global %struct.ref_stack_s, align 8
@o_stack = external local_unnamed_addr global %struct.ref_stack_s, align 8
@igs = external local_unnamed_addr global ptr, align 8
@gs_imemory = external local_unnamed_addr global %struct.gs_dual_memory_s, align 8
@ref_array_packing = external local_unnamed_addr global %struct.ref_s, align 8
@ref_binary_object_format = external local_unnamed_addr global %struct.ref_s, align 8
@zrand_state = external local_unnamed_addr global i64, align 8

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @context_state_alloc(ptr noundef %0, ptr nocapture noundef readnone %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.gs_context_state_s, ptr %0, i64 0, i32 5
  %4 = getelementptr inbounds %struct.gs_context_state_s, ptr %0, i64 0, i32 5, i32 1
  store i16 0, ptr %4, align 8, !tbaa !5
  store i16 256, ptr %3, align 8, !tbaa !8
  %5 = getelementptr inbounds %struct.gs_context_state_s, ptr %0, i64 0, i32 6
  %6 = getelementptr inbounds %struct.gs_context_state_s, ptr %0, i64 0, i32 6, i32 1
  store i64 0, ptr %6, align 8, !tbaa !5
  store i16 2816, ptr %5, align 8, !tbaa !18
  %7 = getelementptr inbounds %struct.gs_context_state_s, ptr %0, i64 0, i32 7
  tail call void @zrand_state_init(ptr noundef nonnull %7) #5
  %8 = getelementptr inbounds %struct.gs_context_state_s, ptr %0, i64 0, i32 8
  store i64 0, ptr %8, align 8, !tbaa !19
  %9 = getelementptr inbounds %struct.gs_context_state_s, ptr %0, i64 0, i32 9
  store i32 0, ptr %9, align 8, !tbaa !20
  ret i32 0
}

declare void @zrand_state_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @context_state_load(ptr nocapture noundef readonly %0) local_unnamed_addr #2 {
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) @d_stack, ptr noundef nonnull align 8 dereferenceable(128) %0, i64 128, i1 false), !tbaa.struct !21
  %2 = getelementptr inbounds %struct.gs_context_state_s, ptr %0, i64 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) @e_stack, ptr noundef nonnull align 8 dereferenceable(128) %2, i64 128, i1 false), !tbaa.struct !21
  %3 = getelementptr inbounds %struct.gs_context_state_s, ptr %0, i64 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) @o_stack, ptr noundef nonnull align 8 dereferenceable(128) %3, i64 128, i1 false), !tbaa.struct !21
  %4 = getelementptr inbounds %struct.gs_context_state_s, ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !28
  store ptr %5, ptr @igs, align 8, !tbaa !22
  %6 = getelementptr inbounds %struct.gs_context_state_s, ptr %0, i64 0, i32 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) @gs_imemory, ptr noundef nonnull align 8 dereferenceable(64) %6, i64 64, i1 false), !tbaa.struct !29
  %7 = getelementptr inbounds %struct.gs_context_state_s, ptr %0, i64 0, i32 5
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @ref_array_packing, ptr noundef nonnull align 8 dereferenceable(16) %7, i64 16, i1 false), !tbaa.struct !30
  %8 = getelementptr inbounds %struct.gs_context_state_s, ptr %0, i64 0, i32 6
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @ref_binary_object_format, ptr noundef nonnull align 8 dereferenceable(16) %8, i64 16, i1 false), !tbaa.struct !30
  %9 = getelementptr inbounds %struct.gs_context_state_s, ptr %0, i64 0, i32 7
  %10 = load i64, ptr %9, align 8, !tbaa !31
  store i64 %10, ptr @zrand_state, align 8, !tbaa !24
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @context_state_store(ptr nocapture noundef writeonly %0) local_unnamed_addr #2 {
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(128) @d_stack, i64 128, i1 false), !tbaa.struct !21
  %2 = getelementptr inbounds %struct.gs_context_state_s, ptr %0, i64 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %2, ptr noundef nonnull align 8 dereferenceable(128) @e_stack, i64 128, i1 false), !tbaa.struct !21
  %3 = getelementptr inbounds %struct.gs_context_state_s, ptr %0, i64 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %3, ptr noundef nonnull align 8 dereferenceable(128) @o_stack, i64 128, i1 false), !tbaa.struct !21
  %4 = load ptr, ptr @igs, align 8, !tbaa !22
  %5 = getelementptr inbounds %struct.gs_context_state_s, ptr %0, i64 0, i32 3
  store ptr %4, ptr %5, align 8, !tbaa !28
  %6 = getelementptr inbounds %struct.gs_context_state_s, ptr %0, i64 0, i32 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %6, ptr noundef nonnull align 8 dereferenceable(64) @gs_imemory, i64 64, i1 false), !tbaa.struct !29
  %7 = getelementptr inbounds %struct.gs_context_state_s, ptr %0, i64 0, i32 5
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) @ref_array_packing, i64 16, i1 false), !tbaa.struct !30
  %8 = getelementptr inbounds %struct.gs_context_state_s, ptr %0, i64 0, i32 6
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(16) @ref_binary_object_format, i64 16, i1 false), !tbaa.struct !30
  %9 = load i64, ptr @zrand_state, align 8, !tbaa !24
  %10 = getelementptr inbounds %struct.gs_context_state_s, ptr %0, i64 0, i32 7
  store i64 %9, ptr %10, align 8, !tbaa !31
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @context_state_free(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1) local_unnamed_addr #4 {
  %3 = getelementptr inbounds %struct.gs_context_state_s, ptr %0, i64 0, i32 4, i32 1
  br label %4

4:                                                ; preds = %2, %13
  %5 = phi i64 [ 0, %2 ], [ %14, %13 ]
  %6 = getelementptr inbounds [4 x ptr], ptr %3, i64 0, i64 %5
  %7 = load ptr, ptr %6, align 8, !tbaa !5
  %8 = icmp eq ptr %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.gs_ref_memory_s, ptr %7, i64 0, i32 18
  %11 = load i32, ptr %10, align 8, !tbaa !32
  %12 = add nsw i32 %11, -1
  store i32 %12, ptr %10, align 8, !tbaa !32
  br label %13

13:                                               ; preds = %9, %4
  %14 = add nuw nsw i64 %5, 1
  %15 = icmp eq i64 %14, 4
  br i1 %15, label %16, label %4, !llvm.loop !40

16:                                               ; preds = %13
  ret void
}

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !14, i64 456}
!9 = !{!"gs_context_state_s", !10, i64 0, !10, i64 128, !10, i64 256, !11, i64 384, !16, i64 392, !12, i64 456, !12, i64 472, !17, i64 488, !17, i64 496, !15, i64 504}
!10 = !{!"ref_stack_s", !11, i64 0, !11, i64 8, !11, i64 16, !12, i64 24, !15, i64 40, !15, i64 44, !12, i64 48, !15, i64 64, !15, i64 68, !15, i64 72, !15, i64 76, !15, i64 80, !12, i64 88, !15, i64 104, !15, i64 108, !15, i64 112, !11, i64 120}
!11 = !{!"any pointer", !6, i64 0}
!12 = !{!"ref_s", !13, i64 0, !6, i64 8}
!13 = !{!"tas_s", !14, i64 0, !14, i64 2}
!14 = !{!"short", !6, i64 0}
!15 = !{!"int", !6, i64 0}
!16 = !{!"gs_dual_memory_s", !11, i64 0, !6, i64 8, !15, i64 40, !15, i64 44, !11, i64 48, !15, i64 56, !15, i64 60}
!17 = !{!"long", !6, i64 0}
!18 = !{!9, !14, i64 472}
!19 = !{!9, !17, i64 496}
!20 = !{!9, !15, i64 504}
!21 = !{i64 0, i64 8, !22, i64 8, i64 8, !22, i64 16, i64 8, !22, i64 24, i64 2, !23, i64 26, i64 2, !23, i64 32, i64 8, !24, i64 32, i64 2, !23, i64 32, i64 4, !25, i64 32, i64 8, !24, i64 32, i64 8, !22, i64 32, i64 8, !22, i64 32, i64 8, !22, i64 32, i64 8, !22, i64 32, i64 8, !22, i64 32, i64 8, !22, i64 32, i64 8, !22, i64 32, i64 8, !22, i64 32, i64 8, !22, i64 32, i64 8, !22, i64 32, i64 8, !22, i64 32, i64 8, !22, i64 32, i64 8, !22, i64 40, i64 4, !27, i64 44, i64 4, !27, i64 48, i64 2, !23, i64 50, i64 2, !23, i64 56, i64 8, !24, i64 56, i64 2, !23, i64 56, i64 4, !25, i64 56, i64 8, !24, i64 56, i64 8, !22, i64 56, i64 8, !22, i64 56, i64 8, !22, i64 56, i64 8, !22, i64 56, i64 8, !22, i64 56, i64 8, !22, i64 56, i64 8, !22, i64 56, i64 8, !22, i64 56, i64 8, !22, i64 56, i64 8, !22, i64 56, i64 8, !22, i64 56, i64 8, !22, i64 56, i64 8, !22, i64 64, i64 4, !27, i64 68, i64 4, !27, i64 72, i64 4, !27, i64 76, i64 4, !27, i64 80, i64 4, !27, i64 88, i64 2, !23, i64 90, i64 2, !23, i64 96, i64 8, !24, i64 96, i64 2, !23, i64 96, i64 4, !25, i64 96, i64 8, !24, i64 96, i64 8, !22, i64 96, i64 8, !22, i64 96, i64 8, !22, i64 96, i64 8, !22, i64 96, i64 8, !22, i64 96, i64 8, !22, i64 96, i64 8, !22, i64 96, i64 8, !22, i64 96, i64 8, !22, i64 96, i64 8, !22, i64 96, i64 8, !22, i64 96, i64 8, !22, i64 96, i64 8, !22, i64 104, i64 4, !27, i64 108, i64 4, !27, i64 112, i64 4, !27, i64 120, i64 8, !22}
!22 = !{!11, !11, i64 0}
!23 = !{!14, !14, i64 0}
!24 = !{!17, !17, i64 0}
!25 = !{!26, !26, i64 0}
!26 = !{!"float", !6, i64 0}
!27 = !{!15, !15, i64 0}
!28 = !{!9, !11, i64 384}
!29 = !{i64 0, i64 8, !22, i64 8, i64 32, !5, i64 8, i64 8, !22, i64 16, i64 8, !22, i64 24, i64 8, !22, i64 32, i64 8, !22, i64 40, i64 4, !27, i64 44, i64 4, !27, i64 48, i64 8, !22, i64 56, i64 4, !27, i64 60, i64 4, !27}
!30 = !{i64 0, i64 2, !23, i64 2, i64 2, !23, i64 8, i64 8, !24, i64 8, i64 2, !23, i64 8, i64 4, !25, i64 8, i64 8, !24, i64 8, i64 8, !22, i64 8, i64 8, !22, i64 8, i64 8, !22, i64 8, i64 8, !22, i64 8, i64 8, !22, i64 8, i64 8, !22, i64 8, i64 8, !22, i64 8, i64 8, !22, i64 8, i64 8, !22, i64 8, i64 8, !22, i64 8, i64 8, !22, i64 8, i64 8, !22, i64 8, i64 8, !22}
!31 = !{!9, !17, i64 488}
!32 = !{!33, !15, i64 512}
!33 = !{!"gs_ref_memory_s", !34, i64 0, !11, i64 160, !15, i64 168, !15, i64 172, !11, i64 176, !15, i64 184, !35, i64 192, !17, i64 232, !11, i64 240, !11, i64 248, !36, i64 256, !11, i64 432, !37, i64 440, !17, i64 456, !17, i64 464, !17, i64 472, !38, i64 480, !11, i64 504, !15, i64 512, !11, i64 520, !11, i64 528, !11, i64 536, !39, i64 544, !6, i64 560}
!34 = !{!"gs_memory_procs_s", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !11, i64 40, !11, i64 48, !11, i64 56, !11, i64 64, !11, i64 72, !11, i64 80, !11, i64 88, !11, i64 96, !11, i64 104, !11, i64 112, !11, i64 120, !11, i64 128, !11, i64 136, !11, i64 144, !11, i64 152}
!35 = !{!"gs_memory_gc_status_s", !17, i64 0, !17, i64 8, !11, i64 16, !15, i64 24, !15, i64 28, !17, i64 32}
!36 = !{!"chunk_s", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !11, i64 40, !11, i64 48, !11, i64 56, !11, i64 64, !11, i64 72, !11, i64 80, !15, i64 88, !15, i64 92, !11, i64 96, !14, i64 104, !11, i64 112, !11, i64 120, !15, i64 128, !11, i64 136, !11, i64 144, !11, i64 152, !11, i64 160, !11, i64 168}
!37 = !{!"chunk_locator_s", !11, i64 0, !11, i64 8}
!38 = !{!"lost_", !17, i64 0, !17, i64 8, !17, i64 16}
!39 = !{!"gs_memory_status_s", !17, i64 0, !17, i64 8}
!40 = distinct !{!40, !41}
!41 = !{!"llvm.loop.unroll.disable"}
