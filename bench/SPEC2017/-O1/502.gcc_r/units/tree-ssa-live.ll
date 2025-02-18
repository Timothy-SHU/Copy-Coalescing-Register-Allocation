; ModuleID = 'tree-ssa-live.c'
source_filename = "tree-ssa-live.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.bitmap_element_def = type { ptr, ptr, i32, [2 x i64] }
%struct._IO_FILE = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, [1 x i8], ptr, i64, ptr, ptr, ptr, ptr, i64, i32, [20 x i8] }
%struct._var_map = type { ptr, ptr, ptr, i32, i32, i32, ptr, ptr }
%struct.tree_ssa_name = type { %struct.tree_common, ptr, ptr, i32, ptr, %struct.ssa_use_operand_d }
%struct.tree_common = type { %struct.tree_base, ptr, ptr }
%struct.tree_base = type { i64 }
%struct.ssa_use_operand_d = type { ptr, ptr, %union.anon, ptr }
%union.anon = type { ptr }
%struct.partition_def = type { i32, [1 x %struct.partition_elem] }
%struct.partition_elem = type { i32, ptr, i32 }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.gimple_df = type { ptr, ptr, ptr, ptr, %struct.pt_solution, %struct.pt_solution, ptr, ptr, ptr, ptr, i8, %struct.ssa_operands }
%struct.pt_solution = type { i8, ptr }
%struct.ssa_operands = type { ptr, i32, i32, i8, ptr, ptr }
%struct.VEC_tree_base = type { i32, i32, [1 x ptr] }
%struct.tree_var_decl = type { %struct.tree_decl_with_vis, ptr }
%struct.tree_decl_with_vis = type { %struct.tree_decl_with_rtl, ptr, ptr, ptr, i24 }
%struct.tree_decl_with_rtl = type { %struct.tree_decl_common, ptr }
%struct.tree_decl_common = type { %struct.tree_decl_minimal, ptr, i40, i32, ptr, ptr, ptr, ptr, ptr }
%struct.tree_decl_minimal = type { %struct.tree_common, i32, i32, ptr, ptr }
%struct.tree_parm_decl = type { %struct.tree_decl_with_rtl, ptr, ptr }
%struct.tree_result_decl = type { %struct.tree_decl_with_rtl, ptr }
%struct.var_ann_d = type { i8, i32, ptr }
%struct.expanded_location = type { ptr, i32, i32, i8 }
%struct.tree_block = type { %struct.tree_common, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.gimple_stmt_iterator = type { ptr, ptr, ptr }
%struct.htab = type { ptr, ptr, ptr, ptr, i64, i64, i64, i32, i32, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.basic_block_def = type { ptr, ptr, ptr, ptr, [2 x ptr], ptr, ptr, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%union.basic_block_il_dependent = type { ptr }
%struct.control_flow_graph = type { ptr, ptr, ptr, i32, i32, i32, ptr, i32, [2 x i32], [2 x i32], i32, i32 }
%struct.gimple_statement_base = type { i32, i32, i32, i32, ptr, ptr }
%struct.gimple_seq_node_d = type { ptr, ptr, ptr }
%struct.gimple_statement_phi = type { %struct.gimple_statement_base, i32, i32, ptr, [1 x %struct.phi_arg_d] }
%struct.phi_arg_d = type { %struct.ssa_use_operand_d, ptr, i32 }
%struct.VEC_edge_base = type { i32, i32, [1 x ptr] }
%struct.edge_def = type { ptr, ptr, %union.edge_def_insns, ptr, ptr, i32, i32, i32, i32, i64 }
%union.edge_def_insns = type { ptr }
%struct.tree_list = type { %struct.tree_common, ptr, ptr }
%struct.gcc_debug_hooks = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.tree_function_decl = type { %struct.tree_decl_non_common, ptr, ptr, ptr, ptr, i32 }
%struct.tree_decl_non_common = type { %struct.tree_decl_with_vis, ptr, ptr, ptr, ptr }
%struct.tree_live_info_d = type { ptr, ptr, ptr, i32, ptr, ptr, ptr }
%struct.simple_bitmap_def = type { ptr, i32, i32, [1 x i64] }
%struct.VEC_basic_block_base = type { i32, i32, [1 x ptr] }
%struct.tree_exp = type { %struct.tree_common, i32, ptr, [1 x ptr] }

@stdout = external local_unnamed_addr global ptr, align 8
@stdin = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [16 x i8] c"tree-ssa-live.c\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@current_function_decl = external local_unnamed_addr global ptr, align 8
@optimize = external local_unnamed_addr global i32, align 4
@cfun = external local_unnamed_addr global ptr, align 8
@dump_file = external local_unnamed_addr global ptr, align 8
@dump_flags = external local_unnamed_addr global i32, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"Scope blocks after cleanups:\0A\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"\0APartition map \0A\0A\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"Partition %d (\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c" - \00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c")\0A\00", align 1
@.str.9 = private unnamed_addr constant [26 x i8] c"\0ALive on entry to BB%d : \00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"  \00", align 1
@.str.11 = private unnamed_addr constant [27 x i8] c"\0ALive on exit from BB%d : \00", align 1
@flag_var_tracking_assignments = external local_unnamed_addr global i32, align 4
@bitmap_zero_bits = external local_unnamed_addr global %struct.bitmap_element_def, align 8
@.str.12 = private unnamed_addr constant [26 x i8] c"\0A%*s{ Scope block #%i%s%s\00", align 1
@.str.13 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.14 = private unnamed_addr constant [10 x i8] c" (unused)\00", align 1
@.str.15 = private unnamed_addr constant [12 x i8] c" (abstract)\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c" %s:%i\00", align 1
@.str.17 = private unnamed_addr constant [20 x i8] c" Originating from :\00", align 1
@tree_code_type = external local_unnamed_addr constant [0 x i32], align 4
@.str.18 = private unnamed_addr constant [4 x i8] c"#%i\00", align 1
@.str.19 = private unnamed_addr constant [3 x i8] c" \0A\00", align 1
@.str.20 = private unnamed_addr constant [4 x i8] c"%*s\00", align 1
@.str.21 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.22 = private unnamed_addr constant [17 x i8] c" (nonlocalized)\0A\00", align 1
@.str.23 = private unnamed_addr constant [7 x i8] c"\0A%*s}\0A\00", align 1
@debug_hooks = external local_unnamed_addr global ptr, align 8
@.str.24 = private unnamed_addr constant [21 x i8] c"./tree-flow-inline.h\00", align 1
@gimple_ops_offset_ = external local_unnamed_addr constant [0 x i64], align 8
@.str.25 = private unnamed_addr constant [11 x i8] c"./gimple.h\00", align 1
@gss_for_code_ = external local_unnamed_addr constant [0 x i32], align 4
@.str.26 = private unnamed_addr constant [16 x i8] c"./basic-block.h\00", align 1
@debug_info_level = external local_unnamed_addr global i32, align 4
@.str.27 = private unnamed_addr constant [11 x i8] c"artificial\00", align 1
@.str.28 = private unnamed_addr constant [18 x i8] c"./tree-ssa-live.h\00", align 1

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @vprintf(ptr noalias nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 !prof !87 {
  %3 = load ptr, ptr @stdout, align 8, !tbaa !88
  %4 = tail call i32 @vfprintf(ptr noundef %3, ptr noundef %0, ptr noundef %1)
  ret i32 %4
}

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @getchar() local_unnamed_addr #0 !prof !87 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !88
  %2 = tail call i32 @getc(ptr noundef %1)
  ret i32 %2
}

; Function Attrs: nofree nounwind
declare noundef i32 @getc(ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !87 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !92
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !97
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !98

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #17
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !92
  %11 = load i8, ptr %3, align 1, !tbaa !99
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

declare i32 @__uflow(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !87 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !92
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !97
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !98

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #17
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !92
  %11 = load i8, ptr %3, align 1, !tbaa !99
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #2 !prof !87 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !88
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !92
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !97
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !98

7:                                                ; preds = %0
  %8 = tail call i32 @__uflow(ptr noundef %1) #17
  br label %13

9:                                                ; preds = %0
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !92
  %11 = load i8, ptr %3, align 1, !tbaa !99
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @putchar(i32 noundef %0) local_unnamed_addr #0 !prof !87 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !88
  %3 = tail call i32 @putc(i32 noundef %0, ptr noundef %2)
  ret i32 %3
}

; Function Attrs: nofree nounwind
declare noundef i32 @putc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !87 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !100
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !101
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !98

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #17
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !100
  store i8 %12, ptr %4, align 1, !tbaa !99
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

declare i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !87 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !100
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !101
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !98

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #17
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !100
  store i8 %12, ptr %4, align 1, !tbaa !99
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 noundef %0) local_unnamed_addr #2 !prof !87 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !88
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !100
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !101
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !98

8:                                                ; preds = %1
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %2, i32 noundef %9) #17
  br label %15

11:                                               ; preds = %1
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !100
  store i8 %12, ptr %4, align 1, !tbaa !99
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i64 @getline(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 !prof !87 {
  %4 = tail call i64 @__getdelim(ptr noundef %0, ptr noundef %1, i32 noundef 10, ptr noundef %2) #17
  ret i64 %4
}

declare i64 @__getdelim(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @feof_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !87 {
  %2 = load i32, ptr %0, align 8, !tbaa !102
  %3 = lshr i32 %2, 4
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @ferror_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !87 {
  %2 = load i32, ptr %0, align 8, !tbaa !102
  %3 = lshr i32 %2, 5
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @tolower(i32 noundef %0) local_unnamed_addr #5 !prof !87 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_tolower_loc() #17
  %6 = load ptr, ptr %5, align 8, !tbaa !88
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !103
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_tolower_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @toupper(i32 noundef %0) local_unnamed_addr #5 !prof !87 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_toupper_loc() #17
  %6 = load ptr, ptr %5, align 8, !tbaa !88
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !103
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_toupper_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i32 @atoi(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !87 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  %3 = trunc i64 %2 to i32
  ret i32 %3
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atol(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !87 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atoll(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !87 {
  %2 = tail call i64 @strtoll(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtoll(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local noundef ptr @bsearch(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #2 !prof !87 {
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
  br i1 %23, label %7, label %24, !llvm.loop !104

24:                                               ; preds = %16, %20, %5
  %25 = phi ptr [ null, %5 ], [ %13, %16 ], [ null, %20 ]
  ret ptr %25
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local double @atof(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !87 {
  %2 = tail call double @strtod(ptr nocapture noundef %0, ptr noundef null)
  ret double %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local ptr @init_var_map(i32 noundef %0) local_unnamed_addr #9 !prof !107 {
  %2 = tail call ptr @xmalloc(i64 noundef 56) #17
  %3 = tail call ptr @partition_new(i32 noundef %0) #17
  store ptr %3, ptr %2, align 8, !tbaa !108
  %4 = getelementptr inbounds %struct._var_map, ptr %2, i64 0, i32 1
  %5 = getelementptr inbounds %struct._var_map, ptr %2, i64 0, i32 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  store i32 %0, ptr %5, align 8, !tbaa !110
  %6 = getelementptr inbounds %struct._var_map, ptr %2, i64 0, i32 4
  store i32 %0, ptr %6, align 4, !tbaa !111
  %7 = getelementptr inbounds %struct._var_map, ptr %2, i64 0, i32 5
  store i32 0, ptr %7, align 8, !tbaa !112
  %8 = getelementptr inbounds %struct._var_map, ptr %2, i64 0, i32 6
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, i8 0, i64 16, i1 false)
  ret ptr %2
}

declare ptr @xmalloc(i64 noundef) local_unnamed_addr #3

declare ptr @partition_new(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @delete_var_map(ptr nocapture noundef %0) local_unnamed_addr #9 !prof !107 {
  %2 = getelementptr inbounds %struct._var_map, ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !113
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5, !prof !114

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._var_map, ptr %0, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !88
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9, !prof !115

9:                                                ; preds = %5
  tail call void @free(ptr noundef %7)
  br label %10

10:                                               ; preds = %9, %5
  store ptr null, ptr %6, align 8, !tbaa !88
  %11 = load ptr, ptr %2, align 8, !tbaa !113
  tail call void @free(ptr noundef %11)
  store ptr null, ptr %2, align 8, !tbaa !113
  %12 = getelementptr inbounds %struct._var_map, ptr %0, i64 0, i32 5
  store i32 0, ptr %12, align 8, !tbaa !112
  br label %13

13:                                               ; preds = %1, %10
  %14 = load ptr, ptr %0, align 8, !tbaa !108
  tail call void @partition_delete(ptr noundef %14) #17
  %15 = getelementptr inbounds %struct._var_map, ptr %0, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !116
  %17 = icmp eq ptr %16, null
  br i1 %17, label %19, label %18, !prof !117

18:                                               ; preds = %13
  tail call void @free(ptr noundef %16)
  br label %19

19:                                               ; preds = %18, %13
  %20 = getelementptr inbounds %struct._var_map, ptr %0, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !118
  %22 = icmp eq ptr %21, null
  br i1 %22, label %24, label %23, !prof !117

23:                                               ; preds = %19
  tail call void @free(ptr noundef %21)
  br label %24

24:                                               ; preds = %23, %19
  tail call void @free(ptr noundef %0)
  ret void
}

; Function Attrs: mustprogress nounwind willreturn uwtable
define internal fastcc void @var_map_base_fini(ptr nocapture noundef %0) unnamed_addr #10 !prof !87 !PGOFuncName !119 {
  %2 = getelementptr inbounds %struct._var_map, ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !113
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5, !prof !114

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._var_map, ptr %0, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !88
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9, !prof !115

9:                                                ; preds = %5
  tail call void @free(ptr noundef %7)
  br label %10

10:                                               ; preds = %5, %9
  store ptr null, ptr %6, align 8, !tbaa !88
  %11 = load ptr, ptr %2, align 8, !tbaa !113
  tail call void @free(ptr noundef %11)
  store ptr null, ptr %2, align 8, !tbaa !113
  %12 = getelementptr inbounds %struct._var_map, ptr %0, i64 0, i32 5
  store i32 0, ptr %12, align 8, !tbaa !112
  br label %13

13:                                               ; preds = %10, %1
  ret void
}

declare void @partition_delete(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #11

; Function Attrs: nounwind uwtable
define dso_local i32 @var_union(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #9 !prof !120 {
  %4 = load i64, ptr %1, align 8
  %5 = and i64 %4, 65535
  %6 = icmp eq i64 %5, 141
  br i1 %6, label %8, label %7, !prof !121

7:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 175, ptr noundef nonnull @.str.1) #17
  br label %8

8:                                                ; preds = %3, %7
  %9 = load i64, ptr %2, align 8
  %10 = and i64 %9, 65535
  %11 = icmp eq i64 %10, 141
  br i1 %11, label %13, label %12, !prof !121

12:                                               ; preds = %8
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 176, ptr noundef nonnull @.str.1) #17
  br label %13

13:                                               ; preds = %8, %12
  %14 = load ptr, ptr %0, align 8, !tbaa !108
  %15 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 3
  %16 = load i32, ptr %15, align 8, !tbaa !99
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds %struct.partition_def, ptr %14, i64 0, i32 1, i64 %17
  %19 = load i32, ptr %18, align 8, !tbaa !122
  %20 = getelementptr inbounds %struct.tree_ssa_name, ptr %2, i64 0, i32 3
  %21 = load i32, ptr %20, align 8, !tbaa !99
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds %struct.partition_def, ptr %14, i64 0, i32 1, i64 %22
  %24 = load i32, ptr %23, align 8, !tbaa !122
  %25 = icmp eq i32 %19, -1
  br i1 %25, label %26, label %27, !prof !124

26:                                               ; preds = %13
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 185, ptr noundef nonnull @.str.1) #17
  br label %27

27:                                               ; preds = %13, %26
  %28 = icmp eq i32 %24, -1
  br i1 %28, label %29, label %30, !prof !124

29:                                               ; preds = %27
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 186, ptr noundef nonnull @.str.1) #17
  br label %30

30:                                               ; preds = %27, %29
  %31 = icmp eq i32 %19, %24
  br i1 %31, label %35, label %32, !prof !124

32:                                               ; preds = %30
  %33 = load ptr, ptr %0, align 8, !tbaa !108
  %34 = tail call i32 @partition_union(ptr noundef %33, i32 noundef %19, i32 noundef %24) #17
  br label %35

35:                                               ; preds = %30, %32
  %36 = phi i32 [ %34, %32 ], [ %19, %30 ]
  %37 = getelementptr inbounds %struct._var_map, ptr %0, i64 0, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !116
  %39 = icmp eq ptr %38, null
  br i1 %39, label %44, label %40, !prof !124

40:                                               ; preds = %35
  %41 = sext i32 %36 to i64
  %42 = getelementptr inbounds i32, ptr %38, i64 %41
  %43 = load i32, ptr %42, align 4, !tbaa !103
  br label %44

44:                                               ; preds = %40, %35
  %45 = phi i32 [ %43, %40 ], [ %36, %35 ]
  ret i32 %45
}

declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare i32 @partition_union(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @partition_view_normal(ptr nocapture noundef %0, i8 noundef zeroext %1) local_unnamed_addr #9 !prof !125 {
  %3 = tail call fastcc ptr @partition_view_init(ptr noundef %0)
  tail call fastcc void @partition_view_fini(ptr noundef %0, ptr noundef %3)
  %4 = icmp eq i8 %1, 0
  br i1 %4, label %6, label %5, !prof !126

5:                                                ; preds = %2
  tail call fastcc void @var_map_base_init(ptr noundef %0)
  br label %18

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._var_map, ptr %0, i64 0, i32 6
  %8 = load ptr, ptr %7, align 8, !tbaa !113
  %9 = icmp eq ptr %8, null
  br i1 %9, label %18, label %10, !prof !114

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct._var_map, ptr %0, i64 0, i32 7
  %12 = load ptr, ptr %11, align 8, !tbaa !88
  %13 = icmp eq ptr %12, null
  br i1 %13, label %15, label %14, !prof !115

14:                                               ; preds = %10
  tail call void @free(ptr noundef %12)
  br label %15

15:                                               ; preds = %14, %10
  store ptr null, ptr %11, align 8, !tbaa !88
  %16 = load ptr, ptr %7, align 8, !tbaa !113
  tail call void @free(ptr noundef %16)
  store ptr null, ptr %7, align 8, !tbaa !113
  %17 = getelementptr inbounds %struct._var_map, ptr %0, i64 0, i32 5
  store i32 0, ptr %17, align 8, !tbaa !112
  br label %18

18:                                               ; preds = %15, %6, %5
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @partition_view_init(ptr nocapture noundef %0) unnamed_addr #9 !prof !127 !PGOFuncName !128 {
  %2 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #17
  %3 = getelementptr inbounds %struct._var_map, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !116
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6, !prof !129

6:                                                ; preds = %1
  tail call void @free(ptr noundef %4)
  store ptr null, ptr %3, align 8, !tbaa !116
  br label %7

7:                                                ; preds = %6, %1
  %8 = getelementptr inbounds %struct._var_map, ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !118
  %10 = icmp eq ptr %9, null
  br i1 %10, label %12, label %11, !prof !129

11:                                               ; preds = %7
  tail call void @free(ptr noundef %9)
  store ptr null, ptr %8, align 8, !tbaa !118
  br label %12

12:                                               ; preds = %11, %7
  %13 = getelementptr inbounds %struct._var_map, ptr %0, i64 0, i32 4
  %14 = load i32, ptr %13, align 4, !tbaa !111
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %71, label %16, !prof !130

16:                                               ; preds = %12, %66
  %17 = phi i64 [ %67, %66 ], [ 0, %12 ]
  %18 = load ptr, ptr %0, align 8, !tbaa !108
  %19 = getelementptr inbounds %struct.partition_def, ptr %18, i64 0, i32 1, i64 %17
  %20 = load i32, ptr %19, align 8, !tbaa !122
  %21 = load ptr, ptr @cfun, align 8, !tbaa !88
  %22 = getelementptr inbounds %struct.function, ptr %21, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !131
  %24 = getelementptr inbounds %struct.gimple_df, ptr %23, i64 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !133
  %26 = zext i32 %20 to i64
  %27 = getelementptr inbounds %struct.VEC_tree_base, ptr %25, i64 0, i32 2, i64 %26
  %28 = load ptr, ptr %27, align 8, !tbaa !88
  %29 = icmp eq ptr %28, null
  br i1 %29, label %66, label %30, !prof !137

30:                                               ; preds = %16
  %31 = tail call zeroext i8 @is_gimple_reg(ptr noundef nonnull %28) #17
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %66, label %33, !prof !138

33:                                               ; preds = %30
  %34 = load ptr, ptr @cfun, align 8, !tbaa !88
  %35 = getelementptr inbounds %struct.function, ptr %34, i64 0, i32 3
  %36 = load ptr, ptr %35, align 8, !tbaa !131
  %37 = getelementptr inbounds %struct.gimple_df, ptr %36, i64 0, i32 2
  %38 = load ptr, ptr %37, align 8, !tbaa !133
  %39 = getelementptr inbounds %struct.VEC_tree_base, ptr %38, i64 0, i32 2, i64 %26
  %40 = load ptr, ptr %39, align 8, !tbaa !88
  %41 = getelementptr inbounds %struct.tree_ssa_name, ptr %40, i64 0, i32 5
  %42 = getelementptr inbounds %struct.tree_ssa_name, ptr %40, i64 0, i32 5, i32 1
  %43 = load ptr, ptr %42, align 8, !tbaa !139
  %44 = icmp eq ptr %41, %43
  br i1 %44, label %50, label %45, !prof !141

45:                                               ; preds = %33
  %46 = load i32, ptr @flag_var_tracking_assignments, align 4, !tbaa !103
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %50, label %48, !prof !142

48:                                               ; preds = %45
  %49 = tail call zeroext i8 @has_zero_uses_1(ptr noundef nonnull %41) #17
  br label %50

50:                                               ; preds = %33, %45, %48
  %51 = phi i8 [ %49, %48 ], [ 1, %33 ], [ 0, %45 ]
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %64, label %53, !prof !143

53:                                               ; preds = %50
  %54 = load ptr, ptr @cfun, align 8, !tbaa !88
  %55 = getelementptr inbounds %struct.function, ptr %54, i64 0, i32 3
  %56 = load ptr, ptr %55, align 8, !tbaa !131
  %57 = getelementptr inbounds %struct.gimple_df, ptr %56, i64 0, i32 2
  %58 = load ptr, ptr %57, align 8, !tbaa !133
  %59 = getelementptr inbounds %struct.VEC_tree_base, ptr %58, i64 0, i32 2, i64 %26
  %60 = load ptr, ptr %59, align 8, !tbaa !88
  %61 = load i64, ptr %60, align 8
  %62 = and i64 %61, 4294967296
  %63 = icmp eq i64 %62, 0
  br i1 %63, label %64, label %66, !prof !144

64:                                               ; preds = %53, %50
  %65 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %2, i32 noundef %20) #17
  br label %66

66:                                               ; preds = %16, %30, %53, %64
  %67 = add nuw nsw i64 %17, 1
  %68 = load i32, ptr %13, align 4, !tbaa !111
  %69 = zext i32 %68 to i64
  %70 = icmp ult i64 %67, %69
  br i1 %70, label %16, label %71, !prof !145, !llvm.loop !146

71:                                               ; preds = %66, %12
  %72 = phi i32 [ %14, %12 ], [ %68, %66 ]
  %73 = getelementptr inbounds %struct._var_map, ptr %0, i64 0, i32 3
  store i32 %72, ptr %73, align 8, !tbaa !110
  ret ptr %2
}

; Function Attrs: nounwind uwtable
define internal fastcc void @partition_view_fini(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #9 !prof !127 !PGOFuncName !147 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %4, label %5, !prof !148

4:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 269, ptr noundef nonnull @.str.1) #17
  br label %5

5:                                                ; preds = %2, %4
  %6 = tail call i64 @bitmap_count_bits(ptr noundef %1) #17
  %7 = trunc i64 %6 to i32
  %8 = getelementptr inbounds %struct._var_map, ptr %0, i64 0, i32 4
  %9 = load i32, ptr %8, align 4, !tbaa !111
  %10 = icmp ugt i32 %9, %7
  br i1 %10, label %11, label %107, !prof !149

11:                                               ; preds = %5
  %12 = zext i32 %9 to i64
  %13 = shl nuw nsw i64 %12, 2
  %14 = tail call ptr @xmalloc(i64 noundef %13) #17
  %15 = getelementptr inbounds %struct._var_map, ptr %0, i64 0, i32 1
  store ptr %14, ptr %15, align 8, !tbaa !116
  tail call void @llvm.memset.p0.i64(ptr align 4 %14, i8 -1, i64 %13, i1 false), !prof !150
  %16 = shl i64 %6, 2
  %17 = and i64 %16, 17179869180
  %18 = tail call ptr @xmalloc(i64 noundef %17) #17
  %19 = getelementptr inbounds %struct._var_map, ptr %0, i64 0, i32 2
  store ptr %18, ptr %19, align 8, !tbaa !118
  %20 = load ptr, ptr %1, align 8, !tbaa !151
  %21 = icmp eq ptr %20, null
  %22 = select i1 %21, ptr @bitmap_zero_bits, ptr %20, !prof !148
  %23 = getelementptr inbounds %struct.bitmap_element_def, ptr %22, i64 0, i32 2
  %24 = load i32, ptr %23, align 8, !tbaa !153
  %25 = shl i32 %24, 7
  %26 = getelementptr inbounds %struct.bitmap_element_def, ptr %22, i64 0, i32 3
  %27 = load i64, ptr %26, align 8, !tbaa !155
  %28 = icmp eq i64 %27, 0
  %29 = zext i1 %28 to i32
  %30 = or disjoint i32 %25, %29
  br label %31

31:                                               ; preds = %93, %11
  %32 = phi i32 [ 0, %11 ], [ %88, %93 ]
  %33 = phi i64 [ %27, %11 ], [ %100, %93 ]
  %34 = phi ptr [ %22, %11 ], [ %90, %93 ]
  %35 = phi i32 [ %30, %11 ], [ %101, %93 ]
  %36 = phi i32 [ 0, %11 ], [ %99, %93 ]
  %37 = icmp eq i64 %33, 0
  br i1 %37, label %52, label %38, !prof !156

38:                                               ; preds = %66, %31
  %39 = phi i32 [ %32, %31 ], [ %67, %66 ]
  %40 = phi i64 [ %33, %31 ], [ %71, %66 ]
  %41 = phi ptr [ %34, %31 ], [ %58, %66 ]
  %42 = phi i32 [ %35, %31 ], [ %68, %66 ]
  %43 = and i64 %40, 1
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %87, !prof !157

45:                                               ; preds = %38, %45
  %46 = phi i32 [ %49, %45 ], [ %42, %38 ]
  %47 = phi i64 [ %48, %45 ], [ %40, %38 ]
  %48 = lshr exact i64 %47, 1
  %49 = add i32 %46, 1
  %50 = and i64 %47, 2
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %45, label %87, !prof !158, !llvm.loop !159

52:                                               ; preds = %31
  %53 = add i32 %35, 63
  %54 = and i32 %53, -64
  %55 = add i32 %32, 1
  br label %56

56:                                               ; preds = %83, %52
  %57 = phi i64 [ %33, %52 ], [ %78, %83 ]
  %58 = phi ptr [ %34, %52 ], [ %81, %83 ]
  %59 = phi i32 [ %54, %52 ], [ %86, %83 ]
  %60 = phi i32 [ %55, %52 ], [ 0, %83 ]
  %61 = icmp eq i32 %60, 2
  br i1 %61, label %77, label %62, !prof !160

62:                                               ; preds = %56
  %63 = add i32 %59, 128
  %64 = shl i32 %60, 6
  %65 = sub i32 %63, %64
  br label %66

66:                                               ; preds = %62, %73
  %67 = phi i32 [ %75, %73 ], [ %60, %62 ]
  %68 = phi i32 [ %74, %73 ], [ %59, %62 ]
  %69 = zext i32 %67 to i64
  %70 = getelementptr inbounds %struct.bitmap_element_def, ptr %58, i64 0, i32 3, i64 %69
  %71 = load i64, ptr %70, align 8, !tbaa !155
  %72 = icmp eq i64 %71, 0
  br i1 %72, label %73, label %38, !prof !161

73:                                               ; preds = %66
  %74 = add i32 %68, 64
  %75 = add i32 %67, 1
  %76 = icmp eq i32 %75, 2
  br i1 %76, label %77, label %66, !prof !162, !llvm.loop !163

77:                                               ; preds = %73, %56
  %78 = phi i64 [ %57, %56 ], [ %71, %73 ]
  %79 = phi i32 [ %59, %56 ], [ %65, %73 ]
  %80 = phi i32 [ %60, %56 ], [ 2, %73 ]
  %81 = load ptr, ptr %58, align 8, !tbaa !164
  %82 = icmp eq ptr %81, null
  br i1 %82, label %87, label %83, !prof !165

83:                                               ; preds = %77
  %84 = getelementptr inbounds %struct.bitmap_element_def, ptr %81, i64 0, i32 2
  %85 = load i32, ptr %84, align 8, !tbaa !153
  %86 = shl i32 %85, 7
  br label %56, !llvm.loop !166

87:                                               ; preds = %77, %45, %38
  %88 = phi i32 [ %39, %38 ], [ %39, %45 ], [ %80, %77 ]
  %89 = phi i64 [ %40, %38 ], [ %48, %45 ], [ %78, %77 ]
  %90 = phi ptr [ %41, %38 ], [ %41, %45 ], [ %81, %77 ]
  %91 = phi i32 [ %42, %38 ], [ %49, %45 ], [ %79, %77 ]
  %92 = phi i1 [ false, %38 ], [ false, %45 ], [ true, %77 ]
  br i1 %92, label %102, label %93, !prof !167

93:                                               ; preds = %87
  %94 = load ptr, ptr %15, align 8, !tbaa !116
  %95 = zext i32 %91 to i64
  %96 = getelementptr inbounds i32, ptr %94, i64 %95
  store i32 %36, ptr %96, align 4, !tbaa !103
  %97 = zext i32 %36 to i64
  %98 = getelementptr inbounds i32, ptr %18, i64 %97
  store i32 %91, ptr %98, align 4, !tbaa !103
  %99 = add i32 %36, 1
  %100 = lshr i64 %89, 1
  %101 = add i32 %91, 1
  br label %31, !llvm.loop !168

102:                                              ; preds = %87
  %103 = icmp eq i32 %36, %7
  br i1 %103, label %105, label %104, !prof !149

104:                                              ; preds = %102
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 289, ptr noundef nonnull @.str.1) #17
  br label %105

105:                                              ; preds = %102, %104
  %106 = getelementptr inbounds %struct._var_map, ptr %0, i64 0, i32 3
  store i32 %36, ptr %106, align 8, !tbaa !110
  br label %107

107:                                              ; preds = %105, %5
  tail call void @bitmap_obstack_free(ptr noundef %1) #17
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @var_map_base_init(ptr nocapture noundef %0) unnamed_addr #9 !prof !125 !PGOFuncName !169 {
  %2 = getelementptr inbounds %struct._var_map, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 8, !tbaa !110
  %4 = getelementptr inbounds %struct._var_map, ptr %0, i64 0, i32 6
  %5 = load ptr, ptr %4, align 8, !tbaa !113
  %6 = icmp eq ptr %5, null
  br i1 %6, label %12, label %7, !prof !126

7:                                                ; preds = %1
  tail call void @free(ptr noundef %5)
  %8 = getelementptr inbounds %struct._var_map, ptr %0, i64 0, i32 7
  %9 = load ptr, ptr %8, align 8, !tbaa !170
  %10 = icmp eq ptr %9, null
  br i1 %10, label %18, label %11

11:                                               ; preds = %7
  store i32 0, ptr %9, align 8, !tbaa !171
  br label %18

12:                                               ; preds = %1
  %13 = icmp slt i32 %3, 400
  %14 = sdiv i32 %3, 10
  %15 = select i1 %13, i32 40, i32 %14, !prof !173
  %16 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef %15) #17
  %17 = getelementptr inbounds %struct._var_map, ptr %0, i64 0, i32 7
  store ptr %16, ptr %17, align 8, !tbaa !170
  br label %18

18:                                               ; preds = %11, %7, %12
  %19 = sext i32 %3 to i64
  %20 = shl nsw i64 %19, 2
  %21 = tail call ptr @xmalloc(i64 noundef %20) #17
  store ptr %21, ptr %4, align 8, !tbaa !113
  %22 = icmp sgt i32 %3, 0
  br i1 %22, label %23, label %106, !prof !174

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct._var_map, ptr %0, i64 0, i32 2
  %25 = getelementptr inbounds %struct._var_map, ptr %0, i64 0, i32 7
  %26 = zext nneg i32 %3 to i64
  br label %27

27:                                               ; preds = %23, %98
  %28 = phi i64 [ 0, %23 ], [ %104, %98 ]
  %29 = phi i32 [ 0, %23 ], [ %99, %98 ]
  %30 = load ptr, ptr %24, align 8, !tbaa !118
  %31 = icmp eq ptr %30, null
  %32 = trunc i64 %28 to i32
  br i1 %31, label %36, label %33, !prof !175

33:                                               ; preds = %27
  %34 = getelementptr inbounds i32, ptr %30, i64 %28
  %35 = load i32, ptr %34, align 4, !tbaa !103
  br label %36

36:                                               ; preds = %27, %33
  %37 = phi i32 [ %35, %33 ], [ %32, %27 ]
  %38 = load ptr, ptr %0, align 8, !tbaa !108
  %39 = sext i32 %37 to i64
  %40 = getelementptr inbounds %struct.partition_def, ptr %38, i64 0, i32 1, i64 %39
  %41 = load i32, ptr %40, align 8, !tbaa !122
  %42 = load ptr, ptr @cfun, align 8, !tbaa !88
  %43 = getelementptr inbounds %struct.function, ptr %42, i64 0, i32 3
  %44 = load ptr, ptr %43, align 8, !tbaa !131
  %45 = getelementptr inbounds %struct.gimple_df, ptr %44, i64 0, i32 2
  %46 = load ptr, ptr %45, align 8, !tbaa !133
  %47 = zext i32 %41 to i64
  %48 = getelementptr inbounds %struct.VEC_tree_base, ptr %46, i64 0, i32 2, i64 %47
  %49 = load ptr, ptr %48, align 8, !tbaa !88
  %50 = load i64, ptr %49, align 8
  %51 = and i64 %50, 65535
  %52 = icmp eq i64 %51, 141
  br i1 %52, label %53, label %56, !prof !176

53:                                               ; preds = %36
  %54 = getelementptr inbounds %struct.tree_ssa_name, ptr %49, i64 0, i32 1
  %55 = load ptr, ptr %54, align 8, !tbaa !99
  br label %56

56:                                               ; preds = %53, %36
  %57 = phi ptr [ %55, %53 ], [ %49, %36 ]
  %58 = load i64, ptr %57, align 8
  %59 = trunc i64 %58 to i16
  switch i16 %59, label %64 [
    i16 32, label %60
    i16 34, label %62
  ], !prof !177

60:                                               ; preds = %56
  %61 = getelementptr inbounds %struct.tree_var_decl, ptr %57, i64 0, i32 1
  br label %69

62:                                               ; preds = %56
  %63 = getelementptr inbounds %struct.tree_parm_decl, ptr %57, i64 0, i32 2
  br label %69

64:                                               ; preds = %56
  %65 = and i64 %58, 65535
  %66 = icmp eq i64 %65, 36
  %67 = getelementptr inbounds %struct.tree_result_decl, ptr %57, i64 0, i32 1
  %68 = select i1 %66, ptr %67, ptr null
  br label %69

69:                                               ; preds = %64, %62, %60
  %70 = phi ptr [ %61, %60 ], [ %63, %62 ], [ %68, %64 ]
  %71 = icmp eq ptr %70, null
  br i1 %71, label %74, label %72, !prof !175

72:                                               ; preds = %69
  %73 = load ptr, ptr %70, align 8, !tbaa !88
  br label %74

74:                                               ; preds = %69, %72
  %75 = phi ptr [ %73, %72 ], [ null, %69 ]
  %76 = load i8, ptr %75, align 8
  %77 = and i8 %76, 1
  %78 = icmp eq i8 %77, 0
  br i1 %78, label %79, label %98, !prof !178

79:                                               ; preds = %74
  %80 = or disjoint i8 %76, 1
  store i8 %80, ptr %75, align 8
  %81 = add nsw i32 %29, 1
  %82 = getelementptr inbounds %struct.var_ann_d, ptr %75, i64 0, i32 1
  store i32 %29, ptr %82, align 4, !tbaa !179
  %83 = load ptr, ptr %25, align 8, !tbaa !88
  %84 = icmp eq ptr %83, null
  br i1 %84, label %90, label %85, !prof !181

85:                                               ; preds = %79
  %86 = getelementptr inbounds %struct.VEC_tree_base, ptr %83, i64 0, i32 1
  %87 = load i32, ptr %86, align 4, !tbaa !182
  %88 = load i32, ptr %83, align 8, !tbaa !171
  %89 = icmp eq i32 %87, %88
  br i1 %89, label %90, label %92, !prof !181

90:                                               ; preds = %79, %85
  %91 = tail call ptr @vec_heap_p_reserve(ptr noundef %83, i32 noundef 1) #17
  store ptr %91, ptr %25, align 8, !tbaa !88
  br label %92

92:                                               ; preds = %85, %90
  %93 = load ptr, ptr %25, align 8, !tbaa !88
  %94 = load i32, ptr %93, align 8, !tbaa !171
  %95 = add i32 %94, 1
  store i32 %95, ptr %93, align 8, !tbaa !171
  %96 = zext i32 %94 to i64
  %97 = getelementptr inbounds %struct.VEC_tree_base, ptr %93, i64 0, i32 2, i64 %96
  store ptr %57, ptr %97, align 8, !tbaa !88
  br label %98

98:                                               ; preds = %92, %74
  %99 = phi i32 [ %29, %74 ], [ %81, %92 ]
  %100 = getelementptr inbounds %struct.var_ann_d, ptr %75, i64 0, i32 1
  %101 = load i32, ptr %100, align 4, !tbaa !179
  %102 = load ptr, ptr %4, align 8, !tbaa !113
  %103 = getelementptr inbounds i32, ptr %102, i64 %28
  store i32 %101, ptr %103, align 4, !tbaa !103
  %104 = add nuw nsw i64 %28, 1
  %105 = icmp eq i64 %104, %26
  br i1 %105, label %106, label %27, !prof !183, !llvm.loop !184

106:                                              ; preds = %98, %18
  %107 = phi i32 [ 0, %18 ], [ %99, %98 ]
  %108 = getelementptr inbounds %struct._var_map, ptr %0, i64 0, i32 5
  store i32 %107, ptr %108, align 8, !tbaa !112
  %109 = icmp sgt i32 %107, 0
  br i1 %109, label %110, label %137, !prof !174

110:                                              ; preds = %106
  %111 = getelementptr inbounds %struct._var_map, ptr %0, i64 0, i32 7
  %112 = zext nneg i32 %107 to i64
  br label %113

113:                                              ; preds = %110, %129
  %114 = phi i64 [ 0, %110 ], [ %135, %129 ]
  %115 = load ptr, ptr %111, align 8, !tbaa !170
  %116 = getelementptr inbounds %struct.VEC_tree_base, ptr %115, i64 0, i32 2, i64 %114
  %117 = load ptr, ptr %116, align 8, !tbaa !88
  %118 = load i64, ptr %117, align 8
  %119 = trunc i64 %118 to i16
  switch i16 %119, label %124 [
    i16 32, label %120
    i16 34, label %122
  ], !prof !185

120:                                              ; preds = %113
  %121 = getelementptr inbounds %struct.tree_var_decl, ptr %117, i64 0, i32 1
  br label %129

122:                                              ; preds = %113
  %123 = getelementptr inbounds %struct.tree_parm_decl, ptr %117, i64 0, i32 2
  br label %129

124:                                              ; preds = %113
  %125 = and i64 %118, 65535
  %126 = icmp eq i64 %125, 36
  %127 = getelementptr inbounds %struct.tree_result_decl, ptr %117, i64 0, i32 1
  %128 = select i1 %126, ptr %127, ptr null
  br label %129

129:                                              ; preds = %124, %122, %120
  %130 = phi ptr [ %121, %120 ], [ %123, %122 ], [ %128, %124 ]
  %131 = icmp ne ptr %130, null
  tail call void @llvm.assume(i1 %131)
  %132 = load ptr, ptr %130, align 8, !tbaa !88
  %133 = load i8, ptr %132, align 8
  %134 = and i8 %133, -2
  store i8 %134, ptr %132, align 8
  %135 = add nuw nsw i64 %114, 1
  %136 = icmp eq i64 %135, %112
  br i1 %136, label %137, label %113, !prof !186, !llvm.loop !187

137:                                              ; preds = %129, %106
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @partition_view_bitmap(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2) local_unnamed_addr #9 !prof !125 {
  %4 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #17
  %5 = tail call fastcc ptr @partition_view_init(ptr noundef %0)
  %6 = load ptr, ptr %1, align 8, !tbaa !151
  %7 = icmp eq ptr %6, null
  %8 = select i1 %7, ptr @bitmap_zero_bits, ptr %6, !prof !115
  %9 = getelementptr inbounds %struct.bitmap_element_def, ptr %8, i64 0, i32 2
  %10 = load i32, ptr %9, align 8, !tbaa !153
  %11 = shl i32 %10, 7
  %12 = getelementptr inbounds %struct.bitmap_element_def, ptr %8, i64 0, i32 3
  %13 = load i64, ptr %12, align 8, !tbaa !155
  %14 = icmp eq i64 %13, 0
  %15 = zext i1 %14 to i32
  %16 = or disjoint i32 %11, %15
  br label %17

17:                                               ; preds = %86, %3
  %18 = phi i64 [ %13, %3 ], [ %88, %86 ]
  %19 = phi i32 [ 0, %3 ], [ %74, %86 ]
  %20 = phi i32 [ %16, %3 ], [ %89, %86 ]
  %21 = phi ptr [ %8, %3 ], [ %76, %86 ]
  %22 = icmp eq i64 %18, 0
  br i1 %22, label %37, label %23, !prof !188

23:                                               ; preds = %51, %17
  %24 = phi i64 [ %18, %17 ], [ %56, %51 ]
  %25 = phi i32 [ %19, %17 ], [ %52, %51 ]
  %26 = phi i32 [ %20, %17 ], [ %53, %51 ]
  %27 = phi ptr [ %21, %17 ], [ %44, %51 ]
  %28 = and i64 %24, 1
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %72, !prof !189

30:                                               ; preds = %23, %30
  %31 = phi i32 [ %34, %30 ], [ %26, %23 ]
  %32 = phi i64 [ %33, %30 ], [ %24, %23 ]
  %33 = lshr exact i64 %32, 1
  %34 = add i32 %31, 1
  %35 = and i64 %32, 2
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %30, label %72, !prof !190, !llvm.loop !159

37:                                               ; preds = %17
  %38 = add i32 %20, 63
  %39 = and i32 %38, -64
  %40 = add i32 %19, 1
  br label %41

41:                                               ; preds = %68, %37
  %42 = phi i64 [ %18, %37 ], [ %63, %68 ]
  %43 = phi i32 [ %39, %37 ], [ %71, %68 ]
  %44 = phi ptr [ %21, %37 ], [ %66, %68 ]
  %45 = phi i32 [ %40, %37 ], [ 0, %68 ]
  %46 = icmp eq i32 %45, 2
  br i1 %46, label %62, label %47, !prof !191

47:                                               ; preds = %41
  %48 = add i32 %43, 128
  %49 = shl i32 %45, 6
  %50 = sub i32 %48, %49
  br label %51

51:                                               ; preds = %47, %58
  %52 = phi i32 [ %60, %58 ], [ %45, %47 ]
  %53 = phi i32 [ %59, %58 ], [ %43, %47 ]
  %54 = zext i32 %52 to i64
  %55 = getelementptr inbounds %struct.bitmap_element_def, ptr %44, i64 0, i32 3, i64 %54
  %56 = load i64, ptr %55, align 8, !tbaa !155
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %58, label %23, !prof !192

58:                                               ; preds = %51
  %59 = add i32 %53, 64
  %60 = add i32 %52, 1
  %61 = icmp eq i32 %60, 2
  br i1 %61, label %62, label %51, !prof !193, !llvm.loop !163

62:                                               ; preds = %58, %41
  %63 = phi i64 [ %42, %41 ], [ %56, %58 ]
  %64 = phi i32 [ %43, %41 ], [ %50, %58 ]
  %65 = phi i32 [ %45, %41 ], [ 2, %58 ]
  %66 = load ptr, ptr %44, align 8, !tbaa !164
  %67 = icmp eq ptr %66, null
  br i1 %67, label %72, label %68, !prof !194

68:                                               ; preds = %62
  %69 = getelementptr inbounds %struct.bitmap_element_def, ptr %66, i64 0, i32 2
  %70 = load i32, ptr %69, align 8, !tbaa !153
  %71 = shl i32 %70, 7
  br label %41, !llvm.loop !166

72:                                               ; preds = %62, %30, %23
  %73 = phi i64 [ %24, %23 ], [ %33, %30 ], [ %63, %62 ]
  %74 = phi i32 [ %25, %23 ], [ %25, %30 ], [ %65, %62 ]
  %75 = phi i32 [ %26, %23 ], [ %34, %30 ], [ %64, %62 ]
  %76 = phi ptr [ %27, %23 ], [ %27, %30 ], [ %66, %62 ]
  %77 = phi i1 [ false, %23 ], [ false, %30 ], [ true, %62 ]
  br i1 %77, label %90, label %78, !prof !195

78:                                               ; preds = %72
  %79 = load ptr, ptr %0, align 8, !tbaa !108
  %80 = zext i32 %75 to i64
  %81 = getelementptr inbounds %struct.partition_def, ptr %79, i64 0, i32 1, i64 %80
  %82 = load i32, ptr %81, align 8, !tbaa !122
  %83 = tail call i32 @bitmap_bit_p(ptr noundef %5, i32 noundef %82) #17
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %86, !prof !175

85:                                               ; preds = %78
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 331, ptr noundef nonnull @.str.1) #17
  br label %86

86:                                               ; preds = %78, %85
  %87 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %4, i32 noundef %82) #17
  %88 = lshr i64 %73, 1
  %89 = add i32 %75, 1
  br label %17, !llvm.loop !196

90:                                               ; preds = %72
  tail call fastcc void @partition_view_fini(ptr noundef %0, ptr noundef %4)
  tail call void @bitmap_obstack_free(ptr noundef %5) #17
  %91 = icmp eq i8 %2, 0
  br i1 %91, label %93, label %92, !prof !115

92:                                               ; preds = %90
  tail call fastcc void @var_map_base_init(ptr noundef %0)
  br label %94

93:                                               ; preds = %90
  tail call fastcc void @var_map_base_fini(ptr noundef %0)
  br label %94

94:                                               ; preds = %93, %92
  ret void
}

declare ptr @bitmap_obstack_alloc_stat(ptr noundef) local_unnamed_addr #3

declare i32 @bitmap_bit_p(ptr noundef, i32 noundef) local_unnamed_addr #3

declare zeroext i8 @bitmap_set_bit(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @bitmap_obstack_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @debug_scope_block(ptr noundef %0, i32 noundef %1) local_unnamed_addr #12 !prof !87 {
  %3 = load ptr, ptr @stderr, align 8, !tbaa !88
  tail call fastcc void @dump_scope_block(ptr noundef %3, i32 noundef 0, ptr noundef %0, i32 noundef %1)
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal fastcc void @dump_scope_block(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #12 !prof !87 {
  %5 = alloca %struct.expanded_location, align 8
  %6 = getelementptr inbounds %struct.tree_block, ptr %2, i64 0, i32 1
  %7 = load i32, ptr %6, align 8
  %8 = lshr i32 %7, 1
  %9 = load i64, ptr %2, align 8
  %10 = and i64 %9, 16777216
  %11 = icmp eq i64 %10, 0
  %12 = select i1 %11, ptr @.str.14, ptr @.str.13
  %13 = and i32 %7, 1
  %14 = icmp eq i32 %13, 0
  %15 = select i1 %14, ptr @.str.13, ptr @.str.15
  %16 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.12, i32 noundef %1, ptr noundef nonnull @.str.13, i32 noundef %8, ptr noundef nonnull %12, ptr noundef nonnull %15)
  %17 = getelementptr inbounds %struct.tree_block, ptr %2, i64 0, i32 2
  %18 = load i32, ptr %17, align 4, !tbaa !99
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #17
  call void @expand_location(ptr dead_on_unwind nonnull writable sret(%struct.expanded_location) align 8 %5, i32 noundef %18) #17
  %21 = load ptr, ptr %5, align 8, !tbaa !197
  %22 = getelementptr inbounds %struct.expanded_location, ptr %5, i64 0, i32 1
  %23 = load i32, ptr %22, align 8, !tbaa !199
  %24 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.16, ptr noundef %21, i32 noundef %23)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #17
  br label %25

25:                                               ; preds = %20, %4
  %26 = getelementptr inbounds %struct.tree_block, ptr %2, i64 0, i32 7
  %27 = load ptr, ptr %26, align 8, !tbaa !99
  %28 = icmp eq ptr %27, null
  br i1 %28, label %45, label %29

29:                                               ; preds = %25
  %30 = call ptr @block_ultimate_origin(ptr noundef nonnull %2) #17
  %31 = icmp eq ptr %30, null
  br i1 %31, label %45, label %32

32:                                               ; preds = %29
  %33 = call i64 @fwrite(ptr nonnull @.str.17, i64 19, i64 1, ptr %0)
  %34 = load i64, ptr %30, align 8
  %35 = and i64 %34, 65535
  %36 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %35
  %37 = load i32, ptr %36, align 4, !tbaa !103
  %38 = icmp eq i32 %37, 3
  br i1 %38, label %39, label %40

39:                                               ; preds = %32
  call void @print_generic_decl(ptr noundef %0, ptr noundef nonnull %30, i32 noundef %3) #17
  br label %45

40:                                               ; preds = %32
  %41 = getelementptr inbounds %struct.tree_block, ptr %30, i64 0, i32 1
  %42 = load i32, ptr %41, align 8
  %43 = lshr i32 %42, 1
  %44 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.18, i32 noundef %43)
  br label %45

45:                                               ; preds = %29, %40, %39, %25
  %46 = call i64 @fwrite(ptr nonnull @.str.19, i64 2, i64 1, ptr %0)
  %47 = getelementptr inbounds %struct.tree_block, ptr %2, i64 0, i32 3
  %48 = load ptr, ptr %47, align 8, !tbaa !99
  %49 = icmp eq ptr %48, null
  br i1 %49, label %50, label %52

50:                                               ; preds = %78, %45
  %51 = getelementptr inbounds %struct.tree_block, ptr %2, i64 0, i32 4
  br label %85

52:                                               ; preds = %45, %78
  %53 = phi ptr [ %83, %78 ], [ %48, %45 ]
  %54 = load i64, ptr %53, align 8
  %55 = trunc i64 %54 to i16
  switch i16 %55, label %60 [
    i16 32, label %56
    i16 34, label %58
  ]

56:                                               ; preds = %52
  %57 = getelementptr inbounds %struct.tree_var_decl, ptr %53, i64 0, i32 1
  br label %65

58:                                               ; preds = %52
  %59 = getelementptr inbounds %struct.tree_parm_decl, ptr %53, i64 0, i32 2
  br label %65

60:                                               ; preds = %52
  %61 = and i64 %54, 65535
  %62 = icmp eq i64 %61, 36
  %63 = getelementptr inbounds %struct.tree_result_decl, ptr %53, i64 0, i32 1
  %64 = select i1 %62, ptr %63, ptr null
  br label %65

65:                                               ; preds = %60, %58, %56
  %66 = phi ptr [ %57, %56 ], [ %59, %58 ], [ %64, %60 ]
  %67 = icmp eq ptr %66, null
  br i1 %67, label %70, label %68

68:                                               ; preds = %65
  %69 = load ptr, ptr %66, align 8, !tbaa !88
  br label %70

70:                                               ; preds = %65, %68
  %71 = phi ptr [ %69, %68 ], [ null, %65 ]
  %72 = icmp eq ptr %71, null
  br i1 %72, label %78, label %73

73:                                               ; preds = %70
  %74 = load i8, ptr %71, align 8
  %75 = and i8 %74, 2
  %76 = icmp eq i8 %75, 0
  %77 = select i1 %76, ptr @.str.14, ptr @.str.13
  br label %78

78:                                               ; preds = %73, %70
  %79 = phi ptr [ @.str.14, %70 ], [ %77, %73 ]
  %80 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.20, i32 noundef %1, ptr noundef nonnull @.str.13)
  call void @print_generic_decl(ptr noundef %0, ptr noundef nonnull %53, i32 noundef %3) #17
  %81 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.21, ptr noundef nonnull %79)
  %82 = getelementptr inbounds %struct.tree_common, ptr %53, i64 0, i32 1
  %83 = load ptr, ptr %82, align 8, !tbaa !99
  %84 = icmp eq ptr %83, null
  br i1 %84, label %50, label %52, !llvm.loop !200

