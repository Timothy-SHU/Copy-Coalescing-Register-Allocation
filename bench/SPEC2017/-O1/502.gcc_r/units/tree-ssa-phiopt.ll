; ModuleID = 'tree-ssa-phiopt.c'
source_filename = "tree-ssa-phiopt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gimple_opt_pass = type { %struct.opt_pass }
%struct.opt_pass = type { i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct._IO_FILE = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, [1 x i8], ptr, i64, ptr, ptr, ptr, ptr, i64, i32, [20 x i8] }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.control_flow_graph = type { ptr, ptr, ptr, i32, i32, i32, ptr, i32, [2 x i32], [2 x i32], i32, i32 }
%struct.basic_block_def = type { ptr, ptr, ptr, ptr, [2 x ptr], ptr, ptr, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%union.basic_block_il_dependent = type { ptr }
%struct.simple_bitmap_def = type { ptr, i32, i32, [1 x i64] }
%struct.VEC_edge_base = type { i32, i32, [1 x ptr] }
%struct.gimple_seq_node_d = type { ptr, ptr, ptr }
%struct.gimple_stmt_iterator = type { ptr, ptr, ptr }
%struct.dom_walk_data = type { i8, ptr, ptr, ptr, ptr, ptr, i64, ptr }
%struct.edge_def = type { ptr, ptr, %union.edge_def_insns, ptr, ptr, i32, i32, i32, i32, i64 }
%union.edge_def_insns = type { ptr }
%struct.gimple_statement_base = type { i32, i32, i32, i32, ptr, ptr }
%struct.tree_common = type { %struct.tree_base, ptr, ptr }
%struct.tree_base = type { i64 }
%struct.tree_var_decl = type { %struct.tree_decl_with_vis, ptr }
%struct.tree_decl_with_vis = type { %struct.tree_decl_with_rtl, ptr, ptr, ptr, i24 }
%struct.tree_decl_with_rtl = type { %struct.tree_decl_common, ptr }
%struct.tree_decl_common = type { %struct.tree_decl_minimal, ptr, i40, i32, ptr, ptr, ptr, ptr, ptr }
%struct.tree_decl_minimal = type { %struct.tree_common, i32, i32, ptr, ptr }
%struct.tree_parm_decl = type { %struct.tree_decl_with_rtl, ptr, ptr }
%struct.tree_result_decl = type { %struct.tree_decl_with_rtl, ptr }
%struct.tree_ssa_name = type { %struct.tree_common, ptr, ptr, i32, ptr, %struct.ssa_use_operand_d }
%struct.ssa_use_operand_d = type { ptr, ptr, %union.anon, ptr }
%union.anon = type { ptr }
%struct.gimple_statement_phi = type { %struct.gimple_statement_base, i32, i32, ptr, [1 x %struct.phi_arg_d] }
%struct.phi_arg_d = type { %struct.ssa_use_operand_d, ptr, i32 }
%struct.gimple_seq_d = type { ptr, ptr, ptr }
%struct.gimple_bb_info = type { ptr, ptr }
%struct.tree_type = type { %struct.tree_common, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, %union.tree_type_symtab, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.tree_type_symtab = type { ptr }
%struct.real_format = type { ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.name_to_bb = type { ptr, ptr, i8 }
%struct.tree_exp = type { %struct.tree_common, i32, ptr, [1 x ptr] }

@stdout = external local_unnamed_addr global ptr, align 8
@stdin = external local_unnamed_addr global ptr, align 8
@cfun = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [18 x i8] c"tree-ssa-phiopt.c\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"phiopt\00", align 1
@pass_phiopt = dso_local local_unnamed_addr global %struct.gimple_opt_pass { %struct.opt_pass { i32 0, ptr @.str.2, ptr @gate_phiopt, ptr @tree_ssa_phiopt, ptr null, ptr null, i32 0, i32 73, i32 40, i32 0, i32 0, i32 0, i32 31 } }, align 8
@.str.3 = private unnamed_addr constant [7 x i8] c"cselim\00", align 1
@pass_cselim = dso_local local_unnamed_addr global %struct.gimple_opt_pass { %struct.opt_pass { i32 0, ptr @.str.3, ptr @gate_cselim, ptr @tree_ssa_cs_elim, ptr null, ptr null, i32 0, i32 73, i32 40, i32 0, i32 0, i32 0, i32 31 } }, align 8
@.str.4 = private unnamed_addr constant [16 x i8] c"./basic-block.h\00", align 1
@condstoretemp = internal unnamed_addr global ptr null, align 8
@seen_ssa_names = internal unnamed_addr global ptr null, align 8
@nontrap_set = internal unnamed_addr global ptr null, align 8
@htab_hash_pointer = external local_unnamed_addr global ptr, align 8
@gimple_ops_offset_ = external local_unnamed_addr constant [0 x i64], align 8
@.str.5 = private unnamed_addr constant [11 x i8] c"./gimple.h\00", align 1
@gss_for_code_ = external local_unnamed_addr constant [0 x i32], align 4
@gimple_rhs_class_table = external local_unnamed_addr constant [0 x i8], align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"cstore\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"./tree-flow-inline.h\00", align 1
@global_trees = external local_unnamed_addr global [131 x ptr], align 16
@dump_file = external local_unnamed_addr global ptr, align 8
@dump_flags = external local_unnamed_addr global i32, align 4
@.str.8 = private unnamed_addr constant [75 x i8] c"COND_EXPR in block %d and PHI in block %d converted to straightline code.\0A\00", align 1
@mode_class = external local_unnamed_addr constant [87 x i8], align 16
@real_format_for_mode = external local_unnamed_addr global [7 x ptr], align 16
@mode_inner = external local_unnamed_addr constant [87 x i8], align 16
@flag_signed_zeros = external local_unnamed_addr global i32, align 4
@flag_finite_math_only = external local_unnamed_addr global i32, align 4
@flag_tree_cselim = external local_unnamed_addr global i32, align 4

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @vprintf(ptr noalias nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 !prof !74 {
  %3 = load ptr, ptr @stdout, align 8, !tbaa !75
  %4 = tail call i32 @vfprintf(ptr noundef %3, ptr noundef %0, ptr noundef %1)
  ret i32 %4
}

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @getchar() local_unnamed_addr #0 !prof !74 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !75
  %2 = tail call i32 @getc(ptr noundef %1)
  ret i32 %2
}

; Function Attrs: nofree nounwind
declare noundef i32 @getc(ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !74 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !79
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !84
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !85

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #21
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !79
  %11 = load i8, ptr %3, align 1, !tbaa !86
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

declare i32 @__uflow(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !74 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !79
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !84
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !85

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #21
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !79
  %11 = load i8, ptr %3, align 1, !tbaa !86
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #2 !prof !74 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !75
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !79
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !84
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !85

7:                                                ; preds = %0
  %8 = tail call i32 @__uflow(ptr noundef %1) #21
  br label %13

9:                                                ; preds = %0
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !79
  %11 = load i8, ptr %3, align 1, !tbaa !86
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @putchar(i32 noundef %0) local_unnamed_addr #0 !prof !74 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !75
  %3 = tail call i32 @putc(i32 noundef %0, ptr noundef %2)
  ret i32 %3
}

; Function Attrs: nofree nounwind
declare noundef i32 @putc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !74 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !87
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !88
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !85

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #21
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !87
  store i8 %12, ptr %4, align 1, !tbaa !86
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

declare i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !74 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !87
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !88
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !85

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #21
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !87
  store i8 %12, ptr %4, align 1, !tbaa !86
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 noundef %0) local_unnamed_addr #2 !prof !74 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !75
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !87
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !88
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !85

8:                                                ; preds = %1
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %2, i32 noundef %9) #21
  br label %15

11:                                               ; preds = %1
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !87
  store i8 %12, ptr %4, align 1, !tbaa !86
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i64 @getline(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 !prof !74 {
  %4 = tail call i64 @__getdelim(ptr noundef %0, ptr noundef %1, i32 noundef 10, ptr noundef %2) #21
  ret i64 %4
}

declare i64 @__getdelim(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @feof_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !74 {
  %2 = load i32, ptr %0, align 8, !tbaa !89
  %3 = lshr i32 %2, 4
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @ferror_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !74 {
  %2 = load i32, ptr %0, align 8, !tbaa !89
  %3 = lshr i32 %2, 5
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @tolower(i32 noundef %0) local_unnamed_addr #5 !prof !74 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_tolower_loc() #21
  %6 = load ptr, ptr %5, align 8, !tbaa !75
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !90
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_tolower_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @toupper(i32 noundef %0) local_unnamed_addr #5 !prof !74 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_toupper_loc() #21
  %6 = load ptr, ptr %5, align 8, !tbaa !75
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !90
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_toupper_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i32 @atoi(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !74 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  %3 = trunc i64 %2 to i32
  ret i32 %3
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atol(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !74 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atoll(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !74 {
  %2 = tail call i64 @strtoll(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtoll(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local noundef ptr @bsearch(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #2 !prof !74 {
  %6 = icmp eq i64 %2, 0
  br i1 %6, label %24, label %7

7:                                                ; preds = %5, %20
  %8 = phi i64 [ %22, %20 ], [ 0, %5 ]
  %9 = phi i64 [ %21, %20 ], [ %2, %5 ]
  %10 = add i64 %8, %9
  %11 = lshr i64 %10, 1
  %12 = mul i64 %11, %3
  %13 = getelementptr inbounds i8, ptr %1, i64 %12
  %14 = tail call i32 %4(ptr noundef %0, ptr noundef %13) #21
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
  br i1 %23, label %7, label %24, !llvm.loop !91

24:                                               ; preds = %16, %20, %5
  %25 = phi ptr [ null, %5 ], [ %13, %16 ], [ null, %20 ]
  ret ptr %25
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local double @atof(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !74 {
  %2 = tail call double @strtod(ptr nocapture noundef %0, ptr noundef null)
  ret double %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local ptr @blocks_in_phiopt_order() local_unnamed_addr #9 !prof !94 {
  %1 = load ptr, ptr @cfun, align 8, !tbaa !75
  %2 = getelementptr inbounds %struct.function, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !95
  %4 = getelementptr inbounds %struct.control_flow_graph, ptr %3, i64 0, i32 3
  %5 = load i32, ptr %4, align 8, !tbaa !97
  %6 = sext i32 %5 to i64
  %7 = shl nsw i64 %6, 3
  %8 = tail call ptr @xmalloc(i64 noundef %7) #21
  %9 = load ptr, ptr @cfun, align 8, !tbaa !75
  %10 = getelementptr inbounds %struct.function, ptr %9, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !95
  %12 = getelementptr inbounds %struct.control_flow_graph, ptr %11, i64 0, i32 3
  %13 = load i32, ptr %12, align 8, !tbaa !97
  %14 = add nsw i32 %13, -2
  %15 = getelementptr inbounds %struct.control_flow_graph, ptr %11, i64 0, i32 5
  %16 = load i32, ptr %15, align 8, !tbaa !99
  %17 = tail call ptr @sbitmap_alloc(i32 noundef %16) #21
  tail call void @sbitmap_zero(ptr noundef %17) #21
  %18 = load ptr, ptr @cfun, align 8, !tbaa !75
  %19 = getelementptr inbounds %struct.function, ptr %18, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !95
  %21 = load ptr, ptr %20, align 8, !tbaa !100
  %22 = getelementptr inbounds %struct.basic_block_def, ptr %21, i64 0, i32 9
  %23 = load i32, ptr %22, align 8, !tbaa !101
  %24 = load ptr, ptr %17, align 8, !tbaa !103
  %25 = icmp eq ptr %24, null
  br i1 %25, label %40, label %26, !prof !105

26:                                               ; preds = %0
  %27 = lshr i32 %23, 6
  %28 = zext nneg i32 %27 to i64
  %29 = getelementptr inbounds %struct.simple_bitmap_def, ptr %17, i64 0, i32 3, i64 %28
  %30 = load i64, ptr %29, align 8, !tbaa !106
  %31 = and i32 %23, 63
  %32 = zext nneg i32 %31 to i64
  %33 = shl nuw i64 1, %32
  %34 = and i64 %30, %33
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %26
  %37 = getelementptr inbounds i8, ptr %24, i64 %28
  %38 = load i8, ptr %37, align 1, !tbaa !86
  %39 = add i8 %38, 1
  store i8 %39, ptr %37, align 1, !tbaa !86
  br label %40

40:                                               ; preds = %0, %26, %36
  %41 = and i32 %23, 63
  %42 = zext nneg i32 %41 to i64
  %43 = shl nuw i64 1, %42
  %44 = lshr i32 %23, 6
  %45 = zext nneg i32 %44 to i64
  %46 = getelementptr inbounds %struct.simple_bitmap_def, ptr %17, i64 0, i32 3, i64 %45
  %47 = load i64, ptr %46, align 8, !tbaa !106
  %48 = or i64 %47, %43
  store i64 %48, ptr %46, align 8, !tbaa !106
  %49 = load ptr, ptr @cfun, align 8, !tbaa !75
  %50 = getelementptr inbounds %struct.function, ptr %49, i64 0, i32 1
  %51 = load ptr, ptr %50, align 8, !tbaa !95
  %52 = load ptr, ptr %51, align 8, !tbaa !100
  %53 = getelementptr inbounds %struct.basic_block_def, ptr %52, i64 0, i32 6
  %54 = load ptr, ptr %53, align 8, !tbaa !107
  %55 = getelementptr inbounds %struct.control_flow_graph, ptr %51, i64 0, i32 1
  %56 = load ptr, ptr %55, align 8, !tbaa !108
  %57 = icmp eq ptr %54, %56
  br i1 %57, label %261, label %58, !prof !109

58:                                               ; preds = %40, %251
  %59 = phi ptr [ %254, %251 ], [ %54, %40 ]
  %60 = phi i32 [ %252, %251 ], [ %14, %40 ]
  %61 = getelementptr inbounds %struct.basic_block_def, ptr %59, i64 0, i32 9
  %62 = load i32, ptr %61, align 8, !tbaa !101
  %63 = lshr i32 %62, 6
  %64 = zext nneg i32 %63 to i64
  %65 = getelementptr inbounds %struct.simple_bitmap_def, ptr %17, i64 0, i32 3, i64 %64
  %66 = load i64, ptr %65, align 8, !tbaa !106
  %67 = and i32 %62, 63
  %68 = zext nneg i32 %67 to i64
  %69 = shl nuw i64 1, %68
  %70 = and i64 %69, %66
  %71 = icmp eq i64 %70, 0
  br i1 %71, label %72, label %251, !prof !110

72:                                               ; preds = %58, %124
  %73 = phi ptr [ %128, %124 ], [ %59, %58 ]
  %74 = phi i32 [ %118, %124 ], [ 1, %58 ]
  %75 = load ptr, ptr %73, align 8, !tbaa !111
  %76 = icmp eq ptr %75, null
  br i1 %76, label %81, label %77, !prof !112

77:                                               ; preds = %72
  %78 = load i32, ptr %75, align 8, !tbaa !113
  %79 = icmp eq i32 %78, 1
  %80 = zext i1 %79 to i8
  br label %81

81:                                               ; preds = %72, %77
  %82 = phi i8 [ %80, %77 ], [ 0, %72 ]
  %83 = icmp eq i8 %82, 0
  br i1 %83, label %129, label %84, !prof !115

84:                                               ; preds = %81
  br i1 %76, label %88, label %85, !prof !116

85:                                               ; preds = %84
  %86 = load i32, ptr %75, align 8, !tbaa !113
  %87 = icmp eq i32 %86, 1
  br i1 %87, label %89, label %88, !prof !117

88:                                               ; preds = %85, %84
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 655, ptr noundef nonnull @.str.1) #21
  br label %89

89:                                               ; preds = %85, %88
  %90 = load ptr, ptr %73, align 8, !tbaa !111
  %91 = getelementptr inbounds %struct.VEC_edge_base, ptr %90, i64 0, i32 2, i64 0
  %92 = load ptr, ptr %91, align 8, !tbaa !75
  %93 = load ptr, ptr %92, align 8, !tbaa !118
  %94 = getelementptr inbounds %struct.basic_block_def, ptr %93, i64 0, i32 9
  %95 = load i32, ptr %94, align 8, !tbaa !101
  %96 = lshr i32 %95, 6
  %97 = zext nneg i32 %96 to i64
  %98 = getelementptr inbounds %struct.simple_bitmap_def, ptr %17, i64 0, i32 3, i64 %97
  %99 = load i64, ptr %98, align 8, !tbaa !106
  %100 = icmp eq ptr %90, null
  br i1 %100, label %104, label %101, !prof !116

101:                                              ; preds = %89
  %102 = load i32, ptr %90, align 8, !tbaa !113
  %103 = icmp eq i32 %102, 1
  br i1 %103, label %105, label %104, !prof !117

104:                                              ; preds = %101, %89
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 655, ptr noundef nonnull @.str.1) #21
  br label %105

105:                                              ; preds = %101, %104
  %106 = load ptr, ptr %73, align 8, !tbaa !111
  %107 = getelementptr inbounds %struct.VEC_edge_base, ptr %106, i64 0, i32 2, i64 0
  %108 = load ptr, ptr %107, align 8, !tbaa !75
  %109 = load ptr, ptr %108, align 8, !tbaa !118
  %110 = getelementptr inbounds %struct.basic_block_def, ptr %109, i64 0, i32 9
  %111 = load i32, ptr %110, align 8, !tbaa !101
  %112 = and i32 %111, 63
  %113 = zext nneg i32 %112 to i64
  %114 = shl nuw i64 1, %113
  %115 = and i64 %114, %99
  %116 = icmp eq i64 %115, 0
  br i1 %116, label %117, label %129, !prof !120

117:                                              ; preds = %105
  %118 = add i32 %74, 1
  %119 = icmp eq ptr %106, null
  br i1 %119, label %123, label %120, !prof !121

120:                                              ; preds = %117
  %121 = load i32, ptr %106, align 8, !tbaa !113
  %122 = icmp eq i32 %121, 1
  br i1 %122, label %124, label %123, !prof !122

123:                                              ; preds = %120, %117
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 655, ptr noundef nonnull @.str.1) #21
  br label %124

124:                                              ; preds = %120, %123
  %125 = load ptr, ptr %73, align 8, !tbaa !111
  %126 = getelementptr inbounds %struct.VEC_edge_base, ptr %125, i64 0, i32 2, i64 0
  %127 = load ptr, ptr %126, align 8, !tbaa !75
  %128 = load ptr, ptr %127, align 8, !tbaa !118
  br label %72, !llvm.loop !123

129:                                              ; preds = %81, %105
  %130 = sub i32 %60, %74
  br label %131

131:                                              ; preds = %212, %129
  %132 = phi ptr [ %59, %129 ], [ %216, %212 ]
  %133 = phi i32 [ %130, %129 ], [ %217, %212 ]
  %134 = load ptr, ptr %132, align 8, !tbaa !111
  %135 = icmp eq ptr %134, null
  br i1 %135, label %140, label %136, !prof !112

136:                                              ; preds = %131
  %137 = load i32, ptr %134, align 8, !tbaa !113
  %138 = icmp eq i32 %137, 1
  %139 = zext i1 %138 to i8
  br label %140

140:                                              ; preds = %131, %136
  %141 = phi i8 [ %139, %136 ], [ 0, %131 ]
  %142 = icmp eq i8 %141, 0
  br i1 %142, label %218, label %143, !prof !115

143:                                              ; preds = %140
  br i1 %135, label %147, label %144, !prof !116

144:                                              ; preds = %143
  %145 = load i32, ptr %134, align 8, !tbaa !113
  %146 = icmp eq i32 %145, 1
  br i1 %146, label %148, label %147, !prof !117

147:                                              ; preds = %144, %143
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 655, ptr noundef nonnull @.str.1) #21
  br label %148

148:                                              ; preds = %144, %147
  %149 = load ptr, ptr %132, align 8, !tbaa !111
  %150 = getelementptr inbounds %struct.VEC_edge_base, ptr %149, i64 0, i32 2, i64 0
  %151 = load ptr, ptr %150, align 8, !tbaa !75
  %152 = load ptr, ptr %151, align 8, !tbaa !118
  %153 = getelementptr inbounds %struct.basic_block_def, ptr %152, i64 0, i32 9
  %154 = load i32, ptr %153, align 8, !tbaa !101
  %155 = lshr i32 %154, 6
  %156 = zext nneg i32 %155 to i64
  %157 = getelementptr inbounds %struct.simple_bitmap_def, ptr %17, i64 0, i32 3, i64 %156
  %158 = load i64, ptr %157, align 8, !tbaa !106
  %159 = icmp eq ptr %149, null
  br i1 %159, label %163, label %160, !prof !116

160:                                              ; preds = %148
  %161 = load i32, ptr %149, align 8, !tbaa !113
  %162 = icmp eq i32 %161, 1
  br i1 %162, label %164, label %163, !prof !117

163:                                              ; preds = %160, %148
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 655, ptr noundef nonnull @.str.1) #21
  br label %164

164:                                              ; preds = %160, %163
  %165 = load ptr, ptr %132, align 8, !tbaa !111
  %166 = getelementptr inbounds %struct.VEC_edge_base, ptr %165, i64 0, i32 2, i64 0
  %167 = load ptr, ptr %166, align 8, !tbaa !75
  %168 = load ptr, ptr %167, align 8, !tbaa !118
  %169 = getelementptr inbounds %struct.basic_block_def, ptr %168, i64 0, i32 9
  %170 = load i32, ptr %169, align 8, !tbaa !101
  %171 = and i32 %170, 63
  %172 = zext nneg i32 %171 to i64
  %173 = shl nuw i64 1, %172
  %174 = and i64 %173, %158
  %175 = icmp eq i64 %174, 0
  br i1 %175, label %176, label %218, !prof !120

176:                                              ; preds = %164
  %177 = zext i32 %133 to i64
  %178 = getelementptr inbounds ptr, ptr %8, i64 %177
  store ptr %132, ptr %178, align 8, !tbaa !75
  %179 = getelementptr inbounds %struct.basic_block_def, ptr %132, i64 0, i32 9
  %180 = load i32, ptr %179, align 8, !tbaa !101
  %181 = load ptr, ptr %17, align 8, !tbaa !103
  %182 = icmp eq ptr %181, null
  br i1 %182, label %197, label %183, !prof !122

183:                                              ; preds = %176
  %184 = lshr i32 %180, 6
  %185 = zext nneg i32 %184 to i64
  %186 = getelementptr inbounds %struct.simple_bitmap_def, ptr %17, i64 0, i32 3, i64 %185
  %187 = load i64, ptr %186, align 8, !tbaa !106
  %188 = and i32 %180, 63
  %189 = zext nneg i32 %188 to i64
  %190 = shl nuw i64 1, %189
  %191 = and i64 %187, %190
  %192 = icmp eq i64 %191, 0
  br i1 %192, label %193, label %197

193:                                              ; preds = %183
  %194 = getelementptr inbounds i8, ptr %181, i64 %185
  %195 = load i8, ptr %194, align 1, !tbaa !86
  %196 = add i8 %195, 1
  store i8 %196, ptr %194, align 1, !tbaa !86
  br label %197

197:                                              ; preds = %176, %183, %193
  %198 = and i32 %180, 63
  %199 = zext nneg i32 %198 to i64
  %200 = shl nuw i64 1, %199
  %201 = lshr i32 %180, 6
  %202 = zext nneg i32 %201 to i64
  %203 = getelementptr inbounds %struct.simple_bitmap_def, ptr %17, i64 0, i32 3, i64 %202
  %204 = load i64, ptr %203, align 8, !tbaa !106
  %205 = or i64 %204, %200
  store i64 %205, ptr %203, align 8, !tbaa !106
  %206 = load ptr, ptr %132, align 8, !tbaa !111
  %207 = icmp eq ptr %206, null
  br i1 %207, label %211, label %208, !prof !121

208:                                              ; preds = %197
  %209 = load i32, ptr %206, align 8, !tbaa !113
  %210 = icmp eq i32 %209, 1
  br i1 %210, label %212, label %211, !prof !122

211:                                              ; preds = %208, %197
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 655, ptr noundef nonnull @.str.1) #21
  br label %212

212:                                              ; preds = %208, %211
  %213 = load ptr, ptr %132, align 8, !tbaa !111
  %214 = getelementptr inbounds %struct.VEC_edge_base, ptr %213, i64 0, i32 2, i64 0
  %215 = load ptr, ptr %214, align 8, !tbaa !75
  %216 = load ptr, ptr %215, align 8, !tbaa !118
  %217 = add i32 %133, 1
  br label %131, !llvm.loop !124

218:                                              ; preds = %140, %164
  %219 = zext i32 %133 to i64
  %220 = getelementptr inbounds ptr, ptr %8, i64 %219
  store ptr %132, ptr %220, align 8, !tbaa !75
  %221 = getelementptr inbounds %struct.basic_block_def, ptr %132, i64 0, i32 9
  %222 = load i32, ptr %221, align 8, !tbaa !101
  %223 = load ptr, ptr %17, align 8, !tbaa !103
  %224 = icmp eq ptr %223, null
  br i1 %224, label %239, label %225, !prof !125

225:                                              ; preds = %218
  %226 = lshr i32 %222, 6
  %227 = zext nneg i32 %226 to i64
  %228 = getelementptr inbounds %struct.simple_bitmap_def, ptr %17, i64 0, i32 3, i64 %227
  %229 = load i64, ptr %228, align 8, !tbaa !106
  %230 = and i32 %222, 63
  %231 = zext nneg i32 %230 to i64
  %232 = shl nuw i64 1, %231
  %233 = and i64 %229, %232
  %234 = icmp eq i64 %233, 0
  br i1 %234, label %235, label %239

235:                                              ; preds = %225
  %236 = getelementptr inbounds i8, ptr %223, i64 %227
  %237 = load i8, ptr %236, align 1, !tbaa !86
  %238 = add i8 %237, 1
  store i8 %238, ptr %236, align 1, !tbaa !86
  br label %239

239:                                              ; preds = %218, %225, %235
  %240 = and i32 %222, 63
  %241 = zext nneg i32 %240 to i64
  %242 = shl nuw i64 1, %241
  %243 = lshr i32 %222, 6
  %244 = zext nneg i32 %243 to i64
  %245 = getelementptr inbounds %struct.simple_bitmap_def, ptr %17, i64 0, i32 3, i64 %244
  %246 = load i64, ptr %245, align 8, !tbaa !106
  %247 = or i64 %246, %242
  store i64 %247, ptr %245, align 8, !tbaa !106
  %248 = add i32 %60, -1
  %249 = icmp eq i32 %133, %248
  br i1 %249, label %251, label %250, !prof !125

250:                                              ; preds = %239
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 367, ptr noundef nonnull @.str.1) #21
  br label %251

251:                                              ; preds = %250, %239, %58
  %252 = phi i32 [ %60, %58 ], [ %130, %239 ], [ %130, %250 ]
  %253 = getelementptr inbounds %struct.basic_block_def, ptr %59, i64 0, i32 6
  %254 = load ptr, ptr %253, align 8, !tbaa !107
  %255 = load ptr, ptr @cfun, align 8, !tbaa !75
  %256 = getelementptr inbounds %struct.function, ptr %255, i64 0, i32 1
  %257 = load ptr, ptr %256, align 8, !tbaa !95
  %258 = getelementptr inbounds %struct.control_flow_graph, ptr %257, i64 0, i32 1
  %259 = load ptr, ptr %258, align 8, !tbaa !108
  %260 = icmp eq ptr %254, %259
  br i1 %260, label %261, label %58, !prof !126, !llvm.loop !127

261:                                              ; preds = %251, %40
  %262 = phi i32 [ %14, %40 ], [ %252, %251 ]
  %263 = load ptr, ptr %17, align 8, !tbaa !103
  tail call void @free(ptr noundef %263)
  tail call void @free(ptr noundef %17)
  %264 = icmp eq i32 %262, 0
  br i1 %264, label %266, label %265, !prof !105

265:                                              ; preds = %261
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 372, ptr noundef nonnull @.str.1) #21
  br label %266

266:                                              ; preds = %261, %265
  ret ptr %8
}

declare ptr @xmalloc(i64 noundef) local_unnamed_addr #3

declare ptr @sbitmap_alloc(i32 noundef) local_unnamed_addr #3

declare void @sbitmap_zero(ptr noundef) local_unnamed_addr #3

declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) #10

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i8 @empty_block_p(ptr nocapture noundef readonly %0) local_unnamed_addr #11 !prof !128 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 13
  %3 = load i32, ptr %2, align 8, !tbaa !129, !noalias !130
  %4 = and i32 %3, 512
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %12, !prof !135

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !86, !noalias !130
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10, !prof !136

10:                                               ; preds = %6
  %11 = load ptr, ptr %8, align 8, !tbaa !137, !noalias !130
  br label %12

12:                                               ; preds = %10, %6, %1
  %13 = phi ptr [ %11, %10 ], [ null, %6 ], [ null, %1 ]
  %14 = icmp eq ptr %13, null
  br i1 %14, label %17, label %15, !prof !136

15:                                               ; preds = %12
  %16 = load ptr, ptr %13, align 8, !tbaa !139, !noalias !130
  br label %17

17:                                               ; preds = %15, %12
  %18 = phi ptr [ %16, %15 ], [ null, %12 ]
  %19 = icmp eq ptr %18, null
  br i1 %19, label %53, label %20, !prof !141

20:                                               ; preds = %17
  %21 = load ptr, ptr %18, align 8, !tbaa !142, !noalias !144
  %22 = load i32, ptr %21, align 8, !noalias !144
  %23 = and i32 %22, 255
  %24 = icmp eq i32 %23, 4
  br i1 %24, label %30, label %35, !prof !145

25:                                               ; preds = %30
  %26 = load ptr, ptr %33, align 8, !tbaa !142, !noalias !144
  %27 = load i32, ptr %26, align 8, !noalias !144
  %28 = and i32 %27, 255
  %29 = icmp eq i32 %28, 4
  br i1 %29, label %30, label %35, !prof !146, !llvm.loop !147

30:                                               ; preds = %20, %25
  %31 = phi ptr [ %33, %25 ], [ %18, %20 ]
  %32 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %31, i64 0, i32 2
  %33 = load ptr, ptr %32, align 8, !tbaa !148, !noalias !144
  %34 = icmp eq ptr %33, null
  br i1 %34, label %53, label %25, !prof !149, !llvm.loop !147

35:                                               ; preds = %25, %20
  %36 = phi i1 [ %19, %20 ], [ %34, %25 ]
  %37 = phi ptr [ %18, %20 ], [ %33, %25 ]
  br i1 %36, label %53, label %38, !prof !150

38:                                               ; preds = %35
  %39 = load ptr, ptr %37, align 8, !tbaa !142
  %40 = load i32, ptr %39, align 8
  %41 = and i32 %40, 255
  %42 = icmp eq i32 %41, 2
  br i1 %42, label %43, label %53, !prof !151

43:                                               ; preds = %38, %48
  %44 = phi ptr [ %46, %48 ], [ %37, %38 ]
  %45 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %44, i64 0, i32 2
  %46 = load ptr, ptr %45, align 8, !tbaa !148
  %47 = icmp eq ptr %46, null
  br i1 %47, label %53, label %48

48:                                               ; preds = %43
  %49 = load ptr, ptr %46, align 8, !tbaa !142
  %50 = load i32, ptr %49, align 8
  %51 = and i32 %50, 255
  %52 = icmp eq i32 %51, 2
  br i1 %52, label %43, label %53, !llvm.loop !152

53:                                               ; preds = %30, %43, %48, %17, %38, %35
  %54 = phi i8 [ 1, %35 ], [ 0, %38 ], [ 1, %17 ], [ 1, %43 ], [ 0, %48 ], [ 1, %30 ]
  ret i8 %54
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef zeroext i8 @gate_phiopt() #12 !prof !153 !PGOFuncName !154 {
  ret i8 1
}

; Function Attrs: nounwind uwtable
define internal i32 @tree_ssa_phiopt() #9 !prof !153 !PGOFuncName !155 {
  %1 = tail call fastcc i32 @tree_ssa_phiopt_worker(i8 noundef zeroext 0), !range !156
  ret i32 %1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal zeroext i8 @gate_cselim() #13 !prof !157 !PGOFuncName !158 {
  %1 = load i32, ptr @flag_tree_cselim, align 4, !tbaa !90
  %2 = trunc i32 %1 to i8
  ret i8 %2
}

; Function Attrs: nounwind uwtable
define internal i32 @tree_ssa_cs_elim() #9 !prof !157 !PGOFuncName !159 {
  %1 = tail call fastcc i32 @tree_ssa_phiopt_worker(i8 noundef zeroext 1), !range !156
  ret i32 %1
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @tree_ssa_phiopt_worker(i8 noundef zeroext %0) unnamed_addr #9 !prof !160 !PGOFuncName !161 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca %struct.gimple_stmt_iterator, align 8
  %5 = alloca %struct.gimple_stmt_iterator, align 8
  %6 = alloca %struct.gimple_stmt_iterator, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca %struct.gimple_stmt_iterator, align 8
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  %14 = alloca %struct.gimple_stmt_iterator, align 8
  %15 = alloca %struct.gimple_stmt_iterator, align 8
  %16 = alloca %struct.dom_walk_data, align 8
  %17 = icmp eq i8 %0, 0
  br i1 %17, label %34, label %18, !prof !162

18:                                               ; preds = %1
  store ptr null, ptr @condstoretemp, align 8, !tbaa !75
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %16) #21
  %19 = tail call ptr @pointer_set_create() #21
  %20 = tail call ptr @htab_create(i64 noundef 128, ptr noundef nonnull @name_to_bb_hash, ptr noundef nonnull @name_to_bb_eq, ptr noundef nonnull @free) #21
  store ptr %20, ptr @seen_ssa_names, align 8, !tbaa !75
  tail call void @calculate_dominance_info(i32 noundef 1) #21
  store ptr %19, ptr @nontrap_set, align 8, !tbaa !75
  %21 = load i8, ptr %16, align 8
  %22 = and i8 %21, -4
  %23 = or disjoint i8 %22, 1
  store i8 %23, ptr %16, align 8
  %24 = getelementptr inbounds %struct.dom_walk_data, ptr %16, i64 0, i32 1
  store ptr null, ptr %24, align 8, !tbaa !163
  %25 = getelementptr inbounds %struct.dom_walk_data, ptr %16, i64 0, i32 2
  store ptr @nt_init_block, ptr %25, align 8, !tbaa !165
  %26 = getelementptr inbounds %struct.dom_walk_data, ptr %16, i64 0, i32 3
  store ptr @nt_fini_block, ptr %26, align 8, !tbaa !166
  %27 = getelementptr inbounds %struct.dom_walk_data, ptr %16, i64 0, i32 4
  store ptr null, ptr %27, align 8, !tbaa !167
  %28 = getelementptr inbounds %struct.dom_walk_data, ptr %16, i64 0, i32 6
  store i64 0, ptr %28, align 8, !tbaa !168
  call void @init_walk_dominator_tree(ptr noundef nonnull %16) #21
  %29 = load ptr, ptr @cfun, align 8, !tbaa !75
  %30 = getelementptr inbounds %struct.function, ptr %29, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !95
  %32 = load ptr, ptr %31, align 8, !tbaa !100
  call void @walk_dominator_tree(ptr noundef nonnull %16, ptr noundef %32) #21
  call void @fini_walk_dominator_tree(ptr noundef nonnull %16) #21
  %33 = load ptr, ptr @seen_ssa_names, align 8, !tbaa !75
  call void @htab_delete(ptr noundef %33) #21
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %16) #21
  br label %34

34:                                               ; preds = %18, %1
  %35 = phi ptr [ %19, %18 ], [ null, %1 ]
  %36 = call ptr @blocks_in_phiopt_order()
  %37 = load ptr, ptr @cfun, align 8, !tbaa !75
  %38 = getelementptr inbounds %struct.function, ptr %37, i64 0, i32 1
  %39 = load ptr, ptr %38, align 8, !tbaa !95
  %40 = getelementptr inbounds %struct.control_flow_graph, ptr %39, i64 0, i32 3
  %41 = load i32, ptr %40, align 8, !tbaa !97
  %42 = add nsw i32 %41, -2
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %2391, label %44, !prof !169

44:                                               ; preds = %34
  %45 = zext i32 %42 to i64
  br label %46

46:                                               ; preds = %44, %2387
  %47 = phi i64 [ 0, %44 ], [ %2389, %2387 ]
  %48 = phi i8 [ 0, %44 ], [ %2388, %2387 ]
  %49 = getelementptr inbounds ptr, ptr %36, i64 %47
  %50 = load ptr, ptr %49, align 8, !tbaa !75
  %51 = call ptr @last_stmt(ptr noundef %50) #21
  %52 = icmp eq ptr %51, null
  br i1 %52, label %2387, label %53, !prof !170

53:                                               ; preds = %46
  %54 = load i32, ptr %51, align 8
  %55 = and i32 %54, 255
  %56 = icmp eq i32 %55, 1
  br i1 %56, label %57, label %2387, !prof !171

57:                                               ; preds = %53
  %58 = getelementptr inbounds %struct.basic_block_def, ptr %50, i64 0, i32 1
  %59 = load ptr, ptr %58, align 8, !tbaa !172
  %60 = getelementptr inbounds %struct.VEC_edge_base, ptr %59, i64 0, i32 2, i64 0
  %61 = load ptr, ptr %60, align 8, !tbaa !75
  %62 = getelementptr inbounds %struct.edge_def, ptr %61, i64 0, i32 1
  %63 = load ptr, ptr %62, align 8, !tbaa !173
  %64 = getelementptr inbounds %struct.VEC_edge_base, ptr %59, i64 0, i32 2, i64 1
  %65 = load ptr, ptr %64, align 8, !tbaa !75
  %66 = getelementptr inbounds %struct.edge_def, ptr %65, i64 0, i32 1
  %67 = load ptr, ptr %66, align 8, !tbaa !173
  %68 = getelementptr inbounds %struct.edge_def, ptr %61, i64 0, i32 7
  %69 = load i32, ptr %68, align 8, !tbaa !174
  %70 = and i32 %69, 2
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %2387, !prof !175

72:                                               ; preds = %57
  %73 = getelementptr inbounds %struct.edge_def, ptr %65, i64 0, i32 7
  %74 = load i32, ptr %73, align 8, !tbaa !174
  %75 = and i32 %74, 2
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %2387, !prof !175

77:                                               ; preds = %72
  %78 = getelementptr inbounds %struct.basic_block_def, ptr %63, i64 0, i32 1
  %79 = load ptr, ptr %78, align 8, !tbaa !172
  %80 = icmp eq ptr %79, null
  br i1 %80, label %83, label %81, !prof !176

81:                                               ; preds = %77
  %82 = load i32, ptr %79, align 8, !tbaa !113
  br label %83

83:                                               ; preds = %77, %81
  %84 = phi i32 [ %82, %81 ], [ 0, %77 ]
  %85 = icmp eq i32 %84, 0
  %86 = icmp eq ptr %67, null
  %87 = select i1 %85, i1 true, i1 %86, !prof !177
  br i1 %87, label %2387, label %88, !prof !177

88:                                               ; preds = %83
  %89 = getelementptr inbounds %struct.basic_block_def, ptr %67, i64 0, i32 1
  %90 = load ptr, ptr %89, align 8, !tbaa !172
  %91 = icmp eq ptr %90, null
  br i1 %91, label %94, label %92, !prof !178

92:                                               ; preds = %88
  %93 = load i32, ptr %90, align 8, !tbaa !113
  br label %94

94:                                               ; preds = %88, %92
  %95 = phi i32 [ %93, %92 ], [ 0, %88 ]
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %2387, label %97, !prof !179

97:                                               ; preds = %94
  %98 = getelementptr inbounds %struct.VEC_edge_base, ptr %79, i64 0, i32 2, i64 0
  %99 = load ptr, ptr %98, align 8, !tbaa !75
  %100 = getelementptr inbounds %struct.edge_def, ptr %99, i64 0, i32 1
  %101 = load ptr, ptr %100, align 8, !tbaa !173
  %102 = icmp eq ptr %101, %67
  br i1 %102, label %109, label %103, !prof !180

103:                                              ; preds = %97
  %104 = getelementptr inbounds %struct.VEC_edge_base, ptr %90, i64 0, i32 2, i64 0
  %105 = load ptr, ptr %104, align 8, !tbaa !75
  %106 = getelementptr inbounds %struct.edge_def, ptr %105, i64 0, i32 1
  %107 = load ptr, ptr %106, align 8, !tbaa !173
  %108 = icmp eq ptr %107, %63
  br i1 %108, label %109, label %2387, !prof !181

109:                                              ; preds = %103, %97
  %110 = phi ptr [ %67, %97 ], [ %63, %103 ]
  %111 = phi ptr [ %65, %97 ], [ %61, %103 ]
  %112 = phi ptr [ %63, %97 ], [ %67, %103 ]
  %113 = getelementptr inbounds %struct.basic_block_def, ptr %112, i64 0, i32 1
  %114 = load ptr, ptr %113, align 8, !tbaa !172
  %115 = icmp eq ptr %114, null
  %116 = getelementptr inbounds %struct.VEC_edge_base, ptr %114, i64 0, i32 2, i64 0
  %117 = load ptr, ptr %116, align 8, !tbaa !75
  br i1 %115, label %122, label %118, !prof !182

118:                                              ; preds = %109
  %119 = load i32, ptr %114, align 8, !tbaa !113
  %120 = icmp eq i32 %119, 1
  %121 = zext i1 %120 to i8
  br label %122

122:                                              ; preds = %109, %118
  %123 = phi i8 [ %121, %118 ], [ 0, %109 ]
  %124 = icmp eq i8 %123, 0
  br i1 %124, label %2387, label %125, !prof !183

125:                                              ; preds = %122
  %126 = getelementptr inbounds %struct.edge_def, ptr %117, i64 0, i32 7
  %127 = load i32, ptr %126, align 8, !tbaa !174
  %128 = and i32 %127, 1
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %2387, label %130, !prof !184

130:                                              ; preds = %125
  %131 = load ptr, ptr %112, align 8, !tbaa !111
  %132 = icmp eq ptr %131, null
  br i1 %132, label %137, label %133, !prof !184

133:                                              ; preds = %130
  %134 = load i32, ptr %131, align 8, !tbaa !113
  %135 = icmp eq i32 %134, 1
  %136 = zext i1 %135 to i8
  br label %137

137:                                              ; preds = %130, %133
  %138 = phi i8 [ %136, %133 ], [ 0, %130 ]
  %139 = icmp eq i8 %138, 0
  br i1 %139, label %2387, label %140, !prof !185

140:                                              ; preds = %137
  br i1 %132, label %144, label %141, !prof !186

141:                                              ; preds = %140
  %142 = load i32, ptr %131, align 8, !tbaa !113
  %143 = icmp eq i32 %142, 1
  br i1 %143, label %145, label %144, !prof !187

144:                                              ; preds = %141, %140
  call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 655, ptr noundef nonnull @.str.1) #21
  br label %145

