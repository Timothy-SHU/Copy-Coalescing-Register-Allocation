; ModuleID = 'varpool.c'
source_filename = "varpool.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.lang_hooks = type { ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lang_hooks_for_tree_inlining, %struct.lang_hooks_for_callgraph, %struct.lang_hooks_for_tree_dump, %struct.lang_hooks_for_decls, %struct.lang_hooks_for_types, %struct.lang_hooks_for_lto, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.lang_hooks_for_tree_inlining = type { ptr }
%struct.lang_hooks_for_callgraph = type { ptr }
%struct.lang_hooks_for_tree_dump = type { ptr, ptr }
%struct.lang_hooks_for_decls = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lang_hooks_for_types = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.lang_hooks_for_lto = type { ptr, ptr, ptr }
%struct.gcc_target = type { %struct.asm_out, %struct.sched, %struct.vectorize, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.addr_space, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, %struct.calls, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.c, %struct.cxx, %struct.emutls, %struct.target_option_hooks, ptr, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.asm_out = type { ptr, ptr, ptr, %struct.asm_int_op, %struct.asm_int_op, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.asm_int_op = type { ptr, ptr, ptr, ptr }
%struct.sched = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.vectorize = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.addr_space = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.calls = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.c = type { ptr }
%struct.cxx = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.emutls = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8 }
%struct.target_option_hooks = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ggc_root_tab = type { ptr, i64, i64, ptr, ptr }
%struct._IO_FILE = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, [1 x i8], ptr, i64, ptr, ptr, ptr, ptr, i64, i32, [20 x i8] }
%struct.varpool_node = type { ptr, ptr, ptr, ptr, i32, i8 }
%struct.tree_decl_minimal = type { %struct.tree_common, i32, i32, ptr, ptr }
%struct.tree_common = type { %struct.tree_base, ptr, ptr }
%struct.tree_base = type { i64 }
%struct.tree_decl_common = type { %struct.tree_decl_minimal, ptr, i40, i32, ptr, ptr, ptr, ptr, ptr }
%struct.tree_decl_with_vis = type { %struct.tree_decl_with_rtl, ptr, ptr, ptr, i24 }
%struct.tree_decl_with_rtl = type { %struct.tree_decl_common, ptr }
%struct.diagnostic_context = type { ptr, [12 x i32], i8, i8, [870 x i32], i8, i8, ptr, ptr, ptr, ptr, ptr, i32, i8 }

@stdout = external local_unnamed_addr global ptr, align 8
@stdin = external local_unnamed_addr global ptr, align 8
@lang_hooks = external local_unnamed_addr global %struct.lang_hooks, align 8
@tree_code_type = external local_unnamed_addr constant [0 x i32], align 4
@.str = private unnamed_addr constant [10 x i8] c"varpool.c\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@varpool_hash = internal global ptr null, align 8
@cgraph_order = external local_unnamed_addr global i32, align 4
@varpool_nodes = dso_local local_unnamed_addr global ptr null, align 8
@.str.2 = private unnamed_addr constant [4 x i8] c"%s:\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c" availability:%s\00", align 1
@cgraph_function_flags_ready = external local_unnamed_addr global i8, align 1
@cgraph_availability_names = external local_unnamed_addr constant [0 x ptr], align 8
@.str.4 = private unnamed_addr constant [10 x i8] c"not-ready\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c" initialized\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c" needed\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c" analyzed\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c" finalized\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c" output\00", align 1
@.str.10 = private unnamed_addr constant [20 x i8] c" externally_visible\00", align 1
@.str.12 = private unnamed_addr constant [17 x i8] c"variable pool:\0A\0A\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@tree_contains_struct = external local_unnamed_addr global [191 x [64 x i8]], align 16
@flag_whole_program = external local_unnamed_addr global i32, align 4
@flag_lto = external local_unnamed_addr global i32, align 4
@flag_whopr = external local_unnamed_addr global i32, align 4
@targetm = external local_unnamed_addr global %struct.gcc_target, align 8
@flag_toplevel_reorder = external local_unnamed_addr global i32, align 4
@in_lto_p = external local_unnamed_addr global i8, align 1
@cgraph_global_info_ready = external local_unnamed_addr global i8, align 1
@timevar_enable = external local_unnamed_addr global i8, align 1
@varpool_first_unanalyzed_node = internal global ptr null, align 8
@varpool_assembled_nodes_queue = internal global ptr null, align 8
@varpool_nodes_queue = dso_local local_unnamed_addr global ptr null, align 8
@global_dc = external local_unnamed_addr global ptr, align 8
@varpool_last_needed_node = internal global ptr null, align 8
@gt_ggc_r_gt_varpool_h = dso_local local_unnamed_addr constant [5 x %struct.ggc_root_tab] [%struct.ggc_root_tab { ptr @varpool_assembled_nodes_queue, i64 1, i64 8, ptr @gt_ggc_mx_varpool_node, ptr @gt_pch_nx_varpool_node }, %struct.ggc_root_tab { ptr @varpool_first_unanalyzed_node, i64 1, i64 8, ptr @gt_ggc_mx_varpool_node, ptr @gt_pch_nx_varpool_node }, %struct.ggc_root_tab { ptr @varpool_last_needed_node, i64 1, i64 8, ptr @gt_ggc_mx_varpool_node, ptr @gt_pch_nx_varpool_node }, %struct.ggc_root_tab { ptr @varpool_hash, i64 1, i64 8, ptr @gt_ggc_m_P12varpool_node4htab, ptr @gt_pch_n_P12varpool_node4htab }, %struct.ggc_root_tab zeroinitializer], align 16

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @vprintf(ptr noalias nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 !prof !52 {
  %3 = load ptr, ptr @stdout, align 8, !tbaa !53
  %4 = tail call i32 @vfprintf(ptr noundef %3, ptr noundef %0, ptr noundef %1)
  ret i32 %4
}

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @getchar() local_unnamed_addr #0 !prof !52 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !53
  %2 = tail call i32 @getc(ptr noundef %1)
  ret i32 %2
}

; Function Attrs: nofree nounwind
declare noundef i32 @getc(ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !52 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !57
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !62
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !63

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #14
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !57
  %11 = load i8, ptr %3, align 1, !tbaa !64
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

declare i32 @__uflow(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !52 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !57
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !62
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !63

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #14
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !57
  %11 = load i8, ptr %3, align 1, !tbaa !64
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #2 !prof !52 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !53
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !57
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !62
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !63

7:                                                ; preds = %0
  %8 = tail call i32 @__uflow(ptr noundef %1) #14
  br label %13

9:                                                ; preds = %0
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !57
  %11 = load i8, ptr %3, align 1, !tbaa !64
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @putchar(i32 noundef %0) local_unnamed_addr #0 !prof !52 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !53
  %3 = tail call i32 @putc(i32 noundef %0, ptr noundef %2)
  ret i32 %3
}

; Function Attrs: nofree nounwind
declare noundef i32 @putc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !52 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !65
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !66
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !63

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #14
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !65
  store i8 %12, ptr %4, align 1, !tbaa !64
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

declare i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !52 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !65
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !66
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !63

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #14
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !65
  store i8 %12, ptr %4, align 1, !tbaa !64
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 noundef %0) local_unnamed_addr #2 !prof !52 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !53
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !65
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !66
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !63

8:                                                ; preds = %1
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %2, i32 noundef %9) #14
  br label %15

