; ModuleID = 'tree-nrv.c'
source_filename = "tree-nrv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gimple_opt_pass = type { %struct.opt_pass }
%struct.opt_pass = type { i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct._IO_FILE = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, [1 x i8], ptr, i64, ptr, ptr, ptr, ptr, i64, i32, [20 x i8] }
%struct.gimple_stmt_iterator = type { ptr, ptr, ptr }
%struct.nrv_data = type { ptr, ptr, i32 }
%struct.walk_stmt_info = type { %struct.gimple_stmt_iterator, ptr, ptr, i8, i8, i8, i8, ptr }
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
%struct.gimple_seq_node_d = type { ptr, ptr, ptr }
%struct.tree_var_decl = type { %struct.tree_decl_with_vis, ptr }
%struct.tree_parm_decl = type { %struct.tree_decl_with_rtl, ptr, ptr }
%struct.tree_result_decl = type { %struct.tree_decl_with_rtl, ptr }
%struct.tree_exp = type { %struct.tree_common, i32, ptr, [1 x ptr] }
%struct.tree_ssa_name = type { %struct.tree_common, ptr, ptr, i32, ptr, %struct.ssa_use_operand_d }
%struct.ssa_use_operand_d = type { ptr, ptr, %union.anon, ptr }
%union.anon = type { ptr }
%struct.tree_type = type { %struct.tree_common, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, %union.tree_type_symtab, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.tree_type_symtab = type { ptr }
%struct.gimple_df = type { ptr, ptr, ptr, ptr, %struct.pt_solution, %struct.pt_solution, ptr, ptr, ptr, ptr, i8, %struct.ssa_operands }
%struct.pt_solution = type { i8, ptr }
%struct.ssa_operands = type { ptr, i32, i32, i8, ptr, ptr }

@stdout = external local_unnamed_addr global ptr, align 8
@stdin = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [4 x i8] c"nrv\00", align 1
@pass_nrv = dso_local local_unnamed_addr global %struct.gimple_opt_pass { %struct.opt_pass { i32 0, ptr @.str, ptr @gate_pass_return_slot, ptr @tree_nrv, ptr null, ptr null, i32 0, i32 105, i32 40, i32 0, i32 0, i32 0, i32 3 } }, align 8
@.str.1 = private unnamed_addr constant [8 x i8] c"retslot\00", align 1
@pass_return_slot = dso_local local_unnamed_addr global %struct.gimple_opt_pass { %struct.opt_pass { i32 0, ptr @.str.1, ptr null, ptr @execute_return_slot_opt, ptr null, ptr null, i32 0, i32 0, i32 32, i32 0, i32 0, i32 0, i32 0 } }, align 8
@optimize = external local_unnamed_addr global i32, align 4
@current_function_decl = external local_unnamed_addr global ptr, align 8
@cfun = external local_unnamed_addr global ptr, align 8
@.str.2 = private unnamed_addr constant [11 x i8] c"tree-nrv.c\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@dump_file = external local_unnamed_addr global ptr, align 8
@dump_flags = external local_unnamed_addr global i32, align 4
@.str.4 = private unnamed_addr constant [15 x i8] c"NRV Replaced: \00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"  with: \00", align 1
@gimple_ops_offset_ = external local_unnamed_addr constant [0 x i64], align 8
@.str.7 = private unnamed_addr constant [11 x i8] c"./gimple.h\00", align 1
@gss_for_code_ = external local_unnamed_addr constant [0 x i32], align 4
@tree_code_type = external local_unnamed_addr constant [0 x i32], align 4

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
  %8 = tail call i32 @__uflow(ptr noundef %0) #15
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
  %8 = tail call i32 @__uflow(ptr noundef %0) #15
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
  %8 = tail call i32 @__uflow(ptr noundef %1) #15
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
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #15
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
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #15
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
  %10 = tail call i32 @__overflow(ptr noundef %2, i32 noundef %9) #15
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
  %4 = tail call i64 @__getdelim(ptr noundef %0, ptr noundef %1, i32 noundef 10, ptr noundef %2) #15
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
  %5 = tail call ptr @__ctype_tolower_loc() #15
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
  %5 = tail call ptr @__ctype_toupper_loc() #15
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal zeroext i8 @gate_pass_return_slot() #9 !prof !58 !PGOFuncName !59 {
  %1 = load i32, ptr @optimize, align 4, !tbaa !54
  %2 = icmp sgt i32 %1, 0
  %3 = zext i1 %2 to i8
  ret i8 %3
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @tree_nrv() #10 !prof !58 !PGOFuncName !60 {
  %1 = alloca %struct.gimple_stmt_iterator, align 8
  %2 = alloca %struct.nrv_data, align 8
  %3 = alloca %struct.walk_stmt_info, align 8
  %4 = load ptr, ptr @current_function_decl, align 8, !tbaa !39
  %5 = getelementptr inbounds %struct.tree_decl_non_common, ptr %4, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !50
  %7 = getelementptr inbounds %struct.tree_common, ptr %6, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !50
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %1) #15
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #15
  %9 = tail call i32 @aggregate_value_p(ptr noundef %6, ptr noundef %4) #15
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %372, label %11, !prof !61

11:                                               ; preds = %0
  %12 = tail call zeroext i8 @is_gimple_reg_type(ptr noundef %8) #15
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %14, label %372

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.tree_decl_minimal, ptr %6, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !50
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %372

18:                                               ; preds = %14
  %19 = load i64, ptr %6, align 8
  %20 = and i64 %19, 262144
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %372

22:                                               ; preds = %18
  %23 = load ptr, ptr @cfun, align 8, !tbaa !39
  %24 = getelementptr inbounds %struct.function, ptr %23, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !62
  %26 = load ptr, ptr %25, align 8, !tbaa !64
  %27 = getelementptr inbounds %struct.basic_block_def, ptr %26, i64 0, i32 6
  %28 = load ptr, ptr %27, align 8, !tbaa !66
  %29 = getelementptr inbounds %struct.control_flow_graph, ptr %25, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !68
  %31 = icmp eq ptr %28, %30
  br i1 %31, label %199, label %32

32:                                               ; preds = %22
  %33 = getelementptr inbounds i8, ptr %1, i64 8
  %34 = getelementptr inbounds i8, ptr %1, i64 16
  br label %45

