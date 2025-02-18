; ModuleID = 'tree-ssa-copyrename.c'
source_filename = "tree-ssa-copyrename.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gimple_opt_pass = type { %struct.opt_pass }
%struct.opt_pass = type { i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct._IO_FILE = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, [1 x i8], ptr, i64, ptr, ptr, ptr, ptr, i64, i32, [20 x i8] }
%struct.gimple_stmt_iterator = type { ptr, ptr, ptr }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.gimple_df = type { ptr, ptr, ptr, ptr, %struct.pt_solution, %struct.pt_solution, ptr, ptr, ptr, ptr, i8, %struct.ssa_operands }
%struct.pt_solution = type { i8, ptr }
%struct.ssa_operands = type { ptr, i32, i32, i8, ptr, ptr }
%struct.basic_block_def = type { ptr, ptr, ptr, ptr, [2 x ptr], ptr, ptr, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%union.basic_block_il_dependent = type { ptr }
%struct.control_flow_graph = type { ptr, ptr, ptr, i32, i32, i32, ptr, i32, [2 x i32], [2 x i32], i32, i32 }
%struct.gimple_seq_node_d = type { ptr, ptr, ptr }
%struct.gimple_statement_phi = type { %struct.gimple_statement_base, i32, i32, ptr, [1 x %struct.phi_arg_d] }
%struct.gimple_statement_base = type { i32, i32, i32, i32, ptr, ptr }
%struct.phi_arg_d = type { %struct.ssa_use_operand_d, ptr, i32 }
%struct.ssa_use_operand_d = type { ptr, ptr, %union.anon, ptr }
%union.anon = type { ptr }
%struct.tree_ssa_name = type { %struct.tree_common, ptr, ptr, i32, ptr, %struct.ssa_use_operand_d }
%struct.tree_common = type { %struct.tree_base, ptr, ptr }
%struct.tree_base = type { i64 }
%struct._var_map = type { ptr, ptr, ptr, i32, i32, i32, ptr, ptr }
%struct.partition_def = type { i32, [1 x %struct.partition_elem] }
%struct.partition_elem = type { i32, ptr, i32 }
%struct.VEC_tree_base = type { i32, i32, [1 x ptr] }
%struct.tree_decl_common = type { %struct.tree_decl_minimal, ptr, i40, i32, ptr, ptr, ptr, ptr, ptr }
%struct.tree_decl_minimal = type { %struct.tree_common, i32, i32, ptr, ptr }

@stdout = external local_unnamed_addr global ptr, align 8
@stdin = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [11 x i8] c"copyrename\00", align 1
@pass_rename_ssa_copies = dso_local local_unnamed_addr global %struct.gimple_opt_pass { %struct.opt_pass { i32 0, ptr @.str, ptr @gate_copyrename, ptr @rename_ssa_copies, ptr null, ptr null, i32 0, i32 106, i32 40, i32 0, i32 0, i32 0, i32 5 } }, align 8
@flag_tree_copyrename = external local_unnamed_addr global i32, align 4
@dump_file = external local_unnamed_addr global ptr, align 8
@dump_flags = external local_unnamed_addr global i32, align 4
@cfun = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [11 x i8] c"Coalesced \00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c" to \00", align 1
@gimple_ops_offset_ = external local_unnamed_addr constant [0 x i64], align 8
@.str.4 = private unnamed_addr constant [11 x i8] c"./gimple.h\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@gss_for_code_ = external local_unnamed_addr constant [0 x i32], align 4
@.str.6 = private unnamed_addr constant [22 x i8] c"tree-ssa-copyrename.c\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"Try : \00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"(P%d) & \00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"(P%d)\00", align 1
@.str.10 = private unnamed_addr constant [23 x i8] c" : Already coalesced.\0A\00", align 1
@.str.11 = private unnamed_addr constant [40 x i8] c" : Abnormal PHI barrier.  No coalesce.\0A\00", align 1
@.str.12 = private unnamed_addr constant [34 x i8] c" : Same root, coalesced --> P%d.\0A\00", align 1
@.str.13 = private unnamed_addr constant [41 x i8] c" : 2 different PARM_DECLS. No coalesce.\0A\00", align 1
@.str.14 = private unnamed_addr constant [41 x i8] c" : One root a RESULT_DECL. No coalesce.\0A\00", align 1
@.str.15 = private unnamed_addr constant [40 x i8] c" : 2 different USER vars. No coalesce.\0A\00", align 1
@.str.16 = private unnamed_addr constant [33 x i8] c" : 2 default defs. No coalesce.\0A\00", align 1
@.str.17 = private unnamed_addr constant [38 x i8] c" : Incompatible types.  No coalesce.\0A\00", align 1
@.str.18 = private unnamed_addr constant [10 x i8] c" --> P%d \00", align 1

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @vprintf(ptr noalias nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 !prof !46 {
  %3 = load ptr, ptr @stdout, align 8, !tbaa !47
  %4 = tail call i32 @vfprintf(ptr noundef %3, ptr noundef %0, ptr noundef %1)
  ret i32 %4
}

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @getchar() local_unnamed_addr #0 !prof !46 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !47
  %2 = tail call i32 @getc(ptr noundef %1)
  ret i32 %2
}

; Function Attrs: nofree nounwind
declare noundef i32 @getc(ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !46 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !51
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !56
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !57

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #12
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !51
  %11 = load i8, ptr %3, align 1, !tbaa !58
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

declare i32 @__uflow(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !46 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !51
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !56
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !57

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #12
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !51
  %11 = load i8, ptr %3, align 1, !tbaa !58
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #2 !prof !46 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !47
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !51
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !56
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !57

7:                                                ; preds = %0
  %8 = tail call i32 @__uflow(ptr noundef %1) #12
  br label %13

9:                                                ; preds = %0
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !51
  %11 = load i8, ptr %3, align 1, !tbaa !58
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @putchar(i32 noundef %0) local_unnamed_addr #0 !prof !46 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !47
  %3 = tail call i32 @putc(i32 noundef %0, ptr noundef %2)
  ret i32 %3
}

; Function Attrs: nofree nounwind
declare noundef i32 @putc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !46 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !59
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !60
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !57

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #12
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !59
  store i8 %12, ptr %4, align 1, !tbaa !58
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

declare i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !46 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !59
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !60
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !57

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #12
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !59
  store i8 %12, ptr %4, align 1, !tbaa !58
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 noundef %0) local_unnamed_addr #2 !prof !46 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !47
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !59
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !60
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !57

8:                                                ; preds = %1
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %2, i32 noundef %9) #12
  br label %15