85:                                               ; preds = %50, %95
  %86 = phi i64 [ 0, %50 ], [ %101, %95 ]
  %87 = load ptr, ptr %51, align 8, !tbaa !99
  %88 = icmp eq ptr %87, null
  br i1 %88, label %91, label %89

89:                                               ; preds = %85
  %90 = load i32, ptr %87, align 8, !tbaa !171
  br label %91

91:                                               ; preds = %85, %89
  %92 = phi i32 [ %90, %89 ], [ 0, %85 ]
  %93 = zext i32 %92 to i64
  %94 = icmp ult i64 %86, %93
  br i1 %94, label %95, label %102

95:                                               ; preds = %91
  %96 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.20, i32 noundef %1, ptr noundef nonnull @.str.13)
  %97 = load ptr, ptr %51, align 8, !tbaa !99
  %98 = getelementptr inbounds %struct.VEC_tree_base, ptr %97, i64 0, i32 2, i64 %86
  %99 = load ptr, ptr %98, align 8, !tbaa !88
  call void @print_generic_decl(ptr noundef %0, ptr noundef %99, i32 noundef %3) #17
  %100 = call i64 @fwrite(ptr nonnull @.str.22, i64 16, i64 1, ptr %0)
  %101 = add nuw nsw i64 %86, 1
  br label %85, !llvm.loop !201

102:                                              ; preds = %91
  %103 = getelementptr inbounds %struct.tree_block, ptr %2, i64 0, i32 5
  %104 = load ptr, ptr %103, align 8, !tbaa !99
  %105 = icmp eq ptr %104, null
  br i1 %105, label %113, label %106

106:                                              ; preds = %102
  %107 = add nsw i32 %1, 2
  br label %108

108:                                              ; preds = %106, %108
  %109 = phi ptr [ %104, %106 ], [ %111, %108 ]
  call fastcc void @dump_scope_block(ptr noundef %0, i32 noundef %107, ptr noundef nonnull %109, i32 noundef %3)
  %110 = getelementptr inbounds %struct.tree_common, ptr %109, i64 0, i32 1
  %111 = load ptr, ptr %110, align 8, !tbaa !99
  %112 = icmp eq ptr %111, null
  br i1 %112, label %113, label %108, !llvm.loop !202

113:                                              ; preds = %108, %102
  %114 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.23, i32 noundef %1, ptr noundef nonnull @.str.13)
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @dump_scope_blocks(ptr noundef %0, i32 noundef %1) local_unnamed_addr #12 !prof !87 {
  %3 = load ptr, ptr @current_function_decl, align 8, !tbaa !88
  %4 = getelementptr inbounds %struct.tree_decl_common, ptr %3, i64 0, i32 5
  %5 = load ptr, ptr %4, align 8, !tbaa !99
  tail call fastcc void @dump_scope_block(ptr noundef %0, i32 noundef 0, ptr noundef %5, i32 noundef %1)
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @debug_scope_blocks(i32 noundef %0) local_unnamed_addr #12 !prof !87 {
  %2 = load ptr, ptr @stderr, align 8, !tbaa !88
  %3 = load ptr, ptr @current_function_decl, align 8, !tbaa !88
  %4 = getelementptr inbounds %struct.tree_decl_common, ptr %3, i64 0, i32 5
  %5 = load ptr, ptr %4, align 8, !tbaa !99
  tail call fastcc void @dump_scope_block(ptr noundef %2, i32 noundef 0, ptr noundef %5, i32 noundef %0)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @remove_unused_locals() local_unnamed_addr #9 !prof !203 {
  %1 = alloca %struct.gimple_stmt_iterator, align 8
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = load i32, ptr @optimize, align 4, !tbaa !103
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %527, label %6, !prof !204