35:                                               ; preds = %194, %63
  %36 = phi ptr [ %47, %63 ], [ %193, %194 ]
  %37 = getelementptr inbounds %struct.basic_block_def, ptr %46, i64 0, i32 6
  %38 = load ptr, ptr %37, align 8, !tbaa !66
  %39 = load ptr, ptr @cfun, align 8, !tbaa !39
  %40 = getelementptr inbounds %struct.function, ptr %39, i64 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !62
  %42 = getelementptr inbounds %struct.control_flow_graph, ptr %41, i64 0, i32 1
  %43 = load ptr, ptr %42, align 8, !tbaa !68
  %44 = icmp eq ptr %38, %43
  br i1 %44, label %199, label %45, !llvm.loop !69

45:                                               ; preds = %32, %35
  %46 = phi ptr [ %28, %32 ], [ %38, %35 ]
  %47 = phi ptr [ null, %32 ], [ %36, %35 ]
  %48 = getelementptr inbounds %struct.basic_block_def, ptr %46, i64 0, i32 13
  %49 = load i32, ptr %48, align 8, !tbaa !70, !noalias !71
  %50 = and i32 %49, 512
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %45
  %53 = getelementptr inbounds %struct.basic_block_def, ptr %46, i64 0, i32 7
  %54 = load ptr, ptr %53, align 8, !tbaa !50, !noalias !71
  %55 = icmp eq ptr %54, null
  br i1 %55, label %58, label %56

56:                                               ; preds = %52
  %57 = load ptr, ptr %54, align 8, !tbaa !74, !noalias !71
  br label %58

58:                                               ; preds = %56, %52, %45
  %59 = phi ptr [ %57, %56 ], [ null, %52 ], [ null, %45 ]
  %60 = icmp eq ptr %59, null
  br i1 %60, label %63, label %61

61:                                               ; preds = %58
  %62 = load ptr, ptr %59, align 8, !tbaa !76, !noalias !71
  br label %63

63:                                               ; preds = %58, %61
  %64 = phi ptr [ %62, %61 ], [ null, %58 ]
  store ptr %64, ptr %1, align 8, !tbaa.struct !78
  store ptr %59, ptr %33, align 8, !tbaa.struct !79
  store ptr %46, ptr %34, align 8, !tbaa.struct !80
  %65 = icmp eq ptr %64, null
  br i1 %65, label %35, label %66

66:                                               ; preds = %63, %194
  %67 = phi ptr [ %197, %194 ], [ %64, %63 ]
  %68 = phi ptr [ %193, %194 ], [ %47, %63 ]
  %69 = load ptr, ptr %67, align 8, !tbaa !81
  %70 = load i32, ptr %69, align 8
  %71 = and i32 %70, 255
  %72 = trunc i32 %70 to i8
  switch i8 %72, label %108 [
    i8 9, label %73
    i8 6, label %109
    i8 8, label %94
  ]

73:                                               ; preds = %66
  %74 = add nsw i32 %71, -10
  %75 = icmp ult i32 %74, -9
  br i1 %75, label %88, label %76

76:                                               ; preds = %73
  %77 = zext nneg i32 %71 to i64
  %78 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %77
  %79 = load i32, ptr %78, align 4, !tbaa !54
  %80 = zext i32 %79 to i64
  %81 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %80
  %82 = load i64, ptr %81, align 8, !tbaa !83
  %83 = icmp eq i64 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %76
  tail call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 1622, ptr noundef nonnull @.str.3) #15
  br label %85

85:                                               ; preds = %84, %76
  %86 = getelementptr inbounds i8, ptr %69, i64 %82
  %87 = load ptr, ptr %86, align 8, !tbaa !39
  br label %88

88:                                               ; preds = %73, %85
  %89 = phi ptr [ %87, %85 ], [ null, %73 ]
  %90 = icmp eq ptr %89, null
  %91 = icmp eq ptr %89, %6
  %92 = or i1 %90, %91
  br i1 %92, label %191, label %93

93:                                               ; preds = %88
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 153, ptr noundef nonnull @.str.3) #15
  br label %191

94:                                               ; preds = %66
  %95 = zext nneg i32 %71 to i64
  %96 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %95
  %97 = load i32, ptr %96, align 4, !tbaa !54
  %98 = zext i32 %97 to i64
  %99 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %98
  %100 = load i64, ptr %99, align 8, !tbaa !83
  %101 = icmp eq i64 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %94
  tail call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 1622, ptr noundef nonnull @.str.3) #15
  br label %103

103:                                              ; preds = %102, %94
  %104 = getelementptr inbounds i8, ptr %69, i64 %100
  %105 = load ptr, ptr %104, align 8, !tbaa !39
  %106 = icmp ne ptr %105, null
  %107 = zext i1 %106 to i8
  br label %109

108:                                              ; preds = %66
  br label %109

109:                                              ; preds = %66, %108, %103
  %110 = phi i8 [ %107, %103 ], [ 1, %66 ], [ 0, %108 ]
  %111 = icmp eq i8 %110, 0
  br i1 %111, label %165, label %112

112:                                              ; preds = %109
  %113 = tail call ptr @gimple_get_lhs(ptr noundef nonnull %69) #15
  %114 = icmp eq ptr %113, %6
  br i1 %114, label %115, label %165

115:                                              ; preds = %112
  %116 = tail call zeroext i8 @gimple_assign_copy_p(ptr noundef nonnull %69) #15
  %117 = icmp eq i8 %116, 0
  br i1 %117, label %191, label %118

118:                                              ; preds = %115
  %119 = load i32, ptr %69, align 8
  %120 = and i32 %119, 255
  %121 = add nsw i32 %120, -10
  %122 = icmp ult i32 %121, -9
  br i1 %122, label %136, label %123

123:                                              ; preds = %118
  %124 = zext nneg i32 %120 to i64
  %125 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %124
  %126 = load i32, ptr %125, align 4, !tbaa !54
  %127 = zext i32 %126 to i64
  %128 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %127
  %129 = load i64, ptr %128, align 8, !tbaa !83
  %130 = icmp eq i64 %129, 0
  br i1 %130, label %131, label %132

131:                                              ; preds = %123
  tail call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 1622, ptr noundef nonnull @.str.3) #15
  br label %132

132:                                              ; preds = %131, %123
  %133 = getelementptr inbounds i8, ptr %69, i64 %129
  %134 = getelementptr inbounds ptr, ptr %133, i64 1
  %135 = load ptr, ptr %134, align 8, !tbaa !39
  br label %136

136:                                              ; preds = %118, %132
  %137 = phi ptr [ %135, %132 ], [ null, %118 ]
  %138 = icmp eq ptr %68, null
  br i1 %138, label %141, label %139

139:                                              ; preds = %136
  %140 = icmp eq ptr %68, %137
  br i1 %140, label %141, label %191

