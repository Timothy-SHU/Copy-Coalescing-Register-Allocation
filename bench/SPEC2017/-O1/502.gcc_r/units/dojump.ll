; ModuleID = 'dojump.c'
source_filename = "dojump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.rtl_data = type { %struct.expr_status, %struct.emit_status, %struct.varasm_status, %struct.incoming_args, %struct.function_subsections, %struct.rtl_eh, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.expr_status = type { i32, i32, i32, ptr, ptr, ptr }
%struct.emit_status = type { i32, i32, ptr, ptr, ptr, i32, i32, i32, i32, ptr }
%struct.varasm_status = type { ptr, i32 }
%struct.incoming_args = type { i32, i32, i32, ptr, %struct.ix86_args, ptr }
%struct.ix86_args = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.function_subsections = type { ptr, ptr, ptr, ptr, ptr }
%struct.rtl_eh = type { ptr, ptr, ptr, ptr, ptr, ptr, [2 x ptr] }
%struct.lang_hooks = type { ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lang_hooks_for_tree_inlining, %struct.lang_hooks_for_callgraph, %struct.lang_hooks_for_tree_dump, %struct.lang_hooks_for_decls, %struct.lang_hooks_for_types, %struct.lang_hooks_for_lto, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.lang_hooks_for_tree_inlining = type { ptr }
%struct.lang_hooks_for_callgraph = type { ptr }
%struct.lang_hooks_for_tree_dump = type { ptr, ptr }
%struct.lang_hooks_for_decls = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lang_hooks_for_types = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.lang_hooks_for_lto = type { ptr, ptr, ptr }
%struct.ggc_root_tab = type { ptr, i64, i64, ptr, ptr }
%struct.optab_d = type { i32, ptr, i8, ptr, [87 x %struct.optab_handlers] }
%struct.optab_handlers = type { i32 }
%struct._IO_FILE = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, [1 x i8], ptr, i64, ptr, ptr, ptr, ptr, i64, i32, [20 x i8] }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.tree_exp = type { %struct.tree_common, i32, ptr, [1 x ptr] }
%struct.tree_common = type { %struct.tree_base, ptr, ptr }
%struct.tree_base = type { i64 }
%struct.tree_type = type { %struct.tree_common, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, %union.tree_type_symtab, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.tree_type_symtab = type { ptr }
%struct.tree_int_cst = type { %struct.tree_common, %struct.double_int }
%struct.double_int = type { i64, i64 }
%struct.rtx_def = type { i32, %union.u }
%union.u = type { %struct.block_symbol }
%struct.block_symbol = type { [3 x %union.rtunion_def], ptr, i64 }
%union.rtunion_def = type { ptr }
%struct.real_format = type { ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.control_flow_graph = type { ptr, ptr, ptr, i32, i32, i32, ptr, i32, [2 x i32], [2 x i32], i32, i32 }

@stdout = external local_unnamed_addr global ptr, align 8
@stdin = external local_unnamed_addr global ptr, align 8
@x_rtl = external local_unnamed_addr global %struct.rtl_data, align 8
@optimize = external local_unnamed_addr global i32, align 4
@flag_omit_frame_pointer = external local_unnamed_addr global i32, align 4
@cfun = external local_unnamed_addr global ptr, align 8
@mode_class = external local_unnamed_addr constant [87 x i8], align 16
@.str = private unnamed_addr constant [9 x i8] c"dojump.c\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@lang_hooks = external local_unnamed_addr global %struct.lang_hooks, align 8
@global_trees = external local_unnamed_addr global [131 x ptr], align 16
@ix86_branch_cost = external local_unnamed_addr global i32, align 4
@const_tiny_rtx = external local_unnamed_addr global [3 x [87 x ptr]], align 16
@flag_signaling_nans = external local_unnamed_addr global i32, align 4
@real_format_for_mode = external local_unnamed_addr global [7 x ptr], align 16
@mode_inner = external local_unnamed_addr constant [87 x i8], align 16
@flag_finite_math_only = external local_unnamed_addr global i32, align 4
@rtx_class = external local_unnamed_addr constant [139 x i32], align 16
@const_int_rtx = external local_unnamed_addr global [129 x ptr], align 16
@code_to_optab = external local_unnamed_addr global [140 x ptr], align 16
@dump_file = external local_unnamed_addr global ptr, align 8
@.str.2 = private unnamed_addr constant [32 x i8] c"Failed to add probability note\0A\00", align 1
@shift_test = internal global ptr null, align 8
@and_test = internal global ptr null, align 8
@and_reg = internal global ptr null, align 8
@gt_ggc_r_gt_dojump_h = dso_local local_unnamed_addr constant [4 x %struct.ggc_root_tab] [%struct.ggc_root_tab { ptr @shift_test, i64 1, i64 8, ptr @gt_ggc_mx_rtx_def, ptr @gt_pch_nx_rtx_def }, %struct.ggc_root_tab { ptr @and_test, i64 1, i64 8, ptr @gt_ggc_mx_rtx_def, ptr @gt_pch_nx_rtx_def }, %struct.ggc_root_tab { ptr @and_reg, i64 1, i64 8, ptr @gt_ggc_mx_rtx_def, ptr @gt_pch_nx_rtx_def }, %struct.ggc_root_tab zeroinitializer], align 16
@mode_size = external local_unnamed_addr global [87 x i8], align 16
@word_mode = external local_unnamed_addr global i32, align 4
@optab_table = external global [159 x %struct.optab_d], align 16

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @vprintf(ptr noalias nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 !prof !61 {
  %3 = load ptr, ptr @stdout, align 8, !tbaa !62
  %4 = tail call i32 @vfprintf(ptr noundef %3, ptr noundef %0, ptr noundef %1)
  ret i32 %4
}

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @getchar() local_unnamed_addr #0 !prof !61 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !62
  %2 = tail call i32 @getc(ptr noundef %1)
  ret i32 %2
}

; Function Attrs: nofree nounwind
declare noundef i32 @getc(ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !61 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !66
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !71
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !72

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #16
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !66
  %11 = load i8, ptr %3, align 1, !tbaa !73
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

declare i32 @__uflow(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !61 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !66
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !71
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !72

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #16
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !66
  %11 = load i8, ptr %3, align 1, !tbaa !73
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #2 !prof !61 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !62
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !66
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !71
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !72

7:                                                ; preds = %0
  %8 = tail call i32 @__uflow(ptr noundef %1) #16
  br label %13

9:                                                ; preds = %0
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !66
  %11 = load i8, ptr %3, align 1, !tbaa !73
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @putchar(i32 noundef %0) local_unnamed_addr #0 !prof !61 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !62
  %3 = tail call i32 @putc(i32 noundef %0, ptr noundef %2)
  ret i32 %3
}

; Function Attrs: nofree nounwind
declare noundef i32 @putc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !61 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !74
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !75
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !72

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #16
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !74
  store i8 %12, ptr %4, align 1, !tbaa !73
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

declare i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !61 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !74
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !75
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !72

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #16
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !74
  store i8 %12, ptr %4, align 1, !tbaa !73
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 noundef %0) local_unnamed_addr #2 !prof !61 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !62
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !74
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !75
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !72

8:                                                ; preds = %1
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %2, i32 noundef %9) #16
  br label %15

11:                                               ; preds = %1
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !74
  store i8 %12, ptr %4, align 1, !tbaa !73
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i64 @getline(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 !prof !61 {
  %4 = tail call i64 @__getdelim(ptr noundef %0, ptr noundef %1, i32 noundef 10, ptr noundef %2) #16
  ret i64 %4
}

declare i64 @__getdelim(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @feof_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !61 {
  %2 = load i32, ptr %0, align 8, !tbaa !76
  %3 = lshr i32 %2, 4
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @ferror_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !61 {
  %2 = load i32, ptr %0, align 8, !tbaa !76
  %3 = lshr i32 %2, 5
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @tolower(i32 noundef %0) local_unnamed_addr #5 !prof !61 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_tolower_loc() #16
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !77
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_tolower_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @toupper(i32 noundef %0) local_unnamed_addr #5 !prof !61 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_toupper_loc() #16
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !77
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_toupper_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i32 @atoi(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !61 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  %3 = trunc i64 %2 to i32
  ret i32 %3
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atol(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !61 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atoll(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !61 {
  %2 = tail call i64 @strtoll(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtoll(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local noundef ptr @bsearch(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #2 !prof !61 {
  %6 = icmp eq i64 %2, 0
  br i1 %6, label %24, label %7

7:                                                ; preds = %5, %20
  %8 = phi i64 [ %22, %20 ], [ 0, %5 ]
  %9 = phi i64 [ %21, %20 ], [ %2, %5 ]
  %10 = add i64 %8, %9
  %11 = lshr i64 %10, 1
  %12 = mul i64 %11, %3
  %13 = getelementptr inbounds i8, ptr %1, i64 %12
  %14 = tail call i32 %4(ptr noundef %0, ptr noundef %13) #16
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
  br i1 %23, label %7, label %24, !llvm.loop !78

24:                                               ; preds = %16, %20, %5
  %25 = phi ptr [ null, %5 ], [ %13, %16 ], [ null, %20 ]
  ret ptr %25
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local double @atof(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !61 {
  %2 = tail call double @strtod(ptr nocapture noundef %0, ptr noundef null)
  ret double %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @init_pending_stack_adjust() local_unnamed_addr #9 !prof !61 {
  store i32 0, ptr @x_rtl, align 8, !tbaa !81
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @discard_pending_stack_adjust() local_unnamed_addr #10 !prof !61 {
  %1 = load i32, ptr @x_rtl, align 8, !tbaa !81
  %2 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 0, i32 2), align 8, !tbaa !90
  %3 = sub nsw i32 %2, %1
  store i32 %3, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 0, i32 2), align 8, !tbaa !90
  store i32 0, ptr @x_rtl, align 8, !tbaa !81
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable
define dso_local void @clear_pending_stack_adjust() local_unnamed_addr #11 !prof !91 {
  %1 = load i32, ptr @optimize, align 4, !tbaa !77
  %2 = icmp sgt i32 %1, 0
  br i1 %2, label %3, label %16, !prof !92

3:                                                ; preds = %0
  %4 = load i32, ptr @flag_omit_frame_pointer, align 4, !tbaa !77
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %12, label %6, !prof !92

6:                                                ; preds = %3
  %7 = load ptr, ptr @cfun, align 8, !tbaa !62
  %8 = getelementptr inbounds %struct.function, ptr %7, i64 0, i32 20
  %9 = load i32, ptr %8, align 8
  %10 = and i32 %9, 524288
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %6, %3
  %13 = load i32, ptr @x_rtl, align 8, !tbaa !81
  %14 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 0, i32 2), align 8, !tbaa !90
  %15 = sub nsw i32 %14, %13
  store i32 %15, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 0, i32 2), align 8, !tbaa !90
  store i32 0, ptr @x_rtl, align 8, !tbaa !81
  br label %16

16:                                               ; preds = %12, %6, %0
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local void @do_pending_stack_adjust() local_unnamed_addr #12 !prof !93 {
  %1 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 0, i32 1), align 4, !tbaa !94
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %3, label %10, !prof !95

3:                                                ; preds = %0
  %4 = load i32, ptr @x_rtl, align 8, !tbaa !81
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6, !prof !95

6:                                                ; preds = %3
  %7 = sext i32 %4 to i64
  %8 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %7) #16
  tail call void @adjust_stack(ptr noundef %8) #16
  br label %9

9:                                                ; preds = %6, %3
  store i32 0, ptr @x_rtl, align 8, !tbaa !81
  br label %10

10:                                               ; preds = %9, %0
  ret void
}

declare void @adjust_stack(ptr noundef) local_unnamed_addr #3

declare ptr @gen_rtx_CONST_INT(i32 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @jumpifnot(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #13 !prof !61 {
  %4 = icmp eq i32 %2, -1
  %5 = sub nsw i32 10000, %2
  %6 = select i1 %4, i32 -1, i32 %5
  tail call void @do_jump(ptr noundef %0, ptr noundef %1, ptr noundef null, i32 noundef %6)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @do_jump(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #14 !prof !96 {
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca ptr, align 8
  %10 = alloca i32, align 4
  %11 = load i64, ptr %0, align 8
  %12 = trunc i64 %11 to i32
  %13 = and i32 %12, 65535
  %14 = trunc i64 %11 to i16
  switch i16 %14, label %294 [
    i16 0, label %334
    i16 23, label %15
    i16 116, label %21
    i16 113, label %26
    i16 117, label %40
    i16 82, label %40
    i16 79, label %40
    i16 85, label %40
    i16 86, label %40
    i16 96, label %43
    i16 56, label %49
    i16 52, label %69
    i16 41, label %70
    i16 42, label %70
    i16 45, label %70
    i16 46, label %70
    i16 64, label %107
    i16 101, label %108
    i16 102, label %108
    i16 97, label %108
    i16 98, label %108
    i16 99, label %108
    i16 100, label %108
    i16 104, label %108
    i16 103, label %108
    i16 105, label %108
    i16 106, label %108
    i16 107, label %108
    i16 108, label %108
    i16 109, label %108
    i16 110, label %108
    i16 91, label %108
    i16 92, label %108
    i16 89, label %114
    i16 93, label %270
    i16 87, label %282
    i16 94, label %282
  ], !prof !97

15:                                               ; preds = %4
  %16 = tail call i32 @integer_zerop(ptr noundef nonnull %0) #16
  %17 = icmp eq i32 %16, 0
  %18 = select i1 %17, ptr %2, ptr %1
  %19 = icmp eq ptr %18, null
  br i1 %19, label %334, label %20

20:                                               ; preds = %15
  tail call void @emit_jump(ptr noundef nonnull %18) #16
  br label %334

21:                                               ; preds = %4
  %22 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !73
  %24 = load i64, ptr %23, align 8
  %25 = trunc i64 %24 to i16
  switch i16 %25, label %26 [
    i16 41, label %294
    i16 42, label %294
    i16 45, label %294
    i16 46, label %294
  ]

26:                                               ; preds = %21, %4
  %27 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %28 = load ptr, ptr %27, align 8, !tbaa !73
  %29 = getelementptr inbounds %struct.tree_type, ptr %28, i64 0, i32 6
  %30 = load i32, ptr %29, align 4
  %31 = and i32 %30, 1023
  %32 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %33 = load ptr, ptr %32, align 8, !tbaa !73
  %34 = getelementptr inbounds %struct.tree_common, ptr %33, i64 0, i32 2
  %35 = load ptr, ptr %34, align 8, !tbaa !73
  %36 = getelementptr inbounds %struct.tree_type, ptr %35, i64 0, i32 6
  %37 = load i32, ptr %36, align 4
  %38 = and i32 %37, 1023
  %39 = icmp ult i32 %31, %38
  br i1 %39, label %294, label %40

40:                                               ; preds = %26, %4, %4, %4, %4, %4
  %41 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %42 = load ptr, ptr %41, align 8, !tbaa !73
  tail call void @do_jump(ptr noundef %42, ptr noundef %1, ptr noundef %2, i32 noundef %3)
  br label %334

43:                                               ; preds = %4
  %44 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %45 = load ptr, ptr %44, align 8, !tbaa !73
  %46 = icmp eq i32 %3, -1
  %47 = sub nsw i32 10000, %3
  %48 = select i1 %46, i32 -1, i32 %47
  tail call void @do_jump(ptr noundef %45, ptr noundef %2, ptr noundef %1, i32 noundef %48)
  br label %334

49:                                               ; preds = %4
  %50 = tail call ptr @gen_label_rtx() #16
  %51 = icmp ne ptr %2, null
  %52 = icmp ne ptr %1, null
  %53 = and i1 %52, %51
  br i1 %53, label %58, label %54

54:                                               ; preds = %49
  %55 = tail call ptr @gen_label_rtx() #16
  %56 = select i1 %51, ptr %2, ptr %55
  %57 = select i1 %52, ptr %1, ptr %55
  br label %58

58:                                               ; preds = %54, %49
  %59 = phi ptr [ null, %49 ], [ %55, %54 ]
  %60 = phi ptr [ %2, %49 ], [ %56, %54 ]
  %61 = phi ptr [ %1, %49 ], [ %57, %54 ]
  tail call void @do_pending_stack_adjust()
  %62 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %63 = load ptr, ptr %62, align 8, !tbaa !73
  tail call void @do_jump(ptr noundef %63, ptr noundef %50, ptr noundef null, i32 noundef -1)
  %64 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 1
  %65 = load ptr, ptr %64, align 8, !tbaa !73
  tail call void @do_jump(ptr noundef %65, ptr noundef %61, ptr noundef %60, i32 noundef %3)
  %66 = tail call ptr @emit_label(ptr noundef %50) #16
  %67 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 1, i32 0, i32 1
  %68 = load ptr, ptr %67, align 8, !tbaa !73
  tail call void @do_jump(ptr noundef %68, ptr noundef %61, ptr noundef %60, i32 noundef %3)
  br label %334

69:                                               ; preds = %4
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 440, ptr noundef nonnull @.str.1) #16
  br label %70

70:                                               ; preds = %4, %4, %4, %4, %69
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #16
  store i32 0, ptr %10, align 4, !tbaa !77
  %71 = call ptr @get_inner_reference(ptr noundef nonnull %0, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %9, ptr noundef nonnull %8, ptr noundef nonnull %7, ptr noundef nonnull %10, i8 noundef zeroext 0) #16
  %72 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 34, i32 3), align 8, !tbaa !98
  %73 = load i64, ptr %5, align 8, !tbaa !106
  %74 = trunc i64 %73 to i32
  %75 = load i32, ptr %7, align 4, !tbaa !77
  %76 = call ptr %72(i32 noundef %74, i32 noundef %75) #16
  %77 = icmp ne ptr %76, null
  %78 = load i64, ptr %5, align 8
  %79 = icmp sgt i64 %78, -1
  %80 = select i1 %77, i1 %79, i1 false
  br i1 %80, label %81, label %106

81:                                               ; preds = %70
  %82 = getelementptr inbounds %struct.tree_type, ptr %76, i64 0, i32 6
  %83 = load i32, ptr %82, align 4
  %84 = and i32 %83, 1023
  %85 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %86 = load ptr, ptr %85, align 8, !tbaa !73
  %87 = getelementptr inbounds %struct.tree_type, ptr %86, i64 0, i32 6
  %88 = load i32, ptr %87, align 4
  %89 = and i32 %88, 1023
  %90 = icmp ult i32 %84, %89
  br i1 %90, label %91, label %106

91:                                               ; preds = %81
  %92 = load i64, ptr %76, align 8
  %93 = and i64 %92, 65535
  %94 = icmp eq i64 %93, 14
  br i1 %94, label %95, label %97

95:                                               ; preds = %91
  %96 = call i32 @vector_type_mode(ptr noundef nonnull %76) #16
  br label %100

97:                                               ; preds = %91
  %98 = lshr i32 %83, 16
  %99 = and i32 %98, 255
  br label %100

100:                                              ; preds = %97, %95
  %101 = phi i32 [ %96, %95 ], [ %99, %97 ]
  %102 = call i32 @have_insn_for(i32 noundef 48, i32 noundef %101) #16
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %106, label %104

104:                                              ; preds = %100
  %105 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef nonnull %76, ptr noundef nonnull %0) #16
  call void @do_jump(ptr noundef %105, ptr noundef %1, ptr noundef %2, i32 noundef %3)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #16
  br label %334

106:                                              ; preds = %70, %81, %100
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #16
  br label %294

107:                                              ; preds = %4
  br label %108

108:                                              ; preds = %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %288, %276, %107, %4
  %109 = phi i32 [ %13, %4 ], [ 102, %107 ], [ 91, %276 ], [ 92, %288 ], [ %13, %4 ], [ %13, %4 ], [ %13, %4 ], [ %13, %4 ], [ %13, %4 ], [ %13, %4 ], [ %13, %4 ], [ %13, %4 ], [ %13, %4 ], [ %13, %4 ], [ %13, %4 ], [ %13, %4 ], [ %13, %4 ], [ %13, %4 ], [ %13, %4 ]
  %110 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %111 = load ptr, ptr %110, align 8, !tbaa !73
  %112 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 1
  %113 = load ptr, ptr %112, align 8, !tbaa !73
  tail call void @do_jump_1(i32 noundef %109, ptr noundef %111, ptr noundef %113, ptr noundef %1, ptr noundef %2, i32 noundef %3)
  br label %334

114:                                              ; preds = %4
  %115 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 1
  %116 = load ptr, ptr %115, align 8, !tbaa !73
  %117 = tail call i32 @integer_onep(ptr noundef %116) #16
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %211, label %119

119:                                              ; preds = %114
  %120 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %121 = load ptr, ptr %120, align 8, !tbaa !73
  %122 = load ptr, ptr @global_trees, align 16
  br label %123

123:                                              ; preds = %131, %119
  %124 = phi ptr [ %121, %119 ], [ %129, %131 ]
  %125 = load i64, ptr %124, align 8
  %126 = trunc i64 %125 to i16
  switch i16 %126, label %143 [
    i16 116, label %127
    i16 113, label %127
  ]

127:                                              ; preds = %123, %123
  %128 = getelementptr inbounds %struct.tree_exp, ptr %124, i64 0, i32 3
  %129 = load ptr, ptr %128, align 8, !tbaa !73
  %130 = icmp eq ptr %129, %122
  br i1 %130, label %143, label %131

131:                                              ; preds = %127
  %132 = getelementptr inbounds %struct.tree_common, ptr %124, i64 0, i32 2
  %133 = load ptr, ptr %132, align 8, !tbaa !73
  %134 = getelementptr inbounds %struct.tree_type, ptr %133, i64 0, i32 6
  %135 = load i32, ptr %134, align 4
  %136 = and i32 %135, 1023
  %137 = getelementptr inbounds %struct.tree_common, ptr %129, i64 0, i32 2
  %138 = load ptr, ptr %137, align 8, !tbaa !73
  %139 = getelementptr inbounds %struct.tree_type, ptr %138, i64 0, i32 6
  %140 = load i32, ptr %139, align 4
  %141 = and i32 %140, 1023
  %142 = icmp ugt i32 %136, %141
  br i1 %142, label %143, label %123, !llvm.loop !107

143:                                              ; preds = %131, %123, %127
  %144 = and i64 %125, 65535
  %145 = icmp eq i64 %144, 88
  br i1 %145, label %146, label %157

146:                                              ; preds = %143
  %147 = getelementptr inbounds %struct.tree_exp, ptr %124, i64 1
  %148 = load ptr, ptr %147, align 8, !tbaa !73
  %149 = tail call i32 @integer_onep(ptr noundef %148) #16
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %157, label %151

151:                                              ; preds = %146
  %152 = getelementptr inbounds %struct.tree_exp, ptr %124, i64 0, i32 3
  %153 = load ptr, ptr %152, align 8, !tbaa !73
  %154 = icmp eq i32 %3, -1
  %155 = sub nsw i32 10000, %3
  %156 = select i1 %154, i32 -1, i32 %155
  br label %157

157:                                              ; preds = %143, %146, %151
  %158 = phi ptr [ %153, %151 ], [ %124, %146 ], [ %124, %143 ]
  %159 = phi ptr [ %1, %151 ], [ %2, %146 ], [ %2, %143 ]
  %160 = phi ptr [ %2, %151 ], [ %1, %146 ], [ %1, %143 ]
  %161 = phi i32 [ %156, %151 ], [ %3, %146 ], [ %3, %143 ]
  %162 = load i64, ptr %158, align 8
  %163 = and i64 %162, 65535
  %164 = icmp eq i64 %163, 84
  br i1 %164, label %165, label %207

165:                                              ; preds = %157
  %166 = getelementptr inbounds %struct.tree_exp, ptr %158, i64 0, i32 3
  %167 = load ptr, ptr %166, align 8, !tbaa !73
  %168 = getelementptr inbounds %struct.tree_exp, ptr %158, i64 1
  %169 = load ptr, ptr %168, align 8, !tbaa !73
  %170 = getelementptr inbounds %struct.tree_common, ptr %167, i64 0, i32 2
  %171 = load ptr, ptr %170, align 8, !tbaa !73
  %172 = load i64, ptr %169, align 8
  %173 = and i64 %172, 65535
  %174 = icmp eq i64 %173, 23
  br i1 %174, label %175, label %204

175:                                              ; preds = %165
  %176 = tail call i32 @compare_tree_int(ptr noundef nonnull %169, i64 noundef 0) #16
  %177 = icmp sgt i32 %176, -1
  br i1 %177, label %178, label %204

178:                                              ; preds = %175
  %179 = tail call i32 @compare_tree_int(ptr noundef nonnull %169, i64 noundef 64) #16
  %180 = icmp slt i32 %179, 0
  br i1 %180, label %181, label %204

181:                                              ; preds = %178
  %182 = load i64, ptr %171, align 8
  %183 = and i64 %182, 65535
  %184 = icmp eq i64 %183, 14
  br i1 %184, label %185, label %187

185:                                              ; preds = %181
  %186 = tail call i32 @vector_type_mode(ptr noundef nonnull %171) #16
  br label %192

187:                                              ; preds = %181
  %188 = getelementptr inbounds %struct.tree_type, ptr %171, i64 0, i32 6
  %189 = load i32, ptr %188, align 4
  %190 = lshr i32 %189, 16
  %191 = and i32 %190, 255
  br label %192

192:                                              ; preds = %187, %185
  %193 = phi i32 [ %186, %185 ], [ %191, %187 ]
  %194 = getelementptr inbounds %struct.tree_int_cst, ptr %169, i64 0, i32 1
  %195 = load i64, ptr %194, align 8, !tbaa !73
  %196 = trunc i64 %195 to i32
  %197 = tail call fastcc zeroext i8 @prefer_and_bit_test(i32 noundef %193, i32 noundef %196), !range !108
  %198 = icmp eq i8 %197, 0
  br i1 %198, label %204, label %199

199:                                              ; preds = %192
  %200 = load i64, ptr %194, align 8, !tbaa !73
  %201 = shl nuw i64 1, %200
  %202 = tail call ptr @build_int_cst_wide_type(ptr noundef nonnull %171, i64 noundef %201, i64 noundef 0) #16
  %203 = tail call ptr @build2_stat(i32 noundef 89, ptr noundef nonnull %171, ptr noundef %167, ptr noundef %202) #16
  tail call void @do_jump(ptr noundef %203, ptr noundef %160, ptr noundef %159, i32 noundef %161)
  br label %204

204:                                              ; preds = %165, %175, %178, %192, %199
  %205 = phi i1 [ false, %199 ], [ true, %192 ], [ true, %178 ], [ true, %175 ], [ true, %165 ]
  %206 = phi i32 [ 2, %199 ], [ 0, %192 ], [ 0, %178 ], [ 0, %175 ], [ 0, %165 ]
  br i1 %205, label %207, label %208

207:                                              ; preds = %204, %157
  br label %208

208:                                              ; preds = %204, %207
  %209 = phi i32 [ 0, %207 ], [ %206, %204 ]
  %210 = icmp eq i32 %209, 0
  br i1 %210, label %211, label %334

211:                                              ; preds = %208, %114
  %212 = load ptr, ptr %115, align 8, !tbaa !73
  %213 = load i64, ptr %212, align 8
  %214 = and i64 %213, 65535
  %215 = icmp eq i64 %214, 23
  br i1 %215, label %216, label %258

216:                                              ; preds = %211
  %217 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %218 = load ptr, ptr %217, align 8, !tbaa !73
  %219 = getelementptr inbounds %struct.tree_type, ptr %218, i64 0, i32 6
  %220 = load i32, ptr %219, align 4
  %221 = and i32 %220, 1023
  %222 = icmp ult i32 %221, 65
  br i1 %222, label %223, label %258

223:                                              ; preds = %216
  %224 = tail call i32 @tree_floor_log2(ptr noundef nonnull %212) #16
  %225 = icmp sgt i32 %224, -1
  br i1 %225, label %226, label %258

226:                                              ; preds = %223
  %227 = add nuw nsw i32 %224, 1
  %228 = tail call i32 @mode_for_size(i32 noundef %227, i32 noundef 2, i32 noundef 0) #16
  %229 = icmp eq i32 %228, 1
  br i1 %229, label %258, label %230

230:                                              ; preds = %226
  %231 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 34, i32 2), align 8, !tbaa !109
  %232 = tail call ptr %231(i32 noundef %228, i32 noundef 1) #16
  %233 = icmp eq ptr %232, null
  br i1 %233, label %258, label %234

234:                                              ; preds = %230
  %235 = getelementptr inbounds %struct.tree_type, ptr %232, i64 0, i32 6
  %236 = load i32, ptr %235, align 4
  %237 = and i32 %236, 1023
  %238 = load ptr, ptr %217, align 8, !tbaa !73
  %239 = getelementptr inbounds %struct.tree_type, ptr %238, i64 0, i32 6
  %240 = load i32, ptr %239, align 4
  %241 = and i32 %240, 1023
  %242 = icmp ult i32 %237, %241
  br i1 %242, label %243, label %258

243:                                              ; preds = %234
  %244 = load i64, ptr %232, align 8
  %245 = and i64 %244, 65535
  %246 = icmp eq i64 %245, 14
  br i1 %246, label %247, label %249

247:                                              ; preds = %243
  %248 = tail call i32 @vector_type_mode(ptr noundef nonnull %232) #16
  br label %252

249:                                              ; preds = %243
  %250 = lshr i32 %236, 16
  %251 = and i32 %250, 255
  br label %252

252:                                              ; preds = %249, %247
  %253 = phi i32 [ %248, %247 ], [ %251, %249 ]
  %254 = tail call i32 @have_insn_for(i32 noundef 48, i32 noundef %253) #16
  %255 = icmp eq i32 %254, 0
  br i1 %255, label %258, label %256

256:                                              ; preds = %252
  %257 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef nonnull %232, ptr noundef nonnull %0) #16
  tail call void @do_jump(ptr noundef %257, ptr noundef %1, ptr noundef %2, i32 noundef %3)
  br label %334

258:                                              ; preds = %252, %234, %230, %226, %223, %216, %211
  %259 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %260 = load ptr, ptr %259, align 8, !tbaa !73
  %261 = getelementptr inbounds %struct.tree_type, ptr %260, i64 0, i32 6
  %262 = load i32, ptr %261, align 4
  %263 = and i32 %262, 1022
  %264 = icmp eq i32 %263, 0
  br i1 %264, label %265, label %294

265:                                              ; preds = %258
  %266 = load ptr, ptr %115, align 8, !tbaa !73
  %267 = load i64, ptr %266, align 8
  %268 = and i64 %267, 65535
  %269 = icmp eq i64 %268, 23
  br i1 %269, label %294, label %270

270:                                              ; preds = %265, %4
  %271 = tail call zeroext i8 @optimize_insn_for_speed_p() #16
  %272 = icmp ne i8 %271, 0
  %273 = load i32, ptr @ix86_branch_cost, align 4
  %274 = icmp sgt i32 %273, 3
  %275 = select i1 %272, i1 %274, i1 false
  br i1 %275, label %294, label %276

276:                                              ; preds = %270
  %277 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 1
  %278 = load ptr, ptr %277, align 8, !tbaa !73
  %279 = load i64, ptr %278, align 8
  %280 = and i64 %279, 65536
  %281 = icmp eq i64 %280, 0
  br i1 %281, label %108, label %294

282:                                              ; preds = %4, %4
  %283 = tail call zeroext i8 @optimize_insn_for_speed_p() #16
  %284 = icmp ne i8 %283, 0
  %285 = load i32, ptr @ix86_branch_cost, align 4
  %286 = icmp sgt i32 %285, 3
  %287 = select i1 %284, i1 %286, i1 false
  br i1 %287, label %294, label %288

288:                                              ; preds = %282
  %289 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 1
  %290 = load ptr, ptr %289, align 8, !tbaa !73
  %291 = load i64, ptr %290, align 8
  %292 = and i64 %291, 65536
  %293 = icmp eq i64 %292, 0
  br i1 %293, label %108, label %294

294:                                              ; preds = %288, %282, %276, %270, %106, %26, %21, %21, %21, %4, %21, %258, %265
  %295 = call ptr @expand_expr_real(ptr noundef nonnull %0, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef null) #16
  %296 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 0, i32 1), align 4, !tbaa !94
  %297 = icmp eq i32 %296, 0
  br i1 %297, label %298, label %305, !prof !95

298:                                              ; preds = %294
  %299 = load i32, ptr @x_rtl, align 8, !tbaa !81
  %300 = icmp eq i32 %299, 0
  br i1 %300, label %304, label %301, !prof !95

301:                                              ; preds = %298
  %302 = sext i32 %299 to i64
  %303 = call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %302) #16
  call void @adjust_stack(ptr noundef %303) #16
  br label %304

304:                                              ; preds = %301, %298
  store i32 0, ptr @x_rtl, align 8, !tbaa !81
  br label %305

305:                                              ; preds = %294, %304
  %306 = load i32, ptr %295, align 8
  %307 = and i32 %306, 65535
  %308 = icmp eq i32 %307, 39
  br i1 %308, label %309, label %320, !prof !110

309:                                              ; preds = %305
  %310 = and i32 %306, 268435456
  %311 = icmp eq i32 %310, 0
  br i1 %311, label %318, label %312

312:                                              ; preds = %309
  %313 = getelementptr inbounds %struct.rtx_def, ptr %295, i64 0, i32 1
  %314 = load ptr, ptr %313, align 8, !tbaa !73
  %315 = load i32, ptr %314, align 8
  %316 = and i32 %315, 65535
  %317 = icmp eq i32 %316, 37
  br i1 %317, label %320, label %318

318:                                              ; preds = %312, %309
  %319 = call ptr @copy_to_reg(ptr noundef nonnull %295) #16
  br label %320

320:                                              ; preds = %312, %318, %305
  %321 = phi ptr [ %319, %318 ], [ %295, %305 ], [ %314, %312 ]
  %322 = load i32, ptr %321, align 8
  %323 = lshr i32 %322, 16
  %324 = and i32 %323, 255
  %325 = zext nneg i32 %324 to i64
  %326 = getelementptr inbounds [87 x ptr], ptr @const_tiny_rtx, i64 0, i64 %325
  %327 = load ptr, ptr %326, align 8, !tbaa !62
  %328 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %329 = load ptr, ptr %328, align 8, !tbaa !73
  %330 = load i64, ptr %329, align 8
  %331 = trunc i64 %330 to i32
  %332 = lshr i32 %331, 21
  %333 = and i32 %332, 1
  call void @do_compare_rtx_and_jump(ptr noundef nonnull %321, ptr noundef %327, i32 noundef 80, i32 noundef %333, i32 noundef %324, ptr noundef null, ptr noundef %1, ptr noundef %2, i32 noundef %3)
  br label %334

334:                                              ; preds = %104, %4, %208, %15, %20, %320, %256, %108, %58, %43, %40
  %335 = phi ptr [ null, %320 ], [ null, %108 ], [ null, %208 ], [ null, %256 ], [ %59, %58 ], [ null, %43 ], [ null, %40 ], [ null, %20 ], [ null, %15 ], [ null, %4 ], [ null, %104 ]
  %336 = icmp eq ptr %335, null
  br i1 %336, label %339, label %337, !prof !111

337:                                              ; preds = %334
  call void @do_pending_stack_adjust()
  %338 = call ptr @emit_label(ptr noundef nonnull %335) #16
  br label %339

339:                                              ; preds = %337, %334
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @jumpifnot_1(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #14 !prof !112 {
  %6 = icmp eq i32 %4, -1
  %7 = sub nsw i32 10000, %4
  %8 = select i1 %6, i32 -1, i32 %7, !prof !113
  tail call void @do_jump_1(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef null, i32 noundef %8)
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local void @do_jump_1(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) local_unnamed_addr #12 !prof !114 {
  switch i32 %0, label %362 [
    i32 101, label %7
    i32 102, label %163
    i32 97, label %242
    i32 98, label %266
    i32 99, label %293
    i32 100, label %317
    i32 104, label %344
    i32 103, label %345
    i32 105, label %346
    i32 106, label %347
    i32 107, label %348
    i32 108, label %349
    i32 109, label %350
    i32 110, label %351
    i32 91, label %352
    i32 92, label %357
  ], !prof !115

7:                                                ; preds = %6
  %8 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !73
  %10 = load i64, ptr %9, align 8
  %11 = and i64 %10, 65535
  %12 = icmp eq i64 %11, 14
  br i1 %12, label %13, label %15, !prof !116

13:                                               ; preds = %7
  %14 = tail call i32 @vector_type_mode(ptr noundef nonnull %9) #16
  br label %20

15:                                               ; preds = %7
  %16 = getelementptr inbounds %struct.tree_type, ptr %9, i64 0, i32 6
  %17 = load i32, ptr %16, align 4
  %18 = lshr i32 %17, 16
  %19 = and i32 %18, 255
  br label %20

20:                                               ; preds = %15, %13
  %21 = phi i32 [ %14, %13 ], [ %19, %15 ]
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %22
  %24 = load i8, ptr %23, align 1, !tbaa !73
  %25 = icmp eq i8 %24, 11
  br i1 %25, label %26, label %27, !prof !116

26:                                               ; preds = %20
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 191, ptr noundef nonnull @.str.1) #16
  br label %27

27:                                               ; preds = %20, %26
  %28 = load i64, ptr %9, align 8
  %29 = and i64 %28, 65535
  %30 = icmp eq i64 %29, 14
  br i1 %30, label %31, label %33, !prof !116

31:                                               ; preds = %27
  %32 = tail call i32 @vector_type_mode(ptr noundef nonnull %9) #16
  br label %38

33:                                               ; preds = %27
  %34 = getelementptr inbounds %struct.tree_type, ptr %9, i64 0, i32 6
  %35 = load i32, ptr %34, align 4
  %36 = lshr i32 %35, 16
  %37 = and i32 %36, 255
  br label %38

38:                                               ; preds = %33, %31
  %39 = phi i32 [ %32, %31 ], [ %37, %33 ]
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %40
  %42 = load i8, ptr %41, align 1, !tbaa !73
  %43 = icmp eq i8 %42, 10
  br i1 %43, label %44, label %45, !prof !116

44:                                               ; preds = %38
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 193, ptr noundef nonnull @.str.1) #16
  br label %45

45:                                               ; preds = %38, %44
  %46 = tail call i32 @integer_zerop(ptr noundef %2) #16
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %52, label %48, !prof !117

48:                                               ; preds = %45
  %49 = icmp eq i32 %5, -1
  %50 = sub nsw i32 10000, %5
  %51 = select i1 %49, i32 -1, i32 %50, !prof !118
  tail call void @do_jump(ptr noundef %1, ptr noundef %4, ptr noundef %3, i32 noundef %51)
  br label %363

52:                                               ; preds = %45
  %53 = load i64, ptr %9, align 8
  %54 = and i64 %53, 65535
  %55 = icmp eq i64 %54, 14
  br i1 %55, label %56, label %58, !prof !119

56:                                               ; preds = %52
  %57 = tail call i32 @vector_type_mode(ptr noundef nonnull %9) #16
  br label %63

58:                                               ; preds = %52
  %59 = getelementptr inbounds %struct.tree_type, ptr %9, i64 0, i32 6
  %60 = load i32, ptr %59, align 4
  %61 = lshr i32 %60, 16
  %62 = and i32 %61, 255
  br label %63

63:                                               ; preds = %58, %56
  %64 = phi i32 [ %57, %56 ], [ %62, %58 ]
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %65
  %67 = load i8, ptr %66, align 1, !tbaa !73
  %68 = icmp eq i8 %67, 2
  br i1 %68, label %69, label %85, !prof !120

69:                                               ; preds = %63
  %70 = load i64, ptr %9, align 8
  %71 = and i64 %70, 65535
  %72 = icmp eq i64 %71, 14
  br i1 %72, label %73, label %75, !prof !119

73:                                               ; preds = %69
  %74 = tail call i32 @vector_type_mode(ptr noundef nonnull %9) #16
  br label %80

75:                                               ; preds = %69
  %76 = getelementptr inbounds %struct.tree_type, ptr %9, i64 0, i32 6
  %77 = load i32, ptr %76, align 4
  %78 = lshr i32 %77, 16
  %79 = and i32 %78, 255
  br label %80

80:                                               ; preds = %75, %73
  %81 = phi i32 [ %74, %73 ], [ %79, %75 ]
  %82 = tail call i32 @can_compare_p(i32 noundef 81, i32 noundef %81, i32 noundef 0) #16
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %85, !prof !119

84:                                               ; preds = %80
  tail call fastcc void @do_jump_by_parts_equality(ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5)
  br label %363

85:                                               ; preds = %80, %63
  %86 = tail call ptr @expand_expr_real(ptr noundef %1, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef null) #16
  %87 = load i64, ptr %1, align 8
  %88 = and i64 %87, 65535
  %89 = icmp eq i64 %88, 0
  br i1 %89, label %363, label %90, !prof !121

90:                                               ; preds = %85
  %91 = tail call ptr @expand_expr_real(ptr noundef %2, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef null) #16
  %92 = load i64, ptr %2, align 8
  %93 = and i64 %92, 65535
  %94 = icmp eq i64 %93, 0
  br i1 %94, label %363, label %95, !prof !121

95:                                               ; preds = %90
  %96 = load ptr, ptr %8, align 8, !tbaa !73
  %97 = load i64, ptr %96, align 8
  %98 = and i64 %97, 65535
  %99 = icmp eq i64 %98, 14
  br i1 %99, label %100, label %102, !prof !121

100:                                              ; preds = %95
  %101 = tail call i32 @vector_type_mode(ptr noundef nonnull %96) #16
  br label %107

102:                                              ; preds = %95
  %103 = getelementptr inbounds %struct.tree_type, ptr %96, i64 0, i32 6
  %104 = load i32, ptr %103, align 4
  %105 = lshr i32 %104, 16
  %106 = and i32 %105, 255
  br label %107

107:                                              ; preds = %102, %100
  %108 = phi i32 [ %101, %100 ], [ %106, %102 ]
  %109 = load i64, ptr %1, align 8
  %110 = and i64 %109, 65535
  %111 = icmp eq i64 %110, 23
  br i1 %111, label %112, label %151, !prof !121

112:                                              ; preds = %107
  %113 = load i64, ptr %2, align 8
  %114 = and i64 %113, 65535
  %115 = icmp eq i64 %114, 23
  br i1 %115, label %116, label %138

116:                                              ; preds = %112
  %117 = zext i32 %108 to i64
  %118 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %117
  %119 = load i8, ptr %118, align 1, !tbaa !73
  %120 = getelementptr inbounds %struct.tree_common, ptr %2, i64 0, i32 2
  %121 = load ptr, ptr %120, align 8, !tbaa !73
  %122 = load i64, ptr %121, align 8
  %123 = and i64 %122, 65535
  %124 = icmp eq i64 %123, 14
  br i1 %124, label %125, label %127

125:                                              ; preds = %116
  %126 = tail call i32 @vector_type_mode(ptr noundef nonnull %121) #16
  br label %132

127:                                              ; preds = %116
  %128 = getelementptr inbounds %struct.tree_type, ptr %121, i64 0, i32 6
  %129 = load i32, ptr %128, align 4
  %130 = lshr i32 %129, 16
  %131 = and i32 %130, 255
  br label %132

132:                                              ; preds = %127, %125
  %133 = phi i32 [ %126, %125 ], [ %131, %127 ]
  %134 = zext i32 %133 to i64
  %135 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %134
  %136 = load i8, ptr %135, align 1, !tbaa !73
  %137 = icmp ugt i8 %119, %136
  br i1 %137, label %138, label %151

138:                                              ; preds = %132, %112
  %139 = getelementptr inbounds %struct.tree_common, ptr %2, i64 0, i32 2
  %140 = load ptr, ptr %139, align 8, !tbaa !73
  %141 = load i64, ptr %140, align 8
  %142 = and i64 %141, 65535
  %143 = icmp eq i64 %142, 14
  br i1 %143, label %144, label %146

144:                                              ; preds = %138
  %145 = tail call i32 @vector_type_mode(ptr noundef nonnull %140) #16
  br label %151

146:                                              ; preds = %138
  %147 = getelementptr inbounds %struct.tree_type, ptr %140, i64 0, i32 6
  %148 = load i32, ptr %147, align 4
  %149 = lshr i32 %148, 16
  %150 = and i32 %149, 255
  br label %151

151:                                              ; preds = %146, %144, %132, %107
  %152 = phi i32 [ %108, %132 ], [ %108, %107 ], [ %145, %144 ], [ %150, %146 ]
  %153 = phi ptr [ %96, %132 ], [ %96, %107 ], [ %140, %144 ], [ %140, %146 ]
  %154 = load i64, ptr %153, align 8
  %155 = trunc i64 %154 to i32
  %156 = lshr i32 %155, 21
  %157 = and i32 %156, 1
  %158 = icmp eq i32 %152, 1
  br i1 %158, label %159, label %161, !prof !121

159:                                              ; preds = %151
  %160 = tail call ptr @expr_size(ptr noundef nonnull %1) #16
  br label %161

161:                                              ; preds = %159, %151
  %162 = phi ptr [ %160, %159 ], [ null, %151 ]
  tail call void @do_compare_rtx_and_jump(ptr noundef %86, ptr noundef %91, i32 noundef 81, i32 noundef %157, i32 noundef %152, ptr noundef %162, ptr noundef %3, ptr noundef %4, i32 noundef %5)
  br label %363

163:                                              ; preds = %6
  %164 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %165 = load ptr, ptr %164, align 8, !tbaa !73
  %166 = load i64, ptr %165, align 8
  %167 = and i64 %166, 65535
  %168 = icmp eq i64 %167, 14
  br i1 %168, label %169, label %171, !prof !122

169:                                              ; preds = %163
  %170 = tail call i32 @vector_type_mode(ptr noundef nonnull %165) #16
  br label %176

171:                                              ; preds = %163
  %172 = getelementptr inbounds %struct.tree_type, ptr %165, i64 0, i32 6
  %173 = load i32, ptr %172, align 4
  %174 = lshr i32 %173, 16
  %175 = and i32 %174, 255
  br label %176

176:                                              ; preds = %171, %169
  %177 = phi i32 [ %170, %169 ], [ %175, %171 ]
  %178 = zext i32 %177 to i64
  %179 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %178
  %180 = load i8, ptr %179, align 1, !tbaa !73
  %181 = icmp eq i8 %180, 11
  br i1 %181, label %182, label %183, !prof !122

182:                                              ; preds = %176
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 212, ptr noundef nonnull @.str.1) #16
  br label %183

183:                                              ; preds = %176, %182
  %184 = load i64, ptr %165, align 8
  %185 = and i64 %184, 65535
  %186 = icmp eq i64 %185, 14
  br i1 %186, label %187, label %189, !prof !122

187:                                              ; preds = %183
  %188 = tail call i32 @vector_type_mode(ptr noundef nonnull %165) #16
  br label %194

189:                                              ; preds = %183
  %190 = getelementptr inbounds %struct.tree_type, ptr %165, i64 0, i32 6
  %191 = load i32, ptr %190, align 4
  %192 = lshr i32 %191, 16
  %193 = and i32 %192, 255
  br label %194

194:                                              ; preds = %189, %187
  %195 = phi i32 [ %188, %187 ], [ %193, %189 ]
  %196 = zext i32 %195 to i64
  %197 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %196
  %198 = load i8, ptr %197, align 1, !tbaa !73
  %199 = icmp eq i8 %198, 10
  br i1 %199, label %200, label %201, !prof !122

200:                                              ; preds = %194
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 214, ptr noundef nonnull @.str.1) #16
  br label %201

