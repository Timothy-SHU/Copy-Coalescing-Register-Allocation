; ModuleID = 'blender/intern/ghost/intern/GHOST_Context.cpp'
source_filename = "blender/intern/ghost/intern/GHOST_Context.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%class.GHOST_Context = type { ptr, i8, i16, ptr }

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN13GHOST_Context15initContextGLEWEv(ptr nocapture noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #0 align 2 {
  %2 = getelementptr inbounds %class.GHOST_Context, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  tail call void @mxDestroyContext(ptr noundef %3) #2
  %4 = tail call ptr @mxCreateContext() #2
  tail call void @mxMakeCurrentContext(ptr noundef %4) #2
  %5 = tail call ptr @mxGetCurrentContext() #2
  store ptr %5, ptr %2, align 8, !tbaa !34
  ret void
}

; Function Attrs: optsize
declare void @mxDestroyContext(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @mxMakeCurrentContext(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @mxCreateContext() local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @mxGetCurrentContext() local_unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN13GHOST_Context11initClearGLEv() local_unnamed_addr #0 align 2 {
  tail call void @glClearColor(float noundef 0x3FDC9BA5E0000000, float noundef 0x3FDC9BA5E0000000, float noundef 0x3FDC9BA5E0000000, float noundef 0.000000e+00) #2
  tail call void @glClear(i32 noundef 16384) #2
  tail call void @glClearColor(float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00) #2
  ret void
}

; Function Attrs: optsize
declare void @glClearColor(float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @glClear(i32 noundef) local_unnamed_addr #1

attributes #0 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { optsize }

!llvm.module.flags = !{!0, !29, !30, !31, !32}
!llvm.ident = !{!33}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 6524701}
!4 = !{!"MaxCount", i64 1843200}
!5 = !{!"MaxInternalCount", i64 1843200}
!6 = !{!"MaxFunctionCount", i64 28800}
!7 = !{!"NumCounts", i64 117}
!8 = !{!"NumFunctions", i64 8}
!9 = !{!"IsPartialProfile", i64 0}
!10 = !{!"PartialProfileRatio", double 0.000000e+00}
!11 = !{!"DetailedSummary", !12}
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!13 = !{i32 10000, i64 1843200, i32 3}
!14 = !{i32 100000, i64 1843200, i32 3}
!15 = !{i32 200000, i64 1843200, i32 3}
!16 = !{i32 300000, i64 1843200, i32 3}
!17 = !{i32 400000, i64 1843200, i32 3}
!18 = !{i32 500000, i64 1843200, i32 3}
!19 = !{i32 600000, i64 1843200, i32 3}
!20 = !{i32 700000, i64 1843200, i32 3}
!21 = !{i32 800000, i64 1843200, i32 3}
!22 = !{i32 900000, i64 921600, i32 4}
!23 = !{i32 950000, i64 921600, i32 4}
!24 = !{i32 990000, i64 28800, i32 6}
!25 = !{i32 999000, i64 14400, i32 7}
!26 = !{i32 999900, i64 1440, i32 8}
!27 = !{i32 999990, i64 1440, i32 8}
!28 = !{i32 999999, i64 1, i32 37}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 8, !"PIC Level", i32 2}
!31 = !{i32 7, !"PIE Level", i32 2}
!32 = !{i32 7, !"uwtable", i32 2}
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!35, !40, i64 16}
!35 = !{!"_ZTS13GHOST_Context", !36, i64 8, !39, i64 10, !40, i64 16}
!36 = !{!"bool", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C++ TBAA"}
!39 = !{!"short", !37, i64 0}
!40 = !{!"any pointer", !37, i64 0}