145:                                              ; preds = %141, %144
  %146 = load ptr, ptr %112, align 8, !tbaa !111
  %147 = getelementptr inbounds %struct.VEC_edge_base, ptr %146, i64 0, i32 2, i64 0
  %148 = load ptr, ptr %147, align 8, !tbaa !75
  %149 = load ptr, ptr %148, align 8, !tbaa !118
  %150 = icmp eq ptr %149, %50
  br i1 %150, label %151, label %2387, !prof !187

151:                                              ; preds = %145
  br i1 %17, label %398, label %152, !prof !188

152:                                              ; preds = %151
  %153 = load ptr, ptr %110, align 8, !tbaa !111
  %154 = icmp eq ptr %153, null
  br i1 %154, label %157, label %155, !prof !189

155:                                              ; preds = %152
  %156 = load i32, ptr %153, align 8, !tbaa !113
  br label %157

157:                                              ; preds = %152, %155
  %158 = phi i32 [ %156, %155 ], [ 0, %152 ]
  %159 = icmp ugt i32 %158, 2
  br i1 %159, label %2387, label %160, !prof !190

160:                                              ; preds = %157
  %161 = call ptr @last_and_only_stmt(ptr noundef nonnull %112) #21
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %14) #21
  %162 = icmp eq ptr %161, null
  br i1 %162, label %396, label %163, !prof !191

163:                                              ; preds = %160
  %164 = load i32, ptr %161, align 8
  %165 = and i32 %164, 255
  %166 = icmp eq i32 %165, 6
  br i1 %166, label %167, label %396, !prof !192

167:                                              ; preds = %163
  %168 = getelementptr inbounds %struct.gimple_statement_base, ptr %161, i64 0, i32 2
  %169 = load i32, ptr %168, align 8, !tbaa !86
  %170 = zext nneg i32 %165 to i64
  %171 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %170
  %172 = load i32, ptr %171, align 4, !tbaa !90
  %173 = zext i32 %172 to i64
  %174 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %173
  %175 = load i64, ptr %174, align 8, !tbaa !106
  %176 = icmp eq i64 %175, 0
  br i1 %176, label %177, label %178, !prof !193

177:                                              ; preds = %167
  call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 1622, ptr noundef nonnull @.str.1) #21
  br label %178

178:                                              ; preds = %177, %167
  %179 = getelementptr inbounds i8, ptr %161, i64 %175
  %180 = load ptr, ptr %179, align 8, !tbaa !75
  %181 = load i32, ptr %161, align 8
  %182 = and i32 %181, 255
  %183 = add nsw i32 %182, -10
  %184 = icmp ult i32 %183, -9
  br i1 %184, label %198, label %185, !prof !193

185:                                              ; preds = %178
  %186 = zext nneg i32 %182 to i64
  %187 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %186
  %188 = load i32, ptr %187, align 4, !tbaa !90
  %189 = zext i32 %188 to i64
  %190 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %189
  %191 = load i64, ptr %190, align 8, !tbaa !106
  %192 = icmp eq i64 %191, 0
  br i1 %192, label %193, label %194, !prof !193

193:                                              ; preds = %185
  call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 1622, ptr noundef nonnull @.str.1) #21
  br label %194

194:                                              ; preds = %193, %185
  %195 = getelementptr inbounds i8, ptr %161, i64 %191
  %196 = getelementptr inbounds ptr, ptr %195, i64 1
  %197 = load ptr, ptr %196, align 8, !tbaa !75
  br label %198

198:                                              ; preds = %194, %178
  %199 = phi ptr [ %197, %194 ], [ null, %178 ]
  %200 = load i64, ptr %180, align 8
  %201 = trunc i64 %200 to i32
  %202 = and i32 %201, 65535
  %203 = add nsw i32 %202, -47
  %204 = icmp ult i32 %203, 3
  br i1 %204, label %205, label %396, !prof !193

205:                                              ; preds = %198
  %206 = load i32, ptr %161, align 8
  %207 = trunc i32 %206 to i8
  switch i8 %207, label %210 [
    i8 6, label %208
    i8 1, label %208
    i8 8, label %211
  ]

208:                                              ; preds = %205, %205
  %209 = lshr i32 %206, 16
  br label %211

210:                                              ; preds = %205
  call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 1446, ptr noundef nonnull @.str.1) #21
  br label %211

211:                                              ; preds = %210, %208, %205
  %212 = phi i32 [ %209, %208 ], [ 0, %210 ], [ 59, %205 ]
  %213 = zext nneg i32 %212 to i64
  %214 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %213
  %215 = load i8, ptr %214, align 1, !tbaa !86
  %216 = icmp eq i8 %215, 3
  br i1 %216, label %217, label %237

217:                                              ; preds = %211
  %218 = load i32, ptr %161, align 8
  %219 = and i32 %218, 255
  %220 = add nsw i32 %219, -1
  %221 = icmp ult i32 %220, 9
  call void @llvm.assume(i1 %221)
  %222 = zext nneg i32 %219 to i64
  %223 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %222
  %224 = load i32, ptr %223, align 4, !tbaa !90
  %225 = zext i32 %224 to i64
  %226 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %225
  %227 = load i64, ptr %226, align 8, !tbaa !106
  %228 = icmp eq i64 %227, 0
  br i1 %228, label %229, label %230

229:                                              ; preds = %217
  call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 1622, ptr noundef nonnull @.str.1) #21
  br label %230

230:                                              ; preds = %229, %217
  %231 = getelementptr inbounds i8, ptr %161, i64 %227
  %232 = getelementptr inbounds ptr, ptr %231, i64 1
  %233 = load ptr, ptr %232, align 8, !tbaa !75
  %234 = load i64, ptr %233, align 8
  %235 = trunc i64 %234 to i32
  %236 = and i32 %235, 65535
  br label %237

237:                                              ; preds = %230, %211
  %238 = phi i32 [ %236, %230 ], [ %212, %211 ]
  %239 = zext nneg i32 %238 to i64
  %240 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %239
  %241 = load i8, ptr %240, align 1, !tbaa !86
  %242 = icmp eq i8 %241, 3
  br i1 %242, label %243, label %396

243:                                              ; preds = %237
  %244 = icmp eq i32 %238, 141
  br i1 %244, label %248, label %245

245:                                              ; preds = %243
  %246 = call zeroext i8 @is_gimple_min_invariant(ptr noundef %199) #21
  %247 = icmp eq i8 %246, 0
  br i1 %247, label %396, label %248

248:                                              ; preds = %245, %243
  %249 = call i32 @pointer_set_contains(ptr noundef %35, ptr noundef nonnull %180) #21
  %250 = icmp eq i32 %249, 0
  br i1 %250, label %396, label %251

251:                                              ; preds = %248
  %252 = getelementptr inbounds i8, ptr %14, i64 8
  %253 = getelementptr inbounds i8, ptr %14, i64 16
  call void @mark_symbols_for_renaming(ptr noundef nonnull %161) #21
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %15) #21
  call void @gsi_for_stmt(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %15, ptr noundef nonnull %161) #21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %14, ptr noundef nonnull align 8 dereferenceable(24) %15, i64 24, i1 false), !tbaa.struct !194
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %15) #21
  call void @gsi_remove(ptr noundef nonnull %14, i8 noundef zeroext 1) #21
  %254 = load ptr, ptr @condstoretemp, align 8, !tbaa !75
  %255 = icmp eq ptr %254, null
  br i1 %255, label %262, label %256

256:                                              ; preds = %251
  %257 = getelementptr inbounds %struct.tree_common, ptr %180, i64 0, i32 2
  %258 = load ptr, ptr %257, align 8, !tbaa !86
  %259 = getelementptr inbounds %struct.tree_common, ptr %254, i64 0, i32 2
  %260 = load ptr, ptr %259, align 8, !tbaa !86
  %261 = icmp eq ptr %258, %260
  br i1 %261, label %298, label %262

262:                                              ; preds = %256, %251
  %263 = getelementptr inbounds %struct.tree_common, ptr %180, i64 0, i32 2
  %264 = load ptr, ptr %263, align 8, !tbaa !86
  %265 = call ptr @create_tmp_var(ptr noundef %264, ptr noundef nonnull @.str.6) #21
  store ptr %265, ptr @condstoretemp, align 8, !tbaa !75
  %266 = load i64, ptr %265, align 8
  %267 = trunc i64 %266 to i16
  switch i16 %267, label %272 [
    i16 32, label %268
    i16 34, label %270
  ]

268:                                              ; preds = %262
  %269 = getelementptr inbounds %struct.tree_var_decl, ptr %265, i64 0, i32 1
  br label %277

270:                                              ; preds = %262
  %271 = getelementptr inbounds %struct.tree_parm_decl, ptr %265, i64 0, i32 2
  br label %277

272:                                              ; preds = %262
  %273 = and i64 %266, 65535
  %274 = icmp eq i64 %273, 36
  %275 = getelementptr inbounds %struct.tree_result_decl, ptr %265, i64 0, i32 1
  %276 = select i1 %274, ptr %275, ptr null
  br label %277

277:                                              ; preds = %272, %270, %268
  %278 = phi ptr [ %269, %268 ], [ %271, %270 ], [ %276, %272 ]
  %279 = icmp eq ptr %278, null
  br i1 %279, label %280, label %281

280:                                              ; preds = %277
  call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 144, ptr noundef nonnull @.str.1) #21
  br label %281

281:                                              ; preds = %280, %277
  %282 = load ptr, ptr %278, align 8, !tbaa !75
  %283 = icmp eq ptr %282, null
  br i1 %283, label %284, label %286

284:                                              ; preds = %281
  %285 = call ptr @create_var_ann(ptr noundef nonnull %265) #21
  br label %286

286:                                              ; preds = %284, %281
  %287 = load ptr, ptr %263, align 8, !tbaa !86
  %288 = load i64, ptr %287, align 8
  %289 = trunc i64 %288 to i32
  %290 = and i32 %289, 65535
  %291 = add nsw i32 %290, -13
  %292 = icmp ult i32 %291, 2
  br i1 %292, label %293, label %298

293:                                              ; preds = %286
  %294 = load ptr, ptr @condstoretemp, align 8, !tbaa !75
  %295 = getelementptr inbounds %struct.tree_decl_common, ptr %294, i64 0, i32 2
  %296 = load i64, ptr %295, align 8
  %297 = or i64 %296, 134217728
  store i64 %297, ptr %295, align 8
  br label %298

298:                                              ; preds = %293, %286, %256
  %299 = load ptr, ptr @condstoretemp, align 8, !tbaa !75
  %300 = call zeroext i8 @add_referenced_var(ptr noundef %299) #21
  %301 = call ptr @unshare_expr(ptr noundef nonnull %180) #21
  %302 = load ptr, ptr @condstoretemp, align 8, !tbaa !75
  %303 = call ptr @gimple_build_assign_stat(ptr noundef %302, ptr noundef %301) #21
  %304 = load ptr, ptr @condstoretemp, align 8, !tbaa !75
  %305 = load ptr, ptr @cfun, align 8, !tbaa !75
  %306 = call ptr @make_ssa_name_fn(ptr noundef %305, ptr noundef %304, ptr noundef %303) #21
  %307 = load i32, ptr %303, align 8
  %308 = and i32 %307, 255
  %309 = add nsw i32 %308, -10
  %310 = icmp ult i32 %309, -9
  br i1 %310, label %315, label %311

311:                                              ; preds = %298
  %312 = getelementptr inbounds %struct.gimple_statement_base, ptr %303, i64 0, i32 3
  %313 = load i32, ptr %312, align 4, !tbaa !86
  %314 = icmp eq i32 %313, 0
  br i1 %314, label %315, label %316

315:                                              ; preds = %311, %298
  call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 1665, ptr noundef nonnull @.str.1) #21
  br label %316

316:                                              ; preds = %315, %311
  %317 = load i32, ptr %303, align 8
  %318 = and i32 %317, 255
  %319 = zext nneg i32 %318 to i64
  %320 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %319
  %321 = load i32, ptr %320, align 4, !tbaa !90
  %322 = zext i32 %321 to i64
  %323 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %322
  %324 = load i64, ptr %323, align 8, !tbaa !106
  %325 = icmp eq i64 %324, 0
  br i1 %325, label %326, label %327

326:                                              ; preds = %316
  call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 1622, ptr noundef nonnull @.str.1) #21
  br label %327

327:                                              ; preds = %326, %316
  %328 = getelementptr inbounds i8, ptr %303, i64 %324
  store ptr %306, ptr %328, align 8, !tbaa !75
  %329 = icmp eq ptr %306, null
  br i1 %329, label %336, label %330

330:                                              ; preds = %327
  %331 = load i64, ptr %306, align 8
  %332 = and i64 %331, 65535
  %333 = icmp eq i64 %332, 141
  br i1 %333, label %334, label %336

334:                                              ; preds = %330
  %335 = getelementptr inbounds %struct.tree_ssa_name, ptr %306, i64 0, i32 2
  store ptr %303, ptr %335, align 8, !tbaa !86
  br label %336

336:                                              ; preds = %334, %330, %327
  %337 = getelementptr inbounds %struct.gimple_statement_base, ptr %303, i64 0, i32 2
  store i32 %169, ptr %337, align 8, !tbaa !86
  call void @mark_symbols_for_renaming(ptr noundef nonnull %303) #21
  call void @gsi_insert_on_edge(ptr noundef %111, ptr noundef nonnull %303) #21
  %338 = load ptr, ptr @condstoretemp, align 8, !tbaa !75
  %339 = call ptr @create_phi_node(ptr noundef %338, ptr noundef nonnull %110) #21
  call void @add_phi_arg(ptr noundef %339, ptr noundef %199, ptr noundef %117, i32 noundef %169) #21
  call void @add_phi_arg(ptr noundef %339, ptr noundef %306, ptr noundef %111, i32 noundef %169) #21
  %340 = call ptr @unshare_expr(ptr noundef %301) #21
  %341 = getelementptr inbounds %struct.gimple_statement_phi, ptr %339, i64 0, i32 3
  %342 = load ptr, ptr %341, align 8, !tbaa !75
  %343 = call ptr @gimple_build_assign_stat(ptr noundef %340, ptr noundef %342) #21
  call void @mark_symbols_for_renaming(ptr noundef %343) #21
  %344 = getelementptr inbounds %struct.basic_block_def, ptr %110, i64 0, i32 13
  %345 = load i32, ptr %344, align 8, !tbaa !129, !noalias !195
  %346 = and i32 %345, 512
  %347 = icmp eq i32 %346, 0
  br i1 %347, label %348, label %354

348:                                              ; preds = %336
  %349 = getelementptr inbounds %struct.basic_block_def, ptr %110, i64 0, i32 7
  %350 = load ptr, ptr %349, align 8, !tbaa !86, !noalias !196
  %351 = icmp eq ptr %350, null
  br i1 %351, label %354, label %352

352:                                              ; preds = %348
  %353 = load ptr, ptr %350, align 8, !tbaa !137, !noalias !196
  br label %354

354:                                              ; preds = %352, %348, %336
  %355 = phi ptr [ %353, %352 ], [ null, %348 ], [ null, %336 ]
  %356 = icmp eq ptr %355, null
  br i1 %356, label %359, label %357

357:                                              ; preds = %354
  %358 = load ptr, ptr %355, align 8, !tbaa !139, !noalias !196
  br label %359

359:                                              ; preds = %357, %354
  %360 = phi ptr [ %358, %357 ], [ null, %354 ]
  %361 = icmp eq ptr %360, null
  br i1 %361, label %377, label %362

362:                                              ; preds = %359
  %363 = load ptr, ptr %360, align 8, !tbaa !142, !noalias !201
  %364 = load i32, ptr %363, align 8, !noalias !201
  %365 = and i32 %364, 255
  %366 = icmp eq i32 %365, 4
  br i1 %366, label %372, label %377

367:                                              ; preds = %372
  %368 = load ptr, ptr %375, align 8, !tbaa !142, !noalias !201
  %369 = load i32, ptr %368, align 8, !noalias !201
  %370 = and i32 %369, 255
  %371 = icmp eq i32 %370, 4
  br i1 %371, label %372, label %377, !llvm.loop !147

372:                                              ; preds = %362, %367
  %373 = phi ptr [ %375, %367 ], [ %360, %362 ]
  %374 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %373, i64 0, i32 2
  %375 = load ptr, ptr %374, align 8, !tbaa !148, !noalias !201
  %376 = icmp eq ptr %375, null
  br i1 %376, label %377, label %367, !llvm.loop !147

377:                                              ; preds = %367, %372, %362, %359
  %378 = phi ptr [ %360, %359 ], [ %360, %362 ], [ %375, %372 ], [ %375, %367 ]
  %379 = phi i1 [ %361, %359 ], [ %361, %362 ], [ %376, %372 ], [ %376, %367 ]
  store ptr %378, ptr %14, align 8, !tbaa.struct !194
  store ptr %355, ptr %252, align 8, !tbaa.struct !202
  store ptr %110, ptr %253, align 8, !tbaa.struct !203
  br i1 %379, label %380, label %395

380:                                              ; preds = %377
  br i1 %347, label %381, label %387

381:                                              ; preds = %380
  %382 = getelementptr inbounds %struct.basic_block_def, ptr %110, i64 0, i32 7
  %383 = load ptr, ptr %382, align 8, !tbaa !86, !noalias !204
  %384 = icmp eq ptr %383, null
  br i1 %384, label %387, label %385

385:                                              ; preds = %381
  %386 = load ptr, ptr %383, align 8, !tbaa !137, !noalias !204
  br label %387

387:                                              ; preds = %385, %381, %380
  %388 = phi ptr [ %386, %385 ], [ null, %381 ], [ null, %380 ]
  %389 = icmp eq ptr %388, null
  br i1 %389, label %393, label %390

390:                                              ; preds = %387
  %391 = getelementptr inbounds %struct.gimple_seq_d, ptr %388, i64 0, i32 1
  %392 = load ptr, ptr %391, align 8, !tbaa !207, !noalias !204
  br label %393

393:                                              ; preds = %390, %387
  %394 = phi ptr [ %392, %390 ], [ null, %387 ]
  store ptr %394, ptr %14, align 8, !tbaa.struct !194
  store ptr %388, ptr %252, align 8, !tbaa.struct !202
  store ptr %110, ptr %253, align 8, !tbaa.struct !203
  call void @gsi_insert_after(ptr noundef nonnull %14, ptr noundef %343, i32 noundef 0) #21
  br label %396

395:                                              ; preds = %377
  call void @gsi_insert_before(ptr noundef nonnull %14, ptr noundef %343, i32 noundef 0) #21
  br label %396

396:                                              ; preds = %160, %163, %198, %237, %245, %248, %393, %395
  %397 = phi i8 [ %48, %163 ], [ %48, %160 ], [ %48, %198 ], [ %48, %237 ], [ %48, %248 ], [ 1, %395 ], [ 1, %393 ], [ %48, %245 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %14) #21
  br label %2387

398:                                              ; preds = %151
  %399 = getelementptr inbounds %struct.basic_block_def, ptr %110, i64 0, i32 13
  %400 = load i32, ptr %399, align 8, !tbaa !129
  %401 = and i32 %400, 512
  %402 = icmp eq i32 %401, 0
  br i1 %402, label %404, label %403, !prof !208

403:                                              ; preds = %398
  call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 510, ptr noundef nonnull @.str.1) #21
  br label %404

404:                                              ; preds = %403, %398
  %405 = getelementptr inbounds %struct.basic_block_def, ptr %110, i64 0, i32 7
  %406 = load ptr, ptr %405, align 8, !tbaa !86
  %407 = icmp eq ptr %406, null
  br i1 %407, label %411, label %408, !prof !209

408:                                              ; preds = %404
  %409 = getelementptr inbounds %struct.gimple_bb_info, ptr %406, i64 0, i32 1
  %410 = load ptr, ptr %409, align 8, !tbaa !210
  br label %411

