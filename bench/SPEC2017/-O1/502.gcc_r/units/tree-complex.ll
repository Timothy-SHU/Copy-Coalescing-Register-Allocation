; ModuleID = 'tree-complex.c'
source_filename = "tree-complex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gimple_opt_pass = type { %struct.opt_pass }
%struct.opt_pass = type { i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct.real_value = type { i32, [3 x i64] }
%struct._IO_FILE = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, [1 x i8], ptr, i64, ptr, ptr, ptr, ptr, i64, i32, [20 x i8] }
%struct.gimple_stmt_iterator = type { ptr, ptr, ptr }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.basic_block_def = type { ptr, ptr, ptr, ptr, [2 x ptr], ptr, ptr, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%union.basic_block_il_dependent = type { ptr }
%struct.control_flow_graph = type { ptr, ptr, ptr, i32, i32, i32, ptr, i32, [2 x i32], [2 x i32], i32, i32 }
%struct.gimple_statement_phi = type { %struct.gimple_statement_base, i32, i32, ptr, [1 x %struct.phi_arg_d] }
%struct.gimple_statement_base = type { i32, i32, i32, i32, ptr, ptr }
%struct.phi_arg_d = type { %struct.ssa_use_operand_d, ptr, i32 }
%struct.ssa_use_operand_d = type { ptr, ptr, %union.anon, ptr }
%union.anon = type { ptr }
%struct.tree_common = type { %struct.tree_base, ptr, ptr }
%struct.tree_base = type { i64 }
%struct.gimple_seq_node_d = type { ptr, ptr, ptr }
%struct.tree_exp = type { %struct.tree_common, i32, ptr, [1 x ptr] }
%struct.gimple_df = type { ptr, ptr, ptr, ptr, %struct.pt_solution, %struct.pt_solution, ptr, ptr, ptr, ptr, i8, %struct.ssa_operands }
%struct.pt_solution = type { i8, ptr }
%struct.ssa_operands = type { ptr, i32, i32, i8, ptr, ptr }
%struct.VEC_complex_lattice_t_base = type { i32, i32, [1 x i32] }
%struct.tree_decl_non_common = type { %struct.tree_decl_with_vis, ptr, ptr, ptr, ptr }
%struct.tree_decl_with_vis = type { %struct.tree_decl_with_rtl, ptr, ptr, ptr, i24 }
%struct.tree_decl_with_rtl = type { %struct.tree_decl_common, ptr }
%struct.tree_decl_common = type { %struct.tree_decl_minimal, ptr, i40, i32, ptr, ptr, ptr, ptr, ptr }
%struct.tree_decl_minimal = type { %struct.tree_common, i32, i32, ptr, ptr }
%struct.tree_var_decl = type { %struct.tree_decl_with_vis, ptr }
%struct.tree_parm_decl = type { %struct.tree_decl_with_rtl, ptr, ptr }
%struct.tree_result_decl = type { %struct.tree_decl_with_rtl, ptr }
%struct.tree_ssa_name = type { %struct.tree_common, ptr, ptr, i32, ptr, %struct.ssa_use_operand_d }
%struct.VEC_tree_base = type { i32, i32, [1 x ptr] }
%struct.VEC_edge_base = type { i32, i32, [1 x ptr] }
%struct.edge_def = type { ptr, ptr, %union.edge_def_insns, ptr, ptr, i32, i32, i32, i32, i64 }
%union.edge_def_insns = type { ptr }
%struct.tree_real_cst = type { %struct.tree_common, ptr }
%struct.gimple_seq_d = type { ptr, ptr, ptr }
%struct.tree_complex = type { %struct.tree_common, ptr, ptr }
%struct.int_tree_map = type { i32, ptr }
%struct.tree_identifier = type { %struct.tree_common, %struct.ht_identifier }
%struct.ht_identifier = type { ptr, i32, i32 }
%struct.tree_type = type { %struct.tree_common, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, %union.tree_type_symtab, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.tree_type_symtab = type { ptr }

@stdout = external local_unnamed_addr global ptr, align 8
@stdin = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [10 x i8] c"cplxlower\00", align 1
@pass_lower_complex = dso_local local_unnamed_addr global %struct.gimple_opt_pass { %struct.opt_pass { i32 0, ptr @.str, ptr null, ptr @tree_lower_complex, ptr null, ptr null, i32 0, i32 0, i32 32, i32 1024, i32 0, i32 0, i32 2067 } }, align 8
@.str.1 = private unnamed_addr constant [11 x i8] c"cplxlower0\00", align 1
@pass_lower_complex_O0 = dso_local local_unnamed_addr global %struct.gimple_opt_pass { %struct.opt_pass { i32 0, ptr @.str.1, ptr @gate_no_optimization, ptr @tree_lower_complex, ptr null, ptr null, i32 0, i32 0, i32 8, i32 1024, i32 0, i32 0, i32 2067 } }, align 8
@cfun = external local_unnamed_addr global ptr, align 8
@complex_lattice_values = internal unnamed_addr global ptr null, align 8
@complex_variable_components = internal unnamed_addr global ptr null, align 8
@complex_ssa_name_components = internal unnamed_addr global ptr null, align 8
@gimple_ops_offset_ = external local_unnamed_addr constant [0 x i64], align 8
@.str.2 = private unnamed_addr constant [11 x i8] c"./gimple.h\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@gss_for_code_ = external local_unnamed_addr constant [0 x i32], align 4
@gimple_rhs_class_table = external local_unnamed_addr constant [0 x i8], align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"tree-complex.c\00", align 1
@flag_signed_zeros = external local_unnamed_addr global i32, align 4
@dconst0 = external global %struct.real_value, align 8
@.str.5 = private unnamed_addr constant [16 x i8] c"./basic-block.h\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"CI\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"CR\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"$imag\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"$real\00", align 1
@libiberty_concat_ptr = external local_unnamed_addr global ptr, align 8
@tree_code_type = external local_unnamed_addr constant [0 x i32], align 4
@dconst1 = external global %struct.real_value, align 8
@flag_complex_method = external local_unnamed_addr global i32, align 4
@mode_class = external local_unnamed_addr constant [87 x i8], align 16
@built_in_decls = external local_unnamed_addr global [721 x ptr], align 16
@global_trees = external local_unnamed_addr global [131 x ptr], align 16

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @vprintf(ptr noalias nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 !prof !38 {
  %3 = load ptr, ptr @stdout, align 8, !tbaa !39
  %4 = tail call i32 @vfprintf(ptr noundef %3, ptr noundef %0, ptr noundef %1)
  ret i32 %4
}

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @getchar() local_unnamed_addr #0 !prof !38 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !39
  %2 = tail call i32 @getc(ptr noundef %1)
  ret i32 %2
}

; Function Attrs: nofree nounwind
declare noundef i32 @getc(ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !38 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !48
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !49

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #17
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !43
  %11 = load i8, ptr %3, align 1, !tbaa !50
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

declare i32 @__uflow(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !38 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !48
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !49

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #17
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !43
  %11 = load i8, ptr %3, align 1, !tbaa !50
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #2 !prof !38 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !39
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !48
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !49

7:                                                ; preds = %0
  %8 = tail call i32 @__uflow(ptr noundef %1) #17
  br label %13

9:                                                ; preds = %0
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !43
  %11 = load i8, ptr %3, align 1, !tbaa !50
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @putchar(i32 noundef %0) local_unnamed_addr #0 !prof !38 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !39
  %3 = tail call i32 @putc(i32 noundef %0, ptr noundef %2)
  ret i32 %3
}

; Function Attrs: nofree nounwind
declare noundef i32 @putc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !38 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !51
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !52
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !49

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #17
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !51
  store i8 %12, ptr %4, align 1, !tbaa !50
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

declare i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !38 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !51
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !52
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !49

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #17
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !51
  store i8 %12, ptr %4, align 1, !tbaa !50
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 noundef %0) local_unnamed_addr #2 !prof !38 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !39
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !51
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !52
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !49

8:                                                ; preds = %1
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %2, i32 noundef %9) #17
  br label %15

11:                                               ; preds = %1
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !51
  store i8 %12, ptr %4, align 1, !tbaa !50
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i64 @getline(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 !prof !38 {
  %4 = tail call i64 @__getdelim(ptr noundef %0, ptr noundef %1, i32 noundef 10, ptr noundef %2) #17
  ret i64 %4
}

declare i64 @__getdelim(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @feof_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !38 {
  %2 = load i32, ptr %0, align 8, !tbaa !53
  %3 = lshr i32 %2, 4
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @ferror_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !38 {
  %2 = load i32, ptr %0, align 8, !tbaa !53
  %3 = lshr i32 %2, 5
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @tolower(i32 noundef %0) local_unnamed_addr #5 !prof !38 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_tolower_loc() #17
  %6 = load ptr, ptr %5, align 8, !tbaa !39
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !54
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_tolower_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @toupper(i32 noundef %0) local_unnamed_addr #5 !prof !38 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_toupper_loc() #17
  %6 = load ptr, ptr %5, align 8, !tbaa !39
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !54
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_toupper_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i32 @atoi(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !38 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  %3 = trunc i64 %2 to i32
  ret i32 %3
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atol(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !38 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atoll(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !38 {
  %2 = tail call i64 @strtoll(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtoll(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local noundef ptr @bsearch(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #2 !prof !38 {
  %6 = icmp eq i64 %2, 0
  br i1 %6, label %24, label %7

7:                                                ; preds = %5, %20
  %8 = phi i64 [ %22, %20 ], [ 0, %5 ]
  %9 = phi i64 [ %21, %20 ], [ %2, %5 ]
  %10 = add i64 %8, %9
  %11 = lshr i64 %10, 1
  %12 = mul i64 %11, %3
  %13 = getelementptr inbounds i8, ptr %1, i64 %12
  %14 = tail call i32 %4(ptr noundef %0, ptr noundef %13) #17
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
  br i1 %23, label %7, label %24, !llvm.loop !55

24:                                               ; preds = %16, %20, %5
  %25 = phi ptr [ null, %5 ], [ %13, %16 ], [ null, %20 ]
  ret ptr %25
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local double @atof(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !38 {
  %2 = tail call double @strtod(ptr nocapture noundef %0, ptr noundef null)
  ret double %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define internal noundef i32 @tree_lower_complex() #9 !prof !58 !PGOFuncName !59 {
  %1 = alloca %struct.gimple_stmt_iterator, align 8
  %2 = alloca %struct.gimple_stmt_iterator, align 8
  %3 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #17
  %4 = load ptr, ptr @cfun, align 8, !tbaa !39
  %5 = getelementptr inbounds %struct.function, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !60
  %7 = load ptr, ptr %6, align 8, !tbaa !62
  %8 = getelementptr inbounds %struct.basic_block_def, ptr %7, i64 0, i32 6
  %9 = load ptr, ptr %8, align 8, !tbaa !64
  %10 = getelementptr inbounds %struct.control_flow_graph, ptr %6, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !66
  %12 = icmp eq ptr %9, %11
  br i1 %12, label %371, label %23, !prof !67

13:                                               ; preds = %360, %67
  %14 = phi i8 [ %25, %67 ], [ %361, %360 ]
  %15 = getelementptr inbounds %struct.basic_block_def, ptr %24, i64 0, i32 6
  %16 = load ptr, ptr %15, align 8, !tbaa !64
  %17 = load ptr, ptr @cfun, align 8, !tbaa !39
  %18 = getelementptr inbounds %struct.function, ptr %17, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !60
  %20 = getelementptr inbounds %struct.control_flow_graph, ptr %19, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !66
  %22 = icmp eq ptr %16, %21
  br i1 %22, label %371, label %23, !prof !68, !llvm.loop !69

23:                                               ; preds = %0, %13
  %24 = phi ptr [ %16, %13 ], [ %9, %0 ]
  %25 = phi i8 [ %14, %13 ], [ 0, %0 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #17
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %2, ptr noundef %24) #17
  %26 = load ptr, ptr %2, align 8, !tbaa.struct !70
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #17
  %27 = icmp eq ptr %26, null
  br i1 %27, label %51, label %28, !prof !71

28:                                               ; preds = %23, %42
  %29 = phi ptr [ %49, %42 ], [ %26, %23 ]
  %30 = load ptr, ptr %29, align 8, !tbaa !72
  %31 = getelementptr inbounds %struct.gimple_statement_phi, ptr %30, i64 0, i32 3
  %32 = load ptr, ptr %31, align 8, !tbaa !50
  %33 = getelementptr inbounds %struct.tree_common, ptr %32, i64 0, i32 2
  %34 = load ptr, ptr %33, align 8, !tbaa !50
  %35 = load i64, ptr %34, align 8
  %36 = and i64 %35, 65535
  %37 = icmp eq i64 %36, 13
  br i1 %37, label %38, label %42, !prof !74

38:                                               ; preds = %28
  %39 = call zeroext i8 @is_gimple_reg(ptr noundef %32) #17
  %40 = icmp ne i8 %39, 0
  %41 = zext i1 %40 to i32
  br label %42

42:                                               ; preds = %38, %28
  %43 = phi i32 [ 0, %28 ], [ %41, %38 ]
  %44 = load i32, ptr %30, align 8
  %45 = shl nuw nsw i32 %43, 9
  %46 = and i32 %44, -513
  %47 = or disjoint i32 %46, %45
  store i32 %47, ptr %30, align 8
  %48 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %29, i64 0, i32 2
  %49 = load ptr, ptr %48, align 8, !tbaa !75
  %50 = icmp eq ptr %49, null
  br i1 %50, label %51, label %28, !prof !76, !llvm.loop !77

51:                                               ; preds = %42, %23
  %52 = getelementptr inbounds %struct.basic_block_def, ptr %24, i64 0, i32 13
  %53 = load i32, ptr %52, align 8, !tbaa !78, !noalias !79
  %54 = and i32 %53, 512
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %62, !prof !82

56:                                               ; preds = %51
  %57 = getelementptr inbounds %struct.basic_block_def, ptr %24, i64 0, i32 7
  %58 = load ptr, ptr %57, align 8, !tbaa !50, !noalias !79
  %59 = icmp eq ptr %58, null
  br i1 %59, label %62, label %60, !prof !83

60:                                               ; preds = %56
  %61 = load ptr, ptr %58, align 8, !tbaa !84, !noalias !79
  br label %62

62:                                               ; preds = %60, %56, %51
  %63 = phi ptr [ %61, %60 ], [ null, %56 ], [ null, %51 ]
  %64 = icmp eq ptr %63, null
  br i1 %64, label %67, label %65, !prof !83

65:                                               ; preds = %62
  %66 = load ptr, ptr %63, align 8, !tbaa !86, !noalias !79
  br label %67

67:                                               ; preds = %65, %62
  %68 = phi ptr [ %66, %65 ], [ null, %62 ]
  %69 = icmp eq ptr %68, null
  br i1 %69, label %13, label %70, !prof !88

70:                                               ; preds = %67, %360
  %71 = phi i8 [ %361, %360 ], [ %25, %67 ]
  %72 = phi ptr [ %369, %360 ], [ %68, %67 ]
  %73 = load ptr, ptr %72, align 8, !tbaa !72
  %74 = call zeroext i8 @stmt_ends_bb_p(ptr noundef %73) #17
  %75 = load i32, ptr %73, align 8
  %76 = and i32 %75, 255
  %77 = trunc i32 %75 to i8
  switch i8 %77, label %316 [
    i8 8, label %78
    i8 6, label %124
    i8 1, label %282
  ], !prof !89

78:                                               ; preds = %70
  %79 = add nsw i32 %76, -10
  %80 = icmp ult i32 %79, -9
  br i1 %80, label %93, label %81, !prof !90

81:                                               ; preds = %78
  %82 = zext nneg i32 %76 to i64
  %83 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %82
  %84 = load i32, ptr %83, align 4, !tbaa !54
  %85 = zext i32 %84 to i64
  %86 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %85
  %87 = load i64, ptr %86, align 8, !tbaa !91
  %88 = icmp eq i64 %87, 0
  br i1 %88, label %89, label %90, !prof !90

89:                                               ; preds = %81
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1622, ptr noundef nonnull @.str.3) #17
  br label %90

90:                                               ; preds = %89, %81
  %91 = getelementptr inbounds i8, ptr %73, i64 %87
  %92 = load ptr, ptr %91, align 8, !tbaa !39
  br label %93

93:                                               ; preds = %90, %78
  %94 = phi ptr [ %92, %90 ], [ null, %78 ]
  %95 = icmp eq ptr %94, null
  br i1 %95, label %316, label %96, !prof !92

96:                                               ; preds = %93
  %97 = load i32, ptr %73, align 8
  %98 = and i32 %97, 255
  %99 = add nsw i32 %98, -10
  %100 = icmp ult i32 %99, -9
  br i1 %100, label %113, label %101, !prof !93

101:                                              ; preds = %96
  %102 = zext nneg i32 %98 to i64
  %103 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %102
  %104 = load i32, ptr %103, align 4, !tbaa !54
  %105 = zext i32 %104 to i64
  %106 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %105
  %107 = load i64, ptr %106, align 8, !tbaa !91
  %108 = icmp eq i64 %107, 0
  br i1 %108, label %109, label %110, !prof !93

109:                                              ; preds = %101
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1622, ptr noundef nonnull @.str.3) #17
  br label %110

110:                                              ; preds = %109, %101
  %111 = getelementptr inbounds i8, ptr %73, i64 %107
  %112 = load ptr, ptr %111, align 8, !tbaa !39
  br label %113

113:                                              ; preds = %110, %96
  %114 = phi ptr [ %112, %110 ], [ null, %96 ]
  %115 = getelementptr inbounds %struct.tree_common, ptr %114, i64 0, i32 2
  %116 = load ptr, ptr %115, align 8, !tbaa !50
  %117 = load i64, ptr %116, align 8
  %118 = and i64 %117, 65535
  %119 = icmp eq i64 %118, 13
  br i1 %119, label %120, label %316, !prof !93

120:                                              ; preds = %113
  %121 = call zeroext i8 @is_gimple_reg(ptr noundef %114) #17
  %122 = icmp ne i8 %121, 0
  %123 = zext i1 %122 to i8
  br label %316

124:                                              ; preds = %70
  %125 = add nsw i32 %76, -10
  %126 = icmp ult i32 %125, -9
  br i1 %126, label %139, label %127, !prof !94

127:                                              ; preds = %124
  %128 = zext nneg i32 %76 to i64
  %129 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %128
  %130 = load i32, ptr %129, align 4, !tbaa !54
  %131 = zext i32 %130 to i64
  %132 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %131
  %133 = load i64, ptr %132, align 8, !tbaa !91
  %134 = icmp eq i64 %133, 0
  br i1 %134, label %135, label %136, !prof !94

135:                                              ; preds = %127
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1622, ptr noundef nonnull @.str.3) #17
  br label %136

136:                                              ; preds = %135, %127
  %137 = getelementptr inbounds i8, ptr %73, i64 %133
  %138 = load ptr, ptr %137, align 8, !tbaa !39
  br label %139

139:                                              ; preds = %136, %124
  %140 = phi ptr [ %138, %136 ], [ null, %124 ]
  %141 = getelementptr inbounds %struct.tree_common, ptr %140, i64 0, i32 2
  %142 = load ptr, ptr %141, align 8, !tbaa !50
  %143 = load i64, ptr %142, align 8
  %144 = and i64 %143, 65535
  %145 = icmp eq i64 %144, 13
  br i1 %145, label %146, label %150, !prof !94

146:                                              ; preds = %139
  %147 = call zeroext i8 @is_gimple_reg(ptr noundef %140) #17
  %148 = icmp ne i8 %147, 0
  %149 = zext i1 %148 to i8
  br label %150

150:                                              ; preds = %146, %139
  %151 = phi i8 [ 0, %139 ], [ %149, %146 ]
  %152 = load i32, ptr %73, align 8
  %153 = trunc i32 %152 to i8
  switch i8 %153, label %156 [
    i8 6, label %154
    i8 1, label %154
    i8 8, label %157
  ], !prof !95

154:                                              ; preds = %150, %150
  %155 = lshr i32 %152, 16
  br label %157

156:                                              ; preds = %150
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1446, ptr noundef nonnull @.str.3) #17
  br label %157

157:                                              ; preds = %156, %154, %150
  %158 = phi i32 [ %155, %154 ], [ 0, %156 ], [ 59, %150 ]
  %159 = zext nneg i32 %158 to i64
  %160 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %159
  %161 = load i8, ptr %160, align 1, !tbaa !50
  %162 = icmp eq i8 %161, 3
  br i1 %162, label %163, label %183, !prof !96

163:                                              ; preds = %157
  %164 = load i32, ptr %73, align 8
  %165 = and i32 %164, 255
  %166 = add nsw i32 %165, -1
  %167 = icmp ult i32 %166, 9
  call void @llvm.assume(i1 %167)
  %168 = zext nneg i32 %165 to i64
  %169 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %168
  %170 = load i32, ptr %169, align 4, !tbaa !54
  %171 = zext i32 %170 to i64
  %172 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %171
  %173 = load i64, ptr %172, align 8, !tbaa !91
  %174 = icmp eq i64 %173, 0
  br i1 %174, label %175, label %176, !prof !97

175:                                              ; preds = %163
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1622, ptr noundef nonnull @.str.3) #17
  br label %176

176:                                              ; preds = %175, %163
  %177 = getelementptr inbounds i8, ptr %73, i64 %173
  %178 = getelementptr inbounds ptr, ptr %177, i64 1
  %179 = load ptr, ptr %178, align 8, !tbaa !39
  %180 = load i64, ptr %179, align 8
  %181 = trunc i64 %180 to i32
  %182 = and i32 %181, 65535
  br label %183

183:                                              ; preds = %176, %157
  %184 = phi i32 [ %182, %176 ], [ %158, %157 ]
  %185 = icmp eq i32 %184, 43
  br i1 %185, label %221, label %186, !prof !94

186:                                              ; preds = %183
  %187 = load i32, ptr %73, align 8
  %188 = trunc i32 %187 to i8
  switch i8 %188, label %191 [
    i8 6, label %189
    i8 1, label %189
    i8 8, label %192
  ], !prof !95

189:                                              ; preds = %186, %186
  %190 = lshr i32 %187, 16
  br label %192

191:                                              ; preds = %186
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1446, ptr noundef nonnull @.str.3) #17
  br label %192

192:                                              ; preds = %191, %189, %186
  %193 = phi i32 [ %190, %189 ], [ 0, %191 ], [ 59, %186 ]
  %194 = zext nneg i32 %193 to i64
  %195 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %194
  %196 = load i8, ptr %195, align 1, !tbaa !50
  %197 = icmp eq i8 %196, 3
  br i1 %197, label %198, label %218, !prof !96

198:                                              ; preds = %192
  %199 = load i32, ptr %73, align 8
  %200 = and i32 %199, 255
  %201 = add nsw i32 %200, -1
  %202 = icmp ult i32 %201, 9
  call void @llvm.assume(i1 %202)
  %203 = zext nneg i32 %200 to i64
  %204 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %203
  %205 = load i32, ptr %204, align 4, !tbaa !54
  %206 = zext i32 %205 to i64
  %207 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %206
  %208 = load i64, ptr %207, align 8, !tbaa !91
  %209 = icmp eq i64 %208, 0
  br i1 %209, label %210, label %211, !prof !97

210:                                              ; preds = %198
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1622, ptr noundef nonnull @.str.3) #17
  br label %211

211:                                              ; preds = %210, %198
  %212 = getelementptr inbounds i8, ptr %73, i64 %208
  %213 = getelementptr inbounds ptr, ptr %212, i64 1
  %214 = load ptr, ptr %213, align 8, !tbaa !39
  %215 = load i64, ptr %214, align 8
  %216 = trunc i64 %215 to i32
  %217 = and i32 %216, 65535
  br label %218

218:                                              ; preds = %211, %192
  %219 = phi i32 [ %217, %211 ], [ %193, %192 ]
  %220 = icmp eq i32 %219, 44
  br i1 %220, label %221, label %239, !prof !94

221:                                              ; preds = %218, %183
  %222 = load i32, ptr %73, align 8
  %223 = and i32 %222, 255
  %224 = add nsw i32 %223, -1
  %225 = icmp ult i32 %224, 9
  call void @llvm.assume(i1 %225)
  %226 = zext nneg i32 %223 to i64
  %227 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %226
  %228 = load i32, ptr %227, align 4, !tbaa !54
  %229 = zext i32 %228 to i64
  %230 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %229
  %231 = load i64, ptr %230, align 8, !tbaa !91
  %232 = icmp eq i64 %231, 0
  br i1 %232, label %233, label %234

233:                                              ; preds = %221
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1622, ptr noundef nonnull @.str.3) #17
  br label %234

234:                                              ; preds = %233, %221
  %235 = getelementptr inbounds i8, ptr %73, i64 %231
  %236 = getelementptr inbounds ptr, ptr %235, i64 1
  %237 = load ptr, ptr %236, align 8, !tbaa !39
  %238 = getelementptr inbounds %struct.tree_exp, ptr %237, i64 0, i32 3
  br label %256

239:                                              ; preds = %218
  %240 = load i32, ptr %73, align 8
  %241 = and i32 %240, 255
  %242 = add nsw i32 %241, -10
  %243 = icmp ult i32 %242, -9
  br i1 %243, label %259, label %244, !prof !94

244:                                              ; preds = %239
  %245 = zext nneg i32 %241 to i64
  %246 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %245
  %247 = load i32, ptr %246, align 4, !tbaa !54
  %248 = zext i32 %247 to i64
  %249 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %248
  %250 = load i64, ptr %249, align 8, !tbaa !91
  %251 = icmp eq i64 %250, 0
  br i1 %251, label %252, label %253, !prof !94

252:                                              ; preds = %244
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1622, ptr noundef nonnull @.str.3) #17
  br label %253

253:                                              ; preds = %252, %244
  %254 = getelementptr inbounds i8, ptr %73, i64 %250
  %255 = getelementptr inbounds ptr, ptr %254, i64 1
  br label %256

256:                                              ; preds = %234, %253
  %257 = phi ptr [ %255, %253 ], [ %238, %234 ]
  %258 = load ptr, ptr %257, align 8, !tbaa !50
  br label %259

259:                                              ; preds = %256, %239
  %260 = phi ptr [ null, %239 ], [ %258, %256 ]
  %261 = getelementptr inbounds %struct.gimple_statement_base, ptr %73, i64 0, i32 3
  %262 = load i32, ptr %261, align 4, !tbaa !50
  %263 = icmp ugt i32 %262, 2
  br i1 %263, label %264, label %316, !prof !98

264:                                              ; preds = %259
  %265 = load i32, ptr %73, align 8
  %266 = and i32 %265, 255
  %267 = add nsw i32 %266, -10
  %268 = icmp ult i32 %267, -9
  br i1 %268, label %316, label %269, !prof !99

269:                                              ; preds = %264
  %270 = zext nneg i32 %266 to i64
  %271 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %270
  %272 = load i32, ptr %271, align 4, !tbaa !54
  %273 = zext i32 %272 to i64
  %274 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %273
  %275 = load i64, ptr %274, align 8, !tbaa !91
  %276 = icmp eq i64 %275, 0
  br i1 %276, label %277, label %278, !prof !99

277:                                              ; preds = %269
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1622, ptr noundef nonnull @.str.3) #17
  br label %278

278:                                              ; preds = %277, %269
  %279 = getelementptr inbounds i8, ptr %73, i64 %275
  %280 = getelementptr inbounds ptr, ptr %279, i64 2
  %281 = load ptr, ptr %280, align 8, !tbaa !39
  br label %316

282:                                              ; preds = %70
  %283 = add nsw i32 %76, -10
  %284 = icmp ult i32 %283, -9
  br i1 %284, label %297, label %285, !prof !100

285:                                              ; preds = %282
  %286 = zext nneg i32 %76 to i64
  %287 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %286
  %288 = load i32, ptr %287, align 4, !tbaa !54
  %289 = zext i32 %288 to i64
  %290 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %289
  %291 = load i64, ptr %290, align 8, !tbaa !91
  %292 = icmp eq i64 %291, 0
  br i1 %292, label %293, label %294, !prof !100

293:                                              ; preds = %285
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1622, ptr noundef nonnull @.str.3) #17
  br label %294

294:                                              ; preds = %293, %285
  %295 = getelementptr inbounds i8, ptr %73, i64 %291
  %296 = load ptr, ptr %295, align 8, !tbaa !39
  br label %297

297:                                              ; preds = %294, %282
  %298 = phi ptr [ %296, %294 ], [ null, %282 ]
  %299 = load i32, ptr %73, align 8
  %300 = and i32 %299, 255
  %301 = add nsw i32 %300, -10
  %302 = icmp ult i32 %301, -9
  br i1 %302, label %316, label %303, !prof !100

303:                                              ; preds = %297
  %304 = zext nneg i32 %300 to i64
  %305 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %304
  %306 = load i32, ptr %305, align 4, !tbaa !54
  %307 = zext i32 %306 to i64
  %308 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %307
  %309 = load i64, ptr %308, align 8, !tbaa !91
  %310 = icmp eq i64 %309, 0
  br i1 %310, label %311, label %312, !prof !100

311:                                              ; preds = %303
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1622, ptr noundef nonnull @.str.3) #17
  br label %312

312:                                              ; preds = %311, %303
  %313 = getelementptr inbounds i8, ptr %73, i64 %309
  %314 = getelementptr inbounds ptr, ptr %313, i64 1
  %315 = load ptr, ptr %314, align 8, !tbaa !39
  br label %316

316:                                              ; preds = %312, %297, %278, %264, %259, %120, %113, %93, %70
  %317 = phi ptr [ null, %70 ], [ %260, %259 ], [ null, %93 ], [ null, %113 ], [ null, %120 ], [ %260, %264 ], [ %260, %278 ], [ %298, %297 ], [ %298, %312 ]
  %318 = phi ptr [ null, %70 ], [ null, %259 ], [ null, %93 ], [ null, %113 ], [ null, %120 ], [ null, %264 ], [ %281, %278 ], [ null, %297 ], [ %315, %312 ]
  %319 = phi i8 [ %74, %70 ], [ %151, %259 ], [ %74, %93 ], [ 0, %113 ], [ %123, %120 ], [ %151, %264 ], [ %151, %278 ], [ %74, %297 ], [ %74, %312 ]
  %320 = icmp ne ptr %317, null
  %321 = icmp ne ptr %318, null
  %322 = select i1 %320, i1 true, i1 %321, !prof !101
  br i1 %322, label %323, label %360, !prof !101

323:                                              ; preds = %316
  %324 = load i32, ptr %73, align 8
  %325 = trunc i32 %324 to i8
  switch i8 %325, label %328 [
    i8 6, label %326
    i8 1, label %326
    i8 8, label %329
  ], !prof !102

326:                                              ; preds = %323, %323
  %327 = lshr i32 %324, 16
  br label %329

328:                                              ; preds = %323
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1446, ptr noundef nonnull @.str.3) #17
  br label %329

329:                                              ; preds = %328, %326, %323
  %330 = phi i32 [ %327, %326 ], [ 0, %328 ], [ 59, %323 ]
  %331 = trunc i32 %330 to i16
  switch i16 %331, label %360 [
    i16 101, label %332
    i16 102, label %332
    i16 63, label %332
    i16 64, label %332
    i16 65, label %332
    i16 67, label %332
    i16 68, label %332
    i16 69, label %332
    i16 70, label %332
    i16 75, label %332
    i16 79, label %345
    i16 124, label %345
    i16 43, label %352
    i16 44, label %352
  ], !prof !103

332:                                              ; preds = %329, %329, %329, %329, %329, %329, %329, %329, %329, %329
  %333 = getelementptr inbounds %struct.tree_common, ptr %317, i64 0, i32 2
  %334 = load ptr, ptr %333, align 8, !tbaa !50
  %335 = load i64, ptr %334, align 8
  %336 = and i64 %335, 65535
  %337 = icmp eq i64 %336, 13
  br i1 %337, label %344, label %338, !prof !104

338:                                              ; preds = %332
  %339 = getelementptr inbounds %struct.tree_common, ptr %318, i64 0, i32 2
  %340 = load ptr, ptr %339, align 8, !tbaa !50
  %341 = load i64, ptr %340, align 8
  %342 = and i64 %341, 65535
  %343 = icmp eq i64 %342, 13
  br i1 %343, label %344, label %360, !prof !104

344:                                              ; preds = %338, %332
  br label %360

345:                                              ; preds = %329, %329
  %346 = getelementptr inbounds %struct.tree_common, ptr %317, i64 0, i32 2
  %347 = load ptr, ptr %346, align 8, !tbaa !50
  %348 = load i64, ptr %347, align 8
  %349 = and i64 %348, 65535
  %350 = icmp eq i64 %349, 13
  %351 = select i1 %350, i8 1, i8 %71
  br label %360

352:                                              ; preds = %329, %329
  %353 = load i64, ptr %317, align 8
  %354 = and i64 %353, 65535
  %355 = icmp eq i64 %354, 141
  br i1 %355, label %356, label %360

356:                                              ; preds = %352
  %357 = call zeroext i8 @ssa_undefined_value_p(ptr noundef nonnull %317) #17
  %358 = icmp eq i8 %357, 0
  %359 = select i1 %358, i8 %71, i8 1
  br label %360

360:                                              ; preds = %352, %329, %356, %345, %344, %338, %316
  %361 = phi i8 [ 1, %344 ], [ %71, %338 ], [ %71, %316 ], [ %351, %345 ], [ %359, %356 ], [ %71, %329 ], [ %71, %352 ]
  %362 = load i32, ptr %73, align 8
  %363 = and i8 %319, 1
  %364 = zext nneg i8 %363 to i32
  %365 = shl nuw nsw i32 %364, 9
  %366 = and i32 %362, -513
  %367 = or disjoint i32 %366, %365
  store i32 %367, ptr %73, align 8
  %368 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %72, i64 0, i32 2
  %369 = load ptr, ptr %368, align 8, !tbaa !75
  %370 = icmp eq ptr %369, null
  br i1 %370, label %13, label %70, !prof !105, !llvm.loop !106

371:                                              ; preds = %13, %0
  %372 = phi i8 [ 0, %0 ], [ %14, %13 ]
  %373 = phi ptr [ %4, %0 ], [ %17, %13 ]
  %374 = icmp eq i8 %372, 0
  br i1 %374, label %1894, label %375, !prof !107

375:                                              ; preds = %371
  %376 = getelementptr inbounds %struct.function, ptr %373, i64 0, i32 3
  %377 = load ptr, ptr %376, align 8, !tbaa !108
  %378 = getelementptr inbounds %struct.gimple_df, ptr %377, i64 0, i32 2
  %379 = load ptr, ptr %378, align 8, !tbaa !109
  %380 = icmp eq ptr %379, null
  br i1 %380, label %383, label %381

381:                                              ; preds = %375
  %382 = load i32, ptr %379, align 8, !tbaa !113
  br label %383

383:                                              ; preds = %375, %381
  %384 = phi i32 [ %382, %381 ], [ 0, %375 ]
  %385 = call ptr @vec_heap_o_reserve_exact(ptr noundef null, i32 noundef %384, i64 noundef 8, i64 noundef 4) #17
  store ptr %385, ptr @complex_lattice_values, align 8, !tbaa !39
  %386 = load ptr, ptr @cfun, align 8, !tbaa !39
  %387 = getelementptr inbounds %struct.function, ptr %386, i64 0, i32 3
  %388 = load ptr, ptr %387, align 8, !tbaa !108
  %389 = getelementptr inbounds %struct.gimple_df, ptr %388, i64 0, i32 2
  %390 = load ptr, ptr %389, align 8, !tbaa !109
  %391 = icmp eq ptr %390, null
  br i1 %391, label %394, label %392

392:                                              ; preds = %383
  %393 = load i32, ptr %390, align 8, !tbaa !113
  br label %394

394:                                              ; preds = %383, %392
  %395 = phi i32 [ %393, %392 ], [ 0, %383 ]
  %396 = icmp eq ptr %385, null
  br i1 %396, label %399, label %397

397:                                              ; preds = %394
  %398 = load i32, ptr %385, align 4, !tbaa !115
  br label %399

399:                                              ; preds = %397, %394
  %400 = phi i32 [ %398, %397 ], [ 0, %394 ]
  br i1 %396, label %403, label %401

401:                                              ; preds = %399
  %402 = load i32, ptr %385, align 4, !tbaa !115
  br label %403

403:                                              ; preds = %401, %399
  %404 = phi i32 [ %402, %401 ], [ 0, %399 ]
  %405 = sub nsw i32 %395, %404
  br i1 %396, label %412, label %406

406:                                              ; preds = %403
  %407 = getelementptr inbounds %struct.VEC_complex_lattice_t_base, ptr %385, i64 0, i32 1
  %408 = load i32, ptr %407, align 4, !tbaa !117
  %409 = load i32, ptr %385, align 4, !tbaa !115
  %410 = sub i32 %408, %409
  %411 = icmp uge i32 %410, %405
  br label %414

412:                                              ; preds = %403
  %413 = icmp eq i32 %404, %395
  br label %414

414:                                              ; preds = %412, %406
  %415 = phi i1 [ %411, %406 ], [ %413, %412 ]
  br i1 %415, label %418, label %416

416:                                              ; preds = %414
  %417 = call ptr @vec_heap_o_reserve_exact(ptr noundef %385, i32 noundef %405, i64 noundef 8, i64 noundef 4) #17
  store ptr %417, ptr @complex_lattice_values, align 8, !tbaa !39
  br label %418

418:                                              ; preds = %414, %416
  %419 = load ptr, ptr @complex_lattice_values, align 8, !tbaa !39, !nonnull !118, !noundef !118
  store i32 %395, ptr %419, align 4, !tbaa !115
  %420 = getelementptr inbounds %struct.VEC_complex_lattice_t_base, ptr %419, i64 0, i32 2
  %421 = sext i32 %400 to i64
  %422 = getelementptr inbounds i32, ptr %420, i64 %421
  %423 = sub nsw i32 %395, %400
  %424 = sext i32 %423 to i64
  %425 = shl nsw i64 %424, 2
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %422, i8 0, i64 %425, i1 false)
  %426 = load ptr, ptr @cfun, align 8, !tbaa !39
  %427 = getelementptr inbounds %struct.function, ptr %426, i64 0, i32 6
  %428 = load ptr, ptr %427, align 8, !tbaa !119
  %429 = getelementptr inbounds %struct.tree_decl_non_common, ptr %428, i64 0, i32 2
  %430 = load ptr, ptr %429, align 8, !tbaa !50
  %431 = icmp eq ptr %430, null
  br i1 %431, label %480, label %432