11:                                               ; preds = %1
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !59
  store i8 %12, ptr %4, align 1, !tbaa !58
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i64 @getline(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 !prof !46 {
  %4 = tail call i64 @__getdelim(ptr noundef %0, ptr noundef %1, i32 noundef 10, ptr noundef %2) #12
  ret i64 %4
}

declare i64 @__getdelim(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @feof_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !46 {
  %2 = load i32, ptr %0, align 8, !tbaa !61
  %3 = lshr i32 %2, 4
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @ferror_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !46 {
  %2 = load i32, ptr %0, align 8, !tbaa !61
  %3 = lshr i32 %2, 5
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @tolower(i32 noundef %0) local_unnamed_addr #5 !prof !46 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_tolower_loc() #12
  %6 = load ptr, ptr %5, align 8, !tbaa !47
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !62
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_tolower_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @toupper(i32 noundef %0) local_unnamed_addr #5 !prof !46 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_toupper_loc() #12
  %6 = load ptr, ptr %5, align 8, !tbaa !47
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !62
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_toupper_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i32 @atoi(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !46 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  %3 = trunc i64 %2 to i32
  ret i32 %3
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atol(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !46 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atoll(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !46 {
  %2 = tail call i64 @strtoll(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtoll(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local noundef ptr @bsearch(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #2 !prof !46 {
  %6 = icmp eq i64 %2, 0
  br i1 %6, label %24, label %7

7:                                                ; preds = %5, %20
  %8 = phi i64 [ %22, %20 ], [ 0, %5 ]
  %9 = phi i64 [ %21, %20 ], [ %2, %5 ]
  %10 = add i64 %8, %9
  %11 = lshr i64 %10, 1
  %12 = mul i64 %11, %3
  %13 = getelementptr inbounds i8, ptr %1, i64 %12
  %14 = tail call i32 %4(ptr noundef %0, ptr noundef %13) #12
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
  br i1 %23, label %7, label %24, !llvm.loop !63

24:                                               ; preds = %16, %20, %5
  %25 = phi ptr [ null, %5 ], [ %13, %16 ], [ null, %20 ]
  ret ptr %25
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local double @atof(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !46 {
  %2 = tail call double @strtod(ptr nocapture noundef %0, ptr noundef null)
  ret double %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal zeroext i8 @gate_copyrename() #9 !prof !66 !PGOFuncName !67 {
  %1 = load i32, ptr @flag_tree_copyrename, align 4, !tbaa !62
  %2 = icmp ne i32 %1, 0
  %3 = zext i1 %2 to i8
  ret i8 %3
}

; Function Attrs: nounwind uwtable
define internal i32 @rename_ssa_copies() #10 !prof !66 !PGOFuncName !68 {
  %1 = alloca %struct.gimple_stmt_iterator, align 8
  %2 = load ptr, ptr @dump_file, align 8, !tbaa !47
  %3 = icmp eq ptr %2, null
  br i1 %3, label %8, label %4, !prof !69

4:                                                ; preds = %0
  %5 = load i32, ptr @dump_flags, align 4, !tbaa !62
  %6 = and i32 %5, 8
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %4, %0
  br label %9

9:                                                ; preds = %4, %8
  %10 = phi ptr [ null, %8 ], [ %2, %4 ]
  %11 = load ptr, ptr @cfun, align 8, !tbaa !47
  %12 = getelementptr inbounds %struct.function, ptr %11, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !70
  %14 = getelementptr inbounds %struct.gimple_df, ptr %13, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !72
  %16 = icmp eq ptr %15, null
  br i1 %16, label %19, label %17, !prof !76

17:                                               ; preds = %9
  %18 = load i32, ptr %15, align 8, !tbaa !77
  br label %19

19:                                               ; preds = %9, %17
  %20 = phi i32 [ %18, %17 ], [ 0, %9 ]
  %21 = tail call ptr @init_var_map(i32 noundef %20) #12
  %22 = load ptr, ptr @cfun, align 8, !tbaa !47
  %23 = getelementptr inbounds %struct.function, ptr %22, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !79
  %25 = load ptr, ptr %24, align 8, !tbaa !80
  %26 = getelementptr inbounds %struct.basic_block_def, ptr %25, i64 0, i32 6
  %27 = load ptr, ptr %26, align 8, !tbaa !82
  %28 = getelementptr inbounds %struct.control_flow_graph, ptr %24, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !84
  %30 = icmp eq ptr %27, %29
  br i1 %30, label %113, label %41, !prof !85

31:                                               ; preds = %108, %59
  %32 = phi i8 [ %43, %59 ], [ %109, %108 ]
  %33 = getelementptr inbounds %struct.basic_block_def, ptr %42, i64 0, i32 6
  %34 = load ptr, ptr %33, align 8, !tbaa !82
  %35 = load ptr, ptr @cfun, align 8, !tbaa !47
  %36 = getelementptr inbounds %struct.function, ptr %35, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !79
  %38 = getelementptr inbounds %struct.control_flow_graph, ptr %37, i64 0, i32 1
  %39 = load ptr, ptr %38, align 8, !tbaa !84
  %40 = icmp eq ptr %34, %39
  br i1 %40, label %113, label %41, !prof !86, !llvm.loop !87

41:                                               ; preds = %19, %31
  %42 = phi ptr [ %34, %31 ], [ %27, %19 ]
  %43 = phi i8 [ %32, %31 ], [ 0, %19 ]
  %44 = getelementptr inbounds %struct.basic_block_def, ptr %42, i64 0, i32 13
  %45 = load i32, ptr %44, align 8, !tbaa !88, !noalias !89
  %46 = and i32 %45, 512
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %54, !prof !92

48:                                               ; preds = %41
  %49 = getelementptr inbounds %struct.basic_block_def, ptr %42, i64 0, i32 7
  %50 = load ptr, ptr %49, align 8, !tbaa !58, !noalias !89
  %51 = icmp eq ptr %50, null
  br i1 %51, label %54, label %52, !prof !93

52:                                               ; preds = %48
  %53 = load ptr, ptr %50, align 8, !tbaa !94, !noalias !89
  br label %54

54:                                               ; preds = %52, %48, %41
  %55 = phi ptr [ %53, %52 ], [ null, %48 ], [ null, %41 ]
  %56 = icmp eq ptr %55, null
  br i1 %56, label %59, label %57, !prof !93

57:                                               ; preds = %54
  %58 = load ptr, ptr %55, align 8, !tbaa !96, !noalias !89
  br label %59

59:                                               ; preds = %54, %57
  %60 = phi ptr [ %58, %57 ], [ null, %54 ]
  %61 = icmp eq ptr %60, null
  br i1 %61, label %31, label %62, !prof !98

62:                                               ; preds = %59, %108
  %63 = phi i8 [ %109, %108 ], [ %43, %59 ]
  %64 = phi ptr [ %111, %108 ], [ %60, %59 ]
  %65 = load ptr, ptr %64, align 8, !tbaa !99
  %66 = tail call zeroext i8 @gimple_assign_ssa_name_copy_p(ptr noundef %65) #12
  %67 = icmp eq i8 %66, 0
  br i1 %67, label %108, label %68, !prof !101

68:                                               ; preds = %62
  %69 = load i32, ptr %65, align 8
  %70 = and i32 %69, 255
  %71 = add nsw i32 %70, -10
  %72 = icmp ult i32 %71, -9
  br i1 %72, label %85, label %73, !prof !102

73:                                               ; preds = %68
  %74 = zext nneg i32 %70 to i64
  %75 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %74
  %76 = load i32, ptr %75, align 4, !tbaa !62
  %77 = zext i32 %76 to i64
  %78 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %77
  %79 = load i64, ptr %78, align 8, !tbaa !103
  %80 = icmp eq i64 %79, 0
  br i1 %80, label %81, label %82, !prof !102

81:                                               ; preds = %73
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 1622, ptr noundef nonnull @.str.5) #12
  br label %82

82:                                               ; preds = %81, %73
  %83 = getelementptr inbounds i8, ptr %65, i64 %79
  %84 = load ptr, ptr %83, align 8, !tbaa !47
  br label %85

85:                                               ; preds = %68, %82
  %86 = phi ptr [ %84, %82 ], [ null, %68 ]
  %87 = load i32, ptr %65, align 8
  %88 = and i32 %87, 255
  %89 = add nsw i32 %88, -10
  %90 = icmp ult i32 %89, -9
  br i1 %90, label %104, label %91, !prof !102

91:                                               ; preds = %85
  %92 = zext nneg i32 %88 to i64
  %93 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %92
  %94 = load i32, ptr %93, align 4, !tbaa !62
  %95 = zext i32 %94 to i64
  %96 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %95
  %97 = load i64, ptr %96, align 8, !tbaa !103
  %98 = icmp eq i64 %97, 0
  br i1 %98, label %99, label %100, !prof !102

99:                                               ; preds = %91
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 1622, ptr noundef nonnull @.str.5) #12
  br label %100

100:                                              ; preds = %99, %91
  %101 = getelementptr inbounds i8, ptr %65, i64 %97
  %102 = getelementptr inbounds ptr, ptr %101, i64 1
  %103 = load ptr, ptr %102, align 8, !tbaa !47
  br label %104

104:                                              ; preds = %85, %100
  %105 = phi ptr [ %103, %100 ], [ null, %85 ]
  %106 = tail call fastcc zeroext i8 @copy_rename_partition_coalesce(ptr noundef %21, ptr noundef %86, ptr noundef %105, ptr noundef %10), !range !104
  %107 = or i8 %106, %63
  br label %108

108:                                              ; preds = %62, %104
  %109 = phi i8 [ %107, %104 ], [ %63, %62 ]
  %110 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %64, i64 0, i32 2
  %111 = load ptr, ptr %110, align 8, !tbaa !105
  %112 = icmp eq ptr %111, null
  br i1 %112, label %31, label %62, !prof !106, !llvm.loop !107

113:                                              ; preds = %31, %19
  %114 = phi i8 [ 0, %19 ], [ %32, %31 ]
  %115 = phi ptr [ %24, %19 ], [ %37, %31 ]
  %116 = load ptr, ptr %115, align 8, !tbaa !80
  %117 = getelementptr inbounds %struct.basic_block_def, ptr %116, i64 0, i32 6
  %118 = load ptr, ptr %117, align 8, !tbaa !82
  %119 = load ptr, ptr @cfun, align 8, !tbaa !47
  %120 = getelementptr inbounds %struct.function, ptr %119, i64 0, i32 1
  %121 = load ptr, ptr %120, align 8, !tbaa !79
  %122 = getelementptr inbounds %struct.control_flow_graph, ptr %121, i64 0, i32 1
  %123 = load ptr, ptr %122, align 8, !tbaa !84
  %124 = icmp eq ptr %118, %123
  br i1 %124, label %183, label %135, !prof !85

125:                                              ; preds = %178, %135
  %126 = phi i8 [ %137, %135 ], [ %179, %178 ]
  %127 = getelementptr inbounds %struct.basic_block_def, ptr %136, i64 0, i32 6
  %128 = load ptr, ptr %127, align 8, !tbaa !82
  %129 = load ptr, ptr @cfun, align 8, !tbaa !47
  %130 = getelementptr inbounds %struct.function, ptr %129, i64 0, i32 1
  %131 = load ptr, ptr %130, align 8, !tbaa !79
  %132 = getelementptr inbounds %struct.control_flow_graph, ptr %131, i64 0, i32 1
  %133 = load ptr, ptr %132, align 8, !tbaa !84
  %134 = icmp eq ptr %128, %133
  br i1 %134, label %183, label %135, !prof !86, !llvm.loop !108

135:                                              ; preds = %113, %125
  %136 = phi ptr [ %128, %125 ], [ %118, %113 ]
  %137 = phi i8 [ %126, %125 ], [ %114, %113 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %1) #12
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %1, ptr noundef %136) #12
  %138 = load ptr, ptr %1, align 8, !tbaa.struct !109
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %1) #12
  %139 = icmp eq ptr %138, null
  br i1 %139, label %125, label %140, !prof !110

140:                                              ; preds = %135, %178
  %141 = phi i8 [ %179, %178 ], [ %137, %135 ]
  %142 = phi ptr [ %181, %178 ], [ %138, %135 ]
  %143 = load ptr, ptr %142, align 8, !tbaa !99
  %144 = getelementptr inbounds %struct.gimple_statement_phi, ptr %143, i64 0, i32 3
  %145 = load ptr, ptr %144, align 8, !tbaa !58
  %146 = getelementptr inbounds %struct.tree_ssa_name, ptr %145, i64 0, i32 1
  %147 = load ptr, ptr %146, align 8, !tbaa !58
  %148 = call zeroext i8 @is_gimple_reg(ptr noundef %147) #12
  %149 = icmp eq i8 %148, 0
  br i1 %149, label %178, label %150, !prof !111

150:                                              ; preds = %140
  %151 = getelementptr inbounds %struct.gimple_statement_phi, ptr %143, i64 0, i32 2
  %152 = load i32, ptr %151, align 4, !tbaa !58
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %178, label %154, !prof !112

154:                                              ; preds = %150
  %155 = getelementptr inbounds %struct.gimple_statement_phi, ptr %143, i64 0, i32 1
  br label %156

156:                                              ; preds = %154, %172
  %157 = phi i64 [ 0, %154 ], [ %174, %172 ]
  %158 = phi i8 [ %141, %154 ], [ %173, %172 ]
  %159 = trunc i64 %157 to i32
  %160 = load i32, ptr %155, align 8, !tbaa !58
  %161 = icmp ult i32 %160, %159
  br i1 %161, label %162, label %163, !prof !113

162:                                              ; preds = %156
  call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 3103, ptr noundef nonnull @.str.5) #12
  br label %163

163:                                              ; preds = %156, %162
  %164 = getelementptr inbounds %struct.gimple_statement_phi, ptr %143, i64 0, i32 4, i64 %157, i32 1
  %165 = load ptr, ptr %164, align 8, !tbaa !114
  %166 = load i64, ptr %165, align 8
  %167 = and i64 %166, 65535
  %168 = icmp eq i64 %167, 141
  br i1 %168, label %169, label %172, !prof !117

169:                                              ; preds = %163
  %170 = call fastcc zeroext i8 @copy_rename_partition_coalesce(ptr noundef %21, ptr noundef %145, ptr noundef nonnull %165, ptr noundef %10), !range !104
  %171 = or i8 %170, %158
  br label %172

172:                                              ; preds = %169, %163
  %173 = phi i8 [ %171, %169 ], [ %158, %163 ]
  %174 = add nuw nsw i64 %157, 1
  %175 = load i32, ptr %151, align 4, !tbaa !58
  %176 = zext i32 %175 to i64
  %177 = icmp ult i64 %174, %176
  br i1 %177, label %156, label %178, !prof !118, !llvm.loop !119

178:                                              ; preds = %172, %150, %140
  %179 = phi i8 [ %141, %140 ], [ %141, %150 ], [ %173, %172 ]
  %180 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %142, i64 0, i32 2
  %181 = load ptr, ptr %180, align 8, !tbaa !105
  %182 = icmp eq ptr %181, null
  br i1 %182, label %125, label %140, !prof !120, !llvm.loop !121

183:                                              ; preds = %125, %113
  %184 = phi i8 [ %114, %113 ], [ %126, %125 ]
  %185 = icmp eq ptr %10, null
  br i1 %185, label %187, label %186, !prof !69

186:                                              ; preds = %183
  call void @dump_var_map(ptr noundef nonnull %10, ptr noundef %21) #12
  br label %187

187:                                              ; preds = %186, %183
  %188 = getelementptr inbounds %struct._var_map, ptr %21, i64 0, i32 2
  br label %189

189:                                              ; preds = %236, %187
  %190 = phi i32 [ 1, %187 ], [ %237, %236 ]
  %191 = load ptr, ptr @cfun, align 8, !tbaa !47
  %192 = getelementptr inbounds %struct.function, ptr %191, i64 0, i32 3
  %193 = load ptr, ptr %192, align 8, !tbaa !70
  %194 = getelementptr inbounds %struct.gimple_df, ptr %193, i64 0, i32 2
  %195 = load ptr, ptr %194, align 8, !tbaa !72
  %196 = icmp eq ptr %195, null
  br i1 %196, label %199, label %197, !prof !122

197:                                              ; preds = %189
  %198 = load i32, ptr %195, align 8, !tbaa !77
  br label %199

199:                                              ; preds = %189, %197
  %200 = phi i32 [ %198, %197 ], [ 0, %189 ]
  %201 = icmp ult i32 %190, %200
  br i1 %201, label %202, label %238, !prof !123

202:                                              ; preds = %199
  %203 = load ptr, ptr %188, align 8, !tbaa !124
  %204 = icmp eq ptr %203, null
  br i1 %204, label %209, label %205, !prof !126

205:                                              ; preds = %202
  %206 = sext i32 %190 to i64
  %207 = getelementptr inbounds i32, ptr %203, i64 %206
  %208 = load i32, ptr %207, align 4, !tbaa !62
  br label %209

209:                                              ; preds = %202, %205
  %210 = phi i32 [ %208, %205 ], [ %190, %202 ]
  %211 = load ptr, ptr %21, align 8, !tbaa !127
  %212 = sext i32 %210 to i64
  %213 = getelementptr inbounds %struct.partition_def, ptr %211, i64 0, i32 1, i64 %212
  %214 = load i32, ptr %213, align 8, !tbaa !128
  %215 = zext i32 %214 to i64
  %216 = getelementptr inbounds %struct.VEC_tree_base, ptr %195, i64 0, i32 2, i64 %215
  %217 = load ptr, ptr %216, align 8, !tbaa !47
  %218 = icmp eq ptr %217, null
  br i1 %218, label %236, label %219, !prof !130

219:                                              ; preds = %209
  %220 = zext i32 %190 to i64
  %221 = getelementptr inbounds %struct.VEC_tree_base, ptr %195, i64 0, i32 2, i64 %220
  %222 = load ptr, ptr %221, align 8, !tbaa !47
  br i1 %185, label %233, label %223, !prof !131

223:                                              ; preds = %219
  %224 = getelementptr inbounds %struct.tree_ssa_name, ptr %222, i64 0, i32 1
  %225 = load ptr, ptr %224, align 8, !tbaa !58
  %226 = getelementptr inbounds %struct.tree_ssa_name, ptr %217, i64 0, i32 1
  %227 = load ptr, ptr %226, align 8, !tbaa !58
  %228 = icmp eq ptr %225, %227
  br i1 %228, label %233, label %229

229:                                              ; preds = %223
  %230 = call i64 @fwrite(ptr nonnull @.str.1, i64 10, i64 1, ptr nonnull %10)
  call void @print_generic_expr(ptr noundef nonnull %10, ptr noundef %222, i32 noundef 2) #12
  %231 = call i64 @fwrite(ptr nonnull @.str.2, i64 4, i64 1, ptr nonnull %10)
  call void @print_generic_expr(ptr noundef nonnull %10, ptr noundef nonnull %217, i32 noundef 2) #12
  %232 = call i32 @fputc(i32 10, ptr nonnull %10)
  br label %233

233:                                              ; preds = %223, %229, %219
  %234 = getelementptr inbounds %struct.tree_ssa_name, ptr %217, i64 0, i32 1
  %235 = load ptr, ptr %234, align 8, !tbaa !58
  call void @replace_ssa_name_symbol(ptr noundef %222, ptr noundef %235) #12
  br label %236

236:                                              ; preds = %209, %233
  %237 = add i32 %190, 1
  br label %189, !llvm.loop !132

238:                                              ; preds = %199
  call void @delete_var_map(ptr noundef %21) #12
  %239 = icmp eq i8 %184, 0
  %240 = select i1 %239, i32 0, i32 32768, !prof !133
  ret i32 %240
}

declare ptr @init_var_map(i32 noundef) local_unnamed_addr #3

declare zeroext i8 @gimple_assign_ssa_name_copy_p(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc noundef zeroext i8 @copy_rename_partition_coalesce(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #10 !prof !134 !PGOFuncName !135 {
  %5 = load i64, ptr %1, align 8
  %6 = and i64 %5, 65535
  %7 = icmp eq i64 %6, 141
  br i1 %7, label %9, label %8, !prof !136

8:                                                ; preds = %4
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 120, ptr noundef nonnull @.str.5) #12
  br label %9

9:                                                ; preds = %4, %8
  %10 = load i64, ptr %2, align 8
  %11 = and i64 %10, 65535
  %12 = icmp eq i64 %11, 141
  br i1 %12, label %14, label %13, !prof !136

13:                                               ; preds = %9
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 121, ptr noundef nonnull @.str.5) #12
  br label %14

14:                                               ; preds = %9, %13
  %15 = load ptr, ptr %0, align 8, !tbaa !127
  %16 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 3
  %17 = load i32, ptr %16, align 8, !tbaa !58
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds %struct.partition_def, ptr %15, i64 0, i32 1, i64 %18
  %20 = load i32, ptr %19, align 8, !tbaa !128
  %21 = getelementptr inbounds %struct.tree_ssa_name, ptr %2, i64 0, i32 3
  %22 = load i32, ptr %21, align 8, !tbaa !58
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds %struct.partition_def, ptr %15, i64 0, i32 1, i64 %23
  %25 = load i32, ptr %24, align 8, !tbaa !128
  %26 = icmp eq ptr %3, null
  br i1 %26, label %31, label %27, !prof !136

27:                                               ; preds = %14
  %28 = tail call i64 @fwrite(ptr nonnull @.str.7, i64 6, i64 1, ptr nonnull %3)
  tail call void @print_generic_expr(ptr noundef nonnull %3, ptr noundef nonnull %1, i32 noundef 2) #12
  %29 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %3, ptr noundef nonnull @.str.8, i32 noundef %20)
  tail call void @print_generic_expr(ptr noundef nonnull %3, ptr noundef nonnull %2, i32 noundef 2) #12
  %30 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %3, ptr noundef nonnull @.str.9, i32 noundef %25)
  br label %31

31:                                               ; preds = %27, %14
  %32 = icmp eq i32 %20, -1
  br i1 %32, label %33, label %34, !prof !137

33:                                               ; preds = %31
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 138, ptr noundef nonnull @.str.5) #12
  br label %34

34:                                               ; preds = %31, %33
  %35 = icmp eq i32 %25, -1
  br i1 %35, label %36, label %37, !prof !137

36:                                               ; preds = %34
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 139, ptr noundef nonnull @.str.5) #12
  br label %37

37:                                               ; preds = %34, %36
  %38 = getelementptr inbounds %struct._var_map, ptr %0, i64 0, i32 2
  %39 = load ptr, ptr %38, align 8, !tbaa !124
  %40 = icmp eq ptr %39, null
  br i1 %40, label %45, label %41, !prof !136

41:                                               ; preds = %37
  %42 = sext i32 %20 to i64
  %43 = getelementptr inbounds i32, ptr %39, i64 %42
  %44 = load i32, ptr %43, align 4, !tbaa !62
  br label %45

45:                                               ; preds = %37, %41
  %46 = phi i32 [ %44, %41 ], [ %20, %37 ]
  %47 = load ptr, ptr %0, align 8, !tbaa !127
  %48 = sext i32 %46 to i64
  %49 = getelementptr inbounds %struct.partition_def, ptr %47, i64 0, i32 1, i64 %48
  %50 = load i32, ptr %49, align 8, !tbaa !128
  %51 = load ptr, ptr @cfun, align 8, !tbaa !47
  %52 = getelementptr inbounds %struct.function, ptr %51, i64 0, i32 3
  %53 = load ptr, ptr %52, align 8, !tbaa !70
  %54 = getelementptr inbounds %struct.gimple_df, ptr %53, i64 0, i32 2
  %55 = load ptr, ptr %54, align 8, !tbaa !72
  %56 = zext i32 %50 to i64
  %57 = getelementptr inbounds %struct.VEC_tree_base, ptr %55, i64 0, i32 2, i64 %56
  %58 = load ptr, ptr %57, align 8, !tbaa !47
  br i1 %40, label %63, label %59, !prof !136

59:                                               ; preds = %45
  %60 = sext i32 %25 to i64
  %61 = getelementptr inbounds i32, ptr %39, i64 %60
  %62 = load i32, ptr %61, align 4, !tbaa !62
  br label %63

63:                                               ; preds = %45, %59
  %64 = phi i32 [ %62, %59 ], [ %25, %45 ]
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.partition_def, ptr %47, i64 0, i32 1, i64 %65
  %67 = load i32, ptr %66, align 8, !tbaa !128
  %68 = zext i32 %67 to i64
  %69 = getelementptr inbounds %struct.VEC_tree_base, ptr %55, i64 0, i32 2, i64 %68
  %70 = load ptr, ptr %69, align 8, !tbaa !47
  %71 = getelementptr inbounds %struct.tree_ssa_name, ptr %58, i64 0, i32 1
  %72 = load ptr, ptr %71, align 8, !tbaa !58
  %73 = getelementptr inbounds %struct.tree_ssa_name, ptr %70, i64 0, i32 1
  %74 = load ptr, ptr %73, align 8, !tbaa !58
  %75 = icmp eq i32 %20, %25
  br i1 %75, label %76, label %79, !prof !138

76:                                               ; preds = %63
  br i1 %26, label %242, label %77, !prof !139

77:                                               ; preds = %76
  %78 = tail call i64 @fwrite(ptr nonnull @.str.10, i64 22, i64 1, ptr nonnull %3)
  br label %242

79:                                               ; preds = %63
  %80 = load i64, ptr %58, align 8
  %81 = and i64 %80, 4194304
  %82 = icmp eq i64 %81, 0
  br i1 %82, label %83, label %87, !prof !140

83:                                               ; preds = %79
  %84 = load i64, ptr %70, align 8
  %85 = and i64 %84, 4194304
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %90, label %87, !prof !140

87:                                               ; preds = %79, %83
  br i1 %26, label %242, label %88

88:                                               ; preds = %87
  %89 = tail call i64 @fwrite(ptr nonnull @.str.11, i64 39, i64 1, ptr nonnull %3)
  br label %242

90:                                               ; preds = %83
  %91 = icmp eq ptr %72, %74
  br i1 %91, label %92, label %96, !prof !141

92:                                               ; preds = %90
  %93 = tail call i32 @partition_union(ptr noundef %47, i32 noundef %20, i32 noundef %25) #12
  br i1 %26, label %242, label %94, !prof !142

94:                                               ; preds = %92
  %95 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %3, ptr noundef nonnull @.str.12, i32 noundef %93)
  br label %242

96:                                               ; preds = %90
  %97 = load i64, ptr %72, align 8
  %98 = and i64 %97, 65535
  %99 = icmp eq i64 %98, 34
  br i1 %99, label %100, label %107, !prof !143

100:                                              ; preds = %96
  %101 = load i64, ptr %74, align 8
  %102 = and i64 %101, 65535
  %103 = icmp eq i64 %102, 34
  br i1 %103, label %104, label %107

104:                                              ; preds = %100
  br i1 %26, label %242, label %105

105:                                              ; preds = %104
  %106 = tail call i64 @fwrite(ptr nonnull @.str.13, i64 40, i64 1, ptr nonnull %3)
  br label %242

107:                                              ; preds = %100, %96
  %108 = trunc i64 %97 to i32
  %109 = and i32 %108, 65535
  %110 = icmp eq i32 %109, 36
  %111 = load i64, ptr %74, align 8
  %112 = and i64 %111, 65535
  %113 = icmp ne i64 %112, 36
  %114 = xor i1 %110, %113
  br i1 %114, label %118, label %115, !prof !144

115:                                              ; preds = %107
  br i1 %26, label %242, label %116

116:                                              ; preds = %115
  %117 = tail call i64 @fwrite(ptr nonnull @.str.14, i64 40, i64 1, ptr nonnull %3)
  br label %242

118:                                              ; preds = %107
  %119 = icmp eq i32 %109, 32
  br i1 %119, label %120, label %125, !prof !144

120:                                              ; preds = %118
  %121 = getelementptr inbounds %struct.tree_decl_common, ptr %72, i64 0, i32 2
  %122 = load i64, ptr %121, align 8
  %123 = and i64 %122, 1024
  %124 = icmp ne i64 %123, 0
  br label %125

125:                                              ; preds = %120, %118
  %126 = phi i1 [ false, %118 ], [ %124, %120 ]
  %127 = zext i1 %126 to i8
  %128 = icmp eq i64 %112, 32
  br i1 %128, label %129, label %135, !prof !144

129:                                              ; preds = %125
  %130 = getelementptr inbounds %struct.tree_decl_common, ptr %74, i64 0, i32 2
  %131 = load i64, ptr %130, align 8
  %132 = lshr i64 %131, 10
  %133 = trunc i64 %132 to i8
  %134 = and i8 %133, 1
  br label %135

135:                                              ; preds = %129, %125
  %136 = phi i8 [ 0, %125 ], [ %134, %129 ]
  %137 = icmp ne i8 %136, 0
  %138 = select i1 %126, i1 true, i1 %137, !prof !144
  br i1 %138, label %154, label %139, !prof !144

139:                                              ; preds = %135
  %140 = getelementptr inbounds %struct.tree_decl_common, ptr %74, i64 0, i32 7
  %141 = load ptr, ptr %140, align 8, !tbaa !58
  %142 = icmp eq ptr %141, null
  %143 = icmp eq ptr %141, %74
  %144 = select i1 %142, i1 true, i1 %143
  br i1 %144, label %145, label %154

145:                                              ; preds = %139
  %146 = getelementptr inbounds %struct.tree_decl_common, ptr %72, i64 0, i32 7
  %147 = load ptr, ptr %146, align 8, !tbaa !58
  %148 = icmp eq ptr %147, null
  %149 = icmp eq ptr %147, %72
  %150 = select i1 %148, i1 true, i1 %149
  br i1 %150, label %151, label %154

151:                                              ; preds = %145
  br i1 %26, label %242, label %152

152:                                              ; preds = %151
  %153 = tail call i64 @fwrite(ptr nonnull @.str.15, i64 39, i64 1, ptr nonnull %3)
  br label %242

154:                                              ; preds = %145, %139, %135
  %155 = phi i8 [ %127, %135 ], [ 0, %139 ], [ 1, %145 ]
  %156 = phi i8 [ %136, %135 ], [ 1, %139 ], [ 0, %145 ]
  %157 = tail call ptr @gimple_default_def(ptr noundef %51, ptr noundef nonnull %72) #12
  %158 = icmp eq ptr %157, null
  %159 = load ptr, ptr @cfun, align 8, !tbaa !47
  %160 = tail call ptr @gimple_default_def(ptr noundef %159, ptr noundef nonnull %74) #12
  br i1 %158, label %166, label %161, !prof !144

161:                                              ; preds = %154
  %162 = icmp eq ptr %160, null
  br i1 %162, label %173, label %163

163:                                              ; preds = %161
  br i1 %26, label %242, label %164

164:                                              ; preds = %163
  %165 = tail call i64 @fwrite(ptr nonnull @.str.16, i64 32, i64 1, ptr nonnull %3)
  br label %242

166:                                              ; preds = %154
  %167 = icmp ne ptr %160, null
  %168 = icmp eq i8 %156, 0
  %169 = select i1 %167, i1 true, i1 %168, !prof !143
  %170 = icmp eq i8 %155, 0
  %171 = xor i1 %167, true
  %172 = select i1 %171, i1 %170, i1 false, !prof !144
  br label %173

173:                                              ; preds = %166, %161
  %174 = phi i1 [ true, %161 ], [ %172, %166 ]
  %175 = phi i1 [ false, %161 ], [ %169, %166 ]
  %176 = getelementptr inbounds %struct.tree_common, ptr %72, i64 0, i32 2
  %177 = load ptr, ptr %176, align 8, !tbaa !58
  %178 = getelementptr inbounds %struct.tree_common, ptr %74, i64 0, i32 2
  %179 = load ptr, ptr %178, align 8, !tbaa !58
  %180 = tail call zeroext i8 @types_compatible_p(ptr noundef %177, ptr noundef %179) #12
  %181 = icmp eq i8 %180, 0
  br i1 %181, label %182, label %185, !prof !143

182:                                              ; preds = %173
  br i1 %26, label %242, label %183

183:                                              ; preds = %182
  %184 = tail call i64 @fwrite(ptr nonnull @.str.17, i64 37, i64 1, ptr nonnull %3)
  br label %242

185:                                              ; preds = %173
  %186 = load ptr, ptr %0, align 8, !tbaa !127
  %187 = tail call i32 @partition_union(ptr noundef %186, i32 noundef %20, i32 noundef %25) #12
  br i1 %175, label %188, label %191, !prof !143

188:                                              ; preds = %185
  %189 = load ptr, ptr %38, align 8, !tbaa !124
  %190 = icmp eq ptr %189, null
  br i1 %190, label %201, label %195

191:                                              ; preds = %185
  br i1 %174, label %192, label %216, !prof !143

192:                                              ; preds = %191
  %193 = load ptr, ptr %38, align 8, !tbaa !124
  %194 = icmp eq ptr %193, null
  br i1 %194, label %201, label %195

195:                                              ; preds = %192, %188
  %196 = phi ptr [ %189, %188 ], [ %193, %192 ]
  %197 = phi ptr [ %74, %188 ], [ %72, %192 ]
  %198 = sext i32 %187 to i64
  %199 = getelementptr inbounds i32, ptr %196, i64 %198
  %200 = load i32, ptr %199, align 4, !tbaa !62
  br label %201

201:                                              ; preds = %195, %192, %188
  %202 = phi i32 [ %187, %188 ], [ %187, %192 ], [ %200, %195 ]
  %203 = phi ptr [ %74, %188 ], [ %72, %192 ], [ %197, %195 ]
  %204 = load ptr, ptr %0, align 8, !tbaa !127
  %205 = sext i32 %202 to i64
  %206 = getelementptr inbounds %struct.partition_def, ptr %204, i64 0, i32 1, i64 %205
  %207 = load i32, ptr %206, align 8, !tbaa !128
  %208 = load ptr, ptr @cfun, align 8, !tbaa !47
  %209 = getelementptr inbounds %struct.function, ptr %208, i64 0, i32 3
  %210 = load ptr, ptr %209, align 8, !tbaa !70
  %211 = getelementptr inbounds %struct.gimple_df, ptr %210, i64 0, i32 2
  %212 = load ptr, ptr %211, align 8, !tbaa !72
  %213 = zext i32 %207 to i64
  %214 = getelementptr inbounds %struct.VEC_tree_base, ptr %212, i64 0, i32 2, i64 %213
  %215 = load ptr, ptr %214, align 8, !tbaa !47
  tail call void @replace_ssa_name_symbol(ptr noundef %215, ptr noundef nonnull %203) #12
  br label %216

216:                                              ; preds = %201, %191
  br i1 %26, label %242, label %217, !prof !144

217:                                              ; preds = %216
  %218 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %3, ptr noundef nonnull @.str.18, i32 noundef %187)
  %219 = load ptr, ptr %38, align 8, !tbaa !124
  %220 = icmp eq ptr %219, null
  br i1 %220, label %225, label %221