411:                                              ; preds = %404, %408
  %412 = phi ptr [ %410, %408 ], [ null, %404 ]
  %413 = icmp ne ptr %412, null
  br i1 %413, label %414, label %422, !prof !211

414:                                              ; preds = %411
  %415 = load ptr, ptr %412, align 8, !tbaa !139
  %416 = icmp eq ptr %415, null
  br i1 %416, label %422, label %417, !prof !212

417:                                              ; preds = %414
  %418 = getelementptr inbounds %struct.gimple_seq_d, ptr %412, i64 0, i32 1
  %419 = load ptr, ptr %418, align 8, !tbaa !207
  %420 = icmp eq ptr %415, %419
  %421 = zext i1 %420 to i8
  br label %422

422:                                              ; preds = %411, %414, %417
  %423 = phi i8 [ 0, %414 ], [ %421, %417 ], [ 0, %411 ]
  %424 = icmp eq i8 %423, 0
  br i1 %424, label %2387, label %425, !prof !213

425:                                              ; preds = %422
  call void @llvm.assume(i1 %413)
  %426 = load ptr, ptr %412, align 8, !tbaa !139, !noalias !214
  %427 = load ptr, ptr %426, align 8, !tbaa !142
  %428 = getelementptr inbounds %struct.edge_def, ptr %117, i64 0, i32 6
  %429 = load i32, ptr %428, align 4, !tbaa !217
  %430 = zext i32 %429 to i64
  %431 = getelementptr inbounds %struct.gimple_statement_phi, ptr %427, i64 0, i32 1
  %432 = load i32, ptr %431, align 8, !tbaa !86
  %433 = icmp ult i32 %432, %429
  br i1 %433, label %434, label %435, !prof !218

434:                                              ; preds = %425
  call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 3103, ptr noundef nonnull @.str.1) #21
  br label %435

435:                                              ; preds = %425, %434
  %436 = getelementptr inbounds %struct.gimple_statement_phi, ptr %427, i64 0, i32 4, i64 %430, i32 0, i32 3
  %437 = load ptr, ptr %436, align 8, !tbaa !219
  %438 = load ptr, ptr %437, align 8, !tbaa !75
  %439 = getelementptr inbounds %struct.edge_def, ptr %111, i64 0, i32 6
  %440 = load i32, ptr %439, align 4, !tbaa !217
  %441 = zext i32 %440 to i64
  %442 = load i32, ptr %431, align 8, !tbaa !86
  %443 = icmp ult i32 %442, %440
  br i1 %443, label %444, label %445, !prof !218

444:                                              ; preds = %435
  call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 3103, ptr noundef nonnull @.str.1) #21
  br label %445

445:                                              ; preds = %435, %444
  %446 = getelementptr inbounds %struct.gimple_statement_phi, ptr %427, i64 0, i32 4, i64 %441, i32 0, i32 3
  %447 = load ptr, ptr %446, align 8, !tbaa !219
  %448 = load ptr, ptr %447, align 8, !tbaa !75
  %449 = icmp ne ptr %438, null
  %450 = icmp ne ptr %448, null
  %451 = select i1 %449, i1 %450, i1 false, !prof !221
  br i1 %451, label %453, label %452, !prof !221

452:                                              ; preds = %445
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 295, ptr noundef nonnull @.str.1) #21
  br label %453

453:                                              ; preds = %445, %452
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %11) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #21
  %454 = getelementptr inbounds %struct.tree_common, ptr %438, i64 0, i32 2
  %455 = load ptr, ptr %454, align 8, !tbaa !86
  %456 = load i64, ptr %455, align 8
  %457 = and i64 %456, 65535
  %458 = icmp eq i64 %457, 13
  br i1 %458, label %655, label %459, !prof !218

459:                                              ; preds = %453
  %460 = getelementptr inbounds %struct.tree_common, ptr %448, i64 0, i32 2
  %461 = load ptr, ptr %460, align 8, !tbaa !86
  %462 = load i64, ptr %461, align 8
  %463 = and i64 %462, 65535
  %464 = icmp eq i64 %463, 13
  br i1 %464, label %655, label %465, !prof !218

465:                                              ; preds = %459
  %466 = call i32 @integer_zerop(ptr noundef %438) #21
  %467 = icmp eq i32 %466, 0
  br i1 %467, label %471, label %468, !prof !222

468:                                              ; preds = %465
  %469 = call i32 @integer_onep(ptr noundef %448) #21
  %470 = icmp eq i32 %469, 0
  br i1 %470, label %471, label %477, !prof !223

471:                                              ; preds = %468, %465
  %472 = call i32 @integer_zerop(ptr noundef %448) #21
  %473 = icmp eq i32 %472, 0
  br i1 %473, label %655, label %474, !prof !224

474:                                              ; preds = %471
  %475 = call i32 @integer_onep(ptr noundef %438) #21
  %476 = icmp eq i32 %475, 0
  br i1 %476, label %655, label %477, !prof !225

477:                                              ; preds = %474, %468
  %478 = getelementptr inbounds %struct.basic_block_def, ptr %112, i64 0, i32 13
  %479 = load i32, ptr %478, align 8, !tbaa !129, !noalias !226
  %480 = and i32 %479, 512
  %481 = icmp eq i32 %480, 0
  br i1 %481, label %482, label %488, !prof !135

482:                                              ; preds = %477
  %483 = getelementptr inbounds %struct.basic_block_def, ptr %112, i64 0, i32 7
  %484 = load ptr, ptr %483, align 8, !tbaa !86, !noalias !226
  %485 = icmp eq ptr %484, null
  br i1 %485, label %488, label %486, !prof !136

486:                                              ; preds = %482
  %487 = load ptr, ptr %484, align 8, !tbaa !137, !noalias !226
  br label %488

488:                                              ; preds = %486, %482, %477
  %489 = phi ptr [ %487, %486 ], [ null, %482 ], [ null, %477 ]
  %490 = icmp eq ptr %489, null
  br i1 %490, label %493, label %491, !prof !136

491:                                              ; preds = %488
  %492 = load ptr, ptr %489, align 8, !tbaa !139, !noalias !226
  br label %493

493:                                              ; preds = %491, %488
  %494 = phi ptr [ %492, %491 ], [ null, %488 ]
  %495 = icmp eq ptr %494, null
  br i1 %495, label %525, label %496, !prof !141

496:                                              ; preds = %493
  %497 = load ptr, ptr %494, align 8, !tbaa !142
  %498 = load i32, ptr %497, align 8
  %499 = and i32 %498, 255
  %500 = icmp eq i32 %499, 4
  br i1 %500, label %506, label %511, !prof !145

501:                                              ; preds = %506
  %502 = load ptr, ptr %509, align 8, !tbaa !142
  %503 = load i32, ptr %502, align 8
  %504 = and i32 %503, 255
  %505 = icmp eq i32 %504, 4
  br i1 %505, label %506, label %511, !prof !146, !llvm.loop !147

506:                                              ; preds = %496, %501
  %507 = phi ptr [ %509, %501 ], [ %494, %496 ]
  %508 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %507, i64 0, i32 2
  %509 = load ptr, ptr %508, align 8, !tbaa !148, !noalias !231
  %510 = icmp eq ptr %509, null
  br i1 %510, label %525, label %501, !prof !149, !llvm.loop !147

511:                                              ; preds = %501, %496
  %512 = phi ptr [ %494, %496 ], [ %509, %501 ]
  %513 = phi i32 [ %499, %496 ], [ %504, %501 ]
  %514 = icmp eq i32 %513, 2
  br i1 %514, label %515, label %655, !prof !151

515:                                              ; preds = %511, %520
  %516 = phi ptr [ %518, %520 ], [ %512, %511 ]
  %517 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %516, i64 0, i32 2
  %518 = load ptr, ptr %517, align 8, !tbaa !148
  %519 = icmp eq ptr %518, null
  br i1 %519, label %525, label %520

520:                                              ; preds = %515
  %521 = load ptr, ptr %518, align 8, !tbaa !142
  %522 = load i32, ptr %521, align 8
  %523 = and i32 %522, 255
  %524 = icmp eq i32 %523, 2
  br i1 %524, label %515, label %655, !llvm.loop !152

525:                                              ; preds = %506, %515, %493
  %526 = call ptr @last_stmt(ptr noundef %50) #21
  %527 = getelementptr inbounds %struct.gimple_statement_phi, ptr %427, i64 0, i32 3
  %528 = load ptr, ptr %527, align 8, !tbaa !75
  %529 = load i32, ptr %526, align 8
  %530 = lshr i32 %529, 16
  %531 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !75
  %532 = and i32 %529, 255
  %533 = add nsw i32 %532, -10
  %534 = icmp ult i32 %533, -9
  br i1 %534, label %547, label %535, !prof !232

535:                                              ; preds = %525
  %536 = zext nneg i32 %532 to i64
  %537 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %536
  %538 = load i32, ptr %537, align 4, !tbaa !90
  %539 = zext i32 %538 to i64
  %540 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %539
  %541 = load i64, ptr %540, align 8, !tbaa !106
  %542 = icmp eq i64 %541, 0
  br i1 %542, label %543, label %544, !prof !232

543:                                              ; preds = %535
  call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 1622, ptr noundef nonnull @.str.1) #21
  br label %544

544:                                              ; preds = %543, %535
  %545 = getelementptr inbounds i8, ptr %526, i64 %541
  %546 = load ptr, ptr %545, align 8, !tbaa !75
  br label %547

547:                                              ; preds = %544, %525
  %548 = phi ptr [ %546, %544 ], [ null, %525 ]
  %549 = load i32, ptr %526, align 8
  %550 = and i32 %549, 255
  %551 = add nsw i32 %550, -10
  %552 = icmp ult i32 %551, -9
  br i1 %552, label %566, label %553, !prof !232

553:                                              ; preds = %547
  %554 = zext nneg i32 %550 to i64
  %555 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %554
  %556 = load i32, ptr %555, align 4, !tbaa !90
  %557 = zext i32 %556 to i64
  %558 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %557
  %559 = load i64, ptr %558, align 8, !tbaa !106
  %560 = icmp eq i64 %559, 0
  br i1 %560, label %561, label %562, !prof !232

561:                                              ; preds = %553
  call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 1622, ptr noundef nonnull @.str.1) #21
  br label %562

562:                                              ; preds = %561, %553
  %563 = getelementptr inbounds i8, ptr %526, i64 %559
  %564 = getelementptr inbounds ptr, ptr %563, i64 1
  %565 = load ptr, ptr %564, align 8, !tbaa !75
  br label %566

566:                                              ; preds = %562, %547
  %567 = phi ptr [ %565, %562 ], [ null, %547 ]
  %568 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef %530, ptr noundef %531, ptr noundef %548, ptr noundef %567) #21
  call void @extract_true_false_edges_from_block(ptr noundef %50, ptr noundef nonnull %12, ptr noundef nonnull %13) #21
  %569 = load ptr, ptr %12, align 8, !tbaa !75
  %570 = icmp eq ptr %569, %117
  br i1 %570, label %571, label %574, !prof !232

571:                                              ; preds = %566
  %572 = call i32 @integer_zerop(ptr noundef %438) #21
  %573 = icmp eq i32 %572, 0
  br i1 %573, label %574, label %592

574:                                              ; preds = %571, %566
  %575 = load ptr, ptr %13, align 8, !tbaa !75
  %576 = icmp eq ptr %575, %117
  br i1 %576, label %577, label %580, !prof !232

577:                                              ; preds = %574
  %578 = call i32 @integer_onep(ptr noundef %438) #21
  %579 = icmp eq i32 %578, 0
  br i1 %579, label %580, label %592

580:                                              ; preds = %577, %574
  %581 = load ptr, ptr %12, align 8, !tbaa !75
  %582 = icmp eq ptr %581, %111
  br i1 %582, label %583, label %586, !prof !233

583:                                              ; preds = %580
  %584 = call i32 @integer_zerop(ptr noundef %448) #21
  %585 = icmp eq i32 %584, 0
  br i1 %585, label %586, label %592, !prof !234

586:                                              ; preds = %583, %580
  %587 = load ptr, ptr %13, align 8, !tbaa !75
  %588 = icmp eq ptr %587, %111
  br i1 %588, label %589, label %596, !prof !235

589:                                              ; preds = %586
  %590 = call i32 @integer_onep(ptr noundef %448) #21
  %591 = icmp eq i32 %590, 0
  br i1 %591, label %596, label %592

592:                                              ; preds = %589, %583, %577, %571
  %593 = getelementptr inbounds %struct.tree_common, ptr %568, i64 0, i32 2
  %594 = load ptr, ptr %593, align 8, !tbaa !86
  %595 = call ptr @fold_build1_stat_loc(i32 noundef 0, i32 noundef 96, ptr noundef %594, ptr noundef %568) #21
  br label %596

596:                                              ; preds = %592, %589, %586
  %597 = phi ptr [ %595, %592 ], [ %568, %586 ], [ %568, %589 ]
  call void @gsi_for_stmt(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %11, ptr noundef nonnull %526) #21
  %598 = call ptr @force_gimple_operand_gsi(ptr noundef nonnull %11, ptr noundef %597, i8 noundef zeroext 1, ptr noundef null, i8 noundef zeroext 1, i32 noundef 1) #21
  %599 = getelementptr inbounds %struct.tree_common, ptr %528, i64 0, i32 2
  %600 = load ptr, ptr %599, align 8, !tbaa !86
  %601 = getelementptr inbounds %struct.tree_common, ptr %598, i64 0, i32 2
  %602 = load ptr, ptr %601, align 8, !tbaa !86
  %603 = call zeroext i8 @useless_type_conversion_p(ptr noundef %600, ptr noundef %602) #21
  %604 = icmp eq i8 %603, 0
  br i1 %604, label %605, label %653, !prof !233

605:                                              ; preds = %596
  %606 = load ptr, ptr %599, align 8, !tbaa !86
  %607 = call ptr @create_tmp_var(ptr noundef %606, ptr noundef null) #21
  %608 = call zeroext i8 @add_referenced_var(ptr noundef %607) #21
  %609 = call ptr @gimple_build_assign_with_ops_stat(i32 noundef 113, ptr noundef %607, ptr noundef %598, ptr noundef null) #21
  %610 = load ptr, ptr @cfun, align 8, !tbaa !75
  %611 = call ptr @make_ssa_name_fn(ptr noundef %610, ptr noundef %607, ptr noundef %609) #21
  %612 = load i32, ptr %609, align 8
  %613 = and i32 %612, 255
  %614 = add nsw i32 %613, -10
  %615 = icmp ult i32 %614, -9
  br i1 %615, label %620, label %616, !prof !232

616:                                              ; preds = %605
  %617 = getelementptr inbounds %struct.gimple_statement_base, ptr %609, i64 0, i32 3
  %618 = load i32, ptr %617, align 4, !tbaa !86
  %619 = icmp eq i32 %618, 0
  br i1 %619, label %620, label %621, !prof !232

620:                                              ; preds = %616, %605
  call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 1665, ptr noundef nonnull @.str.1) #21
  br label %621

621:                                              ; preds = %620, %616
  %622 = load i32, ptr %609, align 8
  %623 = and i32 %622, 255
  %624 = zext nneg i32 %623 to i64
  %625 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %624
  %626 = load i32, ptr %625, align 4, !tbaa !90
  %627 = zext i32 %626 to i64
  %628 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %627
  %629 = load i64, ptr %628, align 8, !tbaa !106
  %630 = icmp eq i64 %629, 0
  br i1 %630, label %631, label %632, !prof !232

631:                                              ; preds = %621
  call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 1622, ptr noundef nonnull @.str.1) #21
  br label %632

632:                                              ; preds = %631, %621
  %633 = getelementptr inbounds i8, ptr %609, i64 %629
  store ptr %611, ptr %633, align 8, !tbaa !75
  %634 = icmp eq ptr %611, null
  br i1 %634, label %641, label %635, !prof !232

635:                                              ; preds = %632
  %636 = load i64, ptr %611, align 8
  %637 = and i64 %636, 65535
  %638 = icmp eq i64 %637, 141
  br i1 %638, label %639, label %641, !prof !233

639:                                              ; preds = %635
  %640 = getelementptr inbounds %struct.tree_ssa_name, ptr %611, i64 0, i32 2
  store ptr %609, ptr %640, align 8, !tbaa !86
  br label %641

641:                                              ; preds = %639, %635, %632
  call void @gsi_insert_before(ptr noundef nonnull %11, ptr noundef nonnull %609, i32 noundef 1) #21
  %642 = getelementptr inbounds %struct.gimple_statement_phi, ptr %427, i64 0, i32 4, i64 0, i32 2
  %643 = load i32, ptr %642, align 8, !tbaa !236
  %644 = load i32, ptr %431, align 8, !tbaa !86
  %645 = icmp eq i32 %644, 0
  br i1 %645, label %646, label %647, !prof !232

646:                                              ; preds = %641
  call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 3103, ptr noundef nonnull @.str.1) #21
  br label %647

647:                                              ; preds = %646, %641
  %648 = getelementptr inbounds %struct.gimple_statement_phi, ptr %427, i64 0, i32 4, i64 1, i32 2
  %649 = load i32, ptr %648, align 8, !tbaa !236
  %650 = icmp eq i32 %643, 0
  %651 = select i1 %650, i32 %649, i32 %643, !prof !232
  %652 = getelementptr inbounds %struct.gimple_statement_base, ptr %609, i64 0, i32 2
  store i32 %651, ptr %652, align 8, !tbaa !86
  br label %653

653:                                              ; preds = %647, %596
  %654 = phi ptr [ %598, %596 ], [ %611, %647 ]
  call fastcc void @replace_phi_edge_with_variable(ptr noundef %50, ptr noundef %111, ptr noundef %427, ptr noundef %654)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #21
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %11) #21
  br label %2387

655:                                              ; preds = %520, %453, %459, %471, %474, %511
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #21
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %11) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #21
  %656 = getelementptr inbounds %struct.tree_common, ptr %448, i64 0, i32 2
  %657 = load ptr, ptr %656, align 8, !tbaa !86
  %658 = load i64, ptr %657, align 8
  %659 = and i64 %658, 65535
  %660 = icmp eq i64 %659, 14
  br i1 %660, label %661, label %663, !prof !238

661:                                              ; preds = %655
  %662 = call i32 @vector_type_mode(ptr noundef nonnull %657) #21
  br label %668

663:                                              ; preds = %655
  %664 = getelementptr inbounds %struct.tree_type, ptr %657, i64 0, i32 6
  %665 = load i32, ptr %664, align 4
  %666 = lshr i32 %665, 16
  %667 = and i32 %666, 255
  br label %668

668:                                              ; preds = %663, %661
  %669 = phi i32 [ %662, %661 ], [ %667, %663 ]
  %670 = zext i32 %669 to i64
  %671 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %670
  %672 = load i8, ptr %671, align 1, !tbaa !86
  %673 = icmp eq i8 %672, 8
  br i1 %673, label %728, label %674, !prof !238

674:                                              ; preds = %668
  %675 = load ptr, ptr %656, align 8, !tbaa !86
  %676 = load i64, ptr %675, align 8
  %677 = and i64 %676, 65535
  %678 = icmp eq i64 %677, 14
  br i1 %678, label %679, label %681, !prof !238

679:                                              ; preds = %674
  %680 = call i32 @vector_type_mode(ptr noundef nonnull %675) #21
  br label %686

681:                                              ; preds = %674
  %682 = getelementptr inbounds %struct.tree_type, ptr %675, i64 0, i32 6
  %683 = load i32, ptr %682, align 4
  %684 = lshr i32 %683, 16
  %685 = and i32 %684, 255
  br label %686

686:                                              ; preds = %681, %679
  %687 = phi i32 [ %680, %679 ], [ %685, %681 ]
  %688 = zext i32 %687 to i64
  %689 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %688
  %690 = load i8, ptr %689, align 1, !tbaa !86
  %691 = icmp eq i8 %690, 9
  br i1 %691, label %728, label %692, !prof !238

692:                                              ; preds = %686
  %693 = load ptr, ptr %656, align 8, !tbaa !86
  %694 = load i64, ptr %693, align 8
  %695 = and i64 %694, 65535
  %696 = icmp eq i64 %695, 14
  br i1 %696, label %697, label %699, !prof !238

697:                                              ; preds = %692
  %698 = call i32 @vector_type_mode(ptr noundef nonnull %693) #21
  br label %704

699:                                              ; preds = %692
  %700 = getelementptr inbounds %struct.tree_type, ptr %693, i64 0, i32 6
  %701 = load i32, ptr %700, align 4
  %702 = lshr i32 %701, 16
  %703 = and i32 %702, 255
  br label %704

704:                                              ; preds = %699, %697
  %705 = phi i32 [ %698, %697 ], [ %703, %699 ]
  %706 = zext i32 %705 to i64
  %707 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %706
  %708 = load i8, ptr %707, align 1, !tbaa !86
  %709 = icmp eq i8 %708, 11
  br i1 %709, label %728, label %710, !prof !238

710:                                              ; preds = %704
  %711 = load ptr, ptr %656, align 8, !tbaa !86
  %712 = load i64, ptr %711, align 8
  %713 = and i64 %712, 65535
  %714 = icmp eq i64 %713, 14
  br i1 %714, label %715, label %717, !prof !238

715:                                              ; preds = %710
  %716 = call i32 @vector_type_mode(ptr noundef nonnull %711) #21
  br label %722

717:                                              ; preds = %710
  %718 = getelementptr inbounds %struct.tree_type, ptr %711, i64 0, i32 6
  %719 = load i32, ptr %718, align 4
  %720 = lshr i32 %719, 16
  %721 = and i32 %720, 255
  br label %722

722:                                              ; preds = %717, %715
  %723 = phi i32 [ %716, %715 ], [ %721, %717 ]
  %724 = zext i32 %723 to i64
  %725 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %724
  %726 = load i8, ptr %725, align 1, !tbaa !86
  %727 = icmp eq i8 %726, 17
  br i1 %727, label %728, label %940, !prof !238

728:                                              ; preds = %722, %704, %686, %668
  %729 = load ptr, ptr %656, align 8, !tbaa !86
  %730 = load i64, ptr %729, align 8
  %731 = and i64 %730, 65535
  %732 = icmp eq i64 %731, 14
  br i1 %732, label %733, label %735

733:                                              ; preds = %728
  %734 = call i32 @vector_type_mode(ptr noundef nonnull %729) #21
  br label %740

735:                                              ; preds = %728
  %736 = getelementptr inbounds %struct.tree_type, ptr %729, i64 0, i32 6
  %737 = load i32, ptr %736, align 4
  %738 = lshr i32 %737, 16
  %739 = and i32 %738, 255
  br label %740

740:                                              ; preds = %735, %733
  %741 = phi i32 [ %734, %733 ], [ %739, %735 ]
  %742 = zext i32 %741 to i64
  %743 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %742
  %744 = load i8, ptr %743, align 1, !tbaa !86
  %745 = icmp eq i8 %744, 8
  br i1 %745, label %764, label %746

746:                                              ; preds = %740
  %747 = load ptr, ptr %656, align 8, !tbaa !86
  %748 = load i64, ptr %747, align 8
  %749 = and i64 %748, 65535
  %750 = icmp eq i64 %749, 14
  br i1 %750, label %751, label %753

751:                                              ; preds = %746
  %752 = call i32 @vector_type_mode(ptr noundef nonnull %747) #21
  br label %758

753:                                              ; preds = %746
  %754 = getelementptr inbounds %struct.tree_type, ptr %747, i64 0, i32 6
  %755 = load i32, ptr %754, align 4
  %756 = lshr i32 %755, 16
  %757 = and i32 %756, 255
  br label %758

758:                                              ; preds = %753, %751
  %759 = phi i32 [ %752, %751 ], [ %757, %753 ]
  %760 = zext i32 %759 to i64
  %761 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %760
  %762 = load i8, ptr %761, align 1, !tbaa !86
  %763 = icmp eq i8 %762, 9
  br i1 %763, label %764, label %776

764:                                              ; preds = %758, %740
  %765 = load ptr, ptr %656, align 8, !tbaa !86
  %766 = load i64, ptr %765, align 8
  %767 = and i64 %766, 65535
  %768 = icmp eq i64 %767, 14
  br i1 %768, label %769, label %771

769:                                              ; preds = %764
  %770 = call i32 @vector_type_mode(ptr noundef nonnull %765) #21
  br label %794

771:                                              ; preds = %764
  %772 = getelementptr inbounds %struct.tree_type, ptr %765, i64 0, i32 6
  %773 = load i32, ptr %772, align 4
  %774 = lshr i32 %773, 16
  %775 = and i32 %774, 255
  br label %794

776:                                              ; preds = %758
  %777 = load ptr, ptr %656, align 8, !tbaa !86
  %778 = load i64, ptr %777, align 8
  %779 = and i64 %778, 65535
  %780 = icmp eq i64 %779, 14
  br i1 %780, label %781, label %783

781:                                              ; preds = %776
  %782 = call i32 @vector_type_mode(ptr noundef nonnull %777) #21
  br label %788

783:                                              ; preds = %776
  %784 = getelementptr inbounds %struct.tree_type, ptr %777, i64 0, i32 6
  %785 = load i32, ptr %784, align 4
  %786 = lshr i32 %785, 16
  %787 = and i32 %786, 255
  br label %788

788:                                              ; preds = %783, %781
  %789 = phi i32 [ %782, %781 ], [ %787, %783 ]
  %790 = zext i32 %789 to i64
  %791 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %790
  %792 = load i8, ptr %791, align 1, !tbaa !86
  %793 = zext i8 %792 to i32
  br label %794

794:                                              ; preds = %788, %771, %769
  %795 = phi i32 [ %793, %788 ], [ %770, %769 ], [ %775, %771 ]
  %796 = zext i32 %795 to i64
  %797 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %796
  %798 = load i8, ptr %797, align 1, !tbaa !86
  %799 = icmp eq i8 %798, 9
  %800 = load ptr, ptr %656, align 8, !tbaa !86
  %801 = load i64, ptr %800, align 8
  %802 = and i64 %801, 65535
  %803 = icmp eq i64 %802, 14
  br i1 %799, label %804, label %866

804:                                              ; preds = %794
  br i1 %803, label %805, label %807

805:                                              ; preds = %804
  %806 = call i32 @vector_type_mode(ptr noundef nonnull %800) #21
  br label %812

807:                                              ; preds = %804
  %808 = getelementptr inbounds %struct.tree_type, ptr %800, i64 0, i32 6
  %809 = load i32, ptr %808, align 4
  %810 = lshr i32 %809, 16
  %811 = and i32 %810, 255
  br label %812

812:                                              ; preds = %807, %805
  %813 = phi i32 [ %806, %805 ], [ %811, %807 ]
  %814 = zext i32 %813 to i64
  %815 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %814
  %816 = load i8, ptr %815, align 1, !tbaa !86
  %817 = icmp eq i8 %816, 8
  br i1 %817, label %836, label %818

818:                                              ; preds = %812
  %819 = load ptr, ptr %656, align 8, !tbaa !86
  %820 = load i64, ptr %819, align 8
  %821 = and i64 %820, 65535
  %822 = icmp eq i64 %821, 14
  br i1 %822, label %823, label %825

823:                                              ; preds = %818
  %824 = call i32 @vector_type_mode(ptr noundef nonnull %819) #21
  br label %830

825:                                              ; preds = %818
  %826 = getelementptr inbounds %struct.tree_type, ptr %819, i64 0, i32 6
  %827 = load i32, ptr %826, align 4
  %828 = lshr i32 %827, 16
  %829 = and i32 %828, 255
  br label %830

830:                                              ; preds = %825, %823
  %831 = phi i32 [ %824, %823 ], [ %829, %825 ]
  %832 = zext i32 %831 to i64
  %833 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %832
  %834 = load i8, ptr %833, align 1, !tbaa !86
  %835 = icmp eq i8 %834, 9
  br i1 %835, label %836, label %848

836:                                              ; preds = %830, %812
  %837 = load ptr, ptr %656, align 8, !tbaa !86
  %838 = load i64, ptr %837, align 8
  %839 = and i64 %838, 65535
  %840 = icmp eq i64 %839, 14
  br i1 %840, label %841, label %843

841:                                              ; preds = %836
  %842 = call i32 @vector_type_mode(ptr noundef nonnull %837) #21
  br label %928

843:                                              ; preds = %836
  %844 = getelementptr inbounds %struct.tree_type, ptr %837, i64 0, i32 6
  %845 = load i32, ptr %844, align 4
  %846 = lshr i32 %845, 16
  %847 = and i32 %846, 255
  br label %928

848:                                              ; preds = %830
  %849 = load ptr, ptr %656, align 8, !tbaa !86
  %850 = load i64, ptr %849, align 8
  %851 = and i64 %850, 65535
  %852 = icmp eq i64 %851, 14
  br i1 %852, label %853, label %855

853:                                              ; preds = %848
  %854 = call i32 @vector_type_mode(ptr noundef nonnull %849) #21
  br label %860

855:                                              ; preds = %848
  %856 = getelementptr inbounds %struct.tree_type, ptr %849, i64 0, i32 6
  %857 = load i32, ptr %856, align 4
  %858 = lshr i32 %857, 16
  %859 = and i32 %858, 255
  br label %860

860:                                              ; preds = %855, %853
  %861 = phi i32 [ %854, %853 ], [ %859, %855 ]
  %862 = zext i32 %861 to i64
  %863 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %862
  %864 = load i8, ptr %863, align 1, !tbaa !86
  %865 = zext i8 %864 to i32
  br label %928

866:                                              ; preds = %794
  br i1 %803, label %867, label %869

867:                                              ; preds = %866
  %868 = call i32 @vector_type_mode(ptr noundef nonnull %800) #21
  br label %874

869:                                              ; preds = %866
  %870 = getelementptr inbounds %struct.tree_type, ptr %800, i64 0, i32 6
  %871 = load i32, ptr %870, align 4
  %872 = lshr i32 %871, 16
  %873 = and i32 %872, 255
  br label %874

874:                                              ; preds = %869, %867
  %875 = phi i32 [ %868, %867 ], [ %873, %869 ]
  %876 = zext i32 %875 to i64
  %877 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %876
  %878 = load i8, ptr %877, align 1, !tbaa !86
  %879 = icmp eq i8 %878, 8
  br i1 %879, label %898, label %880

880:                                              ; preds = %874
  %881 = load ptr, ptr %656, align 8, !tbaa !86
  %882 = load i64, ptr %881, align 8
  %883 = and i64 %882, 65535
  %884 = icmp eq i64 %883, 14
  br i1 %884, label %885, label %887

885:                                              ; preds = %880
  %886 = call i32 @vector_type_mode(ptr noundef nonnull %881) #21
  br label %892

887:                                              ; preds = %880
  %888 = getelementptr inbounds %struct.tree_type, ptr %881, i64 0, i32 6
  %889 = load i32, ptr %888, align 4
  %890 = lshr i32 %889, 16
  %891 = and i32 %890, 255
  br label %892

892:                                              ; preds = %887, %885
  %893 = phi i32 [ %886, %885 ], [ %891, %887 ]
  %894 = zext i32 %893 to i64
  %895 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %894
  %896 = load i8, ptr %895, align 1, !tbaa !86
  %897 = icmp eq i8 %896, 9
  br i1 %897, label %898, label %910

