; ModuleID = 'tree-ssa-dse.c'
source_filename = "tree-ssa-dse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gimple_opt_pass = type { %struct.opt_pass }
%struct.opt_pass = type { i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct.bitmap_element_def = type { ptr, ptr, i32, [2 x i64] }
%struct._IO_FILE = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, [1 x i8], ptr, i64, ptr, ptr, ptr, ptr, i64, i32, [20 x i8] }
%struct.dom_walk_data = type { i8, ptr, ptr, ptr, ptr, ptr, i64, ptr }
%struct.dse_global_data = type { ptr }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.control_flow_graph = type { ptr, ptr, ptr, i32, i32, i32, ptr, i32, [2 x i32], [2 x i32], i32, i32 }
%struct.VEC_void_p_base = type { i32, i32, [1 x ptr] }
%struct.immediate_use_iterator_d = type { ptr, ptr, %struct.ssa_use_operand_d, ptr }
%struct.ssa_use_operand_d = type { ptr, ptr, %union.anon, ptr }
%union.anon = type { ptr }
%struct.gimple_stmt_iterator = type { ptr, ptr, ptr }
%struct.basic_block_def = type { ptr, ptr, ptr, ptr, [2 x ptr], ptr, ptr, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%union.basic_block_il_dependent = type { ptr }
%struct.gimple_seq_d = type { ptr, ptr, ptr }
%struct.gimple_statement_base = type { i32, i32, i32, i32, ptr, ptr }
%struct.gimple_statement_with_memory_ops_base = type { %struct.gimple_statement_with_ops_base, ptr, ptr }
%struct.gimple_statement_with_ops_base = type { %struct.gimple_statement_base, ptr, ptr }
%struct.tree_exp = type { %struct.tree_common, i32, ptr, [1 x ptr] }
%struct.tree_common = type { %struct.tree_base, ptr, ptr }
%struct.tree_base = type { i64 }
%struct.gimple_statement_phi = type { %struct.gimple_statement_base, i32, i32, ptr, [1 x %struct.phi_arg_d] }
%struct.phi_arg_d = type { %struct.ssa_use_operand_d, ptr, i32 }
%struct.tree_ssa_name = type { %struct.tree_common, ptr, ptr, i32, ptr, %struct.ssa_use_operand_d }
%struct.gimple_seq_node_d = type { ptr, ptr, ptr }
%struct.use_optype_d = type { ptr, %struct.ssa_use_operand_d }

@stdout = external local_unnamed_addr global ptr, align 8
@stdin = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [4 x i8] c"dse\00", align 1
@pass_dse = dso_local local_unnamed_addr global %struct.gimple_opt_pass { %struct.opt_pass { i32 0, ptr @.str, ptr @gate_dse, ptr @tree_ssa_dse, ptr null, ptr null, i32 0, i32 79, i32 40, i32 0, i32 0, i32 0, i32 7 } }, align 8
@flag_tree_dse = external local_unnamed_addr global i32, align 4
@cfun = external local_unnamed_addr global ptr, align 8
@dump_file = external local_unnamed_addr global ptr, align 8
@dump_flags = external local_unnamed_addr global i32, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"  Deleted dead store '\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"'\0A\00", align 1
@gimple_ops_offset_ = external local_unnamed_addr constant [0 x i64], align 8
@.str.3 = private unnamed_addr constant [11 x i8] c"./gimple.h\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@gss_for_code_ = external local_unnamed_addr constant [0 x i32], align 4
@gimple_rhs_class_table = external local_unnamed_addr constant [0 x i8], align 1
@bitmap_zero_bits = external local_unnamed_addr global %struct.bitmap_element_def, align 8

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @vprintf(ptr noalias nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 !prof !55 {
  %3 = load ptr, ptr @stdout, align 8, !tbaa !56
  %4 = tail call i32 @vfprintf(ptr noundef %3, ptr noundef %0, ptr noundef %1)
  ret i32 %4
}

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @getchar() local_unnamed_addr #0 !prof !55 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !56
  %2 = tail call i32 @getc(ptr noundef %1)
  ret i32 %2
}

; Function Attrs: nofree nounwind
declare noundef i32 @getc(ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !55 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !60
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !65
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !66

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #15
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !60
  %11 = load i8, ptr %3, align 1, !tbaa !67
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

declare i32 @__uflow(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !55 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !60
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !65
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !66

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #15
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !60
  %11 = load i8, ptr %3, align 1, !tbaa !67
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #2 !prof !55 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !56
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !60
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !65
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !66

7:                                                ; preds = %0
  %8 = tail call i32 @__uflow(ptr noundef %1) #15
  br label %13

9:                                                ; preds = %0
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !60
  %11 = load i8, ptr %3, align 1, !tbaa !67
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @putchar(i32 noundef %0) local_unnamed_addr #0 !prof !55 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !56
  %3 = tail call i32 @putc(i32 noundef %0, ptr noundef %2)
  ret i32 %3
}

; Function Attrs: nofree nounwind
declare noundef i32 @putc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !55 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !68
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !69
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !66

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #15
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !68
  store i8 %12, ptr %4, align 1, !tbaa !67
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

declare i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !55 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !68
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !69
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !66

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #15
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !68
  store i8 %12, ptr %4, align 1, !tbaa !67
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 noundef %0) local_unnamed_addr #2 !prof !55 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !56
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !68
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !69
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !66

8:                                                ; preds = %1
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %2, i32 noundef %9) #15
  br label %15

