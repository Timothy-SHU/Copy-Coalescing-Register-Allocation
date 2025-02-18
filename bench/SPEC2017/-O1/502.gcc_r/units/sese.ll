; ModuleID = 'sese.c'
source_filename = "sese.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.bitmap_element_def = type { ptr, ptr, i32, [2 x i64] }
%struct._IO_FILE = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, [1 x i8], ptr, i64, ptr, ptr, ptr, ptr, i64, i32, [20 x i8] }
%struct.rename_map_elt_s = type { ptr, ptr }
%struct.tree_ssa_name = type { %struct.tree_common, ptr, ptr, i32, ptr, %struct.ssa_use_operand_d }
%struct.tree_common = type { %struct.tree_base, ptr, ptr }
%struct.tree_base = type { i64 }
%struct.ssa_use_operand_d = type { ptr, ptr, %union.anon, ptr }
%union.anon = type { ptr }
%struct.ivtype_map_elt_s = type { ptr, ptr }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.basic_block_def = type { ptr, ptr, ptr, ptr, [2 x ptr], ptr, ptr, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%union.basic_block_il_dependent = type { ptr }
%struct.control_flow_graph = type { ptr, ptr, ptr, i32, i32, i32, ptr, i32, [2 x i32], [2 x i32], i32, i32 }
%struct.sese_s = type { ptr, ptr, ptr, ptr, ptr, i8 }
%struct.edge_def = type { ptr, ptr, %union.edge_def_insns, ptr, ptr, i32, i32, i32, i32, i64 }
%union.edge_def_insns = type { ptr }
%struct.loop = type { i32, i32, ptr, ptr, %struct.lpt_decision, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.double_int, %struct.double_int, i8, i8, i32, ptr, ptr, i8, ptr }
%struct.lpt_decision = type { i32, i32 }
%struct.double_int = type { i64, i64 }
%struct.VEC_loop_p_base = type { i32, i32, [1 x ptr] }
%struct.gimple_stmt_iterator = type { ptr, ptr, ptr }
%struct.VEC_edge_base = type { i32, i32, [1 x ptr] }
%struct.gimple_statement_phi = type { %struct.gimple_statement_base, i32, i32, ptr, [1 x %struct.phi_arg_d] }
%struct.gimple_statement_base = type { i32, i32, i32, i32, ptr, ptr }
%struct.phi_arg_d = type { %struct.ssa_use_operand_d, ptr, i32 }
%struct.gimple_seq_node_d = type { ptr, ptr, ptr }
%struct.gimple_statement_with_ops_base = type { %struct.gimple_statement_base, ptr, ptr }
%struct.use_optype_d = type { ptr, %struct.ssa_use_operand_d }
%struct.gimple_df = type { ptr, ptr, ptr, ptr, %struct.pt_solution, %struct.pt_solution, ptr, ptr, ptr, ptr, i8, %struct.ssa_operands }
%struct.pt_solution = type { i8, ptr }
%struct.ssa_operands = type { ptr, i32, i32, i8, ptr, ptr }
%struct.VEC_tree_base = type { i32, i32, [1 x ptr] }
%struct.loops = type { i32, ptr, ptr, ptr }
%struct.VEC_int_base = type { i32, i32, [1 x i32] }
%struct.tree_exp = type { %struct.tree_common, i32, ptr, [1 x ptr] }
%struct.alep = type { ptr, ptr }
%struct.VEC_rename_map_elt_base = type { i32, i32, [1 x ptr] }
%struct.igp = type { ptr, ptr, ptr, ptr }
%struct.def_optype_d = type { ptr, ptr }
%struct.gimple_seq_d = type { ptr, ptr, ptr }
%struct.ifsese_s = type { ptr, ptr, ptr }
%struct.loop_exit = type { ptr, ptr, ptr, ptr }
%struct.simple_bitmap_def = type { ptr, i32, i32, [1 x i64] }
%struct.gimple_statement_with_memory_ops_base = type { %struct.gimple_statement_with_ops_base, ptr, ptr }

@stdout = external local_unnamed_addr global ptr, align 8
@stdin = external local_unnamed_addr global ptr, align 8
@htab_hash_pointer = external local_unnamed_addr global ptr, align 8
@cfun = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [7 x i8] c"sese.c\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"var\00", align 1
@global_trees = external local_unnamed_addr global [131 x ptr], align 16
@stderr = external local_unnamed_addr global ptr, align 8
@.str.4 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c")\0A\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"(%s, \00", align 1
@flag_var_tracking_assignments = external local_unnamed_addr global i32, align 4
@.str.7 = private unnamed_addr constant [21 x i8] c"./tree-flow-inline.h\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"./gimple.h\00", align 1
@gimple_ops_offset_ = external local_unnamed_addr constant [0 x i64], align 8
@gss_for_code_ = external local_unnamed_addr constant [0 x i32], align 4
@bitmap_zero_bits = external local_unnamed_addr global %struct.bitmap_element_def, align 8
@tree_code_length = external local_unnamed_addr constant [0 x i8], align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"./basic-block.h\00", align 1
@tree_code_type = external local_unnamed_addr constant [0 x i32], align 4
@gimple_rhs_class_table = external local_unnamed_addr constant [0 x i8], align 1

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
  %8 = tail call i32 @__uflow(ptr noundef %0) #19
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
  %8 = tail call i32 @__uflow(ptr noundef %0) #19
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
  %8 = tail call i32 @__uflow(ptr noundef %1) #19
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
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #19
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
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #19
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
  %10 = tail call i32 @__overflow(ptr noundef %2, i32 noundef %9) #19
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
  %4 = tail call i64 @__getdelim(ptr noundef %0, ptr noundef %1, i32 noundef 10, ptr noundef %2) #19
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
  %5 = tail call ptr @__ctype_tolower_loc() #19
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
  %5 = tail call ptr @__ctype_toupper_loc() #19
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
  %14 = tail call i32 %4(ptr noundef %0, ptr noundef %13) #19
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
define dso_local void @debug_rename_map(ptr noundef %0) local_unnamed_addr #9 !prof !34 {
  tail call void @htab_traverse(ptr noundef %0, ptr noundef nonnull @debug_rename_map_1, ptr noundef null) #19
  ret void
}

declare void @htab_traverse(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal noundef i32 @debug_rename_map_1(ptr nocapture noundef readonly %0, ptr nocapture readnone %1) #9 !prof !34 {
  %3 = load ptr, ptr %0, align 8, !tbaa !35
  %4 = load ptr, ptr @stderr, align 8, !tbaa !35
  %5 = tail call i32 @fputc(i32 40, ptr %4)
  %6 = load ptr, ptr @stderr, align 8, !tbaa !35
  %7 = load ptr, ptr %3, align 8, !tbaa !54
  tail call void @print_generic_expr(ptr noundef %6, ptr noundef %7, i32 noundef 0) #19
  %8 = load ptr, ptr @stderr, align 8, !tbaa !35
  %9 = tail call i64 @fwrite(ptr nonnull @.str.4, i64 2, i64 1, ptr %8) #20
  %10 = load ptr, ptr @stderr, align 8, !tbaa !35
  %11 = getelementptr inbounds %struct.rename_map_elt_s, ptr %3, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !56
  tail call void @print_generic_expr(ptr noundef %10, ptr noundef %12, i32 noundef 0) #19
  %13 = load ptr, ptr @stderr, align 8, !tbaa !35
  %14 = tail call i64 @fwrite(ptr nonnull @.str.5, i64 2, i64 1, ptr %13) #20
  ret i32 1
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @rename_map_elt_info(ptr nocapture noundef readonly %0) local_unnamed_addr #10 !prof !34 {
  %2 = load ptr, ptr %0, align 8, !tbaa !54
  %3 = getelementptr inbounds %struct.tree_ssa_name, ptr %2, i64 0, i32 3
  %4 = load i32, ptr %3, align 8, !tbaa !46
  ret i32 %4
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @eq_rename_map_elts(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #11 !prof !34 {
  %3 = load ptr, ptr %0, align 8, !tbaa !54
  %4 = load ptr, ptr %1, align 8, !tbaa !54
  %5 = icmp eq ptr %3, %4
  %6 = zext i1 %5 to i32
  ret i32 %6
}

; Function Attrs: cold nounwind uwtable
define dso_local void @debug_ivtype_map(ptr noundef %0) local_unnamed_addr #9 !prof !34 {
  tail call void @htab_traverse(ptr noundef %0, ptr noundef nonnull @debug_ivtype_map_1, ptr noundef null) #19
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal noundef i32 @debug_ivtype_map_1(ptr nocapture noundef readonly %0, ptr nocapture readnone %1) #9 !prof !34 {
  %3 = load ptr, ptr %0, align 8, !tbaa !35
  %4 = load ptr, ptr @stderr, align 8, !tbaa !35
  %5 = getelementptr inbounds %struct.ivtype_map_elt_s, ptr %3, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !57
  %7 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef nonnull @.str.6, ptr noundef %6) #20
  %8 = load ptr, ptr @stderr, align 8, !tbaa !35
  %9 = load ptr, ptr %3, align 8, !tbaa !59
  tail call void @print_generic_expr(ptr noundef %8, ptr noundef %9, i32 noundef 0) #19
  %10 = load ptr, ptr @stderr, align 8, !tbaa !35
  %11 = tail call i64 @fwrite(ptr nonnull @.str.5, i64 2, i64 1, ptr %10) #20
  ret i32 1
}

; Function Attrs: cold nounwind uwtable
define dso_local i32 @ivtype_map_elt_info(ptr nocapture noundef readonly %0) local_unnamed_addr #9 !prof !34 {
  %2 = load ptr, ptr @htab_hash_pointer, align 8, !tbaa !35
  %3 = getelementptr inbounds %struct.ivtype_map_elt_s, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !57
  %5 = tail call i32 %2(ptr noundef %4) #19
  ret i32 %5
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @eq_ivtype_map_elts(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #11 !prof !34 {
  %3 = getelementptr inbounds %struct.ivtype_map_elt_s, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !57
  %5 = getelementptr inbounds %struct.ivtype_map_elt_s, ptr %1, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !57
  %7 = icmp eq ptr %4, %6
  %8 = zext i1 %7 to i32
  ret i32 %8
}

; Function Attrs: cold nounwind uwtable
define dso_local void @build_sese_loop_nests(ptr nocapture noundef %0) local_unnamed_addr #9 !prof !34 {
  %2 = load ptr, ptr @cfun, align 8, !tbaa !35
  %3 = getelementptr inbounds %struct.function, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !60
  %5 = load ptr, ptr %4, align 8, !tbaa !62
  %6 = getelementptr inbounds %struct.basic_block_def, ptr %5, i64 0, i32 6
  %7 = load ptr, ptr %6, align 8, !tbaa !64
  %8 = getelementptr inbounds %struct.control_flow_graph, ptr %4, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !66
  %10 = icmp eq ptr %7, %9
  br i1 %10, label %15, label %11

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.sese_s, ptr %0, i64 0, i32 1
  %13 = getelementptr inbounds %struct.sese_s, ptr %0, i64 0, i32 3
  %14 = getelementptr inbounds %struct.sese_s, ptr %0, i64 0, i32 4
  br label %17

15:                                               ; preds = %89, %1
  %16 = getelementptr inbounds %struct.sese_s, ptr %0, i64 0, i32 4
  br label %98

17:                                               ; preds = %11, %89
  %18 = phi ptr [ %7, %11 ], [ %91, %89 ]
  %19 = load ptr, ptr %0, align 8, !tbaa !67
  %20 = getelementptr inbounds %struct.edge_def, ptr %19, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !69
  %22 = load ptr, ptr %12, align 8, !tbaa !71
  %23 = getelementptr inbounds %struct.edge_def, ptr %22, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !69
  %25 = tail call zeroext i8 @dominated_by_p(i32 noundef 1, ptr noundef %18, ptr noundef %21) #19
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %34, label %27

27:                                               ; preds = %17
  %28 = tail call zeroext i8 @dominated_by_p(i32 noundef 1, ptr noundef %18, ptr noundef %24) #19
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %27
  %31 = tail call zeroext i8 @dominated_by_p(i32 noundef 1, ptr noundef %21, ptr noundef %24) #19
  %32 = icmp ne i8 %31, 0
  %33 = zext i1 %32 to i8
  br label %34

34:                                               ; preds = %17, %27, %30
  %35 = phi i8 [ 0, %17 ], [ 1, %27 ], [ %33, %30 ]
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %89, label %37

37:                                               ; preds = %34
  %38 = getelementptr inbounds %struct.basic_block_def, ptr %18, i64 0, i32 3
  %39 = load ptr, ptr %38, align 8, !tbaa !72
  %40 = getelementptr inbounds %struct.loop, ptr %39, i64 0, i32 2
  %41 = load ptr, ptr %40, align 8, !tbaa !73
  %42 = icmp eq ptr %41, %18
  br i1 %42, label %43, label %89

43:                                               ; preds = %37
  %44 = getelementptr inbounds %struct.loop, ptr %39, i64 0, i32 3
  %45 = load ptr, ptr %44, align 8, !tbaa !77
  %46 = load ptr, ptr %0, align 8, !tbaa !67
  %47 = getelementptr inbounds %struct.edge_def, ptr %46, i64 0, i32 1
  %48 = load ptr, ptr %47, align 8, !tbaa !69
  %49 = load ptr, ptr %12, align 8, !tbaa !71
  %50 = getelementptr inbounds %struct.edge_def, ptr %49, i64 0, i32 1
  %51 = load ptr, ptr %50, align 8, !tbaa !69
  %52 = tail call zeroext i8 @dominated_by_p(i32 noundef 1, ptr noundef %45, ptr noundef %48) #19
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %61, label %54

54:                                               ; preds = %43
  %55 = tail call zeroext i8 @dominated_by_p(i32 noundef 1, ptr noundef %45, ptr noundef %51) #19
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %61, label %57

57:                                               ; preds = %54
  %58 = tail call zeroext i8 @dominated_by_p(i32 noundef 1, ptr noundef %48, ptr noundef %51) #19
  %59 = icmp ne i8 %58, 0
  %60 = zext i1 %59 to i8
  br label %61

61:                                               ; preds = %43, %54, %57
  %62 = phi i8 [ 0, %43 ], [ 1, %54 ], [ %60, %57 ]
  %63 = icmp eq i8 %62, 0
  br i1 %63, label %89, label %64

64:                                               ; preds = %61
  %65 = load ptr, ptr %13, align 8, !tbaa !78
  %66 = load i32, ptr %39, align 8, !tbaa !79
  %67 = tail call i32 @bitmap_bit_p(ptr noundef %65, i32 noundef %66) #19
  %68 = and i32 %67, 255
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %89

70:                                               ; preds = %64
  %71 = load ptr, ptr %13, align 8, !tbaa !78
  %72 = load i32, ptr %39, align 8, !tbaa !79
  %73 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %71, i32 noundef %72) #19
  %74 = load ptr, ptr %14, align 8, !tbaa !35
  %75 = icmp eq ptr %74, null
  br i1 %75, label %81, label %76

76:                                               ; preds = %70
  %77 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %74, i64 0, i32 1
  %78 = load i32, ptr %77, align 4, !tbaa !80
  %79 = load i32, ptr %74, align 8, !tbaa !82
  %80 = icmp eq i32 %78, %79
  br i1 %80, label %81, label %83

81:                                               ; preds = %76, %70
  %82 = tail call ptr @vec_heap_p_reserve(ptr noundef %74, i32 noundef 1) #19
  store ptr %82, ptr %14, align 8, !tbaa !35
  br label %83

83:                                               ; preds = %81, %76
  %84 = load ptr, ptr %14, align 8, !tbaa !35
  %85 = load i32, ptr %84, align 8, !tbaa !82
  %86 = add i32 %85, 1
  store i32 %86, ptr %84, align 8, !tbaa !82
  %87 = zext i32 %85 to i64
  %88 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %84, i64 0, i32 2, i64 %87
  store ptr %39, ptr %88, align 8, !tbaa !35
  br label %89

89:                                               ; preds = %83, %64, %37, %61, %34
  %90 = getelementptr inbounds %struct.basic_block_def, ptr %18, i64 0, i32 6
  %91 = load ptr, ptr %90, align 8, !tbaa !64
  %92 = load ptr, ptr @cfun, align 8, !tbaa !35
  %93 = getelementptr inbounds %struct.function, ptr %92, i64 0, i32 1
  %94 = load ptr, ptr %93, align 8, !tbaa !60
  %95 = getelementptr inbounds %struct.control_flow_graph, ptr %94, i64 0, i32 1
  %96 = load ptr, ptr %95, align 8, !tbaa !66
  %97 = icmp eq ptr %91, %96
  br i1 %97, label %15, label %17, !llvm.loop !83

98:                                               ; preds = %126, %15
  %99 = phi i32 [ 0, %15 ], [ %117, %126 ]
  %100 = load ptr, ptr %16, align 8, !tbaa !84
  %101 = icmp eq ptr %100, null
  br i1 %101, label %109, label %102

102:                                              ; preds = %98
  %103 = load i32, ptr %100, align 8, !tbaa !82
  %104 = icmp ugt i32 %103, %99
  br i1 %104, label %105, label %109

105:                                              ; preds = %102
  %106 = zext i32 %99 to i64
  %107 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %100, i64 0, i32 2, i64 %106
  %108 = load ptr, ptr %107, align 8, !tbaa !35
  br label %109

109:                                              ; preds = %98, %102, %105
  %110 = phi ptr [ %108, %105 ], [ null, %102 ], [ null, %98 ]
  %111 = phi i1 [ false, %105 ], [ true, %102 ], [ true, %98 ]
  br i1 %111, label %132, label %112

112:                                              ; preds = %109
  br i1 %101, label %115, label %113

113:                                              ; preds = %112
  %114 = load i32, ptr %100, align 8, !tbaa !82
  br label %115

115:                                              ; preds = %112, %113
  %116 = phi i32 [ %114, %113 ], [ 0, %112 ]
  %117 = add i32 %99, 1
  %118 = icmp eq i32 %116, %117
  br i1 %118, label %132, label %119

119:                                              ; preds = %115
  %120 = zext i32 %117 to i64
  %121 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %100, i64 0, i32 2, i64 %120
  %122 = load ptr, ptr %121, align 8, !tbaa !35
  %123 = load i32, ptr %110, align 8, !tbaa !79
  %124 = load i32, ptr %122, align 8, !tbaa !79
  %125 = icmp sgt i32 %123, %124
  br i1 %125, label %127, label %126

126:                                              ; preds = %119, %127
  br label %98, !llvm.loop !85

127:                                              ; preds = %119
  %128 = zext i32 %99 to i64
  %129 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %100, i64 0, i32 2, i64 %128
  store ptr %122, ptr %129, align 8, !tbaa !35
  %130 = load ptr, ptr %16, align 8, !tbaa !84
  %131 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %130, i64 0, i32 2, i64 %120
  store ptr %110, ptr %131, align 8, !tbaa !35
  br label %126

132:                                              ; preds = %115, %109
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local noundef ptr @new_sese(ptr noundef %0, ptr noundef %1) local_unnamed_addr #9 !prof !34 {
  %3 = tail call ptr @xmalloc(i64 noundef 48) #19
  store ptr %0, ptr %3, align 8, !tbaa !67
  %4 = getelementptr inbounds %struct.sese_s, ptr %3, i64 0, i32 1
  store ptr %1, ptr %4, align 8, !tbaa !71
  %5 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #19
  %6 = getelementptr inbounds %struct.sese_s, ptr %3, i64 0, i32 3
  store ptr %5, ptr %6, align 8, !tbaa !78
  %7 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef 3) #19
  %8 = getelementptr inbounds %struct.sese_s, ptr %3, i64 0, i32 4
  store ptr %7, ptr %8, align 8, !tbaa !84
  %9 = getelementptr inbounds %struct.sese_s, ptr %3, i64 0, i32 5
  store i8 1, ptr %9, align 8, !tbaa !86
  %10 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef 3) #19
  %11 = getelementptr inbounds %struct.sese_s, ptr %3, i64 0, i32 2
  store ptr %10, ptr %11, align 8, !tbaa !87
  ret ptr %3
}

declare ptr @xmalloc(i64 noundef) local_unnamed_addr #3

declare ptr @bitmap_obstack_alloc_stat(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @free_sese(ptr nocapture noundef %0) local_unnamed_addr #9 !prof !34 {
  %2 = getelementptr inbounds %struct.sese_s, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !78
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #19
  store ptr %6, ptr %2, align 8, !tbaa !78
  br label %7

7:                                                ; preds = %5, %1
  %8 = getelementptr inbounds %struct.sese_s, ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !35
  %10 = icmp eq ptr %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %7
  tail call void @free(ptr noundef %9)
  br label %12

12:                                               ; preds = %7, %11
  store ptr null, ptr %8, align 8, !tbaa !35
  %13 = getelementptr inbounds %struct.sese_s, ptr %0, i64 0, i32 4
  %14 = load ptr, ptr %13, align 8, !tbaa !35
  %15 = icmp eq ptr %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %12
  tail call void @free(ptr noundef %14)
  br label %17

17:                                               ; preds = %12, %16
  store ptr null, ptr %13, align 8, !tbaa !35
  tail call void @free(ptr noundef %0)
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #12

; Function Attrs: cold nounwind uwtable
define dso_local void @sese_insert_phis_for_liveouts(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #9 !prof !34 {
  %5 = alloca %struct.gimple_stmt_iterator, align 8
  %6 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #19
  tail call void @update_ssa(i32 noundef 2048) #19
  %7 = load ptr, ptr @cfun, align 8, !tbaa !35
  %8 = getelementptr inbounds %struct.function, ptr %7, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !60
  %10 = load ptr, ptr %9, align 8, !tbaa !62
  %11 = getelementptr inbounds %struct.basic_block_def, ptr %10, i64 0, i32 6
  %12 = load ptr, ptr %11, align 8, !tbaa !64
  %13 = getelementptr inbounds %struct.control_flow_graph, ptr %9, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !66
  %15 = icmp eq ptr %12, %14
  br i1 %15, label %138, label %25

16:                                               ; preds = %134, %93
  %17 = getelementptr inbounds %struct.basic_block_def, ptr %26, i64 0, i32 6
  %18 = load ptr, ptr %17, align 8, !tbaa !64
  %19 = load ptr, ptr @cfun, align 8, !tbaa !35
  %20 = getelementptr inbounds %struct.function, ptr %19, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !60
  %22 = getelementptr inbounds %struct.control_flow_graph, ptr %21, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !66
  %24 = icmp eq ptr %18, %23
  br i1 %24, label %138, label %25, !llvm.loop !88

25:                                               ; preds = %4, %16
  %26 = phi ptr [ %18, %16 ], [ %12, %4 ]
  %27 = getelementptr inbounds %struct.basic_block_def, ptr %26, i64 0, i32 1
  br label %28

28:                                               ; preds = %75, %25
  %29 = phi i32 [ 0, %25 ], [ %76, %75 ]
  %30 = load ptr, ptr %27, align 8, !tbaa !35
  %31 = icmp eq ptr %30, null
  br i1 %31, label %34, label %32

32:                                               ; preds = %28
  %33 = load i32, ptr %30, align 8, !tbaa !89
  br label %34

34:                                               ; preds = %32, %28
  %35 = phi i32 [ %33, %32 ], [ 0, %28 ]
  %36 = icmp eq i32 %35, %29
  br i1 %36, label %41, label %37

37:                                               ; preds = %34
  %38 = zext i32 %29 to i64
  %39 = getelementptr inbounds %struct.VEC_edge_base, ptr %30, i64 0, i32 2, i64 %38
  %40 = load ptr, ptr %39, align 8, !tbaa !35
  br label %41

41:                                               ; preds = %37, %34
  %42 = phi ptr [ %40, %37 ], [ null, %34 ]
  br i1 %36, label %77, label %43

43:                                               ; preds = %41
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #19
  %44 = getelementptr inbounds %struct.edge_def, ptr %42, i64 0, i32 1
  %45 = load ptr, ptr %44, align 8, !tbaa !69
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %5, ptr noundef %45) #19
  %46 = load ptr, ptr %5, align 8, !tbaa.struct !91
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #19
  %47 = icmp eq ptr %46, null
  br i1 %47, label %66, label %48

48:                                               ; preds = %43
  %49 = getelementptr inbounds %struct.edge_def, ptr %42, i64 0, i32 6
  br label %50

50:                                               ; preds = %48, %58
  %51 = phi ptr [ %46, %48 ], [ %64, %58 ]
  %52 = load ptr, ptr %51, align 8, !tbaa !92
  %53 = load i32, ptr %49, align 4, !tbaa !94
  %54 = getelementptr inbounds %struct.gimple_statement_phi, ptr %52, i64 0, i32 1
  %55 = load i32, ptr %54, align 8, !tbaa !46
  %56 = icmp ult i32 %55, %53
  br i1 %56, label %57, label %58

57:                                               ; preds = %50
  call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 3103, ptr noundef nonnull @.str.1) #19
  br label %58

58:                                               ; preds = %57, %50
  %59 = zext i32 %53 to i64
  %60 = getelementptr inbounds %struct.gimple_statement_phi, ptr %52, i64 0, i32 4, i64 %59, i32 0, i32 3
  %61 = load ptr, ptr %60, align 8, !tbaa !95
  %62 = load ptr, ptr %61, align 8, !tbaa !35
  call fastcc void @sese_build_liveouts_use(ptr noundef %0, ptr noundef %6, ptr noundef %26, ptr noundef %62)
  %63 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %51, i64 0, i32 2
  %64 = load ptr, ptr %63, align 8, !tbaa !97
  %65 = icmp eq ptr %64, null
  br i1 %65, label %66, label %50, !llvm.loop !98

66:                                               ; preds = %58, %43
  %67 = load ptr, ptr %27, align 8, !tbaa !35
  %68 = icmp eq ptr %67, null
  br i1 %68, label %71, label %69

69:                                               ; preds = %66
  %70 = load i32, ptr %67, align 8, !tbaa !89
  br label %71

71:                                               ; preds = %69, %66
  %72 = phi i32 [ %70, %69 ], [ 0, %66 ]
  %73 = icmp ult i32 %29, %72
  br i1 %73, label %75, label %74

74:                                               ; preds = %71
  call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 738, ptr noundef nonnull @.str.1) #19
  br label %75

75:                                               ; preds = %74, %71
  %76 = add i32 %29, 1
  br label %28, !llvm.loop !99

77:                                               ; preds = %41
  %78 = getelementptr inbounds %struct.basic_block_def, ptr %26, i64 0, i32 13
  %79 = load i32, ptr %78, align 8, !tbaa !100, !noalias !101
  %80 = and i32 %79, 512
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %88

82:                                               ; preds = %77
  %83 = getelementptr inbounds %struct.basic_block_def, ptr %26, i64 0, i32 7
  %84 = load ptr, ptr %83, align 8, !tbaa !46, !noalias !101
  %85 = icmp eq ptr %84, null
  br i1 %85, label %88, label %86

86:                                               ; preds = %82
  %87 = load ptr, ptr %84, align 8, !tbaa !104, !noalias !101
  br label %88

