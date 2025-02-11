; ModuleID = 'targhooks.c'
source_filename = "targhooks.c"
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
%struct.optab_d = type { i32, ptr, i8, ptr, [87 x %struct.optab_handlers] }
%struct.optab_handlers = type { i32 }
%struct.ggc_root_tab = type { ptr, i64, i64, ptr, ptr }
%struct.rtx_def = type { i32, %union.u }
%union.u = type { %struct.block_symbol }
%struct.block_symbol = type { [3 x %union.rtunion_def], ptr, i64 }
%union.rtunion_def = type { ptr }
%struct.rtvec_def = type { i32, [1 x ptr] }
%struct.tree_type = type { %struct.tree_common, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, %union.tree_type_symtab, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tree_common = type { %struct.tree_base, ptr, ptr }
%struct.tree_base = type { i64 }
%union.tree_type_symtab = type { ptr }
%struct.tree_int_cst = type { %struct.tree_common, %struct.double_int }
%struct.double_int = type { i64, i64 }
%struct.tree_decl_common = type { %struct.tree_decl_minimal, ptr, i40, i32, ptr, ptr, ptr, ptr, ptr }
%struct.tree_decl_minimal = type { %struct.tree_common, i32, i32, ptr, ptr }
%struct.tree_decl_with_vis = type { %struct.tree_decl_with_rtl, ptr, ptr, ptr, i24 }
%struct.tree_decl_with_rtl = type { %struct.tree_decl_common, ptr }
%struct.tree_function_decl = type { %struct.tree_decl_non_common, ptr, ptr, ptr, ptr, i32 }
%struct.tree_decl_non_common = type { %struct.tree_decl_with_vis, ptr, ptr, ptr, ptr }
%struct.secondary_reload_info = type { i32, i32, ptr, i32 }

@.str = private unnamed_addr constant [12 x i8] c"targhooks.c\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@targetm = external local_unnamed_addr global %struct.gcc_target, align 8
@asm_out_file = external local_unnamed_addr global ptr, align 8
@mode_class = external local_unnamed_addr constant [87 x i8], align 16
@flag_trapping_math = external local_unnamed_addr global i32, align 4
@.str.2 = private unnamed_addr constant [48 x i8] c"__builtin_saveregs not supported by this target\00", align 1
@const_int_rtx = external local_unnamed_addr global [129 x ptr], align 16
@global_rtl = external local_unnamed_addr global [11 x ptr], align 16
@word_mode = external local_unnamed_addr global i32, align 4
@integer_types = external local_unnamed_addr global [11 x ptr], align 16
@sizetype_tab = external local_unnamed_addr global [4 x ptr], align 16
@mode_precision = external local_unnamed_addr constant [87 x i16], align 16
@.str.3 = private unnamed_addr constant [23 x i8] c"Function call in loop.\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"Computed branch in the loop.\00", align 1
@stack_chk_guard_decl = internal global ptr null, align 8
@.str.5 = private unnamed_addr constant [18 x i8] c"__stack_chk_guard\00", align 1
@global_trees = external local_unnamed_addr global [131 x ptr], align 16
@stack_chk_fail_decl = internal global ptr null, align 8
@.str.6 = private unnamed_addr constant [17 x i8] c"__stack_chk_fail\00", align 1
@flag_pic = external local_unnamed_addr global i32, align 4
@.str.7 = private unnamed_addr constant [23 x i8] c"__stack_chk_fail_local\00", align 1
@rtx_class = external local_unnamed_addr constant [139 x i32], align 16
@fixed_regs = external local_unnamed_addr global [53 x i8], align 16
@default_static_chain.issued_error = internal unnamed_addr global i1 false, align 1
@.str.8 = private unnamed_addr constant [46 x i8] c"nested functions not supported on this target\00", align 1
@.str.9 = private unnamed_addr constant [57 x i8] c"nested function trampolines not supported on this target\00", align 1
@optab_table = external local_unnamed_addr global [159 x %struct.optab_d], align 16
@ptr_mode = external local_unnamed_addr global i32, align 4
@.str.10 = private unnamed_addr constant [50 x i8] c"target attribute is not supported on this machine\00", align 1
@.str.11 = private unnamed_addr constant [53 x i8] c"#pragma GCC target is not supported for this machine\00", align 1
@gt_ggc_r_gt_targhooks_h = dso_local local_unnamed_addr constant [3 x %struct.ggc_root_tab] [%struct.ggc_root_tab { ptr @stack_chk_fail_decl, i64 1, i64 8, ptr @gt_ggc_mx_lang_tree_node, ptr @gt_pch_nx_lang_tree_node }, %struct.ggc_root_tab { ptr @stack_chk_guard_decl, i64 1, i64 8, ptr @gt_ggc_mx_lang_tree_node, ptr @gt_pch_nx_lang_tree_node }, %struct.ggc_root_tab zeroinitializer], align 16

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @default_legitimate_address_p(i32 noundef %0, ptr nocapture noundef readnone %1, i8 noundef zeroext %2) local_unnamed_addr #0 {
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 83, ptr noundef nonnull @.str.1) #8
  ret i8 0
}

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @default_external_libcall(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 0, i32 6), align 8, !tbaa !5
  %3 = load ptr, ptr @asm_out_file, align 8, !tbaa !22
  %4 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !23
  tail call void %2(ptr noundef %3, ptr noundef %5) #8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @default_unspec_may_trap_p(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = load i32, ptr %0, align 8
  %4 = and i32 %3, 65535
  %5 = icmp eq i32 %4, 19
  br i1 %5, label %39, label %6

