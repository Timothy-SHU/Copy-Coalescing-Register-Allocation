; ModuleID = 'tree-ssa-loop-manip.c'
source_filename = "tree-ssa-loop-manip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.eni_weights_d = type { i32, i32, i32, i32, i8 }
%struct.lang_hooks = type { ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lang_hooks_for_tree_inlining, %struct.lang_hooks_for_callgraph, %struct.lang_hooks_for_tree_dump, %struct.lang_hooks_for_decls, %struct.lang_hooks_for_types, %struct.lang_hooks_for_lto, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.lang_hooks_for_tree_inlining = type { ptr }
%struct.lang_hooks_for_callgraph = type { ptr }
%struct.lang_hooks_for_tree_dump = type { ptr, ptr }
%struct.lang_hooks_for_decls = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lang_hooks_for_types = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.lang_hooks_for_lto = type { ptr, ptr, ptr }
%struct.bitmap_element_def = type { ptr, ptr, i32, [2 x i64] }
%struct._IO_FILE = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, [1 x i8], ptr, i64, ptr, ptr, ptr, ptr, i64, i32, [20 x i8] }
%struct.tree_common = type { %struct.tree_base, ptr, ptr }
%struct.tree_base = type { i64 }
%struct.tree_exp = type { %struct.tree_common, i32, ptr, [1 x ptr] }
%struct.loop = type { i32, i32, ptr, ptr, %struct.lpt_decision, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.double_int, %struct.double_int, i8, i8, i32, ptr, ptr, i8, ptr }
%struct.lpt_decision = type { i32, i32 }
%struct.double_int = type { i64, i64 }
%struct.tree_ssa_name = type { %struct.tree_common, ptr, ptr, i32, ptr, %struct.ssa_use_operand_d }
%struct.ssa_use_operand_d = type { ptr, ptr, %union.anon, ptr }
%union.anon = type { ptr }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.loops = type { i32, ptr, ptr, ptr }
%struct.basic_block_def = type { ptr, ptr, ptr, ptr, [2 x ptr], ptr, ptr, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%union.basic_block_il_dependent = type { ptr }
%struct.control_flow_graph = type { ptr, ptr, ptr, i32, i32, i32, ptr, i32, [2 x i32], [2 x i32], i32, i32 }
%struct.VEC_edge_base = type { i32, i32, [1 x ptr] }
%struct.gimple_df = type { ptr, ptr, ptr, ptr, %struct.pt_solution, %struct.pt_solution, ptr, ptr, ptr, ptr, i8, %struct.ssa_operands }
%struct.pt_solution = type { i8, ptr }
%struct.ssa_operands = type { ptr, i32, i32, i8, ptr, ptr }
%struct.VEC_basic_block_base = type { i32, i32, [1 x ptr] }
%struct.VEC_tree_base = type { i32, i32, [1 x ptr] }
%struct.gimple_statement_base = type { i32, i32, i32, i32, ptr, ptr }
%struct.edge_def = type { ptr, ptr, %union.edge_def_insns, ptr, ptr, i32, i32, i32, i32, i64 }
%union.edge_def_insns = type { ptr }
%struct.gimple_statement_phi = type { %struct.gimple_statement_base, i32, i32, ptr, [1 x %struct.phi_arg_d] }
%struct.phi_arg_d = type { %struct.ssa_use_operand_d, ptr, i32 }
%struct.gimple_stmt_iterator = type { ptr, ptr, ptr }
%struct.gimple_seq_node_d = type { ptr, ptr, ptr }
%struct.gimple_statement_with_ops_base = type { %struct.gimple_statement_base, ptr, ptr }
%struct.use_optype_d = type { ptr, %struct.ssa_use_operand_d }
%struct.gimple_seq_d = type { ptr, ptr, ptr }
%struct.tree_niter_desc = type { ptr, ptr, ptr, %struct.double_int, %struct.affine_iv, ptr, i32 }
%struct.affine_iv = type { ptr, ptr, i8 }
%struct.param_info = type { ptr, i32, i8, i32, i32, ptr }
%struct.simple_bitmap_def = type { ptr, i32, i32, [1 x i64] }
%struct.tree_type = type { %struct.tree_common, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, %union.tree_type_symtab, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.tree_type_symtab = type { ptr }
%struct.VEC_loop_p_base = type { i32, i32, [1 x ptr] }

@stdout = external local_unnamed_addr global ptr, align 8
@stdin = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [6 x i8] c"ivtmp\00", align 1
@sizetype_tab = external local_unnamed_addr global [4 x ptr], align 16
@cfun = external local_unnamed_addr global ptr, align 8
@eni_size_weights = external global %struct.eni_weights_d, align 4
@compiler_params = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [22 x i8] c"tree-ssa-loop-manip.c\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@global_trees = external local_unnamed_addr global [131 x ptr], align 16
@.str.3 = private unnamed_addr constant [11 x i8] c"unrinittmp\00", align 1
@lang_hooks = external local_unnamed_addr global %struct.lang_hooks, align 8
@bitmap_zero_bits = external local_unnamed_addr global %struct.bitmap_element_def, align 8
@.str.5 = private unnamed_addr constant [16 x i8] c"./basic-block.h\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"./gimple.h\00", align 1
@gimple_ops_offset_ = external local_unnamed_addr constant [0 x i64], align 8
@gss_for_code_ = external local_unnamed_addr constant [0 x i32], align 4

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
  %8 = tail call i32 @__uflow(ptr noundef %0) #18
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
  %8 = tail call i32 @__uflow(ptr noundef %0) #18
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
  %8 = tail call i32 @__uflow(ptr noundef %1) #18
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
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #18
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
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #18
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
  %10 = tail call i32 @__overflow(ptr noundef %2, i32 noundef %9) #18
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
  %4 = tail call i64 @__getdelim(ptr noundef %0, ptr noundef %1, i32 noundef 10, ptr noundef %2) #18
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
  %5 = tail call ptr @__ctype_tolower_loc() #18
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
  %5 = tail call ptr @__ctype_toupper_loc() #18
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
  %14 = tail call i32 %4(ptr noundef %0, ptr noundef %13) #18
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

; Function Attrs: cold nounwind uwtable
define dso_local void @create_iv(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i8 noundef zeroext %5, ptr noundef writeonly %6, ptr noundef writeonly %7) local_unnamed_addr #9 !prof !34 {
  %9 = alloca ptr, align 8
  %10 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #18
  %11 = tail call ptr @loop_preheader_edge(ptr noundef %3) #18
  %12 = icmp eq ptr %2, null
  br i1 %12, label %13, label %18

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !46
  %16 = tail call ptr @create_tmp_var(ptr noundef %15, ptr noundef nonnull @.str) #18
  %17 = tail call zeroext i8 @add_referenced_var(ptr noundef %16) #18
  br label %18

18:                                               ; preds = %13, %8
  %19 = phi ptr [ %2, %8 ], [ %16, %13 ]
  %20 = load ptr, ptr @cfun, align 8, !tbaa !35
  %21 = tail call ptr @make_ssa_name_fn(ptr noundef %20, ptr noundef %19, ptr noundef null) #18
  %22 = icmp eq ptr %6, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %18
  store ptr %21, ptr %6, align 8, !tbaa !35
  br label %24

24:                                               ; preds = %23, %18
  %25 = load ptr, ptr @cfun, align 8, !tbaa !35
  %26 = tail call ptr @make_ssa_name_fn(ptr noundef %25, ptr noundef %19, ptr noundef null) #18
  %27 = icmp eq ptr %7, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %24
  store ptr %26, ptr %7, align 8, !tbaa !35
  br label %29

29:                                               ; preds = %28, %24
  %30 = load i64, ptr %1, align 8
  %31 = and i64 %30, 65535
  %32 = icmp eq i64 %31, 23
  br i1 %32, label %33, label %57

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %35 = load ptr, ptr %34, align 8, !tbaa !46
  %36 = load i64, ptr %35, align 8
  %37 = and i64 %36, 2097152
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %45, label %39

39:                                               ; preds = %33
  %40 = tail call ptr @fold_build1_stat_loc(i32 noundef 0, i32 noundef 79, ptr noundef nonnull %35, ptr noundef nonnull %1) #18
  %41 = tail call i32 @tree_int_cst_lt(ptr noundef %40, ptr noundef nonnull %1) #18
  %42 = icmp eq i32 %41, 0
  %43 = select i1 %42, i32 63, i32 64
  %44 = select i1 %42, ptr %1, ptr %40
  br label %57

45:                                               ; preds = %33
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %10) #18
  %46 = call zeroext i8 @tree_expr_nonnegative_warnv_p(ptr noundef nonnull %1, ptr noundef nonnull %10) #18
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %45
  %49 = call zeroext i8 @may_negate_without_overflow_p(ptr noundef nonnull %1) #18
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %54, label %51

51:                                               ; preds = %48
  %52 = load ptr, ptr %34, align 8, !tbaa !46
  %53 = call ptr @fold_build1_stat_loc(i32 noundef 0, i32 noundef 79, ptr noundef %52, ptr noundef nonnull %1) #18
  br label %54

54:                                               ; preds = %51, %48, %45
  %55 = phi i32 [ 63, %45 ], [ 64, %51 ], [ 63, %48 ]
  %56 = phi ptr [ %1, %45 ], [ %53, %51 ], [ %1, %48 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %10) #18
  br label %57

57:                                               ; preds = %39, %54, %29
  %58 = phi i32 [ %55, %54 ], [ 63, %29 ], [ %43, %39 ]
  %59 = phi ptr [ %56, %54 ], [ %1, %29 ], [ %44, %39 ]
  %60 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %61 = load ptr, ptr %60, align 8, !tbaa !46
  %62 = load i64, ptr %61, align 8
  %63 = trunc i64 %62 to i16
  switch i16 %63, label %78 [
    i16 10, label %64
    i16 12, label %64
  ]

64:                                               ; preds = %57, %57
  %65 = load i64, ptr %0, align 8
  %66 = and i64 %65, 65535
  %67 = icmp eq i64 %66, 121
  br i1 %67, label %68, label %71

68:                                               ; preds = %64
  %69 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %70 = load ptr, ptr %69, align 8, !tbaa !46
  call void @mark_addressable(ptr noundef %70) #18
  br label %71

71:                                               ; preds = %68, %64
  %72 = load ptr, ptr @sizetype_tab, align 16, !tbaa !35
  %73 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %72, ptr noundef %59) #18
  %74 = icmp eq i32 %58, 64
  br i1 %74, label %75, label %78

75:                                               ; preds = %71
  %76 = load ptr, ptr @sizetype_tab, align 16, !tbaa !35
  %77 = call ptr @fold_build1_stat_loc(i32 noundef 0, i32 noundef 79, ptr noundef %76, ptr noundef %73) #18
  br label %78

78:                                               ; preds = %71, %75, %57
  %79 = phi i32 [ %58, %57 ], [ 66, %75 ], [ 66, %71 ]
  %80 = phi ptr [ %59, %57 ], [ %77, %75 ], [ %73, %71 ]
  %81 = call ptr @force_gimple_operand(ptr noundef %80, ptr noundef nonnull %9, i8 noundef zeroext 1, ptr noundef null) #18
  %82 = load ptr, ptr %9, align 8, !tbaa !35
  %83 = icmp eq ptr %82, null
  br i1 %83, label %86, label %84

84:                                               ; preds = %78
  %85 = call ptr @gsi_insert_seq_on_edge_immediate(ptr noundef %11, ptr noundef nonnull %82) #18
  br label %86

86:                                               ; preds = %84, %78
  %87 = call ptr @gimple_build_assign_with_ops_stat(i32 noundef %79, ptr noundef %26, ptr noundef %21, ptr noundef %81) #18
  %88 = icmp eq i8 %5, 0
  br i1 %88, label %90, label %89

89:                                               ; preds = %86
  call void @gsi_insert_after(ptr noundef %4, ptr noundef %87, i32 noundef 0) #18
  br label %91

90:                                               ; preds = %86
  call void @gsi_insert_before(ptr noundef %4, ptr noundef %87, i32 noundef 0) #18
  br label %91

91:                                               ; preds = %90, %89
  %92 = call ptr @force_gimple_operand(ptr noundef %0, ptr noundef nonnull %9, i8 noundef zeroext 1, ptr noundef %19) #18
  %93 = load ptr, ptr %9, align 8, !tbaa !35
  %94 = icmp eq ptr %93, null
  br i1 %94, label %97, label %95

95:                                               ; preds = %91
  %96 = call ptr @gsi_insert_seq_on_edge_immediate(ptr noundef %11, ptr noundef nonnull %93) #18
  br label %97

97:                                               ; preds = %95, %91
  %98 = getelementptr inbounds %struct.loop, ptr %3, i64 0, i32 2
  %99 = load ptr, ptr %98, align 8, !tbaa !54
  %100 = call ptr @create_phi_node(ptr noundef %21, ptr noundef %99) #18
  %101 = getelementptr inbounds %struct.tree_ssa_name, ptr %21, i64 0, i32 2
  store ptr %100, ptr %101, align 8, !tbaa !46
  %102 = call ptr @loop_preheader_edge(ptr noundef %3) #18
  call void @add_phi_arg(ptr noundef %100, ptr noundef %92, ptr noundef %102, i32 noundef 0) #18
  %103 = call ptr @loop_latch_edge(ptr noundef %3) #18
  call void @add_phi_arg(ptr noundef %100, ptr noundef %26, ptr noundef %103, i32 noundef 0) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #18
  ret void
}

declare ptr @loop_preheader_edge(ptr noundef) local_unnamed_addr #3

