; ModuleID = 'blender/source/blender/blenlib/intern/string_cursor_utf8.c'
source_filename = "blender/source/blender/blenlib/intern/string_cursor_utf8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i8 @BLI_str_cursor_step_next_utf8(ptr noundef %0, i64 noundef %1, ptr nocapture noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr i8, ptr %0, i64 %1
  %5 = getelementptr i8, ptr %4, i64 1
  %6 = load i32, ptr %2, align 4, !tbaa !34
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds i8, ptr %0, i64 %7
  %9 = tail call ptr @BLI_str_find_next_char_utf8(ptr noundef %8, ptr noundef %5) #5
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

declare ptr @BLI_str_find_next_char_utf8(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i8 @BLI_str_cursor_step_prev_utf8(ptr noundef %0, i64 noundef %1, ptr nocapture noundef %2) local_unnamed_addr #0 {
  %4 = load i32, ptr %2, align 4, !tbaa !34
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %6, label %18

6:                                                ; preds = %3
  %7 = zext nneg i32 %4 to i64
  %8 = getelementptr inbounds i8, ptr %0, i64 %7
  %9 = tail call ptr @BLI_str_find_prev_char_utf8(ptr noundef %0, ptr noundef nonnull %8) #5
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

18:                                               ; preds = %3, %6, %11
  %19 = phi i8 [ 1, %11 ], [ 0, %6 ], [ 0, %3 ]
  ret i8 %19
}