898:                                              ; preds = %892, %874
  %899 = load ptr, ptr %656, align 8, !tbaa !86
  %900 = load i64, ptr %899, align 8
  %901 = and i64 %900, 65535
  %902 = icmp eq i64 %901, 14
  br i1 %902, label %903, label %905

903:                                              ; preds = %898
  %904 = call i32 @vector_type_mode(ptr noundef nonnull %899) #21
  br label %928

905:                                              ; preds = %898
  %906 = getelementptr inbounds %struct.tree_type, ptr %899, i64 0, i32 6
  %907 = load i32, ptr %906, align 4
  %908 = lshr i32 %907, 16
  %909 = and i32 %908, 255
  br label %928

910:                                              ; preds = %892
  %911 = load ptr, ptr %656, align 8, !tbaa !86
  %912 = load i64, ptr %911, align 8
  %913 = and i64 %912, 65535
  %914 = icmp eq i64 %913, 14
  br i1 %914, label %915, label %917

915:                                              ; preds = %910
  %916 = call i32 @vector_type_mode(ptr noundef nonnull %911) #21
  br label %922

917:                                              ; preds = %910
  %918 = getelementptr inbounds %struct.tree_type, ptr %911, i64 0, i32 6
  %919 = load i32, ptr %918, align 4
  %920 = lshr i32 %919, 16
  %921 = and i32 %920, 255
  br label %922

922:                                              ; preds = %917, %915
  %923 = phi i32 [ %916, %915 ], [ %921, %917 ]
  %924 = zext i32 %923 to i64
  %925 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %924
  %926 = load i8, ptr %925, align 1, !tbaa !86
  %927 = zext i8 %926 to i32
  br label %928

928:                                              ; preds = %922, %905, %903, %860, %843, %841
  %929 = phi i32 [ %865, %860 ], [ %842, %841 ], [ %847, %843 ], [ %927, %922 ], [ %904, %903 ], [ %909, %905 ]
  %930 = add i32 %929, -38
  %931 = zext i32 %930 to i64
  %932 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %931
  %933 = load ptr, ptr %932, align 8, !tbaa !75
  %934 = getelementptr inbounds %struct.real_format, ptr %933, i64 0, i32 14
  %935 = load i8, ptr %934, align 1, !tbaa !239
  %936 = icmp ne i8 %935, 0
  %937 = load i32, ptr @flag_signed_zeros, align 4
  %938 = icmp ne i32 %937, 0
  %939 = select i1 %936, i1 %938, i1 false
  br i1 %939, label %1104, label %940

940:                                              ; preds = %928, %722
  %941 = getelementptr inbounds %struct.basic_block_def, ptr %112, i64 0, i32 13
  %942 = load i32, ptr %941, align 8, !tbaa !129, !noalias !241
  %943 = and i32 %942, 512
  %944 = icmp eq i32 %943, 0
  br i1 %944, label %945, label %951, !prof !135

945:                                              ; preds = %940
  %946 = getelementptr inbounds %struct.basic_block_def, ptr %112, i64 0, i32 7
  %947 = load ptr, ptr %946, align 8, !tbaa !86, !noalias !241
  %948 = icmp eq ptr %947, null
  br i1 %948, label %951, label %949, !prof !136

949:                                              ; preds = %945
  %950 = load ptr, ptr %947, align 8, !tbaa !137, !noalias !241
  br label %951

951:                                              ; preds = %949, %945, %940
  %952 = phi ptr [ %950, %949 ], [ null, %945 ], [ null, %940 ]
  %953 = icmp eq ptr %952, null
  br i1 %953, label %956, label %954, !prof !136

954:                                              ; preds = %951
  %955 = load ptr, ptr %952, align 8, !tbaa !139, !noalias !241
  br label %956

956:                                              ; preds = %954, %951
  %957 = phi ptr [ %955, %954 ], [ null, %951 ]
  %958 = icmp eq ptr %957, null
  br i1 %958, label %988, label %959, !prof !141

959:                                              ; preds = %956
  %960 = load ptr, ptr %957, align 8, !tbaa !142
  %961 = load i32, ptr %960, align 8
  %962 = and i32 %961, 255
  %963 = icmp eq i32 %962, 4
  br i1 %963, label %969, label %974, !prof !145

964:                                              ; preds = %969
  %965 = load ptr, ptr %972, align 8, !tbaa !142
  %966 = load i32, ptr %965, align 8
  %967 = and i32 %966, 255
  %968 = icmp eq i32 %967, 4
  br i1 %968, label %969, label %974, !prof !146, !llvm.loop !147

969:                                              ; preds = %959, %964
  %970 = phi ptr [ %972, %964 ], [ %957, %959 ]
  %971 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %970, i64 0, i32 2
  %972 = load ptr, ptr %971, align 8, !tbaa !148, !noalias !246
  %973 = icmp eq ptr %972, null
  br i1 %973, label %988, label %964, !prof !149, !llvm.loop !147

974:                                              ; preds = %964, %959
  %975 = phi ptr [ %957, %959 ], [ %972, %964 ]
  %976 = phi i32 [ %962, %959 ], [ %967, %964 ]
  %977 = icmp eq i32 %976, 2
  br i1 %977, label %978, label %1104, !prof !151

978:                                              ; preds = %974, %983
  %979 = phi ptr [ %981, %983 ], [ %975, %974 ]
  %980 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %979, i64 0, i32 2
  %981 = load ptr, ptr %980, align 8, !tbaa !148
  %982 = icmp eq ptr %981, null
  br i1 %982, label %988, label %983

983:                                              ; preds = %978
  %984 = load ptr, ptr %981, align 8, !tbaa !142
  %985 = load i32, ptr %984, align 8
  %986 = and i32 %985, 255
  %987 = icmp eq i32 %986, 2
  br i1 %987, label %978, label %1104, !llvm.loop !152

988:                                              ; preds = %969, %978, %956
  %989 = call ptr @last_stmt(ptr noundef %50) #21
  %990 = load i32, ptr %989, align 8
  %991 = lshr i32 %990, 16
  %992 = add nsw i32 %991, -103
  %993 = icmp ult i32 %992, -2
  br i1 %993, label %1104, label %994, !prof !247

994:                                              ; preds = %988
  call void @extract_true_false_edges_from_block(ptr noundef %50, ptr noundef nonnull %9, ptr noundef nonnull %10) #21
  %995 = load i32, ptr %989, align 8
  %996 = and i32 %995, 255
  %997 = add nsw i32 %996, -10
  %998 = icmp ult i32 %997, -9
  br i1 %998, label %1011, label %999, !prof !248

999:                                              ; preds = %994
  %1000 = zext nneg i32 %996 to i64
  %1001 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %1000
  %1002 = load i32, ptr %1001, align 4, !tbaa !90
  %1003 = zext i32 %1002 to i64
  %1004 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %1003
  %1005 = load i64, ptr %1004, align 8, !tbaa !106
  %1006 = icmp eq i64 %1005, 0
  br i1 %1006, label %1007, label %1008, !prof !248

1007:                                             ; preds = %999
  call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 1622, ptr noundef nonnull @.str.1) #21
  br label %1008

1008:                                             ; preds = %1007, %999
  %1009 = getelementptr inbounds i8, ptr %989, i64 %1005
  %1010 = load ptr, ptr %1009, align 8, !tbaa !75
  br label %1011

1011:                                             ; preds = %1008, %994
  %1012 = phi ptr [ %1010, %1008 ], [ null, %994 ]
  %1013 = call i32 @operand_equal_for_phi_arg_p(ptr noundef %438, ptr noundef %1012) #21
  %1014 = icmp eq i32 %1013, 0
  br i1 %1014, label %1037, label %1015, !prof !249

1015:                                             ; preds = %1011
  %1016 = load i32, ptr %989, align 8
  %1017 = and i32 %1016, 255
  %1018 = add nsw i32 %1017, -10
  %1019 = icmp ult i32 %1018, -9
  br i1 %1019, label %1033, label %1020

1020:                                             ; preds = %1015
  %1021 = zext nneg i32 %1017 to i64
  %1022 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %1021
  %1023 = load i32, ptr %1022, align 4, !tbaa !90
  %1024 = zext i32 %1023 to i64
  %1025 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %1024
  %1026 = load i64, ptr %1025, align 8, !tbaa !106
  %1027 = icmp eq i64 %1026, 0
  br i1 %1027, label %1028, label %1029

1028:                                             ; preds = %1020
  call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 1622, ptr noundef nonnull @.str.1) #21
  br label %1029

1029:                                             ; preds = %1028, %1020
  %1030 = getelementptr inbounds i8, ptr %989, i64 %1026
  %1031 = getelementptr inbounds ptr, ptr %1030, i64 1
  %1032 = load ptr, ptr %1031, align 8, !tbaa !75
  br label %1033

1033:                                             ; preds = %1029, %1015
  %1034 = phi ptr [ %1032, %1029 ], [ null, %1015 ]
  %1035 = call i32 @operand_equal_for_phi_arg_p(ptr noundef %448, ptr noundef %1034) #21
  %1036 = icmp eq i32 %1035, 0
  br i1 %1036, label %1037, label %1080

1037:                                             ; preds = %1033, %1011
  %1038 = load i32, ptr %989, align 8
  %1039 = and i32 %1038, 255
  %1040 = add nsw i32 %1039, -10
  %1041 = icmp ult i32 %1040, -9
  br i1 %1041, label %1054, label %1042, !prof !248

1042:                                             ; preds = %1037
  %1043 = zext nneg i32 %1039 to i64
  %1044 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %1043
  %1045 = load i32, ptr %1044, align 4, !tbaa !90
  %1046 = zext i32 %1045 to i64
  %1047 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %1046
  %1048 = load i64, ptr %1047, align 8, !tbaa !106
  %1049 = icmp eq i64 %1048, 0
  br i1 %1049, label %1050, label %1051, !prof !248

1050:                                             ; preds = %1042
  call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 1622, ptr noundef nonnull @.str.1) #21
  br label %1051

1051:                                             ; preds = %1050, %1042
  %1052 = getelementptr inbounds i8, ptr %989, i64 %1048
  %1053 = load ptr, ptr %1052, align 8, !tbaa !75
  br label %1054

1054:                                             ; preds = %1051, %1037
  %1055 = phi ptr [ %1053, %1051 ], [ null, %1037 ]
  %1056 = call i32 @operand_equal_for_phi_arg_p(ptr noundef %448, ptr noundef %1055) #21
  %1057 = icmp eq i32 %1056, 0
  br i1 %1057, label %1104, label %1058, !prof !249

1058:                                             ; preds = %1054
  %1059 = load i32, ptr %989, align 8
  %1060 = and i32 %1059, 255
  %1061 = add nsw i32 %1060, -10
  %1062 = icmp ult i32 %1061, -9
  br i1 %1062, label %1076, label %1063

1063:                                             ; preds = %1058
  %1064 = zext nneg i32 %1060 to i64
  %1065 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %1064
  %1066 = load i32, ptr %1065, align 4, !tbaa !90
  %1067 = zext i32 %1066 to i64
  %1068 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %1067
  %1069 = load i64, ptr %1068, align 8, !tbaa !106
  %1070 = icmp eq i64 %1069, 0
  br i1 %1070, label %1071, label %1072

1071:                                             ; preds = %1063
  call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 1622, ptr noundef nonnull @.str.1) #21
  br label %1072

1072:                                             ; preds = %1071, %1063
  %1073 = getelementptr inbounds i8, ptr %989, i64 %1069
  %1074 = getelementptr inbounds ptr, ptr %1073, i64 1
  %1075 = load ptr, ptr %1074, align 8, !tbaa !75
  br label %1076

1076:                                             ; preds = %1072, %1058
  %1077 = phi ptr [ %1075, %1072 ], [ null, %1058 ]
  %1078 = call i32 @operand_equal_for_phi_arg_p(ptr noundef %438, ptr noundef %1077) #21
  %1079 = icmp eq i32 %1078, 0
  br i1 %1079, label %1104, label %1080

1080:                                             ; preds = %1076, %1033
  %1081 = icmp eq i32 %991, 102
  %1082 = load ptr, ptr %9, align 8
  %1083 = load ptr, ptr %10, align 8
  %1084 = select i1 %1081, ptr %1082, ptr %1083
  %1085 = getelementptr inbounds %struct.edge_def, ptr %1084, i64 0, i32 1
  %1086 = load ptr, ptr %1085, align 8, !tbaa !173
  %1087 = icmp eq ptr %1086, %112
  br i1 %1087, label %1088, label %1100

1088:                                             ; preds = %1080
  %1089 = getelementptr inbounds %struct.basic_block_def, ptr %1086, i64 0, i32 1
  %1090 = load ptr, ptr %1089, align 8, !tbaa !172
  %1091 = icmp eq ptr %1090, null
  br i1 %1091, label %1095, label %1092

1092:                                             ; preds = %1088
  %1093 = load i32, ptr %1090, align 8, !tbaa !113
  %1094 = icmp eq i32 %1093, 1
  br i1 %1094, label %1096, label %1095

1095:                                             ; preds = %1092, %1088
  call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 645, ptr noundef nonnull @.str.1) #21
  br label %1096

1096:                                             ; preds = %1095, %1092
  %1097 = load ptr, ptr %1089, align 8, !tbaa !172
  %1098 = getelementptr inbounds %struct.VEC_edge_base, ptr %1097, i64 0, i32 2, i64 0
  %1099 = load ptr, ptr %1098, align 8, !tbaa !75
  br label %1100

1100:                                             ; preds = %1096, %1080
  %1101 = phi ptr [ %1099, %1096 ], [ %1084, %1080 ]
  %1102 = icmp eq ptr %1101, %117
  %1103 = select i1 %1102, ptr %438, ptr %448
  call fastcc void @replace_phi_edge_with_variable(ptr noundef %50, ptr noundef %111, ptr noundef %427, ptr noundef %1103)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #21
  br label %2387

1104:                                             ; preds = %983, %928, %974, %988, %1054, %1076
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #21
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #21
  %1105 = load ptr, ptr %656, align 8, !tbaa !86
  %1106 = load i64, ptr %1105, align 8
  %1107 = and i64 %1106, 65535
  %1108 = icmp eq i64 %1107, 14
  br i1 %1108, label %1109, label %1111, !prof !238

1109:                                             ; preds = %1104
  %1110 = call i32 @vector_type_mode(ptr noundef nonnull %1105) #21
  br label %1116

1111:                                             ; preds = %1104
  %1112 = getelementptr inbounds %struct.tree_type, ptr %1105, i64 0, i32 6
  %1113 = load i32, ptr %1112, align 4
  %1114 = lshr i32 %1113, 16
  %1115 = and i32 %1114, 255
  br label %1116

1116:                                             ; preds = %1111, %1109
  %1117 = phi i32 [ %1110, %1109 ], [ %1115, %1111 ]
  %1118 = zext i32 %1117 to i64
  %1119 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %1118
  %1120 = load i8, ptr %1119, align 1, !tbaa !86
  %1121 = icmp eq i8 %1120, 8
  br i1 %1121, label %1176, label %1122, !prof !238

1122:                                             ; preds = %1116
  %1123 = load ptr, ptr %656, align 8, !tbaa !86
  %1124 = load i64, ptr %1123, align 8
  %1125 = and i64 %1124, 65535
  %1126 = icmp eq i64 %1125, 14
  br i1 %1126, label %1127, label %1129, !prof !238

1127:                                             ; preds = %1122
  %1128 = call i32 @vector_type_mode(ptr noundef nonnull %1123) #21
  br label %1134

1129:                                             ; preds = %1122
  %1130 = getelementptr inbounds %struct.tree_type, ptr %1123, i64 0, i32 6
  %1131 = load i32, ptr %1130, align 4
  %1132 = lshr i32 %1131, 16
  %1133 = and i32 %1132, 255
  br label %1134

1134:                                             ; preds = %1129, %1127
  %1135 = phi i32 [ %1128, %1127 ], [ %1133, %1129 ]
  %1136 = zext i32 %1135 to i64
  %1137 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %1136
  %1138 = load i8, ptr %1137, align 1, !tbaa !86
  %1139 = icmp eq i8 %1138, 9
  br i1 %1139, label %1176, label %1140, !prof !238

1140:                                             ; preds = %1134
  %1141 = load ptr, ptr %656, align 8, !tbaa !86
  %1142 = load i64, ptr %1141, align 8
  %1143 = and i64 %1142, 65535
  %1144 = icmp eq i64 %1143, 14
  br i1 %1144, label %1145, label %1147, !prof !238

1145:                                             ; preds = %1140
  %1146 = call i32 @vector_type_mode(ptr noundef nonnull %1141) #21
  br label %1152

1147:                                             ; preds = %1140
  %1148 = getelementptr inbounds %struct.tree_type, ptr %1141, i64 0, i32 6
  %1149 = load i32, ptr %1148, align 4
  %1150 = lshr i32 %1149, 16
  %1151 = and i32 %1150, 255
  br label %1152

1152:                                             ; preds = %1147, %1145
  %1153 = phi i32 [ %1146, %1145 ], [ %1151, %1147 ]
  %1154 = zext i32 %1153 to i64
  %1155 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %1154
  %1156 = load i8, ptr %1155, align 1, !tbaa !86
  %1157 = icmp eq i8 %1156, 11
  br i1 %1157, label %1176, label %1158, !prof !238

1158:                                             ; preds = %1152
  %1159 = load ptr, ptr %656, align 8, !tbaa !86
  %1160 = load i64, ptr %1159, align 8
  %1161 = and i64 %1160, 65535
  %1162 = icmp eq i64 %1161, 14
  br i1 %1162, label %1163, label %1165, !prof !238

1163:                                             ; preds = %1158
  %1164 = call i32 @vector_type_mode(ptr noundef nonnull %1159) #21
  br label %1170

1165:                                             ; preds = %1158
  %1166 = getelementptr inbounds %struct.tree_type, ptr %1159, i64 0, i32 6
  %1167 = load i32, ptr %1166, align 4
  %1168 = lshr i32 %1167, 16
  %1169 = and i32 %1168, 255
  br label %1170

1170:                                             ; preds = %1165, %1163
  %1171 = phi i32 [ %1164, %1163 ], [ %1169, %1165 ]
  %1172 = zext i32 %1171 to i64
  %1173 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %1172
  %1174 = load i8, ptr %1173, align 1, !tbaa !86
  %1175 = icmp eq i8 %1174, 17
  br i1 %1175, label %1176, label %1388, !prof !238

1176:                                             ; preds = %1170, %1152, %1134, %1116
  %1177 = load ptr, ptr %656, align 8, !tbaa !86
  %1178 = load i64, ptr %1177, align 8
  %1179 = and i64 %1178, 65535
  %1180 = icmp eq i64 %1179, 14
  br i1 %1180, label %1181, label %1183

1181:                                             ; preds = %1176
  %1182 = call i32 @vector_type_mode(ptr noundef nonnull %1177) #21
  br label %1188

1183:                                             ; preds = %1176
  %1184 = getelementptr inbounds %struct.tree_type, ptr %1177, i64 0, i32 6
  %1185 = load i32, ptr %1184, align 4
  %1186 = lshr i32 %1185, 16
  %1187 = and i32 %1186, 255
  br label %1188

1188:                                             ; preds = %1183, %1181
  %1189 = phi i32 [ %1182, %1181 ], [ %1187, %1183 ]
  %1190 = zext i32 %1189 to i64
  %1191 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %1190
  %1192 = load i8, ptr %1191, align 1, !tbaa !86
  %1193 = icmp eq i8 %1192, 8
  br i1 %1193, label %1212, label %1194

1194:                                             ; preds = %1188
  %1195 = load ptr, ptr %656, align 8, !tbaa !86
  %1196 = load i64, ptr %1195, align 8
  %1197 = and i64 %1196, 65535
  %1198 = icmp eq i64 %1197, 14
  br i1 %1198, label %1199, label %1201

1199:                                             ; preds = %1194
  %1200 = call i32 @vector_type_mode(ptr noundef nonnull %1195) #21
  br label %1206

1201:                                             ; preds = %1194
  %1202 = getelementptr inbounds %struct.tree_type, ptr %1195, i64 0, i32 6
  %1203 = load i32, ptr %1202, align 4
  %1204 = lshr i32 %1203, 16
  %1205 = and i32 %1204, 255
  br label %1206

1206:                                             ; preds = %1201, %1199
  %1207 = phi i32 [ %1200, %1199 ], [ %1205, %1201 ]
  %1208 = zext i32 %1207 to i64
  %1209 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %1208
  %1210 = load i8, ptr %1209, align 1, !tbaa !86
  %1211 = icmp eq i8 %1210, 9
  br i1 %1211, label %1212, label %1224

1212:                                             ; preds = %1206, %1188
  %1213 = load ptr, ptr %656, align 8, !tbaa !86
  %1214 = load i64, ptr %1213, align 8
  %1215 = and i64 %1214, 65535
  %1216 = icmp eq i64 %1215, 14
  br i1 %1216, label %1217, label %1219

1217:                                             ; preds = %1212
  %1218 = call i32 @vector_type_mode(ptr noundef nonnull %1213) #21
  br label %1242

1219:                                             ; preds = %1212
  %1220 = getelementptr inbounds %struct.tree_type, ptr %1213, i64 0, i32 6
  %1221 = load i32, ptr %1220, align 4
  %1222 = lshr i32 %1221, 16
  %1223 = and i32 %1222, 255
  br label %1242

1224:                                             ; preds = %1206
  %1225 = load ptr, ptr %656, align 8, !tbaa !86
  %1226 = load i64, ptr %1225, align 8
  %1227 = and i64 %1226, 65535
  %1228 = icmp eq i64 %1227, 14
  br i1 %1228, label %1229, label %1231

1229:                                             ; preds = %1224
  %1230 = call i32 @vector_type_mode(ptr noundef nonnull %1225) #21
  br label %1236

1231:                                             ; preds = %1224
  %1232 = getelementptr inbounds %struct.tree_type, ptr %1225, i64 0, i32 6
  %1233 = load i32, ptr %1232, align 4
  %1234 = lshr i32 %1233, 16
  %1235 = and i32 %1234, 255
  br label %1236

1236:                                             ; preds = %1231, %1229
  %1237 = phi i32 [ %1230, %1229 ], [ %1235, %1231 ]
  %1238 = zext i32 %1237 to i64
  %1239 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %1238
  %1240 = load i8, ptr %1239, align 1, !tbaa !86
  %1241 = zext i8 %1240 to i32
  br label %1242

1242:                                             ; preds = %1236, %1219, %1217
  %1243 = phi i32 [ %1241, %1236 ], [ %1218, %1217 ], [ %1223, %1219 ]
  %1244 = zext i32 %1243 to i64
  %1245 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %1244
  %1246 = load i8, ptr %1245, align 1, !tbaa !86
  %1247 = icmp eq i8 %1246, 9
  %1248 = load ptr, ptr %656, align 8, !tbaa !86
  %1249 = load i64, ptr %1248, align 8
  %1250 = and i64 %1249, 65535
  %1251 = icmp eq i64 %1250, 14
  br i1 %1247, label %1252, label %1314

1252:                                             ; preds = %1242
  br i1 %1251, label %1253, label %1255

1253:                                             ; preds = %1252
  %1254 = call i32 @vector_type_mode(ptr noundef nonnull %1248) #21
  br label %1260

1255:                                             ; preds = %1252
  %1256 = getelementptr inbounds %struct.tree_type, ptr %1248, i64 0, i32 6
  %1257 = load i32, ptr %1256, align 4
  %1258 = lshr i32 %1257, 16
  %1259 = and i32 %1258, 255
  br label %1260

1260:                                             ; preds = %1255, %1253
  %1261 = phi i32 [ %1254, %1253 ], [ %1259, %1255 ]
  %1262 = zext i32 %1261 to i64
  %1263 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %1262
  %1264 = load i8, ptr %1263, align 1, !tbaa !86
  %1265 = icmp eq i8 %1264, 8
  br i1 %1265, label %1284, label %1266

1266:                                             ; preds = %1260
  %1267 = load ptr, ptr %656, align 8, !tbaa !86
  %1268 = load i64, ptr %1267, align 8
  %1269 = and i64 %1268, 65535
  %1270 = icmp eq i64 %1269, 14
  br i1 %1270, label %1271, label %1273

1271:                                             ; preds = %1266
  %1272 = call i32 @vector_type_mode(ptr noundef nonnull %1267) #21
  br label %1278

1273:                                             ; preds = %1266
  %1274 = getelementptr inbounds %struct.tree_type, ptr %1267, i64 0, i32 6
  %1275 = load i32, ptr %1274, align 4
  %1276 = lshr i32 %1275, 16
  %1277 = and i32 %1276, 255
  br label %1278

1278:                                             ; preds = %1273, %1271
  %1279 = phi i32 [ %1272, %1271 ], [ %1277, %1273 ]
  %1280 = zext i32 %1279 to i64
  %1281 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %1280
  %1282 = load i8, ptr %1281, align 1, !tbaa !86
  %1283 = icmp eq i8 %1282, 9
  br i1 %1283, label %1284, label %1296

1284:                                             ; preds = %1278, %1260
  %1285 = load ptr, ptr %656, align 8, !tbaa !86
  %1286 = load i64, ptr %1285, align 8
  %1287 = and i64 %1286, 65535
  %1288 = icmp eq i64 %1287, 14
  br i1 %1288, label %1289, label %1291

1289:                                             ; preds = %1284
  %1290 = call i32 @vector_type_mode(ptr noundef nonnull %1285) #21
  br label %1376

1291:                                             ; preds = %1284
  %1292 = getelementptr inbounds %struct.tree_type, ptr %1285, i64 0, i32 6
  %1293 = load i32, ptr %1292, align 4
  %1294 = lshr i32 %1293, 16
  %1295 = and i32 %1294, 255
  br label %1376

1296:                                             ; preds = %1278
  %1297 = load ptr, ptr %656, align 8, !tbaa !86
  %1298 = load i64, ptr %1297, align 8
  %1299 = and i64 %1298, 65535
  %1300 = icmp eq i64 %1299, 14
  br i1 %1300, label %1301, label %1303

1301:                                             ; preds = %1296
  %1302 = call i32 @vector_type_mode(ptr noundef nonnull %1297) #21
  br label %1308

1303:                                             ; preds = %1296
  %1304 = getelementptr inbounds %struct.tree_type, ptr %1297, i64 0, i32 6
  %1305 = load i32, ptr %1304, align 4
  %1306 = lshr i32 %1305, 16
  %1307 = and i32 %1306, 255
  br label %1308

1308:                                             ; preds = %1303, %1301
  %1309 = phi i32 [ %1302, %1301 ], [ %1307, %1303 ]
  %1310 = zext i32 %1309 to i64
  %1311 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %1310
  %1312 = load i8, ptr %1311, align 1, !tbaa !86
  %1313 = zext i8 %1312 to i32
  br label %1376

1314:                                             ; preds = %1242
  br i1 %1251, label %1315, label %1317

1315:                                             ; preds = %1314
  %1316 = call i32 @vector_type_mode(ptr noundef nonnull %1248) #21
  br label %1322

1317:                                             ; preds = %1314
  %1318 = getelementptr inbounds %struct.tree_type, ptr %1248, i64 0, i32 6
  %1319 = load i32, ptr %1318, align 4
  %1320 = lshr i32 %1319, 16
  %1321 = and i32 %1320, 255
  br label %1322

1322:                                             ; preds = %1317, %1315
  %1323 = phi i32 [ %1316, %1315 ], [ %1321, %1317 ]
  %1324 = zext i32 %1323 to i64
  %1325 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %1324
  %1326 = load i8, ptr %1325, align 1, !tbaa !86
  %1327 = icmp eq i8 %1326, 8
  br i1 %1327, label %1346, label %1328

1328:                                             ; preds = %1322
  %1329 = load ptr, ptr %656, align 8, !tbaa !86
  %1330 = load i64, ptr %1329, align 8
  %1331 = and i64 %1330, 65535
  %1332 = icmp eq i64 %1331, 14
  br i1 %1332, label %1333, label %1335

1333:                                             ; preds = %1328
  %1334 = call i32 @vector_type_mode(ptr noundef nonnull %1329) #21
  br label %1340

1335:                                             ; preds = %1328
  %1336 = getelementptr inbounds %struct.tree_type, ptr %1329, i64 0, i32 6
  %1337 = load i32, ptr %1336, align 4
  %1338 = lshr i32 %1337, 16
  %1339 = and i32 %1338, 255
  br label %1340

1340:                                             ; preds = %1335, %1333
  %1341 = phi i32 [ %1334, %1333 ], [ %1339, %1335 ]
  %1342 = zext i32 %1341 to i64
  %1343 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %1342
  %1344 = load i8, ptr %1343, align 1, !tbaa !86
  %1345 = icmp eq i8 %1344, 9
  br i1 %1345, label %1346, label %1358

1346:                                             ; preds = %1340, %1322
  %1347 = load ptr, ptr %656, align 8, !tbaa !86
  %1348 = load i64, ptr %1347, align 8
  %1349 = and i64 %1348, 65535
  %1350 = icmp eq i64 %1349, 14
  br i1 %1350, label %1351, label %1353

1351:                                             ; preds = %1346
  %1352 = call i32 @vector_type_mode(ptr noundef nonnull %1347) #21
  br label %1376

1353:                                             ; preds = %1346
  %1354 = getelementptr inbounds %struct.tree_type, ptr %1347, i64 0, i32 6
  %1355 = load i32, ptr %1354, align 4
  %1356 = lshr i32 %1355, 16
  %1357 = and i32 %1356, 255
  br label %1376

1358:                                             ; preds = %1340
  %1359 = load ptr, ptr %656, align 8, !tbaa !86
  %1360 = load i64, ptr %1359, align 8
  %1361 = and i64 %1360, 65535
  %1362 = icmp eq i64 %1361, 14
  br i1 %1362, label %1363, label %1365

1363:                                             ; preds = %1358
  %1364 = call i32 @vector_type_mode(ptr noundef nonnull %1359) #21
  br label %1370

1365:                                             ; preds = %1358
  %1366 = getelementptr inbounds %struct.tree_type, ptr %1359, i64 0, i32 6
  %1367 = load i32, ptr %1366, align 4
  %1368 = lshr i32 %1367, 16
  %1369 = and i32 %1368, 255
  br label %1370

1370:                                             ; preds = %1365, %1363
  %1371 = phi i32 [ %1364, %1363 ], [ %1369, %1365 ]
  %1372 = zext i32 %1371 to i64
  %1373 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %1372
  %1374 = load i8, ptr %1373, align 1, !tbaa !86
  %1375 = zext i8 %1374 to i32
  br label %1376

1376:                                             ; preds = %1370, %1353, %1351, %1308, %1291, %1289
  %1377 = phi i32 [ %1313, %1308 ], [ %1290, %1289 ], [ %1295, %1291 ], [ %1375, %1370 ], [ %1352, %1351 ], [ %1357, %1353 ]
  %1378 = add i32 %1377, -38
  %1379 = zext i32 %1378 to i64
  %1380 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %1379
  %1381 = load ptr, ptr %1380, align 8, !tbaa !75
  %1382 = getelementptr inbounds %struct.real_format, ptr %1381, i64 0, i32 14
  %1383 = load i8, ptr %1382, align 1, !tbaa !239
  %1384 = icmp ne i8 %1383, 0
  %1385 = load i32, ptr @flag_signed_zeros, align 4
  %1386 = icmp ne i32 %1385, 0
  %1387 = select i1 %1384, i1 %1386, i1 false
  br i1 %1387, label %1672, label %1388