432:                                              ; preds = %418, %476
  %433 = phi ptr [ %478, %476 ], [ %430, %418 ]
  %434 = getelementptr inbounds %struct.tree_common, ptr %433, i64 0, i32 2
  %435 = load ptr, ptr %434, align 8, !tbaa !50
  %436 = load i64, ptr %435, align 8
  %437 = and i64 %436, 65535
  %438 = icmp eq i64 %437, 13
  br i1 %438, label %439, label %443

439:                                              ; preds = %432
  %440 = call zeroext i8 @is_gimple_reg(ptr noundef nonnull %433) #17
  %441 = icmp ne i8 %440, 0
  %442 = zext i1 %441 to i8
  br label %443

443:                                              ; preds = %439, %432
  %444 = phi i8 [ 0, %432 ], [ %442, %439 ]
  %445 = icmp eq i8 %444, 0
  br i1 %445, label %476, label %446

446:                                              ; preds = %443
  %447 = load i64, ptr %433, align 8
  %448 = trunc i64 %447 to i16
  switch i16 %448, label %453 [
    i16 32, label %449
    i16 34, label %451
  ]

449:                                              ; preds = %446
  %450 = getelementptr inbounds %struct.tree_var_decl, ptr %433, i64 0, i32 1
  br label %458

451:                                              ; preds = %446
  %452 = getelementptr inbounds %struct.tree_parm_decl, ptr %433, i64 0, i32 2
  br label %458

453:                                              ; preds = %446
  %454 = and i64 %447, 65535
  %455 = icmp eq i64 %454, 36
  %456 = getelementptr inbounds %struct.tree_result_decl, ptr %433, i64 0, i32 1
  %457 = select i1 %455, ptr %456, ptr null
  br label %458

458:                                              ; preds = %453, %451, %449
  %459 = phi ptr [ %450, %449 ], [ %452, %451 ], [ %457, %453 ]
  %460 = icmp eq ptr %459, null
  br i1 %460, label %463, label %461

461:                                              ; preds = %458
  %462 = load ptr, ptr %459, align 8, !tbaa !39
  br label %463

463:                                              ; preds = %461, %458
  %464 = phi ptr [ %462, %461 ], [ null, %458 ]
  %465 = icmp eq ptr %464, null
  br i1 %465, label %476, label %466

466:                                              ; preds = %463
  %467 = load ptr, ptr @cfun, align 8, !tbaa !39
  %468 = call ptr @gimple_default_def(ptr noundef %467, ptr noundef nonnull %433) #17
  %469 = icmp eq ptr %468, null
  br i1 %469, label %476, label %470

470:                                              ; preds = %466
  %471 = load ptr, ptr @complex_lattice_values, align 8
  %472 = getelementptr inbounds %struct.tree_ssa_name, ptr %468, i64 0, i32 3
  %473 = load i32, ptr %472, align 8, !tbaa !50
  %474 = zext i32 %473 to i64
  %475 = getelementptr inbounds %struct.VEC_complex_lattice_t_base, ptr %471, i64 0, i32 2, i64 %474
  store i32 3, ptr %475, align 4, !tbaa !54
  br label %476

476:                                              ; preds = %470, %466, %463, %443
  %477 = getelementptr inbounds %struct.tree_common, ptr %433, i64 0, i32 1
  %478 = load ptr, ptr %477, align 8, !tbaa !50
  %479 = icmp eq ptr %478, null
  br i1 %479, label %480, label %432, !llvm.loop !120

480:                                              ; preds = %476, %418
  call void @ssa_propagate(ptr noundef nonnull @complex_visit_stmt, ptr noundef nonnull @complex_visit_phi) #17
  %481 = call ptr @htab_create(i64 noundef 10, ptr noundef nonnull @int_tree_map_hash, ptr noundef nonnull @int_tree_map_eq, ptr noundef nonnull @free) #17
  store ptr %481, ptr @complex_variable_components, align 8, !tbaa !39
  %482 = load ptr, ptr @cfun, align 8, !tbaa !39
  %483 = getelementptr inbounds %struct.function, ptr %482, i64 0, i32 3
  %484 = load ptr, ptr %483, align 8, !tbaa !108
  %485 = getelementptr inbounds %struct.gimple_df, ptr %484, i64 0, i32 2
  %486 = load ptr, ptr %485, align 8, !tbaa !109
  %487 = icmp eq ptr %486, null
  br i1 %487, label %491, label %488

488:                                              ; preds = %480
  %489 = load i32, ptr %486, align 8, !tbaa !113
  %490 = shl i32 %489, 1
  br label %491

491:                                              ; preds = %480, %488
  %492 = phi i32 [ %490, %488 ], [ 0, %480 ]
  %493 = call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef %492) #17
  store ptr %493, ptr @complex_ssa_name_components, align 8, !tbaa !39
  %494 = load ptr, ptr @cfun, align 8, !tbaa !39
  %495 = getelementptr inbounds %struct.function, ptr %494, i64 0, i32 3
  %496 = load ptr, ptr %495, align 8, !tbaa !108
  %497 = getelementptr inbounds %struct.gimple_df, ptr %496, i64 0, i32 2
  %498 = load ptr, ptr %497, align 8, !tbaa !109
  %499 = icmp eq ptr %498, null
  br i1 %499, label %503, label %500

500:                                              ; preds = %491
  %501 = load i32, ptr %498, align 8, !tbaa !113
  %502 = shl i32 %501, 1
  br label %503

503:                                              ; preds = %491, %500
  %504 = phi i32 [ %502, %500 ], [ 0, %491 ]
  %505 = icmp eq ptr %493, null
  br i1 %505, label %508, label %506

506:                                              ; preds = %503
  %507 = load i32, ptr %493, align 8, !tbaa !113
  br label %508

508:                                              ; preds = %506, %503
  %509 = phi i32 [ %507, %506 ], [ 0, %503 ]
  br i1 %505, label %512, label %510

510:                                              ; preds = %508
  %511 = load i32, ptr %493, align 8, !tbaa !113
  br label %512

512:                                              ; preds = %510, %508
  %513 = phi i32 [ %511, %510 ], [ 0, %508 ]
  %514 = sub nsw i32 %504, %513
  br i1 %505, label %521, label %515

515:                                              ; preds = %512
  %516 = getelementptr inbounds %struct.VEC_tree_base, ptr %493, i64 0, i32 1
  %517 = load i32, ptr %516, align 4, !tbaa !121
  %518 = load i32, ptr %493, align 8, !tbaa !113
  %519 = sub i32 %517, %518
  %520 = icmp uge i32 %519, %514
  br label %523

521:                                              ; preds = %512
  %522 = icmp eq i32 %513, %504
  br label %523

523:                                              ; preds = %521, %515
  %524 = phi i1 [ %520, %515 ], [ %522, %521 ]
  br i1 %524, label %527, label %525

525:                                              ; preds = %523
  %526 = call ptr @vec_heap_p_reserve_exact(ptr noundef %493, i32 noundef %514) #17
  store ptr %526, ptr @complex_ssa_name_components, align 8, !tbaa !39
  br label %527

527:                                              ; preds = %523, %525
  %528 = load ptr, ptr @complex_ssa_name_components, align 8, !tbaa !39, !nonnull !118, !noundef !118
  store i32 %504, ptr %528, align 8, !tbaa !113
  %529 = getelementptr inbounds %struct.VEC_tree_base, ptr %528, i64 0, i32 2
  %530 = sext i32 %509 to i64
  %531 = getelementptr inbounds ptr, ptr %529, i64 %530
  %532 = sub nsw i32 %504, %509
  %533 = sext i32 %532 to i64
  %534 = shl nsw i64 %533, 3
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %531, i8 0, i64 %534, i1 false)
  %535 = load ptr, ptr @cfun, align 8, !tbaa !39
  %536 = getelementptr inbounds %struct.function, ptr %535, i64 0, i32 1
  %537 = load ptr, ptr %536, align 8, !tbaa !60
  %538 = load ptr, ptr %537, align 8, !tbaa !62
  %539 = getelementptr inbounds %struct.basic_block_def, ptr %538, i64 0, i32 1
  %540 = load ptr, ptr %539, align 8, !tbaa !122
  %541 = icmp eq ptr %540, null
  br i1 %541, label %545, label %542

542:                                              ; preds = %527
  %543 = load i32, ptr %540, align 8, !tbaa !123
  %544 = icmp eq i32 %543, 1
  br i1 %544, label %546, label %545

545:                                              ; preds = %542, %527
  call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 645, ptr noundef nonnull @.str.3) #17
  br label %546

546:                                              ; preds = %545, %542
  %547 = load ptr, ptr %539, align 8, !tbaa !122
  %548 = getelementptr inbounds %struct.VEC_edge_base, ptr %547, i64 0, i32 2, i64 0
  %549 = load ptr, ptr %548, align 8, !tbaa !39
  %550 = load ptr, ptr @cfun, align 8, !tbaa !39
  %551 = getelementptr inbounds %struct.function, ptr %550, i64 0, i32 6
  %552 = load ptr, ptr %551, align 8, !tbaa !119
  %553 = getelementptr inbounds %struct.tree_decl_non_common, ptr %552, i64 0, i32 2
  %554 = load ptr, ptr %553, align 8, !tbaa !50
  %555 = icmp eq ptr %554, null
  br i1 %555, label %579, label %556

556:                                              ; preds = %546, %575
  %557 = phi ptr [ %577, %575 ], [ %554, %546 ]
  %558 = getelementptr inbounds %struct.tree_common, ptr %557, i64 0, i32 2
  %559 = load ptr, ptr %558, align 8, !tbaa !50
  %560 = load i64, ptr %559, align 8
  %561 = and i64 %560, 65535
  %562 = icmp eq i64 %561, 13
  br i1 %562, label %563, label %575

563:                                              ; preds = %556
  %564 = call zeroext i8 @is_gimple_reg(ptr noundef nonnull %557) #17
  %565 = icmp eq i8 %564, 0
  br i1 %565, label %575, label %566

566:                                              ; preds = %563
  %567 = getelementptr inbounds %struct.tree_common, ptr %559, i64 0, i32 2
  %568 = load ptr, ptr %567, align 8, !tbaa !50
  %569 = load ptr, ptr @cfun, align 8, !tbaa !39
  %570 = call ptr @gimple_default_def(ptr noundef %569, ptr noundef nonnull %557) #17
  %571 = icmp eq ptr %570, null
  br i1 %571, label %575, label %572

572:                                              ; preds = %566
  %573 = call ptr @build1_stat(i32 noundef 43, ptr noundef %568, ptr noundef nonnull %570) #17
  %574 = call ptr @build1_stat(i32 noundef 44, ptr noundef %568, ptr noundef nonnull %570) #17
  call fastcc void @update_complex_components_on_edge(ptr noundef %549, ptr noundef nonnull %570, ptr noundef %573, ptr noundef %574)
  br label %575

575:                                              ; preds = %572, %566, %563, %556
  %576 = getelementptr inbounds %struct.tree_common, ptr %557, i64 0, i32 1
  %577 = load ptr, ptr %576, align 8, !tbaa !50
  %578 = icmp eq ptr %577, null
  br i1 %578, label %579, label %556, !llvm.loop !125

579:                                              ; preds = %575, %546
  %580 = load ptr, ptr @cfun, align 8, !tbaa !39
  %581 = getelementptr inbounds %struct.function, ptr %580, i64 0, i32 1
  %582 = load ptr, ptr %581, align 8, !tbaa !60
  %583 = getelementptr inbounds %struct.control_flow_graph, ptr %582, i64 0, i32 5
  %584 = load i32, ptr %583, align 8, !tbaa !126
  %585 = load ptr, ptr %582, align 8, !tbaa !62
  %586 = getelementptr inbounds %struct.basic_block_def, ptr %585, i64 0, i32 6
  %587 = load ptr, ptr %586, align 8, !tbaa !64
  %588 = load ptr, ptr @cfun, align 8, !tbaa !39
  %589 = getelementptr inbounds %struct.function, ptr %588, i64 0, i32 1
  %590 = load ptr, ptr %589, align 8, !tbaa !60
  %591 = getelementptr inbounds %struct.control_flow_graph, ptr %590, i64 0, i32 1
  %592 = load ptr, ptr %591, align 8, !tbaa !66
  %593 = icmp eq ptr %587, %592
  br i1 %593, label %1884, label %594

594:                                              ; preds = %579
  %595 = getelementptr inbounds i8, ptr %3, i64 8
  %596 = getelementptr inbounds i8, ptr %3, i64 16
  br label %597

597:                                              ; preds = %594, %1875
  %598 = phi ptr [ %587, %594 ], [ %1877, %1875 ]
  %599 = getelementptr inbounds %struct.basic_block_def, ptr %598, i64 0, i32 9
  %600 = load i32, ptr %599, align 8, !tbaa !127
  %601 = icmp slt i32 %600, %584
  br i1 %601, label %602, label %1875

602:                                              ; preds = %597
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %1) #17
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %1, ptr noundef %598) #17
  %603 = load ptr, ptr %1, align 8, !tbaa.struct !70
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %1) #17
  %604 = icmp eq ptr %603, null
  br i1 %604, label %731, label %605

605:                                              ; preds = %602, %727
  %606 = phi ptr [ %729, %727 ], [ %603, %602 ]
  %607 = load ptr, ptr %606, align 8, !tbaa !72
  %608 = getelementptr inbounds %struct.gimple_statement_phi, ptr %607, i64 0, i32 3
  %609 = load ptr, ptr %608, align 8, !tbaa !50
  %610 = getelementptr inbounds %struct.tree_common, ptr %609, i64 0, i32 2
  %611 = load ptr, ptr %610, align 8, !tbaa !50
  %612 = load i64, ptr %611, align 8
  %613 = and i64 %612, 65535
  %614 = icmp eq i64 %613, 13
  br i1 %614, label %615, label %619

615:                                              ; preds = %605
  %616 = call zeroext i8 @is_gimple_reg(ptr noundef %609) #17
  %617 = icmp ne i8 %616, 0
  %618 = zext i1 %617 to i8
  br label %619

619:                                              ; preds = %615, %605
  %620 = phi i8 [ 0, %605 ], [ %618, %615 ]
  %621 = icmp eq i8 %620, 0
  br i1 %621, label %727, label %622

622:                                              ; preds = %619
  %623 = load ptr, ptr %608, align 8, !tbaa !50
  %624 = call fastcc ptr @get_component_ssa_name(ptr noundef %623, i8 noundef zeroext 0)
  %625 = load i64, ptr %624, align 8
  %626 = and i64 %625, 65535
  %627 = icmp eq i64 %626, 141
  br i1 %627, label %628, label %631

628:                                              ; preds = %622
  %629 = call ptr @create_phi_node(ptr noundef nonnull %624, ptr noundef %598) #17
  %630 = getelementptr inbounds %struct.tree_ssa_name, ptr %624, i64 0, i32 2
  store ptr %629, ptr %630, align 8, !tbaa !50
  br label %631

631:                                              ; preds = %628, %622
  %632 = phi ptr [ %629, %628 ], [ null, %622 ]
  %633 = load ptr, ptr %608, align 8, !tbaa !50
  %634 = call fastcc ptr @get_component_ssa_name(ptr noundef %633, i8 noundef zeroext 1)
  %635 = load i64, ptr %634, align 8
  %636 = and i64 %635, 65535
  %637 = icmp eq i64 %636, 141
  br i1 %637, label %638, label %641

638:                                              ; preds = %631
  %639 = call ptr @create_phi_node(ptr noundef nonnull %634, ptr noundef %598) #17
  %640 = getelementptr inbounds %struct.tree_ssa_name, ptr %634, i64 0, i32 2
  store ptr %639, ptr %640, align 8, !tbaa !50
  br label %641

641:                                              ; preds = %638, %631
  %642 = phi ptr [ %639, %638 ], [ null, %631 ]
  %643 = getelementptr inbounds %struct.gimple_statement_phi, ptr %607, i64 0, i32 2
  %644 = load i32, ptr %643, align 4, !tbaa !50
  %645 = icmp eq i32 %644, 0
  br i1 %645, label %727, label %646