88:                                               ; preds = %86, %82, %77
  %89 = phi ptr [ %87, %86 ], [ null, %82 ], [ null, %77 ]
  %90 = icmp eq ptr %89, null
  br i1 %90, label %93, label %91

91:                                               ; preds = %88
  %92 = load ptr, ptr %89, align 8, !tbaa !106, !noalias !101
  br label %93

93:                                               ; preds = %91, %88
  %94 = phi ptr [ %92, %91 ], [ null, %88 ]
  %95 = icmp eq ptr %94, null
  br i1 %95, label %16, label %96

96:                                               ; preds = %93, %134
  %97 = phi ptr [ %136, %134 ], [ %94, %93 ]
  %98 = load ptr, ptr %97, align 8, !tbaa !92
  %99 = load i32, ptr %98, align 8
  %100 = and i32 %99, 255
  %101 = icmp eq i32 %100, 2
  br i1 %101, label %134, label %102

102:                                              ; preds = %96
  %103 = add nsw i32 %100, -10
  %104 = icmp ult i32 %103, -9
  br i1 %104, label %108, label %105

105:                                              ; preds = %102
  %106 = getelementptr inbounds %struct.gimple_statement_with_ops_base, ptr %98, i64 0, i32 2
  %107 = load ptr, ptr %106, align 8, !tbaa !46
  br label %108

108:                                              ; preds = %105, %102
  %109 = phi ptr [ %107, %105 ], [ null, %102 ]
  %110 = icmp eq ptr %109, null
  br i1 %110, label %114, label %111

111:                                              ; preds = %108
  %112 = getelementptr inbounds %struct.use_optype_d, ptr %109, i64 0, i32 1
  %113 = load ptr, ptr %109, align 8, !tbaa !108
  br label %114

114:                                              ; preds = %111, %108
  %115 = phi ptr [ %113, %111 ], [ %109, %108 ]
  %116 = phi i8 [ 0, %111 ], [ 1, %108 ]
  %117 = phi ptr [ %112, %111 ], [ null, %108 ]
  br i1 %110, label %134, label %118

118:                                              ; preds = %114, %129
  %119 = phi ptr [ %132, %129 ], [ %117, %114 ]
  %120 = phi i8 [ %131, %129 ], [ %116, %114 ]
  %121 = phi ptr [ %130, %129 ], [ %115, %114 ]
  %122 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %119, i64 0, i32 3
  %123 = load ptr, ptr %122, align 8, !tbaa !95
  %124 = load ptr, ptr %123, align 8, !tbaa !35
  call fastcc void @sese_build_liveouts_use(ptr noundef %0, ptr noundef %6, ptr noundef %26, ptr noundef %124)
  %125 = icmp eq ptr %121, null
  br i1 %125, label %129, label %126

126:                                              ; preds = %118
  %127 = getelementptr inbounds %struct.use_optype_d, ptr %121, i64 0, i32 1
  %128 = load ptr, ptr %121, align 8, !tbaa !108
  br label %129

129:                                              ; preds = %118, %126
  %130 = phi ptr [ %128, %126 ], [ %121, %118 ]
  %131 = phi i8 [ %120, %126 ], [ 1, %118 ]
  %132 = phi ptr [ %127, %126 ], [ null, %118 ]
  %133 = icmp eq i8 %131, 0
  br i1 %133, label %118, label %134, !llvm.loop !110

134:                                              ; preds = %129, %114, %96
  %135 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %97, i64 0, i32 2
  %136 = load ptr, ptr %135, align 8, !tbaa !97
  %137 = icmp eq ptr %136, null
  br i1 %137, label %16, label %96, !llvm.loop !111

138:                                              ; preds = %16, %4
  %139 = phi ptr [ %9, %4 ], [ %21, %16 ]
  %140 = load i32, ptr @flag_var_tracking_assignments, align 4, !tbaa !50
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %298, label %142

142:                                              ; preds = %138
  %143 = load ptr, ptr %139, align 8, !tbaa !62
  %144 = getelementptr inbounds %struct.basic_block_def, ptr %143, i64 0, i32 6
  %145 = load ptr, ptr %144, align 8, !tbaa !64
  %146 = load ptr, ptr @cfun, align 8, !tbaa !35
  %147 = getelementptr inbounds %struct.function, ptr %146, i64 0, i32 1
  %148 = load ptr, ptr %147, align 8, !tbaa !60
  %149 = getelementptr inbounds %struct.control_flow_graph, ptr %148, i64 0, i32 1
  %150 = load ptr, ptr %149, align 8, !tbaa !66
  %151 = icmp eq ptr %145, %150
  br i1 %151, label %298, label %152

152:                                              ; preds = %142
  %153 = getelementptr inbounds %struct.sese_s, ptr %0, i64 0, i32 1
  br label %163

154:                                              ; preds = %294, %180
  %155 = getelementptr inbounds %struct.basic_block_def, ptr %164, i64 0, i32 6
  %156 = load ptr, ptr %155, align 8, !tbaa !64
  %157 = load ptr, ptr @cfun, align 8, !tbaa !35
  %158 = getelementptr inbounds %struct.function, ptr %157, i64 0, i32 1
  %159 = load ptr, ptr %158, align 8, !tbaa !60
  %160 = getelementptr inbounds %struct.control_flow_graph, ptr %159, i64 0, i32 1
  %161 = load ptr, ptr %160, align 8, !tbaa !66
  %162 = icmp eq ptr %156, %161
  br i1 %162, label %298, label %163, !llvm.loop !112

163:                                              ; preds = %152, %154
  %164 = phi ptr [ %145, %152 ], [ %156, %154 ]
  %165 = getelementptr inbounds %struct.basic_block_def, ptr %164, i64 0, i32 13
  %166 = load i32, ptr %165, align 8, !tbaa !100, !noalias !113
  %167 = and i32 %166, 512
  %168 = icmp eq i32 %167, 0
  br i1 %168, label %169, label %175

169:                                              ; preds = %163
  %170 = getelementptr inbounds %struct.basic_block_def, ptr %164, i64 0, i32 7
  %171 = load ptr, ptr %170, align 8, !tbaa !46, !noalias !113
  %172 = icmp eq ptr %171, null
  br i1 %172, label %175, label %173

173:                                              ; preds = %169
  %174 = load ptr, ptr %171, align 8, !tbaa !104, !noalias !113
  br label %175

175:                                              ; preds = %173, %169, %163
  %176 = phi ptr [ %174, %173 ], [ null, %169 ], [ null, %163 ]
  %177 = icmp eq ptr %176, null
  br i1 %177, label %180, label %178

178:                                              ; preds = %175
  %179 = load ptr, ptr %176, align 8, !tbaa !106, !noalias !113
  br label %180

180:                                              ; preds = %178, %175
  %181 = phi ptr [ %179, %178 ], [ null, %175 ]
  %182 = icmp eq ptr %181, null
  br i1 %182, label %154, label %183

183:                                              ; preds = %180, %294
  %184 = phi ptr [ %296, %294 ], [ %181, %180 ]
  %185 = load ptr, ptr %184, align 8, !tbaa !92
  %186 = load i32, ptr %185, align 8
  %187 = and i32 %186, 255
  %188 = icmp eq i32 %187, 2
  br i1 %188, label %189, label %294

189:                                              ; preds = %183
  %190 = getelementptr inbounds %struct.gimple_statement_with_ops_base, ptr %185, i64 0, i32 2
  %191 = load ptr, ptr %190, align 8, !tbaa !46
  %192 = icmp eq ptr %191, null
  br i1 %192, label %196, label %193

193:                                              ; preds = %189
  %194 = getelementptr inbounds %struct.use_optype_d, ptr %191, i64 0, i32 1
  %195 = load ptr, ptr %191, align 8, !tbaa !108
  br label %196

196:                                              ; preds = %193, %189
  %197 = phi i8 [ 0, %193 ], [ 1, %189 ]
  %198 = phi ptr [ %195, %193 ], [ %191, %189 ]
  %199 = phi ptr [ %194, %193 ], [ null, %189 ]
  br i1 %192, label %294, label %200

200:                                              ; preds = %196, %289
  %201 = phi ptr [ %292, %289 ], [ %199, %196 ]
  %202 = phi ptr [ %291, %289 ], [ %198, %196 ]
  %203 = phi i8 [ %290, %289 ], [ %197, %196 ]
  %204 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %201, i64 0, i32 3
  %205 = load ptr, ptr %204, align 8, !tbaa !95
  %206 = load ptr, ptr %205, align 8, !tbaa !35
  %207 = load i64, ptr %206, align 8
  %208 = and i64 %207, 65535
  %209 = icmp eq i64 %208, 141
  br i1 %209, label %210, label %252

210:                                              ; preds = %200
  %211 = getelementptr inbounds %struct.tree_ssa_name, ptr %206, i64 0, i32 3
  %212 = load i32, ptr %211, align 8, !tbaa !46
  %213 = call i32 @bitmap_bit_p(ptr noundef %6, i32 noundef %212) #19
  %214 = icmp eq i32 %213, 0
  br i1 %214, label %215, label %252

215:                                              ; preds = %210
  %216 = getelementptr inbounds %struct.tree_ssa_name, ptr %206, i64 0, i32 2
  %217 = load ptr, ptr %216, align 8, !tbaa !46
  %218 = getelementptr inbounds %struct.gimple_statement_base, ptr %217, i64 0, i32 4
  %219 = load ptr, ptr %218, align 8, !tbaa !46
  %220 = icmp eq ptr %219, null
  br i1 %220, label %252, label %221

221:                                              ; preds = %215
  %222 = load ptr, ptr %0, align 8, !tbaa !67
  %223 = getelementptr inbounds %struct.edge_def, ptr %222, i64 0, i32 1
  %224 = load ptr, ptr %223, align 8, !tbaa !69
  %225 = load ptr, ptr %153, align 8, !tbaa !71
  %226 = getelementptr inbounds %struct.edge_def, ptr %225, i64 0, i32 1
  %227 = load ptr, ptr %226, align 8, !tbaa !69
  %228 = call zeroext i8 @dominated_by_p(i32 noundef 1, ptr noundef nonnull %219, ptr noundef %224) #19
  %229 = icmp eq i8 %228, 0
  br i1 %229, label %252, label %230

230:                                              ; preds = %221
  %231 = call zeroext i8 @dominated_by_p(i32 noundef 1, ptr noundef nonnull %219, ptr noundef %227) #19
  %232 = icmp eq i8 %231, 0
  br i1 %232, label %236, label %233

233:                                              ; preds = %230
  %234 = call zeroext i8 @dominated_by_p(i32 noundef 1, ptr noundef %224, ptr noundef %227) #19
  %235 = icmp eq i8 %234, 0
  br i1 %235, label %252, label %236

236:                                              ; preds = %233, %230
  %237 = load ptr, ptr %0, align 8, !tbaa !67
  %238 = getelementptr inbounds %struct.edge_def, ptr %237, i64 0, i32 1
  %239 = load ptr, ptr %238, align 8, !tbaa !69
  %240 = load ptr, ptr %153, align 8, !tbaa !71
  %241 = getelementptr inbounds %struct.edge_def, ptr %240, i64 0, i32 1
  %242 = load ptr, ptr %241, align 8, !tbaa !69
  %243 = call zeroext i8 @dominated_by_p(i32 noundef 1, ptr noundef %164, ptr noundef %239) #19
  %244 = icmp eq i8 %243, 0
  br i1 %244, label %252, label %245

245:                                              ; preds = %236
  %246 = call zeroext i8 @dominated_by_p(i32 noundef 1, ptr noundef %164, ptr noundef %242) #19
  %247 = icmp eq i8 %246, 0
  br i1 %247, label %252, label %248

248:                                              ; preds = %245
  %249 = call zeroext i8 @dominated_by_p(i32 noundef 1, ptr noundef %239, ptr noundef %242) #19
  %250 = icmp eq i8 %249, 0
  %251 = zext i1 %250 to i8
  br label %252

252:                                              ; preds = %233, %248, %245, %236, %221, %215, %210, %200
  %253 = phi i8 [ 0, %200 ], [ 0, %210 ], [ 0, %215 ], [ 1, %236 ], [ 0, %245 ], [ %251, %248 ], [ 0, %221 ], [ 0, %233 ]
  %254 = icmp eq i8 %253, 0
  br i1 %254, label %284, label %255

255:                                              ; preds = %252
  %256 = load i32, ptr %185, align 8
  %257 = and i32 %256, 255
  %258 = add nsw i32 %257, -10
  %259 = icmp ult i32 %258, -9
  br i1 %259, label %264, label %260

260:                                              ; preds = %255
  %261 = getelementptr inbounds %struct.gimple_statement_base, ptr %185, i64 0, i32 3
  %262 = load i32, ptr %261, align 4, !tbaa !46
  %263 = icmp ugt i32 %262, 1
  br i1 %263, label %265, label %264

264:                                              ; preds = %260, %255
  call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 1665, ptr noundef nonnull @.str.1) #19
  br label %265

265:                                              ; preds = %264, %260
  %266 = load i32, ptr %185, align 8
  %267 = and i32 %266, 255
  %268 = zext nneg i32 %267 to i64
  %269 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %268
  %270 = load i32, ptr %269, align 4, !tbaa !50
  %271 = zext i32 %270 to i64
  %272 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %271
  %273 = load i64, ptr %272, align 8, !tbaa !116
  %274 = icmp eq i64 %273, 0
  br i1 %274, label %275, label %276

275:                                              ; preds = %265
  call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 1622, ptr noundef nonnull @.str.1) #19
  br label %276

276:                                              ; preds = %275, %265
  %277 = getelementptr inbounds i8, ptr %185, i64 %273
  %278 = getelementptr inbounds ptr, ptr %277, i64 1
  store ptr null, ptr %278, align 8, !tbaa !35
  %279 = load i32, ptr %185, align 8
  %280 = and i32 %279, 255
  %281 = add nsw i32 %280, -10
  %282 = icmp ult i32 %281, -9
  br i1 %282, label %294, label %283

283:                                              ; preds = %276
  call void @gimple_set_modified(ptr noundef nonnull %185, i8 noundef zeroext 1) #19
  call void @update_stmt_operands(ptr noundef nonnull %185) #19
  br label %294

284:                                              ; preds = %252
  %285 = icmp eq ptr %202, null
  br i1 %285, label %289, label %286

286:                                              ; preds = %284
  %287 = getelementptr inbounds %struct.use_optype_d, ptr %202, i64 0, i32 1
  %288 = load ptr, ptr %202, align 8, !tbaa !108
  br label %289

289:                                              ; preds = %284, %286
  %290 = phi i8 [ %203, %286 ], [ 1, %284 ]
  %291 = phi ptr [ %288, %286 ], [ %202, %284 ]
  %292 = phi ptr [ %287, %286 ], [ null, %284 ]
  %293 = icmp eq i8 %290, 0
  br i1 %293, label %200, label %294, !llvm.loop !117

294:                                              ; preds = %289, %196, %283, %276, %183
  %295 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %184, i64 0, i32 2
  %296 = load ptr, ptr %295, align 8, !tbaa !97
  %297 = icmp eq ptr %296, null
  br i1 %297, label %154, label %183, !llvm.loop !118

298:                                              ; preds = %154, %142, %138
  %299 = load ptr, ptr %6, align 8, !tbaa !119
  %300 = icmp eq ptr %299, null
  %301 = select i1 %300, ptr @bitmap_zero_bits, ptr %299
  %302 = getelementptr inbounds %struct.bitmap_element_def, ptr %301, i64 0, i32 2
  %303 = load i32, ptr %302, align 8, !tbaa !121
  %304 = shl i32 %303, 7
  %305 = getelementptr inbounds %struct.bitmap_element_def, ptr %301, i64 0, i32 3
  %306 = load i64, ptr %305, align 8, !tbaa !116
  %307 = icmp eq i64 %306, 0
  %308 = zext i1 %307 to i32
  %309 = or disjoint i32 %304, %308
  br label %310

310:                                              ; preds = %371, %298
  %311 = phi i64 [ %306, %298 ], [ %384, %371 ]
  %312 = phi i32 [ 0, %298 ], [ %367, %371 ]
  %313 = phi i32 [ %309, %298 ], [ %385, %371 ]
  %314 = phi ptr [ %301, %298 ], [ %369, %371 ]
  %315 = icmp eq i64 %311, 0
  br i1 %315, label %330, label %316

316:                                              ; preds = %344, %310
  %317 = phi i64 [ %311, %310 ], [ %349, %344 ]
  %318 = phi i32 [ %312, %310 ], [ %345, %344 ]
  %319 = phi i32 [ %313, %310 ], [ %346, %344 ]
  %320 = phi ptr [ %314, %310 ], [ %337, %344 ]
  %321 = and i64 %317, 1
  %322 = icmp eq i64 %321, 0
  br i1 %322, label %323, label %365

323:                                              ; preds = %316, %323
  %324 = phi i32 [ %327, %323 ], [ %319, %316 ]
  %325 = phi i64 [ %326, %323 ], [ %317, %316 ]
  %326 = lshr exact i64 %325, 1
  %327 = add i32 %324, 1
  %328 = and i64 %325, 2
  %329 = icmp eq i64 %328, 0
  br i1 %329, label %323, label %365, !llvm.loop !123

330:                                              ; preds = %310
  %331 = add i32 %313, 63
  %332 = and i32 %331, -64
  %333 = add i32 %312, 1
  br label %334

334:                                              ; preds = %361, %330
  %335 = phi i64 [ %311, %330 ], [ %356, %361 ]
  %336 = phi i32 [ %332, %330 ], [ %364, %361 ]
  %337 = phi ptr [ %314, %330 ], [ %359, %361 ]
  %338 = phi i32 [ %333, %330 ], [ 0, %361 ]
  %339 = icmp eq i32 %338, 2
  br i1 %339, label %355, label %340

340:                                              ; preds = %334
  %341 = add i32 %336, 128
  %342 = shl i32 %338, 6
  %343 = sub i32 %341, %342
  br label %344

344:                                              ; preds = %340, %351
  %345 = phi i32 [ %353, %351 ], [ %338, %340 ]
  %346 = phi i32 [ %352, %351 ], [ %336, %340 ]
  %347 = zext i32 %345 to i64
  %348 = getelementptr inbounds %struct.bitmap_element_def, ptr %337, i64 0, i32 3, i64 %347
  %349 = load i64, ptr %348, align 8, !tbaa !116
  %350 = icmp eq i64 %349, 0
  br i1 %350, label %351, label %316

351:                                              ; preds = %344
  %352 = add i32 %346, 64
  %353 = add i32 %345, 1
  %354 = icmp eq i32 %353, 2
  br i1 %354, label %355, label %344, !llvm.loop !124

355:                                              ; preds = %351, %334
  %356 = phi i64 [ %335, %334 ], [ %349, %351 ]
  %357 = phi i32 [ %336, %334 ], [ %343, %351 ]
  %358 = phi i32 [ %338, %334 ], [ 2, %351 ]
  %359 = load ptr, ptr %337, align 8, !tbaa !125
  %360 = icmp eq ptr %359, null
  br i1 %360, label %365, label %361

361:                                              ; preds = %355
  %362 = getelementptr inbounds %struct.bitmap_element_def, ptr %359, i64 0, i32 2
  %363 = load i32, ptr %362, align 8, !tbaa !121
  %364 = shl i32 %363, 7
  br label %334, !llvm.loop !126

365:                                              ; preds = %355, %323, %316
  %366 = phi i64 [ %317, %316 ], [ %326, %323 ], [ %356, %355 ]
  %367 = phi i32 [ %318, %316 ], [ %318, %323 ], [ %358, %355 ]
  %368 = phi i32 [ %319, %316 ], [ %327, %323 ], [ %357, %355 ]
  %369 = phi ptr [ %320, %316 ], [ %320, %323 ], [ %359, %355 ]
  %370 = phi i1 [ false, %316 ], [ false, %323 ], [ true, %355 ]
  br i1 %370, label %386, label %371

371:                                              ; preds = %365
  %372 = load ptr, ptr @cfun, align 8, !tbaa !35
  %373 = getelementptr inbounds %struct.function, ptr %372, i64 0, i32 3
  %374 = load ptr, ptr %373, align 8, !tbaa !127
  %375 = getelementptr inbounds %struct.gimple_df, ptr %374, i64 0, i32 2
  %376 = load ptr, ptr %375, align 8, !tbaa !128
  %377 = zext i32 %368 to i64
  %378 = getelementptr inbounds %struct.VEC_tree_base, ptr %376, i64 0, i32 2, i64 %377
  %379 = load ptr, ptr %378, align 8, !tbaa !35
  %380 = call ptr @create_phi_node(ptr noundef %379, ptr noundef %1) #19
  %381 = getelementptr inbounds %struct.gimple_statement_phi, ptr %380, i64 0, i32 3
  %382 = load ptr, ptr %381, align 8, !tbaa !46
  %383 = call ptr @create_new_def_for(ptr noundef %382, ptr noundef %380, ptr noundef nonnull %381) #19
  call void @add_phi_arg(ptr noundef %380, ptr noundef %379, ptr noundef %2, i32 noundef 0) #19
  call void @add_phi_arg(ptr noundef %380, ptr noundef %379, ptr noundef %3, i32 noundef 0) #19
  %384 = lshr i64 %366, 1
  %385 = add i32 %368, 1
  br label %310, !llvm.loop !132

386:                                              ; preds = %365
  call void @bitmap_obstack_free(ptr noundef nonnull %6) #19
  call void @update_ssa(i32 noundef 2048) #19
  ret void
}

declare void @update_ssa(i32 noundef) local_unnamed_addr #3

declare void @bitmap_obstack_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @set_rename(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #9 !prof !34 {
  %4 = alloca %struct.rename_map_elt_s, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #19
  %5 = icmp eq ptr %1, %2
  br i1 %5, label %16, label %6

6:                                                ; preds = %3
  store ptr %1, ptr %4, align 8, !tbaa !54
  %7 = call ptr @htab_find_slot(ptr noundef %0, ptr noundef nonnull %4, i32 noundef 1) #19
  %8 = icmp eq ptr %7, null
  br i1 %8, label %16, label %9

9:                                                ; preds = %6
  %10 = load ptr, ptr %7, align 8, !tbaa !35
  %11 = icmp eq ptr %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %9
  call void @free(ptr noundef %10)
  br label %13

13:                                               ; preds = %12, %9
  %14 = call ptr @xmalloc(i64 noundef 16) #19
  store ptr %1, ptr %14, align 8, !tbaa !54
  %15 = getelementptr inbounds %struct.rename_map_elt_s, ptr %14, i64 0, i32 1
  store ptr %2, ptr %15, align 8, !tbaa !56
  store ptr %14, ptr %7, align 8, !tbaa !35
  br label %16

16:                                               ; preds = %6, %3, %13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #19
  ret void
}

