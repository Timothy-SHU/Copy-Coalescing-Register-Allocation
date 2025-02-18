; ModuleID = 'matrix-reorg.c'
source_filename = "matrix-reorg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.simple_ipa_opt_pass = type { %struct.opt_pass }
%struct.opt_pass = type { i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct._IO_FILE = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, [1 x i8], ptr, i64, ptr, ptr, ptr, ptr, i64, i32, [20 x i8] }
%struct.matrix_info = type { ptr, i32, i32, ptr, ptr, i32, i8, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr }
%struct.cgraph_node = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.cgraph_local_info, %struct.cgraph_global_info, %struct.cgraph_rtl_info, %struct.cgraph_clone_info, %struct.cgraph_thunk_info, i64, i32, i32, i32, i16 }
%struct.cgraph_local_info = type { ptr, %struct.inline_summary, i8 }
%struct.inline_summary = type { i64, i32, i32, i32, i32 }
%struct.cgraph_global_info = type { i64, i64, ptr, i32, i32, i32, i8 }
%struct.cgraph_rtl_info = type { i32 }
%struct.cgraph_clone_info = type { ptr, ptr, ptr }
%struct.cgraph_thunk_info = type { i64, i64, ptr, i8, i8, i8 }
%struct.tree_function_decl = type { %struct.tree_decl_non_common, ptr, ptr, ptr, ptr, i32 }
%struct.tree_decl_non_common = type { %struct.tree_decl_with_vis, ptr, ptr, ptr, ptr }
%struct.tree_decl_with_vis = type { %struct.tree_decl_with_rtl, ptr, ptr, ptr, i24 }
%struct.tree_decl_with_rtl = type { %struct.tree_decl_common, ptr }
%struct.tree_decl_common = type { %struct.tree_decl_minimal, ptr, i40, i32, ptr, ptr, ptr, ptr, ptr }
%struct.tree_decl_minimal = type { %struct.tree_common, i32, i32, ptr, ptr }
%struct.tree_common = type { %struct.tree_base, ptr, ptr }
%struct.tree_base = type { i64 }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.basic_block_def = type { ptr, ptr, ptr, ptr, [2 x ptr], ptr, ptr, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%union.basic_block_il_dependent = type { ptr }
%struct.control_flow_graph = type { ptr, ptr, ptr, i32, i32, i32, ptr, i32, [2 x i32], [2 x i32], i32, i32 }
%struct.tree_exp = type { %struct.tree_common, i32, ptr, [1 x ptr] }
%struct.gimple_seq_node_d = type { ptr, ptr, ptr }
%struct.tree_type = type { %struct.tree_common, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, %union.tree_type_symtab, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.tree_type_symtab = type { ptr }
%struct.varpool_node = type { ptr, ptr, ptr, ptr, i32, i8 }
%struct.gimple_df = type { ptr, ptr, ptr, ptr, %struct.pt_solution, %struct.pt_solution, ptr, ptr, ptr, ptr, i8, %struct.ssa_operands }
%struct.pt_solution = type { i8, ptr }
%struct.ssa_operands = type { ptr, i32, i32, i8, ptr, ptr }
%struct.VEC_tree_base = type { i32, i32, [1 x ptr] }
%struct.tree_ssa_name = type { %struct.tree_common, ptr, ptr, i32, ptr, %struct.ssa_use_operand_d }
%struct.ssa_use_operand_d = type { ptr, ptr, %union.anon, ptr }
%union.anon = type { ptr }
%struct.affine_iv = type { ptr, ptr, i8 }
%struct.VEC_access_site_info_p_base = type { i32, i32, [1 x ptr] }
%struct.access_site_info = type { ptr, ptr, ptr, i32, i8, ptr, i8 }
%struct.gimple_statement_base = type { i32, i32, i32, i32, ptr, ptr }
%struct.loop = type { i32, i32, ptr, ptr, %struct.lpt_decision, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.double_int, %struct.double_int, i8, i8, i32, ptr, ptr, i8, ptr }
%struct.lpt_decision = type { i32, i32 }
%struct.double_int = type { i64, i64 }
%struct.malloc_call_data = type { ptr, ptr, ptr }
%struct.gimple_stmt_iterator = type { ptr, ptr, ptr }
%struct.immediate_use_iterator_d = type { ptr, ptr, %struct.ssa_use_operand_d, ptr }
%struct.check_var_data = type { ptr, ptr }
%struct.free_info = type { ptr, ptr }
%struct.gimple_statement_with_ops_base = type { %struct.gimple_statement_base, ptr, ptr }
%struct.gimple_statement_with_memory_ops_base = type { %struct.gimple_statement_with_ops_base, ptr, ptr }
%struct.def_optype_d = type { ptr, ptr }
%struct.ssa_acc_in_tree = type { ptr, i32, ptr, ptr, ptr, i8 }
%struct.matrix_access_phi_node = type { ptr, i32 }
%struct.gimple_statement_phi = type { %struct.gimple_statement_base, i32, i32, ptr, [1 x %struct.phi_arg_d] }
%struct.phi_arg_d = type { %struct.ssa_use_operand_d, ptr, i32 }
%struct.simple_bitmap_def = type { ptr, i32, i32, [1 x i64] }
%struct.tree_int_cst = type { %struct.tree_common, %struct.double_int }
%struct.use_optype_d = type { ptr, %struct.ssa_use_operand_d }

@stdout = external local_unnamed_addr global ptr, align 8
@stdin = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [13 x i8] c"matrix-reorg\00", align 1
@pass_ipa_matrix_reorg = dso_local local_unnamed_addr global %struct.simple_ipa_opt_pass { %struct.opt_pass { i32 2, ptr @.str, ptr @gate_matrix_reorg, ptr @matrix_reorg, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 129 } }, align 8
@flag_ipa_matrix_reorg = external local_unnamed_addr global i32, align 4
@flag_whole_program = external local_unnamed_addr global i32, align 4
@profile_info = external local_unnamed_addr global ptr, align 8
@check_transpose_p = internal unnamed_addr global i1 false, align 1
@cgraph_nodes = external local_unnamed_addr global ptr, align 8
@matrices_to_reorg = internal unnamed_addr global ptr null, align 8
@current_function_decl = external local_unnamed_addr global ptr, align 8
@cfun = external local_unnamed_addr global ptr, align 8
@htab_mat_acc_phi_nodes = internal unnamed_addr global ptr null, align 8
@dump_file = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [41 x i8] c"Found vector type, don't flatten matrix\0A\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"./gimple.h\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@gimple_rhs_class_table = external local_unnamed_addr constant [0 x i8], align 1
@gimple_ops_offset_ = external local_unnamed_addr constant [0 x i64], align 8
@gss_for_code_ = external local_unnamed_addr constant [0 x i32], align 4
@htab_hash_pointer = external local_unnamed_addr global ptr, align 8
@.str.4 = private unnamed_addr constant [15 x i8] c"matrix-reorg.c\00", align 1
@varpool_nodes_queue = external local_unnamed_addr global ptr, align 8
@.str.5 = private unnamed_addr constant [41 x i8] c"Matrix %s is an argument to function %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [48 x i8] c"Matrix %s: Function call %s, level %d escapes.\0A\00", align 1
@.str.7 = private unnamed_addr constant [74 x i8] c"Matrix %s: Cannot calculate the size of allocation, escaping at level %d\0A\00", align 1
@global_trees = external local_unnamed_addr global [131 x ptr], align 16
@.str.8 = private unnamed_addr constant [12 x i8] c"Matrix %s:\0A\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"dim %d before sort \00", align 1
@.str.10 = private unnamed_addr constant [17 x i8] c"count is  %ld  \0A\00", align 1
@.str.11 = private unnamed_addr constant [19 x i8] c"dim %d after sort\0A\00", align 1
@.str.12 = private unnamed_addr constant [27 x i8] c"dim_map[%d] after sort %d\0A\00", align 1
@.str.13 = private unnamed_addr constant [45 x i8] c"Transposed dimensions: dim %d is now dim %d\0A\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"new\00", align 1
@sizetype_tab = external local_unnamed_addr global [4 x ptr], align 16
@.str.16 = private unnamed_addr constant [47 x i8] c"Matrix \22%s\22; Escaping Level: %d, Num Dims: %d,\00", align 1
@.str.17 = private unnamed_addr constant [19 x i8] c" Malloc Dims: %d, \00", align 1
@.str.19 = private unnamed_addr constant [26 x i8] c"Flattened %d dimensions \0A\00", align 1

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @vprintf(ptr noalias nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 !prof !34 {
  %3 = load ptr, ptr @stdout, align 8, !tbaa !35
  %4 = tail call i32 @vfprintf(ptr noundef %3, ptr noundef %0, ptr noundef %1)
  ret i32 %4
}

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @getchar() local_unnamed_addr #0 !prof !34 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !35
  %2 = tail call i32 @getc(ptr noundef %1)
  ret i32 %2
}

; Function Attrs: nofree nounwind
declare noundef i32 @getc(ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !34 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !39
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !44
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !45

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #20
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !39
  %11 = load i8, ptr %3, align 1, !tbaa !46
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

declare i32 @__uflow(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !34 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !39
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !44
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !45

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #20
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !39
  %11 = load i8, ptr %3, align 1, !tbaa !46
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #2 !prof !34 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !35
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !39
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !44
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !45

7:                                                ; preds = %0
  %8 = tail call i32 @__uflow(ptr noundef %1) #20
  br label %13

9:                                                ; preds = %0
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !39
  %11 = load i8, ptr %3, align 1, !tbaa !46
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @putchar(i32 noundef %0) local_unnamed_addr #0 !prof !34 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !35
  %3 = tail call i32 @putc(i32 noundef %0, ptr noundef %2)
  ret i32 %3
}

; Function Attrs: nofree nounwind
declare noundef i32 @putc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !34 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !47
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !48
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !45

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #20
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !47
  store i8 %12, ptr %4, align 1, !tbaa !46
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

declare i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !34 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !47
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !48
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !45

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #20
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !47
  store i8 %12, ptr %4, align 1, !tbaa !46
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 noundef %0) local_unnamed_addr #2 !prof !34 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !35
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !47
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !48
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !45

8:                                                ; preds = %1
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %2, i32 noundef %9) #20
  br label %15

11:                                               ; preds = %1
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !47
  store i8 %12, ptr %4, align 1, !tbaa !46
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i64 @getline(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 !prof !34 {
  %4 = tail call i64 @__getdelim(ptr noundef %0, ptr noundef %1, i32 noundef 10, ptr noundef %2) #20
  ret i64 %4
}

declare i64 @__getdelim(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @feof_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !34 {
  %2 = load i32, ptr %0, align 8, !tbaa !49
  %3 = lshr i32 %2, 4
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @ferror_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !34 {
  %2 = load i32, ptr %0, align 8, !tbaa !49
  %3 = lshr i32 %2, 5
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @tolower(i32 noundef %0) local_unnamed_addr #5 !prof !34 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_tolower_loc() #20
  %6 = load ptr, ptr %5, align 8, !tbaa !35
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !50
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_tolower_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @toupper(i32 noundef %0) local_unnamed_addr #5 !prof !34 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_toupper_loc() #20
  %6 = load ptr, ptr %5, align 8, !tbaa !35
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !50
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_toupper_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i32 @atoi(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !34 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  %3 = trunc i64 %2 to i32
  ret i32 %3
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atol(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !34 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atoll(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !34 {
  %2 = tail call i64 @strtoll(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtoll(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local noundef ptr @bsearch(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #2 !prof !34 {
  %6 = icmp eq i64 %2, 0
  br i1 %6, label %24, label %7

7:                                                ; preds = %5, %20
  %8 = phi i64 [ %22, %20 ], [ 0, %5 ]
  %9 = phi i64 [ %21, %20 ], [ %2, %5 ]
  %10 = add i64 %8, %9
  %11 = lshr i64 %10, 1
  %12 = mul i64 %11, %3
  %13 = getelementptr inbounds i8, ptr %1, i64 %12
  %14 = tail call i32 %4(ptr noundef %0, ptr noundef %13) #20
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
  br i1 %23, label %7, label %24, !llvm.loop !51

24:                                               ; preds = %16, %20, %5
  %25 = phi ptr [ null, %5 ], [ %13, %16 ], [ null, %20 ]
  ret ptr %25
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local double @atof(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !34 {
  %2 = tail call double @strtod(ptr nocapture noundef %0, ptr noundef null)
  ret double %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal zeroext i8 @gate_matrix_reorg() #9 !prof !54 !PGOFuncName !55 {
  %1 = load i32, ptr @flag_ipa_matrix_reorg, align 4, !tbaa !50
  %2 = icmp ne i32 %1, 0
  %3 = load i32, ptr @flag_whole_program, align 4
  %4 = icmp ne i32 %3, 0
  %5 = select i1 %2, i1 %4, i1 false, !prof !56
  %6 = zext i1 %5 to i8
  ret i8 %6
}

; Function Attrs: cold nounwind uwtable
define internal noundef i32 @matrix_reorg() #10 !prof !34 {
  %1 = alloca %struct.matrix_info, align 8
  %2 = alloca %struct.matrix_info, align 8
  %3 = load ptr, ptr @profile_info, align 8, !tbaa !35
  %4 = icmp ne ptr %3, null
  store i1 %4, ptr @check_transpose_p, align 1
  %5 = load ptr, ptr @cgraph_nodes, align 8, !tbaa !35
  %6 = icmp eq ptr %5, null
  br i1 %6, label %142, label %7

7:                                                ; preds = %0, %138
  %8 = phi ptr [ %140, %138 ], [ %5, %0 ]
  %9 = getelementptr inbounds %struct.cgraph_node, ptr %8, i64 0, i32 27
  %10 = load i16, ptr %9, align 4
  %11 = and i16 %10, 32
  %12 = icmp eq i16 %11, 0
  br i1 %12, label %138, label %13

13:                                               ; preds = %7
  %14 = load ptr, ptr %8, align 8, !tbaa !57
  %15 = getelementptr inbounds %struct.tree_function_decl, ptr %14, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !46
  %17 = getelementptr inbounds %struct.function, ptr %16, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !65
  %19 = load ptr, ptr %18, align 8, !tbaa !67
  %20 = getelementptr inbounds %struct.basic_block_def, ptr %19, i64 0, i32 6
  %21 = load ptr, ptr %20, align 8, !tbaa !69
  %22 = getelementptr inbounds %struct.control_flow_graph, ptr %18, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !71
  %24 = icmp eq ptr %21, %23
  br i1 %24, label %138, label %32

25:                                               ; preds = %134, %49
  %26 = getelementptr inbounds %struct.basic_block_def, ptr %33, i64 0, i32 6
  %27 = load ptr, ptr %26, align 8, !tbaa !69
  %28 = load ptr, ptr %17, align 8, !tbaa !65
  %29 = getelementptr inbounds %struct.control_flow_graph, ptr %28, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !71
  %31 = icmp eq ptr %27, %30
  br i1 %31, label %138, label %32, !llvm.loop !72

32:                                               ; preds = %13, %25
  %33 = phi ptr [ %27, %25 ], [ %21, %13 ]
  %34 = getelementptr inbounds %struct.basic_block_def, ptr %33, i64 0, i32 13
  %35 = load i32, ptr %34, align 8, !tbaa !73, !noalias !74
  %36 = and i32 %35, 512
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %32
  %39 = getelementptr inbounds %struct.basic_block_def, ptr %33, i64 0, i32 7
  %40 = load ptr, ptr %39, align 8, !tbaa !46, !noalias !74
  %41 = icmp eq ptr %40, null
  br i1 %41, label %44, label %42

42:                                               ; preds = %38
  %43 = load ptr, ptr %40, align 8, !tbaa !77, !noalias !74
  br label %44

44:                                               ; preds = %42, %38, %32
  %45 = phi ptr [ %43, %42 ], [ null, %38 ], [ null, %32 ]
  %46 = icmp eq ptr %45, null
  br i1 %46, label %49, label %47

47:                                               ; preds = %44
  %48 = load ptr, ptr %45, align 8, !tbaa !79, !noalias !74
  br label %49

49:                                               ; preds = %47, %44
  %50 = phi ptr [ %48, %47 ], [ null, %44 ]
  %51 = icmp eq ptr %50, null
  br i1 %51, label %25, label %52

52:                                               ; preds = %49, %134
  %53 = phi ptr [ %136, %134 ], [ %50, %49 ]
  %54 = load ptr, ptr %53, align 8, !tbaa !81
  %55 = load i32, ptr %54, align 8
  %56 = and i32 %55, 255
  %57 = trunc i32 %55 to i8
  switch i8 %57, label %134 [
    i8 6, label %58
    i8 7, label %398
  ]

58:                                               ; preds = %52
  %59 = icmp eq i32 %56, 6
  br i1 %59, label %60, label %134

60:                                               ; preds = %58
  %61 = lshr i32 %55, 16
  %62 = zext nneg i32 %61 to i64
  %63 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %62
  %64 = load i8, ptr %63, align 1, !tbaa !46
  %65 = icmp eq i8 %64, 3
  br i1 %65, label %66, label %82

66:                                               ; preds = %60
  %67 = zext nneg i32 %56 to i64
  %68 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %67
  %69 = load i32, ptr %68, align 4, !tbaa !50
  %70 = zext i32 %69 to i64
  %71 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %70
  %72 = load i64, ptr %71, align 8, !tbaa !83
  %73 = icmp eq i64 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %66
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1622, ptr noundef nonnull @.str.3) #20
  br label %75

75:                                               ; preds = %74, %66
  %76 = getelementptr inbounds i8, ptr %54, i64 %72
  %77 = getelementptr inbounds ptr, ptr %76, i64 1
  %78 = load ptr, ptr %77, align 8, !tbaa !35
  %79 = load i64, ptr %78, align 8
  %80 = trunc i64 %79 to i32
  %81 = and i32 %80, 65535
  br label %82

82:                                               ; preds = %75, %60
  %83 = phi i32 [ %81, %75 ], [ %61, %60 ]
  %84 = freeze i32 %83
  %85 = and i32 %84, 65533
  %86 = icmp eq i32 %85, 116
  br i1 %86, label %88, label %87

87:                                               ; preds = %82
  switch i32 %84, label %134 [
    i32 113, label %88
    i32 77, label %88
  ]

88:                                               ; preds = %87, %87, %82
  %89 = load i32, ptr %54, align 8
  %90 = and i32 %89, 255
  %91 = add nsw i32 %90, -10
  %92 = icmp ult i32 %91, -9
  br i1 %92, label %108, label %93

93:                                               ; preds = %88
  %94 = zext nneg i32 %90 to i64
  %95 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %94
  %96 = load i32, ptr %95, align 4, !tbaa !50
  %97 = zext i32 %96 to i64
  %98 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %97
  %99 = load i64, ptr %98, align 8, !tbaa !83
  %100 = icmp eq i64 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %93
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1622, ptr noundef nonnull @.str.3) #20
  br label %102

102:                                              ; preds = %101, %93
  %103 = getelementptr inbounds i8, ptr %54, i64 %99
  %104 = getelementptr inbounds ptr, ptr %103, i64 1
  br label %105

105:                                              ; preds = %132, %102
  %106 = phi ptr [ %104, %102 ], [ %133, %132 ]
  %107 = load ptr, ptr %106, align 8, !tbaa !46
  br label %108

108:                                              ; preds = %105, %88
  %109 = phi ptr [ null, %88 ], [ %107, %105 ]
  %110 = load i64, ptr %109, align 8
  %111 = trunc i64 %110 to i16
  switch i16 %111, label %134 [
    i16 116, label %112
    i16 113, label %112
  ]

112:                                              ; preds = %108, %108
  %113 = getelementptr inbounds %struct.tree_common, ptr %109, i64 0, i32 2
  %114 = load ptr, ptr %113, align 8, !tbaa !46
  %115 = icmp eq ptr %114, null
  br i1 %115, label %132, label %116

116:                                              ; preds = %112
  %117 = load i64, ptr %114, align 8
  %118 = trunc i64 %117 to i16
  switch i16 %118, label %132 [
    i16 10, label %119
    i16 12, label %119
  ]

119:                                              ; preds = %116, %116
  br label %120

120:                                              ; preds = %119, %125
  %121 = phi ptr [ %126, %125 ], [ %113, %119 ]
  %122 = load ptr, ptr %121, align 8, !tbaa !46
  %123 = load i64, ptr %122, align 8
  %124 = trunc i64 %123 to i16
  switch i16 %124, label %132 [
    i16 10, label %125
    i16 12, label %125
    i16 14, label %127
  ]

125:                                              ; preds = %120, %120
  %126 = getelementptr inbounds %struct.tree_common, ptr %122, i64 0, i32 2
  br label %120, !llvm.loop !84

127:                                              ; preds = %120
  %128 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %129 = icmp eq ptr %128, null
  br i1 %129, label %398, label %130

130:                                              ; preds = %127
  %131 = tail call i64 @fwrite(ptr nonnull @.str.1, i64 40, i64 1, ptr nonnull %128)
  br label %398

132:                                              ; preds = %120, %116, %112
  %133 = getelementptr inbounds %struct.tree_exp, ptr %109, i64 0, i32 3
  br label %105, !llvm.loop !85

134:                                              ; preds = %108, %87, %52, %58
  %135 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %53, i64 0, i32 2
  %136 = load ptr, ptr %135, align 8, !tbaa !86
  %137 = icmp eq ptr %136, null
  br i1 %137, label %25, label %52, !llvm.loop !87

138:                                              ; preds = %25, %13, %7
  %139 = getelementptr inbounds %struct.cgraph_node, ptr %8, i64 0, i32 3
  %140 = load ptr, ptr %139, align 8, !tbaa !35
  %141 = icmp eq ptr %140, null
  br i1 %141, label %142, label %7, !llvm.loop !88

142:                                              ; preds = %138, %0
  %143 = tail call ptr @htab_create(i64 noundef 37, ptr noundef nonnull @mtt_info_hash, ptr noundef nonnull @mtt_info_eq, ptr noundef nonnull @mat_free) #20
  store ptr %143, ptr @matrices_to_reorg, align 8, !tbaa !35
  %144 = icmp eq ptr %143, null
  br i1 %144, label %145, label %146

145:                                              ; preds = %142
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 566, ptr noundef nonnull @.str.3) #20
  br label %146

146:                                              ; preds = %145, %142
  %147 = load ptr, ptr @varpool_nodes_queue, align 8, !tbaa !35
  %148 = icmp eq ptr %147, null
  br i1 %148, label %149, label %152

149:                                              ; preds = %219, %146
  %150 = load ptr, ptr @cgraph_nodes, align 8, !tbaa !35
  %151 = icmp eq ptr %150, null
  br i1 %151, label %278, label %223

152:                                              ; preds = %146, %219
  %153 = phi ptr [ %221, %219 ], [ %147, %146 ]
  %154 = load ptr, ptr %153, align 8, !tbaa !89
  %155 = icmp eq ptr %154, null
  br i1 %155, label %219, label %156

156:                                              ; preds = %152
  %157 = load i64, ptr %154, align 8
  %158 = and i64 %157, 65535
  %159 = icmp ne i64 %158, 32
  %160 = load ptr, ptr @matrices_to_reorg, align 8
  %161 = icmp eq ptr %160, null
  %162 = select i1 %159, i1 true, i1 %161
  br i1 %162, label %219, label %163

163:                                              ; preds = %156
  call void @llvm.lifetime.start.p0(i64 112, ptr nonnull %2) #20
  %164 = load i64, ptr %154, align 8
  %165 = trunc i64 %164 to i16
  switch i16 %165, label %209 [
    i16 34, label %166
    i16 32, label %168
  ]

166:                                              ; preds = %163
  %167 = getelementptr inbounds %struct.tree_decl_common, ptr %154, i64 0, i32 5
  br label %170

168:                                              ; preds = %163
  %169 = getelementptr inbounds %struct.tree_common, ptr %154, i64 0, i32 2
  br label %170

170:                                              ; preds = %168, %166
  %171 = phi ptr [ %167, %166 ], [ %169, %168 ]
  %172 = load ptr, ptr %171, align 8, !tbaa !46
  %173 = load i64, ptr %172, align 8
  %174 = trunc i64 %173 to i16
  switch i16 %174, label %209 [
    i16 10, label %175
    i16 12, label %175
  ]

175:                                              ; preds = %170, %170
  br label %176

176:                                              ; preds = %175, %181
  %177 = phi ptr [ %183, %181 ], [ %172, %175 ]
  %178 = phi i32 [ %184, %181 ], [ 0, %175 ]
  %179 = load i64, ptr %177, align 8
  %180 = trunc i64 %179 to i16
  switch i16 %180, label %185 [
    i16 10, label %181
    i16 12, label %181
  ]

181:                                              ; preds = %176, %176
  %182 = getelementptr inbounds %struct.tree_common, ptr %177, i64 0, i32 2
  %183 = load ptr, ptr %182, align 8, !tbaa !46
  %184 = add nuw nsw i32 %178, 1
  br label %176, !llvm.loop !91

185:                                              ; preds = %176
  %186 = icmp ult i32 %178, 2
  br i1 %186, label %209, label %187

187:                                              ; preds = %185
  %188 = getelementptr inbounds %struct.tree_type, ptr %177, i64 0, i32 2
  %189 = load ptr, ptr %188, align 8, !tbaa !46
  %190 = icmp eq ptr %189, null
  br i1 %190, label %209, label %191

191:                                              ; preds = %187
  %192 = getelementptr inbounds %struct.tree_type, ptr %177, i64 0, i32 3
  %193 = load ptr, ptr %192, align 8, !tbaa !46
  %194 = load i64, ptr %193, align 8
  %195 = and i64 %194, 65535
  %196 = icmp eq i64 %195, 23
  br i1 %196, label %197, label %209

197:                                              ; preds = %191
  store ptr %154, ptr %2, align 8, !tbaa !92
  %198 = load ptr, ptr @matrices_to_reorg, align 8, !tbaa !35
  %199 = call ptr @htab_find(ptr noundef %198, ptr noundef nonnull %2) #20
  %200 = icmp eq ptr %199, null
  br i1 %200, label %201, label %209

201:                                              ; preds = %197
  %202 = call ptr @xcalloc(i64 noundef 1, i64 noundef 112) #20
  store ptr %154, ptr %202, align 8, !tbaa !92
  %203 = getelementptr inbounds %struct.matrix_info, ptr %202, i64 0, i32 1
  store i32 %178, ptr %203, align 8, !tbaa !94
  %204 = zext nneg i32 %178 to i64
  %205 = call ptr @xcalloc(i64 noundef %204, i64 noundef 16) #20
  %206 = getelementptr inbounds %struct.matrix_info, ptr %202, i64 0, i32 8
  store ptr %205, ptr %206, align 8, !tbaa !95
  %207 = getelementptr inbounds %struct.matrix_info, ptr %202, i64 0, i32 2
  store i32 -1, ptr %207, align 4, !tbaa !96
  %208 = getelementptr inbounds %struct.matrix_info, ptr %202, i64 0, i32 6
  store i8 0, ptr %208, align 4, !tbaa !97
  br label %209

209:                                              ; preds = %201, %197, %191, %187, %185, %170, %163
  %210 = phi ptr [ %202, %201 ], [ null, %163 ], [ null, %170 ], [ null, %185 ], [ null, %191 ], [ null, %187 ], [ null, %197 ]
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %2) #20
  %211 = icmp eq ptr %210, null
  br i1 %211, label %219, label %212

212:                                              ; preds = %209
  %213 = load i64, ptr %154, align 8
  %214 = and i64 %213, 262144
  %215 = icmp eq i64 %214, 0
  br i1 %215, label %216, label %219

216:                                              ; preds = %212
  %217 = load ptr, ptr @matrices_to_reorg, align 8, !tbaa !35
  %218 = call ptr @htab_find_slot(ptr noundef %217, ptr noundef nonnull %210, i32 noundef 1) #20
  store ptr %210, ptr %218, align 8, !tbaa !35
  br label %219

219:                                              ; preds = %216, %212, %209, %156, %152
  %220 = getelementptr inbounds %struct.varpool_node, ptr %153, i64 0, i32 2
  %221 = load ptr, ptr %220, align 8, !tbaa !35
  %222 = icmp eq ptr %221, null
  br i1 %222, label %149, label %152, !llvm.loop !98

223:                                              ; preds = %149, %274
  %224 = phi ptr [ %276, %274 ], [ %150, %149 ]
  %225 = getelementptr inbounds %struct.cgraph_node, ptr %224, i64 0, i32 27
  %226 = load i16, ptr %225, align 4
  %227 = and i16 %226, 32
  %228 = icmp eq i16 %227, 0
  br i1 %228, label %274, label %229

229:                                              ; preds = %223
  %230 = load ptr, ptr @current_function_decl, align 8, !tbaa !35
  %231 = load ptr, ptr %224, align 8, !tbaa !57
  store ptr %231, ptr @current_function_decl, align 8, !tbaa !35
  %232 = load ptr, ptr %224, align 8, !tbaa !57
  %233 = getelementptr inbounds %struct.tree_function_decl, ptr %232, i64 0, i32 1
  %234 = load ptr, ptr %233, align 8, !tbaa !46
  call void @push_cfun(ptr noundef %234) #20
  call void @bitmap_obstack_initialize(ptr noundef null) #20
  call void @gimple_register_cfg_hooks() #20
  %235 = load ptr, ptr @cfun, align 8, !tbaa !35
  %236 = icmp eq ptr %235, null
  br i1 %236, label %245, label %237

237:                                              ; preds = %229
  %238 = getelementptr inbounds %struct.function, ptr %235, i64 0, i32 3
  %239 = load ptr, ptr %238, align 8, !tbaa !99
  %240 = icmp eq ptr %239, null
  br i1 %240, label %245, label %241

241:                                              ; preds = %237
  %242 = getelementptr inbounds %struct.gimple_df, ptr %239, i64 0, i32 10
  %243 = load i8, ptr %242, align 8
  %244 = and i8 %243, 1
  br label %245

245:                                              ; preds = %229, %237, %241
  %246 = phi i8 [ 0, %237 ], [ 0, %229 ], [ %244, %241 ]
  %247 = icmp eq i8 %246, 0
  br i1 %247, label %248, label %249

248:                                              ; preds = %245
  call void @free_dominance_info(i32 noundef 1) #20
  call void @free_dominance_info(i32 noundef 2) #20
  call void @pop_cfun() #20
  store ptr %230, ptr @current_function_decl, align 8, !tbaa !35
  call void @bitmap_obstack_release(ptr noundef null) #20
  br label %398

249:                                              ; preds = %245
  %250 = load ptr, ptr @matrices_to_reorg, align 8, !tbaa !35
  %251 = icmp eq ptr %250, null
  br i1 %251, label %252, label %253

252:                                              ; preds = %249
  call void @free_dominance_info(i32 noundef 1) #20
  call void @free_dominance_info(i32 noundef 2) #20
  call void @pop_cfun() #20
  store ptr %230, ptr @current_function_decl, align 8, !tbaa !35
  call void @bitmap_obstack_release(ptr noundef null) #20
  br label %398

253:                                              ; preds = %249
  %254 = call ptr @htab_create(i64 noundef 37, ptr noundef nonnull @mat_acc_phi_hash, ptr noundef nonnull @mat_acc_phi_eq, ptr noundef nonnull @free) #20
  store ptr %254, ptr @htab_mat_acc_phi_nodes, align 8, !tbaa !35
  %255 = load i1, ptr @check_transpose_p, align 1
  br i1 %255, label %257, label %256

256:                                              ; preds = %253
  call fastcc void @find_sites_in_func(i8 noundef zeroext 0)
  br label %272

257:                                              ; preds = %253
  call fastcc void @find_sites_in_func(i8 noundef zeroext 1)
  call void @loop_optimizer_init(i32 noundef 7) #20
  %258 = load ptr, ptr @cfun, align 8, !tbaa !35
  %259 = getelementptr inbounds %struct.function, ptr %258, i64 0, i32 4
  %260 = load ptr, ptr %259, align 8, !tbaa !100
  %261 = icmp eq ptr %260, null
  br i1 %261, label %263, label %262

262:                                              ; preds = %257
  call void @scev_initialize() #20
  br label %263

263:                                              ; preds = %262, %257
  %264 = load ptr, ptr @matrices_to_reorg, align 8, !tbaa !35
  call void @htab_traverse(ptr noundef %264, ptr noundef nonnull @analyze_transpose, ptr noundef null) #20
  %265 = load ptr, ptr @cfun, align 8, !tbaa !35
  %266 = getelementptr inbounds %struct.function, ptr %265, i64 0, i32 4
  %267 = load ptr, ptr %266, align 8, !tbaa !100
  %268 = icmp eq ptr %267, null
  br i1 %268, label %272, label %269

269:                                              ; preds = %263
  call void @scev_finalize() #20
  call void @loop_optimizer_finalize() #20
  %270 = load ptr, ptr @cfun, align 8, !tbaa !35
  %271 = getelementptr inbounds %struct.function, ptr %270, i64 0, i32 4
  store ptr null, ptr %271, align 8, !tbaa !100
  br label %272

272:                                              ; preds = %263, %269, %256
  %273 = load ptr, ptr @matrices_to_reorg, align 8, !tbaa !35
  call void @htab_traverse(ptr noundef %273, ptr noundef nonnull @check_allocation_function, ptr noundef null) #20
  call void @free_dominance_info(i32 noundef 1) #20
  call void @free_dominance_info(i32 noundef 2) #20
  call void @pop_cfun() #20
  store ptr %230, ptr @current_function_decl, align 8, !tbaa !35
  call void @bitmap_obstack_release(ptr noundef null) #20
  br label %274

274:                                              ; preds = %272, %223
  %275 = getelementptr inbounds %struct.cgraph_node, ptr %224, i64 0, i32 3
  %276 = load ptr, ptr %275, align 8, !tbaa !35
  %277 = icmp eq ptr %276, null
  br i1 %277, label %278, label %223, !llvm.loop !101

278:                                              ; preds = %274, %149
  %279 = load ptr, ptr @matrices_to_reorg, align 8, !tbaa !35
  call void @htab_traverse(ptr noundef %279, ptr noundef nonnull @transform_allocation_sites, ptr noundef null) #20
  %280 = load ptr, ptr @cgraph_nodes, align 8, !tbaa !35
  %281 = icmp eq ptr %280, null
  br i1 %281, label %396, label %282

282:                                              ; preds = %278, %392
  %283 = phi ptr [ %394, %392 ], [ %280, %278 ]
  %284 = getelementptr inbounds %struct.cgraph_node, ptr %283, i64 0, i32 27
  %285 = load i16, ptr %284, align 4
  %286 = and i16 %285, 32
  %287 = icmp eq i16 %286, 0
  br i1 %287, label %392, label %288

288:                                              ; preds = %282
  %289 = load ptr, ptr @current_function_decl, align 8, !tbaa !35
  %290 = load ptr, ptr %283, align 8, !tbaa !57
  store ptr %290, ptr @current_function_decl, align 8, !tbaa !35
  %291 = load ptr, ptr %283, align 8, !tbaa !57
  %292 = getelementptr inbounds %struct.tree_function_decl, ptr %291, i64 0, i32 1
  %293 = load ptr, ptr %292, align 8, !tbaa !46
  call void @push_cfun(ptr noundef %293) #20
  call void @bitmap_obstack_initialize(ptr noundef null) #20
  call void @gimple_register_cfg_hooks() #20
  %294 = load ptr, ptr @cfun, align 8, !tbaa !35
  %295 = getelementptr inbounds %struct.function, ptr %294, i64 0, i32 3
  %296 = load ptr, ptr %295, align 8, !tbaa !99
  %297 = getelementptr inbounds %struct.gimple_df, ptr %296, i64 0, i32 2
  %298 = load ptr, ptr %297, align 8, !tbaa !102
  %299 = icmp eq ptr %298, null
  br i1 %299, label %302, label %300

300:                                              ; preds = %288
  %301 = load i32, ptr %298, align 8, !tbaa !106
  br label %302

302:                                              ; preds = %300, %288
  %303 = phi i32 [ %301, %300 ], [ 0, %288 ]
  %304 = call ptr @sbitmap_alloc(i32 noundef %303) #20
  br label %305

305:                                              ; preds = %387, %302
  %306 = phi i64 [ %388, %387 ], [ 0, %302 ]
  %307 = load ptr, ptr @cfun, align 8, !tbaa !35
  %308 = getelementptr inbounds %struct.function, ptr %307, i64 0, i32 3
  %309 = load ptr, ptr %308, align 8, !tbaa !99
  %310 = getelementptr inbounds %struct.gimple_df, ptr %309, i64 0, i32 2
  %311 = load ptr, ptr %310, align 8, !tbaa !102
  %312 = icmp eq ptr %311, null
  br i1 %312, label %315, label %313

313:                                              ; preds = %305
  %314 = load i32, ptr %311, align 8, !tbaa !106
  br label %315

315:                                              ; preds = %313, %305
  %316 = phi i32 [ %314, %313 ], [ 0, %305 ]
  %317 = zext i32 %316 to i64
  %318 = icmp ult i64 %306, %317
  br i1 %318, label %319, label %389

319:                                              ; preds = %315
  call void @llvm.lifetime.start.p0(i64 112, ptr nonnull %1) #20
  %320 = load ptr, ptr %308, align 8, !tbaa !99
  %321 = getelementptr inbounds %struct.gimple_df, ptr %320, i64 0, i32 2
  %322 = load ptr, ptr %321, align 8, !tbaa !102
  %323 = getelementptr inbounds %struct.VEC_tree_base, ptr %322, i64 0, i32 2, i64 %306
  %324 = load ptr, ptr %323, align 8, !tbaa !35
  %325 = icmp eq ptr %324, null
  br i1 %325, label %387, label %326

326:                                              ; preds = %319
  %327 = getelementptr inbounds %struct.tree_ssa_name, ptr %324, i64 0, i32 2
  %328 = load ptr, ptr %327, align 8, !tbaa !46
  %329 = load i32, ptr %328, align 8
  %330 = and i32 %329, 255
  %331 = icmp eq i32 %330, 6
  br i1 %331, label %332, label %387

332:                                              ; preds = %326
  %333 = call zeroext i8 @gimple_assign_single_p(ptr noundef nonnull %328) #20
  %334 = icmp eq i8 %333, 0
  br i1 %334, label %387, label %335

335:                                              ; preds = %332
  %336 = load ptr, ptr %327, align 8, !tbaa !46
  %337 = load i32, ptr %336, align 8
  %338 = and i32 %337, 255
  %339 = add nsw i32 %338, -10
  %340 = icmp ult i32 %339, -9
  br i1 %340, label %354, label %341

341:                                              ; preds = %335
  %342 = zext nneg i32 %338 to i64
  %343 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %342
  %344 = load i32, ptr %343, align 4, !tbaa !50
  %345 = zext i32 %344 to i64
  %346 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %345
  %347 = load i64, ptr %346, align 8, !tbaa !83
  %348 = icmp eq i64 %347, 0
  br i1 %348, label %349, label %350

349:                                              ; preds = %341
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1622, ptr noundef nonnull @.str.3) #20
  br label %350

350:                                              ; preds = %349, %341
  %351 = getelementptr inbounds i8, ptr %336, i64 %347
  %352 = getelementptr inbounds ptr, ptr %351, i64 1
  %353 = load ptr, ptr %352, align 8, !tbaa !35
  br label %354

354:                                              ; preds = %350, %335
  %355 = phi ptr [ %353, %350 ], [ null, %335 ]
  %356 = load ptr, ptr %327, align 8, !tbaa !46
  %357 = load i32, ptr %356, align 8
  %358 = and i32 %357, 255
  %359 = add nsw i32 %358, -10
  %360 = icmp ult i32 %359, -9
  br i1 %360, label %373, label %361

361:                                              ; preds = %354
  %362 = zext nneg i32 %358 to i64
  %363 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %362
  %364 = load i32, ptr %363, align 4, !tbaa !50
  %365 = zext i32 %364 to i64
  %366 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %365
  %367 = load i64, ptr %366, align 8, !tbaa !83
  %368 = icmp eq i64 %367, 0
  br i1 %368, label %369, label %370

369:                                              ; preds = %361
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1622, ptr noundef nonnull @.str.3) #20
  br label %370

370:                                              ; preds = %369, %361
  %371 = getelementptr inbounds i8, ptr %356, i64 %367
  %372 = load ptr, ptr %371, align 8, !tbaa !35
  br label %373

373:                                              ; preds = %370, %354
  %374 = phi ptr [ %372, %370 ], [ null, %354 ]
  %375 = load i64, ptr %355, align 8
  %376 = and i64 %375, 65535
  %377 = icmp eq i64 %376, 32
  br i1 %377, label %382, label %378

378:                                              ; preds = %373
  %379 = load i64, ptr %374, align 8
  %380 = and i64 %379, 65535
  %381 = icmp eq i64 %380, 32
  br i1 %381, label %382, label %387

382:                                              ; preds = %378, %373
  store ptr %355, ptr %1, align 8, !tbaa !92
  %383 = load ptr, ptr @matrices_to_reorg, align 8, !tbaa !35
  %384 = call ptr @htab_find(ptr noundef %383, ptr noundef nonnull %1) #20
  %385 = icmp eq ptr %384, null
  br i1 %385, label %387, label %386

386:                                              ; preds = %382
  call void @sbitmap_zero(ptr noundef %304) #20
  call fastcc void @analyze_matrix_accesses(ptr noundef nonnull %384, ptr noundef nonnull %324, i32 noundef 0, i8 noundef zeroext 0, ptr noundef %304, i8 noundef zeroext 1)
  br label %387

387:                                              ; preds = %378, %386, %382, %332, %326, %319
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %1) #20
  %388 = add nuw nsw i64 %306, 1
  br label %305, !llvm.loop !108

389:                                              ; preds = %315
  %390 = load ptr, ptr %304, align 8, !tbaa !109
  call void @free(ptr noundef %390)
  call void @free(ptr noundef %304)
  %391 = load ptr, ptr @matrices_to_reorg, align 8, !tbaa !35
  call void @htab_traverse(ptr noundef %391, ptr noundef nonnull @transform_access_sites, ptr noundef null) #20
  call void @free_dominance_info(i32 noundef 1) #20
  call void @free_dominance_info(i32 noundef 2) #20
  call void @pop_cfun() #20
  store ptr %289, ptr @current_function_decl, align 8, !tbaa !35
  call void @bitmap_obstack_release(ptr noundef null) #20
  br label %392

392:                                              ; preds = %282, %389
  %393 = getelementptr inbounds %struct.cgraph_node, ptr %283, i64 0, i32 3
  %394 = load ptr, ptr %393, align 8, !tbaa !35
  %395 = icmp eq ptr %394, null
  br i1 %395, label %396, label %282, !llvm.loop !111

396:                                              ; preds = %392, %278
  %397 = load ptr, ptr @matrices_to_reorg, align 8, !tbaa !35
  call void @htab_traverse(ptr noundef %397, ptr noundef nonnull @dump_matrix_reorg_analysis, ptr noundef null) #20
  store ptr null, ptr @current_function_decl, align 8, !tbaa !35
  call void @set_cfun(ptr noundef null) #20
  store ptr null, ptr @matrices_to_reorg, align 8, !tbaa !35
  br label %398

398:                                              ; preds = %52, %130, %127, %248, %252, %396
  ret i32 0
}

declare ptr @htab_create(i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal i32 @mtt_info_hash(ptr nocapture noundef readonly %0) #10 !prof !34 {
  %2 = load ptr, ptr @htab_hash_pointer, align 8, !tbaa !35
  %3 = load ptr, ptr %0, align 8, !tbaa !92
  %4 = tail call i32 %2(ptr noundef %3) #20
  ret i32 %4
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal i32 @mtt_info_eq(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #11 !prof !34 {
  %3 = load ptr, ptr %0, align 8, !tbaa !92
  %4 = load ptr, ptr %1, align 8, !tbaa !92
  %5 = icmp eq ptr %3, %4
  %6 = zext i1 %5 to i32
  ret i32 %6
}

; Function Attrs: cold mustprogress nounwind willreturn uwtable
define internal void @mat_free(ptr noundef readonly %0) #12 !prof !34 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %18, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.matrix_info, ptr %0, i64 0, i32 8
  %5 = load ptr, ptr %4, align 8, !tbaa !95
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %3
  tail call void @free(ptr noundef %5)
  br label %8

8:                                                ; preds = %7, %3
  %9 = getelementptr inbounds %struct.matrix_info, ptr %0, i64 0, i32 13
  %10 = load ptr, ptr %9, align 8, !tbaa !112
  %11 = icmp eq ptr %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %8
  tail call void @free(ptr noundef %10)
  br label %13

13:                                               ; preds = %12, %8
  %14 = getelementptr inbounds %struct.matrix_info, ptr %0, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !113
  %16 = icmp eq ptr %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %13
  tail call void @free(ptr noundef %15)
  br label %18

18:                                               ; preds = %13, %17, %1
  ret void
}

declare void @push_cfun(ptr noundef) local_unnamed_addr #3

declare void @bitmap_obstack_initialize(ptr noundef) local_unnamed_addr #3

declare void @gimple_register_cfg_hooks() local_unnamed_addr #3

declare void @free_dominance_info(i32 noundef) local_unnamed_addr #3

declare void @pop_cfun() local_unnamed_addr #3

declare void @bitmap_obstack_release(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal i32 @mat_acc_phi_hash(ptr nocapture noundef readonly %0) #10 !prof !34 {
  %2 = load ptr, ptr @htab_hash_pointer, align 8, !tbaa !35
  %3 = load ptr, ptr %0, align 8, !tbaa !114
  %4 = tail call i32 %2(ptr noundef %3) #20
  ret i32 %4
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal i32 @mat_acc_phi_eq(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #11 !prof !34 {
  %3 = load ptr, ptr %0, align 8, !tbaa !114
  %4 = load ptr, ptr %1, align 8, !tbaa !114
  %5 = icmp eq ptr %3, %4
  %6 = zext i1 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) #13

; Function Attrs: cold nounwind uwtable
define internal fastcc void @find_sites_in_func(i8 noundef zeroext %0) unnamed_addr #10 !prof !34 {
  %2 = alloca %struct.matrix_info, align 8
  call void @llvm.lifetime.start.p0(i64 112, ptr nonnull %2) #20
  %3 = load ptr, ptr @cfun, align 8, !tbaa !35
  %4 = getelementptr inbounds %struct.function, ptr %3, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !99
  %6 = getelementptr inbounds %struct.gimple_df, ptr %5, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !102
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %1
  %10 = load i32, ptr %7, align 8, !tbaa !106
  br label %11

11:                                               ; preds = %1, %9
  %12 = phi i32 [ %10, %9 ], [ 0, %1 ]
  %13 = tail call ptr @sbitmap_alloc(i32 noundef %12) #20
  %14 = load ptr, ptr @cfun, align 8, !tbaa !35
  %15 = getelementptr inbounds %struct.function, ptr %14, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !65
  %17 = load ptr, ptr %16, align 8, !tbaa !67
  %18 = getelementptr inbounds %struct.basic_block_def, ptr %17, i64 0, i32 6
  %19 = load ptr, ptr %18, align 8, !tbaa !69
  %20 = getelementptr inbounds %struct.control_flow_graph, ptr %16, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !71
  %22 = icmp eq ptr %19, %21
  br i1 %22, label %125, label %32

23:                                               ; preds = %121, %49
  %24 = getelementptr inbounds %struct.basic_block_def, ptr %33, i64 0, i32 6
  %25 = load ptr, ptr %24, align 8, !tbaa !69
  %26 = load ptr, ptr @cfun, align 8, !tbaa !35
  %27 = getelementptr inbounds %struct.function, ptr %26, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !65
  %29 = getelementptr inbounds %struct.control_flow_graph, ptr %28, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !71
  %31 = icmp eq ptr %25, %30
  br i1 %31, label %125, label %32, !llvm.loop !116

32:                                               ; preds = %11, %23
  %33 = phi ptr [ %25, %23 ], [ %19, %11 ]
  %34 = getelementptr inbounds %struct.basic_block_def, ptr %33, i64 0, i32 13
  %35 = load i32, ptr %34, align 8, !tbaa !73, !noalias !117
  %36 = and i32 %35, 512
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %32
  %39 = getelementptr inbounds %struct.basic_block_def, ptr %33, i64 0, i32 7
  %40 = load ptr, ptr %39, align 8, !tbaa !46, !noalias !117
  %41 = icmp eq ptr %40, null
  br i1 %41, label %44, label %42

42:                                               ; preds = %38
  %43 = load ptr, ptr %40, align 8, !tbaa !77, !noalias !117
  br label %44

44:                                               ; preds = %42, %38, %32
  %45 = phi ptr [ %43, %42 ], [ null, %38 ], [ null, %32 ]
  %46 = icmp eq ptr %45, null
  br i1 %46, label %49, label %47

47:                                               ; preds = %44
  %48 = load ptr, ptr %45, align 8, !tbaa !79, !noalias !117
  br label %49

49:                                               ; preds = %44, %47
  %50 = phi ptr [ %48, %47 ], [ null, %44 ]
  %51 = icmp eq ptr %50, null
  br i1 %51, label %23, label %52

52:                                               ; preds = %49, %121
  %53 = phi ptr [ %123, %121 ], [ %50, %49 ]
  %54 = load ptr, ptr %53, align 8, !tbaa !81
  %55 = call ptr @gimple_get_lhs(ptr noundef %54) #20
  %56 = icmp eq ptr %55, null
  br i1 %56, label %66, label %57

57:                                               ; preds = %52
  %58 = load i64, ptr %55, align 8
  %59 = and i64 %58, 65535
  %60 = icmp eq i64 %59, 32
  br i1 %60, label %61, label %66

61:                                               ; preds = %57
  store ptr %55, ptr %2, align 8, !tbaa !92
  %62 = load ptr, ptr @matrices_to_reorg, align 8, !tbaa !35
  %63 = call ptr @htab_find(ptr noundef %62, ptr noundef nonnull %2) #20
  %64 = icmp eq ptr %63, null
  br i1 %64, label %66, label %65

65:                                               ; preds = %61
  call void @sbitmap_zero(ptr noundef %13) #20
  call fastcc void @analyze_matrix_allocation_site(ptr noundef nonnull %63, ptr noundef %54, i32 noundef 0)
  br label %66

66:                                               ; preds = %61, %65, %57, %52
  %67 = load i32, ptr %54, align 8
  %68 = and i32 %67, 255
  %69 = icmp eq i32 %68, 6
  br i1 %69, label %70, label %121

70:                                               ; preds = %66
  %71 = call zeroext i8 @gimple_assign_single_p(ptr noundef nonnull %54) #20
  %72 = icmp eq i8 %71, 0
  br i1 %72, label %121, label %73

73:                                               ; preds = %70
  %74 = load i64, ptr %55, align 8
  %75 = and i64 %74, 65535
  %76 = icmp eq i64 %75, 141
  br i1 %76, label %77, label %121

77:                                               ; preds = %73
  %78 = load i32, ptr %54, align 8
  %79 = and i32 %78, 255
  %80 = add nsw i32 %79, -1
  %81 = icmp ult i32 %80, 9
  call void @llvm.assume(i1 %81)
  %82 = zext nneg i32 %79 to i64
  %83 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %82
  %84 = load i32, ptr %83, align 4, !tbaa !50
  %85 = zext i32 %84 to i64
  %86 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %85
  %87 = load i64, ptr %86, align 8, !tbaa !83
  %88 = icmp eq i64 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %77
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1622, ptr noundef nonnull @.str.3) #20
  br label %90

90:                                               ; preds = %89, %77
  %91 = getelementptr inbounds i8, ptr %54, i64 %87
  %92 = getelementptr inbounds ptr, ptr %91, i64 1
  %93 = load ptr, ptr %92, align 8, !tbaa !35
  %94 = load i64, ptr %93, align 8
  %95 = and i64 %94, 65535
  %96 = icmp eq i64 %95, 32
  br i1 %96, label %97, label %121

97:                                               ; preds = %90
  %98 = load i32, ptr %54, align 8
  %99 = and i32 %98, 255
  %100 = add nsw i32 %99, -10
  %101 = icmp ult i32 %100, -9
  br i1 %101, label %115, label %102

102:                                              ; preds = %97
  %103 = zext nneg i32 %99 to i64
  %104 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %103
  %105 = load i32, ptr %104, align 4, !tbaa !50
  %106 = zext i32 %105 to i64
  %107 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %106
  %108 = load i64, ptr %107, align 8, !tbaa !83
  %109 = icmp eq i64 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %102
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1622, ptr noundef nonnull @.str.3) #20
  br label %111

111:                                              ; preds = %110, %102
  %112 = getelementptr inbounds i8, ptr %54, i64 %108
  %113 = getelementptr inbounds ptr, ptr %112, i64 1
  %114 = load ptr, ptr %113, align 8, !tbaa !35
  br label %115

115:                                              ; preds = %97, %111
  %116 = phi ptr [ %114, %111 ], [ null, %97 ]
  store ptr %116, ptr %2, align 8, !tbaa !92
  %117 = load ptr, ptr @matrices_to_reorg, align 8, !tbaa !35
  %118 = call ptr @htab_find(ptr noundef %117, ptr noundef nonnull %2) #20
  %119 = icmp eq ptr %118, null
  br i1 %119, label %121, label %120

120:                                              ; preds = %115
  call void @sbitmap_zero(ptr noundef %13) #20
  call fastcc void @analyze_matrix_accesses(ptr noundef nonnull %118, ptr noundef nonnull %55, i32 noundef 0, i8 noundef zeroext 0, ptr noundef %13, i8 noundef zeroext %0)
  br label %121

121:                                              ; preds = %115, %120, %90, %73, %70, %66
  %122 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %53, i64 0, i32 2
  %123 = load ptr, ptr %122, align 8, !tbaa !86
  %124 = icmp eq ptr %123, null
  br i1 %124, label %23, label %52, !llvm.loop !120

125:                                              ; preds = %23, %11
  %126 = load ptr, ptr %13, align 8, !tbaa !109
  call void @free(ptr noundef %126)
  call void @free(ptr noundef %13)
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %2) #20
  ret void
}

declare void @loop_optimizer_init(i32 noundef) local_unnamed_addr #3

declare void @scev_initialize() local_unnamed_addr #3

declare void @htab_traverse(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal noundef i32 @analyze_transpose(ptr nocapture noundef readonly %0, ptr nocapture readnone %1) #10 !prof !34 {
  %3 = alloca %struct.affine_iv, align 8
  %4 = load ptr, ptr %0, align 8, !tbaa !35
  %5 = getelementptr inbounds %struct.matrix_info, ptr %4, i64 0, i32 2
  %6 = load i32, ptr %5, align 4, !tbaa !96
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #20
  %7 = icmp slt i32 %6, 2
  br i1 %7, label %12, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.matrix_info, ptr %4, i64 0, i32 14
  %10 = load ptr, ptr %9, align 8, !tbaa !121
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %33

12:                                               ; preds = %8, %2
  %13 = getelementptr inbounds %struct.matrix_info, ptr %4, i64 0, i32 14
  %14 = load ptr, ptr %13, align 8, !tbaa !121
  %15 = icmp eq ptr %14, null
  br i1 %15, label %143, label %16

16:                                               ; preds = %12, %30
  %17 = phi i64 [ %31, %30 ], [ 0, %12 ]
  %18 = load ptr, ptr %13, align 8, !tbaa !35
  %19 = icmp eq ptr %18, null
  br i1 %19, label %27, label %20

20:                                               ; preds = %16
  %21 = load i32, ptr %18, align 8, !tbaa !122
  %22 = zext i32 %21 to i64
  %23 = icmp ult i64 %17, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.VEC_access_site_info_p_base, ptr %18, i64 0, i32 2, i64 %17
  %26 = load ptr, ptr %25, align 8, !tbaa !35
  br label %27

27:                                               ; preds = %16, %20, %24
  %28 = phi ptr [ %26, %24 ], [ null, %20 ], [ null, %16 ]
  %29 = phi i1 [ false, %24 ], [ true, %20 ], [ true, %16 ]
  br i1 %29, label %32, label %30

30:                                               ; preds = %27
  tail call void @free(ptr noundef %28)
  %31 = add nuw i64 %17, 1
  br label %16, !llvm.loop !124

32:                                               ; preds = %27
  br i1 %19, label %141, label %138

33:                                               ; preds = %8
  %34 = getelementptr inbounds %struct.matrix_info, ptr %4, i64 0, i32 13
  %35 = load ptr, ptr %34, align 8, !tbaa !112
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %40

37:                                               ; preds = %33
  %38 = zext nneg i32 %6 to i64
  %39 = tail call ptr @xcalloc(i64 noundef %38, i64 noundef 8) #20
  store ptr %39, ptr %34, align 8, !tbaa !112
  br label %40

40:                                               ; preds = %37, %33
  %41 = getelementptr inbounds %struct.affine_iv, ptr %3, i64 0, i32 1
  br label %42

42:                                               ; preds = %135, %40
  %43 = phi i64 [ %136, %135 ], [ 0, %40 ]
  %44 = load ptr, ptr %9, align 8, !tbaa !35
  %45 = icmp eq ptr %44, null
  br i1 %45, label %53, label %46

46:                                               ; preds = %42
  %47 = load i32, ptr %44, align 8, !tbaa !122
  %48 = zext i32 %47 to i64
  %49 = icmp ult i64 %43, %48
  br i1 %49, label %50, label %53

50:                                               ; preds = %46
  %51 = getelementptr inbounds %struct.VEC_access_site_info_p_base, ptr %44, i64 0, i32 2, i64 %43
  %52 = load ptr, ptr %51, align 8, !tbaa !35
  br label %53

53:                                               ; preds = %42, %46, %50
  %54 = phi ptr [ %52, %50 ], [ null, %46 ], [ null, %42 ]
  %55 = phi i1 [ false, %50 ], [ true, %46 ], [ true, %42 ]
  br i1 %55, label %137, label %56

56:                                               ; preds = %53
  %57 = load ptr, ptr %54, align 8, !tbaa !125
  %58 = load i32, ptr %57, align 8
  %59 = trunc i32 %58 to i8
  switch i8 %59, label %62 [
    i8 6, label %60
    i8 1, label %60
    i8 8, label %63
  ]

60:                                               ; preds = %56, %56
  %61 = lshr i32 %58, 16
  br label %63

62:                                               ; preds = %56
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1446, ptr noundef nonnull @.str.3) #20
  br label %63

63:                                               ; preds = %62, %60, %56
  %64 = phi i32 [ %61, %60 ], [ 0, %62 ], [ 59, %56 ]
  %65 = zext nneg i32 %64 to i64
  %66 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %65
  %67 = load i8, ptr %66, align 1, !tbaa !46
  %68 = icmp eq i8 %67, 3
  br i1 %68, label %69, label %89

69:                                               ; preds = %63
  %70 = load i32, ptr %57, align 8
  %71 = and i32 %70, 255
  %72 = add nsw i32 %71, -1
  %73 = icmp ult i32 %72, 9
  call void @llvm.assume(i1 %73)
  %74 = zext nneg i32 %71 to i64
  %75 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %74
  %76 = load i32, ptr %75, align 4, !tbaa !50
  %77 = zext i32 %76 to i64
  %78 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %77
  %79 = load i64, ptr %78, align 8, !tbaa !83
  %80 = icmp eq i64 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %69
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1622, ptr noundef nonnull @.str.3) #20
  br label %82

82:                                               ; preds = %81, %69
  %83 = getelementptr inbounds i8, ptr %57, i64 %79
  %84 = getelementptr inbounds ptr, ptr %83, i64 1
  %85 = load ptr, ptr %84, align 8, !tbaa !35
  %86 = load i64, ptr %85, align 8
  %87 = trunc i64 %86 to i32
  %88 = and i32 %87, 65535
  br label %89

89:                                               ; preds = %63, %82
  %90 = phi i32 [ %88, %82 ], [ %64, %63 ]
  %91 = icmp eq i32 %90, 66
  br i1 %91, label %92, label %135

92:                                               ; preds = %89
  %93 = getelementptr inbounds %struct.access_site_info, ptr %54, i64 0, i32 3
  %94 = load i32, ptr %93, align 8, !tbaa !127
  %95 = icmp slt i32 %94, %6
  br i1 %95, label %96, label %135

96:                                               ; preds = %92
  %97 = load ptr, ptr %54, align 8, !tbaa !125
  %98 = getelementptr inbounds %struct.gimple_statement_base, ptr %97, i64 0, i32 4
  %99 = load ptr, ptr %98, align 8, !tbaa !46
  %100 = icmp eq ptr %99, null
  br i1 %100, label %104, label %101

101:                                              ; preds = %96
  %102 = getelementptr inbounds %struct.basic_block_def, ptr %99, i64 0, i32 3
  %103 = load ptr, ptr %102, align 8, !tbaa !128
  br label %104

104:                                              ; preds = %96, %101
  %105 = phi ptr [ %103, %101 ], [ null, %96 ]
  %106 = icmp eq ptr %105, null
  br i1 %106, label %135, label %107

107:                                              ; preds = %104
  %108 = getelementptr inbounds %struct.loop, ptr %105, i64 0, i32 8
  %109 = load ptr, ptr %108, align 8, !tbaa !129
  %110 = icmp eq ptr %109, null
  br i1 %110, label %111, label %135

111:                                              ; preds = %107
  %112 = getelementptr inbounds %struct.access_site_info, ptr %54, i64 0, i32 1
  %113 = load ptr, ptr %112, align 8, !tbaa !133
  %114 = call zeroext i8 @simple_iv(ptr noundef nonnull %105, ptr noundef nonnull %105, ptr noundef %113, ptr noundef nonnull %3, i8 noundef zeroext 1) #20
  %115 = icmp ne i8 %114, 0
  %116 = load ptr, ptr %41, align 8
  %117 = icmp ne ptr %116, null
  %118 = select i1 %115, i1 %117, i1 false
  br i1 %118, label %119, label %135

119:                                              ; preds = %111
  %120 = call i64 @int_cst_value(ptr noundef nonnull %116) #20
  %121 = icmp eq i64 %120, 0
  br i1 %121, label %135, label %122

122:                                              ; preds = %119
  %123 = getelementptr inbounds %struct.access_site_info, ptr %54, i64 0, i32 6
  store i8 1, ptr %123, align 8, !tbaa !134
  %124 = load ptr, ptr %54, align 8, !tbaa !125
  %125 = getelementptr inbounds %struct.gimple_statement_base, ptr %124, i64 0, i32 4
  %126 = load ptr, ptr %125, align 8, !tbaa !46
  %127 = getelementptr inbounds %struct.basic_block_def, ptr %126, i64 0, i32 8
  %128 = load i64, ptr %127, align 8, !tbaa !135
  %129 = load ptr, ptr %34, align 8, !tbaa !112
  %130 = load i32, ptr %93, align 8, !tbaa !127
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i64, ptr %129, i64 %131
  %133 = load i64, ptr %132, align 8, !tbaa !83
  %134 = add nsw i64 %133, %128
  store i64 %134, ptr %132, align 8, !tbaa !83
  br label %135

135:                                              ; preds = %89, %92, %111, %122, %119, %104, %107
  call void @free(ptr noundef %54)
  %136 = add nuw i64 %43, 1
  br label %42, !llvm.loop !136

137:                                              ; preds = %53
  br i1 %45, label %141, label %138

138:                                              ; preds = %137, %32
  %139 = phi ptr [ %18, %32 ], [ %44, %137 ]
  %140 = phi ptr [ %13, %32 ], [ %9, %137 ]
  call void @free(ptr noundef %139)
  br label %141

141:                                              ; preds = %138, %137, %32
  %142 = phi ptr [ %13, %32 ], [ %9, %137 ], [ %140, %138 ]
  store ptr null, ptr %142, align 8, !tbaa !35
  br label %143

143:                                              ; preds = %141, %12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #20
  ret i32 1
}

