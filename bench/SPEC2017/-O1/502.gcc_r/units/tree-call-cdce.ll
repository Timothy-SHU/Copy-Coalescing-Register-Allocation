; ModuleID = 'tree-call-cdce.c'
source_filename = "tree-call-cdce.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gimple_opt_pass = type { %struct.opt_pass }
%struct.opt_pass = type { i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct.real_format = type { ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.real_value = type { i32, [3 x i64] }
%struct._IO_FILE = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, [1 x i8], ptr, i64, ptr, ptr, ptr, ptr, i64, i32, [20 x i8] }
%struct.gimple_stmt_iterator = type { ptr, ptr, ptr }
%struct.expanded_location = type { ptr, i32, i32, i8 }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.basic_block_def = type { ptr, ptr, ptr, ptr, [2 x ptr], ptr, ptr, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%union.basic_block_il_dependent = type { ptr }
%struct.control_flow_graph = type { ptr, ptr, ptr, i32, i32, i32, ptr, i32, [2 x i32], [2 x i32], i32, i32 }
%struct.tree_exp = type { %struct.tree_common, i32, ptr, [1 x ptr] }
%struct.tree_common = type { %struct.tree_base, ptr, ptr }
%struct.tree_base = type { i64 }
%struct.tree_function_decl = type { %struct.tree_decl_non_common, ptr, ptr, ptr, ptr, i32 }
%struct.tree_decl_non_common = type { %struct.tree_decl_with_vis, ptr, ptr, ptr, ptr }
%struct.tree_decl_with_vis = type { %struct.tree_decl_with_rtl, ptr, ptr, ptr, i24 }
%struct.tree_decl_with_rtl = type { %struct.tree_decl_common, ptr }
%struct.tree_decl_common = type { %struct.tree_decl_minimal, ptr, i40, i32, ptr, ptr, ptr, ptr, ptr }
%struct.tree_decl_minimal = type { %struct.tree_common, i32, i32, ptr, ptr }
%struct.gimple_statement_base = type { i32, i32, i32, i32, ptr, ptr }
%struct.tree_real_cst = type { %struct.tree_common, ptr }
%struct.tree_type = type { %struct.tree_common, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, %union.tree_type_symtab, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.tree_type_symtab = type { ptr }
%struct.tree_ssa_name = type { %struct.tree_common, ptr, ptr, i32, ptr, %struct.ssa_use_operand_d }
%struct.ssa_use_operand_d = type { ptr, ptr, %union.anon, ptr }
%union.anon = type { ptr }
%struct.VEC_gimple_base = type { i32, i32, [1 x ptr] }
%struct.gimple_seq_node_d = type { ptr, ptr, ptr }
%struct.edge_def = type { ptr, ptr, %union.edge_def_insns, ptr, ptr, i32, i32, i32, i32, i64 }
%union.edge_def_insns = type { ptr }
%struct.gimple_df = type { ptr, ptr, ptr, ptr, %struct.pt_solution, %struct.pt_solution, ptr, ptr, ptr, ptr, i8, %struct.ssa_operands }
%struct.pt_solution = type { i8, ptr }
%struct.ssa_operands = type { ptr, i32, i32, i8, ptr, ptr }

@stdout = external local_unnamed_addr global ptr, align 8
@stdin = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [5 x i8] c"cdce\00", align 1
@pass_call_cdce = dso_local local_unnamed_addr global %struct.gimple_opt_pass { %struct.opt_pass { i32 0, ptr @.str, ptr @gate_call_cdce, ptr @tree_call_cdce, ptr null, ptr null, i32 0, i32 78, i32 40, i32 0, i32 0, i32 0, i32 5 } }, align 8
@flag_tree_builtin_call_dce = external local_unnamed_addr global i32, align 4
@cfun = external local_unnamed_addr global ptr, align 8
@dump_file = external local_unnamed_addr global ptr, align 8
@dump_flags = external local_unnamed_addr global i32, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"Found conditional dead call: \00", align 1
@gimple_ops_offset_ = external local_unnamed_addr constant [0 x i64], align 8
@.str.3 = private unnamed_addr constant [11 x i8] c"./gimple.h\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@gss_for_code_ = external local_unnamed_addr constant [0 x i32], align 4
@real_format_for_mode = external local_unnamed_addr global [7 x ptr], align 16
@ieee_single_format = external constant %struct.real_format, align 8
@mips_single_format = external constant %struct.real_format, align 8
@motorola_single_format = external constant %struct.real_format, align 8
@ieee_double_format = external constant %struct.real_format, align 8
@mips_double_format = external constant %struct.real_format, align 8
@motorola_double_format = external constant %struct.real_format, align 8
@ieee_quad_format = external constant %struct.real_format, align 8
@mips_quad_format = external constant %struct.real_format, align 8
@ieee_extended_motorola_format = external constant %struct.real_format, align 8
@ieee_extended_intel_96_format = external constant %struct.real_format, align 8
@ieee_extended_intel_128_format = external constant %struct.real_format, align 8
@ieee_extended_intel_96_round_53_format = external constant %struct.real_format, align 8
@dconst1 = external global %struct.real_value, align 8
@tree_code_type = external local_unnamed_addr constant [0 x i32], align 4
@gimple_rhs_class_table = external local_unnamed_addr constant [0 x i8], align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"tree-call-cdce.c\00", align 1
@.str.6 = private unnamed_addr constant [69 x i8] c"%s:%d: note: function call is shrink-wrapped into error conditions.\0A\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"DCE_COND1\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"DCE_COND_LB\00", align 1
@.str.9 = private unnamed_addr constant [17 x i8] c"DCE_COND_LB_TEST\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"DCE_COND_UB\00", align 1
@.str.11 = private unnamed_addr constant [17 x i8] c"DCE_COND_UB_TEST\00", align 1
@integer_types = external local_unnamed_addr global [11 x ptr], align 16
@global_trees = external local_unnamed_addr global [131 x ptr], align 16
@.str.12 = private unnamed_addr constant [21 x i8] c"./tree-flow-inline.h\00", align 1

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @vprintf(ptr noalias nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 !prof !37 {
  %3 = load ptr, ptr @stdout, align 8, !tbaa !38
  %4 = tail call i32 @vfprintf(ptr noundef %3, ptr noundef %0, ptr noundef %1)
  ret i32 %4
}

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @getchar() local_unnamed_addr #0 !prof !37 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !38
  %2 = tail call i32 @getc(ptr noundef %1)
  ret i32 %2
}

; Function Attrs: nofree nounwind
declare noundef i32 @getc(ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !37 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !47
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !48

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #15
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !42
  %11 = load i8, ptr %3, align 1, !tbaa !49
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

declare i32 @__uflow(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !37 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !47
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !48

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #15
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !42
  %11 = load i8, ptr %3, align 1, !tbaa !49
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #2 !prof !37 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !38
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !47
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !48

7:                                                ; preds = %0
  %8 = tail call i32 @__uflow(ptr noundef %1) #15
  br label %13

9:                                                ; preds = %0
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !42
  %11 = load i8, ptr %3, align 1, !tbaa !49
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @putchar(i32 noundef %0) local_unnamed_addr #0 !prof !37 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !38
  %3 = tail call i32 @putc(i32 noundef %0, ptr noundef %2)
  ret i32 %3
}

; Function Attrs: nofree nounwind
declare noundef i32 @putc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !37 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !50
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !51
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !48

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #15
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !50
  store i8 %12, ptr %4, align 1, !tbaa !49
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

declare i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !37 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !50
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !51
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !48

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #15
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !50
  store i8 %12, ptr %4, align 1, !tbaa !49
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 noundef %0) local_unnamed_addr #2 !prof !37 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !38
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !50
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !51
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !48

8:                                                ; preds = %1
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %2, i32 noundef %9) #15
  br label %15

11:                                               ; preds = %1
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !50
  store i8 %12, ptr %4, align 1, !tbaa !49
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i64 @getline(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 !prof !37 {
  %4 = tail call i64 @__getdelim(ptr noundef %0, ptr noundef %1, i32 noundef 10, ptr noundef %2) #15
  ret i64 %4
}

declare i64 @__getdelim(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @feof_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !37 {
  %2 = load i32, ptr %0, align 8, !tbaa !52
  %3 = lshr i32 %2, 4
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @ferror_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !37 {
  %2 = load i32, ptr %0, align 8, !tbaa !52
  %3 = lshr i32 %2, 5
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @tolower(i32 noundef %0) local_unnamed_addr #5 !prof !37 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_tolower_loc() #15
  %6 = load ptr, ptr %5, align 8, !tbaa !38
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !53
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_tolower_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @toupper(i32 noundef %0) local_unnamed_addr #5 !prof !37 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_toupper_loc() #15
  %6 = load ptr, ptr %5, align 8, !tbaa !38
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !53
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_toupper_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i32 @atoi(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !37 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  %3 = trunc i64 %2 to i32
  ret i32 %3
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atol(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !37 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atoll(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !37 {
  %2 = tail call i64 @strtoll(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtoll(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local noundef ptr @bsearch(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #2 !prof !37 {
  %6 = icmp eq i64 %2, 0
  br i1 %6, label %24, label %7

7:                                                ; preds = %5, %20
  %8 = phi i64 [ %22, %20 ], [ 0, %5 ]
  %9 = phi i64 [ %21, %20 ], [ %2, %5 ]
  %10 = add i64 %8, %9
  %11 = lshr i64 %10, 1
  %12 = mul i64 %11, %3
  %13 = getelementptr inbounds i8, ptr %1, i64 %12
  %14 = tail call i32 %4(ptr noundef %0, ptr noundef %13) #15
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
  br i1 %23, label %7, label %24, !llvm.loop !54

24:                                               ; preds = %16, %20, %5
  %25 = phi ptr [ null, %5 ], [ %13, %16 ], [ null, %20 ]
  ret ptr %25
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local double @atof(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !37 {
  %2 = tail call double @strtod(ptr nocapture noundef %0, ptr noundef null)
  ret double %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define internal zeroext i8 @gate_call_cdce() #9 !prof !57 !PGOFuncName !58 {
  %1 = load i32, ptr @flag_tree_builtin_call_dce, align 4, !tbaa !53
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %8, label %3, !prof !59

3:                                                ; preds = %0
  %4 = load ptr, ptr @cfun, align 8, !tbaa !38
  %5 = tail call zeroext i8 @optimize_function_for_speed_p(ptr noundef %4) #15
  %6 = icmp ne i8 %5, 0
  %7 = zext i1 %6 to i8
  br label %8

8:                                                ; preds = %3, %0
  %9 = phi i8 [ 0, %0 ], [ %7, %3 ]
  ret i8 %9
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @tree_call_cdce() #9 !prof !57 !PGOFuncName !60 {
  %1 = alloca %struct.real_value, align 8
  %2 = alloca %struct.real_value, align 8
  %3 = alloca %struct.real_value, align 8
  %4 = alloca %struct.real_value, align 8
  %5 = alloca %struct.gimple_stmt_iterator, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.gimple_stmt_iterator, align 8
  %8 = alloca %struct.gimple_stmt_iterator, align 8
  %9 = alloca %struct.gimple_stmt_iterator, align 8
  %10 = alloca %struct.expanded_location, align 8
  %11 = alloca %struct.expanded_location, align 8
  %12 = load ptr, ptr @cfun, align 8, !tbaa !38
  %13 = getelementptr inbounds %struct.function, ptr %12, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !61
  %15 = load ptr, ptr %14, align 8, !tbaa !63
  %16 = getelementptr inbounds %struct.basic_block_def, ptr %15, i64 0, i32 6
  %17 = load ptr, ptr %16, align 8, !tbaa !65
  %18 = getelementptr inbounds %struct.control_flow_graph, ptr %14, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !67
  %20 = icmp eq ptr %17, %19
  br i1 %20, label %321, label %31, !prof !68

21:                                               ; preds = %316, %49
  %22 = phi ptr [ %33, %49 ], [ %317, %316 ]
  %23 = getelementptr inbounds %struct.basic_block_def, ptr %32, i64 0, i32 6
  %24 = load ptr, ptr %23, align 8, !tbaa !65
  %25 = load ptr, ptr @cfun, align 8, !tbaa !38
  %26 = getelementptr inbounds %struct.function, ptr %25, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !61
  %28 = getelementptr inbounds %struct.control_flow_graph, ptr %27, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !67
  %30 = icmp eq ptr %24, %29
  br i1 %30, label %321, label %31, !prof !69, !llvm.loop !70

31:                                               ; preds = %0, %21
  %32 = phi ptr [ %24, %21 ], [ %17, %0 ]
  %33 = phi ptr [ %22, %21 ], [ null, %0 ]
  %34 = getelementptr inbounds %struct.basic_block_def, ptr %32, i64 0, i32 13
  %35 = load i32, ptr %34, align 8, !tbaa !71, !noalias !72
  %36 = and i32 %35, 512
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %44, !prof !75

38:                                               ; preds = %31
  %39 = getelementptr inbounds %struct.basic_block_def, ptr %32, i64 0, i32 7
  %40 = load ptr, ptr %39, align 8, !tbaa !49, !noalias !72
  %41 = icmp eq ptr %40, null
  br i1 %41, label %44, label %42, !prof !76

42:                                               ; preds = %38
  %43 = load ptr, ptr %40, align 8, !tbaa !77, !noalias !72
  br label %44

44:                                               ; preds = %42, %38, %31
  %45 = phi ptr [ %43, %42 ], [ null, %38 ], [ null, %31 ]
  %46 = icmp eq ptr %45, null
  br i1 %46, label %49, label %47, !prof !76

47:                                               ; preds = %44
  %48 = load ptr, ptr %45, align 8, !tbaa !79, !noalias !72
  br label %49

49:                                               ; preds = %44, %47
  %50 = phi ptr [ %48, %47 ], [ null, %44 ]
  %51 = icmp eq ptr %50, null
  br i1 %51, label %21, label %52, !prof !81

52:                                               ; preds = %49, %316
  %53 = phi ptr [ %319, %316 ], [ %50, %49 ]
  %54 = phi ptr [ %317, %316 ], [ %33, %49 ]
  %55 = load ptr, ptr %53, align 8, !tbaa !82
  %56 = load i32, ptr %55, align 8
  %57 = and i32 %56, 255
  %58 = icmp eq i32 %57, 8
  br i1 %58, label %59, label %316, !prof !84

59:                                               ; preds = %52
  %60 = zext nneg i32 %57 to i64
  %61 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %60
  %62 = load i32, ptr %61, align 4, !tbaa !53
  %63 = zext i32 %62 to i64
  %64 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %63
  %65 = load i64, ptr %64, align 8, !tbaa !85
  %66 = icmp eq i64 %65, 0
  br i1 %66, label %67, label %68, !prof !86

67:                                               ; preds = %59
  call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1622, ptr noundef nonnull @.str.4) #15
  br label %68

68:                                               ; preds = %67, %59
  %69 = getelementptr inbounds i8, ptr %55, i64 %65
  %70 = load ptr, ptr %69, align 8, !tbaa !38
  %71 = icmp eq ptr %70, null
  br i1 %71, label %72, label %281, !prof !87

72:                                               ; preds = %68
  %73 = load i32, ptr %55, align 8
  %74 = and i32 %73, 255
  %75 = add nsw i32 %74, -10
  %76 = icmp ult i32 %75, -9
  br i1 %76, label %90, label %77, !prof !88

77:                                               ; preds = %72
  %78 = zext nneg i32 %74 to i64
  %79 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %78
  %80 = load i32, ptr %79, align 4, !tbaa !53
  %81 = zext i32 %80 to i64
  %82 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %81
  %83 = load i64, ptr %82, align 8, !tbaa !85
  %84 = icmp eq i64 %83, 0
  br i1 %84, label %85, label %86, !prof !88

85:                                               ; preds = %77
  call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1622, ptr noundef nonnull @.str.4) #15
  br label %86

86:                                               ; preds = %85, %77
  %87 = getelementptr inbounds i8, ptr %55, i64 %83
  %88 = getelementptr inbounds ptr, ptr %87, i64 1
  %89 = load ptr, ptr %88, align 8, !tbaa !38
  br label %90

90:                                               ; preds = %86, %72
  %91 = phi ptr [ %89, %86 ], [ null, %72 ]
  %92 = load i64, ptr %91, align 8
  %93 = and i64 %92, 65535
  %94 = icmp eq i64 %93, 121
  br i1 %94, label %95, label %98, !prof !89

95:                                               ; preds = %90
  %96 = getelementptr inbounds %struct.tree_exp, ptr %91, i64 0, i32 3
  %97 = load ptr, ptr %96, align 8, !tbaa !49
  br label %98

98:                                               ; preds = %95, %90
  %99 = phi ptr [ %97, %95 ], [ null, %90 ]
  %100 = icmp eq ptr %99, null
  br i1 %100, label %281, label %101, !prof !88

101:                                              ; preds = %98
  %102 = getelementptr inbounds %struct.tree_function_decl, ptr %99, i64 0, i32 5
  %103 = load i32, ptr %102, align 8
  %104 = and i32 %103, 6144
  %105 = icmp eq i32 %104, 6144
  br i1 %105, label %106, label %281, !prof !88

106:                                              ; preds = %101
  %107 = and i32 %103, 2047
  switch i32 %107, label %281 [
    i32 0, label %108
    i32 1, label %108
    i32 5, label %108
    i32 6, label %108
    i32 7, label %108
    i32 11, label %108
    i32 2, label %108
    i32 3, label %108
    i32 4, label %108
    i32 17, label %108
    i32 18, label %108
    i32 19, label %108
    i32 32, label %108
    i32 33, label %108
    i32 34, label %108
    i32 224, label %108
    i32 225, label %108
    i32 226, label %108
    i32 138, label %108
    i32 151, label %108
    i32 152, label %108
    i32 145, label %108
    i32 146, label %108
    i32 147, label %108
    i32 139, label %108
    i32 140, label %108
    i32 141, label %108
    i32 142, label %108
    i32 143, label %108
    i32 144, label %108
    i32 45, label %108
    i32 52, label %108
    i32 53, label %108
    i32 49, label %108
    i32 50, label %108
    i32 51, label %108
    i32 46, label %108
    i32 47, label %108
    i32 48, label %108
    i32 54, label %108
    i32 55, label %108
    i32 56, label %108
    i32 181, label %108
    i32 182, label %108
    i32 183, label %108
    i32 228, label %108
    i32 229, label %108
    i32 230, label %108
    i32 180, label %129
  ]

108:                                              ; preds = %106, %106, %106, %106, %106, %106, %106, %106, %106, %106, %106, %106, %106, %106, %106, %106, %106, %106, %106, %106, %106, %106, %106, %106, %106, %106, %106, %106, %106, %106, %106, %106, %106, %106, %106, %106, %106, %106, %106, %106, %106, %106, %106, %106, %106, %106, %106, %106
  %109 = load i32, ptr %55, align 8
  %110 = and i32 %109, 255
  %111 = add nsw i32 %110, -10
  %112 = icmp ult i32 %111, -9
  br i1 %112, label %126, label %113

113:                                              ; preds = %108
  %114 = zext nneg i32 %110 to i64
  %115 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %114
  %116 = load i32, ptr %115, align 4, !tbaa !53
  %117 = zext i32 %116 to i64
  %118 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %117
  %119 = load i64, ptr %118, align 8, !tbaa !85
  %120 = icmp eq i64 %119, 0
  br i1 %120, label %121, label %122

121:                                              ; preds = %113
  call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1622, ptr noundef nonnull @.str.4) #15
  br label %122

122:                                              ; preds = %121, %113
  %123 = getelementptr inbounds i8, ptr %55, i64 %119
  %124 = getelementptr ptr, ptr %123, i64 3
  %125 = load ptr, ptr %124, align 8, !tbaa !38
  br label %126

126:                                              ; preds = %122, %108
  %127 = phi ptr [ %125, %122 ], [ null, %108 ]
  %128 = call fastcc zeroext i8 @check_target_format(ptr noundef %127), !range !90
  br label %281

129:                                              ; preds = %106
  %130 = getelementptr inbounds %struct.gimple_statement_base, ptr %55, i64 0, i32 3
  %131 = load i32, ptr %130, align 4, !tbaa !49
  %132 = icmp eq i32 %131, 5
  br i1 %132, label %133, label %281

133:                                              ; preds = %129
  %134 = load i32, ptr %55, align 8
  %135 = and i32 %134, 255
  %136 = add nsw i32 %135, -10
  %137 = icmp ult i32 %136, -9
  br i1 %137, label %151, label %138

138:                                              ; preds = %133
  %139 = zext nneg i32 %135 to i64
  %140 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %139
  %141 = load i32, ptr %140, align 4, !tbaa !53
  %142 = zext i32 %141 to i64
  %143 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %142
  %144 = load i64, ptr %143, align 8, !tbaa !85
  %145 = icmp eq i64 %144, 0
  br i1 %145, label %146, label %147

146:                                              ; preds = %138
  call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1622, ptr noundef nonnull @.str.4) #15
  br label %147

147:                                              ; preds = %146, %138
  %148 = getelementptr inbounds i8, ptr %55, i64 %144
  %149 = getelementptr ptr, ptr %148, i64 3
  %150 = load ptr, ptr %149, align 8, !tbaa !38
  br label %151

151:                                              ; preds = %147, %133
  %152 = phi ptr [ %150, %147 ], [ null, %133 ]
  %153 = load i32, ptr %55, align 8
  %154 = and i32 %153, 255
  %155 = add nsw i32 %154, -10
  %156 = icmp ult i32 %155, -9
  br i1 %156, label %170, label %157

157:                                              ; preds = %151
  %158 = zext nneg i32 %154 to i64
  %159 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %158
  %160 = load i32, ptr %159, align 4, !tbaa !53
  %161 = zext i32 %160 to i64
  %162 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %161
  %163 = load i64, ptr %162, align 8, !tbaa !85
  %164 = icmp eq i64 %163, 0
  br i1 %164, label %165, label %166

165:                                              ; preds = %157
  call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1622, ptr noundef nonnull @.str.4) #15
  br label %166

166:                                              ; preds = %165, %157
  %167 = getelementptr inbounds i8, ptr %55, i64 %163
  %168 = getelementptr ptr, ptr %167, i64 4
  %169 = load ptr, ptr %168, align 8, !tbaa !38
  br label %170

170:                                              ; preds = %166, %151
  %171 = phi ptr [ %169, %166 ], [ null, %151 ]
  %172 = call fastcc zeroext i8 @check_target_format(ptr noundef %171), !range !90
  %173 = icmp eq i8 %172, 0
  br i1 %173, label %281, label %174

174:                                              ; preds = %170
  %175 = load i64, ptr %152, align 8
  %176 = trunc i64 %175 to i32
  %177 = and i32 %176, 65535
  %178 = load i64, ptr %171, align 8
  %179 = and i64 %178, 65535
  %180 = icmp eq i64 %179, 24
  %181 = icmp eq i32 %177, 24
  %182 = select i1 %180, i1 %181, i1 false
  br i1 %182, label %281, label %183

183:                                              ; preds = %174
  br i1 %181, label %184, label %212

184:                                              ; preds = %183
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %1) #15
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #15
  %185 = getelementptr inbounds %struct.tree_real_cst, ptr %152, i64 0, i32 1
  %186 = load ptr, ptr %185, align 8, !tbaa !49
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %186, i64 32, i1 false), !tbaa.struct !91
  %187 = call zeroext i8 @real_compare(i32 noundef 101, ptr noundef nonnull %2, ptr noundef nonnull @dconst1) #15
  %188 = icmp eq i8 %187, 0
  br i1 %188, label %189, label %210

189:                                              ; preds = %184
  %190 = call zeroext i8 @real_compare(i32 noundef 97, ptr noundef nonnull %2, ptr noundef nonnull @dconst1) #15
  %191 = icmp eq i8 %190, 0
  br i1 %191, label %192, label %210

192:                                              ; preds = %189
  %193 = getelementptr inbounds %struct.tree_common, ptr %152, i64 0, i32 2
  %194 = load ptr, ptr %193, align 8, !tbaa !49
  %195 = load i64, ptr %194, align 8
  %196 = and i64 %195, 65535
  %197 = icmp eq i64 %196, 14
  br i1 %197, label %198, label %200

198:                                              ; preds = %192
  %199 = call i32 @vector_type_mode(ptr noundef nonnull %194) #15
  br label %205

200:                                              ; preds = %192
  %201 = getelementptr inbounds %struct.tree_type, ptr %194, i64 0, i32 6
  %202 = load i32, ptr %201, align 4
  %203 = lshr i32 %202, 16
  %204 = and i32 %203, 255
  br label %205

205:                                              ; preds = %200, %198
  %206 = phi i32 [ %199, %198 ], [ %204, %200 ]
  call void @real_from_integer(ptr noundef nonnull %1, i32 noundef %206, i64 noundef 256, i64 noundef 0, i32 noundef 1) #15
  %207 = call zeroext i8 @real_compare(i32 noundef 97, ptr noundef nonnull %1, ptr noundef nonnull %2) #15
  %208 = icmp eq i8 %207, 0
  %209 = zext i1 %208 to i8
  br label %210

210:                                              ; preds = %205, %189, %184
  %211 = phi i8 [ 0, %184 ], [ 0, %189 ], [ %209, %205 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #15
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %1) #15
  br label %281

212:                                              ; preds = %183
  %213 = icmp eq i32 %177, 141
  br i1 %213, label %214, label %281

214:                                              ; preds = %212
  %215 = getelementptr inbounds %struct.tree_ssa_name, ptr %152, i64 0, i32 2
  %216 = load ptr, ptr %215, align 8, !tbaa !49
  %217 = load i32, ptr %216, align 8
  %218 = and i32 %217, 255
  %219 = icmp eq i32 %218, 6
  br i1 %219, label %220, label %281

220:                                              ; preds = %214
  %221 = lshr i32 %217, 16
  %222 = zext nneg i32 %221 to i64
  %223 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %222
  %224 = load i8, ptr %223, align 1, !tbaa !49
  %225 = icmp eq i8 %224, 3
  br i1 %225, label %226, label %242

226:                                              ; preds = %220
  %227 = zext nneg i32 %218 to i64
  %228 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %227
  %229 = load i32, ptr %228, align 4, !tbaa !53
  %230 = zext i32 %229 to i64
  %231 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %230
  %232 = load i64, ptr %231, align 8, !tbaa !85
  %233 = icmp eq i64 %232, 0
  br i1 %233, label %234, label %235

234:                                              ; preds = %226
  call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1622, ptr noundef nonnull @.str.4) #15
  br label %235

235:                                              ; preds = %234, %226
  %236 = getelementptr inbounds i8, ptr %216, i64 %232
  %237 = getelementptr inbounds ptr, ptr %236, i64 1
  %238 = load ptr, ptr %237, align 8, !tbaa !38
  %239 = load i64, ptr %238, align 8
  %240 = trunc i64 %239 to i32
  %241 = and i32 %240, 65535
  br label %242

242:                                              ; preds = %235, %220
  %243 = phi i32 [ %241, %235 ], [ %221, %220 ]
  %244 = icmp eq i32 %243, 78
  br i1 %244, label %245, label %281

245:                                              ; preds = %242
  %246 = load i32, ptr %216, align 8
  %247 = and i32 %246, 255
  %248 = add nsw i32 %247, -1
  %249 = icmp ult i32 %248, 9
  call void @llvm.assume(i1 %249)
  %250 = zext nneg i32 %247 to i64
  %251 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %250
  %252 = load i32, ptr %251, align 4, !tbaa !53
  %253 = zext i32 %252 to i64
  %254 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %253
  %255 = load i64, ptr %254, align 8, !tbaa !85
  %256 = icmp eq i64 %255, 0
  br i1 %256, label %257, label %258

257:                                              ; preds = %245
  call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1622, ptr noundef nonnull @.str.4) #15
  br label %258

258:                                              ; preds = %257, %245
  %259 = getelementptr inbounds i8, ptr %216, i64 %255
  %260 = getelementptr inbounds ptr, ptr %259, i64 1
  %261 = load ptr, ptr %260, align 8, !tbaa !38
  %262 = getelementptr inbounds %struct.tree_ssa_name, ptr %261, i64 0, i32 1
  %263 = load ptr, ptr %262, align 8, !tbaa !49
  %264 = load i64, ptr %263, align 8
  %265 = and i64 %264, 65535
  %266 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %265
  %267 = load i32, ptr %266, align 4, !tbaa !53
  %268 = icmp eq i32 %267, 3
  br i1 %268, label %269, label %281

269:                                              ; preds = %258
  %270 = getelementptr inbounds %struct.tree_common, ptr %263, i64 0, i32 2
  %271 = load ptr, ptr %270, align 8, !tbaa !49
  %272 = load i64, ptr %271, align 8
  %273 = and i64 %272, 65535
  %274 = icmp eq i64 %273, 8
  br i1 %274, label %275, label %281

275:                                              ; preds = %269
  %276 = getelementptr inbounds %struct.tree_type, ptr %271, i64 0, i32 6
  %277 = load i32, ptr %276, align 4
  %278 = and i32 %277, 1023
  %279 = icmp ult i32 %278, 33
  %280 = zext i1 %279 to i8
  br label %281

281:                                              ; preds = %275, %269, %258, %242, %214, %212, %210, %174, %170, %129, %68, %98, %101, %106, %126
  %282 = phi i8 [ %128, %126 ], [ 0, %68 ], [ 0, %101 ], [ 0, %98 ], [ 0, %106 ], [ %211, %210 ], [ 0, %129 ], [ 0, %170 ], [ 0, %174 ], [ 0, %214 ], [ 0, %242 ], [ 0, %258 ], [ 0, %269 ], [ %280, %275 ], [ 0, %212 ]
  %283 = icmp eq i8 %282, 0
  br i1 %283, label %316, label %284, !prof !92

284:                                              ; preds = %281
  %285 = load ptr, ptr @dump_file, align 8, !tbaa !38
  %286 = icmp eq ptr %285, null
  br i1 %286, label %296, label %287

287:                                              ; preds = %284
  %288 = load i32, ptr @dump_flags, align 4, !tbaa !53
  %289 = and i32 %288, 8
  %290 = icmp eq i32 %289, 0
  br i1 %290, label %296, label %291

291:                                              ; preds = %287
  %292 = call i64 @fwrite(ptr nonnull @.str.1, i64 29, i64 1, ptr nonnull %285)
  %293 = load ptr, ptr @dump_file, align 8, !tbaa !38
  call void @print_gimple_stmt(ptr noundef %293, ptr noundef nonnull %55, i32 noundef 0, i32 noundef 2) #15
  %294 = load ptr, ptr @dump_file, align 8, !tbaa !38
  %295 = call i32 @fputc(i32 10, ptr %294)
  br label %296

296:                                              ; preds = %291, %287, %284
  %297 = icmp eq ptr %54, null
  br i1 %297, label %298, label %300

298:                                              ; preds = %296
  %299 = call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef 64) #15
  br label %300

300:                                              ; preds = %298, %296
  %301 = phi ptr [ %299, %298 ], [ %54, %296 ]
  %302 = icmp eq ptr %301, null
  br i1 %302, label %308, label %303

303:                                              ; preds = %300
  %304 = getelementptr inbounds %struct.VEC_gimple_base, ptr %301, i64 0, i32 1
  %305 = load i32, ptr %304, align 4, !tbaa !93
  %306 = load i32, ptr %301, align 8, !tbaa !95
  %307 = icmp eq i32 %305, %306
  br i1 %307, label %308, label %310

308:                                              ; preds = %300, %303
  %309 = call ptr @vec_heap_p_reserve(ptr noundef %301, i32 noundef 1) #15
  br label %310

310:                                              ; preds = %303, %308
  %311 = phi ptr [ %309, %308 ], [ %301, %303 ]
  %312 = load i32, ptr %311, align 8, !tbaa !95
  %313 = add i32 %312, 1
  store i32 %313, ptr %311, align 8, !tbaa !95
  %314 = zext i32 %312 to i64
  %315 = getelementptr inbounds %struct.VEC_gimple_base, ptr %311, i64 0, i32 2, i64 %314
  store ptr %55, ptr %315, align 8, !tbaa !38
  br label %316

316:                                              ; preds = %310, %281, %52
  %317 = phi ptr [ %54, %52 ], [ %54, %281 ], [ %311, %310 ]
  %318 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %53, i64 0, i32 2
  %319 = load ptr, ptr %318, align 8, !tbaa !96
  %320 = icmp eq ptr %319, null
  br i1 %320, label %21, label %52, !prof !97, !llvm.loop !98

321:                                              ; preds = %21, %0
  %322 = phi ptr [ null, %0 ], [ %22, %21 ]
  %323 = icmp eq ptr %322, null
  br i1 %323, label %746, label %324, !prof !99

324:                                              ; preds = %321
  %325 = load i32, ptr %322, align 8, !tbaa !95
  %326 = icmp eq i32 %325, 0
  br i1 %326, label %745, label %327

327:                                              ; preds = %324
  %328 = getelementptr inbounds %struct.expanded_location, ptr %11, i64 0, i32 1
  %329 = zext i32 %325 to i64
  br label %330

330:                                              ; preds = %327, %725
  %331 = phi i64 [ 0, %327 ], [ %728, %725 ]
  %332 = phi i8 [ 0, %327 ], [ %727, %725 ]
  %333 = getelementptr inbounds %struct.VEC_gimple_base, ptr %322, i64 0, i32 2, i64 %331
  %334 = load ptr, ptr %333, align 8, !tbaa !38
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %10)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %11)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #15
  %335 = call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef 12) #15
  %336 = icmp eq ptr %335, null
  br i1 %336, label %337, label %338

337:                                              ; preds = %330
  call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 695, ptr noundef nonnull @.str.4) #15
  br label %340

338:                                              ; preds = %330
  %339 = load i32, ptr %335, align 8, !tbaa !95
  br label %340

340:                                              ; preds = %338, %337
  %341 = phi i32 [ %339, %338 ], [ 0, %337 ]
  %342 = icmp eq i32 %341, 0
  br i1 %342, label %344, label %343

343:                                              ; preds = %340
  call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 696, ptr noundef nonnull @.str.4) #15
  br label %344