declare ptr @create_tmp_var(ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @add_referenced_var(ptr noundef) local_unnamed_addr #3

declare ptr @fold_build1_stat_loc(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @tree_int_cst_lt(ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @tree_expr_nonnegative_warnv_p(ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @may_negate_without_overflow_p(ptr noundef) local_unnamed_addr #3

declare void @mark_addressable(ptr noundef) local_unnamed_addr #3

declare ptr @fold_convert_loc(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @force_gimple_operand(ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #3

declare ptr @gsi_insert_seq_on_edge_immediate(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @gimple_build_assign_with_ops_stat(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @gsi_insert_after(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @gsi_insert_before(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @create_phi_node(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @add_phi_arg(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @loop_latch_edge(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @rewrite_into_loop_closed_ssa(ptr noundef readonly %0, i32 noundef %1) local_unnamed_addr #10 !prof !58 {
  %3 = load ptr, ptr @cfun, align 8, !tbaa !35
  %4 = getelementptr inbounds %struct.function, ptr %3, i64 0, i32 4
  %5 = load ptr, ptr %4, align 8, !tbaa !59
  %6 = load i32, ptr %5, align 8, !tbaa !61
  %7 = or i32 %6, 32
  store i32 %7, ptr %5, align 8, !tbaa !61
  %8 = getelementptr inbounds %struct.loops, ptr %5, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !63
  %10 = icmp eq ptr %9, null
  br i1 %10, label %528, label %11, !prof !64

11:                                               ; preds = %2
  %12 = load i32, ptr %9, align 8, !tbaa !65
  %13 = icmp ult i32 %12, 2
  br i1 %13, label %528, label %14, !prof !67

14:                                               ; preds = %11
  %15 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #18
  %16 = load ptr, ptr @cfun, align 8, !tbaa !35
  %17 = getelementptr inbounds %struct.function, ptr %16, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !68
  %19 = load ptr, ptr %18, align 8, !tbaa !69
  %20 = getelementptr inbounds %struct.basic_block_def, ptr %19, i64 0, i32 6
  %21 = load ptr, ptr %20, align 8, !tbaa !71
  %22 = getelementptr inbounds %struct.control_flow_graph, ptr %18, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !73
  %24 = icmp eq ptr %21, %23
  br i1 %24, label %81, label %25

25:                                               ; preds = %14, %72
  %26 = phi ptr [ %74, %72 ], [ %21, %14 ]
  %27 = icmp eq ptr %26, null
  br label %28

28:                                               ; preds = %25, %70
  %29 = phi i32 [ %71, %70 ], [ 0, %25 ]
  br i1 %27, label %30, label %31

30:                                               ; preds = %28
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 687, ptr noundef nonnull @.str.2) #18
  br label %31

31:                                               ; preds = %30, %28
  %32 = load ptr, ptr %26, align 8, !tbaa !35
  %33 = icmp eq ptr %32, null
  br i1 %33, label %36, label %34

34:                                               ; preds = %31
  %35 = load i32, ptr %32, align 8, !tbaa !74
  br label %36

36:                                               ; preds = %34, %31
  %37 = phi i32 [ %35, %34 ], [ 0, %31 ]
  %38 = icmp eq i32 %37, %29
  br i1 %38, label %43, label %39

39:                                               ; preds = %36
  %40 = zext i32 %29 to i64
  %41 = getelementptr inbounds %struct.VEC_edge_base, ptr %32, i64 0, i32 2, i64 %40
  %42 = load ptr, ptr %41, align 8, !tbaa !35
  br label %43

43:                                               ; preds = %39, %36
  %44 = phi ptr [ %42, %39 ], [ null, %36 ]
  br i1 %38, label %72, label %45

45:                                               ; preds = %43
  %46 = load ptr, ptr %44, align 8, !tbaa !76
  %47 = load ptr, ptr @cfun, align 8, !tbaa !35
  %48 = getelementptr inbounds %struct.function, ptr %47, i64 0, i32 1
  %49 = load ptr, ptr %48, align 8, !tbaa !68
  %50 = load ptr, ptr %49, align 8, !tbaa !69
  %51 = icmp eq ptr %46, %50
  br i1 %51, label %61, label %52

52:                                               ; preds = %45
  %53 = getelementptr inbounds %struct.basic_block_def, ptr %46, i64 0, i32 3
  %54 = load ptr, ptr %53, align 8, !tbaa !78
  %55 = tail call zeroext i8 @flow_bb_inside_loop_p(ptr noundef %54, ptr noundef nonnull %26) #18
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %52
  %58 = getelementptr inbounds %struct.basic_block_def, ptr %26, i64 0, i32 9
  %59 = load i32, ptr %58, align 8, !tbaa !79
  %60 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %15, i32 noundef %59) #18
  br label %72

61:                                               ; preds = %52, %45
  %62 = load ptr, ptr %26, align 8, !tbaa !35
  %63 = icmp eq ptr %62, null
  br i1 %63, label %66, label %64

64:                                               ; preds = %61
  %65 = load i32, ptr %62, align 8, !tbaa !74
  br label %66

66:                                               ; preds = %64, %61
  %67 = phi i32 [ %65, %64 ], [ 0, %61 ]
  %68 = icmp ult i32 %29, %67
  br i1 %68, label %70, label %69

69:                                               ; preds = %66
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 738, ptr noundef nonnull @.str.2) #18
  br label %70

70:                                               ; preds = %69, %66
  %71 = add i32 %29, 1
  br label %28, !llvm.loop !80

72:                                               ; preds = %43, %57
  %73 = getelementptr inbounds %struct.basic_block_def, ptr %26, i64 0, i32 6
  %74 = load ptr, ptr %73, align 8, !tbaa !71
  %75 = load ptr, ptr @cfun, align 8, !tbaa !35
  %76 = getelementptr inbounds %struct.function, ptr %75, i64 0, i32 1
  %77 = load ptr, ptr %76, align 8, !tbaa !68
  %78 = getelementptr inbounds %struct.control_flow_graph, ptr %77, i64 0, i32 1
  %79 = load ptr, ptr %78, align 8, !tbaa !73
  %80 = icmp eq ptr %74, %79
  br i1 %80, label %81, label %25, !llvm.loop !81

81:                                               ; preds = %72, %14
  %82 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #18
  tail call void @update_ssa(i32 noundef %1) #18
  %83 = load ptr, ptr @cfun, align 8, !tbaa !35
  %84 = getelementptr inbounds %struct.function, ptr %83, i64 0, i32 3
  %85 = load ptr, ptr %84, align 8, !tbaa !82
  %86 = getelementptr inbounds %struct.gimple_df, ptr %85, i64 0, i32 2
  %87 = load ptr, ptr %86, align 8, !tbaa !83
  %88 = icmp eq ptr %87, null
  br i1 %88, label %91, label %89

89:                                               ; preds = %81
  %90 = load i32, ptr %87, align 8, !tbaa !87
  br label %91

91:                                               ; preds = %81, %89
  %92 = phi i32 [ %90, %89 ], [ 0, %81 ]
  %93 = zext i32 %92 to i64
  %94 = tail call ptr @xcalloc(i64 noundef %93, i64 noundef 8) #18
  %95 = icmp eq ptr %0, null
  br i1 %95, label %180, label %96

96:                                               ; preds = %91
  %97 = load ptr, ptr %0, align 8, !tbaa !89
  %98 = icmp eq ptr %97, null
  br i1 %98, label %180, label %99

99:                                               ; preds = %96
  %100 = getelementptr inbounds %struct.bitmap_element_def, ptr %97, i64 0, i32 2
  %101 = load i32, ptr %100, align 8, !tbaa !91
  %102 = shl i32 %101, 7
  %103 = getelementptr inbounds %struct.bitmap_element_def, ptr %97, i64 0, i32 3
  %104 = load i64, ptr %103, align 8, !tbaa !93
  %105 = icmp eq i64 %104, 0
  %106 = zext i1 %105 to i32
  %107 = or disjoint i32 %102, %106
  br label %108

108:                                              ; preds = %169, %99
  %109 = phi i64 [ %104, %99 ], [ %178, %169 ]
  %110 = phi i32 [ 0, %99 ], [ %165, %169 ]
  %111 = phi i32 [ %107, %99 ], [ %179, %169 ]
  %112 = phi ptr [ %97, %99 ], [ %167, %169 ]
  %113 = icmp eq i64 %109, 0
  br i1 %113, label %128, label %114

114:                                              ; preds = %142, %108
  %115 = phi i64 [ %109, %108 ], [ %147, %142 ]
  %116 = phi i32 [ %110, %108 ], [ %143, %142 ]
  %117 = phi i32 [ %111, %108 ], [ %144, %142 ]
  %118 = phi ptr [ %112, %108 ], [ %135, %142 ]
  %119 = and i64 %115, 1
  %120 = icmp eq i64 %119, 0
  br i1 %120, label %121, label %163

121:                                              ; preds = %114, %121
  %122 = phi i32 [ %125, %121 ], [ %117, %114 ]
  %123 = phi i64 [ %124, %121 ], [ %115, %114 ]
  %124 = lshr exact i64 %123, 1
  %125 = add i32 %122, 1
  %126 = and i64 %123, 2
  %127 = icmp eq i64 %126, 0
  br i1 %127, label %121, label %163, !llvm.loop !94

128:                                              ; preds = %108
  %129 = add i32 %111, 63
  %130 = and i32 %129, -64
  %131 = add i32 %110, 1
  br label %132

132:                                              ; preds = %159, %128
  %133 = phi i64 [ %109, %128 ], [ %154, %159 ]
  %134 = phi i32 [ %130, %128 ], [ %162, %159 ]
  %135 = phi ptr [ %112, %128 ], [ %157, %159 ]
  %136 = phi i32 [ %131, %128 ], [ 0, %159 ]
  %137 = icmp eq i32 %136, 2
  br i1 %137, label %153, label %138

138:                                              ; preds = %132
  %139 = add i32 %134, 128
  %140 = shl i32 %136, 6
  %141 = sub i32 %139, %140
  br label %142

142:                                              ; preds = %138, %149
  %143 = phi i32 [ %151, %149 ], [ %136, %138 ]
  %144 = phi i32 [ %150, %149 ], [ %134, %138 ]
  %145 = zext i32 %143 to i64
  %146 = getelementptr inbounds %struct.bitmap_element_def, ptr %135, i64 0, i32 3, i64 %145
  %147 = load i64, ptr %146, align 8, !tbaa !93
  %148 = icmp eq i64 %147, 0
  br i1 %148, label %149, label %114

149:                                              ; preds = %142
  %150 = add i32 %144, 64
  %151 = add i32 %143, 1
  %152 = icmp eq i32 %151, 2
  br i1 %152, label %153, label %142, !llvm.loop !95

153:                                              ; preds = %149, %132
  %154 = phi i64 [ %133, %132 ], [ %147, %149 ]
  %155 = phi i32 [ %134, %132 ], [ %141, %149 ]
  %156 = phi i32 [ %136, %132 ], [ 2, %149 ]
  %157 = load ptr, ptr %135, align 8, !tbaa !96
  %158 = icmp eq ptr %157, null
  br i1 %158, label %163, label %159

159:                                              ; preds = %153
  %160 = getelementptr inbounds %struct.bitmap_element_def, ptr %157, i64 0, i32 2
  %161 = load i32, ptr %160, align 8, !tbaa !91
  %162 = shl i32 %161, 7
  br label %132, !llvm.loop !97

163:                                              ; preds = %153, %121, %114
  %164 = phi i64 [ %115, %114 ], [ %124, %121 ], [ %154, %153 ]
  %165 = phi i32 [ %116, %114 ], [ %116, %121 ], [ %156, %153 ]
  %166 = phi i32 [ %117, %114 ], [ %125, %121 ], [ %155, %153 ]
  %167 = phi ptr [ %118, %114 ], [ %118, %121 ], [ %157, %153 ]
  %168 = phi i1 [ false, %114 ], [ false, %121 ], [ true, %153 ]
  br i1 %168, label %200, label %169

169:                                              ; preds = %163
  %170 = load ptr, ptr @cfun, align 8, !tbaa !35
  %171 = getelementptr inbounds %struct.function, ptr %170, i64 0, i32 1
  %172 = load ptr, ptr %171, align 8, !tbaa !68
  %173 = getelementptr inbounds %struct.control_flow_graph, ptr %172, i64 0, i32 2
  %174 = load ptr, ptr %173, align 8, !tbaa !98
  %175 = zext i32 %166 to i64
  %176 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %174, i64 0, i32 2, i64 %175
  %177 = load ptr, ptr %176, align 8, !tbaa !35
  tail call fastcc void @find_uses_to_rename_bb(ptr noundef %177, ptr noundef %94, ptr noundef %82)
  %178 = lshr i64 %164, 1
  %179 = add i32 %166, 1
  br label %108, !llvm.loop !99

180:                                              ; preds = %96, %91
  %181 = load ptr, ptr @cfun, align 8, !tbaa !35
  %182 = getelementptr inbounds %struct.function, ptr %181, i64 0, i32 1
  %183 = load ptr, ptr %182, align 8, !tbaa !68
  %184 = load ptr, ptr %183, align 8, !tbaa !69
  %185 = getelementptr inbounds %struct.basic_block_def, ptr %184, i64 0, i32 6
  %186 = load ptr, ptr %185, align 8, !tbaa !71
  %187 = getelementptr inbounds %struct.control_flow_graph, ptr %183, i64 0, i32 1
  %188 = load ptr, ptr %187, align 8, !tbaa !73
  %189 = icmp eq ptr %186, %188
  br i1 %189, label %200, label %190

190:                                              ; preds = %180, %190
  %191 = phi ptr [ %193, %190 ], [ %186, %180 ]
  tail call fastcc void @find_uses_to_rename_bb(ptr noundef %191, ptr noundef %94, ptr noundef %82)
  %192 = getelementptr inbounds %struct.basic_block_def, ptr %191, i64 0, i32 6
  %193 = load ptr, ptr %192, align 8, !tbaa !71
  %194 = load ptr, ptr @cfun, align 8, !tbaa !35
  %195 = getelementptr inbounds %struct.function, ptr %194, i64 0, i32 1
  %196 = load ptr, ptr %195, align 8, !tbaa !68
  %197 = getelementptr inbounds %struct.control_flow_graph, ptr %196, i64 0, i32 1
  %198 = load ptr, ptr %197, align 8, !tbaa !73
  %199 = icmp eq ptr %193, %198
  br i1 %199, label %200, label %190, !llvm.loop !100

200:                                              ; preds = %163, %190, %180
  %201 = load ptr, ptr %82, align 8, !tbaa !89
  %202 = icmp eq ptr %201, null
  %203 = select i1 %202, ptr @bitmap_zero_bits, ptr %201
  %204 = getelementptr inbounds %struct.bitmap_element_def, ptr %203, i64 0, i32 2
  %205 = load i32, ptr %204, align 8, !tbaa !91
  %206 = shl i32 %205, 7
  %207 = getelementptr inbounds %struct.bitmap_element_def, ptr %203, i64 0, i32 3
  %208 = load i64, ptr %207, align 8, !tbaa !93
  %209 = icmp eq i64 %208, 0
  %210 = zext i1 %209 to i32
  %211 = or disjoint i32 %206, %210
  br label %212

212:                                              ; preds = %518, %200
  %213 = phi i64 [ %208, %200 ], [ %519, %518 ]
  %214 = phi i32 [ 0, %200 ], [ %269, %518 ]
  %215 = phi i32 [ %211, %200 ], [ %520, %518 ]
  %216 = phi ptr [ %203, %200 ], [ %271, %518 ]
  %217 = icmp eq i64 %213, 0
  br i1 %217, label %232, label %218

218:                                              ; preds = %246, %212
  %219 = phi i64 [ %213, %212 ], [ %251, %246 ]
  %220 = phi i32 [ %214, %212 ], [ %247, %246 ]
  %221 = phi i32 [ %215, %212 ], [ %248, %246 ]
  %222 = phi ptr [ %216, %212 ], [ %239, %246 ]
  %223 = and i64 %219, 1
  %224 = icmp eq i64 %223, 0
  br i1 %224, label %225, label %267

225:                                              ; preds = %218, %225
  %226 = phi i32 [ %229, %225 ], [ %221, %218 ]
  %227 = phi i64 [ %228, %225 ], [ %219, %218 ]
  %228 = lshr exact i64 %227, 1
  %229 = add i32 %226, 1
  %230 = and i64 %227, 2
  %231 = icmp eq i64 %230, 0
  br i1 %231, label %225, label %267, !llvm.loop !94

232:                                              ; preds = %212
  %233 = add i32 %215, 63
  %234 = and i32 %233, -64
  %235 = add i32 %214, 1
  br label %236

236:                                              ; preds = %263, %232
  %237 = phi i64 [ %213, %232 ], [ %258, %263 ]
  %238 = phi i32 [ %234, %232 ], [ %266, %263 ]
  %239 = phi ptr [ %216, %232 ], [ %261, %263 ]
  %240 = phi i32 [ %235, %232 ], [ 0, %263 ]
  %241 = icmp eq i32 %240, 2
  br i1 %241, label %257, label %242

242:                                              ; preds = %236
  %243 = add i32 %238, 128
  %244 = shl i32 %240, 6
  %245 = sub i32 %243, %244
  br label %246

246:                                              ; preds = %242, %253
  %247 = phi i32 [ %255, %253 ], [ %240, %242 ]
  %248 = phi i32 [ %254, %253 ], [ %238, %242 ]
  %249 = zext i32 %247 to i64
  %250 = getelementptr inbounds %struct.bitmap_element_def, ptr %239, i64 0, i32 3, i64 %249
  %251 = load i64, ptr %250, align 8, !tbaa !93
  %252 = icmp eq i64 %251, 0
  br i1 %252, label %253, label %218

253:                                              ; preds = %246
  %254 = add i32 %248, 64
  %255 = add i32 %247, 1
  %256 = icmp eq i32 %255, 2
  br i1 %256, label %257, label %246, !llvm.loop !95

257:                                              ; preds = %253, %236
  %258 = phi i64 [ %237, %236 ], [ %251, %253 ]
  %259 = phi i32 [ %238, %236 ], [ %245, %253 ]
  %260 = phi i32 [ %240, %236 ], [ 2, %253 ]
  %261 = load ptr, ptr %239, align 8, !tbaa !96
  %262 = icmp eq ptr %261, null
  br i1 %262, label %267, label %263

263:                                              ; preds = %257
  %264 = getelementptr inbounds %struct.bitmap_element_def, ptr %261, i64 0, i32 2
  %265 = load i32, ptr %264, align 8, !tbaa !91
  %266 = shl i32 %265, 7
  br label %236, !llvm.loop !97

267:                                              ; preds = %257, %225, %218
  %268 = phi i64 [ %219, %218 ], [ %228, %225 ], [ %258, %257 ]
  %269 = phi i32 [ %220, %218 ], [ %220, %225 ], [ %260, %257 ]
  %270 = phi i32 [ %221, %218 ], [ %229, %225 ], [ %259, %257 ]
  %271 = phi ptr [ %222, %218 ], [ %222, %225 ], [ %261, %257 ]
  %272 = phi i1 [ false, %218 ], [ false, %225 ], [ true, %257 ]
  br i1 %272, label %273, label %277

273:                                              ; preds = %267
  %274 = icmp eq i32 %92, 0
  br i1 %274, label %527, label %275

275:                                              ; preds = %273
  %276 = zext i32 %92 to i64
  br label %521

277:                                              ; preds = %267
  %278 = load ptr, ptr @cfun, align 8, !tbaa !35
  %279 = getelementptr inbounds %struct.function, ptr %278, i64 0, i32 3
  %280 = load ptr, ptr %279, align 8, !tbaa !82
  %281 = getelementptr inbounds %struct.gimple_df, ptr %280, i64 0, i32 2
  %282 = load ptr, ptr %281, align 8, !tbaa !83
  %283 = zext i32 %270 to i64
  %284 = getelementptr inbounds %struct.VEC_tree_base, ptr %282, i64 0, i32 2, i64 %283
  %285 = load ptr, ptr %284, align 8, !tbaa !35
  %286 = getelementptr inbounds ptr, ptr %94, i64 %283
  %287 = load ptr, ptr %286, align 8, !tbaa !35
  %288 = getelementptr inbounds %struct.tree_ssa_name, ptr %285, i64 0, i32 2
  %289 = load ptr, ptr %288, align 8, !tbaa !46
  %290 = getelementptr inbounds %struct.gimple_statement_base, ptr %289, i64 0, i32 4
  %291 = load ptr, ptr %290, align 8, !tbaa !46
  %292 = tail call zeroext i8 @is_gimple_reg(ptr noundef %285) #18
  %293 = icmp eq i8 %292, 0
  %294 = getelementptr inbounds %struct.basic_block_def, ptr %291, i64 0, i32 9
  %295 = load i32, ptr %294, align 8, !tbaa !79
  br i1 %293, label %298, label %296

296:                                              ; preds = %277
  %297 = tail call zeroext i8 @bitmap_clear_bit(ptr noundef %287, i32 noundef %295) #18
  br label %300

298:                                              ; preds = %277
  %299 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %287, i32 noundef %295) #18
  br label %300

300:                                              ; preds = %298, %296
  %301 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #18
  %302 = getelementptr inbounds %struct.basic_block_def, ptr %291, i64 0, i32 9
  %303 = load i32, ptr %302, align 8, !tbaa !79
  %304 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %301, i32 noundef %303) #18
  tail call void @compute_global_livein(ptr noundef %287, ptr noundef %301) #18
  tail call void @bitmap_obstack_free(ptr noundef %301) #18
  %305 = load ptr, ptr %15, align 8, !tbaa !89
  %306 = load ptr, ptr %287, align 8, !tbaa !89
  %307 = icmp eq ptr %305, null
  %308 = icmp eq ptr %306, null
  %309 = select i1 %307, i1 true, i1 %308
  br i1 %309, label %321, label %310

310:                                              ; preds = %300
  %311 = getelementptr inbounds %struct.bitmap_element_def, ptr %305, i64 0, i32 2
  %312 = load i32, ptr %311, align 8, !tbaa !91
  br label %313

313:                                              ; preds = %310, %318
  %314 = phi ptr [ %306, %310 ], [ %319, %318 ]
  %315 = getelementptr inbounds %struct.bitmap_element_def, ptr %314, i64 0, i32 2
  %316 = load i32, ptr %315, align 8, !tbaa !91
  %317 = icmp ult i32 %316, %312
  br i1 %317, label %318, label %321

318:                                              ; preds = %313
  %319 = load ptr, ptr %314, align 8, !tbaa !96
  %320 = icmp eq ptr %319, null
  br i1 %320, label %321, label %313, !llvm.loop !101

321:                                              ; preds = %318, %313, %300
  %322 = phi ptr [ @bitmap_zero_bits, %300 ], [ @bitmap_zero_bits, %318 ], [ %314, %313 ]
  %323 = phi ptr [ @bitmap_zero_bits, %300 ], [ @bitmap_zero_bits, %318 ], [ %305, %313 ]
  %324 = getelementptr inbounds %struct.bitmap_element_def, ptr %323, i64 0, i32 2
  %325 = load i32, ptr %324, align 8, !tbaa !91
  %326 = getelementptr inbounds %struct.bitmap_element_def, ptr %322, i64 0, i32 2
  %327 = load i32, ptr %326, align 8, !tbaa !91
  %328 = icmp eq i32 %325, %327
  br i1 %328, label %329, label %336

329:                                              ; preds = %321
  %330 = shl i32 %325, 7
  %331 = getelementptr inbounds %struct.bitmap_element_def, ptr %323, i64 0, i32 3
  %332 = load i64, ptr %331, align 8, !tbaa !93
  %333 = getelementptr inbounds %struct.bitmap_element_def, ptr %322, i64 0, i32 3
  %334 = load i64, ptr %333, align 8, !tbaa !93
  %335 = and i64 %334, %332
  br label %336

336:                                              ; preds = %329, %321
  %337 = phi i64 [ %335, %329 ], [ 0, %321 ]
  %338 = phi i32 [ 0, %329 ], [ 1, %321 ]
  %339 = phi i32 [ %330, %329 ], [ 0, %321 ]
  %340 = icmp eq i64 %337, 0
  %341 = zext i1 %340 to i32
  %342 = or disjoint i32 %339, %341
  br label %343

343:                                              ; preds = %515, %336
  %344 = phi i64 [ %337, %336 ], [ %516, %515 ]
  %345 = phi i32 [ %342, %336 ], [ %517, %515 ]
  %346 = phi i32 [ %338, %336 ], [ %426, %515 ]
  %347 = phi ptr [ %322, %336 ], [ %427, %515 ]
  %348 = phi ptr [ %323, %336 ], [ %428, %515 ]
  %349 = icmp eq i64 %344, 0
  br i1 %349, label %365, label %350

350:                                              ; preds = %384, %343
  %351 = phi i64 [ %344, %343 ], [ %392, %384 ]
  %352 = phi i32 [ %345, %343 ], [ %386, %384 ]
  %353 = phi i32 [ %346, %343 ], [ %385, %384 ]
  %354 = phi ptr [ %347, %343 ], [ %372, %384 ]
  %355 = phi ptr [ %348, %343 ], [ %373, %384 ]
  %356 = and i64 %351, 1
  %357 = icmp eq i64 %356, 0
  br i1 %357, label %358, label %423

358:                                              ; preds = %350, %358
  %359 = phi i32 [ %362, %358 ], [ %352, %350 ]
  %360 = phi i64 [ %361, %358 ], [ %351, %350 ]
  %361 = lshr exact i64 %360, 1
  %362 = add i32 %359, 1
  %363 = and i64 %360, 2
  %364 = icmp eq i64 %363, 0
  br i1 %364, label %358, label %423, !llvm.loop !102

365:                                              ; preds = %343
  %366 = add i32 %345, 63
  %367 = and i32 %366, -64
  %368 = add i32 %346, 1
  br label %369

369:                                              ; preds = %421, %365
  %370 = phi i64 [ %344, %365 ], [ %381, %421 ]
  %371 = phi i32 [ %367, %365 ], [ %422, %421 ]
  %372 = phi ptr [ %347, %365 ], [ %412, %421 ]
  %373 = phi ptr [ %348, %365 ], [ %404, %421 ]
  %374 = phi i32 [ %368, %365 ], [ 0, %421 ]
  %375 = icmp eq i32 %374, 2
  br i1 %375, label %380, label %376

376:                                              ; preds = %369
  %377 = add i32 %371, 128
  %378 = shl i32 %374, 6
  %379 = sub i32 %377, %378
  br label %384

380:                                              ; preds = %394, %369
  %381 = phi i64 [ %370, %369 ], [ %392, %394 ]
  %382 = phi i32 [ %371, %369 ], [ %379, %394 ]
  %383 = phi i32 [ %374, %369 ], [ 2, %394 ]
  br label %398

384:                                              ; preds = %376, %394
  %385 = phi i32 [ %396, %394 ], [ %374, %376 ]
  %386 = phi i32 [ %395, %394 ], [ %371, %376 ]
  %387 = zext i32 %385 to i64
  %388 = getelementptr inbounds %struct.bitmap_element_def, ptr %373, i64 0, i32 3, i64 %387
  %389 = load i64, ptr %388, align 8, !tbaa !93
  %390 = getelementptr inbounds %struct.bitmap_element_def, ptr %372, i64 0, i32 3, i64 %387
  %391 = load i64, ptr %390, align 8, !tbaa !93
  %392 = and i64 %391, %389
  %393 = icmp eq i64 %392, 0
  br i1 %393, label %394, label %350

394:                                              ; preds = %384
  %395 = add i32 %386, 64
  %396 = add i32 %385, 1
  %397 = icmp eq i32 %396, 2
  br i1 %397, label %380, label %384, !llvm.loop !103

398:                                              ; preds = %380, %419
  %399 = phi ptr [ %412, %419 ], [ %372, %380 ]
  %400 = phi ptr [ %404, %419 ], [ %373, %380 ]
  %401 = getelementptr inbounds %struct.bitmap_element_def, ptr %399, i64 0, i32 2
  br label %402

402:                                              ; preds = %406, %398
  %403 = phi ptr [ %400, %398 ], [ %404, %406 ]
  %404 = load ptr, ptr %403, align 8, !tbaa !96
  %405 = icmp eq ptr %404, null
  br i1 %405, label %423, label %406

406:                                              ; preds = %402
  %407 = getelementptr inbounds %struct.bitmap_element_def, ptr %404, i64 0, i32 2
  %408 = load i32, ptr %407, align 8, !tbaa !91
  %409 = load i32, ptr %401, align 8, !tbaa !91
  %410 = icmp ult i32 %408, %409
  br i1 %410, label %402, label %411, !llvm.loop !104

411:                                              ; preds = %406, %416
  %412 = phi ptr [ %417, %416 ], [ %399, %406 ]
  %413 = getelementptr inbounds %struct.bitmap_element_def, ptr %412, i64 0, i32 2
  %414 = load i32, ptr %413, align 8, !tbaa !91
  %415 = icmp ult i32 %414, %408
  br i1 %415, label %416, label %419

416:                                              ; preds = %411
  %417 = load ptr, ptr %412, align 8, !tbaa !96
  %418 = icmp eq ptr %417, null
  br i1 %418, label %423, label %411, !llvm.loop !105

419:                                              ; preds = %411
  %420 = icmp eq i32 %408, %414
  br i1 %420, label %421, label %398, !llvm.loop !106

421:                                              ; preds = %419
  %422 = shl i32 %408, 7
  br label %369, !llvm.loop !107

423:                                              ; preds = %358, %402, %416, %350
  %424 = phi i64 [ %351, %350 ], [ %381, %416 ], [ %381, %402 ], [ %361, %358 ]
  %425 = phi i32 [ %352, %350 ], [ %382, %416 ], [ %382, %402 ], [ %362, %358 ]
  %426 = phi i32 [ %353, %350 ], [ %383, %416 ], [ %383, %402 ], [ %353, %358 ]
  %427 = phi ptr [ %354, %350 ], [ %417, %416 ], [ %399, %402 ], [ %354, %358 ]
  %428 = phi ptr [ %355, %350 ], [ %404, %416 ], [ %404, %402 ], [ %355, %358 ]
  %429 = phi i1 [ false, %350 ], [ true, %416 ], [ true, %402 ], [ false, %358 ]
  br i1 %429, label %518, label %430

430:                                              ; preds = %423
  %431 = load ptr, ptr @cfun, align 8, !tbaa !35
  %432 = getelementptr inbounds %struct.function, ptr %431, i64 0, i32 1
  %433 = load ptr, ptr %432, align 8, !tbaa !68
  %434 = getelementptr inbounds %struct.control_flow_graph, ptr %433, i64 0, i32 2
  %435 = load ptr, ptr %434, align 8, !tbaa !98
  %436 = zext i32 %425 to i64
  %437 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %435, i64 0, i32 2, i64 %436
  %438 = load ptr, ptr %437, align 8, !tbaa !35
  %439 = load ptr, ptr %288, align 8, !tbaa !46
  %440 = getelementptr inbounds %struct.gimple_statement_base, ptr %439, i64 0, i32 4
  %441 = load ptr, ptr %440, align 8, !tbaa !46
  %442 = getelementptr inbounds %struct.basic_block_def, ptr %441, i64 0, i32 3
  %443 = icmp eq ptr %438, null
  br label %444

444:                                              ; preds = %480, %430
  %445 = phi i32 [ 0, %430 ], [ %481, %480 ]
  br i1 %443, label %446, label %447

446:                                              ; preds = %444
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 687, ptr noundef nonnull @.str.2) #18
  br label %447

447:                                              ; preds = %446, %444
  %448 = load ptr, ptr %438, align 8, !tbaa !35
  %449 = icmp eq ptr %448, null
  br i1 %449, label %452, label %450

450:                                              ; preds = %447
  %451 = load i32, ptr %448, align 8, !tbaa !74
  br label %452

452:                                              ; preds = %450, %447
  %453 = phi i32 [ %451, %450 ], [ 0, %447 ]
  %454 = icmp eq i32 %453, %445
  br i1 %454, label %459, label %455

455:                                              ; preds = %452
  %456 = zext i32 %445 to i64
  %457 = getelementptr inbounds %struct.VEC_edge_base, ptr %448, i64 0, i32 2, i64 %456
  %458 = load ptr, ptr %457, align 8, !tbaa !35
  br label %459

459:                                              ; preds = %455, %452
  %460 = phi ptr [ %458, %455 ], [ null, %452 ]
  br i1 %454, label %482, label %461

461:                                              ; preds = %459
  %462 = load ptr, ptr %442, align 8, !tbaa !78
  %463 = load ptr, ptr %460, align 8, !tbaa !76
  %464 = getelementptr inbounds %struct.basic_block_def, ptr %463, i64 0, i32 3
  %465 = load ptr, ptr %464, align 8, !tbaa !78
  %466 = tail call ptr @find_common_loop(ptr noundef %462, ptr noundef %465) #18
  %467 = getelementptr inbounds %struct.edge_def, ptr %460, i64 0, i32 1
  %468 = load ptr, ptr %467, align 8, !tbaa !108
  %469 = tail call zeroext i8 @flow_bb_inside_loop_p(ptr noundef %466, ptr noundef %468) #18
  %470 = icmp eq i8 %469, 0
  br i1 %470, label %482, label %471

471:                                              ; preds = %461
  %472 = load ptr, ptr %438, align 8, !tbaa !35
  %473 = icmp eq ptr %472, null
  br i1 %473, label %476, label %474

474:                                              ; preds = %471
  %475 = load i32, ptr %472, align 8, !tbaa !74
  br label %476

476:                                              ; preds = %474, %471
  %477 = phi i32 [ %475, %474 ], [ 0, %471 ]
  %478 = icmp ult i32 %445, %477
  br i1 %478, label %480, label %479

479:                                              ; preds = %476
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 738, ptr noundef nonnull @.str.2) #18
  br label %480

480:                                              ; preds = %479, %476
  %481 = add i32 %445, 1
  br label %444, !llvm.loop !109

482:                                              ; preds = %461, %459
  %483 = icmp eq ptr %460, null
  br i1 %483, label %515, label %484

484:                                              ; preds = %482
  %485 = tail call ptr @create_phi_node(ptr noundef %285, ptr noundef nonnull %438) #18
  %486 = getelementptr inbounds %struct.gimple_statement_phi, ptr %485, i64 0, i32 3
  %487 = load ptr, ptr %486, align 8, !tbaa !46
  %488 = tail call ptr @create_new_def_for(ptr noundef %487, ptr noundef %485, ptr noundef nonnull %486) #18
  br label %489

489:                                              ; preds = %513, %484
  %490 = phi i32 [ 0, %484 ], [ %514, %513 ]
  %491 = load ptr, ptr %438, align 8, !tbaa !35
  %492 = icmp eq ptr %491, null
  br i1 %492, label %495, label %493

493:                                              ; preds = %489
  %494 = load i32, ptr %491, align 8, !tbaa !74
  br label %495

495:                                              ; preds = %493, %489
  %496 = phi i32 [ %494, %493 ], [ 0, %489 ]
  %497 = icmp eq i32 %496, %490
  br i1 %497, label %502, label %498

498:                                              ; preds = %495
  %499 = zext i32 %490 to i64
  %500 = getelementptr inbounds %struct.VEC_edge_base, ptr %491, i64 0, i32 2, i64 %499
  %501 = load ptr, ptr %500, align 8, !tbaa !35
  br label %502

502:                                              ; preds = %498, %495
  %503 = phi ptr [ %501, %498 ], [ null, %495 ]
  br i1 %497, label %515, label %504

504:                                              ; preds = %502
  tail call void @add_phi_arg(ptr noundef %485, ptr noundef %285, ptr noundef %503, i32 noundef 0) #18
  %505 = load ptr, ptr %438, align 8, !tbaa !35
  %506 = icmp eq ptr %505, null
  br i1 %506, label %509, label %507

507:                                              ; preds = %504
  %508 = load i32, ptr %505, align 8, !tbaa !74
  br label %509

509:                                              ; preds = %507, %504
  %510 = phi i32 [ %508, %507 ], [ 0, %504 ]
  %511 = icmp ult i32 %490, %510
  br i1 %511, label %513, label %512

512:                                              ; preds = %509
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 738, ptr noundef nonnull @.str.2) #18
  br label %513

513:                                              ; preds = %512, %509
  %514 = add i32 %490, 1
  br label %489, !llvm.loop !110

515:                                              ; preds = %502, %482
  %516 = lshr i64 %424, 1
  %517 = add i32 %425, 1
  br label %343, !llvm.loop !111

518:                                              ; preds = %423
  %519 = lshr i64 %268, 1
  %520 = add i32 %270, 1
  br label %212, !llvm.loop !112

521:                                              ; preds = %275, %521
  %522 = phi i64 [ 0, %275 ], [ %525, %521 ]
  %523 = getelementptr inbounds ptr, ptr %94, i64 %522
  %524 = load ptr, ptr %523, align 8, !tbaa !35
  tail call void @bitmap_obstack_free(ptr noundef %524) #18
  store ptr null, ptr %523, align 8, !tbaa !35
  %525 = add nuw nsw i64 %522, 1
  %526 = icmp eq i64 %525, %276
  br i1 %526, label %527, label %521, !llvm.loop !113

527:                                              ; preds = %521, %273
  tail call void @free(ptr noundef %94)
  tail call void @bitmap_obstack_free(ptr noundef %15) #18
  tail call void @bitmap_obstack_free(ptr noundef nonnull %82) #18
  tail call void @update_ssa(i32 noundef 2048) #18
  br label %528

528:                                              ; preds = %2, %11, %527
  ret void
}

declare ptr @bitmap_obstack_alloc_stat(ptr noundef) local_unnamed_addr #3

declare void @update_ssa(i32 noundef) local_unnamed_addr #3

declare ptr @xcalloc(i64 noundef, i64 noundef) local_unnamed_addr #3

declare void @bitmap_obstack_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #11

; Function Attrs: cold nounwind uwtable
define dso_local void @verify_loop_closed_ssa() local_unnamed_addr #9 !prof !34 {
  %1 = alloca %struct.gimple_stmt_iterator, align 8
  %2 = load ptr, ptr @cfun, align 8, !tbaa !35
  %3 = getelementptr inbounds %struct.function, ptr %2, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !59
  %5 = icmp eq ptr %4, null
  br i1 %5, label %147, label %6

6:                                                ; preds = %0
  %7 = getelementptr inbounds %struct.loops, ptr %4, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !63
  %9 = icmp eq ptr %8, null
  br i1 %9, label %147, label %10

10:                                               ; preds = %6
  %11 = load i32, ptr %8, align 8, !tbaa !65
  %12 = icmp ult i32 %11, 2
  br i1 %12, label %147, label %13

13:                                               ; preds = %10
  tail call void @verify_ssa(i8 noundef zeroext 0) #18
  %14 = load ptr, ptr @cfun, align 8, !tbaa !35
  %15 = getelementptr inbounds %struct.function, ptr %14, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !68
  %17 = load ptr, ptr %16, align 8, !tbaa !69
  %18 = getelementptr inbounds %struct.basic_block_def, ptr %17, i64 0, i32 6
  %19 = load ptr, ptr %18, align 8, !tbaa !71
  %20 = getelementptr inbounds %struct.control_flow_graph, ptr %16, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !73
  %22 = icmp eq ptr %19, %21
  br i1 %22, label %147, label %32

23:                                               ; preds = %143, %101
  %24 = getelementptr inbounds %struct.basic_block_def, ptr %33, i64 0, i32 6
  %25 = load ptr, ptr %24, align 8, !tbaa !71
  %26 = load ptr, ptr @cfun, align 8, !tbaa !35
  %27 = getelementptr inbounds %struct.function, ptr %26, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !68
  %29 = getelementptr inbounds %struct.control_flow_graph, ptr %28, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !73
  %31 = icmp eq ptr %25, %30
  br i1 %31, label %147, label %32, !llvm.loop !114

32:                                               ; preds = %13, %23
  %33 = phi ptr [ %25, %23 ], [ %19, %13 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %1) #18
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %1, ptr noundef %33) #18
  %34 = load ptr, ptr %1, align 8, !tbaa.struct !115
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %1) #18
  %35 = icmp eq ptr %34, null
  br i1 %35, label %85, label %36

36:                                               ; preds = %32
  %37 = icmp eq ptr %33, null
  br label %38

38:                                               ; preds = %36, %81
  %39 = phi ptr [ %34, %36 ], [ %83, %81 ]
  %40 = load ptr, ptr %39, align 8, !tbaa !116
  %41 = getelementptr inbounds %struct.gimple_statement_phi, ptr %40, i64 0, i32 1
  br label %42

42:                                               ; preds = %79, %38
  %43 = phi i32 [ 0, %38 ], [ %80, %79 ]
  br i1 %37, label %44, label %45

44:                                               ; preds = %42
  call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 687, ptr noundef nonnull @.str.2) #18
  br label %45

45:                                               ; preds = %44, %42
  %46 = load ptr, ptr %33, align 8, !tbaa !35
  %47 = icmp eq ptr %46, null
  br i1 %47, label %50, label %48

48:                                               ; preds = %45
  %49 = load i32, ptr %46, align 8, !tbaa !74
  br label %50

50:                                               ; preds = %48, %45
  %51 = phi i32 [ %49, %48 ], [ 0, %45 ]
  %52 = icmp eq i32 %51, %43
  br i1 %52, label %57, label %53

53:                                               ; preds = %50
  %54 = zext i32 %43 to i64
  %55 = getelementptr inbounds %struct.VEC_edge_base, ptr %46, i64 0, i32 2, i64 %54
  %56 = load ptr, ptr %55, align 8, !tbaa !35
  br label %57

57:                                               ; preds = %50, %53
  %58 = phi ptr [ %56, %53 ], [ null, %50 ]
  br i1 %52, label %81, label %59

59:                                               ; preds = %57
  %60 = load ptr, ptr %58, align 8, !tbaa !76
  %61 = getelementptr inbounds %struct.edge_def, ptr %58, i64 0, i32 6
  %62 = load i32, ptr %61, align 4, !tbaa !118
  %63 = load i32, ptr %41, align 8, !tbaa !46
  %64 = icmp ult i32 %63, %62
  br i1 %64, label %65, label %66

65:                                               ; preds = %59
  call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 3103, ptr noundef nonnull @.str.2) #18
  br label %66