declare void @scev_finalize() local_unnamed_addr #3

declare void @loop_optimizer_finalize() local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal noundef i32 @check_allocation_function(ptr nocapture noundef readonly %0, ptr nocapture readnone %1) #10 !prof !34 {
  %3 = alloca %struct.malloc_call_data, align 8
  %4 = load ptr, ptr %0, align 8, !tbaa !35
  %5 = getelementptr inbounds %struct.matrix_info, ptr %4, i64 0, i32 4
  %6 = load ptr, ptr %5, align 8, !tbaa !113
  %7 = icmp eq ptr %6, null
  br i1 %7, label %133, label %8

8:                                                ; preds = %2
  %9 = load ptr, ptr @cfun, align 8, !tbaa !35
  %10 = getelementptr inbounds %struct.function, ptr %9, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !99
  %12 = getelementptr inbounds %struct.gimple_df, ptr %11, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !102
  %14 = icmp eq ptr %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %8
  %16 = load i32, ptr %13, align 8, !tbaa !106
  br label %17

17:                                               ; preds = %8, %15
  %18 = phi i32 [ %16, %15 ], [ 0, %8 ]
  %19 = tail call ptr @sbitmap_alloc(i32 noundef %18) #20
  %20 = getelementptr inbounds %struct.matrix_info, ptr %4, i64 0, i32 7
  %21 = load ptr, ptr %20, align 8, !tbaa !137
  %22 = load ptr, ptr @current_function_decl, align 8, !tbaa !35
  %23 = icmp eq ptr %21, %22
  br i1 %23, label %24, label %133

24:                                               ; preds = %17
  %25 = load ptr, ptr %5, align 8, !tbaa !113
  %26 = load ptr, ptr %25, align 8, !tbaa !35
  %27 = icmp eq ptr %26, null
  br i1 %27, label %133, label %28

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.matrix_info, ptr %4, i64 0, i32 5
  %30 = load i32, ptr %29, align 8, !tbaa !138
  %31 = icmp sgt i32 %30, 1
  br i1 %31, label %32, label %44

32:                                               ; preds = %28
  %33 = zext nneg i32 %30 to i64
  br label %34

34:                                               ; preds = %32, %39
  %35 = phi i64 [ 1, %32 ], [ %40, %39 ]
  %36 = getelementptr inbounds ptr, ptr %25, i64 %35
  %37 = load ptr, ptr %36, align 8, !tbaa !35
  %38 = icmp eq ptr %37, null
  br i1 %38, label %42, label %39

39:                                               ; preds = %34
  %40 = add nuw nsw i64 %35, 1
  %41 = icmp eq i64 %40, %33
  br i1 %41, label %44, label %34, !llvm.loop !139

42:                                               ; preds = %34
  %43 = trunc i64 %35 to i32
  br label %44

44:                                               ; preds = %42, %39, %28
  %45 = phi i32 [ 1, %28 ], [ %43, %42 ], [ %30, %39 ]
  %46 = getelementptr inbounds %struct.matrix_info, ptr %4, i64 0, i32 5
  %47 = getelementptr inbounds %struct.matrix_info, ptr %4, i64 0, i32 2
  %48 = load i32, ptr %47, align 4, !tbaa !96
  %49 = icmp eq i32 %48, -1
  %50 = icmp sgt i32 %48, %45
  %51 = or i1 %49, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %44
  store i32 %45, ptr %47, align 4, !tbaa !96
  %53 = getelementptr inbounds %struct.matrix_info, ptr %4, i64 0, i32 3
  store ptr null, ptr %53, align 8, !tbaa !140
  br label %54

54:                                               ; preds = %44, %52
  %55 = load i32, ptr %47, align 4, !tbaa !96
  %56 = icmp sgt i32 %55, 1
  br i1 %56, label %57, label %120

57:                                               ; preds = %54
  %58 = getelementptr inbounds %struct.malloc_call_data, ptr %3, i64 0, i32 1
  %59 = getelementptr inbounds %struct.matrix_info, ptr %4, i64 0, i32 9
  %60 = getelementptr inbounds %struct.matrix_info, ptr %4, i64 0, i32 10
  %61 = getelementptr inbounds %struct.matrix_info, ptr %4, i64 0, i32 10
  br label %62

62:                                               ; preds = %57, %108
  %63 = phi i64 [ 1, %57 ], [ %116, %108 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  %64 = load ptr, ptr %5, align 8, !tbaa !113
  %65 = getelementptr inbounds ptr, ptr %64, i64 %63
  %66 = load ptr, ptr %65, align 8, !tbaa !35
  call fastcc void @collect_data_for_malloc_call(ptr noundef %66, ptr noundef nonnull %3)
  %67 = load ptr, ptr %58, align 8, !tbaa !141
  %68 = load i64, ptr %67, align 8
  %69 = and i64 %68, 65535
  %70 = icmp eq i64 %69, 23
  br i1 %70, label %71, label %74

71:                                               ; preds = %62
  %72 = load ptr, ptr %59, align 8, !tbaa !143
  %73 = icmp eq ptr %72, null
  br i1 %73, label %98, label %108

74:                                               ; preds = %62
  tail call void @sbitmap_zero(ptr noundef %19) #20
  %75 = tail call fastcc ptr @can_calculate_expr_before_stmt(ptr noundef nonnull %67, ptr noundef %19)
  %76 = icmp eq ptr %75, null
  br i1 %76, label %77, label %92

77:                                               ; preds = %74
  %78 = trunc i64 %63 to i32
  %79 = load i32, ptr %47, align 4, !tbaa !96
  %80 = icmp eq i32 %79, -1
  %81 = icmp sgt i32 %79, %78
  %82 = or i1 %80, %81
  br i1 %82, label %83, label %85

83:                                               ; preds = %77
  store i32 %78, ptr %47, align 4, !tbaa !96
  %84 = getelementptr inbounds %struct.matrix_info, ptr %4, i64 0, i32 3
  store ptr %66, ptr %84, align 8, !tbaa !140
  br label %85

85:                                               ; preds = %77, %83
  %86 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %87 = icmp eq ptr %86, null
  br i1 %87, label %97, label %88

88:                                               ; preds = %85
  %89 = load ptr, ptr %4, align 8, !tbaa !92
  %90 = tail call ptr @get_name(ptr noundef %89) #20
  %91 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %86, ptr noundef nonnull @.str.7, ptr noundef %90, i32 noundef %78)
  br label %97

92:                                               ; preds = %74
  %93 = getelementptr inbounds %struct.matrix_info, ptr %4, i64 0, i32 9
  %94 = getelementptr inbounds %struct.matrix_info, ptr %4, i64 0, i32 10
  %95 = load ptr, ptr %93, align 8, !tbaa !143
  %96 = icmp eq ptr %95, null
  br i1 %96, label %98, label %108

97:                                               ; preds = %85, %88
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #20
  br label %120

98:                                               ; preds = %92, %71
  %99 = phi ptr [ %59, %71 ], [ %93, %92 ]
  %100 = phi ptr [ %67, %71 ], [ %75, %92 ]
  %101 = phi ptr [ %60, %71 ], [ %94, %92 ]
  %102 = load i32, ptr %47, align 4, !tbaa !96
  %103 = sext i32 %102 to i64
  %104 = tail call ptr @xcalloc(i64 noundef %103, i64 noundef 8) #20
  store ptr %104, ptr %99, align 8, !tbaa !143
  %105 = load i32, ptr %47, align 4, !tbaa !96
  %106 = sext i32 %105 to i64
  %107 = tail call ptr @xcalloc(i64 noundef %106, i64 noundef 8) #20
  store ptr %107, ptr %61, align 8, !tbaa !144
  br label %108

108:                                              ; preds = %98, %92, %71
  %109 = phi ptr [ %59, %71 ], [ %93, %92 ], [ %99, %98 ]
  %110 = phi ptr [ %67, %71 ], [ %75, %92 ], [ %100, %98 ]
  %111 = phi ptr [ %60, %71 ], [ %94, %92 ], [ %101, %98 ]
  %112 = load ptr, ptr %109, align 8, !tbaa !143
  %113 = getelementptr inbounds ptr, ptr %112, i64 %63
  store ptr %110, ptr %113, align 8, !tbaa !35
  %114 = load ptr, ptr %111, align 8, !tbaa !144
  %115 = getelementptr inbounds ptr, ptr %114, i64 %63
  store ptr %110, ptr %115, align 8, !tbaa !35
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #20
  %116 = add nuw nsw i64 %63, 1
  %117 = load i32, ptr %47, align 4, !tbaa !96
  %118 = sext i32 %117 to i64
  %119 = icmp slt i64 %116, %118
  br i1 %119, label %62, label %120, !llvm.loop !145

120:                                              ; preds = %108, %54, %97
  %121 = load i32, ptr %47, align 4, !tbaa !96
  %122 = load i32, ptr %46, align 8, !tbaa !138
  %123 = icmp slt i32 %121, %122
  br i1 %123, label %124, label %133

124:                                              ; preds = %120
  %125 = sext i32 %121 to i64
  %126 = sext i32 %122 to i64
  br label %127

127:                                              ; preds = %124, %127
  %128 = phi i64 [ %125, %124 ], [ %131, %127 ]
  %129 = load ptr, ptr %5, align 8, !tbaa !113
  %130 = getelementptr inbounds ptr, ptr %129, i64 %128
  store ptr null, ptr %130, align 8, !tbaa !35
  %131 = add nsw i64 %128, 1
  %132 = icmp eq i64 %131, %126
  br i1 %132, label %133, label %127, !llvm.loop !146

133:                                              ; preds = %127, %120, %17, %24, %2
  ret i32 1
}

; Function Attrs: cold nounwind uwtable
define internal noundef i32 @transform_allocation_sites(ptr nocapture noundef readonly %0, ptr nocapture readnone %1) #10 !prof !34 {
  %3 = alloca %struct.gimple_stmt_iterator, align 8
  %4 = alloca %struct.malloc_call_data, align 8
  %5 = alloca %struct.immediate_use_iterator_d, align 8
  %6 = alloca %struct.check_var_data, align 8
  %7 = alloca %struct.gimple_stmt_iterator, align 8
  %8 = alloca %struct.gimple_stmt_iterator, align 8
  %9 = alloca %struct.gimple_stmt_iterator, align 8
  %10 = alloca %struct.gimple_stmt_iterator, align 8
  %11 = alloca %struct.gimple_stmt_iterator, align 8
  %12 = alloca %struct.gimple_stmt_iterator, align 8
  %13 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #20
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #20
  %14 = load ptr, ptr %0, align 8, !tbaa !35
  %15 = getelementptr inbounds %struct.matrix_info, ptr %14, i64 0, i32 2
  %16 = load i32, ptr %15, align 4, !tbaa !96
  %17 = getelementptr inbounds %struct.matrix_info, ptr %14, i64 0, i32 4
  %18 = load ptr, ptr %17, align 8, !tbaa !113
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  store i32 0, ptr %15, align 4, !tbaa !96
  br label %21

