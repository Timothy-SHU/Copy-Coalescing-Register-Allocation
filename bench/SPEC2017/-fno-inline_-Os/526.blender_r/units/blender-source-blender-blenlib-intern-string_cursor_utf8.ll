; ModuleID = 'blender/source/blender/blenlib/intern/string_cursor_utf8.c'
source_filename = "blender/source/blender/blenlib/intern/string_cursor_utf8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @BLI_str_cursor_step_next_utf8(ptr noundef %0, i64 noundef %1, ptr nocapture noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr i8, ptr %0, i64 %1
  %5 = getelementptr i8, ptr %4, i64 1
  %6 = load i32, ptr %2, align 4, !tbaa !34
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds i8, ptr %0, i64 %7
  %9 = tail call ptr @BLI_str_find_next_char_utf8(ptr noundef %8, ptr noundef %5) #6
  %10 = icmp eq ptr %9, null
  br i1 %10, label %20, label %11

11:                                               ; preds = %3
  %12 = ptrtoint ptr %9 to i64
  %13 = ptrtoint ptr %8 to i64
  %14 = sub i64 %12, %13
  %15 = load i32, ptr %2, align 4, !tbaa !34
  %16 = trunc i64 %14 to i32
  %17 = add i32 %15, %16
  %18 = trunc i64 %1 to i32
  %19 = tail call i32 @llvm.smin.i32(i32 %17, i32 %18)
  store i32 %19, ptr %2, align 4, !tbaa !34
  br label %20

20:                                               ; preds = %3, %11
  %21 = phi i8 [ 1, %11 ], [ 0, %3 ]
  ret i8 %21
}

; Function Attrs: optsize
declare ptr @BLI_str_find_next_char_utf8(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @BLI_str_cursor_step_prev_utf8(ptr noundef %0, i64 %1, ptr nocapture noundef %2) local_unnamed_addr #0 {
  %4 = load i32, ptr %2, align 4, !tbaa !34
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %6, label %18

6:                                                ; preds = %3
  %7 = zext nneg i32 %4 to i64
  %8 = getelementptr inbounds i8, ptr %0, i64 %7
  %9 = tail call ptr @BLI_str_find_prev_char_utf8(ptr noundef %0, ptr noundef nonnull %8) #6
  %10 = icmp eq ptr %9, null
  br i1 %10, label %18, label %11

11:                                               ; preds = %6
  %12 = ptrtoint ptr %8 to i64
  %13 = ptrtoint ptr %9 to i64
  %14 = sub i64 %13, %12
  %15 = load i32, ptr %2, align 4, !tbaa !34
  %16 = trunc i64 %14 to i32
  %17 = add i32 %15, %16
  store i32 %17, ptr %2, align 4, !tbaa !34
  br label %18

18:                                               ; preds = %6, %3, %11
  %19 = phi i8 [ 1, %11 ], [ 0, %3 ], [ 0, %6 ]
  ret i8 %19
}