11:                                               ; preds = %1
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !65
  store i8 %12, ptr %4, align 1, !tbaa !64
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i64 @getline(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 !prof !52 {
  %4 = tail call i64 @__getdelim(ptr noundef %0, ptr noundef %1, i32 noundef 10, ptr noundef %2) #14
  ret i64 %4
}

declare i64 @__getdelim(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @feof_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !52 {
  %2 = load i32, ptr %0, align 8, !tbaa !67
  %3 = lshr i32 %2, 4
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @ferror_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !52 {
  %2 = load i32, ptr %0, align 8, !tbaa !67
  %3 = lshr i32 %2, 5
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @tolower(i32 noundef %0) local_unnamed_addr #5 !prof !52 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_tolower_loc() #14
  %6 = load ptr, ptr %5, align 8, !tbaa !53
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !68
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_tolower_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @toupper(i32 noundef %0) local_unnamed_addr #5 !prof !52 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_toupper_loc() #14
  %6 = load ptr, ptr %5, align 8, !tbaa !53
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !68
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_toupper_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i32 @atoi(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !52 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  %3 = trunc i64 %2 to i32
  ret i32 %3
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atol(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !52 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atoll(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !52 {
  %2 = tail call i64 @strtoll(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtoll(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local noundef ptr @bsearch(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #2 !prof !52 {
  %6 = icmp eq i64 %2, 0
  br i1 %6, label %24, label %7

7:                                                ; preds = %5, %20
  %8 = phi i64 [ %22, %20 ], [ 0, %5 ]
  %9 = phi i64 [ %21, %20 ], [ %2, %5 ]
  %10 = add i64 %8, %9
  %11 = lshr i64 %10, 1
  %12 = mul i64 %11, %3
  %13 = getelementptr inbounds i8, ptr %1, i64 %12
  %14 = tail call i32 %4(ptr noundef %0, ptr noundef %13) #14
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
  br i1 %23, label %7, label %24, !llvm.loop !69

24:                                               ; preds = %16, %20, %5
  %25 = phi ptr [ null, %5 ], [ %13, %16 ], [ null, %20 ]
  ret ptr %25
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local double @atof(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !52 {
  %2 = tail call double @strtod(ptr nocapture noundef %0, ptr noundef null)
  ret double %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: cold nounwind uwtable
define dso_local ptr @varpool_node_name(ptr nocapture noundef readonly %0) local_unnamed_addr #9 !prof !52 {
  %2 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 22), align 8, !tbaa !72
  %3 = load ptr, ptr %0, align 8, !tbaa !80
  %4 = tail call ptr %2(ptr noundef %3, i32 noundef 2) #14
  ret ptr %4
}

; Function Attrs: nounwind uwtable
define dso_local ptr @varpool_node(ptr noundef %0) local_unnamed_addr #10 !prof !82 {
  %2 = alloca %struct.varpool_node, align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %2) #14
  %3 = load i64, ptr %0, align 8
  %4 = and i64 %3, 65535
  %5 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %4
  %6 = load i32, ptr %5, align 4, !tbaa !68
  %7 = icmp ne i32 %6, 3
  %8 = icmp eq i64 %4, 29
  %9 = or i1 %7, %8
  br i1 %9, label %10, label %11, !prof !83

10:                                               ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 114, ptr noundef nonnull @.str.1) #14
  br label %11

11:                                               ; preds = %1, %10
  %12 = load ptr, ptr @varpool_hash, align 8, !tbaa !53
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %16, !prof !84

14:                                               ; preds = %11
  %15 = tail call ptr @htab_create_alloc(i64 noundef 10, ptr noundef nonnull @hash_varpool_node, ptr noundef nonnull @eq_varpool_node, ptr noundef null, ptr noundef nonnull @ggc_calloc, ptr noundef nonnull @ggc_free) #14
  store ptr %15, ptr @varpool_hash, align 8, !tbaa !53
  br label %16

16:                                               ; preds = %14, %11
  store ptr %0, ptr %2, align 8, !tbaa !80
  %17 = load ptr, ptr @varpool_hash, align 8, !tbaa !53
  %18 = call ptr @htab_find_slot(ptr noundef %17, ptr noundef nonnull %2, i32 noundef 1) #14
  %19 = load ptr, ptr %18, align 8, !tbaa !53
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %28, !prof !85

21:                                               ; preds = %16
  %22 = call ptr @ggc_alloc_cleared_stat(i64 noundef 40) #14
  store ptr %0, ptr %22, align 8, !tbaa !80
  %23 = load i32, ptr @cgraph_order, align 4, !tbaa !68
  %24 = add nsw i32 %23, 1
  store i32 %24, ptr @cgraph_order, align 4, !tbaa !68
  %25 = getelementptr inbounds %struct.varpool_node, ptr %22, i64 0, i32 4
  store i32 %23, ptr %25, align 8, !tbaa !86
  %26 = load ptr, ptr @varpool_nodes, align 8, !tbaa !53
  %27 = getelementptr inbounds %struct.varpool_node, ptr %22, i64 0, i32 1
  store ptr %26, ptr %27, align 8, !tbaa !87
  store ptr %22, ptr @varpool_nodes, align 8, !tbaa !53
  store ptr %22, ptr %18, align 8, !tbaa !53
  br label %28

28:                                               ; preds = %16, %21
  %29 = phi ptr [ %22, %21 ], [ %19, %16 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %2) #14
  ret ptr %29
}

declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @htab_create_alloc(i64 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define internal i32 @hash_varpool_node(ptr nocapture noundef readonly %0) #11 !prof !88 !PGOFuncName !89 {
  %2 = load ptr, ptr %0, align 8, !tbaa !80
  %3 = getelementptr inbounds %struct.tree_decl_minimal, ptr %2, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !64
  ret i32 %4
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define internal i32 @eq_varpool_node(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #12 !prof !90 !PGOFuncName !91 {
  %3 = load ptr, ptr %0, align 8, !tbaa !80
  %4 = getelementptr inbounds %struct.tree_decl_minimal, ptr %3, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !64
  %6 = load ptr, ptr %1, align 8, !tbaa !80
  %7 = getelementptr inbounds %struct.tree_decl_minimal, ptr %6, i64 0, i32 2
  %8 = load i32, ptr %7, align 4, !tbaa !64
  %9 = icmp eq i32 %5, %8
  %10 = zext i1 %9 to i32
  ret i32 %10
}

declare ptr @ggc_calloc(i64 noundef, i64 noundef) #3

declare void @ggc_free(ptr noundef) #3

declare ptr @htab_find_slot(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @ggc_alloc_cleared_stat(i64 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @dump_varpool_node(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #9 !prof !52 {
  %3 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 22), align 8, !tbaa !72
  %4 = load ptr, ptr %1, align 8, !tbaa !80
  %5 = tail call ptr %3(ptr noundef %4, i32 noundef 2) #14
  %6 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.2, ptr noundef %5)
  %7 = load i8, ptr @cgraph_function_flags_ready, align 1, !tbaa !64
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %14, label %9

9:                                                ; preds = %2
  %10 = tail call i32 @cgraph_variable_initializer_availability(ptr noundef nonnull %1), !range !92
  %11 = zext nneg i32 %10 to i64
  %12 = getelementptr inbounds [0 x ptr], ptr @cgraph_availability_names, i64 0, i64 %11
  %13 = load ptr, ptr %12, align 8, !tbaa !53
  br label %14

14:                                               ; preds = %2, %9
  %15 = phi ptr [ %13, %9 ], [ @.str.4, %2 ]
  %16 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.3, ptr noundef %15)
  %17 = load ptr, ptr %1, align 8, !tbaa !80
  %18 = getelementptr inbounds %struct.tree_decl_common, ptr %17, i64 0, i32 5
  %19 = load ptr, ptr %18, align 8, !tbaa !64
  %20 = icmp eq ptr %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %14
  %22 = tail call i64 @fwrite(ptr nonnull @.str.5, i64 12, i64 1, ptr %0)
  br label %23

23:                                               ; preds = %21, %14
  %24 = getelementptr inbounds %struct.varpool_node, ptr %1, i64 0, i32 5
  %25 = load i8, ptr %24, align 4
  %26 = and i8 %25, 1
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %23
  %29 = tail call i64 @fwrite(ptr nonnull @.str.6, i64 7, i64 1, ptr %0)
  br label %30

30:                                               ; preds = %28, %23
  %31 = load i8, ptr %24, align 4
  %32 = and i8 %31, 4
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %36, label %34

34:                                               ; preds = %30
  %35 = tail call i64 @fwrite(ptr nonnull @.str.7, i64 9, i64 1, ptr %0)
  br label %36

36:                                               ; preds = %34, %30
  %37 = load i8, ptr %24, align 4
  %38 = and i8 %37, 8
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %42, label %40

40:                                               ; preds = %36
  %41 = tail call i64 @fwrite(ptr nonnull @.str.8, i64 10, i64 1, ptr %0)
  br label %42

42:                                               ; preds = %40, %36
  %43 = load i8, ptr %24, align 4
  %44 = and i8 %43, 16
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %48, label %46

46:                                               ; preds = %42
  %47 = tail call i64 @fwrite(ptr nonnull @.str.9, i64 7, i64 1, ptr %0)
  br label %48

48:                                               ; preds = %46, %42
  %49 = load i8, ptr %24, align 4
  %50 = and i8 %49, 32
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %54, label %52

52:                                               ; preds = %48
  %53 = tail call i64 @fwrite(ptr nonnull @.str.10, i64 19, i64 1, ptr %0)
  br label %54

54:                                               ; preds = %52, %48
  %55 = tail call i32 @fputc(i32 10, ptr %0)
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #1

; Function Attrs: cold nounwind uwtable
define dso_local noundef i32 @cgraph_variable_initializer_availability(ptr nocapture noundef readonly %0) local_unnamed_addr #9 !prof !52 {
  %2 = load i8, ptr @cgraph_function_flags_ready, align 1, !tbaa !64
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 326, ptr noundef nonnull @.str.1) #14
  br label %5

5:                                                ; preds = %1, %4
  %6 = getelementptr inbounds %struct.varpool_node, ptr %0, i64 0, i32 5
  %7 = load i8, ptr %6, align 4
  %8 = and i8 %7, 8
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %26, label %10

10:                                               ; preds = %5
  %11 = load ptr, ptr %0, align 8, !tbaa !80
  %12 = load i64, ptr %11, align 8
  %13 = and i64 %12, 134217728
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %26, label %15

15:                                               ; preds = %10
  %16 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 49), align 8, !tbaa !93
  %17 = tail call zeroext i8 %16(ptr noundef nonnull %11) #14
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %15
  %20 = load ptr, ptr %0, align 8, !tbaa !80
  %21 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %20, i64 0, i32 4
  %22 = load i32, ptr %21, align 8
  %23 = and i32 %22, 512
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %19, %15
  br label %26

26:                                               ; preds = %19, %10, %5, %25
  %27 = phi i32 [ 3, %25 ], [ 1, %5 ], [ 3, %10 ], [ 2, %19 ]
  ret i32 %27
}

; Function Attrs: cold nounwind uwtable
define dso_local void @dump_varpool(ptr nocapture noundef %0) local_unnamed_addr #9 !prof !52 {
  %2 = tail call i64 @fwrite(ptr nonnull @.str.12, i64 16, i64 1, ptr %0)
  %3 = load ptr, ptr @varpool_nodes, align 8, !tbaa !53
  %4 = icmp eq ptr %3, null
  br i1 %4, label %10, label %5

5:                                                ; preds = %1, %5
  %6 = phi ptr [ %8, %5 ], [ %3, %1 ]
  tail call void @dump_varpool_node(ptr noundef %0, ptr noundef nonnull %6)
  %7 = getelementptr inbounds %struct.varpool_node, ptr %6, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !53
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %5, !llvm.loop !105

10:                                               ; preds = %5, %1
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @debug_varpool() local_unnamed_addr #9 !prof !52 {
  %1 = load ptr, ptr @stderr, align 8, !tbaa !53
  %2 = tail call i64 @fwrite(ptr nonnull @.str.12, i64 16, i64 1, ptr %1) #15
  %3 = load ptr, ptr @varpool_nodes, align 8, !tbaa !53
  %4 = icmp eq ptr %3, null
  br i1 %4, label %10, label %5

5:                                                ; preds = %0, %5
  %6 = phi ptr [ %8, %5 ], [ %3, %0 ]
  tail call void @dump_varpool_node(ptr noundef %1, ptr noundef nonnull %6)
  %7 = getelementptr inbounds %struct.varpool_node, ptr %6, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !53
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %5, !llvm.loop !105

10:                                               ; preds = %5, %0
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local noundef ptr @varpool_node_for_asm(ptr noundef %0) local_unnamed_addr #9 !prof !52 {
  %2 = load ptr, ptr @varpool_nodes, align 8, !tbaa !53
  %3 = icmp eq ptr %2, null
  br i1 %3, label %13, label %4

4:                                                ; preds = %1, %9
  %5 = phi ptr [ %11, %9 ], [ %2, %1 ]
  %6 = load ptr, ptr %5, align 8, !tbaa !80
  %7 = tail call zeroext i8 @decl_assembler_name_equal(ptr noundef %6, ptr noundef %0) #14
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.varpool_node, ptr %5, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !53
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %4, !llvm.loop !106

13:                                               ; preds = %4, %9, %1
  %14 = phi ptr [ null, %1 ], [ %5, %4 ], [ null, %9 ]
  ret ptr %14
}

declare zeroext i8 @decl_assembler_name_equal(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @varpool_mark_needed_node(ptr noundef %0) local_unnamed_addr #10 !prof !107 {
  %2 = getelementptr inbounds %struct.varpool_node, ptr %0, i64 0, i32 5
  %3 = load i8, ptr %2, align 4
  %4 = and i8 %3, 64
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %11, label %6, !prof !108

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.varpool_node, ptr %0, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !109
  %9 = icmp eq ptr %8, null
  %10 = select i1 %9, ptr %0, ptr %8
  br label %11

11:                                               ; preds = %6, %1
  %12 = phi ptr [ %0, %1 ], [ %10, %6 ]
  %13 = getelementptr inbounds %struct.varpool_node, ptr %12, i64 0, i32 5
  %14 = load i8, ptr %13, align 4
  %15 = and i8 %14, 9
  %16 = icmp eq i8 %15, 8
  br i1 %16, label %17, label %38, !prof !110

17:                                               ; preds = %11
  %18 = load ptr, ptr %12, align 8, !tbaa !80
  %19 = load i64, ptr %18, align 8
  %20 = and i64 %19, 4194304
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %38, !prof !111

22:                                               ; preds = %17
  %23 = load ptr, ptr @varpool_last_needed_node, align 8, !tbaa !53
  %24 = icmp eq ptr %23, null
  br i1 %24, label %27, label %25, !prof !112

25:                                               ; preds = %22
  %26 = getelementptr inbounds %struct.varpool_node, ptr %23, i64 0, i32 2
  store ptr %12, ptr %26, align 8, !tbaa !113
  br label %27

27:                                               ; preds = %25, %22
  store ptr %12, ptr @varpool_last_needed_node, align 8, !tbaa !53
  %28 = getelementptr inbounds %struct.varpool_node, ptr %12, i64 0, i32 2
  store ptr null, ptr %28, align 8, !tbaa !113
  %29 = load ptr, ptr @varpool_nodes_queue, align 8, !tbaa !53
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %32, !prof !112

31:                                               ; preds = %27
  store ptr %12, ptr @varpool_nodes_queue, align 8, !tbaa !53
  br label %32

32:                                               ; preds = %31, %27
  %33 = load ptr, ptr @varpool_first_unanalyzed_node, align 8, !tbaa !53
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %36, !prof !114

35:                                               ; preds = %32
  store ptr %12, ptr @varpool_first_unanalyzed_node, align 8, !tbaa !53
  br label %36

36:                                               ; preds = %32, %35
  %37 = load ptr, ptr %12, align 8, !tbaa !80
  tail call void @notice_global_symbol(ptr noundef %37) #14
  br label %38

38:                                               ; preds = %36, %17, %11
  %39 = load i8, ptr %13, align 4
  %40 = or i8 %39, 1
  store i8 %40, ptr %13, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @decide_is_variable_needed(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #10 !prof !115 {
  %3 = getelementptr inbounds %struct.varpool_node, ptr %0, i64 0, i32 5
  %4 = load i8, ptr %3, align 4
  %5 = and i8 %4, 32
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %12, label %7, !prof !116

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %1, i64 0, i32 4
  %9 = load i32, ptr %8, align 8
  %10 = and i32 %9, 512
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %78, label %12, !prof !117

12:                                               ; preds = %7, %2
  %13 = and i8 %4, 2
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %15, label %78, !prof !118

15:                                               ; preds = %12
  %16 = load i64, ptr %1, align 8
  %17 = and i64 %16, 65535
  %18 = getelementptr inbounds [191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 %17, i64 13
  %19 = load i8, ptr %18, align 1, !tbaa !64
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %30, label %21, !prof !119

21:                                               ; preds = %15
  %22 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %1, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !64
  %24 = icmp eq ptr %23, null
  br i1 %24, label %30, label %25, !prof !120

25:                                               ; preds = %21
  %26 = tail call ptr @decl_assembler_name(ptr noundef nonnull %1) #14
  %27 = load i64, ptr %26, align 8
  %28 = and i64 %27, 67108864
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %78

30:                                               ; preds = %25, %21, %15
  %31 = load i64, ptr %1, align 8
  %32 = and i64 %31, 134217728
  %33 = icmp eq i64 %32, 0
  %34 = load i32, ptr @flag_whole_program, align 4
  %35 = icmp ne i32 %34, 0
  %36 = select i1 %33, i1 true, i1 %35, !prof !121
  %37 = load i32, ptr @flag_lto, align 4
  %38 = icmp ne i32 %37, 0
  %39 = select i1 %36, i1 true, i1 %38, !prof !121
  %40 = load i32, ptr @flag_whopr, align 4
  %41 = icmp ne i32 %40, 0
  %42 = select i1 %39, i1 true, i1 %41, !prof !121
  br i1 %42, label %53, label %43, !prof !121

43:                                               ; preds = %30
  %44 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %1, i64 0, i32 4
  %45 = load i32, ptr %44, align 8
  %46 = and i32 %45, 512
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %53, !prof !117

48:                                               ; preds = %43
  %49 = getelementptr inbounds %struct.tree_decl_common, ptr %1, i64 0, i32 2
  %50 = load i64, ptr %49, align 8
  %51 = and i64 %50, 33554432
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %78, label %53, !prof !117

53:                                               ; preds = %48, %43, %30
  %54 = load i8, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 113), align 4, !tbaa !122
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %56, label %69, !prof !123

56:                                               ; preds = %53
  %57 = and i64 %31, 65535
  %58 = icmp eq i64 %57, 32
  br i1 %58, label %59, label %69

59:                                               ; preds = %56
  %60 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %1, i64 0, i32 4
  %61 = load i32, ptr %60, align 8
  %62 = and i32 %61, 49152
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %69, label %64

64:                                               ; preds = %59
  %65 = tail call ptr @emutls_decl(ptr noundef nonnull %1) #14
  %66 = tail call ptr @varpool_node(ptr noundef %65)
  %67 = tail call zeroext i8 @decide_is_variable_needed(ptr noundef %66, ptr noundef %65), !range !124
  %68 = icmp eq i8 %67, 0
  br i1 %68, label %69, label %78

69:                                               ; preds = %64, %59, %56, %53
  %70 = load i32, ptr @flag_toplevel_reorder, align 4, !tbaa !68
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %78, !prof !123

72:                                               ; preds = %69
  %73 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %1, i64 0, i32 4
  %74 = load i32, ptr %73, align 8
  %75 = and i32 %74, 512
  %76 = icmp eq i32 %75, 0
  %77 = zext i1 %76 to i8
  br label %78

78:                                               ; preds = %25, %64, %72, %69, %48, %7, %12
  %79 = phi i8 [ 1, %64 ], [ 1, %12 ], [ 1, %7 ], [ 1, %48 ], [ 0, %69 ], [ %77, %72 ], [ 1, %25 ]
  ret i8 %79
}

declare ptr @decl_assembler_name(ptr noundef) local_unnamed_addr #3

declare ptr @emutls_decl(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @varpool_finalize_decl(ptr noundef %0) local_unnamed_addr #10 !prof !125 {
  %2 = tail call ptr @varpool_node(ptr noundef %0)
  %3 = load i8, ptr @in_lto_p, align 1, !tbaa !64
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %9, label %5, !prof !120

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.varpool_node, ptr %2, i64 0, i32 5
  %7 = load i8, ptr %6, align 4
  %8 = or i8 %7, 4
  store i8 %8, ptr %6, align 4
  br label %9

9:                                                ; preds = %5, %1
  %10 = getelementptr inbounds %struct.varpool_node, ptr %2, i64 0, i32 5
  %11 = load i8, ptr %10, align 4
  %12 = and i8 %11, 8
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %17, label %14, !prof !120

14:                                               ; preds = %9
  %15 = load i8, ptr @cgraph_global_info_ready, align 1, !tbaa !64
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %61, label %59

17:                                               ; preds = %9
  %18 = and i8 %11, 1
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %36, label %20, !prof !126

20:                                               ; preds = %17
  %21 = load ptr, ptr @varpool_last_needed_node, align 8, !tbaa !53
  %22 = icmp eq ptr %21, null
  br i1 %22, label %25, label %23, !prof !112

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.varpool_node, ptr %21, i64 0, i32 2
  store ptr %2, ptr %24, align 8, !tbaa !113
  br label %25

25:                                               ; preds = %23, %20
  store ptr %2, ptr @varpool_last_needed_node, align 8, !tbaa !53
  %26 = getelementptr inbounds %struct.varpool_node, ptr %2, i64 0, i32 2
  store ptr null, ptr %26, align 8, !tbaa !113
  %27 = load ptr, ptr @varpool_nodes_queue, align 8, !tbaa !53
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %30, !prof !112

29:                                               ; preds = %25
  store ptr %2, ptr @varpool_nodes_queue, align 8, !tbaa !53
  br label %30

30:                                               ; preds = %29, %25
  %31 = load ptr, ptr @varpool_first_unanalyzed_node, align 8, !tbaa !53
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %34, !prof !114

33:                                               ; preds = %30
  store ptr %2, ptr @varpool_first_unanalyzed_node, align 8, !tbaa !53
  br label %34

34:                                               ; preds = %30, %33
  %35 = load ptr, ptr %2, align 8, !tbaa !80
  tail call void @notice_global_symbol(ptr noundef %35) #14
  br label %36

36:                                               ; preds = %34, %17
  %37 = load i8, ptr %10, align 4
  %38 = or i8 %37, 8
  store i8 %38, ptr %10, align 4
  %39 = tail call zeroext i8 @decide_is_variable_needed(ptr noundef %2, ptr noundef %0), !range !124
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %41, label %55, !prof !121

41:                                               ; preds = %36
  %42 = load i64, ptr %0, align 8
  %43 = and i64 %42, 134217728
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %56, label %45, !prof !127

45:                                               ; preds = %41
  %46 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %0, i64 0, i32 4
  %47 = load i32, ptr %46, align 8
  %48 = and i32 %47, 512
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %45
  %51 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 2
  %52 = load i64, ptr %51, align 8
  %53 = and i64 %52, 33554432
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %50, %36
  tail call void @varpool_mark_needed_node(ptr noundef %2)
  br label %56

56:                                               ; preds = %55, %41, %45, %50
  %57 = load i8, ptr @cgraph_global_info_ready, align 1, !tbaa !64
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %61, label %59, !prof !120

59:                                               ; preds = %56, %14
  %60 = tail call zeroext i8 @varpool_assemble_pending_decls(), !range !124
  br label %61

61:                                               ; preds = %59, %56, %14
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @varpool_assemble_pending_decls() local_unnamed_addr #10 !prof !128 {
  %1 = load ptr, ptr @global_dc, align 8, !tbaa !53
  %2 = getelementptr inbounds %struct.diagnostic_context, ptr %1, i64 0, i32 1, i64 4
  %3 = load i32, ptr %2, align 8, !tbaa !68
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %27, !prof !129

5:                                                ; preds = %0
  %6 = getelementptr inbounds %struct.diagnostic_context, ptr %1, i64 0, i32 1, i64 5
  %7 = load i32, ptr %6, align 4, !tbaa !68
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %27, !prof !129

9:                                                ; preds = %5
  %10 = tail call zeroext i8 @varpool_analyze_pending_decls(), !range !124
  %11 = load ptr, ptr @varpool_nodes_queue, align 8, !tbaa !53
  %12 = icmp eq ptr %11, null
  br i1 %12, label %25, label %13, !prof !130

13:                                               ; preds = %9, %21
  %14 = phi ptr [ %23, %21 ], [ %11, %9 ]
  %15 = phi i8 [ %22, %21 ], [ 0, %9 ]
  %16 = getelementptr inbounds %struct.varpool_node, ptr %14, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !113
  store ptr %17, ptr @varpool_nodes_queue, align 8, !tbaa !53
  %18 = tail call zeroext i8 @varpool_assemble_decl(ptr noundef nonnull %14), !range !124
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %20, label %21, !prof !119

20:                                               ; preds = %13
  store ptr null, ptr %16, align 8, !tbaa !113
  br label %21

21:                                               ; preds = %13, %20
  %22 = phi i8 [ %15, %20 ], [ 1, %13 ]
  %23 = load ptr, ptr @varpool_nodes_queue, align 8, !tbaa !53
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %13, !prof !131, !llvm.loop !132

25:                                               ; preds = %21, %9
  %26 = phi i8 [ 0, %9 ], [ %22, %21 ]
  store ptr null, ptr @varpool_last_needed_node, align 8, !tbaa !53
  br label %27

27:                                               ; preds = %0, %5, %25
  %28 = phi i8 [ %26, %25 ], [ 0, %5 ], [ 0, %0 ]
  ret i8 %28
}

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i8 @varpool_analyze_pending_decls() local_unnamed_addr #10 !prof !133 {
  %1 = load i8, ptr @timevar_enable, align 1, !tbaa !64
  %2 = icmp eq i8 %1, 0
  br i1 %2, label %4, label %3, !prof !134

3:                                                ; preds = %0
  tail call void @timevar_push_1(i32 noundef 4) #14
  br label %4

4:                                                ; preds = %3, %0
  %5 = load ptr, ptr @varpool_first_unanalyzed_node, align 8, !tbaa !53
  %6 = icmp eq ptr %5, null
  br i1 %6, label %31, label %7, !prof !135

7:                                                ; preds = %4, %28
  %8 = phi ptr [ %29, %28 ], [ %5, %4 ]
  %9 = load ptr, ptr %8, align 8, !tbaa !80
  %10 = getelementptr inbounds %struct.varpool_node, ptr %8, i64 0, i32 5
  %11 = load i8, ptr %10, align 4
  %12 = lshr i8 %11, 2
  %13 = and i8 %12, 1
  %14 = or i8 %11, 4
  store i8 %14, ptr %10, align 4
  %15 = getelementptr inbounds %struct.varpool_node, ptr %8, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !113
  store ptr %16, ptr @varpool_first_unanalyzed_node, align 8, !tbaa !53
  %17 = icmp eq i8 %13, 0
  br i1 %17, label %18, label %23, !prof !136

18:                                               ; preds = %7
  %19 = load i8, ptr @in_lto_p, align 1, !tbaa !64
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %22, label %21, !prof !120

21:                                               ; preds = %18
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 361, ptr noundef nonnull @.str.1) #14
  br label %22

22:                                               ; preds = %18, %21
  tail call void @align_variable(ptr noundef %9, i8 noundef zeroext 0) #14
  br label %23

23:                                               ; preds = %22, %7
  %24 = getelementptr inbounds %struct.tree_decl_common, ptr %9, i64 0, i32 5
  %25 = load ptr, ptr %24, align 8, !tbaa !64
  %26 = icmp eq ptr %25, null
  br i1 %26, label %28, label %27, !prof !137

27:                                               ; preds = %23
  tail call void @record_references_in_initializer(ptr noundef %9, i8 noundef zeroext %13) #14
  br label %28

28:                                               ; preds = %27, %23
  %29 = load ptr, ptr @varpool_first_unanalyzed_node, align 8, !tbaa !53
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %7, !prof !138, !llvm.loop !139

31:                                               ; preds = %28, %4
  %32 = phi i8 [ 0, %4 ], [ 1, %28 ]
  %33 = load i8, ptr @timevar_enable, align 1, !tbaa !64
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %36, label %35, !prof !134

35:                                               ; preds = %31
  tail call void @timevar_pop_1(i32 noundef 4) #14
  br label %36

36:                                               ; preds = %35, %31
  ret i8 %32
}

declare void @timevar_push_1(i32 noundef) local_unnamed_addr #3

declare void @align_variable(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

declare void @record_references_in_initializer(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

declare void @timevar_pop_1(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i8 @varpool_assemble_decl(ptr noundef %0) local_unnamed_addr #10 !prof !125 {
  %2 = load ptr, ptr %0, align 8, !tbaa !80
  %3 = load i64, ptr %2, align 8
  %4 = and i64 %3, 4194304
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %6, label %62, !prof !120

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.varpool_node, ptr %0, i64 0, i32 5
  %8 = load i8, ptr %7, align 4
  %9 = and i8 %8, 64
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %62, !prof !120

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.tree_decl_common, ptr %2, i64 0, i32 2
  %13 = load i64, ptr %12, align 8
  %14 = and i64 %13, 33554432
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %62, !prof !120

16:                                               ; preds = %11
  %17 = and i64 %3, 65535
  %18 = icmp ne i64 %17, 32
  %19 = and i64 %13, 67108864
  %20 = icmp eq i64 %19, 0
  %21 = or i1 %18, %20
  br i1 %21, label %22, label %62, !prof !120

22:                                               ; preds = %16
  tail call void @assemble_variable(ptr noundef nonnull %2, i32 noundef 0, i32 noundef 1, i32 noundef 0) #14
  %23 = load i64, ptr %2, align 8
  %24 = and i64 %23, 4194304
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %62, label %26, !prof !119

26:                                               ; preds = %22
  %27 = load ptr, ptr @varpool_assembled_nodes_queue, align 8, !tbaa !53
  %28 = getelementptr inbounds %struct.varpool_node, ptr %0, i64 0, i32 2
  store ptr %27, ptr %28, align 8, !tbaa !113
  store ptr %0, ptr @varpool_assembled_nodes_queue, align 8, !tbaa !53
  %29 = load i8, ptr %7, align 4
  %30 = or i8 %29, 8
  store i8 %30, ptr %7, align 4
  %31 = getelementptr inbounds %struct.varpool_node, ptr %0, i64 0, i32 3
  %32 = load ptr, ptr %31, align 8, !tbaa !53
  %33 = icmp eq ptr %32, null
  br i1 %33, label %62, label %34, !prof !117

34:                                               ; preds = %26, %34
  %35 = phi ptr [ %60, %34 ], [ %32, %26 ]
  %36 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %2, i64 0, i32 4
  %37 = load i32, ptr %36, align 8
  %38 = and i32 %37, 128
  %39 = load ptr, ptr %35, align 8, !tbaa !80
  %40 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %39, i64 0, i32 4
  %41 = load i32, ptr %40, align 8
  %42 = and i32 %41, -129
  %43 = or disjoint i32 %42, %38
  store i32 %43, ptr %40, align 8
  %44 = load i64, ptr %2, align 8
  %45 = and i64 %44, 134217728
  %46 = load ptr, ptr %35, align 8, !tbaa !80
  %47 = load i64, ptr %46, align 8
  %48 = and i64 %47, -134217729
  %49 = or disjoint i64 %48, %45
  store i64 %49, ptr %46, align 8
  %50 = load i32, ptr %36, align 8
  %51 = and i32 %50, 3072
  %52 = load ptr, ptr %35, align 8, !tbaa !80
  %53 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %52, i64 0, i32 4
  %54 = load i32, ptr %53, align 8
  %55 = and i32 %54, -3073
  %56 = or disjoint i32 %55, %51
  store i32 %56, ptr %53, align 8
  %57 = load ptr, ptr %35, align 8, !tbaa !80
  %58 = tail call ptr @decl_assembler_name(ptr noundef nonnull %2) #14
  tail call void @assemble_alias(ptr noundef %57, ptr noundef %58) #14
  %59 = getelementptr inbounds %struct.varpool_node, ptr %35, i64 0, i32 1
  %60 = load ptr, ptr %59, align 8, !tbaa !53
  %61 = icmp eq ptr %60, null
  br i1 %61, label %62, label %34, !prof !117, !llvm.loop !140

62:                                               ; preds = %34, %26, %1, %6, %11, %22, %16
  %63 = phi i8 [ 0, %16 ], [ 0, %22 ], [ 0, %11 ], [ 0, %6 ], [ 0, %1 ], [ 1, %26 ], [ 1, %34 ]
  ret i8 %63
}

declare void @assemble_variable(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @assemble_alias(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @varpool_remove_unreferenced_decls() local_unnamed_addr #10 !prof !141 {
  %1 = load ptr, ptr @varpool_nodes_queue, align 8, !tbaa !53
  store ptr null, ptr @varpool_last_needed_node, align 8, !tbaa !53
  store ptr null, ptr @varpool_nodes_queue, align 8, !tbaa !53
  store ptr null, ptr @varpool_first_unanalyzed_node, align 8, !tbaa !53
  %2 = load ptr, ptr @global_dc, align 8, !tbaa !53
  %3 = getelementptr inbounds %struct.diagnostic_context, ptr %2, i64 0, i32 1, i64 4
  %4 = load i32, ptr %3, align 8, !tbaa !68
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %78, !prof !117

6:                                                ; preds = %0
  %7 = getelementptr inbounds %struct.diagnostic_context, ptr %2, i64 0, i32 1, i64 5
  %8 = load i32, ptr %7, align 4, !tbaa !68
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %78, !prof !117

10:                                               ; preds = %6
  %11 = icmp eq ptr %1, null
  br i1 %11, label %76, label %12, !prof !130

12:                                               ; preds = %10, %74
  %13 = phi ptr [ %16, %74 ], [ %1, %10 ]
  %14 = load ptr, ptr %13, align 8, !tbaa !80
  %15 = getelementptr inbounds %struct.varpool_node, ptr %13, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !113
  %17 = getelementptr inbounds %struct.varpool_node, ptr %13, i64 0, i32 5
  %18 = load i8, ptr %17, align 4
  %19 = and i8 %18, -2
  store i8 %19, ptr %17, align 4
  %20 = and i8 %18, 8
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %74, label %22, !prof !119

22:                                               ; preds = %12
  %23 = tail call zeroext i8 @decide_is_variable_needed(ptr noundef nonnull %13, ptr noundef %14), !range !124
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %25, label %35, !prof !119

25:                                               ; preds = %22
  %26 = load i64, ptr %14, align 8
  %27 = and i64 %26, 65535
  %28 = getelementptr inbounds [191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 %27, i64 11
  %29 = load i8, ptr %28, align 1, !tbaa !64
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %74, label %31

31:                                               ; preds = %25
  %32 = getelementptr inbounds %struct.tree_decl_with_rtl, ptr %14, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !64
  %34 = icmp eq ptr %33, null
  br i1 %34, label %74, label %35

35:                                               ; preds = %31, %22
  %36 = load i8, ptr %17, align 4
  %37 = and i8 %36, 64
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %44, label %39, !prof !108

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.varpool_node, ptr %13, i64 0, i32 3
  %41 = load ptr, ptr %40, align 8, !tbaa !109
  %42 = icmp eq ptr %41, null
  %43 = select i1 %42, ptr %13, ptr %41
  br label %44

44:                                               ; preds = %39, %35
  %45 = phi ptr [ %13, %35 ], [ %43, %39 ]
  %46 = getelementptr inbounds %struct.varpool_node, ptr %45, i64 0, i32 5
  %47 = load i8, ptr %46, align 4
  %48 = and i8 %47, 9
  %49 = icmp eq i8 %48, 8
  br i1 %49, label %50, label %71, !prof !110

50:                                               ; preds = %44
  %51 = load ptr, ptr %45, align 8, !tbaa !80
  %52 = load i64, ptr %51, align 8
  %53 = and i64 %52, 4194304
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %55, label %71, !prof !111

55:                                               ; preds = %50
  %56 = load ptr, ptr @varpool_last_needed_node, align 8, !tbaa !53
  %57 = icmp eq ptr %56, null
  br i1 %57, label %60, label %58, !prof !112

58:                                               ; preds = %55
  %59 = getelementptr inbounds %struct.varpool_node, ptr %56, i64 0, i32 2
  store ptr %45, ptr %59, align 8, !tbaa !113
  br label %60

60:                                               ; preds = %58, %55
  store ptr %45, ptr @varpool_last_needed_node, align 8, !tbaa !53
  %61 = getelementptr inbounds %struct.varpool_node, ptr %45, i64 0, i32 2
  store ptr null, ptr %61, align 8, !tbaa !113
  %62 = load ptr, ptr @varpool_nodes_queue, align 8, !tbaa !53
  %63 = icmp eq ptr %62, null
  br i1 %63, label %64, label %65, !prof !112

64:                                               ; preds = %60
  store ptr %45, ptr @varpool_nodes_queue, align 8, !tbaa !53
  br label %65

65:                                               ; preds = %64, %60
  %66 = load ptr, ptr @varpool_first_unanalyzed_node, align 8, !tbaa !53
  %67 = icmp eq ptr %66, null
  br i1 %67, label %68, label %69, !prof !114

68:                                               ; preds = %65
  store ptr %45, ptr @varpool_first_unanalyzed_node, align 8, !tbaa !53
  br label %69

69:                                               ; preds = %68, %65
  %70 = load ptr, ptr %45, align 8, !tbaa !80
  tail call void @notice_global_symbol(ptr noundef %70) #14
  br label %71

71:                                               ; preds = %44, %50, %69
  %72 = load i8, ptr %46, align 4
  %73 = or i8 %72, 1
  store i8 %73, ptr %46, align 4
  br label %74

74:                                               ; preds = %71, %31, %25, %12
  %75 = icmp eq ptr %16, null
  br i1 %75, label %76, label %12, !prof !142, !llvm.loop !143

76:                                               ; preds = %74, %10
  tail call void @finish_aliases_1() #14
  %77 = tail call zeroext i8 @varpool_analyze_pending_decls(), !range !124
  br label %78

78:                                               ; preds = %0, %6, %76
  ret void
}

declare void @finish_aliases_1() local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @varpool_empty_needed_queue() local_unnamed_addr #9 !prof !52 {
  %1 = tail call zeroext i8 @varpool_analyze_pending_decls(), !range !124
  %2 = load ptr, ptr @varpool_nodes_queue, align 8, !tbaa !53
  %3 = icmp eq ptr %2, null
  br i1 %3, label %10, label %4

4:                                                ; preds = %0, %4
  %5 = phi ptr [ %7, %4 ], [ %2, %0 ]
  %6 = getelementptr inbounds %struct.varpool_node, ptr %5, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !113
  store ptr null, ptr %6, align 8, !tbaa !113
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %4, !llvm.loop !144

9:                                                ; preds = %4
  store ptr %7, ptr @varpool_nodes_queue, align 8, !tbaa !53
  br label %10

10:                                               ; preds = %9, %0
  store ptr null, ptr @varpool_last_needed_node, align 8, !tbaa !53
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local ptr @add_new_static_var(ptr noundef %0) local_unnamed_addr #9 !prof !52 {
  %2 = tail call ptr @create_tmp_var(ptr noundef %0, ptr noundef null) #14
  %3 = tail call ptr @create_tmp_var_name(ptr noundef null) #14
  %4 = getelementptr inbounds %struct.tree_decl_minimal, ptr %2, i64 0, i32 3
  store ptr %3, ptr %4, align 8, !tbaa !64
  %5 = load i64, ptr %2, align 8
  %6 = and i64 %5, -84934657
  %7 = or disjoint i64 %6, 83886080
  store i64 %7, ptr %2, align 8
  %8 = getelementptr inbounds %struct.tree_decl_minimal, ptr %2, i64 0, i32 4
  store ptr null, ptr %8, align 8, !tbaa !64
  %9 = getelementptr inbounds %struct.tree_decl_common, ptr %2, i64 0, i32 2
  %10 = load i64, ptr %9, align 8
  %11 = and i64 %10, -2049
  store i64 %11, ptr %9, align 8
  %12 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 15), align 8, !tbaa !145
  tail call void %12(ptr noundef nonnull %2) #14
  %13 = tail call ptr @create_var_ann(ptr noundef nonnull %2) #14
  %14 = tail call ptr @varpool_node(ptr noundef nonnull %2)
  tail call void @varpool_mark_needed_node(ptr noundef %14)
  %15 = tail call zeroext i8 @add_referenced_var(ptr noundef nonnull %2) #14
  tail call void @varpool_finalize_decl(ptr noundef nonnull %2)
  %16 = load ptr, ptr %14, align 8, !tbaa !80
  ret ptr %16
}

declare ptr @create_tmp_var(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @create_tmp_var_name(ptr noundef) local_unnamed_addr #3

declare ptr @create_var_ann(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @add_referenced_var(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local noundef zeroext i8 @varpool_extra_name_alias(ptr noundef %0, ptr noundef %1) local_unnamed_addr #9 !prof !52 {
  %3 = alloca %struct.varpool_node, align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #14
  %4 = load i64, ptr %1, align 8
  %5 = and i64 %4, 65535
  %6 = icmp eq i64 %5, 32
  br i1 %6, label %8, label %7

7:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 538, ptr noundef nonnull @.str.1) #14
  br label %8

8:                                                ; preds = %2, %7
  %9 = load i64, ptr %0, align 8
  %10 = and i64 %9, 65535
  %11 = icmp eq i64 %10, 32
  br i1 %11, label %13, label %12

12:                                               ; preds = %8
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 539, ptr noundef nonnull @.str.1) #14
  br label %13

13:                                               ; preds = %8, %12
  %14 = tail call ptr @varpool_node(ptr noundef nonnull %1)
  store ptr %0, ptr %3, align 8, !tbaa !80
  %15 = load ptr, ptr @varpool_hash, align 8, !tbaa !53
  %16 = call ptr @htab_find_slot(ptr noundef %15, ptr noundef nonnull %3, i32 noundef 1) #14
  %17 = load ptr, ptr %16, align 8, !tbaa !53
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %28

19:                                               ; preds = %13
  %20 = call ptr @ggc_alloc_cleared_stat(i64 noundef 40) #14
  store ptr %0, ptr %20, align 8, !tbaa !80
  %21 = getelementptr inbounds %struct.varpool_node, ptr %20, i64 0, i32 5
  %22 = load i8, ptr %21, align 4
  %23 = or i8 %22, 64
  store i8 %23, ptr %21, align 4
  %24 = getelementptr inbounds %struct.varpool_node, ptr %20, i64 0, i32 3
  store ptr %14, ptr %24, align 8, !tbaa !109
  %25 = getelementptr inbounds %struct.varpool_node, ptr %14, i64 0, i32 3
  %26 = load ptr, ptr %25, align 8, !tbaa !109
  %27 = getelementptr inbounds %struct.varpool_node, ptr %20, i64 0, i32 1
  store ptr %26, ptr %27, align 8, !tbaa !87
  store ptr %20, ptr %25, align 8, !tbaa !109
  store ptr %20, ptr %16, align 8, !tbaa !53
  br label %28

28:                                               ; preds = %13, %19
  %29 = phi i8 [ 1, %19 ], [ 0, %13 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #14
  ret i8 %29
}

declare void @gt_ggc_mx_varpool_node(ptr noundef) #3

declare void @gt_pch_nx_varpool_node(ptr noundef) #3

declare void @gt_ggc_m_P12varpool_node4htab(ptr noundef) #3

declare void @gt_pch_n_P12varpool_node4htab(ptr noundef) #3

declare void @notice_global_symbol(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #13

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #13

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
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree nounwind }
attributes #14 = { nounwind }
attributes #15 = { cold }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!51}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50}
!35 = !{ptr @varpool_node, ptr @htab_create_alloc, i64 1}
!36 = !{ptr @varpool_node, ptr @htab_find_slot, i64 77410}
!37 = !{ptr @varpool_node, ptr @ggc_alloc_cleared_stat, i64 46}
!38 = !{ptr @varpool_mark_needed_node, ptr @notice_global_symbol, i64 40}
!39 = !{ptr @varpool_finalize_decl, ptr @varpool_node, i64 39}
!40 = !{ptr @varpool_finalize_decl, ptr @notice_global_symbol, i64 38}
!41 = !{ptr @varpool_finalize_decl, ptr @decide_is_variable_needed, i64 39}
!42 = !{ptr @varpool_finalize_decl, ptr @varpool_mark_needed_node, i64 1}
!43 = !{ptr @varpool_assemble_pending_decls, ptr @varpool_analyze_pending_decls, i64 2}
!44 = !{ptr @varpool_assemble_pending_decls, ptr @varpool_assemble_decl, i64 39}
!45 = !{ptr @varpool_analyze_pending_decls, ptr @align_variable, i64 39}
!46 = !{ptr @varpool_analyze_pending_decls, ptr @record_references_in_initializer, i64 78}
!47 = !{ptr @varpool_assemble_decl, ptr @assemble_variable, i64 39}
!48 = !{ptr @varpool_remove_unreferenced_decls, ptr @decide_is_variable_needed, i64 39}
!49 = !{ptr @varpool_remove_unreferenced_decls, ptr @finish_aliases_1, i64 1}
!50 = !{ptr @varpool_remove_unreferenced_decls, ptr @varpool_analyze_pending_decls, i64 1}
!51 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!52 = !{!"function_entry_count", i64 0}
!53 = !{!54, !54, i64 0}
!54 = !{!"any pointer", !55, i64 0}
!55 = !{!"omnipotent char", !56, i64 0}
!56 = !{!"Simple C/C++ TBAA"}
!57 = !{!58, !54, i64 8}
!58 = !{!"_IO_FILE", !59, i64 0, !54, i64 8, !54, i64 16, !54, i64 24, !54, i64 32, !54, i64 40, !54, i64 48, !54, i64 56, !54, i64 64, !54, i64 72, !54, i64 80, !54, i64 88, !54, i64 96, !54, i64 104, !59, i64 112, !59, i64 116, !60, i64 120, !61, i64 128, !55, i64 130, !55, i64 131, !54, i64 136, !60, i64 144, !54, i64 152, !54, i64 160, !54, i64 168, !54, i64 176, !60, i64 184, !59, i64 192, !55, i64 196}
!59 = !{!"int", !55, i64 0}
!60 = !{!"long", !55, i64 0}
!61 = !{!"short", !55, i64 0}
!62 = !{!58, !54, i64 16}
!63 = !{!"branch_weights", i32 2000, i32 1}
!64 = !{!55, !55, i64 0}
!65 = !{!58, !54, i64 40}
!66 = !{!58, !54, i64 48}
!67 = !{!58, !59, i64 0}
!68 = !{!59, !59, i64 0}
!69 = distinct !{!69, !70, !71}
!70 = !{!"llvm.loop.mustprogress"}
!71 = !{!"llvm.loop.unroll.disable"}
!72 = !{!73, !54, i64 176}
!73 = !{!"lang_hooks", !54, i64 0, !60, i64 8, !54, i64 16, !54, i64 24, !54, i64 32, !54, i64 40, !54, i64 48, !54, i64 56, !54, i64 64, !54, i64 72, !54, i64 80, !54, i64 88, !54, i64 96, !54, i64 104, !54, i64 112, !54, i64 120, !54, i64 128, !54, i64 136, !54, i64 144, !54, i64 152, !54, i64 160, !54, i64 168, !54, i64 176, !54, i64 184, !54, i64 192, !54, i64 200, !54, i64 208, !54, i64 216, !54, i64 224, !54, i64 232, !74, i64 240, !75, i64 248, !76, i64 256, !77, i64 272, !78, i64 432, !79, i64 560, !54, i64 584, !54, i64 592, !54, i64 600, !54, i64 608, !54, i64 616, !54, i64 624, !54, i64 632, !54, i64 640, !54, i64 648, !54, i64 656, !54, i64 664, !55, i64 672}
!74 = !{!"lang_hooks_for_tree_inlining", !54, i64 0}
!75 = !{!"lang_hooks_for_callgraph", !54, i64 0}
!76 = !{!"lang_hooks_for_tree_dump", !54, i64 0, !54, i64 8}
!77 = !{!"lang_hooks_for_decls", !54, i64 0, !54, i64 8, !54, i64 16, !54, i64 24, !54, i64 32, !54, i64 40, !54, i64 48, !54, i64 56, !54, i64 64, !54, i64 72, !54, i64 80, !54, i64 88, !54, i64 96, !54, i64 104, !54, i64 112, !54, i64 120, !54, i64 128, !54, i64 136, !54, i64 144, !54, i64 152}
!78 = !{!"lang_hooks_for_types", !54, i64 0, !54, i64 8, !54, i64 16, !54, i64 24, !54, i64 32, !54, i64 40, !54, i64 48, !54, i64 56, !54, i64 64, !54, i64 72, !54, i64 80, !54, i64 88, !54, i64 96, !54, i64 104, !54, i64 112, !55, i64 120}
!79 = !{!"lang_hooks_for_lto", !54, i64 0, !54, i64 8, !54, i64 16}
!80 = !{!81, !54, i64 0}
!81 = !{!"varpool_node", !54, i64 0, !54, i64 8, !54, i64 16, !54, i64 24, !59, i64 32, !59, i64 36, !59, i64 36, !59, i64 36, !59, i64 36, !59, i64 36, !59, i64 36, !59, i64 36}
!82 = !{!"function_entry_count", i64 77410}
!83 = !{!"branch_weights", i32 0, i32 77410}
!84 = !{!"branch_weights", i32 1, i32 77409}
!85 = !{!"branch_weights", i32 46, i32 77364}
!86 = !{!81, !59, i64 32}
!87 = !{!81, !54, i64 8}
!88 = !{!"function_entry_count", i64 77490}
!89 = !{!"varpool.c;hash_varpool_node"}
!90 = !{!"function_entry_count", i64 132610}
!91 = !{!"varpool.c;eq_varpool_node"}
!92 = !{i32 1, i32 4}
!93 = !{!94, !54, i64 1112}
!94 = !{!"gcc_target", !95, i64 0, !97, i64 368, !98, i64 664, !59, i64 744, !54, i64 752, !54, i64 760, !54, i64 768, !54, i64 776, !54, i64 784, !54, i64 792, !54, i64 800, !54, i64 808, !54, i64 816, !54, i64 824, !54, i64 832, !54, i64 840, !54, i64 848, !54, i64 856, !54, i64 864, !54, i64 872, !54, i64 880, !54, i64 888, !54, i64 896, !54, i64 904, !54, i64 912, !54, i64 920, !54, i64 928, !54, i64 936, !54, i64 944, !54, i64 952, !54, i64 960, !54, i64 968, !54, i64 976, !54, i64 984, !54, i64 992, !54, i64 1000, !54, i64 1008, !54, i64 1016, !54, i64 1024, !54, i64 1032, !54, i64 1040, !54, i64 1048, !54, i64 1056, !60, i64 1064, !60, i64 1072, !54, i64 1080, !54, i64 1088, !54, i64 1096, !54, i64 1104, !54, i64 1112, !54, i64 1120, !54, i64 1128, !54, i64 1136, !54, i64 1144, !54, i64 1152, !54, i64 1160, !54, i64 1168, !99, i64 1176, !54, i64 1232, !54, i64 1240, !54, i64 1248, !54, i64 1256, !54, i64 1264, !54, i64 1272, !54, i64 1280, !54, i64 1288, !54, i64 1296, !54, i64 1304, !54, i64 1312, !54, i64 1320, !54, i64 1328, !54, i64 1336, !54, i64 1344, !54, i64 1352, !54, i64 1360, !54, i64 1368, !54, i64 1376, !54, i64 1384, !54, i64 1392, !54, i64 1400, !54, i64 1408, !54, i64 1416, !54, i64 1424, !54, i64 1432, !54, i64 1440, !54, i64 1448, !54, i64 1456, !60, i64 1464, !100, i64 1472, !54, i64 1664, !54, i64 1672, !54, i64 1680, !54, i64 1688, !54, i64 1696, !54, i64 1704, !54, i64 1712, !54, i64 1720, !54, i64 1728, !54, i64 1736, !54, i64 1744, !54, i64 1752, !54, i64 1760, !54, i64 1768, !54, i64 1776, !101, i64 1784, !102, i64 1792, !103, i64 1896, !104, i64 1968, !54, i64 2016, !55, i64 2024, !55, i64 2025, !55, i64 2026, !55, i64 2027, !55, i64 2028, !55, i64 2029, !55, i64 2030, !55, i64 2031, !55, i64 2032, !55, i64 2033, !55, i64 2034, !55, i64 2035}
!95 = !{!"asm_out", !54, i64 0, !54, i64 8, !54, i64 16, !96, i64 24, !96, i64 56, !54, i64 88, !54, i64 96, !54, i64 104, !54, i64 112, !54, i64 120, !54, i64 128, !54, i64 136, !54, i64 144, !54, i64 152, !54, i64 160, !54, i64 168, !54, i64 176, !54, i64 184, !54, i64 192, !54, i64 200, !54, i64 208, !54, i64 216, !54, i64 224, !54, i64 232, !54, i64 240, !54, i64 248, !54, i64 256, !54, i64 264, !54, i64 272, !54, i64 280, !54, i64 288, !54, i64 296, !54, i64 304, !54, i64 312, !54, i64 320, !54, i64 328, !54, i64 336, !54, i64 344, !54, i64 352, !54, i64 360}
!96 = !{!"asm_int_op", !54, i64 0, !54, i64 8, !54, i64 16, !54, i64 24}
!97 = !{!"sched", !54, i64 0, !54, i64 8, !54, i64 16, !54, i64 24, !54, i64 32, !54, i64 40, !54, i64 48, !54, i64 56, !54, i64 64, !54, i64 72, !54, i64 80, !54, i64 88, !54, i64 96, !54, i64 104, !54, i64 112, !54, i64 120, !54, i64 128, !54, i64 136, !54, i64 144, !54, i64 152, !54, i64 160, !54, i64 168, !54, i64 176, !54, i64 184, !54, i64 192, !54, i64 200, !54, i64 208, !54, i64 216, !54, i64 224, !54, i64 232, !54, i64 240, !54, i64 248, !54, i64 256, !54, i64 264, !54, i64 272, !54, i64 280, !54, i64 288}
!98 = !{!"vectorize", !54, i64 0, !54, i64 8, !54, i64 16, !54, i64 24, !54, i64 32, !54, i64 40, !54, i64 48, !54, i64 56, !54, i64 64, !54, i64 72}
!99 = !{!"addr_space", !54, i64 0, !54, i64 8, !54, i64 16, !54, i64 24, !54, i64 32, !54, i64 40, !54, i64 48}
!100 = !{!"calls", !54, i64 0, !54, i64 8, !54, i64 16, !54, i64 24, !54, i64 32, !54, i64 40, !54, i64 48, !54, i64 56, !54, i64 64, !54, i64 72, !54, i64 80, !54, i64 88, !54, i64 96, !54, i64 104, !54, i64 112, !54, i64 120, !54, i64 128, !54, i64 136, !54, i64 144, !54, i64 152, !54, i64 160, !54, i64 168, !54, i64 176, !54, i64 184}
!101 = !{!"c", !54, i64 0}
!102 = !{!"cxx", !54, i64 0, !54, i64 8, !54, i64 16, !54, i64 24, !54, i64 32, !54, i64 40, !54, i64 48, !54, i64 56, !54, i64 64, !54, i64 72, !54, i64 80, !54, i64 88, !54, i64 96}
!103 = !{!"emutls", !54, i64 0, !54, i64 8, !54, i64 16, !54, i64 24, !54, i64 32, !54, i64 40, !54, i64 48, !54, i64 56, !55, i64 64, !55, i64 65}
!104 = !{!"target_option_hooks", !54, i64 0, !54, i64 8, !54, i64 16, !54, i64 24, !54, i64 32, !54, i64 40}
!105 = distinct !{!105, !70, !71}
!106 = distinct !{!106, !70, !71}
!107 = !{!"function_entry_count", i64 77371}
!108 = !{!"branch_weights", i32 77410, i32 0}
!109 = !{!81, !54, i64 24}
!110 = !{!"branch_weights", i32 40, i32 77370}
!111 = !{!"branch_weights", i32 40, i32 0}
!112 = !{!"branch_weights", i32 2, i32 76}
!113 = !{!81, !54, i64 16}
!114 = !{!"branch_weights", i32 40, i32 38}
!115 = !{!"function_entry_count", i64 78}
!116 = !{!"branch_weights", i32 77, i32 1}
!117 = !{!"branch_weights", i32 1, i32 0}
!118 = !{!"branch_weights", i32 39, i32 38}
!119 = !{!"branch_weights", i32 0, i32 39}
!120 = !{!"branch_weights", i32 39, i32 0}
!121 = !{!"branch_weights", i32 38, i32 1}
!122 = !{!94, !55, i64 2028}
!123 = !{!"branch_weights", i32 0, i32 38}
!124 = !{i8 0, i8 2}
!125 = !{!"function_entry_count", i64 39}
!126 = !{!"branch_weights", i32 1, i32 38}
!127 = !{!"branch_weights", i32 38, i32 0}
!128 = !{!"function_entry_count", i64 2}
!129 = !{!"branch_weights", i32 2, i32 0}
!130 = !{!"branch_weights", i32 1, i32 127}
!131 = !{!"branch_weights", i32 127, i32 2369}
!132 = distinct !{!132, !70, !71}
!133 = !{!"function_entry_count", i64 46}
!134 = !{!"branch_weights", i32 46, i32 0}
!135 = !{!"branch_weights", i32 1, i32 183}
!136 = !{!"branch_weights", i32 39, i32 39}
!137 = !{!"branch_weights", i32 0, i32 78}
!138 = !{!"branch_weights", i32 183, i32 129}
!139 = distinct !{!139, !70, !71}
!140 = distinct !{!140, !70, !71}
!141 = !{!"function_entry_count", i64 1}
!142 = !{!"branch_weights", i32 127, i32 4865}
!143 = distinct !{!143, !70, !71}
!144 = distinct !{!144, !70, !71}
!145 = !{!73, !54, i64 120}