201:                                              ; preds = %194, %200
  %202 = tail call i32 @integer_zerop(ptr noundef %2) #16
  %203 = icmp eq i32 %202, 0
  br i1 %203, label %205, label %204, !prof !123

204:                                              ; preds = %201
  tail call void @do_jump(ptr noundef %1, ptr noundef %3, ptr noundef %4, i32 noundef %5)
  br label %363

205:                                              ; preds = %201
  %206 = load i64, ptr %165, align 8
  %207 = and i64 %206, 65535
  %208 = icmp eq i64 %207, 14
  br i1 %208, label %209, label %211, !prof !124

209:                                              ; preds = %205
  %210 = tail call i32 @vector_type_mode(ptr noundef nonnull %165) #16
  br label %216

211:                                              ; preds = %205
  %212 = getelementptr inbounds %struct.tree_type, ptr %165, i64 0, i32 6
  %213 = load i32, ptr %212, align 4
  %214 = lshr i32 %213, 16
  %215 = and i32 %214, 255
  br label %216

216:                                              ; preds = %211, %209
  %217 = phi i32 [ %210, %209 ], [ %215, %211 ]
  %218 = zext i32 %217 to i64
  %219 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %218
  %220 = load i8, ptr %219, align 1, !tbaa !73
  %221 = icmp eq i8 %220, 2
  br i1 %221, label %222, label %241, !prof !125

