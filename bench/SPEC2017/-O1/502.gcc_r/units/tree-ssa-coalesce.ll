; ModuleID = 'tree-ssa-coalesce.c'
source_filename = "tree-ssa-coalesce.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.bitmap_element_def = type { ptr, ptr, i32, [2 x i64] }
%struct._IO_FILE = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, [1 x i8], ptr, i64, ptr, ptr, ptr, ptr, i64, i32, [20 x i8] }
%struct.gimple_stmt_iterator = type { ptr, ptr, ptr }
%struct.coalesce_pair = type { i32, i32, i32 }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.gimple_df = type { ptr, ptr, ptr, ptr, %struct.pt_solution, %struct.pt_solution, ptr, ptr, ptr, ptr, i8, %struct.ssa_operands }
%struct.pt_solution = type { i8, ptr }
%struct.ssa_operands = type { ptr, i32, i32, i8, ptr, ptr }
%struct.coalesce_list_d = type { ptr, ptr, i32, ptr }
%struct.VEC_tree_base = type { i32, i32, [1 x ptr] }
%struct.tree_ssa_name = type { %struct.tree_common, ptr, ptr, i32, ptr, %struct.ssa_use_operand_d }
%struct.tree_common = type { %struct.tree_base, ptr, ptr }
%struct.tree_base = type { i64 }
%struct.ssa_use_operand_d = type { ptr, ptr, %union.anon, ptr }
%union.anon = type { ptr }
%struct.tree_decl_common = type { %struct.tree_decl_minimal, ptr, i40, i32, ptr, ptr, ptr, ptr, ptr }
%struct.tree_decl_minimal = type { %struct.tree_common, i32, i32, ptr, ptr }
%struct._var_map = type { ptr, ptr, ptr, i32, i32, i32, ptr, ptr }
%struct.ssa_conflicts_d = type { i32, ptr }
%struct.live_track_d = type { ptr, ptr, ptr }
%struct.basic_block_def = type { ptr, ptr, ptr, ptr, [2 x ptr], ptr, ptr, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%union.basic_block_il_dependent = type { ptr }
%struct.control_flow_graph = type { ptr, ptr, ptr, i32, i32, i32, ptr, i32, [2 x i32], [2 x i32], i32, i32 }
%struct.tree_live_info_d = type { ptr, ptr, ptr, i32, ptr, ptr, ptr }
%struct.gimple_seq_d = type { ptr, ptr, ptr }
%struct.partition_def = type { i32, [1 x %struct.partition_elem] }
%struct.partition_elem = type { i32, ptr, i32 }
%struct.gimple_statement_with_ops_base = type { %struct.gimple_statement_base, ptr, ptr }
%struct.gimple_statement_base = type { i32, i32, i32, i32, ptr, ptr }
%struct.gimple_statement_with_memory_ops_base = type { %struct.gimple_statement_with_ops_base, ptr, ptr }
%struct.def_optype_d = type { ptr, ptr }
%struct.use_optype_d = type { ptr, %struct.ssa_use_operand_d }
%struct.gimple_seq_node_d = type { ptr, ptr, ptr }
%struct.gimple_statement_phi = type { %struct.gimple_statement_base, i32, i32, ptr, [1 x %struct.phi_arg_d] }
%struct.phi_arg_d = type { %struct.ssa_use_operand_d, ptr, i32 }
%struct.htab = type { ptr, ptr, ptr, ptr, i64, i64, i64, i32, i32, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.VEC_edge_base = type { i32, i32, [1 x ptr] }
%struct.edge_def = type { ptr, ptr, %union.edge_def_insns, ptr, ptr, i32, i32, i32, i32, i64 }
%union.edge_def_insns = type { ptr }
%struct.cost_one_pair_d = type { i32, i32, ptr }
%struct.gimple_statement_asm = type { %struct.gimple_statement_with_memory_ops_base, ptr, i8, i8, i8, i8, [1 x ptr] }
%struct.tree_list = type { %struct.tree_common, ptr, ptr }
%struct.tree_string = type { %struct.tree_common, i32, [1 x i8] }

@stdout = external local_unnamed_addr global ptr, align 8
@stdin = external local_unnamed_addr global ptr, align 8
@coalesce_ssa_name.ssa_name_hash = internal unnamed_addr global ptr null, align 8
@optimize = external local_unnamed_addr global i32, align 4
@cfun = external local_unnamed_addr global ptr, align 8
@dump_file = external local_unnamed_addr global ptr, align 8
@dump_flags = external local_unnamed_addr global i32, align 4
@.str = private unnamed_addr constant [17 x i8] c"\0AAfter sorting:\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"tree-ssa-coalesce.c\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"./gimple.h\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"./basic-block.h\00", align 1
@flag_var_tracking_assignments = external local_unnamed_addr global i32, align 4
@stderr = external local_unnamed_addr global ptr, align 8
@.str.5 = private unnamed_addr constant [46 x i8] c" Corrupt SSA across abnormal edge BB%d->BB%d\0A\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"Argument %d (\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c") is not an SSA_NAME.\0A\00", align 1
@.str.8 = private unnamed_addr constant [54 x i8] c") does not have the same base variable as the result \00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"SSA corruption\00", align 1
@gimple_ops_offset_ = external local_unnamed_addr constant [0 x i64], align 8
@gss_for_code_ = external local_unnamed_addr constant [0 x i32], align 4
@htab_hash_pointer = external local_unnamed_addr global ptr, align 8
@bitmap_zero_bits = external local_unnamed_addr global %struct.bitmap_element_def, align 8
@.str.11 = private unnamed_addr constant [18 x i8] c"./tree-ssa-live.h\00", align 1
@.str.12 = private unnamed_addr constant [18 x i8] c"\0AConflict graph:\0A\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"%d: \00", align 1
@.str.14 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.15 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.16 = private unnamed_addr constant [16 x i8] c"Coalesce List:\0A\00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c" <-> \00", align 1
@.str.18 = private unnamed_addr constant [10 x i8] c"  (%1d), \00", align 1
@.str.19 = private unnamed_addr constant [23 x i8] c"Sorted Coalesce list:\0A\00", align 1
@.str.20 = private unnamed_addr constant [6 x i8] c"(%d) \00", align 1
@.str.21 = private unnamed_addr constant [20 x i8] c"Abnormal coalesce: \00", align 1
@.str.22 = private unnamed_addr constant [16 x i8] c"Coalesce list: \00", align 1
@.str.23 = private unnamed_addr constant [5 x i8] c"(%d)\00", align 1
@.str.24 = private unnamed_addr constant [8 x i8] c" & (%d)\00", align 1
@.str.25 = private unnamed_addr constant [22 x i8] c": Already Coalesced.\0A\00", align 1
@.str.26 = private unnamed_addr constant [16 x i8] c" [map: %d, %d] \00", align 1
@.str.27 = private unnamed_addr constant [38 x i8] c": Unable to perform partition union.\0A\00", align 1
@.str.28 = private unnamed_addr constant [17 x i8] c": Success -> %d\0A\00", align 1
@.str.29 = private unnamed_addr constant [24 x i8] c": Fail due to conflict\0A\00", align 1
@.str.30 = private unnamed_addr constant [40 x i8] c"\0AUnable to coalesce ssa_names %d and %d\00", align 1
@.str.31 = private unnamed_addr constant [37 x i8] c" which are marked as MUST COALESCE.\0A\00", align 1
@.str.32 = private unnamed_addr constant [7 x i8] c" and  \00", align 1

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
  %8 = tail call i32 @__uflow(ptr noundef %0) #19
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
  %8 = tail call i32 @__uflow(ptr noundef %0) #19
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
  %8 = tail call i32 @__uflow(ptr noundef %1) #19
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
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #19
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
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #19
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
  %10 = tail call i32 @__overflow(ptr noundef %2, i32 noundef %9) #19
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
  %4 = tail call i64 @__getdelim(ptr noundef %0, ptr noundef %1, i32 noundef 10, ptr noundef %2) #19
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
  %5 = tail call ptr @__ctype_tolower_loc() #19
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
  %5 = tail call ptr @__ctype_toupper_loc() #19
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
define dso_local ptr @coalesce_ssa_name() local_unnamed_addr #9 !prof !94 {
  %1 = alloca %struct.gimple_stmt_iterator, align 8
  %2 = alloca %struct.gimple_stmt_iterator, align 8
  %3 = alloca %struct.coalesce_pair, align 4
  %4 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #19
  %5 = load ptr, ptr @cfun, align 8, !tbaa !75
  %6 = getelementptr inbounds %struct.function, ptr %5, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !95
  %8 = getelementptr inbounds %struct.gimple_df, ptr %7, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !97
  %10 = icmp eq ptr %9, null
  br i1 %10, label %14, label %11, !prof !101

11:                                               ; preds = %0
  %12 = load i32, ptr %9, align 8, !tbaa !102
  %13 = mul i32 %12, 3
  br label %14

14:                                               ; preds = %0, %11
  %15 = phi i32 [ %13, %11 ], [ 0, %0 ]
  %16 = tail call i32 @llvm.umax.i32(i32 %15, i32 40)
  %17 = tail call ptr @xmalloc(i64 noundef 32) #19
  %18 = zext i32 %16 to i64
  %19 = tail call ptr @htab_create(i64 noundef %18, ptr noundef nonnull @coalesce_pair_map_hash, ptr noundef nonnull @coalesce_pair_map_eq, ptr noundef null) #19
  store ptr %19, ptr %17, align 8, !tbaa !104
  %20 = getelementptr inbounds %struct.coalesce_list_d, ptr %17, i64 0, i32 1
  store ptr null, ptr %20, align 8, !tbaa !106
  %21 = getelementptr inbounds %struct.coalesce_list_d, ptr %17, i64 0, i32 2
  store i32 0, ptr %21, align 8, !tbaa !107
  %22 = getelementptr inbounds %struct.coalesce_list_d, ptr %17, i64 0, i32 3
  store ptr null, ptr %22, align 8, !tbaa !108
  %23 = tail call fastcc ptr @create_outofssa_var_map(ptr noundef nonnull %17, ptr noundef %4)
  %24 = load i32, ptr @optimize, align 4, !tbaa !90
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %137, !prof !101

26:                                               ; preds = %14
  %27 = tail call ptr @htab_create(i64 noundef 10, ptr noundef nonnull @hash_ssa_name_by_var, ptr noundef nonnull @eq_ssa_name_by_var, ptr noundef null) #19
  store ptr %27, ptr @coalesce_ssa_name.ssa_name_hash, align 8, !tbaa !75
  %28 = getelementptr inbounds %struct.coalesce_pair, ptr %3, i64 0, i32 1
  br label %29

29:                                               ; preds = %133, %26
  %30 = phi i64 [ %134, %133 ], [ 1, %26 ]
  %31 = load ptr, ptr @cfun, align 8, !tbaa !75
  %32 = getelementptr inbounds %struct.function, ptr %31, i64 0, i32 3
  %33 = load ptr, ptr %32, align 8, !tbaa !95
  %34 = getelementptr inbounds %struct.gimple_df, ptr %33, i64 0, i32 2
  %35 = load ptr, ptr %34, align 8, !tbaa !97
  %36 = icmp eq ptr %35, null
  br i1 %36, label %39, label %37

37:                                               ; preds = %29
  %38 = load i32, ptr %35, align 8, !tbaa !102
  br label %39

39:                                               ; preds = %29, %37
  %40 = phi i32 [ %38, %37 ], [ 0, %29 ]
  %41 = zext i32 %40 to i64
  %42 = icmp ult i64 %30, %41
  br i1 %42, label %43, label %135

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.VEC_tree_base, ptr %35, i64 0, i32 2, i64 %30
  %45 = load ptr, ptr %44, align 8, !tbaa !75
  %46 = icmp eq ptr %45, null
  br i1 %46, label %133, label %47

47:                                               ; preds = %43
  %48 = getelementptr inbounds %struct.tree_ssa_name, ptr %45, i64 0, i32 1
  %49 = load ptr, ptr %48, align 8, !tbaa !86
  %50 = icmp eq ptr %49, null
  br i1 %50, label %133, label %51

51:                                               ; preds = %47
  %52 = getelementptr inbounds %struct.tree_decl_common, ptr %49, i64 0, i32 2
  %53 = load i64, ptr %52, align 8
  %54 = and i64 %53, 4096
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %56, label %133

56:                                               ; preds = %51
  %57 = getelementptr inbounds %struct.tree_ssa_name, ptr %45, i64 0, i32 5
  %58 = getelementptr inbounds %struct.tree_ssa_name, ptr %45, i64 0, i32 5, i32 1
  %59 = load ptr, ptr %58, align 8, !tbaa !109
  %60 = icmp eq ptr %57, %59
  br i1 %60, label %66, label %61

61:                                               ; preds = %56
  %62 = load i32, ptr @flag_var_tracking_assignments, align 4, !tbaa !90
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %66, label %64

64:                                               ; preds = %61
  %65 = call zeroext i8 @has_zero_uses_1(ptr noundef nonnull %57) #19
  br label %66

66:                                               ; preds = %56, %61, %64
  %67 = phi i8 [ %65, %64 ], [ 1, %56 ], [ 0, %61 ]
  %68 = icmp eq i8 %67, 0
  br i1 %68, label %73, label %69

69:                                               ; preds = %66
  %70 = load i64, ptr %45, align 8
  %71 = and i64 %70, 4294967296
  %72 = icmp eq i64 %71, 0
  br i1 %72, label %73, label %133

73:                                               ; preds = %69, %66
  %74 = load ptr, ptr @coalesce_ssa_name.ssa_name_hash, align 8, !tbaa !75
  %75 = call ptr @htab_find_slot(ptr noundef %74, ptr noundef nonnull %45, i32 noundef 1) #19
  %76 = load ptr, ptr %75, align 8, !tbaa !75
  %77 = icmp eq ptr %76, null
  br i1 %77, label %78, label %79

78:                                               ; preds = %73
  store ptr %45, ptr %75, align 8, !tbaa !75
  br label %133

79:                                               ; preds = %73
  %80 = getelementptr inbounds %struct.tree_ssa_name, ptr %45, i64 0, i32 3
  %81 = load i32, ptr %80, align 8, !tbaa !86
  %82 = getelementptr inbounds %struct.tree_ssa_name, ptr %76, i64 0, i32 3
  %83 = load i32, ptr %82, align 8, !tbaa !86
  %84 = load ptr, ptr %20, align 8, !tbaa !106
  %85 = icmp eq ptr %84, null
  br i1 %85, label %87, label %86

86:                                               ; preds = %79
  call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 314, ptr noundef nonnull @.str.2) #19
  br label %87

87:                                               ; preds = %86, %79
  %88 = icmp eq i32 %81, %83
  br i1 %88, label %126, label %89

89:                                               ; preds = %87
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #19
  %90 = icmp slt i32 %83, %81
  br i1 %90, label %91, label %93

91:                                               ; preds = %89
  %92 = getelementptr inbounds %struct.coalesce_pair, ptr %3, i64 0, i32 1
  store i32 %83, ptr %3, align 4, !tbaa !111
  store i32 %81, ptr %92, align 4, !tbaa !113
  br label %95

93:                                               ; preds = %89
  %94 = getelementptr inbounds %struct.coalesce_pair, ptr %3, i64 0, i32 1
  store i32 %81, ptr %3, align 4, !tbaa !111
  store i32 %83, ptr %94, align 4, !tbaa !113
  br label %95

95:                                               ; preds = %93, %91
  %96 = load i32, ptr %3, align 4, !tbaa !111
  %97 = load i32, ptr %28, align 4, !tbaa !113
  %98 = add i32 %97, -1
  %99 = mul i32 %98, %97
  %100 = lshr i32 %99, 1
  %101 = add i32 %100, %96
  %102 = load ptr, ptr %17, align 8, !tbaa !104
  %103 = call ptr @htab_find_slot_with_hash(ptr noundef %102, ptr noundef nonnull %3, i32 noundef %101, i32 noundef 1) #19
  %104 = icmp eq ptr %103, null
  br i1 %104, label %120, label %105

105:                                              ; preds = %95
  %106 = load ptr, ptr %103, align 8, !tbaa !75
  %107 = icmp eq ptr %106, null
  br i1 %107, label %108, label %118

108:                                              ; preds = %105
  %109 = call ptr @xmalloc(i64 noundef 12) #19
  %110 = load ptr, ptr %20, align 8, !tbaa !106
  %111 = icmp eq ptr %110, null
  br i1 %111, label %113, label %112

112:                                              ; preds = %108
  call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 284, ptr noundef nonnull @.str.2) #19
  br label %113

113:                                              ; preds = %112, %108
  %114 = load i32, ptr %3, align 4, !tbaa !111
  store i32 %114, ptr %109, align 4, !tbaa !111
  %115 = load i32, ptr %28, align 4, !tbaa !113
  %116 = getelementptr inbounds %struct.coalesce_pair, ptr %109, i64 0, i32 1
  store i32 %115, ptr %116, align 4, !tbaa !113
  %117 = getelementptr inbounds %struct.coalesce_pair, ptr %109, i64 0, i32 2
  store i32 0, ptr %117, align 4, !tbaa !114
  store ptr %109, ptr %103, align 8, !tbaa !75
  br label %118

118:                                              ; preds = %113, %105
  %119 = load ptr, ptr %103, align 8, !tbaa !75
  br label %120

120:                                              ; preds = %118, %95
  %121 = phi ptr [ %119, %118 ], [ null, %95 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #19
  %122 = getelementptr inbounds %struct.coalesce_pair, ptr %121, i64 0, i32 2
  %123 = load i32, ptr %122, align 4, !tbaa !114
  %124 = icmp slt i32 %123, 2147483646
  br i1 %124, label %125, label %126

125:                                              ; preds = %120
  store i32 2147483646, ptr %122, align 4, !tbaa !114
  br label %126

126:                                              ; preds = %87, %120, %125
  %127 = load i32, ptr %80, align 8, !tbaa !86
  %128 = call zeroext i8 @bitmap_set_bit(ptr noundef %4, i32 noundef %127) #19
  %129 = load ptr, ptr %75, align 8, !tbaa !75
  %130 = getelementptr inbounds %struct.tree_ssa_name, ptr %129, i64 0, i32 3
  %131 = load i32, ptr %130, align 8, !tbaa !86
  %132 = call zeroext i8 @bitmap_set_bit(ptr noundef %4, i32 noundef %131) #19
  br label %133

133:                                              ; preds = %78, %126, %69, %51, %47, %43
  %134 = add nuw nsw i64 %30, 1
  br label %29, !llvm.loop !115

135:                                              ; preds = %39
  %136 = load ptr, ptr @coalesce_ssa_name.ssa_name_hash, align 8, !tbaa !75
  call void @htab_delete(ptr noundef %136) #19
  br label %137

137:                                              ; preds = %135, %14
  %138 = load ptr, ptr @dump_file, align 8, !tbaa !75
  %139 = icmp eq ptr %138, null
  br i1 %139, label %145, label %140, !prof !116

140:                                              ; preds = %137
  %141 = load i32, ptr @dump_flags, align 4, !tbaa !90
  %142 = and i32 %141, 8
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %145, label %144

144:                                              ; preds = %140
  call void @dump_var_map(ptr noundef nonnull %138, ptr noundef %23) #19
  br label %145

145:                                              ; preds = %144, %140, %137
  call void @partition_view_bitmap(ptr noundef %23, ptr noundef %4, i8 noundef zeroext 1) #19
  call void @bitmap_obstack_free(ptr noundef %4) #19
  %146 = getelementptr inbounds %struct._var_map, ptr %23, i64 0, i32 3
  %147 = load i32, ptr %146, align 8, !tbaa !117
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %149, label %162, !prof !101

149:                                              ; preds = %145
  %150 = load ptr, ptr %22, align 8, !tbaa !108
  %151 = icmp eq ptr %150, null
  br i1 %151, label %153, label %152

152:                                              ; preds = %149
  call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 243, ptr noundef nonnull @.str.2) #19
  br label %153

153:                                              ; preds = %152, %149
  %154 = load ptr, ptr %17, align 8, !tbaa !104
  call void @htab_delete(ptr noundef %154) #19
  %155 = load ptr, ptr %20, align 8, !tbaa !106
  %156 = icmp eq ptr %155, null
  br i1 %156, label %158, label %157

157:                                              ; preds = %153
  call void @free(ptr noundef %155)
  br label %158

158:                                              ; preds = %157, %153
  %159 = load i32, ptr %21, align 8, !tbaa !107
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %1497, label %161

161:                                              ; preds = %158
  call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 247, ptr noundef nonnull @.str.2) #19
  br label %1497

162:                                              ; preds = %145
  %163 = load ptr, ptr @dump_file, align 8, !tbaa !75
  %164 = icmp eq ptr %163, null
  br i1 %164, label %170, label %165, !prof !116

165:                                              ; preds = %162
  %166 = load i32, ptr @dump_flags, align 4, !tbaa !90
  %167 = and i32 %166, 8
  %168 = icmp eq i32 %167, 0
  br i1 %168, label %170, label %169

169:                                              ; preds = %165
  call void @dump_var_map(ptr noundef nonnull %163, ptr noundef %23) #19
  br label %170

170:                                              ; preds = %169, %165, %162
  %171 = call ptr @calculate_live_ranges(ptr noundef %23) #19
  %172 = load ptr, ptr @dump_file, align 8, !tbaa !75
  %173 = icmp eq ptr %172, null
  br i1 %173, label %179, label %174, !prof !116

174:                                              ; preds = %170
  %175 = load i32, ptr @dump_flags, align 4, !tbaa !90
  %176 = and i32 %175, 8
  %177 = icmp eq i32 %176, 0
  br i1 %177, label %179, label %178

178:                                              ; preds = %174
  call void @dump_live_info(ptr noundef nonnull %172, ptr noundef %171, i32 noundef 1) #19
  br label %179

179:                                              ; preds = %178, %174, %170
  %180 = load ptr, ptr %171, align 8, !tbaa !119
  %181 = getelementptr inbounds %struct._var_map, ptr %180, i64 0, i32 3
  %182 = load i32, ptr %181, align 8, !tbaa !117
  %183 = call ptr @xmalloc(i64 noundef 16) #19
  %184 = zext i32 %182 to i64
  %185 = call ptr @xcalloc(i64 noundef %184, i64 noundef 8) #19
  %186 = getelementptr inbounds %struct.ssa_conflicts_d, ptr %183, i64 0, i32 1
  store ptr %185, ptr %186, align 8, !tbaa !121
  store i32 %182, ptr %183, align 8, !tbaa !123
  %187 = getelementptr inbounds %struct._var_map, ptr %180, i64 0, i32 6
  %188 = load ptr, ptr %187, align 8, !tbaa !124
  %189 = icmp eq ptr %188, null
  br i1 %189, label %190, label %191, !prof !101

190:                                              ; preds = %179
  call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 677, ptr noundef nonnull @.str.2) #19
  br label %191

191:                                              ; preds = %190, %179
  %192 = call ptr @xmalloc(i64 noundef 24) #19
  %193 = getelementptr inbounds %struct.live_track_d, ptr %192, i64 0, i32 2
  store ptr %180, ptr %193, align 8, !tbaa !125
  %194 = getelementptr inbounds %struct._var_map, ptr %180, i64 0, i32 5
  %195 = load i32, ptr %194, align 8, !tbaa !127
  %196 = sext i32 %195 to i64
  %197 = shl nsw i64 %196, 3
  %198 = call ptr @xmalloc(i64 noundef %197) #19
  %199 = getelementptr inbounds %struct.live_track_d, ptr %192, i64 0, i32 1
  store ptr %198, ptr %199, align 8, !tbaa !128
  %200 = call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #19
  store ptr %200, ptr %192, align 8, !tbaa !129
  %201 = icmp sgt i32 %195, 0
  br i1 %201, label %202, label %211, !prof !130

202:                                              ; preds = %191
  %203 = zext nneg i32 %195 to i64
  br label %204

204:                                              ; preds = %202, %204
  %205 = phi i64 [ 0, %202 ], [ %209, %204 ]
  %206 = call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #19
  %207 = load ptr, ptr %199, align 8, !tbaa !128
  %208 = getelementptr inbounds ptr, ptr %207, i64 %205
  store ptr %206, ptr %208, align 8, !tbaa !75
  %209 = add nuw nsw i64 %205, 1
  %210 = icmp eq i64 %209, %203
  br i1 %210, label %211, label %204, !prof !131, !llvm.loop !132

211:                                              ; preds = %204, %191
  %212 = load ptr, ptr @cfun, align 8, !tbaa !75
  %213 = getelementptr inbounds %struct.function, ptr %212, i64 0, i32 1
  %214 = load ptr, ptr %213, align 8, !tbaa !133
  %215 = load ptr, ptr %214, align 8, !tbaa !134
  %216 = getelementptr inbounds %struct.basic_block_def, ptr %215, i64 0, i32 6
  %217 = load ptr, ptr %216, align 8, !tbaa !136
  %218 = getelementptr inbounds %struct.control_flow_graph, ptr %214, i64 0, i32 1
  %219 = load ptr, ptr %218, align 8, !tbaa !138
  %220 = icmp eq ptr %217, %219
  br i1 %220, label %1034, label %221, !prof !139

221:                                              ; preds = %211
  %222 = getelementptr inbounds %struct.tree_live_info_d, ptr %171, i64 0, i32 6
  br label %223

223:                                              ; preds = %221, %1024
  %224 = phi ptr [ %217, %221 ], [ %1027, %1024 ]
  %225 = load ptr, ptr %222, align 8, !tbaa !140
  %226 = icmp eq ptr %225, null
  br i1 %226, label %227, label %228, !prof !141

227:                                              ; preds = %223
  call void @fancy_abort(ptr noundef nonnull @.str.11, i32 noundef 299, ptr noundef nonnull @.str.2) #19
  br label %228

228:                                              ; preds = %227, %223
  %229 = load ptr, ptr @cfun, align 8, !tbaa !75
  %230 = getelementptr inbounds %struct.function, ptr %229, i64 0, i32 1
  %231 = load ptr, ptr %230, align 8, !tbaa !133
  %232 = load ptr, ptr %231, align 8, !tbaa !134
  %233 = icmp eq ptr %232, %224
  br i1 %233, label %234, label %235, !prof !141

234:                                              ; preds = %228
  call void @fancy_abort(ptr noundef nonnull @.str.11, i32 noundef 300, ptr noundef nonnull @.str.2) #19
  br label %235