6:                                                ; preds = %2
  %7 = lshr i32 %3, 16
  %8 = and i32 %7, 255
  %9 = zext nneg i32 %8 to i64
  %10 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %9
  %11 = load i8, ptr %10, align 1, !tbaa !23
  %12 = icmp eq i8 %11, 8
  br i1 %12, label %18, label %13

13:                                               ; preds = %6
  %14 = icmp eq i8 %11, 9
  %15 = load i32, ptr @flag_trapping_math, align 4
  %16 = icmp ne i32 %15, 0
  %17 = select i1 %14, i1 %16, i1 false
  br i1 %17, label %39, label %21

18:                                               ; preds = %6
  %19 = load i32, ptr @flag_trapping_math, align 4, !tbaa !24
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %39

21:                                               ; preds = %18, %13
  %22 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !23
  %24 = load i32, ptr %23, align 8, !tbaa !25
  %25 = icmp sgt i32 %24, 0
  br i1 %25, label %32, label %39

26:                                               ; preds = %32
  %27 = add nuw nsw i64 %33, 1
  %28 = load ptr, ptr %22, align 8, !tbaa !23
  %29 = load i32, ptr %28, align 8, !tbaa !25
  %30 = sext i32 %29 to i64
  %31 = icmp slt i64 %27, %30
  br i1 %31, label %32, label %39, !llvm.loop !27

32:                                               ; preds = %21, %26
  %33 = phi i64 [ %27, %26 ], [ 0, %21 ]
  %34 = phi ptr [ %28, %26 ], [ %23, %21 ]
  %35 = getelementptr inbounds %struct.rtvec_def, ptr %34, i64 0, i32 1, i64 %33
  %36 = load ptr, ptr %35, align 8, !tbaa !22
  %37 = tail call i32 @may_trap_p_1(ptr noundef %36, i32 noundef %1) #8
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %26, label %39

39:                                               ; preds = %32, %26, %21, %2, %18, %13
  %40 = phi i32 [ 1, %13 ], [ 1, %18 ], [ 1, %2 ], [ 0, %21 ], [ 1, %32 ], [ 0, %26 ]
  ret i32 %40
}

; Function Attrs: optsize
declare i32 @may_trap_p_1(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @default_promote_function_mode(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr nocapture noundef readnone %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = icmp eq i32 %4, 2
  br i1 %6, label %7, label %9

7:                                                ; preds = %5
  %8 = tail call i32 @promote_mode(ptr noundef %0, i32 noundef %1, ptr noundef %2) #8
  br label %9

9:                                                ; preds = %5, %7
  %10 = phi i32 [ %8, %7 ], [ %1, %5 ]
  ret i32 %10
}

; Function Attrs: optsize
declare i32 @promote_mode(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @default_promote_function_mode_always_promote(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr nocapture noundef readnone %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = tail call i32 @promote_mode(ptr noundef %0, i32 noundef %1, ptr noundef %2) #8
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef i32 @default_cc_modes_compatible(i32 noundef %0, i32 noundef %1) local_unnamed_addr #2 {
  %3 = icmp eq i32 %0, %1
  %4 = select i1 %3, i32 %0, i32 0
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @default_return_in_memory(ptr noundef %0, ptr nocapture noundef readnone %1) local_unnamed_addr #0 {
  %3 = load i64, ptr %0, align 8
  %4 = and i64 %3, 65535
  %5 = icmp eq i64 %4, 14
  br i1 %5, label %6, label %8

6:                                                ; preds = %2
  %7 = tail call i32 @vector_type_mode(ptr noundef nonnull %0) #8
  br label %13

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 6
  %10 = load i32, ptr %9, align 4
  %11 = lshr i32 %10, 16
  %12 = and i32 %11, 255
  br label %13

13:                                               ; preds = %8, %6
  %14 = phi i32 [ %7, %6 ], [ %12, %8 ]
  %15 = icmp eq i32 %14, 1
  %16 = zext i1 %15 to i8
  ret i8 %16
}

; Function Attrs: optsize
declare i32 @vector_type_mode(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef ptr @default_legitimize_address(ptr noundef readnone returned %0, ptr nocapture noundef readnone %1, i32 noundef %2) local_unnamed_addr #2 {
  ret ptr %0
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @default_expand_builtin_saveregs() local_unnamed_addr #0 {
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.2) #8
  %1 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !22
  ret ptr %1
}

; Function Attrs: optsize
declare void @error(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @default_setup_incoming_varargs(ptr nocapture readnone %0, i32 %1, ptr nocapture readnone %2, ptr nocapture readnone %3, i32 %4) #2 {
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local ptr @default_builtin_setjmp_frame_value() local_unnamed_addr #3 {
  %1 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 7), align 8, !tbaa !22
  ret ptr %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef zeroext i8 @hook_bool_CUMULATIVE_ARGS_false(ptr nocapture noundef readnone %0) local_unnamed_addr #2 {
  ret i8 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local zeroext i8 @default_pretend_outgoing_varargs_named(ptr nocapture noundef readnone %0) local_unnamed_addr #3 {
  %2 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 88, i32 7), align 8, !tbaa !29
  %3 = icmp ne ptr %2, @default_setup_incoming_varargs
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @default_eh_return_filter_mode() local_unnamed_addr #0 {
  %1 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 10), align 8, !tbaa !30
  %2 = tail call i32 %1() #8
  ret i32 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local i32 @default_libgcc_cmp_return_mode() local_unnamed_addr #3 {
  %1 = load i32, ptr @word_mode, align 4, !tbaa !24
  ret i32 %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local i32 @default_libgcc_shift_count_mode() local_unnamed_addr #3 {
  %1 = load i32, ptr @word_mode, align 4, !tbaa !24
  ret i32 %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local i32 @default_unwind_word_mode() local_unnamed_addr #3 {
  %1 = load i32, ptr @word_mode, align 4, !tbaa !24
  ret i32 %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef i64 @default_shift_truncation_mask(i32 noundef %0) local_unnamed_addr #2 {
  ret i64 0
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @default_min_divisions_for_recip_mul(i32 noundef %0) local_unnamed_addr #0 {
  %2 = tail call i32 @have_insn_for(i32 noundef 55, i32 noundef %0) #8
  %3 = icmp eq i32 %2, 0
  %4 = select i1 %3, i32 2, i32 3
  ret i32 %4
}

