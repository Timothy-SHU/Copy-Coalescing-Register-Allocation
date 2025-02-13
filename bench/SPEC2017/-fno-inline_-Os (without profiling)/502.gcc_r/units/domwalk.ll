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
define dso_local void @walk_dominator_tree(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr @cfun, align 8, !tbaa !5
  %4 = getelementptr inbounds %struct.function, ptr %3, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !9
  %6 = getelementptr inbounds %struct.control_flow_graph, ptr %5, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !12
  %8 = shl nsw i32 %7, 1
  %9 = sext i32 %8 to i64
  %10 = shl nsw i64 %9, 3
  %11 = tail call ptr @xmalloc(i64 noundef %10) #7
  %12 = getelementptr inbounds %struct.dom_walk_data, ptr %0, i64 0, i32 1
  %13 = getelementptr inbounds %struct.dom_walk_data, ptr %0, i64 0, i32 7
  %14 = getelementptr inbounds %struct.dom_walk_data, ptr %0, i64 0, i32 6
  %15 = getelementptr inbounds %struct.dom_walk_data, ptr %0, i64 0, i32 5
  %16 = getelementptr inbounds %struct.dom_walk_data, ptr %0, i64 0, i32 2
  %17 = getelementptr ptr, ptr %11, i64 -1
  %18 = getelementptr inbounds %struct.dom_walk_data, ptr %0, i64 0, i32 3
  br label %19

19:                                               ; preds = %111, %2
  %20 = phi ptr [ %1, %2 ], [ %116, %111 ]
  %21 = phi i32 [ 0, %2 ], [ %113, %111 ]
  %22 = load ptr, ptr %20, align 8, !tbaa !14
  %23 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %22) #8
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %35

25:                                               ; preds = %19
  %26 = load ptr, ptr @cfun, align 8, !tbaa !5
  %27 = getelementptr inbounds %struct.function, ptr %26, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !9
  %29 = load ptr, ptr %28, align 8, !tbaa !17
  %30 = icmp eq ptr %20, %29
  br i1 %30, label %35, label %31

31:                                               ; preds = %25
  %32 = getelementptr inbounds %struct.control_flow_graph, ptr %28, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !18
  %34 = icmp eq ptr %20, %33
  br i1 %34, label %35, label %79

35:                                               ; preds = %31, %25, %19
  %36 = load ptr, ptr %12, align 8, !tbaa !19
  %37 = icmp eq ptr %36, null
  br i1 %37, label %51, label %38

38:                                               ; preds = %35
  %39 = load ptr, ptr %13, align 8, !tbaa !21
  %40 = tail call fastcc i32 @VEC_void_p_base_length(ptr noundef %39) #8
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %44, label %42

42:                                               ; preds = %38
  %43 = tail call fastcc ptr @VEC_void_p_base_pop(ptr noundef %39) #8
  br label %47

44:                                               ; preds = %38
  %45 = load i64, ptr %14, align 8, !tbaa !22
  %46 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef %45) #7
  br label %47

47:                                               ; preds = %44, %42
  %48 = phi ptr [ %43, %42 ], [ %46, %44 ]
  %49 = phi i8 [ 1, %42 ], [ 0, %44 ]
  tail call fastcc void @VEC_void_p_heap_safe_push(ptr noundef nonnull %15, ptr noundef %48) #8
  %50 = load ptr, ptr %12, align 8, !tbaa !19
  tail call void %50(ptr noundef nonnull %0, ptr noundef nonnull %20, i8 noundef zeroext %49) #7
  br label %51

51:                                               ; preds = %47, %35
  %52 = load ptr, ptr %16, align 8, !tbaa !23
  %53 = icmp eq ptr %52, null
  br i1 %53, label %55, label %54

54:                                               ; preds = %51
  tail call void %52(ptr noundef nonnull %0, ptr noundef nonnull %20) #7
  br label %55

55:                                               ; preds = %54, %51
  %56 = sext i32 %21 to i64
  %57 = getelementptr inbounds ptr, ptr %11, i64 %56
  store ptr %20, ptr %57, align 8, !tbaa !5
  %58 = add i32 %21, 2
  %59 = getelementptr ptr, ptr %57, i64 1
  store ptr null, ptr %59, align 8, !tbaa !5
  %60 = load i8, ptr %0, align 8
  %61 = and i8 %60, 3
  %62 = zext nneg i8 %61 to i32
  %63 = tail call ptr @first_dom_son(i32 noundef %62, ptr noundef nonnull %20) #7
  %64 = icmp eq ptr %63, null
  br i1 %64, label %79, label %65

65:                                               ; preds = %55
  %66 = sext i32 %58 to i64
  br label %67

