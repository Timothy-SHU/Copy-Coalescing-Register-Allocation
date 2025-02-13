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
define dso_local void @lhd_do_nothing() local_unnamed_addr #0 !prof !46 {
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @lhd_do_nothing_t(ptr nocapture noundef readnone %0) local_unnamed_addr #0 !prof !47 {
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef ptr @lhd_pass_through_t(ptr noundef readnone returned %0) local_unnamed_addr #0 !prof !48 {
  ret ptr %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @lhd_do_nothing_i(i32 noundef %0) local_unnamed_addr #0 !prof !48 {
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noalias noundef ptr @lhd_do_nothing_iii_return_null_tree(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 !prof !48 {
  ret ptr null
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @lhd_do_nothing_f(ptr nocapture noundef readnone %0) local_unnamed_addr #0 !prof !48 {
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noalias noundef ptr @lhd_return_null_tree_v() local_unnamed_addr #0 !prof !48 {
  ret ptr null
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noalias noundef ptr @lhd_return_null_tree(ptr nocapture noundef readnone %0) local_unnamed_addr #0 !prof !48 {
  ret ptr null
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noalias noundef ptr @lhd_return_null_const_tree(ptr nocapture noundef readnone %0) local_unnamed_addr #0 !prof !48 {
  ret ptr null
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i8 @lhd_post_options(ptr nocapture noundef readnone %0) local_unnamed_addr #1 !prof !48 {
  store i32 1, ptr @flag_excess_precision_cmdline, align 4, !tbaa !49
  ret i8 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @lhd_print_tree_nothing(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, i32 noundef %2) local_unnamed_addr #0 !prof !48 {
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @lhd_warn_unused_global_decl(ptr nocapture noundef readonly %0) local_unnamed_addr #2 !prof !48 {
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
  %16 = load i32, ptr %15, align 8, !tbaa !53
  call void @expand_location(ptr dead_on_unwind nonnull writable sret(%struct.expanded_location) align 8 %2, i32 noundef %16) #9
  %17 = getelementptr inbounds %struct.expanded_location, ptr %2, i64 0, i32 3
  %18 = load i8, ptr %17, align 8, !tbaa !54
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
define dso_local void @lhd_set_decl_assembler_name(ptr noundef %0) local_unnamed_addr #2 !prof !57 {
  %2 = load i64, ptr %0, align 8
  %3 = trunc i64 %2 to i16
  switch i16 %3, label %14 [
    i16 29, label %16
    i16 32, label %4
  ], !prof !58

4:                                                ; preds = %1
  %5 = and i64 %2, 67108864
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %16, !prof !59

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 2
  %9 = load i64, ptr %8, align 8
  %10 = and i64 %9, 33554432
  %11 = and i64 %2, 134217728
  %12 = or disjoint i64 %10, %11
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %16, !prof !60

14:                                               ; preds = %7, %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 164, ptr noundef nonnull @.str.1) #9
  %15 = load i64, ptr %0, align 8
  br label %16

16:                                               ; preds = %1, %4, %7, %14
  %17 = phi i64 [ %2, %1 ], [ %2, %4 ], [ %2, %7 ], [ %15, %14 ]
  %18 = and i64 %17, 134217728
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %24, !prof !61

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.tree_decl_minimal, ptr %0, i64 0, i32 4
  %22 = load ptr, ptr %21, align 8, !tbaa !53
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %29, !prof !62

24:                                               ; preds = %20, %16
  %25 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 50), align 8, !tbaa !63
  %26 = getelementptr inbounds %struct.tree_decl_minimal, ptr %0, i64 0, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !53
  %28 = tail call ptr %25(ptr noundef nonnull %0, ptr noundef %27) #9
  br label %42

29:                                               ; preds = %20
  %30 = getelementptr inbounds %struct.tree_decl_minimal, ptr %0, i64 0, i32 3
  %31 = load ptr, ptr %30, align 8, !tbaa !53
  %32 = getelementptr inbounds %struct.tree_identifier, ptr %31, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !53
  %34 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %33) #10
  %35 = add i64 %34, 32
  %36 = alloca i8, i64 %35, align 16
  %37 = getelementptr inbounds %struct.tree_decl_minimal, ptr %0, i64 0, i32 2
  %38 = load i32, ptr %37, align 4, !tbaa !53
  %39 = zext i32 %38 to i64
  %40 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %36, ptr noundef nonnull dereferenceable(1) @.str.2, ptr noundef %33, i64 noundef %39) #10
  %41 = call ptr @get_identifier(ptr noundef nonnull %36) #9
  br label %42

