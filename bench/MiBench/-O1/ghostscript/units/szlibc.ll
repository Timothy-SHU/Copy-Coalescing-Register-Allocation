; ModuleID = 'szlibc.c'
source_filename = "szlibc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gs_memory_struct_type_s = type { i32, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.stream_zlib_state_s = type { ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, %struct.z_stream_s }
%struct.z_stream_s = type { ptr, i32, i64, ptr, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i64, i64 }
%struct.gs_memory_procs_s = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@.str = private unnamed_addr constant [24 x i8] c"zlibEncode/Decode state\00", align 1
@st_zlib_state = dso_local local_unnamed_addr constant %struct.gs_memory_struct_type_s { i32 160, ptr @.str, ptr null, ptr null, ptr null, ptr null, ptr null }, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"zlib\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @s_zlib_set_defaults(ptr nocapture noundef writeonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.stream_zlib_state_s, ptr %0, i64 0, i32 3
  store i32 15, ptr %2, align 8, !tbaa !5
  %3 = getelementptr inbounds %struct.stream_zlib_state_s, ptr %0, i64 0, i32 4
  store i32 0, ptr %3, align 4, !tbaa !13
  %4 = getelementptr inbounds %struct.stream_zlib_state_s, ptr %0, i64 0, i32 5
  store i32 -1, ptr %4, align 8, !tbaa !14
  %5 = getelementptr inbounds %struct.stream_zlib_state_s, ptr %0, i64 0, i32 6
  store i32 8, ptr %5, align 4, !tbaa !15
  %6 = getelementptr inbounds %struct.stream_zlib_state_s, ptr %0, i64 0, i32 7
  store i32 8, ptr %6, align 8, !tbaa !16
  %7 = getelementptr inbounds %struct.stream_zlib_state_s, ptr %0, i64 0, i32 8
  store i32 0, ptr %7, align 4, !tbaa !17
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @s_zlib_alloc(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #1 {
  %4 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %0, i64 0, i32 4
  %5 = load ptr, ptr %4, align 8, !tbaa !18
  %6 = tail call ptr %5(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef nonnull @.str.1) #2
  ret ptr %6
}

; Function Attrs: nounwind uwtable
define dso_local void @s_zlib_free(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %0, i64 0, i32 11
  %4 = load ptr, ptr %3, align 8, !tbaa !21
  tail call void %4(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @.str.1) #2
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !10, i64 24}
!6 = !{!"stream_zlib_state_s", !7, i64 0, !7, i64 8, !7, i64 16, !10, i64 24, !10, i64 28, !10, i64 32, !10, i64 36, !10, i64 40, !10, i64 44, !11, i64 48}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"int", !8, i64 0}
!11 = !{!"z_stream_s", !7, i64 0, !10, i64 8, !12, i64 16, !7, i64 24, !10, i64 32, !12, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !10, i64 88, !12, i64 96, !12, i64 104}
!12 = !{!"long", !8, i64 0}
!13 = !{!6, !10, i64 28}
!14 = !{!6, !10, i64 32}
!15 = !{!6, !10, i64 36}
!16 = !{!6, !10, i64 40}
!17 = !{!6, !10, i64 44}
!18 = !{!19, !7, i64 32}
!19 = !{!"gs_memory_s", !20, i64 0}
!20 = !{!"gs_memory_procs_s", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !7, i64 88, !7, i64 96, !7, i64 104, !7, i64 112, !7, i64 120, !7, i64 128, !7, i64 136, !7, i64 144, !7, i64 152}
!21 = !{!19, !7, i64 88}