66:                                               ; preds = %59, %65
  %67 = zext i32 %62 to i64
  %68 = getelementptr inbounds %struct.gimple_statement_phi, ptr %40, i64 0, i32 4, i64 %67, i32 0, i32 3
  %69 = load ptr, ptr %68, align 8, !tbaa !119
  %70 = load ptr, ptr %69, align 8, !tbaa !35
  call fastcc void @check_loop_closed_ssa_use(ptr noundef %60, ptr noundef %70)
  %71 = load ptr, ptr %33, align 8, !tbaa !35
  %72 = icmp eq ptr %71, null
  br i1 %72, label %75, label %73

73:                                               ; preds = %66
  %74 = load i32, ptr %71, align 8, !tbaa !74
  br label %75

75:                                               ; preds = %73, %66
  %76 = phi i32 [ %74, %73 ], [ 0, %66 ]
  %77 = icmp ult i32 %43, %76
  br i1 %77, label %79, label %78

78:                                               ; preds = %75
  call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 738, ptr noundef nonnull @.str.2) #18
  br label %79

79:                                               ; preds = %75, %78
  %80 = add i32 %43, 1
  br label %42, !llvm.loop !121

81:                                               ; preds = %57
  %82 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %39, i64 0, i32 2
  %83 = load ptr, ptr %82, align 8, !tbaa !122
  %84 = icmp eq ptr %83, null
  br i1 %84, label %85, label %38, !llvm.loop !123

85:                                               ; preds = %81, %32
  %86 = getelementptr inbounds %struct.basic_block_def, ptr %33, i64 0, i32 13
  %87 = load i32, ptr %86, align 8, !tbaa !124, !noalias !125
  %88 = and i32 %87, 512
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %96

90:                                               ; preds = %85
  %91 = getelementptr inbounds %struct.basic_block_def, ptr %33, i64 0, i32 7
  %92 = load ptr, ptr %91, align 8, !tbaa !46, !noalias !125
  %93 = icmp eq ptr %92, null
  br i1 %93, label %96, label %94

94:                                               ; preds = %90
  %95 = load ptr, ptr %92, align 8, !tbaa !128, !noalias !125
  br label %96

96:                                               ; preds = %94, %90, %85
  %97 = phi ptr [ %95, %94 ], [ null, %90 ], [ null, %85 ]
  %98 = icmp eq ptr %97, null
  br i1 %98, label %101, label %99

99:                                               ; preds = %96
  %100 = load ptr, ptr %97, align 8, !tbaa !130, !noalias !125
  br label %101

101:                                              ; preds = %96, %99
  %102 = phi ptr [ %100, %99 ], [ null, %96 ]
  %103 = icmp eq ptr %102, null
  br i1 %103, label %23, label %104

104:                                              ; preds = %101, %143
  %105 = phi ptr [ %145, %143 ], [ %102, %101 ]
  %106 = load ptr, ptr %105, align 8, !tbaa !116
  %107 = load i32, ptr %106, align 8
  %108 = and i32 %107, 255
  %109 = icmp eq i32 %108, 2
  br i1 %109, label %143, label %110

110:                                              ; preds = %104
  %111 = add nsw i32 %108, -10
  %112 = icmp ult i32 %111, -9
  br i1 %112, label %116, label %113

113:                                              ; preds = %110
  %114 = getelementptr inbounds %struct.gimple_statement_with_ops_base, ptr %106, i64 0, i32 2
  %115 = load ptr, ptr %114, align 8, !tbaa !46
  br label %116

116:                                              ; preds = %113, %110
  %117 = phi ptr [ %115, %113 ], [ null, %110 ]
  %118 = icmp eq ptr %117, null
  br i1 %118, label %124, label %119

119:                                              ; preds = %116
  %120 = getelementptr inbounds %struct.use_optype_d, ptr %117, i64 0, i32 1, i32 3
  %121 = load ptr, ptr %120, align 8, !tbaa !119
  %122 = load ptr, ptr %121, align 8, !tbaa !35
  %123 = load ptr, ptr %117, align 8, !tbaa !132
  br label %124

124:                                              ; preds = %119, %116
  %125 = phi ptr [ %123, %119 ], [ %117, %116 ]
  %126 = phi i8 [ 0, %119 ], [ 1, %116 ]
  %127 = phi ptr [ %122, %119 ], [ null, %116 ]
  br i1 %118, label %143, label %128

128:                                              ; preds = %124, %138
  %129 = phi ptr [ %141, %138 ], [ %127, %124 ]
  %130 = phi i8 [ %140, %138 ], [ %126, %124 ]
  %131 = phi ptr [ %139, %138 ], [ %125, %124 ]
  call fastcc void @check_loop_closed_ssa_use(ptr noundef %33, ptr noundef %129)
  %132 = icmp eq ptr %131, null
  br i1 %132, label %138, label %133

133:                                              ; preds = %128
  %134 = getelementptr inbounds %struct.use_optype_d, ptr %131, i64 0, i32 1, i32 3
  %135 = load ptr, ptr %134, align 8, !tbaa !119
  %136 = load ptr, ptr %135, align 8, !tbaa !35
  %137 = load ptr, ptr %131, align 8, !tbaa !132
  br label %138

138:                                              ; preds = %128, %133
  %139 = phi ptr [ %137, %133 ], [ %131, %128 ]
  %140 = phi i8 [ %130, %133 ], [ 1, %128 ]
  %141 = phi ptr [ %136, %133 ], [ null, %128 ]
  %142 = icmp eq i8 %140, 0
  br i1 %142, label %128, label %143, !llvm.loop !134

143:                                              ; preds = %138, %124, %104
  %144 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %105, i64 0, i32 2
  %145 = load ptr, ptr %144, align 8, !tbaa !122
  %146 = icmp eq ptr %145, null
  br i1 %146, label %23, label %104, !llvm.loop !135

147:                                              ; preds = %23, %0, %6, %13, %10
  ret void
}

declare void @verify_ssa(i8 noundef zeroext) local_unnamed_addr #3

declare void @gsi_start_phis(ptr dead_on_unwind writable sret(%struct.gimple_stmt_iterator) align 8, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #12

; Function Attrs: cold nounwind uwtable
define internal fastcc void @check_loop_closed_ssa_use(ptr noundef %0, ptr noundef %1) unnamed_addr #9 !prof !34 {
  %3 = load i64, ptr %1, align 8
  %4 = and i64 %3, 65535
  %5 = icmp eq i64 %4, 141
  br i1 %5, label %6, label %21

6:                                                ; preds = %2
  %7 = tail call zeroext i8 @is_gimple_reg(ptr noundef nonnull %1) #18
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %21, label %9

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !46
  %12 = getelementptr inbounds %struct.gimple_statement_base, ptr %11, i64 0, i32 4
  %13 = load ptr, ptr %12, align 8, !tbaa !46
  %14 = icmp eq ptr %13, null
  br i1 %14, label %21, label %15

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.basic_block_def, ptr %13, i64 0, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !78
  %18 = tail call zeroext i8 @flow_bb_inside_loop_p(ptr noundef %17, ptr noundef %0) #18
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %15
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 425, ptr noundef nonnull @.str.2) #18
  br label %21

21:                                               ; preds = %20, %15, %9, %2, %6
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local ptr @split_loop_exit_edge(ptr noundef %0) local_unnamed_addr #9 !prof !34 {
  %2 = alloca %struct.gimple_stmt_iterator, align 8
  %3 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !108
  %5 = tail call ptr @split_edge(ptr noundef %0) #18
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #18
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %2, ptr noundef %4) #18
  %6 = load ptr, ptr %2, align 8, !tbaa.struct !115
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #18
  %7 = icmp eq ptr %6, null
  br i1 %7, label %86, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.basic_block_def, ptr %5, i64 0, i32 1
  br label %10

10:                                               ; preds = %8, %82
  %11 = phi ptr [ %6, %8 ], [ %84, %82 ]
  %12 = load ptr, ptr %11, align 8, !tbaa !116
  %13 = load ptr, ptr %9, align 8, !tbaa !136
  %14 = icmp eq ptr %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %10
  %16 = load i32, ptr %13, align 8, !tbaa !74
  %17 = icmp eq i32 %16, 1
  br i1 %17, label %19, label %18

18:                                               ; preds = %10, %15
  call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 645, ptr noundef nonnull @.str.2) #18
  br label %19