; Function Attrs: optsize
declare i32 @have_insn_for(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef i32 @default_mode_rep_extended(i32 noundef %0, i32 noundef %1) local_unnamed_addr #2 {
  ret i32 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef zeroext i8 @hook_bool_CUMULATIVE_ARGS_true(ptr nocapture noundef readnone %0) local_unnamed_addr #2 {
  ret i8 1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef i32 @default_mode_for_suffix(i8 noundef signext %0) local_unnamed_addr #2 {
  ret i32 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local ptr @default_cxx_guard_type() local_unnamed_addr #3 {
  %1 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 9), align 8, !tbaa !22
  ret ptr %1
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @default_cxx_get_cookie_size(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @sizetype_tab, align 16, !tbaa !22
  %3 = tail call ptr @size_in_bytes(ptr noundef %2) #8
  %4 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 7
  %5 = load i32, ptr %4, align 8, !tbaa !23
  %6 = lshr i32 %5, 3
  %7 = zext nneg i32 %6 to i64
  %8 = tail call ptr @size_int_kind(i64 noundef %7, i32 noundef 0) #8
  %9 = getelementptr inbounds %struct.tree_int_cst, ptr %8, i64 0, i32 1
  %10 = getelementptr inbounds %struct.tree_int_cst, ptr %8, i64 0, i32 1, i32 1
  %11 = load i64, ptr %10, align 8, !tbaa !23
  %12 = getelementptr inbounds %struct.tree_int_cst, ptr %3, i64 0, i32 1
  %13 = getelementptr inbounds %struct.tree_int_cst, ptr %3, i64 0, i32 1, i32 1
  %14 = load i64, ptr %13, align 8, !tbaa !23
  %15 = icmp ult i64 %11, %14
  br i1 %15, label %23, label %16

16:                                               ; preds = %1
  %17 = icmp eq i64 %11, %14
  br i1 %17, label %18, label %22

18:                                               ; preds = %16
  %19 = load i64, ptr %9, align 8, !tbaa !23
  %20 = load i64, ptr %12, align 8, !tbaa !23
  %21 = icmp ult i64 %19, %20
  br i1 %21, label %23, label %22

22:                                               ; preds = %18, %16
  br label %23

23:                                               ; preds = %1, %18, %22
  %24 = phi ptr [ %8, %22 ], [ %3, %18 ], [ %3, %1 ]
  ret ptr %24
}

; Function Attrs: optsize
declare ptr @size_in_bytes(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @size_int_kind(i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @hook_pass_by_reference_must_pass_in_stack(ptr nocapture noundef readnone %0, i32 noundef %1, ptr noundef %2, i8 noundef zeroext %3) local_unnamed_addr #0 {
  %5 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 88, i32 11), align 8, !tbaa !31
  %6 = tail call zeroext i8 %5(i32 noundef %1, ptr noundef %2) #8
  ret i8 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef zeroext i8 @hook_callee_copies_named(ptr nocapture noundef readnone %0, i32 noundef %1, ptr nocapture noundef readnone %2, i8 noundef returned zeroext %3) local_unnamed_addr #2 {
  ret i8 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @default_unwind_emit(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1) local_unnamed_addr #0 {
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 328, ptr noundef nonnull @.str.1) #8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @default_scalar_mode_supported_p(i32 noundef %0) local_unnamed_addr #0 {
  %2 = zext i32 %0 to i64
  %3 = getelementptr inbounds [87 x i16], ptr @mode_precision, i64 0, i64 %2
  %4 = load i16, ptr %3, align 2, !tbaa !32
  %5 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %2
  %6 = load i8, ptr %5, align 1, !tbaa !23
  switch i8 %6, label %13 [
    i8 3, label %7
    i8 2, label %7
    i8 8, label %11
    i8 9, label %19
    i8 4, label %19
    i8 5, label %19
    i8 6, label %19
    i8 7, label %19
  ]

7:                                                ; preds = %1, %1
  %8 = add i16 %4, -8
  %9 = tail call i16 @llvm.fshl.i16(i16 %8, i16 %8, i16 13)
  %10 = icmp ult i16 %9, 8
  br i1 %10, label %14, label %19