344:                                              ; preds = %343, %340
  %345 = load i32, ptr %334, align 8
  %346 = and i32 %345, 255
  %347 = icmp eq i32 %346, 8
  br i1 %347, label %349, label %348

348:                                              ; preds = %344
  call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 697, ptr noundef nonnull @.str.4) #15
  br label %349

349:                                              ; preds = %348, %344
  %350 = load i32, ptr %334, align 8
  %351 = and i32 %350, 255
  %352 = add nsw i32 %351, -10
  %353 = icmp ult i32 %352, -9
  br i1 %353, label %367, label %354

354:                                              ; preds = %349
  %355 = zext nneg i32 %351 to i64
  %356 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %355
  %357 = load i32, ptr %356, align 4, !tbaa !53
  %358 = zext i32 %357 to i64
  %359 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %358
  %360 = load i64, ptr %359, align 8, !tbaa !85
  %361 = icmp eq i64 %360, 0
  br i1 %361, label %362, label %363

362:                                              ; preds = %354
  call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1622, ptr noundef nonnull @.str.4) #15
  br label %363

363:                                              ; preds = %362, %354
  %364 = getelementptr inbounds i8, ptr %334, i64 %360
  %365 = getelementptr inbounds ptr, ptr %364, i64 1
  %366 = load ptr, ptr %365, align 8, !tbaa !38
  br label %367