19:                                               ; preds = %15, %18
  %20 = load ptr, ptr %9, align 8, !tbaa !136
  %21 = getelementptr inbounds %struct.VEC_edge_base, ptr %20, i64 0, i32 2, i64 0
  %22 = load ptr, ptr %21, align 8, !tbaa !35
  %23 = getelementptr inbounds %struct.edge_def, ptr %22, i64 0, i32 6
  %24 = load i32, ptr %23, align 4, !tbaa !118
  %25 = getelementptr inbounds %struct.gimple_statement_phi, ptr %12, i64 0, i32 1
  %26 = load i32, ptr %25, align 8, !tbaa !46
  %27 = icmp ult i32 %26, %24
  br i1 %27, label %28, label %29

28:                                               ; preds = %19
  call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 3103, ptr noundef nonnull @.str.2) #18
  br label %29

29:                                               ; preds = %19, %28
  %30 = zext i32 %24 to i64
  %31 = getelementptr inbounds %struct.gimple_statement_phi, ptr %12, i64 0, i32 4, i64 %30
  %32 = load ptr, ptr %9, align 8, !tbaa !136
  %33 = icmp eq ptr %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %29
  %35 = load i32, ptr %32, align 8, !tbaa !74
  %36 = icmp eq i32 %35, 1
  br i1 %36, label %38, label %37

37:                                               ; preds = %29, %34
  call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 645, ptr noundef nonnull @.str.2) #18
  br label %38

38:                                               ; preds = %34, %37
  %39 = load ptr, ptr %9, align 8, !tbaa !136
  %40 = getelementptr inbounds %struct.VEC_edge_base, ptr %39, i64 0, i32 2, i64 0
  %41 = load ptr, ptr %40, align 8, !tbaa !35
  %42 = getelementptr inbounds %struct.edge_def, ptr %41, i64 0, i32 6
  %43 = load i32, ptr %42, align 4, !tbaa !118
  %44 = load i32, ptr %25, align 8, !tbaa !46
  %45 = icmp ult i32 %44, %43
  br i1 %45, label %46, label %47

46:                                               ; preds = %38
  call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 3103, ptr noundef nonnull @.str.2) #18
  br label %47

47:                                               ; preds = %38, %46
  %48 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %31, i64 0, i32 3
  %49 = load ptr, ptr %48, align 8, !tbaa !119
  %50 = load ptr, ptr %49, align 8, !tbaa !35
  %51 = load i64, ptr %50, align 8
  %52 = and i64 %51, 65535
  %53 = icmp eq i64 %52, 141
  br i1 %53, label %54, label %82

54:                                               ; preds = %47
  %55 = zext i32 %43 to i64
  %56 = getelementptr inbounds %struct.gimple_statement_phi, ptr %12, i64 0, i32 4, i64 %55, i32 2
  %57 = load i32, ptr %56, align 8, !tbaa !137
  %58 = call ptr @duplicate_ssa_name(ptr noundef nonnull %50, ptr noundef null) #18
  %59 = call ptr @create_phi_node(ptr noundef %58, ptr noundef %5) #18
  %60 = getelementptr inbounds %struct.tree_ssa_name, ptr %58, i64 0, i32 2
  store ptr %59, ptr %60, align 8, !tbaa !46
  call void @add_phi_arg(ptr noundef %59, ptr noundef nonnull %50, ptr noundef %0, i32 noundef %57) #18
  %61 = load ptr, ptr %31, align 8, !tbaa !139
  %62 = icmp eq ptr %61, null
  br i1 %62, label %68, label %63

63:                                               ; preds = %54
  %64 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %31, i64 0, i32 1
  %65 = load ptr, ptr %64, align 8, !tbaa !140
  %66 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %61, i64 0, i32 1
  store ptr %65, ptr %66, align 8, !tbaa !140
  %67 = load ptr, ptr %64, align 8, !tbaa !140
  store ptr %61, ptr %67, align 8, !tbaa !139
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %31, i8 0, i64 16, i1 false)
  br label %68

68:                                               ; preds = %63, %54
  %69 = load ptr, ptr %48, align 8, !tbaa !119
  store ptr %58, ptr %69, align 8, !tbaa !35
  %70 = icmp eq ptr %58, null
  br i1 %70, label %75, label %71

71:                                               ; preds = %68
  %72 = load i64, ptr %58, align 8
  %73 = and i64 %72, 65535
  %74 = icmp eq i64 %73, 141
  br i1 %74, label %76, label %75

75:                                               ; preds = %71, %68
  store ptr null, ptr %31, align 8, !tbaa !139
  br label %82

76:                                               ; preds = %71
  %77 = getelementptr inbounds %struct.tree_ssa_name, ptr %58, i64 0, i32 5
  store ptr %77, ptr %31, align 8, !tbaa !139
  %78 = getelementptr inbounds %struct.tree_ssa_name, ptr %58, i64 0, i32 5, i32 1
  %79 = load ptr, ptr %78, align 8, !tbaa !140
  %80 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %31, i64 0, i32 1
  store ptr %79, ptr %80, align 8, !tbaa !140
  %81 = load ptr, ptr %78, align 8, !tbaa !140
  store ptr %31, ptr %81, align 8, !tbaa !139
  store ptr %31, ptr %78, align 8, !tbaa !140
  br label %82

82:                                               ; preds = %76, %75, %47
  %83 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %11, i64 0, i32 2
  %84 = load ptr, ptr %83, align 8, !tbaa !122
  %85 = icmp eq ptr %84, null
  br i1 %85, label %86, label %10, !llvm.loop !141

86:                                               ; preds = %82, %1
  ret ptr %5
}

declare ptr @split_edge(ptr noundef) local_unnamed_addr #3

declare ptr @duplicate_ssa_name(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local ptr @ip_end_pos(ptr nocapture noundef readonly %0) local_unnamed_addr #13 !prof !34 {
  %2 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !142
  ret ptr %3
}

; Function Attrs: cold nounwind uwtable
define dso_local ptr @ip_normal_pos(ptr noundef %0) local_unnamed_addr #9 !prof !34 {
  %2 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !142
  %4 = load ptr, ptr %3, align 8, !tbaa !143
  %5 = icmp eq ptr %4, null
  br i1 %5, label %44, label %6

6:                                                ; preds = %1
  %7 = load i32, ptr %4, align 8, !tbaa !74
  %8 = icmp eq i32 %7, 1
  br i1 %8, label %9, label %44

9:                                                ; preds = %6
  br i1 %5, label %13, label %10

10:                                               ; preds = %9
  %11 = load i32, ptr %4, align 8, !tbaa !74
  %12 = icmp eq i32 %11, 1
  br i1 %12, label %14, label %13

13:                                               ; preds = %10, %9
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 655, ptr noundef nonnull @.str.2) #18
  br label %14

14:                                               ; preds = %10, %13
  %15 = load ptr, ptr %3, align 8, !tbaa !143
  %16 = getelementptr inbounds %struct.VEC_edge_base, ptr %15, i64 0, i32 2, i64 0
  %17 = load ptr, ptr %16, align 8, !tbaa !35
  %18 = load ptr, ptr %17, align 8, !tbaa !76
  %19 = tail call ptr @last_stmt(ptr noundef %18) #18
  %20 = icmp eq ptr %19, null
  br i1 %20, label %44, label %21

21:                                               ; preds = %14
  %22 = load i32, ptr %19, align 8
  %23 = and i32 %22, 255
  %24 = icmp eq i32 %23, 1
  br i1 %24, label %25, label %44

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.basic_block_def, ptr %18, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !136
  %28 = getelementptr inbounds %struct.VEC_edge_base, ptr %27, i64 0, i32 2, i64 0
  %29 = load ptr, ptr %28, align 8, !tbaa !35
  %30 = getelementptr inbounds %struct.edge_def, ptr %29, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !108
  %32 = load ptr, ptr %2, align 8, !tbaa !142
  %33 = icmp eq ptr %31, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %25
  %35 = getelementptr inbounds %struct.VEC_edge_base, ptr %27, i64 0, i32 2, i64 1
  %36 = load ptr, ptr %35, align 8, !tbaa !35
  br label %37

37:                                               ; preds = %34, %25
  %38 = phi ptr [ %36, %34 ], [ %29, %25 ]
  %39 = getelementptr inbounds %struct.edge_def, ptr %38, i64 0, i32 1
  %40 = load ptr, ptr %39, align 8, !tbaa !108
  %41 = tail call zeroext i8 @flow_bb_inside_loop_p(ptr noundef %0, ptr noundef %40) #18
  %42 = icmp eq i8 %41, 0
  %43 = select i1 %42, ptr %18, ptr null
  br label %44

44:                                               ; preds = %1, %37, %14, %21, %6
  %45 = phi ptr [ null, %6 ], [ null, %21 ], [ null, %14 ], [ %43, %37 ], [ null, %1 ]
  ret ptr %45
}

declare ptr @last_stmt(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @flow_bb_inside_loop_p(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @standard_iv_increment_position(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #9 !prof !34 {
  %4 = tail call ptr @ip_normal_pos(ptr noundef %0)
  %5 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !142
  %7 = tail call ptr @last_stmt(ptr noundef %6) #18
  %8 = icmp eq ptr %4, null
  br i1 %8, label %15, label %9

9:                                                ; preds = %3
  %10 = icmp eq ptr %7, null
  br i1 %10, label %29, label %11

11:                                               ; preds = %9
  %12 = load i32, ptr %7, align 8
  %13 = and i32 %12, 255
  %14 = icmp eq i32 %13, 4
  br i1 %14, label %29, label %15

15:                                               ; preds = %11, %3
  %16 = getelementptr inbounds %struct.basic_block_def, ptr %6, i64 0, i32 13
  %17 = load i32, ptr %16, align 8, !tbaa !124, !noalias !144
  %18 = and i32 %17, 512
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.basic_block_def, ptr %6, i64 0, i32 7
  %22 = load ptr, ptr %21, align 8, !tbaa !46, !noalias !144
  %23 = icmp eq ptr %22, null
  br i1 %23, label %26, label %24

24:                                               ; preds = %20
  %25 = load ptr, ptr %22, align 8, !tbaa !128, !noalias !144
  br label %26

26:                                               ; preds = %24, %20, %15
  %27 = phi ptr [ %25, %24 ], [ null, %20 ], [ null, %15 ]
  %28 = icmp eq ptr %27, null
  br i1 %28, label %49, label %43

29:                                               ; preds = %11, %9
  %30 = getelementptr inbounds %struct.basic_block_def, ptr %4, i64 0, i32 13
  %31 = load i32, ptr %30, align 8, !tbaa !124, !noalias !147
  %32 = and i32 %31, 512
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.basic_block_def, ptr %4, i64 0, i32 7
  %36 = load ptr, ptr %35, align 8, !tbaa !46, !noalias !147
  %37 = icmp eq ptr %36, null
  br i1 %37, label %40, label %38

38:                                               ; preds = %34
  %39 = load ptr, ptr %36, align 8, !tbaa !128, !noalias !147
  br label %40

40:                                               ; preds = %38, %34, %29
  %41 = phi ptr [ %39, %38 ], [ null, %34 ], [ null, %29 ]
  %42 = icmp eq ptr %41, null
  br i1 %42, label %49, label %43

43:                                               ; preds = %40, %26
  %44 = phi ptr [ %27, %26 ], [ %41, %40 ]
  %45 = phi ptr [ %6, %26 ], [ %4, %40 ]
  %46 = phi i8 [ 1, %26 ], [ 0, %40 ]
  %47 = getelementptr inbounds %struct.gimple_seq_d, ptr %44, i64 0, i32 1
  %48 = load ptr, ptr %47, align 8, !tbaa !150, !noalias !151
  br label %49

49:                                               ; preds = %43, %40, %26
  %50 = phi ptr [ null, %26 ], [ null, %40 ], [ %48, %43 ]
  %51 = phi ptr [ %27, %26 ], [ %41, %40 ], [ %44, %43 ]
  %52 = phi ptr [ %6, %26 ], [ %4, %40 ], [ %45, %43 ]
  %53 = phi i8 [ 1, %26 ], [ 0, %40 ], [ %46, %43 ]
  store ptr %50, ptr %1, align 8
  %54 = getelementptr inbounds i8, ptr %1, i64 8
  store ptr %51, ptr %54, align 8
  %55 = getelementptr inbounds i8, ptr %1, i64 16
  store ptr %52, ptr %55, align 8
  store i8 %53, ptr %2, align 1, !tbaa !46
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local noundef zeroext i8 @gimple_duplicate_loop_to_header_edge(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, i32 noundef %6) local_unnamed_addr #9 !prof !34 {
  %8 = load ptr, ptr @cfun, align 8, !tbaa !35
  %9 = getelementptr inbounds %struct.function, ptr %8, i64 0, i32 4
  %10 = load ptr, ptr %9, align 8, !tbaa !59
  %11 = load i32, ptr %10, align 8, !tbaa !61
  %12 = and i32 %11, 3
  %13 = icmp eq i32 %12, 3
  br i1 %13, label %14, label %85

14:                                               ; preds = %7
  %15 = getelementptr inbounds %struct.function, ptr %8, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !68
  %17 = getelementptr inbounds %struct.control_flow_graph, ptr %16, i64 0, i32 5
  %18 = load i32, ptr %17, align 8, !tbaa !152
  %19 = tail call zeroext i8 @duplicate_loop_to_header_edge(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, i32 noundef %6) #18
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %85, label %21

21:                                               ; preds = %14
  tail call void @flush_pending_stmts(ptr noundef %1) #18
  %22 = load ptr, ptr @cfun, align 8, !tbaa !35
  %23 = getelementptr inbounds %struct.function, ptr %22, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !68
  %25 = getelementptr inbounds %struct.control_flow_graph, ptr %24, i64 0, i32 5
  %26 = load i32, ptr %25, align 8, !tbaa !152
  %27 = icmp ult i32 %18, %26
  br i1 %27, label %28, label %33

28:                                               ; preds = %21
  %29 = getelementptr inbounds %struct.control_flow_graph, ptr %24, i64 0, i32 2
  %30 = load ptr, ptr %29, align 8, !tbaa !98
  %31 = zext i32 %18 to i64
  %32 = zext i32 %26 to i64
  br label %42

33:                                               ; preds = %42, %21
  %34 = load ptr, ptr @cfun, align 8, !tbaa !35
  %35 = getelementptr inbounds %struct.function, ptr %34, i64 0, i32 1
  %36 = load ptr, ptr %35, align 8, !tbaa !68
  %37 = getelementptr inbounds %struct.control_flow_graph, ptr %36, i64 0, i32 5
  %38 = load i32, ptr %37, align 8, !tbaa !152
  %39 = icmp ult i32 %18, %38
  br i1 %39, label %40, label %51

40:                                               ; preds = %33
  %41 = zext i32 %18 to i64
  br label %60

42:                                               ; preds = %28, %42
  %43 = phi i64 [ %31, %28 ], [ %49, %42 ]
  %44 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %30, i64 0, i32 2, i64 %43
  %45 = load ptr, ptr %44, align 8, !tbaa !35
  %46 = getelementptr inbounds %struct.basic_block_def, ptr %45, i64 0, i32 13
  %47 = load i32, ptr %46, align 8, !tbaa !124
  %48 = or i32 %47, 128
  store i32 %48, ptr %46, align 8, !tbaa !124
  %49 = add nuw nsw i64 %43, 1
  %50 = icmp eq i64 %49, %32
  br i1 %50, label %33, label %42, !llvm.loop !153

51:                                               ; preds = %60, %33
  %52 = phi ptr [ %36, %33 ], [ %70, %60 ]
  %53 = phi i32 [ %38, %33 ], [ %72, %60 ]
  %54 = icmp ult i32 %18, %53
  br i1 %54, label %55, label %84

55:                                               ; preds = %51
  %56 = getelementptr inbounds %struct.control_flow_graph, ptr %52, i64 0, i32 2
  %57 = load ptr, ptr %56, align 8, !tbaa !98
  %58 = zext i32 %18 to i64
  %59 = zext i32 %53 to i64
  br label %75

60:                                               ; preds = %40, %60
  %61 = phi i64 [ %41, %40 ], [ %67, %60 ]
  %62 = phi ptr [ %36, %40 ], [ %70, %60 ]
  %63 = getelementptr inbounds %struct.control_flow_graph, ptr %62, i64 0, i32 2
  %64 = load ptr, ptr %63, align 8, !tbaa !98
  %65 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %64, i64 0, i32 2, i64 %61
  %66 = load ptr, ptr %65, align 8, !tbaa !35
  tail call void @add_phi_args_after_copy_bb(ptr noundef %66) #18
  %67 = add nuw nsw i64 %61, 1
  %68 = load ptr, ptr @cfun, align 8, !tbaa !35
  %69 = getelementptr inbounds %struct.function, ptr %68, i64 0, i32 1
  %70 = load ptr, ptr %69, align 8, !tbaa !68
  %71 = getelementptr inbounds %struct.control_flow_graph, ptr %70, i64 0, i32 5
  %72 = load i32, ptr %71, align 8, !tbaa !152
  %73 = zext i32 %72 to i64
  %74 = icmp ult i64 %67, %73
  br i1 %74, label %60, label %51, !llvm.loop !154

75:                                               ; preds = %55, %75
  %76 = phi i64 [ %58, %55 ], [ %82, %75 ]
  %77 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %57, i64 0, i32 2, i64 %76
  %78 = load ptr, ptr %77, align 8, !tbaa !35
  %79 = getelementptr inbounds %struct.basic_block_def, ptr %78, i64 0, i32 13
  %80 = load i32, ptr %79, align 8, !tbaa !124
  %81 = and i32 %80, -129
  store i32 %81, ptr %79, align 8, !tbaa !124
  %82 = add nuw nsw i64 %76, 1
  %83 = icmp eq i64 %82, %59
  br i1 %83, label %84, label %75, !llvm.loop !155

84:                                               ; preds = %75, %51
  tail call void @scev_reset() #18
  br label %85

85:                                               ; preds = %14, %7, %84
  %86 = phi i8 [ 1, %84 ], [ 0, %7 ], [ 0, %14 ]
  ret i8 %86
}

declare zeroext i8 @duplicate_loop_to_header_edge(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @flush_pending_stmts(ptr noundef) local_unnamed_addr #3

declare void @scev_reset() local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local zeroext i8 @can_unroll_loop_p(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #9 !prof !34 {
  %4 = tail call ptr @single_dom_exit(ptr noundef %0) #18
  %5 = icmp eq ptr %4, null
  br i1 %5, label %44, label %6

6:                                                ; preds = %3
  %7 = tail call zeroext i8 @number_of_iterations_exit(ptr noundef %0, ptr noundef nonnull %4, ptr noundef %2, i8 noundef zeroext 0) #18
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %44, label %9

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.tree_niter_desc, ptr %2, i64 0, i32 6
  %11 = load i32, ptr %10, align 8, !tbaa !156
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %44, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.tree_niter_desc, ptr %2, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !159
  %16 = tail call zeroext i8 @contains_abnormal_ssa_name_p(ptr noundef %15) #18
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %44

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.tree_niter_desc, ptr %2, i64 0, i32 4
  %20 = load ptr, ptr %19, align 8, !tbaa !160
  %21 = tail call zeroext i8 @contains_abnormal_ssa_name_p(ptr noundef %20) #18
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %23, label %44

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.tree_niter_desc, ptr %2, i64 0, i32 4, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !161
  %26 = tail call zeroext i8 @contains_abnormal_ssa_name_p(ptr noundef %25) #18
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %28, label %44

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.tree_niter_desc, ptr %2, i64 0, i32 5
  %30 = load ptr, ptr %29, align 8, !tbaa !162
  %31 = tail call zeroext i8 @contains_abnormal_ssa_name_p(ptr noundef %30) #18
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %33, label %44

33:                                               ; preds = %28
  %34 = tail call zeroext i8 @can_duplicate_loop_p(ptr noundef %0) #18
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %44, label %36

36:                                               ; preds = %33
  %37 = tail call i32 @tree_num_loop_insns(ptr noundef %0, ptr noundef nonnull @eni_size_weights) #18
  %38 = mul i32 %37, %1
  %39 = load ptr, ptr @compiler_params, align 8, !tbaa !35
  %40 = getelementptr inbounds %struct.param_info, ptr %39, i64 26, i32 1
  %41 = load i32, ptr %40, align 8, !tbaa !163
  %42 = icmp ule i32 %38, %41
  %43 = zext i1 %42 to i8
  br label %44

44:                                               ; preds = %36, %33, %6, %9, %13, %18, %23, %28, %3
  %45 = phi i8 [ 0, %3 ], [ 0, %28 ], [ 0, %23 ], [ 0, %18 ], [ 0, %13 ], [ 0, %9 ], [ 0, %6 ], [ 0, %33 ], [ %43, %36 ]
  ret i8 %45
}

declare ptr @single_dom_exit(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @number_of_iterations_exit(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

declare zeroext i8 @contains_abnormal_ssa_name_p(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @can_duplicate_loop_p(ptr noundef) local_unnamed_addr #3

declare i32 @tree_num_loop_insns(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @tree_transform_and_unroll_loop(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3, ptr noundef readonly %4, ptr noundef %5) local_unnamed_addr #9 !prof !34 {
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca %struct.gimple_stmt_iterator, align 8
  %11 = alloca ptr, align 8
  %12 = alloca %struct.gimple_stmt_iterator, align 8
  %13 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #18
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %10) #18
  %14 = tail call ptr @loop_preheader_edge(ptr noundef %0) #18
  %15 = getelementptr inbounds %struct.edge_def, ptr %14, i64 0, i32 7
  %16 = load i32, ptr %15, align 8, !tbaa !165
  %17 = and i32 %16, 128
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #18
  store ptr null, ptr %11, align 8, !tbaa !35
  %18 = tail call i32 @expected_loop_iterations(ptr noundef %0) #18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #18
  %19 = getelementptr inbounds %struct.tree_niter_desc, ptr %3, i64 0, i32 4
  %20 = load ptr, ptr %19, align 8, !tbaa !160
  %21 = getelementptr inbounds %struct.tree_niter_desc, ptr %3, i64 0, i32 4, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !161
  %23 = getelementptr inbounds %struct.tree_niter_desc, ptr %3, i64 0, i32 5
  %24 = load ptr, ptr %23, align 8, !tbaa !162
  %25 = getelementptr inbounds %struct.tree_common, ptr %22, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !46
  %27 = tail call ptr @lower_bound_in_type(ptr noundef %26, ptr noundef %26) #18
  %28 = tail call ptr @upper_bound_in_type(ptr noundef %26, ptr noundef %26) #18
  %29 = getelementptr inbounds %struct.tree_niter_desc, ptr %3, i64 0, i32 6
  %30 = load i32, ptr %29, align 8, !tbaa !156
  %31 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 26), align 16, !tbaa !35
  %32 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %26, ptr noundef %20) #18
  %33 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %26, ptr noundef %24) #18
  switch i32 %30, label %47 [
    i32 0, label %34
    i32 102, label %35
    i32 97, label %39
    i32 99, label %43
  ]

34:                                               ; preds = %6
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 714, ptr noundef nonnull @.str.2) #18
  br label %47

35:                                               ; preds = %6
  %36 = tail call i32 @tree_int_cst_sign_bit(ptr noundef %22) #18
  %37 = icmp eq i32 %36, 0
  %38 = select i1 %37, i32 97, i32 99
  br label %48

39:                                               ; preds = %6
  %40 = tail call i32 @tree_int_cst_sign_bit(ptr noundef %22) #18
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %48, label %42

42:                                               ; preds = %39
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 729, ptr noundef nonnull @.str.2) #18
  br label %48

43:                                               ; preds = %6
  %44 = tail call i32 @tree_int_cst_sign_bit(ptr noundef %22) #18
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %43
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 733, ptr noundef nonnull @.str.2) #18
  br label %48