141:                                              ; preds = %139, %136
  %142 = phi ptr [ %137, %136 ], [ %68, %139 ]
  %143 = load i64, ptr %142, align 8
  %144 = and i64 %143, 589823
  %145 = icmp eq i64 %144, 32
  br i1 %145, label %146, label %191

146:                                              ; preds = %141
  %147 = getelementptr inbounds %struct.tree_decl_minimal, ptr %142, i64 0, i32 4
  %148 = load ptr, ptr %147, align 8, !tbaa !50
  %149 = load ptr, ptr @current_function_decl, align 8, !tbaa !39
  %150 = icmp eq ptr %148, %149
  %151 = and i64 %143, 67371008
  %152 = icmp eq i64 %151, 0
  %153 = and i1 %152, %150
  br i1 %153, label %154, label %191

154:                                              ; preds = %146
  %155 = getelementptr inbounds %struct.tree_decl_common, ptr %6, i64 0, i32 3
  %156 = getelementptr inbounds %struct.tree_decl_common, ptr %142, i64 0, i32 3
  %157 = load i32, ptr %156, align 8, !tbaa !50
  %158 = load i32, ptr %155, align 8, !tbaa !50
  %159 = icmp ugt i32 %157, %158
  br i1 %159, label %191, label %160

160:                                              ; preds = %154
  %161 = getelementptr inbounds %struct.tree_common, ptr %142, i64 0, i32 2
  %162 = load ptr, ptr %161, align 8, !tbaa !50
  %163 = tail call zeroext i8 @useless_type_conversion_p(ptr noundef %8, ptr noundef %162) #15
  %164 = icmp ne i8 %163, 0
  br label %191

165:                                              ; preds = %112, %109
  %166 = load i32, ptr %69, align 8
  %167 = trunc i32 %166 to i8
  switch i8 %167, label %183 [
    i8 6, label %184
    i8 8, label %168
  ]

168:                                              ; preds = %165
  %169 = and i32 %166, 255
  %170 = zext nneg i32 %169 to i64
  %171 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %170
  %172 = load i32, ptr %171, align 4, !tbaa !54
  %173 = zext i32 %172 to i64
  %174 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %173
  %175 = load i64, ptr %174, align 8, !tbaa !83
  %176 = icmp eq i64 %175, 0
  br i1 %176, label %177, label %178

177:                                              ; preds = %168
  tail call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 1622, ptr noundef nonnull @.str.3) #15
  br label %178

178:                                              ; preds = %177, %168
  %179 = getelementptr inbounds i8, ptr %69, i64 %175
  %180 = load ptr, ptr %179, align 8, !tbaa !39
  %181 = icmp ne ptr %180, null
  %182 = zext i1 %181 to i8
  br label %184

183:                                              ; preds = %165
  br label %184

184:                                              ; preds = %165, %183, %178
  %185 = phi i8 [ 1, %165 ], [ %182, %178 ], [ 0, %183 ]
  %186 = icmp eq i8 %185, 0
  br i1 %186, label %191, label %187

187:                                              ; preds = %184
  %188 = tail call ptr @gimple_get_lhs(ptr noundef nonnull %69) #15
  %189 = tail call ptr @get_base_address(ptr noundef %188) #15
  %190 = icmp ne ptr %189, %6
  br label %191

191:                                              ; preds = %115, %139, %154, %146, %141, %160, %187, %88, %184, %93
  %192 = phi i1 [ true, %93 ], [ true, %184 ], [ true, %88 ], [ %190, %187 ], [ false, %115 ], [ false, %139 ], [ false, %154 ], [ false, %146 ], [ false, %141 ], [ %164, %160 ]
  %193 = phi ptr [ %68, %93 ], [ %68, %184 ], [ %68, %88 ], [ %68, %187 ], [ %68, %115 ], [ %68, %139 ], [ %142, %154 ], [ %142, %146 ], [ %142, %141 ], [ %142, %160 ]
  br i1 %192, label %194, label %372

194:                                              ; preds = %191
  %195 = load ptr, ptr %1, align 8, !tbaa !84
  %196 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %195, i64 0, i32 2
  %197 = load ptr, ptr %196, align 8, !tbaa !86
  store ptr %197, ptr %1, align 8, !tbaa !84
  %198 = icmp eq ptr %197, null
  br i1 %198, label %35, label %66, !llvm.loop !87

199:                                              ; preds = %35, %22
  %200 = phi ptr [ null, %22 ], [ %36, %35 ]
  %201 = icmp eq ptr %200, null
  br i1 %201, label %372, label %202

202:                                              ; preds = %199
  %203 = load ptr, ptr @dump_file, align 8, !tbaa !39
  %204 = icmp eq ptr %203, null
  br i1 %204, label %219, label %205

205:                                              ; preds = %202
  %206 = load i32, ptr @dump_flags, align 4, !tbaa !54
  %207 = and i32 %206, 8
  %208 = icmp eq i32 %207, 0
  br i1 %208, label %219, label %209

209:                                              ; preds = %205
  %210 = tail call i64 @fwrite(ptr nonnull @.str.4, i64 14, i64 1, ptr nonnull %203)
  %211 = load ptr, ptr @dump_file, align 8, !tbaa !39
  %212 = load i32, ptr @dump_flags, align 4, !tbaa !54
  tail call void @print_generic_expr(ptr noundef %211, ptr noundef nonnull %200, i32 noundef %212) #15
  %213 = load ptr, ptr @dump_file, align 8, !tbaa !39
  %214 = tail call i64 @fwrite(ptr nonnull @.str.5, i64 8, i64 1, ptr %213)
  %215 = load ptr, ptr @dump_file, align 8, !tbaa !39
  %216 = load i32, ptr @dump_flags, align 4, !tbaa !54
  tail call void @print_generic_expr(ptr noundef %215, ptr noundef nonnull %6, i32 noundef %216) #15
  %217 = load ptr, ptr @dump_file, align 8, !tbaa !39
  %218 = tail call i32 @fputc(i32 10, ptr %217)
  br label %219

219:                                              ; preds = %209, %205, %202
  %220 = getelementptr inbounds %struct.tree_decl_common, ptr %200, i64 0, i32 2
  %221 = load i64, ptr %220, align 8
  %222 = and i64 %221, 1024
  %223 = icmp eq i64 %222, 0
  br i1 %223, label %224, label %241

224:                                              ; preds = %219
  %225 = getelementptr inbounds %struct.tree_decl_common, ptr %200, i64 0, i32 7
  %226 = load ptr, ptr %225, align 8, !tbaa !50
  %227 = icmp eq ptr %226, null
  br i1 %227, label %233, label %228

