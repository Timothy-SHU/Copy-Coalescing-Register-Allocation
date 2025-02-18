; ModuleID = 'blender/intern/guardedalloc/intern/mallocn.c'
source_filename = "blender/intern/guardedalloc/intern/mallocn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@MEM_allocN_len = dso_local local_unnamed_addr global ptr @MEM_lockfree_allocN_len, align 8
@MEM_freeN = dso_local local_unnamed_addr global ptr @MEM_lockfree_freeN, align 8
@MEM_dupallocN = dso_local local_unnamed_addr global ptr @MEM_lockfree_dupallocN, align 8
@MEM_reallocN_id = dso_local local_unnamed_addr global ptr @MEM_lockfree_reallocN_id, align 8
@MEM_recallocN_id = dso_local local_unnamed_addr global ptr @MEM_lockfree_recallocN_id, align 8
@MEM_callocN = dso_local local_unnamed_addr global ptr @MEM_lockfree_callocN, align 8
@MEM_mallocN = dso_local local_unnamed_addr global ptr @MEM_lockfree_mallocN, align 8
@MEM_mallocN_aligned = dso_local local_unnamed_addr global ptr @MEM_lockfree_mallocN_aligned, align 8
@MEM_mapallocN = dso_local local_unnamed_addr global ptr @MEM_lockfree_mapallocN, align 8
@MEM_printmemlist_pydict = dso_local local_unnamed_addr global ptr @MEM_lockfree_printmemlist_pydict, align 8
@MEM_printmemlist = dso_local local_unnamed_addr global ptr @MEM_lockfree_printmemlist, align 8
@MEM_callbackmemlist = dso_local local_unnamed_addr global ptr @MEM_lockfree_callbackmemlist, align 8
@MEM_printmemlist_stats = dso_local local_unnamed_addr global ptr @MEM_lockfree_printmemlist_stats, align 8
@MEM_set_error_callback = dso_local local_unnamed_addr global ptr @MEM_lockfree_set_error_callback, align 8
@MEM_check_memory_integrity = dso_local local_unnamed_addr global ptr @MEM_lockfree_check_memory_integrity, align 8
@MEM_set_lock_callback = dso_local local_unnamed_addr global ptr @MEM_lockfree_set_lock_callback, align 8
@MEM_set_memory_debug = dso_local local_unnamed_addr global ptr @MEM_lockfree_set_memory_debug, align 8
@MEM_get_memory_in_use = dso_local local_unnamed_addr global ptr @MEM_lockfree_get_memory_in_use, align 8
@MEM_get_mapped_memory_in_use = dso_local local_unnamed_addr global ptr @MEM_lockfree_get_mapped_memory_in_use, align 8
@MEM_get_memory_blocks_in_use = dso_local local_unnamed_addr global ptr @MEM_lockfree_get_memory_blocks_in_use, align 8
@MEM_reset_peak_memory = dso_local local_unnamed_addr global ptr @MEM_lockfree_reset_peak_memory, align 8
@MEM_get_peak_memory = dso_local local_unnamed_addr global ptr @MEM_lockfree_get_peak_memory, align 8

declare i64 @MEM_lockfree_allocN_len(ptr noundef) #0

declare void @MEM_lockfree_freeN(ptr noundef) #0

declare ptr @MEM_lockfree_dupallocN(ptr noundef) #0

declare ptr @MEM_lockfree_reallocN_id(ptr noundef, i64 noundef, ptr noundef) #0

declare ptr @MEM_lockfree_recallocN_id(ptr noundef, i64 noundef, ptr noundef) #0

declare ptr @MEM_lockfree_callocN(i64 noundef, ptr noundef) #0

declare ptr @MEM_lockfree_mallocN(i64 noundef, ptr noundef) #0

declare ptr @MEM_lockfree_mallocN_aligned(i64 noundef, i64 noundef, ptr noundef) #0

declare ptr @MEM_lockfree_mapallocN(i64 noundef, ptr noundef) #0

declare void @MEM_lockfree_printmemlist_pydict() #0

declare void @MEM_lockfree_printmemlist() #0

declare void @MEM_lockfree_callbackmemlist(ptr noundef) #0

declare void @MEM_lockfree_printmemlist_stats() #0