47:                                               ; preds = %34, %6
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 736, ptr noundef nonnull @.str.2) #18
  br label %48

48:                                               ; preds = %47, %46, %43, %42, %39, %35
  %49 = phi i32 [ 97, %42 ], [ 97, %39 ], [ 99, %43 ], [ 99, %46 ], [ %30, %47 ], [ %38, %35 ]
  %50 = getelementptr inbounds %struct.tree_niter_desc, ptr %3, i64 0, i32 1
  %51 = load ptr, ptr %50, align 8, !tbaa !159
  %52 = tail call i32 @integer_zerop(ptr noundef %51) #18
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %48
  %55 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !35
  %56 = load ptr, ptr %50, align 8, !tbaa !159
  %57 = tail call ptr @invert_truthvalue_loc(i32 noundef 0, ptr noundef %56) #18
  %58 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 93, ptr noundef %55, ptr noundef %57, ptr noundef %31) #18
  br label %59

59:                                               ; preds = %54, %48
  %60 = phi ptr [ %31, %48 ], [ %58, %54 ]
  %61 = zext i32 %1 to i64
  %62 = tail call ptr @build_int_cst_type(ptr noundef %26, i64 noundef %61) #18
  %63 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 65, ptr noundef %26, ptr noundef %22, ptr noundef %62) #18
  %64 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 64, ptr noundef %26, ptr noundef %63, ptr noundef %22) #18
  %65 = icmp eq i32 %49, 97
  %66 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !35
  %67 = select i1 %65, ptr %27, ptr %28
  %68 = select i1 %65, i32 100, i32 98
  %69 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 63, ptr noundef %26, ptr noundef %67, ptr noundef %64) #18
  %70 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef %68, ptr noundef %66, ptr noundef %33, ptr noundef %69) #18
  %71 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !35
  %72 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 93, ptr noundef %71, ptr noundef %70, ptr noundef %60) #18
  %73 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 64, ptr noundef %26, ptr noundef %33, ptr noundef %64) #18
  %74 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !35
  %75 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef %49, ptr noundef %74, ptr noundef %32, ptr noundef %73) #18
  %76 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !35
  %77 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 93, ptr noundef %76, ptr noundef %75, ptr noundef %72) #18
  %78 = tail call ptr @unshare_expr(ptr noundef %77) #18
  %79 = call ptr @force_gimple_operand(ptr noundef %78, ptr noundef nonnull %7, i8 noundef zeroext 0, ptr noundef null) #18
  %80 = load ptr, ptr %7, align 8, !tbaa !35
  %81 = icmp eq ptr %80, null
  br i1 %81, label %86, label %82

82:                                               ; preds = %59
  %83 = call ptr @loop_preheader_edge(ptr noundef %0) #18
  %84 = load ptr, ptr %7, align 8, !tbaa !35
  %85 = call ptr @gsi_insert_seq_on_edge_immediate(ptr noundef %83, ptr noundef %84) #18
  br label %86

86:                                               ; preds = %82, %59
  %87 = call zeroext i8 @is_gimple_condexpr(ptr noundef %79) #18
  %88 = icmp eq i8 %87, 0
  br i1 %88, label %89, label %97

89:                                               ; preds = %86
  %90 = call ptr @force_gimple_operand(ptr noundef %79, ptr noundef nonnull %7, i8 noundef zeroext 1, ptr noundef null) #18
  %91 = load ptr, ptr %7, align 8, !tbaa !35
  %92 = icmp eq ptr %91, null
  br i1 %92, label %97, label %93

93:                                               ; preds = %89
  %94 = call ptr @loop_preheader_edge(ptr noundef %0) #18
  %95 = load ptr, ptr %7, align 8, !tbaa !35
  %96 = call ptr @gsi_insert_seq_on_edge_immediate(ptr noundef %94, ptr noundef %95) #18
  br label %97

97:                                               ; preds = %93, %89, %86
  %98 = phi ptr [ %79, %86 ], [ %90, %93 ], [ %90, %89 ]
  %99 = call ptr @unshare_expr(ptr noundef %32) #18
  %100 = call ptr @force_gimple_operand(ptr noundef %99, ptr noundef nonnull %7, i8 noundef zeroext 1, ptr noundef null) #18
  %101 = load ptr, ptr %7, align 8, !tbaa !35
  %102 = icmp eq ptr %101, null
  br i1 %102, label %107, label %103

103:                                              ; preds = %97
  %104 = call ptr @loop_preheader_edge(ptr noundef %0) #18
  %105 = load ptr, ptr %7, align 8, !tbaa !35
  %106 = call ptr @gsi_insert_seq_on_edge_immediate(ptr noundef %104, ptr noundef %105) #18
  br label %107

107:                                              ; preds = %103, %97
  %108 = call ptr @unshare_expr(ptr noundef %73) #18
  %109 = call ptr @force_gimple_operand(ptr noundef %108, ptr noundef nonnull %7, i8 noundef zeroext 1, ptr noundef null) #18
  %110 = load ptr, ptr %7, align 8, !tbaa !35
  %111 = icmp eq ptr %110, null
  br i1 %111, label %116, label %112

112:                                              ; preds = %107
  %113 = call ptr @loop_preheader_edge(ptr noundef %0) #18
  %114 = load ptr, ptr %7, align 8, !tbaa !35
  %115 = call ptr @gsi_insert_seq_on_edge_immediate(ptr noundef %113, ptr noundef %114) #18
  br label %116

116:                                              ; preds = %107, %112
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #18
  %117 = call i32 @integer_nonzerop(ptr noundef %98) #18
  %118 = icmp eq i32 %117, 0
  %119 = select i1 %118, i32 9000, i32 10000
  %120 = call ptr @loop_version(ptr noundef %0, ptr noundef %98, ptr noundef null, i32 noundef %119, i32 noundef %119, i32 noundef 10000, i8 noundef zeroext 1) #18
  %121 = icmp eq ptr %120, null
  br i1 %121, label %122, label %123

122:                                              ; preds = %116
  call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 928, ptr noundef nonnull @.str.2) #18
  br label %123

123:                                              ; preds = %116, %122
  call void @update_ssa(i32 noundef 2048) #18
  %124 = udiv i32 %18, %1
  %125 = icmp ult i32 %124, 5
  %126 = call i32 @llvm.umin.i32(i32 %18, i32 5)
  %127 = select i1 %125, i32 %126, i32 %124
  %128 = call ptr @loop_preheader_edge(ptr noundef %120) #18
  %129 = load ptr, ptr %128, align 8, !tbaa !76
  %130 = load ptr, ptr %129, align 8, !tbaa !143
  %131 = icmp eq ptr %130, null
  br i1 %131, label %135, label %132

132:                                              ; preds = %123
  %133 = load i32, ptr %130, align 8, !tbaa !74
  %134 = icmp eq i32 %133, 1
  br i1 %134, label %136, label %135

135:                                              ; preds = %123, %132
  call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 655, ptr noundef nonnull @.str.2) #18
  br label %136

136:                                              ; preds = %132, %135
  %137 = load ptr, ptr %129, align 8, !tbaa !143
  %138 = getelementptr inbounds %struct.VEC_edge_base, ptr %137, i64 0, i32 2, i64 0
  %139 = load ptr, ptr %138, align 8, !tbaa !35
  %140 = call ptr @loop_latch_edge(ptr noundef %0) #18
  %141 = call ptr @split_edge(ptr noundef %140) #18
  %142 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 3
  %143 = load ptr, ptr %142, align 8, !tbaa !142
  %144 = load ptr, ptr %143, align 8, !tbaa !143
  %145 = icmp eq ptr %144, null
  br i1 %145, label %149, label %146

146:                                              ; preds = %136
  %147 = load i32, ptr %144, align 8, !tbaa !74
  %148 = icmp eq i32 %147, 1
  br i1 %148, label %150, label %149

149:                                              ; preds = %146, %136
  call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 655, ptr noundef nonnull @.str.2) #18
  br label %150

150:                                              ; preds = %146, %149
  %151 = load ptr, ptr %143, align 8, !tbaa !143
  %152 = getelementptr inbounds %struct.VEC_edge_base, ptr %151, i64 0, i32 2, i64 0
  %153 = load ptr, ptr %152, align 8, !tbaa !35
  %154 = load ptr, ptr %153, align 8, !tbaa !76
  %155 = load ptr, ptr %2, align 8, !tbaa !76
  %156 = getelementptr inbounds %struct.edge_def, ptr %2, i64 0, i32 8
  %157 = load i32, ptr %156, align 4, !tbaa !166
  %158 = sub nsw i32 10000, %157
  call fastcc void @scale_dominated_blocks_in_loop(ptr noundef %0, ptr noundef %155, i32 noundef %158)
  %159 = getelementptr inbounds %struct.basic_block_def, ptr %154, i64 0, i32 13
  %160 = load i32, ptr %159, align 8, !tbaa !124, !noalias !167
  %161 = and i32 %160, 512
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %163, label %169

163:                                              ; preds = %150
  %164 = getelementptr inbounds %struct.basic_block_def, ptr %154, i64 0, i32 7
  %165 = load ptr, ptr %164, align 8, !tbaa !46, !noalias !167
  %166 = icmp eq ptr %165, null
  br i1 %166, label %169, label %167

167:                                              ; preds = %163
  %168 = load ptr, ptr %165, align 8, !tbaa !128, !noalias !167
  br label %169

169:                                              ; preds = %167, %163, %150
  %170 = phi ptr [ %168, %167 ], [ null, %163 ], [ null, %150 ]
  %171 = icmp eq ptr %170, null
  br i1 %171, label %175, label %172

172:                                              ; preds = %169
  %173 = getelementptr inbounds %struct.gimple_seq_d, ptr %170, i64 0, i32 1
  %174 = load ptr, ptr %173, align 8, !tbaa !150, !noalias !167
  br label %175

175:                                              ; preds = %169, %172
  %176 = phi ptr [ %174, %172 ], [ null, %169 ]
  store ptr %176, ptr %10, align 8, !tbaa.struct !115
  %177 = getelementptr inbounds i8, ptr %10, i64 8
  store ptr %170, ptr %177, align 8, !tbaa.struct !170
  %178 = getelementptr inbounds i8, ptr %10, i64 16
  store ptr %154, ptr %178, align 8, !tbaa.struct !171
  %179 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), align 8, !tbaa !35
  %180 = call ptr @gimple_build_cond(i32 noundef 101, ptr noundef %179, ptr noundef %179, ptr noundef null, ptr noundef null) #18
  call void @gsi_insert_after(ptr noundef nonnull %10, ptr noundef %180, i32 noundef 0) #18
  %181 = or disjoint i32 %17, 2048
  %182 = call ptr @make_edge(ptr noundef %154, ptr noundef nonnull %129, i32 noundef %181) #18
  call void @rescan_loop_exit(ptr noundef %182, i8 noundef zeroext 1, i8 noundef zeroext 0) #18
  %183 = getelementptr inbounds %struct.edge_def, ptr %2, i64 0, i32 9
  %184 = load i64, ptr %183, align 8, !tbaa !172
  %185 = getelementptr inbounds %struct.edge_def, ptr %182, i64 0, i32 9
  store i64 %184, ptr %185, align 8, !tbaa !172
  %186 = load i32, ptr %156, align 4, !tbaa !166
  %187 = getelementptr inbounds %struct.edge_def, ptr %182, i64 0, i32 8
  store i32 %186, ptr %187, align 4, !tbaa !166
  %188 = load ptr, ptr %142, align 8, !tbaa !142
  %189 = load ptr, ptr %188, align 8, !tbaa !143
  %190 = icmp eq ptr %189, null
  br i1 %190, label %194, label %191

191:                                              ; preds = %175
  %192 = load i32, ptr %189, align 8, !tbaa !74
  %193 = icmp eq i32 %192, 1
  br i1 %193, label %195, label %194

194:                                              ; preds = %175, %191
  call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 655, ptr noundef nonnull @.str.2) #18
  br label %195

195:                                              ; preds = %191, %194
  %196 = load ptr, ptr %188, align 8, !tbaa !143
  %197 = getelementptr inbounds %struct.VEC_edge_base, ptr %196, i64 0, i32 2, i64 0
  %198 = load ptr, ptr %197, align 8, !tbaa !35
  %199 = load i32, ptr %156, align 4, !tbaa !166
  %200 = sub nsw i32 10000, %199
  %201 = getelementptr inbounds %struct.edge_def, ptr %198, i64 0, i32 8
  store i32 %200, ptr %201, align 4, !tbaa !166
  %202 = getelementptr inbounds %struct.edge_def, ptr %198, i64 0, i32 7
  store i32 1024, ptr %202, align 8, !tbaa !165
  %203 = load i64, ptr %183, align 8, !tbaa !172
  %204 = getelementptr inbounds %struct.edge_def, ptr %198, i64 0, i32 9
  %205 = load i64, ptr %204, align 8, !tbaa !172
  %206 = sub nsw i64 %205, %203
  %207 = call i64 @llvm.smax.i64(i64 %206, i64 0)
  store i64 %207, ptr %204, align 8, !tbaa !172
  call void @scale_bbs_frequencies_int(ptr noundef nonnull %142, i32 noundef 1, i32 noundef %200, i32 noundef 10000) #18
  %208 = call ptr @loop_preheader_edge(ptr noundef %0) #18
  %209 = call ptr @loop_preheader_edge(ptr noundef %120) #18
  %210 = call ptr @loop_latch_edge(ptr noundef %0) #18
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %12) #18
  %211 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 2
  %212 = load ptr, ptr %211, align 8, !tbaa !54
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %12, ptr noundef %212) #18
  %213 = load ptr, ptr %12, align 8, !tbaa.struct !115
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %12) #18
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %13) #18
  %214 = getelementptr inbounds %struct.loop, ptr %120, i64 0, i32 2
  %215 = load ptr, ptr %214, align 8, !tbaa !54
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %13, ptr noundef %215) #18
  %216 = load ptr, ptr %13, align 8, !tbaa.struct !115
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %13) #18
  %217 = icmp eq ptr %213, null
  br i1 %217, label %336, label %218

218:                                              ; preds = %195
  %219 = getelementptr inbounds %struct.edge_def, ptr %208, i64 0, i32 6
  %220 = getelementptr inbounds %struct.edge_def, ptr %209, i64 0, i32 6
  %221 = getelementptr inbounds %struct.edge_def, ptr %210, i64 0, i32 6
  br label %222

222:                                              ; preds = %218, %330
  %223 = phi ptr [ %213, %218 ], [ %332, %330 ]
  %224 = phi ptr [ %216, %218 ], [ %334, %330 ]
  %225 = load ptr, ptr %223, align 8, !tbaa !116
  %226 = load ptr, ptr %224, align 8, !tbaa !116
  %227 = load i32, ptr %219, align 4, !tbaa !118
  %228 = getelementptr inbounds %struct.gimple_statement_phi, ptr %225, i64 0, i32 1
  %229 = load i32, ptr %228, align 8, !tbaa !46
  %230 = icmp ult i32 %229, %227
  br i1 %230, label %231, label %232

231:                                              ; preds = %222
  call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 3103, ptr noundef nonnull @.str.2) #18
  br label %232

232:                                              ; preds = %222, %231
  %233 = zext i32 %227 to i64
  %234 = getelementptr inbounds %struct.gimple_statement_phi, ptr %225, i64 0, i32 4, i64 %233, i32 0, i32 3
  %235 = load ptr, ptr %234, align 8, !tbaa !119
  %236 = load ptr, ptr %235, align 8, !tbaa !35
  %237 = load i32, ptr %220, align 4, !tbaa !118
  %238 = getelementptr inbounds %struct.gimple_statement_phi, ptr %226, i64 0, i32 1
  %239 = load i32, ptr %238, align 8, !tbaa !46
  %240 = icmp ult i32 %239, %237
  br i1 %240, label %241, label %242

241:                                              ; preds = %232
  call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 3103, ptr noundef nonnull @.str.2) #18
  br label %242

242:                                              ; preds = %232, %241
  %243 = zext i32 %237 to i64
  %244 = getelementptr inbounds %struct.gimple_statement_phi, ptr %226, i64 0, i32 4, i64 %243
  %245 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %244, i64 0, i32 3
  %246 = load ptr, ptr %245, align 8, !tbaa !119
  %247 = load ptr, ptr %246, align 8, !tbaa !35
  %248 = call i32 @operand_equal_for_phi_arg_p(ptr noundef %236, ptr noundef %247) #18
  %249 = icmp eq i32 %248, 0
  br i1 %249, label %250, label %251

250:                                              ; preds = %242
  call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 997, ptr noundef nonnull @.str.2) #18
  br label %251

251:                                              ; preds = %242, %250
  %252 = load i32, ptr %221, align 4, !tbaa !118
  %253 = load i32, ptr %228, align 8, !tbaa !46
  %254 = icmp ult i32 %253, %252
  br i1 %254, label %255, label %256

255:                                              ; preds = %251
  call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 3103, ptr noundef nonnull @.str.2) #18
  br label %256

256:                                              ; preds = %251, %255
  %257 = zext i32 %252 to i64
  %258 = getelementptr inbounds %struct.gimple_statement_phi, ptr %225, i64 0, i32 4, i64 %257, i32 0, i32 3
  %259 = load ptr, ptr %258, align 8, !tbaa !119
  %260 = load ptr, ptr %259, align 8, !tbaa !35
  %261 = load i64, ptr %260, align 8
  %262 = and i64 %261, 65535
  %263 = icmp eq i64 %262, 141
  br i1 %263, label %264, label %274

264:                                              ; preds = %256
  %265 = getelementptr inbounds %struct.tree_common, ptr %260, i64 0, i32 2
  %266 = load ptr, ptr %265, align 8, !tbaa !46
  %267 = getelementptr inbounds %struct.tree_common, ptr %236, i64 0, i32 2
  %268 = load ptr, ptr %267, align 8, !tbaa !46
  %269 = call zeroext i8 @useless_type_conversion_p(ptr noundef %266, ptr noundef %268) #18
  %270 = icmp eq i8 %269, 0
  br i1 %270, label %274, label %271

271:                                              ; preds = %264
  %272 = getelementptr inbounds %struct.tree_ssa_name, ptr %260, i64 0, i32 1
  %273 = load ptr, ptr %272, align 8, !tbaa !46
  br label %303

274:                                              ; preds = %264, %256
  %275 = load i64, ptr %236, align 8
  %276 = and i64 %275, 65535
  %277 = icmp eq i64 %276, 141
  br i1 %277, label %278, label %288

278:                                              ; preds = %274
  %279 = getelementptr inbounds %struct.tree_common, ptr %236, i64 0, i32 2
  %280 = load ptr, ptr %279, align 8, !tbaa !46
  %281 = getelementptr inbounds %struct.tree_common, ptr %260, i64 0, i32 2
  %282 = load ptr, ptr %281, align 8, !tbaa !46
  %283 = call zeroext i8 @useless_type_conversion_p(ptr noundef %280, ptr noundef %282) #18
  %284 = icmp eq i8 %283, 0
  br i1 %284, label %288, label %285

285:                                              ; preds = %278
  %286 = getelementptr inbounds %struct.tree_ssa_name, ptr %236, i64 0, i32 1
  %287 = load ptr, ptr %286, align 8, !tbaa !46
  br label %303

288:                                              ; preds = %278, %274
  %289 = getelementptr inbounds %struct.tree_common, ptr %260, i64 0, i32 2
  %290 = load ptr, ptr %289, align 8, !tbaa !46
  %291 = getelementptr inbounds %struct.tree_common, ptr %236, i64 0, i32 2
  %292 = load ptr, ptr %291, align 8, !tbaa !46
  %293 = call zeroext i8 @useless_type_conversion_p(ptr noundef %290, ptr noundef %292) #18
  %294 = icmp eq i8 %293, 0
  br i1 %294, label %299, label %295

