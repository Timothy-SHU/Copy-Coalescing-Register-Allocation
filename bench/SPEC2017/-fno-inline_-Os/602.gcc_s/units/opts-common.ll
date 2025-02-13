; ModuleID = 'opts-common.c'
source_filename = "opts-common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.cl_option = type { ptr, ptr, i16, i8, i32, i32, ptr, i32, i32 }

@cl_options_count = external local_unnamed_addr constant i32, align 4
@cl_options = external local_unnamed_addr constant [0 x %struct.cl_option], align 8

; Function Attrs: nofree noinline nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local i64 @find_opt(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 !prof !38 {
  %3 = load i32, ptr @cl_options_count, align 4, !tbaa !39
  %4 = zext i32 %3 to i64
  %5 = icmp ugt i32 %3, 1
  br i1 %5, label %6, label %23, !prof !43

6:                                                ; preds = %2, %6
  %7 = phi i64 [ %20, %6 ], [ 0, %2 ]
  %8 = phi i64 [ %19, %6 ], [ %4, %2 ]
  %9 = add i64 %7, %8
  %10 = lshr i64 %9, 1
  %11 = getelementptr inbounds [0 x %struct.cl_option], ptr @cl_options, i64 0, i64 %10
  %12 = getelementptr inbounds [0 x %struct.cl_option], ptr @cl_options, i64 0, i64 %10, i32 3
  %13 = load i8, ptr %12, align 2, !tbaa !44
  %14 = zext i8 %13 to i64
  %15 = load ptr, ptr %11, align 8, !tbaa !48
  %16 = getelementptr inbounds i8, ptr %15, i64 1
  %17 = tail call i32 @strncmp(ptr noundef %0, ptr noundef nonnull %16, i64 noundef %14) #7
  %18 = icmp slt i32 %17, 0
  %19 = select i1 %18, i64 %10, i64 %8, !prof !49
  %20 = select i1 %18, i64 %7, i64 %10, !prof !49
  %21 = sub i64 %19, %20
  %22 = icmp ugt i64 %21, 1
  br i1 %22, label %6, label %23, !prof !50, !llvm.loop !51

23:                                               ; preds = %6, %2
  %24 = phi i64 [ 0, %2 ], [ %20, %6 ]
  br label %25

25:                                               ; preds = %23, %51
  %26 = phi i64 [ %52, %51 ], [ %4, %23 ]
  %27 = phi i64 [ %55, %51 ], [ %24, %23 ]
  %28 = getelementptr inbounds [0 x %struct.cl_option], ptr @cl_options, i64 0, i64 %27
  %29 = load ptr, ptr %28, align 8, !tbaa !48
  %30 = getelementptr inbounds i8, ptr %29, i64 1
  %31 = getelementptr inbounds [0 x %struct.cl_option], ptr @cl_options, i64 0, i64 %27, i32 3
  %32 = load i8, ptr %31, align 2, !tbaa !44
  %33 = zext i8 %32 to i64
  %34 = tail call i32 @strncmp(ptr noundef %0, ptr noundef nonnull %30, i64 noundef %33) #7
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %51, !prof !53

36:                                               ; preds = %25
  %37 = getelementptr inbounds i8, ptr %0, i64 %33
  %38 = load i8, ptr %37, align 1, !tbaa !54
  %39 = icmp ne i8 %38, 0
  %40 = getelementptr inbounds [0 x %struct.cl_option], ptr @cl_options, i64 0, i64 %27, i32 5
  %41 = load i32, ptr %40, align 8, !tbaa !55
  %42 = and i32 %41, 33554432
  %43 = icmp eq i32 %42, 0
  %44 = select i1 %39, i1 %43, i1 false
  br i1 %44, label %51, label %45, !prof !56

45:                                               ; preds = %36
  %46 = and i32 %41, %1
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %57, !prof !57

48:                                               ; preds = %45
  %49 = icmp eq i64 %26, %4
  %50 = select i1 %49, i64 %27, i64 %26
  br label %51

51:                                               ; preds = %36, %25, %48
  %52 = phi i64 [ %26, %25 ], [ %50, %48 ], [ %26, %36 ]
  %53 = getelementptr inbounds [0 x %struct.cl_option], ptr @cl_options, i64 0, i64 %27, i32 2
  %54 = load i16, ptr %53, align 8, !tbaa !58
  %55 = zext i16 %54 to i64
  %56 = icmp eq i64 %55, %4
  br i1 %56, label %57, label %25, !llvm.loop !59

57:                                               ; preds = %45, %51
  %58 = phi i64 [ %52, %51 ], [ %27, %45 ]
  ret i64 %58
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @prune_options(ptr nocapture noundef %0, ptr nocapture noundef %1) local_unnamed_addr #2 !prof !60 {
  %3 = load i32, ptr %0, align 4, !tbaa !39
  %4 = sext i32 %3 to i64
  %5 = shl nsw i64 %4, 2
  %6 = tail call ptr @xmalloc(i64 noundef %5) #8
  %7 = shl nsw i64 %4, 3
  %8 = tail call ptr @xmalloc(i64 noundef %7) #8
  %9 = icmp sgt i32 %3, 1
  br i1 %9, label %10, label %120

10:                                               ; preds = %2
  %11 = load i32, ptr @cl_options_count, align 4
  %12 = zext i32 %11 to i64
  %13 = zext nneg i32 %3 to i64
  br label %14

14:                                               ; preds = %10, %69
  %15 = phi i64 [ 1, %10 ], [ %71, %69 ]
  %16 = phi i32 [ 0, %10 ], [ %70, %69 ]
  %17 = load ptr, ptr %1, align 8, !tbaa !61
  %18 = getelementptr inbounds ptr, ptr %17, i64 %15
  %19 = load ptr, ptr %18, align 8, !tbaa !61
  %20 = getelementptr inbounds i8, ptr %19, i64 1
  %21 = tail call i64 @find_opt(ptr noundef nonnull %20, i32 noundef -1) #7
  %22 = icmp ne i64 %21, %12
  br i1 %22, label %47, label %23

23:                                               ; preds = %14
  %24 = load i8, ptr %20, align 1, !tbaa !54
  switch i8 %24, label %50 [
    i8 87, label %25
    i8 102, label %25
    i8 109, label %25
  ]

25:                                               ; preds = %23, %23, %23
  %26 = getelementptr inbounds i8, ptr %19, i64 2
  %27 = load i8, ptr %26, align 1, !tbaa !54
  %28 = icmp eq i8 %27, 110
  br i1 %28, label %29, label %50

29:                                               ; preds = %25
  %30 = getelementptr inbounds i8, ptr %19, i64 3
  %31 = load i8, ptr %30, align 1, !tbaa !54
  %32 = icmp eq i8 %31, 111
  br i1 %32, label %33, label %50

33:                                               ; preds = %29
  %34 = getelementptr inbounds i8, ptr %19, i64 4
  %35 = load i8, ptr %34, align 1, !tbaa !54
  %36 = icmp eq i8 %35, 45
  br i1 %36, label %37, label %50

37:                                               ; preds = %33
  %38 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %19) #7
  %39 = add i64 %38, -2
  %40 = tail call ptr @xmalloc(i64 noundef %39) #8
  store i8 45, ptr %40, align 1, !tbaa !54
  %41 = load i8, ptr %20, align 1, !tbaa !54
  %42 = getelementptr inbounds i8, ptr %40, i64 1
  store i8 %41, ptr %42, align 1, !tbaa !54
  %43 = getelementptr inbounds i8, ptr %40, i64 2
  %44 = getelementptr inbounds i8, ptr %19, i64 5
  %45 = add i64 %38, -4
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %43, ptr nonnull align 1 %44, i64 %45, i1 false)
  %46 = tail call i64 @find_opt(ptr noundef nonnull %42, i32 noundef -1) #7
  tail call void @free(ptr noundef %40) #7
  br label %47