11:                                               ; preds = %1
  switch i16 %4, label %12 [
    i16 32, label %19
    i16 64, label %19
    i16 80, label %19
  ]

12:                                               ; preds = %11
  br label %19

13:                                               ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 380, ptr noundef nonnull @.str.1) #8
  br label %19

14:                                               ; preds = %7
  %15 = shl nuw nsw i16 %9, 3
  %16 = zext nneg i16 %15 to i64
  %17 = lshr i64 72057594054705409, %16
  %18 = trunc i64 %17 to i8
  br label %19

19:                                               ; preds = %7, %14, %1, %1, %1, %1, %1, %11, %11, %11, %13, %12
  %20 = phi i8 [ 0, %13 ], [ 0, %12 ], [ 1, %11 ], [ 1, %11 ], [ 1, %11 ], [ 0, %1 ], [ 0, %1 ], [ 0, %1 ], [ 0, %1 ], [ 0, %1 ], [ %18, %14 ], [ 0, %7 ]
  ret i8 %20
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef zeroext i8 @default_decimal_float_supported_p() local_unnamed_addr #2 {
  ret i8 1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef zeroext i8 @default_fixed_point_supported_p() local_unnamed_addr #2 {
  ret i8 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef ptr @default_invalid_within_doloop(ptr nocapture noundef readonly %0) local_unnamed_addr #4 {
  %2 = load i32, ptr %0, align 8
  %3 = trunc i32 %2 to i16
  switch i16 %3, label %10 [
    i16 10, label %11
    i16 9, label %4
  ]

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %6 = load ptr, ptr %5, align 8, !tbaa !23
  %7 = load i32, ptr %6, align 8
  %8 = and i32 %7, 65534
  %9 = icmp eq i32 %8, 20
  br i1 %9, label %11, label %10

10:                                               ; preds = %4, %1
  br label %11

11:                                               ; preds = %4, %1, %10
  %12 = phi ptr [ null, %10 ], [ @.str.3, %1 ], [ @.str.4, %4 ]
  ret ptr %12
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noalias noundef ptr @default_builtin_vectorized_function(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readnone %2) local_unnamed_addr #2 {
  ret ptr null
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noalias noundef ptr @default_builtin_vectorized_conversion(i32 noundef %0, ptr nocapture noundef readnone %1) local_unnamed_addr #2 {
  ret ptr null
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noalias noundef ptr @default_builtin_reciprocal(i32 noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2) local_unnamed_addr #2 {
  ret ptr null
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef zeroext i8 @hook_bool_CUMULATIVE_ARGS_mode_tree_bool_false(ptr nocapture noundef readnone %0, i32 noundef %1, ptr nocapture noundef readnone %2, i8 noundef zeroext %3) local_unnamed_addr #2 {
  ret i8 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef zeroext i8 @hook_bool_CUMULATIVE_ARGS_mode_tree_bool_true(ptr nocapture noundef readnone %0, i32 noundef %1, ptr nocapture noundef readnone %2, i8 noundef zeroext %3) local_unnamed_addr #2 {
  ret i8 1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef i32 @hook_int_CUMULATIVE_ARGS_mode_tree_bool_0(ptr nocapture noundef readnone %0, i32 noundef %1, ptr nocapture noundef readnone %2, i8 noundef zeroext %3) local_unnamed_addr #2 {
  ret i32 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @hook_void_bitmap(ptr nocapture noundef readnone %0) local_unnamed_addr #2 {
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noalias noundef ptr @hook_invalid_arg_for_unprototyped_fn(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readnone %2) local_unnamed_addr #2 {
  ret ptr null
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @default_stack_protect_guard() local_unnamed_addr #0 {
  %1 = load ptr, ptr @stack_chk_guard_decl, align 8, !tbaa !22
  %2 = icmp eq ptr %1, null
  br i1 %2, label %3, label %12

3:                                                ; preds = %0
  %4 = tail call ptr @get_identifier(ptr noundef nonnull @.str.5) #8
  %5 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 39), align 8, !tbaa !22
  %6 = tail call ptr @build_decl_stat(i32 noundef 0, i32 noundef 32, ptr noundef %4, ptr noundef %5) #8
  %7 = load i64, ptr %6, align 8
  %8 = getelementptr inbounds %struct.tree_decl_common, ptr %6, i64 0, i32 2
  %9 = load i64, ptr %8, align 8
  %10 = or i64 %7, 218628096
  store i64 %10, ptr %6, align 8
  %11 = or i64 %9, 33559552
  store i64 %11, ptr %8, align 8
  store ptr %6, ptr @stack_chk_guard_decl, align 8, !tbaa !22
  br label %12

12:                                               ; preds = %3, %0
  %13 = phi ptr [ %6, %3 ], [ %1, %0 ]
  ret ptr %13
}