295:                                              ; preds = %288
  %296 = load ptr, ptr %289, align 8, !tbaa !46
  %297 = call ptr @create_tmp_var(ptr noundef %296, ptr noundef nonnull @.str.3) #18
  %298 = call zeroext i8 @add_referenced_var(ptr noundef %297) #18
  br label %303

299:                                              ; preds = %288
  %300 = load ptr, ptr %291, align 8, !tbaa !46
  %301 = call ptr @create_tmp_var(ptr noundef %300, ptr noundef nonnull @.str.3) #18
  %302 = call zeroext i8 @add_referenced_var(ptr noundef %301) #18
  br label %303

303:                                              ; preds = %285, %299, %295, %271
  %304 = phi ptr [ %273, %271 ], [ %287, %285 ], [ %297, %295 ], [ %301, %299 ]
  %305 = load ptr, ptr @cfun, align 8, !tbaa !35
  %306 = call ptr @make_ssa_name_fn(ptr noundef %305, ptr noundef %304, ptr noundef null) #18
  %307 = call ptr @create_phi_node(ptr noundef %306, ptr noundef nonnull %129) #18
  %308 = getelementptr inbounds %struct.tree_ssa_name, ptr %306, i64 0, i32 2
  store ptr %307, ptr %308, align 8, !tbaa !46
  call void @add_phi_arg(ptr noundef %307, ptr noundef %236, ptr noundef %139, i32 noundef 0) #18
  call void @add_phi_arg(ptr noundef %307, ptr noundef nonnull %260, ptr noundef %182, i32 noundef 0) #18
  %309 = load ptr, ptr %244, align 8, !tbaa !139
  %310 = icmp eq ptr %309, null
  br i1 %310, label %316, label %311

311:                                              ; preds = %303
  %312 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %244, i64 0, i32 1
  %313 = load ptr, ptr %312, align 8, !tbaa !140
  %314 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %309, i64 0, i32 1
  store ptr %313, ptr %314, align 8, !tbaa !140
  %315 = load ptr, ptr %312, align 8, !tbaa !140
  store ptr %309, ptr %315, align 8, !tbaa !139
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %244, i8 0, i64 16, i1 false)
  br label %316

316:                                              ; preds = %311, %303
  %317 = load ptr, ptr %245, align 8, !tbaa !119
  store ptr %306, ptr %317, align 8, !tbaa !35
  %318 = icmp eq ptr %306, null
  br i1 %318, label %323, label %319

319:                                              ; preds = %316
  %320 = load i64, ptr %306, align 8
  %321 = and i64 %320, 65535
  %322 = icmp eq i64 %321, 141
  br i1 %322, label %324, label %323

323:                                              ; preds = %319, %316
  store ptr null, ptr %244, align 8, !tbaa !139
  br label %330

324:                                              ; preds = %319
  %325 = getelementptr inbounds %struct.tree_ssa_name, ptr %306, i64 0, i32 5
  store ptr %325, ptr %244, align 8, !tbaa !139
  %326 = getelementptr inbounds %struct.tree_ssa_name, ptr %306, i64 0, i32 5, i32 1
  %327 = load ptr, ptr %326, align 8, !tbaa !140
  %328 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %244, i64 0, i32 1
  store ptr %327, ptr %328, align 8, !tbaa !140
  %329 = load ptr, ptr %326, align 8, !tbaa !140
  store ptr %244, ptr %329, align 8, !tbaa !139
  store ptr %244, ptr %326, align 8, !tbaa !140
  br label %330

330:                                              ; preds = %323, %324
  %331 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %223, i64 0, i32 2
  %332 = load ptr, ptr %331, align 8, !tbaa !122
  %333 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %224, i64 0, i32 2
  %334 = load ptr, ptr %333, align 8, !tbaa !122
  %335 = icmp eq ptr %332, null
  br i1 %335, label %336, label %222, !llvm.loop !173

336:                                              ; preds = %330, %195
  %337 = call zeroext i8 @remove_path(ptr noundef nonnull %2) #18
  %338 = icmp eq ptr %4, null
  br i1 %338, label %340, label %339

339:                                              ; preds = %336
  call void %4(ptr noundef %0, ptr noundef %5) #18
  br label %340

340:                                              ; preds = %339, %336
  %341 = call ptr @sbitmap_alloc(i32 noundef %1) #18
  call void @sbitmap_ones(ptr noundef %341) #18
  %342 = add i32 %1, -1
  %343 = load ptr, ptr %341, align 8, !tbaa !174
  %344 = icmp eq ptr %343, null
  br i1 %344, label %359, label %345

345:                                              ; preds = %340
  %346 = lshr i32 %342, 6
  %347 = zext nneg i32 %346 to i64
  %348 = getelementptr inbounds %struct.simple_bitmap_def, ptr %341, i64 0, i32 3, i64 %347
  %349 = load i64, ptr %348, align 8, !tbaa !93
  %350 = and i32 %342, 63
  %351 = zext nneg i32 %350 to i64
  %352 = shl nuw i64 1, %351
  %353 = and i64 %349, %352
  %354 = icmp eq i64 %353, 0
  br i1 %354, label %359, label %355

355:                                              ; preds = %345
  %356 = getelementptr inbounds i8, ptr %343, i64 %347
  %357 = load i8, ptr %356, align 1, !tbaa !46
  %358 = add i8 %357, -1
  store i8 %358, ptr %356, align 1, !tbaa !46
  br label %359

359:                                              ; preds = %340, %345, %355
  %360 = and i32 %342, 63
  %361 = zext nneg i32 %360 to i64
  %362 = shl nuw i64 1, %361
  %363 = xor i64 %362, -1
  %364 = lshr i32 %342, 6
  %365 = zext nneg i32 %364 to i64
  %366 = getelementptr inbounds %struct.simple_bitmap_def, ptr %341, i64 0, i32 3, i64 %365
  %367 = load i64, ptr %366, align 8, !tbaa !93
  %368 = and i64 %367, %363
  store i64 %368, ptr %366, align 8, !tbaa !93
  %369 = call ptr @loop_latch_edge(ptr noundef %0) #18
  %370 = call zeroext i8 @gimple_duplicate_loop_to_header_edge(ptr noundef %0, ptr noundef %369, i32 noundef %342, ptr noundef nonnull %341, ptr noundef %182, ptr noundef nonnull %11, i32 noundef 1), !range !176
  call void @free(ptr noundef %341)
  %371 = icmp eq i8 %370, 0
  br i1 %371, label %372, label %373

372:                                              ; preds = %359
  call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1047, ptr noundef nonnull @.str.2) #18
  br label %373

373:                                              ; preds = %359, %372
  br label %374

374:                                              ; preds = %373, %392
  %375 = phi i32 [ %393, %392 ], [ 0, %373 ]
  %376 = load ptr, ptr %11, align 8
  %377 = icmp eq ptr %376, null
  br i1 %377, label %385, label %378

378:                                              ; preds = %374
  %379 = load i32, ptr %376, align 8, !tbaa !74
  %380 = icmp ugt i32 %379, %375
  br i1 %380, label %381, label %385

381:                                              ; preds = %378
  %382 = zext i32 %375 to i64
  %383 = getelementptr inbounds %struct.VEC_edge_base, ptr %376, i64 0, i32 2, i64 %382
  %384 = load ptr, ptr %383, align 8, !tbaa !35
  br label %385

385:                                              ; preds = %374, %378, %381
  %386 = phi ptr [ %384, %381 ], [ null, %378 ], [ null, %374 ]
  %387 = phi i1 [ false, %381 ], [ true, %378 ], [ true, %374 ]
  br i1 %387, label %394, label %388

388:                                              ; preds = %385
  %389 = call zeroext i8 @remove_path(ptr noundef %386) #18
  %390 = icmp eq i8 %389, 0
  br i1 %390, label %391, label %392

391:                                              ; preds = %388
  call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1052, ptr noundef nonnull @.str.2) #18
  br label %392

392:                                              ; preds = %388, %391
  %393 = add i32 %375, 1
  br label %374, !llvm.loop !177

394:                                              ; preds = %385
  br i1 %377, label %396, label %395

395:                                              ; preds = %394
  call void @free(ptr noundef %376)
  br label %396

396:                                              ; preds = %394, %395
  store ptr null, ptr %11, align 8, !tbaa !35
  call void @update_ssa(i32 noundef 2048) #18
  %397 = load ptr, ptr %211, align 8, !tbaa !54
  %398 = getelementptr inbounds %struct.basic_block_def, ptr %397, i64 0, i32 11
  %399 = load i32, ptr %398, align 8, !tbaa !178
  %400 = call ptr @loop_preheader_edge(ptr noundef %0) #18
  %401 = load ptr, ptr %400, align 8, !tbaa !76
  %402 = getelementptr inbounds %struct.basic_block_def, ptr %401, i64 0, i32 11
  %403 = load i32, ptr %402, align 8, !tbaa !178
  %404 = call ptr @loop_preheader_edge(ptr noundef %0) #18
  %405 = icmp eq i32 %399, 0
  br i1 %405, label %414, label %406

406:                                              ; preds = %396
  %407 = getelementptr inbounds %struct.edge_def, ptr %404, i64 0, i32 8
  %408 = load i32, ptr %407, align 4, !tbaa !166
  %409 = mul nsw i32 %408, %403
  %410 = add nsw i32 %409, 5000
  %411 = sdiv i32 %410, 10000
  %412 = add i32 %127, 1
  %413 = mul i32 %411, %412
  call void @scale_loop_frequencies(ptr noundef %0, i32 noundef %413, i32 noundef %399) #18
  br label %414

414:                                              ; preds = %406, %396
  %415 = load ptr, ptr %142, align 8, !tbaa !142
  %416 = load ptr, ptr %415, align 8, !tbaa !143
  %417 = icmp eq ptr %416, null
  br i1 %417, label %421, label %418

418:                                              ; preds = %414
  %419 = load i32, ptr %416, align 8, !tbaa !74
  %420 = icmp eq i32 %419, 1
  br i1 %420, label %422, label %421

421:                                              ; preds = %418, %414
  call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 655, ptr noundef nonnull @.str.2) #18
  br label %422

422:                                              ; preds = %418, %421
  %423 = load ptr, ptr %415, align 8, !tbaa !143
  %424 = getelementptr inbounds %struct.VEC_edge_base, ptr %423, i64 0, i32 2, i64 0
  %425 = load ptr, ptr %424, align 8, !tbaa !35
  %426 = load ptr, ptr %425, align 8, !tbaa !76
  %427 = call ptr @find_edge(ptr noundef %426, ptr noundef nonnull %129) #18
  %428 = call ptr @loop_preheader_edge(ptr noundef %0) #18
  %429 = getelementptr inbounds %struct.edge_def, ptr %428, i64 0, i32 9
  %430 = load i64, ptr %429, align 8, !tbaa !172
  %431 = getelementptr inbounds %struct.edge_def, ptr %427, i64 0, i32 9
  store i64 %430, ptr %431, align 8, !tbaa !172
  %432 = add i32 %127, 1
  %433 = udiv i32 10000, %432
  %434 = getelementptr inbounds %struct.edge_def, ptr %427, i64 0, i32 8
  store i32 %433, ptr %434, align 4, !tbaa !166
  %435 = getelementptr inbounds %struct.basic_block_def, ptr %129, i64 0, i32 8
  %436 = load i64, ptr %435, align 8, !tbaa !179
  %437 = add nsw i64 %436, %430
  store i64 %437, ptr %435, align 8, !tbaa !179
  %438 = load ptr, ptr %427, align 8, !tbaa !76
  %439 = getelementptr inbounds %struct.basic_block_def, ptr %438, i64 0, i32 11
  %440 = load i32, ptr %439, align 8, !tbaa !178
  %441 = mul nsw i32 %440, %433
  %442 = add nsw i32 %441, 5000
  %443 = sdiv i32 %442, 10000
  %444 = getelementptr inbounds %struct.basic_block_def, ptr %129, i64 0, i32 11
  %445 = load i32, ptr %444, align 8, !tbaa !178
  %446 = add nsw i32 %443, %445
  store i32 %446, ptr %444, align 8, !tbaa !178
  %447 = load ptr, ptr %142, align 8, !tbaa !142
  %448 = load ptr, ptr %447, align 8, !tbaa !143
  %449 = icmp eq ptr %448, null
  br i1 %449, label %453, label %450

450:                                              ; preds = %422
  %451 = load i32, ptr %448, align 8, !tbaa !74
  %452 = icmp eq i32 %451, 1
  br i1 %452, label %454, label %453

453:                                              ; preds = %422, %450
  call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 655, ptr noundef nonnull @.str.2) #18
  br label %454

454:                                              ; preds = %450, %453
  %455 = load ptr, ptr %447, align 8, !tbaa !143
  %456 = getelementptr inbounds %struct.VEC_edge_base, ptr %455, i64 0, i32 2, i64 0
  %457 = load ptr, ptr %456, align 8, !tbaa !35
  %458 = getelementptr inbounds %struct.edge_def, ptr %457, i64 0, i32 8
  %459 = load i32, ptr %458, align 4, !tbaa !166
  %460 = load i32, ptr %434, align 4, !tbaa !166
  %461 = sub nsw i32 10000, %460
  store i32 %461, ptr %458, align 4, !tbaa !166
  %462 = getelementptr inbounds %struct.basic_block_def, ptr %426, i64 0, i32 8
  %463 = load i64, ptr %462, align 8, !tbaa !179
  %464 = load i64, ptr %431, align 8, !tbaa !172
  %465 = sub nsw i64 %463, %464
  %466 = getelementptr inbounds %struct.edge_def, ptr %457, i64 0, i32 9
  %467 = call i64 @llvm.smax.i64(i64 %465, i64 0)
  store i64 %467, ptr %466, align 8, !tbaa !172
  %468 = icmp eq i32 %459, 0
  br i1 %468, label %470, label %469

469:                                              ; preds = %454
  call void @scale_bbs_frequencies_int(ptr noundef nonnull %142, i32 noundef 1, i32 noundef %461, i32 noundef %459) #18
  br label %470

470:                                              ; preds = %469, %454
  %471 = getelementptr inbounds %struct.basic_block_def, ptr %426, i64 0, i32 13
  %472 = load i32, ptr %471, align 8, !tbaa !124, !noalias !180
  %473 = and i32 %472, 512
  %474 = icmp eq i32 %473, 0
  br i1 %474, label %475, label %481

475:                                              ; preds = %470
  %476 = getelementptr inbounds %struct.basic_block_def, ptr %426, i64 0, i32 7
  %477 = load ptr, ptr %476, align 8, !tbaa !46, !noalias !180
  %478 = icmp eq ptr %477, null
  br i1 %478, label %481, label %479

479:                                              ; preds = %475
  %480 = load ptr, ptr %477, align 8, !tbaa !128, !noalias !180
  br label %481

481:                                              ; preds = %479, %475, %470
  %482 = phi ptr [ %480, %479 ], [ null, %475 ], [ null, %470 ]
  %483 = icmp ne ptr %482, null
  call void @llvm.assume(i1 %483)
  %484 = getelementptr inbounds %struct.gimple_seq_d, ptr %482, i64 0, i32 1
  %485 = load ptr, ptr %484, align 8, !tbaa !150, !noalias !180
  store ptr %485, ptr %10, align 8, !tbaa.struct !115
  store ptr %482, ptr %177, align 8, !tbaa.struct !170
  store ptr %426, ptr %178, align 8, !tbaa.struct !171
  %486 = load ptr, ptr %485, align 8, !tbaa !116
  call void @create_iv(ptr noundef %100, ptr noundef %63, ptr noundef null, ptr noundef %0, ptr noundef nonnull %10, i8 noundef zeroext 0, ptr noundef nonnull %8, ptr noundef nonnull %9)
  %487 = load i32, ptr %486, align 8
  %488 = shl i32 %49, 16
  %489 = and i32 %487, 65535
  %490 = or disjoint i32 %489, %488
  store i32 %490, ptr %486, align 8
  %491 = load ptr, ptr %9, align 8, !tbaa !35
  %492 = and i32 %487, 255
  %493 = add nsw i32 %492, -10
  %494 = icmp ult i32 %493, -9
  br i1 %494, label %499, label %495

495:                                              ; preds = %481
  %496 = getelementptr inbounds %struct.gimple_statement_base, ptr %486, i64 0, i32 3
  %497 = load i32, ptr %496, align 4, !tbaa !46
  %498 = icmp eq i32 %497, 0
  br i1 %498, label %499, label %500

499:                                              ; preds = %495, %481
  call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 1665, ptr noundef nonnull @.str.2) #18
  br label %500

500:                                              ; preds = %499, %495
  %501 = load i32, ptr %486, align 8
  %502 = and i32 %501, 255
  %503 = zext nneg i32 %502 to i64
  %504 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %503
  %505 = load i32, ptr %504, align 4, !tbaa !50
  %506 = zext i32 %505 to i64
  %507 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %506
  %508 = load i64, ptr %507, align 8, !tbaa !93
  %509 = icmp eq i64 %508, 0
  br i1 %509, label %510, label %511

510:                                              ; preds = %500
  call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 1622, ptr noundef nonnull @.str.2) #18
  br label %511

511:                                              ; preds = %500, %510
  %512 = getelementptr inbounds i8, ptr %486, i64 %508
  store ptr %491, ptr %512, align 8, !tbaa !35
  %513 = load i32, ptr %486, align 8
  %514 = and i32 %513, 255
  %515 = add nsw i32 %514, -10
  %516 = icmp ult i32 %515, -9
  br i1 %516, label %521, label %517

517:                                              ; preds = %511
  %518 = getelementptr inbounds %struct.gimple_statement_base, ptr %486, i64 0, i32 3
  %519 = load i32, ptr %518, align 4, !tbaa !46
  %520 = icmp ugt i32 %519, 1
  br i1 %520, label %522, label %521

521:                                              ; preds = %517, %511
  call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 1665, ptr noundef nonnull @.str.2) #18
  br label %522

522:                                              ; preds = %521, %517
  %523 = load i32, ptr %486, align 8
  %524 = and i32 %523, 255
  %525 = zext nneg i32 %524 to i64
  %526 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %525
  %527 = load i32, ptr %526, align 4, !tbaa !50
  %528 = zext i32 %527 to i64
  %529 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %528
  %530 = load i64, ptr %529, align 8, !tbaa !93
  %531 = icmp eq i64 %530, 0
  br i1 %531, label %532, label %533

532:                                              ; preds = %522
  call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 1622, ptr noundef nonnull @.str.2) #18
  br label %533

533:                                              ; preds = %522, %532
  %534 = getelementptr inbounds i8, ptr %486, i64 %530
  %535 = getelementptr inbounds ptr, ptr %534, i64 1
  store ptr %109, ptr %535, align 8, !tbaa !35
  %536 = load i32, ptr %486, align 8
  %537 = and i32 %536, 255
  %538 = add nsw i32 %537, -10
  %539 = icmp ult i32 %538, -9
  br i1 %539, label %541, label %540

540:                                              ; preds = %533
  call void @gimple_set_modified(ptr noundef nonnull %486, i8 noundef zeroext 1) #18
  call void @update_stmt_operands(ptr noundef nonnull %486) #18
  br label %541

541:                                              ; preds = %533, %540
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #18
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %10) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #18
  ret void
}

declare i32 @expected_loop_iterations(ptr noundef) local_unnamed_addr #3

declare i32 @integer_nonzerop(ptr noundef) local_unnamed_addr #3