47:                                               ; preds = %37, %14
  %48 = phi i64 [ %46, %37 ], [ %21, %14 ]
  %49 = icmp eq i64 %48, %12
  br i1 %49, label %50, label %52

50:                                               ; preds = %23, %25, %29, %33, %61, %56, %52, %47
  %51 = getelementptr inbounds i32, ptr %6, i64 %15
  store i32 0, ptr %51, align 4, !tbaa !39
  br label %69

52:                                               ; preds = %47
  %53 = getelementptr inbounds [0 x %struct.cl_option], ptr @cl_options, i64 0, i64 %48, i32 4
  %54 = load i32, ptr %53, align 4, !tbaa !62
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %50, label %56

56:                                               ; preds = %52
  %57 = getelementptr inbounds [0 x %struct.cl_option], ptr @cl_options, i64 0, i64 %48, i32 5
  %58 = load i32, ptr %57, align 8, !tbaa !55
  %59 = and i32 %58, 33554432
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %50

61:                                               ; preds = %56
  %62 = and i32 %58, 134217728
  %63 = icmp eq i32 %62, 0
  %64 = or i1 %22, %63
  br i1 %64, label %65, label %50

65:                                               ; preds = %61
  %66 = trunc i64 %48 to i32
  %67 = getelementptr inbounds i32, ptr %6, i64 %15
  store i32 %66, ptr %67, align 4, !tbaa !39
  %68 = or i32 %16, %66
  br label %69