235:                                              ; preds = %234, %228
  %236 = load ptr, ptr @cfun, align 8, !tbaa !75
  %237 = getelementptr inbounds %struct.function, ptr %236, i64 0, i32 1
  %238 = load ptr, ptr %237, align 8, !tbaa !133
  %239 = getelementptr inbounds %struct.control_flow_graph, ptr %238, i64 0, i32 1
  %240 = load ptr, ptr %239, align 8, !tbaa !138
  %241 = icmp eq ptr %240, %224
  br i1 %241, label %242, label %243, !prof !141

242:                                              ; preds = %235
  call void @fancy_abort(ptr noundef nonnull @.str.11, i32 noundef 301, ptr noundef nonnull @.str.2) #19
  br label %243

243:                                              ; preds = %242, %235
  %244 = load ptr, ptr %222, align 8, !tbaa !140
  %245 = getelementptr inbounds %struct.basic_block_def, ptr %224, i64 0, i32 9
  %246 = load i32, ptr %245, align 8, !tbaa !142
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds ptr, ptr %244, i64 %247
  %249 = load ptr, ptr %248, align 8, !tbaa !75
  %250 = load ptr, ptr %249, align 8, !tbaa !143
  %251 = icmp eq ptr %250, null
  %252 = select i1 %251, ptr @bitmap_zero_bits, ptr %250, !prof !145
  %253 = getelementptr inbounds %struct.bitmap_element_def, ptr %252, i64 0, i32 2
  %254 = load i32, ptr %253, align 8, !tbaa !146
  %255 = shl i32 %254, 7
  %256 = getelementptr inbounds %struct.bitmap_element_def, ptr %252, i64 0, i32 3
  %257 = load i64, ptr %256, align 8, !tbaa !148
  %258 = icmp eq i64 %257, 0
  %259 = zext i1 %258 to i32
  %260 = or disjoint i32 %255, %259
  br label %261

261:                                              ; preds = %346, %243
  %262 = phi i64 [ %257, %243 ], [ %352, %346 ]
  %263 = phi i32 [ 0, %243 ], [ %318, %346 ]
  %264 = phi i32 [ %260, %243 ], [ %353, %346 ]
  %265 = phi ptr [ %252, %243 ], [ %320, %346 ]
  %266 = icmp eq i64 %262, 0
  br i1 %266, label %281, label %267, !prof !149

267:                                              ; preds = %295, %261
  %268 = phi i64 [ %262, %261 ], [ %300, %295 ]
  %269 = phi i32 [ %263, %261 ], [ %296, %295 ]
  %270 = phi i32 [ %264, %261 ], [ %297, %295 ]
  %271 = phi ptr [ %265, %261 ], [ %288, %295 ]
  %272 = and i64 %268, 1
  %273 = icmp eq i64 %272, 0
  br i1 %273, label %274, label %316, !prof !150

274:                                              ; preds = %267, %274
  %275 = phi i32 [ %278, %274 ], [ %270, %267 ]
  %276 = phi i64 [ %277, %274 ], [ %268, %267 ]
  %277 = lshr exact i64 %276, 1
  %278 = add i32 %275, 1
  %279 = and i64 %276, 2
  %280 = icmp eq i64 %279, 0
  br i1 %280, label %274, label %316, !prof !151, !llvm.loop !152

281:                                              ; preds = %261
  %282 = add i32 %264, 63
  %283 = and i32 %282, -64
  %284 = add i32 %263, 1
  br label %285

285:                                              ; preds = %312, %281
  %286 = phi i64 [ %262, %281 ], [ %307, %312 ]
  %287 = phi i32 [ %283, %281 ], [ %315, %312 ]
  %288 = phi ptr [ %265, %281 ], [ %310, %312 ]
  %289 = phi i32 [ %284, %281 ], [ 0, %312 ]
  %290 = icmp eq i32 %289, 2
  br i1 %290, label %306, label %291, !prof !153

291:                                              ; preds = %285
  %292 = add i32 %287, 128
  %293 = shl i32 %289, 6
  %294 = sub i32 %292, %293
  br label %295

295:                                              ; preds = %291, %302
  %296 = phi i32 [ %304, %302 ], [ %289, %291 ]
  %297 = phi i32 [ %303, %302 ], [ %287, %291 ]
  %298 = zext i32 %296 to i64
  %299 = getelementptr inbounds %struct.bitmap_element_def, ptr %288, i64 0, i32 3, i64 %298
  %300 = load i64, ptr %299, align 8, !tbaa !148
  %301 = icmp eq i64 %300, 0
  br i1 %301, label %302, label %267, !prof !154

302:                                              ; preds = %295
  %303 = add i32 %297, 64
  %304 = add i32 %296, 1
  %305 = icmp eq i32 %304, 2
  br i1 %305, label %306, label %295, !prof !155, !llvm.loop !156

306:                                              ; preds = %302, %285
  %307 = phi i64 [ %286, %285 ], [ %300, %302 ]
  %308 = phi i32 [ %287, %285 ], [ %294, %302 ]
  %309 = phi i32 [ %289, %285 ], [ 2, %302 ]
  %310 = load ptr, ptr %288, align 8, !tbaa !157
  %311 = icmp eq ptr %310, null
  br i1 %311, label %316, label %312, !prof !158

312:                                              ; preds = %306
  %313 = getelementptr inbounds %struct.bitmap_element_def, ptr %310, i64 0, i32 2
  %314 = load i32, ptr %313, align 8, !tbaa !146
  %315 = shl i32 %314, 7
  br label %285, !llvm.loop !159

316:                                              ; preds = %306, %274, %267
  %317 = phi i64 [ %268, %267 ], [ %277, %274 ], [ %307, %306 ]
  %318 = phi i32 [ %269, %267 ], [ %269, %274 ], [ %309, %306 ]
  %319 = phi i32 [ %270, %267 ], [ %278, %274 ], [ %308, %306 ]
  %320 = phi ptr [ %271, %267 ], [ %271, %274 ], [ %310, %306 ]
  %321 = phi i1 [ false, %267 ], [ false, %274 ], [ true, %306 ]
  br i1 %321, label %354, label %322, !prof !160

322:                                              ; preds = %316
  %323 = load ptr, ptr %193, align 8, !tbaa !125
  %324 = icmp sgt i32 %319, -1
  br i1 %324, label %325, label %329, !prof !161

325:                                              ; preds = %322
  %326 = getelementptr inbounds %struct._var_map, ptr %323, i64 0, i32 3
  %327 = load i32, ptr %326, align 8, !tbaa !117
  %328 = icmp slt i32 %327, %319
  br i1 %328, label %329, label %330, !prof !162

329:                                              ; preds = %325, %322
  call void @fancy_abort(ptr noundef nonnull @.str.11, i32 noundef 176, ptr noundef nonnull @.str.2) #19
  br label %330

330:                                              ; preds = %329, %325
  %331 = getelementptr inbounds %struct._var_map, ptr %323, i64 0, i32 6
  %332 = load ptr, ptr %331, align 8, !tbaa !124
  %333 = sext i32 %319 to i64
  %334 = getelementptr inbounds i32, ptr %332, i64 %333
  %335 = load i32, ptr %334, align 4, !tbaa !90
  %336 = load ptr, ptr %192, align 8, !tbaa !129
  %337 = call i32 @bitmap_bit_p(ptr noundef %336, i32 noundef %335) #19
  %338 = icmp eq i32 %337, 0
  br i1 %338, label %339, label %346, !prof !163

339:                                              ; preds = %330
  %340 = load ptr, ptr %192, align 8, !tbaa !129
  %341 = call zeroext i8 @bitmap_set_bit(ptr noundef %340, i32 noundef %335) #19
  %342 = load ptr, ptr %199, align 8, !tbaa !128
  %343 = sext i32 %335 to i64
  %344 = getelementptr inbounds ptr, ptr %342, i64 %343
  %345 = load ptr, ptr %344, align 8, !tbaa !75
  call void @bitmap_clear(ptr noundef %345) #19
  br label %346

346:                                              ; preds = %339, %330
  %347 = load ptr, ptr %199, align 8, !tbaa !128
  %348 = sext i32 %335 to i64
  %349 = getelementptr inbounds ptr, ptr %347, i64 %348
  %350 = load ptr, ptr %349, align 8, !tbaa !75
  %351 = call zeroext i8 @bitmap_set_bit(ptr noundef %350, i32 noundef %319) #19
  %352 = lshr i64 %317, 1
  %353 = add i32 %319, 1
  br label %261, !llvm.loop !164

354:                                              ; preds = %316
  %355 = getelementptr inbounds %struct.basic_block_def, ptr %224, i64 0, i32 13
  %356 = load i32, ptr %355, align 8, !tbaa !165, !noalias !166
  %357 = and i32 %356, 512
  %358 = icmp eq i32 %357, 0
  br i1 %358, label %359, label %365, !prof !169

359:                                              ; preds = %354
  %360 = getelementptr inbounds %struct.basic_block_def, ptr %224, i64 0, i32 7
  %361 = load ptr, ptr %360, align 8, !tbaa !86, !noalias !166
  %362 = icmp eq ptr %361, null
  br i1 %362, label %365, label %363, !prof !141

363:                                              ; preds = %359
  %364 = load ptr, ptr %361, align 8, !tbaa !170, !noalias !166
  br label %365

365:                                              ; preds = %363, %359, %354
  %366 = phi ptr [ %364, %363 ], [ null, %359 ], [ null, %354 ]
  %367 = icmp eq ptr %366, null
  br i1 %367, label %371, label %368, !prof !141

368:                                              ; preds = %365
  %369 = getelementptr inbounds %struct.gimple_seq_d, ptr %366, i64 0, i32 1
  %370 = load ptr, ptr %369, align 8, !tbaa !172, !noalias !166
  br label %371

371:                                              ; preds = %368, %365
  %372 = phi ptr [ %370, %368 ], [ null, %365 ]
  %373 = icmp eq ptr %372, null
  br i1 %373, label %791, label %374, !prof !174

374:                                              ; preds = %371, %787
  %375 = phi ptr [ %789, %787 ], [ %372, %371 ]
  %376 = load ptr, ptr %375, align 8, !tbaa !175
  %377 = load i32, ptr %376, align 8
  %378 = trunc i32 %377 to i8
  switch i8 %378, label %465 [
    i8 6, label %379
    i8 2, label %787
  ], !prof !177

379:                                              ; preds = %374
  %380 = and i32 %377, 255
  %381 = zext nneg i32 %380 to i64
  %382 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %381
  %383 = load i32, ptr %382, align 4, !tbaa !90
  %384 = zext i32 %383 to i64
  %385 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %384
  %386 = load i64, ptr %385, align 8, !tbaa !148
  %387 = icmp eq i64 %386, 0
  br i1 %387, label %388, label %389, !prof !178

388:                                              ; preds = %379
  call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1622, ptr noundef nonnull @.str.2) #19
  br label %389

389:                                              ; preds = %388, %379
  %390 = getelementptr inbounds i8, ptr %376, i64 %386
  %391 = load ptr, ptr %390, align 8, !tbaa !75
  %392 = load i32, ptr %376, align 8
  %393 = and i32 %392, 255
  %394 = add nsw i32 %393, -10
  %395 = icmp ult i32 %394, -9
  br i1 %395, label %409, label %396, !prof !178

396:                                              ; preds = %389
  %397 = zext nneg i32 %393 to i64
  %398 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %397
  %399 = load i32, ptr %398, align 4, !tbaa !90
  %400 = zext i32 %399 to i64
  %401 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %400
  %402 = load i64, ptr %401, align 8, !tbaa !148
  %403 = icmp eq i64 %402, 0
  br i1 %403, label %404, label %405, !prof !178

404:                                              ; preds = %396
  call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1622, ptr noundef nonnull @.str.2) #19
  br label %405

405:                                              ; preds = %404, %396
  %406 = getelementptr inbounds i8, ptr %376, i64 %402
  %407 = getelementptr inbounds ptr, ptr %406, i64 1
  %408 = load ptr, ptr %407, align 8, !tbaa !75
  br label %409

409:                                              ; preds = %405, %389
  %410 = phi ptr [ %408, %405 ], [ null, %389 ]
  %411 = call zeroext i8 @gimple_assign_copy_p(ptr noundef nonnull %376) #19
  %412 = icmp eq i8 %411, 0
  br i1 %412, label %465, label %413, !prof !179

413:                                              ; preds = %409
  %414 = load i64, ptr %391, align 8
  %415 = and i64 %414, 65535
  %416 = icmp eq i64 %415, 141
  br i1 %416, label %417, label %465, !prof !180

417:                                              ; preds = %413
  %418 = load i64, ptr %410, align 8
  %419 = and i64 %418, 65535
  %420 = icmp eq i64 %419, 141
  br i1 %420, label %421, label %465

421:                                              ; preds = %417
  %422 = load ptr, ptr %193, align 8, !tbaa !125
  %423 = load ptr, ptr %422, align 8, !tbaa !181
  %424 = getelementptr inbounds %struct.tree_ssa_name, ptr %410, i64 0, i32 3
  %425 = load i32, ptr %424, align 8, !tbaa !86
  %426 = zext i32 %425 to i64
  %427 = getelementptr inbounds %struct.partition_def, ptr %423, i64 0, i32 1, i64 %426
  %428 = load i32, ptr %427, align 8, !tbaa !182
  %429 = getelementptr inbounds %struct._var_map, ptr %422, i64 0, i32 1
  %430 = load ptr, ptr %429, align 8, !tbaa !184
  %431 = icmp eq ptr %430, null
  br i1 %431, label %436, label %432

432:                                              ; preds = %421
  %433 = sext i32 %428 to i64
  %434 = getelementptr inbounds i32, ptr %430, i64 %433
  %435 = load i32, ptr %434, align 4, !tbaa !90
  br label %436

436:                                              ; preds = %432, %421
  %437 = phi i32 [ %435, %432 ], [ %428, %421 ]
  %438 = icmp eq i32 %437, -1
  br i1 %438, label %465, label %439

439:                                              ; preds = %436
  %440 = icmp sgt i32 %437, -1
  br i1 %440, label %441, label %445

441:                                              ; preds = %439
  %442 = getelementptr inbounds %struct._var_map, ptr %422, i64 0, i32 3
  %443 = load i32, ptr %442, align 8, !tbaa !117
  %444 = icmp slt i32 %443, %437
  br i1 %444, label %445, label %446

445:                                              ; preds = %441, %439
  call void @fancy_abort(ptr noundef nonnull @.str.11, i32 noundef 176, ptr noundef nonnull @.str.2) #19
  br label %446

446:                                              ; preds = %445, %441
  %447 = getelementptr inbounds %struct._var_map, ptr %422, i64 0, i32 6
  %448 = load ptr, ptr %447, align 8, !tbaa !124
  %449 = sext i32 %437 to i64
  %450 = getelementptr inbounds i32, ptr %448, i64 %449
  %451 = load i32, ptr %450, align 4, !tbaa !90
  %452 = load ptr, ptr %199, align 8, !tbaa !128
  %453 = sext i32 %451 to i64
  %454 = getelementptr inbounds ptr, ptr %452, i64 %453
  %455 = load ptr, ptr %454, align 8, !tbaa !75
  %456 = call zeroext i8 @bitmap_clear_bit(ptr noundef %455, i32 noundef %437) #19
  %457 = load ptr, ptr %199, align 8, !tbaa !128
  %458 = getelementptr inbounds ptr, ptr %457, i64 %453
  %459 = load ptr, ptr %458, align 8, !tbaa !75
  %460 = load ptr, ptr %459, align 8, !tbaa !143
  %461 = icmp eq ptr %460, null
  br i1 %461, label %462, label %465

462:                                              ; preds = %446
  %463 = load ptr, ptr %192, align 8, !tbaa !129
  %464 = call zeroext i8 @bitmap_clear_bit(ptr noundef %463, i32 noundef %451) #19
  br label %465

465:                                              ; preds = %374, %462, %446, %436, %417, %413, %409
  %466 = load i32, ptr %376, align 8
  %467 = and i32 %466, 255
  %468 = add nsw i32 %467, -10
  %469 = icmp ult i32 %468, -9
  br i1 %469, label %473, label %470, !prof !185

470:                                              ; preds = %465
  %471 = getelementptr inbounds %struct.gimple_statement_with_ops_base, ptr %376, i64 0, i32 1
  %472 = load ptr, ptr %471, align 8, !tbaa !86
  br label %473

473:                                              ; preds = %470, %465
  %474 = phi ptr [ %472, %470 ], [ null, %465 ]
  %475 = icmp eq ptr %474, null
  br i1 %475, label %486, label %476, !prof !186

476:                                              ; preds = %473
  %477 = and i32 %466, 254
  %478 = add nsw i32 %477, -10
  %479 = icmp ult i32 %478, -4
  br i1 %479, label %486, label %480, !prof !187

480:                                              ; preds = %476
  %481 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %376, i64 0, i32 1
  %482 = load ptr, ptr %481, align 8, !tbaa !86
  %483 = icmp eq ptr %482, null
  br i1 %483, label %486, label %484, !prof !188

484:                                              ; preds = %480
  %485 = load ptr, ptr %474, align 8, !tbaa !189
  br label %486

486:                                              ; preds = %484, %480, %476, %473
  %487 = phi ptr [ %474, %473 ], [ %474, %476 ], [ %474, %480 ], [ %485, %484 ]
  %488 = icmp eq ptr %487, null
  br i1 %488, label %494, label %489, !prof !191

489:                                              ; preds = %486
  %490 = getelementptr inbounds %struct.def_optype_d, ptr %487, i64 0, i32 1
  %491 = load ptr, ptr %490, align 8, !tbaa !192
  %492 = load ptr, ptr %491, align 8, !tbaa !75
  %493 = load ptr, ptr %487, align 8, !tbaa !189
  br label %494

494:                                              ; preds = %489, %486
  %495 = phi ptr [ %493, %489 ], [ %487, %486 ]
  %496 = phi i8 [ 0, %489 ], [ 1, %486 ]
  %497 = phi ptr [ %492, %489 ], [ null, %486 ]
  br i1 %488, label %686, label %498, !prof !191

498:                                              ; preds = %494, %681
  %499 = phi ptr [ %684, %681 ], [ %497, %494 ]
  %500 = phi i8 [ %683, %681 ], [ %496, %494 ]
  %501 = phi ptr [ %682, %681 ], [ %495, %494 ]
  %502 = load ptr, ptr %193, align 8, !tbaa !125
  %503 = load i64, ptr %499, align 8
  %504 = and i64 %503, 65535
  %505 = icmp eq i64 %504, 141
  br i1 %505, label %507, label %506, !prof !193

506:                                              ; preds = %498
  call void @fancy_abort(ptr noundef nonnull @.str.11, i32 noundef 147, ptr noundef nonnull @.str.2) #19
  br label %507

507:                                              ; preds = %506, %498
  %508 = load ptr, ptr %502, align 8, !tbaa !181
  %509 = getelementptr inbounds %struct.tree_ssa_name, ptr %499, i64 0, i32 3
  %510 = load i32, ptr %509, align 8, !tbaa !86
  %511 = zext i32 %510 to i64
  %512 = getelementptr inbounds %struct.partition_def, ptr %508, i64 0, i32 1, i64 %511
  %513 = load i32, ptr %512, align 8, !tbaa !182
  %514 = getelementptr inbounds %struct._var_map, ptr %502, i64 0, i32 1
  %515 = load ptr, ptr %514, align 8, !tbaa !184
  %516 = icmp eq ptr %515, null
  br i1 %516, label %521, label %517, !prof !194

517:                                              ; preds = %507
  %518 = sext i32 %513 to i64
  %519 = getelementptr inbounds i32, ptr %515, i64 %518
  %520 = load i32, ptr %519, align 4, !tbaa !90
  br label %521

521:                                              ; preds = %517, %507
  %522 = phi i32 [ %520, %517 ], [ %513, %507 ]
  %523 = icmp eq i32 %522, -1
  br i1 %523, label %674, label %524, !prof !195

524:                                              ; preds = %521
  %525 = load ptr, ptr %193, align 8, !tbaa !125
  %526 = icmp sgt i32 %522, -1
  br i1 %526, label %527, label %531, !prof !196

527:                                              ; preds = %524
  %528 = getelementptr inbounds %struct._var_map, ptr %525, i64 0, i32 3
  %529 = load i32, ptr %528, align 8, !tbaa !117
  %530 = icmp slt i32 %529, %522
  br i1 %530, label %531, label %532, !prof !197

531:                                              ; preds = %527, %524
  call void @fancy_abort(ptr noundef nonnull @.str.11, i32 noundef 176, ptr noundef nonnull @.str.2) #19
  br label %532

532:                                              ; preds = %531, %527
  %533 = getelementptr inbounds %struct._var_map, ptr %525, i64 0, i32 6
  %534 = load ptr, ptr %533, align 8, !tbaa !124
  %535 = sext i32 %522 to i64
  %536 = getelementptr inbounds i32, ptr %534, i64 %535
  %537 = load i32, ptr %536, align 4, !tbaa !90
  %538 = load ptr, ptr %199, align 8, !tbaa !128
  %539 = sext i32 %537 to i64
  %540 = getelementptr inbounds ptr, ptr %538, i64 %539
  %541 = load ptr, ptr %540, align 8, !tbaa !75
  %542 = call zeroext i8 @bitmap_clear_bit(ptr noundef %541, i32 noundef %522) #19
  %543 = load ptr, ptr %199, align 8, !tbaa !128
  %544 = getelementptr inbounds ptr, ptr %543, i64 %539
  %545 = load ptr, ptr %544, align 8, !tbaa !75
  %546 = load ptr, ptr %545, align 8, !tbaa !143
  %547 = icmp eq ptr %546, null
  br i1 %547, label %548, label %551, !prof !198

548:                                              ; preds = %532
  %549 = load ptr, ptr %192, align 8, !tbaa !129
  %550 = call zeroext i8 @bitmap_clear_bit(ptr noundef %549, i32 noundef %537) #19
  br label %551

551:                                              ; preds = %548, %532
  %552 = load ptr, ptr %193, align 8, !tbaa !125
  br i1 %526, label %553, label %557, !prof !196

553:                                              ; preds = %551
  %554 = getelementptr inbounds %struct._var_map, ptr %552, i64 0, i32 3
  %555 = load i32, ptr %554, align 8, !tbaa !117
  %556 = icmp slt i32 %555, %522
  br i1 %556, label %557, label %558, !prof !197

557:                                              ; preds = %553, %551
  call void @fancy_abort(ptr noundef nonnull @.str.11, i32 noundef 176, ptr noundef nonnull @.str.2) #19
  br label %558

558:                                              ; preds = %557, %553
  %559 = getelementptr inbounds %struct._var_map, ptr %552, i64 0, i32 6
  %560 = load ptr, ptr %559, align 8, !tbaa !124
  %561 = getelementptr inbounds i32, ptr %560, i64 %535
  %562 = load i32, ptr %561, align 4, !tbaa !90
  %563 = load ptr, ptr %192, align 8, !tbaa !129
  %564 = call i32 @bitmap_bit_p(ptr noundef %563, i32 noundef %562) #19
  %565 = icmp eq i32 %564, 0
  br i1 %565, label %674, label %566, !prof !198

566:                                              ; preds = %558
  %567 = load ptr, ptr %199, align 8, !tbaa !128
  %568 = sext i32 %562 to i64
  %569 = getelementptr inbounds ptr, ptr %567, i64 %568
  %570 = load ptr, ptr %569, align 8, !tbaa !75
  %571 = load ptr, ptr %570, align 8, !tbaa !143
  %572 = icmp eq ptr %571, null
  %573 = select i1 %572, ptr @bitmap_zero_bits, ptr %571, !prof !199
  %574 = getelementptr inbounds %struct.bitmap_element_def, ptr %573, i64 0, i32 2
  %575 = load i32, ptr %574, align 8, !tbaa !146
  %576 = shl i32 %575, 7
  %577 = getelementptr inbounds %struct.bitmap_element_def, ptr %573, i64 0, i32 3
  %578 = load i64, ptr %577, align 8, !tbaa !148
  %579 = icmp eq i64 %578, 0
  %580 = zext i1 %579 to i32
  %581 = or disjoint i32 %576, %580
  %582 = zext i32 %522 to i64
  br label %583

583:                                              ; preds = %667, %566
  %584 = phi i64 [ %578, %566 ], [ %672, %667 ]
  %585 = phi i32 [ 0, %566 ], [ %640, %667 ]
  %586 = phi i32 [ %581, %566 ], [ %673, %667 ]
  %587 = phi ptr [ %573, %566 ], [ %642, %667 ]
  %588 = icmp eq i64 %584, 0
  br i1 %588, label %603, label %589, !prof !200

589:                                              ; preds = %617, %583
  %590 = phi i64 [ %584, %583 ], [ %622, %617 ]
  %591 = phi i32 [ %585, %583 ], [ %618, %617 ]
  %592 = phi i32 [ %586, %583 ], [ %619, %617 ]
  %593 = phi ptr [ %587, %583 ], [ %610, %617 ]
  %594 = and i64 %590, 1
  %595 = icmp eq i64 %594, 0
  br i1 %595, label %596, label %638, !prof !201

596:                                              ; preds = %589, %596
  %597 = phi i32 [ %600, %596 ], [ %592, %589 ]
  %598 = phi i64 [ %599, %596 ], [ %590, %589 ]
  %599 = lshr exact i64 %598, 1
  %600 = add i32 %597, 1
  %601 = and i64 %598, 2
  %602 = icmp eq i64 %601, 0
  br i1 %602, label %596, label %638, !prof !202, !llvm.loop !152

603:                                              ; preds = %583
  %604 = add i32 %586, 63
  %605 = and i32 %604, -64
  %606 = add i32 %585, 1
  br label %607

607:                                              ; preds = %634, %603
  %608 = phi i64 [ %584, %603 ], [ %629, %634 ]
  %609 = phi i32 [ %605, %603 ], [ %637, %634 ]
  %610 = phi ptr [ %587, %603 ], [ %632, %634 ]
  %611 = phi i32 [ %606, %603 ], [ 0, %634 ]
  %612 = icmp eq i32 %611, 2
  br i1 %612, label %628, label %613, !prof !203

613:                                              ; preds = %607
  %614 = add i32 %609, 128
  %615 = shl i32 %611, 6
  %616 = sub i32 %614, %615
  br label %617

617:                                              ; preds = %624, %613
  %618 = phi i32 [ %626, %624 ], [ %611, %613 ]
  %619 = phi i32 [ %625, %624 ], [ %609, %613 ]
  %620 = zext i32 %618 to i64
  %621 = getelementptr inbounds %struct.bitmap_element_def, ptr %610, i64 0, i32 3, i64 %620
  %622 = load i64, ptr %621, align 8, !tbaa !148
  %623 = icmp eq i64 %622, 0
  br i1 %623, label %624, label %589, !prof !204