declare ptr @loop_version(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #3

declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc void @scale_dominated_blocks_in_loop(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #9 !prof !34 {
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #18
  %5 = icmp eq i32 %2, 0
  br i1 %5, label %19, label %6

6:                                                ; preds = %3
  %7 = tail call ptr @first_dom_son(i32 noundef 1, ptr noundef %1) #18
  store ptr %7, ptr %4, align 8, !tbaa !35
  %8 = icmp eq ptr %7, null
  br i1 %8, label %19, label %9

9:                                                ; preds = %6, %15
  %10 = phi ptr [ %17, %15 ], [ %7, %6 ]
  %11 = call zeroext i8 @flow_bb_inside_loop_p(ptr noundef %0, ptr noundef nonnull %10) #18
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %9
  call void @scale_bbs_frequencies_int(ptr noundef nonnull %4, i32 noundef 1, i32 noundef 10000, i32 noundef %2) #18
  %14 = load ptr, ptr %4, align 8, !tbaa !35
  call fastcc void @scale_dominated_blocks_in_loop(ptr noundef %0, ptr noundef %14, i32 noundef %2)
  br label %15

15:                                               ; preds = %9, %13
  %16 = load ptr, ptr %4, align 8, !tbaa !35
  %17 = call ptr @next_dom_son(i32 noundef 1, ptr noundef %16) #18
  store ptr %17, ptr %4, align 8, !tbaa !35
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %9, !llvm.loop !183

19:                                               ; preds = %15, %6, %3
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #18
  ret void
}

declare ptr @gimple_build_cond(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @make_edge(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @rescan_loop_exit(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

declare void @scale_bbs_frequencies_int(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare i32 @operand_equal_for_phi_arg_p(ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @useless_type_conversion_p(ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @remove_path(ptr noundef) local_unnamed_addr #3

declare ptr @sbitmap_alloc(i32 noundef) local_unnamed_addr #3

declare void @sbitmap_ones(ptr noundef) local_unnamed_addr #3

declare void @scale_loop_frequencies(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare ptr @find_edge(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @tree_unroll_loop(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3) local_unnamed_addr #9 !prof !34 {
  tail call void @tree_transform_and_unroll_loop(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef null, ptr noundef null)
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local ptr @canonicalize_loop_ivs(ptr noundef %0, ptr nocapture noundef %1, i8 noundef zeroext %2) local_unnamed_addr #9 !prof !34 {
  %4 = alloca %struct.affine_iv, align 8
  %5 = alloca %struct.gimple_stmt_iterator, align 8
  %6 = alloca %struct.gimple_stmt_iterator, align 8
  %7 = alloca %struct.gimple_stmt_iterator, align 8
  %8 = alloca ptr, align 8
  %9 = alloca %struct.gimple_stmt_iterator, align 8
  %10 = alloca ptr, align 8
  %11 = alloca %struct.gimple_stmt_iterator, align 8
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  %14 = load ptr, ptr %1, align 8, !tbaa !35
  %15 = getelementptr inbounds %struct.tree_common, ptr %14, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !46
  %17 = getelementptr inbounds %struct.tree_type, ptr %16, i64 0, i32 6
  %18 = load i32, ptr %17, align 4
  %19 = and i32 %18, 1023
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #18
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %9) #18
  %20 = tail call ptr @single_dom_exit(ptr noundef %0) #18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #18
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %11) #18
  %21 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !54
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %11, ptr noundef %22) #18
  %23 = load ptr, ptr %11, align 8, !tbaa.struct !115
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %11) #18
  %24 = icmp eq ptr %23, null
  br i1 %24, label %45, label %25

25:                                               ; preds = %3, %40
  %26 = phi i32 [ %41, %40 ], [ %19, %3 ]
  %27 = phi ptr [ %43, %40 ], [ %23, %3 ]
  %28 = load ptr, ptr %27, align 8, !tbaa !116
  %29 = getelementptr inbounds %struct.gimple_statement_phi, ptr %28, i64 0, i32 3
  %30 = load ptr, ptr %29, align 8, !tbaa !35
  %31 = call zeroext i8 @is_gimple_reg(ptr noundef %30) #18
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %40, label %33

33:                                               ; preds = %25
  %34 = getelementptr inbounds %struct.tree_common, ptr %30, i64 0, i32 2
  %35 = load ptr, ptr %34, align 8, !tbaa !46
  %36 = getelementptr inbounds %struct.tree_type, ptr %35, i64 0, i32 6
  %37 = load i32, ptr %36, align 4
  %38 = and i32 %37, 1023
  %39 = call i32 @llvm.umax.i32(i32 %38, i32 %26)
  br label %40

40:                                               ; preds = %33, %25
  %41 = phi i32 [ %26, %25 ], [ %39, %33 ]
  %42 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %27, i64 0, i32 2
  %43 = load ptr, ptr %42, align 8, !tbaa !122
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %25, !llvm.loop !184

45:                                               ; preds = %40, %3
  %46 = phi i32 [ %19, %3 ], [ %41, %40 ]
  %47 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 34, i32 3), align 8, !tbaa !185
  %48 = call ptr %47(i32 noundef %46, i32 noundef 1) #18
  %49 = icmp eq i32 %19, %46
  br i1 %49, label %60, label %50

50:                                               ; preds = %45
  %51 = load ptr, ptr %1, align 8, !tbaa !35
  %52 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %48, ptr noundef %51) #18
  store ptr %52, ptr %1, align 8, !tbaa !35
  %53 = call ptr @force_gimple_operand(ptr noundef %52, ptr noundef nonnull %10, i8 noundef zeroext 1, ptr noundef null) #18
  store ptr %53, ptr %1, align 8, !tbaa !35
  %54 = load ptr, ptr %10, align 8, !tbaa !35
  %55 = icmp eq ptr %54, null
  br i1 %55, label %60, label %56

56:                                               ; preds = %50
  %57 = call ptr @loop_preheader_edge(ptr noundef %0) #18
  %58 = load ptr, ptr %10, align 8, !tbaa !35
  %59 = call ptr @gsi_insert_seq_on_edge_immediate(ptr noundef %57, ptr noundef %58) #18
  br label %60

60:                                               ; preds = %50, %56, %45
  %61 = icmp eq i8 %2, 0
  %62 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 3
  %63 = select i1 %61, ptr %21, ptr %62
  %64 = load ptr, ptr %63, align 8, !tbaa !35
  %65 = getelementptr inbounds %struct.basic_block_def, ptr %64, i64 0, i32 13
  %66 = load i32, ptr %65, align 8, !tbaa !124, !noalias !193
  %67 = and i32 %66, 512
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %75

69:                                               ; preds = %60
  %70 = getelementptr inbounds %struct.basic_block_def, ptr %64, i64 0, i32 7
  %71 = load ptr, ptr %70, align 8, !tbaa !46, !noalias !193
  %72 = icmp eq ptr %71, null
  br i1 %72, label %75, label %73

73:                                               ; preds = %69
  %74 = load ptr, ptr %71, align 8, !tbaa !128, !noalias !193
  br label %75

75:                                               ; preds = %73, %69, %60
  %76 = phi ptr [ %74, %73 ], [ null, %69 ], [ null, %60 ]
  %77 = icmp eq ptr %76, null
  br i1 %77, label %81, label %78

78:                                               ; preds = %75
  %79 = getelementptr inbounds %struct.gimple_seq_d, ptr %76, i64 0, i32 1
  %80 = load ptr, ptr %79, align 8, !tbaa !150, !noalias !193
  br label %81

81:                                               ; preds = %75, %78
  %82 = phi ptr [ %80, %78 ], [ null, %75 ]
  store ptr %82, ptr %9, align 8, !tbaa.struct !115
  %83 = getelementptr inbounds i8, ptr %9, i64 8
  store ptr %76, ptr %83, align 8, !tbaa.struct !170
  %84 = getelementptr inbounds i8, ptr %9, i64 16
  store ptr %64, ptr %84, align 8, !tbaa.struct !171
  %85 = call ptr @build_int_cst_type(ptr noundef %48, i64 noundef 0) #18
  %86 = call ptr @build_int_cst(ptr noundef %48, i64 noundef 1) #18
  call void @create_iv(ptr noundef %85, ptr noundef %86, ptr noundef null, ptr noundef %0, ptr noundef nonnull %9, i8 noundef zeroext %2, ptr noundef nonnull %8, ptr noundef null)
  %87 = load ptr, ptr %8, align 8, !tbaa !35
  %88 = call ptr @get_loop_body_in_dom_order(ptr noundef %0) #18
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #18
  %89 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 6
  %90 = load i32, ptr %89, align 4, !tbaa !196
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %189, label %92

92:                                               ; preds = %81
  %93 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %6, i64 0, i32 1
  %94 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %6, i64 0, i32 2
  %95 = getelementptr inbounds %struct.affine_iv, ptr %4, i64 0, i32 1
  br label %96

96:                                               ; preds = %92, %184
  %97 = phi i64 [ 0, %92 ], [ %185, %184 ]
  %98 = getelementptr inbounds ptr, ptr %88, i64 %97
  %99 = load ptr, ptr %98, align 8, !tbaa !35
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #18
  call void @llvm.experimental.noalias.scope.decl(metadata !197)
  call void @llvm.experimental.noalias.scope.decl(metadata !200)
  %100 = getelementptr inbounds %struct.basic_block_def, ptr %99, i64 0, i32 13
  %101 = load i32, ptr %100, align 8, !tbaa !124, !noalias !203
  %102 = and i32 %101, 512
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %104, label %110

104:                                              ; preds = %96
  %105 = getelementptr inbounds %struct.basic_block_def, ptr %99, i64 0, i32 7
  %106 = load ptr, ptr %105, align 8, !tbaa !46, !noalias !203
  %107 = icmp eq ptr %106, null
  br i1 %107, label %110, label %108

108:                                              ; preds = %104
  %109 = load ptr, ptr %106, align 8, !tbaa !128, !noalias !203
  br label %110

110:                                              ; preds = %108, %104, %96
  %111 = phi ptr [ %109, %108 ], [ null, %104 ], [ null, %96 ]
  %112 = icmp eq ptr %111, null
  br i1 %112, label %115, label %113

113:                                              ; preds = %110
  %114 = load ptr, ptr %111, align 8, !tbaa !130, !noalias !203
  br label %115

115:                                              ; preds = %113, %110
  %116 = phi ptr [ %114, %113 ], [ null, %110 ]
  store ptr %116, ptr %6, align 8, !tbaa !204, !alias.scope !203
  store ptr %111, ptr %93, align 8, !tbaa !206, !alias.scope !203
  store ptr %99, ptr %94, align 8, !tbaa !207, !alias.scope !203
  %117 = icmp eq ptr %116, null
  br i1 %117, label %128, label %118

118:                                              ; preds = %115, %124
  %119 = phi ptr [ %126, %124 ], [ %116, %115 ]
  %120 = load ptr, ptr %119, align 8, !tbaa !116, !noalias !197
  %121 = load i32, ptr %120, align 8, !noalias !197
  %122 = and i32 %121, 255
  %123 = icmp eq i32 %122, 4
  br i1 %123, label %124, label %128

124:                                              ; preds = %118
  %125 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %119, i64 0, i32 2
  %126 = load ptr, ptr %125, align 8, !tbaa !122, !noalias !197
  store ptr %126, ptr %6, align 8, !tbaa !204, !alias.scope !197
  %127 = icmp eq ptr %126, null
  br i1 %127, label %128, label %118, !llvm.loop !208

128:                                              ; preds = %124, %118, %115
  %129 = getelementptr inbounds %struct.basic_block_def, ptr %99, i64 0, i32 3
  %130 = load ptr, ptr %129, align 8, !tbaa !78
  %131 = icmp eq ptr %130, %0
  br i1 %131, label %132, label %184

132:                                              ; preds = %128
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #18
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %7, ptr noundef %99) #18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %7, i64 24, i1 false), !tbaa.struct !115
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #18
  %133 = load ptr, ptr %5, align 8
  %134 = icmp eq ptr %133, null
  br i1 %134, label %184, label %135

135:                                              ; preds = %132, %181
  %136 = phi ptr [ %182, %181 ], [ %133, %132 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #18
  %137 = load ptr, ptr %136, align 8, !tbaa !116
  %138 = getelementptr inbounds %struct.gimple_statement_phi, ptr %137, i64 0, i32 3
  %139 = load ptr, ptr %138, align 8, !tbaa !35
  %140 = call zeroext i8 @is_gimple_reg(ptr noundef %139) #18
  %141 = icmp eq i8 %140, 0
  %142 = icmp eq ptr %139, %87
  %143 = or i1 %142, %141
  br i1 %143, label %144, label %148

144:                                              ; preds = %135
  %145 = load ptr, ptr %5, align 8, !tbaa !204
  %146 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %145, i64 0, i32 2
  %147 = load ptr, ptr %146, align 8, !tbaa !122
  store ptr %147, ptr %5, align 8, !tbaa !204
  br label %181

148:                                              ; preds = %135
  %149 = call zeroext i8 @simple_iv(ptr noundef %0, ptr noundef %0, ptr noundef %139, ptr noundef nonnull %4, i8 noundef zeroext 1) #18
  %150 = icmp eq i8 %149, 0
  br i1 %150, label %151, label %155

151:                                              ; preds = %148
  %152 = load ptr, ptr %5, align 8, !tbaa !204
  %153 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %152, i64 0, i32 2
  %154 = load ptr, ptr %153, align 8, !tbaa !122
  store ptr %154, ptr %5, align 8, !tbaa !204
  br label %181

155:                                              ; preds = %148
  call void @remove_phi_node(ptr noundef nonnull %5, i8 noundef zeroext 0) #18
  %156 = getelementptr inbounds %struct.tree_common, ptr %139, i64 0, i32 2
  %157 = load ptr, ptr %156, align 8, !tbaa !46
  %158 = load i64, ptr %157, align 8
  %159 = trunc i64 %158 to i16
  switch i16 %159, label %162 [
    i16 10, label %160
    i16 12, label %160
  ]

160:                                              ; preds = %155, %155
  %161 = load ptr, ptr @sizetype_tab, align 16, !tbaa !35
  br label %162

162:                                              ; preds = %160, %155
  %163 = phi ptr [ %161, %160 ], [ %157, %155 ]
  %164 = load ptr, ptr %95, align 8, !tbaa !209
  %165 = call ptr @unshare_expr(ptr noundef %164) #18
  %166 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %163, ptr noundef %87) #18
  %167 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 65, ptr noundef %163, ptr noundef %165, ptr noundef %166) #18
  %168 = load i64, ptr %157, align 8
  %169 = trunc i64 %168 to i32
  %170 = and i32 %169, 65535
  %171 = icmp eq i32 %170, 10
  %172 = icmp eq i32 %170, 12
  %173 = or i1 %171, %172
  %174 = select i1 %173, i32 66, i32 63
  %175 = load ptr, ptr %4, align 8, !tbaa !210
  %176 = call ptr @unshare_expr(ptr noundef %175) #18
  %177 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef %174, ptr noundef nonnull %157, ptr noundef %176, ptr noundef %167) #18
  %178 = call ptr @force_gimple_operand_gsi(ptr noundef nonnull %6, ptr noundef %177, i8 noundef zeroext 0, ptr noundef null, i8 noundef zeroext 1, i32 noundef 1) #18
  %179 = call ptr @gimple_build_assign_stat(ptr noundef %139, ptr noundef %178) #18
  call void @gsi_insert_before(ptr noundef nonnull %6, ptr noundef %179, i32 noundef 1) #18
  %180 = getelementptr inbounds %struct.tree_ssa_name, ptr %139, i64 0, i32 2
  store ptr %179, ptr %180, align 8, !tbaa !46
  br label %181

181:                                              ; preds = %162, %151, %144
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #18
  %182 = load ptr, ptr %5, align 8
  %183 = icmp eq ptr %182, null
  br i1 %183, label %184, label %135, !llvm.loop !211

184:                                              ; preds = %181, %132, %128
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #18
  %185 = add nuw nsw i64 %97, 1
  %186 = load i32, ptr %89, align 4, !tbaa !196
  %187 = zext i32 %186 to i64
  %188 = icmp ult i64 %185, %187
  br i1 %188, label %96, label %189, !llvm.loop !212

189:                                              ; preds = %184, %81
  call void @free(ptr noundef %88)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #18
  %190 = load ptr, ptr %20, align 8, !tbaa !76
  %191 = call ptr @last_stmt(ptr noundef %190) #18
  %192 = getelementptr inbounds %struct.edge_def, ptr %20, i64 0, i32 7
  %193 = load i32, ptr %192, align 8, !tbaa !165
  %194 = and i32 %193, 1024
  %195 = icmp eq i32 %194, 0
  br i1 %195, label %202, label %196

196:                                              ; preds = %189
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #18
  %197 = load ptr, ptr %20, align 8, !tbaa !76
  call void @extract_true_false_edges_from_block(ptr noundef %197, ptr noundef nonnull %12, ptr noundef nonnull %13) #18
  %198 = load ptr, ptr %12, align 8, !tbaa !35
  %199 = getelementptr inbounds %struct.edge_def, ptr %198, i64 0, i32 7
  store i32 2048, ptr %199, align 8, !tbaa !165
  %200 = load ptr, ptr %13, align 8, !tbaa !35
  %201 = getelementptr inbounds %struct.edge_def, ptr %200, i64 0, i32 7
  store i32 1024, ptr %201, align 8, !tbaa !165
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #18
  br label %202

202:                                              ; preds = %196, %189
  %203 = load i32, ptr %191, align 8
  %204 = and i32 %203, 65535
  %205 = or disjoint i32 %204, 6356992
  store i32 %205, ptr %191, align 8
  %206 = load ptr, ptr %8, align 8, !tbaa !35
  %207 = and i32 %203, 255
  %208 = add nsw i32 %207, -10
  %209 = icmp ult i32 %208, -9
  br i1 %209, label %214, label %210

210:                                              ; preds = %202
  %211 = getelementptr inbounds %struct.gimple_statement_base, ptr %191, i64 0, i32 3
  %212 = load i32, ptr %211, align 4, !tbaa !46
  %213 = icmp eq i32 %212, 0
  br i1 %213, label %214, label %215

214:                                              ; preds = %210, %202
  call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 1665, ptr noundef nonnull @.str.2) #18
  br label %215

215:                                              ; preds = %214, %210
  %216 = load i32, ptr %191, align 8
  %217 = and i32 %216, 255
  %218 = zext nneg i32 %217 to i64
  %219 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %218
  %220 = load i32, ptr %219, align 4, !tbaa !50
  %221 = zext i32 %220 to i64
  %222 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %221
  %223 = load i64, ptr %222, align 8, !tbaa !93
  %224 = icmp eq i64 %223, 0
  br i1 %224, label %225, label %226

225:                                              ; preds = %215
  call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 1622, ptr noundef nonnull @.str.2) #18
  br label %226

226:                                              ; preds = %215, %225
  %227 = getelementptr inbounds i8, ptr %191, i64 %223
  store ptr %206, ptr %227, align 8, !tbaa !35
  %228 = load ptr, ptr %1, align 8, !tbaa !35
  %229 = load i32, ptr %191, align 8
  %230 = and i32 %229, 255
  %231 = add nsw i32 %230, -10
  %232 = icmp ult i32 %231, -9
  br i1 %232, label %237, label %233

233:                                              ; preds = %226
  %234 = getelementptr inbounds %struct.gimple_statement_base, ptr %191, i64 0, i32 3
  %235 = load i32, ptr %234, align 4, !tbaa !46
  %236 = icmp ugt i32 %235, 1
  br i1 %236, label %238, label %237

237:                                              ; preds = %233, %226
  call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 1665, ptr noundef nonnull @.str.2) #18
  br label %238

238:                                              ; preds = %237, %233
  %239 = load i32, ptr %191, align 8
  %240 = and i32 %239, 255
  %241 = zext nneg i32 %240 to i64
  %242 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %241
  %243 = load i32, ptr %242, align 4, !tbaa !50
  %244 = zext i32 %243 to i64
  %245 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %244
  %246 = load i64, ptr %245, align 8, !tbaa !93
  %247 = icmp eq i64 %246, 0
  br i1 %247, label %248, label %249

248:                                              ; preds = %238
  call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 1622, ptr noundef nonnull @.str.2) #18
  br label %249

249:                                              ; preds = %238, %248
  %250 = getelementptr inbounds i8, ptr %191, i64 %246
  %251 = getelementptr inbounds ptr, ptr %250, i64 1
  store ptr %228, ptr %251, align 8, !tbaa !35
  %252 = load i32, ptr %191, align 8
  %253 = and i32 %252, 255
  %254 = add nsw i32 %253, -10
  %255 = icmp ult i32 %254, -9
  br i1 %255, label %257, label %256

256:                                              ; preds = %249
  call void @gimple_set_modified(ptr noundef nonnull %191, i8 noundef zeroext 1) #18
  call void @update_stmt_operands(ptr noundef nonnull %191) #18
  br label %257

257:                                              ; preds = %249, %256
  %258 = load ptr, ptr %8, align 8, !tbaa !35
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #18
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %9) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #18
  ret ptr %258
}

declare zeroext i8 @is_gimple_reg(ptr noundef) local_unnamed_addr #3

declare ptr @build_int_cst_type(ptr noundef, i64 noundef) local_unnamed_addr #3

declare ptr @build_int_cst(ptr noundef, i64 noundef) local_unnamed_addr #3

declare void @extract_true_false_edges_from_block(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @make_ssa_name_fn(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @bitmap_set_bit(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc void @find_uses_to_rename_bb(ptr noundef %0, ptr nocapture noundef %1, ptr noundef %2) unnamed_addr #9 !prof !34 {
  %4 = alloca %struct.gimple_stmt_iterator, align 8
  %5 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  br label %6

6:                                                ; preds = %53, %3
  %7 = phi i32 [ 0, %3 ], [ %54, %53 ]
  %8 = load ptr, ptr %5, align 8, !tbaa !35
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %6
  %11 = load i32, ptr %8, align 8, !tbaa !74
  br label %12

12:                                               ; preds = %10, %6
  %13 = phi i32 [ %11, %10 ], [ 0, %6 ]
  %14 = icmp eq i32 %13, %7
  br i1 %14, label %19, label %15

15:                                               ; preds = %12
  %16 = zext i32 %7 to i64
  %17 = getelementptr inbounds %struct.VEC_edge_base, ptr %8, i64 0, i32 2, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !35
  br label %19

19:                                               ; preds = %12, %15
  %20 = phi ptr [ %18, %15 ], [ null, %12 ]
  br i1 %14, label %55, label %21

21:                                               ; preds = %19
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #18
  %22 = getelementptr inbounds %struct.edge_def, ptr %20, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !108
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %4, ptr noundef %23) #18
  %24 = load ptr, ptr %4, align 8, !tbaa.struct !115
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #18
  %25 = icmp eq ptr %24, null
  br i1 %25, label %44, label %26

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.edge_def, ptr %20, i64 0, i32 6
  br label %28

28:                                               ; preds = %26, %36
  %29 = phi ptr [ %24, %26 ], [ %42, %36 ]
  %30 = load ptr, ptr %29, align 8, !tbaa !116
  %31 = load i32, ptr %27, align 4, !tbaa !118
  %32 = getelementptr inbounds %struct.gimple_statement_phi, ptr %30, i64 0, i32 1
  %33 = load i32, ptr %32, align 8, !tbaa !46
  %34 = icmp ult i32 %33, %31
  br i1 %34, label %35, label %36

35:                                               ; preds = %28
  call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 3103, ptr noundef nonnull @.str.2) #18
  br label %36

36:                                               ; preds = %28, %35
  %37 = zext i32 %31 to i64
  %38 = getelementptr inbounds %struct.gimple_statement_phi, ptr %30, i64 0, i32 4, i64 %37, i32 0, i32 3
  %39 = load ptr, ptr %38, align 8, !tbaa !119
  %40 = load ptr, ptr %39, align 8, !tbaa !35
  call fastcc void @find_uses_to_rename_use(ptr noundef %0, ptr noundef %40, ptr noundef %1, ptr noundef %2)
  %41 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %29, i64 0, i32 2
  %42 = load ptr, ptr %41, align 8, !tbaa !122
  %43 = icmp eq ptr %42, null
  br i1 %43, label %44, label %28, !llvm.loop !213

44:                                               ; preds = %36, %21
  %45 = load ptr, ptr %5, align 8, !tbaa !35
  %46 = icmp eq ptr %45, null
  br i1 %46, label %49, label %47

47:                                               ; preds = %44
  %48 = load i32, ptr %45, align 8, !tbaa !74
  br label %49

49:                                               ; preds = %47, %44
  %50 = phi i32 [ %48, %47 ], [ 0, %44 ]
  %51 = icmp ult i32 %7, %50
  br i1 %51, label %53, label %52

52:                                               ; preds = %49
  call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 738, ptr noundef nonnull @.str.2) #18
  br label %53