222:                                              ; preds = %216
  %223 = load i64, ptr %165, align 8
  %224 = and i64 %223, 65535
  %225 = icmp eq i64 %224, 14
  br i1 %225, label %226, label %228, !prof !124

226:                                              ; preds = %222
  %227 = tail call i32 @vector_type_mode(ptr noundef nonnull %165) #16
  br label %233

228:                                              ; preds = %222
  %229 = getelementptr inbounds %struct.tree_type, ptr %165, i64 0, i32 6
  %230 = load i32, ptr %229, align 4
  %231 = lshr i32 %230, 16
  %232 = and i32 %231, 255
  br label %233

233:                                              ; preds = %228, %226
  %234 = phi i32 [ %227, %226 ], [ %232, %228 ]
  %235 = tail call i32 @can_compare_p(i32 noundef 80, i32 noundef %234, i32 noundef 0) #16
  %236 = icmp eq i32 %235, 0
  br i1 %236, label %237, label %241, !prof !124

237:                                              ; preds = %233
  %238 = icmp eq i32 %5, -1
  %239 = sub nsw i32 10000, %5
  %240 = select i1 %238, i32 -1, i32 %239
  tail call fastcc void @do_jump_by_parts_equality(ptr noundef %1, ptr noundef %2, ptr noundef %4, ptr noundef %3, i32 noundef %240)
  br label %363