646:                                              ; preds = %641
  %647 = getelementptr inbounds %struct.gimple_statement_phi, ptr %607, i64 0, i32 1
  %648 = icmp eq ptr %632, null
  %649 = getelementptr inbounds %struct.gimple_statement_phi, ptr %632, i64 0, i32 1
  %650 = icmp eq ptr %642, null
  %651 = getelementptr inbounds %struct.gimple_statement_phi, ptr %642, i64 0, i32 1
  %652 = zext i32 %644 to i64
  br label %653

653:                                              ; preds = %646, %724
  %654 = phi i64 [ 0, %646 ], [ %725, %724 ]
  %655 = load i32, ptr %647, align 8, !tbaa !50
  %656 = zext i32 %655 to i64
  %657 = icmp ugt i64 %654, %656
  br i1 %657, label %658, label %659

658:                                              ; preds = %653
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 3103, ptr noundef nonnull @.str.3) #17
  br label %659

659:                                              ; preds = %658, %653
  %660 = getelementptr inbounds %struct.gimple_statement_phi, ptr %607, i64 0, i32 4, i64 %654, i32 0, i32 3
  %661 = load ptr, ptr %660, align 8, !tbaa !128
  %662 = load ptr, ptr %661, align 8, !tbaa !39
  br i1 %648, label %693, label %663

663:                                              ; preds = %659
  %664 = call fastcc ptr @extract_component(ptr noundef null, ptr noundef %662, i8 noundef zeroext 0, i8 noundef zeroext 0)
  %665 = load i32, ptr %649, align 8, !tbaa !50
  %666 = zext i32 %665 to i64
  %667 = icmp ugt i64 %654, %666
  br i1 %667, label %668, label %669

668:                                              ; preds = %663
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 3103, ptr noundef nonnull @.str.3) #17
  br label %669

669:                                              ; preds = %668, %663
  %670 = getelementptr inbounds %struct.gimple_statement_phi, ptr %632, i64 0, i32 4, i64 %654
  %671 = load ptr, ptr %670, align 8, !tbaa !130
  %672 = icmp eq ptr %671, null
  br i1 %672, label %678, label %673

673:                                              ; preds = %669
  %674 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %670, i64 0, i32 1
  %675 = load ptr, ptr %674, align 8, !tbaa !131
  %676 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %671, i64 0, i32 1
  store ptr %675, ptr %676, align 8, !tbaa !131
  %677 = load ptr, ptr %674, align 8, !tbaa !131
  store ptr %671, ptr %677, align 8, !tbaa !130
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %670, i8 0, i64 16, i1 false)
  br label %678

678:                                              ; preds = %673, %669
  %679 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %670, i64 0, i32 3
  %680 = load ptr, ptr %679, align 8, !tbaa !128
  store ptr %664, ptr %680, align 8, !tbaa !39
  %681 = icmp eq ptr %664, null
  br i1 %681, label %686, label %682

682:                                              ; preds = %678
  %683 = load i64, ptr %664, align 8
  %684 = and i64 %683, 65535
  %685 = icmp eq i64 %684, 141
  br i1 %685, label %687, label %686

686:                                              ; preds = %682, %678
  store ptr null, ptr %670, align 8, !tbaa !130
  br label %693

687:                                              ; preds = %682
  %688 = getelementptr inbounds %struct.tree_ssa_name, ptr %664, i64 0, i32 5
  store ptr %688, ptr %670, align 8, !tbaa !130
  %689 = getelementptr inbounds %struct.tree_ssa_name, ptr %664, i64 0, i32 5, i32 1
  %690 = load ptr, ptr %689, align 8, !tbaa !131
  %691 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %670, i64 0, i32 1
  store ptr %690, ptr %691, align 8, !tbaa !131
  %692 = load ptr, ptr %689, align 8, !tbaa !131
  store ptr %670, ptr %692, align 8, !tbaa !130
  store ptr %670, ptr %689, align 8, !tbaa !131
  br label %693

693:                                              ; preds = %687, %686, %659
  br i1 %650, label %724, label %694

694:                                              ; preds = %693
  %695 = call fastcc ptr @extract_component(ptr noundef null, ptr noundef %662, i8 noundef zeroext 1, i8 noundef zeroext 0)
  %696 = load i32, ptr %651, align 8, !tbaa !50
  %697 = zext i32 %696 to i64
  %698 = icmp ugt i64 %654, %697
  br i1 %698, label %699, label %700

699:                                              ; preds = %694
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 3103, ptr noundef nonnull @.str.3) #17
  br label %700

700:                                              ; preds = %699, %694
  %701 = getelementptr inbounds %struct.gimple_statement_phi, ptr %642, i64 0, i32 4, i64 %654
  %702 = load ptr, ptr %701, align 8, !tbaa !130
  %703 = icmp eq ptr %702, null
  br i1 %703, label %709, label %704

704:                                              ; preds = %700
  %705 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %701, i64 0, i32 1
  %706 = load ptr, ptr %705, align 8, !tbaa !131
  %707 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %702, i64 0, i32 1
  store ptr %706, ptr %707, align 8, !tbaa !131
  %708 = load ptr, ptr %705, align 8, !tbaa !131
  store ptr %702, ptr %708, align 8, !tbaa !130
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %701, i8 0, i64 16, i1 false)
  br label %709

709:                                              ; preds = %704, %700
  %710 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %701, i64 0, i32 3
  %711 = load ptr, ptr %710, align 8, !tbaa !128
  store ptr %695, ptr %711, align 8, !tbaa !39
  %712 = icmp eq ptr %695, null
  br i1 %712, label %717, label %713

713:                                              ; preds = %709
  %714 = load i64, ptr %695, align 8
  %715 = and i64 %714, 65535
  %716 = icmp eq i64 %715, 141
  br i1 %716, label %718, label %717

717:                                              ; preds = %713, %709
  store ptr null, ptr %701, align 8, !tbaa !130
  br label %724

718:                                              ; preds = %713
  %719 = getelementptr inbounds %struct.tree_ssa_name, ptr %695, i64 0, i32 5
  store ptr %719, ptr %701, align 8, !tbaa !130
  %720 = getelementptr inbounds %struct.tree_ssa_name, ptr %695, i64 0, i32 5, i32 1
  %721 = load ptr, ptr %720, align 8, !tbaa !131
  %722 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %701, i64 0, i32 1
  store ptr %721, ptr %722, align 8, !tbaa !131
  %723 = load ptr, ptr %720, align 8, !tbaa !131
  store ptr %701, ptr %723, align 8, !tbaa !130
  store ptr %701, ptr %720, align 8, !tbaa !131
  br label %724

724:                                              ; preds = %718, %717, %693
  %725 = add nuw nsw i64 %654, 1
  %726 = icmp eq i64 %725, %652
  br i1 %726, label %727, label %653, !llvm.loop !132

727:                                              ; preds = %724, %641, %619
  %728 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %606, i64 0, i32 2
  %729 = load ptr, ptr %728, align 8, !tbaa !75
  %730 = icmp eq ptr %729, null
  br i1 %730, label %731, label %605, !llvm.loop !133

731:                                              ; preds = %727, %602
  %732 = getelementptr inbounds %struct.basic_block_def, ptr %598, i64 0, i32 13
  %733 = load i32, ptr %732, align 8, !tbaa !78, !noalias !134
  %734 = and i32 %733, 512
  %735 = icmp eq i32 %734, 0
  br i1 %735, label %736, label %742

736:                                              ; preds = %731
  %737 = getelementptr inbounds %struct.basic_block_def, ptr %598, i64 0, i32 7
  %738 = load ptr, ptr %737, align 8, !tbaa !50, !noalias !134
  %739 = icmp eq ptr %738, null
  br i1 %739, label %742, label %740

740:                                              ; preds = %736
  %741 = load ptr, ptr %738, align 8, !tbaa !84, !noalias !134
  br label %742

742:                                              ; preds = %740, %736, %731
  %743 = phi ptr [ %741, %740 ], [ null, %736 ], [ null, %731 ]
  %744 = icmp eq ptr %743, null
  br i1 %744, label %747, label %745

745:                                              ; preds = %742
  %746 = load ptr, ptr %743, align 8, !tbaa !86, !noalias !134
  br label %747

747:                                              ; preds = %742, %745
  %748 = phi ptr [ %746, %745 ], [ null, %742 ]
  store ptr %748, ptr %3, align 8, !tbaa.struct !70
  store ptr %743, ptr %595, align 8, !tbaa.struct !137
  store ptr %598, ptr %596, align 8, !tbaa.struct !138
  %749 = icmp eq ptr %748, null
  br i1 %749, label %1875, label %750

750:                                              ; preds = %747, %1870
  %751 = phi ptr [ %1873, %1870 ], [ %748, %747 ]
  %752 = load ptr, ptr %751, align 8, !tbaa !72
  %753 = call ptr @gimple_get_lhs(ptr noundef %752) #17
  %754 = icmp eq ptr %753, null
  br i1 %754, label %755, label %759

755:                                              ; preds = %750
  %756 = load i32, ptr %752, align 8
  %757 = and i32 %756, 255
  %758 = icmp eq i32 %757, 1
  br i1 %758, label %759, label %1870

759:                                              ; preds = %755, %750
  %760 = load i32, ptr %752, align 8
  %761 = and i32 %760, 255
  %762 = add nsw i32 %761, -1
  %763 = icmp ult i32 %762, 9
  call void @llvm.assume(i1 %763)
  %764 = zext nneg i32 %761 to i64
  %765 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %764
  %766 = load i32, ptr %765, align 4, !tbaa !54
  %767 = zext i32 %766 to i64
  %768 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %767
  %769 = load i64, ptr %768, align 8, !tbaa !91
  %770 = icmp eq i64 %769, 0
  br i1 %770, label %771, label %772

771:                                              ; preds = %759
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1622, ptr noundef nonnull @.str.3) #17
  br label %772

772:                                              ; preds = %771, %759
  %773 = getelementptr inbounds i8, ptr %752, i64 %769
  %774 = load ptr, ptr %773, align 8, !tbaa !39
  %775 = getelementptr inbounds %struct.tree_common, ptr %774, i64 0, i32 2
  %776 = load ptr, ptr %775, align 8, !tbaa !50
  %777 = load i32, ptr %752, align 8
  %778 = trunc i32 %777 to i8
  switch i8 %778, label %781 [
    i8 6, label %779
    i8 1, label %779
    i8 8, label %782
  ]

779:                                              ; preds = %772, %772
  %780 = lshr i32 %777, 16
  br label %782

781:                                              ; preds = %772
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1446, ptr noundef nonnull @.str.3) #17
  br label %782

782:                                              ; preds = %781, %779, %772
  %783 = phi i32 [ %780, %779 ], [ 0, %781 ], [ 59, %772 ]
  %784 = trunc i32 %783 to i16
  switch i16 %784, label %814 [
    i16 63, label %785
    i16 64, label %785
    i16 65, label %785
    i16 67, label %785
    i16 68, label %785
    i16 69, label %785
    i16 70, label %785
    i16 75, label %785
    i16 79, label %785
    i16 124, label %785
    i16 101, label %792
    i16 102, label %792
  ]

785:                                              ; preds = %782, %782, %782, %782, %782, %782, %782, %782, %782, %782
  %786 = load i64, ptr %776, align 8
  %787 = and i64 %786, 65535
  %788 = icmp eq i64 %787, 13
  br i1 %788, label %789, label %1870

789:                                              ; preds = %785
  %790 = getelementptr inbounds %struct.tree_common, ptr %776, i64 0, i32 2
  %791 = load ptr, ptr %790, align 8, !tbaa !50
  br label %1288

792:                                              ; preds = %782, %782
  %793 = load i32, ptr %752, align 8
  %794 = and i32 %793, 255
  %795 = add nsw i32 %794, -1
  %796 = icmp ult i32 %795, 9
  call void @llvm.assume(i1 %796)
  %797 = zext nneg i32 %794 to i64
  %798 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %797
  %799 = load i32, ptr %798, align 4, !tbaa !54
  %800 = zext i32 %799 to i64
  %801 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %800
  %802 = load i64, ptr %801, align 8, !tbaa !91
  %803 = icmp eq i64 %802, 0
  br i1 %803, label %804, label %805

804:                                              ; preds = %792
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1622, ptr noundef nonnull @.str.3) #17
  br label %805

805:                                              ; preds = %804, %792
  %806 = getelementptr inbounds i8, ptr %752, i64 %802
  %807 = getelementptr inbounds ptr, ptr %806, i64 1
  %808 = load ptr, ptr %807, align 8, !tbaa !39
  %809 = getelementptr inbounds %struct.tree_common, ptr %808, i64 0, i32 2
  %810 = load ptr, ptr %809, align 8, !tbaa !50
  %811 = load i64, ptr %810, align 8
  %812 = and i64 %811, 65535
  %813 = icmp eq i64 %812, 13
  br i1 %813, label %1288, label %1870

814:                                              ; preds = %782
  %815 = load i32, ptr %752, align 8
  %816 = and i32 %815, 255
  %817 = icmp eq i32 %816, 1
  br i1 %817, label %1870, label %818

818:                                              ; preds = %814
  %819 = load i64, ptr %776, align 8
  %820 = and i64 %819, 65535
  %821 = icmp eq i64 %820, 13
  br i1 %821, label %822, label %1160

822:                                              ; preds = %818
  %823 = getelementptr inbounds %struct.tree_common, ptr %776, i64 0, i32 2
  %824 = load ptr, ptr %823, align 8, !tbaa !50
  %825 = load ptr, ptr %3, align 8
  %826 = load ptr, ptr %825, align 8, !tbaa !72
  %827 = load i32, ptr %826, align 8
  %828 = and i32 %827, 255
  %829 = trunc i32 %827 to i8
  switch i8 %829, label %875 [
    i8 6, label %830
    i8 8, label %863
  ]

830:                                              ; preds = %822
  %831 = zext nneg i32 %828 to i64
  %832 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %831
  %833 = load i32, ptr %832, align 4, !tbaa !54
  %834 = zext i32 %833 to i64
  %835 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %834
  %836 = load i64, ptr %835, align 8, !tbaa !91
  %837 = icmp eq i64 %836, 0
  br i1 %837, label %838, label %839

838:                                              ; preds = %830
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1622, ptr noundef nonnull @.str.3) #17
  br label %839

839:                                              ; preds = %838, %830
  %840 = getelementptr inbounds i8, ptr %826, i64 %836
  %841 = load ptr, ptr %840, align 8, !tbaa !39
  %842 = getelementptr inbounds %struct.gimple_statement_base, ptr %826, i64 0, i32 3
  %843 = load i32, ptr %842, align 4, !tbaa !50
  %844 = icmp eq i32 %843, 2
  br i1 %844, label %845, label %876

845:                                              ; preds = %839
  %846 = load i32, ptr %826, align 8
  %847 = and i32 %846, 255
  %848 = add nsw i32 %847, -10
  %849 = icmp ult i32 %848, -9
  br i1 %849, label %876, label %850

850:                                              ; preds = %845
  %851 = zext nneg i32 %847 to i64
  %852 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %851
  %853 = load i32, ptr %852, align 4, !tbaa !54
  %854 = zext i32 %853 to i64
  %855 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %854
  %856 = load i64, ptr %855, align 8, !tbaa !91
  %857 = icmp eq i64 %856, 0
  br i1 %857, label %858, label %859

858:                                              ; preds = %850
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1622, ptr noundef nonnull @.str.3) #17
  br label %859

859:                                              ; preds = %858, %850
  %860 = getelementptr inbounds i8, ptr %826, i64 %856
  %861 = getelementptr inbounds ptr, ptr %860, i64 1
  %862 = load ptr, ptr %861, align 8, !tbaa !39
  br label %876

863:                                              ; preds = %822
  %864 = zext nneg i32 %828 to i64
  %865 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %864
  %866 = load i32, ptr %865, align 4, !tbaa !54
  %867 = zext i32 %866 to i64
  %868 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %867
  %869 = load i64, ptr %868, align 8, !tbaa !91
  %870 = icmp eq i64 %869, 0
  br i1 %870, label %871, label %872

871:                                              ; preds = %863
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1622, ptr noundef nonnull @.str.3) #17
  br label %872

872:                                              ; preds = %871, %863
  %873 = getelementptr inbounds i8, ptr %826, i64 %869
  %874 = load ptr, ptr %873, align 8, !tbaa !39
  br label %876

875:                                              ; preds = %822
  call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 781, ptr noundef nonnull @.str.3) #17
  br label %876

876:                                              ; preds = %875, %872, %859, %845, %839
  %877 = phi ptr [ undef, %875 ], [ null, %839 ], [ %862, %859 ], [ null, %845 ], [ null, %872 ]
  %878 = phi ptr [ undef, %875 ], [ %841, %839 ], [ %841, %859 ], [ %841, %845 ], [ %874, %872 ]
  %879 = load i64, ptr %878, align 8
  %880 = and i64 %879, 65535
  %881 = icmp eq i64 %880, 141
  br i1 %881, label %882, label %1048

882:                                              ; preds = %876
  %883 = call zeroext i8 @is_ctrl_altering_stmt(ptr noundef %826) #17
  %884 = icmp eq i8 %883, 0
  br i1 %884, label %921, label %885

885:                                              ; preds = %882
  %886 = load ptr, ptr %596, align 8
  %887 = getelementptr inbounds %struct.basic_block_def, ptr %886, i64 0, i32 1
  br label %888

888:                                              ; preds = %915, %885
  %889 = phi i32 [ 0, %885 ], [ %916, %915 ]
  %890 = load ptr, ptr %887, align 8, !tbaa !39
  %891 = icmp eq ptr %890, null
  br i1 %891, label %894, label %892

892:                                              ; preds = %888
  %893 = load i32, ptr %890, align 8, !tbaa !123
  br label %894

894:                                              ; preds = %892, %888
  %895 = phi i32 [ %893, %892 ], [ 0, %888 ]
  %896 = icmp eq i32 %895, %889
  br i1 %896, label %901, label %897

897:                                              ; preds = %894
  %898 = zext i32 %889 to i64
  %899 = getelementptr inbounds %struct.VEC_edge_base, ptr %890, i64 0, i32 2, i64 %898
  %900 = load ptr, ptr %899, align 8, !tbaa !39
  br label %901

901:                                              ; preds = %897, %894
  %902 = phi ptr [ %900, %897 ], [ null, %894 ]
  br i1 %896, label %917, label %903

903:                                              ; preds = %901
  %904 = getelementptr inbounds %struct.edge_def, ptr %902, i64 0, i32 7
  %905 = load i32, ptr %904, align 8, !tbaa !139
  %906 = and i32 %905, 1
  %907 = icmp eq i32 %906, 0
  br i1 %907, label %908, label %918

908:                                              ; preds = %903
  br i1 %891, label %911, label %909

909:                                              ; preds = %908
  %910 = load i32, ptr %890, align 8, !tbaa !123
  br label %911

911:                                              ; preds = %909, %908
  %912 = phi i32 [ %910, %909 ], [ 0, %908 ]
  %913 = icmp ult i32 %889, %912
  br i1 %913, label %915, label %914

914:                                              ; preds = %911
  call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 738, ptr noundef nonnull @.str.3) #17
  br label %915

915:                                              ; preds = %914, %911
  %916 = add i32 %889, 1
  br label %888, !llvm.loop !141

917:                                              ; preds = %901
  call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 796, ptr noundef nonnull @.str.3) #17
  br label %918

918:                                              ; preds = %903, %917
  %919 = call ptr @build1_stat(i32 noundef 43, ptr noundef %824, ptr noundef nonnull %878) #17
  %920 = call ptr @build1_stat(i32 noundef 44, ptr noundef %824, ptr noundef nonnull %878) #17
  call fastcc void @update_complex_components_on_edge(ptr noundef %902, ptr noundef nonnull %878, ptr noundef %919, ptr noundef %920)
  br label %1870

921:                                              ; preds = %882
  %922 = load i32, ptr %826, align 8
  %923 = and i32 %922, 255
  %924 = icmp eq i32 %923, 8
  br i1 %924, label %963, label %925

925:                                              ; preds = %921
  %926 = call zeroext i8 @gimple_has_side_effects(ptr noundef nonnull %826) #17
  %927 = icmp eq i8 %926, 0
  br i1 %927, label %928, label %963

928:                                              ; preds = %925
  %929 = load i32, ptr %826, align 8
  %930 = trunc i32 %929 to i8
  switch i8 %930, label %933 [
    i8 6, label %931
    i8 1, label %931
    i8 8, label %934
  ]

931:                                              ; preds = %928, %928
  %932 = lshr i32 %929, 16
  br label %934

933:                                              ; preds = %928
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1446, ptr noundef nonnull @.str.3) #17
  br label %934

934:                                              ; preds = %933, %931, %928
  %935 = phi i32 [ %932, %931 ], [ 0, %933 ], [ 59, %928 ]
  %936 = zext nneg i32 %935 to i64
  %937 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %936
  %938 = load i8, ptr %937, align 1, !tbaa !50
  %939 = icmp eq i8 %938, 3
  br i1 %939, label %940, label %960

940:                                              ; preds = %934
  %941 = load i32, ptr %826, align 8
  %942 = and i32 %941, 255
  %943 = add nsw i32 %942, -1
  %944 = icmp ult i32 %943, 9
  call void @llvm.assume(i1 %944)
  %945 = zext nneg i32 %942 to i64
  %946 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %945
  %947 = load i32, ptr %946, align 4, !tbaa !54
  %948 = zext i32 %947 to i64
  %949 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %948
  %950 = load i64, ptr %949, align 8, !tbaa !91
  %951 = icmp eq i64 %950, 0
  br i1 %951, label %952, label %953

952:                                              ; preds = %940
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1622, ptr noundef nonnull @.str.3) #17
  br label %953

953:                                              ; preds = %952, %940
  %954 = getelementptr inbounds i8, ptr %826, i64 %950
  %955 = getelementptr inbounds ptr, ptr %954, i64 1
  %956 = load ptr, ptr %955, align 8, !tbaa !39
  %957 = load i64, ptr %956, align 8
  %958 = trunc i64 %957 to i32
  %959 = and i32 %958, 65535
  br label %960

960:                                              ; preds = %953, %934
  %961 = phi i32 [ %959, %953 ], [ %935, %934 ]
  %962 = icmp eq i32 %961, 112
  br i1 %962, label %963, label %966

963:                                              ; preds = %960, %925, %921
  %964 = call ptr @build1_stat(i32 noundef 43, ptr noundef %824, ptr noundef nonnull %878) #17
  %965 = call ptr @build1_stat(i32 noundef 44, ptr noundef %824, ptr noundef nonnull %878) #17
  call fastcc void @update_complex_components(ptr noundef nonnull %3, ptr noundef nonnull %826, ptr noundef %964, ptr noundef %965)
  br label %1870

966:                                              ; preds = %960
  %967 = load i32, ptr %826, align 8
  %968 = trunc i32 %967 to i8
  switch i8 %968, label %971 [
    i8 6, label %969
    i8 1, label %969
    i8 8, label %972
  ]

969:                                              ; preds = %966, %966
  %970 = lshr i32 %967, 16
  br label %972

971:                                              ; preds = %966
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1446, ptr noundef nonnull @.str.3) #17
  br label %972

972:                                              ; preds = %971, %969, %966
  %973 = phi i32 [ %970, %969 ], [ 0, %971 ], [ 59, %966 ]
  %974 = zext nneg i32 %973 to i64
  %975 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %974
  %976 = load i8, ptr %975, align 1, !tbaa !50
  %977 = icmp eq i8 %976, 3
  br i1 %977, label %978, label %998

978:                                              ; preds = %972
  %979 = load i32, ptr %826, align 8
  %980 = and i32 %979, 255
  %981 = add nsw i32 %980, -1
  %982 = icmp ult i32 %981, 9
  call void @llvm.assume(i1 %982)
  %983 = zext nneg i32 %980 to i64
  %984 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %983
  %985 = load i32, ptr %984, align 4, !tbaa !54
  %986 = zext i32 %985 to i64
  %987 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %986
  %988 = load i64, ptr %987, align 8, !tbaa !91
  %989 = icmp eq i64 %988, 0
  br i1 %989, label %990, label %991

990:                                              ; preds = %978
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1622, ptr noundef nonnull @.str.3) #17
  br label %991

991:                                              ; preds = %990, %978
  %992 = getelementptr inbounds i8, ptr %826, i64 %988
  %993 = getelementptr inbounds ptr, ptr %992, i64 1
  %994 = load ptr, ptr %993, align 8, !tbaa !39
  %995 = load i64, ptr %994, align 8
  %996 = trunc i64 %995 to i32
  %997 = and i32 %996, 65535
  br label %998

998:                                              ; preds = %991, %972
  %999 = phi i32 [ %997, %991 ], [ %973, %972 ]
  %1000 = icmp eq i32 %999, 123
  br i1 %1000, label %1004, label %1001

1001:                                             ; preds = %998
  %1002 = call fastcc ptr @extract_component(ptr noundef nonnull %3, ptr noundef %877, i8 noundef zeroext 0, i8 noundef zeroext 1)
  %1003 = call fastcc ptr @extract_component(ptr noundef nonnull %3, ptr noundef %877, i8 noundef zeroext 1, i8 noundef zeroext 1)
  br label %1045

1004:                                             ; preds = %998
  %1005 = load i32, ptr %826, align 8
  %1006 = and i32 %1005, 255
  %1007 = add nsw i32 %1006, -10
  %1008 = icmp ult i32 %1007, -9
  br i1 %1008, label %1022, label %1009

1009:                                             ; preds = %1004
  %1010 = zext nneg i32 %1006 to i64
  %1011 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %1010
  %1012 = load i32, ptr %1011, align 4, !tbaa !54
  %1013 = zext i32 %1012 to i64
  %1014 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %1013
  %1015 = load i64, ptr %1014, align 8, !tbaa !91
  %1016 = icmp eq i64 %1015, 0
  br i1 %1016, label %1017, label %1018

1017:                                             ; preds = %1009
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1622, ptr noundef nonnull @.str.3) #17
  br label %1018

1018:                                             ; preds = %1017, %1009
  %1019 = getelementptr inbounds i8, ptr %826, i64 %1015
  %1020 = getelementptr inbounds ptr, ptr %1019, i64 1
  %1021 = load ptr, ptr %1020, align 8, !tbaa !39
  br label %1022

1022:                                             ; preds = %1018, %1004
  %1023 = phi ptr [ %1021, %1018 ], [ null, %1004 ]
  %1024 = getelementptr inbounds %struct.gimple_statement_base, ptr %826, i64 0, i32 3
  %1025 = load i32, ptr %1024, align 4, !tbaa !50
  %1026 = icmp ugt i32 %1025, 2
  br i1 %1026, label %1027, label %1045

1027:                                             ; preds = %1022
  %1028 = load i32, ptr %826, align 8
  %1029 = and i32 %1028, 255
  %1030 = add nsw i32 %1029, -10
  %1031 = icmp ult i32 %1030, -9
  br i1 %1031, label %1045, label %1032

1032:                                             ; preds = %1027
  %1033 = zext nneg i32 %1029 to i64
  %1034 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %1033
  %1035 = load i32, ptr %1034, align 4, !tbaa !54
  %1036 = zext i32 %1035 to i64
  %1037 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %1036
  %1038 = load i64, ptr %1037, align 8, !tbaa !91
  %1039 = icmp eq i64 %1038, 0
  br i1 %1039, label %1040, label %1041