21:                                               ; preds = %20, %2
  %22 = load i32, ptr %15, align 4, !tbaa !96
  %23 = icmp slt i32 %22, 2
  br i1 %23, label %564, label %24

24:                                               ; preds = %21
  %25 = zext nneg i32 %22 to i64
  %26 = tail call ptr @xcalloc(i64 noundef %25, i64 noundef 4) #20
  %27 = getelementptr inbounds %struct.matrix_info, ptr %14, i64 0, i32 15
  store ptr %26, ptr %27, align 8, !tbaa !147
  %28 = load i32, ptr %15, align 4, !tbaa !96
  %29 = icmp sgt i32 %28, 0
  br i1 %29, label %30, label %38

30:                                               ; preds = %24, %30
  %31 = phi i64 [ %34, %30 ], [ 0, %24 ]
  %32 = getelementptr inbounds i32, ptr %26, i64 %31
  %33 = trunc i64 %31 to i32
  store i32 %33, ptr %32, align 4, !tbaa !50
  %34 = add nuw nsw i64 %31, 1
  %35 = load i32, ptr %15, align 4, !tbaa !96
  %36 = sext i32 %35 to i64
  %37 = icmp slt i64 %34, %36
  br i1 %37, label %30, label %38, !llvm.loop !148

38:                                               ; preds = %30, %24
  %39 = load i1, ptr @check_transpose_p, align 1
  br i1 %39, label %43, label %40

40:                                               ; preds = %38
  %41 = load i32, ptr %15, align 4, !tbaa !96
  %42 = icmp sgt i32 %41, 0
  br i1 %42, label %156, label %164

43:                                               ; preds = %38
  %44 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %45 = icmp eq ptr %44, null
  br i1 %45, label %69, label %46

46:                                               ; preds = %43
  %47 = load ptr, ptr %14, align 8, !tbaa !92
  %48 = tail call ptr @get_name(ptr noundef %47) #20
  %49 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %44, ptr noundef nonnull @.str.8, ptr noundef %48)
  %50 = icmp sgt i32 %16, 0
  br i1 %50, label %51, label %69

51:                                               ; preds = %46
  %52 = getelementptr inbounds %struct.matrix_info, ptr %14, i64 0, i32 13
  %53 = zext nneg i32 %16 to i64
  br label %54

54:                                               ; preds = %51, %66
  %55 = phi i64 [ 0, %51 ], [ %67, %66 ]
  %56 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %57 = trunc i64 %55 to i32
  %58 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %56, ptr noundef nonnull @.str.9, i32 noundef %57)
  %59 = load ptr, ptr %52, align 8, !tbaa !112
  %60 = icmp eq ptr %59, null
  br i1 %60, label %66, label %61

61:                                               ; preds = %54
  %62 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %63 = getelementptr inbounds i64, ptr %59, i64 %55
  %64 = load i64, ptr %63, align 8, !tbaa !83
  %65 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %62, ptr noundef nonnull @.str.10, i64 noundef %64)
  br label %66

66:                                               ; preds = %54, %61
  %67 = add nuw nsw i64 %55, 1
  %68 = icmp eq i64 %67, %53
  br i1 %68, label %69, label %54, !llvm.loop !149

69:                                               ; preds = %66, %46, %43
  %70 = getelementptr inbounds %struct.matrix_info, ptr %14, i64 0, i32 13
  %71 = load ptr, ptr %70, align 8, !tbaa !112
  %72 = load ptr, ptr %27, align 8, !tbaa !147
  %73 = load i32, ptr %15, align 4, !tbaa !96
  %74 = add i32 %73, -1
  %75 = icmp sgt i32 %73, 1
  br i1 %75, label %76, label %101

76:                                               ; preds = %69, %97
  %77 = phi i32 [ %99, %97 ], [ %74, %69 ]
  %78 = phi i32 [ %98, %97 ], [ 0, %69 ]
  %79 = icmp sgt i32 %74, %78
  br i1 %79, label %80, label %97

80:                                               ; preds = %76
  %81 = zext i32 %77 to i64
  br label %82

82:                                               ; preds = %80, %95
  %83 = phi i64 [ 0, %80 ], [ %84, %95 ]
  %84 = add nuw nsw i64 %83, 1
  %85 = getelementptr inbounds i64, ptr %71, i64 %84
  %86 = load i64, ptr %85, align 8, !tbaa !83
  %87 = getelementptr inbounds i64, ptr %71, i64 %83
  %88 = load i64, ptr %87, align 8, !tbaa !83
  %89 = icmp slt i64 %86, %88
  br i1 %89, label %90, label %95

90:                                               ; preds = %82
  store i64 %86, ptr %87, align 8, !tbaa !83
  store i64 %88, ptr %85, align 8, !tbaa !83
  %91 = getelementptr inbounds i32, ptr %72, i64 %83
  %92 = load i32, ptr %91, align 4, !tbaa !50
  %93 = getelementptr inbounds i32, ptr %72, i64 %84
  %94 = load i32, ptr %93, align 4, !tbaa !50
  store i32 %94, ptr %91, align 4, !tbaa !50
  store i32 %92, ptr %93, align 4, !tbaa !50
  br label %95

95:                                               ; preds = %90, %82
  %96 = icmp eq i64 %84, %81
  br i1 %96, label %97, label %82, !llvm.loop !150

97:                                               ; preds = %95, %76
  %98 = add nuw nsw i32 %78, 1
  %99 = add i32 %77, -1
  %100 = icmp eq i32 %98, %74
  br i1 %100, label %101, label %76, !llvm.loop !151

101:                                              ; preds = %97, %69
  %102 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %103 = icmp ne ptr %102, null
  %104 = icmp sgt i32 %16, 0
  %105 = select i1 %103, i1 %104, i1 false
  br i1 %105, label %106, label %123

106:                                              ; preds = %101
  %107 = zext i32 %16 to i64
  br label %108

108:                                              ; preds = %106, %120
  %109 = phi i64 [ 0, %106 ], [ %121, %120 ]
  %110 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %111 = trunc i64 %109 to i32
  %112 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %110, ptr noundef nonnull @.str.11, i32 noundef %111)
  %113 = load ptr, ptr %70, align 8, !tbaa !112
  %114 = icmp eq ptr %113, null
  br i1 %114, label %120, label %115

115:                                              ; preds = %108
  %116 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %117 = getelementptr inbounds i64, ptr %113, i64 %109
  %118 = load i64, ptr %117, align 8, !tbaa !83
  %119 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %116, ptr noundef nonnull @.str.10, i64 noundef %118)
  br label %120

120:                                              ; preds = %108, %115
  %121 = add nuw nsw i64 %109, 1
  %122 = icmp eq i64 %121, %107
  br i1 %122, label %123, label %108, !llvm.loop !152

123:                                              ; preds = %120, %101
  %124 = load i32, ptr %15, align 4, !tbaa !96
  %125 = icmp sgt i32 %124, 0
  br i1 %125, label %126, label %164

126:                                              ; preds = %123
  %127 = getelementptr inbounds %struct.matrix_info, ptr %14, i64 0, i32 6
  br label %128

128:                                              ; preds = %126, %151
  %129 = phi i64 [ 0, %126 ], [ %152, %151 ]
  %130 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %131 = icmp eq ptr %130, null
  br i1 %131, label %138, label %132

132:                                              ; preds = %128
  %133 = load ptr, ptr %27, align 8, !tbaa !147
  %134 = getelementptr inbounds i32, ptr %133, i64 %129
  %135 = load i32, ptr %134, align 4, !tbaa !50
  %136 = trunc i64 %129 to i32
  %137 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %130, ptr noundef nonnull @.str.12, i32 noundef %136, i32 noundef %135)
  br label %138

138:                                              ; preds = %132, %128
  %139 = load ptr, ptr %27, align 8, !tbaa !147
  %140 = getelementptr inbounds i32, ptr %139, i64 %129
  %141 = load i32, ptr %140, align 4, !tbaa !50
  %142 = zext i32 %141 to i64
  %143 = icmp eq i64 %129, %142
  br i1 %143, label %151, label %144

144:                                              ; preds = %138
  %145 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %146 = icmp eq ptr %145, null
  br i1 %146, label %150, label %147

147:                                              ; preds = %144
  %148 = trunc i64 %129 to i32
  %149 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %145, ptr noundef nonnull @.str.13, i32 noundef %141, i32 noundef %148)
  br label %150

150:                                              ; preds = %147, %144
  store i8 1, ptr %127, align 4, !tbaa !97
  br label %151

151:                                              ; preds = %138, %150
  %152 = add nuw nsw i64 %129, 1
  %153 = load i32, ptr %15, align 4, !tbaa !96
  %154 = sext i32 %153 to i64
  %155 = icmp slt i64 %152, %154
  br i1 %155, label %128, label %164, !llvm.loop !153

156:                                              ; preds = %40, %156
  %157 = phi i64 [ %160, %156 ], [ 0, %40 ]
  %158 = getelementptr inbounds i32, ptr %26, i64 %157
  %159 = trunc i64 %157 to i32
  store i32 %159, ptr %158, align 4, !tbaa !50
  %160 = add nuw nsw i64 %157, 1
  %161 = load i32, ptr %15, align 4, !tbaa !96
  %162 = sext i32 %161 to i64
  %163 = icmp slt i64 %160, %162
  br i1 %163, label %156, label %164, !llvm.loop !154

164:                                              ; preds = %156, %151, %40, %123
  %165 = load ptr, ptr %17, align 8, !tbaa !113
  %166 = load ptr, ptr %165, align 8, !tbaa !35
  call fastcc void @collect_data_for_malloc_call(ptr noundef %166, ptr noundef nonnull %4)
  %167 = getelementptr inbounds %struct.malloc_call_data, ptr %4, i64 0, i32 1
  %168 = load ptr, ptr %167, align 8, !tbaa !141
  %169 = getelementptr inbounds %struct.matrix_info, ptr %14, i64 0, i32 9
  %170 = load ptr, ptr %169, align 8, !tbaa !143
  store ptr %168, ptr %170, align 8, !tbaa !35
  %171 = getelementptr inbounds %struct.matrix_info, ptr %14, i64 0, i32 10
  %172 = load ptr, ptr %171, align 8, !tbaa !144
  store ptr %168, ptr %172, align 8, !tbaa !35
  %173 = load i32, ptr %15, align 4, !tbaa !96
  %174 = icmp sgt i32 %173, 1
  br i1 %174, label %175, label %208

175:                                              ; preds = %164
  %176 = getelementptr inbounds %struct.matrix_info, ptr %14, i64 0, i32 7
  %177 = getelementptr inbounds %struct.check_var_data, ptr %6, i64 0, i32 1
  %178 = getelementptr inbounds %struct.matrix_info, ptr %14, i64 0, i32 3
  br label %179

179:                                              ; preds = %175, %203
  %180 = phi i64 [ 1, %175 ], [ %204, %203 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #20
  %181 = load ptr, ptr %169, align 8, !tbaa !143
  %182 = getelementptr inbounds ptr, ptr %181, i64 %180
  %183 = load ptr, ptr %182, align 8, !tbaa !35
  %184 = icmp eq ptr %183, null
  br i1 %184, label %185, label %186

185:                                              ; preds = %179
  call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 2108, ptr noundef nonnull @.str.3) #20
  br label %186

186:                                              ; preds = %179, %185
  %187 = load ptr, ptr %176, align 8, !tbaa !137
  store ptr %187, ptr %6, align 8, !tbaa !155
  store ptr null, ptr %177, align 8, !tbaa !157
  %188 = load ptr, ptr %169, align 8, !tbaa !143
  %189 = getelementptr inbounds ptr, ptr %188, i64 %180
  %190 = call ptr @walk_tree_without_duplicates_1(ptr noundef nonnull %189, ptr noundef nonnull @check_var_notmodified_p, ptr noundef nonnull %6, ptr noundef null) #20
  %191 = icmp eq ptr %190, null
  br i1 %191, label %202, label %192

192:                                              ; preds = %186
  %193 = load i32, ptr %15, align 4, !tbaa !96
  %194 = icmp eq i32 %193, -1
  %195 = sext i32 %193 to i64
  %196 = icmp slt i64 %180, %195
  %197 = or i1 %194, %196
  br i1 %197, label %198, label %201

198:                                              ; preds = %192
  %199 = load ptr, ptr %177, align 8, !tbaa !157
  %200 = trunc i64 %180 to i32
  store i32 %200, ptr %15, align 4, !tbaa !96
  store ptr %199, ptr %178, align 8, !tbaa !140
  br label %201

201:                                              ; preds = %198, %192
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #20
  br i1 %191, label %203, label %208

202:                                              ; preds = %186
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #20
  br label %203

203:                                              ; preds = %202, %201
  %204 = add nuw nsw i64 %180, 1
  %205 = load i32, ptr %15, align 4, !tbaa !96
  %206 = sext i32 %205 to i64
  %207 = icmp slt i64 %204, %206
  br i1 %207, label %179, label %208, !llvm.loop !158

208:                                              ; preds = %203, %201, %164
  %209 = load i32, ptr %15, align 4, !tbaa !96
  %210 = icmp slt i32 %209, 2
  br i1 %210, label %564, label %211

211:                                              ; preds = %208
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #20
  call void @gsi_for_stmt(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %7, ptr noundef %166) #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %7, i64 24, i1 false), !tbaa.struct !159
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #20
  %212 = load ptr, ptr @current_function_decl, align 8, !tbaa !35
  %213 = getelementptr inbounds %struct.matrix_info, ptr %14, i64 0, i32 7
  %214 = load ptr, ptr %213, align 8, !tbaa !137
  store ptr %214, ptr @current_function_decl, align 8, !tbaa !35
  %215 = getelementptr inbounds %struct.tree_function_decl, ptr %214, i64 0, i32 1
  %216 = load ptr, ptr %215, align 8, !tbaa !46
  call void @push_cfun(ptr noundef %216) #20
  %217 = getelementptr inbounds %struct.matrix_info, ptr %14, i64 0, i32 11
  %218 = load ptr, ptr %217, align 8, !tbaa !160
  %219 = load i32, ptr %15, align 4, !tbaa !96
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds i64, ptr %218, i64 %220
  %222 = load i64, ptr %221, align 8, !tbaa !83
  %223 = icmp sgt i32 %219, 0
  br i1 %223, label %224, label %299

224:                                              ; preds = %211
  %225 = zext nneg i32 %219 to i64
  br label %226

226:                                              ; preds = %224, %292
  %227 = phi i64 [ %225, %224 ], [ %229, %292 ]
  %228 = phi ptr [ null, %224 ], [ %239, %292 ]
  %229 = add nsw i64 %227, -1
  %230 = load ptr, ptr %171, align 8, !tbaa !144
  %231 = load ptr, ptr %27, align 8, !tbaa !147
  %232 = getelementptr inbounds i32, ptr %231, i64 %229
  %233 = load i32, ptr %232, align 4, !tbaa !50
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds ptr, ptr %230, i64 %234
  %236 = load ptr, ptr %235, align 8, !tbaa !35
  %237 = getelementptr inbounds %struct.tree_common, ptr %236, i64 0, i32 2
  %238 = load ptr, ptr %237, align 8, !tbaa !46
  %239 = call ptr @add_new_static_var(ptr noundef %238) #20
  %240 = load ptr, ptr %171, align 8, !tbaa !144
  %241 = load ptr, ptr %27, align 8, !tbaa !147
  %242 = getelementptr inbounds i32, ptr %241, i64 %229
  %243 = load i32, ptr %242, align 4, !tbaa !50
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds ptr, ptr %240, i64 %244
  %246 = load ptr, ptr %245, align 8, !tbaa !35
  %247 = getelementptr inbounds %struct.tree_common, ptr %246, i64 0, i32 2
  %248 = load ptr, ptr %247, align 8, !tbaa !46
  %249 = load i32, ptr %15, align 4, !tbaa !96
  %250 = icmp sgt i32 %249, 0
  br i1 %250, label %251, label %264

251:                                              ; preds = %226
  %252 = zext nneg i32 %249 to i64
  br label %253

253:                                              ; preds = %251, %259
  %254 = phi i64 [ 0, %251 ], [ %260, %259 ]
  %255 = getelementptr inbounds i32, ptr %241, i64 %254
  %256 = load i32, ptr %255, align 4, !tbaa !50
  %257 = zext i32 %256 to i64
  %258 = icmp eq i64 %229, %257
  br i1 %258, label %262, label %259

259:                                              ; preds = %253
  %260 = add nuw nsw i64 %254, 1
  %261 = icmp eq i64 %260, %252
  br i1 %261, label %264, label %253, !llvm.loop !161

262:                                              ; preds = %253
  %263 = trunc i64 %254 to i32
  br label %264

264:                                              ; preds = %262, %259, %226
  %265 = phi i32 [ 0, %226 ], [ %263, %262 ], [ %249, %259 ]
  %266 = load ptr, ptr %217, align 8, !tbaa !160
  %267 = zext nneg i32 %265 to i64
  %268 = getelementptr i64, ptr %266, i64 %267
  %269 = getelementptr i64, ptr %268, i64 1
  %270 = load i64, ptr %269, align 8, !tbaa !83
  %271 = call ptr @build_int_cst(ptr noundef %248, i64 noundef %270) #20
  %272 = icmp eq ptr %228, null
  br i1 %272, label %273, label %275

273:                                              ; preds = %264
  %274 = call ptr @build_int_cst(ptr noundef %248, i64 noundef %222) #20
  br label %275

275:                                              ; preds = %273, %264
  %276 = phi ptr [ %228, %264 ], [ %274, %273 ]
  %277 = load i1, ptr @check_transpose_p, align 1
  br i1 %277, label %286, label %278

278:                                              ; preds = %275
  %279 = load i32, ptr %15, align 4, !tbaa !96
  %280 = zext i32 %279 to i64
  %281 = icmp eq i64 %227, %280
  br i1 %281, label %282, label %286

282:                                              ; preds = %278
  %283 = load ptr, ptr %171, align 8, !tbaa !144
  %284 = getelementptr inbounds ptr, ptr %283, i64 %267
  %285 = load ptr, ptr %284, align 8, !tbaa !35
  br label %292

286:                                              ; preds = %278, %275
  %287 = load ptr, ptr %171, align 8, !tbaa !144
  %288 = getelementptr inbounds ptr, ptr %287, i64 %267
  %289 = load ptr, ptr %288, align 8, !tbaa !35
  %290 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 67, ptr noundef %248, ptr noundef %289, ptr noundef %271) #20
  %291 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 65, ptr noundef %248, ptr noundef %290, ptr noundef %276) #20
  br label %292

292:                                              ; preds = %286, %282
  %293 = phi ptr [ %291, %286 ], [ %285, %282 ]
  %294 = call ptr @force_gimple_operand_gsi(ptr noundef nonnull %3, ptr noundef %293, i8 noundef zeroext 1, ptr noundef null, i8 noundef zeroext 1, i32 noundef 1) #20
  %295 = call ptr @gimple_build_assign_stat(ptr noundef %239, ptr noundef %294) #20
  call void @mark_symbols_for_renaming(ptr noundef %295) #20
  call void @gsi_insert_before(ptr noundef nonnull %3, ptr noundef %295, i32 noundef 1) #20
  %296 = load ptr, ptr %169, align 8, !tbaa !143
  %297 = getelementptr inbounds ptr, ptr %296, i64 %229
  store ptr %239, ptr %297, align 8, !tbaa !35
  %298 = icmp sgt i64 %227, 1
  br i1 %298, label %226, label %299, !llvm.loop !162

299:                                              ; preds = %292, %211
  call void @update_ssa(i32 noundef 2048) #20
  %300 = load ptr, ptr %213, align 8, !tbaa !137
  %301 = call ptr @cgraph_node(ptr noundef %300) #20
  %302 = load i32, ptr %166, align 8
  %303 = and i32 %302, 255
  %304 = add nsw i32 %303, -10
  %305 = icmp ult i32 %304, -9
  br i1 %305, label %319, label %306

306:                                              ; preds = %299
  %307 = zext nneg i32 %303 to i64
  %308 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %307
  %309 = load i32, ptr %308, align 4, !tbaa !50
  %310 = zext i32 %309 to i64
  %311 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %310
  %312 = load i64, ptr %311, align 8, !tbaa !83
  %313 = icmp eq i64 %312, 0
  br i1 %313, label %314, label %315

314:                                              ; preds = %306
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1622, ptr noundef nonnull @.str.3) #20
  br label %315

315:                                              ; preds = %314, %306
  %316 = getelementptr inbounds i8, ptr %166, i64 %312
  %317 = getelementptr inbounds ptr, ptr %316, i64 3
  %318 = load ptr, ptr %317, align 8, !tbaa !35
  br label %319

319:                                              ; preds = %299, %315
  %320 = phi ptr [ %318, %315 ], [ null, %299 ]
  %321 = load ptr, ptr %169, align 8, !tbaa !143
  %322 = load ptr, ptr %321, align 8, !tbaa !35
  %323 = call ptr @force_gimple_operand_gsi(ptr noundef nonnull %3, ptr noundef %322, i8 noundef zeroext 1, ptr noundef null, i8 noundef zeroext 1, i32 noundef 1) #20
  %324 = load i64, ptr %320, align 8
  %325 = and i64 %324, 65535
  %326 = icmp eq i64 %325, 141
  br i1 %326, label %327, label %409

327:                                              ; preds = %319
  %328 = getelementptr inbounds %struct.tree_ssa_name, ptr %320, i64 0, i32 5
  %329 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %5, i64 0, i32 1
  store ptr %328, ptr %329, align 8, !tbaa !163
  %330 = getelementptr inbounds %struct.tree_ssa_name, ptr %320, i64 0, i32 5, i32 1
  %331 = load ptr, ptr %330, align 8, !tbaa !166
  store ptr %331, ptr %5, align 8, !tbaa !167
  %332 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %5, i64 0, i32 3
  %333 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %5, i64 0, i32 2
  %334 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %5, i64 0, i32 2, i32 1
  %335 = icmp eq ptr %331, %328
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %333, i8 0, i64 40, i1 false)
  br i1 %335, label %340, label %336

336:                                              ; preds = %327
  call fastcc void @link_use_stmts_after(ptr noundef %331, ptr noundef nonnull %5)
  %337 = load ptr, ptr %5, align 8, !tbaa !167
  %338 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %337, i64 0, i32 2
  %339 = load ptr, ptr %338, align 8, !tbaa !46
  br label %340

340:                                              ; preds = %327, %336
  %341 = phi ptr [ %339, %336 ], [ null, %327 ]
  %342 = load ptr, ptr %5, align 8, !tbaa !167
  %343 = load ptr, ptr %329, align 8, !tbaa !163
  %344 = icmp eq ptr %342, %343
  br i1 %344, label %409, label %345

345:                                              ; preds = %340
  %346 = icmp eq ptr %323, null
  %347 = getelementptr inbounds %struct.tree_ssa_name, ptr %323, i64 0, i32 5
  %348 = getelementptr inbounds %struct.tree_ssa_name, ptr %323, i64 0, i32 5, i32 1
  br label %349

349:                                              ; preds = %345, %404
  %350 = phi ptr [ %342, %345 ], [ %406, %404 ]
  %351 = phi ptr [ %341, %345 ], [ %405, %404 ]
  %352 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %350, i64 0, i32 1
  %353 = load ptr, ptr %352, align 8, !tbaa !166
  store ptr %353, ptr %332, align 8, !tbaa !168
  %354 = load ptr, ptr %5, align 8, !tbaa !167
  %355 = icmp eq ptr %354, %333
  br i1 %355, label %390, label %356

356:                                              ; preds = %349
  %357 = icmp eq ptr %351, %166
  br label %358

358:                                              ; preds = %356, %386
  %359 = phi ptr [ %350, %356 ], [ %387, %386 ]
  br i1 %357, label %360, label %380

360:                                              ; preds = %358
  %361 = load ptr, ptr %359, align 8, !tbaa !169
  %362 = icmp eq ptr %361, null
  br i1 %362, label %368, label %363

363:                                              ; preds = %360
  %364 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %359, i64 0, i32 1
  %365 = load ptr, ptr %364, align 8, !tbaa !166
  %366 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %361, i64 0, i32 1
  store ptr %365, ptr %366, align 8, !tbaa !166
  %367 = load ptr, ptr %364, align 8, !tbaa !166
  store ptr %361, ptr %367, align 8, !tbaa !169
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %359, i8 0, i64 16, i1 false)
  br label %368

368:                                              ; preds = %363, %360
  %369 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %359, i64 0, i32 3
  %370 = load ptr, ptr %369, align 8, !tbaa !170
  store ptr %323, ptr %370, align 8, !tbaa !35
  br i1 %346, label %375, label %371

371:                                              ; preds = %368
  %372 = load i64, ptr %323, align 8
  %373 = and i64 %372, 65535
  %374 = icmp eq i64 %373, 141
  br i1 %374, label %376, label %375

375:                                              ; preds = %371, %368
  store ptr null, ptr %359, align 8, !tbaa !169
  br label %380

376:                                              ; preds = %371
  store ptr %347, ptr %359, align 8, !tbaa !169
  %377 = load ptr, ptr %348, align 8, !tbaa !166
  %378 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %359, i64 0, i32 1
  store ptr %377, ptr %378, align 8, !tbaa !166
  %379 = load ptr, ptr %348, align 8, !tbaa !166
  store ptr %359, ptr %379, align 8, !tbaa !169
  store ptr %359, ptr %348, align 8, !tbaa !166
  br label %380

380:                                              ; preds = %376, %375, %358
  %381 = load ptr, ptr %332, align 8, !tbaa !168
  store ptr %381, ptr %5, align 8, !tbaa !167
  %382 = icmp eq ptr %381, %333
  br i1 %382, label %386, label %383

383:                                              ; preds = %380
  %384 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %381, i64 0, i32 1
  %385 = load ptr, ptr %384, align 8, !tbaa !166
  store ptr %385, ptr %332, align 8, !tbaa !168
  br label %386

386:                                              ; preds = %380, %383
  %387 = phi ptr [ %381, %383 ], [ null, %380 ]
  %388 = load ptr, ptr %5, align 8, !tbaa !167
  %389 = icmp eq ptr %388, %333
  br i1 %389, label %390, label %358, !llvm.loop !171

390:                                              ; preds = %386, %349
  %391 = load ptr, ptr %334, align 8, !tbaa !166
  store ptr %391, ptr %5, align 8, !tbaa !167
  %392 = load ptr, ptr %329, align 8, !tbaa !163
  %393 = icmp eq ptr %391, %392
  br i1 %393, label %394, label %400

394:                                              ; preds = %390
  %395 = load ptr, ptr %333, align 8, !tbaa !169
  %396 = icmp eq ptr %395, null
  br i1 %396, label %404, label %397

397:                                              ; preds = %394
  %398 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %395, i64 0, i32 1
  store ptr %391, ptr %398, align 8, !tbaa !166
  %399 = load ptr, ptr %334, align 8, !tbaa !166
  store ptr %395, ptr %399, align 8, !tbaa !169
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %333, i8 0, i64 16, i1 false)
  br label %404

400:                                              ; preds = %390
  call fastcc void @link_use_stmts_after(ptr noundef %391, ptr noundef nonnull %5)
  %401 = load ptr, ptr %5, align 8, !tbaa !167
  %402 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %401, i64 0, i32 2
  %403 = load ptr, ptr %402, align 8, !tbaa !46
  br label %404

404:                                              ; preds = %394, %397, %400
  %405 = phi ptr [ %403, %400 ], [ null, %397 ], [ null, %394 ]
  %406 = load ptr, ptr %5, align 8, !tbaa !167
  %407 = load ptr, ptr %329, align 8, !tbaa !163
  %408 = icmp eq ptr %406, %407
  br i1 %408, label %409, label %349, !llvm.loop !172

409:                                              ; preds = %404, %340, %319
  %410 = load i32, ptr %15, align 4, !tbaa !96
  %411 = icmp sgt i32 %410, 1
  br i1 %411, label %412, label %519

412:                                              ; preds = %409
  %413 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %5, i64 0, i32 1
  %414 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %5, i64 0, i32 2
  %415 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %5, i64 0, i32 2, i32 1
  br label %416

416:                                              ; preds = %412, %514
  %417 = phi i64 [ 1, %412 ], [ %515, %514 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #20
  %418 = load ptr, ptr %17, align 8, !tbaa !113
  %419 = getelementptr inbounds ptr, ptr %418, i64 %417
  %420 = load ptr, ptr %419, align 8, !tbaa !35
  %421 = load i32, ptr %420, align 8
  %422 = and i32 %421, 255
  %423 = icmp eq i32 %422, 8
  br i1 %423, label %425, label %424

424:                                              ; preds = %416
  call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 2212, ptr noundef nonnull @.str.3) #20
  br label %425

425:                                              ; preds = %416, %424
  %426 = call ptr @cgraph_edge(ptr noundef %301, ptr noundef nonnull %420) #20
  %427 = icmp eq ptr %426, null
  br i1 %427, label %428, label %429

428:                                              ; preds = %425
  call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 2214, ptr noundef nonnull @.str.3) #20
  br label %429

429:                                              ; preds = %425, %428
  call void @cgraph_remove_edge(ptr noundef %426) #20
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %9) #20
  call void @gsi_for_stmt(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %9, ptr noundef nonnull %420) #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(24) %9, i64 24, i1 false), !tbaa.struct !159
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %9) #20
  call void @gsi_remove(ptr noundef nonnull %8, i8 noundef zeroext 1) #20
  %430 = load i32, ptr %420, align 8
  %431 = and i32 %430, 255
  %432 = add nsw i32 %431, -1
  %433 = icmp ult i32 %432, 9
  call void @llvm.assume(i1 %433)
  %434 = zext nneg i32 %431 to i64
  %435 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %434
  %436 = load i32, ptr %435, align 4, !tbaa !50
  %437 = zext i32 %436 to i64
  %438 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %437
  %439 = load i64, ptr %438, align 8, !tbaa !83
  %440 = icmp eq i64 %439, 0
  br i1 %440, label %441, label %442

441:                                              ; preds = %429
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1622, ptr noundef nonnull @.str.3) #20
  br label %442

442:                                              ; preds = %441, %429
  %443 = getelementptr inbounds i8, ptr %420, i64 %439
  %444 = load ptr, ptr %443, align 8, !tbaa !35
  %445 = getelementptr inbounds %struct.tree_ssa_name, ptr %444, i64 0, i32 5
  store ptr %445, ptr %413, align 8, !tbaa !163
  %446 = getelementptr inbounds %struct.tree_ssa_name, ptr %444, i64 0, i32 5, i32 1
  %447 = load ptr, ptr %446, align 8, !tbaa !166
  store ptr %447, ptr %5, align 8, !tbaa !167
  %448 = icmp eq ptr %447, %445
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %414, i8 0, i64 40, i1 false)
  br i1 %448, label %453, label %449

449:                                              ; preds = %442
  call fastcc void @link_use_stmts_after(ptr noundef %447, ptr noundef nonnull %5)
  %450 = load ptr, ptr %5, align 8, !tbaa !167
  %451 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %450, i64 0, i32 2
  %452 = load ptr, ptr %451, align 8, !tbaa !46
  br label %453

453:                                              ; preds = %442, %449
  %454 = phi ptr [ %452, %449 ], [ null, %442 ]
  %455 = load ptr, ptr %5, align 8, !tbaa !167
  %456 = load ptr, ptr %413, align 8, !tbaa !163
  %457 = icmp eq ptr %455, %456
  br i1 %457, label %478, label %458

458:                                              ; preds = %453, %473
  %459 = phi ptr [ %474, %473 ], [ %454, %453 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %10) #20
  call void @gsi_for_stmt(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %10, ptr noundef %459) #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(24) %10, i64 24, i1 false), !tbaa.struct !159
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %10) #20
  call void @gsi_remove(ptr noundef nonnull %8, i8 noundef zeroext 1) #20
  %460 = load ptr, ptr %415, align 8, !tbaa !166
  store ptr %460, ptr %5, align 8, !tbaa !167
  %461 = load ptr, ptr %413, align 8, !tbaa !163
  %462 = icmp eq ptr %460, %461
  br i1 %462, label %463, label %469

463:                                              ; preds = %458
  %464 = load ptr, ptr %414, align 8, !tbaa !169
  %465 = icmp eq ptr %464, null
  br i1 %465, label %473, label %466

466:                                              ; preds = %463
  %467 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %464, i64 0, i32 1
  store ptr %460, ptr %467, align 8, !tbaa !166
  %468 = load ptr, ptr %415, align 8, !tbaa !166
  store ptr %464, ptr %468, align 8, !tbaa !169
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %414, i8 0, i64 16, i1 false)
  br label %473

469:                                              ; preds = %458
  call fastcc void @link_use_stmts_after(ptr noundef %460, ptr noundef nonnull %5)
  %470 = load ptr, ptr %5, align 8, !tbaa !167
  %471 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %470, i64 0, i32 2
  %472 = load ptr, ptr %471, align 8, !tbaa !46
  br label %473

473:                                              ; preds = %463, %466, %469
  %474 = phi ptr [ %472, %469 ], [ null, %466 ], [ null, %463 ]
  %475 = load ptr, ptr %5, align 8, !tbaa !167
  %476 = load ptr, ptr %413, align 8, !tbaa !163
  %477 = icmp eq ptr %475, %476
  br i1 %477, label %478, label %458, !llvm.loop !173

478:                                              ; preds = %473, %453
  %479 = phi ptr [ null, %453 ], [ %459, %473 ]
  %480 = call ptr @gimple_get_lhs(ptr noundef %479) #20
  %481 = getelementptr inbounds %struct.tree_ssa_name, ptr %480, i64 0, i32 5
  store ptr %481, ptr %413, align 8, !tbaa !163
  %482 = getelementptr inbounds %struct.tree_ssa_name, ptr %480, i64 0, i32 5, i32 1
  %483 = load ptr, ptr %482, align 8, !tbaa !166
  store ptr %483, ptr %5, align 8, !tbaa !167
  %484 = icmp eq ptr %483, %481
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %414, i8 0, i64 40, i1 false)
  br i1 %484, label %489, label %485

485:                                              ; preds = %478
  call fastcc void @link_use_stmts_after(ptr noundef %483, ptr noundef nonnull %5)
  %486 = load ptr, ptr %5, align 8, !tbaa !167
  %487 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %486, i64 0, i32 2
  %488 = load ptr, ptr %487, align 8, !tbaa !46
  br label %489

489:                                              ; preds = %478, %485
  %490 = phi ptr [ %488, %485 ], [ null, %478 ]
  %491 = load ptr, ptr %5, align 8, !tbaa !167
  %492 = load ptr, ptr %413, align 8, !tbaa !163
  %493 = icmp eq ptr %491, %492
  br i1 %493, label %514, label %494

494:                                              ; preds = %489, %509
  %495 = phi ptr [ %510, %509 ], [ %490, %489 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %11) #20
  call void @gsi_for_stmt(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %11, ptr noundef %495) #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(24) %11, i64 24, i1 false), !tbaa.struct !159
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %11) #20
  call void @gsi_remove(ptr noundef nonnull %8, i8 noundef zeroext 1) #20
  %496 = load ptr, ptr %415, align 8, !tbaa !166
  store ptr %496, ptr %5, align 8, !tbaa !167
  %497 = load ptr, ptr %413, align 8, !tbaa !163
  %498 = icmp eq ptr %496, %497
  br i1 %498, label %499, label %505

499:                                              ; preds = %494
  %500 = load ptr, ptr %414, align 8, !tbaa !169
  %501 = icmp eq ptr %500, null
  br i1 %501, label %509, label %502

502:                                              ; preds = %499
  %503 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %500, i64 0, i32 1
  store ptr %496, ptr %503, align 8, !tbaa !166
  %504 = load ptr, ptr %415, align 8, !tbaa !166
  store ptr %500, ptr %504, align 8, !tbaa !169
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %414, i8 0, i64 16, i1 false)
  br label %509

505:                                              ; preds = %494
  call fastcc void @link_use_stmts_after(ptr noundef %496, ptr noundef nonnull %5)
  %506 = load ptr, ptr %5, align 8, !tbaa !167
  %507 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %506, i64 0, i32 2
  %508 = load ptr, ptr %507, align 8, !tbaa !46
  br label %509

509:                                              ; preds = %499, %502, %505
  %510 = phi ptr [ %508, %505 ], [ null, %502 ], [ null, %499 ]
  %511 = load ptr, ptr %5, align 8, !tbaa !167
  %512 = load ptr, ptr %413, align 8, !tbaa !163
  %513 = icmp eq ptr %511, %512
  br i1 %513, label %514, label %494, !llvm.loop !174

514:                                              ; preds = %509, %489
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #20
  %515 = add nuw nsw i64 %417, 1
  %516 = load i32, ptr %15, align 4, !tbaa !96
  %517 = sext i32 %516 to i64
  %518 = icmp slt i64 %515, %517
  br i1 %518, label %416, label %519, !llvm.loop !175

519:                                              ; preds = %514, %409
  call void @update_ssa(i32 noundef 2048) #20
  %520 = load i32, ptr %15, align 4, !tbaa !96
  %521 = icmp sgt i32 %520, 1
  br i1 %521, label %522, label %563

522:                                              ; preds = %519
  %523 = getelementptr inbounds %struct.matrix_info, ptr %14, i64 0, i32 8
  br label %524