42:                                               ; preds = %29, %24
  %43 = phi ptr [ %28, %24 ], [ %41, %29 ]
  %44 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %0, i64 0, i32 1
  store ptr %43, ptr %44, align 8, !tbaa !53
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
define dso_local noundef ptr @lhd_type_promotes_to(ptr noundef readnone returned %0) local_unnamed_addr #2 !prof !48 {
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 196, ptr noundef nonnull @.str.1) #9
  ret ptr %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @lhd_register_builtin_type(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1) local_unnamed_addr #0 !prof !48 {
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @lhd_incomplete_type_error(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) local_unnamed_addr #2 !prof !48 {
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
define dso_local noundef i32 @lhd_get_alias_set(ptr nocapture noundef readnone %0) local_unnamed_addr #0 !prof !48 {
  ret i32 -1
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @lhd_decl_printable_name(ptr noundef readonly %0, i32 noundef %1) local_unnamed_addr #2 !prof !76 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %8, label %4, !prof !77

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.tree_decl_minimal, ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !53
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %11, !prof !77

8:                                                ; preds = %4, %2
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 231, ptr noundef nonnull @.str.1) #9
  %9 = getelementptr inbounds %struct.tree_decl_minimal, ptr %0, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !53
  br label %11

11:                                               ; preds = %4, %8
  %12 = phi ptr [ %6, %4 ], [ %10, %8 ]
  %13 = getelementptr inbounds %struct.tree_identifier, ptr %12, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !53
  ret ptr %14
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @lhd_dwarf_name(ptr noundef %0, i32 noundef %1) local_unnamed_addr #2 !prof !48 {
  %3 = load i64, ptr %0, align 8
  %4 = and i64 %3, 65535
  %5 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %4
  %6 = load i32, ptr %5, align 4, !tbaa !49
  %7 = icmp eq i32 %6, 3
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 240, ptr noundef nonnull @.str.1) #9
  br label %9

9:                                                ; preds = %2, %8
  %10 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 22), align 8, !tbaa !78
  %11 = tail call ptr %10(ptr noundef nonnull %0, i32 noundef %1) #9
  ret ptr %11
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local i32 @lhd_types_compatible_p(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #7 !prof !48 {
  %3 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 16
  %4 = load ptr, ptr %3, align 8, !tbaa !53
  %5 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 16
  %6 = load ptr, ptr %5, align 8, !tbaa !53
  %7 = icmp eq ptr %4, %6
  %8 = zext i1 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef zeroext i8 @lhd_tree_dump_dump_tree(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1) local_unnamed_addr #0 !prof !48 {
  ret i8 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local i32 @lhd_tree_dump_type_quals(ptr nocapture noundef readonly %0) local_unnamed_addr #7 !prof !48 {
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
define dso_local noundef i32 @lhd_gimplify_expr(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readnone %2) local_unnamed_addr #0 !prof !48 {
  ret i32 -1
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i64 @lhd_tree_size(i32 noundef %0) local_unnamed_addr #2 !prof !48 {
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 290, ptr noundef nonnull @.str.1) #9
  ret i64 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef zeroext i8 @lhd_decl_ok_for_sibcall(ptr nocapture noundef readnone %0) local_unnamed_addr #0 !prof !86 {
  ret i8 1
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @write_global_declarations() local_unnamed_addr #2 !prof !48 {
  tail call void @cgraph_finalize_compilation_unit() #9
  %1 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 33, i32 2), align 8, !tbaa !87
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
  store ptr %13, ptr %15, align 8, !tbaa !88
  %16 = add nuw nsw i64 %12, 1
  %17 = getelementptr inbounds %struct.tree_common, ptr %13, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !53
  %19 = icmp eq i64 %16, %9
  br i1 %19, label %20, label %11, !llvm.loop !89

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
define dso_local void @lhd_initialize_diagnostics(ptr nocapture noundef readnone %0) local_unnamed_addr #0 !prof !48 {
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @lhd_print_error_function(ptr nocapture noundef %0, ptr noundef %1, ptr noundef readonly %2) local_unnamed_addr #2 !prof !46 {
  %4 = alloca %struct.expanded_location, align 8
  %5 = getelementptr inbounds %struct.diagnostic_context, ptr %0, i64 0, i32 10
  %6 = load ptr, ptr %5, align 8, !tbaa !91
  %7 = getelementptr inbounds %struct.diagnostic_info, ptr %2, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !93
  %9 = icmp eq ptr %8, null
  %10 = load ptr, ptr @current_function_decl, align 8
  %11 = select i1 %9, ptr %10, ptr %8, !prof !96
  %12 = icmp eq ptr %6, %11
  br i1 %12, label %136, label %13, !prof !96