1040:                                             ; preds = %1032
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1622, ptr noundef nonnull @.str.3) #17
  br label %1041

1041:                                             ; preds = %1040, %1032
  %1042 = getelementptr inbounds i8, ptr %826, i64 %1038
  %1043 = getelementptr inbounds ptr, ptr %1042, i64 2
  %1044 = load ptr, ptr %1043, align 8, !tbaa !39
  br label %1045

1045:                                             ; preds = %1041, %1027, %1022, %1001
  %1046 = phi ptr [ %1003, %1001 ], [ null, %1022 ], [ %1044, %1041 ], [ null, %1027 ]
  %1047 = phi ptr [ %1002, %1001 ], [ %1023, %1022 ], [ %1023, %1041 ], [ %1023, %1027 ]
  call fastcc void @update_complex_assignment(ptr noundef nonnull %3, ptr noundef %1047, ptr noundef %1046)
  br label %1870

1048:                                             ; preds = %876
  %1049 = icmp eq ptr %877, null
  br i1 %1049, label %1870, label %1050

1050:                                             ; preds = %1048
  %1051 = load i64, ptr %877, align 8
  %1052 = and i64 %1051, 65535
  %1053 = icmp eq i64 %1052, 141
  %1054 = and i64 %879, 65536
  %1055 = icmp eq i64 %1054, 0
  %1056 = and i1 %1055, %1053
  br i1 %1056, label %1057, label %1870

1057:                                             ; preds = %1050
  %1058 = call fastcc ptr @extract_component(ptr noundef nonnull %3, ptr noundef nonnull %877, i8 noundef zeroext 0, i8 noundef zeroext 0)
  %1059 = call fastcc ptr @extract_component(ptr noundef nonnull %3, ptr noundef nonnull %877, i8 noundef zeroext 1, i8 noundef zeroext 0)
  %1060 = call ptr @unshare_expr(ptr noundef nonnull %878) #17
  %1061 = call ptr @build1_stat(i32 noundef 43, ptr noundef %824, ptr noundef %1060) #17
  %1062 = call ptr @gimple_build_assign_stat(ptr noundef %1061, ptr noundef %1058) #17
  call void @gsi_insert_before(ptr noundef nonnull %3, ptr noundef %1062, i32 noundef 1) #17
  %1063 = load ptr, ptr %3, align 8
  %1064 = load ptr, ptr %1063, align 8, !tbaa !72
  %1065 = icmp eq ptr %826, %1064
  %1066 = call ptr @unshare_expr(ptr noundef nonnull %878) #17
  %1067 = call ptr @build1_stat(i32 noundef 44, ptr noundef %824, ptr noundef %1066) #17
  br i1 %1065, label %1068, label %1122

1068:                                             ; preds = %1057
  %1069 = load i32, ptr %826, align 8
  %1070 = and i32 %1069, 255
  %1071 = add nsw i32 %1070, -10
  %1072 = icmp ult i32 %1071, -9
  br i1 %1072, label %1077, label %1073

1073:                                             ; preds = %1068
  %1074 = getelementptr inbounds %struct.gimple_statement_base, ptr %826, i64 0, i32 3
  %1075 = load i32, ptr %1074, align 4, !tbaa !50
  %1076 = icmp eq i32 %1075, 0
  br i1 %1076, label %1077, label %1078

1077:                                             ; preds = %1073, %1068
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1665, ptr noundef nonnull @.str.3) #17
  br label %1078

1078:                                             ; preds = %1077, %1073
  %1079 = load i32, ptr %826, align 8
  %1080 = and i32 %1079, 255
  %1081 = zext nneg i32 %1080 to i64
  %1082 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %1081
  %1083 = load i32, ptr %1082, align 4, !tbaa !54
  %1084 = zext i32 %1083 to i64
  %1085 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %1084
  %1086 = load i64, ptr %1085, align 8, !tbaa !91
  %1087 = icmp eq i64 %1086, 0
  br i1 %1087, label %1088, label %1089

1088:                                             ; preds = %1078
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1622, ptr noundef nonnull @.str.3) #17
  br label %1089

1089:                                             ; preds = %1088, %1078
  %1090 = getelementptr inbounds i8, ptr %826, i64 %1086
  store ptr %1067, ptr %1090, align 8, !tbaa !39
  %1091 = icmp eq ptr %1067, null
  br i1 %1091, label %1098, label %1092

1092:                                             ; preds = %1089
  %1093 = load i64, ptr %1067, align 8
  %1094 = and i64 %1093, 65535
  %1095 = icmp eq i64 %1094, 141
  br i1 %1095, label %1096, label %1098

1096:                                             ; preds = %1092
  %1097 = getelementptr inbounds %struct.tree_ssa_name, ptr %1067, i64 0, i32 2
  store ptr %826, ptr %1097, align 8, !tbaa !50
  br label %1098

1098:                                             ; preds = %1096, %1092, %1089
  %1099 = load i32, ptr %826, align 8
  %1100 = and i32 %1099, 255
  %1101 = add nsw i32 %1100, -10
  %1102 = icmp ult i32 %1101, -9
  br i1 %1102, label %1107, label %1103

1103:                                             ; preds = %1098
  %1104 = getelementptr inbounds %struct.gimple_statement_base, ptr %826, i64 0, i32 3
  %1105 = load i32, ptr %1104, align 4, !tbaa !50
  %1106 = icmp ugt i32 %1105, 1
  br i1 %1106, label %1108, label %1107

1107:                                             ; preds = %1103, %1098
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1665, ptr noundef nonnull @.str.3) #17
  br label %1108

1108:                                             ; preds = %1107, %1103
  %1109 = load i32, ptr %826, align 8
  %1110 = and i32 %1109, 255
  %1111 = zext nneg i32 %1110 to i64
  %1112 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %1111
  %1113 = load i32, ptr %1112, align 4, !tbaa !54
  %1114 = zext i32 %1113 to i64
  %1115 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %1114
  %1116 = load i64, ptr %1115, align 8, !tbaa !91
  %1117 = icmp eq i64 %1116, 0
  br i1 %1117, label %1118, label %1119

1118:                                             ; preds = %1108
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1622, ptr noundef nonnull @.str.3) #17
  br label %1119

1119:                                             ; preds = %1118, %1108
  %1120 = getelementptr inbounds i8, ptr %826, i64 %1116
  %1121 = getelementptr inbounds ptr, ptr %1120, i64 1
  store ptr %1059, ptr %1121, align 8, !tbaa !39
  br label %1153

1122:                                             ; preds = %1057
  %1123 = call ptr @gimple_build_assign_stat(ptr noundef %1067, ptr noundef %1059) #17
  call void @gsi_insert_before(ptr noundef nonnull %3, ptr noundef %1123, i32 noundef 1) #17
  %1124 = load ptr, ptr %3, align 8
  %1125 = load ptr, ptr %1124, align 8, !tbaa !72
  %1126 = load i32, ptr %1125, align 8
  %1127 = and i32 %1126, 255
  %1128 = icmp eq i32 %1127, 9
  br i1 %1128, label %1130, label %1129

1129:                                             ; preds = %1122
  call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 851, ptr noundef nonnull @.str.3) #17
  br label %1130

1130:                                             ; preds = %1129, %1122
  %1131 = load i32, ptr %1125, align 8
  %1132 = and i32 %1131, 255
  %1133 = add nsw i32 %1132, -10
  %1134 = icmp ult i32 %1133, -9
  br i1 %1134, label %1139, label %1135

1135:                                             ; preds = %1130
  %1136 = getelementptr inbounds %struct.gimple_statement_base, ptr %1125, i64 0, i32 3
  %1137 = load i32, ptr %1136, align 4, !tbaa !50
  %1138 = icmp eq i32 %1137, 0
  br i1 %1138, label %1139, label %1140

1139:                                             ; preds = %1135, %1130
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1665, ptr noundef nonnull @.str.3) #17
  br label %1140

1140:                                             ; preds = %1139, %1135
  %1141 = load i32, ptr %1125, align 8
  %1142 = and i32 %1141, 255
  %1143 = zext nneg i32 %1142 to i64
  %1144 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %1143
  %1145 = load i32, ptr %1144, align 4, !tbaa !54
  %1146 = zext i32 %1145 to i64
  %1147 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %1146
  %1148 = load i64, ptr %1147, align 8, !tbaa !91
  %1149 = icmp eq i64 %1148, 0
  br i1 %1149, label %1150, label %1151

1150:                                             ; preds = %1140
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1622, ptr noundef nonnull @.str.3) #17
  br label %1151

1151:                                             ; preds = %1150, %1140
  %1152 = getelementptr inbounds i8, ptr %1125, i64 %1148
  store ptr %878, ptr %1152, align 8, !tbaa !39
  br label %1153

1153:                                             ; preds = %1151, %1119
  %1154 = phi ptr [ %826, %1119 ], [ %1125, %1151 ]
  %1155 = load i32, ptr %1154, align 8
  %1156 = and i32 %1155, 255
  %1157 = add nsw i32 %1156, -10
  %1158 = icmp ult i32 %1157, -9
  br i1 %1158, label %1870, label %1159

1159:                                             ; preds = %1153
  call void @gimple_set_modified(ptr noundef nonnull %1154, i8 noundef zeroext 1) #17
  call void @update_stmt_operands(ptr noundef nonnull %1154) #17
  br label %1870

1160:                                             ; preds = %818
  %1161 = icmp eq i32 %816, 6
  br i1 %1161, label %1162, label %1870

1162:                                             ; preds = %1160
  %1163 = lshr i32 %815, 16
  %1164 = zext nneg i32 %1163 to i64
  %1165 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %1164
  %1166 = load i8, ptr %1165, align 1, !tbaa !50
  %1167 = icmp eq i8 %1166, 3
  br i1 %1167, label %1168, label %1184

1168:                                             ; preds = %1162
  %1169 = zext nneg i32 %816 to i64
  %1170 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %1169
  %1171 = load i32, ptr %1170, align 4, !tbaa !54
  %1172 = zext i32 %1171 to i64
  %1173 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %1172
  %1174 = load i64, ptr %1173, align 8, !tbaa !91
  %1175 = icmp eq i64 %1174, 0
  br i1 %1175, label %1176, label %1177

1176:                                             ; preds = %1168
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1622, ptr noundef nonnull @.str.3) #17
  br label %1177

1177:                                             ; preds = %1176, %1168
  %1178 = getelementptr inbounds i8, ptr %752, i64 %1174
  %1179 = getelementptr inbounds ptr, ptr %1178, i64 1
  %1180 = load ptr, ptr %1179, align 8, !tbaa !39
  %1181 = load i64, ptr %1180, align 8
  %1182 = trunc i64 %1181 to i32
  %1183 = and i32 %1182, 65535
  br label %1184

1184:                                             ; preds = %1177, %1162
  %1185 = phi i32 [ %1183, %1177 ], [ %1163, %1162 ]
  %1186 = icmp eq i32 %1185, 43
  br i1 %1186, label %1222, label %1187

1187:                                             ; preds = %1184
  %1188 = load i32, ptr %752, align 8
  %1189 = trunc i32 %1188 to i8
  switch i8 %1189, label %1192 [
    i8 6, label %1190
    i8 1, label %1190
    i8 8, label %1193
  ]

1190:                                             ; preds = %1187, %1187
  %1191 = lshr i32 %1188, 16
  br label %1193

1192:                                             ; preds = %1187
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1446, ptr noundef nonnull @.str.3) #17
  br label %1193

1193:                                             ; preds = %1192, %1190, %1187
  %1194 = phi i32 [ %1191, %1190 ], [ 0, %1192 ], [ 59, %1187 ]
  %1195 = zext nneg i32 %1194 to i64
  %1196 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %1195
  %1197 = load i8, ptr %1196, align 1, !tbaa !50
  %1198 = icmp eq i8 %1197, 3
  br i1 %1198, label %1199, label %1219

1199:                                             ; preds = %1193
  %1200 = load i32, ptr %752, align 8
  %1201 = and i32 %1200, 255
  %1202 = add nsw i32 %1201, -1
  %1203 = icmp ult i32 %1202, 9
  call void @llvm.assume(i1 %1203)
  %1204 = zext nneg i32 %1201 to i64
  %1205 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %1204
  %1206 = load i32, ptr %1205, align 4, !tbaa !54
  %1207 = zext i32 %1206 to i64
  %1208 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %1207
  %1209 = load i64, ptr %1208, align 8, !tbaa !91
  %1210 = icmp eq i64 %1209, 0
  br i1 %1210, label %1211, label %1212

1211:                                             ; preds = %1199
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1622, ptr noundef nonnull @.str.3) #17
  br label %1212

1212:                                             ; preds = %1211, %1199
  %1213 = getelementptr inbounds i8, ptr %752, i64 %1209
  %1214 = getelementptr inbounds ptr, ptr %1213, i64 1
  %1215 = load ptr, ptr %1214, align 8, !tbaa !39
  %1216 = load i64, ptr %1215, align 8
  %1217 = trunc i64 %1216 to i32
  %1218 = and i32 %1217, 65535
  br label %1219

1219:                                             ; preds = %1212, %1193
  %1220 = phi i32 [ %1218, %1212 ], [ %1194, %1193 ]
  %1221 = icmp eq i32 %1220, 44
  br i1 %1221, label %1222, label %1870

1222:                                             ; preds = %1219, %1184
  %1223 = load i64, ptr %753, align 8
  %1224 = and i64 %1223, 65535
  %1225 = icmp eq i64 %1224, 141
  br i1 %1225, label %1226, label %1870

1226:                                             ; preds = %1222
  %1227 = load i32, ptr %752, align 8
  %1228 = and i32 %1227, 255
  %1229 = add nsw i32 %1228, -1
  %1230 = icmp ult i32 %1229, 9
  call void @llvm.assume(i1 %1230)
  %1231 = zext nneg i32 %1228 to i64
  %1232 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %1231
  %1233 = load i32, ptr %1232, align 4, !tbaa !54
  %1234 = zext i32 %1233 to i64
  %1235 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %1234
  %1236 = load i64, ptr %1235, align 8, !tbaa !91
  %1237 = icmp eq i64 %1236, 0
  br i1 %1237, label %1238, label %1239

1238:                                             ; preds = %1226
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1622, ptr noundef nonnull @.str.3) #17
  br label %1239

1239:                                             ; preds = %1238, %1226
  %1240 = getelementptr inbounds i8, ptr %752, i64 %1236
  %1241 = getelementptr inbounds ptr, ptr %1240, i64 1
  %1242 = load ptr, ptr %1241, align 8, !tbaa !39
  %1243 = getelementptr inbounds %struct.tree_exp, ptr %1242, i64 0, i32 3
  %1244 = load ptr, ptr %1243, align 8, !tbaa !50
  %1245 = load i32, ptr %752, align 8
  %1246 = trunc i32 %1245 to i8
  switch i8 %1246, label %1249 [
    i8 6, label %1247
    i8 1, label %1247
    i8 8, label %1250
  ]

1247:                                             ; preds = %1239, %1239
  %1248 = lshr i32 %1245, 16
  br label %1250

1249:                                             ; preds = %1239
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1446, ptr noundef nonnull @.str.3) #17
  br label %1250

1250:                                             ; preds = %1249, %1247, %1239
  %1251 = phi i32 [ %1248, %1247 ], [ 0, %1249 ], [ 59, %1239 ]
  %1252 = zext nneg i32 %1251 to i64
  %1253 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %1252
  %1254 = load i8, ptr %1253, align 1, !tbaa !50
  %1255 = icmp eq i8 %1254, 3
  br i1 %1255, label %1256, label %1276

1256:                                             ; preds = %1250
  %1257 = load i32, ptr %752, align 8
  %1258 = and i32 %1257, 255
  %1259 = add nsw i32 %1258, -1
  %1260 = icmp ult i32 %1259, 9
  call void @llvm.assume(i1 %1260)
  %1261 = zext nneg i32 %1258 to i64
  %1262 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %1261
  %1263 = load i32, ptr %1262, align 4, !tbaa !54
  %1264 = zext i32 %1263 to i64
  %1265 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %1264
  %1266 = load i64, ptr %1265, align 8, !tbaa !91
  %1267 = icmp eq i64 %1266, 0
  br i1 %1267, label %1268, label %1269

1268:                                             ; preds = %1256
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1622, ptr noundef nonnull @.str.3) #17
  br label %1269

1269:                                             ; preds = %1268, %1256
  %1270 = getelementptr inbounds i8, ptr %752, i64 %1266
  %1271 = getelementptr inbounds ptr, ptr %1270, i64 1
  %1272 = load ptr, ptr %1271, align 8, !tbaa !39
  %1273 = load i64, ptr %1272, align 8
  %1274 = trunc i64 %1273 to i32
  %1275 = and i32 %1274, 65535
  br label %1276

1276:                                             ; preds = %1269, %1250
  %1277 = phi i32 [ %1275, %1269 ], [ %1251, %1250 ]
  %1278 = icmp eq i32 %1277, 44
  %1279 = zext i1 %1278 to i8
  %1280 = call fastcc ptr @extract_component(ptr noundef nonnull %3, ptr noundef %1244, i8 noundef zeroext %1279, i8 noundef zeroext 0)
  call void @gimple_assign_set_rhs_from_tree(ptr noundef nonnull %3, ptr noundef %1280) #17
  %1281 = load ptr, ptr %3, align 8
  %1282 = load ptr, ptr %1281, align 8, !tbaa !72
  %1283 = load i32, ptr %1282, align 8
  %1284 = and i32 %1283, 255
  %1285 = add nsw i32 %1284, -10
  %1286 = icmp ult i32 %1285, -9
  br i1 %1286, label %1870, label %1287

1287:                                             ; preds = %1276
  call void @gimple_set_modified(ptr noundef nonnull %1282, i8 noundef zeroext 1) #17
  call void @update_stmt_operands(ptr noundef nonnull %1282) #17
  br label %1870

1288:                                             ; preds = %805, %789
  %1289 = phi ptr [ %810, %805 ], [ %791, %789 ]
  %1290 = load i32, ptr %752, align 8
  %1291 = and i32 %1290, 255
  %1292 = icmp eq i32 %1291, 6
  br i1 %1292, label %1293, label %1322

1293:                                             ; preds = %1288
  %1294 = zext nneg i32 %1291 to i64
  %1295 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %1294
  %1296 = load i32, ptr %1295, align 4, !tbaa !54
  %1297 = zext i32 %1296 to i64
  %1298 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %1297
  %1299 = load i64, ptr %1298, align 8, !tbaa !91
  %1300 = icmp eq i64 %1299, 0
  br i1 %1300, label %1301, label %1302

1301:                                             ; preds = %1293
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1622, ptr noundef nonnull @.str.3) #17
  br label %1302

1302:                                             ; preds = %1301, %1293
  %1303 = getelementptr inbounds i8, ptr %752, i64 %1299
  %1304 = getelementptr inbounds ptr, ptr %1303, i64 1
  %1305 = load ptr, ptr %1304, align 8, !tbaa !39
  %1306 = getelementptr inbounds %struct.gimple_statement_base, ptr %752, i64 0, i32 3
  %1307 = load i32, ptr %1306, align 4, !tbaa !50
  %1308 = icmp ugt i32 %1307, 2
  br i1 %1308, label %1309, label %1362

1309:                                             ; preds = %1302
  %1310 = load i32, ptr %752, align 8
  %1311 = and i32 %1310, 255
  %1312 = add nsw i32 %1311, -10
  %1313 = icmp ult i32 %1312, -9
  br i1 %1313, label %1362, label %1314

1314:                                             ; preds = %1309
  %1315 = zext nneg i32 %1311 to i64
  %1316 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %1315
  %1317 = load i32, ptr %1316, align 4, !tbaa !54
  %1318 = zext i32 %1317 to i64
  %1319 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %1318
  %1320 = load i64, ptr %1319, align 8, !tbaa !91
  %1321 = icmp eq i64 %1320, 0
  br i1 %1321, label %1351, label %1355

1322:                                             ; preds = %1288
  %1323 = add nsw i32 %1291, -10
  %1324 = icmp ult i32 %1323, -9
  br i1 %1324, label %1337, label %1325

1325:                                             ; preds = %1322
  %1326 = zext nneg i32 %1291 to i64
  %1327 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %1326
  %1328 = load i32, ptr %1327, align 4, !tbaa !54
  %1329 = zext i32 %1328 to i64
  %1330 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %1329
  %1331 = load i64, ptr %1330, align 8, !tbaa !91
  %1332 = icmp eq i64 %1331, 0
  br i1 %1332, label %1333, label %1334

1333:                                             ; preds = %1325
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1622, ptr noundef nonnull @.str.3) #17
  br label %1334

1334:                                             ; preds = %1333, %1325
  %1335 = getelementptr inbounds i8, ptr %752, i64 %1331
  %1336 = load ptr, ptr %1335, align 8, !tbaa !39
  br label %1337

1337:                                             ; preds = %1334, %1322
  %1338 = phi ptr [ %1336, %1334 ], [ null, %1322 ]
  %1339 = load i32, ptr %752, align 8
  %1340 = and i32 %1339, 255
  %1341 = add nsw i32 %1340, -10
  %1342 = icmp ult i32 %1341, -9
  br i1 %1342, label %1362, label %1343

1343:                                             ; preds = %1337
  %1344 = zext nneg i32 %1340 to i64
  %1345 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %1344
  %1346 = load i32, ptr %1345, align 4, !tbaa !54
  %1347 = zext i32 %1346 to i64
  %1348 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %1347
  %1349 = load i64, ptr %1348, align 8, !tbaa !91
  %1350 = icmp eq i64 %1349, 0
  br i1 %1350, label %1351, label %1355

1351:                                             ; preds = %1343, %1314
  %1352 = phi i64 [ %1320, %1314 ], [ %1349, %1343 ]
  %1353 = phi i64 [ 2, %1314 ], [ 1, %1343 ]
  %1354 = phi ptr [ %1305, %1314 ], [ %1338, %1343 ]
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1622, ptr noundef nonnull @.str.3) #17
  br label %1355

1355:                                             ; preds = %1351, %1343, %1314
  %1356 = phi i64 [ %1320, %1314 ], [ %1349, %1343 ], [ %1352, %1351 ]
  %1357 = phi i64 [ 2, %1314 ], [ 1, %1343 ], [ %1353, %1351 ]
  %1358 = phi ptr [ %1305, %1314 ], [ %1338, %1343 ], [ %1354, %1351 ]
  %1359 = getelementptr inbounds i8, ptr %752, i64 %1356
  %1360 = getelementptr inbounds ptr, ptr %1359, i64 %1357
  %1361 = load ptr, ptr %1360, align 8, !tbaa !39
  br label %1362

1362:                                             ; preds = %1355, %1337, %1309, %1302
  %1363 = phi ptr [ %1305, %1302 ], [ %1305, %1309 ], [ %1338, %1337 ], [ %1358, %1355 ]
  %1364 = phi ptr [ null, %1302 ], [ null, %1309 ], [ null, %1337 ], [ %1361, %1355 ]
  %1365 = call fastcc ptr @extract_component(ptr noundef nonnull %3, ptr noundef %1363, i8 noundef zeroext 0, i8 noundef zeroext 1)
  %1366 = call fastcc ptr @extract_component(ptr noundef nonnull %3, ptr noundef %1363, i8 noundef zeroext 1, i8 noundef zeroext 1)
  %1367 = icmp eq ptr %1363, %1364
  br i1 %1367, label %1373, label %1368

1368:                                             ; preds = %1362
  %1369 = icmp eq ptr %1364, null
  br i1 %1369, label %1373, label %1370

1370:                                             ; preds = %1368
  %1371 = call fastcc ptr @extract_component(ptr noundef nonnull %3, ptr noundef nonnull %1364, i8 noundef zeroext 0, i8 noundef zeroext 1)
  %1372 = call fastcc ptr @extract_component(ptr noundef nonnull %3, ptr noundef nonnull %1364, i8 noundef zeroext 1, i8 noundef zeroext 1)
  br label %1373

1373:                                             ; preds = %1370, %1368, %1362
  %1374 = phi ptr [ %1371, %1370 ], [ %1365, %1362 ], [ null, %1368 ]
  %1375 = phi ptr [ %1372, %1370 ], [ %1366, %1362 ], [ null, %1368 ]
  %1376 = load ptr, ptr @cfun, align 8, !tbaa !39
  %1377 = icmp eq ptr %1376, null
  br i1 %1377, label %1386, label %1378

1378:                                             ; preds = %1373
  %1379 = getelementptr inbounds %struct.function, ptr %1376, i64 0, i32 3
  %1380 = load ptr, ptr %1379, align 8, !tbaa !108
  %1381 = icmp eq ptr %1380, null
  br i1 %1381, label %1386, label %1382

1382:                                             ; preds = %1378
  %1383 = getelementptr inbounds %struct.gimple_df, ptr %1380, i64 0, i32 10
  %1384 = load i8, ptr %1383, align 8
  %1385 = and i8 %1384, 1
  br label %1386

1386:                                             ; preds = %1382, %1378, %1373
  %1387 = phi i8 [ 0, %1378 ], [ 0, %1373 ], [ %1385, %1382 ]
  %1388 = icmp eq i8 %1387, 0
  br i1 %1388, label %1403, label %1389

1389:                                             ; preds = %1386
  %1390 = call fastcc i32 @find_lattice_value(ptr noundef %1363)
  %1391 = icmp eq i32 %1390, 0
  %1392 = select i1 %1391, i32 3, i32 %1390
  %1393 = zext nneg i32 %783 to i64
  %1394 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %1393
  %1395 = load i32, ptr %1394, align 4, !tbaa !54
  %1396 = icmp eq i32 %1395, 6
  %1397 = or i1 %1367, %1396
  %1398 = select i1 %1396, i32 0, i32 %1392
  br i1 %1397, label %1403, label %1399

1399:                                             ; preds = %1389
  %1400 = call fastcc i32 @find_lattice_value(ptr noundef %1364)
  %1401 = icmp eq i32 %1400, 0
  %1402 = select i1 %1401, i32 3, i32 %1400
  br label %1403

1403:                                             ; preds = %1399, %1389, %1386
  %1404 = phi i32 [ %1392, %1399 ], [ %1392, %1389 ], [ 3, %1386 ]
  %1405 = phi i32 [ %1402, %1399 ], [ %1398, %1389 ], [ 3, %1386 ]
  switch i16 %784, label %1869 [
    i16 63, label %1406
    i16 64, label %1406
    i16 65, label %1440
    i16 67, label %1500
    i16 68, label %1500
    i16 69, label %1500
    i16 70, label %1500
    i16 75, label %1500
    i16 79, label %1737
    i16 124, label %1740
    i16 101, label %1742
    i16 102, label %1742
  ]

1406:                                             ; preds = %1403, %1403
  %1407 = shl i32 %1404, 2
  %1408 = or i32 %1407, %1405
  switch i32 %1408, label %1436 [
    i32 5, label %1409
    i32 6, label %1411
    i32 9, label %1415
    i32 10, label %1419
    i32 13, label %1421
    i32 14, label %1423
    i32 7, label %1425
    i32 11, label %1429
    i32 15, label %1433
  ]