declare ptr @htab_find_slot(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @rename_nb_iterations(ptr noundef %0) local_unnamed_addr #9 !prof !34 {
  %2 = load ptr, ptr @cfun, align 8, !tbaa !35
  %3 = getelementptr inbounds %struct.function, ptr %2, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !133
  %5 = icmp eq ptr %4, null
  br i1 %5, label %81, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.loops, ptr %4, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !134
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %6
  %11 = load i32, ptr %8, align 8, !tbaa !82
  br label %12

12:                                               ; preds = %10, %6
  %13 = phi i32 [ %11, %10 ], [ 0, %6 ]
  %14 = tail call ptr @vec_heap_o_reserve_exact(ptr noundef null, i32 noundef %13, i64 noundef 8, i64 noundef 4) #19
  %15 = load ptr, ptr @cfun, align 8, !tbaa !35
  %16 = getelementptr inbounds %struct.function, ptr %15, i64 0, i32 4
  %17 = load ptr, ptr %16, align 8, !tbaa !133
  %18 = getelementptr inbounds %struct.loops, ptr %17, i64 0, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !136
  br label %20

20:                                               ; preds = %33, %12
  %21 = phi ptr [ %19, %12 ], [ %34, %33 ]
  %22 = load i32, ptr %21, align 8, !tbaa !79
  %23 = icmp sgt i32 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %20
  %25 = load i32, ptr %14, align 4, !tbaa !137
  %26 = add i32 %25, 1
  store i32 %26, ptr %14, align 4, !tbaa !137
  %27 = zext i32 %25 to i64
  %28 = getelementptr inbounds %struct.VEC_int_base, ptr %14, i64 0, i32 2, i64 %27
  store i32 %22, ptr %28, align 4, !tbaa !50
  br label %29

29:                                               ; preds = %24, %20
  %30 = getelementptr inbounds %struct.loop, ptr %21, i64 0, i32 8
  %31 = load ptr, ptr %30, align 8, !tbaa !139
  %32 = icmp eq ptr %31, null
  br i1 %32, label %38, label %33

33:                                               ; preds = %38, %29
  %34 = phi ptr [ %31, %29 ], [ %41, %38 ]
  br label %20, !llvm.loop !140

35:                                               ; preds = %57
  %36 = icmp eq ptr %14, null
  %37 = getelementptr inbounds %struct.loops, ptr %17, i64 0, i32 1
  br label %60

38:                                               ; preds = %29, %57
  %39 = phi ptr [ %58, %57 ], [ %21, %29 ]
  %40 = getelementptr inbounds %struct.loop, ptr %39, i64 0, i32 9
  %41 = load ptr, ptr %40, align 8, !tbaa !141
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %33, !llvm.loop !140

43:                                               ; preds = %38
  %44 = getelementptr inbounds %struct.loop, ptr %39, i64 0, i32 7
  %45 = load ptr, ptr %44, align 8, !tbaa !142
  %46 = icmp eq ptr %45, null
  br i1 %46, label %49, label %47

47:                                               ; preds = %43
  %48 = load i32, ptr %45, align 8, !tbaa !82
  br label %49

49:                                               ; preds = %47, %43
  %50 = phi i32 [ %48, %47 ], [ 0, %43 ]
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %57, label %52

52:                                               ; preds = %49
  %53 = add i32 %50, -1
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %45, i64 0, i32 2, i64 %54
  %56 = load ptr, ptr %55, align 8, !tbaa !35
  br label %57

57:                                               ; preds = %52, %49
  %58 = phi ptr [ %56, %52 ], [ null, %49 ]
  %59 = icmp eq ptr %58, null
  br i1 %59, label %35, label %38, !llvm.loop !143

60:                                               ; preds = %35, %72
  %61 = phi i32 [ %73, %72 ], [ 0, %35 ]
  br i1 %36, label %69, label %62

62:                                               ; preds = %60
  %63 = load i32, ptr %14, align 4, !tbaa !137
  %64 = icmp ugt i32 %63, %61
  br i1 %64, label %65, label %69

65:                                               ; preds = %62
  %66 = zext i32 %61 to i64
  %67 = getelementptr inbounds %struct.VEC_int_base, ptr %14, i64 0, i32 2, i64 %66
  %68 = load i32, ptr %67, align 4, !tbaa !50
  br label %69

69:                                               ; preds = %65, %62, %60
  %70 = phi i32 [ %68, %65 ], [ 0, %62 ], [ 0, %60 ]
  %71 = phi i1 [ false, %65 ], [ true, %62 ], [ true, %60 ]
  br i1 %71, label %79, label %72

72:                                               ; preds = %69
  %73 = add i32 %61, 1
  %74 = load ptr, ptr %37, align 8, !tbaa !134
  %75 = zext i32 %70 to i64
  %76 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %74, i64 0, i32 2, i64 %75
  %77 = load ptr, ptr %76, align 8, !tbaa !35
  %78 = icmp eq ptr %77, null
  br i1 %78, label %60, label %81, !llvm.loop !144

79:                                               ; preds = %69
  br i1 %36, label %81, label %80

80:                                               ; preds = %79
  tail call void @free(ptr noundef %14)
  br label %81

81:                                               ; preds = %72, %79, %80, %1
  %82 = phi i32 [ 0, %1 ], [ %61, %80 ], [ %61, %79 ], [ %73, %72 ]
  %83 = phi ptr [ null, %1 ], [ null, %80 ], [ null, %79 ], [ %14, %72 ]
  %84 = phi ptr [ null, %1 ], [ null, %80 ], [ null, %79 ], [ %77, %72 ]
  %85 = icmp eq ptr %84, null
  br i1 %85, label %124, label %86

86:                                               ; preds = %81, %119
  %87 = phi ptr [ %122, %119 ], [ %84, %81 ]
  %88 = phi ptr [ %121, %119 ], [ %83, %81 ]
  %89 = phi i32 [ %120, %119 ], [ %82, %81 ]
  %90 = getelementptr inbounds %struct.loop, ptr %87, i64 0, i32 11
  %91 = load ptr, ptr %90, align 8, !tbaa !145
  %92 = tail call fastcc ptr @rename_variables_in_expr(ptr noundef %0, ptr noundef %91)
  store ptr %92, ptr %90, align 8, !tbaa !145
  %93 = icmp eq ptr %88, null
  %94 = load ptr, ptr @cfun, align 8
  %95 = getelementptr inbounds %struct.function, ptr %94, i64 0, i32 4
  br label %96

96:                                               ; preds = %108, %86
  %97 = phi i32 [ %89, %86 ], [ %109, %108 ]
  br i1 %93, label %105, label %98

98:                                               ; preds = %96
  %99 = load i32, ptr %88, align 4, !tbaa !137
  %100 = icmp ugt i32 %99, %97
  br i1 %100, label %101, label %105

101:                                              ; preds = %98
  %102 = zext i32 %97 to i64
  %103 = getelementptr inbounds %struct.VEC_int_base, ptr %88, i64 0, i32 2, i64 %102
  %104 = load i32, ptr %103, align 4, !tbaa !50
  br label %105

105:                                              ; preds = %101, %98, %96
  %106 = phi i32 [ %104, %101 ], [ 0, %98 ], [ 0, %96 ]
  %107 = phi i1 [ false, %101 ], [ true, %98 ], [ true, %96 ]
  br i1 %107, label %117, label %108

108:                                              ; preds = %105
  %109 = add i32 %97, 1
  %110 = load ptr, ptr %95, align 8, !tbaa !133
  %111 = getelementptr inbounds %struct.loops, ptr %110, i64 0, i32 1
  %112 = load ptr, ptr %111, align 8, !tbaa !134
  %113 = zext i32 %106 to i64
  %114 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %112, i64 0, i32 2, i64 %113
  %115 = load ptr, ptr %114, align 8, !tbaa !35
  %116 = icmp eq ptr %115, null
  br i1 %116, label %96, label %119, !llvm.loop !144

117:                                              ; preds = %105
  br i1 %93, label %119, label %118

118:                                              ; preds = %117
  tail call void @free(ptr noundef %88)
  br label %119

119:                                              ; preds = %108, %117, %118
  %120 = phi i32 [ %97, %118 ], [ %97, %117 ], [ %109, %108 ]
  %121 = phi ptr [ null, %118 ], [ null, %117 ], [ %88, %108 ]
  %122 = phi ptr [ null, %118 ], [ null, %117 ], [ %115, %108 ]
  %123 = icmp eq ptr %122, null
  br i1 %123, label %124, label %86, !llvm.loop !146

124:                                              ; preds = %119, %81
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @rename_variables_in_expr(ptr noundef %0, ptr noundef %1) unnamed_addr #9 !prof !34 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %21, label %4

4:                                                ; preds = %2
  %5 = load i64, ptr %1, align 8
  %6 = and i64 %5, 65535
  %7 = icmp eq i64 %6, 141
  br i1 %7, label %8, label %10

8:                                                ; preds = %4
  %9 = tail call fastcc ptr @get_rename(ptr noundef %0, ptr noundef nonnull %1)
  br label %21

10:                                               ; preds = %4
  %11 = getelementptr inbounds [0 x i8], ptr @tree_code_length, i64 0, i64 %6
  %12 = load i8, ptr %11, align 1, !tbaa !46
  switch i8 %12, label %21 [
    i8 3, label %13
    i8 2, label %17
    i8 1, label %23
  ]

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1, i32 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !46
  %16 = tail call fastcc ptr @rename_variables_in_expr(ptr noundef %0, ptr noundef %15)
  store ptr %16, ptr %14, align 8, !tbaa !46
  br label %17

17:                                               ; preds = %10, %13
  %18 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1
  %19 = load ptr, ptr %18, align 8, !tbaa !46
  %20 = tail call fastcc ptr @rename_variables_in_expr(ptr noundef %0, ptr noundef %19)
  store ptr %20, ptr %18, align 8, !tbaa !46
  br label %23

21:                                               ; preds = %8, %2, %10, %23
  %22 = phi ptr [ %1, %23 ], [ %9, %8 ], [ null, %2 ], [ %1, %10 ]
  ret ptr %22

23:                                               ; preds = %10, %17
  %24 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !46
  %26 = tail call fastcc ptr @rename_variables_in_expr(ptr noundef %0, ptr noundef %25)
  store ptr %26, ptr %24, align 8, !tbaa !46
  br label %21
}

; Function Attrs: cold nounwind uwtable
define dso_local void @rename_sese_parameters(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #9 !prof !34 {
  %3 = getelementptr inbounds %struct.sese_s, ptr %1, i64 0, i32 2
  br label %4

4:                                                ; preds = %18, %2
  %5 = phi i64 [ %21, %18 ], [ 0, %2 ]
  %6 = load ptr, ptr %3, align 8, !tbaa !87
  %7 = icmp eq ptr %6, null
  br i1 %7, label %15, label %8

8:                                                ; preds = %4
  %9 = load i32, ptr %6, align 8, !tbaa !147
  %10 = zext i32 %9 to i64
  %11 = icmp ult i64 %5, %10
  br i1 %11, label %12, label %15

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.VEC_tree_base, ptr %6, i64 0, i32 2, i64 %5
  %14 = load ptr, ptr %13, align 8, !tbaa !35
  br label %15

15:                                               ; preds = %4, %8, %12
  %16 = phi ptr [ %14, %12 ], [ null, %8 ], [ null, %4 ]
  %17 = phi i1 [ false, %12 ], [ true, %8 ], [ true, %4 ]
  br i1 %17, label %22, label %18

18:                                               ; preds = %15
  %19 = tail call fastcc ptr @rename_variables_in_expr(ptr noundef %0, ptr noundef %16)
  %20 = getelementptr inbounds %struct.VEC_tree_base, ptr %6, i64 0, i32 2, i64 %5
  store ptr %19, ptr %20, align 8, !tbaa !35
  %21 = add nuw i64 %5, 1
  br label %4, !llvm.loop !149

22:                                               ; preds = %15
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @sese_adjust_liveout_phis(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef readnone %3, ptr noundef %4) local_unnamed_addr #9 !prof !34 {
  %6 = alloca %struct.gimple_stmt_iterator, align 8
  %7 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #19
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %6, ptr noundef %2) #19
  %8 = load ptr, ptr %6, align 8, !tbaa.struct !91
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #19
  %9 = icmp eq ptr %8, null
  br i1 %9, label %204, label %10

10:                                               ; preds = %5, %200
  %11 = phi ptr [ %202, %200 ], [ %8, %5 ]
  %12 = load ptr, ptr %11, align 8, !tbaa !92
  %13 = getelementptr inbounds %struct.gimple_statement_phi, ptr %12, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !46
  %15 = call zeroext i8 @is_gimple_reg(ptr noundef %14) #19
  %16 = icmp eq i8 %15, 0
  %17 = getelementptr inbounds %struct.gimple_statement_phi, ptr %12, i64 0, i32 2
  %18 = load i32, ptr %17, align 4, !tbaa !46
  br i1 %16, label %25, label %19

19:                                               ; preds = %10
  %20 = icmp eq i32 %18, 0
  br i1 %20, label %122, label %21

21:                                               ; preds = %19
  %22 = getelementptr inbounds %struct.gimple_statement_base, ptr %12, i64 0, i32 4
  %23 = load ptr, ptr %22, align 8, !tbaa !46
  %24 = load ptr, ptr %23, align 8, !tbaa !150, !nonnull !151, !noundef !151
  br label %113

25:                                               ; preds = %10
  %26 = icmp eq i32 %18, 2
  br i1 %26, label %28, label %27

27:                                               ; preds = %25
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 465, ptr noundef nonnull @.str.1) #19
  br label %28

28:                                               ; preds = %27, %25
  %29 = load i32, ptr %17, align 4, !tbaa !46
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %200, label %31

31:                                               ; preds = %28
  %32 = getelementptr inbounds %struct.gimple_statement_base, ptr %12, i64 0, i32 4
  %33 = getelementptr inbounds %struct.gimple_statement_phi, ptr %12, i64 0, i32 1
  br label %34

34:                                               ; preds = %31, %108
  %35 = phi i64 [ 0, %31 ], [ %109, %108 ]
  %36 = load ptr, ptr %32, align 8, !tbaa !46
  %37 = load ptr, ptr %36, align 8, !tbaa !150, !nonnull !151, !noundef !151
  %38 = getelementptr inbounds %struct.VEC_edge_base, ptr %37, i64 0, i32 2, i64 %35
  %39 = load ptr, ptr %38, align 8, !tbaa !35
  %40 = icmp eq ptr %39, %4
  br i1 %40, label %41, label %108

41:                                               ; preds = %34
  %42 = load i32, ptr %33, align 8, !tbaa !46
  %43 = zext i32 %42 to i64
  %44 = icmp ugt i64 %35, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %41
  call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 3103, ptr noundef nonnull @.str.1) #19
  br label %46

46:                                               ; preds = %45, %41
  %47 = getelementptr inbounds %struct.gimple_statement_phi, ptr %12, i64 0, i32 4, i64 %35, i32 0, i32 3
  %48 = load ptr, ptr %47, align 8, !tbaa !95
  %49 = load ptr, ptr %48, align 8, !tbaa !35
  %50 = load i64, ptr %49, align 8
  %51 = and i64 %50, 4294967296
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %200, label %53

53:                                               ; preds = %46
  %54 = icmp eq i64 %35, 0
  %55 = zext i1 %54 to i64
  %56 = load i32, ptr %33, align 8, !tbaa !46
  %57 = trunc i64 %35 to i32
  %58 = or i32 %56, %57
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %53
  call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 3103, ptr noundef nonnull @.str.1) #19
  br label %61

61:                                               ; preds = %60, %53
  %62 = getelementptr inbounds %struct.gimple_statement_phi, ptr %12, i64 0, i32 4, i64 %55, i32 0, i32 3
  %63 = load ptr, ptr %62, align 8, !tbaa !95
  %64 = load ptr, ptr %63, align 8, !tbaa !35
  %65 = load i64, ptr %64, align 8
  %66 = and i64 %65, 4294967296
  %67 = icmp eq i64 %66, 0
  br i1 %67, label %68, label %200

68:                                               ; preds = %61
  %69 = load ptr, ptr @cfun, align 8, !tbaa !35
  %70 = getelementptr inbounds %struct.function, ptr %69, i64 0, i32 1
  %71 = load ptr, ptr %70, align 8, !tbaa !60
  %72 = getelementptr inbounds %struct.control_flow_graph, ptr %71, i64 0, i32 5
  %73 = load i32, ptr %72, align 8, !tbaa !152
  %74 = call ptr @sbitmap_alloc(i32 noundef %73) #19
  call void @sbitmap_zero(ptr noundef %74) #19
  %75 = call fastcc ptr @get_vdef_before_sese(ptr noundef %0, ptr noundef nonnull %64, ptr noundef %74)
  %76 = icmp eq ptr %75, null
  br i1 %76, label %77, label %78

77:                                               ; preds = %68
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 484, ptr noundef nonnull @.str.1) #19
  br label %78

78:                                               ; preds = %77, %68
  %79 = load i32, ptr %33, align 8, !tbaa !46
  %80 = zext i32 %79 to i64
  %81 = icmp ugt i64 %35, %80
  br i1 %81, label %82, label %83

82:                                               ; preds = %78
  call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 3103, ptr noundef nonnull @.str.1) #19
  br label %83

83:                                               ; preds = %82, %78
  %84 = getelementptr inbounds %struct.gimple_statement_phi, ptr %12, i64 0, i32 4, i64 %35
  %85 = load ptr, ptr %84, align 8, !tbaa !153
  %86 = icmp eq ptr %85, null
  br i1 %86, label %92, label %87

87:                                               ; preds = %83
  %88 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %84, i64 0, i32 1
  %89 = load ptr, ptr %88, align 8, !tbaa !154
  %90 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %85, i64 0, i32 1
  store ptr %89, ptr %90, align 8, !tbaa !154
  %91 = load ptr, ptr %88, align 8, !tbaa !154
  store ptr %85, ptr %91, align 8, !tbaa !153
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %84, i8 0, i64 16, i1 false)
  br label %92

92:                                               ; preds = %87, %83
  %93 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %84, i64 0, i32 3
  %94 = load ptr, ptr %93, align 8, !tbaa !95
  store ptr %75, ptr %94, align 8, !tbaa !35
  br i1 %76, label %99, label %95

95:                                               ; preds = %92
  %96 = load i64, ptr %75, align 8
  %97 = and i64 %96, 65535
  %98 = icmp eq i64 %97, 141
  br i1 %98, label %100, label %99

99:                                               ; preds = %95, %92
  store ptr null, ptr %84, align 8, !tbaa !153
  br label %106

100:                                              ; preds = %95
  %101 = getelementptr inbounds %struct.tree_ssa_name, ptr %75, i64 0, i32 5
  store ptr %101, ptr %84, align 8, !tbaa !153
  %102 = getelementptr inbounds %struct.tree_ssa_name, ptr %75, i64 0, i32 5, i32 1
  %103 = load ptr, ptr %102, align 8, !tbaa !154
  %104 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %84, i64 0, i32 1
  store ptr %103, ptr %104, align 8, !tbaa !154
  %105 = load ptr, ptr %102, align 8, !tbaa !154
  store ptr %84, ptr %105, align 8, !tbaa !153
  store ptr %84, ptr %102, align 8, !tbaa !154
  br label %106

106:                                              ; preds = %100, %99
  %107 = load ptr, ptr %74, align 8, !tbaa !155
  call void @free(ptr noundef %107)
  call void @free(ptr noundef %74)
  br label %108

108:                                              ; preds = %106, %34
  %109 = add nuw nsw i64 %35, 1
  %110 = load i32, ptr %17, align 4, !tbaa !46
  %111 = zext i32 %110 to i64
  %112 = icmp ult i64 %109, %111
  br i1 %112, label %34, label %200, !llvm.loop !157

113:                                              ; preds = %21, %119
  %114 = phi i32 [ 0, %21 ], [ %120, %119 ]
  %115 = zext i32 %114 to i64
  %116 = getelementptr inbounds %struct.VEC_edge_base, ptr %24, i64 0, i32 2, i64 %115
  %117 = load ptr, ptr %116, align 8, !tbaa !35
  %118 = icmp eq ptr %117, %3
  br i1 %118, label %122, label %119

119:                                              ; preds = %113
  %120 = add nuw i32 %114, 1
  %121 = icmp eq i32 %120, %18
  br i1 %121, label %122, label %113, !llvm.loop !158

122:                                              ; preds = %119, %113, %19
  %123 = phi i32 [ 0, %19 ], [ 0, %119 ], [ %114, %113 ]
  %124 = getelementptr inbounds %struct.gimple_statement_phi, ptr %12, i64 0, i32 2
  %125 = load i32, ptr %124, align 4, !tbaa !46
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %200, label %127

127:                                              ; preds = %122
  %128 = getelementptr inbounds %struct.gimple_statement_base, ptr %12, i64 0, i32 4
  %129 = zext i32 %123 to i64
  %130 = getelementptr inbounds %struct.gimple_statement_phi, ptr %12, i64 0, i32 1
  %131 = getelementptr inbounds %struct.gimple_statement_phi, ptr %12, i64 0, i32 4, i64 %129, i32 0, i32 3
  br label %132

132:                                              ; preds = %127, %195
  %133 = phi i64 [ 0, %127 ], [ %196, %195 ]
  %134 = load ptr, ptr %128, align 8, !tbaa !46
  %135 = load ptr, ptr %134, align 8, !tbaa !150, !nonnull !151, !noundef !151
  %136 = getelementptr inbounds %struct.VEC_edge_base, ptr %135, i64 0, i32 2, i64 %133
  %137 = load ptr, ptr %136, align 8, !tbaa !35
  %138 = icmp eq ptr %137, %4
  br i1 %138, label %139, label %195

139:                                              ; preds = %132
  %140 = load i32, ptr %130, align 8, !tbaa !46
  %141 = icmp ult i32 %140, %123
  br i1 %141, label %142, label %143

142:                                              ; preds = %139
  call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 3103, ptr noundef nonnull @.str.1) #19
  br label %143

143:                                              ; preds = %139, %142
  %144 = load ptr, ptr %131, align 8, !tbaa !95
  %145 = load ptr, ptr %144, align 8, !tbaa !35
  %146 = call fastcc ptr @get_rename(ptr noundef %1, ptr noundef %145)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #19
  %147 = icmp eq ptr %145, %146
  br i1 %147, label %148, label %149

148:                                              ; preds = %143
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 633, ptr noundef nonnull @.str.1) #19
  br label %149

149:                                              ; preds = %143, %148
  %150 = load i64, ptr %146, align 8
  %151 = and i64 %150, 65535
  %152 = icmp eq i64 %151, 141
  br i1 %152, label %164, label %153

153:                                              ; preds = %149
  %154 = call zeroext i8 @is_gimple_reg(ptr noundef %145) #19
  %155 = icmp eq i8 %154, 0
  br i1 %155, label %164, label %156

156:                                              ; preds = %153
  %157 = getelementptr inbounds %struct.tree_common, ptr %145, i64 0, i32 2
  %158 = load ptr, ptr %157, align 8, !tbaa !46
  %159 = call ptr @create_tmp_var(ptr noundef %158, ptr noundef nonnull @.str.2) #19
  %160 = call ptr @build2_stat(i32 noundef 53, ptr noundef %158, ptr noundef %159, ptr noundef nonnull %146) #19
  %161 = call ptr @force_gimple_operand(ptr noundef %160, ptr noundef nonnull %7, i8 noundef zeroext 1, ptr noundef null) #19
  %162 = load ptr, ptr %7, align 8, !tbaa !35
  %163 = call ptr @gsi_insert_seq_on_edge_immediate(ptr noundef %4, ptr noundef %162) #19
  br label %164

164:                                              ; preds = %156, %153, %149
  %165 = phi ptr [ %161, %156 ], [ %146, %153 ], [ %146, %149 ]
  %166 = load i32, ptr %130, align 8, !tbaa !46
  %167 = zext i32 %166 to i64
  %168 = icmp ugt i64 %133, %167
  br i1 %168, label %169, label %170

169:                                              ; preds = %164
  call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 3103, ptr noundef nonnull @.str.1) #19
  br label %170

170:                                              ; preds = %164, %169
  %171 = getelementptr inbounds %struct.gimple_statement_phi, ptr %12, i64 0, i32 4, i64 %133
  %172 = load ptr, ptr %171, align 8, !tbaa !153
  %173 = icmp eq ptr %172, null
  br i1 %173, label %179, label %174

174:                                              ; preds = %170
  %175 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %171, i64 0, i32 1
  %176 = load ptr, ptr %175, align 8, !tbaa !154
  %177 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %172, i64 0, i32 1
  store ptr %176, ptr %177, align 8, !tbaa !154
  %178 = load ptr, ptr %175, align 8, !tbaa !154
  store ptr %172, ptr %178, align 8, !tbaa !153
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %171, i8 0, i64 16, i1 false)
  br label %179

179:                                              ; preds = %174, %170
  %180 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %171, i64 0, i32 3
  %181 = load ptr, ptr %180, align 8, !tbaa !95
  store ptr %165, ptr %181, align 8, !tbaa !35
  %182 = icmp eq ptr %165, null
  br i1 %182, label %187, label %183

183:                                              ; preds = %179
  %184 = load i64, ptr %165, align 8
  %185 = and i64 %184, 65535
  %186 = icmp eq i64 %185, 141
  br i1 %186, label %188, label %187

187:                                              ; preds = %183, %179
  store ptr null, ptr %171, align 8, !tbaa !153
  br label %194

188:                                              ; preds = %183
  %189 = getelementptr inbounds %struct.tree_ssa_name, ptr %165, i64 0, i32 5
  store ptr %189, ptr %171, align 8, !tbaa !153
  %190 = getelementptr inbounds %struct.tree_ssa_name, ptr %165, i64 0, i32 5, i32 1
  %191 = load ptr, ptr %190, align 8, !tbaa !154
  %192 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %171, i64 0, i32 1
  store ptr %191, ptr %192, align 8, !tbaa !154
  %193 = load ptr, ptr %190, align 8, !tbaa !154
  store ptr %171, ptr %193, align 8, !tbaa !153
  store ptr %171, ptr %190, align 8, !tbaa !154
  br label %194

194:                                              ; preds = %187, %188
  call void @set_rename(ptr noundef %1, ptr noundef %145, ptr noundef %14)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #19
  br label %195

195:                                              ; preds = %132, %194
  %196 = add nuw nsw i64 %133, 1
  %197 = load i32, ptr %124, align 4, !tbaa !46
  %198 = zext i32 %197 to i64
  %199 = icmp ult i64 %196, %198
  br i1 %199, label %132, label %200, !llvm.loop !159

200:                                              ; preds = %195, %108, %46, %61, %122, %28
  %201 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %11, i64 0, i32 2
  %202 = load ptr, ptr %201, align 8, !tbaa !97
  %203 = icmp eq ptr %202, null
  br i1 %203, label %204, label %10, !llvm.loop !160

204:                                              ; preds = %200, %5
  ret void
}

declare void @gsi_start_phis(ptr dead_on_unwind writable sret(%struct.gimple_stmt_iterator) align 8, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #13

declare zeroext i8 @is_gimple_reg(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @get_rename(ptr noundef %0, ptr noundef %1) unnamed_addr #9 !prof !34 {
  %3 = alloca %struct.rename_map_elt_s, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #19
  %4 = load i64, ptr %1, align 8
  %5 = and i64 %4, 65535
  %6 = icmp eq i64 %5, 141
  br i1 %6, label %8, label %7

7:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 498, ptr noundef nonnull @.str.1) #19
  br label %8

8:                                                ; preds = %2, %7
  store ptr %1, ptr %3, align 8, !tbaa !54
  %9 = call ptr @htab_find_slot(ptr noundef %0, ptr noundef nonnull %3, i32 noundef 0) #19
  %10 = icmp eq ptr %9, null
  br i1 %10, label %17, label %11

11:                                               ; preds = %8
  %12 = load ptr, ptr %9, align 8, !tbaa !35
  %13 = icmp eq ptr %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.rename_map_elt_s, ptr %12, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !56
  br label %17

17:                                               ; preds = %8, %11, %14
  %18 = phi ptr [ %16, %14 ], [ %1, %11 ], [ %1, %8 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #19
  ret ptr %18
}

declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @create_tmp_var(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @build2_stat(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @force_gimple_operand(ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #3

declare ptr @gsi_insert_seq_on_edge_immediate(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local ptr @get_true_edge_from_guard_bb(ptr nocapture noundef readonly %0) local_unnamed_addr #9 !prof !34 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  br label %3

3:                                                ; preds = %31, %1
  %4 = phi i32 [ 0, %1 ], [ %32, %31 ]
  %5 = load ptr, ptr %2, align 8, !tbaa !35
  %6 = icmp eq ptr %5, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %3
  %8 = load i32, ptr %5, align 8, !tbaa !89
  br label %9

9:                                                ; preds = %7, %3
  %10 = phi i32 [ %8, %7 ], [ 0, %3 ]
  %11 = icmp eq i32 %10, %4
  br i1 %11, label %16, label %12

12:                                               ; preds = %9
  %13 = zext i32 %4 to i64
  %14 = getelementptr inbounds %struct.VEC_edge_base, ptr %5, i64 0, i32 2, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !35
  br label %16

16:                                               ; preds = %9, %12
  %17 = phi ptr [ %15, %12 ], [ null, %9 ]
  br i1 %11, label %33, label %18

18:                                               ; preds = %16
  %19 = getelementptr inbounds %struct.edge_def, ptr %17, i64 0, i32 7
  %20 = load i32, ptr %19, align 8, !tbaa !161
  %21 = and i32 %20, 1024
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %34

23:                                               ; preds = %18
  %24 = icmp eq ptr %5, null
  br i1 %24, label %27, label %25

25:                                               ; preds = %23
  %26 = load i32, ptr %5, align 8, !tbaa !89
  br label %27

27:                                               ; preds = %25, %23
  %28 = phi i32 [ %26, %25 ], [ 0, %23 ]
  %29 = icmp ult i32 %4, %28
  br i1 %29, label %31, label %30

30:                                               ; preds = %27
  tail call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 738, ptr noundef nonnull @.str.1) #19
  br label %31

31:                                               ; preds = %27, %30
  %32 = add i32 %4, 1
  br label %3, !llvm.loop !162

33:                                               ; preds = %16
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1085, ptr noundef nonnull @.str.1) #19
  br label %34

34:                                               ; preds = %18, %33
  %35 = phi ptr [ null, %33 ], [ %17, %18 ]
  ret ptr %35
}

; Function Attrs: cold nounwind uwtable
define dso_local ptr @get_false_edge_from_guard_bb(ptr nocapture noundef readonly %0) local_unnamed_addr #9 !prof !34 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  br label %3

3:                                                ; preds = %31, %1
  %4 = phi i32 [ 0, %1 ], [ %32, %31 ]
  %5 = load ptr, ptr %2, align 8, !tbaa !35
  %6 = icmp eq ptr %5, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %3
  %8 = load i32, ptr %5, align 8, !tbaa !89
  br label %9

9:                                                ; preds = %7, %3
  %10 = phi i32 [ %8, %7 ], [ 0, %3 ]
  %11 = icmp eq i32 %10, %4
  br i1 %11, label %16, label %12

12:                                               ; preds = %9
  %13 = zext i32 %4 to i64
  %14 = getelementptr inbounds %struct.VEC_edge_base, ptr %5, i64 0, i32 2, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !35
  br label %16

16:                                               ; preds = %9, %12
  %17 = phi ptr [ %15, %12 ], [ null, %9 ]
  br i1 %11, label %33, label %18

18:                                               ; preds = %16
  %19 = getelementptr inbounds %struct.edge_def, ptr %17, i64 0, i32 7
  %20 = load i32, ptr %19, align 8, !tbaa !161
  %21 = and i32 %20, 1024
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %34, label %23

23:                                               ; preds = %18
  %24 = icmp eq ptr %5, null
  br i1 %24, label %27, label %25

25:                                               ; preds = %23
  %26 = load i32, ptr %5, align 8, !tbaa !89
  br label %27

27:                                               ; preds = %25, %23
  %28 = phi i32 [ %26, %25 ], [ 0, %23 ]
  %29 = icmp ult i32 %4, %28
  br i1 %29, label %31, label %30

30:                                               ; preds = %27
  tail call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 738, ptr noundef nonnull @.str.1) #19
  br label %31

31:                                               ; preds = %27, %30
  %32 = add i32 %4, 1
  br label %3, !llvm.loop !163

33:                                               ; preds = %16
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1101, ptr noundef nonnull @.str.1) #19
  br label %34