6:                                                ; preds = %0
  %7 = load ptr, ptr @current_function_decl, align 8, !tbaa !88
  %8 = getelementptr inbounds %struct.tree_decl_common, ptr %7, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !99
  tail call fastcc void @mark_scope_block_unused(ptr noundef %9)
  %10 = load ptr, ptr @cfun, align 8, !tbaa !88
  %11 = getelementptr inbounds %struct.function, ptr %10, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !131
  %13 = icmp eq ptr %12, null
  br i1 %13, label %16, label %14, !prof !204

14:                                               ; preds = %6
  %15 = load ptr, ptr %12, align 8, !tbaa !205
  br label %16

16:                                               ; preds = %14, %6
  %17 = phi ptr [ %15, %14 ], [ null, %6 ]
  %18 = getelementptr inbounds %struct.htab, ptr %17, i64 0, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !206
  %20 = tail call i64 @htab_size(ptr noundef %17) #17
  %21 = getelementptr inbounds ptr, ptr %19, i64 %20
  br label %22

22:                                               ; preds = %26, %16
  %23 = phi ptr [ %19, %16 ], [ %27, %26 ]
  %24 = load ptr, ptr %23, align 8, !tbaa !88
  %25 = icmp ult ptr %24, inttoptr (i64 2 to ptr)
  br i1 %25, label %26, label %29, !prof !208

26:                                               ; preds = %22
  %27 = getelementptr inbounds ptr, ptr %23, i64 1
  %28 = icmp ult ptr %27, %21
  br i1 %28, label %22, label %29, !prof !209, !llvm.loop !210

29:                                               ; preds = %26, %22
  %30 = phi ptr [ %23, %22 ], [ %27, %26 ]
  %31 = icmp ult ptr %30, %21
  br i1 %31, label %32, label %34, !prof !211

32:                                               ; preds = %29
  %33 = load ptr, ptr %30, align 8, !tbaa !88
  br label %34

34:                                               ; preds = %29, %32
  %35 = phi ptr [ %33, %32 ], [ null, %29 ]
  %36 = icmp ult ptr %30, %21
  br i1 %36, label %37, label %69, !prof !212

37:                                               ; preds = %34, %66
  %38 = phi ptr [ %67, %66 ], [ %35, %34 ]
  %39 = phi ptr [ %60, %66 ], [ %30, %34 ]
  %40 = load i64, ptr %38, align 8
  %41 = trunc i64 %40 to i16
  switch i16 %41, label %46 [
    i16 32, label %42
    i16 34, label %44
  ], !prof !213

42:                                               ; preds = %37
  %43 = getelementptr inbounds %struct.tree_var_decl, ptr %38, i64 0, i32 1
  br label %51

44:                                               ; preds = %37
  %45 = getelementptr inbounds %struct.tree_parm_decl, ptr %38, i64 0, i32 2
  br label %51

46:                                               ; preds = %37
  %47 = and i64 %40, 65535
  %48 = icmp eq i64 %47, 36
  %49 = getelementptr inbounds %struct.tree_result_decl, ptr %38, i64 0, i32 1
  %50 = select i1 %48, ptr %49, ptr null
  br label %51

51:                                               ; preds = %46, %44, %42
  %52 = phi ptr [ %43, %42 ], [ %45, %44 ], [ %50, %46 ]
  %53 = icmp ne ptr %52, null
  tail call void @llvm.assume(i1 %53)
  %54 = load ptr, ptr %52, align 8, !tbaa !88
  %55 = load i8, ptr %54, align 8
  %56 = and i8 %55, -3
  store i8 %56, ptr %54, align 8
  br label %57

57:                                               ; preds = %62, %51
  %58 = phi ptr [ %39, %51 ], [ %60, %62 ]
  %59 = phi ptr [ undef, %51 ], [ %65, %62 ]
  %60 = getelementptr inbounds ptr, ptr %58, i64 1
  %61 = icmp ult ptr %60, %21
  br i1 %61, label %62, label %66, !prof !214

62:                                               ; preds = %57
  %63 = load ptr, ptr %60, align 8, !tbaa !88
  %64 = icmp ult ptr %63, inttoptr (i64 2 to ptr)
  %65 = select i1 %64, ptr %59, ptr %63, !prof !215
  br i1 %64, label %57, label %66, !prof !215

66:                                               ; preds = %62, %57
  %67 = phi ptr [ null, %57 ], [ %65, %62 ]
  %68 = icmp ult ptr %60, %21
  br i1 %68, label %37, label %69, !prof !216, !llvm.loop !217

69:                                               ; preds = %66, %34
  %70 = load ptr, ptr @cfun, align 8, !tbaa !88
  %71 = getelementptr inbounds %struct.function, ptr %70, i64 0, i32 1
  %72 = load ptr, ptr %71, align 8, !tbaa !218
  %73 = load ptr, ptr %72, align 8, !tbaa !219
  %74 = getelementptr inbounds %struct.basic_block_def, ptr %73, i64 0, i32 6
  %75 = load ptr, ptr %74, align 8, !tbaa !221
  %76 = getelementptr inbounds %struct.control_flow_graph, ptr %72, i64 0, i32 1
  %77 = load ptr, ptr %76, align 8, !tbaa !223
  %78 = icmp eq ptr %75, %77
  br i1 %78, label %253, label %88, !prof !224

79:                                               ; preds = %231
  %80 = getelementptr inbounds %struct.basic_block_def, ptr %89, i64 0, i32 6
  %81 = load ptr, ptr %80, align 8, !tbaa !221
  %82 = load ptr, ptr @cfun, align 8, !tbaa !88
  %83 = getelementptr inbounds %struct.function, ptr %82, i64 0, i32 1
  %84 = load ptr, ptr %83, align 8, !tbaa !218
  %85 = getelementptr inbounds %struct.control_flow_graph, ptr %84, i64 0, i32 1
  %86 = load ptr, ptr %85, align 8, !tbaa !223
  %87 = icmp eq ptr %81, %86
  br i1 %87, label %253, label %88, !prof !225, !llvm.loop !226

88:                                               ; preds = %69, %79
  %89 = phi ptr [ %81, %79 ], [ %75, %69 ]
  %90 = getelementptr inbounds %struct.basic_block_def, ptr %89, i64 0, i32 13
  %91 = load i32, ptr %90, align 8, !tbaa !227, !noalias !228
  %92 = and i32 %91, 512
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %100, !prof !231

94:                                               ; preds = %88
  %95 = getelementptr inbounds %struct.basic_block_def, ptr %89, i64 0, i32 7
  %96 = load ptr, ptr %95, align 8, !tbaa !99, !noalias !228
  %97 = icmp eq ptr %96, null
  br i1 %97, label %100, label %98, !prof !232

98:                                               ; preds = %94
  %99 = load ptr, ptr %96, align 8, !tbaa !233, !noalias !228
  br label %100

100:                                              ; preds = %98, %94, %88
  %101 = phi ptr [ %99, %98 ], [ null, %94 ], [ null, %88 ]
  %102 = icmp eq ptr %101, null
  br i1 %102, label %105, label %103, !prof !232

103:                                              ; preds = %100
  %104 = load ptr, ptr %101, align 8, !tbaa !235, !noalias !228
  br label %105

105:                                              ; preds = %100, %103
  %106 = phi ptr [ %104, %103 ], [ null, %100 ]
  %107 = icmp eq ptr %106, null
  br i1 %107, label %155, label %108, !prof !237

108:                                              ; preds = %105, %151
  %109 = phi ptr [ %153, %151 ], [ %106, %105 ]
  %110 = load ptr, ptr %109, align 8, !tbaa !238
  %111 = getelementptr inbounds %struct.gimple_statement_base, ptr %110, i64 0, i32 5
  %112 = load ptr, ptr %111, align 8, !tbaa !99
  %113 = load i32, ptr %110, align 8
  %114 = and i32 %113, 255
  %115 = icmp eq i32 %114, 2
  br i1 %115, label %151, label %116, !prof !240

116:                                              ; preds = %108
  %117 = icmp eq ptr %112, null
  br i1 %117, label %121, label %118, !prof !241

118:                                              ; preds = %116
  %119 = load i64, ptr %112, align 8
  %120 = or i64 %119, 16777216
  store i64 %120, ptr %112, align 8
  br label %121

121:                                              ; preds = %118, %116
  %122 = getelementptr inbounds %struct.gimple_statement_base, ptr %110, i64 0, i32 3
  %123 = load i32, ptr %122, align 4, !tbaa !99
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %151, label %125, !prof !242

125:                                              ; preds = %121, %144
  %126 = phi i64 [ %147, %144 ], [ 0, %121 ]
  %127 = load ptr, ptr %109, align 8, !tbaa !238
  %128 = load i32, ptr %127, align 8
  %129 = and i32 %128, 255
  %130 = add nsw i32 %129, -10
  %131 = icmp ult i32 %130, -9
  br i1 %131, label %144, label %132, !prof !243

132:                                              ; preds = %125
  %133 = zext nneg i32 %129 to i64
  %134 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %133
  %135 = load i32, ptr %134, align 4, !tbaa !103
  %136 = zext i32 %135 to i64
  %137 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %136
  %138 = load i64, ptr %137, align 8, !tbaa !155
  %139 = icmp eq i64 %138, 0
  br i1 %139, label %140, label %141, !prof !243

140:                                              ; preds = %132
  call void @fancy_abort(ptr noundef nonnull @.str.25, i32 noundef 1622, ptr noundef nonnull @.str.1) #17
  br label %141

141:                                              ; preds = %140, %132
  %142 = getelementptr inbounds i8, ptr %127, i64 %138
  %143 = getelementptr inbounds ptr, ptr %142, i64 %126
  br label %144

144:                                              ; preds = %125, %141
  %145 = phi ptr [ %143, %141 ], [ null, %125 ]
  %146 = call ptr @walk_tree_1(ptr noundef %145, ptr noundef nonnull @mark_all_vars_used_1, ptr noundef null, ptr noundef null, ptr noundef null) #17
  %147 = add nuw nsw i64 %126, 1
  %148 = load i32, ptr %122, align 4, !tbaa !99
  %149 = zext i32 %148 to i64
  %150 = icmp ult i64 %147, %149
  br i1 %150, label %125, label %151, !prof !244, !llvm.loop !245

151:                                              ; preds = %144, %121, %108
  %152 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %109, i64 0, i32 2
  %153 = load ptr, ptr %152, align 8, !tbaa !246
  %154 = icmp eq ptr %153, null
  br i1 %154, label %155, label %108, !prof !247, !llvm.loop !248

155:                                              ; preds = %151, %105
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %1) #17
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %1, ptr noundef %89) #17
  %156 = load ptr, ptr %1, align 8, !tbaa.struct !249
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %1) #17
  %157 = icmp eq ptr %156, null
  br i1 %157, label %216, label %158, !prof !250

