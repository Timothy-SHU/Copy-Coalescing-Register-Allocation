; ModuleID = 'tree-dfa.c'
source_filename = "tree-dfa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gimple_opt_pass = type { %struct.opt_pass }
%struct.opt_pass = type { i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct.lang_hooks = type { ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lang_hooks_for_tree_inlining, %struct.lang_hooks_for_callgraph, %struct.lang_hooks_for_tree_dump, %struct.lang_hooks_for_decls, %struct.lang_hooks_for_types, %struct.lang_hooks_for_lto, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.lang_hooks_for_tree_inlining = type { ptr }
%struct.lang_hooks_for_callgraph = type { ptr }
%struct.lang_hooks_for_tree_dump = type { ptr, ptr }
%struct.lang_hooks_for_decls = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lang_hooks_for_types = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.lang_hooks_for_lto = type { ptr, ptr, ptr }
%struct.gimple_stmt_iterator = type { ptr, ptr, ptr }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.basic_block_def = type { ptr, ptr, ptr, ptr, [2 x ptr], ptr, ptr, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%union.basic_block_il_dependent = type { ptr }
%struct.control_flow_graph = type { ptr, ptr, ptr, i32, i32, i32, ptr, i32, [2 x i32], [2 x i32], i32, i32 }
%struct.tree_var_decl = type { %struct.tree_decl_with_vis, ptr }
%struct.tree_decl_with_vis = type { %struct.tree_decl_with_rtl, ptr, ptr, ptr, i24 }
%struct.tree_decl_with_rtl = type { %struct.tree_decl_common, ptr }
%struct.tree_decl_common = type { %struct.tree_decl_minimal, ptr, i40, i32, ptr, ptr, ptr, ptr, ptr }
%struct.tree_decl_minimal = type { %struct.tree_common, i32, i32, ptr, ptr }
%struct.tree_common = type { %struct.tree_base, ptr, ptr }
%struct.tree_base = type { i64 }
%struct.tree_parm_decl = type { %struct.tree_decl_with_rtl, ptr, ptr }
%struct.tree_result_decl = type { %struct.tree_decl_with_rtl, ptr }
%struct.gimple_statement_base = type { i32, i32, i32, i32, ptr, ptr }
%struct.gimple_seq_node_d = type { ptr, ptr, ptr }
%struct.referenced_var_iterator = type { %struct.htab_iterator }
%struct.htab_iterator = type { ptr, ptr, ptr }
%struct.tree_ssa_name = type { %struct.tree_common, ptr, ptr, i32, ptr, %struct.ssa_use_operand_d }
%struct.ssa_use_operand_d = type { ptr, ptr, %union.anon, ptr }
%union.anon = type { ptr }
%struct.gimple_df = type { ptr, ptr, ptr, ptr, %struct.pt_solution, %struct.pt_solution, ptr, ptr, ptr, ptr, i8, %struct.ssa_operands }
%struct.pt_solution = type { i8, ptr }
%struct.ssa_operands = type { ptr, i32, i32, i8, ptr, ptr }
%struct.dfa_stats_d = type { i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.gimple_statement_phi = type { %struct.gimple_statement_base, i32, i32, ptr, [1 x %struct.phi_arg_d] }
%struct.phi_arg_d = type { %struct.ssa_use_operand_d, ptr, i32 }
%struct.tree_exp = type { %struct.tree_common, i32, ptr, [1 x ptr] }
%struct.ssa_operand_iterator_d = type { i8, i32, ptr, ptr, i32, i32, ptr }
%struct.use_optype_d = type { ptr, %struct.ssa_use_operand_d }
%struct.def_optype_d = type { ptr, ptr }
%struct.tree_type = type { %struct.tree_common, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, %union.tree_type_symtab, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.tree_type_symtab = type { ptr }
%struct.tree_int_cst = type { %struct.tree_common, %struct.double_int }
%struct.double_int = type { i64, i64 }
%struct.tree_field_decl = type { %struct.tree_decl_common, ptr, ptr, ptr, ptr, ptr }
%struct.htab = type { ptr, ptr, ptr, ptr, i64, i64, i64, i32, i32, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.gimple_statement_with_memory_ops_base = type { %struct.gimple_statement_with_ops_base, ptr, ptr }
%struct.gimple_statement_with_ops_base = type { %struct.gimple_statement_base, ptr, ptr }

@.str = private unnamed_addr constant [17 x i8] c"*referenced_vars\00", align 1
@pass_referenced_vars = dso_local local_unnamed_addr global %struct.gimple_opt_pass { %struct.opt_pass { i32 0, ptr @.str, ptr null, ptr @find_referenced_vars, ptr null, ptr null, i32 0, i32 55, i32 12, i32 16, i32 0, i32 1, i32 1 } }, align 8
@.str.1 = private unnamed_addr constant [11 x i8] c"tree-dfa.c\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@cfun = external local_unnamed_addr global ptr, align 8
@.str.3 = private unnamed_addr constant [34 x i8] c"\0AReferenced variables in %s: %u\0A\0A\00", align 1
@current_function_decl = external local_unnamed_addr global ptr, align 8
@.str.4 = private unnamed_addr constant [11 x i8] c"Variable: \00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.6 = private unnamed_addr constant [6 x i8] c"<nil>\00", align 1
@dump_flags = external local_unnamed_addr global i32, align 4
@.str.7 = private unnamed_addr constant [11 x i8] c", UID D.%u\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.9 = private unnamed_addr constant [17 x i8] c", is addressable\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c", is global\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c", is volatile\00", align 1
@.str.12 = private unnamed_addr constant [17 x i8] c", call clobbered\00", align 1
@.str.13 = private unnamed_addr constant [12 x i8] c", call used\00", align 1
@.str.14 = private unnamed_addr constant [51 x i8] c", NO_ALIAS (does not alias other NO_ALIAS symbols)\00", align 1
@.str.15 = private unnamed_addr constant [74 x i8] c", NO_ALIAS_GLOBAL (does not alias other NO_ALIAS symbols and global vars)\00", align 1
@.str.16 = private unnamed_addr constant [55 x i8] c", NO_ALIAS_ANYTHING (does not alias any other symbols)\00", align 1
@.str.17 = private unnamed_addr constant [16 x i8] c", default def: \00", align 1
@.str.18 = private unnamed_addr constant [12 x i8] c", initial: \00", align 1
@.str.19 = private unnamed_addr constant [16 x i8] c"%-30s%-13s%12s\0A\00", align 1
@.str.20 = private unnamed_addr constant [19 x i8] c"%-30s%13lu%11lu%c\0A\00", align 1
@.str.21 = private unnamed_addr constant [14 x i8] c"%-43s%11lu%c\0A\00", align 1
@lang_hooks = external local_unnamed_addr global %struct.lang_hooks, align 8
@.str.22 = private unnamed_addr constant [25 x i8] c"\0ADFA Statistics for %s\0A\0A\00", align 1
@.str.23 = private unnamed_addr constant [59 x i8] c"---------------------------------------------------------\0A\00", align 1
@.str.24 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.25 = private unnamed_addr constant [14 x i8] c"  Number of  \00", align 1
@.str.26 = private unnamed_addr constant [7 x i8] c"Memory\00", align 1
@.str.27 = private unnamed_addr constant [14 x i8] c"  instances  \00", align 1
@.str.28 = private unnamed_addr constant [6 x i8] c"used \00", align 1
@.str.29 = private unnamed_addr constant [21 x i8] c"Referenced variables\00", align 1
@.str.30 = private unnamed_addr constant [20 x i8] c"Variables annotated\00", align 1
@.str.31 = private unnamed_addr constant [13 x i8] c"USE operands\00", align 1
@.str.32 = private unnamed_addr constant [13 x i8] c"DEF operands\00", align 1
@.str.33 = private unnamed_addr constant [14 x i8] c"VUSE operands\00", align 1
@.str.34 = private unnamed_addr constant [14 x i8] c"VDEF operands\00", align 1
@.str.35 = private unnamed_addr constant [10 x i8] c"PHI nodes\00", align 1
@.str.36 = private unnamed_addr constant [14 x i8] c"PHI arguments\00", align 1
@.str.37 = private unnamed_addr constant [34 x i8] c"Total memory used by DFA/SSA data\00", align 1
@.str.38 = private unnamed_addr constant [59 x i8] c"Average number of arguments per PHI node: %.1f (max: %ld)\0A\00", align 1
@tree_code_type = external local_unnamed_addr constant [0 x i32], align 4
@mode_size = external local_unnamed_addr global [87 x i8], align 16
@gimple_ops_offset_ = external local_unnamed_addr constant [0 x i64], align 8
@.str.39 = private unnamed_addr constant [11 x i8] c"./gimple.h\00", align 1
@gss_for_code_ = external local_unnamed_addr constant [0 x i32], align 4
@.str.40 = private unnamed_addr constant [21 x i8] c"./tree-flow-inline.h\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @find_referenced_vars() #0 !prof !134 !PGOFuncName !135 {
  %1 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %1) #15
  %2 = load ptr, ptr @cfun, align 8, !tbaa !136
  %3 = getelementptr inbounds %struct.function, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !140
  %5 = load ptr, ptr %4, align 8, !tbaa !143
  %6 = getelementptr inbounds %struct.basic_block_def, ptr %5, i64 0, i32 6
  %7 = load ptr, ptr %6, align 8, !tbaa !145
  %8 = getelementptr inbounds %struct.control_flow_graph, ptr %4, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !148
  %10 = icmp eq ptr %7, %9
  br i1 %10, label %39, label %20, !prof !149

11:                                               ; preds = %35, %32
  %12 = getelementptr inbounds %struct.basic_block_def, ptr %21, i64 0, i32 6
  %13 = load ptr, ptr %12, align 8, !tbaa !145
  %14 = load ptr, ptr @cfun, align 8, !tbaa !136
  %15 = getelementptr inbounds %struct.function, ptr %14, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !140
  %17 = getelementptr inbounds %struct.control_flow_graph, ptr %16, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !148
  %19 = icmp eq ptr %13, %18
  br i1 %19, label %39, label %20, !prof !150, !llvm.loop !151

20:                                               ; preds = %0, %11
  %21 = phi ptr [ %13, %11 ], [ %7, %0 ]
  call fastcc void @gsi_start_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %1, ptr noundef %21) #16
  %22 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #16, !range !153
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %24, label %32, !prof !154

24:                                               ; preds = %20, %29
  %25 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #16
  %26 = call fastcc zeroext i8 @is_gimple_debug(ptr noundef %25) #16, !range !153
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %28, label %29, !prof !155

28:                                               ; preds = %24
  call void @find_referenced_vars_in(ptr noundef %25) #16
  br label %29

29:                                               ; preds = %24, %28
  call fastcc void @gsi_next(ptr noundef nonnull %1) #16
  %30 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #16, !range !153
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %24, label %32, !prof !156, !llvm.loop !157

32:                                               ; preds = %29, %20
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %1, ptr noundef %21) #17
  %33 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #16, !range !153
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %35, label %11, !prof !158

35:                                               ; preds = %32, %35
  %36 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #16
  call void @find_referenced_vars_in(ptr noundef %36) #16
  call fastcc void @gsi_next(ptr noundef nonnull %1) #16
  %37 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #16, !range !153
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %35, label %11, !prof !159, !llvm.loop !160

39:                                               ; preds = %11, %0
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %1) #15
  ret i32 0
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @create_var_ann(ptr noundef %0) local_unnamed_addr #0 !prof !161 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %3, label %4, !prof !162

3:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 135, ptr noundef nonnull @.str.2) #17
  br label %4

4:                                                ; preds = %1, %3
  %5 = load i64, ptr %0, align 8
  %6 = trunc i64 %5 to i16
  switch i16 %6, label %7 [
    i16 32, label %8
    i16 34, label %8
    i16 36, label %8
  ], !prof !163

7:                                                ; preds = %4
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 138, ptr noundef nonnull @.str.2) #17
  br label %8

8:                                                ; preds = %4, %4, %4, %7
  %9 = tail call ptr @ggc_alloc_cleared_stat(i64 noundef 16) #17
  %10 = load i64, ptr %0, align 8
  %11 = trunc i64 %10 to i16
  switch i16 %11, label %16 [
    i16 32, label %12
    i16 34, label %14
  ], !prof !164

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.tree_var_decl, ptr %0, i64 0, i32 1
  br label %21

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.tree_parm_decl, ptr %0, i64 0, i32 2
  br label %21

16:                                               ; preds = %8
  %17 = and i64 %10, 65535
  %18 = icmp eq i64 %17, 36
  %19 = getelementptr inbounds %struct.tree_result_decl, ptr %0, i64 0, i32 1
  %20 = select i1 %18, ptr %19, ptr null, !prof !165
  br label %21

21:                                               ; preds = %14, %16, %12
  %22 = phi ptr [ %13, %12 ], [ %15, %14 ], [ %20, %16 ]
  store ptr %9, ptr %22, align 8, !tbaa !136
  ret ptr %9
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @ggc_alloc_cleared_stat(i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @renumber_gimple_stmt_uids() local_unnamed_addr #3 !prof !166 {
  %1 = alloca %struct.gimple_stmt_iterator, align 8
  %2 = load ptr, ptr @cfun, align 8, !tbaa !136
  tail call fastcc void @set_gimple_stmt_max_uid(ptr noundef %2) #16
  %3 = load ptr, ptr @cfun, align 8, !tbaa !136
  %4 = getelementptr inbounds %struct.function, ptr %3, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !140
  %6 = load ptr, ptr %5, align 8, !tbaa !136
  %7 = icmp eq ptr %6, null
  br i1 %7, label %22, label %8, !prof !167

8:                                                ; preds = %0, %18
  %9 = phi ptr [ %20, %18 ], [ %6, %0 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %1) #15
  call fastcc void @gsi_start_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %1, ptr noundef nonnull %9) #16
  %10 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #16, !range !153
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %18, !prof !168

12:                                               ; preds = %8, %12
  %13 = tail call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #16
  %14 = load ptr, ptr @cfun, align 8, !tbaa !136
  %15 = tail call fastcc i32 @inc_gimple_stmt_max_uid(ptr noundef %14) #16
  tail call fastcc void @gimple_set_uid(ptr noundef %13, i32 noundef %15) #16
  call fastcc void @gsi_next(ptr noundef nonnull %1) #16
  %16 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #16, !range !153
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %12, label %18, !prof !169, !llvm.loop !170

18:                                               ; preds = %12, %8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %1) #15
  %19 = getelementptr inbounds %struct.basic_block_def, ptr %9, i64 0, i32 6
  %20 = load ptr, ptr %19, align 8, !tbaa !136
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %8, !prof !171, !llvm.loop !172

