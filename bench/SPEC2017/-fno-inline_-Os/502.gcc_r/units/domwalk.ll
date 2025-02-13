; ModuleID = 'domwalk.c'
source_filename = "domwalk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.control_flow_graph = type { ptr, ptr, ptr, i32, i32, i32, ptr, i32, [2 x i32], [2 x i32], i32, i32 }
%struct.dom_walk_data = type { i8, ptr, ptr, ptr, ptr, ptr, i64, ptr }
%struct.VEC_void_p_base = type { i32, i32, [1 x ptr] }

@cfun = external local_unnamed_addr global ptr, align 8

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @walk_dominator_tree(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !54 {
  %3 = load ptr, ptr @cfun, align 8, !tbaa !55
  %4 = getelementptr inbounds %struct.function, ptr %3, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !59
  %6 = getelementptr inbounds %struct.control_flow_graph, ptr %5, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !62
  %8 = shl nsw i32 %7, 1
  %9 = sext i32 %8 to i64
  %10 = shl nsw i64 %9, 3
  %11 = tail call ptr @xmalloc(i64 noundef %10) #7
  %12 = getelementptr inbounds %struct.dom_walk_data, ptr %0, i64 0, i32 1
  %13 = getelementptr inbounds %struct.dom_walk_data, ptr %0, i64 0, i32 7
  %14 = getelementptr inbounds %struct.dom_walk_data, ptr %0, i64 0, i32 5
  %15 = getelementptr inbounds %struct.dom_walk_data, ptr %0, i64 0, i32 2
  %16 = getelementptr ptr, ptr %11, i64 -1
  %17 = getelementptr inbounds %struct.dom_walk_data, ptr %0, i64 0, i32 3
  br label %18

18:                                               ; preds = %111, %2
  %19 = phi ptr [ %1, %2 ], [ %116, %111 ]
  %20 = phi i32 [ 0, %2 ], [ %113, %111 ]
  %21 = load ptr, ptr %19, align 8, !tbaa !64
  %22 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %21) #8
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %34, !prof !67

24:                                               ; preds = %18
  %25 = load ptr, ptr @cfun, align 8, !tbaa !55
  %26 = getelementptr inbounds %struct.function, ptr %25, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !59
  %28 = load ptr, ptr %27, align 8, !tbaa !68
  %29 = icmp eq ptr %19, %28
  br i1 %29, label %34, label %30, !prof !69

30:                                               ; preds = %24
  %31 = getelementptr inbounds %struct.control_flow_graph, ptr %27, i64 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !70
  %33 = icmp eq ptr %19, %32
  br i1 %33, label %34, label %79

34:                                               ; preds = %30, %24, %18
  %35 = load ptr, ptr %12, align 8, !tbaa !71
  %36 = icmp eq ptr %35, null
  br i1 %36, label %51, label %37, !prof !73

37:                                               ; preds = %34
  %38 = load ptr, ptr %13, align 8, !tbaa !74
  %39 = tail call fastcc i32 @VEC_void_p_base_length(ptr noundef %38) #8
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %43, label %41, !prof !75

41:                                               ; preds = %37
  %42 = tail call fastcc ptr @VEC_void_p_base_pop(ptr noundef %38) #8
  br label %47

43:                                               ; preds = %37
  %44 = getelementptr inbounds %struct.dom_walk_data, ptr %0, i64 0, i32 6
  %45 = load i64, ptr %44, align 8, !tbaa !76
  %46 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef %45) #7
  br label %47

47:                                               ; preds = %43, %41
  %48 = phi ptr [ %42, %41 ], [ %46, %43 ]
  %49 = phi i8 [ 1, %41 ], [ 0, %43 ]
  tail call fastcc void @VEC_void_p_heap_safe_push(ptr noundef nonnull %14, ptr noundef %48) #8
  %50 = load ptr, ptr %12, align 8, !tbaa !71
  tail call void %50(ptr noundef nonnull %0, ptr noundef nonnull %19, i8 noundef zeroext %49) #7
  br label %51

51:                                               ; preds = %47, %34
  %52 = load ptr, ptr %15, align 8, !tbaa !77
  %53 = icmp eq ptr %52, null
  br i1 %53, label %55, label %54, !prof !78

54:                                               ; preds = %51
  tail call void %52(ptr noundef nonnull %0, ptr noundef nonnull %19) #7
  br label %55