158:                                              ; preds = %155, %212
  %159 = phi ptr [ %214, %212 ], [ %156, %155 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #17
  %160 = load ptr, ptr %159, align 8, !tbaa !238
  %161 = getelementptr inbounds %struct.gimple_statement_phi, ptr %160, i64 0, i32 3
  %162 = load ptr, ptr %161, align 8, !tbaa !99
  %163 = getelementptr inbounds %struct.tree_ssa_name, ptr %162, i64 0, i32 1
  %164 = load ptr, ptr %163, align 8, !tbaa !99
  %165 = load i64, ptr %164, align 8
  %166 = and i64 %165, 67108864
  %167 = icmp eq i64 %166, 0
  br i1 %167, label %168, label %174, !prof !251

168:                                              ; preds = %158
  %169 = getelementptr inbounds %struct.tree_decl_common, ptr %164, i64 0, i32 2
  %170 = load i64, ptr %169, align 8
  %171 = lshr i64 %170, 25
  %172 = trunc i64 %171 to i8
  %173 = and i8 %172, 1
  br label %174

174:                                              ; preds = %158, %168
  %175 = phi i8 [ 1, %158 ], [ %173, %168 ]
  %176 = icmp eq i8 %175, 0
  br i1 %176, label %177, label %212, !prof !251

177:                                              ; preds = %174
  store ptr %162, ptr %2, align 8, !tbaa !88
  %178 = call ptr @walk_tree_1(ptr noundef nonnull %2, ptr noundef nonnull @mark_all_vars_used_1, ptr noundef null, ptr noundef null, ptr noundef null) #17
  %179 = load ptr, ptr %161, align 8, !tbaa !99
  %180 = call zeroext i8 @is_gimple_reg(ptr noundef %179) #17
  %181 = getelementptr inbounds %struct.gimple_statement_phi, ptr %160, i64 0, i32 2
  %182 = load i32, ptr %181, align 4, !tbaa !99
  %183 = icmp sgt i32 %182, 0
  br i1 %183, label %184, label %212, !prof !252

184:                                              ; preds = %177
  %185 = getelementptr inbounds %struct.gimple_statement_phi, ptr %160, i64 0, i32 4, i64 0
  %186 = xor i1 %183, true
  %187 = zext i1 %186 to i8
  %188 = zext i1 %183 to i32
  %189 = getelementptr inbounds %struct.gimple_statement_phi, ptr %160, i64 0, i32 1
  br label %190

190:                                              ; preds = %184, %207
  %191 = phi ptr [ %185, %184 ], [ %210, %207 ]
  %192 = phi i8 [ %187, %184 ], [ %209, %207 ]
  %193 = phi i32 [ %188, %184 ], [ %208, %207 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #17
  %194 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %191, i64 0, i32 3
  %195 = load ptr, ptr %194, align 8, !tbaa !253
  %196 = load ptr, ptr %195, align 8, !tbaa !88
  store ptr %196, ptr %3, align 8, !tbaa !88
  %197 = call ptr @walk_tree_1(ptr noundef nonnull %3, ptr noundef nonnull @mark_all_vars_used_1, ptr noundef null, ptr noundef null, ptr noundef null) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #17
  %198 = icmp slt i32 %193, %182
  br i1 %198, label %199, label %207, !prof !254

199:                                              ; preds = %190
  %200 = add nsw i32 %193, 1
  %201 = load i32, ptr %189, align 8, !tbaa !99
  %202 = icmp ult i32 %201, %193
  br i1 %202, label %203, label %204, !prof !255

203:                                              ; preds = %199
  call void @fancy_abort(ptr noundef nonnull @.str.25, i32 noundef 3103, ptr noundef nonnull @.str.1) #17
  br label %204

204:                                              ; preds = %203, %199
  %205 = zext i32 %193 to i64
  %206 = getelementptr inbounds %struct.gimple_statement_phi, ptr %160, i64 0, i32 4, i64 %205
  br label %207

207:                                              ; preds = %190, %204
  %208 = phi i32 [ %200, %204 ], [ %193, %190 ]
  %209 = phi i8 [ %192, %204 ], [ 1, %190 ]
  %210 = phi ptr [ %206, %204 ], [ null, %190 ]
  %211 = icmp eq i8 %209, 0
  br i1 %211, label %190, label %212, !prof !256, !llvm.loop !257

212:                                              ; preds = %207, %177, %174
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #17
  %213 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %159, i64 0, i32 2
  %214 = load ptr, ptr %213, align 8, !tbaa !246
  %215 = icmp eq ptr %214, null
  br i1 %215, label %216, label %158, !prof !258, !llvm.loop !259

216:                                              ; preds = %212, %155
  %217 = getelementptr inbounds %struct.basic_block_def, ptr %89, i64 0, i32 1
  br label %218

218:                                              ; preds = %251, %216
  %219 = phi i32 [ 0, %216 ], [ %252, %251 ]
  %220 = load ptr, ptr %217, align 8, !tbaa !88
  %221 = icmp eq ptr %220, null
  br i1 %221, label %224, label %222, !prof !260

222:                                              ; preds = %218
  %223 = load i32, ptr %220, align 8, !tbaa !261
  br label %224

224:                                              ; preds = %222, %218
  %225 = phi i32 [ %223, %222 ], [ 0, %218 ]
  %226 = icmp eq i32 %225, %219
  br i1 %226, label %231, label %227, !prof !263

227:                                              ; preds = %224
  %228 = zext i32 %219 to i64
  %229 = getelementptr inbounds %struct.VEC_edge_base, ptr %220, i64 0, i32 2, i64 %228
  %230 = load ptr, ptr %229, align 8, !tbaa !88
  br label %231

231:                                              ; preds = %224, %227
  %232 = phi ptr [ %230, %227 ], [ null, %224 ]
  br i1 %226, label %79, label %233, !prof !263

233:                                              ; preds = %231
  %234 = getelementptr inbounds %struct.edge_def, ptr %232, i64 0, i32 5
  %235 = load i32, ptr %234, align 8, !tbaa !264
  %236 = icmp eq i32 %235, 0
  br i1 %236, label %242, label %237, !prof !266

237:                                              ; preds = %233
  %238 = getelementptr inbounds %struct.edge_def, ptr %232, i64 0, i32 4
  %239 = load ptr, ptr %238, align 8, !tbaa !267
  %240 = load i64, ptr %239, align 8
  %241 = or i64 %240, 16777216
  store i64 %241, ptr %239, align 8
  br label %242

242:                                              ; preds = %237, %233
  %243 = load ptr, ptr %217, align 8, !tbaa !88
  %244 = icmp eq ptr %243, null
  br i1 %244, label %247, label %245, !prof !268

245:                                              ; preds = %242
  %246 = load i32, ptr %243, align 8, !tbaa !261
  br label %247

247:                                              ; preds = %245, %242
  %248 = phi i32 [ %246, %245 ], [ 0, %242 ]
  %249 = icmp ult i32 %219, %248
  br i1 %249, label %251, label %250, !prof !269

250:                                              ; preds = %247
  call void @fancy_abort(ptr noundef nonnull @.str.26, i32 noundef 738, ptr noundef nonnull @.str.1) #17
  br label %251

251:                                              ; preds = %247, %250
  %252 = add i32 %219, 1
  br label %218, !llvm.loop !270

253:                                              ; preds = %79, %69
  %254 = phi ptr [ %70, %69 ], [ %82, %79 ]
  %255 = getelementptr inbounds %struct.function, ptr %254, i64 0, i32 20
  %256 = load i32, ptr %255, align 8
  %257 = and i32 %256, -536870913
  store i32 %257, ptr %255, align 8
  %258 = getelementptr inbounds %struct.function, ptr %254, i64 0, i32 9
  %259 = load ptr, ptr %258, align 8, !tbaa !88
  %260 = icmp eq ptr %259, null
  br i1 %260, label %349, label %261, !prof !224

261:                                              ; preds = %253, %344
  %262 = phi ptr [ %347, %344 ], [ %259, %253 ]
  %263 = phi ptr [ %346, %344 ], [ %258, %253 ]
  %264 = phi ptr [ %345, %344 ], [ null, %253 ]
  %265 = getelementptr inbounds %struct.tree_list, ptr %262, i64 0, i32 2
  %266 = load ptr, ptr %265, align 8, !tbaa !99
  %267 = load i64, ptr %266, align 8
  %268 = and i64 %267, 65535
  %269 = icmp eq i64 %268, 29
  br i1 %269, label %340, label %270, !prof !271

270:                                              ; preds = %261
  %271 = trunc i64 %267 to i16
  switch i16 %271, label %276 [
    i16 32, label %272
    i16 34, label %274
  ], !prof !272

272:                                              ; preds = %270
  %273 = getelementptr inbounds %struct.tree_var_decl, ptr %266, i64 0, i32 1
  br label %280

274:                                              ; preds = %270
  %275 = getelementptr inbounds %struct.tree_parm_decl, ptr %266, i64 0, i32 2
  br label %280

276:                                              ; preds = %270
  %277 = icmp eq i64 %268, 36
  %278 = getelementptr inbounds %struct.tree_result_decl, ptr %266, i64 0, i32 1
  %279 = select i1 %277, ptr %278, ptr null
  br label %280

280:                                              ; preds = %276, %274, %272
  %281 = phi ptr [ %273, %272 ], [ %275, %274 ], [ %279, %276 ]
  %282 = icmp eq ptr %281, null
  br i1 %282, label %285, label %283, !prof !271

283:                                              ; preds = %280
  %284 = load ptr, ptr %281, align 8, !tbaa !88
  br label %285

285:                                              ; preds = %280, %283
  %286 = phi ptr [ %284, %283 ], [ null, %280 ]
  %287 = icmp eq ptr %286, null
  br i1 %287, label %292, label %288, !prof !273

288:                                              ; preds = %285
  %289 = load i8, ptr %286, align 8
  %290 = and i8 %289, 2
  %291 = icmp eq i8 %290, 0
  br i1 %291, label %292, label %316, !prof !274

292:                                              ; preds = %288, %285
  %293 = and i64 %267, 67108864
  %294 = icmp eq i64 %293, 0
  br i1 %294, label %295, label %301, !prof !275

295:                                              ; preds = %292
  %296 = getelementptr inbounds %struct.tree_decl_common, ptr %266, i64 0, i32 2
  %297 = load i64, ptr %296, align 8
  %298 = lshr i64 %297, 25
  %299 = trunc i64 %298 to i8
  %300 = and i8 %299, 1
  br label %301

301:                                              ; preds = %292, %295
  %302 = phi i8 [ 1, %292 ], [ %300, %295 ]
  %303 = icmp eq i8 %302, 0
  br i1 %303, label %313, label %304, !prof !275

304:                                              ; preds = %301
  %305 = icmp eq ptr %264, null
  br i1 %305, label %306, label %308

306:                                              ; preds = %304
  %307 = call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #17
  br label %308

308:                                              ; preds = %306, %304
  %309 = phi ptr [ %307, %306 ], [ %264, %304 ]
  %310 = getelementptr inbounds %struct.tree_decl_minimal, ptr %266, i64 0, i32 2
  %311 = load i32, ptr %310, align 4, !tbaa !99
  %312 = call zeroext i8 @bitmap_set_bit(ptr noundef %309, i32 noundef %311) #17
  br label %340

313:                                              ; preds = %301
  %314 = getelementptr inbounds %struct.tree_common, ptr %262, i64 0, i32 1
  %315 = load ptr, ptr %314, align 8, !tbaa !99
  store ptr %315, ptr %263, align 8, !tbaa !88
  br label %344, !llvm.loop !276

316:                                              ; preds = %288
  %317 = icmp eq i64 %268, 32
  br i1 %317, label %318, label %340, !prof !277

318:                                              ; preds = %316
  %319 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %266, i64 0, i32 4
  %320 = load i32, ptr %319, align 8
  %321 = and i32 %320, 2
  %322 = icmp eq i32 %321, 0
  br i1 %322, label %340, label %323, !prof !277

323:                                              ; preds = %318
  %324 = and i64 %267, 67108864
  %325 = icmp eq i64 %324, 0
  br i1 %325, label %326, label %332

326:                                              ; preds = %323
  %327 = getelementptr inbounds %struct.tree_decl_common, ptr %266, i64 0, i32 2
  %328 = load i64, ptr %327, align 8
  %329 = lshr i64 %328, 25
  %330 = trunc i64 %329 to i8
  %331 = and i8 %330, 1
  br label %332

332:                                              ; preds = %323, %326
  %333 = phi i8 [ 1, %323 ], [ %331, %326 ]
  %334 = icmp eq i8 %333, 0
  br i1 %334, label %335, label %340

335:                                              ; preds = %332
  %336 = load ptr, ptr @cfun, align 8, !tbaa !88
  %337 = getelementptr inbounds %struct.function, ptr %336, i64 0, i32 20
  %338 = load i32, ptr %337, align 8
  %339 = or i32 %338, 536870912
  store i32 %339, ptr %337, align 8
  br label %340

340:                                              ; preds = %261, %316, %318, %332, %335, %308
  %341 = phi ptr [ %264, %332 ], [ %264, %335 ], [ %264, %318 ], [ %264, %316 ], [ %309, %308 ], [ %264, %261 ]
  %342 = load ptr, ptr %263, align 8, !tbaa !88
  %343 = getelementptr inbounds %struct.tree_common, ptr %342, i64 0, i32 1
  br label %344

344:                                              ; preds = %340, %313
  %345 = phi ptr [ %341, %340 ], [ %264, %313 ]
  %346 = phi ptr [ %343, %340 ], [ %263, %313 ]
  %347 = load ptr, ptr %346, align 8, !tbaa !88
  %348 = icmp eq ptr %347, null
  br i1 %348, label %349, label %261, !prof !278

349:                                              ; preds = %344, %253
  %350 = phi ptr [ null, %253 ], [ %345, %344 ]
  %351 = icmp eq ptr %350, null
  br i1 %351, label %433, label %352, !prof !211

352:                                              ; preds = %349
  %353 = load ptr, ptr @cfun, align 8, !tbaa !88
  %354 = getelementptr inbounds %struct.function, ptr %353, i64 0, i32 9
  %355 = load ptr, ptr %354, align 8, !tbaa !99
  %356 = icmp eq ptr %355, null
  br i1 %356, label %391, label %357

357:                                              ; preds = %352, %387
  %358 = phi ptr [ %389, %387 ], [ %355, %352 ]
  %359 = getelementptr inbounds %struct.tree_list, ptr %358, i64 0, i32 2
  %360 = load ptr, ptr %359, align 8, !tbaa !99
  %361 = load i64, ptr %360, align 8
  %362 = and i64 %361, 65535
  %363 = icmp eq i64 %362, 32
  br i1 %363, label %364, label %387

364:                                              ; preds = %357
  %365 = and i64 %361, 67108864
  %366 = icmp eq i64 %365, 0
  br i1 %366, label %367, label %373

367:                                              ; preds = %364
  %368 = getelementptr inbounds %struct.tree_decl_common, ptr %360, i64 0, i32 2
  %369 = load i64, ptr %368, align 8
  %370 = lshr i64 %369, 25
  %371 = trunc i64 %370 to i8
  %372 = and i8 %371, 1
  br label %373

373:                                              ; preds = %364, %367
  %374 = phi i8 [ 1, %364 ], [ %372, %367 ]
  %375 = icmp eq i8 %374, 0
  br i1 %375, label %387, label %376

376:                                              ; preds = %373
  %377 = getelementptr inbounds %struct.tree_var_decl, ptr %360, i64 0, i32 1
  %378 = load ptr, ptr %377, align 8, !tbaa !88
  %379 = icmp eq ptr %378, null
  br i1 %379, label %387, label %380

380:                                              ; preds = %376
  %381 = load i8, ptr %378, align 8
  %382 = and i8 %381, 2
  %383 = icmp eq i8 %382, 0
  br i1 %383, label %387, label %384

384:                                              ; preds = %380
  %385 = getelementptr inbounds %struct.tree_decl_common, ptr %360, i64 0, i32 5
  %386 = call ptr @walk_tree_1(ptr noundef nonnull %385, ptr noundef nonnull @mark_all_vars_used_1, ptr noundef nonnull %350, ptr noundef null, ptr noundef null) #17
  br label %387

387:                                              ; preds = %384, %380, %376, %373, %357
  %388 = getelementptr inbounds %struct.tree_common, ptr %358, i64 0, i32 1
  %389 = load ptr, ptr %388, align 8, !tbaa !99
  %390 = icmp eq ptr %389, null
  br i1 %390, label %391, label %357, !llvm.loop !279

391:                                              ; preds = %387, %352
  %392 = load ptr, ptr @cfun, align 8, !tbaa !88
  %393 = getelementptr inbounds %struct.function, ptr %392, i64 0, i32 9
  %394 = load ptr, ptr %393, align 8, !tbaa !88
  %395 = icmp eq ptr %394, null
  br i1 %395, label %432, label %396

396:                                              ; preds = %391, %428
  %397 = phi ptr [ %430, %428 ], [ %394, %391 ]
  %398 = phi ptr [ %429, %428 ], [ %393, %391 ]
  %399 = getelementptr inbounds %struct.tree_list, ptr %397, i64 0, i32 2
  %400 = load ptr, ptr %399, align 8, !tbaa !99
  %401 = load i64, ptr %400, align 8
  %402 = and i64 %401, 65535
  %403 = icmp eq i64 %402, 32
  br i1 %403, label %404, label %425

404:                                              ; preds = %396
  %405 = and i64 %401, 67108864
  %406 = icmp eq i64 %405, 0
  br i1 %406, label %407, label %413

407:                                              ; preds = %404
  %408 = getelementptr inbounds %struct.tree_decl_common, ptr %400, i64 0, i32 2
  %409 = load i64, ptr %408, align 8
  %410 = lshr i64 %409, 25
  %411 = trunc i64 %410 to i8
  %412 = and i8 %411, 1
  br label %413

413:                                              ; preds = %404, %407
  %414 = phi i8 [ 1, %404 ], [ %412, %407 ]
  %415 = icmp eq i8 %414, 0
  br i1 %415, label %425, label %416

416:                                              ; preds = %413
  %417 = getelementptr inbounds %struct.tree_decl_minimal, ptr %400, i64 0, i32 2
  %418 = load i32, ptr %417, align 4, !tbaa !99
  %419 = call i32 @bitmap_bit_p(ptr noundef nonnull %350, i32 noundef %418) #17
  %420 = icmp eq i32 %419, 0
  br i1 %420, label %425, label %421

421:                                              ; preds = %416
  %422 = load ptr, ptr %398, align 8, !tbaa !88
  %423 = getelementptr inbounds %struct.tree_common, ptr %422, i64 0, i32 1
  %424 = load ptr, ptr %423, align 8, !tbaa !99
  store ptr %424, ptr %398, align 8, !tbaa !88
  br label %428

425:                                              ; preds = %416, %413, %396
  %426 = load ptr, ptr %398, align 8, !tbaa !88
  %427 = getelementptr inbounds %struct.tree_common, ptr %426, i64 0, i32 1
  br label %428

428:                                              ; preds = %425, %421
  %429 = phi ptr [ %398, %421 ], [ %427, %425 ]
  %430 = load ptr, ptr %429, align 8, !tbaa !88
  %431 = icmp eq ptr %430, null
  br i1 %431, label %432, label %396, !llvm.loop !280

432:                                              ; preds = %428, %391
  call void @bitmap_obstack_free(ptr noundef nonnull %350) #17
  br label %433

433:                                              ; preds = %432, %349
  %434 = load ptr, ptr @cfun, align 8, !tbaa !88
  %435 = getelementptr inbounds %struct.function, ptr %434, i64 0, i32 3
  %436 = load ptr, ptr %435, align 8, !tbaa !131
  %437 = icmp eq ptr %436, null
  br i1 %437, label %440, label %438, !prof !204

438:                                              ; preds = %433
  %439 = load ptr, ptr %436, align 8, !tbaa !205
  br label %440

440:                                              ; preds = %438, %433
  %441 = phi ptr [ %439, %438 ], [ null, %433 ]
  %442 = getelementptr inbounds %struct.htab, ptr %441, i64 0, i32 3
  %443 = load ptr, ptr %442, align 8, !tbaa !206
  %444 = call i64 @htab_size(ptr noundef %441) #17
  %445 = getelementptr inbounds ptr, ptr %443, i64 %444
  br label %446

446:                                              ; preds = %450, %440
  %447 = phi ptr [ %443, %440 ], [ %451, %450 ]
  %448 = load ptr, ptr %447, align 8, !tbaa !88
  %449 = icmp ult ptr %448, inttoptr (i64 2 to ptr)
  br i1 %449, label %450, label %453, !prof !208

450:                                              ; preds = %446
  %451 = getelementptr inbounds ptr, ptr %447, i64 1
  %452 = icmp ult ptr %451, %445
  br i1 %452, label %446, label %453, !prof !209, !llvm.loop !210

453:                                              ; preds = %450, %446
  %454 = phi ptr [ %447, %446 ], [ %451, %450 ]
  %455 = icmp ult ptr %454, %445
  br i1 %455, label %456, label %458, !prof !211

456:                                              ; preds = %453
  %457 = load ptr, ptr %454, align 8, !tbaa !88
  br label %458

458:                                              ; preds = %453, %456
  %459 = phi ptr [ %457, %456 ], [ null, %453 ]
  %460 = icmp ult ptr %454, %445
  br i1 %460, label %461, label %509, !prof !212

461:                                              ; preds = %458, %506
  %462 = phi ptr [ %507, %506 ], [ %459, %458 ]
  %463 = phi ptr [ %500, %506 ], [ %454, %458 ]
  %464 = load i64, ptr %462, align 8
  %465 = and i64 %464, 67108864
  %466 = icmp eq i64 %465, 0
  br i1 %466, label %467, label %473, !prof !281

467:                                              ; preds = %461
  %468 = getelementptr inbounds %struct.tree_decl_common, ptr %462, i64 0, i32 2
  %469 = load i64, ptr %468, align 8
  %470 = lshr i64 %469, 25
  %471 = trunc i64 %470 to i8
  %472 = and i8 %471, 1
  br label %473

473:                                              ; preds = %461, %467
  %474 = phi i8 [ 1, %461 ], [ %472, %467 ]
  %475 = icmp eq i8 %474, 0
  br i1 %475, label %476, label %496, !prof !282

476:                                              ; preds = %473
  %477 = trunc i64 %464 to i16
  switch i16 %477, label %480 [
    i16 34, label %496
    i16 36, label %496
    i16 32, label %478
  ], !prof !283

478:                                              ; preds = %476
  %479 = getelementptr inbounds %struct.tree_var_decl, ptr %462, i64 0, i32 1
  br label %485

480:                                              ; preds = %476
  %481 = and i64 %464, 65535
  %482 = icmp eq i64 %481, 36
  %483 = getelementptr inbounds %struct.tree_result_decl, ptr %462, i64 0, i32 1
  %484 = select i1 %482, ptr %483, ptr null
  br label %485

485:                                              ; preds = %480, %478
  %486 = phi ptr [ %479, %478 ], [ %484, %480 ]
  %487 = icmp ne ptr %486, null
  call void @llvm.assume(i1 %487)
  %488 = load ptr, ptr %486, align 8, !tbaa !88
  %489 = load i8, ptr %488, align 8
  %490 = and i8 %489, 18
  %491 = icmp eq i8 %490, 0
  br i1 %491, label %492, label %496, !prof !284

492:                                              ; preds = %485
  %493 = and i64 %464, 262144
  %494 = icmp eq i64 %493, 0
  br i1 %494, label %495, label %496, !prof !285

495:                                              ; preds = %492
  call void @remove_referenced_var(ptr noundef nonnull %462) #17
  br label %496

496:                                              ; preds = %476, %476, %473, %485, %492, %495
  br label %497

497:                                              ; preds = %496, %502
  %498 = phi ptr [ %500, %502 ], [ %463, %496 ]
  %499 = phi ptr [ %505, %502 ], [ undef, %496 ]
  %500 = getelementptr inbounds ptr, ptr %498, i64 1
  %501 = icmp ult ptr %500, %445
  br i1 %501, label %502, label %506, !prof !214

502:                                              ; preds = %497
  %503 = load ptr, ptr %500, align 8, !tbaa !88
  %504 = icmp ult ptr %503, inttoptr (i64 2 to ptr)
  %505 = select i1 %504, ptr %499, ptr %503, !prof !215
  br i1 %504, label %497, label %506, !prof !215

506:                                              ; preds = %502, %497
  %507 = phi ptr [ null, %497 ], [ %505, %502 ]
  %508 = icmp ult ptr %500, %445
  br i1 %508, label %461, label %509, !prof !216, !llvm.loop !286

509:                                              ; preds = %506, %458
  %510 = load ptr, ptr @current_function_decl, align 8, !tbaa !88
  %511 = getelementptr inbounds %struct.tree_decl_common, ptr %510, i64 0, i32 5
  %512 = load ptr, ptr %511, align 8, !tbaa !99
  %513 = call fastcc zeroext i8 @remove_unused_scope_block_p(ptr noundef %512), !range !287
  %514 = load ptr, ptr @dump_file, align 8, !tbaa !88
  %515 = icmp eq ptr %514, null
  br i1 %515, label %527, label %516, !prof !211

516:                                              ; preds = %509
  %517 = load i32, ptr @dump_flags, align 4, !tbaa !103
  %518 = and i32 %517, 8
  %519 = icmp eq i32 %518, 0
  br i1 %519, label %527, label %520

520:                                              ; preds = %516
  %521 = call i64 @fwrite(ptr nonnull @.str.2, i64 29, i64 1, ptr nonnull %514)
  %522 = load ptr, ptr @dump_file, align 8, !tbaa !88
  %523 = load i32, ptr @dump_flags, align 4, !tbaa !103
  %524 = load ptr, ptr @current_function_decl, align 8, !tbaa !88
  %525 = getelementptr inbounds %struct.tree_decl_common, ptr %524, i64 0, i32 5
  %526 = load ptr, ptr %525, align 8, !tbaa !99
  call fastcc void @dump_scope_block(ptr noundef %522, i32 noundef 0, ptr noundef %526, i32 noundef %523)
  br label %527

527:                                              ; preds = %509, %516, %520, %0
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @mark_scope_block_unused(ptr noundef %0) unnamed_addr #9 !prof !288 !PGOFuncName !289 {
  %2 = load i64, ptr %0, align 8
  %3 = and i64 %2, -16777217
  store i64 %3, ptr %0, align 8
  %4 = load ptr, ptr @debug_hooks, align 8, !tbaa !88
  %5 = getelementptr inbounds %struct.gcc_debug_hooks, ptr %4, i64 0, i32 9
  %6 = load ptr, ptr %5, align 8, !tbaa !290
  %7 = tail call zeroext i8 %6(ptr noundef nonnull %0) #17, !prof !292
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %12, !prof !293

9:                                                ; preds = %1
  %10 = load i64, ptr %0, align 8
  %11 = or i64 %10, 16777216
  store i64 %11, ptr %0, align 8
  br label %12

12:                                               ; preds = %9, %1
  %13 = getelementptr inbounds %struct.tree_block, ptr %0, i64 0, i32 5
  %14 = load ptr, ptr %13, align 8, !tbaa !99
  %15 = icmp eq ptr %14, null
  br i1 %15, label %21, label %16, !prof !294

16:                                               ; preds = %12, %16
  %17 = phi ptr [ %19, %16 ], [ %14, %12 ]
  tail call fastcc void @mark_scope_block_unused(ptr noundef nonnull %17)
  %18 = getelementptr inbounds %struct.tree_common, ptr %17, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !99
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %16, !prof !295, !llvm.loop !296

21:                                               ; preds = %16, %12
  ret void
}

declare void @gsi_start_phis(ptr dead_on_unwind writable sret(%struct.gimple_stmt_iterator) align 8, ptr noundef) local_unnamed_addr #3

declare void @remove_referenced_var(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @remove_unused_scope_block_p(ptr noundef %0) unnamed_addr #9 !prof !288 !PGOFuncName !297 {
  %2 = load i64, ptr %0, align 8
  %3 = and i64 %2, 16777216
  %4 = icmp eq i64 %3, 0
  %5 = zext i1 %4 to i8
  %6 = getelementptr inbounds %struct.tree_block, ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !88
  %8 = icmp eq ptr %7, null
  br i1 %8, label %59, label %9, !prof !298

9:                                                ; preds = %1, %54
  %10 = phi ptr [ %57, %54 ], [ %7, %1 ]
  %11 = phi ptr [ %56, %54 ], [ %6, %1 ]
  %12 = phi i8 [ %55, %54 ], [ %5, %1 ]
  %13 = getelementptr inbounds %struct.tree_common, ptr %10, i64 0, i32 1
  %14 = load i64, ptr %10, align 8
  %15 = trunc i64 %14 to i16
  switch i16 %15, label %21 [
    i16 29, label %54
    i16 32, label %16
  ], !prof !299

16:                                               ; preds = %9
  %17 = getelementptr inbounds %struct.tree_decl_common, ptr %10, i64 0, i32 2
  %18 = load i64, ptr %17, align 8
  %19 = and i64 %18, 67108864
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %54, !prof !300

21:                                               ; preds = %9, %16
  %22 = getelementptr inbounds %struct.tree_decl_common, ptr %10, i64 0, i32 2
  %23 = load i64, ptr %22, align 8
  %24 = and i64 %23, 1024
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %52, !prof !301

26:                                               ; preds = %21
  switch i16 %15, label %31 [
    i16 32, label %27
    i16 34, label %29
  ], !prof !302

27:                                               ; preds = %26
  %28 = getelementptr inbounds %struct.tree_var_decl, ptr %10, i64 0, i32 1
  br label %36

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.tree_parm_decl, ptr %10, i64 0, i32 2
  br label %36

31:                                               ; preds = %26
  %32 = and i64 %14, 65535
  %33 = icmp eq i64 %32, 36
  %34 = getelementptr inbounds %struct.tree_result_decl, ptr %10, i64 0, i32 1
  %35 = select i1 %33, ptr %34, ptr null
  br label %36

36:                                               ; preds = %31, %29, %27
  %37 = phi ptr [ %28, %27 ], [ %30, %29 ], [ %35, %31 ]
  %38 = icmp eq ptr %37, null
  br i1 %38, label %41, label %39, !prof !303

39:                                               ; preds = %36
  %40 = load ptr, ptr %37, align 8, !tbaa !88
  br label %41

41:                                               ; preds = %36, %39
  %42 = phi ptr [ %40, %39 ], [ null, %36 ]
  %43 = icmp eq ptr %42, null
  br i1 %43, label %48, label %44, !prof !304

44:                                               ; preds = %41
  %45 = load i8, ptr %42, align 8
  %46 = and i8 %45, 2
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %48, label %54, !prof !305

48:                                               ; preds = %44, %41
  %49 = load i32, ptr @debug_info_level, align 4
  %50 = and i32 %49, -2
  %51 = icmp eq i32 %50, 2
  br i1 %51, label %54, label %52, !prof !306

52:                                               ; preds = %48, %21
  %53 = load ptr, ptr %13, align 8, !tbaa !99
  store ptr %53, ptr %11, align 8, !tbaa !88
  br label %54

54:                                               ; preds = %52, %44, %16, %9, %48
  %55 = phi i8 [ %12, %48 ], [ 0, %9 ], [ 0, %16 ], [ 0, %44 ], [ %12, %52 ]
  %56 = phi ptr [ %13, %48 ], [ %13, %9 ], [ %13, %16 ], [ %13, %44 ], [ %11, %52 ]
  %57 = load ptr, ptr %56, align 8, !tbaa !88
  %58 = icmp eq ptr %57, null
  br i1 %58, label %59, label %9, !prof !300, !llvm.loop !307

59:                                               ; preds = %54, %1
  %60 = phi i8 [ %5, %1 ], [ %55, %54 ]
  %61 = getelementptr inbounds %struct.tree_block, ptr %0, i64 0, i32 5
  %62 = load ptr, ptr %61, align 8, !tbaa !88
  %63 = icmp eq ptr %62, null
  br i1 %63, label %113, label %64, !prof !294

64:                                               ; preds = %59, %106
  %65 = phi ptr [ %109, %106 ], [ %62, %59 ]
  %66 = phi ptr [ %108, %106 ], [ %61, %59 ]
  %67 = phi i32 [ %107, %106 ], [ 0, %59 ]
  %68 = tail call fastcc zeroext i8 @remove_unused_scope_block_p(ptr noundef nonnull %65), !range !287
  %69 = icmp eq i8 %68, 0
  %70 = load ptr, ptr %66, align 8, !tbaa !88
  br i1 %69, label %103, label %71, !prof !308

71:                                               ; preds = %64
  %72 = getelementptr inbounds %struct.tree_block, ptr %70, i64 0, i32 5
  %73 = load ptr, ptr %72, align 8, !tbaa !99
  %74 = icmp eq ptr %73, null
  %75 = getelementptr inbounds %struct.tree_common, ptr %70, i64 0, i32 1
  %76 = load ptr, ptr %75, align 8, !tbaa !99
  br i1 %74, label %102, label %77, !prof !309

77:                                               ; preds = %71
  %78 = getelementptr inbounds %struct.tree_block, ptr %70, i64 0, i32 6
  %79 = load ptr, ptr %78, align 8, !tbaa !99
  store ptr %73, ptr %66, align 8, !tbaa !88
  %80 = getelementptr inbounds %struct.tree_common, ptr %73, i64 0, i32 1
  %81 = load ptr, ptr %80, align 8, !tbaa !99
  %82 = icmp eq ptr %81, null
  br i1 %82, label %93, label %83, !prof !310

83:                                               ; preds = %77, %83
  %84 = phi ptr [ %89, %83 ], [ %73, %77 ]
  %85 = phi ptr [ %88, %83 ], [ %66, %77 ]
  %86 = getelementptr inbounds %struct.tree_block, ptr %84, i64 0, i32 6
  store ptr %79, ptr %86, align 8, !tbaa !99
  %87 = load ptr, ptr %85, align 8, !tbaa !88
  %88 = getelementptr inbounds %struct.tree_common, ptr %87, i64 0, i32 1
  %89 = load ptr, ptr %88, align 8, !tbaa !88
  %90 = getelementptr inbounds %struct.tree_common, ptr %89, i64 0, i32 1
  %91 = load ptr, ptr %90, align 8, !tbaa !99
  %92 = icmp eq ptr %91, null
  br i1 %92, label %93, label %83, !prof !310, !llvm.loop !311

93:                                               ; preds = %83, %77
  %94 = phi ptr [ %73, %77 ], [ %89, %83 ]
  %95 = phi ptr [ %66, %77 ], [ %88, %83 ]
  %96 = getelementptr inbounds %struct.tree_common, ptr %94, i64 0, i32 1
  store ptr %76, ptr %96, align 8, !tbaa !99
  %97 = load ptr, ptr %95, align 8, !tbaa !88
  %98 = getelementptr inbounds %struct.tree_block, ptr %97, i64 0, i32 6
  store ptr %79, ptr %98, align 8, !tbaa !99
  %99 = load ptr, ptr %95, align 8, !tbaa !88
  %100 = getelementptr inbounds %struct.tree_common, ptr %99, i64 0, i32 1
  %101 = add nsw i32 %67, 1
  br label %106

102:                                              ; preds = %71
  store ptr %76, ptr %66, align 8, !tbaa !88
  br label %106

103:                                              ; preds = %64
  %104 = getelementptr inbounds %struct.tree_common, ptr %70, i64 0, i32 1
  %105 = add nsw i32 %67, 1
  br label %106

106:                                              ; preds = %93, %102, %103
  %107 = phi i32 [ %101, %93 ], [ %67, %102 ], [ %105, %103 ]
  %108 = phi ptr [ %100, %93 ], [ %66, %102 ], [ %104, %103 ]
  %109 = load ptr, ptr %108, align 8, !tbaa !88
  %110 = icmp eq ptr %109, null
  br i1 %110, label %111, label %64, !prof !295, !llvm.loop !312

111:                                              ; preds = %106
  %112 = icmp eq i32 %107, 0
  br label %113

113:                                              ; preds = %111, %59
  %114 = phi i1 [ true, %59 ], [ %112, %111 ]
  %115 = icmp eq i8 %60, 0
  br i1 %115, label %170, label %116, !prof !313

116:                                              ; preds = %113
  %117 = getelementptr inbounds %struct.tree_block, ptr %0, i64 0, i32 6
  %118 = load ptr, ptr %117, align 8, !tbaa !99
  %119 = icmp eq ptr %118, null
  br i1 %119, label %170, label %120, !prof !314

120:                                              ; preds = %116
  %121 = load i64, ptr %118, align 8
  %122 = and i64 %121, 65535
  %123 = icmp eq i64 %122, 29
  %124 = select i1 %123, i1 true, i1 %114
  %125 = xor i1 %123, true
  br i1 %124, label %170, label %126, !prof !315

126:                                              ; preds = %120
  %127 = load i32, ptr @debug_info_level, align 4
  %128 = icmp ult i32 %127, 2
  br i1 %128, label %129, label %156, !prof !316

129:                                              ; preds = %126
  %130 = getelementptr inbounds %struct.tree_block, ptr %0, i64 0, i32 2
  %131 = load i32, ptr %130, align 4, !tbaa !99
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %170, label %133, !prof !306

133:                                              ; preds = %129, %139
  %134 = phi ptr [ %141, %139 ], [ %0, %129 ]
  %135 = icmp eq ptr %134, null
  br i1 %135, label %170, label %136, !prof !317

136:                                              ; preds = %133
  %137 = load i64, ptr %134, align 8
  %138 = trunc i64 %137 to i16
  switch i16 %138, label %170 [
    i16 4, label %139
    i16 29, label %146
  ], !prof !318

139:                                              ; preds = %136
  %140 = getelementptr inbounds %struct.tree_block, ptr %134, i64 0, i32 7
  %141 = load ptr, ptr %140, align 8, !tbaa !99
  %142 = icmp eq ptr %141, %134
  br i1 %142, label %143, label %133, !prof !306, !llvm.loop !319

143:                                              ; preds = %139
  %144 = and i64 %137, 65535
  %145 = icmp eq i64 %144, 29
  br i1 %145, label %146, label %170, !prof !316

146:                                              ; preds = %136, %143
  %147 = getelementptr inbounds %struct.tree_function_decl, ptr %134, i64 0, i32 5
  %148 = load i32, ptr %147, align 8
  %149 = and i32 %148, 2097152
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %170, label %151, !prof !320

151:                                              ; preds = %146
  %152 = getelementptr inbounds %struct.tree_decl_common, ptr %134, i64 0, i32 6
  %153 = load ptr, ptr %152, align 8, !tbaa !99
  %154 = tail call ptr @lookup_attribute(ptr noundef nonnull @.str.27, ptr noundef %153) #17
  %155 = icmp eq ptr %154, null
  br label %170

156:                                              ; preds = %126
  %157 = load ptr, ptr %6, align 8, !tbaa !99
  %158 = icmp eq ptr %157, null
  br i1 %158, label %159, label %170

159:                                              ; preds = %156
  %160 = getelementptr inbounds %struct.tree_block, ptr %0, i64 0, i32 4
  %161 = load ptr, ptr %160, align 8, !tbaa !99
  %162 = icmp eq ptr %161, null
  br i1 %162, label %166, label %163

163:                                              ; preds = %159
  %164 = load i32, ptr %161, align 8, !tbaa !171
  %165 = icmp eq i32 %164, 0
  br i1 %165, label %166, label %170

166:                                              ; preds = %159, %163
  %167 = getelementptr inbounds %struct.tree_block, ptr %0, i64 0, i32 2
  %168 = load i32, ptr %167, align 4, !tbaa !99
  %169 = icmp eq i32 %168, 0
  br label %170

170:                                              ; preds = %136, %133, %120, %166, %151, %156, %163, %143, %146, %116, %129, %113
  %171 = phi i1 [ true, %129 ], [ false, %113 ], [ %125, %120 ], [ false, %116 ], [ true, %146 ], [ true, %143 ], [ %155, %151 ], [ false, %163 ], [ false, %156 ], [ %169, %166 ], [ true, %133 ], [ true, %136 ]
  %172 = zext i1 %171 to i8
  %173 = load i64, ptr %0, align 8
  %174 = select i1 %171, i64 0, i64 16777216, !prof !321
  %175 = and i64 %173, -16777217
  %176 = or disjoint i64 %175, %174
  store i64 %176, ptr %0, align 8
  ret i8 %172
}

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @delete_tree_live_info(ptr nocapture noundef %0) local_unnamed_addr #9 !prof !125 {
  %2 = getelementptr inbounds %struct.tree_live_info_d, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !322
  tail call void @bitmap_obstack_free(ptr noundef %3) #17
  store ptr null, ptr %2, align 8, !tbaa !322
  %4 = getelementptr inbounds %struct.tree_live_info_d, ptr %0, i64 0, i32 4
  %5 = load ptr, ptr %4, align 8, !tbaa !324
  tail call void @free(ptr noundef %5)
  %6 = getelementptr inbounds %struct.tree_live_info_d, ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !325
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %21, !prof !174

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.tree_live_info_d, ptr %0, i64 0, i32 6
  %11 = zext nneg i32 %7 to i64
  br label %12

12:                                               ; preds = %9, %12
  %13 = phi i64 [ %11, %9 ], [ %14, %12 ]
  %14 = add nsw i64 %13, -1
  %15 = load ptr, ptr %10, align 8, !tbaa !326
  %16 = getelementptr inbounds ptr, ptr %15, i64 %14
  %17 = load ptr, ptr %16, align 8, !tbaa !88
  tail call void @bitmap_obstack_free(ptr noundef %17) #17
  %18 = load ptr, ptr %10, align 8, !tbaa !326
  %19 = getelementptr inbounds ptr, ptr %18, i64 %14
  store ptr null, ptr %19, align 8, !tbaa !88
  %20 = icmp sgt i64 %13, 1
  br i1 %20, label %12, label %21, !prof !327, !llvm.loop !328

21:                                               ; preds = %12, %1
  %22 = getelementptr inbounds %struct.tree_live_info_d, ptr %0, i64 0, i32 6
  %23 = load ptr, ptr %22, align 8, !tbaa !326
  tail call void @free(ptr noundef %23)
  %24 = load i32, ptr %6, align 8, !tbaa !325
  %25 = icmp sgt i32 %24, 0
  br i1 %25, label %26, label %38, !prof !174

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.tree_live_info_d, ptr %0, i64 0, i32 2
  %28 = zext nneg i32 %24 to i64
  br label %29

29:                                               ; preds = %26, %29
  %30 = phi i64 [ %28, %26 ], [ %31, %29 ]
  %31 = add nsw i64 %30, -1
  %32 = load ptr, ptr %27, align 8, !tbaa !329
  %33 = getelementptr inbounds ptr, ptr %32, i64 %31
  %34 = load ptr, ptr %33, align 8, !tbaa !88
  tail call void @bitmap_obstack_free(ptr noundef %34) #17
  %35 = load ptr, ptr %27, align 8, !tbaa !329
  %36 = getelementptr inbounds ptr, ptr %35, i64 %31
  store ptr null, ptr %36, align 8, !tbaa !88
  %37 = icmp sgt i64 %30, 1
  br i1 %37, label %29, label %38, !prof !327, !llvm.loop !330

38:                                               ; preds = %29, %21
  %39 = getelementptr inbounds %struct.tree_live_info_d, ptr %0, i64 0, i32 2
  %40 = load ptr, ptr %39, align 8, !tbaa !329
  tail call void @free(ptr noundef %40)
  tail call void @free(ptr noundef %0)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @calculate_live_on_exit(ptr nocapture noundef readonly %0) local_unnamed_addr #9 !prof !125 {
  %2 = alloca %struct.gimple_stmt_iterator, align 8
  %3 = load ptr, ptr @cfun, align 8, !tbaa !88
  %4 = getelementptr inbounds %struct.function, ptr %3, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !218
  %6 = load ptr, ptr %5, align 8, !tbaa !219
  %7 = getelementptr inbounds %struct.basic_block_def, ptr %6, i64 0, i32 6
  %8 = load ptr, ptr %7, align 8, !tbaa !221
  %9 = getelementptr inbounds %struct.control_flow_graph, ptr %5, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !223
  %11 = icmp eq ptr %8, %10
  br i1 %11, label %30, label %12, !prof !130

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.tree_live_info_d, ptr %0, i64 0, i32 6
  br label %14

14:                                               ; preds = %12, %14
  %15 = phi ptr [ %8, %12 ], [ %23, %14 ]
  %16 = load ptr, ptr %13, align 8, !tbaa !326
  %17 = getelementptr inbounds %struct.basic_block_def, ptr %15, i64 0, i32 9
  %18 = load i32, ptr %17, align 8, !tbaa !331
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds ptr, ptr %16, i64 %19
  %21 = load ptr, ptr %20, align 8, !tbaa !88
  tail call void @bitmap_clear(ptr noundef %21) #17
  %22 = getelementptr inbounds %struct.basic_block_def, ptr %15, i64 0, i32 6
  %23 = load ptr, ptr %22, align 8, !tbaa !221
  %24 = load ptr, ptr @cfun, align 8, !tbaa !88
  %25 = getelementptr inbounds %struct.function, ptr %24, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !218
  %27 = getelementptr inbounds %struct.control_flow_graph, ptr %26, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !223
  %29 = icmp eq ptr %23, %28
  br i1 %29, label %30, label %14, !prof !332, !llvm.loop !333

30:                                               ; preds = %14, %1
  %31 = phi ptr [ %5, %1 ], [ %26, %14 ]
  %32 = load ptr, ptr %31, align 8, !tbaa !219
  %33 = getelementptr inbounds %struct.basic_block_def, ptr %32, i64 0, i32 6
  %34 = load ptr, ptr %33, align 8, !tbaa !221
  %35 = load ptr, ptr @cfun, align 8, !tbaa !88
  %36 = getelementptr inbounds %struct.function, ptr %35, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !218
  %38 = getelementptr inbounds %struct.control_flow_graph, ptr %37, i64 0, i32 1
  %39 = load ptr, ptr %38, align 8, !tbaa !223
  %40 = icmp eq ptr %34, %39
  br i1 %40, label %191, label %41, !prof !130

41:                                               ; preds = %30
  %42 = getelementptr inbounds %struct.tree_live_info_d, ptr %0, i64 0, i32 6
  %43 = getelementptr inbounds %struct.tree_live_info_d, ptr %0, i64 0, i32 6
  %44 = getelementptr inbounds %struct.tree_live_info_d, ptr %0, i64 0, i32 2
  br label %49

45:                                               ; preds = %137
  %46 = getelementptr inbounds %struct.basic_block_def, ptr %50, i64 0, i32 6
  %47 = load ptr, ptr %46, align 8, !tbaa !221
  %48 = icmp eq ptr %47, %143
  br i1 %48, label %191, label %49, !prof !332, !llvm.loop !334

49:                                               ; preds = %41, %45
  %50 = phi ptr [ %34, %41 ], [ %47, %45 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #17
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %2, ptr noundef %50) #17
  %51 = load ptr, ptr %2, align 8, !tbaa.struct !249
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #17
  %52 = icmp eq ptr %51, null
  br i1 %52, label %121, label %53, !prof !335

53:                                               ; preds = %49, %117
  %54 = phi ptr [ %119, %117 ], [ %51, %49 ]
  %55 = load ptr, ptr %54, align 8, !tbaa !238
  %56 = getelementptr inbounds %struct.gimple_statement_phi, ptr %55, i64 0, i32 2
  %57 = load i32, ptr %56, align 4, !tbaa !99
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %117, label %59, !prof !336

59:                                               ; preds = %53
  %60 = getelementptr inbounds %struct.gimple_statement_phi, ptr %55, i64 0, i32 1
  %61 = getelementptr inbounds %struct.gimple_statement_base, ptr %55, i64 0, i32 4
  br label %62

62:                                               ; preds = %59, %112
  %63 = phi i64 [ 0, %59 ], [ %113, %112 ]
  %64 = trunc i64 %63 to i32
  %65 = load i32, ptr %60, align 8, !tbaa !99
  %66 = icmp ult i32 %65, %64
  br i1 %66, label %67, label %68, !prof !337

67:                                               ; preds = %62
  call void @fancy_abort(ptr noundef nonnull @.str.25, i32 noundef 3103, ptr noundef nonnull @.str.1) #17
  br label %68

68:                                               ; preds = %62, %67
  %69 = getelementptr inbounds %struct.gimple_statement_phi, ptr %55, i64 0, i32 4, i64 %63, i32 0, i32 3
  %70 = load ptr, ptr %69, align 8, !tbaa !253
  %71 = load ptr, ptr %70, align 8, !tbaa !88
  %72 = load i64, ptr %71, align 8
  %73 = and i64 %72, 65535
  %74 = icmp eq i64 %73, 141
  br i1 %74, label %75, label %112, !prof !338

75:                                               ; preds = %68
  %76 = load ptr, ptr %0, align 8, !tbaa !339
  %77 = load ptr, ptr %76, align 8, !tbaa !108
  %78 = getelementptr inbounds %struct.tree_ssa_name, ptr %71, i64 0, i32 3
  %79 = load i32, ptr %78, align 8, !tbaa !99
  %80 = zext i32 %79 to i64
  %81 = getelementptr inbounds %struct.partition_def, ptr %77, i64 0, i32 1, i64 %80
  %82 = load i32, ptr %81, align 8, !tbaa !122
  %83 = getelementptr inbounds %struct._var_map, ptr %76, i64 0, i32 1
  %84 = load ptr, ptr %83, align 8, !tbaa !116
  %85 = icmp eq ptr %84, null
  br i1 %85, label %90, label %86, !prof !340

86:                                               ; preds = %75
  %87 = sext i32 %82 to i64
  %88 = getelementptr inbounds i32, ptr %84, i64 %87
  %89 = load i32, ptr %88, align 4, !tbaa !103
  br label %90

90:                                               ; preds = %75, %86
  %91 = phi i32 [ %89, %86 ], [ %82, %75 ]
  %92 = icmp eq i32 %91, -1
  br i1 %92, label %112, label %93, !prof !340

93:                                               ; preds = %90
  %94 = load ptr, ptr %61, align 8, !tbaa !99
  %95 = load ptr, ptr %94, align 8, !tbaa !341, !nonnull !342, !noundef !342
  %96 = getelementptr inbounds %struct.VEC_edge_base, ptr %95, i64 0, i32 2, i64 %63
  %97 = load ptr, ptr %96, align 8, !tbaa !88
  %98 = load ptr, ptr %97, align 8, !tbaa !343
  %99 = load ptr, ptr @cfun, align 8, !tbaa !88
  %100 = getelementptr inbounds %struct.function, ptr %99, i64 0, i32 1
  %101 = load ptr, ptr %100, align 8, !tbaa !218
  %102 = load ptr, ptr %101, align 8, !tbaa !219
  %103 = icmp eq ptr %98, %102
  br i1 %103, label %112, label %104, !prof !340

104:                                              ; preds = %93
  %105 = load ptr, ptr %42, align 8, !tbaa !326
  %106 = getelementptr inbounds %struct.basic_block_def, ptr %98, i64 0, i32 9
  %107 = load i32, ptr %106, align 8, !tbaa !331
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds ptr, ptr %105, i64 %108
  %110 = load ptr, ptr %109, align 8, !tbaa !88
  %111 = call zeroext i8 @bitmap_set_bit(ptr noundef %110, i32 noundef %91) #17
  br label %112

112:                                              ; preds = %93, %104, %90, %68
  %113 = add nuw nsw i64 %63, 1
  %114 = load i32, ptr %56, align 4, !tbaa !99
  %115 = zext i32 %114 to i64
  %116 = icmp ult i64 %113, %115
  br i1 %116, label %62, label %117, !prof !344, !llvm.loop !345

117:                                              ; preds = %112, %53
  %118 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %54, i64 0, i32 2
  %119 = load ptr, ptr %118, align 8, !tbaa !246
  %120 = icmp eq ptr %119, null
  br i1 %120, label %121, label %53, !prof !346, !llvm.loop !347

121:                                              ; preds = %117, %49
  %122 = getelementptr inbounds %struct.basic_block_def, ptr %50, i64 0, i32 1
  %123 = getelementptr inbounds %struct.basic_block_def, ptr %50, i64 0, i32 9
  br label %124

124:                                              ; preds = %189, %121
  %125 = phi i32 [ 0, %121 ], [ %190, %189 ]
  %126 = load ptr, ptr %122, align 8, !tbaa !88
  %127 = icmp eq ptr %126, null
  br i1 %127, label %130, label %128, !prof !348

128:                                              ; preds = %124
  %129 = load i32, ptr %126, align 8, !tbaa !261
  br label %130

130:                                              ; preds = %128, %124
  %131 = phi i32 [ %129, %128 ], [ 0, %124 ]
  %132 = icmp eq i32 %131, %125
  br i1 %132, label %137, label %133, !prof !349

133:                                              ; preds = %130
  %134 = zext i32 %125 to i64
  %135 = getelementptr inbounds %struct.VEC_edge_base, ptr %126, i64 0, i32 2, i64 %134
  %136 = load ptr, ptr %135, align 8, !tbaa !88
  br label %137

137:                                              ; preds = %130, %133
  %138 = phi ptr [ %136, %133 ], [ null, %130 ]
  %139 = load ptr, ptr @cfun, align 8, !tbaa !88
  %140 = getelementptr inbounds %struct.function, ptr %139, i64 0, i32 1
  %141 = load ptr, ptr %140, align 8, !tbaa !218
  %142 = getelementptr inbounds %struct.control_flow_graph, ptr %141, i64 0, i32 1
  %143 = load ptr, ptr %142, align 8, !tbaa !223
  br i1 %132, label %45, label %144, !prof !349

144:                                              ; preds = %137
  %145 = getelementptr inbounds %struct.edge_def, ptr %138, i64 0, i32 1
  %146 = load ptr, ptr %145, align 8, !tbaa !350
  %147 = icmp eq ptr %146, %143
  br i1 %147, label %180, label %148, !prof !351

148:                                              ; preds = %144
  %149 = load ptr, ptr %43, align 8, !tbaa !326
  %150 = load i32, ptr %123, align 8, !tbaa !331
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds ptr, ptr %149, i64 %151
  %153 = load ptr, ptr %152, align 8, !tbaa !88
  %154 = load ptr, ptr %44, align 8, !tbaa !329
  %155 = icmp eq ptr %154, null
  br i1 %155, label %156, label %157, !prof !352

156:                                              ; preds = %148
  call void @fancy_abort(ptr noundef nonnull @.str.28, i32 noundef 285, ptr noundef nonnull @.str.1) #17
  br label %157

157:                                              ; preds = %156, %148
  %158 = load ptr, ptr @cfun, align 8, !tbaa !88
  %159 = getelementptr inbounds %struct.function, ptr %158, i64 0, i32 1
  %160 = load ptr, ptr %159, align 8, !tbaa !218
  %161 = load ptr, ptr %160, align 8, !tbaa !219
  %162 = icmp eq ptr %161, %146
  br i1 %162, label %163, label %164, !prof !352

163:                                              ; preds = %157
  call void @fancy_abort(ptr noundef nonnull @.str.28, i32 noundef 286, ptr noundef nonnull @.str.1) #17
  br label %164

164:                                              ; preds = %163, %157
  %165 = load ptr, ptr @cfun, align 8, !tbaa !88
  %166 = getelementptr inbounds %struct.function, ptr %165, i64 0, i32 1
  %167 = load ptr, ptr %166, align 8, !tbaa !218
  %168 = getelementptr inbounds %struct.control_flow_graph, ptr %167, i64 0, i32 1
  %169 = load ptr, ptr %168, align 8, !tbaa !223
  %170 = icmp eq ptr %169, %146
  br i1 %170, label %171, label %172, !prof !352

171:                                              ; preds = %164
  call void @fancy_abort(ptr noundef nonnull @.str.28, i32 noundef 287, ptr noundef nonnull @.str.1) #17
  br label %172

172:                                              ; preds = %164, %171
  %173 = load ptr, ptr %44, align 8, !tbaa !329
  %174 = getelementptr inbounds %struct.basic_block_def, ptr %146, i64 0, i32 9
  %175 = load i32, ptr %174, align 8, !tbaa !331
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds ptr, ptr %173, i64 %176
  %178 = load ptr, ptr %177, align 8, !tbaa !88
  %179 = call zeroext i8 @bitmap_ior_into(ptr noundef %153, ptr noundef %178) #17
  br label %180

180:                                              ; preds = %172, %144
  %181 = load ptr, ptr %122, align 8, !tbaa !88
  %182 = icmp eq ptr %181, null
  br i1 %182, label %185, label %183, !prof !353

183:                                              ; preds = %180
  %184 = load i32, ptr %181, align 8, !tbaa !261
  br label %185

185:                                              ; preds = %183, %180
  %186 = phi i32 [ %184, %183 ], [ 0, %180 ]
  %187 = icmp ult i32 %125, %186
  br i1 %187, label %189, label %188, !prof !354

188:                                              ; preds = %185
  call void @fancy_abort(ptr noundef nonnull @.str.26, i32 noundef 738, ptr noundef nonnull @.str.1) #17
  br label %189

189:                                              ; preds = %185, %188
  %190 = add i32 %125, 1
  br label %124, !llvm.loop !355

191:                                              ; preds = %45, %30
  ret void
}