22:                                               ; preds = %18, %0
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @set_gimple_stmt_max_uid(ptr nocapture noundef writeonly %0) unnamed_addr #4 !prof !166 !PGOFuncName !173 {
  %2 = getelementptr inbounds %struct.function, ptr %0, i64 0, i32 13
  store i32 0, ptr %2, align 8, !tbaa !174
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_start_bb(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.gimple_stmt_iterator) align 8 %0, ptr noundef %1) unnamed_addr #5 !prof !175 !PGOFuncName !176 {
  %3 = tail call fastcc ptr @bb_seq(ptr noundef %1) #16
  %4 = tail call fastcc ptr @gimple_seq_first(ptr noundef %3) #16
  store ptr %4, ptr %0, align 8, !tbaa !177
  %5 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 1
  store ptr %3, ptr %5, align 8, !tbaa !179
  %6 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 2
  store ptr %1, ptr %6, align 8, !tbaa !180
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gsi_end_p(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #7 !prof !181 !PGOFuncName !182 {
  %2 = load ptr, ptr %0, align 8, !tbaa !177
  %3 = icmp eq ptr %2, null
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @gsi_stmt(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #8 !prof !183 !PGOFuncName !184 {
  %2 = load ptr, ptr %0, align 8, !tbaa !177
  %3 = load ptr, ptr %2, align 8, !tbaa !185
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @gimple_set_uid(ptr nocapture noundef writeonly %0, i32 noundef %1) unnamed_addr #4 !prof !187 !PGOFuncName !188 {
  %3 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 1
  store i32 %1, ptr %3, align 4, !tbaa !189
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc i32 @inc_gimple_stmt_max_uid(ptr nocapture noundef %0) unnamed_addr #9 !prof !187 !PGOFuncName !190 {
  %2 = getelementptr inbounds %struct.function, ptr %0, i64 0, i32 13
  %3 = load i32, ptr %2, align 8, !tbaa !174
  %4 = add nsw i32 %3, 1
  store i32 %4, ptr %2, align 8, !tbaa !174
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_next(ptr nocapture noundef %0) unnamed_addr #5 !prof !191 !PGOFuncName !192 {
  %2 = load ptr, ptr %0, align 8, !tbaa !177
  %3 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %2, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !193
  store ptr %4, ptr %0, align 8, !tbaa !177
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @renumber_gimple_stmt_uids_in_blocks(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 !prof !194 {
  %3 = alloca %struct.gimple_stmt_iterator, align 8
  %4 = alloca %struct.gimple_stmt_iterator, align 8
  %5 = load ptr, ptr @cfun, align 8, !tbaa !136
  tail call fastcc void @set_gimple_stmt_max_uid(ptr noundef %5) #16
  %6 = icmp sgt i32 %1, 0
  br i1 %6, label %7, label %33

7:                                                ; preds = %2
  %8 = zext nneg i32 %1 to i64
  br label %9

9:                                                ; preds = %7, %30
  %10 = phi i64 [ 0, %7 ], [ %31, %30 ]
  %11 = getelementptr inbounds ptr, ptr %0, i64 %10
  %12 = load ptr, ptr %11, align 8, !tbaa !136
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #15
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %3, ptr noundef %12) #17
  %13 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #16, !range !153
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %9, %15
  %16 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #16
  %17 = load ptr, ptr @cfun, align 8, !tbaa !136
  %18 = call fastcc i32 @inc_gimple_stmt_max_uid(ptr noundef %17) #16
  call fastcc void @gimple_set_uid(ptr noundef %16, i32 noundef %18) #16
  call fastcc void @gsi_next(ptr noundef nonnull %3) #16
  %19 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #16, !range !153
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %15, label %21, !llvm.loop !195

21:                                               ; preds = %15, %9
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #15
  call fastcc void @gsi_start_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %4, ptr noundef %12) #16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false), !tbaa.struct !196
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #15
  %22 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #16, !range !153
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %21, %24
  %25 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #16
  %26 = load ptr, ptr @cfun, align 8, !tbaa !136
  %27 = call fastcc i32 @inc_gimple_stmt_max_uid(ptr noundef %26) #16
  call fastcc void @gimple_set_uid(ptr noundef %25, i32 noundef %27) #16
  call fastcc void @gsi_next(ptr noundef nonnull %3) #16
  %28 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #16, !range !153
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %24, label %30, !llvm.loop !197

30:                                               ; preds = %24, %21
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #15
  %31 = add nuw nsw i64 %10, 1
  %32 = icmp eq i64 %31, %8
  br i1 %32, label %33, label %9, !llvm.loop !198

33:                                               ; preds = %30, %2
  ret void
}

; Function Attrs: optsize
declare void @gsi_start_phis(ptr dead_on_unwind writable sret(%struct.gimple_stmt_iterator) align 8, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @make_rename_temp(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !194 {
  %3 = tail call ptr @create_tmp_var(ptr noundef %0, ptr noundef %1) #17
  %4 = getelementptr inbounds %struct.tree_common, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !189
  %6 = load i64, ptr %5, align 8
  %7 = trunc i64 %6 to i32
  %8 = and i32 %7, 65535
  %9 = add nsw i32 %8, -13
  %10 = icmp ult i32 %9, 2
  br i1 %10, label %11, label %15

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.tree_decl_common, ptr %3, i64 0, i32 2
  %13 = load i64, ptr %12, align 8
  %14 = or i64 %13, 134217728
  store i64 %14, ptr %12, align 8
  br label %15

15:                                               ; preds = %2, %11
  %16 = load ptr, ptr @cfun, align 8, !tbaa !136
  %17 = tail call fastcc ptr @gimple_referenced_vars(ptr noundef %16) #16
  %18 = icmp eq ptr %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %15
  %20 = tail call zeroext i8 @add_referenced_var(ptr noundef nonnull %3) #16, !range !153
  tail call void @mark_sym_for_renaming(ptr noundef nonnull %3) #17
  br label %21

21:                                               ; preds = %19, %15
  ret ptr %3
}

; Function Attrs: optsize
declare ptr @create_tmp_var(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @gimple_referenced_vars(ptr nocapture noundef readonly %0) unnamed_addr #8 !prof !199 !PGOFuncName !200 {
  %2 = getelementptr inbounds %struct.function, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !201
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5, !prof !202

5:                                                ; preds = %1
  %6 = load ptr, ptr %3, align 8, !tbaa !203
  br label %7

7:                                                ; preds = %1, %5
  %8 = phi ptr [ %6, %5 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @add_referenced_var(ptr noundef %0) local_unnamed_addr #0 !prof !207 {
  tail call fastcc void @get_var_ann(ptr noundef %0) #16
  %2 = load i64, ptr %0, align 8
  %3 = and i64 %2, 65535
  %4 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %3
  %5 = load i32, ptr %4, align 4, !tbaa !208
  %6 = icmp eq i32 %5, 3
  br i1 %6, label %8, label %7, !prof !209

7:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 602, ptr noundef nonnull @.str.2) #17
  br label %8

8:                                                ; preds = %1, %7
  %9 = tail call zeroext i8 @referenced_var_check_and_insert(ptr noundef nonnull %0) #16, !range !153
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %22, label %11, !prof !210

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 5
  %13 = load ptr, ptr %12, align 8, !tbaa !189
  %14 = icmp eq ptr %13, null
  br i1 %14, label %22, label %15, !prof !211

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.tree_decl_minimal, ptr %0, i64 0, i32 4
  %17 = load ptr, ptr %16, align 8, !tbaa !189
  %18 = load ptr, ptr @current_function_decl, align 8, !tbaa !136
  %19 = icmp eq ptr %17, %18
  br i1 %19, label %20, label %22, !prof !212

20:                                               ; preds = %15
  %21 = tail call ptr @walk_tree_1(ptr noundef nonnull %12, ptr noundef nonnull @find_vars_r, ptr noundef null, ptr noundef null, ptr noundef null) #17
  br label %22

22:                                               ; preds = %8, %11, %15, %20
  %23 = phi i8 [ 1, %20 ], [ 1, %15 ], [ 1, %11 ], [ 0, %8 ]
  ret i8 %23
}

; Function Attrs: optsize
declare void @mark_sym_for_renaming(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @dump_referenced_vars(ptr noundef %0) local_unnamed_addr #0 !prof !194 {
  %2 = alloca %struct.referenced_var_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #15
  %3 = load ptr, ptr @current_function_decl, align 8, !tbaa !136
  %4 = tail call ptr @get_name(ptr noundef %3) #17
  %5 = load ptr, ptr @cfun, align 8, !tbaa !136
  %6 = tail call fastcc ptr @gimple_referenced_vars(ptr noundef %5) #16
  %7 = tail call i64 @htab_elements(ptr noundef %6) #17
  %8 = trunc i64 %7 to i32
  %9 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.3, ptr noundef %4, i32 noundef %8) #16
  %10 = call fastcc ptr @first_referenced_var(ptr noundef nonnull %2) #16
  %11 = call fastcc zeroext i8 @end_referenced_vars_p(ptr noundef nonnull %2) #16, !range !153
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %1, %13
  %14 = phi ptr [ %16, %13 ], [ %10, %1 ]
  %15 = tail call i64 @fwrite(ptr nonnull @.str.4, i64 10, i64 1, ptr %0)
  tail call void @dump_variable(ptr noundef %0, ptr noundef %14) #16
  %16 = call fastcc ptr @next_referenced_var(ptr noundef nonnull %2) #16
  %17 = call fastcc zeroext i8 @end_referenced_vars_p(ptr noundef nonnull %2) #16, !range !153
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %13, label %19, !llvm.loop !213

19:                                               ; preds = %13, %1
  %20 = tail call i32 @fputc(i32 10, ptr %0)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #15
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #10

; Function Attrs: optsize
declare ptr @get_name(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i64 @htab_elements(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @first_referenced_var(ptr nocapture noundef %0) unnamed_addr #0 !prof !194 !PGOFuncName !214 {
  %2 = load ptr, ptr @cfun, align 8, !tbaa !136
  %3 = tail call fastcc ptr @gimple_referenced_vars(ptr noundef %2) #16
  %4 = tail call fastcc ptr @first_htab_element(ptr noundef %0, ptr noundef %3) #16
  ret ptr %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @end_referenced_vars_p(ptr nocapture noundef readonly %0) unnamed_addr #7 !prof !194 !PGOFuncName !215 {
  %2 = tail call fastcc zeroext i8 @end_htab_p(ptr noundef %0) #16, !range !153
  ret i8 %2
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @dump_variable(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !194 {
  %3 = load i64, ptr %1, align 8
  %4 = and i64 %3, 65535
  %5 = icmp eq i64 %4, 141
  br i1 %5, label %6, label %18

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !189
  %9 = load i64, ptr %8, align 8
  %10 = trunc i64 %9 to i16
  switch i16 %10, label %12 [
    i16 10, label %11
    i16 12, label %11
  ]

11:                                               ; preds = %6, %6
  tail call void @dump_points_to_info_for(ptr noundef %0, ptr noundef nonnull %1) #17
  br label %12

12:                                               ; preds = %11, %6
  %13 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !189
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %12
  %17 = tail call i64 @fwrite(ptr nonnull @.str.6, i64 5, i64 1, ptr %0)
  br label %87

18:                                               ; preds = %2, %12
  %19 = phi ptr [ %14, %12 ], [ %1, %2 ]
  %20 = load i32, ptr @dump_flags, align 4, !tbaa !208
  tail call void @print_generic_expr(ptr noundef %0, ptr noundef nonnull %19, i32 noundef %20) #17
  %21 = tail call fastcc ptr @var_ann(ptr noundef nonnull %19) #16
  %22 = getelementptr inbounds %struct.tree_decl_minimal, ptr %19, i64 0, i32 2
  %23 = load i32, ptr %22, align 4, !tbaa !189
  %24 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.7, i32 noundef %23) #16
  %25 = tail call i64 @fwrite(ptr nonnull @.str.8, i64 2, i64 1, ptr %0)
  %26 = getelementptr inbounds %struct.tree_common, ptr %19, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !189
  %28 = load i32, ptr @dump_flags, align 4, !tbaa !208
  tail call void @print_generic_expr(ptr noundef %0, ptr noundef %27, i32 noundef %28) #17
  %29 = load i64, ptr %19, align 8
  %30 = and i64 %29, 262144
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %34, label %32

32:                                               ; preds = %18
  %33 = tail call i64 @fwrite(ptr nonnull @.str.9, i64 16, i64 1, ptr %0)
  br label %34

34:                                               ; preds = %32, %18
  %35 = tail call fastcc zeroext i8 @is_global_var(ptr noundef nonnull %19) #16, !range !153
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %39, label %37

37:                                               ; preds = %34
  %38 = tail call i64 @fwrite(ptr nonnull @.str.10, i64 11, i64 1, ptr %0)
  br label %39

39:                                               ; preds = %37, %34
  %40 = load i64, ptr %19, align 8
  %41 = and i64 %40, 524288
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %45, label %43

43:                                               ; preds = %39
  %44 = tail call i64 @fwrite(ptr nonnull @.str.11, i64 13, i64 1, ptr %0)
  br label %45

45:                                               ; preds = %43, %39
  %46 = tail call fastcc zeroext i8 @is_call_clobbered(ptr noundef nonnull %19) #16, !range !153
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %50, label %48

48:                                               ; preds = %45
  %49 = tail call i64 @fwrite(ptr nonnull @.str.12, i64 16, i64 1, ptr %0)
  br label %55

50:                                               ; preds = %45
  %51 = tail call fastcc zeroext i8 @is_call_used(ptr noundef nonnull %19) #16, !range !153
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %55, label %53

53:                                               ; preds = %50
  %54 = tail call i64 @fwrite(ptr nonnull @.str.13, i64 11, i64 1, ptr %0)
  br label %55

55:                                               ; preds = %50, %53, %48
  %56 = icmp eq ptr %21, null
  br i1 %56, label %66, label %57

57:                                               ; preds = %55
  %58 = load i8, ptr %21, align 8
  %59 = and i8 %58, 96
  switch i8 %59, label %66 [
    i8 32, label %60
    i8 64, label %62
    i8 96, label %64
  ]

60:                                               ; preds = %57
  %61 = tail call i64 @fwrite(ptr nonnull @.str.14, i64 50, i64 1, ptr %0)
  br label %66

62:                                               ; preds = %57
  %63 = tail call i64 @fwrite(ptr nonnull @.str.15, i64 73, i64 1, ptr %0)
  br label %66

64:                                               ; preds = %57
  %65 = tail call i64 @fwrite(ptr nonnull @.str.16, i64 54, i64 1, ptr %0)
  br label %66

66:                                               ; preds = %57, %55, %62, %64, %60
  %67 = load ptr, ptr @cfun, align 8, !tbaa !136
  %68 = icmp eq ptr %67, null
  br i1 %68, label %77, label %69

69:                                               ; preds = %66
  %70 = tail call ptr @gimple_default_def(ptr noundef nonnull %67, ptr noundef nonnull %19) #16
  %71 = icmp eq ptr %70, null
  br i1 %71, label %77, label %72

72:                                               ; preds = %69
  %73 = tail call i64 @fwrite(ptr nonnull @.str.17, i64 15, i64 1, ptr %0)
  %74 = load ptr, ptr @cfun, align 8, !tbaa !136
  %75 = tail call ptr @gimple_default_def(ptr noundef %74, ptr noundef nonnull %19) #16
  %76 = load i32, ptr @dump_flags, align 4, !tbaa !208
  tail call void @print_generic_expr(ptr noundef %0, ptr noundef %75, i32 noundef %76) #17
  br label %77

77:                                               ; preds = %72, %69, %66
  %78 = getelementptr inbounds %struct.tree_decl_common, ptr %19, i64 0, i32 5
  %79 = load ptr, ptr %78, align 8, !tbaa !189
  %80 = icmp eq ptr %79, null
  br i1 %80, label %85, label %81

81:                                               ; preds = %77
  %82 = tail call i64 @fwrite(ptr nonnull @.str.18, i64 11, i64 1, ptr %0)
  %83 = load ptr, ptr %78, align 8, !tbaa !189
  %84 = load i32, ptr @dump_flags, align 4, !tbaa !208
  tail call void @print_generic_expr(ptr noundef %0, ptr noundef %83, i32 noundef %84) #17
  br label %85

85:                                               ; preds = %81, %77
  %86 = tail call i32 @fputc(i32 10, ptr %0)
  br label %87

87:                                               ; preds = %85, %16
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @next_referenced_var(ptr nocapture noundef %0) unnamed_addr #11 !prof !194 !PGOFuncName !216 {
  %2 = tail call fastcc ptr @next_htab_element(ptr noundef %0) #16
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @debug_referenced_vars() local_unnamed_addr #0 !prof !194 {
  %1 = load ptr, ptr @stderr, align 8, !tbaa !136
  tail call void @dump_referenced_vars(ptr noundef %1) #16
  ret void
}

; Function Attrs: optsize
declare void @dump_points_to_info_for(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @print_generic_expr(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @var_ann(ptr nocapture noundef readonly %0) unnamed_addr #8 !prof !217 !PGOFuncName !218 {
  %2 = load i64, ptr %0, align 8
  %3 = trunc i64 %2 to i16
  switch i16 %3, label %8 [
    i16 32, label %4
    i16 34, label %6
  ], !prof !219

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.tree_var_decl, ptr %0, i64 0, i32 1
  br label %12

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.tree_parm_decl, ptr %0, i64 0, i32 2
  br label %12

8:                                                ; preds = %1
  %9 = and i64 %2, 65535
  %10 = icmp eq i64 %9, 36
  %11 = getelementptr inbounds %struct.tree_result_decl, ptr %0, i64 0, i32 1
  br i1 %10, label %12, label %15

12:                                               ; preds = %8, %4, %6
  %13 = phi ptr [ %7, %6 ], [ %5, %4 ], [ %11, %8 ]
  %14 = load ptr, ptr %13, align 8, !tbaa !136
  br label %15

15:                                               ; preds = %8, %12
  %16 = phi ptr [ %14, %12 ], [ null, %8 ]
  ret ptr %16
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_global_var(ptr nocapture noundef readonly %0) unnamed_addr #7 !prof !220 !PGOFuncName !221 {
  %2 = load i64, ptr %0, align 8
  %3 = and i64 %2, 67108864
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %5, label %11, !prof !222

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 2
  %7 = load i64, ptr %6, align 8
  %8 = lshr i64 %7, 25
  %9 = trunc i64 %8 to i8
  %10 = and i8 %9, 1
  br label %11

11:                                               ; preds = %5, %1
  %12 = phi i8 [ 1, %1 ], [ %10, %5 ]
  ret i8 %12
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @is_call_clobbered(ptr noundef %0) unnamed_addr #0 !prof !194 !PGOFuncName !223 {
  %2 = tail call fastcc zeroext i8 @is_global_var(ptr noundef %0) #16, !range !153
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %15

4:                                                ; preds = %1
  %5 = tail call fastcc zeroext i8 @may_be_aliased(ptr noundef %0) #16, !range !153
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %15, label %7

7:                                                ; preds = %4
  %8 = load ptr, ptr @cfun, align 8, !tbaa !136
  %9 = getelementptr inbounds %struct.function, ptr %8, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !201
  %11 = getelementptr inbounds %struct.gimple_df, ptr %10, i64 0, i32 4
  %12 = tail call zeroext i8 @pt_solution_includes(ptr noundef nonnull %11, ptr noundef %0) #17
  %13 = icmp ne i8 %12, 0
  %14 = zext i1 %13 to i8
  br label %15

15:                                               ; preds = %4, %7, %1
  %16 = phi i8 [ 1, %1 ], [ 0, %4 ], [ %14, %7 ]
  ret i8 %16
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @is_call_used(ptr noundef %0) unnamed_addr #0 !prof !194 !PGOFuncName !224 {
  %2 = tail call fastcc zeroext i8 @is_call_clobbered(ptr noundef %0) #16, !range !153
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %15

4:                                                ; preds = %1
  %5 = tail call fastcc zeroext i8 @may_be_aliased(ptr noundef %0) #16, !range !153
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %15, label %7

7:                                                ; preds = %4
  %8 = load ptr, ptr @cfun, align 8, !tbaa !136
  %9 = getelementptr inbounds %struct.function, ptr %8, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !201
  %11 = getelementptr inbounds %struct.gimple_df, ptr %10, i64 0, i32 5
  %12 = tail call zeroext i8 @pt_solution_includes(ptr noundef nonnull %11, ptr noundef %0) #17
  %13 = icmp ne i8 %12, 0
  %14 = zext i1 %13 to i8
  br label %15

15:                                               ; preds = %4, %7, %1
  %16 = phi i8 [ 1, %1 ], [ 0, %4 ], [ %14, %7 ]
  ret i8 %16
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @gimple_default_def(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 !prof !225 {
  %3 = alloca %struct.tree_decl_minimal, align 8
  %4 = alloca %struct.tree_ssa_name, align 8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %3) #15
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %4) #15
  %5 = load i64, ptr %1, align 8
  %6 = trunc i64 %5 to i16
  switch i16 %6, label %12 [
    i16 32, label %13
    i16 34, label %13
    i16 36, label %13
    i16 141, label %7
  ], !prof !226

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !189
  %10 = load i64, ptr %9, align 8
  %11 = trunc i64 %10 to i16
  switch i16 %11, label %12 [
    i16 32, label %13
    i16 34, label %13
    i16 36, label %13
  ]

12:                                               ; preds = %7, %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 557, ptr noundef nonnull @.str.2) #17
  br label %13

13:                                               ; preds = %7, %7, %7, %2, %2, %2, %12
  %14 = getelementptr inbounds %struct.tree_ssa_name, ptr %4, i64 0, i32 1
  store ptr %3, ptr %14, align 8, !tbaa !227
  %15 = getelementptr inbounds %struct.tree_decl_minimal, ptr %1, i64 0, i32 2
  %16 = load i32, ptr %15, align 4, !tbaa !189
  %17 = getelementptr inbounds %struct.tree_decl_minimal, ptr %3, i64 0, i32 2
  store i32 %16, ptr %17, align 4, !tbaa !232
  %18 = getelementptr inbounds %struct.function, ptr %0, i64 0, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !201
  %20 = getelementptr inbounds %struct.gimple_df, ptr %19, i64 0, i32 8
  %21 = load ptr, ptr %20, align 8, !tbaa !234
  %22 = call ptr @htab_find_with_hash(ptr noundef %21, ptr noundef nonnull %4, i32 noundef %16) #17
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %4) #15
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %3) #15
  ret ptr %22
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @debug_variable(ptr noundef %0) local_unnamed_addr #0 !prof !194 {
  %2 = load ptr, ptr @stderr, align 8, !tbaa !136
  tail call void @dump_variable(ptr noundef %2, ptr noundef %0) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @dump_dfa_stats(ptr nocapture noundef %0) local_unnamed_addr #0 !prof !194 {
  %2 = alloca %struct.dfa_stats_d, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %2) #15
  %3 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 22), align 8, !tbaa !235
  %4 = load ptr, ptr @current_function_decl, align 8, !tbaa !136
  %5 = tail call ptr %3(ptr noundef %4, i32 noundef 2) #17
  call fastcc void @collect_dfa_stats(ptr noundef nonnull %2) #16
  %6 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.22, ptr noundef %5) #16
  %7 = call i64 @fwrite(ptr nonnull @.str.23, i64 58, i64 1, ptr %0)
  %8 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.26) #16
  %9 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.28) #16
  %10 = call i64 @fwrite(ptr nonnull @.str.23, i64 58, i64 1, ptr %0)
  %11 = load ptr, ptr @cfun, align 8, !tbaa !136
  %12 = call fastcc ptr @gimple_referenced_vars(ptr noundef %11) #16
  %13 = call i64 @htab_elements(ptr noundef %12) #17
  %14 = shl i64 %13, 3
  %15 = load ptr, ptr @cfun, align 8, !tbaa !136
  %16 = call fastcc ptr @gimple_referenced_vars(ptr noundef %15) #16
  %17 = call i64 @htab_elements(ptr noundef %16) #17
  %18 = icmp ult i64 %14, 10240
  %19 = icmp ult i64 %14, 10485760
  %20 = select i1 %19, i64 10, i64 20
  %21 = select i1 %18, i64 0, i64 %20
  %22 = lshr i64 %14, %21
  %23 = select i1 %19, i32 107, i32 77
  %24 = select i1 %18, i32 98, i32 %23
  %25 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.29, i64 noundef %17, i64 noundef %22, i32 noundef %24) #16
  %26 = load i64, ptr %2, align 8, !tbaa !243
  %27 = shl i64 %26, 4
  %28 = add i64 %27, %14
  %29 = icmp ult i64 %27, 10240
  %30 = icmp ult i64 %27, 10485760
  %31 = select i1 %30, i64 10, i64 20
  %32 = select i1 %29, i64 0, i64 %31
  %33 = lshr i64 %27, %32
  %34 = select i1 %30, i32 107, i32 77
  %35 = select i1 %29, i32 98, i32 %34
  %36 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.30, i64 noundef %26, i64 noundef %33, i32 noundef %35) #16
  %37 = getelementptr inbounds %struct.dfa_stats_d, ptr %2, i64 0, i32 2
  %38 = load i64, ptr %37, align 8, !tbaa !245
  %39 = shl i64 %38, 3
  %40 = add i64 %28, %39
  %41 = icmp ult i64 %39, 10240
  %42 = icmp ult i64 %39, 10485760
  %43 = select i1 %42, i64 10, i64 20
  %44 = select i1 %41, i64 0, i64 %43
  %45 = lshr i64 %39, %44
  %46 = select i1 %42, i32 107, i32 77
  %47 = select i1 %41, i32 98, i32 %46
  %48 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.31, i64 noundef %38, i64 noundef %45, i32 noundef %47) #16
  %49 = getelementptr inbounds %struct.dfa_stats_d, ptr %2, i64 0, i32 1
  %50 = load i64, ptr %49, align 8, !tbaa !246
  %51 = shl i64 %50, 3
  %52 = add i64 %40, %51
  %53 = icmp ult i64 %51, 10240
  %54 = icmp ult i64 %51, 10485760
  %55 = select i1 %54, i64 10, i64 20
  %56 = select i1 %53, i64 0, i64 %55
  %57 = lshr i64 %51, %56
  %58 = select i1 %54, i32 107, i32 77
  %59 = select i1 %53, i32 98, i32 %58
  %60 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.32, i64 noundef %50, i64 noundef %57, i32 noundef %59) #16
  %61 = getelementptr inbounds %struct.dfa_stats_d, ptr %2, i64 0, i32 7
  %62 = load i64, ptr %61, align 8, !tbaa !247
  %63 = shl i64 %62, 3
  %64 = add i64 %52, %63
  %65 = icmp ult i64 %63, 10240
  %66 = icmp ult i64 %63, 10485760
  %67 = select i1 %66, i64 10, i64 20
  %68 = select i1 %65, i64 0, i64 %67
  %69 = lshr i64 %63, %68
  %70 = select i1 %66, i32 107, i32 77
  %71 = select i1 %65, i32 98, i32 %70
  %72 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.33, i64 noundef %62, i64 noundef %69, i32 noundef %71) #16
  %73 = getelementptr inbounds %struct.dfa_stats_d, ptr %2, i64 0, i32 6
  %74 = load i64, ptr %73, align 8, !tbaa !248
  %75 = shl i64 %74, 3
  %76 = add i64 %64, %75
  %77 = icmp ult i64 %75, 10240
  %78 = icmp ult i64 %75, 10485760
  %79 = select i1 %78, i64 10, i64 20
  %80 = select i1 %77, i64 0, i64 %79
  %81 = lshr i64 %75, %80
  %82 = select i1 %78, i32 107, i32 77
  %83 = select i1 %77, i32 98, i32 %82
  %84 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.34, i64 noundef %74, i64 noundef %81, i32 noundef %83) #16
  %85 = getelementptr inbounds %struct.dfa_stats_d, ptr %2, i64 0, i32 3
  %86 = load i64, ptr %85, align 8, !tbaa !249
  %87 = mul i64 %86, 96
  %88 = add i64 %76, %87
  %89 = icmp ult i64 %87, 10240
  %90 = icmp ult i64 %87, 10485760
  %91 = select i1 %90, i64 10, i64 20
  %92 = select i1 %89, i64 0, i64 %91
  %93 = lshr i64 %87, %92
  %94 = select i1 %90, i32 107, i32 77
  %95 = select i1 %89, i32 98, i32 %94
  %96 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.35, i64 noundef %86, i64 noundef %93, i32 noundef %95) #16
  %97 = getelementptr inbounds %struct.dfa_stats_d, ptr %2, i64 0, i32 4
  %98 = load i64, ptr %97, align 8, !tbaa !250
  %99 = mul i64 %98, 48
  %100 = add i64 %88, %99
  %101 = icmp ult i64 %99, 10240
  %102 = icmp ult i64 %99, 10485760
  %103 = select i1 %102, i64 10, i64 20
  %104 = select i1 %101, i64 0, i64 %103
  %105 = lshr i64 %99, %104
  %106 = select i1 %102, i32 107, i32 77
  %107 = select i1 %101, i32 98, i32 %106
  %108 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.36, i64 noundef %98, i64 noundef %105, i32 noundef %107) #16
  %109 = call i64 @fwrite(ptr nonnull @.str.23, i64 58, i64 1, ptr %0)
  %110 = icmp ult i64 %100, 10240
  %111 = icmp ult i64 %100, 10485760
  %112 = select i1 %111, i64 10, i64 20
  %113 = select i1 %110, i64 0, i64 %112
  %114 = lshr i64 %100, %113
  %115 = select i1 %111, i32 107, i32 77
  %116 = select i1 %110, i32 98, i32 %115
  %117 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.37, i64 noundef %114, i32 noundef %116) #16
  %118 = call i64 @fwrite(ptr nonnull @.str.23, i64 58, i64 1, ptr %0)
  %119 = call i32 @fputc(i32 10, ptr %0)
  %120 = load i64, ptr %85, align 8, !tbaa !249
  %121 = icmp eq i64 %120, 0
  br i1 %121, label %131, label %122