241:                                              ; preds = %233, %216
  tail call fastcc void @do_compare_and_jump(ptr noundef %1, ptr noundef %2, i32 noundef 80, i32 noundef 80, ptr noundef %3, ptr noundef %4, i32 noundef %5)
  br label %363

242:                                              ; preds = %6
  %243 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %244 = load ptr, ptr %243, align 8, !tbaa !73
  %245 = load i64, ptr %244, align 8
  %246 = and i64 %245, 65535
  %247 = icmp eq i64 %246, 14
  br i1 %247, label %248, label %250, !prof !126

248:                                              ; preds = %242
  %249 = tail call i32 @vector_type_mode(ptr noundef nonnull %244) #16
  br label %255

250:                                              ; preds = %242
  %251 = getelementptr inbounds %struct.tree_type, ptr %244, i64 0, i32 6
  %252 = load i32, ptr %251, align 4
  %253 = lshr i32 %252, 16
  %254 = and i32 %253, 255
  br label %255

255:                                              ; preds = %250, %248
  %256 = phi i32 [ %249, %248 ], [ %254, %250 ]
  %257 = zext i32 %256 to i64
  %258 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %257
  %259 = load i8, ptr %258, align 1, !tbaa !73
  %260 = icmp eq i8 %259, 2
  br i1 %260, label %261, label %265, !prof !127

261:                                              ; preds = %255
  %262 = tail call i32 @can_compare_p(i32 noundef 85, i32 noundef %256, i32 noundef 0) #16
  %263 = icmp eq i32 %262, 0
  br i1 %263, label %264, label %265, !prof !126

264:                                              ; preds = %261
  tail call fastcc void @do_jump_by_parts_greater(ptr noundef %1, ptr noundef %2, i32 noundef 1, ptr noundef %3, ptr noundef %4, i32 noundef %5)
  br label %363

265:                                              ; preds = %261, %255
  tail call fastcc void @do_compare_and_jump(ptr noundef %1, ptr noundef %2, i32 noundef 85, i32 noundef 89, ptr noundef %3, ptr noundef %4, i32 noundef %5)
  br label %363

266:                                              ; preds = %6
  %267 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %268 = load ptr, ptr %267, align 8, !tbaa !73
  %269 = load i64, ptr %268, align 8
  %270 = and i64 %269, 65535
  %271 = icmp eq i64 %270, 14
  br i1 %271, label %272, label %274, !prof !128

272:                                              ; preds = %266
  %273 = tail call i32 @vector_type_mode(ptr noundef nonnull %268) #16
  br label %279

274:                                              ; preds = %266
  %275 = getelementptr inbounds %struct.tree_type, ptr %268, i64 0, i32 6
  %276 = load i32, ptr %275, align 4
  %277 = lshr i32 %276, 16
  %278 = and i32 %277, 255
  br label %279

279:                                              ; preds = %274, %272
  %280 = phi i32 [ %273, %272 ], [ %278, %274 ]
  %281 = zext i32 %280 to i64
  %282 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %281
  %283 = load i8, ptr %282, align 1, !tbaa !73
  %284 = icmp eq i8 %283, 2
  br i1 %284, label %285, label %292, !prof !129

285:                                              ; preds = %279
  %286 = tail call i32 @can_compare_p(i32 noundef 84, i32 noundef %280, i32 noundef 0) #16
  %287 = icmp eq i32 %286, 0
  br i1 %287, label %288, label %292, !prof !128

288:                                              ; preds = %285
  %289 = icmp eq i32 %5, -1
  %290 = sub nsw i32 10000, %5
  %291 = select i1 %289, i32 -1, i32 %290
  tail call fastcc void @do_jump_by_parts_greater(ptr noundef %1, ptr noundef %2, i32 noundef 0, ptr noundef %4, ptr noundef %3, i32 noundef %291)
  br label %363

292:                                              ; preds = %285, %279
  tail call fastcc void @do_compare_and_jump(ptr noundef %1, ptr noundef %2, i32 noundef 84, i32 noundef 88, ptr noundef %3, ptr noundef %4, i32 noundef %5)
  br label %363

293:                                              ; preds = %6
  %294 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %295 = load ptr, ptr %294, align 8, !tbaa !73
  %296 = load i64, ptr %295, align 8
  %297 = and i64 %296, 65535
  %298 = icmp eq i64 %297, 14
  br i1 %298, label %299, label %301

299:                                              ; preds = %293
  %300 = tail call i32 @vector_type_mode(ptr noundef nonnull %295) #16
  br label %306

301:                                              ; preds = %293
  %302 = getelementptr inbounds %struct.tree_type, ptr %295, i64 0, i32 6
  %303 = load i32, ptr %302, align 4
  %304 = lshr i32 %303, 16
  %305 = and i32 %304, 255
  br label %306

306:                                              ; preds = %301, %299
  %307 = phi i32 [ %300, %299 ], [ %305, %301 ]
  %308 = zext i32 %307 to i64
  %309 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %308
  %310 = load i8, ptr %309, align 1, !tbaa !73
  %311 = icmp eq i8 %310, 2
  br i1 %311, label %312, label %316

312:                                              ; preds = %306
  %313 = tail call i32 @can_compare_p(i32 noundef 83, i32 noundef %307, i32 noundef 0) #16
  %314 = icmp eq i32 %313, 0
  br i1 %314, label %315, label %316

315:                                              ; preds = %312
  tail call fastcc void @do_jump_by_parts_greater(ptr noundef %1, ptr noundef %2, i32 noundef 0, ptr noundef %3, ptr noundef %4, i32 noundef %5)
  br label %363

316:                                              ; preds = %312, %306
  tail call fastcc void @do_compare_and_jump(ptr noundef %1, ptr noundef %2, i32 noundef 83, i32 noundef 87, ptr noundef %3, ptr noundef %4, i32 noundef %5)
  br label %363

317:                                              ; preds = %6
  %318 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %319 = load ptr, ptr %318, align 8, !tbaa !73
  %320 = load i64, ptr %319, align 8
  %321 = and i64 %320, 65535
  %322 = icmp eq i64 %321, 14
  br i1 %322, label %323, label %325, !prof !130

323:                                              ; preds = %317
  %324 = tail call i32 @vector_type_mode(ptr noundef nonnull %319) #16
  br label %330

325:                                              ; preds = %317
  %326 = getelementptr inbounds %struct.tree_type, ptr %319, i64 0, i32 6
  %327 = load i32, ptr %326, align 4
  %328 = lshr i32 %327, 16
  %329 = and i32 %328, 255
  br label %330

330:                                              ; preds = %325, %323
  %331 = phi i32 [ %324, %323 ], [ %329, %325 ]
  %332 = zext i32 %331 to i64
  %333 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %332
  %334 = load i8, ptr %333, align 1, !tbaa !73
  %335 = icmp eq i8 %334, 2
  br i1 %335, label %336, label %343, !prof !131

336:                                              ; preds = %330
  %337 = tail call i32 @can_compare_p(i32 noundef 82, i32 noundef %331, i32 noundef 0) #16
  %338 = icmp eq i32 %337, 0
  br i1 %338, label %339, label %343, !prof !130

339:                                              ; preds = %336
  %340 = icmp eq i32 %5, -1
  %341 = sub nsw i32 10000, %5
  %342 = select i1 %340, i32 -1, i32 %341
  tail call fastcc void @do_jump_by_parts_greater(ptr noundef %1, ptr noundef %2, i32 noundef 1, ptr noundef %4, ptr noundef %3, i32 noundef %342)
  br label %363

343:                                              ; preds = %336, %330
  tail call fastcc void @do_compare_and_jump(ptr noundef %1, ptr noundef %2, i32 noundef 82, i32 noundef 86, ptr noundef %3, ptr noundef %4, i32 noundef %5)
  br label %363

344:                                              ; preds = %6
  tail call fastcc void @do_compare_and_jump(ptr noundef %1, ptr noundef %2, i32 noundef 91, i32 noundef 91, ptr noundef %3, ptr noundef %4, i32 noundef %5)
  br label %363

345:                                              ; preds = %6
  tail call fastcc void @do_compare_and_jump(ptr noundef %1, ptr noundef %2, i32 noundef 90, i32 noundef 90, ptr noundef %3, ptr noundef %4, i32 noundef %5)
  br label %363

346:                                              ; preds = %6
  tail call fastcc void @do_compare_and_jump(ptr noundef %1, ptr noundef %2, i32 noundef 96, i32 noundef 96, ptr noundef %3, ptr noundef %4, i32 noundef %5)
  br label %363

347:                                              ; preds = %6
  tail call fastcc void @do_compare_and_jump(ptr noundef %1, ptr noundef %2, i32 noundef 95, i32 noundef 95, ptr noundef %3, ptr noundef %4, i32 noundef %5)
  br label %363

348:                                              ; preds = %6
  tail call fastcc void @do_compare_and_jump(ptr noundef %1, ptr noundef %2, i32 noundef 94, i32 noundef 94, ptr noundef %3, ptr noundef %4, i32 noundef %5)
  br label %363

349:                                              ; preds = %6
  tail call fastcc void @do_compare_and_jump(ptr noundef %1, ptr noundef %2, i32 noundef 93, i32 noundef 93, ptr noundef %3, ptr noundef %4, i32 noundef %5)
  br label %363

350:                                              ; preds = %6
  tail call fastcc void @do_compare_and_jump(ptr noundef %1, ptr noundef %2, i32 noundef 92, i32 noundef 92, ptr noundef %3, ptr noundef %4, i32 noundef %5)
  br label %363

351:                                              ; preds = %6
  tail call fastcc void @do_compare_and_jump(ptr noundef %1, ptr noundef %2, i32 noundef 97, i32 noundef 97, ptr noundef %3, ptr noundef %4, i32 noundef %5)
  br label %363

352:                                              ; preds = %6
  %353 = icmp eq ptr %3, null
  br i1 %353, label %354, label %356

354:                                              ; preds = %352
  %355 = tail call ptr @gen_label_rtx() #16
  tail call void @do_jump(ptr noundef %1, ptr noundef %355, ptr noundef null, i32 noundef %5)
  tail call void @do_jump(ptr noundef %2, ptr noundef null, ptr noundef %4, i32 noundef %5)
  br label %363

356:                                              ; preds = %352
  tail call void @do_jump(ptr noundef %1, ptr noundef %3, ptr noundef null, i32 noundef %5)
  tail call void @do_jump(ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5)
  br label %363

357:                                              ; preds = %6
  %358 = icmp eq ptr %4, null
  br i1 %358, label %359, label %361, !prof !132

359:                                              ; preds = %357
  %360 = tail call ptr @gen_label_rtx() #16
  tail call void @do_jump(ptr noundef %1, ptr noundef null, ptr noundef %360, i32 noundef %5)
  tail call void @do_jump(ptr noundef %2, ptr noundef %3, ptr noundef null, i32 noundef %5)
  br label %363

361:                                              ; preds = %357
  tail call void @do_jump(ptr noundef %1, ptr noundef null, ptr noundef %4, i32 noundef %5)
  tail call void @do_jump(ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5)
  br label %363

362:                                              ; preds = %6
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 341, ptr noundef nonnull @.str.1) #16
  br label %363

363:                                              ; preds = %161, %90, %85, %204, %241, %237, %48, %84, %359, %361, %354, %356, %339, %343, %315, %316, %288, %292, %264, %265, %362, %351, %350, %349, %348, %347, %346, %345, %344
  %364 = phi ptr [ null, %362 ], [ %360, %359 ], [ null, %361 ], [ %355, %354 ], [ null, %356 ], [ null, %351 ], [ null, %350 ], [ null, %349 ], [ null, %348 ], [ null, %347 ], [ null, %346 ], [ null, %345 ], [ null, %344 ], [ null, %343 ], [ null, %339 ], [ null, %316 ], [ null, %315 ], [ null, %292 ], [ null, %288 ], [ null, %265 ], [ null, %264 ], [ null, %84 ], [ null, %48 ], [ null, %237 ], [ null, %241 ], [ null, %204 ], [ null, %85 ], [ null, %90 ], [ null, %161 ]
  %365 = icmp eq ptr %364, null
  br i1 %365, label %378, label %366, !prof !133

366:                                              ; preds = %363
  %367 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 0, i32 1), align 4, !tbaa !94
  %368 = icmp eq i32 %367, 0
  br i1 %368, label %369, label %376, !prof !95

369:                                              ; preds = %366
  %370 = load i32, ptr @x_rtl, align 8, !tbaa !81
  %371 = icmp eq i32 %370, 0
  br i1 %371, label %375, label %372, !prof !95

372:                                              ; preds = %369
  %373 = sext i32 %370 to i64
  %374 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %373) #16
  tail call void @adjust_stack(ptr noundef %374) #16
  br label %375

375:                                              ; preds = %372, %369
  store i32 0, ptr @x_rtl, align 8, !tbaa !81
  br label %376

376:                                              ; preds = %366, %375
  %377 = tail call ptr @emit_label(ptr noundef nonnull %364) #16
  br label %378

