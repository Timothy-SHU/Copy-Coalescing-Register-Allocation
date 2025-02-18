; ModuleID = 'blender/intern/glew-mx/intern/glew-mx.c'
source_filename = "blender/intern/glew-mx/intern/glew-mx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@stderr = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [29 x i8] c"GLEW Error (0x%04X): %s: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"<no symbol>\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"<no message>\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"GLEW_ERROR_NO_GL_VERSION\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"GLEW_ERROR_GL_VERSION_10_ONLY\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"GLEW_ERROR_GLX_VERSION_11_ONLY\00", align 1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @glew_chk(i32 noundef returned %0, ptr nocapture noundef readnone %1, i32 noundef %2, ptr nocapture noundef readnone %3) local_unnamed_addr #0 {
  switch i32 %0, label %7 [
    i32 0, label %15
    i32 3, label %6
    i32 1, label %8
    i32 2, label %5
  ]

5:                                                ; preds = %4
  br label %8

6:                                                ; preds = %4
  br label %8

7:                                                ; preds = %4
  br label %8

8:                                                ; preds = %4, %5, %6, %7
  %9 = phi ptr [ @.str.1, %7 ], [ @.str.6, %6 ], [ @.str.5, %5 ], [ @.str.4, %4 ]
  %10 = tail call ptr @glewGetErrorString(i32 noundef %0) #4
  %11 = load ptr, ptr @stderr, align 8, !tbaa !34
  %12 = icmp eq ptr %10, null
  %13 = select i1 %12, ptr @.str.2, ptr %10
  %14 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %11, ptr noundef nonnull @.str, i32 noundef %0, ptr noundef nonnull %9, ptr noundef nonnull %13) #5
  br label %15

15:                                               ; preds = %4, %8
  ret i32 %0
}

declare ptr @glewGetErrorString(i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias noundef ptr @mxCreateContext() local_unnamed_addr #0 {
  %1 = tail call i32 @glewInit() #4
  switch i32 %1, label %4 [
    i32 0, label %12
    i32 3, label %3
    i32 1, label %5
    i32 2, label %2
  ]

2:                                                ; preds = %0
  br label %5

3:                                                ; preds = %0
  br label %5

4:                                                ; preds = %0
  br label %5

5:                                                ; preds = %4, %3, %2, %0
  %6 = phi ptr [ @.str.1, %4 ], [ @.str.6, %3 ], [ @.str.5, %2 ], [ @.str.4, %0 ]
  %7 = tail call ptr @glewGetErrorString(i32 noundef %1) #4
  %8 = load ptr, ptr @stderr, align 8, !tbaa !34
  %9 = icmp eq ptr %7, null
  %10 = select i1 %9, ptr @.str.2, ptr %7
  %11 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %8, ptr noundef nonnull @.str, i32 noundef %1, ptr noundef nonnull %6, ptr noundef nonnull %10) #5
  br label %12

12:                                               ; preds = %0, %5
  ret ptr null
}

declare i32 @glewInit() local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noalias noundef ptr @mxGetCurrentContext() local_unnamed_addr #3 {
  ret ptr null
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @mxMakeCurrentContext(ptr nocapture noundef readnone %0) local_unnamed_addr #3 {
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @mxDestroyContext(ptr nocapture noundef readnone %0) local_unnamed_addr #3 {
  ret void
}

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }
attributes #5 = { cold }

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
