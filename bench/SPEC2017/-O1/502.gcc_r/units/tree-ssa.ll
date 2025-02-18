; ModuleID = 'tree-ssa.c'
source_filename = "tree-ssa.c"
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
%struct.gimple_opt_pass = type { %struct.opt_pass }
%struct.opt_pass = type { i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct._IO_FILE = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, [1 x i8], ptr, i64, ptr, ptr, ptr, ptr, i64, i32, [20 x i8] }
%struct.VEC_edge_var_map_base = type { i32, i32, [1 x %struct._edge_var_map] }
%struct._edge_var_map = type { ptr, ptr, i32 }
%struct.gimple_stmt_iterator = type { ptr, ptr, ptr }
%struct.edge_def = type { ptr, ptr, %union.edge_def_insns, ptr, ptr, i32, i32, i32, i32, i64 }
%union.edge_def_insns = type { ptr }
%struct.gimple_statement_phi = type { %struct.gimple_statement_base, i32, i32, ptr, [1 x %struct.phi_arg_d] }
%struct.gimple_statement_base = type { i32, i32, i32, i32, ptr, ptr }
%struct.phi_arg_d = type { %struct.ssa_use_operand_d, ptr, i32 }
%struct.ssa_use_operand_d = type { ptr, ptr, %union.anon, ptr }
%union.anon = type { ptr }
%struct.gimple_seq_node_d = type { ptr, ptr, ptr }
%struct.tree_decl_common = type { %struct.tree_decl_minimal, ptr, i40, i32, ptr, ptr, ptr, ptr, ptr }
%struct.tree_decl_minimal = type { %struct.tree_common, i32, i32, ptr, ptr }
%struct.tree_common = type { %struct.tree_base, ptr, ptr }
%struct.tree_base = type { i64 }
%struct.immediate_use_iterator_d = type { ptr, ptr, %struct.ssa_use_operand_d, ptr }
%struct.walk_stmt_info = type { %struct.gimple_stmt_iterator, ptr, ptr, i8, i8, i8, i8, ptr }
%struct.tree_ssa_name = type { %struct.tree_common, ptr, ptr, i32, ptr, %struct.ssa_use_operand_d }
%struct.tree_type = type { %struct.tree_common, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, %union.tree_type_symtab, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.tree_type_symtab = type { ptr }
%struct.gimple_statement_with_ops_base = type { %struct.gimple_statement_base, ptr, ptr }
%struct.gimple_statement_with_memory_ops_base = type { %struct.gimple_statement_with_ops_base, ptr, ptr }
%struct.def_optype_d = type { ptr, ptr }
%struct.bitmap_element_def = type { ptr, ptr, i32, [2 x i64] }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.gimple_df = type { ptr, ptr, ptr, ptr, %struct.pt_solution, %struct.pt_solution, ptr, ptr, ptr, ptr, i8, %struct.ssa_operands }
%struct.pt_solution = type { i8, ptr }
%struct.ssa_operands = type { ptr, i32, i32, i8, ptr, ptr }
%struct.VEC_tree_base = type { i32, i32, [1 x ptr] }
%struct.basic_block_def = type { ptr, ptr, ptr, ptr, [2 x ptr], ptr, ptr, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%union.basic_block_il_dependent = type { ptr }
%struct.control_flow_graph = type { ptr, ptr, ptr, i32, i32, i32, ptr, i32, [2 x i32], [2 x i32], i32, i32 }
%struct.VEC_edge_base = type { i32, i32, [1 x ptr] }
%struct.tree_exp = type { %struct.tree_common, i32, ptr, [1 x ptr] }
%struct.use_optype_d = type { ptr, %struct.ssa_use_operand_d }
%struct.ssa_operand_iterator_d = type { i8, i32, ptr, ptr, i32, i32, ptr }
%struct.htab = type { ptr, ptr, ptr, ptr, i64, i64, i64, i32, i32, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.tree_var_decl = type { %struct.tree_decl_with_vis, ptr }
%struct.tree_decl_with_vis = type { %struct.tree_decl_with_rtl, ptr, ptr, ptr, i24 }
%struct.tree_decl_with_rtl = type { %struct.tree_decl_common, ptr }
%struct.tree_parm_decl = type { %struct.tree_decl_with_rtl, ptr, ptr }
%struct.tree_result_decl = type { %struct.tree_decl_with_rtl, ptr }
%struct.tree_list = type { %struct.tree_common, ptr, ptr }
%struct.walk_data = type { ptr, i8, i8 }
%struct.expanded_location = type { ptr, i32, i32, i8 }

@stdout = external local_unnamed_addr global ptr, align 8
@stdin = external local_unnamed_addr global ptr, align 8
@edge_var_maps = internal unnamed_addr global ptr null, align 8
@flag_var_tracking_assignments = external local_unnamed_addr global i32, align 4
@tree_code_type = external local_unnamed_addr constant [0 x i32], align 4
@cfun = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [11 x i8] c"tree-ssa.c\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@timevar_enable = external local_unnamed_addr global i8, align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"AUX pointer initialized for edge %d->%d\00", align 1
@.str.3 = private unnamed_addr constant [52 x i8] c"stmt (%p) marked modified after optimization pass: \00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@optimize = external local_unnamed_addr global i32, align 4
@.str.4 = private unnamed_addr constant [49 x i8] c"statement makes a memory store, but has no VDEFS\00", align 1
@.str.5 = private unnamed_addr constant [44 x i8] c"statement has VDEF operand not in defs list\00", align 1
@.str.6 = private unnamed_addr constant [39 x i8] c"statement has VDEF but no VUSE operand\00", align 1
@.str.7 = private unnamed_addr constant [41 x i8] c"VDEF and VUSE do not use the same symbol\00", align 1
@.str.8 = private unnamed_addr constant [44 x i8] c"statement has VUSE operand not in uses list\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"in statement\00", align 1
@.str.10 = private unnamed_addr constant [27 x i8] c"SSA_NAME_DEF_STMT is wrong\00", align 1
@.str.11 = private unnamed_addr constant [32 x i8] c"Expected definition statement:\0A\00", align 1
@.str.12 = private unnamed_addr constant [31 x i8] c"\0AActual definition statement:\0A\00", align 1
@.str.13 = private unnamed_addr constant [18 x i8] c"verify_ssa failed\00", align 1
@targetm = external local_unnamed_addr global %struct.gcc_target, align 8
@.str.14 = private unnamed_addr constant [26 x i8] c"*early_warn_uninitialized\00", align 1
@pass_early_warn_uninitialized = dso_local local_unnamed_addr global %struct.gimple_opt_pass { %struct.opt_pass { i32 0, ptr @.str.14, ptr @gate_warn_uninitialized, ptr @execute_early_warn_uninitialized, ptr null, ptr null, i32 0, i32 0, i32 32, i32 0, i32 0, i32 0, i32 0 } }, align 8
@.str.15 = private unnamed_addr constant [25 x i8] c"*late_warn_uninitialized\00", align 1
@pass_late_warn_uninitialized = dso_local local_unnamed_addr global %struct.gimple_opt_pass { %struct.opt_pass { i32 0, ptr @.str.15, ptr @gate_warn_uninitialized, ptr @execute_late_warn_uninitialized, ptr null, ptr null, i32 0, i32 0, i32 32, i32 0, i32 0, i32 0, i32 0 } }, align 8
@dump_file = external local_unnamed_addr global ptr, align 8
@.str.16 = private unnamed_addr constant [32 x i8] c"No longer having address taken \00", align 1
@.str.18 = private unnamed_addr constant [31 x i8] c"Decl is now a gimple register \00", align 1
@.str.19 = private unnamed_addr constant [13 x i8] c"addressables\00", align 1
@pass_update_address_taken = dso_local local_unnamed_addr global %struct.gimple_opt_pass { %struct.opt_pass { i32 0, ptr @.str.19, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i32 32, i32 0, i32 0, i32 0, i32 2097153 } }, align 8
@.str.20 = private unnamed_addr constant [11 x i8] c"./gimple.h\00", align 1
@gimple_ops_offset_ = external local_unnamed_addr constant [0 x i64], align 8
@gss_for_code_ = external local_unnamed_addr constant [0 x i32], align 4
@.str.21 = private unnamed_addr constant [21 x i8] c"./tree-flow-inline.h\00", align 1
@.str.22 = private unnamed_addr constant [51 x i8] c"SSA_NAME created in two different blocks %i and %i\00", align 1
@.str.23 = private unnamed_addr constant [26 x i8] c"while verifying SSA_NAME \00", align 1
@.str.24 = private unnamed_addr constant [15 x i8] c" in statement\0A\00", align 1
@.str.25 = private unnamed_addr constant [16 x i8] c"./basic-block.h\00", align 1
@.str.26 = private unnamed_addr constant [59 x i8] c"incoming edge count does not match number of PHI arguments\00", align 1
@.str.27 = private unnamed_addr constant [40 x i8] c"PHI argument is missing for edge %d->%d\00", align 1
@.str.28 = private unnamed_addr constant [43 x i8] c"PHI argument is not SSA_NAME, or invariant\00", align 1
@.str.29 = private unnamed_addr constant [43 x i8] c"address taken, but ADDRESSABLE bit not set\00", align 1
@.str.30 = private unnamed_addr constant [35 x i8] c"wrong edge %d->%d for PHI argument\00", align 1
@.str.31 = private unnamed_addr constant [14 x i8] c"PHI argument\0A\00", align 1
@.str.32 = private unnamed_addr constant [14 x i8] c"for PHI node\0A\00", align 1
@.str.33 = private unnamed_addr constant [28 x i8] c"expected an SSA_NAME object\00", align 1
@.str.34 = private unnamed_addr constant [49 x i8] c"type mismatch between an SSA_NAME and its symbol\00", align 1
@.str.35 = private unnamed_addr constant [60 x i8] c"found an SSA_NAME that had been released into the free pool\00", align 1
@.str.36 = private unnamed_addr constant [49 x i8] c"found a virtual definition for a GIMPLE register\00", align 1
@.str.37 = private unnamed_addr constant [34 x i8] c"virtual SSA name for non-VOP decl\00", align 1
@.str.38 = private unnamed_addr constant [43 x i8] c"found a real definition for a non-register\00", align 1
@.str.39 = private unnamed_addr constant [57 x i8] c"found a default name with a non-empty defining statement\00", align 1
@.str.40 = private unnamed_addr constant [19 x i8] c"missing definition\00", align 1
@.str.41 = private unnamed_addr constant [57 x i8] c"definition in block %i does not dominate use in block %i\00", align 1
@.str.42 = private unnamed_addr constant [39 x i8] c"definition in block %i follows the use\00", align 1
@.str.43 = private unnamed_addr constant [46 x i8] c"SSA_NAME_OCCURS_IN_ABNORMAL_PHI should be set\00", align 1
@.str.44 = private unnamed_addr constant [22 x i8] c"no immediate_use list\00", align 1
@.str.45 = private unnamed_addr constant [25 x i8] c"wrong immediate use list\00", align 1
@.str.46 = private unnamed_addr constant [15 x i8] c"for SSA_NAME: \00", align 1
@.str.47 = private unnamed_addr constant [16 x i8] c" in statement:\0A\00", align 1
@warn_uninitialized = external local_unnamed_addr global i32, align 4
@.str.48 = private unnamed_addr constant [43 x i8] c"%qD is used uninitialized in this function\00", align 1
@.str.49 = private unnamed_addr constant [47 x i8] c"%qD may be used uninitialized in this function\00", align 1
@.str.50 = private unnamed_addr constant [22 x i8] c"%qD was declared here\00", align 1

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @vprintf(ptr noalias nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 !prof !81 {
  %3 = load ptr, ptr @stdout, align 8, !tbaa !82
  %4 = tail call i32 @vfprintf(ptr noundef %3, ptr noundef %0, ptr noundef %1)
  ret i32 %4
}

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @getchar() local_unnamed_addr #0 !prof !81 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !82
  %2 = tail call i32 @getc(ptr noundef %1)
  ret i32 %2
}

; Function Attrs: nofree nounwind
declare noundef i32 @getc(ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !81 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !86
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !91
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !92

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #24
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !86
  %11 = load i8, ptr %3, align 1, !tbaa !93
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

declare i32 @__uflow(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !81 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !86
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !91
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !92

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #24
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !86
  %11 = load i8, ptr %3, align 1, !tbaa !93
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #2 !prof !81 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !82
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !86
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !91
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !92

7:                                                ; preds = %0
  %8 = tail call i32 @__uflow(ptr noundef %1) #24
  br label %13

9:                                                ; preds = %0
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !86
  %11 = load i8, ptr %3, align 1, !tbaa !93
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @putchar(i32 noundef %0) local_unnamed_addr #0 !prof !81 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !82
  %3 = tail call i32 @putc(i32 noundef %0, ptr noundef %2)
  ret i32 %3
}

; Function Attrs: nofree nounwind
declare noundef i32 @putc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !81 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !94
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !95
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !92

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #24
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !94
  store i8 %12, ptr %4, align 1, !tbaa !93
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

declare i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !81 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !94
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !95
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !92

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #24
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !94
  store i8 %12, ptr %4, align 1, !tbaa !93
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 noundef %0) local_unnamed_addr #2 !prof !81 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !82
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !94
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !95
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !92

8:                                                ; preds = %1
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %2, i32 noundef %9) #24
  br label %15

11:                                               ; preds = %1
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !94
  store i8 %12, ptr %4, align 1, !tbaa !93
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i64 @getline(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 !prof !81 {
  %4 = tail call i64 @__getdelim(ptr noundef %0, ptr noundef %1, i32 noundef 10, ptr noundef %2) #24
  ret i64 %4
}

declare i64 @__getdelim(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @feof_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !81 {
  %2 = load i32, ptr %0, align 8, !tbaa !96
  %3 = lshr i32 %2, 4
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @ferror_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !81 {
  %2 = load i32, ptr %0, align 8, !tbaa !96
  %3 = lshr i32 %2, 5
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @tolower(i32 noundef %0) local_unnamed_addr #5 !prof !81 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_tolower_loc() #24
  %6 = load ptr, ptr %5, align 8, !tbaa !82
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !97
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_tolower_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @toupper(i32 noundef %0) local_unnamed_addr #5 !prof !81 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_toupper_loc() #24
  %6 = load ptr, ptr %5, align 8, !tbaa !82
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !97
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_toupper_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i32 @atoi(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !81 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  %3 = trunc i64 %2 to i32
  ret i32 %3
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atol(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !81 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atoll(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !81 {
  %2 = tail call i64 @strtoll(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtoll(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local noundef ptr @bsearch(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #2 !prof !81 {
  %6 = icmp eq i64 %2, 0
  br i1 %6, label %24, label %7

7:                                                ; preds = %5, %20
  %8 = phi i64 [ %22, %20 ], [ 0, %5 ]
  %9 = phi i64 [ %21, %20 ], [ %2, %5 ]
  %10 = add i64 %8, %9
  %11 = lshr i64 %10, 1
  %12 = mul i64 %11, %3
  %13 = getelementptr inbounds i8, ptr %1, i64 %12
  %14 = tail call i32 %4(ptr noundef %0, ptr noundef %13) #24
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %7
  %17 = icmp eq i32 %14, 0
  br i1 %17, label %24, label %18

18:                                               ; preds = %16
  %19 = add nuw i64 %11, 1
  br label %20

20:                                               ; preds = %7, %18
  %21 = phi i64 [ %9, %18 ], [ %11, %7 ]
  %22 = phi i64 [ %19, %18 ], [ %8, %7 ]
  %23 = icmp ult i64 %22, %21
  br i1 %23, label %7, label %24, !llvm.loop !98

24:                                               ; preds = %16, %20, %5
  %25 = phi ptr [ null, %5 ], [ %13, %16 ], [ null, %20 ]
  ret ptr %25
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local double @atof(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !81 {
  %2 = tail call double @strtod(ptr nocapture noundef %0, ptr noundef null)
  ret double %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: inlinehint nounwind uwtable
define dso_local void @redirect_edge_var_map_add(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #9 !prof !81 {
  %5 = load ptr, ptr @edge_var_maps, align 8, !tbaa !82
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %9, !prof !101

7:                                                ; preds = %4
  %8 = tail call ptr @pointer_map_create() #24
  store ptr %8, ptr @edge_var_maps, align 8, !tbaa !82
  br label %9

9:                                                ; preds = %7, %4
  %10 = load ptr, ptr @edge_var_maps, align 8, !tbaa !82
  %11 = tail call ptr @pointer_map_insert(ptr noundef %10, ptr noundef %0) #24
  %12 = load ptr, ptr %11, align 8, !tbaa !82
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %16, !prof !102

14:                                               ; preds = %9
  %15 = tail call ptr @vec_heap_o_reserve_exact(ptr noundef null, i32 noundef 5, i64 noundef 8, i64 noundef 24) #24
  store ptr %15, ptr %11, align 8, !tbaa !82
  br label %16

16:                                               ; preds = %14, %9
  %17 = phi ptr [ %15, %14 ], [ %12, %9 ]
  %18 = icmp eq ptr %17, null
  br i1 %18, label %24, label %19, !prof !103

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.VEC_edge_var_map_base, ptr %17, i64 0, i32 1
  %21 = load i32, ptr %20, align 4, !tbaa !104
  %22 = load i32, ptr %17, align 8, !tbaa !106
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %26, !prof !103

24:                                               ; preds = %16, %19
  %25 = tail call ptr @vec_heap_o_reserve(ptr noundef %17, i32 noundef 1, i64 noundef 8, i64 noundef 24) #24
  br label %26

26:                                               ; preds = %19, %24
  %27 = phi ptr [ %25, %24 ], [ %17, %19 ]
  %28 = load i32, ptr %27, align 8, !tbaa !106
  %29 = add i32 %28, 1
  store i32 %29, ptr %27, align 8, !tbaa !106
  %30 = zext i32 %28 to i64
  %31 = getelementptr inbounds %struct.VEC_edge_var_map_base, ptr %27, i64 0, i32 2, i64 %30
  store ptr %1, ptr %31, align 8, !tbaa.struct !107
  %32 = getelementptr inbounds i8, ptr %31, i64 8
  store ptr %2, ptr %32, align 8, !tbaa.struct !108
  %33 = getelementptr inbounds i8, ptr %31, i64 16
  store i32 %3, ptr %33, align 8, !tbaa.struct !109
  %34 = icmp eq ptr %12, %27
  br i1 %34, label %36, label %35, !prof !110

35:                                               ; preds = %26
  store ptr %27, ptr %11, align 8, !tbaa !82
  br label %36

36:                                               ; preds = %35, %26
  ret void
}

declare ptr @pointer_map_create() local_unnamed_addr #3

declare ptr @pointer_map_insert(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define dso_local void @redirect_edge_var_map_clear(ptr noundef %0) local_unnamed_addr #9 !prof !111 {
  %2 = load ptr, ptr @edge_var_maps, align 8, !tbaa !82
  %3 = icmp eq ptr %2, null
  br i1 %3, label %12, label %4, !prof !112

4:                                                ; preds = %1
  %5 = tail call ptr @pointer_map_contains(ptr noundef nonnull %2, ptr noundef %0) #24
  %6 = icmp eq ptr %5, null
  br i1 %6, label %12, label %7, !prof !113

7:                                                ; preds = %4
  %8 = load ptr, ptr %5, align 8, !tbaa !82
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10, !prof !114

10:                                               ; preds = %7
  tail call void @free(ptr noundef %8)
  br label %11

11:                                               ; preds = %7, %10
  store ptr null, ptr %5, align 8, !tbaa !82
  br label %12

12:                                               ; preds = %4, %11, %1
  ret void
}

declare ptr @pointer_map_contains(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @redirect_edge_var_map_dup(ptr noundef %0, ptr noundef %1) local_unnamed_addr #10 !prof !115 {
  %3 = load ptr, ptr @edge_var_maps, align 8, !tbaa !82
  %4 = icmp eq ptr %3, null
  br i1 %4, label %26, label %5, !prof !116

5:                                                ; preds = %2
  %6 = tail call ptr @pointer_map_insert(ptr noundef nonnull %3, ptr noundef %0) #24
  %7 = load ptr, ptr @edge_var_maps, align 8, !tbaa !82
  %8 = tail call ptr @pointer_map_contains(ptr noundef %7, ptr noundef %1) #24
  %9 = icmp eq ptr %8, null
  br i1 %9, label %26, label %10, !prof !117

10:                                               ; preds = %5
  %11 = load ptr, ptr %8, align 8, !tbaa !82
  %12 = icmp eq ptr %11, null
  br i1 %12, label %22, label %13

13:                                               ; preds = %10
  %14 = load i32, ptr %11, align 8, !tbaa !106
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %24, label %16

16:                                               ; preds = %13
  %17 = zext i32 %14 to i64
  %18 = tail call ptr @vec_heap_o_reserve_exact(ptr noundef null, i32 noundef %14, i64 noundef 8, i64 noundef 24) #24
  store i32 %14, ptr %18, align 8, !tbaa !118
  %19 = getelementptr inbounds %struct.VEC_edge_var_map_base, ptr %18, i64 0, i32 2
  %20 = getelementptr inbounds %struct.VEC_edge_var_map_base, ptr %11, i64 0, i32 2
  %21 = mul nuw nsw i64 %17, 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %19, ptr nonnull align 8 %20, i64 %21, i1 false)
  br label %24

22:                                               ; preds = %10
  %23 = tail call ptr @vec_heap_o_reserve_exact(ptr noundef null, i32 noundef 5, i64 noundef 8, i64 noundef 24) #24
  br label %24

24:                                               ; preds = %16, %13, %22
  %25 = phi ptr [ %23, %22 ], [ %18, %16 ], [ null, %13 ]
  store ptr %25, ptr %6, align 8, !tbaa !82
  br label %26

26:                                               ; preds = %5, %2, %24
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local ptr @redirect_edge_var_map_vector(ptr noundef %0) local_unnamed_addr #9 !prof !120 {
  %2 = load ptr, ptr @edge_var_maps, align 8, !tbaa !82
  %3 = icmp eq ptr %2, null
  br i1 %3, label %9, label %4, !prof !121

4:                                                ; preds = %1
  %5 = tail call ptr @pointer_map_contains(ptr noundef nonnull %2, ptr noundef %0) #24
  %6 = icmp eq ptr %5, null
  br i1 %6, label %9, label %7, !prof !122

7:                                                ; preds = %4
  %8 = load ptr, ptr %5, align 8, !tbaa !82
  br label %9

9:                                                ; preds = %4, %1, %7
  %10 = phi ptr [ %8, %7 ], [ null, %1 ], [ null, %4 ]
  ret ptr %10
}

; Function Attrs: nounwind uwtable
define dso_local void @redirect_edge_var_map_destroy() local_unnamed_addr #10 !prof !81 {
  %1 = load ptr, ptr @edge_var_maps, align 8, !tbaa !82
  %2 = icmp eq ptr %1, null
  br i1 %2, label %5, label %3, !prof !123

3:                                                ; preds = %0
  tail call void @pointer_map_traverse(ptr noundef nonnull %1, ptr noundef nonnull @free_var_map_entry, ptr noundef null) #24
  %4 = load ptr, ptr @edge_var_maps, align 8, !tbaa !82
  tail call void @pointer_map_destroy(ptr noundef %4) #24
  store ptr null, ptr @edge_var_maps, align 8, !tbaa !82
  br label %5

5:                                                ; preds = %3, %0
  ret void
}

declare void @pointer_map_traverse(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress nounwind willreturn uwtable
define internal noundef zeroext i8 @free_var_map_entry(ptr nocapture readnone %0, ptr nocapture noundef readonly %1, ptr nocapture readnone %2) #11 !prof !124 !PGOFuncName !125 {
  %4 = load ptr, ptr %1, align 8, !tbaa !82
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6, !prof !126

6:                                                ; preds = %3
  tail call void @free(ptr noundef %4)
  br label %7

7:                                                ; preds = %3, %6
  ret i8 1
}

declare void @pointer_map_destroy(ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define dso_local ptr @ssa_redirect_edge(ptr noundef %0, ptr noundef %1) local_unnamed_addr #9 !prof !127 {
  %3 = alloca %struct.gimple_stmt_iterator, align 8
  %4 = load ptr, ptr @edge_var_maps, align 8, !tbaa !82
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6, !prof !112

6:                                                ; preds = %2
  %7 = tail call ptr @pointer_map_contains(ptr noundef nonnull %4, ptr noundef %0) #24
  %8 = icmp eq ptr %7, null
  br i1 %8, label %14, label %9, !prof !113

9:                                                ; preds = %6
  %10 = load ptr, ptr %7, align 8, !tbaa !82
  %11 = icmp eq ptr %10, null
  br i1 %11, label %13, label %12, !prof !114

12:                                               ; preds = %9
  tail call void @free(ptr noundef %10)
  br label %13

13:                                               ; preds = %12, %9
  store ptr null, ptr %7, align 8, !tbaa !82
  br label %14

14:                                               ; preds = %2, %6, %13
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #24
  %15 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !128
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %3, ptr noundef %16) #24
  %17 = load ptr, ptr %3, align 8, !tbaa.struct !130
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #24
  %18 = icmp eq ptr %17, null
  br i1 %18, label %81, label %19, !prof !131

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 6
  br label %21

21:                                               ; preds = %19, %77
  %22 = phi ptr [ %17, %19 ], [ %79, %77 ]
  %23 = load ptr, ptr %22, align 8, !tbaa !132
  %24 = load i32, ptr %20, align 4, !tbaa !134
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds %struct.gimple_statement_phi, ptr %23, i64 0, i32 1
  %27 = load i32, ptr %26, align 8, !tbaa !93
  %28 = icmp ult i32 %27, %24
  br i1 %28, label %29, label %30, !prof !103

29:                                               ; preds = %21
  call void @fancy_abort(ptr noundef nonnull @.str.20, i32 noundef 3103, ptr noundef nonnull @.str.1) #24
  br label %30

30:                                               ; preds = %21, %29
  %31 = getelementptr inbounds %struct.gimple_statement_phi, ptr %23, i64 0, i32 4, i64 %25, i32 0, i32 3
  %32 = load ptr, ptr %31, align 8, !tbaa !135
  %33 = load ptr, ptr %32, align 8, !tbaa !82
  %34 = load i32, ptr %20, align 4, !tbaa !134
  %35 = zext i32 %34 to i64
  %36 = load i32, ptr %26, align 8, !tbaa !93
  %37 = icmp ult i32 %36, %34
  br i1 %37, label %38, label %39, !prof !103

38:                                               ; preds = %30
  call void @fancy_abort(ptr noundef nonnull @.str.20, i32 noundef 3103, ptr noundef nonnull @.str.1) #24
  br label %39

39:                                               ; preds = %30, %38
  %40 = icmp eq ptr %33, null
  br i1 %40, label %77, label %41, !prof !103

41:                                               ; preds = %39
  %42 = getelementptr inbounds %struct.gimple_statement_phi, ptr %23, i64 0, i32 4, i64 %35, i32 2
  %43 = load i32, ptr %42, align 8, !tbaa !137
  %44 = getelementptr inbounds %struct.gimple_statement_phi, ptr %23, i64 0, i32 3
  %45 = load ptr, ptr %44, align 8, !tbaa !93
  %46 = load ptr, ptr @edge_var_maps, align 8, !tbaa !82
  %47 = icmp eq ptr %46, null
  br i1 %47, label %48, label %50, !prof !101

48:                                               ; preds = %41
  %49 = call ptr @pointer_map_create() #24
  store ptr %49, ptr @edge_var_maps, align 8, !tbaa !82
  br label %50

50:                                               ; preds = %48, %41
  %51 = load ptr, ptr @edge_var_maps, align 8, !tbaa !82
  %52 = call ptr @pointer_map_insert(ptr noundef %51, ptr noundef %0) #24
  %53 = load ptr, ptr %52, align 8, !tbaa !82
  %54 = icmp eq ptr %53, null
  br i1 %54, label %55, label %57, !prof !102

55:                                               ; preds = %50
  %56 = call ptr @vec_heap_o_reserve_exact(ptr noundef null, i32 noundef 5, i64 noundef 8, i64 noundef 24) #24
  store ptr %56, ptr %52, align 8, !tbaa !82
  br label %57

57:                                               ; preds = %55, %50
  %58 = phi ptr [ %56, %55 ], [ %53, %50 ]
  %59 = icmp eq ptr %58, null
  br i1 %59, label %65, label %60, !prof !103

60:                                               ; preds = %57
  %61 = getelementptr inbounds %struct.VEC_edge_var_map_base, ptr %58, i64 0, i32 1
  %62 = load i32, ptr %61, align 4, !tbaa !104
  %63 = load i32, ptr %58, align 8, !tbaa !106
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %65, label %67, !prof !103

65:                                               ; preds = %60, %57
  %66 = call ptr @vec_heap_o_reserve(ptr noundef %58, i32 noundef 1, i64 noundef 8, i64 noundef 24) #24
  br label %67

67:                                               ; preds = %65, %60
  %68 = phi ptr [ %66, %65 ], [ %58, %60 ]
  %69 = load i32, ptr %68, align 8, !tbaa !106
  %70 = add i32 %69, 1
  store i32 %70, ptr %68, align 8, !tbaa !106
  %71 = zext i32 %69 to i64
  %72 = getelementptr inbounds %struct.VEC_edge_var_map_base, ptr %68, i64 0, i32 2, i64 %71
  store ptr %45, ptr %72, align 8, !tbaa.struct !107
  %73 = getelementptr inbounds i8, ptr %72, i64 8
  store ptr %33, ptr %73, align 8, !tbaa.struct !108
  %74 = getelementptr inbounds i8, ptr %72, i64 16
  store i32 %43, ptr %74, align 8, !tbaa.struct !109
  %75 = icmp eq ptr %53, %68
  br i1 %75, label %77, label %76, !prof !110

76:                                               ; preds = %67
  store ptr %68, ptr %52, align 8, !tbaa !82
  br label %77

77:                                               ; preds = %76, %67, %39
  %78 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %22, i64 0, i32 2
  %79 = load ptr, ptr %78, align 8, !tbaa !139
  %80 = icmp eq ptr %79, null
  br i1 %80, label %81, label %21, !prof !140, !llvm.loop !141

81:                                               ; preds = %77, %14
  %82 = call ptr @redirect_edge_succ_nodup(ptr noundef %0, ptr noundef %1) #24
  ret ptr %82
}

declare void @gsi_start_phis(ptr dead_on_unwind writable sret(%struct.gimple_stmt_iterator) align 8, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #12

declare ptr @redirect_edge_succ_nodup(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @flush_pending_stmts(ptr noundef %0) local_unnamed_addr #10 !prof !142 {
  %2 = alloca %struct.gimple_stmt_iterator, align 8
  %3 = load ptr, ptr @edge_var_maps, align 8, !tbaa !82
  %4 = icmp eq ptr %3, null
  br i1 %4, label %10, label %5, !prof !143

5:                                                ; preds = %1
  %6 = tail call ptr @pointer_map_contains(ptr noundef nonnull %3, ptr noundef %0) #24
  %7 = icmp eq ptr %6, null
  br i1 %7, label %10, label %8, !prof !144

8:                                                ; preds = %5
  %9 = load ptr, ptr %6, align 8, !tbaa !82
  br label %10

10:                                               ; preds = %1, %5, %8
  %11 = phi ptr [ %9, %8 ], [ null, %1 ], [ null, %5 ]
  %12 = icmp eq ptr %11, null
  br i1 %12, label %45, label %13, !prof !145

13:                                               ; preds = %10
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #24
  %14 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !128
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %2, ptr noundef %15) #24
  %16 = load ptr, ptr %2, align 8, !tbaa.struct !130
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #24
  %17 = icmp eq ptr %16, null
  br i1 %17, label %34, label %18, !prof !146

18:                                               ; preds = %13, %24
  %19 = phi i64 [ %32, %24 ], [ 0, %13 ]
  %20 = phi ptr [ %31, %24 ], [ %16, %13 ]
  %21 = load i32, ptr %11, align 8, !tbaa !106
  %22 = zext i32 %21 to i64
  %23 = icmp ult i64 %19, %22
  br i1 %23, label %24, label %34, !prof !147

24:                                               ; preds = %18
  %25 = load ptr, ptr %20, align 8, !tbaa !132
  %26 = getelementptr inbounds %struct.VEC_edge_var_map_base, ptr %11, i64 0, i32 2, i64 %19, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !148
  %28 = getelementptr inbounds %struct.VEC_edge_var_map_base, ptr %11, i64 0, i32 2, i64 %19, i32 2
  %29 = load i32, ptr %28, align 8, !tbaa !150
  call void @add_phi_arg(ptr noundef %25, ptr noundef %27, ptr noundef %0, i32 noundef %29) #24
  %30 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %20, i64 0, i32 2
  %31 = load ptr, ptr %30, align 8, !tbaa !139
  %32 = add nuw nsw i64 %19, 1
  %33 = icmp eq ptr %31, null
  br i1 %33, label %34, label %18, !prof !151, !llvm.loop !152

34:                                               ; preds = %18, %24, %13
  %35 = load ptr, ptr @edge_var_maps, align 8, !tbaa !82
  %36 = icmp eq ptr %35, null
  br i1 %36, label %45, label %37, !prof !112

37:                                               ; preds = %34
  %38 = call ptr @pointer_map_contains(ptr noundef nonnull %35, ptr noundef %0) #24
  %39 = icmp eq ptr %38, null
  br i1 %39, label %45, label %40, !prof !113

40:                                               ; preds = %37
  %41 = load ptr, ptr %38, align 8, !tbaa !82
  %42 = icmp eq ptr %41, null
  br i1 %42, label %44, label %43, !prof !114

43:                                               ; preds = %40
  call void @free(ptr noundef %41)
  br label %44

44:                                               ; preds = %43, %40
  store ptr null, ptr %38, align 8, !tbaa !82
  br label %45

45:                                               ; preds = %44, %37, %34, %10
  ret void
}

declare void @add_phi_arg(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define dso_local ptr @target_for_debug_bind(ptr noundef %0) local_unnamed_addr #9 !prof !153 {
  br label %2

2:                                                ; preds = %14, %1
  %3 = phi ptr [ %0, %1 ], [ %15, %14 ]
  %4 = load i32, ptr @flag_var_tracking_assignments, align 4, !tbaa !97
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %23, label %6, !prof !154

6:                                                ; preds = %2
  %7 = load i64, ptr %3, align 8
  %8 = trunc i64 %7 to i16
  switch i16 %8, label %23 [
    i16 32, label %9
    i16 34, label %9
  ]

9:                                                ; preds = %6, %6
  %10 = getelementptr inbounds %struct.tree_decl_common, ptr %3, i64 0, i32 2
  %11 = load i64, ptr %10, align 8
  %12 = and i64 %11, 67108864
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %9
  %15 = tail call ptr @decl_value_expr_lookup(ptr noundef nonnull %3) #24
  br label %2

16:                                               ; preds = %9
  %17 = and i64 %11, 1024
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %16
  %20 = tail call zeroext i8 @is_gimple_reg(ptr noundef nonnull %3) #24
  %21 = icmp eq i8 %20, 0
  %22 = select i1 %21, ptr null, ptr %3
  br label %23

23:                                               ; preds = %19, %16, %6, %2
  %24 = phi ptr [ null, %2 ], [ null, %6 ], [ null, %16 ], [ %22, %19 ]
  ret ptr %24
}

declare ptr @decl_value_expr_lookup(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @is_gimple_reg(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @insert_debug_temp_for_var_def(ptr noundef %0, ptr noundef %1) local_unnamed_addr #13 !prof !81 {
  %3 = alloca %struct.immediate_use_iterator_d, align 8
  %4 = alloca ptr, align 8
  %5 = alloca %struct.walk_stmt_info, align 8
  %6 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #24
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #24
  store ptr null, ptr %4, align 8, !tbaa !82
  %7 = load i32, ptr @flag_var_tracking_assignments, align 4, !tbaa !97
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %269, label %9

9:                                                ; preds = %2
  %10 = tail call zeroext i8 @name_registered_for_update_p(ptr noundef %1) #24
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %269

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 5
  %14 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %3, i64 0, i32 1
  store ptr %13, ptr %14, align 8, !tbaa !155
  %15 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 5, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !157
  store ptr %16, ptr %3, align 8, !tbaa !158
  %17 = icmp eq ptr %16, %13
  br i1 %17, label %50, label %18

18:                                               ; preds = %12, %41
  %19 = phi ptr [ %48, %41 ], [ %16, %12 ]
  %20 = phi i32 [ %42, %41 ], [ 0, %12 ]
  %21 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %19, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !93
  %23 = load i32, ptr %22, align 8
  %24 = and i32 %23, -65281
  %25 = icmp eq i32 %24, 2
  br i1 %25, label %26, label %41

26:                                               ; preds = %18
  %27 = add nsw i32 %20, 1
  %28 = icmp eq i32 %20, 0
  br i1 %28, label %29, label %50

29:                                               ; preds = %26
  %30 = load i32, ptr getelementptr inbounds ([0 x i32], ptr @gss_for_code_, i64 0, i64 2), align 4, !tbaa !97
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %31
  %33 = load i64, ptr %32, align 8, !tbaa !159
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %29
  tail call void @fancy_abort(ptr noundef nonnull @.str.20, i32 noundef 1622, ptr noundef nonnull @.str.1) #24
  br label %36

36:                                               ; preds = %35, %29
  %37 = getelementptr inbounds i8, ptr %22, i64 %33
  %38 = getelementptr inbounds ptr, ptr %37, i64 1
  %39 = load ptr, ptr %38, align 8, !tbaa !82
  %40 = icmp eq ptr %39, %1
  br i1 %40, label %41, label %50

41:                                               ; preds = %36, %18
  %42 = phi i32 [ %27, %36 ], [ %20, %18 ]
  %43 = load ptr, ptr %3, align 8, !tbaa !158
  %44 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %43, i64 0, i32 1
  %45 = load ptr, ptr %44, align 8, !tbaa !157
  store ptr %45, ptr %3, align 8, !tbaa !158
  %46 = load ptr, ptr %14, align 8, !tbaa !155
  %47 = icmp eq ptr %45, %46
  %48 = select i1 %47, ptr null, ptr %45
  %49 = icmp eq ptr %45, %46
  br i1 %49, label %50, label %18, !llvm.loop !160

50:                                               ; preds = %41, %26, %36, %12
  %51 = phi i32 [ 0, %12 ], [ %42, %41 ], [ %27, %26 ], [ 2, %36 ]
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %269, label %53

53:                                               ; preds = %50
  %54 = icmp eq ptr %0, null
  br i1 %54, label %57, label %55

55:                                               ; preds = %53
  %56 = load ptr, ptr %0, align 1
  br label %59

57:                                               ; preds = %53
  %58 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 2
  br label %59

59:                                               ; preds = %57, %55
  %60 = phi ptr [ %56, %55 ], [ %58, %57 ]
  %61 = load ptr, ptr %60, align 8, !tbaa !93
  %62 = load i32, ptr %61, align 8
  %63 = trunc i32 %62 to i8
  switch i8 %63, label %86 [
    i8 16, label %64
    i8 6, label %71
  ]

64:                                               ; preds = %59
  %65 = tail call ptr @degenerate_phi_result(ptr noundef nonnull %61) #24
  store ptr %65, ptr %4, align 8, !tbaa !82
  %66 = icmp eq ptr %65, null
  br i1 %66, label %86, label %67

67:                                               ; preds = %64
  %68 = call ptr @walk_tree_1(ptr noundef nonnull %4, ptr noundef nonnull @find_released_ssa_name, ptr noundef null, ptr noundef null, ptr noundef null) #24
  %69 = icmp eq ptr %68, null
  br i1 %69, label %86, label %70

70:                                               ; preds = %67
  store ptr null, ptr %4, align 8, !tbaa !82
  br label %86

71:                                               ; preds = %59
  %72 = tail call zeroext i8 @dom_info_available_p(i32 noundef 1) #24
  %73 = icmp eq i8 %72, 0
  br i1 %73, label %74, label %84

74:                                               ; preds = %71
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false)
  br i1 %54, label %75, label %79

75:                                               ; preds = %74
  %76 = getelementptr inbounds %struct.gimple_statement_base, ptr %61, i64 0, i32 4
  %77 = load ptr, ptr %76, align 8, !tbaa !93
  %78 = icmp eq ptr %77, null
  br i1 %78, label %82, label %79

79:                                               ; preds = %75, %74
  %80 = call ptr @walk_gimple_op(ptr noundef nonnull %61, ptr noundef nonnull @find_released_ssa_name, ptr noundef nonnull %5) #24
  %81 = icmp eq ptr %80, null
  br i1 %81, label %83, label %82

82:                                               ; preds = %75, %79
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #24
  br label %86

83:                                               ; preds = %79
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #24
  br label %84

84:                                               ; preds = %71, %83
  %85 = call ptr @gimple_assign_rhs_to_tree(ptr noundef nonnull %61) #24
  store ptr %85, ptr %4, align 8, !tbaa !82
  br label %86

86:                                               ; preds = %82, %59, %84, %64, %67, %70
  %87 = load ptr, ptr %4, align 8, !tbaa !82
  %88 = icmp eq ptr %87, null
  br i1 %88, label %161, label %89

89:                                               ; preds = %86
  %90 = load i64, ptr %87, align 8
  %91 = and i64 %90, 65535
  %92 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %91
  %93 = load i32, ptr %92, align 4, !tbaa !97
  %94 = icmp eq i32 %93, 1
  br i1 %94, label %112, label %95

95:                                               ; preds = %89
  %96 = load i32, ptr %61, align 8
  %97 = and i32 %96, 255
  %98 = icmp eq i32 %97, 16
  br i1 %98, label %112, label %99

99:                                               ; preds = %95
  %100 = icmp eq i32 %51, 1
  br i1 %100, label %101, label %108

101:                                              ; preds = %99
  %102 = call zeroext i8 @gimple_assign_single_p(ptr noundef nonnull %61) #24
  %103 = icmp eq i8 %102, 0
  br i1 %103, label %112, label %104

104:                                              ; preds = %101
  %105 = load ptr, ptr %4, align 8, !tbaa !82
  %106 = call zeroext i8 @is_gimple_min_invariant(ptr noundef %105) #24
  %107 = icmp eq i8 %106, 0
  br i1 %107, label %108, label %112

108:                                              ; preds = %104, %99
  %109 = load ptr, ptr %4, align 8, !tbaa !82
  %110 = call zeroext i8 @is_gimple_reg(ptr noundef %109) #24
  %111 = icmp eq i8 %110, 0
  br i1 %111, label %115, label %112

112:                                              ; preds = %108, %104, %101, %95, %89
  %113 = load ptr, ptr %4, align 8, !tbaa !82
  %114 = call ptr @unshare_expr(ptr noundef %113) #24
  store ptr %114, ptr %4, align 8, !tbaa !82
  br label %161

115:                                              ; preds = %108
  %116 = call ptr @make_node_stat(i32 noundef 37) #24
  %117 = load ptr, ptr %4, align 8, !tbaa !82
  %118 = call ptr @unshare_expr(ptr noundef %117) #24
  %119 = call ptr @gimple_build_debug_bind_stat(ptr noundef %116, ptr noundef %118, ptr noundef nonnull %61) #24
  %120 = getelementptr inbounds %struct.tree_decl_common, ptr %116, i64 0, i32 2
  %121 = load i64, ptr %120, align 8
  %122 = or i64 %121, 4096
  store i64 %122, ptr %120, align 8
  %123 = load ptr, ptr %4, align 8, !tbaa !82
  %124 = getelementptr inbounds %struct.tree_common, ptr %123, i64 0, i32 2
  %125 = load ptr, ptr %124, align 8, !tbaa !93
  %126 = getelementptr inbounds %struct.tree_common, ptr %116, i64 0, i32 2
  store ptr %125, ptr %126, align 8, !tbaa !93
  %127 = load i64, ptr %123, align 8
  %128 = and i64 %127, 65535
  %129 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %128
  %130 = load i32, ptr %129, align 4, !tbaa !97
  %131 = icmp eq i32 %130, 3
  br i1 %131, label %132, label %137

132:                                              ; preds = %115
  %133 = getelementptr inbounds %struct.tree_decl_common, ptr %123, i64 0, i32 2
  %134 = load i64, ptr %133, align 8
  %135 = and i64 %134, 255
  %136 = and i64 %122, -256
  br label %154

137:                                              ; preds = %115
  %138 = load ptr, ptr %124, align 8, !tbaa !93
  %139 = load i64, ptr %138, align 8
  %140 = and i64 %139, 65535
  %141 = icmp eq i64 %140, 14
  br i1 %141, label %142, label %144

142:                                              ; preds = %137
  %143 = call i32 @vector_type_mode(ptr noundef nonnull %138) #24
  br label %148

144:                                              ; preds = %137
  %145 = getelementptr inbounds %struct.tree_type, ptr %138, i64 0, i32 6
  %146 = load i32, ptr %145, align 4
  %147 = lshr i32 %146, 16
  br label %148

148:                                              ; preds = %144, %142
  %149 = phi i32 [ %143, %142 ], [ %147, %144 ]
  %150 = and i32 %149, 255
  %151 = load i64, ptr %120, align 8
  %152 = zext nneg i32 %150 to i64
  %153 = and i64 %151, -256
  br label %154

154:                                              ; preds = %148, %132
  %155 = phi i64 [ %152, %148 ], [ %136, %132 ]
  %156 = phi i64 [ %153, %148 ], [ %135, %132 ]
  %157 = or disjoint i64 %156, %155
  store i64 %157, ptr %120, align 8
  br i1 %54, label %159, label %158

158:                                              ; preds = %154
  call void @gsi_insert_before(ptr noundef nonnull %0, ptr noundef %119, i32 noundef 1) #24
  br label %160

159:                                              ; preds = %154
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #24
  call void @gsi_for_stmt(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %6, ptr noundef nonnull %61) #24
  call void @gsi_insert_before(ptr noundef nonnull %6, ptr noundef %119, i32 noundef 1) #24
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #24
  br label %160

160:                                              ; preds = %159, %158
  store ptr %116, ptr %4, align 8, !tbaa !82
  br label %161

161:                                              ; preds = %112, %160, %86
  store ptr %13, ptr %14, align 8, !tbaa !155
  %162 = load ptr, ptr %15, align 8, !tbaa !157
  store ptr %162, ptr %3, align 8, !tbaa !158
  %163 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %3, i64 0, i32 3
  %164 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %3, i64 0, i32 2
  %165 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %3, i64 0, i32 2, i32 1
  %166 = icmp eq ptr %162, %13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %164, i8 0, i64 40, i1 false)
  br i1 %166, label %171, label %167

167:                                              ; preds = %161
  call fastcc void @link_use_stmts_after(ptr noundef %162, ptr noundef nonnull %3)
  %168 = load ptr, ptr %3, align 8, !tbaa !158
  %169 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %168, i64 0, i32 2
  %170 = load ptr, ptr %169, align 8, !tbaa !93
  br label %171

171:                                              ; preds = %161, %167
  %172 = phi ptr [ %170, %167 ], [ null, %161 ]
  %173 = load ptr, ptr %3, align 8, !tbaa !158
  %174 = load ptr, ptr %14, align 8, !tbaa !155
  %175 = icmp eq ptr %173, %174
  br i1 %175, label %269, label %176

176:                                              ; preds = %171, %264
  %177 = phi ptr [ %266, %264 ], [ %173, %171 ]
  %178 = phi ptr [ %265, %264 ], [ %172, %171 ]
  %179 = load i32, ptr %178, align 8
  %180 = and i32 %179, -65281
  %181 = icmp eq i32 %180, 2
  br i1 %181, label %182, label %250

182:                                              ; preds = %176
  %183 = load ptr, ptr %4, align 8, !tbaa !82
  %184 = icmp eq ptr %183, null
  br i1 %184, label %225, label %185

185:                                              ; preds = %182
  %186 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %177, i64 0, i32 1
  %187 = load ptr, ptr %186, align 8, !tbaa !157
  store ptr %187, ptr %163, align 8, !tbaa !161
  %188 = load ptr, ptr %3, align 8, !tbaa !158
  %189 = icmp eq ptr %188, %164
  br i1 %189, label %244, label %190

190:                                              ; preds = %185, %221
  %191 = phi ptr [ %222, %221 ], [ %177, %185 ]
  %192 = load ptr, ptr %4, align 8, !tbaa !82
  %193 = load ptr, ptr %191, align 8, !tbaa !162
  %194 = icmp eq ptr %193, null
  br i1 %194, label %200, label %195

195:                                              ; preds = %190
  %196 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %191, i64 0, i32 1
  %197 = load ptr, ptr %196, align 8, !tbaa !157
  %198 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %193, i64 0, i32 1
  store ptr %197, ptr %198, align 8, !tbaa !157
  %199 = load ptr, ptr %196, align 8, !tbaa !157
  store ptr %193, ptr %199, align 8, !tbaa !162
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %191, i8 0, i64 16, i1 false)
  br label %200

200:                                              ; preds = %195, %190
  %201 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %191, i64 0, i32 3
  %202 = load ptr, ptr %201, align 8, !tbaa !135
  store ptr %192, ptr %202, align 8, !tbaa !82
  %203 = icmp eq ptr %192, null
  br i1 %203, label %208, label %204

204:                                              ; preds = %200
  %205 = load i64, ptr %192, align 8
  %206 = and i64 %205, 65535
  %207 = icmp eq i64 %206, 141
  br i1 %207, label %209, label %208

208:                                              ; preds = %204, %200
  store ptr null, ptr %191, align 8, !tbaa !162
  br label %215

209:                                              ; preds = %204
  %210 = getelementptr inbounds %struct.tree_ssa_name, ptr %192, i64 0, i32 5
  store ptr %210, ptr %191, align 8, !tbaa !162
  %211 = getelementptr inbounds %struct.tree_ssa_name, ptr %192, i64 0, i32 5, i32 1
  %212 = load ptr, ptr %211, align 8, !tbaa !157
  %213 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %191, i64 0, i32 1
  store ptr %212, ptr %213, align 8, !tbaa !157
  %214 = load ptr, ptr %211, align 8, !tbaa !157
  store ptr %191, ptr %214, align 8, !tbaa !162
  store ptr %191, ptr %211, align 8, !tbaa !157
  br label %215

215:                                              ; preds = %208, %209
  %216 = load ptr, ptr %163, align 8, !tbaa !161
  store ptr %216, ptr %3, align 8, !tbaa !158
  %217 = icmp eq ptr %216, %164
  br i1 %217, label %221, label %218

218:                                              ; preds = %215
  %219 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %216, i64 0, i32 1
  %220 = load ptr, ptr %219, align 8, !tbaa !157
  store ptr %220, ptr %163, align 8, !tbaa !161
  br label %221

221:                                              ; preds = %215, %218
  %222 = phi ptr [ %216, %218 ], [ null, %215 ]
  %223 = load ptr, ptr %3, align 8, !tbaa !158
  %224 = icmp eq ptr %223, %164
  br i1 %224, label %244, label %190, !llvm.loop !163

225:                                              ; preds = %182
  %226 = getelementptr inbounds %struct.gimple_statement_base, ptr %178, i64 0, i32 3
  %227 = load i32, ptr %226, align 4, !tbaa !93
  %228 = icmp ugt i32 %227, 1
  br i1 %228, label %230, label %229

229:                                              ; preds = %225
  call void @fancy_abort(ptr noundef nonnull @.str.20, i32 noundef 1665, ptr noundef nonnull @.str.1) #24
  br label %230

230:                                              ; preds = %229, %225
  %231 = load i32, ptr %178, align 8
  %232 = and i32 %231, 255
  %233 = zext nneg i32 %232 to i64
  %234 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %233
  %235 = load i32, ptr %234, align 4, !tbaa !97
  %236 = zext i32 %235 to i64
  %237 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %236
  %238 = load i64, ptr %237, align 8, !tbaa !159
  %239 = icmp eq i64 %238, 0
  br i1 %239, label %240, label %241

240:                                              ; preds = %230
  call void @fancy_abort(ptr noundef nonnull @.str.20, i32 noundef 1622, ptr noundef nonnull @.str.1) #24
  br label %241

241:                                              ; preds = %230, %240
  %242 = getelementptr inbounds i8, ptr %178, i64 %238
  %243 = getelementptr inbounds ptr, ptr %242, i64 1
  store ptr null, ptr %243, align 8, !tbaa !82
  br label %244

244:                                              ; preds = %221, %185, %241
  %245 = load i32, ptr %178, align 8
  %246 = and i32 %245, 255
  %247 = add nsw i32 %246, -10
  %248 = icmp ult i32 %247, -9
  br i1 %248, label %250, label %249

249:                                              ; preds = %244
  call void @gimple_set_modified(ptr noundef nonnull %178, i8 noundef zeroext 1) #24
  call void @update_stmt_operands(ptr noundef nonnull %178) #24
  br label %250

250:                                              ; preds = %249, %244, %176
  %251 = load ptr, ptr %165, align 8, !tbaa !157
  store ptr %251, ptr %3, align 8, !tbaa !158
  %252 = load ptr, ptr %14, align 8, !tbaa !155
  %253 = icmp eq ptr %251, %252
  br i1 %253, label %254, label %260

254:                                              ; preds = %250
  %255 = load ptr, ptr %164, align 8, !tbaa !162
  %256 = icmp eq ptr %255, null
  br i1 %256, label %264, label %257

257:                                              ; preds = %254
  %258 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %255, i64 0, i32 1
  store ptr %251, ptr %258, align 8, !tbaa !157
  %259 = load ptr, ptr %165, align 8, !tbaa !157
  store ptr %255, ptr %259, align 8, !tbaa !162
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %164, i8 0, i64 16, i1 false)
  br label %264

260:                                              ; preds = %250
  call fastcc void @link_use_stmts_after(ptr noundef %251, ptr noundef nonnull %3)
  %261 = load ptr, ptr %3, align 8, !tbaa !158
  %262 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %261, i64 0, i32 2
  %263 = load ptr, ptr %262, align 8, !tbaa !93
  br label %264

264:                                              ; preds = %254, %257, %260
  %265 = phi ptr [ %263, %260 ], [ null, %257 ], [ null, %254 ]
  %266 = load ptr, ptr %3, align 8, !tbaa !158
  %267 = load ptr, ptr %14, align 8, !tbaa !155
  %268 = icmp eq ptr %266, %267
  br i1 %268, label %269, label %176, !llvm.loop !164

269:                                              ; preds = %264, %171, %50, %9, %2
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #24
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #24
  ret void
}

declare zeroext i8 @name_registered_for_update_p(ptr noundef) local_unnamed_addr #3

declare ptr @degenerate_phi_result(ptr noundef) local_unnamed_addr #3

declare ptr @walk_tree_1(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal noundef ptr @find_released_ssa_name(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr noundef readonly %2) #14 !prof !81 {
  %4 = icmp eq ptr %2, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.walk_stmt_info, ptr %2, i64 0, i32 4
  %7 = load i8, ptr %6, align 1, !tbaa !165
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %23

9:                                                ; preds = %5, %3
  %10 = load ptr, ptr %0, align 8, !tbaa !82
  %11 = load i64, ptr %10, align 8
  %12 = and i64 %11, 65535
  %13 = icmp eq i64 %12, 141
  br i1 %13, label %14, label %17

14:                                               ; preds = %9
  %15 = and i64 %11, 33554432
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %22, label %23

17:                                               ; preds = %9
  %18 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %12
  %19 = load i32, ptr %18, align 4, !tbaa !97
  %20 = and i32 %19, -2
  %21 = icmp eq i32 %20, 2
  br i1 %21, label %22, label %23

22:                                               ; preds = %17, %14
  store i32 0, ptr %1, align 4, !tbaa !97
  br label %23

23:                                               ; preds = %22, %17, %14, %5
  %24 = phi ptr [ null, %5 ], [ %10, %14 ], [ null, %17 ], [ null, %22 ]
  ret ptr %24
}

declare zeroext i8 @dom_info_available_p(i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #15

declare ptr @walk_gimple_op(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @gimple_assign_rhs_to_tree(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @gimple_assign_single_p(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @is_gimple_min_invariant(ptr noundef) local_unnamed_addr #3

declare ptr @unshare_expr(ptr noundef) local_unnamed_addr #3

declare ptr @make_node_stat(i32 noundef) local_unnamed_addr #3

declare ptr @gimple_build_debug_bind_stat(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @vector_type_mode(ptr noundef) local_unnamed_addr #3

declare void @gsi_insert_before(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @gsi_for_stmt(ptr dead_on_unwind writable sret(%struct.gimple_stmt_iterator) align 8, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define dso_local void @insert_debug_temps_for_defs(ptr noundef %0) local_unnamed_addr #9 !prof !168 {
  %2 = load i32, ptr @flag_var_tracking_assignments, align 4, !tbaa !97
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %68, label %4, !prof !169

4:                                                ; preds = %1
  %5 = load ptr, ptr %0, align 1
  %6 = load ptr, ptr %5, align 8, !tbaa !132
  %7 = load i32, ptr %6, align 8
  %8 = and i32 %7, 255
  %9 = icmp eq i32 %8, 16
  br i1 %9, label %10, label %17

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.gimple_statement_phi, ptr %6, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !82
  %13 = tail call zeroext i8 @is_gimple_reg(ptr noundef %12) #24
  %14 = icmp eq i8 %13, 0
  %15 = zext i1 %14 to i8
  %16 = select i1 %14, ptr null, ptr %11
  br label %43

17:                                               ; preds = %4
  %18 = add nsw i32 %8, -10
  %19 = icmp ult i32 %18, -9
  br i1 %19, label %23, label %20

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.gimple_statement_with_ops_base, ptr %6, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !93
  br label %23

23:                                               ; preds = %20, %17
  %24 = phi ptr [ %22, %20 ], [ null, %17 ]
  %25 = icmp eq ptr %24, null
  br i1 %25, label %36, label %26

26:                                               ; preds = %23
  %27 = and i32 %7, 254
  %28 = add nsw i32 %27, -10
  %29 = icmp ult i32 %28, -4
  br i1 %29, label %36, label %30

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %6, i64 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !93
  %33 = icmp eq ptr %32, null
  br i1 %33, label %36, label %34

34:                                               ; preds = %30
  %35 = load ptr, ptr %24, align 8, !tbaa !170
  br label %36

36:                                               ; preds = %34, %30, %26, %23
  %37 = phi ptr [ %24, %23 ], [ %24, %26 ], [ %24, %30 ], [ %35, %34 ]
  %38 = icmp eq ptr %37, null
  br i1 %38, label %43, label %39

39:                                               ; preds = %36
  %40 = getelementptr inbounds %struct.def_optype_d, ptr %37, i64 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !172
  %42 = load ptr, ptr %37, align 8, !tbaa !170
  br label %43

43:                                               ; preds = %39, %36, %10
  %44 = phi ptr [ null, %10 ], [ %42, %39 ], [ %37, %36 ]
  %45 = phi i8 [ %15, %10 ], [ 0, %39 ], [ 1, %36 ]
  %46 = phi ptr [ %16, %10 ], [ %41, %39 ], [ null, %36 ]
  %47 = icmp eq i8 %45, 0
  br i1 %47, label %48, label %68

48:                                               ; preds = %43, %63
  %49 = phi ptr [ %66, %63 ], [ %46, %43 ]
  %50 = phi i8 [ %65, %63 ], [ %45, %43 ]
  %51 = phi ptr [ %64, %63 ], [ %44, %43 ]
  %52 = load ptr, ptr %49, align 8, !tbaa !82
  %53 = load i64, ptr %52, align 8
  %54 = and i64 %53, 65535
  %55 = icmp eq i64 %54, 141
  br i1 %55, label %56, label %57

56:                                               ; preds = %48
  tail call void @insert_debug_temp_for_var_def(ptr noundef nonnull %0, ptr noundef nonnull %52)
  br label %57

57:                                               ; preds = %48, %56
  %58 = icmp eq ptr %51, null
  br i1 %58, label %63, label %59

59:                                               ; preds = %57
  %60 = getelementptr inbounds %struct.def_optype_d, ptr %51, i64 0, i32 1
  %61 = load ptr, ptr %60, align 8, !tbaa !172
  %62 = load ptr, ptr %51, align 8, !tbaa !170
  br label %63

63:                                               ; preds = %57, %59
  %64 = phi ptr [ %62, %59 ], [ %51, %57 ]
  %65 = phi i8 [ %50, %59 ], [ 1, %57 ]
  %66 = phi ptr [ %61, %59 ], [ null, %57 ]
  %67 = icmp eq i8 %65, 0
  br i1 %67, label %48, label %68, !llvm.loop !173

68:                                               ; preds = %63, %43, %1
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @release_defs_bitset(ptr noundef %0) local_unnamed_addr #13 !prof !81 {
  %2 = alloca %struct.immediate_use_iterator_d, align 8
  %3 = alloca %struct.gimple_stmt_iterator, align 8
  %4 = load ptr, ptr %0, align 8, !tbaa !174
  %5 = icmp eq ptr %4, null
  br i1 %5, label %212, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %2, i64 0, i32 1
  %8 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %2, i64 0, i32 2
  %9 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %2, i64 0, i32 2, i32 1
  br label %13

10:                                               ; preds = %78
  %11 = load ptr, ptr %0, align 8, !tbaa !174
  %12 = icmp eq ptr %11, null
  br i1 %12, label %212, label %13, !llvm.loop !176

13:                                               ; preds = %6, %10
  %14 = phi ptr [ %4, %6 ], [ %11, %10 ]
  %15 = getelementptr inbounds %struct.bitmap_element_def, ptr %14, i64 0, i32 2
  %16 = load i32, ptr %15, align 8, !tbaa !177
  %17 = shl i32 %16, 7
  %18 = getelementptr inbounds %struct.bitmap_element_def, ptr %14, i64 0, i32 3
  %19 = load i64, ptr %18, align 8, !tbaa !159
  %20 = icmp eq i64 %19, 0
  %21 = zext i1 %20 to i32
  %22 = or disjoint i32 %17, %21
  br label %23

23:                                               ; preds = %209, %13
  %24 = phi ptr [ %14, %13 ], [ %79, %209 ]
  %25 = phi i32 [ 0, %13 ], [ %80, %209 ]
  %26 = phi i64 [ %19, %13 ], [ %210, %209 ]
  %27 = phi i32 [ %22, %13 ], [ %211, %209 ]
  %28 = icmp eq i64 %26, 0
  br i1 %28, label %43, label %29

29:                                               ; preds = %57, %23
  %30 = phi ptr [ %24, %23 ], [ %48, %57 ]
  %31 = phi i32 [ %25, %23 ], [ %58, %57 ]
  %32 = phi i64 [ %26, %23 ], [ %62, %57 ]
  %33 = phi i32 [ %27, %23 ], [ %59, %57 ]
  %34 = and i64 %32, 1
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %78

36:                                               ; preds = %29, %36
  %37 = phi i32 [ %40, %36 ], [ %33, %29 ]
  %38 = phi i64 [ %39, %36 ], [ %32, %29 ]
  %39 = lshr exact i64 %38, 1
  %40 = add i32 %37, 1
  %41 = and i64 %38, 2
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %36, label %78, !llvm.loop !179

43:                                               ; preds = %23
  %44 = add i32 %27, 63
  %45 = and i32 %44, -64
  %46 = add i32 %25, 1
  br label %47

47:                                               ; preds = %74, %43
  %48 = phi ptr [ %24, %43 ], [ %72, %74 ]
  %49 = phi i64 [ %26, %43 ], [ %69, %74 ]
  %50 = phi i32 [ %45, %43 ], [ %77, %74 ]
  %51 = phi i32 [ %46, %43 ], [ 0, %74 ]
  %52 = icmp eq i32 %51, 2
  br i1 %52, label %68, label %53

53:                                               ; preds = %47
  %54 = add i32 %50, 128
  %55 = shl i32 %51, 6
  %56 = sub i32 %54, %55
  br label %57

57:                                               ; preds = %53, %64
  %58 = phi i32 [ %66, %64 ], [ %51, %53 ]
  %59 = phi i32 [ %65, %64 ], [ %50, %53 ]
  %60 = zext i32 %58 to i64
  %61 = getelementptr inbounds %struct.bitmap_element_def, ptr %48, i64 0, i32 3, i64 %60
  %62 = load i64, ptr %61, align 8, !tbaa !159
  %63 = icmp eq i64 %62, 0
  br i1 %63, label %64, label %29

64:                                               ; preds = %57
  %65 = add i32 %59, 64
  %66 = add i32 %58, 1
  %67 = icmp eq i32 %66, 2
  br i1 %67, label %68, label %57, !llvm.loop !180

68:                                               ; preds = %64, %47
  %69 = phi i64 [ %49, %47 ], [ %62, %64 ]
  %70 = phi i32 [ %50, %47 ], [ %56, %64 ]
  %71 = phi i32 [ %51, %47 ], [ 2, %64 ]
  %72 = load ptr, ptr %48, align 8, !tbaa !181
  %73 = icmp eq ptr %72, null
  br i1 %73, label %78, label %74

74:                                               ; preds = %68
  %75 = getelementptr inbounds %struct.bitmap_element_def, ptr %72, i64 0, i32 2
  %76 = load i32, ptr %75, align 8, !tbaa !177
  %77 = shl i32 %76, 7
  br label %47, !llvm.loop !182

78:                                               ; preds = %68, %36, %29
  %79 = phi ptr [ %30, %29 ], [ %30, %36 ], [ %72, %68 ]
  %80 = phi i32 [ %31, %29 ], [ %31, %36 ], [ %71, %68 ]
  %81 = phi i64 [ %32, %29 ], [ %39, %36 ], [ %69, %68 ]
  %82 = phi i32 [ %33, %29 ], [ %40, %36 ], [ %70, %68 ]
  %83 = phi i1 [ false, %29 ], [ false, %36 ], [ true, %68 ]
  br i1 %83, label %10, label %84

84:                                               ; preds = %78
  %85 = load ptr, ptr @cfun, align 8, !tbaa !82
  %86 = getelementptr inbounds %struct.function, ptr %85, i64 0, i32 3
  %87 = load ptr, ptr %86, align 8, !tbaa !183
  %88 = getelementptr inbounds %struct.gimple_df, ptr %87, i64 0, i32 2
  %89 = load ptr, ptr %88, align 8, !tbaa !185
  %90 = zext i32 %82 to i64
  %91 = getelementptr inbounds %struct.VEC_tree_base, ptr %89, i64 0, i32 2, i64 %90
  %92 = load ptr, ptr %91, align 8, !tbaa !82
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #24
  %93 = getelementptr inbounds %struct.tree_ssa_name, ptr %92, i64 0, i32 5
  store ptr %93, ptr %7, align 8, !tbaa !155
  %94 = getelementptr inbounds %struct.tree_ssa_name, ptr %92, i64 0, i32 5, i32 1
  %95 = load ptr, ptr %94, align 8, !tbaa !157
  store ptr %95, ptr %2, align 8, !tbaa !158
  %96 = icmp eq ptr %95, %93
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %8, i8 0, i64 40, i1 false)
  br i1 %96, label %101, label %97

97:                                               ; preds = %84
  call fastcc void @link_use_stmts_after(ptr noundef %95, ptr noundef nonnull %2)
  %98 = load ptr, ptr %2, align 8, !tbaa !158
  %99 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %98, i64 0, i32 2
  %100 = load ptr, ptr %99, align 8, !tbaa !93
  br label %101

101:                                              ; preds = %84, %97
  %102 = phi ptr [ %100, %97 ], [ null, %84 ]
  %103 = load ptr, ptr %2, align 8, !tbaa !158
  %104 = load ptr, ptr %7, align 8, !tbaa !155
  %105 = icmp eq ptr %103, %104
  br i1 %105, label %196, label %106

106:                                              ; preds = %101, %191
  %107 = phi i8 [ %176, %191 ], [ 1, %101 ]
  %108 = phi ptr [ %192, %191 ], [ %102, %101 ]
  %109 = load i32, ptr %108, align 8
  %110 = trunc i32 %109 to i8
  switch i8 %110, label %111 [
    i8 16, label %174
    i8 2, label %174
  ]

111:                                              ; preds = %106
  %112 = and i32 %109, 255
  %113 = add nsw i32 %112, -10
  %114 = icmp ult i32 %113, -9
  br i1 %114, label %118, label %115

115:                                              ; preds = %111
  %116 = getelementptr inbounds %struct.gimple_statement_with_ops_base, ptr %108, i64 0, i32 1
  %117 = load ptr, ptr %116, align 8, !tbaa !93
  br label %118

118:                                              ; preds = %115, %111
  %119 = phi ptr [ %117, %115 ], [ null, %111 ]
  %120 = icmp eq ptr %119, null
  br i1 %120, label %131, label %121

121:                                              ; preds = %118
  %122 = and i32 %109, 254
  %123 = add nsw i32 %122, -10
  %124 = icmp ult i32 %123, -4
  br i1 %124, label %131, label %125

125:                                              ; preds = %121
  %126 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %108, i64 0, i32 1
  %127 = load ptr, ptr %126, align 8, !tbaa !93
  %128 = icmp eq ptr %127, null
  br i1 %128, label %131, label %129

129:                                              ; preds = %125
  %130 = load ptr, ptr %119, align 8, !tbaa !170
  br label %131

131:                                              ; preds = %129, %125, %121, %118
  %132 = phi ptr [ %119, %118 ], [ %119, %121 ], [ %119, %125 ], [ %130, %129 ]
  %133 = icmp eq ptr %132, null
  br i1 %133, label %138, label %134

134:                                              ; preds = %131
  %135 = getelementptr inbounds %struct.def_optype_d, ptr %132, i64 0, i32 1
  %136 = load ptr, ptr %135, align 8, !tbaa !172
  %137 = load ptr, ptr %132, align 8, !tbaa !170
  br label %138

138:                                              ; preds = %131, %134
  %139 = phi ptr [ %137, %134 ], [ %132, %131 ]
  %140 = phi i8 [ 0, %134 ], [ 1, %131 ]
  %141 = phi ptr [ %136, %134 ], [ null, %131 ]
  br i1 %133, label %164, label %142

142:                                              ; preds = %138, %159
  %143 = phi i8 [ %152, %159 ], [ %107, %138 ]
  %144 = phi ptr [ %162, %159 ], [ %141, %138 ]
  %145 = phi i8 [ %161, %159 ], [ %140, %138 ]
  %146 = phi ptr [ %160, %159 ], [ %139, %138 ]
  %147 = load ptr, ptr %144, align 8, !tbaa !82
  %148 = getelementptr inbounds %struct.tree_ssa_name, ptr %147, i64 0, i32 3
  %149 = load i32, ptr %148, align 8, !tbaa !93
  %150 = call i32 @bitmap_bit_p(ptr noundef nonnull %0, i32 noundef %149) #24
  %151 = icmp eq i32 %150, 0
  %152 = select i1 %151, i8 %143, i8 0
  br i1 %151, label %153, label %164

153:                                              ; preds = %142
  %154 = icmp eq ptr %146, null
  br i1 %154, label %159, label %155

155:                                              ; preds = %153
  %156 = getelementptr inbounds %struct.def_optype_d, ptr %146, i64 0, i32 1
  %157 = load ptr, ptr %156, align 8, !tbaa !172
  %158 = load ptr, ptr %146, align 8, !tbaa !170
  br label %159

159:                                              ; preds = %153, %155
  %160 = phi ptr [ %158, %155 ], [ %146, %153 ]
  %161 = phi i8 [ %145, %155 ], [ 1, %153 ]
  %162 = phi ptr [ %157, %155 ], [ null, %153 ]
  %163 = icmp eq i8 %161, 0
  br i1 %163, label %142, label %164, !llvm.loop !189

164:                                              ; preds = %159, %142, %138
  %165 = phi i8 [ %107, %138 ], [ %152, %142 ], [ %152, %159 ]
  %166 = icmp eq i8 %165, 0
  br i1 %166, label %167, label %174

167:                                              ; preds = %164
  %168 = load ptr, ptr %8, align 8, !tbaa !162
  %169 = icmp eq ptr %168, null
  br i1 %169, label %174, label %170

170:                                              ; preds = %167
  %171 = load ptr, ptr %9, align 8, !tbaa !157
  %172 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %168, i64 0, i32 1
  store ptr %171, ptr %172, align 8, !tbaa !157
  %173 = load ptr, ptr %9, align 8, !tbaa !157
  store ptr %168, ptr %173, align 8, !tbaa !162
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, i8 0, i64 16, i1 false)
  br label %174

174:                                              ; preds = %106, %106, %170, %167, %164
  %175 = phi i1 [ false, %106 ], [ false, %164 ], [ true, %167 ], [ true, %170 ], [ false, %106 ]
  %176 = phi i8 [ %107, %106 ], [ 1, %164 ], [ 0, %167 ], [ 0, %170 ], [ %107, %106 ]
  br i1 %175, label %196, label %177

177:                                              ; preds = %174
  %178 = load ptr, ptr %9, align 8, !tbaa !157
  store ptr %178, ptr %2, align 8, !tbaa !158
  %179 = load ptr, ptr %7, align 8, !tbaa !155
  %180 = icmp eq ptr %178, %179
  br i1 %180, label %181, label %187

181:                                              ; preds = %177
  %182 = load ptr, ptr %8, align 8, !tbaa !162
  %183 = icmp eq ptr %182, null
  br i1 %183, label %191, label %184

184:                                              ; preds = %181
  %185 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %182, i64 0, i32 1
  store ptr %178, ptr %185, align 8, !tbaa !157
  %186 = load ptr, ptr %9, align 8, !tbaa !157
  store ptr %182, ptr %186, align 8, !tbaa !162
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, i8 0, i64 16, i1 false)
  br label %191

187:                                              ; preds = %177
  call fastcc void @link_use_stmts_after(ptr noundef %178, ptr noundef nonnull %2)
  %188 = load ptr, ptr %2, align 8, !tbaa !158
  %189 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %188, i64 0, i32 2
  %190 = load ptr, ptr %189, align 8, !tbaa !93
  br label %191

191:                                              ; preds = %181, %184, %187
  %192 = phi ptr [ %190, %187 ], [ null, %184 ], [ null, %181 ]
  %193 = load ptr, ptr %2, align 8, !tbaa !158
  %194 = load ptr, ptr %7, align 8, !tbaa !155
  %195 = icmp eq ptr %193, %194
  br i1 %195, label %196, label %106, !llvm.loop !190

196:                                              ; preds = %191, %174, %101
  %197 = phi i8 [ 1, %101 ], [ %176, %174 ], [ %176, %191 ]
  %198 = icmp eq i8 %197, 0
  br i1 %198, label %209, label %199

199:                                              ; preds = %196
  %200 = getelementptr inbounds %struct.tree_ssa_name, ptr %92, i64 0, i32 2
  %201 = load ptr, ptr %200, align 8, !tbaa !93
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #24
  call void @gsi_for_stmt(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %3, ptr noundef %201) #24
  %202 = load i32, ptr %201, align 8
  %203 = and i32 %202, 255
  %204 = icmp eq i32 %203, 16
  br i1 %204, label %205, label %206

205:                                              ; preds = %199
  call void @remove_phi_node(ptr noundef nonnull %3, i8 noundef zeroext 1) #24
  br label %207

206:                                              ; preds = %199
  call void @gsi_remove(ptr noundef nonnull %3, i8 noundef zeroext 1) #24
  call void @release_defs(ptr noundef nonnull %201) #24
  br label %207

207:                                              ; preds = %206, %205
  %208 = call zeroext i8 @bitmap_clear_bit(ptr noundef nonnull %0, i32 noundef %82) #24
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #24
  br label %209

209:                                              ; preds = %207, %196
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %2) #24
  %210 = lshr i64 %81, 1
  %211 = add i32 %82, 1
  br label %23, !llvm.loop !191

212:                                              ; preds = %10, %1
  ret void
}

declare i32 @bitmap_bit_p(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @remove_phi_node(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

declare void @gsi_remove(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

declare void @release_defs(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @bitmap_clear_bit(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @verify_ssa(i8 noundef zeroext %0) local_unnamed_addr #13 !prof !81 {
  %2 = alloca %struct.gimple_stmt_iterator, align 8
  %3 = load ptr, ptr @cfun, align 8, !tbaa !82
  %4 = getelementptr inbounds %struct.function, ptr %3, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !183
  %6 = getelementptr inbounds %struct.gimple_df, ptr %5, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !185
  %8 = icmp eq ptr %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %1
  %10 = load i32, ptr %7, align 8, !tbaa !192
  %11 = zext i32 %10 to i64
  br label %12

12:                                               ; preds = %1, %9
  %13 = phi i64 [ %11, %9 ], [ 0, %1 ]
  %14 = tail call ptr @xcalloc(i64 noundef %13, i64 noundef 8) #24
  %15 = tail call i32 @dom_info_state(i32 noundef 1) #24
  %16 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #24
  %17 = load ptr, ptr @cfun, align 8, !tbaa !82
  %18 = tail call zeroext i8 @need_ssa_update_p(ptr noundef %17) #24
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %12
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 872, ptr noundef nonnull @.str.1) #24
  br label %21

21:                                               ; preds = %12, %20
  tail call void @verify_stmts() #24
  %22 = load i8, ptr @timevar_enable, align 1, !tbaa !93
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %21
  tail call void @timevar_push_1(i32 noundef 107) #24
  br label %25

25:                                               ; preds = %24, %21
  br label %26

26:                                               ; preds = %25, %90
  %27 = phi i64 [ %91, %90 ], [ 1, %25 ]
  %28 = load ptr, ptr @cfun, align 8, !tbaa !82
  %29 = getelementptr inbounds %struct.function, ptr %28, i64 0, i32 3
  %30 = load ptr, ptr %29, align 8, !tbaa !183
  %31 = getelementptr inbounds %struct.gimple_df, ptr %30, i64 0, i32 2
  %32 = load ptr, ptr %31, align 8, !tbaa !185
  %33 = icmp eq ptr %32, null
  br i1 %33, label %36, label %34

34:                                               ; preds = %26
  %35 = load i32, ptr %32, align 8, !tbaa !192
  br label %36

36:                                               ; preds = %26, %34
  %37 = phi i32 [ %35, %34 ], [ 0, %26 ]
  %38 = zext i32 %37 to i64
  %39 = icmp ult i64 %27, %38
  br i1 %39, label %40, label %92

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.VEC_tree_base, ptr %32, i64 0, i32 2, i64 %27
  %42 = load ptr, ptr %41, align 8, !tbaa !82
  %43 = icmp eq ptr %42, null
  br i1 %43, label %90, label %44

44:                                               ; preds = %40
  %45 = load i64, ptr %42, align 8
  %46 = and i64 %45, -1099511627777
  store i64 %46, ptr %42, align 8
  %47 = getelementptr inbounds %struct.tree_ssa_name, ptr %42, i64 0, i32 2
  %48 = load ptr, ptr %47, align 8, !tbaa !93
  %49 = load i32, ptr %48, align 8
  %50 = and i32 %49, 255
  %51 = icmp eq i32 %50, 18
  br i1 %51, label %90, label %52

52:                                               ; preds = %44
  %53 = getelementptr inbounds %struct.gimple_statement_base, ptr %48, i64 0, i32 4
  %54 = load ptr, ptr %53, align 8, !tbaa !93
  %55 = tail call zeroext i8 @is_gimple_reg(ptr noundef nonnull %42) #24
  %56 = icmp eq i8 %55, 0
  %57 = zext i1 %56 to i8
  %58 = tail call fastcc zeroext i8 @verify_ssa_name(ptr noundef nonnull %42, i8 noundef zeroext %57), !range !194
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %60, label %83

60:                                               ; preds = %52
  %61 = getelementptr inbounds %struct.tree_ssa_name, ptr %42, i64 0, i32 3
  %62 = load i32, ptr %61, align 8, !tbaa !93
  %63 = zext i32 %62 to i64
  %64 = getelementptr inbounds ptr, ptr %14, i64 %63
  %65 = load ptr, ptr %64, align 8, !tbaa !82
  %66 = icmp eq ptr %65, null
  br i1 %66, label %72, label %67

67:                                               ; preds = %60
  %68 = getelementptr inbounds %struct.basic_block_def, ptr %65, i64 0, i32 9
  %69 = load i32, ptr %68, align 8, !tbaa !195
  %70 = getelementptr inbounds %struct.basic_block_def, ptr %54, i64 0, i32 9
  %71 = load i32, ptr %70, align 8, !tbaa !195
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.22, i32 noundef %69, i32 noundef %71) #24
  br label %83

72:                                               ; preds = %60
  store ptr %54, ptr %64, align 8, !tbaa !82
  %73 = load ptr, ptr %47, align 8, !tbaa !93
  %74 = icmp eq ptr %73, %48
  br i1 %74, label %90, label %75

75:                                               ; preds = %72
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.10) #24
  %76 = load ptr, ptr @stderr, align 8, !tbaa !82
  %77 = tail call i64 @fwrite(ptr nonnull @.str.11, i64 31, i64 1, ptr %76) #25
  %78 = load ptr, ptr @stderr, align 8, !tbaa !82
  %79 = load ptr, ptr %47, align 8, !tbaa !93
  tail call void @print_gimple_stmt(ptr noundef %78, ptr noundef %79, i32 noundef 4, i32 noundef 64) #24
  %80 = load ptr, ptr @stderr, align 8, !tbaa !82
  %81 = tail call i64 @fwrite(ptr nonnull @.str.12, i64 30, i64 1, ptr %80) #25
  %82 = load ptr, ptr @stderr, align 8, !tbaa !82
  tail call void @print_gimple_stmt(ptr noundef %82, ptr noundef nonnull %48, i32 noundef 4, i32 noundef 64) #24
  br label %83

83:                                               ; preds = %75, %67, %52
  %84 = load ptr, ptr @stderr, align 8, !tbaa !82
  %85 = tail call i64 @fwrite(ptr nonnull @.str.23, i64 25, i64 1, ptr %84) #25
  %86 = load ptr, ptr @stderr, align 8, !tbaa !82
  tail call void @print_generic_expr(ptr noundef %86, ptr noundef nonnull %42, i32 noundef 0) #24
  %87 = load ptr, ptr @stderr, align 8, !tbaa !82
  %88 = tail call i64 @fwrite(ptr nonnull @.str.24, i64 14, i64 1, ptr %87) #25
  %89 = load ptr, ptr @stderr, align 8, !tbaa !82
  tail call void @print_gimple_stmt(ptr noundef %89, ptr noundef nonnull %48, i32 noundef 4, i32 noundef 64) #24
  br label %90

90:                                               ; preds = %83, %72, %44, %40
  %91 = add nuw nsw i64 %27, 1
  br label %26, !llvm.loop !197

92:                                               ; preds = %36
  tail call void @calculate_dominance_info(i32 noundef 1) #24
  %93 = load ptr, ptr @cfun, align 8, !tbaa !82
  %94 = getelementptr inbounds %struct.function, ptr %93, i64 0, i32 1
  %95 = load ptr, ptr %94, align 8, !tbaa !198
  %96 = load ptr, ptr %95, align 8, !tbaa !199
  %97 = icmp eq i8 %0, 0
  br label %98

98:                                               ; preds = %697, %92
  %99 = phi ptr [ %96, %92 ], [ %101, %697 ]
  %100 = getelementptr inbounds %struct.basic_block_def, ptr %99, i64 0, i32 6
  %101 = load ptr, ptr %100, align 8, !tbaa !201
  %102 = load ptr, ptr @cfun, align 8, !tbaa !82
  %103 = getelementptr inbounds %struct.function, ptr %102, i64 0, i32 1
  %104 = load ptr, ptr %103, align 8, !tbaa !198
  %105 = getelementptr inbounds %struct.control_flow_graph, ptr %104, i64 0, i32 1
  %106 = load ptr, ptr %105, align 8, !tbaa !202
  %107 = icmp eq ptr %101, %106
  br i1 %107, label %699, label %108

108:                                              ; preds = %98
  %109 = icmp eq ptr %101, null
  br label %110

110:                                              ; preds = %108, %147
  %111 = phi i32 [ %148, %147 ], [ 0, %108 ]
  br i1 %109, label %112, label %113

112:                                              ; preds = %110
  call void @fancy_abort(ptr noundef nonnull @.str.25, i32 noundef 687, ptr noundef nonnull @.str.1) #24
  br label %113

113:                                              ; preds = %112, %110
  %114 = load ptr, ptr %101, align 8, !tbaa !82
  %115 = icmp eq ptr %114, null
  br i1 %115, label %118, label %116

116:                                              ; preds = %113
  %117 = load i32, ptr %114, align 8, !tbaa !203
  br label %118

118:                                              ; preds = %116, %113
  %119 = phi i32 [ %117, %116 ], [ 0, %113 ]
  %120 = icmp eq i32 %119, %111
  br i1 %120, label %125, label %121

121:                                              ; preds = %118
  %122 = zext i32 %111 to i64
  %123 = getelementptr inbounds %struct.VEC_edge_base, ptr %114, i64 0, i32 2, i64 %122
  %124 = load ptr, ptr %123, align 8, !tbaa !82
  br label %125

125:                                              ; preds = %118, %121
  %126 = phi ptr [ %124, %121 ], [ null, %118 ]
  br i1 %120, label %149, label %127

127:                                              ; preds = %125
  %128 = getelementptr inbounds %struct.edge_def, ptr %126, i64 0, i32 3
  %129 = load ptr, ptr %128, align 8, !tbaa !205
  %130 = icmp eq ptr %129, null
  br i1 %130, label %139, label %131

131:                                              ; preds = %127
  %132 = load ptr, ptr %126, align 8, !tbaa !206
  %133 = getelementptr inbounds %struct.basic_block_def, ptr %132, i64 0, i32 9
  %134 = load i32, ptr %133, align 8, !tbaa !195
  %135 = getelementptr inbounds %struct.edge_def, ptr %126, i64 0, i32 1
  %136 = load ptr, ptr %135, align 8, !tbaa !128
  %137 = getelementptr inbounds %struct.basic_block_def, ptr %136, i64 0, i32 9
  %138 = load i32, ptr %137, align 8, !tbaa !195
  call void (ptr, ...) @error(ptr noundef nonnull @.str.2, i32 noundef %134, i32 noundef %138) #24
  br label %697

139:                                              ; preds = %127
  %140 = icmp eq ptr %114, null
  br i1 %140, label %143, label %141

141:                                              ; preds = %139
  %142 = load i32, ptr %114, align 8, !tbaa !203
  br label %143

143:                                              ; preds = %141, %139
  %144 = phi i32 [ %142, %141 ], [ 0, %139 ]
  %145 = icmp ult i32 %111, %144
  br i1 %145, label %147, label %146

146:                                              ; preds = %143
  call void @fancy_abort(ptr noundef nonnull @.str.25, i32 noundef 738, ptr noundef nonnull @.str.1) #24
  br label %147

147:                                              ; preds = %143, %146
  %148 = add i32 %111, 1
  br label %110, !llvm.loop !207

149:                                              ; preds = %125
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #24
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %2, ptr noundef nonnull %101) #24
  %150 = load ptr, ptr %2, align 8, !tbaa.struct !130
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #24
  %151 = icmp eq ptr %150, null
  br i1 %151, label %282, label %152

152:                                              ; preds = %149, %273
  %153 = phi ptr [ %280, %273 ], [ %150, %149 ]
  %154 = load ptr, ptr %153, align 8, !tbaa !132
  %155 = getelementptr inbounds %struct.gimple_statement_phi, ptr %154, i64 0, i32 2
  %156 = load i32, ptr %155, align 4, !tbaa !93
  %157 = zext i32 %156 to i64
  %158 = load ptr, ptr %101, align 8, !tbaa !208
  %159 = icmp eq ptr %158, null
  br i1 %159, label %162, label %160

160:                                              ; preds = %152
  %161 = load i32, ptr %158, align 8, !tbaa !203
  br label %162

162:                                              ; preds = %160, %152
  %163 = phi i32 [ %161, %160 ], [ 0, %152 ]
  %164 = icmp eq i32 %163, %156
  br i1 %164, label %165, label %170

165:                                              ; preds = %162
  %166 = icmp eq i32 %156, 0
  br i1 %166, label %266, label %167

167:                                              ; preds = %165
  %168 = getelementptr inbounds %struct.gimple_statement_phi, ptr %154, i64 0, i32 1
  %169 = getelementptr inbounds %struct.gimple_statement_phi, ptr %154, i64 0, i32 3
  br label %171

170:                                              ; preds = %162
  call void (ptr, ...) @error(ptr noundef nonnull @.str.26) #24
  br label %266

171:                                              ; preds = %260, %167
  %172 = phi i8 [ 0, %167 ], [ %261, %260 ]
  %173 = phi i64 [ 0, %167 ], [ %263, %260 ]
  %174 = trunc i64 %173 to i32
  %175 = load i32, ptr %168, align 8, !tbaa !93
  %176 = icmp ult i32 %175, %174
  br i1 %176, label %177, label %178

177:                                              ; preds = %171
  call void @fancy_abort(ptr noundef nonnull @.str.20, i32 noundef 3103, ptr noundef nonnull @.str.1) #24
  br label %178

178:                                              ; preds = %177, %171
  %179 = getelementptr inbounds %struct.gimple_statement_phi, ptr %154, i64 0, i32 4, i64 %173
  %180 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %179, i64 0, i32 3
  %181 = load ptr, ptr %180, align 8, !tbaa !135
  %182 = load ptr, ptr %181, align 8, !tbaa !82
  %183 = load ptr, ptr %101, align 8, !tbaa !208
  %184 = getelementptr inbounds %struct.VEC_edge_base, ptr %183, i64 0, i32 2, i64 %173
  %185 = load ptr, ptr %184, align 8, !tbaa !82
  %186 = icmp eq ptr %182, null
  br i1 %186, label %187, label %195

187:                                              ; preds = %178
  %188 = load ptr, ptr %185, align 8, !tbaa !206
  %189 = getelementptr inbounds %struct.basic_block_def, ptr %188, i64 0, i32 9
  %190 = load i32, ptr %189, align 8, !tbaa !195
  %191 = getelementptr inbounds %struct.edge_def, ptr %185, i64 0, i32 1
  %192 = load ptr, ptr %191, align 8, !tbaa !128
  %193 = getelementptr inbounds %struct.basic_block_def, ptr %192, i64 0, i32 9
  %194 = load i32, ptr %193, align 8, !tbaa !195
  call void (ptr, ...) @error(ptr noundef nonnull @.str.27, i32 noundef %190, i32 noundef %194) #24
  br label %260

195:                                              ; preds = %178
  %196 = load i64, ptr %182, align 8
  %197 = and i64 %196, 65535
  %198 = icmp eq i64 %197, 141
  br i1 %198, label %203, label %199

199:                                              ; preds = %195
  %200 = call zeroext i8 @is_gimple_min_invariant(ptr noundef nonnull %182) #24
  %201 = icmp eq i8 %200, 0
  br i1 %201, label %202, label %203

202:                                              ; preds = %199
  call void (ptr, ...) @error(ptr noundef nonnull @.str.28) #24
  br label %203

203:                                              ; preds = %202, %199, %195
  %204 = phi i8 [ %172, %199 ], [ 1, %202 ], [ %172, %195 ]
  %205 = load i64, ptr %182, align 8
  %206 = and i64 %205, 65535
  %207 = icmp eq i64 %206, 141
  br i1 %207, label %208, label %226

208:                                              ; preds = %203
  %209 = load ptr, ptr %169, align 8, !tbaa !93
  %210 = call zeroext i8 @is_gimple_reg(ptr noundef %209) #24
  %211 = icmp eq i8 %210, 0
  %212 = zext i1 %211 to i8
  %213 = call fastcc zeroext i8 @verify_ssa_name(ptr noundef nonnull %182, i8 noundef zeroext %212), !range !194
  %214 = load ptr, ptr %185, align 8, !tbaa !206
  %215 = getelementptr inbounds %struct.tree_ssa_name, ptr %182, i64 0, i32 3
  %216 = load i32, ptr %215, align 8, !tbaa !93
  %217 = zext i32 %216 to i64
  %218 = getelementptr inbounds ptr, ptr %14, i64 %217
  %219 = load ptr, ptr %218, align 8, !tbaa !82
  %220 = getelementptr inbounds %struct.edge_def, ptr %185, i64 0, i32 7
  %221 = load i32, ptr %220, align 8, !tbaa !209
  %222 = trunc i32 %221 to i8
  %223 = and i8 %222, 2
  %224 = call fastcc zeroext i8 @verify_use(ptr noundef %214, ptr noundef %219, ptr noundef nonnull %179, ptr noundef %154, i8 noundef zeroext %223, ptr noundef null), !range !194
  %225 = or i8 %224, %213
  br label %226

226:                                              ; preds = %208, %203
  %227 = phi i8 [ %225, %208 ], [ %204, %203 ]
  %228 = load i64, ptr %182, align 8
  %229 = and i64 %228, 65535
  %230 = icmp eq i64 %229, 121
  br i1 %230, label %231, label %242

231:                                              ; preds = %226, %237
  %232 = phi ptr [ %234, %237 ], [ %182, %226 ]
  %233 = getelementptr inbounds %struct.tree_exp, ptr %232, i64 0, i32 3
  %234 = load ptr, ptr %233, align 8, !tbaa !93
  %235 = load i64, ptr %234, align 8
  %236 = trunc i64 %235 to i16
  switch i16 %236, label %242 [
    i16 42, label %237
    i16 41, label %237
    i16 45, label %237
    i16 46, label %237
    i16 118, label %237
    i16 43, label %237
    i16 44, label %237
    i16 32, label %238
    i16 34, label %238
    i16 36, label %238
  ]

237:                                              ; preds = %231, %231, %231, %231, %231, %231, %231
  br label %231, !llvm.loop !210

238:                                              ; preds = %231, %231, %231
  %239 = and i64 %235, 262144
  %240 = icmp eq i64 %239, 0
  br i1 %240, label %241, label %242

241:                                              ; preds = %238
  call void (ptr, ...) @error(ptr noundef nonnull @.str.29) #24
  br label %242

242:                                              ; preds = %231, %241, %238, %226
  %243 = phi i8 [ %227, %226 ], [ %227, %238 ], [ 1, %241 ], [ %227, %231 ]
  %244 = getelementptr inbounds %struct.edge_def, ptr %185, i64 0, i32 1
  %245 = load ptr, ptr %244, align 8, !tbaa !128
  %246 = icmp eq ptr %245, %101
  br i1 %246, label %253, label %247

247:                                              ; preds = %242
  %248 = load ptr, ptr %185, align 8, !tbaa !206
  %249 = getelementptr inbounds %struct.basic_block_def, ptr %248, i64 0, i32 9
  %250 = load i32, ptr %249, align 8, !tbaa !195
  %251 = getelementptr inbounds %struct.basic_block_def, ptr %245, i64 0, i32 9
  %252 = load i32, ptr %251, align 8, !tbaa !195
  call void (ptr, ...) @error(ptr noundef nonnull @.str.30, i32 noundef %250, i32 noundef %252) #24
  br label %253

253:                                              ; preds = %247, %242
  %254 = phi i8 [ 1, %247 ], [ %243, %242 ]
  %255 = icmp eq i8 %254, 0
  br i1 %255, label %260, label %256

256:                                              ; preds = %253
  %257 = load ptr, ptr @stderr, align 8, !tbaa !82
  %258 = call i64 @fwrite(ptr nonnull @.str.31, i64 13, i64 1, ptr %257) #25
  %259 = load ptr, ptr @stderr, align 8, !tbaa !82
  call void @print_generic_stmt(ptr noundef %259, ptr noundef nonnull %182, i32 noundef 64) #24
  br label %260

260:                                              ; preds = %256, %253, %187
  %261 = phi i8 [ 1, %187 ], [ 1, %256 ], [ 0, %253 ]
  %262 = phi i1 [ false, %187 ], [ false, %256 ], [ true, %253 ]
  %263 = add nuw nsw i64 %173, 1
  %264 = icmp ult i64 %263, %157
  %265 = select i1 %262, i1 %264, i1 false
  br i1 %265, label %171, label %266, !llvm.loop !211

266:                                              ; preds = %260, %165, %170
  %267 = phi i8 [ 1, %170 ], [ 0, %165 ], [ %261, %260 ]
  %268 = icmp eq i8 %267, 0
  br i1 %268, label %273, label %269

269:                                              ; preds = %266
  %270 = load ptr, ptr @stderr, align 8, !tbaa !82
  %271 = call i64 @fwrite(ptr nonnull @.str.32, i64 13, i64 1, ptr %270) #25
  %272 = load ptr, ptr @stderr, align 8, !tbaa !82
  call void @print_gimple_stmt(ptr noundef %272, ptr noundef %154, i32 noundef 0, i32 noundef 16448) #24
  br label %697

273:                                              ; preds = %266
  %274 = getelementptr inbounds %struct.gimple_statement_phi, ptr %154, i64 0, i32 3
  %275 = load ptr, ptr %274, align 8, !tbaa !93
  %276 = getelementptr inbounds %struct.tree_ssa_name, ptr %275, i64 0, i32 3
  %277 = load i32, ptr %276, align 8, !tbaa !93
  %278 = call zeroext i8 @bitmap_set_bit(ptr noundef %16, i32 noundef %277) #24
  %279 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %153, i64 0, i32 2
  %280 = load ptr, ptr %279, align 8, !tbaa !139
  %281 = icmp eq ptr %280, null
  br i1 %281, label %282, label %152, !llvm.loop !212

282:                                              ; preds = %273, %149
  %283 = getelementptr inbounds %struct.basic_block_def, ptr %101, i64 0, i32 13
  %284 = load i32, ptr %283, align 8, !tbaa !213, !noalias !214
  %285 = and i32 %284, 512
  %286 = icmp eq i32 %285, 0
  br i1 %286, label %287, label %293

287:                                              ; preds = %282
  %288 = getelementptr inbounds %struct.basic_block_def, ptr %101, i64 0, i32 7
  %289 = load ptr, ptr %288, align 8, !tbaa !93, !noalias !214
  %290 = icmp eq ptr %289, null
  br i1 %290, label %293, label %291

291:                                              ; preds = %287
  %292 = load ptr, ptr %289, align 8, !tbaa !217, !noalias !214
  br label %293

293:                                              ; preds = %291, %287, %282
  %294 = phi ptr [ %292, %291 ], [ null, %287 ], [ null, %282 ]
  %295 = icmp eq ptr %294, null
  br i1 %295, label %298, label %296

296:                                              ; preds = %293
  %297 = load ptr, ptr %294, align 8, !tbaa !219, !noalias !214
  br label %298

298:                                              ; preds = %293, %296
  %299 = phi ptr [ %297, %296 ], [ null, %293 ]
  %300 = icmp eq ptr %299, null
  br i1 %300, label %696, label %301

301:                                              ; preds = %298, %692
  %302 = phi ptr [ %694, %692 ], [ %299, %298 ]
  %303 = load ptr, ptr %302, align 8, !tbaa !132
  br i1 %97, label %314, label %304

304:                                              ; preds = %301
  %305 = load i32, ptr %303, align 8
  %306 = and i32 %305, 255
  %307 = add nsw i32 %306, -10
  %308 = icmp ult i32 %307, -9
  %309 = and i32 %305, 8192
  %310 = icmp eq i32 %309, 0
  %311 = or i1 %310, %308
  br i1 %311, label %314, label %312

312:                                              ; preds = %304
  call void (ptr, ...) @error(ptr noundef nonnull @.str.3, ptr noundef %303) #24
  %313 = load ptr, ptr @stderr, align 8, !tbaa !82
  call void @print_gimple_stmt(ptr noundef %313, ptr noundef %303, i32 noundef 0, i32 noundef 64) #24
  br label %690

314:                                              ; preds = %304, %301
  %315 = load i32, ptr %303, align 8
  %316 = and i32 %315, 255
  %317 = icmp eq i32 %316, 6
  br i1 %317, label %318, label %381

318:                                              ; preds = %314
  %319 = zext nneg i32 %316 to i64
  %320 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %319
  %321 = load i32, ptr %320, align 4, !tbaa !97
  %322 = zext i32 %321 to i64
  %323 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %322
  %324 = load i64, ptr %323, align 8, !tbaa !159
  %325 = icmp eq i64 %324, 0
  br i1 %325, label %326, label %327

326:                                              ; preds = %318
  call void @fancy_abort(ptr noundef nonnull @.str.20, i32 noundef 1622, ptr noundef nonnull @.str.1) #24
  br label %327

327:                                              ; preds = %326, %318
  %328 = getelementptr inbounds i8, ptr %303, i64 %324
  %329 = load ptr, ptr %328, align 8, !tbaa !82
  %330 = load i64, ptr %329, align 8
  %331 = and i64 %330, 65535
  %332 = icmp eq i64 %331, 141
  br i1 %332, label %381, label %333

333:                                              ; preds = %327
  %334 = load i32, ptr %303, align 8
  %335 = and i32 %334, 255
  %336 = add nsw i32 %335, -10
  %337 = icmp ult i32 %336, -9
  br i1 %337, label %350, label %338

338:                                              ; preds = %333
  %339 = zext nneg i32 %335 to i64
  %340 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %339
  %341 = load i32, ptr %340, align 4, !tbaa !97
  %342 = zext i32 %341 to i64
  %343 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %342
  %344 = load i64, ptr %343, align 8, !tbaa !159
  %345 = icmp eq i64 %344, 0
  br i1 %345, label %346, label %347

346:                                              ; preds = %338
  call void @fancy_abort(ptr noundef nonnull @.str.20, i32 noundef 1622, ptr noundef nonnull @.str.1) #24
  br label %347

347:                                              ; preds = %346, %338
  %348 = getelementptr inbounds i8, ptr %303, i64 %344
  %349 = load ptr, ptr %348, align 8, !tbaa !82
  br label %350

350:                                              ; preds = %333, %347
  %351 = phi ptr [ %349, %347 ], [ null, %333 ]
  %352 = call ptr @get_base_address(ptr noundef %351) #24
  %353 = icmp eq ptr %352, null
  br i1 %353, label %378, label %354

354:                                              ; preds = %350
  %355 = load i64, ptr %352, align 8
  %356 = trunc i64 %355 to i16
  switch i16 %356, label %378 [
    i16 32, label %362
    i16 34, label %362
    i16 36, label %362
    i16 141, label %357
  ]

357:                                              ; preds = %354
  %358 = getelementptr inbounds %struct.tree_ssa_name, ptr %352, i64 0, i32 1
  %359 = load ptr, ptr %358, align 8, !tbaa !93
  %360 = load i64, ptr %359, align 8
  %361 = trunc i64 %360 to i16
  switch i16 %361, label %378 [
    i16 32, label %362
    i16 34, label %362
    i16 36, label %362
  ]

362:                                              ; preds = %357, %357, %354, %354, %357, %354
  %363 = load i32, ptr %303, align 8
  %364 = and i32 %363, 254
  %365 = add nsw i32 %364, -10
  %366 = icmp ult i32 %365, -4
  br i1 %366, label %370, label %367

367:                                              ; preds = %362
  %368 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %303, i64 0, i32 1
  %369 = load ptr, ptr %368, align 8, !tbaa !93
  br label %370

370:                                              ; preds = %362, %367
  %371 = phi ptr [ %369, %367 ], [ null, %362 ]
  %372 = icmp eq ptr %371, null
  %373 = load i32, ptr @optimize, align 4
  %374 = icmp sgt i32 %373, 0
  %375 = select i1 %372, i1 %374, i1 false
  br i1 %375, label %376, label %378

376:                                              ; preds = %370
  call void (ptr, ...) @error(ptr noundef nonnull @.str.4) #24
  %377 = load ptr, ptr @stderr, align 8, !tbaa !82
  call void @print_gimple_stmt(ptr noundef %377, ptr noundef %303, i32 noundef 0, i32 noundef 64) #24
  br label %378

378:                                              ; preds = %357, %354, %350, %370, %376
  %379 = phi i1 [ false, %376 ], [ true, %370 ], [ true, %350 ], [ true, %354 ], [ true, %357 ]
  %380 = phi i32 [ 13, %376 ], [ 0, %370 ], [ 0, %350 ], [ 0, %354 ], [ 0, %357 ]
  br i1 %379, label %397, label %690

381:                                              ; preds = %327, %314
  %382 = load i32, ptr %303, align 8
  %383 = and i32 %382, -65281
  %384 = icmp eq i32 %383, 2
  br i1 %384, label %385, label %397

385:                                              ; preds = %381
  %386 = load i32, ptr getelementptr inbounds ([0 x i32], ptr @gss_for_code_, i64 0, i64 2), align 4, !tbaa !97
  %387 = zext i32 %386 to i64
  %388 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %387
  %389 = load i64, ptr %388, align 8, !tbaa !159
  %390 = icmp eq i64 %389, 0
  br i1 %390, label %391, label %392

391:                                              ; preds = %385
  call void @fancy_abort(ptr noundef nonnull @.str.20, i32 noundef 1622, ptr noundef nonnull @.str.1) #24
  br label %392

392:                                              ; preds = %391, %385
  %393 = getelementptr inbounds i8, ptr %303, i64 %389
  %394 = getelementptr inbounds ptr, ptr %393, i64 1
  %395 = load ptr, ptr %394, align 8, !tbaa !82
  %396 = icmp eq ptr %395, null
  br i1 %396, label %690, label %397

397:                                              ; preds = %381, %392, %378
  %398 = load i32, ptr %303, align 8
  %399 = and i32 %398, 254
  %400 = add nsw i32 %399, -10
  %401 = icmp ult i32 %400, -4
  br i1 %401, label %405, label %402

402:                                              ; preds = %397
  %403 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %303, i64 0, i32 1
  %404 = load ptr, ptr %403, align 8, !tbaa !93
  br label %405

405:                                              ; preds = %397, %402
  %406 = phi ptr [ %404, %402 ], [ null, %397 ]
  %407 = icmp eq ptr %406, null
  br i1 %407, label %462, label %408

408:                                              ; preds = %405
  br i1 %401, label %419, label %409

409:                                              ; preds = %408
  %410 = getelementptr inbounds %struct.gimple_statement_with_ops_base, ptr %303, i64 0, i32 1
  %411 = load ptr, ptr %410, align 8, !tbaa !93
  %412 = icmp eq ptr %411, null
  br i1 %412, label %418, label %413

413:                                              ; preds = %409
  %414 = getelementptr inbounds %struct.def_optype_d, ptr %411, i64 0, i32 1
  %415 = load ptr, ptr %414, align 8, !tbaa !172
  %416 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %303, i64 0, i32 1
  %417 = icmp eq ptr %415, %416
  br i1 %417, label %419, label %418

418:                                              ; preds = %413, %409
  br label %419

419:                                              ; preds = %408, %413, %418
  %420 = phi ptr [ null, %418 ], [ null, %408 ], [ %415, %413 ]
  %421 = icmp eq ptr %420, null
  br i1 %421, label %422, label %423

422:                                              ; preds = %419
  call void (ptr, ...) @error(ptr noundef nonnull @.str.5) #24
  br label %423

423:                                              ; preds = %422, %419
  %424 = phi i8 [ 1, %422 ], [ 0, %419 ]
  %425 = load i32, ptr %303, align 8
  %426 = and i32 %425, 254
  %427 = add nsw i32 %426, -10
  %428 = icmp ult i32 %427, -4
  br i1 %428, label %432, label %429

429:                                              ; preds = %423
  %430 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %303, i64 0, i32 2
  %431 = load ptr, ptr %430, align 8, !tbaa !93
  br label %432

432:                                              ; preds = %423, %429
  %433 = phi ptr [ %431, %429 ], [ null, %423 ]
  %434 = icmp eq ptr %433, null
  br i1 %434, label %447, label %435

435:                                              ; preds = %432
  %436 = add nsw i32 %426, -6
  %437 = icmp ult i32 %436, 4
  call void @llvm.assume(i1 %437)
  %438 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %303, i64 0, i32 1
  %439 = load ptr, ptr %438, align 8, !tbaa !93
  %440 = getelementptr inbounds %struct.tree_ssa_name, ptr %439, i64 0, i32 1
  %441 = load ptr, ptr %440, align 8, !tbaa !93
  %442 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %303, i64 0, i32 2
  %443 = load ptr, ptr %442, align 8, !tbaa !93
  %444 = getelementptr inbounds %struct.tree_ssa_name, ptr %443, i64 0, i32 1
  %445 = load ptr, ptr %444, align 8, !tbaa !93
  %446 = icmp eq ptr %441, %445
  br i1 %446, label %449, label %447

447:                                              ; preds = %435, %432
  %448 = phi ptr [ @.str.6, %432 ], [ @.str.7, %435 ]
  call void (ptr, ...) @error(ptr noundef nonnull %448) #24
  br label %449

449:                                              ; preds = %447, %435
  %450 = phi i8 [ %424, %435 ], [ 1, %447 ]
  %451 = load i32, ptr %303, align 8
  %452 = and i32 %451, 254
  %453 = add nsw i32 %452, -10
  %454 = icmp ult i32 %453, -4
  br i1 %454, label %458, label %455

455:                                              ; preds = %449
  %456 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %303, i64 0, i32 1
  %457 = load ptr, ptr %456, align 8, !tbaa !93
  br label %458

458:                                              ; preds = %449, %455
  %459 = phi ptr [ %457, %455 ], [ null, %449 ]
  %460 = call fastcc zeroext i8 @verify_ssa_name(ptr noundef %459, i8 noundef zeroext 1), !range !194
  %461 = or i8 %460, %450
  br label %462

462:                                              ; preds = %458, %405
  %463 = phi i8 [ %461, %458 ], [ 0, %405 ]
  %464 = load i32, ptr %303, align 8
  %465 = and i32 %464, 254
  %466 = add nsw i32 %465, -10
  %467 = icmp ult i32 %466, -4
  br i1 %467, label %471, label %468

468:                                              ; preds = %462
  %469 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %303, i64 0, i32 2
  %470 = load ptr, ptr %469, align 8, !tbaa !93
  br label %471

471:                                              ; preds = %462, %468
  %472 = phi ptr [ %470, %468 ], [ null, %462 ]
  %473 = icmp eq ptr %472, null
  br i1 %473, label %503, label %474

474:                                              ; preds = %471
  br i1 %467, label %486, label %475

475:                                              ; preds = %474
  %476 = getelementptr inbounds %struct.gimple_statement_with_ops_base, ptr %303, i64 0, i32 2
  %477 = load ptr, ptr %476, align 8, !tbaa !93
  %478 = icmp eq ptr %477, null
  br i1 %478, label %486, label %479

479:                                              ; preds = %475
  %480 = getelementptr inbounds %struct.use_optype_d, ptr %477, i64 0, i32 1, i32 3
  %481 = load ptr, ptr %480, align 8, !tbaa !221
  %482 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %303, i64 0, i32 2
  %483 = icmp eq ptr %481, %482
  %484 = getelementptr inbounds %struct.use_optype_d, ptr %477, i64 0, i32 1
  %485 = select i1 %483, ptr %484, ptr null
  br label %486

486:                                              ; preds = %474, %475, %479
  %487 = phi ptr [ null, %474 ], [ null, %475 ], [ %485, %479 ]
  %488 = icmp eq ptr %487, null
  br i1 %488, label %489, label %490

489:                                              ; preds = %486
  call void (ptr, ...) @error(ptr noundef nonnull @.str.8) #24
  br label %490

490:                                              ; preds = %489, %486
  %491 = phi i8 [ 1, %489 ], [ %463, %486 ]
  %492 = load i32, ptr %303, align 8
  %493 = and i32 %492, 254
  %494 = add nsw i32 %493, -10
  %495 = icmp ult i32 %494, -4
  br i1 %495, label %499, label %496

496:                                              ; preds = %490
  %497 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %303, i64 0, i32 2
  %498 = load ptr, ptr %497, align 8, !tbaa !93
  br label %499

499:                                              ; preds = %490, %496
  %500 = phi ptr [ %498, %496 ], [ null, %490 ]
  %501 = call fastcc zeroext i8 @verify_ssa_name(ptr noundef %500, i8 noundef zeroext 1), !range !194
  %502 = or i8 %501, %491
  br label %503

503:                                              ; preds = %499, %471
  %504 = phi i8 [ %502, %499 ], [ %463, %471 ]
  %505 = icmp eq i8 %504, 0
  br i1 %505, label %508, label %506

506:                                              ; preds = %503
  call void (ptr, ...) @error(ptr noundef nonnull @.str.9) #24
  %507 = load ptr, ptr @stderr, align 8, !tbaa !82
  call void @print_gimple_stmt(ptr noundef %507, ptr noundef nonnull %303, i32 noundef 0, i32 noundef 16448) #24
  br label %690

508:                                              ; preds = %503
  %509 = load i32, ptr %303, align 8
  %510 = and i32 %509, 255
  %511 = add nsw i32 %510, -10
  %512 = icmp ult i32 %511, -9
  br i1 %512, label %516, label %513

513:                                              ; preds = %508
  %514 = getelementptr inbounds %struct.gimple_statement_with_ops_base, ptr %303, i64 0, i32 1
  %515 = load ptr, ptr %514, align 8, !tbaa !93
  br label %516

516:                                              ; preds = %513, %508
  %517 = phi ptr [ %515, %513 ], [ null, %508 ]
  %518 = icmp eq ptr %517, null
  br i1 %518, label %529, label %519

519:                                              ; preds = %516
  %520 = and i32 %509, 254
  %521 = add nsw i32 %520, -10
  %522 = icmp ult i32 %521, -4
  br i1 %522, label %529, label %523

523:                                              ; preds = %519
  %524 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %303, i64 0, i32 1
  %525 = load ptr, ptr %524, align 8, !tbaa !93
  %526 = icmp eq ptr %525, null
  br i1 %526, label %529, label %527

527:                                              ; preds = %523
  %528 = load ptr, ptr %517, align 8, !tbaa !170
  br label %529

529:                                              ; preds = %527, %523, %519, %516
  %530 = phi ptr [ %517, %516 ], [ %517, %519 ], [ %517, %523 ], [ %528, %527 ]
  br i1 %512, label %534, label %531

531:                                              ; preds = %529
  %532 = getelementptr inbounds %struct.gimple_statement_with_ops_base, ptr %303, i64 0, i32 2
  %533 = load ptr, ptr %532, align 8, !tbaa !93
  br label %534

534:                                              ; preds = %531, %529
  %535 = phi ptr [ %533, %531 ], [ null, %529 ]
  %536 = icmp eq ptr %535, null
  br i1 %536, label %547, label %537

537:                                              ; preds = %534
  %538 = and i32 %509, 254
  %539 = add nsw i32 %538, -10
  %540 = icmp ult i32 %539, -4
  br i1 %540, label %547, label %541

541:                                              ; preds = %537
  %542 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %303, i64 0, i32 2
  %543 = load ptr, ptr %542, align 8, !tbaa !93
  %544 = icmp eq ptr %543, null
  br i1 %544, label %547, label %545

545:                                              ; preds = %541
  %546 = load ptr, ptr %535, align 8, !tbaa !223
  br label %547

547:                                              ; preds = %545, %541, %537, %534
  %548 = phi ptr [ %535, %534 ], [ %535, %537 ], [ %535, %541 ], [ %546, %545 ]
  %549 = icmp eq ptr %548, null
  br i1 %549, label %555, label %550

550:                                              ; preds = %547
  %551 = getelementptr inbounds %struct.use_optype_d, ptr %548, i64 0, i32 1, i32 3
  %552 = load ptr, ptr %551, align 8, !tbaa !135
  %553 = load ptr, ptr %552, align 8, !tbaa !82
  %554 = load ptr, ptr %548, align 8, !tbaa !223
  br label %562

555:                                              ; preds = %547
  %556 = icmp eq ptr %530, null
  br i1 %556, label %562, label %557

557:                                              ; preds = %555
  %558 = getelementptr inbounds %struct.def_optype_d, ptr %530, i64 0, i32 1
  %559 = load ptr, ptr %558, align 8, !tbaa !172
  %560 = load ptr, ptr %559, align 8, !tbaa !82
  %561 = load ptr, ptr %530, align 8, !tbaa !170
  br label %562

562:                                              ; preds = %555, %550, %557
  %563 = phi i1 [ true, %557 ], [ true, %550 ], [ false, %555 ]
  %564 = phi i8 [ 0, %557 ], [ 0, %550 ], [ 1, %555 ]
  %565 = phi ptr [ %561, %557 ], [ %530, %550 ], [ %530, %555 ]
  %566 = phi ptr [ %548, %557 ], [ %554, %550 ], [ %548, %555 ]
  %567 = phi ptr [ %560, %557 ], [ %553, %550 ], [ null, %555 ]
  br i1 %563, label %568, label %597

568:                                              ; preds = %562, %591
  %569 = phi ptr [ %595, %591 ], [ %567, %562 ]
  %570 = phi ptr [ %594, %591 ], [ %566, %562 ]
  %571 = phi ptr [ %593, %591 ], [ %565, %562 ]
  %572 = phi i8 [ %592, %591 ], [ %564, %562 ]
  %573 = call fastcc zeroext i8 @verify_ssa_name(ptr noundef %569, i8 noundef zeroext 0), !range !194
  %574 = icmp eq i8 %573, 0
  br i1 %574, label %577, label %575

575:                                              ; preds = %568
  call void (ptr, ...) @error(ptr noundef nonnull @.str.9) #24
  %576 = load ptr, ptr @stderr, align 8, !tbaa !82
  call void @print_gimple_stmt(ptr noundef %576, ptr noundef nonnull %303, i32 noundef 0, i32 noundef 16448) #24
  br label %690

577:                                              ; preds = %568
  %578 = icmp eq ptr %570, null
  br i1 %578, label %584, label %579

579:                                              ; preds = %577
  %580 = getelementptr inbounds %struct.use_optype_d, ptr %570, i64 0, i32 1, i32 3
  %581 = load ptr, ptr %580, align 8, !tbaa !135
  %582 = load ptr, ptr %581, align 8, !tbaa !82
  %583 = load ptr, ptr %570, align 8, !tbaa !223
  br label %591

584:                                              ; preds = %577
  %585 = icmp eq ptr %571, null
  br i1 %585, label %591, label %586

586:                                              ; preds = %584
  %587 = getelementptr inbounds %struct.def_optype_d, ptr %571, i64 0, i32 1
  %588 = load ptr, ptr %587, align 8, !tbaa !172
  %589 = load ptr, ptr %588, align 8, !tbaa !82
  %590 = load ptr, ptr %571, align 8, !tbaa !170
  br label %591

591:                                              ; preds = %584, %579, %586
  %592 = phi i8 [ %572, %586 ], [ %572, %579 ], [ 1, %584 ]
  %593 = phi ptr [ %590, %586 ], [ %571, %579 ], [ %571, %584 ]
  %594 = phi ptr [ %570, %586 ], [ %583, %579 ], [ %570, %584 ]
  %595 = phi ptr [ %589, %586 ], [ %582, %579 ], [ null, %584 ]
  %596 = icmp eq i8 %592, 0
  br i1 %596, label %568, label %597, !llvm.loop !224

597:                                              ; preds = %591, %562
  %598 = load i32, ptr %303, align 8
  %599 = and i32 %598, 255
  %600 = add nsw i32 %599, -10
  %601 = icmp ult i32 %600, -9
  br i1 %601, label %605, label %602

602:                                              ; preds = %597
  %603 = getelementptr inbounds %struct.gimple_statement_with_ops_base, ptr %303, i64 0, i32 2
  %604 = load ptr, ptr %603, align 8, !tbaa !93
  br label %605

605:                                              ; preds = %602, %597
  %606 = phi ptr [ %604, %602 ], [ null, %597 ]
  %607 = icmp eq ptr %606, null
  br i1 %607, label %611, label %608

608:                                              ; preds = %605
  %609 = getelementptr inbounds %struct.use_optype_d, ptr %606, i64 0, i32 1
  %610 = load ptr, ptr %606, align 8, !tbaa !223
  br label %611

611:                                              ; preds = %605, %608
  %612 = phi i8 [ 0, %608 ], [ 1, %605 ]
  %613 = phi ptr [ %610, %608 ], [ %606, %605 ]
  %614 = phi ptr [ %609, %608 ], [ null, %605 ]
  br i1 %607, label %639, label %615

615:                                              ; preds = %611, %634
  %616 = phi ptr [ %637, %634 ], [ %614, %611 ]
  %617 = phi ptr [ %636, %634 ], [ %613, %611 ]
  %618 = phi i8 [ %635, %634 ], [ %612, %611 ]
  %619 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %616, i64 0, i32 3
  %620 = load ptr, ptr %619, align 8, !tbaa !135
  %621 = load ptr, ptr %620, align 8, !tbaa !82
  %622 = getelementptr inbounds %struct.tree_ssa_name, ptr %621, i64 0, i32 3
  %623 = load i32, ptr %622, align 8, !tbaa !93
  %624 = zext i32 %623 to i64
  %625 = getelementptr inbounds ptr, ptr %14, i64 %624
  %626 = load ptr, ptr %625, align 8, !tbaa !82
  %627 = call fastcc zeroext i8 @verify_use(ptr noundef nonnull %101, ptr noundef %626, ptr noundef %616, ptr noundef nonnull %303, i8 noundef zeroext 0, ptr noundef %16), !range !194
  %628 = icmp eq i8 %627, 0
  br i1 %628, label %629, label %690

629:                                              ; preds = %615
  %630 = icmp eq ptr %617, null
  br i1 %630, label %634, label %631

631:                                              ; preds = %629
  %632 = getelementptr inbounds %struct.use_optype_d, ptr %617, i64 0, i32 1
  %633 = load ptr, ptr %617, align 8, !tbaa !223
  br label %634

634:                                              ; preds = %629, %631
  %635 = phi i8 [ %618, %631 ], [ 1, %629 ]
  %636 = phi ptr [ %633, %631 ], [ %617, %629 ]
  %637 = phi ptr [ %632, %631 ], [ null, %629 ]
  %638 = icmp eq i8 %635, 0
  br i1 %638, label %615, label %639, !llvm.loop !225

639:                                              ; preds = %634, %611
  %640 = load i32, ptr %303, align 8
  %641 = and i32 %640, 255
  %642 = add nsw i32 %641, -10
  %643 = icmp ult i32 %642, -9
  br i1 %643, label %647, label %644

644:                                              ; preds = %639
  %645 = getelementptr inbounds %struct.gimple_statement_with_ops_base, ptr %303, i64 0, i32 1
  %646 = load ptr, ptr %645, align 8, !tbaa !93
  br label %647

647:                                              ; preds = %639, %644
  %648 = phi ptr [ %646, %644 ], [ null, %639 ]
  %649 = icmp eq ptr %648, null
  br i1 %649, label %655, label %650

650:                                              ; preds = %647
  %651 = getelementptr inbounds %struct.def_optype_d, ptr %648, i64 0, i32 1
  %652 = load ptr, ptr %651, align 8, !tbaa !172
  %653 = load ptr, ptr %652, align 8, !tbaa !82
  %654 = load ptr, ptr %648, align 8, !tbaa !170
  br label %655

655:                                              ; preds = %647, %650
  %656 = phi i8 [ 0, %650 ], [ 1, %647 ]
  %657 = phi ptr [ %654, %650 ], [ %648, %647 ]
  %658 = phi ptr [ %653, %650 ], [ null, %647 ]
  br i1 %649, label %690, label %659

659:                                              ; preds = %655, %685
  %660 = phi ptr [ %688, %685 ], [ %658, %655 ]
  %661 = phi ptr [ %687, %685 ], [ %657, %655 ]
  %662 = phi i8 [ %686, %685 ], [ %656, %655 ]
  %663 = getelementptr inbounds %struct.tree_ssa_name, ptr %660, i64 0, i32 2
  %664 = load ptr, ptr %663, align 8, !tbaa !93
  %665 = icmp eq ptr %664, %303
  br i1 %665, label %675, label %666

666:                                              ; preds = %659
  %667 = getelementptr inbounds %struct.tree_ssa_name, ptr %660, i64 0, i32 2
  call void (ptr, ...) @error(ptr noundef nonnull @.str.10) #24
  %668 = load ptr, ptr @stderr, align 8, !tbaa !82
  %669 = call i64 @fwrite(ptr nonnull @.str.11, i64 31, i64 1, ptr %668) #25
  %670 = load ptr, ptr @stderr, align 8, !tbaa !82
  call void @print_gimple_stmt(ptr noundef %670, ptr noundef nonnull %303, i32 noundef 4, i32 noundef 64) #24
  %671 = load ptr, ptr @stderr, align 8, !tbaa !82
  %672 = call i64 @fwrite(ptr nonnull @.str.12, i64 30, i64 1, ptr %671) #25
  %673 = load ptr, ptr @stderr, align 8, !tbaa !82
  %674 = load ptr, ptr %667, align 8, !tbaa !93
  call void @print_gimple_stmt(ptr noundef %673, ptr noundef %674, i32 noundef 4, i32 noundef 64) #24
  br label %690

675:                                              ; preds = %659
  %676 = getelementptr inbounds %struct.tree_ssa_name, ptr %660, i64 0, i32 3
  %677 = load i32, ptr %676, align 8, !tbaa !93
  %678 = call zeroext i8 @bitmap_set_bit(ptr noundef %16, i32 noundef %677) #24
  %679 = icmp eq ptr %661, null
  br i1 %679, label %685, label %680

680:                                              ; preds = %675
  %681 = getelementptr inbounds %struct.def_optype_d, ptr %661, i64 0, i32 1
  %682 = load ptr, ptr %681, align 8, !tbaa !172
  %683 = load ptr, ptr %682, align 8, !tbaa !82
  %684 = load ptr, ptr %661, align 8, !tbaa !170
  br label %685

685:                                              ; preds = %675, %680
  %686 = phi i8 [ %662, %680 ], [ 1, %675 ]
  %687 = phi ptr [ %684, %680 ], [ %661, %675 ]
  %688 = phi ptr [ %683, %680 ], [ null, %675 ]
  %689 = icmp eq i8 %686, 0
  br i1 %689, label %659, label %690, !llvm.loop !226

690:                                              ; preds = %615, %685, %655, %378, %392, %666, %575, %506, %312
  %691 = phi i32 [ 13, %312 ], [ 13, %506 ], [ 13, %575 ], [ 13, %666 ], [ 19, %392 ], [ %380, %378 ], [ 0, %655 ], [ 0, %685 ], [ 13, %615 ]
  switch i32 %691, label %697 [
    i32 0, label %692
    i32 19, label %692
  ]

692:                                              ; preds = %690, %690
  %693 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %302, i64 0, i32 2
  %694 = load ptr, ptr %693, align 8, !tbaa !139
  %695 = icmp eq ptr %694, null
  br i1 %695, label %696, label %301, !llvm.loop !227

696:                                              ; preds = %692, %298
  call void @bitmap_clear(ptr noundef %16) #24
  br label %697

697:                                              ; preds = %690, %269, %131, %696
  %698 = phi i32 [ 13, %131 ], [ 0, %696 ], [ 13, %269 ], [ %691, %690 ]
  switch i32 %698, label %708 [
    i32 0, label %98
    i32 13, label %707
  ], !llvm.loop !228

699:                                              ; preds = %98
  call void @free(ptr noundef %14)
  %700 = icmp eq i32 %15, 0
  br i1 %700, label %701, label %702

701:                                              ; preds = %699
  call void @free_dominance_info(i32 noundef 1) #24
  br label %703

702:                                              ; preds = %699
  call void @set_dom_info_availability(i32 noundef 1, i32 noundef %15) #24
  br label %703

703:                                              ; preds = %702, %701
  call void @bitmap_obstack_free(ptr noundef %16) #24
  %704 = load i8, ptr @timevar_enable, align 1, !tbaa !93
  %705 = icmp eq i8 %704, 0
  br i1 %705, label %708, label %706

706:                                              ; preds = %703
  call void @timevar_pop_1(i32 noundef 107) #24
  br label %708

707:                                              ; preds = %697
  call void (ptr, ...) @internal_error(ptr noundef nonnull @.str.13) #24
  br label %708

708:                                              ; preds = %697, %703, %706, %707
  ret void
}

declare ptr @xcalloc(i64 noundef, i64 noundef) local_unnamed_addr #3

declare i32 @dom_info_state(i32 noundef) local_unnamed_addr #3

declare ptr @bitmap_obstack_alloc_stat(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @need_ssa_update_p(ptr noundef) local_unnamed_addr #3

declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @verify_stmts() local_unnamed_addr #3

declare void @timevar_push_1(i32 noundef) local_unnamed_addr #3

declare void @calculate_dominance_info(i32 noundef) local_unnamed_addr #3

declare void @error(ptr noundef, ...) local_unnamed_addr #3

declare zeroext i8 @bitmap_set_bit(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @print_gimple_stmt(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare ptr @get_base_address(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc noundef zeroext i8 @verify_ssa_name(ptr noundef %0, i8 noundef zeroext %1) unnamed_addr #13 !prof !81 {
  %3 = load i64, ptr %0, align 8
  %4 = and i64 %3, 65535
  %5 = icmp eq i64 %4, 141
  br i1 %5, label %6, label %48

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !93
  %9 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !93
  %11 = getelementptr inbounds %struct.tree_common, ptr %10, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !93
  %13 = icmp eq ptr %8, %12
  br i1 %13, label %14, label %48

14:                                               ; preds = %6
  %15 = and i64 %3, 33554432
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %48

17:                                               ; preds = %14
  %18 = icmp eq i8 %1, 0
  %19 = tail call zeroext i8 @is_gimple_reg(ptr noundef nonnull %0) #24
  %20 = icmp eq i8 %19, 0
  br i1 %18, label %37, label %21

21:                                               ; preds = %17
  br i1 %20, label %22, label %48

22:                                               ; preds = %21
  %23 = load ptr, ptr %9, align 8, !tbaa !93
  %24 = load ptr, ptr @cfun, align 8, !tbaa !82
  %25 = icmp eq ptr %24, null
  br i1 %25, label %30, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.function, ptr %24, i64 0, i32 3
  %28 = load ptr, ptr %27, align 8, !tbaa !183
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %26, %22
  tail call void @fancy_abort(ptr noundef nonnull @.str.21, i32 noundef 51, ptr noundef nonnull @.str.1) #24
  br label %31

31:                                               ; preds = %26, %30
  %32 = getelementptr inbounds %struct.function, ptr %24, i64 0, i32 3
  %33 = load ptr, ptr %32, align 8, !tbaa !183
  %34 = getelementptr inbounds %struct.gimple_df, ptr %33, i64 0, i32 3
  %35 = load ptr, ptr %34, align 8, !tbaa !229
  %36 = icmp eq ptr %23, %35
  br i1 %36, label %38, label %48

37:                                               ; preds = %17
  br i1 %20, label %48, label %38

38:                                               ; preds = %31, %37
  %39 = load i64, ptr %0, align 8
  %40 = and i64 %39, 4294967296
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %50, label %42

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 2
  %44 = load ptr, ptr %43, align 8, !tbaa !93
  %45 = load i32, ptr %44, align 8
  %46 = and i32 %45, 255
  %47 = icmp eq i32 %46, 18
  br i1 %47, label %50, label %48

48:                                               ; preds = %42, %37, %31, %21, %14, %6, %2
  %49 = phi ptr [ @.str.33, %2 ], [ @.str.34, %6 ], [ @.str.35, %14 ], [ @.str.36, %21 ], [ @.str.37, %31 ], [ @.str.38, %37 ], [ @.str.39, %42 ]
  tail call void (ptr, ...) @error(ptr noundef nonnull %49) #24
  br label %50

50:                                               ; preds = %48, %38, %42
  %51 = phi i8 [ 0, %42 ], [ 0, %38 ], [ 1, %48 ]
  ret i8 %51
}

; Function Attrs: cold inlinehint nounwind uwtable
define internal fastcc ptr @op_iter_init_use(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #2 !prof !81 {
  %4 = and i32 %2, 10
  %5 = and i32 %2, 11
  %6 = icmp eq i32 %5, 1
  br i1 %6, label %8, label %7

7:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.21, i32 noundef 771, ptr noundef nonnull @.str.1) #24
  br label %8

8:                                                ; preds = %3, %7
  %9 = and i32 %2, 8
  %10 = icmp ne i32 %9, 0
  %11 = icmp eq i32 %4, 8
  %12 = and i32 %2, 5
  %13 = icmp eq i32 %12, 4
  %14 = or i1 %11, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %8
  tail call void @fancy_abort(ptr noundef nonnull @.str.21, i32 noundef 747, ptr noundef nonnull @.str.1) #24
  br label %16

16:                                               ; preds = %8, %15
  %17 = icmp eq i32 %4, 0
  br i1 %17, label %26, label %18

18:                                               ; preds = %16
  %19 = load i32, ptr %1, align 8
  %20 = and i32 %19, 255
  %21 = add nsw i32 %20, -10
  %22 = icmp ult i32 %21, -9
  br i1 %22, label %26, label %23

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.gimple_statement_with_ops_base, ptr %1, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !93
  br label %26

26:                                               ; preds = %23, %18, %16
  %27 = phi ptr [ null, %16 ], [ %25, %23 ], [ null, %18 ]
  %28 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 2
  store ptr %27, ptr %28, align 8, !tbaa !230
  %29 = icmp eq ptr %27, null
  %30 = select i1 %10, i1 true, i1 %29
  br i1 %30, label %42, label %31

31:                                               ; preds = %26
  %32 = load i32, ptr %1, align 8
  %33 = and i32 %32, 254
  %34 = add nsw i32 %33, -10
  %35 = icmp ult i32 %34, -4
  br i1 %35, label %42, label %36

36:                                               ; preds = %31
  %37 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %1, i64 0, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !93
  %39 = icmp eq ptr %38, null
  br i1 %39, label %42, label %40

40:                                               ; preds = %36
  %41 = load ptr, ptr %27, align 8, !tbaa !170
  store ptr %41, ptr %28, align 8, !tbaa !230
  br label %42

42:                                               ; preds = %31, %40, %36, %26
  %43 = icmp eq i32 %12, 0
  br i1 %43, label %52, label %44

44:                                               ; preds = %42
  %45 = load i32, ptr %1, align 8
  %46 = and i32 %45, 255
  %47 = add nsw i32 %46, -10
  %48 = icmp ult i32 %47, -9
  br i1 %48, label %52, label %49

49:                                               ; preds = %44
  %50 = getelementptr inbounds %struct.gimple_statement_with_ops_base, ptr %1, i64 0, i32 2
  %51 = load ptr, ptr %50, align 8, !tbaa !93
  br label %52

52:                                               ; preds = %49, %44, %42
  %53 = phi ptr [ null, %42 ], [ %51, %49 ], [ null, %44 ]
  %54 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 3
  store ptr %53, ptr %54, align 8, !tbaa !232
  %55 = and i32 %2, 4
  %56 = icmp ne i32 %55, 0
  %57 = icmp eq ptr %53, null
  %58 = select i1 %56, i1 true, i1 %57
  br i1 %58, label %70, label %59

59:                                               ; preds = %52
  %60 = load i32, ptr %1, align 8
  %61 = and i32 %60, 254
  %62 = add nsw i32 %61, -10
  %63 = icmp ult i32 %62, -4
  br i1 %63, label %70, label %64

64:                                               ; preds = %59
  %65 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %1, i64 0, i32 2
  %66 = load ptr, ptr %65, align 8, !tbaa !93
  %67 = icmp eq ptr %66, null
  br i1 %67, label %70, label %68

68:                                               ; preds = %64
  %69 = load ptr, ptr %53, align 8, !tbaa !223
  store ptr %69, ptr %54, align 8, !tbaa !232
  br label %70

70:                                               ; preds = %59, %52, %64, %68
  store i8 0, ptr %0, align 8, !tbaa !233
  %71 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 4
  %72 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %71, i8 0, i64 16, i1 false)
  store i32 2, ptr %72, align 4, !tbaa !234
  %73 = load ptr, ptr %54, align 8, !tbaa !232
  %74 = icmp eq ptr %73, null
  br i1 %74, label %78, label %75

75:                                               ; preds = %70
  %76 = getelementptr inbounds %struct.use_optype_d, ptr %73, i64 0, i32 1
  %77 = load ptr, ptr %73, align 8, !tbaa !223
  store ptr %77, ptr %54, align 8, !tbaa !232
  br label %79

78:                                               ; preds = %70
  store i8 1, ptr %0, align 8, !tbaa !233
  br label %79

79:                                               ; preds = %75, %78
  %80 = phi ptr [ %76, %75 ], [ null, %78 ]
  ret ptr %80
}

; Function Attrs: cold nounwind uwtable
define internal fastcc zeroext i8 @verify_use(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3, i8 noundef zeroext %4, ptr noundef %5) unnamed_addr #13 !prof !81 {
  %7 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %2, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !135
  %9 = load ptr, ptr %8, align 8, !tbaa !82
  %10 = load i64, ptr %9, align 8
  %11 = and i64 %10, 1099511627776
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %6
  %14 = load ptr, ptr @stderr, align 8, !tbaa !82
  %15 = tail call zeroext i8 @verify_imm_links(ptr noundef %14, ptr noundef nonnull %9) #24
  %16 = icmp ne i8 %15, 0
  %17 = zext i1 %16 to i8
  br label %18

18:                                               ; preds = %13, %6
  %19 = phi i8 [ 0, %6 ], [ %17, %13 ]
  %20 = load i64, ptr %9, align 8
  %21 = or i64 %20, 1099511627776
  store i64 %21, ptr %9, align 8
  %22 = getelementptr inbounds %struct.tree_ssa_name, ptr %9, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !93
  %24 = load i32, ptr %23, align 8
  %25 = and i32 %24, 255
  %26 = icmp ne i32 %25, 18
  %27 = and i64 %20, 4294967296
  %28 = icmp eq i64 %27, 0
  %29 = select i1 %26, i1 true, i1 %28
  br i1 %29, label %30, label %54

30:                                               ; preds = %18
  %31 = icmp eq ptr %1, null
  br i1 %31, label %32, label %33

32:                                               ; preds = %30
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.40) #24
  br label %54

33:                                               ; preds = %30
  %34 = icmp eq ptr %0, %1
  br i1 %34, label %43, label %35

35:                                               ; preds = %33
  %36 = tail call zeroext i8 @dominated_by_p(i32 noundef 1, ptr noundef %0, ptr noundef nonnull %1) #24
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %35
  %39 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 9
  %40 = load i32, ptr %39, align 8, !tbaa !195
  %41 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %42 = load i32, ptr %41, align 8, !tbaa !195
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.41, i32 noundef %40, i32 noundef %42) #24
  br label %54

43:                                               ; preds = %35, %33
  %44 = icmp ne ptr %5, null
  %45 = and i1 %34, %44
  br i1 %45, label %46, label %54

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct.tree_ssa_name, ptr %9, i64 0, i32 3
  %48 = load i32, ptr %47, align 8, !tbaa !93
  %49 = tail call i32 @bitmap_bit_p(ptr noundef nonnull %5, i32 noundef %48) #24
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %46
  %52 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 9
  %53 = load i32, ptr %52, align 8, !tbaa !195
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.42, i32 noundef %53) #24
  br label %54

54:                                               ; preds = %18, %32, %43, %46, %51, %38
  %55 = phi i8 [ %19, %46 ], [ 1, %51 ], [ %19, %43 ], [ 1, %38 ], [ 1, %32 ], [ %19, %18 ]
  %56 = icmp eq i8 %4, 0
  br i1 %56, label %62, label %57

57:                                               ; preds = %54
  %58 = load i64, ptr %9, align 8
  %59 = and i64 %58, 4194304
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %57
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.43) #24
  br label %62

62:                                               ; preds = %61, %57, %54
  %63 = phi i8 [ %55, %57 ], [ 1, %61 ], [ %55, %54 ]
  %64 = load ptr, ptr %2, align 8, !tbaa !162
  %65 = icmp eq ptr %64, null
  br i1 %65, label %74, label %66

66:                                               ; preds = %62
  %67 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %64, i64 0, i32 3
  %68 = load ptr, ptr %67, align 8, !tbaa !135
  %69 = icmp eq ptr %68, null
  %70 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %64, i64 0, i32 2
  %71 = select i1 %69, ptr %70, ptr %68
  %72 = load ptr, ptr %71, align 8, !tbaa !93
  %73 = icmp eq ptr %72, %9
  br i1 %73, label %76, label %74

74:                                               ; preds = %66, %62
  %75 = phi ptr [ @.str.44, %62 ], [ @.str.45, %66 ]
  tail call void (ptr, ...) @error(ptr noundef nonnull %75) #24
  br label %76

76:                                               ; preds = %74, %66
  %77 = phi i8 [ %63, %66 ], [ 1, %74 ]
  %78 = icmp eq i8 %77, 0
  br i1 %78, label %86, label %79

79:                                               ; preds = %76
  %80 = load ptr, ptr @stderr, align 8, !tbaa !82
  %81 = tail call i64 @fwrite(ptr nonnull @.str.46, i64 14, i64 1, ptr %80) #25
  %82 = load ptr, ptr @stderr, align 8, !tbaa !82
  tail call void @print_generic_expr(ptr noundef %82, ptr noundef nonnull %9, i32 noundef 64) #24
  %83 = load ptr, ptr @stderr, align 8, !tbaa !82
  %84 = tail call i64 @fwrite(ptr nonnull @.str.47, i64 15, i64 1, ptr %83) #25
  %85 = load ptr, ptr @stderr, align 8, !tbaa !82
  tail call void @print_gimple_stmt(ptr noundef %85, ptr noundef %3, i32 noundef 0, i32 noundef 64) #24
  br label %86

86:                                               ; preds = %79, %76
  ret i8 %77
}

declare void @bitmap_clear(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #16

declare void @free_dominance_info(i32 noundef) local_unnamed_addr #3

declare void @set_dom_info_availability(i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @bitmap_obstack_free(ptr noundef) local_unnamed_addr #3

declare void @timevar_pop_1(i32 noundef) local_unnamed_addr #3

declare void @internal_error(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @int_tree_map_eq(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #17 !prof !81 {
  %3 = load i32, ptr %0, align 8, !tbaa !235
  %4 = load i32, ptr %1, align 8, !tbaa !235
  %5 = icmp eq i32 %3, %4
  %6 = zext i1 %5 to i32
  ret i32 %6
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @int_tree_map_hash(ptr nocapture noundef readonly %0) local_unnamed_addr #17 !prof !81 {
  %2 = load i32, ptr %0, align 8, !tbaa !235
  ret i32 %2
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @uid_decl_map_eq(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #18 !prof !237 {
  %3 = getelementptr inbounds %struct.tree_decl_minimal, ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !93
  %5 = getelementptr inbounds %struct.tree_decl_minimal, ptr %1, i64 0, i32 2
  %6 = load i32, ptr %5, align 4, !tbaa !93
  %7 = icmp eq i32 %4, %6
  %8 = zext i1 %7 to i32
  ret i32 %8
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @uid_decl_map_hash(ptr nocapture noundef readonly %0) #18 !prof !238 {
  %2 = getelementptr inbounds %struct.tree_decl_minimal, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !93
  ret i32 %3
}

; Function Attrs: nounwind uwtable
define dso_local void @init_tree_ssa(ptr noundef %0) local_unnamed_addr #10 !prof !239 {
  %2 = tail call ptr @ggc_alloc_cleared_stat(i64 noundef 144) #24
  %3 = getelementptr inbounds %struct.function, ptr %0, i64 0, i32 3
  store ptr %2, ptr %3, align 8, !tbaa !183
  %4 = tail call ptr @htab_create_alloc(i64 noundef 20, ptr noundef nonnull @uid_decl_map_hash, ptr noundef nonnull @uid_decl_map_eq, ptr noundef null, ptr noundef nonnull @ggc_calloc, ptr noundef nonnull @ggc_free) #24
  %5 = load ptr, ptr %3, align 8, !tbaa !183
  store ptr %4, ptr %5, align 8, !tbaa !240
  %6 = tail call ptr @htab_create_alloc(i64 noundef 20, ptr noundef nonnull @uid_ssaname_map_hash, ptr noundef nonnull @uid_ssaname_map_eq, ptr noundef null, ptr noundef nonnull @ggc_calloc, ptr noundef nonnull @ggc_free) #24
  %7 = load ptr, ptr %3, align 8, !tbaa !183
  %8 = getelementptr inbounds %struct.gimple_df, ptr %7, i64 0, i32 8
  store ptr %6, ptr %8, align 8, !tbaa !241
  %9 = getelementptr inbounds %struct.gimple_df, ptr %7, i64 0, i32 4
  tail call void @pt_solution_reset(ptr noundef nonnull %9) #24
  %10 = load ptr, ptr %3, align 8, !tbaa !183
  %11 = getelementptr inbounds %struct.gimple_df, ptr %10, i64 0, i32 5
  tail call void @pt_solution_reset(ptr noundef nonnull %11) #24
  tail call void @init_ssanames(ptr noundef %0, i32 noundef 0) #24
  tail call void @init_phinodes() #24
  ret void
}

declare ptr @ggc_alloc_cleared_stat(i64 noundef) local_unnamed_addr #3

declare ptr @htab_create_alloc(i64 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @ggc_calloc(i64 noundef, i64 noundef) #3

declare void @ggc_free(ptr noundef) #3

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define internal i32 @uid_ssaname_map_hash(ptr nocapture noundef readonly %0) #19 !prof !81 {
  %2 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !93
  %4 = getelementptr inbounds %struct.tree_decl_minimal, ptr %3, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !93
  ret i32 %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define internal i32 @uid_ssaname_map_eq(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #20 !prof !242 !PGOFuncName !243 {
  %3 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !93
  %5 = getelementptr inbounds %struct.tree_decl_minimal, ptr %4, i64 0, i32 2
  %6 = load i32, ptr %5, align 4, !tbaa !93
  %7 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !93
  %9 = getelementptr inbounds %struct.tree_decl_minimal, ptr %8, i64 0, i32 2
  %10 = load i32, ptr %9, align 4, !tbaa !93
  %11 = icmp eq i32 %6, %10
  %12 = zext i1 %11 to i32
  ret i32 %12
}

declare void @pt_solution_reset(ptr noundef) local_unnamed_addr #3

declare void @init_ssanames(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @init_phinodes() local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @delete_tree_ssa() local_unnamed_addr #10 !prof !239 {
  %1 = load ptr, ptr @cfun, align 8, !tbaa !82
  %2 = getelementptr inbounds %struct.function, ptr %1, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !183
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5, !prof !244

5:                                                ; preds = %0
  %6 = load ptr, ptr %3, align 8, !tbaa !240
  br label %7

7:                                                ; preds = %5, %0
  %8 = phi ptr [ %6, %5 ], [ null, %0 ]
  %9 = getelementptr inbounds %struct.htab, ptr %8, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !245
  %11 = tail call i64 @htab_size(ptr noundef %8) #24
  %12 = getelementptr inbounds ptr, ptr %10, i64 %11
  br label %13

13:                                               ; preds = %17, %7
  %14 = phi ptr [ %10, %7 ], [ %18, %17 ]
  %15 = load ptr, ptr %14, align 8, !tbaa !82
  %16 = icmp ult ptr %15, inttoptr (i64 2 to ptr)
  br i1 %16, label %17, label %20, !prof !247

17:                                               ; preds = %13
  %18 = getelementptr inbounds ptr, ptr %14, i64 1
  %19 = icmp ult ptr %18, %12
  br i1 %19, label %13, label %20, !prof !248, !llvm.loop !249

20:                                               ; preds = %17, %13
  %21 = phi ptr [ %14, %13 ], [ %18, %17 ]
  %22 = icmp ult ptr %21, %12
  br i1 %22, label %23, label %25, !prof !250

23:                                               ; preds = %20
  %24 = load ptr, ptr %21, align 8, !tbaa !82
  br label %25

25:                                               ; preds = %20, %23
  %26 = phi ptr [ %24, %23 ], [ null, %20 ]
  %27 = icmp ult ptr %21, %12
  br i1 %27, label %28, label %105, !prof !251

28:                                               ; preds = %25, %102
  %29 = phi ptr [ %103, %102 ], [ %26, %25 ]
  %30 = phi ptr [ %96, %102 ], [ %21, %25 ]
  %31 = load i64, ptr %29, align 8
  %32 = and i64 %31, 67108864
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %40, !prof !252

34:                                               ; preds = %28
  %35 = getelementptr inbounds %struct.tree_decl_common, ptr %29, i64 0, i32 2
  %36 = load i64, ptr %35, align 8
  %37 = lshr i64 %36, 25
  %38 = trunc i64 %37 to i8
  %39 = and i8 %38, 1
  br label %40

40:                                               ; preds = %28, %34
  %41 = phi i8 [ 1, %28 ], [ %39, %34 ]
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %43, label %92, !prof !253

43:                                               ; preds = %40
  %44 = trunc i64 %31 to i16
  switch i16 %44, label %49 [
    i16 32, label %45
    i16 34, label %47
  ], !prof !254

45:                                               ; preds = %43
  %46 = getelementptr inbounds %struct.tree_var_decl, ptr %29, i64 0, i32 1
  br label %54

47:                                               ; preds = %43
  %48 = getelementptr inbounds %struct.tree_parm_decl, ptr %29, i64 0, i32 2
  br label %54

49:                                               ; preds = %43
  %50 = and i64 %31, 65535
  %51 = icmp eq i64 %50, 36
  %52 = getelementptr inbounds %struct.tree_result_decl, ptr %29, i64 0, i32 1
  %53 = select i1 %51, ptr %52, ptr null, !prof !255
  br label %54

54:                                               ; preds = %49, %47, %45
  %55 = phi ptr [ %46, %45 ], [ %48, %47 ], [ %53, %49 ]
  %56 = icmp eq ptr %55, null
  br i1 %56, label %59, label %57, !prof !256

57:                                               ; preds = %54
  %58 = load ptr, ptr %55, align 8, !tbaa !82
  br label %59

59:                                               ; preds = %54, %57
  %60 = phi ptr [ %58, %57 ], [ null, %54 ]
  %61 = icmp eq ptr %60, null
  br i1 %61, label %92, label %62, !prof !256

62:                                               ; preds = %59
  switch i16 %44, label %67 [
    i16 32, label %63
    i16 34, label %65
  ], !prof !254

63:                                               ; preds = %62
  %64 = getelementptr inbounds %struct.tree_var_decl, ptr %29, i64 0, i32 1
  br label %72

65:                                               ; preds = %62
  %66 = getelementptr inbounds %struct.tree_parm_decl, ptr %29, i64 0, i32 2
  br label %72

67:                                               ; preds = %62
  %68 = and i64 %31, 65535
  %69 = icmp eq i64 %68, 36
  %70 = getelementptr inbounds %struct.tree_result_decl, ptr %29, i64 0, i32 1
  %71 = select i1 %69, ptr %70, ptr null, !prof !255
  br label %72

72:                                               ; preds = %67, %65, %63
  %73 = phi ptr [ %64, %63 ], [ %66, %65 ], [ %71, %67 ]
  %74 = icmp eq ptr %73, null
  br i1 %74, label %77, label %75, !prof !256

75:                                               ; preds = %72
  %76 = load ptr, ptr %73, align 8, !tbaa !82
  br label %77

77:                                               ; preds = %72, %75
  %78 = phi ptr [ %76, %75 ], [ null, %72 ]
  tail call void @ggc_free(ptr noundef %78) #24
  %79 = load i64, ptr %29, align 8
  %80 = trunc i64 %79 to i16
  switch i16 %80, label %85 [
    i16 32, label %81
    i16 34, label %83
  ], !prof !254

81:                                               ; preds = %77
  %82 = getelementptr inbounds %struct.tree_var_decl, ptr %29, i64 0, i32 1
  br label %90

83:                                               ; preds = %77
  %84 = getelementptr inbounds %struct.tree_parm_decl, ptr %29, i64 0, i32 2
  br label %90

85:                                               ; preds = %77
  %86 = and i64 %79, 65535
  %87 = icmp eq i64 %86, 36
  %88 = getelementptr inbounds %struct.tree_result_decl, ptr %29, i64 0, i32 1
  %89 = select i1 %87, ptr %88, ptr null, !prof !255
  br label %90

90:                                               ; preds = %83, %85, %81
  %91 = phi ptr [ %82, %81 ], [ %84, %83 ], [ %89, %85 ]
  store ptr null, ptr %91, align 8, !tbaa !82
  br label %92

92:                                               ; preds = %59, %90, %40
  br label %93

93:                                               ; preds = %92, %98
  %94 = phi ptr [ %96, %98 ], [ %30, %92 ]
  %95 = phi ptr [ %101, %98 ], [ undef, %92 ]
  %96 = getelementptr inbounds ptr, ptr %94, i64 1
  %97 = icmp ult ptr %96, %12
  br i1 %97, label %98, label %102, !prof !257

98:                                               ; preds = %93
  %99 = load ptr, ptr %96, align 8, !tbaa !82
  %100 = icmp ult ptr %99, inttoptr (i64 2 to ptr)
  %101 = select i1 %100, ptr %95, ptr %99, !prof !258
  br i1 %100, label %93, label %102, !prof !258

102:                                              ; preds = %98, %93
  %103 = phi ptr [ null, %93 ], [ %101, %98 ]
  %104 = icmp ult ptr %96, %12
  br i1 %104, label %28, label %105, !prof !259, !llvm.loop !260

105:                                              ; preds = %102, %25
  %106 = load ptr, ptr @cfun, align 8, !tbaa !82
  %107 = getelementptr inbounds %struct.function, ptr %106, i64 0, i32 3
  %108 = load ptr, ptr %107, align 8, !tbaa !183
  %109 = icmp eq ptr %108, null
  br i1 %109, label %112, label %110, !prof !244

110:                                              ; preds = %105
  %111 = load ptr, ptr %108, align 8, !tbaa !240
  br label %112

112:                                              ; preds = %105, %110
  %113 = phi ptr [ %111, %110 ], [ null, %105 ]
  tail call void @htab_delete(ptr noundef %113) #24
  %114 = load ptr, ptr @cfun, align 8, !tbaa !82
  %115 = getelementptr inbounds %struct.function, ptr %114, i64 0, i32 3
  %116 = load ptr, ptr %115, align 8, !tbaa !183
  store ptr null, ptr %116, align 8, !tbaa !240
  tail call void @fini_ssanames() #24
  tail call void @fini_phinodes() #24
  %117 = tail call zeroext i8 @ssa_operands_active() #24
  %118 = icmp eq i8 %117, 0
  br i1 %118, label %120, label %119, !prof !244

119:                                              ; preds = %112
  tail call void @fini_ssa_operands() #24
  br label %120

120:                                              ; preds = %119, %112
  tail call void @delete_alias_heapvars() #24
  %121 = load ptr, ptr @cfun, align 8, !tbaa !82
  %122 = getelementptr inbounds %struct.function, ptr %121, i64 0, i32 3
  %123 = load ptr, ptr %122, align 8, !tbaa !183
  %124 = getelementptr inbounds %struct.gimple_df, ptr %123, i64 0, i32 8
  %125 = load ptr, ptr %124, align 8, !tbaa !241
  tail call void @htab_delete(ptr noundef %125) #24
  %126 = load ptr, ptr @cfun, align 8, !tbaa !82
  %127 = getelementptr inbounds %struct.function, ptr %126, i64 0, i32 3
  %128 = load ptr, ptr %127, align 8, !tbaa !183
  %129 = getelementptr inbounds %struct.gimple_df, ptr %128, i64 0, i32 8
  store ptr null, ptr %129, align 8, !tbaa !241
  %130 = getelementptr inbounds %struct.gimple_df, ptr %128, i64 0, i32 4
  tail call void @pt_solution_reset(ptr noundef nonnull %130) #24
  %131 = load ptr, ptr @cfun, align 8, !tbaa !82
  %132 = getelementptr inbounds %struct.function, ptr %131, i64 0, i32 3
  %133 = load ptr, ptr %132, align 8, !tbaa !183
  %134 = getelementptr inbounds %struct.gimple_df, ptr %133, i64 0, i32 5
  tail call void @pt_solution_reset(ptr noundef nonnull %134) #24
  %135 = load ptr, ptr @cfun, align 8, !tbaa !82
  %136 = getelementptr inbounds %struct.function, ptr %135, i64 0, i32 3
  %137 = load ptr, ptr %136, align 8, !tbaa !183
  %138 = getelementptr inbounds %struct.gimple_df, ptr %137, i64 0, i32 6
  %139 = load ptr, ptr %138, align 8, !tbaa !261
  %140 = icmp eq ptr %139, null
  br i1 %140, label %142, label %141, !prof !250

141:                                              ; preds = %120
  tail call void @pointer_map_destroy(ptr noundef nonnull %139) #24
  br label %142

142:                                              ; preds = %141, %120
  %143 = load ptr, ptr @cfun, align 8, !tbaa !82
  %144 = getelementptr inbounds %struct.function, ptr %143, i64 0, i32 3
  %145 = load ptr, ptr %144, align 8, !tbaa !183
  %146 = getelementptr inbounds %struct.gimple_df, ptr %145, i64 0, i32 6
  store ptr null, ptr %146, align 8, !tbaa !261
  %147 = getelementptr inbounds %struct.gimple_df, ptr %145, i64 0, i32 1
  store ptr null, ptr %147, align 8, !tbaa !262
  store ptr null, ptr %144, align 8, !tbaa !183
  %148 = load ptr, ptr @edge_var_maps, align 8, !tbaa !82
  %149 = icmp eq ptr %148, null
  br i1 %149, label %152, label %150, !prof !123

150:                                              ; preds = %142
  tail call void @pointer_map_traverse(ptr noundef nonnull %148, ptr noundef nonnull @free_var_map_entry, ptr noundef null) #24
  %151 = load ptr, ptr @edge_var_maps, align 8, !tbaa !82
  tail call void @pointer_map_destroy(ptr noundef %151) #24
  store ptr null, ptr @edge_var_maps, align 8, !tbaa !82
  br label %152

152:                                              ; preds = %142, %150
  ret void
}

declare void @htab_delete(ptr noundef) local_unnamed_addr #3

declare void @fini_ssanames() local_unnamed_addr #3

declare void @fini_phinodes() local_unnamed_addr #3

declare zeroext i8 @ssa_operands_active() local_unnamed_addr #3

declare void @fini_ssa_operands() local_unnamed_addr #3

declare void @delete_alias_heapvars() local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define dso_local zeroext i8 @useless_type_conversion_p(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #9 !prof !263 {
  br label %3

3:                                                ; preds = %177, %314, %205, %186, %2
  %4 = phi ptr [ %0, %2 ], [ %188, %186 ], [ %207, %205 ], [ %316, %314 ], [ %175, %177 ]
  %5 = phi ptr [ %1, %2 ], [ %190, %186 ], [ %209, %205 ], [ %318, %314 ], [ %174, %177 ]
  %6 = load i64, ptr %5, align 8
  %7 = trunc i64 %6 to i16
  switch i16 %7, label %48 [
    i16 10, label %8
    i16 12, label %8
  ], !prof !264

8:                                                ; preds = %3, %3
  %9 = load i64, ptr %4, align 8
  %10 = trunc i64 %9 to i16
  switch i16 %10, label %48 [
    i16 10, label %11
    i16 12, label %11
  ], !prof !265

11:                                               ; preds = %8, %8
  %12 = getelementptr inbounds %struct.tree_common, ptr %4, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !93
  %14 = load i64, ptr %13, align 8
  %15 = getelementptr inbounds %struct.tree_common, ptr %5, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !93
  %17 = load i64, ptr %16, align 8
  %18 = xor i64 %17, %14
  %19 = icmp ult i64 %18, 72057594037927936
  br i1 %19, label %20, label %391, !prof !266

20:                                               ; preds = %11
  %21 = trunc i64 %14 to i16
  switch i16 %21, label %36 [
    i16 19, label %391
    i16 20, label %22
    i16 21, label %22
  ], !prof !267

22:                                               ; preds = %20, %20
  %23 = and i64 %18, 65535
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %36, !prof !268

25:                                               ; preds = %22
  %26 = getelementptr inbounds %struct.tree_type, ptr %13, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !93
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %36, !prof !269

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.tree_common, ptr %13, i64 0, i32 2
  %31 = load ptr, ptr %30, align 8, !tbaa !93
  %32 = getelementptr inbounds %struct.tree_common, ptr %16, i64 0, i32 2
  %33 = load ptr, ptr %32, align 8, !tbaa !93
  %34 = tail call zeroext i8 @useless_type_conversion_p(ptr noundef %31, ptr noundef %33), !range !194
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %36, label %391

36:                                               ; preds = %29, %20, %25, %22
  %37 = getelementptr inbounds %struct.tree_type, ptr %4, i64 0, i32 6
  %38 = load i32, ptr %37, align 4
  %39 = lshr i32 %38, 13
  %40 = and i32 %39, 1
  %41 = getelementptr inbounds %struct.tree_type, ptr %5, i64 0, i32 6
  %42 = load i32, ptr %41, align 4
  %43 = lshr i32 %42, 13
  %44 = and i32 %43, 1
  %45 = icmp eq i32 %40, %44
  %46 = icmp eq i32 %40, 0
  %47 = or i1 %46, %45
  br i1 %47, label %48, label %391, !prof !266

48:                                               ; preds = %8, %3, %36
  %49 = getelementptr inbounds %struct.tree_type, ptr %5, i64 0, i32 16
  %50 = load ptr, ptr %49, align 8, !tbaa !93
  %51 = getelementptr inbounds %struct.tree_type, ptr %4, i64 0, i32 16
  %52 = load ptr, ptr %51, align 8, !tbaa !93
  %53 = icmp eq ptr %50, %52
  br i1 %53, label %391, label %54, !prof !270

54:                                               ; preds = %48
  %55 = getelementptr inbounds %struct.tree_type, ptr %50, i64 0, i32 19
  %56 = load ptr, ptr %55, align 8, !tbaa !93
  %57 = icmp eq ptr %56, null
  br i1 %57, label %62, label %58, !prof !271

58:                                               ; preds = %54
  %59 = getelementptr inbounds %struct.tree_type, ptr %52, i64 0, i32 19
  %60 = load ptr, ptr %59, align 8, !tbaa !93
  %61 = icmp eq ptr %56, %60
  br i1 %61, label %391, label %62, !prof !271

62:                                               ; preds = %58, %54
  %63 = load i64, ptr %50, align 8
  %64 = and i64 %63, 65535
  %65 = icmp eq i64 %64, 14
  br i1 %65, label %66, label %68, !prof !271

66:                                               ; preds = %62
  %67 = tail call i32 @vector_type_mode(ptr noundef nonnull %50) #24
  br label %73

68:                                               ; preds = %62
  %69 = getelementptr inbounds %struct.tree_type, ptr %50, i64 0, i32 6
  %70 = load i32, ptr %69, align 4
  %71 = lshr i32 %70, 16
  %72 = and i32 %71, 255
  br label %73

73:                                               ; preds = %68, %66
  %74 = phi i32 [ %67, %66 ], [ %72, %68 ]
  %75 = load i64, ptr %52, align 8
  %76 = and i64 %75, 65535
  %77 = icmp eq i64 %76, 14
  br i1 %77, label %78, label %80, !prof !271

78:                                               ; preds = %73
  %79 = tail call i32 @vector_type_mode(ptr noundef nonnull %52) #24
  br label %85

80:                                               ; preds = %73
  %81 = getelementptr inbounds %struct.tree_type, ptr %52, i64 0, i32 6
  %82 = load i32, ptr %81, align 4
  %83 = lshr i32 %82, 16
  %84 = and i32 %83, 255
  br label %85

85:                                               ; preds = %80, %78
  %86 = phi i32 [ %79, %78 ], [ %84, %80 ]
  %87 = icmp eq i32 %74, %86
  br i1 %87, label %94, label %88, !prof !272

88:                                               ; preds = %85
  %89 = load i64, ptr %50, align 8
  %90 = trunc i64 %89 to i32
  %91 = and i32 %90, 65535
  %92 = add nsw i32 %91, -15
  %93 = icmp ult i32 %92, 4
  br i1 %93, label %94, label %391, !prof !273

94:                                               ; preds = %88, %85
  %95 = load i64, ptr %50, align 8
  %96 = trunc i64 %95 to i32
  %97 = and i32 %96, 65535
  %98 = add nsw i32 %97, -6
  %99 = icmp ult i32 %98, 3
  br i1 %99, label %100, label %119, !prof !274

100:                                              ; preds = %94
  %101 = load i64, ptr %52, align 8
  %102 = trunc i64 %101 to i32
  %103 = and i32 %102, 65535
  %104 = add nsw i32 %103, -6
  %105 = icmp ult i32 %104, 3
  br i1 %105, label %106, label %119, !prof !275

106:                                              ; preds = %100
  %107 = xor i64 %101, %95
  %108 = and i64 %107, 2097152
  %109 = icmp eq i64 %108, 0
  br i1 %109, label %110, label %391, !prof !276

110:                                              ; preds = %106
  %111 = getelementptr inbounds %struct.tree_type, ptr %50, i64 0, i32 6
  %112 = load i32, ptr %111, align 4
  %113 = getelementptr inbounds %struct.tree_type, ptr %52, i64 0, i32 6
  %114 = load i32, ptr %113, align 4
  %115 = xor i32 %114, %112
  %116 = and i32 %115, 1023
  %117 = icmp eq i32 %116, 0
  %118 = zext i1 %117 to i8
  br label %391

119:                                              ; preds = %100, %94
  %120 = and i64 %95, 65535
  %121 = trunc i64 %95 to i16
  switch i16 %121, label %132 [
    i16 9, label %122
    i16 11, label %128
  ], !prof !277

122:                                              ; preds = %119
  %123 = load i64, ptr %52, align 8
  %124 = and i64 %123, 65535
  %125 = icmp eq i64 %124, 9
  br i1 %125, label %391, label %126

126:                                              ; preds = %122
  %127 = icmp eq i64 %120, 11
  br i1 %127, label %128, label %132, !prof !278

128:                                              ; preds = %119, %126
  %129 = load i64, ptr %52, align 8
  %130 = and i64 %129, 65535
  %131 = icmp eq i64 %130, 11
  br i1 %131, label %391, label %132

132:                                              ; preds = %128, %119, %126
  %133 = trunc i64 %95 to i16
  switch i16 %133, label %180 [
    i16 10, label %134
    i16 12, label %134
  ], !prof !279

134:                                              ; preds = %132, %132
  %135 = load i64, ptr %52, align 8
  %136 = trunc i64 %135 to i16
  switch i16 %136, label %180 [
    i16 10, label %137
    i16 12, label %137
  ], !prof !280

137:                                              ; preds = %134, %134
  %138 = getelementptr inbounds %struct.tree_common, ptr %52, i64 0, i32 2
  %139 = load ptr, ptr %138, align 8, !tbaa !93
  %140 = load i64, ptr %139, align 8
  %141 = trunc i64 %140 to i32
  %142 = and i32 %141, 65534
  %143 = icmp eq i32 %142, 20
  br i1 %143, label %159, label %144, !prof !281

144:                                              ; preds = %137
  %145 = getelementptr inbounds %struct.tree_common, ptr %50, i64 0, i32 2
  %146 = load ptr, ptr %145, align 8, !tbaa !93
  %147 = load i64, ptr %146, align 8
  %148 = trunc i64 %147 to i32
  %149 = and i32 %148, 65534
  %150 = icmp eq i32 %149, 20
  br i1 %150, label %159, label %151, !prof !281

151:                                              ; preds = %144
  %152 = lshr i32 %141, 19
  %153 = and i32 %152, 1
  %154 = lshr i32 %148, 19
  %155 = and i32 %154, 1
  %156 = icmp eq i32 %153, %155
  %157 = icmp eq i32 %153, 0
  %158 = or i1 %157, %156
  br i1 %158, label %159, label %391, !prof !282

159:                                              ; preds = %144, %137, %151
  %160 = getelementptr inbounds %struct.tree_common, ptr %50, i64 0, i32 2
  %161 = load ptr, ptr %160, align 8, !tbaa !93
  %162 = getelementptr inbounds %struct.tree_type, ptr %161, i64 0, i32 2
  %163 = load ptr, ptr %162, align 8, !tbaa !93
  %164 = icmp eq ptr %163, null
  br i1 %164, label %165, label %169, !prof !281

165:                                              ; preds = %159
  %166 = getelementptr inbounds %struct.tree_type, ptr %139, i64 0, i32 2
  %167 = load ptr, ptr %166, align 8, !tbaa !93
  %168 = icmp eq ptr %167, null
  br i1 %168, label %169, label %391

169:                                              ; preds = %165, %159
  %170 = tail call i32 @get_deref_alias_set(ptr noundef nonnull %50) #24
  %171 = tail call i32 @get_deref_alias_set(ptr noundef nonnull %52) #24
  %172 = icmp eq i32 %170, %171
  br i1 %172, label %173, label %391, !prof !282

173:                                              ; preds = %169
  %174 = load ptr, ptr %138, align 8, !tbaa !93
  %175 = load ptr, ptr %160, align 8, !tbaa !93
  %176 = icmp eq ptr %174, %175
  br i1 %176, label %391, label %177, !prof !281

177:                                              ; preds = %173
  %178 = tail call zeroext i8 @useless_type_conversion_p(ptr noundef %174, ptr noundef %175), !range !194
  %179 = icmp eq i8 %178, 0
  br i1 %179, label %391, label %3, !prof !283

180:                                              ; preds = %134, %132
  %181 = trunc i64 %95 to i16
  switch i16 %181, label %319 [
    i16 13, label %182
    i16 14, label %193
    i16 15, label %212
  ], !prof !284

182:                                              ; preds = %180
  %183 = load i64, ptr %52, align 8
  %184 = and i64 %183, 65535
  %185 = icmp eq i64 %184, 13
  br i1 %185, label %186, label %191

186:                                              ; preds = %182
  %187 = getelementptr inbounds %struct.tree_common, ptr %52, i64 0, i32 2
  %188 = load ptr, ptr %187, align 8, !tbaa !93
  %189 = getelementptr inbounds %struct.tree_common, ptr %50, i64 0, i32 2
  %190 = load ptr, ptr %189, align 8, !tbaa !93
  br label %3

191:                                              ; preds = %182
  %192 = trunc i64 %95 to i16
  switch i16 %192, label %319 [
    i16 14, label %193
    i16 15, label %212
  ], !prof !285

193:                                              ; preds = %180, %191
  %194 = load i64, ptr %52, align 8
  %195 = and i64 %194, 65535
  %196 = icmp eq i64 %195, 14
  br i1 %196, label %197, label %210

197:                                              ; preds = %193
  %198 = getelementptr inbounds %struct.tree_type, ptr %50, i64 0, i32 6
  %199 = load i32, ptr %198, align 4
  %200 = getelementptr inbounds %struct.tree_type, ptr %52, i64 0, i32 6
  %201 = load i32, ptr %200, align 4
  %202 = xor i32 %201, %199
  %203 = and i32 %202, 1023
  %204 = icmp eq i32 %203, 0
  br i1 %204, label %205, label %210

205:                                              ; preds = %197
  %206 = getelementptr inbounds %struct.tree_common, ptr %52, i64 0, i32 2
  %207 = load ptr, ptr %206, align 8, !tbaa !93
  %208 = getelementptr inbounds %struct.tree_common, ptr %50, i64 0, i32 2
  %209 = load ptr, ptr %208, align 8, !tbaa !93
  br label %3

210:                                              ; preds = %197, %193
  %211 = icmp eq i64 %120, 15
  br i1 %211, label %212, label %319, !prof !286

212:                                              ; preds = %180, %191, %210
  %213 = load i64, ptr %52, align 8
  %214 = and i64 %213, 65535
  %215 = icmp eq i64 %214, 15
  br i1 %215, label %216, label %319, !prof !287

216:                                              ; preds = %212
  %217 = getelementptr inbounds %struct.tree_type, ptr %50, i64 0, i32 6
  %218 = load i32, ptr %217, align 4
  %219 = getelementptr inbounds %struct.tree_type, ptr %52, i64 0, i32 6
  %220 = load i32, ptr %219, align 4
  %221 = xor i32 %220, %218
  %222 = and i32 %221, 16777216
  %223 = icmp eq i32 %222, 0
  br i1 %223, label %224, label %391

224:                                              ; preds = %216
  %225 = getelementptr inbounds %struct.tree_type, ptr %50, i64 0, i32 1
  %226 = load ptr, ptr %225, align 8, !tbaa !93
  %227 = icmp eq ptr %226, null
  br i1 %227, label %228, label %232

228:                                              ; preds = %224
  %229 = getelementptr inbounds %struct.tree_type, ptr %52, i64 0, i32 1
  %230 = load ptr, ptr %229, align 8, !tbaa !93
  %231 = icmp eq ptr %230, null
  br i1 %231, label %232, label %391

232:                                              ; preds = %228, %224
  %233 = getelementptr inbounds %struct.tree_type, ptr %52, i64 0, i32 2
  %234 = load ptr, ptr %233, align 8, !tbaa !93
  %235 = icmp eq ptr %234, null
  br i1 %235, label %251, label %236

236:                                              ; preds = %232
  %237 = load i64, ptr %234, align 8
  %238 = and i64 %237, 65535
  %239 = icmp eq i64 %238, 23
  br i1 %239, label %240, label %251

240:                                              ; preds = %236
  %241 = getelementptr inbounds %struct.tree_type, ptr %50, i64 0, i32 2
  %242 = load ptr, ptr %241, align 8, !tbaa !93
  %243 = icmp eq ptr %242, null
  br i1 %243, label %391, label %244

244:                                              ; preds = %240
  %245 = load i64, ptr %242, align 8
  %246 = and i64 %245, 65535
  %247 = icmp eq i64 %246, 23
  br i1 %247, label %248, label %391

248:                                              ; preds = %244
  %249 = tail call i32 @tree_int_cst_equal(ptr noundef nonnull %234, ptr noundef nonnull %242) #24
  %250 = icmp eq i32 %249, 0
  br i1 %250, label %391, label %251

251:                                              ; preds = %248, %236, %232
  %252 = load ptr, ptr %225, align 8, !tbaa !93
  %253 = icmp eq ptr %252, null
  br i1 %253, label %314, label %254

254:                                              ; preds = %251
  %255 = getelementptr inbounds %struct.tree_type, ptr %52, i64 0, i32 1
  %256 = load ptr, ptr %255, align 8, !tbaa !93
  %257 = icmp eq ptr %256, null
  %258 = icmp eq ptr %252, %256
  %259 = or i1 %257, %258
  br i1 %259, label %314, label %260

260:                                              ; preds = %254
  %261 = getelementptr inbounds %struct.tree_type, ptr %252, i64 0, i32 13
  %262 = load ptr, ptr %261, align 8, !tbaa !93
  %263 = getelementptr inbounds %struct.tree_type, ptr %256, i64 0, i32 13
  %264 = load ptr, ptr %263, align 8, !tbaa !93
  %265 = getelementptr inbounds %struct.tree_type, ptr %252, i64 0, i32 14
  %266 = load ptr, ptr %265, align 8, !tbaa !93
  %267 = getelementptr inbounds %struct.tree_type, ptr %256, i64 0, i32 14
  %268 = load ptr, ptr %267, align 8, !tbaa !93
  %269 = icmp eq ptr %262, null
  br i1 %269, label %275, label %270

270:                                              ; preds = %260
  %271 = load i64, ptr %262, align 8
  %272 = and i64 %271, 65535
  %273 = icmp eq i64 %272, 23
  %274 = select i1 %273, ptr %262, ptr null
  br label %275

275:                                              ; preds = %270, %260
  %276 = phi ptr [ %274, %270 ], [ null, %260 ]
  %277 = icmp eq ptr %264, null
  br i1 %277, label %283, label %278

278:                                              ; preds = %275
  %279 = load i64, ptr %264, align 8
  %280 = and i64 %279, 65535
  %281 = icmp eq i64 %280, 23
  %282 = select i1 %281, ptr %264, ptr null
  br label %283

283:                                              ; preds = %278, %275
  %284 = phi ptr [ %282, %278 ], [ null, %275 ]
  %285 = icmp eq ptr %266, null
  br i1 %285, label %291, label %286

286:                                              ; preds = %283
  %287 = load i64, ptr %266, align 8
  %288 = and i64 %287, 65535
  %289 = icmp eq i64 %288, 23
  %290 = select i1 %289, ptr %266, ptr null
  br label %291

291:                                              ; preds = %286, %283
  %292 = phi ptr [ %290, %286 ], [ null, %283 ]
  %293 = icmp eq ptr %268, null
  br i1 %293, label %299, label %294

294:                                              ; preds = %291
  %295 = load i64, ptr %268, align 8
  %296 = and i64 %295, 65535
  %297 = icmp eq i64 %296, 23
  %298 = select i1 %297, ptr %268, ptr null
  br label %299

299:                                              ; preds = %294, %291
  %300 = phi ptr [ %298, %294 ], [ null, %291 ]
  %301 = icmp eq ptr %284, null
  br i1 %301, label %307, label %302

302:                                              ; preds = %299
  %303 = icmp eq ptr %276, null
  br i1 %303, label %391, label %304

304:                                              ; preds = %302
  %305 = tail call i32 @tree_int_cst_equal(ptr noundef nonnull %276, ptr noundef nonnull %284) #24
  %306 = icmp eq i32 %305, 0
  br i1 %306, label %391, label %307

307:                                              ; preds = %304, %299
  %308 = icmp eq ptr %300, null
  br i1 %308, label %314, label %309

309:                                              ; preds = %307
  %310 = icmp eq ptr %292, null
  br i1 %310, label %391, label %311

311:                                              ; preds = %309
  %312 = tail call i32 @tree_int_cst_equal(ptr noundef nonnull %292, ptr noundef nonnull %300) #24
  %313 = icmp eq i32 %312, 0
  br i1 %313, label %391, label %314

314:                                              ; preds = %307, %311, %254, %251
  %315 = getelementptr inbounds %struct.tree_common, ptr %52, i64 0, i32 2
  %316 = load ptr, ptr %315, align 8, !tbaa !93
  %317 = getelementptr inbounds %struct.tree_common, ptr %50, i64 0, i32 2
  %318 = load ptr, ptr %317, align 8, !tbaa !93
  br label %3

319:                                              ; preds = %180, %191, %212, %210
  %320 = and i64 %95, 65534
  %321 = icmp eq i64 %320, 20
  br i1 %321, label %322, label %391, !prof !288

322:                                              ; preds = %319
  %323 = load i64, ptr %52, align 8
  %324 = xor i64 %323, %95
  %325 = and i64 %324, 65535
  %326 = icmp eq i64 %325, 0
  br i1 %326, label %327, label %391

327:                                              ; preds = %322
  %328 = getelementptr inbounds %struct.tree_common, ptr %52, i64 0, i32 2
  %329 = load ptr, ptr %328, align 8, !tbaa !93
  %330 = getelementptr inbounds %struct.tree_common, ptr %50, i64 0, i32 2
  %331 = load ptr, ptr %330, align 8, !tbaa !93
  %332 = tail call zeroext i8 @useless_type_conversion_p(ptr noundef %329, ptr noundef %331), !range !194
  %333 = icmp eq i8 %332, 0
  br i1 %333, label %391, label %334

334:                                              ; preds = %327
  %335 = load i64, ptr %50, align 8
  %336 = and i64 %335, 65535
  %337 = icmp eq i64 %336, 21
  br i1 %337, label %338, label %345

338:                                              ; preds = %334
  %339 = getelementptr inbounds %struct.tree_type, ptr %52, i64 0, i32 14
  %340 = load ptr, ptr %339, align 8, !tbaa !93
  %341 = getelementptr inbounds %struct.tree_type, ptr %50, i64 0, i32 14
  %342 = load ptr, ptr %341, align 8, !tbaa !93
  %343 = tail call zeroext i8 @useless_type_conversion_p(ptr noundef %340, ptr noundef %342), !range !194
  %344 = icmp eq i8 %343, 0
  br i1 %344, label %391, label %345

345:                                              ; preds = %338, %334
  %346 = getelementptr inbounds %struct.tree_type, ptr %52, i64 0, i32 1
  %347 = load ptr, ptr %346, align 8, !tbaa !93
  %348 = icmp eq ptr %347, null
  br i1 %348, label %391, label %349

349:                                              ; preds = %345
  %350 = getelementptr inbounds %struct.tree_type, ptr %50, i64 0, i32 1
  %351 = load ptr, ptr %350, align 8, !tbaa !93
  %352 = icmp eq ptr %347, %351
  br i1 %352, label %391, label %353

353:                                              ; preds = %349
  %354 = icmp eq ptr %351, null
  br i1 %354, label %391, label %355

355:                                              ; preds = %353, %368
  %356 = phi ptr [ %372, %368 ], [ %351, %353 ]
  %357 = phi ptr [ %370, %368 ], [ %347, %353 ]
  %358 = getelementptr inbounds %struct.tree_list, ptr %357, i64 0, i32 2
  %359 = load ptr, ptr %358, align 8, !tbaa !93
  %360 = getelementptr inbounds %struct.tree_type, ptr %359, i64 0, i32 16
  %361 = load ptr, ptr %360, align 8, !tbaa !93
  %362 = getelementptr inbounds %struct.tree_list, ptr %356, i64 0, i32 2
  %363 = load ptr, ptr %362, align 8, !tbaa !93
  %364 = getelementptr inbounds %struct.tree_type, ptr %363, i64 0, i32 16
  %365 = load ptr, ptr %364, align 8, !tbaa !93
  %366 = tail call zeroext i8 @useless_type_conversion_p(ptr noundef %361, ptr noundef %365), !range !194
  %367 = icmp eq i8 %366, 0
  br i1 %367, label %391, label %368

368:                                              ; preds = %355
  %369 = getelementptr inbounds %struct.tree_common, ptr %357, i64 0, i32 1
  %370 = load ptr, ptr %369, align 8, !tbaa !93
  %371 = getelementptr inbounds %struct.tree_common, ptr %356, i64 0, i32 1
  %372 = load ptr, ptr %371, align 8, !tbaa !93
  %373 = icmp ne ptr %370, null
  %374 = icmp ne ptr %372, null
  %375 = select i1 %373, i1 %374, i1 false
  br i1 %375, label %355, label %376, !llvm.loop !289

376:                                              ; preds = %368
  %377 = select i1 %373, i1 true, i1 %374
  br i1 %377, label %391, label %378

378:                                              ; preds = %376
  %379 = getelementptr inbounds %struct.tree_type, ptr %50, i64 0, i32 4
  %380 = load ptr, ptr %379, align 8, !tbaa !93
  %381 = icmp eq ptr %380, null
  br i1 %381, label %382, label %386

382:                                              ; preds = %378
  %383 = getelementptr inbounds %struct.tree_type, ptr %52, i64 0, i32 4
  %384 = load ptr, ptr %383, align 8, !tbaa !93
  %385 = icmp eq ptr %384, null
  br i1 %385, label %391, label %386

386:                                              ; preds = %382, %378
  %387 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 14), align 8, !tbaa !290
  %388 = tail call i32 %387(ptr noundef nonnull %52, ptr noundef nonnull %50) #24
  %389 = icmp ne i32 %388, 0
  %390 = zext i1 %389 to i8
  br label %391

391:                                              ; preds = %355, %353, %338, %319, %311, %304, %248, %169, %151, %36, %20, %11, %302, %309, %177, %173, %322, %110, %88, %386, %327, %345, %349, %376, %382, %240, %244, %228, %216, %165, %128, %122, %106, %58, %48, %29
  %392 = phi i8 [ 1, %29 ], [ 1, %48 ], [ 1, %58 ], [ 0, %88 ], [ 0, %106 ], [ 1, %122 ], [ 1, %128 ], [ 0, %165 ], [ 0, %216 ], [ 0, %228 ], [ 0, %244 ], [ 0, %240 ], [ %390, %386 ], [ 0, %327 ], [ 1, %345 ], [ 1, %349 ], [ 0, %376 ], [ 1, %382 ], [ %118, %110 ], [ 0, %322 ], [ 1, %173 ], [ 0, %177 ], [ 0, %309 ], [ 0, %302 ], [ 0, %11 ], [ 1, %20 ], [ 0, %36 ], [ 0, %151 ], [ 0, %169 ], [ 0, %248 ], [ 0, %304 ], [ 0, %311 ], [ 0, %319 ], [ 0, %338 ], [ 0, %353 ], [ 0, %355 ]
  ret i8 %392
}

declare i32 @get_deref_alias_set(ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define dso_local zeroext i8 @types_compatible_p(ptr noundef readonly %0, ptr noundef readonly %1) local_unnamed_addr #9 !prof !302 {
  %3 = icmp eq ptr %0, %1
  br i1 %3, label %9, label %4, !prof !303

4:                                                ; preds = %2
  %5 = tail call zeroext i8 @useless_type_conversion_p(ptr noundef %0, ptr noundef %1), !range !194
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %9, label %7, !prof !304

7:                                                ; preds = %4
  %8 = tail call zeroext i8 @useless_type_conversion_p(ptr noundef %1, ptr noundef %0), !range !194
  br label %9

9:                                                ; preds = %4, %7, %2
  %10 = phi i8 [ 1, %2 ], [ 0, %4 ], [ %8, %7 ]
  ret i8 %10
}

declare i32 @tree_int_cst_equal(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @tree_ssa_useless_type_conversion(ptr nocapture noundef readonly %0) local_unnamed_addr #10 !prof !305 {
  %2 = load i64, ptr %0, align 8
  %3 = trunc i64 %2 to i16
  switch i16 %3, label %12 [
    i16 116, label %4
    i16 113, label %4
    i16 118, label %4
    i16 117, label %4
  ], !prof !306

4:                                                ; preds = %1, %1, %1, %1
  %5 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !93
  %7 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !93
  %9 = getelementptr inbounds %struct.tree_common, ptr %8, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !93
  %11 = tail call zeroext i8 @useless_type_conversion_p(ptr noundef %6, ptr noundef %10), !range !194
  br label %12

12:                                               ; preds = %1, %4
  %13 = phi i8 [ %11, %4 ], [ 0, %1 ]
  ret i8 %13
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local noundef ptr @tree_ssa_strip_useless_type_conversions(ptr noundef readonly %0) local_unnamed_addr #9 !prof !307 {
  br label %2

2:                                                ; preds = %17, %1
  %3 = phi ptr [ %0, %1 ], [ %19, %17 ]
  %4 = load i64, ptr %3, align 8
  %5 = trunc i64 %4 to i16
  switch i16 %5, label %14 [
    i16 116, label %6
    i16 113, label %6
    i16 118, label %6
    i16 117, label %6
  ], !prof !308

6:                                                ; preds = %2, %2, %2, %2
  %7 = getelementptr inbounds %struct.tree_common, ptr %3, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !93
  %9 = getelementptr inbounds %struct.tree_exp, ptr %3, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !93
  %11 = getelementptr inbounds %struct.tree_common, ptr %10, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !93
  %13 = tail call zeroext i8 @useless_type_conversion_p(ptr noundef %8, ptr noundef %12), !range !194
  br label %14

14:                                               ; preds = %2, %6
  %15 = phi i8 [ %13, %6 ], [ 0, %2 ]
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %20, label %17, !prof !309

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.tree_exp, ptr %3, i64 0, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !93
  br label %2, !llvm.loop !310

20:                                               ; preds = %14
  ret ptr %3
}

; Function Attrs: cold nounwind uwtable
define dso_local void @walk_use_def_chains(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, i8 noundef zeroext %3) local_unnamed_addr #13 !prof !81 {
  %5 = load i64, ptr %0, align 8
  %6 = and i64 %5, 65535
  %7 = icmp eq i64 %6, 141
  br i1 %7, label %9, label %8

8:                                                ; preds = %4
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1591, ptr noundef nonnull @.str.1) #24
  br label %9

9:                                                ; preds = %4, %8
  %10 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !93
  %12 = load i32, ptr %11, align 8
  %13 = and i32 %12, 255
  %14 = icmp eq i32 %13, 16
  br i1 %14, label %17, label %15

15:                                               ; preds = %9
  %16 = tail call zeroext i8 %1(ptr noundef nonnull %0, ptr noundef nonnull %11, ptr noundef %2) #24
  br label %20

17:                                               ; preds = %9
  %18 = tail call ptr @pointer_set_create() #24
  %19 = tail call fastcc zeroext i8 @walk_use_def_chains_1(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, ptr noundef %18, i8 noundef zeroext %3)
  tail call void @pointer_set_destroy(ptr noundef %18) #24
  br label %20

20:                                               ; preds = %17, %15
  ret void
}

declare ptr @pointer_set_create() local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc zeroext i8 @walk_use_def_chains_1(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr noundef %3, i8 noundef zeroext %4) unnamed_addr #13 !prof !81 {
  %6 = tail call i32 @pointer_set_insert(ptr noundef %3, ptr noundef %0) #24
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %94

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !93
  %11 = load i32, ptr %10, align 8
  %12 = and i32 %11, 255
  %13 = icmp eq i32 %12, 16
  br i1 %13, label %16, label %14

14:                                               ; preds = %8
  %15 = tail call zeroext i8 %1(ptr noundef %0, ptr noundef nonnull %10, ptr noundef %2) #24
  br label %94

16:                                               ; preds = %8
  %17 = icmp eq i8 %4, 0
  br i1 %17, label %18, label %41

18:                                               ; preds = %16
  %19 = getelementptr inbounds %struct.gimple_statement_phi, ptr %10, i64 0, i32 2
  %20 = load i32, ptr %19, align 4, !tbaa !93
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %41, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.gimple_statement_phi, ptr %10, i64 0, i32 1
  br label %29

24:                                               ; preds = %35
  %25 = add nuw nsw i64 %30, 1
  %26 = load i32, ptr %19, align 4, !tbaa !93
  %27 = zext i32 %26 to i64
  %28 = icmp ult i64 %25, %27
  br i1 %28, label %29, label %41, !llvm.loop !311

29:                                               ; preds = %22, %24
  %30 = phi i64 [ 0, %22 ], [ %25, %24 ]
  %31 = trunc i64 %30 to i32
  %32 = load i32, ptr %23, align 8, !tbaa !93
  %33 = icmp ult i32 %32, %31
  br i1 %33, label %34, label %35

34:                                               ; preds = %29
  tail call void @fancy_abort(ptr noundef nonnull @.str.20, i32 noundef 3103, ptr noundef nonnull @.str.1) #24
  br label %35

35:                                               ; preds = %29, %34
  %36 = getelementptr inbounds %struct.gimple_statement_phi, ptr %10, i64 0, i32 4, i64 %30, i32 0, i32 3
  %37 = load ptr, ptr %36, align 8, !tbaa !135
  %38 = load ptr, ptr %37, align 8, !tbaa !82
  %39 = tail call zeroext i8 %1(ptr noundef %38, ptr noundef nonnull %10, ptr noundef %2) #24
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %24, label %94

41:                                               ; preds = %24, %18, %16
  %42 = getelementptr inbounds %struct.gimple_statement_phi, ptr %10, i64 0, i32 2
  %43 = load i32, ptr %42, align 4, !tbaa !93
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %70, label %45

45:                                               ; preds = %41
  %46 = getelementptr inbounds %struct.gimple_statement_phi, ptr %10, i64 0, i32 1
  br label %47

47:                                               ; preds = %45, %65
  %48 = phi i64 [ 0, %45 ], [ %66, %65 ]
  %49 = trunc i64 %48 to i32
  %50 = load i32, ptr %46, align 8, !tbaa !93
  %51 = icmp ult i32 %50, %49
  br i1 %51, label %52, label %53

52:                                               ; preds = %47
  tail call void @fancy_abort(ptr noundef nonnull @.str.20, i32 noundef 3103, ptr noundef nonnull @.str.1) #24
  br label %53

53:                                               ; preds = %47, %52
  %54 = getelementptr inbounds %struct.gimple_statement_phi, ptr %10, i64 0, i32 4, i64 %48, i32 0, i32 3
  %55 = load ptr, ptr %54, align 8, !tbaa !135
  %56 = load ptr, ptr %55, align 8, !tbaa !82
  %57 = icmp eq ptr %56, null
  br i1 %57, label %65, label %58

58:                                               ; preds = %53
  %59 = load i64, ptr %56, align 8
  %60 = and i64 %59, 65535
  %61 = icmp eq i64 %60, 141
  br i1 %61, label %62, label %65

62:                                               ; preds = %58
  %63 = tail call fastcc zeroext i8 @walk_use_def_chains_1(ptr noundef nonnull %56, ptr noundef %1, ptr noundef %2, ptr noundef %3, i8 noundef zeroext %4)
  %64 = icmp eq i8 %63, 0
  br i1 %64, label %65, label %94

65:                                               ; preds = %62, %58, %53
  %66 = add nuw nsw i64 %48, 1
  %67 = load i32, ptr %42, align 4, !tbaa !93
  %68 = zext i32 %67 to i64
  %69 = icmp ult i64 %66, %68
  br i1 %69, label %47, label %70, !llvm.loop !312

70:                                               ; preds = %65, %41
  %71 = getelementptr inbounds %struct.gimple_statement_phi, ptr %10, i64 0, i32 2
  br i1 %17, label %94, label %72

72:                                               ; preds = %70
  %73 = load i32, ptr %71, align 4, !tbaa !93
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %94, label %75

75:                                               ; preds = %72
  %76 = getelementptr inbounds %struct.gimple_statement_phi, ptr %10, i64 0, i32 1
  br label %82

77:                                               ; preds = %88
  %78 = add nuw nsw i64 %83, 1
  %79 = load i32, ptr %71, align 4, !tbaa !93
  %80 = zext i32 %79 to i64
  %81 = icmp ult i64 %78, %80
  br i1 %81, label %82, label %94, !llvm.loop !313

82:                                               ; preds = %75, %77
  %83 = phi i64 [ 0, %75 ], [ %78, %77 ]
  %84 = trunc i64 %83 to i32
  %85 = load i32, ptr %76, align 8, !tbaa !93
  %86 = icmp ult i32 %85, %84
  br i1 %86, label %87, label %88

87:                                               ; preds = %82
  tail call void @fancy_abort(ptr noundef nonnull @.str.20, i32 noundef 3103, ptr noundef nonnull @.str.1) #24
  br label %88

88:                                               ; preds = %82, %87
  %89 = getelementptr inbounds %struct.gimple_statement_phi, ptr %10, i64 0, i32 4, i64 %83, i32 0, i32 3
  %90 = load ptr, ptr %89, align 8, !tbaa !135
  %91 = load ptr, ptr %90, align 8, !tbaa !82
  %92 = tail call zeroext i8 %1(ptr noundef %91, ptr noundef nonnull %10, ptr noundef %2) #24
  %93 = icmp eq i8 %92, 0
  br i1 %93, label %77, label %94

94:                                               ; preds = %35, %62, %77, %88, %72, %70, %5, %14
  %95 = phi i8 [ %15, %14 ], [ 0, %5 ], [ 0, %70 ], [ 0, %72 ], [ 1, %88 ], [ 0, %77 ], [ 1, %62 ], [ 1, %35 ]
  ret i8 %95
}

declare void @pointer_set_destroy(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local zeroext i8 @ssa_undefined_value_p(ptr nocapture noundef readonly %0) local_unnamed_addr #20 !prof !314 {
  %2 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !93
  %4 = load i64, ptr %3, align 8
  %5 = trunc i64 %4 to i16
  switch i16 %5, label %11 [
    i16 34, label %18
    i16 32, label %6
  ], !prof !315

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %3, i64 0, i32 4
  %8 = load i32, ptr %7, align 8
  %9 = and i32 %8, 2
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %18, !prof !316

11:                                               ; preds = %1, %6
  %12 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !93
  %14 = load i32, ptr %13, align 8
  %15 = and i32 %14, 255
  %16 = icmp eq i32 %15, 18
  %17 = zext i1 %16 to i8
  br label %18

18:                                               ; preds = %6, %1, %11
  %19 = phi i8 [ %17, %11 ], [ 0, %1 ], [ 0, %6 ]
  ret i8 %19
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal zeroext i8 @gate_warn_uninitialized() #21 !prof !317 !PGOFuncName !318 {
  %1 = load i32, ptr @warn_uninitialized, align 4, !tbaa !97
  %2 = icmp ne i32 %1, 0
  %3 = zext i1 %2 to i8
  ret i8 %3
}

; Function Attrs: cold nounwind uwtable
define internal noundef i32 @execute_early_warn_uninitialized() #13 !prof !81 {
  %1 = load i32, ptr @optimize, align 4, !tbaa !97
  %2 = icmp eq i32 %1, 0
  %3 = zext i1 %2 to i8
  tail call fastcc void @warn_uninitialized_vars(i8 noundef zeroext %3)
  ret i32 0
}

; Function Attrs: cold nounwind uwtable
define internal noundef i32 @execute_late_warn_uninitialized() #13 !prof !81 {
  %1 = alloca %struct.gimple_stmt_iterator, align 8
  tail call fastcc void @warn_uninitialized_vars(i8 noundef zeroext 1)
  %2 = load ptr, ptr @cfun, align 8, !tbaa !82
  %3 = getelementptr inbounds %struct.function, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !198
  %5 = load ptr, ptr %4, align 8, !tbaa !199
  %6 = getelementptr inbounds %struct.basic_block_def, ptr %5, i64 0, i32 6
  %7 = load ptr, ptr %6, align 8, !tbaa !201
  %8 = getelementptr inbounds %struct.control_flow_graph, ptr %4, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !202
  %10 = icmp eq ptr %7, %9
  br i1 %10, label %59, label %20

11:                                               ; preds = %55, %20
  %12 = getelementptr inbounds %struct.basic_block_def, ptr %21, i64 0, i32 6
  %13 = load ptr, ptr %12, align 8, !tbaa !201
  %14 = load ptr, ptr @cfun, align 8, !tbaa !82
  %15 = getelementptr inbounds %struct.function, ptr %14, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !198
  %17 = getelementptr inbounds %struct.control_flow_graph, ptr %16, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !202
  %19 = icmp eq ptr %13, %18
  br i1 %19, label %59, label %20, !llvm.loop !319

20:                                               ; preds = %0, %11
  %21 = phi ptr [ %13, %11 ], [ %7, %0 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %1) #24
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %1, ptr noundef %21) #24
  %22 = load ptr, ptr %1, align 8, !tbaa.struct !130
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %1) #24
  %23 = icmp eq ptr %22, null
  br i1 %23, label %11, label %24

24:                                               ; preds = %20, %55
  %25 = phi ptr [ %57, %55 ], [ %22, %20 ]
  %26 = load ptr, ptr %25, align 8, !tbaa !132
  %27 = getelementptr inbounds %struct.gimple_statement_phi, ptr %26, i64 0, i32 2
  %28 = load i32, ptr %27, align 4, !tbaa !93
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds %struct.gimple_statement_phi, ptr %26, i64 0, i32 3
  %31 = load ptr, ptr %30, align 8, !tbaa !93
  %32 = call zeroext i8 @is_gimple_reg(ptr noundef %31) #24
  %33 = icmp ne i8 %32, 0
  %34 = icmp ne i32 %28, 0
  %35 = select i1 %33, i1 %34, i1 false
  br i1 %35, label %36, label %55

36:                                               ; preds = %24
  %37 = getelementptr inbounds %struct.gimple_statement_phi, ptr %26, i64 0, i32 1
  br label %38

38:                                               ; preds = %36, %52
  %39 = phi i64 [ 0, %36 ], [ %53, %52 ]
  %40 = trunc i64 %39 to i32
  %41 = load i32, ptr %37, align 8, !tbaa !93
  %42 = icmp ult i32 %41, %40
  br i1 %42, label %43, label %44

43:                                               ; preds = %38
  call void @fancy_abort(ptr noundef nonnull @.str.20, i32 noundef 3103, ptr noundef nonnull @.str.1) #24
  br label %44

44:                                               ; preds = %43, %38
  %45 = getelementptr inbounds %struct.gimple_statement_phi, ptr %26, i64 0, i32 4, i64 %39, i32 0, i32 3
  %46 = load ptr, ptr %45, align 8, !tbaa !135
  %47 = load ptr, ptr %46, align 8, !tbaa !82
  %48 = load i64, ptr %47, align 8
  %49 = and i64 %48, 65535
  %50 = icmp eq i64 %49, 141
  br i1 %50, label %51, label %52

51:                                               ; preds = %44
  call fastcc void @warn_uninit(ptr noundef nonnull %47, ptr noundef nonnull @.str.49, ptr noundef null)
  br label %52

52:                                               ; preds = %51, %44
  %53 = add nuw nsw i64 %39, 1
  %54 = icmp eq i64 %53, %29
  br i1 %54, label %55, label %38, !llvm.loop !320

55:                                               ; preds = %52, %24
  %56 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %25, i64 0, i32 2
  %57 = load ptr, ptr %56, align 8, !tbaa !139
  %58 = icmp eq ptr %57, null
  br i1 %58, label %11, label %24, !llvm.loop !321

59:                                               ; preds = %11, %0
  ret i32 0
}

; Function Attrs: nounwind uwtable
define dso_local void @execute_update_addresses_taken(i8 noundef zeroext %0) local_unnamed_addr #10 !prof !322 {
  %2 = alloca %struct.gimple_stmt_iterator, align 8
  %3 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #24
  %4 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #24
  %5 = load ptr, ptr @cfun, align 8, !tbaa !82
  %6 = getelementptr inbounds %struct.function, ptr %5, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !198
  %8 = load ptr, ptr %7, align 8, !tbaa !199
  %9 = getelementptr inbounds %struct.basic_block_def, ptr %8, i64 0, i32 6
  %10 = load ptr, ptr %9, align 8, !tbaa !201
  %11 = getelementptr inbounds %struct.control_flow_graph, ptr %7, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !202
  %13 = icmp eq ptr %10, %12
  br i1 %13, label %126, label %23, !prof !323

14:                                               ; preds = %122, %78
  %15 = getelementptr inbounds %struct.basic_block_def, ptr %24, i64 0, i32 6
  %16 = load ptr, ptr %15, align 8, !tbaa !201
  %17 = load ptr, ptr @cfun, align 8, !tbaa !82
  %18 = getelementptr inbounds %struct.function, ptr %17, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !198
  %20 = getelementptr inbounds %struct.control_flow_graph, ptr %19, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !202
  %22 = icmp eq ptr %16, %21
  br i1 %22, label %126, label %23, !prof !324, !llvm.loop !325

23:                                               ; preds = %1, %14
  %24 = phi ptr [ %16, %14 ], [ %10, %1 ]
  %25 = getelementptr inbounds %struct.basic_block_def, ptr %24, i64 0, i32 13
  %26 = load i32, ptr %25, align 8, !tbaa !213, !noalias !326
  %27 = and i32 %26, 512
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %35, !prof !329

29:                                               ; preds = %23
  %30 = getelementptr inbounds %struct.basic_block_def, ptr %24, i64 0, i32 7
  %31 = load ptr, ptr %30, align 8, !tbaa !93, !noalias !326
  %32 = icmp eq ptr %31, null
  br i1 %32, label %35, label %33, !prof !330

33:                                               ; preds = %29
  %34 = load ptr, ptr %31, align 8, !tbaa !217, !noalias !326
  br label %35

35:                                               ; preds = %33, %29, %23
  %36 = phi ptr [ %34, %33 ], [ null, %29 ], [ null, %23 ]
  %37 = icmp eq ptr %36, null
  br i1 %37, label %40, label %38, !prof !330

38:                                               ; preds = %35
  %39 = load ptr, ptr %36, align 8, !tbaa !219, !noalias !326
  br label %40

40:                                               ; preds = %35, %38
  %41 = phi ptr [ %39, %38 ], [ null, %35 ]
  %42 = icmp eq ptr %41, null
  br i1 %42, label %78, label %43, !prof !331

43:                                               ; preds = %40, %74
  %44 = phi ptr [ %76, %74 ], [ %41, %40 ]
  %45 = load ptr, ptr %44, align 8, !tbaa !132
  %46 = load i32, ptr %45, align 8
  %47 = call zeroext i8 @gimple_ior_addresses_taken(ptr noundef %3, ptr noundef nonnull %45) #24
  %48 = trunc i32 %46 to i8
  switch i8 %48, label %74 [
    i8 8, label %49
    i8 6, label %49
  ], !prof !332

49:                                               ; preds = %43, %43
  %50 = call ptr @gimple_get_lhs(ptr noundef nonnull %45) #24
  %51 = icmp eq ptr %50, null
  br i1 %51, label %74, label %52, !prof !333

52:                                               ; preds = %49
  %53 = load i64, ptr %50, align 8
  %54 = and i64 %53, 65535
  %55 = icmp eq i64 %54, 152
  br i1 %55, label %56, label %60, !prof !334

56:                                               ; preds = %52
  %57 = getelementptr inbounds %struct.tree_exp, ptr %50, i64 0, i32 3
  %58 = load ptr, ptr %57, align 8, !tbaa !93
  %59 = icmp eq ptr %58, null
  br i1 %59, label %60, label %69

60:                                               ; preds = %52, %56
  %61 = trunc i64 %53 to i16
  switch i16 %61, label %74 [
    i16 42, label %62
    i16 41, label %62
    i16 45, label %62
    i16 46, label %62
    i16 118, label %62
    i16 43, label %62
    i16 44, label %62
  ], !prof !335

62:                                               ; preds = %60, %60, %60, %60, %60, %60, %60
  %63 = call ptr @get_base_address(ptr noundef nonnull %50) #24
  %64 = load i64, ptr %63, align 8
  %65 = and i64 %64, 65535
  %66 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %65
  %67 = load i32, ptr %66, align 4, !tbaa !97
  %68 = icmp eq i32 %67, 3
  br i1 %68, label %69, label %74, !prof !336

69:                                               ; preds = %62, %56
  %70 = phi ptr [ %58, %56 ], [ %63, %62 ]
  %71 = getelementptr inbounds %struct.tree_decl_minimal, ptr %70, i64 0, i32 2
  %72 = load i32, ptr %71, align 4, !tbaa !93
  %73 = call zeroext i8 @bitmap_set_bit(ptr noundef %4, i32 noundef %72) #24
  br label %74

74:                                               ; preds = %69, %60, %49, %62, %43
  %75 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %44, i64 0, i32 2
  %76 = load ptr, ptr %75, align 8, !tbaa !139
  %77 = icmp eq ptr %76, null
  br i1 %77, label %78, label %43, !prof !337, !llvm.loop !338

78:                                               ; preds = %74, %40
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #24
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %2, ptr noundef %24) #24
  %79 = load ptr, ptr %2, align 8, !tbaa.struct !130
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #24
  %80 = icmp eq ptr %79, null
  br i1 %80, label %14, label %81, !prof !339

81:                                               ; preds = %78, %122
  %82 = phi ptr [ %124, %122 ], [ %79, %78 ]
  %83 = load ptr, ptr %82, align 8, !tbaa !132
  %84 = getelementptr inbounds %struct.gimple_statement_phi, ptr %83, i64 0, i32 2
  %85 = load i32, ptr %84, align 4, !tbaa !93
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %122, label %87, !prof !340

87:                                               ; preds = %81
  %88 = getelementptr inbounds %struct.gimple_statement_phi, ptr %83, i64 0, i32 1
  br label %89

89:                                               ; preds = %87, %117
  %90 = phi i64 [ 0, %87 ], [ %118, %117 ]
  %91 = trunc i64 %90 to i32
  %92 = load i32, ptr %88, align 8, !tbaa !93
  %93 = icmp ult i32 %92, %91
  br i1 %93, label %94, label %95, !prof !341

94:                                               ; preds = %89
  call void @fancy_abort(ptr noundef nonnull @.str.20, i32 noundef 3103, ptr noundef nonnull @.str.1) #24
  br label %95

95:                                               ; preds = %89, %94
  %96 = getelementptr inbounds %struct.gimple_statement_phi, ptr %83, i64 0, i32 4, i64 %90, i32 0, i32 3
  %97 = load ptr, ptr %96, align 8, !tbaa !135
  %98 = load ptr, ptr %97, align 8, !tbaa !82
  %99 = load i64, ptr %98, align 8
  %100 = and i64 %99, 65535
  %101 = icmp eq i64 %100, 121
  br i1 %101, label %102, label %117, !prof !341

102:                                              ; preds = %95
  %103 = getelementptr inbounds %struct.tree_exp, ptr %98, i64 0, i32 3
  %104 = load ptr, ptr %103, align 8, !tbaa !93
  %105 = call ptr @get_base_address(ptr noundef %104) #24
  %106 = icmp eq ptr %105, null
  br i1 %106, label %117, label %107

107:                                              ; preds = %102
  %108 = load i64, ptr %105, align 8
  %109 = and i64 %108, 65535
  %110 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %109
  %111 = load i32, ptr %110, align 4, !tbaa !97
  %112 = icmp eq i32 %111, 3
  br i1 %112, label %113, label %117

113:                                              ; preds = %107
  %114 = getelementptr inbounds %struct.tree_decl_minimal, ptr %105, i64 0, i32 2
  %115 = load i32, ptr %114, align 4, !tbaa !93
  %116 = call zeroext i8 @bitmap_set_bit(ptr noundef %3, i32 noundef %115) #24
  br label %117

117:                                              ; preds = %113, %107, %102, %95
  %118 = add nuw nsw i64 %90, 1
  %119 = load i32, ptr %84, align 4, !tbaa !93
  %120 = zext i32 %119 to i64
  %121 = icmp ult i64 %118, %120
  br i1 %121, label %89, label %122, !prof !342, !llvm.loop !343

122:                                              ; preds = %117, %81
  %123 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %82, i64 0, i32 2
  %124 = load ptr, ptr %123, align 8, !tbaa !139
  %125 = icmp eq ptr %124, null
  br i1 %125, label %14, label %81, !prof !344, !llvm.loop !345

126:                                              ; preds = %14, %1
  %127 = phi ptr [ %5, %1 ], [ %17, %14 ]
  %128 = load i32, ptr @optimize, align 4, !tbaa !97
  %129 = icmp ne i32 %128, 0
  %130 = icmp ne i8 %0, 0
  %131 = and i1 %130, %129
  br i1 %131, label %132, label %331, !prof !346

132:                                              ; preds = %126
  %133 = getelementptr inbounds %struct.function, ptr %127, i64 0, i32 3
  %134 = load ptr, ptr %133, align 8, !tbaa !183
  %135 = icmp eq ptr %134, null
  br i1 %135, label %138, label %136, !prof !347

136:                                              ; preds = %132
  %137 = load ptr, ptr %134, align 8, !tbaa !240
  br label %138

138:                                              ; preds = %136, %132
  %139 = phi ptr [ %137, %136 ], [ null, %132 ]
  %140 = getelementptr inbounds %struct.htab, ptr %139, i64 0, i32 3
  %141 = load ptr, ptr %140, align 8, !tbaa !245
  %142 = call i64 @htab_size(ptr noundef %139) #24
  %143 = getelementptr inbounds ptr, ptr %141, i64 %142
  br label %144

144:                                              ; preds = %148, %138
  %145 = phi ptr [ %141, %138 ], [ %149, %148 ]
  %146 = load ptr, ptr %145, align 8, !tbaa !82
  %147 = icmp ult ptr %146, inttoptr (i64 2 to ptr)
  br i1 %147, label %148, label %151, !prof !348

148:                                              ; preds = %144
  %149 = getelementptr inbounds ptr, ptr %145, i64 1
  %150 = icmp ult ptr %149, %143
  br i1 %150, label %144, label %151, !prof !349, !llvm.loop !249

151:                                              ; preds = %148, %144
  %152 = phi ptr [ %145, %144 ], [ %149, %148 ]
  %153 = icmp ult ptr %152, %143
  br i1 %153, label %154, label %156, !prof !346

154:                                              ; preds = %151
  %155 = load ptr, ptr %152, align 8, !tbaa !82
  br label %156

156:                                              ; preds = %151, %154
  %157 = phi ptr [ %155, %154 ], [ null, %151 ]
  %158 = icmp ult ptr %152, %143
  br i1 %158, label %159, label %331, !prof !350

159:                                              ; preds = %156, %261
  %160 = phi ptr [ %262, %261 ], [ %157, %156 ]
  %161 = phi i8 [ %251, %261 ], [ 0, %156 ]
  %162 = phi ptr [ %255, %261 ], [ %152, %156 ]
  %163 = load i64, ptr %160, align 8
  %164 = and i64 %163, 67108864
  %165 = icmp eq i64 %164, 0
  br i1 %165, label %166, label %172, !prof !351

166:                                              ; preds = %159
  %167 = getelementptr inbounds %struct.tree_decl_common, ptr %160, i64 0, i32 2
  %168 = load i64, ptr %167, align 8
  %169 = lshr i64 %168, 25
  %170 = trunc i64 %169 to i8
  %171 = and i8 %170, 1
  br label %172

172:                                              ; preds = %159, %166
  %173 = phi i8 [ 1, %159 ], [ %171, %166 ]
  %174 = icmp ne i8 %173, 0
  %175 = and i64 %163, 65535
  %176 = icmp eq i64 %175, 36
  %177 = or i1 %176, %174
  br i1 %177, label %250, label %178, !prof !352

178:                                              ; preds = %172
  %179 = getelementptr inbounds %struct.tree_decl_minimal, ptr %160, i64 0, i32 2
  %180 = load i32, ptr %179, align 4, !tbaa !93
  %181 = call i32 @bitmap_bit_p(ptr noundef %3, i32 noundef %180) #24
  %182 = icmp eq i32 %181, 0
  br i1 %182, label %183, label %250, !prof !353

183:                                              ; preds = %178
  %184 = load i64, ptr %160, align 8
  %185 = and i64 %184, 262144
  %186 = icmp eq i64 %185, 0
  br i1 %186, label %210, label %187, !prof !353

187:                                              ; preds = %183
  %188 = getelementptr inbounds %struct.tree_common, ptr %160, i64 0, i32 2
  %189 = load ptr, ptr %188, align 8, !tbaa !93
  %190 = call zeroext i8 @is_gimple_reg_type(ptr noundef %189) #24
  %191 = icmp eq i8 %190, 0
  br i1 %191, label %196, label %192

192:                                              ; preds = %187
  %193 = load i32, ptr %179, align 4, !tbaa !93
  %194 = call i32 @bitmap_bit_p(ptr noundef %4, i32 noundef %193) #24
  %195 = icmp eq i32 %194, 0
  br i1 %195, label %196, label %210

196:                                              ; preds = %192, %187
  %197 = load i64, ptr %160, align 8
  %198 = and i64 %197, -262145
  store i64 %198, ptr %160, align 8
  %199 = call zeroext i8 @is_gimple_reg(ptr noundef nonnull %160) #24
  %200 = icmp eq i8 %199, 0
  br i1 %200, label %202, label %201

201:                                              ; preds = %196
  call void @mark_sym_for_renaming(ptr noundef nonnull %160) #24
  br label %202

202:                                              ; preds = %201, %196
  %203 = load ptr, ptr @dump_file, align 8, !tbaa !82
  %204 = icmp eq ptr %203, null
  br i1 %204, label %210, label %205

205:                                              ; preds = %202
  %206 = call i64 @fwrite(ptr nonnull @.str.16, i64 31, i64 1, ptr nonnull %203)
  %207 = load ptr, ptr @dump_file, align 8, !tbaa !82
  call void @print_generic_expr(ptr noundef %207, ptr noundef nonnull %160, i32 noundef 0) #24
  %208 = load ptr, ptr @dump_file, align 8, !tbaa !82
  %209 = call i32 @fputc(i32 10, ptr %208)
  br label %210

210:                                              ; preds = %202, %205, %192, %183
  %211 = phi i8 [ %161, %192 ], [ 1, %205 ], [ %161, %183 ], [ 1, %202 ]
  %212 = getelementptr inbounds %struct.tree_decl_common, ptr %160, i64 0, i32 2
  %213 = load i64, ptr %212, align 8
  %214 = and i64 %213, 134217728
  %215 = icmp eq i64 %214, 0
  br i1 %215, label %216, label %250, !prof !353

216:                                              ; preds = %210
  %217 = load i32, ptr %179, align 4, !tbaa !93
  %218 = call i32 @bitmap_bit_p(ptr noundef %4, i32 noundef %217) #24
  %219 = icmp eq i32 %218, 0
  br i1 %219, label %220, label %250, !prof !353

220:                                              ; preds = %216
  %221 = getelementptr inbounds %struct.tree_common, ptr %160, i64 0, i32 2
  %222 = load ptr, ptr %221, align 8, !tbaa !93
  %223 = load i64, ptr %222, align 8
  %224 = trunc i64 %223 to i32
  %225 = and i32 %224, 65535
  %226 = add nsw i32 %225, -13
  %227 = icmp ult i32 %226, 2
  br i1 %227, label %228, label %250, !prof !354

228:                                              ; preds = %220
  %229 = load i64, ptr %160, align 8
  %230 = and i64 %229, 524288
  %231 = icmp eq i64 %230, 0
  br i1 %231, label %232, label %250

232:                                              ; preds = %228
  %233 = and i64 %229, 65535
  %234 = icmp eq i64 %233, 32
  br i1 %234, label %235, label %240

235:                                              ; preds = %232
  %236 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %160, i64 0, i32 4
  %237 = load i32, ptr %236, align 8
  %238 = and i32 %237, 2
  %239 = icmp eq i32 %238, 0
  br i1 %239, label %240, label %250

240:                                              ; preds = %235, %232
  %241 = load i64, ptr %212, align 8
  %242 = or i64 %241, 134217728
  store i64 %242, ptr %212, align 8
  call void @mark_sym_for_renaming(ptr noundef nonnull %160) #24
  %243 = load ptr, ptr @dump_file, align 8, !tbaa !82
  %244 = icmp eq ptr %243, null
  br i1 %244, label %250, label %245

245:                                              ; preds = %240
  %246 = call i64 @fwrite(ptr nonnull @.str.18, i64 30, i64 1, ptr nonnull %243)
  %247 = load ptr, ptr @dump_file, align 8, !tbaa !82
  call void @print_generic_expr(ptr noundef %247, ptr noundef nonnull %160, i32 noundef 0) #24
  %248 = load ptr, ptr @dump_file, align 8, !tbaa !82
  %249 = call i32 @fputc(i32 10, ptr %248)
  br label %250

250:                                              ; preds = %235, %220, %210, %216, %228, %245, %240, %172, %178
  %251 = phi i8 [ %161, %172 ], [ %161, %178 ], [ %211, %210 ], [ %211, %216 ], [ %211, %228 ], [ 1, %245 ], [ 1, %240 ], [ %211, %220 ], [ %211, %235 ]
  br label %252

252:                                              ; preds = %257, %250
  %253 = phi ptr [ %162, %250 ], [ %255, %257 ]
  %254 = phi ptr [ undef, %250 ], [ %260, %257 ]
  %255 = getelementptr inbounds ptr, ptr %253, i64 1
  %256 = icmp ult ptr %255, %143
  br i1 %256, label %257, label %261, !prof !355

257:                                              ; preds = %252
  %258 = load ptr, ptr %255, align 8, !tbaa !82
  %259 = icmp ult ptr %258, inttoptr (i64 2 to ptr)
  %260 = select i1 %259, ptr %254, ptr %258, !prof !356
  br i1 %259, label %252, label %261, !prof !356

261:                                              ; preds = %257, %252
  %262 = phi ptr [ null, %252 ], [ %260, %257 ]
  %263 = icmp ult ptr %255, %143
  br i1 %263, label %159, label %264, !prof !357, !llvm.loop !358

264:                                              ; preds = %261
  %265 = icmp eq i8 %251, 0
  br i1 %265, label %331, label %266, !prof !346

266:                                              ; preds = %264
  %267 = load ptr, ptr @cfun, align 8, !tbaa !82
  %268 = getelementptr inbounds %struct.function, ptr %267, i64 0, i32 1
  %269 = load ptr, ptr %268, align 8, !tbaa !198
  %270 = load ptr, ptr %269, align 8, !tbaa !199
  %271 = getelementptr inbounds %struct.basic_block_def, ptr %270, i64 0, i32 6
  %272 = load ptr, ptr %271, align 8, !tbaa !201
  %273 = getelementptr inbounds %struct.control_flow_graph, ptr %269, i64 0, i32 1
  %274 = load ptr, ptr %273, align 8, !tbaa !202
  %275 = icmp eq ptr %272, %274
  br i1 %275, label %330, label %285

276:                                              ; preds = %326, %302
  %277 = getelementptr inbounds %struct.basic_block_def, ptr %286, i64 0, i32 6
  %278 = load ptr, ptr %277, align 8, !tbaa !201
  %279 = load ptr, ptr @cfun, align 8, !tbaa !82
  %280 = getelementptr inbounds %struct.function, ptr %279, i64 0, i32 1
  %281 = load ptr, ptr %280, align 8, !tbaa !198
  %282 = getelementptr inbounds %struct.control_flow_graph, ptr %281, i64 0, i32 1
  %283 = load ptr, ptr %282, align 8, !tbaa !202
  %284 = icmp eq ptr %278, %283
  br i1 %284, label %330, label %285, !llvm.loop !359

285:                                              ; preds = %266, %276
  %286 = phi ptr [ %278, %276 ], [ %272, %266 ]
  %287 = getelementptr inbounds %struct.basic_block_def, ptr %286, i64 0, i32 13
  %288 = load i32, ptr %287, align 8, !tbaa !213, !noalias !360
  %289 = and i32 %288, 512
  %290 = icmp eq i32 %289, 0
  br i1 %290, label %291, label %297

291:                                              ; preds = %285
  %292 = getelementptr inbounds %struct.basic_block_def, ptr %286, i64 0, i32 7
  %293 = load ptr, ptr %292, align 8, !tbaa !93, !noalias !360
  %294 = icmp eq ptr %293, null
  br i1 %294, label %297, label %295

295:                                              ; preds = %291
  %296 = load ptr, ptr %293, align 8, !tbaa !217, !noalias !360
  br label %297

297:                                              ; preds = %295, %291, %285
  %298 = phi ptr [ %296, %295 ], [ null, %291 ], [ null, %285 ]
  %299 = icmp eq ptr %298, null
  br i1 %299, label %302, label %300

300:                                              ; preds = %297
  %301 = load ptr, ptr %298, align 8, !tbaa !219, !noalias !360
  br label %302

302:                                              ; preds = %297, %300
  %303 = phi ptr [ %301, %300 ], [ null, %297 ]
  %304 = icmp eq ptr %303, null
  br i1 %304, label %276, label %305

305:                                              ; preds = %302, %326
  %306 = phi ptr [ %328, %326 ], [ %303, %302 ]
  %307 = load ptr, ptr %306, align 8, !tbaa !132
  %308 = load i32, ptr %307, align 8
  %309 = and i32 %308, 254
  %310 = add nsw i32 %309, -10
  %311 = icmp ult i32 %310, -4
  br i1 %311, label %316, label %312

312:                                              ; preds = %305
  %313 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %307, i64 0, i32 2
  %314 = load ptr, ptr %313, align 8, !tbaa !93
  %315 = icmp ne ptr %314, null
  br label %316

316:                                              ; preds = %305, %312
  %317 = phi i1 [ false, %305 ], [ %315, %312 ]
  %318 = and i32 %308, 255
  %319 = icmp eq i32 %318, 2
  %320 = or i1 %319, %317
  br i1 %320, label %321, label %326

321:                                              ; preds = %316
  %322 = and i32 %308, 255
  %323 = add nsw i32 %322, -10
  %324 = icmp ult i32 %323, -9
  br i1 %324, label %326, label %325

325:                                              ; preds = %321
  call void @gimple_set_modified(ptr noundef nonnull %307, i8 noundef zeroext 1) #24
  call void @update_stmt_operands(ptr noundef nonnull %307) #24
  br label %326

326:                                              ; preds = %316, %325, %321
  %327 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %306, i64 0, i32 2
  %328 = load ptr, ptr %327, align 8, !tbaa !139
  %329 = icmp eq ptr %328, null
  br i1 %329, label %276, label %305, !llvm.loop !363

330:                                              ; preds = %276, %266
  call void @update_ssa(i32 noundef 2048) #24
  br label %331

331:                                              ; preds = %126, %156, %330, %264
  call void @bitmap_obstack_free(ptr noundef %4) #24
  call void @bitmap_obstack_free(ptr noundef %3) #24
  ret void
}

declare zeroext i8 @gimple_ior_addresses_taken(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @gimple_get_lhs(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @is_gimple_reg_type(ptr noundef) local_unnamed_addr #3

declare void @mark_sym_for_renaming(ptr noundef) local_unnamed_addr #3

declare void @print_generic_expr(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @update_ssa(i32 noundef) local_unnamed_addr #3

declare ptr @vec_heap_o_reserve_exact(ptr noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

declare ptr @vec_heap_o_reserve(ptr noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define internal fastcc void @link_use_stmts_after(ptr noundef %0, ptr noundef %1) unnamed_addr #2 !prof !81 {
  %3 = alloca %struct.ssa_operand_iterator_d, align 8
  %4 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !93
  %6 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !135
  %8 = load ptr, ptr %7, align 8, !tbaa !82
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #24
  %9 = tail call zeroext i8 @is_gimple_reg(ptr noundef %8) #24
  %10 = icmp eq i8 %9, 0
  %11 = select i1 %10, i32 4, i32 1
  %12 = load i32, ptr %5, align 8
  %13 = and i32 %12, 255
  %14 = icmp eq i32 %13, 16
  br i1 %14, label %15, label %94

15:                                               ; preds = %2
  %16 = getelementptr inbounds %struct.gimple_statement_phi, ptr %5, i64 0, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !93
  %18 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %3, i64 0, i32 3
  %19 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %3, i64 0, i32 1
  %20 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %3, i64 0, i32 4
  %21 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %3, i64 0, i32 5
  %22 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %3, i64 0, i32 6
  store i8 0, ptr %3, align 8, !tbaa !233
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %19, i8 0, i64 36, i1 false)
  %23 = tail call zeroext i8 @is_gimple_reg(ptr noundef %17) #24
  %24 = icmp eq i8 %23, 0
  %25 = xor i1 %10, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %15
  store i8 1, ptr %3, align 8, !tbaa !233
  br label %34

27:                                               ; preds = %15
  store ptr %5, ptr %22, align 8, !tbaa !364
  %28 = getelementptr inbounds %struct.gimple_statement_phi, ptr %5, i64 0, i32 2
  %29 = load i32, ptr %28, align 4, !tbaa !93
  store i32 %29, ptr %21, align 4, !tbaa !365
  store i32 2, ptr %19, align 4, !tbaa !234
  %30 = icmp sgt i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %27
  store i32 1, ptr %20, align 8, !tbaa !366
  %32 = getelementptr inbounds %struct.gimple_statement_phi, ptr %5, i64 0, i32 4, i64 0
  br label %34

33:                                               ; preds = %27
  store i8 1, ptr %3, align 8, !tbaa !233
  br label %34

34:                                               ; preds = %26, %31, %33
  %35 = phi ptr [ null, %26 ], [ %32, %31 ], [ null, %33 ]
  %36 = load i8, ptr %3, align 8, !tbaa !233
  %37 = load ptr, ptr %18, align 8, !tbaa !232
  %38 = load i32, ptr %20, align 8, !tbaa !366
  %39 = icmp eq i8 %36, 0
  br i1 %39, label %40, label %200

40:                                               ; preds = %34
  %41 = load i32, ptr %21, align 4
  %42 = load ptr, ptr %22, align 8
  %43 = getelementptr inbounds %struct.gimple_statement_phi, ptr %42, i64 0, i32 1
  br label %44

44:                                               ; preds = %40, %88
  %45 = phi ptr [ %35, %40 ], [ %92, %88 ]
  %46 = phi ptr [ %0, %40 ], [ %73, %88 ]
  %47 = phi i8 [ %36, %40 ], [ %91, %88 ]
  %48 = phi ptr [ %37, %40 ], [ %90, %88 ]
  %49 = phi i32 [ %38, %40 ], [ %89, %88 ]
  %50 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %45, i64 0, i32 3
  %51 = load ptr, ptr %50, align 8, !tbaa !135
  %52 = load ptr, ptr %51, align 8, !tbaa !82
  %53 = icmp ne ptr %52, %8
  %54 = icmp eq ptr %45, %0
  %55 = or i1 %53, %54
  br i1 %55, label %72, label %56

56:                                               ; preds = %44
  %57 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %46, i64 0, i32 1
  %58 = load ptr, ptr %57, align 8, !tbaa !157
  %59 = icmp eq ptr %58, %45
  br i1 %59, label %72, label %60

60:                                               ; preds = %56
  %61 = load ptr, ptr %45, align 8, !tbaa !162
  %62 = icmp eq ptr %61, null
  br i1 %62, label %68, label %63

63:                                               ; preds = %60
  %64 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %45, i64 0, i32 1
  %65 = load ptr, ptr %64, align 8, !tbaa !157
  %66 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %61, i64 0, i32 1
  store ptr %65, ptr %66, align 8, !tbaa !157
  %67 = load ptr, ptr %64, align 8, !tbaa !157
  store ptr %61, ptr %67, align 8, !tbaa !162
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %45, i8 0, i64 16, i1 false)
  br label %68

68:                                               ; preds = %63, %60
  store ptr %46, ptr %45, align 8, !tbaa !162
  %69 = load ptr, ptr %57, align 8, !tbaa !157
  %70 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %45, i64 0, i32 1
  store ptr %69, ptr %70, align 8, !tbaa !157
  %71 = load ptr, ptr %57, align 8, !tbaa !157
  store ptr %45, ptr %71, align 8, !tbaa !162
  store ptr %45, ptr %57, align 8, !tbaa !157
  br label %72

72:                                               ; preds = %68, %56, %44
  %73 = phi ptr [ %46, %44 ], [ %45, %68 ], [ %45, %56 ]
  %74 = icmp eq ptr %48, null
  br i1 %74, label %78, label %75

75:                                               ; preds = %72
  %76 = getelementptr inbounds %struct.use_optype_d, ptr %48, i64 0, i32 1
  %77 = load ptr, ptr %48, align 8, !tbaa !223
  br label %88

78:                                               ; preds = %72
  %79 = icmp slt i32 %49, %41
  br i1 %79, label %80, label %88

80:                                               ; preds = %78
  %81 = add nsw i32 %49, 1
  %82 = load i32, ptr %43, align 8, !tbaa !93
  %83 = icmp ult i32 %82, %49
  br i1 %83, label %84, label %85

84:                                               ; preds = %80
  tail call void @fancy_abort(ptr noundef nonnull @.str.20, i32 noundef 3103, ptr noundef nonnull @.str.1) #24
  br label %85

85:                                               ; preds = %84, %80
  %86 = zext i32 %49 to i64
  %87 = getelementptr inbounds %struct.gimple_statement_phi, ptr %42, i64 0, i32 4, i64 %86
  br label %88

88:                                               ; preds = %78, %75, %85
  %89 = phi i32 [ %49, %75 ], [ %81, %85 ], [ %49, %78 ]
  %90 = phi ptr [ %77, %75 ], [ %48, %85 ], [ %48, %78 ]
  %91 = phi i8 [ %47, %75 ], [ %47, %85 ], [ 1, %78 ]
  %92 = phi ptr [ %76, %75 ], [ %87, %85 ], [ null, %78 ]
  %93 = icmp eq i8 %91, 0
  br i1 %93, label %44, label %200, !llvm.loop !367

94:                                               ; preds = %2
  br i1 %10, label %159, label %95

95:                                               ; preds = %94
  %96 = call fastcc ptr @op_iter_init_use(ptr noundef nonnull %3, ptr noundef nonnull %5, i32 noundef %11)
  %97 = load i8, ptr %3, align 8, !tbaa !233
  %98 = icmp eq i8 %97, 0
  br i1 %98, label %99, label %206

99:                                               ; preds = %95
  %100 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %3, i64 0, i32 3
  %101 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %3, i64 0, i32 4
  %102 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %3, i64 0, i32 5
  %103 = load i32, ptr %102, align 4
  %104 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %3, i64 0, i32 6
  %105 = load ptr, ptr %104, align 8
  %106 = getelementptr inbounds %struct.gimple_statement_phi, ptr %105, i64 0, i32 1
  %107 = load ptr, ptr %100, align 8, !tbaa !232
  %108 = load i32, ptr %101, align 8, !tbaa !366
  br label %109

109:                                              ; preds = %99, %153
  %110 = phi i32 [ %108, %99 ], [ %154, %153 ]
  %111 = phi ptr [ %107, %99 ], [ %155, %153 ]
  %112 = phi ptr [ %96, %99 ], [ %157, %153 ]
  %113 = phi ptr [ %0, %99 ], [ %138, %153 ]
  %114 = phi i8 [ %97, %99 ], [ %156, %153 ]
  %115 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %112, i64 0, i32 3
  %116 = load ptr, ptr %115, align 8, !tbaa !135
  %117 = load ptr, ptr %116, align 8, !tbaa !82
  %118 = icmp ne ptr %117, %8
  %119 = icmp eq ptr %112, %0
  %120 = or i1 %118, %119
  br i1 %120, label %137, label %121

121:                                              ; preds = %109
  %122 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %113, i64 0, i32 1
  %123 = load ptr, ptr %122, align 8, !tbaa !157
  %124 = icmp eq ptr %123, %112
  br i1 %124, label %137, label %125

125:                                              ; preds = %121
  %126 = load ptr, ptr %112, align 8, !tbaa !162
  %127 = icmp eq ptr %126, null
  br i1 %127, label %133, label %128

128:                                              ; preds = %125
  %129 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %112, i64 0, i32 1
  %130 = load ptr, ptr %129, align 8, !tbaa !157
  %131 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %126, i64 0, i32 1
  store ptr %130, ptr %131, align 8, !tbaa !157
  %132 = load ptr, ptr %129, align 8, !tbaa !157
  store ptr %126, ptr %132, align 8, !tbaa !162
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %112, i8 0, i64 16, i1 false)
  br label %133

133:                                              ; preds = %128, %125
  store ptr %113, ptr %112, align 8, !tbaa !162
  %134 = load ptr, ptr %122, align 8, !tbaa !157
  %135 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %112, i64 0, i32 1
  store ptr %134, ptr %135, align 8, !tbaa !157
  %136 = load ptr, ptr %122, align 8, !tbaa !157
  store ptr %112, ptr %136, align 8, !tbaa !162
  store ptr %112, ptr %122, align 8, !tbaa !157
  br label %137

137:                                              ; preds = %133, %121, %109
  %138 = phi ptr [ %113, %109 ], [ %112, %133 ], [ %112, %121 ]
  %139 = icmp eq ptr %111, null
  br i1 %139, label %143, label %140

140:                                              ; preds = %137
  %141 = getelementptr inbounds %struct.use_optype_d, ptr %111, i64 0, i32 1
  %142 = load ptr, ptr %111, align 8, !tbaa !223
  br label %153

143:                                              ; preds = %137
  %144 = icmp slt i32 %110, %103
  br i1 %144, label %145, label %153

145:                                              ; preds = %143
  %146 = add nsw i32 %110, 1
  %147 = load i32, ptr %106, align 8, !tbaa !93
  %148 = icmp ult i32 %147, %110
  br i1 %148, label %149, label %150

149:                                              ; preds = %145
  tail call void @fancy_abort(ptr noundef nonnull @.str.20, i32 noundef 3103, ptr noundef nonnull @.str.1) #24
  br label %150

150:                                              ; preds = %149, %145
  %151 = zext i32 %110 to i64
  %152 = getelementptr inbounds %struct.gimple_statement_phi, ptr %105, i64 0, i32 4, i64 %151
  br label %153

153:                                              ; preds = %143, %140, %150
  %154 = phi i32 [ %110, %140 ], [ %146, %150 ], [ %110, %143 ]
  %155 = phi ptr [ %142, %140 ], [ %111, %150 ], [ %111, %143 ]
  %156 = phi i8 [ %114, %140 ], [ %114, %150 ], [ 1, %143 ]
  %157 = phi ptr [ %141, %140 ], [ %152, %150 ], [ null, %143 ]
  %158 = icmp eq i8 %156, 0
  br i1 %158, label %109, label %205, !llvm.loop !368

159:                                              ; preds = %94
  %160 = and i32 %12, 254
  %161 = add nsw i32 %160, -10
  %162 = icmp ult i32 %161, -4
  br i1 %162, label %174, label %163

163:                                              ; preds = %159
  %164 = getelementptr inbounds %struct.gimple_statement_with_ops_base, ptr %5, i64 0, i32 2
  %165 = load ptr, ptr %164, align 8, !tbaa !93
  %166 = icmp eq ptr %165, null
  br i1 %166, label %174, label %167

167:                                              ; preds = %163
  %168 = getelementptr inbounds %struct.use_optype_d, ptr %165, i64 0, i32 1, i32 3
  %169 = load ptr, ptr %168, align 8, !tbaa !221
  %170 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %5, i64 0, i32 2
  %171 = icmp eq ptr %169, %170
  %172 = getelementptr inbounds %struct.use_optype_d, ptr %165, i64 0, i32 1
  %173 = select i1 %171, ptr %172, ptr null
  br label %174

174:                                              ; preds = %159, %163, %167
  %175 = phi ptr [ null, %159 ], [ null, %163 ], [ %173, %167 ]
  %176 = icmp eq ptr %175, null
  br i1 %176, label %209, label %177

177:                                              ; preds = %174
  %178 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %175, i64 0, i32 3
  %179 = load ptr, ptr %178, align 8, !tbaa !135
  %180 = load ptr, ptr %179, align 8, !tbaa !82
  %181 = icmp ne ptr %180, %8
  %182 = icmp eq ptr %175, %0
  %183 = or i1 %182, %181
  br i1 %183, label %209, label %184

184:                                              ; preds = %177
  %185 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 1
  %186 = load ptr, ptr %185, align 8, !tbaa !157
  %187 = icmp eq ptr %186, %175
  br i1 %187, label %209, label %188

188:                                              ; preds = %184
  %189 = load ptr, ptr %175, align 8, !tbaa !162
  %190 = icmp eq ptr %189, null
  br i1 %190, label %196, label %191

191:                                              ; preds = %188
  %192 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %175, i64 0, i32 1
  %193 = load ptr, ptr %192, align 8, !tbaa !157
  %194 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %189, i64 0, i32 1
  store ptr %193, ptr %194, align 8, !tbaa !157
  %195 = load ptr, ptr %192, align 8, !tbaa !157
  store ptr %189, ptr %195, align 8, !tbaa !162
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %175, i8 0, i64 16, i1 false)
  br label %196

196:                                              ; preds = %191, %188
  store ptr %0, ptr %175, align 8, !tbaa !162
  %197 = load ptr, ptr %185, align 8, !tbaa !157
  %198 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %175, i64 0, i32 1
  store ptr %197, ptr %198, align 8, !tbaa !157
  %199 = load ptr, ptr %185, align 8, !tbaa !157
  store ptr %175, ptr %199, align 8, !tbaa !162
  store ptr %175, ptr %185, align 8, !tbaa !157
  br label %209

200:                                              ; preds = %88, %34
  %201 = phi i32 [ %38, %34 ], [ %89, %88 ]
  %202 = phi ptr [ %37, %34 ], [ %90, %88 ]
  %203 = phi i8 [ %36, %34 ], [ %91, %88 ]
  %204 = phi ptr [ %0, %34 ], [ %73, %88 ]
  store i8 %203, ptr %3, align 8, !tbaa !233
  store ptr %202, ptr %18, align 8, !tbaa !232
  store i32 %201, ptr %20, align 8, !tbaa !366
  br label %209

205:                                              ; preds = %153
  store ptr %155, ptr %100, align 8, !tbaa !232
  store i32 %154, ptr %101, align 8, !tbaa !366
  br label %206

206:                                              ; preds = %205, %95
  %207 = phi i8 [ %156, %205 ], [ %97, %95 ]
  %208 = phi ptr [ %138, %205 ], [ %0, %95 ]
  store i8 %207, ptr %3, align 8, !tbaa !233
  br label %209

209:                                              ; preds = %206, %200, %196, %184, %177, %174
  %210 = phi ptr [ %0, %177 ], [ %0, %174 ], [ %175, %196 ], [ %175, %184 ], [ %204, %200 ], [ %208, %206 ]
  %211 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %1, i64 0, i32 2
  %212 = load ptr, ptr %211, align 8, !tbaa !162
  %213 = icmp eq ptr %212, null
  br i1 %213, label %219, label %214

214:                                              ; preds = %209
  %215 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %1, i64 0, i32 2, i32 1
  %216 = load ptr, ptr %215, align 8, !tbaa !157
  %217 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %212, i64 0, i32 1
  store ptr %216, ptr %217, align 8, !tbaa !157
  %218 = load ptr, ptr %215, align 8, !tbaa !157
  store ptr %212, ptr %218, align 8, !tbaa !162
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %211, i8 0, i64 16, i1 false)
  br label %219

219:                                              ; preds = %214, %209
  store ptr %210, ptr %211, align 8, !tbaa !162
  %220 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %210, i64 0, i32 1
  %221 = load ptr, ptr %220, align 8, !tbaa !157
  %222 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %1, i64 0, i32 2, i32 1
  store ptr %221, ptr %222, align 8, !tbaa !157
  %223 = load ptr, ptr %220, align 8, !tbaa !157
  store ptr %211, ptr %223, align 8, !tbaa !162
  store ptr %211, ptr %220, align 8, !tbaa !157
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #24
  ret void
}