367:                                              ; preds = %363, %349
  %368 = phi ptr [ %366, %363 ], [ null, %349 ]
  %369 = load i64, ptr %368, align 8
  %370 = and i64 %369, 65535
  %371 = icmp eq i64 %370, 121
  br i1 %371, label %372, label %375

372:                                              ; preds = %367
  %373 = getelementptr inbounds %struct.tree_exp, ptr %368, i64 0, i32 3
  %374 = load ptr, ptr %373, align 8, !tbaa !49
  br label %375

375:                                              ; preds = %372, %367
  %376 = phi ptr [ %374, %372 ], [ null, %367 ]
  %377 = icmp eq ptr %376, null
  br i1 %377, label %383, label %378

378:                                              ; preds = %375
  %379 = getelementptr inbounds %struct.tree_function_decl, ptr %376, i64 0, i32 5
  %380 = load i32, ptr %379, align 8
  %381 = and i32 %380, 6144
  %382 = icmp eq i32 %381, 0
  br i1 %382, label %383, label %384

383:                                              ; preds = %378, %375
  call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 701, ptr noundef nonnull @.str.4) #15
  br label %384

384:                                              ; preds = %383, %378
  %385 = getelementptr inbounds %struct.tree_function_decl, ptr %376, i64 0, i32 5
  %386 = load i32, ptr %385, align 8
  %387 = and i32 %386, 2047
  store i32 0, ptr %6, align 4, !tbaa !53
  switch i32 %387, label %558 [
    i32 180, label %388
    i32 0, label %559
    i32 1, label %559
    i32 5, label %559
    i32 6, label %559
    i32 7, label %559
    i32 11, label %559
    i32 2, label %545
    i32 3, label %545
    i32 4, label %545
    i32 17, label %546
    i32 18, label %546
    i32 19, label %546
    i32 33, label %547
    i32 225, label %547
    i32 32, label %548
    i32 224, label %548
    i32 34, label %548
    i32 226, label %548
    i32 138, label %549
    i32 151, label %549
    i32 152, label %549
    i32 145, label %549
    i32 146, label %549
    i32 147, label %549
    i32 139, label %549
    i32 140, label %549
    i32 141, label %549
    i32 142, label %550
    i32 143, label %550
    i32 144, label %550
    i32 52, label %551
    i32 55, label %551
    i32 45, label %552
    i32 54, label %552
    i32 53, label %552
    i32 56, label %552
    i32 50, label %553
    i32 49, label %554
    i32 51, label %554
    i32 47, label %555
    i32 182, label %555
    i32 46, label %556
    i32 181, label %556
    i32 48, label %556
    i32 183, label %556
    i32 228, label %557
    i32 229, label %557
    i32 230, label %557
  ]