122:                                              ; preds = %1
  %123 = load i64, ptr %97, align 8, !tbaa !250
  %124 = sitofp i64 %123 to float
  %125 = sitofp i64 %120 to float
  %126 = fdiv float %124, %125
  %127 = fpext float %126 to double
  %128 = getelementptr inbounds %struct.dfa_stats_d, ptr %2, i64 0, i32 5
  %129 = load i64, ptr %128, align 8, !tbaa !251
  %130 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.38, double noundef %127, i64 noundef %129) #16
  br label %131

131:                                              ; preds = %122, %1
  %132 = call i32 @fputc(i32 10, ptr %0)
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %2) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @collect_dfa_stats(ptr noundef %0) unnamed_addr #0 !prof !194 !PGOFuncName !252 {
  %2 = alloca %struct.referenced_var_iterator, align 8
  %3 = alloca %struct.gimple_stmt_iterator, align 8
  %4 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #15
  %5 = icmp eq ptr %0, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 420, ptr noundef nonnull @.str.2) #17
  br label %7

7:                                                ; preds = %1, %6
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %0, i8 0, i64 64, i1 false)
  %8 = call fastcc ptr @first_referenced_var(ptr noundef nonnull %2) #16
  %9 = call fastcc zeroext i8 @end_referenced_vars_p(ptr noundef nonnull %2) #16, !range !153
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %22

11:                                               ; preds = %7, %18
  %12 = phi ptr [ %19, %18 ], [ %8, %7 ]
  %13 = tail call fastcc ptr @var_ann(ptr noundef %12) #16
  %14 = icmp eq ptr %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %11
  %16 = load i64, ptr %0, align 8, !tbaa !243
  %17 = add nsw i64 %16, 1
  store i64 %17, ptr %0, align 8, !tbaa !243
  br label %18

18:                                               ; preds = %11, %15
  %19 = call fastcc ptr @next_referenced_var(ptr noundef nonnull %2) #16
  %20 = call fastcc zeroext i8 @end_referenced_vars_p(ptr noundef nonnull %2) #16, !range !153
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %11, label %22, !llvm.loop !253

22:                                               ; preds = %18, %7
  %23 = load ptr, ptr @cfun, align 8, !tbaa !136
  %24 = getelementptr inbounds %struct.function, ptr %23, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !140
  %26 = load ptr, ptr %25, align 8, !tbaa !143
  %27 = getelementptr inbounds %struct.basic_block_def, ptr %26, i64 0, i32 6
  %28 = load ptr, ptr %27, align 8, !tbaa !145
  %29 = getelementptr inbounds %struct.control_flow_graph, ptr %25, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !148
  %31 = icmp eq ptr %28, %30
  br i1 %31, label %99, label %32

32:                                               ; preds = %22
  %33 = getelementptr inbounds %struct.dfa_stats_d, ptr %0, i64 0, i32 3
  %34 = getelementptr inbounds %struct.dfa_stats_d, ptr %0, i64 0, i32 4
  %35 = getelementptr inbounds %struct.dfa_stats_d, ptr %0, i64 0, i32 5
  %36 = getelementptr inbounds %struct.dfa_stats_d, ptr %0, i64 0, i32 1
  %37 = getelementptr inbounds %struct.dfa_stats_d, ptr %0, i64 0, i32 2
  %38 = getelementptr inbounds %struct.dfa_stats_d, ptr %0, i64 0, i32 6
  %39 = getelementptr inbounds %struct.dfa_stats_d, ptr %0, i64 0, i32 7
  br label %40

40:                                               ; preds = %32, %90
  %41 = phi ptr [ %28, %32 ], [ %92, %90 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #15
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %3, ptr noundef %41) #17
  %42 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #16, !range !153
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %44, label %65

44:                                               ; preds = %40
  %45 = load i64, ptr %33, align 8, !tbaa !249
  %46 = load i64, ptr %34, align 8, !tbaa !250
  %47 = load i64, ptr %35, align 8, !tbaa !251
  br label %48

48:                                               ; preds = %44, %61
  %49 = phi i64 [ %47, %44 ], [ %62, %61 ]
  %50 = phi i64 [ %46, %44 ], [ %56, %61 ]
  %51 = phi i64 [ %45, %44 ], [ %53, %61 ]
  %52 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #16
  %53 = add nsw i64 %51, 1
  store i64 %53, ptr %33, align 8, !tbaa !249
  %54 = call fastcc i32 @gimple_phi_num_args(ptr noundef %52) #16
  %55 = zext i32 %54 to i64
  %56 = add nsw i64 %50, %55
  store i64 %56, ptr %34, align 8, !tbaa !250
  %57 = call fastcc i32 @gimple_phi_num_args(ptr noundef %52) #16
  %58 = zext i32 %57 to i64
  %59 = icmp ult i64 %49, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %48
  store i64 %58, ptr %35, align 8, !tbaa !251
  br label %61

61:                                               ; preds = %60, %48
  %62 = phi i64 [ %58, %60 ], [ %49, %48 ]
  call fastcc void @gsi_next(ptr noundef nonnull %3) #16
  %63 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #16, !range !153
  %64 = icmp eq i8 %63, 0
  br i1 %64, label %48, label %65, !llvm.loop !254

65:                                               ; preds = %61, %40
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #15
  call fastcc void @gsi_start_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %4, ptr noundef %41) #16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false), !tbaa.struct !196
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #15
  %66 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #16, !range !153
  %67 = icmp eq i8 %66, 0
  br i1 %67, label %68, label %90

68:                                               ; preds = %65, %68
  %69 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #16
  %70 = call fastcc i32 @num_ssa_operands(ptr noundef %69, i32 noundef 2) #16
  %71 = sext i32 %70 to i64
  %72 = load i64, ptr %36, align 8, !tbaa !246
  %73 = add nsw i64 %72, %71
  store i64 %73, ptr %36, align 8, !tbaa !246
  %74 = call fastcc i32 @num_ssa_operands(ptr noundef %69, i32 noundef 1) #16
  %75 = sext i32 %74 to i64
  %76 = load i64, ptr %37, align 8, !tbaa !245
  %77 = add nsw i64 %76, %75
  store i64 %77, ptr %37, align 8, !tbaa !245
  %78 = call fastcc ptr @gimple_vdef(ptr noundef %69) #16
  %79 = icmp ne ptr %78, null
  %80 = zext i1 %79 to i64
  %81 = load i64, ptr %38, align 8, !tbaa !248
  %82 = add nsw i64 %81, %80
  store i64 %82, ptr %38, align 8, !tbaa !248
  %83 = call fastcc ptr @gimple_vuse(ptr noundef %69) #16
  %84 = icmp ne ptr %83, null
  %85 = zext i1 %84 to i64
  %86 = load i64, ptr %39, align 8, !tbaa !247
  %87 = add nsw i64 %86, %85
  store i64 %87, ptr %39, align 8, !tbaa !247
  call fastcc void @gsi_next(ptr noundef nonnull %3) #16
  %88 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #16, !range !153
  %89 = icmp eq i8 %88, 0
  br i1 %89, label %68, label %90, !llvm.loop !255

90:                                               ; preds = %68, %65
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #15
  %91 = getelementptr inbounds %struct.basic_block_def, ptr %41, i64 0, i32 6
  %92 = load ptr, ptr %91, align 8, !tbaa !145
  %93 = load ptr, ptr @cfun, align 8, !tbaa !136
  %94 = getelementptr inbounds %struct.function, ptr %93, i64 0, i32 1
  %95 = load ptr, ptr %94, align 8, !tbaa !140
  %96 = getelementptr inbounds %struct.control_flow_graph, ptr %95, i64 0, i32 1
  %97 = load ptr, ptr %96, align 8, !tbaa !148
  %98 = icmp eq ptr %92, %97
  br i1 %98, label %99, label %40, !llvm.loop !256

99:                                               ; preds = %90, %22
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @debug_dfa_stats() local_unnamed_addr #0 !prof !194 {
  %1 = load ptr, ptr @stderr, align 8, !tbaa !136
  tail call void @dump_dfa_stats(ptr noundef %1) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @find_referenced_vars_in(ptr noundef %0) local_unnamed_addr #0 !prof !257 {
  %2 = alloca ptr, align 8
  %3 = tail call fastcc i32 @gimple_code(ptr noundef %0) #16, !range !258
  %4 = icmp eq i32 %3, 16
  br i1 %4, label %17, label %5, !prof !259

5:                                                ; preds = %1
  %6 = tail call fastcc i32 @gimple_num_ops(ptr noundef %0) #16
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %30, label %8, !prof !260