; Function Attrs: optsize
declare ptr @build_decl_stat(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @get_identifier(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @default_external_stack_protect_fail() local_unnamed_addr #0 {
  %1 = load ptr, ptr @stack_chk_fail_decl, align 8, !tbaa !22
  %2 = icmp eq ptr %1, null
  br i1 %2, label %3, label %17

3:                                                ; preds = %0
  %4 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !22
  %5 = tail call ptr (ptr, ...) @build_function_type_list(ptr noundef %4, ptr noundef null) #8
  %6 = tail call ptr @get_identifier(ptr noundef nonnull @.str.6) #8
  %7 = tail call ptr @build_decl_stat(i32 noundef 0, i32 noundef 29, ptr noundef %6, ptr noundef %5) #8
  %8 = load i64, ptr %7, align 8
  %9 = getelementptr inbounds %struct.tree_decl_common, ptr %7, i64 0, i32 2
  %10 = load i64, ptr %9, align 8
  %11 = or i64 %8, 252182528
  store i64 %11, ptr %7, align 8
  %12 = or i64 %10, 33559552
  store i64 %12, ptr %9, align 8
  %13 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %7, i64 0, i32 4
  %14 = load i32, ptr %13, align 8
  %15 = and i32 %14, -7169
  %16 = or disjoint i32 %15, 4096
  store i32 %16, ptr %13, align 8
  store ptr %7, ptr @stack_chk_fail_decl, align 8, !tbaa !22
  br label %17

17:                                               ; preds = %3, %0
  %18 = phi ptr [ %7, %3 ], [ %1, %0 ]
  %19 = tail call ptr (i32, ptr, i32, ...) @build_call_expr_loc(i32 noundef 0, ptr noundef nonnull %18, i32 noundef 0) #8
  ret ptr %19
}

; Function Attrs: optsize
declare ptr @build_function_type_list(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @build_call_expr_loc(i32 noundef, ptr noundef, i32 noundef, ...) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @default_hidden_stack_protect_fail() local_unnamed_addr #0 {
  %1 = load i32, ptr @flag_pic, align 4, !tbaa !24
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %3, label %5

3:                                                ; preds = %0
  %4 = tail call ptr @default_external_stack_protect_fail() #9
  br label %25

5:                                                ; preds = %0
  %6 = load ptr, ptr @stack_chk_fail_decl, align 8, !tbaa !22
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %22

8:                                                ; preds = %5
  %9 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !22
  %10 = tail call ptr (ptr, ...) @build_function_type_list(ptr noundef %9, ptr noundef null) #8
  %11 = tail call ptr @get_identifier(ptr noundef nonnull @.str.7) #8
  %12 = tail call ptr @build_decl_stat(i32 noundef 0, i32 noundef 29, ptr noundef %11, ptr noundef %10) #8
  %13 = load i64, ptr %12, align 8
  %14 = getelementptr inbounds %struct.tree_decl_common, ptr %12, i64 0, i32 2
  %15 = load i64, ptr %14, align 8
  %16 = or i64 %13, 252182528
  store i64 %16, ptr %12, align 8
  %17 = or i64 %15, 33559552
  store i64 %17, ptr %14, align 8
  %18 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %12, i64 0, i32 4
  %19 = load i32, ptr %18, align 8
  %20 = and i32 %19, -7169
  %21 = or disjoint i32 %20, 6144
  store i32 %21, ptr %18, align 8
  store ptr %12, ptr @stack_chk_fail_decl, align 8, !tbaa !22
  br label %22

22:                                               ; preds = %8, %5
  %23 = phi ptr [ %12, %8 ], [ %6, %5 ]
  %24 = tail call ptr (i32, ptr, i32, ...) @build_call_expr_loc(i32 noundef 0, ptr noundef nonnull %23, i32 noundef 0) #8
  br label %25

25:                                               ; preds = %22, %3
  %26 = phi ptr [ %24, %22 ], [ %4, %3 ]
  ret ptr %26
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local zeroext i8 @hook_bool_const_rtx_commutative_p(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #5 {
  %3 = load i32, ptr %0, align 8
  %4 = and i32 %3, 65535
  %5 = zext nneg i32 %4 to i64
  %6 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %5
  %7 = load i32, ptr %6, align 4, !tbaa !24
  %8 = and i32 %7, -3
  %9 = icmp eq i32 %8, 1
  %10 = zext i1 %9 to i8
  ret i8 %10
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noalias noundef ptr @default_function_value(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, i8 noundef zeroext %2) local_unnamed_addr #0 {
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 612, ptr noundef nonnull @.str.1) #8
  ret ptr null
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @default_libcall_value(i32 noundef %0, ptr nocapture noundef readnone %1) local_unnamed_addr #0 {
  %3 = tail call ptr @ix86_libcall_value(i32 noundef %0) #8
  ret ptr %3
}

; Function Attrs: optsize
declare ptr @ix86_libcall_value(i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @default_internal_arg_pointer() local_unnamed_addr #0 {
  %1 = load i8, ptr getelementptr inbounds ([53 x i8], ptr @fixed_regs, i64 0, i64 16), align 16, !tbaa !23
  %2 = icmp eq i8 %1, 0
  %3 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 6), align 16, !tbaa !22
  br i1 %2, label %4, label %6

4:                                                ; preds = %0
  %5 = tail call ptr @copy_to_reg(ptr noundef %3) #8
  br label %6

6:                                                ; preds = %0, %4
  %7 = phi ptr [ %5, %4 ], [ %3, %0 ]
  ret ptr %7
}

