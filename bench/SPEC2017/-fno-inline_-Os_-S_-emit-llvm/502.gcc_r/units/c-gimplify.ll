; ModuleID = 'c-gimplify.c'
source_filename = "c-gimplify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.lang_hooks = type { ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lang_hooks_for_tree_inlining, %struct.lang_hooks_for_callgraph, %struct.lang_hooks_for_tree_dump, %struct.lang_hooks_for_decls, %struct.lang_hooks_for_types, %struct.lang_hooks_for_lto, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.lang_hooks_for_tree_inlining = type { ptr }
%struct.lang_hooks_for_callgraph = type { ptr }
%struct.lang_hooks_for_tree_dump = type { ptr, ptr }
%struct.lang_hooks_for_decls = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lang_hooks_for_types = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.lang_hooks_for_lto = type { ptr, ptr, ptr }
%struct.tree_decl_with_vis = type { %struct.tree_decl_with_rtl, ptr, ptr, ptr, i24 }
%struct.tree_decl_with_rtl = type { %struct.tree_decl_common, ptr }
%struct.tree_decl_common = type { %struct.tree_decl_minimal, ptr, i40, i32, ptr, ptr, ptr, ptr, ptr }
%struct.tree_decl_minimal = type { %struct.tree_common, i32, i32, ptr, ptr }
%struct.tree_common = type { %struct.tree_base, ptr, ptr }
%struct.tree_base = type { i64 }
%struct.tree_identifier = type { %struct.tree_common, %struct.ht_identifier }
%struct.ht_identifier = type { ptr, i32, i32 }
%struct.tree_decl_non_common = type { %struct.tree_decl_with_vis, ptr, ptr, ptr, ptr }
%struct.cgraph_node = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.cgraph_local_info, %struct.cgraph_global_info, %struct.cgraph_rtl_info, %struct.cgraph_clone_info, %struct.cgraph_thunk_info, i64, i32, i32, i32, i16 }
%struct.cgraph_local_info = type { ptr, %struct.inline_summary, i8 }
%struct.inline_summary = type { i64, i32, i32, i32, i32 }
%struct.cgraph_global_info = type { i64, i64, ptr, i32, i32, i32, i8 }
%struct.cgraph_rtl_info = type { i32 }
%struct.cgraph_clone_info = type { ptr, ptr, ptr }
%struct.cgraph_thunk_info = type { i64, i64, ptr, i8, i8, i8 }
%struct.tree_block = type { %struct.tree_common, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tree_exp = type { %struct.tree_common, i32, ptr, [1 x ptr] }
%struct.VEC_gimple_base = type { i32, i32, [1 x ptr] }
%struct.gimple_statement_bind = type { %struct.gimple_statement_base, ptr, ptr, ptr }
%struct.gimple_statement_base = type { i32, i32, i32, i32, ptr, ptr }

@.str = private unnamed_addr constant [16 x i8] c"\0A;; Function %s\00", align 1
@lang_hooks = external local_unnamed_addr global %struct.lang_hooks, align 8
@.str.1 = private unnamed_addr constant [7 x i8] c" (%s)\0A\00", align 1
@tree_contains_struct = external local_unnamed_addr global [191 x [64 x i8]], align 16
@.str.2 = private unnamed_addr constant [5 x i8] c"null\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c";; enabled by -%s\0A\00", align 1
@global_trees = external local_unnamed_addr global [131 x ptr], align 16
@warn_init_self = external local_unnamed_addr global i32, align 4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @c_genericize(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #8
  %3 = call ptr @dump_begin(i32 noundef 4, ptr noundef nonnull %2) #9
  %4 = icmp eq ptr %3, null
  br i1 %4, label %38, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 22), align 8, !tbaa !5
  %7 = call ptr %6(ptr noundef %0, i32 noundef 2) #9
  %8 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %3, ptr noundef nonnull @.str, ptr noundef %7) #10
  %9 = load i64, ptr %0, align 8
  %10 = and i64 %9, 65535
  %11 = getelementptr inbounds [191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 %10, i64 13
  %12 = load i8, ptr %11, align 1, !tbaa !17
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %22, label %14

14:                                               ; preds = %5
  %15 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %0, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !17
  %17 = icmp eq ptr %16, null
  br i1 %17, label %22, label %18

18:                                               ; preds = %14
  %19 = call ptr @decl_assembler_name(ptr noundef nonnull %0) #9
  %20 = getelementptr inbounds %struct.tree_identifier, ptr %19, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !17
  br label %22

22:                                               ; preds = %5, %14, %18
  %23 = phi ptr [ %21, %18 ], [ @.str.2, %14 ], [ @.str.2, %5 ]
  %24 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %3, ptr noundef nonnull @.str.1, ptr noundef %23) #10
  %25 = call ptr @dump_flag_name(i32 noundef 4) #9
  %26 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %3, ptr noundef nonnull @.str.3, ptr noundef %25) #10
  %27 = call i32 @fputc(i32 10, ptr nonnull %3)
  %28 = load i32, ptr %2, align 4, !tbaa !18
  %29 = and i32 %28, 4
  %30 = icmp eq i32 %29, 0
  %31 = getelementptr inbounds %struct.tree_decl_non_common, ptr %0, i64 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !17
  br i1 %30, label %35, label %33