624:                                              ; preds = %617
  %625 = add i32 %619, 64
  %626 = add i32 %618, 1
  %627 = icmp eq i32 %626, 2
  br i1 %627, label %628, label %617, !prof !201, !llvm.loop !156

628:                                              ; preds = %624, %607
  %629 = phi i64 [ %608, %607 ], [ %622, %624 ]
  %630 = phi i32 [ %609, %607 ], [ %616, %624 ]
  %631 = phi i32 [ %611, %607 ], [ 2, %624 ]
  %632 = load ptr, ptr %610, align 8, !tbaa !157
  %633 = icmp eq ptr %632, null
  br i1 %633, label %638, label %634, !prof !205

634:                                              ; preds = %628
  %635 = getelementptr inbounds %struct.bitmap_element_def, ptr %632, i64 0, i32 2
  %636 = load i32, ptr %635, align 8, !tbaa !146
  %637 = shl i32 %636, 7
  br label %607, !llvm.loop !159

638:                                              ; preds = %628, %596, %589
  %639 = phi i64 [ %590, %589 ], [ %599, %596 ], [ %629, %628 ]
  %640 = phi i32 [ %591, %589 ], [ %591, %596 ], [ %631, %628 ]
  %641 = phi i32 [ %592, %589 ], [ %600, %596 ], [ %630, %628 ]
  %642 = phi ptr [ %593, %589 ], [ %593, %596 ], [ %632, %628 ]
  %643 = phi i1 [ false, %589 ], [ false, %596 ], [ true, %628 ]
  br i1 %643, label %674, label %644, !prof !206

644:                                              ; preds = %638
  %645 = load ptr, ptr %186, align 8, !tbaa !121
  %646 = getelementptr inbounds ptr, ptr %645, i64 %582
  %647 = load ptr, ptr %646, align 8, !tbaa !75
  %648 = icmp eq ptr %647, null
  br i1 %648, label %649, label %653, !prof !205

649:                                              ; preds = %644
  %650 = call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #19
  %651 = load ptr, ptr %186, align 8, !tbaa !121
  %652 = getelementptr inbounds ptr, ptr %651, i64 %582
  store ptr %650, ptr %652, align 8, !tbaa !75
  br label %653

653:                                              ; preds = %649, %644
  %654 = load ptr, ptr %186, align 8, !tbaa !121
  %655 = getelementptr inbounds ptr, ptr %654, i64 %582
  %656 = load ptr, ptr %655, align 8, !tbaa !75
  %657 = call zeroext i8 @bitmap_set_bit(ptr noundef %656, i32 noundef %641) #19
  %658 = load ptr, ptr %186, align 8, !tbaa !121
  %659 = zext i32 %641 to i64
  %660 = getelementptr inbounds ptr, ptr %658, i64 %659
  %661 = load ptr, ptr %660, align 8, !tbaa !75
  %662 = icmp eq ptr %661, null
  br i1 %662, label %663, label %667, !prof !205

663:                                              ; preds = %653
  %664 = call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #19
  %665 = load ptr, ptr %186, align 8, !tbaa !121
  %666 = getelementptr inbounds ptr, ptr %665, i64 %659
  store ptr %664, ptr %666, align 8, !tbaa !75
  br label %667

667:                                              ; preds = %663, %653
  %668 = load ptr, ptr %186, align 8, !tbaa !121
  %669 = getelementptr inbounds ptr, ptr %668, i64 %659
  %670 = load ptr, ptr %669, align 8, !tbaa !75
  %671 = call zeroext i8 @bitmap_set_bit(ptr noundef %670, i32 noundef %522) #19
  %672 = lshr i64 %639, 1
  %673 = add i32 %641, 1
  br label %583, !llvm.loop !207

674:                                              ; preds = %638, %558, %521
  %675 = icmp eq ptr %501, null
  br i1 %675, label %681, label %676, !prof !208

676:                                              ; preds = %674
  %677 = getelementptr inbounds %struct.def_optype_d, ptr %501, i64 0, i32 1
  %678 = load ptr, ptr %677, align 8, !tbaa !192
  %679 = load ptr, ptr %678, align 8, !tbaa !75
  %680 = load ptr, ptr %501, align 8, !tbaa !189
  br label %681

681:                                              ; preds = %676, %674
  %682 = phi ptr [ %680, %676 ], [ %501, %674 ]
  %683 = phi i8 [ %500, %676 ], [ 1, %674 ]
  %684 = phi ptr [ %679, %676 ], [ null, %674 ]
  %685 = icmp eq i8 %683, 0
  br i1 %685, label %498, label %686, !prof !209, !llvm.loop !210

686:                                              ; preds = %681, %494
  %687 = load i32, ptr %376, align 8
  %688 = and i32 %687, 255
  %689 = add nsw i32 %688, -10
  %690 = icmp ult i32 %689, -9
  br i1 %690, label %694, label %691, !prof !185

691:                                              ; preds = %686
  %692 = getelementptr inbounds %struct.gimple_statement_with_ops_base, ptr %376, i64 0, i32 2
  %693 = load ptr, ptr %692, align 8, !tbaa !86
  br label %694

694:                                              ; preds = %691, %686
  %695 = phi ptr [ %693, %691 ], [ null, %686 ]
  %696 = icmp eq ptr %695, null
  br i1 %696, label %707, label %697, !prof !211

697:                                              ; preds = %694
  %698 = and i32 %687, 254
  %699 = add nsw i32 %698, -10
  %700 = icmp ult i32 %699, -4
  br i1 %700, label %707, label %701, !prof !212

701:                                              ; preds = %697
  %702 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %376, i64 0, i32 2
  %703 = load ptr, ptr %702, align 8, !tbaa !86
  %704 = icmp eq ptr %703, null
  br i1 %704, label %707, label %705, !prof !213

705:                                              ; preds = %701
  %706 = load ptr, ptr %695, align 8, !tbaa !214
  br label %707

707:                                              ; preds = %705, %701, %697, %694
  %708 = phi ptr [ %695, %694 ], [ %695, %697 ], [ %695, %701 ], [ %706, %705 ]
  %709 = icmp eq ptr %708, null
  br i1 %709, label %715, label %710, !prof !216

710:                                              ; preds = %707
  %711 = getelementptr inbounds %struct.use_optype_d, ptr %708, i64 0, i32 1, i32 3
  %712 = load ptr, ptr %711, align 8, !tbaa !217
  %713 = load ptr, ptr %712, align 8, !tbaa !75
  %714 = load ptr, ptr %708, align 8, !tbaa !214
  br label %715

715:                                              ; preds = %710, %707
  %716 = phi ptr [ %714, %710 ], [ %708, %707 ]
  %717 = phi i8 [ 0, %710 ], [ 1, %707 ]
  %718 = phi ptr [ %713, %710 ], [ null, %707 ]
  br i1 %709, label %787, label %719, !prof !218

719:                                              ; preds = %715, %782
  %720 = phi ptr [ %785, %782 ], [ %718, %715 ]
  %721 = phi i8 [ %784, %782 ], [ %717, %715 ]
  %722 = phi ptr [ %783, %782 ], [ %716, %715 ]
  %723 = load ptr, ptr %193, align 8, !tbaa !125
  %724 = load i64, ptr %720, align 8
  %725 = and i64 %724, 65535
  %726 = icmp eq i64 %725, 141
  br i1 %726, label %728, label %727, !prof !219

727:                                              ; preds = %719
  call void @fancy_abort(ptr noundef nonnull @.str.11, i32 noundef 147, ptr noundef nonnull @.str.2) #19
  br label %728

728:                                              ; preds = %727, %719
  %729 = load ptr, ptr %723, align 8, !tbaa !181
  %730 = getelementptr inbounds %struct.tree_ssa_name, ptr %720, i64 0, i32 3
  %731 = load i32, ptr %730, align 8, !tbaa !86
  %732 = zext i32 %731 to i64
  %733 = getelementptr inbounds %struct.partition_def, ptr %729, i64 0, i32 1, i64 %732
  %734 = load i32, ptr %733, align 8, !tbaa !182
  %735 = getelementptr inbounds %struct._var_map, ptr %723, i64 0, i32 1
  %736 = load ptr, ptr %735, align 8, !tbaa !184
  %737 = icmp eq ptr %736, null
  br i1 %737, label %742, label %738, !prof !220

738:                                              ; preds = %728
  %739 = sext i32 %734 to i64
  %740 = getelementptr inbounds i32, ptr %736, i64 %739
  %741 = load i32, ptr %740, align 4, !tbaa !90
  br label %742

742:                                              ; preds = %738, %728
  %743 = phi i32 [ %741, %738 ], [ %734, %728 ]
  %744 = icmp eq i32 %743, -1
  br i1 %744, label %775, label %745, !prof !221

745:                                              ; preds = %742
  %746 = load ptr, ptr %193, align 8, !tbaa !125
  %747 = icmp sgt i32 %743, -1
  br i1 %747, label %748, label %752, !prof !222

748:                                              ; preds = %745
  %749 = getelementptr inbounds %struct._var_map, ptr %746, i64 0, i32 3
  %750 = load i32, ptr %749, align 8, !tbaa !117
  %751 = icmp slt i32 %750, %743
  br i1 %751, label %752, label %753, !prof !223

752:                                              ; preds = %748, %745
  call void @fancy_abort(ptr noundef nonnull @.str.11, i32 noundef 176, ptr noundef nonnull @.str.2) #19
  br label %753

753:                                              ; preds = %752, %748
  %754 = getelementptr inbounds %struct._var_map, ptr %746, i64 0, i32 6
  %755 = load ptr, ptr %754, align 8, !tbaa !124
  %756 = sext i32 %743 to i64
  %757 = getelementptr inbounds i32, ptr %755, i64 %756
  %758 = load i32, ptr %757, align 4, !tbaa !90
  %759 = load ptr, ptr %192, align 8, !tbaa !129
  %760 = call i32 @bitmap_bit_p(ptr noundef %759, i32 noundef %758) #19
  %761 = icmp eq i32 %760, 0
  br i1 %761, label %762, label %769, !prof !224

762:                                              ; preds = %753
  %763 = load ptr, ptr %192, align 8, !tbaa !129
  %764 = call zeroext i8 @bitmap_set_bit(ptr noundef %763, i32 noundef %758) #19
  %765 = load ptr, ptr %199, align 8, !tbaa !128
  %766 = sext i32 %758 to i64
  %767 = getelementptr inbounds ptr, ptr %765, i64 %766
  %768 = load ptr, ptr %767, align 8, !tbaa !75
  call void @bitmap_clear(ptr noundef %768) #19
  br label %769

769:                                              ; preds = %762, %753
  %770 = load ptr, ptr %199, align 8, !tbaa !128
  %771 = sext i32 %758 to i64
  %772 = getelementptr inbounds ptr, ptr %770, i64 %771
  %773 = load ptr, ptr %772, align 8, !tbaa !75
  %774 = call zeroext i8 @bitmap_set_bit(ptr noundef %773, i32 noundef %743) #19
  br label %775

775:                                              ; preds = %769, %742
  %776 = icmp eq ptr %722, null
  br i1 %776, label %782, label %777, !prof !225

777:                                              ; preds = %775
  %778 = getelementptr inbounds %struct.use_optype_d, ptr %722, i64 0, i32 1, i32 3
  %779 = load ptr, ptr %778, align 8, !tbaa !217
  %780 = load ptr, ptr %779, align 8, !tbaa !75
  %781 = load ptr, ptr %722, align 8, !tbaa !214
  br label %782

782:                                              ; preds = %775, %777
  %783 = phi ptr [ %781, %777 ], [ %722, %775 ]
  %784 = phi i8 [ %721, %777 ], [ 1, %775 ]
  %785 = phi ptr [ %780, %777 ], [ null, %775 ]
  %786 = icmp eq i8 %784, 0
  br i1 %786, label %719, label %787, !prof !220, !llvm.loop !226

787:                                              ; preds = %782, %715, %374
  %788 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %375, i64 0, i32 1
  %789 = load ptr, ptr %788, align 8, !tbaa !227
  %790 = icmp eq ptr %789, null
  br i1 %790, label %791, label %374, !prof !228, !llvm.loop !229

791:                                              ; preds = %787, %371
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #19
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %2, ptr noundef %224) #19
  %792 = load ptr, ptr %2, align 8, !tbaa.struct !230
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #19
  %793 = icmp eq ptr %792, null
  br i1 %793, label %1024, label %794, !prof !231

794:                                              ; preds = %791, %1020
  %795 = phi ptr [ %1022, %1020 ], [ %792, %791 ]
  %796 = load ptr, ptr %795, align 8, !tbaa !175
  %797 = getelementptr inbounds %struct.gimple_statement_phi, ptr %796, i64 0, i32 3
  %798 = load ptr, ptr %797, align 8, !tbaa !75
  %799 = load ptr, ptr %193, align 8, !tbaa !125
  %800 = load i64, ptr %798, align 8
  %801 = and i64 %800, 65535
  %802 = icmp eq i64 %801, 141
  br i1 %802, label %804, label %803, !prof !232

803:                                              ; preds = %794
  call void @fancy_abort(ptr noundef nonnull @.str.11, i32 noundef 147, ptr noundef nonnull @.str.2) #19
  br label %804

804:                                              ; preds = %803, %794
  %805 = load ptr, ptr %799, align 8, !tbaa !181
  %806 = getelementptr inbounds %struct.tree_ssa_name, ptr %798, i64 0, i32 3
  %807 = load i32, ptr %806, align 8, !tbaa !86
  %808 = zext i32 %807 to i64
  %809 = getelementptr inbounds %struct.partition_def, ptr %805, i64 0, i32 1, i64 %808
  %810 = load i32, ptr %809, align 8, !tbaa !182
  %811 = getelementptr inbounds %struct._var_map, ptr %799, i64 0, i32 1
  %812 = load ptr, ptr %811, align 8, !tbaa !184
  %813 = icmp eq ptr %812, null
  br i1 %813, label %818, label %814, !prof !233

814:                                              ; preds = %804
  %815 = sext i32 %810 to i64
  %816 = getelementptr inbounds i32, ptr %812, i64 %815
  %817 = load i32, ptr %816, align 4, !tbaa !90
  br label %818

818:                                              ; preds = %814, %804
  %819 = phi i32 [ %817, %814 ], [ %810, %804 ]
  %820 = icmp eq i32 %819, -1
  br i1 %820, label %845, label %821, !prof !234

821:                                              ; preds = %818
  %822 = load ptr, ptr %193, align 8, !tbaa !125
  %823 = icmp sgt i32 %819, -1
  br i1 %823, label %824, label %828, !prof !235

824:                                              ; preds = %821
  %825 = getelementptr inbounds %struct._var_map, ptr %822, i64 0, i32 3
  %826 = load i32, ptr %825, align 8, !tbaa !117
  %827 = icmp slt i32 %826, %819
  br i1 %827, label %828, label %829, !prof !236

828:                                              ; preds = %824, %821
  call void @fancy_abort(ptr noundef nonnull @.str.11, i32 noundef 176, ptr noundef nonnull @.str.2) #19
  br label %829

829:                                              ; preds = %828, %824
  %830 = getelementptr inbounds %struct._var_map, ptr %822, i64 0, i32 6
  %831 = load ptr, ptr %830, align 8, !tbaa !124
  %832 = sext i32 %819 to i64
  %833 = getelementptr inbounds i32, ptr %831, i64 %832
  %834 = load i32, ptr %833, align 4, !tbaa !90
  %835 = load ptr, ptr %192, align 8, !tbaa !129
  %836 = call i32 @bitmap_bit_p(ptr noundef %835, i32 noundef %834) #19
  %837 = icmp eq i32 %836, 0
  br i1 %837, label %845, label %838, !prof !236

838:                                              ; preds = %829
  %839 = load ptr, ptr %199, align 8, !tbaa !128
  %840 = sext i32 %834 to i64
  %841 = getelementptr inbounds ptr, ptr %839, i64 %840
  %842 = load ptr, ptr %841, align 8, !tbaa !75
  %843 = call i32 @bitmap_bit_p(ptr noundef %842, i32 noundef %819) #19
  %844 = trunc i32 %843 to i8
  br label %845

845:                                              ; preds = %838, %829, %818
  %846 = phi i8 [ %844, %838 ], [ 0, %829 ], [ 0, %818 ]
  %847 = icmp eq i8 %846, 0
  br i1 %847, label %1020, label %848, !prof !234

848:                                              ; preds = %845
  %849 = load ptr, ptr %193, align 8, !tbaa !125
  %850 = load i64, ptr %798, align 8
  %851 = and i64 %850, 65535
  %852 = icmp eq i64 %851, 141
  br i1 %852, label %854, label %853, !prof !193

853:                                              ; preds = %848
  call void @fancy_abort(ptr noundef nonnull @.str.11, i32 noundef 147, ptr noundef nonnull @.str.2) #19
  br label %854

854:                                              ; preds = %853, %848
  %855 = load ptr, ptr %849, align 8, !tbaa !181
  %856 = load i32, ptr %806, align 8, !tbaa !86
  %857 = zext i32 %856 to i64
  %858 = getelementptr inbounds %struct.partition_def, ptr %855, i64 0, i32 1, i64 %857
  %859 = load i32, ptr %858, align 8, !tbaa !182
  %860 = getelementptr inbounds %struct._var_map, ptr %849, i64 0, i32 1
  %861 = load ptr, ptr %860, align 8, !tbaa !184
  %862 = icmp eq ptr %861, null
  br i1 %862, label %867, label %863, !prof !194

863:                                              ; preds = %854
  %864 = sext i32 %859 to i64
  %865 = getelementptr inbounds i32, ptr %861, i64 %864
  %866 = load i32, ptr %865, align 4, !tbaa !90
  br label %867

867:                                              ; preds = %863, %854
  %868 = phi i32 [ %866, %863 ], [ %859, %854 ]
  %869 = icmp eq i32 %868, -1
  br i1 %869, label %1020, label %870, !prof !195

870:                                              ; preds = %867
  %871 = load ptr, ptr %193, align 8, !tbaa !125
  %872 = icmp sgt i32 %868, -1
  br i1 %872, label %873, label %877, !prof !196

873:                                              ; preds = %870
  %874 = getelementptr inbounds %struct._var_map, ptr %871, i64 0, i32 3
  %875 = load i32, ptr %874, align 8, !tbaa !117
  %876 = icmp slt i32 %875, %868
  br i1 %876, label %877, label %878, !prof !197

877:                                              ; preds = %873, %870
  call void @fancy_abort(ptr noundef nonnull @.str.11, i32 noundef 176, ptr noundef nonnull @.str.2) #19
  br label %878

878:                                              ; preds = %877, %873
  %879 = getelementptr inbounds %struct._var_map, ptr %871, i64 0, i32 6
  %880 = load ptr, ptr %879, align 8, !tbaa !124
  %881 = sext i32 %868 to i64
  %882 = getelementptr inbounds i32, ptr %880, i64 %881
  %883 = load i32, ptr %882, align 4, !tbaa !90
  %884 = load ptr, ptr %199, align 8, !tbaa !128
  %885 = sext i32 %883 to i64
  %886 = getelementptr inbounds ptr, ptr %884, i64 %885
  %887 = load ptr, ptr %886, align 8, !tbaa !75
  %888 = call zeroext i8 @bitmap_clear_bit(ptr noundef %887, i32 noundef %868) #19
  %889 = load ptr, ptr %199, align 8, !tbaa !128
  %890 = getelementptr inbounds ptr, ptr %889, i64 %885
  %891 = load ptr, ptr %890, align 8, !tbaa !75
  %892 = load ptr, ptr %891, align 8, !tbaa !143
  %893 = icmp eq ptr %892, null
  br i1 %893, label %894, label %897, !prof !198

894:                                              ; preds = %878
  %895 = load ptr, ptr %192, align 8, !tbaa !129
  %896 = call zeroext i8 @bitmap_clear_bit(ptr noundef %895, i32 noundef %883) #19
  br label %897

897:                                              ; preds = %894, %878
  %898 = load ptr, ptr %193, align 8, !tbaa !125
  br i1 %872, label %899, label %903, !prof !196

899:                                              ; preds = %897
  %900 = getelementptr inbounds %struct._var_map, ptr %898, i64 0, i32 3
  %901 = load i32, ptr %900, align 8, !tbaa !117
  %902 = icmp slt i32 %901, %868
  br i1 %902, label %903, label %904, !prof !197

903:                                              ; preds = %899, %897
  call void @fancy_abort(ptr noundef nonnull @.str.11, i32 noundef 176, ptr noundef nonnull @.str.2) #19
  br label %904

904:                                              ; preds = %903, %899
  %905 = getelementptr inbounds %struct._var_map, ptr %898, i64 0, i32 6
  %906 = load ptr, ptr %905, align 8, !tbaa !124
  %907 = getelementptr inbounds i32, ptr %906, i64 %881
  %908 = load i32, ptr %907, align 4, !tbaa !90
  %909 = load ptr, ptr %192, align 8, !tbaa !129
  %910 = call i32 @bitmap_bit_p(ptr noundef %909, i32 noundef %908) #19
  %911 = icmp eq i32 %910, 0
  br i1 %911, label %1020, label %912, !prof !198

912:                                              ; preds = %904
  %913 = load ptr, ptr %199, align 8, !tbaa !128
  %914 = sext i32 %908 to i64
  %915 = getelementptr inbounds ptr, ptr %913, i64 %914
  %916 = load ptr, ptr %915, align 8, !tbaa !75
  %917 = load ptr, ptr %916, align 8, !tbaa !143
  %918 = icmp eq ptr %917, null
  %919 = select i1 %918, ptr @bitmap_zero_bits, ptr %917, !prof !199
  %920 = getelementptr inbounds %struct.bitmap_element_def, ptr %919, i64 0, i32 2
  %921 = load i32, ptr %920, align 8, !tbaa !146
  %922 = shl i32 %921, 7
  %923 = getelementptr inbounds %struct.bitmap_element_def, ptr %919, i64 0, i32 3
  %924 = load i64, ptr %923, align 8, !tbaa !148
  %925 = icmp eq i64 %924, 0
  %926 = zext i1 %925 to i32
  %927 = or disjoint i32 %922, %926
  %928 = zext i32 %868 to i64
  br label %929

929:                                              ; preds = %1013, %912
  %930 = phi i64 [ %924, %912 ], [ %1018, %1013 ]
  %931 = phi i32 [ 0, %912 ], [ %986, %1013 ]
  %932 = phi i32 [ %927, %912 ], [ %1019, %1013 ]
  %933 = phi ptr [ %919, %912 ], [ %988, %1013 ]
  %934 = icmp eq i64 %930, 0
  br i1 %934, label %949, label %935, !prof !200

935:                                              ; preds = %963, %929
  %936 = phi i64 [ %930, %929 ], [ %968, %963 ]
  %937 = phi i32 [ %931, %929 ], [ %964, %963 ]
  %938 = phi i32 [ %932, %929 ], [ %965, %963 ]
  %939 = phi ptr [ %933, %929 ], [ %956, %963 ]
  %940 = and i64 %936, 1
  %941 = icmp eq i64 %940, 0
  br i1 %941, label %942, label %984, !prof !201

942:                                              ; preds = %935, %942
  %943 = phi i32 [ %946, %942 ], [ %938, %935 ]
  %944 = phi i64 [ %945, %942 ], [ %936, %935 ]
  %945 = lshr exact i64 %944, 1
  %946 = add i32 %943, 1
  %947 = and i64 %944, 2
  %948 = icmp eq i64 %947, 0
  br i1 %948, label %942, label %984, !prof !202, !llvm.loop !152

949:                                              ; preds = %929
  %950 = add i32 %932, 63
  %951 = and i32 %950, -64
  %952 = add i32 %931, 1
  br label %953

953:                                              ; preds = %980, %949
  %954 = phi i64 [ %930, %949 ], [ %975, %980 ]
  %955 = phi i32 [ %951, %949 ], [ %983, %980 ]
  %956 = phi ptr [ %933, %949 ], [ %978, %980 ]
  %957 = phi i32 [ %952, %949 ], [ 0, %980 ]
  %958 = icmp eq i32 %957, 2
  br i1 %958, label %974, label %959, !prof !203

959:                                              ; preds = %953
  %960 = add i32 %955, 128
  %961 = shl i32 %957, 6
  %962 = sub i32 %960, %961
  br label %963

963:                                              ; preds = %970, %959
  %964 = phi i32 [ %972, %970 ], [ %957, %959 ]
  %965 = phi i32 [ %971, %970 ], [ %955, %959 ]
  %966 = zext i32 %964 to i64
  %967 = getelementptr inbounds %struct.bitmap_element_def, ptr %956, i64 0, i32 3, i64 %966
  %968 = load i64, ptr %967, align 8, !tbaa !148
  %969 = icmp eq i64 %968, 0
  br i1 %969, label %970, label %935, !prof !204

970:                                              ; preds = %963
  %971 = add i32 %965, 64
  %972 = add i32 %964, 1
  %973 = icmp eq i32 %972, 2
  br i1 %973, label %974, label %963, !prof !201, !llvm.loop !156

974:                                              ; preds = %970, %953
  %975 = phi i64 [ %954, %953 ], [ %968, %970 ]
  %976 = phi i32 [ %955, %953 ], [ %962, %970 ]
  %977 = phi i32 [ %957, %953 ], [ 2, %970 ]
  %978 = load ptr, ptr %956, align 8, !tbaa !157
  %979 = icmp eq ptr %978, null
  br i1 %979, label %984, label %980, !prof !205

980:                                              ; preds = %974
  %981 = getelementptr inbounds %struct.bitmap_element_def, ptr %978, i64 0, i32 2
  %982 = load i32, ptr %981, align 8, !tbaa !146
  %983 = shl i32 %982, 7
  br label %953, !llvm.loop !159

984:                                              ; preds = %974, %942, %935
  %985 = phi i64 [ %936, %935 ], [ %945, %942 ], [ %975, %974 ]
  %986 = phi i32 [ %937, %935 ], [ %937, %942 ], [ %977, %974 ]
  %987 = phi i32 [ %938, %935 ], [ %946, %942 ], [ %976, %974 ]
  %988 = phi ptr [ %939, %935 ], [ %939, %942 ], [ %978, %974 ]
  %989 = phi i1 [ false, %935 ], [ false, %942 ], [ true, %974 ]
  br i1 %989, label %1020, label %990, !prof !206