1409:                                             ; preds = %1406
  %1410 = call ptr @gimplify_build2(ptr noundef nonnull %3, i32 noundef %783, ptr noundef %1289, ptr noundef %1365, ptr noundef %1374) #17
  br label %1437

1411:                                             ; preds = %1406
  %1412 = icmp eq i32 %783, 64
  br i1 %1412, label %1413, label %1437

1413:                                             ; preds = %1411
  %1414 = call ptr @gimplify_build2(ptr noundef nonnull %3, i32 noundef 64, ptr noundef %1289, ptr noundef %1366, ptr noundef %1375) #17
  br label %1437

1415:                                             ; preds = %1406
  %1416 = icmp eq i32 %783, 64
  br i1 %1416, label %1417, label %1437

1417:                                             ; preds = %1415
  %1418 = call ptr @gimplify_build2(ptr noundef nonnull %3, i32 noundef 64, ptr noundef %1289, ptr noundef %1365, ptr noundef %1374) #17
  br label %1437

1419:                                             ; preds = %1406
  %1420 = call ptr @gimplify_build2(ptr noundef nonnull %3, i32 noundef %783, ptr noundef %1289, ptr noundef %1366, ptr noundef %1375) #17
  br label %1437

1421:                                             ; preds = %1406
  %1422 = call ptr @gimplify_build2(ptr noundef nonnull %3, i32 noundef %783, ptr noundef %1289, ptr noundef %1365, ptr noundef %1374) #17
  br label %1437

1423:                                             ; preds = %1406
  %1424 = call ptr @gimplify_build2(ptr noundef nonnull %3, i32 noundef %783, ptr noundef %1289, ptr noundef %1366, ptr noundef %1375) #17
  br label %1437

1425:                                             ; preds = %1406
  %1426 = icmp eq i32 %783, 64
  br i1 %1426, label %1433, label %1427

1427:                                             ; preds = %1425
  %1428 = call ptr @gimplify_build2(ptr noundef nonnull %3, i32 noundef %783, ptr noundef %1289, ptr noundef %1365, ptr noundef %1374) #17
  br label %1437

1429:                                             ; preds = %1406
  %1430 = icmp eq i32 %783, 64
  br i1 %1430, label %1433, label %1431

1431:                                             ; preds = %1429
  %1432 = call ptr @gimplify_build2(ptr noundef nonnull %3, i32 noundef %783, ptr noundef %1289, ptr noundef %1366, ptr noundef %1375) #17
  br label %1437

1433:                                             ; preds = %1429, %1425, %1406
  %1434 = call ptr @gimplify_build2(ptr noundef nonnull %3, i32 noundef %783, ptr noundef %1289, ptr noundef %1365, ptr noundef %1374) #17
  %1435 = call ptr @gimplify_build2(ptr noundef nonnull %3, i32 noundef %783, ptr noundef %1289, ptr noundef %1366, ptr noundef %1375) #17
  br label %1437

1436:                                             ; preds = %1406
  call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 931, ptr noundef nonnull @.str.3) #17
  unreachable

1437:                                             ; preds = %1433, %1431, %1427, %1423, %1421, %1419, %1417, %1415, %1413, %1411, %1409
  %1438 = phi ptr [ %1434, %1433 ], [ %1374, %1431 ], [ %1428, %1427 ], [ %1365, %1423 ], [ %1422, %1421 ], [ %1365, %1419 ], [ %1365, %1413 ], [ %1410, %1409 ], [ %1365, %1411 ], [ %1418, %1417 ], [ %1374, %1415 ]
  %1439 = phi ptr [ %1435, %1433 ], [ %1432, %1431 ], [ %1375, %1427 ], [ %1424, %1423 ], [ %1366, %1421 ], [ %1420, %1419 ], [ %1414, %1413 ], [ %1366, %1409 ], [ %1375, %1411 ], [ %1366, %1417 ], [ %1366, %1415 ]
  call fastcc void @update_complex_assignment(ptr noundef nonnull %3, ptr noundef %1438, ptr noundef %1439)
  br label %1870

1440:                                             ; preds = %1403
  %1441 = icmp slt i32 %1404, %1405
  br i1 %1441, label %1442, label %1443

1442:                                             ; preds = %1440
  br label %1443

1443:                                             ; preds = %1442, %1440
  %1444 = phi i32 [ %1405, %1442 ], [ %1404, %1440 ]
  %1445 = phi i32 [ %1404, %1442 ], [ %1405, %1440 ]
  %1446 = phi ptr [ %1366, %1442 ], [ %1375, %1440 ]
  %1447 = phi ptr [ %1365, %1442 ], [ %1374, %1440 ]
  %1448 = phi ptr [ %1375, %1442 ], [ %1366, %1440 ]
  %1449 = phi ptr [ %1374, %1442 ], [ %1365, %1440 ]
  %1450 = shl i32 %1444, 2
  %1451 = or i32 %1450, %1445
  switch i32 %1451, label %1496 [
    i32 5, label %1452
    i32 9, label %1454
    i32 10, label %1465
    i32 13, label %1468
    i32 14, label %1471
    i32 15, label %1475
  ]

1452:                                             ; preds = %1443
  %1453 = call ptr @gimplify_build2(ptr noundef nonnull %3, i32 noundef 65, ptr noundef %1289, ptr noundef %1449, ptr noundef %1447) #17
  br label %1497

1454:                                             ; preds = %1443
  %1455 = load i64, ptr %1448, align 8
  %1456 = and i64 %1455, 65535
  %1457 = icmp eq i64 %1456, 24
  br i1 %1457, label %1458, label %1463

1458:                                             ; preds = %1454
  %1459 = getelementptr inbounds %struct.tree_real_cst, ptr %1448, i64 0, i32 1
  %1460 = load ptr, ptr %1459, align 8, !tbaa !50
  %1461 = call zeroext i8 @real_identical(ptr noundef %1460, ptr noundef nonnull @dconst1) #17
  %1462 = icmp eq i8 %1461, 0
  br i1 %1462, label %1463, label %1497

1463:                                             ; preds = %1458, %1454
  %1464 = call ptr @gimplify_build2(ptr noundef nonnull %3, i32 noundef 65, ptr noundef %1289, ptr noundef nonnull %1448, ptr noundef %1447) #17
  br label %1497

1465:                                             ; preds = %1443
  %1466 = call ptr @gimplify_build2(ptr noundef nonnull %3, i32 noundef 65, ptr noundef %1289, ptr noundef %1448, ptr noundef %1446) #17
  %1467 = call ptr @gimplify_build1(ptr noundef nonnull %3, i32 noundef 79, ptr noundef %1289, ptr noundef %1466) #17
  br label %1497

1468:                                             ; preds = %1443
  %1469 = call ptr @gimplify_build2(ptr noundef nonnull %3, i32 noundef 65, ptr noundef %1289, ptr noundef %1449, ptr noundef %1447) #17
  %1470 = call ptr @gimplify_build2(ptr noundef nonnull %3, i32 noundef 65, ptr noundef %1289, ptr noundef %1448, ptr noundef %1447) #17
  br label %1497

1471:                                             ; preds = %1443
  %1472 = call ptr @gimplify_build2(ptr noundef nonnull %3, i32 noundef 65, ptr noundef %1289, ptr noundef %1448, ptr noundef %1446) #17
  %1473 = call ptr @gimplify_build1(ptr noundef nonnull %3, i32 noundef 79, ptr noundef %1289, ptr noundef %1472) #17
  %1474 = call ptr @gimplify_build2(ptr noundef nonnull %3, i32 noundef 65, ptr noundef %1289, ptr noundef %1449, ptr noundef %1446) #17
  br label %1497

1475:                                             ; preds = %1443
  %1476 = load i32, ptr @flag_complex_method, align 4, !tbaa !54
  %1477 = icmp eq i32 %1476, 2
  br i1 %1477, label %1478, label %1483

1478:                                             ; preds = %1475
  %1479 = load i64, ptr %1289, align 8
  %1480 = and i64 %1479, 65535
  %1481 = icmp eq i64 %1480, 9
  br i1 %1481, label %1482, label %1483

1482:                                             ; preds = %1478
  call fastcc void @expand_complex_libcall(ptr noundef nonnull %3, ptr noundef %1449, ptr noundef %1448, ptr noundef %1447, ptr noundef %1446, i32 noundef 65)
  br label %1870

1483:                                             ; preds = %1478, %1475
  %1484 = call ptr @gimplify_build2(ptr noundef nonnull %3, i32 noundef 65, ptr noundef %1289, ptr noundef %1449, ptr noundef %1447) #17
  %1485 = call ptr @gimplify_build2(ptr noundef nonnull %3, i32 noundef 65, ptr noundef %1289, ptr noundef %1448, ptr noundef %1446) #17
  %1486 = call ptr @gimplify_build2(ptr noundef nonnull %3, i32 noundef 65, ptr noundef %1289, ptr noundef %1449, ptr noundef %1446) #17
  %1487 = icmp eq ptr %1449, %1447
  %1488 = icmp eq ptr %1448, %1446
  %1489 = and i1 %1488, %1487
  br i1 %1489, label %1492, label %1490

1490:                                             ; preds = %1483
  %1491 = call ptr @gimplify_build2(ptr noundef nonnull %3, i32 noundef 65, ptr noundef %1289, ptr noundef %1448, ptr noundef %1447) #17
  br label %1492

1492:                                             ; preds = %1490, %1483
  %1493 = phi ptr [ %1491, %1490 ], [ %1486, %1483 ]
  %1494 = call ptr @gimplify_build2(ptr noundef nonnull %3, i32 noundef 64, ptr noundef %1289, ptr noundef %1484, ptr noundef %1485) #17
  %1495 = call ptr @gimplify_build2(ptr noundef nonnull %3, i32 noundef 63, ptr noundef %1289, ptr noundef %1486, ptr noundef %1493) #17
  br label %1497

1496:                                             ; preds = %1443
  call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 1063, ptr noundef nonnull @.str.3) #17
  br label %1497

1497:                                             ; preds = %1496, %1492, %1471, %1468, %1465, %1463, %1458, %1452
  %1498 = phi ptr [ %1365, %1496 ], [ %1494, %1492 ], [ %1473, %1471 ], [ %1469, %1468 ], [ %1467, %1465 ], [ %1449, %1463 ], [ %1453, %1452 ], [ %1449, %1458 ]
  %1499 = phi ptr [ %1366, %1496 ], [ %1495, %1492 ], [ %1474, %1471 ], [ %1470, %1468 ], [ %1449, %1465 ], [ %1464, %1463 ], [ %1448, %1452 ], [ %1447, %1458 ]
  call fastcc void @update_complex_assignment(ptr noundef nonnull %3, ptr noundef %1498, ptr noundef %1499)
  br label %1870

1500:                                             ; preds = %1403, %1403, %1403, %1403, %1403
  %1501 = shl i32 %1404, 2
  %1502 = or i32 %1501, %1405
  switch i32 %1502, label %1733 [
    i32 5, label %1503
    i32 6, label %1505
    i32 9, label %1508
    i32 10, label %1510
    i32 13, label %1512
    i32 14, label %1515
    i32 7, label %1519
    i32 11, label %1519
    i32 15, label %1519
  ]

1503:                                             ; preds = %1500
  %1504 = call ptr @gimplify_build2(ptr noundef nonnull %3, i32 noundef %783, ptr noundef %1289, ptr noundef %1365, ptr noundef %1374) #17
  br label %1734

1505:                                             ; preds = %1500
  %1506 = call ptr @gimplify_build2(ptr noundef nonnull %3, i32 noundef %783, ptr noundef %1289, ptr noundef %1365, ptr noundef %1375) #17
  %1507 = call ptr @gimplify_build1(ptr noundef nonnull %3, i32 noundef 79, ptr noundef %1289, ptr noundef %1506) #17
  br label %1734

1508:                                             ; preds = %1500
  %1509 = call ptr @gimplify_build2(ptr noundef nonnull %3, i32 noundef %783, ptr noundef %1289, ptr noundef %1366, ptr noundef %1374) #17
  br label %1734

1510:                                             ; preds = %1500
  %1511 = call ptr @gimplify_build2(ptr noundef nonnull %3, i32 noundef %783, ptr noundef %1289, ptr noundef %1366, ptr noundef %1375) #17
  br label %1734

1512:                                             ; preds = %1500
  %1513 = call ptr @gimplify_build2(ptr noundef nonnull %3, i32 noundef %783, ptr noundef %1289, ptr noundef %1365, ptr noundef %1374) #17
  %1514 = call ptr @gimplify_build2(ptr noundef nonnull %3, i32 noundef %783, ptr noundef %1289, ptr noundef %1366, ptr noundef %1374) #17
  br label %1734

1515:                                             ; preds = %1500
  %1516 = call ptr @gimplify_build2(ptr noundef nonnull %3, i32 noundef %783, ptr noundef %1289, ptr noundef %1366, ptr noundef %1375) #17
  %1517 = call ptr @gimplify_build2(ptr noundef nonnull %3, i32 noundef %783, ptr noundef %1289, ptr noundef %1365, ptr noundef %1375) #17
  %1518 = call ptr @gimplify_build1(ptr noundef nonnull %3, i32 noundef 79, ptr noundef %1289, ptr noundef %1517) #17
  br label %1519

1519:                                             ; preds = %1500, %1500, %1515, %1500
  %1520 = load i32, ptr @flag_complex_method, align 4, !tbaa !54
  switch i32 %1520, label %1732 [
    i32 0, label %1521
    i32 2, label %1533
    i32 1, label %1538
  ]

1521:                                             ; preds = %1519
  %1522 = call ptr @gimplify_build2(ptr noundef nonnull %3, i32 noundef 65, ptr noundef %1289, ptr noundef %1374, ptr noundef %1374) #17
  %1523 = call ptr @gimplify_build2(ptr noundef nonnull %3, i32 noundef 65, ptr noundef %1289, ptr noundef %1375, ptr noundef %1375) #17
  %1524 = call ptr @gimplify_build2(ptr noundef nonnull %3, i32 noundef 63, ptr noundef %1289, ptr noundef %1522, ptr noundef %1523) #17
  %1525 = call ptr @gimplify_build2(ptr noundef nonnull %3, i32 noundef 65, ptr noundef %1289, ptr noundef %1365, ptr noundef %1374) #17
  %1526 = call ptr @gimplify_build2(ptr noundef nonnull %3, i32 noundef 65, ptr noundef %1289, ptr noundef %1366, ptr noundef %1375) #17
  %1527 = call ptr @gimplify_build2(ptr noundef nonnull %3, i32 noundef 63, ptr noundef %1289, ptr noundef %1525, ptr noundef %1526) #17
  %1528 = call ptr @gimplify_build2(ptr noundef nonnull %3, i32 noundef %783, ptr noundef %1289, ptr noundef %1527, ptr noundef %1524) #17
  %1529 = call ptr @gimplify_build2(ptr noundef nonnull %3, i32 noundef 65, ptr noundef %1289, ptr noundef %1366, ptr noundef %1374) #17
  %1530 = call ptr @gimplify_build2(ptr noundef nonnull %3, i32 noundef 65, ptr noundef %1289, ptr noundef %1365, ptr noundef %1375) #17
  %1531 = call ptr @gimplify_build2(ptr noundef nonnull %3, i32 noundef 64, ptr noundef %1289, ptr noundef %1529, ptr noundef %1530) #17
  %1532 = call ptr @gimplify_build2(ptr noundef nonnull %3, i32 noundef %783, ptr noundef %1289, ptr noundef %1531, ptr noundef %1524) #17
  call fastcc void @update_complex_assignment(ptr noundef nonnull %3, ptr noundef %1528, ptr noundef %1532)
  br label %1870

1533:                                             ; preds = %1519
  %1534 = load i64, ptr %1289, align 8
  %1535 = and i64 %1534, 65535
  %1536 = icmp eq i64 %1535, 9
  br i1 %1536, label %1537, label %1538

1537:                                             ; preds = %1533
  call fastcc void @expand_complex_libcall(ptr noundef nonnull %3, ptr noundef %1365, ptr noundef %1366, ptr noundef %1374, ptr noundef %1375, i32 noundef %783)
  br label %1870

1538:                                             ; preds = %1533, %1519
  %1539 = call ptr @gimplify_build1(ptr noundef nonnull %3, i32 noundef 82, ptr noundef %1289, ptr noundef %1374) #17
  %1540 = call ptr @gimplify_build1(ptr noundef nonnull %3, i32 noundef 82, ptr noundef %1289, ptr noundef %1375) #17
  %1541 = load ptr, ptr %3, align 8
  %1542 = load ptr, ptr %1541, align 8, !tbaa !72
  %1543 = getelementptr inbounds %struct.gimple_statement_base, ptr %1542, i64 0, i32 2
  %1544 = load i32, ptr %1543, align 8, !tbaa !50
  %1545 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !39
  %1546 = call ptr @fold_build2_stat_loc(i32 noundef %1544, i32 noundef 97, ptr noundef %1545, ptr noundef %1539, ptr noundef %1540) #17
  %1547 = call ptr @tree_strip_nop_conversions(ptr noundef %1546) #17
  %1548 = load i64, ptr %1547, align 8
  %1549 = and i64 %1548, 65535
  %1550 = icmp eq i64 %1549, 23
  br i1 %1550, label %1624, label %1551

1551:                                             ; preds = %1538
  %1552 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !39
  %1553 = call ptr @create_tmp_var(ptr noundef %1552, ptr noundef null) #17
  %1554 = call ptr @gimple_build_assign_stat(ptr noundef %1553, ptr noundef nonnull %1547) #17
  %1555 = load ptr, ptr @cfun, align 8, !tbaa !39
  %1556 = icmp eq ptr %1555, null
  br i1 %1556, label %1565, label %1557

1557:                                             ; preds = %1551
  %1558 = getelementptr inbounds %struct.function, ptr %1555, i64 0, i32 3
  %1559 = load ptr, ptr %1558, align 8, !tbaa !108
  %1560 = icmp eq ptr %1559, null
  br i1 %1560, label %1565, label %1561

1561:                                             ; preds = %1557
  %1562 = getelementptr inbounds %struct.gimple_df, ptr %1559, i64 0, i32 10
  %1563 = load i8, ptr %1562, align 8
  %1564 = and i8 %1563, 1
  br label %1565

1565:                                             ; preds = %1561, %1557, %1551
  %1566 = phi i8 [ 0, %1557 ], [ 0, %1551 ], [ %1564, %1561 ]
  %1567 = icmp eq i8 %1566, 0
  br i1 %1567, label %1599, label %1568

1568:                                             ; preds = %1565
  %1569 = call ptr @make_ssa_name_fn(ptr noundef %1555, ptr noundef %1553, ptr noundef %1554) #17
  %1570 = load i32, ptr %1554, align 8
  %1571 = and i32 %1570, 255
  %1572 = add nsw i32 %1571, -10
  %1573 = icmp ult i32 %1572, -9
  br i1 %1573, label %1578, label %1574

1574:                                             ; preds = %1568
  %1575 = getelementptr inbounds %struct.gimple_statement_base, ptr %1554, i64 0, i32 3
  %1576 = load i32, ptr %1575, align 4, !tbaa !50
  %1577 = icmp eq i32 %1576, 0
  br i1 %1577, label %1578, label %1579

1578:                                             ; preds = %1574, %1568
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1665, ptr noundef nonnull @.str.3) #17
  br label %1579

1579:                                             ; preds = %1578, %1574
  %1580 = load i32, ptr %1554, align 8
  %1581 = and i32 %1580, 255
  %1582 = zext nneg i32 %1581 to i64
  %1583 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %1582
  %1584 = load i32, ptr %1583, align 4, !tbaa !54
  %1585 = zext i32 %1584 to i64
  %1586 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %1585
  %1587 = load i64, ptr %1586, align 8, !tbaa !91
  %1588 = icmp eq i64 %1587, 0
  br i1 %1588, label %1589, label %1590

1589:                                             ; preds = %1579
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1622, ptr noundef nonnull @.str.3) #17
  br label %1590

1590:                                             ; preds = %1589, %1579
  %1591 = getelementptr inbounds i8, ptr %1554, i64 %1587
  store ptr %1569, ptr %1591, align 8, !tbaa !39
  %1592 = icmp eq ptr %1569, null
  br i1 %1592, label %1599, label %1593

1593:                                             ; preds = %1590
  %1594 = load i64, ptr %1569, align 8
  %1595 = and i64 %1594, 65535
  %1596 = icmp eq i64 %1595, 141
  br i1 %1596, label %1597, label %1599

1597:                                             ; preds = %1593
  %1598 = getelementptr inbounds %struct.tree_ssa_name, ptr %1569, i64 0, i32 2
  store ptr %1554, ptr %1598, align 8, !tbaa !50
  br label %1599

1599:                                             ; preds = %1597, %1593, %1590, %1565
  %1600 = phi ptr [ %1553, %1565 ], [ %1569, %1590 ], [ %1569, %1593 ], [ %1569, %1597 ]
  call void @gsi_insert_before(ptr noundef nonnull %3, ptr noundef %1554, i32 noundef 1) #17
  %1601 = getelementptr inbounds %struct.gimple_statement_base, ptr %1554, i64 0, i32 2
  %1602 = load i32, ptr %1601, align 8, !tbaa !50
  %1603 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !39
  %1604 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 26), align 16, !tbaa !39
  %1605 = call ptr @fold_build2_stat_loc(i32 noundef %1602, i32 noundef 101, ptr noundef %1603, ptr noundef %1600, ptr noundef %1604) #17
  %1606 = call ptr @gimple_build_cond_from_tree(ptr noundef %1605, ptr noundef null, ptr noundef null) #17
  call void @gsi_insert_before(ptr noundef nonnull %3, ptr noundef %1606, i32 noundef 1) #17
  %1607 = load ptr, ptr %596, align 8
  %1608 = call ptr @split_block(ptr noundef %1607, ptr noundef %1606) #17
  %1609 = load ptr, ptr %1608, align 8, !tbaa !142
  %1610 = getelementptr inbounds %struct.edge_def, ptr %1608, i64 0, i32 1
  %1611 = load ptr, ptr %1610, align 8, !tbaa !143
  %1612 = call ptr @create_empty_bb(ptr noundef %1609) #17
  %1613 = call ptr @create_empty_bb(ptr noundef %1612) #17
  %1614 = getelementptr inbounds %struct.edge_def, ptr %1608, i64 0, i32 7
  store i32 1024, ptr %1614, align 8, !tbaa !139
  call void @redirect_edge_succ(ptr noundef nonnull %1608, ptr noundef %1612) #17
  %1615 = call ptr @make_edge(ptr noundef %1609, ptr noundef %1613, i32 noundef 2048) #17
  %1616 = call ptr @make_edge(ptr noundef %1612, ptr noundef %1611, i32 noundef 1) #17
  %1617 = call ptr @make_edge(ptr noundef %1613, ptr noundef %1611, i32 noundef 1) #17
  %1618 = call zeroext i8 @dom_info_available_p(i32 noundef 1) #17
  %1619 = icmp eq i8 %1618, 0
  br i1 %1619, label %1621, label %1620

1620:                                             ; preds = %1599
  call void @set_immediate_dominator(i32 noundef 1, ptr noundef %1612, ptr noundef %1609) #17
  call void @set_immediate_dominator(i32 noundef 1, ptr noundef %1613, ptr noundef %1609) #17
  br label %1621

1621:                                             ; preds = %1620, %1599
  %1622 = call ptr @make_rename_temp(ptr noundef %1289, ptr noundef null) #17
  %1623 = call ptr @make_rename_temp(ptr noundef %1289, ptr noundef null) #17
  br label %1624

1624:                                             ; preds = %1621, %1538
  %1625 = phi ptr [ %1612, %1621 ], [ null, %1538 ]
  %1626 = phi ptr [ %1613, %1621 ], [ null, %1538 ]
  %1627 = phi ptr [ %1611, %1621 ], [ null, %1538 ]
  %1628 = phi ptr [ %1623, %1621 ], [ null, %1538 ]
  %1629 = phi ptr [ %1622, %1621 ], [ null, %1538 ]
  %1630 = icmp eq ptr %1625, null
  br i1 %1630, label %1631, label %1634

1631:                                             ; preds = %1624
  %1632 = call i32 @integer_nonzerop(ptr noundef nonnull %1547) #17
  %1633 = icmp eq i32 %1632, 0
  br i1 %1633, label %1667, label %1654

1634:                                             ; preds = %1624
  %1635 = getelementptr inbounds %struct.basic_block_def, ptr %1625, i64 0, i32 13
  %1636 = load i32, ptr %1635, align 8, !tbaa !78, !noalias !144
  %1637 = and i32 %1636, 512
  %1638 = icmp eq i32 %1637, 0
  br i1 %1638, label %1639, label %1645

1639:                                             ; preds = %1634
  %1640 = getelementptr inbounds %struct.basic_block_def, ptr %1625, i64 0, i32 7
  %1641 = load ptr, ptr %1640, align 8, !tbaa !50, !noalias !144
  %1642 = icmp eq ptr %1641, null
  br i1 %1642, label %1645, label %1643

1643:                                             ; preds = %1639
  %1644 = load ptr, ptr %1641, align 8, !tbaa !84, !noalias !144
  br label %1645

1645:                                             ; preds = %1643, %1639, %1634
  %1646 = phi ptr [ %1644, %1643 ], [ null, %1639 ], [ null, %1634 ]
  %1647 = icmp eq ptr %1646, null
  br i1 %1647, label %1651, label %1648

1648:                                             ; preds = %1645
  %1649 = getelementptr inbounds %struct.gimple_seq_d, ptr %1646, i64 0, i32 1
  %1650 = load ptr, ptr %1649, align 8, !tbaa !147, !noalias !144
  br label %1651

1651:                                             ; preds = %1648, %1645
  %1652 = phi ptr [ %1650, %1648 ], [ null, %1645 ]
  store ptr %1652, ptr %3, align 8, !tbaa.struct !70
  store ptr %1646, ptr %595, align 8, !tbaa.struct !137
  store ptr %1625, ptr %596, align 8, !tbaa.struct !138
  %1653 = call ptr @gimple_build_nop() #17
  call void @gsi_insert_after(ptr noundef nonnull %3, ptr noundef %1653, i32 noundef 0) #17
  br label %1654

1654:                                             ; preds = %1651, %1631
  %1655 = call ptr @gimplify_build2(ptr noundef nonnull %3, i32 noundef %783, ptr noundef %1289, ptr noundef %1374, ptr noundef %1375) #17
  %1656 = call ptr @gimplify_build2(ptr noundef nonnull %3, i32 noundef 65, ptr noundef %1289, ptr noundef %1374, ptr noundef %1655) #17
  %1657 = call ptr @gimplify_build2(ptr noundef nonnull %3, i32 noundef 63, ptr noundef %1289, ptr noundef %1656, ptr noundef %1375) #17
  %1658 = call ptr @gimplify_build2(ptr noundef nonnull %3, i32 noundef 65, ptr noundef %1289, ptr noundef %1365, ptr noundef %1655) #17
  %1659 = call ptr @gimplify_build2(ptr noundef nonnull %3, i32 noundef 63, ptr noundef %1289, ptr noundef %1658, ptr noundef %1366) #17
  %1660 = call ptr @gimplify_build2(ptr noundef nonnull %3, i32 noundef 65, ptr noundef %1289, ptr noundef %1366, ptr noundef %1655) #17
  %1661 = call ptr @gimplify_build2(ptr noundef nonnull %3, i32 noundef 64, ptr noundef %1289, ptr noundef %1660, ptr noundef %1365) #17
  %1662 = call ptr @gimplify_build2(ptr noundef nonnull %3, i32 noundef %783, ptr noundef %1289, ptr noundef %1659, ptr noundef %1657) #17
  %1663 = call ptr @gimplify_build2(ptr noundef nonnull %3, i32 noundef %783, ptr noundef %1289, ptr noundef %1661, ptr noundef %1657) #17
  br i1 %1630, label %1667, label %1664