1388:                                             ; preds = %1376, %1170
  %1389 = call ptr @last_and_only_stmt(ptr noundef nonnull %112) #21
  %1390 = icmp eq ptr %1389, null
  br i1 %1390, label %1672, label %1391, !prof !250

1391:                                             ; preds = %1388
  %1392 = load i32, ptr %1389, align 8
  %1393 = and i32 %1392, 255
  %1394 = icmp eq i32 %1393, 6
  br i1 %1394, label %1395, label %1672, !prof !251

1395:                                             ; preds = %1391
  %1396 = zext nneg i32 %1393 to i64
  %1397 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %1396
  %1398 = load i32, ptr %1397, align 4, !tbaa !90
  %1399 = zext i32 %1398 to i64
  %1400 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %1399
  %1401 = load i64, ptr %1400, align 8, !tbaa !106
  %1402 = icmp eq i64 %1401, 0
  br i1 %1402, label %1403, label %1404, !prof !252

1403:                                             ; preds = %1395
  call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 1622, ptr noundef nonnull @.str.1) #21
  br label %1404

1404:                                             ; preds = %1403, %1395
  %1405 = getelementptr inbounds i8, ptr %1389, i64 %1401
  %1406 = load ptr, ptr %1405, align 8, !tbaa !75
  %1407 = load i32, ptr %1389, align 8
  %1408 = trunc i32 %1407 to i8
  switch i8 %1408, label %1411 [
    i8 6, label %1409
    i8 1, label %1409
    i8 8, label %1412
  ], !prof !253

1409:                                             ; preds = %1404, %1404
  %1410 = lshr i32 %1407, 16
  br label %1412

1411:                                             ; preds = %1404
  call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 1446, ptr noundef nonnull @.str.1) #21
  br label %1412

1412:                                             ; preds = %1411, %1409, %1404
  %1413 = phi i32 [ %1410, %1409 ], [ 0, %1411 ], [ 59, %1404 ]
  %1414 = zext nneg i32 %1413 to i64
  %1415 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %1414
  %1416 = load i8, ptr %1415, align 1, !tbaa !86
  %1417 = icmp eq i8 %1416, 3
  br i1 %1417, label %1418, label %1438, !prof !254

1418:                                             ; preds = %1412
  %1419 = load i32, ptr %1389, align 8
  %1420 = and i32 %1419, 255
  %1421 = add nsw i32 %1420, -1
  %1422 = icmp ult i32 %1421, 9
  call void @llvm.assume(i1 %1422)
  %1423 = zext nneg i32 %1420 to i64
  %1424 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %1423
  %1425 = load i32, ptr %1424, align 4, !tbaa !90
  %1426 = zext i32 %1425 to i64
  %1427 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %1426
  %1428 = load i64, ptr %1427, align 8, !tbaa !106
  %1429 = icmp eq i64 %1428, 0
  br i1 %1429, label %1430, label %1431, !prof !255

1430:                                             ; preds = %1418
  call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 1622, ptr noundef nonnull @.str.1) #21
  br label %1431

1431:                                             ; preds = %1430, %1418
  %1432 = getelementptr inbounds i8, ptr %1389, i64 %1428
  %1433 = getelementptr inbounds ptr, ptr %1432, i64 1
  %1434 = load ptr, ptr %1433, align 8, !tbaa !75
  %1435 = load i64, ptr %1434, align 8
  %1436 = trunc i64 %1435 to i32
  %1437 = and i32 %1436, 65535
  br label %1438

1438:                                             ; preds = %1431, %1412
  %1439 = phi i32 [ %1437, %1431 ], [ %1413, %1412 ]
  %1440 = icmp eq i32 %1439, 79
  br i1 %1440, label %1441, label %1672, !prof !252

1441:                                             ; preds = %1438
  %1442 = load i32, ptr %1389, align 8
  %1443 = and i32 %1442, 255
  %1444 = add nsw i32 %1443, -10
  %1445 = icmp ult i32 %1444, -9
  br i1 %1445, label %1459, label %1446

1446:                                             ; preds = %1441
  %1447 = zext nneg i32 %1443 to i64
  %1448 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %1447
  %1449 = load i32, ptr %1448, align 4, !tbaa !90
  %1450 = zext i32 %1449 to i64
  %1451 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %1450
  %1452 = load i64, ptr %1451, align 8, !tbaa !106
  %1453 = icmp eq i64 %1452, 0
  br i1 %1453, label %1454, label %1455

1454:                                             ; preds = %1446
  call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 1622, ptr noundef nonnull @.str.1) #21
  br label %1455

1455:                                             ; preds = %1454, %1446
  %1456 = getelementptr inbounds i8, ptr %1389, i64 %1452
  %1457 = getelementptr inbounds ptr, ptr %1456, i64 1
  %1458 = load ptr, ptr %1457, align 8, !tbaa !75
  br label %1459

1459:                                             ; preds = %1455, %1441
  %1460 = phi ptr [ %1458, %1455 ], [ null, %1441 ]
  %1461 = icmp eq ptr %1406, %438
  %1462 = icmp eq ptr %1460, %448
  %1463 = select i1 %1461, i1 %1462, i1 false
  br i1 %1463, label %1468, label %1464

1464:                                             ; preds = %1459
  %1465 = icmp eq ptr %1406, %448
  %1466 = icmp eq ptr %1460, %438
  %1467 = select i1 %1465, i1 %1466, i1 false
  br i1 %1467, label %1468, label %1672

1468:                                             ; preds = %1464, %1459
  %1469 = call ptr @last_stmt(ptr noundef %50) #21
  %1470 = getelementptr inbounds %struct.gimple_statement_phi, ptr %427, i64 0, i32 3
  %1471 = load ptr, ptr %1470, align 8, !tbaa !75
  %1472 = load i32, ptr %1469, align 8
  %1473 = lshr i32 %1472, 16
  %1474 = add nsw i32 %1473, -101
  %1475 = icmp ult i32 %1474, -4
  br i1 %1475, label %1672, label %1476

1476:                                             ; preds = %1468
  %1477 = and i32 %1472, 255
  %1478 = add nsw i32 %1477, -10
  %1479 = icmp ult i32 %1478, -9
  br i1 %1479, label %1492, label %1480

1480:                                             ; preds = %1476
  %1481 = zext nneg i32 %1477 to i64
  %1482 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %1481
  %1483 = load i32, ptr %1482, align 4, !tbaa !90
  %1484 = zext i32 %1483 to i64
  %1485 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %1484
  %1486 = load i64, ptr %1485, align 8, !tbaa !106
  %1487 = icmp eq i64 %1486, 0
  br i1 %1487, label %1488, label %1489

1488:                                             ; preds = %1480
  call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 1622, ptr noundef nonnull @.str.1) #21
  br label %1489

1489:                                             ; preds = %1488, %1480
  %1490 = getelementptr inbounds i8, ptr %1469, i64 %1486
  %1491 = load ptr, ptr %1490, align 8, !tbaa !75
  br label %1492

1492:                                             ; preds = %1489, %1476
  %1493 = phi ptr [ %1491, %1489 ], [ null, %1476 ]
  %1494 = icmp eq ptr %1493, %1460
  br i1 %1494, label %1495, label %1672

1495:                                             ; preds = %1492
  %1496 = load i32, ptr %1469, align 8
  %1497 = and i32 %1496, 255
  %1498 = add nsw i32 %1497, -1
  %1499 = icmp ult i32 %1498, 9
  call void @llvm.assume(i1 %1499)
  %1500 = zext nneg i32 %1497 to i64
  %1501 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %1500
  %1502 = load i32, ptr %1501, align 4, !tbaa !90
  %1503 = zext i32 %1502 to i64
  %1504 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %1503
  %1505 = load i64, ptr %1504, align 8, !tbaa !106
  %1506 = icmp eq i64 %1505, 0
  br i1 %1506, label %1507, label %1508

1507:                                             ; preds = %1495
  call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 1622, ptr noundef nonnull @.str.1) #21
  br label %1508

1508:                                             ; preds = %1507, %1495
  %1509 = getelementptr inbounds i8, ptr %1469, i64 %1505
  %1510 = getelementptr inbounds ptr, ptr %1509, i64 1
  %1511 = load ptr, ptr %1510, align 8, !tbaa !75
  %1512 = getelementptr inbounds %struct.tree_common, ptr %1511, i64 0, i32 2
  %1513 = load ptr, ptr %1512, align 8, !tbaa !86
  %1514 = load i64, ptr %1513, align 8
  %1515 = and i64 %1514, 65535
  %1516 = icmp eq i64 %1515, 9
  br i1 %1516, label %1585, label %1517

1517:                                             ; preds = %1508
  %1518 = load i32, ptr %1469, align 8
  %1519 = and i32 %1518, 255
  %1520 = add nsw i32 %1519, -1
  %1521 = icmp ult i32 %1520, 9
  call void @llvm.assume(i1 %1521)
  %1522 = zext nneg i32 %1519 to i64
  %1523 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %1522
  %1524 = load i32, ptr %1523, align 4, !tbaa !90
  %1525 = zext i32 %1524 to i64
  %1526 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %1525
  %1527 = load i64, ptr %1526, align 8, !tbaa !106
  %1528 = icmp eq i64 %1527, 0
  br i1 %1528, label %1529, label %1530

1529:                                             ; preds = %1517
  call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 1622, ptr noundef nonnull @.str.1) #21
  br label %1530

1530:                                             ; preds = %1529, %1517
  %1531 = getelementptr inbounds i8, ptr %1469, i64 %1527
  %1532 = getelementptr inbounds ptr, ptr %1531, i64 1
  %1533 = load ptr, ptr %1532, align 8, !tbaa !75
  %1534 = getelementptr inbounds %struct.tree_common, ptr %1533, i64 0, i32 2
  %1535 = load ptr, ptr %1534, align 8, !tbaa !86
  %1536 = load i64, ptr %1535, align 8
  %1537 = and i64 %1536, 65535
  %1538 = icmp eq i64 %1537, 13
  br i1 %1538, label %1561, label %1539

1539:                                             ; preds = %1530
  %1540 = load i32, ptr %1469, align 8
  %1541 = and i32 %1540, 255
  %1542 = add nsw i32 %1541, -1
  %1543 = icmp ult i32 %1542, 9
  call void @llvm.assume(i1 %1543)
  %1544 = zext nneg i32 %1541 to i64
  %1545 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %1544
  %1546 = load i32, ptr %1545, align 4, !tbaa !90
  %1547 = zext i32 %1546 to i64
  %1548 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %1547
  %1549 = load i64, ptr %1548, align 8, !tbaa !106
  %1550 = icmp eq i64 %1549, 0
  br i1 %1550, label %1551, label %1552

1551:                                             ; preds = %1539
  call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 1622, ptr noundef nonnull @.str.1) #21
  br label %1552

1552:                                             ; preds = %1551, %1539
  %1553 = getelementptr inbounds i8, ptr %1469, i64 %1549
  %1554 = getelementptr inbounds ptr, ptr %1553, i64 1
  %1555 = load ptr, ptr %1554, align 8, !tbaa !75
  %1556 = getelementptr inbounds %struct.tree_common, ptr %1555, i64 0, i32 2
  %1557 = load ptr, ptr %1556, align 8, !tbaa !86
  %1558 = load i64, ptr %1557, align 8
  %1559 = and i64 %1558, 65535
  %1560 = icmp eq i64 %1559, 14
  br i1 %1560, label %1561, label %1607

1561:                                             ; preds = %1552, %1530
  %1562 = load i32, ptr %1469, align 8
  %1563 = and i32 %1562, 255
  %1564 = add nsw i32 %1563, -1
  %1565 = icmp ult i32 %1564, 9
  call void @llvm.assume(i1 %1565)
  %1566 = zext nneg i32 %1563 to i64
  %1567 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %1566
  %1568 = load i32, ptr %1567, align 4, !tbaa !90
  %1569 = zext i32 %1568 to i64
  %1570 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %1569
  %1571 = load i64, ptr %1570, align 8, !tbaa !106
  %1572 = icmp eq i64 %1571, 0
  br i1 %1572, label %1573, label %1574

1573:                                             ; preds = %1561
  call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 1622, ptr noundef nonnull @.str.1) #21
  br label %1574

1574:                                             ; preds = %1573, %1561
  %1575 = getelementptr inbounds i8, ptr %1469, i64 %1571
  %1576 = getelementptr inbounds ptr, ptr %1575, i64 1
  %1577 = load ptr, ptr %1576, align 8, !tbaa !75
  %1578 = getelementptr inbounds %struct.tree_common, ptr %1577, i64 0, i32 2
  %1579 = load ptr, ptr %1578, align 8, !tbaa !86
  %1580 = getelementptr inbounds %struct.tree_common, ptr %1579, i64 0, i32 2
  %1581 = load ptr, ptr %1580, align 8, !tbaa !86
  %1582 = load i64, ptr %1581, align 8
  %1583 = and i64 %1582, 65535
  %1584 = icmp eq i64 %1583, 9
  br i1 %1584, label %1585, label %1607

1585:                                             ; preds = %1574, %1508
  %1586 = load i32, ptr %1469, align 8
  %1587 = and i32 %1586, 255
  %1588 = add nsw i32 %1587, -10
  %1589 = icmp ult i32 %1588, -9
  br i1 %1589, label %1603, label %1590

1590:                                             ; preds = %1585
  %1591 = zext nneg i32 %1587 to i64
  %1592 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %1591
  %1593 = load i32, ptr %1592, align 4, !tbaa !90
  %1594 = zext i32 %1593 to i64
  %1595 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %1594
  %1596 = load i64, ptr %1595, align 8, !tbaa !106
  %1597 = icmp eq i64 %1596, 0
  br i1 %1597, label %1598, label %1599

1598:                                             ; preds = %1590
  call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 1622, ptr noundef nonnull @.str.1) #21
  br label %1599

1599:                                             ; preds = %1598, %1590
  %1600 = getelementptr inbounds i8, ptr %1469, i64 %1596
  %1601 = getelementptr inbounds ptr, ptr %1600, i64 1
  %1602 = load ptr, ptr %1601, align 8, !tbaa !75
  br label %1603

1603:                                             ; preds = %1599, %1585
  %1604 = phi ptr [ %1602, %1599 ], [ null, %1585 ]
  %1605 = call i32 @real_zerop(ptr noundef %1604) #21
  %1606 = icmp eq i32 %1605, 0
  br i1 %1606, label %1672, label %1629

1607:                                             ; preds = %1574, %1552
  %1608 = load i32, ptr %1469, align 8
  %1609 = and i32 %1608, 255
  %1610 = add nsw i32 %1609, -10
  %1611 = icmp ult i32 %1610, -9
  br i1 %1611, label %1625, label %1612

1612:                                             ; preds = %1607
  %1613 = zext nneg i32 %1609 to i64
  %1614 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %1613
  %1615 = load i32, ptr %1614, align 4, !tbaa !90
  %1616 = zext i32 %1615 to i64
  %1617 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %1616
  %1618 = load i64, ptr %1617, align 8, !tbaa !106
  %1619 = icmp eq i64 %1618, 0
  br i1 %1619, label %1620, label %1621

1620:                                             ; preds = %1612
  call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 1622, ptr noundef nonnull @.str.1) #21
  br label %1621

1621:                                             ; preds = %1620, %1612
  %1622 = getelementptr inbounds i8, ptr %1469, i64 %1618
  %1623 = getelementptr inbounds ptr, ptr %1622, i64 1
  %1624 = load ptr, ptr %1623, align 8, !tbaa !75
  br label %1625

1625:                                             ; preds = %1621, %1607
  %1626 = phi ptr [ %1624, %1621 ], [ null, %1607 ]
  %1627 = call i32 @integer_zerop(ptr noundef %1626) #21
  %1628 = icmp eq i32 %1627, 0
  br i1 %1628, label %1672, label %1629

1629:                                             ; preds = %1625, %1603
  call void @extract_true_false_edges_from_block(ptr noundef %50, ptr noundef nonnull %7, ptr noundef nonnull %8) #21
  %1630 = add nsw i32 %1473, -99
  %1631 = icmp ult i32 %1630, 2
  %1632 = load ptr, ptr %7, align 8
  %1633 = load ptr, ptr %8, align 8
  %1634 = select i1 %1631, ptr %1632, ptr %1633
  %1635 = getelementptr inbounds %struct.edge_def, ptr %1634, i64 0, i32 1
  %1636 = load ptr, ptr %1635, align 8, !tbaa !173
  %1637 = icmp eq ptr %1636, %112
  %1638 = call ptr @duplicate_ssa_name(ptr noundef %1471, ptr noundef null) #21
  br i1 %1637, label %1639, label %1646

1639:                                             ; preds = %1629
  %1640 = getelementptr inbounds %struct.tree_common, ptr %1638, i64 0, i32 2
  %1641 = load ptr, ptr %1640, align 8, !tbaa !86
  %1642 = call ptr @create_tmp_var(ptr noundef %1641, ptr noundef null) #21
  %1643 = call zeroext i8 @add_referenced_var(ptr noundef %1642) #21
  %1644 = load ptr, ptr @cfun, align 8, !tbaa !75
  %1645 = call ptr @make_ssa_name_fn(ptr noundef %1644, ptr noundef %1642, ptr noundef null) #21
  br label %1646

1646:                                             ; preds = %1639, %1629
  %1647 = phi ptr [ %1645, %1639 ], [ %1638, %1629 ]
  %1648 = call ptr @gimple_build_assign_with_ops_stat(i32 noundef 82, ptr noundef %1647, ptr noundef %1460, ptr noundef null) #21
  %1649 = getelementptr inbounds %struct.basic_block_def, ptr %50, i64 0, i32 13
  %1650 = load i32, ptr %1649, align 8, !tbaa !129, !noalias !256
  %1651 = and i32 %1650, 512
  %1652 = icmp eq i32 %1651, 0
  br i1 %1652, label %1653, label %1659

1653:                                             ; preds = %1646
  %1654 = getelementptr inbounds %struct.basic_block_def, ptr %50, i64 0, i32 7
  %1655 = load ptr, ptr %1654, align 8, !tbaa !86, !noalias !256
  %1656 = icmp eq ptr %1655, null
  br i1 %1656, label %1659, label %1657

1657:                                             ; preds = %1653
  %1658 = load ptr, ptr %1655, align 8, !tbaa !137, !noalias !256
  br label %1659

1659:                                             ; preds = %1657, %1653, %1646
  %1660 = phi ptr [ %1658, %1657 ], [ null, %1653 ], [ null, %1646 ]
  %1661 = icmp eq ptr %1660, null
  br i1 %1661, label %1665, label %1662

1662:                                             ; preds = %1659
  %1663 = getelementptr inbounds %struct.gimple_seq_d, ptr %1660, i64 0, i32 1
  %1664 = load ptr, ptr %1663, align 8, !tbaa !207, !noalias !256
  br label %1665

1665:                                             ; preds = %1662, %1659
  %1666 = phi ptr [ %1664, %1662 ], [ null, %1659 ]
  %1667 = getelementptr inbounds i8, ptr %6, i64 8
  %1668 = getelementptr inbounds i8, ptr %6, i64 16
  store ptr %1666, ptr %6, align 8, !tbaa.struct !194
  store ptr %1660, ptr %1667, align 8, !tbaa.struct !202
  store ptr %50, ptr %1668, align 8, !tbaa.struct !203
  call void @gsi_insert_before(ptr noundef nonnull %6, ptr noundef %1648, i32 noundef 0) #21
  br i1 %1637, label %1669, label %1671

1669:                                             ; preds = %1665
  %1670 = call ptr @gimple_build_assign_with_ops_stat(i32 noundef 79, ptr noundef %1638, ptr noundef %1647, ptr noundef null) #21
  call void @gsi_insert_after(ptr noundef nonnull %6, ptr noundef %1670, i32 noundef 0) #21
  br label %1671

1671:                                             ; preds = %1669, %1665
  call fastcc void @replace_phi_edge_with_variable(ptr noundef %50, ptr noundef %111, ptr noundef %427, ptr noundef %1638)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #21
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #21
  br label %2387

1672:                                             ; preds = %1376, %1388, %1391, %1438, %1464, %1468, %1492, %1603, %1625
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #21
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #21
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #21
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #21
  %1673 = getelementptr inbounds %struct.gimple_statement_phi, ptr %427, i64 0, i32 3
  %1674 = load ptr, ptr %1673, align 8, !tbaa !75
  %1675 = getelementptr inbounds %struct.tree_common, ptr %1674, i64 0, i32 2
  %1676 = load ptr, ptr %1675, align 8, !tbaa !86
  %1677 = load i64, ptr %1676, align 8
  %1678 = and i64 %1677, 65535
  %1679 = icmp eq i64 %1678, 14
  br i1 %1679, label %1680, label %1682, !prof !238

1680:                                             ; preds = %1672
  %1681 = call i32 @vector_type_mode(ptr noundef nonnull %1676) #21
  br label %1687

1682:                                             ; preds = %1672
  %1683 = getelementptr inbounds %struct.tree_type, ptr %1676, i64 0, i32 6
  %1684 = load i32, ptr %1683, align 4
  %1685 = lshr i32 %1684, 16
  %1686 = and i32 %1685, 255
  br label %1687

1687:                                             ; preds = %1682, %1680
  %1688 = phi i32 [ %1681, %1680 ], [ %1686, %1682 ]
  %1689 = zext i32 %1688 to i64
  %1690 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %1689
  %1691 = load i8, ptr %1690, align 1, !tbaa !86
  %1692 = icmp eq i8 %1691, 8
  br i1 %1692, label %1744, label %1693, !prof !238

1693:                                             ; preds = %1687
  %1694 = load i64, ptr %1676, align 8
  %1695 = and i64 %1694, 65535
  %1696 = icmp eq i64 %1695, 14
  br i1 %1696, label %1697, label %1699, !prof !238

1697:                                             ; preds = %1693
  %1698 = call i32 @vector_type_mode(ptr noundef nonnull %1676) #21
  br label %1704

1699:                                             ; preds = %1693
  %1700 = getelementptr inbounds %struct.tree_type, ptr %1676, i64 0, i32 6
  %1701 = load i32, ptr %1700, align 4
  %1702 = lshr i32 %1701, 16
  %1703 = and i32 %1702, 255
  br label %1704

1704:                                             ; preds = %1699, %1697
  %1705 = phi i32 [ %1698, %1697 ], [ %1703, %1699 ]
  %1706 = zext i32 %1705 to i64
  %1707 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %1706
  %1708 = load i8, ptr %1707, align 1, !tbaa !86
  %1709 = icmp eq i8 %1708, 9
  br i1 %1709, label %1744, label %1710, !prof !238

1710:                                             ; preds = %1704
  %1711 = load i64, ptr %1676, align 8
  %1712 = and i64 %1711, 65535
  %1713 = icmp eq i64 %1712, 14
  br i1 %1713, label %1714, label %1716, !prof !238

1714:                                             ; preds = %1710
  %1715 = call i32 @vector_type_mode(ptr noundef nonnull %1676) #21
  br label %1721

1716:                                             ; preds = %1710
  %1717 = getelementptr inbounds %struct.tree_type, ptr %1676, i64 0, i32 6
  %1718 = load i32, ptr %1717, align 4
  %1719 = lshr i32 %1718, 16
  %1720 = and i32 %1719, 255
  br label %1721

1721:                                             ; preds = %1716, %1714
  %1722 = phi i32 [ %1715, %1714 ], [ %1720, %1716 ]
  %1723 = zext i32 %1722 to i64
  %1724 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %1723
  %1725 = load i8, ptr %1724, align 1, !tbaa !86
  %1726 = icmp eq i8 %1725, 11
  br i1 %1726, label %1744, label %1727, !prof !238

1727:                                             ; preds = %1721
  %1728 = load i64, ptr %1676, align 8
  %1729 = and i64 %1728, 65535
  %1730 = icmp eq i64 %1729, 14
  br i1 %1730, label %1731, label %1733, !prof !238

1731:                                             ; preds = %1727
  %1732 = call i32 @vector_type_mode(ptr noundef nonnull %1676) #21
  br label %1738

1733:                                             ; preds = %1727
  %1734 = getelementptr inbounds %struct.tree_type, ptr %1676, i64 0, i32 6
  %1735 = load i32, ptr %1734, align 4
  %1736 = lshr i32 %1735, 16
  %1737 = and i32 %1736, 255
  br label %1738

1738:                                             ; preds = %1733, %1731
  %1739 = phi i32 [ %1732, %1731 ], [ %1737, %1733 ]
  %1740 = zext i32 %1739 to i64
  %1741 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %1740
  %1742 = load i8, ptr %1741, align 1, !tbaa !86
  %1743 = icmp eq i8 %1742, 17
  br i1 %1743, label %1744, label %1945, !prof !238

1744:                                             ; preds = %1738, %1721, %1704, %1687
  %1745 = load i64, ptr %1676, align 8
  %1746 = and i64 %1745, 65535
  %1747 = icmp eq i64 %1746, 14
  br i1 %1747, label %1748, label %1750

1748:                                             ; preds = %1744
  %1749 = call i32 @vector_type_mode(ptr noundef nonnull %1676) #21
  br label %1755

1750:                                             ; preds = %1744
  %1751 = getelementptr inbounds %struct.tree_type, ptr %1676, i64 0, i32 6
  %1752 = load i32, ptr %1751, align 4
  %1753 = lshr i32 %1752, 16
  %1754 = and i32 %1753, 255
  br label %1755

1755:                                             ; preds = %1750, %1748
  %1756 = phi i32 [ %1749, %1748 ], [ %1754, %1750 ]
  %1757 = zext i32 %1756 to i64
  %1758 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %1757
  %1759 = load i8, ptr %1758, align 1, !tbaa !86
  %1760 = icmp eq i8 %1759, 8
  br i1 %1760, label %1778, label %1761

1761:                                             ; preds = %1755
  %1762 = load i64, ptr %1676, align 8
  %1763 = and i64 %1762, 65535
  %1764 = icmp eq i64 %1763, 14
  br i1 %1764, label %1765, label %1767

1765:                                             ; preds = %1761
  %1766 = call i32 @vector_type_mode(ptr noundef nonnull %1676) #21
  br label %1772

1767:                                             ; preds = %1761
  %1768 = getelementptr inbounds %struct.tree_type, ptr %1676, i64 0, i32 6
  %1769 = load i32, ptr %1768, align 4
  %1770 = lshr i32 %1769, 16
  %1771 = and i32 %1770, 255
  br label %1772

1772:                                             ; preds = %1767, %1765
  %1773 = phi i32 [ %1766, %1765 ], [ %1771, %1767 ]
  %1774 = zext i32 %1773 to i64
  %1775 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %1774
  %1776 = load i8, ptr %1775, align 1, !tbaa !86
  %1777 = icmp eq i8 %1776, 9
  br i1 %1777, label %1778, label %1789

1778:                                             ; preds = %1772, %1755
  %1779 = load i64, ptr %1676, align 8
  %1780 = and i64 %1779, 65535
  %1781 = icmp eq i64 %1780, 14
  br i1 %1781, label %1782, label %1784

1782:                                             ; preds = %1778
  %1783 = call i32 @vector_type_mode(ptr noundef nonnull %1676) #21
  br label %1806

1784:                                             ; preds = %1778
  %1785 = getelementptr inbounds %struct.tree_type, ptr %1676, i64 0, i32 6
  %1786 = load i32, ptr %1785, align 4
  %1787 = lshr i32 %1786, 16
  %1788 = and i32 %1787, 255
  br label %1806

1789:                                             ; preds = %1772
  %1790 = load i64, ptr %1676, align 8
  %1791 = and i64 %1790, 65535
  %1792 = icmp eq i64 %1791, 14
  br i1 %1792, label %1793, label %1795

1793:                                             ; preds = %1789
  %1794 = call i32 @vector_type_mode(ptr noundef nonnull %1676) #21
  br label %1800

1795:                                             ; preds = %1789
  %1796 = getelementptr inbounds %struct.tree_type, ptr %1676, i64 0, i32 6
  %1797 = load i32, ptr %1796, align 4
  %1798 = lshr i32 %1797, 16
  %1799 = and i32 %1798, 255
  br label %1800

1800:                                             ; preds = %1795, %1793
  %1801 = phi i32 [ %1794, %1793 ], [ %1799, %1795 ]
  %1802 = zext i32 %1801 to i64
  %1803 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %1802
  %1804 = load i8, ptr %1803, align 1, !tbaa !86
  %1805 = zext i8 %1804 to i32
  br label %1806

1806:                                             ; preds = %1800, %1784, %1782
  %1807 = phi i32 [ %1805, %1800 ], [ %1783, %1782 ], [ %1788, %1784 ]
  %1808 = zext i32 %1807 to i64
  %1809 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %1808
  %1810 = load i8, ptr %1809, align 1, !tbaa !86
  %1811 = icmp eq i8 %1810, 9
  %1812 = load i64, ptr %1676, align 8
  %1813 = and i64 %1812, 65535
  %1814 = icmp eq i64 %1813, 14
  br i1 %1811, label %1815, label %1874

1815:                                             ; preds = %1806
  br i1 %1814, label %1816, label %1818

1816:                                             ; preds = %1815
  %1817 = call i32 @vector_type_mode(ptr noundef nonnull %1676) #21
  br label %1823

1818:                                             ; preds = %1815
  %1819 = getelementptr inbounds %struct.tree_type, ptr %1676, i64 0, i32 6
  %1820 = load i32, ptr %1819, align 4
  %1821 = lshr i32 %1820, 16
  %1822 = and i32 %1821, 255
  br label %1823

1823:                                             ; preds = %1818, %1816
  %1824 = phi i32 [ %1817, %1816 ], [ %1822, %1818 ]
  %1825 = zext i32 %1824 to i64
  %1826 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %1825
  %1827 = load i8, ptr %1826, align 1, !tbaa !86
  %1828 = icmp eq i8 %1827, 8
  br i1 %1828, label %1846, label %1829

1829:                                             ; preds = %1823
  %1830 = load i64, ptr %1676, align 8
  %1831 = and i64 %1830, 65535
  %1832 = icmp eq i64 %1831, 14
  br i1 %1832, label %1833, label %1835

1833:                                             ; preds = %1829
  %1834 = call i32 @vector_type_mode(ptr noundef nonnull %1676) #21
  br label %1840

1835:                                             ; preds = %1829
  %1836 = getelementptr inbounds %struct.tree_type, ptr %1676, i64 0, i32 6
  %1837 = load i32, ptr %1836, align 4
  %1838 = lshr i32 %1837, 16
  %1839 = and i32 %1838, 255
  br label %1840

1840:                                             ; preds = %1835, %1833
  %1841 = phi i32 [ %1834, %1833 ], [ %1839, %1835 ]
  %1842 = zext i32 %1841 to i64
  %1843 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %1842
  %1844 = load i8, ptr %1843, align 1, !tbaa !86
  %1845 = icmp eq i8 %1844, 9
  br i1 %1845, label %1846, label %1857

1846:                                             ; preds = %1840, %1823
  %1847 = load i64, ptr %1676, align 8
  %1848 = and i64 %1847, 65535
  %1849 = icmp eq i64 %1848, 14
  br i1 %1849, label %1850, label %1852

1850:                                             ; preds = %1846
  %1851 = call i32 @vector_type_mode(ptr noundef nonnull %1676) #21
  br label %1933