388:                                              ; preds = %384
  store i32 0, ptr %6, align 4, !tbaa !53
  %389 = load i32, ptr %334, align 8
  %390 = and i32 %389, 255
  %391 = add nsw i32 %390, -10
  %392 = icmp ult i32 %391, -9
  br i1 %392, label %406, label %393

393:                                              ; preds = %388
  %394 = zext nneg i32 %390 to i64
  %395 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %394
  %396 = load i32, ptr %395, align 4, !tbaa !53
  %397 = zext i32 %396 to i64
  %398 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %397
  %399 = load i64, ptr %398, align 8, !tbaa !85
  %400 = icmp eq i64 %399, 0
  br i1 %400, label %401, label %402

401:                                              ; preds = %393
  call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1622, ptr noundef nonnull @.str.4) #15
  br label %402

402:                                              ; preds = %401, %393
  %403 = getelementptr inbounds i8, ptr %334, i64 %399
  %404 = getelementptr ptr, ptr %403, i64 3
  %405 = load ptr, ptr %404, align 8, !tbaa !38
  br label %406

406:                                              ; preds = %402, %388
  %407 = phi ptr [ %405, %402 ], [ null, %388 ]
  %408 = load i32, ptr %334, align 8
  %409 = and i32 %408, 255
  %410 = add nsw i32 %409, -10
  %411 = icmp ult i32 %410, -9
  br i1 %411, label %425, label %412

412:                                              ; preds = %406
  %413 = zext nneg i32 %409 to i64
  %414 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %413
  %415 = load i32, ptr %414, align 4, !tbaa !53
  %416 = zext i32 %415 to i64
  %417 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %416
  %418 = load i64, ptr %417, align 8, !tbaa !85
  %419 = icmp eq i64 %418, 0
  br i1 %419, label %420, label %421

420:                                              ; preds = %412
  call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1622, ptr noundef nonnull @.str.4) #15
  br label %421

421:                                              ; preds = %420, %412
  %422 = getelementptr inbounds i8, ptr %334, i64 %418
  %423 = getelementptr ptr, ptr %422, i64 4
  %424 = load ptr, ptr %423, align 8, !tbaa !38
  br label %425

425:                                              ; preds = %421, %406
  %426 = phi ptr [ %424, %421 ], [ null, %406 ]
  %427 = load i64, ptr %407, align 8
  %428 = trunc i64 %427 to i16
  switch i16 %428, label %544 [
    i16 24, label %429
    i16 141, label %457
  ]

429:                                              ; preds = %425
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #15
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #15
  %430 = getelementptr inbounds %struct.tree_real_cst, ptr %407, i64 0, i32 1
  %431 = load ptr, ptr %430, align 8, !tbaa !49
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %431, i64 32, i1 false), !tbaa.struct !91
  %432 = call zeroext i8 @real_compare(i32 noundef 101, ptr noundef nonnull %4, ptr noundef nonnull @dconst1) #15
  %433 = icmp eq i8 %432, 0
  br i1 %433, label %434, label %437

434:                                              ; preds = %429
  %435 = call zeroext i8 @real_compare(i32 noundef 97, ptr noundef nonnull %4, ptr noundef nonnull @dconst1) #15
  %436 = icmp eq i8 %435, 0
  br i1 %436, label %438, label %437

437:                                              ; preds = %434, %429
  call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 429, ptr noundef nonnull @.str.4) #15
  br label %438

438:                                              ; preds = %437, %434
  %439 = getelementptr inbounds %struct.tree_common, ptr %407, i64 0, i32 2
  %440 = load ptr, ptr %439, align 8, !tbaa !49
  %441 = load i64, ptr %440, align 8
  %442 = and i64 %441, 65535
  %443 = icmp eq i64 %442, 14
  br i1 %443, label %444, label %446

444:                                              ; preds = %438
  %445 = call i32 @vector_type_mode(ptr noundef nonnull %440) #15
  br label %451

446:                                              ; preds = %438
  %447 = getelementptr inbounds %struct.tree_type, ptr %440, i64 0, i32 6
  %448 = load i32, ptr %447, align 4
  %449 = lshr i32 %448, 16
  %450 = and i32 %449, 255
  br label %451