524:                                              ; preds = %522, %558
  %525 = phi i64 [ 1, %522 ], [ %559, %558 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %12) #20
  %526 = load ptr, ptr %523, align 8, !tbaa !95
  %527 = getelementptr inbounds %struct.free_info, ptr %526, i64 %525
  %528 = load ptr, ptr %527, align 8, !tbaa !176
  %529 = icmp eq ptr %528, null
  br i1 %529, label %558, label %530

530:                                              ; preds = %524
  %531 = getelementptr inbounds %struct.free_info, ptr %526, i64 %525, i32 1
  %532 = load ptr, ptr %531, align 8, !tbaa !178
  %533 = call ptr @cgraph_node(ptr noundef %532) #20
  %534 = load ptr, ptr %523, align 8, !tbaa !95
  %535 = getelementptr inbounds %struct.free_info, ptr %534, i64 %525
  %536 = load ptr, ptr %535, align 8, !tbaa !176
  %537 = load i32, ptr %536, align 8
  %538 = and i32 %537, 255
  %539 = icmp eq i32 %538, 8
  br i1 %539, label %541, label %540

540:                                              ; preds = %530
  call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 2249, ptr noundef nonnull @.str.3) #20
  br label %541

541:                                              ; preds = %530, %540
  %542 = load ptr, ptr %523, align 8, !tbaa !95
  %543 = getelementptr inbounds %struct.free_info, ptr %542, i64 %525
  %544 = load ptr, ptr %543, align 8, !tbaa !176
  %545 = call ptr @cgraph_edge(ptr noundef %533, ptr noundef %544) #20
  %546 = icmp eq ptr %545, null
  br i1 %546, label %547, label %548

547:                                              ; preds = %541
  call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 2251, ptr noundef nonnull @.str.3) #20
  br label %548

548:                                              ; preds = %541, %547
  call void @cgraph_remove_edge(ptr noundef %545) #20
  %549 = load ptr, ptr %523, align 8, !tbaa !95
  %550 = getelementptr inbounds %struct.free_info, ptr %549, i64 %525, i32 1
  %551 = load ptr, ptr %550, align 8, !tbaa !178
  store ptr %551, ptr @current_function_decl, align 8, !tbaa !35
  %552 = load ptr, ptr %550, align 8, !tbaa !178
  %553 = getelementptr inbounds %struct.tree_function_decl, ptr %552, i64 0, i32 1
  %554 = load ptr, ptr %553, align 8, !tbaa !46
  call void @set_cfun(ptr noundef %554) #20
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %13) #20
  %555 = load ptr, ptr %523, align 8, !tbaa !95
  %556 = getelementptr inbounds %struct.free_info, ptr %555, i64 %525
  %557 = load ptr, ptr %556, align 8, !tbaa !176
  call void @gsi_for_stmt(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %13, ptr noundef %557) #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, ptr noundef nonnull align 8 dereferenceable(24) %13, i64 24, i1 false), !tbaa.struct !159
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %13) #20
  call void @gsi_remove(ptr noundef nonnull %12, i8 noundef zeroext 1) #20
  br label %558

558:                                              ; preds = %524, %548
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %12) #20
  %559 = add nuw nsw i64 %525, 1
  %560 = load i32, ptr %15, align 4, !tbaa !96
  %561 = sext i32 %560 to i64
  %562 = icmp slt i64 %559, %561
  br i1 %562, label %524, label %563, !llvm.loop !179

563:                                              ; preds = %558, %519
  store ptr %212, ptr @current_function_decl, align 8, !tbaa !35
  call void @pop_cfun() #20
  br label %564

564:                                              ; preds = %208, %21, %563
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #20
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #20
  ret i32 1
}

; Function Attrs: cold nounwind uwtable
define internal noundef i32 @transform_access_sites(ptr nocapture noundef readonly %0, ptr nocapture readnone %1) #10 !prof !34 {
  %3 = alloca %struct.gimple_stmt_iterator, align 8
  %4 = alloca %struct.gimple_stmt_iterator, align 8
  %5 = alloca %struct.immediate_use_iterator_d, align 8
  %6 = alloca %struct.gimple_stmt_iterator, align 8
  %7 = alloca %struct.immediate_use_iterator_d, align 8
  %8 = alloca %struct.gimple_stmt_iterator, align 8
  %9 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #20
  %10 = load ptr, ptr %0, align 8, !tbaa !35
  %11 = getelementptr inbounds %struct.matrix_info, ptr %10, i64 0, i32 2
  %12 = load i32, ptr %11, align 4, !tbaa !96
  %13 = icmp slt i32 %12, 2
  br i1 %13, label %624, label %14

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.matrix_info, ptr %10, i64 0, i32 14
  %16 = load ptr, ptr %15, align 8, !tbaa !121
  %17 = icmp eq ptr %16, null
  br i1 %17, label %624, label %18

18:                                               ; preds = %14
  %19 = add nsw i32 %12, -1
  %20 = add nsw i32 %12, -1
  %21 = add nsw i32 %12, -1
  %22 = getelementptr inbounds %struct.matrix_info, ptr %10, i64 0, i32 15
  %23 = add nsw i32 %12, -1
  br label %24

24:                                               ; preds = %18, %619
  %25 = phi i64 [ 0, %18 ], [ %620, %619 ]
  %26 = load ptr, ptr %15, align 8, !tbaa !35
  %27 = icmp eq ptr %26, null
  br i1 %27, label %35, label %28

28:                                               ; preds = %24
  %29 = load i32, ptr %26, align 8, !tbaa !122
  %30 = zext i32 %29 to i64
  %31 = icmp ult i64 %25, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.VEC_access_site_info_p_base, ptr %26, i64 0, i32 2, i64 %25
  %34 = load ptr, ptr %33, align 8, !tbaa !35
  br label %35

35:                                               ; preds = %24, %28, %32
  %36 = phi ptr [ %34, %32 ], [ null, %28 ], [ null, %24 ]
  %37 = phi i1 [ false, %32 ], [ true, %28 ], [ true, %24 ]
  br i1 %37, label %621, label %38

38:                                               ; preds = %35
  %39 = getelementptr inbounds %struct.access_site_info, ptr %36, i64 0, i32 3
  %40 = load i32, ptr %39, align 8, !tbaa !127
  %41 = icmp slt i32 %40, %12
  br i1 %41, label %42, label %619

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.access_site_info, ptr %36, i64 0, i32 4
  %44 = load i8, ptr %43, align 4, !tbaa !180
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %306, label %46

46:                                               ; preds = %42
  %47 = icmp sgt i32 %40, -1
  br i1 %47, label %48, label %619

48:                                               ; preds = %46
  %49 = load ptr, ptr %36, align 8, !tbaa !125
  %50 = getelementptr inbounds %struct.gimple_statement_base, ptr %49, i64 0, i32 4
  %51 = load ptr, ptr %50, align 8, !tbaa !46
  %52 = icmp eq ptr %51, null
  br i1 %52, label %619, label %53

53:                                               ; preds = %48
  %54 = load i32, ptr %49, align 8
  %55 = and i32 %54, 255
  %56 = add nsw i32 %55, -10
  %57 = icmp ult i32 %56, -9
  br i1 %57, label %61, label %58

58:                                               ; preds = %53
  %59 = getelementptr inbounds %struct.gimple_statement_with_ops_base, ptr %49, i64 0, i32 1
  %60 = load ptr, ptr %59, align 8, !tbaa !46
  br label %61

61:                                               ; preds = %58, %53
  %62 = phi ptr [ %60, %58 ], [ null, %53 ]
  %63 = icmp eq ptr %62, null
  br i1 %63, label %74, label %64

64:                                               ; preds = %61
  %65 = and i32 %54, 254
  %66 = add nsw i32 %65, -10
  %67 = icmp ult i32 %66, -4
  br i1 %67, label %74, label %68

68:                                               ; preds = %64
  %69 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %49, i64 0, i32 1
  %70 = load ptr, ptr %69, align 8, !tbaa !46
  %71 = icmp eq ptr %70, null
  br i1 %71, label %74, label %72

72:                                               ; preds = %68
  %73 = load ptr, ptr %62, align 8, !tbaa !181
  br label %74

74:                                               ; preds = %61, %64, %68, %72
  %75 = phi ptr [ %62, %61 ], [ %62, %64 ], [ %62, %68 ], [ %73, %72 ]
  %76 = icmp eq ptr %75, null
  br i1 %76, label %82, label %77

77:                                               ; preds = %74
  %78 = getelementptr inbounds %struct.def_optype_d, ptr %75, i64 0, i32 1
  %79 = load ptr, ptr %78, align 8, !tbaa !183
  %80 = load ptr, ptr %79, align 8, !tbaa !35
  %81 = load ptr, ptr %75, align 8, !tbaa !181
  br label %82

82:                                               ; preds = %74, %77
  %83 = phi ptr [ %81, %77 ], [ %75, %74 ]
  %84 = phi i8 [ 0, %77 ], [ 1, %74 ]
  %85 = phi ptr [ %80, %77 ], [ null, %74 ]
  br i1 %76, label %103, label %86

86:                                               ; preds = %82, %98
  %87 = phi ptr [ %101, %98 ], [ %85, %82 ]
  %88 = phi i8 [ %100, %98 ], [ %84, %82 ]
  %89 = phi ptr [ %99, %98 ], [ %83, %82 ]
  %90 = getelementptr inbounds %struct.tree_ssa_name, ptr %87, i64 0, i32 1
  %91 = load ptr, ptr %90, align 8, !tbaa !46
  call void @mark_sym_for_renaming(ptr noundef %91) #20
  %92 = icmp eq ptr %89, null
  br i1 %92, label %98, label %93

93:                                               ; preds = %86
  %94 = getelementptr inbounds %struct.def_optype_d, ptr %89, i64 0, i32 1
  %95 = load ptr, ptr %94, align 8, !tbaa !183
  %96 = load ptr, ptr %95, align 8, !tbaa !35
  %97 = load ptr, ptr %89, align 8, !tbaa !181
  br label %98

98:                                               ; preds = %86, %93
  %99 = phi ptr [ %97, %93 ], [ %89, %86 ]
  %100 = phi i8 [ %88, %93 ], [ 1, %86 ]
  %101 = phi ptr [ %96, %93 ], [ null, %86 ]
  %102 = icmp eq i8 %100, 0
  br i1 %102, label %86, label %103, !llvm.loop !184

103:                                              ; preds = %98, %82
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #20
  call void @gsi_for_stmt(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %4, ptr noundef nonnull %49) #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false), !tbaa.struct !159
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #20
  %104 = load ptr, ptr %36, align 8, !tbaa !125
  %105 = load i32, ptr %104, align 8
  %106 = and i32 %105, 255
  %107 = icmp eq i32 %106, 6
  br i1 %107, label %109, label %108

108:                                              ; preds = %103
  call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 1843, ptr noundef nonnull @.str.3) #20
  br label %109

109:                                              ; preds = %103, %108
  %110 = load ptr, ptr %36, align 8, !tbaa !125
  %111 = load i32, ptr %110, align 8
  %112 = and i32 %111, 255
  %113 = add nsw i32 %112, -10
  %114 = icmp ult i32 %113, -9
  br i1 %114, label %127, label %115

115:                                              ; preds = %109
  %116 = zext nneg i32 %112 to i64
  %117 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %116
  %118 = load i32, ptr %117, align 4, !tbaa !50
  %119 = zext i32 %118 to i64
  %120 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %119
  %121 = load i64, ptr %120, align 8, !tbaa !83
  %122 = icmp eq i64 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %115
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1622, ptr noundef nonnull @.str.3) #20
  br label %124

124:                                              ; preds = %123, %115
  %125 = getelementptr inbounds i8, ptr %110, i64 %121
  %126 = load ptr, ptr %125, align 8, !tbaa !35
  br label %127

127:                                              ; preds = %109, %124
  %128 = phi ptr [ %126, %124 ], [ null, %109 ]
  %129 = load i64, ptr %128, align 8
  %130 = and i64 %129, 65535
  %131 = icmp eq i64 %130, 141
  br i1 %131, label %132, label %302

132:                                              ; preds = %127
  %133 = load i32, ptr %39, align 8, !tbaa !127
  %134 = icmp slt i32 %133, %19
  br i1 %134, label %135, label %302

135:                                              ; preds = %132
  %136 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %5, i64 0, i32 1
  %137 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %5, i64 0, i32 2
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #20
  %138 = getelementptr inbounds %struct.tree_ssa_name, ptr %128, i64 0, i32 5
  store ptr %138, ptr %136, align 8, !tbaa !163
  %139 = getelementptr inbounds %struct.tree_ssa_name, ptr %128, i64 0, i32 5, i32 1
  %140 = load ptr, ptr %139, align 8, !tbaa !166
  store ptr %140, ptr %5, align 8, !tbaa !167
  %141 = icmp eq ptr %140, %138
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %137, i8 0, i64 40, i1 false)
  br i1 %141, label %143, label %142

142:                                              ; preds = %135
  call fastcc void @link_use_stmts_after(ptr noundef %140, ptr noundef nonnull %5)
  br label %143

143:                                              ; preds = %135, %142
  %144 = load ptr, ptr %5, align 8, !tbaa !167
  %145 = load ptr, ptr %136, align 8, !tbaa !163
  %146 = icmp eq ptr %144, %145
  br i1 %146, label %301, label %147

147:                                              ; preds = %143
  %148 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %5, i64 0, i32 3
  %149 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %5, i64 0, i32 2, i32 1
  %150 = getelementptr inbounds %struct.tree_common, ptr %128, i64 0, i32 2
  br label %151

151:                                              ; preds = %147, %297
  %152 = phi ptr [ %144, %147 ], [ %298, %297 ]
  %153 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %152, i64 0, i32 1
  %154 = load ptr, ptr %153, align 8, !tbaa !166
  store ptr %154, ptr %148, align 8, !tbaa !168
  %155 = load ptr, ptr %5, align 8, !tbaa !167
  %156 = icmp eq ptr %155, %137
  br i1 %156, label %286, label %157

157:                                              ; preds = %151, %282
  %158 = phi ptr [ %283, %282 ], [ %152, %151 ]
  %159 = load ptr, ptr %36, align 8, !tbaa !125
  %160 = load i32, ptr %159, align 8
  %161 = trunc i32 %160 to i8
  switch i8 %161, label %164 [
    i8 6, label %162
    i8 1, label %162
    i8 8, label %165
  ]

162:                                              ; preds = %157, %157
  %163 = lshr i32 %160, 16
  br label %165

164:                                              ; preds = %157
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1446, ptr noundef nonnull @.str.3) #20
  br label %165

165:                                              ; preds = %164, %162, %157
  %166 = phi i32 [ %163, %162 ], [ 0, %164 ], [ 59, %157 ]
  %167 = zext nneg i32 %166 to i64
  %168 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %167
  %169 = load i8, ptr %168, align 1, !tbaa !46
  %170 = icmp eq i8 %169, 3
  br i1 %170, label %171, label %191

171:                                              ; preds = %165
  %172 = load i32, ptr %159, align 8
  %173 = and i32 %172, 255
  %174 = add nsw i32 %173, -1
  %175 = icmp ult i32 %174, 9
  call void @llvm.assume(i1 %175)
  %176 = zext nneg i32 %173 to i64
  %177 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %176
  %178 = load i32, ptr %177, align 4, !tbaa !50
  %179 = zext i32 %178 to i64
  %180 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %179
  %181 = load i64, ptr %180, align 8, !tbaa !83
  %182 = icmp eq i64 %181, 0
  br i1 %182, label %183, label %184

183:                                              ; preds = %171
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1622, ptr noundef nonnull @.str.3) #20
  br label %184

184:                                              ; preds = %183, %171
  %185 = getelementptr inbounds i8, ptr %159, i64 %181
  %186 = getelementptr inbounds ptr, ptr %185, i64 1
  %187 = load ptr, ptr %186, align 8, !tbaa !35
  %188 = load i64, ptr %187, align 8
  %189 = trunc i64 %188 to i32
  %190 = and i32 %189, 65535
  br label %191

191:                                              ; preds = %165, %184
  %192 = phi i32 [ %190, %184 ], [ %166, %165 ]
  %193 = icmp eq i32 %192, 47
  br i1 %193, label %195, label %194

194:                                              ; preds = %191
  call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 1859, ptr noundef nonnull @.str.3) #20
  br label %195

195:                                              ; preds = %191, %194
  %196 = load ptr, ptr %150, align 8, !tbaa !46
  %197 = call ptr @create_tmp_var(ptr noundef %196, ptr noundef nonnull @.str.15) #20
  %198 = call zeroext i8 @add_referenced_var(ptr noundef %197) #20
  %199 = load ptr, ptr %36, align 8, !tbaa !125
  %200 = load i32, ptr %199, align 8
  %201 = and i32 %200, 255
  %202 = add nsw i32 %201, -1
  %203 = icmp ult i32 %202, 9
  call void @llvm.assume(i1 %203)
  %204 = zext nneg i32 %201 to i64
  %205 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %204
  %206 = load i32, ptr %205, align 4, !tbaa !50
  %207 = zext i32 %206 to i64
  %208 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %207
  %209 = load i64, ptr %208, align 8, !tbaa !83
  %210 = icmp eq i64 %209, 0
  br i1 %210, label %211, label %212

211:                                              ; preds = %195
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1622, ptr noundef nonnull @.str.3) #20
  br label %212

212:                                              ; preds = %211, %195
  %213 = getelementptr inbounds i8, ptr %199, i64 %209
  %214 = getelementptr inbounds ptr, ptr %213, i64 1
  %215 = load ptr, ptr %214, align 8, !tbaa !35
  %216 = getelementptr inbounds %struct.tree_common, ptr %197, i64 0, i32 2
  %217 = load ptr, ptr %216, align 8, !tbaa !46
  %218 = getelementptr inbounds %struct.tree_exp, ptr %215, i64 0, i32 3
  %219 = load ptr, ptr %218, align 8, !tbaa !46
  %220 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %217, ptr noundef %219) #20
  %221 = call ptr @gimple_build_assign_stat(ptr noundef %197, ptr noundef %220) #20
  %222 = load ptr, ptr @cfun, align 8, !tbaa !35
  %223 = call ptr @make_ssa_name_fn(ptr noundef %222, ptr noundef %197, ptr noundef %221) #20
  %224 = load i32, ptr %221, align 8
  %225 = and i32 %224, 255
  %226 = add nsw i32 %225, -10
  %227 = icmp ult i32 %226, -9
  br i1 %227, label %232, label %228

228:                                              ; preds = %212
  %229 = getelementptr inbounds %struct.gimple_statement_base, ptr %221, i64 0, i32 3
  %230 = load i32, ptr %229, align 4, !tbaa !46
  %231 = icmp eq i32 %230, 0
  br i1 %231, label %232, label %233

232:                                              ; preds = %228, %212
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1665, ptr noundef nonnull @.str.3) #20
  br label %233

233:                                              ; preds = %232, %228
  %234 = load i32, ptr %221, align 8
  %235 = and i32 %234, 255
  %236 = zext nneg i32 %235 to i64
  %237 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %236
  %238 = load i32, ptr %237, align 4, !tbaa !50
  %239 = zext i32 %238 to i64
  %240 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %239
  %241 = load i64, ptr %240, align 8, !tbaa !83
  %242 = icmp eq i64 %241, 0
  br i1 %242, label %243, label %244

243:                                              ; preds = %233
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1622, ptr noundef nonnull @.str.3) #20
  br label %244

244:                                              ; preds = %243, %233
  %245 = getelementptr inbounds i8, ptr %221, i64 %241
  store ptr %223, ptr %245, align 8, !tbaa !35
  %246 = icmp eq ptr %223, null
  br i1 %246, label %253, label %247

247:                                              ; preds = %244
  %248 = load i64, ptr %223, align 8
  %249 = and i64 %248, 65535
  %250 = icmp eq i64 %249, 141
  br i1 %250, label %251, label %253

251:                                              ; preds = %247
  %252 = getelementptr inbounds %struct.tree_ssa_name, ptr %223, i64 0, i32 2
  store ptr %221, ptr %252, align 8, !tbaa !46
  br label %253

253:                                              ; preds = %244, %247, %251
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #20
  %254 = load ptr, ptr %36, align 8, !tbaa !125
  call void @gsi_for_stmt(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %6, ptr noundef %254) #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false), !tbaa.struct !159
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #20
  call void @gsi_insert_after(ptr noundef nonnull %3, ptr noundef nonnull %221, i32 noundef 1) #20
  %255 = load ptr, ptr %158, align 8, !tbaa !169
  %256 = icmp eq ptr %255, null
  br i1 %256, label %262, label %257

257:                                              ; preds = %253
  %258 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %158, i64 0, i32 1
  %259 = load ptr, ptr %258, align 8, !tbaa !166
  %260 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %255, i64 0, i32 1
  store ptr %259, ptr %260, align 8, !tbaa !166
  %261 = load ptr, ptr %258, align 8, !tbaa !166
  store ptr %255, ptr %261, align 8, !tbaa !169
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %158, i8 0, i64 16, i1 false)
  br label %262

262:                                              ; preds = %257, %253
  %263 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %158, i64 0, i32 3
  %264 = load ptr, ptr %263, align 8, !tbaa !170
  store ptr %223, ptr %264, align 8, !tbaa !35
  br i1 %246, label %269, label %265

265:                                              ; preds = %262
  %266 = load i64, ptr %223, align 8
  %267 = and i64 %266, 65535
  %268 = icmp eq i64 %267, 141
  br i1 %268, label %270, label %269

269:                                              ; preds = %265, %262
  store ptr null, ptr %158, align 8, !tbaa !169
  br label %276

270:                                              ; preds = %265
  %271 = getelementptr inbounds %struct.tree_ssa_name, ptr %223, i64 0, i32 5
  store ptr %271, ptr %158, align 8, !tbaa !169
  %272 = getelementptr inbounds %struct.tree_ssa_name, ptr %223, i64 0, i32 5, i32 1
  %273 = load ptr, ptr %272, align 8, !tbaa !166
  %274 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %158, i64 0, i32 1
  store ptr %273, ptr %274, align 8, !tbaa !166
  %275 = load ptr, ptr %272, align 8, !tbaa !166
  store ptr %158, ptr %275, align 8, !tbaa !169
  store ptr %158, ptr %272, align 8, !tbaa !166
  br label %276

276:                                              ; preds = %269, %270
  %277 = load ptr, ptr %148, align 8, !tbaa !168
  store ptr %277, ptr %5, align 8, !tbaa !167
  %278 = icmp eq ptr %277, %137
  br i1 %278, label %282, label %279

279:                                              ; preds = %276
  %280 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %277, i64 0, i32 1
  %281 = load ptr, ptr %280, align 8, !tbaa !166
  store ptr %281, ptr %148, align 8, !tbaa !168
  br label %282

282:                                              ; preds = %276, %279
  %283 = phi ptr [ %277, %279 ], [ null, %276 ]
  %284 = load ptr, ptr %5, align 8, !tbaa !167
  %285 = icmp eq ptr %284, %137
  br i1 %285, label %286, label %157, !llvm.loop !185

286:                                              ; preds = %282, %151
  %287 = load ptr, ptr %149, align 8, !tbaa !166
  store ptr %287, ptr %5, align 8, !tbaa !167
  %288 = load ptr, ptr %136, align 8, !tbaa !163
  %289 = icmp eq ptr %287, %288
  br i1 %289, label %290, label %296

290:                                              ; preds = %286
  %291 = load ptr, ptr %137, align 8, !tbaa !169
  %292 = icmp eq ptr %291, null
  br i1 %292, label %297, label %293

293:                                              ; preds = %290
  %294 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %291, i64 0, i32 1
  store ptr %287, ptr %294, align 8, !tbaa !166
  %295 = load ptr, ptr %149, align 8, !tbaa !166
  store ptr %291, ptr %295, align 8, !tbaa !169
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %137, i8 0, i64 16, i1 false)
  br label %297

296:                                              ; preds = %286
  call fastcc void @link_use_stmts_after(ptr noundef %287, ptr noundef nonnull %5)
  br label %297

297:                                              ; preds = %290, %293, %296
  %298 = load ptr, ptr %5, align 8, !tbaa !167
  %299 = load ptr, ptr %136, align 8, !tbaa !163
  %300 = icmp eq ptr %298, %299
  br i1 %300, label %301, label %151, !llvm.loop !186

301:                                              ; preds = %297, %143
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #20
  br label %302

302:                                              ; preds = %301, %132, %127
  %303 = load i32, ptr %39, align 8, !tbaa !127
  %304 = icmp slt i32 %303, %20
  br i1 %304, label %305, label %619

305:                                              ; preds = %302
  call void @gsi_remove(ptr noundef nonnull %3, i8 noundef zeroext 1) #20
  br label %619

306:                                              ; preds = %42
  %307 = load ptr, ptr %36, align 8, !tbaa !125
  %308 = load i32, ptr %307, align 8
  %309 = trunc i32 %308 to i8
  switch i8 %309, label %312 [
    i8 6, label %310
    i8 1, label %310
    i8 8, label %313
  ]

310:                                              ; preds = %306, %306
  %311 = lshr i32 %308, 16
  br label %313

312:                                              ; preds = %306
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1446, ptr noundef nonnull @.str.3) #20
  br label %313

313:                                              ; preds = %312, %310, %306
  %314 = phi i32 [ %311, %310 ], [ 0, %312 ], [ 59, %306 ]
  %315 = zext nneg i32 %314 to i64
  %316 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %315
  %317 = load i8, ptr %316, align 1, !tbaa !46
  %318 = icmp eq i8 %317, 3
  br i1 %318, label %319, label %339

319:                                              ; preds = %313
  %320 = load i32, ptr %307, align 8
  %321 = and i32 %320, 255
  %322 = add nsw i32 %321, -1
  %323 = icmp ult i32 %322, 9
  call void @llvm.assume(i1 %323)
  %324 = zext nneg i32 %321 to i64
  %325 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %324
  %326 = load i32, ptr %325, align 4, !tbaa !50
  %327 = zext i32 %326 to i64
  %328 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %327
  %329 = load i64, ptr %328, align 8, !tbaa !83
  %330 = icmp eq i64 %329, 0
  br i1 %330, label %331, label %332

331:                                              ; preds = %319
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1622, ptr noundef nonnull @.str.3) #20
  br label %332

332:                                              ; preds = %331, %319
  %333 = getelementptr inbounds i8, ptr %307, i64 %329
  %334 = getelementptr inbounds ptr, ptr %333, i64 1
  %335 = load ptr, ptr %334, align 8, !tbaa !35
  %336 = load i64, ptr %335, align 8
  %337 = trunc i64 %336 to i32
  %338 = and i32 %337, 65535
  br label %339

339:                                              ; preds = %313, %332
  %340 = phi i32 [ %338, %332 ], [ %314, %313 ]
  switch i32 %340, label %619 [
    i32 47, label %341
    i32 66, label %414
  ]

341:                                              ; preds = %339
  %342 = load i32, ptr %39, align 8, !tbaa !127
  %343 = icmp slt i32 %342, %21
  br i1 %343, label %344, label %412

344:                                              ; preds = %341
  %345 = load ptr, ptr %36, align 8, !tbaa !125
  %346 = load i32, ptr %345, align 8
  %347 = and i32 %346, 255
  %348 = add nsw i32 %347, -1
  %349 = icmp ult i32 %348, 9
  call void @llvm.assume(i1 %349)
  %350 = zext nneg i32 %347 to i64
  %351 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %350
  %352 = load i32, ptr %351, align 4, !tbaa !50
  %353 = zext i32 %352 to i64
  %354 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %353
  %355 = load i64, ptr %354, align 8, !tbaa !83
  %356 = icmp eq i64 %355, 0
  br i1 %356, label %357, label %358

357:                                              ; preds = %344
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1622, ptr noundef nonnull @.str.3) #20
  br label %358

358:                                              ; preds = %357, %344
  %359 = getelementptr inbounds i8, ptr %345, i64 %355
  %360 = getelementptr inbounds ptr, ptr %359, i64 1
  %361 = load ptr, ptr %360, align 8, !tbaa !35
  %362 = getelementptr inbounds %struct.tree_common, ptr %361, i64 0, i32 2
  %363 = load ptr, ptr %362, align 8, !tbaa !46
  %364 = load ptr, ptr %36, align 8, !tbaa !125
  %365 = load i32, ptr %364, align 8
  %366 = and i32 %365, 255
  %367 = add nsw i32 %366, -1
  %368 = icmp ult i32 %367, 9
  call void @llvm.assume(i1 %368)
  %369 = zext nneg i32 %366 to i64
  %370 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %369
  %371 = load i32, ptr %370, align 4, !tbaa !50
  %372 = zext i32 %371 to i64
  %373 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %372
  %374 = load i64, ptr %373, align 8, !tbaa !83
  %375 = icmp eq i64 %374, 0
  br i1 %375, label %376, label %377

376:                                              ; preds = %358
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1622, ptr noundef nonnull @.str.3) #20
  br label %377

377:                                              ; preds = %376, %358
  %378 = getelementptr inbounds i8, ptr %364, i64 %374
  %379 = getelementptr inbounds ptr, ptr %378, i64 1
  %380 = load ptr, ptr %379, align 8, !tbaa !35
  %381 = getelementptr inbounds %struct.tree_exp, ptr %380, i64 0, i32 3
  %382 = load ptr, ptr %381, align 8, !tbaa !46
  %383 = call ptr @build1_stat(i32 noundef 116, ptr noundef %363, ptr noundef %382) #20
  %384 = load ptr, ptr %36, align 8, !tbaa !125
  %385 = load i32, ptr %384, align 8
  %386 = and i32 %385, 65535
  %387 = or disjoint i32 %386, 7602176
  store i32 %387, ptr %384, align 8
  %388 = load ptr, ptr %36, align 8, !tbaa !125
  %389 = load i32, ptr %388, align 8
  %390 = and i32 %389, 255
  %391 = add nsw i32 %390, -10
  %392 = icmp ult i32 %391, -9
  br i1 %392, label %397, label %393

393:                                              ; preds = %377
  %394 = getelementptr inbounds %struct.gimple_statement_base, ptr %388, i64 0, i32 3
  %395 = load i32, ptr %394, align 4, !tbaa !46
  %396 = icmp ugt i32 %395, 1
  br i1 %396, label %398, label %397

397:                                              ; preds = %393, %377
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1665, ptr noundef nonnull @.str.3) #20
  br label %398

398:                                              ; preds = %397, %393
  %399 = load i32, ptr %388, align 8
  %400 = and i32 %399, 255
  %401 = zext nneg i32 %400 to i64
  %402 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %401
  %403 = load i32, ptr %402, align 4, !tbaa !50
  %404 = zext i32 %403 to i64
  %405 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %404
  %406 = load i64, ptr %405, align 8, !tbaa !83
  %407 = icmp eq i64 %406, 0
  br i1 %407, label %408, label %409

408:                                              ; preds = %398
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1622, ptr noundef nonnull @.str.3) #20
  br label %409

409:                                              ; preds = %398, %408
  %410 = getelementptr inbounds i8, ptr %388, i64 %406
  %411 = getelementptr inbounds ptr, ptr %410, i64 1
  store ptr %383, ptr %411, align 8, !tbaa !35
  br label %619

412:                                              ; preds = %341
  %413 = icmp eq i32 %340, 66
  br i1 %413, label %414, label %619

414:                                              ; preds = %339, %412
  %415 = load i32, ptr %39, align 8, !tbaa !127
  %416 = icmp slt i32 %415, %12
  br i1 %416, label %417, label %619

417:                                              ; preds = %414
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %7) #20
  %418 = load i32, ptr %39, align 8, !tbaa !127
  %419 = sext i32 %418 to i64
  %420 = getelementptr inbounds %struct.access_site_info, ptr %36, i64 0, i32 1
  %421 = load ptr, ptr %420, align 8, !tbaa !133
  %422 = load ptr, ptr %22, align 8, !tbaa !147
  %423 = getelementptr inbounds i32, ptr %422, i64 %419
  %424 = load i32, ptr %423, align 4, !tbaa !50
  %425 = icmp eq i32 %424, %23
  br i1 %425, label %426, label %479

426:                                              ; preds = %417
  %427 = load i1, ptr @check_transpose_p, align 1
  br i1 %427, label %428, label %498

428:                                              ; preds = %426
  %429 = getelementptr inbounds %struct.matrix_info, ptr %10, i64 0, i32 6
  %430 = load i8, ptr %429, align 4, !tbaa !97
  %431 = icmp eq i8 %430, 0
  br i1 %431, label %498, label %432

432:                                              ; preds = %428
  %433 = getelementptr inbounds %struct.matrix_info, ptr %10, i64 0, i32 11
  %434 = zext nneg i32 %12 to i64
  %435 = load ptr, ptr %433, align 8, !tbaa !160
  %436 = getelementptr inbounds i64, ptr %435, i64 %434
  %437 = load i64, ptr %436, align 8, !tbaa !83
  %438 = getelementptr i64, ptr %435, i64 %419
  %439 = getelementptr i64, ptr %438, i64 1
  %440 = load i64, ptr %439, align 8, !tbaa !83
  %441 = call i32 @exact_log2(i64 noundef %437) #20
  %442 = call i32 @exact_log2(i64 noundef %440) #20
  %443 = icmp ne i32 %441, -1
  %444 = icmp ne i32 %442, -1
  %445 = select i1 %443, i1 %444, i1 false
  br i1 %445, label %446, label %464

446:                                              ; preds = %432
  %447 = icmp eq i32 %441, %442
  br i1 %447, label %474, label %448

448:                                              ; preds = %446
  %449 = icmp sgt i32 %441, %442
  %450 = getelementptr inbounds %struct.tree_common, ptr %421, i64 0, i32 2
  %451 = load ptr, ptr %450, align 8, !tbaa !46
  br i1 %449, label %452, label %458

452:                                              ; preds = %448
  %453 = sub nsw i32 %441, %442
  %454 = sext i32 %453 to i64
  %455 = call ptr @build_int_cst(ptr noundef %451, i64 noundef %454) #20
  %456 = load ptr, ptr %450, align 8, !tbaa !46
  %457 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 83, ptr noundef %456, ptr noundef %421, ptr noundef %455) #20
  br label %474

458:                                              ; preds = %448
  %459 = sub nsw i32 %442, %441
  %460 = sext i32 %459 to i64
  %461 = call ptr @build_int_cst(ptr noundef %451, i64 noundef %460) #20
  %462 = load ptr, ptr %450, align 8, !tbaa !46
  %463 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 84, ptr noundef %462, ptr noundef %421, ptr noundef %461) #20
  br label %474

464:                                              ; preds = %432
  %465 = getelementptr inbounds %struct.tree_common, ptr %421, i64 0, i32 2
  %466 = load ptr, ptr %465, align 8, !tbaa !46
  %467 = call ptr @build_int_cst(ptr noundef %466, i64 noundef %437) #20
  %468 = load ptr, ptr %465, align 8, !tbaa !46
  %469 = call ptr @build_int_cst(ptr noundef %468, i64 noundef %440) #20
  %470 = load ptr, ptr %465, align 8, !tbaa !46
  %471 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 67, ptr noundef %470, ptr noundef %421, ptr noundef %467) #20
  %472 = load ptr, ptr %465, align 8, !tbaa !46
  %473 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 65, ptr noundef %472, ptr noundef %471, ptr noundef %469) #20
  br label %474

474:                                              ; preds = %446, %452, %458, %464
  %475 = phi ptr [ %457, %452 ], [ %463, %458 ], [ %473, %464 ], [ %421, %446 ]
  %476 = icmp eq ptr %475, %421
  br i1 %476, label %498, label %477

477:                                              ; preds = %474
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #20
  %478 = load ptr, ptr %36, align 8, !tbaa !125
  call void @gsi_for_stmt(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %8, ptr noundef %478) #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %8, i64 24, i1 false), !tbaa.struct !159
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #20
  br label %495

479:                                              ; preds = %417
  %480 = getelementptr inbounds %struct.matrix_info, ptr %10, i64 0, i32 9
  %481 = load ptr, ptr %480, align 8, !tbaa !143
  %482 = sext i32 %424 to i64
  %483 = getelementptr ptr, ptr %481, i64 %482
  %484 = getelementptr ptr, ptr %483, i64 1
  %485 = load ptr, ptr %484, align 8, !tbaa !35
  %486 = load ptr, ptr @sizetype_tab, align 16, !tbaa !35
  %487 = getelementptr inbounds %struct.access_site_info, ptr %36, i64 0, i32 2
  %488 = load ptr, ptr %487, align 8, !tbaa !187
  %489 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %486, ptr noundef %488) #20
  %490 = load ptr, ptr @sizetype_tab, align 16, !tbaa !35
  %491 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %490, ptr noundef %485) #20
  %492 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 65, ptr noundef %486, ptr noundef %489, ptr noundef %491) #20
  %493 = call zeroext i8 @add_referenced_var(ptr noundef %485) #20
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %9) #20
  %494 = load ptr, ptr %36, align 8, !tbaa !125
  call void @gsi_for_stmt(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %9, ptr noundef %494) #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %9, i64 24, i1 false), !tbaa.struct !159
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %9) #20
  br label %495

495:                                              ; preds = %479, %477
  %496 = phi ptr [ %475, %477 ], [ %492, %479 ]
  %497 = call ptr @force_gimple_operand_gsi(ptr noundef nonnull %3, ptr noundef %496, i8 noundef zeroext 1, ptr noundef null, i8 noundef zeroext 1, i32 noundef 1) #20
  br label %498