; Function Attrs: optsize
declare ptr @BLI_str_find_prev_char_utf8(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BLI_str_cursor_step_utf8(ptr noundef %0, i64 noundef %1, ptr nocapture noundef %2, i32 noundef %3, i32 noundef %4, i8 noundef zeroext %5) local_unnamed_addr #0 {
  %7 = load i32, ptr %2, align 4, !tbaa !34
  switch i32 %3, label %79 [
    i32 1, label %8
    i32 0, label %43
  ]

8:                                                ; preds = %6
  %9 = icmp eq i8 %5, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %8
  %11 = tail call zeroext i8 @BLI_str_cursor_step_next_utf8(ptr noundef %0, i64 noundef %1, ptr noundef nonnull %2) #7, !range !38
  br label %12

12:                                               ; preds = %8, %10
  %13 = icmp eq i32 %4, 0
  br i1 %13, label %79, label %14

14:                                               ; preds = %12
  %15 = load i32, ptr %2, align 4, !tbaa !34
  %16 = sext i32 %15 to i64
  %17 = icmp ult i64 %16, %1
  br i1 %17, label %18, label %23

18:                                               ; preds = %14
  %19 = getelementptr inbounds i8, ptr %0, i64 %16
  %20 = tail call fastcc i32 @cursor_delim_type_utf8(ptr noundef %19) #7, !range !39
  %21 = load i32, ptr %2, align 4, !tbaa !34
  %22 = sext i32 %21 to i64
  br label %23

23:                                               ; preds = %14, %18
  %24 = phi i64 [ %16, %14 ], [ %22, %18 ]
  %25 = phi i32 [ 0, %14 ], [ %20, %18 ]
  %26 = icmp ult i64 %24, %1
  br i1 %26, label %27, label %79

27:                                               ; preds = %23
  %28 = icmp eq i32 %4, 2
  br label %29

29:                                               ; preds = %27, %39
  %30 = tail call zeroext i8 @BLI_str_cursor_step_next_utf8(ptr noundef %0, i64 noundef %1, ptr noundef nonnull %2) #7, !range !38
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %79, label %32

32:                                               ; preds = %29
  br i1 %28, label %39, label %33

33:                                               ; preds = %32
  %34 = load i32, ptr %2, align 4, !tbaa !34
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i8, ptr %0, i64 %35
  %37 = tail call fastcc i32 @cursor_delim_type_utf8(ptr noundef %36) #7, !range !39
  %38 = icmp eq i32 %25, %37
  br i1 %38, label %39, label %79

39:                                               ; preds = %32, %33
  %40 = load i32, ptr %2, align 4, !tbaa !34
  %41 = sext i32 %40 to i64
  %42 = icmp ult i64 %41, %1
  br i1 %42, label %29, label %79, !llvm.loop !40

43:                                               ; preds = %6
  %44 = icmp eq i8 %5, 0
  br i1 %44, label %47, label %45

45:                                               ; preds = %43
  %46 = tail call zeroext i8 @BLI_str_cursor_step_prev_utf8(ptr noundef %0, i64 poison, ptr noundef nonnull %2) #7, !range !38
  br label %47

47:                                               ; preds = %43, %45
  %48 = icmp eq i32 %4, 0
  br i1 %48, label %79, label %49

49:                                               ; preds = %47
  %50 = load i32, ptr %2, align 4, !tbaa !34
  %51 = icmp sgt i32 %50, 0
  br i1 %51, label %52, label %79

52:                                               ; preds = %49
  %53 = zext nneg i32 %50 to i64
  %54 = getelementptr i8, ptr %0, i64 %53
  %55 = getelementptr i8, ptr %54, i64 -1
  %56 = tail call fastcc i32 @cursor_delim_type_utf8(ptr noundef %55) #7, !range !39
  %57 = load i32, ptr %2, align 4, !tbaa !34
  %58 = icmp sgt i32 %57, 0
  br i1 %58, label %59, label %79

59:                                               ; preds = %52
  %60 = icmp eq i32 %4, 2
  br label %61

61:                                               ; preds = %59, %76
  %62 = phi i32 [ %57, %59 ], [ %77, %76 ]
  %63 = tail call zeroext i8 @BLI_str_cursor_step_prev_utf8(ptr noundef %0, i64 poison, ptr noundef nonnull %2) #7, !range !38
  %64 = icmp eq i8 %63, 0
  br i1 %64, label %79, label %65

65:                                               ; preds = %61
  br i1 %60, label %76, label %66

66:                                               ; preds = %65
  %67 = load i32, ptr %2, align 4, !tbaa !34
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i8, ptr %0, i64 %68
  %70 = tail call fastcc i32 @cursor_delim_type_utf8(ptr noundef %69) #7, !range !39
  %71 = icmp eq i32 %56, %70
  br i1 %71, label %76, label %72

72:                                               ; preds = %66
  %73 = load i32, ptr %2, align 4, !tbaa !34
  %74 = icmp sgt i32 %7, %73
  br i1 %74, label %75, label %79

75:                                               ; preds = %72
  store i32 %62, ptr %2, align 4, !tbaa !34
  br label %79

76:                                               ; preds = %66, %65
  %77 = load i32, ptr %2, align 4, !tbaa !34
  %78 = icmp sgt i32 %77, 0
  br i1 %78, label %61, label %79

79:                                               ; preds = %76, %61, %29, %33, %39, %49, %52, %23, %72, %75, %6, %47, %12
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @cursor_delim_type_utf8(ptr noundef %0) unnamed_addr #0 !PGOFuncName !42 {
  %2 = tail call i32 @BLI_str_utf8_as_unicode(ptr noundef %0) #6
  %3 = tail call fastcc i32 @cursor_delim_type_unicode(i32 noundef %2) #7, !range !39
  ret i32 %3
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define dso_local void @BLI_str_cursor_step_wchar(ptr nocapture noundef readonly %0, i64 noundef %1, ptr nocapture noundef %2, i32 noundef %3, i32 noundef %4, i8 noundef zeroext %5) local_unnamed_addr #2 {
  %7 = load i32, ptr %2, align 4, !tbaa !34
  switch i32 %3, label %72 [
    i32 1, label %8
    i32 0, label %39
  ]

8:                                                ; preds = %6
  %9 = icmp eq i8 %5, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %8
  %11 = tail call fastcc zeroext i8 @wchar_t_step_next(i64 noundef %1, ptr noundef nonnull %2) #7
  br label %12

12:                                               ; preds = %8, %10
  %13 = icmp eq i32 %4, 0
  br i1 %13, label %72, label %14

14:                                               ; preds = %12
  %15 = load i32, ptr %2, align 4, !tbaa !34
  %16 = sext i32 %15 to i64
  %17 = icmp ult i64 %16, %1
  br i1 %17, label %18, label %72

18:                                               ; preds = %14
  %19 = getelementptr inbounds i32, ptr %0, i64 %16
  %20 = load i32, ptr %19, align 4, !tbaa !34
  %21 = tail call fastcc i32 @cursor_delim_type_unicode(i32 noundef %20) #7, !range !39
  %22 = icmp eq i32 %4, 2
  br label %23

23:                                               ; preds = %38, %18
  %24 = tail call fastcc zeroext i8 @wchar_t_step_next(i64 noundef %1, ptr noundef nonnull %2) #7
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %72, label %26

26:                                               ; preds = %23
  %27 = load i32, ptr %2, align 4, !tbaa !34
  %28 = sext i32 %27 to i64
  br i1 %22, label %36, label %29

29:                                               ; preds = %26
  %30 = getelementptr inbounds i32, ptr %0, i64 %28
  %31 = load i32, ptr %30, align 4, !tbaa !34
  %32 = tail call fastcc i32 @cursor_delim_type_unicode(i32 noundef %31) #7, !range !39
  %33 = icmp eq i32 %21, %32
  %34 = icmp ult i64 %28, %1
  %35 = select i1 %33, i1 %34, i1 false
  br i1 %35, label %38, label %72

36:                                               ; preds = %26
  %37 = icmp ult i64 %28, %1
  br i1 %37, label %38, label %72

38:                                               ; preds = %36, %29
  br label %23, !llvm.loop !43

39:                                               ; preds = %6
  %40 = icmp eq i8 %5, 0
  br i1 %40, label %43, label %41

41:                                               ; preds = %39
  %42 = tail call fastcc zeroext i8 @wchar_t_step_prev(ptr noundef nonnull %2) #7
  br label %43

43:                                               ; preds = %39, %41
  %44 = icmp eq i32 %4, 0
  br i1 %44, label %72, label %45

45:                                               ; preds = %43
  %46 = load i32, ptr %2, align 4, !tbaa !34
  %47 = icmp sgt i32 %46, 0
  br i1 %47, label %48, label %72

48:                                               ; preds = %45
  %49 = zext nneg i32 %46 to i64
  %50 = getelementptr i32, ptr %0, i64 %49
  %51 = getelementptr i32, ptr %50, i64 -1
  %52 = load i32, ptr %51, align 4, !tbaa !34
  %53 = tail call fastcc i32 @cursor_delim_type_unicode(i32 noundef %52) #7, !range !39
  %54 = icmp eq i32 %4, 2
  br label %55

55:                                               ; preds = %48, %70
  %56 = phi i32 [ %46, %48 ], [ %60, %70 ]
  %57 = tail call fastcc zeroext i8 @wchar_t_step_prev(ptr noundef nonnull %2) #7
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %72, label %59

59:                                               ; preds = %55
  %60 = load i32, ptr %2, align 4, !tbaa !34
  br i1 %54, label %70, label %61

61:                                               ; preds = %59
  %62 = sext i32 %60 to i64
  %63 = getelementptr inbounds i32, ptr %0, i64 %62
  %64 = load i32, ptr %63, align 4, !tbaa !34
  %65 = tail call fastcc i32 @cursor_delim_type_unicode(i32 noundef %64) #7, !range !39
  %66 = icmp eq i32 %53, %65
  br i1 %66, label %70, label %67

67:                                               ; preds = %61
  %68 = icmp sgt i32 %7, %60
  br i1 %68, label %69, label %72

69:                                               ; preds = %67
  store i32 %56, ptr %2, align 4, !tbaa !34
  br label %72

70:                                               ; preds = %61, %59
  %71 = icmp sgt i32 %60, 0
  br i1 %71, label %55, label %72

72:                                               ; preds = %70, %55, %23, %29, %36, %45, %14, %67, %69, %6, %43, %12
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef zeroext i8 @wchar_t_step_next(i64 noundef %0, ptr nocapture noundef %1) unnamed_addr #3 !PGOFuncName !44 {
  %3 = load i32, ptr %1, align 4, !tbaa !34
  %4 = trunc i64 %0 to i32
  %5 = icmp slt i32 %3, %4
  br i1 %5, label %6, label %8

6:                                                ; preds = %2
  %7 = add nsw i32 %3, 1
  store i32 %7, ptr %1, align 4, !tbaa !34
  br label %8

8:                                                ; preds = %2, %6
  %9 = phi i8 [ 1, %6 ], [ 0, %2 ]
  ret i8 %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i32 @cursor_delim_type_unicode(i32 noundef %0) unnamed_addr #4 !PGOFuncName !45 {
  switch i32 %0, label %7 [
    i32 44, label %8
    i32 46, label %8
    i32 123, label %2
    i32 125, label %2
    i32 91, label %2
    i32 93, label %2
    i32 40, label %2
    i32 41, label %2
    i32 43, label %3
    i32 45, label %3
    i32 61, label %3
    i32 126, label %3
    i32 37, label %3
    i32 47, label %3
    i32 60, label %3
    i32 62, label %3
    i32 94, label %3
    i32 42, label %3
    i32 38, label %3
    i32 124, label %3
    i32 39, label %4
    i32 34, label %4
    i32 32, label %5
    i32 9, label %5
    i32 10, label %5
    i32 92, label %6
    i32 64, label %6
    i32 35, label %6
    i32 36, label %6
    i32 58, label %6
    i32 59, label %6
    i32 63, label %6
    i32 33, label %6
    i32 163, label %6
    i32 128, label %6
  ]

2:                                                ; preds = %1, %1, %1, %1, %1, %1
  br label %8

3:                                                ; preds = %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1
  br label %8

4:                                                ; preds = %1, %1
  br label %8

5:                                                ; preds = %1, %1, %1
  br label %8

6:                                                ; preds = %1, %1, %1, %1, %1, %1, %1, %1, %1, %1
  br label %8

7:                                                ; preds = %1
  br label %8

8:                                                ; preds = %1, %1, %7, %6, %5, %4, %3, %2
  %9 = phi i32 [ 1, %7 ], [ 7, %6 ], [ 6, %5 ], [ 5, %4 ], [ 4, %3 ], [ 3, %2 ], [ 2, %1 ], [ 2, %1 ]
  ret i32 %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef zeroext i8 @wchar_t_step_prev(ptr nocapture noundef %0) unnamed_addr #3 !PGOFuncName !46 {
  %2 = load i32, ptr %0, align 4, !tbaa !34
  %3 = icmp slt i32 %2, 1
  br i1 %3, label %6, label %4

4:                                                ; preds = %1
  %5 = add nsw i32 %2, -1
  store i32 %5, ptr %0, align 4, !tbaa !34
  br label %6

6:                                                ; preds = %1, %4
  %7 = phi i8 [ 1, %4 ], [ 0, %1 ]
  ret i8 %7
}

; Function Attrs: optsize
declare i32 @BLI_str_utf8_as_unicode(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #5

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind optsize }
attributes #7 = { optsize }

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
!35 = !{!"int", !36, i64 0}
!36 = !{!"omnipotent char", !37, i64 0}
!37 = !{!"Simple C/C++ TBAA"}
!38 = !{i8 0, i8 2}
!39 = !{i32 1, i32 8}
!40 = distinct !{!40, !41}
!41 = !{!"llvm.loop.mustprogress"}
!42 = !{!"string_cursor_utf8.c:cursor_delim_type_utf8"}
!43 = distinct !{!43, !41}
!44 = !{!"string_cursor_utf8.c:wchar_t_step_next"}
!45 = !{!"string_cursor_utf8.c:cursor_delim_type_unicode"}
!46 = !{!"string_cursor_utf8.c:wchar_t_step_prev"}