228:                                              ; preds = %224
  %229 = getelementptr inbounds %struct.tree_decl_minimal, ptr %226, i64 0, i32 4
  %230 = load ptr, ptr %229, align 8, !tbaa !50
  %231 = load ptr, ptr @current_function_decl, align 8, !tbaa !39
  %232 = icmp eq ptr %230, %231
  br i1 %232, label %233, label %241

233:                                              ; preds = %228, %224
  %234 = getelementptr inbounds %struct.tree_decl_minimal, ptr %200, i64 0, i32 3
  %235 = load ptr, ptr %234, align 8, !tbaa !50
  store ptr %235, ptr %15, align 8, !tbaa !50
  %236 = getelementptr inbounds %struct.tree_decl_minimal, ptr %200, i64 0, i32 1
  %237 = load i32, ptr %236, align 8, !tbaa !50
  %238 = getelementptr inbounds %struct.tree_decl_minimal, ptr %6, i64 0, i32 1
  store i32 %237, ptr %238, align 8, !tbaa !50
  %239 = load ptr, ptr %225, align 8, !tbaa !50
  %240 = getelementptr inbounds %struct.tree_decl_common, ptr %6, i64 0, i32 7
  store ptr %239, ptr %240, align 8, !tbaa !50
  br label %241

241:                                              ; preds = %233, %228, %219
  %242 = load i64, ptr %200, align 8
  %243 = load i64, ptr %6, align 8
  %244 = and i64 %242, 262144
  %245 = or i64 %244, %243
  store i64 %245, ptr %6, align 8
  store ptr %200, ptr %2, align 8, !tbaa !88
  %246 = getelementptr inbounds %struct.nrv_data, ptr %2, i64 0, i32 1
  store ptr %6, ptr %246, align 8, !tbaa !90
  %247 = load ptr, ptr @cfun, align 8, !tbaa !39
  %248 = getelementptr inbounds %struct.function, ptr %247, i64 0, i32 1
  %249 = load ptr, ptr %248, align 8, !tbaa !62
  %250 = load ptr, ptr %249, align 8, !tbaa !64
  %251 = getelementptr inbounds %struct.basic_block_def, ptr %250, i64 0, i32 6
  %252 = load ptr, ptr %251, align 8, !tbaa !66
  %253 = getelementptr inbounds %struct.control_flow_graph, ptr %249, i64 0, i32 1
  %254 = load ptr, ptr %253, align 8, !tbaa !68
  %255 = icmp eq ptr %252, %254
  br i1 %255, label %354, label %256

256:                                              ; preds = %241
  %257 = getelementptr inbounds i8, ptr %1, i64 8
  %258 = getelementptr inbounds i8, ptr %1, i64 16
  %259 = getelementptr inbounds %struct.walk_stmt_info, ptr %3, i64 0, i32 1
  %260 = getelementptr inbounds %struct.nrv_data, ptr %2, i64 0, i32 2
  br label %270

261:                                              ; preds = %351, %287
  %262 = getelementptr inbounds %struct.basic_block_def, ptr %271, i64 0, i32 6
  %263 = load ptr, ptr %262, align 8, !tbaa !66
  %264 = load ptr, ptr @cfun, align 8, !tbaa !39
  %265 = getelementptr inbounds %struct.function, ptr %264, i64 0, i32 1
  %266 = load ptr, ptr %265, align 8, !tbaa !62
  %267 = getelementptr inbounds %struct.control_flow_graph, ptr %266, i64 0, i32 1
  %268 = load ptr, ptr %267, align 8, !tbaa !68
  %269 = icmp eq ptr %263, %268
  br i1 %269, label %354, label %270, !llvm.loop !91

270:                                              ; preds = %256, %261
  %271 = phi ptr [ %252, %256 ], [ %263, %261 ]
  %272 = getelementptr inbounds %struct.basic_block_def, ptr %271, i64 0, i32 13
  %273 = load i32, ptr %272, align 8, !tbaa !70, !noalias !92
  %274 = and i32 %273, 512
  %275 = icmp eq i32 %274, 0
  br i1 %275, label %276, label %282

276:                                              ; preds = %270
  %277 = getelementptr inbounds %struct.basic_block_def, ptr %271, i64 0, i32 7
  %278 = load ptr, ptr %277, align 8, !tbaa !50, !noalias !92
  %279 = icmp eq ptr %278, null
  br i1 %279, label %282, label %280

280:                                              ; preds = %276
  %281 = load ptr, ptr %278, align 8, !tbaa !74, !noalias !92
  br label %282

282:                                              ; preds = %280, %276, %270
  %283 = phi ptr [ %281, %280 ], [ null, %276 ], [ null, %270 ]
  %284 = icmp eq ptr %283, null
  br i1 %284, label %287, label %285

285:                                              ; preds = %282
  %286 = load ptr, ptr %283, align 8, !tbaa !76, !noalias !92
  br label %287

287:                                              ; preds = %282, %285
  %288 = phi ptr [ %286, %285 ], [ null, %282 ]
  store ptr %288, ptr %1, align 8, !tbaa.struct !78
  store ptr %283, ptr %257, align 8, !tbaa.struct !79
  store ptr %271, ptr %258, align 8, !tbaa.struct !80
  %289 = icmp eq ptr %288, null
  br i1 %289, label %261, label %290

290:                                              ; preds = %287, %351
  %291 = phi ptr [ %352, %351 ], [ %288, %287 ]
  %292 = load ptr, ptr %291, align 8, !tbaa !81
  %293 = call zeroext i8 @gimple_assign_copy_p(ptr noundef %292) #15
  %294 = icmp eq i8 %293, 0
  br i1 %294, label %337, label %295

295:                                              ; preds = %290
  %296 = load i32, ptr %292, align 8
  %297 = and i32 %296, 255
  %298 = add nsw i32 %297, -10
  %299 = icmp ult i32 %298, -9
  br i1 %299, label %312, label %300

300:                                              ; preds = %295
  %301 = zext nneg i32 %297 to i64
  %302 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %301
  %303 = load i32, ptr %302, align 4, !tbaa !54
  %304 = zext i32 %303 to i64
  %305 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %304
  %306 = load i64, ptr %305, align 8, !tbaa !83
  %307 = icmp eq i64 %306, 0
  br i1 %307, label %308, label %309

308:                                              ; preds = %300
  call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 1622, ptr noundef nonnull @.str.3) #15
  br label %309

309:                                              ; preds = %308, %300
  %310 = getelementptr inbounds i8, ptr %292, i64 %306
  %311 = load ptr, ptr %310, align 8, !tbaa !39
  br label %312