498:                                              ; preds = %495, %474, %426, %428
  %499 = phi ptr [ %421, %428 ], [ %421, %426 ], [ %421, %474 ], [ %497, %495 ]
  %500 = icmp eq ptr %499, %421
  br i1 %500, label %618, label %501

501:                                              ; preds = %498
  %502 = load i64, ptr %421, align 8
  %503 = trunc i64 %502 to i16
  switch i16 %503, label %586 [
    i16 141, label %504
    i16 23, label %587
  ]

504:                                              ; preds = %501
  %505 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %7, i64 0, i32 1
  %506 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %7, i64 0, i32 2
  %507 = getelementptr inbounds %struct.tree_ssa_name, ptr %421, i64 0, i32 5
  store ptr %507, ptr %505, align 8, !tbaa !163
  %508 = getelementptr inbounds %struct.tree_ssa_name, ptr %421, i64 0, i32 5, i32 1
  %509 = load ptr, ptr %508, align 8, !tbaa !166
  store ptr %509, ptr %7, align 8, !tbaa !167
  %510 = icmp eq ptr %509, %507
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %506, i8 0, i64 40, i1 false)
  br i1 %510, label %515, label %511

511:                                              ; preds = %504
  call fastcc void @link_use_stmts_after(ptr noundef %509, ptr noundef nonnull %7)
  %512 = load ptr, ptr %7, align 8, !tbaa !167
  %513 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %512, i64 0, i32 2
  %514 = load ptr, ptr %513, align 8, !tbaa !46
  br label %515

515:                                              ; preds = %504, %511
  %516 = phi ptr [ %514, %511 ], [ null, %504 ]
  %517 = load ptr, ptr %7, align 8, !tbaa !167
  %518 = load ptr, ptr %505, align 8, !tbaa !163
  %519 = icmp eq ptr %517, %518
  br i1 %519, label %618, label %520

520:                                              ; preds = %515
  %521 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %7, i64 0, i32 3
  %522 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %7, i64 0, i32 2, i32 1
  %523 = icmp eq ptr %499, null
  %524 = getelementptr inbounds %struct.tree_ssa_name, ptr %499, i64 0, i32 5
  %525 = getelementptr inbounds %struct.tree_ssa_name, ptr %499, i64 0, i32 5, i32 1
  br label %526

526:                                              ; preds = %520, %581
  %527 = phi ptr [ %517, %520 ], [ %583, %581 ]
  %528 = phi ptr [ %516, %520 ], [ %582, %581 ]
  %529 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %527, i64 0, i32 1
  %530 = load ptr, ptr %529, align 8, !tbaa !166
  store ptr %530, ptr %521, align 8, !tbaa !168
  %531 = load ptr, ptr %7, align 8, !tbaa !167
  %532 = icmp eq ptr %531, %506
  br i1 %532, label %567, label %533

533:                                              ; preds = %526, %563
  %534 = phi ptr [ %564, %563 ], [ %527, %526 ]
  %535 = load ptr, ptr %36, align 8, !tbaa !125
  %536 = icmp eq ptr %528, %535
  br i1 %536, label %537, label %557

537:                                              ; preds = %533
  %538 = load ptr, ptr %534, align 8, !tbaa !169
  %539 = icmp eq ptr %538, null
  br i1 %539, label %545, label %540

540:                                              ; preds = %537
  %541 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %534, i64 0, i32 1
  %542 = load ptr, ptr %541, align 8, !tbaa !166
  %543 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %538, i64 0, i32 1
  store ptr %542, ptr %543, align 8, !tbaa !166
  %544 = load ptr, ptr %541, align 8, !tbaa !166
  store ptr %538, ptr %544, align 8, !tbaa !169
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %534, i8 0, i64 16, i1 false)
  br label %545

545:                                              ; preds = %540, %537
  %546 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %534, i64 0, i32 3
  %547 = load ptr, ptr %546, align 8, !tbaa !170
  store ptr %499, ptr %547, align 8, !tbaa !35
  br i1 %523, label %552, label %548

548:                                              ; preds = %545
  %549 = load i64, ptr %499, align 8
  %550 = and i64 %549, 65535
  %551 = icmp eq i64 %550, 141
  br i1 %551, label %553, label %552

552:                                              ; preds = %548, %545
  store ptr null, ptr %534, align 8, !tbaa !169
  br label %557

553:                                              ; preds = %548
  store ptr %524, ptr %534, align 8, !tbaa !169
  %554 = load ptr, ptr %525, align 8, !tbaa !166
  %555 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %534, i64 0, i32 1
  store ptr %554, ptr %555, align 8, !tbaa !166
  %556 = load ptr, ptr %525, align 8, !tbaa !166
  store ptr %534, ptr %556, align 8, !tbaa !169
  store ptr %534, ptr %525, align 8, !tbaa !166
  br label %557

557:                                              ; preds = %553, %552, %533
  %558 = load ptr, ptr %521, align 8, !tbaa !168
  store ptr %558, ptr %7, align 8, !tbaa !167
  %559 = icmp eq ptr %558, %506
  br i1 %559, label %563, label %560

560:                                              ; preds = %557
  %561 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %558, i64 0, i32 1
  %562 = load ptr, ptr %561, align 8, !tbaa !166
  store ptr %562, ptr %521, align 8, !tbaa !168
  br label %563

563:                                              ; preds = %557, %560
  %564 = phi ptr [ %558, %560 ], [ null, %557 ]
  %565 = load ptr, ptr %7, align 8, !tbaa !167
  %566 = icmp eq ptr %565, %506
  br i1 %566, label %567, label %533, !llvm.loop !188

567:                                              ; preds = %563, %526
  %568 = load ptr, ptr %522, align 8, !tbaa !166
  store ptr %568, ptr %7, align 8, !tbaa !167
  %569 = load ptr, ptr %505, align 8, !tbaa !163
  %570 = icmp eq ptr %568, %569
  br i1 %570, label %571, label %577

571:                                              ; preds = %567
  %572 = load ptr, ptr %506, align 8, !tbaa !169
  %573 = icmp eq ptr %572, null
  br i1 %573, label %581, label %574

574:                                              ; preds = %571
  %575 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %572, i64 0, i32 1
  store ptr %568, ptr %575, align 8, !tbaa !166
  %576 = load ptr, ptr %522, align 8, !tbaa !166
  store ptr %572, ptr %576, align 8, !tbaa !169
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %506, i8 0, i64 16, i1 false)
  br label %581

577:                                              ; preds = %567
  call fastcc void @link_use_stmts_after(ptr noundef %568, ptr noundef nonnull %7)
  %578 = load ptr, ptr %7, align 8, !tbaa !167
  %579 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %578, i64 0, i32 2
  %580 = load ptr, ptr %579, align 8, !tbaa !46
  br label %581

581:                                              ; preds = %571, %574, %577
  %582 = phi ptr [ %580, %577 ], [ null, %574 ], [ null, %571 ]
  %583 = load ptr, ptr %7, align 8, !tbaa !167
  %584 = load ptr, ptr %505, align 8, !tbaa !163
  %585 = icmp eq ptr %583, %584
  br i1 %585, label %618, label %526, !llvm.loop !189

586:                                              ; preds = %501
  call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 1956, ptr noundef nonnull @.str.3) #20
  br label %587

587:                                              ; preds = %501, %586
  %588 = load ptr, ptr %36, align 8, !tbaa !125
  %589 = load i32, ptr %588, align 8
  %590 = and i32 %589, 255
  %591 = add nsw i32 %590, -10
  %592 = icmp ult i32 %591, -9
  br i1 %592, label %597, label %593

593:                                              ; preds = %587
  %594 = getelementptr inbounds %struct.gimple_statement_base, ptr %588, i64 0, i32 3
  %595 = load i32, ptr %594, align 4, !tbaa !46
  %596 = icmp ugt i32 %595, 2
  br i1 %596, label %598, label %597

597:                                              ; preds = %593, %587
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1665, ptr noundef nonnull @.str.3) #20
  br label %598

598:                                              ; preds = %597, %593
  %599 = load i32, ptr %588, align 8
  %600 = and i32 %599, 255
  %601 = zext nneg i32 %600 to i64
  %602 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %601
  %603 = load i32, ptr %602, align 4, !tbaa !50
  %604 = zext i32 %603 to i64
  %605 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %604
  %606 = load i64, ptr %605, align 8, !tbaa !83
  %607 = icmp eq i64 %606, 0
  br i1 %607, label %608, label %609

608:                                              ; preds = %598
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1622, ptr noundef nonnull @.str.3) #20
  br label %609

609:                                              ; preds = %598, %608
  %610 = getelementptr inbounds i8, ptr %588, i64 %606
  %611 = getelementptr inbounds ptr, ptr %610, i64 2
  store ptr %499, ptr %611, align 8, !tbaa !35
  %612 = load ptr, ptr %36, align 8, !tbaa !125
  %613 = load i32, ptr %612, align 8
  %614 = and i32 %613, 255
  %615 = add nsw i32 %614, -10
  %616 = icmp ult i32 %615, -9
  br i1 %616, label %618, label %617

617:                                              ; preds = %609
  call void @gimple_set_modified(ptr noundef nonnull %612, i8 noundef zeroext 1) #20
  call void @update_stmt_operands(ptr noundef nonnull %612) #20
  br label %618

618:                                              ; preds = %581, %515, %617, %609, %498
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %7) #20
  br label %619

619:                                              ; preds = %409, %618, %339, %412, %414, %46, %48, %305, %302, %38
  call void @free(ptr noundef %36)
  %620 = add nuw i64 %25, 1
  br label %24, !llvm.loop !190

621:                                              ; preds = %35
  br i1 %27, label %623, label %622

622:                                              ; preds = %621
  call void @free(ptr noundef %26)
  br label %623

623:                                              ; preds = %621, %622
  store ptr null, ptr %15, align 8, !tbaa !35
  call void @update_ssa(i32 noundef 2048) #20
  br label %624

624:                                              ; preds = %2, %14, %623
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #20
  ret i32 1
}

; Function Attrs: cold nounwind uwtable
define internal noundef i32 @dump_matrix_reorg_analysis(ptr nocapture noundef readonly %0, ptr nocapture readnone %1) #10 !prof !34 {
  %3 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %4 = icmp eq ptr %3, null
  br i1 %4, label %25, label %5

5:                                                ; preds = %2
  %6 = load ptr, ptr %0, align 8, !tbaa !35
  %7 = load ptr, ptr %6, align 8, !tbaa !92
  %8 = tail call ptr @get_name(ptr noundef %7) #20
  %9 = getelementptr inbounds %struct.matrix_info, ptr %6, i64 0, i32 2
  %10 = load i32, ptr %9, align 4, !tbaa !96
  %11 = getelementptr inbounds %struct.matrix_info, ptr %6, i64 0, i32 1
  %12 = load i32, ptr %11, align 8, !tbaa !94
  %13 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %3, ptr noundef nonnull @.str.16, ptr noundef %8, i32 noundef %10, i32 noundef %12)
  %14 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %15 = getelementptr inbounds %struct.matrix_info, ptr %6, i64 0, i32 5
  %16 = load i32, ptr %15, align 8, !tbaa !138
  %17 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %14, ptr noundef nonnull @.str.17, i32 noundef %16)
  %18 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %19 = tail call i32 @fputc(i32 10, ptr %18)
  %20 = load i32, ptr %9, align 4, !tbaa !96
  %21 = icmp sgt i32 %20, 1
  br i1 %21, label %22, label %25

22:                                               ; preds = %5
  %23 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %24 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %23, ptr noundef nonnull @.str.19, i32 noundef %20)
  br label %25

25:                                               ; preds = %5, %22, %2
  ret i32 1
}

declare void @set_cfun(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #14

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #1

declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @htab_find_slot(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @htab_find(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @xcalloc(i64 noundef, i64 noundef) local_unnamed_addr #3

declare ptr @sbitmap_alloc(i32 noundef) local_unnamed_addr #3

declare ptr @gimple_get_lhs(ptr noundef) local_unnamed_addr #3

declare void @sbitmap_zero(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc void @analyze_matrix_allocation_site(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #10 !prof !34 {
  br label %4

4:                                                ; preds = %69, %3
  %5 = phi ptr [ %1, %3 ], [ %71, %69 ]
  %6 = tail call zeroext i8 @gimple_assign_copy_p(ptr noundef %5) #20
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %46

8:                                                ; preds = %4
  %9 = load i32, ptr %5, align 8
  %10 = and i32 %9, 255
  %11 = icmp eq i32 %10, 6
  br i1 %11, label %12, label %43

12:                                               ; preds = %8
  %13 = lshr i32 %9, 16
  %14 = zext nneg i32 %13 to i64
  %15 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %14
  %16 = load i8, ptr %15, align 1, !tbaa !46
  %17 = icmp eq i8 %16, 3
  br i1 %17, label %18, label %34

18:                                               ; preds = %12
  %19 = zext nneg i32 %10 to i64
  %20 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %19
  %21 = load i32, ptr %20, align 4, !tbaa !50
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %22
  %24 = load i64, ptr %23, align 8, !tbaa !83
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %18
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1622, ptr noundef nonnull @.str.3) #20
  br label %27

27:                                               ; preds = %26, %18
  %28 = getelementptr inbounds i8, ptr %5, i64 %24
  %29 = getelementptr inbounds ptr, ptr %28, i64 1
  %30 = load ptr, ptr %29, align 8, !tbaa !35
  %31 = load i64, ptr %30, align 8
  %32 = trunc i64 %31 to i32
  %33 = and i32 %32, 65535
  br label %34

34:                                               ; preds = %27, %12
  %35 = phi i32 [ %33, %27 ], [ %13, %12 ]
  %36 = icmp eq i32 %35, 113
  %37 = and i32 %35, 65533
  %38 = icmp eq i32 %37, 116
  %39 = or i1 %36, %38
  %40 = icmp eq i32 %35, 77
  %41 = or i1 %40, %39
  %42 = zext i1 %41 to i8
  br label %43

43:                                               ; preds = %8, %34
  %44 = phi i8 [ %42, %34 ], [ 0, %8 ]
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %75, label %46

46:                                               ; preds = %43, %4
  %47 = load i32, ptr %5, align 8
  %48 = and i32 %47, 255
  %49 = add nsw i32 %48, -10
  %50 = icmp ult i32 %49, -9
  br i1 %50, label %64, label %51

51:                                               ; preds = %46
  %52 = zext nneg i32 %48 to i64
  %53 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %52
  %54 = load i32, ptr %53, align 4, !tbaa !50
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %55
  %57 = load i64, ptr %56, align 8, !tbaa !83
  %58 = icmp eq i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %51
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1622, ptr noundef nonnull @.str.3) #20
  br label %60

60:                                               ; preds = %59, %51
  %61 = getelementptr inbounds i8, ptr %5, i64 %57
  %62 = getelementptr inbounds ptr, ptr %61, i64 1
  %63 = load ptr, ptr %62, align 8, !tbaa !35
  br label %64

64:                                               ; preds = %46, %60
  %65 = phi ptr [ %63, %60 ], [ null, %46 ]
  %66 = load i64, ptr %65, align 8
  %67 = and i64 %66, 65535
  %68 = icmp eq i64 %67, 141
  br i1 %68, label %69, label %72

69:                                               ; preds = %64
  %70 = getelementptr inbounds %struct.tree_ssa_name, ptr %65, i64 0, i32 2
  %71 = load ptr, ptr %70, align 8, !tbaa !46
  br label %4

72:                                               ; preds = %64
  %73 = load ptr, ptr %0, align 8, !tbaa !92
  %74 = icmp eq ptr %65, %73
  br i1 %74, label %180, label %172

75:                                               ; preds = %43
  %76 = load i32, ptr %5, align 8
  %77 = and i32 %76, 255
  %78 = icmp eq i32 %77, 8
  br i1 %78, label %79, label %172

79:                                               ; preds = %75
  %80 = tail call i32 @gimple_call_flags(ptr noundef nonnull %5) #20
  %81 = and i32 %80, 16
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %91

83:                                               ; preds = %79
  %84 = getelementptr inbounds %struct.matrix_info, ptr %0, i64 0, i32 2
  %85 = load i32, ptr %84, align 4, !tbaa !96
  %86 = icmp eq i32 %85, -1
  %87 = icmp sgt i32 %85, %2
  %88 = or i1 %86, %87
  br i1 %88, label %89, label %180

89:                                               ; preds = %83
  store i32 %2, ptr %84, align 4, !tbaa !96
  %90 = getelementptr inbounds %struct.matrix_info, ptr %0, i64 0, i32 3
  store ptr %5, ptr %90, align 8, !tbaa !140
  br label %180

91:                                               ; preds = %79
  %92 = load i32, ptr %5, align 8
  %93 = and i32 %92, 255
  %94 = add nsw i32 %93, -10
  %95 = icmp ult i32 %94, -9
  br i1 %95, label %109, label %96

96:                                               ; preds = %91
  %97 = zext nneg i32 %93 to i64
  %98 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %97
  %99 = load i32, ptr %98, align 4, !tbaa !50
  %100 = zext i32 %99 to i64
  %101 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %100
  %102 = load i64, ptr %101, align 8, !tbaa !83
  %103 = icmp eq i64 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %96
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1622, ptr noundef nonnull @.str.3) #20
  br label %105

105:                                              ; preds = %104, %96
  %106 = getelementptr inbounds i8, ptr %5, i64 %102
  %107 = getelementptr inbounds ptr, ptr %106, i64 1
  %108 = load ptr, ptr %107, align 8, !tbaa !35
  br label %109

109:                                              ; preds = %105, %91
  %110 = phi ptr [ %108, %105 ], [ null, %91 ]
  %111 = load i64, ptr %110, align 8
  %112 = and i64 %111, 65535
  %113 = icmp eq i64 %112, 121
  br i1 %113, label %114, label %117

114:                                              ; preds = %109
  %115 = getelementptr inbounds %struct.tree_exp, ptr %110, i64 0, i32 3
  %116 = load ptr, ptr %115, align 8, !tbaa !46
  br label %117

117:                                              ; preds = %109, %114
  %118 = phi ptr [ %116, %114 ], [ null, %109 ]
  %119 = icmp eq ptr %118, null
  br i1 %119, label %120, label %128

120:                                              ; preds = %117
  %121 = getelementptr inbounds %struct.matrix_info, ptr %0, i64 0, i32 2
  %122 = load i32, ptr %121, align 4, !tbaa !96
  %123 = icmp eq i32 %122, -1
  %124 = icmp sgt i32 %122, %2
  %125 = or i1 %123, %124
  br i1 %125, label %126, label %180

126:                                              ; preds = %120
  store i32 %2, ptr %121, align 4, !tbaa !96
  %127 = getelementptr inbounds %struct.matrix_info, ptr %0, i64 0, i32 3
  store ptr %5, ptr %127, align 8, !tbaa !140
  br label %180

128:                                              ; preds = %117
  %129 = getelementptr inbounds %struct.tree_function_decl, ptr %118, i64 0, i32 5
  %130 = load i32, ptr %129, align 8
  %131 = and i32 %130, 2047
  %132 = icmp eq i32 %131, 491
  br i1 %132, label %149, label %133

133:                                              ; preds = %128
  %134 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %135 = icmp eq ptr %134, null
  br i1 %135, label %141, label %136

136:                                              ; preds = %133
  %137 = load ptr, ptr %0, align 8, !tbaa !92
  %138 = tail call ptr @get_name(ptr noundef %137) #20
  %139 = tail call ptr @get_name(ptr noundef nonnull %118) #20
  %140 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %134, ptr noundef nonnull @.str.5, ptr noundef %138, ptr noundef %139)
  br label %141

141:                                              ; preds = %136, %133
  %142 = getelementptr inbounds %struct.matrix_info, ptr %0, i64 0, i32 2
  %143 = load i32, ptr %142, align 4, !tbaa !96
  %144 = icmp eq i32 %143, -1
  %145 = icmp sgt i32 %143, %2
  %146 = or i1 %144, %145
  br i1 %146, label %147, label %180

147:                                              ; preds = %141
  store i32 %2, ptr %142, align 4, !tbaa !96
  %148 = getelementptr inbounds %struct.matrix_info, ptr %0, i64 0, i32 3
  store ptr %5, ptr %148, align 8, !tbaa !140
  br label %180

149:                                              ; preds = %128
  %150 = getelementptr inbounds %struct.matrix_info, ptr %0, i64 0, i32 4
  %151 = load ptr, ptr %150, align 8, !tbaa !113
  %152 = icmp eq ptr %151, null
  br i1 %152, label %171, label %153

153:                                              ; preds = %149
  %154 = getelementptr inbounds %struct.matrix_info, ptr %0, i64 0, i32 5
  %155 = load i32, ptr %154, align 8, !tbaa !138
  %156 = add nsw i32 %155, -1
  %157 = icmp eq i32 %156, %2
  br i1 %157, label %158, label %171

158:                                              ; preds = %153
  %159 = sext i32 %2 to i64
  %160 = getelementptr inbounds ptr, ptr %151, i64 %159
  %161 = load ptr, ptr %160, align 8, !tbaa !35
  %162 = icmp eq ptr %161, %5
  br i1 %162, label %171, label %163

163:                                              ; preds = %158
  %164 = getelementptr inbounds %struct.matrix_info, ptr %0, i64 0, i32 2
  %165 = load i32, ptr %164, align 4, !tbaa !96
  %166 = icmp eq i32 %165, -1
  %167 = icmp sgt i32 %165, %2
  %168 = or i1 %166, %167
  br i1 %168, label %169, label %180

169:                                              ; preds = %163
  store i32 %2, ptr %164, align 4, !tbaa !96
  %170 = getelementptr inbounds %struct.matrix_info, ptr %0, i64 0, i32 3
  store ptr %5, ptr %170, align 8, !tbaa !140
  br label %180

171:                                              ; preds = %158, %153, %149
  tail call fastcc void @add_allocation_site(ptr noundef %0, ptr noundef nonnull %5, i32 noundef %2)
  br label %180

172:                                              ; preds = %72, %75
  %173 = getelementptr inbounds %struct.matrix_info, ptr %0, i64 0, i32 2
  %174 = load i32, ptr %173, align 4, !tbaa !96
  %175 = icmp eq i32 %174, -1
  %176 = icmp sgt i32 %174, %2
  %177 = or i1 %175, %176
  br i1 %177, label %178, label %180

178:                                              ; preds = %172
  store i32 %2, ptr %173, align 4, !tbaa !96
  %179 = getelementptr inbounds %struct.matrix_info, ptr %0, i64 0, i32 3
  store ptr %5, ptr %179, align 8, !tbaa !140
  br label %180

180:                                              ; preds = %172, %178, %169, %163, %147, %141, %126, %120, %89, %83, %171, %72
  ret void
}

declare zeroext i8 @gimple_assign_single_p(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc void @analyze_matrix_accesses(ptr noundef %0, ptr noundef %1, i32 noundef %2, i8 noundef zeroext %3, ptr noundef %4, i8 noundef zeroext %5) unnamed_addr #10 !prof !34 {
  %7 = alloca %struct.ssa_acc_in_tree, align 8
  %8 = alloca %struct.ssa_acc_in_tree, align 8
  %9 = alloca %struct.ssa_acc_in_tree, align 8
  %10 = alloca %struct.matrix_access_phi_node, align 8
  %11 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !46
  tail call fastcc void @update_type_size(ptr noundef %0, ptr noundef %12, ptr noundef %1, i32 noundef %2)
  %13 = getelementptr inbounds %struct.matrix_info, ptr %0, i64 0, i32 2
  %14 = load i32, ptr %13, align 4, !tbaa !96
  %15 = icmp slt i32 %14, 0
  %16 = icmp sgt i32 %14, %2
  %17 = or i1 %15, %16
  br i1 %17, label %18, label %693

18:                                               ; preds = %6
  %19 = load i64, ptr %1, align 8
  %20 = and i64 %19, 65535
  %21 = icmp eq i64 %20, 141
  br i1 %21, label %23, label %22

22:                                               ; preds = %18
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 1375, ptr noundef nonnull @.str.3) #20
  br label %23

23:                                               ; preds = %18, %22
  %24 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 5
  %25 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 5, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !166
  %27 = icmp eq ptr %26, %24
  br i1 %27, label %693, label %28

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.matrix_info, ptr %0, i64 0, i32 3
  %30 = getelementptr inbounds %struct.matrix_info, ptr %0, i64 0, i32 8
  %31 = getelementptr inbounds %struct.matrix_info, ptr %0, i64 0, i32 3
  br label %32

32:                                               ; preds = %28, %686
  %33 = phi i32 [ %2, %28 ], [ %687, %686 ]
  %34 = phi ptr [ %26, %28 ], [ %691, %686 ]
  %35 = phi ptr [ %26, %28 ], [ %689, %686 ]
  %36 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %34, i64 0, i32 2
  %37 = load ptr, ptr %36, align 8, !tbaa !46
  %38 = load i32, ptr %37, align 8
  %39 = trunc i32 %38 to i8
  switch i8 %39, label %686 [
    i8 16, label %40
    i8 8, label %145
    i8 6, label %327
  ]

40:                                               ; preds = %32
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %10) #20
  store ptr %37, ptr %10, align 8, !tbaa !114
  %41 = load ptr, ptr @htab_mat_acc_phi_nodes, align 8, !tbaa !35
  %42 = call ptr @htab_find(ptr noundef %41, ptr noundef nonnull %10) #20
  %43 = icmp eq ptr %42, null
  br i1 %43, label %83, label %44

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.matrix_access_phi_node, ptr %42, i64 0, i32 1
  %46 = load i32, ptr %45, align 8, !tbaa !191
  %47 = icmp eq i32 %46, %33
  br i1 %47, label %144, label %48

48:                                               ; preds = %44
  %49 = call i32 @llvm.smin.i32(i32 %46, i32 %33)
  store i32 %49, ptr %45, align 8, !tbaa !191
  %50 = getelementptr inbounds %struct.gimple_statement_phi, ptr %37, i64 0, i32 2
  %51 = load i32, ptr %50, align 4, !tbaa !46
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %76, label %53

53:                                               ; preds = %48
  %54 = getelementptr inbounds %struct.gimple_statement_phi, ptr %37, i64 0, i32 1
  br label %55

55:                                               ; preds = %53, %62
  %56 = phi ptr [ null, %53 ], [ %71, %62 ]
  %57 = phi i64 [ 0, %53 ], [ %72, %62 ]
  %58 = trunc i64 %57 to i32
  %59 = load i32, ptr %54, align 8, !tbaa !46
  %60 = icmp ult i32 %59, %58
  br i1 %60, label %61, label %62

61:                                               ; preds = %55
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 3103, ptr noundef nonnull @.str.3) #20
  br label %62

62:                                               ; preds = %55, %61
  %63 = getelementptr inbounds %struct.gimple_statement_phi, ptr %37, i64 0, i32 4, i64 %57, i32 0, i32 3
  %64 = load ptr, ptr %63, align 8, !tbaa !170
  %65 = load ptr, ptr %64, align 8, !tbaa !35
  %66 = getelementptr inbounds %struct.tree_ssa_name, ptr %65, i64 0, i32 2
  %67 = load ptr, ptr %66, align 8, !tbaa !46
  %68 = load i32, ptr %67, align 8
  %69 = and i32 %68, 255
  %70 = icmp eq i32 %69, 16
  %71 = select i1 %70, ptr %56, ptr %67
  %72 = add nuw nsw i64 %57, 1
  %73 = load i32, ptr %50, align 4, !tbaa !46
  %74 = zext i32 %73 to i64
  %75 = icmp ult i64 %72, %74
  br i1 %75, label %55, label %76, !llvm.loop !192

76:                                               ; preds = %62, %48
  %77 = phi ptr [ null, %48 ], [ %71, %62 ]
  %78 = load i32, ptr %13, align 4, !tbaa !96
  %79 = icmp eq i32 %78, -1
  %80 = icmp sgt i32 %78, %49
  %81 = or i1 %79, %80
  br i1 %81, label %82, label %144

82:                                               ; preds = %76
  store i32 %49, ptr %13, align 4, !tbaa !96
  store ptr %77, ptr %31, align 8, !tbaa !140
  br label %144

83:                                               ; preds = %40
  %84 = call ptr @xcalloc(i64 noundef 1, i64 noundef 16) #20
  store ptr %37, ptr %84, align 8, !tbaa !114
  %85 = getelementptr inbounds %struct.matrix_access_phi_node, ptr %84, i64 0, i32 1
  store i32 %33, ptr %85, align 8, !tbaa !191
  %86 = load ptr, ptr @htab_mat_acc_phi_nodes, align 8, !tbaa !35
  %87 = call ptr @htab_find_slot(ptr noundef %86, ptr noundef nonnull %84, i32 noundef 1) #20
  %88 = icmp eq ptr %87, null
  br i1 %88, label %89, label %90

89:                                               ; preds = %83
  call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 1174, ptr noundef nonnull @.str.3) #20
  br label %90

90:                                               ; preds = %89, %83
  store ptr %84, ptr %87, align 8, !tbaa !35
  %91 = getelementptr inbounds %struct.gimple_statement_phi, ptr %37, i64 0, i32 3
  %92 = load ptr, ptr %91, align 8, !tbaa !35
  %93 = getelementptr inbounds %struct.tree_ssa_name, ptr %92, i64 0, i32 3
  %94 = load i32, ptr %93, align 8, !tbaa !46
  %95 = lshr i32 %94, 6
  %96 = zext nneg i32 %95 to i64
  %97 = getelementptr inbounds %struct.simple_bitmap_def, ptr %4, i64 0, i32 3, i64 %96
  %98 = load i64, ptr %97, align 8, !tbaa !83
  %99 = and i32 %94, 63
  %100 = zext nneg i32 %99 to i64
  %101 = shl nuw i64 1, %100
  %102 = and i64 %101, %98
  %103 = icmp eq i64 %102, 0
  br i1 %103, label %104, label %144

104:                                              ; preds = %90
  %105 = load ptr, ptr %4, align 8, !tbaa !109
  %106 = icmp eq ptr %105, null
  br i1 %106, label %111, label %107

107:                                              ; preds = %104
  %108 = getelementptr inbounds i8, ptr %105, i64 %96
  %109 = load i8, ptr %108, align 1, !tbaa !46
  %110 = add i8 %109, 1
  store i8 %110, ptr %108, align 1, !tbaa !46
  br label %111

111:                                              ; preds = %104, %107
  %112 = load i64, ptr %97, align 8, !tbaa !83
  %113 = or i64 %112, %101
  store i64 %113, ptr %97, align 8, !tbaa !83
  %114 = load ptr, ptr %91, align 8, !tbaa !35
  call fastcc void @analyze_matrix_accesses(ptr noundef %0, ptr noundef %114, i32 noundef %33, i8 noundef zeroext 0, ptr noundef nonnull %4, i8 noundef zeroext %5)
  %115 = load ptr, ptr %91, align 8, !tbaa !35
  %116 = getelementptr inbounds %struct.tree_ssa_name, ptr %115, i64 0, i32 3
  %117 = load i32, ptr %116, align 8, !tbaa !46
  %118 = load ptr, ptr %4, align 8, !tbaa !109
  %119 = icmp eq ptr %118, null
  br i1 %119, label %134, label %120

120:                                              ; preds = %111
  %121 = lshr i32 %117, 6
  %122 = zext nneg i32 %121 to i64
  %123 = getelementptr inbounds %struct.simple_bitmap_def, ptr %4, i64 0, i32 3, i64 %122
  %124 = load i64, ptr %123, align 8, !tbaa !83
  %125 = and i32 %117, 63
  %126 = zext nneg i32 %125 to i64
  %127 = shl nuw i64 1, %126
  %128 = and i64 %124, %127
  %129 = icmp eq i64 %128, 0
  br i1 %129, label %134, label %130

130:                                              ; preds = %120
  %131 = getelementptr inbounds i8, ptr %118, i64 %122
  %132 = load i8, ptr %131, align 1, !tbaa !46
  %133 = add i8 %132, -1
  store i8 %133, ptr %131, align 1, !tbaa !46
  br label %134

134:                                              ; preds = %111, %120, %130
  %135 = and i32 %117, 63
  %136 = zext nneg i32 %135 to i64
  %137 = shl nuw i64 1, %136
  %138 = xor i64 %137, -1
  %139 = lshr i32 %117, 6
  %140 = zext nneg i32 %139 to i64
  %141 = getelementptr inbounds %struct.simple_bitmap_def, ptr %4, i64 0, i32 3, i64 %140
  %142 = load i64, ptr %141, align 8, !tbaa !83
  %143 = and i64 %142, %138
  store i64 %143, ptr %141, align 8, !tbaa !83
  br label %144

144:                                              ; preds = %82, %76, %44, %90, %134
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %10) #20
  br label %686

145:                                              ; preds = %32
  %146 = and i32 %38, 255
  %147 = zext nneg i32 %146 to i64
  %148 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %147
  %149 = load i32, ptr %148, align 4, !tbaa !50
  %150 = zext i32 %149 to i64
  %151 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %150
  %152 = load i64, ptr %151, align 8, !tbaa !83
  %153 = icmp eq i64 %152, 0
  br i1 %153, label %154, label %155

154:                                              ; preds = %145
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1622, ptr noundef nonnull @.str.3) #20
  br label %155

155:                                              ; preds = %154, %145
  %156 = getelementptr inbounds i8, ptr %37, i64 %152
  %157 = getelementptr inbounds ptr, ptr %156, i64 1
  %158 = load ptr, ptr %157, align 8, !tbaa !35
  %159 = load i64, ptr %158, align 8
  %160 = and i64 %159, 65535
  %161 = icmp eq i64 %160, 121
  br i1 %161, label %162, label %165

162:                                              ; preds = %155
  %163 = getelementptr inbounds %struct.tree_exp, ptr %158, i64 0, i32 3
  %164 = load ptr, ptr %163, align 8, !tbaa !46
  br label %165

165:                                              ; preds = %162, %155
  %166 = phi ptr [ %164, %162 ], [ null, %155 ]
  %167 = load i32, ptr %37, align 8
  %168 = and i32 %167, 255
  %169 = add nsw i32 %168, -10
  %170 = icmp ult i32 %169, -9
  br i1 %170, label %183, label %171

171:                                              ; preds = %165
  %172 = zext nneg i32 %168 to i64
  %173 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %172
  %174 = load i32, ptr %173, align 4, !tbaa !50
  %175 = zext i32 %174 to i64
  %176 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %175
  %177 = load i64, ptr %176, align 8, !tbaa !83
  %178 = icmp eq i64 %177, 0
  br i1 %178, label %179, label %180

179:                                              ; preds = %171
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1622, ptr noundef nonnull @.str.3) #20
  br label %180

180:                                              ; preds = %179, %171
  %181 = getelementptr inbounds i8, ptr %37, i64 %177
  %182 = load ptr, ptr %181, align 8, !tbaa !35
  br label %183

183:                                              ; preds = %180, %165
  %184 = phi ptr [ %182, %180 ], [ null, %165 ]
  %185 = icmp eq ptr %184, null
  br i1 %185, label %284, label %186

186:                                              ; preds = %183
  %187 = getelementptr inbounds %struct.ssa_acc_in_tree, ptr %9, i64 0, i32 1
  %188 = load i32, ptr %37, align 8
  %189 = and i32 %188, 255
  %190 = add nsw i32 %189, -10
  %191 = icmp ult i32 %190, -9
  br i1 %191, label %204, label %192

192:                                              ; preds = %186
  %193 = zext nneg i32 %189 to i64
  %194 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %193
  %195 = load i32, ptr %194, align 4, !tbaa !50
  %196 = zext i32 %195 to i64
  %197 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %196
  %198 = load i64, ptr %197, align 8, !tbaa !83
  %199 = icmp eq i64 %198, 0
  br i1 %199, label %200, label %201

200:                                              ; preds = %192
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1622, ptr noundef nonnull @.str.3) #20
  br label %201

201:                                              ; preds = %200, %192
  %202 = getelementptr inbounds i8, ptr %37, i64 %198
  %203 = load ptr, ptr %202, align 8, !tbaa !35
  br label %204

204:                                              ; preds = %201, %186
  %205 = phi ptr [ %203, %201 ], [ null, %186 ]
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %9) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %9, i8 0, i64 48, i1 false)
  store ptr %1, ptr %9, align 8, !tbaa !193
  store i32 0, ptr %187, align 8, !tbaa !195
  call fastcc void @ssa_accessed_in_tree(ptr noundef %205, ptr noundef nonnull %9)
  %206 = getelementptr inbounds %struct.gimple_statement_base, ptr %37, i64 0, i32 3
  %207 = load i32, ptr %206, align 4, !tbaa !46
  %208 = icmp ne i32 %207, 3
  br i1 %208, label %215, label %253

209:                                              ; preds = %237
  %210 = add nuw nsw i64 %217, 1
  %211 = load i32, ptr %206, align 4, !tbaa !46
  %212 = add i32 %211, -3
  %213 = zext i32 %212 to i64
  %214 = icmp ult i64 %210, %213
  br i1 %214, label %215, label %253, !llvm.loop !196