declare void @bitmap_clear(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @bitmap_ior_into(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @calculate_live_ranges(ptr noundef %0) local_unnamed_addr #9 !prof !125 {
  %2 = tail call ptr @xmalloc(i64 noundef 56) #17
  store ptr %0, ptr %2, align 8, !tbaa !339
  %3 = load ptr, ptr @cfun, align 8, !tbaa !88
  %4 = getelementptr inbounds %struct.function, ptr %3, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !218
  %6 = getelementptr inbounds %struct.control_flow_graph, ptr %5, i64 0, i32 5
  %7 = load i32, ptr %6, align 8, !tbaa !356
  %8 = getelementptr inbounds %struct.tree_live_info_d, ptr %2, i64 0, i32 3
  store i32 %7, ptr %8, align 8, !tbaa !325
  %9 = sext i32 %7 to i64
  %10 = shl nsw i64 %9, 3
  %11 = tail call ptr @xmalloc(i64 noundef %10) #17
  %12 = getelementptr inbounds %struct.tree_live_info_d, ptr %2, i64 0, i32 2
  store ptr %11, ptr %12, align 8, !tbaa !329
  %13 = load ptr, ptr @cfun, align 8, !tbaa !88
  %14 = getelementptr inbounds %struct.function, ptr %13, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !218
  %16 = getelementptr inbounds %struct.control_flow_graph, ptr %15, i64 0, i32 5
  %17 = load i32, ptr %16, align 8, !tbaa !356
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %32, label %19, !prof !130

19:                                               ; preds = %1, %19
  %20 = phi i64 [ %24, %19 ], [ 0, %1 ]
  %21 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #17
  %22 = load ptr, ptr %12, align 8, !tbaa !329
  %23 = getelementptr inbounds ptr, ptr %22, i64 %20
  store ptr %21, ptr %23, align 8, !tbaa !88
  %24 = add nuw nsw i64 %20, 1
  %25 = load ptr, ptr @cfun, align 8, !tbaa !88
  %26 = getelementptr inbounds %struct.function, ptr %25, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !218
  %28 = getelementptr inbounds %struct.control_flow_graph, ptr %27, i64 0, i32 5
  %29 = load i32, ptr %28, align 8, !tbaa !356
  %30 = zext i32 %29 to i64
  %31 = icmp ult i64 %24, %30
  br i1 %31, label %19, label %32, !prof !327, !llvm.loop !357

32:                                               ; preds = %19, %1
  %33 = phi i32 [ %17, %1 ], [ %29, %19 ]
  %34 = sext i32 %33 to i64
  %35 = shl nsw i64 %34, 3
  %36 = tail call ptr @xmalloc(i64 noundef %35) #17
  %37 = getelementptr inbounds %struct.tree_live_info_d, ptr %2, i64 0, i32 6
  store ptr %36, ptr %37, align 8, !tbaa !326
  %38 = load ptr, ptr @cfun, align 8, !tbaa !88
  %39 = getelementptr inbounds %struct.function, ptr %38, i64 0, i32 1
  %40 = load ptr, ptr %39, align 8, !tbaa !218
  %41 = getelementptr inbounds %struct.control_flow_graph, ptr %40, i64 0, i32 5
  %42 = load i32, ptr %41, align 8, !tbaa !356
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %57, label %44, !prof !130

44:                                               ; preds = %32, %44
  %45 = phi i64 [ %49, %44 ], [ 0, %32 ]
  %46 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #17
  %47 = load ptr, ptr %37, align 8, !tbaa !326
  %48 = getelementptr inbounds ptr, ptr %47, i64 %45
  store ptr %46, ptr %48, align 8, !tbaa !88
  %49 = add nuw nsw i64 %45, 1
  %50 = load ptr, ptr @cfun, align 8, !tbaa !88
  %51 = getelementptr inbounds %struct.function, ptr %50, i64 0, i32 1
  %52 = load ptr, ptr %51, align 8, !tbaa !218
  %53 = getelementptr inbounds %struct.control_flow_graph, ptr %52, i64 0, i32 5
  %54 = load i32, ptr %53, align 8, !tbaa !356
  %55 = zext i32 %54 to i64
  %56 = icmp ult i64 %49, %55
  br i1 %56, label %44, label %57, !prof !327, !llvm.loop !358

57:                                               ; preds = %44, %32
  %58 = phi i32 [ %42, %32 ], [ %54, %44 ]
  %59 = sext i32 %58 to i64
  %60 = shl nsw i64 %59, 2
  %61 = tail call ptr @xmalloc(i64 noundef %60) #17
  %62 = getelementptr inbounds %struct.tree_live_info_d, ptr %2, i64 0, i32 4
  store ptr %61, ptr %62, align 8, !tbaa !324
  %63 = getelementptr inbounds %struct.tree_live_info_d, ptr %2, i64 0, i32 5
  store ptr %61, ptr %63, align 8, !tbaa !359
  %64 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #17
  %65 = getelementptr inbounds %struct.tree_live_info_d, ptr %2, i64 0, i32 1
  store ptr %64, ptr %65, align 8, !tbaa !322
  %66 = getelementptr inbounds %struct._var_map, ptr %0, i64 0, i32 3
  %67 = load i32, ptr %66, align 8, !tbaa !110
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %206, label %69, !prof !130

69:                                               ; preds = %57
  %70 = getelementptr inbounds %struct._var_map, ptr %0, i64 0, i32 2
  br label %71

71:                                               ; preds = %69, %202
  %72 = phi i32 [ 0, %69 ], [ %203, %202 ]
  %73 = load ptr, ptr %70, align 8, !tbaa !118
  %74 = icmp eq ptr %73, null
  br i1 %74, label %79, label %75, !prof !175

75:                                               ; preds = %71
  %76 = sext i32 %72 to i64
  %77 = getelementptr inbounds i32, ptr %73, i64 %76
  %78 = load i32, ptr %77, align 4, !tbaa !103
  br label %79

79:                                               ; preds = %71, %75
  %80 = phi i32 [ %78, %75 ], [ %72, %71 ]
  %81 = load ptr, ptr %0, align 8, !tbaa !108
  %82 = sext i32 %80 to i64
  %83 = getelementptr inbounds %struct.partition_def, ptr %81, i64 0, i32 1, i64 %82
  %84 = load i32, ptr %83, align 8, !tbaa !122
  %85 = load ptr, ptr @cfun, align 8, !tbaa !88
  %86 = getelementptr inbounds %struct.function, ptr %85, i64 0, i32 3
  %87 = load ptr, ptr %86, align 8, !tbaa !131
  %88 = getelementptr inbounds %struct.gimple_df, ptr %87, i64 0, i32 2
  %89 = load ptr, ptr %88, align 8, !tbaa !133
  %90 = zext i32 %84 to i64
  %91 = getelementptr inbounds %struct.VEC_tree_base, ptr %89, i64 0, i32 2, i64 %90
  %92 = load ptr, ptr %91, align 8, !tbaa !88
  %93 = icmp eq ptr %92, null
  br i1 %93, label %202, label %94, !prof !175

94:                                               ; preds = %79
  %95 = load ptr, ptr %2, align 8, !tbaa !339
  %96 = load i64, ptr %92, align 8
  %97 = and i64 %96, 65535
  %98 = icmp eq i64 %97, 141
  br i1 %98, label %100, label %99, !prof !176

99:                                               ; preds = %94
  tail call void @fancy_abort(ptr noundef nonnull @.str.28, i32 noundef 147, ptr noundef nonnull @.str.1) #17
  br label %100

100:                                              ; preds = %99, %94
  %101 = load ptr, ptr %95, align 8, !tbaa !108
  %102 = getelementptr inbounds %struct.tree_ssa_name, ptr %92, i64 0, i32 3
  %103 = load i32, ptr %102, align 8, !tbaa !99
  %104 = zext i32 %103 to i64
  %105 = getelementptr inbounds %struct.partition_def, ptr %101, i64 0, i32 1, i64 %104
  %106 = load i32, ptr %105, align 8, !tbaa !122
  %107 = getelementptr inbounds %struct._var_map, ptr %95, i64 0, i32 1
  %108 = load ptr, ptr %107, align 8, !tbaa !116
  %109 = icmp eq ptr %108, null
  br i1 %109, label %114, label %110, !prof !175

110:                                              ; preds = %100
  %111 = sext i32 %106 to i64
  %112 = getelementptr inbounds i32, ptr %108, i64 %111
  %113 = load i32, ptr %112, align 4, !tbaa !103
  br label %114

114:                                              ; preds = %110, %100
  %115 = phi i32 [ %113, %110 ], [ %106, %100 ]
  %116 = icmp eq i32 %115, -1
  br i1 %116, label %202, label %117, !prof !175

117:                                              ; preds = %114
  %118 = getelementptr inbounds %struct.tree_ssa_name, ptr %92, i64 0, i32 2
  %119 = load ptr, ptr %118, align 8, !tbaa !99
  %120 = icmp eq ptr %119, null
  br i1 %120, label %133, label %121, !prof !175

121:                                              ; preds = %117
  %122 = getelementptr inbounds %struct.gimple_statement_base, ptr %119, i64 0, i32 4
  %123 = load ptr, ptr %122, align 8, !tbaa !99
  %124 = icmp eq ptr %123, null
  br i1 %124, label %138, label %125, !prof !360

125:                                              ; preds = %121
  %126 = load ptr, ptr %37, align 8, !tbaa !326
  %127 = getelementptr inbounds %struct.basic_block_def, ptr %123, i64 0, i32 9
  %128 = load i32, ptr %127, align 8, !tbaa !331
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds ptr, ptr %126, i64 %129
  %131 = load ptr, ptr %130, align 8, !tbaa !88
  %132 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %131, i32 noundef %115) #17
  br label %138

133:                                              ; preds = %117
  %134 = load ptr, ptr @cfun, align 8, !tbaa !88
  %135 = getelementptr inbounds %struct.function, ptr %134, i64 0, i32 1
  %136 = load ptr, ptr %135, align 8, !tbaa !218
  %137 = load ptr, ptr %136, align 8, !tbaa !219
  br label %138

138:                                              ; preds = %133, %125, %121
  %139 = phi ptr [ %123, %125 ], [ null, %121 ], [ %137, %133 ]
  %140 = getelementptr inbounds %struct.tree_ssa_name, ptr %92, i64 0, i32 5
  %141 = getelementptr inbounds %struct.tree_ssa_name, ptr %92, i64 0, i32 5, i32 1
  %142 = load ptr, ptr %141, align 8, !tbaa !139
  %143 = icmp eq ptr %142, %140
  br i1 %143, label %196, label %144, !prof !361

144:                                              ; preds = %138, %189
  %145 = phi ptr [ %194, %189 ], [ %142, %138 ]
  %146 = phi i8 [ %190, %189 ], [ 0, %138 ]
  %147 = phi ptr [ %192, %189 ], [ %142, %138 ]
  %148 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %145, i64 0, i32 2
  %149 = load ptr, ptr %148, align 8, !tbaa !99
  %150 = load i32, ptr %149, align 8
  %151 = trunc i32 %150 to i8
  switch i8 %151, label %173 [
    i8 16, label %152
    i8 2, label %189
  ], !prof !362

152:                                              ; preds = %144
  %153 = getelementptr inbounds %struct.gimple_statement_phi, ptr %149, i64 0, i32 4, i64 0
  %154 = ptrtoint ptr %145 to i64
  %155 = ptrtoint ptr %153 to i64
  %156 = sub i64 %154, %155
  %157 = sdiv exact i64 %156, 48
  %158 = and i64 %157, 4294967295
  %159 = getelementptr inbounds %struct.gimple_statement_base, ptr %149, i64 0, i32 4
  %160 = load ptr, ptr %159, align 8, !tbaa !99
  %161 = load ptr, ptr %160, align 8, !tbaa !341, !nonnull !342, !noundef !342
  %162 = getelementptr inbounds %struct.VEC_edge_base, ptr %161, i64 0, i32 2, i64 %158
  %163 = load ptr, ptr %162, align 8, !tbaa !88
  %164 = load ptr, ptr %163, align 8, !tbaa !343
  %165 = load ptr, ptr @cfun, align 8, !tbaa !88
  %166 = getelementptr inbounds %struct.function, ptr %165, i64 0, i32 1
  %167 = load ptr, ptr %166, align 8, !tbaa !218
  %168 = load ptr, ptr %167, align 8, !tbaa !219
  %169 = icmp eq ptr %164, %168
  %170 = icmp eq ptr %164, %139
  %171 = select i1 %169, i1 true, i1 %170, !prof !340
  %172 = select i1 %171, ptr null, ptr %164, !prof !363
  br label %178

173:                                              ; preds = %144
  %174 = getelementptr inbounds %struct.gimple_statement_base, ptr %149, i64 0, i32 4
  %175 = load ptr, ptr %174, align 8, !tbaa !99
  %176 = icmp eq ptr %175, %139
  %177 = select i1 %176, ptr null, ptr %175, !prof !364
  br label %178

178:                                              ; preds = %173, %152
  %179 = phi ptr [ %172, %152 ], [ %177, %173 ]
  %180 = icmp eq ptr %179, null
  br i1 %180, label %189, label %181, !prof !365

181:                                              ; preds = %178
  %182 = load ptr, ptr %12, align 8, !tbaa !329
  %183 = getelementptr inbounds %struct.basic_block_def, ptr %179, i64 0, i32 9
  %184 = load i32, ptr %183, align 8, !tbaa !331
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds ptr, ptr %182, i64 %185
  %187 = load ptr, ptr %186, align 8, !tbaa !88
  %188 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %187, i32 noundef %115) #17
  br label %189

189:                                              ; preds = %144, %181, %178
  %190 = phi i8 [ 1, %181 ], [ %146, %178 ], [ %146, %144 ]
  %191 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %147, i64 0, i32 1
  %192 = load ptr, ptr %191, align 8, !tbaa !139
  %193 = icmp eq ptr %192, %140
  %194 = select i1 %193, ptr null, ptr %192, !prof !366
  %195 = icmp eq ptr %192, %140
  br i1 %195, label %196, label %144, !prof !367, !llvm.loop !368

196:                                              ; preds = %189, %138
  %197 = phi i8 [ 0, %138 ], [ %190, %189 ]
  %198 = icmp eq i8 %197, 0
  br i1 %198, label %202, label %199, !prof !369

199:                                              ; preds = %196
  %200 = load ptr, ptr %65, align 8, !tbaa !322
  %201 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %200, i32 noundef %115) #17
  br label %202

202:                                              ; preds = %199, %196, %114, %79
  %203 = add nuw i32 %72, 1
  %204 = load i32, ptr %66, align 8, !tbaa !110
  %205 = icmp ult i32 %203, %204
  br i1 %205, label %71, label %206, !prof !370, !llvm.loop !371

206:                                              ; preds = %202, %57
  %207 = load ptr, ptr @cfun, align 8, !tbaa !88
  %208 = getelementptr inbounds %struct.function, ptr %207, i64 0, i32 1
  %209 = load ptr, ptr %208, align 8, !tbaa !218
  %210 = getelementptr inbounds %struct.control_flow_graph, ptr %209, i64 0, i32 5
  %211 = load i32, ptr %210, align 8, !tbaa !356
  %212 = add nsw i32 %211, 1
  %213 = tail call ptr @sbitmap_alloc(i32 noundef %212) #17
  %214 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #17
  tail call void @sbitmap_zero(ptr noundef %213) #17
  %215 = load ptr, ptr @cfun, align 8, !tbaa !88
  %216 = getelementptr inbounds %struct.function, ptr %215, i64 0, i32 1
  %217 = load ptr, ptr %216, align 8, !tbaa !218
  %218 = getelementptr inbounds %struct.control_flow_graph, ptr %217, i64 0, i32 1
  %219 = load ptr, ptr %218, align 8, !tbaa !223
  %220 = getelementptr inbounds %struct.basic_block_def, ptr %219, i64 0, i32 5
  %221 = load ptr, ptr %220, align 8, !tbaa !372
  %222 = load ptr, ptr @cfun, align 8, !tbaa !88
  %223 = getelementptr inbounds %struct.function, ptr %222, i64 0, i32 1
  %224 = load ptr, ptr %223, align 8, !tbaa !218
  %225 = load ptr, ptr %224, align 8, !tbaa !219
  %226 = icmp eq ptr %221, %225
  br i1 %226, label %235, label %239, !prof !130

