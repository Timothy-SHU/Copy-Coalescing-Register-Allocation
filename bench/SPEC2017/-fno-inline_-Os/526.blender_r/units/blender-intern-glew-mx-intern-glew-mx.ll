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
@reltable.get_glew_error_enum_string = private unnamed_addr constant [3 x i32] [i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.4 to i64), i64 ptrtoint (ptr @reltable.get_glew_error_enum_string to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.5 to i64), i64 ptrtoint (ptr @reltable.get_glew_error_enum_string to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.6 to i64), i64 ptrtoint (ptr @reltable.get_glew_error_enum_string to i64)) to i32)], align 4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @glew_chk(i32 noundef returned %0, ptr nocapture readnone %1, i32 %2, ptr nocapture readnone %3) local_unnamed_addr #0 {
  %5 = icmp eq i32 %0, 0
  br i1 %5, label %15, label %6

6:                                                ; preds = %4
  %7 = tail call fastcc ptr @get_glew_error_enum_string(i32 noundef %0) #5
  %8 = tail call ptr @glewGetErrorString(i32 noundef %0) #6
  %9 = load ptr, ptr @stderr, align 8, !tbaa !34
  %10 = icmp eq ptr %7, null
  %11 = select i1 %10, ptr @.str.1, ptr %7
  %12 = icmp eq ptr %8, null
  %13 = select i1 %12, ptr @.str.2, ptr %8
  %14 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %9, ptr noundef nonnull @.str, i32 noundef %0, ptr noundef nonnull %11, ptr noundef nonnull %13) #7
  br label %15

15:                                               ; preds = %6, %4
  ret i32 %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef ptr @get_glew_error_enum_string(i32 noundef %0) unnamed_addr #1 !PGOFuncName !38 {
  %2 = add i32 %0, -1
  %3 = icmp ult i32 %2, 3
  br i1 %3, label %4, label %8

4:                                                ; preds = %1
  %5 = zext nneg i32 %2 to i64
  %6 = shl i64 %5, 2
  %7 = call ptr @llvm.load.relative.i64(ptr @reltable.get_glew_error_enum_string, i64 %6)
  br label %8

8:                                                ; preds = %1, %4
  %9 = phi ptr [ %7, %4 ], [ null, %1 ]
  ret ptr %9
}

; Function Attrs: optsize
declare ptr @glewGetErrorString(i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noalias noundef ptr @mxCreateContext() local_unnamed_addr #0 {
  %1 = tail call i32 @glewInit() #6
  %2 = tail call i32 @glew_chk(i32 noundef %1, ptr poison, i32 poison, ptr poison) #5
  ret ptr null
}

; Function Attrs: optsize
declare i32 @glewInit() local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noalias noundef ptr @mxGetCurrentContext() local_unnamed_addr #1 {
  ret ptr null
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @mxMakeCurrentContext(ptr nocapture noundef readnone %0) local_unnamed_addr #1 {
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @mxDestroyContext(ptr nocapture noundef readnone %0) local_unnamed_addr #1 {
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @llvm.load.relative.i64(ptr, i64) #4

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #5 = { optsize }
attributes #6 = { nounwind optsize }
attributes #7 = { cold optsize }

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
!34 = !{!35, !35, i64 0}
!35 = !{!"any pointer", !36, i64 0}
!36 = !{!"omnipotent char", !37, i64 0}
!37 = !{!"Simple C/C++ TBAA"}
!38 = !{!"glew-mx.c:get_glew_error_enum_string"}