312:                                              ; preds = %295, %309
  %313 = phi ptr [ %311, %309 ], [ null, %295 ]
  %314 = icmp eq ptr %313, %6
  br i1 %314, label %315, label %337

315:                                              ; preds = %312
  %316 = load i32, ptr %292, align 8
  %317 = and i32 %316, 255
  %318 = add nsw i32 %317, -10
  %319 = icmp ult i32 %318, -9
  br i1 %319, label %333, label %320

320:                                              ; preds = %315
  %321 = zext nneg i32 %317 to i64
  %322 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %321
  %323 = load i32, ptr %322, align 4, !tbaa !54
  %324 = zext i32 %323 to i64
  %325 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %324
  %326 = load i64, ptr %325, align 8, !tbaa !83
  %327 = icmp eq i64 %326, 0
  br i1 %327, label %328, label %329

328:                                              ; preds = %320
  call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 1622, ptr noundef nonnull @.str.3) #15
  br label %329

329:                                              ; preds = %328, %320
  %330 = getelementptr inbounds i8, ptr %292, i64 %326
  %331 = getelementptr inbounds ptr, ptr %330, i64 1
  %332 = load ptr, ptr %331, align 8, !tbaa !39
  br label %333

333:                                              ; preds = %315, %329
  %334 = phi ptr [ %332, %329 ], [ null, %315 ]
  %335 = icmp eq ptr %334, %200
  br i1 %335, label %336, label %337

336:                                              ; preds = %333
  call void @unlink_stmt_vdef(ptr noundef nonnull %292) #15
  call void @gsi_remove(ptr noundef nonnull %1, i8 noundef zeroext 1) #15
  br label %351

337:                                              ; preds = %333, %312, %290
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i64 56, i1 false)
  store ptr %2, ptr %259, align 8, !tbaa !95
  store i32 0, ptr %260, align 8, !tbaa !97
  %338 = call ptr @walk_gimple_op(ptr noundef %292, ptr noundef nonnull @finalize_nrv_r, ptr noundef nonnull %3) #15
  %339 = load i32, ptr %260, align 8, !tbaa !97
  %340 = icmp eq i32 %339, 0
  br i1 %340, label %347, label %341

341:                                              ; preds = %337
  %342 = load i32, ptr %292, align 8
  %343 = and i32 %342, 255
  %344 = add nsw i32 %343, -10
  %345 = icmp ult i32 %344, -9
  br i1 %345, label %347, label %346

346:                                              ; preds = %341
  call void @gimple_set_modified(ptr noundef nonnull %292, i8 noundef zeroext 1) #15
  call void @update_stmt_operands(ptr noundef nonnull %292) #15
  br label %347

347:                                              ; preds = %346, %341, %337
  %348 = load ptr, ptr %1, align 8, !tbaa !84
  %349 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %348, i64 0, i32 2
  %350 = load ptr, ptr %349, align 8, !tbaa !86
  store ptr %350, ptr %1, align 8, !tbaa !84
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #15
  br label %351

351:                                              ; preds = %347, %336
  %352 = load ptr, ptr %1, align 8
  %353 = icmp eq ptr %352, null
  br i1 %353, label %261, label %290, !llvm.loop !98

354:                                              ; preds = %261, %241
  %355 = load i64, ptr %200, align 8
  %356 = trunc i64 %355 to i16
  switch i16 %356, label %361 [
    i16 32, label %357
    i16 34, label %359
  ]

357:                                              ; preds = %354
  %358 = getelementptr inbounds %struct.tree_var_decl, ptr %200, i64 0, i32 1
  br label %366

359:                                              ; preds = %354
  %360 = getelementptr inbounds %struct.tree_parm_decl, ptr %200, i64 0, i32 2
  br label %366

361:                                              ; preds = %354
  %362 = and i64 %355, 65535
  %363 = icmp eq i64 %362, 36
  %364 = getelementptr inbounds %struct.tree_result_decl, ptr %200, i64 0, i32 1
  %365 = select i1 %363, ptr %364, ptr null
  br label %366

366:                                              ; preds = %361, %359, %357
  %367 = phi ptr [ %358, %357 ], [ %360, %359 ], [ %365, %361 ]
  %368 = icmp ne ptr %367, null
  call void @llvm.assume(i1 %368)
  %369 = load ptr, ptr %367, align 8, !tbaa !39
  %370 = load i8, ptr %369, align 8
  %371 = and i8 %370, -3
  store i8 %371, ptr %369, align 8
  br label %372

372:                                              ; preds = %191, %199, %18, %14, %11, %0, %366
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #15
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %1) #15
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @execute_return_slot_opt() #10 !prof !58 !PGOFuncName !99 {
  %1 = load ptr, ptr @cfun, align 8, !tbaa !39
  %2 = getelementptr inbounds %struct.function, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !62
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = getelementptr inbounds %struct.basic_block_def, ptr %4, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !66
  %7 = getelementptr inbounds %struct.control_flow_graph, ptr %3, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !68
  %9 = icmp eq ptr %6, %8
  br i1 %9, label %232, label %19, !prof !100

10:                                               ; preds = %228, %36
  %11 = getelementptr inbounds %struct.basic_block_def, ptr %20, i64 0, i32 6
  %12 = load ptr, ptr %11, align 8, !tbaa !66
  %13 = load ptr, ptr @cfun, align 8, !tbaa !39
  %14 = getelementptr inbounds %struct.function, ptr %13, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !62
  %16 = getelementptr inbounds %struct.control_flow_graph, ptr %15, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !68
  %18 = icmp eq ptr %12, %17
  br i1 %18, label %232, label %19, !prof !101, !llvm.loop !102

19:                                               ; preds = %0, %10
  %20 = phi ptr [ %12, %10 ], [ %6, %0 ]
  %21 = getelementptr inbounds %struct.basic_block_def, ptr %20, i64 0, i32 13
  %22 = load i32, ptr %21, align 8, !tbaa !70, !noalias !103
  %23 = and i32 %22, 512
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %31, !prof !106

25:                                               ; preds = %19
  %26 = getelementptr inbounds %struct.basic_block_def, ptr %20, i64 0, i32 7
  %27 = load ptr, ptr %26, align 8, !tbaa !50, !noalias !103
  %28 = icmp eq ptr %27, null
  br i1 %28, label %31, label %29, !prof !107

29:                                               ; preds = %25
  %30 = load ptr, ptr %27, align 8, !tbaa !74, !noalias !103
  br label %31

31:                                               ; preds = %29, %25, %19
  %32 = phi ptr [ %30, %29 ], [ null, %25 ], [ null, %19 ]
  %33 = icmp eq ptr %32, null
  br i1 %33, label %36, label %34, !prof !107