declare void @MEM_lockfree_set_error_callback(ptr noundef) #0

declare zeroext i8 @MEM_lockfree_check_memory_integrity() #0

declare void @MEM_lockfree_set_lock_callback(ptr noundef, ptr noundef) #0

declare void @MEM_lockfree_set_memory_debug() #0

declare i64 @MEM_lockfree_get_memory_in_use() #0

declare i64 @MEM_lockfree_get_mapped_memory_in_use() #0

declare i32 @MEM_lockfree_get_memory_blocks_in_use() #0

declare void @MEM_lockfree_reset_peak_memory() #0

declare i64 @MEM_lockfree_get_peak_memory() #0

; Function Attrs: mustprogress nofree nounwind willreturn memory(write, inaccessiblemem: readwrite) uwtable
define dso_local noundef ptr @aligned_malloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #1 {
  %3 = icmp eq i64 %1, 0
  br i1 %3, label %16, label %4

4:                                                ; preds = %2
  %5 = add i64 %1, 8
  %6 = add i64 %5, %0
  %7 = tail call noalias ptr @malloc(i64 noundef %6) #6
  %8 = ptrtoint ptr %7 to i64
  %9 = add i64 %1, 7
  %10 = add i64 %9, %8
  %11 = sub i64 0, %1
  %12 = and i64 %10, %11
  %13 = inttoptr i64 %12 to ptr
  %14 = add i64 %12, -8
  %15 = inttoptr i64 %14 to ptr
  store ptr %7, ptr %15, align 8, !tbaa !34
  br label %16

16:                                               ; preds = %2, %4
  %17 = phi ptr [ %13, %4 ], [ null, %2 ]
  ret ptr %17
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn uwtable
define dso_local void @aligned_free(ptr noundef %0) local_unnamed_addr #3 {
  %2 = ptrtoint ptr %0 to i64
  %3 = add i64 %2, -8
  %4 = inttoptr i64 %3 to ptr
  %5 = load ptr, ptr %4, align 8, !tbaa !34
  tail call void @free(ptr noundef %5) #7
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @MEM_use_guarded_allocator() local_unnamed_addr #5 {
  store ptr @MEM_guarded_allocN_len, ptr @MEM_allocN_len, align 8, !tbaa !34
  store ptr @MEM_guarded_freeN, ptr @MEM_freeN, align 8, !tbaa !34
  store ptr @MEM_guarded_dupallocN, ptr @MEM_dupallocN, align 8, !tbaa !34
  store ptr @MEM_guarded_reallocN_id, ptr @MEM_reallocN_id, align 8, !tbaa !34
  store ptr @MEM_guarded_recallocN_id, ptr @MEM_recallocN_id, align 8, !tbaa !34
  store ptr @MEM_guarded_callocN, ptr @MEM_callocN, align 8, !tbaa !34
  store ptr @MEM_guarded_mallocN, ptr @MEM_mallocN, align 8, !tbaa !34
  store ptr @MEM_guarded_mallocN_aligned, ptr @MEM_mallocN_aligned, align 8, !tbaa !34
  store ptr @MEM_guarded_mapallocN, ptr @MEM_mapallocN, align 8, !tbaa !34
  store ptr @MEM_guarded_printmemlist_pydict, ptr @MEM_printmemlist_pydict, align 8, !tbaa !34
  store ptr @MEM_guarded_printmemlist, ptr @MEM_printmemlist, align 8, !tbaa !34
  store ptr @MEM_guarded_callbackmemlist, ptr @MEM_callbackmemlist, align 8, !tbaa !34
  store ptr @MEM_guarded_printmemlist_stats, ptr @MEM_printmemlist_stats, align 8, !tbaa !34
  store ptr @MEM_guarded_set_error_callback, ptr @MEM_set_error_callback, align 8, !tbaa !34
  store ptr @MEM_guarded_check_memory_integrity, ptr @MEM_check_memory_integrity, align 8, !tbaa !34
  store ptr @MEM_guarded_set_lock_callback, ptr @MEM_set_lock_callback, align 8, !tbaa !34
  store ptr @MEM_guarded_set_memory_debug, ptr @MEM_set_memory_debug, align 8, !tbaa !34
  store ptr @MEM_guarded_get_memory_in_use, ptr @MEM_get_memory_in_use, align 8, !tbaa !34
  store ptr @MEM_guarded_get_mapped_memory_in_use, ptr @MEM_get_mapped_memory_in_use, align 8, !tbaa !34
  store ptr @MEM_guarded_get_memory_blocks_in_use, ptr @MEM_get_memory_blocks_in_use, align 8, !tbaa !34
  store ptr @MEM_guarded_reset_peak_memory, ptr @MEM_reset_peak_memory, align 8, !tbaa !34
  store ptr @MEM_guarded_get_peak_memory, ptr @MEM_get_peak_memory, align 8, !tbaa !34
  ret void
}