; Function Attrs: optsize
declare ptr @copy_to_reg(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @default_static_chain(ptr nocapture noundef readonly %0, i8 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.tree_function_decl, ptr %0, i64 0, i32 5
  %4 = load i32, ptr %3, align 8
  %5 = and i32 %4, 4194304
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %13, label %7

7:                                                ; preds = %2
  %8 = load i1, ptr @default_static_chain.issued_error, align 1
  br i1 %8, label %10, label %9

9:                                                ; preds = %7
  store i1 true, ptr @default_static_chain.issued_error, align 1
  tail call void (ptr, ...) @sorry(ptr noundef nonnull @.str.8) #8
  br label %10

10:                                               ; preds = %9, %7
  %11 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 2), align 16, !tbaa !22
  %12 = tail call ptr @gen_rtx_MEM(i32 noundef 16, ptr noundef %11) #8
  br label %13

13:                                               ; preds = %2, %10
  %14 = phi ptr [ %12, %10 ], [ null, %2 ]
  ret ptr %14
}

; Function Attrs: optsize
declare void @sorry(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @gen_rtx_MEM(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @default_trampoline_init(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readnone %2) local_unnamed_addr #0 {
  tail call void (ptr, ...) @sorry(ptr noundef nonnull @.str.9) #8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef i32 @default_branch_target_register_class() local_unnamed_addr #2 {
  ret i32 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local noundef i32 @default_secondary_reload(i8 noundef zeroext %0, ptr nocapture noundef readnone %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef %4) local_unnamed_addr #6 {
  %6 = getelementptr inbounds %struct.secondary_reload_info, ptr %4, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !34
  %8 = icmp eq ptr %7, null
  br i1 %8, label %14, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.secondary_reload_info, ptr %7, i64 0, i32 3
  %11 = load i32, ptr %10, align 8, !tbaa !36
  %12 = icmp eq i32 %11, 2956
  br i1 %12, label %14, label %13

13:                                               ; preds = %9
  store i32 %11, ptr %4, align 8, !tbaa !37
  br label %14

14:                                               ; preds = %9, %5, %13
  ret i32 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef zeroext i8 @default_handle_c_option(i64 noundef %0, ptr nocapture noundef readnone %1, i32 noundef %2) local_unnamed_addr #2 {
  ret i8 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local i32 @default_reloc_rw_mask() local_unnamed_addr #3 {
  %1 = load i32, ptr @flag_pic, align 4, !tbaa !24
  %2 = icmp eq i32 %1, 0
  %3 = select i1 %2, i32 0, i32 3
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef ptr @default_mangle_decl_assembler_name(ptr nocapture noundef readnone %0, ptr noundef readnone returned %1) local_unnamed_addr #2 {
  ret ptr %1
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @default_builtin_vector_alignment_reachable(ptr nocapture noundef readonly %0, i8 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = icmp eq i8 %1, 0
  br i1 %3, label %4, label %11

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !23
  %7 = tail call ptr @size_int_kind(i64 noundef 32, i32 noundef 2) #8
  %8 = tail call i32 @tree_int_cst_compare(ptr noundef %6, ptr noundef %7) #8
  %9 = icmp slt i32 %8, 1
  %10 = zext i1 %9 to i8
  br label %11

11:                                               ; preds = %4, %2
  %12 = phi i8 [ 0, %2 ], [ %10, %4 ]
  ret i8 %12
}

; Function Attrs: optsize
declare i32 @tree_int_cst_compare(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local zeroext i8 @default_builtin_support_vector_misalignment(i32 noundef %0, ptr nocapture noundef readnone %1, i32 noundef %2, i8 noundef zeroext %3) local_unnamed_addr #3 {
  %5 = sext i32 %0 to i64
  %6 = getelementptr inbounds [159 x %struct.optab_d], ptr @optab_table, i64 0, i64 62, i32 4, i64 %5
  %7 = load i32, ptr %6, align 4, !tbaa !38
  %8 = icmp ne i32 %7, 2956
  %9 = zext i1 %8 to i8
  ret i8 %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local zeroext i8 @default_valid_pointer_mode(i32 noundef %0) local_unnamed_addr #3 {
  %2 = load i32, ptr @ptr_mode, align 4, !tbaa !24
  %3 = icmp eq i32 %2, %0
  %4 = icmp eq i32 %0, 16
  %5 = or i1 %4, %3
  %6 = zext i1 %5 to i8
  ret i8 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @default_addr_space_pointer_mode(i8 noundef zeroext %0) #0 {
  %2 = icmp eq i8 %0, 0
  br i1 %2, label %4, label %3

3:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 857, ptr noundef nonnull @.str.1) #8
  br label %4

4:                                                ; preds = %1, %3
  %5 = load i32, ptr @ptr_mode, align 4, !tbaa !24
  ret i32 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @default_addr_space_address_mode(i8 noundef zeroext %0) #0 {
  %2 = icmp eq i8 %0, 0
  br i1 %2, label %4, label %3

3:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 867, ptr noundef nonnull @.str.1) #8
  br label %4

4:                                                ; preds = %1, %3
  ret i32 16
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @default_addr_space_valid_pointer_mode(i32 noundef %0, i8 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = icmp eq i8 %1, 0
  br i1 %3, label %13, label %4

4:                                                ; preds = %2
  %5 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 57), align 8, !tbaa !40
  %6 = tail call i32 %5(i8 noundef zeroext %1) #8
  %7 = icmp eq i32 %6, %0
  br i1 %7, label %16, label %8

8:                                                ; preds = %4
  %9 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 57, i32 1), align 8, !tbaa !41
  %10 = tail call i32 %9(i8 noundef zeroext %1) #8
  %11 = icmp eq i32 %10, %0
  %12 = zext i1 %11 to i8
  br label %16