990:                                              ; preds = %984
  %991 = load ptr, ptr %186, align 8, !tbaa !121
  %992 = getelementptr inbounds ptr, ptr %991, i64 %928
  %993 = load ptr, ptr %992, align 8, !tbaa !75
  %994 = icmp eq ptr %993, null
  br i1 %994, label %995, label %999, !prof !205

995:                                              ; preds = %990
  %996 = call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #19
  %997 = load ptr, ptr %186, align 8, !tbaa !121
  %998 = getelementptr inbounds ptr, ptr %997, i64 %928
  store ptr %996, ptr %998, align 8, !tbaa !75
  br label %999

999:                                              ; preds = %995, %990
  %1000 = load ptr, ptr %186, align 8, !tbaa !121
  %1001 = getelementptr inbounds ptr, ptr %1000, i64 %928
  %1002 = load ptr, ptr %1001, align 8, !tbaa !75
  %1003 = call zeroext i8 @bitmap_set_bit(ptr noundef %1002, i32 noundef %987) #19
  %1004 = load ptr, ptr %186, align 8, !tbaa !121
  %1005 = zext i32 %987 to i64
  %1006 = getelementptr inbounds ptr, ptr %1004, i64 %1005
  %1007 = load ptr, ptr %1006, align 8, !tbaa !75
  %1008 = icmp eq ptr %1007, null
  br i1 %1008, label %1009, label %1013, !prof !205

1009:                                             ; preds = %999
  %1010 = call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #19
  %1011 = load ptr, ptr %186, align 8, !tbaa !121
  %1012 = getelementptr inbounds ptr, ptr %1011, i64 %1005
  store ptr %1010, ptr %1012, align 8, !tbaa !75
  br label %1013

1013:                                             ; preds = %1009, %999
  %1014 = load ptr, ptr %186, align 8, !tbaa !121
  %1015 = getelementptr inbounds ptr, ptr %1014, i64 %1005
  %1016 = load ptr, ptr %1015, align 8, !tbaa !75
  %1017 = call zeroext i8 @bitmap_set_bit(ptr noundef %1016, i32 noundef %868) #19
  %1018 = lshr i64 %985, 1
  %1019 = add i32 %987, 1
  br label %929, !llvm.loop !207

1020:                                             ; preds = %984, %904, %867, %845
  %1021 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %795, i64 0, i32 2
  %1022 = load ptr, ptr %1021, align 8, !tbaa !237
  %1023 = icmp eq ptr %1022, null
  br i1 %1023, label %1024, label %794, !prof !232, !llvm.loop !238

1024:                                             ; preds = %1020, %791
  %1025 = load ptr, ptr %192, align 8, !tbaa !129
  call void @bitmap_clear(ptr noundef %1025) #19
  %1026 = getelementptr inbounds %struct.basic_block_def, ptr %224, i64 0, i32 6
  %1027 = load ptr, ptr %1026, align 8, !tbaa !136
  %1028 = load ptr, ptr @cfun, align 8, !tbaa !75
  %1029 = getelementptr inbounds %struct.function, ptr %1028, i64 0, i32 1
  %1030 = load ptr, ptr %1029, align 8, !tbaa !133
  %1031 = getelementptr inbounds %struct.control_flow_graph, ptr %1030, i64 0, i32 1
  %1032 = load ptr, ptr %1031, align 8, !tbaa !138
  %1033 = icmp eq ptr %1027, %1032
  br i1 %1033, label %1034, label %223, !prof !239, !llvm.loop !240

1034:                                             ; preds = %1024, %211
  %1035 = load ptr, ptr %193, align 8, !tbaa !125
  %1036 = getelementptr inbounds %struct._var_map, ptr %1035, i64 0, i32 5
  %1037 = load i32, ptr %1036, align 8, !tbaa !127
  %1038 = icmp sgt i32 %1037, 0
  br i1 %1038, label %1039, label %1050, !prof !130

1039:                                             ; preds = %1034
  %1040 = zext nneg i32 %1037 to i64
  br label %1041

1041:                                             ; preds = %1039, %1041
  %1042 = phi i64 [ 0, %1039 ], [ %1048, %1041 ]
  %1043 = load ptr, ptr %199, align 8, !tbaa !128
  %1044 = getelementptr inbounds ptr, ptr %1043, i64 %1042
  %1045 = load ptr, ptr %1044, align 8, !tbaa !75
  call void @bitmap_obstack_free(ptr noundef %1045) #19
  %1046 = load ptr, ptr %199, align 8, !tbaa !128
  %1047 = getelementptr inbounds ptr, ptr %1046, i64 %1042
  store ptr null, ptr %1047, align 8, !tbaa !75
  %1048 = add nuw nsw i64 %1042, 1
  %1049 = icmp eq i64 %1048, %1040
  br i1 %1049, label %1050, label %1041, !prof !131, !llvm.loop !241

1050:                                             ; preds = %1041, %1034
  %1051 = load ptr, ptr %192, align 8, !tbaa !129
  call void @bitmap_obstack_free(ptr noundef %1051) #19
  store ptr null, ptr %192, align 8, !tbaa !129
  %1052 = load ptr, ptr %199, align 8, !tbaa !128
  call void @free(ptr noundef %1052)
  call void @free(ptr noundef %192)
  call void @delete_tree_live_info(ptr noundef nonnull %171) #19
  %1053 = load ptr, ptr @dump_file, align 8, !tbaa !75
  %1054 = icmp eq ptr %1053, null
  br i1 %1054, label %1081, label %1055, !prof !116

1055:                                             ; preds = %1050
  %1056 = load i32, ptr @dump_flags, align 4, !tbaa !90
  %1057 = and i32 %1056, 8
  %1058 = icmp eq i32 %1057, 0
  br i1 %1058, label %1081, label %1059

1059:                                             ; preds = %1055
  %1060 = call i64 @fwrite(ptr nonnull @.str.12, i64 17, i64 1, ptr nonnull %1053)
  %1061 = load i32, ptr %183, align 8, !tbaa !123
  %1062 = icmp eq i32 %1061, 0
  br i1 %1062, label %1081, label %1063

1063:                                             ; preds = %1059, %1076
  %1064 = phi i64 [ %1077, %1076 ], [ 0, %1059 ]
  %1065 = load ptr, ptr %186, align 8, !tbaa !121
  %1066 = getelementptr inbounds ptr, ptr %1065, i64 %1064
  %1067 = load ptr, ptr %1066, align 8, !tbaa !75
  %1068 = icmp eq ptr %1067, null
  br i1 %1068, label %1076, label %1069

1069:                                             ; preds = %1063
  %1070 = load ptr, ptr @dump_file, align 8, !tbaa !75
  %1071 = trunc i64 %1064 to i32
  %1072 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1070, ptr noundef nonnull @.str.13, i32 noundef %1071)
  %1073 = load ptr, ptr %186, align 8, !tbaa !121
  %1074 = getelementptr inbounds ptr, ptr %1073, i64 %1064
  %1075 = load ptr, ptr %1074, align 8, !tbaa !75
  call void @bitmap_print(ptr noundef nonnull %1053, ptr noundef %1075, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.15) #19
  br label %1076

1076:                                             ; preds = %1069, %1063
  %1077 = add nuw nsw i64 %1064, 1
  %1078 = load i32, ptr %183, align 8, !tbaa !123
  %1079 = zext i32 %1078 to i64
  %1080 = icmp ult i64 %1077, %1079
  br i1 %1080, label %1063, label %1081, !llvm.loop !242

1081:                                             ; preds = %1076, %1059, %1055, %1050
  %1082 = load ptr, ptr %20, align 8, !tbaa !106
  %1083 = icmp eq ptr %1082, null
  br i1 %1083, label %1085, label %1084, !prof !116

1084:                                             ; preds = %1081
  call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 422, ptr noundef nonnull @.str.2) #19
  br label %1085

1085:                                             ; preds = %1084, %1081
  %1086 = load ptr, ptr %17, align 8, !tbaa !104
  %1087 = call i64 @htab_elements(ptr noundef %1086) #19
  %1088 = trunc i64 %1087 to i32
  store i32 %1088, ptr %21, align 8, !tbaa !107
  %1089 = icmp eq i32 %1088, 0
  br i1 %1089, label %1154, label %1090, !prof !101

1090:                                             ; preds = %1085
  %1091 = and i64 %1087, 4294967295
  %1092 = shl nuw nsw i64 %1091, 3
  %1093 = call ptr @xmalloc(i64 noundef %1092) #19
  store ptr %1093, ptr %20, align 8, !tbaa !106
  %1094 = load ptr, ptr %17, align 8, !tbaa !104
  %1095 = getelementptr inbounds %struct.htab, ptr %1094, i64 0, i32 3
  %1096 = load ptr, ptr %1095, align 8, !tbaa !243
  %1097 = call i64 @htab_size(ptr noundef %1094) #19
  %1098 = getelementptr inbounds ptr, ptr %1096, i64 %1097
  br label %1099

1099:                                             ; preds = %1103, %1090
  %1100 = phi ptr [ %1096, %1090 ], [ %1104, %1103 ]
  %1101 = load ptr, ptr %1100, align 8, !tbaa !75
  %1102 = icmp ult ptr %1101, inttoptr (i64 2 to ptr)
  br i1 %1102, label %1103, label %1106, !prof !245

1103:                                             ; preds = %1099
  %1104 = getelementptr inbounds ptr, ptr %1100, i64 1
  %1105 = icmp ult ptr %1104, %1098
  br i1 %1105, label %1099, label %1106, !prof !246, !llvm.loop !247

1106:                                             ; preds = %1103, %1099
  %1107 = phi ptr [ %1100, %1099 ], [ %1104, %1103 ]
  %1108 = icmp ult ptr %1107, %1098
  br i1 %1108, label %1109, label %1111, !prof !116

1109:                                             ; preds = %1106
  %1110 = load ptr, ptr %1107, align 8, !tbaa !75
  br label %1111

1111:                                             ; preds = %1109, %1106
  %1112 = phi ptr [ %1110, %1109 ], [ null, %1106 ]
  %1113 = icmp ult ptr %1107, %1098
  br i1 %1113, label %1114, label %1134, !prof !130

1114:                                             ; preds = %1111, %1131
  %1115 = phi ptr [ %1132, %1131 ], [ %1112, %1111 ]
  %1116 = phi i32 [ %1119, %1131 ], [ 0, %1111 ]
  %1117 = phi ptr [ %1125, %1131 ], [ %1107, %1111 ]
  %1118 = load ptr, ptr %20, align 8, !tbaa !106
  %1119 = add i32 %1116, 1
  %1120 = zext i32 %1116 to i64
  %1121 = getelementptr inbounds ptr, ptr %1118, i64 %1120
  store ptr %1115, ptr %1121, align 8, !tbaa !75
  br label %1122

1122:                                             ; preds = %1127, %1114
  %1123 = phi ptr [ %1117, %1114 ], [ %1125, %1127 ]
  %1124 = phi ptr [ undef, %1114 ], [ %1130, %1127 ]
  %1125 = getelementptr inbounds ptr, ptr %1123, i64 1
  %1126 = icmp ult ptr %1125, %1098
  br i1 %1126, label %1127, label %1131, !prof !248

1127:                                             ; preds = %1122
  %1128 = load ptr, ptr %1125, align 8, !tbaa !75
  %1129 = icmp ult ptr %1128, inttoptr (i64 2 to ptr)
  %1130 = select i1 %1129, ptr %1124, ptr %1128, !prof !249
  br i1 %1129, label %1122, label %1131, !prof !249

1131:                                             ; preds = %1127, %1122
  %1132 = phi ptr [ null, %1122 ], [ %1130, %1127 ]
  %1133 = icmp ult ptr %1125, %1098
  br i1 %1133, label %1114, label %1134, !prof !250, !llvm.loop !251

1134:                                             ; preds = %1131, %1111
  %1135 = phi i32 [ 0, %1111 ], [ %1119, %1131 ]
  %1136 = icmp eq i32 %1135, %1088
  br i1 %1136, label %1138, label %1137, !prof !116

1137:                                             ; preds = %1134
  call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 436, ptr noundef nonnull @.str.2) #19
  br label %1138

1138:                                             ; preds = %1137, %1134
  switch i32 %1088, label %1152 [
    i32 1, label %1154
    i32 2, label %1139
  ], !prof !252

1139:                                             ; preds = %1138
  %1140 = load ptr, ptr %20, align 8, !tbaa !106
  %1141 = load ptr, ptr %1140, align 8, !tbaa !75
  %1142 = getelementptr inbounds %struct.coalesce_pair, ptr %1141, i64 0, i32 2
  %1143 = load i32, ptr %1142, align 4, !tbaa !114
  %1144 = getelementptr inbounds ptr, ptr %1140, i64 1
  %1145 = load ptr, ptr %1144, align 8, !tbaa !75
  %1146 = getelementptr inbounds %struct.coalesce_pair, ptr %1145, i64 0, i32 2
  %1147 = load i32, ptr %1146, align 4, !tbaa !114
  %1148 = icmp sgt i32 %1143, %1147
  br i1 %1148, label %1149, label %1154, !prof !253

1149:                                             ; preds = %1139
  store ptr %1145, ptr %1140, align 8, !tbaa !75
  %1150 = load ptr, ptr %20, align 8, !tbaa !106
  %1151 = getelementptr inbounds ptr, ptr %1150, i64 1
  store ptr %1141, ptr %1151, align 8, !tbaa !75
  br label %1154

1152:                                             ; preds = %1138
  %1153 = load ptr, ptr %20, align 8, !tbaa !106
  call void @spec_qsort(ptr noundef %1153, i64 noundef %1091, i64 noundef 8, ptr noundef nonnull @compare_pairs) #19
  br label %1154

1154:                                             ; preds = %1085, %1138, %1139, %1149, %1152
  %1155 = load ptr, ptr @dump_file, align 8, !tbaa !75
  %1156 = icmp eq ptr %1155, null
  br i1 %1156, label %1259, label %1157, !prof !116

1157:                                             ; preds = %1154
  %1158 = load i32, ptr @dump_flags, align 4, !tbaa !90
  %1159 = and i32 %1158, 8
  %1160 = icmp eq i32 %1159, 0
  br i1 %1160, label %1259, label %1161

1161:                                             ; preds = %1157
  %1162 = call i64 @fwrite(ptr nonnull @.str, i64 16, i64 1, ptr nonnull %1155)
  %1163 = load ptr, ptr @dump_file, align 8, !tbaa !75
  %1164 = load ptr, ptr %20, align 8, !tbaa !106
  %1165 = icmp eq ptr %1164, null
  br i1 %1165, label %1166, label %1222

1166:                                             ; preds = %1161
  %1167 = call i64 @fwrite(ptr nonnull @.str.16, i64 15, i64 1, ptr %1163)
  %1168 = load ptr, ptr %17, align 8, !tbaa !104
  %1169 = getelementptr inbounds %struct.htab, ptr %1168, i64 0, i32 3
  %1170 = load ptr, ptr %1169, align 8, !tbaa !243
  %1171 = call i64 @htab_size(ptr noundef %1168) #19
  %1172 = getelementptr inbounds ptr, ptr %1170, i64 %1171
  br label %1173

1173:                                             ; preds = %1177, %1166
  %1174 = phi ptr [ %1170, %1166 ], [ %1178, %1177 ]
  %1175 = load ptr, ptr %1174, align 8, !tbaa !75
  %1176 = icmp ult ptr %1175, inttoptr (i64 2 to ptr)
  br i1 %1176, label %1177, label %1180

1177:                                             ; preds = %1173
  %1178 = getelementptr inbounds ptr, ptr %1174, i64 1
  %1179 = icmp ult ptr %1178, %1172
  br i1 %1179, label %1173, label %1180, !llvm.loop !247

1180:                                             ; preds = %1177, %1173
  %1181 = phi ptr [ %1174, %1173 ], [ %1178, %1177 ]
  %1182 = icmp ult ptr %1181, %1172
  br i1 %1182, label %1183, label %1185

1183:                                             ; preds = %1180
  %1184 = load ptr, ptr %1181, align 8, !tbaa !75
  br label %1185

1185:                                             ; preds = %1183, %1180
  %1186 = phi ptr [ %1184, %1183 ], [ null, %1180 ]
  %1187 = icmp ult ptr %1181, %1172
  br i1 %1187, label %1188, label %1259

1188:                                             ; preds = %1185, %1219
  %1189 = phi ptr [ %1220, %1219 ], [ %1186, %1185 ]
  %1190 = phi ptr [ %1213, %1219 ], [ %1181, %1185 ]
  %1191 = load ptr, ptr @cfun, align 8, !tbaa !75
  %1192 = getelementptr inbounds %struct.function, ptr %1191, i64 0, i32 3
  %1193 = load ptr, ptr %1192, align 8, !tbaa !95
  %1194 = getelementptr inbounds %struct.gimple_df, ptr %1193, i64 0, i32 2
  %1195 = load ptr, ptr %1194, align 8, !tbaa !97
  %1196 = load i32, ptr %1189, align 4, !tbaa !111
  %1197 = zext i32 %1196 to i64
  %1198 = getelementptr inbounds %struct.VEC_tree_base, ptr %1195, i64 0, i32 2, i64 %1197
  %1199 = load ptr, ptr %1198, align 8, !tbaa !75
  %1200 = getelementptr inbounds %struct.coalesce_pair, ptr %1189, i64 0, i32 1
  %1201 = load i32, ptr %1200, align 4, !tbaa !113
  %1202 = zext i32 %1201 to i64
  %1203 = getelementptr inbounds %struct.VEC_tree_base, ptr %1195, i64 0, i32 2, i64 %1202
  %1204 = load ptr, ptr %1203, align 8, !tbaa !75
  call void @print_generic_expr(ptr noundef %1163, ptr noundef %1199, i32 noundef 2) #19
  %1205 = call i64 @fwrite(ptr nonnull @.str.17, i64 5, i64 1, ptr %1163)
  call void @print_generic_expr(ptr noundef %1163, ptr noundef %1204, i32 noundef 2) #19
  %1206 = getelementptr inbounds %struct.coalesce_pair, ptr %1189, i64 0, i32 2
  %1207 = load i32, ptr %1206, align 4, !tbaa !114
  %1208 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1163, ptr noundef nonnull @.str.18, i32 noundef %1207)
  %1209 = call i32 @fputc(i32 10, ptr %1163)
  br label %1210

1210:                                             ; preds = %1215, %1188
  %1211 = phi ptr [ %1190, %1188 ], [ %1213, %1215 ]
  %1212 = phi ptr [ undef, %1188 ], [ %1218, %1215 ]
  %1213 = getelementptr inbounds ptr, ptr %1211, i64 1
  %1214 = icmp ult ptr %1213, %1172
  br i1 %1214, label %1215, label %1219

1215:                                             ; preds = %1210
  %1216 = load ptr, ptr %1213, align 8, !tbaa !75
  %1217 = icmp ult ptr %1216, inttoptr (i64 2 to ptr)
  %1218 = select i1 %1217, ptr %1212, ptr %1216
  br i1 %1217, label %1210, label %1219

1219:                                             ; preds = %1215, %1210
  %1220 = phi ptr [ null, %1210 ], [ %1218, %1215 ]
  %1221 = icmp ult ptr %1213, %1172
  br i1 %1221, label %1188, label %1259, !llvm.loop !254

1222:                                             ; preds = %1161
  %1223 = call i64 @fwrite(ptr nonnull @.str.19, i64 22, i64 1, ptr %1163)
  %1224 = load i32, ptr %21, align 8, !tbaa !107
  %1225 = icmp sgt i32 %1224, 0
  br i1 %1225, label %1226, label %1259

1226:                                             ; preds = %1222
  %1227 = zext nneg i32 %1224 to i64
  br label %1228

1228:                                             ; preds = %1226, %1228
  %1229 = phi i64 [ %1227, %1226 ], [ %1230, %1228 ]
  %1230 = add nsw i64 %1229, -1
  %1231 = load ptr, ptr %20, align 8, !tbaa !106
  %1232 = getelementptr inbounds ptr, ptr %1231, i64 %1230
  %1233 = load ptr, ptr %1232, align 8, !tbaa !75
  %1234 = getelementptr inbounds %struct.coalesce_pair, ptr %1233, i64 0, i32 2
  %1235 = load i32, ptr %1234, align 4, !tbaa !114
  %1236 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1163, ptr noundef nonnull @.str.20, i32 noundef %1235)
  %1237 = load ptr, ptr @cfun, align 8, !tbaa !75
  %1238 = getelementptr inbounds %struct.function, ptr %1237, i64 0, i32 3
  %1239 = load ptr, ptr %1238, align 8, !tbaa !95
  %1240 = getelementptr inbounds %struct.gimple_df, ptr %1239, i64 0, i32 2
  %1241 = load ptr, ptr %1240, align 8, !tbaa !97
  %1242 = load i32, ptr %1233, align 4, !tbaa !111
  %1243 = zext i32 %1242 to i64
  %1244 = getelementptr inbounds %struct.VEC_tree_base, ptr %1241, i64 0, i32 2, i64 %1243
  %1245 = load ptr, ptr %1244, align 8, !tbaa !75
  call void @print_generic_expr(ptr noundef %1163, ptr noundef %1245, i32 noundef 2) #19
  %1246 = call i64 @fwrite(ptr nonnull @.str.17, i64 5, i64 1, ptr %1163)
  %1247 = load ptr, ptr @cfun, align 8, !tbaa !75
  %1248 = getelementptr inbounds %struct.function, ptr %1247, i64 0, i32 3
  %1249 = load ptr, ptr %1248, align 8, !tbaa !95
  %1250 = getelementptr inbounds %struct.gimple_df, ptr %1249, i64 0, i32 2
  %1251 = load ptr, ptr %1250, align 8, !tbaa !97
  %1252 = getelementptr inbounds %struct.coalesce_pair, ptr %1233, i64 0, i32 1
  %1253 = load i32, ptr %1252, align 4, !tbaa !113
  %1254 = zext i32 %1253 to i64
  %1255 = getelementptr inbounds %struct.VEC_tree_base, ptr %1251, i64 0, i32 2, i64 %1254
  %1256 = load ptr, ptr %1255, align 8, !tbaa !75
  call void @print_generic_expr(ptr noundef %1163, ptr noundef %1256, i32 noundef 2) #19
  %1257 = call i32 @fputc(i32 10, ptr %1163)
  %1258 = icmp sgt i64 %1229, 1
  br i1 %1258, label %1228, label %1259, !llvm.loop !255

1259:                                             ; preds = %1228, %1219, %1222, %1185, %1157, %1154
  %1260 = load ptr, ptr @dump_file, align 8, !tbaa !75
  %1261 = icmp eq ptr %1260, null
  br i1 %1261, label %1267, label %1262, !prof !116

1262:                                             ; preds = %1259
  %1263 = load i32, ptr @dump_flags, align 4, !tbaa !90
  %1264 = and i32 %1263, 8
  %1265 = icmp eq i32 %1264, 0
  br i1 %1265, label %1267, label %1266

1266:                                             ; preds = %1262
  call void @dump_var_map(ptr noundef nonnull %1260, ptr noundef %23) #19
  br label %1267

1267:                                             ; preds = %1266, %1262, %1259
  %1268 = load i32, ptr @dump_flags, align 4, !tbaa !90
  %1269 = and i32 %1268, 8
  %1270 = icmp eq i32 %1269, 0
  %1271 = load ptr, ptr @dump_file, align 8
  %1272 = select i1 %1270, ptr null, ptr %1271, !prof !116
  %1273 = load ptr, ptr @cfun, align 8, !tbaa !75
  %1274 = getelementptr inbounds %struct.function, ptr %1273, i64 0, i32 1
  %1275 = load ptr, ptr %1274, align 8, !tbaa !133
  %1276 = load ptr, ptr %1275, align 8, !tbaa !134
  %1277 = getelementptr inbounds %struct.basic_block_def, ptr %1276, i64 0, i32 6
  %1278 = load ptr, ptr %1277, align 8, !tbaa !136
  %1279 = getelementptr inbounds %struct.control_flow_graph, ptr %1275, i64 0, i32 1
  %1280 = load ptr, ptr %1279, align 8, !tbaa !138
  %1281 = icmp eq ptr %1278, %1280
  br i1 %1281, label %1294, label %1291, !prof !139

1282:                                             ; preds = %1311
  %1283 = getelementptr inbounds %struct.basic_block_def, ptr %1292, i64 0, i32 6
  %1284 = load ptr, ptr %1283, align 8, !tbaa !136
  %1285 = load ptr, ptr @cfun, align 8, !tbaa !75
  %1286 = getelementptr inbounds %struct.function, ptr %1285, i64 0, i32 1
  %1287 = load ptr, ptr %1286, align 8, !tbaa !133
  %1288 = getelementptr inbounds %struct.control_flow_graph, ptr %1287, i64 0, i32 1
  %1289 = load ptr, ptr %1288, align 8, !tbaa !138
  %1290 = icmp eq ptr %1284, %1289
  br i1 %1290, label %1294, label %1291, !prof !239, !llvm.loop !256

1291:                                             ; preds = %1267, %1282
  %1292 = phi ptr [ %1284, %1282 ], [ %1278, %1267 ]
  %1293 = icmp eq ptr %1292, null
  br label %1296

1294:                                             ; preds = %1282, %1267
  %1295 = icmp eq ptr %1272, null
  br label %1396

1296:                                             ; preds = %1291, %1394
  %1297 = phi i32 [ %1395, %1394 ], [ 0, %1291 ]
  br i1 %1293, label %1298, label %1299, !prof !257

1298:                                             ; preds = %1296
  call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 687, ptr noundef nonnull @.str.2) #19
  br label %1299

1299:                                             ; preds = %1298, %1296
  %1300 = load ptr, ptr %1292, align 8, !tbaa !75
  %1301 = icmp eq ptr %1300, null
  br i1 %1301, label %1304, label %1302, !prof !257

1302:                                             ; preds = %1299
  %1303 = load i32, ptr %1300, align 8, !tbaa !258
  br label %1304

1304:                                             ; preds = %1302, %1299
  %1305 = phi i32 [ %1303, %1302 ], [ 0, %1299 ]
  %1306 = icmp eq i32 %1305, %1297
  br i1 %1306, label %1311, label %1307, !prof !260

1307:                                             ; preds = %1304
  %1308 = zext i32 %1297 to i64
  %1309 = getelementptr inbounds %struct.VEC_edge_base, ptr %1300, i64 0, i32 2, i64 %1308
  %1310 = load ptr, ptr %1309, align 8, !tbaa !75
  br label %1311