33:                                               ; preds = %22
  %34 = or i32 %28, 2
  call void @dump_node(ptr noundef %32, i32 noundef %34, ptr noundef nonnull %3) #9
  br label %36

35:                                               ; preds = %22
  call void @print_c_tree(ptr noundef nonnull %3, ptr noundef %32) #9
  br label %36

36:                                               ; preds = %35, %33
  %37 = call i32 @fputc(i32 10, ptr nonnull %3)
  call void @dump_end(i32 noundef 4, ptr noundef nonnull %3) #9
  br label %38

38:                                               ; preds = %36, %1
  %39 = call ptr @cgraph_node(ptr noundef %0) #9
  %40 = getelementptr inbounds %struct.cgraph_node, ptr %39, i64 0, i32 6
  %41 = load ptr, ptr %40, align 8, !tbaa !20
  %42 = icmp eq ptr %41, null
  br i1 %42, label %49, label %43

43:                                               ; preds = %38, %43
  %44 = phi ptr [ %47, %43 ], [ %41, %38 ]
  %45 = load ptr, ptr %44, align 8, !tbaa !21
  call void @c_genericize(ptr noundef %45) #10
  %46 = getelementptr inbounds %struct.cgraph_node, ptr %44, i64 0, i32 7
  %47 = load ptr, ptr %46, align 8, !tbaa !20
  %48 = icmp eq ptr %47, null
  br i1 %48, label %49, label %43, !llvm.loop !29