55:                                               ; preds = %54, %51
  %56 = sext i32 %20 to i64
  %57 = getelementptr inbounds ptr, ptr %11, i64 %56
  store ptr %19, ptr %57, align 8, !tbaa !55
  %58 = add i32 %20, 2
  %59 = getelementptr ptr, ptr %57, i64 1
  store ptr null, ptr %59, align 8, !tbaa !55
  %60 = load i8, ptr %0, align 8
  %61 = and i8 %60, 3
  %62 = zext nneg i8 %61 to i32
  %63 = tail call ptr @first_dom_son(i32 noundef %62, ptr noundef nonnull %19) #7
  %64 = icmp eq ptr %63, null
  br i1 %64, label %79, label %65, !prof !79

65:                                               ; preds = %55
  %66 = sext i32 %58 to i64
  br label %67

67:                                               ; preds = %65, %67
  %68 = phi i64 [ %66, %65 ], [ %70, %67 ]
  %69 = phi ptr [ %63, %65 ], [ %75, %67 ]
  %70 = add i64 %68, 1
  %71 = getelementptr inbounds ptr, ptr %11, i64 %68
  store ptr %69, ptr %71, align 8, !tbaa !55
  %72 = load i8, ptr %0, align 8
  %73 = and i8 %72, 3
  %74 = zext nneg i8 %73 to i32
  %75 = tail call ptr @next_dom_son(i32 noundef %74, ptr noundef nonnull %69) #7
  %76 = icmp eq ptr %75, null
  br i1 %76, label %77, label %67, !prof !80, !llvm.loop !81

77:                                               ; preds = %67
  %78 = trunc i64 %70 to i32
  br label %79

79:                                               ; preds = %77, %55, %30
  %80 = phi i32 [ %20, %30 ], [ %58, %55 ], [ %78, %77 ]
  %81 = icmp sgt i32 %80, 0
  br i1 %81, label %82, label %106, !prof !83

82:                                               ; preds = %79
  %83 = zext nneg i32 %80 to i64
  br label %84

84:                                               ; preds = %82, %102
  %85 = phi i64 [ %83, %82 ], [ %90, %102 ]
  %86 = getelementptr ptr, ptr %16, i64 %85
  %87 = load ptr, ptr %86, align 8, !tbaa !55
  %88 = icmp eq ptr %87, null
  br i1 %88, label %89, label %109, !prof !84

89:                                               ; preds = %84
  %90 = add nsw i64 %85, -2
  %91 = load ptr, ptr %17, align 8, !tbaa !85
  %92 = icmp eq ptr %91, null
  br i1 %92, label %96, label %93, !prof !86

93:                                               ; preds = %89
  %94 = getelementptr inbounds ptr, ptr %11, i64 %90
  %95 = load ptr, ptr %94, align 8, !tbaa !55
  tail call void %91(ptr noundef nonnull %0, ptr noundef %95) #7
  br label %96

96:                                               ; preds = %93, %89
  %97 = load ptr, ptr %12, align 8, !tbaa !71
  %98 = icmp eq ptr %97, null
  br i1 %98, label %102, label %99, !prof !73

99:                                               ; preds = %96
  %100 = load ptr, ptr %14, align 8, !tbaa !87
  %101 = tail call fastcc ptr @VEC_void_p_base_pop(ptr noundef %100) #8
  tail call fastcc void @VEC_void_p_heap_safe_push(ptr noundef nonnull %13, ptr noundef %101) #8
  br label %102

102:                                              ; preds = %99, %96
  %103 = icmp ugt i64 %85, 2
  br i1 %103, label %84, label %104, !prof !88, !llvm.loop !89

104:                                              ; preds = %102
  %105 = trunc i64 %90 to i32
  br label %106

106:                                              ; preds = %104, %79
  %107 = phi i32 [ %80, %79 ], [ %105, %104 ]
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %117, label %111, !prof !90

109:                                              ; preds = %84
  %110 = trunc i64 %85 to i32
  br label %111

111:                                              ; preds = %109, %106
  %112 = phi i32 [ %107, %106 ], [ %110, %109 ]
  %113 = add nsw i32 %112, -1
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds ptr, ptr %11, i64 %114
  %116 = load ptr, ptr %115, align 8, !tbaa !55
  br label %18

117:                                              ; preds = %106
  tail call void @free(ptr noundef %11) #8
  ret void
}