1311:                                             ; preds = %1307, %1304
  %1312 = phi ptr [ %1310, %1307 ], [ null, %1304 ]
  br i1 %1306, label %1282, label %1313, !prof !260

1313:                                             ; preds = %1311
  %1314 = getelementptr inbounds %struct.edge_def, ptr %1312, i64 0, i32 7
  %1315 = load i32, ptr %1314, align 8, !tbaa !261
  %1316 = and i32 %1315, 2
  %1317 = icmp eq i32 %1316, 0
  br i1 %1317, label %1385, label %1318, !prof !263

1318:                                             ; preds = %1313
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %1) #19
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %1, ptr noundef nonnull %1292) #19
  %1319 = load ptr, ptr %1, align 8, !tbaa.struct !230
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %1) #19
  %1320 = icmp eq ptr %1319, null
  br i1 %1320, label %1385, label %1321

1321:                                             ; preds = %1318
  %1322 = icmp eq ptr %1272, null
  %1323 = getelementptr inbounds %struct.edge_def, ptr %1312, i64 0, i32 6
  br label %1324

1324:                                             ; preds = %1321, %1381
  %1325 = phi ptr [ %1319, %1321 ], [ %1383, %1381 ]
  %1326 = load ptr, ptr %1325, align 8, !tbaa !175
  %1327 = getelementptr inbounds %struct.gimple_statement_phi, ptr %1326, i64 0, i32 3
  %1328 = load ptr, ptr %1327, align 8, !tbaa !75
  %1329 = load i32, ptr %1323, align 4, !tbaa !264
  %1330 = getelementptr inbounds %struct.gimple_statement_phi, ptr %1326, i64 0, i32 1
  %1331 = load i32, ptr %1330, align 8, !tbaa !86
  %1332 = icmp ult i32 %1331, %1329
  br i1 %1332, label %1333, label %1334

1333:                                             ; preds = %1324
  call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 3103, ptr noundef nonnull @.str.2) #19
  br label %1334

1334:                                             ; preds = %1333, %1324
  %1335 = zext i32 %1329 to i64
  %1336 = getelementptr inbounds %struct.gimple_statement_phi, ptr %1326, i64 0, i32 4, i64 %1335, i32 0, i32 3
  %1337 = load ptr, ptr %1336, align 8, !tbaa !217
  %1338 = load ptr, ptr %1337, align 8, !tbaa !75
  %1339 = getelementptr inbounds %struct.tree_ssa_name, ptr %1328, i64 0, i32 3
  %1340 = load i32, ptr %1339, align 8, !tbaa !86
  %1341 = getelementptr inbounds %struct.tree_ssa_name, ptr %1338, i64 0, i32 3
  %1342 = load i32, ptr %1341, align 8, !tbaa !86
  %1343 = getelementptr inbounds %struct.tree_ssa_name, ptr %1338, i64 0, i32 1
  %1344 = load ptr, ptr %1343, align 8, !tbaa !86
  %1345 = getelementptr inbounds %struct.tree_ssa_name, ptr %1328, i64 0, i32 1
  %1346 = load ptr, ptr %1345, align 8, !tbaa !86
  %1347 = icmp eq ptr %1344, %1346
  br i1 %1347, label %1350, label %1348

1348:                                             ; preds = %1334
  %1349 = load i32, ptr %1323, align 4, !tbaa !264
  call fastcc void @abnormal_corrupt(ptr noundef %1326, i32 noundef %1349)
  br label %1350

1350:                                             ; preds = %1348, %1334
  br i1 %1322, label %1353, label %1351

1351:                                             ; preds = %1350
  %1352 = call i64 @fwrite(ptr nonnull @.str.21, i64 19, i64 1, ptr nonnull %1272)
  br label %1353

1353:                                             ; preds = %1351, %1350
  %1354 = call fastcc zeroext i8 @attempt_coalesce(ptr noundef %23, ptr noundef nonnull %183, i32 noundef %1340, i32 noundef %1342, ptr noundef %1272), !range !265
  %1355 = icmp eq i8 %1354, 0
  br i1 %1355, label %1356, label %1381

1356:                                             ; preds = %1353
  %1357 = load ptr, ptr @stderr, align 8, !tbaa !75
  %1358 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1357, ptr noundef nonnull @.str.30, i32 noundef %1340, i32 noundef %1342) #20
  %1359 = load ptr, ptr @stderr, align 8, !tbaa !75
  %1360 = call i64 @fwrite(ptr nonnull @.str.31, i64 36, i64 1, ptr %1359) #20
  %1361 = load ptr, ptr @stderr, align 8, !tbaa !75
  %1362 = load ptr, ptr @cfun, align 8, !tbaa !75
  %1363 = getelementptr inbounds %struct.function, ptr %1362, i64 0, i32 3
  %1364 = load ptr, ptr %1363, align 8, !tbaa !95
  %1365 = getelementptr inbounds %struct.gimple_df, ptr %1364, i64 0, i32 2
  %1366 = load ptr, ptr %1365, align 8, !tbaa !97
  %1367 = zext i32 %1340 to i64
  %1368 = getelementptr inbounds %struct.VEC_tree_base, ptr %1366, i64 0, i32 2, i64 %1367
  %1369 = load ptr, ptr %1368, align 8, !tbaa !75
  call void @print_generic_expr(ptr noundef %1361, ptr noundef %1369, i32 noundef 2) #19
  %1370 = load ptr, ptr @stderr, align 8, !tbaa !75
  %1371 = call i64 @fwrite(ptr nonnull @.str.32, i64 6, i64 1, ptr %1370) #20
  %1372 = load ptr, ptr @stderr, align 8, !tbaa !75
  %1373 = load ptr, ptr @cfun, align 8, !tbaa !75
  %1374 = getelementptr inbounds %struct.function, ptr %1373, i64 0, i32 3
  %1375 = load ptr, ptr %1374, align 8, !tbaa !95
  %1376 = getelementptr inbounds %struct.gimple_df, ptr %1375, i64 0, i32 2
  %1377 = load ptr, ptr %1376, align 8, !tbaa !97
  %1378 = zext i32 %1342 to i64
  %1379 = getelementptr inbounds %struct.VEC_tree_base, ptr %1377, i64 0, i32 2, i64 %1378
  %1380 = load ptr, ptr %1379, align 8, !tbaa !75
  call void @print_generic_stmt(ptr noundef %1372, ptr noundef %1380, i32 noundef 2) #19
  call void (ptr, ...) @internal_error(ptr noundef nonnull @.str.9) #19
  br label %1381

1381:                                             ; preds = %1356, %1353
  %1382 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %1325, i64 0, i32 2
  %1383 = load ptr, ptr %1382, align 8, !tbaa !237
  %1384 = icmp eq ptr %1383, null
  br i1 %1384, label %1385, label %1324, !llvm.loop !266

1385:                                             ; preds = %1381, %1318, %1313
  %1386 = load ptr, ptr %1292, align 8, !tbaa !75
  %1387 = icmp eq ptr %1386, null
  br i1 %1387, label %1390, label %1388, !prof !267

1388:                                             ; preds = %1385
  %1389 = load i32, ptr %1386, align 8, !tbaa !258
  br label %1390

1390:                                             ; preds = %1388, %1385
  %1391 = phi i32 [ %1389, %1388 ], [ 0, %1385 ]
  %1392 = icmp ult i32 %1297, %1391
  br i1 %1392, label %1394, label %1393, !prof !263

1393:                                             ; preds = %1390
  call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 738, ptr noundef nonnull @.str.2) #19
  br label %1394

1394:                                             ; preds = %1393, %1390
  %1395 = add i32 %1297, 1
  br label %1296, !llvm.loop !268

1396:                                             ; preds = %1294, %1463
  %1397 = phi i32 [ %1438, %1463 ], [ 0, %1294 ]
  %1398 = phi i32 [ %1439, %1463 ], [ 0, %1294 ]
  %1399 = load ptr, ptr %20, align 8, !tbaa !106
  %1400 = icmp eq ptr %1399, null
  br i1 %1400, label %1401, label %1410, !prof !269

1401:                                             ; preds = %1396
  %1402 = load ptr, ptr %22, align 8, !tbaa !108
  %1403 = icmp eq ptr %1402, null
  br i1 %1403, label %1437, label %1404

1404:                                             ; preds = %1401
  %1405 = load i32, ptr %1402, align 8, !tbaa !270
  %1406 = getelementptr inbounds %struct.cost_one_pair_d, ptr %1402, i64 0, i32 1
  %1407 = load i32, ptr %1406, align 4, !tbaa !272
  %1408 = getelementptr inbounds %struct.cost_one_pair_d, ptr %1402, i64 0, i32 2
  %1409 = load ptr, ptr %1408, align 8, !tbaa !273
  store ptr %1409, ptr %22, align 8, !tbaa !108
  br label %1432

1410:                                             ; preds = %1396
  %1411 = load i32, ptr %21, align 8, !tbaa !107
  %1412 = icmp eq i32 %1411, 0
  br i1 %1412, label %1413, label %1422, !prof !274

1413:                                             ; preds = %1410
  %1414 = load ptr, ptr %22, align 8, !tbaa !108
  %1415 = icmp eq ptr %1414, null
  br i1 %1415, label %1437, label %1416, !prof !275

1416:                                             ; preds = %1413
  %1417 = load i32, ptr %1414, align 8, !tbaa !270
  %1418 = getelementptr inbounds %struct.cost_one_pair_d, ptr %1414, i64 0, i32 1
  %1419 = load i32, ptr %1418, align 4, !tbaa !272
  %1420 = getelementptr inbounds %struct.cost_one_pair_d, ptr %1414, i64 0, i32 2
  %1421 = load ptr, ptr %1420, align 8, !tbaa !273
  store ptr %1421, ptr %22, align 8, !tbaa !108
  br label %1432

1422:                                             ; preds = %1410
  %1423 = add nsw i32 %1411, -1
  store i32 %1423, ptr %21, align 8, !tbaa !107
  %1424 = sext i32 %1423 to i64
  %1425 = getelementptr inbounds ptr, ptr %1399, i64 %1424
  %1426 = load ptr, ptr %1425, align 8, !tbaa !75
  %1427 = load i32, ptr %1426, align 4, !tbaa !111
  %1428 = getelementptr inbounds %struct.coalesce_pair, ptr %1426, i64 0, i32 1
  %1429 = load i32, ptr %1428, align 4, !tbaa !113
  %1430 = getelementptr inbounds %struct.coalesce_pair, ptr %1426, i64 0, i32 2
  %1431 = load i32, ptr %1430, align 4, !tbaa !114
  br label %1432

1432:                                             ; preds = %1404, %1416, %1422
  %1433 = phi ptr [ %1426, %1422 ], [ %1414, %1416 ], [ %1402, %1404 ]
  %1434 = phi i32 [ %1429, %1422 ], [ %1419, %1416 ], [ %1407, %1404 ]
  %1435 = phi i32 [ %1427, %1422 ], [ %1417, %1416 ], [ %1405, %1404 ]
  %1436 = phi i32 [ %1431, %1422 ], [ 1, %1416 ], [ 1, %1404 ]
  call void @free(ptr noundef %1433)
  br label %1437

1437:                                             ; preds = %1432, %1413, %1401
  %1438 = phi i32 [ %1397, %1401 ], [ %1397, %1413 ], [ %1434, %1432 ]
  %1439 = phi i32 [ %1398, %1401 ], [ %1398, %1413 ], [ %1435, %1432 ]
  %1440 = phi i32 [ -1, %1401 ], [ -1, %1413 ], [ %1436, %1432 ]
  %1441 = icmp eq i32 %1440, -1
  br i1 %1441, label %1465, label %1442, !prof !276

1442:                                             ; preds = %1437
  %1443 = load ptr, ptr @cfun, align 8, !tbaa !75
  %1444 = getelementptr inbounds %struct.function, ptr %1443, i64 0, i32 3
  %1445 = load ptr, ptr %1444, align 8, !tbaa !95
  %1446 = getelementptr inbounds %struct.gimple_df, ptr %1445, i64 0, i32 2
  %1447 = load ptr, ptr %1446, align 8, !tbaa !97
  %1448 = zext i32 %1439 to i64
  %1449 = getelementptr inbounds %struct.VEC_tree_base, ptr %1447, i64 0, i32 2, i64 %1448
  %1450 = load ptr, ptr %1449, align 8, !tbaa !75
  %1451 = zext i32 %1438 to i64
  %1452 = getelementptr inbounds %struct.VEC_tree_base, ptr %1447, i64 0, i32 2, i64 %1451
  %1453 = load ptr, ptr %1452, align 8, !tbaa !75
  %1454 = getelementptr inbounds %struct.tree_ssa_name, ptr %1450, i64 0, i32 1
  %1455 = load ptr, ptr %1454, align 8, !tbaa !86
  %1456 = getelementptr inbounds %struct.tree_ssa_name, ptr %1453, i64 0, i32 1
  %1457 = load ptr, ptr %1456, align 8, !tbaa !86
  %1458 = icmp eq ptr %1455, %1457
  br i1 %1458, label %1460, label %1459, !prof !277

1459:                                             ; preds = %1442
  call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1331, ptr noundef nonnull @.str.2) #19
  br label %1460

1460:                                             ; preds = %1459, %1442
  br i1 %1295, label %1463, label %1461, !prof !277

1461:                                             ; preds = %1460
  %1462 = call i64 @fwrite(ptr nonnull @.str.22, i64 15, i64 1, ptr nonnull %1272)
  br label %1463

1463:                                             ; preds = %1461, %1460
  %1464 = call fastcc zeroext i8 @attempt_coalesce(ptr noundef %23, ptr noundef nonnull %183, i32 noundef %1439, i32 noundef %1438, ptr noundef %1272), !range !265
  br label %1396, !llvm.loop !278

1465:                                             ; preds = %1437
  %1466 = load ptr, ptr %22, align 8, !tbaa !108
  %1467 = icmp eq ptr %1466, null
  br i1 %1467, label %1469, label %1468, !prof !116

1468:                                             ; preds = %1465
  call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 243, ptr noundef nonnull @.str.2) #19
  br label %1469

1469:                                             ; preds = %1468, %1465
  %1470 = load ptr, ptr %17, align 8, !tbaa !104
  call void @htab_delete(ptr noundef %1470) #19
  %1471 = load ptr, ptr %20, align 8, !tbaa !106
  %1472 = icmp eq ptr %1471, null
  br i1 %1472, label %1474, label %1473, !prof !101

1473:                                             ; preds = %1469
  call void @free(ptr noundef %1471)
  br label %1474

1474:                                             ; preds = %1473, %1469
  %1475 = load i32, ptr %21, align 8, !tbaa !107
  %1476 = icmp eq i32 %1475, 0
  br i1 %1476, label %1478, label %1477, !prof !116

1477:                                             ; preds = %1474
  call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 247, ptr noundef nonnull @.str.2) #19
  br label %1478

1478:                                             ; preds = %1474, %1477
  call void @free(ptr noundef %17)
  %1479 = load i32, ptr %183, align 8, !tbaa !123
  %1480 = icmp eq i32 %1479, 0
  br i1 %1480, label %1495, label %1481, !prof !139

1481:                                             ; preds = %1478, %1490
  %1482 = phi i64 [ %1491, %1490 ], [ 0, %1478 ]
  %1483 = load ptr, ptr %186, align 8, !tbaa !121
  %1484 = getelementptr inbounds ptr, ptr %1483, i64 %1482
  %1485 = load ptr, ptr %1484, align 8, !tbaa !75
  %1486 = icmp eq ptr %1485, null
  br i1 %1486, label %1490, label %1487, !prof !279

1487:                                             ; preds = %1481
  call void @bitmap_obstack_free(ptr noundef nonnull %1485) #19
  %1488 = load ptr, ptr %186, align 8, !tbaa !121
  %1489 = getelementptr inbounds ptr, ptr %1488, i64 %1482
  store ptr null, ptr %1489, align 8, !tbaa !75
  br label %1490

1490:                                             ; preds = %1487, %1481
  %1491 = add nuw nsw i64 %1482, 1
  %1492 = load i32, ptr %183, align 8, !tbaa !123
  %1493 = zext i32 %1492 to i64
  %1494 = icmp ult i64 %1491, %1493
  br i1 %1494, label %1481, label %1495, !prof !280, !llvm.loop !281

1495:                                             ; preds = %1490, %1478
  %1496 = load ptr, ptr %186, align 8, !tbaa !121
  call void @free(ptr noundef %1496)
  br label %1497

1497:                                             ; preds = %161, %158, %1495
  %1498 = phi ptr [ %183, %1495 ], [ %17, %158 ], [ %17, %161 ]
  call void @free(ptr noundef %1498)
  ret ptr %23
}

declare ptr @bitmap_obstack_alloc_stat(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc ptr @create_outofssa_var_map(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #9 !prof !94 !PGOFuncName !282 {
  %3 = alloca %struct.gimple_stmt_iterator, align 8
  %4 = alloca ptr, align 8
  %5 = load ptr, ptr @cfun, align 8, !tbaa !75
  %6 = getelementptr inbounds %struct.function, ptr %5, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !95
  %8 = getelementptr inbounds %struct.gimple_df, ptr %7, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !97
  %10 = icmp eq ptr %9, null
  br i1 %10, label %13, label %11, !prof !101

11:                                               ; preds = %2
  %12 = load i32, ptr %9, align 8, !tbaa !102
  br label %13

13:                                               ; preds = %2, %11
  %14 = phi i32 [ %12, %11 ], [ 0, %2 ]
  %15 = tail call ptr @init_var_map(i32 noundef %14) #19
  %16 = load ptr, ptr @cfun, align 8, !tbaa !75
  %17 = getelementptr inbounds %struct.function, ptr %16, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !133
  %19 = load ptr, ptr %18, align 8, !tbaa !134
  %20 = getelementptr inbounds %struct.basic_block_def, ptr %19, i64 0, i32 6
  %21 = load ptr, ptr %20, align 8, !tbaa !136
  %22 = getelementptr inbounds %struct.control_flow_graph, ptr %18, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !138
  %24 = icmp eq ptr %21, %23
  br i1 %24, label %25, label %26, !prof !139

25:                                               ; preds = %28, %13
  br label %421

26:                                               ; preds = %13
  %27 = getelementptr inbounds %struct.coalesce_list_d, ptr %0, i64 0, i32 3
  br label %37

28:                                               ; preds = %417, %231
  %29 = getelementptr inbounds %struct.basic_block_def, ptr %38, i64 0, i32 6
  %30 = load ptr, ptr %29, align 8, !tbaa !136
  %31 = load ptr, ptr @cfun, align 8, !tbaa !75
  %32 = getelementptr inbounds %struct.function, ptr %31, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !133
  %34 = getelementptr inbounds %struct.control_flow_graph, ptr %33, i64 0, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !138
  %36 = icmp eq ptr %30, %35
  br i1 %36, label %25, label %37, !prof !239, !llvm.loop !283

37:                                               ; preds = %26, %28
  %38 = phi ptr [ %21, %26 ], [ %30, %28 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #19
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %3, ptr noundef %38) #19
  %39 = load ptr, ptr %3, align 8, !tbaa.struct !230
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #19
  %40 = icmp eq ptr %39, null
  br i1 %40, label %215, label %41, !prof !231

41:                                               ; preds = %37, %211
  %42 = phi ptr [ %213, %211 ], [ %39, %37 ]
  %43 = load ptr, ptr %42, align 8, !tbaa !175
  %44 = getelementptr inbounds %struct.gimple_statement_phi, ptr %43, i64 0, i32 3
  %45 = load ptr, ptr %44, align 8, !tbaa !86
  %46 = getelementptr inbounds %struct.tree_ssa_name, ptr %45, i64 0, i32 3
  %47 = load i32, ptr %46, align 8, !tbaa !86
  %48 = getelementptr inbounds %struct.gimple_statement_phi, ptr %43, i64 0, i32 2
  %49 = load i32, ptr %48, align 4, !tbaa !86
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %206, label %51, !prof !284

51:                                               ; preds = %41
  %52 = getelementptr inbounds %struct.gimple_statement_base, ptr %43, i64 0, i32 4
  %53 = getelementptr inbounds %struct.gimple_statement_phi, ptr %43, i64 0, i32 1
  %54 = getelementptr inbounds %struct.tree_ssa_name, ptr %45, i64 0, i32 1
  br label %55

55:                                               ; preds = %51, %200
  %56 = phi i64 [ 0, %51 ], [ %202, %200 ]
  %57 = phi i8 [ 0, %51 ], [ %201, %200 ]
  %58 = load ptr, ptr %52, align 8, !tbaa !86
  %59 = load ptr, ptr %58, align 8, !tbaa !285, !nonnull !286, !noundef !286
  %60 = getelementptr inbounds %struct.VEC_edge_base, ptr %59, i64 0, i32 2, i64 %56
  %61 = load ptr, ptr %60, align 8, !tbaa !75
  %62 = trunc i64 %56 to i32
  %63 = load i32, ptr %53, align 8, !tbaa !86
  %64 = icmp ult i32 %63, %62
  br i1 %64, label %65, label %66, !prof !287

65:                                               ; preds = %55
  call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 3103, ptr noundef nonnull @.str.2) #19
  br label %66

66:                                               ; preds = %55, %65
  %67 = getelementptr inbounds %struct.gimple_statement_phi, ptr %43, i64 0, i32 4, i64 %56, i32 0, i32 3
  %68 = load ptr, ptr %67, align 8, !tbaa !217
  %69 = load ptr, ptr %68, align 8, !tbaa !75
  %70 = load i64, ptr %69, align 8
  %71 = and i64 %70, 65535
  %72 = icmp eq i64 %71, 141
  br i1 %72, label %73, label %194, !prof !288

73:                                               ; preds = %66
  %74 = getelementptr inbounds %struct.tree_ssa_name, ptr %69, i64 0, i32 1
  %75 = load ptr, ptr %74, align 8, !tbaa !86
  %76 = load ptr, ptr %54, align 8, !tbaa !86
  %77 = icmp eq ptr %75, %76
  br i1 %77, label %78, label %194, !prof !289

78:                                               ; preds = %73
  %79 = getelementptr inbounds %struct.tree_ssa_name, ptr %69, i64 0, i32 3
  %80 = load i32, ptr %79, align 8, !tbaa !86
  %81 = call zeroext i8 @bitmap_set_bit(ptr noundef %1, i32 noundef %80) #19
  %82 = getelementptr inbounds %struct.edge_def, ptr %61, i64 0, i32 7
  %83 = load i32, ptr %82, align 8, !tbaa !261
  %84 = and i32 %83, 2
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %200, !prof !289

86:                                               ; preds = %78
  %87 = load ptr, ptr %61, align 8, !tbaa !290
  %88 = getelementptr inbounds %struct.basic_block_def, ptr %87, i64 0, i32 1
  %89 = load ptr, ptr %88, align 8, !tbaa !291
  %90 = icmp eq ptr %89, null
  br i1 %90, label %103, label %91, !prof !292

91:                                               ; preds = %86
  %92 = load i32, ptr %89, align 8, !tbaa !258
  %93 = icmp ugt i32 %92, 1
  br i1 %93, label %94, label %103, !prof !293

94:                                               ; preds = %91
  %95 = getelementptr inbounds %struct.edge_def, ptr %61, i64 0, i32 1
  %96 = load ptr, ptr %95, align 8, !tbaa !294
  %97 = load ptr, ptr %96, align 8, !tbaa !285
  %98 = icmp eq ptr %97, null
  br i1 %98, label %103, label %99, !prof !295

99:                                               ; preds = %94
  %100 = load i32, ptr %97, align 8, !tbaa !258
  %101 = icmp ugt i32 %100, 1
  %102 = select i1 %101, i32 2, i32 1, !prof !296
  br label %103

103:                                              ; preds = %91, %99, %94, %86
  %104 = phi i32 [ 1, %91 ], [ %102, %99 ], [ 1, %94 ], [ 1, %86 ]
  %105 = and i32 %83, 8
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %146, label %107, !prof !289

107:                                              ; preds = %103
  %108 = getelementptr inbounds %struct.edge_def, ptr %61, i64 0, i32 1
  %109 = load ptr, ptr %108, align 8, !tbaa !294
  %110 = icmp eq ptr %109, null
  br label %111

111:                                              ; preds = %144, %107
  %112 = phi i32 [ 0, %107 ], [ %145, %144 ]
  %113 = phi i32 [ %104, %107 ], [ %137, %144 ]
  br i1 %110, label %114, label %115

114:                                              ; preds = %111
  call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 687, ptr noundef nonnull @.str.2) #19
  br label %115

115:                                              ; preds = %114, %111
  %116 = load ptr, ptr %109, align 8, !tbaa !75
  %117 = icmp eq ptr %116, null
  br i1 %117, label %120, label %118

118:                                              ; preds = %115
  %119 = load i32, ptr %116, align 8, !tbaa !258
  br label %120

120:                                              ; preds = %118, %115
  %121 = phi i32 [ %119, %118 ], [ 0, %115 ]
  %122 = icmp eq i32 %121, %112
  br i1 %122, label %127, label %123

123:                                              ; preds = %120
  %124 = zext i32 %112 to i64
  %125 = getelementptr inbounds %struct.VEC_edge_base, ptr %116, i64 0, i32 2, i64 %124
  %126 = load ptr, ptr %125, align 8, !tbaa !75
  br label %127

127:                                              ; preds = %123, %120
  %128 = phi ptr [ %126, %123 ], [ null, %120 ]
  br i1 %122, label %146, label %129

129:                                              ; preds = %127
  %130 = icmp eq ptr %128, %61
  br i1 %130, label %136, label %131

131:                                              ; preds = %129
  %132 = getelementptr inbounds %struct.edge_def, ptr %128, i64 0, i32 7
  %133 = load i32, ptr %132, align 8, !tbaa !261
  %134 = and i32 %133, 8
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %136, label %146

136:                                              ; preds = %131, %129
  %137 = phi i32 [ 2, %131 ], [ %113, %129 ]
  br i1 %117, label %140, label %138

138:                                              ; preds = %136
  %139 = load i32, ptr %116, align 8, !tbaa !258
  br label %140

140:                                              ; preds = %138, %136
  %141 = phi i32 [ %139, %138 ], [ 0, %136 ]
  %142 = icmp ult i32 %112, %141
  br i1 %142, label %144, label %143

143:                                              ; preds = %140
  call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 738, ptr noundef nonnull @.str.2) #19
  br label %144

144:                                              ; preds = %143, %140
  %145 = add i32 %112, 1
  br label %111, !llvm.loop !297