declare void @gimple_set_modified(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

declare void @update_stmt_operands(ptr noundef) local_unnamed_addr #3

declare void @print_generic_stmt(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare zeroext i8 @verify_imm_links(ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @dominated_by_p(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i64 @htab_size(ptr noundef) local_unnamed_addr #3

declare i32 @pointer_set_insert(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc void @warn_uninitialized_vars(i8 noundef zeroext %0) unnamed_addr #13 !prof !81 {
  %2 = alloca %struct.walk_data, align 8
  %3 = alloca %struct.walk_stmt_info, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #24
  %4 = getelementptr inbounds %struct.walk_data, ptr %2, i64 0, i32 2
  store i8 %0, ptr %4, align 1, !tbaa !369
  tail call void @calculate_dominance_info(i32 noundef 2) #24
  %5 = load ptr, ptr @cfun, align 8, !tbaa !82
  %6 = getelementptr inbounds %struct.function, ptr %5, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !198
  %8 = load ptr, ptr %7, align 8, !tbaa !199
  %9 = getelementptr inbounds %struct.basic_block_def, ptr %8, i64 0, i32 6
  %10 = load ptr, ptr %9, align 8, !tbaa !201
  %11 = getelementptr inbounds %struct.control_flow_graph, ptr %7, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !202
  %13 = icmp eq ptr %10, %12
  br i1 %13, label %75, label %14

14:                                               ; preds = %1
  %15 = getelementptr inbounds %struct.walk_data, ptr %2, i64 0, i32 1
  %16 = getelementptr inbounds %struct.walk_stmt_info, ptr %3, i64 0, i32 1
  br label %26

17:                                               ; preds = %71, %59
  %18 = getelementptr inbounds %struct.basic_block_def, ptr %28, i64 0, i32 6
  %19 = load ptr, ptr %18, align 8, !tbaa !201
  %20 = load ptr, ptr @cfun, align 8, !tbaa !82
  %21 = getelementptr inbounds %struct.function, ptr %20, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !198
  %23 = getelementptr inbounds %struct.control_flow_graph, ptr %22, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !202
  %25 = icmp eq ptr %19, %24
  br i1 %25, label %75, label %26, !llvm.loop !371

26:                                               ; preds = %14, %17
  %27 = phi ptr [ %7, %14 ], [ %22, %17 ]
  %28 = phi ptr [ %10, %14 ], [ %19, %17 ]
  %29 = load ptr, ptr %27, align 8, !tbaa !199
  %30 = getelementptr inbounds %struct.basic_block_def, ptr %29, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !372
  %32 = icmp eq ptr %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %26
  %34 = load i32, ptr %31, align 8, !tbaa !203
  %35 = icmp eq i32 %34, 1
  br i1 %35, label %37, label %36

36:                                               ; preds = %33, %26
  call void @fancy_abort(ptr noundef nonnull @.str.25, i32 noundef 645, ptr noundef nonnull @.str.1) #24
  br label %37

37:                                               ; preds = %33, %36
  %38 = load ptr, ptr %30, align 8, !tbaa !372
  %39 = getelementptr inbounds %struct.VEC_edge_base, ptr %38, i64 0, i32 2, i64 0
  %40 = load ptr, ptr %39, align 8, !tbaa !82
  %41 = getelementptr inbounds %struct.edge_def, ptr %40, i64 0, i32 1
  %42 = load ptr, ptr %41, align 8, !tbaa !128
  %43 = call zeroext i8 @dominated_by_p(i32 noundef 2, ptr noundef %42, ptr noundef %28) #24
  store i8 %43, ptr %15, align 8, !tbaa !373
  %44 = getelementptr inbounds %struct.basic_block_def, ptr %28, i64 0, i32 13
  %45 = load i32, ptr %44, align 8, !tbaa !213, !noalias !374
  %46 = and i32 %45, 512
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %37
  %49 = getelementptr inbounds %struct.basic_block_def, ptr %28, i64 0, i32 7
  %50 = load ptr, ptr %49, align 8, !tbaa !93, !noalias !374
  %51 = icmp eq ptr %50, null
  br i1 %51, label %54, label %52

52:                                               ; preds = %48
  %53 = load ptr, ptr %50, align 8, !tbaa !217, !noalias !374
  br label %54

54:                                               ; preds = %52, %48, %37
  %55 = phi ptr [ %53, %52 ], [ null, %48 ], [ null, %37 ]
  %56 = icmp eq ptr %55, null
  br i1 %56, label %59, label %57

57:                                               ; preds = %54
  %58 = load ptr, ptr %55, align 8, !tbaa !219, !noalias !374
  br label %59

59:                                               ; preds = %54, %57
  %60 = phi ptr [ %58, %57 ], [ null, %54 ]
  %61 = icmp eq ptr %60, null
  br i1 %61, label %17, label %62

62:                                               ; preds = %59, %71
  %63 = phi ptr [ %73, %71 ], [ %60, %59 ]
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #24
  %64 = load ptr, ptr %63, align 8, !tbaa !132
  store ptr %64, ptr %2, align 8, !tbaa !377
  %65 = load i32, ptr %64, align 8
  %66 = and i32 %65, 255
  %67 = icmp eq i32 %66, 2
  br i1 %67, label %71, label %68

68:                                               ; preds = %62
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i64 56, i1 false)
  store ptr %2, ptr %16, align 8, !tbaa !378
  %69 = load ptr, ptr %63, align 8, !tbaa !132
  %70 = call ptr @walk_gimple_op(ptr noundef %69, ptr noundef nonnull @warn_uninitialized_var, ptr noundef nonnull %3) #24
  br label %71

71:                                               ; preds = %62, %68
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #24
  %72 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %63, i64 0, i32 2
  %73 = load ptr, ptr %72, align 8, !tbaa !139
  %74 = icmp eq ptr %73, null
  br i1 %74, label %17, label %62, !llvm.loop !379

75:                                               ; preds = %17, %1
  call void @free_dominance_info(i32 noundef 2) #24
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #24
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal noalias noundef ptr @warn_uninitialized_var(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef readonly %2) #13 !prof !81 {
  %4 = getelementptr inbounds %struct.walk_stmt_info, ptr %2, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !378
  %6 = load ptr, ptr %0, align 8, !tbaa !82
  %7 = getelementptr inbounds %struct.walk_stmt_info, ptr %2, i64 0, i32 4
  %8 = load i8, ptr %7, align 1, !tbaa !165
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %19, label %10

10:                                               ; preds = %3
  %11 = load i64, ptr %6, align 8
  %12 = trunc i64 %11 to i32
  %13 = and i32 %12, 65535
  %14 = add nsw i32 %13, -47
  %15 = icmp ult i32 %14, 3
  br i1 %15, label %16, label %88

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.tree_exp, ptr %6, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !93
  br label %19

19:                                               ; preds = %16, %3
  %20 = phi ptr [ %18, %16 ], [ %6, %3 ]
  %21 = load i64, ptr %20, align 8
  %22 = trunc i64 %21 to i16
  switch i16 %22, label %81 [
    i16 121, label %87
    i16 32, label %23
    i16 141, label %63
    i16 43, label %75
    i16 44, label %75
  ]

23:                                               ; preds = %19
  %24 = load ptr, ptr %5, align 8, !tbaa !377
  %25 = icmp eq ptr %24, null
  br i1 %25, label %60, label %26

26:                                               ; preds = %23
  %27 = load i32, ptr %24, align 8
  %28 = and i32 %27, 255
  %29 = icmp eq i32 %28, 8
  br i1 %29, label %60, label %30

30:                                               ; preds = %26
  %31 = and i32 %27, 254
  %32 = add nsw i32 %31, -10
  %33 = icmp ult i32 %32, -4
  br i1 %33, label %45, label %34

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.gimple_statement_with_ops_base, ptr %24, i64 0, i32 2
  %36 = load ptr, ptr %35, align 8, !tbaa !93
  %37 = icmp eq ptr %36, null
  br i1 %37, label %45, label %38

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.use_optype_d, ptr %36, i64 0, i32 1, i32 3
  %40 = load ptr, ptr %39, align 8, !tbaa !221
  %41 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %24, i64 0, i32 2
  %42 = icmp eq ptr %40, %41
  %43 = getelementptr inbounds %struct.use_optype_d, ptr %36, i64 0, i32 1
  %44 = select i1 %42, ptr %43, ptr null
  br label %45

45:                                               ; preds = %30, %34, %38
  %46 = phi ptr [ null, %30 ], [ null, %34 ], [ %44, %38 ]
  %47 = icmp eq ptr %46, null
  br i1 %47, label %60, label %48

48:                                               ; preds = %45
  %49 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %46, i64 0, i32 3
  %50 = load ptr, ptr %49, align 8, !tbaa !135
  %51 = load ptr, ptr %50, align 8, !tbaa !82
  %52 = getelementptr inbounds %struct.tree_ssa_name, ptr %51, i64 0, i32 1
  %53 = load ptr, ptr %52, align 8, !tbaa !93
  %54 = icmp eq ptr %20, %53
  br i1 %54, label %55, label %60

55:                                               ; preds = %48
  %56 = load i64, ptr %51, align 8
  %57 = and i64 %56, 4294967296
  %58 = icmp ne i64 %57, 0
  %59 = select i1 %58, ptr %51, ptr %20
  br label %60

60:                                               ; preds = %55, %48, %45, %26, %23
  %61 = phi i1 [ false, %23 ], [ false, %26 ], [ false, %45 ], [ false, %48 ], [ %58, %55 ]
  %62 = phi ptr [ %20, %23 ], [ %20, %26 ], [ %20, %45 ], [ %20, %48 ], [ %59, %55 ]
  br i1 %61, label %63, label %88

63:                                               ; preds = %60, %19
  %64 = phi ptr [ %20, %19 ], [ %62, %60 ]
  %65 = getelementptr inbounds %struct.walk_data, ptr %5, i64 0, i32 1
  %66 = load i8, ptr %65, align 8, !tbaa !373
  %67 = icmp eq i8 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %63
  %69 = getelementptr inbounds %struct.walk_data, ptr %5, i64 0, i32 2
  %70 = load i8, ptr %69, align 1, !tbaa !369
  %71 = icmp eq i8 %70, 0
  br i1 %71, label %87, label %72

72:                                               ; preds = %68, %63
  %73 = phi ptr [ @.str.48, %63 ], [ @.str.49, %68 ]
  %74 = load ptr, ptr %5, align 8, !tbaa !377
  tail call fastcc void @warn_uninit(ptr noundef %64, ptr noundef nonnull %73, ptr noundef %74)
  br label %87

75:                                               ; preds = %19, %19
  %76 = getelementptr inbounds %struct.tree_exp, ptr %20, i64 0, i32 3
  %77 = load ptr, ptr %76, align 8, !tbaa !93
  %78 = load i64, ptr %77, align 8
  %79 = and i64 %78, 65535
  %80 = icmp eq i64 %79, 141
  br i1 %80, label %87, label %88

81:                                               ; preds = %19
  %82 = and i64 %21, 65535
  %83 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %82
  %84 = load i32, ptr %83, align 4, !tbaa !97
  %85 = and i32 %84, -2
  %86 = icmp eq i32 %85, 2
  br i1 %86, label %87, label %88

87:                                               ; preds = %81, %75, %68, %72, %19
  store i32 0, ptr %1, align 4, !tbaa !97
  br label %88

88:                                               ; preds = %87, %60, %81, %10, %75
  ret ptr null
}

; Function Attrs: cold nounwind uwtable
define internal fastcc void @warn_uninit(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef readonly %2) unnamed_addr #13 !prof !81 {
  %4 = alloca %struct.expanded_location, align 8
  %5 = alloca %struct.expanded_location, align 8
  %6 = alloca %struct.expanded_location, align 8
  %7 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !93
  %9 = load i64, ptr %8, align 8
  %10 = trunc i64 %9 to i16
  switch i16 %10, label %16 [
    i16 34, label %70
    i16 32, label %11
  ]

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %8, i64 0, i32 4
  %13 = load i32, ptr %12, align 8
  %14 = and i32 %13, 2
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %70

16:                                               ; preds = %11, %3
  %17 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !93
  %19 = load i32, ptr %18, align 8
  %20 = and i32 %19, 255
  %21 = icmp eq i32 %20, 18
  %22 = and i64 %9, 75497472
  %23 = icmp eq i64 %22, 0
  %24 = and i1 %23, %21
  br i1 %24, label %25, label %70

25:                                               ; preds = %16
  %26 = getelementptr inbounds %struct.tree_decl_common, ptr %8, i64 0, i32 2
  %27 = load i64, ptr %26, align 8
  %28 = and i64 %27, 33554432
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %70

30:                                               ; preds = %25
  %31 = icmp eq ptr %2, null
  br i1 %31, label %36, label %32

32:                                               ; preds = %30
  %33 = getelementptr inbounds %struct.gimple_statement_base, ptr %2, i64 0, i32 2
  %34 = load i32, ptr %33, align 8, !tbaa !93
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %32, %30
  %37 = getelementptr inbounds %struct.tree_decl_minimal, ptr %8, i64 0, i32 1
  %38 = load i32, ptr %37, align 8, !tbaa !93
  br label %39

39:                                               ; preds = %32, %36
  %40 = phi i32 [ %38, %36 ], [ %34, %32 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #24
  call void @expand_location(ptr dead_on_unwind nonnull writable sret(%struct.expanded_location) align 8 %4, i32 noundef %40) #24
  %41 = load ptr, ptr %4, align 8, !tbaa.struct !380
  %42 = getelementptr inbounds i8, ptr %4, i64 8
  %43 = load i32, ptr %42, align 8, !tbaa.struct !381
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #24
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #24
  %44 = load ptr, ptr @cfun, align 8, !tbaa !82
  %45 = getelementptr inbounds %struct.function, ptr %44, i64 0, i32 6
  %46 = load ptr, ptr %45, align 8, !tbaa !382
  %47 = getelementptr inbounds %struct.tree_decl_minimal, ptr %46, i64 0, i32 1
  %48 = load i32, ptr %47, align 8, !tbaa !93
  call void @expand_location(ptr dead_on_unwind nonnull writable sret(%struct.expanded_location) align 8 %5, i32 noundef %48) #24
  %49 = load ptr, ptr %5, align 8, !tbaa.struct !380
  %50 = getelementptr inbounds i8, ptr %5, i64 8
  %51 = load i32, ptr %50, align 8, !tbaa.struct !381
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #24
  %52 = call zeroext i8 (i32, i32, ptr, ...) @warning_at(i32 noundef %40, i32 noundef 211, ptr noundef %1, ptr noundef nonnull %8) #24
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %70, label %54

54:                                               ; preds = %39
  %55 = load i64, ptr %8, align 8
  %56 = or i64 %55, 8388608
  store i64 %56, ptr %8, align 8
  %57 = icmp ne ptr %41, %49
  %58 = icmp slt i32 %43, %51
  %59 = select i1 %57, i1 true, i1 %58
  br i1 %59, label %67, label %60

60:                                               ; preds = %54
  %61 = load ptr, ptr @cfun, align 8, !tbaa !82
  %62 = getelementptr inbounds %struct.function, ptr %61, i64 0, i32 16
  %63 = load i32, ptr %62, align 4, !tbaa !383
  call void @expand_location(ptr dead_on_unwind nonnull writable sret(%struct.expanded_location) align 8 %6, i32 noundef %63) #24
  %64 = getelementptr inbounds %struct.expanded_location, ptr %6, i64 0, i32 1
  %65 = load i32, ptr %64, align 8, !tbaa !384
  %66 = icmp sgt i32 %43, %65
  br i1 %66, label %67, label %70

67:                                               ; preds = %60, %54
  %68 = getelementptr inbounds %struct.tree_decl_minimal, ptr %8, i64 0, i32 1
  %69 = load i32, ptr %68, align 8, !tbaa !93
  call void (i32, ptr, ...) @inform(i32 noundef %69, ptr noundef nonnull @.str.50, ptr noundef nonnull %8) #24
  br label %70

70:                                               ; preds = %3, %11, %39, %67, %60, %25, %16
  ret void
}

declare void @expand_location(ptr dead_on_unwind writable sret(%struct.expanded_location) align 8, i32 noundef) local_unnamed_addr #3

declare zeroext i8 @warning_at(i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

declare void @inform(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #22

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #22

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #23

attributes #0 = { cold inlinehint nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold inlinehint mustprogress nofree nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { inlinehint mustprogress nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #13 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #16 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { nofree nounwind }
attributes #23 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #24 = { nounwind }
attributes #25 = { cold }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!80}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 1, !"ProfileSummary", !5}
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15}
!6 = !{!"ProfileFormat", !"InstrProf"}
!7 = !{!"TotalCount", i64 25970300442}
!8 = !{!"MaxCount", i64 499227316}
!9 = !{!"MaxInternalCount", i64 499227316}
!10 = !{!"MaxFunctionCount", i64 269079181}
!11 = !{!"NumCounts", i64 219814}
!12 = !{!"NumFunctions", i64 12846}
!13 = !{!"IsPartialProfile", i64 0}
!14 = !{!"PartialProfileRatio", double 0.000000e+00}
!15 = !{!"DetailedSummary", !16}
!16 = !{!17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32}
!17 = !{i32 10000, i64 499227316, i32 1}
!18 = !{i32 100000, i64 183919233, i32 10}
!19 = !{i32 200000, i64 63966136, i32 32}
!20 = !{i32 300000, i64 31763078, i32 90}
!21 = !{i32 400000, i64 20117281, i32 196}
!22 = !{i32 500000, i64 11046006, i32 375}
!23 = !{i32 600000, i64 6386181, i32 684}
!24 = !{i32 700000, i64 3816210, i32 1202}
!25 = !{i32 800000, i64 1875647, i32 2153}
!26 = !{i32 900000, i64 635998, i32 4611}
!27 = !{i32 950000, i64 320174, i32 7413}
!28 = !{i32 990000, i64 82126, i32 13176}
!29 = !{i32 999000, i64 12347, i32 18728}
!30 = !{i32 999900, i64 1133, i32 23724}
!31 = !{i32 999990, i64 83, i32 29864}
!32 = !{i32 999999, i64 20, i32 34832}
!33 = !{i32 5, !"CG Profile", !34}
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79}
!35 = !{ptr @redirect_edge_var_map_clear, ptr @pointer_map_contains, i64 658749}
!36 = !{ptr @redirect_edge_var_map_clear, ptr @free, i64 115044}
!37 = !{ptr @redirect_edge_var_map_dup, ptr @pointer_map_insert, i64 654}
!38 = !{ptr @redirect_edge_var_map_dup, ptr @pointer_map_contains, i64 654}
!39 = !{ptr @redirect_edge_var_map_vector, ptr @pointer_map_contains, i64 190729}
!40 = !{ptr @ssa_redirect_edge, ptr @pointer_map_contains, i64 554333}
!41 = !{ptr @ssa_redirect_edge, ptr @free, i64 96809}
!42 = !{ptr @ssa_redirect_edge, ptr @gsi_start_phis, i64 559633}
!43 = !{ptr @ssa_redirect_edge, ptr @pointer_map_create, i64 38}
!44 = !{ptr @ssa_redirect_edge, ptr @pointer_map_insert, i64 229591}
!45 = !{ptr @ssa_redirect_edge, ptr @vec_heap_o_reserve_exact, i64 220202}
!46 = !{ptr @ssa_redirect_edge, ptr @redirect_edge_succ_nodup, i64 559633}
!47 = !{ptr @flush_pending_stmts, ptr @pointer_map_contains, i64 99429}
!48 = !{ptr @flush_pending_stmts, ptr @gsi_start_phis, i64 48269}
!49 = !{ptr @flush_pending_stmts, ptr @add_phi_arg, i64 50566}
!50 = !{ptr @flush_pending_stmts, ptr @free, i64 8350}
!51 = !{ptr @init_tree_ssa, ptr @ggc_alloc_cleared_stat, i64 41}
!52 = !{ptr @init_tree_ssa, ptr @htab_create_alloc, i64 82}
!53 = !{ptr @init_tree_ssa, ptr @pt_solution_reset, i64 82}
!54 = !{ptr @init_tree_ssa, ptr @init_ssanames, i64 41}
!55 = !{ptr @init_tree_ssa, ptr @init_phinodes, i64 41}
!56 = !{ptr @delete_tree_ssa, ptr @htab_size, i64 41}
!57 = !{ptr @delete_tree_ssa, ptr @ggc_free, i64 103676}
!58 = !{ptr @delete_tree_ssa, ptr @htab_delete, i64 82}
!59 = !{ptr @delete_tree_ssa, ptr @fini_ssanames, i64 41}
!60 = !{ptr @delete_tree_ssa, ptr @fini_phinodes, i64 41}
!61 = !{ptr @delete_tree_ssa, ptr @ssa_operands_active, i64 41}
!62 = !{ptr @delete_tree_ssa, ptr @fini_ssa_operands, i64 41}
!63 = !{ptr @delete_tree_ssa, ptr @delete_alias_heapvars, i64 41}
!64 = !{ptr @delete_tree_ssa, ptr @pt_solution_reset, i64 82}
!65 = !{ptr @delete_tree_ssa, ptr @pointer_map_traverse, i64 38}
!66 = !{ptr @delete_tree_ssa, ptr @pointer_map_destroy, i64 38}
!67 = !{ptr @useless_type_conversion_p, ptr @get_deref_alias_set, i64 768}
!68 = !{ptr @useless_type_conversion_p, ptr @useless_type_conversion_p, i64 384}
!69 = !{ptr @types_compatible_p, ptr @useless_type_conversion_p, i64 286}
!70 = !{ptr @tree_ssa_useless_type_conversion, ptr @useless_type_conversion_p, i64 14949}
!71 = !{ptr @tree_ssa_strip_useless_type_conversions, ptr @useless_type_conversion_p, i64 109271}
!72 = !{ptr @execute_update_addresses_taken, ptr @bitmap_obstack_alloc_stat, i64 384}
!73 = !{ptr @execute_update_addresses_taken, ptr @gimple_ior_addresses_taken, i64 1790256}
!74 = !{ptr @execute_update_addresses_taken, ptr @gimple_get_lhs, i64 1062456}
!75 = !{ptr @execute_update_addresses_taken, ptr @get_base_address, i64 161}
!76 = !{ptr @execute_update_addresses_taken, ptr @gsi_start_phis, i64 967333}
!77 = !{ptr @execute_update_addresses_taken, ptr @htab_size, i64 192}
!78 = !{ptr @execute_update_addresses_taken, ptr @bitmap_bit_p, i64 1081546}
!79 = !{ptr @execute_update_addresses_taken, ptr @bitmap_obstack_free, i64 384}
!80 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!81 = !{!"function_entry_count", i64 0}
!82 = !{!83, !83, i64 0}
!83 = !{!"any pointer", !84, i64 0}
!84 = !{!"omnipotent char", !85, i64 0}
!85 = !{!"Simple C/C++ TBAA"}
!86 = !{!87, !83, i64 8}
!87 = !{!"_IO_FILE", !88, i64 0, !83, i64 8, !83, i64 16, !83, i64 24, !83, i64 32, !83, i64 40, !83, i64 48, !83, i64 56, !83, i64 64, !83, i64 72, !83, i64 80, !83, i64 88, !83, i64 96, !83, i64 104, !88, i64 112, !88, i64 116, !89, i64 120, !90, i64 128, !84, i64 130, !84, i64 131, !83, i64 136, !89, i64 144, !83, i64 152, !83, i64 160, !83, i64 168, !83, i64 176, !89, i64 184, !88, i64 192, !84, i64 196}
!88 = !{!"int", !84, i64 0}
!89 = !{!"long", !84, i64 0}
!90 = !{!"short", !84, i64 0}
!91 = !{!87, !83, i64 16}
!92 = !{!"branch_weights", i32 2000, i32 1}
!93 = !{!84, !84, i64 0}
!94 = !{!87, !83, i64 40}
!95 = !{!87, !83, i64 48}
!96 = !{!87, !88, i64 0}
!97 = !{!88, !88, i64 0}
!98 = distinct !{!98, !99, !100}
!99 = !{!"llvm.loop.mustprogress"}
!100 = !{!"llvm.loop.unroll.disable"}
!101 = !{!"branch_weights", i32 38, i32 229553}
!102 = !{!"branch_weights", i32 220202, i32 9389}
!103 = !{!"branch_weights", i32 0, i32 229591}
!104 = !{!105, !88, i64 4}
!105 = !{!"VEC_edge_var_map_base", !88, i64 0, !88, i64 4, !84, i64 8}
!106 = !{!105, !88, i64 0}
!107 = !{i64 0, i64 8, !82, i64 8, i64 8, !82, i64 16, i64 4, !97}
!108 = !{i64 0, i64 8, !82, i64 8, i64 4, !97}
!109 = !{i64 0, i64 4, !97}
!110 = !{!"branch_weights", i32 9389, i32 220202}
!111 = !{!"function_entry_count", i64 665047}
!112 = !{!"branch_weights", i32 12055, i32 1260894}
!113 = !{!"branch_weights", i32 723518, i32 537376}
!114 = !{!"branch_weights", i32 317174, i32 220202}
!115 = !{!"function_entry_count", i64 668}
!116 = !{!"branch_weights", i32 14, i32 654}
!117 = !{!"branch_weights", i32 654, i32 0}
!118 = !{!119, !88, i64 0}
!119 = !{!"VEC_edge_var_map_heap", !105, i64 0}
!120 = !{!"function_entry_count", i64 195964}
!121 = !{!"branch_weights", i32 5235, i32 190729}
!122 = !{!"branch_weights", i32 18427, i32 172302}
!123 = !{!"branch_weights", i32 3, i32 38}
!124 = !{!"function_entry_count", i64 183830}
!125 = !{!"tree-ssa.c;free_var_map_entry"}
!126 = !{!"branch_weights", i32 183830, i32 0}
!127 = !{!"function_entry_count", i64 559633}
!128 = !{!129, !83, i64 8}
!129 = !{!"edge_def", !83, i64 0, !83, i64 8, !84, i64 16, !83, i64 24, !83, i64 32, !88, i64 40, !88, i64 44, !88, i64 48, !88, i64 52, !89, i64 56}
!130 = !{i64 0, i64 8, !82, i64 8, i64 8, !82, i64 16, i64 8, !82}
!131 = !{!"branch_weights", i32 330042, i32 229591}
!132 = !{!133, !83, i64 0}
!133 = !{!"gimple_seq_node_d", !83, i64 0, !83, i64 8, !83, i64 16}
!134 = !{!129, !88, i64 44}
!135 = !{!136, !83, i64 24}
!136 = !{!"ssa_use_operand_d", !83, i64 0, !83, i64 8, !84, i64 16, !83, i64 24}
!137 = !{!138, !88, i64 40}
!138 = !{!"phi_arg_d", !136, i64 0, !83, i64 32, !88, i64 40}
!139 = !{!133, !83, i64 16}
!140 = !{!"branch_weights", i32 229591, i32 0}
!141 = distinct !{!141, !99, !100}
!142 = !{!"function_entry_count", i64 52304}
!143 = !{!"branch_weights", i32 687, i32 51617}
!144 = !{!"branch_weights", i32 3348, i32 48269}
!145 = !{!"branch_weights", i32 4035, i32 48269}
!146 = !{!"branch_weights", i32 1, i32 48268}
!147 = !{!"branch_weights", i32 50566, i32 0}
!148 = !{!149, !83, i64 8}
!149 = !{!"_edge_var_map", !83, i64 0, !83, i64 8, !88, i64 16}
!150 = !{!149, !88, i64 16}
!151 = !{!"branch_weights", i32 48268, i32 2298}
!152 = distinct !{!152, !99, !100}
!153 = !{!"function_entry_count", i64 365499}
!154 = !{!"branch_weights", i32 365499, i32 0}
!155 = !{!156, !83, i64 8}
!156 = !{!"immediate_use_iterator_d", !83, i64 0, !83, i64 8, !136, i64 16, !83, i64 48}
!157 = !{!136, !83, i64 8}
!158 = !{!156, !83, i64 0}
!159 = !{!89, !89, i64 0}
!160 = distinct !{!160, !99, !100}
!161 = !{!156, !83, i64 48}
!162 = !{!136, !83, i64 0}
!163 = distinct !{!163, !99, !100}
!164 = distinct !{!164, !99, !100}
!165 = !{!166, !84, i64 41}
!166 = !{!"walk_stmt_info", !167, i64 0, !83, i64 24, !83, i64 32, !84, i64 40, !84, i64 41, !84, i64 42, !84, i64 43, !83, i64 48}
!167 = !{!"", !83, i64 0, !83, i64 8, !83, i64 16}
!168 = !{!"function_entry_count", i64 578569}
!169 = !{!"branch_weights", i32 578569, i32 0}
!170 = !{!171, !83, i64 0}
!171 = !{!"def_optype_d", !83, i64 0, !83, i64 8}
!172 = !{!171, !83, i64 8}
!173 = distinct !{!173, !99, !100}
!174 = !{!175, !83, i64 0}
!175 = !{!"bitmap_head_def", !83, i64 0, !83, i64 8, !88, i64 16, !83, i64 24}
!176 = distinct !{!176, !99, !100}
!177 = !{!178, !88, i64 16}
!178 = !{!"bitmap_element_def", !83, i64 0, !83, i64 8, !88, i64 16, !84, i64 24}
!179 = distinct !{!179, !99, !100}
!180 = distinct !{!180, !99, !100}
!181 = !{!178, !83, i64 0}
!182 = distinct !{!182, !100}
!183 = !{!184, !83, i64 24}
!184 = !{!"function", !83, i64 0, !83, i64 8, !83, i64 16, !83, i64 24, !83, i64 32, !83, i64 40, !83, i64 48, !83, i64 56, !83, i64 64, !83, i64 72, !83, i64 80, !83, i64 88, !83, i64 96, !88, i64 104, !88, i64 108, !88, i64 112, !88, i64 116, !88, i64 120, !88, i64 124, !83, i64 128, !88, i64 136, !88, i64 137, !88, i64 138, !88, i64 138, !88, i64 138, !88, i64 138, !88, i64 138, !88, i64 138, !88, i64 138, !88, i64 139, !88, i64 139, !88, i64 139, !88, i64 139, !88, i64 139, !88, i64 139, !88, i64 139}
!185 = !{!186, !83, i64 16}
!186 = !{!"gimple_df", !83, i64 0, !83, i64 8, !83, i64 16, !83, i64 24, !187, i64 32, !187, i64 48, !83, i64 64, !83, i64 72, !83, i64 80, !83, i64 88, !88, i64 96, !188, i64 104}
!187 = !{!"pt_solution", !88, i64 0, !88, i64 0, !88, i64 0, !88, i64 0, !88, i64 0, !88, i64 0, !83, i64 8}
!188 = !{!"ssa_operands", !83, i64 0, !88, i64 8, !88, i64 12, !84, i64 16, !83, i64 24, !83, i64 32}
!189 = distinct !{!189, !99, !100}
!190 = distinct !{!190, !99, !100}
!191 = distinct !{!191, !99, !100}
!192 = !{!193, !88, i64 0}
!193 = !{!"VEC_tree_base", !88, i64 0, !88, i64 4, !84, i64 8}
!194 = !{i8 0, i8 2}
!195 = !{!196, !88, i64 80}
!196 = !{!"basic_block_def", !83, i64 0, !83, i64 8, !83, i64 16, !83, i64 24, !84, i64 32, !83, i64 48, !83, i64 56, !84, i64 64, !89, i64 72, !88, i64 80, !88, i64 84, !88, i64 88, !88, i64 92, !88, i64 96}
!197 = distinct !{!197, !99, !100}
!198 = !{!184, !83, i64 8}
!199 = !{!200, !83, i64 0}
!200 = !{!"control_flow_graph", !83, i64 0, !83, i64 8, !83, i64 16, !88, i64 24, !88, i64 28, !88, i64 32, !83, i64 40, !88, i64 48, !84, i64 52, !84, i64 60, !88, i64 68, !88, i64 72}
!201 = !{!196, !83, i64 56}
!202 = !{!200, !83, i64 8}
!203 = !{!204, !88, i64 0}
!204 = !{!"VEC_edge_base", !88, i64 0, !88, i64 4, !84, i64 8}
!205 = !{!129, !83, i64 24}
!206 = !{!129, !83, i64 0}
!207 = distinct !{!207, !99, !100}
!208 = !{!196, !83, i64 0}
!209 = !{!129, !88, i64 48}
!210 = distinct !{!210, !99, !100}
!211 = distinct !{!211, !99, !100}
!212 = distinct !{!212, !99, !100}
!213 = !{!196, !88, i64 96}
!214 = !{!215}
!215 = distinct !{!215, !216, !"gsi_start_bb: argument 0"}
!216 = distinct !{!216, !"gsi_start_bb"}
!217 = !{!218, !83, i64 0}
!218 = !{!"gimple_bb_info", !83, i64 0, !83, i64 8}
!219 = !{!220, !83, i64 0}
!220 = !{!"gimple_seq_d", !83, i64 0, !83, i64 8, !83, i64 16}
!221 = !{!222, !83, i64 32}
!222 = !{!"use_optype_d", !83, i64 0, !136, i64 8}
!223 = !{!222, !83, i64 0}
!224 = distinct !{!224, !99, !100}
!225 = distinct !{!225, !99, !100}
!226 = distinct !{!226, !99, !100}
!227 = distinct !{!227, !99, !100}
!228 = distinct !{!228, !99, !100}
!229 = !{!186, !83, i64 24}
!230 = !{!231, !83, i64 8}
!231 = !{!"ssa_operand_iterator_d", !84, i64 0, !88, i64 4, !83, i64 8, !83, i64 16, !88, i64 24, !88, i64 28, !83, i64 32}
!232 = !{!231, !83, i64 16}
!233 = !{!231, !84, i64 0}
!234 = !{!231, !88, i64 4}
!235 = !{!236, !88, i64 0}
!236 = !{!"int_tree_map", !88, i64 0, !83, i64 8}
!237 = !{!"function_entry_count", i64 1025826}
!238 = !{!"function_entry_count", i64 177419}
!239 = !{!"function_entry_count", i64 41}
!240 = !{!186, !83, i64 0}
!241 = !{!186, !83, i64 80}
!242 = !{!"function_entry_count", i64 12970}
!243 = !{!"tree-ssa.c;uid_ssaname_map_eq"}
!244 = !{!"branch_weights", i32 0, i32 41}
!245 = !{!246, !83, i64 24}
!246 = !{!"htab", !83, i64 0, !83, i64 8, !83, i64 16, !83, i64 24, !89, i64 32, !89, i64 40, !89, i64 48, !88, i64 56, !88, i64 60, !83, i64 64, !83, i64 72, !83, i64 80, !83, i64 88, !83, i64 96, !88, i64 104}
!247 = !{!"branch_weights", i32 62, i32 41}
!248 = !{!"branch_weights", i32 62, i32 0}
!249 = distinct !{!249, !99, !100}
!250 = !{!"branch_weights", i32 41, i32 0}
!251 = !{!"branch_weights", i32 163, i32 1}
!252 = !{!"branch_weights", i32 103801, i32 81}
!253 = !{!"branch_weights", i32 103676, i32 206}
!254 = !{!"branch_weights", i32 1, i32 103634, i32 41}
!255 = !{!"branch_weights", i32 1, i32 0}
!256 = !{!"branch_weights", i32 0, i32 103676}
!257 = !{!"branch_weights", i32 237850, i32 41}
!258 = !{!"branch_weights", i32 134009, i32 103841}
!259 = !{!"branch_weights", i32 415365, i32 163}
!260 = distinct !{!260, !99, !100}
!261 = !{!186, !83, i64 64}
!262 = !{!186, !83, i64 8}
!263 = !{!"function_entry_count", i64 589084}
!264 = !{!"branch_weights", i32 370801, i32 218283, i32 0}
!265 = !{!"branch_weights", i32 0, i32 218283, i32 0}
!266 = !{!"branch_weights", i32 218283, i32 0}
!267 = !{!"branch_weights", i32 15225, i32 0, i32 203058, i32 0}
!268 = !{!"branch_weights", i32 203058, i32 0}
!269 = !{!"branch_weights", i32 0, i32 203058}
!270 = !{!"branch_weights", i32 457660, i32 131424}
!271 = !{!"branch_weights", i32 0, i32 131424}
!272 = !{!"branch_weights", i32 100587, i32 30837}
!273 = !{!"branch_weights", i32 367, i32 30470}
!274 = !{!"branch_weights", i32 100199, i32 755}
!275 = !{!"branch_weights", i32 100199, i32 0}
!276 = !{!"branch_weights", i32 100072, i32 127}
!277 = !{!"branch_weights", i32 570025, i32 0, i32 0}
!278 = !{!"branch_weights", i32 0, i32 755}
!279 = !{!"branch_weights", i32 371, i32 384, i32 0}
!280 = !{!"branch_weights", i32 0, i32 384, i32 0}
!281 = !{!"branch_weights", i32 0, i32 384}
!282 = !{!"branch_weights", i32 384, i32 0}
!283 = !{!"branch_weights", i32 247, i32 137}
!284 = !{!"branch_weights", i32 137641, i32 0, i32 0, i32 50927170}
!285 = !{!"branch_weights", i32 371, i32 0, i32 137270}
!286 = !{!"branch_weights", i32 370, i32 1}
!287 = !{!"branch_weights", i32 0, i32 370}
!288 = !{!"branch_weights", i32 0, i32 371}
!289 = distinct !{!289, !99, !100}
!290 = !{!291, !83, i64 832}
!291 = !{!"gcc_target", !292, i64 0, !294, i64 368, !295, i64 664, !88, i64 744, !83, i64 752, !83, i64 760, !83, i64 768, !83, i64 776, !83, i64 784, !83, i64 792, !83, i64 800, !83, i64 808, !83, i64 816, !83, i64 824, !83, i64 832, !83, i64 840, !83, i64 848, !83, i64 856, !83, i64 864, !83, i64 872, !83, i64 880, !83, i64 888, !83, i64 896, !83, i64 904, !83, i64 912, !83, i64 920, !83, i64 928, !83, i64 936, !83, i64 944, !83, i64 952, !83, i64 960, !83, i64 968, !83, i64 976, !83, i64 984, !83, i64 992, !83, i64 1000, !83, i64 1008, !83, i64 1016, !83, i64 1024, !83, i64 1032, !83, i64 1040, !83, i64 1048, !83, i64 1056, !89, i64 1064, !89, i64 1072, !83, i64 1080, !83, i64 1088, !83, i64 1096, !83, i64 1104, !83, i64 1112, !83, i64 1120, !83, i64 1128, !83, i64 1136, !83, i64 1144, !83, i64 1152, !83, i64 1160, !83, i64 1168, !296, i64 1176, !83, i64 1232, !83, i64 1240, !83, i64 1248, !83, i64 1256, !83, i64 1264, !83, i64 1272, !83, i64 1280, !83, i64 1288, !83, i64 1296, !83, i64 1304, !83, i64 1312, !83, i64 1320, !83, i64 1328, !83, i64 1336, !83, i64 1344, !83, i64 1352, !83, i64 1360, !83, i64 1368, !83, i64 1376, !83, i64 1384, !83, i64 1392, !83, i64 1400, !83, i64 1408, !83, i64 1416, !83, i64 1424, !83, i64 1432, !83, i64 1440, !83, i64 1448, !83, i64 1456, !89, i64 1464, !297, i64 1472, !83, i64 1664, !83, i64 1672, !83, i64 1680, !83, i64 1688, !83, i64 1696, !83, i64 1704, !83, i64 1712, !83, i64 1720, !83, i64 1728, !83, i64 1736, !83, i64 1744, !83, i64 1752, !83, i64 1760, !83, i64 1768, !83, i64 1776, !298, i64 1784, !299, i64 1792, !300, i64 1896, !301, i64 1968, !83, i64 2016, !84, i64 2024, !84, i64 2025, !84, i64 2026, !84, i64 2027, !84, i64 2028, !84, i64 2029, !84, i64 2030, !84, i64 2031, !84, i64 2032, !84, i64 2033, !84, i64 2034, !84, i64 2035}
!292 = !{!"asm_out", !83, i64 0, !83, i64 8, !83, i64 16, !293, i64 24, !293, i64 56, !83, i64 88, !83, i64 96, !83, i64 104, !83, i64 112, !83, i64 120, !83, i64 128, !83, i64 136, !83, i64 144, !83, i64 152, !83, i64 160, !83, i64 168, !83, i64 176, !83, i64 184, !83, i64 192, !83, i64 200, !83, i64 208, !83, i64 216, !83, i64 224, !83, i64 232, !83, i64 240, !83, i64 248, !83, i64 256, !83, i64 264, !83, i64 272, !83, i64 280, !83, i64 288, !83, i64 296, !83, i64 304, !83, i64 312, !83, i64 320, !83, i64 328, !83, i64 336, !83, i64 344, !83, i64 352, !83, i64 360}
!293 = !{!"asm_int_op", !83, i64 0, !83, i64 8, !83, i64 16, !83, i64 24}
!294 = !{!"sched", !83, i64 0, !83, i64 8, !83, i64 16, !83, i64 24, !83, i64 32, !83, i64 40, !83, i64 48, !83, i64 56, !83, i64 64, !83, i64 72, !83, i64 80, !83, i64 88, !83, i64 96, !83, i64 104, !83, i64 112, !83, i64 120, !83, i64 128, !83, i64 136, !83, i64 144, !83, i64 152, !83, i64 160, !83, i64 168, !83, i64 176, !83, i64 184, !83, i64 192, !83, i64 200, !83, i64 208, !83, i64 216, !83, i64 224, !83, i64 232, !83, i64 240, !83, i64 248, !83, i64 256, !83, i64 264, !83, i64 272, !83, i64 280, !83, i64 288}
!295 = !{!"vectorize", !83, i64 0, !83, i64 8, !83, i64 16, !83, i64 24, !83, i64 32, !83, i64 40, !83, i64 48, !83, i64 56, !83, i64 64, !83, i64 72}
!296 = !{!"addr_space", !83, i64 0, !83, i64 8, !83, i64 16, !83, i64 24, !83, i64 32, !83, i64 40, !83, i64 48}
!297 = !{!"calls", !83, i64 0, !83, i64 8, !83, i64 16, !83, i64 24, !83, i64 32, !83, i64 40, !83, i64 48, !83, i64 56, !83, i64 64, !83, i64 72, !83, i64 80, !83, i64 88, !83, i64 96, !83, i64 104, !83, i64 112, !83, i64 120, !83, i64 128, !83, i64 136, !83, i64 144, !83, i64 152, !83, i64 160, !83, i64 168, !83, i64 176, !83, i64 184}
!298 = !{!"c", !83, i64 0}
!299 = !{!"cxx", !83, i64 0, !83, i64 8, !83, i64 16, !83, i64 24, !83, i64 32, !83, i64 40, !83, i64 48, !83, i64 56, !83, i64 64, !83, i64 72, !83, i64 80, !83, i64 88, !83, i64 96}
!300 = !{!"emutls", !83, i64 0, !83, i64 8, !83, i64 16, !83, i64 24, !83, i64 32, !83, i64 40, !83, i64 48, !83, i64 56, !84, i64 64, !84, i64 65}
!301 = !{!"target_option_hooks", !83, i64 0, !83, i64 8, !83, i64 16, !83, i64 24, !83, i64 32, !83, i64 40}
!302 = !{!"function_entry_count", i64 750199}
!303 = !{!"branch_weights", i32 749976, i32 223}
!304 = !{!"branch_weights", i32 160, i32 63}
!305 = !{!"function_entry_count", i64 14949}
!306 = !{!"branch_weights", i32 0, i32 14949, i32 0, i32 0, i32 0}
!307 = !{!"function_entry_count", i64 45443652}
!308 = !{!"branch_weights", i32 45428685, i32 109271, i32 0, i32 0, i32 0}
!309 = !{!"branch_weights", i32 45443652, i32 94304}
!310 = distinct !{!310, !99, !100}
!311 = distinct !{!311, !99, !100}
!312 = distinct !{!312, !99, !100}
!313 = distinct !{!313, !99, !100}
!314 = !{!"function_entry_count", i64 59041}
!315 = !{!"branch_weights", i32 0, i32 200, i32 58841}
!316 = !{!"branch_weights", i32 58841, i32 0}
!317 = !{!"function_entry_count", i64 78}
!318 = !{!"tree-ssa.c;gate_warn_uninitialized"}
!319 = distinct !{!319, !99, !100}
!320 = distinct !{!320, !99, !100}
!321 = distinct !{!321, !99, !100}
!322 = !{!"function_entry_count", i64 192}
!323 = !{!"branch_weights", i32 1, i32 191}
!324 = !{!"branch_weights", i32 191, i32 967141}
!325 = distinct !{!325, !99, !100}
!326 = !{!327}
!327 = distinct !{!327, !328, !"gsi_start_bb: argument 0"}
!328 = distinct !{!328, !"gsi_start_bb"}
!329 = !{!"branch_weights", i32 967332, i32 0}
!330 = !{!"branch_weights", i32 0, i32 967332}
!331 = !{!"branch_weights", i32 1, i32 967331}
!332 = !{!"branch_weights", i32 727800, i32 345646, i32 716809}
!333 = !{!"branch_weights", i32 11292, i32 1051163}
!334 = !{!"branch_weights", i32 0, i32 1051163}
!335 = !{!"branch_weights", i32 1051002, i32 0, i32 161, i32 0, i32 0, i32 0, i32 0, i32 0}
!336 = !{!"branch_weights", i32 0, i32 161}
!337 = !{!"branch_weights", i32 967331, i32 822924}
!338 = distinct !{!338, !99, !100}
!339 = !{!"branch_weights", i32 751288, i32 216044}
!340 = !{!"branch_weights", i32 1, i32 216043}
!341 = !{!"branch_weights", i32 0, i32 868937}
!342 = !{!"branch_weights", i32 652894, i32 216043}
!343 = distinct !{!343, !99, !100}
!344 = !{!"branch_weights", i32 216044, i32 0}
!345 = distinct !{!345, !99, !100}
!346 = !{!"branch_weights", i32 192, i32 0}
!347 = !{!"branch_weights", i32 0, i32 192}
!348 = !{!"branch_weights", i32 275, i32 192}
!349 = !{!"branch_weights", i32 275, i32 0}
!350 = !{!"branch_weights", i32 191, i32 1}
!351 = !{!"branch_weights", i32 541398, i32 386}
!352 = !{!"branch_weights", i32 4271261, i32 -2010315441}
!353 = !{!"branch_weights", i32 540773, i32 0}
!354 = !{!"branch_weights", i32 0, i32 540773}
!355 = !{!"branch_weights", i32 1182311, i32 192}
!356 = !{!"branch_weights", i32 640719, i32 541592}
!357 = !{!"branch_weights", i32 541593, i32 191}
!358 = distinct !{!358, !99, !100}
!359 = distinct !{!359, !99, !100}
!360 = !{!361}
!361 = distinct !{!361, !362, !"gsi_start_bb: argument 0"}
!362 = distinct !{!362, !"gsi_start_bb"}
!363 = distinct !{!363, !99, !100}
!364 = !{!231, !83, i64 32}
!365 = !{!231, !88, i64 28}
!366 = !{!231, !88, i64 24}
!367 = distinct !{!367, !99, !100}
!368 = distinct !{!368, !99, !100}
!369 = !{!370, !84, i64 9}
!370 = !{!"walk_data", !83, i64 0, !84, i64 8, !84, i64 9}
!371 = distinct !{!371, !99, !100}
!372 = !{!196, !83, i64 8}
!373 = !{!370, !84, i64 8}
!374 = !{!375}
!375 = distinct !{!375, !376, !"gsi_start_bb: argument 0"}
!376 = distinct !{!376, !"gsi_start_bb"}
!377 = !{!370, !83, i64 0}
!378 = !{!166, !83, i64 24}
!379 = distinct !{!379, !99, !100}
!380 = !{i64 0, i64 8, !82, i64 8, i64 4, !97, i64 12, i64 4, !97, i64 16, i64 1, !93}
!381 = !{i64 0, i64 4, !97, i64 4, i64 4, !97, i64 8, i64 1, !93}
!382 = !{!184, !83, i64 48}
!383 = !{!184, !88, i64 116}
!384 = !{!385, !88, i64 8}
!385 = !{!"", !83, i64 0, !88, i64 8, !88, i64 12, !84, i64 16}