34:                                               ; preds = %18, %33
  %35 = phi ptr [ null, %33 ], [ %17, %18 ]
  ret ptr %35
}

; Function Attrs: cold nounwind uwtable
define dso_local void @insert_loop_close_phis(ptr noundef %0, ptr noundef %1) local_unnamed_addr #9 !prof !34 {
  %3 = alloca %struct.alep, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #19
  store ptr %1, ptr %3, align 8, !tbaa !164
  %4 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef 3) #19
  %5 = getelementptr inbounds %struct.alep, ptr %3, i64 0, i32 1
  store ptr %4, ptr %5, align 8, !tbaa !166
  tail call void @update_ssa(i32 noundef 2048) #19
  call void @htab_traverse(ptr noundef %0, ptr noundef nonnull @add_loop_exit_phis, ptr noundef nonnull %3) #19
  call void @update_ssa(i32 noundef 2048) #19
  br label %6

6:                                                ; preds = %20, %2
  %7 = phi i64 [ %24, %20 ], [ 0, %2 ]
  %8 = load ptr, ptr %5, align 8
  %9 = icmp eq ptr %8, null
  br i1 %9, label %17, label %10

10:                                               ; preds = %6
  %11 = load i32, ptr %8, align 8, !tbaa !167
  %12 = zext i32 %11 to i64
  %13 = icmp ult i64 %7, %12
  br i1 %13, label %14, label %17

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.VEC_rename_map_elt_base, ptr %8, i64 0, i32 2, i64 %7
  %16 = load ptr, ptr %15, align 8, !tbaa !35
  br label %17

17:                                               ; preds = %6, %10, %14
  %18 = phi ptr [ %16, %14 ], [ null, %10 ], [ null, %6 ]
  %19 = phi i1 [ false, %14 ], [ true, %10 ], [ true, %6 ]
  br i1 %19, label %25, label %20

20:                                               ; preds = %17
  %21 = load ptr, ptr %18, align 8, !tbaa !54
  %22 = getelementptr inbounds %struct.rename_map_elt_s, ptr %18, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !56
  call void @set_rename(ptr noundef %0, ptr noundef %21, ptr noundef %23)
  call void @free(ptr noundef %18)
  %24 = add nuw i64 %7, 1
  br label %6, !llvm.loop !169

25:                                               ; preds = %17
  br i1 %9, label %27, label %26

26:                                               ; preds = %25
  call void @free(ptr noundef %8)
  br label %27

27:                                               ; preds = %25, %26
  store ptr null, ptr %5, align 8, !tbaa !35
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #19
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal noundef i32 @add_loop_exit_phis(ptr noundef %0, ptr noundef %1) #9 !prof !34 {
  %3 = alloca %struct.gimple_stmt_iterator, align 8
  %4 = icmp eq ptr %0, null
  br i1 %4, label %123, label %5

5:                                                ; preds = %2
  %6 = load ptr, ptr %0, align 8, !tbaa !35
  %7 = icmp ne ptr %6, null
  %8 = icmp ne ptr %1, null
  %9 = and i1 %8, %7
  br i1 %9, label %10, label %123

10:                                               ; preds = %5
  %11 = load ptr, ptr %1, align 8, !tbaa !164
  %12 = getelementptr inbounds %struct.rename_map_elt_s, ptr %6, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !56
  %14 = load ptr, ptr %6, align 8, !tbaa !54
  %15 = tail call fastcc zeroext i8 @expr_defined_in_loop_p(ptr noundef %13, ptr noundef %11), !range !170
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %123, label %17

17:                                               ; preds = %10
  tail call void @free(ptr noundef %6)
  store ptr null, ptr %0, align 8, !tbaa !35
  %18 = load i64, ptr %13, align 8
  %19 = and i64 %18, 65535
  %20 = icmp eq i64 %19, 141
  br i1 %20, label %21, label %123

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.tree_ssa_name, ptr %14, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !46
  %24 = getelementptr inbounds %struct.gimple_statement_base, ptr %23, i64 0, i32 4
  %25 = load ptr, ptr %24, align 8, !tbaa !46
  %26 = getelementptr inbounds %struct.basic_block_def, ptr %25, i64 0, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !72
  %28 = getelementptr inbounds %struct.tree_ssa_name, ptr %14, i64 0, i32 5
  %29 = getelementptr inbounds %struct.tree_ssa_name, ptr %14, i64 0, i32 5, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !154
  %31 = icmp eq ptr %30, %28
  br i1 %31, label %57, label %32

32:                                               ; preds = %21, %51
  %33 = phi ptr [ %49, %51 ], [ undef, %21 ]
  %34 = phi ptr [ %55, %51 ], [ %30, %21 ]
  %35 = phi ptr [ %53, %51 ], [ %30, %21 ]
  %36 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %34, i64 0, i32 2
  %37 = load ptr, ptr %36, align 8, !tbaa !46
  %38 = load i32, ptr %37, align 8
  %39 = and i32 %38, 255
  %40 = icmp eq i32 %39, 16
  br i1 %40, label %41, label %47

41:                                               ; preds = %32
  %42 = getelementptr inbounds %struct.gimple_statement_base, ptr %37, i64 0, i32 4
  %43 = load ptr, ptr %42, align 8, !tbaa !46
  %44 = getelementptr inbounds %struct.basic_block_def, ptr %43, i64 0, i32 3
  %45 = load ptr, ptr %44, align 8, !tbaa !72
  %46 = icmp eq ptr %45, %27
  br i1 %46, label %47, label %48

47:                                               ; preds = %41, %32
  br label %48

48:                                               ; preds = %47, %41
  %49 = phi ptr [ %33, %47 ], [ %37, %41 ]
  %50 = phi i1 [ true, %47 ], [ false, %41 ]
  br i1 %50, label %51, label %57

51:                                               ; preds = %48
  %52 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %35, i64 0, i32 1
  %53 = load ptr, ptr %52, align 8, !tbaa !154
  %54 = icmp eq ptr %53, %28
  %55 = select i1 %54, ptr null, ptr %53
  %56 = icmp eq ptr %53, %28
  br i1 %56, label %57, label %32, !llvm.loop !171

57:                                               ; preds = %48, %51, %21
  %58 = phi ptr [ null, %21 ], [ %49, %48 ], [ null, %51 ]
  %59 = icmp eq ptr %58, null
  br i1 %59, label %123, label %60

60:                                               ; preds = %57
  %61 = tail call ptr @single_exit(ptr noundef %11) #19
  %62 = getelementptr inbounds %struct.edge_def, ptr %61, i64 0, i32 1
  %63 = load ptr, ptr %62, align 8, !tbaa !69
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #19
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %3, ptr noundef %63) #19
  %64 = load ptr, ptr %3, align 8, !tbaa.struct !91
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #19
  %65 = icmp eq ptr %64, null
  br i1 %65, label %85, label %66

66:                                               ; preds = %60
  %67 = load ptr, ptr %64, align 8, !tbaa !92
  %68 = getelementptr inbounds %struct.gimple_statement_phi, ptr %67, i64 0, i32 4, i64 0, i32 0, i32 3
  %69 = load ptr, ptr %68, align 8, !tbaa !95
  %70 = load ptr, ptr %69, align 8, !tbaa !35
  %71 = icmp eq ptr %70, %13
  br i1 %71, label %83, label %78

72:                                               ; preds = %78
  %73 = load ptr, ptr %81, align 8, !tbaa !92
  %74 = getelementptr inbounds %struct.gimple_statement_phi, ptr %73, i64 0, i32 4, i64 0, i32 0, i32 3
  %75 = load ptr, ptr %74, align 8, !tbaa !95
  %76 = load ptr, ptr %75, align 8, !tbaa !35
  %77 = icmp eq ptr %76, %13
  br i1 %77, label %83, label %78, !llvm.loop !172

78:                                               ; preds = %66, %72
  %79 = phi ptr [ %81, %72 ], [ %64, %66 ]
  %80 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %79, i64 0, i32 2
  %81 = load ptr, ptr %80, align 8, !tbaa !97
  %82 = icmp eq ptr %81, null
  br i1 %82, label %85, label %72, !llvm.loop !172

83:                                               ; preds = %72, %66
  %84 = phi i1 [ %65, %66 ], [ %82, %72 ]
  br i1 %84, label %85, label %123

85:                                               ; preds = %78, %60, %83
  %86 = call ptr @single_exit(ptr noundef %11) #19
  %87 = getelementptr inbounds %struct.edge_def, ptr %86, i64 0, i32 1
  %88 = load ptr, ptr %87, align 8, !tbaa !69
  %89 = call ptr @create_phi_node(ptr noundef nonnull %13, ptr noundef %88) #19
  %90 = getelementptr inbounds %struct.gimple_statement_phi, ptr %89, i64 0, i32 3
  %91 = load ptr, ptr %90, align 8, !tbaa !46
  %92 = call ptr @create_new_def_for(ptr noundef %91, ptr noundef %89, ptr noundef nonnull %90) #19
  %93 = load ptr, ptr %88, align 8, !tbaa !150
  %94 = icmp eq ptr %93, null
  br i1 %94, label %98, label %95

95:                                               ; preds = %85
  %96 = load i32, ptr %93, align 8, !tbaa !89
  %97 = icmp eq i32 %96, 1
  br i1 %97, label %99, label %98

98:                                               ; preds = %85, %95
  call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 655, ptr noundef nonnull @.str.1) #19
  br label %99

99:                                               ; preds = %95, %98
  %100 = load ptr, ptr %88, align 8, !tbaa !150
  %101 = getelementptr inbounds %struct.VEC_edge_base, ptr %100, i64 0, i32 2, i64 0
  %102 = load ptr, ptr %101, align 8, !tbaa !35
  call void @add_phi_arg(ptr noundef %89, ptr noundef nonnull %13, ptr noundef %102, i32 noundef 0) #19
  %103 = getelementptr inbounds %struct.alep, ptr %1, i64 0, i32 1
  %104 = getelementptr inbounds %struct.gimple_statement_phi, ptr %58, i64 0, i32 3
  %105 = load ptr, ptr %104, align 8, !tbaa !46
  %106 = call ptr @xmalloc(i64 noundef 16) #19
  store ptr %105, ptr %106, align 8, !tbaa !54
  %107 = getelementptr inbounds %struct.rename_map_elt_s, ptr %106, i64 0, i32 1
  store ptr %92, ptr %107, align 8, !tbaa !56
  %108 = load ptr, ptr %103, align 8, !tbaa !35
  %109 = icmp eq ptr %108, null
  br i1 %109, label %115, label %110

110:                                              ; preds = %99
  %111 = getelementptr inbounds %struct.VEC_rename_map_elt_base, ptr %108, i64 0, i32 1
  %112 = load i32, ptr %111, align 4, !tbaa !173
  %113 = load i32, ptr %108, align 8, !tbaa !167
  %114 = icmp eq i32 %112, %113
  br i1 %114, label %115, label %117

115:                                              ; preds = %99, %110
  %116 = call ptr @vec_heap_p_reserve(ptr noundef %108, i32 noundef 1) #19
  store ptr %116, ptr %103, align 8, !tbaa !35
  br label %117

117:                                              ; preds = %110, %115
  %118 = load ptr, ptr %103, align 8, !tbaa !35
  %119 = load i32, ptr %118, align 8, !tbaa !167
  %120 = add i32 %119, 1
  store i32 %120, ptr %118, align 8, !tbaa !167
  %121 = zext i32 %119 to i64
  %122 = getelementptr inbounds %struct.VEC_rename_map_elt_base, ptr %118, i64 0, i32 2, i64 %121
  store ptr %106, ptr %122, align 8, !tbaa !35
  br label %123

123:                                              ; preds = %83, %117, %57, %17, %10, %2, %5
  ret i32 1
}

; Function Attrs: cold nounwind uwtable
define dso_local void @insert_guard_phis(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #9 !prof !34 {
  %6 = alloca %struct.igp, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #19
  store ptr %0, ptr %6, align 8, !tbaa !174
  %7 = getelementptr inbounds %struct.igp, ptr %6, i64 0, i32 1
  store ptr %1, ptr %7, align 8, !tbaa !176
  %8 = getelementptr inbounds %struct.igp, ptr %6, i64 0, i32 2
  store ptr %2, ptr %8, align 8, !tbaa !177
  %9 = getelementptr inbounds %struct.igp, ptr %6, i64 0, i32 3
  store ptr %3, ptr %9, align 8, !tbaa !178
  tail call void @update_ssa(i32 noundef 2048) #19
  call void @htab_traverse(ptr noundef %4, ptr noundef nonnull @add_guard_exit_phis, ptr noundef nonnull %6) #19
  call void @update_ssa(i32 noundef 2048) #19
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #19
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal noundef i32 @add_guard_exit_phis(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) #9 !prof !34 {
  %3 = load ptr, ptr %0, align 8, !tbaa !35
  %4 = load ptr, ptr %1, align 8, !tbaa !174
  %5 = getelementptr inbounds %struct.igp, ptr %1, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !176
  %7 = getelementptr inbounds %struct.igp, ptr %1, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !177
  %9 = load ptr, ptr %3, align 8, !tbaa !54
  %10 = getelementptr inbounds %struct.rename_map_elt_s, ptr %3, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !56
  %12 = getelementptr inbounds %struct.igp, ptr %1, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !178
  %14 = tail call fastcc ptr @get_rename(ptr noundef %13, ptr noundef %9)
  %15 = icmp eq ptr %14, %9
  br i1 %15, label %16, label %29

16:                                               ; preds = %2
  %17 = tail call zeroext i8 @is_gimple_reg(ptr noundef %14) #19
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %24, label %19

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.tree_common, ptr %14, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !46
  %22 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), align 8, !tbaa !35
  %23 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %21, ptr noundef %22) #19
  br label %29

24:                                               ; preds = %16
  %25 = load ptr, ptr @cfun, align 8, !tbaa !35
  %26 = getelementptr inbounds %struct.tree_ssa_name, ptr %14, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !46
  %28 = tail call ptr @gimple_default_def(ptr noundef %25, ptr noundef %27) #19
  br label %29

29:                                               ; preds = %2, %19, %24
  %30 = phi ptr [ %23, %19 ], [ %28, %24 ], [ %14, %2 ]
  %31 = icmp eq ptr %11, %30
  br i1 %31, label %39, label %32

32:                                               ; preds = %29
  %33 = tail call fastcc ptr @convert_for_phi_arg(ptr noundef %11, ptr noundef %9, ptr noundef %6)
  %34 = tail call fastcc ptr @convert_for_phi_arg(ptr noundef %30, ptr noundef %9, ptr noundef %8)
  %35 = tail call ptr @create_phi_node(ptr noundef %9, ptr noundef %4) #19
  %36 = getelementptr inbounds %struct.gimple_statement_phi, ptr %35, i64 0, i32 3
  %37 = load ptr, ptr %36, align 8, !tbaa !46
  %38 = tail call ptr @create_new_def_for(ptr noundef %37, ptr noundef %35, ptr noundef nonnull %36) #19
  tail call void @add_phi_arg(ptr noundef %35, ptr noundef %33, ptr noundef %6, i32 noundef 0) #19
  tail call void @add_phi_arg(ptr noundef %35, ptr noundef %34, ptr noundef %8, i32 noundef 0) #19
  store ptr %38, ptr %10, align 8, !tbaa !56
  store ptr %3, ptr %0, align 8, !tbaa !35
  br label %39

39:                                               ; preds = %29, %32
  ret i32 1
}

; Function Attrs: cold nounwind uwtable
define dso_local ptr @copy_bb_and_scalar_dependences(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #9 !prof !34 {
  %5 = alloca ptr, align 8
  %6 = alloca %struct.gimple_stmt_iterator, align 8
  %7 = alloca %struct.gimple_stmt_iterator, align 8
  %8 = alloca %struct.gimple_stmt_iterator, align 8
  %9 = alloca %struct.gimple_stmt_iterator, align 8
  %10 = tail call ptr @split_edge(ptr noundef %2) #19
  %11 = getelementptr inbounds %struct.basic_block_def, ptr %10, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !179
  %13 = icmp eq ptr %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %4
  %15 = load i32, ptr %12, align 8, !tbaa !89
  %16 = icmp eq i32 %15, 1
  br i1 %16, label %18, label %17

17:                                               ; preds = %4, %14
  tail call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 645, ptr noundef nonnull @.str.1) #19
  br label %18

18:                                               ; preds = %14, %17
  %19 = load ptr, ptr %11, align 8, !tbaa !179
  %20 = getelementptr inbounds %struct.VEC_edge_base, ptr %19, i64 0, i32 2, i64 0
  %21 = load ptr, ptr %20, align 8, !tbaa !35
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %9) #19
  %22 = getelementptr inbounds %struct.basic_block_def, ptr %10, i64 0, i32 13
  %23 = load i32, ptr %22, align 8, !tbaa !100, !noalias !180
  %24 = and i32 %23, 512
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %18
  %27 = getelementptr inbounds %struct.basic_block_def, ptr %10, i64 0, i32 7
  %28 = load ptr, ptr %27, align 8, !tbaa !46, !noalias !180
  %29 = icmp eq ptr %28, null
  br i1 %29, label %32, label %30

30:                                               ; preds = %26
  %31 = load ptr, ptr %28, align 8, !tbaa !104, !noalias !180
  br label %32

32:                                               ; preds = %30, %26, %18
  %33 = phi ptr [ %31, %30 ], [ null, %26 ], [ null, %18 ]
  %34 = icmp eq ptr %33, null
  br i1 %34, label %37, label %35

35:                                               ; preds = %32
  %36 = load ptr, ptr %33, align 8, !tbaa !106, !noalias !180
  br label %37

37:                                               ; preds = %35, %32
  %38 = phi ptr [ %36, %35 ], [ null, %32 ]
  store ptr %38, ptr %9, align 8, !tbaa.struct !91
  %39 = getelementptr inbounds i8, ptr %9, i64 8
  store ptr %33, ptr %39, align 8, !tbaa.struct !183
  %40 = getelementptr inbounds i8, ptr %9, i64 16
  store ptr %10, ptr %40, align 8, !tbaa.struct !184
  %41 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 13
  %42 = load i32, ptr %41, align 8, !tbaa !100, !noalias !185
  %43 = and i32 %42, 512
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %37
  %46 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %47 = load ptr, ptr %46, align 8, !tbaa !46, !noalias !185
  %48 = icmp eq ptr %47, null
  br i1 %48, label %51, label %49

49:                                               ; preds = %45
  %50 = load ptr, ptr %47, align 8, !tbaa !104, !noalias !185
  br label %51

51:                                               ; preds = %49, %45, %37
  %52 = phi ptr [ %50, %49 ], [ null, %45 ], [ null, %37 ]
  %53 = icmp eq ptr %52, null
  br i1 %53, label %56, label %54

54:                                               ; preds = %51
  %55 = load ptr, ptr %52, align 8, !tbaa !106, !noalias !185
  br label %56

56:                                               ; preds = %54, %51
  %57 = phi ptr [ %55, %54 ], [ null, %51 ]
  %58 = icmp eq ptr %57, null
  br i1 %58, label %119, label %59

59:                                               ; preds = %56, %115
  %60 = phi ptr [ %117, %115 ], [ %57, %56 ]
  %61 = load ptr, ptr %60, align 8, !tbaa !92
  %62 = load i32, ptr %61, align 8
  %63 = and i32 %62, 255
  %64 = icmp eq i32 %63, 4
  br i1 %64, label %115, label %65

65:                                               ; preds = %59
  %66 = call ptr @gimple_copy(ptr noundef nonnull %61) #19
  call void @gsi_insert_after(ptr noundef nonnull %9, ptr noundef %66, i32 noundef 0) #19
  %67 = load ptr, ptr @cfun, align 8, !tbaa !35
  %68 = icmp eq ptr %67, null
  br i1 %68, label %73, label %69

69:                                               ; preds = %65
  %70 = getelementptr inbounds %struct.function, ptr %67, i64 0, i32 3
  %71 = load ptr, ptr %70, align 8, !tbaa !127
  %72 = icmp eq ptr %71, null
  br i1 %72, label %73, label %74

73:                                               ; preds = %69, %65
  call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 51, ptr noundef nonnull @.str.1) #19
  br label %74

74:                                               ; preds = %73, %69
  %75 = getelementptr inbounds %struct.function, ptr %67, i64 0, i32 3
  %76 = load ptr, ptr %75, align 8, !tbaa !127
  %77 = getelementptr inbounds %struct.gimple_df, ptr %76, i64 0, i32 3
  %78 = load ptr, ptr %77, align 8, !tbaa !188
  call void @mark_sym_for_renaming(ptr noundef %78) #19
  %79 = call zeroext i8 @maybe_duplicate_eh_stmt(ptr noundef %66, ptr noundef nonnull %61) #19
  %80 = load ptr, ptr @cfun, align 8, !tbaa !35
  call void @gimple_duplicate_stmt_histograms(ptr noundef %80, ptr noundef %66, ptr noundef %80, ptr noundef nonnull %61) #19
  %81 = load i32, ptr %66, align 8
  %82 = and i32 %81, 255
  %83 = add nsw i32 %82, -10
  %84 = icmp ult i32 %83, -9
  br i1 %84, label %88, label %85

85:                                               ; preds = %74
  %86 = getelementptr inbounds %struct.gimple_statement_with_ops_base, ptr %66, i64 0, i32 1
  %87 = load ptr, ptr %86, align 8, !tbaa !46
  br label %88

88:                                               ; preds = %85, %74
  %89 = phi ptr [ %87, %85 ], [ null, %74 ]
  %90 = icmp eq ptr %89, null
  br i1 %90, label %95, label %91

91:                                               ; preds = %88
  %92 = getelementptr inbounds %struct.def_optype_d, ptr %89, i64 0, i32 1
  %93 = load ptr, ptr %92, align 8, !tbaa !189
  %94 = load ptr, ptr %89, align 8, !tbaa !191
  br label %95

95:                                               ; preds = %91, %88
  %96 = phi ptr [ %94, %91 ], [ %89, %88 ]
  %97 = phi i8 [ 0, %91 ], [ 1, %88 ]
  %98 = phi ptr [ %93, %91 ], [ null, %88 ]
  br i1 %90, label %115, label %99

99:                                               ; preds = %95, %110
  %100 = phi ptr [ %113, %110 ], [ %98, %95 ]
  %101 = phi i8 [ %112, %110 ], [ %97, %95 ]
  %102 = phi ptr [ %111, %110 ], [ %96, %95 ]
  %103 = load ptr, ptr %100, align 8, !tbaa !35
  %104 = call ptr @create_new_def_for(ptr noundef %103, ptr noundef nonnull %66, ptr noundef nonnull %100) #19
  call void @set_rename(ptr noundef %3, ptr noundef %103, ptr noundef %104)
  %105 = icmp eq ptr %102, null
  br i1 %105, label %110, label %106

106:                                              ; preds = %99
  %107 = getelementptr inbounds %struct.def_optype_d, ptr %102, i64 0, i32 1
  %108 = load ptr, ptr %107, align 8, !tbaa !189
  %109 = load ptr, ptr %102, align 8, !tbaa !191
  br label %110

110:                                              ; preds = %106, %99
  %111 = phi ptr [ %109, %106 ], [ %102, %99 ]
  %112 = phi i8 [ %101, %106 ], [ 1, %99 ]
  %113 = phi ptr [ %108, %106 ], [ null, %99 ]
  %114 = icmp eq i8 %112, 0
  br i1 %114, label %99, label %115, !llvm.loop !192

115:                                              ; preds = %110, %95, %59
  %116 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %60, i64 0, i32 2
  %117 = load ptr, ptr %116, align 8, !tbaa !97
  %118 = icmp eq ptr %117, null
  br i1 %118, label %119, label %59, !llvm.loop !193

119:                                              ; preds = %115, %56
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %9) #19
  %120 = call ptr @last_stmt(ptr noundef %10) #19
  %121 = icmp eq ptr %120, null
  br i1 %121, label %146, label %122

122:                                              ; preds = %119
  %123 = load i32, ptr %120, align 8
  %124 = and i32 %123, 255
  %125 = icmp eq i32 %124, 1
  br i1 %125, label %126, label %146

126:                                              ; preds = %122
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #19
  call void @llvm.experimental.noalias.scope.decl(metadata !194)
  %127 = load i32, ptr %22, align 8, !tbaa !100, !noalias !194
  %128 = and i32 %127, 512
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %130, label %136

130:                                              ; preds = %126
  %131 = getelementptr inbounds %struct.basic_block_def, ptr %10, i64 0, i32 7
  %132 = load ptr, ptr %131, align 8, !tbaa !46, !noalias !194
  %133 = icmp eq ptr %132, null
  br i1 %133, label %136, label %134

134:                                              ; preds = %130
  %135 = load ptr, ptr %132, align 8, !tbaa !104, !noalias !194
  br label %136

136:                                              ; preds = %134, %130, %126
  %137 = phi ptr [ %135, %134 ], [ null, %130 ], [ null, %126 ]
  %138 = icmp eq ptr %137, null
  br i1 %138, label %142, label %139

139:                                              ; preds = %136
  %140 = getelementptr inbounds %struct.gimple_seq_d, ptr %137, i64 0, i32 1
  %141 = load ptr, ptr %140, align 8, !tbaa !197, !noalias !194
  br label %142

142:                                              ; preds = %139, %136
  %143 = phi ptr [ %141, %139 ], [ null, %136 ]
  store ptr %143, ptr %8, align 8, !tbaa !198, !alias.scope !194
  %144 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %8, i64 0, i32 1
  store ptr %137, ptr %144, align 8, !tbaa !200, !alias.scope !194
  %145 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %8, i64 0, i32 2
  store ptr %10, ptr %145, align 8, !tbaa !201, !alias.scope !194
  call void @gsi_remove(ptr noundef nonnull %8, i8 noundef zeroext 1) #19
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #19
  br label %146

146:                                              ; preds = %119, %122, %142
  call void @remove_phi_nodes(ptr noundef %10) #19
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #19
  %147 = load i32, ptr %22, align 8, !tbaa !100, !noalias !202
  %148 = and i32 %147, 512
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %150, label %156