34:                                               ; preds = %31
  %35 = load ptr, ptr %32, align 8, !tbaa !76, !noalias !103
  br label %36

36:                                               ; preds = %31, %34
  %37 = phi ptr [ %35, %34 ], [ null, %31 ]
  %38 = icmp eq ptr %37, null
  br i1 %38, label %10, label %39, !prof !108

39:                                               ; preds = %36, %228
  %40 = phi ptr [ %230, %228 ], [ %37, %36 ]
  %41 = load ptr, ptr %40, align 8, !tbaa !81
  %42 = load i32, ptr %41, align 8
  %43 = and i32 %42, 255
  %44 = icmp eq i32 %43, 8
  br i1 %44, label %45, label %228, !prof !109

45:                                               ; preds = %39
  %46 = zext nneg i32 %43 to i64
  %47 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %46
  %48 = load i32, ptr %47, align 4, !tbaa !54
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %49
  %51 = load i64, ptr %50, align 8, !tbaa !83
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %53, label %54, !prof !110

53:                                               ; preds = %45
  tail call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 1622, ptr noundef nonnull @.str.3) #15
  br label %54

54:                                               ; preds = %53, %45
  %55 = getelementptr inbounds i8, ptr %41, i64 %51
  %56 = load ptr, ptr %55, align 8, !tbaa !39
  %57 = icmp eq ptr %56, null
  br i1 %57, label %228, label %58, !prof !111

58:                                               ; preds = %54
  %59 = load i32, ptr %41, align 8
  %60 = and i32 %59, 262144
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %228, !prof !112

62:                                               ; preds = %58
  %63 = and i32 %59, 255
  %64 = add nsw i32 %63, -1
  %65 = icmp ult i32 %64, 9
  tail call void @llvm.assume(i1 %65)
  %66 = zext nneg i32 %63 to i64
  %67 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %66
  %68 = load i32, ptr %67, align 4, !tbaa !54
  %69 = zext i32 %68 to i64
  %70 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %69
  %71 = load i64, ptr %70, align 8, !tbaa !83
  %72 = icmp eq i64 %71, 0
  br i1 %72, label %73, label %74, !prof !113

73:                                               ; preds = %62
  tail call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 1622, ptr noundef nonnull @.str.3) #15
  br label %74

74:                                               ; preds = %73, %62
  %75 = getelementptr inbounds i8, ptr %41, i64 %71
  %76 = load ptr, ptr %75, align 8, !tbaa !39
  %77 = getelementptr inbounds %struct.tree_common, ptr %76, i64 0, i32 2
  %78 = load ptr, ptr %77, align 8, !tbaa !50
  %79 = load i32, ptr %41, align 8
  %80 = and i32 %79, 255
  %81 = add nsw i32 %80, -10
  %82 = icmp ult i32 %81, -9
  br i1 %82, label %96, label %83, !prof !113

83:                                               ; preds = %74
  %84 = zext nneg i32 %80 to i64
  %85 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %84
  %86 = load i32, ptr %85, align 4, !tbaa !54
  %87 = zext i32 %86 to i64
  %88 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %87
  %89 = load i64, ptr %88, align 8, !tbaa !83
  %90 = icmp eq i64 %89, 0
  br i1 %90, label %91, label %92, !prof !113

91:                                               ; preds = %83
  tail call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 1622, ptr noundef nonnull @.str.3) #15
  br label %92

92:                                               ; preds = %91, %83
  %93 = getelementptr inbounds i8, ptr %41, i64 %89
  %94 = getelementptr inbounds ptr, ptr %93, i64 1
  %95 = load ptr, ptr %94, align 8, !tbaa !39
  br label %96

96:                                               ; preds = %92, %74
  %97 = phi ptr [ %95, %92 ], [ null, %74 ]
  %98 = load i64, ptr %97, align 8
  %99 = and i64 %98, 65535
  %100 = icmp eq i64 %99, 121
  br i1 %100, label %101, label %104, !prof !112

101:                                              ; preds = %96
  %102 = getelementptr inbounds %struct.tree_exp, ptr %97, i64 0, i32 3
  %103 = load ptr, ptr %102, align 8, !tbaa !50
  br label %104

104:                                              ; preds = %96, %101
  %105 = phi ptr [ %103, %101 ], [ null, %96 ]
  %106 = tail call i32 @aggregate_value_p(ptr noundef %78, ptr noundef %105) #15
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %228, label %108, !prof !112

108:                                              ; preds = %104
  %109 = load i32, ptr %41, align 8
  %110 = and i32 %109, 255
  %111 = add nsw i32 %110, -10
  %112 = icmp ult i32 %111, -9
  br i1 %112, label %127, label %113

113:                                              ; preds = %108
  %114 = zext nneg i32 %110 to i64
  %115 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %114
  %116 = load i32, ptr %115, align 4, !tbaa !54
  %117 = zext i32 %116 to i64
  %118 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %117
  %119 = load i64, ptr %118, align 8, !tbaa !83
  %120 = icmp eq i64 %119, 0
  br i1 %120, label %121, label %122

121:                                              ; preds = %113
  tail call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 1622, ptr noundef nonnull @.str.3) #15
  br label %122

122:                                              ; preds = %121, %113
  %123 = getelementptr inbounds i8, ptr %41, i64 %119
  br label %124

124:                                              ; preds = %131, %122
  %125 = phi ptr [ %123, %122 ], [ %132, %131 ]
  %126 = load ptr, ptr %125, align 8, !tbaa !50
  br label %127

127:                                              ; preds = %124, %108
  %128 = phi ptr [ null, %108 ], [ %126, %124 ]
  %129 = load i64, ptr %128, align 8
  %130 = trunc i64 %129 to i16
  switch i16 %130, label %221 [
    i16 42, label %131
    i16 41, label %131
    i16 45, label %131
    i16 46, label %131
    i16 118, label %131
    i16 43, label %131
    i16 44, label %131
    i16 32, label %138
    i16 34, label %138
    i16 36, label %138
    i16 141, label %133
  ]

131:                                              ; preds = %127, %127, %127, %127, %127, %127, %127
  %132 = getelementptr inbounds %struct.tree_exp, ptr %128, i64 0, i32 3
  br label %124, !llvm.loop !114

133:                                              ; preds = %127
  %134 = getelementptr inbounds %struct.tree_ssa_name, ptr %128, i64 0, i32 1
  %135 = load ptr, ptr %134, align 8, !tbaa !50
  %136 = load i64, ptr %135, align 8
  %137 = trunc i64 %136 to i16
  switch i16 %137, label %221 [
    i16 32, label %138
    i16 34, label %138
    i16 36, label %138
  ]