13:                                               ; preds = %2
  %14 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 56), align 8, !tbaa !42
  %15 = tail call zeroext i8 %14(i32 noundef %0) #8
  br label %16

16:                                               ; preds = %4, %8, %13
  %17 = phi i8 [ %15, %13 ], [ 1, %4 ], [ %12, %8 ]
  ret i8 %17
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local zeroext i8 @target_default_pointer_address_modes_p() local_unnamed_addr #3 {
  %1 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 57, i32 1), align 8, !tbaa !41
  %2 = icmp eq ptr %1, @default_addr_space_address_mode
  %3 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 57), align 8
  %4 = icmp eq ptr %3, @default_addr_space_pointer_mode
  %5 = select i1 %2, i1 %4, i1 false
  %6 = zext i1 %5 to i8
  ret i8 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @default_addr_space_legitimate_address_p(i32 noundef %0, ptr noundef %1, i8 noundef zeroext %2, i8 noundef zeroext %3) local_unnamed_addr #0 {
  %5 = icmp eq i8 %3, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %4
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 906, ptr noundef nonnull @.str.1) #8
  br label %7

7:                                                ; preds = %6, %4
  %8 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 41), align 8, !tbaa !43
  %9 = tail call zeroext i8 %8(i32 noundef %0, ptr noundef %1, i8 noundef zeroext %2) #8
  ret i8 %9
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @default_addr_space_legitimize_address(ptr noundef %0, ptr noundef %1, i32 noundef %2, i8 noundef zeroext %3) local_unnamed_addr #0 {
  %5 = icmp eq i8 %3, 0
  br i1 %5, label %6, label %9

6:                                                ; preds = %4
  %7 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 39), align 8, !tbaa !44
  %8 = tail call ptr %7(ptr noundef %0, ptr noundef %1, i32 noundef %2) #8
  br label %9

9:                                                ; preds = %4, %6
  %10 = phi ptr [ %8, %6 ], [ %0, %4 ]
  ret ptr %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef zeroext i8 @default_addr_space_subset_p(i8 noundef zeroext %0, i8 noundef zeroext %1) local_unnamed_addr #2 {
  %3 = icmp eq i8 %0, %1
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noalias noundef ptr @default_addr_space_convert(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readnone %2) local_unnamed_addr #0 {
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 941, ptr noundef nonnull @.str.1) #8
  ret ptr null
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef zeroext i8 @default_hard_regno_scratch_ok(i32 noundef %0) local_unnamed_addr #2 {
  ret i8 1
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @default_target_option_valid_attribute_p(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readnone %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = tail call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 45, ptr noundef nonnull @.str.10) #8
  ret i8 0
}

; Function Attrs: optsize
declare zeroext i8 @warning(i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @default_target_option_pragma_parse(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1) local_unnamed_addr #0 {
  %3 = tail call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 165, ptr noundef nonnull @.str.11) #8
  ret i8 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local zeroext i8 @default_target_can_inline_p(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #5 {
  %3 = getelementptr inbounds %struct.tree_function_decl, ptr %1, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !23
  %5 = getelementptr inbounds %struct.tree_function_decl, ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !23
  %7 = icmp eq ptr %4, null
  br i1 %7, label %13, label %8

8:                                                ; preds = %2
  %9 = icmp eq ptr %6, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %8
  %11 = icmp eq ptr %4, %6
  %12 = zext i1 %11 to i8
  br label %13

13:                                               ; preds = %8, %2, %10
  %14 = phi i8 [ %12, %10 ], [ 1, %2 ], [ 0, %8 ]
  ret i8 %14
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef i32 @default_case_values_threshold() local_unnamed_addr #2 {
  ret i32 5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef zeroext i8 @default_have_conditional_execution() local_unnamed_addr #2 {
  ret i8 0
}

; Function Attrs: optsize
declare void @gt_ggc_mx_lang_tree_node(ptr noundef) #1