150:                                              ; preds = %146
  %151 = getelementptr inbounds %struct.basic_block_def, ptr %10, i64 0, i32 7
  %152 = load ptr, ptr %151, align 8, !tbaa !46, !noalias !202
  %153 = icmp eq ptr %152, null
  br i1 %153, label %156, label %154

154:                                              ; preds = %150
  %155 = load ptr, ptr %152, align 8, !tbaa !104, !noalias !202
  br label %156

156:                                              ; preds = %154, %150, %146
  %157 = phi ptr [ %155, %154 ], [ null, %150 ], [ null, %146 ]
  %158 = icmp eq ptr %157, null
  br i1 %158, label %161, label %159

159:                                              ; preds = %156
  %160 = load ptr, ptr %157, align 8, !tbaa !106, !noalias !202
  br label %161

161:                                              ; preds = %159, %156
  %162 = phi ptr [ %160, %159 ], [ null, %156 ]
  %163 = icmp eq ptr %162, null
  br i1 %163, label %174, label %164

164:                                              ; preds = %161, %170
  %165 = phi ptr [ %172, %170 ], [ %162, %161 ]
  %166 = load ptr, ptr %165, align 8, !tbaa !92, !noalias !207
  %167 = load i32, ptr %166, align 8, !noalias !207
  %168 = and i32 %167, 255
  %169 = icmp eq i32 %168, 4
  br i1 %169, label %170, label %174

170:                                              ; preds = %164
  %171 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %165, i64 0, i32 2
  %172 = load ptr, ptr %171, align 8, !tbaa !97, !noalias !207
  %173 = icmp eq ptr %172, null
  br i1 %173, label %174, label %164, !llvm.loop !208

174:                                              ; preds = %170, %164, %161
  %175 = phi ptr [ %162, %161 ], [ %172, %170 ], [ %165, %164 ]
  store ptr %175, ptr %7, align 8, !tbaa.struct !91
  %176 = getelementptr inbounds i8, ptr %7, i64 8
  store ptr %157, ptr %176, align 8, !tbaa.struct !183
  %177 = getelementptr inbounds i8, ptr %7, i64 16
  store ptr %10, ptr %177, align 8, !tbaa.struct !184
  %178 = icmp eq ptr %175, null
  br i1 %178, label %186, label %179

179:                                              ; preds = %174, %179
  %180 = phi ptr [ %184, %179 ], [ %175, %174 ]
  %181 = load ptr, ptr %180, align 8, !tbaa !92
  call fastcc void @expand_scalar_variables_stmt(ptr noundef %181, ptr noundef %10, ptr noundef %1, ptr noundef %3, ptr noundef nonnull %7)
  %182 = load ptr, ptr %7, align 8, !tbaa !198
  %183 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %182, i64 0, i32 2
  %184 = load ptr, ptr %183, align 8, !tbaa !97
  store ptr %184, ptr %7, align 8, !tbaa !198
  %185 = icmp eq ptr %184, null
  br i1 %185, label %186, label %179, !llvm.loop !209

186:                                              ; preds = %179, %174
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #19
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #19
  call void @llvm.experimental.noalias.scope.decl(metadata !210)
  %187 = load i32, ptr %22, align 8, !tbaa !100, !noalias !151
  %188 = and i32 %187, 512
  %189 = icmp eq i32 %188, 0
  br i1 %189, label %190, label %196

190:                                              ; preds = %186
  %191 = getelementptr inbounds %struct.basic_block_def, ptr %10, i64 0, i32 7
  %192 = load ptr, ptr %191, align 8, !tbaa !46, !noalias !210
  %193 = icmp eq ptr %192, null
  br i1 %193, label %196, label %194

194:                                              ; preds = %190
  %195 = load ptr, ptr %192, align 8, !tbaa !104, !noalias !210
  br label %196

196:                                              ; preds = %194, %190, %186
  %197 = phi ptr [ %195, %194 ], [ null, %190 ], [ null, %186 ]
  %198 = icmp eq ptr %197, null
  br i1 %198, label %201, label %199

199:                                              ; preds = %196
  %200 = load ptr, ptr %197, align 8, !tbaa !106, !noalias !210
  br label %201

201:                                              ; preds = %199, %196
  %202 = phi ptr [ %200, %199 ], [ null, %196 ]
  store ptr %202, ptr %6, align 8, !tbaa !198, !alias.scope !210
  %203 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %6, i64 0, i32 1
  store ptr %197, ptr %203, align 8, !tbaa !200, !alias.scope !210
  %204 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %6, i64 0, i32 2
  store ptr %10, ptr %204, align 8, !tbaa !201, !alias.scope !210
  br i1 %189, label %205, label %211

205:                                              ; preds = %201
  %206 = getelementptr inbounds %struct.basic_block_def, ptr %10, i64 0, i32 7
  %207 = load ptr, ptr %206, align 8, !tbaa !46, !noalias !213
  %208 = icmp eq ptr %207, null
  br i1 %208, label %211, label %209

209:                                              ; preds = %205
  %210 = load ptr, ptr %207, align 8, !tbaa !104, !noalias !213
  br label %211

211:                                              ; preds = %209, %205, %201
  %212 = phi ptr [ %210, %209 ], [ null, %205 ], [ null, %201 ]
  %213 = icmp eq ptr %212, null
  br i1 %213, label %216, label %214

214:                                              ; preds = %211
  %215 = load ptr, ptr %212, align 8, !tbaa !106, !noalias !213
  br label %216

216:                                              ; preds = %214, %211
  %217 = phi ptr [ %215, %214 ], [ null, %211 ]
  %218 = icmp eq ptr %217, null
  br i1 %218, label %229, label %219

219:                                              ; preds = %216, %225
  %220 = phi ptr [ %227, %225 ], [ %217, %216 ]
  %221 = load ptr, ptr %220, align 8, !tbaa !92, !noalias !218
  %222 = load i32, ptr %221, align 8, !noalias !218
  %223 = and i32 %222, 255
  %224 = icmp eq i32 %223, 4
  br i1 %224, label %225, label %229

225:                                              ; preds = %219
  %226 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %220, i64 0, i32 2
  %227 = load ptr, ptr %226, align 8, !tbaa !97, !noalias !218
  %228 = icmp eq ptr %227, null
  br i1 %228, label %229, label %219, !llvm.loop !208

229:                                              ; preds = %225, %219, %216
  %230 = phi ptr [ %217, %216 ], [ %227, %225 ], [ %220, %219 ]
  %231 = icmp eq ptr %230, null
  br i1 %231, label %342, label %232

232:                                              ; preds = %229, %338
  %233 = phi ptr [ %340, %338 ], [ %230, %229 ]
  %234 = load ptr, ptr %233, align 8, !tbaa !92
  %235 = load i32, ptr %234, align 8
  %236 = and i32 %235, 255
  %237 = add nsw i32 %236, -10
  %238 = icmp ult i32 %237, -9
  br i1 %238, label %242, label %239

239:                                              ; preds = %232
  %240 = getelementptr inbounds %struct.gimple_statement_with_ops_base, ptr %234, i64 0, i32 2
  %241 = load ptr, ptr %240, align 8, !tbaa !46
  br label %242

242:                                              ; preds = %239, %232
  %243 = phi ptr [ %241, %239 ], [ null, %232 ]
  %244 = icmp eq ptr %243, null
  br i1 %244, label %248, label %245

245:                                              ; preds = %242
  %246 = getelementptr inbounds %struct.use_optype_d, ptr %243, i64 0, i32 1
  %247 = load ptr, ptr %243, align 8, !tbaa !108
  br label %248

248:                                              ; preds = %245, %242
  %249 = phi ptr [ %247, %245 ], [ %243, %242 ]
  %250 = phi i8 [ 0, %245 ], [ 1, %242 ]
  %251 = phi ptr [ %246, %245 ], [ null, %242 ]
  %252 = getelementptr ptr, ptr %234, i64 1
  br i1 %244, label %332, label %253

253:                                              ; preds = %248, %327
  %254 = phi ptr [ %330, %327 ], [ %251, %248 ]
  %255 = phi i8 [ %329, %327 ], [ %250, %248 ]
  %256 = phi ptr [ %328, %327 ], [ %249, %248 ]
  %257 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %254, i64 0, i32 3
  %258 = load ptr, ptr %257, align 8, !tbaa !95
  %259 = load ptr, ptr %258, align 8, !tbaa !35
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #19
  %260 = load i64, ptr %259, align 8
  %261 = and i64 %260, 65535
  %262 = icmp eq i64 %261, 141
  br i1 %262, label %263, label %319

263:                                              ; preds = %253
  %264 = call fastcc ptr @get_rename(ptr noundef %3, ptr noundef nonnull %259)
  %265 = icmp eq ptr %259, %264
  br i1 %265, label %319, label %266

266:                                              ; preds = %263
  %267 = getelementptr inbounds %struct.tree_common, ptr %259, i64 0, i32 2
  %268 = load ptr, ptr %267, align 8, !tbaa !46
  %269 = getelementptr inbounds %struct.tree_common, ptr %264, i64 0, i32 2
  %270 = load ptr, ptr %269, align 8, !tbaa !46
  %271 = icmp eq ptr %268, %270
  br i1 %271, label %272, label %279

272:                                              ; preds = %266
  %273 = load i64, ptr %264, align 8
  %274 = and i64 %273, 65535
  %275 = icmp eq i64 %274, 141
  br i1 %275, label %317, label %276

276:                                              ; preds = %272
  %277 = call zeroext i8 @is_gimple_reg(ptr noundef nonnull %259) #19
  %278 = icmp eq i8 %277, 0
  br i1 %278, label %317, label %279

279:                                              ; preds = %276, %266
  %280 = load i32, ptr %234, align 8
  %281 = and i32 %280, 255
  %282 = icmp eq i32 %281, 2
  br i1 %282, label %283, label %305

283:                                              ; preds = %279
  %284 = and i32 %280, -65534
  %285 = icmp eq i32 %284, 2
  br i1 %285, label %286, label %304

286:                                              ; preds = %283
  %287 = getelementptr inbounds %struct.gimple_statement_base, ptr %234, i64 0, i32 3
  %288 = load i32, ptr %287, align 4, !tbaa !46
  %289 = icmp ugt i32 %288, 1
  br i1 %289, label %291, label %290

290:                                              ; preds = %286
  call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 1665, ptr noundef nonnull @.str.1) #19
  br label %291

291:                                              ; preds = %290, %286
  %292 = load i32, ptr %234, align 8
  %293 = and i32 %292, 255
  %294 = zext nneg i32 %293 to i64
  %295 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %294
  %296 = load i32, ptr %295, align 4, !tbaa !50
  %297 = zext i32 %296 to i64
  %298 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %297
  %299 = load i64, ptr %298, align 8, !tbaa !116
  %300 = icmp eq i64 %299, 0
  br i1 %300, label %301, label %302

301:                                              ; preds = %291
  call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 1622, ptr noundef nonnull @.str.1) #19
  br label %302

302:                                              ; preds = %301, %291
  %303 = getelementptr i8, ptr %252, i64 %299
  store ptr null, ptr %303, align 8, !tbaa !35
  br label %314

304:                                              ; preds = %283
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 687, ptr noundef nonnull @.str.1) #19
  br label %314

305:                                              ; preds = %279
  %306 = call ptr @create_tmp_var(ptr noundef %268, ptr noundef nonnull @.str.2) #19
  br i1 %271, label %309, label %307

307:                                              ; preds = %305
  %308 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %268, ptr noundef %264) #19
  br label %309

309:                                              ; preds = %307, %305
  %310 = phi ptr [ %308, %307 ], [ %264, %305 ]
  %311 = call ptr @build2_stat(i32 noundef 53, ptr noundef %268, ptr noundef %306, ptr noundef %310) #19
  %312 = call ptr @force_gimple_operand(ptr noundef %311, ptr noundef nonnull %5, i8 noundef zeroext 1, ptr noundef null) #19
  %313 = load ptr, ptr %5, align 8, !tbaa !35
  call void @gsi_insert_seq_before(ptr noundef nonnull %6, ptr noundef %313, i32 noundef 1) #19
  br label %314

314:                                              ; preds = %309, %304, %302
  %315 = phi ptr [ %312, %309 ], [ %264, %304 ], [ %264, %302 ]
  %316 = phi i32 [ 0, %309 ], [ 2, %304 ], [ 2, %302 ]
  br i1 %282, label %319, label %317

317:                                              ; preds = %314, %276, %272
  %318 = phi ptr [ %315, %314 ], [ %264, %276 ], [ %264, %272 ]
  call void @replace_exp(ptr noundef %254, ptr noundef %318) #19
  br label %319

319:                                              ; preds = %317, %314, %263, %253
  %320 = phi i32 [ 0, %317 ], [ %316, %314 ], [ 4, %253 ], [ 4, %263 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #19
  %321 = icmp eq i32 %320, 2
  br i1 %321, label %332, label %322

322:                                              ; preds = %319
  %323 = icmp eq ptr %256, null
  br i1 %323, label %327, label %324

324:                                              ; preds = %322
  %325 = getelementptr inbounds %struct.use_optype_d, ptr %256, i64 0, i32 1
  %326 = load ptr, ptr %256, align 8, !tbaa !108
  br label %327

327:                                              ; preds = %322, %324
  %328 = phi ptr [ %326, %324 ], [ %256, %322 ]
  %329 = phi i8 [ %255, %324 ], [ 1, %322 ]
  %330 = phi ptr [ %325, %324 ], [ null, %322 ]
  %331 = icmp eq i8 %329, 0
  br i1 %331, label %253, label %332, !llvm.loop !219

332:                                              ; preds = %327, %319, %248
  %333 = load i32, ptr %234, align 8
  %334 = and i32 %333, 255
  %335 = add nsw i32 %334, -10
  %336 = icmp ult i32 %335, -9
  br i1 %336, label %338, label %337

337:                                              ; preds = %332
  call void @gimple_set_modified(ptr noundef nonnull %234, i8 noundef zeroext 1) #19
  call void @update_stmt_operands(ptr noundef nonnull %234) #19
  br label %338

338:                                              ; preds = %337, %332
  %339 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %233, i64 0, i32 2
  %340 = load ptr, ptr %339, align 8, !tbaa !97
  %341 = icmp eq ptr %340, null
  br i1 %341, label %342, label %232, !llvm.loop !220

342:                                              ; preds = %338, %229
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #19
  ret ptr %21
}

declare ptr @split_edge(ptr noundef) local_unnamed_addr #3

declare void @remove_phi_nodes(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local ptr @outermost_loop_in_sese(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #9 !prof !34 {
  %3 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 3
  br label %4

4:                                                ; preds = %2, %48
  %5 = phi ptr [ %51, %48 ], [ %3, %2 ]
  %6 = load ptr, ptr %5, align 8, !tbaa !35
  br label %7

7:                                                ; preds = %4, %45
  %8 = phi ptr [ null, %45 ], [ %6, %4 ]
  %9 = getelementptr inbounds %struct.loop, ptr %8, i64 0, i32 7
  %10 = load ptr, ptr %9, align 8, !tbaa !142
  %11 = icmp eq ptr %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %7
  %13 = load i32, ptr %10, align 8, !tbaa !82
  br label %14

14:                                               ; preds = %12, %7
  %15 = phi i32 [ %13, %12 ], [ 0, %7 ]
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %22, label %17

17:                                               ; preds = %14
  %18 = add i32 %15, -1
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %10, i64 0, i32 2, i64 %19
  %21 = load ptr, ptr %20, align 8, !tbaa !35
  br label %22

22:                                               ; preds = %14, %17
  %23 = phi ptr [ %21, %17 ], [ null, %14 ]
  %24 = icmp eq ptr %23, null
  br i1 %24, label %52, label %25

25:                                               ; preds = %22
  br i1 %11, label %28, label %26

26:                                               ; preds = %25
  %27 = load i32, ptr %10, align 8, !tbaa !82
  br label %28

28:                                               ; preds = %26, %25
  %29 = phi i32 [ %27, %26 ], [ 0, %25 ]
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %36, label %31

31:                                               ; preds = %28
  %32 = add i32 %29, -1
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %10, i64 0, i32 2, i64 %33
  %35 = load ptr, ptr %34, align 8, !tbaa !35
  br label %36

36:                                               ; preds = %28, %31
  %37 = phi ptr [ %35, %31 ], [ null, %28 ]
  %38 = tail call fastcc zeroext i8 @loop_in_sese_p(ptr noundef %37, ptr noundef %0), !range !170
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %52, label %40

40:                                               ; preds = %36
  %41 = load ptr, ptr %9, align 8, !tbaa !142
  %42 = icmp eq ptr %41, null
  br i1 %42, label %45, label %43

43:                                               ; preds = %40
  %44 = load i32, ptr %41, align 8, !tbaa !82
  br label %45

45:                                               ; preds = %43, %40
  %46 = phi i32 [ %44, %43 ], [ 0, %40 ]
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %7, label %48, !llvm.loop !221

48:                                               ; preds = %45
  %49 = add i32 %46, -1
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %41, i64 0, i32 2, i64 %50
  br label %4, !llvm.loop !221

52:                                               ; preds = %22, %36
  ret ptr %8
}

; Function Attrs: cold inlinehint nounwind uwtable
define internal fastcc zeroext i8 @loop_in_sese_p(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #2 !prof !34 {
  %3 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !73
  %5 = load ptr, ptr %1, align 8, !tbaa !67
  %6 = getelementptr inbounds %struct.edge_def, ptr %5, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !69
  %8 = getelementptr inbounds %struct.sese_s, ptr %1, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !71
  %10 = getelementptr inbounds %struct.edge_def, ptr %9, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !69
  %12 = tail call zeroext i8 @dominated_by_p(i32 noundef 1, ptr noundef %4, ptr noundef %7) #19
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %38, label %14

14:                                               ; preds = %2
  %15 = tail call zeroext i8 @dominated_by_p(i32 noundef 1, ptr noundef %4, ptr noundef %11) #19
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %14
  %18 = tail call zeroext i8 @dominated_by_p(i32 noundef 1, ptr noundef %7, ptr noundef %11) #19
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %38, label %20

20:                                               ; preds = %14, %17
  %21 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 3
  %22 = load ptr, ptr %21, align 8, !tbaa !77
  %23 = load ptr, ptr %1, align 8, !tbaa !67
  %24 = getelementptr inbounds %struct.edge_def, ptr %23, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !69
  %26 = load ptr, ptr %8, align 8, !tbaa !71
  %27 = getelementptr inbounds %struct.edge_def, ptr %26, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !69
  %29 = tail call zeroext i8 @dominated_by_p(i32 noundef 1, ptr noundef %22, ptr noundef %25) #19
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %38, label %31

31:                                               ; preds = %20
  %32 = tail call zeroext i8 @dominated_by_p(i32 noundef 1, ptr noundef %22, ptr noundef %28) #19
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %31
  %35 = tail call zeroext i8 @dominated_by_p(i32 noundef 1, ptr noundef %25, ptr noundef %28) #19
  %36 = icmp ne i8 %35, 0
  %37 = zext i1 %36 to i8
  br label %38

38:                                               ; preds = %2, %34, %31, %20, %17
  %39 = phi i8 [ 0, %17 ], [ 0, %20 ], [ 1, %31 ], [ %37, %34 ], [ 0, %2 ]
  ret i8 %39
}

; Function Attrs: cold nounwind uwtable
define dso_local void @if_region_set_false_region(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #9 !prof !34 {
  %3 = load ptr, ptr %0, align 8, !tbaa !222
  %4 = load ptr, ptr %3, align 8, !tbaa !67
  %5 = getelementptr inbounds %struct.edge_def, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !69
  %7 = tail call ptr @get_false_edge_from_guard_bb(ptr noundef %6)
  %8 = getelementptr inbounds %struct.edge_def, ptr %7, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !69
  %10 = load ptr, ptr %1, align 8, !tbaa !67
  %11 = getelementptr inbounds %struct.sese_s, ptr %1, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !71
  %13 = load ptr, ptr %10, align 8, !tbaa !224
  %14 = load ptr, ptr %12, align 8, !tbaa !224
  %15 = load ptr, ptr @cfun, align 8, !tbaa !35
  %16 = getelementptr inbounds %struct.function, ptr %15, i64 0, i32 4
  %17 = load ptr, ptr %16, align 8, !tbaa !133
  %18 = getelementptr inbounds %struct.loops, ptr %17, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !225
  %20 = load ptr, ptr @htab_hash_pointer, align 8, !tbaa !35
  %21 = tail call i32 %20(ptr noundef nonnull %12) #19
  %22 = tail call ptr @htab_find_slot_with_hash(ptr noundef %19, ptr noundef nonnull %12, i32 noundef %21, i32 noundef 0) #19
  %23 = getelementptr inbounds %struct.edge_def, ptr %7, i64 0, i32 7
  %24 = load i32, ptr %23, align 8, !tbaa !161
  %25 = getelementptr inbounds %struct.edge_def, ptr %10, i64 0, i32 7
  store i32 %24, ptr %25, align 8, !tbaa !161
  %26 = getelementptr inbounds %struct.edge_def, ptr %12, i64 0, i32 7
  %27 = load i32, ptr %26, align 8, !tbaa !161
  store i32 %27, ptr %23, align 8, !tbaa !161
  tail call void @redirect_edge_pred(ptr noundef nonnull %10, ptr noundef %6) #19
  tail call void @redirect_edge_pred(ptr noundef nonnull %12, ptr noundef %13) #19
  tail call void @redirect_edge_pred(ptr noundef %7, ptr noundef %14) #19
  %28 = getelementptr inbounds %struct.basic_block_def, ptr %9, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !179
  %30 = icmp eq ptr %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %2
  %32 = load i32, ptr %29, align 8, !tbaa !89
  %33 = icmp eq i32 %32, 1
  br i1 %33, label %35, label %34

34:                                               ; preds = %31, %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 645, ptr noundef nonnull @.str.1) #19
  br label %35

35:                                               ; preds = %31, %34
  %36 = load ptr, ptr %28, align 8, !tbaa !179
  %37 = getelementptr inbounds %struct.VEC_edge_base, ptr %36, i64 0, i32 2, i64 0
  %38 = load ptr, ptr %37, align 8, !tbaa !35
  %39 = getelementptr inbounds %struct.edge_def, ptr %38, i64 0, i32 1
  %40 = load ptr, ptr %39, align 8, !tbaa !69
  tail call void @redirect_edge_succ(ptr noundef %7, ptr noundef %40) #19
  tail call void @delete_basic_block(ptr noundef %9) #19
  store i32 1, ptr %26, align 8, !tbaa !161
  %41 = tail call zeroext i8 @mark_irreducible_loops() #19
  tail call void @free_dominance_info(i32 noundef 1) #19
  tail call void @free_dominance_info(i32 noundef 2) #19
  tail call void @calculate_dominance_info(i32 noundef 1) #19
  tail call void @calculate_dominance_info(i32 noundef 2) #19
  store ptr %7, ptr %11, align 8, !tbaa !71
  %42 = getelementptr inbounds %struct.ifsese_s, ptr %0, i64 0, i32 2
  %43 = load ptr, ptr %42, align 8, !tbaa !226
  %44 = icmp eq ptr %43, null
  br i1 %44, label %46, label %45

45:                                               ; preds = %35
  tail call void @free(ptr noundef %43)
  br label %46

46:                                               ; preds = %45, %35
  store ptr %1, ptr %42, align 8, !tbaa !226
  %47 = icmp eq ptr %22, null
  br i1 %47, label %70, label %48

48:                                               ; preds = %46
  %49 = tail call ptr @ggc_alloc_cleared_stat(i64 noundef 32) #19
  %50 = load ptr, ptr %22, align 8, !tbaa !35
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %49, ptr noundef nonnull align 8 dereferenceable(32) %50, i64 32, i1 false)
  %51 = load ptr, ptr @cfun, align 8, !tbaa !35
  %52 = getelementptr inbounds %struct.function, ptr %51, i64 0, i32 4
  %53 = load ptr, ptr %52, align 8, !tbaa !133
  %54 = getelementptr inbounds %struct.loops, ptr %53, i64 0, i32 2
  %55 = load ptr, ptr %54, align 8, !tbaa !225
  tail call void @htab_clear_slot(ptr noundef %55, ptr noundef nonnull %22) #19
  %56 = load ptr, ptr @cfun, align 8, !tbaa !35
  %57 = getelementptr inbounds %struct.function, ptr %56, i64 0, i32 4
  %58 = load ptr, ptr %57, align 8, !tbaa !133
  %59 = getelementptr inbounds %struct.loops, ptr %58, i64 0, i32 2
  %60 = load ptr, ptr %59, align 8, !tbaa !225
  %61 = load ptr, ptr @htab_hash_pointer, align 8, !tbaa !35
  %62 = tail call i32 %61(ptr noundef %7) #19
  %63 = tail call ptr @htab_find_slot_with_hash(ptr noundef %60, ptr noundef %7, i32 noundef %62, i32 noundef 1) #19
  store ptr %7, ptr %49, align 8, !tbaa !227
  store ptr %49, ptr %63, align 8, !tbaa !35
  %64 = load ptr, ptr %7, align 8, !tbaa !224
  %65 = getelementptr inbounds %struct.basic_block_def, ptr %64, i64 0, i32 3
  %66 = load ptr, ptr %65, align 8, !tbaa !72
  %67 = getelementptr inbounds %struct.loop, ptr %66, i64 0, i32 18
  %68 = load ptr, ptr %67, align 8, !tbaa !229
  %69 = getelementptr inbounds %struct.loop_exit, ptr %68, i64 0, i32 2
  store ptr %49, ptr %69, align 8, !tbaa !230
  br label %70

70:                                               ; preds = %48, %46
  ret void
}