69:                                               ; preds = %65, %50
  %70 = phi i32 [ %16, %50 ], [ %68, %65 ]
  %71 = add nuw nsw i64 %15, 1
  %72 = icmp eq i64 %71, %13
  br i1 %72, label %73, label %14, !llvm.loop !63

73:                                               ; preds = %69
  %74 = icmp eq i32 %70, 0
  br i1 %74, label %120, label %75

75:                                               ; preds = %73
  %76 = load ptr, ptr %1, align 8, !tbaa !61
  %77 = load ptr, ptr %76, align 8, !tbaa !61
  store ptr %77, ptr %8, align 8, !tbaa !61
  br i1 %9, label %78, label %116

78:                                               ; preds = %75
  %79 = zext nneg i32 %3 to i64
  br label %80

80:                                               ; preds = %78, %112
  %81 = phi i64 [ 1, %78 ], [ %87, %112 ]
  %82 = phi i64 [ 2, %78 ], [ %114, %112 ]
  %83 = phi i32 [ 1, %78 ], [ %113, %112 ]
  %84 = getelementptr inbounds i32, ptr %6, i64 %81
  %85 = load i32, ptr %84, align 4, !tbaa !39
  %86 = icmp eq i32 %85, 0
  %87 = add nuw nsw i64 %81, 1
  br i1 %86, label %105, label %88

88:                                               ; preds = %80
  %89 = icmp slt i64 %87, %4
  br i1 %89, label %90, label %101

90:                                               ; preds = %88, %98
  %91 = phi i64 [ %99, %98 ], [ %82, %88 ]
  %92 = getelementptr inbounds i32, ptr %6, i64 %91
  %93 = load i32, ptr %92, align 4, !tbaa !39
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %98, label %95

95:                                               ; preds = %90
  %96 = tail call fastcc zeroext i8 @cancel_option(i32 noundef %85, i32 noundef %93, i32 noundef %93) #7, !range !64
  %97 = icmp eq i8 %96, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %90, %95
  %99 = add nuw nsw i64 %91, 1
  %100 = icmp eq i64 %99, %79
  br i1 %100, label %105, label %90, !llvm.loop !65

101:                                              ; preds = %95, %88
  %102 = phi i64 [ %87, %88 ], [ %91, %95 ]
  %103 = trunc i64 %102 to i32
  %104 = icmp eq i32 %3, %103
  br i1 %104, label %105, label %112

105:                                              ; preds = %98, %80, %101
  %106 = load ptr, ptr %1, align 8, !tbaa !61
  %107 = getelementptr inbounds ptr, ptr %106, i64 %81
  %108 = load ptr, ptr %107, align 8, !tbaa !61
  %109 = sext i32 %83 to i64
  %110 = getelementptr inbounds ptr, ptr %8, i64 %109
  store ptr %108, ptr %110, align 8, !tbaa !61
  %111 = add nsw i32 %83, 1
  br label %112

112:                                              ; preds = %105, %101
  %113 = phi i32 [ %111, %105 ], [ %83, %101 ]
  %114 = add nuw nsw i64 %82, 1
  %115 = icmp eq i64 %87, %79
  br i1 %115, label %116, label %80, !llvm.loop !66

116:                                              ; preds = %112, %75
  %117 = phi i32 [ 1, %75 ], [ %113, %112 ]
  %118 = icmp eq i32 %117, %3
  br i1 %118, label %120, label %119

119:                                              ; preds = %116
  store i32 %117, ptr %0, align 4, !tbaa !39
  store ptr %8, ptr %1, align 8, !tbaa !61
  br label %121

120:                                              ; preds = %2, %116, %73
  tail call void @free(ptr noundef %8) #7
  br label %121

121:                                              ; preds = %120, %119
  tail call void @free(ptr noundef %6) #7
  ret void
}