1664:                                             ; preds = %1654
  %1665 = call ptr @gimple_build_assign_stat(ptr noundef %1629, ptr noundef %1662) #17
  call void @gsi_insert_before(ptr noundef nonnull %3, ptr noundef %1665, i32 noundef 1) #17
  %1666 = call ptr @gimple_build_assign_stat(ptr noundef %1628, ptr noundef %1663) #17
  call void @gsi_insert_before(ptr noundef nonnull %3, ptr noundef %1666, i32 noundef 1) #17
  call void @gsi_remove(ptr noundef nonnull %3, i8 noundef zeroext 1) #17
  br label %1667

1667:                                             ; preds = %1631, %1664, %1654
  %1668 = phi ptr [ %1662, %1664 ], [ %1662, %1654 ], [ null, %1631 ]
  %1669 = phi ptr [ %1663, %1664 ], [ %1663, %1654 ], [ null, %1631 ]
  %1670 = icmp eq ptr %1626, null
  br i1 %1670, label %1671, label %1674

1671:                                             ; preds = %1667
  %1672 = call i32 @integer_zerop(ptr noundef nonnull %1547) #17
  %1673 = icmp eq i32 %1672, 0
  br i1 %1673, label %1707, label %1694

1674:                                             ; preds = %1667
  %1675 = getelementptr inbounds %struct.basic_block_def, ptr %1626, i64 0, i32 13
  %1676 = load i32, ptr %1675, align 8, !tbaa !78, !noalias !148
  %1677 = and i32 %1676, 512
  %1678 = icmp eq i32 %1677, 0
  br i1 %1678, label %1679, label %1685

1679:                                             ; preds = %1674
  %1680 = getelementptr inbounds %struct.basic_block_def, ptr %1626, i64 0, i32 7
  %1681 = load ptr, ptr %1680, align 8, !tbaa !50, !noalias !148
  %1682 = icmp eq ptr %1681, null
  br i1 %1682, label %1685, label %1683

1683:                                             ; preds = %1679
  %1684 = load ptr, ptr %1681, align 8, !tbaa !84, !noalias !148
  br label %1685

1685:                                             ; preds = %1683, %1679, %1674
  %1686 = phi ptr [ %1684, %1683 ], [ null, %1679 ], [ null, %1674 ]
  %1687 = icmp eq ptr %1686, null
  br i1 %1687, label %1691, label %1688

1688:                                             ; preds = %1685
  %1689 = getelementptr inbounds %struct.gimple_seq_d, ptr %1686, i64 0, i32 1
  %1690 = load ptr, ptr %1689, align 8, !tbaa !147, !noalias !148
  br label %1691

1691:                                             ; preds = %1688, %1685
  %1692 = phi ptr [ %1690, %1688 ], [ null, %1685 ]
  store ptr %1692, ptr %3, align 8, !tbaa.struct !70
  store ptr %1686, ptr %595, align 8, !tbaa.struct !137
  store ptr %1626, ptr %596, align 8, !tbaa.struct !138
  %1693 = call ptr @gimple_build_nop() #17
  call void @gsi_insert_after(ptr noundef nonnull %3, ptr noundef %1693, i32 noundef 0) #17
  br label %1694

1694:                                             ; preds = %1691, %1671
  %1695 = call ptr @gimplify_build2(ptr noundef nonnull %3, i32 noundef %783, ptr noundef %1289, ptr noundef %1375, ptr noundef %1374) #17
  %1696 = call ptr @gimplify_build2(ptr noundef nonnull %3, i32 noundef 65, ptr noundef %1289, ptr noundef %1375, ptr noundef %1695) #17
  %1697 = call ptr @gimplify_build2(ptr noundef nonnull %3, i32 noundef 63, ptr noundef %1289, ptr noundef %1696, ptr noundef %1374) #17
  %1698 = call ptr @gimplify_build2(ptr noundef nonnull %3, i32 noundef 65, ptr noundef %1289, ptr noundef %1366, ptr noundef %1695) #17
  %1699 = call ptr @gimplify_build2(ptr noundef nonnull %3, i32 noundef 63, ptr noundef %1289, ptr noundef %1698, ptr noundef %1365) #17
  %1700 = call ptr @gimplify_build2(ptr noundef nonnull %3, i32 noundef 65, ptr noundef %1289, ptr noundef %1365, ptr noundef %1695) #17
  %1701 = call ptr @gimplify_build2(ptr noundef nonnull %3, i32 noundef 64, ptr noundef %1289, ptr noundef %1366, ptr noundef %1700) #17
  %1702 = call ptr @gimplify_build2(ptr noundef nonnull %3, i32 noundef %783, ptr noundef %1289, ptr noundef %1699, ptr noundef %1697) #17
  %1703 = call ptr @gimplify_build2(ptr noundef nonnull %3, i32 noundef %783, ptr noundef %1289, ptr noundef %1701, ptr noundef %1697) #17
  br i1 %1670, label %1707, label %1704

1704:                                             ; preds = %1694
  %1705 = call ptr @gimple_build_assign_stat(ptr noundef %1629, ptr noundef %1702) #17
  call void @gsi_insert_before(ptr noundef nonnull %3, ptr noundef %1705, i32 noundef 1) #17
  %1706 = call ptr @gimple_build_assign_stat(ptr noundef %1628, ptr noundef %1703) #17
  call void @gsi_insert_before(ptr noundef nonnull %3, ptr noundef %1706, i32 noundef 1) #17
  call void @gsi_remove(ptr noundef nonnull %3, i8 noundef zeroext 1) #17
  br label %1707

1707:                                             ; preds = %1671, %1704, %1694
  %1708 = phi ptr [ %1702, %1704 ], [ %1702, %1694 ], [ %1668, %1671 ]
  %1709 = phi ptr [ %1703, %1704 ], [ %1703, %1694 ], [ %1669, %1671 ]
  %1710 = icmp eq ptr %1627, null
  br i1 %1710, label %1729, label %1711

1711:                                             ; preds = %1707
  %1712 = getelementptr inbounds %struct.basic_block_def, ptr %1627, i64 0, i32 13
  %1713 = load i32, ptr %1712, align 8, !tbaa !78, !noalias !151
  %1714 = and i32 %1713, 512
  %1715 = icmp eq i32 %1714, 0
  br i1 %1715, label %1716, label %1722

1716:                                             ; preds = %1711
  %1717 = getelementptr inbounds %struct.basic_block_def, ptr %1627, i64 0, i32 7
  %1718 = load ptr, ptr %1717, align 8, !tbaa !50, !noalias !151
  %1719 = icmp eq ptr %1718, null
  br i1 %1719, label %1722, label %1720

1720:                                             ; preds = %1716
  %1721 = load ptr, ptr %1718, align 8, !tbaa !84, !noalias !151
  br label %1722

1722:                                             ; preds = %1720, %1716, %1711
  %1723 = phi ptr [ %1721, %1720 ], [ null, %1716 ], [ null, %1711 ]
  %1724 = icmp eq ptr %1723, null
  br i1 %1724, label %1727, label %1725

1725:                                             ; preds = %1722
  %1726 = load ptr, ptr %1723, align 8, !tbaa !86, !noalias !151
  br label %1727

1727:                                             ; preds = %1725, %1722
  %1728 = phi ptr [ %1726, %1725 ], [ null, %1722 ]
  store ptr %1728, ptr %3, align 8, !tbaa.struct !70
  store ptr %1723, ptr %595, align 8, !tbaa.struct !137
  store ptr %1627, ptr %596, align 8, !tbaa.struct !138
  br label %1729

1729:                                             ; preds = %1727, %1707
  %1730 = phi ptr [ %1628, %1727 ], [ %1709, %1707 ]
  %1731 = phi ptr [ %1629, %1727 ], [ %1708, %1707 ]
  call fastcc void @update_complex_assignment(ptr noundef nonnull %3, ptr noundef %1731, ptr noundef %1730)
  br label %1870

1732:                                             ; preds = %1519
  call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 1323, ptr noundef nonnull @.str.3) #17
  br label %1870

1733:                                             ; preds = %1500
  call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 1328, ptr noundef nonnull @.str.3) #17
  unreachable

1734:                                             ; preds = %1512, %1510, %1508, %1505, %1503
  %1735 = phi ptr [ %1513, %1512 ], [ %1511, %1510 ], [ %1365, %1508 ], [ %1366, %1505 ], [ %1504, %1503 ]
  %1736 = phi ptr [ %1514, %1512 ], [ %1365, %1510 ], [ %1509, %1508 ], [ %1507, %1505 ], [ %1366, %1503 ]
  call fastcc void @update_complex_assignment(ptr noundef nonnull %3, ptr noundef %1735, ptr noundef %1736)
  br label %1870

1737:                                             ; preds = %1403
  %1738 = call ptr @gimplify_build1(ptr noundef nonnull %3, i32 noundef 79, ptr noundef %1289, ptr noundef %1365) #17
  %1739 = call ptr @gimplify_build1(ptr noundef nonnull %3, i32 noundef 79, ptr noundef %1289, ptr noundef %1366) #17
  call fastcc void @update_complex_assignment(ptr noundef nonnull %3, ptr noundef %1738, ptr noundef %1739)
  br label %1870

1740:                                             ; preds = %1403
  %1741 = call ptr @gimplify_build1(ptr noundef nonnull %3, i32 noundef 79, ptr noundef %1289, ptr noundef %1366) #17
  call fastcc void @update_complex_assignment(ptr noundef nonnull %3, ptr noundef %1365, ptr noundef %1741)
  br label %1870

1742:                                             ; preds = %1403, %1403
  %1743 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !39
  %1744 = call ptr @gimplify_build2(ptr noundef nonnull %3, i32 noundef %783, ptr noundef %1743, ptr noundef %1365, ptr noundef %1374) #17
  %1745 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !39
  %1746 = call ptr @gimplify_build2(ptr noundef nonnull %3, i32 noundef %783, ptr noundef %1745, ptr noundef %1366, ptr noundef %1375) #17
  %1747 = icmp eq i32 %783, 101
  %1748 = select i1 %1747, i32 93, i32 94
  %1749 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !39
  %1750 = call ptr @gimplify_build2(ptr noundef nonnull %3, i32 noundef %1748, ptr noundef %1749, ptr noundef %1744, ptr noundef %1746) #17
  %1751 = load ptr, ptr %3, align 8
  %1752 = load ptr, ptr %1751, align 8, !tbaa !72
  %1753 = load i32, ptr %1752, align 8
  %1754 = and i32 %1753, 255
  %1755 = trunc i32 %1753 to i8
  switch i8 %1755, label %1861 [
    i8 9, label %1756
    i8 6, label %1795
    i8 1, label %1814
  ]

1756:                                             ; preds = %1742
  %1757 = add nsw i32 %1754, -1
  %1758 = icmp ult i32 %1757, 9
  call void @llvm.assume(i1 %1758)
  %1759 = zext nneg i32 %1754 to i64
  %1760 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %1759
  %1761 = load i32, ptr %1760, align 4, !tbaa !54
  %1762 = zext i32 %1761 to i64
  %1763 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %1762
  %1764 = load i64, ptr %1763, align 8, !tbaa !91
  %1765 = icmp eq i64 %1764, 0
  br i1 %1765, label %1766, label %1767

1766:                                             ; preds = %1756
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1622, ptr noundef nonnull @.str.3) #17
  br label %1767

1767:                                             ; preds = %1766, %1756
  %1768 = getelementptr inbounds i8, ptr %1752, i64 %1764
  %1769 = load ptr, ptr %1768, align 8, !tbaa !39
  %1770 = getelementptr inbounds %struct.tree_common, ptr %1769, i64 0, i32 2
  %1771 = load ptr, ptr %1770, align 8, !tbaa !50
  %1772 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %1771, ptr noundef %1750) #17
  %1773 = load i32, ptr %1752, align 8
  %1774 = and i32 %1773, 255
  %1775 = add nsw i32 %1774, -10
  %1776 = icmp ult i32 %1775, -9
  br i1 %1776, label %1781, label %1777

1777:                                             ; preds = %1767
  %1778 = getelementptr inbounds %struct.gimple_statement_base, ptr %1752, i64 0, i32 3
  %1779 = load i32, ptr %1778, align 4, !tbaa !50
  %1780 = icmp eq i32 %1779, 0
  br i1 %1780, label %1781, label %1782

1781:                                             ; preds = %1777, %1767
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1665, ptr noundef nonnull @.str.3) #17
  br label %1782

1782:                                             ; preds = %1781, %1777
  %1783 = load i32, ptr %1752, align 8
  %1784 = and i32 %1783, 255
  %1785 = zext nneg i32 %1784 to i64
  %1786 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %1785
  %1787 = load i32, ptr %1786, align 4, !tbaa !54
  %1788 = zext i32 %1787 to i64
  %1789 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %1788
  %1790 = load i64, ptr %1789, align 8, !tbaa !91
  %1791 = icmp eq i64 %1790, 0
  br i1 %1791, label %1792, label %1793

1792:                                             ; preds = %1782
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1622, ptr noundef nonnull @.str.3) #17
  br label %1793

1793:                                             ; preds = %1792, %1782
  %1794 = getelementptr inbounds i8, ptr %1752, i64 %1790
  store ptr %1772, ptr %1794, align 8, !tbaa !39
  br label %1862

1795:                                             ; preds = %1742
  %1796 = add nsw i32 %1754, -1
  %1797 = icmp ult i32 %1796, 9
  call void @llvm.assume(i1 %1797)
  %1798 = zext nneg i32 %1754 to i64
  %1799 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %1798
  %1800 = load i32, ptr %1799, align 4, !tbaa !54
  %1801 = zext i32 %1800 to i64
  %1802 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %1801
  %1803 = load i64, ptr %1802, align 8, !tbaa !91
  %1804 = icmp eq i64 %1803, 0
  br i1 %1804, label %1805, label %1806

1805:                                             ; preds = %1795
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1622, ptr noundef nonnull @.str.3) #17
  br label %1806

1806:                                             ; preds = %1805, %1795
  %1807 = getelementptr inbounds i8, ptr %1752, i64 %1803
  %1808 = load ptr, ptr %1807, align 8, !tbaa !39
  %1809 = getelementptr inbounds %struct.tree_common, ptr %1808, i64 0, i32 2
  %1810 = load ptr, ptr %1809, align 8, !tbaa !50
  %1811 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %1810, ptr noundef %1750) #17
  call void @gimple_assign_set_rhs_from_tree(ptr noundef nonnull %3, ptr noundef %1811) #17
  %1812 = load ptr, ptr %3, align 8
  %1813 = load ptr, ptr %1812, align 8, !tbaa !72
  br label %1862

1814:                                             ; preds = %1742
  %1815 = and i32 %1753, 65535
  %1816 = or disjoint i32 %1815, 6619136
  store i32 %1816, ptr %1752, align 8
  %1817 = add nsw i32 %1754, -10
  %1818 = icmp ult i32 %1817, -9
  br i1 %1818, label %1823, label %1819

1819:                                             ; preds = %1814
  %1820 = getelementptr inbounds %struct.gimple_statement_base, ptr %1752, i64 0, i32 3
  %1821 = load i32, ptr %1820, align 4, !tbaa !50
  %1822 = icmp eq i32 %1821, 0
  br i1 %1822, label %1823, label %1824

1823:                                             ; preds = %1819, %1814
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1665, ptr noundef nonnull @.str.3) #17
  br label %1824

1824:                                             ; preds = %1823, %1819
  %1825 = load i32, ptr %1752, align 8
  %1826 = and i32 %1825, 255
  %1827 = zext nneg i32 %1826 to i64
  %1828 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %1827
  %1829 = load i32, ptr %1828, align 4, !tbaa !54
  %1830 = zext i32 %1829 to i64
  %1831 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %1830
  %1832 = load i64, ptr %1831, align 8, !tbaa !91
  %1833 = icmp eq i64 %1832, 0
  br i1 %1833, label %1834, label %1835

1834:                                             ; preds = %1824
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1622, ptr noundef nonnull @.str.3) #17
  br label %1835

1835:                                             ; preds = %1834, %1824
  %1836 = getelementptr inbounds i8, ptr %1752, i64 %1832
  store ptr %1750, ptr %1836, align 8, !tbaa !39
  %1837 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 26), align 16, !tbaa !39
  %1838 = load i32, ptr %1752, align 8
  %1839 = and i32 %1838, 255
  %1840 = add nsw i32 %1839, -10
  %1841 = icmp ult i32 %1840, -9
  br i1 %1841, label %1846, label %1842

1842:                                             ; preds = %1835
  %1843 = getelementptr inbounds %struct.gimple_statement_base, ptr %1752, i64 0, i32 3
  %1844 = load i32, ptr %1843, align 4, !tbaa !50
  %1845 = icmp ugt i32 %1844, 1
  br i1 %1845, label %1847, label %1846

1846:                                             ; preds = %1842, %1835
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1665, ptr noundef nonnull @.str.3) #17
  br label %1847

1847:                                             ; preds = %1846, %1842
  %1848 = load i32, ptr %1752, align 8
  %1849 = and i32 %1848, 255
  %1850 = zext nneg i32 %1849 to i64
  %1851 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %1850
  %1852 = load i32, ptr %1851, align 4, !tbaa !54
  %1853 = zext i32 %1852 to i64
  %1854 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %1853
  %1855 = load i64, ptr %1854, align 8, !tbaa !91
  %1856 = icmp eq i64 %1855, 0
  br i1 %1856, label %1857, label %1858

1857:                                             ; preds = %1847
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1622, ptr noundef nonnull @.str.3) #17
  br label %1858

1858:                                             ; preds = %1857, %1847
  %1859 = getelementptr inbounds i8, ptr %1752, i64 %1855
  %1860 = getelementptr inbounds ptr, ptr %1859, i64 1
  store ptr %1837, ptr %1860, align 8, !tbaa !39
  br label %1862

1861:                                             ; preds = %1742
  call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 1402, ptr noundef nonnull @.str.3) #17
  br label %1862

1862:                                             ; preds = %1861, %1858, %1806, %1793
  %1863 = phi ptr [ %1752, %1861 ], [ %1752, %1858 ], [ %1813, %1806 ], [ %1752, %1793 ]
  %1864 = load i32, ptr %1863, align 8
  %1865 = and i32 %1864, 255
  %1866 = add nsw i32 %1865, -10
  %1867 = icmp ult i32 %1866, -9
  br i1 %1867, label %1870, label %1868

1868:                                             ; preds = %1862
  call void @gimple_set_modified(ptr noundef nonnull %1863, i8 noundef zeroext 1) #17
  call void @update_stmt_operands(ptr noundef nonnull %1863) #17
  br label %1870

1869:                                             ; preds = %1403
  call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 1563, ptr noundef nonnull @.str.3) #17
  br label %1870

1870:                                             ; preds = %1219, %805, %755, %1159, %1153, %1050, %1048, %1045, %963, %918, %785, %814, %1160, %1222, %1276, %1287, %1437, %1482, %1497, %1521, %1537, %1729, %1732, %1734, %1737, %1740, %1862, %1868, %1869
  %1871 = load ptr, ptr %3, align 8, !tbaa !154
  %1872 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %1871, i64 0, i32 2
  %1873 = load ptr, ptr %1872, align 8, !tbaa !75
  store ptr %1873, ptr %3, align 8, !tbaa !154
  %1874 = icmp eq ptr %1873, null
  br i1 %1874, label %1875, label %750, !llvm.loop !156

1875:                                             ; preds = %1870, %747, %597
  %1876 = getelementptr inbounds %struct.basic_block_def, ptr %598, i64 0, i32 6
  %1877 = load ptr, ptr %1876, align 8, !tbaa !64
  %1878 = load ptr, ptr @cfun, align 8, !tbaa !39
  %1879 = getelementptr inbounds %struct.function, ptr %1878, i64 0, i32 1
  %1880 = load ptr, ptr %1879, align 8, !tbaa !60
  %1881 = getelementptr inbounds %struct.control_flow_graph, ptr %1880, i64 0, i32 1
  %1882 = load ptr, ptr %1881, align 8, !tbaa !66
  %1883 = icmp eq ptr %1877, %1882
  br i1 %1883, label %1884, label %597, !llvm.loop !157

1884:                                             ; preds = %1875, %579
  call void @gsi_commit_edge_inserts() #17
  %1885 = load ptr, ptr @complex_variable_components, align 8, !tbaa !39
  call void @htab_delete(ptr noundef %1885) #17
  %1886 = load ptr, ptr @complex_ssa_name_components, align 8, !tbaa !39
  %1887 = icmp eq ptr %1886, null
  br i1 %1887, label %1889, label %1888

1888:                                             ; preds = %1884
  call void @free(ptr noundef %1886)
  br label %1889

1889:                                             ; preds = %1884, %1888
  store ptr null, ptr @complex_ssa_name_components, align 8, !tbaa !39
  %1890 = load ptr, ptr @complex_lattice_values, align 8, !tbaa !39
  %1891 = icmp eq ptr %1890, null
  br i1 %1891, label %1893, label %1892

1892:                                             ; preds = %1889
  call void @free(ptr noundef %1890)
  br label %1893

1893:                                             ; preds = %1889, %1892
  store ptr null, ptr @complex_lattice_values, align 8, !tbaa !39
  br label %1894

1894:                                             ; preds = %371, %1893
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #17
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define internal zeroext i8 @gate_no_optimization() #10 !prof !58 !PGOFuncName !158 {
  %1 = load ptr, ptr @cfun, align 8, !tbaa !39
  %2 = getelementptr inbounds %struct.function, ptr %1, i64 0, i32 17
  %3 = load i32, ptr %2, align 8, !tbaa !159
  %4 = and i32 %3, 1024
  %5 = icmp eq i32 %4, 0
  %6 = zext i1 %5 to i8
  ret i8 %6
}

declare void @ssa_propagate(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal i32 @complex_visit_stmt(ptr noundef %0, ptr nocapture readnone %1, ptr nocapture noundef writeonly %2) #11 !prof !38 {
  %4 = tail call ptr @gimple_get_lhs(ptr noundef %0) #17
  %5 = icmp eq ptr %4, null
  br i1 %5, label %235, label %6

6:                                                ; preds = %3
  %7 = load i64, ptr %4, align 8
  %8 = and i64 %7, 65535
  %9 = icmp eq i64 %8, 141
  br i1 %9, label %11, label %10

10:                                               ; preds = %6
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 313, ptr noundef nonnull @.str.3) #17
  br label %11

11:                                               ; preds = %6, %10
  %12 = getelementptr inbounds %struct.tree_common, ptr %4, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !50
  %14 = load i64, ptr %13, align 8
  %15 = and i64 %14, 65535
  %16 = icmp eq i64 %15, 13
  br i1 %16, label %18, label %17

17:                                               ; preds = %11
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 314, ptr noundef nonnull @.str.3) #17
  br label %18

18:                                               ; preds = %11, %17
  store ptr %4, ptr %2, align 8, !tbaa !39
  %19 = getelementptr inbounds %struct.tree_ssa_name, ptr %4, i64 0, i32 3
  %20 = load i32, ptr %19, align 8, !tbaa !50
  %21 = load ptr, ptr @complex_lattice_values, align 8
  %22 = zext i32 %20 to i64
  %23 = getelementptr inbounds %struct.VEC_complex_lattice_t_base, ptr %21, i64 0, i32 2, i64 %22
  %24 = load i32, ptr %23, align 4, !tbaa !54
  %25 = load i32, ptr %0, align 8
  %26 = trunc i32 %25 to i8
  switch i8 %26, label %29 [
    i8 6, label %27
    i8 1, label %27
    i8 8, label %30
  ]

27:                                               ; preds = %18, %18
  %28 = lshr i32 %25, 16
  br label %30

29:                                               ; preds = %18
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1446, ptr noundef nonnull @.str.3) #17
  br label %30

30:                                               ; preds = %18, %27, %29
  %31 = phi i32 [ %28, %27 ], [ 0, %29 ], [ 59, %18 ]
  %32 = trunc i32 %31 to i16
  switch i16 %32, label %227 [
    i16 141, label %33
    i16 26, label %33
    i16 123, label %54
    i16 63, label %102
    i16 64, label %102
    i16 65, label %148
    i16 75, label %148
    i16 67, label %148
    i16 68, label %148
    i16 69, label %148
    i16 70, label %148
    i16 79, label %206
    i16 124, label %206
  ]

33:                                               ; preds = %30, %30
  %34 = load i32, ptr %0, align 8
  %35 = and i32 %34, 255
  %36 = add nsw i32 %35, -10
  %37 = icmp ult i32 %36, -9
  br i1 %37, label %51, label %38

38:                                               ; preds = %33
  %39 = zext nneg i32 %35 to i64
  %40 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %39
  %41 = load i32, ptr %40, align 4, !tbaa !54
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %42
  %44 = load i64, ptr %43, align 8, !tbaa !91
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %38
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1622, ptr noundef nonnull @.str.3) #17
  br label %47

47:                                               ; preds = %46, %38
  %48 = getelementptr inbounds i8, ptr %0, i64 %44
  %49 = getelementptr inbounds ptr, ptr %48, i64 1
  %50 = load ptr, ptr %49, align 8, !tbaa !39
  br label %51

51:                                               ; preds = %33, %47
  %52 = phi ptr [ %50, %47 ], [ null, %33 ]
  %53 = tail call fastcc i32 @find_lattice_value(ptr noundef %52)
  br label %227

54:                                               ; preds = %30
  %55 = load i32, ptr %0, align 8
  %56 = and i32 %55, 255
  %57 = add nsw i32 %56, -10
  %58 = icmp ult i32 %57, -9
  br i1 %58, label %72, label %59

59:                                               ; preds = %54
  %60 = zext nneg i32 %56 to i64
  %61 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %60
  %62 = load i32, ptr %61, align 4, !tbaa !54
  %63 = zext i32 %62 to i64
  %64 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %63
  %65 = load i64, ptr %64, align 8, !tbaa !91
  %66 = icmp eq i64 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %59
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1622, ptr noundef nonnull @.str.3) #17
  br label %68

68:                                               ; preds = %67, %59
  %69 = getelementptr inbounds i8, ptr %0, i64 %65
  %70 = getelementptr inbounds ptr, ptr %69, i64 1
  %71 = load ptr, ptr %70, align 8, !tbaa !39
  br label %72

72:                                               ; preds = %54, %68
  %73 = phi ptr [ %71, %68 ], [ null, %54 ]
  %74 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 3
  %75 = load i32, ptr %74, align 4, !tbaa !50
  %76 = icmp ugt i32 %75, 2
  br i1 %76, label %77, label %95

77:                                               ; preds = %72
  %78 = load i32, ptr %0, align 8
  %79 = and i32 %78, 255
  %80 = add nsw i32 %79, -10
  %81 = icmp ult i32 %80, -9
  br i1 %81, label %95, label %82