declare ptr @htab_find_slot_with_hash(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @redirect_edge_pred(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @redirect_edge_succ(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @delete_basic_block(ptr noundef) local_unnamed_addr #3

declare ptr @ggc_alloc_cleared_stat(i64 noundef) local_unnamed_addr #3

declare void @htab_clear_slot(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local ptr @create_if_region_on_edge(ptr noundef %0, ptr noundef %1) local_unnamed_addr #9 !prof !34 {
  %3 = tail call ptr @xmalloc(i64 noundef 48) #19
  %4 = tail call ptr @xmalloc(i64 noundef 48) #19
  %5 = tail call ptr @xmalloc(i64 noundef 48) #19
  %6 = tail call ptr @xmalloc(i64 noundef 24) #19
  %7 = tail call ptr @create_empty_if_region_on_edge(ptr noundef %0, ptr noundef %1) #19
  store ptr %3, ptr %6, align 8, !tbaa !222
  store ptr %0, ptr %3, align 8, !tbaa !67
  %8 = getelementptr inbounds %struct.sese_s, ptr %3, i64 0, i32 1
  store ptr %7, ptr %8, align 8, !tbaa !71
  %9 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !69
  %11 = getelementptr inbounds %struct.basic_block_def, ptr %10, i64 0, i32 1
  %12 = getelementptr inbounds %struct.sese_s, ptr %4, i64 0, i32 1
  %13 = getelementptr inbounds %struct.ifsese_s, ptr %6, i64 0, i32 1
  %14 = getelementptr inbounds %struct.sese_s, ptr %5, i64 0, i32 1
  %15 = getelementptr inbounds %struct.ifsese_s, ptr %6, i64 0, i32 2
  br label %16

16:                                               ; preds = %76, %2
  %17 = phi i32 [ 0, %2 ], [ %77, %76 ]
  %18 = load ptr, ptr %11, align 8, !tbaa !35
  %19 = icmp eq ptr %18, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %16
  %21 = load i32, ptr %18, align 8, !tbaa !89
  br label %22

22:                                               ; preds = %20, %16
  %23 = phi i32 [ %21, %20 ], [ 0, %16 ]
  %24 = icmp eq i32 %23, %17
  br i1 %24, label %29, label %25

25:                                               ; preds = %22
  %26 = zext i32 %17 to i64
  %27 = getelementptr inbounds %struct.VEC_edge_base, ptr %18, i64 0, i32 2, i64 %26
  %28 = load ptr, ptr %27, align 8, !tbaa !35
  br label %29

29:                                               ; preds = %22, %25
  %30 = phi ptr [ %28, %25 ], [ null, %22 ]
  br i1 %24, label %78, label %31

31:                                               ; preds = %29
  %32 = getelementptr inbounds %struct.edge_def, ptr %30, i64 0, i32 7
  %33 = load i32, ptr %32, align 8, !tbaa !161
  %34 = and i32 %33, 1024
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %50, label %36

36:                                               ; preds = %31
  store ptr %30, ptr %4, align 8, !tbaa !67
  %37 = getelementptr inbounds %struct.edge_def, ptr %30, i64 0, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !69
  %39 = getelementptr inbounds %struct.basic_block_def, ptr %38, i64 0, i32 1
  %40 = load ptr, ptr %39, align 8, !tbaa !179
  %41 = icmp eq ptr %40, null
  br i1 %41, label %45, label %42

42:                                               ; preds = %36
  %43 = load i32, ptr %40, align 8, !tbaa !89
  %44 = icmp eq i32 %43, 1
  br i1 %44, label %46, label %45

45:                                               ; preds = %36, %42
  tail call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 645, ptr noundef nonnull @.str.1) #19
  br label %46

46:                                               ; preds = %42, %45
  %47 = load ptr, ptr %39, align 8, !tbaa !179
  %48 = getelementptr inbounds %struct.VEC_edge_base, ptr %47, i64 0, i32 2, i64 0
  %49 = load ptr, ptr %48, align 8, !tbaa !35
  store ptr %49, ptr %12, align 8, !tbaa !71
  store ptr %4, ptr %13, align 8, !tbaa !231
  br label %67

50:                                               ; preds = %31
  %51 = and i32 %33, 2048
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %67, label %53

53:                                               ; preds = %50
  store ptr %30, ptr %5, align 8, !tbaa !67
  %54 = getelementptr inbounds %struct.edge_def, ptr %30, i64 0, i32 1
  %55 = load ptr, ptr %54, align 8, !tbaa !69
  %56 = getelementptr inbounds %struct.basic_block_def, ptr %55, i64 0, i32 1
  %57 = load ptr, ptr %56, align 8, !tbaa !179
  %58 = icmp eq ptr %57, null
  br i1 %58, label %62, label %59

59:                                               ; preds = %53
  %60 = load i32, ptr %57, align 8, !tbaa !89
  %61 = icmp eq i32 %60, 1
  br i1 %61, label %63, label %62

62:                                               ; preds = %53, %59
  tail call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 645, ptr noundef nonnull @.str.1) #19
  br label %63

63:                                               ; preds = %59, %62
  %64 = load ptr, ptr %56, align 8, !tbaa !179
  %65 = getelementptr inbounds %struct.VEC_edge_base, ptr %64, i64 0, i32 2, i64 0
  %66 = load ptr, ptr %65, align 8, !tbaa !35
  store ptr %66, ptr %14, align 8, !tbaa !71
  store ptr %5, ptr %15, align 8, !tbaa !226
  br label %67

67:                                               ; preds = %50, %63, %46
  %68 = load ptr, ptr %11, align 8, !tbaa !35
  %69 = icmp eq ptr %68, null
  br i1 %69, label %72, label %70

70:                                               ; preds = %67
  %71 = load i32, ptr %68, align 8, !tbaa !89
  br label %72

72:                                               ; preds = %70, %67
  %73 = phi i32 [ %71, %70 ], [ 0, %67 ]
  %74 = icmp ult i32 %17, %73
  br i1 %74, label %76, label %75

75:                                               ; preds = %72
  tail call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 738, ptr noundef nonnull @.str.1) #19
  br label %76

76:                                               ; preds = %72, %75
  %77 = add i32 %17, 1
  br label %16, !llvm.loop !232

78:                                               ; preds = %29
  ret ptr %6
}

declare ptr @create_empty_if_region_on_edge(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local noundef ptr @move_sese_in_condition(ptr noundef %0) local_unnamed_addr #9 !prof !34 {
  %2 = load ptr, ptr %0, align 8, !tbaa !67
  %3 = tail call ptr @split_edge(ptr noundef %2) #19
  %4 = getelementptr inbounds %struct.basic_block_def, ptr %3, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !179
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  %8 = load i32, ptr %5, align 8, !tbaa !89
  %9 = icmp eq i32 %8, 1
  br i1 %9, label %11, label %10

10:                                               ; preds = %1, %7
  tail call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 645, ptr noundef nonnull @.str.1) #19
  br label %11

11:                                               ; preds = %7, %10
  %12 = load ptr, ptr %4, align 8, !tbaa !179
  %13 = getelementptr inbounds %struct.VEC_edge_base, ptr %12, i64 0, i32 2, i64 0
  %14 = load ptr, ptr %13, align 8, !tbaa !35
  store ptr %14, ptr %0, align 8, !tbaa !67
  %15 = load ptr, ptr %3, align 8, !tbaa !150
  %16 = icmp eq ptr %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %11
  %18 = load i32, ptr %15, align 8, !tbaa !89
  %19 = icmp eq i32 %18, 1
  br i1 %19, label %21, label %20

20:                                               ; preds = %11, %17
  tail call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 655, ptr noundef nonnull @.str.1) #19
  br label %21

21:                                               ; preds = %17, %20
  %22 = load ptr, ptr %3, align 8, !tbaa !150
  %23 = getelementptr inbounds %struct.VEC_edge_base, ptr %22, i64 0, i32 2, i64 0
  %24 = load ptr, ptr %23, align 8, !tbaa !35
  %25 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 14), align 16, !tbaa !35
  %26 = tail call ptr @create_if_region_on_edge(ptr noundef %24, ptr noundef %25)
  tail call void @if_region_set_false_region(ptr noundef %26, ptr noundef nonnull %0)
  ret ptr %26
}

; Function Attrs: cold nounwind uwtable
define dso_local void @set_ifsese_condition(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #9 !prof !34 {
  %3 = alloca %struct.gimple_stmt_iterator, align 8
  %4 = load ptr, ptr %0, align 8, !tbaa !222
  %5 = load ptr, ptr %4, align 8, !tbaa !67
  %6 = getelementptr inbounds %struct.edge_def, ptr %5, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !69
  %8 = tail call ptr @last_stmt(ptr noundef %7) #19
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #19
  tail call void @llvm.experimental.noalias.scope.decl(metadata !233)
  %9 = getelementptr inbounds %struct.basic_block_def, ptr %7, i64 0, i32 13
  %10 = load i32, ptr %9, align 8, !tbaa !100, !noalias !233
  %11 = and i32 %10, 512
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.basic_block_def, ptr %7, i64 0, i32 7
  %15 = load ptr, ptr %14, align 8, !tbaa !46, !noalias !233
  %16 = icmp eq ptr %15, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %13
  %18 = load ptr, ptr %15, align 8, !tbaa !104, !noalias !233
  br label %19

19:                                               ; preds = %17, %13, %2
  %20 = phi ptr [ %18, %17 ], [ null, %13 ], [ null, %2 ]
  %21 = icmp eq ptr %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.gimple_seq_d, ptr %20, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !197, !noalias !233
  br label %25

25:                                               ; preds = %19, %22
  %26 = phi ptr [ %24, %22 ], [ null, %19 ]
  store ptr %26, ptr %3, align 8, !tbaa !198, !alias.scope !233
  %27 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %3, i64 0, i32 1
  store ptr %20, ptr %27, align 8, !tbaa !200, !alias.scope !233
  %28 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %3, i64 0, i32 2
  store ptr %7, ptr %28, align 8, !tbaa !201, !alias.scope !233
  %29 = load i32, ptr %8, align 8
  %30 = and i32 %29, 255
  %31 = icmp eq i32 %30, 1
  br i1 %31, label %33, label %32

32:                                               ; preds = %25
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1582, ptr noundef nonnull @.str.1) #19
  br label %33

33:                                               ; preds = %25, %32
  call void @gsi_remove(ptr noundef nonnull %3, i8 noundef zeroext 1) #19
  %34 = load i32, ptr %9, align 8, !tbaa !100, !noalias !236
  %35 = and i32 %34, 512
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.basic_block_def, ptr %7, i64 0, i32 7
  %39 = load ptr, ptr %38, align 8, !tbaa !46, !noalias !236
  %40 = icmp eq ptr %39, null
  br i1 %40, label %43, label %41

41:                                               ; preds = %37
  %42 = load ptr, ptr %39, align 8, !tbaa !104, !noalias !236
  br label %43

43:                                               ; preds = %41, %37, %33
  %44 = phi ptr [ %42, %41 ], [ null, %37 ], [ null, %33 ]
  %45 = icmp eq ptr %44, null
  br i1 %45, label %49, label %46

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct.gimple_seq_d, ptr %44, i64 0, i32 1
  %48 = load ptr, ptr %47, align 8, !tbaa !197, !noalias !236
  br label %49

49:                                               ; preds = %43, %46
  %50 = phi ptr [ %48, %46 ], [ null, %43 ]
  store ptr %50, ptr %3, align 8, !tbaa.struct !91
  store ptr %44, ptr %27, align 8, !tbaa.struct !183
  store ptr %7, ptr %28, align 8, !tbaa.struct !184
  %51 = call ptr @force_gimple_operand_gsi(ptr noundef nonnull %3, ptr noundef %1, i8 noundef zeroext 1, ptr noundef null, i8 noundef zeroext 0, i32 noundef 0) #19
  %52 = call ptr @gimple_build_cond_from_tree(ptr noundef %51, ptr noundef null, ptr noundef null) #19
  %53 = load i32, ptr %9, align 8, !tbaa !100, !noalias !239
  %54 = and i32 %53, 512
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %49
  %57 = getelementptr inbounds %struct.basic_block_def, ptr %7, i64 0, i32 7
  %58 = load ptr, ptr %57, align 8, !tbaa !46, !noalias !239
  %59 = icmp eq ptr %58, null
  br i1 %59, label %62, label %60

60:                                               ; preds = %56
  %61 = load ptr, ptr %58, align 8, !tbaa !104, !noalias !239
  br label %62

62:                                               ; preds = %60, %56, %49
  %63 = phi ptr [ %61, %60 ], [ null, %56 ], [ null, %49 ]
  %64 = icmp eq ptr %63, null
  br i1 %64, label %68, label %65

65:                                               ; preds = %62
  %66 = getelementptr inbounds %struct.gimple_seq_d, ptr %63, i64 0, i32 1
  %67 = load ptr, ptr %66, align 8, !tbaa !197, !noalias !239
  br label %68

68:                                               ; preds = %62, %65
  %69 = phi ptr [ %67, %65 ], [ null, %62 ]
  store ptr %69, ptr %3, align 8, !tbaa.struct !91
  store ptr %63, ptr %27, align 8, !tbaa.struct !183
  store ptr %7, ptr %28, align 8, !tbaa.struct !184
  call void @gsi_insert_after(ptr noundef nonnull %3, ptr noundef %52, i32 noundef 0) #19
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #19
  ret void
}

declare ptr @last_stmt(ptr noundef) local_unnamed_addr #3