13:                                               ; preds = %3
  %14 = load ptr, ptr %0, align 8, !tbaa !97
  %15 = getelementptr inbounds %struct.pretty_print_info, ptr %14, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !98
  %17 = icmp ne ptr %1, null
  %18 = and i1 %17, %9
  br i1 %18, label %19, label %22

19:                                               ; preds = %13
  %20 = tail call ptr @file_name_as_prefix(ptr noundef nonnull %1) #9
  %21 = load ptr, ptr %0, align 8, !tbaa !97
  br label %22

22:                                               ; preds = %13, %19
  %23 = phi ptr [ %21, %19 ], [ %14, %13 ]
  %24 = phi ptr [ %20, %19 ], [ null, %13 ]
  tail call void @pp_base_set_prefix(ptr noundef %23, ptr noundef %24) #9
  %25 = load ptr, ptr @current_function_decl, align 8, !tbaa !88
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %29

27:                                               ; preds = %22
  %28 = load ptr, ptr %0, align 8, !tbaa !97
  tail call void (ptr, ptr, ...) @pp_printf(ptr noundef %28, ptr noundef nonnull @.str.3) #9
  br label %126

29:                                               ; preds = %22
  br i1 %9, label %44, label %30

30:                                               ; preds = %29
  %31 = getelementptr inbounds %struct.tree_block, ptr %8, i64 0, i32 7
  %32 = load ptr, ptr %31, align 8, !tbaa !53
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
  %39 = load ptr, ptr %38, align 8, !tbaa !53
  %40 = icmp eq ptr %39, null
  %41 = icmp eq ptr %39, %34
  %42 = or i1 %40, %41
  br i1 %42, label %43, label %33, !llvm.loop !101

43:                                               ; preds = %33, %37
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 373, ptr noundef nonnull @.str.1) #9
  br label %44

44:                                               ; preds = %33, %29, %43
  %45 = phi ptr [ %34, %43 ], [ %25, %29 ], [ %34, %33 ]
  %46 = getelementptr inbounds %struct.tree_common, ptr %45, i64 0, i32 2
  %47 = load ptr, ptr %46, align 8, !tbaa !53
  %48 = load i64, ptr %47, align 8
  %49 = and i64 %48, 65535
  %50 = icmp eq i64 %49, 21
  %51 = load ptr, ptr %0, align 8, !tbaa !97
  %52 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 22), align 8, !tbaa !78
  %53 = tail call ptr %52(ptr noundef nonnull %45, i32 noundef 2) #9
  %54 = tail call ptr @identifier_to_locale(ptr noundef %53) #9
  %55 = select i1 %50, ptr @.str.4, ptr @.str.5
  tail call void (ptr, ptr, ...) @pp_printf(ptr noundef %51, ptr noundef nonnull %55, ptr noundef %54) #9
  br i1 %9, label %123, label %56

56:                                               ; preds = %44, %121
  %57 = phi ptr [ %96, %121 ], [ %8, %44 ]
  %58 = getelementptr inbounds %struct.tree_block, ptr %57, i64 0, i32 2
  br label %59

59:                                               ; preds = %83, %56
  %60 = phi ptr [ %57, %56 ], [ %62, %83 ]
  %61 = getelementptr inbounds %struct.tree_block, ptr %60, i64 0, i32 6
  %62 = load ptr, ptr %61, align 8, !tbaa !53
  %63 = icmp eq ptr %62, null
  br i1 %63, label %123, label %64

64:                                               ; preds = %59
  %65 = load i64, ptr %62, align 8
  %66 = and i64 %65, 65535
  %67 = icmp eq i64 %66, 4
  br i1 %67, label %68, label %85

68:                                               ; preds = %64
  %69 = getelementptr inbounds %struct.tree_block, ptr %62, i64 0, i32 7
  %70 = load ptr, ptr %69, align 8, !tbaa !53
  %71 = icmp eq ptr %70, null
  br i1 %71, label %85, label %72

72:                                               ; preds = %68, %77
  %73 = phi ptr [ %79, %77 ], [ %70, %68 ]
  %74 = load i64, ptr %73, align 8
  %75 = and i64 %74, 65535
  %76 = icmp eq i64 %75, 4
  br i1 %76, label %77, label %83

77:                                               ; preds = %72
  %78 = getelementptr inbounds %struct.tree_block, ptr %73, i64 0, i32 7
  %79 = load ptr, ptr %78, align 8, !tbaa !53
  %80 = icmp eq ptr %79, null
  %81 = icmp eq ptr %79, %73
  %82 = or i1 %80, %81
  br i1 %82, label %83, label %72, !llvm.loop !102