67:                                               ; preds = %65, %67
  %68 = phi i64 [ %66, %65 ], [ %70, %67 ]
  %69 = phi ptr [ %63, %65 ], [ %75, %67 ]
  %70 = add i64 %68, 1
  %71 = getelementptr inbounds ptr, ptr %11, i64 %68
  store ptr %69, ptr %71, align 8, !tbaa !5
  %72 = load i8, ptr %0, align 8
  %73 = and i8 %72, 3
  %74 = zext nneg i8 %73 to i32
  %75 = tail call ptr @next_dom_son(i32 noundef %74, ptr noundef nonnull %69) #7
  %76 = icmp eq ptr %75, null
  br i1 %76, label %77, label %67, !llvm.loop !24

77:                                               ; preds = %67
  %78 = trunc i64 %70 to i32
  br label %79

79:                                               ; preds = %77, %55, %31
  %80 = phi i32 [ %21, %31 ], [ %58, %55 ], [ %78, %77 ]
  %81 = icmp sgt i32 %80, 0
  br i1 %81, label %82, label %106

82:                                               ; preds = %79
  %83 = zext nneg i32 %80 to i64
  br label %84

84:                                               ; preds = %82, %102
  %85 = phi i64 [ %83, %82 ], [ %90, %102 ]
  %86 = getelementptr ptr, ptr %17, i64 %85
  %87 = load ptr, ptr %86, align 8, !tbaa !5
  %88 = icmp eq ptr %87, null
  br i1 %88, label %89, label %109

89:                                               ; preds = %84
  %90 = add nsw i64 %85, -2
  %91 = load ptr, ptr %18, align 8, !tbaa !26
  %92 = icmp eq ptr %91, null
  br i1 %92, label %96, label %93

93:                                               ; preds = %89
  %94 = getelementptr inbounds ptr, ptr %11, i64 %90
  %95 = load ptr, ptr %94, align 8, !tbaa !5
  tail call void %91(ptr noundef nonnull %0, ptr noundef %95) #7
  br label %96

96:                                               ; preds = %93, %89
  %97 = load ptr, ptr %12, align 8, !tbaa !19
  %98 = icmp eq ptr %97, null
  br i1 %98, label %102, label %99

99:                                               ; preds = %96
  %100 = load ptr, ptr %15, align 8, !tbaa !27
  %101 = tail call fastcc ptr @VEC_void_p_base_pop(ptr noundef %100) #8
  tail call fastcc void @VEC_void_p_heap_safe_push(ptr noundef nonnull %13, ptr noundef %101) #8
  br label %102

102:                                              ; preds = %99, %96
  %103 = icmp ugt i64 %85, 2
  br i1 %103, label %84, label %104, !llvm.loop !28

104:                                              ; preds = %102
  %105 = trunc i64 %90 to i32
  br label %106

106:                                              ; preds = %104, %79
  %107 = phi i32 [ %80, %79 ], [ %105, %104 ]
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %117, label %111

109:                                              ; preds = %84
  %110 = trunc i64 %85 to i32
  br label %111

111:                                              ; preds = %109, %106
  %112 = phi i32 [ %107, %106 ], [ %110, %109 ]
  %113 = add nsw i32 %112, -1
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds ptr, ptr %11, i64 %114
  %116 = load ptr, ptr %115, align 8, !tbaa !5
  br label %19

117:                                              ; preds = %106
  tail call void @free(ptr noundef %11) #8
  ret void
}

; Function Attrs: optsize
declare ptr @xmalloc(i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_edge_base_length(ptr noundef readonly %0) unnamed_addr #2 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !29
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_void_p_base_length(ptr noundef readonly %0) unnamed_addr #2 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !31
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc ptr @VEC_void_p_base_pop(ptr nocapture noundef %0) unnamed_addr #3 {
  %2 = load i32, ptr %0, align 8, !tbaa !31
  %3 = add i32 %2, -1
  store i32 %3, ptr %0, align 8, !tbaa !31
  %4 = zext i32 %3 to i64
  %5 = getelementptr inbounds %struct.VEC_void_p_base, ptr %0, i64 0, i32 2, i64 %4
  %6 = load ptr, ptr %5, align 8, !tbaa !5
  ret ptr %6
}