215:                                              ; preds = %204, %209
  %216 = phi i1 [ %214, %209 ], [ %208, %204 ]
  %217 = phi i64 [ %210, %209 ], [ 0, %204 ]
  %218 = add nuw nsw i64 %217, 3
  %219 = load i32, ptr %37, align 8
  %220 = and i32 %219, 255
  %221 = add nsw i32 %220, -10
  %222 = icmp ult i32 %221, -9
  br i1 %222, label %237, label %223

223:                                              ; preds = %215
  %224 = zext nneg i32 %220 to i64
  %225 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %224
  %226 = load i32, ptr %225, align 4, !tbaa !50
  %227 = zext i32 %226 to i64
  %228 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %227
  %229 = load i64, ptr %228, align 8, !tbaa !83
  %230 = icmp eq i64 %229, 0
  br i1 %230, label %231, label %232

231:                                              ; preds = %223
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1622, ptr noundef nonnull @.str.3) #20
  br label %232

232:                                              ; preds = %231, %223
  %233 = getelementptr inbounds i8, ptr %37, i64 %229
  %234 = and i64 %218, 4294967295
  %235 = getelementptr inbounds ptr, ptr %233, i64 %234
  %236 = load ptr, ptr %235, align 8, !tbaa !35
  br label %237

237:                                              ; preds = %232, %215
  %238 = phi ptr [ %236, %232 ], [ null, %215 ]
  %239 = icmp eq ptr %238, %1
  br i1 %239, label %240, label %209

240:                                              ; preds = %237
  %241 = load i32, ptr %37, align 8
  %242 = and i32 %241, 255
  %243 = add nsw i32 %242, -1
  %244 = icmp ult i32 %243, 9
  call void @llvm.assume(i1 %244)
  %245 = zext nneg i32 %242 to i64
  %246 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %245
  %247 = load i32, ptr %246, align 4, !tbaa !50
  %248 = zext i32 %247 to i64
  %249 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %248
  %250 = load i64, ptr %249, align 8, !tbaa !83
  %251 = icmp eq i64 %250, 0
  br i1 %251, label %252, label %253

252:                                              ; preds = %240
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1622, ptr noundef nonnull @.str.3) #20
  br label %253

253:                                              ; preds = %209, %204, %240, %252
  %254 = phi i1 [ %216, %252 ], [ %216, %240 ], [ %208, %204 ], [ %214, %209 ]
  %255 = phi i8 [ 1, %252 ], [ 1, %240 ], [ 0, %204 ], [ 0, %209 ]
  %256 = getelementptr inbounds %struct.ssa_acc_in_tree, ptr %9, i64 0, i32 5
  %257 = load i8, ptr %256, align 8
  %258 = icmp ne i8 %257, 0
  %259 = and i1 %254, %258
  %260 = load i32, ptr %187, align 8
  %261 = icmp eq i32 %260, 47
  %262 = select i1 %259, i1 %261, i1 false
  %263 = or i8 %257, %255
  %264 = icmp eq i8 %263, 0
  %265 = or i1 %264, %262
  br i1 %265, label %266, label %271

266:                                              ; preds = %253
  %267 = load i32, ptr %13, align 4, !tbaa !96
  %268 = icmp eq i32 %267, -1
  %269 = icmp sgt i32 %267, %33
  %270 = or i1 %268, %269
  br i1 %270, label %323, label %326

271:                                              ; preds = %253
  br i1 %259, label %272, label %273

272:                                              ; preds = %271
  call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 1082, ptr noundef nonnull @.str.3) #20
  br label %273

273:                                              ; preds = %272, %271
  %274 = icmp eq i8 %257, 0
  br i1 %274, label %283, label %275

275:                                              ; preds = %273
  %276 = add nsw i32 %33, 1
  br i1 %261, label %278, label %277

277:                                              ; preds = %275
  call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 1090, ptr noundef nonnull @.str.3) #20
  br label %278

278:                                              ; preds = %277, %275
  %279 = load i32, ptr %13, align 4, !tbaa !96
  %280 = icmp eq i32 %279, -1
  %281 = icmp sgt i32 %279, %276
  %282 = or i1 %280, %281
  br i1 %282, label %323, label %326

283:                                              ; preds = %273
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %9) #20
  br label %284

284:                                              ; preds = %283, %183
  %285 = icmp eq ptr %166, null
  br i1 %285, label %686, label %286

286:                                              ; preds = %284
  %287 = getelementptr inbounds %struct.tree_function_decl, ptr %166, i64 0, i32 5
  %288 = load i32, ptr %287, align 8
  %289 = and i32 %288, 2047
  %290 = icmp eq i32 %289, 455
  br i1 %290, label %305, label %291

291:                                              ; preds = %286
  %292 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %293 = icmp eq ptr %292, null
  br i1 %293, label %299, label %294

294:                                              ; preds = %291
  %295 = load ptr, ptr %0, align 8, !tbaa !92
  %296 = call ptr @get_name(ptr noundef %295) #20
  %297 = call ptr @get_name(ptr noundef nonnull %166) #20
  %298 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %292, ptr noundef nonnull @.str.6, ptr noundef %296, ptr noundef %297, i32 noundef %33)
  br label %299

299:                                              ; preds = %294, %291
  %300 = load i32, ptr %13, align 4, !tbaa !96
  %301 = icmp eq i32 %300, -1
  %302 = icmp sgt i32 %300, %33
  %303 = or i1 %301, %302
  br i1 %303, label %304, label %686

304:                                              ; preds = %299
  store i32 %33, ptr %13, align 4, !tbaa !96
  store ptr %37, ptr %29, align 8, !tbaa !140
  br label %686

305:                                              ; preds = %286
  %306 = load ptr, ptr %30, align 8, !tbaa !95
  %307 = sext i32 %33 to i64
  %308 = getelementptr inbounds %struct.free_info, ptr %306, i64 %307
  %309 = load ptr, ptr %308, align 8, !tbaa !176
  %310 = icmp eq ptr %309, null
  %311 = icmp eq ptr %309, %37
  %312 = or i1 %310, %311
  br i1 %312, label %320, label %313

313:                                              ; preds = %305
  %314 = load i32, ptr %13, align 4, !tbaa !96
  %315 = icmp eq i32 %314, -1
  %316 = icmp sgt i32 %314, %33
  %317 = or i1 %315, %316
  br i1 %317, label %318, label %686

318:                                              ; preds = %313
  %319 = getelementptr inbounds %struct.matrix_info, ptr %0, i64 0, i32 3
  store i32 %33, ptr %13, align 4, !tbaa !96
  store ptr %37, ptr %319, align 8, !tbaa !140
  br label %686

320:                                              ; preds = %305
  store ptr %37, ptr %308, align 8, !tbaa !176
  %321 = load ptr, ptr @current_function_decl, align 8, !tbaa !35
  %322 = getelementptr inbounds %struct.free_info, ptr %306, i64 %307, i32 1
  store ptr %321, ptr %322, align 8, !tbaa !178
  br label %686

323:                                              ; preds = %278, %266
  %324 = phi i32 [ %33, %266 ], [ %276, %278 ]
  %325 = getelementptr inbounds %struct.matrix_info, ptr %0, i64 0, i32 3
  store i32 %324, ptr %13, align 4, !tbaa !96
  store ptr %37, ptr %325, align 8, !tbaa !140
  br label %326

326:                                              ; preds = %323, %278, %266
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %9) #20
  br label %686

327:                                              ; preds = %32
  %328 = getelementptr inbounds %struct.ssa_acc_in_tree, ptr %7, i64 0, i32 1
  %329 = getelementptr inbounds %struct.ssa_acc_in_tree, ptr %8, i64 0, i32 1
  %330 = call ptr @gimple_get_lhs(ptr noundef %37) #20
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %7) #20
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %8) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %7, i8 0, i64 48, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %8, i8 0, i64 48, i1 false)
  store ptr %1, ptr %7, align 8, !tbaa !193
  store i32 0, ptr %328, align 8, !tbaa !195
  call fastcc void @ssa_accessed_in_tree(ptr noundef %330, ptr noundef nonnull %7)
  store ptr %1, ptr %8, align 8, !tbaa !193
  store i32 0, ptr %329, align 8, !tbaa !195
  %331 = load i32, ptr %37, align 8
  %332 = trunc i32 %331 to i8
  switch i8 %332, label %335 [
    i8 6, label %333
    i8 1, label %333
    i8 8, label %336
  ]

333:                                              ; preds = %327, %327
  %334 = lshr i32 %331, 16
  br label %336

335:                                              ; preds = %327
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1446, ptr noundef nonnull @.str.3) #20
  br label %336

336:                                              ; preds = %335, %333, %327
  %337 = phi i32 [ %334, %333 ], [ 0, %335 ], [ 59, %327 ]
  %338 = zext nneg i32 %337 to i64
  %339 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %338
  %340 = load i8, ptr %339, align 1, !tbaa !46
  %341 = icmp eq i8 %340, 3
  br i1 %341, label %342, label %362

342:                                              ; preds = %336
  %343 = load i32, ptr %37, align 8
  %344 = and i32 %343, 255
  %345 = add nsw i32 %344, -1
  %346 = icmp ult i32 %345, 9
  call void @llvm.assume(i1 %346)
  %347 = zext nneg i32 %344 to i64
  %348 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %347
  %349 = load i32, ptr %348, align 4, !tbaa !50
  %350 = zext i32 %349 to i64
  %351 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %350
  %352 = load i64, ptr %351, align 8, !tbaa !83
  %353 = icmp eq i64 %352, 0
  br i1 %353, label %354, label %355

354:                                              ; preds = %342
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1622, ptr noundef nonnull @.str.3) #20
  br label %355

355:                                              ; preds = %354, %342
  %356 = getelementptr inbounds i8, ptr %37, i64 %352
  %357 = getelementptr inbounds ptr, ptr %356, i64 1
  %358 = load ptr, ptr %357, align 8, !tbaa !35
  %359 = load i64, ptr %358, align 8
  %360 = trunc i64 %359 to i32
  %361 = and i32 %360, 65535
  br label %362

362:                                              ; preds = %355, %336
  %363 = phi i32 [ %361, %355 ], [ %337, %336 ]
  store i32 %363, ptr %329, align 8, !tbaa !195
  %364 = trunc i32 %363 to i16
  switch i16 %364, label %437 [
    i16 141, label %365
    i16 47, label %365
    i16 116, label %365
    i16 113, label %365
    i16 118, label %365
    i16 66, label %385
    i16 63, label %385
    i16 65, label %385
  ]

365:                                              ; preds = %362, %362, %362, %362, %362
  %366 = load i32, ptr %37, align 8
  %367 = and i32 %366, 255
  %368 = add nsw i32 %367, -10
  %369 = icmp ult i32 %368, -9
  br i1 %369, label %383, label %370

370:                                              ; preds = %365
  %371 = zext nneg i32 %367 to i64
  %372 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %371
  %373 = load i32, ptr %372, align 4, !tbaa !50
  %374 = zext i32 %373 to i64
  %375 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %374
  %376 = load i64, ptr %375, align 8, !tbaa !83
  %377 = icmp eq i64 %376, 0
  br i1 %377, label %378, label %379

378:                                              ; preds = %370
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1622, ptr noundef nonnull @.str.3) #20
  br label %379

379:                                              ; preds = %378, %370
  %380 = getelementptr inbounds i8, ptr %37, i64 %376
  %381 = getelementptr inbounds ptr, ptr %380, i64 1
  %382 = load ptr, ptr %381, align 8, !tbaa !35
  br label %383

383:                                              ; preds = %379, %365
  %384 = phi ptr [ %382, %379 ], [ null, %365 ]
  call fastcc void @ssa_accessed_in_tree(ptr noundef %384, ptr noundef nonnull %8)
  br label %437

385:                                              ; preds = %362, %362, %362
  %386 = load i32, ptr %37, align 8
  %387 = and i32 %386, 255
  %388 = add nsw i32 %387, -10
  %389 = icmp ult i32 %388, -9
  br i1 %389, label %403, label %390

390:                                              ; preds = %385
  %391 = zext nneg i32 %387 to i64
  %392 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %391
  %393 = load i32, ptr %392, align 4, !tbaa !50
  %394 = zext i32 %393 to i64
  %395 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %394
  %396 = load i64, ptr %395, align 8, !tbaa !83
  %397 = icmp eq i64 %396, 0
  br i1 %397, label %398, label %399

398:                                              ; preds = %390
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1622, ptr noundef nonnull @.str.3) #20
  br label %399

399:                                              ; preds = %398, %390
  %400 = getelementptr inbounds i8, ptr %37, i64 %396
  %401 = getelementptr inbounds ptr, ptr %400, i64 1
  %402 = load ptr, ptr %401, align 8, !tbaa !35
  br label %403

403:                                              ; preds = %399, %385
  %404 = phi ptr [ %402, %399 ], [ null, %385 ]
  %405 = getelementptr inbounds %struct.gimple_statement_base, ptr %37, i64 0, i32 3
  %406 = load i32, ptr %405, align 4, !tbaa !46
  %407 = icmp ugt i32 %406, 2
  br i1 %407, label %408, label %426

408:                                              ; preds = %403
  %409 = load i32, ptr %37, align 8
  %410 = and i32 %409, 255
  %411 = add nsw i32 %410, -10
  %412 = icmp ult i32 %411, -9
  br i1 %412, label %426, label %413

413:                                              ; preds = %408
  %414 = zext nneg i32 %410 to i64
  %415 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %414
  %416 = load i32, ptr %415, align 4, !tbaa !50
  %417 = zext i32 %416 to i64
  %418 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %417
  %419 = load i64, ptr %418, align 8, !tbaa !83
  %420 = icmp eq i64 %419, 0
  br i1 %420, label %421, label %422

421:                                              ; preds = %413
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1622, ptr noundef nonnull @.str.3) #20
  br label %422

422:                                              ; preds = %421, %413
  %423 = getelementptr inbounds i8, ptr %37, i64 %419
  %424 = getelementptr inbounds ptr, ptr %423, i64 2
  %425 = load ptr, ptr %424, align 8, !tbaa !35
  br label %426

426:                                              ; preds = %422, %408, %403
  %427 = phi ptr [ null, %403 ], [ %425, %422 ], [ null, %408 ]
  %428 = icmp eq ptr %404, %1
  br i1 %428, label %429, label %432

429:                                              ; preds = %426
  %430 = getelementptr inbounds %struct.ssa_acc_in_tree, ptr %8, i64 0, i32 5
  %431 = getelementptr inbounds %struct.ssa_acc_in_tree, ptr %8, i64 0, i32 4
  store i8 1, ptr %430, align 8, !tbaa !197
  store ptr %427, ptr %431, align 8, !tbaa !198
  br label %437

432:                                              ; preds = %426
  %433 = icmp eq ptr %427, %1
  br i1 %433, label %434, label %437

434:                                              ; preds = %432
  %435 = getelementptr inbounds %struct.ssa_acc_in_tree, ptr %8, i64 0, i32 5
  %436 = getelementptr inbounds %struct.ssa_acc_in_tree, ptr %8, i64 0, i32 4
  store i8 1, ptr %435, align 8, !tbaa !197
  store ptr %404, ptr %436, align 8, !tbaa !198
  br label %437

437:                                              ; preds = %362, %383, %429, %432, %434
  %438 = getelementptr inbounds %struct.ssa_acc_in_tree, ptr %7, i64 0, i32 5
  %439 = getelementptr inbounds %struct.ssa_acc_in_tree, ptr %8, i64 0, i32 5
  %440 = load i8, ptr %438, align 8
  %441 = icmp ne i8 %440, 0
  %442 = load i8, ptr %439, align 8
  %443 = icmp ne i8 %442, 0
  %444 = select i1 %441, i1 %443, i1 false
  %445 = load i32, ptr %328, align 8
  %446 = icmp eq i32 %445, 47
  %447 = select i1 %444, i1 %446, i1 false
  %448 = or i8 %442, %440
  %449 = icmp eq i8 %448, 0
  %450 = select i1 %447, i1 true, i1 %449
  br i1 %450, label %451, label %458

451:                                              ; preds = %437
  %452 = load i32, ptr %13, align 4, !tbaa !96
  %453 = icmp eq i32 %452, -1
  %454 = icmp sgt i32 %452, %33
  %455 = or i1 %453, %454
  br i1 %455, label %456, label %684

456:                                              ; preds = %451
  %457 = getelementptr inbounds %struct.matrix_info, ptr %0, i64 0, i32 3
  store i32 %33, ptr %13, align 4, !tbaa !96
  store ptr %37, ptr %457, align 8, !tbaa !140
  br label %684

458:                                              ; preds = %437
  %459 = and i1 %441, %443
  br i1 %459, label %460, label %461

460:                                              ; preds = %458
  call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 1222, ptr noundef nonnull @.str.3) #20
  br label %461

461:                                              ; preds = %460, %458
  %462 = icmp eq i8 %440, 0
  br i1 %462, label %556, label %463

463:                                              ; preds = %461
  %464 = add nsw i32 %33, 1
  br i1 %446, label %466, label %465

465:                                              ; preds = %463
  call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 1230, ptr noundef nonnull @.str.3) #20
  br label %466

466:                                              ; preds = %465, %463
  %467 = call zeroext i8 @gimple_assign_copy_p(ptr noundef nonnull %37) #20
  %468 = icmp eq i8 %467, 0
  br i1 %468, label %469, label %507

469:                                              ; preds = %466
  %470 = load i32, ptr %37, align 8
  %471 = and i32 %470, 255
  %472 = icmp eq i32 %471, 6
  br i1 %472, label %473, label %504

473:                                              ; preds = %469
  %474 = lshr i32 %470, 16
  %475 = zext nneg i32 %474 to i64
  %476 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %475
  %477 = load i8, ptr %476, align 1, !tbaa !46
  %478 = icmp eq i8 %477, 3
  br i1 %478, label %479, label %495

479:                                              ; preds = %473
  %480 = zext nneg i32 %471 to i64
  %481 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %480
  %482 = load i32, ptr %481, align 4, !tbaa !50
  %483 = zext i32 %482 to i64
  %484 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %483
  %485 = load i64, ptr %484, align 8, !tbaa !83
  %486 = icmp eq i64 %485, 0
  br i1 %486, label %487, label %488

487:                                              ; preds = %479
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1622, ptr noundef nonnull @.str.3) #20
  br label %488

488:                                              ; preds = %487, %479
  %489 = getelementptr inbounds i8, ptr %37, i64 %485
  %490 = getelementptr inbounds ptr, ptr %489, i64 1
  %491 = load ptr, ptr %490, align 8, !tbaa !35
  %492 = load i64, ptr %491, align 8
  %493 = trunc i64 %492 to i32
  %494 = and i32 %493, 65535
  br label %495

495:                                              ; preds = %488, %473
  %496 = phi i32 [ %494, %488 ], [ %474, %473 ]
  %497 = icmp eq i32 %496, 113
  %498 = and i32 %496, 65533
  %499 = icmp eq i32 %498, 116
  %500 = or i1 %497, %499
  %501 = icmp eq i32 %496, 77
  %502 = or i1 %501, %500
  %503 = zext i1 %502 to i8
  br label %504

504:                                              ; preds = %469, %495
  %505 = phi i8 [ %503, %495 ], [ 0, %469 ]
  %506 = icmp eq i8 %505, 0
  br i1 %506, label %527, label %507

507:                                              ; preds = %504, %466
  %508 = load i32, ptr %37, align 8
  %509 = and i32 %508, 255
  %510 = add nsw i32 %509, -1
  %511 = icmp ult i32 %510, 9
  call void @llvm.assume(i1 %511)
  %512 = zext nneg i32 %509 to i64
  %513 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %512
  %514 = load i32, ptr %513, align 4, !tbaa !50
  %515 = zext i32 %514 to i64
  %516 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %515
  %517 = load i64, ptr %516, align 8, !tbaa !83
  %518 = icmp eq i64 %517, 0
  br i1 %518, label %519, label %520

519:                                              ; preds = %507
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1622, ptr noundef nonnull @.str.3) #20
  br label %520

520:                                              ; preds = %519, %507
  %521 = getelementptr inbounds i8, ptr %37, i64 %517
  %522 = getelementptr inbounds ptr, ptr %521, i64 1
  %523 = load ptr, ptr %522, align 8, !tbaa !35
  %524 = load i64, ptr %523, align 8
  %525 = and i64 %524, 65535
  %526 = icmp eq i64 %525, 141
  br i1 %526, label %534, label %527

527:                                              ; preds = %504, %520
  %528 = load i32, ptr %13, align 4, !tbaa !96
  %529 = icmp eq i32 %528, -1
  %530 = icmp sgt i32 %528, %464
  %531 = or i1 %529, %530
  br i1 %531, label %532, label %684

532:                                              ; preds = %527
  %533 = getelementptr inbounds %struct.matrix_info, ptr %0, i64 0, i32 3
  store i32 %464, ptr %13, align 4, !tbaa !96
  store ptr %37, ptr %533, align 8, !tbaa !140
  br label %684

534:                                              ; preds = %520
  %535 = load i32, ptr %37, align 8
  %536 = and i32 %535, 255
  %537 = add nsw i32 %536, -1
  %538 = icmp ult i32 %537, 9
  call void @llvm.assume(i1 %538)
  %539 = zext nneg i32 %536 to i64
  %540 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %539
  %541 = load i32, ptr %540, align 4, !tbaa !50
  %542 = zext i32 %541 to i64
  %543 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %542
  %544 = load i64, ptr %543, align 8, !tbaa !83
  %545 = icmp eq i64 %544, 0
  br i1 %545, label %546, label %547

546:                                              ; preds = %534
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1622, ptr noundef nonnull @.str.3) #20
  br label %547

547:                                              ; preds = %546, %534
  %548 = icmp eq i8 %5, 0
  %549 = getelementptr inbounds i8, ptr %37, i64 %544
  %550 = getelementptr inbounds ptr, ptr %549, i64 1
  %551 = load ptr, ptr %550, align 8, !tbaa !35
  %552 = getelementptr inbounds %struct.tree_ssa_name, ptr %551, i64 0, i32 2
  %553 = load ptr, ptr %552, align 8, !tbaa !46
  call fastcc void @analyze_matrix_allocation_site(ptr noundef %0, ptr noundef %553, i32 noundef %464)
  br i1 %548, label %555, label %554

554:                                              ; preds = %547
  call fastcc void @record_access_alloc_site_info(ptr noundef %0, ptr noundef nonnull %37, ptr noundef null, ptr noundef null, i32 noundef %464, i8 noundef zeroext 1)
  br label %555

555:                                              ; preds = %554, %547
  call fastcc void @update_type_size(ptr noundef %0, ptr noundef nonnull %37, ptr noundef null, i32 noundef %464)
  br label %684

556:                                              ; preds = %461
  %557 = icmp eq i8 %442, 0
  br i1 %557, label %684, label %558

558:                                              ; preds = %556
  %559 = load i32, ptr %329, align 8
  switch i32 %559, label %560 [
    i32 47, label %567
    i32 66, label %572
    i32 141, label %658
  ]

560:                                              ; preds = %558
  %561 = load i32, ptr %13, align 4, !tbaa !96
  %562 = icmp eq i32 %561, -1
  %563 = icmp sgt i32 %561, %33
  %564 = or i1 %562, %563
  br i1 %564, label %565, label %684

565:                                              ; preds = %560
  %566 = getelementptr inbounds %struct.matrix_info, ptr %0, i64 0, i32 3
  store i32 %33, ptr %13, align 4, !tbaa !96
  store ptr %37, ptr %566, align 8, !tbaa !140
  br label %684

567:                                              ; preds = %558
  %568 = icmp eq i8 %5, 0
  br i1 %568, label %570, label %569

569:                                              ; preds = %567
  call fastcc void @record_access_alloc_site_info(ptr noundef %0, ptr noundef nonnull %37, ptr noundef null, ptr noundef null, i32 noundef %33, i8 noundef zeroext 1)
  br label %570

570:                                              ; preds = %569, %567
  %571 = add nsw i32 %33, 1
  br label %658

572:                                              ; preds = %558
  %573 = getelementptr inbounds %struct.ssa_acc_in_tree, ptr %8, i64 0, i32 4
  %574 = load ptr, ptr %573, align 8, !tbaa !198
  %575 = icmp eq ptr %574, null
  br i1 %575, label %576, label %577

576:                                              ; preds = %572
  call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 1269, ptr noundef nonnull @.str.3) #20
  br label %577

577:                                              ; preds = %576, %572
  %578 = icmp eq i8 %3, 0
  br i1 %578, label %586, label %579

579:                                              ; preds = %577
  %580 = load i32, ptr %13, align 4, !tbaa !96
  %581 = icmp eq i32 %580, -1
  %582 = icmp sgt i32 %580, %33
  %583 = or i1 %581, %582
  br i1 %583, label %584, label %658

584:                                              ; preds = %579
  %585 = getelementptr inbounds %struct.matrix_info, ptr %0, i64 0, i32 3
  store i32 %33, ptr %13, align 4, !tbaa !96
  store ptr %37, ptr %585, align 8, !tbaa !140
  br label %658

586:                                              ; preds = %577
  %587 = load i32, ptr %37, align 8
  %588 = and i32 %587, 255
  %589 = add nsw i32 %588, -10
  %590 = icmp ult i32 %589, -9
  br i1 %590, label %604, label %591

591:                                              ; preds = %586
  %592 = zext nneg i32 %588 to i64
  %593 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %592
  %594 = load i32, ptr %593, align 4, !tbaa !50
  %595 = zext i32 %594 to i64
  %596 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %595
  %597 = load i64, ptr %596, align 8, !tbaa !83
  %598 = icmp eq i64 %597, 0
  br i1 %598, label %599, label %600

599:                                              ; preds = %591
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1622, ptr noundef nonnull @.str.3) #20
  br label %600

600:                                              ; preds = %599, %591
  %601 = getelementptr inbounds i8, ptr %37, i64 %597
  %602 = getelementptr inbounds ptr, ptr %601, i64 1
  %603 = load ptr, ptr %602, align 8, !tbaa !35
  br label %604

604:                                              ; preds = %586, %600
  %605 = phi ptr [ %603, %600 ], [ null, %586 ]
  %606 = getelementptr inbounds %struct.gimple_statement_base, ptr %37, i64 0, i32 3
  %607 = load i32, ptr %606, align 4, !tbaa !46
  %608 = icmp ugt i32 %607, 2
  br i1 %608, label %609, label %627

609:                                              ; preds = %604
  %610 = load i32, ptr %37, align 8
  %611 = and i32 %610, 255
  %612 = add nsw i32 %611, -10
  %613 = icmp ult i32 %612, -9
  br i1 %613, label %627, label %614

614:                                              ; preds = %609
  %615 = zext nneg i32 %611 to i64
  %616 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %615
  %617 = load i32, ptr %616, align 4, !tbaa !50
  %618 = zext i32 %617 to i64
  %619 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %618
  %620 = load i64, ptr %619, align 8, !tbaa !83
  %621 = icmp eq i64 %620, 0
  br i1 %621, label %622, label %623

622:                                              ; preds = %614
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1622, ptr noundef nonnull @.str.3) #20
  br label %623

623:                                              ; preds = %622, %614
  %624 = getelementptr inbounds i8, ptr %37, i64 %620
  %625 = getelementptr inbounds ptr, ptr %624, i64 2
  %626 = load ptr, ptr %625, align 8, !tbaa !35
  br label %627

627:                                              ; preds = %604, %609, %623
  %628 = phi ptr [ null, %604 ], [ %626, %623 ], [ null, %609 ]
  %629 = icmp eq ptr %605, %1
  %630 = select i1 %629, ptr %628, ptr %605
  %631 = load i64, ptr %630, align 8
  %632 = and i64 %631, 65535
  %633 = icmp eq i64 %632, 23
  br i1 %633, label %634, label %642

634:                                              ; preds = %627
  %635 = getelementptr inbounds %struct.tree_common, ptr %605, i64 0, i32 2
  %636 = load ptr, ptr %635, align 8, !tbaa !46
  %637 = getelementptr inbounds %struct.tree_int_cst, ptr %630, i64 0, i32 1
  %638 = load i64, ptr %637, align 8, !tbaa !46
  %639 = call i64 @int_size_in_bytes(ptr noundef %636) #20
  %640 = udiv i64 %638, %639
  %641 = call ptr @build_int_cst(ptr noundef %636, i64 noundef %640) #20
  br label %654

642:                                              ; preds = %627
  %643 = getelementptr inbounds %struct.tree_ssa_name, ptr %630, i64 0, i32 2
  %644 = load ptr, ptr %643, align 8, !tbaa !46
  %645 = call fastcc ptr @get_index_from_offset(ptr noundef %644)
  %646 = icmp eq ptr %645, null
  br i1 %646, label %647, label %654

647:                                              ; preds = %642
  %648 = load i32, ptr %13, align 4, !tbaa !96
  %649 = icmp eq i32 %648, -1
  %650 = icmp sgt i32 %648, %33
  %651 = or i1 %649, %650
  br i1 %651, label %652, label %684

652:                                              ; preds = %647
  %653 = getelementptr inbounds %struct.matrix_info, ptr %0, i64 0, i32 3
  store i32 %33, ptr %13, align 4, !tbaa !96
  store ptr %37, ptr %653, align 8, !tbaa !140
  br label %684

654:                                              ; preds = %642, %634
  %655 = phi ptr [ %641, %634 ], [ %645, %642 ]
  %656 = icmp eq i8 %5, 0
  br i1 %656, label %658, label %657

657:                                              ; preds = %654
  call fastcc void @record_access_alloc_site_info(ptr noundef %0, ptr noundef nonnull %37, ptr noundef nonnull %630, ptr noundef %655, i32 noundef %33, i8 noundef zeroext 0)
  br label %658

658:                                              ; preds = %584, %579, %657, %654, %570, %558
  %659 = phi i32 [ %571, %570 ], [ %33, %558 ], [ %33, %654 ], [ %33, %657 ], [ %33, %579 ], [ %33, %584 ]
  br i1 %446, label %664, label %660

660:                                              ; preds = %658
  %661 = load i64, ptr %330, align 8
  %662 = and i64 %661, 65535
  %663 = icmp eq i64 %662, 141
  br i1 %663, label %681, label %664

664:                                              ; preds = %660, %658
  %665 = load i64, ptr %330, align 8
  %666 = and i64 %665, 65535
  %667 = icmp eq i64 %666, 32
  br i1 %667, label %668, label %671

668:                                              ; preds = %664
  %669 = load ptr, ptr %0, align 8, !tbaa !92
  %670 = icmp eq ptr %330, %669
  br i1 %670, label %678, label %671

671:                                              ; preds = %668, %664
  %672 = load i32, ptr %13, align 4, !tbaa !96
  %673 = icmp eq i32 %672, -1
  %674 = icmp sgt i32 %672, %659
  %675 = or i1 %673, %674
  br i1 %675, label %676, label %684

676:                                              ; preds = %671
  %677 = getelementptr inbounds %struct.matrix_info, ptr %0, i64 0, i32 3
  store i32 %659, ptr %13, align 4, !tbaa !96
  store ptr %37, ptr %677, align 8, !tbaa !140
  br label %684

678:                                              ; preds = %668
  %679 = icmp eq i8 %5, 0
  call fastcc void @analyze_matrix_allocation_site(ptr noundef nonnull %0, ptr noundef nonnull %37, i32 noundef %659)
  br i1 %679, label %684, label %680

680:                                              ; preds = %678
  call fastcc void @record_access_alloc_site_info(ptr noundef nonnull %0, ptr noundef nonnull %37, ptr noundef null, ptr noundef null, i32 noundef %659, i8 noundef zeroext 1)
  br label %684

681:                                              ; preds = %660
  %682 = icmp eq i32 %559, 66
  %683 = zext i1 %682 to i8
  call fastcc void @analyze_matrix_accesses(ptr noundef %0, ptr noundef nonnull %330, i32 noundef %659, i8 noundef zeroext %683, ptr noundef %4, i8 noundef zeroext %5)
  br label %684

684:                                              ; preds = %676, %671, %652, %647, %565, %560, %532, %527, %456, %451, %555, %556, %678, %680, %681
  %685 = phi i32 [ %33, %555 ], [ %659, %681 ], [ %33, %556 ], [ %659, %678 ], [ %659, %680 ], [ %33, %451 ], [ %33, %456 ], [ %33, %527 ], [ %33, %532 ], [ %33, %560 ], [ %33, %565 ], [ %33, %647 ], [ %33, %652 ], [ %659, %671 ], [ %659, %676 ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %8) #20
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %7) #20
  br label %686

686:                                              ; preds = %32, %326, %320, %318, %313, %304, %299, %284, %684, %144
  %687 = phi i32 [ %33, %144 ], [ %685, %684 ], [ %33, %284 ], [ %33, %299 ], [ %33, %304 ], [ %33, %313 ], [ %33, %318 ], [ %33, %320 ], [ %33, %326 ], [ %33, %32 ]
  %688 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %35, i64 0, i32 1
  %689 = load ptr, ptr %688, align 8, !tbaa !166
  %690 = icmp eq ptr %689, %24
  %691 = select i1 %690, ptr null, ptr %689
  %692 = icmp eq ptr %689, %24
  br i1 %692, label %693, label %32, !llvm.loop !199

693:                                              ; preds = %686, %23, %6
  ret void
}

declare zeroext i8 @gimple_assign_copy_p(ptr noundef) local_unnamed_addr #3

declare i32 @gimple_call_flags(ptr noundef) local_unnamed_addr #3

declare ptr @get_name(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc void @add_allocation_site(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #10 !prof !34 {
  %4 = alloca %struct.malloc_call_data, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #20
  %5 = getelementptr inbounds %struct.matrix_info, ptr %0, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !137
  %7 = icmp eq ptr %6, null
  %8 = load ptr, ptr @current_function_decl, align 8, !tbaa !35
  br i1 %7, label %9, label %10

9:                                                ; preds = %3
  store ptr %8, ptr %5, align 8, !tbaa !137
  br label %55

10:                                               ; preds = %3
  %11 = icmp eq ptr %6, %8
  br i1 %11, label %55, label %12

12:                                               ; preds = %10
  %13 = getelementptr inbounds %struct.matrix_info, ptr %0, i64 0, i32 4
  %14 = load ptr, ptr %13, align 8, !tbaa !113
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %12
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 731, ptr noundef nonnull @.str.3) #20
  br label %17

17:                                               ; preds = %12, %16
  %18 = getelementptr inbounds %struct.matrix_info, ptr %0, i64 0, i32 5
  %19 = load i32, ptr %18, align 8, !tbaa !138
  %20 = icmp sgt i32 %19, 0
  br i1 %20, label %21, label %34

21:                                               ; preds = %17
  %22 = load ptr, ptr %13, align 8, !tbaa !113
  %23 = zext nneg i32 %19 to i64
  br label %24

24:                                               ; preds = %21, %29
  %25 = phi i64 [ 0, %21 ], [ %30, %29 ]
  %26 = getelementptr inbounds ptr, ptr %22, i64 %25
  %27 = load ptr, ptr %26, align 8, !tbaa !35
  %28 = icmp eq ptr %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %24
  %30 = add nuw nsw i64 %25, 1
  %31 = icmp eq i64 %30, %23
  br i1 %31, label %34, label %24, !llvm.loop !200

32:                                               ; preds = %24
  %33 = trunc i64 %25 to i32
  br label %34

34:                                               ; preds = %32, %29, %17
  %35 = phi i32 [ 0, %17 ], [ %33, %32 ], [ %19, %29 ]
  %36 = icmp sgt i32 %35, %2
  br i1 %36, label %37, label %45

37:                                               ; preds = %34
  %38 = load ptr, ptr @current_function_decl, align 8, !tbaa !35
  store ptr %38, ptr %5, align 8, !tbaa !137
  %39 = getelementptr inbounds %struct.matrix_info, ptr %0, i64 0, i32 2
  %40 = load i32, ptr %39, align 4, !tbaa !96
  %41 = icmp eq i32 %40, -1
  %42 = icmp sgt i32 %40, %35
  %43 = or i1 %41, %42
  br i1 %43, label %44, label %54

44:                                               ; preds = %37
  store i32 %35, ptr %39, align 4, !tbaa !96
  br label %52

45:                                               ; preds = %34
  %46 = getelementptr inbounds %struct.matrix_info, ptr %0, i64 0, i32 2
  %47 = load i32, ptr %46, align 4, !tbaa !96
  %48 = icmp eq i32 %47, -1
  %49 = icmp sgt i32 %47, %2
  %50 = or i1 %48, %49
  br i1 %50, label %51, label %54

51:                                               ; preds = %45
  store i32 %2, ptr %46, align 4, !tbaa !96
  br label %52

52:                                               ; preds = %44, %51
  %53 = getelementptr inbounds %struct.matrix_info, ptr %0, i64 0, i32 3
  store ptr %1, ptr %53, align 8, !tbaa !140
  br label %54

54:                                               ; preds = %52, %45, %37
  br i1 %36, label %55, label %84

55:                                               ; preds = %10, %54, %9
  call fastcc void @collect_data_for_malloc_call(ptr noundef %1, ptr noundef nonnull %4)
  %56 = getelementptr inbounds %struct.matrix_info, ptr %0, i64 0, i32 4
  %57 = load ptr, ptr %56, align 8, !tbaa !113
  %58 = icmp eq ptr %57, null
  br i1 %58, label %59, label %64

59:                                               ; preds = %55
  %60 = add nsw i32 %2, 1
  %61 = sext i32 %60 to i64
  %62 = tail call ptr @xcalloc(i64 noundef %61, i64 noundef 8) #20
  store ptr %62, ptr %56, align 8, !tbaa !113
  %63 = getelementptr inbounds %struct.matrix_info, ptr %0, i64 0, i32 5
  store i32 %60, ptr %63, align 8, !tbaa !138
  br label %80

64:                                               ; preds = %55
  %65 = getelementptr inbounds %struct.matrix_info, ptr %0, i64 0, i32 5
  %66 = load i32, ptr %65, align 8, !tbaa !138
  %67 = icmp sgt i32 %66, %2
  br i1 %67, label %80, label %68

68:                                               ; preds = %64
  %69 = add nsw i32 %2, 1
  %70 = sext i32 %69 to i64
  %71 = shl nsw i64 %70, 3
  %72 = tail call ptr @xrealloc(ptr noundef nonnull %57, i64 noundef %71) #20
  store ptr %72, ptr %56, align 8, !tbaa !113
  %73 = load i32, ptr %65, align 8, !tbaa !138
  %74 = sext i32 %73 to i64
  %75 = getelementptr ptr, ptr %72, i64 %74
  %76 = getelementptr ptr, ptr %75, i64 1
  %77 = sub nsw i32 %2, %73
  %78 = sext i32 %77 to i64
  %79 = shl nsw i64 %78, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %76, i8 0, i64 %79, i1 false)
  store i32 %69, ptr %65, align 8, !tbaa !138
  br label %80