8:                                                ; preds = %5, %8
  %9 = phi i64 [ %13, %8 ], [ 0, %5 ]
  %10 = trunc i64 %9 to i32
  %11 = tail call fastcc ptr @gimple_op_ptr(ptr noundef %0, i32 noundef %10) #16
  %12 = tail call ptr @walk_tree_1(ptr noundef %11, ptr noundef nonnull @find_vars_r, ptr noundef null, ptr noundef null, ptr noundef null) #17
  %13 = add nuw nsw i64 %9, 1
  %14 = tail call fastcc i32 @gimple_num_ops(ptr noundef %0) #16
  %15 = zext i32 %14 to i64
  %16 = icmp ult i64 %13, %15
  br i1 %16, label %8, label %30, !prof !261, !llvm.loop !262

17:                                               ; preds = %1
  %18 = tail call fastcc ptr @gimple_phi_result_ptr(ptr noundef %0) #16
  %19 = tail call ptr @walk_tree_1(ptr noundef nonnull %18, ptr noundef nonnull @find_vars_r, ptr noundef null, ptr noundef null, ptr noundef null) #17
  %20 = tail call fastcc i32 @gimple_phi_num_args(ptr noundef %0) #16
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %30, label %22

22:                                               ; preds = %17, %22
  %23 = phi i64 [ %26, %22 ], [ 0, %17 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #15
  %24 = call fastcc ptr @gimple_phi_arg_def(ptr noundef %0, i64 noundef %23) #16
  store ptr %24, ptr %2, align 8, !tbaa !136
  %25 = call ptr @walk_tree_1(ptr noundef nonnull %2, ptr noundef nonnull @find_vars_r, ptr noundef null, ptr noundef null, ptr noundef null) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #15
  %26 = add nuw nsw i64 %23, 1
  %27 = call fastcc i32 @gimple_phi_num_args(ptr noundef %0) #16
  %28 = zext i32 %27 to i64
  %29 = icmp ult i64 %26, %28
  br i1 %29, label %22, label %30, !llvm.loop !263

30:                                               ; preds = %8, %22, %5, %17
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_code(ptr nocapture noundef readonly %0) unnamed_addr #7 !prof !264 !PGOFuncName !265 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 255
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_num_ops(ptr nocapture noundef readonly %0) unnamed_addr #7 !prof !266 !PGOFuncName !267 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 4, !tbaa !189
  ret i32 %3
}

; Function Attrs: optsize
declare ptr @walk_tree_1(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_op_ptr(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !prof !268 !PGOFuncName !269 {
  %3 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #16, !range !153
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %9, label %5, !prof !270

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @gimple_ops(ptr noundef %0) #16
  %7 = zext i32 %1 to i64
  %8 = getelementptr inbounds ptr, ptr %6, i64 %7
  br label %9

9:                                                ; preds = %2, %5
  %10 = phi ptr [ %8, %5 ], [ null, %2 ]
  ret ptr %10
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noalias noundef ptr @find_vars_r(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture readnone %2) #0 !prof !271 !PGOFuncName !272 {
  %4 = load ptr, ptr %0, align 8, !tbaa !136
  %5 = load i64, ptr %4, align 8
  %6 = trunc i64 %5 to i16
  switch i16 %6, label %13 [
    i16 141, label %7
    i16 32, label %11
    i16 34, label %11
    i16 36, label %11
  ], !prof !273

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.tree_ssa_name, ptr %4, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !189
  %10 = tail call zeroext i8 @add_referenced_var(ptr noundef %9) #16, !range !153
  br label %20

11:                                               ; preds = %3, %3, %3
  %12 = tail call zeroext i8 @add_referenced_var(ptr noundef nonnull %4) #16, !range !153
  br label %20

13:                                               ; preds = %3
  %14 = and i64 %5, 65535
  %15 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %14
  %16 = load i32, ptr %15, align 4, !tbaa !208
  %17 = add i32 %16, -1
  %18 = icmp ult i32 %17, 3
  br i1 %18, label %19, label %20, !prof !274

19:                                               ; preds = %13
  store i32 0, ptr %1, align 4, !tbaa !208
  br label %20

20:                                               ; preds = %13, %11, %19, %7
  ret ptr null
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc nonnull ptr @gimple_phi_result_ptr(ptr noundef readnone %0) unnamed_addr #12 !prof !194 !PGOFuncName !275 {
  %2 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 3
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_phi_num_args(ptr nocapture noundef readonly %0) unnamed_addr #7 !prof !194 !PGOFuncName !276 {
  %2 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !189
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_phi_arg_def(ptr noundef %0, i64 noundef %1) unnamed_addr #0 !prof !194 !PGOFuncName !277 {
  %3 = trunc i64 %1 to i32
  %4 = tail call fastcc ptr @gimple_phi_arg(ptr noundef %0, i32 noundef %3) #16
  %5 = tail call fastcc ptr @get_use_from_ptr(ptr noundef nonnull %4) #16
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @referenced_var_lookup(i32 noundef %0) local_unnamed_addr #0 !prof !278 {
  %2 = alloca %struct.tree_decl_minimal, align 8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %2) #15
  %3 = getelementptr inbounds %struct.tree_decl_minimal, ptr %2, i64 0, i32 2
  store i32 %0, ptr %3, align 4, !tbaa !232
  %4 = load ptr, ptr @cfun, align 8, !tbaa !136
  %5 = tail call fastcc ptr @gimple_referenced_vars(ptr noundef %4) #16
  %6 = call ptr @htab_find_with_hash(ptr noundef %5, ptr noundef nonnull %2, i32 noundef %0) #17
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %11, !prof !279

8:                                                ; preds = %1
  %9 = icmp eq i32 %0, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %8
  call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 519, ptr noundef nonnull @.str.2) #17
  br label %11

11:                                               ; preds = %1, %8, %10
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %2) #15
  ret ptr %6
}

; Function Attrs: optsize
declare ptr @htab_find_with_hash(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @referenced_var_check_and_insert(ptr noundef %0) local_unnamed_addr #0 !prof !207 {
  %2 = alloca %struct.tree_decl_minimal, align 8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %2) #15
  %3 = getelementptr inbounds %struct.tree_decl_minimal, ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !189
  %5 = getelementptr inbounds %struct.tree_decl_minimal, ptr %2, i64 0, i32 2
  store i32 %4, ptr %5, align 4, !tbaa !232
  %6 = load ptr, ptr @cfun, align 8, !tbaa !136
  %7 = tail call fastcc ptr @gimple_referenced_vars(ptr noundef %6) #16
  %8 = call ptr @htab_find_with_hash(ptr noundef %7, ptr noundef nonnull %2, i32 noundef %4) #17
  %9 = icmp eq ptr %8, null
  br i1 %9, label %13, label %10, !prof !280

10:                                               ; preds = %1
  %11 = icmp eq ptr %8, %0
  br i1 %11, label %17, label %12, !prof !281

12:                                               ; preds = %10
  call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 539, ptr noundef nonnull @.str.2) #17
  br label %17

13:                                               ; preds = %1
  %14 = load ptr, ptr @cfun, align 8, !tbaa !136
  %15 = call fastcc ptr @gimple_referenced_vars(ptr noundef %14) #16
  %16 = call ptr @htab_find_slot_with_hash(ptr noundef %15, ptr noundef nonnull %2, i32 noundef %4, i32 noundef 1) #17
  store ptr %0, ptr %16, align 8, !tbaa !136
  br label %17

17:                                               ; preds = %12, %10, %13
  %18 = phi i8 [ 1, %13 ], [ 0, %10 ], [ 0, %12 ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %2) #15
  ret i8 %18
}

; Function Attrs: optsize
declare ptr @htab_find_slot_with_hash(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @set_default_def(ptr noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 !prof !282 {
  %3 = alloca %struct.tree_decl_minimal, align 8
  %4 = alloca %struct.tree_ssa_name, align 8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %3) #15
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %4) #15
  %5 = load i64, ptr %0, align 8
  %6 = trunc i64 %5 to i16
  switch i16 %6, label %12 [
    i16 32, label %13
    i16 34, label %13
    i16 36, label %13
    i16 141, label %7
  ], !prof !283

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !189
  %10 = load i64, ptr %9, align 8
  %11 = trunc i64 %10 to i16
  switch i16 %11, label %12 [
    i16 32, label %13
    i16 34, label %13
    i16 36, label %13
  ]

12:                                               ; preds = %7, %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 572, ptr noundef nonnull @.str.2) #17
  br label %13

13:                                               ; preds = %7, %7, %7, %2, %2, %2, %12
  %14 = getelementptr inbounds %struct.tree_ssa_name, ptr %4, i64 0, i32 1
  store ptr %3, ptr %14, align 8, !tbaa !227
  %15 = getelementptr inbounds %struct.tree_decl_minimal, ptr %0, i64 0, i32 2
  %16 = load i32, ptr %15, align 4, !tbaa !189
  %17 = getelementptr inbounds %struct.tree_decl_minimal, ptr %3, i64 0, i32 2
  store i32 %16, ptr %17, align 4, !tbaa !232
  %18 = icmp eq ptr %1, null
  br i1 %18, label %19, label %37, !prof !284

19:                                               ; preds = %13
  %20 = load ptr, ptr @cfun, align 8, !tbaa !136
  %21 = getelementptr inbounds %struct.function, ptr %20, i64 0, i32 3
  %22 = load ptr, ptr %21, align 8, !tbaa !201
  %23 = getelementptr inbounds %struct.gimple_df, ptr %22, i64 0, i32 8
  %24 = load ptr, ptr %23, align 8, !tbaa !234
  %25 = call ptr @htab_find_slot_with_hash(ptr noundef %24, ptr noundef nonnull %4, i32 noundef %16, i32 noundef 1) #17
  %26 = load ptr, ptr %25, align 8, !tbaa !136
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %30

28:                                               ; preds = %19
  call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 579, ptr noundef nonnull @.str.2) #17
  %29 = load ptr, ptr %25, align 8, !tbaa !136
  br label %30

30:                                               ; preds = %19, %28
  %31 = phi ptr [ %26, %19 ], [ %29, %28 ]
  %32 = load ptr, ptr @cfun, align 8, !tbaa !136
  %33 = getelementptr inbounds %struct.function, ptr %32, i64 0, i32 3
  %34 = load ptr, ptr %33, align 8, !tbaa !201
  %35 = getelementptr inbounds %struct.gimple_df, ptr %34, i64 0, i32 8
  %36 = load ptr, ptr %35, align 8, !tbaa !234
  call void @htab_remove_elt(ptr noundef %36, ptr noundef %31) #17
  br label %63

37:                                               ; preds = %13
  %38 = load i64, ptr %1, align 8
  %39 = and i64 %38, 65535
  %40 = icmp eq i64 %39, 141
  br i1 %40, label %41, label %45, !prof !285

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 1
  %43 = load ptr, ptr %42, align 8, !tbaa !189
  %44 = icmp eq ptr %43, %0
  br i1 %44, label %47, label %45, !prof !285

45:                                               ; preds = %41, %37
  call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 583, ptr noundef nonnull @.str.2) #17
  %46 = load i32, ptr %15, align 4, !tbaa !189
  br label %47

47:                                               ; preds = %41, %45
  %48 = phi i32 [ %16, %41 ], [ %46, %45 ]
  %49 = load ptr, ptr @cfun, align 8, !tbaa !136
  %50 = getelementptr inbounds %struct.function, ptr %49, i64 0, i32 3
  %51 = load ptr, ptr %50, align 8, !tbaa !201
  %52 = getelementptr inbounds %struct.gimple_df, ptr %51, i64 0, i32 8
  %53 = load ptr, ptr %52, align 8, !tbaa !234
  %54 = call ptr @htab_find_slot_with_hash(ptr noundef %53, ptr noundef nonnull %4, i32 noundef %48, i32 noundef 1) #17
  %55 = load ptr, ptr %54, align 8, !tbaa !136
  %56 = icmp eq ptr %55, null
  br i1 %56, label %60, label %57, !prof !285

57:                                               ; preds = %47
  %58 = load i64, ptr %55, align 8
  %59 = and i64 %58, -4294967297
  store i64 %59, ptr %55, align 8
  br label %60

60:                                               ; preds = %57, %47
  store ptr %1, ptr %54, align 8, !tbaa !136
  %61 = load i64, ptr %1, align 8
  %62 = or i64 %61, 4294967296
  store i64 %62, ptr %1, align 8
  br label %63

63:                                               ; preds = %60, %30
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %4) #15
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %3) #15
  ret void
}

; Function Attrs: optsize
declare void @htab_remove_elt(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @get_var_ann(ptr noundef %0) unnamed_addr #0 !prof !207 !PGOFuncName !286 {
  %2 = load i64, ptr %0, align 8
  %3 = trunc i64 %2 to i16
  switch i16 %3, label %10 [
    i16 32, label %4
    i16 34, label %6
    i16 36, label %8
  ], !prof !287

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.tree_var_decl, ptr %0, i64 0, i32 1
  br label %11

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.tree_parm_decl, ptr %0, i64 0, i32 2
  br label %11

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.tree_result_decl, ptr %0, i64 0, i32 1
  br label %11

10:                                               ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.40, i32 noundef 144, ptr noundef nonnull @.str.2) #17
  unreachable

11:                                               ; preds = %8, %6, %4
  %12 = phi ptr [ %9, %8 ], [ %7, %6 ], [ %5, %4 ]
  %13 = load ptr, ptr %12, align 8, !tbaa !136
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %17, !prof !288

15:                                               ; preds = %11
  %16 = tail call ptr @create_var_ann(ptr noundef nonnull %0) #16
  br label %17

17:                                               ; preds = %11, %15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @remove_referenced_var(ptr nocapture noundef %0) local_unnamed_addr #0 !prof !220 {
  %2 = alloca %struct.tree_decl_minimal, align 8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %2) #15
  %3 = getelementptr inbounds %struct.tree_decl_minimal, ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !189
  %5 = tail call fastcc zeroext i8 @is_global_var(ptr noundef %0) #16, !range !153
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %24, !prof !222

7:                                                ; preds = %1
  %8 = tail call fastcc ptr @var_ann(ptr noundef nonnull %0) #16
  %9 = icmp eq ptr %8, null
  br i1 %9, label %24, label %10, !prof !289

10:                                               ; preds = %7
  tail call void @ggc_free(ptr noundef nonnull %8) #17
  %11 = load i64, ptr %0, align 8
  %12 = trunc i64 %11 to i16
  switch i16 %12, label %17 [
    i16 32, label %13
    i16 34, label %15
  ], !prof !290

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.tree_var_decl, ptr %0, i64 0, i32 1
  br label %22

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.tree_parm_decl, ptr %0, i64 0, i32 2
  br label %22

17:                                               ; preds = %10
  %18 = and i64 %11, 65535
  %19 = icmp eq i64 %18, 36
  %20 = getelementptr inbounds %struct.tree_result_decl, ptr %0, i64 0, i32 1
  %21 = select i1 %19, ptr %20, ptr null
  br label %22

22:                                               ; preds = %15, %17, %13
  %23 = phi ptr [ %14, %13 ], [ %16, %15 ], [ %21, %17 ]
  store ptr null, ptr %23, align 8, !tbaa !136
  br label %24

24:                                               ; preds = %22, %7, %1
  %25 = load i64, ptr %0, align 8
  %26 = and i64 %25, 65535
  %27 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %26
  %28 = load i32, ptr %27, align 4, !tbaa !208
  %29 = icmp eq i32 %28, 3
  br i1 %29, label %31, label %30, !prof !222

30:                                               ; preds = %24
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 639, ptr noundef nonnull @.str.2) #17
  br label %31

31:                                               ; preds = %24, %30
  %32 = getelementptr inbounds %struct.tree_decl_minimal, ptr %2, i64 0, i32 2
  store i32 %4, ptr %32, align 4, !tbaa !232
  %33 = load ptr, ptr @cfun, align 8, !tbaa !136
  %34 = tail call fastcc ptr @gimple_referenced_vars(ptr noundef %33) #16
  %35 = call ptr @htab_find_slot_with_hash(ptr noundef %34, ptr noundef nonnull %2, i32 noundef %4, i32 noundef 0) #17
  %36 = load ptr, ptr @cfun, align 8, !tbaa !136
  %37 = call fastcc ptr @gimple_referenced_vars(ptr noundef %36) #16
  call void @htab_clear_slot(ptr noundef %37, ptr noundef %35) #17
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %2) #15
  ret void
}

; Function Attrs: optsize
declare void @ggc_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @htab_clear_slot(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @get_virtual_var(ptr noundef %0) local_unnamed_addr #0 !prof !291 {
  %2 = tail call ptr @tree_strip_nop_conversions(ptr noundef %0) #17
  %3 = load i64, ptr %2, align 8
  %4 = and i64 %3, 65535
  %5 = icmp eq i64 %4, 141
  br i1 %5, label %6, label %11, !prof !292

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.tree_ssa_name, ptr %2, i64 0, i32 1
  br label %8

8:                                                ; preds = %21, %6
  %9 = phi ptr [ %7, %6 ], [ %22, %21 ]
  %10 = load ptr, ptr %9, align 8, !tbaa !189
  br label %11

11:                                               ; preds = %8, %1
  %12 = phi ptr [ %2, %1 ], [ %10, %8 ]
  %13 = load i64, ptr %12, align 8
  %14 = trunc i64 %13 to i32
  %15 = and i32 %14, 65535
  %16 = add nsw i32 %15, -43
  %17 = icmp ult i32 %16, 2
  br i1 %17, label %21, label %18, !prof !293

18:                                               ; preds = %11
  %19 = tail call fastcc zeroext i8 @handled_component_p(ptr noundef nonnull %12) #16, !range !153
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %23, label %21, !prof !292

21:                                               ; preds = %11, %18
  %22 = getelementptr inbounds %struct.tree_exp, ptr %12, i64 0, i32 3
  br label %8, !llvm.loop !294

23:                                               ; preds = %18
  %24 = trunc i64 %13 to i16
  switch i16 %24, label %30 [
    i16 32, label %31
    i16 34, label %31
    i16 36, label %31
    i16 141, label %25
  ], !prof !295

25:                                               ; preds = %23
  %26 = getelementptr inbounds %struct.tree_ssa_name, ptr %12, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !189
  %28 = load i64, ptr %27, align 8
  %29 = trunc i64 %28 to i16
  switch i16 %29, label %30 [
    i16 32, label %31
    i16 34, label %31
    i16 36, label %31
  ]

30:                                               ; preds = %25, %23
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 664, ptr noundef nonnull @.str.2) #17
  br label %31