11:                                               ; preds = %1
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !68
  store i8 %12, ptr %4, align 1, !tbaa !67
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i64 @getline(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 !prof !55 {
  %4 = tail call i64 @__getdelim(ptr noundef %0, ptr noundef %1, i32 noundef 10, ptr noundef %2) #15
  ret i64 %4
}

declare i64 @__getdelim(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @feof_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !55 {
  %2 = load i32, ptr %0, align 8, !tbaa !70
  %3 = lshr i32 %2, 4
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @ferror_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !55 {
  %2 = load i32, ptr %0, align 8, !tbaa !70
  %3 = lshr i32 %2, 5
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @tolower(i32 noundef %0) local_unnamed_addr #5 !prof !55 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_tolower_loc() #15
  %6 = load ptr, ptr %5, align 8, !tbaa !56
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !71
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_tolower_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @toupper(i32 noundef %0) local_unnamed_addr #5 !prof !55 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_toupper_loc() #15
  %6 = load ptr, ptr %5, align 8, !tbaa !56
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !71
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_toupper_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i32 @atoi(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !55 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  %3 = trunc i64 %2 to i32
  ret i32 %3
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atol(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !55 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atoll(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !55 {
  %2 = tail call i64 @strtoll(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtoll(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local noundef ptr @bsearch(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #2 !prof !55 {
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
  br i1 %23, label %7, label %24, !llvm.loop !72

24:                                               ; preds = %16, %20, %5
  %25 = phi ptr [ null, %5 ], [ %13, %16 ], [ null, %20 ]
  ret ptr %25
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local double @atof(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !55 {
  %2 = tail call double @strtod(ptr nocapture noundef %0, ptr noundef null)
  ret double %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal zeroext i8 @gate_dse() #9 !prof !75 !PGOFuncName !76 {
  %1 = load i32, ptr @flag_tree_dse, align 4, !tbaa !71
  %2 = icmp ne i32 %1, 0
  %3 = zext i1 %2 to i8
  ret i8 %3
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @tree_ssa_dse() #10 !prof !75 !PGOFuncName !77 {
  %1 = alloca %struct.dom_walk_data, align 8
  %2 = alloca %struct.dse_global_data, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %1) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #15
  tail call void @renumber_gimple_stmt_uids() #15
  tail call void @calculate_dominance_info(i32 noundef 2) #15
  tail call void @calculate_dominance_info(i32 noundef 1) #15
  %3 = load i8, ptr %1, align 8
  %4 = and i8 %3, -4
  %5 = or disjoint i8 %4, 2
  store i8 %5, ptr %1, align 8
  %6 = getelementptr inbounds %struct.dom_walk_data, ptr %1, i64 0, i32 1
  store ptr @dse_initialize_block_local_data, ptr %6, align 8, !tbaa !78
  %7 = getelementptr inbounds %struct.dom_walk_data, ptr %1, i64 0, i32 2
  store ptr @dse_enter_block, ptr %7, align 8, !tbaa !80
  %8 = getelementptr inbounds %struct.dom_walk_data, ptr %1, i64 0, i32 3
  store ptr @dse_leave_block, ptr %8, align 8, !tbaa !81
  %9 = getelementptr inbounds %struct.dom_walk_data, ptr %1, i64 0, i32 6
  store i64 8, ptr %9, align 8, !tbaa !82
  %10 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #15
  store ptr %10, ptr %2, align 8, !tbaa !83
  %11 = getelementptr inbounds %struct.dom_walk_data, ptr %1, i64 0, i32 4
  store ptr %2, ptr %11, align 8, !tbaa !85
  call void @init_walk_dominator_tree(ptr noundef nonnull %1) #15
  %12 = load ptr, ptr @cfun, align 8, !tbaa !56
  %13 = getelementptr inbounds %struct.function, ptr %12, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !86
  %15 = getelementptr inbounds %struct.control_flow_graph, ptr %14, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !88
  call void @walk_dominator_tree(ptr noundef nonnull %1, ptr noundef %16) #15
  call void @fini_walk_dominator_tree(ptr noundef nonnull %1) #15
  %17 = load ptr, ptr %2, align 8, !tbaa !83
  call void @bitmap_obstack_free(ptr noundef %17) #15
  store ptr null, ptr %2, align 8, !tbaa !83
  call void @free_dominance_info(i32 noundef 2) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #15
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %1) #15
  ret i32 0
}

declare void @renumber_gimple_stmt_uids() local_unnamed_addr #3

declare void @calculate_dominance_info(i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define internal void @dse_initialize_block_local_data(ptr nocapture noundef readonly %0, ptr nocapture readnone %1, i8 noundef zeroext %2) #11 !prof !90 !PGOFuncName !91 {
  %4 = icmp eq i8 %2, 0
  br i1 %4, label %16, label %5, !prof !92

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.dom_walk_data, ptr %0, i64 0, i32 5
  %7 = load ptr, ptr %6, align 8, !tbaa !93
  %8 = load i32, ptr %7, align 8, !tbaa !94
  %9 = add i32 %8, -1
  %10 = zext i32 %9 to i64
  %11 = getelementptr inbounds %struct.VEC_void_p_base, ptr %7, i64 0, i32 2, i64 %10
  %12 = load ptr, ptr %11, align 8, !tbaa !56
  %13 = load ptr, ptr %12, align 8, !tbaa !96
  %14 = icmp eq ptr %13, null
  br i1 %14, label %16, label %15, !prof !98

15:                                               ; preds = %5
  tail call void @bitmap_clear(ptr noundef nonnull %13) #15
  br label %16

16:                                               ; preds = %5, %15, %3
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @dse_enter_block(ptr nocapture noundef readonly %0, ptr noundef %1) #11 !prof !90 !PGOFuncName !99 {
  %3 = alloca %struct.immediate_use_iterator_d, align 8
  %4 = alloca %struct.gimple_stmt_iterator, align 8
  %5 = alloca %struct.gimple_stmt_iterator, align 8
  %6 = getelementptr inbounds %struct.dom_walk_data, ptr %0, i64 0, i32 5
  %7 = load ptr, ptr %6, align 8, !tbaa !93
  %8 = load i32, ptr %7, align 8, !tbaa !94
  %9 = add i32 %8, -1
  %10 = zext i32 %9 to i64
  %11 = getelementptr inbounds %struct.VEC_void_p_base, ptr %7, i64 0, i32 2, i64 %10
  %12 = load ptr, ptr %11, align 8, !tbaa !56
  %13 = getelementptr inbounds %struct.dom_walk_data, ptr %0, i64 0, i32 4
  %14 = load ptr, ptr %13, align 8, !tbaa !85
  %15 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 13
  %16 = load i32, ptr %15, align 8, !tbaa !100
  %17 = and i32 %16, 512
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %25, !prof !102

19:                                               ; preds = %2
  %20 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 7
  %21 = load ptr, ptr %20, align 8, !tbaa !67
  %22 = icmp eq ptr %21, null
  br i1 %22, label %25, label %23, !prof !103

23:                                               ; preds = %19
  %24 = load ptr, ptr %21, align 8, !tbaa !104
  br label %25

25:                                               ; preds = %2, %19, %23
  %26 = phi ptr [ %24, %23 ], [ null, %19 ], [ null, %2 ]
  %27 = icmp eq ptr %26, null
  br i1 %27, label %31, label %28, !prof !103

28:                                               ; preds = %25
  %29 = getelementptr inbounds %struct.gimple_seq_d, ptr %26, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !106, !noalias !108
  br label %31

31:                                               ; preds = %28, %25
  %32 = phi ptr [ %30, %28 ], [ null, %25 ]
  %33 = icmp eq ptr %32, null
  br i1 %33, label %40, label %34, !prof !111

34:                                               ; preds = %31
  %35 = load ptr, ptr %32, align 8, !tbaa !112, !noalias !108
  %36 = icmp eq ptr %35, null
  br i1 %36, label %40, label %37, !prof !114

37:                                               ; preds = %34
  %38 = getelementptr inbounds %struct.gimple_statement_base, ptr %35, i64 0, i32 4
  %39 = load ptr, ptr %38, align 8, !tbaa !67, !noalias !108
  br label %40

40:                                               ; preds = %31, %34, %37
  %41 = phi ptr [ %39, %37 ], [ null, %34 ], [ null, %31 ]
  %42 = icmp eq ptr %32, null
  br i1 %42, label %487, label %43, !prof !115

43:                                               ; preds = %40
  %44 = getelementptr inbounds i8, ptr %4, i64 8
  %45 = getelementptr inbounds i8, ptr %4, i64 16
  br label %46

46:                                               ; preds = %43, %483
  %47 = phi ptr [ %32, %43 ], [ %485, %483 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4)
  store ptr %47, ptr %4, align 8
  store ptr %26, ptr %44, align 8
  store ptr %41, ptr %45, align 8
  %48 = load ptr, ptr %47, align 8, !tbaa !112
  %49 = load i32, ptr %48, align 8
  %50 = and i32 %49, 254
  %51 = add nsw i32 %50, -10
  %52 = icmp ult i32 %51, -4
  br i1 %52, label %56, label %53, !prof !116

53:                                               ; preds = %46
  %54 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %48, i64 0, i32 1
  %55 = load ptr, ptr %54, align 8, !tbaa !67
  br label %56

56:                                               ; preds = %53, %46
  %57 = phi ptr [ %55, %53 ], [ null, %46 ]
  %58 = icmp eq ptr %57, null
  br i1 %58, label %483, label %59, !prof !117

59:                                               ; preds = %56
  %60 = and i32 %49, 255
  %61 = icmp eq i32 %60, 8
  br i1 %61, label %62, label %84, !prof !118

62:                                               ; preds = %59
  %63 = zext nneg i32 %60 to i64
  %64 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %63
  %65 = load i32, ptr %64, align 4, !tbaa !71
  %66 = zext i32 %65 to i64
  %67 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %66
  %68 = load i64, ptr %67, align 8, !tbaa !119
  %69 = icmp eq i64 %68, 0
  br i1 %69, label %70, label %71, !prof !120

70:                                               ; preds = %62
  call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1622, ptr noundef nonnull @.str.4) #15
  br label %71

71:                                               ; preds = %70, %62
  %72 = getelementptr inbounds i8, ptr %48, i64 %68
  %73 = getelementptr inbounds ptr, ptr %72, i64 1
  %74 = load ptr, ptr %73, align 8, !tbaa !56
  %75 = load i64, ptr %74, align 8
  %76 = and i64 %75, 65535
  %77 = icmp eq i64 %76, 121
  br i1 %77, label %78, label %81, !prof !121

78:                                               ; preds = %71
  %79 = getelementptr inbounds %struct.tree_exp, ptr %74, i64 0, i32 3
  %80 = load ptr, ptr %79, align 8, !tbaa !67
  br label %81

81:                                               ; preds = %78, %71
  %82 = phi ptr [ %80, %78 ], [ null, %71 ]
  %83 = icmp eq ptr %82, null
  br i1 %83, label %84, label %483, !prof !120

84:                                               ; preds = %81, %59
  %85 = load i32, ptr %48, align 8
  %86 = and i32 %85, 254
  %87 = add nsw i32 %86, -10
  %88 = icmp ult i32 %87, -4
  %89 = and i32 %85, 16384
  %90 = icmp eq i32 %89, 0
  %91 = or i1 %90, %88
  %92 = and i32 %85, 255
  %93 = icmp eq i32 %92, 6
  %94 = and i1 %93, %91
  br i1 %94, label %95, label %483, !prof !122

95:                                               ; preds = %84
  %96 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %3, i64 0, i32 1
  %97 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %3, i64 0, i32 2
  %98 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %3, i64 0, i32 2, i32 1
  %99 = load ptr, ptr %14, align 8, !tbaa !83
  %100 = getelementptr inbounds %struct.gimple_statement_base, ptr %48, i64 0, i32 1
  %101 = load i32, ptr %100, align 4, !tbaa !67
  %102 = load ptr, ptr %12, align 8, !tbaa !56
  %103 = icmp eq ptr %102, null
  br i1 %103, label %104, label %106, !prof !123

104:                                              ; preds = %95
  %105 = call ptr @bitmap_gc_alloc_stat() #15
  store ptr %105, ptr %12, align 8, !tbaa !56
  br label %106

106:                                              ; preds = %95, %104
  %107 = load ptr, ptr %12, align 8, !tbaa !56
  %108 = call zeroext i8 @bitmap_set_bit(ptr noundef %107, i32 noundef %101) #15
  %109 = call zeroext i8 @bitmap_set_bit(ptr noundef %99, i32 noundef %101) #15
  %110 = getelementptr inbounds %struct.gimple_statement_base, ptr %48, i64 0, i32 4
  br label %111

111:                                              ; preds = %272, %106
  %112 = phi ptr [ %48, %106 ], [ %252, %272 ]
  %113 = phi i32 [ 0, %106 ], [ %253, %272 ]
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #15
  %114 = add i32 %113, 1
  %115 = icmp ugt i32 %114, 256
  br i1 %115, label %251, label %116, !prof !124

116:                                              ; preds = %111
  %117 = load i32, ptr %112, align 8
  %118 = and i32 %117, 255
  %119 = icmp eq i32 %118, 16
  br i1 %119, label %120, label %122, !prof !125

120:                                              ; preds = %116
  %121 = getelementptr inbounds %struct.gimple_statement_phi, ptr %112, i64 0, i32 3
  br label %127

122:                                              ; preds = %116
  %123 = and i32 %117, 254
  %124 = add nsw i32 %123, -6
  %125 = icmp ult i32 %124, 4
  call void @llvm.assume(i1 %125)
  %126 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %112, i64 0, i32 1
  br label %127

127:                                              ; preds = %122, %120
  %128 = phi ptr [ %121, %120 ], [ %126, %122 ]
  %129 = load ptr, ptr %128, align 8, !tbaa !67
  %130 = getelementptr inbounds %struct.tree_ssa_name, ptr %129, i64 0, i32 5
  store ptr %130, ptr %96, align 8, !tbaa !126
  %131 = getelementptr inbounds %struct.tree_ssa_name, ptr %129, i64 0, i32 5, i32 1
  %132 = load ptr, ptr %131, align 8, !tbaa !129
  store ptr %132, ptr %3, align 8, !tbaa !130
  %133 = icmp eq ptr %132, %130
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %97, i8 0, i64 40, i1 false)
  br i1 %133, label %138, label %134, !prof !124

134:                                              ; preds = %127
  call fastcc void @link_use_stmts_after(ptr noundef %132, ptr noundef nonnull %3)
  %135 = load ptr, ptr %3, align 8, !tbaa !130
  %136 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %135, i64 0, i32 2
  %137 = load ptr, ptr %136, align 8, !tbaa !67
  br label %138

138:                                              ; preds = %134, %127
  %139 = phi ptr [ %137, %134 ], [ null, %127 ]
  %140 = load ptr, ptr %3, align 8, !tbaa !130
  %141 = load ptr, ptr %96, align 8, !tbaa !126
  %142 = icmp eq ptr %140, %141
  br i1 %142, label %240, label %143, !prof !131

143:                                              ; preds = %138, %230
  %144 = phi i1 [ %234, %230 ], [ %142, %138 ]
  %145 = phi ptr [ %231, %230 ], [ %139, %138 ]
  %146 = phi i32 [ %148, %230 ], [ %114, %138 ]
  %147 = phi ptr [ %216, %230 ], [ null, %138 ]
  %148 = add i32 %146, 1
  %149 = icmp eq ptr %145, %48
  br i1 %149, label %150, label %153, !prof !132

150:                                              ; preds = %143
  %151 = load ptr, ptr %97, align 8, !tbaa !133
  %152 = icmp eq ptr %151, null
  br i1 %152, label %240, label %235

153:                                              ; preds = %143
  %154 = load i32, ptr %145, align 8
  %155 = and i32 %154, 255
  %156 = icmp eq i32 %155, 16
  br i1 %156, label %157, label %175, !prof !134

157:                                              ; preds = %153
  %158 = icmp eq ptr %147, null
  br i1 %158, label %159, label %172, !prof !135

159:                                              ; preds = %157
  %160 = load ptr, ptr %110, align 8, !tbaa !67
  %161 = getelementptr inbounds %struct.gimple_statement_base, ptr %145, i64 0, i32 4
  %162 = load ptr, ptr %161, align 8, !tbaa !67
  %163 = icmp eq ptr %160, %162
  br i1 %163, label %172, label %164, !prof !136

164:                                              ; preds = %159
  %165 = call zeroext i8 @dominated_by_p(i32 noundef 1, ptr noundef %160, ptr noundef %162) #15
  %166 = icmp eq i8 %165, 0
  br i1 %166, label %167, label %172, !prof !135

167:                                              ; preds = %164
  %168 = load ptr, ptr %110, align 8, !tbaa !67
  %169 = load ptr, ptr %161, align 8, !tbaa !67
  %170 = call zeroext i8 @dominated_by_p(i32 noundef 2, ptr noundef %168, ptr noundef %169) #15
  %171 = icmp eq i8 %170, 0
  br i1 %171, label %172, label %215, !prof !137

172:                                              ; preds = %167, %164, %159, %157
  %173 = load ptr, ptr %97, align 8, !tbaa !133
  %174 = icmp eq ptr %173, null
  br i1 %174, label %240, label %235, !prof !138

175:                                              ; preds = %153
  %176 = load i32, ptr %48, align 8
  %177 = and i32 %176, 255
  %178 = add nsw i32 %177, -10
  %179 = icmp ult i32 %178, -9
  br i1 %179, label %192, label %180, !prof !139

180:                                              ; preds = %175
  %181 = zext nneg i32 %177 to i64
  %182 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %181
  %183 = load i32, ptr %182, align 4, !tbaa !71
  %184 = zext i32 %183 to i64
  %185 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %184
  %186 = load i64, ptr %185, align 8, !tbaa !119
  %187 = icmp eq i64 %186, 0
  br i1 %187, label %188, label %189, !prof !139

188:                                              ; preds = %180
  call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1622, ptr noundef nonnull @.str.4) #15
  br label %189

189:                                              ; preds = %188, %180
  %190 = getelementptr inbounds i8, ptr %48, i64 %186
  %191 = load ptr, ptr %190, align 8, !tbaa !56
  br label %192

192:                                              ; preds = %189, %175
  %193 = phi ptr [ %191, %189 ], [ null, %175 ]
  %194 = call zeroext i8 @ref_maybe_used_by_stmt_p(ptr noundef nonnull %145, ptr noundef %193) #15
  %195 = icmp eq i8 %194, 0
  br i1 %195, label %199, label %196, !prof !140

196:                                              ; preds = %192
  %197 = load ptr, ptr %97, align 8, !tbaa !133
  %198 = icmp eq ptr %197, null
  br i1 %198, label %240, label %235, !prof !141

199:                                              ; preds = %192
  %200 = load i32, ptr %145, align 8
  %201 = and i32 %200, 254
  %202 = add nsw i32 %201, -10
  %203 = icmp ult i32 %202, -4
  br i1 %203, label %207, label %204, !prof !142

204:                                              ; preds = %199
  %205 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %145, i64 0, i32 1
  %206 = load ptr, ptr %205, align 8, !tbaa !67
  br label %207

207:                                              ; preds = %204, %199
  %208 = phi ptr [ %206, %204 ], [ null, %199 ]
  %209 = icmp eq ptr %208, null
  br i1 %209, label %215, label %210, !prof !143

210:                                              ; preds = %207
  %211 = icmp eq ptr %147, null
  br i1 %211, label %215, label %212

212:                                              ; preds = %210
  %213 = load ptr, ptr %97, align 8, !tbaa !133
  %214 = icmp eq ptr %213, null
  br i1 %214, label %240, label %235

215:                                              ; preds = %210, %207, %167
  %216 = phi ptr [ %147, %207 ], [ %145, %167 ], [ %145, %210 ]
  %217 = load ptr, ptr %98, align 8, !tbaa !129
  store ptr %217, ptr %3, align 8, !tbaa !130
  %218 = load ptr, ptr %96, align 8, !tbaa !126
  %219 = icmp eq ptr %217, %218
  br i1 %219, label %220, label %226, !prof !144

220:                                              ; preds = %215
  %221 = load ptr, ptr %97, align 8, !tbaa !133
  %222 = icmp eq ptr %221, null
  br i1 %222, label %230, label %223, !prof !145

223:                                              ; preds = %220
  %224 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %221, i64 0, i32 1
  store ptr %217, ptr %224, align 8, !tbaa !129
  %225 = load ptr, ptr %98, align 8, !tbaa !129
  store ptr %221, ptr %225, align 8, !tbaa !133
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %97, i8 0, i64 16, i1 false)
  br label %230

226:                                              ; preds = %215
  call fastcc void @link_use_stmts_after(ptr noundef %217, ptr noundef nonnull %3)
  %227 = load ptr, ptr %3, align 8, !tbaa !130
  %228 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %227, i64 0, i32 2
  %229 = load ptr, ptr %228, align 8, !tbaa !67
  br label %230

230:                                              ; preds = %226, %223, %220
  %231 = phi ptr [ %229, %226 ], [ null, %223 ], [ null, %220 ]
  %232 = load ptr, ptr %3, align 8, !tbaa !130
  %233 = load ptr, ptr %96, align 8, !tbaa !126
  %234 = icmp eq ptr %232, %233
  br i1 %234, label %240, label %143, !prof !146, !llvm.loop !147

235:                                              ; preds = %212, %196, %172, %150
  %236 = phi ptr [ %151, %150 ], [ %173, %172 ], [ %197, %196 ], [ %213, %212 ]
  %237 = load ptr, ptr %98, align 8, !tbaa !129
  %238 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %236, i64 0, i32 1
  store ptr %237, ptr %238, align 8, !tbaa !129
  %239 = load ptr, ptr %98, align 8, !tbaa !129
  store ptr %236, ptr %239, align 8, !tbaa !133
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %97, i8 0, i64 16, i1 false)
  br label %240

240:                                              ; preds = %230, %235, %138, %212, %196, %172, %150
  %241 = phi ptr [ %147, %150 ], [ %147, %172 ], [ %147, %196 ], [ %147, %212 ], [ null, %138 ], [ %147, %235 ], [ %216, %230 ]
  %242 = phi i1 [ %144, %150 ], [ %144, %172 ], [ %144, %196 ], [ %144, %212 ], [ %142, %138 ], [ %144, %235 ], [ %234, %230 ]
  %243 = phi i32 [ %148, %150 ], [ %148, %172 ], [ %148, %196 ], [ %148, %212 ], [ %114, %138 ], [ %148, %235 ], [ %148, %230 ]
  br i1 %242, label %244, label %251, !prof !125

244:                                              ; preds = %240
  %245 = icmp eq ptr %241, null
  br i1 %245, label %246, label %251, !prof !145

246:                                              ; preds = %244
  %247 = call zeroext i8 @is_hidden_global_store(ptr noundef nonnull %48) #15
  %248 = icmp eq i8 %247, 0
  %249 = select i1 %248, ptr %48, ptr null
  %250 = select i1 %248, i32 2, i32 1
  br label %251

251:                                              ; preds = %246, %244, %240, %111
  %252 = phi ptr [ %112, %111 ], [ %241, %240 ], [ %249, %246 ], [ %241, %244 ]
  %253 = phi i32 [ %114, %111 ], [ %243, %240 ], [ %243, %246 ], [ %243, %244 ]
  %254 = phi i32 [ 1, %111 ], [ 1, %240 ], [ %250, %246 ], [ 0, %244 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #15
  switch i32 %254, label %282 [
    i32 0, label %255
    i32 2, label %276
  ], !prof !148

255:                                              ; preds = %251
  %256 = load i32, ptr %48, align 8
  %257 = and i32 %256, 255
  %258 = add nsw i32 %257, -10
  %259 = icmp ult i32 %258, -9
  br i1 %259, label %272, label %260, !prof !145

260:                                              ; preds = %255
  %261 = zext nneg i32 %257 to i64
  %262 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %261
  %263 = load i32, ptr %262, align 4, !tbaa !71
  %264 = zext i32 %263 to i64
  %265 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %264
  %266 = load i64, ptr %265, align 8, !tbaa !119
  %267 = icmp eq i64 %266, 0
  br i1 %267, label %268, label %269, !prof !145

268:                                              ; preds = %260
  call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1622, ptr noundef nonnull @.str.4) #15
  br label %269

269:                                              ; preds = %268, %260
  %270 = getelementptr inbounds i8, ptr %48, i64 %266
  %271 = load ptr, ptr %270, align 8, !tbaa !56
  br label %272

272:                                              ; preds = %269, %255
  %273 = phi ptr [ %271, %269 ], [ null, %255 ]
  %274 = call zeroext i8 @stmt_may_clobber_ref_p(ptr noundef %252, ptr noundef %273) #15
  %275 = icmp eq i8 %274, 0
  br i1 %275, label %111, label %276, !prof !122, !llvm.loop !149

276:                                              ; preds = %272, %251
  %277 = load i32, ptr %252, align 8
  %278 = and i32 %277, 255
  %279 = icmp eq i32 %278, 6
  %280 = select i1 %279, ptr %252, ptr null
  %281 = zext i1 %279 to i8
  br label %282

282:                                              ; preds = %251, %276
  %283 = phi ptr [ %280, %276 ], [ null, %251 ]
  %284 = phi i8 [ %281, %276 ], [ 0, %251 ]
  %285 = icmp eq i8 %284, 0
  br i1 %285, label %483, label %286, !prof !122

286:                                              ; preds = %282
  %287 = load ptr, ptr %14, align 8, !tbaa !83
  %288 = load i32, ptr %283, align 8
  %289 = and i32 %288, 255
  %290 = icmp eq i32 %289, 16
  br i1 %290, label %291, label %300

291:                                              ; preds = %286
  %292 = getelementptr inbounds %struct.gimple_statement_phi, ptr %283, i64 0, i32 3
  %293 = load ptr, ptr %292, align 8, !tbaa !67
  %294 = getelementptr inbounds %struct.tree_ssa_name, ptr %293, i64 0, i32 3
  %295 = load i32, ptr %294, align 8, !tbaa !67
  %296 = load ptr, ptr @cfun, align 8, !tbaa !56
  %297 = getelementptr inbounds %struct.function, ptr %296, i64 0, i32 13
  %298 = load i32, ptr %297, align 8, !tbaa !150
  %299 = add i32 %298, %295
  br label %303

300:                                              ; preds = %286
  %301 = getelementptr inbounds %struct.gimple_statement_base, ptr %283, i64 0, i32 1
  %302 = load i32, ptr %301, align 4, !tbaa !67
  br label %303

303:                                              ; preds = %300, %291
  %304 = phi i32 [ %299, %291 ], [ %302, %300 ]
  %305 = call i32 @bitmap_bit_p(ptr noundef %287, i32 noundef %304) #15
  %306 = icmp eq i32 %305, 0
  br i1 %306, label %483, label %307

307:                                              ; preds = %303
  %308 = load i32, ptr %48, align 8
  %309 = and i32 %308, 255
  %310 = add nsw i32 %309, -10
  %311 = icmp ult i32 %310, -9
  br i1 %311, label %324, label %312

312:                                              ; preds = %307
  %313 = zext nneg i32 %309 to i64
  %314 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %313
  %315 = load i32, ptr %314, align 4, !tbaa !71
  %316 = zext i32 %315 to i64
  %317 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %316
  %318 = load i64, ptr %317, align 8, !tbaa !119
  %319 = icmp eq i64 %318, 0
  br i1 %319, label %320, label %321

320:                                              ; preds = %312
  call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1622, ptr noundef nonnull @.str.4) #15
  br label %321

321:                                              ; preds = %320, %312
  %322 = getelementptr inbounds i8, ptr %48, i64 %318
  %323 = load ptr, ptr %322, align 8, !tbaa !56
  br label %324

324:                                              ; preds = %321, %307
  %325 = phi ptr [ %323, %321 ], [ null, %307 ]
  %326 = load i32, ptr %283, align 8
  %327 = and i32 %326, 255
  %328 = add nsw i32 %327, -10
  %329 = icmp ult i32 %328, -9
  br i1 %329, label %342, label %330

330:                                              ; preds = %324
  %331 = zext nneg i32 %327 to i64
  %332 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %331
  %333 = load i32, ptr %332, align 4, !tbaa !71
  %334 = zext i32 %333 to i64
  %335 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %334
  %336 = load i64, ptr %335, align 8, !tbaa !119
  %337 = icmp eq i64 %336, 0
  br i1 %337, label %338, label %339

338:                                              ; preds = %330
  call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1622, ptr noundef nonnull @.str.4) #15
  br label %339

339:                                              ; preds = %338, %330
  %340 = getelementptr inbounds i8, ptr %283, i64 %336
  %341 = load ptr, ptr %340, align 8, !tbaa !56
  br label %342

342:                                              ; preds = %339, %324
  %343 = phi ptr [ %341, %339 ], [ null, %324 ]
  %344 = call i32 @operand_equal_p(ptr noundef %325, ptr noundef %343, i32 noundef 0) #15
  %345 = icmp eq i32 %344, 0
  br i1 %345, label %483, label %346

346:                                              ; preds = %342
  %347 = icmp eq ptr %48, %283
  br i1 %347, label %467, label %348

348:                                              ; preds = %346
  %349 = load i32, ptr %283, align 8
  %350 = and i32 %349, 255
  %351 = add nsw i32 %350, -10
  %352 = icmp ult i32 %351, -9
  br i1 %352, label %366, label %353

353:                                              ; preds = %348
  %354 = zext nneg i32 %350 to i64
  %355 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %354
  %356 = load i32, ptr %355, align 4, !tbaa !71
  %357 = zext i32 %356 to i64
  %358 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %357
  %359 = load i64, ptr %358, align 8, !tbaa !119
  %360 = icmp eq i64 %359, 0
  br i1 %360, label %361, label %362

361:                                              ; preds = %353
  call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1622, ptr noundef nonnull @.str.4) #15
  br label %362

362:                                              ; preds = %361, %353
  %363 = getelementptr inbounds i8, ptr %283, i64 %359
  %364 = getelementptr inbounds ptr, ptr %363, i64 1
  %365 = load ptr, ptr %364, align 8, !tbaa !56
  br label %366

366:                                              ; preds = %362, %348
  %367 = phi ptr [ %365, %362 ], [ null, %348 ]
  %368 = call zeroext i8 @is_gimple_reg(ptr noundef %367) #15
  %369 = icmp eq i8 %368, 0
  br i1 %369, label %370, label %467

370:                                              ; preds = %366
  %371 = load i32, ptr %283, align 8
  %372 = and i32 %371, 255
  %373 = add nsw i32 %372, -10
  %374 = icmp ult i32 %373, -9
  br i1 %374, label %388, label %375

375:                                              ; preds = %370
  %376 = zext nneg i32 %372 to i64
  %377 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %376
  %378 = load i32, ptr %377, align 4, !tbaa !71
  %379 = zext i32 %378 to i64
  %380 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %379
  %381 = load i64, ptr %380, align 8, !tbaa !119
  %382 = icmp eq i64 %381, 0
  br i1 %382, label %383, label %384

383:                                              ; preds = %375
  call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1622, ptr noundef nonnull @.str.4) #15
  br label %384

384:                                              ; preds = %383, %375
  %385 = getelementptr inbounds i8, ptr %283, i64 %381
  %386 = getelementptr inbounds ptr, ptr %385, i64 1
  %387 = load ptr, ptr %386, align 8, !tbaa !56
  br label %388

388:                                              ; preds = %384, %370
  %389 = phi ptr [ %387, %384 ], [ null, %370 ]
  %390 = call zeroext i8 @is_gimple_min_invariant(ptr noundef %389) #15
  %391 = icmp eq i8 %390, 0
  br i1 %391, label %392, label %467

392:                                              ; preds = %388
  %393 = load i32, ptr %283, align 8
  %394 = trunc i32 %393 to i8
  switch i8 %394, label %397 [
    i8 6, label %395
    i8 1, label %395
    i8 8, label %398
  ]

395:                                              ; preds = %392, %392
  %396 = lshr i32 %393, 16
  br label %398

397:                                              ; preds = %392
  call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1446, ptr noundef nonnull @.str.4) #15
  br label %398

398:                                              ; preds = %397, %395, %392
  %399 = phi i32 [ %396, %395 ], [ 0, %397 ], [ 59, %392 ]
  %400 = zext nneg i32 %399 to i64
  %401 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %400
  %402 = load i8, ptr %401, align 1, !tbaa !67
  %403 = icmp eq i8 %402, 3
  br i1 %403, label %404, label %424

404:                                              ; preds = %398
  %405 = load i32, ptr %283, align 8
  %406 = and i32 %405, 255
  %407 = add nsw i32 %406, -1
  %408 = icmp ult i32 %407, 9
  call void @llvm.assume(i1 %408)
  %409 = zext nneg i32 %406 to i64
  %410 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %409
  %411 = load i32, ptr %410, align 4, !tbaa !71
  %412 = zext i32 %411 to i64
  %413 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %412
  %414 = load i64, ptr %413, align 8, !tbaa !119
  %415 = icmp eq i64 %414, 0
  br i1 %415, label %416, label %417

416:                                              ; preds = %404
  call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1622, ptr noundef nonnull @.str.4) #15
  br label %417