1852:                                             ; preds = %1846
  %1853 = getelementptr inbounds %struct.tree_type, ptr %1676, i64 0, i32 6
  %1854 = load i32, ptr %1853, align 4
  %1855 = lshr i32 %1854, 16
  %1856 = and i32 %1855, 255
  br label %1933

1857:                                             ; preds = %1840
  %1858 = load i64, ptr %1676, align 8
  %1859 = and i64 %1858, 65535
  %1860 = icmp eq i64 %1859, 14
  br i1 %1860, label %1861, label %1863

1861:                                             ; preds = %1857
  %1862 = call i32 @vector_type_mode(ptr noundef nonnull %1676) #21
  br label %1868

1863:                                             ; preds = %1857
  %1864 = getelementptr inbounds %struct.tree_type, ptr %1676, i64 0, i32 6
  %1865 = load i32, ptr %1864, align 4
  %1866 = lshr i32 %1865, 16
  %1867 = and i32 %1866, 255
  br label %1868

1868:                                             ; preds = %1863, %1861
  %1869 = phi i32 [ %1862, %1861 ], [ %1867, %1863 ]
  %1870 = zext i32 %1869 to i64
  %1871 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %1870
  %1872 = load i8, ptr %1871, align 1, !tbaa !86
  %1873 = zext i8 %1872 to i32
  br label %1933

1874:                                             ; preds = %1806
  br i1 %1814, label %1875, label %1877

1875:                                             ; preds = %1874
  %1876 = call i32 @vector_type_mode(ptr noundef nonnull %1676) #21
  br label %1882

1877:                                             ; preds = %1874
  %1878 = getelementptr inbounds %struct.tree_type, ptr %1676, i64 0, i32 6
  %1879 = load i32, ptr %1878, align 4
  %1880 = lshr i32 %1879, 16
  %1881 = and i32 %1880, 255
  br label %1882

1882:                                             ; preds = %1877, %1875
  %1883 = phi i32 [ %1876, %1875 ], [ %1881, %1877 ]
  %1884 = zext i32 %1883 to i64
  %1885 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %1884
  %1886 = load i8, ptr %1885, align 1, !tbaa !86
  %1887 = icmp eq i8 %1886, 8
  br i1 %1887, label %1905, label %1888

1888:                                             ; preds = %1882
  %1889 = load i64, ptr %1676, align 8
  %1890 = and i64 %1889, 65535
  %1891 = icmp eq i64 %1890, 14
  br i1 %1891, label %1892, label %1894

1892:                                             ; preds = %1888
  %1893 = call i32 @vector_type_mode(ptr noundef nonnull %1676) #21
  br label %1899

1894:                                             ; preds = %1888
  %1895 = getelementptr inbounds %struct.tree_type, ptr %1676, i64 0, i32 6
  %1896 = load i32, ptr %1895, align 4
  %1897 = lshr i32 %1896, 16
  %1898 = and i32 %1897, 255
  br label %1899

1899:                                             ; preds = %1894, %1892
  %1900 = phi i32 [ %1893, %1892 ], [ %1898, %1894 ]
  %1901 = zext i32 %1900 to i64
  %1902 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %1901
  %1903 = load i8, ptr %1902, align 1, !tbaa !86
  %1904 = icmp eq i8 %1903, 9
  br i1 %1904, label %1905, label %1916

1905:                                             ; preds = %1899, %1882
  %1906 = load i64, ptr %1676, align 8
  %1907 = and i64 %1906, 65535
  %1908 = icmp eq i64 %1907, 14
  br i1 %1908, label %1909, label %1911

1909:                                             ; preds = %1905
  %1910 = call i32 @vector_type_mode(ptr noundef nonnull %1676) #21
  br label %1933

1911:                                             ; preds = %1905
  %1912 = getelementptr inbounds %struct.tree_type, ptr %1676, i64 0, i32 6
  %1913 = load i32, ptr %1912, align 4
  %1914 = lshr i32 %1913, 16
  %1915 = and i32 %1914, 255
  br label %1933

1916:                                             ; preds = %1899
  %1917 = load i64, ptr %1676, align 8
  %1918 = and i64 %1917, 65535
  %1919 = icmp eq i64 %1918, 14
  br i1 %1919, label %1920, label %1922

1920:                                             ; preds = %1916
  %1921 = call i32 @vector_type_mode(ptr noundef nonnull %1676) #21
  br label %1927

1922:                                             ; preds = %1916
  %1923 = getelementptr inbounds %struct.tree_type, ptr %1676, i64 0, i32 6
  %1924 = load i32, ptr %1923, align 4
  %1925 = lshr i32 %1924, 16
  %1926 = and i32 %1925, 255
  br label %1927

1927:                                             ; preds = %1922, %1920
  %1928 = phi i32 [ %1921, %1920 ], [ %1926, %1922 ]
  %1929 = zext i32 %1928 to i64
  %1930 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %1929
  %1931 = load i8, ptr %1930, align 1, !tbaa !86
  %1932 = zext i8 %1931 to i32
  br label %1933

1933:                                             ; preds = %1927, %1911, %1909, %1868, %1852, %1850
  %1934 = phi i32 [ %1873, %1868 ], [ %1851, %1850 ], [ %1856, %1852 ], [ %1932, %1927 ], [ %1910, %1909 ], [ %1915, %1911 ]
  %1935 = add i32 %1934, -38
  %1936 = zext i32 %1935 to i64
  %1937 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %1936
  %1938 = load ptr, ptr %1937, align 8, !tbaa !75
  %1939 = getelementptr inbounds %struct.real_format, ptr %1938, i64 0, i32 11
  %1940 = load i8, ptr %1939, align 2, !tbaa !259
  %1941 = icmp eq i8 %1940, 0
  %1942 = load i32, ptr @flag_finite_math_only, align 4
  %1943 = icmp ne i32 %1942, 0
  %1944 = select i1 %1941, i1 true, i1 %1943
  br i1 %1944, label %1945, label %2385

1945:                                             ; preds = %1933, %1738
  %1946 = call ptr @last_stmt(ptr noundef %50) #21
  %1947 = load i32, ptr %1946, align 8
  %1948 = lshr i32 %1947, 16
  %1949 = add nsw i32 %1948, -97
  %1950 = icmp ult i32 %1949, 2
  br i1 %1950, label %1951, label %1985, !prof !260

1951:                                             ; preds = %1945
  %1952 = and i32 %1947, 255
  %1953 = add nsw i32 %1952, -10
  %1954 = icmp ult i32 %1953, -9
  br i1 %1954, label %1967, label %1955, !prof !261

1955:                                             ; preds = %1951
  %1956 = zext nneg i32 %1952 to i64
  %1957 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %1956
  %1958 = load i32, ptr %1957, align 4, !tbaa !90
  %1959 = zext i32 %1958 to i64
  %1960 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %1959
  %1961 = load i64, ptr %1960, align 8, !tbaa !106
  %1962 = icmp eq i64 %1961, 0
  br i1 %1962, label %1963, label %1964, !prof !261

1963:                                             ; preds = %1955
  call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 1622, ptr noundef nonnull @.str.1) #21
  br label %1964

1964:                                             ; preds = %1963, %1955
  %1965 = getelementptr inbounds i8, ptr %1946, i64 %1961
  %1966 = load ptr, ptr %1965, align 8, !tbaa !75
  br label %1967

1967:                                             ; preds = %1964, %1951
  %1968 = phi ptr [ %1966, %1964 ], [ null, %1951 ]
  %1969 = load i32, ptr %1946, align 8
  %1970 = and i32 %1969, 255
  %1971 = add nsw i32 %1970, -10
  %1972 = icmp ult i32 %1971, -9
  br i1 %1972, label %2026, label %1973, !prof !261

1973:                                             ; preds = %1967
  %1974 = zext nneg i32 %1970 to i64
  %1975 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %1974
  %1976 = load i32, ptr %1975, align 4, !tbaa !90
  %1977 = zext i32 %1976 to i64
  %1978 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %1977
  %1979 = load i64, ptr %1978, align 8, !tbaa !106
  %1980 = icmp eq i64 %1979, 0
  br i1 %1980, label %1981, label %1982, !prof !261

1981:                                             ; preds = %1973
  call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 1622, ptr noundef nonnull @.str.1) #21
  br label %1982

1982:                                             ; preds = %1981, %1973
  %1983 = getelementptr inbounds i8, ptr %1946, i64 %1979
  %1984 = getelementptr inbounds ptr, ptr %1983, i64 1
  br label %2022

1985:                                             ; preds = %1945
  %1986 = add nsw i32 %1948, -99
  %1987 = icmp ult i32 %1986, 2
  br i1 %1987, label %1988, label %2385, !prof !262

1988:                                             ; preds = %1985
  %1989 = and i32 %1947, 255
  %1990 = add nsw i32 %1989, -10
  %1991 = icmp ult i32 %1990, -9
  br i1 %1991, label %2005, label %1992

1992:                                             ; preds = %1988
  %1993 = zext nneg i32 %1989 to i64
  %1994 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %1993
  %1995 = load i32, ptr %1994, align 4, !tbaa !90
  %1996 = zext i32 %1995 to i64
  %1997 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %1996
  %1998 = load i64, ptr %1997, align 8, !tbaa !106
  %1999 = icmp eq i64 %1998, 0
  br i1 %1999, label %2000, label %2001

2000:                                             ; preds = %1992
  call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 1622, ptr noundef nonnull @.str.1) #21
  br label %2001

2001:                                             ; preds = %2000, %1992
  %2002 = getelementptr inbounds i8, ptr %1946, i64 %1998
  %2003 = getelementptr inbounds ptr, ptr %2002, i64 1
  %2004 = load ptr, ptr %2003, align 8, !tbaa !75
  br label %2005

2005:                                             ; preds = %2001, %1988
  %2006 = phi ptr [ %2004, %2001 ], [ null, %1988 ]
  %2007 = load i32, ptr %1946, align 8
  %2008 = and i32 %2007, 255
  %2009 = add nsw i32 %2008, -10
  %2010 = icmp ult i32 %2009, -9
  br i1 %2010, label %2026, label %2011

2011:                                             ; preds = %2005
  %2012 = zext nneg i32 %2008 to i64
  %2013 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %2012
  %2014 = load i32, ptr %2013, align 4, !tbaa !90
  %2015 = zext i32 %2014 to i64
  %2016 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %2015
  %2017 = load i64, ptr %2016, align 8, !tbaa !106
  %2018 = icmp eq i64 %2017, 0
  br i1 %2018, label %2019, label %2020

2019:                                             ; preds = %2011
  call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 1622, ptr noundef nonnull @.str.1) #21
  br label %2020

2020:                                             ; preds = %2019, %2011
  %2021 = getelementptr inbounds i8, ptr %1946, i64 %2017
  br label %2022

2022:                                             ; preds = %1982, %2020
  %2023 = phi ptr [ %2021, %2020 ], [ %1984, %1982 ]
  %2024 = phi ptr [ %2006, %2020 ], [ %1968, %1982 ]
  %2025 = load ptr, ptr %2023, align 8, !tbaa !75
  br label %2026

2026:                                             ; preds = %2022, %2005, %1967
  %2027 = phi ptr [ null, %1967 ], [ null, %2005 ], [ %2025, %2022 ]
  %2028 = phi ptr [ %1968, %1967 ], [ %2006, %2005 ], [ %2024, %2022 ]
  call void @extract_true_false_edges_from_block(ptr noundef %50, ptr noundef nonnull %2, ptr noundef nonnull %3) #21
  %2029 = load ptr, ptr %2, align 8, !tbaa !75
  %2030 = getelementptr inbounds %struct.edge_def, ptr %2029, i64 0, i32 1
  %2031 = load ptr, ptr %2030, align 8, !tbaa !173
  %2032 = icmp eq ptr %2031, %112
  br i1 %2032, label %2033, label %2038, !prof !263

2033:                                             ; preds = %2026
  %2034 = getelementptr inbounds %struct.basic_block_def, ptr %2031, i64 0, i32 1
  %2035 = load ptr, ptr %2034, align 8, !tbaa !172
  %2036 = getelementptr inbounds %struct.VEC_edge_base, ptr %2035, i64 0, i32 2, i64 0
  %2037 = load ptr, ptr %2036, align 8, !tbaa !75
  store ptr %2037, ptr %2, align 8, !tbaa !75
  br label %2038

2038:                                             ; preds = %2033, %2026
  %2039 = load ptr, ptr %3, align 8, !tbaa !75
  %2040 = getelementptr inbounds %struct.edge_def, ptr %2039, i64 0, i32 1
  %2041 = load ptr, ptr %2040, align 8, !tbaa !173
  %2042 = icmp eq ptr %2041, %112
  br i1 %2042, label %2043, label %2048, !prof !264

2043:                                             ; preds = %2038
  %2044 = getelementptr inbounds %struct.basic_block_def, ptr %2041, i64 0, i32 1
  %2045 = load ptr, ptr %2044, align 8, !tbaa !172
  %2046 = getelementptr inbounds %struct.VEC_edge_base, ptr %2045, i64 0, i32 2, i64 0
  %2047 = load ptr, ptr %2046, align 8, !tbaa !75
  store ptr %2047, ptr %3, align 8, !tbaa !75
  br label %2048

2048:                                             ; preds = %2043, %2038
  %2049 = load ptr, ptr %2, align 8, !tbaa !75
  %2050 = icmp eq ptr %2049, %117
  %2051 = load ptr, ptr %3, align 8, !tbaa !75
  br i1 %2050, label %2052, label %2054, !prof !263

2052:                                             ; preds = %2048
  %2053 = icmp eq ptr %2051, %111
  br i1 %2053, label %2064, label %2060, !prof !265

2054:                                             ; preds = %2048
  %2055 = icmp eq ptr %2051, %117
  br i1 %2055, label %2057, label %2056, !prof !266

2056:                                             ; preds = %2054
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 687, ptr noundef nonnull @.str.1) #21
  br label %2057

2057:                                             ; preds = %2056, %2054
  %2058 = load ptr, ptr %2, align 8, !tbaa !75
  %2059 = icmp eq ptr %2058, %111
  br i1 %2059, label %2064, label %2060, !prof !266

2060:                                             ; preds = %2057, %2052
  %2061 = phi i32 [ 681, %2052 ], [ 688, %2057 ]
  %2062 = phi ptr [ %438, %2052 ], [ %448, %2057 ]
  %2063 = phi ptr [ %448, %2052 ], [ %438, %2057 ]
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef %2061, ptr noundef nonnull @.str.1) #21
  br label %2064

2064:                                             ; preds = %2060, %2057, %2052
  %2065 = phi ptr [ %438, %2052 ], [ %448, %2057 ], [ %2062, %2060 ]
  %2066 = phi ptr [ %448, %2052 ], [ %438, %2057 ], [ %2063, %2060 ]
  %2067 = getelementptr inbounds %struct.basic_block_def, ptr %112, i64 0, i32 13
  %2068 = load i32, ptr %2067, align 8, !tbaa !129, !noalias !267
  %2069 = and i32 %2068, 512
  %2070 = icmp eq i32 %2069, 0
  br i1 %2070, label %2071, label %2077, !prof !135

2071:                                             ; preds = %2064
  %2072 = getelementptr inbounds %struct.basic_block_def, ptr %112, i64 0, i32 7
  %2073 = load ptr, ptr %2072, align 8, !tbaa !86, !noalias !267
  %2074 = icmp eq ptr %2073, null
  br i1 %2074, label %2077, label %2075, !prof !136

2075:                                             ; preds = %2071
  %2076 = load ptr, ptr %2073, align 8, !tbaa !137, !noalias !267
  br label %2077

2077:                                             ; preds = %2075, %2071, %2064
  %2078 = phi ptr [ %2076, %2075 ], [ null, %2071 ], [ null, %2064 ]
  %2079 = icmp eq ptr %2078, null
  br i1 %2079, label %2082, label %2080, !prof !136

2080:                                             ; preds = %2077
  %2081 = load ptr, ptr %2078, align 8, !tbaa !139, !noalias !267
  br label %2082

2082:                                             ; preds = %2080, %2077
  %2083 = phi ptr [ %2081, %2080 ], [ null, %2077 ]
  %2084 = icmp eq ptr %2083, null
  br i1 %2084, label %2114, label %2085, !prof !141

2085:                                             ; preds = %2082
  %2086 = load ptr, ptr %2083, align 8, !tbaa !142
  %2087 = load i32, ptr %2086, align 8
  %2088 = and i32 %2087, 255
  %2089 = icmp eq i32 %2088, 4
  br i1 %2089, label %2095, label %2100, !prof !145

2090:                                             ; preds = %2095
  %2091 = load ptr, ptr %2098, align 8, !tbaa !142
  %2092 = load i32, ptr %2091, align 8
  %2093 = and i32 %2092, 255
  %2094 = icmp eq i32 %2093, 4
  br i1 %2094, label %2095, label %2100, !prof !146, !llvm.loop !147

2095:                                             ; preds = %2085, %2090
  %2096 = phi ptr [ %2098, %2090 ], [ %2083, %2085 ]
  %2097 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %2096, i64 0, i32 2
  %2098 = load ptr, ptr %2097, align 8, !tbaa !148, !noalias !272
  %2099 = icmp eq ptr %2098, null
  br i1 %2099, label %2114, label %2090, !prof !149, !llvm.loop !147

2100:                                             ; preds = %2090, %2085
  %2101 = phi ptr [ %2083, %2085 ], [ %2098, %2090 ]
  %2102 = phi i32 [ %2088, %2085 ], [ %2093, %2090 ]
  %2103 = icmp eq i32 %2102, 2
  br i1 %2103, label %2104, label %2126, !prof !151

2104:                                             ; preds = %2100, %2109
  %2105 = phi ptr [ %2107, %2109 ], [ %2101, %2100 ]
  %2106 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %2105, i64 0, i32 2
  %2107 = load ptr, ptr %2106, align 8, !tbaa !148
  %2108 = icmp eq ptr %2107, null
  br i1 %2108, label %2114, label %2109

2109:                                             ; preds = %2104
  %2110 = load ptr, ptr %2107, align 8, !tbaa !142
  %2111 = load i32, ptr %2110, align 8
  %2112 = and i32 %2111, 255
  %2113 = icmp eq i32 %2112, 2
  br i1 %2113, label %2104, label %2126, !llvm.loop !152

2114:                                             ; preds = %2095, %2104, %2082
  %2115 = call i32 @operand_equal_for_phi_arg_p(ptr noundef %2065, ptr noundef %2028) #21
  %2116 = icmp eq i32 %2115, 0
  br i1 %2116, label %2120, label %2117, !prof !266

2117:                                             ; preds = %2114
  %2118 = call i32 @operand_equal_for_phi_arg_p(ptr noundef %2066, ptr noundef %2027) #21
  %2119 = icmp eq i32 %2118, 0
  br i1 %2119, label %2120, label %2360

2120:                                             ; preds = %2117, %2114
  %2121 = call i32 @operand_equal_for_phi_arg_p(ptr noundef %2066, ptr noundef %2028) #21
  %2122 = icmp eq i32 %2121, 0
  br i1 %2122, label %2385, label %2123, !prof !266

2123:                                             ; preds = %2120
  %2124 = call i32 @operand_equal_for_phi_arg_p(ptr noundef %2065, ptr noundef %2027) #21
  %2125 = icmp eq i32 %2124, 0
  br i1 %2125, label %2385, label %2360

2126:                                             ; preds = %2109, %2100
  %2127 = call ptr @last_and_only_stmt(ptr noundef nonnull %112) #21
  %2128 = icmp eq ptr %2127, null
  br i1 %2128, label %2357, label %2129, !prof !265

2129:                                             ; preds = %2126
  %2130 = load i32, ptr %2127, align 8
  %2131 = and i32 %2130, 255
  %2132 = icmp eq i32 %2131, 6
  br i1 %2132, label %2133, label %2357

2133:                                             ; preds = %2129
  %2134 = zext nneg i32 %2131 to i64
  %2135 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %2134
  %2136 = load i32, ptr %2135, align 4, !tbaa !90
  %2137 = zext i32 %2136 to i64
  %2138 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %2137
  %2139 = load i64, ptr %2138, align 8, !tbaa !106
  %2140 = icmp eq i64 %2139, 0
  br i1 %2140, label %2141, label %2142

2141:                                             ; preds = %2133
  call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 1622, ptr noundef nonnull @.str.1) #21
  br label %2142

2142:                                             ; preds = %2141, %2133
  %2143 = getelementptr inbounds i8, ptr %2127, i64 %2139
  %2144 = load ptr, ptr %2143, align 8, !tbaa !75
  %2145 = load i32, ptr %2127, align 8
  %2146 = trunc i32 %2145 to i8
  switch i8 %2146, label %2149 [
    i8 6, label %2147
    i8 1, label %2147
    i8 8, label %2150
  ]

2147:                                             ; preds = %2142, %2142
  %2148 = lshr i32 %2145, 16
  br label %2150

2149:                                             ; preds = %2142
  call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 1446, ptr noundef nonnull @.str.1) #21
  br label %2150

2150:                                             ; preds = %2149, %2147, %2142
  %2151 = phi i32 [ %2148, %2147 ], [ 0, %2149 ], [ 59, %2142 ]
  %2152 = zext nneg i32 %2151 to i64
  %2153 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %2152
  %2154 = load i8, ptr %2153, align 1, !tbaa !86
  %2155 = icmp eq i8 %2154, 3
  br i1 %2155, label %2156, label %2176

2156:                                             ; preds = %2150
  %2157 = load i32, ptr %2127, align 8
  %2158 = and i32 %2157, 255
  %2159 = add nsw i32 %2158, -1
  %2160 = icmp ult i32 %2159, 9
  call void @llvm.assume(i1 %2160)
  %2161 = zext nneg i32 %2158 to i64
  %2162 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %2161
  %2163 = load i32, ptr %2162, align 4, !tbaa !90
  %2164 = zext i32 %2163 to i64
  %2165 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %2164
  %2166 = load i64, ptr %2165, align 8, !tbaa !106
  %2167 = icmp eq i64 %2166, 0
  br i1 %2167, label %2168, label %2169

2168:                                             ; preds = %2156
  call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 1622, ptr noundef nonnull @.str.1) #21
  br label %2169

2169:                                             ; preds = %2168, %2156
  %2170 = getelementptr inbounds i8, ptr %2127, i64 %2166
  %2171 = getelementptr inbounds ptr, ptr %2170, i64 1
  %2172 = load ptr, ptr %2171, align 8, !tbaa !75
  %2173 = load i64, ptr %2172, align 8
  %2174 = trunc i64 %2173 to i32
  %2175 = and i32 %2174, 65535
  br label %2176

2176:                                             ; preds = %2169, %2150
  %2177 = phi i32 [ %2175, %2169 ], [ %2151, %2150 ]
  %2178 = icmp ne i32 %2177, 81
  %2179 = icmp ne i32 %2177, 80
  %2180 = add nsw i32 %2177, -82
  %2181 = icmp ult i32 %2180, -2
  br i1 %2181, label %2357, label %2182

2182:                                             ; preds = %2176
  %2183 = load i32, ptr %2127, align 8
  %2184 = and i32 %2183, 255
  %2185 = add nsw i32 %2184, -10
  %2186 = icmp ult i32 %2185, -9
  br i1 %2186, label %2200, label %2187

2187:                                             ; preds = %2182
  %2188 = zext nneg i32 %2184 to i64
  %2189 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %2188
  %2190 = load i32, ptr %2189, align 4, !tbaa !90
  %2191 = zext i32 %2190 to i64
  %2192 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %2191
  %2193 = load i64, ptr %2192, align 8, !tbaa !106
  %2194 = icmp eq i64 %2193, 0
  br i1 %2194, label %2195, label %2196

2195:                                             ; preds = %2187
  call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 1622, ptr noundef nonnull @.str.1) #21
  br label %2196

2196:                                             ; preds = %2195, %2187
  %2197 = getelementptr inbounds i8, ptr %2127, i64 %2193
  %2198 = getelementptr inbounds ptr, ptr %2197, i64 1
  %2199 = load ptr, ptr %2198, align 8, !tbaa !75
  br label %2200

2200:                                             ; preds = %2196, %2182
  %2201 = phi ptr [ %2199, %2196 ], [ null, %2182 ]
  %2202 = getelementptr inbounds %struct.gimple_statement_base, ptr %2127, i64 0, i32 3
  %2203 = load i32, ptr %2202, align 4, !tbaa !86
  %2204 = icmp ugt i32 %2203, 2
  br i1 %2204, label %2205, label %2223

2205:                                             ; preds = %2200
  %2206 = load i32, ptr %2127, align 8
  %2207 = and i32 %2206, 255
  %2208 = add nsw i32 %2207, -10
  %2209 = icmp ult i32 %2208, -9
  br i1 %2209, label %2223, label %2210

2210:                                             ; preds = %2205
  %2211 = zext nneg i32 %2207 to i64
  %2212 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %2211
  %2213 = load i32, ptr %2212, align 4, !tbaa !90
  %2214 = zext i32 %2213 to i64
  %2215 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %2214
  %2216 = load i64, ptr %2215, align 8, !tbaa !106
  %2217 = icmp eq i64 %2216, 0
  br i1 %2217, label %2218, label %2219

2218:                                             ; preds = %2210
  call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 1622, ptr noundef nonnull @.str.1) #21
  br label %2219

2219:                                             ; preds = %2218, %2210
  %2220 = getelementptr inbounds i8, ptr %2127, i64 %2216
  %2221 = getelementptr inbounds ptr, ptr %2220, i64 2
  %2222 = load ptr, ptr %2221, align 8, !tbaa !75
  br label %2223

2223:                                             ; preds = %2219, %2205, %2200
  %2224 = phi ptr [ null, %2200 ], [ %2222, %2219 ], [ null, %2205 ]
  %2225 = load ptr, ptr %2, align 8, !tbaa !75
  %2226 = load ptr, ptr %2225, align 8, !tbaa !118
  %2227 = icmp eq ptr %2226, %112
  br i1 %2227, label %2228, label %2263

2228:                                             ; preds = %2223
  %2229 = call i32 @operand_equal_for_phi_arg_p(ptr noundef %2144, ptr noundef %2065) #21
  %2230 = icmp eq i32 %2229, 0
  br i1 %2230, label %2357, label %2231

2231:                                             ; preds = %2228
  %2232 = call i32 @operand_equal_for_phi_arg_p(ptr noundef %2066, ptr noundef %2027) #21
  %2233 = icmp eq i32 %2232, 0
  br i1 %2233, label %2247, label %2234

2234:                                             ; preds = %2231
  br i1 %2178, label %2357, label %2235

2235:                                             ; preds = %2234
  %2236 = call i32 @operand_equal_for_phi_arg_p(ptr noundef %2201, ptr noundef %2028) #21
  %2237 = icmp eq i32 %2236, 0
  br i1 %2237, label %2238, label %2241

2238:                                             ; preds = %2235
  %2239 = call i32 @operand_equal_for_phi_arg_p(ptr noundef %2224, ptr noundef %2028) #21
  %2240 = icmp eq i32 %2239, 0
  br i1 %2240, label %2357, label %2241

2241:                                             ; preds = %2238, %2235
  %2242 = phi ptr [ %2224, %2235 ], [ %2201, %2238 ]
  %2243 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !75
  %2244 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 98, ptr noundef %2243, ptr noundef %2242, ptr noundef %2027) #21
  %2245 = call i32 @integer_nonzerop(ptr noundef %2244) #21
  %2246 = icmp eq i32 %2245, 0
  br i1 %2246, label %2357, label %2298

2247:                                             ; preds = %2231
  %2248 = call i32 @operand_equal_for_phi_arg_p(ptr noundef %2066, ptr noundef %2028) #21
  %2249 = icmp eq i32 %2248, 0
  %2250 = or i1 %2179, %2249
  br i1 %2250, label %2357, label %2251

2251:                                             ; preds = %2247
  %2252 = call i32 @operand_equal_for_phi_arg_p(ptr noundef %2201, ptr noundef %2027) #21
  %2253 = icmp eq i32 %2252, 0
  br i1 %2253, label %2254, label %2257

2254:                                             ; preds = %2251
  %2255 = call i32 @operand_equal_for_phi_arg_p(ptr noundef %2224, ptr noundef %2027) #21
  %2256 = icmp eq i32 %2255, 0
  br i1 %2256, label %2357, label %2257

2257:                                             ; preds = %2254, %2251
  %2258 = phi ptr [ %2224, %2251 ], [ %2201, %2254 ]
  %2259 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !75
  %2260 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 100, ptr noundef %2259, ptr noundef %2258, ptr noundef %2028) #21
  %2261 = call i32 @integer_nonzerop(ptr noundef %2260) #21
  %2262 = icmp eq i32 %2261, 0
  br i1 %2262, label %2357, label %2298

2263:                                             ; preds = %2223
  %2264 = call i32 @operand_equal_for_phi_arg_p(ptr noundef %2144, ptr noundef %2066) #21
  %2265 = icmp eq i32 %2264, 0
  br i1 %2265, label %2357, label %2266

2266:                                             ; preds = %2263
  %2267 = call i32 @operand_equal_for_phi_arg_p(ptr noundef %2065, ptr noundef %2027) #21
  %2268 = icmp eq i32 %2267, 0
  br i1 %2268, label %2282, label %2269

2269:                                             ; preds = %2266
  br i1 %2179, label %2357, label %2270

2270:                                             ; preds = %2269
  %2271 = call i32 @operand_equal_for_phi_arg_p(ptr noundef %2201, ptr noundef %2028) #21
  %2272 = icmp eq i32 %2271, 0
  br i1 %2272, label %2273, label %2276

2273:                                             ; preds = %2270
  %2274 = call i32 @operand_equal_for_phi_arg_p(ptr noundef %2224, ptr noundef %2028) #21
  %2275 = icmp eq i32 %2274, 0
  br i1 %2275, label %2357, label %2276

2276:                                             ; preds = %2273, %2270
  %2277 = phi ptr [ %2224, %2270 ], [ %2201, %2273 ]
  %2278 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !75
  %2279 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 100, ptr noundef %2278, ptr noundef %2277, ptr noundef %2027) #21
  %2280 = call i32 @integer_nonzerop(ptr noundef %2279) #21
  %2281 = icmp eq i32 %2280, 0
  br i1 %2281, label %2357, label %2298

2282:                                             ; preds = %2266
  %2283 = call i32 @operand_equal_for_phi_arg_p(ptr noundef %2065, ptr noundef %2028) #21
  %2284 = icmp eq i32 %2283, 0
  %2285 = or i1 %2178, %2284
  br i1 %2285, label %2357, label %2286

2286:                                             ; preds = %2282
  %2287 = call i32 @operand_equal_for_phi_arg_p(ptr noundef %2201, ptr noundef %2027) #21
  %2288 = icmp eq i32 %2287, 0
  br i1 %2288, label %2289, label %2292

2289:                                             ; preds = %2286
  %2290 = call i32 @operand_equal_for_phi_arg_p(ptr noundef %2224, ptr noundef %2027) #21
  %2291 = icmp eq i32 %2290, 0
  br i1 %2291, label %2357, label %2292

2292:                                             ; preds = %2289, %2286
  %2293 = phi ptr [ %2224, %2286 ], [ %2201, %2289 ]
  %2294 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !75
  %2295 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 98, ptr noundef %2294, ptr noundef %2293, ptr noundef %2028) #21
  %2296 = call i32 @integer_nonzerop(ptr noundef %2295) #21
  %2297 = icmp eq i32 %2296, 0
  br i1 %2297, label %2357, label %2298