146:                                              ; preds = %131, %127, %103
  %147 = phi i32 [ %104, %103 ], [ %113, %127 ], [ 5, %131 ]
  %148 = load ptr, ptr %61, align 8, !tbaa !290
  %149 = getelementptr inbounds %struct.basic_block_def, ptr %148, i64 0, i32 11
  %150 = load i32, ptr %149, align 8, !tbaa !298
  %151 = getelementptr inbounds %struct.edge_def, ptr %61, i64 0, i32 8
  %152 = load i32, ptr %151, align 4, !tbaa !299
  %153 = mul nsw i32 %152, %150
  %154 = add nsw i32 %153, 5000
  %155 = sdiv i32 %154, 10000
  %156 = call zeroext i8 @optimize_edge_for_size_p(ptr noundef nonnull %61) #19
  %157 = call i32 @llvm.umax.i32(i32 %155, i32 1)
  %158 = icmp eq i8 %156, 0
  %159 = select i1 %158, i32 %157, i32 1, !prof !300
  %160 = mul nsw i32 %159, %147
  %161 = icmp eq i32 %160, 1
  br i1 %161, label %162, label %192, !prof !301

162:                                              ; preds = %146
  %163 = getelementptr inbounds %struct.tree_ssa_name, ptr %69, i64 0, i32 5
  %164 = getelementptr inbounds %struct.tree_ssa_name, ptr %69, i64 0, i32 5, i32 1
  %165 = load ptr, ptr %164, align 8, !tbaa !109
  %166 = icmp eq ptr %163, %165
  br i1 %166, label %183, label %167, !prof !302

167:                                              ; preds = %162
  %168 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %165, i64 0, i32 1
  %169 = load ptr, ptr %168, align 8, !tbaa !109
  %170 = icmp eq ptr %163, %169
  br i1 %170, label %171, label %178, !prof !303

171:                                              ; preds = %167
  %172 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %165, i64 0, i32 2
  %173 = load ptr, ptr %172, align 8, !tbaa !86
  %174 = load i32, ptr %173, align 8
  %175 = and i32 %174, 255
  %176 = icmp ne i32 %175, 2
  %177 = zext i1 %176 to i8
  br label %183

178:                                              ; preds = %167
  %179 = load i32, ptr @flag_var_tracking_assignments, align 4, !tbaa !90
  %180 = icmp eq i32 %179, 0
  br i1 %180, label %183, label %181, !prof !304

181:                                              ; preds = %178
  %182 = call zeroext i8 @single_imm_use_1(ptr noundef nonnull %163, ptr noundef null, ptr noundef null) #19
  br label %183

183:                                              ; preds = %162, %171, %178, %181
  %184 = phi i8 [ %177, %171 ], [ %182, %181 ], [ 0, %162 ], [ 0, %178 ]
  %185 = icmp eq i8 %184, 0
  br i1 %185, label %192, label %186, !prof !305

186:                                              ; preds = %183
  %187 = load i32, ptr %79, align 8, !tbaa !86
  %188 = call ptr @xmalloc(i64 noundef 16) #19
  store i32 %47, ptr %188, align 8, !tbaa !270
  %189 = getelementptr inbounds %struct.cost_one_pair_d, ptr %188, i64 0, i32 1
  store i32 %187, ptr %189, align 4, !tbaa !272
  %190 = load ptr, ptr %27, align 8, !tbaa !108
  %191 = getelementptr inbounds %struct.cost_one_pair_d, ptr %188, i64 0, i32 2
  store ptr %190, ptr %191, align 8, !tbaa !273
  store ptr %188, ptr %27, align 8, !tbaa !108
  br label %200

192:                                              ; preds = %183, %146
  %193 = load i32, ptr %79, align 8, !tbaa !86
  call fastcc void @add_coalesce(ptr noundef %0, i32 noundef %47, i32 noundef %193, i32 noundef %160)
  br label %200

194:                                              ; preds = %73, %66
  %195 = getelementptr inbounds %struct.edge_def, ptr %61, i64 0, i32 7
  %196 = load i32, ptr %195, align 8, !tbaa !261
  %197 = and i32 %196, 2
  %198 = icmp eq i32 %197, 0
  br i1 %198, label %200, label %199, !prof !306

199:                                              ; preds = %194
  call fastcc void @abnormal_corrupt(ptr noundef %43, i32 noundef %62)
  br label %200

200:                                              ; preds = %186, %192, %194, %199, %78
  %201 = phi i8 [ 1, %78 ], [ %57, %199 ], [ %57, %194 ], [ 1, %192 ], [ 1, %186 ]
  %202 = add nuw nsw i64 %56, 1
  %203 = load i32, ptr %48, align 4, !tbaa !86
  %204 = zext i32 %203 to i64
  %205 = icmp ult i64 %202, %204
  br i1 %205, label %55, label %206, !prof !307, !llvm.loop !308

206:                                              ; preds = %200, %41
  %207 = phi i8 [ 0, %41 ], [ %201, %200 ]
  %208 = icmp eq i8 %207, 0
  br i1 %208, label %211, label %209, !prof !234

209:                                              ; preds = %206
  %210 = call zeroext i8 @bitmap_set_bit(ptr noundef %1, i32 noundef %47) #19
  br label %211

211:                                              ; preds = %209, %206
  %212 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %42, i64 0, i32 2
  %213 = load ptr, ptr %212, align 8, !tbaa !237
  %214 = icmp eq ptr %213, null
  br i1 %214, label %215, label %41, !prof !232, !llvm.loop !309

215:                                              ; preds = %211, %37
  %216 = getelementptr inbounds %struct.basic_block_def, ptr %38, i64 0, i32 13
  %217 = load i32, ptr %216, align 8, !tbaa !165, !noalias !310
  %218 = and i32 %217, 512
  %219 = icmp eq i32 %218, 0
  br i1 %219, label %220, label %226, !prof !169

220:                                              ; preds = %215
  %221 = getelementptr inbounds %struct.basic_block_def, ptr %38, i64 0, i32 7
  %222 = load ptr, ptr %221, align 8, !tbaa !86, !noalias !310
  %223 = icmp eq ptr %222, null
  br i1 %223, label %226, label %224, !prof !141

224:                                              ; preds = %220
  %225 = load ptr, ptr %222, align 8, !tbaa !170, !noalias !310
  br label %226

226:                                              ; preds = %224, %220, %215
  %227 = phi ptr [ %225, %224 ], [ null, %220 ], [ null, %215 ]
  %228 = icmp eq ptr %227, null
  br i1 %228, label %231, label %229, !prof !141

229:                                              ; preds = %226
  %230 = load ptr, ptr %227, align 8, !tbaa !313, !noalias !310
  br label %231

231:                                              ; preds = %226, %229
  %232 = phi ptr [ %230, %229 ], [ null, %226 ]
  %233 = icmp eq ptr %232, null
  br i1 %233, label %28, label %234, !prof !174

234:                                              ; preds = %231, %417
  %235 = phi ptr [ %419, %417 ], [ %232, %231 ]
  %236 = load ptr, ptr %235, align 8, !tbaa !175
  %237 = load i32, ptr %236, align 8
  %238 = and i32 %237, 255
  %239 = icmp eq i32 %238, 2
  br i1 %239, label %417, label %240, !prof !185

240:                                              ; preds = %234
  %241 = trunc i32 %237 to i8
  switch i8 %241, label %417 [
    i8 6, label %242
    i8 7, label %307
  ], !prof !177

242:                                              ; preds = %240
  %243 = add nsw i32 %238, -10
  %244 = icmp ult i32 %243, -9
  br i1 %244, label %257, label %245, !prof !178

245:                                              ; preds = %242
  %246 = zext nneg i32 %238 to i64
  %247 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %246
  %248 = load i32, ptr %247, align 4, !tbaa !90
  %249 = zext i32 %248 to i64
  %250 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %249
  %251 = load i64, ptr %250, align 8, !tbaa !148
  %252 = icmp eq i64 %251, 0
  br i1 %252, label %253, label %254, !prof !178

253:                                              ; preds = %245
  call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1622, ptr noundef nonnull @.str.2) #19
  br label %254

254:                                              ; preds = %253, %245
  %255 = getelementptr inbounds i8, ptr %236, i64 %251
  %256 = load ptr, ptr %255, align 8, !tbaa !75
  br label %257

257:                                              ; preds = %242, %254
  %258 = phi ptr [ %256, %254 ], [ null, %242 ]
  %259 = load i32, ptr %236, align 8
  %260 = and i32 %259, 255
  %261 = add nsw i32 %260, -10
  %262 = icmp ult i32 %261, -9
  br i1 %262, label %276, label %263, !prof !178

263:                                              ; preds = %257
  %264 = zext nneg i32 %260 to i64
  %265 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %264
  %266 = load i32, ptr %265, align 4, !tbaa !90
  %267 = zext i32 %266 to i64
  %268 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %267
  %269 = load i64, ptr %268, align 8, !tbaa !148
  %270 = icmp eq i64 %269, 0
  br i1 %270, label %271, label %272, !prof !178

271:                                              ; preds = %263
  call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1622, ptr noundef nonnull @.str.2) #19
  br label %272

272:                                              ; preds = %271, %263
  %273 = getelementptr inbounds i8, ptr %236, i64 %269
  %274 = getelementptr inbounds ptr, ptr %273, i64 1
  %275 = load ptr, ptr %274, align 8, !tbaa !75
  br label %276

276:                                              ; preds = %257, %272
  %277 = phi ptr [ %275, %272 ], [ null, %257 ]
  %278 = call zeroext i8 @gimple_assign_copy_p(ptr noundef nonnull %236) #19
  %279 = icmp eq i8 %278, 0
  br i1 %279, label %417, label %280, !prof !179

280:                                              ; preds = %276
  %281 = load i64, ptr %258, align 8
  %282 = and i64 %281, 65535
  %283 = icmp eq i64 %282, 141
  br i1 %283, label %284, label %417, !prof !180

284:                                              ; preds = %280
  %285 = load i64, ptr %277, align 8
  %286 = and i64 %285, 65535
  %287 = icmp eq i64 %286, 141
  br i1 %287, label %288, label %417

288:                                              ; preds = %284
  %289 = getelementptr inbounds %struct.tree_ssa_name, ptr %258, i64 0, i32 1
  %290 = load ptr, ptr %289, align 8, !tbaa !86
  %291 = getelementptr inbounds %struct.tree_ssa_name, ptr %277, i64 0, i32 1
  %292 = load ptr, ptr %291, align 8, !tbaa !86
  %293 = icmp eq ptr %290, %292
  br i1 %293, label %294, label %417

294:                                              ; preds = %288
  %295 = getelementptr inbounds %struct.basic_block_def, ptr %38, i64 0, i32 11
  %296 = getelementptr inbounds %struct.tree_ssa_name, ptr %258, i64 0, i32 3
  %297 = load i32, ptr %296, align 8, !tbaa !86
  %298 = getelementptr inbounds %struct.tree_ssa_name, ptr %277, i64 0, i32 3
  %299 = load i32, ptr %298, align 8, !tbaa !86
  %300 = load i32, ptr %295, align 8, !tbaa !298
  %301 = call zeroext i8 @optimize_bb_for_size_p(ptr noundef %38) #19
  %302 = call i32 @llvm.umax.i32(i32 %300, i32 1)
  %303 = icmp eq i8 %301, 0
  %304 = select i1 %303, i32 %302, i32 1
  call fastcc void @add_coalesce(ptr noundef %0, i32 noundef %297, i32 noundef %299, i32 noundef %304)
  %305 = call zeroext i8 @bitmap_set_bit(ptr noundef %1, i32 noundef %297) #19
  %306 = call zeroext i8 @bitmap_set_bit(ptr noundef %1, i32 noundef %299) #19
  br label %417

307:                                              ; preds = %240
  %308 = getelementptr inbounds %struct.gimple_statement_asm, ptr %236, i64 0, i32 3
  %309 = load i8, ptr %308, align 1, !tbaa !86
  %310 = zext i8 %309 to i64
  %311 = getelementptr inbounds %struct.gimple_statement_asm, ptr %236, i64 0, i32 2
  %312 = load i8, ptr %311, align 8, !tbaa !86
  %313 = zext i8 %312 to i64
  %314 = shl nuw nsw i64 %310, 3
  %315 = alloca i8, i64 %314, align 16
  %316 = icmp eq i8 %309, 0
  br i1 %316, label %317, label %319

317:                                              ; preds = %342, %307
  %318 = icmp eq i8 %312, 0
  br i1 %318, label %417, label %352

319:                                              ; preds = %307, %342
  %320 = phi i64 [ %350, %342 ], [ 0, %307 ]
  %321 = trunc i64 %320 to i32
  %322 = load i8, ptr %308, align 1, !tbaa !86
  %323 = zext i8 %322 to i32
  %324 = icmp ult i32 %323, %321
  br i1 %324, label %325, label %326

325:                                              ; preds = %319
  call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 2655, ptr noundef nonnull @.str.2) #19
  br label %326

326:                                              ; preds = %325, %319
  %327 = load i8, ptr %311, align 8, !tbaa !86
  %328 = zext i8 %327 to i64
  %329 = add nuw i64 %320, %328
  %330 = load i32, ptr %236, align 8
  %331 = and i32 %330, 255
  %332 = add nsw i32 %331, -1
  %333 = icmp ult i32 %332, 9
  call void @llvm.assume(i1 %333)
  %334 = zext nneg i32 %331 to i64
  %335 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %334
  %336 = load i32, ptr %335, align 4, !tbaa !90
  %337 = zext i32 %336 to i64
  %338 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %337
  %339 = load i64, ptr %338, align 8, !tbaa !148
  %340 = icmp eq i64 %339, 0
  br i1 %340, label %341, label %342

341:                                              ; preds = %326
  call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1622, ptr noundef nonnull @.str.2) #19
  br label %342

342:                                              ; preds = %341, %326
  %343 = getelementptr inbounds i8, ptr %236, i64 %339
  %344 = and i64 %329, 4294967295
  %345 = getelementptr inbounds ptr, ptr %343, i64 %344
  %346 = load ptr, ptr %345, align 8, !tbaa !75
  %347 = getelementptr inbounds %struct.tree_list, ptr %346, i64 0, i32 2
  %348 = load ptr, ptr %347, align 8, !tbaa !86
  %349 = getelementptr inbounds ptr, ptr %315, i64 %320
  store ptr %348, ptr %349, align 8, !tbaa !75
  %350 = add nuw nsw i64 %320, 1
  %351 = icmp eq i64 %350, %310
  br i1 %351, label %317, label %319, !llvm.loop !314

352:                                              ; preds = %317, %414
  %353 = phi i64 [ %415, %414 ], [ 0, %317 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #19
  %354 = trunc i64 %353 to i32
  %355 = load i8, ptr %311, align 8, !tbaa !86
  %356 = zext i8 %355 to i32
  %357 = icmp ult i32 %356, %354
  br i1 %357, label %358, label %359

358:                                              ; preds = %352
  call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 2622, ptr noundef nonnull @.str.2) #19
  br label %359

359:                                              ; preds = %358, %352
  %360 = load i32, ptr %236, align 8
  %361 = and i32 %360, 255
  %362 = add nsw i32 %361, -1
  %363 = icmp ult i32 %362, 9
  call void @llvm.assume(i1 %363)
  %364 = zext nneg i32 %361 to i64
  %365 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %364
  %366 = load i32, ptr %365, align 4, !tbaa !90
  %367 = zext i32 %366 to i64
  %368 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %367
  %369 = load i64, ptr %368, align 8, !tbaa !148
  %370 = icmp eq i64 %369, 0
  br i1 %370, label %371, label %372

371:                                              ; preds = %359
  call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1622, ptr noundef nonnull @.str.2) #19
  br label %372

372:                                              ; preds = %371, %359
  %373 = getelementptr inbounds i8, ptr %236, i64 %369
  %374 = getelementptr inbounds ptr, ptr %373, i64 %353
  %375 = load ptr, ptr %374, align 8, !tbaa !75
  %376 = getelementptr inbounds %struct.tree_list, ptr %375, i64 0, i32 2
  %377 = load ptr, ptr %376, align 8, !tbaa !86
  %378 = load i64, ptr %377, align 8
  %379 = and i64 %378, 65535
  %380 = icmp eq i64 %379, 141
  br i1 %380, label %381, label %414

381:                                              ; preds = %372
  %382 = getelementptr inbounds %struct.tree_list, ptr %375, i64 0, i32 1
  %383 = load ptr, ptr %382, align 8, !tbaa !86
  %384 = getelementptr inbounds %struct.tree_list, ptr %383, i64 0, i32 2
  %385 = load ptr, ptr %384, align 8, !tbaa !86
  %386 = getelementptr inbounds %struct.tree_string, ptr %385, i64 0, i32 2
  %387 = call i64 @strtoul(ptr noundef nonnull %386, ptr noundef nonnull %4, i32 noundef 10)
  %388 = icmp uge i64 %387, %310
  %389 = load ptr, ptr %4, align 8
  %390 = icmp eq ptr %389, %386
  %391 = select i1 %388, i1 true, i1 %390
  br i1 %391, label %414, label %392

392:                                              ; preds = %381
  %393 = getelementptr inbounds ptr, ptr %315, i64 %387
  %394 = load ptr, ptr %393, align 8, !tbaa !75
  %395 = load i64, ptr %394, align 8
  %396 = and i64 %395, 65535
  %397 = icmp eq i64 %396, 141
  br i1 %397, label %398, label %414

398:                                              ; preds = %392
  %399 = getelementptr inbounds %struct.tree_ssa_name, ptr %394, i64 0, i32 1
  %400 = load ptr, ptr %399, align 8, !tbaa !86
  %401 = getelementptr inbounds %struct.tree_ssa_name, ptr %377, i64 0, i32 1
  %402 = load ptr, ptr %401, align 8, !tbaa !86
  %403 = icmp eq ptr %400, %402
  br i1 %403, label %404, label %414

404:                                              ; preds = %398
  %405 = getelementptr inbounds %struct.tree_ssa_name, ptr %377, i64 0, i32 3
  %406 = load i32, ptr %405, align 8, !tbaa !86
  %407 = getelementptr inbounds %struct.tree_ssa_name, ptr %394, i64 0, i32 3
  %408 = load i32, ptr %407, align 8, !tbaa !86
  %409 = call zeroext i8 @optimize_bb_for_size_p(ptr noundef %38) #19
  %410 = icmp eq i8 %409, 0
  %411 = select i1 %410, i32 10000, i32 1
  call fastcc void @add_coalesce(ptr noundef %0, i32 noundef %408, i32 noundef %406, i32 noundef %411)
  %412 = call zeroext i8 @bitmap_set_bit(ptr noundef %1, i32 noundef %408) #19
  %413 = call zeroext i8 @bitmap_set_bit(ptr noundef %1, i32 noundef %406) #19
  br label %414

414:                                              ; preds = %398, %404, %392, %381, %372
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #19
  %415 = add nuw nsw i64 %353, 1
  %416 = icmp eq i64 %415, %313
  br i1 %416, label %417, label %352, !llvm.loop !315

417:                                              ; preds = %414, %317, %276, %280, %284, %288, %294, %240, %234
  %418 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %235, i64 0, i32 2
  %419 = load ptr, ptr %418, align 8, !tbaa !237
  %420 = icmp eq ptr %419, null
  br i1 %420, label %28, label %234, !prof !228, !llvm.loop !316

421:                                              ; preds = %25, %497
  %422 = phi i64 [ %499, %497 ], [ 1, %25 ]
  %423 = phi ptr [ %498, %497 ], [ null, %25 ]
  %424 = load ptr, ptr @cfun, align 8, !tbaa !75
  %425 = getelementptr inbounds %struct.function, ptr %424, i64 0, i32 3
  %426 = load ptr, ptr %425, align 8, !tbaa !95
  %427 = getelementptr inbounds %struct.gimple_df, ptr %426, i64 0, i32 2
  %428 = load ptr, ptr %427, align 8, !tbaa !97
  %429 = icmp eq ptr %428, null
  br i1 %429, label %432, label %430, !prof !317

430:                                              ; preds = %421
  %431 = load i32, ptr %428, align 8, !tbaa !102
  br label %432

432:                                              ; preds = %421, %430
  %433 = phi i32 [ %431, %430 ], [ 0, %421 ]
  %434 = zext i32 %433 to i64
  %435 = icmp ult i64 %422, %434
  br i1 %435, label %436, label %500, !prof !318

436:                                              ; preds = %432
  %437 = getelementptr inbounds %struct.VEC_tree_base, ptr %428, i64 0, i32 2, i64 %422
  %438 = load ptr, ptr %437, align 8, !tbaa !75
  %439 = icmp eq ptr %438, null
  br i1 %439, label %497, label %440, !prof !319

440:                                              ; preds = %436
  %441 = call zeroext i8 @is_gimple_reg(ptr noundef nonnull %438) #19
  %442 = icmp eq i8 %441, 0
  br i1 %442, label %497, label %443, !prof !320

443:                                              ; preds = %440
  %444 = getelementptr inbounds %struct.tree_ssa_name, ptr %438, i64 0, i32 1
  %445 = load ptr, ptr %444, align 8, !tbaa !86
  %446 = load i64, ptr %445, align 8
  %447 = and i64 %446, 65535
  %448 = icmp eq i64 %447, 36
  br i1 %448, label %449, label %474, !prof !321

449:                                              ; preds = %443
  %450 = icmp eq ptr %423, null
  br i1 %450, label %474, label %451

451:                                              ; preds = %449
  %452 = getelementptr inbounds %struct.tree_ssa_name, ptr %423, i64 0, i32 1
  %453 = load ptr, ptr %452, align 8, !tbaa !86
  %454 = icmp eq ptr %445, %453
  br i1 %454, label %456, label %455

455:                                              ; preds = %451
  call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1170, ptr noundef nonnull @.str.2) #19
  br label %456

456:                                              ; preds = %451, %455
  %457 = getelementptr inbounds %struct.tree_ssa_name, ptr %423, i64 0, i32 3
  %458 = load i32, ptr %457, align 8, !tbaa !86
  %459 = getelementptr inbounds %struct.tree_ssa_name, ptr %438, i64 0, i32 3
  %460 = load i32, ptr %459, align 8, !tbaa !86
  %461 = call zeroext i8 @bitmap_set_bit(ptr noundef %1, i32 noundef %458) #19
  %462 = call zeroext i8 @bitmap_set_bit(ptr noundef %1, i32 noundef %460) #19
  %463 = load ptr, ptr @cfun, align 8, !tbaa !75
  %464 = getelementptr inbounds %struct.function, ptr %463, i64 0, i32 1
  %465 = load ptr, ptr %464, align 8, !tbaa !133
  %466 = getelementptr inbounds %struct.control_flow_graph, ptr %465, i64 0, i32 1
  %467 = load ptr, ptr %466, align 8, !tbaa !138
  %468 = getelementptr inbounds %struct.basic_block_def, ptr %467, i64 0, i32 11
  %469 = load i32, ptr %468, align 8, !tbaa !298
  %470 = call zeroext i8 @optimize_bb_for_size_p(ptr noundef %467) #19
  %471 = call i32 @llvm.umax.i32(i32 %469, i32 1)
  %472 = icmp eq i8 %470, 0
  %473 = select i1 %472, i32 %471, i32 1
  call fastcc void @add_coalesce(ptr noundef %0, i32 noundef %458, i32 noundef %460, i32 noundef %473)
  br label %474

474:                                              ; preds = %449, %456, %443
  %475 = phi ptr [ %423, %456 ], [ %423, %443 ], [ %438, %449 ]
  %476 = load ptr, ptr @cfun, align 8, !tbaa !75
  %477 = load ptr, ptr %444, align 8, !tbaa !86
  %478 = call ptr @gimple_default_def(ptr noundef %476, ptr noundef %477) #19
  %479 = icmp eq ptr %478, %438
  br i1 %479, label %480, label %497, !prof !322

480:                                              ; preds = %474
  %481 = getelementptr inbounds %struct.tree_ssa_name, ptr %438, i64 0, i32 5
  %482 = getelementptr inbounds %struct.tree_ssa_name, ptr %438, i64 0, i32 5, i32 1
  %483 = load ptr, ptr %482, align 8, !tbaa !109
  %484 = icmp eq ptr %481, %483
  br i1 %484, label %490, label %485, !prof !101

485:                                              ; preds = %480
  %486 = load i32, ptr @flag_var_tracking_assignments, align 4, !tbaa !90
  %487 = icmp eq i32 %486, 0
  br i1 %487, label %490, label %488, !prof !116

488:                                              ; preds = %485
  %489 = call zeroext i8 @has_zero_uses_1(ptr noundef nonnull %481) #19
  br label %490

490:                                              ; preds = %480, %485, %488
  %491 = phi i8 [ %489, %488 ], [ 1, %480 ], [ 0, %485 ]
  %492 = icmp eq i8 %491, 0
  br i1 %492, label %493, label %497, !prof !116

493:                                              ; preds = %490
  %494 = getelementptr inbounds %struct.tree_ssa_name, ptr %438, i64 0, i32 3
  %495 = load i32, ptr %494, align 8, !tbaa !86
  %496 = call zeroext i8 @bitmap_set_bit(ptr noundef %1, i32 noundef %495) #19
  br label %497

497:                                              ; preds = %436, %440, %493, %490, %474
  %498 = phi ptr [ %475, %490 ], [ %475, %493 ], [ %475, %474 ], [ %423, %440 ], [ %423, %436 ]
  %499 = add nuw nsw i64 %422, 1
  br label %421, !llvm.loop !323

500:                                              ; preds = %432
  ret ptr %15
}

