; ModuleID = 'ipa-utils.c'
source_filename = "ipa-utils.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.searchc_env = type { ptr, i32, ptr, i32, ptr, i8, i32 }
%struct.cgraph_node = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.cgraph_local_info, %struct.cgraph_global_info, %struct.cgraph_rtl_info, %struct.cgraph_clone_info, %struct.cgraph_thunk_info, i64, i32, i32, i32, i16 }
%struct.cgraph_local_info = type { ptr, %struct.inline_summary, i8 }
%struct.inline_summary = type { i64, i32, i32, i32, i32 }
%struct.cgraph_global_info = type { i64, i64, ptr, i32, i32, i32, i8 }
%struct.cgraph_rtl_info = type { i32 }
%struct.cgraph_clone_info = type { ptr, ptr, ptr }
%struct.cgraph_thunk_info = type { i64, i64, ptr, i8, i8, i8 }
%struct.ipa_dfs_info = type { i32, i32, i8, i8, ptr, ptr }
%struct.splay_tree_node_s = type { i64, i64, ptr, ptr }
%struct.cgraph_edge = type { i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i16, i8 }
%struct.tree_ssa_name = type { %struct.tree_common, ptr, ptr, i32, ptr, %struct.ssa_use_operand_d }
%struct.tree_common = type { %struct.tree_base, ptr, ptr }
%struct.tree_base = type { i64 }
%struct.ssa_use_operand_d = type { ptr, ptr, %union.anon, ptr }
%union.anon = type { ptr }
%struct.tree_exp = type { %struct.tree_common, i32, ptr, [1 x ptr] }

@.str = private unnamed_addr constant [27 x i8] c"\0A\0A ordered call graph: %s\0A\00", align 1
@dump_file = external local_unnamed_addr global ptr, align 8
@cgraph_n_nodes = external local_unnamed_addr global i32, align 4
@cgraph_nodes = external local_unnamed_addr global ptr, align 8
@tree_code_type = external local_unnamed_addr constant [0 x i32], align 4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ipa_utils_print_order(ptr nocapture noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef %1) #8
  %6 = icmp sgt i32 %3, 0
  br i1 %6, label %7, label %16

7:                                                ; preds = %4
  %8 = zext nneg i32 %3 to i64
  br label %9

9:                                                ; preds = %7, %9
  %10 = phi i64 [ %8, %7 ], [ %11, %9 ]
  %11 = add nsw i64 %10, -1
  %12 = load ptr, ptr @dump_file, align 8, !tbaa !5
  %13 = getelementptr inbounds ptr, ptr %2, i64 %11
  %14 = load ptr, ptr %13, align 8, !tbaa !5
  tail call void @dump_cgraph_node(ptr noundef %12, ptr noundef %14) #9
  %15 = icmp ugt i64 %10, 1
  br i1 %15, label %9, label %16, !llvm.loop !9

16:                                               ; preds = %9, %4
  %17 = tail call i32 @fputc(i32 10, ptr %0)
  %18 = tail call i32 @fflush(ptr noundef %0) #8
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: optsize
declare void @dump_cgraph_node(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @ipa_utils_reduced_inorder(ptr noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = alloca %struct.searchc_env, align 8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %5) #10
  %6 = load i32, ptr @cgraph_n_nodes, align 4, !tbaa !11
  %7 = sext i32 %6 to i64
  %8 = tail call ptr @xcalloc(i64 noundef %7, i64 noundef 8) #9
  store ptr %8, ptr %5, align 8, !tbaa !13
  %9 = getelementptr inbounds %struct.searchc_env, ptr %5, i64 0, i32 1
  store i32 0, ptr %9, align 8, !tbaa !15
  %10 = getelementptr inbounds %struct.searchc_env, ptr %5, i64 0, i32 2
  store ptr %0, ptr %10, align 8, !tbaa !16
  %11 = getelementptr inbounds %struct.searchc_env, ptr %5, i64 0, i32 3
  store i32 0, ptr %11, align 8, !tbaa !17
  %12 = tail call ptr @splay_tree_new(ptr noundef nonnull @splay_tree_compare_ints, ptr noundef null, ptr noundef null) #9
  %13 = getelementptr inbounds %struct.searchc_env, ptr %5, i64 0, i32 4
  store ptr %12, ptr %13, align 8, !tbaa !18
  %14 = getelementptr inbounds %struct.searchc_env, ptr %5, i64 0, i32 6
  store i32 1, ptr %14, align 4, !tbaa !19
  %15 = getelementptr inbounds %struct.searchc_env, ptr %5, i64 0, i32 5
  store i8 %1, ptr %15, align 8, !tbaa !20
  %16 = load ptr, ptr @cgraph_nodes, align 8, !tbaa !5
  %17 = icmp eq ptr %16, null
  br i1 %17, label %48, label %18

18:                                               ; preds = %4
  %19 = icmp ne i8 %2, 0
  br label %20

20:                                               ; preds = %18, %44
  %21 = phi ptr [ %16, %18 ], [ %46, %44 ]
  %22 = tail call i32 @cgraph_function_body_availability(ptr noundef nonnull %21) #9
  %23 = icmp ugt i32 %22, 2
  %24 = icmp eq i32 %22, 2
  %25 = and i1 %19, %24
  %26 = or i1 %23, %25
  %27 = getelementptr inbounds %struct.cgraph_node, ptr %21, i64 0, i32 16
  br i1 %26, label %28, label %43

28:                                               ; preds = %20
  %29 = load ptr, ptr %27, align 8, !tbaa !21
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %33

31:                                               ; preds = %28
  %32 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 32) #9
  br label %33