138:                                              ; preds = %127, %127, %127, %133, %133, %133
  %139 = and i64 %129, 65535
  %140 = icmp eq i64 %139, 141
  br i1 %140, label %141, label %144

141:                                              ; preds = %138
  %142 = getelementptr inbounds %struct.tree_ssa_name, ptr %128, i64 0, i32 1
  %143 = load ptr, ptr %142, align 8, !tbaa !50
  br label %144

144:                                              ; preds = %141, %138
  %145 = phi ptr [ %143, %141 ], [ %128, %138 ]
  %146 = load i64, ptr %145, align 8
  %147 = and i64 %146, 67108864
  %148 = icmp eq i64 %147, 0
  br i1 %148, label %149, label %221

149:                                              ; preds = %144
  %150 = getelementptr inbounds %struct.tree_decl_common, ptr %145, i64 0, i32 2
  %151 = load i64, ptr %150, align 8
  %152 = and i64 %151, 33554432
  %153 = icmp eq i64 %152, 0
  br i1 %153, label %154, label %221

154:                                              ; preds = %149
  %155 = and i64 %146, 65535
  %156 = icmp eq i64 %155, 33
  br i1 %156, label %180, label %157

157:                                              ; preds = %154
  %158 = and i64 %146, 135266304
  %159 = icmp eq i64 %158, 135266304
  br i1 %159, label %160, label %170

160:                                              ; preds = %157
  %161 = getelementptr inbounds %struct.tree_common, ptr %145, i64 0, i32 2
  %162 = load ptr, ptr %161, align 8, !tbaa !50
  %163 = getelementptr inbounds %struct.tree_type, ptr %162, i64 0, i32 6
  %164 = load i32, ptr %163, align 4
  %165 = and i32 %164, 2048
  %166 = icmp eq i32 %165, 0
  %167 = and i64 %146, 134479872
  %168 = icmp eq i64 %167, 0
  %169 = or i1 %166, %168
  br i1 %169, label %180, label %173

170:                                              ; preds = %157
  %171 = and i64 %146, 134479872
  %172 = icmp eq i64 %171, 0
  br i1 %172, label %180, label %173

173:                                              ; preds = %160, %170
  %174 = load ptr, ptr @cfun, align 8, !tbaa !39
  %175 = getelementptr inbounds %struct.function, ptr %174, i64 0, i32 3
  %176 = load ptr, ptr %175, align 8, !tbaa !115
  %177 = getelementptr inbounds %struct.gimple_df, ptr %176, i64 0, i32 4
  %178 = tail call zeroext i8 @pt_solution_includes(ptr noundef nonnull %177, ptr noundef nonnull %145) #15
  %179 = icmp eq i8 %178, 0
  br i1 %179, label %180, label %221

180:                                              ; preds = %170, %173, %160, %154
  %181 = load i64, ptr %145, align 8
  %182 = and i64 %181, 65535
  %183 = icmp eq i64 %182, 33
  br i1 %183, label %221, label %184

184:                                              ; preds = %180
  %185 = and i64 %181, 201326592
  %186 = icmp eq i64 %185, 0
  br i1 %186, label %187, label %194

187:                                              ; preds = %184
  %188 = load i64, ptr %150, align 8
  %189 = and i64 %188, 33554432
  %190 = icmp eq i64 %189, 0
  %191 = and i64 %181, 1048576
  %192 = icmp eq i64 %191, 0
  %193 = or i1 %192, %190
  br i1 %193, label %204, label %197

194:                                              ; preds = %184
  %195 = and i64 %181, 1048576
  %196 = icmp eq i64 %195, 0
  br i1 %196, label %204, label %197

197:                                              ; preds = %187, %194
  %198 = getelementptr inbounds %struct.tree_common, ptr %145, i64 0, i32 2
  %199 = load ptr, ptr %198, align 8, !tbaa !50
  %200 = getelementptr inbounds %struct.tree_type, ptr %199, i64 0, i32 6
  %201 = load i32, ptr %200, align 4
  %202 = and i32 %201, 2048
  %203 = icmp eq i32 %202, 0
  br i1 %203, label %221, label %204

204:                                              ; preds = %197, %194, %187
  %205 = and i64 %181, 134217728
  %206 = icmp eq i64 %205, 0
  br i1 %206, label %207, label %213

207:                                              ; preds = %204
  %208 = load i64, ptr %150, align 8
  %209 = and i64 %208, 33554432
  %210 = and i64 %181, 262144
  %211 = or disjoint i64 %209, %210
  %212 = icmp eq i64 %211, 0
  br i1 %212, label %221, label %213

213:                                              ; preds = %207, %204
  %214 = load ptr, ptr @cfun, align 8, !tbaa !39
  %215 = getelementptr inbounds %struct.function, ptr %214, i64 0, i32 3
  %216 = load ptr, ptr %215, align 8, !tbaa !115
  %217 = getelementptr inbounds %struct.gimple_df, ptr %216, i64 0, i32 5
  %218 = tail call zeroext i8 @pt_solution_includes(ptr noundef nonnull %217, ptr noundef nonnull %145) #15
  %219 = icmp eq i8 %218, 0
  %220 = zext i1 %219 to i8
  br label %221

221:                                              ; preds = %127, %207, %133, %144, %149, %173, %180, %197, %213
  %222 = phi i8 [ 0, %173 ], [ %220, %213 ], [ 0, %144 ], [ 0, %149 ], [ 1, %180 ], [ 1, %197 ], [ 0, %133 ], [ 1, %207 ], [ 0, %127 ]
  %223 = icmp eq i8 %222, 0
  %224 = load i32, ptr %41, align 8
  %225 = and i32 %224, -262145
  %226 = select i1 %223, i32 0, i32 262144
  %227 = or disjoint i32 %225, %226
  store i32 %227, ptr %41, align 8
  br label %228

228:                                              ; preds = %221, %104, %58, %54, %39
  %229 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %40, i64 0, i32 2
  %230 = load ptr, ptr %229, align 8, !tbaa !86
  %231 = icmp eq ptr %230, null
  br i1 %231, label %10, label %39, !prof !116, !llvm.loop !117

232:                                              ; preds = %10, %0
  ret i32 0
}