; Function Attrs: optsize
declare ptr @xmalloc(i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(none) uwtable
define internal fastcc noundef zeroext i8 @cancel_option(i32 noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #6 !prof !60 !PGOFuncName !67 {
  br label %4

4:                                                ; preds = %10, %3
  %5 = phi i32 [ %1, %3 ], [ %8, %10 ]
  %6 = sext i32 %5 to i64
  %7 = getelementptr inbounds [0 x %struct.cl_option], ptr @cl_options, i64 0, i64 %6, i32 4
  %8 = load i32, ptr %7, align 4, !tbaa !62
  %9 = icmp eq i32 %8, %0
  br i1 %9, label %12, label %10

10:                                               ; preds = %4
  %11 = icmp eq i32 %8, %2
  br i1 %11, label %12, label %4

12:                                               ; preds = %10, %4
  %13 = phi i8 [ 1, %4 ], [ 0, %10 ]
  ret i8 %13
}

attributes #0 = { nofree noinline nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree noinline norecurse nosync nounwind optsize memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { optsize }
attributes #8 = { nounwind optsize }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!37}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 82626029451}
!4 = !{!"MaxCount", i64 1293550144}
!5 = !{!"MaxInternalCount", i64 1293550144}
!6 = !{!"MaxFunctionCount", i64 1044599277}
!7 = !{!"NumCounts", i64 195328}
!8 = !{!"NumFunctions", i64 22513}
!9 = !{!"IsPartialProfile", i64 0}
!10 = !{!"PartialProfileRatio", double 0.000000e+00}
!11 = !{!"DetailedSummary", !12}
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!13 = !{i32 10000, i64 1293550144, i32 1}
!14 = !{i32 100000, i64 238791438, i32 19}
!15 = !{i32 200000, i64 112342198, i32 73}
!16 = !{i32 300000, i64 73330888, i32 164}
!17 = !{i32 400000, i64 47991750, i32 301}
!18 = !{i32 500000, i64 28421743, i32 535}
!19 = !{i32 600000, i64 17738858, i32 910}
!20 = !{i32 700000, i64 10364112, i32 1511}
!21 = !{i32 800000, i64 5164088, i32 2659}
!22 = !{i32 900000, i64 1953302, i32 5305}
!23 = !{i32 950000, i64 847371, i32 8456}
!24 = !{i32 990000, i64 164662, i32 16525}
!25 = !{i32 999000, i64 16513, i32 27926}
!26 = !{i32 999900, i64 2384, i32 37409}
!27 = !{i32 999990, i64 310, i32 44222}
!28 = !{i32 999999, i64 42, i32 49712}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 7, !"openmp", i32 51}
!31 = !{i32 8, !"PIC Level", i32 2}
!32 = !{i32 7, !"PIE Level", i32 2}
!33 = !{i32 7, !"uwtable", i32 2}
!34 = !{i32 5, !"CG Profile", !35}
!35 = distinct !{!36}
!36 = !{ptr @find_opt, ptr @strncmp, i64 70}
!37 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!38 = !{!"function_entry_count", i64 7}
!39 = !{!40, !40, i64 0}
!40 = !{!"int", !41, i64 0}
!41 = !{!"omnipotent char", !42, i64 0}
!42 = !{!"Simple C/C++ TBAA"}
!43 = !{!"branch_weights", i32 127, i32 1}
!44 = !{!45, !41, i64 18}
!45 = !{!"cl_option", !46, i64 0, !46, i64 8, !47, i64 16, !41, i64 18, !40, i64 20, !40, i64 24, !46, i64 32, !40, i64 40, !40, i64 44}
!46 = !{!"any pointer", !41, i64 0}
!47 = !{!"short", !41, i64 0}
!48 = !{!45, !46, i64 0}
!49 = !{!"branch_weights", i32 35, i32 35}
!50 = !{!"branch_weights", i32 977, i32 127}
!51 = distinct !{!51, !52}
!52 = !{!"llvm.loop.mustprogress"}
!53 = !{!"branch_weights", i32 8, i32 1}
!54 = !{!41, !41, i64 0}
!55 = !{!45, !40, i64 24}
!56 = !{!"branch_weights", i32 3, i32 33}
!57 = !{!"branch_weights", i32 1, i32 8}
!58 = !{!45, !47, i64 16}
!59 = distinct !{!59, !52}
!60 = !{!"function_entry_count", i64 0}
!61 = !{!46, !46, i64 0}
!62 = !{!45, !40, i64 20}
!63 = distinct !{!63, !52}
!64 = !{i8 0, i8 2}
!65 = distinct !{!65, !52}
!66 = distinct !{!66, !52}
!67 = !{!"opts-common.c:cancel_option"}
