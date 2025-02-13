; ModuleID = 'x264_src/common/cpu.c'
source_filename = "x264_src/common/cpu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.x264_cpu_name_t = type { [16 x i8], i32 }

@x264_cpu_names = dso_local local_unnamed_addr constant [22 x %struct.x264_cpu_name_t] [%struct.x264_cpu_name_t { [16 x i8] c"Altivec\00\00\00\00\00\00\00\00\00", i32 4 }, %struct.x264_cpu_name_t { [16 x i8] c"MMX2\00\00\00\00\00\00\00\00\00\00\00\00", i32 24 }, %struct.x264_cpu_name_t { [16 x i8] c"MMXEXT\00\00\00\00\00\00\00\00\00\00", i32 24 }, %struct.x264_cpu_name_t { [16 x i8] c"SSE2Slow\00\00\00\00\00\00\00\00", i32 248 }, %struct.x264_cpu_name_t { [16 x i8] c"SSE2\00\00\00\00\00\00\00\00\00\00\00\00", i32 120 }, %struct.x264_cpu_name_t { [16 x i8] c"SSE2Fast\00\00\00\00\00\00\00\00", i32 376 }, %struct.x264_cpu_name_t { [16 x i8] c"SSE3\00\00\00\00\00\00\00\00\00\00\00\00", i32 632 }, %struct.x264_cpu_name_t { [16 x i8] c"SSSE3\00\00\00\00\00\00\00\00\00\00\00", i32 1656 }, %struct.x264_cpu_name_t { [16 x i8] c"FastShuffle\00\00\00\00\00", i32 2168 }, %struct.x264_cpu_name_t { [16 x i8] c"SSE4.1\00\00\00\00\00\00\00\00\00\00", i32 9848 }, %struct.x264_cpu_name_t { [16 x i8] c"SSE4.2\00\00\00\00\00\00\00\00\00\00", i32 26232 }, %struct.x264_cpu_name_t { [16 x i8] c"Cache32\00\00\00\00\00\00\00\00\00", i32 1 }, %struct.x264_cpu_name_t { [16 x i8] c"Cache64\00\00\00\00\00\00\00\00\00", i32 2 }, %struct.x264_cpu_name_t { [16 x i8] c"SSEMisalign\00\00\00\00\00", i32 32768 }, %struct.x264_cpu_name_t { [16 x i8] c"LZCNT\00\00\00\00\00\00\00\00\00\00\00", i32 65536 }, %struct.x264_cpu_name_t { [16 x i8] c"Slow_mod4_stack\00", i32 4096 }, %struct.x264_cpu_name_t { [16 x i8] c"ARMv6\00\00\00\00\00\00\00\00\00\00\00", i32 131072 }, %struct.x264_cpu_name_t { [16 x i8] c"NEON\00\00\00\00\00\00\00\00\00\00\00\00", i32 262144 }, %struct.x264_cpu_name_t { [16 x i8] c"Fast_NEON_MRC\00\00\00", i32 524288 }, %struct.x264_cpu_name_t { [16 x i8] c"SlowCTZ\00\00\00\00\00\00\00\00\00", i32 1048576 }, %struct.x264_cpu_name_t { [16 x i8] c"SlowAtom\00\00\00\00\00\00\00\00", i32 2097152 }, %struct.x264_cpu_name_t zeroinitializer], align 16

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef i32 @x264_cpu_detect() local_unnamed_addr #0 {
  ret i32 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef i32 @x264_cpu_num_processors() local_unnamed_addr #0 {
  ret i32 1
}

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!34}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 5602379}
!4 = !{!"MaxCount", i64 1843200}
!5 = !{!"MaxInternalCount", i64 1843200}
!6 = !{!"MaxFunctionCount", i64 28800}
!7 = !{!"NumCounts", i64 117}
!8 = !{!"NumFunctions", i64 8}
!9 = !{!"IsPartialProfile", i64 0}
!10 = !{!"PartialProfileRatio", double 0.000000e+00}
!11 = !{!"DetailedSummary", !12}
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!13 = !{i32 10000, i64 1843200, i32 2}
!14 = !{i32 100000, i64 1843200, i32 2}
!15 = !{i32 200000, i64 1843200, i32 2}
!16 = !{i32 300000, i64 1843200, i32 2}
!17 = !{i32 400000, i64 1843200, i32 2}
!18 = !{i32 500000, i64 1843200, i32 2}
!19 = !{i32 600000, i64 1843200, i32 2}
!20 = !{i32 700000, i64 921600, i32 4}
!21 = !{i32 800000, i64 921600, i32 4}
!22 = !{i32 900000, i64 921600, i32 4}
!23 = !{i32 950000, i64 921600, i32 4}
!24 = !{i32 990000, i64 28800, i32 6}
!25 = !{i32 999000, i64 14400, i32 7}
!26 = !{i32 999900, i64 720, i32 8}
!27 = !{i32 999990, i64 21, i32 9}
!28 = !{i32 999999, i64 1, i32 36}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 7, !"openmp", i32 51}
!31 = !{i32 8, !"PIC Level", i32 2}
!32 = !{i32 7, !"PIE Level", i32 2}
!33 = !{i32 7, !"uwtable", i32 2}
!34 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