declare i64 @MEM_guarded_allocN_len(ptr noundef) #0

declare void @MEM_guarded_freeN(ptr noundef) #0

declare ptr @MEM_guarded_dupallocN(ptr noundef) #0

declare ptr @MEM_guarded_reallocN_id(ptr noundef, i64 noundef, ptr noundef) #0

declare ptr @MEM_guarded_recallocN_id(ptr noundef, i64 noundef, ptr noundef) #0

declare ptr @MEM_guarded_callocN(i64 noundef, ptr noundef) #0

declare ptr @MEM_guarded_mallocN(i64 noundef, ptr noundef) #0

declare ptr @MEM_guarded_mallocN_aligned(i64 noundef, i64 noundef, ptr noundef) #0

declare ptr @MEM_guarded_mapallocN(i64 noundef, ptr noundef) #0

declare void @MEM_guarded_printmemlist_pydict() #0

declare void @MEM_guarded_printmemlist() #0

declare void @MEM_guarded_callbackmemlist(ptr noundef) #0

declare void @MEM_guarded_printmemlist_stats() #0

declare void @MEM_guarded_set_error_callback(ptr noundef) #0

declare zeroext i8 @MEM_guarded_check_memory_integrity() #0

declare void @MEM_guarded_set_lock_callback(ptr noundef, ptr noundef) #0

declare void @MEM_guarded_set_memory_debug() #0

declare i64 @MEM_guarded_get_memory_in_use() #0

declare i64 @MEM_guarded_get_mapped_memory_in_use() #0

declare i32 @MEM_guarded_get_memory_blocks_in_use() #0

declare void @MEM_guarded_reset_peak_memory() #0

declare i64 @MEM_guarded_get_peak_memory() #0

attributes #0 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nounwind willreturn memory(write, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind allocsize(0) }
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
!7 = !{!"TotalCount", i64 7547212}
!8 = !{!"MaxCount", i64 1843200}
!9 = !{!"MaxInternalCount", i64 1843200}
!10 = !{!"MaxFunctionCount", i64 6}
!11 = !{!"NumCounts", i64 213}
!12 = !{!"NumFunctions", i64 14}
!13 = !{!"IsPartialProfile", i64 0}
!14 = !{!"PartialProfileRatio", double 0.000000e+00}
!15 = !{!"DetailedSummary", !16}
!16 = !{!17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32}
!17 = !{i32 10000, i64 1843200, i32 1}
!18 = !{i32 100000, i64 1843200, i32 1}
!19 = !{i32 200000, i64 1843200, i32 1}
!20 = !{i32 300000, i64 921600, i32 7}
!21 = !{i32 400000, i64 921600, i32 7}
!22 = !{i32 500000, i64 921600, i32 7}
!23 = !{i32 600000, i64 921600, i32 7}
!24 = !{i32 700000, i64 921600, i32 7}
!25 = !{i32 800000, i64 921600, i32 7}
!26 = !{i32 900000, i64 921600, i32 7}
!27 = !{i32 950000, i64 921600, i32 7}
!28 = !{i32 990000, i64 115200, i32 8}
!29 = !{i32 999000, i64 14400, i32 12}
!30 = !{i32 999900, i64 1440, i32 13}
!31 = !{i32 999990, i64 21, i32 15}
!32 = !{i32 999999, i64 1, i32 48}
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!35, !35, i64 0}
!35 = !{!"any pointer", !36, i64 0}
!36 = !{!"omnipotent char", !37, i64 0}
!37 = !{!"Simple C/C++ TBAA"}