451:                                              ; preds = %446, %444
  %452 = phi i32 [ %445, %444 ], [ %450, %446 ]
  call void @real_from_integer(ptr noundef nonnull %3, i32 noundef %452, i64 noundef 256, i64 noundef 0, i32 noundef 1) #15
  %453 = call zeroext i8 @real_compare(i32 noundef 97, ptr noundef nonnull %3, ptr noundef nonnull %4) #15
  %454 = icmp eq i8 %453, 0
  br i1 %454, label %456, label %455

455:                                              ; preds = %451
  call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 431, ptr noundef nonnull @.str.4) #15
  br label %456

456:                                              ; preds = %455, %451
  call fastcc void @gen_one_condition(ptr noundef %426, i32 noundef 127, i32 noundef 100, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11, ptr noundef %335, ptr noundef nonnull %6)
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #15
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #15
  br label %603

457:                                              ; preds = %425
  %458 = getelementptr inbounds %struct.tree_ssa_name, ptr %407, i64 0, i32 2
  %459 = load ptr, ptr %458, align 8, !tbaa !49
  %460 = load i32, ptr %459, align 8
  %461 = and i32 %460, 255
  %462 = add nsw i32 %461, -10
  %463 = icmp ult i32 %462, -9
  br i1 %463, label %477, label %464

464:                                              ; preds = %457
  %465 = zext nneg i32 %461 to i64
  %466 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %465
  %467 = load i32, ptr %466, align 4, !tbaa !53
  %468 = zext i32 %467 to i64
  %469 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %468
  %470 = load i64, ptr %469, align 8, !tbaa !85
  %471 = icmp eq i64 %470, 0
  br i1 %471, label %472, label %473

472:                                              ; preds = %464
  call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1622, ptr noundef nonnull @.str.4) #15
  br label %473

473:                                              ; preds = %472, %464
  %474 = getelementptr inbounds i8, ptr %459, i64 %470
  %475 = getelementptr inbounds ptr, ptr %474, i64 1
  %476 = load ptr, ptr %475, align 8, !tbaa !38
  br label %477

477:                                              ; preds = %473, %457
  %478 = phi ptr [ %476, %473 ], [ null, %457 ]
  %479 = getelementptr inbounds %struct.tree_ssa_name, ptr %478, i64 0, i32 1
  %480 = load ptr, ptr %479, align 8, !tbaa !49
  %481 = getelementptr inbounds %struct.tree_common, ptr %480, i64 0, i32 2
  %482 = load ptr, ptr %481, align 8, !tbaa !49
  %483 = getelementptr inbounds %struct.tree_type, ptr %482, i64 0, i32 6
  %484 = load i32, ptr %483, align 4
  %485 = and i32 %484, 1023
  %486 = add nsw i32 %485, -1
  %487 = icmp ult i32 %486, 32
  br i1 %487, label %489, label %488

488:                                              ; preds = %477
  call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 474, ptr noundef nonnull @.str.4) #15
  br label %489

489:                                              ; preds = %488, %477
  switch i32 %485, label %491 [
    i32 8, label %493
    i32 16, label %490
    i32 32, label %492
  ]

490:                                              ; preds = %489
  br label %493

491:                                              ; preds = %489
  call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 486, ptr noundef nonnull @.str.4) #15
  br label %492

492:                                              ; preds = %491, %489
  br label %493

493:                                              ; preds = %492, %490, %489
  %494 = phi i32 [ 64, %490 ], [ 32, %492 ], [ 128, %489 ]
  call fastcc void @gen_one_condition(ptr noundef %426, i32 noundef %494, i32 noundef 99, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11, ptr noundef %335, ptr noundef nonnull %6)
  %495 = load i32, ptr %335, align 8, !tbaa !95
  %496 = add i32 %495, 1
  store i32 %496, ptr %335, align 8, !tbaa !95
  %497 = zext i32 %495 to i64
  %498 = getelementptr inbounds %struct.VEC_gimple_base, ptr %335, i64 0, i32 2, i64 %497
  store ptr null, ptr %498, align 8, !tbaa !38
  %499 = call ptr @create_tmp_var(ptr noundef %482, ptr noundef nonnull @.str.7) #15
  %500 = call ptr @build_int_cst(ptr noundef %482, i64 noundef 0) #15
  %501 = call ptr @gimple_build_assign_stat(ptr noundef %499, ptr noundef %478) #15
  %502 = load ptr, ptr @cfun, align 8, !tbaa !38
  %503 = call ptr @make_ssa_name_fn(ptr noundef %502, ptr noundef %499, ptr noundef %501) #15
  %504 = load i32, ptr %501, align 8
  %505 = and i32 %504, 255
  %506 = add nsw i32 %505, -10
  %507 = icmp ult i32 %506, -9
  br i1 %507, label %512, label %508

508:                                              ; preds = %493
  %509 = getelementptr inbounds %struct.gimple_statement_base, ptr %501, i64 0, i32 3
  %510 = load i32, ptr %509, align 4, !tbaa !49
  %511 = icmp eq i32 %510, 0
  br i1 %511, label %512, label %513

512:                                              ; preds = %508, %493
  call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1665, ptr noundef nonnull @.str.4) #15
  br label %513

513:                                              ; preds = %512, %508
  %514 = load i32, ptr %501, align 8
  %515 = and i32 %514, 255
  %516 = zext nneg i32 %515 to i64
  %517 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %516
  %518 = load i32, ptr %517, align 4, !tbaa !53
  %519 = zext i32 %518 to i64
  %520 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %519
  %521 = load i64, ptr %520, align 8, !tbaa !85
  %522 = icmp eq i64 %521, 0
  br i1 %522, label %523, label %524

523:                                              ; preds = %513
  call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1622, ptr noundef nonnull @.str.4) #15
  br label %524

524:                                              ; preds = %523, %513
  %525 = getelementptr inbounds i8, ptr %501, i64 %521
  store ptr %503, ptr %525, align 8, !tbaa !38
  %526 = icmp eq ptr %503, null
  br i1 %526, label %533, label %527

527:                                              ; preds = %524
  %528 = load i64, ptr %503, align 8
  %529 = and i64 %528, 65535
  %530 = icmp eq i64 %529, 141
  br i1 %530, label %531, label %533

531:                                              ; preds = %527
  %532 = getelementptr inbounds %struct.tree_ssa_name, ptr %503, i64 0, i32 2
  store ptr %501, ptr %532, align 8, !tbaa !49
  br label %533

533:                                              ; preds = %531, %527, %524
  %534 = call ptr @gimple_build_cond(i32 noundef 98, ptr noundef %503, ptr noundef %500, ptr noundef null, ptr noundef null) #15
  %535 = load i32, ptr %335, align 8, !tbaa !95
  %536 = add i32 %535, 1
  store i32 %536, ptr %335, align 8, !tbaa !95
  %537 = zext i32 %535 to i64
  %538 = getelementptr inbounds %struct.VEC_gimple_base, ptr %335, i64 0, i32 2, i64 %537
  store ptr %501, ptr %538, align 8, !tbaa !38
  %539 = add i32 %535, 2
  store i32 %539, ptr %335, align 8, !tbaa !95
  %540 = zext i32 %536 to i64
  %541 = getelementptr inbounds %struct.VEC_gimple_base, ptr %335, i64 0, i32 2, i64 %540
  store ptr %534, ptr %541, align 8, !tbaa !38
  %542 = load i32, ptr %6, align 4, !tbaa !53
  %543 = add i32 %542, 1
  store i32 %543, ptr %6, align 4, !tbaa !53
  br label %603

544:                                              ; preds = %425
  call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 568, ptr noundef nonnull @.str.4) #15
  br label %603

545:                                              ; preds = %384, %384, %384
  br label %559

546:                                              ; preds = %384, %384, %384
  br label %559

547:                                              ; preds = %384, %384
  br label %559

548:                                              ; preds = %384, %384, %384, %384
  br label %559

549:                                              ; preds = %384, %384, %384, %384, %384, %384, %384, %384, %384
  br label %559

550:                                              ; preds = %384, %384, %384
  br label %559

551:                                              ; preds = %384, %384
  br label %559

552:                                              ; preds = %384, %384, %384, %384
  br label %559

553:                                              ; preds = %384
  br label %559

554:                                              ; preds = %384, %384
  br label %559

555:                                              ; preds = %384, %384
  br label %559

556:                                              ; preds = %384, %384, %384, %384
  br label %559

557:                                              ; preds = %384, %384, %384
  br label %559

558:                                              ; preds = %384
  call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 669, ptr noundef nonnull @.str.4) #15
  call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 672, ptr noundef nonnull @.str.4) #15
  br label %559

559:                                              ; preds = %384, %384, %384, %384, %384, %558, %557, %556, %555, %554, %553, %552, %551, %550, %549, %548, %547, %546, %545, %384
  %560 = phi { i64, i32 } [ { i64 0, i32 16843009 }, %558 ], [ { i64 0, i32 65537 }, %557 ], [ { i64 1327144894463, i32 256 }, %556 ], [ { i64 167503724543, i32 256 }, %555 ], [ { i64 4402341478399, i32 256 }, %554 ], [ { i64 554050781183, i32 256 }, %553 ], [ { i64 3049426780159, i32 256 }, %552 ], [ { i64 382252089343, i32 256 }, %551 ], [ { i64 4294967295, i32 1 }, %550 ], [ { i64 0, i32 1 }, %549 ], [ { i64 3053721746746, i32 257 }, %548 ], [ { i64 386547056551, i32 257 }, %547 ], [ { i64 8589934591, i32 257 }, %546 ], [ { i64 4294967297, i32 65537 }, %545 ], [ { i64 8589934591, i32 16843009 }, %384 ], [ { i64 8589934591, i32 16843009 }, %384 ], [ { i64 8589934591, i32 16843009 }, %384 ], [ { i64 8589934591, i32 16843009 }, %384 ], [ { i64 8589934591, i32 16843009 }, %384 ], [ { i64 8589934591, i32 16843009 }, %384 ]
  %561 = extractvalue { i64, i32 } %560, 0
  %562 = extractvalue { i64, i32 } %560, 1
  store i32 0, ptr %6, align 4, !tbaa !53
  %563 = load i32, ptr %334, align 8
  %564 = and i32 %563, 255
  %565 = add nsw i32 %564, -10
  %566 = icmp ult i32 %565, -9
  br i1 %566, label %580, label %567

567:                                              ; preds = %559
  %568 = zext nneg i32 %564 to i64
  %569 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %568
  %570 = load i32, ptr %569, align 4, !tbaa !53
  %571 = zext i32 %570 to i64
  %572 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %571
  %573 = load i64, ptr %572, align 8, !tbaa !85
  %574 = icmp eq i64 %573, 0
  br i1 %574, label %575, label %576