31:                                               ; preds = %25, %25, %25, %23, %23, %23, %30
  %32 = tail call zeroext i8 @is_gimple_reg(ptr noundef nonnull %12) #17
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %35, label %34, !prof !292

34:                                               ; preds = %31
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 665, ptr noundef nonnull @.str.2) #17
  br label %35

35:                                               ; preds = %31, %34
  ret ptr %12
}

; Function Attrs: optsize
declare ptr @tree_strip_nop_conversions(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc noundef zeroext i8 @handled_component_p(ptr nocapture noundef readonly %0) unnamed_addr #7 !prof !291 !PGOFuncName !296 {
  %2 = load i64, ptr %0, align 8
  %3 = trunc i64 %2 to i16
  switch i16 %3, label %4 [
    i16 42, label %5
    i16 41, label %5
    i16 45, label %5
    i16 46, label %5
    i16 118, label %5
    i16 43, label %5
    i16 44, label %5
  ], !prof !297

4:                                                ; preds = %1
  br label %5

5:                                                ; preds = %1, %1, %1, %1, %1, %1, %1, %4
  %6 = phi i8 [ 0, %4 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ]
  ret i8 %6
}

; Function Attrs: optsize
declare zeroext i8 @is_gimple_reg(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @mark_symbols_for_renaming(ptr noundef %0) local_unnamed_addr #0 !prof !298 {
  %2 = alloca %struct.ssa_operand_iterator_d, align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %2) #15
  tail call fastcc void @update_stmt(ptr noundef %0) #16
  %3 = call fastcc ptr @op_iter_init_tree(ptr noundef nonnull %2, ptr noundef %0, i32 noundef 15) #16
  %4 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %2) #16
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %18, !prof !299

6:                                                ; preds = %1, %14
  %7 = phi ptr [ %15, %14 ], [ %3, %1 ]
  %8 = load i64, ptr %7, align 8
  %9 = and i64 %8, 65535
  %10 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %9
  %11 = load i32, ptr %10, align 4, !tbaa !208
  %12 = icmp eq i32 %11, 3
  br i1 %12, label %13, label %14, !prof !300

13:                                               ; preds = %6
  tail call void @mark_sym_for_renaming(ptr noundef nonnull %7) #17
  br label %14

14:                                               ; preds = %6, %13
  %15 = call fastcc ptr @op_iter_next_tree(ptr noundef nonnull %2) #16
  %16 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %2) #16
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %6, label %18, !prof !301, !llvm.loop !302

18:                                               ; preds = %14, %1
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %2) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @update_stmt(ptr noundef %0) unnamed_addr #0 !prof !298 !PGOFuncName !303 {
  %2 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #16, !range !153
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %5, label %4, !prof !304

4:                                                ; preds = %1
  tail call void @gimple_set_modified(ptr noundef %0, i8 noundef zeroext 1) #17
  tail call void @update_stmt_operands(ptr noundef %0) #17
  br label %5

5:                                                ; preds = %4, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @op_iter_init_tree(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #0 !prof !298 !PGOFuncName !305 {
  tail call fastcc void @op_iter_init(ptr noundef %0, ptr noundef %1, i32 noundef %2) #16
  %4 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 1
  store i32 1, ptr %4, align 4, !tbaa !306
  %5 = tail call fastcc ptr @op_iter_next_tree(ptr noundef %0) #16
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @op_iter_done(ptr nocapture noundef readonly %0) unnamed_addr #7 !prof !308 !PGOFuncName !309 {
  %2 = load i8, ptr %0, align 8, !tbaa !310
  ret i8 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @op_iter_next_tree(ptr nocapture noundef %0) unnamed_addr #5 !prof !311 !PGOFuncName !312 {
  %2 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !313
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5, !prof !314

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.use_optype_d, ptr %3, i64 0, i32 1
  %7 = tail call fastcc ptr @get_use_from_ptr(ptr noundef nonnull %6) #16
  %8 = load ptr, ptr %3, align 8, !tbaa !315
  store ptr %8, ptr %2, align 8, !tbaa !313
  br label %19

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !317
  %12 = icmp eq ptr %11, null
  br i1 %12, label %18, label %13, !prof !318

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.def_optype_d, ptr %11, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !319
  %16 = tail call fastcc ptr @get_def_from_ptr(ptr noundef %15) #16
  %17 = load ptr, ptr %11, align 8, !tbaa !321
  store ptr %17, ptr %10, align 8, !tbaa !317
  br label %19

18:                                               ; preds = %9
  store i8 1, ptr %0, align 8, !tbaa !310
  br label %19

19:                                               ; preds = %18, %13, %5
  %20 = phi ptr [ %7, %5 ], [ %16, %13 ], [ null, %18 ]
  ret ptr %20
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @find_new_referenced_vars(ptr noundef %0) local_unnamed_addr #0 !prof !322 {
  %2 = tail call ptr @walk_gimple_op(ptr noundef %0, ptr noundef nonnull @find_new_referenced_vars_1, ptr noundef null) #17
  ret void
}