417:                                              ; preds = %416, %404
  %418 = getelementptr inbounds i8, ptr %283, i64 %414
  %419 = getelementptr inbounds ptr, ptr %418, i64 1
  %420 = load ptr, ptr %419, align 8, !tbaa !56
  %421 = load i64, ptr %420, align 8
  %422 = trunc i64 %421 to i32
  %423 = and i32 %422, 65535
  br label %424

424:                                              ; preds = %417, %398
  %425 = phi i32 [ %423, %417 ], [ %399, %398 ]
  %426 = icmp eq i32 %425, 51
  br i1 %426, label %467, label %427

427:                                              ; preds = %424
  %428 = load i32, ptr %283, align 8
  %429 = and i32 %428, 255
  %430 = add nsw i32 %429, -10
  %431 = icmp ult i32 %430, -9
  br i1 %431, label %444, label %432

432:                                              ; preds = %427
  %433 = zext nneg i32 %429 to i64
  %434 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %433
  %435 = load i32, ptr %434, align 4, !tbaa !71
  %436 = zext i32 %435 to i64
  %437 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %436
  %438 = load i64, ptr %437, align 8, !tbaa !119
  %439 = icmp eq i64 %438, 0
  br i1 %439, label %440, label %441

440:                                              ; preds = %432
  call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1622, ptr noundef nonnull @.str.4) #15
  br label %441