221:                                              ; preds = %217
  %222 = sext i32 %187 to i64
  %223 = getelementptr inbounds i32, ptr %219, i64 %222
  %224 = load i32, ptr %223, align 4, !tbaa !62
  br label %225

225:                                              ; preds = %217, %221
  %226 = phi i32 [ %224, %221 ], [ %187, %217 ]
  %227 = load ptr, ptr %0, align 8, !tbaa !127
  %228 = sext i32 %226 to i64
  %229 = getelementptr inbounds %struct.partition_def, ptr %227, i64 0, i32 1, i64 %228
  %230 = load i32, ptr %229, align 8, !tbaa !128
  %231 = load ptr, ptr @cfun, align 8, !tbaa !47
  %232 = getelementptr inbounds %struct.function, ptr %231, i64 0, i32 3
  %233 = load ptr, ptr %232, align 8, !tbaa !70
  %234 = getelementptr inbounds %struct.gimple_df, ptr %233, i64 0, i32 2
  %235 = load ptr, ptr %234, align 8, !tbaa !72
  %236 = zext i32 %230 to i64
  %237 = getelementptr inbounds %struct.VEC_tree_base, ptr %235, i64 0, i32 2, i64 %236
  %238 = load ptr, ptr %237, align 8, !tbaa !47
  %239 = getelementptr inbounds %struct.tree_ssa_name, ptr %238, i64 0, i32 1
  %240 = load ptr, ptr %239, align 8, !tbaa !58
  tail call void @print_generic_expr(ptr noundef nonnull %3, ptr noundef %240, i32 noundef 2) #12
  %241 = tail call i32 @fputc(i32 10, ptr nonnull %3)
  br label %242