; Function Attrs: optsize
declare ptr @walk_gimple_op(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal noalias noundef ptr @find_new_referenced_vars_1(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture readnone %2) #0 !prof !323 !PGOFuncName !324 {
  %4 = load ptr, ptr %0, align 8, !tbaa !136
  %5 = load i64, ptr %4, align 8
  %6 = and i64 %5, 65535
  %7 = icmp eq i64 %6, 32
  br i1 %7, label %8, label %15, !prof !325

8:                                                ; preds = %3
  %9 = tail call fastcc ptr @var_ann(ptr noundef nonnull %4) #16
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %15, !prof !326

11:                                               ; preds = %8
  %12 = tail call zeroext i8 @add_referenced_var(ptr noundef nonnull %4) #16, !range !153
  tail call void @mark_sym_for_renaming(ptr noundef nonnull %4) #17
  %13 = load i64, ptr %4, align 8
  %14 = and i64 %13, 65535
  br label %15

15:                                               ; preds = %11, %8, %3
  %16 = phi i64 [ %14, %11 ], [ 32, %8 ], [ %6, %3 ]
  %17 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %16
  %18 = load i32, ptr %17, align 4, !tbaa !208
  %19 = and i32 %18, -2
  %20 = icmp eq i32 %19, 2
  br i1 %20, label %21, label %22, !prof !327

21:                                               ; preds = %15
  store i32 0, ptr %1, align 4, !tbaa !208
  br label %22

22:                                               ; preds = %15, %21
  ret ptr null
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @get_ref_base_and_extent(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #0 !prof !328 {
  %5 = load i64, ptr %0, align 8
  %6 = trunc i64 %5 to i16
  switch i16 %6, label %13 [
    i16 41, label %7
    i16 42, label %11
  ], !prof !329

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 1
  %9 = load ptr, ptr %8, align 8, !tbaa !189
  %10 = getelementptr inbounds %struct.tree_decl_common, ptr %9, i64 0, i32 1
  br label %37

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 1
  br label %37

13:                                               ; preds = %4
  %14 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !189
  %16 = load i64, ptr %15, align 8
  %17 = trunc i64 %16 to i16
  switch i16 %17, label %20 [
    i16 19, label %47
    i16 14, label %18
  ], !prof !330

18:                                               ; preds = %13
  %19 = tail call i32 @vector_type_mode(ptr noundef nonnull %15) #17
  br label %25

20:                                               ; preds = %13
  %21 = getelementptr inbounds %struct.tree_type, ptr %15, i64 0, i32 6
  %22 = load i32, ptr %21, align 4
  %23 = lshr i32 %22, 16
  %24 = and i32 %23, 255
  br label %25

25:                                               ; preds = %20, %18
  %26 = phi i32 [ %19, %18 ], [ %24, %20 ]
  %27 = icmp eq i32 %26, 1
  br i1 %27, label %28, label %31, !prof !331

28:                                               ; preds = %25
  %29 = load ptr, ptr %14, align 8, !tbaa !189
  %30 = getelementptr inbounds %struct.tree_type, ptr %29, i64 0, i32 2
  br label %37

31:                                               ; preds = %25
  %32 = zext i32 %26 to i64
  %33 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %32
  %34 = load i8, ptr %33, align 1, !tbaa !189
  %35 = zext i8 %34 to i64
  %36 = shl nuw nsw i64 %35, 3
  br label %47

37:                                               ; preds = %28, %11, %7
  %38 = phi ptr [ %10, %7 ], [ %12, %11 ], [ %30, %28 ]
  %39 = load ptr, ptr %38, align 8, !tbaa !189
  %40 = icmp eq ptr %39, null
  br i1 %40, label %47, label %41, !prof !332

41:                                               ; preds = %37
  %42 = tail call i32 @host_integerp(ptr noundef nonnull %39, i32 noundef 1) #17
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %47, label %44, !prof !333

44:                                               ; preds = %41
  %45 = getelementptr inbounds %struct.tree_int_cst, ptr %39, i64 0, i32 1
  %46 = load i64, ptr %45, align 8, !tbaa !189
  br label %47

47:                                               ; preds = %31, %13, %41, %44, %37
  %48 = phi i64 [ %46, %44 ], [ -1, %37 ], [ -1, %41 ], [ %36, %31 ], [ -1, %13 ]
  br label %49

49:                                               ; preds = %187, %47
  %50 = phi i8 [ 0, %47 ], [ %188, %187 ]
  %51 = phi i64 [ 0, %47 ], [ %189, %187 ]
  %52 = phi i64 [ %48, %47 ], [ %190, %187 ]
  %53 = phi ptr [ %0, %47 ], [ %192, %187 ]
  %54 = load i64, ptr %53, align 8
  %55 = trunc i64 %54 to i16
  switch i16 %55, label %193 [
    i16 42, label %56
    i16 41, label %62
    i16 45, label %140
    i16 46, label %140
    i16 43, label %187
    i16 44, label %185
    i16 118, label %187
  ], !prof !334

56:                                               ; preds = %49
  %57 = getelementptr inbounds %struct.tree_exp, ptr %53, i64 1, i32 0, i32 1
  %58 = load ptr, ptr %57, align 8, !tbaa !189
  %59 = getelementptr inbounds %struct.tree_int_cst, ptr %58, i64 0, i32 1
  %60 = load i64, ptr %59, align 8, !tbaa !189
  %61 = add i64 %60, %51
  br label %187

62:                                               ; preds = %49
  %63 = getelementptr inbounds %struct.tree_exp, ptr %53, i64 0, i32 3
  %64 = getelementptr inbounds %struct.tree_exp, ptr %53, i64 1
  %65 = load ptr, ptr %64, align 8, !tbaa !189
  %66 = tail call ptr @component_ref_field_offset(ptr noundef nonnull %53) #17
  %67 = icmp eq ptr %66, null
  br i1 %67, label %124, label %68, !prof !335

68:                                               ; preds = %62
  %69 = load i64, ptr %66, align 8
  %70 = and i64 %69, 65535
  %71 = icmp eq i64 %70, 23
  br i1 %71, label %72, label %124, !prof !336

72:                                               ; preds = %68
  %73 = tail call i32 @host_integerp(ptr noundef nonnull %66, i32 noundef 0) #17
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %124, label %75, !prof !335

75:                                               ; preds = %72
  %76 = getelementptr inbounds %struct.tree_int_cst, ptr %66, i64 0, i32 1
  %77 = load i64, ptr %76, align 8, !tbaa !189
  %78 = shl nsw i64 %77, 3
  %79 = getelementptr inbounds %struct.tree_field_decl, ptr %65, i64 0, i32 4
  %80 = load ptr, ptr %79, align 8, !tbaa !189
  %81 = getelementptr inbounds %struct.tree_int_cst, ptr %80, i64 0, i32 1
  %82 = load i64, ptr %81, align 8, !tbaa !189
  %83 = add i64 %82, %78
  %84 = add nsw i64 %83, %51
  %85 = icmp eq i8 %50, 0
  br i1 %85, label %187, label %86, !prof !337

86:                                               ; preds = %75
  %87 = icmp eq i64 %52, -1
  br i1 %87, label %187, label %88, !prof !338

88:                                               ; preds = %86
  %89 = load ptr, ptr %63, align 8, !tbaa !189
  %90 = getelementptr inbounds %struct.tree_common, ptr %89, i64 0, i32 2
  %91 = load ptr, ptr %90, align 8, !tbaa !189
  br label %92

92:                                               ; preds = %97, %88
  %93 = phi ptr [ %65, %88 ], [ %95, %97 ]
  %94 = getelementptr inbounds %struct.tree_common, ptr %93, i64 0, i32 1
  %95 = load ptr, ptr %94, align 8, !tbaa !189
  %96 = icmp eq ptr %95, null
  br i1 %96, label %105, label %97, !prof !339

97:                                               ; preds = %92
  %98 = load i64, ptr %95, align 8
  %99 = and i64 %98, 65535
  %100 = icmp eq i64 %99, 31
  br i1 %100, label %101, label %92, !prof !339, !llvm.loop !340

101:                                              ; preds = %97
  %102 = load i64, ptr %91, align 8
  %103 = and i64 %102, 65535
  %104 = icmp eq i64 %103, 16
  br i1 %104, label %187, label %105

105:                                              ; preds = %92, %101
  %106 = getelementptr inbounds %struct.tree_decl_common, ptr %65, i64 0, i32 4
  %107 = load ptr, ptr %106, align 8, !tbaa !189
  %108 = getelementptr inbounds %struct.tree_type, ptr %91, i64 0, i32 3
  %109 = load ptr, ptr %108, align 8, !tbaa !189
  %110 = tail call i32 @host_integerp(ptr noundef %107, i32 noundef 0) #17
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %187, label %112, !prof !338

112:                                              ; preds = %105
  %113 = tail call i32 @host_integerp(ptr noundef %109, i32 noundef 0) #17
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %187, label %115, !prof !338

115:                                              ; preds = %112
  %116 = getelementptr inbounds %struct.tree_int_cst, ptr %109, i64 0, i32 1
  %117 = load i64, ptr %116, align 8, !tbaa !189
  %118 = getelementptr inbounds %struct.tree_int_cst, ptr %107, i64 0, i32 1
  %119 = load i64, ptr %118, align 8, !tbaa !189
  %120 = sub i64 %117, %119
  %121 = shl i64 %120, 3
  %122 = sub i64 %52, %83
  %123 = add i64 %122, %121
  br label %187

124:                                              ; preds = %72, %68, %62
  %125 = load ptr, ptr %63, align 8, !tbaa !189
  %126 = getelementptr inbounds %struct.tree_common, ptr %125, i64 0, i32 2
  %127 = load ptr, ptr %126, align 8, !tbaa !189
  %128 = getelementptr inbounds %struct.tree_type, ptr %127, i64 0, i32 2
  %129 = load ptr, ptr %128, align 8, !tbaa !189
  %130 = icmp ne i64 %52, -1
  %131 = icmp ne ptr %129, null
  %132 = select i1 %130, i1 %131, i1 false
  br i1 %132, label %133, label %187

133:                                              ; preds = %124
  %134 = tail call i32 @host_integerp(ptr noundef nonnull %129, i32 noundef 1) #17
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %187, label %136

136:                                              ; preds = %133
  %137 = getelementptr inbounds %struct.tree_int_cst, ptr %129, i64 0, i32 1
  %138 = load i64, ptr %137, align 8, !tbaa !189
  %139 = sub i64 %138, %51
  br label %187

140:                                              ; preds = %49, %49
  %141 = getelementptr inbounds %struct.tree_exp, ptr %53, i64 0, i32 3
  %142 = getelementptr inbounds %struct.tree_exp, ptr %53, i64 1
  %143 = load ptr, ptr %142, align 8, !tbaa !189
  %144 = load i64, ptr %143, align 8
  %145 = and i64 %144, 65535
  %146 = icmp eq i64 %145, 23
  br i1 %146, label %147, label %169, !prof !341

147:                                              ; preds = %140
  %148 = tail call i32 @host_integerp(ptr noundef nonnull %143, i32 noundef 0) #17
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %169, label %150, !prof !342

150:                                              ; preds = %147
  %151 = tail call ptr @array_ref_low_bound(ptr noundef nonnull %53) #17
  %152 = tail call i32 @host_integerp(ptr noundef %151, i32 noundef 0) #17
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %169, label %154, !prof !342

154:                                              ; preds = %150
  %155 = tail call ptr @array_ref_element_size(ptr noundef nonnull %53) #17
  %156 = tail call i32 @host_integerp(ptr noundef %155, i32 noundef 1) #17
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %169, label %158, !prof !342

158:                                              ; preds = %154
  %159 = getelementptr inbounds %struct.tree_int_cst, ptr %143, i64 0, i32 1
  %160 = load i64, ptr %159, align 8, !tbaa !189
  %161 = getelementptr inbounds %struct.tree_int_cst, ptr %151, i64 0, i32 1
  %162 = load i64, ptr %161, align 8, !tbaa !189
  %163 = sub i64 %160, %162
  %164 = getelementptr inbounds %struct.tree_int_cst, ptr %155, i64 0, i32 1
  %165 = load i64, ptr %164, align 8, !tbaa !189
  %166 = shl i64 %165, 3
  %167 = mul i64 %166, %163
  %168 = add nsw i64 %167, %51
  br label %187

169:                                              ; preds = %154, %150, %147, %140
  %170 = load ptr, ptr %141, align 8, !tbaa !189
  %171 = getelementptr inbounds %struct.tree_common, ptr %170, i64 0, i32 2
  %172 = load ptr, ptr %171, align 8, !tbaa !189
  %173 = getelementptr inbounds %struct.tree_type, ptr %172, i64 0, i32 2
  %174 = load ptr, ptr %173, align 8, !tbaa !189
  %175 = icmp ne i64 %52, -1
  %176 = icmp ne ptr %174, null
  %177 = select i1 %175, i1 %176, i1 false
  br i1 %177, label %178, label %187, !prof !343

178:                                              ; preds = %169
  %179 = tail call i32 @host_integerp(ptr noundef nonnull %174, i32 noundef 1) #17
  %180 = icmp eq i32 %179, 0
  br i1 %180, label %187, label %181, !prof !344

181:                                              ; preds = %178
  %182 = getelementptr inbounds %struct.tree_int_cst, ptr %174, i64 0, i32 1
  %183 = load i64, ptr %182, align 8, !tbaa !189
  %184 = sub i64 %183, %51
  br label %187

185:                                              ; preds = %49
  %186 = add nsw i64 %51, %48
  br label %187

187:                                              ; preds = %158, %169, %178, %181, %101, %105, %112, %115, %86, %75, %124, %133, %136, %49, %185, %49, %56
  %188 = phi i8 [ %50, %185 ], [ %50, %49 ], [ %50, %49 ], [ %50, %56 ], [ %50, %136 ], [ %50, %133 ], [ %50, %124 ], [ 0, %75 ], [ %50, %86 ], [ %50, %115 ], [ %50, %112 ], [ %50, %105 ], [ %50, %101 ], [ 0, %158 ], [ 1, %169 ], [ 1, %178 ], [ 1, %181 ]
  %189 = phi i64 [ %186, %185 ], [ %51, %49 ], [ %51, %49 ], [ %61, %56 ], [ %51, %136 ], [ %51, %133 ], [ %51, %124 ], [ %84, %75 ], [ %84, %86 ], [ %84, %115 ], [ %84, %112 ], [ %84, %105 ], [ %84, %101 ], [ %168, %158 ], [ %51, %169 ], [ %51, %178 ], [ %51, %181 ]
  %190 = phi i64 [ %52, %185 ], [ %52, %49 ], [ %52, %49 ], [ %52, %56 ], [ %139, %136 ], [ -1, %133 ], [ -1, %124 ], [ %52, %75 ], [ -1, %86 ], [ %123, %115 ], [ -1, %112 ], [ -1, %105 ], [ %52, %101 ], [ %52, %158 ], [ -1, %169 ], [ -1, %178 ], [ %184, %181 ]
  %191 = getelementptr inbounds %struct.tree_exp, ptr %53, i64 0, i32 3
  %192 = load ptr, ptr %191, align 8, !tbaa !189
  br label %49

193:                                              ; preds = %49
  %194 = and i64 %54, 65535
  %195 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %194
  %196 = load i32, ptr %195, align 4, !tbaa !208
  %197 = icmp eq i32 %196, 3
  br i1 %197, label %198, label %210, !prof !345

198:                                              ; preds = %193
  %199 = icmp eq i64 %52, -1
  br i1 %199, label %200, label %232, !prof !346

200:                                              ; preds = %198
  %201 = getelementptr inbounds %struct.tree_decl_common, ptr %53, i64 0, i32 1
  %202 = load ptr, ptr %201, align 8, !tbaa !189
  %203 = tail call i32 @host_integerp(ptr noundef %202, i32 noundef 1) #17
  %204 = icmp eq i32 %203, 0
  br i1 %204, label %232, label %205

205:                                              ; preds = %200
  %206 = load ptr, ptr %201, align 8, !tbaa !189
  %207 = getelementptr inbounds %struct.tree_int_cst, ptr %206, i64 0, i32 1
  %208 = load i64, ptr %207, align 8, !tbaa !189
  %209 = sub i64 %208, %51
  br label %232

210:                                              ; preds = %193
  %211 = icmp eq i8 %50, 0
  br i1 %211, label %232, label %212, !prof !347

212:                                              ; preds = %210
  %213 = icmp eq i64 %52, -1
  br i1 %213, label %232, label %214, !prof !344

214:                                              ; preds = %212
  %215 = getelementptr inbounds %struct.tree_common, ptr %53, i64 0, i32 2
  %216 = load ptr, ptr %215, align 8, !tbaa !189
  %217 = getelementptr inbounds %struct.tree_type, ptr %216, i64 0, i32 2
  %218 = load ptr, ptr %217, align 8, !tbaa !189
  %219 = tail call i32 @host_integerp(ptr noundef %218, i32 noundef 1) #17
  %220 = icmp eq i32 %219, 0
  br i1 %220, label %231, label %221, !prof !344

221:                                              ; preds = %214
  %222 = add nsw i64 %52, %51
  %223 = load ptr, ptr %215, align 8, !tbaa !189
  %224 = getelementptr inbounds %struct.tree_type, ptr %223, i64 0, i32 2
  %225 = load ptr, ptr %224, align 8, !tbaa !189
  %226 = getelementptr inbounds %struct.tree_int_cst, ptr %225, i64 0, i32 1
  %227 = load i64, ptr %226, align 8, !tbaa !189
  %228 = shl i64 %227, 32
  %229 = ashr exact i64 %228, 32
  %230 = icmp eq i64 %222, %229
  br i1 %230, label %231, label %232, !prof !348

231:                                              ; preds = %221, %214
  br label %232

232:                                              ; preds = %210, %212, %221, %231, %198, %200, %205
  %233 = phi i64 [ %209, %205 ], [ -1, %200 ], [ %52, %198 ], [ -1, %231 ], [ %52, %221 ], [ -1, %212 ], [ %52, %210 ]
  store i64 %51, ptr %1, align 8, !tbaa !349
  store i64 %48, ptr %2, align 8, !tbaa !349
  store i64 %233, ptr %3, align 8, !tbaa !349
  ret ptr %53
}

; Function Attrs: optsize
declare i32 @vector_type_mode(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @host_integerp(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @component_ref_field_offset(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @array_ref_low_bound(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @array_ref_element_size(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @stmt_references_abnormal_ssa_name(ptr nocapture noundef readonly %0) local_unnamed_addr #0 !prof !350 {
  %2 = alloca %struct.ssa_operand_iterator_d, align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %2) #15
  %3 = call fastcc ptr @op_iter_init_use(ptr noundef nonnull %2, ptr noundef %0) #16
  %4 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %2) #16
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %16, !prof !351

6:                                                ; preds = %1, %12
  %7 = phi ptr [ %13, %12 ], [ %3, %1 ]
  %8 = tail call fastcc ptr @get_use_from_ptr(ptr noundef %7) #16
  %9 = load i64, ptr %8, align 8
  %10 = and i64 %9, 4194304
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %16, !prof !352

12:                                               ; preds = %6
  %13 = call fastcc ptr @op_iter_next_use(ptr noundef nonnull %2) #16
  %14 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %2) #16
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %6, label %16, !prof !353, !llvm.loop !354

16:                                               ; preds = %6, %12, %1
  %17 = phi i8 [ 0, %1 ], [ 0, %12 ], [ 1, %6 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %2) #15
  ret i8 %17
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @op_iter_init_use(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !prof !350 !PGOFuncName !355 {
  tail call fastcc void @op_iter_init(ptr noundef %0, ptr noundef %1, i32 noundef 1) #16
  %3 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 1
  store i32 2, ptr %3, align 4, !tbaa !306
  %4 = tail call fastcc ptr @op_iter_next_use(ptr noundef %0) #16
  ret ptr %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @get_use_from_ptr(ptr nocapture noundef readonly %0) unnamed_addr #8 !prof !356 !PGOFuncName !357 {
  %2 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !358
  %4 = load ptr, ptr %3, align 8, !tbaa !136
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @op_iter_next_use(ptr nocapture noundef %0) unnamed_addr #0 !prof !359 !PGOFuncName !360 {
  %2 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !313
  %4 = icmp eq ptr %3, null
  br i1 %4, label %8, label %5, !prof !361

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.use_optype_d, ptr %3, i64 0, i32 1
  %7 = load ptr, ptr %3, align 8, !tbaa !315
  store ptr %7, ptr %2, align 8, !tbaa !313
  br label %20

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 4
  %10 = load i32, ptr %9, align 8, !tbaa !362
  %11 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 5
  %12 = load i32, ptr %11, align 4, !tbaa !363
  %13 = icmp slt i32 %10, %12
  br i1 %13, label %14, label %19, !prof !364

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 6
  %16 = load ptr, ptr %15, align 8, !tbaa !365
  %17 = add nsw i32 %10, 1
  store i32 %17, ptr %9, align 8, !tbaa !362
  %18 = tail call fastcc ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %16, i32 noundef %10) #16
  br label %20

19:                                               ; preds = %8
  store i8 1, ptr %0, align 8, !tbaa !310
  br label %20

20:                                               ; preds = %19, %14, %5
  %21 = phi ptr [ %6, %5 ], [ %18, %14 ], [ null, %19 ]
  ret ptr %21
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_gimple_debug(ptr nocapture noundef readonly %0) unnamed_addr #7 !prof !257 !PGOFuncName !366 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #16, !range !258
  %3 = icmp eq i32 %2, 2
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @bb_seq(ptr nocapture noundef readonly %0) unnamed_addr #8 !prof !175 !PGOFuncName !367 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 13
  %3 = load i32, ptr %2, align 8, !tbaa !368
  %4 = and i32 %3, 512
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %12, !prof !369

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !189
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10, !prof !370

10:                                               ; preds = %6
  %11 = load ptr, ptr %8, align 8, !tbaa !371
  br label %12

12:                                               ; preds = %1, %6, %10
  %13 = phi ptr [ %11, %10 ], [ null, %6 ], [ null, %1 ]
  ret ptr %13
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_seq_first(ptr noundef readonly %0) unnamed_addr #7 !prof !175 !PGOFuncName !373 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !370

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !374
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi ptr [ %4, %3 ], [ null, %1 ]
  ret ptr %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @first_htab_element(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #0 !prof !194 !PGOFuncName !376 {
  store ptr %1, ptr %0, align 8, !tbaa !177
  %3 = getelementptr inbounds %struct.htab, ptr %1, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !377
  %5 = getelementptr inbounds %struct.htab_iterator, ptr %0, i64 0, i32 1
  store ptr %4, ptr %5, align 8, !tbaa !179
  %6 = tail call i64 @htab_size(ptr noundef %1) #17
  %7 = getelementptr inbounds ptr, ptr %4, i64 %6
  %8 = getelementptr inbounds %struct.htab_iterator, ptr %0, i64 0, i32 2
  store ptr %7, ptr %8, align 8, !tbaa !180
  %9 = load ptr, ptr %5, align 8, !tbaa !179
  br label %10

10:                                               ; preds = %14, %2
  %11 = phi ptr [ %15, %14 ], [ %9, %2 ]
  %12 = load ptr, ptr %11, align 8, !tbaa !136
  %13 = icmp ult ptr %12, inttoptr (i64 2 to ptr)
  br i1 %13, label %14, label %17

14:                                               ; preds = %10
  %15 = getelementptr inbounds ptr, ptr %11, i64 1
  store ptr %15, ptr %5, align 8, !tbaa !179
  %16 = icmp ult ptr %15, %7
  br i1 %16, label %10, label %17, !llvm.loop !379

17:                                               ; preds = %10, %14
  %18 = phi ptr [ %11, %10 ], [ %15, %14 ]
  %19 = icmp ult ptr %18, %7
  br i1 %19, label %20, label %22

20:                                               ; preds = %17
  %21 = load ptr, ptr %18, align 8, !tbaa !136
  br label %22

22:                                               ; preds = %17, %20
  %23 = phi ptr [ %21, %20 ], [ null, %17 ]
  ret ptr %23
}

; Function Attrs: optsize
declare i64 @htab_size(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @end_htab_p(ptr nocapture noundef readonly %0) unnamed_addr #7 !prof !194 !PGOFuncName !380 {
  %2 = getelementptr inbounds %struct.htab_iterator, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !179
  %4 = getelementptr inbounds %struct.htab_iterator, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !180
  %6 = icmp uge ptr %3, %5
  %7 = zext i1 %6 to i8
  ret i8 %7
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @next_htab_element(ptr nocapture noundef %0) unnamed_addr #11 !prof !194 !PGOFuncName !381 {
  %2 = getelementptr inbounds %struct.htab_iterator, ptr %0, i64 0, i32 1
  %3 = getelementptr inbounds %struct.htab_iterator, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !180
  %5 = load ptr, ptr %2, align 8, !tbaa !179
  br label %6

6:                                                ; preds = %10, %1
  %7 = phi ptr [ %5, %1 ], [ %8, %10 ]
  %8 = getelementptr inbounds ptr, ptr %7, i64 1
  store ptr %8, ptr %2, align 8, !tbaa !179
  %9 = icmp ult ptr %8, %4
  br i1 %9, label %10, label %13

10:                                               ; preds = %6
  %11 = load ptr, ptr %8, align 8, !tbaa !136
  %12 = icmp ult ptr %11, inttoptr (i64 2 to ptr)
  br i1 %12, label %6, label %13

13:                                               ; preds = %10, %6
  %14 = phi ptr [ %11, %10 ], [ null, %6 ]
  ret ptr %14
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @may_be_aliased(ptr nocapture noundef readonly %0) unnamed_addr #8 !prof !194 !PGOFuncName !382 {
  %2 = load i64, ptr %0, align 8
  %3 = and i64 %2, 65535
  %4 = icmp eq i64 %3, 33
  br i1 %4, label %38, label %5

5:                                                ; preds = %1
  %6 = and i64 %2, 134217728
  %7 = icmp ne i64 %6, 0
  %8 = and i64 %2, 201326592
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 2
  %12 = load i64, ptr %11, align 8
  %13 = and i64 %12, 33554432
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %29, label %15

15:                                               ; preds = %10, %5
  %16 = and i64 %2, 1048576
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %28, label %18

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !189
  %21 = getelementptr inbounds %struct.tree_type, ptr %20, i64 0, i32 6
  %22 = load i32, ptr %21, align 4
  %23 = and i32 %22, 2048
  %24 = icmp eq i32 %23, 0
  %25 = or i1 %7, %24
  %26 = xor i1 %24, true
  %27 = zext i1 %26 to i8
  br i1 %25, label %38, label %29

28:                                               ; preds = %15
  br i1 %7, label %38, label %29

29:                                               ; preds = %18, %10, %28
  %30 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 2
  %31 = load i64, ptr %30, align 8
  %32 = and i64 %31, 33554432
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %29
  %35 = lshr i64 %2, 18
  %36 = trunc i64 %35 to i8
  %37 = and i8 %36, 1
  br label %38

38:                                               ; preds = %18, %28, %29, %34, %1
  %39 = phi i8 [ %27, %18 ], [ 0, %1 ], [ 1, %29 ], [ 1, %28 ], [ %37, %34 ]
  ret i8 %39
}

; Function Attrs: optsize
declare zeroext i8 @pt_solution_includes(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #13

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @num_ssa_operands(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #0 !prof !194 !PGOFuncName !383 {
  %3 = alloca %struct.ssa_operand_iterator_d, align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #15
  %4 = call fastcc ptr @op_iter_init_tree(ptr noundef nonnull %3, ptr noundef %0, i32 noundef %1) #16
  %5 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %3) #16
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %13

7:                                                ; preds = %2, %7
  %8 = phi i32 [ %9, %7 ], [ 0, %2 ]
  %9 = add nuw nsw i32 %8, 1
  %10 = call fastcc ptr @op_iter_next_tree(ptr noundef nonnull %3) #16
  %11 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %3) #16
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %7, label %13, !llvm.loop !384

13:                                               ; preds = %7, %2
  %14 = phi i32 [ 0, %2 ], [ %9, %7 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #15
  ret i32 %14
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_vdef(ptr nocapture noundef readonly %0) unnamed_addr #7 !prof !194 !PGOFuncName !385 {
  %2 = tail call fastcc zeroext i8 @gimple_has_mem_ops(ptr noundef %0) #16, !range !153
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %7, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !189
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_vuse(ptr nocapture noundef readonly %0) unnamed_addr #7 !prof !350 !PGOFuncName !386 {
  %2 = tail call fastcc zeroext i8 @gimple_has_mem_ops(ptr noundef %0) #16, !range !153
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %7, label %4, !prof !364

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !189
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_has_mem_ops(ptr nocapture noundef readonly %0) unnamed_addr #7 !prof !350 !PGOFuncName !387 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #16, !range !258
  %3 = add nsw i32 %2, -6
  %4 = icmp ult i32 %3, 4
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_has_ops(ptr nocapture noundef readonly %0) unnamed_addr #7 !prof !388 !PGOFuncName !389 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #16, !range !258
  %3 = add nsw i32 %2, -1
  %4 = icmp ult i32 %3, 9
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_ops(ptr noundef readonly %0) unnamed_addr #0 !prof !268 !PGOFuncName !390 {
  %2 = tail call fastcc i32 @gimple_statement_structure(ptr noundef %0) #16
  %3 = zext i32 %2 to i64
  %4 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %3
  %5 = load i64, ptr %4, align 8, !tbaa !349
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %8, !prof !270

7:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.39, i32 noundef 1622, ptr noundef nonnull @.str.2) #17
  br label %8

8:                                                ; preds = %1, %7
  %9 = getelementptr inbounds i8, ptr %0, i64 %5
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_statement_structure(ptr nocapture noundef readonly %0) unnamed_addr #7 !prof !268 !PGOFuncName !391 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #16, !range !258
  %3 = tail call fastcc i32 @gss_for_code(i32 noundef %2) #16
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @gss_for_code(i32 noundef %0) unnamed_addr #12 !prof !268 !PGOFuncName !392 {
  %2 = zext nneg i32 %0 to i64
  %3 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %2
  %4 = load i32, ptr %3, align 4, !tbaa !208
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc nonnull ptr @gimple_phi_arg(ptr noundef readonly %0, i32 noundef %1) unnamed_addr #0 !prof !194 !PGOFuncName !393 {
  %3 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !189
  %5 = icmp ult i32 %4, %1
  br i1 %5, label %6, label %7

6:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.39, i32 noundef 3103, ptr noundef nonnull @.str.2) #17
  br label %7

7:                                                ; preds = %2, %6
  %8 = zext i32 %1 to i64
  %9 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 4, i64 %8
  ret ptr %9
}

; Function Attrs: optsize
declare void @gimple_set_modified(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @update_stmt_operands(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @op_iter_init(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #0 !prof !394 !PGOFuncName !395 {
  %4 = and i32 %2, 8
  %5 = icmp ne i32 %4, 0
  %6 = and i32 %2, 10
  %7 = icmp eq i32 %6, 8
  %8 = and i32 %2, 5
  %9 = icmp eq i32 %8, 4
  %10 = or i1 %7, %9
  br i1 %10, label %11, label %12, !prof !396

11:                                               ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.40, i32 noundef 747, ptr noundef nonnull @.str.2) #17
  br label %12

12:                                               ; preds = %3, %11
  %13 = icmp eq i32 %6, 0
  br i1 %13, label %14, label %16, !prof !397

14:                                               ; preds = %12
  %15 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 2
  store ptr null, ptr %15, align 8, !tbaa !317
  br label %26

16:                                               ; preds = %12
  %17 = tail call fastcc ptr @gimple_def_ops(ptr noundef %1) #16
  %18 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 2
  store ptr %17, ptr %18, align 8, !tbaa !317
  %19 = icmp eq ptr %17, null
  %20 = select i1 %5, i1 true, i1 %19
  br i1 %20, label %26, label %21, !prof !398

21:                                               ; preds = %16
  %22 = tail call fastcc ptr @gimple_vdef(ptr noundef %1) #16
  %23 = icmp eq ptr %22, null
  br i1 %23, label %26, label %24

24:                                               ; preds = %21
  %25 = load ptr, ptr %17, align 8, !tbaa !321
  store ptr %25, ptr %18, align 8, !tbaa !317
  br label %26

26:                                               ; preds = %14, %24, %21, %16
  %27 = icmp eq i32 %8, 0
  br i1 %27, label %28, label %30, !prof !399

28:                                               ; preds = %26
  %29 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 3
  store ptr null, ptr %29, align 8, !tbaa !313
  br label %42

30:                                               ; preds = %26
  %31 = tail call fastcc ptr @gimple_use_ops(ptr noundef %1) #16
  %32 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 3
  store ptr %31, ptr %32, align 8, !tbaa !313
  %33 = and i32 %2, 4
  %34 = icmp ne i32 %33, 0
  %35 = icmp eq ptr %31, null
  %36 = select i1 %34, i1 true, i1 %35
  br i1 %36, label %42, label %37, !prof !400

37:                                               ; preds = %30
  %38 = tail call fastcc ptr @gimple_vuse(ptr noundef %1) #16
  %39 = icmp eq ptr %38, null
  br i1 %39, label %42, label %40, !prof !401

40:                                               ; preds = %37
  %41 = load ptr, ptr %31, align 8, !tbaa !315
  store ptr %41, ptr %32, align 8, !tbaa !313
  br label %42

42:                                               ; preds = %28, %40, %37, %30
  store i8 0, ptr %0, align 8, !tbaa !310
  %43 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %43, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_def_ops(ptr nocapture noundef readonly %0) unnamed_addr #7 !prof !298 !PGOFuncName !402 {
  %2 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #16, !range !153
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %7, label %4, !prof !304

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gimple_statement_with_ops_base, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !189
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_use_ops(ptr nocapture noundef readonly %0) unnamed_addr #7 !prof !394 !PGOFuncName !403 {
  %2 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #16, !range !153
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %7, label %4, !prof !399

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gimple_statement_with_ops_base, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !189
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @get_def_from_ptr(ptr nocapture noundef readonly %0) unnamed_addr #7 !prof !404 !PGOFuncName !405 {
  %2 = load ptr, ptr %0, align 8, !tbaa !136
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc nonnull ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !prof !194 !PGOFuncName !406 {
  %3 = tail call fastcc ptr @gimple_phi_arg(ptr noundef %0, i32 noundef %1) #16
  ret ptr %3
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #14

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #14

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #14 = { nofree nounwind }
attributes #15 = { nounwind }
attributes #16 = { optsize }
attributes #17 = { nounwind optsize }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!133}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132}
!35 = !{ptr @find_referenced_vars, ptr @gsi_start_bb, i64 182758}
!36 = !{ptr @find_referenced_vars, ptr @gsi_end_p, i64 759481}
!37 = !{ptr @find_referenced_vars, ptr @gsi_stmt, i64 393965}
!38 = !{ptr @find_referenced_vars, ptr @is_gimple_debug, i64 393964}
!39 = !{ptr @find_referenced_vars, ptr @find_referenced_vars_in, i64 393964}
!40 = !{ptr @find_referenced_vars, ptr @gsi_next, i64 393965}
!41 = !{ptr @find_referenced_vars, ptr @gsi_start_phis, i64 182758}
!42 = !{ptr @create_var_ann, ptr @fancy_abort, i64 2}
!43 = !{ptr @create_var_ann, ptr @ggc_alloc_cleared_stat, i64 113006}
!44 = !{ptr @renumber_gimple_stmt_uids, ptr @set_gimple_stmt_max_uid, i64 152}
!45 = !{ptr @renumber_gimple_stmt_uids, ptr @gsi_start_bb, i64 810224}
!46 = !{ptr @renumber_gimple_stmt_uids, ptr @gsi_end_p, i64 2211548}
!47 = !{ptr @renumber_gimple_stmt_uids, ptr @gsi_stmt, i64 1401324}
!48 = !{ptr @renumber_gimple_stmt_uids, ptr @inc_gimple_stmt_max_uid, i64 1401324}
!49 = !{ptr @renumber_gimple_stmt_uids, ptr @gimple_set_uid, i64 1401324}
!50 = !{ptr @renumber_gimple_stmt_uids, ptr @gsi_next, i64 1401324}
!51 = !{ptr @gsi_start_bb, ptr @bb_seq, i64 1002879}
!52 = !{ptr @gsi_start_bb, ptr @gimple_seq_first, i64 1002879}
!53 = !{ptr @add_referenced_var, ptr @get_var_ann, i64 624941}
!54 = !{ptr @add_referenced_var, ptr @fancy_abort, i64 1}
!55 = !{ptr @add_referenced_var, ptr @referenced_var_check_and_insert, i64 624941}
!56 = !{ptr @add_referenced_var, ptr @walk_tree_1, i64 79}
!57 = !{ptr @gimple_default_def, ptr @htab_find_with_hash, i64 197626}
!58 = !{ptr @find_referenced_vars_in, ptr @gimple_code, i64 403812}
!59 = !{ptr @find_referenced_vars_in, ptr @gimple_num_ops, i64 1703759}
!60 = !{ptr @find_referenced_vars_in, ptr @gimple_op_ptr, i64 1299948}
!61 = !{ptr @find_referenced_vars_in, ptr @walk_tree_1, i64 1299969}
!62 = !{ptr @find_referenced_vars_in, ptr @gimple_phi_result_ptr, i64 1}
!63 = !{ptr @find_referenced_vars_in, ptr @gimple_phi_num_args, i64 21}
!64 = !{ptr @find_referenced_vars_in, ptr @gimple_phi_arg_def, i64 20}
!65 = !{ptr @gimple_op_ptr, ptr @gimple_has_ops, i64 1299953}
!66 = !{ptr @gimple_op_ptr, ptr @gimple_ops, i64 1299952}
!67 = !{ptr @find_vars_r, ptr @add_referenced_var, i64 623076}
!68 = !{ptr @referenced_var_lookup, ptr @gimple_referenced_vars, i64 1961}
!69 = !{ptr @referenced_var_lookup, ptr @htab_find_with_hash, i64 1961}
!70 = !{ptr @referenced_var_lookup, ptr @fancy_abort, i64 1}
!71 = !{ptr @referenced_var_check_and_insert, ptr @gimple_referenced_vars, i64 738038}
!72 = !{ptr @referenced_var_check_and_insert, ptr @htab_find_with_hash, i64 624941}
!73 = !{ptr @referenced_var_check_and_insert, ptr @fancy_abort, i64 1}
!74 = !{ptr @referenced_var_check_and_insert, ptr @htab_find_slot_with_hash, i64 113097}
!75 = !{ptr @set_default_def, ptr @htab_find_slot_with_hash, i64 81}
!76 = !{ptr @set_default_def, ptr @htab_remove_elt, i64 1}
!77 = !{ptr @set_default_def, ptr @fancy_abort, i64 2}
!78 = !{ptr @get_var_ann, ptr @create_var_ann, i64 112607}
!79 = !{ptr @remove_referenced_var, ptr @is_global_var, i64 9214}
!80 = !{ptr @remove_referenced_var, ptr @var_ann, i64 9213}
!81 = !{ptr @remove_referenced_var, ptr @ggc_free, i64 9212}
!82 = !{ptr @remove_referenced_var, ptr @fancy_abort, i64 1}
!83 = !{ptr @remove_referenced_var, ptr @gimple_referenced_vars, i64 18428}
!84 = !{ptr @remove_referenced_var, ptr @htab_find_slot_with_hash, i64 9214}
!85 = !{ptr @remove_referenced_var, ptr @htab_clear_slot, i64 9214}
!86 = !{ptr @get_virtual_var, ptr @tree_strip_nop_conversions, i64 2052}
!87 = !{ptr @get_virtual_var, ptr @handled_component_p, i64 2053}
!88 = !{ptr @get_virtual_var, ptr @is_gimple_reg, i64 2052}
!89 = !{ptr @get_virtual_var, ptr @fancy_abort, i64 1}
!90 = !{ptr @mark_symbols_for_renaming, ptr @update_stmt, i64 1109}
!91 = !{ptr @mark_symbols_for_renaming, ptr @op_iter_init_tree, i64 1109}
!92 = !{ptr @mark_symbols_for_renaming, ptr @op_iter_done, i64 3599}
!93 = !{ptr @mark_symbols_for_renaming, ptr @mark_sym_for_renaming, i64 460}
!94 = !{ptr @mark_symbols_for_renaming, ptr @op_iter_next_tree, i64 2490}
!95 = !{ptr @update_stmt, ptr @gimple_has_ops, i64 1109}
!96 = !{ptr @update_stmt, ptr @gimple_set_modified, i64 1108}
!97 = !{ptr @update_stmt, ptr @update_stmt_operands, i64 1108}
!98 = !{ptr @op_iter_init_tree, ptr @op_iter_init, i64 1109}
!99 = !{ptr @op_iter_init_tree, ptr @op_iter_next_tree, i64 1109}
!100 = !{ptr @op_iter_next_tree, ptr @get_use_from_ptr, i64 1401}
!101 = !{ptr @op_iter_next_tree, ptr @get_def_from_ptr, i64 1090}
!102 = !{ptr @find_new_referenced_vars, ptr @walk_gimple_op, i64 334}
!103 = !{ptr @find_new_referenced_vars_1, ptr @var_ann, i64 52}
!104 = !{ptr @find_new_referenced_vars_1, ptr @add_referenced_var, i64 1}
!105 = !{ptr @find_new_referenced_vars_1, ptr @mark_sym_for_renaming, i64 1}
!106 = !{ptr @get_ref_base_and_extent, ptr @vector_type_mode, i64 1}
!107 = !{ptr @get_ref_base_and_extent, ptr @host_integerp, i64 264096}
!108 = !{ptr @get_ref_base_and_extent, ptr @component_ref_field_offset, i64 63156}
!109 = !{ptr @get_ref_base_and_extent, ptr @array_ref_low_bound, i64 65888}
!110 = !{ptr @get_ref_base_and_extent, ptr @array_ref_element_size, i64 65887}
!111 = !{ptr @stmt_references_abnormal_ssa_name, ptr @op_iter_init_use, i64 43}
!112 = !{ptr @stmt_references_abnormal_ssa_name, ptr @op_iter_done, i64 91}
!113 = !{ptr @stmt_references_abnormal_ssa_name, ptr @get_use_from_ptr, i64 49}
!114 = !{ptr @stmt_references_abnormal_ssa_name, ptr @op_iter_next_use, i64 48}
!115 = !{ptr @op_iter_init_use, ptr @op_iter_init, i64 43}
!116 = !{ptr @op_iter_init_use, ptr @op_iter_next_use, i64 43}
!117 = !{ptr @op_iter_next_use, ptr @gimple_phi_arg_imm_use_ptr, i64 1}
!118 = !{ptr @is_gimple_debug, ptr @gimple_code, i64 403812}
!119 = !{ptr @gimple_vuse, ptr @gimple_has_mem_ops, i64 43}
!120 = !{ptr @gimple_has_mem_ops, ptr @gimple_code, i64 43}
!121 = !{ptr @gimple_has_ops, ptr @gimple_code, i64 1303323}
!122 = !{ptr @gimple_ops, ptr @gimple_statement_structure, i64 1299953}
!123 = !{ptr @gimple_ops, ptr @fancy_abort, i64 1}
!124 = !{ptr @gimple_statement_structure, ptr @gimple_code, i64 1299953}
!125 = !{ptr @gimple_statement_structure, ptr @gss_for_code, i64 1299953}
!126 = !{ptr @op_iter_init, ptr @fancy_abort, i64 2}
!127 = !{ptr @op_iter_init, ptr @gimple_def_ops, i64 1108}
!128 = !{ptr @op_iter_init, ptr @gimple_vdef, i64 1}
!129 = !{ptr @op_iter_init, ptr @gimple_use_ops, i64 1151}
!130 = !{ptr @op_iter_init, ptr @gimple_vuse, i64 43}
!131 = !{ptr @gimple_def_ops, ptr @gimple_has_ops, i64 1109}
!132 = !{ptr @gimple_use_ops, ptr @gimple_has_ops, i64 1152}
!133 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!134 = !{!"function_entry_count", i64 40}
!135 = !{!"tree-dfa.c:find_referenced_vars"}
!136 = !{!137, !137, i64 0}
!137 = !{!"any pointer", !138, i64 0}
!138 = !{!"omnipotent char", !139, i64 0}
!139 = !{!"Simple C/C++ TBAA"}
!140 = !{!141, !137, i64 8}
!141 = !{!"function", !137, i64 0, !137, i64 8, !137, i64 16, !137, i64 24, !137, i64 32, !137, i64 40, !137, i64 48, !137, i64 56, !137, i64 64, !137, i64 72, !137, i64 80, !137, i64 88, !137, i64 96, !142, i64 104, !142, i64 108, !142, i64 112, !142, i64 116, !142, i64 120, !142, i64 124, !137, i64 128, !142, i64 136, !142, i64 137, !142, i64 138, !142, i64 138, !142, i64 138, !142, i64 138, !142, i64 138, !142, i64 138, !142, i64 138, !142, i64 139, !142, i64 139, !142, i64 139, !142, i64 139, !142, i64 139, !142, i64 139, !142, i64 139}
!142 = !{!"int", !138, i64 0}
!143 = !{!144, !137, i64 0}
!144 = !{!"control_flow_graph", !137, i64 0, !137, i64 8, !137, i64 16, !142, i64 24, !142, i64 28, !142, i64 32, !137, i64 40, !142, i64 48, !138, i64 52, !138, i64 60, !142, i64 68, !142, i64 72}
!145 = !{!146, !137, i64 56}
!146 = !{!"basic_block_def", !137, i64 0, !137, i64 8, !137, i64 16, !137, i64 24, !138, i64 32, !137, i64 48, !137, i64 56, !138, i64 64, !147, i64 72, !142, i64 80, !142, i64 84, !142, i64 88, !142, i64 92, !142, i64 96}
!147 = !{!"long", !138, i64 0}
!148 = !{!144, !137, i64 8}
!149 = !{!"branch_weights", i32 1, i32 163}
!150 = !{!"branch_weights", i32 163, i32 749145}
!151 = distinct !{!151, !152}
!152 = !{!"llvm.loop.mustprogress"}
!153 = !{i8 0, i8 2}
!154 = !{!"branch_weights", i32 187326, i32 1}
!155 = !{!"branch_weights", i32 403813, i32 1}
!156 = !{!"branch_weights", i32 216487, i32 187326}
!157 = distinct !{!157, !152}
!158 = !{!"branch_weights", i32 1, i32 187326}
!159 = !{!"branch_weights", i32 0, i32 1}
!160 = distinct !{!160, !152}
!161 = !{!"function_entry_count", i64 113006}
!162 = !{!"branch_weights", i32 1, i32 113007}
!163 = !{!"branch_weights", i32 86, i32 14911380, i32 5418, i32 172}
!164 = !{!"branch_weights", i32 1214384, i32 -1103480116, i32 451}
!165 = !{!"branch_weights", i32 2, i32 42}
!166 = !{!"function_entry_count", i64 152}
!167 = !{!"branch_weights", i32 1, i32 152}
!168 = !{!"branch_weights", i32 815553, i32 1}
!169 = !{!"branch_weights", i32 594989, i32 815553}
!170 = distinct !{!170, !152}
!171 = !{!"branch_weights", i32 152, i32 815402}
!172 = distinct !{!172, !152}
!173 = !{!"tree-dfa.c:set_gimple_stmt_max_uid"}
!174 = !{!141, !142, i64 104}
!175 = !{!"function_entry_count", i64 1002879}
!176 = !{!"tree-dfa.c:gsi_start_bb"}
!177 = !{!178, !137, i64 0}
!178 = !{!"", !137, i64 0, !137, i64 8, !137, i64 16}
!179 = !{!178, !137, i64 8}
!180 = !{!178, !137, i64 16}
!181 = !{!"function_entry_count", i64 3004558}
!182 = !{!"tree-dfa.c:gsi_end_p"}
!183 = !{!"function_entry_count", i64 2218165}
!184 = !{!"tree-dfa.c:gsi_stmt"}
!185 = !{!186, !137, i64 0}
!186 = !{!"gimple_seq_node_d", !137, i64 0, !137, i64 8, !137, i64 16}
!187 = !{!"function_entry_count", i64 1410541}
!188 = !{!"tree-dfa.c:gimple_set_uid"}
!189 = !{!138, !138, i64 0}
!190 = !{!"tree-dfa.c:inc_gimple_stmt_max_uid"}
!191 = !{!"function_entry_count", i64 1814353}
!192 = !{!"tree-dfa.c:gsi_next"}
!193 = !{!186, !137, i64 16}
!194 = !{!"function_entry_count", i64 0}
!195 = distinct !{!195, !152}
!196 = !{i64 0, i64 8, !136, i64 8, i64 8, !136, i64 16, i64 8, !136}
!197 = distinct !{!197, !152}
!198 = distinct !{!198, !152}
!199 = !{!"function_entry_count", i64 758426}
!200 = !{!"tree-dfa.c:gimple_referenced_vars"}
!201 = !{!141, !137, i64 24}
!202 = !{!"branch_weights", i32 1, i32 758427}
!203 = !{!204, !137, i64 0}
!204 = !{!"gimple_df", !137, i64 0, !137, i64 8, !137, i64 16, !137, i64 24, !205, i64 32, !205, i64 48, !137, i64 64, !137, i64 72, !137, i64 80, !137, i64 88, !142, i64 96, !206, i64 104}
!205 = !{!"pt_solution", !142, i64 0, !142, i64 0, !142, i64 0, !142, i64 0, !142, i64 0, !142, i64 0, !137, i64 8}
!206 = !{!"ssa_operands", !137, i64 0, !142, i64 8, !142, i64 12, !138, i64 16, !137, i64 24, !137, i64 32}
!207 = !{!"function_entry_count", i64 624941}
!208 = !{!142, !142, i64 0}
!209 = !{!"branch_weights", i32 624942, i32 1}
!210 = !{!"branch_weights", i32 511846, i32 113097}
!211 = !{!"branch_weights", i32 113016, i32 82}
!212 = !{!"branch_weights", i32 80, i32 3}
!213 = distinct !{!213, !152}
!214 = !{!"tree-dfa.c:first_referenced_var"}
!215 = !{!"tree-dfa.c:end_referenced_vars_p"}
!216 = !{!"tree-dfa.c:next_referenced_var"}
!217 = !{!"function_entry_count", i64 9265}
!218 = !{!"tree-dfa.c:var_ann"}
!219 = !{!"branch_weights", i32 9266, i32 85868022, i32 1}
!220 = !{!"function_entry_count", i64 9214}
!221 = !{!"tree-dfa.c:is_global_var"}
!222 = !{!"branch_weights", i32 9215, i32 1}
!223 = !{!"tree-dfa.c:is_call_clobbered"}
!224 = !{!"tree-dfa.c:is_call_used"}
!225 = !{!"function_entry_count", i64 197626}
!226 = !{!"branch_weights", i32 512, i32 404482032, i32 1048576, i32 1024, i32 512}
!227 = !{!228, !137, i64 24}
!228 = !{!"tree_ssa_name", !229, i64 0, !137, i64 24, !137, i64 32, !142, i64 40, !137, i64 48, !231, i64 56}
!229 = !{!"tree_common", !230, i64 0, !137, i64 8, !137, i64 16}
!230 = !{!"tree_base", !142, i64 0, !142, i64 2, !142, i64 2, !142, i64 2, !142, i64 2, !142, i64 2, !142, i64 2, !142, i64 2, !142, i64 2, !142, i64 3, !142, i64 3, !142, i64 3, !142, i64 3, !142, i64 3, !142, i64 3, !142, i64 3, !142, i64 3, !142, i64 4, !142, i64 4, !142, i64 4, !142, i64 4, !142, i64 4, !142, i64 4, !142, i64 4, !142, i64 4, !142, i64 5, !142, i64 5, !142, i64 5, !142, i64 5, !142, i64 7}
!231 = !{!"ssa_use_operand_d", !137, i64 0, !137, i64 8, !138, i64 16, !137, i64 24}
!232 = !{!233, !142, i64 28}
!233 = !{!"tree_decl_minimal", !229, i64 0, !142, i64 24, !142, i64 28, !137, i64 32, !137, i64 40}
!234 = !{!204, !137, i64 80}
!235 = !{!236, !137, i64 176}
!236 = !{!"lang_hooks", !137, i64 0, !147, i64 8, !137, i64 16, !137, i64 24, !137, i64 32, !137, i64 40, !137, i64 48, !137, i64 56, !137, i64 64, !137, i64 72, !137, i64 80, !137, i64 88, !137, i64 96, !137, i64 104, !137, i64 112, !137, i64 120, !137, i64 128, !137, i64 136, !137, i64 144, !137, i64 152, !137, i64 160, !137, i64 168, !137, i64 176, !137, i64 184, !137, i64 192, !137, i64 200, !137, i64 208, !137, i64 216, !137, i64 224, !137, i64 232, !237, i64 240, !238, i64 248, !239, i64 256, !240, i64 272, !241, i64 432, !242, i64 560, !137, i64 584, !137, i64 592, !137, i64 600, !137, i64 608, !137, i64 616, !137, i64 624, !137, i64 632, !137, i64 640, !137, i64 648, !137, i64 656, !137, i64 664, !138, i64 672}
!237 = !{!"lang_hooks_for_tree_inlining", !137, i64 0}
!238 = !{!"lang_hooks_for_callgraph", !137, i64 0}
!239 = !{!"lang_hooks_for_tree_dump", !137, i64 0, !137, i64 8}
!240 = !{!"lang_hooks_for_decls", !137, i64 0, !137, i64 8, !137, i64 16, !137, i64 24, !137, i64 32, !137, i64 40, !137, i64 48, !137, i64 56, !137, i64 64, !137, i64 72, !137, i64 80, !137, i64 88, !137, i64 96, !137, i64 104, !137, i64 112, !137, i64 120, !137, i64 128, !137, i64 136, !137, i64 144, !137, i64 152}
!241 = !{!"lang_hooks_for_types", !137, i64 0, !137, i64 8, !137, i64 16, !137, i64 24, !137, i64 32, !137, i64 40, !137, i64 48, !137, i64 56, !137, i64 64, !137, i64 72, !137, i64 80, !137, i64 88, !137, i64 96, !137, i64 104, !137, i64 112, !138, i64 120}
!242 = !{!"lang_hooks_for_lto", !137, i64 0, !137, i64 8, !137, i64 16}
!243 = !{!244, !147, i64 0}
!244 = !{!"dfa_stats_d", !147, i64 0, !147, i64 8, !147, i64 16, !147, i64 24, !147, i64 32, !147, i64 40, !147, i64 48, !147, i64 56}
!245 = !{!244, !147, i64 16}
!246 = !{!244, !147, i64 8}
!247 = !{!244, !147, i64 56}
!248 = !{!244, !147, i64 48}
!249 = !{!244, !147, i64 24}
!250 = !{!244, !147, i64 32}
!251 = !{!244, !147, i64 40}
!252 = !{!"tree-dfa.c:collect_dfa_stats"}
!253 = distinct !{!253, !152}
!254 = distinct !{!254, !152}
!255 = distinct !{!255, !152}
!256 = distinct !{!256, !152}
!257 = !{!"function_entry_count", i64 403812}
!258 = !{i32 0, i32 256}
!259 = !{!"branch_weights", i32 1, i32 403813}
!260 = !{!"branch_weights", i32 1, i32 403812}
!261 = !{!"branch_weights", i32 896142, i32 403812}
!262 = distinct !{!262, !152}
!263 = distinct !{!263, !152}
!264 = !{!"function_entry_count", i64 4714309}
!265 = !{!"tree-dfa.c:gimple_code"}
!266 = !{!"function_entry_count", i64 1703765}
!267 = !{!"tree-dfa.c:gimple_num_ops"}
!268 = !{!"function_entry_count", i64 1299953}
!269 = !{!"tree-dfa.c:gimple_op_ptr"}
!270 = !{!"branch_weights", i32 1, i32 1299954}
!271 = !{!"function_entry_count", i64 1088842}
!272 = !{!"tree-dfa.c:find_vars_r"}
!273 = !{!"branch_weights", i32 -797427502, i32 7508, i32 -30626024, i32 414462159, i32 7509}
!274 = !{!"branch_weights", i32 -586796713, i32 1097617389}
!275 = !{!"tree-dfa.c:gimple_phi_result_ptr"}
!276 = !{!"tree-dfa.c:gimple_phi_num_args"}
!277 = !{!"tree-dfa.c:gimple_phi_arg_def"}
!278 = !{!"function_entry_count", i64 1961}
!279 = !{!"branch_weights", i32 1, i32 1962}
!280 = !{!"branch_weights", i32 113097, i32 511846}
!281 = !{!"branch_weights", i32 511846, i32 1}
!282 = !{!"function_entry_count", i64 81}
!283 = !{!"branch_weights", i32 42, i32 7052, i32 7056, i32 84, i32 42}
!284 = !{!"branch_weights", i32 1, i32 82}
!285 = !{!"branch_weights", i32 82, i32 1}
!286 = !{!"tree-dfa.c:get_var_ann"}
!287 = !{!"branch_weights", i32 206918943, i32 -1952098174, i32 20046238, i32 7497}
!288 = !{!"branch_weights", i32 112607, i32 512336}
!289 = !{!"branch_weights", i32 1, i32 9215}
!290 = !{!"branch_weights", i32 9215, i32 84925440, i32 1}
!291 = !{!"function_entry_count", i64 2052}
!292 = !{!"branch_weights", i32 2053, i32 1}
!293 = !{!"branch_weights", i32 4107, i32 4214809}
!294 = distinct !{!294, !152}
!295 = !{!"branch_weights", i32 1, i32 16424, i32 4, i32 2, i32 1}
!296 = !{!"tree-dfa.c:handled_component_p"}
!297 = !{!"branch_weights", i32 2053, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1}
!298 = !{!"function_entry_count", i64 1109}
!299 = !{!"branch_weights", i32 1109, i32 1}
!300 = !{!"branch_weights", i32 461, i32 2032}
!301 = !{!"branch_weights", i32 1383, i32 1109}
!302 = distinct !{!302, !152}
!303 = !{!"tree-dfa.c:update_stmt"}
!304 = !{!"branch_weights", i32 1, i32 1110}
!305 = !{!"tree-dfa.c:op_iter_init_tree"}
!306 = !{!307, !142, i64 4}
!307 = !{!"ssa_operand_iterator_d", !138, i64 0, !142, i64 4, !137, i64 8, !137, i64 16, !142, i64 24, !142, i64 28, !137, i64 32}
!308 = !{!"function_entry_count", i64 3692}
!309 = !{!"tree-dfa.c:op_iter_done"}
!310 = !{!307, !138, i64 0}
!311 = !{!"function_entry_count", i64 3600}
!312 = !{!"tree-dfa.c:op_iter_next_tree"}
!313 = !{!307, !137, i64 16}
!314 = !{!"branch_weights", i32 2200, i32 1402}
!315 = !{!316, !137, i64 0}
!316 = !{!"use_optype_d", !137, i64 0, !231, i64 8}
!317 = !{!307, !137, i64 8}
!318 = !{!"branch_weights", i32 1110, i32 1091}
!319 = !{!320, !137, i64 8}
!320 = !{!"def_optype_d", !137, i64 0, !137, i64 8}
!321 = !{!320, !137, i64 0}
!322 = !{!"function_entry_count", i64 334}
!323 = !{!"function_entry_count", i64 2414}
!324 = !{!"tree-dfa.c:find_new_referenced_vars_1"}
!325 = !{!"branch_weights", i32 52, i32 2364}
!326 = !{!"branch_weights", i32 1, i32 52}
!327 = !{!"branch_weights", i32 1499716, i32 4337340}
!328 = !{!"function_entry_count", i64 247635}
!329 = !{!"branch_weights", i32 -558518294, i32 47846963, i32 15281}
!330 = !{!"branch_weights", i32 -558518294, i32 15281, i32 15281}
!331 = !{!"branch_weights", i32 1, i32 244506}
!332 = !{!"branch_weights", i32 1370911, i32 2146112737}
!333 = !{!"branch_weights", i32 1, i32 3131}
!334 = !{!"branch_weights", i32 247636, i32 1, i32 63156, i32 65913, i32 1, i32 1, i32 1, i32 1}
!335 = !{!"branch_weights", i32 1, i32 63156}
!336 = !{!"branch_weights", i32 63156, i32 1}
!337 = !{!"branch_weights", i32 63108, i32 49}
!338 = !{!"branch_weights", i32 1, i32 49}
!339 = !{!"branch_weights", i32 49, i32 1}
!340 = distinct !{!340, !152}
!341 = !{!"branch_weights", i32 65889, i32 25}
!342 = !{!"branch_weights", i32 1, i32 65889}
!343 = !{!"branch_weights", i32 625, i32 51}
!344 = !{!"branch_weights", i32 1, i32 25}
!345 = !{!"branch_weights", i32 244270, i32 3367}
!346 = !{!"branch_weights", i32 1, i32 244270}
!347 = !{!"branch_weights", i32 3343, i32 25}
!348 = !{!"branch_weights", i32 25, i32 1}
!349 = !{!147, !147, i64 0}
!350 = !{!"function_entry_count", i64 43}
!351 = !{!"branch_weights", i32 175, i32 1}
!352 = !{!"branch_weights", i32 50, i32 1}
!353 = !{!"branch_weights", i32 25, i32 175}
!354 = distinct !{!354, !152}
!355 = !{!"tree-dfa.c:op_iter_init_use"}
!356 = !{!"function_entry_count", i64 1450}
!357 = !{!"tree-dfa.c:get_use_from_ptr"}
!358 = !{!231, !137, i64 24}
!359 = !{!"function_entry_count", i64 92}
!360 = !{!"tree-dfa.c:op_iter_next_use"}
!361 = !{!"branch_weights", i32 44, i32 50}
!362 = !{!307, !142, i64 24}
!363 = !{!307, !142, i64 28}
!364 = !{!"branch_weights", i32 1, i32 44}
!365 = !{!307, !137, i64 32}
!366 = !{!"tree-dfa.c:is_gimple_debug"}
!367 = !{!"tree-dfa.c:bb_seq"}
!368 = !{!146, !142, i64 96}
!369 = !{!"branch_weights", i32 1002880, i32 1}
!370 = !{!"branch_weights", i32 305, i32 1002576}
!371 = !{!372, !137, i64 0}
!372 = !{!"gimple_bb_info", !137, i64 0, !137, i64 8}
!373 = !{!"tree-dfa.c:gimple_seq_first"}
!374 = !{!375, !137, i64 0}
!375 = !{!"gimple_seq_d", !137, i64 0, !137, i64 8, !137, i64 16}
!376 = !{!"tree-dfa.c:first_htab_element"}
!377 = !{!378, !137, i64 24}
!378 = !{!"htab", !137, i64 0, !137, i64 8, !137, i64 16, !137, i64 24, !147, i64 32, !147, i64 40, !147, i64 48, !142, i64 56, !142, i64 60, !137, i64 64, !137, i64 72, !137, i64 80, !137, i64 88, !137, i64 96, !142, i64 104}
!379 = distinct !{!379, !152}
!380 = !{!"tree-dfa.c:end_htab_p"}
!381 = !{!"tree-dfa.c:next_htab_element"}
!382 = !{!"tree-dfa.c:may_be_aliased"}
!383 = !{!"tree-dfa.c:num_ssa_operands"}
!384 = distinct !{!384, !152}
!385 = !{!"tree-dfa.c:gimple_vdef"}
!386 = !{!"tree-dfa.c:gimple_vuse"}
!387 = !{!"tree-dfa.c:gimple_has_mem_ops"}
!388 = !{!"function_entry_count", i64 1303323}
!389 = !{!"tree-dfa.c:gimple_has_ops"}
!390 = !{!"tree-dfa.c:gimple_ops"}
!391 = !{!"tree-dfa.c:gimple_statement_structure"}
!392 = !{!"tree-dfa.c:gss_for_code"}
!393 = !{!"tree-dfa.c:gimple_phi_arg"}
!394 = !{!"function_entry_count", i64 1152}
!395 = !{!"tree-dfa.c:op_iter_init"}
!396 = !{!"branch_weights", i32 5556673, i32 -1090045405}
!397 = !{!"branch_weights", i32 44, i32 1110}
!398 = !{!"branch_weights", i32 2145591971, i32 1891677}
!399 = !{!"branch_weights", i32 1, i32 1153}
!400 = !{!"branch_weights", i32 2067353969, i32 80129679}
!401 = !{!"branch_weights", i32 44, i32 1}
!402 = !{!"tree-dfa.c:gimple_def_ops"}
!403 = !{!"tree-dfa.c:gimple_use_ops"}
!404 = !{!"function_entry_count", i64 1090}
!405 = !{!"tree-dfa.c:get_def_from_ptr"}
!406 = !{!"tree-dfa.c:gimple_phi_arg_imm_use_ptr"}