; Function Attrs: optsize
declare ptr @xmalloc(i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_edge_base_length(ptr noundef readonly %0) unnamed_addr #2 !prof !91 !PGOFuncName !92 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !67

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !93
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_void_p_base_length(ptr noundef readonly %0) unnamed_addr #2 !prof !95 !PGOFuncName !96 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !97

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !98
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc ptr @VEC_void_p_base_pop(ptr nocapture noundef %0) unnamed_addr #3 !prof !100 !PGOFuncName !101 {
  %2 = load i32, ptr %0, align 8, !tbaa !98
  %3 = add i32 %2, -1
  store i32 %3, ptr %0, align 8, !tbaa !98
  %4 = zext i32 %3 to i64
  %5 = getelementptr inbounds %struct.VEC_void_p_base, ptr %0, i64 0, i32 2, i64 %4
  %6 = load ptr, ptr %5, align 8, !tbaa !55
  ret ptr %6
}

; Function Attrs: optsize
declare ptr @xcalloc(i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_void_p_heap_safe_push(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #0 !prof !100 !PGOFuncName !102 {
  tail call fastcc void @VEC_void_p_heap_reserve(ptr noundef %0) #8
  %3 = load ptr, ptr %0, align 8, !tbaa !55
  tail call fastcc void @VEC_void_p_base_quick_push(ptr noundef %3, ptr noundef %1) #8
  ret void
}

; Function Attrs: optsize
declare ptr @first_dom_son(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @next_dom_son(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @init_walk_dominator_tree(ptr nocapture noundef writeonly %0) local_unnamed_addr #5 !prof !54 {
  %2 = getelementptr inbounds %struct.dom_walk_data, ptr %0, i64 0, i32 7
  store ptr null, ptr %2, align 8, !tbaa !74
  %3 = getelementptr inbounds %struct.dom_walk_data, ptr %0, i64 0, i32 5
  store ptr null, ptr %3, align 8, !tbaa !87
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @fini_walk_dominator_tree(ptr nocapture noundef %0) local_unnamed_addr #0 !prof !54 {
  %2 = getelementptr inbounds %struct.dom_walk_data, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !71
  %4 = icmp eq ptr %3, null
  br i1 %4, label %16, label %5, !prof !103

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.dom_walk_data, ptr %0, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !74
  %8 = tail call fastcc i32 @VEC_void_p_base_length(ptr noundef %7) #8
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %16, label %10, !prof !104

10:                                               ; preds = %5, %10
  %11 = phi ptr [ %13, %10 ], [ %7, %5 ]
  %12 = tail call fastcc ptr @VEC_void_p_base_pop(ptr noundef %11) #8
  tail call void @free(ptr noundef %12) #8
  %13 = load ptr, ptr %6, align 8, !tbaa !74
  %14 = tail call fastcc i32 @VEC_void_p_base_length(ptr noundef %13) #8
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %10, !prof !105, !llvm.loop !106

16:                                               ; preds = %10, %5, %1
  %17 = getelementptr inbounds %struct.dom_walk_data, ptr %0, i64 0, i32 7
  tail call fastcc void @VEC_void_p_heap_free(ptr noundef nonnull %17) #8
  %18 = getelementptr inbounds %struct.dom_walk_data, ptr %0, i64 0, i32 5
  tail call fastcc void @VEC_void_p_heap_free(ptr noundef nonnull %18) #8
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_void_p_heap_free(ptr nocapture noundef %0) unnamed_addr #6 !prof !107 !PGOFuncName !108 {
  %2 = load ptr, ptr %0, align 8, !tbaa !55
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4, !prof !109

4:                                                ; preds = %1
  tail call void @free(ptr noundef nonnull %2) #8
  br label %5

5:                                                ; preds = %4, %1
  store ptr null, ptr %0, align 8, !tbaa !55
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_void_p_heap_reserve(ptr nocapture noundef %0) unnamed_addr #0 !prof !100 !PGOFuncName !110 {
  %2 = load ptr, ptr %0, align 8, !tbaa !55
  %3 = tail call fastcc i32 @VEC_void_p_base_space(ptr noundef %2) #8
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7, !prof !111

5:                                                ; preds = %1
  %6 = tail call ptr @vec_heap_p_reserve(ptr noundef %2, i32 noundef 1) #7
  store ptr %6, ptr %0, align 8, !tbaa !55
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_void_p_base_quick_push(ptr noundef %0, ptr noundef %1) unnamed_addr #3 !prof !100 !PGOFuncName !112 {
  %3 = load i32, ptr %0, align 8, !tbaa !98
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 8, !tbaa !98
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds %struct.VEC_void_p_base, ptr %0, i64 0, i32 2, i64 %5
  store ptr %1, ptr %6, align 8, !tbaa !55
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_void_p_base_space(ptr noundef readonly %0) unnamed_addr #2 !prof !100 !PGOFuncName !113 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3, !prof !114

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.VEC_void_p_base, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !115
  %6 = load i32, ptr %0, align 8, !tbaa !98
  %7 = icmp ne i32 %5, %6
  %8 = zext i1 %7 to i32
  br label %9

9:                                                ; preds = %1, %3
  %10 = phi i32 [ %8, %3 ], [ 0, %1 ]
  ret i32 %10
}

; Function Attrs: optsize
declare ptr @vec_heap_p_reserve(ptr noundef, i32 noundef) local_unnamed_addr #1

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress noinline nounwind optsize willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind optsize }
attributes #8 = { optsize }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!53}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 41384367471}
!4 = !{!"MaxCount", i64 1634498074}
!5 = !{!"MaxInternalCount", i64 547036138}
!6 = !{!"MaxFunctionCount", i64 1634498074}
!7 = !{!"NumCounts", i64 195328}
!8 = !{!"NumFunctions", i64 22513}
!9 = !{!"IsPartialProfile", i64 0}
!10 = !{!"PartialProfileRatio", double 0.000000e+00}
!11 = !{!"DetailedSummary", !12}
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!13 = !{i32 10000, i64 1634498074, i32 1}
!14 = !{i32 100000, i64 272534181, i32 9}
!15 = !{i32 200000, i64 109006700, i32 29}
!16 = !{i32 300000, i64 55802042, i32 85}
!17 = !{i32 400000, i64 37542678, i32 177}
!18 = !{i32 500000, i64 23214123, i32 321}
!19 = !{i32 600000, i64 14141732, i32 538}
!20 = !{i32 700000, i64 7343732, i32 948}
!21 = !{i32 800000, i64 3522590, i32 1768}
!22 = !{i32 900000, i64 1189516, i32 3798}
!23 = !{i32 950000, i64 537165, i32 6437}
!24 = !{i32 990000, i64 138704, i32 12217}
!25 = !{i32 999000, i64 22717, i32 17399}
!26 = !{i32 999900, i64 2200, i32 21474}
!27 = !{i32 999990, i64 190, i32 26113}
!28 = !{i32 999999, i64 38, i32 30999}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 8, !"PIC Level", i32 2}
!31 = !{i32 7, !"PIE Level", i32 2}
!32 = !{i32 7, !"uwtable", i32 2}
!33 = !{i32 5, !"CG Profile", !34}
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52}
!35 = !{ptr @walk_dominator_tree, ptr @xmalloc, i64 609}
!36 = !{ptr @walk_dominator_tree, ptr @VEC_edge_base_length, i64 350533}
!37 = !{ptr @walk_dominator_tree, ptr @VEC_void_p_base_length, i64 36926}
!38 = !{ptr @walk_dominator_tree, ptr @VEC_void_p_base_pop, i64 73650}
!39 = !{ptr @walk_dominator_tree, ptr @xcalloc, i64 137}
!40 = !{ptr @walk_dominator_tree, ptr @VEC_void_p_heap_safe_push, i64 73787}
!41 = !{ptr @walk_dominator_tree, ptr @first_dom_son, i64 350533}
!42 = !{ptr @walk_dominator_tree, ptr @next_dom_son, i64 350464}
!43 = !{ptr @walk_dominator_tree, ptr @free, i64 609}
!44 = !{ptr @VEC_void_p_heap_safe_push, ptr @VEC_void_p_heap_reserve, i64 653488}
!45 = !{ptr @VEC_void_p_heap_safe_push, ptr @VEC_void_p_base_quick_push, i64 653488}
!46 = !{ptr @fini_walk_dominator_tree, ptr @VEC_void_p_base_length, i64 1282}
!47 = !{ptr @fini_walk_dominator_tree, ptr @VEC_void_p_base_pop, i64 1205}
!48 = !{ptr @fini_walk_dominator_tree, ptr @free, i64 1205}
!49 = !{ptr @fini_walk_dominator_tree, ptr @VEC_void_p_heap_free, i64 1218}
!50 = !{ptr @VEC_void_p_heap_free, ptr @free, i64 153}
!51 = !{ptr @VEC_void_p_heap_reserve, ptr @VEC_void_p_base_space, i64 653488}
!52 = !{ptr @VEC_void_p_heap_reserve, ptr @vec_heap_p_reserve, i64 339}
!53 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!54 = !{!"function_entry_count", i64 609}
!55 = !{!56, !56, i64 0}
!56 = !{!"any pointer", !57, i64 0}
!57 = !{!"omnipotent char", !58, i64 0}
!58 = !{!"Simple C/C++ TBAA"}
!59 = !{!60, !56, i64 8}
!60 = !{!"function", !56, i64 0, !56, i64 8, !56, i64 16, !56, i64 24, !56, i64 32, !56, i64 40, !56, i64 48, !56, i64 56, !56, i64 64, !56, i64 72, !56, i64 80, !56, i64 88, !56, i64 96, !61, i64 104, !61, i64 108, !61, i64 112, !61, i64 116, !61, i64 120, !61, i64 124, !56, i64 128, !61, i64 136, !61, i64 137, !61, i64 138, !61, i64 138, !61, i64 138, !61, i64 138, !61, i64 138, !61, i64 138, !61, i64 138, !61, i64 139, !61, i64 139, !61, i64 139, !61, i64 139, !61, i64 139, !61, i64 139, !61, i64 139}
!61 = !{!"int", !57, i64 0}
!62 = !{!63, !61, i64 24}
!63 = !{!"control_flow_graph", !56, i64 0, !56, i64 8, !56, i64 16, !61, i64 24, !61, i64 28, !61, i64 32, !56, i64 40, !61, i64 48, !57, i64 52, !57, i64 60, !61, i64 68, !61, i64 72}
!64 = !{!65, !56, i64 0}
!65 = !{!"basic_block_def", !56, i64 0, !56, i64 8, !56, i64 16, !56, i64 24, !57, i64 32, !56, i64 48, !56, i64 56, !57, i64 64, !66, i64 72, !61, i64 80, !61, i64 84, !61, i64 88, !61, i64 92, !61, i64 96}
!66 = !{!"long", !57, i64 0}
!67 = !{!"branch_weights", i32 405, i32 3101372}
!68 = !{!63, !56, i64 0}
!69 = !{!"branch_weights", i32 405, i32 1}
!70 = !{!63, !56, i64 8}
!71 = !{!72, !56, i64 8}
!72 = !{!"dom_walk_data", !61, i64 0, !56, i64 8, !56, i64 16, !56, i64 24, !56, i64 32, !56, i64 40, !66, i64 48, !56, i64 56}
!73 = !{!"branch_weights", i32 2775032, i32 326745}
!74 = !{!72, !56, i64 56}
!75 = !{!"branch_weights", i32 1209, i32 325537}
!76 = !{!72, !66, i64 48}
!77 = !{!72, !56, i64 16}
!78 = !{!"branch_weights", i32 1, i32 3101776}
!79 = !{!"branch_weights", i32 609, i32 3101167}
!80 = !{!"branch_weights", i32 3101167, i32 0}
!81 = distinct !{!81, !82}
!82 = !{!"llvm.loop.mustprogress"}
!83 = !{!"branch_weights", i32 609, i32 1}
!84 = !{!"branch_weights", i32 3101776, i32 3101776}
!85 = !{!72, !56, i64 24}
!86 = !{!"branch_weights", i32 187367, i32 2914410}
!87 = !{!72, !56, i64 40}
!88 = !{!"branch_weights", i32 6202333, i32 609}
!89 = distinct !{!89, !82}
!90 = !{!"branch_weights", i32 -2147483648, i32 0}
!91 = !{!"function_entry_count", i64 3101775}
!92 = !{!"domwalk.c:VEC_edge_base_length"}
!93 = !{!94, !61, i64 0}
!94 = !{!"VEC_edge_base", !61, i64 0, !61, i64 4, !57, i64 8}
!95 = !{!"function_entry_count", i64 328028}
!96 = !{!"domwalk.c:VEC_void_p_base_length"}
!97 = !{!"branch_weights", i32 229, i32 327801}
!98 = !{!99, !61, i64 0}
!99 = !{!"VEC_void_p_base", !61, i64 0, !61, i64 4, !57, i64 8}
!100 = !{!"function_entry_count", i64 653488}
!101 = !{!"domwalk.c:VEC_void_p_base_pop"}
!102 = !{!"domwalk.c:VEC_void_p_heap_safe_push"}
!103 = !{!"branch_weights", i32 534, i32 77}
!104 = !{!"branch_weights", i32 1, i32 153}
!105 = !{!"branch_weights", i32 153, i32 2265}
!106 = distinct !{!106, !82}
!107 = !{!"function_entry_count", i64 1218}
!108 = !{!"domwalk.c:VEC_void_p_heap_free"}
!109 = !{!"branch_weights", i32 1067, i32 153}
!110 = !{!"domwalk.c:VEC_void_p_heap_reserve"}
!111 = !{!"branch_weights", i32 339, i32 653151}
!112 = !{!"domwalk.c:VEC_void_p_base_quick_push"}
!113 = !{!"domwalk.c:VEC_void_p_base_space"}
!114 = !{!"branch_weights", i32 153, i32 653337}
!115 = !{!99, !61, i64 4}
