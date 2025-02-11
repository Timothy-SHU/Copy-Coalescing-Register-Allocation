; ModuleID = 'langhooks.c'
source_filename = "langhooks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gcc_target = type { %struct.asm_out, %struct.sched, %struct.vectorize, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.addr_space, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, %struct.calls, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.c, %struct.cxx, %struct.emutls, %struct.target_option_hooks, ptr, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.asm_out = type { ptr, ptr, ptr, %struct.asm_int_op, %struct.asm_int_op, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.asm_int_op = type { ptr, ptr, ptr, ptr }
%struct.sched = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.vectorize = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.addr_space = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.calls = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.c = type { ptr }
%struct.cxx = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.emutls = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8 }
%struct.target_option_hooks = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lang_hooks = type { ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lang_hooks_for_tree_inlining, %struct.lang_hooks_for_callgraph, %struct.lang_hooks_for_tree_dump, %struct.lang_hooks_for_decls, %struct.lang_hooks_for_types, %struct.lang_hooks_for_lto, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.lang_hooks_for_tree_inlining = type { ptr }
%struct.lang_hooks_for_callgraph = type { ptr }
%struct.lang_hooks_for_tree_dump = type { ptr, ptr }
%struct.lang_hooks_for_decls = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lang_hooks_for_types = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.lang_hooks_for_lto = type { ptr, ptr, ptr }
%struct.expanded_location = type { ptr, i32, i32, i8 }
%struct.tree_function_decl = type { %struct.tree_decl_non_common, ptr, ptr, ptr, ptr, i32 }
%struct.tree_decl_non_common = type { %struct.tree_decl_with_vis, ptr, ptr, ptr, ptr }
%struct.tree_decl_with_vis = type { %struct.tree_decl_with_rtl, ptr, ptr, ptr, i24 }
%struct.tree_decl_with_rtl = type { %struct.tree_decl_common, ptr }
%struct.tree_decl_common = type { %struct.tree_decl_minimal, ptr, i40, i32, ptr, ptr, ptr, ptr, ptr }
%struct.tree_decl_minimal = type { %struct.tree_common, i32, i32, ptr, ptr }
%struct.tree_common = type { %struct.tree_base, ptr, ptr }
%struct.tree_base = type { i64 }
%struct.tree_identifier = type { %struct.tree_common, %struct.ht_identifier }
%struct.ht_identifier = type { ptr, i32, i32 }
%struct.tree_type = type { %struct.tree_common, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, %union.tree_type_symtab, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.tree_type_symtab = type { ptr }
%struct.diagnostic_context = type { ptr, [12 x i32], i8, i8, [870 x i32], i8, i8, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.diagnostic_info = type { %struct.text_info, i32, i32, ptr, i32, i32 }
%struct.text_info = type { ptr, ptr, i32, ptr, ptr }
%struct.pretty_print_info = type { ptr, ptr, i32, i32, i32, %struct.pp_wrapping_mode_t, ptr, i8, i8, i8 }
%struct.pp_wrapping_mode_t = type { i32, i32 }
%struct.tree_block = type { %struct.tree_common, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@flag_excess_precision_cmdline = external local_unnamed_addr global i32, align 4
@.str = private unnamed_addr constant [12 x i8] c"langhooks.c\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@targetm = external local_unnamed_addr global %struct.gcc_target, align 8
@.str.2 = private unnamed_addr constant [7 x i8] c"%s.%lu\00", align 1
@tree_code_type = external local_unnamed_addr constant [0 x i32], align 4
@lang_hooks = external local_unnamed_addr global %struct.lang_hooks, align 8
@current_function_decl = external local_unnamed_addr global ptr, align 8
@.str.3 = private unnamed_addr constant [14 x i8] c"At top level:\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"In member function %qs\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"In function %qs\00", align 1
@flag_show_column = external local_unnamed_addr global i32, align 4
@.str.6 = private unnamed_addr constant [33 x i8] c"    inlined from %qs at %s:%d:%d\00", align 1
@.str.7 = private unnamed_addr constant [30 x i8] c"    inlined from %qs at %s:%d\00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"    inlined from %qs\00", align 1
@saved_section = internal unnamed_addr global ptr null, align 8
@in_section = external local_unnamed_addr global ptr, align 8
@text_section = external local_unnamed_addr global ptr, align 8

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @lhd_do_nothing() local_unnamed_addr #0 {
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @lhd_do_nothing_t(ptr nocapture noundef readnone %0) local_unnamed_addr #0 {
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef ptr @lhd_pass_through_t(ptr noundef readnone returned %0) local_unnamed_addr #0 {
  ret ptr %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @lhd_do_nothing_i(i32 noundef %0) local_unnamed_addr #0 {
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noalias noundef ptr @lhd_do_nothing_iii_return_null_tree(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  ret ptr null
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @lhd_do_nothing_f(ptr nocapture noundef readnone %0) local_unnamed_addr #0 {
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noalias noundef ptr @lhd_return_null_tree_v() local_unnamed_addr #0 {
  ret ptr null
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noalias noundef ptr @lhd_return_null_tree(ptr nocapture noundef readnone %0) local_unnamed_addr #0 {
  ret ptr null
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noalias noundef ptr @lhd_return_null_const_tree(ptr nocapture noundef readnone %0) local_unnamed_addr #0 {
  ret ptr null
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i8 @lhd_post_options(ptr nocapture noundef readnone %0) local_unnamed_addr #1 {
  store i32 1, ptr @flag_excess_precision_cmdline, align 4, !tbaa !6
  ret i8 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @lhd_print_tree_nothing(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, i32 noundef %2) local_unnamed_addr #0 {
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @lhd_warn_unused_global_decl(ptr nocapture noundef readonly %0) local_unnamed_addr #2 {
  %2 = alloca %struct.expanded_location, align 8
  %3 = load i64, ptr %0, align 8
  %4 = and i64 %3, 65535
  %5 = icmp eq i64 %4, 29
  br i1 %5, label %6, label %11

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.tree_function_decl, ptr %0, i64 0, i32 5
  %8 = load i32, ptr %7, align 8
  %9 = and i32 %8, 2097152
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %14, label %21

11:                                               ; preds = %1
  %12 = and i64 %3, 1114111
  %13 = icmp eq i64 %12, 1048608
  br i1 %13, label %21, label %14

14:                                               ; preds = %6, %11
  %15 = getelementptr inbounds %struct.tree_decl_minimal, ptr %0, i64 0, i32 1
  %16 = load i32, ptr %15, align 8, !tbaa !10
  call void @expand_location(ptr dead_on_unwind nonnull writable sret(%struct.expanded_location) align 8 %2, i32 noundef %16) #9
  %17 = getelementptr inbounds %struct.expanded_location, ptr %2, i64 0, i32 3
  %18 = load i8, ptr %17, align 8, !tbaa !11
  %19 = icmp eq i8 %18, 0
  %20 = zext i1 %19 to i8
  br label %21

21:                                               ; preds = %14, %11, %6
  %22 = phi i8 [ 0, %6 ], [ 0, %11 ], [ %20, %14 ]
  ret i8 %22
}

; Function Attrs: optsize
declare void @expand_location(ptr dead_on_unwind writable sret(%struct.expanded_location) align 8, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @lhd_set_decl_assembler_name(ptr noundef %0) local_unnamed_addr #2 {
  %2 = load i64, ptr %0, align 8
  %3 = trunc i64 %2 to i16
  switch i16 %3, label %14 [
    i16 29, label %16
    i16 32, label %4
  ]

4:                                                ; preds = %1
  %5 = and i64 %2, 67108864
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %16

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 2
  %9 = load i64, ptr %8, align 8
  %10 = and i64 %9, 33554432
  %11 = and i64 %2, 134217728
  %12 = or disjoint i64 %10, %11
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %7, %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 164, ptr noundef nonnull @.str.1) #9
  %15 = load i64, ptr %0, align 8
  br label %16

16:                                               ; preds = %1, %4, %7, %14
  %17 = phi i64 [ %2, %1 ], [ %2, %4 ], [ %2, %7 ], [ %15, %14 ]
  %18 = and i64 %17, 134217728
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.tree_decl_minimal, ptr %0, i64 0, i32 4
  %22 = load ptr, ptr %21, align 8, !tbaa !10
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %29

24:                                               ; preds = %20, %16
  %25 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 50), align 8, !tbaa !14
  %26 = getelementptr inbounds %struct.tree_decl_minimal, ptr %0, i64 0, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !10
  %28 = tail call ptr %25(ptr noundef nonnull %0, ptr noundef %27) #9
  br label %42

29:                                               ; preds = %20
  %30 = getelementptr inbounds %struct.tree_decl_minimal, ptr %0, i64 0, i32 3
  %31 = load ptr, ptr %30, align 8, !tbaa !10
  %32 = getelementptr inbounds %struct.tree_identifier, ptr %31, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !10
  %34 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %33) #10
  %35 = add i64 %34, 32
  %36 = alloca i8, i64 %35, align 16
  %37 = getelementptr inbounds %struct.tree_decl_minimal, ptr %0, i64 0, i32 2
  %38 = load i32, ptr %37, align 4, !tbaa !10
  %39 = zext i32 %38 to i64
  %40 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %36, ptr noundef nonnull dereferenceable(1) @.str.2, ptr noundef %33, i64 noundef %39) #10
  %41 = call ptr @get_identifier(ptr noundef nonnull %36) #9
  br label %42

42:                                               ; preds = %29, %24
  %43 = phi ptr [ %28, %24 ], [ %41, %29 ]
  %44 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %0, i64 0, i32 1
  store ptr %43, ptr %44, align 8, !tbaa !10
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind optsize
declare noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: optsize
declare ptr @get_identifier(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @lhd_type_promotes_to(ptr noundef readnone returned %0) local_unnamed_addr #2 {
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 196, ptr noundef nonnull @.str.1) #9
  ret ptr %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @lhd_register_builtin_type(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1) local_unnamed_addr #0 {
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @lhd_incomplete_type_error(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) local_unnamed_addr #2 {
  %3 = load i64, ptr %1, align 8
  %4 = and i64 %3, 65535
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 213, ptr noundef nonnull @.str.1) #9
  br label %7