80:                                               ; preds = %64, %68, %59
  %81 = load ptr, ptr %56, align 8, !tbaa !113
  %82 = sext i32 %2 to i64
  %83 = getelementptr inbounds ptr, ptr %81, i64 %82
  store ptr %1, ptr %83, align 8, !tbaa !35
  br label %84

84:                                               ; preds = %54, %80
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #20
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal fastcc void @collect_data_for_malloc_call(ptr noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #10 !prof !34 {
  %3 = load i32, ptr %0, align 8
  %4 = and i32 %3, 255
  %5 = icmp eq i32 %4, 8
  br i1 %5, label %7, label %6

6:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 196, ptr noundef nonnull @.str.3) #20
  br label %7

7:                                                ; preds = %2, %6
  %8 = load i32, ptr %0, align 8
  %9 = and i32 %8, 255
  %10 = add nsw i32 %9, -10
  %11 = icmp ult i32 %10, -9
  br i1 %11, label %25, label %12

12:                                               ; preds = %7
  %13 = zext nneg i32 %9 to i64
  %14 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %13
  %15 = load i32, ptr %14, align 4, !tbaa !50
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %16
  %18 = load i64, ptr %17, align 8, !tbaa !83
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %12
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1622, ptr noundef nonnull @.str.3) #20
  br label %21

21:                                               ; preds = %20, %12
  %22 = getelementptr inbounds i8, ptr %0, i64 %18
  %23 = getelementptr inbounds ptr, ptr %22, i64 1
  %24 = load ptr, ptr %23, align 8, !tbaa !35
  br label %25

25:                                               ; preds = %21, %7
  %26 = phi ptr [ %24, %21 ], [ null, %7 ]
  %27 = load i64, ptr %26, align 8
  %28 = and i64 %27, 65535
  %29 = icmp eq i64 %28, 121
  br i1 %29, label %30, label %33

30:                                               ; preds = %25
  %31 = getelementptr inbounds %struct.tree_exp, ptr %26, i64 0, i32 3
  %32 = load ptr, ptr %31, align 8, !tbaa !46
  br label %33

33:                                               ; preds = %25, %30
  %34 = phi ptr [ %32, %30 ], [ null, %25 ]
  %35 = icmp eq ptr %34, null
  br i1 %35, label %67, label %36

36:                                               ; preds = %33
  %37 = getelementptr inbounds %struct.tree_function_decl, ptr %34, i64 0, i32 5
  %38 = load i32, ptr %37, align 8
  %39 = and i32 %38, 2047
  %40 = icmp eq i32 %39, 491
  br i1 %40, label %41, label %67

41:                                               ; preds = %36
  %42 = load i32, ptr %0, align 8
  %43 = and i32 %42, 255
  %44 = add nsw i32 %43, -10
  %45 = icmp ult i32 %44, -9
  br i1 %45, label %59, label %46

46:                                               ; preds = %41
  %47 = zext nneg i32 %43 to i64
  %48 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %47
  %49 = load i32, ptr %48, align 4, !tbaa !50
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %50
  %52 = load i64, ptr %51, align 8, !tbaa !83
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %46
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1622, ptr noundef nonnull @.str.3) #20
  br label %55

55:                                               ; preds = %54, %46
  %56 = getelementptr inbounds i8, ptr %0, i64 %52
  %57 = getelementptr inbounds ptr, ptr %56, i64 3
  %58 = load ptr, ptr %57, align 8, !tbaa !35
  br label %59

59:                                               ; preds = %41, %55
  %60 = phi ptr [ %58, %55 ], [ null, %41 ]
  store ptr %0, ptr %1, align 8, !tbaa !201
  %61 = getelementptr inbounds %struct.malloc_call_data, ptr %1, i64 0, i32 1
  store ptr %60, ptr %61, align 8, !tbaa !141
  %62 = load i64, ptr %60, align 8
  %63 = and i64 %62, 65535
  %64 = icmp eq i64 %63, 32
  %65 = getelementptr inbounds %struct.malloc_call_data, ptr %1, i64 0, i32 2
  %66 = select i1 %64, ptr null, ptr %60
  store ptr %66, ptr %65, align 8, !tbaa !202
  br label %67

67:                                               ; preds = %59, %33, %36
  ret void
}

declare ptr @xrealloc(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #15

; Function Attrs: cold nounwind uwtable
define internal fastcc void @update_type_size(ptr nocapture noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) unnamed_addr #10 !prof !34 {
  %5 = load i32, ptr %1, align 8
  %6 = and i32 %5, 255
  %7 = icmp eq i32 %6, 6
  br i1 %7, label %8, label %57

8:                                                ; preds = %4
  %9 = zext nneg i32 %6 to i64
  %10 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %9
  %11 = load i32, ptr %10, align 4, !tbaa !50
  %12 = zext i32 %11 to i64
  %13 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %12
  %14 = load i64, ptr %13, align 8, !tbaa !83
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %8
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1622, ptr noundef nonnull @.str.3) #20
  br label %17

17:                                               ; preds = %16, %8
  %18 = getelementptr inbounds i8, ptr %1, i64 %14
  %19 = load ptr, ptr %18, align 8, !tbaa !35
  %20 = load i64, ptr %19, align 8
  %21 = and i64 %20, 65535
  %22 = icmp eq i64 %21, 47
  br i1 %22, label %23, label %57

23:                                               ; preds = %17
  %24 = load i32, ptr %1, align 8
  %25 = and i32 %24, 255
  %26 = add nsw i32 %25, -10
  %27 = icmp ult i32 %26, -9
  br i1 %27, label %40, label %28

28:                                               ; preds = %23
  %29 = zext nneg i32 %25 to i64
  %30 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %29
  %31 = load i32, ptr %30, align 4, !tbaa !50
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %32
  %34 = load i64, ptr %33, align 8, !tbaa !83
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %28
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1622, ptr noundef nonnull @.str.3) #20
  br label %37

37:                                               ; preds = %36, %28
  %38 = getelementptr inbounds i8, ptr %1, i64 %34
  %39 = load ptr, ptr %38, align 8, !tbaa !35
  br label %40

40:                                               ; preds = %23, %37
  %41 = phi ptr [ %39, %37 ], [ null, %23 ]
  %42 = getelementptr inbounds %struct.tree_exp, ptr %41, i64 0, i32 3
  %43 = load ptr, ptr %42, align 8, !tbaa !46
  %44 = getelementptr inbounds %struct.tree_ssa_name, ptr %43, i64 0, i32 1
  %45 = load ptr, ptr %44, align 8, !tbaa !46
  %46 = getelementptr inbounds %struct.tree_common, ptr %45, i64 0, i32 2
  %47 = load ptr, ptr %46, align 8, !tbaa !46
  %48 = load i64, ptr %47, align 8
  %49 = trunc i64 %48 to i16
  switch i16 %49, label %50 [
    i16 10, label %51
    i16 12, label %51
  ]

50:                                               ; preds = %40
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 1001, ptr noundef nonnull @.str.3) #20
  br label %51

51:                                               ; preds = %40, %40, %50
  %52 = load ptr, ptr %42, align 8, !tbaa !46
  %53 = getelementptr inbounds %struct.tree_ssa_name, ptr %52, i64 0, i32 1
  %54 = load ptr, ptr %53, align 8, !tbaa !46
  %55 = getelementptr inbounds %struct.tree_common, ptr %54, i64 0, i32 2
  %56 = load ptr, ptr %55, align 8, !tbaa !46
  br label %57

57:                                               ; preds = %4, %17, %51
  %58 = phi ptr [ %56, %51 ], [ %2, %17 ], [ %2, %4 ]
  %59 = getelementptr inbounds %struct.tree_common, ptr %58, i64 0, i32 2
  %60 = load ptr, ptr %59, align 8, !tbaa !46
  %61 = tail call i64 @int_size_in_bytes(ptr noundef %60) #20
  %62 = icmp slt i64 %61, 1
  br i1 %62, label %63, label %71

63:                                               ; preds = %57
  %64 = getelementptr inbounds %struct.matrix_info, ptr %0, i64 0, i32 2
  %65 = load i32, ptr %64, align 4, !tbaa !96
  %66 = icmp eq i32 %65, -1
  %67 = icmp sgt i32 %65, %3
  %68 = or i1 %66, %67
  br i1 %68, label %69, label %112

69:                                               ; preds = %63
  store i32 %3, ptr %64, align 4, !tbaa !96
  %70 = getelementptr inbounds %struct.matrix_info, ptr %0, i64 0, i32 3
  store ptr %1, ptr %70, align 8, !tbaa !140
  br label %112

71:                                               ; preds = %57
  %72 = getelementptr inbounds %struct.matrix_info, ptr %0, i64 0, i32 11
  %73 = load ptr, ptr %72, align 8, !tbaa !160
  %74 = icmp eq ptr %73, null
  br i1 %74, label %75, label %80

75:                                               ; preds = %71
  %76 = add nsw i32 %3, 1
  %77 = sext i32 %76 to i64
  %78 = tail call ptr @xcalloc(i64 noundef %77, i64 noundef 8) #20
  store ptr %78, ptr %72, align 8, !tbaa !160
  %79 = getelementptr inbounds %struct.matrix_info, ptr %0, i64 0, i32 12
  store i32 %76, ptr %79, align 8, !tbaa !203
  br label %95

80:                                               ; preds = %71
  %81 = getelementptr inbounds %struct.matrix_info, ptr %0, i64 0, i32 12
  %82 = load i32, ptr %81, align 8, !tbaa !203
  %83 = icmp sgt i32 %82, %3
  br i1 %83, label %95, label %84

84:                                               ; preds = %80
  %85 = add nsw i32 %3, 1
  %86 = sext i32 %85 to i64
  %87 = shl nsw i64 %86, 3
  %88 = tail call ptr @xrealloc(ptr noundef nonnull %73, i64 noundef %87) #20
  store ptr %88, ptr %72, align 8, !tbaa !160
  %89 = load i32, ptr %81, align 8, !tbaa !203
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i64, ptr %88, i64 %90
  %92 = sub nsw i32 %85, %89
  %93 = sext i32 %92 to i64
  %94 = shl nsw i64 %93, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %91, i8 0, i64 %94, i1 false)
  store i32 %85, ptr %81, align 8, !tbaa !203
  br label %95

95:                                               ; preds = %80, %84, %75
  %96 = load ptr, ptr %72, align 8, !tbaa !160
  %97 = sext i32 %3 to i64
  %98 = getelementptr inbounds i64, ptr %96, i64 %97
  %99 = load i64, ptr %98, align 8, !tbaa !83
  %100 = icmp eq i64 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %95
  store i64 %61, ptr %98, align 8, !tbaa !83
  br label %112

102:                                              ; preds = %95
  %103 = icmp eq i64 %99, %61
  br i1 %103, label %112, label %104

104:                                              ; preds = %102
  %105 = getelementptr inbounds %struct.matrix_info, ptr %0, i64 0, i32 2
  %106 = load i32, ptr %105, align 4, !tbaa !96
  %107 = icmp eq i32 %106, -1
  %108 = icmp sgt i32 %106, %3
  %109 = or i1 %107, %108
  br i1 %109, label %110, label %112

110:                                              ; preds = %104
  store i32 %3, ptr %105, align 4, !tbaa !96
  %111 = getelementptr inbounds %struct.matrix_info, ptr %0, i64 0, i32 3
  store ptr %1, ptr %111, align 8, !tbaa !140
  br label %112

112:                                              ; preds = %110, %104, %69, %63, %101, %102
  ret void
}

declare i64 @int_size_in_bytes(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @ssa_accessed_in_tree(ptr noundef readonly %0, ptr nocapture noundef %1) unnamed_addr #16 !prof !34 {
  %3 = load i64, ptr %0, align 8
  %4 = trunc i64 %3 to i32
  %5 = and i32 %4, 65535
  %6 = getelementptr inbounds %struct.ssa_acc_in_tree, ptr %1, i64 0, i32 1
  store i32 %5, ptr %6, align 8, !tbaa !195
  %7 = trunc i64 %3 to i16
  switch i16 %7, label %26 [
    i16 141, label %8
    i16 47, label %11
  ]

8:                                                ; preds = %2
  %9 = load ptr, ptr %1, align 8, !tbaa !193
  %10 = icmp eq ptr %9, %0
  br i1 %10, label %24, label %26

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !46
  %14 = load i64, ptr %13, align 8
  %15 = trunc i64 %14 to i16
  switch i16 %15, label %26 [
    i16 32, label %21
    i16 34, label %21
    i16 36, label %21
    i16 141, label %16
  ]

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.tree_ssa_name, ptr %13, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !46
  %19 = load i64, ptr %18, align 8
  %20 = trunc i64 %19 to i16
  switch i16 %20, label %26 [
    i16 32, label %21
    i16 34, label %21
    i16 36, label %21
  ]

21:                                               ; preds = %16, %16, %11, %11, %16, %11
  %22 = load ptr, ptr %1, align 8, !tbaa !193
  %23 = icmp eq ptr %13, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %21, %8
  %25 = getelementptr inbounds %struct.ssa_acc_in_tree, ptr %1, i64 0, i32 5
  store i8 1, ptr %25, align 8, !tbaa !197
  br label %26

26:                                               ; preds = %24, %16, %11, %2, %21, %8
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal fastcc void @record_access_alloc_site_info(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i8 noundef zeroext %5) unnamed_addr #10 !prof !34 {
  %7 = getelementptr inbounds %struct.matrix_info, ptr %0, i64 0, i32 14
  %8 = load ptr, ptr %7, align 8, !tbaa !121
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %6
  %11 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef 100) #20
  store ptr %11, ptr %7, align 8, !tbaa !121
  br label %12

12:                                               ; preds = %10, %6
  %13 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 48) #20
  store ptr %1, ptr %13, align 8, !tbaa !125
  %14 = getelementptr inbounds %struct.access_site_info, ptr %13, i64 0, i32 1
  store ptr %2, ptr %14, align 8, !tbaa !133
  %15 = getelementptr inbounds %struct.access_site_info, ptr %13, i64 0, i32 2
  store ptr %3, ptr %15, align 8, !tbaa !187
  %16 = load ptr, ptr @current_function_decl, align 8, !tbaa !35
  %17 = getelementptr inbounds %struct.access_site_info, ptr %13, i64 0, i32 5
  store ptr %16, ptr %17, align 8, !tbaa !204
  %18 = getelementptr inbounds %struct.access_site_info, ptr %13, i64 0, i32 3
  store i32 %4, ptr %18, align 8, !tbaa !127
  %19 = getelementptr inbounds %struct.access_site_info, ptr %13, i64 0, i32 4
  store i8 %5, ptr %19, align 4, !tbaa !180
  %20 = load ptr, ptr %7, align 8, !tbaa !35
  %21 = icmp eq ptr %20, null
  br i1 %21, label %27, label %22

22:                                               ; preds = %12
  %23 = getelementptr inbounds %struct.VEC_access_site_info_p_base, ptr %20, i64 0, i32 1
  %24 = load i32, ptr %23, align 4, !tbaa !205
  %25 = load i32, ptr %20, align 8, !tbaa !122
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %12, %22
  %28 = tail call ptr @vec_heap_p_reserve(ptr noundef %20, i32 noundef 1) #20
  store ptr %28, ptr %7, align 8, !tbaa !35
  br label %29

29:                                               ; preds = %22, %27
  %30 = load ptr, ptr %7, align 8, !tbaa !35
  %31 = load i32, ptr %30, align 8, !tbaa !122
  %32 = add i32 %31, 1
  store i32 %32, ptr %30, align 8, !tbaa !122
  %33 = zext i32 %31 to i64
  %34 = getelementptr inbounds %struct.VEC_access_site_info_p_base, ptr %30, i64 0, i32 2, i64 %33
  store ptr %13, ptr %34, align 8, !tbaa !35
  ret void
}

declare ptr @build_int_cst(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @get_index_from_offset(ptr noundef %0) unnamed_addr #10 !prof !34 {
  br label %2

2:                                                ; preds = %75, %1
  %3 = phi ptr [ %0, %1 ], [ %80, %75 ]
  %4 = load i32, ptr %3, align 8
  %5 = and i32 %4, 255
  %6 = icmp eq i32 %5, 16
  br i1 %6, label %161, label %7

7:                                                ; preds = %2
  %8 = tail call zeroext i8 @gimple_assign_copy_p(ptr noundef nonnull %3) #20
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %42

10:                                               ; preds = %7
  %11 = load i32, ptr %3, align 8
  %12 = and i32 %11, 255
  %13 = icmp eq i32 %12, 6
  br i1 %13, label %14, label %81

14:                                               ; preds = %10
  %15 = lshr i32 %11, 16
  %16 = zext nneg i32 %15 to i64
  %17 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %16
  %18 = load i8, ptr %17, align 1, !tbaa !46
  %19 = icmp eq i8 %18, 3
  br i1 %19, label %20, label %36

20:                                               ; preds = %14
  %21 = zext nneg i32 %12 to i64
  %22 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %21
  %23 = load i32, ptr %22, align 4, !tbaa !50
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %24
  %26 = load i64, ptr %25, align 8, !tbaa !83
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %20
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1622, ptr noundef nonnull @.str.3) #20
  br label %29

29:                                               ; preds = %28, %20
  %30 = getelementptr inbounds i8, ptr %3, i64 %26
  %31 = getelementptr inbounds ptr, ptr %30, i64 1
  %32 = load ptr, ptr %31, align 8, !tbaa !35
  %33 = load i64, ptr %32, align 8
  %34 = trunc i64 %33 to i32
  %35 = and i32 %34, 65535
  br label %36

36:                                               ; preds = %29, %14
  %37 = phi i32 [ %35, %29 ], [ %15, %14 ]
  %38 = freeze i32 %37
  %39 = and i32 %38, 65533
  %40 = icmp eq i32 %39, 116
  br i1 %40, label %42, label %41

41:                                               ; preds = %36
  switch i32 %38, label %81 [
    i32 113, label %42
    i32 77, label %42
  ]

42:                                               ; preds = %41, %41, %36, %7
  %43 = load i32, ptr %3, align 8
  %44 = and i32 %43, 255
  %45 = add nsw i32 %44, -1
  %46 = icmp ult i32 %45, 9
  tail call void @llvm.assume(i1 %46)
  %47 = zext nneg i32 %44 to i64
  %48 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %47
  %49 = load i32, ptr %48, align 4, !tbaa !50
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %50
  %52 = load i64, ptr %51, align 8, !tbaa !83
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %42
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1622, ptr noundef nonnull @.str.3) #20
  br label %55

55:                                               ; preds = %54, %42
  %56 = getelementptr inbounds i8, ptr %3, i64 %52
  %57 = getelementptr inbounds ptr, ptr %56, i64 1
  %58 = load ptr, ptr %57, align 8, !tbaa !35
  %59 = load i64, ptr %58, align 8
  %60 = and i64 %59, 65535
  %61 = icmp eq i64 %60, 141
  br i1 %61, label %62, label %81

62:                                               ; preds = %55
  %63 = load i32, ptr %3, align 8
  %64 = and i32 %63, 255
  %65 = add nsw i32 %64, -1
  %66 = icmp ult i32 %65, 9
  tail call void @llvm.assume(i1 %66)
  %67 = zext nneg i32 %64 to i64
  %68 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %67
  %69 = load i32, ptr %68, align 4, !tbaa !50
  %70 = zext i32 %69 to i64
  %71 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %70
  %72 = load i64, ptr %71, align 8, !tbaa !83
  %73 = icmp eq i64 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %62
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1622, ptr noundef nonnull @.str.3) #20
  br label %75

75:                                               ; preds = %74, %62
  %76 = getelementptr inbounds i8, ptr %3, i64 %72
  %77 = getelementptr inbounds ptr, ptr %76, i64 1
  %78 = load ptr, ptr %77, align 8, !tbaa !35
  %79 = getelementptr inbounds %struct.tree_ssa_name, ptr %78, i64 0, i32 2
  %80 = load ptr, ptr %79, align 8, !tbaa !46
  br label %2

81:                                               ; preds = %41, %10, %55
  %82 = load i32, ptr %3, align 8
  %83 = and i32 %82, 255
  %84 = icmp eq i32 %83, 6
  br i1 %84, label %85, label %161

85:                                               ; preds = %81
  %86 = lshr i32 %82, 16
  %87 = zext nneg i32 %86 to i64
  %88 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %87
  %89 = load i8, ptr %88, align 1, !tbaa !46
  %90 = icmp eq i8 %89, 3
  br i1 %90, label %91, label %107

91:                                               ; preds = %85
  %92 = zext nneg i32 %83 to i64
  %93 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %92
  %94 = load i32, ptr %93, align 4, !tbaa !50
  %95 = zext i32 %94 to i64
  %96 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %95
  %97 = load i64, ptr %96, align 8, !tbaa !83
  %98 = icmp eq i64 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %91
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1622, ptr noundef nonnull @.str.3) #20
  br label %100

100:                                              ; preds = %99, %91
  %101 = getelementptr inbounds i8, ptr %3, i64 %97
  %102 = getelementptr inbounds ptr, ptr %101, i64 1
  %103 = load ptr, ptr %102, align 8, !tbaa !35
  %104 = load i64, ptr %103, align 8
  %105 = trunc i64 %104 to i32
  %106 = and i32 %105, 65535
  br label %107

107:                                              ; preds = %85, %100
  %108 = phi i32 [ %106, %100 ], [ %86, %85 ]
  %109 = icmp eq i32 %108, 65
  br i1 %109, label %110, label %161

110:                                              ; preds = %107
  %111 = load i32, ptr %3, align 8
  %112 = and i32 %111, 255
  %113 = add nsw i32 %112, -10
  %114 = icmp ult i32 %113, -9
  br i1 %114, label %128, label %115

115:                                              ; preds = %110
  %116 = zext nneg i32 %112 to i64
  %117 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %116
  %118 = load i32, ptr %117, align 4, !tbaa !50
  %119 = zext i32 %118 to i64
  %120 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %119
  %121 = load i64, ptr %120, align 8, !tbaa !83
  %122 = icmp eq i64 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %115
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1622, ptr noundef nonnull @.str.3) #20
  br label %124

124:                                              ; preds = %123, %115
  %125 = getelementptr inbounds i8, ptr %3, i64 %121
  %126 = getelementptr inbounds ptr, ptr %125, i64 1
  %127 = load ptr, ptr %126, align 8, !tbaa !35
  br label %128

128:                                              ; preds = %110, %124
  %129 = phi ptr [ %127, %124 ], [ null, %110 ]
  %130 = getelementptr inbounds %struct.gimple_statement_base, ptr %3, i64 0, i32 3
  %131 = load i32, ptr %130, align 4, !tbaa !46
  %132 = icmp ugt i32 %131, 2
  br i1 %132, label %133, label %151

133:                                              ; preds = %128
  %134 = load i32, ptr %3, align 8
  %135 = and i32 %134, 255
  %136 = add nsw i32 %135, -10
  %137 = icmp ult i32 %136, -9
  br i1 %137, label %151, label %138

138:                                              ; preds = %133
  %139 = zext nneg i32 %135 to i64
  %140 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %139
  %141 = load i32, ptr %140, align 4, !tbaa !50
  %142 = zext i32 %141 to i64
  %143 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %142
  %144 = load i64, ptr %143, align 8, !tbaa !83
  %145 = icmp eq i64 %144, 0
  br i1 %145, label %146, label %147

146:                                              ; preds = %138
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1622, ptr noundef nonnull @.str.3) #20
  br label %147

147:                                              ; preds = %146, %138
  %148 = getelementptr inbounds i8, ptr %3, i64 %144
  %149 = getelementptr inbounds ptr, ptr %148, i64 2
  %150 = load ptr, ptr %149, align 8, !tbaa !35
  br label %151

151:                                              ; preds = %128, %133, %147
  %152 = phi ptr [ null, %128 ], [ %150, %147 ], [ null, %133 ]
  %153 = load i64, ptr %129, align 8
  %154 = and i64 %153, 65535
  %155 = icmp eq i64 %154, 23
  br i1 %155, label %161, label %156

156:                                              ; preds = %151
  %157 = load i64, ptr %152, align 8
  %158 = and i64 %157, 65535
  %159 = icmp eq i64 %158, 23
  %160 = select i1 %159, ptr %129, ptr null
  br label %161

161:                                              ; preds = %156, %151, %81, %107, %2
  %162 = phi ptr [ null, %2 ], [ null, %107 ], [ null, %81 ], [ %152, %151 ], [ %160, %156 ]
  ret ptr %162
}

declare ptr @vec_heap_p_reserve_exact(ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @vec_heap_p_reserve(ptr noundef, i32 noundef) local_unnamed_addr #3

declare zeroext i8 @simple_iv(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

declare i64 @int_cst_value(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @can_calculate_expr_before_stmt(ptr noundef readonly %0, ptr noundef %1) unnamed_addr #10 !prof !34 {
  %3 = load i64, ptr %0, align 8
  %4 = trunc i64 %3 to i16
  switch i16 %4, label %182 [
    i16 141, label %5
    i16 32, label %183
    i16 34, label %183
    i16 23, label %183
  ]

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !46
  %8 = lshr i32 %7, 6
  %9 = zext nneg i32 %8 to i64
  %10 = getelementptr inbounds %struct.simple_bitmap_def, ptr %1, i64 0, i32 3, i64 %9
  %11 = load i64, ptr %10, align 8, !tbaa !83
  %12 = and i32 %7, 63
  %13 = zext nneg i32 %12 to i64
  %14 = shl nuw i64 1, %13
  %15 = and i64 %14, %11
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %183

17:                                               ; preds = %5
  %18 = load ptr, ptr %1, align 8, !tbaa !109
  %19 = icmp eq ptr %18, null
  br i1 %19, label %24, label %20

20:                                               ; preds = %17
  %21 = getelementptr inbounds i8, ptr %18, i64 %9
  %22 = load i8, ptr %21, align 1, !tbaa !46
  %23 = add i8 %22, 1
  store i8 %23, ptr %21, align 1, !tbaa !46
  br label %24

24:                                               ; preds = %17, %20
  %25 = load i64, ptr %10, align 8, !tbaa !83
  %26 = or i64 %25, %14
  store i64 %26, ptr %10, align 8, !tbaa !83
  %27 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 2
  %28 = load ptr, ptr %27, align 8, !tbaa !46
  %29 = load i32, ptr %28, align 8
  %30 = trunc i32 %29 to i8
  switch i8 %30, label %153 [
    i8 6, label %37
    i8 16, label %31
  ]

31:                                               ; preds = %24
  %32 = getelementptr inbounds %struct.gimple_statement_phi, ptr %28, i64 0, i32 2
  %33 = load i32, ptr %32, align 4, !tbaa !46
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %153, label %35

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.gimple_statement_phi, ptr %28, i64 0, i32 1
  br label %132

37:                                               ; preds = %24
  %38 = lshr i32 %29, 16
  %39 = zext nneg i32 %38 to i64
  %40 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %39
  %41 = load i8, ptr %40, align 1, !tbaa !46
  %42 = icmp eq i8 %41, 3
  br i1 %42, label %43, label %62

43:                                               ; preds = %37
  %44 = and i32 %29, 255
  %45 = add nsw i32 %44, -1
  %46 = icmp ult i32 %45, 9
  tail call void @llvm.assume(i1 %46)
  %47 = zext nneg i32 %44 to i64
  %48 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %47
  %49 = load i32, ptr %48, align 4, !tbaa !50
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %50
  %52 = load i64, ptr %51, align 8, !tbaa !83
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %43
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1622, ptr noundef nonnull @.str.3) #20
  br label %55

55:                                               ; preds = %54, %43
  %56 = getelementptr inbounds i8, ptr %28, i64 %52
  %57 = getelementptr inbounds ptr, ptr %56, i64 1
  %58 = load ptr, ptr %57, align 8, !tbaa !35
  %59 = load i64, ptr %58, align 8
  %60 = trunc i64 %59 to i32
  %61 = and i32 %60, 65535
  br label %62

62:                                               ; preds = %37, %55
  %63 = phi i32 [ %61, %55 ], [ %38, %37 ]
  %64 = load i32, ptr %28, align 8
  %65 = and i32 %64, 255
  %66 = add nsw i32 %65, -10
  %67 = icmp ult i32 %66, -9
  br i1 %67, label %81, label %68

68:                                               ; preds = %62
  %69 = zext nneg i32 %65 to i64
  %70 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %69
  %71 = load i32, ptr %70, align 4, !tbaa !50
  %72 = zext i32 %71 to i64
  %73 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %72
  %74 = load i64, ptr %73, align 8, !tbaa !83
  %75 = icmp eq i64 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %68
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1622, ptr noundef nonnull @.str.3) #20
  br label %77

77:                                               ; preds = %76, %68
  %78 = getelementptr inbounds i8, ptr %28, i64 %74
  %79 = getelementptr inbounds ptr, ptr %78, i64 1
  %80 = load ptr, ptr %79, align 8, !tbaa !35
  br label %81

81:                                               ; preds = %62, %77
  %82 = phi ptr [ %80, %77 ], [ null, %62 ]
  %83 = trunc i32 %63 to i16
  switch i16 %83, label %122 [
    i16 66, label %84
    i16 63, label %84
    i16 64, label %84
    i16 65, label %84
    i16 116, label %116
    i16 113, label %116
  ]

84:                                               ; preds = %81, %81, %81, %81
  %85 = getelementptr inbounds %struct.gimple_statement_base, ptr %28, i64 0, i32 3
  %86 = load i32, ptr %85, align 4, !tbaa !46
  %87 = icmp ugt i32 %86, 2
  br i1 %87, label %88, label %106

88:                                               ; preds = %84
  %89 = load i32, ptr %28, align 8
  %90 = and i32 %89, 255
  %91 = add nsw i32 %90, -10
  %92 = icmp ult i32 %91, -9
  br i1 %92, label %106, label %93

93:                                               ; preds = %88
  %94 = zext nneg i32 %90 to i64
  %95 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %94
  %96 = load i32, ptr %95, align 4, !tbaa !50
  %97 = zext i32 %96 to i64
  %98 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %97
  %99 = load i64, ptr %98, align 8, !tbaa !83
  %100 = icmp eq i64 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %93
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1622, ptr noundef nonnull @.str.3) #20
  br label %102

102:                                              ; preds = %101, %93
  %103 = getelementptr inbounds i8, ptr %28, i64 %99
  %104 = getelementptr inbounds ptr, ptr %103, i64 2
  %105 = load ptr, ptr %104, align 8, !tbaa !35
  br label %106

106:                                              ; preds = %84, %88, %102
  %107 = phi ptr [ null, %84 ], [ %105, %102 ], [ null, %88 ]
  %108 = tail call fastcc ptr @can_calculate_expr_before_stmt(ptr noundef %82, ptr noundef nonnull %1)
  %109 = icmp eq ptr %108, null
  br i1 %109, label %153, label %110

110:                                              ; preds = %106
  %111 = tail call fastcc ptr @can_calculate_expr_before_stmt(ptr noundef %107, ptr noundef nonnull %1)
  %112 = icmp eq ptr %111, null
  br i1 %112, label %153, label %113

113:                                              ; preds = %110
  %114 = tail call fastcc ptr @gimple_expr_type(ptr noundef nonnull %28)
  %115 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef %63, ptr noundef %114, ptr noundef nonnull %108, ptr noundef nonnull %111) #20
  br label %153

116:                                              ; preds = %81, %81
  %117 = tail call fastcc ptr @can_calculate_expr_before_stmt(ptr noundef %82, ptr noundef nonnull %1)
  %118 = icmp eq ptr %117, null
  br i1 %118, label %153, label %119

119:                                              ; preds = %116
  %120 = tail call fastcc ptr @gimple_expr_type(ptr noundef nonnull %28)
  %121 = tail call ptr @build1_stat(i32 noundef %63, ptr noundef %120, ptr noundef nonnull %117) #20
  br label %153

122:                                              ; preds = %81
  %123 = tail call zeroext i8 @gimple_assign_single_p(ptr noundef nonnull %28) #20
  %124 = icmp eq i8 %123, 0
  br i1 %124, label %153, label %125

125:                                              ; preds = %122
  %126 = tail call fastcc ptr @can_calculate_expr_before_stmt(ptr noundef %82, ptr noundef nonnull %1)
  br label %153

127:                                              ; preds = %150
  %128 = add nuw nsw i64 %133, 1
  %129 = load i32, ptr %32, align 4, !tbaa !46
  %130 = zext i32 %129 to i64
  %131 = icmp ult i64 %128, %130
  br i1 %131, label %132, label %153, !llvm.loop !206

132:                                              ; preds = %35, %127
  %133 = phi i64 [ 0, %35 ], [ %128, %127 ]
  %134 = phi ptr [ null, %35 ], [ %151, %127 ]
  %135 = trunc i64 %133 to i32
  %136 = load i32, ptr %36, align 8, !tbaa !46
  %137 = icmp ult i32 %136, %135
  br i1 %137, label %138, label %139

138:                                              ; preds = %132
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 3103, ptr noundef nonnull @.str.3) #20
  br label %139

139:                                              ; preds = %132, %138
  %140 = getelementptr inbounds %struct.gimple_statement_phi, ptr %28, i64 0, i32 4, i64 %133, i32 0, i32 3
  %141 = load ptr, ptr %140, align 8, !tbaa !170
  %142 = load ptr, ptr %141, align 8, !tbaa !35
  %143 = tail call fastcc ptr @can_calculate_expr_before_stmt(ptr noundef %142, ptr noundef nonnull %1)
  %144 = icmp eq ptr %134, null
  br i1 %144, label %150, label %145

145:                                              ; preds = %139
  %146 = icmp eq ptr %143, null
  br i1 %146, label %150, label %147

147:                                              ; preds = %145
  %148 = tail call zeroext i8 @expressions_equal_p(ptr noundef nonnull %134, ptr noundef nonnull %143) #20
  %149 = icmp ne i8 %148, 0
  br label %150

150:                                              ; preds = %147, %145, %139
  %151 = phi ptr [ %134, %145 ], [ %143, %139 ], [ %134, %147 ]
  %152 = phi i1 [ false, %145 ], [ true, %139 ], [ %149, %147 ]
  br i1 %152, label %127, label %153

153:                                              ; preds = %150, %127, %31, %116, %24, %106, %110, %113, %119, %122, %125
  %154 = phi ptr [ %126, %125 ], [ %121, %119 ], [ %115, %113 ], [ null, %106 ], [ null, %110 ], [ null, %122 ], [ null, %24 ], [ null, %116 ], [ null, %31 ], [ %151, %127 ], [ null, %150 ]
  %155 = load i32, ptr %6, align 8, !tbaa !46
  %156 = load ptr, ptr %1, align 8, !tbaa !109
  %157 = icmp eq ptr %156, null
  br i1 %157, label %172, label %158

158:                                              ; preds = %153
  %159 = lshr i32 %155, 6
  %160 = zext nneg i32 %159 to i64
  %161 = getelementptr inbounds %struct.simple_bitmap_def, ptr %1, i64 0, i32 3, i64 %160
  %162 = load i64, ptr %161, align 8, !tbaa !83
  %163 = and i32 %155, 63
  %164 = zext nneg i32 %163 to i64
  %165 = shl nuw i64 1, %164
  %166 = and i64 %162, %165
  %167 = icmp eq i64 %166, 0
  br i1 %167, label %172, label %168

168:                                              ; preds = %158
  %169 = getelementptr inbounds i8, ptr %156, i64 %160
  %170 = load i8, ptr %169, align 1, !tbaa !46
  %171 = add i8 %170, -1
  store i8 %171, ptr %169, align 1, !tbaa !46
  br label %172

172:                                              ; preds = %153, %158, %168
  %173 = and i32 %155, 63
  %174 = zext nneg i32 %173 to i64
  %175 = shl nuw i64 1, %174
  %176 = xor i64 %175, -1
  %177 = lshr i32 %155, 6
  %178 = zext nneg i32 %177 to i64
  %179 = getelementptr inbounds %struct.simple_bitmap_def, ptr %1, i64 0, i32 3, i64 %178
  %180 = load i64, ptr %179, align 8, !tbaa !83
  %181 = and i64 %180, %176
  store i64 %181, ptr %179, align 8, !tbaa !83
  br label %183