441:                                              ; preds = %440, %432
  %442 = getelementptr inbounds i8, ptr %283, i64 %438
  %443 = load ptr, ptr %442, align 8, !tbaa !56
  br label %444

444:                                              ; preds = %441, %427
  %445 = phi ptr [ %443, %441 ], [ null, %427 ]
  %446 = load i32, ptr %283, align 8
  %447 = and i32 %446, 255
  %448 = add nsw i32 %447, -10
  %449 = icmp ult i32 %448, -9
  br i1 %449, label %463, label %450

450:                                              ; preds = %444
  %451 = zext nneg i32 %447 to i64
  %452 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %451
  %453 = load i32, ptr %452, align 4, !tbaa !71
  %454 = zext i32 %453 to i64
  %455 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %454
  %456 = load i64, ptr %455, align 8, !tbaa !119
  %457 = icmp eq i64 %456, 0
  br i1 %457, label %458, label %459

458:                                              ; preds = %450
  call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1622, ptr noundef nonnull @.str.4) #15
  br label %459

459:                                              ; preds = %458, %450
  %460 = getelementptr inbounds i8, ptr %283, i64 %456
  %461 = getelementptr inbounds ptr, ptr %460, i64 1
  %462 = load ptr, ptr %461, align 8, !tbaa !56
  br label %463