82:                                               ; preds = %77
  %83 = zext nneg i32 %79 to i64
  %84 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %83
  %85 = load i32, ptr %84, align 4, !tbaa !54
  %86 = zext i32 %85 to i64
  %87 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %86
  %88 = load i64, ptr %87, align 8, !tbaa !91
  %89 = icmp eq i64 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %82
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1622, ptr noundef nonnull @.str.3) #17
  br label %91

91:                                               ; preds = %90, %82
  %92 = getelementptr inbounds i8, ptr %0, i64 %88
  %93 = getelementptr inbounds ptr, ptr %92, i64 2
  %94 = load ptr, ptr %93, align 8, !tbaa !39
  br label %95

95:                                               ; preds = %72, %77, %91
  %96 = phi ptr [ null, %72 ], [ %94, %91 ], [ null, %77 ]
  %97 = tail call fastcc i32 @some_nonzerop(ptr noundef %73), !range !160
  %98 = tail call fastcc i32 @some_nonzerop(ptr noundef %96), !range !160
  %99 = shl nuw nsw i32 %98, 1
  %100 = or disjoint i32 %99, %97
  %101 = tail call i32 @llvm.umax.i32(i32 %100, i32 1)
  br label %227

102:                                              ; preds = %30, %30
  %103 = load i32, ptr %0, align 8
  %104 = and i32 %103, 255
  %105 = add nsw i32 %104, -10
  %106 = icmp ult i32 %105, -9
  br i1 %106, label %120, label %107

107:                                              ; preds = %102
  %108 = zext nneg i32 %104 to i64
  %109 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %108
  %110 = load i32, ptr %109, align 4, !tbaa !54
  %111 = zext i32 %110 to i64
  %112 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %111
  %113 = load i64, ptr %112, align 8, !tbaa !91
  %114 = icmp eq i64 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %107
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1622, ptr noundef nonnull @.str.3) #17
  br label %116

116:                                              ; preds = %115, %107
  %117 = getelementptr inbounds i8, ptr %0, i64 %113
  %118 = getelementptr inbounds ptr, ptr %117, i64 1
  %119 = load ptr, ptr %118, align 8, !tbaa !39
  br label %120

120:                                              ; preds = %102, %116
  %121 = phi ptr [ %119, %116 ], [ null, %102 ]
  %122 = tail call fastcc i32 @find_lattice_value(ptr noundef %121)
  %123 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 3
  %124 = load i32, ptr %123, align 4, !tbaa !50
  %125 = icmp ugt i32 %124, 2
  br i1 %125, label %126, label %144

126:                                              ; preds = %120
  %127 = load i32, ptr %0, align 8
  %128 = and i32 %127, 255
  %129 = add nsw i32 %128, -10
  %130 = icmp ult i32 %129, -9
  br i1 %130, label %144, label %131

131:                                              ; preds = %126
  %132 = zext nneg i32 %128 to i64
  %133 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %132
  %134 = load i32, ptr %133, align 4, !tbaa !54
  %135 = zext i32 %134 to i64
  %136 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %135
  %137 = load i64, ptr %136, align 8, !tbaa !91
  %138 = icmp eq i64 %137, 0
  br i1 %138, label %139, label %140

139:                                              ; preds = %131
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1622, ptr noundef nonnull @.str.3) #17
  br label %140

140:                                              ; preds = %139, %131
  %141 = getelementptr inbounds i8, ptr %0, i64 %137
  %142 = getelementptr inbounds ptr, ptr %141, i64 2
  %143 = load ptr, ptr %142, align 8, !tbaa !39
  br label %144

144:                                              ; preds = %120, %126, %140
  %145 = phi ptr [ null, %120 ], [ %143, %140 ], [ null, %126 ]
  %146 = tail call fastcc i32 @find_lattice_value(ptr noundef %145)
  %147 = or i32 %146, %122
  br label %227

148:                                              ; preds = %30, %30, %30, %30, %30, %30
  %149 = load i32, ptr %0, align 8
  %150 = and i32 %149, 255
  %151 = add nsw i32 %150, -10
  %152 = icmp ult i32 %151, -9
  br i1 %152, label %166, label %153

153:                                              ; preds = %148
  %154 = zext nneg i32 %150 to i64
  %155 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %154
  %156 = load i32, ptr %155, align 4, !tbaa !54
  %157 = zext i32 %156 to i64
  %158 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %157
  %159 = load i64, ptr %158, align 8, !tbaa !91
  %160 = icmp eq i64 %159, 0
  br i1 %160, label %161, label %162

161:                                              ; preds = %153
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1622, ptr noundef nonnull @.str.3) #17
  br label %162

162:                                              ; preds = %161, %153
  %163 = getelementptr inbounds i8, ptr %0, i64 %159
  %164 = getelementptr inbounds ptr, ptr %163, i64 1
  %165 = load ptr, ptr %164, align 8, !tbaa !39
  br label %166

166:                                              ; preds = %148, %162
  %167 = phi ptr [ %165, %162 ], [ null, %148 ]
  %168 = tail call fastcc i32 @find_lattice_value(ptr noundef %167)
  %169 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 3
  %170 = load i32, ptr %169, align 4, !tbaa !50
  %171 = icmp ugt i32 %170, 2
  br i1 %171, label %172, label %190

172:                                              ; preds = %166
  %173 = load i32, ptr %0, align 8
  %174 = and i32 %173, 255
  %175 = add nsw i32 %174, -10
  %176 = icmp ult i32 %175, -9
  br i1 %176, label %190, label %177

177:                                              ; preds = %172
  %178 = zext nneg i32 %174 to i64
  %179 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %178
  %180 = load i32, ptr %179, align 4, !tbaa !54
  %181 = zext i32 %180 to i64
  %182 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %181
  %183 = load i64, ptr %182, align 8, !tbaa !91
  %184 = icmp eq i64 %183, 0
  br i1 %184, label %185, label %186

185:                                              ; preds = %177
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1622, ptr noundef nonnull @.str.3) #17
  br label %186

186:                                              ; preds = %185, %177
  %187 = getelementptr inbounds i8, ptr %0, i64 %183
  %188 = getelementptr inbounds ptr, ptr %187, i64 2
  %189 = load ptr, ptr %188, align 8, !tbaa !39
  br label %190

190:                                              ; preds = %166, %172, %186
  %191 = phi ptr [ null, %166 ], [ %189, %186 ], [ null, %172 ]
  %192 = tail call fastcc i32 @find_lattice_value(ptr noundef %191)
  %193 = icmp eq i32 %168, 3
  %194 = icmp eq i32 %192, 3
  %195 = select i1 %193, i1 true, i1 %194
  br i1 %195, label %227, label %196

196:                                              ; preds = %190
  %197 = icmp eq i32 %168, 0
  br i1 %197, label %227, label %198

198:                                              ; preds = %196
  %199 = icmp eq i32 %192, 0
  br i1 %199, label %227, label %200

200:                                              ; preds = %198
  %201 = add nsw i32 %168, -1
  %202 = add nsw i32 %192, -1
  %203 = xor i32 %202, %201
  %204 = add nsw i32 %203, 1
  %205 = or i32 %204, %24
  br label %227

206:                                              ; preds = %30, %30
  %207 = load i32, ptr %0, align 8
  %208 = and i32 %207, 255
  %209 = add nsw i32 %208, -10
  %210 = icmp ult i32 %209, -9
  br i1 %210, label %224, label %211

211:                                              ; preds = %206
  %212 = zext nneg i32 %208 to i64
  %213 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %212
  %214 = load i32, ptr %213, align 4, !tbaa !54
  %215 = zext i32 %214 to i64
  %216 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %215
  %217 = load i64, ptr %216, align 8, !tbaa !91
  %218 = icmp eq i64 %217, 0
  br i1 %218, label %219, label %220

219:                                              ; preds = %211
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1622, ptr noundef nonnull @.str.3) #17
  br label %220

220:                                              ; preds = %219, %211
  %221 = getelementptr inbounds i8, ptr %0, i64 %217
  %222 = getelementptr inbounds ptr, ptr %221, i64 1
  %223 = load ptr, ptr %222, align 8, !tbaa !39
  br label %224

224:                                              ; preds = %206, %220
  %225 = phi ptr [ %223, %220 ], [ null, %206 ]
  %226 = tail call fastcc i32 @find_lattice_value(ptr noundef %225)
  br label %227

227:                                              ; preds = %30, %198, %196, %190, %200, %224, %144, %95, %51
  %228 = phi i32 [ %226, %224 ], [ %205, %200 ], [ %147, %144 ], [ %101, %95 ], [ %53, %51 ], [ 3, %190 ], [ %192, %196 ], [ %168, %198 ], [ 3, %30 ]
  %229 = icmp eq i32 %228, %24
  br i1 %229, label %235, label %230

230:                                              ; preds = %227
  %231 = load ptr, ptr @complex_lattice_values, align 8
  %232 = getelementptr inbounds %struct.VEC_complex_lattice_t_base, ptr %231, i64 0, i32 2, i64 %22
  store i32 %228, ptr %232, align 4, !tbaa !54
  %233 = icmp eq i32 %228, 3
  %234 = select i1 %233, i32 2, i32 1
  br label %235

235:                                              ; preds = %227, %3, %230
  %236 = phi i32 [ %234, %230 ], [ 2, %3 ], [ 0, %227 ]
  ret i32 %236
}

; Function Attrs: cold nounwind uwtable
define internal i32 @complex_visit_phi(ptr nocapture noundef readonly %0) #11 !prof !38 {
  %2 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !50
  %4 = getelementptr inbounds %struct.tree_common, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !50
  %6 = load i64, ptr %5, align 8
  %7 = and i64 %6, 65535
  %8 = icmp eq i64 %7, 13
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 405, ptr noundef nonnull @.str.3) #17
  br label %10

10:                                               ; preds = %1, %9
  %11 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 2
  %12 = load i32, ptr %11, align 4, !tbaa !50
  %13 = add i32 %12, -1
  %14 = icmp sgt i32 %13, -1
  br i1 %14, label %15, label %33

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 1
  %17 = zext nneg i32 %13 to i64
  br label %18

18:                                               ; preds = %15, %25
  %19 = phi i64 [ %17, %15 ], [ %31, %25 ]
  %20 = phi i32 [ 0, %15 ], [ %30, %25 ]
  %21 = load i32, ptr %16, align 8, !tbaa !50
  %22 = zext i32 %21 to i64
  %23 = icmp ugt i64 %19, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %18
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 3103, ptr noundef nonnull @.str.3) #17
  br label %25

25:                                               ; preds = %18, %24
  %26 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 4, i64 %19, i32 0, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !128
  %28 = load ptr, ptr %27, align 8, !tbaa !39
  %29 = tail call fastcc i32 @find_lattice_value(ptr noundef %28)
  %30 = or i32 %29, %20
  %31 = add nsw i64 %19, -1
  %32 = icmp sgt i64 %19, 0
  br i1 %32, label %18, label %33, !llvm.loop !161

33:                                               ; preds = %25, %10
  %34 = phi i32 [ 0, %10 ], [ %30, %25 ]
  %35 = getelementptr inbounds %struct.tree_ssa_name, ptr %3, i64 0, i32 3
  %36 = load i32, ptr %35, align 8, !tbaa !50
  %37 = load ptr, ptr @complex_lattice_values, align 8
  %38 = zext i32 %36 to i64
  %39 = getelementptr inbounds %struct.VEC_complex_lattice_t_base, ptr %37, i64 0, i32 2, i64 %38
  %40 = load i32, ptr %39, align 4, !tbaa !54
  %41 = icmp eq i32 %34, %40
  br i1 %41, label %45, label %42

42:                                               ; preds = %33
  store i32 %34, ptr %39, align 4, !tbaa !54
  %43 = icmp eq i32 %34, 3
  %44 = select i1 %43, i32 2, i32 1
  br label %45

45:                                               ; preds = %33, %42
  %46 = phi i32 [ %44, %42 ], [ 0, %33 ]
  ret i32 %46
}

declare ptr @htab_create(i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @int_tree_map_hash(ptr noundef) #3

declare i32 @int_tree_map_eq(ptr noundef, ptr noundef) #3

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) #12

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #13

declare void @gsi_commit_edge_inserts() local_unnamed_addr #3

declare void @htab_delete(ptr noundef) local_unnamed_addr #3