7:                                                ; preds = %2, %6
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef i32 @lhd_get_alias_set(ptr nocapture noundef readnone %0) local_unnamed_addr #0 {
  ret i32 -1
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @lhd_decl_printable_name(ptr noundef readonly %0, i32 noundef %1) local_unnamed_addr #2 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %8, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.tree_decl_minimal, ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !10
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %11

8:                                                ; preds = %4, %2
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 231, ptr noundef nonnull @.str.1) #9
  %9 = getelementptr inbounds %struct.tree_decl_minimal, ptr %0, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !10
  br label %11

11:                                               ; preds = %4, %8
  %12 = phi ptr [ %6, %4 ], [ %10, %8 ]
  %13 = getelementptr inbounds %struct.tree_identifier, ptr %12, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !10
  ret ptr %14
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @lhd_dwarf_name(ptr noundef %0, i32 noundef %1) local_unnamed_addr #2 {
  %3 = load i64, ptr %0, align 8
  %4 = and i64 %3, 65535
  %5 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %4
  %6 = load i32, ptr %5, align 4, !tbaa !6
  %7 = icmp eq i32 %6, 3
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 240, ptr noundef nonnull @.str.1) #9
  br label %9

9:                                                ; preds = %2, %8
  %10 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 22), align 8, !tbaa !27
  %11 = tail call ptr %10(ptr noundef nonnull %0, i32 noundef %1) #9
  ret ptr %11
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local i32 @lhd_types_compatible_p(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #7 {
  %3 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 16
  %4 = load ptr, ptr %3, align 8, !tbaa !10
  %5 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 16
  %6 = load ptr, ptr %5, align 8, !tbaa !10
  %7 = icmp eq ptr %4, %6
  %8 = zext i1 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef zeroext i8 @lhd_tree_dump_dump_tree(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1) local_unnamed_addr #0 {
  ret i8 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local i32 @lhd_tree_dump_type_quals(ptr nocapture noundef readonly %0) local_unnamed_addr #7 {
  %2 = load i64, ptr %0, align 8
  %3 = trunc i64 %2 to i32
  %4 = lshr i32 %3, 20
  %5 = and i32 %4, 1
  %6 = lshr i32 %3, 18
  %7 = and i32 %6, 2
  %8 = or disjoint i32 %5, %7
  %9 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 6
  %10 = load i32, ptr %9, align 4
  %11 = lshr i32 %10, 11
  %12 = and i32 %11, 4
  %13 = or disjoint i32 %8, %12
  %14 = lshr i64 %2, 48
  %15 = trunc i64 %14 to i32
  %16 = and i32 %15, 65280
  %17 = or disjoint i32 %13, %16
  ret i32 %17
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef i32 @lhd_gimplify_expr(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readnone %2) local_unnamed_addr #0 {
  ret i32 -1
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i64 @lhd_tree_size(i32 noundef %0) local_unnamed_addr #2 {
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 290, ptr noundef nonnull @.str.1) #9
  ret i64 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef zeroext i8 @lhd_decl_ok_for_sibcall(ptr nocapture noundef readnone %0) local_unnamed_addr #0 {
  ret i8 1
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @write_global_declarations() local_unnamed_addr #2 {
  tail call void @cgraph_finalize_compilation_unit() #9
  %1 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 33, i32 2), align 8, !tbaa !35
  %2 = tail call ptr %1() #9
  %3 = tail call i32 @list_length(ptr noundef %2) #9
  %4 = sext i32 %3 to i64
  %5 = shl nsw i64 %4, 3
  %6 = tail call ptr @xmalloc(i64 noundef %5) #9
  %7 = icmp sgt i32 %3, 0
  br i1 %7, label %8, label %20