463:                                              ; preds = %459, %444
  %464 = phi ptr [ %462, %459 ], [ null, %444 ]
  %465 = call zeroext i8 @refs_may_alias_p(ptr noundef %445, ptr noundef %464) #15
  %466 = icmp eq i8 %465, 0
  br i1 %466, label %467, label %483

467:                                              ; preds = %463, %424, %388, %366, %346
  %468 = load ptr, ptr @dump_file, align 8, !tbaa !56
  %469 = icmp eq ptr %468, null
  br i1 %469, label %482, label %470

470:                                              ; preds = %467
  %471 = load i32, ptr @dump_flags, align 4, !tbaa !71
  %472 = and i32 %471, 8
  %473 = icmp eq i32 %472, 0
  br i1 %473, label %482, label %474

474:                                              ; preds = %470
  %475 = call i64 @fwrite(ptr nonnull @.str.1, i64 22, i64 1, ptr nonnull %468)
  %476 = load ptr, ptr @dump_file, align 8, !tbaa !56
  %477 = load ptr, ptr %4, align 8
  %478 = load ptr, ptr %477, align 8, !tbaa !112
  %479 = load i32, ptr @dump_flags, align 4, !tbaa !71
  call void @print_gimple_stmt(ptr noundef %476, ptr noundef %478, i32 noundef %479, i32 noundef 0) #15
  %480 = load ptr, ptr @dump_file, align 8, !tbaa !56
  %481 = call i64 @fwrite(ptr nonnull @.str.2, i64 2, i64 1, ptr %480)
  br label %482

482:                                              ; preds = %474, %470, %467
  call void @unlink_stmt_vdef(ptr noundef nonnull %48) #15
  call void @gsi_remove(ptr noundef nonnull %4, i8 noundef zeroext 1) #15
  call void @release_defs(ptr noundef nonnull %48) #15
  br label %483

483:                                              ; preds = %56, %81, %84, %282, %303, %342, %463, %482
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4)
  %484 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %47, i64 0, i32 1
  %485 = load ptr, ptr %484, align 8, !tbaa !151
  %486 = icmp eq ptr %485, null
  br i1 %486, label %487, label %46, !prof !152, !llvm.loop !153

487:                                              ; preds = %483, %40
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #15
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %5, ptr noundef %1) #15
  %488 = load ptr, ptr %5, align 8, !tbaa.struct !154
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #15
  %489 = icmp eq ptr %488, null
  br i1 %489, label %527, label %490, !prof !155

490:                                              ; preds = %487, %523
  %491 = phi ptr [ %525, %523 ], [ %488, %487 ]
  %492 = load ptr, ptr %491, align 8, !tbaa !112
  %493 = getelementptr inbounds %struct.gimple_statement_phi, ptr %492, i64 0, i32 3
  %494 = load ptr, ptr %493, align 8, !tbaa !67
  %495 = call zeroext i8 @is_gimple_reg(ptr noundef %494) #15
  %496 = icmp eq i8 %495, 0
  br i1 %496, label %497, label %523, !prof !156

497:                                              ; preds = %490
  %498 = load ptr, ptr %14, align 8, !tbaa !83
  %499 = load i32, ptr %492, align 8
  %500 = and i32 %499, 255
  %501 = icmp eq i32 %500, 16
  br i1 %501, label %502, label %510, !prof !157

502:                                              ; preds = %497
  %503 = load ptr, ptr %493, align 8, !tbaa !67
  %504 = getelementptr inbounds %struct.tree_ssa_name, ptr %503, i64 0, i32 3
  %505 = load i32, ptr %504, align 8, !tbaa !67
  %506 = load ptr, ptr @cfun, align 8, !tbaa !56
  %507 = getelementptr inbounds %struct.function, ptr %506, i64 0, i32 13
  %508 = load i32, ptr %507, align 8, !tbaa !150
  %509 = add i32 %508, %505
  br label %513

510:                                              ; preds = %497
  %511 = getelementptr inbounds %struct.gimple_statement_base, ptr %492, i64 0, i32 1
  %512 = load i32, ptr %511, align 4, !tbaa !67
  br label %513

513:                                              ; preds = %510, %502
  %514 = phi i32 [ %509, %502 ], [ %512, %510 ]
  %515 = load ptr, ptr %12, align 8, !tbaa !56
  %516 = icmp eq ptr %515, null
  br i1 %516, label %517, label %519, !prof !123

517:                                              ; preds = %513
  %518 = call ptr @bitmap_gc_alloc_stat() #15
  store ptr %518, ptr %12, align 8, !tbaa !56
  br label %519

519:                                              ; preds = %513, %517
  %520 = load ptr, ptr %12, align 8, !tbaa !56
  %521 = call zeroext i8 @bitmap_set_bit(ptr noundef %520, i32 noundef %514) #15
  %522 = call zeroext i8 @bitmap_set_bit(ptr noundef %498, i32 noundef %514) #15
  br label %523

523:                                              ; preds = %490, %519
  %524 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %491, i64 0, i32 2
  %525 = load ptr, ptr %524, align 8, !tbaa !158
  %526 = icmp eq ptr %525, null
  br i1 %526, label %527, label %490, !prof !159, !llvm.loop !160

527:                                              ; preds = %523, %487
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @dse_leave_block(ptr nocapture noundef readonly %0, ptr nocapture readnone %1) #11 !prof !90 !PGOFuncName !161 {
  %3 = getelementptr inbounds %struct.dom_walk_data, ptr %0, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !93
  %5 = load i32, ptr %4, align 8, !tbaa !94
  %6 = add i32 %5, -1
  %7 = zext i32 %6 to i64
  %8 = getelementptr inbounds %struct.VEC_void_p_base, ptr %4, i64 0, i32 2, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !56
  %10 = getelementptr inbounds %struct.dom_walk_data, ptr %0, i64 0, i32 4
  %11 = load ptr, ptr %10, align 8, !tbaa !85
  %12 = load ptr, ptr %11, align 8, !tbaa !83
  %13 = load ptr, ptr %9, align 8, !tbaa !96
  %14 = icmp eq ptr %13, null
  br i1 %14, label %92, label %15, !prof !162

15:                                               ; preds = %2
  %16 = load ptr, ptr %13, align 8, !tbaa !163
  %17 = icmp eq ptr %16, null
  %18 = select i1 %17, ptr @bitmap_zero_bits, ptr %16, !prof !165
  %19 = getelementptr inbounds %struct.bitmap_element_def, ptr %18, i64 0, i32 2
  %20 = load i32, ptr %19, align 8, !tbaa !166
  %21 = shl i32 %20, 7
  %22 = getelementptr inbounds %struct.bitmap_element_def, ptr %18, i64 0, i32 3
  %23 = load i64, ptr %22, align 8, !tbaa !119
  %24 = icmp eq i64 %23, 0
  %25 = zext i1 %24 to i32
  %26 = or disjoint i32 %21, %25
  br label %27

27:                                               ; preds = %88, %15
  %28 = phi i64 [ %23, %15 ], [ %90, %88 ]
  %29 = phi i32 [ 0, %15 ], [ %84, %88 ]
  %30 = phi i32 [ %26, %15 ], [ %91, %88 ]
  %31 = phi ptr [ %18, %15 ], [ %86, %88 ]
  %32 = icmp eq i64 %28, 0
  br i1 %32, label %47, label %33, !prof !168

33:                                               ; preds = %61, %27
  %34 = phi i64 [ %28, %27 ], [ %66, %61 ]
  %35 = phi i32 [ %29, %27 ], [ %62, %61 ]
  %36 = phi i32 [ %30, %27 ], [ %63, %61 ]
  %37 = phi ptr [ %31, %27 ], [ %54, %61 ]
  %38 = and i64 %34, 1
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %82, !prof !169

40:                                               ; preds = %33, %40
  %41 = phi i32 [ %44, %40 ], [ %36, %33 ]
  %42 = phi i64 [ %43, %40 ], [ %34, %33 ]
  %43 = lshr exact i64 %42, 1
  %44 = add i32 %41, 1
  %45 = and i64 %42, 2
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %40, label %82, !prof !170, !llvm.loop !171

47:                                               ; preds = %27
  %48 = add i32 %30, 63
  %49 = and i32 %48, -64
  %50 = add i32 %29, 1
  br label %51

51:                                               ; preds = %78, %47
  %52 = phi i64 [ %28, %47 ], [ %73, %78 ]
  %53 = phi i32 [ %49, %47 ], [ %81, %78 ]
  %54 = phi ptr [ %31, %47 ], [ %76, %78 ]
  %55 = phi i32 [ %50, %47 ], [ 0, %78 ]
  %56 = icmp eq i32 %55, 2
  br i1 %56, label %72, label %57, !prof !172

57:                                               ; preds = %51
  %58 = add i32 %53, 128
  %59 = shl i32 %55, 6
  %60 = sub i32 %58, %59
  br label %61

61:                                               ; preds = %57, %68
  %62 = phi i32 [ %70, %68 ], [ %55, %57 ]
  %63 = phi i32 [ %69, %68 ], [ %53, %57 ]
  %64 = zext i32 %62 to i64
  %65 = getelementptr inbounds %struct.bitmap_element_def, ptr %54, i64 0, i32 3, i64 %64
  %66 = load i64, ptr %65, align 8, !tbaa !119
  %67 = icmp eq i64 %66, 0
  br i1 %67, label %68, label %33, !prof !173