declare void @gsi_start_phis(ptr dead_on_unwind writable sret(%struct.gimple_stmt_iterator) align 8, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @stmt_ends_bb_p(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @ssa_undefined_value_p(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @is_gimple_reg(ptr noundef) local_unnamed_addr #3

declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @vec_heap_o_reserve_exact(ptr noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #14

declare ptr @gimple_default_def(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @gimple_get_lhs(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc i32 @find_lattice_value(ptr nocapture noundef readonly %0) unnamed_addr #11 !prof !38 {
  %2 = load i64, ptr %0, align 8
  %3 = trunc i64 %2 to i16
  switch i16 %3, label %21 [
    i16 141, label %4
    i16 26, label %11
  ]

4:                                                ; preds = %1
  %5 = load ptr, ptr @complex_lattice_values, align 8
  %6 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !50
  %8 = zext i32 %7 to i64
  %9 = getelementptr inbounds %struct.VEC_complex_lattice_t_base, ptr %5, i64 0, i32 2, i64 %8
  %10 = load i32, ptr %9, align 4, !tbaa !54
  br label %22

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.tree_complex, ptr %0, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !50
  %14 = getelementptr inbounds %struct.tree_complex, ptr %0, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !50
  %16 = tail call fastcc i32 @some_nonzerop(ptr noundef %13), !range !160
  %17 = tail call fastcc i32 @some_nonzerop(ptr noundef %15), !range !160
  %18 = shl nuw nsw i32 %17, 1
  %19 = or disjoint i32 %18, %16
  %20 = tail call i32 @llvm.umax.i32(i32 %19, i32 1)
  br label %22

21:                                               ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 158, ptr noundef nonnull @.str.3) #17
  unreachable

22:                                               ; preds = %11, %4
  %23 = phi i32 [ %20, %11 ], [ %10, %4 ]
  ret i32 %23
}

; Function Attrs: cold nounwind uwtable
define internal fastcc i32 @some_nonzerop(ptr noundef %0) unnamed_addr #11 !prof !38 {
  %2 = load i64, ptr %0, align 8
  %3 = and i64 %2, 65535
  %4 = icmp ne i64 %3, 24
  %5 = load i32, ptr @flag_signed_zeros, align 4
  %6 = icmp ne i32 %5, 0
  %7 = select i1 %4, i1 true, i1 %6
  br i1 %7, label %13, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.tree_real_cst, ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !50
  %11 = tail call zeroext i8 @real_identical(ptr noundef %10, ptr noundef nonnull @dconst0) #17
  %12 = zext i8 %11 to i32
  br label %19

13:                                               ; preds = %1
  %14 = trunc i64 %2 to i16
  switch i16 %14, label %19 [
    i16 25, label %15
    i16 23, label %17
  ]

15:                                               ; preds = %13
  %16 = tail call i32 @fixed_zerop(ptr noundef nonnull %0) #17
  br label %19

17:                                               ; preds = %13
  %18 = tail call i32 @integer_zerop(ptr noundef nonnull %0) #17
  br label %19

19:                                               ; preds = %13, %15, %17, %8
  %20 = phi i32 [ %16, %15 ], [ %18, %17 ], [ %12, %8 ], [ 0, %13 ]
  %21 = icmp eq i32 %20, 0
  %22 = zext i1 %21 to i32
  ret i32 %22
}

declare zeroext i8 @real_identical(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @fixed_zerop(ptr noundef) local_unnamed_addr #3

declare i32 @integer_zerop(ptr noundef) local_unnamed_addr #3

declare ptr @vec_heap_p_reserve_exact(ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @build1_stat(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc void @update_complex_components_on_edge(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr noundef %3) unnamed_addr #11 !prof !38 {
  %5 = tail call fastcc ptr @set_component_ssa_name(ptr noundef %1, i8 noundef zeroext 0, ptr noundef %2)
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %4
  tail call void @gsi_insert_seq_on_edge(ptr noundef %0, ptr noundef nonnull %5) #17
  br label %8

8:                                                ; preds = %7, %4
  %9 = tail call fastcc ptr @set_component_ssa_name(ptr noundef %1, i8 noundef zeroext 1, ptr noundef %3)
  %10 = icmp eq ptr %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %8
  tail call void @gsi_insert_seq_on_edge(ptr noundef %0, ptr noundef nonnull %9) #17
  br label %12

12:                                               ; preds = %11, %8
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @set_component_ssa_name(ptr nocapture noundef readonly %0, i8 noundef zeroext %1, ptr noundef %2) unnamed_addr #11 !prof !38 {
  %4 = alloca ptr, align 8
  %5 = tail call fastcc i32 @find_lattice_value(ptr noundef %0)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #17
  %6 = icmp eq i8 %1, 0
  %7 = select i1 %6, i32 2, i32 1
  %8 = icmp eq i32 %5, %7
  br i1 %8, label %69, label %9

9:                                                ; preds = %3
  %10 = zext nneg i8 %1 to i32
  %11 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 3
  %12 = load i32, ptr %11, align 8, !tbaa !50
  %13 = shl i32 %12, 1
  %14 = add i32 %13, %10
  %15 = load ptr, ptr @complex_ssa_name_components, align 8
  %16 = zext i32 %14 to i64
  %17 = getelementptr inbounds %struct.VEC_tree_base, ptr %15, i64 0, i32 2, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !39
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %59

20:                                               ; preds = %9
  %21 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef %2) #17
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %30, label %23

23:                                               ; preds = %20
  %24 = load i64, ptr %0, align 8
  %25 = and i64 %24, 4194304
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %23
  %28 = load ptr, ptr @complex_ssa_name_components, align 8
  %29 = getelementptr inbounds %struct.VEC_tree_base, ptr %28, i64 0, i32 2, i64 %16
  store ptr %2, ptr %29, align 8, !tbaa !39
  br label %69

30:                                               ; preds = %23, %20
  %31 = load i64, ptr %2, align 8
  %32 = and i64 %31, 65535
  %33 = icmp eq i64 %32, 141
  br i1 %33, label %34, label %57

34:                                               ; preds = %30
  %35 = load i64, ptr %0, align 8
  %36 = and i64 %35, 4194304
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %57

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.tree_ssa_name, ptr %2, i64 0, i32 1
  %40 = load ptr, ptr %39, align 8, !tbaa !50
  %41 = getelementptr inbounds %struct.tree_decl_common, ptr %40, i64 0, i32 2
  %42 = load i64, ptr %41, align 8
  %43 = and i64 %42, 1024
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %54, label %45

45:                                               ; preds = %38
  %46 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 1
  %47 = load ptr, ptr %46, align 8, !tbaa !50
  %48 = getelementptr inbounds %struct.tree_decl_common, ptr %47, i64 0, i32 2
  %49 = load i64, ptr %48, align 8
  %50 = and i64 %49, 1024
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %45
  %53 = tail call fastcc ptr @get_component_var(ptr noundef %47, i8 noundef zeroext %1)
  tail call void @replace_ssa_name_symbol(ptr noundef nonnull %2, ptr noundef %53) #17
  br label %54

54:                                               ; preds = %52, %45, %38
  %55 = load ptr, ptr @complex_ssa_name_components, align 8
  %56 = getelementptr inbounds %struct.VEC_tree_base, ptr %55, i64 0, i32 2, i64 %16
  store ptr %2, ptr %56, align 8, !tbaa !39
  br label %69

57:                                               ; preds = %34, %30
  %58 = tail call fastcc ptr @get_component_ssa_name(ptr noundef %0, i8 noundef zeroext %1)
  br label %59

59:                                               ; preds = %9, %57
  %60 = phi ptr [ %18, %9 ], [ %58, %57 ]
  store ptr null, ptr %4, align 8, !tbaa !39
  %61 = call ptr @force_gimple_operand(ptr noundef %2, ptr noundef nonnull %4, i8 noundef zeroext 0, ptr noundef null) #17
  %62 = call ptr @gimple_build_assign_stat(ptr noundef %60, ptr noundef %61) #17
  call void @gimple_seq_add_stmt(ptr noundef nonnull %4, ptr noundef %62) #17
  %63 = getelementptr inbounds %struct.tree_ssa_name, ptr %60, i64 0, i32 2
  %64 = load ptr, ptr %63, align 8, !tbaa !50
  %65 = icmp eq ptr %64, %62
  br i1 %65, label %67, label %66

66:                                               ; preds = %59
  call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 578, ptr noundef nonnull @.str.3) #17
  br label %67

67:                                               ; preds = %59, %66
  %68 = load ptr, ptr %4, align 8, !tbaa !39
  br label %69

69:                                               ; preds = %3, %67, %54, %27
  %70 = phi ptr [ %68, %67 ], [ null, %54 ], [ null, %27 ], [ null, %3 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #17
  ret ptr %70
}

declare void @gsi_insert_seq_on_edge(ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @is_gimple_min_invariant(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @get_component_var(ptr noundef %0, i8 noundef zeroext %1) unnamed_addr #11 !prof !38 {
  %3 = alloca %struct.int_tree_map, align 8
  %4 = getelementptr inbounds %struct.tree_decl_minimal, ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !50
  %6 = shl i32 %5, 1
  %7 = zext nneg i8 %1 to i32
  %8 = add i32 %6, %7
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #17
  store i32 %8, ptr %3, align 8, !tbaa !162
  %9 = load ptr, ptr @complex_variable_components, align 8, !tbaa !39
  %10 = call ptr @htab_find_with_hash(ptr noundef %9, ptr noundef nonnull %3, i32 noundef %8) #17
  %11 = icmp eq ptr %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.int_tree_map, ptr %10, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !164
  br label %15

15:                                               ; preds = %2, %12
  %16 = phi ptr [ %14, %12 ], [ null, %2 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #17
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %32

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !50
  %21 = getelementptr inbounds %struct.tree_common, ptr %20, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !50
  %23 = icmp eq i8 %1, 0
  %24 = select i1 %23, ptr @.str.7, ptr @.str.6
  %25 = select i1 %23, ptr @.str.9, ptr @.str.8
  %26 = select i1 %23, i32 43, i32 44
  %27 = call fastcc ptr @create_one_component_var(ptr noundef %22, ptr noundef %0, ptr noundef nonnull %24, ptr noundef nonnull %25, i32 noundef %26)
  %28 = call ptr @xmalloc(i64 noundef 16) #17
  store i32 %8, ptr %28, align 8, !tbaa !162
  %29 = getelementptr inbounds %struct.int_tree_map, ptr %28, i64 0, i32 1
  store ptr %27, ptr %29, align 8, !tbaa !164
  %30 = load ptr, ptr @complex_variable_components, align 8, !tbaa !39
  %31 = call ptr @htab_find_slot_with_hash(ptr noundef %30, ptr noundef nonnull %28, i32 noundef %8, i32 noundef 1) #17
  store ptr %28, ptr %31, align 8, !tbaa !39
  br label %32

32:                                               ; preds = %18, %15
  %33 = phi ptr [ %27, %18 ], [ %16, %15 ]
  ret ptr %33
}

declare void @replace_ssa_name_symbol(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @get_component_ssa_name(ptr nocapture noundef readonly %0, i8 noundef zeroext %1) unnamed_addr #11 !prof !38 {
  %3 = tail call fastcc i32 @find_lattice_value(ptr noundef %0)
  %4 = icmp eq i8 %1, 0
  %5 = select i1 %4, i32 2, i32 1
  %6 = icmp eq i32 %3, %5
  br i1 %6, label %7, label %19

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !50
  %10 = getelementptr inbounds %struct.tree_common, ptr %9, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !50
  %12 = load i64, ptr %11, align 8
  %13 = and i64 %12, 65535
  %14 = icmp eq i64 %13, 9
  br i1 %14, label %15, label %17

15:                                               ; preds = %7
  %16 = tail call ptr @build_real(ptr noundef nonnull %11, ptr noundef nonnull byval(%struct.real_value) align 8 @dconst0) #17
  br label %58

17:                                               ; preds = %7
  %18 = tail call ptr @build_int_cst(ptr noundef nonnull %11, i64 noundef 0) #17
  br label %58

19:                                               ; preds = %2
  %20 = zext nneg i8 %1 to i32
  %21 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 3
  %22 = load i32, ptr %21, align 8, !tbaa !50
  %23 = shl i32 %22, 1
  %24 = add i32 %23, %20
  %25 = load ptr, ptr @complex_ssa_name_components, align 8
  %26 = zext i32 %24 to i64
  %27 = getelementptr inbounds %struct.VEC_tree_base, ptr %25, i64 0, i32 2, i64 %26
  %28 = load ptr, ptr %27, align 8, !tbaa !39
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %58

30:                                               ; preds = %19
  %31 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !50
  %33 = tail call fastcc ptr @get_component_var(ptr noundef %32, i8 noundef zeroext %1)
  %34 = load ptr, ptr @cfun, align 8, !tbaa !39
  %35 = tail call ptr @make_ssa_name_fn(ptr noundef %34, ptr noundef %33, ptr noundef null) #17
  %36 = load i64, ptr %0, align 8
  %37 = and i64 %36, 4194304
  %38 = load i64, ptr %35, align 8
  %39 = and i64 %38, -4194305
  %40 = or disjoint i64 %39, %37
  store i64 %40, ptr %35, align 8
  %41 = load ptr, ptr %31, align 8, !tbaa !50
  %42 = load i64, ptr %41, align 8
  %43 = and i64 %42, 65535
  %44 = icmp eq i64 %43, 32
  br i1 %44, label %45, label %55

45:                                               ; preds = %30
  %46 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 2
  %47 = load ptr, ptr %46, align 8, !tbaa !50
  %48 = load i32, ptr %47, align 8
  %49 = and i32 %48, 255
  %50 = icmp eq i32 %49, 18
  br i1 %50, label %51, label %55

51:                                               ; preds = %45
  %52 = getelementptr inbounds %struct.tree_ssa_name, ptr %35, i64 0, i32 2
  store ptr %47, ptr %52, align 8, !tbaa !50
  %53 = getelementptr inbounds %struct.tree_ssa_name, ptr %35, i64 0, i32 1
  %54 = load ptr, ptr %53, align 8, !tbaa !50
  tail call void @set_default_def(ptr noundef %54, ptr noundef nonnull %35) #17
  br label %55

55:                                               ; preds = %51, %45, %30
  %56 = load ptr, ptr @complex_ssa_name_components, align 8
  %57 = getelementptr inbounds %struct.VEC_tree_base, ptr %56, i64 0, i32 2, i64 %26
  store ptr %35, ptr %57, align 8, !tbaa !39
  br label %58

58:                                               ; preds = %19, %55, %15, %17
  %59 = phi ptr [ %16, %15 ], [ %18, %17 ], [ %35, %55 ], [ %28, %19 ]
  ret ptr %59
}

declare ptr @force_gimple_operand(ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #3

declare ptr @gimple_build_assign_stat(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @gimple_seq_add_stmt(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc noundef ptr @create_one_component_var(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) unnamed_addr #11 !prof !38 {
  %6 = tail call ptr @create_tmp_var(ptr noundef %0, ptr noundef %2) #17
  %7 = tail call zeroext i8 @add_referenced_var(ptr noundef %6) #17
  %8 = getelementptr inbounds %struct.tree_decl_minimal, ptr %1, i64 0, i32 1
  %9 = load i32, ptr %8, align 8, !tbaa !50
  %10 = getelementptr inbounds %struct.tree_decl_minimal, ptr %6, i64 0, i32 1
  store i32 %9, ptr %10, align 8, !tbaa !50
  %11 = getelementptr inbounds %struct.tree_decl_common, ptr %6, i64 0, i32 2
  %12 = load i64, ptr %11, align 8
  %13 = or i64 %12, 4096
  store i64 %13, ptr %11, align 8
  %14 = getelementptr inbounds %struct.tree_decl_minimal, ptr %1, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !50
  %16 = icmp eq ptr %15, null
  br i1 %16, label %40, label %17

17:                                               ; preds = %5
  %18 = getelementptr inbounds %struct.tree_decl_common, ptr %1, i64 0, i32 2
  %19 = load i64, ptr %18, align 8
  %20 = and i64 %19, 1024
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %40

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.tree_identifier, ptr %15, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !50
  %25 = tail call i64 (ptr, ...) @concat_length(ptr noundef %24, ptr noundef %3, ptr noundef null) #17
  %26 = add i64 %25, 1
  %27 = alloca i8, i64 %26, align 16
  store ptr %27, ptr @libiberty_concat_ptr, align 8, !tbaa !39
  %28 = call ptr (ptr, ...) @concat_copy2(ptr noundef %24, ptr noundef %3, ptr noundef null) #17
  %29 = call ptr @get_identifier(ptr noundef %28) #17
  %30 = getelementptr inbounds %struct.tree_decl_minimal, ptr %6, i64 0, i32 3
  store ptr %29, ptr %30, align 8, !tbaa !50
  %31 = call ptr @build1_stat(i32 noundef %4, ptr noundef %0, ptr noundef %1) #17
  call void @decl_debug_expr_insert(ptr noundef %6, ptr noundef %31) #17
  %32 = load i64, ptr %11, align 8
  %33 = and i64 %32, -17409
  %34 = or disjoint i64 %33, 16384
  store i64 %34, ptr %11, align 8
  %35 = load i64, ptr %1, align 8
  %36 = and i64 %35, 8388608
  %37 = load i64, ptr %6, align 8
  %38 = and i64 %37, -8388609
  %39 = or disjoint i64 %38, %36
  br label %44

40:                                               ; preds = %17, %5
  %41 = or i64 %12, 5120
  store i64 %41, ptr %11, align 8
  %42 = load i64, ptr %6, align 8
  %43 = or i64 %42, 8388608
  br label %44

44:                                               ; preds = %40, %22
  %45 = phi i64 [ %39, %22 ], [ %43, %40 ]
  store i64 %45, ptr %6, align 8
  ret ptr %6
}

declare ptr @htab_find_with_hash(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @create_tmp_var(ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @add_referenced_var(ptr noundef) local_unnamed_addr #3

declare ptr @get_identifier(ptr noundef) local_unnamed_addr #3

declare i64 @concat_length(ptr noundef, ...) local_unnamed_addr #3

declare ptr @concat_copy2(ptr noundef, ...) local_unnamed_addr #3

declare void @decl_debug_expr_insert(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @xmalloc(i64 noundef) local_unnamed_addr #3

declare ptr @htab_find_slot_with_hash(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare ptr @build_real(ptr noundef, ptr noundef byval(%struct.real_value) align 8) local_unnamed_addr #3

declare ptr @build_int_cst(ptr noundef, i64 noundef) local_unnamed_addr #3

declare void @set_default_def(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @make_ssa_name_fn(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @create_phi_node(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @extract_component(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2, i8 noundef zeroext %3) unnamed_addr #11 !prof !38 {
  %5 = load i64, ptr %1, align 8
  %6 = trunc i64 %5 to i16
  switch i16 %6, label %28 [
    i16 26, label %7
    i16 123, label %13
    i16 32, label %14
    i16 36, label %14
    i16 34, label %14
    i16 47, label %14
    i16 41, label %14
    i16 45, label %14
    i16 118, label %14
    i16 141, label %26
  ]

7:                                                ; preds = %4
  %8 = icmp eq i8 %2, 0
  %9 = getelementptr inbounds %struct.tree_complex, ptr %1, i64 0, i32 2
  %10 = getelementptr inbounds %struct.tree_complex, ptr %1, i64 0, i32 1
  %11 = select i1 %8, ptr %10, ptr %9
  %12 = load ptr, ptr %11, align 8, !tbaa !50
  br label %29

13:                                               ; preds = %4
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 597, ptr noundef nonnull @.str.3) #17
  br label %14

14:                                               ; preds = %4, %4, %4, %4, %4, %4, %4, %13
  %15 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !50
  %17 = getelementptr inbounds %struct.tree_common, ptr %16, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !50
  %19 = icmp eq i8 %2, 0
  %20 = select i1 %19, i32 43, i32 44
  %21 = tail call ptr @unshare_expr(ptr noundef nonnull %1) #17
  %22 = tail call ptr @build1_stat(i32 noundef %20, ptr noundef %18, ptr noundef %21) #17
  %23 = icmp eq i8 %3, 0
  br i1 %23, label %29, label %24

24:                                               ; preds = %14
  %25 = tail call ptr @force_gimple_operand_gsi(ptr noundef %0, ptr noundef %22, i8 noundef zeroext 1, ptr noundef null, i8 noundef zeroext 1, i32 noundef 1) #17
  br label %29

26:                                               ; preds = %4
  %27 = tail call fastcc ptr @get_component_ssa_name(ptr noundef nonnull %1, i8 noundef zeroext %2)
  br label %29

28:                                               ; preds = %4
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 623, ptr noundef nonnull @.str.3) #17
  br label %29

29:                                               ; preds = %14, %24, %28, %26, %7
  %30 = phi ptr [ null, %28 ], [ %27, %26 ], [ %12, %7 ], [ %25, %24 ], [ %22, %14 ]
  ret ptr %30
}

declare ptr @unshare_expr(ptr noundef) local_unnamed_addr #3

declare ptr @force_gimple_operand_gsi(ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #3

declare void @gimple_assign_set_rhs_from_tree(ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @is_ctrl_altering_stmt(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @gimple_has_side_effects(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc void @update_complex_components(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #11 !prof !38 {
  %5 = tail call ptr @gimple_get_lhs(ptr noundef %1) #17
  %6 = tail call fastcc ptr @set_component_ssa_name(ptr noundef %5, i8 noundef zeroext 0, ptr noundef %2)
  %7 = icmp eq ptr %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %4
  tail call void @gsi_insert_seq_after(ptr noundef %0, ptr noundef nonnull %6, i32 noundef 2) #17
  br label %9

9:                                                ; preds = %8, %4
  %10 = tail call fastcc ptr @set_component_ssa_name(ptr noundef %5, i8 noundef zeroext 1, ptr noundef %3)
  %11 = icmp eq ptr %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %9
  tail call void @gsi_insert_seq_after(ptr noundef %0, ptr noundef nonnull %10, i32 noundef 2) #17
  br label %13

13:                                               ; preds = %12, %9
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal fastcc void @update_complex_assignment(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #11 !prof !38 {
  %4 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false), !tbaa.struct !70
  %5 = load ptr, ptr @cfun, align 8, !tbaa !39
  %6 = icmp eq ptr %5, null
  br i1 %6, label %19, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.function, ptr %5, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !108
  %10 = icmp eq ptr %9, null
  br i1 %10, label %19, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.gimple_df, ptr %9, i64 0, i32 10
  %13 = load i8, ptr %12, align 8
  %14 = and i8 %13, 1
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %11
  %17 = load ptr, ptr %0, align 1
  %18 = load ptr, ptr %17, align 8, !tbaa !72
  tail call fastcc void @update_complex_components(ptr noundef nonnull %0, ptr noundef %18, ptr noundef %1, ptr noundef %2)
  br label %19

19:                                               ; preds = %7, %3, %16, %11
  call void @gimple_assign_set_rhs_with_ops(ptr noundef nonnull %4, i32 noundef 123, ptr noundef %1, ptr noundef %2) #17
  %20 = load ptr, ptr %4, align 8
  %21 = load ptr, ptr %20, align 8, !tbaa !72
  %22 = load i32, ptr %21, align 8
  %23 = and i32 %22, 255
  %24 = add nsw i32 %23, -10
  %25 = icmp ult i32 %24, -9
  br i1 %25, label %27, label %26

26:                                               ; preds = %19
  call void @gimple_set_modified(ptr noundef nonnull %21, i8 noundef zeroext 1) #17
  call void @update_stmt_operands(ptr noundef nonnull %21) #17
  br label %27

27:                                               ; preds = %19, %26
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #17
  ret void
}

declare void @gsi_insert_before(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @gsi_insert_seq_after(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @gimple_assign_set_rhs_with_ops(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @gimple_set_modified(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

declare void @update_stmt_operands(ptr noundef) local_unnamed_addr #3

declare ptr @gimplify_build2(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @gimplify_build1(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc void @expand_complex_libcall(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) unnamed_addr #11 !prof !38 {
  %7 = load ptr, ptr %0, align 1
  %8 = load ptr, ptr %7, align 8, !tbaa !72
  %9 = load i32, ptr %8, align 8
  %10 = and i32 %9, 255
  %11 = add nsw i32 %10, -10
  %12 = icmp ult i32 %11, -9
  br i1 %12, label %25, label %13

13:                                               ; preds = %6
  %14 = zext nneg i32 %10 to i64
  %15 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %14
  %16 = load i32, ptr %15, align 4, !tbaa !54
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %17
  %19 = load i64, ptr %18, align 8, !tbaa !91
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %13
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1622, ptr noundef nonnull @.str.3) #17
  br label %22

22:                                               ; preds = %21, %13
  %23 = getelementptr inbounds i8, ptr %8, i64 %19
  %24 = load ptr, ptr %23, align 8, !tbaa !39
  br label %25

25:                                               ; preds = %6, %22
  %26 = phi ptr [ %24, %22 ], [ null, %6 ]
  %27 = getelementptr inbounds %struct.tree_common, ptr %26, i64 0, i32 2
  %28 = load ptr, ptr %27, align 8, !tbaa !50
  %29 = load i64, ptr %28, align 8
  %30 = and i64 %29, 65535
  %31 = icmp eq i64 %30, 14
  br i1 %31, label %32, label %34

32:                                               ; preds = %25
  %33 = tail call i32 @vector_type_mode(ptr noundef nonnull %28) #17
  br label %39

34:                                               ; preds = %25
  %35 = getelementptr inbounds %struct.tree_type, ptr %28, i64 0, i32 6
  %36 = load i32, ptr %35, align 4
  %37 = lshr i32 %36, 16
  %38 = and i32 %37, 255
  br label %39

39:                                               ; preds = %34, %32
  %40 = phi i32 [ %33, %32 ], [ %38, %34 ]
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %41
  %43 = load i8, ptr %42, align 1, !tbaa !50
  %44 = icmp eq i8 %43, 11
  br i1 %44, label %46, label %45

45:                                               ; preds = %39
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 954, ptr noundef nonnull @.str.3) #17
  br label %46

46:                                               ; preds = %39, %45
  switch i32 %5, label %51 [
    i32 65, label %47
    i32 75, label %49
  ]

47:                                               ; preds = %46
  %48 = add i32 %40, 662
  br label %52

49:                                               ; preds = %46
  %50 = add i32 %40, 666
  br label %52

51:                                               ; preds = %46
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 963, ptr noundef nonnull @.str.3) #17
  br label %52

52:                                               ; preds = %49, %51, %47
  %53 = phi i32 [ %48, %47 ], [ %50, %49 ], [ undef, %51 ]
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds [721 x ptr], ptr @built_in_decls, i64 0, i64 %54
  %56 = load ptr, ptr %55, align 8, !tbaa !39
  %57 = tail call ptr (ptr, i32, ...) @gimple_build_call(ptr noundef %56, i32 noundef 4, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #17
  %58 = load i32, ptr %57, align 8
  %59 = and i32 %58, 255
  %60 = add nsw i32 %59, -10
  %61 = icmp ult i32 %60, -9
  br i1 %61, label %66, label %62

62:                                               ; preds = %52
  %63 = getelementptr inbounds %struct.gimple_statement_base, ptr %57, i64 0, i32 3
  %64 = load i32, ptr %63, align 4, !tbaa !50
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %62, %52
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1665, ptr noundef nonnull @.str.3) #17
  br label %67

67:                                               ; preds = %66, %62
  %68 = load i32, ptr %57, align 8
  %69 = and i32 %68, 255
  %70 = zext nneg i32 %69 to i64
  %71 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %70
  %72 = load i32, ptr %71, align 4, !tbaa !54
  %73 = zext i32 %72 to i64
  %74 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %73
  %75 = load i64, ptr %74, align 8, !tbaa !91
  %76 = icmp eq i64 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %67
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1622, ptr noundef nonnull @.str.3) #17
  br label %78

78:                                               ; preds = %77, %67
  %79 = getelementptr inbounds i8, ptr %57, i64 %75
  store ptr %26, ptr %79, align 8, !tbaa !39
  %80 = icmp eq ptr %26, null
  br i1 %80, label %87, label %81

81:                                               ; preds = %78
  %82 = load i64, ptr %26, align 8
  %83 = and i64 %82, 65535
  %84 = icmp eq i64 %83, 141
  br i1 %84, label %85, label %87

85:                                               ; preds = %81
  %86 = getelementptr inbounds %struct.tree_ssa_name, ptr %26, i64 0, i32 2
  store ptr %57, ptr %86, align 8, !tbaa !50
  br label %87

87:                                               ; preds = %78, %81, %85
  %88 = load i32, ptr %57, align 8
  %89 = and i32 %88, 255
  %90 = add nsw i32 %89, -10
  %91 = icmp ult i32 %90, -9
  br i1 %91, label %93, label %92

92:                                               ; preds = %87
  tail call void @gimple_set_modified(ptr noundef nonnull %57, i8 noundef zeroext 1) #17
  tail call void @update_stmt_operands(ptr noundef nonnull %57) #17
  br label %93

93:                                               ; preds = %87, %92
  tail call void @gsi_replace(ptr noundef nonnull %0, ptr noundef nonnull %57, i8 noundef zeroext 0) #17
  %94 = tail call zeroext i8 @maybe_clean_or_replace_eh_stmt(ptr noundef nonnull %8, ptr noundef nonnull %57) #17
  %95 = icmp eq i8 %94, 0
  br i1 %95, label %100, label %96

96:                                               ; preds = %93
  %97 = getelementptr inbounds i8, ptr %0, i64 16
  %98 = load ptr, ptr %97, align 1
  %99 = tail call zeroext i8 @gimple_purge_dead_eh_edges(ptr noundef %98) #17
  br label %100

100:                                              ; preds = %96, %93
  %101 = load ptr, ptr @cfun, align 8, !tbaa !39
  %102 = icmp eq ptr %101, null
  br i1 %102, label %118, label %103

103:                                              ; preds = %100
  %104 = getelementptr inbounds %struct.function, ptr %101, i64 0, i32 3
  %105 = load ptr, ptr %104, align 8, !tbaa !108
  %106 = icmp eq ptr %105, null
  br i1 %106, label %118, label %107

107:                                              ; preds = %103
  %108 = getelementptr inbounds %struct.gimple_df, ptr %105, i64 0, i32 10
  %109 = load i8, ptr %108, align 8
  %110 = and i8 %109, 1
  %111 = icmp eq i8 %110, 0
  br i1 %111, label %118, label %112

112:                                              ; preds = %107
  %113 = getelementptr inbounds %struct.tree_common, ptr %28, i64 0, i32 2
  %114 = load ptr, ptr %113, align 8, !tbaa !50
  %115 = tail call ptr @build1_stat(i32 noundef 43, ptr noundef %114, ptr noundef %26) #17
  %116 = tail call ptr @build1_stat(i32 noundef 44, ptr noundef %114, ptr noundef %26) #17
  tail call fastcc void @update_complex_components(ptr noundef nonnull %0, ptr noundef nonnull %57, ptr noundef %115, ptr noundef %116)
  %117 = getelementptr inbounds %struct.tree_ssa_name, ptr %26, i64 0, i32 2
  store ptr %57, ptr %117, align 8, !tbaa !50
  br label %118

118:                                              ; preds = %103, %100, %112, %107
  ret void
}

declare i32 @vector_type_mode(ptr noundef) local_unnamed_addr #3

declare ptr @gimple_build_call(ptr noundef, i32 noundef, ...) local_unnamed_addr #3

declare void @gsi_replace(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

declare zeroext i8 @maybe_clean_or_replace_eh_stmt(ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @gimple_purge_dead_eh_edges(ptr noundef) local_unnamed_addr #3

declare ptr @fold_build2_stat_loc(i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @tree_strip_nop_conversions(ptr noundef) local_unnamed_addr #3

declare ptr @gimple_build_cond_from_tree(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @split_block(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @create_empty_bb(ptr noundef) local_unnamed_addr #3

declare void @redirect_edge_succ(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @make_edge(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare zeroext i8 @dom_info_available_p(i32 noundef) local_unnamed_addr #3

declare void @set_immediate_dominator(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @make_rename_temp(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @integer_nonzerop(ptr noundef) local_unnamed_addr #3

declare void @gsi_insert_after(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @gimple_build_nop() local_unnamed_addr #3

declare void @gsi_remove(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

declare ptr @fold_convert_loc(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #15

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #16

attributes #0 = { cold inlinehint nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold inlinehint mustprogress nofree nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #14 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #16 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!37}

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
!34 = distinct !{!35, !36}
!35 = !{ptr @tree_lower_complex, ptr @gsi_start_phis, i64 144905}
!36 = !{ptr @tree_lower_complex, ptr @stmt_ends_bb_p, i64 340086}
!37 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!38 = !{!"function_entry_count", i64 0}
!39 = !{!40, !40, i64 0}
!40 = !{!"any pointer", !41, i64 0}
!41 = !{!"omnipotent char", !42, i64 0}
!42 = !{!"Simple C/C++ TBAA"}
!43 = !{!44, !40, i64 8}
!44 = !{!"_IO_FILE", !45, i64 0, !40, i64 8, !40, i64 16, !40, i64 24, !40, i64 32, !40, i64 40, !40, i64 48, !40, i64 56, !40, i64 64, !40, i64 72, !40, i64 80, !40, i64 88, !40, i64 96, !40, i64 104, !45, i64 112, !45, i64 116, !46, i64 120, !47, i64 128, !41, i64 130, !41, i64 131, !40, i64 136, !46, i64 144, !40, i64 152, !40, i64 160, !40, i64 168, !40, i64 176, !46, i64 184, !45, i64 192, !41, i64 196}
!45 = !{!"int", !41, i64 0}
!46 = !{!"long", !41, i64 0}
!47 = !{!"short", !41, i64 0}
!48 = !{!44, !40, i64 16}
!49 = !{!"branch_weights", i32 2000, i32 1}
!50 = !{!41, !41, i64 0}
!51 = !{!44, !40, i64 40}
!52 = !{!44, !40, i64 48}
!53 = !{!44, !45, i64 0}
!54 = !{!45, !45, i64 0}
!55 = distinct !{!55, !56, !57}
!56 = !{!"llvm.loop.mustprogress"}
!57 = !{!"llvm.loop.unroll.disable"}
!58 = !{!"function_entry_count", i64 38}
!59 = !{!"tree-complex.c;tree_lower_complex"}
!60 = !{!61, !40, i64 8}
!61 = !{!"function", !40, i64 0, !40, i64 8, !40, i64 16, !40, i64 24, !40, i64 32, !40, i64 40, !40, i64 48, !40, i64 56, !40, i64 64, !40, i64 72, !40, i64 80, !40, i64 88, !40, i64 96, !45, i64 104, !45, i64 108, !45, i64 112, !45, i64 116, !45, i64 120, !45, i64 124, !40, i64 128, !45, i64 136, !45, i64 137, !45, i64 138, !45, i64 138, !45, i64 138, !45, i64 138, !45, i64 138, !45, i64 138, !45, i64 138, !45, i64 139, !45, i64 139, !45, i64 139, !45, i64 139, !45, i64 139, !45, i64 139, !45, i64 139}
!62 = !{!63, !40, i64 0}
!63 = !{!"control_flow_graph", !40, i64 0, !40, i64 8, !40, i64 16, !45, i64 24, !45, i64 28, !45, i64 32, !40, i64 40, !45, i64 48, !41, i64 52, !41, i64 60, !45, i64 68, !45, i64 72}
!64 = !{!65, !40, i64 56}
!65 = !{!"basic_block_def", !40, i64 0, !40, i64 8, !40, i64 16, !40, i64 24, !41, i64 32, !40, i64 48, !40, i64 56, !41, i64 64, !46, i64 72, !45, i64 80, !45, i64 84, !45, i64 88, !45, i64 92, !45, i64 96}
!66 = !{!63, !40, i64 8}
!67 = !{!"branch_weights", i32 1, i32 151}
!68 = !{!"branch_weights", i32 151, i32 579469}
!69 = distinct !{!69, !56, !57}
!70 = !{i64 0, i64 8, !39, i64 8, i64 8, !39, i64 16, i64 8, !39}
!71 = !{!"branch_weights", i32 103892, i32 41013}
!72 = !{!73, !40, i64 0}
!73 = !{!"gimple_seq_node_d", !40, i64 0, !40, i64 8, !40, i64 16}
!74 = !{!"branch_weights", i32 0, i32 41013}
!75 = !{!73, !40, i64 16}
!76 = !{!"branch_weights", i32 41013, i32 0}
!77 = distinct !{!77, !56, !57}
!78 = !{!65, !45, i64 96}
!79 = !{!80}
!80 = distinct !{!80, !81, !"gsi_start_bb: argument 0"}
!81 = distinct !{!81, !"gsi_start_bb"}
!82 = !{!"branch_weights", i32 144905, i32 0}
!83 = !{!"branch_weights", i32 0, i32 144905}
!84 = !{!85, !40, i64 0}
!85 = !{!"gimple_bb_info", !40, i64 0, !40, i64 8}
!86 = !{!87, !40, i64 0}
!87 = !{!"gimple_seq_d", !40, i64 0, !40, i64 8, !40, i64 16}
!88 = !{!"branch_weights", i32 1, i32 144904}
!89 = !{!"branch_weights", i32 3021, i32 69129, i32 126279, i32 141657}
!90 = !{!"branch_weights", i32 0, i32 69129}
!91 = !{!46, !46, i64 0}
!92 = !{!"branch_weights", i32 2274, i32 66855}
!93 = !{!"branch_weights", i32 0, i32 66855}
!94 = !{!"branch_weights", i32 0, i32 126279}
!95 = !{!"branch_weights", i32 0, i32 126279, i32 0, i32 0}
!96 = !{!"branch_weights", i32 78315, i32 47964}
!97 = !{!"branch_weights", i32 0, i32 78315}
!98 = !{!"branch_weights", i32 47564, i32 78715}
!99 = !{!"branch_weights", i32 0, i32 47564}
!100 = !{!"branch_weights", i32 0, i32 141657}
!101 = !{!"branch_weights", i32 267936, i32 72150}
!102 = !{!"branch_weights", i32 0, i32 126279, i32 141657, i32 0}
!103 = !{!"branch_weights", i32 106355, i32 123930, i32 34278, i32 3361, i32 6, i32 6, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0}
!104 = !{!"branch_weights", i32 0, i32 161581}
!105 = !{!"branch_weights", i32 144904, i32 195182}
!106 = distinct !{!106, !56, !57}
!107 = !{!"branch_weights", i32 38, i32 0}
!108 = !{!61, !40, i64 24}
!109 = !{!110, !40, i64 16}
!110 = !{!"gimple_df", !40, i64 0, !40, i64 8, !40, i64 16, !40, i64 24, !111, i64 32, !111, i64 48, !40, i64 64, !40, i64 72, !40, i64 80, !40, i64 88, !45, i64 96, !112, i64 104}
!111 = !{!"pt_solution", !45, i64 0, !45, i64 0, !45, i64 0, !45, i64 0, !45, i64 0, !45, i64 0, !40, i64 8}
!112 = !{!"ssa_operands", !40, i64 0, !45, i64 8, !45, i64 12, !41, i64 16, !40, i64 24, !40, i64 32}
!113 = !{!114, !45, i64 0}
!114 = !{!"VEC_tree_base", !45, i64 0, !45, i64 4, !41, i64 8}
!115 = !{!116, !45, i64 0}
!116 = !{!"VEC_complex_lattice_t_base", !45, i64 0, !45, i64 4, !41, i64 8}
!117 = !{!116, !45, i64 4}
!118 = !{}
!119 = !{!61, !40, i64 48}
!120 = distinct !{!120, !56, !57}
!121 = !{!114, !45, i64 4}
!122 = !{!65, !40, i64 8}
!123 = !{!124, !45, i64 0}
!124 = !{!"VEC_edge_base", !45, i64 0, !45, i64 4, !41, i64 8}
!125 = distinct !{!125, !56, !57}
!126 = !{!63, !45, i64 32}
!127 = !{!65, !45, i64 80}
!128 = !{!129, !40, i64 24}
!129 = !{!"ssa_use_operand_d", !40, i64 0, !40, i64 8, !41, i64 16, !40, i64 24}
!130 = !{!129, !40, i64 0}
!131 = !{!129, !40, i64 8}
!132 = distinct !{!132, !56, !57}
!133 = distinct !{!133, !56, !57}
!134 = !{!135}
!135 = distinct !{!135, !136, !"gsi_start_bb: argument 0"}
!136 = distinct !{!136, !"gsi_start_bb"}
!137 = !{i64 0, i64 8, !39, i64 8, i64 8, !39}
!138 = !{i64 0, i64 8, !39}
!139 = !{!140, !45, i64 48}
!140 = !{!"edge_def", !40, i64 0, !40, i64 8, !41, i64 16, !40, i64 24, !40, i64 32, !45, i64 40, !45, i64 44, !45, i64 48, !45, i64 52, !46, i64 56}
!141 = distinct !{!141, !56, !57}
!142 = !{!140, !40, i64 0}
!143 = !{!140, !40, i64 8}
!144 = !{!145}
!145 = distinct !{!145, !146, !"gsi_last_bb: argument 0"}
!146 = distinct !{!146, !"gsi_last_bb"}
!147 = !{!87, !40, i64 8}
!148 = !{!149}
!149 = distinct !{!149, !150, !"gsi_last_bb: argument 0"}
!150 = distinct !{!150, !"gsi_last_bb"}
!151 = !{!152}
!152 = distinct !{!152, !153, !"gsi_start_bb: argument 0"}
!153 = distinct !{!153, !"gsi_start_bb"}
!154 = !{!155, !40, i64 0}
!155 = !{!"", !40, i64 0, !40, i64 8, !40, i64 16}
!156 = distinct !{!156, !56, !57}
!157 = distinct !{!157, !56, !57}
!158 = !{!"tree-complex.c;gate_no_optimization"}
!159 = !{!61, !45, i64 120}
!160 = !{i32 0, i32 2}
!161 = distinct !{!161, !56, !57}
!162 = !{!163, !45, i64 0}
!163 = !{!"int_tree_map", !45, i64 0, !40, i64 8}
!164 = !{!163, !40, i64 8}