227:                                              ; preds = %320
  %228 = getelementptr inbounds %struct.basic_block_def, ptr %240, i64 0, i32 5
  %229 = load ptr, ptr %228, align 8, !tbaa !372
  %230 = load ptr, ptr @cfun, align 8, !tbaa !88
  %231 = getelementptr inbounds %struct.function, ptr %230, i64 0, i32 1
  %232 = load ptr, ptr %231, align 8, !tbaa !218
  %233 = load ptr, ptr %232, align 8, !tbaa !219
  %234 = icmp eq ptr %229, %233
  br i1 %234, label %235, label %239, !prof !332, !llvm.loop !373

235:                                              ; preds = %227, %206
  %236 = load ptr, ptr %63, align 8, !tbaa !359
  %237 = load ptr, ptr %62, align 8, !tbaa !324
  %238 = icmp eq ptr %236, %237
  br i1 %238, label %573, label %403, !prof !130

239:                                              ; preds = %206, %227
  %240 = phi ptr [ %229, %227 ], [ %221, %206 ]
  %241 = getelementptr inbounds %struct.basic_block_def, ptr %240, i64 0, i32 9
  %242 = load i32, ptr %241, align 8, !tbaa !331
  %243 = lshr i32 %242, 6
  %244 = zext nneg i32 %243 to i64
  %245 = getelementptr inbounds %struct.simple_bitmap_def, ptr %213, i64 0, i32 3, i64 %244
  %246 = load i64, ptr %245, align 8, !tbaa !155
  %247 = and i32 %242, 63
  %248 = zext nneg i32 %247 to i64
  %249 = shl nuw i64 1, %248
  %250 = and i64 %249, %246
  %251 = icmp eq i64 %250, 0
  br i1 %251, label %253, label %252, !prof !374

252:                                              ; preds = %239
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 876, ptr noundef nonnull @.str.1) #17
  br label %253

253:                                              ; preds = %252, %239
  %254 = load i32, ptr %241, align 8, !tbaa !331
  %255 = load ptr, ptr %213, align 8, !tbaa !375
  %256 = icmp eq ptr %255, null
  br i1 %256, label %271, label %257, !prof !374

257:                                              ; preds = %253
  %258 = lshr i32 %254, 6
  %259 = zext nneg i32 %258 to i64
  %260 = getelementptr inbounds %struct.simple_bitmap_def, ptr %213, i64 0, i32 3, i64 %259
  %261 = load i64, ptr %260, align 8, !tbaa !155
  %262 = and i32 %254, 63
  %263 = zext nneg i32 %262 to i64
  %264 = shl nuw i64 1, %263
  %265 = and i64 %261, %264
  %266 = icmp eq i64 %265, 0
  br i1 %266, label %267, label %271

267:                                              ; preds = %257
  %268 = getelementptr inbounds i8, ptr %255, i64 %259
  %269 = load i8, ptr %268, align 1, !tbaa !99
  %270 = add i8 %269, 1
  store i8 %270, ptr %268, align 1, !tbaa !99
  br label %271

271:                                              ; preds = %267, %257, %253
  %272 = and i32 %254, 63
  %273 = zext nneg i32 %272 to i64
  %274 = shl nuw i64 1, %273
  %275 = lshr i32 %254, 6
  %276 = zext nneg i32 %275 to i64
  %277 = getelementptr inbounds %struct.simple_bitmap_def, ptr %213, i64 0, i32 3, i64 %276
  %278 = load i64, ptr %277, align 8, !tbaa !155
  %279 = or i64 %278, %274
  store i64 %279, ptr %277, align 8, !tbaa !155
  %280 = load ptr, ptr %12, align 8, !tbaa !329
  %281 = icmp eq ptr %280, null
  br i1 %281, label %282, label %283, !prof !377

282:                                              ; preds = %271
  tail call void @fancy_abort(ptr noundef nonnull @.str.28, i32 noundef 285, ptr noundef nonnull @.str.1) #17
  br label %283

283:                                              ; preds = %282, %271
  %284 = load ptr, ptr @cfun, align 8, !tbaa !88
  %285 = getelementptr inbounds %struct.function, ptr %284, i64 0, i32 1
  %286 = load ptr, ptr %285, align 8, !tbaa !218
  %287 = load ptr, ptr %286, align 8, !tbaa !219
  %288 = icmp eq ptr %287, %240
  br i1 %288, label %289, label %290, !prof !377

289:                                              ; preds = %283
  tail call void @fancy_abort(ptr noundef nonnull @.str.28, i32 noundef 286, ptr noundef nonnull @.str.1) #17
  br label %290

290:                                              ; preds = %289, %283
  %291 = load ptr, ptr @cfun, align 8, !tbaa !88
  %292 = getelementptr inbounds %struct.function, ptr %291, i64 0, i32 1
  %293 = load ptr, ptr %292, align 8, !tbaa !218
  %294 = getelementptr inbounds %struct.control_flow_graph, ptr %293, i64 0, i32 1
  %295 = load ptr, ptr %294, align 8, !tbaa !223
  %296 = icmp eq ptr %295, %240
  br i1 %296, label %297, label %298, !prof !377

297:                                              ; preds = %290
  tail call void @fancy_abort(ptr noundef nonnull @.str.28, i32 noundef 287, ptr noundef nonnull @.str.1) #17
  br label %298

298:                                              ; preds = %297, %290
  %299 = load ptr, ptr %12, align 8, !tbaa !329
  %300 = load i32, ptr %241, align 8, !tbaa !331
  %301 = sext i32 %300 to i64
  %302 = getelementptr inbounds ptr, ptr %299, i64 %301
  %303 = load ptr, ptr %302, align 8, !tbaa !88
  %304 = icmp eq ptr %240, null
  br label %305

305:                                              ; preds = %397, %298
  %306 = phi i32 [ 0, %298 ], [ %398, %397 ]
  br i1 %304, label %307, label %308, !prof !378

307:                                              ; preds = %305
  tail call void @fancy_abort(ptr noundef nonnull @.str.26, i32 noundef 687, ptr noundef nonnull @.str.1) #17
  br label %308

308:                                              ; preds = %307, %305
  %309 = load ptr, ptr %240, align 8, !tbaa !88
  %310 = icmp eq ptr %309, null
  br i1 %310, label %313, label %311, !prof !378

311:                                              ; preds = %308
  %312 = load i32, ptr %309, align 8, !tbaa !261
  br label %313

313:                                              ; preds = %311, %308
  %314 = phi i32 [ %312, %311 ], [ 0, %308 ]
  %315 = icmp eq i32 %314, %306
  br i1 %315, label %320, label %316, !prof !379

316:                                              ; preds = %313
  %317 = zext i32 %306 to i64
  %318 = getelementptr inbounds %struct.VEC_edge_base, ptr %309, i64 0, i32 2, i64 %317
  %319 = load ptr, ptr %318, align 8, !tbaa !88
  br label %320

320:                                              ; preds = %316, %313
  %321 = phi ptr [ %319, %316 ], [ null, %313 ]
  br i1 %315, label %227, label %322, !prof !379

322:                                              ; preds = %320
  %323 = load ptr, ptr %321, align 8, !tbaa !343
  %324 = load ptr, ptr @cfun, align 8, !tbaa !88
  %325 = getelementptr inbounds %struct.function, ptr %324, i64 0, i32 1
  %326 = load ptr, ptr %325, align 8, !tbaa !218
  %327 = load ptr, ptr %326, align 8, !tbaa !219
  %328 = icmp eq ptr %323, %327
  br i1 %328, label %388, label %329, !prof !380

329:                                              ; preds = %322
  %330 = load ptr, ptr %37, align 8, !tbaa !326
  %331 = getelementptr inbounds %struct.basic_block_def, ptr %323, i64 0, i32 9
  %332 = load i32, ptr %331, align 8, !tbaa !331
  %333 = sext i32 %332 to i64
  %334 = getelementptr inbounds ptr, ptr %330, i64 %333
  %335 = load ptr, ptr %334, align 8, !tbaa !88
  %336 = tail call zeroext i8 @bitmap_and_compl(ptr noundef %214, ptr noundef %303, ptr noundef %335) #17
  %337 = load ptr, ptr %12, align 8, !tbaa !329
  %338 = icmp eq ptr %337, null
  br i1 %338, label %339, label %340, !prof !381

339:                                              ; preds = %329
  tail call void @fancy_abort(ptr noundef nonnull @.str.28, i32 noundef 285, ptr noundef nonnull @.str.1) #17
  br label %340

340:                                              ; preds = %339, %329
  %341 = load ptr, ptr @cfun, align 8, !tbaa !88
  %342 = getelementptr inbounds %struct.function, ptr %341, i64 0, i32 1
  %343 = load ptr, ptr %342, align 8, !tbaa !218
  %344 = load ptr, ptr %343, align 8, !tbaa !219
  %345 = icmp eq ptr %344, %323
  br i1 %345, label %346, label %347, !prof !381

346:                                              ; preds = %340
  tail call void @fancy_abort(ptr noundef nonnull @.str.28, i32 noundef 286, ptr noundef nonnull @.str.1) #17
  br label %347

347:                                              ; preds = %346, %340
  %348 = load ptr, ptr @cfun, align 8, !tbaa !88
  %349 = getelementptr inbounds %struct.function, ptr %348, i64 0, i32 1
  %350 = load ptr, ptr %349, align 8, !tbaa !218
  %351 = getelementptr inbounds %struct.control_flow_graph, ptr %350, i64 0, i32 1
  %352 = load ptr, ptr %351, align 8, !tbaa !223
  %353 = icmp eq ptr %352, %323
  br i1 %353, label %354, label %355, !prof !381

354:                                              ; preds = %347
  tail call void @fancy_abort(ptr noundef nonnull @.str.28, i32 noundef 287, ptr noundef nonnull @.str.1) #17
  br label %355

355:                                              ; preds = %354, %347
  %356 = load ptr, ptr %12, align 8, !tbaa !329
  %357 = load i32, ptr %331, align 8, !tbaa !331
  %358 = sext i32 %357 to i64
  %359 = getelementptr inbounds ptr, ptr %356, i64 %358
  %360 = load ptr, ptr %359, align 8, !tbaa !88
  %361 = tail call zeroext i8 @bitmap_ior_into(ptr noundef %360, ptr noundef %214) #17
  %362 = load i32, ptr %331, align 8, !tbaa !331
  %363 = lshr i32 %362, 6
  %364 = zext nneg i32 %363 to i64
  %365 = getelementptr inbounds %struct.simple_bitmap_def, ptr %213, i64 0, i32 3, i64 %364
  %366 = load i64, ptr %365, align 8, !tbaa !155
  %367 = and i32 %362, 63
  %368 = zext nneg i32 %367 to i64
  %369 = shl nuw i64 1, %368
  %370 = and i64 %369, %366
  %371 = icmp ne i64 %370, 0
  %372 = icmp ne i8 %361, 0
  %373 = select i1 %371, i1 %372, i1 false, !prof !382
  br i1 %373, label %374, label %388, !prof !383

374:                                              ; preds = %355
  %375 = load ptr, ptr %213, align 8, !tbaa !375
  %376 = icmp eq ptr %375, null
  br i1 %376, label %381, label %377, !prof !384

377:                                              ; preds = %374
  %378 = getelementptr inbounds i8, ptr %375, i64 %364
  %379 = load i8, ptr %378, align 1, !tbaa !99
  %380 = add i8 %379, -1
  store i8 %380, ptr %378, align 1, !tbaa !99
  br label %381

381:                                              ; preds = %377, %374
  %382 = xor i64 %369, -1
  %383 = load i64, ptr %365, align 8, !tbaa !155
  %384 = and i64 %383, %382
  store i64 %384, ptr %365, align 8, !tbaa !155
  %385 = load i32, ptr %331, align 8, !tbaa !331
  %386 = load ptr, ptr %63, align 8, !tbaa !359
  %387 = getelementptr inbounds i32, ptr %386, i64 1
  store ptr %387, ptr %63, align 8, !tbaa !359
  store i32 %385, ptr %386, align 4, !tbaa !103
  br label %388

388:                                              ; preds = %381, %355, %322
  %389 = load ptr, ptr %240, align 8, !tbaa !88
  %390 = icmp eq ptr %389, null
  br i1 %390, label %393, label %391, !prof !385

391:                                              ; preds = %388
  %392 = load i32, ptr %389, align 8, !tbaa !261
  br label %393

393:                                              ; preds = %391, %388
  %394 = phi i32 [ %392, %391 ], [ 0, %388 ]
  %395 = icmp ult i32 %306, %394
  br i1 %395, label %397, label %396, !prof !386

396:                                              ; preds = %393
  tail call void @fancy_abort(ptr noundef nonnull @.str.26, i32 noundef 738, ptr noundef nonnull @.str.1) #17
  br label %397

397:                                              ; preds = %396, %393
  %398 = add i32 %306, 1
  br label %305, !llvm.loop !387

399:                                              ; preds = %494
  %400 = load ptr, ptr %63, align 8, !tbaa !359
  %401 = load ptr, ptr %62, align 8, !tbaa !324
  %402 = icmp eq ptr %400, %401
  br i1 %402, label %573, label %403, !prof !388, !llvm.loop !389

403:                                              ; preds = %235, %399
  %404 = phi ptr [ %400, %399 ], [ %236, %235 ]
  %405 = getelementptr inbounds i32, ptr %404, i64 -1
  store ptr %405, ptr %63, align 8, !tbaa !359
  %406 = load i32, ptr %405, align 4, !tbaa !103
  %407 = load ptr, ptr @cfun, align 8, !tbaa !88
  %408 = getelementptr inbounds %struct.function, ptr %407, i64 0, i32 1
  %409 = load ptr, ptr %408, align 8, !tbaa !218
  %410 = getelementptr inbounds %struct.control_flow_graph, ptr %409, i64 0, i32 2
  %411 = load ptr, ptr %410, align 8, !tbaa !390
  %412 = zext i32 %406 to i64
  %413 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %411, i64 0, i32 2, i64 %412
  %414 = load ptr, ptr %413, align 8, !tbaa !88
  %415 = getelementptr inbounds %struct.basic_block_def, ptr %414, i64 0, i32 9
  %416 = load i32, ptr %415, align 8, !tbaa !331
  %417 = lshr i32 %416, 6
  %418 = zext nneg i32 %417 to i64
  %419 = getelementptr inbounds %struct.simple_bitmap_def, ptr %213, i64 0, i32 3, i64 %418
  %420 = load i64, ptr %419, align 8, !tbaa !155
  %421 = and i32 %416, 63
  %422 = zext nneg i32 %421 to i64
  %423 = shl nuw i64 1, %422
  %424 = and i64 %423, %420
  %425 = icmp eq i64 %424, 0
  br i1 %425, label %427, label %426, !prof !374

426:                                              ; preds = %403
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 876, ptr noundef nonnull @.str.1) #17
  br label %427

427:                                              ; preds = %426, %403
  %428 = load i32, ptr %415, align 8, !tbaa !331
  %429 = load ptr, ptr %213, align 8, !tbaa !375
  %430 = icmp eq ptr %429, null
  br i1 %430, label %445, label %431, !prof !374

431:                                              ; preds = %427
  %432 = lshr i32 %428, 6
  %433 = zext nneg i32 %432 to i64
  %434 = getelementptr inbounds %struct.simple_bitmap_def, ptr %213, i64 0, i32 3, i64 %433
  %435 = load i64, ptr %434, align 8, !tbaa !155
  %436 = and i32 %428, 63
  %437 = zext nneg i32 %436 to i64
  %438 = shl nuw i64 1, %437
  %439 = and i64 %435, %438
  %440 = icmp eq i64 %439, 0
  br i1 %440, label %441, label %445

441:                                              ; preds = %431
  %442 = getelementptr inbounds i8, ptr %429, i64 %433
  %443 = load i8, ptr %442, align 1, !tbaa !99
  %444 = add i8 %443, 1
  store i8 %444, ptr %442, align 1, !tbaa !99
  br label %445

445:                                              ; preds = %441, %431, %427
  %446 = and i32 %428, 63
  %447 = zext nneg i32 %446 to i64
  %448 = shl nuw i64 1, %447
  %449 = lshr i32 %428, 6
  %450 = zext nneg i32 %449 to i64
  %451 = getelementptr inbounds %struct.simple_bitmap_def, ptr %213, i64 0, i32 3, i64 %450
  %452 = load i64, ptr %451, align 8, !tbaa !155
  %453 = or i64 %452, %448
  store i64 %453, ptr %451, align 8, !tbaa !155
  %454 = load ptr, ptr %12, align 8, !tbaa !329
  %455 = icmp eq ptr %454, null
  br i1 %455, label %456, label %457, !prof !377

456:                                              ; preds = %445
  tail call void @fancy_abort(ptr noundef nonnull @.str.28, i32 noundef 285, ptr noundef nonnull @.str.1) #17
  br label %457

457:                                              ; preds = %456, %445
  %458 = load ptr, ptr @cfun, align 8, !tbaa !88
  %459 = getelementptr inbounds %struct.function, ptr %458, i64 0, i32 1
  %460 = load ptr, ptr %459, align 8, !tbaa !218
  %461 = load ptr, ptr %460, align 8, !tbaa !219
  %462 = icmp eq ptr %461, %414
  br i1 %462, label %463, label %464, !prof !377

463:                                              ; preds = %457
  tail call void @fancy_abort(ptr noundef nonnull @.str.28, i32 noundef 286, ptr noundef nonnull @.str.1) #17
  br label %464

464:                                              ; preds = %463, %457
  %465 = load ptr, ptr @cfun, align 8, !tbaa !88
  %466 = getelementptr inbounds %struct.function, ptr %465, i64 0, i32 1
  %467 = load ptr, ptr %466, align 8, !tbaa !218
  %468 = getelementptr inbounds %struct.control_flow_graph, ptr %467, i64 0, i32 1
  %469 = load ptr, ptr %468, align 8, !tbaa !223
  %470 = icmp eq ptr %469, %414
  br i1 %470, label %471, label %472, !prof !377

471:                                              ; preds = %464
  tail call void @fancy_abort(ptr noundef nonnull @.str.28, i32 noundef 287, ptr noundef nonnull @.str.1) #17
  br label %472

472:                                              ; preds = %471, %464
  %473 = load ptr, ptr %12, align 8, !tbaa !329
  %474 = load i32, ptr %415, align 8, !tbaa !331
  %475 = sext i32 %474 to i64
  %476 = getelementptr inbounds ptr, ptr %473, i64 %475
  %477 = load ptr, ptr %476, align 8, !tbaa !88
  %478 = icmp eq ptr %414, null
  br label %479

479:                                              ; preds = %571, %472
  %480 = phi i32 [ 0, %472 ], [ %572, %571 ]
  br i1 %478, label %481, label %482, !prof !378

481:                                              ; preds = %479
  tail call void @fancy_abort(ptr noundef nonnull @.str.26, i32 noundef 687, ptr noundef nonnull @.str.1) #17
  br label %482

482:                                              ; preds = %481, %479
  %483 = load ptr, ptr %414, align 8, !tbaa !88
  %484 = icmp eq ptr %483, null
  br i1 %484, label %487, label %485, !prof !378

485:                                              ; preds = %482
  %486 = load i32, ptr %483, align 8, !tbaa !261
  br label %487

487:                                              ; preds = %485, %482
  %488 = phi i32 [ %486, %485 ], [ 0, %482 ]
  %489 = icmp eq i32 %488, %480
  br i1 %489, label %494, label %490, !prof !379

490:                                              ; preds = %487
  %491 = zext i32 %480 to i64
  %492 = getelementptr inbounds %struct.VEC_edge_base, ptr %483, i64 0, i32 2, i64 %491
  %493 = load ptr, ptr %492, align 8, !tbaa !88
  br label %494

494:                                              ; preds = %490, %487
  %495 = phi ptr [ %493, %490 ], [ null, %487 ]
  br i1 %489, label %399, label %496, !prof !379

496:                                              ; preds = %494
  %497 = load ptr, ptr %495, align 8, !tbaa !343
  %498 = load ptr, ptr @cfun, align 8, !tbaa !88
  %499 = getelementptr inbounds %struct.function, ptr %498, i64 0, i32 1
  %500 = load ptr, ptr %499, align 8, !tbaa !218
  %501 = load ptr, ptr %500, align 8, !tbaa !219
  %502 = icmp eq ptr %497, %501
  br i1 %502, label %562, label %503, !prof !380

503:                                              ; preds = %496
  %504 = load ptr, ptr %37, align 8, !tbaa !326
  %505 = getelementptr inbounds %struct.basic_block_def, ptr %497, i64 0, i32 9
  %506 = load i32, ptr %505, align 8, !tbaa !331
  %507 = sext i32 %506 to i64
  %508 = getelementptr inbounds ptr, ptr %504, i64 %507
  %509 = load ptr, ptr %508, align 8, !tbaa !88
  %510 = tail call zeroext i8 @bitmap_and_compl(ptr noundef %214, ptr noundef %477, ptr noundef %509) #17
  %511 = load ptr, ptr %12, align 8, !tbaa !329
  %512 = icmp eq ptr %511, null
  br i1 %512, label %513, label %514, !prof !381

513:                                              ; preds = %503
  tail call void @fancy_abort(ptr noundef nonnull @.str.28, i32 noundef 285, ptr noundef nonnull @.str.1) #17
  br label %514

514:                                              ; preds = %513, %503
  %515 = load ptr, ptr @cfun, align 8, !tbaa !88
  %516 = getelementptr inbounds %struct.function, ptr %515, i64 0, i32 1
  %517 = load ptr, ptr %516, align 8, !tbaa !218
  %518 = load ptr, ptr %517, align 8, !tbaa !219
  %519 = icmp eq ptr %518, %497
  br i1 %519, label %520, label %521, !prof !381

520:                                              ; preds = %514
  tail call void @fancy_abort(ptr noundef nonnull @.str.28, i32 noundef 286, ptr noundef nonnull @.str.1) #17
  br label %521

521:                                              ; preds = %520, %514
  %522 = load ptr, ptr @cfun, align 8, !tbaa !88
  %523 = getelementptr inbounds %struct.function, ptr %522, i64 0, i32 1
  %524 = load ptr, ptr %523, align 8, !tbaa !218
  %525 = getelementptr inbounds %struct.control_flow_graph, ptr %524, i64 0, i32 1
  %526 = load ptr, ptr %525, align 8, !tbaa !223
  %527 = icmp eq ptr %526, %497
  br i1 %527, label %528, label %529, !prof !381

528:                                              ; preds = %521
  tail call void @fancy_abort(ptr noundef nonnull @.str.28, i32 noundef 287, ptr noundef nonnull @.str.1) #17
  br label %529

529:                                              ; preds = %528, %521
  %530 = load ptr, ptr %12, align 8, !tbaa !329
  %531 = load i32, ptr %505, align 8, !tbaa !331
  %532 = sext i32 %531 to i64
  %533 = getelementptr inbounds ptr, ptr %530, i64 %532
  %534 = load ptr, ptr %533, align 8, !tbaa !88
  %535 = tail call zeroext i8 @bitmap_ior_into(ptr noundef %534, ptr noundef %214) #17
  %536 = load i32, ptr %505, align 8, !tbaa !331
  %537 = lshr i32 %536, 6
  %538 = zext nneg i32 %537 to i64
  %539 = getelementptr inbounds %struct.simple_bitmap_def, ptr %213, i64 0, i32 3, i64 %538
  %540 = load i64, ptr %539, align 8, !tbaa !155
  %541 = and i32 %536, 63
  %542 = zext nneg i32 %541 to i64
  %543 = shl nuw i64 1, %542
  %544 = and i64 %543, %540
  %545 = icmp ne i64 %544, 0
  %546 = icmp ne i8 %535, 0
  %547 = select i1 %545, i1 %546, i1 false, !prof !382
  br i1 %547, label %548, label %562, !prof !383

548:                                              ; preds = %529
  %549 = load ptr, ptr %213, align 8, !tbaa !375
  %550 = icmp eq ptr %549, null
  br i1 %550, label %555, label %551, !prof !384

551:                                              ; preds = %548
  %552 = getelementptr inbounds i8, ptr %549, i64 %538
  %553 = load i8, ptr %552, align 1, !tbaa !99
  %554 = add i8 %553, -1
  store i8 %554, ptr %552, align 1, !tbaa !99
  br label %555

555:                                              ; preds = %551, %548
  %556 = xor i64 %543, -1
  %557 = load i64, ptr %539, align 8, !tbaa !155
  %558 = and i64 %557, %556
  store i64 %558, ptr %539, align 8, !tbaa !155
  %559 = load i32, ptr %505, align 8, !tbaa !331
  %560 = load ptr, ptr %63, align 8, !tbaa !359
  %561 = getelementptr inbounds i32, ptr %560, i64 1
  store ptr %561, ptr %63, align 8, !tbaa !359
  store i32 %559, ptr %560, align 4, !tbaa !103
  br label %562

562:                                              ; preds = %555, %529, %496
  %563 = load ptr, ptr %414, align 8, !tbaa !88
  %564 = icmp eq ptr %563, null
  br i1 %564, label %567, label %565, !prof !385

565:                                              ; preds = %562
  %566 = load i32, ptr %563, align 8, !tbaa !261
  br label %567

567:                                              ; preds = %565, %562
  %568 = phi i32 [ %566, %565 ], [ 0, %562 ]
  %569 = icmp ult i32 %480, %568
  br i1 %569, label %571, label %570, !prof !386

570:                                              ; preds = %567
  tail call void @fancy_abort(ptr noundef nonnull @.str.26, i32 noundef 738, ptr noundef nonnull @.str.1) #17
  br label %571

571:                                              ; preds = %570, %567
  %572 = add i32 %480, 1
  br label %479, !llvm.loop !387

573:                                              ; preds = %399, %235
  tail call void @bitmap_obstack_free(ptr noundef %214) #17
  %574 = load ptr, ptr %213, align 8, !tbaa !375
  tail call void @free(ptr noundef %574)
  tail call void @free(ptr noundef %213)
  tail call void @calculate_live_on_exit(ptr noundef nonnull %2)
  ret ptr %2
}

; Function Attrs: cold nounwind uwtable
define dso_local void @dump_var_map(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #12 !prof !87 {
  %3 = tail call i64 @fwrite(ptr nonnull @.str.3, i64 17, i64 1, ptr %0)
  %4 = getelementptr inbounds %struct._var_map, ptr %1, i64 0, i32 3
  %5 = load i32, ptr %4, align 8, !tbaa !110
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %101, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct._var_map, ptr %1, i64 0, i32 2
  %9 = getelementptr inbounds %struct._var_map, ptr %1, i64 0, i32 1
  br label %10

10:                                               ; preds = %7, %96
  %11 = phi i64 [ 0, %7 ], [ %97, %96 ]
  %12 = load ptr, ptr %8, align 8, !tbaa !118
  %13 = icmp eq ptr %12, null
  %14 = trunc i64 %11 to i32
  br i1 %13, label %18, label %15

15:                                               ; preds = %10
  %16 = getelementptr inbounds i32, ptr %12, i64 %11
  %17 = load i32, ptr %16, align 4, !tbaa !103
  br label %18

18:                                               ; preds = %10, %15
  %19 = phi i32 [ %17, %15 ], [ %14, %10 ]
  %20 = load ptr, ptr @cfun, align 8, !tbaa !88
  %21 = getelementptr inbounds %struct.function, ptr %20, i64 0, i32 3
  %22 = load ptr, ptr %21, align 8, !tbaa !131
  %23 = getelementptr inbounds %struct.gimple_df, ptr %22, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !133
  %25 = zext i32 %19 to i64
  %26 = getelementptr inbounds %struct.VEC_tree_base, ptr %24, i64 0, i32 2, i64 %25
  %27 = load ptr, ptr %26, align 8, !tbaa !88
  %28 = icmp eq ptr %27, null
  br i1 %28, label %96, label %29

29:                                               ; preds = %18
  %30 = trunc i64 %11 to i32
  br label %31

31:                                               ; preds = %29, %89
  %32 = phi i64 [ %91, %89 ], [ 1, %29 ]
  %33 = phi i32 [ %90, %89 ], [ 0, %29 ]
  %34 = load ptr, ptr @cfun, align 8, !tbaa !88
  %35 = getelementptr inbounds %struct.function, ptr %34, i64 0, i32 3
  %36 = load ptr, ptr %35, align 8, !tbaa !131
  %37 = getelementptr inbounds %struct.gimple_df, ptr %36, i64 0, i32 2
  %38 = load ptr, ptr %37, align 8, !tbaa !133
  %39 = icmp eq ptr %38, null
  br i1 %39, label %42, label %40

40:                                               ; preds = %31
  %41 = load i32, ptr %38, align 8, !tbaa !171
  br label %42

42:                                               ; preds = %31, %40
  %43 = phi i32 [ %41, %40 ], [ 0, %31 ]
  %44 = zext i32 %43 to i64
  %45 = icmp ult i64 %32, %44
  br i1 %45, label %46, label %92

46:                                               ; preds = %42
  %47 = load ptr, ptr %1, align 8, !tbaa !108
  %48 = getelementptr inbounds %struct.partition_def, ptr %47, i64 0, i32 1, i64 %32
  %49 = load i32, ptr %48, align 8, !tbaa !122
  %50 = load ptr, ptr %9, align 8, !tbaa !116
  %51 = icmp eq ptr %50, null
  br i1 %51, label %56, label %52

52:                                               ; preds = %46
  %53 = sext i32 %49 to i64
  %54 = getelementptr inbounds i32, ptr %50, i64 %53
  %55 = load i32, ptr %54, align 4, !tbaa !103
  br label %56

56:                                               ; preds = %52, %46
  %57 = phi i32 [ %55, %52 ], [ %49, %46 ]
  %58 = zext i32 %57 to i64
  %59 = icmp eq i64 %11, %58
  br i1 %59, label %60, label %89

60:                                               ; preds = %56
  %61 = add nsw i32 %33, 1
  %62 = icmp eq i32 %33, 0
  br i1 %62, label %63, label %86

63:                                               ; preds = %60
  %64 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.4, i32 noundef %30)
  %65 = load ptr, ptr %8, align 8, !tbaa !118
  %66 = icmp eq ptr %65, null
  br i1 %66, label %71, label %67