declare void @gsi_remove(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

declare ptr @force_gimple_operand_gsi(ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #3

declare ptr @gimple_build_cond_from_tree(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @gsi_insert_after(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local ptr @scalar_evolution_in_region(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #9 !prof !34 {
  %4 = load ptr, ptr %0, align 8, !tbaa !67
  %5 = load ptr, ptr %4, align 8, !tbaa !224
  %6 = load i64, ptr %2, align 8
  %7 = and i64 %6, 65535
  %8 = icmp eq i64 %7, 141
  br i1 %8, label %9, label %12

9:                                                ; preds = %3
  %10 = tail call fastcc zeroext i8 @loop_in_sese_p(ptr noundef %1, ptr noundef nonnull %0), !range !170
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %9, %3
  %13 = tail call ptr @analyze_scalar_evolution(ptr noundef %1, ptr noundef nonnull %2) #19
  %14 = tail call ptr @instantiate_scev(ptr noundef %5, ptr noundef %1, ptr noundef %13) #19
  br label %63

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.tree_ssa_name, ptr %2, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !46
  %18 = getelementptr inbounds %struct.gimple_statement_base, ptr %17, i64 0, i32 4
  %19 = load ptr, ptr %18, align 8, !tbaa !46
  %20 = icmp eq ptr %19, null
  br i1 %20, label %63, label %21

21:                                               ; preds = %15
  %22 = load ptr, ptr %0, align 8, !tbaa !67
  %23 = getelementptr inbounds %struct.edge_def, ptr %22, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !69
  %25 = getelementptr inbounds %struct.sese_s, ptr %0, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !71
  %27 = getelementptr inbounds %struct.edge_def, ptr %26, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !69
  %29 = tail call zeroext i8 @dominated_by_p(i32 noundef 1, ptr noundef nonnull %19, ptr noundef %24) #19
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %63, label %31

31:                                               ; preds = %21
  %32 = tail call zeroext i8 @dominated_by_p(i32 noundef 1, ptr noundef nonnull %19, ptr noundef %28) #19
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %31
  %35 = tail call zeroext i8 @dominated_by_p(i32 noundef 1, ptr noundef %24, ptr noundef %28) #19
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %63, label %37

37:                                               ; preds = %31, %34
  %38 = load ptr, ptr %16, align 8, !tbaa !46
  %39 = getelementptr inbounds %struct.gimple_statement_base, ptr %38, i64 0, i32 4
  %40 = load ptr, ptr %39, align 8, !tbaa !46
  %41 = icmp eq ptr %40, null
  br i1 %41, label %45, label %42

42:                                               ; preds = %37
  %43 = getelementptr inbounds %struct.basic_block_def, ptr %40, i64 0, i32 3
  %44 = load ptr, ptr %43, align 8, !tbaa !72
  br label %45

45:                                               ; preds = %37, %42
  %46 = phi ptr [ %44, %42 ], [ null, %37 ]
  %47 = tail call fastcc zeroext i8 @loop_in_sese_p(ptr noundef %46, ptr noundef nonnull %0), !range !170
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %61, label %49

49:                                               ; preds = %45
  %50 = tail call ptr @analyze_scalar_evolution(ptr noundef %46, ptr noundef nonnull %2) #19
  %51 = getelementptr inbounds %struct.loop, ptr %1, i64 0, i32 7
  %52 = load ptr, ptr %51, align 8, !tbaa !142
  %53 = icmp eq ptr %52, null
  br i1 %53, label %57, label %54

54:                                               ; preds = %49
  %55 = load i32, ptr %52, align 8, !tbaa !82
  %56 = add i32 %55, 1
  br label %57

57:                                               ; preds = %49, %54
  %58 = phi i32 [ %56, %54 ], [ 1, %49 ]
  %59 = tail call ptr @superloop_at_depth(ptr noundef %46, i32 noundef %58) #19
  %60 = tail call ptr @compute_overall_effect_of_inner_loop(ptr noundef %59, ptr noundef %50) #19
  br label %63

61:                                               ; preds = %45
  %62 = tail call ptr @instantiate_scev(ptr noundef %5, ptr noundef %1, ptr noundef nonnull %2) #19
  br label %63

63:                                               ; preds = %15, %21, %34, %61, %57, %12
  %64 = phi ptr [ %14, %12 ], [ %60, %57 ], [ %62, %61 ], [ %2, %34 ], [ %2, %21 ], [ %2, %15 ]
  ret ptr %64
}

declare ptr @instantiate_scev(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @analyze_scalar_evolution(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @superloop_at_depth(ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @compute_overall_effect_of_inner_loop(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #1

declare void @print_generic_expr(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare zeroext i8 @dominated_by_p(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @bitmap_set_bit(ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @bitmap_bit_p(ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @vec_heap_p_reserve(ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @vec_heap_p_reserve_exact(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc void @sese_build_liveouts_use(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3) unnamed_addr #9 !prof !34 {
  %5 = load i64, ptr %3, align 8
  %6 = and i64 %5, 65535
  %7 = icmp eq i64 %6, 141
  br i1 %7, label %8, label %49

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.tree_ssa_name, ptr %3, i64 0, i32 3
  %10 = load i32, ptr %9, align 8, !tbaa !46
  %11 = getelementptr inbounds %struct.tree_ssa_name, ptr %3, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !46
  %13 = getelementptr inbounds %struct.gimple_statement_base, ptr %12, i64 0, i32 4
  %14 = load ptr, ptr %13, align 8, !tbaa !46
  %15 = icmp eq ptr %14, null
  br i1 %15, label %49, label %16

16:                                               ; preds = %8
  %17 = load ptr, ptr %0, align 8, !tbaa !67
  %18 = getelementptr inbounds %struct.edge_def, ptr %17, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !69
  %20 = getelementptr inbounds %struct.sese_s, ptr %0, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !71
  %22 = getelementptr inbounds %struct.edge_def, ptr %21, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !69
  %24 = tail call zeroext i8 @dominated_by_p(i32 noundef 1, ptr noundef nonnull %14, ptr noundef %19) #19
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %49, label %26

26:                                               ; preds = %16
  %27 = tail call zeroext i8 @dominated_by_p(i32 noundef 1, ptr noundef nonnull %14, ptr noundef %23) #19
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %26
  %30 = tail call zeroext i8 @dominated_by_p(i32 noundef 1, ptr noundef %19, ptr noundef %23) #19
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %49, label %32

32:                                               ; preds = %26, %29
  %33 = load ptr, ptr %0, align 8, !tbaa !67
  %34 = getelementptr inbounds %struct.edge_def, ptr %33, i64 0, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !69
  %36 = load ptr, ptr %20, align 8, !tbaa !71
  %37 = getelementptr inbounds %struct.edge_def, ptr %36, i64 0, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !69
  %39 = tail call zeroext i8 @dominated_by_p(i32 noundef 1, ptr noundef %2, ptr noundef %35) #19
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %47, label %41

41:                                               ; preds = %32
  %42 = tail call zeroext i8 @dominated_by_p(i32 noundef 1, ptr noundef %2, ptr noundef %38) #19
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %49, label %44

44:                                               ; preds = %41
  %45 = tail call zeroext i8 @dominated_by_p(i32 noundef 1, ptr noundef %35, ptr noundef %38) #19
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %32, %44
  %48 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %1, i32 noundef %10) #19
  br label %49

49:                                               ; preds = %41, %16, %8, %29, %44, %4, %47
  ret void
}

declare void @gimple_set_modified(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

declare void @update_stmt_operands(ptr noundef) local_unnamed_addr #3

declare ptr @create_phi_node(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @create_new_def_for(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @add_phi_arg(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @vec_heap_o_reserve_exact(ptr noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

declare ptr @sbitmap_alloc(i32 noundef) local_unnamed_addr #3

declare void @sbitmap_zero(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @get_vdef_before_sese(ptr noundef %0, ptr noundef readonly %1, ptr noundef %2) unnamed_addr #9 !prof !34 {
  br label %4

4:                                                ; preds = %141, %3
  %5 = phi ptr [ %1, %3 ], [ %105, %141 ]
  %6 = getelementptr inbounds %struct.tree_ssa_name, ptr %5, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !46
  %8 = getelementptr inbounds %struct.gimple_statement_base, ptr %7, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !46
  %10 = icmp eq ptr %9, null
  br i1 %10, label %142, label %11

11:                                               ; preds = %4
  %12 = load ptr, ptr %0, align 8, !tbaa !67
  %13 = getelementptr inbounds %struct.edge_def, ptr %12, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !69
  %15 = getelementptr inbounds %struct.sese_s, ptr %0, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !71
  %17 = getelementptr inbounds %struct.edge_def, ptr %16, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !69
  %19 = tail call zeroext i8 @dominated_by_p(i32 noundef 1, ptr noundef nonnull %9, ptr noundef %14) #19
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %142, label %21

21:                                               ; preds = %11
  %22 = tail call zeroext i8 @dominated_by_p(i32 noundef 1, ptr noundef nonnull %9, ptr noundef %18) #19
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %21
  %25 = tail call zeroext i8 @dominated_by_p(i32 noundef 1, ptr noundef %14, ptr noundef %18) #19
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %142, label %27

27:                                               ; preds = %21, %24
  %28 = getelementptr inbounds %struct.basic_block_def, ptr %9, i64 0, i32 9
  %29 = load i32, ptr %28, align 8, !tbaa !242
  %30 = lshr i32 %29, 6
  %31 = zext nneg i32 %30 to i64
  %32 = getelementptr inbounds %struct.simple_bitmap_def, ptr %2, i64 0, i32 3, i64 %31
  %33 = load i64, ptr %32, align 8, !tbaa !116
  %34 = and i32 %29, 63
  %35 = zext nneg i32 %34 to i64
  %36 = shl nuw i64 1, %35
  %37 = and i64 %36, %33
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %142

39:                                               ; preds = %27
  %40 = load ptr, ptr %2, align 8, !tbaa !155
  %41 = icmp eq ptr %40, null
  br i1 %41, label %46, label %42

42:                                               ; preds = %39
  %43 = getelementptr inbounds i8, ptr %40, i64 %31
  %44 = load i8, ptr %43, align 1, !tbaa !46
  %45 = add i8 %44, 1
  store i8 %45, ptr %43, align 1, !tbaa !46
  br label %46

46:                                               ; preds = %39, %42
  %47 = load i64, ptr %32, align 8, !tbaa !116
  %48 = or i64 %47, %36
  store i64 %48, ptr %32, align 8, !tbaa !116
  %49 = load i32, ptr %7, align 8
  %50 = trunc i32 %49 to i8
  switch i8 %50, label %142 [
    i8 16, label %51
    i8 6, label %91
    i8 8, label %91
  ]

51:                                               ; preds = %46
  %52 = getelementptr inbounds %struct.gimple_statement_phi, ptr %7, i64 0, i32 2
  %53 = load i32, ptr %52, align 4, !tbaa !46
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %142, label %55

55:                                               ; preds = %51
  %56 = getelementptr inbounds %struct.gimple_statement_phi, ptr %7, i64 0, i32 1
  br label %57

57:                                               ; preds = %55, %86
  %58 = phi i64 [ 0, %55 ], [ %87, %86 ]
  %59 = phi ptr [ undef, %55 ], [ %85, %86 ]
  %60 = load i32, ptr %56, align 8, !tbaa !46
  %61 = zext i32 %60 to i64
  %62 = icmp ugt i64 %58, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %57
  tail call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 3103, ptr noundef nonnull @.str.1) #19
  br label %64

64:                                               ; preds = %57, %63
  %65 = getelementptr inbounds %struct.gimple_statement_phi, ptr %7, i64 0, i32 4, i64 %58, i32 0, i32 3
  %66 = load ptr, ptr %65, align 8, !tbaa !95
  %67 = load ptr, ptr %66, align 8, !tbaa !35
  %68 = getelementptr inbounds %struct.tree_ssa_name, ptr %67, i64 0, i32 2
  %69 = load ptr, ptr %68, align 8, !tbaa !46
  %70 = getelementptr inbounds %struct.gimple_statement_base, ptr %69, i64 0, i32 4
  %71 = load ptr, ptr %70, align 8, !tbaa !46
  %72 = icmp eq ptr %71, null
  br i1 %72, label %78, label %73

73:                                               ; preds = %64
  %74 = load i32, ptr %28, align 8, !tbaa !242
  %75 = getelementptr inbounds %struct.basic_block_def, ptr %71, i64 0, i32 9
  %76 = load i32, ptr %75, align 8, !tbaa !242
  %77 = icmp eq i32 %74, %76
  br i1 %77, label %83, label %78

78:                                               ; preds = %73, %64
  %79 = tail call fastcc ptr @get_vdef_before_sese(ptr noundef nonnull %0, ptr noundef %67, ptr noundef nonnull %2)
  %80 = icmp ne ptr %79, null
  %81 = zext i1 %80 to i32
  %82 = select i1 %80, ptr %79, ptr %59
  br label %83

83:                                               ; preds = %78, %73
  %84 = phi i32 [ 5, %73 ], [ %81, %78 ]
  %85 = phi ptr [ %59, %73 ], [ %82, %78 ]
  switch i32 %84, label %142 [
    i32 0, label %86
    i32 5, label %86
  ]

86:                                               ; preds = %83, %83
  %87 = add nuw nsw i64 %58, 1
  %88 = load i32, ptr %52, align 4, !tbaa !46
  %89 = zext i32 %88 to i64
  %90 = icmp ult i64 %87, %89
  br i1 %90, label %57, label %142, !llvm.loop !243

91:                                               ; preds = %46, %46
  %92 = and i32 %49, 254
  %93 = add nsw i32 %92, -6
  %94 = icmp ult i32 %93, 4
  tail call void @llvm.assume(i1 %94)
  %95 = getelementptr inbounds %struct.gimple_statement_with_ops_base, ptr %7, i64 0, i32 2
  %96 = load ptr, ptr %95, align 8, !tbaa !46, !nonnull !151, !noundef !151
  %97 = getelementptr inbounds %struct.use_optype_d, ptr %96, i64 0, i32 1, i32 3
  %98 = load ptr, ptr %97, align 8, !tbaa !244
  %99 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %7, i64 0, i32 2
  %100 = icmp eq ptr %98, %99
  %101 = getelementptr inbounds %struct.use_optype_d, ptr %96, i64 0, i32 1
  %102 = select i1 %100, ptr %101, ptr null
  %103 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %102, i64 0, i32 3
  %104 = load ptr, ptr %103, align 8, !tbaa !95
  %105 = load ptr, ptr %104, align 8, !tbaa !35
  %106 = load i32, ptr %28, align 8, !tbaa !242
  %107 = getelementptr inbounds %struct.tree_ssa_name, ptr %105, i64 0, i32 2
  %108 = load ptr, ptr %107, align 8, !tbaa !46
  %109 = getelementptr inbounds %struct.gimple_statement_base, ptr %108, i64 0, i32 4
  %110 = load ptr, ptr %109, align 8, !tbaa !46
  %111 = getelementptr inbounds %struct.basic_block_def, ptr %110, i64 0, i32 9
  %112 = load i32, ptr %111, align 8, !tbaa !242
  %113 = icmp eq i32 %106, %112
  br i1 %113, label %114, label %141

114:                                              ; preds = %91
  %115 = load ptr, ptr %2, align 8, !tbaa !155
  %116 = icmp eq ptr %115, null
  br i1 %116, label %131, label %117

117:                                              ; preds = %114
  %118 = lshr i32 %106, 6
  %119 = zext nneg i32 %118 to i64
  %120 = getelementptr inbounds %struct.simple_bitmap_def, ptr %2, i64 0, i32 3, i64 %119
  %121 = load i64, ptr %120, align 8, !tbaa !116
  %122 = and i32 %106, 63
  %123 = zext nneg i32 %122 to i64
  %124 = shl nuw i64 1, %123
  %125 = and i64 %121, %124
  %126 = icmp eq i64 %125, 0
  br i1 %126, label %131, label %127

127:                                              ; preds = %117
  %128 = getelementptr inbounds i8, ptr %115, i64 %119
  %129 = load i8, ptr %128, align 1, !tbaa !46
  %130 = add i8 %129, -1
  store i8 %130, ptr %128, align 1, !tbaa !46
  br label %131

131:                                              ; preds = %114, %117, %127
  %132 = and i32 %106, 63
  %133 = zext nneg i32 %132 to i64
  %134 = shl nuw i64 1, %133
  %135 = xor i64 %134, -1
  %136 = lshr i32 %106, 6
  %137 = zext nneg i32 %136 to i64
  %138 = getelementptr inbounds %struct.simple_bitmap_def, ptr %2, i64 0, i32 3, i64 %137
  %139 = load i64, ptr %138, align 8, !tbaa !116
  %140 = and i64 %139, %135
  store i64 %140, ptr %138, align 8, !tbaa !116
  br label %141

141:                                              ; preds = %131, %91
  br label %4

142:                                              ; preds = %83, %86, %51, %11, %46, %27, %4, %24
  %143 = phi ptr [ %5, %24 ], [ %5, %4 ], [ null, %27 ], [ null, %46 ], [ %5, %11 ], [ null, %51 ], [ null, %86 ], [ %85, %83 ]
  ret ptr %143
}

; Function Attrs: cold nofree nosync nounwind memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @expr_defined_in_loop_p(ptr nocapture noundef readonly %0, ptr noundef readnone %1) unnamed_addr #14 !prof !34 {
  br label %3

3:                                                ; preds = %30, %27, %19, %2
  %4 = phi ptr [ %0, %2 ], [ %21, %19 ], [ %29, %27 ], [ %32, %30 ]
  %5 = load i64, ptr %4, align 8
  %6 = and i64 %5, 65535
  %7 = getelementptr inbounds [0 x i8], ptr @tree_code_length, i64 0, i64 %6
  %8 = load i8, ptr %7, align 1, !tbaa !46
  switch i8 %8, label %45 [
    i8 3, label %9
    i8 2, label %22
    i8 1, label %30
    i8 0, label %33
  ]

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.tree_exp, ptr %4, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !46
  %12 = tail call fastcc zeroext i8 @expr_defined_in_loop_p(ptr noundef %11, ptr noundef %1), !range !170
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %14, label %45

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.tree_exp, ptr %4, i64 1
  %16 = load ptr, ptr %15, align 8, !tbaa !46
  %17 = tail call fastcc zeroext i8 @expr_defined_in_loop_p(ptr noundef %16, ptr noundef %1), !range !170
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %19, label %45

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.tree_exp, ptr %4, i64 1, i32 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !46
  br label %3

22:                                               ; preds = %3
  %23 = getelementptr inbounds %struct.tree_exp, ptr %4, i64 0, i32 3
  %24 = load ptr, ptr %23, align 8, !tbaa !46
  %25 = tail call fastcc zeroext i8 @expr_defined_in_loop_p(ptr noundef %24, ptr noundef %1), !range !170
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %27, label %45

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.tree_exp, ptr %4, i64 1
  %29 = load ptr, ptr %28, align 8, !tbaa !46
  br label %3

30:                                               ; preds = %3
  %31 = getelementptr inbounds %struct.tree_exp, ptr %4, i64 0, i32 3
  %32 = load ptr, ptr %31, align 8, !tbaa !46
  br label %3

33:                                               ; preds = %3
  %34 = and i64 %5, 4295032831
  %35 = icmp eq i64 %34, 141
  br i1 %35, label %36, label %45

36:                                               ; preds = %33
  %37 = getelementptr inbounds %struct.tree_ssa_name, ptr %4, i64 0, i32 2
  %38 = load ptr, ptr %37, align 8, !tbaa !46
  %39 = getelementptr inbounds %struct.gimple_statement_base, ptr %38, i64 0, i32 4
  %40 = load ptr, ptr %39, align 8, !tbaa !46
  %41 = getelementptr inbounds %struct.basic_block_def, ptr %40, i64 0, i32 3
  %42 = load ptr, ptr %41, align 8, !tbaa !72
  %43 = icmp eq ptr %42, %1
  %44 = zext i1 %43 to i8
  br label %45

45:                                               ; preds = %36, %3, %33, %22, %9, %14
  %46 = phi i8 [ 1, %14 ], [ 1, %9 ], [ 1, %22 ], [ 0, %33 ], [ 0, %3 ], [ %44, %36 ]
  ret i8 %46
}

declare ptr @single_exit(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @convert_for_phi_arg(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) unnamed_addr #9 !prof !34 {
  %4 = alloca ptr, align 8
  %5 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !46
  %7 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !46
  %9 = icmp eq ptr %8, %6
  br i1 %9, label %12, label %10

10:                                               ; preds = %3
  %11 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %6, ptr noundef %0) #19
  br label %12

12:                                               ; preds = %10, %3
  %13 = phi ptr [ %11, %10 ], [ %0, %3 ]
  %14 = load i64, ptr %13, align 8
  %15 = and i64 %14, 65535
  %16 = icmp eq i64 %15, 141
  br i1 %16, label %26, label %17

17:                                               ; preds = %12
  %18 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef nonnull %13) #19
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %17
  %21 = tail call ptr @create_tmp_var(ptr noundef %6, ptr noundef nonnull @.str.2) #19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #19
  %22 = tail call ptr @build2_stat(i32 noundef 53, ptr noundef %6, ptr noundef %21, ptr noundef nonnull %13) #19
  %23 = call ptr @force_gimple_operand(ptr noundef %22, ptr noundef nonnull %4, i8 noundef zeroext 1, ptr noundef null) #19
  %24 = load ptr, ptr %4, align 8, !tbaa !35
  %25 = call ptr @gsi_insert_seq_on_edge_immediate(ptr noundef %2, ptr noundef %24) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #19
  br label %26

26:                                               ; preds = %20, %17, %12
  %27 = phi ptr [ %13, %17 ], [ %23, %20 ], [ %13, %12 ]
  ret ptr %27
}

declare ptr @fold_convert_loc(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @gimple_default_def(ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @is_gimple_min_invariant(ptr noundef) local_unnamed_addr #3

declare ptr @gimple_copy(ptr noundef) local_unnamed_addr #3

declare void @mark_sym_for_renaming(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @maybe_duplicate_eh_stmt(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @gimple_duplicate_stmt_histograms(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc void @expand_scalar_variables_stmt(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3, ptr noundef %4) unnamed_addr #9 !prof !34 {
  %6 = load i32, ptr %0, align 8
  %7 = and i32 %6, 255
  %8 = add nsw i32 %7, -10
  %9 = icmp ult i32 %8, -9
  br i1 %9, label %13, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.gimple_statement_with_ops_base, ptr %0, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !46
  br label %13

13:                                               ; preds = %10, %5
  %14 = phi ptr [ %12, %10 ], [ null, %5 ]
  %15 = icmp eq ptr %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.use_optype_d, ptr %14, i64 0, i32 1
  %18 = load ptr, ptr %14, align 8, !tbaa !108
  br label %19

19:                                               ; preds = %13, %16
  %20 = phi ptr [ %18, %16 ], [ %14, %13 ]
  %21 = phi i8 [ 0, %16 ], [ 1, %13 ]
  %22 = phi ptr [ %17, %16 ], [ null, %13 ]
  br i1 %15, label %91, label %23

23:                                               ; preds = %19, %86
  %24 = phi ptr [ %89, %86 ], [ %22, %19 ]
  %25 = phi i8 [ %88, %86 ], [ %21, %19 ]
  %26 = phi ptr [ %87, %86 ], [ %20, %19 ]
  %27 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %24, i64 0, i32 3
  %28 = load ptr, ptr %27, align 8, !tbaa !95
  %29 = load ptr, ptr %28, align 8, !tbaa !35
  %30 = getelementptr inbounds %struct.tree_common, ptr %29, i64 0, i32 2
  %31 = load ptr, ptr %30, align 8, !tbaa !46
  %32 = load i64, ptr %29, align 8
  %33 = trunc i64 %32 to i32
  %34 = and i32 %33, 65535
  %35 = tail call zeroext i8 @is_gimple_reg(ptr noundef nonnull %29) #19
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %81, label %37

37:                                               ; preds = %23
  %38 = tail call fastcc ptr @get_rename(ptr noundef %3, ptr noundef nonnull %29)
  %39 = icmp eq ptr %38, %29
  br i1 %39, label %40, label %81

40:                                               ; preds = %37
  %41 = tail call fastcc ptr @expand_scalar_variables_expr(ptr noundef %31, ptr noundef nonnull %29, i32 noundef %34, ptr noundef null, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4)
  %42 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %31, ptr noundef %41) #19
  %43 = icmp eq ptr %42, %29
  br i1 %43, label %81, label %44

44:                                               ; preds = %40
  %45 = load i32, ptr %0, align 8
  %46 = and i32 %45, 255
  %47 = icmp eq i32 %46, 2
  br i1 %47, label %48, label %71

48:                                               ; preds = %44
  %49 = and i32 %45, -65534
  %50 = icmp eq i32 %49, 2
  br i1 %50, label %51, label %70

51:                                               ; preds = %48
  %52 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 3
  %53 = load i32, ptr %52, align 4, !tbaa !46
  %54 = icmp ugt i32 %53, 1
  br i1 %54, label %56, label %55

55:                                               ; preds = %51
  tail call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 1665, ptr noundef nonnull @.str.1) #19
  br label %56

56:                                               ; preds = %55, %51
  %57 = load i32, ptr %0, align 8
  %58 = and i32 %57, 255
  %59 = zext nneg i32 %58 to i64
  %60 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %59
  %61 = load i32, ptr %60, align 4, !tbaa !50
  %62 = zext i32 %61 to i64
  %63 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %62
  %64 = load i64, ptr %63, align 8, !tbaa !116
  %65 = icmp eq i64 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %56
  tail call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 1622, ptr noundef nonnull @.str.1) #19
  br label %67

67:                                               ; preds = %56, %66
  %68 = getelementptr inbounds i8, ptr %0, i64 %64
  %69 = getelementptr inbounds ptr, ptr %68, i64 1
  store ptr null, ptr %69, align 8, !tbaa !35
  br label %91

70:                                               ; preds = %48
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1006, ptr noundef nonnull @.str.1) #19
  br label %91

71:                                               ; preds = %44
  %72 = load i64, ptr %42, align 8
  %73 = and i64 %72, 65535
  %74 = icmp eq i64 %73, 141
  br i1 %74, label %79, label %75

75:                                               ; preds = %71
  %76 = tail call ptr @create_tmp_var(ptr noundef %31, ptr noundef nonnull @.str.2) #19
  %77 = tail call ptr @build2_stat(i32 noundef 53, ptr noundef %31, ptr noundef %76, ptr noundef nonnull %42) #19
  %78 = tail call ptr @force_gimple_operand_gsi(ptr noundef %4, ptr noundef %77, i8 noundef zeroext 1, ptr noundef null, i8 noundef zeroext 1, i32 noundef 1) #19
  br label %79

79:                                               ; preds = %75, %71
  %80 = phi ptr [ %78, %75 ], [ %42, %71 ]
  tail call void @replace_exp(ptr noundef %24, ptr noundef %80) #19
  br label %81

81:                                               ; preds = %40, %37, %23, %79
  %82 = icmp eq ptr %26, null
  br i1 %82, label %86, label %83

83:                                               ; preds = %81
  %84 = getelementptr inbounds %struct.use_optype_d, ptr %26, i64 0, i32 1
  %85 = load ptr, ptr %26, align 8, !tbaa !108
  br label %86

86:                                               ; preds = %81, %83
  %87 = phi ptr [ %85, %83 ], [ %26, %81 ]
  %88 = phi i8 [ %25, %83 ], [ 1, %81 ]
  %89 = phi ptr [ %84, %83 ], [ null, %81 ]
  %90 = icmp eq i8 %88, 0
  br i1 %90, label %23, label %91, !llvm.loop !245

91:                                               ; preds = %86, %19, %70, %67
  %92 = load i32, ptr %0, align 8
  %93 = and i32 %92, 255
  %94 = add nsw i32 %93, -10
  %95 = icmp ult i32 %94, -9
  br i1 %95, label %97, label %96

96:                                               ; preds = %91
  tail call void @gimple_set_modified(ptr noundef nonnull %0, i8 noundef zeroext 1) #19
  tail call void @update_stmt_operands(ptr noundef nonnull %0) #19
  br label %97

97:                                               ; preds = %91, %96
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @expand_scalar_variables_expr(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr nocapture noundef readonly %5, ptr noundef %6, ptr noundef %7) unnamed_addr #9 !prof !34 {
  %9 = zext nneg i32 %2 to i64
  %10 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %9
  %11 = load i32, ptr %10, align 4, !tbaa !50
  switch i32 %11, label %87 [
    i32 1, label %13
    i32 3, label %13
    i32 4, label %12
    i32 6, label %65
    i32 7, label %73
    i32 5, label %73
  ]

12:                                               ; preds = %8
  switch i32 %2, label %64 [
    i32 43, label %15
    i32 44, label %15
    i32 47, label %23
    i32 45, label %42
    i32 41, label %13
  ]

13:                                               ; preds = %39, %88, %105, %12, %95, %8, %8, %90, %98, %73, %65, %42, %15
  %14 = phi ptr [ %22, %15 ], [ %63, %42 ], [ %72, %65 ], [ %86, %73 ], [ %104, %98 ], [ %89, %88 ], [ null, %105 ], [ %41, %39 ], [ %1, %8 ], [ %1, %12 ], [ %1, %95 ], [ %1, %8 ], [ %1, %90 ]
  ret ptr %14

15:                                               ; preds = %12, %12
  %16 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !46
  %18 = load i64, ptr %17, align 8
  %19 = trunc i64 %18 to i32
  %20 = and i32 %19, 65535
  %21 = tail call fastcc ptr @expand_scalar_variables_expr(ptr noundef %0, ptr noundef nonnull %17, i32 noundef %20, ptr noundef null, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7)
  %22 = tail call ptr @build1_stat(i32 noundef %2, ptr noundef %0, ptr noundef %21) #19
  br label %13

23:                                               ; preds = %12
  %24 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !46
  %26 = tail call fastcc ptr @expand_scalar_variables_ssa_name(ptr noundef %0, ptr noundef %25, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7)
  %27 = load i64, ptr %26, align 8
  %28 = and i64 %27, 65535
  %29 = icmp eq i64 %28, 141
  br i1 %29, label %39, label %30

30:                                               ; preds = %23
  %31 = tail call zeroext i8 @is_gimple_reg(ptr noundef %25) #19
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %39, label %33

33:                                               ; preds = %30
  %34 = getelementptr inbounds %struct.tree_common, ptr %25, i64 0, i32 2
  %35 = load ptr, ptr %34, align 8, !tbaa !46
  %36 = tail call ptr @create_tmp_var(ptr noundef %35, ptr noundef nonnull @.str.2) #19
  %37 = tail call ptr @build2_stat(i32 noundef 53, ptr noundef %35, ptr noundef %36, ptr noundef nonnull %26) #19
  %38 = tail call ptr @force_gimple_operand_gsi(ptr noundef %7, ptr noundef %37, i8 noundef zeroext 1, ptr noundef null, i8 noundef zeroext 1, i32 noundef 1) #19
  br label %39

39:                                               ; preds = %33, %30, %23
  %40 = phi ptr [ %38, %33 ], [ %26, %30 ], [ %26, %23 ]
  %41 = tail call ptr @fold_build1_stat_loc(i32 noundef 0, i32 noundef 47, ptr noundef %0, ptr noundef %40) #19
  br label %13

42:                                               ; preds = %12
  %43 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3
  %44 = load ptr, ptr %43, align 8, !tbaa !46
  %45 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1
  %46 = load ptr, ptr %45, align 8, !tbaa !46
  %47 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1, i32 0, i32 1
  %48 = load ptr, ptr %47, align 8, !tbaa !46
  %49 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1, i32 0, i32 2
  %50 = load ptr, ptr %49, align 8, !tbaa !46
  %51 = getelementptr inbounds %struct.tree_common, ptr %44, i64 0, i32 2
  %52 = load ptr, ptr %51, align 8, !tbaa !46
  %53 = load i64, ptr %44, align 8
  %54 = trunc i64 %53 to i32
  %55 = and i32 %54, 65535
  %56 = tail call fastcc ptr @expand_scalar_variables_expr(ptr noundef %52, ptr noundef nonnull %44, i32 noundef %55, ptr noundef null, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7)
  %57 = getelementptr inbounds %struct.tree_common, ptr %46, i64 0, i32 2
  %58 = load ptr, ptr %57, align 8, !tbaa !46
  %59 = load i64, ptr %46, align 8
  %60 = trunc i64 %59 to i32
  %61 = and i32 %60, 65535
  %62 = tail call fastcc ptr @expand_scalar_variables_expr(ptr noundef %58, ptr noundef nonnull %46, i32 noundef %61, ptr noundef null, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7)
  %63 = tail call ptr @build4_stat(i32 noundef 45, ptr noundef %0, ptr noundef %56, ptr noundef %62, ptr noundef %48, ptr noundef %50) #19
  br label %13

64:                                               ; preds = %12
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 912, ptr noundef nonnull @.str.1) #19
  switch i32 %11, label %87 [
    i32 6, label %65
    i32 7, label %73
    i32 5, label %73
  ]

65:                                               ; preds = %8, %64
  %66 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %67 = load ptr, ptr %66, align 8, !tbaa !46
  %68 = load i64, ptr %1, align 8
  %69 = trunc i64 %68 to i32
  %70 = and i32 %69, 65535
  %71 = tail call fastcc ptr @expand_scalar_variables_expr(ptr noundef %67, ptr noundef nonnull %1, i32 noundef %70, ptr noundef null, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7)
  %72 = tail call ptr @fold_build1_stat_loc(i32 noundef 0, i32 noundef %2, ptr noundef %0, ptr noundef %71) #19
  br label %13

73:                                               ; preds = %64, %8, %8, %64
  %74 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %75 = load ptr, ptr %74, align 8, !tbaa !46
  %76 = load i64, ptr %1, align 8
  %77 = trunc i64 %76 to i32
  %78 = and i32 %77, 65535
  %79 = tail call fastcc ptr @expand_scalar_variables_expr(ptr noundef %75, ptr noundef nonnull %1, i32 noundef %78, ptr noundef null, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7)
  %80 = getelementptr inbounds %struct.tree_common, ptr %3, i64 0, i32 2
  %81 = load ptr, ptr %80, align 8, !tbaa !46
  %82 = load i64, ptr %3, align 8
  %83 = trunc i64 %82 to i32
  %84 = and i32 %83, 65535
  %85 = tail call fastcc ptr @expand_scalar_variables_expr(ptr noundef %81, ptr noundef nonnull %3, i32 noundef %84, ptr noundef null, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7)
  %86 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef %2, ptr noundef %0, ptr noundef %79, ptr noundef %85) #19
  br label %13

87:                                               ; preds = %8, %64
  switch i32 %2, label %105 [
    i32 141, label %88
    i32 121, label %90
  ]

88:                                               ; preds = %87
  %89 = tail call fastcc ptr @expand_scalar_variables_ssa_name(ptr noundef %0, ptr noundef %1, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7)
  br label %13

90:                                               ; preds = %87
  %91 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3
  %92 = load ptr, ptr %91, align 8, !tbaa !46
  %93 = load i64, ptr %92, align 8
  %94 = trunc i64 %93 to i16
  switch i16 %94, label %13 [
    i16 42, label %95
    i16 41, label %95
    i16 45, label %95
    i16 46, label %95
    i16 118, label %95
    i16 43, label %95
    i16 44, label %95
  ]

95:                                               ; preds = %90, %90, %90, %90, %90, %90, %90
  %96 = and i64 %93, 65535
  %97 = icmp eq i64 %96, 45
  br i1 %97, label %98, label %13

98:                                               ; preds = %95
  %99 = getelementptr inbounds %struct.tree_common, ptr %92, i64 0, i32 2
  %100 = load ptr, ptr %99, align 8, !tbaa !46
  %101 = tail call fastcc ptr @expand_scalar_variables_expr(ptr noundef %100, ptr noundef nonnull %92, i32 noundef 45, ptr noundef null, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7)
  %102 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %103 = load ptr, ptr %102, align 8, !tbaa !46
  %104 = tail call ptr @fold_build1_stat_loc(i32 noundef 0, i32 noundef 121, ptr noundef %103, ptr noundef %101) #19
  br label %13

105:                                              ; preds = %87
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 960, ptr noundef nonnull @.str.1) #19
  br label %13
}

declare void @replace_exp(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @build1_stat(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @expand_scalar_variables_ssa_name(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3, ptr noundef %4, ptr noundef %5) unnamed_addr #9 !prof !34 {
  %7 = getelementptr inbounds %struct.sese_s, ptr %3, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !87
  %9 = icmp eq ptr %8, null
  br label %10

10:                                               ; preds = %19, %6
  %11 = phi i64 [ %24, %19 ], [ 0, %6 ]
  br i1 %9, label %19, label %12

12:                                               ; preds = %10
  %13 = load i32, ptr %8, align 8, !tbaa !147
  %14 = zext i32 %13 to i64
  %15 = icmp ult i64 %11, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.VEC_tree_base, ptr %8, i64 0, i32 2, i64 %11
  %18 = load ptr, ptr %17, align 8, !tbaa !35
  br label %19

19:                                               ; preds = %16, %12, %10
  %20 = phi ptr [ %18, %16 ], [ null, %12 ], [ null, %10 ]
  %21 = phi i1 [ false, %16 ], [ true, %12 ], [ true, %10 ]
  %22 = icmp eq ptr %20, %1
  %23 = select i1 %21, i1 true, i1 %22
  %24 = add nuw i64 %11, 1
  br i1 %23, label %25, label %10, !llvm.loop !246

25:                                               ; preds = %19
  br i1 %21, label %26, label %32

26:                                               ; preds = %25
  %27 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 2
  %28 = load ptr, ptr %27, align 8, !tbaa !46
  %29 = load i32, ptr %28, align 8
  %30 = and i32 %29, 255
  %31 = icmp eq i32 %30, 16
  br i1 %31, label %32, label %35

32:                                               ; preds = %26, %25
  %33 = tail call fastcc ptr @get_rename(ptr noundef %4, ptr noundef %1)
  %34 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %0, ptr noundef %33) #19
  br label %155

35:                                               ; preds = %26
  %36 = tail call fastcc ptr @get_rename(ptr noundef %4, ptr noundef %1)
  %37 = icmp eq ptr %36, %1
  br i1 %37, label %46, label %38

38:                                               ; preds = %35
  %39 = getelementptr inbounds %struct.tree_ssa_name, ptr %36, i64 0, i32 2
  %40 = load ptr, ptr %39, align 8, !tbaa !46
  %41 = getelementptr inbounds %struct.gimple_statement_base, ptr %40, i64 0, i32 4
  %42 = load ptr, ptr %41, align 8, !tbaa !46
  %43 = icmp eq ptr %42, %2
  br i1 %43, label %44, label %46

44:                                               ; preds = %38
  %45 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %0, ptr noundef %36) #19
  br label %155

46:                                               ; preds = %38, %35
  %47 = getelementptr inbounds %struct.gimple_statement_base, ptr %28, i64 0, i32 4
  %48 = load ptr, ptr %47, align 8, !tbaa !46
  %49 = icmp eq ptr %48, %2
  br i1 %49, label %50, label %52

50:                                               ; preds = %46
  tail call fastcc void @expand_scalar_variables_stmt(ptr noundef nonnull %28, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5)
  %51 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %0, ptr noundef %36) #19
  br label %155

52:                                               ; preds = %46
  %53 = icmp eq ptr %48, null
  br i1 %53, label %70, label %54

54:                                               ; preds = %52
  %55 = load ptr, ptr %3, align 8, !tbaa !67
  %56 = getelementptr inbounds %struct.edge_def, ptr %55, i64 0, i32 1
  %57 = load ptr, ptr %56, align 8, !tbaa !69
  %58 = getelementptr inbounds %struct.sese_s, ptr %3, i64 0, i32 1
  %59 = load ptr, ptr %58, align 8, !tbaa !71
  %60 = getelementptr inbounds %struct.edge_def, ptr %59, i64 0, i32 1
  %61 = load ptr, ptr %60, align 8, !tbaa !69
  %62 = tail call zeroext i8 @dominated_by_p(i32 noundef 1, ptr noundef nonnull %48, ptr noundef %57) #19
  %63 = icmp eq i8 %62, 0
  br i1 %63, label %70, label %64

64:                                               ; preds = %54
  %65 = tail call zeroext i8 @dominated_by_p(i32 noundef 1, ptr noundef nonnull %48, ptr noundef %61) #19
  %66 = icmp eq i8 %65, 0
  br i1 %66, label %72, label %67

67:                                               ; preds = %64
  %68 = tail call zeroext i8 @dominated_by_p(i32 noundef 1, ptr noundef %57, ptr noundef %61) #19
  %69 = icmp eq i8 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %54, %67, %52
  %71 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %0, ptr noundef %36) #19
  br label %155

72:                                               ; preds = %64, %67
  %73 = load i32, ptr %28, align 8
  %74 = and i32 %73, 255
  %75 = trunc i32 %73 to i8
  switch i8 %75, label %154 [
    i8 6, label %76
    i8 8, label %152
  ]

76:                                               ; preds = %72
  %77 = add nsw i32 %74, -10
  %78 = icmp ult i32 %77, -9
  br i1 %78, label %92, label %79

79:                                               ; preds = %76
  %80 = zext nneg i32 %74 to i64
  %81 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %80
  %82 = load i32, ptr %81, align 4, !tbaa !50
  %83 = zext i32 %82 to i64
  %84 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %83
  %85 = load i64, ptr %84, align 8, !tbaa !116
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %79
  tail call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 1622, ptr noundef nonnull @.str.1) #19
  br label %88

88:                                               ; preds = %87, %79
  %89 = getelementptr inbounds i8, ptr %28, i64 %85
  %90 = getelementptr inbounds ptr, ptr %89, i64 1
  %91 = load ptr, ptr %90, align 8, !tbaa !35
  br label %92

92:                                               ; preds = %76, %88
  %93 = phi ptr [ %91, %88 ], [ null, %76 ]
  %94 = load i32, ptr %28, align 8
  %95 = trunc i32 %94 to i8
  switch i8 %95, label %98 [
    i8 6, label %96
    i8 1, label %96
    i8 8, label %99
  ]

96:                                               ; preds = %92, %92
  %97 = lshr i32 %94, 16
  br label %99

98:                                               ; preds = %92
  tail call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 1446, ptr noundef nonnull @.str.1) #19
  br label %99

99:                                               ; preds = %98, %96, %92
  %100 = phi i32 [ %97, %96 ], [ 0, %98 ], [ 59, %92 ]
  %101 = zext nneg i32 %100 to i64
  %102 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %101
  %103 = load i8, ptr %102, align 1, !tbaa !46
  %104 = icmp eq i8 %103, 3
  br i1 %104, label %105, label %125

105:                                              ; preds = %99
  %106 = load i32, ptr %28, align 8
  %107 = and i32 %106, 255
  %108 = add nsw i32 %107, -1
  %109 = icmp ult i32 %108, 9
  tail call void @llvm.assume(i1 %109)
  %110 = zext nneg i32 %107 to i64
  %111 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %110
  %112 = load i32, ptr %111, align 4, !tbaa !50
  %113 = zext i32 %112 to i64
  %114 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %113
  %115 = load i64, ptr %114, align 8, !tbaa !116
  %116 = icmp eq i64 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %105
  tail call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 1622, ptr noundef nonnull @.str.1) #19
  br label %118

118:                                              ; preds = %117, %105
  %119 = getelementptr inbounds i8, ptr %28, i64 %115
  %120 = getelementptr inbounds ptr, ptr %119, i64 1
  %121 = load ptr, ptr %120, align 8, !tbaa !35
  %122 = load i64, ptr %121, align 8
  %123 = trunc i64 %122 to i32
  %124 = and i32 %123, 65535
  br label %125

125:                                              ; preds = %99, %118
  %126 = phi i32 [ %124, %118 ], [ %100, %99 ]
  %127 = getelementptr inbounds %struct.gimple_statement_base, ptr %28, i64 0, i32 3
  %128 = load i32, ptr %127, align 4, !tbaa !46
  %129 = icmp ugt i32 %128, 2
  br i1 %129, label %130, label %148

130:                                              ; preds = %125
  %131 = load i32, ptr %28, align 8
  %132 = and i32 %131, 255
  %133 = add nsw i32 %132, -10
  %134 = icmp ult i32 %133, -9
  br i1 %134, label %148, label %135

135:                                              ; preds = %130
  %136 = zext nneg i32 %132 to i64
  %137 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %136
  %138 = load i32, ptr %137, align 4, !tbaa !50
  %139 = zext i32 %138 to i64
  %140 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %139
  %141 = load i64, ptr %140, align 8, !tbaa !116
  %142 = icmp eq i64 %141, 0
  br i1 %142, label %143, label %144

143:                                              ; preds = %135
  tail call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 1622, ptr noundef nonnull @.str.1) #19
  br label %144

144:                                              ; preds = %143, %135
  %145 = getelementptr inbounds i8, ptr %28, i64 %141
  %146 = getelementptr inbounds ptr, ptr %145, i64 2
  %147 = load ptr, ptr %146, align 8, !tbaa !35
  br label %148

148:                                              ; preds = %125, %130, %144
  %149 = phi ptr [ null, %125 ], [ %147, %144 ], [ null, %130 ]
  %150 = tail call fastcc ptr @gimple_expr_type(ptr noundef nonnull %28)
  %151 = tail call fastcc ptr @expand_scalar_variables_expr(ptr noundef %150, ptr noundef %93, i32 noundef %126, ptr noundef %149, ptr noundef %2, ptr noundef nonnull %3, ptr noundef %4, ptr noundef %5)
  br label %155

152:                                              ; preds = %72
  %153 = tail call fastcc ptr @expand_scalar_variables_call(ptr noundef nonnull %28, ptr noundef %2, ptr noundef nonnull %3, ptr noundef %4, ptr noundef %5)
  br label %155

154:                                              ; preds = %72
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 833, ptr noundef nonnull @.str.1) #19
  br label %155

155:                                              ; preds = %154, %152, %148, %70, %50, %44, %32
  %156 = phi ptr [ %34, %32 ], [ %45, %44 ], [ %51, %50 ], [ %36, %154 ], [ %153, %152 ], [ %151, %148 ], [ %71, %70 ]
  ret ptr %156
}

declare ptr @fold_build1_stat_loc(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @build4_stat(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

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
  %13 = load i64, ptr %12, align 8, !tbaa !116
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %4
  tail call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 1622, ptr noundef nonnull @.str.1) #19
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
  %41 = load i64, ptr %40, align 8, !tbaa !116
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %31
  tail call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 1622, ptr noundef nonnull @.str.1) #19
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
  %64 = load i64, ptr %63, align 8, !tbaa !116
  %65 = icmp eq i64 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %54
  tail call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 1622, ptr noundef nonnull @.str.1) #19
  br label %67

67:                                               ; preds = %66, %54
  %68 = getelementptr inbounds i8, ptr %0, i64 %64
  %69 = getelementptr inbounds ptr, ptr %68, i64 1
  %70 = load ptr, ptr %69, align 8, !tbaa !35
  %71 = getelementptr inbounds %struct.tree_common, ptr %70, i64 0, i32 2
  br label %76

72:                                               ; preds = %51
  %73 = tail call ptr @gimple_get_lhs(ptr noundef nonnull %0) #19
  %74 = getelementptr inbounds %struct.tree_common, ptr %73, i64 0, i32 2
  br label %76

75:                                               ; preds = %1
  br label %76

76:                                               ; preds = %1, %16, %72, %67, %75
  %77 = phi ptr [ getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), %75 ], [ %24, %16 ], [ %71, %67 ], [ %74, %72 ], [ getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), %1 ]
  %78 = load ptr, ptr %77, align 8, !tbaa !46
  ret ptr %78
}

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @expand_scalar_variables_call(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3, ptr noundef %4) unnamed_addr #9 !prof !34 {
  %6 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 4, !tbaa !46
  %8 = add i32 %7, -3
  %9 = tail call ptr @vec_gc_p_reserve_exact(ptr noundef null, i32 noundef %8) #19
  %10 = load i32, ptr %0, align 8
  %11 = and i32 %10, 255
  %12 = add nsw i32 %11, -1
  %13 = icmp ult i32 %12, 9
  tail call void @llvm.assume(i1 %13)
  %14 = zext nneg i32 %11 to i64
  %15 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %14
  %16 = load i32, ptr %15, align 4, !tbaa !50
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %17
  %19 = load i64, ptr %18, align 8, !tbaa !116
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %5
  tail call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 1622, ptr noundef nonnull @.str.1) #19
  br label %22