49:                                               ; preds = %43, %38
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #8
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare ptr @dump_begin(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @decl_assembler_name(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @dump_flag_name(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @dump_node(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @print_c_tree(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @dump_end(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @cgraph_node(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @c_build_bind_expr(i32 noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %20, label %5

5:                                                ; preds = %3
  %6 = load i64, ptr %1, align 8
  %7 = and i64 %6, 65535
  %8 = icmp eq i64 %7, 4
  br i1 %8, label %9, label %12

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.tree_block, ptr %1, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !17
  br label %20

12:                                               ; preds = %5
  %13 = getelementptr inbounds %struct.tree_decl_common, ptr %1, i64 0, i32 2
  %14 = load i64, ptr %13, align 8
  %15 = and i64 %14, 4096
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %12
  %18 = tail call ptr @make_node_stat(i32 noundef 4) #9
  %19 = getelementptr inbounds %struct.tree_block, ptr %18, i64 0, i32 3
  store ptr %1, ptr %19, align 8, !tbaa !17
  tail call fastcc void @add_block_to_enclosing(ptr noundef %18) #10
  br label %20

20:                                               ; preds = %12, %3, %9, %17
  %21 = phi ptr [ %1, %9 ], [ %18, %17 ], [ null, %3 ], [ null, %12 ]
  %22 = phi ptr [ %11, %9 ], [ %1, %17 ], [ null, %3 ], [ %1, %12 ]
  %23 = icmp eq ptr %2, null
  br i1 %23, label %24, label %26

24:                                               ; preds = %20
  %25 = tail call ptr @build_empty_stmt(i32 noundef %0) #9
  br label %26

26:                                               ; preds = %24, %20
  %27 = phi ptr [ %2, %20 ], [ %25, %24 ]
  %28 = icmp ne ptr %22, null
  %29 = icmp ne ptr %21, null
  %30 = or i1 %29, %28
  br i1 %30, label %31, label %37

31:                                               ; preds = %26
  %32 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !20
  %33 = tail call ptr @build3_stat(i32 noundef 58, ptr noundef %32, ptr noundef %22, ptr noundef %27, ptr noundef %21) #9
  %34 = load i64, ptr %33, align 8
  %35 = or i64 %34, 65536
  store i64 %35, ptr %33, align 8
  %36 = getelementptr inbounds %struct.tree_exp, ptr %33, i64 0, i32 1
  store i32 %0, ptr %36, align 8, !tbaa !17
  br label %37

37:                                               ; preds = %26, %31
  %38 = phi ptr [ %33, %31 ], [ %27, %26 ]
  ret ptr %38
}

; Function Attrs: optsize
declare ptr @make_node_stat(i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @add_block_to_enclosing(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #8
  %3 = tail call ptr @gimple_bind_expr_stack() #9
  %4 = call fastcc i32 @VEC_gimple_base_iterate(ptr noundef %3, i32 noundef 0, ptr noundef nonnull %2) #10, !range !31
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %15, label %10

6:                                                ; preds = %10
  %7 = add i32 %11, 1
  %8 = call fastcc i32 @VEC_gimple_base_iterate(ptr noundef %3, i32 noundef %7, ptr noundef nonnull %2) #10, !range !31
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %15, label %10, !llvm.loop !32

10:                                               ; preds = %1, %6
  %11 = phi i32 [ %7, %6 ], [ 0, %1 ]
  %12 = load ptr, ptr %2, align 8, !tbaa !20
  %13 = tail call fastcc ptr @gimple_bind_block(ptr noundef %12) #10
  %14 = icmp eq ptr %13, null
  br i1 %14, label %6, label %15

15:                                               ; preds = %6, %10, %1
  %16 = load ptr, ptr %2, align 8, !tbaa !20
  %17 = tail call fastcc ptr @gimple_bind_block(ptr noundef %16) #10
  %18 = getelementptr inbounds %struct.tree_block, ptr %17, i64 0, i32 5
  %19 = load ptr, ptr %18, align 8, !tbaa !17
  %20 = tail call ptr @chainon(ptr noundef %19, ptr noundef %0) #9
  store ptr %20, ptr %18, align 8, !tbaa !17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #8
  ret void
}

; Function Attrs: optsize
declare ptr @build_empty_stmt(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @build3_stat(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local noundef i32 @c_gimplify_expr(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readnone %2) local_unnamed_addr #4 {
  %4 = load ptr, ptr %0, align 8, !tbaa !20
  %5 = load i64, ptr %4, align 8
  %6 = and i64 %5, 65535
  %7 = icmp eq i64 %6, 132
  br i1 %7, label %8, label %30

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.tree_exp, ptr %4, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !17
  %11 = load i64, ptr %10, align 8
  %12 = and i64 %11, 65535
  %13 = icmp eq i64 %12, 32
  br i1 %13, label %14, label %30

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.tree_decl_common, ptr %10, i64 0, i32 2
  %16 = load i64, ptr %15, align 8
  %17 = and i64 %16, 33554432
  %18 = and i64 %11, 67108864
  %19 = or disjoint i64 %17, %18
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %30

21:                                               ; preds = %14
  %22 = getelementptr inbounds %struct.tree_decl_common, ptr %10, i64 0, i32 5
  %23 = load ptr, ptr %22, align 8, !tbaa !17
  %24 = icmp ne ptr %23, %10
  %25 = load i32, ptr @warn_init_self, align 4
  %26 = icmp ne i32 %25, 0
  %27 = select i1 %24, i1 true, i1 %26
  br i1 %27, label %30, label %28

28:                                               ; preds = %21
  %29 = or i64 %11, 8388608
  store i64 %29, ptr %10, align 8
  br label %30

30:                                               ; preds = %28, %21, %14, %8, %3
  ret i32 -1
}

; Function Attrs: optsize
declare ptr @gimple_bind_expr_stack() local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef i32 @VEC_gimple_base_iterate(ptr noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #5 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 8, !tbaa !33
  %7 = icmp ugt i32 %6, %1
  br i1 %7, label %8, label %12

8:                                                ; preds = %5
  %9 = zext i32 %1 to i64
  %10 = getelementptr inbounds %struct.VEC_gimple_base, ptr %0, i64 0, i32 2, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !20
  br label %12

12:                                               ; preds = %3, %5, %8
  %13 = phi ptr [ %11, %8 ], [ null, %5 ], [ null, %3 ]
  %14 = phi i32 [ 1, %8 ], [ 0, %5 ], [ 0, %3 ]
  store ptr %13, ptr %2, align 8, !tbaa !20
  ret i32 %14
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_bind_block(ptr nocapture noundef readonly %0) unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.gimple_statement_bind, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !17
  ret ptr %3
}

; Function Attrs: optsize
declare ptr @chainon(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #7

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind }
attributes #8 = { nounwind }
attributes #9 = { nounwind optsize }
attributes #10 = { optsize }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !7, i64 176}
!6 = !{!"lang_hooks", !7, i64 0, !10, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !7, i64 88, !7, i64 96, !7, i64 104, !7, i64 112, !7, i64 120, !7, i64 128, !7, i64 136, !7, i64 144, !7, i64 152, !7, i64 160, !7, i64 168, !7, i64 176, !7, i64 184, !7, i64 192, !7, i64 200, !7, i64 208, !7, i64 216, !7, i64 224, !7, i64 232, !11, i64 240, !12, i64 248, !13, i64 256, !14, i64 272, !15, i64 432, !16, i64 560, !7, i64 584, !7, i64 592, !7, i64 600, !7, i64 608, !7, i64 616, !7, i64 624, !7, i64 632, !7, i64 640, !7, i64 648, !7, i64 656, !7, i64 664, !8, i64 672}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"long", !8, i64 0}
!11 = !{!"lang_hooks_for_tree_inlining", !7, i64 0}
!12 = !{!"lang_hooks_for_callgraph", !7, i64 0}
!13 = !{!"lang_hooks_for_tree_dump", !7, i64 0, !7, i64 8}
!14 = !{!"lang_hooks_for_decls", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !7, i64 88, !7, i64 96, !7, i64 104, !7, i64 112, !7, i64 120, !7, i64 128, !7, i64 136, !7, i64 144, !7, i64 152}
!15 = !{!"lang_hooks_for_types", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !7, i64 88, !7, i64 96, !7, i64 104, !7, i64 112, !8, i64 120}
!16 = !{!"lang_hooks_for_lto", !7, i64 0, !7, i64 8, !7, i64 16}
!17 = !{!8, !8, i64 0}
!18 = !{!19, !19, i64 0}
!19 = !{!"int", !8, i64 0}
!20 = !{!7, !7, i64 0}
!21 = !{!22, !7, i64 0}
!22 = !{!"cgraph_node", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !7, i64 88, !7, i64 96, !7, i64 104, !7, i64 112, !7, i64 120, !7, i64 128, !7, i64 136, !23, i64 144, !25, i64 184, !26, i64 224, !27, i64 232, !28, i64 256, !10, i64 288, !19, i64 296, !19, i64 300, !19, i64 304, !19, i64 308, !19, i64 308, !19, i64 308, !19, i64 308, !19, i64 308, !19, i64 308, !19, i64 308, !19, i64 308, !19, i64 309, !19, i64 309}
!23 = !{!"cgraph_local_info", !7, i64 0, !24, i64 8, !19, i64 32, !19, i64 32, !19, i64 32, !19, i64 32, !19, i64 32, !19, i64 32, !19, i64 32, !19, i64 32}
!24 = !{!"inline_summary", !10, i64 0, !19, i64 8, !19, i64 12, !19, i64 16, !19, i64 20}
!25 = !{!"cgraph_global_info", !10, i64 0, !10, i64 8, !7, i64 16, !19, i64 24, !19, i64 28, !19, i64 32, !8, i64 36}
!26 = !{!"cgraph_rtl_info", !19, i64 0}
!27 = !{!"cgraph_clone_info", !7, i64 0, !7, i64 8, !7, i64 16}
!28 = !{!"cgraph_thunk_info", !10, i64 0, !10, i64 8, !7, i64 16, !8, i64 24, !8, i64 25, !8, i64 26}
!29 = distinct !{!29, !30}
!30 = !{!"llvm.loop.mustprogress"}
!31 = !{i32 0, i32 2}
!32 = distinct !{!32, !30}
!33 = !{!34, !19, i64 0}
!34 = !{!"VEC_gimple_base", !19, i64 0, !19, i64 4, !8, i64 8}