68:                                               ; preds = %61
  %69 = add i32 %63, 64
  %70 = add i32 %62, 1
  %71 = icmp eq i32 %70, 2
  br i1 %71, label %72, label %61, !prof !174, !llvm.loop !175

72:                                               ; preds = %68, %51
  %73 = phi i64 [ %52, %51 ], [ %66, %68 ]
  %74 = phi i32 [ %53, %51 ], [ %60, %68 ]
  %75 = phi i32 [ %55, %51 ], [ 2, %68 ]
  %76 = load ptr, ptr %54, align 8, !tbaa !176
  %77 = icmp eq ptr %76, null
  br i1 %77, label %82, label %78, !prof !177

78:                                               ; preds = %72
  %79 = getelementptr inbounds %struct.bitmap_element_def, ptr %76, i64 0, i32 2
  %80 = load i32, ptr %79, align 8, !tbaa !166
  %81 = shl i32 %80, 7
  br label %51, !llvm.loop !178

82:                                               ; preds = %72, %40, %33
  %83 = phi i64 [ %34, %33 ], [ %43, %40 ], [ %73, %72 ]
  %84 = phi i32 [ %35, %33 ], [ %35, %40 ], [ %75, %72 ]
  %85 = phi i32 [ %36, %33 ], [ %44, %40 ], [ %74, %72 ]
  %86 = phi ptr [ %37, %33 ], [ %37, %40 ], [ %76, %72 ]
  %87 = phi i1 [ false, %33 ], [ false, %40 ], [ true, %72 ]
  br i1 %87, label %92, label %88, !prof !179

88:                                               ; preds = %82
  %89 = tail call zeroext i8 @bitmap_clear_bit(ptr noundef %12, i32 noundef %85) #15
  %90 = lshr i64 %83, 1
  %91 = add i32 %85, 1
  br label %27, !llvm.loop !180

92:                                               ; preds = %82, %2
  ret void
}

declare ptr @bitmap_obstack_alloc_stat(ptr noundef) local_unnamed_addr #3

declare void @init_walk_dominator_tree(ptr noundef) local_unnamed_addr #3

