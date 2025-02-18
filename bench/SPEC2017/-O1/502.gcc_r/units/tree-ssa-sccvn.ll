; ModuleID = 'tree-ssa-sccvn.c'
source_filename = "tree-ssa-sccvn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.obstack = type { i64, ptr, ptr, ptr, ptr, i64, i32, ptr, ptr, ptr, i8 }
%struct._IO_FILE = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, [1 x i8], ptr, i64, ptr, ptr, ptr, ptr, i64, i32, [20 x i8] }
%struct.tree_ssa_name = type { %struct.tree_common, ptr, ptr, i32, ptr, %struct.ssa_use_operand_d }
%struct.tree_common = type { %struct.tree_base, ptr, ptr }
%struct.tree_base = type { i64 }
%struct.ssa_use_operand_d = type { ptr, ptr, %union.anon, ptr }
%union.anon = type { ptr }
%struct.VEC_vn_ssa_aux_t_base = type { i32, i32, [1 x ptr] }
%struct.vn_ssa_aux = type { ptr, ptr, i32, i32, i32, i8 }
%struct.tree_exp = type { %struct.tree_common, i32, ptr, [1 x ptr] }
%struct.gimple_statement_base = type { i32, i32, i32, i32, ptr, ptr }
%struct.vn_constant_s = type { i32, i32, ptr }
%struct.tree_type = type { %struct.tree_common, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, %union.tree_type_symtab, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.tree_type_symtab = type { ptr }
%struct.vn_reference_s = type { i32, i32, ptr, i32, ptr, ptr, ptr }
%struct.VEC_vn_reference_op_s_base = type { i32, i32, [1 x %struct.vn_reference_op_struct] }
%struct.vn_reference_op_struct = type { i32, ptr, ptr, ptr, ptr }
%struct.tree_decl_minimal = type { %struct.tree_common, i32, i32, ptr, ptr }
%struct.tree_field_decl = type { %struct.tree_decl_common, ptr, ptr, ptr, ptr, ptr }
%struct.tree_decl_common = type { %struct.tree_decl_minimal, ptr, i40, i32, ptr, ptr, ptr, ptr, ptr }
%struct.tree_int_cst = type { %struct.tree_common, %struct.double_int }
%struct.double_int = type { i64, i64 }
%struct.ao_ref_s = type { ptr, ptr, i64, i64, i64, i32, i32 }
%struct.vn_tables_s = type { ptr, ptr, ptr, %struct.obstack, ptr, ptr }
%struct.tree_function_decl = type { %struct.tree_decl_non_common, ptr, ptr, ptr, ptr, i32 }
%struct.tree_decl_non_common = type { %struct.tree_decl_with_vis, ptr, ptr, ptr, ptr }
%struct.tree_decl_with_vis = type { %struct.tree_decl_with_rtl, ptr, ptr, ptr, i24 }
%struct.tree_decl_with_rtl = type { %struct.tree_decl_common, ptr }
%struct.tree_constructor = type { %struct.tree_common, ptr }
%struct.vn_nary_op_s = type { i32, i32, i32, ptr, ptr, [4 x ptr] }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.gimple_df = type { ptr, ptr, ptr, ptr, %struct.pt_solution, %struct.pt_solution, ptr, ptr, ptr, ptr, i8, %struct.ssa_operands }
%struct.pt_solution = type { i8, ptr }
%struct.ssa_operands = type { ptr, i32, i32, i8, ptr, ptr }
%struct.VEC_tree_base = type { i32, i32, [1 x ptr] }
%struct.control_flow_graph = type { ptr, ptr, ptr, i32, i32, i32, ptr, i32, [2 x i32], [2 x i32], i32, i32 }
%struct.gimple_statement_phi = type { %struct.gimple_statement_base, i32, i32, ptr, [1 x %struct.phi_arg_d] }
%struct.phi_arg_d = type { %struct.ssa_use_operand_d, ptr, i32 }
%struct.gimple_statement_with_ops_base = type { %struct.gimple_statement_base, ptr, ptr }
%struct.use_optype_d = type { ptr, %struct.ssa_use_operand_d }
%struct.param_info = type { ptr, i32, i8, i32, i32, ptr }
%struct.VEC_ssa_op_iter_base = type { i32, i32, [1 x %struct.ssa_operand_iterator_d] }
%struct.ssa_operand_iterator_d = type { i8, i32, ptr, ptr, i32, i32, ptr }
%struct.htab = type { ptr, ptr, ptr, ptr, i64, i64, i64, i32, i32, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.vn_phi_s = type { i32, i32, ptr, ptr, ptr }
%struct.basic_block_def = type { ptr, ptr, ptr, ptr, [2 x ptr], ptr, ptr, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%union.basic_block_il_dependent = type { ptr }
%struct.gimple_statement_with_memory_ops_base = type { %struct.gimple_statement_with_ops_base, ptr, ptr }
%struct.def_optype_d = type { ptr, ptr }

@stdout = external local_unnamed_addr global ptr, align 8
@stdin = external local_unnamed_addr global ptr, align 8
@vn_ssa_aux_table = internal unnamed_addr global ptr null, align 8
@.str = private unnamed_addr constant [17 x i8] c"tree-ssa-sccvn.c\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@vn_ssa_aux_obstack = internal global %struct.obstack zeroinitializer, align 8
@VN_TOP = dso_local local_unnamed_addr global ptr null, align 8
@tree_code_type = external local_unnamed_addr constant [0 x i32], align 4
@constant_to_value_id = internal unnamed_addr global ptr null, align 8
@constant_value_ids = internal unnamed_addr global ptr null, align 8
@global_trees = external local_unnamed_addr global [131 x ptr], align 16
@may_insert = internal unnamed_addr global i8 0, align 1
@mode_size = external local_unnamed_addr global [87 x i8], align 16
@shared_lookup_references = internal global ptr null, align 8
@current_info = internal unnamed_addr global ptr null, align 8
@optimistic_info = internal unnamed_addr global ptr null, align 8
@valid_info = internal unnamed_addr global ptr null, align 8
@tree_code_length = external local_unnamed_addr constant [0 x i8], align 1
@shared_lookup_phiargs = internal unnamed_addr global ptr null, align 8
@rpo_numbers = internal unnamed_addr global ptr null, align 8
@cfun = external local_unnamed_addr global ptr, align 8
@sccstack = internal unnamed_addr global ptr null, align 8
@current_function_decl = external local_unnamed_addr global ptr, align 8
@dump_file = external local_unnamed_addr global ptr, align 8
@dump_flags = external local_unnamed_addr global i32, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"Value numbers:\0A\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c" = \00", align 1
@next_value_id = internal unnamed_addr global i32 0, align 4
@flag_trapping_math = external local_unnamed_addr global i32, align 4
@flag_finite_math_only = external local_unnamed_addr global i32, align 4
@flag_signaling_nans = external local_unnamed_addr global i32, align 4
@flag_trapv = external local_unnamed_addr global i32, align 4
@.str.5 = private unnamed_addr constant [11 x i8] c"./gimple.h\00", align 1
@gimple_rhs_class_table = external local_unnamed_addr constant [0 x i8], align 1
@last_vuse_ptr = internal unnamed_addr global ptr null, align 8
@gimple_ops_offset_ = external local_unnamed_addr constant [0 x i64], align 8
@gss_for_code_ = external local_unnamed_addr constant [0 x i32], align 4
@next_dfs_num = internal unnamed_addr global i32 0, align 4
@.str.6 = private unnamed_addr constant [7 x i8] c"vn_top\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"VN phis\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"VN references\00", align 1
@flag_var_tracking_assignments = external local_unnamed_addr global i32, align 4
@compiler_params = external local_unnamed_addr global ptr, align 8
@.str.10 = private unnamed_addr constant [63 x i8] c"WARNING: Giving up with SCCVN due to SCC size %u exceeding %u\0A\00", align 1
@.str.11 = private unnamed_addr constant [18 x i8] c"SCC consists of: \00", align 1
@.str.13 = private unnamed_addr constant [15 x i8] c"SCC iterations\00", align 1
@.str.14 = private unnamed_addr constant [17 x i8] c"Value numbering \00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c" stmt = \00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"RHS \00", align 1
@.str.17 = private unnamed_addr constant [16 x i8] c" simplified to \00", align 1
@.str.18 = private unnamed_addr constant [19 x i8] c" has constants %d\0A\00", align 1
@.str.19 = private unnamed_addr constant [25 x i8] c"Setting value number of \00", align 1
@.str.20 = private unnamed_addr constant [5 x i8] c" to \00", align 1
@.str.21 = private unnamed_addr constant [12 x i8] c" (changed)\0A\00", align 1
@.str.22 = private unnamed_addr constant [16 x i8] c"No store match\0A\00", align 1
@.str.23 = private unnamed_addr constant [23 x i8] c"Value numbering store \00", align 1
@.str.24 = private unnamed_addr constant [76 x i8] c"Store matched earlier value,value numbering store vdefs to matching vuses.\0A\00", align 1
@.str.25 = private unnamed_addr constant [16 x i8] c"Inserting name \00", align 1
@.str.26 = private unnamed_addr constant [17 x i8] c" for expression \00", align 1

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @vprintf(ptr noalias nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 !prof !187 {
  %3 = load ptr, ptr @stdout, align 8, !tbaa !188
  %4 = tail call i32 @vfprintf(ptr noundef %3, ptr noundef %0, ptr noundef %1)
  ret i32 %4
}

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @getchar() local_unnamed_addr #0 !prof !187 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !188
  %2 = tail call i32 @getc(ptr noundef %1)
  ret i32 %2
}

; Function Attrs: nofree nounwind
declare noundef i32 @getc(ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !187 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !192
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !197
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !198

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #23
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !192
  %11 = load i8, ptr %3, align 1, !tbaa !199
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

declare i32 @__uflow(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !187 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !192
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !197
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !198

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #23
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !192
  %11 = load i8, ptr %3, align 1, !tbaa !199
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #2 !prof !187 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !188
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !192
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !197
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !198

7:                                                ; preds = %0
  %8 = tail call i32 @__uflow(ptr noundef %1) #23
  br label %13

9:                                                ; preds = %0
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !192
  %11 = load i8, ptr %3, align 1, !tbaa !199
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @putchar(i32 noundef %0) local_unnamed_addr #0 !prof !187 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !188
  %3 = tail call i32 @putc(i32 noundef %0, ptr noundef %2)
  ret i32 %3
}

; Function Attrs: nofree nounwind
declare noundef i32 @putc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !187 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !200
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !201
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !198

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #23
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !200
  store i8 %12, ptr %4, align 1, !tbaa !199
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

declare i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !187 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !200
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !201
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !198

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #23
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !200
  store i8 %12, ptr %4, align 1, !tbaa !199
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 noundef %0) local_unnamed_addr #2 !prof !187 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !188
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !200
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !201
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !198

8:                                                ; preds = %1
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %2, i32 noundef %9) #23
  br label %15

11:                                               ; preds = %1
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !200
  store i8 %12, ptr %4, align 1, !tbaa !199
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i64 @getline(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 !prof !187 {
  %4 = tail call i64 @__getdelim(ptr noundef %0, ptr noundef %1, i32 noundef 10, ptr noundef %2) #23
  ret i64 %4
}

declare i64 @__getdelim(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @feof_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !187 {
  %2 = load i32, ptr %0, align 8, !tbaa !202
  %3 = lshr i32 %2, 4
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @ferror_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !187 {
  %2 = load i32, ptr %0, align 8, !tbaa !202
  %3 = lshr i32 %2, 5
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @tolower(i32 noundef %0) local_unnamed_addr #5 !prof !187 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_tolower_loc() #23
  %6 = load ptr, ptr %5, align 8, !tbaa !188
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !203
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_tolower_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @toupper(i32 noundef %0) local_unnamed_addr #5 !prof !187 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_toupper_loc() #23
  %6 = load ptr, ptr %5, align 8, !tbaa !188
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !203
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_toupper_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i32 @atoi(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !187 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  %3 = trunc i64 %2 to i32
  ret i32 %3
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atol(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !187 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atoll(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !187 {
  %2 = tail call i64 @strtoll(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtoll(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local noundef ptr @bsearch(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #2 !prof !187 {
  %6 = icmp eq i64 %2, 0
  br i1 %6, label %24, label %7

7:                                                ; preds = %5, %20
  %8 = phi i64 [ %22, %20 ], [ 0, %5 ]
  %9 = phi i64 [ %21, %20 ], [ %2, %5 ]
  %10 = add i64 %8, %9
  %11 = lshr i64 %10, 1
  %12 = mul i64 %11, %3
  %13 = getelementptr inbounds i8, ptr %1, i64 %12
  %14 = tail call i32 %4(ptr noundef %0, ptr noundef %13) #23
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
  br i1 %23, label %7, label %24, !llvm.loop !204

24:                                               ; preds = %16, %20, %5
  %25 = phi ptr [ null, %5 ], [ %13, %16 ], [ null, %20 ]
  ret ptr %25
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local double @atof(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !187 {
  %2 = tail call double @strtod(ptr nocapture noundef %0, ptr noundef null)
  ret double %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: inlinehint nounwind uwtable
define dso_local ptr @VN_INFO(ptr nocapture noundef readonly %0) local_unnamed_addr #9 !prof !207 {
  %2 = load ptr, ptr @vn_ssa_aux_table, align 8
  %3 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 3
  %4 = load i32, ptr %3, align 8, !tbaa !199
  %5 = zext i32 %4 to i64
  %6 = getelementptr inbounds %struct.VEC_vn_ssa_aux_t_base, ptr %2, i64 0, i32 2, i64 %5
  %7 = load ptr, ptr %6, align 8, !tbaa !188
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %10, !prof !208

9:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 180, ptr noundef nonnull @.str.1) #23
  br label %10

10:                                               ; preds = %1, %9
  ret ptr %7
}

declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define dso_local ptr @VN_INFO_GET(ptr nocapture noundef readonly %0) local_unnamed_addr #9 !prof !209 {
  store i64 32, ptr getelementptr inbounds (%struct.obstack, ptr @vn_ssa_aux_obstack, i64 0, i32 5), align 8, !tbaa !210
  %2 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @vn_ssa_aux_obstack, i64 0, i32 4), align 8, !tbaa !212
  %3 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @vn_ssa_aux_obstack, i64 0, i32 3), align 8, !tbaa !213
  %4 = ptrtoint ptr %2 to i64
  %5 = ptrtoint ptr %3 to i64
  %6 = sub i64 %4, %5
  %7 = icmp slt i64 %6, 32
  br i1 %7, label %8, label %9, !prof !214

8:                                                ; preds = %1
  tail call void @_obstack_newchunk(ptr noundef nonnull @vn_ssa_aux_obstack, i32 noundef 32) #23
  br label %9

9:                                                ; preds = %1, %8
  %10 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @vn_ssa_aux_obstack, i64 0, i32 5), align 8, !tbaa !210
  %11 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @vn_ssa_aux_obstack, i64 0, i32 3), align 8, !tbaa !213
  %12 = getelementptr inbounds i8, ptr %11, i64 %10
  store ptr %12, ptr getelementptr inbounds (%struct.obstack, ptr @vn_ssa_aux_obstack, i64 0, i32 3), align 8, !tbaa !213
  %13 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @vn_ssa_aux_obstack, i64 0, i32 2), align 8, !tbaa !215
  %14 = icmp eq ptr %12, %13
  br i1 %14, label %15, label %18, !prof !216

15:                                               ; preds = %9
  %16 = load i8, ptr getelementptr inbounds (%struct.obstack, ptr @vn_ssa_aux_obstack, i64 0, i32 10), align 8
  %17 = or i8 %16, 2
  store i8 %17, ptr getelementptr inbounds (%struct.obstack, ptr @vn_ssa_aux_obstack, i64 0, i32 10), align 8
  br label %18

18:                                               ; preds = %9, %15
  %19 = ptrtoint ptr %13 to i64
  store i64 %19, ptr getelementptr inbounds (%struct.obstack, ptr @vn_ssa_aux_obstack, i64 0, i32 5), align 8, !tbaa !210
  %20 = ptrtoint ptr %12 to i64
  %21 = load i32, ptr getelementptr inbounds (%struct.obstack, ptr @vn_ssa_aux_obstack, i64 0, i32 6), align 8, !tbaa !217
  %22 = sext i32 %21 to i64
  %23 = add nsw i64 %22, %20
  %24 = xor i32 %21, -1
  %25 = sext i32 %24 to i64
  %26 = and i64 %23, %25
  %27 = inttoptr i64 %26 to ptr
  store ptr %27, ptr getelementptr inbounds (%struct.obstack, ptr @vn_ssa_aux_obstack, i64 0, i32 3), align 8, !tbaa !213
  %28 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @vn_ssa_aux_obstack, i64 0, i32 1), align 8, !tbaa !218
  %29 = ptrtoint ptr %28 to i64
  %30 = sub i64 %26, %29
  %31 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @vn_ssa_aux_obstack, i64 0, i32 4), align 8, !tbaa !212
  %32 = ptrtoint ptr %31 to i64
  %33 = sub i64 %32, %29
  %34 = icmp sgt i64 %30, %33
  %35 = select i1 %34, ptr %31, ptr %27, !prof !216
  store ptr %35, ptr getelementptr inbounds (%struct.obstack, ptr @vn_ssa_aux_obstack, i64 0, i32 3), align 8
  store ptr %35, ptr getelementptr inbounds (%struct.obstack, ptr @vn_ssa_aux_obstack, i64 0, i32 2), align 8, !tbaa !215
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %13, i8 0, i64 32, i1 false)
  %36 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 3
  %37 = load i32, ptr %36, align 8, !tbaa !199
  %38 = load ptr, ptr @vn_ssa_aux_table, align 8
  %39 = icmp eq ptr %38, null
  br i1 %39, label %42, label %40, !prof !216

40:                                               ; preds = %18
  %41 = load i32, ptr %38, align 8, !tbaa !219
  br label %42

42:                                               ; preds = %18, %40
  %43 = phi i32 [ %41, %40 ], [ 0, %18 ]
  %44 = icmp ult i32 %37, %43
  br i1 %44, label %66, label %45, !prof !221

45:                                               ; preds = %42
  %46 = add i32 %37, 1
  br i1 %39, label %49, label %47, !prof !222

47:                                               ; preds = %45
  %48 = load i32, ptr %38, align 8, !tbaa !219
  br label %49

49:                                               ; preds = %47, %45
  %50 = phi i32 [ %48, %47 ], [ 0, %45 ]
  %51 = sub nsw i32 %46, %50
  br i1 %39, label %58, label %52, !prof !222

52:                                               ; preds = %49
  %53 = getelementptr inbounds %struct.VEC_vn_ssa_aux_t_base, ptr %38, i64 0, i32 1
  %54 = load i32, ptr %53, align 4, !tbaa !223
  %55 = load i32, ptr %38, align 8, !tbaa !219
  %56 = sub i32 %54, %55
  %57 = icmp uge i32 %56, %51
  br label %60

58:                                               ; preds = %49
  %59 = icmp eq i32 %50, %46
  br label %60

60:                                               ; preds = %58, %52
  %61 = phi i1 [ %57, %52 ], [ %59, %58 ]
  br i1 %61, label %64, label %62, !prof !222

62:                                               ; preds = %60
  %63 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef %38, i32 noundef %51) #23
  store ptr %63, ptr @vn_ssa_aux_table, align 8, !tbaa !188
  br label %64

64:                                               ; preds = %60, %62
  %65 = load ptr, ptr @vn_ssa_aux_table, align 8, !tbaa !188, !nonnull !224, !noundef !224
  store i32 %46, ptr %65, align 8, !tbaa !219
  br label %66

66:                                               ; preds = %64, %42
  %67 = load ptr, ptr @vn_ssa_aux_table, align 8
  %68 = load i32, ptr %36, align 8, !tbaa !199
  %69 = zext i32 %68 to i64
  %70 = getelementptr inbounds %struct.VEC_vn_ssa_aux_t_base, ptr %67, i64 0, i32 2, i64 %69
  store ptr %13, ptr %70, align 8, !tbaa !188
  ret ptr %13
}

declare void @_obstack_newchunk(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #10

; Function Attrs: nounwind uwtable
define dso_local ptr @vn_get_expr_for(ptr noundef readonly %0) local_unnamed_addr #11 !prof !225 {
  %2 = load ptr, ptr @vn_ssa_aux_table, align 8
  %3 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 3
  %4 = load i32, ptr %3, align 8, !tbaa !199
  %5 = zext i32 %4 to i64
  %6 = getelementptr inbounds %struct.VEC_vn_ssa_aux_t_base, ptr %2, i64 0, i32 2, i64 %5
  %7 = load ptr, ptr %6, align 8, !tbaa !188
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %10, !prof !226

9:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 180, ptr noundef nonnull @.str.1) #23
  br label %10

10:                                               ; preds = %1, %9
  %11 = load ptr, ptr %7, align 8, !tbaa !227
  %12 = load ptr, ptr @VN_TOP, align 8, !tbaa !188
  %13 = icmp eq ptr %11, %12
  br i1 %13, label %390, label %14, !prof !226

14:                                               ; preds = %10
  %15 = load i64, ptr %11, align 8
  %16 = and i64 %15, 65535
  %17 = icmp eq i64 %16, 141
  br i1 %17, label %18, label %390, !prof !229

18:                                               ; preds = %14
  %19 = load ptr, ptr @vn_ssa_aux_table, align 8
  %20 = getelementptr inbounds %struct.tree_ssa_name, ptr %11, i64 0, i32 3
  %21 = load i32, ptr %20, align 8, !tbaa !199
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds %struct.VEC_vn_ssa_aux_t_base, ptr %19, i64 0, i32 2, i64 %22
  %24 = load ptr, ptr %23, align 8, !tbaa !188
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %27, !prof !226

26:                                               ; preds = %18
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 180, ptr noundef nonnull @.str.1) #23
  br label %27

27:                                               ; preds = %18, %26
  %28 = load ptr, ptr %24, align 8, !tbaa !227
  %29 = load i64, ptr %28, align 8
  %30 = and i64 %29, 65535
  %31 = icmp eq i64 %30, 141
  br i1 %31, label %32, label %390, !prof !229

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.vn_ssa_aux, ptr %24, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !230
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %390, !prof !231

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.tree_ssa_name, ptr %28, i64 0, i32 2
  %38 = load ptr, ptr %37, align 8, !tbaa !199
  %39 = load i32, ptr %38, align 8
  %40 = and i32 %39, 253
  %41 = icmp eq i32 %40, 16
  br i1 %41, label %390, label %42, !prof !232

42:                                               ; preds = %36
  %43 = and i32 %39, 255
  %44 = icmp eq i32 %43, 6
  br i1 %44, label %45, label %390, !prof !233

45:                                               ; preds = %42
  %46 = lshr i32 %39, 16
  %47 = zext nneg i32 %46 to i64
  %48 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %47
  %49 = load i8, ptr %48, align 1, !tbaa !199
  %50 = icmp eq i8 %49, 3
  br i1 %50, label %51, label %67, !prof !234

51:                                               ; preds = %45
  %52 = zext nneg i32 %43 to i64
  %53 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %52
  %54 = load i32, ptr %53, align 4, !tbaa !203
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %55
  %57 = load i64, ptr %56, align 8, !tbaa !235
  %58 = icmp eq i64 %57, 0
  br i1 %58, label %59, label %60, !prof !236

59:                                               ; preds = %51
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 1622, ptr noundef nonnull @.str.1) #23
  br label %60

60:                                               ; preds = %59, %51
  %61 = getelementptr inbounds i8, ptr %38, i64 %57
  %62 = getelementptr inbounds ptr, ptr %61, i64 1
  %63 = load ptr, ptr %62, align 8, !tbaa !188
  %64 = load i64, ptr %63, align 8
  %65 = trunc i64 %64 to i32
  %66 = and i32 %65, 65535
  br label %67

67:                                               ; preds = %45, %60
  %68 = phi i32 [ %66, %60 ], [ %46, %45 ]
  %69 = zext nneg i32 %68 to i64
  %70 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %69
  %71 = load i32, ptr %70, align 4, !tbaa !203
  switch i32 %71, label %384 [
    i32 4, label %72
    i32 6, label %251
    i32 7, label %306
  ], !prof !237

72:                                               ; preds = %67
  %73 = load i32, ptr %38, align 8
  %74 = trunc i32 %73 to i8
  switch i8 %74, label %77 [
    i8 6, label %75
    i8 1, label %75
    i8 8, label %78
  ], !prof !238

75:                                               ; preds = %72, %72
  %76 = lshr i32 %73, 16
  br label %78

77:                                               ; preds = %72
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 1446, ptr noundef nonnull @.str.1) #23
  br label %78

78:                                               ; preds = %77, %75, %72
  %79 = phi i32 [ %76, %75 ], [ 0, %77 ], [ 59, %72 ]
  %80 = zext nneg i32 %79 to i64
  %81 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %80
  %82 = load i8, ptr %81, align 1, !tbaa !199
  %83 = icmp eq i8 %82, 3
  br i1 %83, label %84, label %104, !prof !239

84:                                               ; preds = %78
  %85 = load i32, ptr %38, align 8
  %86 = and i32 %85, 255
  %87 = add nsw i32 %86, -1
  %88 = icmp ult i32 %87, 9
  tail call void @llvm.assume(i1 %88)
  %89 = zext nneg i32 %86 to i64
  %90 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %89
  %91 = load i32, ptr %90, align 4, !tbaa !203
  %92 = zext i32 %91 to i64
  %93 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %92
  %94 = load i64, ptr %93, align 8, !tbaa !235
  %95 = icmp eq i64 %94, 0
  br i1 %95, label %96, label %97, !prof !240

96:                                               ; preds = %84
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 1622, ptr noundef nonnull @.str.1) #23
  br label %97

97:                                               ; preds = %96, %84
  %98 = getelementptr inbounds i8, ptr %38, i64 %94
  %99 = getelementptr inbounds ptr, ptr %98, i64 1
  %100 = load ptr, ptr %99, align 8, !tbaa !188
  %101 = load i64, ptr %100, align 8
  %102 = trunc i64 %101 to i32
  %103 = and i32 %102, 65535
  br label %104

104:                                              ; preds = %78, %97
  %105 = phi i32 [ %103, %97 ], [ %79, %78 ]
  %106 = icmp eq i32 %105, 118
  br i1 %106, label %177, label %107, !prof !240

107:                                              ; preds = %104
  %108 = load i32, ptr %38, align 8
  %109 = trunc i32 %108 to i8
  switch i8 %109, label %112 [
    i8 6, label %110
    i8 1, label %110
    i8 8, label %113
  ], !prof !238

110:                                              ; preds = %107, %107
  %111 = lshr i32 %108, 16
  br label %113

112:                                              ; preds = %107
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 1446, ptr noundef nonnull @.str.1) #23
  br label %113

113:                                              ; preds = %112, %110, %107
  %114 = phi i32 [ %111, %110 ], [ 0, %112 ], [ 59, %107 ]
  %115 = zext nneg i32 %114 to i64
  %116 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %115
  %117 = load i8, ptr %116, align 1, !tbaa !199
  %118 = icmp eq i8 %117, 3
  br i1 %118, label %119, label %139, !prof !239

119:                                              ; preds = %113
  %120 = load i32, ptr %38, align 8
  %121 = and i32 %120, 255
  %122 = add nsw i32 %121, -1
  %123 = icmp ult i32 %122, 9
  tail call void @llvm.assume(i1 %123)
  %124 = zext nneg i32 %121 to i64
  %125 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %124
  %126 = load i32, ptr %125, align 4, !tbaa !203
  %127 = zext i32 %126 to i64
  %128 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %127
  %129 = load i64, ptr %128, align 8, !tbaa !235
  %130 = icmp eq i64 %129, 0
  br i1 %130, label %131, label %132, !prof !240

131:                                              ; preds = %119
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 1622, ptr noundef nonnull @.str.1) #23
  br label %132

132:                                              ; preds = %131, %119
  %133 = getelementptr inbounds i8, ptr %38, i64 %129
  %134 = getelementptr inbounds ptr, ptr %133, i64 1
  %135 = load ptr, ptr %134, align 8, !tbaa !188
  %136 = load i64, ptr %135, align 8
  %137 = trunc i64 %136 to i32
  %138 = and i32 %137, 65535
  br label %139

139:                                              ; preds = %113, %132
  %140 = phi i32 [ %138, %132 ], [ %114, %113 ]
  %141 = icmp eq i32 %140, 43
  br i1 %141, label %177, label %142, !prof !240

142:                                              ; preds = %139
  %143 = load i32, ptr %38, align 8
  %144 = trunc i32 %143 to i8
  switch i8 %144, label %147 [
    i8 6, label %145
    i8 1, label %145
    i8 8, label %148
  ], !prof !238

145:                                              ; preds = %142, %142
  %146 = lshr i32 %143, 16
  br label %148

147:                                              ; preds = %142
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 1446, ptr noundef nonnull @.str.1) #23
  br label %148

148:                                              ; preds = %147, %145, %142
  %149 = phi i32 [ %146, %145 ], [ 0, %147 ], [ 59, %142 ]
  %150 = zext nneg i32 %149 to i64
  %151 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %150
  %152 = load i8, ptr %151, align 1, !tbaa !199
  %153 = icmp eq i8 %152, 3
  br i1 %153, label %154, label %174, !prof !239

154:                                              ; preds = %148
  %155 = load i32, ptr %38, align 8
  %156 = and i32 %155, 255
  %157 = add nsw i32 %156, -1
  %158 = icmp ult i32 %157, 9
  tail call void @llvm.assume(i1 %158)
  %159 = zext nneg i32 %156 to i64
  %160 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %159
  %161 = load i32, ptr %160, align 4, !tbaa !203
  %162 = zext i32 %161 to i64
  %163 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %162
  %164 = load i64, ptr %163, align 8, !tbaa !235
  %165 = icmp eq i64 %164, 0
  br i1 %165, label %166, label %167, !prof !240

166:                                              ; preds = %154
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 1622, ptr noundef nonnull @.str.1) #23
  br label %167

167:                                              ; preds = %166, %154
  %168 = getelementptr inbounds i8, ptr %38, i64 %164
  %169 = getelementptr inbounds ptr, ptr %168, i64 1
  %170 = load ptr, ptr %169, align 8, !tbaa !188
  %171 = load i64, ptr %170, align 8
  %172 = trunc i64 %171 to i32
  %173 = and i32 %172, 65535
  br label %174

174:                                              ; preds = %148, %167
  %175 = phi i32 [ %173, %167 ], [ %149, %148 ]
  %176 = icmp eq i32 %175, 44
  br i1 %176, label %177, label %384, !prof !240

177:                                              ; preds = %174, %139, %104
  %178 = load i32, ptr %38, align 8
  %179 = and i32 %178, 255
  %180 = add nsw i32 %179, -1
  %181 = icmp ult i32 %180, 9
  tail call void @llvm.assume(i1 %181)
  %182 = zext nneg i32 %179 to i64
  %183 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %182
  %184 = load i32, ptr %183, align 4, !tbaa !203
  %185 = zext i32 %184 to i64
  %186 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %185
  %187 = load i64, ptr %186, align 8, !tbaa !235
  %188 = icmp eq i64 %187, 0
  br i1 %188, label %189, label %190

189:                                              ; preds = %177
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 1622, ptr noundef nonnull @.str.1) #23
  br label %190

190:                                              ; preds = %189, %177
  %191 = getelementptr inbounds i8, ptr %38, i64 %187
  %192 = getelementptr inbounds ptr, ptr %191, i64 1
  %193 = load ptr, ptr %192, align 8, !tbaa !188
  %194 = load i64, ptr %193, align 8
  %195 = and i64 %194, 65535
  %196 = icmp eq i64 %195, 141
  br i1 %196, label %197, label %384

197:                                              ; preds = %190
  %198 = load i32, ptr %38, align 8
  %199 = trunc i32 %198 to i8
  switch i8 %199, label %202 [
    i8 6, label %200
    i8 1, label %200
    i8 8, label %203
  ]

200:                                              ; preds = %197, %197
  %201 = lshr i32 %198, 16
  br label %203

202:                                              ; preds = %197
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 1446, ptr noundef nonnull @.str.1) #23
  br label %203

203:                                              ; preds = %202, %200, %197
  %204 = phi i32 [ %201, %200 ], [ 0, %202 ], [ 59, %197 ]
  %205 = zext nneg i32 %204 to i64
  %206 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %205
  %207 = load i8, ptr %206, align 1, !tbaa !199
  %208 = icmp eq i8 %207, 3
  br i1 %208, label %209, label %229

209:                                              ; preds = %203
  %210 = load i32, ptr %38, align 8
  %211 = and i32 %210, 255
  %212 = add nsw i32 %211, -1
  %213 = icmp ult i32 %212, 9
  tail call void @llvm.assume(i1 %213)
  %214 = zext nneg i32 %211 to i64
  %215 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %214
  %216 = load i32, ptr %215, align 4, !tbaa !203
  %217 = zext i32 %216 to i64
  %218 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %217
  %219 = load i64, ptr %218, align 8, !tbaa !235
  %220 = icmp eq i64 %219, 0
  br i1 %220, label %221, label %222

221:                                              ; preds = %209
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 1622, ptr noundef nonnull @.str.1) #23
  br label %222

222:                                              ; preds = %221, %209
  %223 = getelementptr inbounds i8, ptr %38, i64 %219
  %224 = getelementptr inbounds ptr, ptr %223, i64 1
  %225 = load ptr, ptr %224, align 8, !tbaa !188
  %226 = load i64, ptr %225, align 8
  %227 = trunc i64 %226 to i32
  %228 = and i32 %227, 65535
  br label %229

229:                                              ; preds = %203, %222
  %230 = phi i32 [ %228, %222 ], [ %204, %203 ]
  %231 = tail call fastcc ptr @gimple_expr_type(ptr noundef nonnull %38)
  %232 = load i32, ptr %38, align 8
  %233 = and i32 %232, 255
  %234 = add nsw i32 %233, -1
  %235 = icmp ult i32 %234, 9
  tail call void @llvm.assume(i1 %235)
  %236 = zext nneg i32 %233 to i64
  %237 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %236
  %238 = load i32, ptr %237, align 4, !tbaa !203
  %239 = zext i32 %238 to i64
  %240 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %239
  %241 = load i64, ptr %240, align 8, !tbaa !235
  %242 = icmp eq i64 %241, 0
  br i1 %242, label %243, label %244

243:                                              ; preds = %229
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 1622, ptr noundef nonnull @.str.1) #23
  br label %244

244:                                              ; preds = %243, %229
  %245 = getelementptr inbounds i8, ptr %38, i64 %241
  %246 = getelementptr inbounds ptr, ptr %245, i64 1
  %247 = load ptr, ptr %246, align 8, !tbaa !188
  %248 = getelementptr inbounds %struct.tree_exp, ptr %247, i64 0, i32 3
  %249 = load ptr, ptr %248, align 8, !tbaa !199
  %250 = tail call ptr @fold_build1_stat_loc(i32 noundef 0, i32 noundef %230, ptr noundef %231, ptr noundef %249) #23
  br label %384

251:                                              ; preds = %67
  %252 = load i32, ptr %38, align 8
  %253 = trunc i32 %252 to i8
  switch i8 %253, label %256 [
    i8 6, label %254
    i8 1, label %254
    i8 8, label %257
  ]

254:                                              ; preds = %251, %251
  %255 = lshr i32 %252, 16
  br label %257

256:                                              ; preds = %251
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 1446, ptr noundef nonnull @.str.1) #23
  br label %257

257:                                              ; preds = %256, %254, %251
  %258 = phi i32 [ %255, %254 ], [ 0, %256 ], [ 59, %251 ]
  %259 = zext nneg i32 %258 to i64
  %260 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %259
  %261 = load i8, ptr %260, align 1, !tbaa !199
  %262 = icmp eq i8 %261, 3
  br i1 %262, label %263, label %283

263:                                              ; preds = %257
  %264 = load i32, ptr %38, align 8
  %265 = and i32 %264, 255
  %266 = add nsw i32 %265, -1
  %267 = icmp ult i32 %266, 9
  tail call void @llvm.assume(i1 %267)
  %268 = zext nneg i32 %265 to i64
  %269 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %268
  %270 = load i32, ptr %269, align 4, !tbaa !203
  %271 = zext i32 %270 to i64
  %272 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %271
  %273 = load i64, ptr %272, align 8, !tbaa !235
  %274 = icmp eq i64 %273, 0
  br i1 %274, label %275, label %276

275:                                              ; preds = %263
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 1622, ptr noundef nonnull @.str.1) #23
  br label %276

276:                                              ; preds = %275, %263
  %277 = getelementptr inbounds i8, ptr %38, i64 %273
  %278 = getelementptr inbounds ptr, ptr %277, i64 1
  %279 = load ptr, ptr %278, align 8, !tbaa !188
  %280 = load i64, ptr %279, align 8
  %281 = trunc i64 %280 to i32
  %282 = and i32 %281, 65535
  br label %283

283:                                              ; preds = %257, %276
  %284 = phi i32 [ %282, %276 ], [ %258, %257 ]
  %285 = tail call fastcc ptr @gimple_expr_type(ptr noundef nonnull %38)
  %286 = load i32, ptr %38, align 8
  %287 = and i32 %286, 255
  %288 = add nsw i32 %287, -10
  %289 = icmp ult i32 %288, -9
  br i1 %289, label %303, label %290

290:                                              ; preds = %283
  %291 = zext nneg i32 %287 to i64
  %292 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %291
  %293 = load i32, ptr %292, align 4, !tbaa !203
  %294 = zext i32 %293 to i64
  %295 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %294
  %296 = load i64, ptr %295, align 8, !tbaa !235
  %297 = icmp eq i64 %296, 0
  br i1 %297, label %298, label %299

298:                                              ; preds = %290
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 1622, ptr noundef nonnull @.str.1) #23
  br label %299

299:                                              ; preds = %298, %290
  %300 = getelementptr inbounds i8, ptr %38, i64 %296
  %301 = getelementptr inbounds ptr, ptr %300, i64 1
  %302 = load ptr, ptr %301, align 8, !tbaa !188
  br label %303

303:                                              ; preds = %283, %299
  %304 = phi ptr [ %302, %299 ], [ null, %283 ]
  %305 = tail call ptr @fold_build1_stat_loc(i32 noundef 0, i32 noundef %284, ptr noundef %285, ptr noundef %304) #23
  br label %384

306:                                              ; preds = %67
  %307 = load i32, ptr %38, align 8
  %308 = trunc i32 %307 to i8
  switch i8 %308, label %311 [
    i8 6, label %309
    i8 1, label %309
    i8 8, label %312
  ], !prof !241

309:                                              ; preds = %306, %306
  %310 = lshr i32 %307, 16
  br label %312

311:                                              ; preds = %306
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 1446, ptr noundef nonnull @.str.1) #23
  br label %312

312:                                              ; preds = %311, %309, %306
  %313 = phi i32 [ %310, %309 ], [ 0, %311 ], [ 59, %306 ]
  %314 = zext nneg i32 %313 to i64
  %315 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %314
  %316 = load i8, ptr %315, align 1, !tbaa !199
  %317 = icmp eq i8 %316, 3
  br i1 %317, label %318, label %338, !prof !242

318:                                              ; preds = %312
  %319 = load i32, ptr %38, align 8
  %320 = and i32 %319, 255
  %321 = add nsw i32 %320, -1
  %322 = icmp ult i32 %321, 9
  tail call void @llvm.assume(i1 %322)
  %323 = zext nneg i32 %320 to i64
  %324 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %323
  %325 = load i32, ptr %324, align 4, !tbaa !203
  %326 = zext i32 %325 to i64
  %327 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %326
  %328 = load i64, ptr %327, align 8, !tbaa !235
  %329 = icmp eq i64 %328, 0
  br i1 %329, label %330, label %331

330:                                              ; preds = %318
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 1622, ptr noundef nonnull @.str.1) #23
  br label %331

331:                                              ; preds = %330, %318
  %332 = getelementptr inbounds i8, ptr %38, i64 %328
  %333 = getelementptr inbounds ptr, ptr %332, i64 1
  %334 = load ptr, ptr %333, align 8, !tbaa !188
  %335 = load i64, ptr %334, align 8
  %336 = trunc i64 %335 to i32
  %337 = and i32 %336, 65535
  br label %338

338:                                              ; preds = %312, %331
  %339 = phi i32 [ %337, %331 ], [ %313, %312 ]
  %340 = tail call fastcc ptr @gimple_expr_type(ptr noundef nonnull %38)
  %341 = load i32, ptr %38, align 8
  %342 = and i32 %341, 255
  %343 = add nsw i32 %342, -10
  %344 = icmp ult i32 %343, -9
  br i1 %344, label %358, label %345, !prof !242

345:                                              ; preds = %338
  %346 = zext nneg i32 %342 to i64
  %347 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %346
  %348 = load i32, ptr %347, align 4, !tbaa !203
  %349 = zext i32 %348 to i64
  %350 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %349
  %351 = load i64, ptr %350, align 8, !tbaa !235
  %352 = icmp eq i64 %351, 0
  br i1 %352, label %353, label %354, !prof !242

353:                                              ; preds = %345
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 1622, ptr noundef nonnull @.str.1) #23
  br label %354

354:                                              ; preds = %353, %345
  %355 = getelementptr inbounds i8, ptr %38, i64 %351
  %356 = getelementptr inbounds ptr, ptr %355, i64 1
  %357 = load ptr, ptr %356, align 8, !tbaa !188
  br label %358

358:                                              ; preds = %338, %354
  %359 = phi ptr [ %357, %354 ], [ null, %338 ]
  %360 = getelementptr inbounds %struct.gimple_statement_base, ptr %38, i64 0, i32 3
  %361 = load i32, ptr %360, align 4, !tbaa !199
  %362 = icmp ugt i32 %361, 2
  br i1 %362, label %363, label %381, !prof !243

363:                                              ; preds = %358
  %364 = load i32, ptr %38, align 8
  %365 = and i32 %364, 255
  %366 = add nsw i32 %365, -10
  %367 = icmp ult i32 %366, -9
  br i1 %367, label %381, label %368, !prof !242

368:                                              ; preds = %363
  %369 = zext nneg i32 %365 to i64
  %370 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %369
  %371 = load i32, ptr %370, align 4, !tbaa !203
  %372 = zext i32 %371 to i64
  %373 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %372
  %374 = load i64, ptr %373, align 8, !tbaa !235
  %375 = icmp eq i64 %374, 0
  br i1 %375, label %376, label %377, !prof !242

376:                                              ; preds = %368
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 1622, ptr noundef nonnull @.str.1) #23
  br label %377

377:                                              ; preds = %376, %368
  %378 = getelementptr inbounds i8, ptr %38, i64 %374
  %379 = getelementptr inbounds ptr, ptr %378, i64 2
  %380 = load ptr, ptr %379, align 8, !tbaa !188
  br label %381

381:                                              ; preds = %358, %363, %377
  %382 = phi ptr [ null, %358 ], [ %380, %377 ], [ null, %363 ]
  %383 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef %339, ptr noundef %340, ptr noundef %359, ptr noundef %382) #23
  br label %384

384:                                              ; preds = %174, %67, %190, %244, %381, %303
  %385 = phi ptr [ null, %67 ], [ %383, %381 ], [ %305, %303 ], [ %250, %244 ], [ null, %190 ], [ null, %174 ]
  %386 = icmp eq ptr %385, null
  br i1 %386, label %387, label %389, !prof !244

387:                                              ; preds = %384
  %388 = load ptr, ptr %24, align 8, !tbaa !227
  br label %390

389:                                              ; preds = %384
  store ptr %385, ptr %33, align 8, !tbaa !230
  br label %390

390:                                              ; preds = %36, %42, %32, %27, %14, %10, %389, %387
  %391 = phi ptr [ %388, %387 ], [ %385, %389 ], [ %0, %10 ], [ %11, %14 ], [ %28, %27 ], [ %34, %32 ], [ %28, %42 ], [ %28, %36 ]
  ret ptr %391
}

declare ptr @fold_build1_stat_loc(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc ptr @gimple_expr_type(ptr noundef %0) unnamed_addr #9 !prof !245 !PGOFuncName !246 {
  %2 = load i32, ptr %0, align 8
  %3 = trunc i32 %2 to i8
  switch i8 %3, label %75 [
    i8 8, label %4
    i8 6, label %25
    i8 1, label %76
  ], !prof !247

4:                                                ; preds = %1
  %5 = and i32 %2, 255
  %6 = add nsw i32 %5, -1
  %7 = icmp ult i32 %6, 9
  tail call void @llvm.assume(i1 %7)
  %8 = zext nneg i32 %5 to i64
  %9 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %8
  %10 = load i32, ptr %9, align 4, !tbaa !203
  %11 = zext i32 %10 to i64
  %12 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %11
  %13 = load i64, ptr %12, align 8, !tbaa !235
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %4
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 1622, ptr noundef nonnull @.str.1) #23
  br label %16

16:                                               ; preds = %4, %15
  %17 = getelementptr inbounds i8, ptr %0, i64 %13
  %18 = getelementptr inbounds ptr, ptr %17, i64 1
  %19 = load ptr, ptr %18, align 8, !tbaa !188
  %20 = getelementptr inbounds %struct.tree_common, ptr %19, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !199
  %22 = getelementptr inbounds %struct.tree_common, ptr %21, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !199
  %24 = getelementptr inbounds %struct.tree_common, ptr %23, i64 0, i32 2
  br label %76

25:                                               ; preds = %1
  %26 = lshr i32 %2, 16
  %27 = zext nneg i32 %26 to i64
  %28 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %27
  %29 = load i8, ptr %28, align 1, !tbaa !199
  %30 = icmp eq i8 %29, 3
  br i1 %30, label %31, label %51, !prof !248

31:                                               ; preds = %25
  %32 = load i32, ptr %0, align 8
  %33 = and i32 %32, 255
  %34 = add nsw i32 %33, -1
  %35 = icmp ult i32 %34, 9
  tail call void @llvm.assume(i1 %35)
  %36 = zext nneg i32 %33 to i64
  %37 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %36
  %38 = load i32, ptr %37, align 4, !tbaa !203
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %39
  %41 = load i64, ptr %40, align 8, !tbaa !235
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %44, !prof !249

43:                                               ; preds = %31
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 1622, ptr noundef nonnull @.str.1) #23
  br label %44

44:                                               ; preds = %43, %31
  %45 = getelementptr inbounds i8, ptr %0, i64 %41
  %46 = getelementptr inbounds ptr, ptr %45, i64 1
  %47 = load ptr, ptr %46, align 8, !tbaa !188
  %48 = load i64, ptr %47, align 8
  %49 = trunc i64 %48 to i32
  %50 = and i32 %49, 65535
  br label %51

51:                                               ; preds = %25, %44
  %52 = phi i32 [ %50, %44 ], [ %26, %25 ]
  %53 = icmp eq i32 %52, 66
  br i1 %53, label %54, label %72, !prof !250

54:                                               ; preds = %51
  %55 = load i32, ptr %0, align 8
  %56 = and i32 %55, 255
  %57 = add nsw i32 %56, -1
  %58 = icmp ult i32 %57, 9
  tail call void @llvm.assume(i1 %58)
  %59 = zext nneg i32 %56 to i64
  %60 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %59
  %61 = load i32, ptr %60, align 4, !tbaa !203
  %62 = zext i32 %61 to i64
  %63 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %62
  %64 = load i64, ptr %63, align 8, !tbaa !235
  %65 = icmp eq i64 %64, 0
  br i1 %65, label %66, label %67, !prof !251

66:                                               ; preds = %54
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 1622, ptr noundef nonnull @.str.1) #23
  br label %67

67:                                               ; preds = %66, %54
  %68 = getelementptr inbounds i8, ptr %0, i64 %64
  %69 = getelementptr inbounds ptr, ptr %68, i64 1
  %70 = load ptr, ptr %69, align 8, !tbaa !188
  %71 = getelementptr inbounds %struct.tree_common, ptr %70, i64 0, i32 2
  br label %76

72:                                               ; preds = %51
  %73 = tail call ptr @gimple_get_lhs(ptr noundef nonnull %0) #23
  %74 = getelementptr inbounds %struct.tree_common, ptr %73, i64 0, i32 2
  br label %76

75:                                               ; preds = %1
  br label %76

76:                                               ; preds = %1, %16, %72, %67, %75
  %77 = phi ptr [ getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), %75 ], [ %24, %16 ], [ %71, %67 ], [ %74, %72 ], [ getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), %1 ]
  %78 = load ptr, ptr %77, align 8, !tbaa !199
  ret ptr %78
}

declare ptr @fold_build2_stat_loc(i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i32 @get_constant_value_id(ptr noundef %0) local_unnamed_addr #11 !prof !252 {
  %2 = alloca %struct.vn_constant_s, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #23
  %3 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !199
  %5 = tail call i32 @iterative_hash_expr(ptr noundef %0, i32 noundef 0) #23
  %6 = load i64, ptr %4, align 8
  %7 = trunc i64 %6 to i32
  %8 = and i32 %7, 65535
  %9 = add nsw i32 %8, -6
  %10 = icmp ult i32 %9, 3
  br i1 %10, label %11, label %18, !prof !253

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.tree_type, ptr %4, i64 0, i32 6
  %13 = load i32, ptr %12, align 4
  %14 = and i32 %13, 1023
  %15 = lshr i32 %7, 21
  %16 = and i32 %15, 1
  %17 = add nuw nsw i32 %14, %16
  br label %18

18:                                               ; preds = %1, %11
  %19 = phi i32 [ %17, %11 ], [ 0, %1 ]
  %20 = zext i1 %10 to i32
  %21 = add i32 %5, %20
  %22 = add i32 %21, %19
  %23 = getelementptr inbounds %struct.vn_constant_s, ptr %2, i64 0, i32 1
  store i32 %22, ptr %23, align 4, !tbaa !254
  %24 = getelementptr inbounds %struct.vn_constant_s, ptr %2, i64 0, i32 2
  store ptr %0, ptr %24, align 8, !tbaa !256
  %25 = load ptr, ptr @constant_to_value_id, align 8, !tbaa !188
  %26 = call ptr @htab_find_slot_with_hash(ptr noundef %25, ptr noundef nonnull %2, i32 noundef %22, i32 noundef 0) #23
  %27 = icmp eq ptr %26, null
  br i1 %27, label %31, label %28, !prof !257

28:                                               ; preds = %18
  %29 = load ptr, ptr %26, align 8, !tbaa !188
  %30 = load i32, ptr %29, align 8, !tbaa !258
  br label %31

31:                                               ; preds = %18, %28
  %32 = phi i32 [ %30, %28 ], [ 0, %18 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #23
  ret i32 %32
}

declare ptr @htab_find_slot_with_hash(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i32 @get_or_alloc_constant_value_id(ptr noundef %0) local_unnamed_addr #11 !prof !259 {
  %2 = alloca %struct.vn_constant_s, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #23
  %3 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !199
  %5 = tail call i32 @iterative_hash_expr(ptr noundef %0, i32 noundef 0) #23
  %6 = load i64, ptr %4, align 8
  %7 = trunc i64 %6 to i32
  %8 = and i32 %7, 65535
  %9 = add nsw i32 %8, -6
  %10 = icmp ult i32 %9, 3
  br i1 %10, label %11, label %18, !prof !260

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.tree_type, ptr %4, i64 0, i32 6
  %13 = load i32, ptr %12, align 4
  %14 = and i32 %13, 1023
  %15 = lshr i32 %7, 21
  %16 = and i32 %15, 1
  %17 = add nuw nsw i32 %14, %16
  br label %18

18:                                               ; preds = %1, %11
  %19 = phi i32 [ %17, %11 ], [ 0, %1 ]
  %20 = zext i1 %10 to i32
  %21 = add i32 %5, %20
  %22 = add i32 %21, %19
  %23 = getelementptr inbounds %struct.vn_constant_s, ptr %2, i64 0, i32 1
  store i32 %22, ptr %23, align 4, !tbaa !254
  %24 = getelementptr inbounds %struct.vn_constant_s, ptr %2, i64 0, i32 2
  store ptr %0, ptr %24, align 8, !tbaa !256
  %25 = load ptr, ptr @constant_to_value_id, align 8, !tbaa !188
  %26 = call ptr @htab_find_slot_with_hash(ptr noundef %25, ptr noundef nonnull %2, i32 noundef %22, i32 noundef 1) #23
  %27 = load ptr, ptr %26, align 8, !tbaa !188
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %38, !prof !260

29:                                               ; preds = %18
  %30 = call ptr @xmalloc(i64 noundef 16) #23
  %31 = load i32, ptr %23, align 4, !tbaa !254
  %32 = getelementptr inbounds %struct.vn_constant_s, ptr %30, i64 0, i32 1
  store i32 %31, ptr %32, align 4, !tbaa !254
  %33 = getelementptr inbounds %struct.vn_constant_s, ptr %30, i64 0, i32 2
  store ptr %0, ptr %33, align 8, !tbaa !256
  %34 = load i32, ptr @next_value_id, align 4, !tbaa !203
  %35 = add i32 %34, 1
  store i32 %35, ptr @next_value_id, align 4, !tbaa !203
  store i32 %34, ptr %30, align 8, !tbaa !258
  store ptr %30, ptr %26, align 8, !tbaa !188
  %36 = load ptr, ptr @constant_value_ids, align 8, !tbaa !188
  %37 = call zeroext i8 @bitmap_set_bit(ptr noundef %36, i32 noundef %34) #23
  br label %38

38:                                               ; preds = %18, %29
  %39 = phi ptr [ %30, %29 ], [ %27, %18 ]
  %40 = load i32, ptr %39, align 8, !tbaa !258
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #23
  ret i32 %40
}

declare ptr @xmalloc(i64 noundef) #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local i32 @get_next_value_id() local_unnamed_addr #12 !prof !261 {
  %1 = load i32, ptr @next_value_id, align 4, !tbaa !203
  %2 = add i32 %1, 1
  store i32 %2, ptr @next_value_id, align 4, !tbaa !203
  ret i32 %1
}

declare zeroext i8 @bitmap_set_bit(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define dso_local zeroext i8 @value_id_constant_p(i32 noundef %0) local_unnamed_addr #9 !prof !262 {
  %2 = load ptr, ptr @constant_value_ids, align 8, !tbaa !188
  %3 = tail call i32 @bitmap_bit_p(ptr noundef %2, i32 noundef %0) #23
  %4 = trunc i32 %3 to i8
  ret i8 %4
}

declare i32 @bitmap_bit_p(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @vn_reference_compute_hash(ptr nocapture noundef readonly %0) local_unnamed_addr #9 !prof !187 {
  %2 = getelementptr inbounds %struct.vn_reference_s, ptr %0, i64 0, i32 5
  br label %3

3:                                                ; preds = %39, %1
  %4 = phi i64 [ %41, %39 ], [ 0, %1 ]
  %5 = phi i32 [ %40, %39 ], [ 0, %1 ]
  %6 = load ptr, ptr %2, align 8, !tbaa !263
  %7 = icmp eq ptr %6, null
  br i1 %7, label %14, label %8, !prof !265

8:                                                ; preds = %3
  %9 = load i32, ptr %6, align 8, !tbaa !266
  %10 = zext i32 %9 to i64
  %11 = icmp uge i64 %4, %10
  %12 = getelementptr inbounds %struct.VEC_vn_reference_op_s_base, ptr %6, i64 0, i32 2, i64 %4
  %13 = select i1 %11, ptr null, ptr %12, !prof !268
  br label %14

14:                                               ; preds = %8, %3
  %15 = phi ptr [ null, %3 ], [ %13, %8 ]
  %16 = phi i1 [ true, %3 ], [ %11, %8 ]
  br i1 %16, label %42, label %17, !prof !268

17:                                               ; preds = %14
  %18 = load i32, ptr %15, align 8, !tbaa !269
  %19 = tail call i32 @iterative_hash_hashval_t(i32 noundef %18, i32 noundef %5) #23
  %20 = getelementptr inbounds %struct.vn_reference_op_struct, ptr %15, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !271
  %22 = icmp eq ptr %21, null
  br i1 %22, label %25, label %23, !prof !272

23:                                               ; preds = %17
  %24 = tail call i32 @iterative_hash_expr(ptr noundef nonnull %21, i32 noundef %19) #23
  br label %25

25:                                               ; preds = %23, %17
  %26 = phi i32 [ %24, %23 ], [ %19, %17 ]
  %27 = getelementptr inbounds %struct.vn_reference_op_struct, ptr %15, i64 0, i32 3
  %28 = load ptr, ptr %27, align 8, !tbaa !273
  %29 = icmp eq ptr %28, null
  br i1 %29, label %32, label %30, !prof !274

30:                                               ; preds = %25
  %31 = tail call i32 @iterative_hash_expr(ptr noundef nonnull %28, i32 noundef %26) #23
  br label %32

32:                                               ; preds = %30, %25
  %33 = phi i32 [ %31, %30 ], [ %26, %25 ]
  %34 = getelementptr inbounds %struct.vn_reference_op_struct, ptr %15, i64 0, i32 4
  %35 = load ptr, ptr %34, align 8, !tbaa !275
  %36 = icmp eq ptr %35, null
  br i1 %36, label %39, label %37, !prof !274

37:                                               ; preds = %32
  %38 = tail call i32 @iterative_hash_expr(ptr noundef nonnull %35, i32 noundef %33) #23
  br label %39

39:                                               ; preds = %32, %37
  %40 = phi i32 [ %38, %37 ], [ %33, %32 ]
  %41 = add nuw i64 %4, 1
  br label %3, !llvm.loop !276

42:                                               ; preds = %14
  %43 = getelementptr inbounds %struct.vn_reference_s, ptr %0, i64 0, i32 2
  %44 = load ptr, ptr %43, align 8, !tbaa !277
  %45 = icmp eq ptr %44, null
  br i1 %45, label %50, label %46, !prof !278

46:                                               ; preds = %42
  %47 = getelementptr inbounds %struct.tree_ssa_name, ptr %44, i64 0, i32 3
  %48 = load i32, ptr %47, align 8, !tbaa !199
  %49 = add i32 %48, %5
  br label %50

50:                                               ; preds = %46, %42
  %51 = phi i32 [ %49, %46 ], [ %5, %42 ]
  ret i32 %51
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local noundef i32 @vn_reference_eq(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #9 !prof !279 {
  %3 = getelementptr inbounds %struct.vn_reference_s, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 4, !tbaa !280
  %5 = getelementptr inbounds %struct.vn_reference_s, ptr %1, i64 0, i32 1
  %6 = load i32, ptr %5, align 4, !tbaa !280
  %7 = icmp eq i32 %4, %6
  br i1 %7, label %8, label %117, !prof !281

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.vn_reference_s, ptr %0, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !277
  %11 = getelementptr inbounds %struct.vn_reference_s, ptr %1, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !277
  %13 = icmp eq ptr %10, %12
  br i1 %13, label %14, label %117, !prof !282

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.vn_reference_s, ptr %0, i64 0, i32 5
  %16 = load ptr, ptr %15, align 8, !tbaa !263
  %17 = getelementptr inbounds %struct.vn_reference_s, ptr %1, i64 0, i32 5
  %18 = load ptr, ptr %17, align 8, !tbaa !263
  %19 = icmp eq ptr %16, %18
  br i1 %19, label %117, label %20, !prof !283

20:                                               ; preds = %14
  %21 = icmp eq ptr %16, null
  br i1 %21, label %24, label %22, !prof !284

22:                                               ; preds = %20
  %23 = load i32, ptr %16, align 8, !tbaa !266
  br label %24

24:                                               ; preds = %20, %22
  %25 = phi i32 [ %23, %22 ], [ 0, %20 ]
  %26 = icmp eq ptr %18, null
  br i1 %26, label %29, label %27, !prof !284

27:                                               ; preds = %24
  %28 = load i32, ptr %18, align 8, !tbaa !266
  br label %29

29:                                               ; preds = %24, %27
  %30 = phi i32 [ %28, %27 ], [ 0, %24 ]
  %31 = icmp eq i32 %25, %30
  br i1 %31, label %32, label %117, !prof !285

32:                                               ; preds = %29, %115
  %33 = phi i64 [ %116, %115 ], [ 0, %29 ]
  %34 = load ptr, ptr %15, align 8, !tbaa !263
  %35 = icmp eq ptr %34, null
  br i1 %35, label %42, label %36, !prof !286

36:                                               ; preds = %32
  %37 = load i32, ptr %34, align 8, !tbaa !266
  %38 = zext i32 %37 to i64
  %39 = icmp uge i64 %33, %38
  %40 = getelementptr inbounds %struct.VEC_vn_reference_op_s_base, ptr %34, i64 0, i32 2, i64 %33
  %41 = select i1 %39, ptr null, ptr %40, !prof !287
  br label %42

42:                                               ; preds = %36, %32
  %43 = phi ptr [ null, %32 ], [ %41, %36 ]
  %44 = phi i1 [ true, %32 ], [ %39, %36 ]
  br i1 %44, label %117, label %45, !prof !287

45:                                               ; preds = %42
  %46 = load ptr, ptr %17, align 8, !tbaa !263
  %47 = getelementptr inbounds %struct.VEC_vn_reference_op_s_base, ptr %46, i64 0, i32 2, i64 %33
  %48 = load i32, ptr %47, align 8, !tbaa !269
  %49 = load i32, ptr %43, align 8, !tbaa !269
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %117, !prof !288

51:                                               ; preds = %45
  %52 = getelementptr inbounds %struct.VEC_vn_reference_op_s_base, ptr %46, i64 0, i32 2, i64 %33, i32 1
  %53 = load ptr, ptr %52, align 8, !tbaa !289
  %54 = getelementptr inbounds %struct.vn_reference_op_struct, ptr %43, i64 0, i32 1
  %55 = load ptr, ptr %54, align 8, !tbaa !289
  %56 = tail call zeroext i8 @types_compatible_p(ptr noundef %53, ptr noundef %55) #23
  %57 = icmp eq i8 %56, 0
  br i1 %57, label %117, label %58, !prof !290

58:                                               ; preds = %51
  %59 = getelementptr inbounds %struct.VEC_vn_reference_op_s_base, ptr %46, i64 0, i32 2, i64 %33, i32 2
  %60 = load ptr, ptr %59, align 8, !tbaa !271
  %61 = getelementptr inbounds %struct.vn_reference_op_struct, ptr %43, i64 0, i32 2
  %62 = load ptr, ptr %61, align 8, !tbaa !271
  %63 = icmp eq ptr %60, %62
  br i1 %63, label %77, label %64, !prof !291

64:                                               ; preds = %58
  %65 = icmp ne ptr %60, null
  %66 = icmp ne ptr %62, null
  %67 = and i1 %65, %66
  br i1 %67, label %68, label %117, !prof !292

68:                                               ; preds = %64
  %69 = load i64, ptr %60, align 8
  %70 = load i64, ptr %62, align 8
  %71 = xor i64 %70, %69
  %72 = and i64 %71, 65535
  %73 = icmp eq i64 %72, 0
  br i1 %73, label %74, label %117, !prof !293

74:                                               ; preds = %68
  %75 = tail call i32 @operand_equal_p(ptr noundef nonnull %60, ptr noundef nonnull %62, i32 noundef 2) #23
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %117, label %77, !prof !294

77:                                               ; preds = %74, %58
  %78 = getelementptr inbounds %struct.VEC_vn_reference_op_s_base, ptr %46, i64 0, i32 2, i64 %33, i32 3
  %79 = load ptr, ptr %78, align 8, !tbaa !273
  %80 = getelementptr inbounds %struct.vn_reference_op_struct, ptr %43, i64 0, i32 3
  %81 = load ptr, ptr %80, align 8, !tbaa !273
  %82 = icmp eq ptr %79, %81
  br i1 %82, label %96, label %83, !prof !291

83:                                               ; preds = %77
  %84 = icmp ne ptr %79, null
  %85 = icmp ne ptr %81, null
  %86 = and i1 %84, %85
  br i1 %86, label %87, label %117, !prof !292

87:                                               ; preds = %83
  %88 = load i64, ptr %79, align 8
  %89 = load i64, ptr %81, align 8
  %90 = xor i64 %89, %88
  %91 = and i64 %90, 65535
  %92 = icmp eq i64 %91, 0
  br i1 %92, label %93, label %117, !prof !293

93:                                               ; preds = %87
  %94 = tail call i32 @operand_equal_p(ptr noundef nonnull %79, ptr noundef nonnull %81, i32 noundef 2) #23
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %117, label %96, !prof !294

96:                                               ; preds = %93, %77
  %97 = getelementptr inbounds %struct.VEC_vn_reference_op_s_base, ptr %46, i64 0, i32 2, i64 %33, i32 4
  %98 = load ptr, ptr %97, align 8, !tbaa !275
  %99 = getelementptr inbounds %struct.vn_reference_op_struct, ptr %43, i64 0, i32 4
  %100 = load ptr, ptr %99, align 8, !tbaa !275
  %101 = icmp eq ptr %98, %100
  br i1 %101, label %115, label %102, !prof !291

102:                                              ; preds = %96
  %103 = icmp ne ptr %98, null
  %104 = icmp ne ptr %100, null
  %105 = and i1 %103, %104
  br i1 %105, label %106, label %117, !prof !292

106:                                              ; preds = %102
  %107 = load i64, ptr %98, align 8
  %108 = load i64, ptr %100, align 8
  %109 = xor i64 %108, %107
  %110 = and i64 %109, 65535
  %111 = icmp eq i64 %110, 0
  br i1 %111, label %112, label %117, !prof !293

112:                                              ; preds = %106
  %113 = tail call i32 @operand_equal_p(ptr noundef nonnull %98, ptr noundef nonnull %100, i32 noundef 2) #23
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %117, label %115, !prof !294

115:                                              ; preds = %112, %96
  %116 = add nuw i64 %33, 1
  br label %32, !llvm.loop !295

117:                                              ; preds = %106, %112, %51, %45, %102, %64, %83, %74, %68, %93, %87, %42, %29, %14, %8, %2
  %118 = phi i32 [ 0, %2 ], [ 0, %8 ], [ 1, %14 ], [ 0, %29 ], [ 1, %42 ], [ 0, %87 ], [ 0, %93 ], [ 0, %68 ], [ 0, %74 ], [ 0, %83 ], [ 0, %64 ], [ 0, %102 ], [ 0, %45 ], [ 0, %51 ], [ 0, %112 ], [ 0, %106 ]
  ret i32 %118
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc noundef i32 @vn_reference_op_eq(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #9 !prof !187 !PGOFuncName !296 {
  %3 = load i32, ptr %0, align 8, !tbaa !269
  %4 = load i32, ptr %1, align 8, !tbaa !269
  %5 = icmp eq i32 %3, %4
  br i1 %5, label %6, label %71, !prof !288

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.vn_reference_op_struct, ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !289
  %9 = getelementptr inbounds %struct.vn_reference_op_struct, ptr %1, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !289
  %11 = tail call zeroext i8 @types_compatible_p(ptr noundef %8, ptr noundef %10) #23
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %71, label %13, !prof !290

13:                                               ; preds = %6
  %14 = getelementptr inbounds %struct.vn_reference_op_struct, ptr %0, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !271
  %16 = getelementptr inbounds %struct.vn_reference_op_struct, ptr %1, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !271
  %18 = icmp eq ptr %15, %17
  br i1 %18, label %32, label %19, !prof !291

19:                                               ; preds = %13
  %20 = icmp ne ptr %15, null
  %21 = icmp ne ptr %17, null
  %22 = and i1 %20, %21
  br i1 %22, label %23, label %71, !prof !292

23:                                               ; preds = %19
  %24 = load i64, ptr %15, align 8
  %25 = load i64, ptr %17, align 8
  %26 = xor i64 %25, %24
  %27 = and i64 %26, 65535
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %71, !prof !293

29:                                               ; preds = %23
  %30 = tail call i32 @operand_equal_p(ptr noundef nonnull %15, ptr noundef nonnull %17, i32 noundef 2) #23
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %71, label %32, !prof !294

32:                                               ; preds = %29, %13
  %33 = getelementptr inbounds %struct.vn_reference_op_struct, ptr %0, i64 0, i32 3
  %34 = load ptr, ptr %33, align 8, !tbaa !273
  %35 = getelementptr inbounds %struct.vn_reference_op_struct, ptr %1, i64 0, i32 3
  %36 = load ptr, ptr %35, align 8, !tbaa !273
  %37 = icmp eq ptr %34, %36
  br i1 %37, label %51, label %38, !prof !291

38:                                               ; preds = %32
  %39 = icmp ne ptr %34, null
  %40 = icmp ne ptr %36, null
  %41 = and i1 %39, %40
  br i1 %41, label %42, label %71, !prof !292

42:                                               ; preds = %38
  %43 = load i64, ptr %34, align 8
  %44 = load i64, ptr %36, align 8
  %45 = xor i64 %44, %43
  %46 = and i64 %45, 65535
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %71, !prof !293

48:                                               ; preds = %42
  %49 = tail call i32 @operand_equal_p(ptr noundef nonnull %34, ptr noundef nonnull %36, i32 noundef 2) #23
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %71, label %51, !prof !294

51:                                               ; preds = %48, %32
  %52 = getelementptr inbounds %struct.vn_reference_op_struct, ptr %0, i64 0, i32 4
  %53 = load ptr, ptr %52, align 8, !tbaa !275
  %54 = getelementptr inbounds %struct.vn_reference_op_struct, ptr %1, i64 0, i32 4
  %55 = load ptr, ptr %54, align 8, !tbaa !275
  %56 = icmp eq ptr %53, %55
  br i1 %56, label %71, label %57, !prof !291

57:                                               ; preds = %51
  %58 = icmp ne ptr %53, null
  %59 = icmp ne ptr %55, null
  %60 = and i1 %58, %59
  br i1 %60, label %61, label %71, !prof !292

61:                                               ; preds = %57
  %62 = load i64, ptr %53, align 8
  %63 = load i64, ptr %55, align 8
  %64 = xor i64 %63, %62
  %65 = and i64 %64, 65535
  %66 = icmp eq i64 %65, 0
  br i1 %66, label %67, label %70, !prof !293

67:                                               ; preds = %61
  %68 = tail call i32 @operand_equal_p(ptr noundef nonnull %53, ptr noundef nonnull %55, i32 noundef 2) #23
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %71, !prof !294

70:                                               ; preds = %67, %61
  br label %71

71:                                               ; preds = %42, %48, %23, %29, %38, %19, %70, %67, %57, %51, %6, %2
  %72 = phi i32 [ 0, %6 ], [ 0, %2 ], [ 0, %70 ], [ 1, %51 ], [ 0, %57 ], [ 1, %67 ], [ 0, %19 ], [ 0, %38 ], [ 0, %29 ], [ 0, %23 ], [ 0, %48 ], [ 0, %42 ]
  ret i32 %72
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local void @copy_reference_ops_from_ref(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #9 !prof !297 {
  %3 = load i64, ptr %0, align 8
  %4 = and i64 %3, 65535
  %5 = icmp eq i64 %4, 152
  br i1 %5, label %6, label %79, !prof !298

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !199
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 1
  %12 = load ptr, ptr %11, align 8, !tbaa !199
  br label %13

13:                                               ; preds = %6, %10
  %14 = phi ptr [ %12, %10 ], [ %8, %6 ]
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %13
  %17 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 39), align 8, !tbaa !188
  %18 = tail call ptr @build_int_cst(ptr noundef %17, i64 noundef 0) #23
  br label %19

19:                                               ; preds = %16, %13
  %20 = phi ptr [ %14, %13 ], [ %18, %16 ]
  %21 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !199
  %23 = getelementptr inbounds %struct.tree_type, ptr %22, i64 0, i32 16
  %24 = load ptr, ptr %23, align 8, !tbaa !199
  %25 = load i64, ptr %0, align 8
  %26 = trunc i64 %25 to i32
  %27 = and i32 %26, 65535
  %28 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 1, i32 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !199
  %30 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 1, i32 0, i32 2
  %31 = load ptr, ptr %30, align 8, !tbaa !199
  %32 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 1, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !199
  %34 = load ptr, ptr %1, align 8, !tbaa !188
  %35 = icmp eq ptr %34, null
  br i1 %35, label %41, label %36

36:                                               ; preds = %19
  %37 = getelementptr inbounds %struct.VEC_vn_reference_op_s_base, ptr %34, i64 0, i32 1
  %38 = load i32, ptr %37, align 4, !tbaa !299
  %39 = load i32, ptr %34, align 8, !tbaa !266
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %19, %36
  %42 = tail call ptr @vec_heap_o_reserve(ptr noundef %34, i32 noundef 1, i64 noundef 8, i64 noundef 40) #23
  store ptr %42, ptr %1, align 8, !tbaa !188
  br label %43

43:                                               ; preds = %36, %41
  %44 = load ptr, ptr %1, align 8, !tbaa !188
  %45 = load i32, ptr %44, align 8, !tbaa !266
  %46 = add i32 %45, 1
  store i32 %46, ptr %44, align 8, !tbaa !266
  %47 = zext i32 %45 to i64
  %48 = getelementptr inbounds %struct.VEC_vn_reference_op_s_base, ptr %44, i64 0, i32 2, i64 %47
  store i32 %27, ptr %48, align 8, !tbaa.struct !300
  %49 = getelementptr inbounds i8, ptr %48, i64 4
  store i32 0, ptr %49, align 4, !tbaa.struct !301
  %50 = getelementptr inbounds i8, ptr %48, i64 8
  store ptr %24, ptr %50, align 8, !tbaa.struct !302
  %51 = getelementptr inbounds i8, ptr %48, i64 16
  store ptr %29, ptr %51, align 8, !tbaa.struct !303
  %52 = getelementptr inbounds i8, ptr %48, i64 24
  store ptr %31, ptr %52, align 8, !tbaa.struct !304
  %53 = getelementptr inbounds i8, ptr %48, i64 32
  store ptr %33, ptr %53, align 8, !tbaa.struct !305
  %54 = load i64, ptr %20, align 8
  %55 = trunc i64 %54 to i32
  %56 = and i32 %55, 65535
  %57 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 1, i32 2
  %58 = load ptr, ptr %57, align 8, !tbaa !199
  %59 = load ptr, ptr %1, align 8, !tbaa !188
  %60 = icmp eq ptr %59, null
  br i1 %60, label %66, label %61

61:                                               ; preds = %43
  %62 = getelementptr inbounds %struct.VEC_vn_reference_op_s_base, ptr %59, i64 0, i32 1
  %63 = load i32, ptr %62, align 4, !tbaa !299
  %64 = load i32, ptr %59, align 8, !tbaa !266
  %65 = icmp eq i32 %63, %64
  br i1 %65, label %66, label %68

66:                                               ; preds = %43, %61
  %67 = tail call ptr @vec_heap_o_reserve(ptr noundef %59, i32 noundef 1, i64 noundef 8, i64 noundef 40) #23
  store ptr %67, ptr %1, align 8, !tbaa !188
  br label %68

68:                                               ; preds = %61, %66
  %69 = load ptr, ptr %1, align 8, !tbaa !188
  %70 = load i32, ptr %69, align 8, !tbaa !266
  %71 = add i32 %70, 1
  store i32 %71, ptr %69, align 8, !tbaa !266
  %72 = zext i32 %70 to i64
  %73 = getelementptr inbounds %struct.VEC_vn_reference_op_s_base, ptr %69, i64 0, i32 2, i64 %72
  store i32 %56, ptr %73, align 8, !tbaa.struct !300
  %74 = getelementptr inbounds i8, ptr %73, i64 4
  store i32 0, ptr %74, align 4, !tbaa.struct !301
  %75 = getelementptr inbounds i8, ptr %73, i64 8
  store ptr null, ptr %75, align 8, !tbaa.struct !302
  %76 = getelementptr inbounds i8, ptr %73, i64 16
  store ptr %20, ptr %76, align 8, !tbaa.struct !303
  %77 = getelementptr inbounds i8, ptr %73, i64 24
  store ptr %58, ptr %77, align 8, !tbaa.struct !304
  %78 = getelementptr inbounds i8, ptr %73, i64 32
  store ptr null, ptr %78, align 8, !tbaa.struct !305
  br label %181

79:                                               ; preds = %2, %178
  %80 = phi ptr [ %179, %178 ], [ %0, %2 ]
  %81 = getelementptr inbounds %struct.tree_common, ptr %80, i64 0, i32 2
  %82 = load ptr, ptr %81, align 8, !tbaa !199
  %83 = getelementptr inbounds %struct.tree_type, ptr %82, i64 0, i32 16
  %84 = load ptr, ptr %83, align 8, !tbaa !199
  %85 = load i64, ptr %80, align 8
  %86 = trunc i64 %85 to i32
  %87 = and i32 %86, 65535
  %88 = trunc i64 %85 to i16
  switch i16 %88, label %139 [
    i16 48, label %140
    i16 47, label %140
    i16 49, label %89
    i16 42, label %92
    i16 41, label %97
    i16 46, label %129
    i16 45, label %129
    i16 28, label %134
    i16 23, label %134
    i16 26, label %134
    i16 27, label %134
    i16 24, label %134
    i16 51, label %134
    i16 32, label %134
    i16 34, label %134
    i16 33, label %134
    i16 36, label %134
    i16 141, label %134
    i16 121, label %135
    i16 44, label %140
    i16 43, label %140
    i16 118, label %140
  ], !prof !306

89:                                               ; preds = %79
  %90 = getelementptr inbounds %struct.tree_exp, ptr %80, i64 1
  %91 = load ptr, ptr %90, align 8, !tbaa !199
  br label %140

92:                                               ; preds = %79
  %93 = getelementptr inbounds %struct.tree_exp, ptr %80, i64 1
  %94 = load ptr, ptr %93, align 8, !tbaa !199
  %95 = getelementptr inbounds %struct.tree_exp, ptr %80, i64 1, i32 0, i32 1
  %96 = load ptr, ptr %95, align 8, !tbaa !199
  br label %140

97:                                               ; preds = %79
  %98 = getelementptr inbounds %struct.tree_exp, ptr %80, i64 1
  %99 = load ptr, ptr %98, align 8, !tbaa !199
  %100 = getelementptr inbounds %struct.tree_exp, ptr %80, i64 1, i32 0, i32 1
  %101 = load ptr, ptr %100, align 8, !tbaa !199
  %102 = load i8, ptr @may_insert, align 1, !tbaa !199
  %103 = icmp ne i8 %102, 0
  %104 = icmp eq ptr %101, null
  %105 = select i1 %103, i1 %104, i1 false, !prof !307
  br i1 %105, label %106, label %140, !prof !307

106:                                              ; preds = %97
  %107 = getelementptr inbounds %struct.tree_decl_minimal, ptr %99, i64 0, i32 4
  %108 = load ptr, ptr %107, align 8, !tbaa !199
  %109 = load i64, ptr %108, align 8
  %110 = and i64 %109, 65535
  %111 = icmp eq i64 %110, 17
  br i1 %111, label %112, label %140, !prof !308

112:                                              ; preds = %106
  %113 = getelementptr inbounds %struct.tree_field_decl, ptr %99, i64 0, i32 1
  %114 = load ptr, ptr %113, align 8, !tbaa !199
  %115 = tail call i32 @integer_zerop(ptr noundef %114) #23
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %140, label %117, !prof !309

117:                                              ; preds = %112
  %118 = getelementptr inbounds %struct.tree_field_decl, ptr %99, i64 0, i32 4
  %119 = load ptr, ptr %118, align 8, !tbaa !199
  %120 = tail call i32 @integer_zerop(ptr noundef %119) #23
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %140, label %122, !prof !309

122:                                              ; preds = %117
  %123 = getelementptr inbounds %struct.tree_decl_common, ptr %99, i64 0, i32 1
  %124 = load ptr, ptr %123, align 8, !tbaa !199
  %125 = tail call i32 @host_integerp(ptr noundef %124, i32 noundef 0) #23
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %140, label %127, !prof !309

127:                                              ; preds = %122
  %128 = load ptr, ptr %123, align 8, !tbaa !199
  br label %140

129:                                              ; preds = %79, %79
  %130 = getelementptr inbounds %struct.tree_exp, ptr %80, i64 1
  %131 = load ptr, ptr %130, align 8, !tbaa !199
  %132 = tail call ptr @array_ref_low_bound(ptr noundef nonnull %80) #23
  %133 = tail call ptr @array_ref_element_size(ptr noundef nonnull %80) #23
  br label %140

134:                                              ; preds = %79, %79, %79, %79, %79, %79, %79, %79, %79, %79, %79
  br label %140

135:                                              ; preds = %79
  %136 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef nonnull %80) #23
  %137 = icmp eq i8 %136, 0
  %138 = select i1 %137, ptr null, ptr %80
  br label %140

139:                                              ; preds = %79
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 601, ptr noundef nonnull @.str.1) #23
  br label %140

140:                                              ; preds = %79, %79, %79, %79, %135, %79, %97, %106, %112, %117, %122, %127, %139, %134, %129, %92, %89
  %141 = phi ptr [ %84, %139 ], [ %84, %134 ], [ %84, %129 ], [ null, %112 ], [ null, %117 ], [ null, %122 ], [ null, %127 ], [ null, %106 ], [ null, %97 ], [ %84, %92 ], [ %84, %89 ], [ %84, %79 ], [ %84, %135 ], [ %84, %79 ], [ %84, %79 ], [ %84, %79 ], [ %84, %79 ]
  %142 = phi ptr [ null, %139 ], [ %80, %134 ], [ %131, %129 ], [ %99, %112 ], [ %99, %117 ], [ %99, %122 ], [ %128, %127 ], [ %99, %106 ], [ %99, %97 ], [ %94, %92 ], [ %91, %89 ], [ null, %79 ], [ %138, %135 ], [ null, %79 ], [ null, %79 ], [ null, %79 ], [ null, %79 ]
  %143 = phi ptr [ null, %139 ], [ null, %134 ], [ %132, %129 ], [ %101, %112 ], [ %101, %117 ], [ %101, %122 ], [ %101, %127 ], [ %101, %106 ], [ %101, %97 ], [ %96, %92 ], [ null, %89 ], [ null, %79 ], [ null, %135 ], [ null, %79 ], [ null, %79 ], [ null, %79 ], [ null, %79 ]
  %144 = phi ptr [ null, %139 ], [ null, %134 ], [ %133, %129 ], [ null, %112 ], [ null, %117 ], [ null, %122 ], [ null, %127 ], [ null, %106 ], [ null, %97 ], [ null, %92 ], [ null, %89 ], [ null, %79 ], [ null, %135 ], [ null, %79 ], [ null, %79 ], [ null, %79 ], [ null, %79 ]
  %145 = load ptr, ptr %1, align 8, !tbaa !188
  %146 = icmp eq ptr %145, null
  br i1 %146, label %152, label %147, !prof !310

147:                                              ; preds = %140
  %148 = getelementptr inbounds %struct.VEC_vn_reference_op_s_base, ptr %145, i64 0, i32 1
  %149 = load i32, ptr %148, align 4, !tbaa !299
  %150 = load i32, ptr %145, align 8, !tbaa !266
  %151 = icmp eq i32 %149, %150
  br i1 %151, label %152, label %154, !prof !311

152:                                              ; preds = %140, %147
  %153 = tail call ptr @vec_heap_o_reserve(ptr noundef %145, i32 noundef 1, i64 noundef 8, i64 noundef 40) #23
  store ptr %153, ptr %1, align 8, !tbaa !188
  br label %154

154:                                              ; preds = %147, %152
  %155 = load ptr, ptr %1, align 8, !tbaa !188
  %156 = load i32, ptr %155, align 8, !tbaa !266
  %157 = add i32 %156, 1
  store i32 %157, ptr %155, align 8, !tbaa !266
  %158 = zext i32 %156 to i64
  %159 = getelementptr inbounds %struct.VEC_vn_reference_op_s_base, ptr %155, i64 0, i32 2, i64 %158
  store i32 %87, ptr %159, align 8, !tbaa.struct !300
  %160 = getelementptr inbounds i8, ptr %159, i64 4
  store i32 0, ptr %160, align 4, !tbaa.struct !301
  %161 = getelementptr inbounds i8, ptr %159, i64 8
  store ptr %141, ptr %161, align 8, !tbaa.struct !302
  %162 = getelementptr inbounds i8, ptr %159, i64 16
  store ptr %142, ptr %162, align 8, !tbaa.struct !303
  %163 = getelementptr inbounds i8, ptr %159, i64 24
  store ptr %143, ptr %163, align 8, !tbaa.struct !304
  %164 = getelementptr inbounds i8, ptr %159, i64 32
  store ptr %144, ptr %164, align 8, !tbaa.struct !305
  %165 = load i64, ptr %80, align 8
  %166 = and i64 %165, 65535
  %167 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %166
  %168 = load i32, ptr %167, align 4, !tbaa !203
  %169 = icmp eq i32 %168, 4
  br i1 %169, label %175, label %170, !prof !312

170:                                              ; preds = %154
  %171 = icmp eq i64 %166, 121
  br i1 %171, label %172, label %178, !prof !298

172:                                              ; preds = %170
  %173 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef nonnull %80) #23
  %174 = icmp eq i8 %173, 0
  br i1 %174, label %175, label %178

175:                                              ; preds = %172, %154
  %176 = getelementptr inbounds %struct.tree_exp, ptr %80, i64 0, i32 3
  %177 = load ptr, ptr %176, align 8, !tbaa !199
  br label %178

178:                                              ; preds = %170, %172, %175
  %179 = phi ptr [ %177, %175 ], [ null, %172 ], [ null, %170 ]
  %180 = icmp eq ptr %179, null
  br i1 %180, label %181, label %79, !prof !313, !llvm.loop !314

181:                                              ; preds = %178, %68
  ret void
}

declare ptr @build_int_cst(ptr noundef, i64 noundef) local_unnamed_addr #3

declare i32 @integer_zerop(ptr noundef) local_unnamed_addr #3

declare i32 @host_integerp(ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @array_ref_low_bound(ptr noundef) local_unnamed_addr #3

declare ptr @array_ref_element_size(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @is_gimple_min_invariant(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i8 @ao_ref_init_from_vn_reference(ptr nocapture noundef writeonly %0, i32 noundef %1, ptr noundef %2, ptr noundef readonly %3) local_unnamed_addr #11 !prof !315 {
  %5 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5)
  store ptr null, ptr %5, align 8, !tbaa !188
  %6 = getelementptr inbounds %struct.VEC_vn_reference_op_s_base, ptr %3, i64 0, i32 2, i64 0
  %7 = load i32, ptr %6, align 8, !tbaa !269
  switch i32 %7, label %20 [
    i32 41, label %8
    i32 42, label %17
  ], !prof !316

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.VEC_vn_reference_op_s_base, ptr %3, i64 0, i32 2, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !271
  %11 = load i64, ptr %10, align 8
  %12 = and i64 %11, 65535
  %13 = icmp eq i64 %12, 23
  br i1 %13, label %43, label %14, !prof !317

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.tree_decl_common, ptr %10, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !199
  br label %43

17:                                               ; preds = %4
  %18 = getelementptr inbounds %struct.VEC_vn_reference_op_s_base, ptr %3, i64 0, i32 2, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !271
  br label %43

20:                                               ; preds = %4
  %21 = load i64, ptr %2, align 8
  %22 = and i64 %21, 65535
  %23 = icmp eq i64 %22, 14
  br i1 %23, label %24, label %26, !prof !318

24:                                               ; preds = %20
  %25 = tail call i32 @vector_type_mode(ptr noundef nonnull %2) #23
  br label %31

26:                                               ; preds = %20
  %27 = getelementptr inbounds %struct.tree_type, ptr %2, i64 0, i32 6
  %28 = load i32, ptr %27, align 4
  %29 = lshr i32 %28, 16
  %30 = and i32 %29, 255
  br label %31

31:                                               ; preds = %26, %24
  %32 = phi i32 [ %25, %24 ], [ %30, %26 ]
  %33 = icmp eq i32 %32, 1
  br i1 %33, label %34, label %37, !prof !318

34:                                               ; preds = %31
  %35 = getelementptr inbounds %struct.tree_type, ptr %2, i64 0, i32 2
  %36 = load ptr, ptr %35, align 8, !tbaa !199
  br label %43

37:                                               ; preds = %31
  %38 = zext i32 %32 to i64
  %39 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %38
  %40 = load i8, ptr %39, align 1, !tbaa !199
  %41 = zext i8 %40 to i64
  %42 = shl nuw nsw i64 %41, 3
  br label %43

43:                                               ; preds = %34, %37, %8, %17, %14
  %44 = phi i64 [ -1, %14 ], [ -1, %17 ], [ -1, %8 ], [ -1, %34 ], [ %42, %37 ]
  %45 = phi ptr [ %16, %14 ], [ %19, %17 ], [ %10, %8 ], [ %36, %34 ], [ null, %37 ]
  %46 = icmp eq ptr %45, null
  br i1 %46, label %53, label %47, !prof !319

47:                                               ; preds = %43
  %48 = tail call i32 @host_integerp(ptr noundef nonnull %45, i32 noundef 1) #23
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %53, label %50, !prof !317

50:                                               ; preds = %47
  %51 = getelementptr inbounds %struct.tree_int_cst, ptr %45, i64 0, i32 1
  %52 = load i64, ptr %51, align 8, !tbaa !199
  br label %53

53:                                               ; preds = %47, %50, %43
  %54 = phi i64 [ %52, %50 ], [ %44, %43 ], [ -1, %47 ]
  %55 = icmp eq ptr %3, null
  br label %56

56:                                               ; preds = %149, %53
  %57 = phi i64 [ 0, %53 ], [ %150, %149 ]
  %58 = phi i64 [ %54, %53 ], [ %151, %149 ]
  %59 = phi ptr [ %5, %53 ], [ %152, %149 ]
  %60 = phi i32 [ 0, %53 ], [ %153, %149 ]
  br i1 %55, label %67, label %61, !prof !320

61:                                               ; preds = %56
  %62 = load i32, ptr %3, align 8, !tbaa !266
  %63 = icmp ugt i32 %62, %60
  br i1 %63, label %64, label %67, !prof !321

64:                                               ; preds = %61
  %65 = zext i32 %60 to i64
  %66 = getelementptr inbounds %struct.VEC_vn_reference_op_s_base, ptr %3, i64 0, i32 2, i64 %65
  br label %67

67:                                               ; preds = %56, %61, %64
  %68 = phi ptr [ %66, %64 ], [ null, %61 ], [ null, %56 ]
  %69 = phi i1 [ false, %64 ], [ true, %61 ], [ true, %56 ]
  br i1 %69, label %154, label %70, !prof !322

70:                                               ; preds = %67
  %71 = load i32, ptr %68, align 8, !tbaa !269
  switch i32 %71, label %164 [
    i32 118, label %149
    i32 44, label %147
    i32 48, label %72
    i32 47, label %72
    i32 49, label %77
    i32 32, label %84
    i32 34, label %84
    i32 36, label %84
    i32 141, label %84
    i32 42, label %87
    i32 41, label %92
    i32 46, label %118
    i32 45, label %118
    i32 43, label %149
  ], !prof !323

72:                                               ; preds = %70, %70
  %73 = getelementptr inbounds %struct.vn_reference_op_struct, ptr %68, i64 0, i32 1
  %74 = load ptr, ptr %73, align 8, !tbaa !289
  %75 = tail call ptr @build1_stat(i32 noundef %71, ptr noundef %74, ptr noundef null) #23
  store ptr %75, ptr %59, align 8, !tbaa !188
  %76 = getelementptr inbounds %struct.tree_exp, ptr %75, i64 0, i32 3
  br label %149

77:                                               ; preds = %70
  %78 = getelementptr inbounds %struct.vn_reference_op_struct, ptr %68, i64 0, i32 1
  %79 = load ptr, ptr %78, align 8, !tbaa !289
  %80 = getelementptr inbounds %struct.vn_reference_op_struct, ptr %68, i64 0, i32 2
  %81 = load ptr, ptr %80, align 8, !tbaa !271
  %82 = tail call ptr @build2_stat(i32 noundef 49, ptr noundef %79, ptr noundef null, ptr noundef %81) #23
  store ptr %82, ptr %59, align 8, !tbaa !188
  %83 = getelementptr inbounds %struct.tree_exp, ptr %82, i64 0, i32 3
  br label %149

84:                                               ; preds = %70, %70, %70, %70
  %85 = getelementptr inbounds %struct.vn_reference_op_struct, ptr %68, i64 0, i32 2
  %86 = load ptr, ptr %85, align 8, !tbaa !271
  store ptr %86, ptr %59, align 8, !tbaa !188
  br label %149

87:                                               ; preds = %70
  %88 = getelementptr inbounds %struct.vn_reference_op_struct, ptr %68, i64 0, i32 3
  %89 = load ptr, ptr %88, align 8, !tbaa !273
  %90 = tail call i64 @tree_low_cst(ptr noundef %89, i32 noundef 0) #23
  %91 = add nsw i64 %90, %57
  br label %149

92:                                               ; preds = %70
  %93 = getelementptr inbounds %struct.vn_reference_op_struct, ptr %68, i64 0, i32 2
  %94 = load ptr, ptr %93, align 8, !tbaa !271
  %95 = load i64, ptr %94, align 8
  %96 = and i64 %95, 65535
  %97 = icmp eq i64 %96, 23
  br i1 %97, label %149, label %98, !prof !324

98:                                               ; preds = %92
  %99 = getelementptr inbounds %struct.vn_reference_op_struct, ptr %68, i64 0, i32 3
  %100 = load ptr, ptr %99, align 8, !tbaa !273
  %101 = icmp eq ptr %100, null
  br i1 %101, label %102, label %149, !prof !325

102:                                              ; preds = %98
  %103 = getelementptr inbounds %struct.tree_field_decl, ptr %94, i64 0, i32 1
  %104 = load ptr, ptr %103, align 8, !tbaa !199
  %105 = tail call i32 @host_integerp(ptr noundef %104, i32 noundef 1) #23
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %149, label %107, !prof !324

107:                                              ; preds = %102
  %108 = load ptr, ptr %103, align 8, !tbaa !199
  %109 = getelementptr inbounds %struct.tree_int_cst, ptr %108, i64 0, i32 1
  %110 = load i64, ptr %109, align 8, !tbaa !199
  %111 = shl i64 %110, 3
  %112 = add i64 %111, %57
  %113 = getelementptr inbounds %struct.tree_field_decl, ptr %94, i64 0, i32 4
  %114 = load ptr, ptr %113, align 8, !tbaa !199
  %115 = getelementptr inbounds %struct.tree_int_cst, ptr %114, i64 0, i32 1
  %116 = load i64, ptr %115, align 8, !tbaa !199
  %117 = add i64 %112, %116
  br label %149

118:                                              ; preds = %70, %70
  %119 = getelementptr inbounds %struct.vn_reference_op_struct, ptr %68, i64 0, i32 2
  %120 = load ptr, ptr %119, align 8, !tbaa !271
  %121 = tail call i32 @host_integerp(ptr noundef %120, i32 noundef 0) #23
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %149, label %123, !prof !326

123:                                              ; preds = %118
  %124 = getelementptr inbounds %struct.vn_reference_op_struct, ptr %68, i64 0, i32 3
  %125 = load ptr, ptr %124, align 8, !tbaa !273
  %126 = tail call i32 @host_integerp(ptr noundef %125, i32 noundef 0) #23
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %149, label %128, !prof !327

128:                                              ; preds = %123
  %129 = getelementptr inbounds %struct.vn_reference_op_struct, ptr %68, i64 0, i32 4
  %130 = load ptr, ptr %129, align 8, !tbaa !275
  %131 = tail call i32 @host_integerp(ptr noundef %130, i32 noundef 0) #23
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %149, label %133, !prof !327

133:                                              ; preds = %128
  %134 = load ptr, ptr %119, align 8, !tbaa !271
  %135 = getelementptr inbounds %struct.tree_int_cst, ptr %134, i64 0, i32 1
  %136 = load i64, ptr %135, align 8, !tbaa !199
  %137 = load ptr, ptr %124, align 8, !tbaa !273
  %138 = getelementptr inbounds %struct.tree_int_cst, ptr %137, i64 0, i32 1
  %139 = load i64, ptr %138, align 8, !tbaa !199
  %140 = sub i64 %136, %139
  %141 = load ptr, ptr %129, align 8, !tbaa !275
  %142 = getelementptr inbounds %struct.tree_int_cst, ptr %141, i64 0, i32 1
  %143 = load i64, ptr %142, align 8, !tbaa !199
  %144 = shl i64 %140, 3
  %145 = mul i64 %144, %143
  %146 = add nsw i64 %145, %57
  br label %149

147:                                              ; preds = %70
  %148 = add nsw i64 %57, %54
  br label %149

149:                                              ; preds = %118, %70, %123, %128, %92, %107, %102, %98, %72, %77, %84, %87, %70, %147, %133
  %150 = phi i64 [ %148, %147 ], [ %57, %70 ], [ %146, %133 ], [ %91, %87 ], [ %57, %84 ], [ %57, %77 ], [ %57, %72 ], [ %57, %92 ], [ %117, %107 ], [ %57, %102 ], [ %57, %98 ], [ %57, %128 ], [ %57, %123 ], [ %57, %70 ], [ %57, %118 ]
  %151 = phi i64 [ %58, %147 ], [ %58, %70 ], [ %58, %133 ], [ %58, %87 ], [ %58, %84 ], [ %58, %77 ], [ %58, %72 ], [ %58, %92 ], [ %58, %107 ], [ -1, %102 ], [ -1, %98 ], [ -1, %128 ], [ -1, %123 ], [ %58, %70 ], [ -1, %118 ]
  %152 = phi ptr [ %59, %147 ], [ %59, %70 ], [ %59, %133 ], [ %59, %87 ], [ %59, %84 ], [ %83, %77 ], [ %76, %72 ], [ %59, %92 ], [ %59, %107 ], [ %59, %102 ], [ %59, %98 ], [ %59, %128 ], [ %59, %123 ], [ %59, %70 ], [ %59, %118 ]
  %153 = add i32 %60, 1
  br label %56, !llvm.loop !328

154:                                              ; preds = %67
  %155 = load ptr, ptr %5, align 8, !tbaa !188
  %156 = icmp eq ptr %155, null
  br i1 %156, label %164, label %157, !prof !329

157:                                              ; preds = %154
  store ptr null, ptr %0, align 8, !tbaa !330
  %158 = getelementptr inbounds %struct.ao_ref_s, ptr %0, i64 0, i32 1
  store ptr %155, ptr %158, align 8, !tbaa !332
  %159 = getelementptr inbounds %struct.ao_ref_s, ptr %0, i64 0, i32 2
  store i64 %57, ptr %159, align 8, !tbaa !333
  %160 = getelementptr inbounds %struct.ao_ref_s, ptr %0, i64 0, i32 3
  store i64 %54, ptr %160, align 8, !tbaa !334
  %161 = getelementptr inbounds %struct.ao_ref_s, ptr %0, i64 0, i32 4
  store i64 %58, ptr %161, align 8, !tbaa !335
  %162 = getelementptr inbounds %struct.ao_ref_s, ptr %0, i64 0, i32 5
  store i32 %1, ptr %162, align 8, !tbaa !336
  %163 = getelementptr inbounds %struct.ao_ref_s, ptr %0, i64 0, i32 6
  store i32 -1, ptr %163, align 4, !tbaa !337
  br label %164

164:                                              ; preds = %70, %154, %157
  %165 = phi i8 [ 1, %157 ], [ 0, %154 ], [ 0, %70 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5)
  ret i8 %165
}

declare i32 @vector_type_mode(ptr noundef) local_unnamed_addr #3

declare ptr @build1_stat(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @build2_stat(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i64 @tree_low_cst(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @copy_reference_ops_from_call(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) local_unnamed_addr #13 !prof !187 {
  %3 = load i32, ptr %0, align 8
  %4 = and i32 %3, 255
  %5 = add nsw i32 %4, -1
  %6 = icmp ult i32 %5, 9
  tail call void @llvm.assume(i1 %6)
  %7 = zext nneg i32 %4 to i64
  %8 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !203
  %10 = zext i32 %9 to i64
  %11 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %10
  %12 = load i64, ptr %11, align 8, !tbaa !235
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 1622, ptr noundef nonnull @.str.1) #23
  br label %15

15:                                               ; preds = %2, %14
  %16 = getelementptr inbounds i8, ptr %0, i64 %12
  %17 = getelementptr inbounds ptr, ptr %16, i64 1
  %18 = load ptr, ptr %17, align 8, !tbaa !188
  %19 = getelementptr inbounds %struct.tree_common, ptr %18, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !199
  %21 = getelementptr inbounds %struct.tree_common, ptr %20, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !199
  %23 = getelementptr inbounds %struct.tree_common, ptr %22, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !199
  %25 = load i32, ptr %0, align 8
  %26 = and i32 %25, 255
  %27 = add nsw i32 %26, -10
  %28 = icmp ult i32 %27, -9
  br i1 %28, label %42, label %29

29:                                               ; preds = %15
  %30 = zext nneg i32 %26 to i64
  %31 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %30
  %32 = load i32, ptr %31, align 4, !tbaa !203
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %33
  %35 = load i64, ptr %34, align 8, !tbaa !235
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %29
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 1622, ptr noundef nonnull @.str.1) #23
  br label %38

38:                                               ; preds = %37, %29
  %39 = getelementptr inbounds i8, ptr %0, i64 %35
  %40 = getelementptr inbounds ptr, ptr %39, i64 1
  %41 = load ptr, ptr %40, align 8, !tbaa !188
  br label %42

42:                                               ; preds = %15, %38
  %43 = phi ptr [ %41, %38 ], [ null, %15 ]
  %44 = load i32, ptr %0, align 8
  %45 = and i32 %44, 255
  %46 = add nsw i32 %45, -10
  %47 = icmp ult i32 %46, -9
  br i1 %47, label %61, label %48

48:                                               ; preds = %42
  %49 = zext nneg i32 %45 to i64
  %50 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %49
  %51 = load i32, ptr %50, align 4, !tbaa !203
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %52
  %54 = load i64, ptr %53, align 8, !tbaa !235
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %48
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 1622, ptr noundef nonnull @.str.1) #23
  br label %57

57:                                               ; preds = %56, %48
  %58 = getelementptr inbounds i8, ptr %0, i64 %54
  %59 = getelementptr inbounds ptr, ptr %58, i64 2
  %60 = load ptr, ptr %59, align 8, !tbaa !188
  br label %61

61:                                               ; preds = %42, %57
  %62 = phi ptr [ %60, %57 ], [ null, %42 ]
  %63 = load ptr, ptr %1, align 8, !tbaa !188
  %64 = icmp eq ptr %63, null
  br i1 %64, label %70, label %65

65:                                               ; preds = %61
  %66 = getelementptr inbounds %struct.VEC_vn_reference_op_s_base, ptr %63, i64 0, i32 1
  %67 = load i32, ptr %66, align 4, !tbaa !299
  %68 = load i32, ptr %63, align 8, !tbaa !266
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %70, label %72

70:                                               ; preds = %61, %65
  %71 = tail call ptr @vec_heap_o_reserve(ptr noundef %63, i32 noundef 1, i64 noundef 8, i64 noundef 40) #23
  store ptr %71, ptr %1, align 8, !tbaa !188
  br label %72

72:                                               ; preds = %65, %70
  %73 = load ptr, ptr %1, align 8, !tbaa !188
  %74 = load i32, ptr %73, align 8, !tbaa !266
  %75 = add i32 %74, 1
  store i32 %75, ptr %73, align 8, !tbaa !266
  %76 = zext i32 %74 to i64
  %77 = getelementptr inbounds %struct.VEC_vn_reference_op_s_base, ptr %73, i64 0, i32 2, i64 %76
  store i32 59, ptr %77, align 8, !tbaa.struct !300
  %78 = getelementptr inbounds i8, ptr %77, i64 4
  store i32 0, ptr %78, align 4, !tbaa.struct !301
  %79 = getelementptr inbounds i8, ptr %77, i64 8
  store ptr %24, ptr %79, align 8, !tbaa.struct !302
  %80 = getelementptr inbounds i8, ptr %77, i64 16
  store ptr %43, ptr %80, align 8, !tbaa.struct !303
  %81 = getelementptr inbounds i8, ptr %77, i64 24
  store ptr %62, ptr %81, align 8, !tbaa.struct !304
  %82 = getelementptr inbounds i8, ptr %77, i64 32
  store ptr null, ptr %82, align 8, !tbaa.struct !305
  %83 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 3
  %84 = load i32, ptr %83, align 4, !tbaa !199
  %85 = icmp eq i32 %84, 3
  br i1 %85, label %114, label %86

86:                                               ; preds = %72, %107
  %87 = phi i64 [ %109, %107 ], [ 0, %72 ]
  %88 = add nuw i64 %87, 3
  %89 = load i32, ptr %0, align 8
  %90 = and i32 %89, 255
  %91 = add nsw i32 %90, -10
  %92 = icmp ult i32 %91, -9
  br i1 %92, label %107, label %93

93:                                               ; preds = %86
  %94 = zext nneg i32 %90 to i64
  %95 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %94
  %96 = load i32, ptr %95, align 4, !tbaa !203
  %97 = zext i32 %96 to i64
  %98 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %97
  %99 = load i64, ptr %98, align 8, !tbaa !235
  %100 = icmp eq i64 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %93
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 1622, ptr noundef nonnull @.str.1) #23
  br label %102

102:                                              ; preds = %101, %93
  %103 = getelementptr inbounds i8, ptr %0, i64 %99
  %104 = and i64 %88, 4294967295
  %105 = getelementptr inbounds ptr, ptr %103, i64 %104
  %106 = load ptr, ptr %105, align 8, !tbaa !188
  br label %107

107:                                              ; preds = %86, %102
  %108 = phi ptr [ %106, %102 ], [ null, %86 ]
  tail call void @copy_reference_ops_from_ref(ptr noundef %108, ptr noundef nonnull %1)
  %109 = add nuw nsw i64 %87, 1
  %110 = load i32, ptr %83, align 4, !tbaa !199
  %111 = add i32 %110, -3
  %112 = zext i32 %111 to i64
  %113 = icmp ult i64 %109, %112
  br i1 %113, label %86, label %114, !llvm.loop !338

114:                                              ; preds = %107, %72
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @vn_reference_fold_indirect(ptr nocapture noundef %0, ptr nocapture noundef %1) local_unnamed_addr #13 !prof !187 {
  %3 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #23
  store ptr null, ptr %3, align 8, !tbaa !188
  %4 = load i32, ptr %1, align 4, !tbaa !203
  %5 = load ptr, ptr %0, align 8, !tbaa !188
  %6 = zext i32 %4 to i64
  %7 = getelementptr inbounds %struct.VEC_vn_reference_op_s_base, ptr %5, i64 0, i32 2, i64 %6, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !271
  %9 = getelementptr inbounds %struct.tree_exp, ptr %8, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !199
  %11 = getelementptr inbounds %struct.tree_common, ptr %10, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !199
  %13 = load i64, ptr %12, align 8
  %14 = and i64 %13, 65535
  %15 = icmp eq i64 %14, 15
  br i1 %15, label %16, label %49

16:                                               ; preds = %2
  %17 = getelementptr inbounds %struct.tree_common, ptr %8, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !199
  %19 = getelementptr inbounds %struct.tree_common, ptr %18, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !199
  %21 = load i64, ptr %20, align 8
  %22 = and i64 %21, 65535
  %23 = icmp eq i64 %22, 15
  br i1 %23, label %49, label %24

24:                                               ; preds = %16
  %25 = getelementptr inbounds %struct.tree_type, ptr %20, i64 0, i32 16
  %26 = load ptr, ptr %25, align 8, !tbaa !199
  %27 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), align 8, !tbaa !188
  %28 = getelementptr inbounds %struct.tree_type, ptr %12, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !199
  %30 = icmp eq ptr %29, null
  br i1 %30, label %36, label %31

31:                                               ; preds = %24
  %32 = getelementptr inbounds %struct.tree_type, ptr %29, i64 0, i32 13
  %33 = load ptr, ptr %32, align 8, !tbaa !199
  %34 = icmp eq ptr %33, null
  %35 = select i1 %34, ptr %27, ptr %33
  br label %36

36:                                               ; preds = %31, %24
  %37 = phi ptr [ %27, %24 ], [ %35, %31 ]
  %38 = getelementptr inbounds %struct.tree_type, ptr %20, i64 0, i32 3
  %39 = load ptr, ptr %38, align 8, !tbaa !199
  %40 = tail call ptr @vec_heap_o_reserve(ptr noundef null, i32 noundef 1, i64 noundef 8, i64 noundef 40) #23
  store ptr %40, ptr %3, align 8, !tbaa !188
  %41 = load i32, ptr %40, align 8, !tbaa !266
  %42 = add i32 %41, 1
  store i32 %42, ptr %40, align 8, !tbaa !266
  %43 = zext i32 %41 to i64
  %44 = getelementptr inbounds %struct.VEC_vn_reference_op_s_base, ptr %40, i64 0, i32 2, i64 %43
  store i32 45, ptr %44, align 8, !tbaa.struct !300
  %45 = getelementptr inbounds i8, ptr %44, i64 8
  store ptr %26, ptr %45, align 8, !tbaa.struct !302
  %46 = getelementptr inbounds i8, ptr %44, i64 16
  store ptr %37, ptr %46, align 8, !tbaa.struct !303
  %47 = getelementptr inbounds i8, ptr %44, i64 24
  store ptr %37, ptr %47, align 8, !tbaa.struct !304
  %48 = getelementptr inbounds i8, ptr %44, i64 32
  store ptr %39, ptr %48, align 8, !tbaa.struct !305
  br label %49

49:                                               ; preds = %36, %16, %2
  %50 = load ptr, ptr %7, align 8, !tbaa !271
  %51 = getelementptr inbounds %struct.tree_exp, ptr %50, i64 0, i32 3
  %52 = load ptr, ptr %51, align 8, !tbaa !199
  call void @copy_reference_ops_from_ref(ptr noundef %52, ptr noundef nonnull %3)
  %53 = load ptr, ptr %3, align 8
  %54 = icmp eq ptr %53, null
  br i1 %54, label %135, label %55

55:                                               ; preds = %49
  %56 = load i32, ptr %53, align 8, !tbaa !266
  %57 = icmp eq i32 %56, 1
  br i1 %57, label %58, label %72

58:                                               ; preds = %55
  %59 = load ptr, ptr %0, align 8, !tbaa !188
  %60 = add i32 %4, -1
  %61 = getelementptr inbounds %struct.VEC_vn_reference_op_s_base, ptr %53, i64 0, i32 2, i64 0
  %62 = zext i32 %60 to i64
  %63 = getelementptr inbounds %struct.VEC_vn_reference_op_s_base, ptr %59, i64 0, i32 2, i64 %62
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %63, ptr noundef nonnull align 8 dereferenceable(40) %61, i64 40, i1 false), !tbaa.struct !300
  %64 = load ptr, ptr %0, align 8, !tbaa !188
  %65 = load i32, ptr %64, align 8, !tbaa !266
  %66 = getelementptr inbounds %struct.VEC_vn_reference_op_s_base, ptr %64, i64 0, i32 2, i64 %6
  %67 = getelementptr inbounds %struct.vn_reference_op_struct, ptr %66, i64 1
  %68 = add i32 %65, -1
  store i32 %68, ptr %64, align 8, !tbaa !266
  %69 = sub i32 %68, %4
  %70 = zext i32 %69 to i64
  %71 = mul nuw nsw i64 %70, 40
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %66, ptr nonnull align 8 %67, i64 %71, i1 false)
  br label %136

72:                                               ; preds = %55
  br i1 %54, label %135, label %73

73:                                               ; preds = %72
  %74 = load i32, ptr %53, align 8, !tbaa !266
  %75 = icmp eq i32 %74, 2
  br i1 %75, label %76, label %85

76:                                               ; preds = %73
  %77 = load ptr, ptr %0, align 8, !tbaa !188
  %78 = add i32 %4, -1
  %79 = getelementptr inbounds %struct.VEC_vn_reference_op_s_base, ptr %53, i64 0, i32 2, i64 0
  %80 = zext i32 %78 to i64
  %81 = getelementptr inbounds %struct.VEC_vn_reference_op_s_base, ptr %77, i64 0, i32 2, i64 %80
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %81, ptr noundef nonnull align 8 dereferenceable(40) %79, i64 40, i1 false), !tbaa.struct !300
  %82 = load ptr, ptr %0, align 8, !tbaa !188
  %83 = getelementptr inbounds %struct.VEC_vn_reference_op_s_base, ptr %53, i64 0, i32 2, i64 1
  %84 = getelementptr inbounds %struct.VEC_vn_reference_op_s_base, ptr %82, i64 0, i32 2, i64 %6
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %84, ptr noundef nonnull align 8 dereferenceable(40) %83, i64 40, i1 false), !tbaa.struct !300
  br label %136

85:                                               ; preds = %73
  br i1 %54, label %135, label %86

86:                                               ; preds = %85
  %87 = load i32, ptr %53, align 8, !tbaa !266
  %88 = icmp ugt i32 %87, 2
  br i1 %88, label %89, label %135

89:                                               ; preds = %86
  %90 = load ptr, ptr %0, align 8, !tbaa !188
  %91 = add i32 %4, -1
  %92 = getelementptr inbounds %struct.VEC_vn_reference_op_s_base, ptr %53, i64 0, i32 2, i64 0
  %93 = zext i32 %91 to i64
  %94 = getelementptr inbounds %struct.VEC_vn_reference_op_s_base, ptr %90, i64 0, i32 2, i64 %93
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %94, ptr noundef nonnull align 8 dereferenceable(40) %92, i64 40, i1 false), !tbaa.struct !300
  %95 = load ptr, ptr %0, align 8, !tbaa !188
  %96 = getelementptr inbounds %struct.VEC_vn_reference_op_s_base, ptr %53, i64 0, i32 2, i64 1
  %97 = getelementptr inbounds %struct.VEC_vn_reference_op_s_base, ptr %95, i64 0, i32 2, i64 %6
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %97, ptr noundef nonnull align 8 dereferenceable(40) %96, i64 40, i1 false), !tbaa.struct !300
  br label %98

98:                                               ; preds = %133, %89
  %99 = phi i32 [ 2, %89 ], [ %134, %133 ]
  %100 = phi i32 [ %4, %89 ], [ %111, %133 ]
  br i1 %54, label %107, label %101

101:                                              ; preds = %98
  %102 = load i32, ptr %53, align 8, !tbaa !266
  %103 = icmp ugt i32 %102, %99
  br i1 %103, label %104, label %107

104:                                              ; preds = %101
  %105 = zext i32 %99 to i64
  %106 = getelementptr inbounds %struct.VEC_vn_reference_op_s_base, ptr %53, i64 0, i32 2, i64 %105
  br label %107

107:                                              ; preds = %98, %101, %104
  %108 = phi ptr [ %106, %104 ], [ null, %101 ], [ null, %98 ]
  %109 = phi i1 [ false, %104 ], [ true, %101 ], [ true, %98 ]
  br i1 %109, label %136, label %110

110:                                              ; preds = %107
  %111 = add i32 %100, 1
  %112 = load ptr, ptr %0, align 8, !tbaa !188
  %113 = icmp eq ptr %112, null
  br i1 %113, label %119, label %114

114:                                              ; preds = %110
  %115 = getelementptr inbounds %struct.VEC_vn_reference_op_s_base, ptr %112, i64 0, i32 1
  %116 = load i32, ptr %115, align 4, !tbaa !299
  %117 = load i32, ptr %112, align 8, !tbaa !266
  %118 = icmp eq i32 %116, %117
  br i1 %118, label %119, label %121

119:                                              ; preds = %110, %114
  %120 = tail call ptr @vec_heap_o_reserve(ptr noundef %112, i32 noundef 1, i64 noundef 8, i64 noundef 40) #23
  store ptr %120, ptr %0, align 8, !tbaa !188
  br label %121

121:                                              ; preds = %119, %114
  %122 = load ptr, ptr %0, align 8, !tbaa !188
  %123 = load i32, ptr %122, align 8, !tbaa !266
  %124 = zext i32 %111 to i64
  %125 = getelementptr inbounds %struct.VEC_vn_reference_op_s_base, ptr %122, i64 0, i32 2, i64 %124
  %126 = getelementptr inbounds %struct.vn_reference_op_struct, ptr %125, i64 1
  %127 = add i32 %123, 1
  store i32 %127, ptr %122, align 8, !tbaa !266
  %128 = sub i32 %123, %111
  %129 = zext i32 %128 to i64
  %130 = mul nuw nsw i64 %129, 40
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %126, ptr nonnull align 8 %125, i64 %130, i1 false)
  %131 = icmp eq ptr %108, null
  br i1 %131, label %133, label %132

132:                                              ; preds = %121
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %125, ptr noundef nonnull align 8 dereferenceable(40) %108, i64 40, i1 false), !tbaa.struct !300
  br label %133

133:                                              ; preds = %121, %132
  %134 = add i32 %99, 1
  br label %98, !llvm.loop !339

135:                                              ; preds = %85, %49, %72, %86
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 886, ptr noundef nonnull @.str.1) #23
  br label %136

136:                                              ; preds = %107, %76, %135, %58
  %137 = phi i32 [ %60, %58 ], [ %4, %76 ], [ %4, %135 ], [ %100, %107 ]
  br i1 %54, label %139, label %138

138:                                              ; preds = %136
  tail call void @free(ptr noundef %53)
  br label %139

139:                                              ; preds = %136, %138
  store ptr null, ptr %3, align 8, !tbaa !188
  store i32 %137, ptr %1, align 4, !tbaa !203
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #23
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @vn_reference_lookup_pieces(ptr noundef readonly %0, i32 noundef %1, ptr noundef %2, ptr noundef readonly %3, ptr noundef %4, i8 noundef zeroext %5) local_unnamed_addr #11 !prof !340 {
  %7 = alloca %struct.vn_reference_s, align 8
  %8 = alloca %struct.ao_ref_s, align 8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %7) #23
  %9 = icmp eq ptr %4, null
  br i1 %9, label %11, label %10, !prof !341

10:                                               ; preds = %6
  store ptr null, ptr %4, align 8, !tbaa !188
  br label %11

11:                                               ; preds = %6, %10
  %12 = icmp eq ptr %0, null
  br i1 %12, label %24, label %13, !prof !341

13:                                               ; preds = %11
  %14 = load ptr, ptr @vn_ssa_aux_table, align 8
  %15 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 3
  %16 = load i32, ptr %15, align 8, !tbaa !199
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds %struct.VEC_vn_ssa_aux_t_base, ptr %14, i64 0, i32 2, i64 %17
  %19 = load ptr, ptr %18, align 8, !tbaa !188
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %22, !prof !341

21:                                               ; preds = %13
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 180, ptr noundef nonnull @.str.1) #23
  br label %22

22:                                               ; preds = %13, %21
  %23 = load ptr, ptr %19, align 8, !tbaa !227
  br label %24

24:                                               ; preds = %11, %22
  %25 = phi ptr [ %23, %22 ], [ null, %11 ]
  %26 = getelementptr inbounds %struct.vn_reference_s, ptr %7, i64 0, i32 2
  store ptr %25, ptr %26, align 8, !tbaa !277
  %27 = load ptr, ptr @shared_lookup_references, align 8
  %28 = icmp eq ptr %27, null
  br i1 %28, label %30, label %29, !prof !341

29:                                               ; preds = %24
  store i32 0, ptr %27, align 8, !tbaa !266
  br label %30

30:                                               ; preds = %24, %29
  %31 = icmp eq ptr %3, null
  br i1 %31, label %34, label %32, !prof !341

32:                                               ; preds = %30
  %33 = load i32, ptr %3, align 8, !tbaa !266
  br label %34

34:                                               ; preds = %30, %32
  %35 = phi i32 [ %33, %32 ], [ 0, %30 ]
  br i1 %28, label %38, label %36, !prof !341

36:                                               ; preds = %34
  %37 = load i32, ptr %27, align 8, !tbaa !266
  br label %38

38:                                               ; preds = %36, %34
  %39 = phi i32 [ %37, %36 ], [ 0, %34 ]
  %40 = sub nsw i32 %35, %39
  br i1 %28, label %47, label %41, !prof !341

41:                                               ; preds = %38
  %42 = getelementptr inbounds %struct.VEC_vn_reference_op_s_base, ptr %27, i64 0, i32 1
  %43 = load i32, ptr %42, align 4, !tbaa !299
  %44 = load i32, ptr %27, align 8, !tbaa !266
  %45 = sub i32 %43, %44
  %46 = icmp uge i32 %45, %40
  br label %49

47:                                               ; preds = %38
  %48 = icmp eq i32 %39, %35
  br label %49

49:                                               ; preds = %47, %41
  %50 = phi i1 [ %46, %41 ], [ %48, %47 ]
  br i1 %50, label %53, label %51, !prof !342

51:                                               ; preds = %49
  %52 = tail call ptr @vec_heap_o_reserve_exact(ptr noundef %27, i32 noundef %40, i64 noundef 8, i64 noundef 40) #23
  store ptr %52, ptr @shared_lookup_references, align 8, !tbaa !188
  br label %53

53:                                               ; preds = %49, %51
  %54 = load ptr, ptr @shared_lookup_references, align 8, !tbaa !188, !nonnull !224, !noundef !224
  store i32 %35, ptr %54, align 8, !tbaa !266
  %55 = load ptr, ptr @shared_lookup_references, align 8
  %56 = icmp eq ptr %55, null
  %57 = getelementptr inbounds %struct.VEC_vn_reference_op_s_base, ptr %55, i64 0, i32 2
  %58 = select i1 %56, ptr null, ptr %57, !prof !341
  %59 = getelementptr inbounds %struct.VEC_vn_reference_op_s_base, ptr %3, i64 0, i32 2
  %60 = select i1 %31, ptr null, ptr %59, !prof !341
  br i1 %31, label %65, label %61, !prof !341

61:                                               ; preds = %53
  %62 = load i32, ptr %3, align 8, !tbaa !266
  %63 = zext i32 %62 to i64
  %64 = mul nuw nsw i64 %63, 40
  br label %65

65:                                               ; preds = %53, %61
  %66 = phi i64 [ %64, %61 ], [ 0, %53 ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %58, ptr align 8 %60, i64 %66, i1 false), !prof !343
  %67 = tail call fastcc ptr @valueize_refs(ptr noundef %55)
  store ptr %67, ptr @shared_lookup_references, align 8, !tbaa !188
  %68 = getelementptr inbounds %struct.vn_reference_s, ptr %7, i64 0, i32 5
  store ptr %67, ptr %68, align 8, !tbaa !263
  %69 = getelementptr inbounds %struct.vn_reference_s, ptr %7, i64 0, i32 4
  store ptr %2, ptr %69, align 8, !tbaa !344
  %70 = getelementptr inbounds %struct.vn_reference_s, ptr %7, i64 0, i32 3
  store i32 %1, ptr %70, align 8, !tbaa !345
  br label %71

71:                                               ; preds = %107, %65
  %72 = phi i64 [ %109, %107 ], [ 0, %65 ]
  %73 = phi i32 [ %108, %107 ], [ 0, %65 ]
  %74 = load ptr, ptr %68, align 8, !tbaa !263
  %75 = icmp eq ptr %74, null
  br i1 %75, label %82, label %76, !prof !265

76:                                               ; preds = %71
  %77 = load i32, ptr %74, align 8, !tbaa !266
  %78 = zext i32 %77 to i64
  %79 = icmp uge i64 %72, %78
  %80 = getelementptr inbounds %struct.VEC_vn_reference_op_s_base, ptr %74, i64 0, i32 2, i64 %72
  %81 = select i1 %79, ptr null, ptr %80, !prof !268
  br label %82

82:                                               ; preds = %76, %71
  %83 = phi ptr [ null, %71 ], [ %81, %76 ]
  %84 = phi i1 [ true, %71 ], [ %79, %76 ]
  br i1 %84, label %110, label %85, !prof !268

85:                                               ; preds = %82
  %86 = load i32, ptr %83, align 8, !tbaa !269
  %87 = tail call i32 @iterative_hash_hashval_t(i32 noundef %86, i32 noundef %73) #23
  %88 = getelementptr inbounds %struct.vn_reference_op_struct, ptr %83, i64 0, i32 2
  %89 = load ptr, ptr %88, align 8, !tbaa !271
  %90 = icmp eq ptr %89, null
  br i1 %90, label %93, label %91, !prof !272

91:                                               ; preds = %85
  %92 = tail call i32 @iterative_hash_expr(ptr noundef nonnull %89, i32 noundef %87) #23
  br label %93

93:                                               ; preds = %91, %85
  %94 = phi i32 [ %92, %91 ], [ %87, %85 ]
  %95 = getelementptr inbounds %struct.vn_reference_op_struct, ptr %83, i64 0, i32 3
  %96 = load ptr, ptr %95, align 8, !tbaa !273
  %97 = icmp eq ptr %96, null
  br i1 %97, label %100, label %98, !prof !274

98:                                               ; preds = %93
  %99 = tail call i32 @iterative_hash_expr(ptr noundef nonnull %96, i32 noundef %94) #23
  br label %100

100:                                              ; preds = %98, %93
  %101 = phi i32 [ %99, %98 ], [ %94, %93 ]
  %102 = getelementptr inbounds %struct.vn_reference_op_struct, ptr %83, i64 0, i32 4
  %103 = load ptr, ptr %102, align 8, !tbaa !275
  %104 = icmp eq ptr %103, null
  br i1 %104, label %107, label %105, !prof !274

105:                                              ; preds = %100
  %106 = tail call i32 @iterative_hash_expr(ptr noundef nonnull %103, i32 noundef %101) #23
  br label %107

107:                                              ; preds = %105, %100
  %108 = phi i32 [ %106, %105 ], [ %101, %100 ]
  %109 = add nuw i64 %72, 1
  br label %71, !llvm.loop !276

110:                                              ; preds = %82
  %111 = load ptr, ptr %26, align 8, !tbaa !277
  %112 = icmp eq ptr %111, null
  br i1 %112, label %117, label %113, !prof !278

113:                                              ; preds = %110
  %114 = getelementptr inbounds %struct.tree_ssa_name, ptr %111, i64 0, i32 3
  %115 = load i32, ptr %114, align 8, !tbaa !199
  %116 = add i32 %115, %73
  br label %117

117:                                              ; preds = %110, %113
  %118 = phi i32 [ %116, %113 ], [ %73, %110 ]
  %119 = getelementptr inbounds %struct.vn_reference_s, ptr %7, i64 0, i32 1
  store i32 %118, ptr %119, align 4, !tbaa !280
  %120 = load ptr, ptr @current_info, align 8, !tbaa !188
  %121 = getelementptr inbounds %struct.vn_tables_s, ptr %120, i64 0, i32 2
  %122 = load ptr, ptr %121, align 8, !tbaa !346
  %123 = call ptr @htab_find_slot_with_hash(ptr noundef %122, ptr noundef nonnull %7, i32 noundef %118, i32 noundef 0) #23
  %124 = icmp eq ptr %123, null
  br i1 %124, label %125, label %134, !prof !348

125:                                              ; preds = %117
  %126 = load ptr, ptr @current_info, align 8, !tbaa !188
  %127 = load ptr, ptr @optimistic_info, align 8, !tbaa !188
  %128 = icmp eq ptr %126, %127
  br i1 %128, label %129, label %134, !prof !349

129:                                              ; preds = %125
  %130 = load ptr, ptr @valid_info, align 8, !tbaa !188
  %131 = getelementptr inbounds %struct.vn_tables_s, ptr %130, i64 0, i32 2
  %132 = load ptr, ptr %131, align 8, !tbaa !346
  %133 = call ptr @htab_find_slot_with_hash(ptr noundef %132, ptr noundef nonnull %7, i32 noundef %118, i32 noundef 0) #23
  br label %134

134:                                              ; preds = %129, %125, %117
  %135 = phi ptr [ %123, %117 ], [ %133, %129 ], [ null, %125 ]
  %136 = icmp eq ptr %135, null
  br i1 %136, label %140, label %137, !prof !348

137:                                              ; preds = %134
  %138 = load ptr, ptr %135, align 8, !tbaa !188
  br i1 %9, label %140, label %139, !prof !341

139:                                              ; preds = %137
  store ptr %138, ptr %4, align 8, !tbaa !188
  br label %140

140:                                              ; preds = %139, %137, %134
  %141 = phi ptr [ null, %134 ], [ null, %139 ], [ %138, %137 ]
  br i1 %9, label %144, label %142, !prof !342

142:                                              ; preds = %140
  %143 = load ptr, ptr %4, align 8, !tbaa !188
  br label %144

144:                                              ; preds = %140, %142
  %145 = phi ptr [ %141, %140 ], [ %143, %142 ]
  %146 = icmp eq ptr %145, null
  %147 = icmp ne i8 %5, 0
  %148 = and i1 %147, %146
  %149 = load ptr, ptr %26, align 8
  %150 = icmp ne ptr %149, null
  %151 = select i1 %148, i1 %150, i1 false, !prof !350
  br i1 %151, label %152, label %169, !prof !350

152:                                              ; preds = %144
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %8) #23
  %153 = load ptr, ptr %68, align 8, !tbaa !263
  %154 = call zeroext i8 @ao_ref_init_from_vn_reference(ptr noundef nonnull %8, i32 noundef %1, ptr noundef %2, ptr noundef %153), !range !351
  %155 = icmp eq i8 %154, 0
  br i1 %155, label %160, label %156, !prof !352

156:                                              ; preds = %152
  %157 = load ptr, ptr %26, align 8, !tbaa !277
  %158 = call ptr @walk_non_aliased_vuses(ptr noundef nonnull %8, ptr noundef %157, ptr noundef nonnull @vn_reference_lookup_2, ptr noundef nonnull @vn_reference_lookup_3, ptr noundef nonnull %7) #23
  br i1 %9, label %160, label %159, !prof !341

159:                                              ; preds = %156
  store ptr %158, ptr %4, align 8, !tbaa !188
  br label %160

160:                                              ; preds = %159, %156, %152
  %161 = phi ptr [ %141, %152 ], [ %141, %159 ], [ %158, %156 ]
  %162 = load ptr, ptr %68, align 8, !tbaa !188
  %163 = icmp eq ptr %162, %67
  br i1 %163, label %168, label %164, !prof !353

164:                                              ; preds = %160
  %165 = icmp eq ptr %162, null
  br i1 %165, label %167, label %166

166:                                              ; preds = %164
  call void @free(ptr noundef %162)
  br label %167

167:                                              ; preds = %164, %166
  store ptr null, ptr %68, align 8, !tbaa !188
  br label %168

168:                                              ; preds = %167, %160
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %8) #23
  br label %169

169:                                              ; preds = %168, %144
  %170 = phi ptr [ %161, %168 ], [ %141, %144 ]
  br i1 %9, label %173, label %171, !prof !342

171:                                              ; preds = %169
  %172 = load ptr, ptr %4, align 8, !tbaa !188
  br label %173

173:                                              ; preds = %169, %171
  %174 = phi ptr [ %170, %169 ], [ %172, %171 ]
  %175 = icmp eq ptr %174, null
  br i1 %175, label %179, label %176, !prof !350

176:                                              ; preds = %173
  %177 = getelementptr inbounds %struct.vn_reference_s, ptr %174, i64 0, i32 6
  %178 = load ptr, ptr %177, align 8, !tbaa !354
  br label %179

179:                                              ; preds = %173, %176
  %180 = phi ptr [ %178, %176 ], [ null, %173 ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %7) #23
  ret ptr %180
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #14

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc ptr @valueize_refs(ptr noundef %0) unnamed_addr #9 !prof !355 !PGOFuncName !356 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  store ptr %0, ptr %2, align 8, !tbaa !188
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #23
  br label %4

4:                                                ; preds = %100, %1
  %5 = phi i32 [ 0, %1 ], [ %102, %100 ]
  store i32 %5, ptr %3, align 4, !tbaa !203
  %6 = load ptr, ptr %2, align 8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %14, label %8, !prof !265

8:                                                ; preds = %4
  %9 = load i32, ptr %6, align 8, !tbaa !266
  %10 = icmp ugt i32 %9, %5
  br i1 %10, label %11, label %14, !prof !357

11:                                               ; preds = %8
  %12 = zext i32 %5 to i64
  %13 = getelementptr inbounds %struct.VEC_vn_reference_op_s_base, ptr %6, i64 0, i32 2, i64 %12
  br label %14

14:                                               ; preds = %4, %8, %11
  %15 = phi ptr [ %13, %11 ], [ null, %8 ], [ null, %4 ]
  %16 = phi i1 [ false, %11 ], [ true, %8 ], [ true, %4 ]
  br i1 %16, label %103, label %17, !prof !268

17:                                               ; preds = %14
  %18 = load i32, ptr %15, align 8, !tbaa !269
  %19 = icmp eq i32 %18, 141
  br i1 %19, label %28, label %20, !prof !272

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.vn_reference_op_struct, ptr %15, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !271
  %23 = icmp eq ptr %22, null
  br i1 %23, label %62, label %24, !prof !358

24:                                               ; preds = %20
  %25 = load i64, ptr %22, align 8
  %26 = and i64 %25, 65535
  %27 = icmp eq i64 %26, 141
  br i1 %27, label %28, label %62, !prof !359

28:                                               ; preds = %24, %17
  %29 = getelementptr inbounds %struct.vn_reference_op_struct, ptr %15, i64 0, i32 2
  %30 = load ptr, ptr %29, align 8, !tbaa !271
  %31 = load ptr, ptr @vn_ssa_aux_table, align 8
  %32 = getelementptr inbounds %struct.tree_ssa_name, ptr %30, i64 0, i32 3
  %33 = load i32, ptr %32, align 8, !tbaa !199
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds %struct.VEC_vn_ssa_aux_t_base, ptr %31, i64 0, i32 2, i64 %34
  %36 = load ptr, ptr %35, align 8, !tbaa !188
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %39, !prof !360

38:                                               ; preds = %28
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 180, ptr noundef nonnull @.str.1) #23
  br label %39

39:                                               ; preds = %28, %38
  %40 = load ptr, ptr %36, align 8, !tbaa !227
  store ptr %40, ptr %29, align 8, !tbaa !271
  %41 = load i64, ptr %40, align 8
  %42 = trunc i64 %41 to i32
  %43 = and i32 %42, 65535
  %44 = icmp eq i32 %43, 141
  br i1 %44, label %49, label %45, !prof !361

45:                                               ; preds = %39
  %46 = load i32, ptr %15, align 8, !tbaa !269
  %47 = icmp eq i32 %46, 141
  br i1 %47, label %48, label %49

48:                                               ; preds = %45
  store i32 %43, ptr %15, align 8, !tbaa !269
  br label %49

49:                                               ; preds = %48, %45, %39
  %50 = icmp eq i32 %5, 0
  br i1 %50, label %62, label %51, !prof !362

51:                                               ; preds = %49
  %52 = load i64, ptr %40, align 8
  %53 = and i64 %52, 65535
  %54 = icmp eq i64 %53, 121
  br i1 %54, label %55, label %62, !prof !363

55:                                               ; preds = %51
  %56 = add i32 %5, -1
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds %struct.VEC_vn_reference_op_s_base, ptr %6, i64 0, i32 2, i64 %57
  %59 = load i32, ptr %58, align 8, !tbaa !269
  %60 = icmp eq i32 %59, 47
  br i1 %60, label %61, label %62

61:                                               ; preds = %55
  call void @vn_reference_fold_indirect(ptr noundef nonnull %2, ptr noundef nonnull %3)
  br label %100

62:                                               ; preds = %24, %49, %51, %55, %20
  %63 = getelementptr inbounds %struct.vn_reference_op_struct, ptr %15, i64 0, i32 3
  %64 = load ptr, ptr %63, align 8, !tbaa !273
  %65 = icmp eq ptr %64, null
  br i1 %65, label %81, label %66, !prof !274

66:                                               ; preds = %62
  %67 = load i64, ptr %64, align 8
  %68 = and i64 %67, 65535
  %69 = icmp eq i64 %68, 141
  br i1 %69, label %70, label %81, !prof !364

70:                                               ; preds = %66
  %71 = load ptr, ptr @vn_ssa_aux_table, align 8
  %72 = getelementptr inbounds %struct.tree_ssa_name, ptr %64, i64 0, i32 3
  %73 = load i32, ptr %72, align 8, !tbaa !199
  %74 = zext i32 %73 to i64
  %75 = getelementptr inbounds %struct.VEC_vn_ssa_aux_t_base, ptr %71, i64 0, i32 2, i64 %74
  %76 = load ptr, ptr %75, align 8, !tbaa !188
  %77 = icmp eq ptr %76, null
  br i1 %77, label %78, label %79

78:                                               ; preds = %70
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 180, ptr noundef nonnull @.str.1) #23
  br label %79

79:                                               ; preds = %70, %78
  %80 = load ptr, ptr %76, align 8, !tbaa !227
  store ptr %80, ptr %63, align 8, !tbaa !273
  br label %81

81:                                               ; preds = %79, %66, %62
  %82 = getelementptr inbounds %struct.vn_reference_op_struct, ptr %15, i64 0, i32 4
  %83 = load ptr, ptr %82, align 8, !tbaa !275
  %84 = icmp eq ptr %83, null
  br i1 %84, label %100, label %85, !prof !274

85:                                               ; preds = %81
  %86 = load i64, ptr %83, align 8
  %87 = and i64 %86, 65535
  %88 = icmp eq i64 %87, 141
  br i1 %88, label %89, label %100, !prof !364

89:                                               ; preds = %85
  %90 = load ptr, ptr @vn_ssa_aux_table, align 8
  %91 = getelementptr inbounds %struct.tree_ssa_name, ptr %83, i64 0, i32 3
  %92 = load i32, ptr %91, align 8, !tbaa !199
  %93 = zext i32 %92 to i64
  %94 = getelementptr inbounds %struct.VEC_vn_ssa_aux_t_base, ptr %90, i64 0, i32 2, i64 %93
  %95 = load ptr, ptr %94, align 8, !tbaa !188
  %96 = icmp eq ptr %95, null
  br i1 %96, label %97, label %98

97:                                               ; preds = %89
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 180, ptr noundef nonnull @.str.1) #23
  br label %98

98:                                               ; preds = %89, %97
  %99 = load ptr, ptr %95, align 8, !tbaa !227
  store ptr %99, ptr %82, align 8, !tbaa !275
  br label %100

100:                                              ; preds = %81, %85, %98, %61
  %101 = load i32, ptr %3, align 4, !tbaa !203
  %102 = add i32 %101, 1
  br label %4, !llvm.loop !365

103:                                              ; preds = %14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #23
  ret ptr %6
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @vn_reference_lookup_1(ptr noundef %0, ptr noundef writeonly %1) unnamed_addr #11 !prof !187 !PGOFuncName !366 {
  %3 = getelementptr inbounds %struct.vn_reference_s, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 4, !tbaa !280
  %5 = load ptr, ptr @current_info, align 8, !tbaa !188
  %6 = getelementptr inbounds %struct.vn_tables_s, ptr %5, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !346
  %8 = tail call ptr @htab_find_slot_with_hash(ptr noundef %7, ptr noundef %0, i32 noundef %4, i32 noundef 0) #23
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %19, !prof !348

10:                                               ; preds = %2
  %11 = load ptr, ptr @current_info, align 8, !tbaa !188
  %12 = load ptr, ptr @optimistic_info, align 8, !tbaa !188
  %13 = icmp eq ptr %11, %12
  br i1 %13, label %14, label %19, !prof !349

14:                                               ; preds = %10
  %15 = load ptr, ptr @valid_info, align 8, !tbaa !188
  %16 = getelementptr inbounds %struct.vn_tables_s, ptr %15, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !346
  %18 = tail call ptr @htab_find_slot_with_hash(ptr noundef %17, ptr noundef %0, i32 noundef %4, i32 noundef 0) #23
  br label %19

19:                                               ; preds = %14, %10, %2
  %20 = phi ptr [ %8, %2 ], [ %18, %14 ], [ null, %10 ]
  %21 = icmp eq ptr %20, null
  br i1 %21, label %30, label %22, !prof !348

22:                                               ; preds = %19
  %23 = icmp eq ptr %1, null
  br i1 %23, label %26, label %24, !prof !367

24:                                               ; preds = %22
  %25 = load ptr, ptr %20, align 8, !tbaa !188
  store ptr %25, ptr %1, align 8, !tbaa !188
  br label %26

26:                                               ; preds = %24, %22
  %27 = load ptr, ptr %20, align 8, !tbaa !188
  %28 = getelementptr inbounds %struct.vn_reference_s, ptr %27, i64 0, i32 6
  %29 = load ptr, ptr %28, align 8, !tbaa !354
  br label %30

30:                                               ; preds = %19, %26
  %31 = phi ptr [ %29, %26 ], [ null, %19 ]
  ret ptr %31
}

declare ptr @walk_non_aliased_vuses(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define internal ptr @vn_reference_lookup_2(ptr nocapture readnone %0, ptr noundef %1, ptr noundef %2) #9 !prof !368 !PGOFuncName !369 {
  %4 = load ptr, ptr @last_vuse_ptr, align 8, !tbaa !188
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6, !prof !370

6:                                                ; preds = %3
  store ptr %1, ptr %4, align 8, !tbaa !188
  br label %7

7:                                                ; preds = %6, %3
  %8 = getelementptr inbounds %struct.vn_reference_s, ptr %2, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !277
  %10 = icmp eq ptr %9, null
  br i1 %10, label %17, label %11, !prof !371

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.vn_reference_s, ptr %2, i64 0, i32 1
  %13 = load i32, ptr %12, align 4, !tbaa !280
  %14 = getelementptr inbounds %struct.tree_ssa_name, ptr %9, i64 0, i32 3
  %15 = load i32, ptr %14, align 8, !tbaa !199
  %16 = sub i32 %13, %15
  store i32 %16, ptr %12, align 4, !tbaa !280
  br label %17

17:                                               ; preds = %11, %7
  %18 = load ptr, ptr @vn_ssa_aux_table, align 8
  %19 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 3
  %20 = load i32, ptr %19, align 8, !tbaa !199
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds %struct.VEC_vn_ssa_aux_t_base, ptr %18, i64 0, i32 2, i64 %21
  %23 = load ptr, ptr %22, align 8, !tbaa !188
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %26, !prof !371

25:                                               ; preds = %17
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 180, ptr noundef nonnull @.str.1) #23
  br label %26

26:                                               ; preds = %17, %25
  %27 = load ptr, ptr %23, align 8, !tbaa !227
  store ptr %27, ptr %8, align 8, !tbaa !277
  %28 = icmp eq ptr %27, null
  br i1 %28, label %35, label %29, !prof !371

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.vn_reference_s, ptr %2, i64 0, i32 1
  %31 = load i32, ptr %30, align 4, !tbaa !280
  %32 = getelementptr inbounds %struct.tree_ssa_name, ptr %27, i64 0, i32 3
  %33 = load i32, ptr %32, align 8, !tbaa !199
  %34 = add i32 %33, %31
  store i32 %34, ptr %30, align 4, !tbaa !280
  br label %35

35:                                               ; preds = %29, %26
  %36 = getelementptr inbounds %struct.vn_reference_s, ptr %2, i64 0, i32 1
  %37 = load i32, ptr %36, align 4, !tbaa !280
  %38 = load ptr, ptr @current_info, align 8, !tbaa !188
  %39 = getelementptr inbounds %struct.vn_tables_s, ptr %38, i64 0, i32 2
  %40 = load ptr, ptr %39, align 8, !tbaa !346
  %41 = tail call ptr @htab_find_slot_with_hash(ptr noundef %40, ptr noundef %2, i32 noundef %37, i32 noundef 0) #23
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %52, !prof !372

43:                                               ; preds = %35
  %44 = load ptr, ptr @current_info, align 8, !tbaa !188
  %45 = load ptr, ptr @optimistic_info, align 8, !tbaa !188
  %46 = icmp eq ptr %44, %45
  br i1 %46, label %47, label %52, !prof !373

47:                                               ; preds = %43
  %48 = load ptr, ptr @valid_info, align 8, !tbaa !188
  %49 = getelementptr inbounds %struct.vn_tables_s, ptr %48, i64 0, i32 2
  %50 = load ptr, ptr %49, align 8, !tbaa !346
  %51 = tail call ptr @htab_find_slot_with_hash(ptr noundef %50, ptr noundef %2, i32 noundef %37, i32 noundef 0) #23
  br label %52

52:                                               ; preds = %47, %43, %35
  %53 = phi ptr [ %41, %35 ], [ %51, %47 ], [ null, %43 ]
  %54 = icmp eq ptr %53, null
  br i1 %54, label %57, label %55, !prof !372

55:                                               ; preds = %52
  %56 = load ptr, ptr %53, align 8, !tbaa !188
  br label %57

57:                                               ; preds = %52, %55
  %58 = phi ptr [ %56, %55 ], [ null, %52 ]
  ret ptr %58
}

; Function Attrs: nounwind uwtable
define internal ptr @vn_reference_lookup_3(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2) #11 !prof !374 !PGOFuncName !375 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca ptr, align 8
  %14 = alloca ptr, align 8
  %15 = alloca %struct.ao_ref_s, align 8
  %16 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !199
  %18 = tail call ptr @ao_ref_base(ptr noundef %0) #23
  %19 = getelementptr inbounds %struct.ao_ref_s, ptr %0, i64 0, i32 2
  %20 = load i64, ptr %19, align 8, !tbaa !333
  %21 = getelementptr inbounds %struct.ao_ref_s, ptr %0, i64 0, i32 4
  %22 = load i64, ptr %21, align 8, !tbaa !335
  %23 = icmp eq i64 %22, -1
  br i1 %23, label %674, label %24, !prof !376

24:                                               ; preds = %3
  %25 = getelementptr inbounds %struct.vn_reference_s, ptr %2, i64 0, i32 4
  %26 = load ptr, ptr %25, align 8, !tbaa !344
  %27 = tail call zeroext i8 @is_gimple_reg_type(ptr noundef %26) #23
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %222, label %29, !prof !377

29:                                               ; preds = %24
  %30 = load i32, ptr %17, align 8
  %31 = and i32 %30, 255
  %32 = icmp eq i32 %31, 8
  br i1 %32, label %33, label %222, !prof !378

33:                                               ; preds = %29
  %34 = zext nneg i32 %31 to i64
  %35 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %34
  %36 = load i32, ptr %35, align 4, !tbaa !203
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %37
  %39 = load i64, ptr %38, align 8, !tbaa !235
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %42, !prof !377

41:                                               ; preds = %33
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 1622, ptr noundef nonnull @.str.1) #23
  br label %42

42:                                               ; preds = %41, %33
  %43 = getelementptr inbounds i8, ptr %17, i64 %39
  %44 = getelementptr inbounds ptr, ptr %43, i64 1
  %45 = load ptr, ptr %44, align 8, !tbaa !188
  %46 = load i64, ptr %45, align 8
  %47 = and i64 %46, 65535
  %48 = icmp eq i64 %47, 121
  br i1 %48, label %49, label %52, !prof !378

49:                                               ; preds = %42
  %50 = getelementptr inbounds %struct.tree_exp, ptr %45, i64 0, i32 3
  %51 = load ptr, ptr %50, align 8, !tbaa !199
  br label %52

52:                                               ; preds = %42, %49
  %53 = phi ptr [ %51, %49 ], [ null, %42 ]
  %54 = icmp eq ptr %53, null
  br i1 %54, label %222, label %55, !prof !377

55:                                               ; preds = %52
  %56 = getelementptr inbounds %struct.tree_function_decl, ptr %53, i64 0, i32 5
  %57 = load i32, ptr %56, align 8
  %58 = and i32 %57, 8191
  %59 = icmp eq i32 %58, 6477
  br i1 %59, label %60, label %222, !prof !377

60:                                               ; preds = %55
  %61 = load i32, ptr %17, align 8
  %62 = and i32 %61, 255
  %63 = add nsw i32 %62, -10
  %64 = icmp ult i32 %63, -9
  br i1 %64, label %78, label %65

65:                                               ; preds = %60
  %66 = zext nneg i32 %62 to i64
  %67 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %66
  %68 = load i32, ptr %67, align 4, !tbaa !203
  %69 = zext i32 %68 to i64
  %70 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %69
  %71 = load i64, ptr %70, align 8, !tbaa !235
  %72 = icmp eq i64 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %65
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 1622, ptr noundef nonnull @.str.1) #23
  br label %74

74:                                               ; preds = %73, %65
  %75 = getelementptr inbounds i8, ptr %17, i64 %71
  %76 = getelementptr inbounds ptr, ptr %75, i64 4
  %77 = load ptr, ptr %76, align 8, !tbaa !188
  br label %78

78:                                               ; preds = %60, %74
  %79 = phi ptr [ %77, %74 ], [ null, %60 ]
  %80 = tail call i32 @integer_zerop(ptr noundef %79) #23
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %222, label %82

82:                                               ; preds = %78
  %83 = load i32, ptr %17, align 8
  %84 = and i32 %83, 255
  %85 = add nsw i32 %84, -10
  %86 = icmp ult i32 %85, -9
  br i1 %86, label %100, label %87

87:                                               ; preds = %82
  %88 = zext nneg i32 %84 to i64
  %89 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %88
  %90 = load i32, ptr %89, align 4, !tbaa !203
  %91 = zext i32 %90 to i64
  %92 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %91
  %93 = load i64, ptr %92, align 8, !tbaa !235
  %94 = icmp eq i64 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %87
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 1622, ptr noundef nonnull @.str.1) #23
  br label %96

96:                                               ; preds = %95, %87
  %97 = getelementptr inbounds i8, ptr %17, i64 %93
  %98 = getelementptr inbounds ptr, ptr %97, i64 5
  %99 = load ptr, ptr %98, align 8, !tbaa !188
  br label %100

100:                                              ; preds = %82, %96
  %101 = phi ptr [ %99, %96 ], [ null, %82 ]
  %102 = tail call i32 @host_integerp(ptr noundef %101, i32 noundef 1) #23
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %222, label %104

104:                                              ; preds = %100
  %105 = load i32, ptr %17, align 8
  %106 = and i32 %105, 255
  %107 = add nsw i32 %106, -1
  %108 = icmp ult i32 %107, 9
  tail call void @llvm.assume(i1 %108)
  %109 = zext nneg i32 %106 to i64
  %110 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %109
  %111 = load i32, ptr %110, align 4, !tbaa !203
  %112 = zext i32 %111 to i64
  %113 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %112
  %114 = load i64, ptr %113, align 8, !tbaa !235
  %115 = icmp eq i64 %114, 0
  br i1 %115, label %116, label %117

116:                                              ; preds = %104
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 1622, ptr noundef nonnull @.str.1) #23
  br label %117

117:                                              ; preds = %116, %104
  %118 = getelementptr inbounds i8, ptr %17, i64 %114
  %119 = getelementptr inbounds ptr, ptr %118, i64 3
  %120 = load ptr, ptr %119, align 8, !tbaa !188
  %121 = load i64, ptr %120, align 8
  %122 = and i64 %121, 65535
  %123 = icmp eq i64 %122, 121
  br i1 %123, label %124, label %222

124:                                              ; preds = %117
  %125 = load i32, ptr %17, align 8
  %126 = and i32 %125, 255
  %127 = add nsw i32 %126, -1
  %128 = icmp ult i32 %127, 9
  tail call void @llvm.assume(i1 %128)
  %129 = zext nneg i32 %126 to i64
  %130 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %129
  %131 = load i32, ptr %130, align 4, !tbaa !203
  %132 = zext i32 %131 to i64
  %133 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %132
  %134 = load i64, ptr %133, align 8, !tbaa !235
  %135 = icmp eq i64 %134, 0
  br i1 %135, label %136, label %137

136:                                              ; preds = %124
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 1622, ptr noundef nonnull @.str.1) #23
  br label %137

137:                                              ; preds = %136, %124
  %138 = getelementptr inbounds i8, ptr %17, i64 %134
  %139 = getelementptr inbounds ptr, ptr %138, i64 3
  %140 = load ptr, ptr %139, align 8, !tbaa !188
  %141 = getelementptr inbounds %struct.tree_exp, ptr %140, i64 0, i32 3
  %142 = load ptr, ptr %141, align 8, !tbaa !199
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #23
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #23
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #23
  %143 = call ptr @get_ref_base_and_extent(ptr noundef %142, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %6) #23
  %144 = load i32, ptr %17, align 8
  %145 = and i32 %144, 255
  %146 = add nsw i32 %145, -1
  %147 = icmp ult i32 %146, 9
  call void @llvm.assume(i1 %147)
  %148 = zext nneg i32 %145 to i64
  %149 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %148
  %150 = load i32, ptr %149, align 4, !tbaa !203
  %151 = zext i32 %150 to i64
  %152 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %151
  %153 = load i64, ptr %152, align 8, !tbaa !235
  %154 = icmp eq i64 %153, 0
  br i1 %154, label %155, label %156

155:                                              ; preds = %137
  call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 1622, ptr noundef nonnull @.str.1) #23
  br label %156

156:                                              ; preds = %155, %137
  %157 = getelementptr inbounds i8, ptr %17, i64 %153
  %158 = getelementptr inbounds ptr, ptr %157, i64 5
  %159 = load ptr, ptr %158, align 8, !tbaa !188
  %160 = getelementptr inbounds %struct.tree_int_cst, ptr %159, i64 0, i32 1
  %161 = load i64, ptr %160, align 8, !tbaa !199
  %162 = shl i64 %161, 3
  store i64 %162, ptr %5, align 8, !tbaa !235
  %163 = and i64 %161, 2305843009213693951
  %164 = load i32, ptr %17, align 8
  %165 = and i32 %164, 255
  %166 = add nsw i32 %165, -1
  %167 = icmp ult i32 %166, 9
  call void @llvm.assume(i1 %167)
  %168 = zext nneg i32 %165 to i64
  %169 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %168
  %170 = load i32, ptr %169, align 4, !tbaa !203
  %171 = zext i32 %170 to i64
  %172 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %171
  %173 = load i64, ptr %172, align 8, !tbaa !235
  %174 = icmp eq i64 %173, 0
  br i1 %174, label %175, label %176

175:                                              ; preds = %156
  call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 1622, ptr noundef nonnull @.str.1) #23
  br label %176

176:                                              ; preds = %175, %156
  %177 = getelementptr inbounds i8, ptr %17, i64 %173
  %178 = getelementptr inbounds ptr, ptr %177, i64 5
  %179 = load ptr, ptr %178, align 8, !tbaa !188
  %180 = getelementptr inbounds %struct.tree_int_cst, ptr %179, i64 0, i32 1
  %181 = load i64, ptr %180, align 8, !tbaa !199
  %182 = icmp eq i64 %163, %181
  br i1 %182, label %183, label %219

183:                                              ; preds = %176
  %184 = call i32 @operand_equal_p(ptr noundef %18, ptr noundef %143, i32 noundef 0) #23
  %185 = icmp eq i32 %184, 0
  br i1 %185, label %219, label %186

186:                                              ; preds = %183
  %187 = load i64, ptr %4, align 8, !tbaa !235
  %188 = icmp sgt i64 %187, %20
  br i1 %188, label %219, label %189

189:                                              ; preds = %186
  %190 = load i64, ptr %5, align 8, !tbaa !235
  %191 = add nsw i64 %190, %187
  %192 = add nsw i64 %22, %20
  %193 = icmp slt i64 %191, %192
  br i1 %193, label %219, label %194

194:                                              ; preds = %189
  %195 = load ptr, ptr %25, align 8, !tbaa !344
  %196 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), align 8, !tbaa !188
  %197 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %195, ptr noundef %196) #23
  %198 = call i32 @get_or_alloc_constant_value_id(ptr noundef %197)
  %199 = getelementptr inbounds %struct.vn_reference_s, ptr %2, i64 0, i32 3
  %200 = load i32, ptr %199, align 8, !tbaa !345
  %201 = load ptr, ptr %25, align 8, !tbaa !344
  %202 = getelementptr inbounds %struct.vn_reference_s, ptr %2, i64 0, i32 5
  %203 = load ptr, ptr %202, align 8, !tbaa !263
  %204 = icmp eq ptr %203, null
  br i1 %204, label %207, label %205

205:                                              ; preds = %194
  %206 = load i32, ptr %203, align 8, !tbaa !266
  br label %207

207:                                              ; preds = %205, %194
  %208 = phi i32 [ %206, %205 ], [ 0, %194 ]
  %209 = icmp eq i32 %208, 0
  br i1 %209, label %216, label %210

210:                                              ; preds = %207
  %211 = zext i32 %208 to i64
  %212 = call ptr @vec_heap_o_reserve_exact(ptr noundef null, i32 noundef %208, i64 noundef 8, i64 noundef 40) #23
  store i32 %208, ptr %212, align 8, !tbaa !379
  %213 = getelementptr inbounds %struct.VEC_vn_reference_op_s_base, ptr %212, i64 0, i32 2
  %214 = getelementptr inbounds %struct.VEC_vn_reference_op_s_base, ptr %203, i64 0, i32 2
  %215 = mul nuw nsw i64 %211, 40
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %213, ptr nonnull align 8 %214, i64 %215, i1 false)
  br label %216

216:                                              ; preds = %207, %210
  %217 = phi ptr [ %212, %210 ], [ null, %207 ]
  %218 = call ptr @vn_reference_insert_pieces(ptr noundef %1, i32 noundef %200, ptr noundef %201, ptr noundef %217, ptr noundef %197, i32 noundef %198)
  br label %219

219:                                              ; preds = %176, %183, %186, %189, %216
  %220 = phi i1 [ false, %216 ], [ true, %189 ], [ true, %186 ], [ true, %183 ], [ true, %176 ]
  %221 = phi ptr [ %218, %216 ], [ undef, %189 ], [ undef, %186 ], [ undef, %183 ], [ undef, %176 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #23
  br i1 %220, label %673, label %674

222:                                              ; preds = %117, %100, %78, %55, %52, %29, %24
  %223 = load ptr, ptr %25, align 8, !tbaa !344
  %224 = tail call zeroext i8 @is_gimple_reg_type(ptr noundef %223) #23
  %225 = icmp eq i8 %224, 0
  br i1 %225, label %369, label %226, !prof !377

226:                                              ; preds = %222
  %227 = tail call zeroext i8 @gimple_assign_single_p(ptr noundef %17) #23
  %228 = icmp eq i8 %227, 0
  br i1 %228, label %369, label %229, !prof !378

229:                                              ; preds = %226
  %230 = load i32, ptr %17, align 8
  %231 = trunc i32 %230 to i8
  switch i8 %231, label %234 [
    i8 6, label %232
    i8 1, label %232
    i8 8, label %235
  ]

232:                                              ; preds = %229, %229
  %233 = lshr i32 %230, 16
  br label %235

234:                                              ; preds = %229
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 1446, ptr noundef nonnull @.str.1) #23
  br label %235

235:                                              ; preds = %234, %232, %229
  %236 = phi i32 [ %233, %232 ], [ 0, %234 ], [ 59, %229 ]
  %237 = zext nneg i32 %236 to i64
  %238 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %237
  %239 = load i8, ptr %238, align 1, !tbaa !199
  %240 = icmp eq i8 %239, 3
  br i1 %240, label %241, label %261

241:                                              ; preds = %235
  %242 = load i32, ptr %17, align 8
  %243 = and i32 %242, 255
  %244 = add nsw i32 %243, -1
  %245 = icmp ult i32 %244, 9
  tail call void @llvm.assume(i1 %245)
  %246 = zext nneg i32 %243 to i64
  %247 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %246
  %248 = load i32, ptr %247, align 4, !tbaa !203
  %249 = zext i32 %248 to i64
  %250 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %249
  %251 = load i64, ptr %250, align 8, !tbaa !235
  %252 = icmp eq i64 %251, 0
  br i1 %252, label %253, label %254

253:                                              ; preds = %241
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 1622, ptr noundef nonnull @.str.1) #23
  br label %254

254:                                              ; preds = %253, %241
  %255 = getelementptr inbounds i8, ptr %17, i64 %251
  %256 = getelementptr inbounds ptr, ptr %255, i64 1
  %257 = load ptr, ptr %256, align 8, !tbaa !188
  %258 = load i64, ptr %257, align 8
  %259 = trunc i64 %258 to i32
  %260 = and i32 %259, 65535
  br label %261

261:                                              ; preds = %235, %254
  %262 = phi i32 [ %260, %254 ], [ %236, %235 ]
  %263 = icmp eq i32 %262, 51
  br i1 %263, label %264, label %369

264:                                              ; preds = %261
  %265 = load i32, ptr %17, align 8
  %266 = and i32 %265, 255
  %267 = add nsw i32 %266, -1
  %268 = icmp ult i32 %267, 9
  tail call void @llvm.assume(i1 %268)
  %269 = zext nneg i32 %266 to i64
  %270 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %269
  %271 = load i32, ptr %270, align 4, !tbaa !203
  %272 = zext i32 %271 to i64
  %273 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %272
  %274 = load i64, ptr %273, align 8, !tbaa !235
  %275 = icmp eq i64 %274, 0
  br i1 %275, label %276, label %277

276:                                              ; preds = %264
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 1622, ptr noundef nonnull @.str.1) #23
  br label %277

277:                                              ; preds = %276, %264
  %278 = getelementptr inbounds i8, ptr %17, i64 %274
  %279 = getelementptr inbounds ptr, ptr %278, i64 1
  %280 = load ptr, ptr %279, align 8, !tbaa !188
  %281 = getelementptr inbounds %struct.tree_constructor, ptr %280, i64 0, i32 1
  %282 = load ptr, ptr %281, align 8, !tbaa !199
  %283 = icmp eq ptr %282, null
  br i1 %283, label %303, label %284

284:                                              ; preds = %277
  %285 = load i32, ptr %17, align 8
  %286 = and i32 %285, 255
  %287 = add nsw i32 %286, -1
  %288 = icmp ult i32 %287, 9
  tail call void @llvm.assume(i1 %288)
  %289 = zext nneg i32 %286 to i64
  %290 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %289
  %291 = load i32, ptr %290, align 4, !tbaa !203
  %292 = zext i32 %291 to i64
  %293 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %292
  %294 = load i64, ptr %293, align 8, !tbaa !235
  %295 = icmp eq i64 %294, 0
  br i1 %295, label %296, label %297

296:                                              ; preds = %284
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 1622, ptr noundef nonnull @.str.1) #23
  br label %297

297:                                              ; preds = %296, %284
  %298 = getelementptr inbounds i8, ptr %17, i64 %294
  %299 = getelementptr inbounds ptr, ptr %298, i64 1
  %300 = load ptr, ptr %299, align 8, !tbaa !188
  %301 = getelementptr inbounds %struct.tree_constructor, ptr %300, i64 0, i32 1
  %302 = load ptr, ptr %301, align 8, !tbaa !199
  br label %303

303:                                              ; preds = %277, %297
  %304 = phi ptr [ %302, %297 ], [ null, %277 ]
  %305 = icmp eq ptr %304, null
  br i1 %305, label %308, label %306

306:                                              ; preds = %303
  %307 = load i32, ptr %304, align 8, !tbaa !381
  br label %308

308:                                              ; preds = %303, %306
  %309 = phi i32 [ %307, %306 ], [ 0, %303 ]
  %310 = icmp eq i32 %309, 0
  br i1 %310, label %311, label %369

311:                                              ; preds = %308
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #23
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #23
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #23
  %312 = load i32, ptr %17, align 8
  %313 = and i32 %312, 255
  %314 = add nsw i32 %313, -10
  %315 = icmp ult i32 %314, -9
  br i1 %315, label %328, label %316

316:                                              ; preds = %311
  %317 = zext nneg i32 %313 to i64
  %318 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %317
  %319 = load i32, ptr %318, align 4, !tbaa !203
  %320 = zext i32 %319 to i64
  %321 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %320
  %322 = load i64, ptr %321, align 8, !tbaa !235
  %323 = icmp eq i64 %322, 0
  br i1 %323, label %324, label %325

324:                                              ; preds = %316
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 1622, ptr noundef nonnull @.str.1) #23
  br label %325

325:                                              ; preds = %324, %316
  %326 = getelementptr inbounds i8, ptr %17, i64 %322
  %327 = load ptr, ptr %326, align 8, !tbaa !188
  br label %328

328:                                              ; preds = %311, %325
  %329 = phi ptr [ %327, %325 ], [ null, %311 ]
  %330 = call ptr @get_ref_base_and_extent(ptr noundef %329, ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %9) #23
  %331 = call i32 @operand_equal_p(ptr noundef %18, ptr noundef %330, i32 noundef 0) #23
  %332 = icmp eq i32 %331, 0
  br i1 %332, label %366, label %333

333:                                              ; preds = %328
  %334 = load i64, ptr %7, align 8, !tbaa !235
  %335 = icmp sgt i64 %334, %20
  br i1 %335, label %366, label %336

336:                                              ; preds = %333
  %337 = load i64, ptr %8, align 8, !tbaa !235
  %338 = add nsw i64 %337, %334
  %339 = add nsw i64 %22, %20
  %340 = icmp slt i64 %338, %339
  br i1 %340, label %366, label %341

341:                                              ; preds = %336
  %342 = load ptr, ptr %25, align 8, !tbaa !344
  %343 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), align 8, !tbaa !188
  %344 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %342, ptr noundef %343) #23
  %345 = call i32 @get_or_alloc_constant_value_id(ptr noundef %344)
  %346 = getelementptr inbounds %struct.vn_reference_s, ptr %2, i64 0, i32 3
  %347 = load i32, ptr %346, align 8, !tbaa !345
  %348 = load ptr, ptr %25, align 8, !tbaa !344
  %349 = getelementptr inbounds %struct.vn_reference_s, ptr %2, i64 0, i32 5
  %350 = load ptr, ptr %349, align 8, !tbaa !263
  %351 = icmp eq ptr %350, null
  br i1 %351, label %354, label %352

352:                                              ; preds = %341
  %353 = load i32, ptr %350, align 8, !tbaa !266
  br label %354

354:                                              ; preds = %352, %341
  %355 = phi i32 [ %353, %352 ], [ 0, %341 ]
  %356 = icmp eq i32 %355, 0
  br i1 %356, label %363, label %357

357:                                              ; preds = %354
  %358 = zext i32 %355 to i64
  %359 = call ptr @vec_heap_o_reserve_exact(ptr noundef null, i32 noundef %355, i64 noundef 8, i64 noundef 40) #23
  store i32 %355, ptr %359, align 8, !tbaa !379
  %360 = getelementptr inbounds %struct.VEC_vn_reference_op_s_base, ptr %359, i64 0, i32 2
  %361 = getelementptr inbounds %struct.VEC_vn_reference_op_s_base, ptr %350, i64 0, i32 2
  %362 = mul nuw nsw i64 %358, 40
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %360, ptr nonnull align 8 %361, i64 %362, i1 false)
  br label %363

363:                                              ; preds = %354, %357
  %364 = phi ptr [ %359, %357 ], [ null, %354 ]
  %365 = call ptr @vn_reference_insert_pieces(ptr noundef %1, i32 noundef %347, ptr noundef %348, ptr noundef %364, ptr noundef %344, i32 noundef %345)
  br label %366

366:                                              ; preds = %328, %333, %336, %363
  %367 = phi i1 [ false, %363 ], [ true, %336 ], [ true, %333 ], [ true, %328 ]
  %368 = phi ptr [ %365, %363 ], [ undef, %336 ], [ undef, %333 ], [ undef, %328 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #23
  br i1 %367, label %673, label %674

369:                                              ; preds = %308, %261, %226, %222
  %370 = tail call zeroext i8 @gimple_assign_single_p(ptr noundef %17) #23
  %371 = icmp eq i8 %370, 0
  br i1 %371, label %673, label %372, !prof !378

372:                                              ; preds = %369
  %373 = load i32, ptr %17, align 8
  %374 = and i32 %373, 255
  %375 = add nsw i32 %374, -1
  %376 = icmp ult i32 %375, 9
  tail call void @llvm.assume(i1 %376)
  %377 = zext nneg i32 %374 to i64
  %378 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %377
  %379 = load i32, ptr %378, align 4, !tbaa !203
  %380 = zext i32 %379 to i64
  %381 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %380
  %382 = load i64, ptr %381, align 8, !tbaa !235
  %383 = icmp eq i64 %382, 0
  br i1 %383, label %384, label %385

384:                                              ; preds = %372
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 1622, ptr noundef nonnull @.str.1) #23
  br label %385

385:                                              ; preds = %384, %372
  %386 = getelementptr inbounds i8, ptr %17, i64 %382
  %387 = getelementptr inbounds ptr, ptr %386, i64 1
  %388 = load ptr, ptr %387, align 8, !tbaa !188
  %389 = load i64, ptr %388, align 8
  %390 = and i64 %389, 65535
  %391 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %390
  %392 = load i32, ptr %391, align 4, !tbaa !203
  %393 = icmp eq i32 %392, 3
  br i1 %393, label %473, label %394

394:                                              ; preds = %385
  %395 = load i32, ptr %17, align 8
  %396 = and i32 %395, 255
  %397 = add nsw i32 %396, -1
  %398 = icmp ult i32 %397, 9
  tail call void @llvm.assume(i1 %398)
  %399 = zext nneg i32 %396 to i64
  %400 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %399
  %401 = load i32, ptr %400, align 4, !tbaa !203
  %402 = zext i32 %401 to i64
  %403 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %402
  %404 = load i64, ptr %403, align 8, !tbaa !235
  %405 = icmp eq i64 %404, 0
  br i1 %405, label %406, label %407

406:                                              ; preds = %394
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 1622, ptr noundef nonnull @.str.1) #23
  br label %407

407:                                              ; preds = %406, %394
  %408 = getelementptr inbounds i8, ptr %17, i64 %404
  %409 = getelementptr inbounds ptr, ptr %408, i64 1
  %410 = load ptr, ptr %409, align 8, !tbaa !188
  %411 = load i64, ptr %410, align 8
  %412 = and i64 %411, 65535
  %413 = icmp eq i64 %412, 47
  br i1 %413, label %473, label %414

414:                                              ; preds = %407
  %415 = load i32, ptr %17, align 8
  %416 = and i32 %415, 255
  %417 = add nsw i32 %416, -1
  %418 = icmp ult i32 %417, 9
  tail call void @llvm.assume(i1 %418)
  %419 = zext nneg i32 %416 to i64
  %420 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %419
  %421 = load i32, ptr %420, align 4, !tbaa !203
  %422 = zext i32 %421 to i64
  %423 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %422
  %424 = load i64, ptr %423, align 8, !tbaa !235
  %425 = icmp eq i64 %424, 0
  br i1 %425, label %426, label %427

426:                                              ; preds = %414
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 1622, ptr noundef nonnull @.str.1) #23
  br label %427

427:                                              ; preds = %426, %414
  %428 = getelementptr inbounds i8, ptr %17, i64 %424
  %429 = getelementptr inbounds ptr, ptr %428, i64 1
  %430 = load ptr, ptr %429, align 8, !tbaa !188
  %431 = load i64, ptr %430, align 8
  %432 = and i64 %431, 65535
  %433 = icmp eq i64 %432, 48
  br i1 %433, label %473, label %434

434:                                              ; preds = %427
  %435 = load i32, ptr %17, align 8
  %436 = and i32 %435, 255
  %437 = add nsw i32 %436, -1
  %438 = icmp ult i32 %437, 9
  tail call void @llvm.assume(i1 %438)
  %439 = zext nneg i32 %436 to i64
  %440 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %439
  %441 = load i32, ptr %440, align 4, !tbaa !203
  %442 = zext i32 %441 to i64
  %443 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %442
  %444 = load i64, ptr %443, align 8, !tbaa !235
  %445 = icmp eq i64 %444, 0
  br i1 %445, label %446, label %447

446:                                              ; preds = %434
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 1622, ptr noundef nonnull @.str.1) #23
  br label %447

447:                                              ; preds = %446, %434
  %448 = getelementptr inbounds i8, ptr %17, i64 %444
  %449 = getelementptr inbounds ptr, ptr %448, i64 1
  %450 = load ptr, ptr %449, align 8, !tbaa !188
  %451 = load i64, ptr %450, align 8
  %452 = and i64 %451, 65535
  %453 = icmp eq i64 %452, 49
  br i1 %453, label %473, label %454

454:                                              ; preds = %447
  %455 = load i32, ptr %17, align 8
  %456 = and i32 %455, 255
  %457 = add nsw i32 %456, -1
  %458 = icmp ult i32 %457, 9
  tail call void @llvm.assume(i1 %458)
  %459 = zext nneg i32 %456 to i64
  %460 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %459
  %461 = load i32, ptr %460, align 4, !tbaa !203
  %462 = zext i32 %461 to i64
  %463 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %462
  %464 = load i64, ptr %463, align 8, !tbaa !235
  %465 = icmp eq i64 %464, 0
  br i1 %465, label %466, label %467

466:                                              ; preds = %454
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 1622, ptr noundef nonnull @.str.1) #23
  br label %467

467:                                              ; preds = %466, %454
  %468 = getelementptr inbounds i8, ptr %17, i64 %464
  %469 = getelementptr inbounds ptr, ptr %468, i64 1
  %470 = load ptr, ptr %469, align 8, !tbaa !188
  %471 = load i64, ptr %470, align 8
  %472 = trunc i64 %471 to i16
  switch i16 %472, label %673 [
    i16 42, label %473
    i16 41, label %473
    i16 45, label %473
    i16 46, label %473
    i16 118, label %473
    i16 43, label %473
    i16 44, label %473
  ]

473:                                              ; preds = %467, %467, %467, %467, %467, %467, %467, %447, %427, %407, %385
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #23
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #23
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #23
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #23
  store ptr null, ptr %13, align 8, !tbaa !188
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #23
  store ptr null, ptr %14, align 8, !tbaa !188
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %15) #23
  %474 = load i32, ptr %17, align 8
  %475 = and i32 %474, 255
  %476 = add nsw i32 %475, -10
  %477 = icmp ult i32 %476, -9
  br i1 %477, label %490, label %478

478:                                              ; preds = %473
  %479 = zext nneg i32 %475 to i64
  %480 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %479
  %481 = load i32, ptr %480, align 4, !tbaa !203
  %482 = zext i32 %481 to i64
  %483 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %482
  %484 = load i64, ptr %483, align 8, !tbaa !235
  %485 = icmp eq i64 %484, 0
  br i1 %485, label %486, label %487

486:                                              ; preds = %478
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 1622, ptr noundef nonnull @.str.1) #23
  br label %487

487:                                              ; preds = %486, %478
  %488 = getelementptr inbounds i8, ptr %17, i64 %484
  %489 = load ptr, ptr %488, align 8, !tbaa !188
  br label %490

490:                                              ; preds = %473, %487
  %491 = phi ptr [ %489, %487 ], [ null, %473 ]
  %492 = call ptr @get_ref_base_and_extent(ptr noundef %491, ptr noundef nonnull %10, ptr noundef nonnull %11, ptr noundef nonnull %12) #23
  %493 = call i32 @operand_equal_p(ptr noundef %18, ptr noundef %492, i32 noundef 0) #23
  %494 = icmp eq i32 %493, 0
  br i1 %494, label %671, label %495

495:                                              ; preds = %490
  %496 = load i64, ptr %10, align 8, !tbaa !235
  %497 = icmp sgt i64 %496, %20
  br i1 %497, label %671, label %498

498:                                              ; preds = %495
  %499 = load i64, ptr %11, align 8, !tbaa !235
  %500 = add nsw i64 %499, %496
  %501 = add nsw i64 %22, %20
  %502 = icmp slt i64 %500, %501
  br i1 %502, label %671, label %503

503:                                              ; preds = %498
  %504 = load i32, ptr %17, align 8
  %505 = and i32 %504, 255
  %506 = add nsw i32 %505, -10
  %507 = icmp ult i32 %506, -9
  br i1 %507, label %520, label %508

508:                                              ; preds = %503
  %509 = zext nneg i32 %505 to i64
  %510 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %509
  %511 = load i32, ptr %510, align 4, !tbaa !203
  %512 = zext i32 %511 to i64
  %513 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %512
  %514 = load i64, ptr %513, align 8, !tbaa !235
  %515 = icmp eq i64 %514, 0
  br i1 %515, label %516, label %517

516:                                              ; preds = %508
  call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 1622, ptr noundef nonnull @.str.1) #23
  br label %517

517:                                              ; preds = %516, %508
  %518 = getelementptr inbounds i8, ptr %17, i64 %514
  %519 = load ptr, ptr %518, align 8, !tbaa !188
  br label %520

520:                                              ; preds = %503, %517
  %521 = phi ptr [ %519, %517 ], [ null, %503 ]
  call void @copy_reference_ops_from_ref(ptr noundef %521, ptr noundef nonnull %13)
  %522 = getelementptr inbounds %struct.vn_reference_s, ptr %2, i64 0, i32 5
  %523 = load ptr, ptr %522, align 8, !tbaa !263
  %524 = icmp eq ptr %523, null
  br i1 %524, label %527, label %525

525:                                              ; preds = %520
  %526 = load i32, ptr %523, align 8, !tbaa !266
  br label %527

527:                                              ; preds = %520, %525
  %528 = phi i32 [ %526, %525 ], [ 0, %520 ]
  %529 = load ptr, ptr %13, align 8
  %530 = icmp eq ptr %529, null
  br i1 %530, label %533, label %531

531:                                              ; preds = %527
  %532 = load i32, ptr %529, align 8, !tbaa !266
  br label %533

533:                                              ; preds = %527, %531
  %534 = phi i32 [ %532, %531 ], [ 0, %527 ]
  %535 = zext i32 %528 to i64
  %536 = zext i32 %534 to i64
  br label %537

537:                                              ; preds = %547, %533
  %538 = phi i64 [ %540, %547 ], [ %536, %533 ]
  %539 = phi i64 [ %541, %547 ], [ %535, %533 ]
  %540 = add nsw i64 %538, -1
  %541 = add nsw i64 %539, -1
  %542 = and i64 %540, 2147483648
  %543 = icmp eq i64 %542, 0
  %544 = and i64 %541, 2147483648
  %545 = icmp eq i64 %544, 0
  %546 = select i1 %543, i1 %545, i1 false
  br i1 %546, label %547, label %555

547:                                              ; preds = %537
  %548 = load ptr, ptr %522, align 8, !tbaa !263
  %549 = and i64 %541, 4294967295
  %550 = getelementptr inbounds %struct.VEC_vn_reference_op_s_base, ptr %548, i64 0, i32 2, i64 %549
  %551 = and i64 %540, 4294967295
  %552 = getelementptr inbounds %struct.VEC_vn_reference_op_s_base, ptr %529, i64 0, i32 2, i64 %551
  %553 = call fastcc i32 @vn_reference_op_eq(ptr noundef nonnull %550, ptr noundef nonnull %552), !range !383
  %554 = icmp eq i32 %553, 0
  br i1 %554, label %555, label %537, !llvm.loop !384

555:                                              ; preds = %547, %537
  %556 = trunc i64 %539 to i32
  br i1 %530, label %558, label %557

557:                                              ; preds = %555
  call void @free(ptr noundef %529)
  br label %558

558:                                              ; preds = %555, %557
  store ptr null, ptr %13, align 8, !tbaa !188
  %559 = and i64 %538, 4294967295
  %560 = icmp eq i64 %559, 0
  br i1 %560, label %561, label %671

561:                                              ; preds = %558
  %562 = load i32, ptr %17, align 8
  %563 = and i32 %562, 255
  %564 = add nsw i32 %563, -10
  %565 = icmp ult i32 %564, -9
  br i1 %565, label %579, label %566

566:                                              ; preds = %561
  %567 = zext nneg i32 %563 to i64
  %568 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %567
  %569 = load i32, ptr %568, align 4, !tbaa !203
  %570 = zext i32 %569 to i64
  %571 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %570
  %572 = load i64, ptr %571, align 8, !tbaa !235
  %573 = icmp eq i64 %572, 0
  br i1 %573, label %574, label %575

574:                                              ; preds = %566
  call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 1622, ptr noundef nonnull @.str.1) #23
  br label %575

575:                                              ; preds = %574, %566
  %576 = getelementptr inbounds i8, ptr %17, i64 %572
  %577 = getelementptr inbounds ptr, ptr %576, i64 1
  %578 = load ptr, ptr %577, align 8, !tbaa !188
  br label %579

579:                                              ; preds = %561, %575
  %580 = phi ptr [ %578, %575 ], [ null, %561 ]
  call void @copy_reference_ops_from_ref(ptr noundef %580, ptr noundef nonnull %14)
  %581 = load ptr, ptr %14, align 8
  %582 = icmp eq ptr %581, null
  br i1 %582, label %585, label %583

583:                                              ; preds = %579
  %584 = load i32, ptr %581, align 8, !tbaa !266
  br label %585

585:                                              ; preds = %579, %583
  %586 = phi i32 [ %584, %583 ], [ 0, %579 ]
  %587 = add i32 %586, %556
  %588 = load ptr, ptr %522, align 8, !tbaa !188
  %589 = icmp eq ptr %588, null
  br i1 %589, label %592, label %590

590:                                              ; preds = %585
  %591 = load i32, ptr %588, align 8, !tbaa !266
  br label %592

592:                                              ; preds = %585, %590
  %593 = phi i32 [ %591, %590 ], [ 0, %585 ]
  %594 = icmp ugt i32 %587, %593
  br i1 %594, label %595, label %625

595:                                              ; preds = %592
  br i1 %582, label %598, label %596

596:                                              ; preds = %595
  %597 = load i32, ptr %581, align 8, !tbaa !266
  br label %598

598:                                              ; preds = %595, %596
  %599 = phi i32 [ %597, %596 ], [ 0, %595 ]
  %600 = add i32 %599, %556
  br i1 %589, label %603, label %601

601:                                              ; preds = %598
  %602 = load i32, ptr %588, align 8, !tbaa !266
  br label %603

603:                                              ; preds = %601, %598
  %604 = phi i32 [ %602, %601 ], [ 0, %598 ]
  %605 = sub nsw i32 %600, %604
  br i1 %589, label %612, label %606

606:                                              ; preds = %603
  %607 = getelementptr inbounds %struct.VEC_vn_reference_op_s_base, ptr %588, i64 0, i32 1
  %608 = load i32, ptr %607, align 4, !tbaa !299
  %609 = load i32, ptr %588, align 8, !tbaa !266
  %610 = sub i32 %608, %609
  %611 = icmp uge i32 %610, %605
  br label %614

612:                                              ; preds = %603
  %613 = icmp eq i32 %604, %600
  br label %614

614:                                              ; preds = %612, %606
  %615 = phi i1 [ %611, %606 ], [ %613, %612 ]
  br i1 %615, label %618, label %616

616:                                              ; preds = %614
  %617 = call ptr @vec_heap_o_reserve_exact(ptr noundef %588, i32 noundef %605, i64 noundef 8, i64 noundef 40) #23
  store ptr %617, ptr %522, align 8, !tbaa !188
  br label %618

618:                                              ; preds = %614, %616
  %619 = load ptr, ptr %522, align 8, !tbaa !188, !nonnull !224, !noundef !224
  store i32 %600, ptr %619, align 8, !tbaa !266
  %620 = load ptr, ptr @shared_lookup_references, align 8, !tbaa !188
  %621 = icmp ne ptr %588, %620
  %622 = icmp eq ptr %619, %588
  %623 = or i1 %622, %621
  br i1 %623, label %632, label %624

624:                                              ; preds = %618
  store ptr null, ptr @shared_lookup_references, align 8, !tbaa !188
  br label %632

625:                                              ; preds = %592
  br i1 %582, label %628, label %626

626:                                              ; preds = %625
  %627 = load i32, ptr %581, align 8, !tbaa !266
  br label %628

628:                                              ; preds = %625, %626
  %629 = phi i32 [ %627, %626 ], [ 0, %625 ]
  br i1 %589, label %632, label %630

630:                                              ; preds = %628
  %631 = add i32 %629, %556
  store i32 %631, ptr %588, align 8, !tbaa !266
  br label %632

632:                                              ; preds = %630, %628, %618, %624
  br label %633

633:                                              ; preds = %632, %651
  %634 = phi i64 [ %652, %651 ], [ 0, %632 ]
  br i1 %582, label %641, label %635

635:                                              ; preds = %633
  %636 = load i32, ptr %581, align 8, !tbaa !266
  %637 = zext i32 %636 to i64
  %638 = icmp uge i64 %634, %637
  %639 = getelementptr inbounds %struct.VEC_vn_reference_op_s_base, ptr %581, i64 0, i32 2, i64 %634
  %640 = select i1 %638, ptr null, ptr %639
  br label %641

641:                                              ; preds = %635, %633
  %642 = phi ptr [ null, %633 ], [ %640, %635 ]
  %643 = phi i1 [ true, %633 ], [ %638, %635 ]
  br i1 %643, label %653, label %644

644:                                              ; preds = %641
  %645 = icmp eq ptr %642, null
  br i1 %645, label %651, label %646

646:                                              ; preds = %644
  %647 = load ptr, ptr %522, align 8, !tbaa !263
  %648 = add i64 %634, %539
  %649 = and i64 %648, 4294967295
  %650 = getelementptr inbounds %struct.VEC_vn_reference_op_s_base, ptr %647, i64 0, i32 2, i64 %649
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %650, ptr noundef nonnull align 8 dereferenceable(40) %642, i64 40, i1 false), !tbaa.struct !300
  br label %651

651:                                              ; preds = %644, %646
  %652 = add nuw i64 %634, 1
  br label %633, !llvm.loop !385

653:                                              ; preds = %641
  br i1 %582, label %655, label %654

654:                                              ; preds = %653
  call void @free(ptr noundef %581)
  br label %655

655:                                              ; preds = %653, %654
  store ptr null, ptr %14, align 8, !tbaa !188
  %656 = call i32 @vn_reference_compute_hash(ptr noundef %2)
  %657 = getelementptr inbounds %struct.vn_reference_s, ptr %2, i64 0, i32 1
  store i32 %656, ptr %657, align 4, !tbaa !280
  %658 = getelementptr inbounds %struct.vn_reference_s, ptr %2, i64 0, i32 3
  %659 = load i32, ptr %658, align 8, !tbaa !345
  %660 = load ptr, ptr %25, align 8, !tbaa !344
  %661 = load ptr, ptr %522, align 8, !tbaa !263
  %662 = call zeroext i8 @ao_ref_init_from_vn_reference(ptr noundef nonnull %15, i32 noundef %659, ptr noundef %660, ptr noundef %661), !range !351
  %663 = icmp eq i8 %662, 0
  br i1 %663, label %671, label %664

664:                                              ; preds = %655
  %665 = getelementptr inbounds %struct.ao_ref_s, ptr %0, i64 0, i32 3
  %666 = load i64, ptr %665, align 8, !tbaa !334
  %667 = getelementptr inbounds %struct.ao_ref_s, ptr %15, i64 0, i32 3
  %668 = load i64, ptr %667, align 8, !tbaa !334
  %669 = icmp eq i64 %666, %668
  br i1 %669, label %670, label %671

670:                                              ; preds = %664
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %15, i64 48, i1 false), !tbaa.struct !386
  store ptr null, ptr @last_vuse_ptr, align 8, !tbaa !188
  br label %671

671:                                              ; preds = %664, %655, %558, %490, %495, %498, %670
  %672 = phi ptr [ null, %670 ], [ inttoptr (i64 -1 to ptr), %498 ], [ inttoptr (i64 -1 to ptr), %495 ], [ inttoptr (i64 -1 to ptr), %490 ], [ inttoptr (i64 -1 to ptr), %558 ], [ inttoptr (i64 -1 to ptr), %655 ], [ inttoptr (i64 -1 to ptr), %664 ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %15) #23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #23
  br label %674

673:                                              ; preds = %467, %366, %369, %219
  br label %674

674:                                              ; preds = %219, %3, %366, %673, %671
  %675 = phi ptr [ inttoptr (i64 -1 to ptr), %673 ], [ %368, %366 ], [ %672, %671 ], [ inttoptr (i64 -1 to ptr), %3 ], [ %221, %219 ]
  ret ptr %675
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local ptr @vn_reference_lookup(ptr noundef %0, ptr noundef readonly %1, i8 noundef zeroext %2, ptr noundef writeonly %3) local_unnamed_addr #9 !prof !387 {
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.vn_reference_s, align 8
  %8 = alloca %struct.ao_ref_s, align 8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %7) #23
  %9 = icmp eq ptr %3, null
  br i1 %9, label %11, label %10, !prof !388

10:                                               ; preds = %4
  store ptr null, ptr %3, align 8, !tbaa !188
  br label %11

11:                                               ; preds = %10, %4
  %12 = icmp eq ptr %1, null
  br i1 %12, label %24, label %13, !prof !389

13:                                               ; preds = %11
  %14 = load ptr, ptr @vn_ssa_aux_table, align 8
  %15 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 3
  %16 = load i32, ptr %15, align 8, !tbaa !199
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds %struct.VEC_vn_ssa_aux_t_base, ptr %14, i64 0, i32 2, i64 %17
  %19 = load ptr, ptr %18, align 8, !tbaa !188
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %22, !prof !389

21:                                               ; preds = %13
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 180, ptr noundef nonnull @.str.1) #23
  br label %22

22:                                               ; preds = %13, %21
  %23 = load ptr, ptr %19, align 8, !tbaa !227
  br label %24

24:                                               ; preds = %11, %22
  %25 = phi ptr [ %23, %22 ], [ null, %11 ]
  %26 = getelementptr inbounds %struct.vn_reference_s, ptr %7, i64 0, i32 2
  store ptr %25, ptr %26, align 8, !tbaa !277
  %27 = icmp eq ptr %0, null
  br i1 %27, label %313, label %28, !prof !389

28:                                               ; preds = %24
  %29 = load ptr, ptr @shared_lookup_references, align 8
  %30 = icmp eq ptr %29, null
  br i1 %30, label %32, label %31, !prof !390

31:                                               ; preds = %28
  store i32 0, ptr %29, align 8, !tbaa !266
  br label %32

32:                                               ; preds = %31, %28
  %33 = load i64, ptr %0, align 8
  %34 = and i64 %33, 65535
  %35 = icmp eq i64 %34, 152
  br i1 %35, label %36, label %109, !prof !298

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %38 = load ptr, ptr %37, align 8, !tbaa !199
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %43

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 1
  %42 = load ptr, ptr %41, align 8, !tbaa !199
  br label %43

43:                                               ; preds = %40, %36
  %44 = phi ptr [ %42, %40 ], [ %38, %36 ]
  %45 = icmp eq ptr %44, null
  br i1 %45, label %46, label %49

46:                                               ; preds = %43
  %47 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 39), align 8, !tbaa !188
  %48 = tail call ptr @build_int_cst(ptr noundef %47, i64 noundef 0) #23
  br label %49

49:                                               ; preds = %46, %43
  %50 = phi ptr [ %44, %43 ], [ %48, %46 ]
  %51 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %52 = load ptr, ptr %51, align 8, !tbaa !199
  %53 = getelementptr inbounds %struct.tree_type, ptr %52, i64 0, i32 16
  %54 = load ptr, ptr %53, align 8, !tbaa !199
  %55 = load i64, ptr %0, align 8
  %56 = trunc i64 %55 to i32
  %57 = and i32 %56, 65535
  %58 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 1, i32 0, i32 1
  %59 = load ptr, ptr %58, align 8, !tbaa !199
  %60 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 1, i32 0, i32 2
  %61 = load ptr, ptr %60, align 8, !tbaa !199
  %62 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 1, i32 1
  %63 = load ptr, ptr %62, align 8, !tbaa !199
  %64 = load ptr, ptr @shared_lookup_references, align 8, !tbaa !188
  %65 = icmp eq ptr %64, null
  br i1 %65, label %71, label %66

66:                                               ; preds = %49
  %67 = getelementptr inbounds %struct.VEC_vn_reference_op_s_base, ptr %64, i64 0, i32 1
  %68 = load i32, ptr %67, align 4, !tbaa !299
  %69 = load i32, ptr %64, align 8, !tbaa !266
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %71, label %73

71:                                               ; preds = %66, %49
  %72 = tail call ptr @vec_heap_o_reserve(ptr noundef %64, i32 noundef 1, i64 noundef 8, i64 noundef 40) #23
  store ptr %72, ptr @shared_lookup_references, align 8, !tbaa !188
  br label %73

73:                                               ; preds = %71, %66
  %74 = load ptr, ptr @shared_lookup_references, align 8, !tbaa !188
  %75 = load i32, ptr %74, align 8, !tbaa !266
  %76 = add i32 %75, 1
  store i32 %76, ptr %74, align 8, !tbaa !266
  %77 = zext i32 %75 to i64
  %78 = getelementptr inbounds %struct.VEC_vn_reference_op_s_base, ptr %74, i64 0, i32 2, i64 %77
  store i32 %57, ptr %78, align 8, !tbaa.struct !300
  %79 = getelementptr inbounds i8, ptr %78, i64 4
  store i32 0, ptr %79, align 4, !tbaa.struct !301
  %80 = getelementptr inbounds i8, ptr %78, i64 8
  store ptr %54, ptr %80, align 8, !tbaa.struct !302
  %81 = getelementptr inbounds i8, ptr %78, i64 16
  store ptr %59, ptr %81, align 8, !tbaa.struct !303
  %82 = getelementptr inbounds i8, ptr %78, i64 24
  store ptr %61, ptr %82, align 8, !tbaa.struct !304
  %83 = getelementptr inbounds i8, ptr %78, i64 32
  store ptr %63, ptr %83, align 8, !tbaa.struct !305
  %84 = load i64, ptr %50, align 8
  %85 = trunc i64 %84 to i32
  %86 = and i32 %85, 65535
  %87 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 1, i32 2
  %88 = load ptr, ptr %87, align 8, !tbaa !199
  %89 = load ptr, ptr @shared_lookup_references, align 8, !tbaa !188
  %90 = icmp eq ptr %89, null
  br i1 %90, label %96, label %91

91:                                               ; preds = %73
  %92 = getelementptr inbounds %struct.VEC_vn_reference_op_s_base, ptr %89, i64 0, i32 1
  %93 = load i32, ptr %92, align 4, !tbaa !299
  %94 = load i32, ptr %89, align 8, !tbaa !266
  %95 = icmp eq i32 %93, %94
  br i1 %95, label %96, label %98

96:                                               ; preds = %91, %73
  %97 = tail call ptr @vec_heap_o_reserve(ptr noundef %89, i32 noundef 1, i64 noundef 8, i64 noundef 40) #23
  store ptr %97, ptr @shared_lookup_references, align 8, !tbaa !188
  br label %98

98:                                               ; preds = %96, %91
  %99 = load ptr, ptr @shared_lookup_references, align 8, !tbaa !188
  %100 = load i32, ptr %99, align 8, !tbaa !266
  %101 = add i32 %100, 1
  store i32 %101, ptr %99, align 8, !tbaa !266
  %102 = zext i32 %100 to i64
  %103 = getelementptr inbounds %struct.VEC_vn_reference_op_s_base, ptr %99, i64 0, i32 2, i64 %102
  store i32 %86, ptr %103, align 8, !tbaa.struct !300
  %104 = getelementptr inbounds i8, ptr %103, i64 4
  store i32 0, ptr %104, align 4, !tbaa.struct !301
  %105 = getelementptr inbounds i8, ptr %103, i64 8
  store ptr null, ptr %105, align 8, !tbaa.struct !302
  %106 = getelementptr inbounds i8, ptr %103, i64 16
  store ptr %50, ptr %106, align 8, !tbaa.struct !303
  %107 = getelementptr inbounds i8, ptr %103, i64 24
  store ptr %88, ptr %107, align 8, !tbaa.struct !304
  %108 = getelementptr inbounds i8, ptr %103, i64 32
  store ptr null, ptr %108, align 8, !tbaa.struct !305
  br label %211

109:                                              ; preds = %32, %208
  %110 = phi ptr [ %209, %208 ], [ %0, %32 ]
  %111 = getelementptr inbounds %struct.tree_common, ptr %110, i64 0, i32 2
  %112 = load ptr, ptr %111, align 8, !tbaa !199
  %113 = getelementptr inbounds %struct.tree_type, ptr %112, i64 0, i32 16
  %114 = load ptr, ptr %113, align 8, !tbaa !199
  %115 = load i64, ptr %110, align 8
  %116 = trunc i64 %115 to i32
  %117 = and i32 %116, 65535
  %118 = trunc i64 %115 to i16
  switch i16 %118, label %169 [
    i16 48, label %170
    i16 47, label %170
    i16 49, label %119
    i16 42, label %122
    i16 41, label %127
    i16 46, label %159
    i16 45, label %159
    i16 28, label %164
    i16 23, label %164
    i16 26, label %164
    i16 27, label %164
    i16 24, label %164
    i16 51, label %164
    i16 32, label %164
    i16 34, label %164
    i16 33, label %164
    i16 36, label %164
    i16 141, label %164
    i16 121, label %165
    i16 44, label %170
    i16 43, label %170
    i16 118, label %170
  ], !prof !306

119:                                              ; preds = %109
  %120 = getelementptr inbounds %struct.tree_exp, ptr %110, i64 1
  %121 = load ptr, ptr %120, align 8, !tbaa !199
  br label %170

122:                                              ; preds = %109
  %123 = getelementptr inbounds %struct.tree_exp, ptr %110, i64 1
  %124 = load ptr, ptr %123, align 8, !tbaa !199
  %125 = getelementptr inbounds %struct.tree_exp, ptr %110, i64 1, i32 0, i32 1
  %126 = load ptr, ptr %125, align 8, !tbaa !199
  br label %170

127:                                              ; preds = %109
  %128 = getelementptr inbounds %struct.tree_exp, ptr %110, i64 1
  %129 = load ptr, ptr %128, align 8, !tbaa !199
  %130 = getelementptr inbounds %struct.tree_exp, ptr %110, i64 1, i32 0, i32 1
  %131 = load ptr, ptr %130, align 8, !tbaa !199
  %132 = load i8, ptr @may_insert, align 1, !tbaa !199
  %133 = icmp ne i8 %132, 0
  %134 = icmp eq ptr %131, null
  %135 = select i1 %133, i1 %134, i1 false, !prof !307
  br i1 %135, label %136, label %170, !prof !307

136:                                              ; preds = %127
  %137 = getelementptr inbounds %struct.tree_decl_minimal, ptr %129, i64 0, i32 4
  %138 = load ptr, ptr %137, align 8, !tbaa !199
  %139 = load i64, ptr %138, align 8
  %140 = and i64 %139, 65535
  %141 = icmp eq i64 %140, 17
  br i1 %141, label %142, label %170, !prof !308

142:                                              ; preds = %136
  %143 = getelementptr inbounds %struct.tree_field_decl, ptr %129, i64 0, i32 1
  %144 = load ptr, ptr %143, align 8, !tbaa !199
  %145 = tail call i32 @integer_zerop(ptr noundef %144) #23
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %170, label %147, !prof !309

147:                                              ; preds = %142
  %148 = getelementptr inbounds %struct.tree_field_decl, ptr %129, i64 0, i32 4
  %149 = load ptr, ptr %148, align 8, !tbaa !199
  %150 = tail call i32 @integer_zerop(ptr noundef %149) #23
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %170, label %152, !prof !309

152:                                              ; preds = %147
  %153 = getelementptr inbounds %struct.tree_decl_common, ptr %129, i64 0, i32 1
  %154 = load ptr, ptr %153, align 8, !tbaa !199
  %155 = tail call i32 @host_integerp(ptr noundef %154, i32 noundef 0) #23
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %170, label %157, !prof !309

157:                                              ; preds = %152
  %158 = load ptr, ptr %153, align 8, !tbaa !199
  br label %170

159:                                              ; preds = %109, %109
  %160 = getelementptr inbounds %struct.tree_exp, ptr %110, i64 1
  %161 = load ptr, ptr %160, align 8, !tbaa !199
  %162 = tail call ptr @array_ref_low_bound(ptr noundef nonnull %110) #23
  %163 = tail call ptr @array_ref_element_size(ptr noundef nonnull %110) #23
  br label %170

164:                                              ; preds = %109, %109, %109, %109, %109, %109, %109, %109, %109, %109, %109
  br label %170

165:                                              ; preds = %109
  %166 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef nonnull %110) #23
  %167 = icmp eq i8 %166, 0
  %168 = select i1 %167, ptr null, ptr %110
  br label %170

169:                                              ; preds = %109
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 601, ptr noundef nonnull @.str.1) #23
  br label %170

170:                                              ; preds = %169, %165, %164, %159, %157, %152, %147, %142, %136, %127, %122, %119, %109, %109, %109, %109, %109
  %171 = phi ptr [ %114, %169 ], [ %114, %164 ], [ %114, %159 ], [ null, %142 ], [ null, %147 ], [ null, %152 ], [ null, %157 ], [ null, %136 ], [ null, %127 ], [ %114, %122 ], [ %114, %119 ], [ %114, %109 ], [ %114, %165 ], [ %114, %109 ], [ %114, %109 ], [ %114, %109 ], [ %114, %109 ]
  %172 = phi ptr [ null, %169 ], [ %110, %164 ], [ %161, %159 ], [ %129, %142 ], [ %129, %147 ], [ %129, %152 ], [ %158, %157 ], [ %129, %136 ], [ %129, %127 ], [ %124, %122 ], [ %121, %119 ], [ null, %109 ], [ %168, %165 ], [ null, %109 ], [ null, %109 ], [ null, %109 ], [ null, %109 ]
  %173 = phi ptr [ null, %169 ], [ null, %164 ], [ %162, %159 ], [ %131, %142 ], [ %131, %147 ], [ %131, %152 ], [ %131, %157 ], [ %131, %136 ], [ %131, %127 ], [ %126, %122 ], [ null, %119 ], [ null, %109 ], [ null, %165 ], [ null, %109 ], [ null, %109 ], [ null, %109 ], [ null, %109 ]
  %174 = phi ptr [ null, %169 ], [ null, %164 ], [ %163, %159 ], [ null, %142 ], [ null, %147 ], [ null, %152 ], [ null, %157 ], [ null, %136 ], [ null, %127 ], [ null, %122 ], [ null, %119 ], [ null, %109 ], [ null, %165 ], [ null, %109 ], [ null, %109 ], [ null, %109 ], [ null, %109 ]
  %175 = load ptr, ptr @shared_lookup_references, align 8, !tbaa !188
  %176 = icmp eq ptr %175, null
  br i1 %176, label %182, label %177, !prof !310

177:                                              ; preds = %170
  %178 = getelementptr inbounds %struct.VEC_vn_reference_op_s_base, ptr %175, i64 0, i32 1
  %179 = load i32, ptr %178, align 4, !tbaa !299
  %180 = load i32, ptr %175, align 8, !tbaa !266
  %181 = icmp eq i32 %179, %180
  br i1 %181, label %182, label %184, !prof !311

182:                                              ; preds = %177, %170
  %183 = tail call ptr @vec_heap_o_reserve(ptr noundef %175, i32 noundef 1, i64 noundef 8, i64 noundef 40) #23
  store ptr %183, ptr @shared_lookup_references, align 8, !tbaa !188
  br label %184

184:                                              ; preds = %182, %177
  %185 = load ptr, ptr @shared_lookup_references, align 8, !tbaa !188
  %186 = load i32, ptr %185, align 8, !tbaa !266
  %187 = add i32 %186, 1
  store i32 %187, ptr %185, align 8, !tbaa !266
  %188 = zext i32 %186 to i64
  %189 = getelementptr inbounds %struct.VEC_vn_reference_op_s_base, ptr %185, i64 0, i32 2, i64 %188
  store i32 %117, ptr %189, align 8, !tbaa.struct !300
  %190 = getelementptr inbounds i8, ptr %189, i64 4
  store i32 0, ptr %190, align 4, !tbaa.struct !301
  %191 = getelementptr inbounds i8, ptr %189, i64 8
  store ptr %171, ptr %191, align 8, !tbaa.struct !302
  %192 = getelementptr inbounds i8, ptr %189, i64 16
  store ptr %172, ptr %192, align 8, !tbaa.struct !303
  %193 = getelementptr inbounds i8, ptr %189, i64 24
  store ptr %173, ptr %193, align 8, !tbaa.struct !304
  %194 = getelementptr inbounds i8, ptr %189, i64 32
  store ptr %174, ptr %194, align 8, !tbaa.struct !305
  %195 = load i64, ptr %110, align 8
  %196 = and i64 %195, 65535
  %197 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %196
  %198 = load i32, ptr %197, align 4, !tbaa !203
  %199 = icmp eq i32 %198, 4
  br i1 %199, label %205, label %200, !prof !312

200:                                              ; preds = %184
  %201 = icmp eq i64 %196, 121
  br i1 %201, label %202, label %208, !prof !298

202:                                              ; preds = %200
  %203 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef nonnull %110) #23
  %204 = icmp eq i8 %203, 0
  br i1 %204, label %205, label %208

205:                                              ; preds = %202, %184
  %206 = getelementptr inbounds %struct.tree_exp, ptr %110, i64 0, i32 3
  %207 = load ptr, ptr %206, align 8, !tbaa !199
  br label %208

208:                                              ; preds = %205, %202, %200
  %209 = phi ptr [ %207, %205 ], [ null, %202 ], [ null, %200 ]
  %210 = icmp eq ptr %209, null
  br i1 %210, label %211, label %109, !prof !313, !llvm.loop !314

211:                                              ; preds = %208, %98
  %212 = load ptr, ptr @shared_lookup_references, align 8, !tbaa !188
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5)
  store ptr %212, ptr %5, align 8, !tbaa !188
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #23
  br label %213

213:                                              ; preds = %309, %211
  %214 = phi i32 [ 0, %211 ], [ %311, %309 ]
  store i32 %214, ptr %6, align 4, !tbaa !203
  %215 = load ptr, ptr %5, align 8
  %216 = icmp eq ptr %215, null
  br i1 %216, label %223, label %217, !prof !265

217:                                              ; preds = %213
  %218 = load i32, ptr %215, align 8, !tbaa !266
  %219 = icmp ugt i32 %218, %214
  br i1 %219, label %220, label %223, !prof !357

220:                                              ; preds = %217
  %221 = zext i32 %214 to i64
  %222 = getelementptr inbounds %struct.VEC_vn_reference_op_s_base, ptr %215, i64 0, i32 2, i64 %221
  br label %223

223:                                              ; preds = %220, %217, %213
  %224 = phi ptr [ %222, %220 ], [ null, %217 ], [ null, %213 ]
  %225 = phi i1 [ false, %220 ], [ true, %217 ], [ true, %213 ]
  br i1 %225, label %312, label %226, !prof !268

226:                                              ; preds = %223
  %227 = load i32, ptr %224, align 8, !tbaa !269
  %228 = icmp eq i32 %227, 141
  br i1 %228, label %237, label %229, !prof !272

229:                                              ; preds = %226
  %230 = getelementptr inbounds %struct.vn_reference_op_struct, ptr %224, i64 0, i32 2
  %231 = load ptr, ptr %230, align 8, !tbaa !271
  %232 = icmp eq ptr %231, null
  br i1 %232, label %271, label %233, !prof !358

233:                                              ; preds = %229
  %234 = load i64, ptr %231, align 8
  %235 = and i64 %234, 65535
  %236 = icmp eq i64 %235, 141
  br i1 %236, label %237, label %271, !prof !359

237:                                              ; preds = %233, %226
  %238 = getelementptr inbounds %struct.vn_reference_op_struct, ptr %224, i64 0, i32 2
  %239 = load ptr, ptr %238, align 8, !tbaa !271
  %240 = load ptr, ptr @vn_ssa_aux_table, align 8
  %241 = getelementptr inbounds %struct.tree_ssa_name, ptr %239, i64 0, i32 3
  %242 = load i32, ptr %241, align 8, !tbaa !199
  %243 = zext i32 %242 to i64
  %244 = getelementptr inbounds %struct.VEC_vn_ssa_aux_t_base, ptr %240, i64 0, i32 2, i64 %243
  %245 = load ptr, ptr %244, align 8, !tbaa !188
  %246 = icmp eq ptr %245, null
  br i1 %246, label %247, label %248, !prof !360

247:                                              ; preds = %237
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 180, ptr noundef nonnull @.str.1) #23
  br label %248

248:                                              ; preds = %247, %237
  %249 = load ptr, ptr %245, align 8, !tbaa !227
  store ptr %249, ptr %238, align 8, !tbaa !271
  %250 = load i64, ptr %249, align 8
  %251 = trunc i64 %250 to i32
  %252 = and i32 %251, 65535
  %253 = icmp eq i32 %252, 141
  br i1 %253, label %258, label %254, !prof !361

254:                                              ; preds = %248
  %255 = load i32, ptr %224, align 8, !tbaa !269
  %256 = icmp eq i32 %255, 141
  br i1 %256, label %257, label %258

257:                                              ; preds = %254
  store i32 %252, ptr %224, align 8, !tbaa !269
  br label %258

258:                                              ; preds = %257, %254, %248
  %259 = icmp eq i32 %214, 0
  br i1 %259, label %271, label %260, !prof !362

260:                                              ; preds = %258
  %261 = load i64, ptr %249, align 8
  %262 = and i64 %261, 65535
  %263 = icmp eq i64 %262, 121
  br i1 %263, label %264, label %271, !prof !363

264:                                              ; preds = %260
  %265 = add i32 %214, -1
  %266 = zext i32 %265 to i64
  %267 = getelementptr inbounds %struct.VEC_vn_reference_op_s_base, ptr %215, i64 0, i32 2, i64 %266
  %268 = load i32, ptr %267, align 8, !tbaa !269
  %269 = icmp eq i32 %268, 47
  br i1 %269, label %270, label %271

270:                                              ; preds = %264
  call void @vn_reference_fold_indirect(ptr noundef nonnull %5, ptr noundef nonnull %6)
  br label %309

271:                                              ; preds = %264, %260, %258, %233, %229
  %272 = getelementptr inbounds %struct.vn_reference_op_struct, ptr %224, i64 0, i32 3
  %273 = load ptr, ptr %272, align 8, !tbaa !273
  %274 = icmp eq ptr %273, null
  br i1 %274, label %290, label %275, !prof !274

275:                                              ; preds = %271
  %276 = load i64, ptr %273, align 8
  %277 = and i64 %276, 65535
  %278 = icmp eq i64 %277, 141
  br i1 %278, label %279, label %290, !prof !364

279:                                              ; preds = %275
  %280 = load ptr, ptr @vn_ssa_aux_table, align 8
  %281 = getelementptr inbounds %struct.tree_ssa_name, ptr %273, i64 0, i32 3
  %282 = load i32, ptr %281, align 8, !tbaa !199
  %283 = zext i32 %282 to i64
  %284 = getelementptr inbounds %struct.VEC_vn_ssa_aux_t_base, ptr %280, i64 0, i32 2, i64 %283
  %285 = load ptr, ptr %284, align 8, !tbaa !188
  %286 = icmp eq ptr %285, null
  br i1 %286, label %287, label %288

287:                                              ; preds = %279
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 180, ptr noundef nonnull @.str.1) #23
  br label %288

288:                                              ; preds = %287, %279
  %289 = load ptr, ptr %285, align 8, !tbaa !227
  store ptr %289, ptr %272, align 8, !tbaa !273
  br label %290

290:                                              ; preds = %288, %275, %271
  %291 = getelementptr inbounds %struct.vn_reference_op_struct, ptr %224, i64 0, i32 4
  %292 = load ptr, ptr %291, align 8, !tbaa !275
  %293 = icmp eq ptr %292, null
  br i1 %293, label %309, label %294, !prof !274

294:                                              ; preds = %290
  %295 = load i64, ptr %292, align 8
  %296 = and i64 %295, 65535
  %297 = icmp eq i64 %296, 141
  br i1 %297, label %298, label %309, !prof !364

298:                                              ; preds = %294
  %299 = load ptr, ptr @vn_ssa_aux_table, align 8
  %300 = getelementptr inbounds %struct.tree_ssa_name, ptr %292, i64 0, i32 3
  %301 = load i32, ptr %300, align 8, !tbaa !199
  %302 = zext i32 %301 to i64
  %303 = getelementptr inbounds %struct.VEC_vn_ssa_aux_t_base, ptr %299, i64 0, i32 2, i64 %302
  %304 = load ptr, ptr %303, align 8, !tbaa !188
  %305 = icmp eq ptr %304, null
  br i1 %305, label %306, label %307

306:                                              ; preds = %298
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 180, ptr noundef nonnull @.str.1) #23
  br label %307

307:                                              ; preds = %306, %298
  %308 = load ptr, ptr %304, align 8, !tbaa !227
  store ptr %308, ptr %291, align 8, !tbaa !275
  br label %309

309:                                              ; preds = %307, %294, %290, %270
  %310 = load i32, ptr %6, align 4, !tbaa !203
  %311 = add i32 %310, 1
  br label %213, !llvm.loop !365

312:                                              ; preds = %223
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5)
  store ptr %215, ptr @shared_lookup_references, align 8, !tbaa !188
  br label %313

313:                                              ; preds = %24, %312
  %314 = phi ptr [ %215, %312 ], [ null, %24 ]
  %315 = getelementptr inbounds %struct.vn_reference_s, ptr %7, i64 0, i32 5
  store ptr %314, ptr %315, align 8, !tbaa !263
  %316 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %317 = load ptr, ptr %316, align 8, !tbaa !199
  %318 = getelementptr inbounds %struct.vn_reference_s, ptr %7, i64 0, i32 4
  store ptr %317, ptr %318, align 8, !tbaa !344
  %319 = tail call i32 @get_alias_set(ptr noundef %0) #23
  %320 = getelementptr inbounds %struct.vn_reference_s, ptr %7, i64 0, i32 3
  store i32 %319, ptr %320, align 8, !tbaa !345
  br label %321

321:                                              ; preds = %357, %313
  %322 = phi i64 [ %359, %357 ], [ 0, %313 ]
  %323 = phi i32 [ %358, %357 ], [ 0, %313 ]
  %324 = load ptr, ptr %315, align 8, !tbaa !263
  %325 = icmp eq ptr %324, null
  br i1 %325, label %332, label %326, !prof !265

326:                                              ; preds = %321
  %327 = load i32, ptr %324, align 8, !tbaa !266
  %328 = zext i32 %327 to i64
  %329 = icmp uge i64 %322, %328
  %330 = getelementptr inbounds %struct.VEC_vn_reference_op_s_base, ptr %324, i64 0, i32 2, i64 %322
  %331 = select i1 %329, ptr null, ptr %330, !prof !268
  br label %332

332:                                              ; preds = %326, %321
  %333 = phi ptr [ null, %321 ], [ %331, %326 ]
  %334 = phi i1 [ true, %321 ], [ %329, %326 ]
  br i1 %334, label %360, label %335, !prof !268

335:                                              ; preds = %332
  %336 = load i32, ptr %333, align 8, !tbaa !269
  %337 = tail call i32 @iterative_hash_hashval_t(i32 noundef %336, i32 noundef %323) #23
  %338 = getelementptr inbounds %struct.vn_reference_op_struct, ptr %333, i64 0, i32 2
  %339 = load ptr, ptr %338, align 8, !tbaa !271
  %340 = icmp eq ptr %339, null
  br i1 %340, label %343, label %341, !prof !272

341:                                              ; preds = %335
  %342 = tail call i32 @iterative_hash_expr(ptr noundef nonnull %339, i32 noundef %337) #23
  br label %343

343:                                              ; preds = %341, %335
  %344 = phi i32 [ %342, %341 ], [ %337, %335 ]
  %345 = getelementptr inbounds %struct.vn_reference_op_struct, ptr %333, i64 0, i32 3
  %346 = load ptr, ptr %345, align 8, !tbaa !273
  %347 = icmp eq ptr %346, null
  br i1 %347, label %350, label %348, !prof !274

348:                                              ; preds = %343
  %349 = tail call i32 @iterative_hash_expr(ptr noundef nonnull %346, i32 noundef %344) #23
  br label %350

350:                                              ; preds = %348, %343
  %351 = phi i32 [ %349, %348 ], [ %344, %343 ]
  %352 = getelementptr inbounds %struct.vn_reference_op_struct, ptr %333, i64 0, i32 4
  %353 = load ptr, ptr %352, align 8, !tbaa !275
  %354 = icmp eq ptr %353, null
  br i1 %354, label %357, label %355, !prof !274

355:                                              ; preds = %350
  %356 = tail call i32 @iterative_hash_expr(ptr noundef nonnull %353, i32 noundef %351) #23
  br label %357

357:                                              ; preds = %355, %350
  %358 = phi i32 [ %356, %355 ], [ %351, %350 ]
  %359 = add nuw i64 %322, 1
  br label %321, !llvm.loop !276

360:                                              ; preds = %332
  %361 = load ptr, ptr %26, align 8
  %362 = icmp eq ptr %361, null
  br i1 %362, label %367, label %363, !prof !278

363:                                              ; preds = %360
  %364 = getelementptr inbounds %struct.tree_ssa_name, ptr %361, i64 0, i32 3
  %365 = load i32, ptr %364, align 8, !tbaa !199
  %366 = add i32 %365, %323
  br label %367

367:                                              ; preds = %360, %363
  %368 = phi i32 [ %366, %363 ], [ %323, %360 ]
  %369 = getelementptr inbounds %struct.vn_reference_s, ptr %7, i64 0, i32 1
  store i32 %368, ptr %369, align 4, !tbaa !280
  %370 = icmp ne i8 %2, 0
  %371 = icmp ne ptr %361, null
  %372 = and i1 %370, %371
  br i1 %372, label %373, label %391, !prof !391

373:                                              ; preds = %367
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %8) #23
  call void @ao_ref_init(ptr noundef nonnull %8, ptr noundef %0) #23
  %374 = load ptr, ptr %26, align 8, !tbaa !277
  %375 = call ptr @walk_non_aliased_vuses(ptr noundef nonnull %8, ptr noundef %374, ptr noundef nonnull @vn_reference_lookup_2, ptr noundef nonnull @vn_reference_lookup_3, ptr noundef nonnull %7) #23
  %376 = load ptr, ptr %315, align 8, !tbaa !188
  %377 = icmp eq ptr %376, %314
  br i1 %377, label %382, label %378, !prof !392

378:                                              ; preds = %373
  %379 = icmp eq ptr %376, null
  br i1 %379, label %381, label %380

380:                                              ; preds = %378
  call void @free(ptr noundef %376)
  br label %381

381:                                              ; preds = %378, %380
  store ptr null, ptr %315, align 8, !tbaa !188
  br label %382

382:                                              ; preds = %381, %373
  %383 = icmp eq ptr %375, null
  br i1 %383, label %389, label %384, !prof !393

384:                                              ; preds = %382
  br i1 %9, label %386, label %385, !prof !394

385:                                              ; preds = %384
  store ptr %375, ptr %3, align 8, !tbaa !188
  br label %386

386:                                              ; preds = %385, %384
  %387 = getelementptr inbounds %struct.vn_reference_s, ptr %375, i64 0, i32 6
  %388 = load ptr, ptr %387, align 8, !tbaa !354
  br label %389

389:                                              ; preds = %382, %386
  %390 = phi ptr [ %388, %386 ], [ null, %382 ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %8) #23
  br label %416

391:                                              ; preds = %367
  %392 = load ptr, ptr @current_info, align 8, !tbaa !188
  %393 = getelementptr inbounds %struct.vn_tables_s, ptr %392, i64 0, i32 2
  %394 = load ptr, ptr %393, align 8, !tbaa !346
  %395 = call ptr @htab_find_slot_with_hash(ptr noundef %394, ptr noundef nonnull %7, i32 noundef %368, i32 noundef 0) #23
  %396 = icmp eq ptr %395, null
  br i1 %396, label %397, label %406, !prof !348

397:                                              ; preds = %391
  %398 = load ptr, ptr @current_info, align 8, !tbaa !188
  %399 = load ptr, ptr @optimistic_info, align 8, !tbaa !188
  %400 = icmp eq ptr %398, %399
  br i1 %400, label %401, label %406, !prof !349

401:                                              ; preds = %397
  %402 = load ptr, ptr @valid_info, align 8, !tbaa !188
  %403 = getelementptr inbounds %struct.vn_tables_s, ptr %402, i64 0, i32 2
  %404 = load ptr, ptr %403, align 8, !tbaa !346
  %405 = call ptr @htab_find_slot_with_hash(ptr noundef %404, ptr noundef nonnull %7, i32 noundef %368, i32 noundef 0) #23
  br label %406

406:                                              ; preds = %401, %397, %391
  %407 = phi ptr [ %395, %391 ], [ %405, %401 ], [ null, %397 ]
  %408 = icmp eq ptr %407, null
  br i1 %408, label %416, label %409, !prof !348

409:                                              ; preds = %406
  br i1 %9, label %412, label %410, !prof !367

410:                                              ; preds = %409
  %411 = load ptr, ptr %407, align 8, !tbaa !188
  store ptr %411, ptr %3, align 8, !tbaa !188
  br label %412

412:                                              ; preds = %410, %409
  %413 = load ptr, ptr %407, align 8, !tbaa !188
  %414 = getelementptr inbounds %struct.vn_reference_s, ptr %413, i64 0, i32 6
  %415 = load ptr, ptr %414, align 8, !tbaa !354
  br label %416

416:                                              ; preds = %412, %406, %389
  %417 = phi ptr [ %390, %389 ], [ %415, %412 ], [ null, %406 ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %7) #23
  ret ptr %417
}

declare i32 @get_alias_set(ptr noundef) local_unnamed_addr #3

declare void @ao_ref_init(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define dso_local ptr @vn_reference_insert(ptr noundef %0, ptr noundef %1, ptr noundef readonly %2) local_unnamed_addr #9 !prof !297 {
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  %7 = load ptr, ptr @current_info, align 8, !tbaa !188
  %8 = getelementptr inbounds %struct.vn_tables_s, ptr %7, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !395
  %10 = tail call ptr @pool_alloc(ptr noundef %9) #23
  %11 = load i64, ptr %1, align 8
  %12 = and i64 %11, 65535
  %13 = icmp eq i64 %12, 141
  br i1 %13, label %14, label %26, !prof !396

14:                                               ; preds = %3
  %15 = load ptr, ptr @vn_ssa_aux_table, align 8
  %16 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 3
  %17 = load i32, ptr %16, align 8, !tbaa !199
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds %struct.VEC_vn_ssa_aux_t_base, ptr %15, i64 0, i32 2, i64 %18
  %20 = load ptr, ptr %19, align 8, !tbaa !188
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %23, !prof !397

22:                                               ; preds = %14
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 180, ptr noundef nonnull @.str.1) #23
  br label %23

23:                                               ; preds = %14, %22
  %24 = getelementptr inbounds %struct.vn_ssa_aux, ptr %20, i64 0, i32 2
  %25 = load i32, ptr %24, align 8, !tbaa !398
  br label %28

26:                                               ; preds = %3
  %27 = tail call i32 @get_or_alloc_constant_value_id(ptr noundef nonnull %1)
  br label %28

28:                                               ; preds = %26, %23
  %29 = phi i32 [ %27, %26 ], [ %25, %23 ]
  store i32 %29, ptr %10, align 8, !tbaa !399
  %30 = icmp eq ptr %2, null
  br i1 %30, label %42, label %31, !prof !397

31:                                               ; preds = %28
  %32 = load ptr, ptr @vn_ssa_aux_table, align 8
  %33 = getelementptr inbounds %struct.tree_ssa_name, ptr %2, i64 0, i32 3
  %34 = load i32, ptr %33, align 8, !tbaa !199
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds %struct.VEC_vn_ssa_aux_t_base, ptr %32, i64 0, i32 2, i64 %35
  %37 = load ptr, ptr %36, align 8, !tbaa !188
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %40, !prof !397

39:                                               ; preds = %31
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 180, ptr noundef nonnull @.str.1) #23
  br label %40

40:                                               ; preds = %31, %39
  %41 = load ptr, ptr %37, align 8, !tbaa !227
  br label %42

42:                                               ; preds = %28, %40
  %43 = phi ptr [ %41, %40 ], [ null, %28 ]
  %44 = getelementptr inbounds %struct.vn_reference_s, ptr %10, i64 0, i32 2
  store ptr %43, ptr %44, align 8, !tbaa !277
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #23
  store ptr null, ptr %6, align 8, !tbaa !188
  call void @copy_reference_ops_from_ref(ptr noundef %0, ptr noundef nonnull %6)
  %45 = load ptr, ptr %6, align 8, !tbaa !188
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #23
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4)
  store ptr %45, ptr %4, align 8, !tbaa !188
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #23
  br label %46

46:                                               ; preds = %142, %42
  %47 = phi i32 [ 0, %42 ], [ %144, %142 ]
  store i32 %47, ptr %5, align 4, !tbaa !203
  %48 = load ptr, ptr %4, align 8
  %49 = icmp eq ptr %48, null
  br i1 %49, label %56, label %50, !prof !265

50:                                               ; preds = %46
  %51 = load i32, ptr %48, align 8, !tbaa !266
  %52 = icmp ugt i32 %51, %47
  br i1 %52, label %53, label %56, !prof !357

53:                                               ; preds = %50
  %54 = zext i32 %47 to i64
  %55 = getelementptr inbounds %struct.VEC_vn_reference_op_s_base, ptr %48, i64 0, i32 2, i64 %54
  br label %56

56:                                               ; preds = %53, %50, %46
  %57 = phi ptr [ %55, %53 ], [ null, %50 ], [ null, %46 ]
  %58 = phi i1 [ false, %53 ], [ true, %50 ], [ true, %46 ]
  br i1 %58, label %145, label %59, !prof !268

59:                                               ; preds = %56
  %60 = load i32, ptr %57, align 8, !tbaa !269
  %61 = icmp eq i32 %60, 141
  br i1 %61, label %70, label %62, !prof !272

62:                                               ; preds = %59
  %63 = getelementptr inbounds %struct.vn_reference_op_struct, ptr %57, i64 0, i32 2
  %64 = load ptr, ptr %63, align 8, !tbaa !271
  %65 = icmp eq ptr %64, null
  br i1 %65, label %104, label %66, !prof !358

66:                                               ; preds = %62
  %67 = load i64, ptr %64, align 8
  %68 = and i64 %67, 65535
  %69 = icmp eq i64 %68, 141
  br i1 %69, label %70, label %104, !prof !359

70:                                               ; preds = %66, %59
  %71 = getelementptr inbounds %struct.vn_reference_op_struct, ptr %57, i64 0, i32 2
  %72 = load ptr, ptr %71, align 8, !tbaa !271
  %73 = load ptr, ptr @vn_ssa_aux_table, align 8
  %74 = getelementptr inbounds %struct.tree_ssa_name, ptr %72, i64 0, i32 3
  %75 = load i32, ptr %74, align 8, !tbaa !199
  %76 = zext i32 %75 to i64
  %77 = getelementptr inbounds %struct.VEC_vn_ssa_aux_t_base, ptr %73, i64 0, i32 2, i64 %76
  %78 = load ptr, ptr %77, align 8, !tbaa !188
  %79 = icmp eq ptr %78, null
  br i1 %79, label %80, label %81, !prof !360

80:                                               ; preds = %70
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 180, ptr noundef nonnull @.str.1) #23
  br label %81

81:                                               ; preds = %80, %70
  %82 = load ptr, ptr %78, align 8, !tbaa !227
  store ptr %82, ptr %71, align 8, !tbaa !271
  %83 = load i64, ptr %82, align 8
  %84 = trunc i64 %83 to i32
  %85 = and i32 %84, 65535
  %86 = icmp eq i32 %85, 141
  br i1 %86, label %91, label %87, !prof !361

87:                                               ; preds = %81
  %88 = load i32, ptr %57, align 8, !tbaa !269
  %89 = icmp eq i32 %88, 141
  br i1 %89, label %90, label %91

90:                                               ; preds = %87
  store i32 %85, ptr %57, align 8, !tbaa !269
  br label %91

91:                                               ; preds = %90, %87, %81
  %92 = icmp eq i32 %47, 0
  br i1 %92, label %104, label %93, !prof !362

93:                                               ; preds = %91
  %94 = load i64, ptr %82, align 8
  %95 = and i64 %94, 65535
  %96 = icmp eq i64 %95, 121
  br i1 %96, label %97, label %104, !prof !363

97:                                               ; preds = %93
  %98 = add i32 %47, -1
  %99 = zext i32 %98 to i64
  %100 = getelementptr inbounds %struct.VEC_vn_reference_op_s_base, ptr %48, i64 0, i32 2, i64 %99
  %101 = load i32, ptr %100, align 8, !tbaa !269
  %102 = icmp eq i32 %101, 47
  br i1 %102, label %103, label %104

103:                                              ; preds = %97
  call void @vn_reference_fold_indirect(ptr noundef nonnull %4, ptr noundef nonnull %5)
  br label %142

104:                                              ; preds = %97, %93, %91, %66, %62
  %105 = getelementptr inbounds %struct.vn_reference_op_struct, ptr %57, i64 0, i32 3
  %106 = load ptr, ptr %105, align 8, !tbaa !273
  %107 = icmp eq ptr %106, null
  br i1 %107, label %123, label %108, !prof !274

108:                                              ; preds = %104
  %109 = load i64, ptr %106, align 8
  %110 = and i64 %109, 65535
  %111 = icmp eq i64 %110, 141
  br i1 %111, label %112, label %123, !prof !364

112:                                              ; preds = %108
  %113 = load ptr, ptr @vn_ssa_aux_table, align 8
  %114 = getelementptr inbounds %struct.tree_ssa_name, ptr %106, i64 0, i32 3
  %115 = load i32, ptr %114, align 8, !tbaa !199
  %116 = zext i32 %115 to i64
  %117 = getelementptr inbounds %struct.VEC_vn_ssa_aux_t_base, ptr %113, i64 0, i32 2, i64 %116
  %118 = load ptr, ptr %117, align 8, !tbaa !188
  %119 = icmp eq ptr %118, null
  br i1 %119, label %120, label %121

120:                                              ; preds = %112
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 180, ptr noundef nonnull @.str.1) #23
  br label %121

121:                                              ; preds = %120, %112
  %122 = load ptr, ptr %118, align 8, !tbaa !227
  store ptr %122, ptr %105, align 8, !tbaa !273
  br label %123

123:                                              ; preds = %121, %108, %104
  %124 = getelementptr inbounds %struct.vn_reference_op_struct, ptr %57, i64 0, i32 4
  %125 = load ptr, ptr %124, align 8, !tbaa !275
  %126 = icmp eq ptr %125, null
  br i1 %126, label %142, label %127, !prof !274

127:                                              ; preds = %123
  %128 = load i64, ptr %125, align 8
  %129 = and i64 %128, 65535
  %130 = icmp eq i64 %129, 141
  br i1 %130, label %131, label %142, !prof !364

131:                                              ; preds = %127
  %132 = load ptr, ptr @vn_ssa_aux_table, align 8
  %133 = getelementptr inbounds %struct.tree_ssa_name, ptr %125, i64 0, i32 3
  %134 = load i32, ptr %133, align 8, !tbaa !199
  %135 = zext i32 %134 to i64
  %136 = getelementptr inbounds %struct.VEC_vn_ssa_aux_t_base, ptr %132, i64 0, i32 2, i64 %135
  %137 = load ptr, ptr %136, align 8, !tbaa !188
  %138 = icmp eq ptr %137, null
  br i1 %138, label %139, label %140

139:                                              ; preds = %131
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 180, ptr noundef nonnull @.str.1) #23
  br label %140

140:                                              ; preds = %139, %131
  %141 = load ptr, ptr %137, align 8, !tbaa !227
  store ptr %141, ptr %124, align 8, !tbaa !275
  br label %142

142:                                              ; preds = %140, %127, %123, %103
  %143 = load i32, ptr %5, align 4, !tbaa !203
  %144 = add i32 %143, 1
  br label %46, !llvm.loop !365

145:                                              ; preds = %56
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4)
  %146 = getelementptr inbounds %struct.vn_reference_s, ptr %10, i64 0, i32 5
  store ptr %48, ptr %146, align 8, !tbaa !263
  %147 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %148 = load ptr, ptr %147, align 8, !tbaa !199
  %149 = getelementptr inbounds %struct.vn_reference_s, ptr %10, i64 0, i32 4
  store ptr %148, ptr %149, align 8, !tbaa !344
  %150 = tail call i32 @get_alias_set(ptr noundef %0) #23
  %151 = getelementptr inbounds %struct.vn_reference_s, ptr %10, i64 0, i32 3
  store i32 %150, ptr %151, align 8, !tbaa !345
  br label %152

152:                                              ; preds = %188, %145
  %153 = phi i64 [ %190, %188 ], [ 0, %145 ]
  %154 = phi i32 [ %189, %188 ], [ 0, %145 ]
  %155 = load ptr, ptr %146, align 8, !tbaa !263
  %156 = icmp eq ptr %155, null
  br i1 %156, label %163, label %157, !prof !265

157:                                              ; preds = %152
  %158 = load i32, ptr %155, align 8, !tbaa !266
  %159 = zext i32 %158 to i64
  %160 = icmp uge i64 %153, %159
  %161 = getelementptr inbounds %struct.VEC_vn_reference_op_s_base, ptr %155, i64 0, i32 2, i64 %153
  %162 = select i1 %160, ptr null, ptr %161, !prof !268
  br label %163

163:                                              ; preds = %157, %152
  %164 = phi ptr [ null, %152 ], [ %162, %157 ]
  %165 = phi i1 [ true, %152 ], [ %160, %157 ]
  br i1 %165, label %191, label %166, !prof !268

166:                                              ; preds = %163
  %167 = load i32, ptr %164, align 8, !tbaa !269
  %168 = tail call i32 @iterative_hash_hashval_t(i32 noundef %167, i32 noundef %154) #23
  %169 = getelementptr inbounds %struct.vn_reference_op_struct, ptr %164, i64 0, i32 2
  %170 = load ptr, ptr %169, align 8, !tbaa !271
  %171 = icmp eq ptr %170, null
  br i1 %171, label %174, label %172, !prof !272

172:                                              ; preds = %166
  %173 = tail call i32 @iterative_hash_expr(ptr noundef nonnull %170, i32 noundef %168) #23
  br label %174

174:                                              ; preds = %172, %166
  %175 = phi i32 [ %173, %172 ], [ %168, %166 ]
  %176 = getelementptr inbounds %struct.vn_reference_op_struct, ptr %164, i64 0, i32 3
  %177 = load ptr, ptr %176, align 8, !tbaa !273
  %178 = icmp eq ptr %177, null
  br i1 %178, label %181, label %179, !prof !274

179:                                              ; preds = %174
  %180 = tail call i32 @iterative_hash_expr(ptr noundef nonnull %177, i32 noundef %175) #23
  br label %181

181:                                              ; preds = %179, %174
  %182 = phi i32 [ %180, %179 ], [ %175, %174 ]
  %183 = getelementptr inbounds %struct.vn_reference_op_struct, ptr %164, i64 0, i32 4
  %184 = load ptr, ptr %183, align 8, !tbaa !275
  %185 = icmp eq ptr %184, null
  br i1 %185, label %188, label %186, !prof !274

186:                                              ; preds = %181
  %187 = tail call i32 @iterative_hash_expr(ptr noundef nonnull %184, i32 noundef %182) #23
  br label %188

188:                                              ; preds = %186, %181
  %189 = phi i32 [ %187, %186 ], [ %182, %181 ]
  %190 = add nuw i64 %153, 1
  br label %152, !llvm.loop !276

191:                                              ; preds = %163
  %192 = load ptr, ptr %44, align 8, !tbaa !277
  %193 = icmp eq ptr %192, null
  br i1 %193, label %198, label %194, !prof !278

194:                                              ; preds = %191
  %195 = getelementptr inbounds %struct.tree_ssa_name, ptr %192, i64 0, i32 3
  %196 = load i32, ptr %195, align 8, !tbaa !199
  %197 = add i32 %196, %154
  br label %198

198:                                              ; preds = %191, %194
  %199 = phi i32 [ %197, %194 ], [ %154, %191 ]
  %200 = getelementptr inbounds %struct.vn_reference_s, ptr %10, i64 0, i32 1
  store i32 %199, ptr %200, align 4, !tbaa !280
  %201 = load i64, ptr %1, align 8
  %202 = and i64 %201, 65535
  %203 = icmp eq i64 %202, 141
  br i1 %203, label %204, label %215, !prof !396

204:                                              ; preds = %198
  %205 = load ptr, ptr @vn_ssa_aux_table, align 8
  %206 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 3
  %207 = load i32, ptr %206, align 8, !tbaa !199
  %208 = zext i32 %207 to i64
  %209 = getelementptr inbounds %struct.VEC_vn_ssa_aux_t_base, ptr %205, i64 0, i32 2, i64 %208
  %210 = load ptr, ptr %209, align 8, !tbaa !188
  %211 = icmp eq ptr %210, null
  br i1 %211, label %212, label %213, !prof !397

212:                                              ; preds = %204
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 180, ptr noundef nonnull @.str.1) #23
  br label %213

213:                                              ; preds = %204, %212
  %214 = load ptr, ptr %210, align 8, !tbaa !227
  br label %215

215:                                              ; preds = %198, %213
  %216 = phi ptr [ %214, %213 ], [ %1, %198 ]
  %217 = getelementptr inbounds %struct.vn_reference_s, ptr %10, i64 0, i32 6
  store ptr %216, ptr %217, align 8, !tbaa !354
  %218 = load ptr, ptr @current_info, align 8, !tbaa !188
  %219 = getelementptr inbounds %struct.vn_tables_s, ptr %218, i64 0, i32 2
  %220 = load ptr, ptr %219, align 8, !tbaa !346
  %221 = load i32, ptr %200, align 4, !tbaa !280
  %222 = tail call ptr @htab_find_slot_with_hash(ptr noundef %220, ptr noundef nonnull %10, i32 noundef %221, i32 noundef 1) #23
  %223 = load ptr, ptr %222, align 8, !tbaa !188
  %224 = icmp eq ptr %223, null
  br i1 %224, label %231, label %225, !prof !396

225:                                              ; preds = %215
  %226 = getelementptr inbounds %struct.vn_reference_s, ptr %223, i64 0, i32 5
  %227 = load ptr, ptr %226, align 8, !tbaa !188
  %228 = icmp eq ptr %227, null
  br i1 %228, label %230, label %229

229:                                              ; preds = %225
  tail call void @free(ptr noundef %227)
  br label %230

230:                                              ; preds = %225, %229
  store ptr null, ptr %226, align 8, !tbaa !188
  br label %231

231:                                              ; preds = %230, %215
  store ptr %10, ptr %222, align 8, !tbaa !188
  ret ptr %10
}

declare ptr @pool_alloc(ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress nounwind willreturn uwtable
define internal void @free_reference(ptr nocapture noundef %0) #15 !prof !400 !PGOFuncName !401 {
  %2 = getelementptr inbounds %struct.vn_reference_s, ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !188
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5, !prof !402

5:                                                ; preds = %1
  tail call void @free(ptr noundef %3)
  br label %6

6:                                                ; preds = %1, %5
  store ptr null, ptr %2, align 8, !tbaa !188
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @vn_reference_insert_pieces(ptr noundef readonly %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) local_unnamed_addr #11 !prof !403 {
  %7 = load ptr, ptr @current_info, align 8, !tbaa !188
  %8 = getelementptr inbounds %struct.vn_tables_s, ptr %7, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !395
  %10 = tail call ptr @pool_alloc(ptr noundef %9) #23
  store i32 %5, ptr %10, align 8, !tbaa !399
  %11 = icmp eq ptr %0, null
  br i1 %11, label %23, label %12, !prof !352

12:                                               ; preds = %6
  %13 = load ptr, ptr @vn_ssa_aux_table, align 8
  %14 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 3
  %15 = load i32, ptr %14, align 8, !tbaa !199
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds %struct.VEC_vn_ssa_aux_t_base, ptr %13, i64 0, i32 2, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !188
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %21, !prof !352

20:                                               ; preds = %12
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 180, ptr noundef nonnull @.str.1) #23
  br label %21

21:                                               ; preds = %12, %20
  %22 = load ptr, ptr %18, align 8, !tbaa !227
  br label %23

23:                                               ; preds = %6, %21
  %24 = phi ptr [ %22, %21 ], [ null, %6 ]
  %25 = getelementptr inbounds %struct.vn_reference_s, ptr %10, i64 0, i32 2
  store ptr %24, ptr %25, align 8, !tbaa !277
  %26 = tail call fastcc ptr @valueize_refs(ptr noundef %3)
  %27 = getelementptr inbounds %struct.vn_reference_s, ptr %10, i64 0, i32 5
  store ptr %26, ptr %27, align 8, !tbaa !263
  %28 = getelementptr inbounds %struct.vn_reference_s, ptr %10, i64 0, i32 4
  store ptr %2, ptr %28, align 8, !tbaa !344
  %29 = getelementptr inbounds %struct.vn_reference_s, ptr %10, i64 0, i32 3
  store i32 %1, ptr %29, align 8, !tbaa !345
  br label %30

30:                                               ; preds = %66, %23
  %31 = phi i64 [ %68, %66 ], [ 0, %23 ]
  %32 = phi i32 [ %67, %66 ], [ 0, %23 ]
  %33 = load ptr, ptr %27, align 8, !tbaa !263
  %34 = icmp eq ptr %33, null
  br i1 %34, label %41, label %35, !prof !265

35:                                               ; preds = %30
  %36 = load i32, ptr %33, align 8, !tbaa !266
  %37 = zext i32 %36 to i64
  %38 = icmp uge i64 %31, %37
  %39 = getelementptr inbounds %struct.VEC_vn_reference_op_s_base, ptr %33, i64 0, i32 2, i64 %31
  %40 = select i1 %38, ptr null, ptr %39, !prof !268
  br label %41

41:                                               ; preds = %35, %30
  %42 = phi ptr [ null, %30 ], [ %40, %35 ]
  %43 = phi i1 [ true, %30 ], [ %38, %35 ]
  br i1 %43, label %69, label %44, !prof !268

44:                                               ; preds = %41
  %45 = load i32, ptr %42, align 8, !tbaa !269
  %46 = tail call i32 @iterative_hash_hashval_t(i32 noundef %45, i32 noundef %32) #23
  %47 = getelementptr inbounds %struct.vn_reference_op_struct, ptr %42, i64 0, i32 2
  %48 = load ptr, ptr %47, align 8, !tbaa !271
  %49 = icmp eq ptr %48, null
  br i1 %49, label %52, label %50, !prof !272

50:                                               ; preds = %44
  %51 = tail call i32 @iterative_hash_expr(ptr noundef nonnull %48, i32 noundef %46) #23
  br label %52

52:                                               ; preds = %50, %44
  %53 = phi i32 [ %51, %50 ], [ %46, %44 ]
  %54 = getelementptr inbounds %struct.vn_reference_op_struct, ptr %42, i64 0, i32 3
  %55 = load ptr, ptr %54, align 8, !tbaa !273
  %56 = icmp eq ptr %55, null
  br i1 %56, label %59, label %57, !prof !274

57:                                               ; preds = %52
  %58 = tail call i32 @iterative_hash_expr(ptr noundef nonnull %55, i32 noundef %53) #23
  br label %59

59:                                               ; preds = %57, %52
  %60 = phi i32 [ %58, %57 ], [ %53, %52 ]
  %61 = getelementptr inbounds %struct.vn_reference_op_struct, ptr %42, i64 0, i32 4
  %62 = load ptr, ptr %61, align 8, !tbaa !275
  %63 = icmp eq ptr %62, null
  br i1 %63, label %66, label %64, !prof !274

64:                                               ; preds = %59
  %65 = tail call i32 @iterative_hash_expr(ptr noundef nonnull %62, i32 noundef %60) #23
  br label %66

66:                                               ; preds = %64, %59
  %67 = phi i32 [ %65, %64 ], [ %60, %59 ]
  %68 = add nuw i64 %31, 1
  br label %30, !llvm.loop !276

69:                                               ; preds = %41
  %70 = load ptr, ptr %25, align 8, !tbaa !277
  %71 = icmp eq ptr %70, null
  br i1 %71, label %76, label %72, !prof !278

72:                                               ; preds = %69
  %73 = getelementptr inbounds %struct.tree_ssa_name, ptr %70, i64 0, i32 3
  %74 = load i32, ptr %73, align 8, !tbaa !199
  %75 = add i32 %74, %32
  br label %76

76:                                               ; preds = %69, %72
  %77 = phi i32 [ %75, %72 ], [ %32, %69 ]
  %78 = getelementptr inbounds %struct.vn_reference_s, ptr %10, i64 0, i32 1
  store i32 %77, ptr %78, align 4, !tbaa !280
  %79 = icmp eq ptr %4, null
  br i1 %79, label %95, label %80, !prof !353

80:                                               ; preds = %76
  %81 = load i64, ptr %4, align 8
  %82 = and i64 %81, 65535
  %83 = icmp eq i64 %82, 141
  br i1 %83, label %84, label %95

84:                                               ; preds = %80
  %85 = load ptr, ptr @vn_ssa_aux_table, align 8
  %86 = getelementptr inbounds %struct.tree_ssa_name, ptr %4, i64 0, i32 3
  %87 = load i32, ptr %86, align 8, !tbaa !199
  %88 = zext i32 %87 to i64
  %89 = getelementptr inbounds %struct.VEC_vn_ssa_aux_t_base, ptr %85, i64 0, i32 2, i64 %88
  %90 = load ptr, ptr %89, align 8, !tbaa !188
  %91 = icmp eq ptr %90, null
  br i1 %91, label %92, label %93

92:                                               ; preds = %84
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 180, ptr noundef nonnull @.str.1) #23
  br label %93

93:                                               ; preds = %84, %92
  %94 = load ptr, ptr %90, align 8, !tbaa !227
  br label %95

95:                                               ; preds = %93, %80, %76
  %96 = phi ptr [ %94, %93 ], [ %4, %80 ], [ null, %76 ]
  %97 = getelementptr inbounds %struct.vn_reference_s, ptr %10, i64 0, i32 6
  store ptr %96, ptr %97, align 8, !tbaa !354
  %98 = load ptr, ptr @current_info, align 8, !tbaa !188
  %99 = getelementptr inbounds %struct.vn_tables_s, ptr %98, i64 0, i32 2
  %100 = load ptr, ptr %99, align 8, !tbaa !346
  %101 = load i32, ptr %78, align 4, !tbaa !280
  %102 = tail call ptr @htab_find_slot_with_hash(ptr noundef %100, ptr noundef nonnull %10, i32 noundef %101, i32 noundef 1) #23
  %103 = load ptr, ptr %102, align 8, !tbaa !188
  %104 = icmp eq ptr %103, null
  br i1 %104, label %106, label %105, !prof !353

105:                                              ; preds = %95
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1355, ptr noundef nonnull @.str.1) #23
  br label %106

106:                                              ; preds = %95, %105
  %107 = load ptr, ptr %102, align 8, !tbaa !188
  %108 = icmp eq ptr %107, null
  br i1 %108, label %115, label %109, !prof !353

109:                                              ; preds = %106
  %110 = getelementptr inbounds %struct.vn_reference_s, ptr %107, i64 0, i32 5
  %111 = load ptr, ptr %110, align 8, !tbaa !188
  %112 = icmp eq ptr %111, null
  br i1 %112, label %114, label %113

113:                                              ; preds = %109
  tail call void @free(ptr noundef %111)
  br label %114

114:                                              ; preds = %109, %113
  store ptr null, ptr %110, align 8, !tbaa !188
  br label %115

115:                                              ; preds = %114, %106
  store ptr %10, ptr %102, align 8, !tbaa !188
  ret ptr %10
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @vn_nary_op_compute_hash(ptr nocapture noundef %0) local_unnamed_addr #9 !prof !404 {
  %2 = getelementptr inbounds %struct.vn_nary_op_s, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 4
  %4 = lshr i32 %3, 16
  %5 = icmp ult i32 %3, 65536
  br i1 %5, label %30, label %6, !prof !405

6:                                                ; preds = %1, %24
  %7 = phi i64 [ %25, %24 ], [ 0, %1 ]
  %8 = getelementptr inbounds %struct.vn_nary_op_s, ptr %0, i64 0, i32 5, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !188
  %10 = load i64, ptr %9, align 8
  %11 = and i64 %10, 65535
  %12 = icmp eq i64 %11, 141
  br i1 %12, label %13, label %24, !prof !406

13:                                               ; preds = %6
  %14 = load ptr, ptr @vn_ssa_aux_table, align 8
  %15 = getelementptr inbounds %struct.tree_ssa_name, ptr %9, i64 0, i32 3
  %16 = load i32, ptr %15, align 8, !tbaa !199
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds %struct.VEC_vn_ssa_aux_t_base, ptr %14, i64 0, i32 2, i64 %17
  %19 = load ptr, ptr %18, align 8, !tbaa !188
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %22, !prof !407

21:                                               ; preds = %13
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 180, ptr noundef nonnull @.str.1) #23
  br label %22

22:                                               ; preds = %13, %21
  %23 = load ptr, ptr %19, align 8, !tbaa !227
  store ptr %23, ptr %8, align 8, !tbaa !188
  br label %24

24:                                               ; preds = %6, %22
  %25 = add nuw nsw i64 %7, 1
  %26 = load i32, ptr %2, align 4
  %27 = lshr i32 %26, 16
  %28 = zext nneg i32 %27 to i64
  %29 = icmp ult i64 %25, %28
  br i1 %29, label %6, label %30, !prof !408, !llvm.loop !409

30:                                               ; preds = %24, %1
  %31 = phi i32 [ %3, %1 ], [ %26, %24 ]
  %32 = phi i32 [ %4, %1 ], [ %27, %24 ]
  %33 = getelementptr inbounds %struct.vn_nary_op_s, ptr %0, i64 0, i32 1
  %34 = icmp eq i32 %32, 2
  br i1 %34, label %35, label %49, !prof !410

35:                                               ; preds = %30
  %36 = and i32 %31, 65535
  %37 = tail call zeroext i8 @commutative_tree_code(i32 noundef %36) #23
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %49, label %39, !prof !411

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.vn_nary_op_s, ptr %0, i64 0, i32 5
  %41 = load ptr, ptr %40, align 8, !tbaa !188
  %42 = getelementptr inbounds %struct.vn_nary_op_s, ptr %0, i64 0, i32 5, i64 1
  %43 = load ptr, ptr %42, align 8, !tbaa !188
  %44 = tail call zeroext i8 @tree_swap_operands_p(ptr noundef %41, ptr noundef %43, i8 noundef zeroext 0) #23
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %49, label %46, !prof !412

46:                                               ; preds = %39
  %47 = load ptr, ptr %40, align 8, !tbaa !188
  %48 = load ptr, ptr %42, align 8, !tbaa !188
  store ptr %48, ptr %40, align 8, !tbaa !188
  store ptr %47, ptr %42, align 8, !tbaa !188
  br label %49

49:                                               ; preds = %46, %39, %35, %30
  %50 = load i32, ptr %33, align 4
  %51 = and i32 %50, 65535
  %52 = tail call i32 @iterative_hash_hashval_t(i32 noundef %51, i32 noundef 0) #23
  %53 = load i32, ptr %33, align 4
  %54 = icmp ult i32 %53, 65536
  br i1 %54, label %66, label %55, !prof !405

55:                                               ; preds = %49, %55
  %56 = phi i64 [ %61, %55 ], [ 0, %49 ]
  %57 = phi i32 [ %60, %55 ], [ %52, %49 ]
  %58 = getelementptr inbounds %struct.vn_nary_op_s, ptr %0, i64 0, i32 5, i64 %56
  %59 = load ptr, ptr %58, align 8, !tbaa !188
  %60 = tail call i32 @iterative_hash_expr(ptr noundef %59, i32 noundef %57) #23
  %61 = add nuw nsw i64 %56, 1
  %62 = load i32, ptr %33, align 4
  %63 = lshr i32 %62, 16
  %64 = zext nneg i32 %63 to i64
  %65 = icmp ult i64 %61, %64
  br i1 %65, label %55, label %66, !prof !408, !llvm.loop !413

66:                                               ; preds = %55, %49
  %67 = phi i32 [ %52, %49 ], [ %60, %55 ]
  ret i32 %67
}

declare zeroext i8 @commutative_tree_code(i32 noundef) local_unnamed_addr #3

declare zeroext i8 @tree_swap_operands_p(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

declare i32 @iterative_hash_hashval_t(i32 noundef, i32 noundef) local_unnamed_addr #3

declare i32 @iterative_hash_expr(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define dso_local noundef i32 @vn_nary_op_eq(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #9 !prof !414 {
  %3 = getelementptr inbounds %struct.vn_nary_op_s, ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 8, !tbaa !415
  %5 = getelementptr inbounds %struct.vn_nary_op_s, ptr %1, i64 0, i32 2
  %6 = load i32, ptr %5, align 8, !tbaa !415
  %7 = icmp eq i32 %4, %6
  br i1 %7, label %8, label %52, !prof !417

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.vn_nary_op_s, ptr %0, i64 0, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr inbounds %struct.vn_nary_op_s, ptr %1, i64 0, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = xor i32 %12, %10
  %14 = and i32 %13, 65535
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %52, !prof !418

16:                                               ; preds = %8
  %17 = getelementptr inbounds %struct.vn_nary_op_s, ptr %0, i64 0, i32 4
  %18 = load ptr, ptr %17, align 8, !tbaa !419
  %19 = getelementptr inbounds %struct.vn_nary_op_s, ptr %1, i64 0, i32 4
  %20 = load ptr, ptr %19, align 8, !tbaa !419
  %21 = tail call zeroext i8 @types_compatible_p(ptr noundef %18, ptr noundef %20) #23
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %52, label %23, !prof !420

23:                                               ; preds = %16
  %24 = load i32, ptr %9, align 4
  %25 = icmp ult i32 %24, 65536
  br i1 %25, label %52, label %26, !prof !421

26:                                               ; preds = %23, %46
  %27 = phi i64 [ %47, %46 ], [ 0, %23 ]
  %28 = getelementptr inbounds %struct.vn_nary_op_s, ptr %0, i64 0, i32 5, i64 %27
  %29 = load ptr, ptr %28, align 8, !tbaa !188
  %30 = getelementptr inbounds %struct.vn_nary_op_s, ptr %1, i64 0, i32 5, i64 %27
  %31 = load ptr, ptr %30, align 8, !tbaa !188
  %32 = icmp eq ptr %29, %31
  br i1 %32, label %46, label %33, !prof !291

33:                                               ; preds = %26
  %34 = icmp ne ptr %29, null
  %35 = icmp ne ptr %31, null
  %36 = and i1 %34, %35
  br i1 %36, label %37, label %52, !prof !292

37:                                               ; preds = %33
  %38 = load i64, ptr %29, align 8
  %39 = load i64, ptr %31, align 8
  %40 = xor i64 %39, %38
  %41 = and i64 %40, 65535
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %52, !prof !293

43:                                               ; preds = %37
  %44 = tail call i32 @operand_equal_p(ptr noundef nonnull %29, ptr noundef nonnull %31, i32 noundef 2) #23
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %52, label %46, !prof !294

46:                                               ; preds = %43, %26
  %47 = add nuw nsw i64 %27, 1
  %48 = load i32, ptr %9, align 4
  %49 = lshr i32 %48, 16
  %50 = zext nneg i32 %49 to i64
  %51 = icmp ult i64 %47, %50
  br i1 %51, label %26, label %52, !prof !422, !llvm.loop !423

52:                                               ; preds = %46, %33, %43, %37, %23, %8, %16, %2
  %53 = phi i32 [ 0, %2 ], [ 0, %16 ], [ 0, %8 ], [ 1, %23 ], [ 0, %37 ], [ 0, %43 ], [ 0, %33 ], [ 1, %46 ]
  ret i32 %53
}

declare zeroext i8 @types_compatible_p(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define dso_local noundef zeroext i8 @expressions_equal_p(ptr noundef %0, ptr noundef %1) local_unnamed_addr #9 !prof !424 {
  %3 = icmp eq ptr %0, %1
  br i1 %3, label %18, label %4, !prof !291

4:                                                ; preds = %2
  %5 = icmp ne ptr %0, null
  %6 = icmp ne ptr %1, null
  %7 = and i1 %5, %6
  br i1 %7, label %8, label %18, !prof !292

8:                                                ; preds = %4
  %9 = load i64, ptr %0, align 8
  %10 = load i64, ptr %1, align 8
  %11 = xor i64 %10, %9
  %12 = and i64 %11, 65535
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %17, !prof !293

14:                                               ; preds = %8
  %15 = tail call i32 @operand_equal_p(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef 2) #23
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %18, !prof !294

17:                                               ; preds = %14, %8
  br label %18

18:                                               ; preds = %14, %4, %2, %17
  %19 = phi i8 [ 0, %17 ], [ 1, %2 ], [ 0, %4 ], [ 1, %14 ]
  ret i8 %19
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local ptr @vn_nary_op_lookup_pieces(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef writeonly %7) local_unnamed_addr #9 !prof !425 {
  %9 = alloca %struct.vn_nary_op_s, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %9) #23
  %10 = icmp eq ptr %7, null
  br i1 %10, label %12, label %11, !prof !426

11:                                               ; preds = %8
  store ptr null, ptr %7, align 8, !tbaa !188
  br label %12

12:                                               ; preds = %11, %8
  %13 = getelementptr inbounds %struct.vn_nary_op_s, ptr %9, i64 0, i32 1
  %14 = and i32 %1, 65535
  %15 = shl i32 %0, 16
  %16 = or disjoint i32 %14, %15
  store i32 %16, ptr %13, align 4
  %17 = getelementptr inbounds %struct.vn_nary_op_s, ptr %9, i64 0, i32 4
  store ptr %2, ptr %17, align 8, !tbaa !419
  %18 = getelementptr inbounds %struct.vn_nary_op_s, ptr %9, i64 0, i32 5
  store ptr %3, ptr %18, align 8, !tbaa !188
  %19 = getelementptr inbounds %struct.vn_nary_op_s, ptr %9, i64 0, i32 5, i64 1
  store ptr %4, ptr %19, align 8, !tbaa !188
  %20 = getelementptr inbounds %struct.vn_nary_op_s, ptr %9, i64 0, i32 5, i64 2
  store ptr %5, ptr %20, align 8, !tbaa !188
  %21 = getelementptr inbounds %struct.vn_nary_op_s, ptr %9, i64 0, i32 5, i64 3
  store ptr %6, ptr %21, align 8, !tbaa !188
  %22 = and i32 %0, 65535
  %23 = icmp ult i32 %16, 65536
  br i1 %23, label %48, label %24, !prof !405

24:                                               ; preds = %12, %42
  %25 = phi i64 [ %43, %42 ], [ 0, %12 ]
  %26 = getelementptr inbounds %struct.vn_nary_op_s, ptr %9, i64 0, i32 5, i64 %25
  %27 = load ptr, ptr %26, align 8, !tbaa !188
  %28 = load i64, ptr %27, align 8
  %29 = and i64 %28, 65535
  %30 = icmp eq i64 %29, 141
  br i1 %30, label %31, label %42, !prof !406

31:                                               ; preds = %24
  %32 = load ptr, ptr @vn_ssa_aux_table, align 8
  %33 = getelementptr inbounds %struct.tree_ssa_name, ptr %27, i64 0, i32 3
  %34 = load i32, ptr %33, align 8, !tbaa !199
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds %struct.VEC_vn_ssa_aux_t_base, ptr %32, i64 0, i32 2, i64 %35
  %37 = load ptr, ptr %36, align 8, !tbaa !188
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %40, !prof !407

39:                                               ; preds = %31
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 180, ptr noundef nonnull @.str.1) #23
  br label %40

40:                                               ; preds = %39, %31
  %41 = load ptr, ptr %37, align 8, !tbaa !227
  store ptr %41, ptr %26, align 8, !tbaa !188
  br label %42

42:                                               ; preds = %40, %24
  %43 = add nuw nsw i64 %25, 1
  %44 = load i32, ptr %13, align 4
  %45 = lshr i32 %44, 16
  %46 = zext nneg i32 %45 to i64
  %47 = icmp ult i64 %43, %46
  br i1 %47, label %24, label %48, !prof !408, !llvm.loop !409

48:                                               ; preds = %42, %12
  %49 = phi i32 [ %16, %12 ], [ %44, %42 ]
  %50 = phi i32 [ %22, %12 ], [ %45, %42 ]
  %51 = icmp eq i32 %50, 2
  br i1 %51, label %52, label %64, !prof !410

52:                                               ; preds = %48
  %53 = and i32 %49, 65535
  %54 = tail call zeroext i8 @commutative_tree_code(i32 noundef %53) #23
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %64, label %56, !prof !411

56:                                               ; preds = %52
  %57 = load ptr, ptr %18, align 8, !tbaa !188
  %58 = load ptr, ptr %19, align 8, !tbaa !188
  %59 = tail call zeroext i8 @tree_swap_operands_p(ptr noundef %57, ptr noundef %58, i8 noundef zeroext 0) #23
  %60 = icmp eq i8 %59, 0
  br i1 %60, label %64, label %61, !prof !412

61:                                               ; preds = %56
  %62 = load ptr, ptr %18, align 8, !tbaa !188
  %63 = load ptr, ptr %19, align 8, !tbaa !188
  store ptr %63, ptr %18, align 8, !tbaa !188
  store ptr %62, ptr %19, align 8, !tbaa !188
  br label %64

64:                                               ; preds = %61, %56, %52, %48
  %65 = load i32, ptr %13, align 4
  %66 = and i32 %65, 65535
  %67 = tail call i32 @iterative_hash_hashval_t(i32 noundef %66, i32 noundef 0) #23
  %68 = load i32, ptr %13, align 4
  %69 = icmp ult i32 %68, 65536
  br i1 %69, label %81, label %70, !prof !405

70:                                               ; preds = %64, %70
  %71 = phi i64 [ %76, %70 ], [ 0, %64 ]
  %72 = phi i32 [ %75, %70 ], [ %67, %64 ]
  %73 = getelementptr inbounds %struct.vn_nary_op_s, ptr %9, i64 0, i32 5, i64 %71
  %74 = load ptr, ptr %73, align 8, !tbaa !188
  %75 = tail call i32 @iterative_hash_expr(ptr noundef %74, i32 noundef %72) #23
  %76 = add nuw nsw i64 %71, 1
  %77 = load i32, ptr %13, align 4
  %78 = lshr i32 %77, 16
  %79 = zext nneg i32 %78 to i64
  %80 = icmp ult i64 %76, %79
  br i1 %80, label %70, label %81, !prof !408, !llvm.loop !413

81:                                               ; preds = %70, %64
  %82 = phi i32 [ %67, %64 ], [ %75, %70 ]
  %83 = getelementptr inbounds %struct.vn_nary_op_s, ptr %9, i64 0, i32 2
  store i32 %82, ptr %83, align 8, !tbaa !415
  %84 = load ptr, ptr @current_info, align 8, !tbaa !188
  %85 = load ptr, ptr %84, align 8, !tbaa !427
  %86 = call ptr @htab_find_slot_with_hash(ptr noundef %85, ptr noundef nonnull %9, i32 noundef %82, i32 noundef 0) #23
  %87 = icmp eq ptr %86, null
  br i1 %87, label %88, label %97, !prof !428

88:                                               ; preds = %81
  %89 = load ptr, ptr @current_info, align 8, !tbaa !188
  %90 = load ptr, ptr @optimistic_info, align 8, !tbaa !188
  %91 = icmp eq ptr %89, %90
  br i1 %91, label %92, label %97, !prof !429

92:                                               ; preds = %88
  %93 = load ptr, ptr @valid_info, align 8, !tbaa !188
  %94 = load ptr, ptr %93, align 8, !tbaa !427
  %95 = load i32, ptr %83, align 8, !tbaa !415
  %96 = call ptr @htab_find_slot_with_hash(ptr noundef %94, ptr noundef nonnull %9, i32 noundef %95, i32 noundef 0) #23
  br label %97

97:                                               ; preds = %92, %88, %81
  %98 = phi ptr [ %86, %81 ], [ %96, %92 ], [ null, %88 ]
  %99 = icmp eq ptr %98, null
  br i1 %99, label %107, label %100, !prof !428

100:                                              ; preds = %97
  br i1 %10, label %103, label %101, !prof !430

101:                                              ; preds = %100
  %102 = load ptr, ptr %98, align 8, !tbaa !188
  store ptr %102, ptr %7, align 8, !tbaa !188
  br label %103

103:                                              ; preds = %101, %100
  %104 = load ptr, ptr %98, align 8, !tbaa !188
  %105 = getelementptr inbounds %struct.vn_nary_op_s, ptr %104, i64 0, i32 3
  %106 = load ptr, ptr %105, align 8, !tbaa !431
  br label %107

107:                                              ; preds = %97, %103
  %108 = phi ptr [ %106, %103 ], [ null, %97 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %9) #23
  ret ptr %108
}

; Function Attrs: cold nounwind uwtable
define dso_local ptr @vn_nary_op_lookup(ptr nocapture noundef readonly %0, ptr noundef writeonly %1) local_unnamed_addr #13 !prof !187 {
  %3 = alloca %struct.vn_nary_op_s, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #23
  %4 = icmp eq ptr %1, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %2
  store ptr null, ptr %1, align 8, !tbaa !188
  br label %6

6:                                                ; preds = %5, %2
  %7 = load i64, ptr %0, align 8
  %8 = trunc i64 %7 to i32
  %9 = and i32 %8, 65535
  %10 = getelementptr inbounds %struct.vn_nary_op_s, ptr %3, i64 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = and i32 %11, -65536
  %13 = or disjoint i32 %12, %9
  store i32 %13, ptr %10, align 4
  %14 = and i64 %7, 65535
  %15 = getelementptr inbounds [0 x i8], ptr @tree_code_length, i64 0, i64 %14
  %16 = load i8, ptr %15, align 1, !tbaa !199
  %17 = zext i8 %16 to i32
  %18 = shl nuw nsw i32 %17, 16
  %19 = or disjoint i32 %18, %9
  store i32 %19, ptr %10, align 4
  %20 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !199
  %22 = getelementptr inbounds %struct.vn_nary_op_s, ptr %3, i64 0, i32 4
  store ptr %21, ptr %22, align 8, !tbaa !419
  %23 = icmp eq i8 %16, 0
  br i1 %23, label %29, label %24

24:                                               ; preds = %6
  %25 = getelementptr inbounds i8, ptr %3, i64 32
  %26 = getelementptr i8, ptr %0, i64 40
  %27 = zext i8 %16 to i64
  %28 = shl nuw nsw i64 %27, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %25, ptr align 8 %26, i64 %28, i1 false), !tbaa !199
  br label %29

29:                                               ; preds = %24, %6
  %30 = call i32 @vn_nary_op_compute_hash(ptr noundef nonnull %3)
  %31 = getelementptr inbounds %struct.vn_nary_op_s, ptr %3, i64 0, i32 2
  store i32 %30, ptr %31, align 8, !tbaa !415
  %32 = load ptr, ptr @current_info, align 8, !tbaa !188
  %33 = load ptr, ptr %32, align 8, !tbaa !427
  %34 = call ptr @htab_find_slot_with_hash(ptr noundef %33, ptr noundef nonnull %3, i32 noundef %30, i32 noundef 0) #23
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %45

36:                                               ; preds = %29
  %37 = load ptr, ptr @current_info, align 8, !tbaa !188
  %38 = load ptr, ptr @optimistic_info, align 8, !tbaa !188
  %39 = icmp eq ptr %37, %38
  br i1 %39, label %40, label %45

40:                                               ; preds = %36
  %41 = load ptr, ptr @valid_info, align 8, !tbaa !188
  %42 = load ptr, ptr %41, align 8, !tbaa !427
  %43 = load i32, ptr %31, align 8, !tbaa !415
  %44 = call ptr @htab_find_slot_with_hash(ptr noundef %42, ptr noundef nonnull %3, i32 noundef %43, i32 noundef 0) #23
  br label %45

45:                                               ; preds = %40, %36, %29
  %46 = phi ptr [ %34, %29 ], [ %44, %40 ], [ null, %36 ]
  %47 = icmp eq ptr %46, null
  br i1 %47, label %55, label %48

48:                                               ; preds = %45
  br i1 %4, label %51, label %49

49:                                               ; preds = %48
  %50 = load ptr, ptr %46, align 8, !tbaa !188
  store ptr %50, ptr %1, align 8, !tbaa !188
  br label %51

51:                                               ; preds = %49, %48
  %52 = load ptr, ptr %46, align 8, !tbaa !188
  %53 = getelementptr inbounds %struct.vn_nary_op_s, ptr %52, i64 0, i32 3
  %54 = load ptr, ptr %53, align 8, !tbaa !431
  br label %55

55:                                               ; preds = %45, %51
  %56 = phi ptr [ %54, %51 ], [ null, %45 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #23
  ret ptr %56
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local ptr @vn_nary_op_lookup_stmt(ptr noundef %0, ptr noundef writeonly %1) local_unnamed_addr #9 !prof !432 {
  %3 = alloca %struct.vn_nary_op_s, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #23
  %4 = icmp eq ptr %1, null
  br i1 %4, label %6, label %5, !prof !433

5:                                                ; preds = %2
  store ptr null, ptr %1, align 8, !tbaa !188
  br label %6

6:                                                ; preds = %5, %2
  %7 = load i32, ptr %0, align 8
  %8 = trunc i32 %7 to i8
  switch i8 %8, label %11 [
    i8 6, label %9
    i8 1, label %9
    i8 8, label %12
  ], !prof !434

9:                                                ; preds = %6, %6
  %10 = lshr i32 %7, 16
  br label %12

11:                                               ; preds = %6
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 1446, ptr noundef nonnull @.str.1) #23
  br label %12

12:                                               ; preds = %11, %9, %6
  %13 = phi i32 [ %10, %9 ], [ 0, %11 ], [ 59, %6 ]
  %14 = zext nneg i32 %13 to i64
  %15 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %14
  %16 = load i8, ptr %15, align 1, !tbaa !199
  %17 = icmp eq i8 %16, 3
  br i1 %17, label %18, label %38, !prof !435

18:                                               ; preds = %12
  %19 = load i32, ptr %0, align 8
  %20 = and i32 %19, 255
  %21 = add nsw i32 %20, -1
  %22 = icmp ult i32 %21, 9
  tail call void @llvm.assume(i1 %22)
  %23 = zext nneg i32 %20 to i64
  %24 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %23
  %25 = load i32, ptr %24, align 4, !tbaa !203
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %26
  %28 = load i64, ptr %27, align 8, !tbaa !235
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %31, !prof !436

30:                                               ; preds = %18
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 1622, ptr noundef nonnull @.str.1) #23
  br label %31

31:                                               ; preds = %30, %18
  %32 = getelementptr inbounds i8, ptr %0, i64 %28
  %33 = getelementptr inbounds ptr, ptr %32, i64 1
  %34 = load ptr, ptr %33, align 8, !tbaa !188
  %35 = load i64, ptr %34, align 8
  %36 = trunc i64 %35 to i32
  %37 = and i32 %36, 65535
  br label %38

38:                                               ; preds = %12, %31
  %39 = phi i32 [ %37, %31 ], [ %13, %12 ]
  %40 = getelementptr inbounds %struct.vn_nary_op_s, ptr %3, i64 0, i32 1
  %41 = load i32, ptr %40, align 4
  %42 = and i32 %41, -65536
  %43 = or disjoint i32 %42, %39
  store i32 %43, ptr %40, align 4
  %44 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 3
  %45 = load i32, ptr %44, align 4, !tbaa !199
  %46 = shl i32 %45, 16
  %47 = add i32 %46, -65536
  %48 = and i32 %39, 65535
  %49 = or disjoint i32 %47, %48
  store i32 %49, ptr %40, align 4
  %50 = load i32, ptr %0, align 8
  %51 = trunc i32 %50 to i8
  switch i8 %51, label %122 [
    i8 8, label %52
    i8 6, label %73
    i8 1, label %123
  ], !prof !247

52:                                               ; preds = %38
  %53 = and i32 %50, 255
  %54 = add nsw i32 %53, -1
  %55 = icmp ult i32 %54, 9
  tail call void @llvm.assume(i1 %55)
  %56 = zext nneg i32 %53 to i64
  %57 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %56
  %58 = load i32, ptr %57, align 4, !tbaa !203
  %59 = zext i32 %58 to i64
  %60 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %59
  %61 = load i64, ptr %60, align 8, !tbaa !235
  %62 = icmp eq i64 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %52
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 1622, ptr noundef nonnull @.str.1) #23
  br label %64

64:                                               ; preds = %63, %52
  %65 = getelementptr inbounds i8, ptr %0, i64 %61
  %66 = getelementptr inbounds ptr, ptr %65, i64 1
  %67 = load ptr, ptr %66, align 8, !tbaa !188
  %68 = getelementptr inbounds %struct.tree_common, ptr %67, i64 0, i32 2
  %69 = load ptr, ptr %68, align 8, !tbaa !199
  %70 = getelementptr inbounds %struct.tree_common, ptr %69, i64 0, i32 2
  %71 = load ptr, ptr %70, align 8, !tbaa !199
  %72 = getelementptr inbounds %struct.tree_common, ptr %71, i64 0, i32 2
  br label %123

73:                                               ; preds = %38
  %74 = lshr i32 %50, 16
  %75 = zext nneg i32 %74 to i64
  %76 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %75
  %77 = load i8, ptr %76, align 1, !tbaa !199
  %78 = icmp eq i8 %77, 3
  br i1 %78, label %79, label %98, !prof !248

79:                                               ; preds = %73
  %80 = and i32 %50, 255
  %81 = add nsw i32 %80, -1
  %82 = icmp ult i32 %81, 9
  tail call void @llvm.assume(i1 %82)
  %83 = zext nneg i32 %80 to i64
  %84 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %83
  %85 = load i32, ptr %84, align 4, !tbaa !203
  %86 = zext i32 %85 to i64
  %87 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %86
  %88 = load i64, ptr %87, align 8, !tbaa !235
  %89 = icmp eq i64 %88, 0
  br i1 %89, label %90, label %91, !prof !249

90:                                               ; preds = %79
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 1622, ptr noundef nonnull @.str.1) #23
  br label %91

91:                                               ; preds = %90, %79
  %92 = getelementptr inbounds i8, ptr %0, i64 %88
  %93 = getelementptr inbounds ptr, ptr %92, i64 1
  %94 = load ptr, ptr %93, align 8, !tbaa !188
  %95 = load i64, ptr %94, align 8
  %96 = trunc i64 %95 to i32
  %97 = and i32 %96, 65535
  br label %98

98:                                               ; preds = %91, %73
  %99 = phi i32 [ %97, %91 ], [ %74, %73 ]
  %100 = icmp eq i32 %99, 66
  br i1 %100, label %101, label %119, !prof !250

101:                                              ; preds = %98
  %102 = load i32, ptr %0, align 8
  %103 = and i32 %102, 255
  %104 = add nsw i32 %103, -1
  %105 = icmp ult i32 %104, 9
  tail call void @llvm.assume(i1 %105)
  %106 = zext nneg i32 %103 to i64
  %107 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %106
  %108 = load i32, ptr %107, align 4, !tbaa !203
  %109 = zext i32 %108 to i64
  %110 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %109
  %111 = load i64, ptr %110, align 8, !tbaa !235
  %112 = icmp eq i64 %111, 0
  br i1 %112, label %113, label %114, !prof !251

113:                                              ; preds = %101
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 1622, ptr noundef nonnull @.str.1) #23
  br label %114

114:                                              ; preds = %113, %101
  %115 = getelementptr inbounds i8, ptr %0, i64 %111
  %116 = getelementptr inbounds ptr, ptr %115, i64 1
  %117 = load ptr, ptr %116, align 8, !tbaa !188
  %118 = getelementptr inbounds %struct.tree_common, ptr %117, i64 0, i32 2
  br label %123

119:                                              ; preds = %98
  %120 = tail call ptr @gimple_get_lhs(ptr noundef nonnull %0) #23
  %121 = getelementptr inbounds %struct.tree_common, ptr %120, i64 0, i32 2
  br label %123

122:                                              ; preds = %38
  br label %123

123:                                              ; preds = %38, %64, %114, %119, %122
  %124 = phi ptr [ getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), %122 ], [ %72, %64 ], [ %118, %114 ], [ %121, %119 ], [ getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), %38 ]
  %125 = load ptr, ptr %124, align 8, !tbaa !199
  %126 = getelementptr inbounds %struct.vn_nary_op_s, ptr %3, i64 0, i32 4
  store ptr %125, ptr %126, align 8, !tbaa !419
  %127 = load i32, ptr %40, align 4
  %128 = lshr i32 %127, 16
  %129 = icmp ult i32 %127, 65536
  br i1 %129, label %157, label %130, !prof !437

130:                                              ; preds = %123, %150
  %131 = phi i64 [ %132, %150 ], [ 0, %123 ]
  %132 = add nuw nsw i64 %131, 1
  %133 = load i32, ptr %0, align 8
  %134 = and i32 %133, 255
  %135 = add nsw i32 %134, -10
  %136 = icmp ult i32 %135, -9
  br i1 %136, label %150, label %137, !prof !438

137:                                              ; preds = %130
  %138 = zext nneg i32 %134 to i64
  %139 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %138
  %140 = load i32, ptr %139, align 4, !tbaa !203
  %141 = zext i32 %140 to i64
  %142 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %141
  %143 = load i64, ptr %142, align 8, !tbaa !235
  %144 = icmp eq i64 %143, 0
  br i1 %144, label %145, label %146, !prof !438

145:                                              ; preds = %137
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 1622, ptr noundef nonnull @.str.1) #23
  br label %146

146:                                              ; preds = %145, %137
  %147 = getelementptr inbounds i8, ptr %0, i64 %143
  %148 = getelementptr inbounds ptr, ptr %147, i64 %132
  %149 = load ptr, ptr %148, align 8, !tbaa !188
  br label %150

150:                                              ; preds = %130, %146
  %151 = phi ptr [ %149, %146 ], [ null, %130 ]
  %152 = getelementptr inbounds %struct.vn_nary_op_s, ptr %3, i64 0, i32 5, i64 %131
  store ptr %151, ptr %152, align 8, !tbaa !188
  %153 = load i32, ptr %40, align 4
  %154 = lshr i32 %153, 16
  %155 = zext nneg i32 %154 to i64
  %156 = icmp ult i64 %132, %155
  br i1 %156, label %130, label %157, !prof !439, !llvm.loop !440

157:                                              ; preds = %150, %123
  %158 = phi i32 [ %127, %123 ], [ %153, %150 ]
  %159 = phi i32 [ %128, %123 ], [ %154, %150 ]
  %160 = trunc i32 %158 to i16
  switch i16 %160, label %166 [
    i16 43, label %161
    i16 44, label %161
    i16 118, label %161
  ], !prof !441

161:                                              ; preds = %157, %157, %157
  %162 = getelementptr inbounds %struct.vn_nary_op_s, ptr %3, i64 0, i32 5
  %163 = load ptr, ptr %162, align 8, !tbaa !188
  %164 = getelementptr inbounds %struct.tree_exp, ptr %163, i64 0, i32 3
  %165 = load ptr, ptr %164, align 8, !tbaa !199
  store ptr %165, ptr %162, align 8, !tbaa !188
  br label %166

166:                                              ; preds = %157, %161
  %167 = icmp ult i32 %158, 65536
  br i1 %167, label %192, label %168, !prof !405

168:                                              ; preds = %166, %186
  %169 = phi i64 [ %187, %186 ], [ 0, %166 ]
  %170 = getelementptr inbounds %struct.vn_nary_op_s, ptr %3, i64 0, i32 5, i64 %169
  %171 = load ptr, ptr %170, align 8, !tbaa !188
  %172 = load i64, ptr %171, align 8
  %173 = and i64 %172, 65535
  %174 = icmp eq i64 %173, 141
  br i1 %174, label %175, label %186, !prof !406

175:                                              ; preds = %168
  %176 = load ptr, ptr @vn_ssa_aux_table, align 8
  %177 = getelementptr inbounds %struct.tree_ssa_name, ptr %171, i64 0, i32 3
  %178 = load i32, ptr %177, align 8, !tbaa !199
  %179 = zext i32 %178 to i64
  %180 = getelementptr inbounds %struct.VEC_vn_ssa_aux_t_base, ptr %176, i64 0, i32 2, i64 %179
  %181 = load ptr, ptr %180, align 8, !tbaa !188
  %182 = icmp eq ptr %181, null
  br i1 %182, label %183, label %184, !prof !407

183:                                              ; preds = %175
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 180, ptr noundef nonnull @.str.1) #23
  br label %184

184:                                              ; preds = %183, %175
  %185 = load ptr, ptr %181, align 8, !tbaa !227
  store ptr %185, ptr %170, align 8, !tbaa !188
  br label %186

186:                                              ; preds = %184, %168
  %187 = add nuw nsw i64 %169, 1
  %188 = load i32, ptr %40, align 4
  %189 = lshr i32 %188, 16
  %190 = zext nneg i32 %189 to i64
  %191 = icmp ult i64 %187, %190
  br i1 %191, label %168, label %192, !prof !408, !llvm.loop !409

192:                                              ; preds = %186, %166
  %193 = phi i32 [ %158, %166 ], [ %188, %186 ]
  %194 = phi i32 [ %159, %166 ], [ %189, %186 ]
  %195 = icmp eq i32 %194, 2
  br i1 %195, label %196, label %210, !prof !410

196:                                              ; preds = %192
  %197 = and i32 %193, 65535
  %198 = tail call zeroext i8 @commutative_tree_code(i32 noundef %197) #23
  %199 = icmp eq i8 %198, 0
  br i1 %199, label %210, label %200, !prof !411

200:                                              ; preds = %196
  %201 = getelementptr inbounds %struct.vn_nary_op_s, ptr %3, i64 0, i32 5
  %202 = load ptr, ptr %201, align 8, !tbaa !188
  %203 = getelementptr inbounds %struct.vn_nary_op_s, ptr %3, i64 0, i32 5, i64 1
  %204 = load ptr, ptr %203, align 8, !tbaa !188
  %205 = tail call zeroext i8 @tree_swap_operands_p(ptr noundef %202, ptr noundef %204, i8 noundef zeroext 0) #23
  %206 = icmp eq i8 %205, 0
  br i1 %206, label %210, label %207, !prof !412

207:                                              ; preds = %200
  %208 = load ptr, ptr %201, align 8, !tbaa !188
  %209 = load ptr, ptr %203, align 8, !tbaa !188
  store ptr %209, ptr %201, align 8, !tbaa !188
  store ptr %208, ptr %203, align 8, !tbaa !188
  br label %210

210:                                              ; preds = %207, %200, %196, %192
  %211 = load i32, ptr %40, align 4
  %212 = and i32 %211, 65535
  %213 = tail call i32 @iterative_hash_hashval_t(i32 noundef %212, i32 noundef 0) #23
  %214 = load i32, ptr %40, align 4
  %215 = icmp ult i32 %214, 65536
  br i1 %215, label %227, label %216, !prof !405

216:                                              ; preds = %210, %216
  %217 = phi i64 [ %222, %216 ], [ 0, %210 ]
  %218 = phi i32 [ %221, %216 ], [ %213, %210 ]
  %219 = getelementptr inbounds %struct.vn_nary_op_s, ptr %3, i64 0, i32 5, i64 %217
  %220 = load ptr, ptr %219, align 8, !tbaa !188
  %221 = tail call i32 @iterative_hash_expr(ptr noundef %220, i32 noundef %218) #23
  %222 = add nuw nsw i64 %217, 1
  %223 = load i32, ptr %40, align 4
  %224 = lshr i32 %223, 16
  %225 = zext nneg i32 %224 to i64
  %226 = icmp ult i64 %222, %225
  br i1 %226, label %216, label %227, !prof !408, !llvm.loop !413

227:                                              ; preds = %216, %210
  %228 = phi i32 [ %213, %210 ], [ %221, %216 ]
  %229 = getelementptr inbounds %struct.vn_nary_op_s, ptr %3, i64 0, i32 2
  store i32 %228, ptr %229, align 8, !tbaa !415
  %230 = load ptr, ptr @current_info, align 8, !tbaa !188
  %231 = load ptr, ptr %230, align 8, !tbaa !427
  %232 = call ptr @htab_find_slot_with_hash(ptr noundef %231, ptr noundef nonnull %3, i32 noundef %228, i32 noundef 0) #23
  %233 = icmp eq ptr %232, null
  br i1 %233, label %234, label %243, !prof !442

234:                                              ; preds = %227
  %235 = load ptr, ptr @current_info, align 8, !tbaa !188
  %236 = load ptr, ptr @optimistic_info, align 8, !tbaa !188
  %237 = icmp eq ptr %235, %236
  br i1 %237, label %238, label %243, !prof !443

238:                                              ; preds = %234
  %239 = load ptr, ptr @valid_info, align 8, !tbaa !188
  %240 = load ptr, ptr %239, align 8, !tbaa !427
  %241 = load i32, ptr %229, align 8, !tbaa !415
  %242 = call ptr @htab_find_slot_with_hash(ptr noundef %240, ptr noundef nonnull %3, i32 noundef %241, i32 noundef 0) #23
  br label %243

243:                                              ; preds = %238, %234, %227
  %244 = phi ptr [ %232, %227 ], [ %242, %238 ], [ null, %234 ]
  %245 = icmp eq ptr %244, null
  br i1 %245, label %253, label %246, !prof !442

246:                                              ; preds = %243
  br i1 %4, label %249, label %247, !prof !444

247:                                              ; preds = %246
  %248 = load ptr, ptr %244, align 8, !tbaa !188
  store ptr %248, ptr %1, align 8, !tbaa !188
  br label %249

249:                                              ; preds = %247, %246
  %250 = load ptr, ptr %244, align 8, !tbaa !188
  %251 = getelementptr inbounds %struct.vn_nary_op_s, ptr %250, i64 0, i32 3
  %252 = load ptr, ptr %251, align 8, !tbaa !431
  br label %253

253:                                              ; preds = %243, %249
  %254 = phi ptr [ %252, %249 ], [ null, %243 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #23
  ret ptr %254
}

; Function Attrs: nounwind uwtable
define dso_local ptr @vn_nary_op_insert_pieces(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, i32 noundef %8) local_unnamed_addr #11 !prof !404 {
  %10 = sub i32 4, %0
  %11 = zext i32 %10 to i64
  %12 = shl nuw nsw i64 %11, 3
  %13 = sub nsw i64 64, %12
  %14 = load ptr, ptr @current_info, align 8, !tbaa !188
  %15 = getelementptr inbounds %struct.vn_tables_s, ptr %14, i64 0, i32 3, i32 5
  store i64 %13, ptr %15, align 8, !tbaa !445
  %16 = getelementptr inbounds %struct.vn_tables_s, ptr %14, i64 0, i32 3, i32 4
  %17 = load ptr, ptr %16, align 8, !tbaa !446
  %18 = getelementptr inbounds %struct.vn_tables_s, ptr %14, i64 0, i32 3, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !447
  %20 = ptrtoint ptr %17 to i64
  %21 = ptrtoint ptr %19 to i64
  %22 = sub i64 %20, %21
  %23 = icmp slt i64 %22, %13
  br i1 %23, label %24, label %27, !prof !448

24:                                               ; preds = %9
  %25 = getelementptr inbounds %struct.vn_tables_s, ptr %14, i64 0, i32 3
  %26 = trunc i64 %13 to i32
  tail call void @_obstack_newchunk(ptr noundef nonnull %25, i32 noundef %26) #23
  br label %27

27:                                               ; preds = %9, %24
  %28 = load ptr, ptr @current_info, align 8, !tbaa !188
  %29 = getelementptr inbounds %struct.vn_tables_s, ptr %28, i64 0, i32 3, i32 5
  %30 = load i64, ptr %29, align 8, !tbaa !445
  %31 = getelementptr inbounds %struct.vn_tables_s, ptr %28, i64 0, i32 3, i32 3
  %32 = load ptr, ptr %31, align 8, !tbaa !447
  %33 = getelementptr inbounds i8, ptr %32, i64 %30
  store ptr %33, ptr %31, align 8, !tbaa !447
  %34 = getelementptr inbounds %struct.vn_tables_s, ptr %28, i64 0, i32 3, i32 2
  %35 = load ptr, ptr %34, align 8, !tbaa !449
  %36 = icmp eq ptr %33, %35
  br i1 %36, label %37, label %41, !prof !429

37:                                               ; preds = %27
  %38 = getelementptr inbounds %struct.vn_tables_s, ptr %28, i64 0, i32 3, i32 10
  %39 = load i8, ptr %38, align 8
  %40 = or i8 %39, 2
  store i8 %40, ptr %38, align 8
  br label %41

41:                                               ; preds = %27, %37
  %42 = load ptr, ptr %34, align 8, !tbaa !449
  %43 = ptrtoint ptr %42 to i64
  store i64 %43, ptr %29, align 8, !tbaa !445
  %44 = load ptr, ptr %31, align 8, !tbaa !447
  %45 = ptrtoint ptr %44 to i64
  %46 = getelementptr inbounds %struct.vn_tables_s, ptr %28, i64 0, i32 3, i32 6
  %47 = load i32, ptr %46, align 8, !tbaa !450
  %48 = sext i32 %47 to i64
  %49 = add nsw i64 %48, %45
  %50 = xor i32 %47, -1
  %51 = sext i32 %50 to i64
  %52 = and i64 %49, %51
  %53 = inttoptr i64 %52 to ptr
  store ptr %53, ptr %31, align 8, !tbaa !447
  %54 = getelementptr inbounds %struct.vn_tables_s, ptr %28, i64 0, i32 3, i32 1
  %55 = load ptr, ptr %54, align 8, !tbaa !451
  %56 = ptrtoint ptr %55 to i64
  %57 = sub i64 %52, %56
  %58 = getelementptr inbounds %struct.vn_tables_s, ptr %28, i64 0, i32 3, i32 4
  %59 = load ptr, ptr %58, align 8, !tbaa !446
  %60 = ptrtoint ptr %59 to i64
  %61 = sub i64 %60, %56
  %62 = icmp sgt i64 %57, %61
  br i1 %62, label %63, label %64, !prof !429

63:                                               ; preds = %41
  store ptr %59, ptr %31, align 8, !tbaa !447
  br label %64

64:                                               ; preds = %41, %63
  %65 = load ptr, ptr %31, align 8, !tbaa !447
  store ptr %65, ptr %34, align 8, !tbaa !449
  store i32 %8, ptr %42, align 8, !tbaa !452
  %66 = getelementptr inbounds %struct.vn_nary_op_s, ptr %42, i64 0, i32 1
  %67 = and i32 %1, 65535
  %68 = shl i32 %0, 16
  %69 = or disjoint i32 %67, %68
  store i32 %69, ptr %66, align 4
  %70 = getelementptr inbounds %struct.vn_nary_op_s, ptr %42, i64 0, i32 4
  store ptr %2, ptr %70, align 8, !tbaa !419
  %71 = icmp eq i32 %0, 0
  br i1 %71, label %74, label %72, !prof !429

72:                                               ; preds = %64
  %73 = getelementptr inbounds %struct.vn_nary_op_s, ptr %42, i64 0, i32 5
  store ptr %3, ptr %73, align 8, !tbaa !188
  br label %74

74:                                               ; preds = %72, %64
  %75 = icmp ugt i32 %0, 1
  br i1 %75, label %76, label %78, !prof !453

76:                                               ; preds = %74
  %77 = getelementptr inbounds %struct.vn_nary_op_s, ptr %42, i64 0, i32 5, i64 1
  store ptr %4, ptr %77, align 8, !tbaa !188
  br label %78

78:                                               ; preds = %76, %74
  %79 = icmp ugt i32 %0, 2
  br i1 %79, label %80, label %82, !prof !429

80:                                               ; preds = %78
  %81 = getelementptr inbounds %struct.vn_nary_op_s, ptr %42, i64 0, i32 5, i64 2
  store ptr %5, ptr %81, align 8, !tbaa !188
  br label %82

82:                                               ; preds = %80, %78
  %83 = icmp ugt i32 %0, 3
  br i1 %83, label %84, label %86, !prof !429

84:                                               ; preds = %82
  %85 = getelementptr inbounds %struct.vn_nary_op_s, ptr %42, i64 0, i32 5, i64 3
  store ptr %6, ptr %85, align 8, !tbaa !188
  br label %86

86:                                               ; preds = %84, %82
  %87 = getelementptr inbounds %struct.vn_nary_op_s, ptr %42, i64 0, i32 3
  store ptr %7, ptr %87, align 8, !tbaa !431
  %88 = tail call i32 @vn_nary_op_compute_hash(ptr noundef nonnull %42)
  %89 = getelementptr inbounds %struct.vn_nary_op_s, ptr %42, i64 0, i32 2
  store i32 %88, ptr %89, align 8, !tbaa !415
  %90 = load ptr, ptr @current_info, align 8, !tbaa !188
  %91 = load ptr, ptr %90, align 8, !tbaa !427
  %92 = tail call ptr @htab_find_slot_with_hash(ptr noundef %91, ptr noundef nonnull %42, i32 noundef %88, i32 noundef 1) #23
  %93 = load ptr, ptr %92, align 8, !tbaa !188
  %94 = icmp eq ptr %93, null
  br i1 %94, label %96, label %95, !prof !454

95:                                               ; preds = %86
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1561, ptr noundef nonnull @.str.1) #23
  br label %96

96:                                               ; preds = %86, %95
  store ptr %42, ptr %92, align 8, !tbaa !188
  ret ptr %42
}

; Function Attrs: cold nounwind uwtable
define dso_local ptr @vn_nary_op_insert(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #13 !prof !187 {
  %3 = load i64, ptr %0, align 8
  %4 = and i64 %3, 65535
  %5 = getelementptr inbounds [0 x i8], ptr @tree_code_length, i64 0, i64 %4
  %6 = load i8, ptr %5, align 1, !tbaa !199
  %7 = zext i8 %6 to i32
  %8 = sub nsw i32 4, %7
  %9 = zext i32 %8 to i64
  %10 = shl nuw nsw i64 %9, 3
  %11 = sub nsw i64 64, %10
  %12 = load ptr, ptr @current_info, align 8, !tbaa !188
  %13 = getelementptr inbounds %struct.vn_tables_s, ptr %12, i64 0, i32 3, i32 5
  store i64 %11, ptr %13, align 8, !tbaa !445
  %14 = getelementptr inbounds %struct.vn_tables_s, ptr %12, i64 0, i32 3, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !446
  %16 = getelementptr inbounds %struct.vn_tables_s, ptr %12, i64 0, i32 3, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !447
  %18 = ptrtoint ptr %15 to i64
  %19 = ptrtoint ptr %17 to i64
  %20 = sub i64 %18, %19
  %21 = icmp slt i64 %20, %11
  br i1 %21, label %22, label %25

22:                                               ; preds = %2
  %23 = getelementptr inbounds %struct.vn_tables_s, ptr %12, i64 0, i32 3
  %24 = trunc i64 %11 to i32
  tail call void @_obstack_newchunk(ptr noundef nonnull %23, i32 noundef %24) #23
  br label %25

25:                                               ; preds = %2, %22
  %26 = load ptr, ptr @current_info, align 8, !tbaa !188
  %27 = getelementptr inbounds %struct.vn_tables_s, ptr %26, i64 0, i32 3, i32 5
  %28 = load i64, ptr %27, align 8, !tbaa !445
  %29 = getelementptr inbounds %struct.vn_tables_s, ptr %26, i64 0, i32 3, i32 3
  %30 = load ptr, ptr %29, align 8, !tbaa !447
  %31 = getelementptr inbounds i8, ptr %30, i64 %28
  store ptr %31, ptr %29, align 8, !tbaa !447
  %32 = getelementptr inbounds %struct.vn_tables_s, ptr %26, i64 0, i32 3, i32 2
  %33 = load ptr, ptr %32, align 8, !tbaa !449
  %34 = icmp eq ptr %31, %33
  br i1 %34, label %35, label %39

35:                                               ; preds = %25
  %36 = getelementptr inbounds %struct.vn_tables_s, ptr %26, i64 0, i32 3, i32 10
  %37 = load i8, ptr %36, align 8
  %38 = or i8 %37, 2
  store i8 %38, ptr %36, align 8
  br label %39

39:                                               ; preds = %25, %35
  %40 = load ptr, ptr %32, align 8, !tbaa !449
  %41 = ptrtoint ptr %40 to i64
  store i64 %41, ptr %27, align 8, !tbaa !445
  %42 = load ptr, ptr %29, align 8, !tbaa !447
  %43 = ptrtoint ptr %42 to i64
  %44 = getelementptr inbounds %struct.vn_tables_s, ptr %26, i64 0, i32 3, i32 6
  %45 = load i32, ptr %44, align 8, !tbaa !450
  %46 = sext i32 %45 to i64
  %47 = add nsw i64 %46, %43
  %48 = xor i32 %45, -1
  %49 = sext i32 %48 to i64
  %50 = and i64 %47, %49
  %51 = inttoptr i64 %50 to ptr
  store ptr %51, ptr %29, align 8, !tbaa !447
  %52 = getelementptr inbounds %struct.vn_tables_s, ptr %26, i64 0, i32 3, i32 1
  %53 = load ptr, ptr %52, align 8, !tbaa !451
  %54 = ptrtoint ptr %53 to i64
  %55 = sub i64 %50, %54
  %56 = getelementptr inbounds %struct.vn_tables_s, ptr %26, i64 0, i32 3, i32 4
  %57 = load ptr, ptr %56, align 8, !tbaa !446
  %58 = ptrtoint ptr %57 to i64
  %59 = sub i64 %58, %54
  %60 = icmp sgt i64 %55, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %39
  store ptr %57, ptr %29, align 8, !tbaa !447
  br label %62

62:                                               ; preds = %39, %61
  %63 = load ptr, ptr %29, align 8, !tbaa !447
  store ptr %63, ptr %32, align 8, !tbaa !449
  %64 = load ptr, ptr @vn_ssa_aux_table, align 8
  %65 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 3
  %66 = load i32, ptr %65, align 8, !tbaa !199
  %67 = zext i32 %66 to i64
  %68 = getelementptr inbounds %struct.VEC_vn_ssa_aux_t_base, ptr %64, i64 0, i32 2, i64 %67
  %69 = load ptr, ptr %68, align 8, !tbaa !188
  %70 = icmp eq ptr %69, null
  br i1 %70, label %71, label %72

71:                                               ; preds = %62
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 180, ptr noundef nonnull @.str.1) #23
  br label %72

72:                                               ; preds = %62, %71
  %73 = getelementptr inbounds %struct.vn_ssa_aux, ptr %69, i64 0, i32 2
  %74 = load i32, ptr %73, align 8, !tbaa !398
  store i32 %74, ptr %40, align 8, !tbaa !452
  %75 = load i64, ptr %0, align 8
  %76 = trunc i64 %75 to i32
  %77 = and i32 %76, 65535
  %78 = getelementptr inbounds %struct.vn_nary_op_s, ptr %40, i64 0, i32 1
  %79 = shl nuw nsw i32 %7, 16
  %80 = or disjoint i32 %77, %79
  store i32 %80, ptr %78, align 4
  %81 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %82 = load ptr, ptr %81, align 8, !tbaa !199
  %83 = getelementptr inbounds %struct.vn_nary_op_s, ptr %40, i64 0, i32 4
  store ptr %82, ptr %83, align 8, !tbaa !419
  %84 = icmp eq i8 %6, 0
  br i1 %84, label %95, label %85

85:                                               ; preds = %72, %85
  %86 = phi i64 [ %90, %85 ], [ 0, %72 ]
  %87 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3, i64 %86
  %88 = load ptr, ptr %87, align 8, !tbaa !199
  %89 = getelementptr inbounds %struct.vn_nary_op_s, ptr %40, i64 0, i32 5, i64 %86
  store ptr %88, ptr %89, align 8, !tbaa !188
  %90 = add nuw nsw i64 %86, 1
  %91 = load i32, ptr %78, align 4
  %92 = lshr i32 %91, 16
  %93 = zext nneg i32 %92 to i64
  %94 = icmp ult i64 %90, %93
  br i1 %94, label %85, label %95, !llvm.loop !455

95:                                               ; preds = %85, %72
  %96 = getelementptr inbounds %struct.vn_nary_op_s, ptr %40, i64 0, i32 3
  store ptr %1, ptr %96, align 8, !tbaa !431
  %97 = tail call i32 @vn_nary_op_compute_hash(ptr noundef nonnull %40)
  %98 = getelementptr inbounds %struct.vn_nary_op_s, ptr %40, i64 0, i32 2
  store i32 %97, ptr %98, align 8, !tbaa !415
  %99 = load ptr, ptr @current_info, align 8, !tbaa !188
  %100 = load ptr, ptr %99, align 8, !tbaa !427
  %101 = tail call ptr @htab_find_slot_with_hash(ptr noundef %100, ptr noundef nonnull %40, i32 noundef %97, i32 noundef 1) #23
  %102 = load ptr, ptr %101, align 8, !tbaa !188
  %103 = icmp eq ptr %102, null
  br i1 %103, label %105, label %104

104:                                              ; preds = %95
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1593, ptr noundef nonnull @.str.1) #23
  br label %105

105:                                              ; preds = %95, %104
  store ptr %40, ptr %101, align 8, !tbaa !188
  ret ptr %40
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local ptr @vn_nary_op_insert_stmt(ptr noundef %0, ptr noundef %1) local_unnamed_addr #9 !prof !456 {
  %3 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 3
  %4 = load i32, ptr %3, align 4, !tbaa !199
  %5 = sub i32 5, %4
  %6 = zext i32 %5 to i64
  %7 = shl nuw nsw i64 %6, 3
  %8 = sub nsw i64 64, %7
  %9 = load ptr, ptr @current_info, align 8, !tbaa !188
  %10 = getelementptr inbounds %struct.vn_tables_s, ptr %9, i64 0, i32 3, i32 5
  store i64 %8, ptr %10, align 8, !tbaa !445
  %11 = getelementptr inbounds %struct.vn_tables_s, ptr %9, i64 0, i32 3, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !446
  %13 = getelementptr inbounds %struct.vn_tables_s, ptr %9, i64 0, i32 3, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !447
  %15 = ptrtoint ptr %12 to i64
  %16 = ptrtoint ptr %14 to i64
  %17 = sub i64 %15, %16
  %18 = icmp slt i64 %17, %8
  br i1 %18, label %19, label %22, !prof !457

19:                                               ; preds = %2
  %20 = getelementptr inbounds %struct.vn_tables_s, ptr %9, i64 0, i32 3
  %21 = trunc i64 %8 to i32
  tail call void @_obstack_newchunk(ptr noundef nonnull %20, i32 noundef %21) #23
  br label %22

22:                                               ; preds = %2, %19
  %23 = load ptr, ptr @current_info, align 8, !tbaa !188
  %24 = getelementptr inbounds %struct.vn_tables_s, ptr %23, i64 0, i32 3, i32 5
  %25 = load i64, ptr %24, align 8, !tbaa !445
  %26 = getelementptr inbounds %struct.vn_tables_s, ptr %23, i64 0, i32 3, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !447
  %28 = getelementptr inbounds i8, ptr %27, i64 %25
  store ptr %28, ptr %26, align 8, !tbaa !447
  %29 = getelementptr inbounds %struct.vn_tables_s, ptr %23, i64 0, i32 3, i32 2
  %30 = load ptr, ptr %29, align 8, !tbaa !449
  %31 = icmp eq ptr %28, %30
  br i1 %31, label %32, label %36, !prof !443

32:                                               ; preds = %22
  %33 = getelementptr inbounds %struct.vn_tables_s, ptr %23, i64 0, i32 3, i32 10
  %34 = load i8, ptr %33, align 8
  %35 = or i8 %34, 2
  store i8 %35, ptr %33, align 8
  br label %36

36:                                               ; preds = %22, %32
  %37 = load ptr, ptr %29, align 8, !tbaa !449
  %38 = ptrtoint ptr %37 to i64
  store i64 %38, ptr %24, align 8, !tbaa !445
  %39 = load ptr, ptr %26, align 8, !tbaa !447
  %40 = ptrtoint ptr %39 to i64
  %41 = getelementptr inbounds %struct.vn_tables_s, ptr %23, i64 0, i32 3, i32 6
  %42 = load i32, ptr %41, align 8, !tbaa !450
  %43 = sext i32 %42 to i64
  %44 = add nsw i64 %43, %40
  %45 = xor i32 %42, -1
  %46 = sext i32 %45 to i64
  %47 = and i64 %44, %46
  %48 = inttoptr i64 %47 to ptr
  store ptr %48, ptr %26, align 8, !tbaa !447
  %49 = getelementptr inbounds %struct.vn_tables_s, ptr %23, i64 0, i32 3, i32 1
  %50 = load ptr, ptr %49, align 8, !tbaa !451
  %51 = ptrtoint ptr %50 to i64
  %52 = sub i64 %47, %51
  %53 = getelementptr inbounds %struct.vn_tables_s, ptr %23, i64 0, i32 3, i32 4
  %54 = load ptr, ptr %53, align 8, !tbaa !446
  %55 = ptrtoint ptr %54 to i64
  %56 = sub i64 %55, %51
  %57 = icmp sgt i64 %52, %56
  br i1 %57, label %58, label %59, !prof !443

58:                                               ; preds = %36
  store ptr %54, ptr %26, align 8, !tbaa !447
  br label %59

59:                                               ; preds = %36, %58
  %60 = load ptr, ptr %26, align 8, !tbaa !447
  store ptr %60, ptr %29, align 8, !tbaa !449
  %61 = load ptr, ptr @vn_ssa_aux_table, align 8
  %62 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 3
  %63 = load i32, ptr %62, align 8, !tbaa !199
  %64 = zext i32 %63 to i64
  %65 = getelementptr inbounds %struct.VEC_vn_ssa_aux_t_base, ptr %61, i64 0, i32 2, i64 %64
  %66 = load ptr, ptr %65, align 8, !tbaa !188
  %67 = icmp eq ptr %66, null
  br i1 %67, label %68, label %69, !prof !443

68:                                               ; preds = %59
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 180, ptr noundef nonnull @.str.1) #23
  br label %69

69:                                               ; preds = %59, %68
  %70 = getelementptr inbounds %struct.vn_ssa_aux, ptr %66, i64 0, i32 2
  %71 = load i32, ptr %70, align 8, !tbaa !398
  store i32 %71, ptr %37, align 8, !tbaa !452
  %72 = load i32, ptr %0, align 8
  %73 = trunc i32 %72 to i8
  switch i8 %73, label %76 [
    i8 6, label %74
    i8 1, label %74
    i8 8, label %77
  ], !prof !458

74:                                               ; preds = %69, %69
  %75 = lshr i32 %72, 16
  br label %77

76:                                               ; preds = %69
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 1446, ptr noundef nonnull @.str.1) #23
  br label %77

77:                                               ; preds = %76, %74, %69
  %78 = phi i32 [ %75, %74 ], [ 0, %76 ], [ 59, %69 ]
  %79 = zext nneg i32 %78 to i64
  %80 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %79
  %81 = load i8, ptr %80, align 1, !tbaa !199
  %82 = icmp eq i8 %81, 3
  br i1 %82, label %83, label %103, !prof !459

83:                                               ; preds = %77
  %84 = load i32, ptr %0, align 8
  %85 = and i32 %84, 255
  %86 = add nsw i32 %85, -1
  %87 = icmp ult i32 %86, 9
  tail call void @llvm.assume(i1 %87)
  %88 = zext nneg i32 %85 to i64
  %89 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %88
  %90 = load i32, ptr %89, align 4, !tbaa !203
  %91 = zext i32 %90 to i64
  %92 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %91
  %93 = load i64, ptr %92, align 8, !tbaa !235
  %94 = icmp eq i64 %93, 0
  br i1 %94, label %95, label %96, !prof !436

95:                                               ; preds = %83
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 1622, ptr noundef nonnull @.str.1) #23
  br label %96

96:                                               ; preds = %95, %83
  %97 = getelementptr inbounds i8, ptr %0, i64 %93
  %98 = getelementptr inbounds ptr, ptr %97, i64 1
  %99 = load ptr, ptr %98, align 8, !tbaa !188
  %100 = load i64, ptr %99, align 8
  %101 = trunc i64 %100 to i32
  %102 = and i32 %101, 65535
  br label %103

103:                                              ; preds = %77, %96
  %104 = phi i32 [ %102, %96 ], [ %78, %77 ]
  %105 = getelementptr inbounds %struct.vn_nary_op_s, ptr %37, i64 0, i32 1
  %106 = shl i32 %4, 16
  %107 = add i32 %106, -65536
  %108 = add nuw nsw i32 %104, %107
  store i32 %108, ptr %105, align 4
  %109 = load i32, ptr %0, align 8
  %110 = trunc i32 %109 to i8
  switch i8 %110, label %181 [
    i8 8, label %111
    i8 6, label %132
    i8 1, label %182
  ], !prof !247

111:                                              ; preds = %103
  %112 = and i32 %109, 255
  %113 = add nsw i32 %112, -1
  %114 = icmp ult i32 %113, 9
  tail call void @llvm.assume(i1 %114)
  %115 = zext nneg i32 %112 to i64
  %116 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %115
  %117 = load i32, ptr %116, align 4, !tbaa !203
  %118 = zext i32 %117 to i64
  %119 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %118
  %120 = load i64, ptr %119, align 8, !tbaa !235
  %121 = icmp eq i64 %120, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %111
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 1622, ptr noundef nonnull @.str.1) #23
  br label %123

123:                                              ; preds = %122, %111
  %124 = getelementptr inbounds i8, ptr %0, i64 %120
  %125 = getelementptr inbounds ptr, ptr %124, i64 1
  %126 = load ptr, ptr %125, align 8, !tbaa !188
  %127 = getelementptr inbounds %struct.tree_common, ptr %126, i64 0, i32 2
  %128 = load ptr, ptr %127, align 8, !tbaa !199
  %129 = getelementptr inbounds %struct.tree_common, ptr %128, i64 0, i32 2
  %130 = load ptr, ptr %129, align 8, !tbaa !199
  %131 = getelementptr inbounds %struct.tree_common, ptr %130, i64 0, i32 2
  br label %182

132:                                              ; preds = %103
  %133 = lshr i32 %109, 16
  %134 = zext nneg i32 %133 to i64
  %135 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %134
  %136 = load i8, ptr %135, align 1, !tbaa !199
  %137 = icmp eq i8 %136, 3
  br i1 %137, label %138, label %157, !prof !248

138:                                              ; preds = %132
  %139 = and i32 %109, 255
  %140 = add nsw i32 %139, -1
  %141 = icmp ult i32 %140, 9
  tail call void @llvm.assume(i1 %141)
  %142 = zext nneg i32 %139 to i64
  %143 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %142
  %144 = load i32, ptr %143, align 4, !tbaa !203
  %145 = zext i32 %144 to i64
  %146 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %145
  %147 = load i64, ptr %146, align 8, !tbaa !235
  %148 = icmp eq i64 %147, 0
  br i1 %148, label %149, label %150, !prof !249

149:                                              ; preds = %138
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 1622, ptr noundef nonnull @.str.1) #23
  br label %150

150:                                              ; preds = %149, %138
  %151 = getelementptr inbounds i8, ptr %0, i64 %147
  %152 = getelementptr inbounds ptr, ptr %151, i64 1
  %153 = load ptr, ptr %152, align 8, !tbaa !188
  %154 = load i64, ptr %153, align 8
  %155 = trunc i64 %154 to i32
  %156 = and i32 %155, 65535
  br label %157

157:                                              ; preds = %150, %132
  %158 = phi i32 [ %156, %150 ], [ %133, %132 ]
  %159 = icmp eq i32 %158, 66
  br i1 %159, label %160, label %178, !prof !250

160:                                              ; preds = %157
  %161 = load i32, ptr %0, align 8
  %162 = and i32 %161, 255
  %163 = add nsw i32 %162, -1
  %164 = icmp ult i32 %163, 9
  tail call void @llvm.assume(i1 %164)
  %165 = zext nneg i32 %162 to i64
  %166 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %165
  %167 = load i32, ptr %166, align 4, !tbaa !203
  %168 = zext i32 %167 to i64
  %169 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %168
  %170 = load i64, ptr %169, align 8, !tbaa !235
  %171 = icmp eq i64 %170, 0
  br i1 %171, label %172, label %173, !prof !251

172:                                              ; preds = %160
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 1622, ptr noundef nonnull @.str.1) #23
  br label %173

173:                                              ; preds = %172, %160
  %174 = getelementptr inbounds i8, ptr %0, i64 %170
  %175 = getelementptr inbounds ptr, ptr %174, i64 1
  %176 = load ptr, ptr %175, align 8, !tbaa !188
  %177 = getelementptr inbounds %struct.tree_common, ptr %176, i64 0, i32 2
  br label %182

178:                                              ; preds = %157
  %179 = tail call ptr @gimple_get_lhs(ptr noundef nonnull %0) #23
  %180 = getelementptr inbounds %struct.tree_common, ptr %179, i64 0, i32 2
  br label %182

181:                                              ; preds = %103
  br label %182

182:                                              ; preds = %103, %123, %173, %178, %181
  %183 = phi ptr [ getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), %181 ], [ %131, %123 ], [ %177, %173 ], [ %180, %178 ], [ getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), %103 ]
  %184 = load ptr, ptr %183, align 8, !tbaa !199
  %185 = getelementptr inbounds %struct.vn_nary_op_s, ptr %37, i64 0, i32 4
  store ptr %184, ptr %185, align 8, !tbaa !419
  %186 = load i32, ptr %105, align 4
  %187 = icmp ult i32 %186, 65536
  br i1 %187, label %215, label %188, !prof !460

188:                                              ; preds = %182, %208
  %189 = phi i64 [ %190, %208 ], [ 0, %182 ]
  %190 = add nuw nsw i64 %189, 1
  %191 = load i32, ptr %0, align 8
  %192 = and i32 %191, 255
  %193 = add nsw i32 %192, -10
  %194 = icmp ult i32 %193, -9
  br i1 %194, label %208, label %195, !prof !461

195:                                              ; preds = %188
  %196 = zext nneg i32 %192 to i64
  %197 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %196
  %198 = load i32, ptr %197, align 4, !tbaa !203
  %199 = zext i32 %198 to i64
  %200 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %199
  %201 = load i64, ptr %200, align 8, !tbaa !235
  %202 = icmp eq i64 %201, 0
  br i1 %202, label %203, label %204, !prof !461

203:                                              ; preds = %195
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 1622, ptr noundef nonnull @.str.1) #23
  br label %204

204:                                              ; preds = %203, %195
  %205 = getelementptr inbounds i8, ptr %0, i64 %201
  %206 = getelementptr inbounds ptr, ptr %205, i64 %190
  %207 = load ptr, ptr %206, align 8, !tbaa !188
  br label %208

208:                                              ; preds = %188, %204
  %209 = phi ptr [ %207, %204 ], [ null, %188 ]
  %210 = getelementptr inbounds %struct.vn_nary_op_s, ptr %37, i64 0, i32 5, i64 %189
  store ptr %209, ptr %210, align 8, !tbaa !188
  %211 = load i32, ptr %105, align 4
  %212 = lshr i32 %211, 16
  %213 = zext nneg i32 %212 to i64
  %214 = icmp ult i64 %190, %213
  br i1 %214, label %188, label %215, !prof !462, !llvm.loop !463

215:                                              ; preds = %208, %182
  %216 = phi i32 [ %186, %182 ], [ %211, %208 ]
  %217 = trunc i32 %216 to i16
  switch i16 %217, label %223 [
    i16 43, label %218
    i16 44, label %218
    i16 118, label %218
  ], !prof !464

218:                                              ; preds = %215, %215, %215
  %219 = getelementptr inbounds %struct.vn_nary_op_s, ptr %37, i64 0, i32 5
  %220 = load ptr, ptr %219, align 8, !tbaa !188
  %221 = getelementptr inbounds %struct.tree_exp, ptr %220, i64 0, i32 3
  %222 = load ptr, ptr %221, align 8, !tbaa !199
  store ptr %222, ptr %219, align 8, !tbaa !188
  br label %223

223:                                              ; preds = %215, %218
  %224 = getelementptr inbounds %struct.vn_nary_op_s, ptr %37, i64 0, i32 3
  store ptr %1, ptr %224, align 8, !tbaa !431
  %225 = load i32, ptr %105, align 4
  %226 = lshr i32 %225, 16
  %227 = icmp ult i32 %225, 65536
  br i1 %227, label %252, label %228, !prof !405

228:                                              ; preds = %223, %246
  %229 = phi i64 [ %247, %246 ], [ 0, %223 ]
  %230 = getelementptr inbounds %struct.vn_nary_op_s, ptr %37, i64 0, i32 5, i64 %229
  %231 = load ptr, ptr %230, align 8, !tbaa !188
  %232 = load i64, ptr %231, align 8
  %233 = and i64 %232, 65535
  %234 = icmp eq i64 %233, 141
  br i1 %234, label %235, label %246, !prof !406

235:                                              ; preds = %228
  %236 = load ptr, ptr @vn_ssa_aux_table, align 8
  %237 = getelementptr inbounds %struct.tree_ssa_name, ptr %231, i64 0, i32 3
  %238 = load i32, ptr %237, align 8, !tbaa !199
  %239 = zext i32 %238 to i64
  %240 = getelementptr inbounds %struct.VEC_vn_ssa_aux_t_base, ptr %236, i64 0, i32 2, i64 %239
  %241 = load ptr, ptr %240, align 8, !tbaa !188
  %242 = icmp eq ptr %241, null
  br i1 %242, label %243, label %244, !prof !407

243:                                              ; preds = %235
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 180, ptr noundef nonnull @.str.1) #23
  br label %244

244:                                              ; preds = %243, %235
  %245 = load ptr, ptr %241, align 8, !tbaa !227
  store ptr %245, ptr %230, align 8, !tbaa !188
  br label %246

246:                                              ; preds = %244, %228
  %247 = add nuw nsw i64 %229, 1
  %248 = load i32, ptr %105, align 4
  %249 = lshr i32 %248, 16
  %250 = zext nneg i32 %249 to i64
  %251 = icmp ult i64 %247, %250
  br i1 %251, label %228, label %252, !prof !408, !llvm.loop !409

252:                                              ; preds = %246, %223
  %253 = phi i32 [ %225, %223 ], [ %248, %246 ]
  %254 = phi i32 [ %226, %223 ], [ %249, %246 ]
  %255 = icmp eq i32 %254, 2
  br i1 %255, label %256, label %270, !prof !410

256:                                              ; preds = %252
  %257 = and i32 %253, 65535
  %258 = tail call zeroext i8 @commutative_tree_code(i32 noundef %257) #23
  %259 = icmp eq i8 %258, 0
  br i1 %259, label %270, label %260, !prof !411

260:                                              ; preds = %256
  %261 = getelementptr inbounds %struct.vn_nary_op_s, ptr %37, i64 0, i32 5
  %262 = load ptr, ptr %261, align 8, !tbaa !188
  %263 = getelementptr inbounds %struct.vn_nary_op_s, ptr %37, i64 0, i32 5, i64 1
  %264 = load ptr, ptr %263, align 8, !tbaa !188
  %265 = tail call zeroext i8 @tree_swap_operands_p(ptr noundef %262, ptr noundef %264, i8 noundef zeroext 0) #23
  %266 = icmp eq i8 %265, 0
  br i1 %266, label %270, label %267, !prof !412

267:                                              ; preds = %260
  %268 = load ptr, ptr %261, align 8, !tbaa !188
  %269 = load ptr, ptr %263, align 8, !tbaa !188
  store ptr %269, ptr %261, align 8, !tbaa !188
  store ptr %268, ptr %263, align 8, !tbaa !188
  br label %270

270:                                              ; preds = %267, %260, %256, %252
  %271 = load i32, ptr %105, align 4
  %272 = and i32 %271, 65535
  %273 = tail call i32 @iterative_hash_hashval_t(i32 noundef %272, i32 noundef 0) #23
  %274 = load i32, ptr %105, align 4
  %275 = icmp ult i32 %274, 65536
  br i1 %275, label %287, label %276, !prof !405

276:                                              ; preds = %270, %276
  %277 = phi i64 [ %282, %276 ], [ 0, %270 ]
  %278 = phi i32 [ %281, %276 ], [ %273, %270 ]
  %279 = getelementptr inbounds %struct.vn_nary_op_s, ptr %37, i64 0, i32 5, i64 %277
  %280 = load ptr, ptr %279, align 8, !tbaa !188
  %281 = tail call i32 @iterative_hash_expr(ptr noundef %280, i32 noundef %278) #23
  %282 = add nuw nsw i64 %277, 1
  %283 = load i32, ptr %105, align 4
  %284 = lshr i32 %283, 16
  %285 = zext nneg i32 %284 to i64
  %286 = icmp ult i64 %282, %285
  br i1 %286, label %276, label %287, !prof !408, !llvm.loop !413

287:                                              ; preds = %276, %270
  %288 = phi i32 [ %273, %270 ], [ %281, %276 ]
  %289 = getelementptr inbounds %struct.vn_nary_op_s, ptr %37, i64 0, i32 2
  store i32 %288, ptr %289, align 8, !tbaa !415
  %290 = load ptr, ptr @current_info, align 8, !tbaa !188
  %291 = load ptr, ptr %290, align 8, !tbaa !427
  %292 = tail call ptr @htab_find_slot_with_hash(ptr noundef %291, ptr noundef nonnull %37, i32 noundef %288, i32 noundef 1) #23
  %293 = load ptr, ptr %292, align 8, !tbaa !188
  %294 = icmp eq ptr %293, null
  br i1 %294, label %296, label %295, !prof !465

295:                                              ; preds = %287
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1627, ptr noundef nonnull @.str.1) #23
  br label %296

296:                                              ; preds = %287, %295
  store ptr %37, ptr %292, align 8, !tbaa !188
  ret ptr %37
}

; Function Attrs: nounwind uwtable
define dso_local void @free_scc_vn() local_unnamed_addr #11 !prof !466 {
  %1 = load ptr, ptr @constant_to_value_id, align 8, !tbaa !188
  tail call void @htab_delete(ptr noundef %1) #23
  %2 = load ptr, ptr @constant_value_ids, align 8, !tbaa !188
  tail call void @bitmap_obstack_free(ptr noundef %2) #23
  store ptr null, ptr @constant_value_ids, align 8, !tbaa !188
  %3 = load ptr, ptr @shared_lookup_phiargs, align 8, !tbaa !188
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5, !prof !467

5:                                                ; preds = %0
  tail call void @free(ptr noundef %3)
  br label %6

6:                                                ; preds = %0, %5
  store ptr null, ptr @shared_lookup_phiargs, align 8, !tbaa !188
  %7 = load ptr, ptr @shared_lookup_references, align 8, !tbaa !188
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9, !prof !467

9:                                                ; preds = %6
  tail call void @free(ptr noundef %7)
  br label %10

10:                                               ; preds = %6, %9
  store ptr null, ptr @shared_lookup_references, align 8, !tbaa !188
  %11 = load ptr, ptr @rpo_numbers, align 8, !tbaa !188
  tail call void @free(ptr noundef %11)
  br label %12

12:                                               ; preds = %45, %10
  %13 = phi i64 [ 0, %10 ], [ %46, %45 ]
  %14 = load ptr, ptr @cfun, align 8, !tbaa !188
  %15 = getelementptr inbounds %struct.function, ptr %14, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !468
  %17 = getelementptr inbounds %struct.gimple_df, ptr %16, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !470
  %19 = icmp eq ptr %18, null
  br i1 %19, label %22, label %20, !prof !474

20:                                               ; preds = %12
  %21 = load i32, ptr %18, align 8, !tbaa !475
  br label %22

22:                                               ; preds = %12, %20
  %23 = phi i32 [ %21, %20 ], [ 0, %12 ]
  %24 = zext i32 %23 to i64
  %25 = icmp ult i64 %13, %24
  br i1 %25, label %26, label %47, !prof !477

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.VEC_tree_base, ptr %18, i64 0, i32 2, i64 %13
  %28 = load ptr, ptr %27, align 8, !tbaa !188
  %29 = icmp eq ptr %28, null
  br i1 %29, label %45, label %30, !prof !478

30:                                               ; preds = %26
  %31 = load ptr, ptr @vn_ssa_aux_table, align 8
  %32 = getelementptr inbounds %struct.tree_ssa_name, ptr %28, i64 0, i32 3
  %33 = load i32, ptr %32, align 8, !tbaa !199
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds %struct.VEC_vn_ssa_aux_t_base, ptr %31, i64 0, i32 2, i64 %34
  %36 = load ptr, ptr %35, align 8, !tbaa !188
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %39, !prof !216

38:                                               ; preds = %30
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 180, ptr noundef nonnull @.str.1) #23
  br label %39

39:                                               ; preds = %30, %38
  %40 = getelementptr inbounds %struct.vn_ssa_aux, ptr %36, i64 0, i32 5
  %41 = load i8, ptr %40, align 4
  %42 = and i8 %41, 16
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %45, label %44, !prof !479

44:                                               ; preds = %39
  tail call void @release_ssa_name(ptr noundef nonnull %28) #23
  br label %45

45:                                               ; preds = %44, %39, %26
  %46 = add nuw nsw i64 %13, 1
  br label %12, !llvm.loop !480

47:                                               ; preds = %22
  %48 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @vn_ssa_aux_obstack, i64 0, i32 1), align 8, !tbaa !218
  %49 = ptrtoint ptr %48 to i64
  %50 = sub i64 0, %49
  store i64 %50, ptr getelementptr inbounds (%struct.obstack, ptr @vn_ssa_aux_obstack, i64 0, i32 5), align 8, !tbaa !210
  %51 = icmp sgt i64 %50, 0
  br i1 %51, label %52, label %59, !prof !467

52:                                               ; preds = %47
  %53 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @vn_ssa_aux_obstack, i64 0, i32 4), align 8, !tbaa !212
  %54 = ptrtoint ptr %53 to i64
  %55 = sub i64 %54, %49
  %56 = icmp sgt i64 %55, %50
  br i1 %56, label %57, label %59

57:                                               ; preds = %52
  %58 = getelementptr inbounds i8, ptr %48, i64 %50
  store ptr %58, ptr getelementptr inbounds (%struct.obstack, ptr @vn_ssa_aux_obstack, i64 0, i32 2), align 8, !tbaa !215
  store ptr %58, ptr getelementptr inbounds (%struct.obstack, ptr @vn_ssa_aux_obstack, i64 0, i32 3), align 8, !tbaa !213
  br label %61

59:                                               ; preds = %52, %47
  %60 = getelementptr inbounds i8, ptr %48, i64 %50
  tail call void @obstack_free(ptr noundef nonnull @vn_ssa_aux_obstack, ptr noundef %60) #23
  br label %61

61:                                               ; preds = %59, %57
  %62 = load ptr, ptr @vn_ssa_aux_table, align 8, !tbaa !188
  %63 = icmp eq ptr %62, null
  br i1 %63, label %65, label %64, !prof !467

64:                                               ; preds = %61
  tail call void @free(ptr noundef %62)
  br label %65

65:                                               ; preds = %61, %64
  store ptr null, ptr @vn_ssa_aux_table, align 8, !tbaa !188
  %66 = load ptr, ptr @sccstack, align 8, !tbaa !188
  %67 = icmp eq ptr %66, null
  br i1 %67, label %69, label %68, !prof !467

68:                                               ; preds = %65
  tail call void @free(ptr noundef %66)
  br label %69

69:                                               ; preds = %65, %68
  store ptr null, ptr @sccstack, align 8, !tbaa !188
  %70 = load ptr, ptr @valid_info, align 8, !tbaa !188
  tail call fastcc void @free_vn_table(ptr noundef %70)
  %71 = load ptr, ptr @valid_info, align 8, !tbaa !188
  tail call void @free(ptr noundef %71)
  %72 = load ptr, ptr @optimistic_info, align 8, !tbaa !188
  tail call fastcc void @free_vn_table(ptr noundef %72)
  %73 = load ptr, ptr @optimistic_info, align 8, !tbaa !188
  tail call void @free(ptr noundef %73)
  ret void
}

declare void @htab_delete(ptr noundef) local_unnamed_addr #3

declare void @bitmap_obstack_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) #16

declare void @release_ssa_name(ptr noundef) local_unnamed_addr #3

declare void @obstack_free(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc void @free_vn_table(ptr noundef %0) unnamed_addr #11 !prof !481 !PGOFuncName !482 {
  %2 = getelementptr inbounds %struct.vn_tables_s, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !483
  tail call void @htab_delete(ptr noundef %3) #23
  %4 = load ptr, ptr %0, align 8, !tbaa !427
  tail call void @htab_delete(ptr noundef %4) #23
  %5 = getelementptr inbounds %struct.vn_tables_s, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !346
  tail call void @htab_delete(ptr noundef %6) #23
  %7 = getelementptr inbounds %struct.vn_tables_s, ptr %0, i64 0, i32 3
  %8 = getelementptr inbounds %struct.vn_tables_s, ptr %0, i64 0, i32 3, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !451
  %10 = ptrtoint ptr %9 to i64
  %11 = sub i64 0, %10
  %12 = getelementptr inbounds %struct.vn_tables_s, ptr %0, i64 0, i32 3, i32 5
  store i64 %11, ptr %12, align 8, !tbaa !445
  %13 = icmp sgt i64 %11, 0
  br i1 %13, label %14, label %24, !prof !484

14:                                               ; preds = %1
  %15 = getelementptr inbounds %struct.vn_tables_s, ptr %0, i64 0, i32 3, i32 4
  %16 = load ptr, ptr %15, align 8, !tbaa !446
  %17 = ptrtoint ptr %16 to i64
  %18 = sub i64 %17, %10
  %19 = icmp sgt i64 %18, %11
  br i1 %19, label %20, label %24

20:                                               ; preds = %14
  %21 = getelementptr inbounds i8, ptr %9, i64 %11
  %22 = getelementptr inbounds %struct.vn_tables_s, ptr %0, i64 0, i32 3, i32 2
  store ptr %21, ptr %22, align 8, !tbaa !449
  %23 = getelementptr inbounds %struct.vn_tables_s, ptr %0, i64 0, i32 3, i32 3
  store ptr %21, ptr %23, align 8, !tbaa !447
  br label %26

24:                                               ; preds = %14, %1
  %25 = getelementptr inbounds i8, ptr %9, i64 %11
  tail call void @obstack_free(ptr noundef nonnull %7, ptr noundef %25) #23
  br label %26

26:                                               ; preds = %24, %20
  %27 = getelementptr inbounds %struct.vn_tables_s, ptr %0, i64 0, i32 4
  %28 = load ptr, ptr %27, align 8, !tbaa !485
  tail call void @free_alloc_pool(ptr noundef %28) #23
  %29 = getelementptr inbounds %struct.vn_tables_s, ptr %0, i64 0, i32 5
  %30 = load ptr, ptr %29, align 8, !tbaa !395
  tail call void @free_alloc_pool(ptr noundef %30) #23
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i8 @run_scc_vn(i8 noundef zeroext %0) local_unnamed_addr #11 !prof !466 {
  %2 = alloca [3 x i8], align 1
  store i8 %0, ptr @may_insert, align 1, !tbaa !199
  tail call void @calculate_dominance_info(i32 noundef 1) #23
  store ptr null, ptr @sccstack, align 8, !tbaa !188
  %3 = tail call ptr @htab_create(i64 noundef 23, ptr noundef nonnull @vn_constant_hash, ptr noundef nonnull @vn_constant_eq, ptr noundef nonnull @free) #23
  store ptr %3, ptr @constant_to_value_id, align 8, !tbaa !188
  %4 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #23
  store ptr %4, ptr @constant_value_ids, align 8, !tbaa !188
  store i32 1, ptr @next_dfs_num, align 4, !tbaa !203
  store i32 1, ptr @next_value_id, align 4, !tbaa !203
  %5 = load ptr, ptr @cfun, align 8, !tbaa !188
  %6 = getelementptr inbounds %struct.function, ptr %5, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !468
  %8 = getelementptr inbounds %struct.gimple_df, ptr %7, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !470
  %10 = icmp eq ptr %9, null
  br i1 %10, label %14, label %11, !prof !467

11:                                               ; preds = %1
  %12 = load i32, ptr %9, align 8, !tbaa !475
  %13 = add i32 %12, 1
  br label %14

14:                                               ; preds = %11, %1
  %15 = phi i32 [ %13, %11 ], [ 1, %1 ]
  %16 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef %15) #23
  store ptr %16, ptr @vn_ssa_aux_table, align 8, !tbaa !188
  %17 = load ptr, ptr @cfun, align 8, !tbaa !188
  %18 = getelementptr inbounds %struct.function, ptr %17, i64 0, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !468
  %20 = getelementptr inbounds %struct.gimple_df, ptr %19, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !470
  %22 = icmp eq ptr %21, null
  br i1 %22, label %26, label %23, !prof !467

23:                                               ; preds = %14
  %24 = load i32, ptr %21, align 8, !tbaa !475
  %25 = add i32 %24, 1
  br label %26

26:                                               ; preds = %23, %14
  %27 = phi i32 [ %25, %23 ], [ 1, %14 ]
  %28 = icmp eq ptr %16, null
  br i1 %28, label %31, label %29, !prof !467

29:                                               ; preds = %26
  %30 = load i32, ptr %16, align 8, !tbaa !219
  br label %31

31:                                               ; preds = %29, %26
  %32 = phi i32 [ %30, %29 ], [ 0, %26 ]
  br i1 %28, label %35, label %33, !prof !467

33:                                               ; preds = %31
  %34 = load i32, ptr %16, align 8, !tbaa !219
  br label %35

35:                                               ; preds = %33, %31
  %36 = phi i32 [ %34, %33 ], [ 0, %31 ]
  %37 = sub nsw i32 %27, %36
  br i1 %28, label %44, label %38, !prof !467

38:                                               ; preds = %35
  %39 = getelementptr inbounds %struct.VEC_vn_ssa_aux_t_base, ptr %16, i64 0, i32 1
  %40 = load i32, ptr %39, align 4, !tbaa !223
  %41 = load i32, ptr %16, align 8, !tbaa !219
  %42 = sub i32 %40, %41
  %43 = icmp uge i32 %42, %37
  br label %46

44:                                               ; preds = %35
  %45 = icmp eq i32 %36, %27
  br label %46

46:                                               ; preds = %44, %38
  %47 = phi i1 [ %43, %38 ], [ %45, %44 ]
  br i1 %47, label %50, label %48, !prof !486

48:                                               ; preds = %46
  %49 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef %16, i32 noundef %37) #23
  store ptr %49, ptr @vn_ssa_aux_table, align 8, !tbaa !188
  br label %50

50:                                               ; preds = %48, %46
  %51 = load ptr, ptr @vn_ssa_aux_table, align 8, !tbaa !188, !nonnull !224, !noundef !224
  store i32 %27, ptr %51, align 8, !tbaa !219
  %52 = getelementptr inbounds %struct.VEC_vn_ssa_aux_t_base, ptr %51, i64 0, i32 2
  %53 = sext i32 %32 to i64
  %54 = getelementptr inbounds ptr, ptr %52, i64 %53
  %55 = sub nsw i32 %27, %32
  %56 = sext i32 %55 to i64
  %57 = shl nsw i64 %56, 3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %54, i8 0, i64 %57, i1 false), !prof !487
  %58 = tail call i32 @_obstack_begin(ptr noundef nonnull @vn_ssa_aux_obstack, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @xmalloc, ptr noundef nonnull @free) #23
  store ptr null, ptr @shared_lookup_phiargs, align 8, !tbaa !188
  store ptr null, ptr @shared_lookup_references, align 8, !tbaa !188
  %59 = load ptr, ptr @cfun, align 8, !tbaa !188
  %60 = getelementptr inbounds %struct.function, ptr %59, i64 0, i32 1
  %61 = load ptr, ptr %60, align 8, !tbaa !488
  %62 = getelementptr inbounds %struct.control_flow_graph, ptr %61, i64 0, i32 5
  %63 = load i32, ptr %62, align 8, !tbaa !489
  %64 = add nsw i32 %63, 2
  %65 = sext i32 %64 to i64
  %66 = tail call ptr @xcalloc(i64 noundef %65, i64 noundef 4) #23
  store ptr %66, ptr @rpo_numbers, align 8, !tbaa !188
  %67 = load ptr, ptr @cfun, align 8, !tbaa !188
  %68 = getelementptr inbounds %struct.function, ptr %67, i64 0, i32 1
  %69 = load ptr, ptr %68, align 8, !tbaa !488
  %70 = getelementptr inbounds %struct.control_flow_graph, ptr %69, i64 0, i32 5
  %71 = load i32, ptr %70, align 8, !tbaa !489
  %72 = add nsw i32 %71, 2
  %73 = sext i32 %72 to i64
  %74 = tail call ptr @xcalloc(i64 noundef %73, i64 noundef 4) #23
  %75 = tail call i32 @pre_and_rev_post_order_compute(ptr noundef null, ptr noundef %74, i8 noundef zeroext 0) #23
  %76 = load ptr, ptr @cfun, align 8, !tbaa !188
  %77 = getelementptr inbounds %struct.function, ptr %76, i64 0, i32 1
  %78 = load ptr, ptr %77, align 8, !tbaa !488
  %79 = getelementptr inbounds %struct.control_flow_graph, ptr %78, i64 0, i32 3
  %80 = load i32, ptr %79, align 8, !tbaa !491
  %81 = icmp sgt i32 %80, 2
  br i1 %81, label %82, label %96, !prof !492

82:                                               ; preds = %50
  %83 = load ptr, ptr @rpo_numbers, align 8, !tbaa !188
  br label %84

84:                                               ; preds = %82, %84
  %85 = phi i64 [ 0, %82 ], [ %91, %84 ]
  %86 = getelementptr inbounds i32, ptr %74, i64 %85
  %87 = load i32, ptr %86, align 4, !tbaa !203
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32, ptr %83, i64 %88
  %90 = trunc i64 %85 to i32
  store i32 %90, ptr %89, align 4, !tbaa !203
  %91 = add nuw nsw i64 %85, 1
  %92 = load i32, ptr %79, align 8, !tbaa !491
  %93 = add nsw i32 %92, -2
  %94 = sext i32 %93 to i64
  %95 = icmp slt i64 %91, %94
  br i1 %95, label %84, label %96, !prof !493, !llvm.loop !494

96:                                               ; preds = %84, %50
  tail call void @free(ptr noundef %74)
  %97 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !188
  %98 = tail call ptr @create_tmp_var_raw(ptr noundef %97, ptr noundef nonnull @.str.6) #23
  store ptr %98, ptr @VN_TOP, align 8, !tbaa !188
  br label %99

99:                                               ; preds = %205, %96
  %100 = phi i64 [ 0, %96 ], [ %206, %205 ]
  %101 = load ptr, ptr @cfun, align 8, !tbaa !188
  %102 = getelementptr inbounds %struct.function, ptr %101, i64 0, i32 3
  %103 = load ptr, ptr %102, align 8, !tbaa !468
  %104 = getelementptr inbounds %struct.gimple_df, ptr %103, i64 0, i32 2
  %105 = load ptr, ptr %104, align 8, !tbaa !470
  %106 = icmp eq ptr %105, null
  br i1 %106, label %109, label %107, !prof !495

107:                                              ; preds = %99
  %108 = load i32, ptr %105, align 8, !tbaa !475
  br label %109

109:                                              ; preds = %107, %99
  %110 = phi i32 [ %108, %107 ], [ 0, %99 ]
  %111 = zext i32 %110 to i64
  %112 = icmp ult i64 %100, %111
  br i1 %112, label %113, label %207, !prof !496

113:                                              ; preds = %109
  %114 = getelementptr inbounds %struct.VEC_tree_base, ptr %105, i64 0, i32 2, i64 %100
  %115 = load ptr, ptr %114, align 8, !tbaa !188
  %116 = icmp eq ptr %115, null
  br i1 %116, label %205, label %117, !prof !497

117:                                              ; preds = %113
  %118 = load ptr, ptr @VN_TOP, align 8, !tbaa !188
  store i64 32, ptr getelementptr inbounds (%struct.obstack, ptr @vn_ssa_aux_obstack, i64 0, i32 5), align 8, !tbaa !210
  %119 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @vn_ssa_aux_obstack, i64 0, i32 4), align 8, !tbaa !212
  %120 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @vn_ssa_aux_obstack, i64 0, i32 3), align 8, !tbaa !213
  %121 = ptrtoint ptr %119 to i64
  %122 = ptrtoint ptr %120 to i64
  %123 = sub i64 %121, %122
  %124 = icmp slt i64 %123, 32
  br i1 %124, label %125, label %126, !prof !214

125:                                              ; preds = %117
  tail call void @_obstack_newchunk(ptr noundef nonnull @vn_ssa_aux_obstack, i32 noundef 32) #23
  br label %126

126:                                              ; preds = %125, %117
  %127 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @vn_ssa_aux_obstack, i64 0, i32 5), align 8, !tbaa !210
  %128 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @vn_ssa_aux_obstack, i64 0, i32 3), align 8, !tbaa !213
  %129 = getelementptr inbounds i8, ptr %128, i64 %127
  store ptr %129, ptr getelementptr inbounds (%struct.obstack, ptr @vn_ssa_aux_obstack, i64 0, i32 3), align 8, !tbaa !213
  %130 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @vn_ssa_aux_obstack, i64 0, i32 2), align 8, !tbaa !215
  %131 = icmp eq ptr %129, %130
  br i1 %131, label %132, label %135, !prof !216

132:                                              ; preds = %126
  %133 = load i8, ptr getelementptr inbounds (%struct.obstack, ptr @vn_ssa_aux_obstack, i64 0, i32 10), align 8
  %134 = or i8 %133, 2
  store i8 %134, ptr getelementptr inbounds (%struct.obstack, ptr @vn_ssa_aux_obstack, i64 0, i32 10), align 8
  br label %135

135:                                              ; preds = %132, %126
  %136 = ptrtoint ptr %130 to i64
  store i64 %136, ptr getelementptr inbounds (%struct.obstack, ptr @vn_ssa_aux_obstack, i64 0, i32 5), align 8, !tbaa !210
  %137 = ptrtoint ptr %129 to i64
  %138 = load i32, ptr getelementptr inbounds (%struct.obstack, ptr @vn_ssa_aux_obstack, i64 0, i32 6), align 8, !tbaa !217
  %139 = sext i32 %138 to i64
  %140 = add nsw i64 %139, %137
  %141 = xor i32 %138, -1
  %142 = sext i32 %141 to i64
  %143 = and i64 %140, %142
  %144 = inttoptr i64 %143 to ptr
  store ptr %144, ptr getelementptr inbounds (%struct.obstack, ptr @vn_ssa_aux_obstack, i64 0, i32 3), align 8, !tbaa !213
  %145 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @vn_ssa_aux_obstack, i64 0, i32 1), align 8, !tbaa !218
  %146 = ptrtoint ptr %145 to i64
  %147 = sub i64 %143, %146
  %148 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @vn_ssa_aux_obstack, i64 0, i32 4), align 8, !tbaa !212
  %149 = ptrtoint ptr %148 to i64
  %150 = sub i64 %149, %146
  %151 = icmp sgt i64 %147, %150
  %152 = select i1 %151, ptr %148, ptr %144, !prof !216
  store ptr %152, ptr getelementptr inbounds (%struct.obstack, ptr @vn_ssa_aux_obstack, i64 0, i32 3), align 8
  store ptr %152, ptr getelementptr inbounds (%struct.obstack, ptr @vn_ssa_aux_obstack, i64 0, i32 2), align 8, !tbaa !215
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %130, i8 0, i64 32, i1 false)
  %153 = getelementptr inbounds %struct.tree_ssa_name, ptr %115, i64 0, i32 3
  %154 = load i32, ptr %153, align 8, !tbaa !199
  %155 = load ptr, ptr @vn_ssa_aux_table, align 8
  %156 = icmp eq ptr %155, null
  br i1 %156, label %159, label %157, !prof !216

157:                                              ; preds = %135
  %158 = load i32, ptr %155, align 8, !tbaa !219
  br label %159

159:                                              ; preds = %157, %135
  %160 = phi i32 [ %158, %157 ], [ 0, %135 ]
  %161 = icmp ult i32 %154, %160
  br i1 %161, label %183, label %162, !prof !221

162:                                              ; preds = %159
  %163 = add i32 %154, 1
  br i1 %156, label %166, label %164, !prof !222

164:                                              ; preds = %162
  %165 = load i32, ptr %155, align 8, !tbaa !219
  br label %166

166:                                              ; preds = %164, %162
  %167 = phi i32 [ %165, %164 ], [ 0, %162 ]
  %168 = sub nsw i32 %163, %167
  br i1 %156, label %175, label %169, !prof !222

169:                                              ; preds = %166
  %170 = getelementptr inbounds %struct.VEC_vn_ssa_aux_t_base, ptr %155, i64 0, i32 1
  %171 = load i32, ptr %170, align 4, !tbaa !223
  %172 = load i32, ptr %155, align 8, !tbaa !219
  %173 = sub i32 %171, %172
  %174 = icmp uge i32 %173, %168
  br label %177

175:                                              ; preds = %166
  %176 = icmp eq i32 %167, %163
  br label %177

177:                                              ; preds = %175, %169
  %178 = phi i1 [ %174, %169 ], [ %176, %175 ]
  br i1 %178, label %181, label %179, !prof !222

179:                                              ; preds = %177
  %180 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef %155, i32 noundef %168) #23
  store ptr %180, ptr @vn_ssa_aux_table, align 8, !tbaa !188
  br label %181

181:                                              ; preds = %179, %177
  %182 = load ptr, ptr @vn_ssa_aux_table, align 8, !tbaa !188, !nonnull !224, !noundef !224
  store i32 %163, ptr %182, align 8, !tbaa !219
  br label %183

183:                                              ; preds = %159, %181
  %184 = load ptr, ptr @vn_ssa_aux_table, align 8
  %185 = load i32, ptr %153, align 8, !tbaa !199
  %186 = zext i32 %185 to i64
  %187 = getelementptr inbounds %struct.VEC_vn_ssa_aux_t_base, ptr %184, i64 0, i32 2, i64 %186
  store ptr %130, ptr %187, align 8, !tbaa !188
  store ptr %118, ptr %130, align 8, !tbaa !227
  %188 = load i32, ptr %153, align 8, !tbaa !199
  %189 = zext i32 %188 to i64
  %190 = getelementptr inbounds %struct.VEC_vn_ssa_aux_t_base, ptr %184, i64 0, i32 2, i64 %189
  %191 = load ptr, ptr %190, align 8, !tbaa !188
  %192 = icmp eq ptr %191, null
  br i1 %192, label %193, label %194, !prof !498

193:                                              ; preds = %183
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 180, ptr noundef nonnull @.str.1) #23
  br label %194

194:                                              ; preds = %193, %183
  %195 = getelementptr inbounds %struct.vn_ssa_aux, ptr %191, i64 0, i32 1
  store ptr null, ptr %195, align 8, !tbaa !230
  %196 = load ptr, ptr @vn_ssa_aux_table, align 8
  %197 = load i32, ptr %153, align 8, !tbaa !199
  %198 = zext i32 %197 to i64
  %199 = getelementptr inbounds %struct.VEC_vn_ssa_aux_t_base, ptr %196, i64 0, i32 2, i64 %198
  %200 = load ptr, ptr %199, align 8, !tbaa !188
  %201 = icmp eq ptr %200, null
  br i1 %201, label %202, label %203, !prof !498

202:                                              ; preds = %194
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 180, ptr noundef nonnull @.str.1) #23
  br label %203

203:                                              ; preds = %202, %194
  %204 = getelementptr inbounds %struct.vn_ssa_aux, ptr %200, i64 0, i32 2
  store i32 0, ptr %204, align 8, !tbaa !398
  br label %205

205:                                              ; preds = %203, %113
  %206 = add nuw nsw i64 %100, 1
  br label %99, !llvm.loop !499

207:                                              ; preds = %109
  tail call void @renumber_gimple_stmt_uids() #23
  %208 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 128) #23
  store ptr %208, ptr @valid_info, align 8, !tbaa !188
  %209 = tail call ptr @htab_create(i64 noundef 23, ptr noundef nonnull @vn_phi_hash, ptr noundef nonnull @vn_phi_eq, ptr noundef nonnull @free_phi) #23
  %210 = getelementptr inbounds %struct.vn_tables_s, ptr %208, i64 0, i32 1
  store ptr %209, ptr %210, align 8, !tbaa !483
  %211 = tail call ptr @htab_create(i64 noundef 23, ptr noundef nonnull @vn_nary_op_hash, ptr noundef nonnull @vn_nary_op_eq, ptr noundef null) #23
  store ptr %211, ptr %208, align 8, !tbaa !427
  %212 = tail call ptr @htab_create(i64 noundef 23, ptr noundef nonnull @vn_reference_hash, ptr noundef nonnull @vn_reference_eq, ptr noundef nonnull @free_reference) #23
  %213 = getelementptr inbounds %struct.vn_tables_s, ptr %208, i64 0, i32 2
  store ptr %212, ptr %213, align 8, !tbaa !346
  %214 = getelementptr inbounds %struct.vn_tables_s, ptr %208, i64 0, i32 3
  %215 = tail call i32 @_obstack_begin(ptr noundef nonnull %214, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @xmalloc, ptr noundef nonnull @free) #23
  %216 = tail call ptr @create_alloc_pool(ptr noundef nonnull @.str.7, i64 noundef 32, i64 noundef 30) #23
  %217 = getelementptr inbounds %struct.vn_tables_s, ptr %208, i64 0, i32 4
  store ptr %216, ptr %217, align 8, !tbaa !485
  %218 = tail call ptr @create_alloc_pool(ptr noundef nonnull @.str.8, i64 noundef 48, i64 noundef 30) #23
  %219 = getelementptr inbounds %struct.vn_tables_s, ptr %208, i64 0, i32 5
  store ptr %218, ptr %219, align 8, !tbaa !395
  %220 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 128) #23
  store ptr %220, ptr @optimistic_info, align 8, !tbaa !188
  %221 = tail call ptr @htab_create(i64 noundef 23, ptr noundef nonnull @vn_phi_hash, ptr noundef nonnull @vn_phi_eq, ptr noundef nonnull @free_phi) #23
  %222 = getelementptr inbounds %struct.vn_tables_s, ptr %220, i64 0, i32 1
  store ptr %221, ptr %222, align 8, !tbaa !483
  %223 = tail call ptr @htab_create(i64 noundef 23, ptr noundef nonnull @vn_nary_op_hash, ptr noundef nonnull @vn_nary_op_eq, ptr noundef null) #23
  store ptr %223, ptr %220, align 8, !tbaa !427
  %224 = tail call ptr @htab_create(i64 noundef 23, ptr noundef nonnull @vn_reference_hash, ptr noundef nonnull @vn_reference_eq, ptr noundef nonnull @free_reference) #23
  %225 = getelementptr inbounds %struct.vn_tables_s, ptr %220, i64 0, i32 2
  store ptr %224, ptr %225, align 8, !tbaa !346
  %226 = getelementptr inbounds %struct.vn_tables_s, ptr %220, i64 0, i32 3
  %227 = tail call i32 @_obstack_begin(ptr noundef nonnull %226, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @xmalloc, ptr noundef nonnull @free) #23
  %228 = tail call ptr @create_alloc_pool(ptr noundef nonnull @.str.7, i64 noundef 32, i64 noundef 30) #23
  %229 = getelementptr inbounds %struct.vn_tables_s, ptr %220, i64 0, i32 4
  store ptr %228, ptr %229, align 8, !tbaa !485
  %230 = tail call ptr @create_alloc_pool(ptr noundef nonnull @.str.8, i64 noundef 48, i64 noundef 30) #23
  %231 = getelementptr inbounds %struct.vn_tables_s, ptr %220, i64 0, i32 5
  store ptr %230, ptr %231, align 8, !tbaa !395
  %232 = load ptr, ptr @valid_info, align 8, !tbaa !188
  store ptr %232, ptr @current_info, align 8, !tbaa !188
  %233 = load ptr, ptr @current_function_decl, align 8, !tbaa !188
  %234 = getelementptr inbounds %struct.tree_decl_non_common, ptr %233, i64 0, i32 2
  %235 = load ptr, ptr %234, align 8, !tbaa !199
  %236 = icmp eq ptr %235, null
  br i1 %236, label %258, label %237, !prof !500

237:                                              ; preds = %207, %254
  %238 = phi ptr [ %256, %254 ], [ %235, %207 ]
  %239 = load ptr, ptr @cfun, align 8, !tbaa !188
  %240 = tail call ptr @gimple_default_def(ptr noundef %239, ptr noundef nonnull %238) #23
  %241 = icmp eq ptr %240, null
  br i1 %241, label %254, label %242, !prof !467

242:                                              ; preds = %237
  %243 = load ptr, ptr @cfun, align 8, !tbaa !188
  %244 = tail call ptr @gimple_default_def(ptr noundef %243, ptr noundef nonnull %238) #23
  %245 = load ptr, ptr @vn_ssa_aux_table, align 8
  %246 = getelementptr inbounds %struct.tree_ssa_name, ptr %244, i64 0, i32 3
  %247 = load i32, ptr %246, align 8, !tbaa !199
  %248 = zext i32 %247 to i64
  %249 = getelementptr inbounds %struct.VEC_vn_ssa_aux_t_base, ptr %245, i64 0, i32 2, i64 %248
  %250 = load ptr, ptr %249, align 8, !tbaa !188
  %251 = icmp eq ptr %250, null
  br i1 %251, label %252, label %253, !prof !467

252:                                              ; preds = %242
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 180, ptr noundef nonnull @.str.1) #23
  br label %253

253:                                              ; preds = %242, %252
  store ptr %244, ptr %250, align 8, !tbaa !227
  br label %254

254:                                              ; preds = %237, %253
  %255 = getelementptr inbounds %struct.tree_common, ptr %238, i64 0, i32 1
  %256 = load ptr, ptr %255, align 8, !tbaa !199
  %257 = icmp eq ptr %256, null
  br i1 %257, label %258, label %237, !prof !492, !llvm.loop !501

258:                                              ; preds = %254, %207
  br label %259

259:                                              ; preds = %258, %915
  %260 = phi i64 [ %916, %915 ], [ 1, %258 ]
  %261 = load ptr, ptr @cfun, align 8, !tbaa !188
  %262 = getelementptr inbounds %struct.function, ptr %261, i64 0, i32 3
  %263 = load ptr, ptr %262, align 8, !tbaa !468
  %264 = getelementptr inbounds %struct.gimple_df, ptr %263, i64 0, i32 2
  %265 = load ptr, ptr %264, align 8, !tbaa !470
  %266 = icmp eq ptr %265, null
  br i1 %266, label %269, label %267, !prof !502

267:                                              ; preds = %259
  %268 = load i32, ptr %265, align 8, !tbaa !475
  br label %269

269:                                              ; preds = %259, %267
  %270 = phi i32 [ %268, %267 ], [ 0, %259 ]
  %271 = zext i32 %270 to i64
  %272 = icmp ult i64 %260, %271
  br i1 %272, label %273, label %917, !prof !503

273:                                              ; preds = %269
  %274 = getelementptr inbounds %struct.VEC_tree_base, ptr %265, i64 0, i32 2, i64 %260
  %275 = load ptr, ptr %274, align 8, !tbaa !188
  %276 = icmp eq ptr %275, null
  br i1 %276, label %915, label %277, !prof !504

277:                                              ; preds = %273
  %278 = load ptr, ptr @vn_ssa_aux_table, align 8
  %279 = getelementptr inbounds %struct.tree_ssa_name, ptr %275, i64 0, i32 3
  %280 = load i32, ptr %279, align 8, !tbaa !199
  %281 = zext i32 %280 to i64
  %282 = getelementptr inbounds %struct.VEC_vn_ssa_aux_t_base, ptr %278, i64 0, i32 2, i64 %281
  %283 = load ptr, ptr %282, align 8, !tbaa !188
  %284 = icmp eq ptr %283, null
  br i1 %284, label %285, label %286, !prof !498

285:                                              ; preds = %277
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 180, ptr noundef nonnull @.str.1) #23
  br label %286

286:                                              ; preds = %277, %285
  %287 = getelementptr inbounds %struct.vn_ssa_aux, ptr %283, i64 0, i32 5
  %288 = load i8, ptr %287, align 4
  %289 = and i8 %288, 1
  %290 = icmp eq i8 %289, 0
  br i1 %290, label %291, label %915, !prof !505

291:                                              ; preds = %286
  %292 = getelementptr inbounds %struct.tree_ssa_name, ptr %275, i64 0, i32 5
  %293 = getelementptr inbounds %struct.tree_ssa_name, ptr %275, i64 0, i32 5, i32 1
  %294 = load ptr, ptr %293, align 8, !tbaa !506
  %295 = icmp eq ptr %292, %294
  br i1 %295, label %301, label %296, !prof !508

296:                                              ; preds = %291
  %297 = load i32, ptr @flag_var_tracking_assignments, align 4, !tbaa !203
  %298 = icmp eq i32 %297, 0
  br i1 %298, label %301, label %299, !prof !509

299:                                              ; preds = %296
  %300 = tail call zeroext i8 @has_zero_uses_1(ptr noundef nonnull %292) #23
  br label %301

301:                                              ; preds = %291, %296, %299
  %302 = phi i8 [ %300, %299 ], [ 1, %291 ], [ 0, %296 ]
  %303 = icmp eq i8 %302, 0
  br i1 %303, label %304, label %915, !prof !510

304:                                              ; preds = %301
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %2)
  br label %305

305:                                              ; preds = %752, %304
  %306 = phi ptr [ null, %304 ], [ %732, %752 ]
  %307 = phi ptr [ null, %304 ], [ %753, %752 ]
  %308 = phi ptr [ %275, %304 ], [ %704, %752 ]
  %309 = phi ptr [ null, %304 ], [ %422, %752 ]
  %310 = load i32, ptr @next_dfs_num, align 4, !tbaa !203
  %311 = add i32 %310, 1
  store i32 %311, ptr @next_dfs_num, align 4, !tbaa !203
  %312 = load ptr, ptr @vn_ssa_aux_table, align 8
  %313 = getelementptr inbounds %struct.tree_ssa_name, ptr %308, i64 0, i32 3
  %314 = load i32, ptr %313, align 8, !tbaa !199
  %315 = zext i32 %314 to i64
  %316 = getelementptr inbounds %struct.VEC_vn_ssa_aux_t_base, ptr %312, i64 0, i32 2, i64 %315
  %317 = load ptr, ptr %316, align 8, !tbaa !188
  %318 = icmp eq ptr %317, null
  br i1 %318, label %319, label %320, !prof !511

319:                                              ; preds = %305
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 180, ptr noundef nonnull @.str.1) #23
  br label %320

320:                                              ; preds = %319, %305
  %321 = getelementptr inbounds %struct.vn_ssa_aux, ptr %317, i64 0, i32 3
  store i32 %310, ptr %321, align 4, !tbaa !512
  %322 = load ptr, ptr @vn_ssa_aux_table, align 8
  %323 = load i32, ptr %313, align 8, !tbaa !199
  %324 = zext i32 %323 to i64
  %325 = getelementptr inbounds %struct.VEC_vn_ssa_aux_t_base, ptr %322, i64 0, i32 2, i64 %324
  %326 = load ptr, ptr %325, align 8, !tbaa !188
  %327 = icmp eq ptr %326, null
  br i1 %327, label %328, label %329, !prof !511

328:                                              ; preds = %320
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 180, ptr noundef nonnull @.str.1) #23
  br label %329

329:                                              ; preds = %328, %320
  %330 = getelementptr inbounds %struct.vn_ssa_aux, ptr %326, i64 0, i32 5
  %331 = load i8, ptr %330, align 4
  %332 = or i8 %331, 1
  store i8 %332, ptr %330, align 4
  %333 = load ptr, ptr @vn_ssa_aux_table, align 8
  %334 = load i32, ptr %313, align 8, !tbaa !199
  %335 = zext i32 %334 to i64
  %336 = getelementptr inbounds %struct.VEC_vn_ssa_aux_t_base, ptr %333, i64 0, i32 2, i64 %335
  %337 = load ptr, ptr %336, align 8, !tbaa !188
  %338 = icmp eq ptr %337, null
  br i1 %338, label %339, label %340, !prof !511

339:                                              ; preds = %329
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 180, ptr noundef nonnull @.str.1) #23
  br label %340

340:                                              ; preds = %339, %329
  %341 = getelementptr inbounds %struct.vn_ssa_aux, ptr %337, i64 0, i32 3
  %342 = load i32, ptr %341, align 4, !tbaa !512
  %343 = load ptr, ptr @vn_ssa_aux_table, align 8
  %344 = load i32, ptr %313, align 8, !tbaa !199
  %345 = zext i32 %344 to i64
  %346 = getelementptr inbounds %struct.VEC_vn_ssa_aux_t_base, ptr %343, i64 0, i32 2, i64 %345
  %347 = load ptr, ptr %346, align 8, !tbaa !188
  %348 = icmp eq ptr %347, null
  br i1 %348, label %349, label %350, !prof !511

349:                                              ; preds = %340
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 180, ptr noundef nonnull @.str.1) #23
  br label %350

350:                                              ; preds = %349, %340
  %351 = getelementptr inbounds %struct.vn_ssa_aux, ptr %347, i64 0, i32 4
  store i32 %342, ptr %351, align 8, !tbaa !513
  %352 = load ptr, ptr @sccstack, align 8, !tbaa !188
  %353 = icmp eq ptr %352, null
  br i1 %353, label %359, label %354, !prof !514

354:                                              ; preds = %350
  %355 = getelementptr inbounds %struct.VEC_tree_base, ptr %352, i64 0, i32 1
  %356 = load i32, ptr %355, align 4, !tbaa !515
  %357 = load i32, ptr %352, align 8, !tbaa !475
  %358 = icmp eq i32 %356, %357
  br i1 %358, label %359, label %361, !prof !516

359:                                              ; preds = %354, %350
  %360 = tail call ptr @vec_heap_p_reserve(ptr noundef %352, i32 noundef 1) #23
  store ptr %360, ptr @sccstack, align 8, !tbaa !188
  br label %361

361:                                              ; preds = %359, %354
  %362 = load ptr, ptr @sccstack, align 8, !tbaa !188
  %363 = load i32, ptr %362, align 8, !tbaa !475
  %364 = add i32 %363, 1
  store i32 %364, ptr %362, align 8, !tbaa !475
  %365 = zext i32 %363 to i64
  %366 = getelementptr inbounds %struct.VEC_tree_base, ptr %362, i64 0, i32 2, i64 %365
  store ptr %308, ptr %366, align 8, !tbaa !188
  %367 = load ptr, ptr @vn_ssa_aux_table, align 8
  %368 = load i32, ptr %313, align 8, !tbaa !199
  %369 = zext i32 %368 to i64
  %370 = getelementptr inbounds %struct.VEC_vn_ssa_aux_t_base, ptr %367, i64 0, i32 2, i64 %369
  %371 = load ptr, ptr %370, align 8, !tbaa !188
  %372 = icmp eq ptr %371, null
  br i1 %372, label %373, label %374, !prof !511

373:                                              ; preds = %361
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 180, ptr noundef nonnull @.str.1) #23
  br label %374

374:                                              ; preds = %373, %361
  %375 = getelementptr inbounds %struct.vn_ssa_aux, ptr %371, i64 0, i32 5
  %376 = load i8, ptr %375, align 4
  %377 = or i8 %376, 2
  store i8 %377, ptr %375, align 4
  %378 = getelementptr inbounds %struct.tree_ssa_name, ptr %308, i64 0, i32 2
  %379 = load ptr, ptr %378, align 8, !tbaa !199
  %380 = load i32, ptr %379, align 8
  %381 = trunc i32 %380 to i8
  switch i8 %381, label %391 [
    i8 18, label %404
    i8 16, label %382
  ], !prof !517

382:                                              ; preds = %374
  %383 = getelementptr inbounds %struct.gimple_statement_phi, ptr %379, i64 0, i32 3
  %384 = load ptr, ptr %383, align 8, !tbaa !199
  %385 = tail call zeroext i8 @is_gimple_reg(ptr noundef %384) #23
  %386 = getelementptr inbounds %struct.gimple_statement_phi, ptr %379, i64 0, i32 2
  %387 = load i32, ptr %386, align 4, !tbaa !199
  %388 = icmp sgt i32 %387, 0
  br i1 %388, label %389, label %404, !prof !518

389:                                              ; preds = %382
  %390 = getelementptr inbounds %struct.gimple_statement_phi, ptr %379, i64 0, i32 4, i64 0
  br label %404

391:                                              ; preds = %374
  %392 = and i32 %380, 255
  %393 = add nsw i32 %392, -10
  %394 = icmp ult i32 %393, -9
  br i1 %394, label %398, label %395, !prof !519

395:                                              ; preds = %391
  %396 = getelementptr inbounds %struct.gimple_statement_with_ops_base, ptr %379, i64 0, i32 2
  %397 = load ptr, ptr %396, align 8, !tbaa !199
  br label %398

398:                                              ; preds = %395, %391
  %399 = phi ptr [ %397, %395 ], [ null, %391 ]
  %400 = icmp eq ptr %399, null
  br i1 %400, label %404, label %401, !prof !519

401:                                              ; preds = %398
  %402 = getelementptr inbounds %struct.use_optype_d, ptr %399, i64 0, i32 1
  %403 = load ptr, ptr %399, align 8, !tbaa !520
  br label %404

404:                                              ; preds = %374, %401, %398, %389, %382
  %405 = phi ptr [ %379, %382 ], [ %379, %389 ], [ null, %398 ], [ null, %401 ], [ null, %374 ]
  %406 = phi i32 [ %387, %382 ], [ %387, %389 ], [ 0, %398 ], [ 0, %401 ], [ 0, %374 ]
  %407 = phi i32 [ 0, %382 ], [ 1, %389 ], [ 0, %398 ], [ 0, %401 ], [ 0, %374 ]
  %408 = phi ptr [ null, %382 ], [ null, %389 ], [ %399, %398 ], [ %403, %401 ], [ null, %374 ]
  %409 = phi i32 [ 2, %382 ], [ 2, %389 ], [ 2, %398 ], [ 2, %401 ], [ 0, %374 ]
  %410 = phi i8 [ 1, %382 ], [ 0, %389 ], [ 1, %398 ], [ 0, %401 ], [ 1, %374 ]
  %411 = phi ptr [ null, %382 ], [ %390, %389 ], [ null, %398 ], [ %402, %401 ], [ %309, %374 ]
  %412 = icmp eq ptr %307, null
  br label %413

413:                                              ; preds = %908, %404
  %414 = phi ptr [ %405, %404 ], [ %885, %908 ]
  %415 = phi i32 [ %406, %404 ], [ %886, %908 ]
  %416 = phi i32 [ %407, %404 ], [ %909, %908 ]
  %417 = phi ptr [ %408, %404 ], [ %910, %908 ]
  %418 = phi ptr [ null, %404 ], [ %889, %908 ]
  %419 = phi i32 [ %409, %404 ], [ %890, %908 ]
  %420 = phi i8 [ %410, %404 ], [ %911, %908 ]
  %421 = phi ptr [ %308, %404 ], [ %892, %908 ]
  %422 = phi ptr [ %411, %404 ], [ %912, %908 ]
  %423 = icmp eq i8 %420, 0
  br i1 %423, label %701, label %424, !prof !522

424:                                              ; preds = %413
  %425 = load ptr, ptr @vn_ssa_aux_table, align 8
  %426 = getelementptr inbounds %struct.tree_ssa_name, ptr %421, i64 0, i32 3
  %427 = load i32, ptr %426, align 8, !tbaa !199
  %428 = zext i32 %427 to i64
  %429 = getelementptr inbounds %struct.VEC_vn_ssa_aux_t_base, ptr %425, i64 0, i32 2, i64 %428
  %430 = load ptr, ptr %429, align 8, !tbaa !188
  %431 = icmp eq ptr %430, null
  br i1 %431, label %432, label %433, !prof !511

432:                                              ; preds = %424
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 180, ptr noundef nonnull @.str.1) #23
  br label %433

433:                                              ; preds = %432, %424
  %434 = getelementptr inbounds %struct.vn_ssa_aux, ptr %430, i64 0, i32 4
  %435 = load i32, ptr %434, align 8, !tbaa !513
  %436 = load ptr, ptr @vn_ssa_aux_table, align 8
  %437 = load i32, ptr %426, align 8, !tbaa !199
  %438 = zext i32 %437 to i64
  %439 = getelementptr inbounds %struct.VEC_vn_ssa_aux_t_base, ptr %436, i64 0, i32 2, i64 %438
  %440 = load ptr, ptr %439, align 8, !tbaa !188
  %441 = icmp eq ptr %440, null
  br i1 %441, label %442, label %443, !prof !511

442:                                              ; preds = %433
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 180, ptr noundef nonnull @.str.1) #23
  br label %443

443:                                              ; preds = %442, %433
  %444 = getelementptr inbounds %struct.vn_ssa_aux, ptr %440, i64 0, i32 3
  %445 = load i32, ptr %444, align 4, !tbaa !512
  %446 = icmp eq i32 %435, %445
  br i1 %446, label %447, label %643, !prof !523

447:                                              ; preds = %443, %475
  %448 = phi ptr [ %476, %475 ], [ null, %443 ]
  %449 = load ptr, ptr @sccstack, align 8
  %450 = load i32, ptr %449, align 8, !tbaa !475
  %451 = add i32 %450, -1
  store i32 %451, ptr %449, align 8, !tbaa !475
  %452 = zext i32 %451 to i64
  %453 = getelementptr inbounds %struct.VEC_tree_base, ptr %449, i64 0, i32 2, i64 %452
  %454 = load ptr, ptr %453, align 8, !tbaa !188
  %455 = load ptr, ptr @vn_ssa_aux_table, align 8
  %456 = getelementptr inbounds %struct.tree_ssa_name, ptr %454, i64 0, i32 3
  %457 = load i32, ptr %456, align 8, !tbaa !199
  %458 = zext i32 %457 to i64
  %459 = getelementptr inbounds %struct.VEC_vn_ssa_aux_t_base, ptr %455, i64 0, i32 2, i64 %458
  %460 = load ptr, ptr %459, align 8, !tbaa !188
  %461 = icmp eq ptr %460, null
  br i1 %461, label %462, label %463, !prof !511

462:                                              ; preds = %447
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 180, ptr noundef nonnull @.str.1) #23
  br label %463

463:                                              ; preds = %462, %447
  %464 = getelementptr inbounds %struct.vn_ssa_aux, ptr %460, i64 0, i32 5
  %465 = load i8, ptr %464, align 4
  %466 = and i8 %465, -3
  store i8 %466, ptr %464, align 4
  %467 = icmp eq ptr %448, null
  br i1 %467, label %473, label %468, !prof !523

468:                                              ; preds = %463
  %469 = getelementptr inbounds %struct.VEC_tree_base, ptr %448, i64 0, i32 1
  %470 = load i32, ptr %469, align 4, !tbaa !515
  %471 = load i32, ptr %448, align 8, !tbaa !475
  %472 = icmp eq i32 %470, %471
  br i1 %472, label %473, label %475

473:                                              ; preds = %468, %463
  %474 = tail call ptr @vec_heap_p_reserve(ptr noundef %448, i32 noundef 1) #23
  br label %475

475:                                              ; preds = %468, %473
  %476 = phi ptr [ %474, %473 ], [ %448, %468 ]
  %477 = load i32, ptr %476, align 8, !tbaa !475
  %478 = add i32 %477, 1
  store i32 %478, ptr %476, align 8, !tbaa !475
  %479 = zext i32 %477 to i64
  %480 = getelementptr inbounds %struct.VEC_tree_base, ptr %476, i64 0, i32 2, i64 %479
  store ptr %454, ptr %480, align 8, !tbaa !188
  %481 = icmp eq ptr %454, %421
  br i1 %481, label %482, label %447, !prof !523, !llvm.loop !524

482:                                              ; preds = %475
  %483 = load ptr, ptr @compiler_params, align 8, !tbaa !188
  %484 = getelementptr inbounds %struct.param_info, ptr %483, i64 104, i32 1
  %485 = load i32, ptr %484, align 8, !tbaa !525
  %486 = icmp ugt i32 %478, %485
  br i1 %486, label %487, label %492, !prof !511

487:                                              ; preds = %482
  %488 = load ptr, ptr @dump_file, align 8, !tbaa !188
  %489 = icmp eq ptr %488, null
  br i1 %489, label %636, label %490

490:                                              ; preds = %487
  %491 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %488, ptr noundef nonnull @.str.10, i32 noundef %478, i32 noundef %485)
  br label %636

492:                                              ; preds = %482
  %493 = icmp ugt i32 %478, 1
  br i1 %493, label %494, label %497, !prof !511

494:                                              ; preds = %492
  %495 = getelementptr inbounds %struct.VEC_tree_base, ptr %476, i64 0, i32 2
  %496 = zext i32 %478 to i64
  tail call void @spec_qsort(ptr noundef nonnull %495, i64 noundef %496, i64 noundef 8, ptr noundef nonnull @compare_ops) #23
  br label %497

497:                                              ; preds = %494, %492
  %498 = load ptr, ptr @dump_file, align 8, !tbaa !188
  %499 = icmp eq ptr %498, null
  br i1 %499, label %521, label %500, !prof !523

500:                                              ; preds = %497
  %501 = load i32, ptr @dump_flags, align 4, !tbaa !203
  %502 = and i32 %501, 8
  %503 = icmp eq i32 %502, 0
  br i1 %503, label %521, label %504

504:                                              ; preds = %500
  %505 = tail call i64 @fwrite(ptr nonnull @.str.11, i64 17, i64 1, ptr nonnull %498)
  br label %506

506:                                              ; preds = %516, %504
  %507 = phi i32 [ 0, %504 ], [ %518, %516 ]
  %508 = load i32, ptr %476, align 8, !tbaa !475
  %509 = icmp ugt i32 %508, %507
  br i1 %509, label %510, label %514

510:                                              ; preds = %506
  %511 = zext i32 %507 to i64
  %512 = getelementptr inbounds %struct.VEC_tree_base, ptr %476, i64 0, i32 2, i64 %511
  %513 = load ptr, ptr %512, align 8, !tbaa !188
  br label %514

514:                                              ; preds = %510, %506
  %515 = phi ptr [ %513, %510 ], [ null, %506 ]
  br i1 %509, label %516, label %519

516:                                              ; preds = %514
  tail call void @print_generic_expr(ptr noundef nonnull %498, ptr noundef %515, i32 noundef 0) #23
  %517 = tail call i32 @fputc(i32 32, ptr nonnull %498)
  %518 = add nuw i32 %507, 1
  br label %506, !llvm.loop !527

519:                                              ; preds = %514
  %520 = tail call i32 @fputc(i32 10, ptr nonnull %498)
  br label %521

521:                                              ; preds = %519, %500, %497
  %522 = load i32, ptr %476, align 8, !tbaa !475
  %523 = icmp eq i32 %522, 1
  br i1 %523, label %524, label %542, !prof !523

524:                                              ; preds = %521
  %525 = getelementptr inbounds %struct.VEC_tree_base, ptr %476, i64 0, i32 2, i64 0
  %526 = load ptr, ptr %525, align 8, !tbaa !188
  %527 = load ptr, ptr @vn_ssa_aux_table, align 8
  %528 = getelementptr inbounds %struct.tree_ssa_name, ptr %526, i64 0, i32 3
  %529 = load i32, ptr %528, align 8, !tbaa !199
  %530 = zext i32 %529 to i64
  %531 = getelementptr inbounds %struct.VEC_vn_ssa_aux_t_base, ptr %527, i64 0, i32 2, i64 %530
  %532 = load ptr, ptr %531, align 8, !tbaa !188
  %533 = icmp eq ptr %532, null
  br i1 %533, label %534, label %535, !prof !511

534:                                              ; preds = %524
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 180, ptr noundef nonnull @.str.1) #23
  br label %535

535:                                              ; preds = %534, %524
  %536 = getelementptr inbounds %struct.vn_ssa_aux, ptr %532, i64 0, i32 5
  %537 = load i8, ptr %536, align 4
  %538 = and i8 %537, 8
  %539 = icmp eq i8 %538, 0
  br i1 %539, label %540, label %635, !prof !528

540:                                              ; preds = %535
  %541 = tail call fastcc zeroext i8 @visit_use(ptr noundef %526)
  br label %635

542:                                              ; preds = %521
  %543 = load ptr, ptr @optimistic_info, align 8, !tbaa !188
  store ptr %543, ptr @current_info, align 8, !tbaa !188
  br label %546

544:                                              ; preds = %618
  %545 = icmp eq i8 %611, 0
  br i1 %545, label %624, label %546, !llvm.loop !529

546:                                              ; preds = %542, %544
  %547 = phi i32 [ 0, %542 ], [ %548, %544 ]
  %548 = add i32 %547, 1
  %549 = load ptr, ptr @optimistic_info, align 8, !tbaa !188
  %550 = load ptr, ptr %549, align 8, !tbaa !427
  tail call void @htab_empty(ptr noundef %550) #23
  %551 = load ptr, ptr @optimistic_info, align 8, !tbaa !188
  %552 = getelementptr inbounds %struct.vn_tables_s, ptr %551, i64 0, i32 1
  %553 = load ptr, ptr %552, align 8, !tbaa !483
  tail call void @htab_empty(ptr noundef %553) #23
  %554 = load ptr, ptr @optimistic_info, align 8, !tbaa !188
  %555 = getelementptr inbounds %struct.vn_tables_s, ptr %554, i64 0, i32 2
  %556 = load ptr, ptr %555, align 8, !tbaa !346
  tail call void @htab_empty(ptr noundef %556) #23
  %557 = load ptr, ptr @optimistic_info, align 8, !tbaa !188
  %558 = getelementptr inbounds %struct.vn_tables_s, ptr %557, i64 0, i32 3, i32 1
  %559 = load ptr, ptr %558, align 8, !tbaa !451
  %560 = ptrtoint ptr %559 to i64
  %561 = sub i64 0, %560
  %562 = getelementptr inbounds %struct.vn_tables_s, ptr %557, i64 0, i32 3, i32 5
  store i64 %561, ptr %562, align 8, !tbaa !445
  %563 = icmp sgt i64 %561, 0
  br i1 %563, label %564, label %574

564:                                              ; preds = %546
  %565 = getelementptr inbounds %struct.vn_tables_s, ptr %557, i64 0, i32 3, i32 4
  %566 = load ptr, ptr %565, align 8, !tbaa !446
  %567 = ptrtoint ptr %566 to i64
  %568 = sub i64 %567, %560
  %569 = icmp sgt i64 %568, %561
  br i1 %569, label %570, label %574

570:                                              ; preds = %564
  %571 = getelementptr inbounds i8, ptr %559, i64 %561
  %572 = getelementptr inbounds %struct.vn_tables_s, ptr %557, i64 0, i32 3, i32 2
  store ptr %571, ptr %572, align 8, !tbaa !449
  %573 = getelementptr inbounds %struct.vn_tables_s, ptr %557, i64 0, i32 3, i32 3
  store ptr %571, ptr %573, align 8, !tbaa !447
  br label %577

574:                                              ; preds = %564, %546
  %575 = getelementptr inbounds %struct.vn_tables_s, ptr %557, i64 0, i32 3
  %576 = getelementptr inbounds i8, ptr %559, i64 %561
  tail call void @obstack_free(ptr noundef nonnull %575, ptr noundef %576) #23
  br label %577

577:                                              ; preds = %574, %570
  %578 = load ptr, ptr @optimistic_info, align 8, !tbaa !188
  %579 = getelementptr inbounds %struct.vn_tables_s, ptr %578, i64 0, i32 3
  %580 = tail call i32 @_obstack_begin(ptr noundef nonnull %579, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @xmalloc, ptr noundef nonnull @free) #23
  %581 = load ptr, ptr @optimistic_info, align 8, !tbaa !188
  %582 = getelementptr inbounds %struct.vn_tables_s, ptr %581, i64 0, i32 4
  %583 = load ptr, ptr %582, align 8, !tbaa !485
  tail call void @empty_alloc_pool(ptr noundef %583) #23
  %584 = load ptr, ptr @optimistic_info, align 8, !tbaa !188
  %585 = getelementptr inbounds %struct.vn_tables_s, ptr %584, i64 0, i32 5
  %586 = load ptr, ptr %585, align 8, !tbaa !395
  tail call void @empty_alloc_pool(ptr noundef %586) #23
  br label %587

587:                                              ; preds = %606, %577
  %588 = phi i32 [ 0, %577 ], [ %608, %606 ]
  %589 = load i32, ptr %476, align 8, !tbaa !475
  %590 = icmp ugt i32 %589, %588
  br i1 %590, label %591, label %595

591:                                              ; preds = %587
  %592 = zext i32 %588 to i64
  %593 = getelementptr inbounds %struct.VEC_tree_base, ptr %476, i64 0, i32 2, i64 %592
  %594 = load ptr, ptr %593, align 8, !tbaa !188
  br label %595

595:                                              ; preds = %591, %587
  %596 = phi ptr [ %594, %591 ], [ null, %587 ]
  br i1 %590, label %597, label %609

597:                                              ; preds = %595
  %598 = load ptr, ptr @vn_ssa_aux_table, align 8
  %599 = getelementptr inbounds %struct.tree_ssa_name, ptr %596, i64 0, i32 3
  %600 = load i32, ptr %599, align 8, !tbaa !199
  %601 = zext i32 %600 to i64
  %602 = getelementptr inbounds %struct.VEC_vn_ssa_aux_t_base, ptr %598, i64 0, i32 2, i64 %601
  %603 = load ptr, ptr %602, align 8, !tbaa !188
  %604 = icmp eq ptr %603, null
  br i1 %604, label %605, label %606

605:                                              ; preds = %597
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 180, ptr noundef nonnull @.str.1) #23
  br label %606

606:                                              ; preds = %605, %597
  %607 = getelementptr inbounds %struct.vn_ssa_aux, ptr %603, i64 0, i32 1
  store ptr null, ptr %607, align 8, !tbaa !230
  %608 = add i32 %588, 1
  br label %587, !llvm.loop !530

609:                                              ; preds = %595, %620
  %610 = phi i32 [ %623, %620 ], [ 0, %595 ]
  %611 = phi i8 [ %622, %620 ], [ 0, %595 ]
  %612 = load i32, ptr %476, align 8, !tbaa !475
  %613 = icmp ugt i32 %612, %610
  br i1 %613, label %614, label %618

614:                                              ; preds = %609
  %615 = zext i32 %610 to i64
  %616 = getelementptr inbounds %struct.VEC_tree_base, ptr %476, i64 0, i32 2, i64 %615
  %617 = load ptr, ptr %616, align 8, !tbaa !188
  br label %618

618:                                              ; preds = %614, %609
  %619 = phi ptr [ %617, %614 ], [ null, %609 ]
  br i1 %613, label %620, label %544

620:                                              ; preds = %618
  %621 = tail call fastcc zeroext i8 @visit_use(ptr noundef %619)
  %622 = or i8 %621, %611
  %623 = add nuw i32 %610, 1
  br label %609, !llvm.loop !531

624:                                              ; preds = %544
  %625 = load ptr, ptr @cfun, align 8, !tbaa !188
  tail call void @statistics_histogram_event(ptr noundef %625, ptr noundef nonnull @.str.13, i32 noundef %548) #23
  %626 = load ptr, ptr @valid_info, align 8, !tbaa !188
  store ptr %626, ptr @current_info, align 8, !tbaa !188
  %627 = load ptr, ptr @optimistic_info, align 8, !tbaa !188
  %628 = load ptr, ptr %627, align 8, !tbaa !427
  tail call void @htab_traverse(ptr noundef %628, ptr noundef nonnull @copy_nary, ptr noundef null) #23
  %629 = load ptr, ptr @optimistic_info, align 8, !tbaa !188
  %630 = getelementptr inbounds %struct.vn_tables_s, ptr %629, i64 0, i32 1
  %631 = load ptr, ptr %630, align 8, !tbaa !483
  tail call void @htab_traverse(ptr noundef %631, ptr noundef nonnull @copy_phis, ptr noundef null) #23
  %632 = load ptr, ptr @optimistic_info, align 8, !tbaa !188
  %633 = getelementptr inbounds %struct.vn_tables_s, ptr %632, i64 0, i32 2
  %634 = load ptr, ptr %633, align 8, !tbaa !346
  tail call void @htab_traverse(ptr noundef %634, ptr noundef nonnull @copy_references, ptr noundef null) #23
  br label %635

635:                                              ; preds = %624, %540, %535
  tail call void @free(ptr noundef %476)
  br label %636

636:                                              ; preds = %635, %490, %487
  br i1 %486, label %637, label %643, !prof !511

637:                                              ; preds = %636
  %638 = icmp eq ptr %307, null
  br i1 %638, label %640, label %639

639:                                              ; preds = %637
  tail call void @free(ptr noundef %307)
  br label %640

640:                                              ; preds = %639, %637
  %641 = icmp eq ptr %306, null
  br i1 %641, label %914, label %642

642:                                              ; preds = %640
  tail call void @free(ptr noundef %306)
  br label %914

643:                                              ; preds = %636, %443
  br i1 %412, label %646, label %644, !prof !532

644:                                              ; preds = %643
  %645 = load i32, ptr %307, align 8, !tbaa !475
  br label %646

646:                                              ; preds = %644, %643
  %647 = phi i32 [ %645, %644 ], [ 0, %643 ]
  %648 = icmp eq i32 %647, 0
  br i1 %648, label %649, label %654, !prof !533

649:                                              ; preds = %646
  br i1 %412, label %651, label %650, !prof !534

650:                                              ; preds = %649
  tail call void @free(ptr noundef %307)
  br label %651

651:                                              ; preds = %650, %649
  %652 = icmp eq ptr %306, null
  br i1 %652, label %913, label %653, !prof !534

653:                                              ; preds = %651
  tail call void @free(ptr noundef %306)
  br label %913

654:                                              ; preds = %646
  %655 = load i32, ptr %307, align 8, !tbaa !475
  %656 = add i32 %655, -1
  store i32 %656, ptr %307, align 8, !tbaa !475
  %657 = zext i32 %656 to i64
  %658 = getelementptr inbounds %struct.VEC_tree_base, ptr %307, i64 0, i32 2, i64 %657
  %659 = load ptr, ptr %658, align 8, !tbaa !188
  %660 = load i32, ptr %306, align 8, !tbaa !535
  %661 = add i32 %660, -1
  %662 = zext i32 %661 to i64
  %663 = getelementptr inbounds %struct.VEC_ssa_op_iter_base, ptr %306, i64 0, i32 2, i64 %662
  %664 = load i8, ptr %663, align 8
  %665 = getelementptr inbounds i8, ptr %663, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %2, ptr noundef nonnull align 1 dereferenceable(3) %665, i64 3, i1 false)
  %666 = getelementptr inbounds i8, ptr %663, i64 4
  %667 = load i32, ptr %666, align 4
  %668 = getelementptr inbounds i8, ptr %663, i64 8
  %669 = load ptr, ptr %668, align 8
  %670 = getelementptr inbounds i8, ptr %663, i64 16
  %671 = load ptr, ptr %670, align 8
  %672 = getelementptr inbounds i8, ptr %663, i64 24
  %673 = load i32, ptr %672, align 8
  %674 = getelementptr inbounds i8, ptr %663, i64 28
  %675 = load i32, ptr %674, align 4
  %676 = getelementptr inbounds i8, ptr %663, i64 32
  %677 = load ptr, ptr %676, align 8
  store i32 %661, ptr %306, align 8, !tbaa !535
  %678 = load ptr, ptr @vn_ssa_aux_table, align 8
  %679 = getelementptr inbounds %struct.tree_ssa_name, ptr %659, i64 0, i32 3
  %680 = load i32, ptr %679, align 8, !tbaa !199
  %681 = zext i32 %680 to i64
  %682 = getelementptr inbounds %struct.VEC_vn_ssa_aux_t_base, ptr %678, i64 0, i32 2, i64 %681
  %683 = load ptr, ptr %682, align 8, !tbaa !188
  %684 = icmp eq ptr %683, null
  br i1 %684, label %685, label %686, !prof !537

685:                                              ; preds = %654
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 180, ptr noundef nonnull @.str.1) #23
  br label %686

686:                                              ; preds = %685, %654
  %687 = getelementptr inbounds %struct.vn_ssa_aux, ptr %683, i64 0, i32 4
  %688 = load i32, ptr %687, align 8, !tbaa !513
  %689 = load ptr, ptr @vn_ssa_aux_table, align 8
  %690 = load i32, ptr %426, align 8, !tbaa !199
  %691 = zext i32 %690 to i64
  %692 = getelementptr inbounds %struct.VEC_vn_ssa_aux_t_base, ptr %689, i64 0, i32 2, i64 %691
  %693 = load ptr, ptr %692, align 8, !tbaa !188
  %694 = icmp eq ptr %693, null
  br i1 %694, label %695, label %696, !prof !537

695:                                              ; preds = %686
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 180, ptr noundef nonnull @.str.1) #23
  br label %696

696:                                              ; preds = %695, %686
  %697 = getelementptr inbounds %struct.vn_ssa_aux, ptr %693, i64 0, i32 4
  %698 = load i32, ptr %697, align 8, !tbaa !513
  %699 = icmp ult i32 %688, %698
  %700 = load ptr, ptr @vn_ssa_aux_table, align 8
  br i1 %699, label %758, label %764, !prof !538

701:                                              ; preds = %413
  %702 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %422, i64 0, i32 3
  %703 = load ptr, ptr %702, align 8, !tbaa !539
  %704 = load ptr, ptr %703, align 8, !tbaa !188
  %705 = load i64, ptr %704, align 8
  %706 = and i64 %705, 65535
  %707 = icmp eq i64 %706, 141
  br i1 %707, label %708, label %884, !prof !540

708:                                              ; preds = %701
  %709 = load ptr, ptr @vn_ssa_aux_table, align 8
  %710 = getelementptr inbounds %struct.tree_ssa_name, ptr %704, i64 0, i32 3
  %711 = load i32, ptr %710, align 8, !tbaa !199
  %712 = zext i32 %711 to i64
  %713 = getelementptr inbounds %struct.VEC_vn_ssa_aux_t_base, ptr %709, i64 0, i32 2, i64 %712
  %714 = load ptr, ptr %713, align 8, !tbaa !188
  %715 = icmp eq ptr %714, null
  br i1 %715, label %716, label %717, !prof !541

716:                                              ; preds = %708
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 180, ptr noundef nonnull @.str.1) #23
  br label %717

717:                                              ; preds = %716, %708
  %718 = getelementptr inbounds %struct.vn_ssa_aux, ptr %714, i64 0, i32 5
  %719 = load i8, ptr %718, align 4
  %720 = and i8 %719, 1
  %721 = icmp eq i8 %720, 0
  br i1 %721, label %722, label %785, !prof !542

722:                                              ; preds = %717
  %723 = icmp eq ptr %306, null
  br i1 %723, label %729, label %724, !prof !543

724:                                              ; preds = %722
  %725 = getelementptr inbounds %struct.VEC_ssa_op_iter_base, ptr %306, i64 0, i32 1
  %726 = load i32, ptr %725, align 4, !tbaa !544
  %727 = load i32, ptr %306, align 8, !tbaa !535
  %728 = icmp eq i32 %726, %727
  br i1 %728, label %729, label %731, !prof !545

729:                                              ; preds = %724, %722
  %730 = tail call ptr @vec_heap_o_reserve(ptr noundef %306, i32 noundef 1, i64 noundef 8, i64 noundef 40) #23
  br label %731

731:                                              ; preds = %729, %724
  %732 = phi ptr [ %730, %729 ], [ %306, %724 ]
  %733 = load i32, ptr %732, align 8, !tbaa !535
  %734 = add i32 %733, 1
  store i32 %734, ptr %732, align 8, !tbaa !535
  %735 = zext i32 %733 to i64
  %736 = getelementptr inbounds %struct.VEC_ssa_op_iter_base, ptr %732, i64 0, i32 2, i64 %735
  store i8 %420, ptr %736, align 8, !tbaa.struct !546
  %737 = getelementptr inbounds i8, ptr %736, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %737, ptr noundef nonnull align 1 dereferenceable(3) %2, i64 3, i1 false), !tbaa.struct !547
  %738 = getelementptr inbounds i8, ptr %736, i64 4
  store i32 %419, ptr %738, align 4, !tbaa.struct !548
  %739 = getelementptr inbounds i8, ptr %736, i64 8
  store ptr %418, ptr %739, align 8, !tbaa.struct !549
  %740 = getelementptr inbounds i8, ptr %736, i64 16
  store ptr %417, ptr %740, align 8, !tbaa.struct !550
  %741 = getelementptr inbounds i8, ptr %736, i64 24
  store i32 %416, ptr %741, align 8, !tbaa.struct !551
  %742 = getelementptr inbounds i8, ptr %736, i64 28
  store i32 %415, ptr %742, align 4, !tbaa.struct !552
  %743 = getelementptr inbounds i8, ptr %736, i64 32
  store ptr %414, ptr %743, align 8, !tbaa.struct !305
  %744 = icmp eq ptr %307, null
  br i1 %744, label %750, label %745, !prof !543

745:                                              ; preds = %731
  %746 = getelementptr inbounds %struct.VEC_tree_base, ptr %307, i64 0, i32 1
  %747 = load i32, ptr %746, align 4, !tbaa !515
  %748 = load i32, ptr %307, align 8, !tbaa !475
  %749 = icmp eq i32 %747, %748
  br i1 %749, label %750, label %752, !prof !545

750:                                              ; preds = %745, %731
  %751 = tail call ptr @vec_heap_p_reserve(ptr noundef %307, i32 noundef 1) #23
  br label %752

752:                                              ; preds = %750, %745
  %753 = phi ptr [ %751, %750 ], [ %307, %745 ]
  %754 = load i32, ptr %753, align 8, !tbaa !475
  %755 = add i32 %754, 1
  store i32 %755, ptr %753, align 8, !tbaa !475
  %756 = zext i32 %754 to i64
  %757 = getelementptr inbounds %struct.VEC_tree_base, ptr %753, i64 0, i32 2, i64 %756
  store ptr %421, ptr %757, align 8, !tbaa !188
  br label %305

758:                                              ; preds = %696
  %759 = load i32, ptr %679, align 8, !tbaa !199
  %760 = zext i32 %759 to i64
  %761 = getelementptr inbounds %struct.VEC_vn_ssa_aux_t_base, ptr %700, i64 0, i32 2, i64 %760
  %762 = load ptr, ptr %761, align 8, !tbaa !188
  %763 = icmp eq ptr %762, null
  br i1 %763, label %770, label %772, !prof !537

764:                                              ; preds = %696
  %765 = load i32, ptr %426, align 8, !tbaa !199
  %766 = zext i32 %765 to i64
  %767 = getelementptr inbounds %struct.VEC_vn_ssa_aux_t_base, ptr %700, i64 0, i32 2, i64 %766
  %768 = load ptr, ptr %767, align 8, !tbaa !188
  %769 = icmp eq ptr %768, null
  br i1 %769, label %770, label %772

770:                                              ; preds = %764, %758
  %771 = phi ptr [ %762, %758 ], [ %768, %764 ]
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 180, ptr noundef nonnull @.str.1) #23
  br label %772

772:                                              ; preds = %770, %764, %758
  %773 = phi ptr [ %762, %758 ], [ %768, %764 ], [ %771, %770 ]
  %774 = getelementptr inbounds %struct.vn_ssa_aux, ptr %773, i64 0, i32 4
  %775 = load i32, ptr %774, align 8, !tbaa !513
  %776 = load ptr, ptr @vn_ssa_aux_table, align 8
  %777 = load i32, ptr %679, align 8, !tbaa !199
  %778 = zext i32 %777 to i64
  %779 = getelementptr inbounds %struct.VEC_vn_ssa_aux_t_base, ptr %776, i64 0, i32 2, i64 %778
  %780 = load ptr, ptr %779, align 8, !tbaa !188
  %781 = icmp eq ptr %780, null
  br i1 %781, label %782, label %783, !prof !537

782:                                              ; preds = %772
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 180, ptr noundef nonnull @.str.1) #23
  br label %783

783:                                              ; preds = %782, %772
  %784 = getelementptr inbounds %struct.vn_ssa_aux, ptr %780, i64 0, i32 4
  store i32 %775, ptr %784, align 8, !tbaa !513
  br label %785

785:                                              ; preds = %783, %717
  %786 = phi ptr [ %414, %717 ], [ %677, %783 ]
  %787 = phi i32 [ %415, %717 ], [ %675, %783 ]
  %788 = phi i32 [ %416, %717 ], [ %673, %783 ]
  %789 = phi ptr [ %417, %717 ], [ %671, %783 ]
  %790 = phi ptr [ %418, %717 ], [ %669, %783 ]
  %791 = phi i32 [ %419, %717 ], [ %667, %783 ]
  %792 = phi i8 [ %420, %717 ], [ %664, %783 ]
  %793 = phi ptr [ %421, %717 ], [ %659, %783 ]
  %794 = phi ptr [ %704, %717 ], [ %421, %783 ]
  %795 = load ptr, ptr @vn_ssa_aux_table, align 8
  %796 = getelementptr inbounds %struct.tree_ssa_name, ptr %794, i64 0, i32 3
  %797 = load i32, ptr %796, align 8, !tbaa !199
  %798 = zext i32 %797 to i64
  %799 = getelementptr inbounds %struct.VEC_vn_ssa_aux_t_base, ptr %795, i64 0, i32 2, i64 %798
  %800 = load ptr, ptr %799, align 8, !tbaa !188
  %801 = icmp eq ptr %800, null
  br i1 %801, label %802, label %803, !prof !541

802:                                              ; preds = %785
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 180, ptr noundef nonnull @.str.1) #23
  br label %803

803:                                              ; preds = %802, %785
  %804 = getelementptr inbounds %struct.vn_ssa_aux, ptr %800, i64 0, i32 3
  %805 = load i32, ptr %804, align 4, !tbaa !512
  %806 = load ptr, ptr @vn_ssa_aux_table, align 8
  %807 = getelementptr inbounds %struct.tree_ssa_name, ptr %793, i64 0, i32 3
  %808 = load i32, ptr %807, align 8, !tbaa !199
  %809 = zext i32 %808 to i64
  %810 = getelementptr inbounds %struct.VEC_vn_ssa_aux_t_base, ptr %806, i64 0, i32 2, i64 %809
  %811 = load ptr, ptr %810, align 8, !tbaa !188
  %812 = icmp eq ptr %811, null
  br i1 %812, label %813, label %814, !prof !541

813:                                              ; preds = %803
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 180, ptr noundef nonnull @.str.1) #23
  br label %814

814:                                              ; preds = %813, %803
  %815 = getelementptr inbounds %struct.vn_ssa_aux, ptr %811, i64 0, i32 3
  %816 = load i32, ptr %815, align 4, !tbaa !512
  %817 = icmp ult i32 %805, %816
  br i1 %817, label %818, label %884, !prof !553

818:                                              ; preds = %814
  %819 = load ptr, ptr @vn_ssa_aux_table, align 8
  %820 = load i32, ptr %796, align 8, !tbaa !199
  %821 = zext i32 %820 to i64
  %822 = getelementptr inbounds %struct.VEC_vn_ssa_aux_t_base, ptr %819, i64 0, i32 2, i64 %821
  %823 = load ptr, ptr %822, align 8, !tbaa !188
  %824 = icmp eq ptr %823, null
  br i1 %824, label %825, label %826, !prof !554

825:                                              ; preds = %818
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 180, ptr noundef nonnull @.str.1) #23
  br label %826

826:                                              ; preds = %825, %818
  %827 = getelementptr inbounds %struct.vn_ssa_aux, ptr %823, i64 0, i32 5
  %828 = load i8, ptr %827, align 4
  %829 = and i8 %828, 2
  %830 = icmp eq i8 %829, 0
  br i1 %830, label %884, label %831, !prof !555

831:                                              ; preds = %826
  %832 = load ptr, ptr @vn_ssa_aux_table, align 8
  %833 = load i32, ptr %796, align 8, !tbaa !199
  %834 = zext i32 %833 to i64
  %835 = getelementptr inbounds %struct.VEC_vn_ssa_aux_t_base, ptr %832, i64 0, i32 2, i64 %834
  %836 = load ptr, ptr %835, align 8, !tbaa !188
  %837 = icmp eq ptr %836, null
  br i1 %837, label %838, label %839

838:                                              ; preds = %831
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 180, ptr noundef nonnull @.str.1) #23
  br label %839

839:                                              ; preds = %838, %831
  %840 = getelementptr inbounds %struct.vn_ssa_aux, ptr %836, i64 0, i32 3
  %841 = load i32, ptr %840, align 4, !tbaa !512
  %842 = load ptr, ptr @vn_ssa_aux_table, align 8
  %843 = load i32, ptr %807, align 8, !tbaa !199
  %844 = zext i32 %843 to i64
  %845 = getelementptr inbounds %struct.VEC_vn_ssa_aux_t_base, ptr %842, i64 0, i32 2, i64 %844
  %846 = load ptr, ptr %845, align 8, !tbaa !188
  %847 = icmp eq ptr %846, null
  br i1 %847, label %848, label %849

848:                                              ; preds = %839
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 180, ptr noundef nonnull @.str.1) #23
  br label %849

849:                                              ; preds = %848, %839
  %850 = getelementptr inbounds %struct.vn_ssa_aux, ptr %846, i64 0, i32 4
  %851 = load i32, ptr %850, align 8, !tbaa !513
  %852 = icmp ult i32 %841, %851
  %853 = load ptr, ptr @vn_ssa_aux_table, align 8
  br i1 %852, label %854, label %863

854:                                              ; preds = %849
  %855 = load i32, ptr %796, align 8, !tbaa !199
  %856 = zext i32 %855 to i64
  %857 = getelementptr inbounds %struct.VEC_vn_ssa_aux_t_base, ptr %853, i64 0, i32 2, i64 %856
  %858 = load ptr, ptr %857, align 8, !tbaa !188
  %859 = icmp eq ptr %858, null
  br i1 %859, label %860, label %861

860:                                              ; preds = %854
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 180, ptr noundef nonnull @.str.1) #23
  br label %861

861:                                              ; preds = %860, %854
  %862 = getelementptr inbounds %struct.vn_ssa_aux, ptr %858, i64 0, i32 3
  br label %872

863:                                              ; preds = %849
  %864 = load i32, ptr %807, align 8, !tbaa !199
  %865 = zext i32 %864 to i64
  %866 = getelementptr inbounds %struct.VEC_vn_ssa_aux_t_base, ptr %853, i64 0, i32 2, i64 %865
  %867 = load ptr, ptr %866, align 8, !tbaa !188
  %868 = icmp eq ptr %867, null
  br i1 %868, label %869, label %870

869:                                              ; preds = %863
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 180, ptr noundef nonnull @.str.1) #23
  br label %870

870:                                              ; preds = %869, %863
  %871 = getelementptr inbounds %struct.vn_ssa_aux, ptr %867, i64 0, i32 4
  br label %872

872:                                              ; preds = %870, %861
  %873 = phi ptr [ %862, %861 ], [ %871, %870 ]
  %874 = load i32, ptr %873, align 4, !tbaa !203
  %875 = load ptr, ptr @vn_ssa_aux_table, align 8
  %876 = load i32, ptr %807, align 8, !tbaa !199
  %877 = zext i32 %876 to i64
  %878 = getelementptr inbounds %struct.VEC_vn_ssa_aux_t_base, ptr %875, i64 0, i32 2, i64 %877
  %879 = load ptr, ptr %878, align 8, !tbaa !188
  %880 = icmp eq ptr %879, null
  br i1 %880, label %881, label %882

881:                                              ; preds = %872
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 180, ptr noundef nonnull @.str.1) #23
  br label %882

882:                                              ; preds = %881, %872
  %883 = getelementptr inbounds %struct.vn_ssa_aux, ptr %879, i64 0, i32 4
  store i32 %874, ptr %883, align 8, !tbaa !513
  br label %884

884:                                              ; preds = %882, %826, %814, %701
  %885 = phi ptr [ %786, %826 ], [ %786, %882 ], [ %786, %814 ], [ %414, %701 ]
  %886 = phi i32 [ %787, %826 ], [ %787, %882 ], [ %787, %814 ], [ %415, %701 ]
  %887 = phi i32 [ %788, %826 ], [ %788, %882 ], [ %788, %814 ], [ %416, %701 ]
  %888 = phi ptr [ %789, %826 ], [ %789, %882 ], [ %789, %814 ], [ %417, %701 ]
  %889 = phi ptr [ %790, %826 ], [ %790, %882 ], [ %790, %814 ], [ %418, %701 ]
  %890 = phi i32 [ %791, %826 ], [ %791, %882 ], [ %791, %814 ], [ %419, %701 ]
  %891 = phi i8 [ %792, %826 ], [ %792, %882 ], [ %792, %814 ], [ %420, %701 ]
  %892 = phi ptr [ %793, %826 ], [ %793, %882 ], [ %793, %814 ], [ %421, %701 ]
  %893 = icmp eq ptr %888, null
  br i1 %893, label %897, label %894, !prof !556

894:                                              ; preds = %884
  %895 = getelementptr inbounds %struct.use_optype_d, ptr %888, i64 0, i32 1
  %896 = load ptr, ptr %888, align 8, !tbaa !520
  br label %908

897:                                              ; preds = %884
  %898 = icmp slt i32 %887, %886
  br i1 %898, label %899, label %908, !prof !557

899:                                              ; preds = %897
  %900 = add nsw i32 %887, 1
  %901 = getelementptr inbounds %struct.gimple_statement_phi, ptr %885, i64 0, i32 1
  %902 = load i32, ptr %901, align 8, !tbaa !199
  %903 = icmp ult i32 %902, %887
  br i1 %903, label %904, label %905, !prof !558

904:                                              ; preds = %899
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 3103, ptr noundef nonnull @.str.1) #23
  br label %905

905:                                              ; preds = %904, %899
  %906 = zext i32 %887 to i64
  %907 = getelementptr inbounds %struct.gimple_statement_phi, ptr %885, i64 0, i32 4, i64 %906
  br label %908

908:                                              ; preds = %905, %897, %894
  %909 = phi i32 [ %900, %905 ], [ %887, %897 ], [ %887, %894 ]
  %910 = phi ptr [ %888, %905 ], [ %888, %897 ], [ %896, %894 ]
  %911 = phi i8 [ %891, %905 ], [ 1, %897 ], [ %891, %894 ]
  %912 = phi ptr [ %907, %905 ], [ null, %897 ], [ %895, %894 ]
  br label %413, !llvm.loop !559

913:                                              ; preds = %651, %653
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %2)
  br label %915

914:                                              ; preds = %642, %640
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %2)
  tail call void @free_scc_vn()
  br label %1302

915:                                              ; preds = %913, %301, %286, %273
  %916 = add nuw nsw i64 %260, 1
  br label %259, !llvm.loop !560

917:                                              ; preds = %269, %962
  %918 = phi i64 [ %963, %962 ], [ 1, %269 ]
  %919 = load ptr, ptr @cfun, align 8, !tbaa !188
  %920 = getelementptr inbounds %struct.function, ptr %919, i64 0, i32 3
  %921 = load ptr, ptr %920, align 8, !tbaa !468
  %922 = getelementptr inbounds %struct.gimple_df, ptr %921, i64 0, i32 2
  %923 = load ptr, ptr %922, align 8, !tbaa !470
  %924 = icmp eq ptr %923, null
  br i1 %924, label %927, label %925, !prof !502

925:                                              ; preds = %917
  %926 = load i32, ptr %923, align 8, !tbaa !475
  br label %927

927:                                              ; preds = %917, %925
  %928 = phi i32 [ %926, %925 ], [ 0, %917 ]
  %929 = zext i32 %928 to i64
  %930 = icmp ult i64 %918, %929
  br i1 %930, label %931, label %966, !prof !503

931:                                              ; preds = %927
  %932 = getelementptr inbounds %struct.VEC_tree_base, ptr %923, i64 0, i32 2, i64 %918
  %933 = load ptr, ptr %932, align 8, !tbaa !188
  %934 = icmp eq ptr %933, null
  br i1 %934, label %962, label %935, !prof !504

935:                                              ; preds = %931
  %936 = load ptr, ptr @vn_ssa_aux_table, align 8
  %937 = getelementptr inbounds %struct.tree_ssa_name, ptr %933, i64 0, i32 3
  %938 = load i32, ptr %937, align 8, !tbaa !199
  %939 = zext i32 %938 to i64
  %940 = getelementptr inbounds %struct.VEC_vn_ssa_aux_t_base, ptr %936, i64 0, i32 2, i64 %939
  %941 = load ptr, ptr %940, align 8, !tbaa !188
  %942 = icmp eq ptr %941, null
  br i1 %942, label %943, label %944, !prof !498

943:                                              ; preds = %935
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 180, ptr noundef nonnull @.str.1) #23
  br label %944

944:                                              ; preds = %935, %943
  %945 = load ptr, ptr %941, align 8, !tbaa !227
  %946 = icmp eq ptr %945, %933
  %947 = load ptr, ptr @VN_TOP, align 8
  %948 = icmp eq ptr %945, %947
  %949 = select i1 %946, i1 true, i1 %948, !prof !561
  br i1 %949, label %950, label %953, !prof !562

950:                                              ; preds = %944
  %951 = load i32, ptr @next_value_id, align 4, !tbaa !203
  %952 = add i32 %951, 1
  store i32 %952, ptr @next_value_id, align 4, !tbaa !203
  br label %959

953:                                              ; preds = %944
  %954 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef %945) #23
  %955 = icmp eq i8 %954, 0
  br i1 %955, label %962, label %956, !prof !563

956:                                              ; preds = %953
  %957 = load ptr, ptr %941, align 8, !tbaa !227
  %958 = tail call i32 @get_or_alloc_constant_value_id(ptr noundef %957)
  br label %959

959:                                              ; preds = %956, %950
  %960 = phi i32 [ %951, %950 ], [ %958, %956 ]
  %961 = getelementptr inbounds %struct.vn_ssa_aux, ptr %941, i64 0, i32 2
  store i32 %960, ptr %961, align 8, !tbaa !398
  br label %962

962:                                              ; preds = %959, %953, %931
  %963 = add nuw nsw i64 %918, 1
  br label %917, !llvm.loop !564

964:                                              ; preds = %977
  %965 = icmp eq i8 %967, 0
  br i1 %965, label %1035, label %1032, !prof !565

966:                                              ; preds = %927, %1032
  %967 = phi i8 [ %1033, %1032 ], [ 0, %927 ]
  %968 = phi i64 [ %1034, %1032 ], [ 1, %927 ]
  %969 = load ptr, ptr @cfun, align 8, !tbaa !188
  %970 = getelementptr inbounds %struct.function, ptr %969, i64 0, i32 3
  %971 = load ptr, ptr %970, align 8, !tbaa !468
  %972 = getelementptr inbounds %struct.gimple_df, ptr %971, i64 0, i32 2
  %973 = load ptr, ptr %972, align 8, !tbaa !470
  %974 = icmp eq ptr %973, null
  br i1 %974, label %977, label %975, !prof !566

975:                                              ; preds = %966
  %976 = load i32, ptr %973, align 8, !tbaa !475
  br label %977

977:                                              ; preds = %966, %975
  %978 = phi i32 [ %976, %975 ], [ 0, %966 ]
  %979 = zext i32 %978 to i64
  %980 = icmp ult i64 %968, %979
  br i1 %980, label %981, label %964, !prof !567

981:                                              ; preds = %977
  %982 = getelementptr inbounds %struct.VEC_tree_base, ptr %973, i64 0, i32 2, i64 %968
  %983 = load ptr, ptr %982, align 8, !tbaa !188
  %984 = icmp eq ptr %983, null
  br i1 %984, label %1029, label %985, !prof !568

985:                                              ; preds = %981
  %986 = load ptr, ptr @vn_ssa_aux_table, align 8
  %987 = getelementptr inbounds %struct.tree_ssa_name, ptr %983, i64 0, i32 3
  %988 = load i32, ptr %987, align 8, !tbaa !199
  %989 = zext i32 %988 to i64
  %990 = getelementptr inbounds %struct.VEC_vn_ssa_aux_t_base, ptr %986, i64 0, i32 2, i64 %989
  %991 = load ptr, ptr %990, align 8, !tbaa !188
  %992 = icmp eq ptr %991, null
  br i1 %992, label %993, label %994, !prof !569

993:                                              ; preds = %985
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 180, ptr noundef nonnull @.str.1) #23
  br label %994

994:                                              ; preds = %985, %993
  %995 = load ptr, ptr %991, align 8, !tbaa !227
  %996 = load i64, ptr %995, align 8
  %997 = and i64 %996, 65535
  %998 = icmp ne i64 %997, 141
  %999 = icmp eq ptr %995, %983
  %1000 = or i1 %999, %998
  br i1 %1000, label %1029, label %1001, !prof !570

1001:                                             ; preds = %994
  %1002 = getelementptr inbounds %struct.vn_ssa_aux, ptr %991, i64 0, i32 2
  %1003 = load i32, ptr %1002, align 8, !tbaa !398
  %1004 = load ptr, ptr @vn_ssa_aux_table, align 8
  %1005 = getelementptr inbounds %struct.tree_ssa_name, ptr %995, i64 0, i32 3
  %1006 = load i32, ptr %1005, align 8, !tbaa !199
  %1007 = zext i32 %1006 to i64
  %1008 = getelementptr inbounds %struct.VEC_vn_ssa_aux_t_base, ptr %1004, i64 0, i32 2, i64 %1007
  %1009 = load ptr, ptr %1008, align 8, !tbaa !188
  %1010 = icmp eq ptr %1009, null
  br i1 %1010, label %1011, label %1012, !prof !571

1011:                                             ; preds = %1001
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 180, ptr noundef nonnull @.str.1) #23
  br label %1012

1012:                                             ; preds = %1001, %1011
  %1013 = getelementptr inbounds %struct.vn_ssa_aux, ptr %1009, i64 0, i32 2
  %1014 = load i32, ptr %1013, align 8, !tbaa !398
  %1015 = icmp eq i32 %1003, %1014
  br i1 %1015, label %1029, label %1016, !prof !572

1016:                                             ; preds = %1012
  %1017 = load ptr, ptr %991, align 8, !tbaa !227
  %1018 = load ptr, ptr @vn_ssa_aux_table, align 8
  %1019 = getelementptr inbounds %struct.tree_ssa_name, ptr %1017, i64 0, i32 3
  %1020 = load i32, ptr %1019, align 8, !tbaa !199
  %1021 = zext i32 %1020 to i64
  %1022 = getelementptr inbounds %struct.VEC_vn_ssa_aux_t_base, ptr %1018, i64 0, i32 2, i64 %1021
  %1023 = load ptr, ptr %1022, align 8, !tbaa !188
  %1024 = icmp eq ptr %1023, null
  br i1 %1024, label %1025, label %1026, !prof !573

1025:                                             ; preds = %1016
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 180, ptr noundef nonnull @.str.1) #23
  br label %1026

1026:                                             ; preds = %1016, %1025
  %1027 = getelementptr inbounds %struct.vn_ssa_aux, ptr %1023, i64 0, i32 2
  %1028 = load i32, ptr %1027, align 8, !tbaa !398
  store i32 %1028, ptr %1002, align 8, !tbaa !398
  br label %1029

1029:                                             ; preds = %994, %1012, %1026, %981
  %1030 = phi i8 [ %967, %981 ], [ 1, %1026 ], [ %967, %1012 ], [ %967, %994 ]
  %1031 = add nuw nsw i64 %968, 1
  br label %1032

1032:                                             ; preds = %1029, %964
  %1033 = phi i8 [ %1030, %1029 ], [ 0, %964 ]
  %1034 = phi i64 [ %1031, %1029 ], [ 1, %964 ]
  br label %966, !llvm.loop !574

1035:                                             ; preds = %964
  %1036 = load ptr, ptr @valid_info, align 8, !tbaa !188
  %1037 = load ptr, ptr %1036, align 8, !tbaa !427
  %1038 = getelementptr inbounds %struct.htab, ptr %1037, i64 0, i32 3
  %1039 = load ptr, ptr %1038, align 8, !tbaa !575
  %1040 = tail call i64 @htab_size(ptr noundef %1037) #23
  %1041 = getelementptr inbounds ptr, ptr %1039, i64 %1040
  br label %1042

1042:                                             ; preds = %1046, %1035
  %1043 = phi ptr [ %1039, %1035 ], [ %1047, %1046 ]
  %1044 = load ptr, ptr %1043, align 8, !tbaa !188
  %1045 = icmp ult ptr %1044, inttoptr (i64 2 to ptr)
  br i1 %1045, label %1046, label %1049, !prof !577

1046:                                             ; preds = %1042
  %1047 = getelementptr inbounds ptr, ptr %1043, i64 1
  %1048 = icmp ult ptr %1047, %1041
  br i1 %1048, label %1042, label %1049, !prof !578, !llvm.loop !579

1049:                                             ; preds = %1046, %1042
  %1050 = phi ptr [ %1043, %1042 ], [ %1047, %1046 ]
  %1051 = icmp ult ptr %1050, %1041
  br i1 %1051, label %1052, label %1054, !prof !580

1052:                                             ; preds = %1049
  %1053 = load ptr, ptr %1050, align 8, !tbaa !188
  br label %1054

1054:                                             ; preds = %1052, %1049
  %1055 = phi ptr [ %1053, %1052 ], [ null, %1049 ]
  %1056 = icmp ult ptr %1050, %1041
  br i1 %1056, label %1057, label %1100, !prof !492

1057:                                             ; preds = %1054, %1097
  %1058 = phi ptr [ %1098, %1097 ], [ %1055, %1054 ]
  %1059 = phi ptr [ %1091, %1097 ], [ %1050, %1054 ]
  %1060 = getelementptr inbounds %struct.vn_nary_op_s, ptr %1058, i64 0, i32 3
  %1061 = load ptr, ptr %1060, align 8, !tbaa !431
  %1062 = icmp eq ptr %1061, null
  br i1 %1062, label %1087, label %1063, !prof !443

1063:                                             ; preds = %1057
  %1064 = load i64, ptr %1061, align 8
  %1065 = and i64 %1064, 65535
  %1066 = icmp eq i64 %1065, 141
  br i1 %1066, label %1067, label %1079, !prof !465

1067:                                             ; preds = %1063
  %1068 = load ptr, ptr @vn_ssa_aux_table, align 8
  %1069 = getelementptr inbounds %struct.tree_ssa_name, ptr %1061, i64 0, i32 3
  %1070 = load i32, ptr %1069, align 8, !tbaa !199
  %1071 = zext i32 %1070 to i64
  %1072 = getelementptr inbounds %struct.VEC_vn_ssa_aux_t_base, ptr %1068, i64 0, i32 2, i64 %1071
  %1073 = load ptr, ptr %1072, align 8, !tbaa !188
  %1074 = icmp eq ptr %1073, null
  br i1 %1074, label %1075, label %1076, !prof !443

1075:                                             ; preds = %1067
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 180, ptr noundef nonnull @.str.1) #23
  br label %1076

1076:                                             ; preds = %1075, %1067
  %1077 = getelementptr inbounds %struct.vn_ssa_aux, ptr %1073, i64 0, i32 2
  %1078 = load i32, ptr %1077, align 8, !tbaa !398
  br label %1085

1079:                                             ; preds = %1063
  %1080 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef nonnull %1061) #23
  %1081 = icmp eq i8 %1080, 0
  br i1 %1081, label %1087, label %1082

1082:                                             ; preds = %1079
  %1083 = load ptr, ptr %1060, align 8, !tbaa !431
  %1084 = tail call i32 @get_or_alloc_constant_value_id(ptr noundef %1083)
  br label %1085

1085:                                             ; preds = %1076, %1082
  %1086 = phi i32 [ %1084, %1082 ], [ %1078, %1076 ]
  store i32 %1086, ptr %1058, align 8, !tbaa !452
  br label %1087

1087:                                             ; preds = %1085, %1079, %1057
  br label %1088

1088:                                             ; preds = %1087, %1093
  %1089 = phi ptr [ %1091, %1093 ], [ %1059, %1087 ]
  %1090 = phi ptr [ %1096, %1093 ], [ undef, %1087 ]
  %1091 = getelementptr inbounds ptr, ptr %1089, i64 1
  %1092 = icmp ult ptr %1091, %1041
  br i1 %1092, label %1093, label %1097, !prof !581

1093:                                             ; preds = %1088
  %1094 = load ptr, ptr %1091, align 8, !tbaa !188
  %1095 = icmp ult ptr %1094, inttoptr (i64 2 to ptr)
  %1096 = select i1 %1095, ptr %1090, ptr %1094, !prof !582
  br i1 %1095, label %1088, label %1097, !prof !582

1097:                                             ; preds = %1093, %1088
  %1098 = phi ptr [ null, %1088 ], [ %1096, %1093 ]
  %1099 = icmp ult ptr %1091, %1041
  br i1 %1099, label %1057, label %1100, !prof !583, !llvm.loop !584

1100:                                             ; preds = %1097, %1054
  %1101 = load ptr, ptr @valid_info, align 8, !tbaa !188
  %1102 = getelementptr inbounds %struct.vn_tables_s, ptr %1101, i64 0, i32 1
  %1103 = load ptr, ptr %1102, align 8, !tbaa !483
  %1104 = getelementptr inbounds %struct.htab, ptr %1103, i64 0, i32 3
  %1105 = load ptr, ptr %1104, align 8, !tbaa !575
  %1106 = tail call i64 @htab_size(ptr noundef %1103) #23
  %1107 = getelementptr inbounds ptr, ptr %1105, i64 %1106
  br label %1108

1108:                                             ; preds = %1112, %1100
  %1109 = phi ptr [ %1105, %1100 ], [ %1113, %1112 ]
  %1110 = load ptr, ptr %1109, align 8, !tbaa !188
  %1111 = icmp ult ptr %1110, inttoptr (i64 2 to ptr)
  br i1 %1111, label %1112, label %1115, !prof !585

1112:                                             ; preds = %1108
  %1113 = getelementptr inbounds ptr, ptr %1109, i64 1
  %1114 = icmp ult ptr %1113, %1107
  br i1 %1114, label %1108, label %1115, !prof !586, !llvm.loop !579

1115:                                             ; preds = %1112, %1108
  %1116 = phi ptr [ %1109, %1108 ], [ %1113, %1112 ]
  %1117 = icmp ult ptr %1116, %1107
  br i1 %1117, label %1118, label %1120, !prof !486

1118:                                             ; preds = %1115
  %1119 = load ptr, ptr %1116, align 8, !tbaa !188
  br label %1120

1120:                                             ; preds = %1118, %1115
  %1121 = phi ptr [ %1119, %1118 ], [ null, %1115 ]
  %1122 = icmp ult ptr %1116, %1107
  br i1 %1122, label %1123, label %1166, !prof !492

1123:                                             ; preds = %1120, %1163
  %1124 = phi ptr [ %1164, %1163 ], [ %1121, %1120 ]
  %1125 = phi ptr [ %1157, %1163 ], [ %1116, %1120 ]
  %1126 = getelementptr inbounds %struct.vn_phi_s, ptr %1124, i64 0, i32 4
  %1127 = load ptr, ptr %1126, align 8, !tbaa !587
  %1128 = icmp eq ptr %1127, null
  br i1 %1128, label %1153, label %1129, !prof !589

1129:                                             ; preds = %1123
  %1130 = load i64, ptr %1127, align 8
  %1131 = and i64 %1130, 65535
  %1132 = icmp eq i64 %1131, 141
  br i1 %1132, label %1133, label %1145, !prof !590

1133:                                             ; preds = %1129
  %1134 = load ptr, ptr @vn_ssa_aux_table, align 8
  %1135 = getelementptr inbounds %struct.tree_ssa_name, ptr %1127, i64 0, i32 3
  %1136 = load i32, ptr %1135, align 8, !tbaa !199
  %1137 = zext i32 %1136 to i64
  %1138 = getelementptr inbounds %struct.VEC_vn_ssa_aux_t_base, ptr %1134, i64 0, i32 2, i64 %1137
  %1139 = load ptr, ptr %1138, align 8, !tbaa !188
  %1140 = icmp eq ptr %1139, null
  br i1 %1140, label %1141, label %1142, !prof !589

1141:                                             ; preds = %1133
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 180, ptr noundef nonnull @.str.1) #23
  br label %1142

1142:                                             ; preds = %1141, %1133
  %1143 = getelementptr inbounds %struct.vn_ssa_aux, ptr %1139, i64 0, i32 2
  %1144 = load i32, ptr %1143, align 8, !tbaa !398
  br label %1151

1145:                                             ; preds = %1129
  %1146 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef nonnull %1127) #23
  %1147 = icmp eq i8 %1146, 0
  br i1 %1147, label %1153, label %1148

1148:                                             ; preds = %1145
  %1149 = load ptr, ptr %1126, align 8, !tbaa !587
  %1150 = tail call i32 @get_or_alloc_constant_value_id(ptr noundef %1149)
  br label %1151

1151:                                             ; preds = %1142, %1148
  %1152 = phi i32 [ %1150, %1148 ], [ %1144, %1142 ]
  store i32 %1152, ptr %1124, align 8, !tbaa !591
  br label %1153

1153:                                             ; preds = %1151, %1145, %1123
  br label %1154

1154:                                             ; preds = %1153, %1159
  %1155 = phi ptr [ %1157, %1159 ], [ %1125, %1153 ]
  %1156 = phi ptr [ %1162, %1159 ], [ undef, %1153 ]
  %1157 = getelementptr inbounds ptr, ptr %1155, i64 1
  %1158 = icmp ult ptr %1157, %1107
  br i1 %1158, label %1159, label %1163, !prof !592

1159:                                             ; preds = %1154
  %1160 = load ptr, ptr %1157, align 8, !tbaa !188
  %1161 = icmp ult ptr %1160, inttoptr (i64 2 to ptr)
  %1162 = select i1 %1161, ptr %1156, ptr %1160, !prof !593
  br i1 %1161, label %1154, label %1163, !prof !593

1163:                                             ; preds = %1159, %1154
  %1164 = phi ptr [ null, %1154 ], [ %1162, %1159 ]
  %1165 = icmp ult ptr %1157, %1107
  br i1 %1165, label %1123, label %1166, !prof !594, !llvm.loop !595

1166:                                             ; preds = %1163, %1120
  %1167 = load ptr, ptr @valid_info, align 8, !tbaa !188
  %1168 = getelementptr inbounds %struct.vn_tables_s, ptr %1167, i64 0, i32 2
  %1169 = load ptr, ptr %1168, align 8, !tbaa !346
  %1170 = getelementptr inbounds %struct.htab, ptr %1169, i64 0, i32 3
  %1171 = load ptr, ptr %1170, align 8, !tbaa !575
  %1172 = tail call i64 @htab_size(ptr noundef %1169) #23
  %1173 = getelementptr inbounds ptr, ptr %1171, i64 %1172
  br label %1174

1174:                                             ; preds = %1178, %1166
  %1175 = phi ptr [ %1171, %1166 ], [ %1179, %1178 ]
  %1176 = load ptr, ptr %1175, align 8, !tbaa !188
  %1177 = icmp ult ptr %1176, inttoptr (i64 2 to ptr)
  br i1 %1177, label %1178, label %1181, !prof !596

1178:                                             ; preds = %1174
  %1179 = getelementptr inbounds ptr, ptr %1175, i64 1
  %1180 = icmp ult ptr %1179, %1173
  br i1 %1180, label %1174, label %1181, !prof !597, !llvm.loop !579

1181:                                             ; preds = %1178, %1174
  %1182 = phi ptr [ %1175, %1174 ], [ %1179, %1178 ]
  %1183 = icmp ult ptr %1182, %1173
  br i1 %1183, label %1184, label %1186, !prof !486

1184:                                             ; preds = %1181
  %1185 = load ptr, ptr %1182, align 8, !tbaa !188
  br label %1186

1186:                                             ; preds = %1184, %1181
  %1187 = phi ptr [ %1185, %1184 ], [ null, %1181 ]
  %1188 = icmp ult ptr %1182, %1173
  br i1 %1188, label %1189, label %1232, !prof !492

1189:                                             ; preds = %1186, %1229
  %1190 = phi ptr [ %1230, %1229 ], [ %1187, %1186 ]
  %1191 = phi ptr [ %1223, %1229 ], [ %1182, %1186 ]
  %1192 = getelementptr inbounds %struct.vn_reference_s, ptr %1190, i64 0, i32 6
  %1193 = load ptr, ptr %1192, align 8, !tbaa !354
  %1194 = icmp eq ptr %1193, null
  br i1 %1194, label %1219, label %1195, !prof !397

1195:                                             ; preds = %1189
  %1196 = load i64, ptr %1193, align 8
  %1197 = and i64 %1196, 65535
  %1198 = icmp eq i64 %1197, 141
  br i1 %1198, label %1199, label %1211, !prof !396

1199:                                             ; preds = %1195
  %1200 = load ptr, ptr @vn_ssa_aux_table, align 8
  %1201 = getelementptr inbounds %struct.tree_ssa_name, ptr %1193, i64 0, i32 3
  %1202 = load i32, ptr %1201, align 8, !tbaa !199
  %1203 = zext i32 %1202 to i64
  %1204 = getelementptr inbounds %struct.VEC_vn_ssa_aux_t_base, ptr %1200, i64 0, i32 2, i64 %1203
  %1205 = load ptr, ptr %1204, align 8, !tbaa !188
  %1206 = icmp eq ptr %1205, null
  br i1 %1206, label %1207, label %1208, !prof !397

1207:                                             ; preds = %1199
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 180, ptr noundef nonnull @.str.1) #23
  br label %1208

1208:                                             ; preds = %1207, %1199
  %1209 = getelementptr inbounds %struct.vn_ssa_aux, ptr %1205, i64 0, i32 2
  %1210 = load i32, ptr %1209, align 8, !tbaa !398
  br label %1217

1211:                                             ; preds = %1195
  %1212 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef nonnull %1193) #23
  %1213 = icmp eq i8 %1212, 0
  br i1 %1213, label %1219, label %1214

1214:                                             ; preds = %1211
  %1215 = load ptr, ptr %1192, align 8, !tbaa !354
  %1216 = tail call i32 @get_or_alloc_constant_value_id(ptr noundef %1215)
  br label %1217

1217:                                             ; preds = %1208, %1214
  %1218 = phi i32 [ %1216, %1214 ], [ %1210, %1208 ]
  store i32 %1218, ptr %1190, align 8, !tbaa !399
  br label %1219

1219:                                             ; preds = %1217, %1211, %1189
  br label %1220

1220:                                             ; preds = %1219, %1225
  %1221 = phi ptr [ %1223, %1225 ], [ %1191, %1219 ]
  %1222 = phi ptr [ %1228, %1225 ], [ undef, %1219 ]
  %1223 = getelementptr inbounds ptr, ptr %1221, i64 1
  %1224 = icmp ult ptr %1223, %1173
  br i1 %1224, label %1225, label %1229, !prof !598

1225:                                             ; preds = %1220
  %1226 = load ptr, ptr %1223, align 8, !tbaa !188
  %1227 = icmp ult ptr %1226, inttoptr (i64 2 to ptr)
  %1228 = select i1 %1227, ptr %1222, ptr %1226, !prof !599
  br i1 %1227, label %1220, label %1229, !prof !599

1229:                                             ; preds = %1225, %1220
  %1230 = phi ptr [ null, %1220 ], [ %1228, %1225 ]
  %1231 = icmp ult ptr %1223, %1173
  br i1 %1231, label %1189, label %1232, !prof !600, !llvm.loop !601

1232:                                             ; preds = %1229, %1186
  %1233 = load ptr, ptr @dump_file, align 8, !tbaa !188
  %1234 = icmp eq ptr %1233, null
  br i1 %1234, label %1302, label %1235, !prof !486

1235:                                             ; preds = %1232
  %1236 = load i32, ptr @dump_flags, align 4, !tbaa !203
  %1237 = and i32 %1236, 8
  %1238 = icmp eq i32 %1237, 0
  br i1 %1238, label %1302, label %1239

1239:                                             ; preds = %1235
  %1240 = tail call i64 @fwrite(ptr nonnull @.str.2, i64 15, i64 1, ptr nonnull %1233)
  br label %1241

1241:                                             ; preds = %1300, %1239
  %1242 = phi i64 [ 0, %1239 ], [ %1301, %1300 ]
  %1243 = load ptr, ptr @cfun, align 8, !tbaa !188
  %1244 = getelementptr inbounds %struct.function, ptr %1243, i64 0, i32 3
  %1245 = load ptr, ptr %1244, align 8, !tbaa !468
  %1246 = getelementptr inbounds %struct.gimple_df, ptr %1245, i64 0, i32 2
  %1247 = load ptr, ptr %1246, align 8, !tbaa !470
  %1248 = icmp eq ptr %1247, null
  br i1 %1248, label %1251, label %1249

1249:                                             ; preds = %1241
  %1250 = load i32, ptr %1247, align 8, !tbaa !475
  br label %1251

1251:                                             ; preds = %1241, %1249
  %1252 = phi i32 [ %1250, %1249 ], [ 0, %1241 ]
  %1253 = zext i32 %1252 to i64
  %1254 = icmp ult i64 %1242, %1253
  br i1 %1254, label %1255, label %1302

1255:                                             ; preds = %1251
  %1256 = getelementptr inbounds %struct.VEC_tree_base, ptr %1247, i64 0, i32 2, i64 %1242
  %1257 = load ptr, ptr %1256, align 8, !tbaa !188
  %1258 = icmp eq ptr %1257, null
  br i1 %1258, label %1300, label %1259

1259:                                             ; preds = %1255
  %1260 = load ptr, ptr @vn_ssa_aux_table, align 8
  %1261 = getelementptr inbounds %struct.tree_ssa_name, ptr %1257, i64 0, i32 3
  %1262 = load i32, ptr %1261, align 8, !tbaa !199
  %1263 = zext i32 %1262 to i64
  %1264 = getelementptr inbounds %struct.VEC_vn_ssa_aux_t_base, ptr %1260, i64 0, i32 2, i64 %1263
  %1265 = load ptr, ptr %1264, align 8, !tbaa !188
  %1266 = icmp eq ptr %1265, null
  br i1 %1266, label %1267, label %1268

1267:                                             ; preds = %1259
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 180, ptr noundef nonnull @.str.1) #23
  br label %1268

1268:                                             ; preds = %1259, %1267
  %1269 = getelementptr inbounds %struct.vn_ssa_aux, ptr %1265, i64 0, i32 5
  %1270 = load i8, ptr %1269, align 4
  %1271 = and i8 %1270, 1
  %1272 = icmp eq i8 %1271, 0
  br i1 %1272, label %1300, label %1273

1273:                                             ; preds = %1268
  %1274 = load ptr, ptr @vn_ssa_aux_table, align 8
  %1275 = load i32, ptr %1261, align 8, !tbaa !199
  %1276 = zext i32 %1275 to i64
  %1277 = getelementptr inbounds %struct.VEC_vn_ssa_aux_t_base, ptr %1274, i64 0, i32 2, i64 %1276
  %1278 = load ptr, ptr %1277, align 8, !tbaa !188
  %1279 = icmp eq ptr %1278, null
  br i1 %1279, label %1280, label %1281

1280:                                             ; preds = %1273
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 180, ptr noundef nonnull @.str.1) #23
  br label %1281

1281:                                             ; preds = %1273, %1280
  %1282 = load ptr, ptr %1278, align 8, !tbaa !227
  %1283 = icmp eq ptr %1282, %1257
  br i1 %1283, label %1300, label %1284

1284:                                             ; preds = %1281
  %1285 = load ptr, ptr @dump_file, align 8, !tbaa !188
  tail call void @print_generic_expr(ptr noundef %1285, ptr noundef nonnull %1257, i32 noundef 0) #23
  %1286 = load ptr, ptr @dump_file, align 8, !tbaa !188
  %1287 = tail call i64 @fwrite(ptr nonnull @.str.3, i64 3, i64 1, ptr %1286)
  %1288 = load ptr, ptr @dump_file, align 8, !tbaa !188
  %1289 = load ptr, ptr @vn_ssa_aux_table, align 8
  %1290 = load i32, ptr %1261, align 8, !tbaa !199
  %1291 = zext i32 %1290 to i64
  %1292 = getelementptr inbounds %struct.VEC_vn_ssa_aux_t_base, ptr %1289, i64 0, i32 2, i64 %1291
  %1293 = load ptr, ptr %1292, align 8, !tbaa !188
  %1294 = icmp eq ptr %1293, null
  br i1 %1294, label %1295, label %1296

1295:                                             ; preds = %1284
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 180, ptr noundef nonnull @.str.1) #23
  br label %1296

1296:                                             ; preds = %1284, %1295
  %1297 = load ptr, ptr %1293, align 8, !tbaa !227
  tail call void @print_generic_expr(ptr noundef %1288, ptr noundef %1297, i32 noundef 0) #23
  %1298 = load ptr, ptr @dump_file, align 8, !tbaa !188
  %1299 = tail call i32 @fputc(i32 10, ptr %1298)
  br label %1300

1300:                                             ; preds = %1296, %1281, %1268, %1255
  %1301 = add nuw nsw i64 %1242, 1
  br label %1241, !llvm.loop !602

1302:                                             ; preds = %1251, %1232, %1235, %914
  %1303 = phi i8 [ 0, %914 ], [ 1, %1235 ], [ 1, %1232 ], [ 1, %1251 ]
  store i8 0, ptr @may_insert, align 1, !tbaa !199
  ret i8 %1303
}

declare ptr @gimple_default_def(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #1

declare void @print_generic_expr(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local i32 @get_max_value_id() local_unnamed_addr #17 !prof !603 {
  %1 = load i32, ptr @next_value_id, align 4, !tbaa !203
  ret i32 %1
}

declare i32 @operand_equal_p(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i8 @vn_nary_may_trap(ptr nocapture noundef readonly %0) local_unnamed_addr #11 !prof !604 {
  %2 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #23
  %3 = getelementptr inbounds %struct.vn_nary_op_s, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 4
  %5 = and i32 %4, 65535
  %6 = zext nneg i32 %5 to i64
  %7 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %6
  %8 = load i32, ptr %7, align 4, !tbaa !203
  %9 = add i32 %8, -5
  %10 = icmp ult i32 %9, 3
  br i1 %10, label %11, label %44, !prof !605

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.vn_nary_op_s, ptr %0, i64 0, i32 4
  %13 = load ptr, ptr %12, align 8, !tbaa !419
  %14 = load i64, ptr %13, align 8
  %15 = trunc i64 %14 to i16
  switch i16 %15, label %32 [
    i16 9, label %22
    i16 13, label %16
    i16 14, label %16
  ], !prof !606

16:                                               ; preds = %11, %11
  %17 = getelementptr inbounds %struct.tree_common, ptr %13, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !199
  %19 = load i64, ptr %18, align 8
  %20 = and i64 %19, 65535
  %21 = icmp eq i64 %20, 9
  br i1 %21, label %22, label %32

22:                                               ; preds = %16, %11
  %23 = load i32, ptr @flag_trapping_math, align 4, !tbaa !203
  %24 = icmp ne i32 %23, 0
  %25 = load i32, ptr @flag_finite_math_only, align 4
  %26 = icmp eq i32 %25, 0
  %27 = select i1 %24, i1 %26, i1 false
  %28 = zext i1 %27 to i8
  %29 = load i32, ptr @flag_signaling_nans, align 4, !tbaa !203
  %30 = icmp ne i32 %29, 0
  %31 = zext i1 %30 to i8
  br label %44

32:                                               ; preds = %16, %11
  %33 = trunc i64 %14 to i32
  %34 = and i32 %33, 65535
  %35 = add nsw i32 %34, -6
  %36 = icmp ult i32 %35, 3
  br i1 %36, label %37, label %44, !prof !605

37:                                               ; preds = %32
  %38 = and i64 %14, 2097152
  %39 = icmp eq i64 %38, 0
  %40 = load i32, ptr @flag_trapv, align 4
  %41 = icmp ne i32 %40, 0
  %42 = select i1 %39, i1 %41, i1 false, !prof !607
  %43 = zext i1 %42 to i8
  br label %44

44:                                               ; preds = %37, %32, %1, %22
  %45 = phi i8 [ %28, %22 ], [ 0, %1 ], [ 0, %32 ], [ 0, %37 ]
  %46 = phi i8 [ %31, %22 ], [ 0, %1 ], [ 0, %32 ], [ 0, %37 ]
  %47 = phi i8 [ 1, %22 ], [ 0, %1 ], [ 0, %32 ], [ 0, %37 ]
  %48 = phi i8 [ 0, %22 ], [ 0, %1 ], [ 0, %32 ], [ %43, %37 ]
  %49 = getelementptr inbounds %struct.vn_nary_op_s, ptr %0, i64 0, i32 5, i64 1
  %50 = load ptr, ptr %49, align 8, !tbaa !188
  %51 = call zeroext i8 @operation_could_trap_helper_p(i32 noundef %5, i8 noundef zeroext %47, i8 noundef zeroext %48, i8 noundef zeroext %45, i8 noundef zeroext %46, ptr noundef %50, ptr noundef nonnull %2) #23
  %52 = load i8, ptr %2, align 1, !tbaa !199
  %53 = icmp ne i8 %52, 0
  %54 = icmp ne i8 %51, 0
  %55 = select i1 %53, i1 %54, i1 false, !prof !608
  br i1 %55, label %71, label %56, !prof !609

56:                                               ; preds = %44
  %57 = load i32, ptr %3, align 4
  %58 = icmp ult i32 %57, 65536
  br i1 %58, label %71, label %65, !prof !610

59:                                               ; preds = %65
  %60 = add nuw nsw i64 %66, 1
  %61 = load i32, ptr %3, align 4
  %62 = lshr i32 %61, 16
  %63 = zext nneg i32 %62 to i64
  %64 = icmp ult i64 %60, %63
  br i1 %64, label %65, label %71, !prof !611, !llvm.loop !612

65:                                               ; preds = %56, %59
  %66 = phi i64 [ %60, %59 ], [ 0, %56 ]
  %67 = getelementptr inbounds %struct.vn_nary_op_s, ptr %0, i64 0, i32 5, i64 %66
  %68 = load ptr, ptr %67, align 8, !tbaa !188
  %69 = call zeroext i8 @tree_could_trap_p(ptr noundef %68) #23
  %70 = icmp eq i8 %69, 0
  br i1 %70, label %59, label %71, !prof !613

71:                                               ; preds = %65, %59, %56, %44
  %72 = phi i8 [ 1, %44 ], [ 0, %56 ], [ 0, %59 ], [ 1, %65 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #23
  ret i8 %72
}

declare zeroext i8 @operation_could_trap_helper_p(i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @tree_could_trap_p(ptr noundef) local_unnamed_addr #3

declare ptr @vec_heap_p_reserve_exact(ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @gimple_get_lhs(ptr noundef) local_unnamed_addr #3

declare ptr @vec_heap_o_reserve(ptr noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #14

declare ptr @vec_heap_o_reserve_exact(ptr noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

declare ptr @ao_ref_base(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @is_gimple_reg_type(ptr noundef) local_unnamed_addr #3

declare ptr @get_ref_base_and_extent(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @fold_convert_loc(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @gimple_assign_single_p(ptr noundef) local_unnamed_addr #3

declare void @free_alloc_pool(ptr noundef) local_unnamed_addr #3

declare void @calculate_dominance_info(i32 noundef) local_unnamed_addr #3

declare ptr @htab_create(i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal i32 @vn_constant_hash(ptr nocapture noundef readonly %0) #18 !prof !614 !PGOFuncName !615 {
  %2 = getelementptr inbounds %struct.vn_constant_s, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 4, !tbaa !254
  ret i32 %3
}

; Function Attrs: nounwind uwtable
define internal i32 @vn_constant_eq(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #11 !prof !616 !PGOFuncName !617 {
  %3 = getelementptr inbounds %struct.vn_constant_s, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 4, !tbaa !254
  %5 = getelementptr inbounds %struct.vn_constant_s, ptr %1, i64 0, i32 1
  %6 = load i32, ptr %5, align 4, !tbaa !254
  %7 = icmp eq i32 %4, %6
  br i1 %7, label %8, label %35, !prof !618

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.vn_constant_s, ptr %0, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !256
  %11 = getelementptr inbounds %struct.vn_constant_s, ptr %1, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !256
  %13 = icmp eq ptr %10, %12
  br i1 %13, label %27, label %14, !prof !291

14:                                               ; preds = %8
  %15 = icmp ne ptr %10, null
  %16 = icmp ne ptr %12, null
  %17 = and i1 %15, %16
  br i1 %17, label %18, label %35, !prof !292

18:                                               ; preds = %14
  %19 = load i64, ptr %10, align 8
  %20 = load i64, ptr %12, align 8
  %21 = xor i64 %20, %19
  %22 = and i64 %21, 65535
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %35, !prof !293

24:                                               ; preds = %18
  %25 = tail call i32 @operand_equal_p(ptr noundef nonnull %10, ptr noundef nonnull %12, i32 noundef 2) #23
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %35, label %27, !prof !294

27:                                               ; preds = %24, %8
  %28 = getelementptr inbounds %struct.tree_common, ptr %10, i64 0, i32 2
  %29 = load ptr, ptr %28, align 8, !tbaa !199
  %30 = getelementptr inbounds %struct.tree_common, ptr %12, i64 0, i32 2
  %31 = load ptr, ptr %30, align 8, !tbaa !199
  %32 = tail call zeroext i8 @types_compatible_p(ptr noundef %29, ptr noundef %31) #23
  %33 = icmp ne i8 %32, 0
  %34 = zext i1 %33 to i32
  br label %35

35:                                               ; preds = %18, %24, %14, %27, %2
  %36 = phi i32 [ 0, %2 ], [ %34, %27 ], [ 0, %14 ], [ 0, %24 ], [ 0, %18 ]
  ret i32 %36
}

declare ptr @bitmap_obstack_alloc_stat(ptr noundef) local_unnamed_addr #3

declare i32 @_obstack_begin(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @xcalloc(i64 noundef, i64 noundef) local_unnamed_addr #3

declare i32 @pre_and_rev_post_order_compute(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

declare ptr @create_tmp_var_raw(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @renumber_gimple_stmt_uids() local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal i32 @vn_phi_hash(ptr nocapture noundef readonly %0) #19 !prof !619 !PGOFuncName !620 {
  %2 = getelementptr inbounds %struct.vn_phi_s, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 4, !tbaa !621
  ret i32 %3
}

; Function Attrs: inlinehint nounwind uwtable
define internal noundef i32 @vn_phi_eq(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #9 !prof !622 !PGOFuncName !623 {
  %3 = getelementptr inbounds %struct.vn_phi_s, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 4, !tbaa !621
  %5 = getelementptr inbounds %struct.vn_phi_s, ptr %1, i64 0, i32 1
  %6 = load i32, ptr %5, align 4, !tbaa !621
  %7 = icmp eq i32 %4, %6
  br i1 %7, label %8, label %59, !prof !624

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.vn_phi_s, ptr %0, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !625
  %11 = getelementptr inbounds %struct.vn_phi_s, ptr %1, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !625
  %13 = icmp eq ptr %10, %12
  br i1 %13, label %14, label %59

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.vn_phi_s, ptr %0, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !626
  %17 = getelementptr inbounds %struct.VEC_tree_base, ptr %16, i64 0, i32 2, i64 0
  %18 = load ptr, ptr %17, align 8, !tbaa !188
  %19 = getelementptr inbounds %struct.tree_common, ptr %18, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !199
  %21 = getelementptr inbounds %struct.vn_phi_s, ptr %1, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !626
  %23 = getelementptr inbounds %struct.VEC_tree_base, ptr %22, i64 0, i32 2, i64 0
  %24 = load ptr, ptr %23, align 8, !tbaa !188
  %25 = getelementptr inbounds %struct.tree_common, ptr %24, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !199
  %27 = tail call zeroext i8 @types_compatible_p(ptr noundef %20, ptr noundef %26) #23
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %59, label %29

29:                                               ; preds = %14, %57
  %30 = phi i64 [ %58, %57 ], [ 0, %14 ]
  %31 = load ptr, ptr %15, align 8, !tbaa !626
  %32 = icmp eq ptr %31, null
  br i1 %32, label %40, label %33

33:                                               ; preds = %29
  %34 = load i32, ptr %31, align 8, !tbaa !475
  %35 = zext i32 %34 to i64
  %36 = icmp ult i64 %30, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.VEC_tree_base, ptr %31, i64 0, i32 2, i64 %30
  %39 = load ptr, ptr %38, align 8, !tbaa !188
  br label %40

40:                                               ; preds = %29, %33, %37
  %41 = phi ptr [ %39, %37 ], [ null, %33 ], [ null, %29 ]
  %42 = phi i1 [ false, %37 ], [ true, %33 ], [ true, %29 ]
  br i1 %42, label %59, label %43

43:                                               ; preds = %40
  %44 = load ptr, ptr %21, align 8, !tbaa !626
  %45 = getelementptr inbounds %struct.VEC_tree_base, ptr %44, i64 0, i32 2, i64 %30
  %46 = load ptr, ptr %45, align 8, !tbaa !188
  %47 = load ptr, ptr @VN_TOP, align 8, !tbaa !188
  %48 = icmp eq ptr %41, %47
  %49 = icmp eq ptr %46, %47
  %50 = select i1 %48, i1 true, i1 %49
  br i1 %50, label %55, label %51

51:                                               ; preds = %43
  %52 = tail call zeroext i8 @expressions_equal_p(ptr noundef %41, ptr noundef %46), !range !351
  %53 = xor i8 %52, 1
  %54 = zext nneg i8 %53 to i32
  br label %55

55:                                               ; preds = %51, %43
  %56 = phi i32 [ 4, %43 ], [ %54, %51 ]
  switch i32 %56, label %59 [
    i32 0, label %57
    i32 4, label %57
  ]

57:                                               ; preds = %55, %55
  %58 = add nuw i64 %30, 1
  br label %29, !llvm.loop !627

59:                                               ; preds = %55, %40, %14, %8, %2
  %60 = phi i32 [ 0, %2 ], [ 0, %8 ], [ 0, %14 ], [ 0, %55 ], [ 1, %40 ]
  ret i32 %60
}

; Function Attrs: inlinehint mustprogress nounwind willreturn uwtable
define internal void @free_phi(ptr nocapture noundef %0) #15 !prof !628 !PGOFuncName !629 {
  %2 = getelementptr inbounds %struct.vn_phi_s, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !188
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5, !prof !589

5:                                                ; preds = %1
  tail call void @free(ptr noundef %3)
  br label %6

6:                                                ; preds = %1, %5
  store ptr null, ptr %2, align 8, !tbaa !188
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal i32 @vn_nary_op_hash(ptr nocapture noundef readonly %0) #19 !prof !630 !PGOFuncName !631 {
  %2 = getelementptr inbounds %struct.vn_nary_op_s, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 8, !tbaa !415
  ret i32 %3
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal i32 @vn_reference_hash(ptr nocapture noundef readonly %0) #19 !prof !632 !PGOFuncName !633 {
  %2 = getelementptr inbounds %struct.vn_reference_s, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 4, !tbaa !280
  ret i32 %3
}

declare ptr @create_alloc_pool(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

declare zeroext i8 @has_zero_uses_1(ptr noundef) local_unnamed_addr #3

declare ptr @vec_heap_p_reserve(ptr noundef, i32 noundef) local_unnamed_addr #3

declare zeroext i8 @is_gimple_reg(ptr noundef) local_unnamed_addr #3

declare void @spec_qsort(ptr noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define internal i32 @compare_ops(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #20 !prof !187 {
  %3 = load ptr, ptr %0, align 8, !tbaa !188
  %4 = load ptr, ptr %1, align 8, !tbaa !188
  %5 = getelementptr inbounds %struct.tree_ssa_name, ptr %3, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !199
  %7 = getelementptr inbounds %struct.tree_ssa_name, ptr %4, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !199
  %9 = load i32, ptr %6, align 8
  %10 = and i32 %9, 255
  %11 = icmp eq i32 %10, 18
  br i1 %11, label %12, label %23

12:                                               ; preds = %2
  %13 = load i32, ptr %8, align 8
  %14 = and i32 %13, 255
  %15 = icmp eq i32 %14, 18
  br i1 %15, label %16, label %22

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.tree_ssa_name, ptr %3, i64 0, i32 3
  %18 = load i32, ptr %17, align 8, !tbaa !199
  %19 = getelementptr inbounds %struct.tree_ssa_name, ptr %4, i64 0, i32 3
  %20 = load i32, ptr %19, align 8, !tbaa !199
  %21 = sub i32 %18, %20
  br label %86

22:                                               ; preds = %12
  br i1 %11, label %86, label %23

23:                                               ; preds = %2, %22
  %24 = load i32, ptr %8, align 8
  %25 = and i32 %24, 255
  %26 = icmp eq i32 %25, 18
  br i1 %26, label %86, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.gimple_statement_base, ptr %6, i64 0, i32 4
  %29 = load ptr, ptr %28, align 8, !tbaa !199
  %30 = getelementptr inbounds %struct.gimple_statement_base, ptr %8, i64 0, i32 4
  %31 = load ptr, ptr %30, align 8, !tbaa !199
  %32 = icmp ne ptr %29, null
  %33 = icmp ne ptr %31, null
  %34 = select i1 %32, i1 true, i1 %33
  br i1 %34, label %41, label %35

35:                                               ; preds = %27
  %36 = getelementptr inbounds %struct.tree_ssa_name, ptr %3, i64 0, i32 3
  %37 = load i32, ptr %36, align 8, !tbaa !199
  %38 = getelementptr inbounds %struct.tree_ssa_name, ptr %4, i64 0, i32 3
  %39 = load i32, ptr %38, align 8, !tbaa !199
  %40 = sub i32 %37, %39
  br label %86

41:                                               ; preds = %27
  %42 = select i1 %32, i1 %33, i1 false
  %43 = select i1 %32, i32 1, i32 -1
  br i1 %42, label %44, label %86

44:                                               ; preds = %41
  %45 = icmp eq ptr %29, %31
  br i1 %45, label %46, label %73

46:                                               ; preds = %44
  %47 = icmp eq i32 %10, 16
  %48 = icmp eq i32 %25, 16
  %49 = and i1 %47, %48
  br i1 %49, label %50, label %56

50:                                               ; preds = %46
  %51 = getelementptr inbounds %struct.tree_ssa_name, ptr %3, i64 0, i32 3
  %52 = load i32, ptr %51, align 8, !tbaa !199
  %53 = getelementptr inbounds %struct.tree_ssa_name, ptr %4, i64 0, i32 3
  %54 = load i32, ptr %53, align 8, !tbaa !199
  %55 = sub i32 %52, %54
  br label %86

56:                                               ; preds = %46
  %57 = or i1 %47, %48
  %58 = select i1 %47, i32 -1, i32 1
  br i1 %57, label %86, label %59

59:                                               ; preds = %56
  %60 = getelementptr inbounds %struct.gimple_statement_base, ptr %6, i64 0, i32 1
  %61 = load i32, ptr %60, align 4, !tbaa !199
  %62 = getelementptr inbounds %struct.gimple_statement_base, ptr %8, i64 0, i32 1
  %63 = load i32, ptr %62, align 4, !tbaa !199
  %64 = icmp eq i32 %61, %63
  br i1 %64, label %67, label %65

65:                                               ; preds = %59
  %66 = sub i32 %61, %63
  br label %86

67:                                               ; preds = %59
  %68 = getelementptr inbounds %struct.tree_ssa_name, ptr %3, i64 0, i32 3
  %69 = load i32, ptr %68, align 8, !tbaa !199
  %70 = getelementptr inbounds %struct.tree_ssa_name, ptr %4, i64 0, i32 3
  %71 = load i32, ptr %70, align 8, !tbaa !199
  %72 = sub i32 %69, %71
  br label %86

73:                                               ; preds = %44
  %74 = load ptr, ptr @rpo_numbers, align 8, !tbaa !188
  %75 = getelementptr inbounds %struct.basic_block_def, ptr %29, i64 0, i32 9
  %76 = load i32, ptr %75, align 8, !tbaa !634
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, ptr %74, i64 %77
  %79 = load i32, ptr %78, align 4, !tbaa !203
  %80 = getelementptr inbounds %struct.basic_block_def, ptr %31, i64 0, i32 9
  %81 = load i32, ptr %80, align 8, !tbaa !634
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, ptr %74, i64 %82
  %84 = load i32, ptr %83, align 4, !tbaa !203
  %85 = sub nsw i32 %79, %84
  br label %86

86:                                               ; preds = %56, %41, %23, %22, %73, %67, %65, %50, %35, %16
  %87 = phi i32 [ %21, %16 ], [ %55, %50 ], [ %66, %65 ], [ %72, %67 ], [ %85, %73 ], [ %40, %35 ], [ -1, %22 ], [ 1, %23 ], [ %43, %41 ], [ %58, %56 ]
  ret i32 %87
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @visit_use(ptr noundef %0) unnamed_addr #9 !prof !636 !PGOFuncName !637 {
  %2 = alloca ptr, align 8
  %3 = alloca %struct.vn_phi_s, align 8
  %4 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !199
  %6 = load ptr, ptr @vn_ssa_aux_table, align 8
  %7 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 3
  %8 = load i32, ptr %7, align 8, !tbaa !199
  %9 = zext i32 %8 to i64
  %10 = getelementptr inbounds %struct.VEC_vn_ssa_aux_t_base, ptr %6, i64 0, i32 2, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !188
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %14, !prof !638

13:                                               ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 180, ptr noundef nonnull @.str.1) #23
  br label %14

14:                                               ; preds = %1, %13
  %15 = getelementptr inbounds %struct.vn_ssa_aux, ptr %11, i64 0, i32 5
  %16 = load i8, ptr %15, align 4
  %17 = or i8 %16, 8
  store i8 %17, ptr %15, align 4
  %18 = load i64, ptr %0, align 8
  %19 = and i64 %18, 33554432
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %22, label %21, !prof !639

21:                                               ; preds = %14
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2488, ptr noundef nonnull @.str.1) #23
  br label %22

22:                                               ; preds = %14, %21
  %23 = load ptr, ptr @dump_file, align 8, !tbaa !188
  %24 = icmp eq ptr %23, null
  br i1 %24, label %39, label %25, !prof !639

25:                                               ; preds = %22
  %26 = load i32, ptr @dump_flags, align 4, !tbaa !203
  %27 = and i32 %26, 8
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %39, label %29

29:                                               ; preds = %25
  %30 = load i64, ptr %0, align 8
  %31 = and i64 %30, 4294967296
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %29
  %34 = tail call i64 @fwrite(ptr nonnull @.str.14, i64 16, i64 1, ptr nonnull %23)
  %35 = load ptr, ptr @dump_file, align 8, !tbaa !188
  tail call void @print_generic_expr(ptr noundef %35, ptr noundef nonnull %0, i32 noundef 0) #23
  %36 = load ptr, ptr @dump_file, align 8, !tbaa !188
  %37 = tail call i64 @fwrite(ptr nonnull @.str.15, i64 8, i64 1, ptr %36)
  %38 = load ptr, ptr @dump_file, align 8, !tbaa !188
  tail call void @print_gimple_stmt(ptr noundef %38, ptr noundef %5, i32 noundef 0, i32 noundef 0) #23
  br label %39

39:                                               ; preds = %33, %29, %25, %22
  %40 = load i64, ptr %0, align 8
  %41 = and i64 %40, 4294967296
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %45, label %43, !prof !640

43:                                               ; preds = %39
  %44 = tail call fastcc zeroext i8 @set_ssa_val_to(ptr noundef nonnull %0, ptr noundef nonnull %0), !range !351
  br label %2984

45:                                               ; preds = %39
  %46 = load i32, ptr %5, align 8
  %47 = trunc i32 %46 to i8
  switch i8 %47, label %552 [
    i8 16, label %48
    i8 6, label %553
    i8 8, label %537
  ], !prof !641

48:                                               ; preds = %45
  %49 = load ptr, ptr @VN_TOP, align 8, !tbaa !188
  %50 = getelementptr inbounds %struct.gimple_statement_phi, ptr %5, i64 0, i32 3
  %51 = load ptr, ptr %50, align 8, !tbaa !188
  %52 = load i64, ptr %51, align 8
  %53 = and i64 %52, 4194304
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %55, label %61, !prof !518

55:                                               ; preds = %48
  %56 = getelementptr inbounds %struct.gimple_statement_phi, ptr %5, i64 0, i32 2
  %57 = load i32, ptr %56, align 4, !tbaa !199
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %123, label %59, !prof !642

59:                                               ; preds = %55
  %60 = getelementptr inbounds %struct.gimple_statement_phi, ptr %5, i64 0, i32 1
  br label %68

61:                                               ; preds = %48
  %62 = tail call fastcc zeroext i8 @set_ssa_val_to(ptr noundef nonnull %51, ptr noundef nonnull %51), !range !351
  br label %2984

63:                                               ; preds = %119
  %64 = add nuw nsw i64 %69, 1
  %65 = load i32, ptr %56, align 4, !tbaa !199
  %66 = zext i32 %65 to i64
  %67 = icmp ult i64 %64, %66
  br i1 %67, label %68, label %123, !prof !643, !llvm.loop !644

68:                                               ; preds = %59, %63
  %69 = phi i64 [ 0, %59 ], [ %64, %63 ]
  %70 = phi i8 [ 1, %59 ], [ %121, %63 ]
  %71 = phi ptr [ %49, %59 ], [ %120, %63 ]
  %72 = load i32, ptr %60, align 8, !tbaa !199
  %73 = zext i32 %72 to i64
  %74 = icmp ugt i64 %69, %73
  br i1 %74, label %75, label %76, !prof !645

75:                                               ; preds = %68
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 3103, ptr noundef nonnull @.str.1) #23
  br label %76

76:                                               ; preds = %75, %68
  %77 = getelementptr inbounds %struct.gimple_statement_phi, ptr %5, i64 0, i32 4, i64 %69, i32 0, i32 3
  %78 = load ptr, ptr %77, align 8, !tbaa !539
  %79 = load ptr, ptr %78, align 8, !tbaa !188
  %80 = load i64, ptr %79, align 8
  %81 = and i64 %80, 65535
  %82 = icmp eq i64 %81, 141
  br i1 %82, label %83, label %94, !prof !646

83:                                               ; preds = %76
  %84 = load ptr, ptr @vn_ssa_aux_table, align 8
  %85 = getelementptr inbounds %struct.tree_ssa_name, ptr %79, i64 0, i32 3
  %86 = load i32, ptr %85, align 8, !tbaa !199
  %87 = zext i32 %86 to i64
  %88 = getelementptr inbounds %struct.VEC_vn_ssa_aux_t_base, ptr %84, i64 0, i32 2, i64 %87
  %89 = load ptr, ptr %88, align 8, !tbaa !188
  %90 = icmp eq ptr %89, null
  br i1 %90, label %91, label %92, !prof !647

91:                                               ; preds = %83
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 180, ptr noundef nonnull @.str.1) #23
  br label %92

92:                                               ; preds = %91, %83
  %93 = load ptr, ptr %89, align 8, !tbaa !227
  br label %94

94:                                               ; preds = %92, %76
  %95 = phi ptr [ %93, %92 ], [ %79, %76 ]
  %96 = load ptr, ptr @VN_TOP, align 8, !tbaa !188
  %97 = icmp eq ptr %95, %96
  br i1 %97, label %119, label %98, !prof !645

98:                                               ; preds = %94
  %99 = icmp eq ptr %71, %96
  br i1 %99, label %119, label %100, !prof !648

100:                                              ; preds = %98
  %101 = icmp eq ptr %95, %71
  br i1 %101, label %116, label %102, !prof !291

102:                                              ; preds = %100
  %103 = icmp ne ptr %95, null
  %104 = icmp ne ptr %71, null
  %105 = and i1 %104, %103
  br i1 %105, label %106, label %116, !prof !292

106:                                              ; preds = %102
  %107 = load i64, ptr %95, align 8
  %108 = load i64, ptr %71, align 8
  %109 = xor i64 %108, %107
  %110 = and i64 %109, 65535
  %111 = icmp eq i64 %110, 0
  br i1 %111, label %112, label %115, !prof !293

112:                                              ; preds = %106
  %113 = tail call i32 @operand_equal_p(ptr noundef nonnull %95, ptr noundef nonnull %71, i32 noundef 2) #23
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %115, label %116, !prof !294

115:                                              ; preds = %112, %106
  br label %116

116:                                              ; preds = %100, %102, %112, %115
  %117 = phi i1 [ true, %115 ], [ false, %100 ], [ true, %102 ], [ false, %112 ]
  %118 = select i1 %117, i8 0, i8 %70, !prof !649
  br label %119

119:                                              ; preds = %116, %98, %94
  %120 = phi ptr [ %71, %94 ], [ %95, %98 ], [ %71, %116 ]
  %121 = phi i8 [ %70, %94 ], [ %70, %98 ], [ %118, %116 ]
  %122 = phi i1 [ false, %94 ], [ false, %98 ], [ %117, %116 ]
  br i1 %122, label %123, label %63, !prof !650

123:                                              ; preds = %63, %119, %55
  %124 = phi ptr [ %49, %55 ], [ %120, %119 ], [ %120, %63 ]
  %125 = phi i8 [ 1, %55 ], [ %121, %119 ], [ %121, %63 ]
  %126 = getelementptr inbounds %struct.gimple_statement_phi, ptr %5, i64 0, i32 2
  %127 = icmp eq i8 %125, 0
  br i1 %127, label %180, label %128, !prof !651

128:                                              ; preds = %123
  %129 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef %124) #23
  %130 = icmp eq i8 %129, 0
  %131 = load ptr, ptr %50, align 8, !tbaa !188
  %132 = load ptr, ptr @vn_ssa_aux_table, align 8
  %133 = getelementptr inbounds %struct.tree_ssa_name, ptr %131, i64 0, i32 3
  %134 = load i32, ptr %133, align 8, !tbaa !199
  %135 = zext i32 %134 to i64
  %136 = getelementptr inbounds %struct.VEC_vn_ssa_aux_t_base, ptr %132, i64 0, i32 2, i64 %135
  %137 = load ptr, ptr %136, align 8, !tbaa !188
  %138 = icmp eq ptr %137, null
  br i1 %130, label %153, label %139, !prof !652

139:                                              ; preds = %128
  br i1 %138, label %140, label %141

140:                                              ; preds = %139
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 180, ptr noundef nonnull @.str.1) #23
  br label %141

141:                                              ; preds = %140, %139
  %142 = getelementptr inbounds %struct.vn_ssa_aux, ptr %137, i64 0, i32 5
  %143 = load i8, ptr %142, align 4
  %144 = or i8 %143, 4
  store i8 %144, ptr %142, align 4
  %145 = load ptr, ptr %50, align 8, !tbaa !188
  %146 = load ptr, ptr @vn_ssa_aux_table, align 8
  %147 = getelementptr inbounds %struct.tree_ssa_name, ptr %145, i64 0, i32 3
  %148 = load i32, ptr %147, align 8, !tbaa !199
  %149 = zext i32 %148 to i64
  %150 = getelementptr inbounds %struct.VEC_vn_ssa_aux_t_base, ptr %146, i64 0, i32 2, i64 %149
  %151 = load ptr, ptr %150, align 8, !tbaa !188
  %152 = icmp eq ptr %151, null
  br i1 %152, label %167, label %169

153:                                              ; preds = %128
  br i1 %138, label %154, label %155, !prof !249

154:                                              ; preds = %153
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 180, ptr noundef nonnull @.str.1) #23
  br label %155

155:                                              ; preds = %154, %153
  %156 = getelementptr inbounds %struct.vn_ssa_aux, ptr %137, i64 0, i32 5
  %157 = load i8, ptr %156, align 4
  %158 = and i8 %157, -5
  store i8 %158, ptr %156, align 4
  %159 = load ptr, ptr %50, align 8, !tbaa !188
  %160 = load ptr, ptr @vn_ssa_aux_table, align 8
  %161 = getelementptr inbounds %struct.tree_ssa_name, ptr %159, i64 0, i32 3
  %162 = load i32, ptr %161, align 8, !tbaa !199
  %163 = zext i32 %162 to i64
  %164 = getelementptr inbounds %struct.VEC_vn_ssa_aux_t_base, ptr %160, i64 0, i32 2, i64 %163
  %165 = load ptr, ptr %164, align 8, !tbaa !188
  %166 = icmp eq ptr %165, null
  br i1 %166, label %167, label %169, !prof !249

167:                                              ; preds = %155, %141
  %168 = phi ptr [ %151, %141 ], [ %165, %155 ]
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 180, ptr noundef nonnull @.str.1) #23
  br label %169

169:                                              ; preds = %167, %155, %141
  %170 = phi ptr [ %151, %141 ], [ %165, %155 ], [ %168, %167 ]
  %171 = getelementptr inbounds %struct.vn_ssa_aux, ptr %170, i64 0, i32 1
  store ptr %124, ptr %171, align 8, !tbaa !230
  %172 = load i64, ptr %124, align 8
  %173 = and i64 %172, 65535
  %174 = icmp eq i64 %173, 141
  %175 = load ptr, ptr %50, align 8, !tbaa !188
  br i1 %174, label %176, label %178, !prof !652

176:                                              ; preds = %169
  %177 = tail call fastcc zeroext i8 @visit_copy(ptr noundef %175, ptr noundef nonnull %124), !range !351
  br label %2984

178:                                              ; preds = %169
  %179 = tail call fastcc zeroext i8 @set_ssa_val_to(ptr noundef %175, ptr noundef nonnull %124), !range !351
  br label %2984

180:                                              ; preds = %123
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #23
  %181 = load ptr, ptr @shared_lookup_phiargs, align 8
  %182 = icmp eq ptr %181, null
  br i1 %182, label %184, label %183, !prof !653

183:                                              ; preds = %180
  store i32 0, ptr %181, align 8, !tbaa !475
  br label %184

184:                                              ; preds = %183, %180
  %185 = load i32, ptr %126, align 4, !tbaa !199
  %186 = icmp eq i32 %185, 0
  br i1 %186, label %234, label %187, !prof !654

187:                                              ; preds = %184
  %188 = getelementptr inbounds %struct.gimple_statement_phi, ptr %5, i64 0, i32 1
  br label %189

189:                                              ; preds = %187, %224
  %190 = phi i64 [ 0, %187 ], [ %230, %224 ]
  %191 = load i32, ptr %188, align 8, !tbaa !199
  %192 = zext i32 %191 to i64
  %193 = icmp ugt i64 %190, %192
  br i1 %193, label %194, label %195, !prof !655

194:                                              ; preds = %189
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 3103, ptr noundef nonnull @.str.1) #23
  br label %195

195:                                              ; preds = %194, %189
  %196 = getelementptr inbounds %struct.gimple_statement_phi, ptr %5, i64 0, i32 4, i64 %190, i32 0, i32 3
  %197 = load ptr, ptr %196, align 8, !tbaa !539
  %198 = load ptr, ptr %197, align 8, !tbaa !188
  %199 = load i64, ptr %198, align 8
  %200 = and i64 %199, 65535
  %201 = icmp eq i64 %200, 141
  br i1 %201, label %202, label %213, !prof !656

202:                                              ; preds = %195
  %203 = load ptr, ptr @vn_ssa_aux_table, align 8
  %204 = getelementptr inbounds %struct.tree_ssa_name, ptr %198, i64 0, i32 3
  %205 = load i32, ptr %204, align 8, !tbaa !199
  %206 = zext i32 %205 to i64
  %207 = getelementptr inbounds %struct.VEC_vn_ssa_aux_t_base, ptr %203, i64 0, i32 2, i64 %206
  %208 = load ptr, ptr %207, align 8, !tbaa !188
  %209 = icmp eq ptr %208, null
  br i1 %209, label %210, label %211, !prof !657

210:                                              ; preds = %202
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 180, ptr noundef nonnull @.str.1) #23
  br label %211

211:                                              ; preds = %210, %202
  %212 = load ptr, ptr %208, align 8, !tbaa !227
  br label %213

213:                                              ; preds = %211, %195
  %214 = phi ptr [ %212, %211 ], [ %198, %195 ]
  %215 = load ptr, ptr @shared_lookup_phiargs, align 8, !tbaa !188
  %216 = icmp eq ptr %215, null
  br i1 %216, label %222, label %217, !prof !658

217:                                              ; preds = %213
  %218 = getelementptr inbounds %struct.VEC_tree_base, ptr %215, i64 0, i32 1
  %219 = load i32, ptr %218, align 4, !tbaa !515
  %220 = load i32, ptr %215, align 8, !tbaa !475
  %221 = icmp eq i32 %219, %220
  br i1 %221, label %222, label %224, !prof !659

222:                                              ; preds = %217, %213
  %223 = tail call ptr @vec_heap_p_reserve(ptr noundef %215, i32 noundef 1) #23
  store ptr %223, ptr @shared_lookup_phiargs, align 8, !tbaa !188
  br label %224

224:                                              ; preds = %222, %217
  %225 = load ptr, ptr @shared_lookup_phiargs, align 8, !tbaa !188
  %226 = load i32, ptr %225, align 8, !tbaa !475
  %227 = add i32 %226, 1
  store i32 %227, ptr %225, align 8, !tbaa !475
  %228 = zext i32 %226 to i64
  %229 = getelementptr inbounds %struct.VEC_tree_base, ptr %225, i64 0, i32 2, i64 %228
  store ptr %214, ptr %229, align 8, !tbaa !188
  %230 = add nuw nsw i64 %190, 1
  %231 = load i32, ptr %126, align 4, !tbaa !199
  %232 = zext i32 %231 to i64
  %233 = icmp ult i64 %230, %232
  br i1 %233, label %189, label %234, !prof !660, !llvm.loop !661

234:                                              ; preds = %224, %184
  %235 = load ptr, ptr @shared_lookup_phiargs, align 8, !tbaa !188
  %236 = getelementptr inbounds %struct.vn_phi_s, ptr %3, i64 0, i32 2
  store ptr %235, ptr %236, align 8, !tbaa !626
  %237 = getelementptr inbounds %struct.gimple_statement_base, ptr %5, i64 0, i32 4
  %238 = load ptr, ptr %237, align 8, !tbaa !199
  %239 = getelementptr inbounds %struct.vn_phi_s, ptr %3, i64 0, i32 3
  store ptr %238, ptr %239, align 8, !tbaa !625
  %240 = getelementptr inbounds %struct.basic_block_def, ptr %238, i64 0, i32 9
  %241 = load i32, ptr %240, align 8, !tbaa !634
  %242 = getelementptr inbounds %struct.VEC_tree_base, ptr %235, i64 0, i32 2, i64 0
  %243 = load ptr, ptr %242, align 8, !tbaa !188
  %244 = getelementptr inbounds %struct.tree_common, ptr %243, i64 0, i32 2
  %245 = load ptr, ptr %244, align 8, !tbaa !199
  %246 = load i64, ptr %245, align 8
  %247 = trunc i64 %246 to i32
  %248 = and i32 %247, 65535
  %249 = add nsw i32 %248, -6
  %250 = icmp ult i32 %249, 3
  %251 = zext i1 %250 to i32
  br i1 %250, label %252, label %259, !prof !662

252:                                              ; preds = %234
  %253 = getelementptr inbounds %struct.tree_type, ptr %245, i64 0, i32 6
  %254 = load i32, ptr %253, align 4
  %255 = and i32 %254, 1023
  %256 = lshr i32 %247, 21
  %257 = and i32 %256, 1
  %258 = add nuw nsw i32 %255, %257
  br label %259

259:                                              ; preds = %252, %234
  %260 = phi i32 [ %258, %252 ], [ 0, %234 ]
  %261 = add i32 %241, %251
  %262 = add i32 %261, %260
  br label %263

263:                                              ; preds = %283, %259
  %264 = phi i64 [ %285, %283 ], [ 0, %259 ]
  %265 = phi i32 [ %284, %283 ], [ %262, %259 ]
  %266 = load ptr, ptr %236, align 8, !tbaa !626
  %267 = icmp eq ptr %266, null
  br i1 %267, label %275, label %268, !prof !663

268:                                              ; preds = %263
  %269 = load i32, ptr %266, align 8, !tbaa !475
  %270 = zext i32 %269 to i64
  %271 = icmp ult i64 %264, %270
  br i1 %271, label %272, label %275, !prof !664

272:                                              ; preds = %268
  %273 = getelementptr inbounds %struct.VEC_tree_base, ptr %266, i64 0, i32 2, i64 %264
  %274 = load ptr, ptr %273, align 8, !tbaa !188
  br label %275

275:                                              ; preds = %272, %268, %263
  %276 = phi ptr [ %274, %272 ], [ null, %268 ], [ null, %263 ]
  %277 = phi i1 [ false, %272 ], [ true, %268 ], [ true, %263 ]
  br i1 %277, label %286, label %278, !prof !665

278:                                              ; preds = %275
  %279 = load ptr, ptr @VN_TOP, align 8, !tbaa !188
  %280 = icmp eq ptr %276, %279
  br i1 %280, label %283, label %281, !prof !655

281:                                              ; preds = %278
  %282 = tail call i32 @iterative_hash_expr(ptr noundef %276, i32 noundef %265) #23
  br label %283

283:                                              ; preds = %281, %278
  %284 = phi i32 [ %265, %278 ], [ %282, %281 ]
  %285 = add nuw i64 %264, 1
  br label %263, !llvm.loop !666

286:                                              ; preds = %275
  %287 = getelementptr inbounds %struct.vn_phi_s, ptr %3, i64 0, i32 1
  store i32 %265, ptr %287, align 4, !tbaa !621
  %288 = load ptr, ptr @current_info, align 8, !tbaa !188
  %289 = getelementptr inbounds %struct.vn_tables_s, ptr %288, i64 0, i32 1
  %290 = load ptr, ptr %289, align 8, !tbaa !483
  %291 = call ptr @htab_find_slot_with_hash(ptr noundef %290, ptr noundef nonnull %3, i32 noundef %265, i32 noundef 0) #23
  %292 = icmp eq ptr %291, null
  br i1 %292, label %293, label %303, !prof !590

293:                                              ; preds = %286
  %294 = load ptr, ptr @current_info, align 8, !tbaa !188
  %295 = load ptr, ptr @optimistic_info, align 8, !tbaa !188
  %296 = icmp eq ptr %294, %295
  br i1 %296, label %297, label %303, !prof !589

297:                                              ; preds = %293
  %298 = load ptr, ptr @valid_info, align 8, !tbaa !188
  %299 = getelementptr inbounds %struct.vn_tables_s, ptr %298, i64 0, i32 1
  %300 = load ptr, ptr %299, align 8, !tbaa !483
  %301 = load i32, ptr %287, align 4, !tbaa !621
  %302 = call ptr @htab_find_slot_with_hash(ptr noundef %300, ptr noundef nonnull %3, i32 noundef %301, i32 noundef 0) #23
  br label %303

303:                                              ; preds = %297, %293, %286
  %304 = phi ptr [ %291, %286 ], [ %302, %297 ], [ null, %293 ]
  %305 = icmp eq ptr %304, null
  br i1 %305, label %310, label %306, !prof !590

306:                                              ; preds = %303
  %307 = load ptr, ptr %304, align 8, !tbaa !188
  %308 = getelementptr inbounds %struct.vn_phi_s, ptr %307, i64 0, i32 4
  %309 = load ptr, ptr %308, align 8, !tbaa !587
  br label %310

310:                                              ; preds = %306, %303
  %311 = phi ptr [ %309, %306 ], [ null, %303 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #23
  %312 = icmp eq ptr %311, null
  br i1 %312, label %322, label %313, !prof !590

313:                                              ; preds = %310
  %314 = load i64, ptr %311, align 8
  %315 = and i64 %314, 65535
  %316 = icmp eq i64 %315, 141
  %317 = load ptr, ptr %50, align 8, !tbaa !188
  br i1 %316, label %318, label %320

318:                                              ; preds = %313
  %319 = call fastcc zeroext i8 @visit_copy(ptr noundef %317, ptr noundef nonnull %311), !range !351
  br label %2984

320:                                              ; preds = %313
  %321 = call fastcc zeroext i8 @set_ssa_val_to(ptr noundef %317, ptr noundef nonnull %311), !range !351
  br label %2984

322:                                              ; preds = %310
  %323 = load ptr, ptr %50, align 8, !tbaa !188
  %324 = load ptr, ptr @current_info, align 8, !tbaa !188
  %325 = getelementptr inbounds %struct.vn_tables_s, ptr %324, i64 0, i32 4
  %326 = load ptr, ptr %325, align 8, !tbaa !485
  %327 = call ptr @pool_alloc(ptr noundef %326) #23
  %328 = load i32, ptr %126, align 4, !tbaa !199
  %329 = icmp eq i32 %328, 0
  br i1 %329, label %377, label %330, !prof !654

330:                                              ; preds = %322
  %331 = getelementptr inbounds %struct.gimple_statement_phi, ptr %5, i64 0, i32 1
  br label %332

332:                                              ; preds = %330, %367
  %333 = phi i64 [ 0, %330 ], [ %373, %367 ]
  %334 = phi ptr [ null, %330 ], [ %368, %367 ]
  %335 = load i32, ptr %331, align 8, !tbaa !199
  %336 = zext i32 %335 to i64
  %337 = icmp ugt i64 %333, %336
  br i1 %337, label %338, label %339, !prof !655

338:                                              ; preds = %332
  call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 3103, ptr noundef nonnull @.str.1) #23
  br label %339

339:                                              ; preds = %338, %332
  %340 = getelementptr inbounds %struct.gimple_statement_phi, ptr %5, i64 0, i32 4, i64 %333, i32 0, i32 3
  %341 = load ptr, ptr %340, align 8, !tbaa !539
  %342 = load ptr, ptr %341, align 8, !tbaa !188
  %343 = load i64, ptr %342, align 8
  %344 = and i64 %343, 65535
  %345 = icmp eq i64 %344, 141
  br i1 %345, label %346, label %357, !prof !656

346:                                              ; preds = %339
  %347 = load ptr, ptr @vn_ssa_aux_table, align 8
  %348 = getelementptr inbounds %struct.tree_ssa_name, ptr %342, i64 0, i32 3
  %349 = load i32, ptr %348, align 8, !tbaa !199
  %350 = zext i32 %349 to i64
  %351 = getelementptr inbounds %struct.VEC_vn_ssa_aux_t_base, ptr %347, i64 0, i32 2, i64 %350
  %352 = load ptr, ptr %351, align 8, !tbaa !188
  %353 = icmp eq ptr %352, null
  br i1 %353, label %354, label %355, !prof !657

354:                                              ; preds = %346
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 180, ptr noundef nonnull @.str.1) #23
  br label %355

355:                                              ; preds = %354, %346
  %356 = load ptr, ptr %352, align 8, !tbaa !227
  br label %357

357:                                              ; preds = %355, %339
  %358 = phi ptr [ %356, %355 ], [ %342, %339 ]
  %359 = icmp eq ptr %334, null
  br i1 %359, label %365, label %360, !prof !667

360:                                              ; preds = %357
  %361 = getelementptr inbounds %struct.VEC_tree_base, ptr %334, i64 0, i32 1
  %362 = load i32, ptr %361, align 4, !tbaa !515
  %363 = load i32, ptr %334, align 8, !tbaa !475
  %364 = icmp eq i32 %362, %363
  br i1 %364, label %365, label %367, !prof !668

365:                                              ; preds = %360, %357
  %366 = call ptr @vec_heap_p_reserve(ptr noundef %334, i32 noundef 1) #23
  br label %367

367:                                              ; preds = %365, %360
  %368 = phi ptr [ %366, %365 ], [ %334, %360 ]
  %369 = load i32, ptr %368, align 8, !tbaa !475
  %370 = add i32 %369, 1
  store i32 %370, ptr %368, align 8, !tbaa !475
  %371 = zext i32 %369 to i64
  %372 = getelementptr inbounds %struct.VEC_tree_base, ptr %368, i64 0, i32 2, i64 %371
  store ptr %358, ptr %372, align 8, !tbaa !188
  %373 = add nuw nsw i64 %333, 1
  %374 = load i32, ptr %126, align 4, !tbaa !199
  %375 = zext i32 %374 to i64
  %376 = icmp ult i64 %373, %375
  br i1 %376, label %332, label %377, !prof !660, !llvm.loop !669

377:                                              ; preds = %367, %322
  %378 = phi ptr [ null, %322 ], [ %368, %367 ]
  %379 = load ptr, ptr @vn_ssa_aux_table, align 8
  %380 = getelementptr inbounds %struct.tree_ssa_name, ptr %323, i64 0, i32 3
  %381 = load i32, ptr %380, align 8, !tbaa !199
  %382 = zext i32 %381 to i64
  %383 = getelementptr inbounds %struct.VEC_vn_ssa_aux_t_base, ptr %379, i64 0, i32 2, i64 %382
  %384 = load ptr, ptr %383, align 8, !tbaa !188
  %385 = icmp eq ptr %384, null
  br i1 %385, label %386, label %387, !prof !589

386:                                              ; preds = %377
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 180, ptr noundef nonnull @.str.1) #23
  br label %387

387:                                              ; preds = %386, %377
  %388 = getelementptr inbounds %struct.vn_ssa_aux, ptr %384, i64 0, i32 2
  %389 = load i32, ptr %388, align 8, !tbaa !398
  store i32 %389, ptr %327, align 8, !tbaa !591
  %390 = getelementptr inbounds %struct.vn_phi_s, ptr %327, i64 0, i32 2
  store ptr %378, ptr %390, align 8, !tbaa !626
  %391 = load ptr, ptr %237, align 8, !tbaa !199
  %392 = getelementptr inbounds %struct.vn_phi_s, ptr %327, i64 0, i32 3
  store ptr %391, ptr %392, align 8, !tbaa !625
  %393 = getelementptr inbounds %struct.vn_phi_s, ptr %327, i64 0, i32 4
  store ptr %323, ptr %393, align 8, !tbaa !587
  %394 = getelementptr inbounds %struct.basic_block_def, ptr %391, i64 0, i32 9
  %395 = load i32, ptr %394, align 8, !tbaa !634
  %396 = getelementptr inbounds %struct.VEC_tree_base, ptr %378, i64 0, i32 2, i64 0
  %397 = load ptr, ptr %396, align 8, !tbaa !188
  %398 = getelementptr inbounds %struct.tree_common, ptr %397, i64 0, i32 2
  %399 = load ptr, ptr %398, align 8, !tbaa !199
  %400 = load i64, ptr %399, align 8
  %401 = trunc i64 %400 to i32
  %402 = and i32 %401, 65535
  %403 = add nsw i32 %402, -6
  %404 = icmp ult i32 %403, 3
  %405 = zext i1 %404 to i32
  br i1 %404, label %406, label %413, !prof !662

406:                                              ; preds = %387
  %407 = getelementptr inbounds %struct.tree_type, ptr %399, i64 0, i32 6
  %408 = load i32, ptr %407, align 4
  %409 = and i32 %408, 1023
  %410 = lshr i32 %401, 21
  %411 = and i32 %410, 1
  %412 = add nuw nsw i32 %409, %411
  br label %413

413:                                              ; preds = %406, %387
  %414 = phi i32 [ %412, %406 ], [ 0, %387 ]
  %415 = add i32 %395, %405
  %416 = add i32 %415, %414
  br label %417

417:                                              ; preds = %437, %413
  %418 = phi i64 [ %439, %437 ], [ 0, %413 ]
  %419 = phi i32 [ %438, %437 ], [ %416, %413 ]
  %420 = load ptr, ptr %390, align 8, !tbaa !626
  %421 = icmp eq ptr %420, null
  br i1 %421, label %429, label %422, !prof !663

422:                                              ; preds = %417
  %423 = load i32, ptr %420, align 8, !tbaa !475
  %424 = zext i32 %423 to i64
  %425 = icmp ult i64 %418, %424
  br i1 %425, label %426, label %429, !prof !664

426:                                              ; preds = %422
  %427 = getelementptr inbounds %struct.VEC_tree_base, ptr %420, i64 0, i32 2, i64 %418
  %428 = load ptr, ptr %427, align 8, !tbaa !188
  br label %429

429:                                              ; preds = %426, %422, %417
  %430 = phi ptr [ %428, %426 ], [ null, %422 ], [ null, %417 ]
  %431 = phi i1 [ false, %426 ], [ true, %422 ], [ true, %417 ]
  br i1 %431, label %440, label %432, !prof !665

432:                                              ; preds = %429
  %433 = load ptr, ptr @VN_TOP, align 8, !tbaa !188
  %434 = icmp eq ptr %430, %433
  br i1 %434, label %437, label %435, !prof !655

435:                                              ; preds = %432
  %436 = call i32 @iterative_hash_expr(ptr noundef %430, i32 noundef %419) #23
  br label %437

437:                                              ; preds = %435, %432
  %438 = phi i32 [ %419, %432 ], [ %436, %435 ]
  %439 = add nuw i64 %418, 1
  br label %417, !llvm.loop !666

440:                                              ; preds = %429
  %441 = getelementptr inbounds %struct.vn_phi_s, ptr %327, i64 0, i32 1
  store i32 %419, ptr %441, align 4, !tbaa !621
  %442 = load ptr, ptr @current_info, align 8, !tbaa !188
  %443 = getelementptr inbounds %struct.vn_tables_s, ptr %442, i64 0, i32 1
  %444 = load ptr, ptr %443, align 8, !tbaa !483
  %445 = call ptr @htab_find_slot_with_hash(ptr noundef %444, ptr noundef nonnull %327, i32 noundef %419, i32 noundef 1) #23
  store ptr %327, ptr %445, align 8, !tbaa !188
  %446 = load ptr, ptr %50, align 8, !tbaa !188
  %447 = load ptr, ptr @vn_ssa_aux_table, align 8
  %448 = getelementptr inbounds %struct.tree_ssa_name, ptr %446, i64 0, i32 3
  %449 = load i32, ptr %448, align 8, !tbaa !199
  %450 = zext i32 %449 to i64
  %451 = getelementptr inbounds %struct.VEC_vn_ssa_aux_t_base, ptr %447, i64 0, i32 2, i64 %450
  %452 = load ptr, ptr %451, align 8, !tbaa !188
  %453 = icmp eq ptr %452, null
  br i1 %453, label %454, label %455, !prof !589

454:                                              ; preds = %440
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 180, ptr noundef nonnull @.str.1) #23
  br label %455

455:                                              ; preds = %454, %440
  %456 = getelementptr inbounds %struct.vn_ssa_aux, ptr %452, i64 0, i32 5
  %457 = load i8, ptr %456, align 4
  %458 = and i8 %457, -5
  store i8 %458, ptr %456, align 4
  %459 = load ptr, ptr %50, align 8, !tbaa !188
  %460 = load ptr, ptr @vn_ssa_aux_table, align 8
  %461 = getelementptr inbounds %struct.tree_ssa_name, ptr %459, i64 0, i32 3
  %462 = load i32, ptr %461, align 8, !tbaa !199
  %463 = zext i32 %462 to i64
  %464 = getelementptr inbounds %struct.VEC_vn_ssa_aux_t_base, ptr %460, i64 0, i32 2, i64 %463
  %465 = load ptr, ptr %464, align 8, !tbaa !188
  %466 = icmp eq ptr %465, null
  br i1 %466, label %467, label %468, !prof !589

467:                                              ; preds = %455
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 180, ptr noundef nonnull @.str.1) #23
  br label %468

468:                                              ; preds = %467, %455
  %469 = getelementptr inbounds %struct.vn_ssa_aux, ptr %465, i64 0, i32 1
  store ptr %459, ptr %469, align 8, !tbaa !230
  %470 = load ptr, ptr %50, align 8, !tbaa !188
  %471 = icmp eq ptr %470, null
  br i1 %471, label %482, label %472, !prof !670

472:                                              ; preds = %468
  %473 = load ptr, ptr @VN_TOP, align 8, !tbaa !188
  %474 = icmp eq ptr %470, %473
  br i1 %474, label %483, label %475, !prof !670

475:                                              ; preds = %472
  %476 = load i64, ptr %470, align 8
  %477 = and i64 %476, 65535
  %478 = icmp eq i64 %477, 141
  br i1 %478, label %483, label %479, !prof !671

479:                                              ; preds = %475
  %480 = call zeroext i8 @is_gimple_min_invariant(ptr noundef nonnull %470) #23
  %481 = icmp eq i8 %480, 0
  br i1 %481, label %482, label %483

482:                                              ; preds = %479, %468
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1812, ptr noundef nonnull @.str.1) #23
  br label %483

483:                                              ; preds = %482, %479, %475, %472
  %484 = load ptr, ptr @dump_file, align 8, !tbaa !188
  %485 = icmp eq ptr %484, null
  br i1 %485, label %496, label %486, !prof !671

486:                                              ; preds = %483
  %487 = load i32, ptr @dump_flags, align 4, !tbaa !203
  %488 = and i32 %487, 8
  %489 = icmp eq i32 %488, 0
  br i1 %489, label %496, label %490

490:                                              ; preds = %486
  %491 = call i64 @fwrite(ptr nonnull @.str.19, i64 24, i64 1, ptr nonnull %484)
  %492 = load ptr, ptr @dump_file, align 8, !tbaa !188
  call void @print_generic_expr(ptr noundef %492, ptr noundef %470, i32 noundef 0) #23
  %493 = load ptr, ptr @dump_file, align 8, !tbaa !188
  %494 = call i64 @fwrite(ptr nonnull @.str.20, i64 4, i64 1, ptr %493)
  %495 = load ptr, ptr @dump_file, align 8, !tbaa !188
  call void @print_generic_expr(ptr noundef %495, ptr noundef %470, i32 noundef 0) #23
  br label %496

496:                                              ; preds = %490, %486, %483
  %497 = load ptr, ptr @vn_ssa_aux_table, align 8
  %498 = getelementptr inbounds %struct.tree_ssa_name, ptr %470, i64 0, i32 3
  %499 = load i32, ptr %498, align 8, !tbaa !199
  %500 = zext i32 %499 to i64
  %501 = getelementptr inbounds %struct.VEC_vn_ssa_aux_t_base, ptr %497, i64 0, i32 2, i64 %500
  %502 = load ptr, ptr %501, align 8, !tbaa !188
  %503 = icmp eq ptr %502, null
  br i1 %503, label %504, label %505, !prof !670

504:                                              ; preds = %496
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 180, ptr noundef nonnull @.str.1) #23
  br label %505

505:                                              ; preds = %504, %496
  %506 = load ptr, ptr %502, align 8, !tbaa !227
  %507 = icmp eq ptr %506, %470
  br i1 %507, label %528, label %508, !prof !672

508:                                              ; preds = %505
  %509 = call i32 @operand_equal_p(ptr noundef %506, ptr noundef %470, i32 noundef 2) #23
  %510 = icmp eq i32 %509, 0
  br i1 %510, label %511, label %528, !prof !673

511:                                              ; preds = %508
  %512 = load ptr, ptr @vn_ssa_aux_table, align 8
  %513 = load i32, ptr %498, align 8, !tbaa !199
  %514 = zext i32 %513 to i64
  %515 = getelementptr inbounds %struct.VEC_vn_ssa_aux_t_base, ptr %512, i64 0, i32 2, i64 %514
  %516 = load ptr, ptr %515, align 8, !tbaa !188
  %517 = icmp eq ptr %516, null
  br i1 %517, label %518, label %519, !prof !674

518:                                              ; preds = %511
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 180, ptr noundef nonnull @.str.1) #23
  br label %519

519:                                              ; preds = %518, %511
  store ptr %470, ptr %516, align 8, !tbaa !227
  %520 = load ptr, ptr @dump_file, align 8, !tbaa !188
  %521 = icmp eq ptr %520, null
  br i1 %521, label %2984, label %522, !prof !673

522:                                              ; preds = %519
  %523 = load i32, ptr @dump_flags, align 4, !tbaa !203
  %524 = and i32 %523, 8
  %525 = icmp eq i32 %524, 0
  br i1 %525, label %2984, label %526

526:                                              ; preds = %522
  %527 = call i64 @fwrite(ptr nonnull @.str.21, i64 11, i64 1, ptr nonnull %520)
  br label %2984

528:                                              ; preds = %508, %505
  %529 = load ptr, ptr @dump_file, align 8, !tbaa !188
  %530 = icmp eq ptr %529, null
  br i1 %530, label %2984, label %531, !prof !486

531:                                              ; preds = %528
  %532 = load i32, ptr @dump_flags, align 4, !tbaa !203
  %533 = and i32 %532, 8
  %534 = icmp eq i32 %533, 0
  br i1 %534, label %2984, label %535

535:                                              ; preds = %531
  %536 = call i32 @fputc(i32 10, ptr nonnull %529)
  br label %2984

537:                                              ; preds = %45
  %538 = and i32 %46, 255
  %539 = zext nneg i32 %538 to i64
  %540 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %539
  %541 = load i32, ptr %540, align 4, !tbaa !203
  %542 = zext i32 %541 to i64
  %543 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %542
  %544 = load i64, ptr %543, align 8, !tbaa !235
  %545 = icmp eq i64 %544, 0
  br i1 %545, label %546, label %547, !prof !675

546:                                              ; preds = %537
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 1622, ptr noundef nonnull @.str.1) #23
  br label %547

547:                                              ; preds = %546, %537
  %548 = getelementptr inbounds i8, ptr %5, i64 %544
  %549 = load ptr, ptr %548, align 8, !tbaa !188
  %550 = icmp ne ptr %549, null
  %551 = zext i1 %550 to i8
  br label %553

552:                                              ; preds = %45
  br label %553

553:                                              ; preds = %45, %552, %547
  %554 = phi i8 [ %551, %547 ], [ 1, %45 ], [ 0, %552 ]
  %555 = icmp eq i8 %554, 0
  br i1 %555, label %567, label %556, !prof !676

556:                                              ; preds = %553
  %557 = load i32, ptr %5, align 8
  %558 = and i32 %557, 254
  %559 = add nsw i32 %558, -10
  %560 = icmp ult i32 %559, -4
  %561 = and i32 %557, 16384
  %562 = icmp eq i32 %561, 0
  %563 = or i1 %562, %560
  br i1 %563, label %564, label %567, !prof !677

564:                                              ; preds = %556
  %565 = tail call zeroext i8 @stmt_could_throw_p(ptr noundef %5) #23
  %566 = icmp eq i8 %565, 0
  br i1 %566, label %569, label %567, !prof !677

567:                                              ; preds = %564, %556, %553
  %568 = tail call fastcc zeroext i8 @defs_to_varying(ptr noundef %5), !range !351
  br label %2984

569:                                              ; preds = %564
  %570 = load i32, ptr %5, align 8
  %571 = and i32 %570, 255
  %572 = trunc i32 %570 to i8
  switch i8 %572, label %2984 [
    i8 6, label %573
    i8 8, label %2672
  ], !prof !678

573:                                              ; preds = %569
  %574 = zext nneg i32 %571 to i64
  %575 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %574
  %576 = load i32, ptr %575, align 4, !tbaa !203
  %577 = zext i32 %576 to i64
  %578 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %577
  %579 = load i64, ptr %578, align 8, !tbaa !235
  %580 = icmp eq i64 %579, 0
  br i1 %580, label %581, label %582, !prof !679

581:                                              ; preds = %573
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 1622, ptr noundef nonnull @.str.1) #23
  br label %582

582:                                              ; preds = %581, %573
  %583 = getelementptr inbounds i8, ptr %5, i64 %579
  %584 = load ptr, ptr %583, align 8, !tbaa !188
  %585 = tail call zeroext i8 @gimple_assign_copy_p(ptr noundef %5) #23
  %586 = icmp eq i8 %585, 0
  br i1 %586, label %632, label %587, !prof !680

587:                                              ; preds = %582
  %588 = load i32, ptr %5, align 8
  %589 = and i32 %588, 255
  %590 = add nsw i32 %589, -1
  %591 = icmp ult i32 %590, 9
  tail call void @llvm.assume(i1 %591)
  %592 = zext nneg i32 %589 to i64
  %593 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %592
  %594 = load i32, ptr %593, align 4, !tbaa !203
  %595 = zext i32 %594 to i64
  %596 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %595
  %597 = load i64, ptr %596, align 8, !tbaa !235
  %598 = icmp eq i64 %597, 0
  br i1 %598, label %599, label %600, !prof !681

599:                                              ; preds = %587
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 1622, ptr noundef nonnull @.str.1) #23
  br label %600

600:                                              ; preds = %599, %587
  %601 = getelementptr inbounds i8, ptr %5, i64 %597
  %602 = getelementptr inbounds ptr, ptr %601, i64 1
  %603 = load ptr, ptr %602, align 8, !tbaa !188
  %604 = load i64, ptr %603, align 8
  %605 = and i64 %604, 65535
  %606 = icmp eq i64 %605, 141
  br i1 %606, label %607, label %632, !prof !682

607:                                              ; preds = %600
  %608 = load i64, ptr %584, align 8
  %609 = and i64 %608, 65535
  %610 = icmp eq i64 %609, 141
  br i1 %610, label %611, label %632, !prof !683

611:                                              ; preds = %607
  %612 = load i32, ptr %5, align 8
  %613 = and i32 %612, 255
  %614 = add nsw i32 %613, -10
  %615 = icmp ult i32 %614, -9
  br i1 %615, label %629, label %616, !prof !684

616:                                              ; preds = %611
  %617 = zext nneg i32 %613 to i64
  %618 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %617
  %619 = load i32, ptr %618, align 4, !tbaa !203
  %620 = zext i32 %619 to i64
  %621 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %620
  %622 = load i64, ptr %621, align 8, !tbaa !235
  %623 = icmp eq i64 %622, 0
  br i1 %623, label %624, label %625, !prof !684

624:                                              ; preds = %616
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 1622, ptr noundef nonnull @.str.1) #23
  br label %625

625:                                              ; preds = %624, %616
  %626 = getelementptr inbounds i8, ptr %5, i64 %622
  %627 = getelementptr inbounds ptr, ptr %626, i64 1
  %628 = load ptr, ptr %627, align 8, !tbaa !188
  br label %629

629:                                              ; preds = %611, %625
  %630 = phi ptr [ %628, %625 ], [ null, %611 ]
  %631 = tail call fastcc zeroext i8 @visit_copy(ptr noundef nonnull %584, ptr noundef %630), !range !351
  br label %2984

632:                                              ; preds = %607, %600, %582
  %633 = tail call zeroext i8 @gimple_assign_copy_p(ptr noundef %5) #23
  %634 = icmp eq i8 %633, 0
  br i1 %634, label %655, label %635, !prof !685

635:                                              ; preds = %632
  %636 = load i32, ptr %5, align 8
  %637 = and i32 %636, 255
  %638 = add nsw i32 %637, -1
  %639 = icmp ult i32 %638, 9
  tail call void @llvm.assume(i1 %639)
  %640 = zext nneg i32 %637 to i64
  %641 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %640
  %642 = load i32, ptr %641, align 4, !tbaa !203
  %643 = zext i32 %642 to i64
  %644 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %643
  %645 = load i64, ptr %644, align 8, !tbaa !235
  %646 = icmp eq i64 %645, 0
  br i1 %646, label %647, label %648, !prof !684

647:                                              ; preds = %635
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 1622, ptr noundef nonnull @.str.1) #23
  br label %648

648:                                              ; preds = %647, %635
  %649 = getelementptr inbounds i8, ptr %5, i64 %645
  %650 = getelementptr inbounds ptr, ptr %649, i64 1
  %651 = load ptr, ptr %650, align 8, !tbaa !188
  %652 = load i64, ptr %651, align 8
  %653 = and i64 %652, 65535
  %654 = icmp eq i64 %653, 141
  br i1 %654, label %1434, label %655, !prof !686

655:                                              ; preds = %648, %632
  %656 = load i32, ptr %5, align 8
  %657 = trunc i32 %656 to i8
  switch i8 %657, label %660 [
    i8 6, label %658
    i8 1, label %658
    i8 8, label %661
  ], !prof !687

658:                                              ; preds = %655, %655
  %659 = lshr i32 %656, 16
  br label %661

660:                                              ; preds = %655
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 1446, ptr noundef nonnull @.str.1) #23
  br label %661

661:                                              ; preds = %660, %658, %655
  %662 = phi i32 [ %659, %658 ], [ 0, %660 ], [ 59, %655 ]
  %663 = zext nneg i32 %662 to i64
  %664 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %663
  %665 = load i8, ptr %664, align 1, !tbaa !199
  %666 = icmp eq i8 %665, 3
  br i1 %666, label %667, label %687, !prof !688

667:                                              ; preds = %661
  %668 = load i32, ptr %5, align 8
  %669 = and i32 %668, 255
  %670 = add nsw i32 %669, -1
  %671 = icmp ult i32 %670, 9
  tail call void @llvm.assume(i1 %671)
  %672 = zext nneg i32 %669 to i64
  %673 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %672
  %674 = load i32, ptr %673, align 4, !tbaa !203
  %675 = zext i32 %674 to i64
  %676 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %675
  %677 = load i64, ptr %676, align 8, !tbaa !235
  %678 = icmp eq i64 %677, 0
  br i1 %678, label %679, label %680, !prof !689

679:                                              ; preds = %667
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 1622, ptr noundef nonnull @.str.1) #23
  br label %680

680:                                              ; preds = %679, %667
  %681 = getelementptr inbounds i8, ptr %5, i64 %677
  %682 = getelementptr inbounds ptr, ptr %681, i64 1
  %683 = load ptr, ptr %682, align 8, !tbaa !188
  %684 = load i64, ptr %683, align 8
  %685 = trunc i64 %684 to i32
  %686 = and i32 %685, 65535
  br label %687

687:                                              ; preds = %680, %661
  %688 = phi i32 [ %686, %680 ], [ %662, %661 ]
  %689 = zext nneg i32 %688 to i64
  %690 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %689
  %691 = load i32, ptr %690, align 4, !tbaa !203
  switch i32 %691, label %1433 [
    i32 3, label %692
    i32 4, label %714
    i32 6, label %796
    i32 5, label %1148
    i32 7, label %1148
  ], !prof !690

692:                                              ; preds = %687
  %693 = load i32, ptr %5, align 8
  %694 = and i32 %693, 255
  %695 = add nsw i32 %694, -10
  %696 = icmp ult i32 %695, -9
  br i1 %696, label %710, label %697, !prof !691

697:                                              ; preds = %692
  %698 = zext nneg i32 %694 to i64
  %699 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %698
  %700 = load i32, ptr %699, align 4, !tbaa !203
  %701 = zext i32 %700 to i64
  %702 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %701
  %703 = load i64, ptr %702, align 8, !tbaa !235
  %704 = icmp eq i64 %703, 0
  br i1 %704, label %705, label %706, !prof !691

705:                                              ; preds = %697
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 1622, ptr noundef nonnull @.str.1) #23
  br label %706

706:                                              ; preds = %705, %697
  %707 = getelementptr inbounds i8, ptr %5, i64 %703
  %708 = getelementptr inbounds ptr, ptr %707, i64 1
  %709 = load ptr, ptr %708, align 8, !tbaa !188
  br label %710

710:                                              ; preds = %706, %692
  %711 = phi ptr [ %709, %706 ], [ null, %692 ]
  %712 = tail call ptr @get_symbol_constant_value(ptr noundef %711) #23
  %713 = icmp eq ptr %712, null
  br i1 %713, label %1433, label %1434, !prof !692

714:                                              ; preds = %687
  %715 = load i32, ptr %5, align 8
  %716 = and i32 %715, 255
  %717 = add nsw i32 %716, -10
  %718 = icmp ult i32 %717, -9
  br i1 %718, label %732, label %719, !prof !693

719:                                              ; preds = %714
  %720 = zext nneg i32 %716 to i64
  %721 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %720
  %722 = load i32, ptr %721, align 4, !tbaa !203
  %723 = zext i32 %722 to i64
  %724 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %723
  %725 = load i64, ptr %724, align 8, !tbaa !235
  %726 = icmp eq i64 %725, 0
  br i1 %726, label %727, label %728, !prof !693

727:                                              ; preds = %719
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 1622, ptr noundef nonnull @.str.1) #23
  br label %728

728:                                              ; preds = %727, %719
  %729 = getelementptr inbounds i8, ptr %5, i64 %725
  %730 = getelementptr inbounds ptr, ptr %729, i64 1
  %731 = load ptr, ptr %730, align 8, !tbaa !188
  br label %732

732:                                              ; preds = %728, %714
  %733 = phi ptr [ %731, %728 ], [ null, %714 ]
  %734 = tail call ptr @fold_const_aggregate_ref(ptr noundef %733) #23
  %735 = icmp eq ptr %734, null
  br i1 %735, label %736, label %1434, !prof !694

736:                                              ; preds = %732
  %737 = load i32, ptr %5, align 8
  %738 = and i32 %737, 255
  %739 = add nsw i32 %738, -1
  %740 = icmp ult i32 %739, 9
  tail call void @llvm.assume(i1 %740)
  %741 = zext nneg i32 %738 to i64
  %742 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %741
  %743 = load i32, ptr %742, align 4, !tbaa !203
  %744 = zext i32 %743 to i64
  %745 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %744
  %746 = load i64, ptr %745, align 8, !tbaa !235
  %747 = icmp eq i64 %746, 0
  br i1 %747, label %748, label %749, !prof !693

748:                                              ; preds = %736
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 1622, ptr noundef nonnull @.str.1) #23
  br label %749

749:                                              ; preds = %748, %736
  %750 = getelementptr inbounds i8, ptr %5, i64 %746
  %751 = getelementptr inbounds ptr, ptr %750, i64 1
  %752 = load ptr, ptr %751, align 8, !tbaa !188
  %753 = load i64, ptr %752, align 8
  %754 = and i64 %753, 65535
  %755 = icmp eq i64 %754, 43
  br i1 %755, label %796, label %756, !prof !693

756:                                              ; preds = %749
  %757 = load i32, ptr %5, align 8
  %758 = and i32 %757, 255
  %759 = add nsw i32 %758, -1
  %760 = icmp ult i32 %759, 9
  tail call void @llvm.assume(i1 %760)
  %761 = zext nneg i32 %758 to i64
  %762 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %761
  %763 = load i32, ptr %762, align 4, !tbaa !203
  %764 = zext i32 %763 to i64
  %765 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %764
  %766 = load i64, ptr %765, align 8, !tbaa !235
  %767 = icmp eq i64 %766, 0
  br i1 %767, label %768, label %769, !prof !693

768:                                              ; preds = %756
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 1622, ptr noundef nonnull @.str.1) #23
  br label %769

769:                                              ; preds = %768, %756
  %770 = getelementptr inbounds i8, ptr %5, i64 %766
  %771 = getelementptr inbounds ptr, ptr %770, i64 1
  %772 = load ptr, ptr %771, align 8, !tbaa !188
  %773 = load i64, ptr %772, align 8
  %774 = and i64 %773, 65535
  %775 = icmp eq i64 %774, 44
  br i1 %775, label %796, label %776, !prof !693

776:                                              ; preds = %769
  %777 = load i32, ptr %5, align 8
  %778 = and i32 %777, 255
  %779 = add nsw i32 %778, -1
  %780 = icmp ult i32 %779, 9
  tail call void @llvm.assume(i1 %780)
  %781 = zext nneg i32 %778 to i64
  %782 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %781
  %783 = load i32, ptr %782, align 4, !tbaa !203
  %784 = zext i32 %783 to i64
  %785 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %784
  %786 = load i64, ptr %785, align 8, !tbaa !235
  %787 = icmp eq i64 %786, 0
  br i1 %787, label %788, label %789, !prof !693

788:                                              ; preds = %776
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 1622, ptr noundef nonnull @.str.1) #23
  br label %789

789:                                              ; preds = %788, %776
  %790 = getelementptr inbounds i8, ptr %5, i64 %786
  %791 = getelementptr inbounds ptr, ptr %790, i64 1
  %792 = load ptr, ptr %791, align 8, !tbaa !188
  %793 = load i64, ptr %792, align 8
  %794 = and i64 %793, 65535
  %795 = icmp eq i64 %794, 118
  br i1 %795, label %796, label %1433, !prof !693

796:                                              ; preds = %789, %769, %749, %687
  %797 = load i32, ptr %5, align 8
  %798 = and i32 %797, 255
  %799 = add nsw i32 %798, -10
  %800 = icmp ult i32 %799, -9
  br i1 %800, label %814, label %801, !prof !695

801:                                              ; preds = %796
  %802 = zext nneg i32 %798 to i64
  %803 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %802
  %804 = load i32, ptr %803, align 4, !tbaa !203
  %805 = zext i32 %804 to i64
  %806 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %805
  %807 = load i64, ptr %806, align 8, !tbaa !235
  %808 = icmp eq i64 %807, 0
  br i1 %808, label %809, label %810, !prof !695

809:                                              ; preds = %801
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 1622, ptr noundef nonnull @.str.1) #23
  br label %810

810:                                              ; preds = %809, %801
  %811 = getelementptr inbounds i8, ptr %5, i64 %807
  %812 = getelementptr inbounds ptr, ptr %811, i64 1
  %813 = load ptr, ptr %812, align 8, !tbaa !188
  br label %814

814:                                              ; preds = %810, %796
  %815 = phi ptr [ %813, %810 ], [ null, %796 ]
  %816 = load i32, ptr %5, align 8
  %817 = trunc i32 %816 to i8
  switch i8 %817, label %820 [
    i8 6, label %818
    i8 1, label %818
    i8 8, label %821
  ], !prof !696

818:                                              ; preds = %814, %814
  %819 = lshr i32 %816, 16
  br label %821

820:                                              ; preds = %814
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 1446, ptr noundef nonnull @.str.1) #23
  br label %821

821:                                              ; preds = %820, %818, %814
  %822 = phi i32 [ %819, %818 ], [ 0, %820 ], [ 59, %814 ]
  %823 = zext nneg i32 %822 to i64
  %824 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %823
  %825 = load i8, ptr %824, align 1, !tbaa !199
  %826 = icmp eq i8 %825, 3
  br i1 %826, label %827, label %847, !prof !695

827:                                              ; preds = %821
  %828 = load i32, ptr %5, align 8
  %829 = and i32 %828, 255
  %830 = add nsw i32 %829, -1
  %831 = icmp ult i32 %830, 9
  tail call void @llvm.assume(i1 %831)
  %832 = zext nneg i32 %829 to i64
  %833 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %832
  %834 = load i32, ptr %833, align 4, !tbaa !203
  %835 = zext i32 %834 to i64
  %836 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %835
  %837 = load i64, ptr %836, align 8, !tbaa !235
  %838 = icmp eq i64 %837, 0
  br i1 %838, label %839, label %840

839:                                              ; preds = %827
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 1622, ptr noundef nonnull @.str.1) #23
  br label %840

840:                                              ; preds = %839, %827
  %841 = getelementptr inbounds i8, ptr %5, i64 %837
  %842 = getelementptr inbounds ptr, ptr %841, i64 1
  %843 = load ptr, ptr %842, align 8, !tbaa !188
  %844 = load i64, ptr %843, align 8
  %845 = trunc i64 %844 to i32
  %846 = and i32 %845, 65535
  br label %847

847:                                              ; preds = %840, %821
  %848 = phi i32 [ %846, %840 ], [ %822, %821 ]
  %849 = icmp eq i32 %848, 43
  br i1 %849, label %920, label %850, !prof !695

850:                                              ; preds = %847
  %851 = load i32, ptr %5, align 8
  %852 = trunc i32 %851 to i8
  switch i8 %852, label %855 [
    i8 6, label %853
    i8 1, label %853
    i8 8, label %856
  ], !prof !696

853:                                              ; preds = %850, %850
  %854 = lshr i32 %851, 16
  br label %856

855:                                              ; preds = %850
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 1446, ptr noundef nonnull @.str.1) #23
  br label %856

856:                                              ; preds = %855, %853, %850
  %857 = phi i32 [ %854, %853 ], [ 0, %855 ], [ 59, %850 ]
  %858 = zext nneg i32 %857 to i64
  %859 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %858
  %860 = load i8, ptr %859, align 1, !tbaa !199
  %861 = icmp eq i8 %860, 3
  br i1 %861, label %862, label %882, !prof !695

862:                                              ; preds = %856
  %863 = load i32, ptr %5, align 8
  %864 = and i32 %863, 255
  %865 = add nsw i32 %864, -1
  %866 = icmp ult i32 %865, 9
  tail call void @llvm.assume(i1 %866)
  %867 = zext nneg i32 %864 to i64
  %868 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %867
  %869 = load i32, ptr %868, align 4, !tbaa !203
  %870 = zext i32 %869 to i64
  %871 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %870
  %872 = load i64, ptr %871, align 8, !tbaa !235
  %873 = icmp eq i64 %872, 0
  br i1 %873, label %874, label %875

874:                                              ; preds = %862
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 1622, ptr noundef nonnull @.str.1) #23
  br label %875

875:                                              ; preds = %874, %862
  %876 = getelementptr inbounds i8, ptr %5, i64 %872
  %877 = getelementptr inbounds ptr, ptr %876, i64 1
  %878 = load ptr, ptr %877, align 8, !tbaa !188
  %879 = load i64, ptr %878, align 8
  %880 = trunc i64 %879 to i32
  %881 = and i32 %880, 65535
  br label %882

882:                                              ; preds = %875, %856
  %883 = phi i32 [ %881, %875 ], [ %857, %856 ]
  %884 = icmp eq i32 %883, 44
  br i1 %884, label %920, label %885, !prof !695

885:                                              ; preds = %882
  %886 = load i32, ptr %5, align 8
  %887 = trunc i32 %886 to i8
  switch i8 %887, label %890 [
    i8 6, label %888
    i8 1, label %888
    i8 8, label %891
  ], !prof !696

888:                                              ; preds = %885, %885
  %889 = lshr i32 %886, 16
  br label %891

890:                                              ; preds = %885
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 1446, ptr noundef nonnull @.str.1) #23
  br label %891

891:                                              ; preds = %890, %888, %885
  %892 = phi i32 [ %889, %888 ], [ 0, %890 ], [ 59, %885 ]
  %893 = zext nneg i32 %892 to i64
  %894 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %893
  %895 = load i8, ptr %894, align 1, !tbaa !199
  %896 = icmp eq i8 %895, 3
  br i1 %896, label %897, label %917, !prof !695

897:                                              ; preds = %891
  %898 = load i32, ptr %5, align 8
  %899 = and i32 %898, 255
  %900 = add nsw i32 %899, -1
  %901 = icmp ult i32 %900, 9
  tail call void @llvm.assume(i1 %901)
  %902 = zext nneg i32 %899 to i64
  %903 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %902
  %904 = load i32, ptr %903, align 4, !tbaa !203
  %905 = zext i32 %904 to i64
  %906 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %905
  %907 = load i64, ptr %906, align 8, !tbaa !235
  %908 = icmp eq i64 %907, 0
  br i1 %908, label %909, label %910

909:                                              ; preds = %897
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 1622, ptr noundef nonnull @.str.1) #23
  br label %910

910:                                              ; preds = %909, %897
  %911 = getelementptr inbounds i8, ptr %5, i64 %907
  %912 = getelementptr inbounds ptr, ptr %911, i64 1
  %913 = load ptr, ptr %912, align 8, !tbaa !188
  %914 = load i64, ptr %913, align 8
  %915 = trunc i64 %914 to i32
  %916 = and i32 %915, 65535
  br label %917

917:                                              ; preds = %910, %891
  %918 = phi i32 [ %916, %910 ], [ %892, %891 ]
  %919 = icmp eq i32 %918, 118
  br i1 %919, label %920, label %923, !prof !695

920:                                              ; preds = %917, %882, %847
  %921 = getelementptr inbounds %struct.tree_exp, ptr %815, i64 0, i32 3
  %922 = load ptr, ptr %921, align 8, !tbaa !199
  br label %923

923:                                              ; preds = %920, %917
  %924 = phi ptr [ %922, %920 ], [ %815, %917 ]
  %925 = load i64, ptr %924, align 8
  %926 = and i64 %925, 65535
  %927 = icmp eq i64 %926, 141
  br i1 %927, label %928, label %1434, !prof !697

928:                                              ; preds = %923
  %929 = load ptr, ptr @vn_ssa_aux_table, align 8
  %930 = getelementptr inbounds %struct.tree_ssa_name, ptr %924, i64 0, i32 3
  %931 = load i32, ptr %930, align 8, !tbaa !199
  %932 = zext i32 %931 to i64
  %933 = getelementptr inbounds %struct.VEC_vn_ssa_aux_t_base, ptr %929, i64 0, i32 2, i64 %932
  %934 = load ptr, ptr %933, align 8, !tbaa !188
  %935 = icmp eq ptr %934, null
  br i1 %935, label %936, label %937, !prof !695

936:                                              ; preds = %928
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 180, ptr noundef nonnull @.str.1) #23
  br label %937

937:                                              ; preds = %936, %928
  %938 = getelementptr inbounds %struct.vn_ssa_aux, ptr %934, i64 0, i32 5
  %939 = load i8, ptr %938, align 4
  %940 = and i8 %939, 4
  %941 = icmp eq i8 %940, 0
  br i1 %941, label %945, label %942, !prof !698

942:                                              ; preds = %937
  %943 = tail call ptr @vn_get_expr_for(ptr noundef nonnull %924)
  %944 = tail call fastcc ptr @valueize_expr(ptr noundef %943)
  br label %1103

945:                                              ; preds = %937
  %946 = load i32, ptr %5, align 8
  %947 = and i32 %946, 255
  %948 = icmp eq i32 %947, 6
  br i1 %948, label %949, label %980, !prof !699

949:                                              ; preds = %945
  %950 = lshr i32 %946, 16
  %951 = zext nneg i32 %950 to i64
  %952 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %951
  %953 = load i8, ptr %952, align 1, !tbaa !199
  %954 = icmp eq i8 %953, 3
  br i1 %954, label %955, label %971, !prof !700

955:                                              ; preds = %949
  %956 = zext nneg i32 %947 to i64
  %957 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %956
  %958 = load i32, ptr %957, align 4, !tbaa !203
  %959 = zext i32 %958 to i64
  %960 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %959
  %961 = load i64, ptr %960, align 8, !tbaa !235
  %962 = icmp eq i64 %961, 0
  br i1 %962, label %963, label %964

963:                                              ; preds = %955
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 1622, ptr noundef nonnull @.str.1) #23
  br label %964

964:                                              ; preds = %963, %955
  %965 = getelementptr inbounds i8, ptr %5, i64 %961
  %966 = getelementptr inbounds ptr, ptr %965, i64 1
  %967 = load ptr, ptr %966, align 8, !tbaa !188
  %968 = load i64, ptr %967, align 8
  %969 = trunc i64 %968 to i32
  %970 = and i32 %969, 65535
  br label %971

971:                                              ; preds = %964, %949
  %972 = phi i32 [ %970, %964 ], [ %950, %949 ]
  %973 = icmp eq i32 %972, 113
  %974 = and i32 %972, 65533
  %975 = icmp eq i32 %974, 116
  %976 = or i1 %973, %975
  %977 = icmp eq i32 %972, 77
  %978 = or i1 %977, %976
  %979 = zext i1 %978 to i8
  br label %980

980:                                              ; preds = %971, %945
  %981 = phi i8 [ %979, %971 ], [ 0, %945 ]
  %982 = icmp eq i8 %981, 0
  br i1 %982, label %983, label %1088, !prof !700

983:                                              ; preds = %980
  %984 = load i32, ptr %5, align 8
  %985 = trunc i32 %984 to i8
  switch i8 %985, label %988 [
    i8 6, label %986
    i8 1, label %986
    i8 8, label %989
  ]

986:                                              ; preds = %983, %983
  %987 = lshr i32 %984, 16
  br label %989

988:                                              ; preds = %983
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 1446, ptr noundef nonnull @.str.1) #23
  br label %989

989:                                              ; preds = %988, %986, %983
  %990 = phi i32 [ %987, %986 ], [ 0, %988 ], [ 59, %983 ]
  %991 = zext nneg i32 %990 to i64
  %992 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %991
  %993 = load i8, ptr %992, align 1, !tbaa !199
  %994 = icmp eq i8 %993, 3
  br i1 %994, label %995, label %1015

995:                                              ; preds = %989
  %996 = load i32, ptr %5, align 8
  %997 = and i32 %996, 255
  %998 = add nsw i32 %997, -1
  %999 = icmp ult i32 %998, 9
  tail call void @llvm.assume(i1 %999)
  %1000 = zext nneg i32 %997 to i64
  %1001 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %1000
  %1002 = load i32, ptr %1001, align 4, !tbaa !203
  %1003 = zext i32 %1002 to i64
  %1004 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %1003
  %1005 = load i64, ptr %1004, align 8, !tbaa !235
  %1006 = icmp eq i64 %1005, 0
  br i1 %1006, label %1007, label %1008

1007:                                             ; preds = %995
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 1622, ptr noundef nonnull @.str.1) #23
  br label %1008

1008:                                             ; preds = %1007, %995
  %1009 = getelementptr inbounds i8, ptr %5, i64 %1005
  %1010 = getelementptr inbounds ptr, ptr %1009, i64 1
  %1011 = load ptr, ptr %1010, align 8, !tbaa !188
  %1012 = load i64, ptr %1011, align 8
  %1013 = trunc i64 %1012 to i32
  %1014 = and i32 %1013, 65535
  br label %1015

1015:                                             ; preds = %1008, %989
  %1016 = phi i32 [ %1014, %1008 ], [ %990, %989 ]
  %1017 = icmp eq i32 %1016, 43
  br i1 %1017, label %1088, label %1018

1018:                                             ; preds = %1015
  %1019 = load i32, ptr %5, align 8
  %1020 = trunc i32 %1019 to i8
  switch i8 %1020, label %1023 [
    i8 6, label %1021
    i8 1, label %1021
    i8 8, label %1024
  ]

1021:                                             ; preds = %1018, %1018
  %1022 = lshr i32 %1019, 16
  br label %1024

1023:                                             ; preds = %1018
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 1446, ptr noundef nonnull @.str.1) #23
  br label %1024

1024:                                             ; preds = %1023, %1021, %1018
  %1025 = phi i32 [ %1022, %1021 ], [ 0, %1023 ], [ 59, %1018 ]
  %1026 = zext nneg i32 %1025 to i64
  %1027 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %1026
  %1028 = load i8, ptr %1027, align 1, !tbaa !199
  %1029 = icmp eq i8 %1028, 3
  br i1 %1029, label %1030, label %1050

1030:                                             ; preds = %1024
  %1031 = load i32, ptr %5, align 8
  %1032 = and i32 %1031, 255
  %1033 = add nsw i32 %1032, -1
  %1034 = icmp ult i32 %1033, 9
  tail call void @llvm.assume(i1 %1034)
  %1035 = zext nneg i32 %1032 to i64
  %1036 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %1035
  %1037 = load i32, ptr %1036, align 4, !tbaa !203
  %1038 = zext i32 %1037 to i64
  %1039 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %1038
  %1040 = load i64, ptr %1039, align 8, !tbaa !235
  %1041 = icmp eq i64 %1040, 0
  br i1 %1041, label %1042, label %1043

1042:                                             ; preds = %1030
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 1622, ptr noundef nonnull @.str.1) #23
  br label %1043

1043:                                             ; preds = %1042, %1030
  %1044 = getelementptr inbounds i8, ptr %5, i64 %1040
  %1045 = getelementptr inbounds ptr, ptr %1044, i64 1
  %1046 = load ptr, ptr %1045, align 8, !tbaa !188
  %1047 = load i64, ptr %1046, align 8
  %1048 = trunc i64 %1047 to i32
  %1049 = and i32 %1048, 65535
  br label %1050

1050:                                             ; preds = %1043, %1024
  %1051 = phi i32 [ %1049, %1043 ], [ %1025, %1024 ]
  %1052 = icmp eq i32 %1051, 44
  br i1 %1052, label %1088, label %1053

1053:                                             ; preds = %1050
  %1054 = load i32, ptr %5, align 8
  %1055 = trunc i32 %1054 to i8
  switch i8 %1055, label %1058 [
    i8 6, label %1056
    i8 1, label %1056
    i8 8, label %1059
  ]

1056:                                             ; preds = %1053, %1053
  %1057 = lshr i32 %1054, 16
  br label %1059

1058:                                             ; preds = %1053
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 1446, ptr noundef nonnull @.str.1) #23
  br label %1059

1059:                                             ; preds = %1058, %1056, %1053
  %1060 = phi i32 [ %1057, %1056 ], [ 0, %1058 ], [ 59, %1053 ]
  %1061 = zext nneg i32 %1060 to i64
  %1062 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %1061
  %1063 = load i8, ptr %1062, align 1, !tbaa !199
  %1064 = icmp eq i8 %1063, 3
  br i1 %1064, label %1065, label %1085

1065:                                             ; preds = %1059
  %1066 = load i32, ptr %5, align 8
  %1067 = and i32 %1066, 255
  %1068 = add nsw i32 %1067, -1
  %1069 = icmp ult i32 %1068, 9
  tail call void @llvm.assume(i1 %1069)
  %1070 = zext nneg i32 %1067 to i64
  %1071 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %1070
  %1072 = load i32, ptr %1071, align 4, !tbaa !203
  %1073 = zext i32 %1072 to i64
  %1074 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %1073
  %1075 = load i64, ptr %1074, align 8, !tbaa !235
  %1076 = icmp eq i64 %1075, 0
  br i1 %1076, label %1077, label %1078

1077:                                             ; preds = %1065
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 1622, ptr noundef nonnull @.str.1) #23
  br label %1078

1078:                                             ; preds = %1077, %1065
  %1079 = getelementptr inbounds i8, ptr %5, i64 %1075
  %1080 = getelementptr inbounds ptr, ptr %1079, i64 1
  %1081 = load ptr, ptr %1080, align 8, !tbaa !188
  %1082 = load i64, ptr %1081, align 8
  %1083 = trunc i64 %1082 to i32
  %1084 = and i32 %1083, 65535
  br label %1085

1085:                                             ; preds = %1078, %1059
  %1086 = phi i32 [ %1084, %1078 ], [ %1060, %1059 ]
  %1087 = icmp eq i32 %1086, 118
  br i1 %1087, label %1088, label %1103

1088:                                             ; preds = %1085, %1050, %1015, %980
  %1089 = tail call ptr @vn_get_expr_for(ptr noundef nonnull %924)
  %1090 = tail call fastcc ptr @valueize_expr(ptr noundef %1089)
  %1091 = load i64, ptr %1089, align 8
  %1092 = and i64 %1091, 65535
  %1093 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %1092
  %1094 = load i32, ptr %1093, align 4, !tbaa !203
  %1095 = and i32 %1094, -2
  %1096 = icmp eq i32 %1095, 6
  br i1 %1096, label %1102, label %1097, !prof !701

1097:                                             ; preds = %1088
  %1098 = trunc i64 %1091 to i16
  switch i16 %1098, label %1099 [
    i16 118, label %1102
    i16 141, label %1102
  ], !prof !702

1099:                                             ; preds = %1097
  %1100 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef nonnull %1089) #23
  %1101 = icmp eq i8 %1100, 0
  br i1 %1101, label %1103, label %1102

1102:                                             ; preds = %1099, %1097, %1097, %1088
  br label %1103

1103:                                             ; preds = %1102, %1099, %1085, %942
  %1104 = phi ptr [ %943, %942 ], [ %1089, %1102 ], [ %924, %1099 ], [ %924, %1085 ]
  %1105 = icmp eq ptr %1104, %924
  br i1 %1105, label %1434, label %1106, !prof !703

1106:                                             ; preds = %1103
  %1107 = load i32, ptr %5, align 8
  %1108 = trunc i32 %1107 to i8
  switch i8 %1108, label %1111 [
    i8 6, label %1109
    i8 1, label %1109
    i8 8, label %1112
  ], !prof !704

1109:                                             ; preds = %1106, %1106
  %1110 = lshr i32 %1107, 16
  br label %1112

1111:                                             ; preds = %1106
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 1446, ptr noundef nonnull @.str.1) #23
  br label %1112

1112:                                             ; preds = %1111, %1109, %1106
  %1113 = phi i32 [ %1110, %1109 ], [ 0, %1111 ], [ 59, %1106 ]
  %1114 = zext nneg i32 %1113 to i64
  %1115 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %1114
  %1116 = load i8, ptr %1115, align 1, !tbaa !199
  %1117 = icmp eq i8 %1116, 3
  br i1 %1117, label %1118, label %1138, !prof !705

1118:                                             ; preds = %1112
  %1119 = load i32, ptr %5, align 8
  %1120 = and i32 %1119, 255
  %1121 = add nsw i32 %1120, -1
  %1122 = icmp ult i32 %1121, 9
  tail call void @llvm.assume(i1 %1122)
  %1123 = zext nneg i32 %1120 to i64
  %1124 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %1123
  %1125 = load i32, ptr %1124, align 4, !tbaa !203
  %1126 = zext i32 %1125 to i64
  %1127 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %1126
  %1128 = load i64, ptr %1127, align 8, !tbaa !235
  %1129 = icmp eq i64 %1128, 0
  br i1 %1129, label %1130, label %1131

1130:                                             ; preds = %1118
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 1622, ptr noundef nonnull @.str.1) #23
  br label %1131

1131:                                             ; preds = %1130, %1118
  %1132 = getelementptr inbounds i8, ptr %5, i64 %1128
  %1133 = getelementptr inbounds ptr, ptr %1132, i64 1
  %1134 = load ptr, ptr %1133, align 8, !tbaa !188
  %1135 = load i64, ptr %1134, align 8
  %1136 = trunc i64 %1135 to i32
  %1137 = and i32 %1136, 65535
  br label %1138

1138:                                             ; preds = %1131, %1112
  %1139 = phi i32 [ %1137, %1131 ], [ %1113, %1112 ]
  %1140 = tail call fastcc ptr @gimple_expr_type(ptr noundef nonnull %5)
  %1141 = tail call ptr @fold_unary_ignore_overflow_loc(i32 noundef 0, i32 noundef %1139, ptr noundef %1140, ptr noundef %1104) #23
  %1142 = icmp eq ptr %1141, null
  br i1 %1142, label %1147, label %1143, !prof !706

1143:                                             ; preds = %1138
  %1144 = tail call ptr @tree_ssa_strip_useless_type_conversions(ptr noundef nonnull %1141) #23
  %1145 = tail call zeroext i8 @valid_gimple_rhs_p(ptr noundef %1144) #23
  %1146 = icmp eq i8 %1145, 0
  br i1 %1146, label %1147, label %1434

1147:                                             ; preds = %1143, %1138
  br label %1434

1148:                                             ; preds = %687, %687
  %1149 = load i32, ptr %5, align 8
  %1150 = and i32 %1149, 255
  %1151 = add nsw i32 %1150, -10
  %1152 = icmp ult i32 %1151, -9
  br i1 %1152, label %1166, label %1153, !prof !707

1153:                                             ; preds = %1148
  %1154 = zext nneg i32 %1150 to i64
  %1155 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %1154
  %1156 = load i32, ptr %1155, align 4, !tbaa !203
  %1157 = zext i32 %1156 to i64
  %1158 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %1157
  %1159 = load i64, ptr %1158, align 8, !tbaa !235
  %1160 = icmp eq i64 %1159, 0
  br i1 %1160, label %1161, label %1162, !prof !707

1161:                                             ; preds = %1153
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 1622, ptr noundef nonnull @.str.1) #23
  br label %1162

1162:                                             ; preds = %1161, %1153
  %1163 = getelementptr inbounds i8, ptr %5, i64 %1159
  %1164 = getelementptr inbounds ptr, ptr %1163, i64 1
  %1165 = load ptr, ptr %1164, align 8, !tbaa !188
  br label %1166

1166:                                             ; preds = %1162, %1148
  %1167 = phi ptr [ %1165, %1162 ], [ null, %1148 ]
  %1168 = getelementptr inbounds %struct.gimple_statement_base, ptr %5, i64 0, i32 3
  %1169 = load i32, ptr %1168, align 4, !tbaa !199
  %1170 = icmp ugt i32 %1169, 2
  br i1 %1170, label %1171, label %1189, !prof !708

1171:                                             ; preds = %1166
  %1172 = load i32, ptr %5, align 8
  %1173 = and i32 %1172, 255
  %1174 = add nsw i32 %1173, -10
  %1175 = icmp ult i32 %1174, -9
  br i1 %1175, label %1189, label %1176, !prof !707

1176:                                             ; preds = %1171
  %1177 = zext nneg i32 %1173 to i64
  %1178 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %1177
  %1179 = load i32, ptr %1178, align 4, !tbaa !203
  %1180 = zext i32 %1179 to i64
  %1181 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %1180
  %1182 = load i64, ptr %1181, align 8, !tbaa !235
  %1183 = icmp eq i64 %1182, 0
  br i1 %1183, label %1184, label %1185, !prof !707

1184:                                             ; preds = %1176
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 1622, ptr noundef nonnull @.str.1) #23
  br label %1185

1185:                                             ; preds = %1184, %1176
  %1186 = getelementptr inbounds i8, ptr %5, i64 %1182
  %1187 = getelementptr inbounds ptr, ptr %1186, i64 2
  %1188 = load ptr, ptr %1187, align 8, !tbaa !188
  br label %1189

1189:                                             ; preds = %1185, %1171, %1166
  %1190 = phi ptr [ null, %1166 ], [ %1188, %1185 ], [ null, %1171 ]
  %1191 = load i64, ptr %1167, align 8
  %1192 = and i64 %1191, 65535
  %1193 = icmp eq i64 %1192, 141
  br i1 %1193, label %1194, label %1282, !prof !709

1194:                                             ; preds = %1189
  %1195 = load ptr, ptr @vn_ssa_aux_table, align 8
  %1196 = getelementptr inbounds %struct.tree_ssa_name, ptr %1167, i64 0, i32 3
  %1197 = load i32, ptr %1196, align 8, !tbaa !199
  %1198 = zext i32 %1197 to i64
  %1199 = getelementptr inbounds %struct.VEC_vn_ssa_aux_t_base, ptr %1195, i64 0, i32 2, i64 %1198
  %1200 = load ptr, ptr %1199, align 8, !tbaa !188
  %1201 = icmp eq ptr %1200, null
  br i1 %1201, label %1202, label %1203, !prof !710

1202:                                             ; preds = %1194
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 180, ptr noundef nonnull @.str.1) #23
  br label %1203

1203:                                             ; preds = %1202, %1194
  %1204 = getelementptr inbounds %struct.vn_ssa_aux, ptr %1200, i64 0, i32 5
  %1205 = load i8, ptr %1204, align 4
  %1206 = and i8 %1205, 4
  %1207 = icmp eq i8 %1206, 0
  br i1 %1207, label %1208, label %1246, !prof !711

1208:                                             ; preds = %1203
  %1209 = load i32, ptr %5, align 8
  %1210 = trunc i32 %1209 to i8
  switch i8 %1210, label %1213 [
    i8 6, label %1211
    i8 1, label %1211
    i8 8, label %1214
  ], !prof !712

1211:                                             ; preds = %1208, %1208
  %1212 = lshr i32 %1209, 16
  br label %1214

1213:                                             ; preds = %1208
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 1446, ptr noundef nonnull @.str.1) #23
  br label %1214

1214:                                             ; preds = %1213, %1211, %1208
  %1215 = phi i32 [ %1212, %1211 ], [ 0, %1213 ], [ 59, %1208 ]
  %1216 = zext nneg i32 %1215 to i64
  %1217 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %1216
  %1218 = load i8, ptr %1217, align 1, !tbaa !199
  %1219 = icmp eq i8 %1218, 3
  br i1 %1219, label %1220, label %1240, !prof !713

1220:                                             ; preds = %1214
  %1221 = load i32, ptr %5, align 8
  %1222 = and i32 %1221, 255
  %1223 = add nsw i32 %1222, -1
  %1224 = icmp ult i32 %1223, 9
  tail call void @llvm.assume(i1 %1224)
  %1225 = zext nneg i32 %1222 to i64
  %1226 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %1225
  %1227 = load i32, ptr %1226, align 4, !tbaa !203
  %1228 = zext i32 %1227 to i64
  %1229 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %1228
  %1230 = load i64, ptr %1229, align 8, !tbaa !235
  %1231 = icmp eq i64 %1230, 0
  br i1 %1231, label %1232, label %1233

1232:                                             ; preds = %1220
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 1622, ptr noundef nonnull @.str.1) #23
  br label %1233

1233:                                             ; preds = %1232, %1220
  %1234 = getelementptr inbounds i8, ptr %5, i64 %1230
  %1235 = getelementptr inbounds ptr, ptr %1234, i64 1
  %1236 = load ptr, ptr %1235, align 8, !tbaa !188
  %1237 = load i64, ptr %1236, align 8
  %1238 = trunc i64 %1237 to i32
  %1239 = and i32 %1238, 65535
  br label %1240

1240:                                             ; preds = %1233, %1214
  %1241 = phi i32 [ %1239, %1233 ], [ %1215, %1214 ]
  %1242 = zext nneg i32 %1241 to i64
  %1243 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %1242
  %1244 = load i32, ptr %1243, align 4, !tbaa !203
  %1245 = icmp eq i32 %1244, 5
  br i1 %1245, label %1246, label %1249, !prof !714

1246:                                             ; preds = %1240, %1203
  %1247 = tail call ptr @vn_get_expr_for(ptr noundef nonnull %1167)
  %1248 = tail call fastcc ptr @valueize_expr(ptr noundef %1247)
  br label %1282

1249:                                             ; preds = %1240
  %1250 = load ptr, ptr @vn_ssa_aux_table, align 8
  %1251 = load i32, ptr %1196, align 8, !tbaa !199
  %1252 = zext i32 %1251 to i64
  %1253 = getelementptr inbounds %struct.VEC_vn_ssa_aux_t_base, ptr %1250, i64 0, i32 2, i64 %1252
  %1254 = load ptr, ptr %1253, align 8, !tbaa !188
  %1255 = icmp eq ptr %1254, null
  br i1 %1255, label %1256, label %1257, !prof !715

1256:                                             ; preds = %1249
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 180, ptr noundef nonnull @.str.1) #23
  br label %1257

1257:                                             ; preds = %1256, %1249
  %1258 = load ptr, ptr %1254, align 8, !tbaa !227
  %1259 = load ptr, ptr @VN_TOP, align 8, !tbaa !188
  %1260 = icmp eq ptr %1258, %1259
  br i1 %1260, label %1282, label %1261, !prof !715

1261:                                             ; preds = %1257
  %1262 = load ptr, ptr @vn_ssa_aux_table, align 8
  %1263 = load i32, ptr %1196, align 8, !tbaa !199
  %1264 = zext i32 %1263 to i64
  %1265 = getelementptr inbounds %struct.VEC_vn_ssa_aux_t_base, ptr %1262, i64 0, i32 2, i64 %1264
  %1266 = load ptr, ptr %1265, align 8, !tbaa !188
  %1267 = icmp eq ptr %1266, null
  br i1 %1267, label %1268, label %1269, !prof !715

1268:                                             ; preds = %1261
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 180, ptr noundef nonnull @.str.1) #23
  br label %1269

1269:                                             ; preds = %1268, %1261
  %1270 = load ptr, ptr %1266, align 8, !tbaa !227
  %1271 = icmp eq ptr %1270, %1167
  br i1 %1271, label %1282, label %1272, !prof !716

1272:                                             ; preds = %1269
  %1273 = load ptr, ptr @vn_ssa_aux_table, align 8
  %1274 = load i32, ptr %1196, align 8, !tbaa !199
  %1275 = zext i32 %1274 to i64
  %1276 = getelementptr inbounds %struct.VEC_vn_ssa_aux_t_base, ptr %1273, i64 0, i32 2, i64 %1275
  %1277 = load ptr, ptr %1276, align 8, !tbaa !188
  %1278 = icmp eq ptr %1277, null
  br i1 %1278, label %1279, label %1280, !prof !717

1279:                                             ; preds = %1272
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 180, ptr noundef nonnull @.str.1) #23
  br label %1280

1280:                                             ; preds = %1279, %1272
  %1281 = load ptr, ptr %1277, align 8, !tbaa !227
  br label %1282

1282:                                             ; preds = %1280, %1269, %1257, %1246, %1189
  %1283 = phi ptr [ %1247, %1246 ], [ %1281, %1280 ], [ %1167, %1269 ], [ %1167, %1257 ], [ %1167, %1189 ]
  %1284 = load i64, ptr %1190, align 8
  %1285 = and i64 %1284, 65535
  %1286 = icmp eq i64 %1285, 141
  br i1 %1286, label %1287, label %1337, !prof !718

1287:                                             ; preds = %1282
  %1288 = load ptr, ptr @vn_ssa_aux_table, align 8
  %1289 = getelementptr inbounds %struct.tree_ssa_name, ptr %1190, i64 0, i32 3
  %1290 = load i32, ptr %1289, align 8, !tbaa !199
  %1291 = zext i32 %1290 to i64
  %1292 = getelementptr inbounds %struct.VEC_vn_ssa_aux_t_base, ptr %1288, i64 0, i32 2, i64 %1291
  %1293 = load ptr, ptr %1292, align 8, !tbaa !188
  %1294 = icmp eq ptr %1293, null
  br i1 %1294, label %1295, label %1296, !prof !719

1295:                                             ; preds = %1287
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 180, ptr noundef nonnull @.str.1) #23
  br label %1296

1296:                                             ; preds = %1295, %1287
  %1297 = getelementptr inbounds %struct.vn_ssa_aux, ptr %1293, i64 0, i32 5
  %1298 = load i8, ptr %1297, align 4
  %1299 = and i8 %1298, 4
  %1300 = icmp eq i8 %1299, 0
  br i1 %1300, label %1304, label %1301, !prof !720

1301:                                             ; preds = %1296
  %1302 = tail call ptr @vn_get_expr_for(ptr noundef nonnull %1190)
  %1303 = tail call fastcc ptr @valueize_expr(ptr noundef %1302)
  br label %1337

1304:                                             ; preds = %1296
  %1305 = load ptr, ptr @vn_ssa_aux_table, align 8
  %1306 = load i32, ptr %1289, align 8, !tbaa !199
  %1307 = zext i32 %1306 to i64
  %1308 = getelementptr inbounds %struct.VEC_vn_ssa_aux_t_base, ptr %1305, i64 0, i32 2, i64 %1307
  %1309 = load ptr, ptr %1308, align 8, !tbaa !188
  %1310 = icmp eq ptr %1309, null
  br i1 %1310, label %1311, label %1312, !prof !721

1311:                                             ; preds = %1304
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 180, ptr noundef nonnull @.str.1) #23
  br label %1312

1312:                                             ; preds = %1311, %1304
  %1313 = load ptr, ptr %1309, align 8, !tbaa !227
  %1314 = load ptr, ptr @VN_TOP, align 8, !tbaa !188
  %1315 = icmp eq ptr %1313, %1314
  br i1 %1315, label %1337, label %1316, !prof !721

1316:                                             ; preds = %1312
  %1317 = load ptr, ptr @vn_ssa_aux_table, align 8
  %1318 = load i32, ptr %1289, align 8, !tbaa !199
  %1319 = zext i32 %1318 to i64
  %1320 = getelementptr inbounds %struct.VEC_vn_ssa_aux_t_base, ptr %1317, i64 0, i32 2, i64 %1319
  %1321 = load ptr, ptr %1320, align 8, !tbaa !188
  %1322 = icmp eq ptr %1321, null
  br i1 %1322, label %1323, label %1324, !prof !721

1323:                                             ; preds = %1316
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 180, ptr noundef nonnull @.str.1) #23
  br label %1324

1324:                                             ; preds = %1323, %1316
  %1325 = load ptr, ptr %1321, align 8, !tbaa !227
  %1326 = icmp eq ptr %1325, %1190
  br i1 %1326, label %1337, label %1327, !prof !722

1327:                                             ; preds = %1324
  %1328 = load ptr, ptr @vn_ssa_aux_table, align 8
  %1329 = load i32, ptr %1289, align 8, !tbaa !199
  %1330 = zext i32 %1329 to i64
  %1331 = getelementptr inbounds %struct.VEC_vn_ssa_aux_t_base, ptr %1328, i64 0, i32 2, i64 %1330
  %1332 = load ptr, ptr %1331, align 8, !tbaa !188
  %1333 = icmp eq ptr %1332, null
  br i1 %1333, label %1334, label %1335, !prof !723

1334:                                             ; preds = %1327
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 180, ptr noundef nonnull @.str.1) #23
  br label %1335

1335:                                             ; preds = %1334, %1327
  %1336 = load ptr, ptr %1332, align 8, !tbaa !227
  br label %1337

1337:                                             ; preds = %1335, %1324, %1312, %1301, %1282
  %1338 = phi ptr [ %1302, %1301 ], [ %1336, %1335 ], [ %1190, %1324 ], [ %1190, %1312 ], [ %1190, %1282 ]
  %1339 = load i32, ptr %5, align 8
  %1340 = and i32 %1339, 255
  %1341 = add nsw i32 %1340, -10
  %1342 = icmp ult i32 %1341, -9
  br i1 %1342, label %1356, label %1343, !prof !707

1343:                                             ; preds = %1337
  %1344 = zext nneg i32 %1340 to i64
  %1345 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %1344
  %1346 = load i32, ptr %1345, align 4, !tbaa !203
  %1347 = zext i32 %1346 to i64
  %1348 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %1347
  %1349 = load i64, ptr %1348, align 8, !tbaa !235
  %1350 = icmp eq i64 %1349, 0
  br i1 %1350, label %1351, label %1352, !prof !707

1351:                                             ; preds = %1343
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 1622, ptr noundef nonnull @.str.1) #23
  br label %1352

1352:                                             ; preds = %1351, %1343
  %1353 = getelementptr inbounds i8, ptr %5, i64 %1349
  %1354 = getelementptr inbounds ptr, ptr %1353, i64 1
  %1355 = load ptr, ptr %1354, align 8, !tbaa !188
  br label %1356

1356:                                             ; preds = %1352, %1337
  %1357 = phi ptr [ %1355, %1352 ], [ null, %1337 ]
  %1358 = icmp eq ptr %1283, %1357
  br i1 %1358, label %1359, label %1383, !prof !724

1359:                                             ; preds = %1356
  %1360 = load i32, ptr %1168, align 4, !tbaa !199
  %1361 = icmp ugt i32 %1360, 2
  br i1 %1361, label %1362, label %1380, !prof !725

1362:                                             ; preds = %1359
  %1363 = load i32, ptr %5, align 8
  %1364 = and i32 %1363, 255
  %1365 = add nsw i32 %1364, -10
  %1366 = icmp ult i32 %1365, -9
  br i1 %1366, label %1380, label %1367, !prof !726

1367:                                             ; preds = %1362
  %1368 = zext nneg i32 %1364 to i64
  %1369 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %1368
  %1370 = load i32, ptr %1369, align 4, !tbaa !203
  %1371 = zext i32 %1370 to i64
  %1372 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %1371
  %1373 = load i64, ptr %1372, align 8, !tbaa !235
  %1374 = icmp eq i64 %1373, 0
  br i1 %1374, label %1375, label %1376, !prof !726

1375:                                             ; preds = %1367
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 1622, ptr noundef nonnull @.str.1) #23
  br label %1376

1376:                                             ; preds = %1375, %1367
  %1377 = getelementptr inbounds i8, ptr %5, i64 %1373
  %1378 = getelementptr inbounds ptr, ptr %1377, i64 2
  %1379 = load ptr, ptr %1378, align 8, !tbaa !188
  br label %1380

1380:                                             ; preds = %1376, %1362, %1359
  %1381 = phi ptr [ null, %1359 ], [ %1379, %1376 ], [ null, %1362 ]
  %1382 = icmp eq ptr %1338, %1381
  br i1 %1382, label %1434, label %1383, !prof !727

1383:                                             ; preds = %1380, %1356
  tail call void @fold_defer_overflow_warnings() #23
  %1384 = load i32, ptr %5, align 8
  %1385 = trunc i32 %1384 to i8
  switch i8 %1385, label %1388 [
    i8 6, label %1386
    i8 1, label %1386
    i8 8, label %1389
  ], !prof !728

1386:                                             ; preds = %1383, %1383
  %1387 = lshr i32 %1384, 16
  br label %1389

1388:                                             ; preds = %1383
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 1446, ptr noundef nonnull @.str.1) #23
  br label %1389

1389:                                             ; preds = %1388, %1386, %1383
  %1390 = phi i32 [ %1387, %1386 ], [ 0, %1388 ], [ 59, %1383 ]
  %1391 = zext nneg i32 %1390 to i64
  %1392 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %1391
  %1393 = load i8, ptr %1392, align 1, !tbaa !199
  %1394 = icmp eq i8 %1393, 3
  br i1 %1394, label %1395, label %1415, !prof !729

1395:                                             ; preds = %1389
  %1396 = load i32, ptr %5, align 8
  %1397 = and i32 %1396, 255
  %1398 = add nsw i32 %1397, -1
  %1399 = icmp ult i32 %1398, 9
  tail call void @llvm.assume(i1 %1399)
  %1400 = zext nneg i32 %1397 to i64
  %1401 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %1400
  %1402 = load i32, ptr %1401, align 4, !tbaa !203
  %1403 = zext i32 %1402 to i64
  %1404 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %1403
  %1405 = load i64, ptr %1404, align 8, !tbaa !235
  %1406 = icmp eq i64 %1405, 0
  br i1 %1406, label %1407, label %1408

1407:                                             ; preds = %1395
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 1622, ptr noundef nonnull @.str.1) #23
  br label %1408

1408:                                             ; preds = %1407, %1395
  %1409 = getelementptr inbounds i8, ptr %5, i64 %1405
  %1410 = getelementptr inbounds ptr, ptr %1409, i64 1
  %1411 = load ptr, ptr %1410, align 8, !tbaa !188
  %1412 = load i64, ptr %1411, align 8
  %1413 = trunc i64 %1412 to i32
  %1414 = and i32 %1413, 65535
  br label %1415

1415:                                             ; preds = %1408, %1389
  %1416 = phi i32 [ %1414, %1408 ], [ %1390, %1389 ]
  %1417 = tail call fastcc ptr @gimple_expr_type(ptr noundef nonnull %5)
  %1418 = tail call ptr @fold_binary_loc(i32 noundef 0, i32 noundef %1416, ptr noundef %1417, ptr noundef %1283, ptr noundef %1338) #23
  %1419 = icmp eq ptr %1418, null
  br i1 %1419, label %1422, label %1420, !prof !730

1420:                                             ; preds = %1415
  %1421 = tail call ptr @tree_ssa_strip_useless_type_conversions(ptr noundef nonnull %1418) #23
  br label %1422

1422:                                             ; preds = %1420, %1415
  %1423 = phi ptr [ %1421, %1420 ], [ null, %1415 ]
  %1424 = icmp eq ptr %1423, null
  br i1 %1424, label %1431, label %1425, !prof !730

1425:                                             ; preds = %1422
  %1426 = tail call zeroext i8 @valid_gimple_rhs_p(ptr noundef nonnull %1423) #23
  %1427 = icmp ne i8 %1426, 0
  %1428 = zext i1 %1427 to i8
  tail call void @fold_undefer_overflow_warnings(i8 noundef zeroext %1428, ptr noundef nonnull %5, i32 noundef 0) #23
  %1429 = tail call zeroext i8 @valid_gimple_rhs_p(ptr noundef nonnull %1423) #23
  %1430 = icmp eq i8 %1429, 0
  br i1 %1430, label %1432, label %1434, !prof !731

1431:                                             ; preds = %1422
  tail call void @fold_undefer_overflow_warnings(i8 noundef zeroext 0, ptr noundef nonnull %5, i32 noundef 0) #23
  br label %1432

1432:                                             ; preds = %1431, %1425
  br label %1434

1433:                                             ; preds = %789, %710, %687
  br label %1434

1434:                                             ; preds = %648, %710, %732, %923, %1103, %1143, %1147, %1380, %1425, %1432, %1433
  %1435 = phi ptr [ null, %1433 ], [ null, %648 ], [ %712, %710 ], [ %734, %732 ], [ null, %1147 ], [ null, %923 ], [ null, %1103 ], [ %1144, %1143 ], [ null, %1432 ], [ %1423, %1425 ], [ null, %1380 ]
  %1436 = icmp ne ptr %1435, null
  %1437 = load ptr, ptr @dump_file, align 8
  %1438 = icmp ne ptr %1437, null
  %1439 = select i1 %1436, i1 %1438, i1 false, !prof !732
  br i1 %1439, label %1440, label %1460, !prof !733

1440:                                             ; preds = %1434
  %1441 = load i32, ptr @dump_flags, align 4, !tbaa !203
  %1442 = and i32 %1441, 8
  %1443 = icmp eq i32 %1442, 0
  br i1 %1443, label %1460, label %1444

1444:                                             ; preds = %1440
  %1445 = tail call i64 @fwrite(ptr nonnull @.str.16, i64 4, i64 1, ptr nonnull %1437)
  %1446 = load ptr, ptr @dump_file, align 8, !tbaa !188
  tail call void @print_gimple_expr(ptr noundef %1446, ptr noundef %5, i32 noundef 0, i32 noundef 0) #23
  %1447 = load ptr, ptr @dump_file, align 8, !tbaa !188
  %1448 = tail call i64 @fwrite(ptr nonnull @.str.17, i64 15, i64 1, ptr %1447)
  %1449 = load ptr, ptr @dump_file, align 8, !tbaa !188
  tail call void @print_generic_expr(ptr noundef %1449, ptr noundef nonnull %1435, i32 noundef 0) #23
  %1450 = load i64, ptr %584, align 8
  %1451 = and i64 %1450, 65535
  %1452 = icmp eq i64 %1451, 141
  %1453 = load ptr, ptr @dump_file, align 8, !tbaa !188
  br i1 %1452, label %1454, label %1458

1454:                                             ; preds = %1444
  %1455 = tail call fastcc zeroext i8 @expr_has_constants(ptr noundef nonnull %1435)
  %1456 = zext i8 %1455 to i32
  %1457 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1453, ptr noundef nonnull @.str.18, i32 noundef %1456)
  br label %1460

1458:                                             ; preds = %1444
  %1459 = tail call i32 @fputc(i32 10, ptr %1453)
  br label %1460

1460:                                             ; preds = %1440, %1458, %1454, %1434
  br i1 %1436, label %1461, label %1552, !prof !732

1461:                                             ; preds = %1460
  %1462 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef nonnull %1435) #23
  %1463 = icmp eq i8 %1462, 0
  br i1 %1463, label %1491, label %1464, !prof !734

1464:                                             ; preds = %1461
  %1465 = load i64, ptr %584, align 8
  %1466 = and i64 %1465, 65535
  %1467 = icmp eq i64 %1466, 141
  br i1 %1467, label %1468, label %1491

1468:                                             ; preds = %1464
  %1469 = load ptr, ptr @vn_ssa_aux_table, align 8
  %1470 = getelementptr inbounds %struct.tree_ssa_name, ptr %584, i64 0, i32 3
  %1471 = load i32, ptr %1470, align 8, !tbaa !199
  %1472 = zext i32 %1471 to i64
  %1473 = getelementptr inbounds %struct.VEC_vn_ssa_aux_t_base, ptr %1469, i64 0, i32 2, i64 %1472
  %1474 = load ptr, ptr %1473, align 8, !tbaa !188
  %1475 = icmp eq ptr %1474, null
  br i1 %1475, label %1476, label %1477

1476:                                             ; preds = %1468
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 180, ptr noundef nonnull @.str.1) #23
  br label %1477

1477:                                             ; preds = %1468, %1476
  %1478 = getelementptr inbounds %struct.vn_ssa_aux, ptr %1474, i64 0, i32 1
  store ptr %1435, ptr %1478, align 8, !tbaa !230
  %1479 = load ptr, ptr @vn_ssa_aux_table, align 8
  %1480 = load i32, ptr %1470, align 8, !tbaa !199
  %1481 = zext i32 %1480 to i64
  %1482 = getelementptr inbounds %struct.VEC_vn_ssa_aux_t_base, ptr %1479, i64 0, i32 2, i64 %1481
  %1483 = load ptr, ptr %1482, align 8, !tbaa !188
  %1484 = icmp eq ptr %1483, null
  br i1 %1484, label %1485, label %1486

1485:                                             ; preds = %1477
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 180, ptr noundef nonnull @.str.1) #23
  br label %1486

1486:                                             ; preds = %1477, %1485
  %1487 = getelementptr inbounds %struct.vn_ssa_aux, ptr %1483, i64 0, i32 5
  %1488 = load i8, ptr %1487, align 4
  %1489 = or i8 %1488, 4
  store i8 %1489, ptr %1487, align 4
  %1490 = tail call fastcc zeroext i8 @set_ssa_val_to(ptr noundef nonnull %584, ptr noundef nonnull %1435), !range !351
  br label %2984

1491:                                             ; preds = %1461, %1464
  %1492 = load i64, ptr %1435, align 8
  %1493 = and i64 %1492, 65535
  %1494 = icmp eq i64 %1493, 141
  br i1 %1494, label %1495, label %1501, !prof !735

1495:                                             ; preds = %1491
  %1496 = load i64, ptr %584, align 8
  %1497 = and i64 %1496, 65535
  %1498 = icmp eq i64 %1497, 141
  br i1 %1498, label %1499, label %1501

1499:                                             ; preds = %1495
  %1500 = tail call fastcc zeroext i8 @visit_copy(ptr noundef nonnull %584, ptr noundef nonnull %1435), !range !351
  br label %2984

1501:                                             ; preds = %1491, %1495
  %1502 = load i64, ptr %584, align 8
  %1503 = and i64 %1502, 65535
  %1504 = icmp eq i64 %1503, 141
  br i1 %1504, label %1505, label %1721, !prof !734

1505:                                             ; preds = %1501
  %1506 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %1493
  %1507 = load i32, ptr %1506, align 4, !tbaa !203
  switch i32 %1507, label %1523 [
    i32 6, label %1508
    i32 7, label %1512
    i32 4, label %1525
    i32 3, label %1525
  ], !prof !736

1508:                                             ; preds = %1505
  %1509 = getelementptr inbounds %struct.tree_exp, ptr %1435, i64 0, i32 3
  %1510 = load ptr, ptr %1509, align 8, !tbaa !199
  %1511 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef %1510) #23
  br label %1525

1512:                                             ; preds = %1505
  %1513 = getelementptr inbounds %struct.tree_exp, ptr %1435, i64 0, i32 3
  %1514 = load ptr, ptr %1513, align 8, !tbaa !199
  %1515 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef %1514) #23
  %1516 = icmp eq i8 %1515, 0
  br i1 %1516, label %1517, label %1525, !prof !734

1517:                                             ; preds = %1512
  %1518 = getelementptr inbounds %struct.tree_exp, ptr %1435, i64 1
  %1519 = load ptr, ptr %1518, align 8, !tbaa !199
  %1520 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef %1519) #23
  %1521 = icmp ne i8 %1520, 0
  %1522 = zext i1 %1521 to i8
  br label %1525

1523:                                             ; preds = %1505
  %1524 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef nonnull %1435) #23
  br label %1525

1525:                                             ; preds = %1505, %1505, %1508, %1512, %1517, %1523
  %1526 = phi i8 [ %1524, %1523 ], [ %1511, %1508 ], [ 1, %1512 ], [ %1522, %1517 ], [ 0, %1505 ], [ 0, %1505 ]
  %1527 = load ptr, ptr @vn_ssa_aux_table, align 8
  %1528 = getelementptr inbounds %struct.tree_ssa_name, ptr %584, i64 0, i32 3
  %1529 = load i32, ptr %1528, align 8, !tbaa !199
  %1530 = zext i32 %1529 to i64
  %1531 = getelementptr inbounds %struct.VEC_vn_ssa_aux_t_base, ptr %1527, i64 0, i32 2, i64 %1530
  %1532 = load ptr, ptr %1531, align 8, !tbaa !188
  %1533 = icmp eq ptr %1532, null
  br i1 %1533, label %1534, label %1535, !prof !735

1534:                                             ; preds = %1525
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 180, ptr noundef nonnull @.str.1) #23
  br label %1535

1535:                                             ; preds = %1525, %1534
  %1536 = getelementptr inbounds %struct.vn_ssa_aux, ptr %1532, i64 0, i32 5
  %1537 = load i8, ptr %1536, align 4
  %1538 = shl i8 %1526, 2
  %1539 = and i8 %1538, 4
  %1540 = and i8 %1537, -5
  %1541 = or disjoint i8 %1540, %1539
  store i8 %1541, ptr %1536, align 4
  %1542 = tail call ptr @unshare_expr(ptr noundef nonnull %1435) #23
  %1543 = load ptr, ptr @vn_ssa_aux_table, align 8
  %1544 = load i32, ptr %1528, align 8, !tbaa !199
  %1545 = zext i32 %1544 to i64
  %1546 = getelementptr inbounds %struct.VEC_vn_ssa_aux_t_base, ptr %1543, i64 0, i32 2, i64 %1545
  %1547 = load ptr, ptr %1546, align 8, !tbaa !188
  %1548 = icmp eq ptr %1547, null
  br i1 %1548, label %1549, label %1550, !prof !735

1549:                                             ; preds = %1535
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 180, ptr noundef nonnull @.str.1) #23
  br label %1550

1550:                                             ; preds = %1535, %1549
  %1551 = getelementptr inbounds %struct.vn_ssa_aux, ptr %1547, i64 0, i32 1
  store ptr %1542, ptr %1551, align 8, !tbaa !230
  br label %1721

1552:                                             ; preds = %1460
  %1553 = load i32, ptr %5, align 8
  %1554 = and i32 %1553, 255
  %1555 = icmp eq i32 %1554, 6
  br i1 %1555, label %1556, label %1675, !prof !737

1556:                                             ; preds = %1552
  %1557 = lshr i32 %1553, 16
  %1558 = zext nneg i32 %1557 to i64
  %1559 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %1558
  %1560 = load i8, ptr %1559, align 1, !tbaa !199
  %1561 = icmp eq i8 %1560, 3
  br i1 %1561, label %1562, label %1578, !prof !738

1562:                                             ; preds = %1556
  %1563 = zext nneg i32 %1554 to i64
  %1564 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %1563
  %1565 = load i32, ptr %1564, align 4, !tbaa !203
  %1566 = zext i32 %1565 to i64
  %1567 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %1566
  %1568 = load i64, ptr %1567, align 8, !tbaa !235
  %1569 = icmp eq i64 %1568, 0
  br i1 %1569, label %1570, label %1571, !prof !739

1570:                                             ; preds = %1562
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 1622, ptr noundef nonnull @.str.1) #23
  br label %1571

1571:                                             ; preds = %1570, %1562
  %1572 = getelementptr inbounds i8, ptr %5, i64 %1568
  %1573 = getelementptr inbounds ptr, ptr %1572, i64 1
  %1574 = load ptr, ptr %1573, align 8, !tbaa !188
  %1575 = load i64, ptr %1574, align 8
  %1576 = trunc i64 %1575 to i32
  %1577 = and i32 %1576, 65535
  br label %1578

1578:                                             ; preds = %1571, %1556
  %1579 = phi i32 [ %1577, %1571 ], [ %1557, %1556 ]
  %1580 = zext nneg i32 %1579 to i64
  %1581 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %1580
  %1582 = load i8, ptr %1581, align 1, !tbaa !199
  switch i8 %1582, label %1674 [
    i8 2, label %1583
    i8 1, label %1604
    i8 3, label %1653
  ], !prof !740

1583:                                             ; preds = %1578
  %1584 = load i32, ptr %5, align 8
  %1585 = and i32 %1584, 255
  %1586 = add nsw i32 %1585, -10
  %1587 = icmp ult i32 %1586, -9
  br i1 %1587, label %1601, label %1588, !prof !695

1588:                                             ; preds = %1583
  %1589 = zext nneg i32 %1585 to i64
  %1590 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %1589
  %1591 = load i32, ptr %1590, align 4, !tbaa !203
  %1592 = zext i32 %1591 to i64
  %1593 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %1592
  %1594 = load i64, ptr %1593, align 8, !tbaa !235
  %1595 = icmp eq i64 %1594, 0
  br i1 %1595, label %1596, label %1597, !prof !695

1596:                                             ; preds = %1588
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 1622, ptr noundef nonnull @.str.1) #23
  br label %1597

1597:                                             ; preds = %1596, %1588
  %1598 = getelementptr inbounds i8, ptr %5, i64 %1594
  %1599 = getelementptr inbounds ptr, ptr %1598, i64 1
  %1600 = load ptr, ptr %1599, align 8, !tbaa !188
  br label %1601

1601:                                             ; preds = %1597, %1583
  %1602 = phi ptr [ %1600, %1597 ], [ null, %1583 ]
  %1603 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef %1602) #23
  br label %1675

1604:                                             ; preds = %1578
  %1605 = load i32, ptr %5, align 8
  %1606 = and i32 %1605, 255
  %1607 = add nsw i32 %1606, -10
  %1608 = icmp ult i32 %1607, -9
  br i1 %1608, label %1622, label %1609, !prof !741

1609:                                             ; preds = %1604
  %1610 = zext nneg i32 %1606 to i64
  %1611 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %1610
  %1612 = load i32, ptr %1611, align 4, !tbaa !203
  %1613 = zext i32 %1612 to i64
  %1614 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %1613
  %1615 = load i64, ptr %1614, align 8, !tbaa !235
  %1616 = icmp eq i64 %1615, 0
  br i1 %1616, label %1617, label %1618, !prof !741

1617:                                             ; preds = %1609
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 1622, ptr noundef nonnull @.str.1) #23
  br label %1618

1618:                                             ; preds = %1617, %1609
  %1619 = getelementptr inbounds i8, ptr %5, i64 %1615
  %1620 = getelementptr inbounds ptr, ptr %1619, i64 1
  %1621 = load ptr, ptr %1620, align 8, !tbaa !188
  br label %1622

1622:                                             ; preds = %1618, %1604
  %1623 = phi ptr [ %1621, %1618 ], [ null, %1604 ]
  %1624 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef %1623) #23
  %1625 = icmp eq i8 %1624, 0
  br i1 %1625, label %1626, label %1675, !prof !742

1626:                                             ; preds = %1622
  %1627 = getelementptr inbounds %struct.gimple_statement_base, ptr %5, i64 0, i32 3
  %1628 = load i32, ptr %1627, align 4, !tbaa !199
  %1629 = icmp ugt i32 %1628, 2
  br i1 %1629, label %1630, label %1648, !prof !743

1630:                                             ; preds = %1626
  %1631 = load i32, ptr %5, align 8
  %1632 = and i32 %1631, 255
  %1633 = add nsw i32 %1632, -10
  %1634 = icmp ult i32 %1633, -9
  br i1 %1634, label %1648, label %1635, !prof !744

1635:                                             ; preds = %1630
  %1636 = zext nneg i32 %1632 to i64
  %1637 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %1636
  %1638 = load i32, ptr %1637, align 4, !tbaa !203
  %1639 = zext i32 %1638 to i64
  %1640 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %1639
  %1641 = load i64, ptr %1640, align 8, !tbaa !235
  %1642 = icmp eq i64 %1641, 0
  br i1 %1642, label %1643, label %1644, !prof !744

1643:                                             ; preds = %1635
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 1622, ptr noundef nonnull @.str.1) #23
  br label %1644

1644:                                             ; preds = %1643, %1635
  %1645 = getelementptr inbounds i8, ptr %5, i64 %1641
  %1646 = getelementptr inbounds ptr, ptr %1645, i64 2
  %1647 = load ptr, ptr %1646, align 8, !tbaa !188
  br label %1648

1648:                                             ; preds = %1644, %1630, %1626
  %1649 = phi ptr [ null, %1626 ], [ %1647, %1644 ], [ null, %1630 ]
  %1650 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef %1649) #23
  %1651 = icmp ne i8 %1650, 0
  %1652 = zext i1 %1651 to i8
  br label %1675

1653:                                             ; preds = %1578
  %1654 = load i32, ptr %5, align 8
  %1655 = and i32 %1654, 255
  %1656 = add nsw i32 %1655, -10
  %1657 = icmp ult i32 %1656, -9
  br i1 %1657, label %1671, label %1658, !prof !739

1658:                                             ; preds = %1653
  %1659 = zext nneg i32 %1655 to i64
  %1660 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %1659
  %1661 = load i32, ptr %1660, align 4, !tbaa !203
  %1662 = zext i32 %1661 to i64
  %1663 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %1662
  %1664 = load i64, ptr %1663, align 8, !tbaa !235
  %1665 = icmp eq i64 %1664, 0
  br i1 %1665, label %1666, label %1667, !prof !739

1666:                                             ; preds = %1658
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 1622, ptr noundef nonnull @.str.1) #23
  br label %1667

1667:                                             ; preds = %1666, %1658
  %1668 = getelementptr inbounds i8, ptr %5, i64 %1664
  %1669 = getelementptr inbounds ptr, ptr %1668, i64 1
  %1670 = load ptr, ptr %1669, align 8, !tbaa !188
  br label %1671

1671:                                             ; preds = %1667, %1653
  %1672 = phi ptr [ %1670, %1667 ], [ null, %1653 ]
  %1673 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef %1672) #23
  br label %1675

1674:                                             ; preds = %1578
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2285, ptr noundef nonnull @.str.1) #23
  br label %1675

1675:                                             ; preds = %1552, %1601, %1622, %1648, %1671, %1674
  %1676 = phi i8 [ 0, %1674 ], [ %1673, %1671 ], [ %1603, %1601 ], [ 0, %1552 ], [ 1, %1622 ], [ %1652, %1648 ]
  %1677 = icmp eq i8 %1676, 0
  br i1 %1677, label %1695, label %1678, !prof !745

1678:                                             ; preds = %1675
  %1679 = load i64, ptr %584, align 8
  %1680 = and i64 %1679, 65535
  %1681 = icmp eq i64 %1680, 141
  br i1 %1681, label %1682, label %1695, !prof !746

1682:                                             ; preds = %1678
  %1683 = load ptr, ptr @vn_ssa_aux_table, align 8
  %1684 = getelementptr inbounds %struct.tree_ssa_name, ptr %584, i64 0, i32 3
  %1685 = load i32, ptr %1684, align 8, !tbaa !199
  %1686 = zext i32 %1685 to i64
  %1687 = getelementptr inbounds %struct.VEC_vn_ssa_aux_t_base, ptr %1683, i64 0, i32 2, i64 %1686
  %1688 = load ptr, ptr %1687, align 8, !tbaa !188
  %1689 = icmp eq ptr %1688, null
  br i1 %1689, label %1690, label %1691, !prof !747

1690:                                             ; preds = %1682
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 180, ptr noundef nonnull @.str.1) #23
  br label %1691

1691:                                             ; preds = %1682, %1690
  %1692 = getelementptr inbounds %struct.vn_ssa_aux, ptr %1688, i64 0, i32 5
  %1693 = load i8, ptr %1692, align 4
  %1694 = or i8 %1693, 4
  store i8 %1694, ptr %1692, align 4
  br label %1721

1695:                                             ; preds = %1678, %1675
  %1696 = load i64, ptr %584, align 8
  %1697 = and i64 %1696, 65535
  %1698 = icmp eq i64 %1697, 141
  br i1 %1698, label %1699, label %1721, !prof !748

1699:                                             ; preds = %1695
  %1700 = load ptr, ptr @vn_ssa_aux_table, align 8
  %1701 = getelementptr inbounds %struct.tree_ssa_name, ptr %584, i64 0, i32 3
  %1702 = load i32, ptr %1701, align 8, !tbaa !199
  %1703 = zext i32 %1702 to i64
  %1704 = getelementptr inbounds %struct.VEC_vn_ssa_aux_t_base, ptr %1700, i64 0, i32 2, i64 %1703
  %1705 = load ptr, ptr %1704, align 8, !tbaa !188
  %1706 = icmp eq ptr %1705, null
  br i1 %1706, label %1707, label %1708, !prof !749

1707:                                             ; preds = %1699
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 180, ptr noundef nonnull @.str.1) #23
  br label %1708

1708:                                             ; preds = %1699, %1707
  %1709 = getelementptr inbounds %struct.vn_ssa_aux, ptr %1705, i64 0, i32 5
  %1710 = load i8, ptr %1709, align 4
  %1711 = and i8 %1710, -5
  store i8 %1711, ptr %1709, align 4
  %1712 = load ptr, ptr @vn_ssa_aux_table, align 8
  %1713 = load i32, ptr %1701, align 8, !tbaa !199
  %1714 = zext i32 %1713 to i64
  %1715 = getelementptr inbounds %struct.VEC_vn_ssa_aux_t_base, ptr %1712, i64 0, i32 2, i64 %1714
  %1716 = load ptr, ptr %1715, align 8, !tbaa !188
  %1717 = icmp eq ptr %1716, null
  br i1 %1717, label %1718, label %1719, !prof !749

1718:                                             ; preds = %1708
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 180, ptr noundef nonnull @.str.1) #23
  br label %1719

1719:                                             ; preds = %1708, %1718
  %1720 = getelementptr inbounds %struct.vn_ssa_aux, ptr %1716, i64 0, i32 1
  store ptr null, ptr %1720, align 8, !tbaa !230
  br label %1721

1721:                                             ; preds = %1691, %1719, %1695, %1501, %1550
  %1722 = load i64, ptr %584, align 8
  %1723 = and i64 %1722, 65535
  %1724 = icmp eq i64 %1723, 141
  br i1 %1724, label %1725, label %1758, !prof !685

1725:                                             ; preds = %1721
  %1726 = tail call zeroext i8 @gimple_assign_copy_p(ptr noundef %5) #23
  %1727 = icmp eq i8 %1726, 0
  br i1 %1727, label %1750, label %1728, !prof !750

1728:                                             ; preds = %1725
  %1729 = load i32, ptr %5, align 8
  %1730 = and i32 %1729, 255
  %1731 = add nsw i32 %1730, -10
  %1732 = icmp ult i32 %1731, -9
  br i1 %1732, label %1746, label %1733

1733:                                             ; preds = %1728
  %1734 = zext nneg i32 %1730 to i64
  %1735 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %1734
  %1736 = load i32, ptr %1735, align 4, !tbaa !203
  %1737 = zext i32 %1736 to i64
  %1738 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %1737
  %1739 = load i64, ptr %1738, align 8, !tbaa !235
  %1740 = icmp eq i64 %1739, 0
  br i1 %1740, label %1741, label %1742

1741:                                             ; preds = %1733
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 1622, ptr noundef nonnull @.str.1) #23
  br label %1742

1742:                                             ; preds = %1741, %1733
  %1743 = getelementptr inbounds i8, ptr %5, i64 %1739
  %1744 = getelementptr inbounds ptr, ptr %1743, i64 1
  %1745 = load ptr, ptr %1744, align 8, !tbaa !188
  br label %1746

1746:                                             ; preds = %1728, %1742
  %1747 = phi ptr [ %1745, %1742 ], [ null, %1728 ]
  %1748 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef %1747) #23
  %1749 = icmp eq i8 %1748, 0
  br i1 %1749, label %1750, label %1758

1750:                                             ; preds = %1746, %1725
  br i1 %1436, label %1751, label %1754, !prof !751

1751:                                             ; preds = %1750
  %1752 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef nonnull %1435) #23
  %1753 = icmp eq i8 %1752, 0
  br i1 %1753, label %1754, label %1758, !prof !734

1754:                                             ; preds = %1751, %1750
  %1755 = load i64, ptr %584, align 8
  %1756 = and i64 %1755, 4194304
  %1757 = icmp eq i64 %1756, 0
  br i1 %1757, label %1758, label %1801, !prof !750

1758:                                             ; preds = %1754, %1751, %1746, %1721
  %1759 = tail call zeroext i8 @gimple_assign_single_p(ptr noundef %5) #23
  %1760 = icmp eq i8 %1759, 0
  br i1 %1760, label %1803, label %1761, !prof !752

1761:                                             ; preds = %1758
  %1762 = load i32, ptr %5, align 8
  %1763 = and i32 %1762, 255
  %1764 = add nsw i32 %1763, -1
  %1765 = icmp ult i32 %1764, 9
  tail call void @llvm.assume(i1 %1765)
  %1766 = zext nneg i32 %1763 to i64
  %1767 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %1766
  %1768 = load i32, ptr %1767, align 4, !tbaa !203
  %1769 = zext i32 %1768 to i64
  %1770 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %1769
  %1771 = load i64, ptr %1770, align 8, !tbaa !235
  %1772 = icmp eq i64 %1771, 0
  br i1 %1772, label %1773, label %1774, !prof !739

1773:                                             ; preds = %1761
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 1622, ptr noundef nonnull @.str.1) #23
  br label %1774

1774:                                             ; preds = %1773, %1761
  %1775 = getelementptr inbounds i8, ptr %5, i64 %1771
  %1776 = getelementptr inbounds ptr, ptr %1775, i64 1
  %1777 = load ptr, ptr %1776, align 8, !tbaa !188
  %1778 = load i64, ptr %1777, align 8
  %1779 = and i64 %1778, 65535
  %1780 = icmp eq i64 %1779, 141
  br i1 %1780, label %1781, label %1803, !prof !753

1781:                                             ; preds = %1774
  %1782 = load i32, ptr %5, align 8
  %1783 = and i32 %1782, 255
  %1784 = add nsw i32 %1783, -1
  %1785 = icmp ult i32 %1784, 9
  tail call void @llvm.assume(i1 %1785)
  %1786 = zext nneg i32 %1783 to i64
  %1787 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %1786
  %1788 = load i32, ptr %1787, align 4, !tbaa !203
  %1789 = zext i32 %1788 to i64
  %1790 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %1789
  %1791 = load i64, ptr %1790, align 8, !tbaa !235
  %1792 = icmp eq i64 %1791, 0
  br i1 %1792, label %1793, label %1794, !prof !684

1793:                                             ; preds = %1781
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 1622, ptr noundef nonnull @.str.1) #23
  br label %1794

1794:                                             ; preds = %1793, %1781
  %1795 = getelementptr inbounds i8, ptr %5, i64 %1791
  %1796 = getelementptr inbounds ptr, ptr %1795, i64 1
  %1797 = load ptr, ptr %1796, align 8, !tbaa !188
  %1798 = load i64, ptr %1797, align 8
  %1799 = and i64 %1798, 4194304
  %1800 = icmp eq i64 %1799, 0
  br i1 %1800, label %1803, label %1801, !prof !686

1801:                                             ; preds = %1754, %1794
  %1802 = tail call fastcc zeroext i8 @defs_to_varying(ptr noundef %5), !range !351
  br label %2984

1803:                                             ; preds = %1794, %1774, %1758
  %1804 = load i64, ptr %584, align 8
  %1805 = and i64 %1804, 65535
  %1806 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %1805
  %1807 = load i32, ptr %1806, align 4, !tbaa !203
  %1808 = add i32 %1807, -3
  %1809 = icmp ult i32 %1808, 2
  br i1 %1809, label %1810, label %1977, !prof !754

1810:                                             ; preds = %1803
  %1811 = load i32, ptr %5, align 8
  %1812 = and i32 %1811, 255
  %1813 = add nsw i32 %1812, -10
  %1814 = icmp ult i32 %1813, -9
  br i1 %1814, label %1828, label %1815, !prof !684

1815:                                             ; preds = %1810
  %1816 = zext nneg i32 %1812 to i64
  %1817 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %1816
  %1818 = load i32, ptr %1817, align 4, !tbaa !203
  %1819 = zext i32 %1818 to i64
  %1820 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %1819
  %1821 = load i64, ptr %1820, align 8, !tbaa !235
  %1822 = icmp eq i64 %1821, 0
  br i1 %1822, label %1823, label %1824, !prof !684

1823:                                             ; preds = %1815
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 1622, ptr noundef nonnull @.str.1) #23
  br label %1824

1824:                                             ; preds = %1823, %1815
  %1825 = getelementptr inbounds i8, ptr %5, i64 %1821
  %1826 = getelementptr inbounds ptr, ptr %1825, i64 1
  %1827 = load ptr, ptr %1826, align 8, !tbaa !188
  br label %1828

1828:                                             ; preds = %1810, %1824
  %1829 = phi ptr [ %1827, %1824 ], [ null, %1810 ]
  %1830 = load i32, ptr %5, align 8
  %1831 = and i32 %1830, 254
  %1832 = add nsw i32 %1831, -10
  %1833 = icmp ult i32 %1832, -4
  br i1 %1833, label %1837, label %1834, !prof !684

1834:                                             ; preds = %1828
  %1835 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %5, i64 0, i32 2
  %1836 = load ptr, ptr %1835, align 8, !tbaa !199
  br label %1837

1837:                                             ; preds = %1834, %1828
  %1838 = phi ptr [ %1836, %1834 ], [ null, %1828 ]
  %1839 = tail call ptr @vn_reference_lookup(ptr noundef nonnull %584, ptr noundef %1838, i8 noundef zeroext 0, ptr noundef null)
  %1840 = icmp eq ptr %1839, null
  br i1 %1840, label %1878, label %1841, !prof !686

1841:                                             ; preds = %1837
  %1842 = load i64, ptr %1839, align 8
  %1843 = and i64 %1842, 65535
  %1844 = icmp eq i64 %1843, 141
  br i1 %1844, label %1845, label %1856

1845:                                             ; preds = %1841
  %1846 = load ptr, ptr @vn_ssa_aux_table, align 8
  %1847 = getelementptr inbounds %struct.tree_ssa_name, ptr %1839, i64 0, i32 3
  %1848 = load i32, ptr %1847, align 8, !tbaa !199
  %1849 = zext i32 %1848 to i64
  %1850 = getelementptr inbounds %struct.VEC_vn_ssa_aux_t_base, ptr %1846, i64 0, i32 2, i64 %1849
  %1851 = load ptr, ptr %1850, align 8, !tbaa !188
  %1852 = icmp eq ptr %1851, null
  br i1 %1852, label %1853, label %1854

1853:                                             ; preds = %1845
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 180, ptr noundef nonnull @.str.1) #23
  br label %1854

1854:                                             ; preds = %1853, %1845
  %1855 = load ptr, ptr %1851, align 8, !tbaa !227
  br label %1856

1856:                                             ; preds = %1854, %1841
  %1857 = phi ptr [ %1855, %1854 ], [ %1839, %1841 ]
  %1858 = load i64, ptr %1829, align 8
  %1859 = and i64 %1858, 65535
  %1860 = icmp eq i64 %1859, 141
  br i1 %1860, label %1861, label %1872

1861:                                             ; preds = %1856
  %1862 = load ptr, ptr @vn_ssa_aux_table, align 8
  %1863 = getelementptr inbounds %struct.tree_ssa_name, ptr %1829, i64 0, i32 3
  %1864 = load i32, ptr %1863, align 8, !tbaa !199
  %1865 = zext i32 %1864 to i64
  %1866 = getelementptr inbounds %struct.VEC_vn_ssa_aux_t_base, ptr %1862, i64 0, i32 2, i64 %1865
  %1867 = load ptr, ptr %1866, align 8, !tbaa !188
  %1868 = icmp eq ptr %1867, null
  br i1 %1868, label %1869, label %1870

1869:                                             ; preds = %1861
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 180, ptr noundef nonnull @.str.1) #23
  br label %1870

1870:                                             ; preds = %1869, %1861
  %1871 = load ptr, ptr %1867, align 8, !tbaa !227
  br label %1872

1872:                                             ; preds = %1870, %1856
  %1873 = phi ptr [ %1871, %1870 ], [ %1829, %1856 ]
  %1874 = tail call zeroext i8 @expressions_equal_p(ptr noundef %1857, ptr noundef %1873), !range !351
  %1875 = icmp ne ptr %1857, null
  %1876 = icmp ne i8 %1874, 0
  %1877 = and i1 %1875, %1876
  br label %1878

1878:                                             ; preds = %1872, %1837
  %1879 = phi i1 [ %1877, %1872 ], [ false, %1837 ]
  %1880 = phi ptr [ %1873, %1872 ], [ %1829, %1837 ]
  %1881 = load ptr, ptr @dump_file, align 8, !tbaa !188
  %1882 = icmp eq ptr %1881, null
  br i1 %1879, label %1932, label %1883, !prof !684

1883:                                             ; preds = %1878
  br i1 %1882, label %1898, label %1884, !prof !686

1884:                                             ; preds = %1883
  %1885 = load i32, ptr @dump_flags, align 4, !tbaa !203
  %1886 = and i32 %1885, 8
  %1887 = icmp eq i32 %1886, 0
  br i1 %1887, label %1898, label %1888

1888:                                             ; preds = %1884
  %1889 = tail call i64 @fwrite(ptr nonnull @.str.22, i64 15, i64 1, ptr nonnull %1881)
  %1890 = load ptr, ptr @dump_file, align 8, !tbaa !188
  %1891 = tail call i64 @fwrite(ptr nonnull @.str.23, i64 22, i64 1, ptr %1890)
  %1892 = load ptr, ptr @dump_file, align 8, !tbaa !188
  tail call void @print_generic_expr(ptr noundef %1892, ptr noundef nonnull %584, i32 noundef 0) #23
  %1893 = load ptr, ptr @dump_file, align 8, !tbaa !188
  %1894 = tail call i64 @fwrite(ptr nonnull @.str.20, i64 4, i64 1, ptr %1893)
  %1895 = load ptr, ptr @dump_file, align 8, !tbaa !188
  tail call void @print_generic_expr(ptr noundef %1895, ptr noundef %1880, i32 noundef 0) #23
  %1896 = load ptr, ptr @dump_file, align 8, !tbaa !188
  %1897 = tail call i32 @fputc(i32 10, ptr %1896)
  br label %1898

1898:                                             ; preds = %1888, %1884, %1883
  %1899 = load i32, ptr %5, align 8
  %1900 = and i32 %1899, 254
  %1901 = add nsw i32 %1900, -10
  %1902 = icmp ult i32 %1901, -4
  br i1 %1902, label %1906, label %1903, !prof !684

1903:                                             ; preds = %1898
  %1904 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %5, i64 0, i32 1
  %1905 = load ptr, ptr %1904, align 8, !tbaa !199
  br label %1906

1906:                                             ; preds = %1903, %1898
  %1907 = phi ptr [ %1905, %1903 ], [ null, %1898 ]
  %1908 = icmp eq ptr %1907, null
  br i1 %1908, label %1923, label %1909, !prof !684

1909:                                             ; preds = %1906
  %1910 = load ptr, ptr @vn_ssa_aux_table, align 8
  %1911 = getelementptr inbounds %struct.tree_ssa_name, ptr %1907, i64 0, i32 3
  %1912 = load i32, ptr %1911, align 8, !tbaa !199
  %1913 = zext i32 %1912 to i64
  %1914 = getelementptr inbounds %struct.VEC_vn_ssa_aux_t_base, ptr %1910, i64 0, i32 2, i64 %1913
  %1915 = load ptr, ptr %1914, align 8, !tbaa !188
  %1916 = icmp eq ptr %1915, null
  br i1 %1916, label %1917, label %1918, !prof !684

1917:                                             ; preds = %1909
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 180, ptr noundef nonnull @.str.1) #23
  br label %1918

1918:                                             ; preds = %1917, %1909
  %1919 = getelementptr inbounds %struct.vn_ssa_aux, ptr %1915, i64 0, i32 5
  %1920 = load i8, ptr %1919, align 4
  %1921 = or i8 %1920, 8
  store i8 %1921, ptr %1919, align 4
  %1922 = tail call fastcc zeroext i8 @set_ssa_val_to(ptr noundef nonnull %1907, ptr noundef nonnull %1907), !range !351
  br label %1923

1923:                                             ; preds = %1918, %1906
  %1924 = phi i8 [ %1922, %1918 ], [ 0, %1906 ]
  %1925 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef %1880) #23
  %1926 = icmp eq i8 %1925, 0
  br i1 %1926, label %1927, label %1930, !prof !686

1927:                                             ; preds = %1923
  %1928 = tail call zeroext i8 @is_gimple_reg(ptr noundef %1880) #23
  %1929 = icmp eq i8 %1928, 0
  br i1 %1929, label %2984, label %1930, !prof !684

1930:                                             ; preds = %1927, %1923
  %1931 = tail call ptr @vn_reference_insert(ptr noundef nonnull %584, ptr noundef %1880, ptr noundef %1907)
  br label %2984

1932:                                             ; preds = %1878
  br i1 %1882, label %1939, label %1933

1933:                                             ; preds = %1932
  %1934 = load i32, ptr @dump_flags, align 4, !tbaa !203
  %1935 = and i32 %1934, 8
  %1936 = icmp eq i32 %1935, 0
  br i1 %1936, label %1939, label %1937

1937:                                             ; preds = %1933
  %1938 = tail call i64 @fwrite(ptr nonnull @.str.24, i64 75, i64 1, ptr nonnull %1881)
  br label %1939

1939:                                             ; preds = %1937, %1933, %1932
  %1940 = load i32, ptr %5, align 8
  %1941 = and i32 %1940, 254
  %1942 = add nsw i32 %1941, -10
  %1943 = icmp ult i32 %1942, -4
  br i1 %1943, label %1947, label %1944

1944:                                             ; preds = %1939
  %1945 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %5, i64 0, i32 1
  %1946 = load ptr, ptr %1945, align 8, !tbaa !199
  br label %1947

1947:                                             ; preds = %1944, %1939
  %1948 = phi ptr [ %1946, %1944 ], [ null, %1939 ]
  br i1 %1943, label %1952, label %1949

1949:                                             ; preds = %1947
  %1950 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %5, i64 0, i32 2
  %1951 = load ptr, ptr %1950, align 8, !tbaa !199
  br label %1952

1952:                                             ; preds = %1949, %1947
  %1953 = phi ptr [ %1951, %1949 ], [ null, %1947 ]
  %1954 = load ptr, ptr @vn_ssa_aux_table, align 8
  %1955 = getelementptr inbounds %struct.tree_ssa_name, ptr %1948, i64 0, i32 3
  %1956 = load i32, ptr %1955, align 8, !tbaa !199
  %1957 = zext i32 %1956 to i64
  %1958 = getelementptr inbounds %struct.VEC_vn_ssa_aux_t_base, ptr %1954, i64 0, i32 2, i64 %1957
  %1959 = load ptr, ptr %1958, align 8, !tbaa !188
  %1960 = icmp eq ptr %1959, null
  br i1 %1960, label %1961, label %1962

1961:                                             ; preds = %1952
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 180, ptr noundef nonnull @.str.1) #23
  br label %1962

1962:                                             ; preds = %1961, %1952
  %1963 = getelementptr inbounds %struct.vn_ssa_aux, ptr %1959, i64 0, i32 5
  %1964 = load i8, ptr %1963, align 4
  %1965 = or i8 %1964, 8
  store i8 %1965, ptr %1963, align 4
  %1966 = load ptr, ptr @vn_ssa_aux_table, align 8
  %1967 = getelementptr inbounds %struct.tree_ssa_name, ptr %1953, i64 0, i32 3
  %1968 = load i32, ptr %1967, align 8, !tbaa !199
  %1969 = zext i32 %1968 to i64
  %1970 = getelementptr inbounds %struct.VEC_vn_ssa_aux_t_base, ptr %1966, i64 0, i32 2, i64 %1969
  %1971 = load ptr, ptr %1970, align 8, !tbaa !188
  %1972 = icmp eq ptr %1971, null
  br i1 %1972, label %1973, label %1974

1973:                                             ; preds = %1962
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 180, ptr noundef nonnull @.str.1) #23
  br label %1974

1974:                                             ; preds = %1973, %1962
  %1975 = load ptr, ptr %1971, align 8, !tbaa !227
  %1976 = tail call fastcc zeroext i8 @set_ssa_val_to(ptr noundef %1948, ptr noundef %1975), !range !351
  br label %2984

1977:                                             ; preds = %1803
  %1978 = icmp eq i64 %1805, 141
  br i1 %1978, label %1979, label %2670, !prof !750

1979:                                             ; preds = %1977
  %1980 = tail call zeroext i8 @gimple_assign_copy_p(ptr noundef %5) #23
  %1981 = icmp eq i8 %1980, 0
  br i1 %1981, label %2004, label %1982, !prof !750

1982:                                             ; preds = %1979
  %1983 = load i32, ptr %5, align 8
  %1984 = and i32 %1983, 255
  %1985 = add nsw i32 %1984, -10
  %1986 = icmp ult i32 %1985, -9
  br i1 %1986, label %2000, label %1987

1987:                                             ; preds = %1982
  %1988 = zext nneg i32 %1984 to i64
  %1989 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %1988
  %1990 = load i32, ptr %1989, align 4, !tbaa !203
  %1991 = zext i32 %1990 to i64
  %1992 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %1991
  %1993 = load i64, ptr %1992, align 8, !tbaa !235
  %1994 = icmp eq i64 %1993, 0
  br i1 %1994, label %1995, label %1996

1995:                                             ; preds = %1987
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 1622, ptr noundef nonnull @.str.1) #23
  br label %1996

1996:                                             ; preds = %1995, %1987
  %1997 = getelementptr inbounds i8, ptr %5, i64 %1993
  %1998 = getelementptr inbounds ptr, ptr %1997, i64 1
  %1999 = load ptr, ptr %1998, align 8, !tbaa !188
  br label %2000

2000:                                             ; preds = %1982, %1996
  %2001 = phi ptr [ %1999, %1996 ], [ null, %1982 ]
  %2002 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef %2001) #23
  %2003 = icmp eq i8 %2002, 0
  br i1 %2003, label %2004, label %2008

2004:                                             ; preds = %2000, %1979
  br i1 %1436, label %2005, label %2044, !prof !751

2005:                                             ; preds = %2004
  %2006 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef nonnull %1435) #23
  %2007 = icmp eq i8 %2006, 0
  br i1 %2007, label %2044, label %2008, !prof !734

2008:                                             ; preds = %2005, %2000
  %2009 = load ptr, ptr @vn_ssa_aux_table, align 8
  %2010 = getelementptr inbounds %struct.tree_ssa_name, ptr %584, i64 0, i32 3
  %2011 = load i32, ptr %2010, align 8, !tbaa !199
  %2012 = zext i32 %2011 to i64
  %2013 = getelementptr inbounds %struct.VEC_vn_ssa_aux_t_base, ptr %2009, i64 0, i32 2, i64 %2012
  %2014 = load ptr, ptr %2013, align 8, !tbaa !188
  %2015 = icmp eq ptr %2014, null
  br i1 %2015, label %2016, label %2017

2016:                                             ; preds = %2008
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 180, ptr noundef nonnull @.str.1) #23
  br label %2017

2017:                                             ; preds = %2008, %2016
  %2018 = getelementptr inbounds %struct.vn_ssa_aux, ptr %2014, i64 0, i32 5
  %2019 = load i8, ptr %2018, align 4
  %2020 = or i8 %2019, 4
  store i8 %2020, ptr %2018, align 4
  br i1 %1436, label %2021, label %2023

2021:                                             ; preds = %2017
  %2022 = tail call fastcc zeroext i8 @set_ssa_val_to(ptr noundef nonnull %584, ptr noundef nonnull %1435), !range !351
  br label %2984

2023:                                             ; preds = %2017
  %2024 = load i32, ptr %5, align 8
  %2025 = and i32 %2024, 255
  %2026 = add nsw i32 %2025, -10
  %2027 = icmp ult i32 %2026, -9
  br i1 %2027, label %2041, label %2028

2028:                                             ; preds = %2023
  %2029 = zext nneg i32 %2025 to i64
  %2030 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %2029
  %2031 = load i32, ptr %2030, align 4, !tbaa !203
  %2032 = zext i32 %2031 to i64
  %2033 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %2032
  %2034 = load i64, ptr %2033, align 8, !tbaa !235
  %2035 = icmp eq i64 %2034, 0
  br i1 %2035, label %2036, label %2037

2036:                                             ; preds = %2028
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 1622, ptr noundef nonnull @.str.1) #23
  br label %2037

2037:                                             ; preds = %2036, %2028
  %2038 = getelementptr inbounds i8, ptr %5, i64 %2034
  %2039 = getelementptr inbounds ptr, ptr %2038, i64 1
  %2040 = load ptr, ptr %2039, align 8, !tbaa !188
  br label %2041

2041:                                             ; preds = %2023, %2037
  %2042 = phi ptr [ %2040, %2037 ], [ null, %2023 ]
  %2043 = tail call fastcc zeroext i8 @set_ssa_val_to(ptr noundef nonnull %584, ptr noundef %2042), !range !351
  br label %2984

2044:                                             ; preds = %2005, %2004
  %2045 = load i32, ptr %5, align 8
  %2046 = trunc i32 %2045 to i8
  switch i8 %2046, label %2049 [
    i8 6, label %2047
    i8 1, label %2047
    i8 8, label %2050
  ], !prof !687

2047:                                             ; preds = %2044, %2044
  %2048 = lshr i32 %2045, 16
  br label %2050

2049:                                             ; preds = %2044
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 1446, ptr noundef nonnull @.str.1) #23
  br label %2050

2050:                                             ; preds = %2049, %2047, %2044
  %2051 = phi i32 [ %2048, %2047 ], [ 0, %2049 ], [ 59, %2044 ]
  %2052 = zext nneg i32 %2051 to i64
  %2053 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %2052
  %2054 = load i8, ptr %2053, align 1, !tbaa !199
  %2055 = icmp eq i8 %2054, 3
  br i1 %2055, label %2056, label %2076, !prof !688

2056:                                             ; preds = %2050
  %2057 = load i32, ptr %5, align 8
  %2058 = and i32 %2057, 255
  %2059 = add nsw i32 %2058, -1
  %2060 = icmp ult i32 %2059, 9
  tail call void @llvm.assume(i1 %2060)
  %2061 = zext nneg i32 %2058 to i64
  %2062 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %2061
  %2063 = load i32, ptr %2062, align 4, !tbaa !203
  %2064 = zext i32 %2063 to i64
  %2065 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %2064
  %2066 = load i64, ptr %2065, align 8, !tbaa !235
  %2067 = icmp eq i64 %2066, 0
  br i1 %2067, label %2068, label %2069, !prof !689

2068:                                             ; preds = %2056
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 1622, ptr noundef nonnull @.str.1) #23
  br label %2069

2069:                                             ; preds = %2068, %2056
  %2070 = getelementptr inbounds i8, ptr %5, i64 %2066
  %2071 = getelementptr inbounds ptr, ptr %2070, i64 1
  %2072 = load ptr, ptr %2071, align 8, !tbaa !188
  %2073 = load i64, ptr %2072, align 8
  %2074 = trunc i64 %2073 to i32
  %2075 = and i32 %2074, 65535
  br label %2076

2076:                                             ; preds = %2050, %2069
  %2077 = phi i32 [ %2075, %2069 ], [ %2051, %2050 ]
  %2078 = zext nneg i32 %2077 to i64
  %2079 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %2078
  %2080 = load i8, ptr %2079, align 1, !tbaa !199
  switch i8 %2080, label %2668 [
    i8 2, label %2081
    i8 1, label %2089
    i8 3, label %2162
  ], !prof !755

2081:                                             ; preds = %2076
  %2082 = tail call ptr @vn_nary_op_lookup_stmt(ptr noundef %5, ptr noundef null)
  %2083 = icmp eq ptr %2082, null
  br i1 %2083, label %2086, label %2084, !prof !756

2084:                                             ; preds = %2081
  %2085 = tail call fastcc zeroext i8 @set_ssa_val_to(ptr noundef nonnull %584, ptr noundef nonnull %2082), !range !351
  br label %2984

2086:                                             ; preds = %2081
  %2087 = tail call fastcc zeroext i8 @set_ssa_val_to(ptr noundef nonnull %584, ptr noundef nonnull %584), !range !351
  %2088 = tail call ptr @vn_nary_op_insert_stmt(ptr noundef %5, ptr noundef nonnull %584)
  br label %2984

2089:                                             ; preds = %2076
  %2090 = tail call ptr @vn_nary_op_lookup_stmt(ptr noundef %5, ptr noundef null)
  %2091 = icmp eq ptr %2090, null
  br i1 %2091, label %2094, label %2092, !prof !757

2092:                                             ; preds = %2089
  %2093 = tail call fastcc zeroext i8 @set_ssa_val_to(ptr noundef nonnull %584, ptr noundef nonnull %2090), !range !351
  br label %2984

2094:                                             ; preds = %2089
  %2095 = load ptr, ptr @VN_TOP, align 8, !tbaa !188
  %2096 = icmp eq ptr %2095, %584
  br i1 %2096, label %2105, label %2097, !prof !670

2097:                                             ; preds = %2094
  %2098 = load i64, ptr %584, align 8
  %2099 = and i64 %2098, 65535
  %2100 = icmp eq i64 %2099, 141
  br i1 %2100, label %2105, label %2101, !prof !671

2101:                                             ; preds = %2097
  %2102 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef nonnull %584) #23
  %2103 = icmp eq i8 %2102, 0
  br i1 %2103, label %2104, label %2105

2104:                                             ; preds = %2101
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1812, ptr noundef nonnull @.str.1) #23
  br label %2105

2105:                                             ; preds = %2104, %2101, %2097, %2094
  %2106 = load ptr, ptr @dump_file, align 8, !tbaa !188
  %2107 = icmp eq ptr %2106, null
  br i1 %2107, label %2118, label %2108, !prof !671

2108:                                             ; preds = %2105
  %2109 = load i32, ptr @dump_flags, align 4, !tbaa !203
  %2110 = and i32 %2109, 8
  %2111 = icmp eq i32 %2110, 0
  br i1 %2111, label %2118, label %2112

2112:                                             ; preds = %2108
  %2113 = tail call i64 @fwrite(ptr nonnull @.str.19, i64 24, i64 1, ptr nonnull %2106)
  %2114 = load ptr, ptr @dump_file, align 8, !tbaa !188
  tail call void @print_generic_expr(ptr noundef %2114, ptr noundef nonnull %584, i32 noundef 0) #23
  %2115 = load ptr, ptr @dump_file, align 8, !tbaa !188
  %2116 = tail call i64 @fwrite(ptr nonnull @.str.20, i64 4, i64 1, ptr %2115)
  %2117 = load ptr, ptr @dump_file, align 8, !tbaa !188
  tail call void @print_generic_expr(ptr noundef %2117, ptr noundef nonnull %584, i32 noundef 0) #23
  br label %2118

2118:                                             ; preds = %2112, %2108, %2105
  %2119 = load ptr, ptr @vn_ssa_aux_table, align 8
  %2120 = getelementptr inbounds %struct.tree_ssa_name, ptr %584, i64 0, i32 3
  %2121 = load i32, ptr %2120, align 8, !tbaa !199
  %2122 = zext i32 %2121 to i64
  %2123 = getelementptr inbounds %struct.VEC_vn_ssa_aux_t_base, ptr %2119, i64 0, i32 2, i64 %2122
  %2124 = load ptr, ptr %2123, align 8, !tbaa !188
  %2125 = icmp eq ptr %2124, null
  br i1 %2125, label %2126, label %2127, !prof !670

2126:                                             ; preds = %2118
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 180, ptr noundef nonnull @.str.1) #23
  br label %2127

2127:                                             ; preds = %2126, %2118
  %2128 = load ptr, ptr %2124, align 8, !tbaa !227
  %2129 = icmp eq ptr %2128, %584
  br i1 %2129, label %2150, label %2130, !prof !672

2130:                                             ; preds = %2127
  %2131 = tail call i32 @operand_equal_p(ptr noundef %2128, ptr noundef nonnull %584, i32 noundef 2) #23
  %2132 = icmp eq i32 %2131, 0
  br i1 %2132, label %2133, label %2150, !prof !673

2133:                                             ; preds = %2130
  %2134 = load ptr, ptr @vn_ssa_aux_table, align 8
  %2135 = load i32, ptr %2120, align 8, !tbaa !199
  %2136 = zext i32 %2135 to i64
  %2137 = getelementptr inbounds %struct.VEC_vn_ssa_aux_t_base, ptr %2134, i64 0, i32 2, i64 %2136
  %2138 = load ptr, ptr %2137, align 8, !tbaa !188
  %2139 = icmp eq ptr %2138, null
  br i1 %2139, label %2140, label %2141, !prof !674

2140:                                             ; preds = %2133
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 180, ptr noundef nonnull @.str.1) #23
  br label %2141

2141:                                             ; preds = %2140, %2133
  store ptr %584, ptr %2138, align 8, !tbaa !227
  %2142 = load ptr, ptr @dump_file, align 8, !tbaa !188
  %2143 = icmp eq ptr %2142, null
  br i1 %2143, label %2159, label %2144, !prof !673

2144:                                             ; preds = %2141
  %2145 = load i32, ptr @dump_flags, align 4, !tbaa !203
  %2146 = and i32 %2145, 8
  %2147 = icmp eq i32 %2146, 0
  br i1 %2147, label %2159, label %2148

2148:                                             ; preds = %2144
  %2149 = tail call i64 @fwrite(ptr nonnull @.str.21, i64 11, i64 1, ptr nonnull %2142)
  br label %2159

2150:                                             ; preds = %2130, %2127
  %2151 = load ptr, ptr @dump_file, align 8, !tbaa !188
  %2152 = icmp eq ptr %2151, null
  br i1 %2152, label %2159, label %2153, !prof !486

2153:                                             ; preds = %2150
  %2154 = load i32, ptr @dump_flags, align 4, !tbaa !203
  %2155 = and i32 %2154, 8
  %2156 = icmp eq i32 %2155, 0
  br i1 %2156, label %2159, label %2157

2157:                                             ; preds = %2153
  %2158 = tail call i32 @fputc(i32 10, ptr nonnull %2151)
  br label %2159

2159:                                             ; preds = %2157, %2153, %2150, %2148, %2144, %2141
  %2160 = phi i8 [ 1, %2148 ], [ 1, %2144 ], [ 1, %2141 ], [ 0, %2157 ], [ 0, %2153 ], [ 0, %2150 ]
  %2161 = tail call ptr @vn_nary_op_insert_stmt(ptr noundef %5, ptr noundef nonnull %584)
  br label %2984

2162:                                             ; preds = %2076
  %2163 = load i32, ptr %5, align 8
  %2164 = trunc i32 %2163 to i8
  switch i8 %2164, label %2167 [
    i8 6, label %2165
    i8 1, label %2165
    i8 8, label %2168
  ], !prof !758

2165:                                             ; preds = %2162, %2162
  %2166 = lshr i32 %2163, 16
  br label %2168

2167:                                             ; preds = %2162
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 1446, ptr noundef nonnull @.str.1) #23
  br label %2168

2168:                                             ; preds = %2167, %2165, %2162
  %2169 = phi i32 [ %2166, %2165 ], [ 0, %2167 ], [ 59, %2162 ]
  %2170 = zext nneg i32 %2169 to i64
  %2171 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %2170
  %2172 = load i8, ptr %2171, align 1, !tbaa !199
  %2173 = icmp eq i8 %2172, 3
  br i1 %2173, label %2174, label %2194, !prof !759

2174:                                             ; preds = %2168
  %2175 = load i32, ptr %5, align 8
  %2176 = and i32 %2175, 255
  %2177 = add nsw i32 %2176, -1
  %2178 = icmp ult i32 %2177, 9
  tail call void @llvm.assume(i1 %2178)
  %2179 = zext nneg i32 %2176 to i64
  %2180 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %2179
  %2181 = load i32, ptr %2180, align 4, !tbaa !203
  %2182 = zext i32 %2181 to i64
  %2183 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %2182
  %2184 = load i64, ptr %2183, align 8, !tbaa !235
  %2185 = icmp eq i64 %2184, 0
  br i1 %2185, label %2186, label %2187, !prof !689

2186:                                             ; preds = %2174
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 1622, ptr noundef nonnull @.str.1) #23
  br label %2187

2187:                                             ; preds = %2186, %2174
  %2188 = getelementptr inbounds i8, ptr %5, i64 %2184
  %2189 = getelementptr inbounds ptr, ptr %2188, i64 1
  %2190 = load ptr, ptr %2189, align 8, !tbaa !188
  %2191 = load i64, ptr %2190, align 8
  %2192 = trunc i64 %2191 to i32
  %2193 = and i32 %2192, 65535
  br label %2194

2194:                                             ; preds = %2168, %2187
  %2195 = phi i32 [ %2193, %2187 ], [ %2169, %2168 ]
  %2196 = zext nneg i32 %2195 to i64
  %2197 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %2196
  %2198 = load i32, ptr %2197, align 4, !tbaa !203
  switch i32 %2198, label %2666 [
    i32 4, label %2199
    i32 3, label %2328
    i32 10, label %2629
  ], !prof !760

2199:                                             ; preds = %2194
  %2200 = load i32, ptr %5, align 8
  %2201 = trunc i32 %2200 to i8
  switch i8 %2201, label %2204 [
    i8 6, label %2202
    i8 1, label %2202
    i8 8, label %2205
  ], !prof !761

2202:                                             ; preds = %2199, %2199
  %2203 = lshr i32 %2200, 16
  br label %2205

2204:                                             ; preds = %2199
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 1446, ptr noundef nonnull @.str.1) #23
  br label %2205

2205:                                             ; preds = %2204, %2202, %2199
  %2206 = phi i32 [ %2203, %2202 ], [ 0, %2204 ], [ 59, %2199 ]
  %2207 = zext nneg i32 %2206 to i64
  %2208 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %2207
  %2209 = load i8, ptr %2208, align 1, !tbaa !199
  %2210 = icmp eq i8 %2209, 3
  br i1 %2210, label %2211, label %2231, !prof !694

2211:                                             ; preds = %2205
  %2212 = load i32, ptr %5, align 8
  %2213 = and i32 %2212, 255
  %2214 = add nsw i32 %2213, -1
  %2215 = icmp ult i32 %2214, 9
  tail call void @llvm.assume(i1 %2215)
  %2216 = zext nneg i32 %2213 to i64
  %2217 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %2216
  %2218 = load i32, ptr %2217, align 4, !tbaa !203
  %2219 = zext i32 %2218 to i64
  %2220 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %2219
  %2221 = load i64, ptr %2220, align 8, !tbaa !235
  %2222 = icmp eq i64 %2221, 0
  br i1 %2222, label %2223, label %2224, !prof !693

2223:                                             ; preds = %2211
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 1622, ptr noundef nonnull @.str.1) #23
  br label %2224

2224:                                             ; preds = %2223, %2211
  %2225 = getelementptr inbounds i8, ptr %5, i64 %2221
  %2226 = getelementptr inbounds ptr, ptr %2225, i64 1
  %2227 = load ptr, ptr %2226, align 8, !tbaa !188
  %2228 = load i64, ptr %2227, align 8
  %2229 = trunc i64 %2228 to i32
  %2230 = and i32 %2229, 65535
  br label %2231

2231:                                             ; preds = %2205, %2224
  %2232 = phi i32 [ %2230, %2224 ], [ %2206, %2205 ]
  %2233 = icmp eq i32 %2232, 43
  br i1 %2233, label %2304, label %2234, !prof !693

2234:                                             ; preds = %2231
  %2235 = load i32, ptr %5, align 8
  %2236 = trunc i32 %2235 to i8
  switch i8 %2236, label %2239 [
    i8 6, label %2237
    i8 1, label %2237
    i8 8, label %2240
  ], !prof !761

2237:                                             ; preds = %2234, %2234
  %2238 = lshr i32 %2235, 16
  br label %2240

2239:                                             ; preds = %2234
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 1446, ptr noundef nonnull @.str.1) #23
  br label %2240

2240:                                             ; preds = %2239, %2237, %2234
  %2241 = phi i32 [ %2238, %2237 ], [ 0, %2239 ], [ 59, %2234 ]
  %2242 = zext nneg i32 %2241 to i64
  %2243 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %2242
  %2244 = load i8, ptr %2243, align 1, !tbaa !199
  %2245 = icmp eq i8 %2244, 3
  br i1 %2245, label %2246, label %2266, !prof !694

2246:                                             ; preds = %2240
  %2247 = load i32, ptr %5, align 8
  %2248 = and i32 %2247, 255
  %2249 = add nsw i32 %2248, -1
  %2250 = icmp ult i32 %2249, 9
  tail call void @llvm.assume(i1 %2250)
  %2251 = zext nneg i32 %2248 to i64
  %2252 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %2251
  %2253 = load i32, ptr %2252, align 4, !tbaa !203
  %2254 = zext i32 %2253 to i64
  %2255 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %2254
  %2256 = load i64, ptr %2255, align 8, !tbaa !235
  %2257 = icmp eq i64 %2256, 0
  br i1 %2257, label %2258, label %2259, !prof !693

2258:                                             ; preds = %2246
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 1622, ptr noundef nonnull @.str.1) #23
  br label %2259

2259:                                             ; preds = %2258, %2246
  %2260 = getelementptr inbounds i8, ptr %5, i64 %2256
  %2261 = getelementptr inbounds ptr, ptr %2260, i64 1
  %2262 = load ptr, ptr %2261, align 8, !tbaa !188
  %2263 = load i64, ptr %2262, align 8
  %2264 = trunc i64 %2263 to i32
  %2265 = and i32 %2264, 65535
  br label %2266

2266:                                             ; preds = %2240, %2259
  %2267 = phi i32 [ %2265, %2259 ], [ %2241, %2240 ]
  %2268 = icmp eq i32 %2267, 44
  br i1 %2268, label %2304, label %2269, !prof !693

2269:                                             ; preds = %2266
  %2270 = load i32, ptr %5, align 8
  %2271 = trunc i32 %2270 to i8
  switch i8 %2271, label %2274 [
    i8 6, label %2272
    i8 1, label %2272
    i8 8, label %2275
  ], !prof !761

2272:                                             ; preds = %2269, %2269
  %2273 = lshr i32 %2270, 16
  br label %2275

2274:                                             ; preds = %2269
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 1446, ptr noundef nonnull @.str.1) #23
  br label %2275

2275:                                             ; preds = %2274, %2272, %2269
  %2276 = phi i32 [ %2273, %2272 ], [ 0, %2274 ], [ 59, %2269 ]
  %2277 = zext nneg i32 %2276 to i64
  %2278 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %2277
  %2279 = load i8, ptr %2278, align 1, !tbaa !199
  %2280 = icmp eq i8 %2279, 3
  br i1 %2280, label %2281, label %2301, !prof !694

2281:                                             ; preds = %2275
  %2282 = load i32, ptr %5, align 8
  %2283 = and i32 %2282, 255
  %2284 = add nsw i32 %2283, -1
  %2285 = icmp ult i32 %2284, 9
  tail call void @llvm.assume(i1 %2285)
  %2286 = zext nneg i32 %2283 to i64
  %2287 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %2286
  %2288 = load i32, ptr %2287, align 4, !tbaa !203
  %2289 = zext i32 %2288 to i64
  %2290 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %2289
  %2291 = load i64, ptr %2290, align 8, !tbaa !235
  %2292 = icmp eq i64 %2291, 0
  br i1 %2292, label %2293, label %2294, !prof !693

2293:                                             ; preds = %2281
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 1622, ptr noundef nonnull @.str.1) #23
  br label %2294

2294:                                             ; preds = %2293, %2281
  %2295 = getelementptr inbounds i8, ptr %5, i64 %2291
  %2296 = getelementptr inbounds ptr, ptr %2295, i64 1
  %2297 = load ptr, ptr %2296, align 8, !tbaa !188
  %2298 = load i64, ptr %2297, align 8
  %2299 = trunc i64 %2298 to i32
  %2300 = and i32 %2299, 65535
  br label %2301

2301:                                             ; preds = %2275, %2294
  %2302 = phi i32 [ %2300, %2294 ], [ %2276, %2275 ]
  %2303 = icmp eq i32 %2302, 118
  br i1 %2303, label %2304, label %2328, !prof !693

2304:                                             ; preds = %2301, %2266, %2231
  %2305 = load i32, ptr %5, align 8
  %2306 = and i32 %2305, 255
  %2307 = add nsw i32 %2306, -1
  %2308 = icmp ult i32 %2307, 9
  tail call void @llvm.assume(i1 %2308)
  %2309 = zext nneg i32 %2306 to i64
  %2310 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %2309
  %2311 = load i32, ptr %2310, align 4, !tbaa !203
  %2312 = zext i32 %2311 to i64
  %2313 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %2312
  %2314 = load i64, ptr %2313, align 8, !tbaa !235
  %2315 = icmp eq i64 %2314, 0
  br i1 %2315, label %2316, label %2317

2316:                                             ; preds = %2304
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 1622, ptr noundef nonnull @.str.1) #23
  br label %2317

2317:                                             ; preds = %2316, %2304
  %2318 = getelementptr inbounds i8, ptr %5, i64 %2314
  %2319 = getelementptr inbounds ptr, ptr %2318, i64 1
  %2320 = load ptr, ptr %2319, align 8, !tbaa !188
  %2321 = getelementptr inbounds %struct.tree_exp, ptr %2320, i64 0, i32 3
  %2322 = load ptr, ptr %2321, align 8, !tbaa !199
  %2323 = load i64, ptr %2322, align 8
  %2324 = and i64 %2323, 65535
  %2325 = icmp eq i64 %2324, 141
  br i1 %2325, label %2326, label %2328

2326:                                             ; preds = %2317
  %2327 = tail call fastcc zeroext i8 @visit_unary_op(ptr noundef nonnull %584, ptr noundef nonnull %5), !range !351
  br label %2984

2328:                                             ; preds = %2301, %2317, %2194
  %2329 = load i32, ptr %5, align 8
  %2330 = and i32 %2329, 255
  %2331 = add nsw i32 %2330, -10
  %2332 = icmp ult i32 %2331, -9
  br i1 %2332, label %2346, label %2333, !prof !762

2333:                                             ; preds = %2328
  %2334 = zext nneg i32 %2330 to i64
  %2335 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %2334
  %2336 = load i32, ptr %2335, align 4, !tbaa !203
  %2337 = zext i32 %2336 to i64
  %2338 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %2337
  %2339 = load i64, ptr %2338, align 8, !tbaa !235
  %2340 = icmp eq i64 %2339, 0
  br i1 %2340, label %2341, label %2342, !prof !762

2341:                                             ; preds = %2333
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 1622, ptr noundef nonnull @.str.1) #23
  br label %2342

2342:                                             ; preds = %2341, %2333
  %2343 = getelementptr inbounds i8, ptr %5, i64 %2339
  %2344 = getelementptr inbounds ptr, ptr %2343, i64 1
  %2345 = load ptr, ptr %2344, align 8, !tbaa !188
  br label %2346

2346:                                             ; preds = %2328, %2342
  %2347 = phi ptr [ %2345, %2342 ], [ null, %2328 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #23
  %2348 = load i32, ptr %5, align 8
  %2349 = and i32 %2348, 254
  %2350 = add nsw i32 %2349, -10
  %2351 = icmp ult i32 %2350, -4
  br i1 %2351, label %2355, label %2352, !prof !762

2352:                                             ; preds = %2346
  %2353 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %5, i64 0, i32 2
  %2354 = load ptr, ptr %2353, align 8, !tbaa !199
  br label %2355

2355:                                             ; preds = %2352, %2346
  %2356 = phi ptr [ %2354, %2352 ], [ null, %2346 ]
  store ptr %2356, ptr %2, align 8, !tbaa !188
  store ptr %2, ptr @last_vuse_ptr, align 8, !tbaa !188
  %2357 = call ptr @vn_reference_lookup(ptr noundef %2347, ptr noundef %2356, i8 noundef zeroext 1, ptr noundef null)
  store ptr null, ptr @last_vuse_ptr, align 8, !tbaa !188
  %2358 = icmp eq ptr %2357, null
  br i1 %2358, label %2359, label %2376, !prof !763

2359:                                             ; preds = %2355
  %2360 = load i64, ptr %2347, align 8
  %2361 = and i64 %2360, 65535
  %2362 = icmp eq i64 %2361, 118
  br i1 %2362, label %2363, label %2376, !prof !764

2363:                                             ; preds = %2359
  %2364 = getelementptr inbounds %struct.tree_exp, ptr %2347, i64 0, i32 3
  %2365 = load ptr, ptr %2364, align 8, !tbaa !199
  %2366 = load i32, ptr %5, align 8
  %2367 = and i32 %2366, 254
  %2368 = add nsw i32 %2367, -10
  %2369 = icmp ult i32 %2368, -4
  br i1 %2369, label %2373, label %2370

2370:                                             ; preds = %2363
  %2371 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %5, i64 0, i32 2
  %2372 = load ptr, ptr %2371, align 8, !tbaa !199
  br label %2373

2373:                                             ; preds = %2370, %2363
  %2374 = phi ptr [ %2372, %2370 ], [ null, %2363 ]
  %2375 = call ptr @vn_reference_lookup(ptr noundef %2365, ptr noundef %2374, i8 noundef zeroext 1, ptr noundef null)
  br label %2376

2376:                                             ; preds = %2373, %2359, %2355
  %2377 = phi ptr [ %2357, %2355 ], [ %2375, %2373 ], [ null, %2359 ]
  %2378 = icmp eq ptr %2377, null
  br i1 %2378, label %2504, label %2379, !prof !763

2379:                                             ; preds = %2376
  %2380 = getelementptr inbounds %struct.tree_common, ptr %2377, i64 0, i32 2
  %2381 = load ptr, ptr %2380, align 8, !tbaa !199
  %2382 = getelementptr inbounds %struct.tree_common, ptr %2347, i64 0, i32 2
  %2383 = load ptr, ptr %2382, align 8, !tbaa !199
  %2384 = call zeroext i8 @useless_type_conversion_p(ptr noundef %2381, ptr noundef %2383) #23
  %2385 = icmp eq i8 %2384, 0
  br i1 %2385, label %2386, label %2504, !prof !765

2386:                                             ; preds = %2379
  %2387 = load ptr, ptr %2382, align 8, !tbaa !199
  %2388 = call ptr @fold_build1_stat_loc(i32 noundef 0, i32 noundef 118, ptr noundef %2387, ptr noundef nonnull %2377) #23
  %2389 = load i64, ptr %2388, align 8
  %2390 = trunc i64 %2389 to i16
  switch i16 %2390, label %2411 [
    i16 116, label %2391
    i16 113, label %2391
    i16 118, label %2391
  ]

2391:                                             ; preds = %2386, %2386, %2386
  %2392 = getelementptr inbounds %struct.tree_exp, ptr %2388, i64 0, i32 3
  %2393 = load ptr, ptr %2392, align 8, !tbaa !199
  %2394 = load i64, ptr %2393, align 8
  %2395 = and i64 %2394, 65535
  %2396 = icmp eq i64 %2395, 141
  br i1 %2396, label %2397, label %2411

2397:                                             ; preds = %2391
  %2398 = call ptr @vn_get_expr_for(ptr noundef nonnull %2393)
  %2399 = call fastcc ptr @valueize_expr(ptr noundef %2398)
  %2400 = load i64, ptr %2398, align 8
  %2401 = trunc i64 %2400 to i16
  switch i16 %2401, label %2411 [
    i16 116, label %2402
    i16 113, label %2402
    i16 118, label %2402
  ]

2402:                                             ; preds = %2397, %2397, %2397
  %2403 = load i64, ptr %2388, align 8
  %2404 = trunc i64 %2403 to i32
  %2405 = and i32 %2404, 65535
  %2406 = getelementptr inbounds %struct.tree_common, ptr %2388, i64 0, i32 2
  %2407 = load ptr, ptr %2406, align 8, !tbaa !199
  %2408 = call ptr @fold_unary_ignore_overflow_loc(i32 noundef 0, i32 noundef %2405, ptr noundef %2407, ptr noundef nonnull %2398) #23
  %2409 = icmp eq ptr %2408, null
  %2410 = select i1 %2409, ptr %2388, ptr %2408
  br label %2411

2411:                                             ; preds = %2402, %2397, %2391, %2386
  %2412 = phi ptr [ %2388, %2391 ], [ %2388, %2397 ], [ %2410, %2402 ], [ %2388, %2386 ]
  %2413 = call zeroext i8 @is_gimple_min_invariant(ptr noundef %2412) #23
  %2414 = icmp eq i8 %2413, 0
  br i1 %2414, label %2415, label %2421

2415:                                             ; preds = %2411
  %2416 = load i64, ptr %2412, align 8
  %2417 = and i64 %2416, 65535
  %2418 = icmp eq i64 %2417, 141
  br i1 %2418, label %2421, label %2419

2419:                                             ; preds = %2415
  %2420 = call ptr @vn_nary_op_lookup(ptr noundef nonnull %2412, ptr noundef null)
  br label %2421

2421:                                             ; preds = %2419, %2415, %2411
  %2422 = phi ptr [ %2412, %2411 ], [ %2420, %2419 ], [ %2412, %2415 ]
  %2423 = icmp eq ptr %2422, null
  %2424 = load i8, ptr @may_insert, align 1
  %2425 = icmp ne i8 %2424, 0
  %2426 = select i1 %2423, i1 %2425, i1 false
  br i1 %2426, label %2427, label %2504

2427:                                             ; preds = %2421
  %2428 = getelementptr inbounds %struct.tree_ssa_name, ptr %584, i64 0, i32 1
  %2429 = load ptr, ptr %2428, align 8, !tbaa !199
  %2430 = load ptr, ptr @cfun, align 8, !tbaa !188
  %2431 = call ptr @make_ssa_name_fn(ptr noundef %2430, ptr noundef %2429, ptr noundef null) #23
  %2432 = call ptr @VN_INFO_GET(ptr noundef %2431)
  store ptr %2431, ptr %2432, align 8, !tbaa !227
  %2433 = load i32, ptr @next_value_id, align 4, !tbaa !203
  %2434 = add i32 %2433, 1
  store i32 %2434, ptr @next_value_id, align 4, !tbaa !203
  %2435 = load ptr, ptr @vn_ssa_aux_table, align 8
  %2436 = getelementptr inbounds %struct.tree_ssa_name, ptr %2431, i64 0, i32 3
  %2437 = load i32, ptr %2436, align 8, !tbaa !199
  %2438 = zext i32 %2437 to i64
  %2439 = getelementptr inbounds %struct.VEC_vn_ssa_aux_t_base, ptr %2435, i64 0, i32 2, i64 %2438
  %2440 = load ptr, ptr %2439, align 8, !tbaa !188
  %2441 = icmp eq ptr %2440, null
  br i1 %2441, label %2442, label %2443

2442:                                             ; preds = %2427
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 180, ptr noundef nonnull @.str.1) #23
  br label %2443

2443:                                             ; preds = %2442, %2427
  %2444 = getelementptr inbounds %struct.vn_ssa_aux, ptr %2440, i64 0, i32 2
  store i32 %2433, ptr %2444, align 8, !tbaa !398
  %2445 = load ptr, ptr @vn_ssa_aux_table, align 8
  %2446 = load i32, ptr %2436, align 8, !tbaa !199
  %2447 = zext i32 %2446 to i64
  %2448 = getelementptr inbounds %struct.VEC_vn_ssa_aux_t_base, ptr %2445, i64 0, i32 2, i64 %2447
  %2449 = load ptr, ptr %2448, align 8, !tbaa !188
  %2450 = icmp eq ptr %2449, null
  br i1 %2450, label %2451, label %2452

2451:                                             ; preds = %2443
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 180, ptr noundef nonnull @.str.1) #23
  br label %2452

2452:                                             ; preds = %2451, %2443
  %2453 = getelementptr inbounds %struct.vn_ssa_aux, ptr %2449, i64 0, i32 1
  store ptr %2412, ptr %2453, align 8, !tbaa !230
  %2454 = call fastcc zeroext i8 @expr_has_constants(ptr noundef %2412)
  %2455 = load ptr, ptr @vn_ssa_aux_table, align 8
  %2456 = load i32, ptr %2436, align 8, !tbaa !199
  %2457 = zext i32 %2456 to i64
  %2458 = getelementptr inbounds %struct.VEC_vn_ssa_aux_t_base, ptr %2455, i64 0, i32 2, i64 %2457
  %2459 = load ptr, ptr %2458, align 8, !tbaa !188
  %2460 = icmp eq ptr %2459, null
  br i1 %2460, label %2461, label %2462

2461:                                             ; preds = %2452
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 180, ptr noundef nonnull @.str.1) #23
  br label %2462

2462:                                             ; preds = %2461, %2452
  %2463 = getelementptr inbounds %struct.vn_ssa_aux, ptr %2459, i64 0, i32 5
  %2464 = load i8, ptr %2463, align 4
  %2465 = shl i8 %2454, 2
  %2466 = and i8 %2465, 4
  %2467 = and i8 %2464, -5
  %2468 = or disjoint i8 %2467, %2466
  store i8 %2468, ptr %2463, align 4
  %2469 = load ptr, ptr @vn_ssa_aux_table, align 8
  %2470 = load i32, ptr %2436, align 8, !tbaa !199
  %2471 = zext i32 %2470 to i64
  %2472 = getelementptr inbounds %struct.VEC_vn_ssa_aux_t_base, ptr %2469, i64 0, i32 2, i64 %2471
  %2473 = load ptr, ptr %2472, align 8, !tbaa !188
  %2474 = icmp eq ptr %2473, null
  br i1 %2474, label %2475, label %2476

2475:                                             ; preds = %2462
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 180, ptr noundef nonnull @.str.1) #23
  br label %2476

2476:                                             ; preds = %2475, %2462
  %2477 = getelementptr inbounds %struct.vn_ssa_aux, ptr %2473, i64 0, i32 5
  %2478 = load i8, ptr %2477, align 4
  %2479 = or i8 %2478, 16
  store i8 %2479, ptr %2477, align 4
  %2480 = load ptr, ptr @current_info, align 8, !tbaa !188
  %2481 = load ptr, ptr @optimistic_info, align 8, !tbaa !188
  %2482 = icmp eq ptr %2480, %2481
  br i1 %2482, label %2483, label %2487

2483:                                             ; preds = %2476
  %2484 = load ptr, ptr @valid_info, align 8, !tbaa !188
  store ptr %2484, ptr @current_info, align 8, !tbaa !188
  %2485 = call ptr @vn_nary_op_insert(ptr noundef %2412, ptr noundef %2431)
  %2486 = load ptr, ptr @optimistic_info, align 8, !tbaa !188
  store ptr %2486, ptr @current_info, align 8, !tbaa !188
  br label %2489

2487:                                             ; preds = %2476
  %2488 = call ptr @vn_nary_op_insert(ptr noundef %2412, ptr noundef %2431)
  br label %2489

2489:                                             ; preds = %2487, %2483
  %2490 = load ptr, ptr @dump_file, align 8, !tbaa !188
  %2491 = icmp eq ptr %2490, null
  br i1 %2491, label %2504, label %2492

2492:                                             ; preds = %2489
  %2493 = load i32, ptr @dump_flags, align 4, !tbaa !203
  %2494 = and i32 %2493, 8
  %2495 = icmp eq i32 %2494, 0
  br i1 %2495, label %2504, label %2496

2496:                                             ; preds = %2492
  %2497 = call i64 @fwrite(ptr nonnull @.str.25, i64 15, i64 1, ptr nonnull %2490)
  %2498 = load ptr, ptr @dump_file, align 8, !tbaa !188
  call void @print_generic_expr(ptr noundef %2498, ptr noundef %2431, i32 noundef 0) #23
  %2499 = load ptr, ptr @dump_file, align 8, !tbaa !188
  %2500 = call i64 @fwrite(ptr nonnull @.str.26, i64 16, i64 1, ptr %2499)
  %2501 = load ptr, ptr @dump_file, align 8, !tbaa !188
  call void @print_generic_expr(ptr noundef %2501, ptr noundef %2412, i32 noundef 0) #23
  %2502 = load ptr, ptr @dump_file, align 8, !tbaa !188
  %2503 = call i32 @fputc(i32 10, ptr %2502)
  br label %2504

2504:                                             ; preds = %2496, %2492, %2489, %2421, %2379, %2376
  %2505 = phi ptr [ %2377, %2379 ], [ null, %2376 ], [ %2431, %2496 ], [ %2431, %2492 ], [ %2431, %2489 ], [ %2422, %2421 ]
  %2506 = icmp eq ptr %2505, null
  br i1 %2506, label %2558, label %2507, !prof !763

2507:                                             ; preds = %2504
  %2508 = call fastcc zeroext i8 @set_ssa_val_to(ptr noundef nonnull %584, ptr noundef nonnull %2505), !range !351
  %2509 = load i64, ptr %2505, align 8
  %2510 = and i64 %2509, 65535
  %2511 = icmp eq i64 %2510, 141
  br i1 %2511, label %2512, label %2627, !prof !766

2512:                                             ; preds = %2507
  %2513 = load ptr, ptr @vn_ssa_aux_table, align 8
  %2514 = getelementptr inbounds %struct.tree_ssa_name, ptr %2505, i64 0, i32 3
  %2515 = load i32, ptr %2514, align 8, !tbaa !199
  %2516 = zext i32 %2515 to i64
  %2517 = getelementptr inbounds %struct.VEC_vn_ssa_aux_t_base, ptr %2513, i64 0, i32 2, i64 %2516
  %2518 = load ptr, ptr %2517, align 8, !tbaa !188
  %2519 = icmp eq ptr %2518, null
  br i1 %2519, label %2520, label %2521, !prof !765

2520:                                             ; preds = %2512
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 180, ptr noundef nonnull @.str.1) #23
  br label %2521

2521:                                             ; preds = %2520, %2512
  %2522 = getelementptr inbounds %struct.vn_ssa_aux, ptr %2518, i64 0, i32 5
  %2523 = load i8, ptr %2522, align 4
  %2524 = and i8 %2523, 4
  %2525 = icmp eq i8 %2524, 0
  br i1 %2525, label %2627, label %2526, !prof !766

2526:                                             ; preds = %2521
  %2527 = load ptr, ptr @vn_ssa_aux_table, align 8
  %2528 = load i32, ptr %2514, align 8, !tbaa !199
  %2529 = zext i32 %2528 to i64
  %2530 = getelementptr inbounds %struct.VEC_vn_ssa_aux_t_base, ptr %2527, i64 0, i32 2, i64 %2529
  %2531 = load ptr, ptr %2530, align 8, !tbaa !188
  %2532 = icmp eq ptr %2531, null
  br i1 %2532, label %2533, label %2534

2533:                                             ; preds = %2526
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 180, ptr noundef nonnull @.str.1) #23
  br label %2534

2534:                                             ; preds = %2533, %2526
  %2535 = getelementptr inbounds %struct.vn_ssa_aux, ptr %2531, i64 0, i32 1
  %2536 = load ptr, ptr %2535, align 8, !tbaa !230
  %2537 = load ptr, ptr @vn_ssa_aux_table, align 8
  %2538 = getelementptr inbounds %struct.tree_ssa_name, ptr %584, i64 0, i32 3
  %2539 = load i32, ptr %2538, align 8, !tbaa !199
  %2540 = zext i32 %2539 to i64
  %2541 = getelementptr inbounds %struct.VEC_vn_ssa_aux_t_base, ptr %2537, i64 0, i32 2, i64 %2540
  %2542 = load ptr, ptr %2541, align 8, !tbaa !188
  %2543 = icmp eq ptr %2542, null
  br i1 %2543, label %2544, label %2545

2544:                                             ; preds = %2534
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 180, ptr noundef nonnull @.str.1) #23
  br label %2545

2545:                                             ; preds = %2544, %2534
  %2546 = getelementptr inbounds %struct.vn_ssa_aux, ptr %2542, i64 0, i32 1
  store ptr %2536, ptr %2546, align 8, !tbaa !230
  %2547 = load ptr, ptr @vn_ssa_aux_table, align 8
  %2548 = load i32, ptr %2538, align 8, !tbaa !199
  %2549 = zext i32 %2548 to i64
  %2550 = getelementptr inbounds %struct.VEC_vn_ssa_aux_t_base, ptr %2547, i64 0, i32 2, i64 %2549
  %2551 = load ptr, ptr %2550, align 8, !tbaa !188
  %2552 = icmp eq ptr %2551, null
  br i1 %2552, label %2553, label %2554

2553:                                             ; preds = %2545
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 180, ptr noundef nonnull @.str.1) #23
  br label %2554

2554:                                             ; preds = %2553, %2545
  %2555 = getelementptr inbounds %struct.vn_ssa_aux, ptr %2551, i64 0, i32 5
  %2556 = load i8, ptr %2555, align 4
  %2557 = or i8 %2556, 4
  store i8 %2557, ptr %2555, align 4
  br label %2627

2558:                                             ; preds = %2504
  %2559 = load ptr, ptr @VN_TOP, align 8, !tbaa !188
  %2560 = icmp eq ptr %2559, %584
  br i1 %2560, label %2569, label %2561, !prof !670

2561:                                             ; preds = %2558
  %2562 = load i64, ptr %584, align 8
  %2563 = and i64 %2562, 65535
  %2564 = icmp eq i64 %2563, 141
  br i1 %2564, label %2569, label %2565, !prof !671

2565:                                             ; preds = %2561
  %2566 = call zeroext i8 @is_gimple_min_invariant(ptr noundef nonnull %584) #23
  %2567 = icmp eq i8 %2566, 0
  br i1 %2567, label %2568, label %2569

2568:                                             ; preds = %2565
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1812, ptr noundef nonnull @.str.1) #23
  br label %2569

2569:                                             ; preds = %2568, %2565, %2561, %2558
  %2570 = load ptr, ptr @dump_file, align 8, !tbaa !188
  %2571 = icmp eq ptr %2570, null
  br i1 %2571, label %2582, label %2572, !prof !671

2572:                                             ; preds = %2569
  %2573 = load i32, ptr @dump_flags, align 4, !tbaa !203
  %2574 = and i32 %2573, 8
  %2575 = icmp eq i32 %2574, 0
  br i1 %2575, label %2582, label %2576

2576:                                             ; preds = %2572
  %2577 = call i64 @fwrite(ptr nonnull @.str.19, i64 24, i64 1, ptr nonnull %2570)
  %2578 = load ptr, ptr @dump_file, align 8, !tbaa !188
  call void @print_generic_expr(ptr noundef %2578, ptr noundef nonnull %584, i32 noundef 0) #23
  %2579 = load ptr, ptr @dump_file, align 8, !tbaa !188
  %2580 = call i64 @fwrite(ptr nonnull @.str.20, i64 4, i64 1, ptr %2579)
  %2581 = load ptr, ptr @dump_file, align 8, !tbaa !188
  call void @print_generic_expr(ptr noundef %2581, ptr noundef nonnull %584, i32 noundef 0) #23
  br label %2582

2582:                                             ; preds = %2576, %2572, %2569
  %2583 = load ptr, ptr @vn_ssa_aux_table, align 8
  %2584 = getelementptr inbounds %struct.tree_ssa_name, ptr %584, i64 0, i32 3
  %2585 = load i32, ptr %2584, align 8, !tbaa !199
  %2586 = zext i32 %2585 to i64
  %2587 = getelementptr inbounds %struct.VEC_vn_ssa_aux_t_base, ptr %2583, i64 0, i32 2, i64 %2586
  %2588 = load ptr, ptr %2587, align 8, !tbaa !188
  %2589 = icmp eq ptr %2588, null
  br i1 %2589, label %2590, label %2591, !prof !670

2590:                                             ; preds = %2582
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 180, ptr noundef nonnull @.str.1) #23
  br label %2591

2591:                                             ; preds = %2590, %2582
  %2592 = load ptr, ptr %2588, align 8, !tbaa !227
  %2593 = icmp eq ptr %2592, %584
  br i1 %2593, label %2614, label %2594, !prof !672

2594:                                             ; preds = %2591
  %2595 = call i32 @operand_equal_p(ptr noundef %2592, ptr noundef nonnull %584, i32 noundef 2) #23
  %2596 = icmp eq i32 %2595, 0
  br i1 %2596, label %2597, label %2614, !prof !673

2597:                                             ; preds = %2594
  %2598 = load ptr, ptr @vn_ssa_aux_table, align 8
  %2599 = load i32, ptr %2584, align 8, !tbaa !199
  %2600 = zext i32 %2599 to i64
  %2601 = getelementptr inbounds %struct.VEC_vn_ssa_aux_t_base, ptr %2598, i64 0, i32 2, i64 %2600
  %2602 = load ptr, ptr %2601, align 8, !tbaa !188
  %2603 = icmp eq ptr %2602, null
  br i1 %2603, label %2604, label %2605, !prof !674

2604:                                             ; preds = %2597
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 180, ptr noundef nonnull @.str.1) #23
  br label %2605

2605:                                             ; preds = %2604, %2597
  store ptr %584, ptr %2602, align 8, !tbaa !227
  %2606 = load ptr, ptr @dump_file, align 8, !tbaa !188
  %2607 = icmp eq ptr %2606, null
  br i1 %2607, label %2623, label %2608, !prof !673

2608:                                             ; preds = %2605
  %2609 = load i32, ptr @dump_flags, align 4, !tbaa !203
  %2610 = and i32 %2609, 8
  %2611 = icmp eq i32 %2610, 0
  br i1 %2611, label %2623, label %2612

2612:                                             ; preds = %2608
  %2613 = call i64 @fwrite(ptr nonnull @.str.21, i64 11, i64 1, ptr nonnull %2606)
  br label %2623

2614:                                             ; preds = %2594, %2591
  %2615 = load ptr, ptr @dump_file, align 8, !tbaa !188
  %2616 = icmp eq ptr %2615, null
  br i1 %2616, label %2623, label %2617, !prof !486

2617:                                             ; preds = %2614
  %2618 = load i32, ptr @dump_flags, align 4, !tbaa !203
  %2619 = and i32 %2618, 8
  %2620 = icmp eq i32 %2619, 0
  br i1 %2620, label %2623, label %2621

2621:                                             ; preds = %2617
  %2622 = call i32 @fputc(i32 10, ptr nonnull %2615)
  br label %2623

2623:                                             ; preds = %2621, %2617, %2614, %2612, %2608, %2605
  %2624 = phi i8 [ 1, %2612 ], [ 1, %2608 ], [ 1, %2605 ], [ 0, %2621 ], [ 0, %2617 ], [ 0, %2614 ]
  %2625 = load ptr, ptr %2, align 8, !tbaa !188
  %2626 = call ptr @vn_reference_insert(ptr noundef %2347, ptr noundef nonnull %584, ptr noundef %2625)
  br label %2627

2627:                                             ; preds = %2507, %2521, %2554, %2623
  %2628 = phi i8 [ %2508, %2554 ], [ %2508, %2521 ], [ %2508, %2507 ], [ %2624, %2623 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #23
  br label %2984

2629:                                             ; preds = %2194
  %2630 = load i32, ptr %5, align 8
  %2631 = trunc i32 %2630 to i8
  switch i8 %2631, label %2634 [
    i8 6, label %2632
    i8 1, label %2632
    i8 8, label %2635
  ], !prof !767

2632:                                             ; preds = %2629, %2629
  %2633 = lshr i32 %2630, 16
  br label %2635

2634:                                             ; preds = %2629
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 1446, ptr noundef nonnull @.str.1) #23
  br label %2635

2635:                                             ; preds = %2634, %2632, %2629
  %2636 = phi i32 [ %2633, %2632 ], [ 0, %2634 ], [ 59, %2629 ]
  %2637 = zext nneg i32 %2636 to i64
  %2638 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %2637
  %2639 = load i8, ptr %2638, align 1, !tbaa !199
  %2640 = icmp eq i8 %2639, 3
  br i1 %2640, label %2641, label %2661, !prof !768

2641:                                             ; preds = %2635
  %2642 = load i32, ptr %5, align 8
  %2643 = and i32 %2642, 255
  %2644 = add nsw i32 %2643, -1
  %2645 = icmp ult i32 %2644, 9
  tail call void @llvm.assume(i1 %2645)
  %2646 = zext nneg i32 %2643 to i64
  %2647 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %2646
  %2648 = load i32, ptr %2647, align 4, !tbaa !203
  %2649 = zext i32 %2648 to i64
  %2650 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %2649
  %2651 = load i64, ptr %2650, align 8, !tbaa !235
  %2652 = icmp eq i64 %2651, 0
  br i1 %2652, label %2653, label %2654, !prof !436

2653:                                             ; preds = %2641
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 1622, ptr noundef nonnull @.str.1) #23
  br label %2654

2654:                                             ; preds = %2653, %2641
  %2655 = getelementptr inbounds i8, ptr %5, i64 %2651
  %2656 = getelementptr inbounds ptr, ptr %2655, i64 1
  %2657 = load ptr, ptr %2656, align 8, !tbaa !188
  %2658 = load i64, ptr %2657, align 8
  %2659 = trunc i64 %2658 to i32
  %2660 = and i32 %2659, 65535
  br label %2661

2661:                                             ; preds = %2635, %2654
  %2662 = phi i32 [ %2660, %2654 ], [ %2636, %2635 ]
  %2663 = icmp eq i32 %2662, 121
  br i1 %2663, label %2664, label %2666, !prof !768

2664:                                             ; preds = %2661
  %2665 = tail call fastcc zeroext i8 @visit_unary_op(ptr noundef nonnull %584, ptr noundef nonnull %5), !range !351
  br label %2984

2666:                                             ; preds = %2661, %2194
  %2667 = tail call fastcc zeroext i8 @defs_to_varying(ptr noundef %5), !range !351
  br label %2984

2668:                                             ; preds = %2076
  %2669 = tail call fastcc zeroext i8 @defs_to_varying(ptr noundef %5), !range !351
  br label %2984

2670:                                             ; preds = %1977
  %2671 = tail call fastcc zeroext i8 @defs_to_varying(ptr noundef %5), !range !351
  br label %2984

2672:                                             ; preds = %569
  %2673 = zext nneg i32 %571 to i64
  %2674 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %2673
  %2675 = load i32, ptr %2674, align 4, !tbaa !203
  %2676 = zext i32 %2675 to i64
  %2677 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %2676
  %2678 = load i64, ptr %2677, align 8, !tbaa !235
  %2679 = icmp eq i64 %2678, 0
  br i1 %2679, label %2680, label %2681, !prof !769

2680:                                             ; preds = %2672
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 1622, ptr noundef nonnull @.str.1) #23
  br label %2681

2681:                                             ; preds = %2680, %2672
  %2682 = getelementptr inbounds i8, ptr %5, i64 %2678
  %2683 = load ptr, ptr %2682, align 8, !tbaa !188
  %2684 = load i32, ptr %5, align 8
  %2685 = and i32 %2684, 255
  %2686 = icmp eq i32 %2685, 6
  br i1 %2686, label %2687, label %2806, !prof !737

2687:                                             ; preds = %2681
  %2688 = lshr i32 %2684, 16
  %2689 = zext nneg i32 %2688 to i64
  %2690 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %2689
  %2691 = load i8, ptr %2690, align 1, !tbaa !199
  %2692 = icmp eq i8 %2691, 3
  br i1 %2692, label %2693, label %2709, !prof !738

2693:                                             ; preds = %2687
  %2694 = zext nneg i32 %2685 to i64
  %2695 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %2694
  %2696 = load i32, ptr %2695, align 4, !tbaa !203
  %2697 = zext i32 %2696 to i64
  %2698 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %2697
  %2699 = load i64, ptr %2698, align 8, !tbaa !235
  %2700 = icmp eq i64 %2699, 0
  br i1 %2700, label %2701, label %2702, !prof !739

2701:                                             ; preds = %2693
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 1622, ptr noundef nonnull @.str.1) #23
  br label %2702

2702:                                             ; preds = %2701, %2693
  %2703 = getelementptr inbounds i8, ptr %5, i64 %2699
  %2704 = getelementptr inbounds ptr, ptr %2703, i64 1
  %2705 = load ptr, ptr %2704, align 8, !tbaa !188
  %2706 = load i64, ptr %2705, align 8
  %2707 = trunc i64 %2706 to i32
  %2708 = and i32 %2707, 65535
  br label %2709

2709:                                             ; preds = %2702, %2687
  %2710 = phi i32 [ %2708, %2702 ], [ %2688, %2687 ]
  %2711 = zext nneg i32 %2710 to i64
  %2712 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %2711
  %2713 = load i8, ptr %2712, align 1, !tbaa !199
  switch i8 %2713, label %2805 [
    i8 2, label %2714
    i8 1, label %2735
    i8 3, label %2784
  ], !prof !740

2714:                                             ; preds = %2709
  %2715 = load i32, ptr %5, align 8
  %2716 = and i32 %2715, 255
  %2717 = add nsw i32 %2716, -10
  %2718 = icmp ult i32 %2717, -9
  br i1 %2718, label %2732, label %2719, !prof !695

2719:                                             ; preds = %2714
  %2720 = zext nneg i32 %2716 to i64
  %2721 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %2720
  %2722 = load i32, ptr %2721, align 4, !tbaa !203
  %2723 = zext i32 %2722 to i64
  %2724 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %2723
  %2725 = load i64, ptr %2724, align 8, !tbaa !235
  %2726 = icmp eq i64 %2725, 0
  br i1 %2726, label %2727, label %2728, !prof !695

2727:                                             ; preds = %2719
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 1622, ptr noundef nonnull @.str.1) #23
  br label %2728

2728:                                             ; preds = %2727, %2719
  %2729 = getelementptr inbounds i8, ptr %5, i64 %2725
  %2730 = getelementptr inbounds ptr, ptr %2729, i64 1
  %2731 = load ptr, ptr %2730, align 8, !tbaa !188
  br label %2732

2732:                                             ; preds = %2728, %2714
  %2733 = phi ptr [ %2731, %2728 ], [ null, %2714 ]
  %2734 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef %2733) #23
  br label %2806

2735:                                             ; preds = %2709
  %2736 = load i32, ptr %5, align 8
  %2737 = and i32 %2736, 255
  %2738 = add nsw i32 %2737, -10
  %2739 = icmp ult i32 %2738, -9
  br i1 %2739, label %2753, label %2740, !prof !741

2740:                                             ; preds = %2735
  %2741 = zext nneg i32 %2737 to i64
  %2742 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %2741
  %2743 = load i32, ptr %2742, align 4, !tbaa !203
  %2744 = zext i32 %2743 to i64
  %2745 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %2744
  %2746 = load i64, ptr %2745, align 8, !tbaa !235
  %2747 = icmp eq i64 %2746, 0
  br i1 %2747, label %2748, label %2749, !prof !741

2748:                                             ; preds = %2740
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 1622, ptr noundef nonnull @.str.1) #23
  br label %2749

2749:                                             ; preds = %2748, %2740
  %2750 = getelementptr inbounds i8, ptr %5, i64 %2746
  %2751 = getelementptr inbounds ptr, ptr %2750, i64 1
  %2752 = load ptr, ptr %2751, align 8, !tbaa !188
  br label %2753

2753:                                             ; preds = %2749, %2735
  %2754 = phi ptr [ %2752, %2749 ], [ null, %2735 ]
  %2755 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef %2754) #23
  %2756 = icmp eq i8 %2755, 0
  br i1 %2756, label %2757, label %2806, !prof !742

2757:                                             ; preds = %2753
  %2758 = getelementptr inbounds %struct.gimple_statement_base, ptr %5, i64 0, i32 3
  %2759 = load i32, ptr %2758, align 4, !tbaa !199
  %2760 = icmp ugt i32 %2759, 2
  br i1 %2760, label %2761, label %2779, !prof !743

2761:                                             ; preds = %2757
  %2762 = load i32, ptr %5, align 8
  %2763 = and i32 %2762, 255
  %2764 = add nsw i32 %2763, -10
  %2765 = icmp ult i32 %2764, -9
  br i1 %2765, label %2779, label %2766, !prof !744

2766:                                             ; preds = %2761
  %2767 = zext nneg i32 %2763 to i64
  %2768 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %2767
  %2769 = load i32, ptr %2768, align 4, !tbaa !203
  %2770 = zext i32 %2769 to i64
  %2771 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %2770
  %2772 = load i64, ptr %2771, align 8, !tbaa !235
  %2773 = icmp eq i64 %2772, 0
  br i1 %2773, label %2774, label %2775, !prof !744

2774:                                             ; preds = %2766
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 1622, ptr noundef nonnull @.str.1) #23
  br label %2775

2775:                                             ; preds = %2774, %2766
  %2776 = getelementptr inbounds i8, ptr %5, i64 %2772
  %2777 = getelementptr inbounds ptr, ptr %2776, i64 2
  %2778 = load ptr, ptr %2777, align 8, !tbaa !188
  br label %2779

2779:                                             ; preds = %2775, %2761, %2757
  %2780 = phi ptr [ null, %2757 ], [ %2778, %2775 ], [ null, %2761 ]
  %2781 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef %2780) #23
  %2782 = icmp ne i8 %2781, 0
  %2783 = zext i1 %2782 to i8
  br label %2806

2784:                                             ; preds = %2709
  %2785 = load i32, ptr %5, align 8
  %2786 = and i32 %2785, 255
  %2787 = add nsw i32 %2786, -10
  %2788 = icmp ult i32 %2787, -9
  br i1 %2788, label %2802, label %2789, !prof !739

2789:                                             ; preds = %2784
  %2790 = zext nneg i32 %2786 to i64
  %2791 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %2790
  %2792 = load i32, ptr %2791, align 4, !tbaa !203
  %2793 = zext i32 %2792 to i64
  %2794 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %2793
  %2795 = load i64, ptr %2794, align 8, !tbaa !235
  %2796 = icmp eq i64 %2795, 0
  br i1 %2796, label %2797, label %2798, !prof !739

2797:                                             ; preds = %2789
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 1622, ptr noundef nonnull @.str.1) #23
  br label %2798

2798:                                             ; preds = %2797, %2789
  %2799 = getelementptr inbounds i8, ptr %5, i64 %2795
  %2800 = getelementptr inbounds ptr, ptr %2799, i64 1
  %2801 = load ptr, ptr %2800, align 8, !tbaa !188
  br label %2802

2802:                                             ; preds = %2798, %2784
  %2803 = phi ptr [ %2801, %2798 ], [ null, %2784 ]
  %2804 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef %2803) #23
  br label %2806

2805:                                             ; preds = %2709
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2285, ptr noundef nonnull @.str.1) #23
  br label %2806

2806:                                             ; preds = %2681, %2732, %2753, %2779, %2802, %2805
  %2807 = phi i8 [ 0, %2805 ], [ %2804, %2802 ], [ %2734, %2732 ], [ 0, %2681 ], [ 1, %2753 ], [ %2783, %2779 ]
  %2808 = icmp eq i8 %2807, 0
  br i1 %2808, label %2826, label %2809, !prof !770

2809:                                             ; preds = %2806
  %2810 = load i64, ptr %2683, align 8
  %2811 = and i64 %2810, 65535
  %2812 = icmp eq i64 %2811, 141
  br i1 %2812, label %2813, label %2826

2813:                                             ; preds = %2809
  %2814 = load ptr, ptr @vn_ssa_aux_table, align 8
  %2815 = getelementptr inbounds %struct.tree_ssa_name, ptr %2683, i64 0, i32 3
  %2816 = load i32, ptr %2815, align 8, !tbaa !199
  %2817 = zext i32 %2816 to i64
  %2818 = getelementptr inbounds %struct.VEC_vn_ssa_aux_t_base, ptr %2814, i64 0, i32 2, i64 %2817
  %2819 = load ptr, ptr %2818, align 8, !tbaa !188
  %2820 = icmp eq ptr %2819, null
  br i1 %2820, label %2821, label %2822

2821:                                             ; preds = %2813
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 180, ptr noundef nonnull @.str.1) #23
  br label %2822

2822:                                             ; preds = %2813, %2821
  %2823 = getelementptr inbounds %struct.vn_ssa_aux, ptr %2819, i64 0, i32 5
  %2824 = load i8, ptr %2823, align 4
  %2825 = or i8 %2824, 4
  store i8 %2825, ptr %2823, align 4
  br label %2852

2826:                                             ; preds = %2809, %2806
  %2827 = load i64, ptr %2683, align 8
  %2828 = and i64 %2827, 65535
  %2829 = icmp eq i64 %2828, 141
  br i1 %2829, label %2830, label %2852, !prof !770

2830:                                             ; preds = %2826
  %2831 = load ptr, ptr @vn_ssa_aux_table, align 8
  %2832 = getelementptr inbounds %struct.tree_ssa_name, ptr %2683, i64 0, i32 3
  %2833 = load i32, ptr %2832, align 8, !tbaa !199
  %2834 = zext i32 %2833 to i64
  %2835 = getelementptr inbounds %struct.VEC_vn_ssa_aux_t_base, ptr %2831, i64 0, i32 2, i64 %2834
  %2836 = load ptr, ptr %2835, align 8, !tbaa !188
  %2837 = icmp eq ptr %2836, null
  br i1 %2837, label %2838, label %2839, !prof !769

2838:                                             ; preds = %2830
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 180, ptr noundef nonnull @.str.1) #23
  br label %2839

2839:                                             ; preds = %2830, %2838
  %2840 = getelementptr inbounds %struct.vn_ssa_aux, ptr %2836, i64 0, i32 5
  %2841 = load i8, ptr %2840, align 4
  %2842 = and i8 %2841, -5
  store i8 %2842, ptr %2840, align 4
  %2843 = load ptr, ptr @vn_ssa_aux_table, align 8
  %2844 = load i32, ptr %2832, align 8, !tbaa !199
  %2845 = zext i32 %2844 to i64
  %2846 = getelementptr inbounds %struct.VEC_vn_ssa_aux_t_base, ptr %2843, i64 0, i32 2, i64 %2845
  %2847 = load ptr, ptr %2846, align 8, !tbaa !188
  %2848 = icmp eq ptr %2847, null
  br i1 %2848, label %2849, label %2850, !prof !769

2849:                                             ; preds = %2839
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 180, ptr noundef nonnull @.str.1) #23
  br label %2850

2850:                                             ; preds = %2839, %2849
  %2851 = getelementptr inbounds %struct.vn_ssa_aux, ptr %2847, i64 0, i32 1
  store ptr null, ptr %2851, align 8, !tbaa !230
  br label %2852

2852:                                             ; preds = %2826, %2850, %2822
  %2853 = load i64, ptr %2683, align 8
  %2854 = and i64 %2853, 4259839
  %2855 = icmp eq i64 %2854, 4194445
  br i1 %2855, label %2856, label %2858, !prof !769

2856:                                             ; preds = %2852
  %2857 = tail call fastcc zeroext i8 @defs_to_varying(ptr noundef nonnull %5), !range !351
  br label %2984

2858:                                             ; preds = %2852
  %2859 = and i64 %2853, 65535
  %2860 = icmp eq i64 %2859, 141
  br i1 %2860, label %2861, label %2982, !prof !770

2861:                                             ; preds = %2858
  %2862 = tail call i32 @gimple_call_flags(ptr noundef nonnull %5) #23
  %2863 = and i32 %2862, 3
  %2864 = icmp eq i32 %2863, 0
  br i1 %2864, label %2867, label %2865, !prof !770

2865:                                             ; preds = %2861
  %2866 = tail call fastcc zeroext i8 @visit_reference_op_call(ptr noundef nonnull %2683, ptr noundef nonnull %5), !range !351
  br label %2984

2867:                                             ; preds = %2861
  %2868 = load i32, ptr %5, align 8
  %2869 = and i32 %2868, 255
  %2870 = add nsw i32 %2869, -10
  %2871 = icmp ult i32 %2870, -9
  br i1 %2871, label %2875, label %2872, !prof !675

2872:                                             ; preds = %2867
  %2873 = getelementptr inbounds %struct.gimple_statement_with_ops_base, ptr %5, i64 0, i32 1
  %2874 = load ptr, ptr %2873, align 8, !tbaa !199
  br label %2875

2875:                                             ; preds = %2872, %2867
  %2876 = phi ptr [ %2874, %2872 ], [ null, %2867 ]
  %2877 = icmp eq ptr %2876, null
  br i1 %2877, label %2882, label %2878, !prof !675

2878:                                             ; preds = %2875
  %2879 = getelementptr inbounds %struct.def_optype_d, ptr %2876, i64 0, i32 1
  %2880 = load ptr, ptr %2879, align 8, !tbaa !771
  %2881 = load ptr, ptr %2876, align 8, !tbaa !773
  br label %2882

2882:                                             ; preds = %2878, %2875
  %2883 = phi ptr [ %2881, %2878 ], [ %2876, %2875 ]
  %2884 = phi i8 [ 0, %2878 ], [ 1, %2875 ]
  %2885 = phi ptr [ %2880, %2878 ], [ null, %2875 ]
  br i1 %2877, label %2984, label %2886, !prof !774

2886:                                             ; preds = %2882, %2977
  %2887 = phi i8 [ %2971, %2977 ], [ 0, %2882 ]
  %2888 = phi ptr [ %2980, %2977 ], [ %2885, %2882 ]
  %2889 = phi i8 [ %2979, %2977 ], [ %2884, %2882 ]
  %2890 = phi ptr [ %2978, %2977 ], [ %2883, %2882 ]
  %2891 = load ptr, ptr %2888, align 8, !tbaa !188
  %2892 = load ptr, ptr @vn_ssa_aux_table, align 8
  %2893 = getelementptr inbounds %struct.tree_ssa_name, ptr %2891, i64 0, i32 3
  %2894 = load i32, ptr %2893, align 8, !tbaa !199
  %2895 = zext i32 %2894 to i64
  %2896 = getelementptr inbounds %struct.VEC_vn_ssa_aux_t_base, ptr %2892, i64 0, i32 2, i64 %2895
  %2897 = load ptr, ptr %2896, align 8, !tbaa !188
  %2898 = icmp eq ptr %2897, null
  br i1 %2898, label %2899, label %2900, !prof !775

2899:                                             ; preds = %2886
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 180, ptr noundef nonnull @.str.1) #23
  br label %2900

2900:                                             ; preds = %2899, %2886
  %2901 = getelementptr inbounds %struct.vn_ssa_aux, ptr %2897, i64 0, i32 5
  %2902 = load i8, ptr %2901, align 4
  %2903 = or i8 %2902, 8
  store i8 %2903, ptr %2901, align 4
  %2904 = icmp eq ptr %2891, null
  br i1 %2904, label %2915, label %2905, !prof !670

2905:                                             ; preds = %2900
  %2906 = load ptr, ptr @VN_TOP, align 8, !tbaa !188
  %2907 = icmp eq ptr %2891, %2906
  br i1 %2907, label %2916, label %2908, !prof !670

2908:                                             ; preds = %2905
  %2909 = load i64, ptr %2891, align 8
  %2910 = and i64 %2909, 65535
  %2911 = icmp eq i64 %2910, 141
  br i1 %2911, label %2916, label %2912, !prof !671

2912:                                             ; preds = %2908
  %2913 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef nonnull %2891) #23
  %2914 = icmp eq i8 %2913, 0
  br i1 %2914, label %2915, label %2916

2915:                                             ; preds = %2912, %2900
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1812, ptr noundef nonnull @.str.1) #23
  br label %2916

2916:                                             ; preds = %2915, %2912, %2908, %2905
  %2917 = load ptr, ptr @dump_file, align 8, !tbaa !188
  %2918 = icmp eq ptr %2917, null
  br i1 %2918, label %2929, label %2919, !prof !671

2919:                                             ; preds = %2916
  %2920 = load i32, ptr @dump_flags, align 4, !tbaa !203
  %2921 = and i32 %2920, 8
  %2922 = icmp eq i32 %2921, 0
  br i1 %2922, label %2929, label %2923

2923:                                             ; preds = %2919
  %2924 = tail call i64 @fwrite(ptr nonnull @.str.19, i64 24, i64 1, ptr nonnull %2917)
  %2925 = load ptr, ptr @dump_file, align 8, !tbaa !188
  tail call void @print_generic_expr(ptr noundef %2925, ptr noundef %2891, i32 noundef 0) #23
  %2926 = load ptr, ptr @dump_file, align 8, !tbaa !188
  %2927 = tail call i64 @fwrite(ptr nonnull @.str.20, i64 4, i64 1, ptr %2926)
  %2928 = load ptr, ptr @dump_file, align 8, !tbaa !188
  tail call void @print_generic_expr(ptr noundef %2928, ptr noundef %2891, i32 noundef 0) #23
  br label %2929

2929:                                             ; preds = %2923, %2919, %2916
  %2930 = load ptr, ptr @vn_ssa_aux_table, align 8
  %2931 = load i32, ptr %2893, align 8, !tbaa !199
  %2932 = zext i32 %2931 to i64
  %2933 = getelementptr inbounds %struct.VEC_vn_ssa_aux_t_base, ptr %2930, i64 0, i32 2, i64 %2932
  %2934 = load ptr, ptr %2933, align 8, !tbaa !188
  %2935 = icmp eq ptr %2934, null
  br i1 %2935, label %2936, label %2937, !prof !670

2936:                                             ; preds = %2929
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 180, ptr noundef nonnull @.str.1) #23
  br label %2937

2937:                                             ; preds = %2936, %2929
  %2938 = load ptr, ptr %2934, align 8, !tbaa !227
  %2939 = icmp eq ptr %2938, %2891
  br i1 %2939, label %2960, label %2940, !prof !672

2940:                                             ; preds = %2937
  %2941 = tail call i32 @operand_equal_p(ptr noundef %2938, ptr noundef %2891, i32 noundef 2) #23
  %2942 = icmp eq i32 %2941, 0
  br i1 %2942, label %2943, label %2960, !prof !673

2943:                                             ; preds = %2940
  %2944 = load ptr, ptr @vn_ssa_aux_table, align 8
  %2945 = load i32, ptr %2893, align 8, !tbaa !199
  %2946 = zext i32 %2945 to i64
  %2947 = getelementptr inbounds %struct.VEC_vn_ssa_aux_t_base, ptr %2944, i64 0, i32 2, i64 %2946
  %2948 = load ptr, ptr %2947, align 8, !tbaa !188
  %2949 = icmp eq ptr %2948, null
  br i1 %2949, label %2950, label %2951, !prof !674

2950:                                             ; preds = %2943
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 180, ptr noundef nonnull @.str.1) #23
  br label %2951

2951:                                             ; preds = %2950, %2943
  store ptr %2891, ptr %2948, align 8, !tbaa !227
  %2952 = load ptr, ptr @dump_file, align 8, !tbaa !188
  %2953 = icmp eq ptr %2952, null
  br i1 %2953, label %2969, label %2954, !prof !673

2954:                                             ; preds = %2951
  %2955 = load i32, ptr @dump_flags, align 4, !tbaa !203
  %2956 = and i32 %2955, 8
  %2957 = icmp eq i32 %2956, 0
  br i1 %2957, label %2969, label %2958

2958:                                             ; preds = %2954
  %2959 = tail call i64 @fwrite(ptr nonnull @.str.21, i64 11, i64 1, ptr nonnull %2952)
  br label %2969

2960:                                             ; preds = %2940, %2937
  %2961 = load ptr, ptr @dump_file, align 8, !tbaa !188
  %2962 = icmp eq ptr %2961, null
  br i1 %2962, label %2969, label %2963, !prof !486

2963:                                             ; preds = %2960
  %2964 = load i32, ptr @dump_flags, align 4, !tbaa !203
  %2965 = and i32 %2964, 8
  %2966 = icmp eq i32 %2965, 0
  br i1 %2966, label %2969, label %2967

2967:                                             ; preds = %2963
  %2968 = tail call i32 @fputc(i32 10, ptr nonnull %2961)
  br label %2969

2969:                                             ; preds = %2967, %2963, %2960, %2958, %2954, %2951
  %2970 = phi i8 [ 1, %2958 ], [ 1, %2954 ], [ 1, %2951 ], [ 0, %2967 ], [ 0, %2963 ], [ 0, %2960 ]
  %2971 = or i8 %2970, %2887
  %2972 = icmp eq ptr %2890, null
  br i1 %2972, label %2977, label %2973, !prof !776

2973:                                             ; preds = %2969
  %2974 = getelementptr inbounds %struct.def_optype_d, ptr %2890, i64 0, i32 1
  %2975 = load ptr, ptr %2974, align 8, !tbaa !771
  %2976 = load ptr, ptr %2890, align 8, !tbaa !773
  br label %2977

2977:                                             ; preds = %2973, %2969
  %2978 = phi ptr [ %2976, %2973 ], [ %2890, %2969 ]
  %2979 = phi i8 [ %2889, %2973 ], [ 1, %2969 ]
  %2980 = phi ptr [ %2975, %2973 ], [ null, %2969 ]
  %2981 = icmp eq i8 %2979, 0
  br i1 %2981, label %2886, label %2984, !prof !777, !llvm.loop !778

2982:                                             ; preds = %2858
  %2983 = tail call fastcc zeroext i8 @defs_to_varying(ptr noundef nonnull %5), !range !351
  br label %2984

2984:                                             ; preds = %2977, %2882, %569, %2159, %2092, %2086, %2084, %1974, %1930, %1927, %535, %531, %528, %526, %522, %519, %320, %318, %178, %176, %61, %567, %43, %1801, %2670, %2668, %2666, %2664, %2627, %2326, %2021, %2041, %1499, %1486, %629, %2982, %2865, %2856
  %2985 = phi i8 [ %44, %43 ], [ %568, %567 ], [ %631, %629 ], [ %1490, %1486 ], [ %1500, %1499 ], [ %1802, %1801 ], [ %2022, %2021 ], [ %2043, %2041 ], [ %2669, %2668 ], [ %2667, %2666 ], [ %2665, %2664 ], [ %2628, %2627 ], [ %2327, %2326 ], [ %2671, %2670 ], [ %2857, %2856 ], [ %2866, %2865 ], [ %2983, %2982 ], [ %62, %61 ], [ %177, %176 ], [ %179, %178 ], [ %319, %318 ], [ %321, %320 ], [ 1, %526 ], [ 1, %522 ], [ 1, %519 ], [ 0, %535 ], [ 0, %531 ], [ 0, %528 ], [ %1976, %1974 ], [ %1924, %1930 ], [ %1924, %1927 ], [ %2085, %2084 ], [ %2087, %2086 ], [ %2093, %2092 ], [ %2160, %2159 ], [ 0, %569 ], [ 0, %2882 ], [ %2971, %2977 ]
  ret i8 %2985
}

declare void @htab_empty(ptr noundef) local_unnamed_addr #3

declare void @empty_alloc_pool(ptr noundef) local_unnamed_addr #3

declare void @statistics_histogram_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @htab_traverse(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal noundef i32 @copy_nary(ptr nocapture noundef readonly %0, ptr nocapture readnone %1) #13 !prof !187 {
  %3 = load ptr, ptr %0, align 8, !tbaa !188
  %4 = getelementptr inbounds %struct.vn_nary_op_s, ptr %3, i64 0, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = lshr i32 %5, 16
  %7 = sub nsw i32 4, %6
  %8 = sext i32 %7 to i64
  %9 = shl nsw i64 %8, 3
  %10 = sub nsw i64 64, %9
  %11 = load ptr, ptr @current_info, align 8, !tbaa !188
  %12 = getelementptr inbounds %struct.vn_tables_s, ptr %11, i64 0, i32 3, i32 5
  store i64 %10, ptr %12, align 8, !tbaa !445
  %13 = getelementptr inbounds %struct.vn_tables_s, ptr %11, i64 0, i32 3, i32 4
  %14 = load ptr, ptr %13, align 8, !tbaa !446
  %15 = getelementptr inbounds %struct.vn_tables_s, ptr %11, i64 0, i32 3, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !447
  %17 = ptrtoint ptr %14 to i64
  %18 = ptrtoint ptr %16 to i64
  %19 = sub i64 %17, %18
  %20 = icmp slt i64 %19, %10
  br i1 %20, label %21, label %24

21:                                               ; preds = %2
  %22 = getelementptr inbounds %struct.vn_tables_s, ptr %11, i64 0, i32 3
  %23 = trunc i64 %10 to i32
  tail call void @_obstack_newchunk(ptr noundef nonnull %22, i32 noundef %23) #23
  br label %24

24:                                               ; preds = %2, %21
  %25 = load ptr, ptr @current_info, align 8, !tbaa !188
  %26 = getelementptr inbounds %struct.vn_tables_s, ptr %25, i64 0, i32 3, i32 5
  %27 = load i64, ptr %26, align 8, !tbaa !445
  %28 = getelementptr inbounds %struct.vn_tables_s, ptr %25, i64 0, i32 3, i32 3
  %29 = load ptr, ptr %28, align 8, !tbaa !447
  %30 = getelementptr inbounds i8, ptr %29, i64 %27
  store ptr %30, ptr %28, align 8, !tbaa !447
  %31 = getelementptr inbounds %struct.vn_tables_s, ptr %25, i64 0, i32 3, i32 2
  %32 = load ptr, ptr %31, align 8, !tbaa !449
  %33 = icmp eq ptr %30, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %24
  %35 = getelementptr inbounds %struct.vn_tables_s, ptr %25, i64 0, i32 3, i32 10
  %36 = load i8, ptr %35, align 8
  %37 = or i8 %36, 2
  store i8 %37, ptr %35, align 8
  br label %38

38:                                               ; preds = %24, %34
  %39 = load ptr, ptr %31, align 8, !tbaa !449
  %40 = ptrtoint ptr %39 to i64
  store i64 %40, ptr %26, align 8, !tbaa !445
  %41 = load ptr, ptr %28, align 8, !tbaa !447
  %42 = ptrtoint ptr %41 to i64
  %43 = getelementptr inbounds %struct.vn_tables_s, ptr %25, i64 0, i32 3, i32 6
  %44 = load i32, ptr %43, align 8, !tbaa !450
  %45 = sext i32 %44 to i64
  %46 = add nsw i64 %45, %42
  %47 = xor i32 %44, -1
  %48 = sext i32 %47 to i64
  %49 = and i64 %46, %48
  %50 = inttoptr i64 %49 to ptr
  store ptr %50, ptr %28, align 8, !tbaa !447
  %51 = getelementptr inbounds %struct.vn_tables_s, ptr %25, i64 0, i32 3, i32 1
  %52 = load ptr, ptr %51, align 8, !tbaa !451
  %53 = ptrtoint ptr %52 to i64
  %54 = sub i64 %49, %53
  %55 = getelementptr inbounds %struct.vn_tables_s, ptr %25, i64 0, i32 3, i32 4
  %56 = load ptr, ptr %55, align 8, !tbaa !446
  %57 = ptrtoint ptr %56 to i64
  %58 = sub i64 %57, %53
  %59 = icmp sgt i64 %54, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %38
  store ptr %56, ptr %28, align 8, !tbaa !447
  br label %61

61:                                               ; preds = %38, %60
  %62 = load ptr, ptr %28, align 8, !tbaa !447
  store ptr %62, ptr %31, align 8, !tbaa !449
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %39, ptr align 8 %3, i64 %10, i1 false)
  %63 = load ptr, ptr %25, align 8, !tbaa !427
  %64 = getelementptr inbounds %struct.vn_nary_op_s, ptr %39, i64 0, i32 2
  %65 = load i32, ptr %64, align 8, !tbaa !415
  %66 = tail call ptr @htab_find_slot_with_hash(ptr noundef %63, ptr noundef %39, i32 noundef %65, i32 noundef 1) #23
  %67 = load ptr, ptr %66, align 8, !tbaa !188
  %68 = icmp eq ptr %67, null
  br i1 %68, label %70, label %69

69:                                               ; preds = %61
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2781, ptr noundef nonnull @.str.1) #23
  br label %70

70:                                               ; preds = %61, %69
  store ptr %39, ptr %66, align 8, !tbaa !188
  ret i32 1
}

; Function Attrs: cold nounwind uwtable
define internal noundef i32 @copy_phis(ptr nocapture noundef readonly %0, ptr nocapture readnone %1) #13 !prof !187 {
  %3 = load ptr, ptr %0, align 8, !tbaa !188
  %4 = load ptr, ptr @current_info, align 8, !tbaa !188
  %5 = getelementptr inbounds %struct.vn_tables_s, ptr %4, i64 0, i32 4
  %6 = load ptr, ptr %5, align 8, !tbaa !485
  %7 = tail call ptr @pool_alloc(ptr noundef %6) #23
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false)
  %8 = getelementptr inbounds %struct.vn_phi_s, ptr %3, i64 0, i32 2
  store ptr null, ptr %8, align 8, !tbaa !626
  %9 = load ptr, ptr @current_info, align 8, !tbaa !188
  %10 = getelementptr inbounds %struct.vn_tables_s, ptr %9, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !483
  %12 = getelementptr inbounds %struct.vn_phi_s, ptr %7, i64 0, i32 1
  %13 = load i32, ptr %12, align 4, !tbaa !621
  %14 = tail call ptr @htab_find_slot_with_hash(ptr noundef %11, ptr noundef %7, i32 noundef %13, i32 noundef 1) #23
  store ptr %7, ptr %14, align 8, !tbaa !188
  ret i32 1
}

; Function Attrs: cold nounwind uwtable
define internal noundef i32 @copy_references(ptr nocapture noundef readonly %0, ptr nocapture readnone %1) #13 !prof !187 {
  %3 = load ptr, ptr %0, align 8, !tbaa !188
  %4 = load ptr, ptr @current_info, align 8, !tbaa !188
  %5 = getelementptr inbounds %struct.vn_tables_s, ptr %4, i64 0, i32 5
  %6 = load ptr, ptr %5, align 8, !tbaa !395
  %7 = tail call ptr @pool_alloc(ptr noundef %6) #23
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull align 8 dereferenceable(48) %3, i64 48, i1 false)
  %8 = getelementptr inbounds %struct.vn_reference_s, ptr %3, i64 0, i32 5
  store ptr null, ptr %8, align 8, !tbaa !263
  %9 = load ptr, ptr @current_info, align 8, !tbaa !188
  %10 = getelementptr inbounds %struct.vn_tables_s, ptr %9, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !346
  %12 = getelementptr inbounds %struct.vn_reference_s, ptr %7, i64 0, i32 1
  %13 = load i32, ptr %12, align 4, !tbaa !280
  %14 = tail call ptr @htab_find_slot_with_hash(ptr noundef %11, ptr noundef %7, i32 noundef %13, i32 noundef 1) #23
  %15 = load ptr, ptr %14, align 8, !tbaa !188
  %16 = icmp eq ptr %15, null
  br i1 %16, label %23, label %17

17:                                               ; preds = %2
  %18 = getelementptr inbounds %struct.vn_reference_s, ptr %15, i64 0, i32 5
  %19 = load ptr, ptr %18, align 8, !tbaa !188
  %20 = icmp eq ptr %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %17
  tail call void @free(ptr noundef %19)
  br label %22

22:                                               ; preds = %17, %21
  store ptr null, ptr %18, align 8, !tbaa !188
  br label %23

23:                                               ; preds = %22, %2
  store ptr %7, ptr %14, align 8, !tbaa !188
  ret i32 1
}

declare void @print_gimple_stmt(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc noundef zeroext i8 @set_ssa_val_to(ptr noundef %0, ptr noundef %1) unnamed_addr #9 !prof !779 !PGOFuncName !780 {
  %3 = icmp eq ptr %0, %1
  br i1 %3, label %9, label %4, !prof !781

4:                                                ; preds = %2
  %5 = load i64, ptr %1, align 8
  %6 = and i64 %5, 4259839
  %7 = icmp eq i64 %6, 4194445
  %8 = select i1 %7, ptr %0, ptr %1, !prof !573
  br label %9

9:                                                ; preds = %4, %2
  %10 = phi ptr [ %1, %2 ], [ %8, %4 ]
  %11 = icmp eq ptr %10, null
  br i1 %11, label %22, label %12, !prof !670

12:                                               ; preds = %9
  %13 = load ptr, ptr @VN_TOP, align 8, !tbaa !188
  %14 = icmp eq ptr %10, %13
  br i1 %14, label %23, label %15, !prof !670

15:                                               ; preds = %12
  %16 = load i64, ptr %10, align 8
  %17 = and i64 %16, 65535
  %18 = icmp eq i64 %17, 141
  br i1 %18, label %23, label %19, !prof !671

19:                                               ; preds = %15
  %20 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef nonnull %10) #23
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %19, %9
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1812, ptr noundef nonnull @.str.1) #23
  br label %23

23:                                               ; preds = %12, %15, %19, %22
  %24 = load ptr, ptr @dump_file, align 8, !tbaa !188
  %25 = icmp eq ptr %24, null
  br i1 %25, label %36, label %26, !prof !671

26:                                               ; preds = %23
  %27 = load i32, ptr @dump_flags, align 4, !tbaa !203
  %28 = and i32 %27, 8
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %36, label %30

30:                                               ; preds = %26
  %31 = tail call i64 @fwrite(ptr nonnull @.str.19, i64 24, i64 1, ptr nonnull %24)
  %32 = load ptr, ptr @dump_file, align 8, !tbaa !188
  tail call void @print_generic_expr(ptr noundef %32, ptr noundef %0, i32 noundef 0) #23
  %33 = load ptr, ptr @dump_file, align 8, !tbaa !188
  %34 = tail call i64 @fwrite(ptr nonnull @.str.20, i64 4, i64 1, ptr %33)
  %35 = load ptr, ptr @dump_file, align 8, !tbaa !188
  tail call void @print_generic_expr(ptr noundef %35, ptr noundef %10, i32 noundef 0) #23
  br label %36

36:                                               ; preds = %30, %26, %23
  %37 = load ptr, ptr @vn_ssa_aux_table, align 8
  %38 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 3
  %39 = load i32, ptr %38, align 8, !tbaa !199
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds %struct.VEC_vn_ssa_aux_t_base, ptr %37, i64 0, i32 2, i64 %40
  %42 = load ptr, ptr %41, align 8, !tbaa !188
  %43 = icmp eq ptr %42, null
  br i1 %43, label %44, label %45, !prof !670

44:                                               ; preds = %36
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 180, ptr noundef nonnull @.str.1) #23
  br label %45

45:                                               ; preds = %36, %44
  %46 = load ptr, ptr %42, align 8, !tbaa !227
  %47 = icmp eq ptr %46, %10
  br i1 %47, label %68, label %48, !prof !672

48:                                               ; preds = %45
  %49 = tail call i32 @operand_equal_p(ptr noundef %46, ptr noundef %10, i32 noundef 2) #23
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %68, !prof !673

51:                                               ; preds = %48
  %52 = load ptr, ptr @vn_ssa_aux_table, align 8
  %53 = load i32, ptr %38, align 8, !tbaa !199
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds %struct.VEC_vn_ssa_aux_t_base, ptr %52, i64 0, i32 2, i64 %54
  %56 = load ptr, ptr %55, align 8, !tbaa !188
  %57 = icmp eq ptr %56, null
  br i1 %57, label %58, label %59, !prof !674

58:                                               ; preds = %51
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 180, ptr noundef nonnull @.str.1) #23
  br label %59

59:                                               ; preds = %51, %58
  store ptr %10, ptr %56, align 8, !tbaa !227
  %60 = load ptr, ptr @dump_file, align 8, !tbaa !188
  %61 = icmp eq ptr %60, null
  br i1 %61, label %77, label %62, !prof !673

62:                                               ; preds = %59
  %63 = load i32, ptr @dump_flags, align 4, !tbaa !203
  %64 = and i32 %63, 8
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %77, label %66

66:                                               ; preds = %62
  %67 = tail call i64 @fwrite(ptr nonnull @.str.21, i64 11, i64 1, ptr nonnull %60)
  br label %77

68:                                               ; preds = %48, %45
  %69 = load ptr, ptr @dump_file, align 8, !tbaa !188
  %70 = icmp eq ptr %69, null
  br i1 %70, label %77, label %71, !prof !486

71:                                               ; preds = %68
  %72 = load i32, ptr @dump_flags, align 4, !tbaa !203
  %73 = and i32 %72, 8
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %77, label %75

75:                                               ; preds = %71
  %76 = tail call i32 @fputc(i32 10, ptr nonnull %69)
  br label %77

77:                                               ; preds = %68, %71, %75, %59, %62, %66
  %78 = phi i8 [ 1, %66 ], [ 1, %62 ], [ 1, %59 ], [ 0, %75 ], [ 0, %71 ], [ 0, %68 ]
  ret i8 %78
}

declare zeroext i8 @stmt_could_throw_p(ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @defs_to_varying(ptr nocapture noundef readonly %0) unnamed_addr #9 !prof !782 !PGOFuncName !783 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 255
  %4 = add nsw i32 %3, -10
  %5 = icmp ult i32 %4, -9
  br i1 %5, label %9, label %6, !prof !675

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.gimple_statement_with_ops_base, ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !199
  br label %9

9:                                                ; preds = %6, %1
  %10 = phi ptr [ %8, %6 ], [ null, %1 ]
  %11 = icmp eq ptr %10, null
  br i1 %11, label %16, label %12, !prof !675

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.def_optype_d, ptr %10, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !771
  %15 = load ptr, ptr %10, align 8, !tbaa !773
  br label %16

16:                                               ; preds = %9, %12
  %17 = phi ptr [ %15, %12 ], [ %10, %9 ]
  %18 = phi i8 [ 0, %12 ], [ 1, %9 ]
  %19 = phi ptr [ %14, %12 ], [ null, %9 ]
  br i1 %11, label %116, label %20, !prof !774

20:                                               ; preds = %16, %111
  %21 = phi i8 [ %105, %111 ], [ 0, %16 ]
  %22 = phi ptr [ %114, %111 ], [ %19, %16 ]
  %23 = phi i8 [ %113, %111 ], [ %18, %16 ]
  %24 = phi ptr [ %112, %111 ], [ %17, %16 ]
  %25 = load ptr, ptr %22, align 8, !tbaa !188
  %26 = load ptr, ptr @vn_ssa_aux_table, align 8
  %27 = getelementptr inbounds %struct.tree_ssa_name, ptr %25, i64 0, i32 3
  %28 = load i32, ptr %27, align 8, !tbaa !199
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds %struct.VEC_vn_ssa_aux_t_base, ptr %26, i64 0, i32 2, i64 %29
  %31 = load ptr, ptr %30, align 8, !tbaa !188
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %34, !prof !775

33:                                               ; preds = %20
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 180, ptr noundef nonnull @.str.1) #23
  br label %34

34:                                               ; preds = %20, %33
  %35 = getelementptr inbounds %struct.vn_ssa_aux, ptr %31, i64 0, i32 5
  %36 = load i8, ptr %35, align 4
  %37 = or i8 %36, 8
  store i8 %37, ptr %35, align 4
  %38 = icmp eq ptr %25, null
  br i1 %38, label %49, label %39, !prof !670

39:                                               ; preds = %34
  %40 = load ptr, ptr @VN_TOP, align 8, !tbaa !188
  %41 = icmp eq ptr %25, %40
  br i1 %41, label %50, label %42, !prof !670

42:                                               ; preds = %39
  %43 = load i64, ptr %25, align 8
  %44 = and i64 %43, 65535
  %45 = icmp eq i64 %44, 141
  br i1 %45, label %50, label %46, !prof !671

46:                                               ; preds = %42
  %47 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef nonnull %25) #23
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %46, %34
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1812, ptr noundef nonnull @.str.1) #23
  br label %50

50:                                               ; preds = %49, %46, %42, %39
  %51 = load ptr, ptr @dump_file, align 8, !tbaa !188
  %52 = icmp eq ptr %51, null
  br i1 %52, label %63, label %53, !prof !671

53:                                               ; preds = %50
  %54 = load i32, ptr @dump_flags, align 4, !tbaa !203
  %55 = and i32 %54, 8
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %63, label %57

57:                                               ; preds = %53
  %58 = tail call i64 @fwrite(ptr nonnull @.str.19, i64 24, i64 1, ptr nonnull %51)
  %59 = load ptr, ptr @dump_file, align 8, !tbaa !188
  tail call void @print_generic_expr(ptr noundef %59, ptr noundef %25, i32 noundef 0) #23
  %60 = load ptr, ptr @dump_file, align 8, !tbaa !188
  %61 = tail call i64 @fwrite(ptr nonnull @.str.20, i64 4, i64 1, ptr %60)
  %62 = load ptr, ptr @dump_file, align 8, !tbaa !188
  tail call void @print_generic_expr(ptr noundef %62, ptr noundef %25, i32 noundef 0) #23
  br label %63

63:                                               ; preds = %57, %53, %50
  %64 = load ptr, ptr @vn_ssa_aux_table, align 8
  %65 = load i32, ptr %27, align 8, !tbaa !199
  %66 = zext i32 %65 to i64
  %67 = getelementptr inbounds %struct.VEC_vn_ssa_aux_t_base, ptr %64, i64 0, i32 2, i64 %66
  %68 = load ptr, ptr %67, align 8, !tbaa !188
  %69 = icmp eq ptr %68, null
  br i1 %69, label %70, label %71, !prof !670

70:                                               ; preds = %63
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 180, ptr noundef nonnull @.str.1) #23
  br label %71

71:                                               ; preds = %70, %63
  %72 = load ptr, ptr %68, align 8, !tbaa !227
  %73 = icmp eq ptr %72, %25
  br i1 %73, label %94, label %74, !prof !672

74:                                               ; preds = %71
  %75 = tail call i32 @operand_equal_p(ptr noundef %72, ptr noundef %25, i32 noundef 2) #23
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %94, !prof !673

77:                                               ; preds = %74
  %78 = load ptr, ptr @vn_ssa_aux_table, align 8
  %79 = load i32, ptr %27, align 8, !tbaa !199
  %80 = zext i32 %79 to i64
  %81 = getelementptr inbounds %struct.VEC_vn_ssa_aux_t_base, ptr %78, i64 0, i32 2, i64 %80
  %82 = load ptr, ptr %81, align 8, !tbaa !188
  %83 = icmp eq ptr %82, null
  br i1 %83, label %84, label %85, !prof !674

84:                                               ; preds = %77
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 180, ptr noundef nonnull @.str.1) #23
  br label %85

85:                                               ; preds = %84, %77
  store ptr %25, ptr %82, align 8, !tbaa !227
  %86 = load ptr, ptr @dump_file, align 8, !tbaa !188
  %87 = icmp eq ptr %86, null
  br i1 %87, label %103, label %88, !prof !673

88:                                               ; preds = %85
  %89 = load i32, ptr @dump_flags, align 4, !tbaa !203
  %90 = and i32 %89, 8
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %103, label %92

92:                                               ; preds = %88
  %93 = tail call i64 @fwrite(ptr nonnull @.str.21, i64 11, i64 1, ptr nonnull %86)
  br label %103

94:                                               ; preds = %74, %71
  %95 = load ptr, ptr @dump_file, align 8, !tbaa !188
  %96 = icmp eq ptr %95, null
  br i1 %96, label %103, label %97, !prof !486

97:                                               ; preds = %94
  %98 = load i32, ptr @dump_flags, align 4, !tbaa !203
  %99 = and i32 %98, 8
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %103, label %101

101:                                              ; preds = %97
  %102 = tail call i32 @fputc(i32 10, ptr nonnull %95)
  br label %103

103:                                              ; preds = %85, %88, %92, %94, %97, %101
  %104 = phi i8 [ 1, %92 ], [ 1, %88 ], [ 1, %85 ], [ 0, %101 ], [ 0, %97 ], [ 0, %94 ]
  %105 = or i8 %104, %21
  %106 = icmp eq ptr %24, null
  br i1 %106, label %111, label %107, !prof !776

107:                                              ; preds = %103
  %108 = getelementptr inbounds %struct.def_optype_d, ptr %24, i64 0, i32 1
  %109 = load ptr, ptr %108, align 8, !tbaa !771
  %110 = load ptr, ptr %24, align 8, !tbaa !773
  br label %111

111:                                              ; preds = %103, %107
  %112 = phi ptr [ %110, %107 ], [ %24, %103 ]
  %113 = phi i8 [ %23, %107 ], [ 1, %103 ]
  %114 = phi ptr [ %109, %107 ], [ null, %103 ]
  %115 = icmp eq i8 %113, 0
  br i1 %115, label %20, label %116, !prof !777, !llvm.loop !778

116:                                              ; preds = %111, %16
  %117 = phi i8 [ 0, %16 ], [ %105, %111 ]
  ret i8 %117
}

declare zeroext i8 @gimple_assign_copy_p(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc noundef zeroext i8 @visit_copy(ptr noundef %0, ptr noundef %1) unnamed_addr #11 !prof !784 !PGOFuncName !785 {
  %3 = load i64, ptr %1, align 8
  %4 = and i64 %3, 65535
  %5 = icmp eq i64 %4, 141
  br i1 %5, label %6, label %32, !prof !786

6:                                                ; preds = %2, %27
  %7 = phi ptr [ %28, %27 ], [ %1, %2 ]
  %8 = load ptr, ptr @vn_ssa_aux_table, align 8
  %9 = getelementptr inbounds %struct.tree_ssa_name, ptr %7, i64 0, i32 3
  %10 = load i32, ptr %9, align 8, !tbaa !199
  %11 = zext i32 %10 to i64
  %12 = getelementptr inbounds %struct.VEC_vn_ssa_aux_t_base, ptr %8, i64 0, i32 2, i64 %11
  %13 = load ptr, ptr %12, align 8, !tbaa !188
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %16, !prof !787

15:                                               ; preds = %6
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 180, ptr noundef nonnull @.str.1) #23
  br label %16

16:                                               ; preds = %6, %15
  %17 = load ptr, ptr %13, align 8, !tbaa !227
  %18 = icmp eq ptr %17, %7
  br i1 %18, label %32, label %19, !prof !788

19:                                               ; preds = %16
  %20 = load ptr, ptr @vn_ssa_aux_table, align 8
  %21 = load i32, ptr %9, align 8, !tbaa !199
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds %struct.VEC_vn_ssa_aux_t_base, ptr %20, i64 0, i32 2, i64 %22
  %24 = load ptr, ptr %23, align 8, !tbaa !188
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %27, !prof !789

26:                                               ; preds = %19
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 180, ptr noundef nonnull @.str.1) #23
  br label %27

27:                                               ; preds = %19, %26
  %28 = load ptr, ptr %24, align 8, !tbaa !227
  %29 = load i64, ptr %28, align 8
  %30 = and i64 %29, 65535
  %31 = icmp eq i64 %30, 141
  br i1 %31, label %6, label %32, !prof !790, !llvm.loop !791

32:                                               ; preds = %16, %27, %2
  %33 = phi ptr [ %1, %2 ], [ %7, %16 ], [ %28, %27 ]
  %34 = load i64, ptr %33, align 8
  %35 = and i64 %34, 65535
  %36 = icmp eq i64 %35, 141
  br i1 %36, label %37, label %82, !prof !792

37:                                               ; preds = %32
  %38 = load ptr, ptr @vn_ssa_aux_table, align 8
  %39 = getelementptr inbounds %struct.tree_ssa_name, ptr %33, i64 0, i32 3
  %40 = load i32, ptr %39, align 8, !tbaa !199
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds %struct.VEC_vn_ssa_aux_t_base, ptr %38, i64 0, i32 2, i64 %41
  %43 = load ptr, ptr %42, align 8, !tbaa !188
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %46, !prof !793

45:                                               ; preds = %37
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 180, ptr noundef nonnull @.str.1) #23
  br label %46

46:                                               ; preds = %37, %45
  %47 = getelementptr inbounds %struct.vn_ssa_aux, ptr %43, i64 0, i32 5
  %48 = load i8, ptr %47, align 4
  %49 = and i8 %48, 4
  %50 = load ptr, ptr @vn_ssa_aux_table, align 8
  %51 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 3
  %52 = load i32, ptr %51, align 8, !tbaa !199
  %53 = zext i32 %52 to i64
  %54 = getelementptr inbounds %struct.VEC_vn_ssa_aux_t_base, ptr %50, i64 0, i32 2, i64 %53
  %55 = load ptr, ptr %54, align 8, !tbaa !188
  %56 = icmp eq ptr %55, null
  br i1 %56, label %57, label %58, !prof !793

57:                                               ; preds = %46
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 180, ptr noundef nonnull @.str.1) #23
  br label %58

58:                                               ; preds = %46, %57
  %59 = getelementptr inbounds %struct.vn_ssa_aux, ptr %55, i64 0, i32 5
  %60 = load i8, ptr %59, align 4
  %61 = and i8 %60, -5
  %62 = or disjoint i8 %61, %49
  store i8 %62, ptr %59, align 4
  %63 = load ptr, ptr @vn_ssa_aux_table, align 8
  %64 = load i32, ptr %39, align 8, !tbaa !199
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds %struct.VEC_vn_ssa_aux_t_base, ptr %63, i64 0, i32 2, i64 %65
  %67 = load ptr, ptr %66, align 8, !tbaa !188
  %68 = icmp eq ptr %67, null
  br i1 %68, label %69, label %70, !prof !793

69:                                               ; preds = %58
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 180, ptr noundef nonnull @.str.1) #23
  br label %70

70:                                               ; preds = %58, %69
  %71 = getelementptr inbounds %struct.vn_ssa_aux, ptr %67, i64 0, i32 1
  %72 = load ptr, ptr %71, align 8, !tbaa !230
  %73 = load ptr, ptr @vn_ssa_aux_table, align 8
  %74 = load i32, ptr %51, align 8, !tbaa !199
  %75 = zext i32 %74 to i64
  %76 = getelementptr inbounds %struct.VEC_vn_ssa_aux_t_base, ptr %73, i64 0, i32 2, i64 %75
  %77 = load ptr, ptr %76, align 8, !tbaa !188
  %78 = icmp eq ptr %77, null
  br i1 %78, label %79, label %80, !prof !793

79:                                               ; preds = %70
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 180, ptr noundef nonnull @.str.1) #23
  br label %80

80:                                               ; preds = %70, %79
  %81 = getelementptr inbounds %struct.vn_ssa_aux, ptr %77, i64 0, i32 1
  store ptr %72, ptr %81, align 8, !tbaa !230
  br label %82

82:                                               ; preds = %80, %32
  %83 = tail call fastcc zeroext i8 @set_ssa_val_to(ptr noundef %0, ptr noundef nonnull %33), !range !351
  ret i8 %83
}

declare void @print_gimple_expr(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @expr_has_constants(ptr noundef %0) unnamed_addr #11 !prof !187 !PGOFuncName !794 {
  %2 = load i64, ptr %0, align 8
  %3 = and i64 %2, 65535
  %4 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %3
  %5 = load i32, ptr %4, align 4, !tbaa !203
  switch i32 %5, label %21 [
    i32 6, label %6
    i32 7, label %10
    i32 4, label %23
    i32 3, label %23
  ], !prof !736

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !199
  %9 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef %8) #23
  br label %23

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !199
  %13 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef %12) #23
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %15, label %23, !prof !734

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 1
  %17 = load ptr, ptr %16, align 8, !tbaa !199
  %18 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef %17) #23
  %19 = icmp ne i8 %18, 0
  %20 = zext i1 %19 to i8
  br label %23

21:                                               ; preds = %1
  %22 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef nonnull %0) #23
  br label %23

23:                                               ; preds = %1, %1, %10, %15, %21, %6
  %24 = phi i8 [ %22, %21 ], [ %9, %6 ], [ 1, %10 ], [ %20, %15 ], [ 0, %1 ], [ 0, %1 ]
  ret i8 %24
}

declare ptr @unshare_expr(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc noundef zeroext i8 @visit_unary_op(ptr noundef %0, ptr noundef %1) unnamed_addr #11 !prof !795 !PGOFuncName !796 {
  %3 = tail call ptr @vn_nary_op_lookup_stmt(ptr noundef %1, ptr noundef null)
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5, !prof !756

5:                                                ; preds = %2
  %6 = tail call fastcc zeroext i8 @set_ssa_val_to(ptr noundef %0, ptr noundef nonnull %3), !range !351
  br label %10

7:                                                ; preds = %2
  %8 = tail call fastcc zeroext i8 @set_ssa_val_to(ptr noundef %0, ptr noundef %0), !range !351
  %9 = tail call ptr @vn_nary_op_insert_stmt(ptr noundef %1, ptr noundef %0)
  br label %10

10:                                               ; preds = %7, %5
  %11 = phi i8 [ %6, %5 ], [ %8, %7 ]
  ret i8 %11
}

declare i32 @gimple_call_flags(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc noundef zeroext i8 @visit_reference_op_call(ptr noundef %0, ptr noundef %1) unnamed_addr #13 !prof !187 {
  %3 = alloca ptr, align 8
  %4 = alloca %struct.vn_reference_s, align 8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %4) #23
  %5 = load i32, ptr %1, align 8
  %6 = and i32 %5, 254
  %7 = add nsw i32 %6, -10
  %8 = icmp ult i32 %7, -4
  br i1 %8, label %12, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %1, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !199
  br label %12

12:                                               ; preds = %2, %9
  %13 = phi ptr [ %11, %9 ], [ null, %2 ]
  %14 = icmp eq ptr %13, null
  br i1 %14, label %26, label %15

15:                                               ; preds = %12
  %16 = load ptr, ptr @vn_ssa_aux_table, align 8
  %17 = getelementptr inbounds %struct.tree_ssa_name, ptr %13, i64 0, i32 3
  %18 = load i32, ptr %17, align 8, !tbaa !199
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds %struct.VEC_vn_ssa_aux_t_base, ptr %16, i64 0, i32 2, i64 %19
  %21 = load ptr, ptr %20, align 8, !tbaa !188
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %15
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 180, ptr noundef nonnull @.str.1) #23
  br label %24

24:                                               ; preds = %15, %23
  %25 = load ptr, ptr %21, align 8, !tbaa !227
  br label %26

26:                                               ; preds = %12, %24
  %27 = phi ptr [ %25, %24 ], [ null, %12 ]
  %28 = getelementptr inbounds %struct.vn_reference_s, ptr %4, i64 0, i32 2
  store ptr %27, ptr %28, align 8, !tbaa !277
  %29 = load ptr, ptr @shared_lookup_references, align 8
  %30 = icmp eq ptr %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %26
  store i32 0, ptr %29, align 8, !tbaa !266
  br label %32

32:                                               ; preds = %31, %26
  tail call void @copy_reference_ops_from_call(ptr noundef nonnull %1, ptr noundef nonnull @shared_lookup_references)
  %33 = load ptr, ptr @shared_lookup_references, align 8, !tbaa !188
  %34 = tail call fastcc ptr @valueize_refs(ptr noundef %33)
  store ptr %34, ptr @shared_lookup_references, align 8, !tbaa !188
  %35 = getelementptr inbounds %struct.vn_reference_s, ptr %4, i64 0, i32 5
  store ptr %34, ptr %35, align 8, !tbaa !263
  %36 = tail call fastcc ptr @gimple_expr_type(ptr noundef nonnull %1)
  %37 = getelementptr inbounds %struct.vn_reference_s, ptr %4, i64 0, i32 4
  store ptr %36, ptr %37, align 8, !tbaa !344
  %38 = getelementptr inbounds %struct.vn_reference_s, ptr %4, i64 0, i32 3
  store i32 0, ptr %38, align 8, !tbaa !345
  %39 = call i32 @vn_reference_compute_hash(ptr noundef nonnull %4)
  %40 = getelementptr inbounds %struct.vn_reference_s, ptr %4, i64 0, i32 1
  store i32 %39, ptr %40, align 4, !tbaa !280
  %41 = call fastcc ptr @vn_reference_lookup_1(ptr noundef nonnull %4, ptr noundef null)
  %42 = icmp eq ptr %41, null
  br i1 %42, label %75, label %43

43:                                               ; preds = %32
  %44 = call fastcc zeroext i8 @set_ssa_val_to(ptr noundef %0, ptr noundef nonnull %41), !range !351
  %45 = load i64, ptr %41, align 8
  %46 = and i64 %45, 65535
  %47 = icmp eq i64 %46, 141
  br i1 %47, label %48, label %106

48:                                               ; preds = %43
  %49 = load ptr, ptr @vn_ssa_aux_table, align 8
  %50 = getelementptr inbounds %struct.tree_ssa_name, ptr %41, i64 0, i32 3
  %51 = load i32, ptr %50, align 8, !tbaa !199
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds %struct.VEC_vn_ssa_aux_t_base, ptr %49, i64 0, i32 2, i64 %52
  %54 = load ptr, ptr %53, align 8, !tbaa !188
  %55 = icmp eq ptr %54, null
  br i1 %55, label %56, label %57

56:                                               ; preds = %48
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 180, ptr noundef nonnull @.str.1) #23
  br label %57

57:                                               ; preds = %48, %56
  %58 = getelementptr inbounds %struct.vn_ssa_aux, ptr %54, i64 0, i32 5
  %59 = load i8, ptr %58, align 4
  %60 = and i8 %59, 4
  %61 = icmp eq i8 %60, 0
  br i1 %61, label %106, label %62

62:                                               ; preds = %57
  %63 = load ptr, ptr @vn_ssa_aux_table, align 8
  %64 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 3
  %65 = load i32, ptr %64, align 8, !tbaa !199
  %66 = zext i32 %65 to i64
  %67 = getelementptr inbounds %struct.VEC_vn_ssa_aux_t_base, ptr %63, i64 0, i32 2, i64 %66
  %68 = load ptr, ptr %67, align 8, !tbaa !188
  %69 = icmp eq ptr %68, null
  br i1 %69, label %70, label %71

70:                                               ; preds = %62
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 180, ptr noundef nonnull @.str.1) #23
  br label %71

71:                                               ; preds = %62, %70
  %72 = getelementptr inbounds %struct.vn_ssa_aux, ptr %68, i64 0, i32 5
  %73 = load i8, ptr %72, align 4
  %74 = or i8 %73, 4
  store i8 %74, ptr %72, align 4
  br label %106

75:                                               ; preds = %32
  %76 = call fastcc zeroext i8 @set_ssa_val_to(ptr noundef %0, ptr noundef %0), !range !351
  %77 = load ptr, ptr @current_info, align 8, !tbaa !188
  %78 = getelementptr inbounds %struct.vn_tables_s, ptr %77, i64 0, i32 5
  %79 = load ptr, ptr %78, align 8, !tbaa !395
  %80 = call ptr @pool_alloc(ptr noundef %79) #23
  %81 = load ptr, ptr %28, align 8, !tbaa !277
  %82 = getelementptr inbounds %struct.vn_reference_s, ptr %80, i64 0, i32 2
  store ptr %81, ptr %82, align 8, !tbaa !277
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #23
  store ptr null, ptr %3, align 8, !tbaa !188
  call void @copy_reference_ops_from_call(ptr noundef nonnull %1, ptr noundef nonnull %3)
  %83 = load ptr, ptr %3, align 8, !tbaa !188
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #23
  %84 = call fastcc ptr @valueize_refs(ptr noundef %83)
  %85 = getelementptr inbounds %struct.vn_reference_s, ptr %80, i64 0, i32 5
  store ptr %84, ptr %85, align 8, !tbaa !263
  %86 = load ptr, ptr %37, align 8, !tbaa !344
  %87 = getelementptr inbounds %struct.vn_reference_s, ptr %80, i64 0, i32 4
  store ptr %86, ptr %87, align 8, !tbaa !344
  %88 = load i32, ptr %38, align 8, !tbaa !345
  %89 = getelementptr inbounds %struct.vn_reference_s, ptr %80, i64 0, i32 3
  store i32 %88, ptr %89, align 8, !tbaa !345
  %90 = load i32, ptr %40, align 4, !tbaa !280
  %91 = getelementptr inbounds %struct.vn_reference_s, ptr %80, i64 0, i32 1
  store i32 %90, ptr %91, align 4, !tbaa !280
  %92 = getelementptr inbounds %struct.vn_reference_s, ptr %80, i64 0, i32 6
  store ptr %0, ptr %92, align 8, !tbaa !354
  %93 = load ptr, ptr @current_info, align 8, !tbaa !188
  %94 = getelementptr inbounds %struct.vn_tables_s, ptr %93, i64 0, i32 2
  %95 = load ptr, ptr %94, align 8, !tbaa !346
  %96 = call ptr @htab_find_slot_with_hash(ptr noundef %95, ptr noundef %80, i32 noundef %90, i32 noundef 1) #23
  %97 = load ptr, ptr %96, align 8, !tbaa !188
  %98 = icmp eq ptr %97, null
  br i1 %98, label %105, label %99

99:                                               ; preds = %75
  %100 = getelementptr inbounds %struct.vn_reference_s, ptr %97, i64 0, i32 5
  %101 = load ptr, ptr %100, align 8, !tbaa !188
  %102 = icmp eq ptr %101, null
  br i1 %102, label %104, label %103

103:                                              ; preds = %99
  call void @free(ptr noundef %101)
  br label %104

104:                                              ; preds = %99, %103
  store ptr null, ptr %100, align 8, !tbaa !188
  br label %105

105:                                              ; preds = %104, %75
  store ptr %80, ptr %96, align 8, !tbaa !188
  br label %106

106:                                              ; preds = %43, %57, %71, %105
  %107 = phi i8 [ %44, %71 ], [ %44, %57 ], [ %44, %43 ], [ %76, %105 ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %4) #23
  ret i8 %107
}

declare ptr @get_symbol_constant_value(ptr noundef) local_unnamed_addr #3

declare ptr @fold_const_aggregate_ref(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc noundef ptr @valueize_expr(ptr noundef returned %0) unnamed_addr #11 !prof !225 !PGOFuncName !797 {
  %2 = load i64, ptr %0, align 8
  %3 = and i64 %2, 65535
  %4 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %3
  %5 = load i32, ptr %4, align 4, !tbaa !203
  switch i32 %5, label %100 [
    i32 6, label %6
    i32 7, label %34
  ], !prof !798

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !199
  %9 = load i64, ptr %8, align 8
  %10 = and i64 %9, 65535
  %11 = icmp eq i64 %10, 141
  br i1 %11, label %12, label %100

12:                                               ; preds = %6
  %13 = load ptr, ptr @vn_ssa_aux_table, align 8
  %14 = getelementptr inbounds %struct.tree_ssa_name, ptr %8, i64 0, i32 3
  %15 = load i32, ptr %14, align 8, !tbaa !199
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds %struct.VEC_vn_ssa_aux_t_base, ptr %13, i64 0, i32 2, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !188
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %12
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 180, ptr noundef nonnull @.str.1) #23
  br label %21

21:                                               ; preds = %12, %20
  %22 = load ptr, ptr %18, align 8, !tbaa !227
  %23 = load ptr, ptr @VN_TOP, align 8, !tbaa !188
  %24 = icmp eq ptr %22, %23
  br i1 %24, label %100, label %25

25:                                               ; preds = %21
  %26 = load ptr, ptr %7, align 8, !tbaa !199
  %27 = load ptr, ptr @vn_ssa_aux_table, align 8
  %28 = getelementptr inbounds %struct.tree_ssa_name, ptr %26, i64 0, i32 3
  %29 = load i32, ptr %28, align 8, !tbaa !199
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds %struct.VEC_vn_ssa_aux_t_base, ptr %27, i64 0, i32 2, i64 %30
  %32 = load ptr, ptr %31, align 8, !tbaa !188
  %33 = icmp eq ptr %32, null
  br i1 %33, label %93, label %96

34:                                               ; preds = %1
  %35 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %36 = load ptr, ptr %35, align 8, !tbaa !199
  %37 = load i64, ptr %36, align 8
  %38 = and i64 %37, 65535
  %39 = icmp eq i64 %38, 141
  br i1 %39, label %40, label %65, !prof !799

40:                                               ; preds = %34
  %41 = load ptr, ptr @vn_ssa_aux_table, align 8
  %42 = getelementptr inbounds %struct.tree_ssa_name, ptr %36, i64 0, i32 3
  %43 = load i32, ptr %42, align 8, !tbaa !199
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds %struct.VEC_vn_ssa_aux_t_base, ptr %41, i64 0, i32 2, i64 %44
  %46 = load ptr, ptr %45, align 8, !tbaa !188
  %47 = icmp eq ptr %46, null
  br i1 %47, label %48, label %49, !prof !800

48:                                               ; preds = %40
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 180, ptr noundef nonnull @.str.1) #23
  br label %49

49:                                               ; preds = %40, %48
  %50 = load ptr, ptr %46, align 8, !tbaa !227
  %51 = load ptr, ptr @VN_TOP, align 8, !tbaa !188
  %52 = icmp eq ptr %50, %51
  br i1 %52, label %65, label %53, !prof !800

53:                                               ; preds = %49
  %54 = load ptr, ptr %35, align 8, !tbaa !199
  %55 = load ptr, ptr @vn_ssa_aux_table, align 8
  %56 = getelementptr inbounds %struct.tree_ssa_name, ptr %54, i64 0, i32 3
  %57 = load i32, ptr %56, align 8, !tbaa !199
  %58 = zext i32 %57 to i64
  %59 = getelementptr inbounds %struct.VEC_vn_ssa_aux_t_base, ptr %55, i64 0, i32 2, i64 %58
  %60 = load ptr, ptr %59, align 8, !tbaa !188
  %61 = icmp eq ptr %60, null
  br i1 %61, label %62, label %63, !prof !800

62:                                               ; preds = %53
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 180, ptr noundef nonnull @.str.1) #23
  br label %63

63:                                               ; preds = %53, %62
  %64 = load ptr, ptr %60, align 8, !tbaa !227
  store ptr %64, ptr %35, align 8, !tbaa !199
  br label %65

65:                                               ; preds = %63, %49, %34
  %66 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 1
  %67 = load ptr, ptr %66, align 8, !tbaa !199
  %68 = load i64, ptr %67, align 8
  %69 = and i64 %68, 65535
  %70 = icmp eq i64 %69, 141
  br i1 %70, label %71, label %100, !prof !801

71:                                               ; preds = %65
  %72 = load ptr, ptr @vn_ssa_aux_table, align 8
  %73 = getelementptr inbounds %struct.tree_ssa_name, ptr %67, i64 0, i32 3
  %74 = load i32, ptr %73, align 8, !tbaa !199
  %75 = zext i32 %74 to i64
  %76 = getelementptr inbounds %struct.VEC_vn_ssa_aux_t_base, ptr %72, i64 0, i32 2, i64 %75
  %77 = load ptr, ptr %76, align 8, !tbaa !188
  %78 = icmp eq ptr %77, null
  br i1 %78, label %79, label %80, !prof !802

79:                                               ; preds = %71
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 180, ptr noundef nonnull @.str.1) #23
  br label %80

80:                                               ; preds = %71, %79
  %81 = load ptr, ptr %77, align 8, !tbaa !227
  %82 = load ptr, ptr @VN_TOP, align 8, !tbaa !188
  %83 = icmp eq ptr %81, %82
  br i1 %83, label %100, label %84, !prof !802

84:                                               ; preds = %80
  %85 = load ptr, ptr %66, align 8, !tbaa !199
  %86 = load ptr, ptr @vn_ssa_aux_table, align 8
  %87 = getelementptr inbounds %struct.tree_ssa_name, ptr %85, i64 0, i32 3
  %88 = load i32, ptr %87, align 8, !tbaa !199
  %89 = zext i32 %88 to i64
  %90 = getelementptr inbounds %struct.VEC_vn_ssa_aux_t_base, ptr %86, i64 0, i32 2, i64 %89
  %91 = load ptr, ptr %90, align 8, !tbaa !188
  %92 = icmp eq ptr %91, null
  br i1 %92, label %93, label %96, !prof !802

93:                                               ; preds = %84, %25
  %94 = phi ptr [ %32, %25 ], [ %91, %84 ]
  %95 = phi ptr [ %7, %25 ], [ %66, %84 ]
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 180, ptr noundef nonnull @.str.1) #23
  br label %96

96:                                               ; preds = %93, %84, %25
  %97 = phi ptr [ %32, %25 ], [ %91, %84 ], [ %94, %93 ]
  %98 = phi ptr [ %7, %25 ], [ %66, %84 ], [ %95, %93 ]
  %99 = load ptr, ptr %97, align 8, !tbaa !227
  store ptr %99, ptr %98, align 8, !tbaa !199
  br label %100

100:                                              ; preds = %96, %1, %65, %80, %6, %21
  ret ptr %0
}

declare ptr @fold_unary_ignore_overflow_loc(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @tree_ssa_strip_useless_type_conversions(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @valid_gimple_rhs_p(ptr noundef) local_unnamed_addr #3

declare void @fold_defer_overflow_warnings() local_unnamed_addr #3

declare ptr @fold_binary_loc(i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @fold_undefer_overflow_warnings(i8 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #3

declare zeroext i8 @useless_type_conversion_p(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @make_ssa_name_fn(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i64 @htab_size(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #21

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #22

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #22

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
attributes #10 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #11 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #15 = { inlinehint mustprogress nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #22 = { nofree nounwind }
attributes #23 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!186}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185}
!35 = !{ptr @VN_INFO_GET, ptr @_obstack_newchunk, i64 2}
!36 = !{ptr @vn_get_expr_for, ptr @gimple_expr_type, i64 18566}
!37 = !{ptr @vn_get_expr_for, ptr @fold_build2_stat_loc, i64 18566}
!38 = !{ptr @gimple_expr_type, ptr @gimple_get_lhs, i64 53719}
!39 = !{ptr @get_constant_value_id, ptr @iterative_hash_expr, i64 2269}
!40 = !{ptr @get_constant_value_id, ptr @htab_find_slot_with_hash, i64 2269}
!41 = !{ptr @get_or_alloc_constant_value_id, ptr @iterative_hash_expr, i64 197}
!42 = !{ptr @get_or_alloc_constant_value_id, ptr @htab_find_slot_with_hash, i64 197}
!43 = !{ptr @get_or_alloc_constant_value_id, ptr @xmalloc, i64 197}
!44 = !{ptr @get_or_alloc_constant_value_id, ptr @bitmap_set_bit, i64 197}
!45 = !{ptr @value_id_constant_p, ptr @bitmap_bit_p, i64 1715479}
!46 = !{ptr @vn_reference_eq, ptr @types_compatible_p, i64 194751}
!47 = !{ptr @vn_reference_eq, ptr @operand_equal_p, i64 40818}
!48 = !{ptr @copy_reference_ops_from_ref, ptr @integer_zerop, i64 568}
!49 = !{ptr @copy_reference_ops_from_ref, ptr @host_integerp, i64 284}
!50 = !{ptr @copy_reference_ops_from_ref, ptr @array_ref_low_bound, i64 27117}
!51 = !{ptr @copy_reference_ops_from_ref, ptr @array_ref_element_size, i64 27117}
!52 = !{ptr @copy_reference_ops_from_ref, ptr @vec_heap_o_reserve, i64 46151}
!53 = !{ptr @ao_ref_init_from_vn_reference, ptr @host_integerp, i64 8508}
!54 = !{ptr @ao_ref_init_from_vn_reference, ptr @build1_stat, i64 230}
!55 = !{ptr @vn_reference_lookup_pieces, ptr @valueize_refs, i64 912}
!56 = !{ptr @vn_reference_lookup_pieces, ptr @iterative_hash_hashval_t, i64 1229}
!57 = !{ptr @vn_reference_lookup_pieces, ptr @iterative_hash_expr, i64 1557}
!58 = !{ptr @vn_reference_lookup_pieces, ptr @htab_find_slot_with_hash, i64 912}
!59 = !{ptr @vn_reference_lookup_pieces, ptr @ao_ref_init_from_vn_reference, i64 571}
!60 = !{ptr @vn_reference_lookup_pieces, ptr @walk_non_aliased_vuses, i64 571}
!61 = !{ptr @vn_reference_lookup_2, ptr @htab_find_slot_with_hash, i64 342626}
!62 = !{ptr @vn_reference_lookup_3, ptr @ao_ref_base, i64 41872}
!63 = !{ptr @vn_reference_lookup_3, ptr @is_gimple_reg_type, i64 83708}
!64 = !{ptr @vn_reference_lookup_3, ptr @gimple_assign_single_p, i64 83708}
!65 = !{ptr @vn_reference_lookup, ptr @integer_zerop, i64 1292}
!66 = !{ptr @vn_reference_lookup, ptr @host_integerp, i64 646}
!67 = !{ptr @vn_reference_lookup, ptr @array_ref_low_bound, i64 61648}
!68 = !{ptr @vn_reference_lookup, ptr @array_ref_element_size, i64 61648}
!69 = !{ptr @vn_reference_lookup, ptr @vec_heap_o_reserve, i64 104923}
!70 = !{ptr @vn_reference_lookup, ptr @get_alias_set, i64 342133}
!71 = !{ptr @vn_reference_lookup, ptr @iterative_hash_hashval_t, i64 460999}
!72 = !{ptr @vn_reference_lookup, ptr @iterative_hash_expr, i64 583847}
!73 = !{ptr @vn_reference_lookup, ptr @ao_ref_init, i64 342053}
!74 = !{ptr @vn_reference_lookup, ptr @walk_non_aliased_vuses, i64 342053}
!75 = !{ptr @vn_reference_lookup, ptr @htab_find_slot_with_hash, i64 80}
!76 = !{ptr @vn_reference_insert, ptr @pool_alloc, i64 150490}
!77 = !{ptr @vn_reference_insert, ptr @copy_reference_ops_from_ref, i64 150490}
!78 = !{ptr @vn_reference_insert, ptr @get_alias_set, i64 150490}
!79 = !{ptr @vn_reference_insert, ptr @iterative_hash_hashval_t, i64 202774}
!80 = !{ptr @vn_reference_insert, ptr @iterative_hash_expr, i64 256810}
!81 = !{ptr @vn_reference_insert, ptr @htab_find_slot_with_hash, i64 150490}
!82 = !{ptr @free_reference, ptr @free, i64 151061}
!83 = !{ptr @vn_reference_insert_pieces, ptr @pool_alloc, i64 571}
!84 = !{ptr @vn_reference_insert_pieces, ptr @valueize_refs, i64 571}
!85 = !{ptr @vn_reference_insert_pieces, ptr @iterative_hash_hashval_t, i64 769}
!86 = !{ptr @vn_reference_insert_pieces, ptr @iterative_hash_expr, i64 975}
!87 = !{ptr @vn_reference_insert_pieces, ptr @htab_find_slot_with_hash, i64 571}
!88 = !{ptr @vn_nary_op_compute_hash, ptr @commutative_tree_code, i64 101}
!89 = !{ptr @vn_nary_op_compute_hash, ptr @tree_swap_operands_p, i64 80}
!90 = !{ptr @vn_nary_op_compute_hash, ptr @iterative_hash_hashval_t, i64 101}
!91 = !{ptr @vn_nary_op_compute_hash, ptr @iterative_hash_expr, i64 202}
!92 = !{ptr @vn_nary_op_eq, ptr @types_compatible_p, i64 181826}
!93 = !{ptr @vn_nary_op_eq, ptr @operand_equal_p, i64 25455}
!94 = !{ptr @expressions_equal_p, ptr @operand_equal_p, i64 156}
!95 = !{ptr @vn_nary_op_lookup_pieces, ptr @commutative_tree_code, i64 86378}
!96 = !{ptr @vn_nary_op_lookup_pieces, ptr @tree_swap_operands_p, i64 68429}
!97 = !{ptr @vn_nary_op_lookup_pieces, ptr @iterative_hash_hashval_t, i64 86519}
!98 = !{ptr @vn_nary_op_lookup_pieces, ptr @iterative_hash_expr, i64 172897}
!99 = !{ptr @vn_nary_op_lookup_pieces, ptr @htab_find_slot_with_hash, i64 86519}
!100 = !{ptr @vn_nary_op_lookup_stmt, ptr @gimple_get_lhs, i64 96114}
!101 = !{ptr @vn_nary_op_lookup_stmt, ptr @commutative_tree_code, i64 95965}
!102 = !{ptr @vn_nary_op_lookup_stmt, ptr @tree_swap_operands_p, i64 76023}
!103 = !{ptr @vn_nary_op_lookup_stmt, ptr @iterative_hash_hashval_t, i64 96121}
!104 = !{ptr @vn_nary_op_lookup_stmt, ptr @iterative_hash_expr, i64 192086}
!105 = !{ptr @vn_nary_op_lookup_stmt, ptr @htab_find_slot_with_hash, i64 96121}
!106 = !{ptr @vn_nary_op_insert_pieces, ptr @_obstack_newchunk, i64 1}
!107 = !{ptr @vn_nary_op_insert_pieces, ptr @vn_nary_op_compute_hash, i64 101}
!108 = !{ptr @vn_nary_op_insert_pieces, ptr @htab_find_slot_with_hash, i64 101}
!109 = !{ptr @vn_nary_op_insert_stmt, ptr @_obstack_newchunk, i64 1069}
!110 = !{ptr @vn_nary_op_insert_stmt, ptr @gimple_get_lhs, i64 91753}
!111 = !{ptr @vn_nary_op_insert_stmt, ptr @commutative_tree_code, i64 91611}
!112 = !{ptr @vn_nary_op_insert_stmt, ptr @tree_swap_operands_p, i64 72574}
!113 = !{ptr @vn_nary_op_insert_stmt, ptr @iterative_hash_hashval_t, i64 91760}
!114 = !{ptr @vn_nary_op_insert_stmt, ptr @iterative_hash_expr, i64 183371}
!115 = !{ptr @vn_nary_op_insert_stmt, ptr @htab_find_slot_with_hash, i64 91760}
!116 = !{ptr @free_scc_vn, ptr @htab_delete, i64 76}
!117 = !{ptr @free_scc_vn, ptr @bitmap_obstack_free, i64 76}
!118 = !{ptr @free_scc_vn, ptr @free, i64 532}
!119 = !{ptr @free_scc_vn, ptr @obstack_free, i64 76}
!120 = !{ptr @free_scc_vn, ptr @free_vn_table, i64 152}
!121 = !{ptr @free_vn_table, ptr @htab_delete, i64 456}
!122 = !{ptr @free_vn_table, ptr @obstack_free, i64 152}
!123 = !{ptr @free_vn_table, ptr @free_alloc_pool, i64 304}
!124 = !{ptr @run_scc_vn, ptr @calculate_dominance_info, i64 76}
!125 = !{ptr @run_scc_vn, ptr @htab_create, i64 532}
!126 = !{ptr @run_scc_vn, ptr @bitmap_obstack_alloc_stat, i64 76}
!127 = !{ptr @run_scc_vn, ptr @vec_heap_p_reserve_exact, i64 110}
!128 = !{ptr @run_scc_vn, ptr @_obstack_begin, i64 228}
!129 = !{ptr @run_scc_vn, ptr @xcalloc, i64 304}
!130 = !{ptr @run_scc_vn, ptr @pre_and_rev_post_order_compute, i64 76}
!131 = !{ptr @run_scc_vn, ptr @free, i64 909793}
!132 = !{ptr @run_scc_vn, ptr @create_tmp_var_raw, i64 76}
!133 = !{ptr @run_scc_vn, ptr @_obstack_newchunk, i64 4985}
!134 = !{ptr @run_scc_vn, ptr @renumber_gimple_stmt_uids, i64 76}
!135 = !{ptr @run_scc_vn, ptr @create_alloc_pool, i64 304}
!136 = !{ptr @run_scc_vn, ptr @gimple_default_def, i64 152}
!137 = !{ptr @run_scc_vn, ptr @vec_heap_p_reserve, i64 769911}
!138 = !{ptr @run_scc_vn, ptr @is_gimple_reg, i64 92031}
!139 = !{ptr @run_scc_vn, ptr @visit_use, i64 497374}
!140 = !{ptr @run_scc_vn, ptr @vec_heap_o_reserve, i64 141925}
!141 = !{ptr @run_scc_vn, ptr @is_gimple_min_invariant, i64 24954}
!142 = !{ptr @run_scc_vn, ptr @htab_size, i64 228}
!143 = !{ptr @vn_nary_may_trap, ptr @operation_could_trap_helper_p, i64 46}
!144 = !{ptr @vn_nary_may_trap, ptr @tree_could_trap_p, i64 92}
!145 = !{ptr @vn_constant_eq, ptr @operand_equal_p, i64 171}
!146 = !{ptr @vn_constant_eq, ptr @types_compatible_p, i64 2098}
!147 = !{ptr @free_phi, ptr @free, i64 92008}
!148 = !{ptr @visit_use, ptr @set_ssa_val_to, i64 25204}
!149 = !{ptr @visit_use, ptr @operand_equal_p, i64 605459}
!150 = !{ptr @visit_use, ptr @is_gimple_min_invariant, i64 349688}
!151 = !{ptr @visit_use, ptr @visit_copy, i64 104}
!152 = !{ptr @visit_use, ptr @vec_heap_p_reserve, i64 96285}
!153 = !{ptr @visit_use, ptr @iterative_hash_expr, i64 723244}
!154 = !{ptr @visit_use, ptr @htab_find_slot_with_hash, i64 184016}
!155 = !{ptr @visit_use, ptr @pool_alloc, i64 92008}
!156 = !{ptr @visit_use, ptr @stmt_could_throw_p, i64 400891}
!157 = !{ptr @visit_use, ptr @defs_to_varying, i64 4302}
!158 = !{ptr @visit_use, ptr @gimple_assign_copy_p, i64 1068320}
!159 = !{ptr @visit_use, ptr @get_symbol_constant_value, i64 141216}
!160 = !{ptr @visit_use, ptr @fold_const_aggregate_ref, i64 29683}
!161 = !{ptr @visit_use, ptr @vn_get_expr_for, i64 72697}
!162 = !{ptr @visit_use, ptr @valueize_expr, i64 72697}
!163 = !{ptr @visit_use, ptr @gimple_expr_type, i64 35157}
!164 = !{ptr @visit_use, ptr @fold_unary_ignore_overflow_loc, i64 98}
!165 = !{ptr @visit_use, ptr @fold_defer_overflow_warnings, i64 35059}
!166 = !{ptr @visit_use, ptr @fold_binary_loc, i64 35059}
!167 = !{ptr @visit_use, ptr @tree_ssa_strip_useless_type_conversions, i64 283}
!168 = !{ptr @visit_use, ptr @valid_gimple_rhs_p, i64 566}
!169 = !{ptr @visit_use, ptr @fold_undefer_overflow_warnings, i64 35059}
!170 = !{ptr @visit_use, ptr @unshare_expr, i64 266}
!171 = !{ptr @visit_use, ptr @gimple_assign_single_p, i64 267100}
!172 = !{ptr @visit_use, ptr @vn_reference_lookup, i64 170979}
!173 = !{ptr @visit_use, ptr @is_gimple_reg, i64 80}
!174 = !{ptr @visit_use, ptr @vn_reference_insert, i64 150490}
!175 = !{ptr @visit_use, ptr @vn_nary_op_lookup_stmt, i64 96109}
!176 = !{ptr @visit_use, ptr @vn_nary_op_insert_stmt, i64 91749}
!177 = !{ptr @visit_use, ptr @useless_type_conversion_p, i64 20489}
!178 = !{ptr @visit_use, ptr @visit_unary_op, i64 12}
!179 = !{ptr @visit_use, ptr @gimple_call_flags, i64 133711}
!180 = !{ptr @set_ssa_val_to, ptr @operand_equal_p, i64 25317}
!181 = !{ptr @defs_to_varying, ptr @operand_equal_p, i64 8469}
!182 = !{ptr @visit_copy, ptr @set_ssa_val_to, i64 104}
!183 = !{ptr @visit_unary_op, ptr @vn_nary_op_lookup_stmt, i64 12}
!184 = !{ptr @visit_unary_op, ptr @set_ssa_val_to, i64 12}
!185 = !{ptr @visit_unary_op, ptr @vn_nary_op_insert_stmt, i64 11}
!186 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!187 = !{!"function_entry_count", i64 0}
!188 = !{!189, !189, i64 0}
!189 = !{!"any pointer", !190, i64 0}
!190 = !{!"omnipotent char", !191, i64 0}
!191 = !{!"Simple C/C++ TBAA"}
!192 = !{!193, !189, i64 8}
!193 = !{!"_IO_FILE", !194, i64 0, !189, i64 8, !189, i64 16, !189, i64 24, !189, i64 32, !189, i64 40, !189, i64 48, !189, i64 56, !189, i64 64, !189, i64 72, !189, i64 80, !189, i64 88, !189, i64 96, !189, i64 104, !194, i64 112, !194, i64 116, !195, i64 120, !196, i64 128, !190, i64 130, !190, i64 131, !189, i64 136, !195, i64 144, !189, i64 152, !189, i64 160, !189, i64 168, !189, i64 176, !195, i64 184, !194, i64 192, !190, i64 196}
!194 = !{!"int", !190, i64 0}
!195 = !{!"long", !190, i64 0}
!196 = !{!"short", !190, i64 0}
!197 = !{!193, !189, i64 16}
!198 = !{!"branch_weights", i32 2000, i32 1}
!199 = !{!190, !190, i64 0}
!200 = !{!193, !189, i64 40}
!201 = !{!193, !189, i64 48}
!202 = !{!193, !194, i64 0}
!203 = !{!194, !194, i64 0}
!204 = distinct !{!204, !205, !206}
!205 = !{!"llvm.loop.mustprogress"}
!206 = !{!"llvm.loop.unroll.disable"}
!207 = !{!"function_entry_count", i64 2989529}
!208 = !{!"branch_weights", i32 0, i32 2989529}
!209 = !{!"function_entry_count", i64 234}
!210 = !{!211, !195, i64 40}
!211 = !{!"obstack", !195, i64 0, !189, i64 8, !189, i64 16, !189, i64 24, !189, i64 32, !195, i64 40, !194, i64 48, !189, i64 56, !189, i64 64, !189, i64 72, !194, i64 80, !194, i64 80, !194, i64 80}
!212 = !{!211, !189, i64 32}
!213 = !{!211, !189, i64 24}
!214 = !{!"branch_weights", i32 4987, i32 627497}
!215 = !{!211, !189, i64 16}
!216 = !{!"branch_weights", i32 0, i32 632484}
!217 = !{!211, !194, i64 48}
!218 = !{!211, !189, i64 8}
!219 = !{!220, !194, i64 0}
!220 = !{!"VEC_vn_ssa_aux_t_base", !194, i64 0, !194, i64 4, !190, i64 8}
!221 = !{!"branch_weights", i32 632450, i32 34}
!222 = !{!"branch_weights", i32 0, i32 34}
!223 = !{!220, !194, i64 4}
!224 = !{}
!225 = !{!"function_entry_count", i64 72697}
!226 = !{!"branch_weights", i32 0, i32 72697}
!227 = !{!228, !189, i64 0}
!228 = !{!"vn_ssa_aux", !189, i64 0, !189, i64 8, !194, i64 16, !194, i64 20, !194, i64 24, !194, i64 28, !194, i64 28, !194, i64 28, !194, i64 28, !194, i64 28}
!229 = !{!"branch_weights", i32 72697, i32 0}
!230 = !{!228, !189, i64 8}
!231 = !{!"branch_weights", i32 68308, i32 4389}
!232 = !{!"branch_weights", i32 0, i32 68308}
!233 = !{!"branch_weights", i32 68159, i32 149}
!234 = !{!"branch_weights", i32 30451, i32 37708}
!235 = !{!195, !195, i64 0}
!236 = !{!"branch_weights", i32 0, i32 30451}
!237 = !{!"branch_weights", i32 49577, i32 16, i32 0, i32 18566}
!238 = !{!"branch_weights", i32 0, i32 16, i32 0, i32 0}
!239 = !{!"branch_weights", i32 16, i32 0}
!240 = !{!"branch_weights", i32 0, i32 16}
!241 = !{!"branch_weights", i32 0, i32 18566, i32 0, i32 0}
!242 = !{!"branch_weights", i32 0, i32 18566}
!243 = !{!"branch_weights", i32 18566, i32 0}
!244 = !{!"branch_weights", i32 49593, i32 18566}
!245 = !{!"function_entry_count", i64 53723}
!246 = !{!"tree-ssa-sccvn.c;gimple_expr_type"}
!247 = !{!"branch_weights", i32 0, i32 0, i32 241604, i32 0}
!248 = !{!"branch_weights", i32 24, i32 241580}
!249 = !{!"branch_weights", i32 0, i32 24}
!250 = !{!"branch_weights", i32 18, i32 241586}
!251 = !{!"branch_weights", i32 0, i32 18}
!252 = !{!"function_entry_count", i64 2269}
!253 = !{!"branch_weights", i32 2269, i32 0}
!254 = !{!255, !194, i64 4}
!255 = !{!"vn_constant_s", !194, i64 0, !194, i64 4, !189, i64 8}
!256 = !{!255, !189, i64 8}
!257 = !{!"branch_weights", i32 0, i32 2269}
!258 = !{!255, !194, i64 0}
!259 = !{!"function_entry_count", i64 197}
!260 = !{!"branch_weights", i32 197, i32 0}
!261 = !{!"function_entry_count", i64 672}
!262 = !{!"function_entry_count", i64 1715479}
!263 = !{!264, !189, i64 32}
!264 = !{!"vn_reference_s", !194, i64 0, !194, i64 4, !189, i64 8, !194, i64 16, !189, i64 24, !189, i64 32, !189, i64 40}
!265 = !{!"branch_weights", i32 0, i32 1159877}
!266 = !{!267, !194, i64 0}
!267 = !{!"VEC_vn_reference_op_s_base", !194, i64 0, !194, i64 4, !190, i64 8}
!268 = !{!"branch_weights", i32 494106, i32 665771}
!269 = !{!270, !194, i64 0}
!270 = !{!"vn_reference_op_struct", !194, i64 0, !189, i64 8, !189, i64 16, !189, i64 24, !189, i64 32}
!271 = !{!270, !189, i64 16}
!272 = !{!"branch_weights", i32 2103, i32 663668}
!273 = !{!270, !189, i64 24}
!274 = !{!"branch_weights", i32 576012, i32 89759}
!275 = !{!270, !189, i64 32}
!276 = distinct !{!276, !205, !206}
!277 = !{!264, !189, i64 8}
!278 = !{!"branch_weights", i32 0, i32 494106}
!279 = !{!"function_entry_count", i64 894440}
!280 = !{!264, !194, i64 4}
!281 = !{!"branch_weights", i32 386274, i32 508166}
!282 = !{!"branch_weights", i32 386274, i32 0}
!283 = !{!"branch_weights", i32 194747, i32 191527}
!284 = !{!"branch_weights", i32 0, i32 191527}
!285 = !{!"branch_weights", i32 191527, i32 0}
!286 = !{!"branch_weights", i32 0, i32 439052}
!287 = !{!"branch_weights", i32 191527, i32 247525}
!288 = !{!"branch_weights", i32 247525, i32 0}
!289 = !{!270, !189, i64 8}
!290 = !{!"branch_weights", i32 0, i32 247525}
!291 = !{!"branch_weights", i32 1127611, i32 92010}
!292 = !{!"branch_weights", i32 92010, i32 0}
!293 = !{!"branch_weights", i32 91972, i32 38}
!294 = !{!"branch_weights", i32 91970, i32 2}
!295 = distinct !{!295, !205, !206}
!296 = !{!"tree-ssa-sccvn.c;vn_reference_op_eq"}
!297 = !{!"function_entry_count", i64 150490}
!298 = !{!"branch_weights", i32 0, i32 492623}
!299 = !{!267, !194, i64 4}
!300 = !{i64 0, i64 4, !203, i64 8, i64 8, !188, i64 16, i64 8, !188, i64 24, i64 8, !188, i64 32, i64 8, !188}
!301 = !{i64 4, i64 8, !188, i64 12, i64 8, !188, i64 20, i64 8, !188, i64 28, i64 8, !188}
!302 = !{i64 0, i64 8, !188, i64 8, i64 8, !188, i64 16, i64 8, !188, i64 24, i64 8, !188}
!303 = !{i64 0, i64 8, !188, i64 8, i64 8, !188, i64 16, i64 8, !188}
!304 = !{i64 0, i64 8, !188, i64 8, i64 8, !188}
!305 = !{i64 0, i64 8, !188}
!306 = !{!"branch_weights", i32 0, i32 0, i32 1885, i32 0, i32 0, i32 78670, i32 0, i32 88765, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 490738, i32 0, i32 0, i32 0, i32 1885, i32 0, i32 0, i32 0, i32 0}
!307 = !{!"branch_weights", i32 26257, i32 52413}
!308 = !{!"branch_weights", i32 930, i32 25327}
!309 = !{!"branch_weights", i32 0, i32 930}
!310 = !{!"branch_weights", i32 150566, i32 511377}
!311 = !{!"branch_weights", i32 508, i32 510869}
!312 = !{!"branch_weights", i32 169320, i32 492623}
!313 = !{!"branch_weights", i32 492623, i32 169320}
!314 = distinct !{!314, !205, !206}
!315 = !{!"function_entry_count", i64 3471}
!316 = !{!"branch_weights", i32 3253, i32 218, i32 0}
!317 = !{!"branch_weights", i32 0, i32 218}
!318 = !{!"branch_weights", i32 0, i32 3253}
!319 = !{!"branch_weights", i32 3253, i32 218}
!320 = !{!"branch_weights", i32 0, i32 11318}
!321 = !{!"branch_weights", i32 7847, i32 3471}
!322 = !{!"branch_weights", i32 3471, i32 7847}
!323 = !{!"branch_weights", i32 0, i32 0, i32 0, i32 0, i32 230, i32 0, i32 3241, i32 0, i32 0, i32 230, i32 0, i32 2062, i32 0, i32 2084, i32 0}
!324 = !{!"branch_weights", i32 0, i32 2062}
!325 = !{!"branch_weights", i32 2062, i32 0}
!326 = !{!"branch_weights", i32 12, i32 2072}
!327 = !{!"branch_weights", i32 0, i32 2072}
!328 = distinct !{!328, !205, !206}
!329 = !{!"branch_weights", i32 0, i32 3471}
!330 = !{!331, !189, i64 0}
!331 = !{!"ao_ref_s", !189, i64 0, !189, i64 8, !195, i64 16, !195, i64 24, !195, i64 32, !194, i64 40, !194, i64 44}
!332 = !{!331, !189, i64 8}
!333 = !{!331, !195, i64 16}
!334 = !{!331, !195, i64 24}
!335 = !{!331, !195, i64 32}
!336 = !{!331, !194, i64 40}
!337 = !{!331, !194, i64 44}
!338 = distinct !{!338, !205, !206}
!339 = distinct !{!339, !205, !206}
!340 = !{!"function_entry_count", i64 912}
!341 = !{!"branch_weights", i32 0, i32 912}
!342 = !{!"branch_weights", i32 912, i32 0}
!343 = !{!"VP", i32 1, i64 912, i64 65, i64 500, i64 33, i64 286, i64 129, i64 126}
!344 = !{!264, !189, i64 24}
!345 = !{!264, !194, i64 16}
!346 = !{!347, !189, i64 16}
!347 = !{!"vn_tables_s", !189, i64 0, !189, i64 8, !189, i64 16, !211, i64 24, !189, i64 112, !189, i64 120}
!348 = !{!"branch_weights", i32 651, i32 341}
!349 = !{!"branch_weights", i32 0, i32 651}
!350 = !{!"branch_weights", i32 571, i32 341}
!351 = !{i8 0, i8 2}
!352 = !{!"branch_weights", i32 0, i32 571}
!353 = !{!"branch_weights", i32 571, i32 0}
!354 = !{!264, !189, i64 40}
!355 = !{!"function_entry_count", i64 1483}
!356 = !{!"tree-ssa-sccvn.c;valueize_refs"}
!357 = !{!"branch_weights", i32 665771, i32 494106}
!358 = !{!"branch_weights", i32 2103, i32 661565}
!359 = !{!"branch_weights", i32 42, i32 661523}
!360 = !{!"branch_weights", i32 0, i32 2145}
!361 = !{!"branch_weights", i32 2145, i32 0}
!362 = !{!"branch_weights", i32 42, i32 2103}
!363 = !{!"branch_weights", i32 0, i32 2103}
!364 = !{!"branch_weights", i32 0, i32 89759}
!365 = distinct !{!365, !205, !206}
!366 = !{!"tree-ssa-sccvn.c;vn_reference_lookup_1"}
!367 = !{!"branch_weights", i32 0, i32 341}
!368 = !{!"function_entry_count", i64 342626}
!369 = !{!"tree-ssa-sccvn.c;vn_reference_lookup_2"}
!370 = !{!"branch_weights", i32 171727, i32 170899}
!371 = !{!"branch_weights", i32 0, i32 342626}
!372 = !{!"branch_weights", i32 151440, i32 191186}
!373 = !{!"branch_weights", i32 0, i32 151440}
!374 = !{!"function_entry_count", i64 41872}
!375 = !{!"tree-ssa-sccvn.c;vn_reference_lookup_3"}
!376 = !{!"branch_weights", i32 18, i32 41854}
!377 = !{!"branch_weights", i32 0, i32 41854}
!378 = !{!"branch_weights", i32 41854, i32 0}
!379 = !{!380, !194, i64 0}
!380 = !{!"VEC_vn_reference_op_s_heap", !267, i64 0}
!381 = !{!382, !194, i64 0}
!382 = !{!"VEC_constructor_elt_base", !194, i64 0, !194, i64 4, !190, i64 8}
!383 = !{i32 0, i32 2}
!384 = distinct !{!384, !205, !206}
!385 = distinct !{!385, !205, !206}
!386 = !{i64 0, i64 8, !188, i64 8, i64 8, !188, i64 16, i64 8, !235, i64 24, i64 8, !235, i64 32, i64 8, !235, i64 40, i64 4, !203, i64 44, i64 4, !203}
!387 = !{!"function_entry_count", i64 342133}
!388 = !{!"branch_weights", i32 171059, i32 171074}
!389 = !{!"branch_weights", i32 0, i32 342133}
!390 = !{!"branch_weights", i32 76, i32 342057}
!391 = !{!"branch_weights", i32 342053, i32 80}
!392 = !{!"branch_weights", i32 342053, i32 0}
!393 = !{!"branch_weights", i32 150867, i32 191186}
!394 = !{!"branch_weights", i32 20489, i32 170697}
!395 = !{!347, !189, i64 120}
!396 = !{!"branch_weights", i32 150490, i32 0}
!397 = !{!"branch_weights", i32 0, i32 150490}
!398 = !{!228, !194, i64 16}
!399 = !{!264, !194, i64 0}
!400 = !{!"function_entry_count", i64 151061}
!401 = !{!"tree-ssa-sccvn.c;free_reference"}
!402 = !{!"branch_weights", i32 0, i32 151061}
!403 = !{!"function_entry_count", i64 571}
!404 = !{!"function_entry_count", i64 101}
!405 = !{!"branch_weights", i32 1, i32 274500}
!406 = !{!"branch_weights", i32 325827, i32 222729}
!407 = !{!"branch_weights", i32 0, i32 325827}
!408 = !{!"branch_weights", i32 274056, i32 274500}
!409 = distinct !{!409, !205, !206}
!410 = !{!"branch_weights", i32 274055, i32 446}
!411 = !{!"branch_weights", i32 56949, i32 217106}
!412 = !{!"branch_weights", i32 188196, i32 28910}
!413 = distinct !{!413, !205, !206}
!414 = !{!"function_entry_count", i64 481553}
!415 = !{!416, !194, i64 8}
!416 = !{!"vn_nary_op_s", !194, i64 0, !194, i64 4, !194, i64 6, !194, i64 8, !189, i64 16, !189, i64 24, !190, i64 32}
!417 = !{!"branch_weights", i32 181826, i32 299727}
!418 = !{!"branch_weights", i32 181826, i32 0}
!419 = !{!416, !189, i64 24}
!420 = !{!"branch_weights", i32 160, i32 181666}
!421 = !{!"branch_weights", i32 1, i32 181665}
!422 = !{!"branch_weights", i32 181299, i32 181665}
!423 = distinct !{!423, !205, !206}
!424 = !{!"function_entry_count", i64 2072}
!425 = !{!"function_entry_count", i64 86519}
!426 = !{!"branch_weights", i32 0, i32 86519}
!427 = !{!347, !189, i64 0}
!428 = !{!"branch_weights", i32 101, i32 86418}
!429 = !{!"branch_weights", i32 0, i32 101}
!430 = !{!"branch_weights", i32 0, i32 86418}
!431 = !{!416, !189, i64 16}
!432 = !{!"function_entry_count", i64 96121}
!433 = !{!"branch_weights", i32 96121, i32 0}
!434 = !{!"branch_weights", i32 0, i32 96121, i32 0, i32 0}
!435 = !{!"branch_weights", i32 12, i32 96109}
!436 = !{!"branch_weights", i32 0, i32 12}
!437 = !{!"branch_weights", i32 1, i32 96120}
!438 = !{!"branch_weights", i32 0, i32 192092}
!439 = !{!"branch_weights", i32 95972, i32 96120}
!440 = distinct !{!440, !205, !206}
!441 = !{!"branch_weights", i32 96121, i32 0, i32 0, i32 0}
!442 = !{!"branch_weights", i32 91760, i32 4361}
!443 = !{!"branch_weights", i32 0, i32 91760}
!444 = !{!"branch_weights", i32 4361, i32 0}
!445 = !{!347, !195, i64 64}
!446 = !{!347, !189, i64 56}
!447 = !{!347, !189, i64 48}
!448 = !{!"branch_weights", i32 1, i32 100}
!449 = !{!347, !189, i64 40}
!450 = !{!347, !194, i64 72}
!451 = !{!347, !189, i64 32}
!452 = !{!416, !194, i64 0}
!453 = !{!"branch_weights", i32 89, i32 12}
!454 = !{!"branch_weights", i32 101, i32 0}
!455 = distinct !{!455, !205, !206}
!456 = !{!"function_entry_count", i64 91760}
!457 = !{!"branch_weights", i32 1069, i32 90691}
!458 = !{!"branch_weights", i32 0, i32 91760, i32 0, i32 0}
!459 = !{!"branch_weights", i32 12, i32 91748}
!460 = !{!"branch_weights", i32 1, i32 91759}
!461 = !{!"branch_weights", i32 0, i32 183386}
!462 = !{!"branch_weights", i32 91627, i32 91759}
!463 = distinct !{!463, !205, !206}
!464 = !{!"branch_weights", i32 91760, i32 0, i32 0, i32 0}
!465 = !{!"branch_weights", i32 91760, i32 0}
!466 = !{!"function_entry_count", i64 76}
!467 = !{!"branch_weights", i32 0, i32 76}
!468 = !{!469, !189, i64 24}
!469 = !{!"function", !189, i64 0, !189, i64 8, !189, i64 16, !189, i64 24, !189, i64 32, !189, i64 40, !189, i64 48, !189, i64 56, !189, i64 64, !189, i64 72, !189, i64 80, !189, i64 88, !189, i64 96, !194, i64 104, !194, i64 108, !194, i64 112, !194, i64 116, !194, i64 120, !194, i64 124, !189, i64 128, !194, i64 136, !194, i64 137, !194, i64 138, !194, i64 138, !194, i64 138, !194, i64 138, !194, i64 138, !194, i64 138, !194, i64 138, !194, i64 139, !194, i64 139, !194, i64 139, !194, i64 139, !194, i64 139, !194, i64 139, !194, i64 139}
!470 = !{!471, !189, i64 16}
!471 = !{!"gimple_df", !189, i64 0, !189, i64 8, !189, i64 16, !189, i64 24, !472, i64 32, !472, i64 48, !189, i64 64, !189, i64 72, !189, i64 80, !189, i64 88, !194, i64 96, !473, i64 104}
!472 = !{!"pt_solution", !194, i64 0, !194, i64 0, !194, i64 0, !194, i64 0, !194, i64 0, !194, i64 0, !189, i64 8}
!473 = !{!"ssa_operands", !189, i64 0, !194, i64 8, !194, i64 12, !190, i64 16, !189, i64 24, !189, i64 32}
!474 = !{!"branch_weights", i32 0, i32 792161}
!475 = !{!476, !194, i64 0}
!476 = !{!"VEC_tree_base", !194, i64 0, !194, i64 4, !190, i64 8}
!477 = !{!"branch_weights", i32 792085, i32 76}
!478 = !{!"branch_weights", i32 159601, i32 632484}
!479 = !{!"branch_weights", i32 632484, i32 0}
!480 = distinct !{!480, !205, !206}
!481 = !{!"function_entry_count", i64 152}
!482 = !{!"tree-ssa-sccvn.c;free_vn_table"}
!483 = !{!347, !189, i64 8}
!484 = !{!"branch_weights", i32 0, i32 152}
!485 = !{!347, !189, i64 112}
!486 = !{!"branch_weights", i32 76, i32 0}
!487 = !{!"VP", i32 1, i64 76, i64 513, i64 58, i64 129, i64 16, i64 257, i64 2}
!488 = !{!469, !189, i64 8}
!489 = !{!490, !194, i64 32}
!490 = !{!"control_flow_graph", !189, i64 0, !189, i64 8, !189, i64 16, !194, i64 24, !194, i64 28, !194, i64 32, !189, i64 40, !194, i64 48, !190, i64 52, !190, i64 60, !194, i64 68, !194, i64 72}
!491 = !{!490, !194, i64 24}
!492 = !{!"branch_weights", i32 151, i32 1}
!493 = !{!"branch_weights", i32 977011, i32 151}
!494 = distinct !{!494, !205, !206}
!495 = !{!"branch_weights", i32 0, i32 792126}
!496 = !{!"branch_weights", i32 792050, i32 76}
!497 = !{!"branch_weights", i32 159800, i32 632250}
!498 = !{!"branch_weights", i32 0, i32 632250}
!499 = distinct !{!499, !205, !206}
!500 = !{!"branch_weights", i32 1, i32 151}
!501 = distinct !{!501, !205, !206}
!502 = !{!"branch_weights", i32 0, i32 792050}
!503 = !{!"branch_weights", i32 791974, i32 76}
!504 = !{!"branch_weights", i32 159724, i32 632250}
!505 = !{!"branch_weights", i32 400566, i32 231684}
!506 = !{!507, !189, i64 8}
!507 = !{!"ssa_use_operand_d", !189, i64 0, !189, i64 8, !190, i64 16, !189, i64 24}
!508 = !{!"branch_weights", i32 4483, i32 396083}
!509 = !{!"branch_weights", i32 396083, i32 0}
!510 = !{!"branch_weights", i32 396083, i32 4483}
!511 = !{!"branch_weights", i32 0, i32 627767}
!512 = !{!228, !194, i64 20}
!513 = !{!228, !194, i64 24}
!514 = !{!"branch_weights", i32 76, i32 627691}
!515 = !{!476, !194, i64 4}
!516 = !{!"branch_weights", i32 147, i32 627544}
!517 = !{!"branch_weights", i32 535583, i32 152, i32 92032}
!518 = !{!"branch_weights", i32 92032, i32 0}
!519 = !{!"branch_weights", i32 0, i32 535583}
!520 = !{!521, !189, i64 0}
!521 = !{!"use_optype_d", !189, i64 0, !507, i64 8}
!522 = !{!"branch_weights", i32 1187174, i32 627767}
!523 = !{!"branch_weights", i32 627767, i32 0}
!524 = distinct !{!524, !205, !206}
!525 = !{!526, !194, i64 8}
!526 = !{!"param_info", !189, i64 0, !194, i64 8, !190, i64 12, !194, i64 16, !194, i64 20, !189, i64 24}
!527 = distinct !{!527, !205, !206}
!528 = !{!"branch_weights", i32 497377, i32 130390}
!529 = distinct !{!529, !205, !206}
!530 = distinct !{!530, !205, !206}
!531 = distinct !{!531, !205, !206}
!532 = !{!"branch_weights", i32 255105, i32 372662}
!533 = !{!"branch_weights", i32 396083, i32 231684}
!534 = !{!"branch_weights", i32 255105, i32 140978}
!535 = !{!536, !194, i64 0}
!536 = !{!"VEC_ssa_op_iter_base", !194, i64 0, !194, i64 4, !190, i64 8}
!537 = !{!"branch_weights", i32 0, i32 231684}
!538 = !{!"branch_weights", i32 231684, i32 0}
!539 = !{!507, !189, i64 24}
!540 = !{!"branch_weights", i32 1065395, i32 121779}
!541 = !{!"branch_weights", i32 0, i32 1065395}
!542 = !{!"branch_weights", i32 231684, i32 833711}
!543 = !{!"branch_weights", i32 140978, i32 90706}
!544 = !{!536, !194, i64 4}
!545 = !{!"branch_weights", i32 948, i32 89758}
!546 = !{i64 0, i64 1, !199, i64 4, i64 4, !203, i64 8, i64 8, !188, i64 16, i64 8, !188, i64 24, i64 4, !203, i64 28, i64 4, !203, i64 32, i64 8, !188}
!547 = !{i64 3, i64 4, !203, i64 7, i64 8, !188, i64 15, i64 8, !188, i64 23, i64 4, !203, i64 27, i64 4, !203, i64 31, i64 8, !188}
!548 = !{i64 0, i64 4, !203, i64 4, i64 8, !188, i64 12, i64 8, !188, i64 20, i64 4, !203, i64 24, i64 4, !203, i64 28, i64 8, !188}
!549 = !{i64 0, i64 8, !188, i64 8, i64 8, !188, i64 16, i64 4, !203, i64 20, i64 4, !203, i64 24, i64 8, !188}
!550 = !{i64 0, i64 8, !188, i64 8, i64 4, !203, i64 12, i64 4, !203, i64 16, i64 8, !188}
!551 = !{i64 0, i64 4, !203, i64 4, i64 4, !203, i64 8, i64 8, !188}
!552 = !{i64 0, i64 4, !203, i64 4, i64 8, !188}
!553 = !{!"branch_weights", i32 833015, i32 232380}
!554 = !{!"branch_weights", i32 0, i32 833015}
!555 = !{!"branch_weights", i32 833015, i32 0}
!556 = !{!"branch_weights", i32 897263, i32 289911}
!557 = !{!"branch_weights", i32 269648, i32 627615}
!558 = !{!"branch_weights", i32 0, i32 269648}
!559 = distinct !{!559, !206}
!560 = distinct !{!560, !205, !206}
!561 = !{!"branch_weights", i32 606134, i32 26116}
!562 = !{!"branch_weights", i32 607296, i32 24954}
!563 = !{!"branch_weights", i32 24954, i32 0}
!564 = distinct !{!564, !205, !206}
!565 = !{!"branch_weights", i32 76, i32 52}
!566 = !{!"branch_weights", i32 0, i32 1576541}
!567 = !{!"branch_weights", i32 1576413, i32 128}
!568 = !{!"branch_weights", i32 318137, i32 1258276}
!569 = !{!"branch_weights", i32 0, i32 1258276}
!570 = !{!"branch_weights", i32 1208368, i32 49908}
!571 = !{!"branch_weights", i32 0, i32 49908}
!572 = !{!"branch_weights", i32 24954, i32 24954}
!573 = !{!"branch_weights", i32 0, i32 24954}
!574 = distinct !{!574, !205, !206}
!575 = !{!576, !189, i64 24}
!576 = !{!"htab", !189, i64 0, !189, i64 8, !189, i64 16, !189, i64 24, !195, i64 32, !195, i64 40, !195, i64 48, !194, i64 56, !194, i64 60, !189, i64 64, !189, i64 72, !189, i64 80, !189, i64 88, !189, i64 96, !194, i64 104}
!577 = !{!"branch_weights", i32 590, i32 60}
!578 = !{!"branch_weights", i32 574, i32 16}
!579 = distinct !{!579, !205, !206}
!580 = !{!"branch_weights", i32 60, i32 16}
!581 = !{!"branch_weights", i32 203812, i32 60}
!582 = !{!"branch_weights", i32 112112, i32 91700}
!583 = !{!"branch_weights", i32 183369, i32 151}
!584 = distinct !{!584, !205, !206}
!585 = !{!"branch_weights", i32 415, i32 76}
!586 = !{!"branch_weights", i32 415, i32 0}
!587 = !{!588, !189, i64 24}
!588 = !{!"vn_phi_s", !194, i64 0, !194, i64 4, !189, i64 8, !189, i64 16, !189, i64 24}
!589 = !{!"branch_weights", i32 0, i32 92008}
!590 = !{!"branch_weights", i32 92008, i32 0}
!591 = !{!588, !194, i64 0}
!592 = !{!"branch_weights", i32 198605, i32 76}
!593 = !{!"branch_weights", i32 106673, i32 91932}
!594 = !{!"branch_weights", i32 183865, i32 151}
!595 = distinct !{!595, !205, !206}
!596 = !{!"branch_weights", i32 125, i32 76}
!597 = !{!"branch_weights", i32 125, i32 0}
!598 = !{!"branch_weights", i32 236679, i32 76}
!599 = !{!"branch_weights", i32 86265, i32 150414}
!600 = !{!"branch_weights", i32 300829, i32 151}
!601 = distinct !{!601, !205, !206}
!602 = distinct !{!602, !205, !206}
!603 = !{!"function_entry_count", i64 824}
!604 = !{!"function_entry_count", i64 46}
!605 = !{!"branch_weights", i32 46, i32 0}
!606 = !{!"branch_weights", i32 46, i32 0, i32 0, i32 0}
!607 = !{!"branch_weights", i32 22, i32 24}
!608 = !{!"branch_weights", i32 42, i32 4}
!609 = !{!"branch_weights", i32 0, i32 46}
!610 = !{!"branch_weights", i32 1, i32 183}
!611 = !{!"branch_weights", i32 185, i32 183}
!612 = distinct !{!612, !205, !206}
!613 = !{!"branch_weights", i32 92, i32 0}
!614 = !{!"function_entry_count", i64 70}
!615 = !{!"tree-ssa-sccvn.c;vn_constant_hash"}
!616 = !{!"function_entry_count", i64 2793}
!617 = !{!"tree-ssa-sccvn.c;vn_constant_eq"}
!618 = !{!"branch_weights", i32 2269, i32 524}
!619 = !{!"function_entry_count", i64 147328}
!620 = !{!"tree-ssa-sccvn.c;vn_phi_hash"}
!621 = !{!588, !194, i64 4}
!622 = !{!"function_entry_count", i64 246941}
!623 = !{!"tree-ssa-sccvn.c;vn_phi_eq"}
!624 = !{!"branch_weights", i32 0, i32 246941}
!625 = !{!588, !189, i64 16}
!626 = !{!588, !189, i64 8}
!627 = distinct !{!627, !205, !206}
!628 = !{!"function_entry_count", i64 92008}
!629 = !{!"tree-ssa-sccvn.c;free_phi"}
!630 = !{!"function_entry_count", i64 151482}
!631 = !{!"tree-ssa-sccvn.c;vn_nary_op_hash"}
!632 = !{!"function_entry_count", i64 176567}
!633 = !{!"tree-ssa-sccvn.c;vn_reference_hash"}
!634 = !{!635, !194, i64 80}
!635 = !{!"basic_block_def", !189, i64 0, !189, i64 8, !189, i64 16, !189, i64 24, !190, i64 32, !189, i64 48, !189, i64 56, !190, i64 64, !195, i64 72, !194, i64 80, !194, i64 84, !194, i64 88, !194, i64 92, !194, i64 96}
!636 = !{!"function_entry_count", i64 497377}
!637 = !{!"tree-ssa-sccvn.c;visit_use"}
!638 = !{!"branch_weights", i32 0, i32 497377}
!639 = !{!"branch_weights", i32 497377, i32 0}
!640 = !{!"branch_weights", i32 497225, i32 152}
!641 = !{!"branch_weights", i32 0, i32 92032, i32 267180, i32 138013}
!642 = !{!"branch_weights", i32 1, i32 191}
!643 = !{!"branch_weights", i32 1613993, i32 191}
!644 = distinct !{!644, !205, !206}
!645 = !{!"branch_weights", i32 0, i32 201773}
!646 = !{!"branch_weights", i32 201425, i32 348}
!647 = !{!"branch_weights", i32 0, i32 201425}
!648 = !{!"branch_weights", i32 92032, i32 109741}
!649 = !{!"branch_weights", i32 92008, i32 17733}
!650 = !{!"branch_weights", i32 92008, i32 109765}
!651 = !{!"branch_weights", i32 92008, i32 24}
!652 = !{!"branch_weights", i32 24, i32 0}
!653 = !{!"branch_weights", i32 76, i32 91932}
!654 = !{!"branch_weights", i32 1, i32 92007}
!655 = !{!"branch_weights", i32 0, i32 361622}
!656 = !{!"branch_weights", i32 239843, i32 121779}
!657 = !{!"branch_weights", i32 0, i32 239843}
!658 = !{!"branch_weights", i32 76, i32 361546}
!659 = !{!"branch_weights", i32 555, i32 360991}
!660 = !{!"branch_weights", i32 269615, i32 92007}
!661 = distinct !{!661, !205, !206}
!662 = !{!"branch_weights", i32 2955, i32 89053}
!663 = !{!"branch_weights", i32 0, i32 453630}
!664 = !{!"branch_weights", i32 361622, i32 92008}
!665 = !{!"branch_weights", i32 92008, i32 361622}
!666 = distinct !{!666, !205, !206}
!667 = !{!"branch_weights", i32 92008, i32 269614}
!668 = !{!"branch_weights", i32 3646, i32 265968}
!669 = distinct !{!669, !205, !206}
!670 = !{!"branch_weights", i32 0, i32 631088}
!671 = !{!"branch_weights", i32 631088, i32 0}
!672 = !{!"branch_weights", i32 76, i32 631012}
!673 = !{!"branch_weights", i32 631012, i32 0}
!674 = !{!"branch_weights", i32 0, i32 631012}
!675 = !{!"branch_weights", i32 0, i32 138013}
!676 = !{!"branch_weights", i32 4302, i32 400891}
!677 = !{!"branch_weights", i32 400891, i32 0}
!678 = !{!"branch_weights", i32 0, i32 -2062160735, i32 1117414470}
!679 = !{!"branch_weights", i32 0, i32 267180}
!680 = !{!"branch_weights", i32 267020, i32 160}
!681 = !{!"branch_weights", i32 0, i32 160}
!682 = !{!"branch_weights", i32 160, i32 0}
!683 = !{!"branch_weights", i32 80, i32 80}
!684 = !{!"branch_weights", i32 0, i32 80}
!685 = !{!"branch_weights", i32 267020, i32 80}
!686 = !{!"branch_weights", i32 80, i32 0}
!687 = !{!"branch_weights", i32 0, i32 267020, i32 0, i32 0}
!688 = !{!"branch_weights", i32 170911, i32 96109}
!689 = !{!"branch_weights", i32 0, i32 170911}
!690 = !{!"branch_weights", i32 9766, i32 141216, i32 29683, i32 138, i32 38960, i32 47257}
!691 = !{!"branch_weights", i32 0, i32 141216}
!692 = !{!"branch_weights", i32 141216, i32 0}
!693 = !{!"branch_weights", i32 0, i32 29683}
!694 = !{!"branch_weights", i32 29683, i32 0}
!695 = !{!"branch_weights", i32 0, i32 138}
!696 = !{!"branch_weights", i32 0, i32 138, i32 0, i32 0}
!697 = !{!"branch_weights", i32 138, i32 0}
!698 = !{!"branch_weights", i32 132, i32 6}
!699 = !{!"branch_weights", i32 132, i32 0}
!700 = !{!"branch_weights", i32 0, i32 132}
!701 = !{!"branch_weights", i32 92, i32 40}
!702 = !{!"branch_weights", i32 0, i32 0, i32 40}
!703 = !{!"branch_weights", i32 40, i32 98}
!704 = !{!"branch_weights", i32 0, i32 98, i32 0, i32 0}
!705 = !{!"branch_weights", i32 0, i32 98}
!706 = !{!"branch_weights", i32 98, i32 0}
!707 = !{!"branch_weights", i32 0, i32 86217}
!708 = !{!"branch_weights", i32 86217, i32 0}
!709 = !{!"branch_weights", i32 71932, i32 14285}
!710 = !{!"branch_weights", i32 0, i32 71932}
!711 = !{!"branch_weights", i32 42907, i32 29025}
!712 = !{!"branch_weights", i32 0, i32 42907, i32 0, i32 0}
!713 = !{!"branch_weights", i32 0, i32 42907}
!714 = !{!"branch_weights", i32 33943, i32 8964}
!715 = !{!"branch_weights", i32 0, i32 8964}
!716 = !{!"branch_weights", i32 7483, i32 1481}
!717 = !{!"branch_weights", i32 0, i32 1481}
!718 = !{!"branch_weights", i32 25151, i32 61066}
!719 = !{!"branch_weights", i32 0, i32 25151}
!720 = !{!"branch_weights", i32 15560, i32 9591}
!721 = !{!"branch_weights", i32 0, i32 15560}
!722 = !{!"branch_weights", i32 12873, i32 2687}
!723 = !{!"branch_weights", i32 0, i32 2687}
!724 = !{!"branch_weights", i32 53868, i32 32349}
!725 = !{!"branch_weights", i32 53868, i32 0}
!726 = !{!"branch_weights", i32 0, i32 53868}
!727 = !{!"branch_weights", i32 51158, i32 2710}
!728 = !{!"branch_weights", i32 0, i32 35059, i32 0, i32 0}
!729 = !{!"branch_weights", i32 0, i32 35059}
!730 = !{!"branch_weights", i32 34776, i32 283}
!731 = !{!"branch_weights", i32 17, i32 266}
!732 = !{!"branch_weights", i32 266, i32 266834}
!733 = !{!"branch_weights", i32 0, i32 267100}
!734 = !{!"branch_weights", i32 266, i32 0}
!735 = !{!"branch_weights", i32 0, i32 266}
!736 = !{!"branch_weights", i32 0, i32 0, i32 266, i32 0, i32 0}
!737 = !{!"branch_weights", i32 266834, i32 133711}
!738 = !{!"branch_weights", i32 170991, i32 95843}
!739 = !{!"branch_weights", i32 0, i32 170991}
!740 = !{!"branch_weights", i32 0, i32 138, i32 95705, i32 170991}
!741 = !{!"branch_weights", i32 0, i32 95705}
!742 = !{!"branch_weights", i32 81420, i32 14285}
!743 = !{!"branch_weights", i32 81420, i32 0}
!744 = !{!"branch_weights", i32 0, i32 81420}
!745 = !{!"branch_weights", i32 191505, i32 75329}
!746 = !{!"branch_weights", i32 75329, i32 0}
!747 = !{!"branch_weights", i32 0, i32 75329}
!748 = !{!"branch_weights", i32 191425, i32 80}
!749 = !{!"branch_weights", i32 0, i32 191425}
!750 = !{!"branch_weights", i32 267020, i32 0}
!751 = !{!"branch_weights", i32 266, i32 266754}
!752 = !{!"branch_weights", i32 96109, i32 170991}
!753 = !{!"branch_weights", i32 80, i32 170911}
!754 = !{!"branch_weights", i32 80, i32 267020}
!755 = !{!"branch_weights", i32 0, i32 138, i32 95971, i32 170911}
!756 = !{!"branch_weights", i32 134, i32 16}
!757 = !{!"branch_weights", i32 91626, i32 4345}
!758 = !{!"branch_weights", i32 0, i32 170911, i32 0, i32 0}
!759 = !{!"branch_weights", i32 170911, i32 0}
!760 = !{!"branch_weights", i32 0, i32 29683, i32 141216, i32 12}
!761 = !{!"branch_weights", i32 0, i32 29683, i32 0, i32 0}
!762 = !{!"branch_weights", i32 0, i32 170899}
!763 = !{!"branch_weights", i32 150410, i32 20489}
!764 = !{!"branch_weights", i32 0, i32 150410}
!765 = !{!"branch_weights", i32 0, i32 20489}
!766 = !{!"branch_weights", i32 20489, i32 0}
!767 = !{!"branch_weights", i32 0, i32 12, i32 0, i32 0}
!768 = !{!"branch_weights", i32 12, i32 0}
!769 = !{!"branch_weights", i32 0, i32 133711}
!770 = !{!"branch_weights", i32 133711, i32 0}
!771 = !{!772, !189, i64 8}
!772 = !{!"def_optype_d", !189, i64 0, !189, i64 8}
!773 = !{!772, !189, i64 0}
!774 = !{!"branch_weights", i32 1, i32 138012}
!775 = !{!"branch_weights", i32 0, i32 271724}
!776 = !{!"branch_weights", i32 138013, i32 133711}
!777 = !{!"branch_weights", i32 133712, i32 138012}
!778 = distinct !{!778, !205, !206}
!779 = !{!"function_entry_count", i64 25320}
!780 = !{!"tree-ssa-sccvn.c;set_ssa_val_to"}
!781 = !{!"branch_weights", i32 606134, i32 24954}
!782 = !{!"function_entry_count", i64 4302}
!783 = !{!"tree-ssa-sccvn.c;defs_to_varying"}
!784 = !{!"function_entry_count", i64 104}
!785 = !{!"tree-ssa-sccvn.c;visit_copy"}
!786 = !{!"branch_weights", i32 1, i32 0}
!787 = !{!"branch_weights", i32 0, i32 144}
!788 = !{!"branch_weights", i32 104, i32 40}
!789 = !{!"branch_weights", i32 0, i32 40}
!790 = !{!"branch_weights", i32 144, i32 0}
!791 = distinct !{!791, !205, !206}
!792 = !{!"branch_weights", i32 104, i32 0}
!793 = !{!"branch_weights", i32 0, i32 104}
!794 = !{!"tree-ssa-sccvn.c;expr_has_constants"}
!795 = !{!"function_entry_count", i64 12}
!796 = !{!"tree-ssa-sccvn.c;visit_unary_op"}
!797 = !{!"tree-ssa-sccvn.c;valueize_expr"}
!798 = !{!"branch_weights", i32 53125, i32 0, i32 19572}
!799 = !{!"branch_weights", i32 5287, i32 14285}
!800 = !{!"branch_weights", i32 0, i32 5287}
!801 = !{!"branch_weights", i32 14377, i32 5195}
!802 = !{!"branch_weights", i32 0, i32 14377}