67:                                               ; preds = %63
  %68 = sext i32 %57 to i64
  %69 = getelementptr inbounds i32, ptr %65, i64 %68
  %70 = load i32, ptr %69, align 4, !tbaa !103
  br label %71

71:                                               ; preds = %63, %67
  %72 = phi i32 [ %70, %67 ], [ %57, %63 ]
  %73 = load ptr, ptr %1, align 8, !tbaa !108
  %74 = sext i32 %72 to i64
  %75 = getelementptr inbounds %struct.partition_def, ptr %73, i64 0, i32 1, i64 %74
  %76 = load i32, ptr %75, align 8, !tbaa !122
  %77 = load ptr, ptr @cfun, align 8, !tbaa !88
  %78 = getelementptr inbounds %struct.function, ptr %77, i64 0, i32 3
  %79 = load ptr, ptr %78, align 8, !tbaa !131
  %80 = getelementptr inbounds %struct.gimple_df, ptr %79, i64 0, i32 2
  %81 = load ptr, ptr %80, align 8, !tbaa !133
  %82 = zext i32 %76 to i64
  %83 = getelementptr inbounds %struct.VEC_tree_base, ptr %81, i64 0, i32 2, i64 %82
  %84 = load ptr, ptr %83, align 8, !tbaa !88
  tail call void @print_generic_expr(ptr noundef %0, ptr noundef %84, i32 noundef 2) #17
  %85 = tail call i64 @fwrite(ptr nonnull @.str.5, i64 3, i64 1, ptr %0)
  br label %86

86:                                               ; preds = %71, %60
  %87 = trunc i64 %32 to i32
  %88 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.6, i32 noundef %87)
  br label %89

89:                                               ; preds = %56, %86
  %90 = phi i32 [ %61, %86 ], [ %33, %56 ]
  %91 = add nuw nsw i64 %32, 1
  br label %31, !llvm.loop !391

92:                                               ; preds = %42
  %93 = icmp eq i32 %33, 0
  br i1 %93, label %96, label %94

94:                                               ; preds = %92
  %95 = tail call i64 @fwrite(ptr nonnull @.str.7, i64 2, i64 1, ptr %0)
  br label %96

96:                                               ; preds = %92, %94, %18
  %97 = add nuw nsw i64 %11, 1
  %98 = load i32, ptr %4, align 8, !tbaa !110
  %99 = zext i32 %98 to i64
  %100 = icmp ult i64 %97, %99
  br i1 %100, label %10, label %101, !llvm.loop !392

101:                                              ; preds = %96, %2
  %102 = tail call i32 @fputc(i32 10, ptr %0)
  ret void
}

declare void @print_generic_expr(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @dump_live_info(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #12 !prof !87 {
  %4 = load ptr, ptr %1, align 8, !tbaa !339
  %5 = and i32 %2, 1
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %139, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.tree_live_info_d, ptr %1, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !329
  %10 = icmp eq ptr %9, null
  br i1 %10, label %139, label %11

11:                                               ; preds = %7
  %12 = load ptr, ptr @cfun, align 8, !tbaa !88
  %13 = getelementptr inbounds %struct.function, ptr %12, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !218
  %15 = load ptr, ptr %14, align 8, !tbaa !219
  %16 = getelementptr inbounds %struct.basic_block_def, ptr %15, i64 0, i32 6
  %17 = load ptr, ptr %16, align 8, !tbaa !221
  %18 = getelementptr inbounds %struct.control_flow_graph, ptr %14, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !223
  %20 = icmp eq ptr %17, %19
  br i1 %20, label %139, label %21

21:                                               ; preds = %11
  %22 = getelementptr inbounds %struct._var_map, ptr %4, i64 0, i32 2
  br label %23

23:                                               ; preds = %21, %129
  %24 = phi ptr [ %17, %21 ], [ %132, %129 ]
  %25 = getelementptr inbounds %struct.basic_block_def, ptr %24, i64 0, i32 9
  %26 = load i32, ptr %25, align 8, !tbaa !331
  %27 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.9, i32 noundef %26)
  %28 = load ptr, ptr %8, align 8, !tbaa !329
  %29 = load i32, ptr %25, align 8, !tbaa !331
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds ptr, ptr %28, i64 %30
  %32 = load ptr, ptr %31, align 8, !tbaa !88
  %33 = load ptr, ptr %32, align 8, !tbaa !151
  %34 = icmp eq ptr %33, null
  %35 = select i1 %34, ptr @bitmap_zero_bits, ptr %33
  %36 = getelementptr inbounds %struct.bitmap_element_def, ptr %35, i64 0, i32 2
  %37 = load i32, ptr %36, align 8, !tbaa !153
  %38 = shl i32 %37, 7
  %39 = getelementptr inbounds %struct.bitmap_element_def, ptr %35, i64 0, i32 3
  %40 = load i64, ptr %39, align 8, !tbaa !155
  %41 = icmp eq i64 %40, 0
  %42 = zext i1 %41 to i32
  %43 = or disjoint i32 %38, %42
  br label %44

44:                                               ; preds = %112, %23
  %45 = phi i64 [ %40, %23 ], [ %127, %112 ]
  %46 = phi i32 [ %43, %23 ], [ %128, %112 ]
  %47 = phi i32 [ 0, %23 ], [ %102, %112 ]
  %48 = phi ptr [ %35, %23 ], [ %103, %112 ]
  %49 = icmp eq i64 %45, 0
  br i1 %49, label %64, label %50

50:                                               ; preds = %78, %44
  %51 = phi i64 [ %45, %44 ], [ %83, %78 ]
  %52 = phi i32 [ %46, %44 ], [ %80, %78 ]
  %53 = phi i32 [ %47, %44 ], [ %79, %78 ]
  %54 = phi ptr [ %48, %44 ], [ %71, %78 ]
  %55 = and i64 %51, 1
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %57, label %99

57:                                               ; preds = %50, %57
  %58 = phi i32 [ %61, %57 ], [ %52, %50 ]
  %59 = phi i64 [ %60, %57 ], [ %51, %50 ]
  %60 = lshr exact i64 %59, 1
  %61 = add i32 %58, 1
  %62 = and i64 %59, 2
  %63 = icmp eq i64 %62, 0
  br i1 %63, label %57, label %99, !llvm.loop !159

64:                                               ; preds = %44
  %65 = add i32 %46, 63
  %66 = and i32 %65, -64
  %67 = add i32 %47, 1
  br label %68

68:                                               ; preds = %95, %64
  %69 = phi i64 [ %45, %64 ], [ %90, %95 ]
  %70 = phi i32 [ %66, %64 ], [ %98, %95 ]
  %71 = phi ptr [ %48, %64 ], [ %93, %95 ]
  %72 = phi i32 [ %67, %64 ], [ 0, %95 ]
  %73 = icmp eq i32 %72, 2
  br i1 %73, label %89, label %74

74:                                               ; preds = %68
  %75 = add i32 %70, 128
  %76 = shl i32 %72, 6
  %77 = sub i32 %75, %76
  br label %78

78:                                               ; preds = %74, %85
  %79 = phi i32 [ %87, %85 ], [ %72, %74 ]
  %80 = phi i32 [ %86, %85 ], [ %70, %74 ]
  %81 = zext i32 %79 to i64
  %82 = getelementptr inbounds %struct.bitmap_element_def, ptr %71, i64 0, i32 3, i64 %81
  %83 = load i64, ptr %82, align 8, !tbaa !155
  %84 = icmp eq i64 %83, 0
  br i1 %84, label %85, label %50

85:                                               ; preds = %78
  %86 = add i32 %80, 64
  %87 = add i32 %79, 1
  %88 = icmp eq i32 %87, 2
  br i1 %88, label %89, label %78, !llvm.loop !163

89:                                               ; preds = %85, %68
  %90 = phi i64 [ %69, %68 ], [ %83, %85 ]
  %91 = phi i32 [ %70, %68 ], [ %77, %85 ]
  %92 = phi i32 [ %72, %68 ], [ 2, %85 ]
  %93 = load ptr, ptr %71, align 8, !tbaa !164
  %94 = icmp eq ptr %93, null
  br i1 %94, label %99, label %95

95:                                               ; preds = %89
  %96 = getelementptr inbounds %struct.bitmap_element_def, ptr %93, i64 0, i32 2
  %97 = load i32, ptr %96, align 8, !tbaa !153
  %98 = shl i32 %97, 7
  br label %68, !llvm.loop !166

99:                                               ; preds = %89, %57, %50
  %100 = phi i64 [ %51, %50 ], [ %60, %57 ], [ %90, %89 ]
  %101 = phi i32 [ %52, %50 ], [ %61, %57 ], [ %91, %89 ]
  %102 = phi i32 [ %53, %50 ], [ %53, %57 ], [ %92, %89 ]
  %103 = phi ptr [ %54, %50 ], [ %54, %57 ], [ %93, %89 ]
  %104 = phi i1 [ false, %50 ], [ false, %57 ], [ true, %89 ]
  br i1 %104, label %129, label %105

105:                                              ; preds = %99
  %106 = load ptr, ptr %22, align 8, !tbaa !118
  %107 = icmp eq ptr %106, null
  br i1 %107, label %112, label %108

108:                                              ; preds = %105
  %109 = sext i32 %101 to i64
  %110 = getelementptr inbounds i32, ptr %106, i64 %109
  %111 = load i32, ptr %110, align 4, !tbaa !103
  br label %112

112:                                              ; preds = %105, %108
  %113 = phi i32 [ %111, %108 ], [ %101, %105 ]
  %114 = load ptr, ptr %4, align 8, !tbaa !108
  %115 = sext i32 %113 to i64
  %116 = getelementptr inbounds %struct.partition_def, ptr %114, i64 0, i32 1, i64 %115
  %117 = load i32, ptr %116, align 8, !tbaa !122
  %118 = load ptr, ptr @cfun, align 8, !tbaa !88
  %119 = getelementptr inbounds %struct.function, ptr %118, i64 0, i32 3
  %120 = load ptr, ptr %119, align 8, !tbaa !131
  %121 = getelementptr inbounds %struct.gimple_df, ptr %120, i64 0, i32 2
  %122 = load ptr, ptr %121, align 8, !tbaa !133
  %123 = zext i32 %117 to i64
  %124 = getelementptr inbounds %struct.VEC_tree_base, ptr %122, i64 0, i32 2, i64 %123
  %125 = load ptr, ptr %124, align 8, !tbaa !88
  tail call void @print_generic_expr(ptr noundef %0, ptr noundef %125, i32 noundef 2) #17
  %126 = tail call i64 @fwrite(ptr nonnull @.str.10, i64 2, i64 1, ptr %0)
  %127 = lshr i64 %100, 1
  %128 = add i32 %101, 1
  br label %44, !llvm.loop !393

129:                                              ; preds = %99
  %130 = tail call i32 @fputc(i32 10, ptr %0)
  %131 = getelementptr inbounds %struct.basic_block_def, ptr %24, i64 0, i32 6
  %132 = load ptr, ptr %131, align 8, !tbaa !221
  %133 = load ptr, ptr @cfun, align 8, !tbaa !88
  %134 = getelementptr inbounds %struct.function, ptr %133, i64 0, i32 1
  %135 = load ptr, ptr %134, align 8, !tbaa !218
  %136 = getelementptr inbounds %struct.control_flow_graph, ptr %135, i64 0, i32 1
  %137 = load ptr, ptr %136, align 8, !tbaa !223
  %138 = icmp eq ptr %132, %137
  br i1 %138, label %139, label %23, !llvm.loop !394

139:                                              ; preds = %129, %11, %7, %3
  %140 = and i32 %2, 2
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %274, label %142

142:                                              ; preds = %139
  %143 = getelementptr inbounds %struct.tree_live_info_d, ptr %1, i64 0, i32 6
  %144 = load ptr, ptr %143, align 8, !tbaa !326
  %145 = icmp eq ptr %144, null
  br i1 %145, label %274, label %146

146:                                              ; preds = %142
  %147 = load ptr, ptr @cfun, align 8, !tbaa !88
  %148 = getelementptr inbounds %struct.function, ptr %147, i64 0, i32 1
  %149 = load ptr, ptr %148, align 8, !tbaa !218
  %150 = load ptr, ptr %149, align 8, !tbaa !219
  %151 = getelementptr inbounds %struct.basic_block_def, ptr %150, i64 0, i32 6
  %152 = load ptr, ptr %151, align 8, !tbaa !221
  %153 = getelementptr inbounds %struct.control_flow_graph, ptr %149, i64 0, i32 1
  %154 = load ptr, ptr %153, align 8, !tbaa !223
  %155 = icmp eq ptr %152, %154
  br i1 %155, label %274, label %156

156:                                              ; preds = %146
  %157 = getelementptr inbounds %struct._var_map, ptr %4, i64 0, i32 2
  br label %158

158:                                              ; preds = %156, %264
  %159 = phi ptr [ %152, %156 ], [ %267, %264 ]
  %160 = getelementptr inbounds %struct.basic_block_def, ptr %159, i64 0, i32 9
  %161 = load i32, ptr %160, align 8, !tbaa !331
  %162 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.11, i32 noundef %161)
  %163 = load ptr, ptr %143, align 8, !tbaa !326
  %164 = load i32, ptr %160, align 8, !tbaa !331
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds ptr, ptr %163, i64 %165
  %167 = load ptr, ptr %166, align 8, !tbaa !88
  %168 = load ptr, ptr %167, align 8, !tbaa !151
  %169 = icmp eq ptr %168, null
  %170 = select i1 %169, ptr @bitmap_zero_bits, ptr %168
  %171 = getelementptr inbounds %struct.bitmap_element_def, ptr %170, i64 0, i32 2
  %172 = load i32, ptr %171, align 8, !tbaa !153
  %173 = shl i32 %172, 7
  %174 = getelementptr inbounds %struct.bitmap_element_def, ptr %170, i64 0, i32 3
  %175 = load i64, ptr %174, align 8, !tbaa !155
  %176 = icmp eq i64 %175, 0
  %177 = zext i1 %176 to i32
  %178 = or disjoint i32 %173, %177
  br label %179

179:                                              ; preds = %247, %158
  %180 = phi i64 [ %175, %158 ], [ %262, %247 ]
  %181 = phi i32 [ %178, %158 ], [ %263, %247 ]
  %182 = phi i32 [ 0, %158 ], [ %237, %247 ]
  %183 = phi ptr [ %170, %158 ], [ %238, %247 ]
  %184 = icmp eq i64 %180, 0
  br i1 %184, label %199, label %185

185:                                              ; preds = %213, %179
  %186 = phi i64 [ %180, %179 ], [ %218, %213 ]
  %187 = phi i32 [ %181, %179 ], [ %215, %213 ]
  %188 = phi i32 [ %182, %179 ], [ %214, %213 ]
  %189 = phi ptr [ %183, %179 ], [ %206, %213 ]
  %190 = and i64 %186, 1
  %191 = icmp eq i64 %190, 0
  br i1 %191, label %192, label %234

192:                                              ; preds = %185, %192
  %193 = phi i32 [ %196, %192 ], [ %187, %185 ]
  %194 = phi i64 [ %195, %192 ], [ %186, %185 ]
  %195 = lshr exact i64 %194, 1
  %196 = add i32 %193, 1
  %197 = and i64 %194, 2
  %198 = icmp eq i64 %197, 0
  br i1 %198, label %192, label %234, !llvm.loop !159

199:                                              ; preds = %179
  %200 = add i32 %181, 63
  %201 = and i32 %200, -64
  %202 = add i32 %182, 1
  br label %203

203:                                              ; preds = %230, %199
  %204 = phi i64 [ %180, %199 ], [ %225, %230 ]
  %205 = phi i32 [ %201, %199 ], [ %233, %230 ]
  %206 = phi ptr [ %183, %199 ], [ %228, %230 ]
  %207 = phi i32 [ %202, %199 ], [ 0, %230 ]
  %208 = icmp eq i32 %207, 2
  br i1 %208, label %224, label %209

209:                                              ; preds = %203
  %210 = add i32 %205, 128
  %211 = shl i32 %207, 6
  %212 = sub i32 %210, %211
  br label %213

213:                                              ; preds = %209, %220
  %214 = phi i32 [ %222, %220 ], [ %207, %209 ]
  %215 = phi i32 [ %221, %220 ], [ %205, %209 ]
  %216 = zext i32 %214 to i64
  %217 = getelementptr inbounds %struct.bitmap_element_def, ptr %206, i64 0, i32 3, i64 %216
  %218 = load i64, ptr %217, align 8, !tbaa !155
  %219 = icmp eq i64 %218, 0
  br i1 %219, label %220, label %185

220:                                              ; preds = %213
  %221 = add i32 %215, 64
  %222 = add i32 %214, 1
  %223 = icmp eq i32 %222, 2
  br i1 %223, label %224, label %213, !llvm.loop !163

224:                                              ; preds = %220, %203
  %225 = phi i64 [ %204, %203 ], [ %218, %220 ]
  %226 = phi i32 [ %205, %203 ], [ %212, %220 ]
  %227 = phi i32 [ %207, %203 ], [ 2, %220 ]
  %228 = load ptr, ptr %206, align 8, !tbaa !164
  %229 = icmp eq ptr %228, null
  br i1 %229, label %234, label %230

230:                                              ; preds = %224
  %231 = getelementptr inbounds %struct.bitmap_element_def, ptr %228, i64 0, i32 2
  %232 = load i32, ptr %231, align 8, !tbaa !153
  %233 = shl i32 %232, 7
  br label %203, !llvm.loop !166

234:                                              ; preds = %224, %192, %185
  %235 = phi i64 [ %186, %185 ], [ %195, %192 ], [ %225, %224 ]
  %236 = phi i32 [ %187, %185 ], [ %196, %192 ], [ %226, %224 ]
  %237 = phi i32 [ %188, %185 ], [ %188, %192 ], [ %227, %224 ]
  %238 = phi ptr [ %189, %185 ], [ %189, %192 ], [ %228, %224 ]
  %239 = phi i1 [ false, %185 ], [ false, %192 ], [ true, %224 ]
  br i1 %239, label %264, label %240

240:                                              ; preds = %234
  %241 = load ptr, ptr %157, align 8, !tbaa !118
  %242 = icmp eq ptr %241, null
  br i1 %242, label %247, label %243

243:                                              ; preds = %240
  %244 = sext i32 %236 to i64
  %245 = getelementptr inbounds i32, ptr %241, i64 %244
  %246 = load i32, ptr %245, align 4, !tbaa !103
  br label %247

247:                                              ; preds = %240, %243
  %248 = phi i32 [ %246, %243 ], [ %236, %240 ]
  %249 = load ptr, ptr %4, align 8, !tbaa !108
  %250 = sext i32 %248 to i64
  %251 = getelementptr inbounds %struct.partition_def, ptr %249, i64 0, i32 1, i64 %250
  %252 = load i32, ptr %251, align 8, !tbaa !122
  %253 = load ptr, ptr @cfun, align 8, !tbaa !88
  %254 = getelementptr inbounds %struct.function, ptr %253, i64 0, i32 3
  %255 = load ptr, ptr %254, align 8, !tbaa !131
  %256 = getelementptr inbounds %struct.gimple_df, ptr %255, i64 0, i32 2
  %257 = load ptr, ptr %256, align 8, !tbaa !133
  %258 = zext i32 %252 to i64
  %259 = getelementptr inbounds %struct.VEC_tree_base, ptr %257, i64 0, i32 2, i64 %258
  %260 = load ptr, ptr %259, align 8, !tbaa !88
  tail call void @print_generic_expr(ptr noundef %0, ptr noundef %260, i32 noundef 2) #17
  %261 = tail call i64 @fwrite(ptr nonnull @.str.10, i64 2, i64 1, ptr %0)
  %262 = lshr i64 %235, 1
  %263 = add i32 %236, 1
  br label %179, !llvm.loop !395

264:                                              ; preds = %234
  %265 = tail call i32 @fputc(i32 10, ptr %0)
  %266 = getelementptr inbounds %struct.basic_block_def, ptr %159, i64 0, i32 6
  %267 = load ptr, ptr %266, align 8, !tbaa !221
  %268 = load ptr, ptr @cfun, align 8, !tbaa !88
  %269 = getelementptr inbounds %struct.function, ptr %268, i64 0, i32 1
  %270 = load ptr, ptr %269, align 8, !tbaa !218
  %271 = getelementptr inbounds %struct.control_flow_graph, ptr %270, i64 0, i32 1
  %272 = load ptr, ptr %271, align 8, !tbaa !223
  %273 = icmp eq ptr %267, %272
  br i1 %273, label %274, label %158, !llvm.loop !396

274:                                              ; preds = %264, %146, %142, %139
  ret void
}