2298:                                             ; preds = %2292, %2276, %2257, %2241
  %2299 = phi i32 [ 80, %2241 ], [ 81, %2257 ], [ 81, %2276 ], [ 80, %2292 ]
  %2300 = getelementptr inbounds %struct.basic_block_def, ptr %50, i64 0, i32 13
  %2301 = load i32, ptr %2300, align 8, !tbaa !129, !noalias !273
  %2302 = and i32 %2301, 512
  %2303 = icmp eq i32 %2302, 0
  br i1 %2303, label %2304, label %2310

2304:                                             ; preds = %2298
  %2305 = getelementptr inbounds %struct.basic_block_def, ptr %50, i64 0, i32 7
  %2306 = load ptr, ptr %2305, align 8, !tbaa !86, !noalias !273
  %2307 = icmp eq ptr %2306, null
  br i1 %2307, label %2310, label %2308

2308:                                             ; preds = %2304
  %2309 = load ptr, ptr %2306, align 8, !tbaa !137, !noalias !273
  br label %2310

2310:                                             ; preds = %2308, %2304, %2298
  %2311 = phi ptr [ %2309, %2308 ], [ null, %2304 ], [ null, %2298 ]
  %2312 = icmp eq ptr %2311, null
  br i1 %2312, label %2316, label %2313

2313:                                             ; preds = %2310
  %2314 = getelementptr inbounds %struct.gimple_seq_d, ptr %2311, i64 0, i32 1
  %2315 = load ptr, ptr %2314, align 8, !tbaa !207, !noalias !273
  br label %2316

2316:                                             ; preds = %2313, %2310
  %2317 = phi ptr [ %2315, %2313 ], [ null, %2310 ]
  %2318 = getelementptr inbounds i8, ptr %4, i64 8
  %2319 = getelementptr inbounds i8, ptr %4, i64 16
  store ptr %2317, ptr %4, align 8, !tbaa.struct !194
  store ptr %2311, ptr %2318, align 8, !tbaa.struct !202
  store ptr %50, ptr %2319, align 8, !tbaa.struct !203
  %2320 = load i32, ptr %2067, align 8, !tbaa !129, !noalias !276
  %2321 = and i32 %2320, 512
  %2322 = icmp eq i32 %2321, 0
  br i1 %2322, label %2323, label %2329

2323:                                             ; preds = %2316
  %2324 = getelementptr inbounds %struct.basic_block_def, ptr %112, i64 0, i32 7
  %2325 = load ptr, ptr %2324, align 8, !tbaa !86, !noalias !276
  %2326 = icmp eq ptr %2325, null
  br i1 %2326, label %2329, label %2327

2327:                                             ; preds = %2323
  %2328 = load ptr, ptr %2325, align 8, !tbaa !137, !noalias !276
  br label %2329

2329:                                             ; preds = %2327, %2323, %2316
  %2330 = phi ptr [ %2328, %2327 ], [ null, %2323 ], [ null, %2316 ]
  %2331 = icmp eq ptr %2330, null
  br i1 %2331, label %2335, label %2332

2332:                                             ; preds = %2329
  %2333 = getelementptr inbounds %struct.gimple_seq_d, ptr %2330, i64 0, i32 1
  %2334 = load ptr, ptr %2333, align 8, !tbaa !207, !noalias !276
  br label %2335

2335:                                             ; preds = %2332, %2329
  %2336 = phi ptr [ %2334, %2332 ], [ null, %2329 ]
  %2337 = icmp eq ptr %2336, null
  br i1 %2337, label %2353, label %2338

2338:                                             ; preds = %2335
  %2339 = load ptr, ptr %2336, align 8, !tbaa !142, !noalias !281
  %2340 = load i32, ptr %2339, align 8, !noalias !281
  %2341 = and i32 %2340, 255
  %2342 = icmp eq i32 %2341, 2
  br i1 %2342, label %2343, label %2353

2343:                                             ; preds = %2338, %2348
  %2344 = phi ptr [ %2346, %2348 ], [ %2336, %2338 ]
  %2345 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %2344, i64 0, i32 1
  %2346 = load ptr, ptr %2345, align 8, !tbaa !282, !noalias !281
  %2347 = icmp eq ptr %2346, null
  br i1 %2347, label %2353, label %2348

2348:                                             ; preds = %2343
  %2349 = load ptr, ptr %2346, align 8, !tbaa !142, !noalias !281
  %2350 = load i32, ptr %2349, align 8, !noalias !281
  %2351 = and i32 %2350, 255
  %2352 = icmp eq i32 %2351, 2
  br i1 %2352, label %2343, label %2353, !llvm.loop !283

2353:                                             ; preds = %2348, %2343, %2338, %2335
  %2354 = phi ptr [ %2336, %2335 ], [ %2336, %2338 ], [ %2346, %2343 ], [ %2346, %2348 ]
  %2355 = getelementptr inbounds i8, ptr %5, i64 8
  %2356 = getelementptr inbounds i8, ptr %5, i64 16
  store ptr %2354, ptr %5, align 8, !tbaa.struct !194
  store ptr %2330, ptr %2355, align 8, !tbaa.struct !202
  store ptr %112, ptr %2356, align 8, !tbaa.struct !203
  call void @gsi_move_before(ptr noundef nonnull %5, ptr noundef nonnull %4) #21
  br label %2357

2357:                                             ; preds = %2353, %2292, %2289, %2282, %2276, %2273, %2269, %2263, %2257, %2254, %2247, %2241, %2238, %2234, %2228, %2176, %2129, %2126
  %2358 = phi i1 [ true, %2353 ], [ false, %2129 ], [ false, %2126 ], [ false, %2176 ], [ false, %2228 ], [ false, %2234 ], [ false, %2247 ], [ false, %2263 ], [ false, %2269 ], [ false, %2276 ], [ false, %2282 ], [ false, %2238 ], [ false, %2241 ], [ false, %2254 ], [ false, %2257 ], [ false, %2273 ], [ false, %2289 ], [ false, %2292 ]
  %2359 = phi i32 [ %2299, %2353 ], [ undef, %2129 ], [ undef, %2126 ], [ undef, %2176 ], [ undef, %2228 ], [ undef, %2234 ], [ undef, %2247 ], [ undef, %2263 ], [ undef, %2269 ], [ 81, %2276 ], [ undef, %2282 ], [ 80, %2238 ], [ 80, %2241 ], [ 81, %2254 ], [ 81, %2257 ], [ 81, %2273 ], [ 80, %2289 ], [ 80, %2292 ]
  br i1 %2358, label %2360, label %2385, !prof !284

2360:                                             ; preds = %2357, %2123, %2117
  %2361 = phi i32 [ %2359, %2357 ], [ 80, %2117 ], [ 81, %2123 ]
  %2362 = load ptr, ptr %1673, align 8, !tbaa !75
  %2363 = call ptr @duplicate_ssa_name(ptr noundef %2362, ptr noundef null) #21
  %2364 = call ptr @gimple_build_assign_with_ops_stat(i32 noundef %2361, ptr noundef %2363, ptr noundef %438, ptr noundef %448) #21
  %2365 = getelementptr inbounds %struct.basic_block_def, ptr %50, i64 0, i32 13
  %2366 = load i32, ptr %2365, align 8, !tbaa !129, !noalias !285
  %2367 = and i32 %2366, 512
  %2368 = icmp eq i32 %2367, 0
  br i1 %2368, label %2369, label %2375

2369:                                             ; preds = %2360
  %2370 = getelementptr inbounds %struct.basic_block_def, ptr %50, i64 0, i32 7
  %2371 = load ptr, ptr %2370, align 8, !tbaa !86, !noalias !285
  %2372 = icmp eq ptr %2371, null
  br i1 %2372, label %2375, label %2373

2373:                                             ; preds = %2369
  %2374 = load ptr, ptr %2371, align 8, !tbaa !137, !noalias !285
  br label %2375

2375:                                             ; preds = %2373, %2369, %2360
  %2376 = phi ptr [ %2374, %2373 ], [ null, %2369 ], [ null, %2360 ]
  %2377 = icmp eq ptr %2376, null
  br i1 %2377, label %2381, label %2378

2378:                                             ; preds = %2375
  %2379 = getelementptr inbounds %struct.gimple_seq_d, ptr %2376, i64 0, i32 1
  %2380 = load ptr, ptr %2379, align 8, !tbaa !207, !noalias !285
  br label %2381

2381:                                             ; preds = %2378, %2375
  %2382 = phi ptr [ %2380, %2378 ], [ null, %2375 ]
  %2383 = getelementptr inbounds i8, ptr %4, i64 8
  %2384 = getelementptr inbounds i8, ptr %4, i64 16
  store ptr %2382, ptr %4, align 8, !tbaa.struct !194
  store ptr %2376, ptr %2383, align 8, !tbaa.struct !202
  store ptr %50, ptr %2384, align 8, !tbaa.struct !203
  call void @gsi_insert_before(ptr noundef nonnull %4, ptr noundef %2364, i32 noundef 0) #21
  call fastcc void @replace_phi_edge_with_variable(ptr noundef %50, ptr noundef %111, ptr noundef %427, ptr noundef %2363)
  br label %2385

2385:                                             ; preds = %1933, %1985, %2120, %2123, %2357, %2381
  %2386 = phi i8 [ 1, %2381 ], [ %48, %2357 ], [ %48, %1933 ], [ %48, %1985 ], [ %48, %2120 ], [ %48, %2123 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #21
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #21
  br label %2387

2387:                                             ; preds = %1671, %1100, %653, %122, %422, %2385, %396, %157, %137, %145, %125, %103, %83, %94, %57, %72, %46, %53
  %2388 = phi i8 [ %48, %53 ], [ %48, %46 ], [ %48, %72 ], [ %48, %57 ], [ %48, %94 ], [ %48, %83 ], [ %48, %103 ], [ %48, %125 ], [ %48, %145 ], [ %48, %137 ], [ %48, %157 ], [ %397, %396 ], [ %48, %422 ], [ %2386, %2385 ], [ %48, %122 ], [ 1, %653 ], [ 1, %1100 ], [ 1, %1671 ]
  %2389 = add nuw nsw i64 %47, 1
  %2390 = icmp eq i64 %2389, %45
  br i1 %2390, label %2391, label %46, !prof !288, !llvm.loop !289

2391:                                             ; preds = %2387, %34
  %2392 = phi i8 [ 0, %34 ], [ %2388, %2387 ]
  call void @free(ptr noundef %36)
  br i1 %17, label %2394, label %2393, !prof !162

2393:                                             ; preds = %2391
  call void @pointer_set_destroy(ptr noundef %35) #21
  br label %2394

2394:                                             ; preds = %2393, %2391
  %2395 = icmp ne i8 %2392, 0
  %2396 = icmp ne i8 %0, 0
  %2397 = and i1 %2396, %2395
  br i1 %2397, label %2398, label %2399, !prof !290

2398:                                             ; preds = %2394
  call void @gsi_commit_edge_inserts() #21
  br label %2402

2399:                                             ; preds = %2394
  %2400 = icmp eq i8 %2392, 0
  %2401 = select i1 %2400, i32 0, i32 32, !prof !291
  br label %2402

2402:                                             ; preds = %2399, %2398
  %2403 = phi i32 [ 16416, %2398 ], [ %2401, %2399 ]
  ret i32 %2403
}

declare ptr @last_stmt(ptr noundef) local_unnamed_addr #3

declare void @pointer_set_destroy(ptr noundef) local_unnamed_addr #3

declare void @gsi_commit_edge_inserts() local_unnamed_addr #3

declare ptr @pointer_set_create() local_unnamed_addr #3

declare ptr @htab_create(i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal i32 @name_to_bb_hash(ptr nocapture noundef readonly %0) #14 !prof !292 !PGOFuncName !293 {
  %2 = load ptr, ptr %0, align 8, !tbaa !294
  %3 = load ptr, ptr @htab_hash_pointer, align 8, !tbaa !75
  %4 = tail call i32 %3(ptr noundef %2) #21, !prof !296
  %5 = getelementptr inbounds %struct.name_to_bb, ptr %0, i64 0, i32 2
  %6 = load i8, ptr %5, align 8
  %7 = and i8 %6, 1
  %8 = zext nneg i8 %7 to i32
  %9 = xor i32 %4, %8
  ret i32 %9
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal i32 @name_to_bb_eq(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #15 !prof !74 {
  %3 = load ptr, ptr %0, align 8, !tbaa !294
  %4 = load ptr, ptr %1, align 8, !tbaa !294
  %5 = icmp eq ptr %3, %4
  br i1 %5, label %6, label %15

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.name_to_bb, ptr %0, i64 0, i32 2
  %8 = load i8, ptr %7, align 8
  %9 = getelementptr inbounds %struct.name_to_bb, ptr %1, i64 0, i32 2
  %10 = load i8, ptr %9, align 8
  %11 = xor i8 %10, %8
  %12 = and i8 %11, 1
  %13 = xor i8 %12, 1
  %14 = zext nneg i8 %13 to i32
  br label %15

15:                                               ; preds = %6, %2
  %16 = phi i32 [ 0, %2 ], [ %14, %6 ]
  ret i32 %16
}

declare void @calculate_dominance_info(i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define internal void @nt_init_block(ptr nocapture readnone %0, ptr noundef %1) #16 !prof !297 !PGOFuncName !298 {
  %3 = alloca %struct.name_to_bb, align 8
  %4 = alloca %struct.name_to_bb, align 8
  %5 = alloca %struct.name_to_bb, align 8
  %6 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 2
  store ptr inttoptr (i64 1 to ptr), ptr %6, align 8, !tbaa !299
  %7 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 13
  %8 = load i32, ptr %7, align 8, !tbaa !129, !noalias !300
  %9 = and i32 %8, 512
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %17, !prof !303

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 7
  %13 = load ptr, ptr %12, align 8, !tbaa !86, !noalias !300
  %14 = icmp eq ptr %13, null
  br i1 %14, label %17, label %15, !prof !304

15:                                               ; preds = %11
  %16 = load ptr, ptr %13, align 8, !tbaa !137, !noalias !300
  br label %17

17:                                               ; preds = %15, %11, %2
  %18 = phi ptr [ %16, %15 ], [ null, %11 ], [ null, %2 ]
  %19 = icmp eq ptr %18, null
  br i1 %19, label %22, label %20, !prof !304

20:                                               ; preds = %17
  %21 = load ptr, ptr %18, align 8, !tbaa !139, !noalias !300
  br label %22

22:                                               ; preds = %17, %20
  %23 = phi ptr [ %21, %20 ], [ null, %17 ]
  %24 = icmp eq ptr %23, null
  br i1 %24, label %256, label %25, !prof !305

25:                                               ; preds = %22, %252
  %26 = phi ptr [ %254, %252 ], [ %23, %22 ]
  %27 = load ptr, ptr %26, align 8, !tbaa !142
  %28 = load i32, ptr %27, align 8
  %29 = and i32 %28, 255
  %30 = icmp eq i32 %29, 6
  br i1 %30, label %31, label %252, !prof !306

31:                                               ; preds = %25
  %32 = zext nneg i32 %29 to i64
  %33 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %32
  %34 = load i32, ptr %33, align 4, !tbaa !90
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %35
  %37 = load i64, ptr %36, align 8, !tbaa !106
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %40, !prof !307

39:                                               ; preds = %31
  call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 1622, ptr noundef nonnull @.str.1) #21
  br label %40

40:                                               ; preds = %39, %31
  %41 = getelementptr inbounds i8, ptr %27, i64 %37
  %42 = load ptr, ptr %41, align 8, !tbaa !75
  %43 = load ptr, ptr @nontrap_set, align 8, !tbaa !75
  %44 = load i64, ptr %42, align 8
  %45 = trunc i64 %44 to i32
  %46 = and i32 %45, 65535
  %47 = add nsw i32 %46, -47
  %48 = icmp ult i32 %47, 3
  br i1 %48, label %49, label %86, !prof !308

49:                                               ; preds = %40
  %50 = getelementptr inbounds %struct.tree_exp, ptr %42, i64 0, i32 3
  %51 = load ptr, ptr %50, align 8, !tbaa !86
  %52 = load i64, ptr %51, align 8
  %53 = and i64 %52, 65535
  %54 = icmp eq i64 %53, 141
  br i1 %54, label %55, label %86, !prof !192

55:                                               ; preds = %49
  %56 = getelementptr inbounds %struct.name_to_bb, ptr %5, i64 0, i32 1
  %57 = getelementptr inbounds %struct.name_to_bb, ptr %5, i64 0, i32 2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #21
  store ptr %51, ptr %5, align 8, !tbaa !294
  store ptr null, ptr %56, align 8, !tbaa !309
  %58 = load i8, ptr %57, align 8
  %59 = or i8 %58, 1
  store i8 %59, ptr %57, align 8
  %60 = load ptr, ptr @seen_ssa_names, align 8, !tbaa !75
  %61 = call ptr @htab_find_slot(ptr noundef %60, ptr noundef nonnull %5, i32 noundef 1) #21
  %62 = load ptr, ptr %61, align 8, !tbaa !75
  %63 = icmp eq ptr %62, null
  br i1 %63, label %67, label %64, !prof !192

64:                                               ; preds = %55
  %65 = getelementptr inbounds %struct.name_to_bb, ptr %62, i64 0, i32 1
  %66 = load ptr, ptr %65, align 8, !tbaa !309
  br label %67

67:                                               ; preds = %64, %55
  %68 = phi ptr [ %66, %64 ], [ null, %55 ]
  %69 = icmp eq ptr %68, null
  br i1 %69, label %76, label %70, !prof !192

70:                                               ; preds = %67
  %71 = getelementptr inbounds %struct.basic_block_def, ptr %68, i64 0, i32 2
  %72 = load ptr, ptr %71, align 8, !tbaa !299
  %73 = icmp eq ptr %72, inttoptr (i64 1 to ptr)
  br i1 %73, label %74, label %76

74:                                               ; preds = %70
  %75 = call i32 @pointer_set_insert(ptr noundef %43, ptr noundef nonnull %42) #21
  br label %85

76:                                               ; preds = %70, %67
  br i1 %63, label %79, label %77, !prof !192

77:                                               ; preds = %76
  %78 = getelementptr inbounds %struct.name_to_bb, ptr %62, i64 0, i32 1
  store ptr %1, ptr %78, align 8, !tbaa !309
  br label %85

79:                                               ; preds = %76
  %80 = call ptr @xmalloc(i64 noundef 24) #21
  store ptr %51, ptr %80, align 8, !tbaa !294
  %81 = getelementptr inbounds %struct.name_to_bb, ptr %80, i64 0, i32 1
  store ptr %1, ptr %81, align 8, !tbaa !309
  %82 = getelementptr inbounds %struct.name_to_bb, ptr %80, i64 0, i32 2
  %83 = load i8, ptr %82, align 8
  %84 = or i8 %83, 1
  store i8 %84, ptr %82, align 8
  store ptr %80, ptr %61, align 8, !tbaa !75
  br label %85

85:                                               ; preds = %79, %77, %74
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #21
  br label %86

86:                                               ; preds = %40, %49, %85
  %87 = load i32, ptr %27, align 8
  %88 = and i32 %87, 255
  %89 = add nsw i32 %88, -10
  %90 = icmp ult i32 %89, -9
  br i1 %90, label %104, label %91, !prof !307

91:                                               ; preds = %86
  %92 = zext nneg i32 %88 to i64
  %93 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %92
  %94 = load i32, ptr %93, align 4, !tbaa !90
  %95 = zext i32 %94 to i64
  %96 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %95
  %97 = load i64, ptr %96, align 8, !tbaa !106
  %98 = icmp eq i64 %97, 0
  br i1 %98, label %99, label %100, !prof !307

99:                                               ; preds = %91
  call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 1622, ptr noundef nonnull @.str.1) #21
  br label %100

100:                                              ; preds = %99, %91
  %101 = getelementptr inbounds i8, ptr %27, i64 %97
  %102 = getelementptr inbounds ptr, ptr %101, i64 1
  %103 = load ptr, ptr %102, align 8, !tbaa !75
  br label %104

104:                                              ; preds = %86, %100
  %105 = phi ptr [ %103, %100 ], [ null, %86 ]
  %106 = load ptr, ptr @nontrap_set, align 8, !tbaa !75
  %107 = load i64, ptr %105, align 8
  %108 = trunc i64 %107 to i32
  %109 = and i32 %108, 65535
  %110 = add nsw i32 %109, -47
  %111 = icmp ult i32 %110, 3
  br i1 %111, label %112, label %149, !prof !308

112:                                              ; preds = %104
  %113 = getelementptr inbounds %struct.tree_exp, ptr %105, i64 0, i32 3
  %114 = load ptr, ptr %113, align 8, !tbaa !86
  %115 = load i64, ptr %114, align 8
  %116 = and i64 %115, 65535
  %117 = icmp eq i64 %116, 141
  br i1 %117, label %118, label %149, !prof !192

118:                                              ; preds = %112
  %119 = getelementptr inbounds %struct.name_to_bb, ptr %4, i64 0, i32 1
  %120 = getelementptr inbounds %struct.name_to_bb, ptr %4, i64 0, i32 2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #21
  store ptr %114, ptr %4, align 8, !tbaa !294
  store ptr null, ptr %119, align 8, !tbaa !309
  %121 = load i8, ptr %120, align 8
  %122 = and i8 %121, -2
  store i8 %122, ptr %120, align 8
  %123 = load ptr, ptr @seen_ssa_names, align 8, !tbaa !75
  %124 = call ptr @htab_find_slot(ptr noundef %123, ptr noundef nonnull %4, i32 noundef 1) #21
  %125 = load ptr, ptr %124, align 8, !tbaa !75
  %126 = icmp eq ptr %125, null
  br i1 %126, label %130, label %127, !prof !192

127:                                              ; preds = %118
  %128 = getelementptr inbounds %struct.name_to_bb, ptr %125, i64 0, i32 1
  %129 = load ptr, ptr %128, align 8, !tbaa !309
  br label %130

130:                                              ; preds = %127, %118
  %131 = phi ptr [ %129, %127 ], [ null, %118 ]
  %132 = icmp eq ptr %131, null
  br i1 %132, label %139, label %133, !prof !192

133:                                              ; preds = %130
  %134 = getelementptr inbounds %struct.basic_block_def, ptr %131, i64 0, i32 2
  %135 = load ptr, ptr %134, align 8, !tbaa !299
  %136 = icmp eq ptr %135, inttoptr (i64 1 to ptr)
  br i1 %136, label %137, label %139

137:                                              ; preds = %133
  %138 = call i32 @pointer_set_insert(ptr noundef %106, ptr noundef nonnull %105) #21
  br label %148

139:                                              ; preds = %133, %130
  br i1 %126, label %142, label %140, !prof !192

140:                                              ; preds = %139
  %141 = getelementptr inbounds %struct.name_to_bb, ptr %125, i64 0, i32 1
  store ptr %1, ptr %141, align 8, !tbaa !309
  br label %148

142:                                              ; preds = %139
  %143 = call ptr @xmalloc(i64 noundef 24) #21
  store ptr %114, ptr %143, align 8, !tbaa !294
  %144 = getelementptr inbounds %struct.name_to_bb, ptr %143, i64 0, i32 1
  store ptr %1, ptr %144, align 8, !tbaa !309
  %145 = getelementptr inbounds %struct.name_to_bb, ptr %143, i64 0, i32 2
  %146 = load i8, ptr %145, align 8
  %147 = and i8 %146, -2
  store i8 %147, ptr %145, align 8
  store ptr %143, ptr %124, align 8, !tbaa !75
  br label %148

148:                                              ; preds = %142, %140, %137
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #21
  br label %149

149:                                              ; preds = %104, %112, %148
  %150 = load i32, ptr %27, align 8
  %151 = trunc i32 %150 to i8
  switch i8 %151, label %154 [
    i8 6, label %152
    i8 1, label %152
    i8 8, label %155
  ], !prof !310

152:                                              ; preds = %149, %149
  %153 = lshr i32 %150, 16
  br label %155

154:                                              ; preds = %149
  call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 1446, ptr noundef nonnull @.str.1) #21
  br label %155

155:                                              ; preds = %154, %152, %149
  %156 = phi i32 [ %153, %152 ], [ 0, %154 ], [ 59, %149 ]
  %157 = zext nneg i32 %156 to i64
  %158 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %157
  %159 = load i8, ptr %158, align 1, !tbaa !86
  %160 = icmp eq i8 %159, 3
  br i1 %160, label %161, label %181, !prof !311

161:                                              ; preds = %155
  %162 = load i32, ptr %27, align 8
  %163 = and i32 %162, 255
  %164 = add nsw i32 %163, -1
  %165 = icmp ult i32 %164, 9
  call void @llvm.assume(i1 %165)
  %166 = zext nneg i32 %163 to i64
  %167 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %166
  %168 = load i32, ptr %167, align 4, !tbaa !90
  %169 = zext i32 %168 to i64
  %170 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %169
  %171 = load i64, ptr %170, align 8, !tbaa !106
  %172 = icmp eq i64 %171, 0
  br i1 %172, label %173, label %174, !prof !312

173:                                              ; preds = %161
  call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 1622, ptr noundef nonnull @.str.1) #21
  br label %174

174:                                              ; preds = %173, %161
  %175 = getelementptr inbounds i8, ptr %27, i64 %171
  %176 = getelementptr inbounds ptr, ptr %175, i64 1
  %177 = load ptr, ptr %176, align 8, !tbaa !75
  %178 = load i64, ptr %177, align 8
  %179 = trunc i64 %178 to i32
  %180 = and i32 %179, 65535
  br label %181

181:                                              ; preds = %155, %174
  %182 = phi i32 [ %180, %174 ], [ %156, %155 ]
  %183 = call i32 @get_gimple_rhs_num_ops(i32 noundef %182) #21
  %184 = icmp ugt i32 %183, 1
  br i1 %184, label %185, label %252, !prof !313

185:                                              ; preds = %181
  %186 = getelementptr inbounds %struct.gimple_statement_base, ptr %27, i64 0, i32 3
  %187 = load i32, ptr %186, align 4, !tbaa !86
  %188 = icmp ugt i32 %187, 2
  br i1 %188, label %189, label %207, !prof !314

189:                                              ; preds = %185
  %190 = load i32, ptr %27, align 8
  %191 = and i32 %190, 255
  %192 = add nsw i32 %191, -10
  %193 = icmp ult i32 %192, -9
  br i1 %193, label %207, label %194, !prof !315

194:                                              ; preds = %189
  %195 = zext nneg i32 %191 to i64
  %196 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %195
  %197 = load i32, ptr %196, align 4, !tbaa !90
  %198 = zext i32 %197 to i64
  %199 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %198
  %200 = load i64, ptr %199, align 8, !tbaa !106
  %201 = icmp eq i64 %200, 0
  br i1 %201, label %202, label %203, !prof !315

202:                                              ; preds = %194
  call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 1622, ptr noundef nonnull @.str.1) #21
  br label %203

203:                                              ; preds = %202, %194
  %204 = getelementptr inbounds i8, ptr %27, i64 %200
  %205 = getelementptr inbounds ptr, ptr %204, i64 2
  %206 = load ptr, ptr %205, align 8, !tbaa !75
  br label %207

207:                                              ; preds = %185, %189, %203
  %208 = phi ptr [ null, %185 ], [ %206, %203 ], [ null, %189 ]
  %209 = load ptr, ptr @nontrap_set, align 8, !tbaa !75
  %210 = load i64, ptr %208, align 8
  %211 = trunc i64 %210 to i32
  %212 = and i32 %211, 65535
  %213 = add nsw i32 %212, -47
  %214 = icmp ult i32 %213, 3
  br i1 %214, label %215, label %252, !prof !308

215:                                              ; preds = %207
  %216 = getelementptr inbounds %struct.tree_exp, ptr %208, i64 0, i32 3
  %217 = load ptr, ptr %216, align 8, !tbaa !86
  %218 = load i64, ptr %217, align 8
  %219 = and i64 %218, 65535
  %220 = icmp eq i64 %219, 141
  br i1 %220, label %221, label %252, !prof !192

221:                                              ; preds = %215
  %222 = getelementptr inbounds %struct.name_to_bb, ptr %3, i64 0, i32 1
  %223 = getelementptr inbounds %struct.name_to_bb, ptr %3, i64 0, i32 2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #21
  store ptr %217, ptr %3, align 8, !tbaa !294
  store ptr null, ptr %222, align 8, !tbaa !309
  %224 = load i8, ptr %223, align 8
  %225 = and i8 %224, -2
  store i8 %225, ptr %223, align 8
  %226 = load ptr, ptr @seen_ssa_names, align 8, !tbaa !75
  %227 = call ptr @htab_find_slot(ptr noundef %226, ptr noundef nonnull %3, i32 noundef 1) #21
  %228 = load ptr, ptr %227, align 8, !tbaa !75
  %229 = icmp eq ptr %228, null
  br i1 %229, label %233, label %230, !prof !192

230:                                              ; preds = %221
  %231 = getelementptr inbounds %struct.name_to_bb, ptr %228, i64 0, i32 1
  %232 = load ptr, ptr %231, align 8, !tbaa !309
  br label %233

233:                                              ; preds = %230, %221
  %234 = phi ptr [ %232, %230 ], [ null, %221 ]
  %235 = icmp eq ptr %234, null
  br i1 %235, label %242, label %236, !prof !192

236:                                              ; preds = %233
  %237 = getelementptr inbounds %struct.basic_block_def, ptr %234, i64 0, i32 2
  %238 = load ptr, ptr %237, align 8, !tbaa !299
  %239 = icmp eq ptr %238, inttoptr (i64 1 to ptr)
  br i1 %239, label %240, label %242

240:                                              ; preds = %236
  %241 = call i32 @pointer_set_insert(ptr noundef %209, ptr noundef nonnull %208) #21
  br label %251

242:                                              ; preds = %236, %233
  br i1 %229, label %245, label %243, !prof !192

243:                                              ; preds = %242
  %244 = getelementptr inbounds %struct.name_to_bb, ptr %228, i64 0, i32 1
  store ptr %1, ptr %244, align 8, !tbaa !309
  br label %251

245:                                              ; preds = %242
  %246 = call ptr @xmalloc(i64 noundef 24) #21
  store ptr %217, ptr %246, align 8, !tbaa !294
  %247 = getelementptr inbounds %struct.name_to_bb, ptr %246, i64 0, i32 1
  store ptr %1, ptr %247, align 8, !tbaa !309
  %248 = getelementptr inbounds %struct.name_to_bb, ptr %246, i64 0, i32 2
  %249 = load i8, ptr %248, align 8
  %250 = and i8 %249, -2
  store i8 %250, ptr %248, align 8
  store ptr %246, ptr %227, align 8, !tbaa !75
  br label %251

251:                                              ; preds = %245, %243, %240
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #21
  br label %252

252:                                              ; preds = %251, %215, %207, %181, %25
  %253 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %26, i64 0, i32 2
  %254 = load ptr, ptr %253, align 8, !tbaa !148
  %255 = icmp eq ptr %254, null
  br i1 %255, label %256, label %25, !prof !316, !llvm.loop !317

256:                                              ; preds = %252, %22
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal void @nt_fini_block(ptr nocapture readnone %0, ptr nocapture noundef writeonly %1) #17 !prof !297 !PGOFuncName !318 {
  %3 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 2
  store ptr null, ptr %3, align 8, !tbaa !299
  ret void
}

declare void @init_walk_dominator_tree(ptr noundef) local_unnamed_addr #3