378:                                              ; preds = %376, %363
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @jumpif(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #13 !prof !61 {
  tail call void @do_jump(ptr noundef %0, ptr noundef null, ptr noundef %1, i32 noundef %2)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @jumpif_1(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #14 !prof !134 {
  tail call void @do_jump_1(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef null, ptr noundef %3, i32 noundef %4)
  ret void
}

declare i32 @vector_type_mode(ptr noundef) local_unnamed_addr #3

declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare i32 @integer_zerop(ptr noundef) local_unnamed_addr #3

declare i32 @can_compare_p(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc void @do_jump_by_parts_equality(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) unnamed_addr #13 !prof !61 {
  %6 = tail call ptr @expand_expr_real(ptr noundef %0, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef null) #16
  %7 = tail call ptr @expand_expr_real(ptr noundef %1, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef null) #16
  %8 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !73
  %10 = load i64, ptr %9, align 8
  %11 = and i64 %10, 65535
  %12 = icmp eq i64 %11, 14
  br i1 %12, label %13, label %15

13:                                               ; preds = %5
  %14 = tail call i32 @vector_type_mode(ptr noundef nonnull %9) #16
  br label %20

15:                                               ; preds = %5
  %16 = getelementptr inbounds %struct.tree_type, ptr %9, i64 0, i32 6
  %17 = load i32, ptr %16, align 4
  %18 = lshr i32 %17, 16
  %19 = and i32 %18, 255
  br label %20

20:                                               ; preds = %15, %13
  %21 = phi i32 [ %14, %13 ], [ %19, %15 ]
  tail call fastcc void @do_jump_by_parts_equality_rtx(i32 noundef %21, ptr noundef %6, ptr noundef %7, ptr noundef %2, ptr noundef %3, i32 noundef %4)
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @do_compare_and_jump(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, i32 noundef %6) unnamed_addr #12 !prof !135 !PGOFuncName !136 {
  %8 = tail call ptr @expand_expr_real(ptr noundef %0, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef null) #16
  %9 = load i64, ptr %0, align 8
  %10 = and i64 %9, 65535
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %88, label %12, !prof !121

12:                                               ; preds = %7
  %13 = tail call ptr @expand_expr_real(ptr noundef %1, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef null) #16
  %14 = load i64, ptr %1, align 8
  %15 = and i64 %14, 65535
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %88, label %17, !prof !121

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !73
  %20 = load i64, ptr %19, align 8
  %21 = and i64 %20, 65535
  %22 = icmp eq i64 %21, 14
  br i1 %22, label %23, label %25, !prof !121

23:                                               ; preds = %17
  %24 = tail call i32 @vector_type_mode(ptr noundef nonnull %19) #16
  br label %30

25:                                               ; preds = %17
  %26 = getelementptr inbounds %struct.tree_type, ptr %19, i64 0, i32 6
  %27 = load i32, ptr %26, align 4
  %28 = lshr i32 %27, 16
  %29 = and i32 %28, 255
  br label %30

30:                                               ; preds = %25, %23
  %31 = phi i32 [ %24, %23 ], [ %29, %25 ]
  %32 = load i64, ptr %0, align 8
  %33 = and i64 %32, 65535
  %34 = icmp eq i64 %33, 23
  br i1 %34, label %35, label %74, !prof !121

35:                                               ; preds = %30
  %36 = load i64, ptr %1, align 8
  %37 = and i64 %36, 65535
  %38 = icmp eq i64 %37, 23
  br i1 %38, label %39, label %61

39:                                               ; preds = %35
  %40 = zext i32 %31 to i64
  %41 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %40
  %42 = load i8, ptr %41, align 1, !tbaa !73
  %43 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %44 = load ptr, ptr %43, align 8, !tbaa !73
  %45 = load i64, ptr %44, align 8
  %46 = and i64 %45, 65535
  %47 = icmp eq i64 %46, 14
  br i1 %47, label %48, label %50

48:                                               ; preds = %39
  %49 = tail call i32 @vector_type_mode(ptr noundef nonnull %44) #16
  br label %55

50:                                               ; preds = %39
  %51 = getelementptr inbounds %struct.tree_type, ptr %44, i64 0, i32 6
  %52 = load i32, ptr %51, align 4
  %53 = lshr i32 %52, 16
  %54 = and i32 %53, 255
  br label %55

55:                                               ; preds = %50, %48
  %56 = phi i32 [ %49, %48 ], [ %54, %50 ]
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %57
  %59 = load i8, ptr %58, align 1, !tbaa !73
  %60 = icmp ugt i8 %42, %59
  br i1 %60, label %61, label %74

61:                                               ; preds = %55, %35
  %62 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %63 = load ptr, ptr %62, align 8, !tbaa !73
  %64 = load i64, ptr %63, align 8
  %65 = and i64 %64, 65535
  %66 = icmp eq i64 %65, 14
  br i1 %66, label %67, label %69

67:                                               ; preds = %61
  %68 = tail call i32 @vector_type_mode(ptr noundef nonnull %63) #16
  br label %74

69:                                               ; preds = %61
  %70 = getelementptr inbounds %struct.tree_type, ptr %63, i64 0, i32 6
  %71 = load i32, ptr %70, align 4
  %72 = lshr i32 %71, 16
  %73 = and i32 %72, 255
  br label %74

74:                                               ; preds = %67, %69, %55, %30
  %75 = phi i32 [ %31, %55 ], [ %31, %30 ], [ %68, %67 ], [ %73, %69 ]
  %76 = phi ptr [ %19, %55 ], [ %19, %30 ], [ %63, %67 ], [ %63, %69 ]
  %77 = load i64, ptr %76, align 8
  %78 = trunc i64 %77 to i32
  %79 = lshr i32 %78, 21
  %80 = and i32 %79, 1
  %81 = icmp eq i32 %80, 0
  %82 = select i1 %81, i32 %2, i32 %3, !prof !137
  %83 = icmp eq i32 %75, 1
  br i1 %83, label %84, label %86, !prof !121

84:                                               ; preds = %74
  %85 = tail call ptr @expr_size(ptr noundef nonnull %0) #16
  br label %86

86:                                               ; preds = %74, %84
  %87 = phi ptr [ %85, %84 ], [ null, %74 ]
  tail call void @do_compare_rtx_and_jump(ptr noundef %8, ptr noundef %13, i32 noundef %82, i32 noundef %80, i32 noundef %75, ptr noundef %87, ptr noundef %4, ptr noundef %5, i32 noundef %6)
  br label %88

88:                                               ; preds = %12, %7, %86
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal fastcc void @do_jump_by_parts_greater(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) unnamed_addr #13 !prof !61 {
  %7 = icmp eq i32 %2, 0
  %8 = select i1 %7, ptr %0, ptr %1
  %9 = tail call ptr @expand_expr_real(ptr noundef %8, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef null) #16
  %10 = select i1 %7, ptr %1, ptr %0
  %11 = tail call ptr @expand_expr_real(ptr noundef %10, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef null) #16
  %12 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !73
  %14 = load i64, ptr %13, align 8
  %15 = and i64 %14, 65535
  %16 = icmp eq i64 %15, 14
  br i1 %16, label %17, label %19

17:                                               ; preds = %6
  %18 = tail call i32 @vector_type_mode(ptr noundef nonnull %13) #16
  br label %24

19:                                               ; preds = %6
  %20 = getelementptr inbounds %struct.tree_type, ptr %13, i64 0, i32 6
  %21 = load i32, ptr %20, align 4
  %22 = lshr i32 %21, 16
  %23 = and i32 %22, 255
  br label %24

24:                                               ; preds = %19, %17
  %25 = phi i32 [ %18, %17 ], [ %23, %19 ]
  %26 = load ptr, ptr %12, align 8, !tbaa !73
  %27 = load i64, ptr %26, align 8
  %28 = trunc i64 %27 to i32
  %29 = lshr i32 %28, 21
  %30 = and i32 %29, 1
  tail call fastcc void @do_jump_by_parts_greater_rtx(i32 noundef %25, i32 noundef %30, ptr noundef %9, ptr noundef %11, ptr noundef %3, ptr noundef %4, i32 noundef %5)
  ret void
}

declare ptr @gen_label_rtx() local_unnamed_addr #3

declare ptr @emit_label(ptr noundef) local_unnamed_addr #3

declare void @emit_jump(ptr noundef) local_unnamed_addr #3

declare ptr @get_inner_reference(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

declare i32 @have_insn_for(i32 noundef, i32 noundef) local_unnamed_addr #3

declare ptr @fold_convert_loc(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @integer_onep(ptr noundef) local_unnamed_addr #3

declare i32 @compare_tree_int(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc zeroext i8 @prefer_and_bit_test(i32 noundef %0, i32 noundef %1) unnamed_addr #13 !prof !61 {
  %3 = load ptr, ptr @and_test, align 8, !tbaa !62
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %12

5:                                                ; preds = %2
  %6 = tail call ptr @gen_rtx_REG(i32 noundef %0, i32 noundef 53) #16
  store ptr %6, ptr @and_reg, align 8, !tbaa !62
  %7 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 61, i32 noundef %0, ptr noundef %6, ptr noundef null) #16
  store ptr %7, ptr @and_test, align 8, !tbaa !62
  %8 = load ptr, ptr @and_reg, align 8, !tbaa !62
  %9 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 67, i32 noundef %0, ptr noundef %8, ptr noundef null) #16
  %10 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 65), align 8, !tbaa !62
  %11 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 61, i32 noundef %0, ptr noundef %9, ptr noundef %10) #16
  store ptr %11, ptr @shift_test, align 8, !tbaa !62
  br label %33

12:                                               ; preds = %2
  %13 = load ptr, ptr @and_reg, align 8, !tbaa !62
  %14 = load i32, ptr %13, align 8
  %15 = shl i32 %0, 16
  %16 = and i32 %15, 16711680
  %17 = and i32 %14, -16711681
  %18 = or disjoint i32 %17, %16
  store i32 %18, ptr %13, align 8
  %19 = load ptr, ptr @and_test, align 8, !tbaa !62
  %20 = load i32, ptr %19, align 8
  %21 = and i32 %20, -16711681
  %22 = or disjoint i32 %21, %16
  store i32 %22, ptr %19, align 8
  %23 = load ptr, ptr @shift_test, align 8, !tbaa !62
  %24 = load i32, ptr %23, align 8
  %25 = and i32 %24, -16711681
  %26 = or disjoint i32 %25, %16
  store i32 %26, ptr %23, align 8
  %27 = load ptr, ptr @shift_test, align 8, !tbaa !62
  %28 = getelementptr inbounds %struct.rtx_def, ptr %27, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !73
  %30 = load i32, ptr %29, align 8
  %31 = and i32 %30, -16711681
  %32 = or disjoint i32 %31, %16
  store i32 %32, ptr %29, align 8
  br label %33

33:                                               ; preds = %12, %5
  %34 = zext nneg i32 %1 to i64
  %35 = shl nuw i64 1, %34
  %36 = tail call ptr @immed_double_const(i64 noundef %35, i64 noundef 0, i32 noundef %0) #16
  %37 = load ptr, ptr @and_test, align 8, !tbaa !62
  %38 = getelementptr inbounds %struct.rtx_def, ptr %37, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr %36, ptr %38, align 8, !tbaa !73
  %39 = sext i32 %1 to i64
  %40 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %39) #16
  %41 = load ptr, ptr @shift_test, align 8, !tbaa !62
  %42 = getelementptr inbounds %struct.rtx_def, ptr %41, i64 0, i32 1
  %43 = load ptr, ptr %42, align 8, !tbaa !73
  %44 = getelementptr inbounds %struct.rtx_def, ptr %43, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr %40, ptr %44, align 8, !tbaa !73
  %45 = load ptr, ptr @and_test, align 8, !tbaa !62
  %46 = tail call zeroext i8 @optimize_insn_for_speed_p() #16
  %47 = tail call i32 @rtx_cost(ptr noundef %45, i32 noundef 47, i8 noundef zeroext %46) #16
  %48 = load ptr, ptr @shift_test, align 8, !tbaa !62
  %49 = tail call zeroext i8 @optimize_insn_for_speed_p() #16
  %50 = tail call i32 @rtx_cost(ptr noundef %48, i32 noundef 47, i8 noundef zeroext %49) #16
  %51 = icmp sle i32 %47, %50
  %52 = zext i1 %51 to i8
  ret i8 %52
}