575:                                              ; preds = %567
  call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1622, ptr noundef nonnull @.str.4) #15
  br label %576

576:                                              ; preds = %575, %567
  %577 = getelementptr inbounds i8, ptr %334, i64 %573
  %578 = getelementptr ptr, ptr %577, i64 3
  %579 = load ptr, ptr %578, align 8, !tbaa !38
  br label %580

580:                                              ; preds = %576, %559
  %581 = phi ptr [ %579, %576 ], [ null, %559 ]
  %582 = lshr i64 %561, 32
  %583 = trunc i64 %582 to i32
  %584 = and i32 %562, 255
  %585 = icmp eq i32 %584, 0
  br i1 %585, label %591, label %586

586:                                              ; preds = %580
  %587 = trunc i64 %561 to i32
  %588 = and i32 %562, 16711680
  %589 = icmp eq i32 %588, 0
  %590 = select i1 %589, i32 98, i32 97
  call fastcc void @gen_one_condition(ptr noundef %581, i32 noundef %587, i32 noundef %590, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9, ptr noundef %335, ptr noundef nonnull %6)
  br label %591

591:                                              ; preds = %586, %580
  %592 = and i32 %562, 65280
  %593 = icmp eq i32 %592, 0
  br i1 %593, label %603, label %594

594:                                              ; preds = %591
  br i1 %585, label %600, label %595

595:                                              ; preds = %594
  %596 = load i32, ptr %335, align 8, !tbaa !95
  %597 = add i32 %596, 1
  store i32 %597, ptr %335, align 8, !tbaa !95
  %598 = zext i32 %596 to i64
  %599 = getelementptr inbounds %struct.VEC_gimple_base, ptr %335, i64 0, i32 2, i64 %598
  store ptr null, ptr %599, align 8, !tbaa !38
  br label %600

600:                                              ; preds = %595, %594
  %601 = icmp ult i32 %562, 16777216
  %602 = select i1 %601, i32 100, i32 99
  call fastcc void @gen_one_condition(ptr noundef %581, i32 noundef %583, i32 noundef %602, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11, ptr noundef %335, ptr noundef nonnull %6)
  br label %603

603:                                              ; preds = %600, %591, %544, %533, %456
  %604 = load i32, ptr %6, align 4, !tbaa !53
  %605 = icmp eq i32 %604, 0
  br i1 %605, label %725, label %606

606:                                              ; preds = %603
  %607 = getelementptr inbounds %struct.gimple_statement_base, ptr %334, i64 0, i32 4
  %608 = load ptr, ptr %607, align 8, !tbaa !49
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #15
  call void @gsi_for_stmt(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %7, ptr noundef nonnull %334) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %7, i64 24, i1 false), !tbaa.struct !100
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #15
  %609 = call ptr @split_block(ptr noundef %608, ptr noundef nonnull %334) #15
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #15
  call void @gsi_for_stmt(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %8, ptr noundef nonnull %334) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %8, i64 24, i1 false), !tbaa.struct !100
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #15
  %610 = getelementptr inbounds %struct.edge_def, ptr %609, i64 0, i32 1
  %611 = load ptr, ptr %610, align 8, !tbaa !101
  br i1 %336, label %614, label %612

612:                                              ; preds = %606
  %613 = load i32, ptr %335, align 8, !tbaa !95
  br label %614

614:                                              ; preds = %612, %606
  %615 = phi i32 [ %613, %612 ], [ 0, %606 ]
  %616 = getelementptr inbounds %struct.VEC_gimple_base, ptr %335, i64 0, i32 2, i64 0
  %617 = load ptr, ptr %616, align 8, !tbaa !38
  %618 = icmp eq i32 %615, 0
  br i1 %618, label %636, label %619

619:                                              ; preds = %614, %633
  %620 = phi i32 [ %634, %633 ], [ 0, %614 ]
  %621 = phi ptr [ %632, %633 ], [ null, %614 ]
  %622 = zext i32 %620 to i64
  %623 = getelementptr inbounds %struct.VEC_gimple_base, ptr %335, i64 0, i32 2, i64 %622
  %624 = load ptr, ptr %623, align 8, !tbaa !38
  %625 = icmp ne ptr %624, null
  %626 = icmp ne i32 %620, 0
  %627 = or i1 %626, %625
  br i1 %627, label %629, label %628

628:                                              ; preds = %619
  call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 773, ptr noundef nonnull @.str.4) #15
  br label %629

629:                                              ; preds = %628, %619
  br i1 %625, label %630, label %631

630:                                              ; preds = %629
  call void @gsi_insert_before(ptr noundef nonnull %5, ptr noundef nonnull %624, i32 noundef 1) #15
  br label %631

631:                                              ; preds = %630, %629
  %632 = phi ptr [ %624, %630 ], [ %621, %629 ]
  br i1 %625, label %633, label %636

633:                                              ; preds = %631
  %634 = add nuw i32 %620, 1
  %635 = icmp eq i32 %634, %615
  br i1 %635, label %636, label %619, !llvm.loop !103

636:                                              ; preds = %633, %631, %614
  %637 = phi i32 [ 0, %614 ], [ %615, %633 ], [ %620, %631 ]
  %638 = phi ptr [ null, %614 ], [ %632, %631 ], [ %632, %633 ]
  %639 = add i32 %604, -1
  store i32 %639, ptr %6, align 4, !tbaa !53
  %640 = icmp eq ptr %638, null
  br i1 %640, label %645, label %641

641:                                              ; preds = %636
  %642 = load i32, ptr %638, align 8
  %643 = and i32 %642, 255
  %644 = icmp eq i32 %643, 1
  br i1 %644, label %646, label %645

645:                                              ; preds = %641, %636
  call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 781, ptr noundef nonnull @.str.4) #15
  br label %646

646:                                              ; preds = %645, %641
  %647 = getelementptr inbounds %struct.gimple_statement_base, ptr %334, i64 0, i32 2
  %648 = load i32, ptr %647, align 8, !tbaa !49
  %649 = call ptr @create_artificial_label(i32 noundef %648) #15
  %650 = call ptr @gimple_build_label(ptr noundef %649) #15
  call void @gsi_insert_before(ptr noundef nonnull %5, ptr noundef %650, i32 noundef 1) #15
  %651 = call ptr @split_block(ptr noundef %608, ptr noundef %638) #15
  %652 = getelementptr inbounds %struct.edge_def, ptr %651, i64 0, i32 7
  %653 = load i32, ptr %652, align 8, !tbaa !104
  %654 = and i32 %653, -1026
  %655 = or disjoint i32 %654, 1024
  store i32 %655, ptr %652, align 8, !tbaa !104
  %656 = getelementptr inbounds %struct.edge_def, ptr %651, i64 0, i32 1
  %657 = load ptr, ptr %656, align 8, !tbaa !101
  %658 = call ptr @make_edge(ptr noundef %608, ptr noundef %611, i32 noundef 2048) #15
  %659 = getelementptr inbounds %struct.edge_def, ptr %651, i64 0, i32 8
  store i32 100, ptr %659, align 4, !tbaa !105
  %660 = getelementptr inbounds %struct.edge_def, ptr %658, i64 0, i32 8
  store i32 9900, ptr %660, align 4, !tbaa !105
  %661 = load i32, ptr %6, align 4, !tbaa !53
  %662 = icmp eq i32 %661, 0
  br i1 %662, label %711, label %663

663:                                              ; preds = %646, %700
  %664 = phi i32 [ %709, %700 ], [ %661, %646 ]
  %665 = phi i32 [ %691, %700 ], [ %637, %646 ]
  %666 = phi ptr [ %692, %700 ], [ %638, %646 ]
  %667 = phi ptr [ %671, %700 ], [ %617, %646 ]
  %668 = add i32 %665, 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %9) #15
  call void @gsi_for_stmt(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %9, ptr noundef %667) #15
  %669 = zext i32 %668 to i64
  %670 = getelementptr inbounds %struct.VEC_gimple_base, ptr %335, i64 0, i32 2, i64 %669
  %671 = load ptr, ptr %670, align 8, !tbaa !38
  %672 = icmp ult i32 %668, %615
  br i1 %672, label %673, label %690

673:                                              ; preds = %663, %687
  %674 = phi i32 [ %688, %687 ], [ %668, %663 ]
  %675 = phi ptr [ %686, %687 ], [ %666, %663 ]
  %676 = zext i32 %674 to i64
  %677 = getelementptr inbounds %struct.VEC_gimple_base, ptr %335, i64 0, i32 2, i64 %676
  %678 = load ptr, ptr %677, align 8, !tbaa !38
  %679 = icmp eq ptr %678, null
  %680 = icmp eq i32 %674, %668
  %681 = and i1 %680, %679
  br i1 %681, label %682, label %683

682:                                              ; preds = %673
  call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 812, ptr noundef nonnull @.str.4) #15
  br label %683

683:                                              ; preds = %682, %673
  br i1 %679, label %685, label %684

684:                                              ; preds = %683
  call void @gsi_insert_before(ptr noundef nonnull %9, ptr noundef nonnull %678, i32 noundef 1) #15
  br label %685

685:                                              ; preds = %684, %683
  %686 = phi ptr [ %678, %684 ], [ %675, %683 ]
  br i1 %679, label %690, label %687

687:                                              ; preds = %685
  %688 = add nuw i32 %674, 1
  %689 = icmp eq i32 %688, %615
  br i1 %689, label %690, label %673, !llvm.loop !106

690:                                              ; preds = %687, %685, %663
  %691 = phi i32 [ %668, %663 ], [ %615, %687 ], [ %674, %685 ]
  %692 = phi ptr [ %666, %663 ], [ %686, %685 ], [ %686, %687 ]
  %693 = add i32 %664, -1
  store i32 %693, ptr %6, align 4, !tbaa !53
  %694 = icmp eq ptr %692, null
  br i1 %694, label %699, label %695

695:                                              ; preds = %690
  %696 = load i32, ptr %692, align 8
  %697 = and i32 %696, 255
  %698 = icmp eq i32 %697, 1
  br i1 %698, label %700, label %699

699:                                              ; preds = %695, %690
  call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 820, ptr noundef nonnull @.str.4) #15
  br label %700

700:                                              ; preds = %699, %695
  %701 = call ptr @split_block(ptr noundef %608, ptr noundef %692) #15
  %702 = getelementptr inbounds %struct.edge_def, ptr %701, i64 0, i32 7
  %703 = load i32, ptr %702, align 8, !tbaa !104
  %704 = and i32 %703, -2050
  %705 = or disjoint i32 %704, 2048
  store i32 %705, ptr %702, align 8, !tbaa !104
  %706 = call ptr @make_edge(ptr noundef %608, ptr noundef %657, i32 noundef 1024) #15
  %707 = getelementptr inbounds %struct.edge_def, ptr %706, i64 0, i32 8
  store i32 100, ptr %707, align 4, !tbaa !105
  %708 = getelementptr inbounds %struct.edge_def, ptr %701, i64 0, i32 8
  store i32 9900, ptr %708, align 4, !tbaa !105
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %9) #15
  %709 = load i32, ptr %6, align 4, !tbaa !53
  %710 = icmp eq i32 %709, 0
  br i1 %710, label %711, label %663, !llvm.loop !107