; Function Attrs: optsize
declare ptr @xcalloc(i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_void_p_heap_safe_push(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #0 {
  tail call fastcc void @VEC_void_p_heap_reserve(ptr noundef %0) #8
  %3 = load ptr, ptr %0, align 8, !tbaa !5
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
define dso_local void @init_walk_dominator_tree(ptr nocapture noundef writeonly %0) local_unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.dom_walk_data, ptr %0, i64 0, i32 7
  store ptr null, ptr %2, align 8, !tbaa !21
  %3 = getelementptr inbounds %struct.dom_walk_data, ptr %0, i64 0, i32 5
  store ptr null, ptr %3, align 8, !tbaa !27
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @fini_walk_dominator_tree(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.dom_walk_data, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !19
  %4 = icmp eq ptr %3, null
  br i1 %4, label %16, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.dom_walk_data, ptr %0, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !21
  %8 = tail call fastcc i32 @VEC_void_p_base_length(ptr noundef %7) #8
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %16, label %10

10:                                               ; preds = %5, %10
  %11 = phi ptr [ %13, %10 ], [ %7, %5 ]
  %12 = tail call fastcc ptr @VEC_void_p_base_pop(ptr noundef %11) #8
  tail call void @free(ptr noundef %12) #8
  %13 = load ptr, ptr %6, align 8, !tbaa !21
  %14 = tail call fastcc i32 @VEC_void_p_base_length(ptr noundef %13) #8
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %10, !llvm.loop !33

16:                                               ; preds = %10, %5, %1
  %17 = getelementptr inbounds %struct.dom_walk_data, ptr %0, i64 0, i32 7
  tail call fastcc void @VEC_void_p_heap_free(ptr noundef nonnull %17) #8
  %18 = getelementptr inbounds %struct.dom_walk_data, ptr %0, i64 0, i32 5
  tail call fastcc void @VEC_void_p_heap_free(ptr noundef nonnull %18) #8
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_void_p_heap_free(ptr nocapture noundef %0) unnamed_addr #6 {
  %2 = load ptr, ptr %0, align 8, !tbaa !5
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @free(ptr noundef nonnull %2) #8
  br label %5

5:                                                ; preds = %4, %1
  store ptr null, ptr %0, align 8, !tbaa !5
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_void_p_heap_reserve(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !5
  %3 = tail call fastcc i32 @VEC_void_p_base_space(ptr noundef %2) #8
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = tail call ptr @vec_heap_p_reserve(ptr noundef %2, i32 noundef 1) #7
  store ptr %6, ptr %0, align 8, !tbaa !5
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_void_p_base_quick_push(ptr noundef %0, ptr noundef %1) unnamed_addr #3 {
  %3 = load i32, ptr %0, align 8, !tbaa !31
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 8, !tbaa !31
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds %struct.VEC_void_p_base, ptr %0, i64 0, i32 2, i64 %5
  store ptr %1, ptr %6, align 8, !tbaa !5
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_void_p_base_space(ptr noundef readonly %0) unnamed_addr #2 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.VEC_void_p_base, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !34
  %6 = load i32, ptr %0, align 8, !tbaa !31
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

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !6, i64 8}
!10 = !{!"function", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !6, i64 56, !6, i64 64, !6, i64 72, !6, i64 80, !6, i64 88, !6, i64 96, !11, i64 104, !11, i64 108, !11, i64 112, !11, i64 116, !11, i64 120, !11, i64 124, !6, i64 128, !11, i64 136, !11, i64 137, !11, i64 138, !11, i64 138, !11, i64 138, !11, i64 138, !11, i64 138, !11, i64 138, !11, i64 138, !11, i64 139, !11, i64 139, !11, i64 139, !11, i64 139, !11, i64 139, !11, i64 139, !11, i64 139}
!11 = !{!"int", !7, i64 0}
!12 = !{!13, !11, i64 24}
!13 = !{!"control_flow_graph", !6, i64 0, !6, i64 8, !6, i64 16, !11, i64 24, !11, i64 28, !11, i64 32, !6, i64 40, !11, i64 48, !7, i64 52, !7, i64 60, !11, i64 68, !11, i64 72}
!14 = !{!15, !6, i64 0}
!15 = !{!"basic_block_def", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !7, i64 32, !6, i64 48, !6, i64 56, !7, i64 64, !16, i64 72, !11, i64 80, !11, i64 84, !11, i64 88, !11, i64 92, !11, i64 96}
!16 = !{!"long", !7, i64 0}
!17 = !{!13, !6, i64 0}
!18 = !{!13, !6, i64 8}
!19 = !{!20, !6, i64 8}
!20 = !{!"dom_walk_data", !11, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !16, i64 48, !6, i64 56}
!21 = !{!20, !6, i64 56}
!22 = !{!20, !16, i64 48}
!23 = !{!20, !6, i64 16}
!24 = distinct !{!24, !25}
!25 = !{!"llvm.loop.mustprogress"}
!26 = !{!20, !6, i64 24}
!27 = !{!20, !6, i64 40}
!28 = distinct !{!28, !25}
!29 = !{!30, !11, i64 0}
!30 = !{!"VEC_edge_base", !11, i64 0, !11, i64 4, !7, i64 8}
!31 = !{!32, !11, i64 0}
!32 = !{!"VEC_void_p_base", !11, i64 0, !11, i64 4, !7, i64 8}
!33 = distinct !{!33, !25}
!34 = !{!32, !11, i64 4}