22:                                               ; preds = %21, %5
  %23 = getelementptr inbounds i8, ptr %0, i64 %19
  %24 = getelementptr inbounds ptr, ptr %23, i64 1
  %25 = load ptr, ptr %24, align 8, !tbaa !35
  %26 = getelementptr inbounds %struct.tree_common, ptr %25, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !46
  %28 = load i32, ptr %0, align 8
  %29 = and i32 %28, 255
  %30 = add nsw i32 %29, -10
  %31 = icmp ult i32 %30, -9
  br i1 %31, label %45, label %32

32:                                               ; preds = %22
  %33 = zext nneg i32 %29 to i64
  %34 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %33
  %35 = load i32, ptr %34, align 4, !tbaa !50
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %36
  %38 = load i64, ptr %37, align 8, !tbaa !116
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %32
  tail call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 1622, ptr noundef nonnull @.str.1) #19
  br label %41

41:                                               ; preds = %40, %32
  %42 = getelementptr inbounds i8, ptr %0, i64 %38
  %43 = getelementptr inbounds ptr, ptr %42, i64 1
  %44 = load ptr, ptr %43, align 8, !tbaa !35
  br label %45

45:                                               ; preds = %41, %22
  %46 = phi ptr [ %44, %41 ], [ null, %22 ]
  %47 = load i64, ptr %46, align 8
  %48 = and i64 %47, 65535
  %49 = icmp eq i64 %48, 121
  br i1 %49, label %50, label %53

50:                                               ; preds = %45
  %51 = getelementptr inbounds %struct.tree_exp, ptr %46, i64 0, i32 3
  %52 = load ptr, ptr %51, align 8, !tbaa !46
  br label %53

53:                                               ; preds = %45, %50
  %54 = phi ptr [ %52, %50 ], [ null, %45 ]
  %55 = icmp sgt i32 %8, 0
  br i1 %55, label %56, label %95

56:                                               ; preds = %53
  %57 = zext nneg i32 %8 to i64
  br label %58

58:                                               ; preds = %56, %78
  %59 = phi i64 [ 0, %56 ], [ %93, %78 ]
  %60 = load i32, ptr %0, align 8
  %61 = and i32 %60, 255
  %62 = add nsw i32 %61, -10
  %63 = icmp ult i32 %62, -9
  br i1 %63, label %78, label %64

64:                                               ; preds = %58
  %65 = zext nneg i32 %61 to i64
  %66 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %65
  %67 = load i32, ptr %66, align 4, !tbaa !50
  %68 = zext i32 %67 to i64
  %69 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %68
  %70 = load i64, ptr %69, align 8, !tbaa !116
  %71 = icmp eq i64 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %64
  tail call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 1622, ptr noundef nonnull @.str.1) #19
  br label %73

73:                                               ; preds = %72, %64
  %74 = getelementptr inbounds i8, ptr %0, i64 %70
  %75 = getelementptr ptr, ptr %74, i64 %59
  %76 = getelementptr ptr, ptr %75, i64 3
  %77 = load ptr, ptr %76, align 8, !tbaa !35
  br label %78

78:                                               ; preds = %58, %73
  %79 = phi ptr [ %77, %73 ], [ null, %58 ]
  %80 = getelementptr inbounds %struct.tree_common, ptr %79, i64 0, i32 2
  %81 = load ptr, ptr %80, align 8, !tbaa !46
  %82 = tail call ptr @create_tmp_var(ptr noundef %81, ptr noundef nonnull @.str.2) #19
  %83 = load i64, ptr %79, align 8
  %84 = trunc i64 %83 to i32
  %85 = and i32 %84, 65535
  %86 = tail call fastcc ptr @expand_scalar_variables_expr(ptr noundef %81, ptr noundef nonnull %79, i32 noundef %85, ptr noundef null, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4)
  %87 = tail call ptr @build2_stat(i32 noundef 53, ptr noundef %81, ptr noundef %82, ptr noundef %86) #19
  %88 = tail call ptr @force_gimple_operand_gsi(ptr noundef %4, ptr noundef %87, i8 noundef zeroext 1, ptr noundef null, i8 noundef zeroext 1, i32 noundef 1) #19
  %89 = load i32, ptr %9, align 8, !tbaa !147
  %90 = add i32 %89, 1
  store i32 %90, ptr %9, align 8, !tbaa !147
  %91 = zext i32 %89 to i64
  %92 = getelementptr inbounds %struct.VEC_tree_base, ptr %9, i64 0, i32 2, i64 %91
  store ptr %88, ptr %92, align 8, !tbaa !35
  %93 = add nuw nsw i64 %59, 1
  %94 = icmp eq i64 %93, %57
  br i1 %94, label %95, label %58, !llvm.loop !247

95:                                               ; preds = %78, %53
  %96 = load i32, ptr %0, align 8
  %97 = and i32 %96, 255
  %98 = add nsw i32 %97, -1
  %99 = icmp ult i32 %98, 9
  tail call void @llvm.assume(i1 %99)
  %100 = zext nneg i32 %97 to i64
  %101 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %100
  %102 = load i32, ptr %101, align 4, !tbaa !50
  %103 = zext i32 %102 to i64
  %104 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %103
  %105 = load i64, ptr %104, align 8, !tbaa !116
  %106 = icmp eq i64 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %95
  tail call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 1622, ptr noundef nonnull @.str.1) #19
  br label %108

108:                                              ; preds = %107, %95
  %109 = getelementptr inbounds i8, ptr %0, i64 %105
  %110 = load ptr, ptr %109, align 8, !tbaa !35
  %111 = getelementptr inbounds %struct.tree_common, ptr %110, i64 0, i32 2
  %112 = load ptr, ptr %111, align 8, !tbaa !46
  %113 = tail call ptr @create_tmp_var(ptr noundef %112, ptr noundef nonnull @.str.2) #19
  %114 = tail call ptr @build_call_vec(ptr noundef %27, ptr noundef %54, ptr noundef %9) #19
  %115 = tail call ptr @gimple_build_call_from_tree(ptr noundef %114) #19
  %116 = load ptr, ptr @cfun, align 8, !tbaa !35
  %117 = tail call ptr @make_ssa_name_fn(ptr noundef %116, ptr noundef %113, ptr noundef %115) #19
  %118 = load i32, ptr %115, align 8
  %119 = and i32 %118, 255
  %120 = add nsw i32 %119, -10
  %121 = icmp ult i32 %120, -9
  br i1 %121, label %126, label %122

122:                                              ; preds = %108
  %123 = getelementptr inbounds %struct.gimple_statement_base, ptr %115, i64 0, i32 3
  %124 = load i32, ptr %123, align 4, !tbaa !46
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %126, label %127

126:                                              ; preds = %122, %108
  tail call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 1665, ptr noundef nonnull @.str.1) #19
  br label %127

127:                                              ; preds = %126, %122
  %128 = load i32, ptr %115, align 8
  %129 = and i32 %128, 255
  %130 = zext nneg i32 %129 to i64
  %131 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %130
  %132 = load i32, ptr %131, align 4, !tbaa !50
  %133 = zext i32 %132 to i64
  %134 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %133
  %135 = load i64, ptr %134, align 8, !tbaa !116
  %136 = icmp eq i64 %135, 0
  br i1 %136, label %137, label %138

137:                                              ; preds = %127
  tail call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 1622, ptr noundef nonnull @.str.1) #19
  br label %138

138:                                              ; preds = %137, %127
  %139 = getelementptr inbounds i8, ptr %115, i64 %135
  store ptr %117, ptr %139, align 8, !tbaa !35
  %140 = icmp eq ptr %117, null
  br i1 %140, label %147, label %141

141:                                              ; preds = %138
  %142 = load i64, ptr %117, align 8
  %143 = and i64 %142, 65535
  %144 = icmp eq i64 %143, 141
  br i1 %144, label %145, label %147

145:                                              ; preds = %141
  %146 = getelementptr inbounds %struct.tree_ssa_name, ptr %117, i64 0, i32 2
  store ptr %115, ptr %146, align 8, !tbaa !46
  br label %147

147:                                              ; preds = %138, %141, %145
  tail call void @gsi_insert_before(ptr noundef %4, ptr noundef nonnull %115, i32 noundef 1) #19
  ret ptr %117
}

declare ptr @gimple_get_lhs(ptr noundef) local_unnamed_addr #3

declare ptr @build_call_vec(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @gimple_build_call_from_tree(ptr noundef) local_unnamed_addr #3

declare void @gsi_insert_before(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @vec_gc_p_reserve_exact(ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @make_ssa_name_fn(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @gsi_insert_seq_before(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare zeroext i8 @mark_irreducible_loops() local_unnamed_addr #3

declare void @free_dominance_info(i32 noundef) local_unnamed_addr #3

declare void @calculate_dominance_info(i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #15

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #17

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #18

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
attributes #10 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #14 = { cold nofree nosync nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree nounwind }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #18 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #19 = { nounwind }
attributes #20 = { cold }

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
!54 = !{!55, !36, i64 0}
!55 = !{!"rename_map_elt_s", !36, i64 0, !36, i64 8}
!56 = !{!55, !36, i64 8}
!57 = !{!58, !36, i64 8}
!58 = !{!"ivtype_map_elt_s", !36, i64 0, !36, i64 8}
!59 = !{!58, !36, i64 0}
!60 = !{!61, !36, i64 8}
!61 = !{!"function", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !36, i64 96, !41, i64 104, !41, i64 108, !41, i64 112, !41, i64 116, !41, i64 120, !41, i64 124, !36, i64 128, !41, i64 136, !41, i64 137, !41, i64 138, !41, i64 138, !41, i64 138, !41, i64 138, !41, i64 138, !41, i64 138, !41, i64 138, !41, i64 139, !41, i64 139, !41, i64 139, !41, i64 139, !41, i64 139, !41, i64 139, !41, i64 139}
!62 = !{!63, !36, i64 0}
!63 = !{!"control_flow_graph", !36, i64 0, !36, i64 8, !36, i64 16, !41, i64 24, !41, i64 28, !41, i64 32, !36, i64 40, !41, i64 48, !37, i64 52, !37, i64 60, !41, i64 68, !41, i64 72}
!64 = !{!65, !36, i64 56}
!65 = !{!"basic_block_def", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !36, i64 48, !36, i64 56, !37, i64 64, !42, i64 72, !41, i64 80, !41, i64 84, !41, i64 88, !41, i64 92, !41, i64 96}
!66 = !{!63, !36, i64 8}
!67 = !{!68, !36, i64 0}
!68 = !{!"sese_s", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !37, i64 40}
!69 = !{!70, !36, i64 8}
!70 = !{!"edge_def", !36, i64 0, !36, i64 8, !37, i64 16, !36, i64 24, !36, i64 32, !41, i64 40, !41, i64 44, !41, i64 48, !41, i64 52, !42, i64 56}
!71 = !{!68, !36, i64 8}
!72 = !{!65, !36, i64 24}
!73 = !{!74, !36, i64 8}
!74 = !{!"loop", !41, i64 0, !41, i64 4, !36, i64 8, !36, i64 16, !75, i64 24, !41, i64 32, !41, i64 36, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !76, i64 80, !76, i64 96, !37, i64 112, !37, i64 113, !41, i64 116, !36, i64 120, !36, i64 128, !37, i64 136, !36, i64 144}
!75 = !{!"lpt_decision", !41, i64 0, !41, i64 4}
!76 = !{!"", !42, i64 0, !42, i64 8}
!77 = !{!74, !36, i64 16}
!78 = !{!68, !36, i64 24}
!79 = !{!74, !41, i64 0}
!80 = !{!81, !41, i64 4}
!81 = !{!"VEC_loop_p_base", !41, i64 0, !41, i64 4, !37, i64 8}
!82 = !{!81, !41, i64 0}
!83 = distinct !{!83, !52, !53}
!84 = !{!68, !36, i64 32}
!85 = distinct !{!85, !52, !53}
!86 = !{!68, !37, i64 40}
!87 = !{!68, !36, i64 16}
!88 = distinct !{!88, !52, !53}
!89 = !{!90, !41, i64 0}
!90 = !{!"VEC_edge_base", !41, i64 0, !41, i64 4, !37, i64 8}
!91 = !{i64 0, i64 8, !35, i64 8, i64 8, !35, i64 16, i64 8, !35}
!92 = !{!93, !36, i64 0}
!93 = !{!"gimple_seq_node_d", !36, i64 0, !36, i64 8, !36, i64 16}
!94 = !{!70, !41, i64 44}
!95 = !{!96, !36, i64 24}
!96 = !{!"ssa_use_operand_d", !36, i64 0, !36, i64 8, !37, i64 16, !36, i64 24}
!97 = !{!93, !36, i64 16}
!98 = distinct !{!98, !52, !53}
!99 = distinct !{!99, !52, !53}
!100 = !{!65, !41, i64 96}
!101 = !{!102}
!102 = distinct !{!102, !103, !"gsi_start_bb: argument 0"}
!103 = distinct !{!103, !"gsi_start_bb"}
!104 = !{!105, !36, i64 0}
!105 = !{!"gimple_bb_info", !36, i64 0, !36, i64 8}
!106 = !{!107, !36, i64 0}
!107 = !{!"gimple_seq_d", !36, i64 0, !36, i64 8, !36, i64 16}
!108 = !{!109, !36, i64 0}
!109 = !{!"use_optype_d", !36, i64 0, !96, i64 8}
!110 = distinct !{!110, !52, !53}
!111 = distinct !{!111, !52, !53}
!112 = distinct !{!112, !52, !53}
!113 = !{!114}
!114 = distinct !{!114, !115, !"gsi_start_bb: argument 0"}
!115 = distinct !{!115, !"gsi_start_bb"}
!116 = !{!42, !42, i64 0}
!117 = distinct !{!117, !52, !53}
!118 = distinct !{!118, !52, !53}
!119 = !{!120, !36, i64 0}
!120 = !{!"bitmap_head_def", !36, i64 0, !36, i64 8, !41, i64 16, !36, i64 24}
!121 = !{!122, !41, i64 16}
!122 = !{!"bitmap_element_def", !36, i64 0, !36, i64 8, !41, i64 16, !37, i64 24}
!123 = distinct !{!123, !52, !53}
!124 = distinct !{!124, !52, !53}
!125 = !{!122, !36, i64 0}
!126 = distinct !{!126, !53}
!127 = !{!61, !36, i64 24}
!128 = !{!129, !36, i64 16}
!129 = !{!"gimple_df", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !130, i64 32, !130, i64 48, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !41, i64 96, !131, i64 104}
!130 = !{!"pt_solution", !41, i64 0, !41, i64 0, !41, i64 0, !41, i64 0, !41, i64 0, !41, i64 0, !36, i64 8}
!131 = !{!"ssa_operands", !36, i64 0, !41, i64 8, !41, i64 12, !37, i64 16, !36, i64 24, !36, i64 32}
!132 = distinct !{!132, !52, !53}
!133 = !{!61, !36, i64 32}
!134 = !{!135, !36, i64 8}
!135 = !{!"loops", !41, i64 0, !36, i64 8, !36, i64 16, !36, i64 24}
!136 = !{!135, !36, i64 24}
!137 = !{!138, !41, i64 0}
!138 = !{!"VEC_int_base", !41, i64 0, !41, i64 4, !37, i64 8}
!139 = !{!74, !36, i64 48}
!140 = distinct !{!140, !53}
!141 = !{!74, !36, i64 56}
!142 = !{!74, !36, i64 40}
!143 = distinct !{!143, !52, !53}
!144 = distinct !{!144, !52, !53}
!145 = !{!74, !36, i64 72}
!146 = distinct !{!146, !52, !53}
!147 = !{!148, !41, i64 0}
!148 = !{!"VEC_tree_base", !41, i64 0, !41, i64 4, !37, i64 8}
!149 = distinct !{!149, !52, !53}
!150 = !{!65, !36, i64 0}
!151 = !{}
!152 = !{!63, !41, i64 32}
!153 = !{!96, !36, i64 0}
!154 = !{!96, !36, i64 8}
!155 = !{!156, !36, i64 0}
!156 = !{!"simple_bitmap_def", !36, i64 0, !41, i64 8, !41, i64 12, !37, i64 16}
!157 = distinct !{!157, !52, !53}
!158 = distinct !{!158, !52, !53}
!159 = distinct !{!159, !52, !53}
!160 = distinct !{!160, !52, !53}
!161 = !{!70, !41, i64 48}
!162 = distinct !{!162, !52, !53}
!163 = distinct !{!163, !52, !53}
!164 = !{!165, !36, i64 0}
!165 = !{!"alep", !36, i64 0, !36, i64 8}
!166 = !{!165, !36, i64 8}
!167 = !{!168, !41, i64 0}
!168 = !{!"VEC_rename_map_elt_base", !41, i64 0, !41, i64 4, !37, i64 8}
!169 = distinct !{!169, !52, !53}
!170 = !{i8 0, i8 2}
!171 = distinct !{!171, !52, !53}
!172 = distinct !{!172, !52, !53}
!173 = !{!168, !41, i64 4}
!174 = !{!175, !36, i64 0}
!175 = !{!"igp", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24}
!176 = !{!175, !36, i64 8}
!177 = !{!175, !36, i64 16}
!178 = !{!175, !36, i64 24}
!179 = !{!65, !36, i64 8}
!180 = !{!181}
!181 = distinct !{!181, !182, !"gsi_start_bb: argument 0"}
!182 = distinct !{!182, !"gsi_start_bb"}
!183 = !{i64 0, i64 8, !35, i64 8, i64 8, !35}
!184 = !{i64 0, i64 8, !35}
!185 = !{!186}
!186 = distinct !{!186, !187, !"gsi_start_bb: argument 0"}
!187 = distinct !{!187, !"gsi_start_bb"}
!188 = !{!129, !36, i64 24}
!189 = !{!190, !36, i64 8}
!190 = !{!"def_optype_d", !36, i64 0, !36, i64 8}
!191 = !{!190, !36, i64 0}
!192 = distinct !{!192, !52, !53}
!193 = distinct !{!193, !52, !53}
!194 = !{!195}
!195 = distinct !{!195, !196, !"gsi_last_bb: argument 0"}
!196 = distinct !{!196, !"gsi_last_bb"}
!197 = !{!107, !36, i64 8}
!198 = !{!199, !36, i64 0}
!199 = !{!"", !36, i64 0, !36, i64 8, !36, i64 16}
!200 = !{!199, !36, i64 8}
!201 = !{!199, !36, i64 16}
!202 = !{!203, !205}
!203 = distinct !{!203, !204, !"gsi_start_bb: argument 0"}
!204 = distinct !{!204, !"gsi_start_bb"}
!205 = distinct !{!205, !206, !"gsi_after_labels: argument 0"}
!206 = distinct !{!206, !"gsi_after_labels"}
!207 = !{!205}
!208 = distinct !{!208, !52, !53}
!209 = distinct !{!209, !52, !53}
!210 = !{!211}
!211 = distinct !{!211, !212, !"gsi_start_bb: argument 0"}
!212 = distinct !{!212, !"gsi_start_bb"}
!213 = !{!214, !216}
!214 = distinct !{!214, !215, !"gsi_start_bb: argument 0"}
!215 = distinct !{!215, !"gsi_start_bb"}
!216 = distinct !{!216, !217, !"gsi_after_labels: argument 0"}
!217 = distinct !{!217, !"gsi_after_labels"}
!218 = !{!216}
!219 = distinct !{!219, !52, !53}
!220 = distinct !{!220, !52, !53}
!221 = distinct !{!221, !52, !53}
!222 = !{!223, !36, i64 0}
!223 = !{!"ifsese_s", !36, i64 0, !36, i64 8, !36, i64 16}
!224 = !{!70, !36, i64 0}
!225 = !{!135, !36, i64 16}
!226 = !{!223, !36, i64 16}
!227 = !{!228, !36, i64 0}
!228 = !{!"loop_exit", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24}
!229 = !{!74, !36, i64 128}
!230 = !{!228, !36, i64 16}
!231 = !{!223, !36, i64 8}
!232 = distinct !{!232, !52, !53}
!233 = !{!234}
!234 = distinct !{!234, !235, !"gsi_last_bb: argument 0"}
!235 = distinct !{!235, !"gsi_last_bb"}
!236 = !{!237}
!237 = distinct !{!237, !238, !"gsi_last_bb: argument 0"}
!238 = distinct !{!238, !"gsi_last_bb"}
!239 = !{!240}
!240 = distinct !{!240, !241, !"gsi_last_bb: argument 0"}
!241 = distinct !{!241, !"gsi_last_bb"}
!242 = !{!65, !41, i64 80}
!243 = distinct !{!243, !52, !53}
!244 = !{!109, !36, i64 32}
!245 = distinct !{!245, !52, !53}
!246 = distinct !{!246, !52, !53}
!247 = distinct !{!247, !52, !53}