declare ptr @htab_create(i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal i32 @hash_ssa_name_by_var(ptr nocapture noundef readonly %0) #10 !prof !74 {
  %2 = load ptr, ptr @htab_hash_pointer, align 8, !tbaa !75
  %3 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !86
  %5 = tail call i32 %2(ptr noundef %4) #19
  ret i32 %5
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal i32 @eq_ssa_name_by_var(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #11 !prof !74 {
  %3 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !86
  %5 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !86
  %7 = icmp eq ptr %4, %6
  %8 = zext i1 %7 to i32
  ret i32 %8
}

declare ptr @htab_find_slot(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @add_coalesce(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #12 !prof !324 !PGOFuncName !325 {
  %5 = alloca %struct.coalesce_pair, align 4
  %6 = getelementptr inbounds %struct.coalesce_list_d, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !106
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9, !prof !326

9:                                                ; preds = %4
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 314, ptr noundef nonnull @.str.2) #19
  br label %10

10:                                               ; preds = %4, %9
  %11 = icmp eq i32 %1, %2
  br i1 %11, label %49, label %12, !prof !327

12:                                               ; preds = %10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #19
  %13 = icmp slt i32 %2, %1
  %14 = getelementptr inbounds %struct.coalesce_pair, ptr %5, i64 0, i32 1
  %15 = select i1 %13, i32 %2, i32 %1, !prof !328
  %16 = select i1 %13, i32 %1, i32 %2, !prof !328
  store i32 %15, ptr %5, align 4, !tbaa !111
  store i32 %16, ptr %14, align 4, !tbaa !113
  %17 = getelementptr inbounds %struct.coalesce_pair, ptr %5, i64 0, i32 1
  %18 = add i32 %16, -1
  %19 = mul i32 %18, %16
  %20 = lshr i32 %19, 1
  %21 = add i32 %20, %15
  %22 = load ptr, ptr %0, align 8, !tbaa !104
  %23 = call ptr @htab_find_slot_with_hash(ptr noundef %22, ptr noundef nonnull %5, i32 noundef %21, i32 noundef 1) #19
  %24 = icmp eq ptr %23, null
  br i1 %24, label %40, label %25, !prof !327

25:                                               ; preds = %12
  %26 = load ptr, ptr %23, align 8, !tbaa !75
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %38, !prof !329

28:                                               ; preds = %25
  %29 = call ptr @xmalloc(i64 noundef 12) #19
  %30 = load ptr, ptr %6, align 8, !tbaa !106
  %31 = icmp eq ptr %30, null
  br i1 %31, label %33, label %32, !prof !330

32:                                               ; preds = %28
  call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 284, ptr noundef nonnull @.str.2) #19
  br label %33

33:                                               ; preds = %32, %28
  %34 = load i32, ptr %5, align 4, !tbaa !111
  store i32 %34, ptr %29, align 4, !tbaa !111
  %35 = load i32, ptr %17, align 4, !tbaa !113
  %36 = getelementptr inbounds %struct.coalesce_pair, ptr %29, i64 0, i32 1
  store i32 %35, ptr %36, align 4, !tbaa !113
  %37 = getelementptr inbounds %struct.coalesce_pair, ptr %29, i64 0, i32 2
  store i32 0, ptr %37, align 4, !tbaa !114
  store ptr %29, ptr %23, align 8, !tbaa !75
  br label %38

38:                                               ; preds = %33, %25
  %39 = load ptr, ptr %23, align 8, !tbaa !75
  br label %40

40:                                               ; preds = %12, %38
  %41 = phi ptr [ %39, %38 ], [ null, %12 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #19
  %42 = getelementptr inbounds %struct.coalesce_pair, ptr %41, i64 0, i32 2
  %43 = load i32, ptr %42, align 4, !tbaa !114
  %44 = icmp slt i32 %43, 2147483646
  br i1 %44, label %45, label %49, !prof !326

45:                                               ; preds = %40
  %46 = icmp slt i32 %3, 2147483646
  %47 = select i1 %46, i32 %43, i32 0, !prof !326
  %48 = add nsw i32 %47, %3
  store i32 %48, ptr %42, align 4, !tbaa !114
  br label %49

49:                                               ; preds = %45, %40, %10
  ret void
}

declare zeroext i8 @bitmap_set_bit(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @htab_delete(ptr noundef) local_unnamed_addr #3

declare void @dump_var_map(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @partition_view_bitmap(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

declare void @bitmap_obstack_free(ptr noundef) local_unnamed_addr #3

declare ptr @calculate_live_ranges(ptr noundef) local_unnamed_addr #3

declare void @dump_live_info(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @delete_tree_live_info(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #1

declare ptr @xmalloc(i64 noundef) local_unnamed_addr #3

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal i32 @coalesce_pair_map_hash(ptr nocapture noundef readonly %0) #11 !prof !74 {
  %2 = load i32, ptr %0, align 4, !tbaa !111
  %3 = getelementptr inbounds %struct.coalesce_pair, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 4, !tbaa !113
  %5 = add i32 %4, -1
  %6 = mul i32 %5, %4
  %7 = lshr i32 %6, 1
  %8 = add i32 %7, %2
  ret i32 %8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal i32 @coalesce_pair_map_eq(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #13 !prof !331 !PGOFuncName !332 {
  %3 = load i32, ptr %0, align 4, !tbaa !111
  %4 = load i32, ptr %1, align 4, !tbaa !111
  %5 = icmp eq i32 %3, %4
  br i1 %5, label %6, label %13, !prof !333

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.coalesce_pair, ptr %0, i64 0, i32 1
  %8 = load i32, ptr %7, align 4, !tbaa !113
  %9 = getelementptr inbounds %struct.coalesce_pair, ptr %1, i64 0, i32 1
  %10 = load i32, ptr %9, align 4, !tbaa !113
  %11 = icmp eq i32 %8, %10
  %12 = zext i1 %11 to i32
  br label %13

13:                                               ; preds = %6, %2
  %14 = phi i32 [ 0, %2 ], [ %12, %6 ]
  ret i32 %14
}

declare ptr @init_var_map(i32 noundef) local_unnamed_addr #3

declare void @gsi_start_phis(ptr dead_on_unwind writable sret(%struct.gimple_stmt_iterator) align 8, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define internal fastcc void @abnormal_corrupt(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #2 !prof !74 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 4
  %5 = load ptr, ptr %4, align 8, !tbaa !86
  %6 = load ptr, ptr %5, align 8, !tbaa !285, !nonnull !286, !noundef !286
  %7 = getelementptr inbounds %struct.VEC_edge_base, ptr %6, i64 0, i32 2, i64 %3
  %8 = load ptr, ptr %7, align 8, !tbaa !75
  %9 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !86
  %11 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 1
  %12 = load i32, ptr %11, align 8, !tbaa !86
  %13 = icmp ult i32 %12, %1
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 3103, ptr noundef nonnull @.str.2) #19
  br label %15

15:                                               ; preds = %2, %14
  %16 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 4, i64 %3, i32 0, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !217
  %18 = load ptr, ptr %17, align 8, !tbaa !75
  %19 = load ptr, ptr @stderr, align 8, !tbaa !75
  %20 = load ptr, ptr %8, align 8, !tbaa !290
  %21 = getelementptr inbounds %struct.basic_block_def, ptr %20, i64 0, i32 9
  %22 = load i32, ptr %21, align 8, !tbaa !142
  %23 = getelementptr inbounds %struct.edge_def, ptr %8, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !294
  %25 = getelementptr inbounds %struct.basic_block_def, ptr %24, i64 0, i32 9
  %26 = load i32, ptr %25, align 8, !tbaa !142
  %27 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %19, ptr noundef nonnull @.str.5, i32 noundef %22, i32 noundef %26) #20
  %28 = load ptr, ptr @stderr, align 8, !tbaa !75
  %29 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %28, ptr noundef nonnull @.str.6, i32 noundef %1) #20
  %30 = load ptr, ptr @stderr, align 8, !tbaa !75
  tail call void @print_generic_expr(ptr noundef %30, ptr noundef %18, i32 noundef 2) #19
  %31 = load i64, ptr %18, align 8
  %32 = and i64 %31, 65535
  %33 = icmp eq i64 %32, 141
  br i1 %33, label %37, label %34

34:                                               ; preds = %15
  %35 = load ptr, ptr @stderr, align 8, !tbaa !75
  %36 = tail call i64 @fwrite(ptr nonnull @.str.7, i64 22, i64 1, ptr %35) #20
  br label %48

37:                                               ; preds = %15
  %38 = getelementptr inbounds %struct.tree_ssa_name, ptr %10, i64 0, i32 1
  %39 = load ptr, ptr %38, align 8, !tbaa !86
  %40 = getelementptr inbounds %struct.tree_ssa_name, ptr %18, i64 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !86
  %42 = icmp eq ptr %39, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %37
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 958, ptr noundef nonnull @.str.2) #19
  br label %44

44:                                               ; preds = %37, %43
  %45 = load ptr, ptr @stderr, align 8, !tbaa !75
  %46 = tail call i64 @fwrite(ptr nonnull @.str.8, i64 53, i64 1, ptr %45) #20
  %47 = load ptr, ptr @stderr, align 8, !tbaa !75
  tail call void @print_generic_stmt(ptr noundef %47, ptr noundef %10, i32 noundef 2) #19
  br label %48

48:                                               ; preds = %44, %34
  tail call void (ptr, ...) @internal_error(ptr noundef nonnull @.str.9) #19
  ret void
}

declare zeroext i8 @gimple_assign_copy_p(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtoul(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

declare zeroext i8 @optimize_bb_for_size_p(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @is_gimple_reg(ptr noundef) local_unnamed_addr #3

declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @gimple_default_def(ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @optimize_edge_for_size_p(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @single_imm_use_1(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @print_generic_expr(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @print_generic_stmt(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @internal_error(ptr noundef, ...) local_unnamed_addr #3

declare zeroext i8 @has_zero_uses_1(ptr noundef) local_unnamed_addr #3

declare ptr @htab_find_slot_with_hash(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #14

declare ptr @xcalloc(i64 noundef, i64 noundef) local_unnamed_addr #3

declare i32 @bitmap_bit_p(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @bitmap_clear(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @bitmap_clear_bit(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @bitmap_print(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @spec_qsort(ptr noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define internal i32 @compare_pairs(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #15 !prof !334 !PGOFuncName !335 {
  %3 = load ptr, ptr %0, align 8, !tbaa !75
  %4 = getelementptr inbounds %struct.coalesce_pair, ptr %3, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !114
  %6 = load ptr, ptr %1, align 8, !tbaa !75
  %7 = getelementptr inbounds %struct.coalesce_pair, ptr %6, i64 0, i32 2
  %8 = load i32, ptr %7, align 4, !tbaa !114
  %9 = sub nsw i32 %5, %8
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %22, !prof !336

11:                                               ; preds = %2
  %12 = load i32, ptr %6, align 4, !tbaa !111
  %13 = load i32, ptr %3, align 4, !tbaa !111
  %14 = sub nsw i32 %12, %13
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %22, !prof !337

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.coalesce_pair, ptr %6, i64 0, i32 1
  %18 = load i32, ptr %17, align 4, !tbaa !113
  %19 = getelementptr inbounds %struct.coalesce_pair, ptr %3, i64 0, i32 1
  %20 = load i32, ptr %19, align 4, !tbaa !113
  %21 = sub nsw i32 %18, %20
  br label %22

22:                                               ; preds = %11, %16, %2
  %23 = phi i32 [ %21, %16 ], [ %14, %11 ], [ %9, %2 ]
  ret i32 %23
}

declare i64 @htab_elements(ptr noundef) local_unnamed_addr #3

declare i64 @htab_size(ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc noundef zeroext i8 @attempt_coalesce(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #12 !prof !338 !PGOFuncName !339 {
  %6 = load ptr, ptr @cfun, align 8, !tbaa !75
  %7 = getelementptr inbounds %struct.function, ptr %6, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !95
  %9 = getelementptr inbounds %struct.gimple_df, ptr %8, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !97
  %11 = zext i32 %2 to i64
  %12 = getelementptr inbounds %struct.VEC_tree_base, ptr %10, i64 0, i32 2, i64 %11
  %13 = load ptr, ptr %12, align 8, !tbaa !75
  %14 = load i64, ptr %13, align 8
  %15 = and i64 %14, 65535
  %16 = icmp eq i64 %15, 141
  br i1 %16, label %18, label %17, !prof !277

17:                                               ; preds = %5
  tail call void @fancy_abort(ptr noundef nonnull @.str.11, i32 noundef 147, ptr noundef nonnull @.str.2) #19
  br label %18

18:                                               ; preds = %17, %5
  %19 = load ptr, ptr %0, align 8, !tbaa !181
  %20 = getelementptr inbounds %struct.tree_ssa_name, ptr %13, i64 0, i32 3
  %21 = load i32, ptr %20, align 8, !tbaa !86
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds %struct.partition_def, ptr %19, i64 0, i32 1, i64 %22
  %24 = load i32, ptr %23, align 8, !tbaa !182
  %25 = getelementptr inbounds %struct._var_map, ptr %0, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !184
  %27 = icmp eq ptr %26, null
  br i1 %27, label %32, label %28, !prof !340

28:                                               ; preds = %18
  %29 = sext i32 %24 to i64
  %30 = getelementptr inbounds i32, ptr %26, i64 %29
  %31 = load i32, ptr %30, align 4, !tbaa !90
  br label %32

32:                                               ; preds = %18, %28
  %33 = phi i32 [ %31, %28 ], [ %24, %18 ]
  %34 = load ptr, ptr @cfun, align 8, !tbaa !75
  %35 = getelementptr inbounds %struct.function, ptr %34, i64 0, i32 3
  %36 = load ptr, ptr %35, align 8, !tbaa !95
  %37 = getelementptr inbounds %struct.gimple_df, ptr %36, i64 0, i32 2
  %38 = load ptr, ptr %37, align 8, !tbaa !97
  %39 = zext i32 %3 to i64
  %40 = getelementptr inbounds %struct.VEC_tree_base, ptr %38, i64 0, i32 2, i64 %39
  %41 = load ptr, ptr %40, align 8, !tbaa !75
  %42 = load i64, ptr %41, align 8
  %43 = and i64 %42, 65535
  %44 = icmp eq i64 %43, 141
  br i1 %44, label %46, label %45, !prof !277

45:                                               ; preds = %32
  tail call void @fancy_abort(ptr noundef nonnull @.str.11, i32 noundef 147, ptr noundef nonnull @.str.2) #19
  br label %46

46:                                               ; preds = %45, %32
  %47 = load ptr, ptr %0, align 8, !tbaa !181
  %48 = getelementptr inbounds %struct.tree_ssa_name, ptr %41, i64 0, i32 3
  %49 = load i32, ptr %48, align 8, !tbaa !86
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds %struct.partition_def, ptr %47, i64 0, i32 1, i64 %50
  %52 = load i32, ptr %51, align 8, !tbaa !182
  %53 = load ptr, ptr %25, align 8, !tbaa !184
  %54 = icmp eq ptr %53, null
  br i1 %54, label %59, label %55, !prof !340

55:                                               ; preds = %46
  %56 = sext i32 %52 to i64
  %57 = getelementptr inbounds i32, ptr %53, i64 %56
  %58 = load i32, ptr %57, align 4, !tbaa !90
  br label %59

59:                                               ; preds = %46, %55
  %60 = phi i32 [ %58, %55 ], [ %52, %46 ]
  %61 = icmp eq ptr %4, null
  br i1 %61, label %106, label %62, !prof !277

62:                                               ; preds = %59
  %63 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %4, ptr noundef nonnull @.str.23, i32 noundef %2)
  %64 = getelementptr inbounds %struct._var_map, ptr %0, i64 0, i32 2
  %65 = load ptr, ptr %64, align 8, !tbaa !341
  %66 = icmp eq ptr %65, null
  br i1 %66, label %71, label %67

67:                                               ; preds = %62
  %68 = sext i32 %33 to i64
  %69 = getelementptr inbounds i32, ptr %65, i64 %68
  %70 = load i32, ptr %69, align 4, !tbaa !90
  br label %71

71:                                               ; preds = %62, %67
  %72 = phi i32 [ %70, %67 ], [ %33, %62 ]
  %73 = load ptr, ptr %0, align 8, !tbaa !181
  %74 = sext i32 %72 to i64
  %75 = getelementptr inbounds %struct.partition_def, ptr %73, i64 0, i32 1, i64 %74
  %76 = load i32, ptr %75, align 8, !tbaa !182
  %77 = load ptr, ptr @cfun, align 8, !tbaa !75
  %78 = getelementptr inbounds %struct.function, ptr %77, i64 0, i32 3
  %79 = load ptr, ptr %78, align 8, !tbaa !95
  %80 = getelementptr inbounds %struct.gimple_df, ptr %79, i64 0, i32 2
  %81 = load ptr, ptr %80, align 8, !tbaa !97
  %82 = zext i32 %76 to i64
  %83 = getelementptr inbounds %struct.VEC_tree_base, ptr %81, i64 0, i32 2, i64 %82
  %84 = load ptr, ptr %83, align 8, !tbaa !75
  tail call void @print_generic_expr(ptr noundef nonnull %4, ptr noundef %84, i32 noundef 2) #19
  %85 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %4, ptr noundef nonnull @.str.24, i32 noundef %3)
  %86 = load ptr, ptr %64, align 8, !tbaa !341
  %87 = icmp eq ptr %86, null
  br i1 %87, label %92, label %88

88:                                               ; preds = %71
  %89 = sext i32 %60 to i64
  %90 = getelementptr inbounds i32, ptr %86, i64 %89
  %91 = load i32, ptr %90, align 4, !tbaa !90
  br label %92

92:                                               ; preds = %71, %88
  %93 = phi i32 [ %91, %88 ], [ %60, %71 ]
  %94 = load ptr, ptr %0, align 8, !tbaa !181
  %95 = sext i32 %93 to i64
  %96 = getelementptr inbounds %struct.partition_def, ptr %94, i64 0, i32 1, i64 %95
  %97 = load i32, ptr %96, align 8, !tbaa !182
  %98 = load ptr, ptr @cfun, align 8, !tbaa !75
  %99 = getelementptr inbounds %struct.function, ptr %98, i64 0, i32 3
  %100 = load ptr, ptr %99, align 8, !tbaa !95
  %101 = getelementptr inbounds %struct.gimple_df, ptr %100, i64 0, i32 2
  %102 = load ptr, ptr %101, align 8, !tbaa !97
  %103 = zext i32 %97 to i64
  %104 = getelementptr inbounds %struct.VEC_tree_base, ptr %102, i64 0, i32 2, i64 %103
  %105 = load ptr, ptr %104, align 8, !tbaa !75
  tail call void @print_generic_expr(ptr noundef nonnull %4, ptr noundef %105, i32 noundef 2) #19
  br label %106

106:                                              ; preds = %92, %59
  %107 = icmp eq i32 %33, %60
  br i1 %107, label %108, label %111, !prof !342

108:                                              ; preds = %106
  br i1 %61, label %179, label %109, !prof !343

109:                                              ; preds = %108
  %110 = tail call i64 @fwrite(ptr nonnull @.str.25, i64 21, i64 1, ptr nonnull %4)
  br label %179

111:                                              ; preds = %106
  br i1 %61, label %114, label %112, !prof !344

112:                                              ; preds = %111
  %113 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %4, ptr noundef nonnull @.str.26, i32 noundef %33, i32 noundef %60)
  br label %114

114:                                              ; preds = %112, %111
  %115 = getelementptr inbounds %struct.ssa_conflicts_d, ptr %1, i64 0, i32 1
  %116 = load ptr, ptr %115, align 8, !tbaa !121
  %117 = zext i32 %33 to i64
  %118 = getelementptr inbounds ptr, ptr %116, i64 %117
  %119 = load ptr, ptr %118, align 8, !tbaa !75
  %120 = icmp eq ptr %119, null
  br i1 %120, label %130, label %121, !prof !345

121:                                              ; preds = %114
  %122 = zext i32 %60 to i64
  %123 = getelementptr inbounds ptr, ptr %116, i64 %122
  %124 = load ptr, ptr %123, align 8, !tbaa !75
  %125 = icmp eq ptr %124, null
  br i1 %125, label %130, label %126, !prof !346

126:                                              ; preds = %121
  %127 = tail call i32 @bitmap_bit_p(ptr noundef nonnull %119, i32 noundef %60) #19
  %128 = and i32 %127, 255
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %130, label %176, !prof !344

130:                                              ; preds = %121, %114, %126
  %131 = getelementptr inbounds %struct._var_map, ptr %0, i64 0, i32 2
  %132 = load ptr, ptr %131, align 8, !tbaa !341
  %133 = icmp eq ptr %132, null
  br i1 %133, label %138, label %134, !prof !347

134:                                              ; preds = %130
  %135 = sext i32 %33 to i64
  %136 = getelementptr inbounds i32, ptr %132, i64 %135
  %137 = load i32, ptr %136, align 4, !tbaa !90
  br label %138

138:                                              ; preds = %130, %134
  %139 = phi i32 [ %137, %134 ], [ %33, %130 ]
  %140 = load ptr, ptr %0, align 8, !tbaa !181
  %141 = sext i32 %139 to i64
  %142 = getelementptr inbounds %struct.partition_def, ptr %140, i64 0, i32 1, i64 %141
  %143 = load i32, ptr %142, align 8, !tbaa !182
  %144 = load ptr, ptr @cfun, align 8, !tbaa !75
  %145 = getelementptr inbounds %struct.function, ptr %144, i64 0, i32 3
  %146 = load ptr, ptr %145, align 8, !tbaa !95
  %147 = getelementptr inbounds %struct.gimple_df, ptr %146, i64 0, i32 2
  %148 = load ptr, ptr %147, align 8, !tbaa !97
  %149 = zext i32 %143 to i64
  %150 = getelementptr inbounds %struct.VEC_tree_base, ptr %148, i64 0, i32 2, i64 %149
  %151 = load ptr, ptr %150, align 8, !tbaa !75
  br i1 %133, label %156, label %152, !prof !347

152:                                              ; preds = %138
  %153 = sext i32 %60 to i64
  %154 = getelementptr inbounds i32, ptr %132, i64 %153
  %155 = load i32, ptr %154, align 4, !tbaa !90
  br label %156

156:                                              ; preds = %138, %152
  %157 = phi i32 [ %155, %152 ], [ %60, %138 ]
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds %struct.partition_def, ptr %140, i64 0, i32 1, i64 %158
  %160 = load i32, ptr %159, align 8, !tbaa !182
  %161 = zext i32 %160 to i64
  %162 = getelementptr inbounds %struct.VEC_tree_base, ptr %148, i64 0, i32 2, i64 %161
  %163 = load ptr, ptr %162, align 8, !tbaa !75
  %164 = tail call i32 @var_union(ptr noundef nonnull %0, ptr noundef %151, ptr noundef %163) #19
  %165 = icmp eq i32 %164, -1
  br i1 %165, label %166, label %169, !prof !347

166:                                              ; preds = %156
  br i1 %61, label %179, label %167

167:                                              ; preds = %166
  %168 = tail call i64 @fwrite(ptr nonnull @.str.27, i64 37, i64 1, ptr nonnull %4)
  br label %179

169:                                              ; preds = %156
  %170 = icmp eq i32 %164, %33
  br i1 %170, label %171, label %172, !prof !348

171:                                              ; preds = %169
  tail call fastcc void @ssa_conflicts_merge(ptr noundef %1, i32 noundef %33, i32 noundef %60)
  br label %173

172:                                              ; preds = %169
  tail call fastcc void @ssa_conflicts_merge(ptr noundef %1, i32 noundef %60, i32 noundef %33)
  br label %173

173:                                              ; preds = %172, %171
  br i1 %61, label %179, label %174, !prof !344

174:                                              ; preds = %173
  %175 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %4, ptr noundef nonnull @.str.28, i32 noundef %164)
  br label %179

176:                                              ; preds = %126
  br i1 %61, label %179, label %177

177:                                              ; preds = %176
  %178 = tail call i64 @fwrite(ptr nonnull @.str.29, i64 23, i64 1, ptr nonnull %4)
  br label %179

179:                                              ; preds = %176, %177, %173, %174, %166, %167, %108, %109
  %180 = phi i8 [ 1, %109 ], [ 1, %108 ], [ 0, %167 ], [ 0, %166 ], [ 1, %174 ], [ 1, %173 ], [ 0, %177 ], [ 0, %176 ]
  ret i8 %180
}

declare i32 @var_union(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @ssa_conflicts_merge(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) unnamed_addr #12 !prof !349 !PGOFuncName !350 {
  %4 = icmp eq i32 %1, %2
  br i1 %4, label %5, label %6, !prof !347

5:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 603, ptr noundef nonnull @.str.2) #19
  br label %6

6:                                                ; preds = %3, %5
  %7 = getelementptr inbounds %struct.ssa_conflicts_d, ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !121
  %9 = zext i32 %2 to i64
  %10 = getelementptr inbounds ptr, ptr %8, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !75
  %12 = icmp eq ptr %11, null
  br i1 %12, label %113, label %13, !prof !351

13:                                               ; preds = %6
  %14 = load ptr, ptr %11, align 8, !tbaa !143
  %15 = icmp eq ptr %14, null
  %16 = select i1 %15, ptr @bitmap_zero_bits, ptr %14, !prof !352
  %17 = getelementptr inbounds %struct.bitmap_element_def, ptr %16, i64 0, i32 2
  %18 = load i32, ptr %17, align 8, !tbaa !146
  %19 = shl i32 %18, 7
  %20 = getelementptr inbounds %struct.bitmap_element_def, ptr %16, i64 0, i32 3
  %21 = load i64, ptr %20, align 8, !tbaa !148
  %22 = icmp eq i64 %21, 0
  %23 = zext i1 %22 to i32
  %24 = or disjoint i32 %19, %23
  br label %25

25:                                               ; preds = %94, %13
  %26 = phi i64 [ %21, %13 ], [ %95, %94 ]
  %27 = phi i32 [ 0, %13 ], [ %82, %94 ]
  %28 = phi i32 [ %24, %13 ], [ %96, %94 ]
  %29 = phi ptr [ %16, %13 ], [ %84, %94 ]
  %30 = icmp eq i64 %26, 0
  br i1 %30, label %45, label %31, !prof !353

31:                                               ; preds = %59, %25
  %32 = phi i64 [ %26, %25 ], [ %64, %59 ]
  %33 = phi i32 [ %27, %25 ], [ %60, %59 ]
  %34 = phi i32 [ %28, %25 ], [ %61, %59 ]
  %35 = phi ptr [ %29, %25 ], [ %52, %59 ]
  %36 = and i64 %32, 1
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %80, !prof !354

38:                                               ; preds = %31, %38
  %39 = phi i32 [ %42, %38 ], [ %34, %31 ]
  %40 = phi i64 [ %41, %38 ], [ %32, %31 ]
  %41 = lshr exact i64 %40, 1
  %42 = add i32 %39, 1
  %43 = and i64 %40, 2
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %38, label %80, !prof !355, !llvm.loop !152

45:                                               ; preds = %25
  %46 = add i32 %28, 63
  %47 = and i32 %46, -64
  %48 = add i32 %27, 1
  br label %49

49:                                               ; preds = %76, %45
  %50 = phi i64 [ %26, %45 ], [ %71, %76 ]
  %51 = phi i32 [ %47, %45 ], [ %79, %76 ]
  %52 = phi ptr [ %29, %45 ], [ %74, %76 ]
  %53 = phi i32 [ %48, %45 ], [ 0, %76 ]
  %54 = icmp eq i32 %53, 2
  br i1 %54, label %70, label %55, !prof !356

55:                                               ; preds = %49
  %56 = add i32 %51, 128
  %57 = shl i32 %53, 6
  %58 = sub i32 %56, %57
  br label %59

59:                                               ; preds = %55, %66
  %60 = phi i32 [ %68, %66 ], [ %53, %55 ]
  %61 = phi i32 [ %67, %66 ], [ %51, %55 ]
  %62 = zext i32 %60 to i64
  %63 = getelementptr inbounds %struct.bitmap_element_def, ptr %52, i64 0, i32 3, i64 %62
  %64 = load i64, ptr %63, align 8, !tbaa !148
  %65 = icmp eq i64 %64, 0
  br i1 %65, label %66, label %31, !prof !357

66:                                               ; preds = %59
  %67 = add i32 %61, 64
  %68 = add i32 %60, 1
  %69 = icmp eq i32 %68, 2
  br i1 %69, label %70, label %59, !prof !358, !llvm.loop !156

70:                                               ; preds = %66, %49
  %71 = phi i64 [ %50, %49 ], [ %64, %66 ]
  %72 = phi i32 [ %51, %49 ], [ %58, %66 ]
  %73 = phi i32 [ %53, %49 ], [ 2, %66 ]
  %74 = load ptr, ptr %52, align 8, !tbaa !157
  %75 = icmp eq ptr %74, null
  br i1 %75, label %80, label %76, !prof !357

76:                                               ; preds = %70
  %77 = getelementptr inbounds %struct.bitmap_element_def, ptr %74, i64 0, i32 2
  %78 = load i32, ptr %77, align 8, !tbaa !146
  %79 = shl i32 %78, 7
  br label %49, !llvm.loop !159

80:                                               ; preds = %70, %38, %31
  %81 = phi i64 [ %32, %31 ], [ %41, %38 ], [ %71, %70 ]
  %82 = phi i32 [ %33, %31 ], [ %33, %38 ], [ %73, %70 ]
  %83 = phi i32 [ %34, %31 ], [ %42, %38 ], [ %72, %70 ]
  %84 = phi ptr [ %35, %31 ], [ %35, %38 ], [ %74, %70 ]
  %85 = phi i1 [ false, %31 ], [ false, %38 ], [ true, %70 ]
  %86 = load ptr, ptr %7, align 8, !tbaa !121
  br i1 %85, label %97, label %87, !prof !353

87:                                               ; preds = %80
  %88 = zext i32 %83 to i64
  %89 = getelementptr inbounds ptr, ptr %86, i64 %88
  %90 = load ptr, ptr %89, align 8, !tbaa !75
  %91 = icmp eq ptr %90, null
  br i1 %91, label %94, label %92, !prof !359

92:                                               ; preds = %87
  %93 = tail call zeroext i8 @bitmap_set_bit(ptr noundef nonnull %90, i32 noundef %1) #19
  br label %94

94:                                               ; preds = %87, %92
  %95 = lshr i64 %81, 1
  %96 = add i32 %83, 1
  br label %25, !llvm.loop !360

97:                                               ; preds = %80
  %98 = zext i32 %1 to i64
  %99 = getelementptr inbounds ptr, ptr %86, i64 %98
  %100 = load ptr, ptr %99, align 8, !tbaa !75
  %101 = icmp eq ptr %100, null
  %102 = getelementptr inbounds ptr, ptr %86, i64 %9
  %103 = load ptr, ptr %102, align 8, !tbaa !75
  br i1 %101, label %109, label %104, !prof !361

104:                                              ; preds = %97
  %105 = tail call zeroext i8 @bitmap_ior_into(ptr noundef nonnull %100, ptr noundef %103) #19
  %106 = load ptr, ptr %7, align 8, !tbaa !121
  %107 = getelementptr inbounds ptr, ptr %106, i64 %9
  %108 = load ptr, ptr %107, align 8, !tbaa !75
  tail call void @bitmap_obstack_free(ptr noundef %108) #19
  br label %110

109:                                              ; preds = %97
  store ptr %103, ptr %99, align 8, !tbaa !75
  br label %110

110:                                              ; preds = %109, %104
  %111 = load ptr, ptr %7, align 8, !tbaa !121
  %112 = getelementptr inbounds ptr, ptr %111, i64 %9
  store ptr null, ptr %112, align 8, !tbaa !75
  br label %113

113:                                              ; preds = %110, %6
  ret void
}

declare zeroext i8 @bitmap_ior_into(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #16

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #17

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #18

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
attributes #10 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nofree nounwind }
attributes #17 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #19 = { nounwind }
attributes #20 = { cold }

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
!35 = !{ptr @coalesce_ssa_name, ptr @bitmap_obstack_alloc_stat, i64 359}
!36 = !{ptr @coalesce_ssa_name, ptr @xmalloc, i64 190}
!37 = !{ptr @coalesce_ssa_name, ptr @htab_create, i64 38}
!38 = !{ptr @coalesce_ssa_name, ptr @create_outofssa_var_map, i64 38}
!39 = !{ptr @coalesce_ssa_name, ptr @partition_view_bitmap, i64 38}
!40 = !{ptr @coalesce_ssa_name, ptr @bitmap_obstack_free, i64 347}
!41 = !{ptr @coalesce_ssa_name, ptr @calculate_live_ranges, i64 38}
!42 = !{ptr @coalesce_ssa_name, ptr @xcalloc, i64 38}
!43 = !{ptr @coalesce_ssa_name, ptr @bitmap_bit_p, i64 221221}
!44 = !{ptr @coalesce_ssa_name, ptr @bitmap_set_bit, i64 361320}
!45 = !{ptr @coalesce_ssa_name, ptr @bitmap_clear, i64 305395}
!46 = !{ptr @coalesce_ssa_name, ptr @gimple_assign_copy_p, i64 125960}
!47 = !{ptr @coalesce_ssa_name, ptr @bitmap_clear_bit, i64 13400}
!48 = !{ptr @coalesce_ssa_name, ptr @gsi_start_phis, i64 154060}
!49 = !{ptr @coalesce_ssa_name, ptr @free, i64 5503}
!50 = !{ptr @coalesce_ssa_name, ptr @delete_tree_live_info, i64 38}
!51 = !{ptr @coalesce_ssa_name, ptr @htab_elements, i64 38}
!52 = !{ptr @coalesce_ssa_name, ptr @htab_size, i64 38}
!53 = !{ptr @coalesce_ssa_name, ptr @spec_qsort, i64 29}
!54 = !{ptr @coalesce_ssa_name, ptr @attempt_coalesce, i64 5275}
!55 = !{ptr @coalesce_ssa_name, ptr @htab_delete, i64 38}
!56 = !{ptr @create_outofssa_var_map, ptr @init_var_map, i64 38}
!57 = !{ptr @create_outofssa_var_map, ptr @gsi_start_phis, i64 154060}
!58 = !{ptr @create_outofssa_var_map, ptr @bitmap_set_bit, i64 8332}
!59 = !{ptr @create_outofssa_var_map, ptr @optimize_edge_for_size_p, i64 6020}
!60 = !{ptr @create_outofssa_var_map, ptr @xmalloc, i64 1249}
!61 = !{ptr @create_outofssa_var_map, ptr @add_coalesce, i64 4771}
!62 = !{ptr @create_outofssa_var_map, ptr @gimple_assign_copy_p, i64 125960}
!63 = !{ptr @create_outofssa_var_map, ptr @is_gimple_reg, i64 264035}
!64 = !{ptr @create_outofssa_var_map, ptr @gimple_default_def, i64 195022}
!65 = !{ptr @add_coalesce, ptr @htab_find_slot_with_hash, i64 4771}
!66 = !{ptr @add_coalesce, ptr @xmalloc, i64 4026}
!67 = !{ptr @attempt_coalesce, ptr @bitmap_bit_p, i64 12}
!68 = !{ptr @attempt_coalesce, ptr @var_union, i64 4855}
!69 = !{ptr @attempt_coalesce, ptr @ssa_conflicts_merge, i64 4855}
!70 = !{ptr @ssa_conflicts_merge, ptr @bitmap_set_bit, i64 14}
!71 = !{ptr @ssa_conflicts_merge, ptr @bitmap_ior_into, i64 12}
!72 = !{ptr @ssa_conflicts_merge, ptr @bitmap_obstack_free, i64 12}
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
!94 = !{!"function_entry_count", i64 38}
!95 = !{!96, !76, i64 24}
!96 = !{!"function", !76, i64 0, !76, i64 8, !76, i64 16, !76, i64 24, !76, i64 32, !76, i64 40, !76, i64 48, !76, i64 56, !76, i64 64, !76, i64 72, !76, i64 80, !76, i64 88, !76, i64 96, !81, i64 104, !81, i64 108, !81, i64 112, !81, i64 116, !81, i64 120, !81, i64 124, !76, i64 128, !81, i64 136, !81, i64 137, !81, i64 138, !81, i64 138, !81, i64 138, !81, i64 138, !81, i64 138, !81, i64 138, !81, i64 138, !81, i64 139, !81, i64 139, !81, i64 139, !81, i64 139, !81, i64 139, !81, i64 139, !81, i64 139}
!97 = !{!98, !76, i64 16}
!98 = !{!"gimple_df", !76, i64 0, !76, i64 8, !76, i64 16, !76, i64 24, !99, i64 32, !99, i64 48, !76, i64 64, !76, i64 72, !76, i64 80, !76, i64 88, !81, i64 96, !100, i64 104}
!99 = !{!"pt_solution", !81, i64 0, !81, i64 0, !81, i64 0, !81, i64 0, !81, i64 0, !81, i64 0, !76, i64 8}
!100 = !{!"ssa_operands", !76, i64 0, !81, i64 8, !81, i64 12, !77, i64 16, !76, i64 24, !76, i64 32}
!101 = !{!"branch_weights", i32 0, i32 38}
!102 = !{!103, !81, i64 0}
!103 = !{!"VEC_tree_base", !81, i64 0, !81, i64 4, !77, i64 8}
!104 = !{!105, !76, i64 0}
!105 = !{!"coalesce_list_d", !76, i64 0, !76, i64 8, !81, i64 16, !76, i64 24}
!106 = !{!105, !76, i64 8}
!107 = !{!105, !81, i64 16}
!108 = !{!105, !76, i64 24}
!109 = !{!110, !76, i64 8}
!110 = !{!"ssa_use_operand_d", !76, i64 0, !76, i64 8, !77, i64 16, !76, i64 24}
!111 = !{!112, !81, i64 0}
!112 = !{!"coalesce_pair", !81, i64 0, !81, i64 4, !81, i64 8}
!113 = !{!112, !81, i64 4}
!114 = !{!112, !81, i64 8}
!115 = distinct !{!115, !92, !93}
!116 = !{!"branch_weights", i32 38, i32 0}
!117 = !{!118, !81, i64 24}
!118 = !{!"_var_map", !76, i64 0, !76, i64 8, !76, i64 16, !81, i64 24, !81, i64 28, !81, i64 32, !76, i64 40, !76, i64 48}
!119 = !{!120, !76, i64 0}
!120 = !{!"tree_live_info_d", !76, i64 0, !76, i64 8, !76, i64 16, !81, i64 24, !76, i64 32, !76, i64 40, !76, i64 48}
!121 = !{!122, !76, i64 8}
!122 = !{!"ssa_conflicts_d", !81, i64 0, !76, i64 8}
!123 = !{!122, !81, i64 0}
!124 = !{!118, !76, i64 40}
!125 = !{!126, !76, i64 16}
!126 = !{!"live_track_d", !76, i64 0, !76, i64 8, !76, i64 16}
!127 = !{!118, !81, i64 32}
!128 = !{!126, !76, i64 8}
!129 = !{!126, !76, i64 0}
!130 = !{!"branch_weights", i32 151, i32 1}
!131 = !{!"branch_weights", i32 151, i32 917}
!132 = distinct !{!132, !92, !93}
!133 = !{!96, !76, i64 8}
!134 = !{!135, !76, i64 0}
!135 = !{!"control_flow_graph", !76, i64 0, !76, i64 8, !76, i64 16, !81, i64 24, !81, i64 28, !81, i64 32, !76, i64 40, !81, i64 48, !77, i64 52, !77, i64 60, !81, i64 68, !81, i64 72}
!136 = !{!137, !76, i64 56}
!137 = !{!"basic_block_def", !76, i64 0, !76, i64 8, !76, i64 16, !76, i64 24, !77, i64 32, !76, i64 48, !76, i64 56, !77, i64 64, !82, i64 72, !81, i64 80, !81, i64 84, !81, i64 88, !81, i64 92, !81, i64 96}
!138 = !{!135, !76, i64 8}
!139 = !{!"branch_weights", i32 1, i32 151}
!140 = !{!120, !76, i64 48}
!141 = !{!"branch_weights", i32 0, i32 154060}
!142 = !{!137, !81, i64 80}
!143 = !{!144, !76, i64 0}
!144 = !{!"bitmap_head_def", !76, i64 0, !76, i64 8, !81, i64 16, !76, i64 24}
!145 = !{!"branch_weights", i32 13579, i32 140481}
!146 = !{!147, !81, i64 16}
!147 = !{!"bitmap_element_def", !76, i64 0, !76, i64 8, !81, i64 16, !77, i64 24}
!148 = !{!82, !82, i64 0}
!149 = !{!"branch_weights", i32 159926, i32 140850}
!150 = !{!"branch_weights", i32 146715, i32 1}
!151 = !{!"branch_weights", i32 871378, i32 146715}
!152 = distinct !{!152, !92, !93}
!153 = !{!"branch_weights", i32 1, i32 158590}
!154 = !{!"branch_weights", i32 157256, i32 5866}
!155 = !{!"branch_weights", i32 158590, i32 4532}
!156 = distinct !{!156, !92, !93}
!157 = !{!147, !76, i64 0}
!158 = !{!"branch_weights", i32 154060, i32 4531}
!159 = distinct !{!159, !93}
!160 = !{!"branch_weights", i32 154060, i32 146716}
!161 = !{!"branch_weights", i32 146716, i32 0}
!162 = !{!"branch_weights", i32 0, i32 146716}
!163 = !{!"branch_weights", i32 146710, i32 6}
!164 = distinct !{!164, !92, !93}
!165 = !{!137, !81, i64 96}
!166 = !{!167}
!167 = distinct !{!167, !168, !"gsi_last_bb: argument 0"}
!168 = distinct !{!168, !"gsi_last_bb"}
!169 = !{!"branch_weights", i32 154060, i32 0}
!170 = !{!171, !76, i64 0}
!171 = !{!"gimple_bb_info", !76, i64 0, !76, i64 8}
!172 = !{!173, !76, i64 8}
!173 = !{!"gimple_seq_d", !76, i64 0, !76, i64 8, !76, i64 16}
!174 = !{!"branch_weights", i32 1, i32 154059}
!175 = !{!176, !76, i64 0}
!176 = !{!"gimple_seq_node_d", !76, i64 0, !76, i64 8, !76, i64 16}
!177 = !{!"branch_weights", i32 212149, i32 125960, i32 0}
!178 = !{!"branch_weights", i32 0, i32 125960}
!179 = !{!"branch_weights", i32 125920, i32 40}
!180 = !{!"branch_weights", i32 0, i32 40}
!181 = !{!118, !76, i64 0}
!182 = !{!183, !81, i64 0}
!183 = !{!"partition_elem", !81, i64 0, !76, i64 8, !81, i64 16}
!184 = !{!118, !76, i64 8}
!185 = !{!"branch_weights", i32 0, i32 338109}
!186 = !{!"branch_weights", i32 143254, i32 194855}
!187 = !{!"branch_weights", i32 0, i32 194855}
!188 = !{!"branch_weights", i32 125920, i32 68935}
!189 = !{!190, !76, i64 0}
!190 = !{!"def_optype_d", !76, i64 0, !76, i64 8}
!191 = !{!"branch_weights", i32 145505, i32 192604}
!192 = !{!190, !76, i64 8}
!193 = !{!"branch_weights", i32 194878, i32 0}
!194 = !{!"branch_weights", i32 0, i32 194878}
!195 = !{!"branch_weights", i32 188174, i32 6704}
!196 = !{!"branch_weights", i32 6704, i32 0}
!197 = !{!"branch_weights", i32 0, i32 6704}
!198 = !{!"branch_weights", i32 6696, i32 8}
!199 = !{!"branch_weights", i32 0, i32 8}
!200 = !{!"branch_weights", i32 9, i32 7}
!201 = !{!"branch_weights", i32 127, i32 1}
!202 = !{!"branch_weights", i32 5169, i32 127}
!203 = !{!"branch_weights", i32 1, i32 127}
!204 = !{!"branch_weights", i32 7, i32 1}
!205 = !{!"branch_weights", i32 8, i32 0}
!206 = !{!"branch_weights", i32 8, i32 8}
!207 = distinct !{!207, !92, !93}
!208 = !{!"branch_weights", i32 192604, i32 0}
!209 = !{!"branch_weights", i32 0, i32 192604}
!210 = distinct !{!210, !92, !93}
!211 = !{!"branch_weights", i32 2944, i32 335165}
!212 = !{!"branch_weights", i32 140210, i32 194955}
!213 = !{!"branch_weights", i32 48145, i32 146810}
!214 = !{!215, !76, i64 0}
!215 = !{!"use_optype_d", !76, i64 0, !110, i64 8}
!216 = !{!"branch_weights", i32 80552, i32 257557}
!217 = !{!110, !76, i64 24}
!218 = !{!"branch_weights", i32 70351, i32 267758}
!219 = !{!"branch_weights", i32 267758, i32 0}
!220 = !{!"branch_weights", i32 0, i32 267758}
!221 = !{!"branch_weights", i32 204505, i32 63253}
!222 = !{!"branch_weights", i32 63253, i32 0}
!223 = !{!"branch_weights", i32 0, i32 63253}
!224 = !{!"branch_weights", i32 4625, i32 58628}
!225 = !{!"branch_weights", i32 257557, i32 10201}
!226 = distinct !{!226, !92, !93}
!227 = !{!176, !76, i64 8}
!228 = !{!"branch_weights", i32 154059, i32 184050}
!229 = distinct !{!229, !92, !93}
!230 = !{i64 0, i64 8, !75, i64 8, i64 8, !75, i64 16, i64 8, !75}
!231 = !{!"branch_weights", i32 151773, i32 2287}
!232 = !{!"branch_weights", i32 2287, i32 0}
!233 = !{!"branch_weights", i32 0, i32 2287}
!234 = !{!"branch_weights", i32 13, i32 2274}
!235 = !{!"branch_weights", i32 2274, i32 0}
!236 = !{!"branch_weights", i32 0, i32 2274}
!237 = !{!176, !76, i64 16}
!238 = distinct !{!238, !92, !93}
!239 = !{!"branch_weights", i32 151, i32 616089}
!240 = distinct !{!240, !92, !93}
!241 = distinct !{!241, !92, !93}
!242 = distinct !{!242, !92, !93}
!243 = !{!244, !76, i64 24}
!244 = !{!"htab", !76, i64 0, !76, i64 8, !76, i64 16, !76, i64 24, !82, i64 32, !82, i64 40, !82, i64 48, !81, i64 56, !81, i64 60, !76, i64 64, !76, i64 72, !76, i64 80, !76, i64 88, !76, i64 96, !81, i64 104}
!245 = !{!"branch_weights", i32 8404, i32 38}
!246 = !{!"branch_weights", i32 8404, i32 0}
!247 = distinct !{!247, !92, !93}
!248 = !{!"branch_weights", i32 1890172, i32 38}
!249 = !{!"branch_weights", i32 1886184, i32 3988}
!250 = !{!"branch_weights", i32 15953, i32 151}
!251 = distinct !{!251, !92, !93}
!252 = !{!"branch_weights", i32 29, i32 0, i32 9}
!253 = !{!"branch_weights", i32 7, i32 2}
!254 = distinct !{!254, !92, !93}
!255 = distinct !{!255, !92, !93}
!256 = distinct !{!256, !92, !93}
!257 = !{!"branch_weights", i32 0, i32 451130}
!258 = !{!259, !81, i64 0}
!259 = !{!"VEC_edge_base", !81, i64 0, !81, i64 4, !77, i64 8}
!260 = !{!"branch_weights", i32 154060, i32 297070}
!261 = !{!262, !81, i64 48}
!262 = !{!"edge_def", !76, i64 0, !76, i64 8, !77, i64 16, !76, i64 24, !76, i64 32, !81, i64 40, !81, i64 44, !81, i64 48, !81, i64 52, !82, i64 56}
!263 = !{!"branch_weights", i32 297070, i32 0}
!264 = !{!262, !81, i64 44}
!265 = !{i8 0, i8 2}
!266 = distinct !{!266, !92, !93}
!267 = !{!"branch_weights", i32 0, i32 297070}
!268 = distinct !{!268, !92, !93}
!269 = !{!"branch_weights", i32 0, i32 5313}
!270 = !{!271, !81, i64 0}
!271 = !{!"cost_one_pair_d", !81, i64 0, !81, i64 4, !76, i64 8}
!272 = !{!271, !81, i64 4}
!273 = !{!271, !76, i64 8}
!274 = !{!"branch_weights", i32 1287, i32 4026}
!275 = !{!"branch_weights", i32 38, i32 1249}
!276 = !{!"branch_weights", i32 38, i32 5275}
!277 = !{!"branch_weights", i32 5275, i32 0}
!278 = distinct !{!278, !92, !93}
!279 = !{!"branch_weights", i32 6738, i32 4}
!280 = !{!"branch_weights", i32 26817, i32 151}
!281 = distinct !{!281, !92, !93}
!282 = !{!"tree-ssa-coalesce.c;create_outofssa_var_map"}
!283 = distinct !{!283, !92, !93}
!284 = !{!"branch_weights", i32 1, i32 2286}
!285 = !{!137, !76, i64 0}
!286 = !{}
!287 = !{!"branch_weights", i32 0, i32 70786}
!288 = !{!"branch_weights", i32 6020, i32 64766}
!289 = !{!"branch_weights", i32 6020, i32 0}
!290 = !{!262, !76, i64 0}
!291 = !{!137, !76, i64 8}
!292 = !{!"branch_weights", i32 0, i32 6020}
!293 = !{!"branch_weights", i32 3914, i32 2106}
!294 = !{!262, !76, i64 8}
!295 = !{!"branch_weights", i32 0, i32 3914}
!296 = !{!"branch_weights", i32 3914, i32 0}
!297 = distinct !{!297, !92, !93}
!298 = !{!137, !81, i64 88}
!299 = !{!262, !81, i64 52}
!300 = !{!"branch_weights", i32 1018, i32 5002}
!301 = !{!"branch_weights", i32 1329, i32 4691}
!302 = !{!"branch_weights", i32 0, i32 1329}
!303 = !{!"branch_weights", i32 1249, i32 80}
!304 = !{!"branch_weights", i32 80, i32 0}
!305 = !{!"branch_weights", i32 80, i32 1249}
!306 = !{!"branch_weights", i32 64766, i32 0}
!307 = !{!"branch_weights", i32 68500, i32 2286}
!308 = distinct !{!308, !92, !93}
!309 = distinct !{!309, !92, !93}
!310 = !{!311}
!311 = distinct !{!311, !312, !"gsi_start_bb: argument 0"}
!312 = distinct !{!312, !"gsi_start_bb"}
!313 = !{!173, !76, i64 0}
!314 = distinct !{!314, !92, !93}
!315 = distinct !{!315, !92, !93}
!316 = distinct !{!316, !92, !93}
!317 = !{!"branch_weights", i32 0, i32 426477}
!318 = !{!"branch_weights", i32 426439, i32 38}
!319 = !{!"branch_weights", i32 162404, i32 264035}
!320 = !{!"branch_weights", i32 69013, i32 195022}
!321 = !{!"branch_weights", i32 0, i32 195022}
!322 = !{!"branch_weights", i32 38, i32 194984}
!323 = distinct !{!323, !92, !93}
!324 = !{!"function_entry_count", i64 4771}
!325 = !{!"tree-ssa-coalesce.c;add_coalesce"}
!326 = !{!"branch_weights", i32 4771, i32 0}
!327 = !{!"branch_weights", i32 0, i32 4771}
!328 = !{!"branch_weights", i32 3532, i32 1239}
!329 = !{!"branch_weights", i32 4026, i32 745}
!330 = !{!"branch_weights", i32 4026, i32 0}
!331 = !{!"function_entry_count", i64 745}
!332 = !{!"tree-ssa-coalesce.c;coalesce_pair_map_eq"}
!333 = !{!"branch_weights", i32 745, i32 0}
!334 = !{!"function_entry_count", i64 32340}
!335 = !{!"tree-ssa-coalesce.c;compare_pairs"}
!336 = !{!"branch_weights", i32 25554, i32 6786}
!337 = !{!"branch_weights", i32 1506, i32 24048}
!338 = !{!"function_entry_count", i64 5275}
!339 = !{!"tree-ssa-coalesce.c;attempt_coalesce"}
!340 = !{!"branch_weights", i32 0, i32 5275}
!341 = !{!118, !76, i64 16}
!342 = !{!"branch_weights", i32 420, i32 4855}
!343 = !{!"branch_weights", i32 420, i32 0}
!344 = !{!"branch_weights", i32 4855, i32 0}
!345 = !{!"branch_weights", i32 4827, i32 28}
!346 = !{!"branch_weights", i32 16, i32 12}
!347 = !{!"branch_weights", i32 0, i32 4855}
!348 = !{!"branch_weights", i32 4202, i32 653}
!349 = !{!"function_entry_count", i64 4855}
!350 = !{!"tree-ssa-coalesce.c;ssa_conflicts_merge"}
!351 = !{!"branch_weights", i32 4841, i32 14}
!352 = !{!"branch_weights", i32 0, i32 14}
!353 = !{!"branch_weights", i32 14, i32 20}
!354 = !{!"branch_weights", i32 159, i32 1}
!355 = !{!"branch_weights", i32 4993, i32 159}
!356 = !{!"branch_weights", i32 1, i32 223}
!357 = !{!"branch_weights", i32 14, i32 0}
!358 = !{!"branch_weights", i32 223, i32 1}
!359 = !{!"branch_weights", i32 6, i32 14}
!360 = distinct !{!360, !92, !93}
!361 = !{!"branch_weights", i32 2, i32 12}