declare ptr @build2_stat(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @build_int_cst_wide_type(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

declare i32 @tree_floor_log2(ptr noundef) local_unnamed_addr #3

declare i32 @mode_for_size(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare zeroext i8 @optimize_insn_for_speed_p() local_unnamed_addr #3

declare ptr @copy_to_reg(ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define dso_local void @do_compare_rtx_and_jump(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, i32 noundef %8) local_unnamed_addr #12 !prof !138 {
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %2, ptr %10, align 4, !tbaa !77
  %12 = icmp eq ptr %7, null
  br i1 %12, label %16, label %13, !prof !139

13:                                               ; preds = %9
  %14 = tail call i32 @can_compare_p(i32 noundef %2, i32 noundef %4, i32 noundef 0) #16
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %97, !prof !140

16:                                               ; preds = %13, %9
  %17 = zext i32 %4 to i64
  %18 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %17
  %19 = load i8, ptr %18, align 1, !tbaa !73
  switch i8 %19, label %20 [
    i8 8, label %24
    i8 9, label %24
    i8 11, label %24
  ], !prof !141

20:                                               ; preds = %16
  %21 = icmp ne i8 %19, 17
  %22 = icmp eq i32 %2, 91
  %23 = or i1 %22, %21
  br i1 %23, label %79, label %27, !prof !142

24:                                               ; preds = %16, %16, %16
  %25 = and i32 %2, -2
  %26 = icmp eq i32 %25, 90
  br i1 %26, label %79, label %29

27:                                               ; preds = %20
  %28 = icmp eq i32 %2, 90
  br i1 %28, label %79, label %29

29:                                               ; preds = %24, %27
  switch i8 %19, label %49 [
    i8 8, label %30
    i8 9, label %30
    i8 11, label %30
    i8 17, label %30
  ]

30:                                               ; preds = %29, %29, %29, %29
  %31 = and i8 %19, -2
  %32 = icmp eq i8 %31, 8
  br i1 %32, label %37, label %33

33:                                               ; preds = %30
  %34 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %17
  %35 = load i8, ptr %34, align 1, !tbaa !73
  %36 = zext i8 %35 to i32
  br label %37

37:                                               ; preds = %30, %33
  %38 = phi i32 [ %36, %33 ], [ %4, %30 ]
  %39 = add i32 %38, -38
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %40
  %42 = load ptr, ptr %41, align 8, !tbaa !62
  %43 = getelementptr inbounds %struct.real_format, ptr %42, i64 0, i32 11
  %44 = load i8, ptr %43, align 2, !tbaa !143
  %45 = icmp eq i8 %44, 0
  %46 = load i32, ptr @flag_finite_math_only, align 4
  %47 = icmp ne i32 %46, 0
  %48 = select i1 %45, i1 true, i1 %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %29, %37
  switch i32 %2, label %50 [
    i32 97, label %79
    i32 92, label %79
  ]

50:                                               ; preds = %49, %37
  %51 = load i32, ptr @flag_signaling_nans, align 4, !tbaa !77
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %76, label %53

53:                                               ; preds = %50
  switch i8 %19, label %76 [
    i8 8, label %54
    i8 9, label %54
    i8 11, label %54
    i8 17, label %54
  ]

54:                                               ; preds = %53, %53, %53, %53
  %55 = and i8 %19, -2
  %56 = icmp eq i8 %55, 8
  br i1 %56, label %61, label %57

57:                                               ; preds = %54
  %58 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %17
  %59 = load i8, ptr %58, align 1, !tbaa !73
  %60 = zext i8 %59 to i32
  br label %61

61:                                               ; preds = %54, %57
  %62 = phi i32 [ %60, %57 ], [ %4, %54 ]
  %63 = add i32 %62, -38
  %64 = zext i32 %63 to i64
  %65 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %64
  %66 = load ptr, ptr %65, align 8, !tbaa !62
  %67 = getelementptr inbounds %struct.real_format, ptr %66, i64 0, i32 11
  %68 = load i8, ptr %67, align 2, !tbaa !143
  %69 = icmp eq i8 %68, 0
  %70 = load i32, ptr @flag_finite_math_only, align 4
  %71 = icmp ne i32 %70, 0
  %72 = select i1 %69, i1 true, i1 %71
  %73 = and i32 %2, -2
  %74 = icmp eq i32 %73, 80
  %75 = and i1 %74, %72
  br i1 %75, label %79, label %97

76:                                               ; preds = %50, %53
  %77 = and i32 %2, -2
  %78 = icmp eq i32 %77, 80
  br i1 %78, label %79, label %97

79:                                               ; preds = %61, %24, %49, %27, %49, %76, %20
  switch i8 %19, label %82 [
    i8 8, label %80
    i8 9, label %80
    i8 11, label %80
    i8 17, label %80
  ], !prof !145

80:                                               ; preds = %79, %79, %79, %79
  %81 = tail call i32 @reverse_condition_maybe_unordered(i32 noundef %2) #16
  br label %84

82:                                               ; preds = %79
  %83 = tail call i32 @reverse_condition(i32 noundef %2) #16
  br label %84

84:                                               ; preds = %82, %80
  %85 = phi i32 [ %81, %80 ], [ %83, %82 ]
  %86 = tail call i32 @can_compare_p(i32 noundef %85, i32 noundef %4, i32 noundef 0) #16
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %93, !prof !146

88:                                               ; preds = %84
  %89 = icmp eq i32 %2, 91
  br i1 %89, label %90, label %97

90:                                               ; preds = %88
  %91 = tail call i32 @can_compare_p(i32 noundef 91, i32 noundef %4, i32 noundef 0) #16
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %97

93:                                               ; preds = %90, %84
  store i32 %85, ptr %10, align 4, !tbaa !77
  %94 = icmp eq i32 %8, -1
  %95 = sub nsw i32 10000, %8
  %96 = select i1 %94, i32 -1, i32 %95, !prof !146
  br label %97

97:                                               ; preds = %76, %61, %88, %90, %93, %13
  %98 = phi ptr [ %6, %13 ], [ %7, %93 ], [ %6, %90 ], [ %6, %88 ], [ %6, %61 ], [ %6, %76 ]
  %99 = phi ptr [ %7, %13 ], [ %6, %93 ], [ %7, %90 ], [ %7, %88 ], [ %7, %61 ], [ %7, %76 ]
  %100 = phi i32 [ %8, %13 ], [ %96, %93 ], [ %8, %90 ], [ %8, %88 ], [ %8, %61 ], [ %8, %76 ]
  %101 = tail call zeroext i8 @swap_commutative_operands_p(ptr noundef %0, ptr noundef %1) #16
  %102 = icmp eq i8 %101, 0
  br i1 %102, label %106, label %103, !prof !147

103:                                              ; preds = %97
  %104 = load i32, ptr %10, align 4, !tbaa !77
  %105 = tail call i32 @swap_condition(i32 noundef %104) #16
  store i32 %105, ptr %10, align 4, !tbaa !77
  br label %106

106:                                              ; preds = %103, %97
  %107 = phi ptr [ %0, %103 ], [ %1, %97 ]
  %108 = phi ptr [ %1, %103 ], [ %0, %97 ]
  %109 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 0, i32 1), align 4, !tbaa !94
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %111, label %118, !prof !95

111:                                              ; preds = %106
  %112 = load i32, ptr @x_rtl, align 8, !tbaa !81
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %117, label %114, !prof !95

114:                                              ; preds = %111
  %115 = sext i32 %112 to i64
  %116 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %115) #16
  tail call void @adjust_stack(ptr noundef %116) #16
  br label %117

117:                                              ; preds = %114, %111
  store i32 0, ptr @x_rtl, align 8, !tbaa !81
  br label %118

118:                                              ; preds = %106, %117
  %119 = icmp eq i32 %3, 0
  %120 = load i32, ptr %10, align 4, !tbaa !77
  br i1 %119, label %123, label %121, !prof !148

121:                                              ; preds = %118
  %122 = tail call i32 @unsigned_condition(i32 noundef %120) #16
  br label %123

123:                                              ; preds = %118, %121
  %124 = phi i32 [ %122, %121 ], [ %120, %118 ]
  store i32 %124, ptr %10, align 4, !tbaa !77
  %125 = tail call ptr @simplify_relational_operation(i32 noundef %124, i32 noundef %4, i32 noundef 0, ptr noundef %108, ptr noundef %107) #16
  %126 = icmp eq ptr %125, null
  br i1 %126, label %159, label %127, !prof !147

127:                                              ; preds = %123
  %128 = load i32, ptr %125, align 8
  %129 = and i32 %128, 65535
  %130 = zext nneg i32 %129 to i64
  %131 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %130
  %132 = load i32, ptr %131, align 4, !tbaa !77
  %133 = icmp eq i32 %132, 9
  br i1 %133, label %134, label %147

134:                                              ; preds = %127
  %135 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !62
  %136 = icmp eq ptr %125, %135
  br i1 %136, label %143, label %137

137:                                              ; preds = %134
  %138 = sext i32 %4 to i64
  %139 = getelementptr inbounds [87 x ptr], ptr @const_tiny_rtx, i64 0, i64 %138
  %140 = load ptr, ptr %139, align 8, !tbaa !62
  %141 = icmp eq ptr %125, %140
  %142 = select i1 %141, ptr %98, ptr %99
  br label %143

143:                                              ; preds = %137, %134
  %144 = phi ptr [ %98, %134 ], [ %142, %137 ]
  %145 = icmp eq ptr %144, null
  br i1 %145, label %325, label %146

146:                                              ; preds = %143
  tail call void @emit_jump(ptr noundef nonnull %144) #16
  br label %325

147:                                              ; preds = %127
  store i32 %129, ptr %10, align 4, !tbaa !77
  %148 = lshr i32 %128, 16
  %149 = and i32 %148, 255
  %150 = getelementptr inbounds %struct.rtx_def, ptr %125, i64 0, i32 1
  %151 = load ptr, ptr %150, align 8, !tbaa !73
  %152 = getelementptr inbounds %struct.rtx_def, ptr %125, i64 0, i32 1, i32 0, i32 0, i64 1
  %153 = load ptr, ptr %152, align 8, !tbaa !73
  %154 = and i32 %128, 65534
  %155 = icmp eq i32 %154, 86
  %156 = icmp eq i32 %154, 88
  %157 = or i1 %155, %156
  %158 = zext i1 %157 to i32
  br label %159

159:                                              ; preds = %147, %123
  %160 = phi i32 [ %149, %147 ], [ %4, %123 ]
  %161 = phi i32 [ %158, %147 ], [ %3, %123 ]
  %162 = phi ptr [ %153, %147 ], [ %107, %123 ]
  %163 = phi ptr [ %151, %147 ], [ %108, %123 ]
  %164 = icmp eq ptr %99, null
  br i1 %164, label %165, label %167, !prof !149

165:                                              ; preds = %159
  %166 = tail call ptr @gen_label_rtx() #16
  br label %167

167:                                              ; preds = %165, %159
  %168 = phi ptr [ %99, %159 ], [ %166, %165 ]
  %169 = phi ptr [ null, %159 ], [ %166, %165 ]
  %170 = zext i32 %160 to i64
  %171 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %170
  %172 = load i8, ptr %171, align 1, !tbaa !73
  %173 = icmp eq i8 %172, 2
  br i1 %173, label %174, label %205, !prof !147

174:                                              ; preds = %167
  %175 = load i32, ptr %10, align 4, !tbaa !77
  %176 = tail call i32 @can_compare_p(i32 noundef %175, i32 noundef %160, i32 noundef 0) #16
  %177 = icmp eq i32 %176, 0
  br i1 %177, label %178, label %205, !prof !149

178:                                              ; preds = %174
  switch i32 %175, label %204 [
    i32 89, label %179
    i32 88, label %180
    i32 87, label %184
    i32 86, label %185
    i32 85, label %189
    i32 84, label %190
    i32 83, label %194
    i32 82, label %195
    i32 81, label %199
    i32 80, label %200
  ]

179:                                              ; preds = %178
  tail call fastcc void @do_jump_by_parts_greater_rtx(i32 noundef %160, i32 noundef 1, ptr noundef %162, ptr noundef %163, ptr noundef %98, ptr noundef %168, i32 noundef %100)
  br label %317

180:                                              ; preds = %178
  %181 = icmp eq i32 %100, -1
  %182 = sub nsw i32 10000, %100
  %183 = select i1 %181, i32 -1, i32 %182
  tail call fastcc void @do_jump_by_parts_greater_rtx(i32 noundef %160, i32 noundef 1, ptr noundef %163, ptr noundef %162, ptr noundef %168, ptr noundef %98, i32 noundef %183)
  br label %317

184:                                              ; preds = %178
  tail call fastcc void @do_jump_by_parts_greater_rtx(i32 noundef %160, i32 noundef 1, ptr noundef %163, ptr noundef %162, ptr noundef %98, ptr noundef %168, i32 noundef %100)
  br label %317

185:                                              ; preds = %178
  %186 = icmp eq i32 %100, -1
  %187 = sub nsw i32 10000, %100
  %188 = select i1 %186, i32 -1, i32 %187
  tail call fastcc void @do_jump_by_parts_greater_rtx(i32 noundef %160, i32 noundef 1, ptr noundef %162, ptr noundef %163, ptr noundef %168, ptr noundef %98, i32 noundef %188)
  br label %317

189:                                              ; preds = %178
  tail call fastcc void @do_jump_by_parts_greater_rtx(i32 noundef %160, i32 noundef 0, ptr noundef %162, ptr noundef %163, ptr noundef %98, ptr noundef %168, i32 noundef %100)
  br label %317

190:                                              ; preds = %178
  %191 = icmp eq i32 %100, -1
  %192 = sub nsw i32 10000, %100
  %193 = select i1 %191, i32 -1, i32 %192
  tail call fastcc void @do_jump_by_parts_greater_rtx(i32 noundef %160, i32 noundef 0, ptr noundef %163, ptr noundef %162, ptr noundef %168, ptr noundef %98, i32 noundef %193)
  br label %317

194:                                              ; preds = %178
  tail call fastcc void @do_jump_by_parts_greater_rtx(i32 noundef %160, i32 noundef 0, ptr noundef %163, ptr noundef %162, ptr noundef %98, ptr noundef %168, i32 noundef %100)
  br label %317

195:                                              ; preds = %178
  %196 = icmp eq i32 %100, -1
  %197 = sub nsw i32 10000, %100
  %198 = select i1 %196, i32 -1, i32 %197
  tail call fastcc void @do_jump_by_parts_greater_rtx(i32 noundef %160, i32 noundef 0, ptr noundef %162, ptr noundef %163, ptr noundef %168, ptr noundef %98, i32 noundef %198)
  br label %317

199:                                              ; preds = %178
  tail call fastcc void @do_jump_by_parts_equality_rtx(i32 noundef %160, ptr noundef %163, ptr noundef %162, ptr noundef %98, ptr noundef %168, i32 noundef %100)
  br label %317

200:                                              ; preds = %178
  %201 = icmp eq i32 %100, -1
  %202 = sub nsw i32 10000, %100
  %203 = select i1 %201, i32 -1, i32 %202
  tail call fastcc void @do_jump_by_parts_equality_rtx(i32 noundef %160, ptr noundef %163, ptr noundef %162, ptr noundef %168, ptr noundef %98, i32 noundef %203)
  br label %317

204:                                              ; preds = %178
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1023, ptr noundef nonnull @.str.1) #16
  br label %317

205:                                              ; preds = %174, %167
  %206 = icmp eq i8 %172, 8
  br i1 %206, label %207, label %269, !prof !149

207:                                              ; preds = %205
  %208 = load i32, ptr %10, align 4, !tbaa !77
  %209 = tail call i32 @can_compare_p(i32 noundef %208, i32 noundef %160, i32 noundef 0) #16
  %210 = icmp eq i32 %209, 0
  br i1 %210, label %211, label %217

211:                                              ; preds = %207
  %212 = tail call i32 @swap_condition(i32 noundef %208) #16
  %213 = tail call i32 @can_compare_p(i32 noundef %212, i32 noundef %160, i32 noundef 0) #16
  %214 = icmp eq i32 %213, 0
  br i1 %214, label %217, label %215

215:                                              ; preds = %211
  %216 = tail call i32 @swap_condition(i32 noundef %208) #16
  store i32 %216, ptr %10, align 4, !tbaa !77
  br label %269

217:                                              ; preds = %211, %207
  br i1 %206, label %218, label %269, !prof !149

218:                                              ; preds = %217
  %219 = load i32, ptr %10, align 4
  %220 = tail call i32 @can_compare_p(i32 noundef %219, i32 noundef %160, i32 noundef 0) #16
  %221 = freeze i32 %220
  %222 = icmp ne i32 %221, 0
  %223 = and i32 %219, -2
  %224 = icmp eq i32 %223, 90
  %225 = or i1 %224, %222
  br i1 %225, label %269, label %226

226:                                              ; preds = %218
  %227 = tail call i32 @have_insn_for(i32 noundef 48, i32 noundef %160) #16
  %228 = icmp eq i32 %227, 0
  br i1 %228, label %229, label %234

229:                                              ; preds = %226
  %230 = zext i32 %219 to i64
  %231 = getelementptr inbounds [140 x ptr], ptr @code_to_optab, i64 0, i64 %230
  %232 = load ptr, ptr %231, align 8, !tbaa !62
  %233 = icmp eq ptr %232, null
  br i1 %233, label %234, label %269

234:                                              ; preds = %229, %226
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #16
  %235 = call zeroext i8 @split_comparison(i32 noundef %219, i32 noundef %160, ptr noundef nonnull %11, ptr noundef nonnull %10), !range !108
  switch i8 %172, label %247 [
    i8 8, label %236
    i8 9, label %236
    i8 11, label %236
    i8 17, label %236
  ]

236:                                              ; preds = %234, %234, %234, %234
  %237 = add i32 %160, -38
  %238 = zext i32 %237 to i64
  %239 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %238
  %240 = load ptr, ptr %239, align 8, !tbaa !62
  %241 = getelementptr inbounds %struct.real_format, ptr %240, i64 0, i32 11
  %242 = load i8, ptr %241, align 2, !tbaa !143
  %243 = icmp eq i8 %242, 0
  %244 = load i32, ptr @flag_finite_math_only, align 4
  %245 = icmp ne i32 %244, 0
  %246 = select i1 %243, i1 true, i1 %245
  br i1 %246, label %247, label %253

247:                                              ; preds = %234, %236
  %248 = load i32, ptr %11, align 4, !tbaa !77
  %249 = icmp eq i8 %235, 0
  %250 = select i1 %249, i32 90, i32 91
  %251 = icmp eq i32 %248, %250
  br i1 %251, label %267, label %252

252:                                              ; preds = %247
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1058, ptr noundef nonnull @.str.1) #16
  br label %267

253:                                              ; preds = %236
  %254 = icmp eq i8 %235, 0
  br i1 %254, label %265, label %255

255:                                              ; preds = %253
  %256 = icmp eq ptr %98, null
  br i1 %256, label %257, label %261

257:                                              ; preds = %255
  %258 = icmp eq ptr %169, null
  br i1 %258, label %259, label %261

259:                                              ; preds = %257
  %260 = tail call ptr @gen_label_rtx() #16
  br label %261

261:                                              ; preds = %255, %257, %259
  %262 = phi ptr [ %169, %257 ], [ %260, %259 ], [ %169, %255 ]
  %263 = phi ptr [ %169, %257 ], [ %260, %259 ], [ %98, %255 ]
  %264 = load i32, ptr %11, align 4, !tbaa !77
  tail call void @do_compare_rtx_and_jump(ptr noundef %163, ptr noundef %162, i32 noundef %264, i32 noundef %161, i32 noundef %160, ptr noundef %5, ptr noundef %263, ptr noundef null, i32 noundef %100)
  br label %267

265:                                              ; preds = %253
  %266 = load i32, ptr %11, align 4, !tbaa !77
  tail call void @do_compare_rtx_and_jump(ptr noundef %163, ptr noundef %162, i32 noundef %266, i32 noundef %161, i32 noundef %160, ptr noundef %5, ptr noundef null, ptr noundef %168, i32 noundef %100)
  br label %267

267:                                              ; preds = %252, %247, %261, %265
  %268 = phi ptr [ %169, %247 ], [ %169, %252 ], [ %262, %261 ], [ %169, %265 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #16
  br label %269

269:                                              ; preds = %205, %218, %217, %229, %267, %215
  %270 = phi ptr [ %268, %267 ], [ %169, %229 ], [ %169, %217 ], [ %169, %215 ], [ %169, %218 ], [ %169, %205 ]
  %271 = phi ptr [ %162, %267 ], [ %162, %229 ], [ %162, %217 ], [ %163, %215 ], [ %162, %218 ], [ %162, %205 ]
  %272 = phi ptr [ %163, %267 ], [ %163, %229 ], [ %163, %217 ], [ %162, %215 ], [ %163, %218 ], [ %163, %205 ]
  %273 = tail call ptr @get_last_insn() #16
  %274 = load i32, ptr %10, align 4, !tbaa !77
  tail call void @emit_cmp_and_jump_insns(ptr noundef %272, ptr noundef %271, i32 noundef %274, ptr noundef %5, i32 noundef %160, i32 noundef %161, ptr noundef %168) #16
  %275 = icmp eq i32 %100, -1
  br i1 %275, label %317, label %276, !prof !150

276:                                              ; preds = %269
  %277 = load ptr, ptr @cfun, align 8, !tbaa !62
  %278 = getelementptr inbounds %struct.function, ptr %277, i64 0, i32 1
  %279 = load ptr, ptr %278, align 8, !tbaa !151
  %280 = getelementptr inbounds %struct.control_flow_graph, ptr %279, i64 0, i32 7
  %281 = load i32, ptr %280, align 8, !tbaa !153
  %282 = icmp eq i32 %281, 0
  br i1 %282, label %317, label %283, !prof !155

283:                                              ; preds = %276
  %284 = getelementptr inbounds %struct.rtx_def, ptr %273, i64 0, i32 1, i32 0, i32 0, i64 2
  %285 = load ptr, ptr %284, align 8, !tbaa !73
  br label %286

286:                                              ; preds = %293, %283
  %287 = phi ptr [ %285, %283 ], [ %291, %293 ]
  %288 = icmp eq ptr %287, null
  br i1 %288, label %305, label %289, !prof !156

289:                                              ; preds = %286
  %290 = getelementptr inbounds %struct.rtx_def, ptr %287, i64 0, i32 1, i32 0, i32 0, i64 2
  %291 = load ptr, ptr %290, align 8, !tbaa !73
  %292 = icmp ne ptr %291, null
  br i1 %292, label %293, label %297, !prof !157

293:                                              ; preds = %289
  %294 = load i32, ptr %287, align 8
  %295 = and i32 %294, 65535
  %296 = icmp eq i32 %295, 9
  br i1 %296, label %297, label %286, !prof !155, !llvm.loop !158

297:                                              ; preds = %293, %289
  %298 = load i32, ptr %287, align 8
  %299 = and i32 %298, 65535
  %300 = icmp ne i32 %299, 9
  %301 = or i1 %292, %300
  br i1 %301, label %305, label %302, !prof !159

302:                                              ; preds = %297
  %303 = tail call i32 @any_condjump_p(ptr noundef nonnull %287) #16
  %304 = icmp eq i32 %303, 0
  br i1 %304, label %305, label %310, !prof !155

305:                                              ; preds = %286, %297, %302
  %306 = load ptr, ptr @dump_file, align 8, !tbaa !62
  %307 = icmp eq ptr %306, null
  br i1 %307, label %317, label %308

308:                                              ; preds = %305
  %309 = tail call i64 @fwrite(ptr nonnull @.str.2, i64 31, i64 1, ptr nonnull %306)
  br label %317

310:                                              ; preds = %302
  %311 = tail call ptr @find_reg_note(ptr noundef nonnull %287, i32 noundef 13, ptr noundef null) #16
  %312 = icmp eq ptr %311, null
  br i1 %312, label %314, label %313, !prof !160

313:                                              ; preds = %310
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1103, ptr noundef nonnull @.str.1) #16
  br label %314