83:                                               ; preds = %77, %72
  %84 = trunc i64 %74 to i16
  switch i16 %84, label %85 [
    i16 29, label %94
    i16 4, label %59
  ], !llvm.loop !103

85:                                               ; preds = %68, %64, %83
  br label %86

86:                                               ; preds = %85, %90
  %87 = phi ptr [ %92, %90 ], [ %62, %85 ]
  %88 = load i64, ptr %87, align 8
  %89 = trunc i64 %88 to i16
  switch i16 %89, label %123 [
    i16 4, label %90
    i16 29, label %94
  ]

90:                                               ; preds = %86
  %91 = getelementptr inbounds %struct.tree_block, ptr %87, i64 0, i32 6
  %92 = load ptr, ptr %91, align 8, !tbaa !53
  %93 = icmp eq ptr %92, null
  br i1 %93, label %123, label %86, !llvm.loop !104

94:                                               ; preds = %83, %86
  %95 = phi ptr [ %87, %86 ], [ %73, %83 ]
  %96 = phi ptr [ null, %86 ], [ %62, %83 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #11
  %97 = load i32, ptr %58, align 4, !tbaa !49
  call void @expand_location(ptr dead_on_unwind nonnull writable sret(%struct.expanded_location) align 8 %4, i32 noundef %97) #9
  %98 = load ptr, ptr %0, align 8, !tbaa !97
  call void @pp_base_character(ptr noundef %98, i32 noundef 44) #9
  %99 = load ptr, ptr %0, align 8, !tbaa !97
  call void @pp_base_newline(ptr noundef %99) #9
  %100 = load ptr, ptr %4, align 8, !tbaa !105
  %101 = icmp eq ptr %100, null
  br i1 %101, label %116, label %102

102:                                              ; preds = %94
  %103 = getelementptr inbounds %struct.expanded_location, ptr %4, i64 0, i32 1
  %104 = load i32, ptr @flag_show_column, align 4, !tbaa !49
  %105 = icmp eq i32 %104, 0
  %106 = load ptr, ptr %0, align 8, !tbaa !97
  %107 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 22), align 8, !tbaa !78
  %108 = call ptr %107(ptr noundef nonnull %95, i32 noundef 2) #9
  %109 = call ptr @identifier_to_locale(ptr noundef %108) #9
  %110 = load ptr, ptr %4, align 8, !tbaa !105
  %111 = load i32, ptr %103, align 8, !tbaa !106
  br i1 %105, label %115, label %112

112:                                              ; preds = %102
  %113 = getelementptr inbounds %struct.expanded_location, ptr %4, i64 0, i32 2
  %114 = load i32, ptr %113, align 4, !tbaa !107
  call void (ptr, ptr, ...) @pp_printf(ptr noundef %106, ptr noundef nonnull @.str.6, ptr noundef %109, ptr noundef %110, i32 noundef %111, i32 noundef %114) #9
  br label %121

115:                                              ; preds = %102
  call void (ptr, ptr, ...) @pp_printf(ptr noundef %106, ptr noundef nonnull @.str.7, ptr noundef %109, ptr noundef %110, i32 noundef %111) #9
  br label %121

116:                                              ; preds = %94
  %117 = load ptr, ptr %0, align 8, !tbaa !97
  %118 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 22), align 8, !tbaa !78
  %119 = call ptr %118(ptr noundef nonnull %95, i32 noundef 2) #9
  %120 = call ptr @identifier_to_locale(ptr noundef %119) #9
  call void (ptr, ptr, ...) @pp_printf(ptr noundef %117, ptr noundef nonnull @.str.8, ptr noundef %120) #9
  br label %121

121:                                              ; preds = %116, %115, %112
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #11
  %122 = icmp eq ptr %96, null
  br i1 %122, label %123, label %56, !llvm.loop !108

123:                                              ; preds = %121, %59, %90, %86, %44
  %124 = load ptr, ptr %0, align 8, !tbaa !97
  call void @pp_base_character(ptr noundef %124, i32 noundef 58) #9
  %125 = icmp eq ptr %2, null
  br i1 %125, label %129, label %126

126:                                              ; preds = %27, %123
  %127 = load ptr, ptr %7, align 8, !tbaa !93
  %128 = icmp eq ptr %127, null
  br i1 %128, label %129, label %131

129:                                              ; preds = %126, %123
  %130 = load ptr, ptr @current_function_decl, align 8, !tbaa !88
  br label %131