declare void @walk_dominator_tree(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @fini_walk_dominator_tree(ptr noundef) local_unnamed_addr #3

declare void @htab_delete(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #18

declare i32 @get_gimple_rhs_num_ops(i32 noundef) local_unnamed_addr #3

declare ptr @htab_find_slot(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @pointer_set_insert(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @last_and_only_stmt(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @is_gimple_min_invariant(ptr noundef) local_unnamed_addr #3

declare i32 @pointer_set_contains(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @mark_symbols_for_renaming(ptr noundef) local_unnamed_addr #3

declare void @gsi_for_stmt(ptr dead_on_unwind writable sret(%struct.gimple_stmt_iterator) align 8, ptr noundef) local_unnamed_addr #3

declare void @gsi_remove(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

declare ptr @create_tmp_var(ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @add_referenced_var(ptr noundef) local_unnamed_addr #3

declare ptr @unshare_expr(ptr noundef) local_unnamed_addr #3

declare ptr @gimple_build_assign_stat(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @gsi_insert_on_edge(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @create_phi_node(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @add_phi_arg(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @gsi_insert_after(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @gsi_insert_before(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @create_var_ann(ptr noundef) local_unnamed_addr #3

declare ptr @make_ssa_name_fn(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @integer_zerop(ptr noundef) local_unnamed_addr #3

declare i32 @integer_onep(ptr noundef) local_unnamed_addr #3

declare ptr @fold_build2_stat_loc(i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @extract_true_false_edges_from_block(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @fold_build1_stat_loc(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @force_gimple_operand_gsi(ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #3

declare zeroext i8 @useless_type_conversion_p(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @gimple_build_assign_with_ops_stat(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc void @replace_phi_edge_with_variable(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr noundef %3) unnamed_addr #9 !prof !319 !PGOFuncName !320 {
  %5 = alloca %struct.gimple_stmt_iterator, align 8
  %6 = getelementptr inbounds %struct.gimple_statement_base, ptr %2, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !86
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #21
  %8 = getelementptr inbounds %struct.edge_def, ptr %1, i64 0, i32 6
  %9 = load i32, ptr %8, align 4, !tbaa !217
  %10 = getelementptr inbounds %struct.gimple_statement_phi, ptr %2, i64 0, i32 1
  %11 = load i32, ptr %10, align 8, !tbaa !86
  %12 = icmp ult i32 %11, %9
  br i1 %12, label %13, label %14, !prof !232

13:                                               ; preds = %4
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 3103, ptr noundef nonnull @.str.1) #21
  br label %14

14:                                               ; preds = %4, %13
  %15 = zext i32 %9 to i64
  %16 = getelementptr inbounds %struct.gimple_statement_phi, ptr %2, i64 0, i32 4, i64 %15
  %17 = load ptr, ptr %16, align 8, !tbaa !321
  %18 = icmp eq ptr %17, null
  br i1 %18, label %24, label %19, !prof !233

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %16, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !322
  %22 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %17, i64 0, i32 1
  store ptr %21, ptr %22, align 8, !tbaa !322
  %23 = load ptr, ptr %20, align 8, !tbaa !322
  store ptr %17, ptr %23, align 8, !tbaa !321
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %16, i8 0, i64 16, i1 false)
  br label %24

24:                                               ; preds = %19, %14
  %25 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %16, i64 0, i32 3
  %26 = load ptr, ptr %25, align 8, !tbaa !219
  store ptr %3, ptr %26, align 8, !tbaa !75
  %27 = icmp eq ptr %3, null
  br i1 %27, label %32, label %28, !prof !232

28:                                               ; preds = %24
  %29 = load i64, ptr %3, align 8
  %30 = and i64 %29, 65535
  %31 = icmp eq i64 %30, 141
  br i1 %31, label %33, label %32, !prof !233

32:                                               ; preds = %28, %24
  store ptr null, ptr %16, align 8, !tbaa !321
  br label %39

33:                                               ; preds = %28
  %34 = getelementptr inbounds %struct.tree_ssa_name, ptr %3, i64 0, i32 5
  store ptr %34, ptr %16, align 8, !tbaa !321
  %35 = getelementptr inbounds %struct.tree_ssa_name, ptr %3, i64 0, i32 5, i32 1
  %36 = load ptr, ptr %35, align 8, !tbaa !322
  %37 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %16, i64 0, i32 1
  store ptr %36, ptr %37, align 8, !tbaa !322
  %38 = load ptr, ptr %35, align 8, !tbaa !322
  store ptr %16, ptr %38, align 8, !tbaa !321
  store ptr %16, ptr %35, align 8, !tbaa !322
  br label %39

39:                                               ; preds = %32, %33
  %40 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !172
  %42 = getelementptr inbounds %struct.VEC_edge_base, ptr %41, i64 0, i32 2, i64 0
  %43 = load ptr, ptr %42, align 8, !tbaa !75
  %44 = getelementptr inbounds %struct.edge_def, ptr %43, i64 0, i32 1
  %45 = load ptr, ptr %44, align 8, !tbaa !173
  %46 = icmp eq ptr %45, %7
  br i1 %46, label %47, label %55, !prof !233

47:                                               ; preds = %39
  %48 = getelementptr inbounds %struct.edge_def, ptr %43, i64 0, i32 7
  %49 = load i32, ptr %48, align 8, !tbaa !174
  %50 = and i32 %49, -3074
  %51 = or disjoint i32 %50, 1
  store i32 %51, ptr %48, align 8, !tbaa !174
  %52 = getelementptr inbounds %struct.edge_def, ptr %43, i64 0, i32 8
  store i32 10000, ptr %52, align 4, !tbaa !323
  %53 = getelementptr inbounds %struct.VEC_edge_base, ptr %41, i64 0, i32 2, i64 1
  %54 = load ptr, ptr %53, align 8, !tbaa !75
  br label %63

55:                                               ; preds = %39
  %56 = getelementptr inbounds %struct.VEC_edge_base, ptr %41, i64 0, i32 2, i64 1
  %57 = load ptr, ptr %56, align 8, !tbaa !75
  %58 = getelementptr inbounds %struct.edge_def, ptr %57, i64 0, i32 7
  %59 = load i32, ptr %58, align 8, !tbaa !174
  %60 = and i32 %59, -3074
  %61 = or disjoint i32 %60, 1
  store i32 %61, ptr %58, align 8, !tbaa !174
  %62 = getelementptr inbounds %struct.edge_def, ptr %57, i64 0, i32 8
  store i32 10000, ptr %62, align 4, !tbaa !323
  br label %63

63:                                               ; preds = %55, %47
  %64 = phi ptr [ %43, %55 ], [ %54, %47 ]
  %65 = phi ptr [ %57, %55 ], [ %43, %47 ]
  %66 = phi ptr [ %42, %55 ], [ %53, %47 ]
  %67 = getelementptr inbounds %struct.edge_def, ptr %64, i64 0, i32 9
  %68 = load i64, ptr %67, align 8, !tbaa !324
  %69 = getelementptr inbounds %struct.edge_def, ptr %65, i64 0, i32 9
  %70 = load i64, ptr %69, align 8, !tbaa !324
  %71 = add nsw i64 %70, %68
  store i64 %71, ptr %69, align 8, !tbaa !324
  %72 = load ptr, ptr %66, align 8, !tbaa !75
  %73 = getelementptr inbounds %struct.edge_def, ptr %72, i64 0, i32 1
  %74 = load ptr, ptr %73, align 8, !tbaa !173
  tail call void @delete_basic_block(ptr noundef %74) #21
  %75 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 13
  %76 = load i32, ptr %75, align 8, !tbaa !129, !noalias !325
  %77 = and i32 %76, 512
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %85, !prof !233

79:                                               ; preds = %63
  %80 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %81 = load ptr, ptr %80, align 8, !tbaa !86, !noalias !325
  %82 = icmp eq ptr %81, null
  br i1 %82, label %85, label %83, !prof !232

83:                                               ; preds = %79
  %84 = load ptr, ptr %81, align 8, !tbaa !137, !noalias !325
  br label %85

85:                                               ; preds = %83, %79, %63
  %86 = phi ptr [ %84, %83 ], [ null, %79 ], [ null, %63 ]
  %87 = icmp eq ptr %86, null
  br i1 %87, label %91, label %88, !prof !232

88:                                               ; preds = %85
  %89 = getelementptr inbounds %struct.gimple_seq_d, ptr %86, i64 0, i32 1
  %90 = load ptr, ptr %89, align 8, !tbaa !207, !noalias !325
  br label %91

91:                                               ; preds = %85, %88
  %92 = phi ptr [ %90, %88 ], [ null, %85 ]
  store ptr %92, ptr %5, align 8, !tbaa.struct !194
  %93 = getelementptr inbounds i8, ptr %5, i64 8
  store ptr %86, ptr %93, align 8, !tbaa.struct !202
  %94 = getelementptr inbounds i8, ptr %5, i64 16
  store ptr %0, ptr %94, align 8, !tbaa.struct !203
  call void @gsi_remove(ptr noundef nonnull %5, i8 noundef zeroext 1) #21
  %95 = load ptr, ptr @dump_file, align 8, !tbaa !75
  %96 = icmp eq ptr %95, null
  br i1 %96, label %107, label %97, !prof !233

97:                                               ; preds = %91
  %98 = load i32, ptr @dump_flags, align 4, !tbaa !90
  %99 = and i32 %98, 8
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %107, label %101

101:                                              ; preds = %97
  %102 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %103 = load i32, ptr %102, align 8, !tbaa !101
  %104 = getelementptr inbounds %struct.basic_block_def, ptr %7, i64 0, i32 9
  %105 = load i32, ptr %104, align 8, !tbaa !101
  %106 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %95, ptr noundef nonnull @.str.8, i32 noundef %103, i32 noundef %105)
  br label %107

107:                                              ; preds = %101, %97, %91
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #21
  ret void
}

declare void @delete_basic_block(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #1

declare i32 @vector_type_mode(ptr noundef) local_unnamed_addr #3

declare i32 @operand_equal_for_phi_arg_p(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @real_zerop(ptr noundef) local_unnamed_addr #3

declare ptr @duplicate_ssa_name(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @integer_nonzerop(ptr noundef) local_unnamed_addr #3

declare void @gsi_move_before(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #19

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #20

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
attributes #10 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #20 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #21 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!73}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72}
!35 = !{ptr @blocks_in_phiopt_order, ptr @xmalloc, i64 190}
!36 = !{ptr @blocks_in_phiopt_order, ptr @sbitmap_alloc, i64 190}
!37 = !{ptr @blocks_in_phiopt_order, ptr @sbitmap_zero, i64 190}
!38 = !{ptr @blocks_in_phiopt_order, ptr @free, i64 380}
!39 = !{ptr @tree_ssa_phiopt, ptr @tree_ssa_phiopt_worker, i64 114}
!40 = !{ptr @tree_ssa_cs_elim, ptr @tree_ssa_phiopt_worker, i64 38}
!41 = !{ptr @tree_ssa_phiopt_worker, ptr @pointer_set_create, i64 38}
!42 = !{ptr @tree_ssa_phiopt_worker, ptr @htab_create, i64 38}
!43 = !{ptr @tree_ssa_phiopt_worker, ptr @calculate_dominance_info, i64 38}
!44 = !{ptr @tree_ssa_phiopt_worker, ptr @init_walk_dominator_tree, i64 38}
!45 = !{ptr @tree_ssa_phiopt_worker, ptr @walk_dominator_tree, i64 38}
!46 = !{ptr @tree_ssa_phiopt_worker, ptr @fini_walk_dominator_tree, i64 38}
!47 = !{ptr @tree_ssa_phiopt_worker, ptr @htab_delete, i64 38}
!48 = !{ptr @tree_ssa_phiopt_worker, ptr @blocks_in_phiopt_order, i64 152}
!49 = !{ptr @tree_ssa_phiopt_worker, ptr @last_stmt, i64 610970}
!50 = !{ptr @tree_ssa_phiopt_worker, ptr @last_and_only_stmt, i64 4959}
!51 = !{ptr @tree_ssa_phiopt_worker, ptr @integer_zerop, i64 10555}
!52 = !{ptr @tree_ssa_phiopt_worker, ptr @integer_onep, i64 2457}
!53 = !{ptr @tree_ssa_phiopt_worker, ptr @fold_build2_stat_loc, i64 499}
!54 = !{ptr @tree_ssa_phiopt_worker, ptr @extract_true_false_edges_from_block, i64 3880}
!55 = !{ptr @tree_ssa_phiopt_worker, ptr @fold_build1_stat_loc, i64 24}
!56 = !{ptr @tree_ssa_phiopt_worker, ptr @gsi_for_stmt, i64 499}
!57 = !{ptr @tree_ssa_phiopt_worker, ptr @force_gimple_operand_gsi, i64 499}
!58 = !{ptr @tree_ssa_phiopt_worker, ptr @useless_type_conversion_p, i64 499}
!59 = !{ptr @tree_ssa_phiopt_worker, ptr @create_tmp_var, i64 499}
!60 = !{ptr @tree_ssa_phiopt_worker, ptr @add_referenced_var, i64 499}
!61 = !{ptr @tree_ssa_phiopt_worker, ptr @gimple_build_assign_with_ops_stat, i64 499}
!62 = !{ptr @tree_ssa_phiopt_worker, ptr @make_ssa_name_fn, i64 499}
!63 = !{ptr @tree_ssa_phiopt_worker, ptr @gsi_insert_before, i64 499}
!64 = !{ptr @tree_ssa_phiopt_worker, ptr @replace_phi_edge_with_variable, i64 499}
!65 = !{ptr @tree_ssa_phiopt_worker, ptr @operand_equal_for_phi_arg_p, i64 6700}
!66 = !{ptr @tree_ssa_phiopt_worker, ptr @free, i64 152}
!67 = !{ptr @tree_ssa_phiopt_worker, ptr @pointer_set_destroy, i64 38}
!68 = !{ptr @nt_init_block, ptr @htab_find_slot, i64 7}
!69 = !{ptr @nt_init_block, ptr @xmalloc, i64 7}
!70 = !{ptr @nt_init_block, ptr @get_gimple_rhs_num_ops, i64 125611}
!71 = !{ptr @replace_phi_edge_with_variable, ptr @delete_basic_block, i64 741}
!72 = !{ptr @replace_phi_edge_with_variable, ptr @gsi_remove, i64 741}
!73 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!74 = !{!"function_entry_count", i64 0}
!75 = !{!76, !76, i64 0}
!76 = !{!"any pointer", !77, i64 0}
!77 = !{!"omnipotent char", !78, i64 0}
!78 = !{!"Simple C/C++ TBAA"}
!79 = !{!80, !76, i64 8}
!80 = !{!"_IO_FILE", !81, i64 0, !76, i64 8, !76, i64 16, !76, i64 24, !76, i64 32, !76, i64 40, !76, i64 48, !76, i64 56, !76, i64 64, !76, i64 72, !76, i64 80, !76, i64 88, !76, i64 96, !76, i64 104, !81, i64 112, !81, i64 116, !82, i64 120, !83, i64 128, !77, i64 130, !77, i64 131, !76, i64 136, !82, i64 144, !76, i64 152, !76, i64 160, !76, i64 168, !76, i64 176, !82, i64 184, !81, i64 192, !77, i64 196}
!81 = !{!"int", !77, i64 0}
!82 = !{!"long", !77, i64 0}
!83 = !{!"short", !77, i64 0}
!84 = !{!80, !76, i64 16}
!85 = !{!"branch_weights", i32 2000, i32 1}
!86 = !{!77, !77, i64 0}
!87 = !{!80, !76, i64 40}
!88 = !{!80, !76, i64 48}
!89 = !{!80, !81, i64 0}
!90 = !{!81, !81, i64 0}
!91 = distinct !{!91, !92, !93}
!92 = !{!"llvm.loop.mustprogress"}
!93 = !{!"llvm.loop.unroll.disable"}
!94 = !{!"function_entry_count", i64 190}
!95 = !{!96, !76, i64 8}
!96 = !{!"function", !76, i64 0, !76, i64 8, !76, i64 16, !76, i64 24, !76, i64 32, !76, i64 40, !76, i64 48, !76, i64 56, !76, i64 64, !76, i64 72, !76, i64 80, !76, i64 88, !76, i64 96, !81, i64 104, !81, i64 108, !81, i64 112, !81, i64 116, !81, i64 120, !81, i64 124, !76, i64 128, !81, i64 136, !81, i64 137, !81, i64 138, !81, i64 138, !81, i64 138, !81, i64 138, !81, i64 138, !81, i64 138, !81, i64 138, !81, i64 139, !81, i64 139, !81, i64 139, !81, i64 139, !81, i64 139, !81, i64 139, !81, i64 139}
!97 = !{!98, !81, i64 24}
!98 = !{!"control_flow_graph", !76, i64 0, !76, i64 8, !76, i64 16, !81, i64 24, !81, i64 28, !81, i64 32, !76, i64 40, !81, i64 48, !77, i64 52, !77, i64 60, !81, i64 68, !81, i64 72}
!99 = !{!98, !81, i64 32}
!100 = !{!98, !76, i64 0}
!101 = !{!102, !81, i64 80}
!102 = !{!"basic_block_def", !76, i64 0, !76, i64 8, !76, i64 16, !76, i64 24, !77, i64 32, !76, i64 48, !76, i64 56, !77, i64 64, !82, i64 72, !81, i64 80, !81, i64 84, !81, i64 88, !81, i64 92, !81, i64 96}
!103 = !{!104, !76, i64 0}
!104 = !{!"simple_bitmap_def", !76, i64 0, !81, i64 8, !81, i64 12, !77, i64 16}
!105 = !{!"branch_weights", i32 190, i32 0}
!106 = !{!82, !82, i64 0}
!107 = !{!102, !76, i64 56}
!108 = !{!98, !76, i64 8}
!109 = !{!"branch_weights", i32 1, i32 189}
!110 = !{!"branch_weights", i32 747575, i32 7}
!111 = !{!102, !76, i64 0}
!112 = !{!"branch_weights", i32 0, i32 747582}
!113 = !{!114, !81, i64 0}
!114 = !{!"VEC_edge_base", !81, i64 0, !81, i64 4, !77, i64 8}
!115 = !{!"branch_weights", i32 261504, i32 486078}
!116 = !{!"branch_weights", i32 0, i32 486078}
!117 = !{!"branch_weights", i32 486078, i32 0}
!118 = !{!119, !76, i64 0}
!119 = !{!"edge_def", !76, i64 0, !76, i64 8, !77, i64 16, !76, i64 24, !76, i64 32, !81, i64 40, !81, i64 44, !81, i64 48, !81, i64 52, !82, i64 56}
!120 = !{!"branch_weights", i32 7, i32 486071}
!121 = !{!"branch_weights", i32 0, i32 7}
!122 = !{!"branch_weights", i32 7, i32 0}
!123 = distinct !{!123, !92, !93}
!124 = distinct !{!124, !92, !93}
!125 = !{!"branch_weights", i32 747575, i32 0}
!126 = !{!"branch_weights", i32 189, i32 747393}
!127 = distinct !{!127, !92, !93}
!128 = !{!"function_entry_count", i64 15}
!129 = !{!102, !81, i64 96}
!130 = !{!131, !133}
!131 = distinct !{!131, !132, !"gsi_start_bb: argument 0"}
!132 = distinct !{!132, !"gsi_start_bb"}
!133 = distinct !{!133, !134, !"gsi_after_labels: argument 0"}
!134 = distinct !{!134, !"gsi_after_labels"}
!135 = !{!"branch_weights", i32 5486, i32 0}
!136 = !{!"branch_weights", i32 0, i32 5486}
!137 = !{!138, !76, i64 0}
!138 = !{!"gimple_bb_info", !76, i64 0, !76, i64 8}
!139 = !{!140, !76, i64 0}
!140 = !{!"gimple_seq_d", !76, i64 0, !76, i64 8, !76, i64 16}
!141 = !{!"branch_weights", i32 2771, i32 1365}
!142 = !{!143, !76, i64 0}
!143 = !{!"gimple_seq_node_d", !76, i64 0, !76, i64 8, !76, i64 16}
!144 = !{!133}
!145 = !{!"branch_weights", i32 15, i32 1335}
!146 = !{!"branch_weights", i32 0, i32 15}
!147 = distinct !{!147, !92, !93}
!148 = !{!143, !76, i64 16}
!149 = !{!"branch_weights", i32 1365, i32 0}
!150 = !{!"branch_weights", i32 4136, i32 1350}
!151 = !{!"branch_weights", i32 0, i32 1350}
!152 = distinct !{!152, !92, !93}
!153 = !{!"function_entry_count", i64 114}
!154 = !{!"tree-ssa-phiopt.c;gate_phiopt"}
!155 = !{!"tree-ssa-phiopt.c;tree_ssa_phiopt"}
!156 = !{i32 0, i32 16417}
!157 = !{!"function_entry_count", i64 38}
!158 = !{!"tree-ssa-phiopt.c;gate_cselim"}
!159 = !{!"tree-ssa-phiopt.c;tree_ssa_cs_elim"}
!160 = !{!"function_entry_count", i64 152}
!161 = !{!"tree-ssa-phiopt.c;tree_ssa_phiopt_worker"}
!162 = !{!"branch_weights", i32 114, i32 38}
!163 = !{!164, !76, i64 8}
!164 = !{!"dom_walk_data", !81, i64 0, !76, i64 8, !76, i64 16, !76, i64 24, !76, i64 32, !76, i64 40, !82, i64 48, !76, i64 56}
!165 = !{!164, !76, i64 16}
!166 = !{!164, !76, i64 24}
!167 = !{!164, !76, i64 32}
!168 = !{!164, !82, i64 48}
!169 = !{!"branch_weights", i32 1, i32 151}
!170 = !{!"branch_weights", i32 29685, i32 572615}
!171 = !{!"branch_weights", i32 565791, i32 6824}
!172 = !{!102, !76, i64 8}
!173 = !{!119, !76, i64 8}
!174 = !{!119, !81, i64 48}
!175 = !{!"branch_weights", i32 565791, i32 0}
!176 = !{!"branch_weights", i32 0, i32 565791}
!177 = !{!"branch_weights", i32 160, i32 565631}
!178 = !{!"branch_weights", i32 0, i32 565631}
!179 = !{!"branch_weights", i32 106, i32 565525}
!180 = !{!"branch_weights", i32 3445, i32 562080}
!181 = !{!"branch_weights", i32 90716, i32 471364}
!182 = !{!"branch_weights", i32 0, i32 94161}
!183 = !{!"branch_weights", i32 82239, i32 11922}
!184 = !{!"branch_weights", i32 0, i32 11922}
!185 = !{!"branch_weights", i32 5256, i32 6666}
!186 = !{!"branch_weights", i32 0, i32 6666}
!187 = !{!"branch_weights", i32 6666, i32 0}
!188 = !{!"branch_weights", i32 5437, i32 1229}
!189 = !{!"branch_weights", i32 0, i32 1229}
!190 = !{!"branch_weights", i32 1183, i32 46}
!191 = !{!"branch_weights", i32 40, i32 6}
!192 = !{!"branch_weights", i32 6, i32 0}
!193 = !{!"branch_weights", i32 0, i32 6}
!194 = !{i64 0, i64 8, !75, i64 8, i64 8, !75, i64 16, i64 8, !75}
!195 = !{}
!196 = !{!197, !199}
!197 = distinct !{!197, !198, !"gsi_start_bb: argument 0"}
!198 = distinct !{!198, !"gsi_start_bb"}
!199 = distinct !{!199, !200, !"gsi_after_labels: argument 0"}
!200 = distinct !{!200, !"gsi_after_labels"}
!201 = !{!199}
!202 = !{i64 0, i64 8, !75, i64 8, i64 8, !75}
!203 = !{i64 0, i64 8, !75}
!204 = !{!205}
!205 = distinct !{!205, !206, !"gsi_last_bb: argument 0"}
!206 = distinct !{!206, !"gsi_last_bb"}
!207 = !{!140, !76, i64 8}
!208 = !{!"branch_weights", i32 5437, i32 0}
!209 = !{!"branch_weights", i32 0, i32 5437}
!210 = !{!138, !76, i64 8}
!211 = !{!"branch_weights", i32 5414, i32 23}
!212 = !{!"branch_weights", i32 0, i32 5414}
!213 = !{!"branch_weights", i32 56, i32 5381}
!214 = !{!215}
!215 = distinct !{!215, !216, !"gsi_start: argument 0"}
!216 = distinct !{!216, !"gsi_start"}
!217 = !{!119, !81, i64 44}
!218 = !{!"branch_weights", i32 0, i32 5381}
!219 = !{!220, !76, i64 24}
!220 = !{!"ssa_use_operand_d", !76, i64 0, !76, i64 8, !77, i64 16, !76, i64 24}
!221 = !{!"branch_weights", i32 5381, i32 0}
!222 = !{!"branch_weights", i32 3654, i32 1727}
!223 = !{!"branch_weights", i32 1021, i32 706}
!224 = !{!"branch_weights", i32 3945, i32 730}
!225 = !{!"branch_weights", i32 695, i32 35}
!226 = !{!227, !229}
!227 = distinct !{!227, !228, !"gsi_start_bb: argument 0"}
!228 = distinct !{!228, !"gsi_start_bb"}
!229 = distinct !{!229, !230, !"gsi_after_labels: argument 0"}
!230 = distinct !{!230, !"gsi_after_labels"}
!231 = !{!229}
!232 = !{!"branch_weights", i32 0, i32 741}
!233 = !{!"branch_weights", i32 741, i32 0}
!234 = !{!"branch_weights", i32 706, i32 35}
!235 = !{!"branch_weights", i32 0, i32 706}
!236 = !{!237, !81, i64 40}
!237 = !{!"phi_arg_d", !220, i64 0, !76, i64 32, !81, i64 40}
!238 = !{!"branch_weights", i32 0, i32 4640}
!239 = !{!240, !77, i64 49}
!240 = !{!"real_format", !76, i64 0, !76, i64 8, !81, i64 16, !81, i64 20, !81, i64 24, !81, i64 28, !81, i64 32, !81, i64 36, !81, i64 40, !77, i64 44, !77, i64 45, !77, i64 46, !77, i64 47, !77, i64 48, !77, i64 49, !77, i64 50, !77, i64 51}
!241 = !{!242, !244}
!242 = distinct !{!242, !243, !"gsi_start_bb: argument 0"}
!243 = distinct !{!243, !"gsi_start_bb"}
!244 = distinct !{!244, !245, !"gsi_after_labels: argument 0"}
!245 = distinct !{!245, !"gsi_after_labels"}
!246 = !{!244}
!247 = !{!"branch_weights", i32 3, i32 3387}
!248 = !{!"branch_weights", i32 0, i32 3387}
!249 = !{!"branch_weights", i32 3387, i32 0}
!250 = !{!"branch_weights", i32 4173, i32 467}
!251 = !{!"branch_weights", i32 359, i32 108}
!252 = !{!"branch_weights", i32 0, i32 359}
!253 = !{!"branch_weights", i32 0, i32 359, i32 0, i32 0}
!254 = !{!"branch_weights", i32 169, i32 190}
!255 = !{!"branch_weights", i32 0, i32 169}
!256 = !{!257}
!257 = distinct !{!257, !258, !"gsi_last_bb: argument 0"}
!258 = distinct !{!258, !"gsi_last_bb"}
!259 = !{!240, !77, i64 46}
!260 = !{!"branch_weights", i32 90, i32 4550}
!261 = !{!"branch_weights", i32 0, i32 90}
!262 = !{!"branch_weights", i32 0, i32 4550}
!263 = !{!"branch_weights", i32 87, i32 3}
!264 = !{!"branch_weights", i32 3, i32 87}
!265 = !{!"branch_weights", i32 87, i32 0}
!266 = !{!"branch_weights", i32 3, i32 0}
!267 = !{!268, !270}
!268 = distinct !{!268, !269, !"gsi_start_bb: argument 0"}
!269 = distinct !{!269, !"gsi_start_bb"}
!270 = distinct !{!270, !271, !"gsi_after_labels: argument 0"}
!271 = distinct !{!271, !"gsi_after_labels"}
!272 = !{!270}
!273 = !{!274}
!274 = distinct !{!274, !275, !"gsi_last_bb: argument 0"}
!275 = distinct !{!275, !"gsi_last_bb"}
!276 = !{!277, !279}
!277 = distinct !{!277, !278, !"gsi_last_bb: argument 0"}
!278 = distinct !{!278, !"gsi_last_bb"}
!279 = distinct !{!279, !280, !"gsi_last_nondebug_bb: argument 0"}
!280 = distinct !{!280, !"gsi_last_nondebug_bb"}
!281 = !{!279}
!282 = !{!143, !76, i64 8}
!283 = distinct !{!283, !92, !93}
!284 = !{!"branch_weights", i32 0, i32 87}
!285 = !{!286}
!286 = distinct !{!286, !287, !"gsi_last_bb: argument 0"}
!287 = distinct !{!287, !"gsi_last_bb"}
!288 = !{!"branch_weights", i32 151, i32 602149}
!289 = distinct !{!289, !92, !93}
!290 = !{!"branch_weights", i32 0, i32 152}
!291 = !{!"branch_weights", i32 118, i32 34}
!292 = !{!"function_entry_count", i64 6}
!293 = !{!"tree-ssa-phiopt.c;name_to_bb_hash"}
!294 = !{!295, !76, i64 0}
!295 = !{!"name_to_bb", !76, i64 0, !76, i64 8, !81, i64 16}
!296 = !{!"VP", i32 0, i64 6, i64 6196242093822180960, i64 6}
!297 = !{!"function_entry_count", i64 145320}
!298 = !{!"tree-ssa-phiopt.c;nt_init_block"}
!299 = !{!102, !76, i64 16}
!300 = !{!301}
!301 = distinct !{!301, !302, !"gsi_start_bb: argument 0"}
!302 = distinct !{!302, !"gsi_start_bb"}
!303 = !{!"branch_weights", i32 145320, i32 0}
!304 = !{!"branch_weights", i32 38, i32 145282}
!305 = !{!"branch_weights", i32 1, i32 145319}
!306 = !{!"branch_weights", i32 125611, i32 214184}
!307 = !{!"branch_weights", i32 0, i32 125611}
!308 = !{!"branch_weights", i32 6, i32 298492}
!309 = !{!295, !76, i64 8}
!310 = !{!"branch_weights", i32 0, i32 125611, i32 0, i32 0}
!311 = !{!"branch_weights", i32 78315, i32 47296}
!312 = !{!"branch_weights", i32 0, i32 78315}
!313 = !{!"branch_weights", i32 47276, i32 78335}
!314 = !{!"branch_weights", i32 47276, i32 0}
!315 = !{!"branch_weights", i32 0, i32 47276}
!316 = !{!"branch_weights", i32 145319, i32 194476}
!317 = distinct !{!317, !92, !93}
!318 = !{!"tree-ssa-phiopt.c;nt_fini_block"}
!319 = !{!"function_entry_count", i64 741}
!320 = !{!"tree-ssa-phiopt.c;replace_phi_edge_with_variable"}
!321 = !{!220, !76, i64 0}
!322 = !{!220, !76, i64 8}
!323 = !{!119, !81, i64 52}
!324 = !{!119, !82, i64 56}
!325 = !{!326}
!326 = distinct !{!326, !327, !"gsi_last_bb: argument 0"}
!327 = distinct !{!327, !"gsi_last_bb"}