declare void @walk_dominator_tree(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @fini_walk_dominator_tree(ptr noundef) local_unnamed_addr #3

declare void @bitmap_obstack_free(ptr noundef) local_unnamed_addr #3

declare void @free_dominance_info(i32 noundef) local_unnamed_addr #3

declare void @bitmap_clear(ptr noundef) local_unnamed_addr #3

declare void @gsi_start_phis(ptr dead_on_unwind writable sret(%struct.gimple_stmt_iterator) align 8, ptr noundef) local_unnamed_addr #3

declare i32 @bitmap_bit_p(ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @operand_equal_p(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare zeroext i8 @is_gimple_reg(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @is_gimple_min_invariant(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @refs_may_alias_p(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @print_gimple_stmt(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @unlink_stmt_vdef(ptr noundef) local_unnamed_addr #3

declare void @gsi_remove(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

declare void @release_defs(ptr noundef) local_unnamed_addr #3

declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @bitmap_gc_alloc_stat() local_unnamed_addr #3

declare zeroext i8 @bitmap_set_bit(ptr noundef, i32 noundef) local_unnamed_addr #3

declare zeroext i8 @dominated_by_p(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @ref_maybe_used_by_stmt_p(ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @is_hidden_global_store(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @stmt_may_clobber_ref_p(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @link_use_stmts_after(ptr noundef %0, ptr noundef %1) unnamed_addr #11 !prof !181 !PGOFuncName !182 {
  %3 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !67
  %5 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !183
  %7 = load ptr, ptr %6, align 8, !tbaa !56
  %8 = tail call zeroext i8 @is_gimple_reg(ptr noundef %7) #15
  %9 = icmp eq i8 %8, 0
  %10 = load i32, ptr %4, align 8
  %11 = and i32 %10, 255
  %12 = icmp eq i32 %11, 16
  br i1 %12, label %13, label %77, !prof !134

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.gimple_statement_phi, ptr %4, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !67
  %16 = tail call zeroext i8 @is_gimple_reg(ptr noundef %15) #15
  %17 = icmp eq i8 %16, 0
  %18 = xor i1 %9, %17
  br i1 %18, label %25, label %19, !prof !136

19:                                               ; preds = %13
  %20 = getelementptr inbounds %struct.gimple_statement_phi, ptr %4, i64 0, i32 2
  %21 = load i32, ptr %20, align 4, !tbaa !67
  %22 = icmp sgt i32 %21, 0
  br i1 %22, label %23, label %25, !prof !135

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.gimple_statement_phi, ptr %4, i64 0, i32 4, i64 0
  br label %25

25:                                               ; preds = %19, %13, %23
  %26 = phi i32 [ %21, %23 ], [ 0, %13 ], [ %21, %19 ]
  %27 = phi i32 [ 1, %23 ], [ 0, %13 ], [ 0, %19 ]
  %28 = phi ptr [ %4, %23 ], [ null, %13 ], [ %4, %19 ]
  %29 = phi i1 [ true, %23 ], [ false, %13 ], [ false, %19 ]
  %30 = phi i8 [ 0, %23 ], [ 1, %13 ], [ 1, %19 ]
  %31 = phi ptr [ %24, %23 ], [ null, %13 ], [ null, %19 ]
  br i1 %29, label %32, label %188, !prof !184

32:                                               ; preds = %25
  %33 = getelementptr inbounds %struct.gimple_statement_phi, ptr %28, i64 0, i32 1
  br label %34

34:                                               ; preds = %32, %72
  %35 = phi ptr [ %31, %32 ], [ %75, %72 ]
  %36 = phi ptr [ %0, %32 ], [ %62, %72 ]
  %37 = phi i8 [ %30, %32 ], [ %74, %72 ]
  %38 = phi i32 [ %27, %32 ], [ %73, %72 ]
  %39 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %35, i64 0, i32 3
  %40 = load ptr, ptr %39, align 8, !tbaa !183
  %41 = load ptr, ptr %40, align 8, !tbaa !56
  %42 = icmp ne ptr %41, %7
  %43 = icmp eq ptr %35, %0
  %44 = or i1 %42, %43
  br i1 %44, label %61, label %45, !prof !185

45:                                               ; preds = %34
  %46 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %36, i64 0, i32 1
  %47 = load ptr, ptr %46, align 8, !tbaa !129
  %48 = icmp eq ptr %47, %35
  br i1 %48, label %61, label %49, !prof !186

49:                                               ; preds = %45
  %50 = load ptr, ptr %35, align 8, !tbaa !133
  %51 = icmp eq ptr %50, null
  br i1 %51, label %57, label %52

52:                                               ; preds = %49
  %53 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %35, i64 0, i32 1
  %54 = load ptr, ptr %53, align 8, !tbaa !129
  %55 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %50, i64 0, i32 1
  store ptr %54, ptr %55, align 8, !tbaa !129
  %56 = load ptr, ptr %53, align 8, !tbaa !129
  store ptr %50, ptr %56, align 8, !tbaa !133
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %35, i8 0, i64 16, i1 false)
  br label %57

57:                                               ; preds = %52, %49
  store ptr %36, ptr %35, align 8, !tbaa !133
  %58 = load ptr, ptr %46, align 8, !tbaa !129
  %59 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %35, i64 0, i32 1
  store ptr %58, ptr %59, align 8, !tbaa !129
  %60 = load ptr, ptr %46, align 8, !tbaa !129
  store ptr %35, ptr %60, align 8, !tbaa !133
  store ptr %35, ptr %46, align 8, !tbaa !129
  br label %61

61:                                               ; preds = %34, %45, %57
  %62 = phi ptr [ %36, %34 ], [ %35, %57 ], [ %35, %45 ]
  %63 = icmp slt i32 %38, %26
  br i1 %63, label %64, label %72, !prof !187

64:                                               ; preds = %61
  %65 = add nsw i32 %38, 1
  %66 = load i32, ptr %33, align 8, !tbaa !67
  %67 = icmp ult i32 %66, %38
  br i1 %67, label %68, label %69, !prof !188

68:                                               ; preds = %64
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 3103, ptr noundef nonnull @.str.4) #15
  br label %69

69:                                               ; preds = %68, %64
  %70 = zext i32 %38 to i64
  %71 = getelementptr inbounds %struct.gimple_statement_phi, ptr %28, i64 0, i32 4, i64 %70
  br label %72

72:                                               ; preds = %61, %69
  %73 = phi i32 [ %65, %69 ], [ %38, %61 ]
  %74 = phi i8 [ %37, %69 ], [ 1, %61 ]
  %75 = phi ptr [ %71, %69 ], [ null, %61 ]
  %76 = icmp eq i8 %74, 0
  br i1 %76, label %34, label %188, !prof !189, !llvm.loop !190

77:                                               ; preds = %2
  br i1 %9, label %147, label %78, !prof !191

78:                                               ; preds = %77
  %79 = load i32, ptr %4, align 8
  %80 = and i32 %79, 255
  %81 = add nsw i32 %80, -10
  %82 = icmp ult i32 %81, -9
  br i1 %82, label %86, label %83

83:                                               ; preds = %78
  %84 = getelementptr inbounds %struct.gimple_statement_with_ops_base, ptr %4, i64 0, i32 2
  %85 = load ptr, ptr %84, align 8, !tbaa !67
  br label %86

86:                                               ; preds = %83, %78
  %87 = phi ptr [ %85, %83 ], [ null, %78 ]
  %88 = icmp eq ptr %87, null
  br i1 %88, label %99, label %89

89:                                               ; preds = %86
  %90 = and i32 %79, 254
  %91 = add nsw i32 %90, -10
  %92 = icmp ult i32 %91, -4
  br i1 %92, label %99, label %93

93:                                               ; preds = %89
  %94 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %4, i64 0, i32 2
  %95 = load ptr, ptr %94, align 8, !tbaa !67
  %96 = icmp eq ptr %95, null
  br i1 %96, label %99, label %97

97:                                               ; preds = %93
  %98 = load ptr, ptr %87, align 8, !tbaa !192
  br label %99

99:                                               ; preds = %97, %93, %89, %86
  %100 = phi ptr [ %87, %86 ], [ %87, %89 ], [ %87, %93 ], [ %98, %97 ]
  %101 = icmp eq ptr %100, null
  br i1 %101, label %105, label %102

102:                                              ; preds = %99
  %103 = getelementptr inbounds %struct.use_optype_d, ptr %100, i64 0, i32 1
  %104 = load ptr, ptr %100, align 8, !tbaa !192
  br label %105

105:                                              ; preds = %99, %102
  %106 = phi ptr [ %104, %102 ], [ %100, %99 ]
  %107 = phi i8 [ 0, %102 ], [ 1, %99 ]
  %108 = phi ptr [ %103, %102 ], [ null, %99 ]
  br i1 %101, label %188, label %109

109:                                              ; preds = %105, %142
  %110 = phi ptr [ %145, %142 ], [ %108, %105 ]
  %111 = phi ptr [ %137, %142 ], [ %0, %105 ]
  %112 = phi i8 [ %144, %142 ], [ %107, %105 ]
  %113 = phi ptr [ %143, %142 ], [ %106, %105 ]
  %114 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %110, i64 0, i32 3
  %115 = load ptr, ptr %114, align 8, !tbaa !183
  %116 = load ptr, ptr %115, align 8, !tbaa !56
  %117 = icmp ne ptr %116, %7
  %118 = icmp eq ptr %110, %0
  %119 = or i1 %117, %118
  br i1 %119, label %136, label %120

120:                                              ; preds = %109
  %121 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %111, i64 0, i32 1
  %122 = load ptr, ptr %121, align 8, !tbaa !129
  %123 = icmp eq ptr %122, %110
  br i1 %123, label %136, label %124

124:                                              ; preds = %120
  %125 = load ptr, ptr %110, align 8, !tbaa !133
  %126 = icmp eq ptr %125, null
  br i1 %126, label %132, label %127

127:                                              ; preds = %124
  %128 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %110, i64 0, i32 1
  %129 = load ptr, ptr %128, align 8, !tbaa !129
  %130 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %125, i64 0, i32 1
  store ptr %129, ptr %130, align 8, !tbaa !129
  %131 = load ptr, ptr %128, align 8, !tbaa !129
  store ptr %125, ptr %131, align 8, !tbaa !133
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %110, i8 0, i64 16, i1 false)
  br label %132

132:                                              ; preds = %127, %124
  store ptr %111, ptr %110, align 8, !tbaa !133
  %133 = load ptr, ptr %121, align 8, !tbaa !129
  %134 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %110, i64 0, i32 1
  store ptr %133, ptr %134, align 8, !tbaa !129
  %135 = load ptr, ptr %121, align 8, !tbaa !129
  store ptr %110, ptr %135, align 8, !tbaa !133
  store ptr %110, ptr %121, align 8, !tbaa !129
  br label %136

136:                                              ; preds = %132, %120, %109
  %137 = phi ptr [ %111, %109 ], [ %110, %132 ], [ %110, %120 ]
  %138 = icmp eq ptr %113, null
  br i1 %138, label %142, label %139

139:                                              ; preds = %136
  %140 = getelementptr inbounds %struct.use_optype_d, ptr %113, i64 0, i32 1
  %141 = load ptr, ptr %113, align 8, !tbaa !192
  br label %142

142:                                              ; preds = %136, %139
  %143 = phi ptr [ %141, %139 ], [ %113, %136 ]
  %144 = phi i8 [ %112, %139 ], [ 1, %136 ]
  %145 = phi ptr [ %140, %139 ], [ null, %136 ]
  %146 = icmp eq i8 %144, 0
  br i1 %146, label %109, label %188, !llvm.loop !194

147:                                              ; preds = %77
  %148 = and i32 %10, 254
  %149 = add nsw i32 %148, -10
  %150 = icmp ult i32 %149, -4
  br i1 %150, label %162, label %151, !prof !139

151:                                              ; preds = %147
  %152 = getelementptr inbounds %struct.gimple_statement_with_ops_base, ptr %4, i64 0, i32 2
  %153 = load ptr, ptr %152, align 8, !tbaa !67
  %154 = icmp eq ptr %153, null
  br i1 %154, label %162, label %155, !prof !139

155:                                              ; preds = %151
  %156 = getelementptr inbounds %struct.use_optype_d, ptr %153, i64 0, i32 1, i32 3
  %157 = load ptr, ptr %156, align 8, !tbaa !195
  %158 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %4, i64 0, i32 2
  %159 = icmp eq ptr %157, %158
  %160 = getelementptr inbounds %struct.use_optype_d, ptr %153, i64 0, i32 1
  %161 = select i1 %159, ptr %160, ptr null, !prof !191
  br label %162

162:                                              ; preds = %147, %151, %155
  %163 = phi ptr [ null, %147 ], [ null, %151 ], [ %161, %155 ]
  %164 = icmp eq ptr %163, null
  br i1 %164, label %188, label %165, !prof !139

165:                                              ; preds = %162
  %166 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %163, i64 0, i32 3
  %167 = load ptr, ptr %166, align 8, !tbaa !183
  %168 = load ptr, ptr %167, align 8, !tbaa !56
  %169 = icmp ne ptr %168, %7
  %170 = icmp eq ptr %163, %0
  %171 = or i1 %170, %169
  br i1 %171, label %188, label %172, !prof !191

172:                                              ; preds = %165
  %173 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 1
  %174 = load ptr, ptr %173, align 8, !tbaa !129
  %175 = icmp eq ptr %174, %163
  br i1 %175, label %188, label %176

176:                                              ; preds = %172
  %177 = load ptr, ptr %163, align 8, !tbaa !133
  %178 = icmp eq ptr %177, null
  br i1 %178, label %184, label %179

179:                                              ; preds = %176
  %180 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %163, i64 0, i32 1
  %181 = load ptr, ptr %180, align 8, !tbaa !129
  %182 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %177, i64 0, i32 1
  store ptr %181, ptr %182, align 8, !tbaa !129
  %183 = load ptr, ptr %180, align 8, !tbaa !129
  store ptr %177, ptr %183, align 8, !tbaa !133
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %163, i8 0, i64 16, i1 false)
  br label %184

184:                                              ; preds = %179, %176
  store ptr %0, ptr %163, align 8, !tbaa !133
  %185 = load ptr, ptr %173, align 8, !tbaa !129
  %186 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %163, i64 0, i32 1
  store ptr %185, ptr %186, align 8, !tbaa !129
  %187 = load ptr, ptr %173, align 8, !tbaa !129
  store ptr %163, ptr %187, align 8, !tbaa !133
  store ptr %163, ptr %173, align 8, !tbaa !129
  br label %188

188:                                              ; preds = %142, %72, %105, %25, %184, %172, %165, %162
  %189 = phi ptr [ %0, %165 ], [ %0, %162 ], [ %163, %184 ], [ %163, %172 ], [ %0, %25 ], [ %0, %105 ], [ %62, %72 ], [ %137, %142 ]
  %190 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %1, i64 0, i32 2
  %191 = load ptr, ptr %190, align 8, !tbaa !133
  %192 = icmp eq ptr %191, null
  br i1 %192, label %198, label %193, !prof !196

193:                                              ; preds = %188
  %194 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %1, i64 0, i32 2, i32 1
  %195 = load ptr, ptr %194, align 8, !tbaa !129
  %196 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %191, i64 0, i32 1
  store ptr %195, ptr %196, align 8, !tbaa !129
  %197 = load ptr, ptr %194, align 8, !tbaa !129
  store ptr %191, ptr %197, align 8, !tbaa !133
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %190, i8 0, i64 16, i1 false)
  br label %198

198:                                              ; preds = %193, %188
  store ptr %189, ptr %190, align 8, !tbaa !133
  %199 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %189, i64 0, i32 1
  %200 = load ptr, ptr %199, align 8, !tbaa !129
  %201 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %1, i64 0, i32 2, i32 1
  store ptr %200, ptr %201, align 8, !tbaa !129
  %202 = load ptr, ptr %199, align 8, !tbaa !129
  store ptr %190, ptr %202, align 8, !tbaa !133
  store ptr %190, ptr %199, align 8, !tbaa !129
  ret void
}

declare zeroext i8 @bitmap_clear_bit(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #13

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #14

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
attributes #11 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree nounwind }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #14 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #15 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!54}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53}
!35 = !{ptr @tree_ssa_dse, ptr @renumber_gimple_stmt_uids, i64 76}
!36 = !{ptr @tree_ssa_dse, ptr @calculate_dominance_info, i64 152}
!37 = !{ptr @tree_ssa_dse, ptr @bitmap_obstack_alloc_stat, i64 76}
!38 = !{ptr @tree_ssa_dse, ptr @init_walk_dominator_tree, i64 76}
!39 = !{ptr @tree_ssa_dse, ptr @walk_dominator_tree, i64 76}
!40 = !{ptr @tree_ssa_dse, ptr @fini_walk_dominator_tree, i64 76}
!41 = !{ptr @tree_ssa_dse, ptr @bitmap_obstack_free, i64 76}
!42 = !{ptr @tree_ssa_dse, ptr @free_dominance_info, i64 76}
!43 = !{ptr @dse_initialize_block_local_data, ptr @bitmap_clear, i64 325146}
!44 = !{ptr @dse_enter_block, ptr @bitmap_gc_alloc_stat, i64 1102}
!45 = !{ptr @dse_enter_block, ptr @bitmap_set_bit, i64 187338}
!46 = !{ptr @dse_enter_block, ptr @link_use_stmts_after, i64 169}
!47 = !{ptr @dse_enter_block, ptr @dominated_by_p, i64 296}
!48 = !{ptr @dse_enter_block, ptr @ref_maybe_used_by_stmt_p, i64 71}
!49 = !{ptr @dse_enter_block, ptr @stmt_may_clobber_ref_p, i64 80}
!50 = !{ptr @dse_enter_block, ptr @gsi_start_phis, i64 326744}
!51 = !{ptr @dse_enter_block, ptr @is_gimple_reg, i64 98754}
!52 = !{ptr @dse_leave_block, ptr @bitmap_clear_bit, i64 93669}
!53 = !{ptr @link_use_stmts_after, ptr @is_gimple_reg, i64 280}
!54 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!55 = !{!"function_entry_count", i64 0}
!56 = !{!57, !57, i64 0}
!57 = !{!"any pointer", !58, i64 0}
!58 = !{!"omnipotent char", !59, i64 0}
!59 = !{!"Simple C/C++ TBAA"}
!60 = !{!61, !57, i64 8}
!61 = !{!"_IO_FILE", !62, i64 0, !57, i64 8, !57, i64 16, !57, i64 24, !57, i64 32, !57, i64 40, !57, i64 48, !57, i64 56, !57, i64 64, !57, i64 72, !57, i64 80, !57, i64 88, !57, i64 96, !57, i64 104, !62, i64 112, !62, i64 116, !63, i64 120, !64, i64 128, !58, i64 130, !58, i64 131, !57, i64 136, !63, i64 144, !57, i64 152, !57, i64 160, !57, i64 168, !57, i64 176, !63, i64 184, !62, i64 192, !58, i64 196}
!62 = !{!"int", !58, i64 0}
!63 = !{!"long", !58, i64 0}
!64 = !{!"short", !58, i64 0}
!65 = !{!61, !57, i64 16}
!66 = !{!"branch_weights", i32 2000, i32 1}
!67 = !{!58, !58, i64 0}
!68 = !{!61, !57, i64 40}
!69 = !{!61, !57, i64 48}
!70 = !{!61, !62, i64 0}
!71 = !{!62, !62, i64 0}
!72 = distinct !{!72, !73, !74}
!73 = !{!"llvm.loop.mustprogress"}
!74 = !{!"llvm.loop.unroll.disable"}
!75 = !{!"function_entry_count", i64 76}
!76 = !{!"tree-ssa-dse.c;gate_dse"}
!77 = !{!"tree-ssa-dse.c;tree_ssa_dse"}
!78 = !{!79, !57, i64 8}
!79 = !{!"dom_walk_data", !62, i64 0, !57, i64 8, !57, i64 16, !57, i64 24, !57, i64 32, !57, i64 40, !63, i64 48, !57, i64 56}
!80 = !{!79, !57, i64 16}
!81 = !{!79, !57, i64 24}
!82 = !{!79, !63, i64 48}
!83 = !{!84, !57, i64 0}
!84 = !{!"dse_global_data", !57, i64 0}
!85 = !{!79, !57, i64 32}
!86 = !{!87, !57, i64 8}
!87 = !{!"function", !57, i64 0, !57, i64 8, !57, i64 16, !57, i64 24, !57, i64 32, !57, i64 40, !57, i64 48, !57, i64 56, !57, i64 64, !57, i64 72, !57, i64 80, !57, i64 88, !57, i64 96, !62, i64 104, !62, i64 108, !62, i64 112, !62, i64 116, !62, i64 120, !62, i64 124, !57, i64 128, !62, i64 136, !62, i64 137, !62, i64 138, !62, i64 138, !62, i64 138, !62, i64 138, !62, i64 138, !62, i64 138, !62, i64 138, !62, i64 139, !62, i64 139, !62, i64 139, !62, i64 139, !62, i64 139, !62, i64 139, !62, i64 139}
!88 = !{!89, !57, i64 8}
!89 = !{!"control_flow_graph", !57, i64 0, !57, i64 8, !57, i64 16, !62, i64 24, !62, i64 28, !62, i64 32, !57, i64 40, !62, i64 48, !58, i64 52, !58, i64 60, !62, i64 68, !62, i64 72}
!90 = !{!"function_entry_count", i64 326744}
!91 = !{!"tree-ssa-dse.c;dse_initialize_block_local_data"}
!92 = !{!"branch_weights", i32 1208, i32 325536}
!93 = !{!79, !57, i64 40}
!94 = !{!95, !62, i64 0}
!95 = !{!"VEC_void_p_base", !62, i64 0, !62, i64 4, !58, i64 8}
!96 = !{!97, !57, i64 0}
!97 = !{!"dse_block_local_data", !57, i64 0}
!98 = !{!"branch_weights", i32 390, i32 325146}
!99 = !{!"tree-ssa-dse.c;dse_enter_block"}
!100 = !{!101, !62, i64 96}
!101 = !{!"basic_block_def", !57, i64 0, !57, i64 8, !57, i64 16, !57, i64 24, !58, i64 32, !57, i64 48, !57, i64 56, !58, i64 64, !63, i64 72, !62, i64 80, !62, i64 84, !62, i64 88, !62, i64 92, !62, i64 96}
!102 = !{!"branch_weights", i32 326744, i32 0}
!103 = !{!"branch_weights", i32 76, i32 326668}
!104 = !{!105, !57, i64 0}
!105 = !{!"gimple_bb_info", !57, i64 0, !57, i64 8}
!106 = !{!107, !57, i64 8}
!107 = !{!"gimple_seq_d", !57, i64 0, !57, i64 8, !57, i64 16}
!108 = !{!109}
!109 = distinct !{!109, !110, !"gsi_last: argument 0"}
!110 = distinct !{!110, !"gsi_last"}
!111 = !{!"branch_weights", i32 14096, i32 312648}
!112 = !{!113, !57, i64 0}
!113 = !{!"gimple_seq_node_d", !57, i64 0, !57, i64 8, !57, i64 16}
!114 = !{!"branch_weights", i32 0, i32 312648}
!115 = !{!"branch_weights", i32 1, i32 326743}
!116 = !{!"branch_weights", i32 287867, i32 426649}
!117 = !{!"branch_weights", i32 576475, i32 138041}
!118 = !{!"branch_weights", i32 137961, i32 80}
!119 = !{!63, !63, i64 0}
!120 = !{!"branch_weights", i32 0, i32 137961}
!121 = !{!"branch_weights", i32 137961, i32 0}
!122 = !{!"branch_weights", i32 80, i32 0}
!123 = !{!"branch_weights", i32 1102, i32 92567}
!124 = !{!"branch_weights", i32 0, i32 160}
!125 = !{!"branch_weights", i32 80, i32 80}
!126 = !{!127, !57, i64 8}
!127 = !{!"immediate_use_iterator_d", !57, i64 0, !57, i64 8, !128, i64 16, !57, i64 48}
!128 = !{!"ssa_use_operand_d", !57, i64 0, !57, i64 8, !58, i64 16, !57, i64 24}
!129 = !{!128, !57, i64 8}
!130 = !{!127, !57, i64 0}
!131 = !{!"branch_weights", i32 1, i32 159}
!132 = !{!"branch_weights", i32 0, i32 167}
!133 = !{!128, !57, i64 0}
!134 = !{!"branch_weights", i32 113, i32 54}
!135 = !{!"branch_weights", i32 113, i32 0}
!136 = !{!"branch_weights", i32 0, i32 113}
!137 = !{!"branch_weights", i32 33, i32 80}
!138 = !{!"branch_weights", i32 0, i32 33}
!139 = !{!"branch_weights", i32 0, i32 54}
!140 = !{!"branch_weights", i32 7, i32 47}
!141 = !{!"branch_weights", i32 0, i32 47}
!142 = !{!"branch_weights", i32 0, i32 7}
!143 = !{!"branch_weights", i32 7, i32 0}
!144 = !{!"branch_weights", i32 80, i32 7}
!145 = !{!"branch_weights", i32 0, i32 80}
!146 = !{!"branch_weights", i32 159, i32 175}
!147 = distinct !{!147, !73, !74}
!148 = !{!"branch_weights", i32 80, i32 80, i32 0}
!149 = distinct !{!149, !73, !74}
!150 = !{!87, !62, i64 104}
!151 = !{!113, !57, i64 8}
!152 = !{!"branch_weights", i32 326743, i32 387773}
!153 = distinct !{!153, !73, !74}
!154 = !{i64 0, i64 8, !56, i64 8, i64 8, !56, i64 16, i64 8, !56}
!155 = !{!"branch_weights", i32 227990, i32 98754}
!156 = !{!"branch_weights", i32 93589, i32 5165}
!157 = !{!"branch_weights", i32 93589, i32 0}
!158 = !{!113, !57, i64 16}
!159 = !{!"branch_weights", i32 98754, i32 0}
!160 = distinct !{!160, !73, !74}
!161 = !{!"tree-ssa-dse.c;dse_leave_block"}
!162 = !{!"branch_weights", i32 496, i32 326248}
!163 = !{!164, !57, i64 0}
!164 = !{!"bitmap_head_def", !57, i64 0, !57, i64 8, !62, i64 16, !57, i64 24}
!165 = !{!"branch_weights", i32 232579, i32 93669}
!166 = !{!167, !62, i64 16}
!167 = !{!"bitmap_element_def", !57, i64 0, !57, i64 8, !62, i64 16, !58, i64 24}
!168 = !{!"branch_weights", i32 372748, i32 47169}
!169 = !{!"branch_weights", i32 93668, i32 1}
!170 = !{!"branch_weights", i32 2868088, i32 93668}
!171 = distinct !{!171, !73, !74}
!172 = !{!"branch_weights", i32 1, i32 326247}
!173 = !{!"branch_weights", i32 279748, i32 46500}
!174 = !{!"branch_weights", i32 326247, i32 1}
!175 = distinct !{!175, !73, !74}
!176 = !{!167, !57, i64 0}
!177 = !{!"branch_weights", i32 326248, i32 0}
!178 = distinct !{!178, !74}
!179 = !{!"branch_weights", i32 326248, i32 93669}
!180 = distinct !{!180, !73, !74}
!181 = !{!"function_entry_count", i64 167}
!182 = !{!"tree-ssa-dse.c;link_use_stmts_after"}
!183 = !{!128, !57, i64 24}
!184 = !{!"branch_weights", i32 225, i32 1}
!185 = !{!"branch_weights", i32 226, i32 2}
!186 = !{!"branch_weights", i32 2, i32 0}
!187 = !{!"branch_weights", i32 115, i32 113}
!188 = !{!"branch_weights", i32 0, i32 115}
!189 = !{!"branch_weights", i32 231, i32 225}
!190 = distinct !{!190, !73, !74}
!191 = !{!"branch_weights", i32 54, i32 0}
!192 = !{!193, !57, i64 0}
!193 = !{!"use_optype_d", !57, i64 0, !128, i64 8}
!194 = distinct !{!194, !73, !74}
!195 = !{!193, !57, i64 32}
!196 = !{!"branch_weights", i32 160, i32 7}