declare i32 @aggregate_value_p(ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @is_gimple_reg_type(ptr noundef) local_unnamed_addr #3

declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @gimple_get_lhs(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @gimple_assign_copy_p(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @useless_type_conversion_p(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @get_base_address(ptr noundef) local_unnamed_addr #3

declare void @print_generic_expr(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @unlink_stmt_vdef(ptr noundef) local_unnamed_addr #3

declare void @gsi_remove(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #11

declare ptr @walk_gimple_op(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal noalias noundef ptr @finalize_nrv_r(ptr nocapture noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef readonly %2) #12 !prof !38 {
  %4 = getelementptr inbounds %struct.walk_stmt_info, ptr %2, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !95
  %6 = load ptr, ptr %0, align 8, !tbaa !39
  %7 = load i64, ptr %6, align 8
  %8 = and i64 %7, 65535
  %9 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %8
  %10 = load i32, ptr %9, align 4, !tbaa !54
  %11 = icmp eq i32 %10, 2
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  store i32 0, ptr %1, align 4, !tbaa !54
  br label %20

13:                                               ; preds = %3
  %14 = load ptr, ptr %5, align 8, !tbaa !88
  %15 = icmp eq ptr %6, %14
  br i1 %15, label %16, label %20

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.nrv_data, ptr %5, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !90
  store ptr %18, ptr %0, align 8, !tbaa !39
  %19 = getelementptr inbounds %struct.nrv_data, ptr %5, i64 0, i32 2
  store i32 1, ptr %19, align 8, !tbaa !97
  br label %20

20:                                               ; preds = %13, %16, %12
  ret ptr null
}

declare void @gimple_set_modified(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

declare void @update_stmt_operands(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @pt_solution_includes(ptr noundef, ptr noundef) local_unnamed_addr #3

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
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #12 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree nounwind }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #15 = { nounwind }

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
!35 = !{ptr @tree_nrv, ptr @aggregate_value_p, i64 38}
!36 = !{ptr @execute_return_slot_opt, ptr @aggregate_value_p, i64 66856}
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
!59 = !{!"tree-nrv.c;gate_pass_return_slot"}
!60 = !{!"tree-nrv.c;tree_nrv"}
!61 = !{!"branch_weights", i32 38, i32 0}
!62 = !{!63, !40, i64 8}
!63 = !{!"function", !40, i64 0, !40, i64 8, !40, i64 16, !40, i64 24, !40, i64 32, !40, i64 40, !40, i64 48, !40, i64 56, !40, i64 64, !40, i64 72, !40, i64 80, !40, i64 88, !40, i64 96, !45, i64 104, !45, i64 108, !45, i64 112, !45, i64 116, !45, i64 120, !45, i64 124, !40, i64 128, !45, i64 136, !45, i64 137, !45, i64 138, !45, i64 138, !45, i64 138, !45, i64 138, !45, i64 138, !45, i64 138, !45, i64 138, !45, i64 139, !45, i64 139, !45, i64 139, !45, i64 139, !45, i64 139, !45, i64 139, !45, i64 139}
!64 = !{!65, !40, i64 0}
!65 = !{!"control_flow_graph", !40, i64 0, !40, i64 8, !40, i64 16, !45, i64 24, !45, i64 28, !45, i64 32, !40, i64 40, !45, i64 48, !41, i64 52, !41, i64 60, !45, i64 68, !45, i64 72}
!66 = !{!67, !40, i64 56}
!67 = !{!"basic_block_def", !40, i64 0, !40, i64 8, !40, i64 16, !40, i64 24, !41, i64 32, !40, i64 48, !40, i64 56, !41, i64 64, !46, i64 72, !45, i64 80, !45, i64 84, !45, i64 88, !45, i64 92, !45, i64 96}
!68 = !{!65, !40, i64 8}
!69 = distinct !{!69, !56, !57}
!70 = !{!67, !45, i64 96}
!71 = !{!72}
!72 = distinct !{!72, !73, !"gsi_start_bb: argument 0"}
!73 = distinct !{!73, !"gsi_start_bb"}
!74 = !{!75, !40, i64 0}
!75 = !{!"gimple_bb_info", !40, i64 0, !40, i64 8}
!76 = !{!77, !40, i64 0}
!77 = !{!"gimple_seq_d", !40, i64 0, !40, i64 8, !40, i64 16}
!78 = !{i64 0, i64 8, !39, i64 8, i64 8, !39, i64 16, i64 8, !39}
!79 = !{i64 0, i64 8, !39, i64 8, i64 8, !39}
!80 = !{i64 0, i64 8, !39}
!81 = !{!82, !40, i64 0}
!82 = !{!"gimple_seq_node_d", !40, i64 0, !40, i64 8, !40, i64 16}
!83 = !{!46, !46, i64 0}
!84 = !{!85, !40, i64 0}
!85 = !{!"", !40, i64 0, !40, i64 8, !40, i64 16}
!86 = !{!82, !40, i64 16}
!87 = distinct !{!87, !56, !57}
!88 = !{!89, !40, i64 0}
!89 = !{!"nrv_data", !40, i64 0, !40, i64 8, !45, i64 16}
!90 = !{!89, !40, i64 8}
!91 = distinct !{!91, !56, !57}
!92 = !{!93}
!93 = distinct !{!93, !94, !"gsi_start_bb: argument 0"}
!94 = distinct !{!94, !"gsi_start_bb"}
!95 = !{!96, !40, i64 24}
!96 = !{!"walk_stmt_info", !85, i64 0, !40, i64 24, !40, i64 32, !41, i64 40, !41, i64 41, !41, i64 42, !41, i64 43, !40, i64 48}
!97 = !{!89, !45, i64 16}
!98 = distinct !{!98, !56, !57}
!99 = !{!"tree-nrv.c;execute_return_slot_opt"}
!100 = !{!"branch_weights", i32 1, i32 151}
!101 = !{!"branch_weights", i32 151, i32 586457}
!102 = distinct !{!102, !56, !57}
!103 = !{!104}
!104 = distinct !{!104, !105, !"gsi_start_bb: argument 0"}
!105 = distinct !{!105, !"gsi_start_bb"}
!106 = !{!"branch_weights", i32 146652, i32 0}
!107 = !{!"branch_weights", i32 0, i32 146652}
!108 = !{!"branch_weights", i32 1, i32 146651}
!109 = !{!"branch_weights", i32 69129, i32 286318}
!110 = !{!"branch_weights", i32 0, i32 69129}
!111 = !{!"branch_weights", i32 2273, i32 66856}
!112 = !{!"branch_weights", i32 66856, i32 0}
!113 = !{!"branch_weights", i32 0, i32 66856}
!114 = distinct !{!114, !56, !57}
!115 = !{!63, !40, i64 24}
!116 = !{!"branch_weights", i32 146651, i32 208796}
!117 = distinct !{!117, !56, !57}