242:                                              ; preds = %216, %225, %182, %183, %163, %164, %151, %152, %115, %116, %104, %105, %92, %94, %87, %88, %76, %77
  %243 = phi i8 [ 0, %77 ], [ 0, %76 ], [ 0, %88 ], [ 0, %87 ], [ 0, %94 ], [ 0, %92 ], [ 0, %105 ], [ 0, %104 ], [ 0, %116 ], [ 0, %115 ], [ 0, %152 ], [ 0, %151 ], [ 0, %164 ], [ 0, %163 ], [ 0, %183 ], [ 0, %182 ], [ 1, %225 ], [ 1, %216 ]
  ret i8 %243
}

declare void @gsi_start_phis(ptr dead_on_unwind writable sret(%struct.gimple_stmt_iterator) align 8, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @is_gimple_reg(ptr noundef) local_unnamed_addr #3

declare void @dump_var_map(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #1

declare void @print_generic_expr(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @replace_ssa_name_symbol(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @delete_var_map(ptr noundef) local_unnamed_addr #3

declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare i32 @partition_union(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare ptr @gimple_default_def(ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @types_compatible_p(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #11

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #11

attributes #0 = { cold inlinehint nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold inlinehint mustprogress nofree nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree nounwind }
attributes #12 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!45}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44}
!35 = !{ptr @rename_ssa_copies, ptr @init_var_map, i64 154}
!36 = !{ptr @rename_ssa_copies, ptr @gimple_assign_ssa_name_copy_p, i64 1437481}
!37 = !{ptr @rename_ssa_copies, ptr @copy_rename_partition_coalesce, i64 50038}
!38 = !{ptr @rename_ssa_copies, ptr @gsi_start_phis, i64 632959}
!39 = !{ptr @rename_ssa_copies, ptr @is_gimple_reg, i64 170247}
!40 = !{ptr @rename_ssa_copies, ptr @replace_ssa_name_symbol, i64 1294673}
!41 = !{ptr @rename_ssa_copies, ptr @delete_var_map, i64 154}
!42 = !{ptr @copy_rename_partition_coalesce, ptr @partition_union, i64 49521}
!43 = !{ptr @copy_rename_partition_coalesce, ptr @gimple_default_def, i64 2036}
!44 = !{ptr @copy_rename_partition_coalesce, ptr @types_compatible_p, i64 1018}
!45 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!46 = !{!"function_entry_count", i64 0}
!47 = !{!48, !48, i64 0}
!48 = !{!"any pointer", !49, i64 0}
!49 = !{!"omnipotent char", !50, i64 0}
!50 = !{!"Simple C/C++ TBAA"}
!51 = !{!52, !48, i64 8}
!52 = !{!"_IO_FILE", !53, i64 0, !48, i64 8, !48, i64 16, !48, i64 24, !48, i64 32, !48, i64 40, !48, i64 48, !48, i64 56, !48, i64 64, !48, i64 72, !48, i64 80, !48, i64 88, !48, i64 96, !48, i64 104, !53, i64 112, !53, i64 116, !54, i64 120, !55, i64 128, !49, i64 130, !49, i64 131, !48, i64 136, !54, i64 144, !48, i64 152, !48, i64 160, !48, i64 168, !48, i64 176, !54, i64 184, !53, i64 192, !49, i64 196}
!53 = !{!"int", !49, i64 0}
!54 = !{!"long", !49, i64 0}
!55 = !{!"short", !49, i64 0}
!56 = !{!52, !48, i64 16}
!57 = !{!"branch_weights", i32 2000, i32 1}
!58 = !{!49, !49, i64 0}
!59 = !{!52, !48, i64 40}
!60 = !{!52, !48, i64 48}
!61 = !{!52, !53, i64 0}
!62 = !{!53, !53, i64 0}
!63 = distinct !{!63, !64, !65}
!64 = !{!"llvm.loop.mustprogress"}
!65 = !{!"llvm.loop.unroll.disable"}
!66 = !{!"function_entry_count", i64 154}
!67 = !{!"tree-ssa-copyrename.c;gate_copyrename"}
!68 = !{!"tree-ssa-copyrename.c;rename_ssa_copies"}
!69 = !{!"branch_weights", i32 154, i32 0}
!70 = !{!71, !48, i64 24}
!71 = !{!"function", !48, i64 0, !48, i64 8, !48, i64 16, !48, i64 24, !48, i64 32, !48, i64 40, !48, i64 48, !48, i64 56, !48, i64 64, !48, i64 72, !48, i64 80, !48, i64 88, !48, i64 96, !53, i64 104, !53, i64 108, !53, i64 112, !53, i64 116, !53, i64 120, !53, i64 124, !48, i64 128, !53, i64 136, !53, i64 137, !53, i64 138, !53, i64 138, !53, i64 138, !53, i64 138, !53, i64 138, !53, i64 138, !53, i64 138, !53, i64 139, !53, i64 139, !53, i64 139, !53, i64 139, !53, i64 139, !53, i64 139, !53, i64 139}
!72 = !{!73, !48, i64 16}
!73 = !{!"gimple_df", !48, i64 0, !48, i64 8, !48, i64 16, !48, i64 24, !74, i64 32, !74, i64 48, !48, i64 64, !48, i64 72, !48, i64 80, !48, i64 88, !53, i64 96, !75, i64 104}
!74 = !{!"pt_solution", !53, i64 0, !53, i64 0, !53, i64 0, !53, i64 0, !53, i64 0, !53, i64 0, !48, i64 8}
!75 = !{!"ssa_operands", !48, i64 0, !53, i64 8, !53, i64 12, !49, i64 16, !48, i64 24, !48, i64 32}
!76 = !{!"branch_weights", i32 0, i32 154}
!77 = !{!78, !53, i64 0}
!78 = !{!"VEC_tree_base", !53, i64 0, !53, i64 4, !49, i64 8}
!79 = !{!71, !48, i64 8}
!80 = !{!81, !48, i64 0}
!81 = !{!"control_flow_graph", !48, i64 0, !48, i64 8, !48, i64 16, !53, i64 24, !53, i64 28, !53, i64 32, !48, i64 40, !53, i64 48, !49, i64 52, !49, i64 60, !53, i64 68, !53, i64 72}
!82 = !{!83, !48, i64 56}
!83 = !{!"basic_block_def", !48, i64 0, !48, i64 8, !48, i64 16, !48, i64 24, !49, i64 32, !48, i64 48, !48, i64 56, !49, i64 64, !54, i64 72, !53, i64 80, !53, i64 84, !53, i64 88, !53, i64 92, !53, i64 96}
!84 = !{!81, !48, i64 8}
!85 = !{!"branch_weights", i32 1, i32 153}
!86 = !{!"branch_weights", i32 153, i32 632806}
!87 = distinct !{!87, !64, !65}
!88 = !{!83, !53, i64 96}
!89 = !{!90}
!90 = distinct !{!90, !91, !"gsi_start_bb: argument 0"}
!91 = distinct !{!91, !"gsi_start_bb"}
!92 = !{!"branch_weights", i32 632959, i32 0}
!93 = !{!"branch_weights", i32 0, i32 632959}
!94 = !{!95, !48, i64 0}
!95 = !{!"gimple_bb_info", !48, i64 0, !48, i64 8}
!96 = !{!97, !48, i64 0}
!97 = !{!"gimple_seq_d", !48, i64 0, !48, i64 8, !48, i64 16}
!98 = !{!"branch_weights", i32 1, i32 632958}
!99 = !{!100, !48, i64 0}
!100 = !{!"gimple_seq_node_d", !48, i64 0, !48, i64 8, !48, i64 16}
!101 = !{!"branch_weights", i32 1437387, i32 95}
!102 = !{!"branch_weights", i32 0, i32 95}
!103 = !{!54, !54, i64 0}
!104 = !{i8 0, i8 2}
!105 = !{!100, !48, i64 16}
!106 = !{!"branch_weights", i32 632958, i32 804524}
!107 = distinct !{!107, !64, !65}
!108 = distinct !{!108, !64, !65}
!109 = !{i64 0, i64 8, !47, i64 8, i64 8, !47, i64 16, i64 8, !47}
!110 = !{!"branch_weights", i32 462712, i32 170247}
!111 = !{!"branch_weights", i32 167598, i32 2649}
!112 = !{!"branch_weights", i32 1, i32 2648}
!113 = !{!"branch_weights", i32 0, i32 237045}
!114 = !{!115, !48, i64 32}
!115 = !{!"phi_arg_d", !116, i64 0, !48, i64 32, !53, i64 40}
!116 = !{!"ssa_use_operand_d", !48, i64 0, !48, i64 8, !49, i64 16, !48, i64 24}
!117 = !{!"branch_weights", i32 49943, i32 187102}
!118 = !{!"branch_weights", i32 234397, i32 2648}
!119 = distinct !{!119, !64, !65}
!120 = !{!"branch_weights", i32 170247, i32 0}
!121 = distinct !{!121, !64, !65}
!122 = !{!"branch_weights", i32 0, i32 1527696}
!123 = !{!"branch_weights", i32 1527542, i32 154}
!124 = !{!125, !48, i64 16}
!125 = !{!"_var_map", !48, i64 0, !48, i64 8, !48, i64 16, !53, i64 24, !53, i64 28, !53, i64 32, !48, i64 40, !48, i64 48}
!126 = !{!"branch_weights", i32 1527542, i32 0}
!127 = !{!125, !48, i64 0}
!128 = !{!129, !53, i64 0}
!129 = !{!"partition_elem", !53, i64 0, !48, i64 8, !53, i64 16}
!130 = !{!"branch_weights", i32 232869, i32 1294673}
!131 = !{!"branch_weights", i32 1294673, i32 0}
!132 = distinct !{!132, !64, !65}
!133 = !{!"branch_weights", i32 56, i32 98}
!134 = !{!"function_entry_count", i64 50038}
!135 = !{!"tree-ssa-copyrename.c;copy_rename_partition_coalesce"}
!136 = !{!"branch_weights", i32 50038, i32 0}
!137 = !{!"branch_weights", i32 0, i32 50038}
!138 = !{!"branch_weights", i32 517, i32 49521}
!139 = !{!"branch_weights", i32 517, i32 0}
!140 = !{!"branch_weights", i32 49521, i32 0}
!141 = !{!"branch_weights", i32 48503, i32 1018}
!142 = !{!"branch_weights", i32 48503, i32 0}
!143 = !{!"branch_weights", i32 0, i32 1018}
!144 = !{!"branch_weights", i32 1018, i32 0}