declare zeroext i8 @is_gimple_reg(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @has_zero_uses_1(ptr noundef) local_unnamed_addr #3

declare i64 @bitmap_count_bits(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #13

declare ptr @vec_heap_p_reserve_exact(ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @vec_heap_p_reserve(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @expand_location(ptr dead_on_unwind writable sret(%struct.expanded_location) align 8, i32 noundef) local_unnamed_addr #3

declare ptr @block_ultimate_origin(ptr noundef) local_unnamed_addr #3

declare void @print_generic_decl(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare i64 @htab_size(ptr noundef) local_unnamed_addr #3

declare ptr @walk_tree_1(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define internal noalias noundef ptr @mark_all_vars_used_1(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr noundef %2) #14 !prof !397 !PGOFuncName !398 {
  %4 = load ptr, ptr %0, align 8, !tbaa !88
  %5 = load i64, ptr %4, align 8
  %6 = and i64 %5, 65535
  %7 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %6
  %8 = load i32, ptr %7, align 4, !tbaa !103
  %9 = icmp eq i64 %6, 141
  br i1 %9, label %10, label %13, !prof !399

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.tree_ssa_name, ptr %4, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !99
  br label %13

13:                                               ; preds = %10, %3
  %14 = phi ptr [ %12, %10 ], [ %4, %3 ]
  %15 = add i32 %8, -4
  %16 = icmp ult i32 %15, 7
  br i1 %16, label %17, label %24, !prof !400

17:                                               ; preds = %13
  %18 = tail call ptr @tree_block(ptr noundef %14) #17
  %19 = load ptr, ptr %18, align 8, !tbaa !88
  %20 = icmp eq ptr %19, null
  br i1 %20, label %24, label %21, !prof !401

21:                                               ; preds = %17
  %22 = load i64, ptr %19, align 8
  %23 = or i64 %22, 16777216
  store i64 %23, ptr %19, align 8
  br label %24

24:                                               ; preds = %21, %17, %13
  %25 = load i64, ptr %14, align 8
  %26 = trunc i64 %25 to i16
  switch i16 %26, label %71 [
    i16 152, label %27
    i16 32, label %34
  ], !prof !402

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct.tree_exp, ptr %14, i64 0, i32 3
  %29 = tail call ptr @walk_tree_1(ptr noundef nonnull %28, ptr noundef nonnull @mark_all_vars_used_1, ptr noundef %2, ptr noundef null, ptr noundef null) #17
  %30 = getelementptr inbounds %struct.tree_exp, ptr %14, i64 1
  %31 = tail call ptr @walk_tree_1(ptr noundef nonnull %30, ptr noundef nonnull @mark_all_vars_used_1, ptr noundef %2, ptr noundef null, ptr noundef null) #17
  %32 = getelementptr inbounds %struct.tree_exp, ptr %14, i64 1, i32 0, i32 1
  %33 = tail call ptr @walk_tree_1(ptr noundef nonnull %32, ptr noundef nonnull @mark_all_vars_used_1, ptr noundef %2, ptr noundef null, ptr noundef null) #17
  br label %78

34:                                               ; preds = %24
  %35 = icmp eq ptr %2, null
  br i1 %35, label %46, label %36, !prof !403

36:                                               ; preds = %34
  %37 = getelementptr inbounds %struct.tree_decl_minimal, ptr %14, i64 0, i32 2
  %38 = load i32, ptr %37, align 4, !tbaa !99
  %39 = tail call i32 @bitmap_bit_p(ptr noundef nonnull %2, i32 noundef %38) #17
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %46, label %41

41:                                               ; preds = %36
  %42 = load i32, ptr %37, align 4, !tbaa !99
  %43 = tail call zeroext i8 @bitmap_clear_bit(ptr noundef nonnull %2, i32 noundef %42) #17
  %44 = getelementptr inbounds %struct.tree_decl_common, ptr %14, i64 0, i32 5
  %45 = tail call ptr @walk_tree_1(ptr noundef nonnull %44, ptr noundef nonnull @mark_all_vars_used_1, ptr noundef nonnull %2, ptr noundef null, ptr noundef null) #17
  br label %46

46:                                               ; preds = %41, %36, %34
  %47 = load i64, ptr %14, align 8
  %48 = trunc i64 %47 to i16
  switch i16 %48, label %53 [
    i16 32, label %49
    i16 34, label %51
  ], !prof !404

49:                                               ; preds = %46
  %50 = getelementptr inbounds %struct.tree_var_decl, ptr %14, i64 0, i32 1
  br label %58

51:                                               ; preds = %46
  %52 = getelementptr inbounds %struct.tree_parm_decl, ptr %14, i64 0, i32 2
  br label %58

53:                                               ; preds = %46
  %54 = and i64 %47, 65535
  %55 = icmp eq i64 %54, 36
  %56 = getelementptr inbounds %struct.tree_result_decl, ptr %14, i64 0, i32 1
  %57 = select i1 %55, ptr %56, ptr null
  br label %58

58:                                               ; preds = %53, %51, %49
  %59 = phi ptr [ %50, %49 ], [ %52, %51 ], [ %57, %53 ]
  %60 = icmp eq ptr %59, null
  br i1 %60, label %61, label %62, !prof !405

61:                                               ; preds = %58
  tail call void @fancy_abort(ptr noundef nonnull @.str.24, i32 noundef 144, ptr noundef nonnull @.str.1) #17
  br label %62

62:                                               ; preds = %61, %58
  %63 = load ptr, ptr %59, align 8, !tbaa !88
  %64 = icmp eq ptr %63, null
  br i1 %64, label %65, label %67, !prof !405

65:                                               ; preds = %62
  %66 = tail call ptr @create_var_ann(ptr noundef nonnull %14) #17
  br label %67

67:                                               ; preds = %62, %65
  %68 = phi ptr [ %66, %65 ], [ %63, %62 ]
  %69 = load i8, ptr %68, align 8
  %70 = or i8 %69, 2
  store i8 %70, ptr %68, align 8
  br label %71

71:                                               ; preds = %24, %67
  %72 = load i64, ptr %14, align 8
  %73 = and i64 %72, 65535
  %74 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %73
  %75 = load i32, ptr %74, align 4, !tbaa !103
  %76 = and i32 %75, -2
  %77 = icmp eq i32 %76, 2
  br i1 %77, label %78, label %79, !prof !406

78:                                               ; preds = %71, %27
  store i32 0, ptr %1, align 4, !tbaa !103
  br label %79

79:                                               ; preds = %78, %71
  ret ptr null
}

declare ptr @tree_block(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @bitmap_clear_bit(ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @create_var_ann(ptr noundef) local_unnamed_addr #3

declare ptr @lookup_attribute(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @sbitmap_alloc(i32 noundef) local_unnamed_addr #3

declare void @sbitmap_zero(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @bitmap_and_compl(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #15

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #16

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
attributes #10 = { mustprogress nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #14 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree nounwind }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #17 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!86}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85}
!35 = !{ptr @init_var_map, ptr @xmalloc, i64 192}
!36 = !{ptr @init_var_map, ptr @partition_new, i64 192}
!37 = !{ptr @delete_var_map, ptr @free, i64 332}
!38 = !{ptr @delete_var_map, ptr @partition_delete, i64 192}
!39 = !{ptr @var_union, ptr @partition_union, i64 4855}
!40 = !{ptr @partition_view_normal, ptr @partition_view_init, i64 38}
!41 = !{ptr @partition_view_normal, ptr @partition_view_fini, i64 38}
!42 = !{ptr @partition_view_normal, ptr @free, i64 12}
!43 = !{ptr @partition_view_init, ptr @bitmap_obstack_alloc_stat, i64 76}
!44 = !{ptr @partition_view_init, ptr @free, i64 76}
!45 = !{ptr @partition_view_init, ptr @is_gimple_reg, i64 528071}
!46 = !{ptr @partition_view_init, ptr @bitmap_set_bit, i64 390045}
!47 = !{ptr @partition_view_fini, ptr @bitmap_count_bits, i64 76}
!48 = !{ptr @partition_view_fini, ptr @xmalloc, i64 152}
!49 = !{ptr @partition_view_fini, ptr @bitmap_obstack_free, i64 76}
!50 = !{ptr @var_map_base_init, ptr @vec_heap_p_reserve_exact, i64 38}
!51 = !{ptr @var_map_base_init, ptr @xmalloc, i64 38}
!52 = !{ptr @partition_view_bitmap, ptr @bitmap_obstack_alloc_stat, i64 38}
!53 = !{ptr @partition_view_bitmap, ptr @partition_view_init, i64 38}
!54 = !{ptr @partition_view_bitmap, ptr @bitmap_bit_p, i64 6742}
!55 = !{ptr @partition_view_bitmap, ptr @bitmap_set_bit, i64 6742}
!56 = !{ptr @partition_view_bitmap, ptr @partition_view_fini, i64 38}
!57 = !{ptr @partition_view_bitmap, ptr @bitmap_obstack_free, i64 38}
!58 = !{ptr @partition_view_bitmap, ptr @var_map_base_init, i64 38}
!59 = !{ptr @remove_unused_locals, ptr @mark_scope_block_unused, i64 524}
!60 = !{ptr @remove_unused_locals, ptr @htab_size, i64 1048}
!61 = !{ptr @remove_unused_locals, ptr @walk_tree_1, i64 23836843}
!62 = !{ptr @remove_unused_locals, ptr @gsi_start_phis, i64 2977998}
!63 = !{ptr @remove_unused_locals, ptr @is_gimple_reg, i64 34470}
!64 = !{ptr @remove_unused_locals, ptr @remove_referenced_var, i64 9214}
!65 = !{ptr @remove_unused_locals, ptr @remove_unused_scope_block_p, i64 524}
!66 = !{ptr @mark_scope_block_unused, ptr @mark_scope_block_unused, i64 639}
!67 = !{ptr @remove_unused_scope_block_p, ptr @remove_unused_scope_block_p, i64 639}
!68 = !{ptr @remove_unused_scope_block_p, ptr @lookup_attribute, i64 46}
!69 = !{ptr @delete_tree_live_info, ptr @bitmap_obstack_free, i64 308310}
!70 = !{ptr @delete_tree_live_info, ptr @free, i64 152}
!71 = !{ptr @calculate_live_on_exit, ptr @bitmap_clear, i64 154060}
!72 = !{ptr @calculate_live_on_exit, ptr @gsi_start_phis, i64 154060}
!73 = !{ptr @calculate_live_on_exit, ptr @bitmap_set_bit, i64 6020}
!74 = !{ptr @calculate_live_on_exit, ptr @bitmap_ior_into, i64 297032}
!75 = !{ptr @calculate_live_ranges, ptr @xmalloc, i64 152}
!76 = !{ptr @calculate_live_ranges, ptr @bitmap_obstack_alloc_stat, i64 308348}
!77 = !{ptr @calculate_live_ranges, ptr @bitmap_set_bit, i64 68750}
!78 = !{ptr @calculate_live_ranges, ptr @sbitmap_alloc, i64 38}
!79 = !{ptr @calculate_live_ranges, ptr @sbitmap_zero, i64 38}
!80 = !{ptr @calculate_live_ranges, ptr @bitmap_and_compl, i64 315441}
!81 = !{ptr @calculate_live_ranges, ptr @bitmap_ior_into, i64 315441}
!82 = !{ptr @calculate_live_ranges, ptr @bitmap_obstack_free, i64 38}
!83 = !{ptr @calculate_live_ranges, ptr @free, i64 76}
!84 = !{ptr @calculate_live_ranges, ptr @calculate_live_on_exit, i64 38}
!85 = !{ptr @mark_all_vars_used_1, ptr @tree_block, i64 1978574}
!86 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!87 = !{!"function_entry_count", i64 0}
!88 = !{!89, !89, i64 0}
!89 = !{!"any pointer", !90, i64 0}
!90 = !{!"omnipotent char", !91, i64 0}
!91 = !{!"Simple C/C++ TBAA"}
!92 = !{!93, !89, i64 8}
!93 = !{!"_IO_FILE", !94, i64 0, !89, i64 8, !89, i64 16, !89, i64 24, !89, i64 32, !89, i64 40, !89, i64 48, !89, i64 56, !89, i64 64, !89, i64 72, !89, i64 80, !89, i64 88, !89, i64 96, !89, i64 104, !94, i64 112, !94, i64 116, !95, i64 120, !96, i64 128, !90, i64 130, !90, i64 131, !89, i64 136, !95, i64 144, !89, i64 152, !89, i64 160, !89, i64 168, !89, i64 176, !95, i64 184, !94, i64 192, !90, i64 196}
!94 = !{!"int", !90, i64 0}
!95 = !{!"long", !90, i64 0}
!96 = !{!"short", !90, i64 0}
!97 = !{!93, !89, i64 16}
!98 = !{!"branch_weights", i32 2000, i32 1}
!99 = !{!90, !90, i64 0}
!100 = !{!93, !89, i64 40}
!101 = !{!93, !89, i64 48}
!102 = !{!93, !94, i64 0}
!103 = !{!94, !94, i64 0}
!104 = distinct !{!104, !105, !106}
!105 = !{!"llvm.loop.mustprogress"}
!106 = !{!"llvm.loop.unroll.disable"}
!107 = !{!"function_entry_count", i64 192}
!108 = !{!109, !89, i64 0}
!109 = !{!"_var_map", !89, i64 0, !89, i64 8, !89, i64 16, !94, i64 24, !94, i64 28, !94, i64 32, !89, i64 40, !89, i64 48}
!110 = !{!109, !94, i64 24}
!111 = !{!109, !94, i64 28}
!112 = !{!109, !94, i64 32}
!113 = !{!109, !89, i64 40}
!114 = !{!"branch_weights", i32 192, i32 38}
!115 = !{!"branch_weights", i32 0, i32 38}
!116 = !{!109, !89, i64 8}
!117 = !{!"branch_weights", i32 154, i32 38}
!118 = !{!109, !89, i64 16}
!119 = !{!"tree-ssa-live.c;var_map_base_fini"}
!120 = !{!"function_entry_count", i64 4855}
!121 = !{!"branch_weights", i32 4855, i32 0}
!122 = !{!123, !94, i64 0}
!123 = !{!"partition_elem", !94, i64 0, !89, i64 8, !94, i64 16}
!124 = !{!"branch_weights", i32 0, i32 4855}
!125 = !{!"function_entry_count", i64 38}
!126 = !{!"branch_weights", i32 38, i32 0}
!127 = !{!"function_entry_count", i64 76}
!128 = !{!"tree-ssa-live.c;partition_view_init"}
!129 = !{!"branch_weights", i32 38, i32 38}
!130 = !{!"branch_weights", i32 1, i32 151}
!131 = !{!132, !89, i64 24}
!132 = !{!"function", !89, i64 0, !89, i64 8, !89, i64 16, !89, i64 24, !89, i64 32, !89, i64 40, !89, i64 48, !89, i64 56, !89, i64 64, !89, i64 72, !89, i64 80, !89, i64 88, !89, i64 96, !94, i64 104, !94, i64 108, !94, i64 112, !94, i64 116, !94, i64 120, !94, i64 124, !89, i64 128, !94, i64 136, !94, i64 137, !94, i64 138, !94, i64 138, !94, i64 138, !94, i64 138, !94, i64 138, !94, i64 138, !94, i64 138, !94, i64 139, !94, i64 139, !94, i64 139, !94, i64 139, !94, i64 139, !94, i64 139, !94, i64 139}
!133 = !{!134, !89, i64 16}
!134 = !{!"gimple_df", !89, i64 0, !89, i64 8, !89, i64 16, !89, i64 24, !135, i64 32, !135, i64 48, !89, i64 64, !89, i64 72, !89, i64 80, !89, i64 88, !94, i64 96, !136, i64 104}
!135 = !{!"pt_solution", !94, i64 0, !94, i64 0, !94, i64 0, !94, i64 0, !94, i64 0, !94, i64 0, !89, i64 8}
!136 = !{!"ssa_operands", !89, i64 0, !94, i64 8, !94, i64 12, !90, i64 16, !89, i64 24, !89, i64 32}
!137 = !{!"branch_weights", i32 324884, i32 528070}
!138 = !{!"branch_weights", i32 138026, i32 390044}
!139 = !{!140, !89, i64 8}
!140 = !{!"ssa_use_operand_d", !89, i64 0, !89, i64 8, !90, i64 16, !89, i64 24}
!141 = !{!"branch_weights", i32 186, i32 389858}
!142 = !{!"branch_weights", i32 389858, i32 0}
!143 = !{!"branch_weights", i32 389858, i32 186}
!144 = !{!"branch_weights", i32 186, i32 0}
!145 = !{!"branch_weights", i32 1705757, i32 151}
!146 = distinct !{!146, !105, !106}
!147 = !{!"tree-ssa-live.c;partition_view_fini"}
!148 = !{!"branch_weights", i32 0, i32 76}
!149 = !{!"branch_weights", i32 76, i32 0}
!150 = !{!"VP", i32 1, i64 76, i64 513, i64 54, i64 65, i64 14, i64 257, i64 4, i64 128, i64 2}
!151 = !{!152, !89, i64 0}
!152 = !{!"bitmap_head_def", !89, i64 0, !89, i64 8, !94, i64 16, !89, i64 24}
!153 = !{!154, !94, i64 16}
!154 = !{!"bitmap_element_def", !89, i64 0, !89, i64 8, !94, i64 16, !90, i64 24}
!155 = !{!95, !95, i64 0}
!156 = !{!"branch_weights", i32 6467, i32 190518}
!157 = !{!"branch_weights", i32 155161, i32 41748}
!158 = !{!"branch_weights", i32 0, i32 155161}
!159 = distinct !{!159, !105, !106}
!160 = !{!"branch_weights", i32 1, i32 3799}
!161 = !{!"branch_weights", i32 1133, i32 6391}
!162 = !{!"branch_weights", i32 3799, i32 3725}
!163 = distinct !{!163, !105, !106}
!164 = !{!154, !89, i64 0}
!165 = !{!"branch_weights", i32 76, i32 3724}
!166 = distinct !{!166, !106}
!167 = !{!"branch_weights", i32 76, i32 196909}
!168 = distinct !{!168, !105, !106}
!169 = !{!"tree-ssa-live.c;var_map_base_init"}
!170 = !{!109, !89, i64 48}
!171 = !{!172, !94, i64 0}
!172 = !{!"VEC_tree_base", !94, i64 0, !94, i64 4, !90, i64 8}
!173 = !{!"branch_weights", i32 31, i32 7}
!174 = !{!"branch_weights", i32 151, i32 1}
!175 = !{!"branch_weights", i32 0, i32 6742}
!176 = !{!"branch_weights", i32 6742, i32 0}
!177 = !{!"branch_weights", i32 0, i32 6704, i32 38}
!178 = !{!"branch_weights", i32 267, i32 6475}
!179 = !{!180, !94, i64 4}
!180 = !{!"var_ann_d", !94, i64 0, !94, i64 0, !94, i64 0, !94, i64 0, !94, i64 0, !94, i64 4, !89, i64 8}
!181 = !{!"branch_weights", i32 0, i32 267}
!182 = !{!172, !94, i64 4}
!183 = !{!"branch_weights", i32 151, i32 26817}
!184 = distinct !{!184, !105, !106}
!185 = !{!"branch_weights", i32 0, i32 229, i32 38}
!186 = !{!"branch_weights", i32 151, i32 917}
!187 = distinct !{!187, !105, !106}
!188 = !{!"branch_weights", i32 2220, i32 4560}
!189 = !{!"branch_weights", i32 6741, i32 1}
!190 = !{!"branch_weights", i32 76161, i32 6741}
!191 = !{!"branch_weights", i32 1, i32 1587}
!192 = !{!"branch_weights", i32 956, i32 2182}
!193 = !{!"branch_weights", i32 1587, i32 1551}
!194 = !{!"branch_weights", i32 38, i32 1550}
!195 = !{!"branch_weights", i32 38, i32 6742}
!196 = distinct !{!196, !105, !106}
!197 = !{!198, !89, i64 0}
!198 = !{!"", !89, i64 0, !94, i64 8, !94, i64 12, !90, i64 16}
!199 = !{!198, !94, i64 8}
!200 = distinct !{!200, !105, !106}
!201 = distinct !{!201, !105, !106}
!202 = distinct !{!202, !105, !106}
!203 = !{!"function_entry_count", i64 524}
!204 = !{!"branch_weights", i32 0, i32 524}
!205 = !{!134, !89, i64 0}
!206 = !{!207, !89, i64 24}
!207 = !{!"htab", !89, i64 0, !89, i64 8, !89, i64 16, !89, i64 24, !95, i64 32, !95, i64 40, !95, i64 48, !94, i64 56, !94, i64 60, !89, i64 64, !89, i64 72, !89, i64 80, !89, i64 88, !89, i64 96, !94, i64 104}
!208 = !{!"branch_weights", i32 729, i32 524}
!209 = !{!"branch_weights", i32 729, i32 0}
!210 = distinct !{!210, !105, !106}
!211 = !{!"branch_weights", i32 524, i32 0}
!212 = !{!"branch_weights", i32 523, i32 1}
!213 = !{!"branch_weights", i32 0, i32 2011450, i32 524}
!214 = !{!"branch_weights", i32 4487949, i32 524}
!215 = !{!"branch_weights", i32 2476499, i32 2011450}
!216 = !{!"branch_weights", i32 2011451, i32 523}
!217 = distinct !{!217, !105, !106}
!218 = !{!132, !89, i64 8}
!219 = !{!220, !89, i64 0}
!220 = !{!"control_flow_graph", !89, i64 0, !89, i64 8, !89, i64 16, !94, i64 24, !94, i64 28, !94, i64 32, !89, i64 40, !94, i64 48, !90, i64 52, !90, i64 60, !94, i64 68, !94, i64 72}
!221 = !{!222, !89, i64 56}
!222 = !{!"basic_block_def", !89, i64 0, !89, i64 8, !89, i64 16, !89, i64 24, !90, i64 32, !89, i64 48, !89, i64 56, !90, i64 64, !95, i64 72, !94, i64 80, !94, i64 84, !94, i64 88, !94, i64 92, !94, i64 96}
!223 = !{!220, !89, i64 8}
!224 = !{!"branch_weights", i32 1, i32 523}
!225 = !{!"branch_weights", i32 523, i32 2977476}
!226 = distinct !{!226, !105, !106}
!227 = !{!222, !94, i64 96}
!228 = !{!229}
!229 = distinct !{!229, !230, !"gsi_start_bb: argument 0"}
!230 = distinct !{!230, !"gsi_start_bb"}
!231 = !{!"branch_weights", i32 2977999, i32 0}
!232 = !{!"branch_weights", i32 0, i32 2977999}
!233 = !{!234, !89, i64 0}
!234 = !{!"gimple_bb_info", !89, i64 0, !89, i64 8}
!235 = !{!236, !89, i64 0}
!236 = !{!"gimple_seq_d", !89, i64 0, !89, i64 8, !89, i64 16}
!237 = !{!"branch_weights", i32 1, i32 2977998}
!238 = !{!239, !89, i64 0}
!239 = !{!"gimple_seq_node_d", !89, i64 0, !89, i64 8, !89, i64 16}
!240 = !{!"branch_weights", i32 0, i32 6671757}
!241 = !{!"branch_weights", i32 7063, i32 6664694}
!242 = !{!"branch_weights", i32 1, i32 6671756}
!243 = !{!"branch_weights", i32 0, i32 22585463}
!244 = !{!"branch_weights", i32 15913707, i32 6671756}
!245 = distinct !{!245, !105, !106}
!246 = !{!239, !89, i64 16}
!247 = !{!"branch_weights", i32 2977998, i32 3693759}
!248 = distinct !{!248, !105, !106}
!249 = !{i64 0, i64 8, !88, i64 8, i64 8, !88, i64 16, i64 8, !88}
!250 = !{!"branch_weights", i32 2058991, i32 919008}
!251 = !{!"branch_weights", i32 34470, i32 884538}
!252 = !{!"branch_weights", i32 34469, i32 1}
!253 = !{!140, !89, i64 24}
!254 = !{!"branch_weights", i32 1182451, i32 34470}
!255 = !{!"branch_weights", i32 0, i32 1182451}
!256 = !{!"branch_weights", i32 1182452, i32 34469}
!257 = distinct !{!257, !105, !106}
!258 = !{!"branch_weights", i32 919008, i32 0}
!259 = distinct !{!259, !105, !106}
!260 = !{!"branch_weights", i32 200, i32 8694931}
!261 = !{!262, !94, i64 0}
!262 = !{!"VEC_edge_base", !94, i64 0, !94, i64 4, !90, i64 8}
!263 = !{!"branch_weights", i32 2977999, i32 5717132}
!264 = !{!265, !94, i64 40}
!265 = !{!"edge_def", !89, i64 0, !89, i64 8, !90, i64 16, !89, i64 24, !89, i64 32, !94, i64 40, !94, i64 44, !94, i64 48, !94, i64 52, !95, i64 56}
!266 = !{!"branch_weights", i32 5603522, i32 113610}
!267 = !{!265, !89, i64 32}
!268 = !{!"branch_weights", i32 0, i32 5717132}
!269 = !{!"branch_weights", i32 5717132, i32 0}
!270 = distinct !{!270, !105, !106}
!271 = !{!"branch_weights", i32 0, i32 2009470}
!272 = !{!"branch_weights", i32 0, i32 2009470, i32 0}
!273 = !{!"branch_weights", i32 163, i32 2009307}
!274 = !{!"branch_weights", i32 9285, i32 2000022}
!275 = !{!"branch_weights", i32 9448, i32 0}
!276 = distinct !{!276, !105, !106}
!277 = !{!"branch_weights", i32 2000022, i32 0}
!278 = !{!"branch_weights", i32 523, i32 2008947}
!279 = distinct !{!279, !105, !106}
!280 = distinct !{!280, !105, !106}
!281 = !{!"branch_weights", i32 2010922, i32 1052}
!282 = !{!"branch_weights", i32 2008922, i32 3052}
!283 = !{!"branch_weights", i32 0, i32 1027734, i32 0, i32 -355843736}
!284 = !{!"branch_weights", i32 9214, i32 1999184}
!285 = !{!"branch_weights", i32 9214, i32 0}
!286 = distinct !{!286, !105, !106}
!287 = !{i8 0, i8 2}
!288 = !{!"function_entry_count", i64 1163}
!289 = !{!"tree-ssa-live.c;mark_scope_block_unused"}
!290 = !{!291, !89, i64 72}
!291 = !{!"gcc_debug_hooks", !89, i64 0, !89, i64 8, !89, i64 16, !89, i64 24, !89, i64 32, !89, i64 40, !89, i64 48, !89, i64 56, !89, i64 64, !89, i64 72, !89, i64 80, !89, i64 88, !89, i64 96, !89, i64 104, !89, i64 112, !89, i64 120, !89, i64 128, !89, i64 136, !89, i64 144, !89, i64 152, !89, i64 160, !89, i64 168, !89, i64 176, !89, i64 184, !89, i64 192, !89, i64 200, !89, i64 208, !89, i64 216, !89, i64 224, !89, i64 232, !89, i64 240, !94, i64 248}
!292 = !{!"VP", i32 0, i64 1163, i64 6509491449350389196, i64 1163}
!293 = !{!"branch_weights", i32 0, i32 1163}
!294 = !{!"branch_weights", i32 524, i32 639}
!295 = !{!"branch_weights", i32 639, i32 0}
!296 = distinct !{!296, !105, !106}
!297 = !{!"tree-ssa-live.c;remove_unused_scope_block_p"}
!298 = !{!"branch_weights", i32 548, i32 615}
!299 = !{!"branch_weights", i32 0, i32 0, i32 615}
!300 = !{!"branch_weights", i32 615, i32 0}
!301 = !{!"branch_weights", i32 567, i32 48}
!302 = !{!"branch_weights", i32 0, i32 567, i32 0}
!303 = !{!"branch_weights", i32 0, i32 567}
!304 = !{!"branch_weights", i32 48, i32 519}
!305 = !{!"branch_weights", i32 0, i32 519}
!306 = !{!"branch_weights", i32 0, i32 48}
!307 = distinct !{!307, !105, !106}
!308 = !{!"branch_weights", i32 585, i32 54}
!309 = !{!"branch_weights", i32 6, i32 48}
!310 = !{!"branch_weights", i32 1, i32 0}
!311 = distinct !{!311, !105, !106}
!312 = distinct !{!312, !105, !106}
!313 = !{!"branch_weights", i32 1109, i32 54}
!314 = !{!"branch_weights", i32 0, i32 54}
!315 = !{!"branch_weights", i32 324, i32 2592}
!316 = !{!"branch_weights", i32 48, i32 0}
!317 = !{!"branch_weights", i32 0, i32 96}
!318 = !{!"branch_weights", i32 0, i32 2304, i32 2304}
!319 = distinct !{!319, !105, !106}
!320 = !{!"branch_weights", i32 2, i32 46}
!321 = !{!"branch_weights", i32 54, i32 1109}
!322 = !{!323, !89, i64 8}
!323 = !{!"tree_live_info_d", !89, i64 0, !89, i64 8, !89, i64 16, !94, i64 24, !89, i64 32, !89, i64 40, !89, i64 48}
!324 = !{!323, !89, i64 32}
!325 = !{!323, !94, i64 24}
!326 = !{!323, !89, i64 48}
!327 = !{!"branch_weights", i32 616393, i32 151}
!328 = distinct !{!328, !105, !106}
!329 = !{!323, !89, i64 16}
!330 = distinct !{!330, !105, !106}
!331 = !{!222, !94, i64 80}
!332 = !{!"branch_weights", i32 151, i32 616089}
!333 = distinct !{!333, !105, !106}
!334 = distinct !{!334, !105, !106}
!335 = !{!"branch_weights", i32 151773, i32 2287}
!336 = !{!"branch_weights", i32 1, i32 2286}
!337 = !{!"branch_weights", i32 0, i32 70786}
!338 = !{!"branch_weights", i32 6020, i32 64766}
!339 = !{!323, !89, i64 0}
!340 = !{!"branch_weights", i32 0, i32 6020}
!341 = !{!222, !89, i64 0}
!342 = !{}
!343 = !{!265, !89, i64 0}
!344 = !{!"branch_weights", i32 68500, i32 2286}
!345 = distinct !{!345, !105, !106}
!346 = !{!"branch_weights", i32 2287, i32 0}
!347 = distinct !{!347, !105, !106}
!348 = !{!"branch_weights", i32 0, i32 451130}
!349 = !{!"branch_weights", i32 154060, i32 297070}
!350 = !{!265, !89, i64 8}
!351 = !{!"branch_weights", i32 38, i32 297032}
!352 = !{!"branch_weights", i32 0, i32 297032}
!353 = !{!"branch_weights", i32 0, i32 297070}
!354 = !{!"branch_weights", i32 297070, i32 0}
!355 = distinct !{!355, !105, !106}
!356 = !{!220, !94, i64 32}
!357 = distinct !{!357, !105, !106}
!358 = distinct !{!358, !105, !106}
!359 = !{!323, !89, i64 40}
!360 = !{!"branch_weights", i32 38, i32 6704}
!361 = !{!"branch_weights", i32 1, i32 6741}
!362 = !{!"branch_weights", i32 63253, i32 6020, i32 0}
!363 = !{!"branch_weights", i32 4387, i32 1633}
!364 = !{!"branch_weights", i32 4848, i32 58405}
!365 = !{!"branch_weights", i32 9235, i32 60038}
!366 = !{!"branch_weights", i32 6742, i32 62531}
!367 = !{!"branch_weights", i32 6741, i32 62532}
!368 = distinct !{!368, !105, !106}
!369 = !{!"branch_weights", i32 4734, i32 2008}
!370 = !{!"branch_weights", i32 26817, i32 151}
!371 = distinct !{!371, !105, !106}
!372 = !{!222, !89, i64 48}
!373 = distinct !{!373, !105, !106}
!374 = !{!"branch_weights", i32 163551, i32 0}
!375 = !{!376, !89, i64 0}
!376 = !{!"simple_bitmap_def", !89, i64 0, !94, i64 8, !94, i64 12, !90, i64 16}
!377 = !{!"branch_weights", i32 0, i32 163551}
!378 = !{!"branch_weights", i32 0, i32 479030}
!379 = !{!"branch_weights", i32 163551, i32 315479}
!380 = !{!"branch_weights", i32 38, i32 315441}
!381 = !{!"branch_weights", i32 0, i32 315441}
!382 = !{!"branch_weights", i32 23583, i32 291858}
!383 = !{!"branch_weights", i32 9491, i32 305950}
!384 = !{!"branch_weights", i32 9491, i32 0}
!385 = !{!"branch_weights", i32 0, i32 315479}
!386 = !{!"branch_weights", i32 315479, i32 0}
!387 = distinct !{!387, !105, !106}
!388 = !{!"branch_weights", i32 151, i32 37813}
!389 = distinct !{!389, !105, !106}
!390 = !{!220, !89, i64 16}
!391 = distinct !{!391, !105, !106}
!392 = distinct !{!392, !105, !106}
!393 = distinct !{!393, !105, !106}
!394 = distinct !{!394, !105, !106}
!395 = distinct !{!395, !105, !106}
!396 = distinct !{!396, !105, !106}
!397 = !{!"function_entry_count", i64 19828889}
!398 = !{!"tree-ssa-live.c;mark_all_vars_used_1"}
!399 = !{!"branch_weights", i32 9164183, i32 10664706}
!400 = !{!"branch_weights", i32 1978574, i32 17850315}
!401 = !{!"branch_weights", i32 1978574, i32 0}
!402 = !{!"branch_weights", i32 10105538, i32 0, i32 9723351}
!403 = !{!"branch_weights", i32 9723351, i32 0}
!404 = !{!"branch_weights", i32 0, i32 9723351, i32 0}
!405 = !{!"branch_weights", i32 0, i32 9723351}
!406 = !{!"branch_weights", i32 12504498, i32 7324391}