53:                                               ; preds = %49, %52
  %54 = add i32 %7, 1
  br label %6, !llvm.loop !214

55:                                               ; preds = %19
  %56 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 13
  %57 = load i32, ptr %56, align 8, !tbaa !124, !noalias !215
  %58 = and i32 %57, 512
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %55
  %61 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %62 = load ptr, ptr %61, align 8, !tbaa !46, !noalias !215
  %63 = icmp eq ptr %62, null
  br i1 %63, label %66, label %64

64:                                               ; preds = %60
  %65 = load ptr, ptr %62, align 8, !tbaa !128, !noalias !215
  br label %66

66:                                               ; preds = %64, %60, %55
  %67 = phi ptr [ %65, %64 ], [ null, %60 ], [ null, %55 ]
  %68 = icmp eq ptr %67, null
  br i1 %68, label %71, label %69

69:                                               ; preds = %66
  %70 = load ptr, ptr %67, align 8, !tbaa !130, !noalias !215
  br label %71

71:                                               ; preds = %66, %69
  %72 = phi ptr [ %70, %69 ], [ null, %66 ]
  %73 = icmp eq ptr %72, null
  br i1 %73, label %119, label %74

74:                                               ; preds = %71, %115
  %75 = phi ptr [ %117, %115 ], [ %72, %71 ]
  %76 = load ptr, ptr %75, align 8, !tbaa !116
  %77 = getelementptr inbounds %struct.gimple_statement_base, ptr %76, i64 0, i32 4
  %78 = load ptr, ptr %77, align 8, !tbaa !46
  %79 = load i32, ptr %76, align 8
  %80 = and i32 %79, 255
  %81 = icmp eq i32 %80, 2
  br i1 %81, label %115, label %82

82:                                               ; preds = %74
  %83 = add nsw i32 %80, -10
  %84 = icmp ult i32 %83, -9
  br i1 %84, label %88, label %85

85:                                               ; preds = %82
  %86 = getelementptr inbounds %struct.gimple_statement_with_ops_base, ptr %76, i64 0, i32 2
  %87 = load ptr, ptr %86, align 8, !tbaa !46
  br label %88

88:                                               ; preds = %85, %82
  %89 = phi ptr [ %87, %85 ], [ null, %82 ]
  %90 = icmp eq ptr %89, null
  br i1 %90, label %96, label %91

91:                                               ; preds = %88
  %92 = getelementptr inbounds %struct.use_optype_d, ptr %89, i64 0, i32 1, i32 3
  %93 = load ptr, ptr %92, align 8, !tbaa !119
  %94 = load ptr, ptr %93, align 8, !tbaa !35
  %95 = load ptr, ptr %89, align 8, !tbaa !132
  br label %96

96:                                               ; preds = %91, %88
  %97 = phi ptr [ %95, %91 ], [ %89, %88 ]
  %98 = phi i8 [ 0, %91 ], [ 1, %88 ]
  %99 = phi ptr [ %94, %91 ], [ null, %88 ]
  br i1 %90, label %115, label %100

100:                                              ; preds = %96, %110
  %101 = phi ptr [ %113, %110 ], [ %99, %96 ]
  %102 = phi i8 [ %112, %110 ], [ %98, %96 ]
  %103 = phi ptr [ %111, %110 ], [ %97, %96 ]
  call fastcc void @find_uses_to_rename_use(ptr noundef %78, ptr noundef %101, ptr noundef %1, ptr noundef %2)
  %104 = icmp eq ptr %103, null
  br i1 %104, label %110, label %105

105:                                              ; preds = %100
  %106 = getelementptr inbounds %struct.use_optype_d, ptr %103, i64 0, i32 1, i32 3
  %107 = load ptr, ptr %106, align 8, !tbaa !119
  %108 = load ptr, ptr %107, align 8, !tbaa !35
  %109 = load ptr, ptr %103, align 8, !tbaa !132
  br label %110

110:                                              ; preds = %100, %105
  %111 = phi ptr [ %109, %105 ], [ %103, %100 ]
  %112 = phi i8 [ %102, %105 ], [ 1, %100 ]
  %113 = phi ptr [ %108, %105 ], [ null, %100 ]
  %114 = icmp eq i8 %112, 0
  br i1 %114, label %100, label %115, !llvm.loop !218

115:                                              ; preds = %110, %96, %74
  %116 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %75, i64 0, i32 2
  %117 = load ptr, ptr %116, align 8, !tbaa !122
  %118 = icmp eq ptr %117, null
  br i1 %118, label %119, label %74, !llvm.loop !219

119:                                              ; preds = %115, %71
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal fastcc void @find_uses_to_rename_use(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2, ptr noundef %3) unnamed_addr #9 !prof !34 {
  %5 = load i64, ptr %1, align 8
  %6 = and i64 %5, 65535
  %7 = icmp eq i64 %6, 141
  br i1 %7, label %8, label %52

8:                                                ; preds = %4
  %9 = tail call zeroext i8 @is_gimple_reg(ptr noundef nonnull %1) #18
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %52, label %11

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 3
  %13 = load i32, ptr %12, align 8, !tbaa !46
  %14 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !46
  %16 = getelementptr inbounds %struct.gimple_statement_base, ptr %15, i64 0, i32 4
  %17 = load ptr, ptr %16, align 8, !tbaa !46
  %18 = icmp eq ptr %17, null
  br i1 %18, label %52, label %19

19:                                               ; preds = %11
  %20 = getelementptr inbounds %struct.basic_block_def, ptr %17, i64 0, i32 3
  %21 = load ptr, ptr %20, align 8, !tbaa !78
  %22 = getelementptr inbounds %struct.loop, ptr %21, i64 0, i32 7
  %23 = load ptr, ptr %22, align 8, !tbaa !220
  %24 = icmp eq ptr %23, null
  br i1 %24, label %27, label %25

25:                                               ; preds = %19
  %26 = load i32, ptr %23, align 8, !tbaa !65
  br label %27

27:                                               ; preds = %25, %19
  %28 = phi i32 [ %26, %25 ], [ 0, %19 ]
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %52, label %30

30:                                               ; preds = %27
  %31 = add i32 %28, -1
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %23, i64 0, i32 2, i64 %32
  %34 = load ptr, ptr %33, align 8, !tbaa !35
  %35 = icmp eq ptr %34, null
  br i1 %35, label %52, label %36

36:                                               ; preds = %30
  %37 = tail call zeroext i8 @flow_bb_inside_loop_p(ptr noundef %21, ptr noundef %0) #18
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %39, label %52

39:                                               ; preds = %36
  %40 = zext i32 %13 to i64
  %41 = getelementptr inbounds ptr, ptr %2, i64 %40
  %42 = load ptr, ptr %41, align 8, !tbaa !35
  %43 = icmp eq ptr %42, null
  br i1 %43, label %44, label %46

44:                                               ; preds = %39
  %45 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #18
  store ptr %45, ptr %41, align 8, !tbaa !35
  br label %46

46:                                               ; preds = %44, %39
  %47 = load ptr, ptr %41, align 8, !tbaa !35
  %48 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %49 = load i32, ptr %48, align 8, !tbaa !79
  %50 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %47, i32 noundef %49) #18
  %51 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %3, i32 noundef %13) #18
  br label %52

52:                                               ; preds = %27, %36, %30, %11, %8, %4, %46
  ret void
}

declare zeroext i8 @bitmap_clear_bit(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @compute_global_livein(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @find_common_loop(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @create_new_def_for(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @add_phi_args_after_copy_bb(ptr noundef) local_unnamed_addr #3

declare ptr @lower_bound_in_type(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @upper_bound_in_type(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @tree_int_cst_sign_bit(ptr noundef) local_unnamed_addr #3

declare i32 @integer_zerop(ptr noundef) local_unnamed_addr #3

declare ptr @fold_build2_stat_loc(i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @invert_truthvalue_loc(i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @unshare_expr(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @is_gimple_condexpr(ptr noundef) local_unnamed_addr #3

declare ptr @first_dom_son(i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @next_dom_son(i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @gimple_set_modified(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

declare void @update_stmt_operands(ptr noundef) local_unnamed_addr #3

declare ptr @get_loop_body_in_dom_order(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @simple_iv(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

declare void @remove_phi_node(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

declare ptr @force_gimple_operand_gsi(ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #3

declare ptr @gimple_build_assign_stat(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #14

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #15

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #15

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #15

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #17

attributes #0 = { cold inlinehint nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold inlinehint mustprogress nofree nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #13 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #15 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #18 = { nounwind }

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
!54 = !{!55, !36, i64 8}
!55 = !{!"loop", !41, i64 0, !41, i64 4, !36, i64 8, !36, i64 16, !56, i64 24, !41, i64 32, !41, i64 36, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !57, i64 80, !57, i64 96, !37, i64 112, !37, i64 113, !41, i64 116, !36, i64 120, !36, i64 128, !37, i64 136, !36, i64 144}
!56 = !{!"lpt_decision", !41, i64 0, !41, i64 4}
!57 = !{!"", !42, i64 0, !42, i64 8}
!58 = !{!"function_entry_count", i64 152}
!59 = !{!60, !36, i64 32}
!60 = !{!"function", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !36, i64 96, !41, i64 104, !41, i64 108, !41, i64 112, !41, i64 116, !41, i64 120, !41, i64 124, !36, i64 128, !41, i64 136, !41, i64 137, !41, i64 138, !41, i64 138, !41, i64 138, !41, i64 138, !41, i64 138, !41, i64 138, !41, i64 138, !41, i64 139, !41, i64 139, !41, i64 139, !41, i64 139, !41, i64 139, !41, i64 139, !41, i64 139}
!61 = !{!62, !41, i64 0}
!62 = !{!"loops", !41, i64 0, !36, i64 8, !36, i64 16, !36, i64 24}
!63 = !{!62, !36, i64 8}
!64 = !{!"branch_weights", i32 0, i32 152}
!65 = !{!66, !41, i64 0}
!66 = !{!"VEC_loop_p_base", !41, i64 0, !41, i64 4, !37, i64 8}
!67 = !{!"branch_weights", i32 152, i32 0}
!68 = !{!60, !36, i64 8}
!69 = !{!70, !36, i64 0}
!70 = !{!"control_flow_graph", !36, i64 0, !36, i64 8, !36, i64 16, !41, i64 24, !41, i64 28, !41, i64 32, !36, i64 40, !41, i64 48, !37, i64 52, !37, i64 60, !41, i64 68, !41, i64 72}
!71 = !{!72, !36, i64 56}
!72 = !{!"basic_block_def", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !36, i64 48, !36, i64 56, !37, i64 64, !42, i64 72, !41, i64 80, !41, i64 84, !41, i64 88, !41, i64 92, !41, i64 96}
!73 = !{!70, !36, i64 8}
!74 = !{!75, !41, i64 0}
!75 = !{!"VEC_edge_base", !41, i64 0, !41, i64 4, !37, i64 8}
!76 = !{!77, !36, i64 0}
!77 = !{!"edge_def", !36, i64 0, !36, i64 8, !37, i64 16, !36, i64 24, !36, i64 32, !41, i64 40, !41, i64 44, !41, i64 48, !41, i64 52, !42, i64 56}
!78 = !{!72, !36, i64 24}
!79 = !{!72, !41, i64 80}
!80 = distinct !{!80, !52, !53}
!81 = distinct !{!81, !52, !53}
!82 = !{!60, !36, i64 24}
!83 = !{!84, !36, i64 16}
!84 = !{!"gimple_df", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !85, i64 32, !85, i64 48, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !41, i64 96, !86, i64 104}
!85 = !{!"pt_solution", !41, i64 0, !41, i64 0, !41, i64 0, !41, i64 0, !41, i64 0, !41, i64 0, !36, i64 8}
!86 = !{!"ssa_operands", !36, i64 0, !41, i64 8, !41, i64 12, !37, i64 16, !36, i64 24, !36, i64 32}
!87 = !{!88, !41, i64 0}
!88 = !{!"VEC_tree_base", !41, i64 0, !41, i64 4, !37, i64 8}
!89 = !{!90, !36, i64 0}
!90 = !{!"bitmap_head_def", !36, i64 0, !36, i64 8, !41, i64 16, !36, i64 24}
!91 = !{!92, !41, i64 16}
!92 = !{!"bitmap_element_def", !36, i64 0, !36, i64 8, !41, i64 16, !37, i64 24}
!93 = !{!42, !42, i64 0}
!94 = distinct !{!94, !52, !53}
!95 = distinct !{!95, !52, !53}
!96 = !{!92, !36, i64 0}
!97 = distinct !{!97, !53}
!98 = !{!70, !36, i64 16}
!99 = distinct !{!99, !52, !53}
!100 = distinct !{!100, !52, !53}
!101 = distinct !{!101, !53}
!102 = distinct !{!102, !52, !53}
!103 = distinct !{!103, !52, !53}
!104 = distinct !{!104, !52, !53}
!105 = distinct !{!105, !52, !53}
!106 = distinct !{!106, !52, !53}
!107 = distinct !{!107, !53}
!108 = !{!77, !36, i64 8}
!109 = distinct !{!109, !52, !53}
!110 = distinct !{!110, !52, !53}
!111 = distinct !{!111, !52, !53}
!112 = distinct !{!112, !52, !53}
!113 = distinct !{!113, !52, !53}
!114 = distinct !{!114, !52, !53}
!115 = !{i64 0, i64 8, !35, i64 8, i64 8, !35, i64 16, i64 8, !35}
!116 = !{!117, !36, i64 0}
!117 = !{!"gimple_seq_node_d", !36, i64 0, !36, i64 8, !36, i64 16}
!118 = !{!77, !41, i64 44}
!119 = !{!120, !36, i64 24}
!120 = !{!"ssa_use_operand_d", !36, i64 0, !36, i64 8, !37, i64 16, !36, i64 24}
!121 = distinct !{!121, !52, !53}
!122 = !{!117, !36, i64 16}
!123 = distinct !{!123, !52, !53}
!124 = !{!72, !41, i64 96}
!125 = !{!126}
!126 = distinct !{!126, !127, !"gsi_start_bb: argument 0"}
!127 = distinct !{!127, !"gsi_start_bb"}
!128 = !{!129, !36, i64 0}
!129 = !{!"gimple_bb_info", !36, i64 0, !36, i64 8}
!130 = !{!131, !36, i64 0}
!131 = !{!"gimple_seq_d", !36, i64 0, !36, i64 8, !36, i64 16}
!132 = !{!133, !36, i64 0}
!133 = !{!"use_optype_d", !36, i64 0, !120, i64 8}
!134 = distinct !{!134, !52, !53}
!135 = distinct !{!135, !52, !53}
!136 = !{!72, !36, i64 8}
!137 = !{!138, !41, i64 40}
!138 = !{!"phi_arg_d", !120, i64 0, !36, i64 32, !41, i64 40}
!139 = !{!120, !36, i64 0}
!140 = !{!120, !36, i64 8}
!141 = distinct !{!141, !52, !53}
!142 = !{!55, !36, i64 16}
!143 = !{!72, !36, i64 0}
!144 = !{!145}
!145 = distinct !{!145, !146, !"gsi_last_bb: argument 0"}
!146 = distinct !{!146, !"gsi_last_bb"}
!147 = !{!148}
!148 = distinct !{!148, !149, !"gsi_last_bb: argument 0"}
!149 = distinct !{!149, !"gsi_last_bb"}
!150 = !{!131, !36, i64 8}
!151 = !{}
!152 = !{!70, !41, i64 32}
!153 = distinct !{!153, !52, !53}
!154 = distinct !{!154, !52, !53}
!155 = distinct !{!155, !52, !53}
!156 = !{!157, !41, i64 72}
!157 = !{!"tree_niter_desc", !36, i64 0, !36, i64 8, !36, i64 16, !57, i64 24, !158, i64 40, !36, i64 64, !41, i64 72}
!158 = !{!"", !36, i64 0, !36, i64 8, !37, i64 16}
!159 = !{!157, !36, i64 8}
!160 = !{!157, !36, i64 40}
!161 = !{!157, !36, i64 48}
!162 = !{!157, !36, i64 64}
!163 = !{!164, !41, i64 8}
!164 = !{!"param_info", !36, i64 0, !41, i64 8, !37, i64 12, !41, i64 16, !41, i64 20, !36, i64 24}
!165 = !{!77, !41, i64 48}
!166 = !{!77, !41, i64 52}
!167 = !{!168}
!168 = distinct !{!168, !169, !"gsi_last_bb: argument 0"}
!169 = distinct !{!169, !"gsi_last_bb"}
!170 = !{i64 0, i64 8, !35, i64 8, i64 8, !35}
!171 = !{i64 0, i64 8, !35}
!172 = !{!77, !42, i64 56}
!173 = distinct !{!173, !52, !53}
!174 = !{!175, !36, i64 0}
!175 = !{!"simple_bitmap_def", !36, i64 0, !41, i64 8, !41, i64 12, !37, i64 16}
!176 = !{i8 0, i8 2}
!177 = distinct !{!177, !52, !53}
!178 = !{!72, !41, i64 88}
!179 = !{!72, !42, i64 72}
!180 = !{!181}
!181 = distinct !{!181, !182, !"gsi_last_bb: argument 0"}
!182 = distinct !{!182, !"gsi_last_bb"}
!183 = distinct !{!183, !52, !53}
!184 = distinct !{!184, !52, !53}
!185 = !{!186, !36, i64 456}
!186 = !{!"lang_hooks", !36, i64 0, !42, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !36, i64 112, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !36, i64 152, !36, i64 160, !36, i64 168, !36, i64 176, !36, i64 184, !36, i64 192, !36, i64 200, !36, i64 208, !36, i64 216, !36, i64 224, !36, i64 232, !187, i64 240, !188, i64 248, !189, i64 256, !190, i64 272, !191, i64 432, !192, i64 560, !36, i64 584, !36, i64 592, !36, i64 600, !36, i64 608, !36, i64 616, !36, i64 624, !36, i64 632, !36, i64 640, !36, i64 648, !36, i64 656, !36, i64 664, !37, i64 672}
!187 = !{!"lang_hooks_for_tree_inlining", !36, i64 0}
!188 = !{!"lang_hooks_for_callgraph", !36, i64 0}
!189 = !{!"lang_hooks_for_tree_dump", !36, i64 0, !36, i64 8}
!190 = !{!"lang_hooks_for_decls", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !36, i64 112, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !36, i64 152}
!191 = !{!"lang_hooks_for_types", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !36, i64 112, !37, i64 120}
!192 = !{!"lang_hooks_for_lto", !36, i64 0, !36, i64 8, !36, i64 16}
!193 = !{!194}
!194 = distinct !{!194, !195, !"gsi_last_bb: argument 0"}
!195 = distinct !{!195, !"gsi_last_bb"}
!196 = !{!55, !41, i64 36}
!197 = !{!198}
!198 = distinct !{!198, !199, !"gsi_after_labels: argument 0"}
!199 = distinct !{!199, !"gsi_after_labels"}
!200 = !{!201}
!201 = distinct !{!201, !202, !"gsi_start_bb: argument 0"}
!202 = distinct !{!202, !"gsi_start_bb"}
!203 = !{!201, !198}
!204 = !{!205, !36, i64 0}
!205 = !{!"", !36, i64 0, !36, i64 8, !36, i64 16}
!206 = !{!205, !36, i64 8}
!207 = !{!205, !36, i64 16}
!208 = distinct !{!208, !52, !53}
!209 = !{!158, !36, i64 8}
!210 = !{!158, !36, i64 0}
!211 = distinct !{!211, !52, !53}
!212 = distinct !{!212, !52, !53}
!213 = distinct !{!213, !52, !53}
!214 = distinct !{!214, !52, !53}
!215 = !{!216}
!216 = distinct !{!216, !217, !"gsi_start_bb: argument 0"}
!217 = distinct !{!217, !"gsi_start_bb"}
!218 = distinct !{!218, !52, !53}
!219 = distinct !{!219, !52, !53}
!220 = !{!55, !36, i64 40}