711:                                              ; preds = %700, %646
  br i1 %336, label %713, label %712

712:                                              ; preds = %711
  call void @free(ptr noundef %335)
  br label %713

713:                                              ; preds = %712, %711
  %714 = load ptr, ptr @dump_file, align 8, !tbaa !38
  %715 = icmp eq ptr %714, null
  br i1 %715, label %725, label %716

716:                                              ; preds = %713
  %717 = load i32, ptr @dump_flags, align 4, !tbaa !53
  %718 = and i32 %717, 8
  %719 = icmp eq i32 %718, 0
  br i1 %719, label %725, label %720

720:                                              ; preds = %716
  %721 = load i32, ptr %647, align 8, !tbaa !49
  call void @expand_location(ptr dead_on_unwind nonnull writable sret(%struct.expanded_location) align 8 %10, i32 noundef %721) #15
  %722 = load ptr, ptr %10, align 8, !tbaa !108
  call void @expand_location(ptr dead_on_unwind nonnull writable sret(%struct.expanded_location) align 8 %11, i32 noundef %721) #15
  %723 = load i32, ptr %328, align 8, !tbaa !110
  %724 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %714, ptr noundef nonnull @.str.6, ptr noundef %722, i32 noundef %723)
  br label %725

725:                                              ; preds = %720, %716, %713, %603
  %726 = phi i8 [ 0, %603 ], [ 1, %720 ], [ 1, %716 ], [ 1, %713 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #15
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #15
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %10)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %11)
  %727 = or i8 %726, %332
  %728 = add nuw nsw i64 %331, 1
  %729 = icmp eq i64 %728, %329
  br i1 %729, label %730, label %330, !llvm.loop !111

730:                                              ; preds = %725
  %731 = icmp eq i8 %727, 0
  call void @free(ptr noundef %322)
  br i1 %731, label %746, label %732

732:                                              ; preds = %730
  call void @free_dominance_info(i32 noundef 1) #15
  call void @free_dominance_info(i32 noundef 2) #15
  %733 = load ptr, ptr @cfun, align 8, !tbaa !38
  %734 = icmp eq ptr %733, null
  br i1 %734, label %739, label %735

735:                                              ; preds = %732
  %736 = getelementptr inbounds %struct.function, ptr %733, i64 0, i32 3
  %737 = load ptr, ptr %736, align 8, !tbaa !112
  %738 = icmp eq ptr %737, null
  br i1 %738, label %739, label %740

739:                                              ; preds = %735, %732
  call void @fancy_abort(ptr noundef nonnull @.str.12, i32 noundef 51, ptr noundef nonnull @.str.4) #15
  br label %740

740:                                              ; preds = %735, %739
  %741 = getelementptr inbounds %struct.function, ptr %733, i64 0, i32 3
  %742 = load ptr, ptr %741, align 8, !tbaa !112
  %743 = getelementptr inbounds %struct.gimple_df, ptr %742, i64 0, i32 3
  %744 = load ptr, ptr %743, align 8, !tbaa !113
  call void @mark_sym_for_renaming(ptr noundef %744) #15
  br label %746

745:                                              ; preds = %324
  call void @free(ptr noundef %322)
  br label %746

746:                                              ; preds = %745, %730, %321, %740
  %747 = phi i32 [ 34850, %740 ], [ 0, %321 ], [ 0, %730 ], [ 0, %745 ]
  ret i32 %747
}