33:                                               ; preds = %31, %28
  %34 = phi ptr [ %29, %28 ], [ %32, %31 ]
  %35 = getelementptr inbounds %struct.ipa_dfs_info, ptr %34, i64 0, i32 2
  store i8 1, ptr %35, align 8, !tbaa !30
  %36 = getelementptr inbounds %struct.ipa_dfs_info, ptr %34, i64 0, i32 3
  store i8 0, ptr %36, align 1, !tbaa !32
  %37 = getelementptr inbounds %struct.ipa_dfs_info, ptr %34, i64 0, i32 4
  store ptr null, ptr %37, align 8, !tbaa !33
  store ptr %34, ptr %27, align 8, !tbaa !21
  %38 = getelementptr inbounds %struct.cgraph_node, ptr %21, i64 0, i32 24
  %39 = load i32, ptr %38, align 8, !tbaa !34
  %40 = sext i32 %39 to i64
  %41 = ptrtoint ptr %21 to i64
  %42 = tail call ptr @splay_tree_insert(ptr noundef %12, i64 noundef %40, i64 noundef %41) #9
  br label %44

43:                                               ; preds = %20
  store ptr null, ptr %27, align 8, !tbaa !21
  br label %44

44:                                               ; preds = %43, %33
  %45 = getelementptr inbounds %struct.cgraph_node, ptr %21, i64 0, i32 3
  %46 = load ptr, ptr %45, align 8, !tbaa !5
  %47 = icmp eq ptr %46, null
  br i1 %47, label %48, label %20, !llvm.loop !35

48:                                               ; preds = %44, %4
  %49 = tail call ptr @splay_tree_min(ptr noundef %12) #9
  %50 = icmp eq ptr %49, null
  br i1 %50, label %62, label %51

51:                                               ; preds = %48, %51
  %52 = phi ptr [ %57, %51 ], [ %49, %48 ]
  %53 = getelementptr inbounds %struct.splay_tree_node_s, ptr %52, i64 0, i32 1
  %54 = load i64, ptr %53, align 8, !tbaa !36
  %55 = inttoptr i64 %54 to ptr
  call fastcc void @searchc(ptr noundef nonnull %5, ptr noundef %55, ptr noundef %3) #8
  %56 = load ptr, ptr %13, align 8, !tbaa !18
  %57 = tail call ptr @splay_tree_min(ptr noundef %56) #9
  %58 = icmp eq ptr %57, null
  br i1 %58, label %59, label %51, !llvm.loop !38

59:                                               ; preds = %51
  %60 = load ptr, ptr %5, align 8, !tbaa !13
  %61 = load i32, ptr %11, align 8, !tbaa !17
  br label %62

62:                                               ; preds = %59, %48
  %63 = phi i32 [ %61, %59 ], [ 0, %48 ]
  %64 = phi ptr [ %60, %59 ], [ %8, %48 ]
  %65 = phi ptr [ %56, %59 ], [ %12, %48 ]
  tail call void @splay_tree_delete(ptr noundef %65) #9
  tail call void @free(ptr noundef %64) #8
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %5) #10
  ret i32 %63
}