131:                                              ; preds = %126, %129
  %132 = phi ptr [ %130, %129 ], [ %127, %126 ]
  store ptr %132, ptr %5, align 8, !tbaa !91
  %133 = load ptr, ptr %0, align 8, !tbaa !97
  call void @pp_base_flush(ptr noundef %133) #9
  %134 = load ptr, ptr %0, align 8, !tbaa !97
  %135 = getelementptr inbounds %struct.pretty_print_info, ptr %134, i64 0, i32 1
  store ptr %16, ptr %135, align 8, !tbaa !98
  call void @free(ptr noundef %24) #10
  br label %136

136:                                              ; preds = %131, %3
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
define dso_local noalias noundef ptr @lhd_callgraph_analyze_expr(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1) local_unnamed_addr #0 !prof !109 {
  ret ptr null
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @lhd_make_node(i32 noundef %0) local_unnamed_addr #2 !prof !48 {
  %2 = tail call ptr @make_node_stat(i32 noundef %0) #9
  ret ptr %2
}

; Function Attrs: optsize
declare ptr @make_node_stat(i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef i64 @lhd_to_target_charset(i64 noundef returned %0) local_unnamed_addr #0 !prof !48 {
  ret i64 %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef ptr @lhd_expr_to_decl(ptr noundef readnone returned %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readnone %2) local_unnamed_addr #0 !prof !48 {
  ret ptr %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local i32 @lhd_omp_predetermined_sharing(ptr nocapture noundef readonly %0) local_unnamed_addr #7 !prof !48 {
  %2 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8
  %4 = trunc i64 %3 to i32
  %5 = lshr i32 %4, 12
  %6 = and i32 %5, 1
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @lhd_omp_assignment(ptr nocapture noundef readnone %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 !prof !48 {
  %4 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !53
  %6 = tail call ptr @build2_stat(i32 noundef 53, ptr noundef %5, ptr noundef %1, ptr noundef %2) #9
  ret ptr %6
}

; Function Attrs: optsize
declare ptr @build2_stat(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @lhd_omp_firstprivatize_type_sizes(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1) local_unnamed_addr #0 !prof !48 {
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @add_builtin_function(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #2 !prof !110 {
  %7 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 41), align 8, !tbaa !111
  %8 = tail call fastcc ptr @add_builtin_function_common(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %7) #10
  ret ptr %8
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @add_builtin_function_common(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr nocapture noundef readonly %6) unnamed_addr #2 !prof !110 !PGOFuncName !112 {
  %8 = alloca ptr, align 8
  %9 = tail call ptr @get_identifier(ptr noundef %0) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #11
  %10 = tail call ptr @build_decl_stat(i32 noundef 1, i32 noundef 29, ptr noundef %9, ptr noundef %1) #9
  store ptr %10, ptr %8, align 8, !tbaa !88
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
  br i1 %24, label %26, label %25, !prof !113

25:                                               ; preds = %7
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 535, ptr noundef nonnull @.str.1) #9
  br label %26

26:                                               ; preds = %7, %25
  %27 = icmp eq ptr %4, null
  br i1 %27, label %31, label %28, !prof !114

28:                                               ; preds = %26
  %29 = tail call ptr @get_identifier(ptr noundef nonnull %4) #9
  %30 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %10, i64 0, i32 1
  store ptr %29, ptr %30, align 8, !tbaa !53
  br label %31

31:                                               ; preds = %28, %26
  %32 = icmp eq ptr %5, null
  br i1 %32, label %35, label %33, !prof !115

33:                                               ; preds = %31
  %34 = call ptr @decl_attributes(ptr noundef nonnull %8, ptr noundef nonnull %5, i32 noundef 16) #9
  br label %37

35:                                               ; preds = %31
  %36 = call ptr @decl_attributes(ptr noundef nonnull %8, ptr noundef null, i32 noundef 0) #9
  br label %37

37:                                               ; preds = %35, %33
  %38 = load ptr, ptr %8, align 8, !tbaa !88
  %39 = call ptr %6(ptr noundef %38) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #11
  ret ptr %39
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @add_builtin_function_ext_scope(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #2 !prof !48 {
  %7 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 42), align 8, !tbaa !116
  %8 = tail call fastcc ptr @add_builtin_function_common(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %7) #10
  ret ptr %8
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @lhd_builtin_function(ptr noundef returned %0) local_unnamed_addr #2 !prof !48 {
  %2 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 33, i32 1), align 8, !tbaa !117
  %3 = tail call ptr %2(ptr noundef %0) #9
  ret ptr %0
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @lhd_begin_section(ptr noundef %0) local_unnamed_addr #2 !prof !48 {
  %2 = load ptr, ptr @saved_section, align 8, !tbaa !88
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 611, ptr noundef nonnull @.str.1) #9
  br label %5