declare zeroext i8 @optimize_function_for_speed_p(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #10

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #1

declare void @print_gimple_stmt(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @free_dominance_info(i32 noundef) local_unnamed_addr #3

declare void @mark_sym_for_renaming(ptr noundef) local_unnamed_addr #3

declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc noundef zeroext i8 @check_target_format(ptr nocapture noundef readonly %0) unnamed_addr #11 !prof !37 {
  %2 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !49
  %4 = load i64, ptr %3, align 8
  %5 = and i64 %4, 65535
  %6 = icmp eq i64 %5, 14
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = tail call i32 @vector_type_mode(ptr noundef nonnull %3) #15
  br label %14

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.tree_type, ptr %3, i64 0, i32 6
  %11 = load i32, ptr %10, align 4
  %12 = lshr i32 %11, 16
  %13 = and i32 %12, 255
  br label %14

14:                                               ; preds = %9, %7
  %15 = phi i32 [ %8, %7 ], [ %13, %9 ]
  %16 = add i32 %15, -38
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %17
  %19 = load ptr, ptr %18, align 8, !tbaa !38
  switch i32 %15, label %34 [
    i32 38, label %20
    i32 39, label %28
  ]

20:                                               ; preds = %14
  %21 = icmp eq ptr %19, @ieee_single_format
  %22 = icmp eq ptr %19, @mips_single_format
  %23 = or i1 %21, %22
  %24 = icmp eq ptr %19, @motorola_single_format
  %25 = or i1 %24, %23
  br i1 %25, label %50, label %26

26:                                               ; preds = %20
  %27 = icmp eq i32 %15, 39
  br i1 %27, label %28, label %34

28:                                               ; preds = %14, %26
  %29 = icmp eq ptr %19, @ieee_double_format
  %30 = icmp eq ptr %19, @mips_double_format
  %31 = or i1 %29, %30
  %32 = icmp eq ptr %19, @motorola_double_format
  %33 = or i1 %32, %31
  br i1 %33, label %50, label %34

34:                                               ; preds = %28, %26, %14
  %35 = add i32 %15, -40
  %36 = icmp ult i32 %35, -2
  br i1 %36, label %37, label %49

37:                                               ; preds = %34
  %38 = icmp eq ptr %19, @ieee_quad_format
  %39 = icmp eq ptr %19, @mips_quad_format
  %40 = or i1 %38, %39
  %41 = icmp eq ptr %19, @ieee_extended_motorola_format
  %42 = or i1 %41, %40
  %43 = icmp eq ptr %19, @ieee_extended_intel_96_format
  %44 = or i1 %43, %42
  %45 = icmp eq ptr %19, @ieee_extended_intel_128_format
  %46 = or i1 %45, %44
  %47 = icmp eq ptr %19, @ieee_extended_intel_96_round_53_format
  %48 = or i1 %47, %46
  br i1 %48, label %50, label %49

49:                                               ; preds = %37, %34
  br label %50

50:                                               ; preds = %20, %28, %37, %49
  %51 = phi i8 [ 0, %49 ], [ 1, %37 ], [ 1, %28 ], [ 1, %20 ]
  ret i8 %51
}

declare i32 @vector_type_mode(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @real_compare(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @real_from_integer(ptr noundef, i32 noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

declare ptr @vec_heap_p_reserve_exact(ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @vec_heap_p_reserve(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @gsi_for_stmt(ptr dead_on_unwind writable sret(%struct.gimple_stmt_iterator) align 8, ptr noundef) local_unnamed_addr #3

declare ptr @split_block(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @gsi_insert_before(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @create_artificial_label(i32 noundef) local_unnamed_addr #3

declare ptr @gimple_build_label(ptr noundef) local_unnamed_addr #3

declare ptr @make_edge(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @expand_location(ptr dead_on_unwind writable sret(%struct.expanded_location) align 8, i32 noundef) local_unnamed_addr #3

declare ptr @create_tmp_var(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @build_int_cst(ptr noundef, i64 noundef) local_unnamed_addr #3

declare ptr @gimple_build_assign_stat(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @gimple_build_cond(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @make_ssa_name_fn(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc void @gen_one_condition(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr nocapture noundef %5, ptr nocapture noundef %6) unnamed_addr #11 !prof !37 {
  %8 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !49
  %10 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 5), align 8, !tbaa !38
  %11 = sext i32 %1 to i64
  %12 = tail call ptr @build_int_cst(ptr noundef %10, i64 noundef %11) #15
  %13 = tail call ptr @build_real_from_int_cst(ptr noundef %9, ptr noundef %12) #15
  %14 = tail call ptr @create_tmp_var(ptr noundef %9, ptr noundef %3) #15
  %15 = tail call ptr @gimple_build_assign_stat(ptr noundef %14, ptr noundef %0) #15
  %16 = load ptr, ptr @cfun, align 8, !tbaa !38
  %17 = tail call ptr @make_ssa_name_fn(ptr noundef %16, ptr noundef %14, ptr noundef %15) #15
  %18 = load i32, ptr %15, align 8
  %19 = and i32 %18, 255
  %20 = add nsw i32 %19, -10
  %21 = icmp ult i32 %20, -9
  br i1 %21, label %26, label %22

22:                                               ; preds = %7
  %23 = getelementptr inbounds %struct.gimple_statement_base, ptr %15, i64 0, i32 3
  %24 = load i32, ptr %23, align 4, !tbaa !49
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %22, %7
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1665, ptr noundef nonnull @.str.4) #15
  br label %27

27:                                               ; preds = %26, %22
  %28 = load i32, ptr %15, align 8
  %29 = and i32 %28, 255
  %30 = zext nneg i32 %29 to i64
  %31 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %30
  %32 = load i32, ptr %31, align 4, !tbaa !53
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %33
  %35 = load i64, ptr %34, align 8, !tbaa !85
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %27
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1622, ptr noundef nonnull @.str.4) #15
  br label %38

38:                                               ; preds = %37, %27
  %39 = getelementptr inbounds i8, ptr %15, i64 %35
  store ptr %17, ptr %39, align 8, !tbaa !38
  %40 = icmp eq ptr %17, null
  br i1 %40, label %47, label %41

41:                                               ; preds = %38
  %42 = load i64, ptr %17, align 8
  %43 = and i64 %42, 65535
  %44 = icmp eq i64 %43, 141
  br i1 %44, label %45, label %47

45:                                               ; preds = %41
  %46 = getelementptr inbounds %struct.tree_ssa_name, ptr %17, i64 0, i32 2
  store ptr %15, ptr %46, align 8, !tbaa !49
  br label %47

47:                                               ; preds = %38, %41, %45
  %48 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !38
  %49 = tail call ptr @create_tmp_var(ptr noundef %48, ptr noundef %4) #15
  %50 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !38
  %51 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef %2, ptr noundef %50, ptr noundef %17, ptr noundef %13) #15
  %52 = tail call ptr @gimple_build_assign_stat(ptr noundef %49, ptr noundef %51) #15
  %53 = load ptr, ptr @cfun, align 8, !tbaa !38
  %54 = tail call ptr @make_ssa_name_fn(ptr noundef %53, ptr noundef %49, ptr noundef %52) #15
  %55 = load i32, ptr %52, align 8
  %56 = and i32 %55, 255
  %57 = add nsw i32 %56, -10
  %58 = icmp ult i32 %57, -9
  br i1 %58, label %63, label %59

59:                                               ; preds = %47
  %60 = getelementptr inbounds %struct.gimple_statement_base, ptr %52, i64 0, i32 3
  %61 = load i32, ptr %60, align 4, !tbaa !49
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %59, %47
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1665, ptr noundef nonnull @.str.4) #15
  br label %64

64:                                               ; preds = %63, %59
  %65 = load i32, ptr %52, align 8
  %66 = and i32 %65, 255
  %67 = zext nneg i32 %66 to i64
  %68 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %67
  %69 = load i32, ptr %68, align 4, !tbaa !53
  %70 = zext i32 %69 to i64
  %71 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %70
  %72 = load i64, ptr %71, align 8, !tbaa !85
  %73 = icmp eq i64 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %64
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1622, ptr noundef nonnull @.str.4) #15
  br label %75

75:                                               ; preds = %74, %64
  %76 = getelementptr inbounds i8, ptr %52, i64 %72
  store ptr %54, ptr %76, align 8, !tbaa !38
  %77 = icmp eq ptr %54, null
  br i1 %77, label %84, label %78

78:                                               ; preds = %75
  %79 = load i64, ptr %54, align 8
  %80 = and i64 %79, 65535
  %81 = icmp eq i64 %80, 141
  br i1 %81, label %82, label %84

82:                                               ; preds = %78
  %83 = getelementptr inbounds %struct.tree_ssa_name, ptr %54, i64 0, i32 2
  store ptr %52, ptr %83, align 8, !tbaa !49
  br label %84

84:                                               ; preds = %75, %78, %82
  %85 = tail call ptr @gimple_build_cond_from_tree(ptr noundef %54, ptr noundef null, ptr noundef null) #15
  %86 = load i32, ptr %5, align 8, !tbaa !95
  %87 = add i32 %86, 1
  store i32 %87, ptr %5, align 8, !tbaa !95
  %88 = zext i32 %86 to i64
  %89 = getelementptr inbounds %struct.VEC_gimple_base, ptr %5, i64 0, i32 2, i64 %88
  store ptr %15, ptr %89, align 8, !tbaa !38
  %90 = add i32 %86, 2
  store i32 %90, ptr %5, align 8, !tbaa !95
  %91 = zext i32 %87 to i64
  %92 = getelementptr inbounds %struct.VEC_gimple_base, ptr %5, i64 0, i32 2, i64 %91
  store ptr %52, ptr %92, align 8, !tbaa !38
  %93 = add i32 %86, 3
  store i32 %93, ptr %5, align 8, !tbaa !95
  %94 = zext i32 %90 to i64
  %95 = getelementptr inbounds %struct.VEC_gimple_base, ptr %5, i64 0, i32 2, i64 %94
  store ptr %85, ptr %95, align 8, !tbaa !38
  %96 = load i32, ptr %6, align 4, !tbaa !53
  %97 = add i32 %96, 1
  store i32 %97, ptr %6, align 4, !tbaa !53
  ret void
}

declare ptr @build_real_from_int_cst(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @fold_build2_stat_loc(i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @gimple_build_cond_from_tree(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #12

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #13

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #14

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
attributes #10 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #11 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree nounwind }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #15 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!36}

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
!34 = distinct !{!35}
!35 = !{ptr @gate_call_cdce, ptr @optimize_function_for_speed_p, i64 38}
!36 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!37 = !{!"function_entry_count", i64 0}
!38 = !{!39, !39, i64 0}
!39 = !{!"any pointer", !40, i64 0}
!40 = !{!"omnipotent char", !41, i64 0}
!41 = !{!"Simple C/C++ TBAA"}
!42 = !{!43, !39, i64 8}
!43 = !{!"_IO_FILE", !44, i64 0, !39, i64 8, !39, i64 16, !39, i64 24, !39, i64 32, !39, i64 40, !39, i64 48, !39, i64 56, !39, i64 64, !39, i64 72, !39, i64 80, !39, i64 88, !39, i64 96, !39, i64 104, !44, i64 112, !44, i64 116, !45, i64 120, !46, i64 128, !40, i64 130, !40, i64 131, !39, i64 136, !45, i64 144, !39, i64 152, !39, i64 160, !39, i64 168, !39, i64 176, !45, i64 184, !44, i64 192, !40, i64 196}
!44 = !{!"int", !40, i64 0}
!45 = !{!"long", !40, i64 0}
!46 = !{!"short", !40, i64 0}
!47 = !{!43, !39, i64 16}
!48 = !{!"branch_weights", i32 2000, i32 1}
!49 = !{!40, !40, i64 0}
!50 = !{!43, !39, i64 40}
!51 = !{!43, !39, i64 48}
!52 = !{!43, !44, i64 0}
!53 = !{!44, !44, i64 0}
!54 = distinct !{!54, !55, !56}
!55 = !{!"llvm.loop.mustprogress"}
!56 = !{!"llvm.loop.unroll.disable"}
!57 = !{!"function_entry_count", i64 38}
!58 = !{!"tree-call-cdce.c;gate_call_cdce"}
!59 = !{!"branch_weights", i32 0, i32 38}
!60 = !{!"tree-call-cdce.c;tree_call_cdce"}
!61 = !{!62, !39, i64 8}
!62 = !{!"function", !39, i64 0, !39, i64 8, !39, i64 16, !39, i64 24, !39, i64 32, !39, i64 40, !39, i64 48, !39, i64 56, !39, i64 64, !39, i64 72, !39, i64 80, !39, i64 88, !39, i64 96, !44, i64 104, !44, i64 108, !44, i64 112, !44, i64 116, !44, i64 120, !44, i64 124, !39, i64 128, !44, i64 136, !44, i64 137, !44, i64 138, !44, i64 138, !44, i64 138, !44, i64 138, !44, i64 138, !44, i64 138, !44, i64 138, !44, i64 139, !44, i64 139, !44, i64 139, !44, i64 139, !44, i64 139, !44, i64 139, !44, i64 139}
!63 = !{!64, !39, i64 0}
!64 = !{!"control_flow_graph", !39, i64 0, !39, i64 8, !39, i64 16, !44, i64 24, !44, i64 28, !44, i64 32, !39, i64 40, !44, i64 48, !40, i64 52, !40, i64 60, !44, i64 68, !44, i64 72}
!65 = !{!66, !39, i64 56}
!66 = !{!"basic_block_def", !39, i64 0, !39, i64 8, !39, i64 16, !39, i64 24, !40, i64 32, !39, i64 48, !39, i64 56, !40, i64 64, !45, i64 72, !44, i64 80, !44, i64 84, !44, i64 88, !44, i64 92, !44, i64 96}
!67 = !{!64, !39, i64 8}
!68 = !{!"branch_weights", i32 1, i32 151}
!69 = !{!"branch_weights", i32 151, i32 586457}
!70 = distinct !{!70, !55, !56}
!71 = !{!66, !44, i64 96}
!72 = !{!73}
!73 = distinct !{!73, !74, !"gsi_start_bb: argument 0"}
!74 = distinct !{!74, !"gsi_start_bb"}
!75 = !{!"branch_weights", i32 146652, i32 0}
!76 = !{!"branch_weights", i32 0, i32 146652}
!77 = !{!78, !39, i64 0}
!78 = !{!"gimple_bb_info", !39, i64 0, !39, i64 8}
!79 = !{!80, !39, i64 0}
!80 = !{!"gimple_seq_d", !39, i64 0, !39, i64 8, !39, i64 16}
!81 = !{!"branch_weights", i32 1, i32 146651}
!82 = !{!83, !39, i64 0}
!83 = !{!"gimple_seq_node_d", !39, i64 0, !39, i64 8, !39, i64 16}
!84 = !{!"branch_weights", i32 69129, i32 286318}
!85 = !{!45, !45, i64 0}
!86 = !{!"branch_weights", i32 0, i32 69129}
!87 = !{!"branch_weights", i32 2273, i32 66856}
!88 = !{!"branch_weights", i32 0, i32 2273}
!89 = !{!"branch_weights", i32 2273, i32 0}
!90 = !{i8 0, i8 2}
!91 = !{i64 0, i64 4, !53, i64 0, i64 4, !53, i64 0, i64 4, !53, i64 0, i64 4, !53, i64 0, i64 4, !53, i64 0, i64 4, !53, i64 8, i64 24, !49}
!92 = !{!"branch_weights", i32 69129, i32 0}
!93 = !{!94, !44, i64 4}
!94 = !{!"VEC_gimple_base", !44, i64 0, !44, i64 4, !40, i64 8}
!95 = !{!94, !44, i64 0}
!96 = !{!83, !39, i64 16}
!97 = !{!"branch_weights", i32 146651, i32 208796}
!98 = distinct !{!98, !55, !56}
!99 = !{!"branch_weights", i32 38, i32 0}
!100 = !{i64 0, i64 8, !38, i64 8, i64 8, !38, i64 16, i64 8, !38}
!101 = !{!102, !39, i64 8}
!102 = !{!"edge_def", !39, i64 0, !39, i64 8, !40, i64 16, !39, i64 24, !39, i64 32, !44, i64 40, !44, i64 44, !44, i64 48, !44, i64 52, !45, i64 56}
!103 = distinct !{!103, !55, !56}
!104 = !{!102, !44, i64 48}
!105 = !{!102, !44, i64 52}
!106 = distinct !{!106, !55, !56}
!107 = distinct !{!107, !55, !56}
!108 = !{!109, !39, i64 0}
!109 = !{!"", !39, i64 0, !44, i64 8, !44, i64 12, !40, i64 16}
!110 = !{!109, !44, i64 8}
!111 = distinct !{!111, !55, !56}
!112 = !{!62, !39, i64 24}
!113 = !{!114, !39, i64 24}
!114 = !{!"gimple_df", !39, i64 0, !39, i64 8, !39, i64 16, !39, i64 24, !115, i64 32, !115, i64 48, !39, i64 64, !39, i64 72, !39, i64 80, !39, i64 88, !44, i64 96, !116, i64 104}
!115 = !{!"pt_solution", !44, i64 0, !44, i64 0, !44, i64 0, !44, i64 0, !44, i64 0, !44, i64 0, !39, i64 8}
!116 = !{!"ssa_operands", !39, i64 0, !44, i64 8, !44, i64 12, !40, i64 16, !39, i64 24, !39, i64 32}