314:                                              ; preds = %310, %313
  %315 = sext i32 %100 to i64
  %316 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %315) #16
  tail call void @add_reg_note(ptr noundef nonnull %287, i32 noundef 13, ptr noundef %316) #16
  br label %317

317:                                              ; preds = %269, %276, %305, %308, %314, %179, %180, %184, %185, %189, %190, %194, %195, %199, %200, %204
  %318 = phi ptr [ %270, %308 ], [ %270, %305 ], [ %270, %314 ], [ %270, %276 ], [ %270, %269 ], [ %169, %204 ], [ %169, %200 ], [ %169, %199 ], [ %169, %195 ], [ %169, %194 ], [ %169, %190 ], [ %169, %189 ], [ %169, %185 ], [ %169, %184 ], [ %169, %180 ], [ %169, %179 ]
  %319 = icmp eq ptr %98, null
  br i1 %319, label %321, label %320, !prof !147

320:                                              ; preds = %317
  tail call void @emit_jump(ptr noundef nonnull %98) #16
  br label %321

321:                                              ; preds = %320, %317
  %322 = icmp eq ptr %318, null
  br i1 %322, label %325, label %323, !prof !147

323:                                              ; preds = %321
  %324 = tail call ptr @emit_label(ptr noundef nonnull %318) #16
  br label %325

325:                                              ; preds = %321, %323, %143, %146
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local noundef zeroext i8 @split_comparison(i32 noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #13 !prof !61 {
  switch i32 %0, label %44 [
    i32 85, label %5
    i32 84, label %6
    i32 83, label %7
    i32 82, label %8
    i32 81, label %9
    i32 80, label %10
    i32 96, label %11
    i32 95, label %12
    i32 94, label %13
    i32 93, label %14
    i32 92, label %15
    i32 97, label %16
  ]

5:                                                ; preds = %4
  store i32 91, ptr %2, align 4, !tbaa !77
  store i32 96, ptr %3, align 4, !tbaa !77
  br label %45

6:                                                ; preds = %4
  store i32 91, ptr %2, align 4, !tbaa !77
  store i32 95, ptr %3, align 4, !tbaa !77
  br label %45

7:                                                ; preds = %4
  store i32 91, ptr %2, align 4, !tbaa !77
  store i32 94, ptr %3, align 4, !tbaa !77
  br label %45

8:                                                ; preds = %4
  store i32 91, ptr %2, align 4, !tbaa !77
  store i32 93, ptr %3, align 4, !tbaa !77
  br label %45

9:                                                ; preds = %4
  store i32 91, ptr %2, align 4, !tbaa !77
  store i32 92, ptr %3, align 4, !tbaa !77
  br label %45

10:                                               ; preds = %4
  store i32 90, ptr %2, align 4, !tbaa !77
  store i32 97, ptr %3, align 4, !tbaa !77
  br label %45

11:                                               ; preds = %4
  store i32 90, ptr %2, align 4, !tbaa !77
  store i32 85, ptr %3, align 4, !tbaa !77
  br label %45

12:                                               ; preds = %4
  store i32 90, ptr %2, align 4, !tbaa !77
  store i32 84, ptr %3, align 4, !tbaa !77
  br label %45

13:                                               ; preds = %4
  store i32 90, ptr %2, align 4, !tbaa !77
  store i32 83, ptr %3, align 4, !tbaa !77
  br label %45

14:                                               ; preds = %4
  store i32 90, ptr %2, align 4, !tbaa !77
  store i32 82, ptr %3, align 4, !tbaa !77
  br label %45

15:                                               ; preds = %4
  store i32 90, ptr %2, align 4, !tbaa !77
  store i32 81, ptr %3, align 4, !tbaa !77
  br label %45

16:                                               ; preds = %4
  %17 = load i32, ptr @flag_signaling_nans, align 4, !tbaa !77
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %43, label %19

19:                                               ; preds = %16
  %20 = zext i32 %1 to i64
  %21 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %20
  %22 = load i8, ptr %21, align 1, !tbaa !73
  switch i8 %22, label %43 [
    i8 8, label %23
    i8 9, label %23
    i8 11, label %23
    i8 17, label %23
  ]

23:                                               ; preds = %19, %19, %19, %19
  %24 = and i8 %22, -2
  %25 = icmp eq i8 %24, 8
  br i1 %25, label %30, label %26

26:                                               ; preds = %23
  %27 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %20
  %28 = load i8, ptr %27, align 1, !tbaa !73
  %29 = zext i8 %28 to i32
  br label %30

30:                                               ; preds = %23, %26
  %31 = phi i32 [ %29, %26 ], [ %1, %23 ]
  %32 = add i32 %31, -38
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %33
  %35 = load ptr, ptr %34, align 8, !tbaa !62
  %36 = getelementptr inbounds %struct.real_format, ptr %35, i64 0, i32 11
  %37 = load i8, ptr %36, align 2, !tbaa !143
  %38 = icmp eq i8 %37, 0
  %39 = load i32, ptr @flag_finite_math_only, align 4
  %40 = icmp ne i32 %39, 0
  %41 = select i1 %38, i1 true, i1 %40
  br i1 %41, label %43, label %42

42:                                               ; preds = %30
  store i32 85, ptr %2, align 4, !tbaa !77
  store i32 83, ptr %3, align 4, !tbaa !77
  br label %45

43:                                               ; preds = %19, %30, %16
  store i32 91, ptr %2, align 4, !tbaa !77
  store i32 80, ptr %3, align 4, !tbaa !77
  br label %45

44:                                               ; preds = %4
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 876, ptr noundef nonnull @.str.1) #16
  br label %45

45:                                               ; preds = %44, %43, %42, %15, %14, %13, %12, %11, %10, %9, %8, %7, %6, %5
  %46 = phi i8 [ 0, %44 ], [ 1, %43 ], [ 0, %42 ], [ 0, %15 ], [ 0, %14 ], [ 0, %13 ], [ 0, %12 ], [ 0, %11 ], [ 0, %10 ], [ 1, %9 ], [ 1, %8 ], [ 1, %7 ], [ 1, %6 ], [ 1, %5 ]
  ret i8 %46
}

declare i32 @reverse_condition_maybe_unordered(i32 noundef) local_unnamed_addr #3

declare i32 @reverse_condition(i32 noundef) local_unnamed_addr #3

