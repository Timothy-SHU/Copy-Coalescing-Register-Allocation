; ModuleID = 'slzwc.c'
source_filename = "slzwc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gs_memory_struct_type_s = type { i32, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.gs_ptr_procs_s = type { ptr, ptr, ptr }
%struct.stream_LZW_state_s = type { ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, %union._lzt, i32, i32, i32, i32, i32, i32, i32, i32 }
%union._lzt = type { ptr }
%struct.stream_state_s = type { ptr, ptr, ptr }
%struct.gs_memory_procs_s = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@.str = private unnamed_addr constant [16 x i8] c"LZWDecode state\00", align 1
@st_LZW_state = dso_local local_unnamed_addr constant %struct.gs_memory_struct_type_s { i32 96, ptr @.str, ptr null, ptr null, ptr @lzwd_enum_ptrs, ptr @lzwd_reloc_ptrs, ptr null }, align 8
@.str.1 = private unnamed_addr constant [11 x i8] c"LZW(close)\00", align 1
@ptr_struct_procs = external constant %struct.gs_ptr_procs_s, align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef ptr @lzwd_enum_ptrs(ptr nocapture noundef readonly %0, i32 %1, i32 noundef %2, ptr nocapture noundef writeonly %3) #0 {
  %5 = icmp eq i32 %2, 0
  br i1 %5, label %6, label %9

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.stream_LZW_state_s, ptr %0, i64 0, i32 10
  %8 = load ptr, ptr %7, align 8, !tbaa !5
  store ptr %8, ptr %3, align 8, !tbaa !8
  br label %9

9:                                                ; preds = %4, %6
  %10 = phi ptr [ @ptr_struct_procs, %6 ], [ null, %4 ]
  ret ptr %10
}

; Function Attrs: nounwind uwtable
define internal void @lzwd_reloc_ptrs(ptr nocapture noundef %0, i32 %1, ptr noundef %2) #1 {
  %4 = getelementptr inbounds %struct.stream_LZW_state_s, ptr %0, i64 0, i32 10
  %5 = load ptr, ptr %4, align 8, !tbaa !5
  %6 = tail call ptr @gs_reloc_struct_ptr(ptr noundef %5, ptr noundef %2) #4
  store ptr %6, ptr %4, align 8, !tbaa !5
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @s_LZW_set_defaults(ptr nocapture noundef writeonly %0) local_unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.stream_LZW_state_s, ptr %0, i64 0, i32 3
  store i32 8, ptr %2, align 8, !tbaa !10
  %3 = getelementptr inbounds %struct.stream_LZW_state_s, ptr %0, i64 0, i32 4
  store i32 0, ptr %3, align 4, !tbaa !13
  %4 = getelementptr inbounds %struct.stream_LZW_state_s, ptr %0, i64 0, i32 5
  store i32 0, ptr %4, align 8, !tbaa !14
  %5 = getelementptr inbounds %struct.stream_LZW_state_s, ptr %0, i64 0, i32 6
  store i32 1, ptr %5, align 4, !tbaa !15
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @s_LZW_release(ptr nocapture noundef readonly %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.stream_state_s, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !16
  %4 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %3, i64 0, i32 11
  %5 = load ptr, ptr %4, align 8, !tbaa !18
  %6 = getelementptr inbounds %struct.stream_LZW_state_s, ptr %0, i64 0, i32 10
  %7 = load ptr, ptr %6, align 8, !tbaa !5
  tail call void %5(ptr noundef %3, ptr noundef %7, ptr noundef nonnull @.str.1) #4
  ret void
}

declare ptr @gs_reloc_struct_ptr(ptr noundef, ptr noundef) local_unnamed_addr #3

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }

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
!8 = !{!9, !9, i64 0}
!9 = !{!"any pointer", !6, i64 0}
!10 = !{!11, !12, i64 24}
!11 = !{!"stream_LZW_state_s", !9, i64 0, !9, i64 8, !9, i64 16, !12, i64 24, !12, i64 28, !12, i64 32, !12, i64 36, !12, i64 40, !12, i64 44, !12, i64 48, !6, i64 56, !12, i64 64, !12, i64 68, !12, i64 72, !12, i64 76, !12, i64 80, !12, i64 84, !12, i64 88, !12, i64 92}
!12 = !{!"int", !6, i64 0}
!13 = !{!11, !12, i64 28}
!14 = !{!11, !12, i64 32}
!15 = !{!11, !12, i64 36}
!16 = !{!17, !9, i64 8}
!17 = !{!"stream_state_s", !9, i64 0, !9, i64 8, !9, i64 16}
!18 = !{!19, !9, i64 88}
!19 = !{!"gs_memory_s", !20, i64 0}
!20 = !{!"gs_memory_procs_s", !9, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !9, i64 32, !9, i64 40, !9, i64 48, !9, i64 56, !9, i64 64, !9, i64 72, !9, i64 80, !9, i64 88, !9, i64 96, !9, i64 104, !9, i64 112, !9, i64 120, !9, i64 128, !9, i64 136, !9, i64 144, !9, i64 152}