; Function Attrs: optsize
declare void @gt_pch_nx_lang_tree_node(ptr noundef) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.fshl.i16(i16, i16, i16) #7

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nounwind optsize }
attributes #9 = { optsize }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !8, i64 96}
!6 = !{!"gcc_target", !7, i64 0, !12, i64 368, !13, i64 664, !14, i64 744, !8, i64 752, !8, i64 760, !8, i64 768, !8, i64 776, !8, i64 784, !8, i64 792, !8, i64 800, !8, i64 808, !8, i64 816, !8, i64 824, !8, i64 832, !8, i64 840, !8, i64 848, !8, i64 856, !8, i64 864, !8, i64 872, !8, i64 880, !8, i64 888, !8, i64 896, !8, i64 904, !8, i64 912, !8, i64 920, !8, i64 928, !8, i64 936, !8, i64 944, !8, i64 952, !8, i64 960, !8, i64 968, !8, i64 976, !8, i64 984, !8, i64 992, !8, i64 1000, !8, i64 1008, !8, i64 1016, !8, i64 1024, !8, i64 1032, !8, i64 1040, !8, i64 1048, !8, i64 1056, !15, i64 1064, !15, i64 1072, !8, i64 1080, !8, i64 1088, !8, i64 1096, !8, i64 1104, !8, i64 1112, !8, i64 1120, !8, i64 1128, !8, i64 1136, !8, i64 1144, !8, i64 1152, !8, i64 1160, !8, i64 1168, !16, i64 1176, !8, i64 1232, !8, i64 1240, !8, i64 1248, !8, i64 1256, !8, i64 1264, !8, i64 1272, !8, i64 1280, !8, i64 1288, !8, i64 1296, !8, i64 1304, !8, i64 1312, !8, i64 1320, !8, i64 1328, !8, i64 1336, !8, i64 1344, !8, i64 1352, !8, i64 1360, !8, i64 1368, !8, i64 1376, !8, i64 1384, !8, i64 1392, !8, i64 1400, !8, i64 1408, !8, i64 1416, !8, i64 1424, !8, i64 1432, !8, i64 1440, !8, i64 1448, !8, i64 1456, !15, i64 1464, !17, i64 1472, !8, i64 1664, !8, i64 1672, !8, i64 1680, !8, i64 1688, !8, i64 1696, !8, i64 1704, !8, i64 1712, !8, i64 1720, !8, i64 1728, !8, i64 1736, !8, i64 1744, !8, i64 1752, !8, i64 1760, !8, i64 1768, !8, i64 1776, !18, i64 1784, !19, i64 1792, !20, i64 1896, !21, i64 1968, !8, i64 2016, !9, i64 2024, !9, i64 2025, !9, i64 2026, !9, i64 2027, !9, i64 2028, !9, i64 2029, !9, i64 2030, !9, i64 2031, !9, i64 2032, !9, i64 2033, !9, i64 2034, !9, i64 2035}
!7 = !{!"asm_out", !8, i64 0, !8, i64 8, !8, i64 16, !11, i64 24, !11, i64 56, !8, i64 88, !8, i64 96, !8, i64 104, !8, i64 112, !8, i64 120, !8, i64 128, !8, i64 136, !8, i64 144, !8, i64 152, !8, i64 160, !8, i64 168, !8, i64 176, !8, i64 184, !8, i64 192, !8, i64 200, !8, i64 208, !8, i64 216, !8, i64 224, !8, i64 232, !8, i64 240, !8, i64 248, !8, i64 256, !8, i64 264, !8, i64 272, !8, i64 280, !8, i64 288, !8, i64 296, !8, i64 304, !8, i64 312, !8, i64 320, !8, i64 328, !8, i64 336, !8, i64 344, !8, i64 352, !8, i64 360}
!8 = !{!"any pointer", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!"asm_int_op", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24}
!12 = !{!"sched", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !8, i64 40, !8, i64 48, !8, i64 56, !8, i64 64, !8, i64 72, !8, i64 80, !8, i64 88, !8, i64 96, !8, i64 104, !8, i64 112, !8, i64 120, !8, i64 128, !8, i64 136, !8, i64 144, !8, i64 152, !8, i64 160, !8, i64 168, !8, i64 176, !8, i64 184, !8, i64 192, !8, i64 200, !8, i64 208, !8, i64 216, !8, i64 224, !8, i64 232, !8, i64 240, !8, i64 248, !8, i64 256, !8, i64 264, !8, i64 272, !8, i64 280, !8, i64 288}
!13 = !{!"vectorize", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !8, i64 40, !8, i64 48, !8, i64 56, !8, i64 64, !8, i64 72}
!14 = !{!"int", !9, i64 0}
!15 = !{!"long", !9, i64 0}
!16 = !{!"addr_space", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !8, i64 40, !8, i64 48}
!17 = !{!"calls", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !8, i64 40, !8, i64 48, !8, i64 56, !8, i64 64, !8, i64 72, !8, i64 80, !8, i64 88, !8, i64 96, !8, i64 104, !8, i64 112, !8, i64 120, !8, i64 128, !8, i64 136, !8, i64 144, !8, i64 152, !8, i64 160, !8, i64 168, !8, i64 176, !8, i64 184}
!18 = !{!"c", !8, i64 0}
!19 = !{!"cxx", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !8, i64 40, !8, i64 48, !8, i64 56, !8, i64 64, !8, i64 72, !8, i64 80, !8, i64 88, !8, i64 96}
!20 = !{!"emutls", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !8, i64 40, !8, i64 48, !8, i64 56, !9, i64 64, !9, i64 65}
!21 = !{!"target_option_hooks", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !8, i64 40}
!22 = !{!8, !8, i64 0}
!23 = !{!9, !9, i64 0}
!24 = !{!14, !14, i64 0}
!25 = !{!26, !14, i64 0}
!26 = !{!"rtvec_def", !14, i64 0, !9, i64 8}
!27 = distinct !{!27, !28}
!28 = !{!"llvm.loop.mustprogress"}
!29 = !{!6, !8, i64 1528}
!30 = !{!6, !8, i64 800}
!31 = !{!6, !8, i64 1560}
!32 = !{!33, !33, i64 0}
!33 = !{!"short", !9, i64 0}
!34 = !{!35, !8, i64 8}
!35 = !{!"secondary_reload_info", !14, i64 0, !14, i64 4, !8, i64 8, !14, i64 16}
!36 = !{!35, !14, i64 16}
!37 = !{!35, !14, i64 0}
!38 = !{!39, !14, i64 0}
!39 = !{!"optab_handlers", !14, i64 0}
!40 = !{!6, !8, i64 1176}
!41 = !{!6, !8, i64 1184}
!42 = !{!6, !8, i64 1168}
!43 = !{!6, !8, i64 1048}
!44 = !{!6, !8, i64 1032}