182:                                              ; preds = %2
  br label %183

183:                                              ; preds = %2, %2, %2, %5, %182, %172
  %184 = phi ptr [ null, %182 ], [ %154, %172 ], [ null, %5 ], [ %0, %2 ], [ %0, %2 ], [ %0, %2 ]
  ret ptr %184
}

declare ptr @fold_build2_stat_loc(i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define internal fastcc ptr @gimple_expr_type(ptr noundef %0) unnamed_addr #2 !prof !34 {
  %2 = load i32, ptr %0, align 8
  %3 = trunc i32 %2 to i8
  switch i8 %3, label %75 [
    i8 8, label %4
    i8 6, label %25
    i8 1, label %76
  ]

4:                                                ; preds = %1
  %5 = and i32 %2, 255
  %6 = add nsw i32 %5, -1
  %7 = icmp ult i32 %6, 9
  tail call void @llvm.assume(i1 %7)
  %8 = zext nneg i32 %5 to i64
  %9 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %8
  %10 = load i32, ptr %9, align 4, !tbaa !50
  %11 = zext i32 %10 to i64
  %12 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %11
  %13 = load i64, ptr %12, align 8, !tbaa !83
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %4
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1622, ptr noundef nonnull @.str.3) #20
  br label %16

16:                                               ; preds = %4, %15
  %17 = getelementptr inbounds i8, ptr %0, i64 %13
  %18 = getelementptr inbounds ptr, ptr %17, i64 1
  %19 = load ptr, ptr %18, align 8, !tbaa !35
  %20 = getelementptr inbounds %struct.tree_common, ptr %19, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !46
  %22 = getelementptr inbounds %struct.tree_common, ptr %21, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !46
  %24 = getelementptr inbounds %struct.tree_common, ptr %23, i64 0, i32 2
  br label %76

25:                                               ; preds = %1
  %26 = lshr i32 %2, 16
  %27 = zext nneg i32 %26 to i64
  %28 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %27
  %29 = load i8, ptr %28, align 1, !tbaa !46
  %30 = icmp eq i8 %29, 3
  br i1 %30, label %31, label %51

31:                                               ; preds = %25
  %32 = load i32, ptr %0, align 8
  %33 = and i32 %32, 255
  %34 = add nsw i32 %33, -1
  %35 = icmp ult i32 %34, 9
  tail call void @llvm.assume(i1 %35)
  %36 = zext nneg i32 %33 to i64
  %37 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %36
  %38 = load i32, ptr %37, align 4, !tbaa !50
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %39
  %41 = load i64, ptr %40, align 8, !tbaa !83
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %31
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1622, ptr noundef nonnull @.str.3) #20
  br label %44

44:                                               ; preds = %43, %31
  %45 = getelementptr inbounds i8, ptr %0, i64 %41
  %46 = getelementptr inbounds ptr, ptr %45, i64 1
  %47 = load ptr, ptr %46, align 8, !tbaa !35
  %48 = load i64, ptr %47, align 8
  %49 = trunc i64 %48 to i32
  %50 = and i32 %49, 65535
  br label %51

51:                                               ; preds = %25, %44
  %52 = phi i32 [ %50, %44 ], [ %26, %25 ]
  %53 = icmp eq i32 %52, 66
  br i1 %53, label %54, label %72

54:                                               ; preds = %51
  %55 = load i32, ptr %0, align 8
  %56 = and i32 %55, 255
  %57 = add nsw i32 %56, -1
  %58 = icmp ult i32 %57, 9
  tail call void @llvm.assume(i1 %58)
  %59 = zext nneg i32 %56 to i64
  %60 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %59
  %61 = load i32, ptr %60, align 4, !tbaa !50
  %62 = zext i32 %61 to i64
  %63 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %62
  %64 = load i64, ptr %63, align 8, !tbaa !83
  %65 = icmp eq i64 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %54
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1622, ptr noundef nonnull @.str.3) #20
  br label %67

67:                                               ; preds = %66, %54
  %68 = getelementptr inbounds i8, ptr %0, i64 %64
  %69 = getelementptr inbounds ptr, ptr %68, i64 1
  %70 = load ptr, ptr %69, align 8, !tbaa !35
  %71 = getelementptr inbounds %struct.tree_common, ptr %70, i64 0, i32 2
  br label %76

72:                                               ; preds = %51
  %73 = tail call ptr @gimple_get_lhs(ptr noundef nonnull %0) #20
  %74 = getelementptr inbounds %struct.tree_common, ptr %73, i64 0, i32 2
  br label %76

75:                                               ; preds = %1
  br label %76

76:                                               ; preds = %1, %16, %72, %67, %75
  %77 = phi ptr [ getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), %75 ], [ %24, %16 ], [ %71, %67 ], [ %74, %72 ], [ getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), %1 ]
  %78 = load ptr, ptr %77, align 8, !tbaa !46
  ret ptr %78
}

declare ptr @build1_stat(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @expressions_equal_p(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @walk_tree_without_duplicates_1(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal noundef ptr @check_var_notmodified_p(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef %2) #10 !prof !34 {
  %4 = load ptr, ptr %0, align 8, !tbaa !35
  %5 = load i64, ptr %4, align 8
  %6 = trunc i64 %5 to i16
  switch i16 %6, label %63 [
    i16 32, label %7
    i16 34, label %7
  ]

7:                                                ; preds = %3, %3
  %8 = load ptr, ptr %2, align 8, !tbaa !155
  %9 = getelementptr inbounds %struct.tree_function_decl, ptr %8, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !46
  %11 = getelementptr inbounds %struct.function, ptr %10, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !65
  %13 = load ptr, ptr %12, align 8, !tbaa !67
  %14 = getelementptr inbounds %struct.basic_block_def, ptr %13, i64 0, i32 6
  %15 = load ptr, ptr %14, align 8, !tbaa !69
  %16 = getelementptr inbounds %struct.control_flow_graph, ptr %12, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !71
  %18 = icmp eq ptr %15, %17
  br i1 %18, label %62, label %28

19:                                               ; preds = %58, %45
  %20 = getelementptr inbounds %struct.basic_block_def, ptr %29, i64 0, i32 6
  %21 = load ptr, ptr %20, align 8, !tbaa !69
  %22 = load ptr, ptr %9, align 8, !tbaa !46
  %23 = getelementptr inbounds %struct.function, ptr %22, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !65
  %25 = getelementptr inbounds %struct.control_flow_graph, ptr %24, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !71
  %27 = icmp eq ptr %21, %26
  br i1 %27, label %62, label %28, !llvm.loop !207

28:                                               ; preds = %7, %19
  %29 = phi ptr [ %21, %19 ], [ %15, %7 ]
  %30 = getelementptr inbounds %struct.basic_block_def, ptr %29, i64 0, i32 13
  %31 = load i32, ptr %30, align 8, !tbaa !73, !noalias !208
  %32 = and i32 %31, 512
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %28
  %35 = getelementptr inbounds %struct.basic_block_def, ptr %29, i64 0, i32 7
  %36 = load ptr, ptr %35, align 8, !tbaa !46, !noalias !208
  %37 = icmp eq ptr %36, null
  br i1 %37, label %40, label %38

38:                                               ; preds = %34
  %39 = load ptr, ptr %36, align 8, !tbaa !77, !noalias !208
  br label %40

40:                                               ; preds = %38, %34, %28
  %41 = phi ptr [ %39, %38 ], [ null, %34 ], [ null, %28 ]
  %42 = icmp eq ptr %41, null
  br i1 %42, label %45, label %43

43:                                               ; preds = %40
  %44 = load ptr, ptr %41, align 8, !tbaa !79, !noalias !208
  br label %45

45:                                               ; preds = %40, %43
  %46 = phi ptr [ %44, %43 ], [ null, %40 ]
  %47 = icmp eq ptr %46, null
  br i1 %47, label %19, label %48

48:                                               ; preds = %45, %58
  %49 = phi ptr [ %60, %58 ], [ %46, %45 ]
  %50 = load ptr, ptr %49, align 8, !tbaa !81
  %51 = load i32, ptr %50, align 8
  %52 = trunc i32 %51 to i8
  switch i8 %52, label %58 [
    i8 6, label %53
    i8 8, label %53
  ]

53:                                               ; preds = %48, %48
  %54 = tail call ptr @gimple_get_lhs(ptr noundef nonnull %50) #20
  %55 = icmp eq ptr %54, %4
  br i1 %55, label %56, label %58

56:                                               ; preds = %53
  %57 = getelementptr inbounds %struct.check_var_data, ptr %2, i64 0, i32 1
  store ptr %50, ptr %57, align 8, !tbaa !157
  br label %63

58:                                               ; preds = %48, %53
  %59 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %49, i64 0, i32 2
  %60 = load ptr, ptr %59, align 8, !tbaa !86
  %61 = icmp eq ptr %60, null
  br i1 %61, label %19, label %48, !llvm.loop !211

62:                                               ; preds = %19, %7
  store i32 1, ptr %1, align 4, !tbaa !50
  br label %63

63:                                               ; preds = %3, %62, %56
  %64 = phi ptr [ %4, %56 ], [ null, %62 ], [ null, %3 ]
  ret ptr %64
}

declare void @gsi_for_stmt(ptr dead_on_unwind writable sret(%struct.gimple_stmt_iterator) align 8, ptr noundef) local_unnamed_addr #3

declare ptr @add_new_static_var(ptr noundef) local_unnamed_addr #3

declare ptr @force_gimple_operand_gsi(ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #3

declare ptr @gimple_build_assign_stat(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @mark_symbols_for_renaming(ptr noundef) local_unnamed_addr #3

declare void @gsi_insert_before(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @update_ssa(i32 noundef) local_unnamed_addr #3

declare ptr @cgraph_node(ptr noundef) local_unnamed_addr #3

declare ptr @cgraph_edge(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @cgraph_remove_edge(ptr noundef) local_unnamed_addr #3

declare void @gsi_remove(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define internal fastcc void @link_use_stmts_after(ptr noundef %0, ptr noundef %1) unnamed_addr #2 !prof !34 {
  %3 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !170
  %7 = load ptr, ptr %6, align 8, !tbaa !35
  %8 = tail call zeroext i8 @is_gimple_reg(ptr noundef %7) #20
  %9 = icmp eq i8 %8, 0
  %10 = load i32, ptr %4, align 8
  %11 = and i32 %10, 255
  %12 = icmp eq i32 %11, 16
  br i1 %12, label %13, label %77

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.gimple_statement_phi, ptr %4, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !46
  %16 = tail call zeroext i8 @is_gimple_reg(ptr noundef %15) #20
  %17 = icmp eq i8 %16, 0
  %18 = xor i1 %9, %17
  br i1 %18, label %25, label %19

19:                                               ; preds = %13
  %20 = getelementptr inbounds %struct.gimple_statement_phi, ptr %4, i64 0, i32 2
  %21 = load i32, ptr %20, align 4, !tbaa !46
  %22 = icmp sgt i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.gimple_statement_phi, ptr %4, i64 0, i32 4, i64 0
  br label %25

25:                                               ; preds = %19, %13, %23
  %26 = phi i32 [ %21, %23 ], [ 0, %13 ], [ %21, %19 ]
  %27 = phi i32 [ 1, %23 ], [ 0, %13 ], [ 0, %19 ]
  %28 = phi ptr [ %4, %23 ], [ null, %13 ], [ %4, %19 ]
  %29 = phi i1 [ true, %23 ], [ false, %13 ], [ false, %19 ]
  %30 = phi i8 [ 0, %23 ], [ 1, %13 ], [ 1, %19 ]
  %31 = phi ptr [ %24, %23 ], [ null, %13 ], [ null, %19 ]
  br i1 %29, label %32, label %188

32:                                               ; preds = %25
  %33 = getelementptr inbounds %struct.gimple_statement_phi, ptr %28, i64 0, i32 1
  br label %34

34:                                               ; preds = %32, %72
  %35 = phi ptr [ %31, %32 ], [ %75, %72 ]
  %36 = phi ptr [ %0, %32 ], [ %62, %72 ]
  %37 = phi i8 [ %30, %32 ], [ %74, %72 ]
  %38 = phi i32 [ %27, %32 ], [ %73, %72 ]
  %39 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %35, i64 0, i32 3
  %40 = load ptr, ptr %39, align 8, !tbaa !170
  %41 = load ptr, ptr %40, align 8, !tbaa !35
  %42 = icmp ne ptr %41, %7
  %43 = icmp eq ptr %35, %0
  %44 = or i1 %42, %43
  br i1 %44, label %61, label %45

45:                                               ; preds = %34
  %46 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %36, i64 0, i32 1
  %47 = load ptr, ptr %46, align 8, !tbaa !166
  %48 = icmp eq ptr %47, %35
  br i1 %48, label %61, label %49

49:                                               ; preds = %45
  %50 = load ptr, ptr %35, align 8, !tbaa !169
  %51 = icmp eq ptr %50, null
  br i1 %51, label %57, label %52

52:                                               ; preds = %49
  %53 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %35, i64 0, i32 1
  %54 = load ptr, ptr %53, align 8, !tbaa !166
  %55 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %50, i64 0, i32 1
  store ptr %54, ptr %55, align 8, !tbaa !166
  %56 = load ptr, ptr %53, align 8, !tbaa !166
  store ptr %50, ptr %56, align 8, !tbaa !169
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %35, i8 0, i64 16, i1 false)
  br label %57

57:                                               ; preds = %52, %49
  store ptr %36, ptr %35, align 8, !tbaa !169
  %58 = load ptr, ptr %46, align 8, !tbaa !166
  %59 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %35, i64 0, i32 1
  store ptr %58, ptr %59, align 8, !tbaa !166
  %60 = load ptr, ptr %46, align 8, !tbaa !166
  store ptr %35, ptr %60, align 8, !tbaa !169
  store ptr %35, ptr %46, align 8, !tbaa !166
  br label %61

61:                                               ; preds = %34, %45, %57
  %62 = phi ptr [ %36, %34 ], [ %35, %57 ], [ %35, %45 ]
  %63 = icmp slt i32 %38, %26
  br i1 %63, label %64, label %72

64:                                               ; preds = %61
  %65 = add nsw i32 %38, 1
  %66 = load i32, ptr %33, align 8, !tbaa !46
  %67 = icmp ult i32 %66, %38
  br i1 %67, label %68, label %69

68:                                               ; preds = %64
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 3103, ptr noundef nonnull @.str.3) #20
  br label %69

69:                                               ; preds = %68, %64
  %70 = zext i32 %38 to i64
  %71 = getelementptr inbounds %struct.gimple_statement_phi, ptr %28, i64 0, i32 4, i64 %70
  br label %72

72:                                               ; preds = %61, %69
  %73 = phi i32 [ %65, %69 ], [ %38, %61 ]
  %74 = phi i8 [ %37, %69 ], [ 1, %61 ]
  %75 = phi ptr [ %71, %69 ], [ null, %61 ]
  %76 = icmp eq i8 %74, 0
  br i1 %76, label %34, label %188, !llvm.loop !212

77:                                               ; preds = %2
  br i1 %9, label %147, label %78

78:                                               ; preds = %77
  %79 = load i32, ptr %4, align 8
  %80 = and i32 %79, 255
  %81 = add nsw i32 %80, -10
  %82 = icmp ult i32 %81, -9
  br i1 %82, label %86, label %83

83:                                               ; preds = %78
  %84 = getelementptr inbounds %struct.gimple_statement_with_ops_base, ptr %4, i64 0, i32 2
  %85 = load ptr, ptr %84, align 8, !tbaa !46
  br label %86

86:                                               ; preds = %83, %78
  %87 = phi ptr [ %85, %83 ], [ null, %78 ]
  %88 = icmp eq ptr %87, null
  br i1 %88, label %99, label %89

89:                                               ; preds = %86
  %90 = and i32 %79, 254
  %91 = add nsw i32 %90, -10
  %92 = icmp ult i32 %91, -4
  br i1 %92, label %99, label %93

93:                                               ; preds = %89
  %94 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %4, i64 0, i32 2
  %95 = load ptr, ptr %94, align 8, !tbaa !46
  %96 = icmp eq ptr %95, null
  br i1 %96, label %99, label %97

97:                                               ; preds = %93
  %98 = load ptr, ptr %87, align 8, !tbaa !213
  br label %99

99:                                               ; preds = %97, %93, %89, %86
  %100 = phi ptr [ %87, %86 ], [ %87, %89 ], [ %87, %93 ], [ %98, %97 ]
  %101 = icmp eq ptr %100, null
  br i1 %101, label %105, label %102

102:                                              ; preds = %99
  %103 = getelementptr inbounds %struct.use_optype_d, ptr %100, i64 0, i32 1
  %104 = load ptr, ptr %100, align 8, !tbaa !213
  br label %105

105:                                              ; preds = %99, %102
  %106 = phi ptr [ %104, %102 ], [ %100, %99 ]
  %107 = phi i8 [ 0, %102 ], [ 1, %99 ]
  %108 = phi ptr [ %103, %102 ], [ null, %99 ]
  br i1 %101, label %188, label %109

109:                                              ; preds = %105, %142
  %110 = phi ptr [ %145, %142 ], [ %108, %105 ]
  %111 = phi ptr [ %137, %142 ], [ %0, %105 ]
  %112 = phi i8 [ %144, %142 ], [ %107, %105 ]
  %113 = phi ptr [ %143, %142 ], [ %106, %105 ]
  %114 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %110, i64 0, i32 3
  %115 = load ptr, ptr %114, align 8, !tbaa !170
  %116 = load ptr, ptr %115, align 8, !tbaa !35
  %117 = icmp ne ptr %116, %7
  %118 = icmp eq ptr %110, %0
  %119 = or i1 %117, %118
  br i1 %119, label %136, label %120

120:                                              ; preds = %109
  %121 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %111, i64 0, i32 1
  %122 = load ptr, ptr %121, align 8, !tbaa !166
  %123 = icmp eq ptr %122, %110
  br i1 %123, label %136, label %124

124:                                              ; preds = %120
  %125 = load ptr, ptr %110, align 8, !tbaa !169
  %126 = icmp eq ptr %125, null
  br i1 %126, label %132, label %127

127:                                              ; preds = %124
  %128 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %110, i64 0, i32 1
  %129 = load ptr, ptr %128, align 8, !tbaa !166
  %130 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %125, i64 0, i32 1
  store ptr %129, ptr %130, align 8, !tbaa !166
  %131 = load ptr, ptr %128, align 8, !tbaa !166
  store ptr %125, ptr %131, align 8, !tbaa !169
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %110, i8 0, i64 16, i1 false)
  br label %132

132:                                              ; preds = %127, %124
  store ptr %111, ptr %110, align 8, !tbaa !169
  %133 = load ptr, ptr %121, align 8, !tbaa !166
  %134 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %110, i64 0, i32 1
  store ptr %133, ptr %134, align 8, !tbaa !166
  %135 = load ptr, ptr %121, align 8, !tbaa !166
  store ptr %110, ptr %135, align 8, !tbaa !169
  store ptr %110, ptr %121, align 8, !tbaa !166
  br label %136

136:                                              ; preds = %132, %120, %109
  %137 = phi ptr [ %111, %109 ], [ %110, %132 ], [ %110, %120 ]
  %138 = icmp eq ptr %113, null
  br i1 %138, label %142, label %139

139:                                              ; preds = %136
  %140 = getelementptr inbounds %struct.use_optype_d, ptr %113, i64 0, i32 1
  %141 = load ptr, ptr %113, align 8, !tbaa !213
  br label %142

142:                                              ; preds = %136, %139
  %143 = phi ptr [ %141, %139 ], [ %113, %136 ]
  %144 = phi i8 [ %112, %139 ], [ 1, %136 ]
  %145 = phi ptr [ %140, %139 ], [ null, %136 ]
  %146 = icmp eq i8 %144, 0
  br i1 %146, label %109, label %188, !llvm.loop !215

147:                                              ; preds = %77
  %148 = and i32 %10, 254
  %149 = add nsw i32 %148, -10
  %150 = icmp ult i32 %149, -4
  br i1 %150, label %162, label %151

151:                                              ; preds = %147
  %152 = getelementptr inbounds %struct.gimple_statement_with_ops_base, ptr %4, i64 0, i32 2
  %153 = load ptr, ptr %152, align 8, !tbaa !46
  %154 = icmp eq ptr %153, null
  br i1 %154, label %162, label %155

155:                                              ; preds = %151
  %156 = getelementptr inbounds %struct.use_optype_d, ptr %153, i64 0, i32 1, i32 3
  %157 = load ptr, ptr %156, align 8, !tbaa !216
  %158 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %4, i64 0, i32 2
  %159 = icmp eq ptr %157, %158
  %160 = getelementptr inbounds %struct.use_optype_d, ptr %153, i64 0, i32 1
  %161 = select i1 %159, ptr %160, ptr null
  br label %162

162:                                              ; preds = %147, %151, %155
  %163 = phi ptr [ null, %147 ], [ null, %151 ], [ %161, %155 ]
  %164 = icmp eq ptr %163, null
  br i1 %164, label %188, label %165

165:                                              ; preds = %162
  %166 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %163, i64 0, i32 3
  %167 = load ptr, ptr %166, align 8, !tbaa !170
  %168 = load ptr, ptr %167, align 8, !tbaa !35
  %169 = icmp ne ptr %168, %7
  %170 = icmp eq ptr %163, %0
  %171 = or i1 %170, %169
  br i1 %171, label %188, label %172

172:                                              ; preds = %165
  %173 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 1
  %174 = load ptr, ptr %173, align 8, !tbaa !166
  %175 = icmp eq ptr %174, %163
  br i1 %175, label %188, label %176

176:                                              ; preds = %172
  %177 = load ptr, ptr %163, align 8, !tbaa !169
  %178 = icmp eq ptr %177, null
  br i1 %178, label %184, label %179

179:                                              ; preds = %176
  %180 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %163, i64 0, i32 1
  %181 = load ptr, ptr %180, align 8, !tbaa !166
  %182 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %177, i64 0, i32 1
  store ptr %181, ptr %182, align 8, !tbaa !166
  %183 = load ptr, ptr %180, align 8, !tbaa !166
  store ptr %177, ptr %183, align 8, !tbaa !169
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %163, i8 0, i64 16, i1 false)
  br label %184

184:                                              ; preds = %179, %176
  store ptr %0, ptr %163, align 8, !tbaa !169
  %185 = load ptr, ptr %173, align 8, !tbaa !166
  %186 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %163, i64 0, i32 1
  store ptr %185, ptr %186, align 8, !tbaa !166
  %187 = load ptr, ptr %173, align 8, !tbaa !166
  store ptr %163, ptr %187, align 8, !tbaa !169
  store ptr %163, ptr %173, align 8, !tbaa !166
  br label %188

188:                                              ; preds = %142, %72, %105, %25, %184, %172, %165, %162
  %189 = phi ptr [ %0, %165 ], [ %0, %162 ], [ %163, %184 ], [ %163, %172 ], [ %0, %25 ], [ %0, %105 ], [ %62, %72 ], [ %137, %142 ]
  %190 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %1, i64 0, i32 2
  %191 = load ptr, ptr %190, align 8, !tbaa !169
  %192 = icmp eq ptr %191, null
  br i1 %192, label %198, label %193

193:                                              ; preds = %188
  %194 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %1, i64 0, i32 2, i32 1
  %195 = load ptr, ptr %194, align 8, !tbaa !166
  %196 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %191, i64 0, i32 1
  store ptr %195, ptr %196, align 8, !tbaa !166
  %197 = load ptr, ptr %194, align 8, !tbaa !166
  store ptr %191, ptr %197, align 8, !tbaa !169
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %190, i8 0, i64 16, i1 false)
  br label %198

198:                                              ; preds = %193, %188
  store ptr %189, ptr %190, align 8, !tbaa !169
  %199 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %189, i64 0, i32 1
  %200 = load ptr, ptr %199, align 8, !tbaa !166
  %201 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %1, i64 0, i32 2, i32 1
  store ptr %200, ptr %201, align 8, !tbaa !166
  %202 = load ptr, ptr %199, align 8, !tbaa !166
  store ptr %190, ptr %202, align 8, !tbaa !169
  store ptr %190, ptr %199, align 8, !tbaa !166
  ret void
}

declare zeroext i8 @is_gimple_reg(ptr noundef) local_unnamed_addr #3

declare void @mark_sym_for_renaming(ptr noundef) local_unnamed_addr #3

declare ptr @create_tmp_var(ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @add_referenced_var(ptr noundef) local_unnamed_addr #3

declare ptr @fold_convert_loc(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @gsi_insert_after(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @make_ssa_name_fn(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @exact_log2(i64 noundef) local_unnamed_addr #3

declare void @gimple_set_modified(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

declare void @update_stmt_operands(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #17

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #17

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #18

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #19

attributes #0 = { cold inlinehint nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold inlinehint mustprogress nofree nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { cold mustprogress nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #15 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #16 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nofree nounwind }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #19 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #20 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!33}

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
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!"function_entry_count", i64 0}
!35 = !{!36, !36, i64 0}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!40, !36, i64 8}
!40 = !{!"_IO_FILE", !41, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !41, i64 112, !41, i64 116, !42, i64 120, !43, i64 128, !37, i64 130, !37, i64 131, !36, i64 136, !42, i64 144, !36, i64 152, !36, i64 160, !36, i64 168, !36, i64 176, !42, i64 184, !41, i64 192, !37, i64 196}
!41 = !{!"int", !37, i64 0}
!42 = !{!"long", !37, i64 0}
!43 = !{!"short", !37, i64 0}
!44 = !{!40, !36, i64 16}
!45 = !{!"branch_weights", i32 2000, i32 1}
!46 = !{!37, !37, i64 0}
!47 = !{!40, !36, i64 40}
!48 = !{!40, !36, i64 48}
!49 = !{!40, !41, i64 0}
!50 = !{!41, !41, i64 0}
!51 = distinct !{!51, !52, !53}
!52 = !{!"llvm.loop.mustprogress"}
!53 = !{!"llvm.loop.unroll.disable"}
!54 = !{!"function_entry_count", i64 1}
!55 = !{!"matrix-reorg.c;gate_matrix_reorg"}
!56 = !{!"branch_weights", i32 0, i32 1}
!57 = !{!58, !36, i64 0}
!58 = !{!"cgraph_node", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !36, i64 112, !36, i64 120, !36, i64 128, !36, i64 136, !59, i64 144, !61, i64 184, !62, i64 224, !63, i64 232, !64, i64 256, !42, i64 288, !41, i64 296, !41, i64 300, !41, i64 304, !41, i64 308, !41, i64 308, !41, i64 308, !41, i64 308, !41, i64 308, !41, i64 308, !41, i64 308, !41, i64 308, !41, i64 309, !41, i64 309}
!59 = !{!"cgraph_local_info", !36, i64 0, !60, i64 8, !41, i64 32, !41, i64 32, !41, i64 32, !41, i64 32, !41, i64 32, !41, i64 32, !41, i64 32, !41, i64 32}
!60 = !{!"inline_summary", !42, i64 0, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20}
!61 = !{!"cgraph_global_info", !42, i64 0, !42, i64 8, !36, i64 16, !41, i64 24, !41, i64 28, !41, i64 32, !37, i64 36}
!62 = !{!"cgraph_rtl_info", !41, i64 0}
!63 = !{!"cgraph_clone_info", !36, i64 0, !36, i64 8, !36, i64 16}
!64 = !{!"cgraph_thunk_info", !42, i64 0, !42, i64 8, !36, i64 16, !37, i64 24, !37, i64 25, !37, i64 26}
!65 = !{!66, !36, i64 8}
!66 = !{!"function", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !36, i64 96, !41, i64 104, !41, i64 108, !41, i64 112, !41, i64 116, !41, i64 120, !41, i64 124, !36, i64 128, !41, i64 136, !41, i64 137, !41, i64 138, !41, i64 138, !41, i64 138, !41, i64 138, !41, i64 138, !41, i64 138, !41, i64 138, !41, i64 139, !41, i64 139, !41, i64 139, !41, i64 139, !41, i64 139, !41, i64 139, !41, i64 139}
!67 = !{!68, !36, i64 0}
!68 = !{!"control_flow_graph", !36, i64 0, !36, i64 8, !36, i64 16, !41, i64 24, !41, i64 28, !41, i64 32, !36, i64 40, !41, i64 48, !37, i64 52, !37, i64 60, !41, i64 68, !41, i64 72}
!69 = !{!70, !36, i64 56}
!70 = !{!"basic_block_def", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !36, i64 48, !36, i64 56, !37, i64 64, !42, i64 72, !41, i64 80, !41, i64 84, !41, i64 88, !41, i64 92, !41, i64 96}
!71 = !{!68, !36, i64 8}
!72 = distinct !{!72, !52, !53}
!73 = !{!70, !41, i64 96}
!74 = !{!75}
!75 = distinct !{!75, !76, !"gsi_start_bb: argument 0"}
!76 = distinct !{!76, !"gsi_start_bb"}
!77 = !{!78, !36, i64 0}
!78 = !{!"gimple_bb_info", !36, i64 0, !36, i64 8}
!79 = !{!80, !36, i64 0}
!80 = !{!"gimple_seq_d", !36, i64 0, !36, i64 8, !36, i64 16}
!81 = !{!82, !36, i64 0}
!82 = !{!"gimple_seq_node_d", !36, i64 0, !36, i64 8, !36, i64 16}
!83 = !{!42, !42, i64 0}
!84 = distinct !{!84, !52, !53}
!85 = distinct !{!85, !52, !53}
!86 = !{!82, !36, i64 16}
!87 = distinct !{!87, !52, !53}
!88 = distinct !{!88, !52, !53}
!89 = !{!90, !36, i64 0}
!90 = !{!"varpool_node", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !41, i64 32, !41, i64 36, !41, i64 36, !41, i64 36, !41, i64 36, !41, i64 36, !41, i64 36, !41, i64 36}
!91 = distinct !{!91, !52, !53}
!92 = !{!93, !36, i64 0}
!93 = !{!"matrix_info", !36, i64 0, !41, i64 8, !41, i64 12, !36, i64 16, !36, i64 24, !41, i64 32, !37, i64 36, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !41, i64 80, !36, i64 88, !36, i64 96, !36, i64 104}
!94 = !{!93, !41, i64 8}
!95 = !{!93, !36, i64 48}
!96 = !{!93, !41, i64 12}
!97 = !{!93, !37, i64 36}
!98 = distinct !{!98, !52, !53}
!99 = !{!66, !36, i64 24}
!100 = !{!66, !36, i64 32}
!101 = distinct !{!101, !52, !53}
!102 = !{!103, !36, i64 16}
!103 = !{!"gimple_df", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !104, i64 32, !104, i64 48, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !41, i64 96, !105, i64 104}
!104 = !{!"pt_solution", !41, i64 0, !41, i64 0, !41, i64 0, !41, i64 0, !41, i64 0, !41, i64 0, !36, i64 8}
!105 = !{!"ssa_operands", !36, i64 0, !41, i64 8, !41, i64 12, !37, i64 16, !36, i64 24, !36, i64 32}
!106 = !{!107, !41, i64 0}
!107 = !{!"VEC_tree_base", !41, i64 0, !41, i64 4, !37, i64 8}
!108 = distinct !{!108, !52, !53}
!109 = !{!110, !36, i64 0}
!110 = !{!"simple_bitmap_def", !36, i64 0, !41, i64 8, !41, i64 12, !37, i64 16}
!111 = distinct !{!111, !52, !53}
!112 = !{!93, !36, i64 88}
!113 = !{!93, !36, i64 24}
!114 = !{!115, !36, i64 0}
!115 = !{!"matrix_access_phi_node", !36, i64 0, !41, i64 8}
!116 = distinct !{!116, !52, !53}
!117 = !{!118}
!118 = distinct !{!118, !119, !"gsi_start_bb: argument 0"}
!119 = distinct !{!119, !"gsi_start_bb"}
!120 = distinct !{!120, !52, !53}
!121 = !{!93, !36, i64 96}
!122 = !{!123, !41, i64 0}
!123 = !{!"VEC_access_site_info_p_base", !41, i64 0, !41, i64 4, !37, i64 8}
!124 = distinct !{!124, !52, !53}
!125 = !{!126, !36, i64 0}
!126 = !{!"access_site_info", !36, i64 0, !36, i64 8, !36, i64 16, !41, i64 24, !37, i64 28, !36, i64 32, !37, i64 40}
!127 = !{!126, !41, i64 24}
!128 = !{!70, !36, i64 24}
!129 = !{!130, !36, i64 48}
!130 = !{!"loop", !41, i64 0, !41, i64 4, !36, i64 8, !36, i64 16, !131, i64 24, !41, i64 32, !41, i64 36, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !132, i64 80, !132, i64 96, !37, i64 112, !37, i64 113, !41, i64 116, !36, i64 120, !36, i64 128, !37, i64 136, !36, i64 144}
!131 = !{!"lpt_decision", !41, i64 0, !41, i64 4}
!132 = !{!"", !42, i64 0, !42, i64 8}
!133 = !{!126, !36, i64 8}
!134 = !{!126, !37, i64 40}
!135 = !{!70, !42, i64 72}
!136 = distinct !{!136, !52, !53}
!137 = !{!93, !36, i64 40}
!138 = !{!93, !41, i64 32}
!139 = distinct !{!139, !52, !53}
!140 = !{!93, !36, i64 16}
!141 = !{!142, !36, i64 8}
!142 = !{!"malloc_call_data", !36, i64 0, !36, i64 8, !36, i64 16}
!143 = !{!93, !36, i64 56}
!144 = !{!93, !36, i64 64}
!145 = distinct !{!145, !52, !53}
!146 = distinct !{!146, !52, !53}
!147 = !{!93, !36, i64 104}
!148 = distinct !{!148, !52, !53}
!149 = distinct !{!149, !52, !53}
!150 = distinct !{!150, !52, !53}
!151 = distinct !{!151, !52, !53}
!152 = distinct !{!152, !52, !53}
!153 = distinct !{!153, !52, !53}
!154 = distinct !{!154, !52, !53}
!155 = !{!156, !36, i64 0}
!156 = !{!"", !36, i64 0, !36, i64 8}
!157 = !{!156, !36, i64 8}
!158 = distinct !{!158, !52, !53}
!159 = !{i64 0, i64 8, !35, i64 8, i64 8, !35, i64 16, i64 8, !35}
!160 = !{!93, !36, i64 72}
!161 = distinct !{!161, !52, !53}
!162 = distinct !{!162, !52, !53}
!163 = !{!164, !36, i64 8}
!164 = !{!"immediate_use_iterator_d", !36, i64 0, !36, i64 8, !165, i64 16, !36, i64 48}
!165 = !{!"ssa_use_operand_d", !36, i64 0, !36, i64 8, !37, i64 16, !36, i64 24}
!166 = !{!165, !36, i64 8}
!167 = !{!164, !36, i64 0}
!168 = !{!164, !36, i64 48}
!169 = !{!165, !36, i64 0}
!170 = !{!165, !36, i64 24}
!171 = distinct !{!171, !52, !53}
!172 = distinct !{!172, !52, !53}
!173 = distinct !{!173, !52, !53}
!174 = distinct !{!174, !52, !53}
!175 = distinct !{!175, !52, !53}
!176 = !{!177, !36, i64 0}
!177 = !{!"free_info", !36, i64 0, !36, i64 8}
!178 = !{!177, !36, i64 8}
!179 = distinct !{!179, !52, !53}
!180 = !{!126, !37, i64 28}
!181 = !{!182, !36, i64 0}
!182 = !{!"def_optype_d", !36, i64 0, !36, i64 8}
!183 = !{!182, !36, i64 8}
!184 = distinct !{!184, !52, !53}
!185 = distinct !{!185, !52, !53}
!186 = distinct !{!186, !52, !53}
!187 = !{!126, !36, i64 16}
!188 = distinct !{!188, !52, !53}
!189 = distinct !{!189, !52, !53}
!190 = distinct !{!190, !52, !53}
!191 = !{!115, !41, i64 8}
!192 = distinct !{!192, !52, !53}
!193 = !{!194, !36, i64 0}
!194 = !{!"ssa_acc_in_tree", !36, i64 0, !41, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !37, i64 40}
!195 = !{!194, !41, i64 8}
!196 = distinct !{!196, !52, !53}
!197 = !{!194, !37, i64 40}
!198 = !{!194, !36, i64 32}
!199 = distinct !{!199, !52, !53}
!200 = distinct !{!200, !52, !53}
!201 = !{!142, !36, i64 0}
!202 = !{!142, !36, i64 16}
!203 = !{!93, !41, i64 80}
!204 = !{!126, !36, i64 32}
!205 = !{!123, !41, i64 4}
!206 = distinct !{!206, !52, !53}
!207 = distinct !{!207, !52, !53}
!208 = !{!209}
!209 = distinct !{!209, !210, !"gsi_start_bb: argument 0"}
!210 = distinct !{!210, !"gsi_start_bb"}
!211 = distinct !{!211, !52, !53}
!212 = distinct !{!212, !52, !53}
!213 = !{!214, !36, i64 0}
!214 = !{!"use_optype_d", !36, i64 0, !165, i64 8}
!215 = distinct !{!215, !52, !53}
!216 = !{!214, !36, i64 32}