declare ptr @BLI_str_find_prev_char_utf8(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @BLI_str_cursor_step_utf8(ptr noundef %0, i64 noundef %1, ptr nocapture noundef %2, i32 noundef %3, i32 noundef %4, i8 noundef zeroext %5) local_unnamed_addr #0 {
  %7 = load i32, ptr %2, align 4, !tbaa !34
  switch i32 %3, label %130 [
    i32 1, label %8
    i32 0, label %70
  ]

8:                                                ; preds = %6
  %9 = icmp eq i8 %5, 0
  br i1 %9, label %26, label %10

10:                                               ; preds = %8
  %11 = getelementptr i8, ptr %0, i64 %1
  %12 = getelementptr i8, ptr %11, i64 1
  %13 = sext i32 %7 to i64
  %14 = getelementptr inbounds i8, ptr %0, i64 %13
  %15 = tail call ptr @BLI_str_find_next_char_utf8(ptr noundef %14, ptr noundef %12) #5
  %16 = icmp eq ptr %15, null
  br i1 %16, label %26, label %17

17:                                               ; preds = %10
  %18 = ptrtoint ptr %15 to i64
  %19 = ptrtoint ptr %14 to i64
  %20 = sub i64 %18, %19
  %21 = load i32, ptr %2, align 4, !tbaa !34
  %22 = trunc i64 %20 to i32
  %23 = add i32 %21, %22
  %24 = trunc i64 %1 to i32
  %25 = tail call i32 @llvm.smin.i32(i32 %23, i32 %24)
  store i32 %25, ptr %2, align 4, !tbaa !34
  br label %26

26:                                               ; preds = %17, %10, %8
  %27 = icmp eq i32 %4, 0
  br i1 %27, label %130, label %28

28:                                               ; preds = %26
  %29 = load i32, ptr %2, align 4, !tbaa !34
  %30 = sext i32 %29 to i64
  %31 = icmp ult i64 %30, %1
  br i1 %31, label %32, label %36

32:                                               ; preds = %28
  %33 = getelementptr inbounds i8, ptr %0, i64 %30
  %34 = tail call i32 @BLI_str_utf8_as_unicode(ptr noundef %33) #5
  %35 = tail call fastcc i32 @cursor_delim_type_unicode(i32 noundef %34), !range !38
  br label %36

36:                                               ; preds = %28, %32
  %37 = phi i32 [ %35, %32 ], [ 0, %28 ]
  %38 = getelementptr i8, ptr %0, i64 %1
  %39 = getelementptr i8, ptr %38, i64 1
  %40 = load i32, ptr %2, align 4, !tbaa !34
  %41 = sext i32 %40 to i64
  %42 = icmp ult i64 %41, %1
  br i1 %42, label %43, label %130

43:                                               ; preds = %36
  %44 = trunc i64 %1 to i32
  %45 = icmp eq i32 %4, 2
  br label %46

46:                                               ; preds = %43, %66
  %47 = phi i64 [ %41, %43 ], [ %68, %66 ]
  %48 = getelementptr inbounds i8, ptr %0, i64 %47
  %49 = tail call ptr @BLI_str_find_next_char_utf8(ptr noundef %48, ptr noundef %39) #5
  %50 = icmp eq ptr %49, null
  br i1 %50, label %130, label %51

51:                                               ; preds = %46
  %52 = ptrtoint ptr %49 to i64
  %53 = ptrtoint ptr %48 to i64
  %54 = sub i64 %52, %53
  %55 = load i32, ptr %2, align 4, !tbaa !34
  %56 = trunc i64 %54 to i32
  %57 = add i32 %55, %56
  %58 = tail call i32 @llvm.smin.i32(i32 %57, i32 %44)
  store i32 %58, ptr %2, align 4, !tbaa !34
  br i1 %45, label %66, label %59

59:                                               ; preds = %51
  %60 = load i32, ptr %2, align 4, !tbaa !34
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i8, ptr %0, i64 %61
  %63 = tail call i32 @BLI_str_utf8_as_unicode(ptr noundef %62) #5
  %64 = tail call fastcc i32 @cursor_delim_type_unicode(i32 noundef %63), !range !38
  %65 = icmp eq i32 %37, %64
  br i1 %65, label %66, label %130

66:                                               ; preds = %51, %59
  %67 = load i32, ptr %2, align 4, !tbaa !34
  %68 = sext i32 %67 to i64
  %69 = icmp ult i64 %68, %1
  br i1 %69, label %46, label %130, !llvm.loop !39

70:                                               ; preds = %6
  %71 = icmp ne i8 %5, 0
  %72 = icmp sgt i32 %7, 0
  %73 = select i1 %71, i1 %72, i1 false
  br i1 %73, label %74, label %86

74:                                               ; preds = %70
  %75 = zext nneg i32 %7 to i64
  %76 = getelementptr inbounds i8, ptr %0, i64 %75
  %77 = tail call ptr @BLI_str_find_prev_char_utf8(ptr noundef %0, ptr noundef nonnull %76) #5
  %78 = icmp eq ptr %77, null
  br i1 %78, label %86, label %79

79:                                               ; preds = %74
  %80 = ptrtoint ptr %76 to i64
  %81 = ptrtoint ptr %77 to i64
  %82 = sub i64 %81, %80
  %83 = load i32, ptr %2, align 4, !tbaa !34
  %84 = trunc i64 %82 to i32
  %85 = add i32 %83, %84
  store i32 %85, ptr %2, align 4, !tbaa !34
  br label %86

86:                                               ; preds = %74, %79, %70
  %87 = icmp eq i32 %4, 0
  br i1 %87, label %130, label %88

88:                                               ; preds = %86
  %89 = load i32, ptr %2, align 4, !tbaa !34
  %90 = icmp sgt i32 %89, 0
  br i1 %90, label %91, label %97

91:                                               ; preds = %88
  %92 = zext nneg i32 %89 to i64
  %93 = getelementptr i8, ptr %0, i64 %92
  %94 = getelementptr i8, ptr %93, i64 -1
  %95 = tail call i32 @BLI_str_utf8_as_unicode(ptr noundef %94) #5
  %96 = tail call fastcc i32 @cursor_delim_type_unicode(i32 noundef %95), !range !38
  br label %97

97:                                               ; preds = %88, %91
  %98 = phi i32 [ %96, %91 ], [ 0, %88 ]
  %99 = load i32, ptr %2, align 4, !tbaa !34
  %100 = icmp sgt i32 %99, 0
  br i1 %100, label %101, label %130

101:                                              ; preds = %97
  %102 = icmp eq i32 %4, 2
  br label %103

103:                                              ; preds = %101, %127
  %104 = phi i32 [ %99, %101 ], [ %128, %127 ]
  %105 = zext nneg i32 %104 to i64
  %106 = getelementptr inbounds i8, ptr %0, i64 %105
  %107 = tail call ptr @BLI_str_find_prev_char_utf8(ptr noundef %0, ptr noundef nonnull %106) #5
  %108 = icmp eq ptr %107, null
  br i1 %108, label %130, label %109

109:                                              ; preds = %103
  %110 = ptrtoint ptr %106 to i64
  %111 = ptrtoint ptr %107 to i64
  %112 = sub i64 %111, %110
  %113 = load i32, ptr %2, align 4, !tbaa !34
  %114 = trunc i64 %112 to i32
  %115 = add i32 %113, %114
  store i32 %115, ptr %2, align 4, !tbaa !34
  br i1 %102, label %127, label %116

116:                                              ; preds = %109
  %117 = load i32, ptr %2, align 4, !tbaa !34
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i8, ptr %0, i64 %118
  %120 = tail call i32 @BLI_str_utf8_as_unicode(ptr noundef %119) #5
  %121 = tail call fastcc i32 @cursor_delim_type_unicode(i32 noundef %120), !range !38
  %122 = icmp eq i32 %98, %121
  br i1 %122, label %127, label %123

123:                                              ; preds = %116
  %124 = load i32, ptr %2, align 4, !tbaa !34
  %125 = icmp sgt i32 %7, %124
  br i1 %125, label %126, label %130

126:                                              ; preds = %123
  store i32 %104, ptr %2, align 4, !tbaa !34
  br label %130

127:                                              ; preds = %116, %109
  %128 = load i32, ptr %2, align 4, !tbaa !34
  %129 = icmp sgt i32 %128, 0
  br i1 %129, label %103, label %130

130:                                              ; preds = %127, %103, %59, %66, %46, %97, %36, %126, %123, %6, %86, %26
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @BLI_str_cursor_step_wchar(ptr nocapture noundef readonly %0, i64 noundef %1, ptr nocapture noundef %2, i32 noundef %3, i32 noundef %4, i8 noundef zeroext %5) local_unnamed_addr #2 {
  %7 = load i32, ptr %2, align 4, !tbaa !34
  switch i32 %3, label %88 [
    i32 1, label %8
    i32 0, label %49
  ]

8:                                                ; preds = %6
  %9 = icmp ne i8 %5, 0
  %10 = trunc i64 %1 to i32
  %11 = icmp slt i32 %7, %10
  %12 = select i1 %9, i1 %11, i1 false
  br i1 %12, label %13, label %15

13:                                               ; preds = %8
  %14 = add nsw i32 %7, 1
  store i32 %14, ptr %2, align 4, !tbaa !34
  br label %15

15:                                               ; preds = %13, %8
  %16 = icmp eq i32 %4, 0
  br i1 %16, label %88, label %17

17:                                               ; preds = %15
  %18 = load i32, ptr %2, align 4, !tbaa !34
  %19 = sext i32 %18 to i64
  %20 = icmp ult i64 %19, %1
  br i1 %20, label %21, label %25

21:                                               ; preds = %17
  %22 = getelementptr inbounds i32, ptr %0, i64 %19
  %23 = load i32, ptr %22, align 4, !tbaa !34
  %24 = tail call fastcc i32 @cursor_delim_type_unicode(i32 noundef %23), !range !38
  br label %25

25:                                               ; preds = %17, %21
  %26 = phi i32 [ %24, %21 ], [ 0, %17 ]
  %27 = load i32, ptr %2, align 4, !tbaa !34
  %28 = sext i32 %27 to i64
  %29 = icmp ult i64 %28, %1
  %30 = icmp slt i32 %27, %10
  %31 = and i1 %30, %29
  br i1 %31, label %32, label %88

32:                                               ; preds = %25
  %33 = icmp eq i32 %4, 2
  %34 = shl i64 %1, 32
  %35 = ashr exact i64 %34, 32
  br label %36

36:                                               ; preds = %32, %45
  %37 = phi i64 [ %28, %32 ], [ %38, %45 ]
  %38 = add nuw nsw i64 %37, 1
  %39 = trunc i64 %38 to i32
  store i32 %39, ptr %2, align 4, !tbaa !34
  br i1 %33, label %45, label %40

40:                                               ; preds = %36
  %41 = getelementptr inbounds i32, ptr %0, i64 %38
  %42 = load i32, ptr %41, align 4, !tbaa !34
  %43 = tail call fastcc i32 @cursor_delim_type_unicode(i32 noundef %42), !range !38
  %44 = icmp eq i32 %26, %43
  br i1 %44, label %45, label %88

45:                                               ; preds = %36, %40
  %46 = icmp ult i64 %38, %1
  %47 = icmp slt i64 %38, %35
  %48 = and i1 %47, %46
  br i1 %48, label %36, label %88, !llvm.loop !42

49:                                               ; preds = %6
  %50 = icmp eq i8 %5, 0
  %51 = icmp slt i32 %7, 1
  %52 = select i1 %50, i1 true, i1 %51
  br i1 %52, label %55, label %53

53:                                               ; preds = %49
  %54 = add nsw i32 %7, -1
  store i32 %54, ptr %2, align 4, !tbaa !34
  br label %55

55:                                               ; preds = %53, %49
  %56 = icmp eq i32 %4, 0
  br i1 %56, label %88, label %57

57:                                               ; preds = %55
  %58 = load i32, ptr %2, align 4, !tbaa !34
  %59 = icmp sgt i32 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %57
  %61 = zext nneg i32 %58 to i64
  %62 = getelementptr i32, ptr %0, i64 %61
  %63 = getelementptr i32, ptr %62, i64 -1
  %64 = load i32, ptr %63, align 4, !tbaa !34
  %65 = tail call fastcc i32 @cursor_delim_type_unicode(i32 noundef %64), !range !38
  br label %66

66:                                               ; preds = %57, %60
  %67 = phi i32 [ %65, %60 ], [ 0, %57 ]
  %68 = load i32, ptr %2, align 4, !tbaa !34
  %69 = icmp sgt i32 %68, 0
  br i1 %69, label %70, label %88

70:                                               ; preds = %66
  %71 = icmp eq i32 %4, 2
  %72 = zext nneg i32 %68 to i64
  br label %73

73:                                               ; preds = %70, %86
  %74 = phi i64 [ %72, %70 ], [ %75, %86 ]
  %75 = add nsw i64 %74, -1
  %76 = trunc i64 %75 to i32
  store i32 %76, ptr %2, align 4, !tbaa !34
  br i1 %71, label %86, label %77

77:                                               ; preds = %73
  %78 = getelementptr inbounds i32, ptr %0, i64 %75
  %79 = load i32, ptr %78, align 4, !tbaa !34
  %80 = tail call fastcc i32 @cursor_delim_type_unicode(i32 noundef %79), !range !38
  %81 = icmp eq i32 %67, %80
  br i1 %81, label %86, label %82

82:                                               ; preds = %77
  %83 = trunc i64 %74 to i32
  %84 = icmp slt i32 %7, %83
  br i1 %84, label %88, label %85

85:                                               ; preds = %82
  store i32 %83, ptr %2, align 4, !tbaa !34
  br label %88

86:                                               ; preds = %77, %73
  %87 = icmp sgt i64 %74, 1
  br i1 %87, label %73, label %88

88:                                               ; preds = %86, %40, %45, %66, %25, %85, %82, %6, %55, %15
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal fastcc noundef i32 @cursor_delim_type_unicode(i32 noundef %0) unnamed_addr #3 {
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

declare i32 @BLI_str_utf8_as_unicode(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nounwind }

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
!35 = !{!"int", !36, i64 0}
!36 = !{!"omnipotent char", !37, i64 0}
!37 = !{!"Simple C/C++ TBAA"}
!38 = !{i32 1, i32 8}
!39 = distinct !{!39, !40, !41}
!40 = !{!"llvm.loop.mustprogress"}
!41 = !{!"llvm.loop.unroll.disable"}
!42 = distinct !{!42, !40, !41}