8:                                                ; preds = %0
  %9 = zext nneg i32 %3 to i64
  %10 = getelementptr ptr, ptr %6, i64 %4
  br label %11

11:                                               ; preds = %8, %11
  %12 = phi i64 [ 0, %8 ], [ %16, %11 ]
  %13 = phi ptr [ %2, %8 ], [ %18, %11 ]
  %14 = xor i64 %12, -1
  %15 = getelementptr ptr, ptr %10, i64 %14
  store ptr %13, ptr %15, align 8, !tbaa !36
  %16 = add nuw nsw i64 %12, 1
  %17 = getelementptr inbounds %struct.tree_common, ptr %13, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !10
  %19 = icmp eq i64 %16, %9
  br i1 %19, label %20, label %11, !llvm.loop !37

20:                                               ; preds = %11, %0
  %21 = tail call zeroext i8 @wrapup_global_declarations(ptr noundef %6, i32 noundef %3) #9
  tail call void @check_global_declarations(ptr noundef %6, i32 noundef %3) #9
  tail call void @emit_debug_global_declarations(ptr noundef %6, i32 noundef %3) #9
  tail call void @free(ptr noundef %6) #10
  ret void
}

; Function Attrs: optsize
declare void @cgraph_finalize_compilation_unit() local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @list_length(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @xmalloc(i64 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @wrapup_global_declarations(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @check_global_declarations(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @emit_debug_global_declarations(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @lhd_initialize_diagnostics(ptr nocapture noundef readnone %0) local_unnamed_addr #0 {
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @lhd_print_error_function(ptr nocapture noundef %0, ptr noundef %1, ptr noundef readonly %2) local_unnamed_addr #2 {
  %4 = alloca %struct.expanded_location, align 8
  %5 = getelementptr inbounds %struct.diagnostic_context, ptr %0, i64 0, i32 10
  %6 = load ptr, ptr %5, align 8, !tbaa !39
  %7 = getelementptr inbounds %struct.diagnostic_info, ptr %2, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !41
  %9 = icmp eq ptr %8, null
  %10 = load ptr, ptr @current_function_decl, align 8
  %11 = select i1 %9, ptr %10, ptr %8
  %12 = icmp eq ptr %6, %11
  br i1 %12, label %137, label %13

13:                                               ; preds = %3
  %14 = load ptr, ptr %0, align 8, !tbaa !44
  %15 = getelementptr inbounds %struct.pretty_print_info, ptr %14, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !45
  %17 = icmp ne ptr %1, null
  %18 = and i1 %17, %9
  br i1 %18, label %19, label %22

19:                                               ; preds = %13
  %20 = tail call ptr @file_name_as_prefix(ptr noundef nonnull %1) #9
  %21 = load ptr, ptr %0, align 8, !tbaa !44
  br label %22

22:                                               ; preds = %13, %19
  %23 = phi ptr [ %21, %19 ], [ %14, %13 ]
  %24 = phi ptr [ %20, %19 ], [ null, %13 ]
  tail call void @pp_base_set_prefix(ptr noundef %23, ptr noundef %24) #9
  %25 = load ptr, ptr @current_function_decl, align 8, !tbaa !36
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %29

27:                                               ; preds = %22
  %28 = load ptr, ptr %0, align 8, !tbaa !44
  tail call void (ptr, ptr, ...) @pp_printf(ptr noundef %28, ptr noundef nonnull @.str.3) #9
  br label %127

29:                                               ; preds = %22
  br i1 %9, label %44, label %30

30:                                               ; preds = %29
  %31 = getelementptr inbounds %struct.tree_block, ptr %8, i64 0, i32 7
  %32 = load ptr, ptr %31, align 8, !tbaa !10
  br label %33

33:                                               ; preds = %37, %30
  %34 = phi ptr [ %32, %30 ], [ %39, %37 ]
  %35 = load i64, ptr %34, align 8
  %36 = trunc i64 %35 to i16
  switch i16 %36, label %43 [
    i16 4, label %37
    i16 29, label %44
  ]

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.tree_block, ptr %34, i64 0, i32 7
  %39 = load ptr, ptr %38, align 8, !tbaa !10
  %40 = icmp eq ptr %39, null
  %41 = icmp eq ptr %39, %34
  %42 = or i1 %40, %41
  br i1 %42, label %43, label %33, !llvm.loop !48

43:                                               ; preds = %33, %37
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 373, ptr noundef nonnull @.str.1) #9
  br label %44

44:                                               ; preds = %33, %29, %43
  %45 = phi ptr [ %34, %43 ], [ %25, %29 ], [ %34, %33 ]
  %46 = getelementptr inbounds %struct.tree_common, ptr %45, i64 0, i32 2
  %47 = load ptr, ptr %46, align 8, !tbaa !10
  %48 = load i64, ptr %47, align 8
  %49 = and i64 %48, 65535
  %50 = icmp eq i64 %49, 21
  %51 = load ptr, ptr %0, align 8, !tbaa !44
  %52 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 22), align 8, !tbaa !27
  %53 = tail call ptr %52(ptr noundef nonnull %45, i32 noundef 2) #9
  %54 = tail call ptr @identifier_to_locale(ptr noundef %53) #9
  %55 = select i1 %50, ptr @.str.4, ptr @.str.5
  tail call void (ptr, ptr, ...) @pp_printf(ptr noundef %51, ptr noundef nonnull %55, ptr noundef %54) #9
  br i1 %9, label %124, label %56

56:                                               ; preds = %44
  %57 = getelementptr inbounds %struct.expanded_location, ptr %4, i64 0, i32 1
  %58 = getelementptr inbounds %struct.expanded_location, ptr %4, i64 0, i32 2
  br label %59

59:                                               ; preds = %56, %122
  %60 = phi ptr [ %8, %56 ], [ %99, %122 ]
  %61 = getelementptr inbounds %struct.tree_block, ptr %60, i64 0, i32 2
  br label %62

62:                                               ; preds = %86, %59
  %63 = phi ptr [ %60, %59 ], [ %65, %86 ]
  %64 = getelementptr inbounds %struct.tree_block, ptr %63, i64 0, i32 6
  %65 = load ptr, ptr %64, align 8, !tbaa !10
  %66 = icmp eq ptr %65, null
  br i1 %66, label %124, label %67

67:                                               ; preds = %62
  %68 = load i64, ptr %65, align 8
  %69 = and i64 %68, 65535
  %70 = icmp eq i64 %69, 4
  br i1 %70, label %71, label %88

71:                                               ; preds = %67
  %72 = getelementptr inbounds %struct.tree_block, ptr %65, i64 0, i32 7
  %73 = load ptr, ptr %72, align 8, !tbaa !10
  %74 = icmp eq ptr %73, null
  br i1 %74, label %88, label %75

75:                                               ; preds = %71, %80
  %76 = phi ptr [ %82, %80 ], [ %73, %71 ]
  %77 = load i64, ptr %76, align 8
  %78 = and i64 %77, 65535
  %79 = icmp eq i64 %78, 4
  br i1 %79, label %80, label %86

80:                                               ; preds = %75
  %81 = getelementptr inbounds %struct.tree_block, ptr %76, i64 0, i32 7
  %82 = load ptr, ptr %81, align 8, !tbaa !10
  %83 = icmp eq ptr %82, null
  %84 = icmp eq ptr %82, %76
  %85 = or i1 %83, %84
  br i1 %85, label %86, label %75, !llvm.loop !49

86:                                               ; preds = %80, %75
  %87 = trunc i64 %77 to i16
  switch i16 %87, label %88 [
    i16 29, label %97
    i16 4, label %62
  ], !llvm.loop !50

88:                                               ; preds = %71, %67, %86
  br label %89

89:                                               ; preds = %88, %93
  %90 = phi ptr [ %95, %93 ], [ %65, %88 ]
  %91 = load i64, ptr %90, align 8
  %92 = trunc i64 %91 to i16
  switch i16 %92, label %124 [
    i16 4, label %93
    i16 29, label %97
  ]

93:                                               ; preds = %89
  %94 = getelementptr inbounds %struct.tree_block, ptr %90, i64 0, i32 6
  %95 = load ptr, ptr %94, align 8, !tbaa !10
  %96 = icmp eq ptr %95, null
  br i1 %96, label %124, label %89, !llvm.loop !51

97:                                               ; preds = %86, %89
  %98 = phi ptr [ %90, %89 ], [ %76, %86 ]
  %99 = phi ptr [ null, %89 ], [ %65, %86 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #11
  %100 = load i32, ptr %61, align 4, !tbaa !6
  call void @expand_location(ptr dead_on_unwind nonnull writable sret(%struct.expanded_location) align 8 %4, i32 noundef %100) #9
  %101 = load ptr, ptr %0, align 8, !tbaa !44
  call void @pp_base_character(ptr noundef %101, i32 noundef 44) #9
  %102 = load ptr, ptr %0, align 8, !tbaa !44
  call void @pp_base_newline(ptr noundef %102) #9
  %103 = load ptr, ptr %4, align 8, !tbaa !52
  %104 = icmp eq ptr %103, null
  br i1 %104, label %117, label %105

105:                                              ; preds = %97
  %106 = load i32, ptr @flag_show_column, align 4, !tbaa !6
  %107 = icmp eq i32 %106, 0
  %108 = load ptr, ptr %0, align 8, !tbaa !44
  %109 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 22), align 8, !tbaa !27
  %110 = call ptr %109(ptr noundef nonnull %98, i32 noundef 2) #9
  %111 = call ptr @identifier_to_locale(ptr noundef %110) #9
  %112 = load ptr, ptr %4, align 8, !tbaa !52
  %113 = load i32, ptr %57, align 8, !tbaa !53
  br i1 %107, label %116, label %114

114:                                              ; preds = %105
  %115 = load i32, ptr %58, align 4, !tbaa !54
  call void (ptr, ptr, ...) @pp_printf(ptr noundef %108, ptr noundef nonnull @.str.6, ptr noundef %111, ptr noundef %112, i32 noundef %113, i32 noundef %115) #9
  br label %122

116:                                              ; preds = %105
  call void (ptr, ptr, ...) @pp_printf(ptr noundef %108, ptr noundef nonnull @.str.7, ptr noundef %111, ptr noundef %112, i32 noundef %113) #9
  br label %122

117:                                              ; preds = %97
  %118 = load ptr, ptr %0, align 8, !tbaa !44
  %119 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 22), align 8, !tbaa !27
  %120 = call ptr %119(ptr noundef nonnull %98, i32 noundef 2) #9
  %121 = call ptr @identifier_to_locale(ptr noundef %120) #9
  call void (ptr, ptr, ...) @pp_printf(ptr noundef %118, ptr noundef nonnull @.str.8, ptr noundef %121) #9
  br label %122

122:                                              ; preds = %117, %116, %114
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #11
  %123 = icmp eq ptr %99, null
  br i1 %123, label %124, label %59, !llvm.loop !55

124:                                              ; preds = %122, %62, %93, %89, %44
  %125 = load ptr, ptr %0, align 8, !tbaa !44
  call void @pp_base_character(ptr noundef %125, i32 noundef 58) #9
  %126 = icmp eq ptr %2, null
  br i1 %126, label %130, label %127

127:                                              ; preds = %27, %124
  %128 = load ptr, ptr %7, align 8, !tbaa !41
  %129 = icmp eq ptr %128, null
  br i1 %129, label %130, label %132

130:                                              ; preds = %127, %124
  %131 = load ptr, ptr @current_function_decl, align 8, !tbaa !36
  br label %132

132:                                              ; preds = %127, %130
  %133 = phi ptr [ %131, %130 ], [ %128, %127 ]
  store ptr %133, ptr %5, align 8, !tbaa !39
  %134 = load ptr, ptr %0, align 8, !tbaa !44
  call void @pp_base_flush(ptr noundef %134) #9
  %135 = load ptr, ptr %0, align 8, !tbaa !44
  %136 = getelementptr inbounds %struct.pretty_print_info, ptr %135, i64 0, i32 1
  store ptr %16, ptr %136, align 8, !tbaa !45
  call void @free(ptr noundef %24) #10
  br label %137

137:                                              ; preds = %132, %3
  ret void
}

; Function Attrs: optsize
declare ptr @file_name_as_prefix(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @pp_base_set_prefix(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @pp_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @identifier_to_locale(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @pp_base_character(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @pp_base_newline(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @pp_base_flush(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noalias noundef ptr @lhd_callgraph_analyze_expr(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1) local_unnamed_addr #0 {
  ret ptr null
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @lhd_make_node(i32 noundef %0) local_unnamed_addr #2 {
  %2 = tail call ptr @make_node_stat(i32 noundef %0) #9
  ret ptr %2
}

; Function Attrs: optsize
declare ptr @make_node_stat(i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef i64 @lhd_to_target_charset(i64 noundef returned %0) local_unnamed_addr #0 {
  ret i64 %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef ptr @lhd_expr_to_decl(ptr noundef readnone returned %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readnone %2) local_unnamed_addr #0 {
  ret ptr %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local i32 @lhd_omp_predetermined_sharing(ptr nocapture noundef readonly %0) local_unnamed_addr #7 {
  %2 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8
  %4 = trunc i64 %3 to i32
  %5 = lshr i32 %4, 12
  %6 = and i32 %5, 1
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @lhd_omp_assignment(ptr nocapture noundef readnone %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 {
  %4 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !10
  %6 = tail call ptr @build2_stat(i32 noundef 53, ptr noundef %5, ptr noundef %1, ptr noundef %2) #9
  ret ptr %6
}

; Function Attrs: optsize
declare ptr @build2_stat(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @lhd_omp_firstprivatize_type_sizes(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1) local_unnamed_addr #0 {
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @add_builtin_function(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #2 {
  %7 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 41), align 8, !tbaa !56
  %8 = tail call fastcc ptr @add_builtin_function_common(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %7) #10
  ret ptr %8
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @add_builtin_function_common(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr nocapture noundef readonly %6) unnamed_addr #2 {
  %8 = alloca ptr, align 8
  %9 = tail call ptr @get_identifier(ptr noundef %0) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #11
  %10 = tail call ptr @build_decl_stat(i32 noundef 1, i32 noundef 29, ptr noundef %9, ptr noundef %1) #9
  store ptr %10, ptr %8, align 8, !tbaa !36
  %11 = load i64, ptr %10, align 8
  %12 = or i64 %11, 134217728
  store i64 %12, ptr %10, align 8
  %13 = getelementptr inbounds %struct.tree_decl_common, ptr %10, i64 0, i32 2
  %14 = load i64, ptr %13, align 8
  %15 = or i64 %14, 33554432
  store i64 %15, ptr %13, align 8
  %16 = getelementptr inbounds %struct.tree_function_decl, ptr %10, i64 0, i32 5
  %17 = load i32, ptr %16, align 8
  %18 = shl i32 %3, 11
  %19 = and i32 %18, 6144
  %20 = and i32 %17, -8192
  %21 = and i32 %2, 2047
  %22 = or disjoint i32 %19, %21
  %23 = or disjoint i32 %22, %20
  store i32 %23, ptr %16, align 8
  %24 = icmp ult i32 %2, 2048
  br i1 %24, label %26, label %25

25:                                               ; preds = %7
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 535, ptr noundef nonnull @.str.1) #9
  br label %26

26:                                               ; preds = %7, %25
  %27 = icmp eq ptr %4, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %26
  %29 = tail call ptr @get_identifier(ptr noundef nonnull %4) #9
  %30 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %10, i64 0, i32 1
  store ptr %29, ptr %30, align 8, !tbaa !10
  br label %31

31:                                               ; preds = %28, %26
  %32 = icmp eq ptr %5, null
  br i1 %32, label %35, label %33

33:                                               ; preds = %31
  %34 = call ptr @decl_attributes(ptr noundef nonnull %8, ptr noundef nonnull %5, i32 noundef 16) #9
  br label %37

35:                                               ; preds = %31
  %36 = call ptr @decl_attributes(ptr noundef nonnull %8, ptr noundef null, i32 noundef 0) #9
  br label %37

37:                                               ; preds = %35, %33
  %38 = load ptr, ptr %8, align 8, !tbaa !36
  %39 = call ptr %6(ptr noundef %38) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #11
  ret ptr %39
}

; Function Attrs: optsize
declare ptr @build_decl_stat(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @decl_attributes(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @add_builtin_function_ext_scope(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #2 {
  %7 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 42), align 8, !tbaa !57
  %8 = tail call fastcc ptr @add_builtin_function_common(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %7) #10
  ret ptr %8
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @lhd_builtin_function(ptr noundef returned %0) local_unnamed_addr #2 {
  %2 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 33, i32 1), align 8, !tbaa !58
  %3 = tail call ptr %2(ptr noundef %0) #9
  ret ptr %0
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @lhd_begin_section(ptr noundef %0) local_unnamed_addr #2 {
  %2 = load ptr, ptr @saved_section, align 8, !tbaa !36
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 611, ptr noundef nonnull @.str.1) #9
  br label %5

5:                                                ; preds = %1, %4
  %6 = load ptr, ptr @in_section, align 8, !tbaa !36
  store ptr %6, ptr @saved_section, align 8, !tbaa !36
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %10

8:                                                ; preds = %5
  %9 = load ptr, ptr @text_section, align 8, !tbaa !36
  store ptr %9, ptr @saved_section, align 8, !tbaa !36
  br label %10

10:                                               ; preds = %8, %5
  %11 = tail call ptr @get_section(ptr noundef %0, i32 noundef 1024, ptr noundef null) #9
  tail call void @switch_to_section(ptr noundef %11) #9
  ret void
}

; Function Attrs: optsize
declare ptr @get_section(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @switch_to_section(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @lhd_append_data(ptr noundef %0, i64 noundef %1, ptr nocapture noundef %2) local_unnamed_addr #2 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %3
  %6 = trunc i64 %1 to i32
  tail call void @assemble_string(ptr noundef nonnull %0, i32 noundef %6) #9
  br label %7

7:                                                ; preds = %5, %3
  tail call void @free(ptr noundef %2) #10
  ret void
}

; Function Attrs: optsize
declare void @assemble_string(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @lhd_end_section() local_unnamed_addr #2 {
  %1 = load ptr, ptr @saved_section, align 8, !tbaa !36
  %2 = icmp eq ptr %1, null
  br i1 %2, label %4, label %3

3:                                                ; preds = %0
  tail call void @switch_to_section(ptr noundef nonnull %1) #9
  store ptr null, ptr @saved_section, align 8, !tbaa !36
  br label %4

4:                                                ; preds = %3, %0
  ret void
}

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind optsize }
attributes #10 = { optsize }
attributes #11 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"openmp", i32 51}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!6 = !{!7, !7, i64 0}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!8, !8, i64 0}
!11 = !{!12, !8, i64 16}
!12 = !{!"", !13, i64 0, !7, i64 8, !7, i64 12, !8, i64 16}
!13 = !{!"any pointer", !8, i64 0}
!14 = !{!15, !13, i64 1120}
!15 = !{!"gcc_target", !16, i64 0, !18, i64 368, !19, i64 664, !7, i64 744, !13, i64 752, !13, i64 760, !13, i64 768, !13, i64 776, !13, i64 784, !13, i64 792, !13, i64 800, !13, i64 808, !13, i64 816, !13, i64 824, !13, i64 832, !13, i64 840, !13, i64 848, !13, i64 856, !13, i64 864, !13, i64 872, !13, i64 880, !13, i64 888, !13, i64 896, !13, i64 904, !13, i64 912, !13, i64 920, !13, i64 928, !13, i64 936, !13, i64 944, !13, i64 952, !13, i64 960, !13, i64 968, !13, i64 976, !13, i64 984, !13, i64 992, !13, i64 1000, !13, i64 1008, !13, i64 1016, !13, i64 1024, !13, i64 1032, !13, i64 1040, !13, i64 1048, !13, i64 1056, !20, i64 1064, !20, i64 1072, !13, i64 1080, !13, i64 1088, !13, i64 1096, !13, i64 1104, !13, i64 1112, !13, i64 1120, !13, i64 1128, !13, i64 1136, !13, i64 1144, !13, i64 1152, !13, i64 1160, !13, i64 1168, !21, i64 1176, !13, i64 1232, !13, i64 1240, !13, i64 1248, !13, i64 1256, !13, i64 1264, !13, i64 1272, !13, i64 1280, !13, i64 1288, !13, i64 1296, !13, i64 1304, !13, i64 1312, !13, i64 1320, !13, i64 1328, !13, i64 1336, !13, i64 1344, !13, i64 1352, !13, i64 1360, !13, i64 1368, !13, i64 1376, !13, i64 1384, !13, i64 1392, !13, i64 1400, !13, i64 1408, !13, i64 1416, !13, i64 1424, !13, i64 1432, !13, i64 1440, !13, i64 1448, !13, i64 1456, !20, i64 1464, !22, i64 1472, !13, i64 1664, !13, i64 1672, !13, i64 1680, !13, i64 1688, !13, i64 1696, !13, i64 1704, !13, i64 1712, !13, i64 1720, !13, i64 1728, !13, i64 1736, !13, i64 1744, !13, i64 1752, !13, i64 1760, !13, i64 1768, !13, i64 1776, !23, i64 1784, !24, i64 1792, !25, i64 1896, !26, i64 1968, !13, i64 2016, !8, i64 2024, !8, i64 2025, !8, i64 2026, !8, i64 2027, !8, i64 2028, !8, i64 2029, !8, i64 2030, !8, i64 2031, !8, i64 2032, !8, i64 2033, !8, i64 2034, !8, i64 2035}
!16 = !{!"asm_out", !13, i64 0, !13, i64 8, !13, i64 16, !17, i64 24, !17, i64 56, !13, i64 88, !13, i64 96, !13, i64 104, !13, i64 112, !13, i64 120, !13, i64 128, !13, i64 136, !13, i64 144, !13, i64 152, !13, i64 160, !13, i64 168, !13, i64 176, !13, i64 184, !13, i64 192, !13, i64 200, !13, i64 208, !13, i64 216, !13, i64 224, !13, i64 232, !13, i64 240, !13, i64 248, !13, i64 256, !13, i64 264, !13, i64 272, !13, i64 280, !13, i64 288, !13, i64 296, !13, i64 304, !13, i64 312, !13, i64 320, !13, i64 328, !13, i64 336, !13, i64 344, !13, i64 352, !13, i64 360}
!17 = !{!"asm_int_op", !13, i64 0, !13, i64 8, !13, i64 16, !13, i64 24}
!18 = !{!"sched", !13, i64 0, !13, i64 8, !13, i64 16, !13, i64 24, !13, i64 32, !13, i64 40, !13, i64 48, !13, i64 56, !13, i64 64, !13, i64 72, !13, i64 80, !13, i64 88, !13, i64 96, !13, i64 104, !13, i64 112, !13, i64 120, !13, i64 128, !13, i64 136, !13, i64 144, !13, i64 152, !13, i64 160, !13, i64 168, !13, i64 176, !13, i64 184, !13, i64 192, !13, i64 200, !13, i64 208, !13, i64 216, !13, i64 224, !13, i64 232, !13, i64 240, !13, i64 248, !13, i64 256, !13, i64 264, !13, i64 272, !13, i64 280, !13, i64 288}
!19 = !{!"vectorize", !13, i64 0, !13, i64 8, !13, i64 16, !13, i64 24, !13, i64 32, !13, i64 40, !13, i64 48, !13, i64 56, !13, i64 64, !13, i64 72}
!20 = !{!"long", !8, i64 0}
!21 = !{!"addr_space", !13, i64 0, !13, i64 8, !13, i64 16, !13, i64 24, !13, i64 32, !13, i64 40, !13, i64 48}
!22 = !{!"calls", !13, i64 0, !13, i64 8, !13, i64 16, !13, i64 24, !13, i64 32, !13, i64 40, !13, i64 48, !13, i64 56, !13, i64 64, !13, i64 72, !13, i64 80, !13, i64 88, !13, i64 96, !13, i64 104, !13, i64 112, !13, i64 120, !13, i64 128, !13, i64 136, !13, i64 144, !13, i64 152, !13, i64 160, !13, i64 168, !13, i64 176, !13, i64 184}
!23 = !{!"c", !13, i64 0}
!24 = !{!"cxx", !13, i64 0, !13, i64 8, !13, i64 16, !13, i64 24, !13, i64 32, !13, i64 40, !13, i64 48, !13, i64 56, !13, i64 64, !13, i64 72, !13, i64 80, !13, i64 88, !13, i64 96}
!25 = !{!"emutls", !13, i64 0, !13, i64 8, !13, i64 16, !13, i64 24, !13, i64 32, !13, i64 40, !13, i64 48, !13, i64 56, !8, i64 64, !8, i64 65}
!26 = !{!"target_option_hooks", !13, i64 0, !13, i64 8, !13, i64 16, !13, i64 24, !13, i64 32, !13, i64 40}
!27 = !{!28, !13, i64 176}
!28 = !{!"lang_hooks", !13, i64 0, !20, i64 8, !13, i64 16, !13, i64 24, !13, i64 32, !13, i64 40, !13, i64 48, !13, i64 56, !13, i64 64, !13, i64 72, !13, i64 80, !13, i64 88, !13, i64 96, !13, i64 104, !13, i64 112, !13, i64 120, !13, i64 128, !13, i64 136, !13, i64 144, !13, i64 152, !13, i64 160, !13, i64 168, !13, i64 176, !13, i64 184, !13, i64 192, !13, i64 200, !13, i64 208, !13, i64 216, !13, i64 224, !13, i64 232, !29, i64 240, !30, i64 248, !31, i64 256, !32, i64 272, !33, i64 432, !34, i64 560, !13, i64 584, !13, i64 592, !13, i64 600, !13, i64 608, !13, i64 616, !13, i64 624, !13, i64 632, !13, i64 640, !13, i64 648, !13, i64 656, !13, i64 664, !8, i64 672}
!29 = !{!"lang_hooks_for_tree_inlining", !13, i64 0}
!30 = !{!"lang_hooks_for_callgraph", !13, i64 0}
!31 = !{!"lang_hooks_for_tree_dump", !13, i64 0, !13, i64 8}
!32 = !{!"lang_hooks_for_decls", !13, i64 0, !13, i64 8, !13, i64 16, !13, i64 24, !13, i64 32, !13, i64 40, !13, i64 48, !13, i64 56, !13, i64 64, !13, i64 72, !13, i64 80, !13, i64 88, !13, i64 96, !13, i64 104, !13, i64 112, !13, i64 120, !13, i64 128, !13, i64 136, !13, i64 144, !13, i64 152}
!33 = !{!"lang_hooks_for_types", !13, i64 0, !13, i64 8, !13, i64 16, !13, i64 24, !13, i64 32, !13, i64 40, !13, i64 48, !13, i64 56, !13, i64 64, !13, i64 72, !13, i64 80, !13, i64 88, !13, i64 96, !13, i64 104, !13, i64 112, !8, i64 120}
!34 = !{!"lang_hooks_for_lto", !13, i64 0, !13, i64 8, !13, i64 16}
!35 = !{!28, !13, i64 288}
!36 = !{!13, !13, i64 0}
!37 = distinct !{!37, !38}
!38 = !{!"llvm.loop.mustprogress"}
!39 = !{!40, !13, i64 3568}
!40 = !{!"diagnostic_context", !13, i64 0, !8, i64 8, !8, i64 56, !8, i64 57, !8, i64 60, !8, i64 3540, !8, i64 3541, !13, i64 3544, !13, i64 3552, !13, i64 3560, !13, i64 3568, !13, i64 3576, !7, i64 3584, !8, i64 3588}
!41 = !{!42, !13, i64 48}
!42 = !{!"diagnostic_info", !43, i64 0, !7, i64 40, !7, i64 44, !13, i64 48, !7, i64 56, !7, i64 60}
!43 = !{!"", !13, i64 0, !13, i64 8, !7, i64 16, !13, i64 24, !13, i64 32}
!44 = !{!40, !13, i64 0}
!45 = !{!46, !13, i64 8}
!46 = !{!"pretty_print_info", !13, i64 0, !13, i64 8, !7, i64 16, !7, i64 20, !7, i64 24, !47, i64 28, !13, i64 40, !8, i64 48, !8, i64 49, !8, i64 50}
!47 = !{!"", !7, i64 0, !7, i64 4}
!48 = distinct !{!48, !38}
!49 = distinct !{!49, !38}
!50 = distinct !{!50, !38}
!51 = distinct !{!51, !38}
!52 = !{!12, !13, i64 0}
!53 = !{!12, !7, i64 8}
!54 = !{!12, !7, i64 12}
!55 = distinct !{!55, !38}
!56 = !{!28, !13, i64 624}
!57 = !{!28, !13, i64 632}
!58 = !{!28, !13, i64 280}