; Function Attrs: optsize
declare ptr @xcalloc(i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @splay_tree_new(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @splay_tree_compare_ints(i64 noundef, i64 noundef) #3

; Function Attrs: optsize
declare i32 @cgraph_function_body_availability(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @splay_tree_insert(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @splay_tree_min(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @searchc(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.cgraph_node, ptr %1, i64 0, i32 16
  %5 = load ptr, ptr %4, align 8, !tbaa !21
  %6 = getelementptr inbounds %struct.ipa_dfs_info, ptr %5, i64 0, i32 2
  store i8 0, ptr %6, align 8, !tbaa !30
  %7 = getelementptr inbounds %struct.searchc_env, ptr %0, i64 0, i32 4
  %8 = load ptr, ptr %7, align 8, !tbaa !18
  %9 = getelementptr inbounds %struct.cgraph_node, ptr %1, i64 0, i32 24
  %10 = load i32, ptr %9, align 8, !tbaa !34
  %11 = sext i32 %10 to i64
  tail call void @splay_tree_remove(ptr noundef %8, i64 noundef %11) #9
  %12 = getelementptr inbounds %struct.searchc_env, ptr %0, i64 0, i32 6
  %13 = load i32, ptr %12, align 4, !tbaa !19
  store i32 %13, ptr %5, align 8, !tbaa !39
  %14 = getelementptr inbounds %struct.ipa_dfs_info, ptr %5, i64 0, i32 1
  store i32 %13, ptr %14, align 4, !tbaa !40
  %15 = add nsw i32 %13, 1
  store i32 %15, ptr %12, align 4, !tbaa !19
  %16 = load ptr, ptr %0, align 8, !tbaa !13
  %17 = getelementptr inbounds %struct.searchc_env, ptr %0, i64 0, i32 1
  %18 = load i32, ptr %17, align 8, !tbaa !15
  %19 = add nsw i32 %18, 1
  store i32 %19, ptr %17, align 8, !tbaa !15
  %20 = sext i32 %18 to i64
  %21 = getelementptr inbounds ptr, ptr %16, i64 %20
  store ptr %1, ptr %21, align 8, !tbaa !5
  %22 = getelementptr inbounds %struct.ipa_dfs_info, ptr %5, i64 0, i32 3
  store i8 1, ptr %22, align 1, !tbaa !32
  %23 = getelementptr inbounds %struct.cgraph_node, ptr %1, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !5
  %25 = icmp eq ptr %24, null
  br i1 %25, label %72, label %26

26:                                               ; preds = %3
  %27 = icmp eq ptr %2, null
  br label %28

28:                                               ; preds = %26, %64
  %29 = phi ptr [ %24, %26 ], [ %66, %64 ]
  %30 = getelementptr inbounds %struct.cgraph_edge, ptr %29, i64 0, i32 2
  %31 = load ptr, ptr %30, align 8, !tbaa !41
  br i1 %27, label %35, label %32

32:                                               ; preds = %28
  %33 = tail call zeroext i8 %2(ptr noundef nonnull %29) #9
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %35, label %64

35:                                               ; preds = %32, %28
  %36 = getelementptr inbounds %struct.cgraph_node, ptr %31, i64 0, i32 16
  %37 = load ptr, ptr %36, align 8, !tbaa !21
  %38 = icmp eq ptr %37, null
  br i1 %38, label %64, label %39

39:                                               ; preds = %35
  %40 = load ptr, ptr %30, align 8, !tbaa !41
  %41 = tail call i32 @cgraph_function_body_availability(ptr noundef %40) #9
  %42 = icmp ugt i32 %41, 2
  br i1 %42, label %43, label %64

43:                                               ; preds = %39
  %44 = load ptr, ptr %36, align 8, !tbaa !21
  %45 = getelementptr inbounds %struct.ipa_dfs_info, ptr %44, i64 0, i32 2
  %46 = load i8, ptr %45, align 8, !tbaa !30
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %51, label %48

48:                                               ; preds = %43
  tail call fastcc void @searchc(ptr noundef nonnull %0, ptr noundef nonnull %31, ptr noundef %2) #8
  %49 = load i32, ptr %14, align 4, !tbaa !40
  %50 = getelementptr inbounds %struct.ipa_dfs_info, ptr %44, i64 0, i32 1
  br label %59

51:                                               ; preds = %43
  %52 = load i32, ptr %44, align 8, !tbaa !39
  %53 = load i32, ptr %5, align 8, !tbaa !39
  %54 = icmp slt i32 %52, %53
  br i1 %54, label %55, label %64

55:                                               ; preds = %51
  %56 = getelementptr inbounds %struct.ipa_dfs_info, ptr %44, i64 0, i32 3
  %57 = load i8, ptr %56, align 1, !tbaa !32
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %64, label %59

59:                                               ; preds = %55, %48
  %60 = phi ptr [ %50, %48 ], [ %14, %55 ]
  %61 = phi i32 [ %49, %48 ], [ %52, %55 ]
  %62 = load i32, ptr %60, align 4, !tbaa !40
  %63 = tail call i32 @llvm.smin.i32(i32 %61, i32 %62)
  store i32 %63, ptr %14, align 4, !tbaa !40
  br label %64

64:                                               ; preds = %59, %35, %39, %51, %55, %32
  %65 = getelementptr inbounds %struct.cgraph_edge, ptr %29, i64 0, i32 6
  %66 = load ptr, ptr %65, align 8, !tbaa !5
  %67 = icmp eq ptr %66, null
  br i1 %67, label %68, label %28, !llvm.loop !44

68:                                               ; preds = %64
  %69 = load i32, ptr %14, align 4, !tbaa !40
  %70 = load i32, ptr %5, align 8, !tbaa !39
  %71 = icmp eq i32 %69, %70
  br i1 %71, label %72, label %111

72:                                               ; preds = %3, %68
  %73 = getelementptr inbounds %struct.searchc_env, ptr %0, i64 0, i32 5
  %74 = load i8, ptr %73, align 8, !tbaa !20
  %75 = icmp eq i8 %74, 0
  %76 = getelementptr inbounds %struct.searchc_env, ptr %0, i64 0, i32 2
  %77 = getelementptr inbounds %struct.searchc_env, ptr %0, i64 0, i32 3
  %78 = load i32, ptr %17, align 8, !tbaa !15
  br label %79

79:                                               ; preds = %72, %99
  %80 = phi i32 [ %78, %72 ], [ %100, %99 ]
  %81 = phi ptr [ null, %72 ], [ %88, %99 ]
  %82 = sext i32 %80 to i64
  br label %83

83:                                               ; preds = %79, %92
  %84 = phi i64 [ %82, %79 ], [ %86, %92 ]
  %85 = load ptr, ptr %0, align 8, !tbaa !13
  %86 = add nsw i64 %84, -1
  %87 = getelementptr inbounds ptr, ptr %85, i64 %86
  %88 = load ptr, ptr %87, align 8, !tbaa !5
  %89 = getelementptr inbounds %struct.cgraph_node, ptr %88, i64 0, i32 16
  %90 = load ptr, ptr %89, align 8, !tbaa !21
  %91 = getelementptr inbounds %struct.ipa_dfs_info, ptr %90, i64 0, i32 3
  store i8 0, ptr %91, align 1, !tbaa !32
  br i1 %75, label %92, label %99

92:                                               ; preds = %83
  %93 = load ptr, ptr %76, align 8, !tbaa !16
  %94 = load i32, ptr %77, align 8, !tbaa !17
  %95 = add nsw i32 %94, 1
  store i32 %95, ptr %77, align 8, !tbaa !17
  %96 = sext i32 %94 to i64
  %97 = getelementptr inbounds ptr, ptr %93, i64 %96
  store ptr %88, ptr %97, align 8, !tbaa !5
  %98 = icmp eq ptr %88, %1
  br i1 %98, label %109, label %83, !llvm.loop !45

99:                                               ; preds = %83
  %100 = trunc i64 %86 to i32
  store i32 %100, ptr %17, align 8, !tbaa !15
  %101 = getelementptr inbounds %struct.ipa_dfs_info, ptr %90, i64 0, i32 4
  store ptr %81, ptr %101, align 8, !tbaa !33
  %102 = icmp eq ptr %88, %1
  br i1 %102, label %103, label %79, !llvm.loop !45

103:                                              ; preds = %99
  %104 = load ptr, ptr %76, align 8, !tbaa !16
  %105 = load i32, ptr %77, align 8, !tbaa !17
  %106 = add nsw i32 %105, 1
  store i32 %106, ptr %77, align 8, !tbaa !17
  %107 = sext i32 %105 to i64
  %108 = getelementptr inbounds ptr, ptr %104, i64 %107
  store ptr %1, ptr %108, align 8, !tbaa !5
  br label %111

109:                                              ; preds = %92
  %110 = trunc i64 %86 to i32
  store i32 %110, ptr %17, align 8, !tbaa !15
  br label %111

111:                                              ; preds = %109, %103, %68
  ret void
}

; Function Attrs: optsize
declare void @splay_tree_delete(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local noundef ptr @get_base_var(ptr noundef readonly %0) local_unnamed_addr #5 {
  br label %2

2:                                                ; preds = %18, %1
  %3 = phi ptr [ %0, %1 ], [ %20, %18 ]
  %4 = load i64, ptr %3, align 8
  %5 = trunc i64 %4 to i16
  switch i16 %5, label %11 [
    i16 32, label %21
    i16 34, label %21
    i16 36, label %21
    i16 141, label %6
  ]

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.tree_ssa_name, ptr %3, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !46
  %9 = load i64, ptr %8, align 8
  %10 = trunc i64 %9 to i16
  switch i16 %10, label %11 [
    i16 32, label %21
    i16 34, label %21
    i16 36, label %21
  ]

11:                                               ; preds = %6, %2
  %12 = and i64 %4, 65535
  %13 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %12
  %14 = load i32, ptr %13, align 4, !tbaa !11
  %15 = freeze i32 %14
  %16 = icmp eq i32 %15, 1
  br i1 %16, label %21, label %17

17:                                               ; preds = %11
  switch i16 %5, label %18 [
    i16 51, label %21
    i16 33, label %21
    i16 30, label %21
    i16 29, label %21
  ]

18:                                               ; preds = %17
  %19 = getelementptr inbounds %struct.tree_exp, ptr %3, i64 0, i32 3
  %20 = load ptr, ptr %19, align 8, !tbaa !46
  br label %2, !llvm.loop !47

21:                                               ; preds = %17, %17, %17, %17, %11, %6, %6, %6, %2, %2, %2
  ret ptr %3
}

; Function Attrs: optsize
declare void @splay_tree_remove(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #7

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { optsize }
attributes #9 = { nounwind optsize }
attributes #10 = { nounwind }

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
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!12, !12, i64 0}
!12 = !{!"int", !7, i64 0}
!13 = !{!14, !6, i64 0}
!14 = !{!"searchc_env", !6, i64 0, !12, i64 8, !6, i64 16, !12, i64 24, !6, i64 32, !7, i64 40, !12, i64 44}
!15 = !{!14, !12, i64 8}
!16 = !{!14, !6, i64 16}
!17 = !{!14, !12, i64 24}
!18 = !{!14, !6, i64 32}
!19 = !{!14, !12, i64 44}
!20 = !{!14, !7, i64 40}
!21 = !{!22, !6, i64 128}
!22 = !{!"cgraph_node", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !6, i64 56, !6, i64 64, !6, i64 72, !6, i64 80, !6, i64 88, !6, i64 96, !6, i64 104, !6, i64 112, !6, i64 120, !6, i64 128, !6, i64 136, !23, i64 144, !26, i64 184, !27, i64 224, !28, i64 232, !29, i64 256, !25, i64 288, !12, i64 296, !12, i64 300, !12, i64 304, !12, i64 308, !12, i64 308, !12, i64 308, !12, i64 308, !12, i64 308, !12, i64 308, !12, i64 308, !12, i64 308, !12, i64 309, !12, i64 309}
!23 = !{!"cgraph_local_info", !6, i64 0, !24, i64 8, !12, i64 32, !12, i64 32, !12, i64 32, !12, i64 32, !12, i64 32, !12, i64 32, !12, i64 32, !12, i64 32}
!24 = !{!"inline_summary", !25, i64 0, !12, i64 8, !12, i64 12, !12, i64 16, !12, i64 20}
!25 = !{!"long", !7, i64 0}
!26 = !{!"cgraph_global_info", !25, i64 0, !25, i64 8, !6, i64 16, !12, i64 24, !12, i64 28, !12, i64 32, !7, i64 36}
!27 = !{!"cgraph_rtl_info", !12, i64 0}
!28 = !{!"cgraph_clone_info", !6, i64 0, !6, i64 8, !6, i64 16}
!29 = !{!"cgraph_thunk_info", !25, i64 0, !25, i64 8, !6, i64 16, !7, i64 24, !7, i64 25, !7, i64 26}
!30 = !{!31, !7, i64 8}
!31 = !{!"ipa_dfs_info", !12, i64 0, !12, i64 4, !7, i64 8, !7, i64 9, !6, i64 16, !6, i64 24}
!32 = !{!31, !7, i64 9}
!33 = !{!31, !6, i64 16}
!34 = !{!22, !12, i64 296}
!35 = distinct !{!35, !10}
!36 = !{!37, !25, i64 8}
!37 = !{!"splay_tree_node_s", !25, i64 0, !25, i64 8, !6, i64 16, !6, i64 24}
!38 = distinct !{!38, !10}
!39 = !{!31, !12, i64 0}
!40 = !{!31, !12, i64 4}
!41 = !{!42, !6, i64 16}
!42 = !{!"cgraph_edge", !25, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !6, i64 56, !6, i64 64, !12, i64 72, !12, i64 76, !12, i64 80, !12, i64 84, !43, i64 88, !12, i64 90, !12, i64 90, !12, i64 90}
!43 = !{!"short", !7, i64 0}
!44 = distinct !{!44, !10}
!45 = distinct !{!45, !10}
!46 = !{!7, !7, i64 0}
!47 = distinct !{!47, !10}