declare zeroext i8 @swap_commutative_operands_p(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @swap_condition(i32 noundef) local_unnamed_addr #3

declare i32 @unsigned_condition(i32 noundef) local_unnamed_addr #3

declare ptr @simplify_relational_operation(i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc void @do_jump_by_parts_greater_rtx(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, i32 noundef %6) unnamed_addr #13 !prof !61 {
  %8 = zext i32 %0 to i64
  %9 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %8
  %10 = load i8, ptr %9, align 1, !tbaa !73
  %11 = lshr i8 %10, 2
  %12 = zext nneg i8 %11 to i32
  %13 = icmp ne ptr %5, null
  %14 = icmp ne ptr %4, null
  %15 = and i1 %14, %13
  br i1 %15, label %18, label %16

16:                                               ; preds = %7
  %17 = tail call ptr @gen_label_rtx() #16
  br label %18

18:                                               ; preds = %7, %16
  %19 = phi ptr [ null, %7 ], [ %17, %16 ]
  %20 = select i1 %13, ptr %5, ptr %19
  %21 = select i1 %14, ptr %4, ptr %19
  %22 = icmp ult i8 %10, 4
  br i1 %22, label %40, label %23

23:                                               ; preds = %18
  %24 = icmp eq i32 %6, -1
  %25 = sub nsw i32 10000, %6
  %26 = select i1 %24, i32 -1, i32 %25
  br label %27

27:                                               ; preds = %23, %27
  %28 = phi i32 [ 0, %23 ], [ %38, %27 ]
  %29 = xor i32 %28, -1
  %30 = add nsw i32 %29, %12
  %31 = tail call ptr @operand_subword_force(ptr noundef %2, i32 noundef %30, i32 noundef %0) #16
  %32 = tail call ptr @operand_subword_force(ptr noundef %3, i32 noundef %30, i32 noundef %0) #16
  %33 = or i32 %28, %1
  %34 = icmp ne i32 %33, 0
  %35 = zext i1 %34 to i32
  %36 = load i32, ptr @word_mode, align 4, !tbaa !77
  tail call void @do_compare_rtx_and_jump(ptr noundef %31, ptr noundef %32, i32 noundef 83, i32 noundef %35, i32 noundef %36, ptr noundef null, ptr noundef null, ptr noundef %20, i32 noundef %6)
  %37 = load i32, ptr @word_mode, align 4, !tbaa !77
  tail call void @do_compare_rtx_and_jump(ptr noundef %31, ptr noundef %32, i32 noundef 80, i32 noundef %1, i32 noundef %37, ptr noundef null, ptr noundef null, ptr noundef %21, i32 noundef %26)
  %38 = add nuw nsw i32 %28, 1
  %39 = icmp eq i32 %38, %12
  br i1 %39, label %40, label %27, !llvm.loop !161

40:                                               ; preds = %27, %18
  %41 = icmp eq ptr %21, null
  br i1 %41, label %43, label %42

42:                                               ; preds = %40
  tail call void @emit_jump(ptr noundef nonnull %21) #16
  br label %43

43:                                               ; preds = %42, %40
  %44 = icmp eq ptr %19, null
  br i1 %44, label %47, label %45

45:                                               ; preds = %43
  %46 = tail call ptr @emit_label(ptr noundef nonnull %19) #16
  br label %47

47:                                               ; preds = %45, %43
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal fastcc void @do_jump_by_parts_equality_rtx(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) unnamed_addr #13 !prof !61 {
  %7 = zext i32 %0 to i64
  %8 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %7
  %9 = load i8, ptr %8, align 1, !tbaa !73
  %10 = lshr i8 %9, 2
  %11 = zext nneg i8 %10 to i32
  %12 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !62
  %13 = icmp eq ptr %12, %2
  br i1 %13, label %14, label %15

14:                                               ; preds = %6
  tail call fastcc void @do_jump_by_parts_zero_rtx(i32 noundef %0, ptr noundef %1, ptr noundef %3, ptr noundef %4, i32 noundef %5)
  br label %40

15:                                               ; preds = %6
  %16 = icmp eq ptr %12, %1
  br i1 %16, label %17, label %18

17:                                               ; preds = %15
  tail call fastcc void @do_jump_by_parts_zero_rtx(i32 noundef %0, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5)
  br label %40

18:                                               ; preds = %15
  %19 = icmp eq ptr %3, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %18
  %21 = tail call ptr @gen_label_rtx() #16
  br label %22

22:                                               ; preds = %20, %18
  %23 = phi ptr [ %3, %18 ], [ %21, %20 ]
  %24 = phi ptr [ null, %18 ], [ %21, %20 ]
  %25 = icmp ult i8 %9, 4
  br i1 %25, label %33, label %26

26:                                               ; preds = %22, %26
  %27 = phi i32 [ %31, %26 ], [ 0, %22 ]
  %28 = tail call ptr @operand_subword_force(ptr noundef %1, i32 noundef %27, i32 noundef %0) #16
  %29 = tail call ptr @operand_subword_force(ptr noundef %2, i32 noundef %27, i32 noundef %0) #16
  %30 = load i32, ptr @word_mode, align 4, !tbaa !77
  tail call void @do_compare_rtx_and_jump(ptr noundef %28, ptr noundef %29, i32 noundef 81, i32 noundef 0, i32 noundef %30, ptr noundef null, ptr noundef %23, ptr noundef null, i32 noundef %5)
  %31 = add nuw nsw i32 %27, 1
  %32 = icmp eq i32 %31, %11
  br i1 %32, label %33, label %26, !llvm.loop !162

33:                                               ; preds = %26, %22
  %34 = icmp eq ptr %4, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %33
  tail call void @emit_jump(ptr noundef nonnull %4) #16
  br label %36

36:                                               ; preds = %35, %33
  %37 = icmp eq ptr %24, null
  br i1 %37, label %40, label %38

38:                                               ; preds = %36
  %39 = tail call ptr @emit_label(ptr noundef nonnull %24) #16
  br label %40

40:                                               ; preds = %36, %38, %17, %14
  ret void
}

declare ptr @get_last_insn() local_unnamed_addr #3

declare void @emit_cmp_and_jump_insns(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare i32 @any_condjump_p(ptr noundef) local_unnamed_addr #3

declare ptr @find_reg_note(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @add_reg_note(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @gt_ggc_mx_rtx_def(ptr noundef) #3

declare void @gt_pch_nx_rtx_def(ptr noundef) #3

declare ptr @gen_rtx_REG(i32 noundef, i32 noundef) local_unnamed_addr #3

declare ptr @gen_rtx_fmt_ee_stat(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @immed_double_const(i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

declare i32 @rtx_cost(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #3

declare ptr @expand_expr_real(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @operand_subword_force(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc void @do_jump_by_parts_zero_rtx(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) unnamed_addr #13 !prof !61 {
  %6 = zext i32 %0 to i64
  %7 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %6
  %8 = load i8, ptr %7, align 1, !tbaa !73
  %9 = lshr i8 %8, 2
  %10 = zext nneg i8 %9 to i32
  %11 = load i32, ptr @word_mode, align 4, !tbaa !77
  %12 = tail call ptr @gen_reg_rtx(i32 noundef %11) #16
  %13 = tail call ptr @operand_subword_force(ptr noundef %1, i32 noundef 0, i32 noundef %0) #16
  %14 = tail call ptr @emit_move_insn(ptr noundef %12, ptr noundef %13) #16
  %15 = icmp ugt i8 %8, 7
  %16 = icmp ne ptr %12, null
  %17 = select i1 %15, i1 %16, i1 false
  br i1 %17, label %18, label %28

18:                                               ; preds = %5, %18
  %19 = phi i32 [ %24, %18 ], [ 1, %5 ]
  %20 = phi ptr [ %23, %18 ], [ %12, %5 ]
  %21 = load i32, ptr @word_mode, align 4, !tbaa !77
  %22 = tail call ptr @operand_subword_force(ptr noundef %1, i32 noundef %19, i32 noundef %0) #16
  %23 = tail call ptr @expand_binop(i32 noundef %21, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 42), ptr noundef nonnull %20, ptr noundef %22, ptr noundef nonnull %20, i32 noundef 1, i32 noundef 2) #16
  %24 = add nuw nsw i32 %19, 1
  %25 = icmp ult i32 %24, %10
  %26 = icmp ne ptr %23, null
  %27 = select i1 %25, i1 %26, i1 false
  br i1 %27, label %18, label %28, !llvm.loop !163

28:                                               ; preds = %18, %5
  %29 = phi ptr [ %12, %5 ], [ %23, %18 ]
  %30 = phi i1 [ %16, %5 ], [ %26, %18 ]
  br i1 %30, label %31, label %34

31:                                               ; preds = %28
  %32 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !62
  %33 = load i32, ptr @word_mode, align 4, !tbaa !77
  tail call void @do_compare_rtx_and_jump(ptr noundef nonnull %29, ptr noundef %32, i32 noundef 81, i32 noundef 1, i32 noundef %33, ptr noundef null, ptr noundef %2, ptr noundef %3, i32 noundef %4)
  br label %56

34:                                               ; preds = %28
  %35 = icmp eq ptr %2, null
  br i1 %35, label %36, label %38

36:                                               ; preds = %34
  %37 = tail call ptr @gen_label_rtx() #16
  br label %38

38:                                               ; preds = %36, %34
  %39 = phi ptr [ %2, %34 ], [ %37, %36 ]
  %40 = phi ptr [ null, %34 ], [ %37, %36 ]
  %41 = icmp ult i8 %8, 4
  br i1 %41, label %49, label %42

42:                                               ; preds = %38, %42
  %43 = phi i32 [ %47, %42 ], [ 0, %38 ]
  %44 = tail call ptr @operand_subword_force(ptr noundef %1, i32 noundef %43, i32 noundef %0) #16
  %45 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !62
  %46 = load i32, ptr @word_mode, align 4, !tbaa !77
  tail call void @do_compare_rtx_and_jump(ptr noundef %44, ptr noundef %45, i32 noundef 81, i32 noundef 1, i32 noundef %46, ptr noundef null, ptr noundef %39, ptr noundef null, i32 noundef %4)
  %47 = add nuw nsw i32 %43, 1
  %48 = icmp eq i32 %47, %10
  br i1 %48, label %49, label %42, !llvm.loop !164

49:                                               ; preds = %42, %38
  %50 = icmp eq ptr %3, null
  br i1 %50, label %52, label %51

51:                                               ; preds = %49
  tail call void @emit_jump(ptr noundef nonnull %3) #16
  br label %52

52:                                               ; preds = %51, %49
  %53 = icmp eq ptr %40, null
  br i1 %53, label %56, label %54

54:                                               ; preds = %52
  %55 = tail call ptr @emit_label(ptr noundef nonnull %40) #16
  br label %56

56:                                               ; preds = %52, %54, %31
  ret void
}

declare ptr @gen_reg_rtx(i32 noundef) local_unnamed_addr #3

declare ptr @emit_move_insn(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @expand_binop(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare ptr @expr_size(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #15

attributes #0 = { cold inlinehint nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold inlinehint mustprogress nofree nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree nounwind }
attributes #16 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!60}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59}
!35 = !{ptr @do_jump, ptr @expand_expr_real, i64 59619}
!36 = !{ptr @do_jump, ptr @do_compare_rtx_and_jump, i64 59619}
!37 = !{ptr @jumpifnot_1, ptr @do_jump_1, i64 74804}
!38 = !{ptr @do_jump_1, ptr @integer_zerop, i64 130787}
!39 = !{ptr @do_jump_1, ptr @do_jump, i64 59619}
!40 = !{ptr @do_jump_1, ptr @can_compare_p, i64 89713}
!41 = !{ptr @do_jump_1, ptr @expand_expr_real, i64 173770}
!42 = !{ptr @do_jump_1, ptr @do_compare_rtx_and_jump, i64 86885}
!43 = !{ptr @do_jump_1, ptr @do_compare_and_jump, i64 2828}
!44 = !{ptr @do_jump_1, ptr @gen_label_rtx, i64 8591}
!45 = !{ptr @do_jump_1, ptr @emit_label, i64 8591}
!46 = !{ptr @jumpif_1, ptr @do_jump_1, i64 65366}
!47 = !{ptr @do_compare_and_jump, ptr @expand_expr_real, i64 5656}
!48 = !{ptr @do_compare_and_jump, ptr @do_compare_rtx_and_jump, i64 2828}
!49 = !{ptr @do_compare_rtx_and_jump, ptr @can_compare_p, i64 299054}
!50 = !{ptr @do_compare_rtx_and_jump, ptr @reverse_condition, i64 77046}
!51 = !{ptr @do_compare_rtx_and_jump, ptr @swap_commutative_operands_p, i64 149527}
!52 = !{ptr @do_compare_rtx_and_jump, ptr @unsigned_condition, i64 112842}
!53 = !{ptr @do_compare_rtx_and_jump, ptr @simplify_relational_operation, i64 149527}
!54 = !{ptr @do_compare_rtx_and_jump, ptr @get_last_insn, i64 149527}
!55 = !{ptr @do_compare_rtx_and_jump, ptr @emit_cmp_and_jump_insns, i64 149527}
!56 = !{ptr @do_compare_rtx_and_jump, ptr @any_condjump_p, i64 149332}
!57 = !{ptr @do_compare_rtx_and_jump, ptr @find_reg_note, i64 149332}
!58 = !{ptr @do_compare_rtx_and_jump, ptr @gen_rtx_CONST_INT, i64 149332}
!59 = !{ptr @do_compare_rtx_and_jump, ptr @add_reg_note, i64 149332}
!60 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!61 = !{!"function_entry_count", i64 0}
!62 = !{!63, !63, i64 0}
!63 = !{!"any pointer", !64, i64 0}
!64 = !{!"omnipotent char", !65, i64 0}
!65 = !{!"Simple C/C++ TBAA"}
!66 = !{!67, !63, i64 8}
!67 = !{!"_IO_FILE", !68, i64 0, !63, i64 8, !63, i64 16, !63, i64 24, !63, i64 32, !63, i64 40, !63, i64 48, !63, i64 56, !63, i64 64, !63, i64 72, !63, i64 80, !63, i64 88, !63, i64 96, !63, i64 104, !68, i64 112, !68, i64 116, !69, i64 120, !70, i64 128, !64, i64 130, !64, i64 131, !63, i64 136, !69, i64 144, !63, i64 152, !63, i64 160, !63, i64 168, !63, i64 176, !69, i64 184, !68, i64 192, !64, i64 196}
!68 = !{!"int", !64, i64 0}
!69 = !{!"long", !64, i64 0}
!70 = !{!"short", !64, i64 0}
!71 = !{!67, !63, i64 16}
!72 = !{!"branch_weights", i32 2000, i32 1}
!73 = !{!64, !64, i64 0}
!74 = !{!67, !63, i64 40}
!75 = !{!67, !63, i64 48}
!76 = !{!67, !68, i64 0}
!77 = !{!68, !68, i64 0}
!78 = distinct !{!78, !79, !80}
!79 = !{!"llvm.loop.mustprogress"}
!80 = !{!"llvm.loop.unroll.disable"}
!81 = !{!82, !68, i64 0}
!82 = !{!"rtl_data", !83, i64 0, !84, i64 40, !85, i64 96, !86, i64 112, !88, i64 208, !89, i64 248, !68, i64 312, !63, i64 320, !63, i64 328, !63, i64 336, !63, i64 344, !63, i64 352, !63, i64 360, !63, i64 368, !63, i64 376, !63, i64 384, !63, i64 392, !69, i64 400, !63, i64 408, !63, i64 416, !63, i64 424, !68, i64 432, !68, i64 436, !68, i64 440, !68, i64 444, !68, i64 448, !68, i64 452, !63, i64 456, !64, i64 464, !64, i64 465, !64, i64 466, !64, i64 467, !64, i64 468, !64, i64 469, !64, i64 470, !64, i64 471, !64, i64 472, !64, i64 473, !64, i64 474, !64, i64 475, !64, i64 476, !64, i64 477, !64, i64 478, !64, i64 479, !64, i64 480, !64, i64 481, !64, i64 482, !64, i64 483, !64, i64 484, !64, i64 485}
!83 = !{!"expr_status", !68, i64 0, !68, i64 4, !68, i64 8, !63, i64 16, !63, i64 24, !63, i64 32}
!84 = !{!"emit_status", !68, i64 0, !68, i64 4, !63, i64 8, !63, i64 16, !63, i64 24, !68, i64 32, !68, i64 36, !68, i64 40, !68, i64 44, !63, i64 48}
!85 = !{!"varasm_status", !63, i64 0, !68, i64 8}
!86 = !{!"incoming_args", !68, i64 0, !68, i64 4, !68, i64 8, !63, i64 16, !87, i64 24, !63, i64 88}
!87 = !{!"ix86_args", !68, i64 0, !68, i64 4, !68, i64 8, !68, i64 12, !68, i64 16, !68, i64 20, !68, i64 24, !68, i64 28, !68, i64 32, !68, i64 36, !68, i64 40, !68, i64 44, !68, i64 48, !68, i64 52, !68, i64 56, !68, i64 60}
!88 = !{!"function_subsections", !63, i64 0, !63, i64 8, !63, i64 16, !63, i64 24, !63, i64 32}
!89 = !{!"rtl_eh", !63, i64 0, !63, i64 8, !63, i64 16, !63, i64 24, !63, i64 32, !63, i64 40, !64, i64 48}
!90 = !{!82, !68, i64 8}
!91 = !{!"function_entry_count", i64 76}
!92 = !{!"branch_weights", i32 76, i32 0}
!93 = !{!"function_entry_count", i64 187993}
!94 = !{!82, !68, i64 4}
!95 = !{!"branch_weights", i32 405730, i32 0}
!96 = !{!"function_entry_count", i64 59619}
!97 = !{!"branch_weights", i32 59619, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0}
!98 = !{!99, !63, i64 456}
!99 = !{!"lang_hooks", !63, i64 0, !69, i64 8, !63, i64 16, !63, i64 24, !63, i64 32, !63, i64 40, !63, i64 48, !63, i64 56, !63, i64 64, !63, i64 72, !63, i64 80, !63, i64 88, !63, i64 96, !63, i64 104, !63, i64 112, !63, i64 120, !63, i64 128, !63, i64 136, !63, i64 144, !63, i64 152, !63, i64 160, !63, i64 168, !63, i64 176, !63, i64 184, !63, i64 192, !63, i64 200, !63, i64 208, !63, i64 216, !63, i64 224, !63, i64 232, !100, i64 240, !101, i64 248, !102, i64 256, !103, i64 272, !104, i64 432, !105, i64 560, !63, i64 584, !63, i64 592, !63, i64 600, !63, i64 608, !63, i64 616, !63, i64 624, !63, i64 632, !63, i64 640, !63, i64 648, !63, i64 656, !63, i64 664, !64, i64 672}
!100 = !{!"lang_hooks_for_tree_inlining", !63, i64 0}
!101 = !{!"lang_hooks_for_callgraph", !63, i64 0}
!102 = !{!"lang_hooks_for_tree_dump", !63, i64 0, !63, i64 8}
!103 = !{!"lang_hooks_for_decls", !63, i64 0, !63, i64 8, !63, i64 16, !63, i64 24, !63, i64 32, !63, i64 40, !63, i64 48, !63, i64 56, !63, i64 64, !63, i64 72, !63, i64 80, !63, i64 88, !63, i64 96, !63, i64 104, !63, i64 112, !63, i64 120, !63, i64 128, !63, i64 136, !63, i64 144, !63, i64 152}
!104 = !{!"lang_hooks_for_types", !63, i64 0, !63, i64 8, !63, i64 16, !63, i64 24, !63, i64 32, !63, i64 40, !63, i64 48, !63, i64 56, !63, i64 64, !63, i64 72, !63, i64 80, !63, i64 88, !63, i64 96, !63, i64 104, !63, i64 112, !64, i64 120}
!105 = !{!"lang_hooks_for_lto", !63, i64 0, !63, i64 8, !63, i64 16}
!106 = !{!69, !69, i64 0}
!107 = distinct !{!107, !79, !80}
!108 = !{i8 0, i8 2}
!109 = !{!99, !63, i64 448}
!110 = !{!"branch_weights", i32 0, i32 59619}
!111 = !{!"branch_weights", i32 59619, i32 0}
!112 = !{!"function_entry_count", i64 74804}
!113 = !{!"branch_weights", i32 0, i32 74804}
!114 = !{!"function_entry_count", i64 140170}
!115 = !{!"branch_weights", i32 0, i32 106517, i32 24270, i32 80, i32 138, i32 0, i32 3, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 9162}
!116 = !{!"branch_weights", i32 0, i32 106517}
!117 = !{!"branch_weights", i32 86885, i32 19632}
!118 = !{!"branch_weights", i32 0, i32 19632}
!119 = !{!"branch_weights", i32 0, i32 86885}
!120 = !{!"branch_weights", i32 86885, i32 0}
!121 = !{!"branch_weights", i32 0, i32 89713}
!122 = !{!"branch_weights", i32 0, i32 24270}
!123 = !{!"branch_weights", i32 2607, i32 21663}
!124 = !{!"branch_weights", i32 0, i32 2607}
!125 = !{!"branch_weights", i32 2607, i32 0}
!126 = !{!"branch_weights", i32 0, i32 80}
!127 = !{!"branch_weights", i32 80, i32 0}
!128 = !{!"branch_weights", i32 0, i32 138}
!129 = !{!"branch_weights", i32 138, i32 0}
!130 = !{!"branch_weights", i32 0, i32 3}
!131 = !{!"branch_weights", i32 3, i32 0}
!132 = !{!"branch_weights", i32 8591, i32 571}
!133 = !{!"branch_weights", i32 131579, i32 8591}
!134 = !{!"function_entry_count", i64 65366}
!135 = !{!"function_entry_count", i64 2828}
!136 = !{!"dojump.c;do_compare_and_jump"}
!137 = !{!"branch_weights", i32 9779, i32 79934}
!138 = !{!"function_entry_count", i64 149527}
!139 = !{!"branch_weights", i32 77046, i32 72481}
!140 = !{!"branch_weights", i32 0, i32 72481}
!141 = !{!"branch_weights", i32 77046, i32 0, i32 0, i32 0}
!142 = !{!"branch_weights", i32 77046, i32 0}
!143 = !{!144, !64, i64 46}
!144 = !{!"real_format", !63, i64 0, !63, i64 8, !68, i64 16, !68, i64 20, !68, i64 24, !68, i64 28, !68, i64 32, !68, i64 36, !68, i64 40, !64, i64 44, !64, i64 45, !64, i64 46, !64, i64 47, !64, i64 48, !64, i64 49, !64, i64 50, !64, i64 51}
!145 = !{!"branch_weights", i32 77046, i32 0, i32 0, i32 0, i32 0}
!146 = !{!"branch_weights", i32 0, i32 77046}
!147 = !{!"branch_weights", i32 149527, i32 0}
!148 = !{!"branch_weights", i32 36685, i32 112842}
!149 = !{!"branch_weights", i32 0, i32 149527}
!150 = !{!"branch_weights", i32 195, i32 149332}
!151 = !{!152, !63, i64 8}
!152 = !{!"function", !63, i64 0, !63, i64 8, !63, i64 16, !63, i64 24, !63, i64 32, !63, i64 40, !63, i64 48, !63, i64 56, !63, i64 64, !63, i64 72, !63, i64 80, !63, i64 88, !63, i64 96, !68, i64 104, !68, i64 108, !68, i64 112, !68, i64 116, !68, i64 120, !68, i64 124, !63, i64 128, !68, i64 136, !68, i64 137, !68, i64 138, !68, i64 138, !68, i64 138, !68, i64 138, !68, i64 138, !68, i64 138, !68, i64 138, !68, i64 139, !68, i64 139, !68, i64 139, !68, i64 139, !68, i64 139, !68, i64 139, !68, i64 139}
!153 = !{!154, !68, i64 48}
!154 = !{!"control_flow_graph", !63, i64 0, !63, i64 8, !63, i64 16, !68, i64 24, !68, i64 28, !68, i64 32, !63, i64 40, !68, i64 48, !64, i64 52, !64, i64 60, !68, i64 68, !68, i64 72}
!155 = !{!"branch_weights", i32 0, i32 149332}
!156 = !{!"branch_weights", i32 0, i32 298664}
!157 = !{!"branch_weights", i32 149332, i32 149332}
!158 = distinct !{!158, !79, !80}
!159 = !{!"branch_weights", i32 0, i32 -1507461518}
!160 = !{!"branch_weights", i32 149332, i32 0}
!161 = distinct !{!161, !79, !80}
!162 = distinct !{!162, !79, !80}
!163 = distinct !{!163, !79, !80}
!164 = distinct !{!164, !79, !80}