5:                                                ; preds = %1, %4
  %6 = load ptr, ptr @in_section, align 8, !tbaa !88
  store ptr %6, ptr @saved_section, align 8, !tbaa !88
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %10

8:                                                ; preds = %5
  %9 = load ptr, ptr @text_section, align 8, !tbaa !88
  store ptr %9, ptr @saved_section, align 8, !tbaa !88
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
define dso_local void @lhd_append_data(ptr noundef %0, i64 noundef %1, ptr nocapture noundef %2) local_unnamed_addr #2 !prof !48 {
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
define dso_local void @lhd_end_section() local_unnamed_addr #2 !prof !48 {
  %1 = load ptr, ptr @saved_section, align 8, !tbaa !88
  %2 = icmp eq ptr %1, null
  br i1 %2, label %4, label %3

3:                                                ; preds = %0
  tail call void @switch_to_section(ptr noundef nonnull %1) #9
  store ptr null, ptr @saved_section, align 8, !tbaa !88
  br label %4

4:                                                ; preds = %3, %0
  ret void
}

; Function Attrs: optsize
declare ptr @build_decl_stat(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @decl_attributes(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

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

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!45}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44}
!35 = !{ptr @lhd_set_decl_assembler_name, ptr @fancy_abort, i64 1}
!36 = !{ptr @lhd_set_decl_assembler_name, ptr @strlen, i64 38}
!37 = !{ptr @lhd_set_decl_assembler_name, ptr @sprintf, i64 38}
!38 = !{ptr @lhd_set_decl_assembler_name, ptr @get_identifier, i64 38}
!39 = !{ptr @lhd_decl_printable_name, ptr @fancy_abort, i64 2}
!40 = !{ptr @add_builtin_function, ptr @add_builtin_function_common, i64 1174}
!41 = !{ptr @add_builtin_function_common, ptr @get_identifier, i64 1703}
!42 = !{ptr @add_builtin_function_common, ptr @build_decl_stat, i64 1174}
!43 = !{ptr @add_builtin_function_common, ptr @fancy_abort, i64 1}
!44 = !{ptr @add_builtin_function_common, ptr @decl_attributes, i64 1174}
!45 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!46 = !{!"function_entry_count", i64 1}
!47 = !{!"function_entry_count", i64 191}
!48 = !{!"function_entry_count", i64 0}
!49 = !{!50, !50, i64 0}
!50 = !{!"int", !51, i64 0}
!51 = !{!"omnipotent char", !52, i64 0}
!52 = !{!"Simple C/C++ TBAA"}
!53 = !{!51, !51, i64 0}
!54 = !{!55, !51, i64 16}
!55 = !{!"", !56, i64 0, !50, i64 8, !50, i64 12, !51, i64 16}
!56 = !{!"any pointer", !51, i64 0}
!57 = !{!"function_entry_count", i64 137}
!58 = !{!"branch_weights", i32 47, i32 4416, i32 2209}
!59 = !{!"branch_weights", i32 8, i32 40}
!60 = !{!"branch_weights", i32 1, i32 17}
!61 = !{!"branch_weights", i32 41, i32 98}
!62 = !{!"branch_weights", i32 3, i32 39}
!63 = !{!64, !56, i64 1120}
!64 = !{!"gcc_target", !65, i64 0, !67, i64 368, !68, i64 664, !50, i64 744, !56, i64 752, !56, i64 760, !56, i64 768, !56, i64 776, !56, i64 784, !56, i64 792, !56, i64 800, !56, i64 808, !56, i64 816, !56, i64 824, !56, i64 832, !56, i64 840, !56, i64 848, !56, i64 856, !56, i64 864, !56, i64 872, !56, i64 880, !56, i64 888, !56, i64 896, !56, i64 904, !56, i64 912, !56, i64 920, !56, i64 928, !56, i64 936, !56, i64 944, !56, i64 952, !56, i64 960, !56, i64 968, !56, i64 976, !56, i64 984, !56, i64 992, !56, i64 1000, !56, i64 1008, !56, i64 1016, !56, i64 1024, !56, i64 1032, !56, i64 1040, !56, i64 1048, !56, i64 1056, !69, i64 1064, !69, i64 1072, !56, i64 1080, !56, i64 1088, !56, i64 1096, !56, i64 1104, !56, i64 1112, !56, i64 1120, !56, i64 1128, !56, i64 1136, !56, i64 1144, !56, i64 1152, !56, i64 1160, !56, i64 1168, !70, i64 1176, !56, i64 1232, !56, i64 1240, !56, i64 1248, !56, i64 1256, !56, i64 1264, !56, i64 1272, !56, i64 1280, !56, i64 1288, !56, i64 1296, !56, i64 1304, !56, i64 1312, !56, i64 1320, !56, i64 1328, !56, i64 1336, !56, i64 1344, !56, i64 1352, !56, i64 1360, !56, i64 1368, !56, i64 1376, !56, i64 1384, !56, i64 1392, !56, i64 1400, !56, i64 1408, !56, i64 1416, !56, i64 1424, !56, i64 1432, !56, i64 1440, !56, i64 1448, !56, i64 1456, !69, i64 1464, !71, i64 1472, !56, i64 1664, !56, i64 1672, !56, i64 1680, !56, i64 1688, !56, i64 1696, !56, i64 1704, !56, i64 1712, !56, i64 1720, !56, i64 1728, !56, i64 1736, !56, i64 1744, !56, i64 1752, !56, i64 1760, !56, i64 1768, !56, i64 1776, !72, i64 1784, !73, i64 1792, !74, i64 1896, !75, i64 1968, !56, i64 2016, !51, i64 2024, !51, i64 2025, !51, i64 2026, !51, i64 2027, !51, i64 2028, !51, i64 2029, !51, i64 2030, !51, i64 2031, !51, i64 2032, !51, i64 2033, !51, i64 2034, !51, i64 2035}
!65 = !{!"asm_out", !56, i64 0, !56, i64 8, !56, i64 16, !66, i64 24, !66, i64 56, !56, i64 88, !56, i64 96, !56, i64 104, !56, i64 112, !56, i64 120, !56, i64 128, !56, i64 136, !56, i64 144, !56, i64 152, !56, i64 160, !56, i64 168, !56, i64 176, !56, i64 184, !56, i64 192, !56, i64 200, !56, i64 208, !56, i64 216, !56, i64 224, !56, i64 232, !56, i64 240, !56, i64 248, !56, i64 256, !56, i64 264, !56, i64 272, !56, i64 280, !56, i64 288, !56, i64 296, !56, i64 304, !56, i64 312, !56, i64 320, !56, i64 328, !56, i64 336, !56, i64 344, !56, i64 352, !56, i64 360}
!66 = !{!"asm_int_op", !56, i64 0, !56, i64 8, !56, i64 16, !56, i64 24}
!67 = !{!"sched", !56, i64 0, !56, i64 8, !56, i64 16, !56, i64 24, !56, i64 32, !56, i64 40, !56, i64 48, !56, i64 56, !56, i64 64, !56, i64 72, !56, i64 80, !56, i64 88, !56, i64 96, !56, i64 104, !56, i64 112, !56, i64 120, !56, i64 128, !56, i64 136, !56, i64 144, !56, i64 152, !56, i64 160, !56, i64 168, !56, i64 176, !56, i64 184, !56, i64 192, !56, i64 200, !56, i64 208, !56, i64 216, !56, i64 224, !56, i64 232, !56, i64 240, !56, i64 248, !56, i64 256, !56, i64 264, !56, i64 272, !56, i64 280, !56, i64 288}
!68 = !{!"vectorize", !56, i64 0, !56, i64 8, !56, i64 16, !56, i64 24, !56, i64 32, !56, i64 40, !56, i64 48, !56, i64 56, !56, i64 64, !56, i64 72}
!69 = !{!"long", !51, i64 0}
!70 = !{!"addr_space", !56, i64 0, !56, i64 8, !56, i64 16, !56, i64 24, !56, i64 32, !56, i64 40, !56, i64 48}
!71 = !{!"calls", !56, i64 0, !56, i64 8, !56, i64 16, !56, i64 24, !56, i64 32, !56, i64 40, !56, i64 48, !56, i64 56, !56, i64 64, !56, i64 72, !56, i64 80, !56, i64 88, !56, i64 96, !56, i64 104, !56, i64 112, !56, i64 120, !56, i64 128, !56, i64 136, !56, i64 144, !56, i64 152, !56, i64 160, !56, i64 168, !56, i64 176, !56, i64 184}
!72 = !{!"c", !56, i64 0}
!73 = !{!"cxx", !56, i64 0, !56, i64 8, !56, i64 16, !56, i64 24, !56, i64 32, !56, i64 40, !56, i64 48, !56, i64 56, !56, i64 64, !56, i64 72, !56, i64 80, !56, i64 88, !56, i64 96}
!74 = !{!"emutls", !56, i64 0, !56, i64 8, !56, i64 16, !56, i64 24, !56, i64 32, !56, i64 40, !56, i64 48, !56, i64 56, !51, i64 64, !51, i64 65}
!75 = !{!"target_option_hooks", !56, i64 0, !56, i64 8, !56, i64 16, !56, i64 24, !56, i64 32, !56, i64 40}
!76 = !{!"function_entry_count", i64 45}
!77 = !{!"branch_weights", i32 1, i32 46}
!78 = !{!79, !56, i64 176}
!79 = !{!"lang_hooks", !56, i64 0, !69, i64 8, !56, i64 16, !56, i64 24, !56, i64 32, !56, i64 40, !56, i64 48, !56, i64 56, !56, i64 64, !56, i64 72, !56, i64 80, !56, i64 88, !56, i64 96, !56, i64 104, !56, i64 112, !56, i64 120, !56, i64 128, !56, i64 136, !56, i64 144, !56, i64 152, !56, i64 160, !56, i64 168, !56, i64 176, !56, i64 184, !56, i64 192, !56, i64 200, !56, i64 208, !56, i64 216, !56, i64 224, !56, i64 232, !80, i64 240, !81, i64 248, !82, i64 256, !83, i64 272, !84, i64 432, !85, i64 560, !56, i64 584, !56, i64 592, !56, i64 600, !56, i64 608, !56, i64 616, !56, i64 624, !56, i64 632, !56, i64 640, !56, i64 648, !56, i64 656, !56, i64 664, !51, i64 672}
!80 = !{!"lang_hooks_for_tree_inlining", !56, i64 0}
!81 = !{!"lang_hooks_for_callgraph", !56, i64 0}
!82 = !{!"lang_hooks_for_tree_dump", !56, i64 0, !56, i64 8}
!83 = !{!"lang_hooks_for_decls", !56, i64 0, !56, i64 8, !56, i64 16, !56, i64 24, !56, i64 32, !56, i64 40, !56, i64 48, !56, i64 56, !56, i64 64, !56, i64 72, !56, i64 80, !56, i64 88, !56, i64 96, !56, i64 104, !56, i64 112, !56, i64 120, !56, i64 128, !56, i64 136, !56, i64 144, !56, i64 152}
!84 = !{!"lang_hooks_for_types", !56, i64 0, !56, i64 8, !56, i64 16, !56, i64 24, !56, i64 32, !56, i64 40, !56, i64 48, !56, i64 56, !56, i64 64, !56, i64 72, !56, i64 80, !56, i64 88, !56, i64 96, !56, i64 104, !56, i64 112, !51, i64 120}
!85 = !{!"lang_hooks_for_lto", !56, i64 0, !56, i64 8, !56, i64 16}
!86 = !{!"function_entry_count", i64 19}
!87 = !{!79, !56, i64 288}
!88 = !{!56, !56, i64 0}
!89 = distinct !{!89, !90}
!90 = !{!"llvm.loop.mustprogress"}
!91 = !{!92, !56, i64 3568}
!92 = !{!"diagnostic_context", !56, i64 0, !51, i64 8, !51, i64 56, !51, i64 57, !51, i64 60, !51, i64 3540, !51, i64 3541, !56, i64 3544, !56, i64 3552, !56, i64 3560, !56, i64 3568, !56, i64 3576, !50, i64 3584, !51, i64 3588}
!93 = !{!94, !56, i64 48}
!94 = !{!"diagnostic_info", !95, i64 0, !50, i64 40, !50, i64 44, !56, i64 48, !50, i64 56, !50, i64 60}
!95 = !{!"", !56, i64 0, !56, i64 8, !50, i64 16, !56, i64 24, !56, i64 32}
!96 = !{!"branch_weights", i32 2, i32 1}
!97 = !{!92, !56, i64 0}
!98 = !{!99, !56, i64 8}
!99 = !{!"pretty_print_info", !56, i64 0, !56, i64 8, !50, i64 16, !50, i64 20, !50, i64 24, !100, i64 28, !56, i64 40, !51, i64 48, !51, i64 49, !51, i64 50}
!100 = !{!"", !50, i64 0, !50, i64 4}
!101 = distinct !{!101, !90}
!102 = distinct !{!102, !90}
!103 = distinct !{!103, !90}
!104 = distinct !{!104, !90}
!105 = !{!55, !56, i64 0}
!106 = !{!55, !50, i64 8}
!107 = !{!55, !50, i64 12}
!108 = distinct !{!108, !90}
!109 = !{!"function_entry_count", i64 163}
!110 = !{!"function_entry_count", i64 1174}
!111 = !{!79, !56, i64 624}
!112 = !{!"langhooks.c:add_builtin_function_common"}
!113 = !{!"branch_weights", i32 1175, i32 1}
!114 = !{!"branch_weights", i32 646, i32 530}
!115 = !{!"branch_weights", i32 57, i32 1119}
!116 = !{!79, !56, i64 632}
!117 = !{!79, !56, i64 280}
