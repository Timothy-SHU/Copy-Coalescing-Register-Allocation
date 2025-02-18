; ModuleID = 'explow.c'
source_filename = "explow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

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
%struct.rtl_data = type { %struct.expr_status, %struct.emit_status, %struct.varasm_status, %struct.incoming_args, %struct.function_subsections, %struct.rtl_eh, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.expr_status = type { i32, i32, i32, ptr, ptr, ptr }
%struct.emit_status = type { i32, i32, ptr, ptr, ptr, i32, i32, i32, i32, ptr }
%struct.varasm_status = type { ptr, i32 }
%struct.incoming_args = type { i32, i32, i32, ptr, %struct.ix86_args, ptr }
%struct.ix86_args = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.function_subsections = type { ptr, ptr, ptr, ptr, ptr }
%struct.rtl_eh = type { ptr, ptr, ptr, ptr, ptr, ptr, [2 x ptr] }
%struct.optab_d = type { i32, ptr, i8, ptr, [87 x %struct.optab_handlers] }
%struct.optab_handlers = type { i32 }
%struct.insn_data = type { ptr, %union.anon.0, ptr, ptr, i8, i8, i8, i8 }
%union.anon.0 = type { ptr }
%struct.ggc_root_tab = type { ptr, i64, i64, ptr, ptr }
%struct._IO_FILE = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, [1 x i8], ptr, i64, ptr, ptr, ptr, ptr, i64, i32, [20 x i8] }
%struct.rtx_def = type { i32, %union.u }
%union.u = type { %struct.block_symbol }
%struct.block_symbol = type { [3 x %union.rtunion_def], ptr, i64 }
%union.rtunion_def = type { ptr }
%struct.tree_exp = type { %struct.tree_common, i32, ptr, [1 x ptr] }
%struct.tree_common = type { %struct.tree_base, ptr, ptr }
%struct.tree_base = type { i64 }
%struct.tree_type = type { %struct.tree_common, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, %union.tree_type_symtab, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.tree_type_symtab = type { ptr }
%struct.tree_decl_common = type { %struct.tree_decl_minimal, ptr, i40, i32, ptr, ptr, ptr, ptr, ptr }
%struct.tree_decl_minimal = type { %struct.tree_common, i32, i32, ptr, ptr }
%struct.mem_attrs = type { ptr, ptr, ptr, i32, i32, i8 }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.insn_operand_data = type { ptr, ptr, i16, i8, i8 }

@stdout = external local_unnamed_addr global ptr, align 8
@stdin = external local_unnamed_addr global ptr, align 8
@mode_size = external local_unnamed_addr global [87 x i8], align 16
@mode_class = external local_unnamed_addr constant [87 x i8], align 16
@.str = private unnamed_addr constant [9 x i8] c"explow.c\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@rtx_class = external local_unnamed_addr constant [139 x i32], align 16
@const_int_rtx = external local_unnamed_addr global [129 x ptr], align 16
@sizetype_tab = external local_unnamed_addr global [4 x ptr], align 16
@targetm = external local_unnamed_addr global %struct.gcc_target, align 8
@cse_not_expected = external local_unnamed_addr global i32, align 4
@flag_section_anchors = external local_unnamed_addr global i32, align 4
@tree_code_type = external local_unnamed_addr constant [0 x i32], align 4
@ix86_tune_features = external local_unnamed_addr global [62 x i8], align 16
@current_function_decl = external local_unnamed_addr global ptr, align 8
@x_rtl = external local_unnamed_addr global %struct.rtl_data, align 8
@optab_table = external global [159 x %struct.optab_d], align 16
@global_rtl = external local_unnamed_addr global [11 x ptr], align 16
@global_trees = external local_unnamed_addr global [131 x ptr], align 16
@cfun = external local_unnamed_addr global ptr, align 8
@ix86_preferred_stack_boundary = external local_unnamed_addr global i32, align 4
@ix86_isa_flags = external local_unnamed_addr global i32, align 4
@target_flags = external local_unnamed_addr global i32, align 4
@word_mode = external local_unnamed_addr global i32, align 4
@insn_data = external local_unnamed_addr constant [0 x %struct.insn_data], align 8
@stack_limit_rtx = external local_unnamed_addr global ptr, align 8
@flag_stack_check = external local_unnamed_addr global i32, align 4
@stack_check_libfunc = internal global ptr null, align 8
@class_narrowest_mode = external local_unnamed_addr constant [18 x i8], align 16
@mode_wider = external local_unnamed_addr constant [87 x i8], align 16
@gt_ggc_r_gt_explow_h = dso_local local_unnamed_addr constant [2 x %struct.ggc_root_tab] [%struct.ggc_root_tab { ptr @stack_check_libfunc, i64 1, i64 8, ptr @gt_ggc_mx_rtx_def, ptr @gt_pch_nx_rtx_def }, %struct.ggc_root_tab zeroinitializer], align 16

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @vprintf(ptr noalias nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 !prof !63 {
  %3 = load ptr, ptr @stdout, align 8, !tbaa !64
  %4 = tail call i32 @vfprintf(ptr noundef %3, ptr noundef %0, ptr noundef %1)
  ret i32 %4
}

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @getchar() local_unnamed_addr #0 !prof !63 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !64
  %2 = tail call i32 @getc(ptr noundef %1)
  ret i32 %2
}

; Function Attrs: nofree nounwind
declare noundef i32 @getc(ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !63 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !68
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !73
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !74

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #16
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !68
  %11 = load i8, ptr %3, align 1, !tbaa !75
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

declare i32 @__uflow(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !63 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !68
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !73
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !74

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #16
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !68
  %11 = load i8, ptr %3, align 1, !tbaa !75
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #2 !prof !63 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !64
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !68
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !73
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !74

7:                                                ; preds = %0
  %8 = tail call i32 @__uflow(ptr noundef %1) #16
  br label %13

9:                                                ; preds = %0
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !68
  %11 = load i8, ptr %3, align 1, !tbaa !75
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @putchar(i32 noundef %0) local_unnamed_addr #0 !prof !63 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !64
  %3 = tail call i32 @putc(i32 noundef %0, ptr noundef %2)
  ret i32 %3
}

; Function Attrs: nofree nounwind
declare noundef i32 @putc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !63 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !76
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !77
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !74

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #16
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !76
  store i8 %12, ptr %4, align 1, !tbaa !75
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

declare i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !63 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !76
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !77
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !74

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #16
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !76
  store i8 %12, ptr %4, align 1, !tbaa !75
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 noundef %0) local_unnamed_addr #2 !prof !63 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !64
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !76
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !77
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !74

8:                                                ; preds = %1
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %2, i32 noundef %9) #16
  br label %15

11:                                               ; preds = %1
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !76
  store i8 %12, ptr %4, align 1, !tbaa !75
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i64 @getline(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 !prof !63 {
  %4 = tail call i64 @__getdelim(ptr noundef %0, ptr noundef %1, i32 noundef 10, ptr noundef %2) #16
  ret i64 %4
}

declare i64 @__getdelim(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @feof_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !63 {
  %2 = load i32, ptr %0, align 8, !tbaa !78
  %3 = lshr i32 %2, 4
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @ferror_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !63 {
  %2 = load i32, ptr %0, align 8, !tbaa !78
  %3 = lshr i32 %2, 5
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @tolower(i32 noundef %0) local_unnamed_addr #5 !prof !63 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_tolower_loc() #16
  %6 = load ptr, ptr %5, align 8, !tbaa !64
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !79
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_tolower_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @toupper(i32 noundef %0) local_unnamed_addr #5 !prof !63 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_toupper_loc() #16
  %6 = load ptr, ptr %5, align 8, !tbaa !64
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !79
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_toupper_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i32 @atoi(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !63 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  %3 = trunc i64 %2 to i32
  ret i32 %3
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atol(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !63 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atoll(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !63 {
  %2 = tail call i64 @strtoll(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtoll(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local noundef ptr @bsearch(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #2 !prof !63 {
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
  br i1 %23, label %7, label %24, !llvm.loop !80

24:                                               ; preds = %16, %20, %5
  %25 = phi ptr [ null, %5 ], [ %13, %16 ], [ null, %20 ]
  ret ptr %25
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local double @atof(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !63 {
  %2 = tail call double @strtod(ptr nocapture noundef %0, ptr noundef null)
  ret double %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @trunc_int_for_mode(i64 noundef %0, i32 noundef %1) local_unnamed_addr #9 !prof !83 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %3
  %5 = load i8, ptr %4, align 1, !tbaa !75
  %6 = zext i8 %5 to i64
  %7 = shl nuw nsw i64 %6, 3
  %8 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %3
  %9 = load i8, ptr %8, align 1, !tbaa !75
  %10 = and i8 %9, -2
  %11 = icmp eq i8 %10, 2
  br i1 %11, label %13, label %12, !prof !84

12:                                               ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 56, ptr noundef nonnull @.str.1) #16
  br label %13

13:                                               ; preds = %2, %12
  %14 = icmp eq i32 %1, 13
  br i1 %14, label %15, label %17, !prof !85

15:                                               ; preds = %13
  %16 = and i64 %0, 1
  br label %28

17:                                               ; preds = %13
  %18 = icmp ult i8 %5, 8
  br i1 %18, label %19, label %28, !prof !84

19:                                               ; preds = %17
  %20 = add nuw nsw i64 %7, 4294967295
  %21 = and i64 %20, 4294967295
  %22 = shl nuw i64 1, %21
  %23 = shl i64 2, %21
  %24 = add nsw i64 %23, -1
  %25 = and i64 %24, %0
  %26 = xor i64 %25, %22
  %27 = sub nsw i64 %26, %22
  br label %28

28:                                               ; preds = %17, %19, %15
  %29 = phi i64 [ %16, %15 ], [ %27, %19 ], [ %0, %17 ]
  ret i64 %29
}

declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define dso_local ptr @plus_constant(ptr noundef %0, i64 noundef %1) local_unnamed_addr #9 !prof !86 {
  %3 = alloca ptr, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #16
  %7 = icmp eq i64 %1, 0
  br i1 %7, label %121, label %8, !prof !87

8:                                                ; preds = %2, %54
  %9 = phi i32 [ 1, %54 ], [ 0, %2 ]
  %10 = phi i64 [ %13, %54 ], [ %1, %2 ]
  %11 = phi ptr [ %56, %54 ], [ %0, %2 ]
  br label %12

12:                                               ; preds = %8, %77
  %13 = phi i64 [ %78, %77 ], [ %10, %8 ]
  %14 = phi ptr [ %79, %77 ], [ %11, %8 ]
  %15 = load i32, ptr %14, align 8
  store ptr %14, ptr %3, align 8, !tbaa !64
  %16 = trunc i32 %15 to i16
  switch i16 %16, label %100 [
    i16 30, label %17
    i16 32, label %22
    i16 43, label %32
    i16 35, label %54
    i16 45, label %57
    i16 44, label %57
    i16 49, label %60
  ], !prof !88

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.rtx_def, ptr %14, i64 0, i32 1
  %19 = load i64, ptr %18, align 8, !tbaa !75
  %20 = add nsw i64 %19, %13
  %21 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %20) #16
  br label %121

22:                                               ; preds = %12
  %23 = getelementptr inbounds %struct.rtx_def, ptr %14, i64 0, i32 1
  %24 = load i64, ptr %23, align 8, !tbaa !75
  %25 = getelementptr inbounds %struct.rtx_def, ptr %14, i64 0, i32 1, i32 0, i32 0, i64 1
  %26 = load i64, ptr %25, align 8, !tbaa !75
  %27 = ashr i64 %13, 63
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #16
  %28 = call i32 @add_double_with_sign(i64 noundef %24, i64 noundef %26, i64 noundef %13, i64 noundef %27, ptr noundef nonnull %4, ptr noundef nonnull %5, i8 noundef zeroext 0) #16
  %29 = load i64, ptr %4, align 8, !tbaa !89
  %30 = load i64, ptr %5, align 8, !tbaa !89
  %31 = call ptr @immed_double_const(i64 noundef %29, i64 noundef %30, i32 noundef 0) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #16
  br label %121

32:                                               ; preds = %12
  %33 = lshr i32 %15, 16
  %34 = and i32 %33, 255
  %35 = getelementptr inbounds %struct.rtx_def, ptr %14, i64 0, i32 1
  %36 = load ptr, ptr %35, align 8, !tbaa !75
  %37 = load i32, ptr %36, align 8
  %38 = and i32 %37, 67174399
  %39 = icmp eq i32 %38, 67108909
  br i1 %39, label %40, label %103

40:                                               ; preds = %32
  %41 = load i32, ptr %14, align 8
  %42 = lshr i32 %41, 16
  %43 = and i32 %42, 255
  %44 = tail call ptr @get_pool_constant(ptr noundef nonnull %36) #16
  %45 = tail call ptr @plus_constant(ptr noundef %44, i64 noundef %13)
  %46 = tail call ptr @force_const_mem(i32 noundef %43, ptr noundef %45) #16
  %47 = load i32, ptr %46, align 8
  %48 = lshr i32 %47, 16
  %49 = and i32 %48, 255
  %50 = getelementptr inbounds %struct.rtx_def, ptr %46, i64 0, i32 1
  %51 = load ptr, ptr %50, align 8, !tbaa !75
  %52 = tail call i32 @memory_address_addr_space_p(i32 noundef %49, ptr noundef %51, i8 noundef zeroext 0) #16
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %103, label %121

54:                                               ; preds = %12
  %55 = getelementptr inbounds %struct.rtx_def, ptr %14, i64 0, i32 1
  %56 = load ptr, ptr %55, align 8, !tbaa !75
  br label %8

57:                                               ; preds = %12, %12
  %58 = lshr i32 %15, 16
  %59 = and i32 %58, 255
  br label %103

60:                                               ; preds = %12
  %61 = getelementptr inbounds %struct.rtx_def, ptr %14, i64 0, i32 1
  %62 = getelementptr inbounds %struct.rtx_def, ptr %14, i64 0, i32 1, i32 0, i32 0, i64 1
  %63 = load ptr, ptr %62, align 8, !tbaa !75
  %64 = load i32, ptr %63, align 8
  %65 = and i32 %64, 65535
  %66 = icmp eq i32 %65, 30
  br i1 %66, label %67, label %80, !prof !90

67:                                               ; preds = %60
  %68 = getelementptr inbounds %struct.rtx_def, ptr %63, i64 0, i32 1
  %69 = load i64, ptr %68, align 8, !tbaa !75
  %70 = add nsw i64 %69, %13
  %71 = load i32, ptr %14, align 8
  %72 = lshr i32 %71, 16
  %73 = and i32 %72, 255
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %77, label %75

75:                                               ; preds = %67
  %76 = tail call i64 @trunc_int_for_mode(i64 noundef %70, i32 noundef %73)
  br label %77

77:                                               ; preds = %75, %67
  %78 = phi i64 [ %76, %75 ], [ %70, %67 ]
  %79 = load ptr, ptr %61, align 8, !tbaa !75
  br label %12

80:                                               ; preds = %60
  %81 = lshr i32 %15, 16
  %82 = and i32 %81, 255
  %83 = zext nneg i32 %65 to i64
  %84 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %83
  %85 = load i32, ptr %84, align 4, !tbaa !79
  %86 = icmp eq i32 %85, 9
  br i1 %86, label %87, label %91, !prof !90

87:                                               ; preds = %80
  %88 = load ptr, ptr %61, align 8, !tbaa !75
  %89 = tail call ptr @plus_constant(ptr noundef nonnull %63, i64 noundef %13)
  %90 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 49, i32 noundef %82, ptr noundef %88, ptr noundef %89) #16
  br label %103

91:                                               ; preds = %80
  %92 = call ptr @find_constant_term_loc(ptr noundef nonnull %3) #16
  %93 = icmp eq ptr %92, null
  br i1 %93, label %103, label %94, !prof !91

94:                                               ; preds = %91
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #16
  %95 = call ptr @copy_rtx(ptr noundef nonnull %14) #16
  store ptr %95, ptr %6, align 8, !tbaa !64
  %96 = call ptr @find_constant_term_loc(ptr noundef nonnull %6) #16
  %97 = load ptr, ptr %96, align 8, !tbaa !64
  %98 = call ptr @plus_constant(ptr noundef %97, i64 noundef %13)
  store ptr %98, ptr %96, align 8, !tbaa !64
  %99 = load ptr, ptr %6, align 8, !tbaa !64
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #16
  br label %103

100:                                              ; preds = %12
  %101 = lshr i32 %15, 16
  %102 = and i32 %101, 255
  br label %103

103:                                              ; preds = %100, %40, %91, %94, %87, %32, %57
  %104 = phi i32 [ %82, %87 ], [ %82, %94 ], [ %82, %91 ], [ %59, %57 ], [ %34, %32 ], [ %34, %40 ], [ %102, %100 ]
  %105 = phi i32 [ %9, %87 ], [ %9, %94 ], [ %9, %91 ], [ 1, %57 ], [ %9, %32 ], [ %9, %40 ], [ %9, %100 ]
  %106 = phi i64 [ 0, %87 ], [ 0, %94 ], [ %13, %91 ], [ %13, %57 ], [ %13, %32 ], [ %13, %40 ], [ %13, %100 ]
  %107 = phi ptr [ %90, %87 ], [ %99, %94 ], [ %14, %91 ], [ %14, %57 ], [ %14, %32 ], [ %14, %40 ], [ %14, %100 ]
  %108 = icmp eq i64 %106, 0
  br i1 %108, label %112, label %109, !prof !92

109:                                              ; preds = %103
  %110 = call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %106) #16
  %111 = call ptr @gen_rtx_fmt_ee_stat(i32 noundef 49, i32 noundef %104, ptr noundef %107, ptr noundef %110) #16
  br label %112

112:                                              ; preds = %109, %103
  %113 = phi ptr [ %111, %109 ], [ %107, %103 ]
  %114 = load i32, ptr %113, align 8
  %115 = and i32 %114, 65534
  %116 = icmp eq i32 %115, 44
  %117 = icmp eq i32 %105, 0
  %118 = or i1 %116, %117
  br i1 %118, label %121, label %119, !prof !93

119:                                              ; preds = %112
  %120 = call ptr @gen_rtx_fmt_e_stat(i32 noundef 35, i32 noundef %104, ptr noundef nonnull %113) #16
  br label %121

121:                                              ; preds = %112, %40, %2, %119, %22, %17
  %122 = phi ptr [ %120, %119 ], [ %31, %22 ], [ %21, %17 ], [ %0, %2 ], [ %46, %40 ], [ %113, %112 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #16
  ret ptr %122
}

declare ptr @gen_rtx_CONST_INT(i32 noundef, i64 noundef) local_unnamed_addr #3

declare i32 @add_double_with_sign(i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

declare ptr @immed_double_const(i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

declare ptr @force_const_mem(i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @get_pool_constant(ptr noundef) local_unnamed_addr #3

declare i32 @memory_address_addr_space_p(i32 noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

declare ptr @gen_rtx_fmt_ee_stat(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @find_constant_term_loc(ptr noundef) local_unnamed_addr #3

declare ptr @copy_rtx(ptr noundef) local_unnamed_addr #3

declare ptr @gen_rtx_fmt_e_stat(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local ptr @eliminate_constant_term(ptr noundef readonly %0, ptr nocapture noundef %1) local_unnamed_addr #10 !prof !63 {
  %3 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #16
  %4 = load i32, ptr %0, align 8
  %5 = and i32 %4, 65535
  %6 = icmp eq i32 %5, 49
  br i1 %6, label %7, label %55

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %9 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %10 = load ptr, ptr %9, align 8, !tbaa !75
  %11 = load i32, ptr %10, align 8
  %12 = and i32 %11, 65535
  %13 = icmp eq i32 %12, 30
  br i1 %13, label %14, label %27

14:                                               ; preds = %7
  %15 = lshr i32 %4, 16
  %16 = and i32 %15, 255
  %17 = load ptr, ptr %1, align 8, !tbaa !64
  %18 = tail call ptr @simplify_binary_operation(i32 noundef 49, i32 noundef %16, ptr noundef %17, ptr noundef nonnull %10) #16
  store ptr %18, ptr %3, align 8, !tbaa !64
  %19 = icmp eq ptr %18, null
  br i1 %19, label %27, label %20

20:                                               ; preds = %14
  %21 = load i32, ptr %18, align 8
  %22 = and i32 %21, 65535
  %23 = icmp eq i32 %22, 30
  br i1 %23, label %24, label %27

24:                                               ; preds = %20
  store ptr %18, ptr %1, align 8, !tbaa !64
  %25 = load ptr, ptr %8, align 8, !tbaa !75
  %26 = tail call ptr @eliminate_constant_term(ptr noundef %25, ptr noundef nonnull %1)
  br label %55

27:                                               ; preds = %20, %14, %7
  %28 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !64
  store ptr %28, ptr %3, align 8, !tbaa !64
  %29 = load ptr, ptr %8, align 8, !tbaa !75
  %30 = call ptr @eliminate_constant_term(ptr noundef %29, ptr noundef nonnull %3)
  %31 = load ptr, ptr %9, align 8, !tbaa !75
  %32 = call ptr @eliminate_constant_term(ptr noundef %31, ptr noundef nonnull %3)
  %33 = load ptr, ptr %9, align 8, !tbaa !75
  %34 = icmp eq ptr %32, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %27
  %36 = load ptr, ptr %8, align 8, !tbaa !75
  %37 = icmp eq ptr %30, %36
  br i1 %37, label %55, label %38

38:                                               ; preds = %35, %27
  %39 = load i32, ptr %0, align 8
  %40 = lshr i32 %39, 16
  %41 = and i32 %40, 255
  %42 = load ptr, ptr %1, align 8, !tbaa !64
  %43 = load ptr, ptr %3, align 8, !tbaa !64
  %44 = tail call ptr @simplify_binary_operation(i32 noundef 49, i32 noundef %41, ptr noundef %42, ptr noundef %43) #16
  store ptr %44, ptr %3, align 8, !tbaa !64
  %45 = icmp eq ptr %44, null
  br i1 %45, label %55, label %46

46:                                               ; preds = %38
  %47 = load i32, ptr %44, align 8
  %48 = and i32 %47, 65535
  %49 = icmp eq i32 %48, 30
  br i1 %49, label %50, label %55

50:                                               ; preds = %46
  store ptr %44, ptr %1, align 8, !tbaa !64
  %51 = load i32, ptr %0, align 8
  %52 = lshr i32 %51, 16
  %53 = and i32 %52, 255
  %54 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 49, i32 noundef %53, ptr noundef %30, ptr noundef %32) #16
  br label %55

55:                                               ; preds = %35, %38, %46, %2, %50, %24
  %56 = phi ptr [ %26, %24 ], [ %54, %50 ], [ %0, %2 ], [ %0, %46 ], [ %0, %38 ], [ %0, %35 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #16
  ret ptr %56
}

declare ptr @simplify_binary_operation(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local ptr @expr_size(ptr noundef %0) local_unnamed_addr #11 !prof !94 {
  %2 = load i64, ptr %0, align 8
  %3 = and i64 %2, 65535
  %4 = icmp eq i64 %3, 150
  br i1 %4, label %5, label %8, !prof !95

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 1
  %7 = load ptr, ptr %6, align 8, !tbaa !75
  br label %22

8:                                                ; preds = %1
  %9 = tail call ptr @tree_expr_size(ptr noundef nonnull %0) #16
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %12, !prof !95

11:                                               ; preds = %8
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 250, ptr noundef nonnull @.str.1) #16
  br label %18

12:                                               ; preds = %8
  %13 = load i64, ptr %9, align 8
  %14 = and i64 %13, 131072
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %18, !prof !95

16:                                               ; preds = %12
  %17 = tail call ptr @substitute_placeholder_in_expr(ptr noundef nonnull %9, ptr noundef nonnull %0) #16
  br label %18

18:                                               ; preds = %11, %12, %16
  %19 = phi ptr [ %17, %16 ], [ %9, %12 ], [ %9, %11 ]
  %20 = icmp eq ptr %9, %19
  br i1 %20, label %22, label %21, !prof !96

21:                                               ; preds = %18
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 251, ptr noundef nonnull @.str.1) #16
  br label %22

22:                                               ; preds = %21, %18, %5
  %23 = phi ptr [ %7, %5 ], [ %9, %18 ], [ %9, %21 ]
  %24 = load ptr, ptr @sizetype_tab, align 16, !tbaa !64
  %25 = load i64, ptr %24, align 8
  %26 = and i64 %25, 65535
  %27 = icmp eq i64 %26, 14
  br i1 %27, label %28, label %30, !prof !95

28:                                               ; preds = %22
  %29 = tail call i32 @vector_type_mode(ptr noundef nonnull %24) #16
  br label %35

30:                                               ; preds = %22
  %31 = getelementptr inbounds %struct.tree_type, ptr %24, i64 0, i32 6
  %32 = load i32, ptr %31, align 4
  %33 = lshr i32 %32, 16
  %34 = and i32 %33, 255
  br label %35

35:                                               ; preds = %30, %28
  %36 = phi i32 [ %29, %28 ], [ %34, %30 ]
  %37 = tail call ptr @expand_expr_real(ptr noundef %23, ptr noundef null, i32 noundef %36, i32 noundef 0, ptr noundef null) #16
  ret ptr %37
}

declare ptr @tree_expr_size(ptr noundef) local_unnamed_addr #3

declare ptr @substitute_placeholder_in_expr(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @vector_type_mode(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local i64 @int_expr_size(ptr noundef %0) local_unnamed_addr #10 !prof !63 {
  %2 = load i64, ptr %0, align 8
  %3 = and i64 %2, 65535
  %4 = icmp eq i64 %3, 150
  br i1 %4, label %5, label %8

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 1
  %7 = load ptr, ptr %6, align 8, !tbaa !75
  br label %12

8:                                                ; preds = %1
  %9 = tail call ptr @tree_expr_size(ptr noundef nonnull %0) #16
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %8
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 270, ptr noundef nonnull @.str.1) #16
  br label %12

12:                                               ; preds = %11, %8, %5
  %13 = phi ptr [ %7, %5 ], [ %9, %8 ], [ null, %11 ]
  %14 = icmp eq ptr %13, null
  br i1 %14, label %20, label %15

15:                                               ; preds = %12
  %16 = tail call i32 @host_integerp(ptr noundef nonnull %13, i32 noundef 0) #16
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %15
  %19 = tail call i64 @tree_low_cst(ptr noundef nonnull %13, i32 noundef 0) #16
  br label %20

20:                                               ; preds = %12, %15, %18
  %21 = phi i64 [ %19, %18 ], [ -1, %15 ], [ -1, %12 ]
  ret i64 %21
}

declare i32 @host_integerp(ptr noundef, i32 noundef) local_unnamed_addr #3

declare i64 @tree_low_cst(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local noundef ptr @convert_memory_address_addr_space(i32 noundef %0, ptr noundef readonly returned %1, i8 noundef zeroext %2) local_unnamed_addr #10 !prof !63 {
  %4 = load i32, ptr %1, align 8
  %5 = lshr i32 %4, 16
  %6 = and i32 %5, 255
  %7 = icmp eq i32 %6, %0
  %8 = icmp eq i32 %6, 0
  %9 = or i1 %7, %8
  br i1 %9, label %11, label %10

10:                                               ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 326, ptr noundef nonnull @.str.1) #16
  br label %11

11:                                               ; preds = %3, %10
  ret ptr %1
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local noundef ptr @memory_address_addr_space(i32 noundef %0, ptr noundef %1, i8 noundef zeroext %2) local_unnamed_addr #9 !prof !97 {
  %4 = alloca ptr, align 8
  %5 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 57, i32 1), align 8, !tbaa !98
  %6 = tail call i32 %5(i8 noundef zeroext %2) #16, !prof !110
  %7 = load i32, ptr %1, align 8
  %8 = lshr i32 %7, 16
  %9 = and i32 %8, 255
  %10 = icmp eq i32 %9, %6
  %11 = icmp eq i32 %9, 0
  %12 = or i1 %10, %11
  br i1 %12, label %14, label %13, !prof !111

13:                                               ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 326, ptr noundef nonnull @.str.1) #16
  br label %14

14:                                               ; preds = %3, %13
  %15 = load i32, ptr @cse_not_expected, align 4, !tbaa !79
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %29, !prof !111

17:                                               ; preds = %14
  %18 = load i32, ptr %1, align 8
  %19 = and i32 %18, 65535
  %20 = zext nneg i32 %19 to i64
  %21 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %20
  %22 = load i32, ptr %21, align 4, !tbaa !79
  %23 = icmp eq i32 %22, 9
  br i1 %23, label %24, label %29, !prof !112

24:                                               ; preds = %17
  %25 = tail call zeroext i8 @constant_address_p(ptr noundef nonnull %1) #16
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %29, label %27, !prof !113

27:                                               ; preds = %24
  %28 = tail call ptr @force_reg(i32 noundef %6, ptr noundef nonnull %1)
  br label %82

29:                                               ; preds = %24, %17, %14
  %30 = load i32, ptr @cse_not_expected, align 4, !tbaa !79
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %38, !prof !114

32:                                               ; preds = %29
  %33 = load i32, ptr %1, align 8
  %34 = and i32 %33, 65535
  %35 = icmp eq i32 %34, 37
  br i1 %35, label %38, label %36, !prof !115

36:                                               ; preds = %32
  %37 = tail call fastcc ptr @break_out_memory_refs(ptr noundef nonnull %1)
  br label %38

38:                                               ; preds = %36, %32, %29
  %39 = phi ptr [ %1, %29 ], [ %1, %32 ], [ %37, %36 ]
  %40 = tail call i32 @memory_address_addr_space_p(i32 noundef %0, ptr noundef %39, i8 noundef zeroext %2) #16
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %82, !prof !116

42:                                               ; preds = %38
  %43 = tail call i32 @memory_address_addr_space_p(i32 noundef %0, ptr noundef nonnull %1, i8 noundef zeroext %2) #16
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %82

45:                                               ; preds = %42
  %46 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 57, i32 4), align 8, !tbaa !117
  %47 = tail call ptr %46(ptr noundef %39, ptr noundef nonnull %1, i32 noundef %0, i8 noundef zeroext %2) #16
  %48 = icmp eq ptr %39, %47
  br i1 %48, label %52, label %49

49:                                               ; preds = %45
  %50 = tail call i32 @memory_address_addr_space_p(i32 noundef %0, ptr noundef %47, i8 noundef zeroext %2) #16
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %82

52:                                               ; preds = %49, %45
  %53 = load i32, ptr %47, align 8
  %54 = trunc i32 %53 to i16
  switch i16 %54, label %80 [
    i16 49, label %55
    i16 52, label %76
    i16 50, label %76
    i16 37, label %78
  ]

55:                                               ; preds = %52
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #16
  %56 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !64
  store ptr %56, ptr %4, align 8, !tbaa !64
  %57 = call ptr @eliminate_constant_term(ptr noundef nonnull %47, ptr noundef nonnull %4)
  %58 = load ptr, ptr %4, align 8, !tbaa !64
  %59 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !64
  %60 = icmp eq ptr %58, %59
  br i1 %60, label %72, label %61

61:                                               ; preds = %55
  %62 = tail call i32 @memory_address_addr_space_p(i32 noundef %0, ptr noundef %57, i8 noundef zeroext %2) #16
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %72, label %64

64:                                               ; preds = %61
  %65 = load i32, ptr %47, align 8
  %66 = lshr i32 %65, 16
  %67 = and i32 %66, 255
  %68 = tail call ptr @copy_to_reg(ptr noundef %57)
  %69 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 49, i32 noundef %67, ptr noundef %68, ptr noundef %58) #16
  %70 = tail call i32 @memory_address_addr_space_p(i32 noundef %0, ptr noundef %69, i8 noundef zeroext %2) #16
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %64, %55, %61
  %73 = tail call ptr @force_operand(ptr noundef nonnull %47, ptr noundef null) #16
  br label %74

74:                                               ; preds = %72, %64
  %75 = phi ptr [ %69, %64 ], [ %73, %72 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #16
  br label %82

76:                                               ; preds = %52, %52
  %77 = tail call ptr @force_operand(ptr noundef nonnull %47, ptr noundef null) #16
  br label %82

78:                                               ; preds = %52
  %79 = tail call ptr @copy_to_reg(ptr noundef nonnull %47)
  br label %82

80:                                               ; preds = %52
  %81 = tail call ptr @force_reg(i32 noundef %6, ptr noundef nonnull %47)
  br label %82

82:                                               ; preds = %49, %42, %27, %76, %80, %78, %74, %38
  %83 = phi ptr [ %39, %38 ], [ %75, %74 ], [ %77, %76 ], [ %79, %78 ], [ %81, %80 ], [ %28, %27 ], [ %1, %42 ], [ %47, %49 ]
  %84 = tail call i32 @memory_address_addr_space_p(i32 noundef %0, ptr noundef %83, i8 noundef zeroext %2) #16
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %87, !prof !118

86:                                               ; preds = %82
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 504, ptr noundef nonnull @.str.1) #16
  br label %87

87:                                               ; preds = %82, %86
  %88 = icmp eq ptr %83, %1
  br i1 %88, label %107, label %89, !prof !119

89:                                               ; preds = %87
  %90 = load i32, ptr %83, align 8
  %91 = trunc i32 %90 to i16
  switch i16 %91, label %106 [
    i16 37, label %104
    i16 49, label %92
  ], !prof !120

92:                                               ; preds = %89
  %93 = getelementptr inbounds %struct.rtx_def, ptr %83, i64 0, i32 1
  %94 = load ptr, ptr %93, align 8, !tbaa !75
  %95 = load i32, ptr %94, align 8
  %96 = and i32 %95, 65535
  %97 = icmp eq i32 %96, 37
  br i1 %97, label %98, label %106, !prof !121

98:                                               ; preds = %92
  %99 = getelementptr inbounds %struct.rtx_def, ptr %83, i64 0, i32 1, i32 0, i32 0, i64 1
  %100 = load ptr, ptr %99, align 8, !tbaa !75
  %101 = load i32, ptr %100, align 8
  %102 = and i32 %101, 65535
  %103 = icmp eq i32 %102, 30
  br i1 %103, label %104, label %106

104:                                              ; preds = %98, %89
  %105 = phi ptr [ %83, %89 ], [ %94, %98 ]
  tail call void @mark_reg_pointer(ptr noundef nonnull %105, i32 noundef 8) #16
  br label %106

106:                                              ; preds = %104, %89, %98, %92
  tail call void @update_temp_slot_address(ptr noundef nonnull %1, ptr noundef nonnull %83) #16
  br label %107

107:                                              ; preds = %87, %106
  ret ptr %83
}

declare zeroext i8 @constant_address_p(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @force_reg(i32 noundef %0, ptr noundef %1) local_unnamed_addr #11 !prof !122 {
  %3 = load i32, ptr %1, align 8
  %4 = and i32 %3, 65535
  %5 = icmp eq i32 %4, 37
  br i1 %5, label %129, label %6, !prof !123

6:                                                ; preds = %2
  %7 = tail call i32 @general_operand(ptr noundef nonnull %1, i32 noundef %0) #16
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %12, label %9, !prof !123

9:                                                ; preds = %6
  %10 = tail call ptr @gen_reg_rtx(i32 noundef %0) #16
  %11 = tail call ptr @emit_move_insn(ptr noundef %10, ptr noundef nonnull %1) #16
  br label %22

12:                                               ; preds = %6
  %13 = tail call ptr @force_operand(ptr noundef nonnull %1, ptr noundef null) #16
  %14 = load i32, ptr %13, align 8
  %15 = and i32 %14, 65535
  %16 = icmp eq i32 %15, 37
  br i1 %16, label %17, label %19

17:                                               ; preds = %12
  %18 = tail call ptr @get_last_insn() #16
  br label %22

19:                                               ; preds = %12
  %20 = tail call ptr @gen_reg_rtx(i32 noundef %0) #16
  %21 = tail call ptr @emit_move_insn(ptr noundef %20, ptr noundef nonnull %13) #16
  br label %22

22:                                               ; preds = %17, %19, %9
  %23 = phi ptr [ %11, %9 ], [ %18, %17 ], [ %21, %19 ]
  %24 = phi ptr [ %10, %9 ], [ %13, %17 ], [ %20, %19 ]
  %25 = load i32, ptr %1, align 8
  %26 = and i32 %25, 65535
  %27 = zext nneg i32 %26 to i64
  %28 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %27
  %29 = load i32, ptr %28, align 4, !tbaa !79
  %30 = icmp eq i32 %29, 9
  br i1 %30, label %31, label %58, !prof !124

31:                                               ; preds = %22
  %32 = load i32, ptr %23, align 8
  %33 = and i32 %32, 65535
  %34 = add nsw i32 %33, -7
  %35 = icmp ult i32 %34, 4
  br i1 %35, label %36, label %44, !prof !125

36:                                               ; preds = %31
  %37 = getelementptr inbounds %struct.rtx_def, ptr %23, i64 1
  %38 = load ptr, ptr %37, align 8, !tbaa !75
  %39 = load i32, ptr %38, align 8
  %40 = and i32 %39, 65535
  %41 = icmp eq i32 %40, 23
  br i1 %41, label %44, label %42, !prof !125

42:                                               ; preds = %36
  %43 = tail call ptr @single_set_2(ptr noundef nonnull %23, ptr noundef nonnull %38) #16
  br label %44

44:                                               ; preds = %31, %36, %42
  %45 = phi ptr [ %43, %42 ], [ null, %31 ], [ %38, %36 ]
  %46 = icmp eq ptr %45, null
  br i1 %46, label %58, label %47, !prof !126

47:                                               ; preds = %44
  %48 = getelementptr inbounds %struct.rtx_def, ptr %45, i64 0, i32 1
  %49 = load ptr, ptr %48, align 8, !tbaa !75
  %50 = icmp eq ptr %49, %24
  br i1 %50, label %51, label %58, !prof !125

51:                                               ; preds = %47
  %52 = getelementptr inbounds %struct.rtx_def, ptr %45, i64 0, i32 1, i32 0, i32 0, i64 1
  %53 = load ptr, ptr %52, align 8, !tbaa !75
  %54 = tail call i32 @rtx_equal_p(ptr noundef nonnull %1, ptr noundef %53) #16
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %58, !prof !126

56:                                               ; preds = %51
  %57 = tail call ptr @set_unique_reg_note(ptr noundef nonnull %23, i32 noundef 4, ptr noundef nonnull %1) #16
  br label %58

58:                                               ; preds = %56, %51, %47, %44, %22
  %59 = load i32, ptr %1, align 8
  %60 = trunc i32 %59 to i16
  switch i16 %60, label %120 [
    i16 45, label %61
    i16 44, label %121
    i16 35, label %77
  ], !prof !127

61:                                               ; preds = %58
  %62 = and i32 %59, 67108864
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %121, !prof !128

64:                                               ; preds = %61
  %65 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 2
  %66 = load ptr, ptr %65, align 8, !tbaa !75
  %67 = icmp eq ptr %66, null
  br i1 %67, label %121, label %68, !prof !129

68:                                               ; preds = %64
  %69 = load i64, ptr %66, align 8
  %70 = and i64 %69, 65535
  %71 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %70
  %72 = load i32, ptr %71, align 4, !tbaa !79
  %73 = icmp eq i32 %72, 3
  br i1 %73, label %74, label %121, !prof !128

74:                                               ; preds = %68
  %75 = getelementptr inbounds %struct.tree_decl_common, ptr %66, i64 0, i32 3
  %76 = load i32, ptr %75, align 8, !tbaa !75
  br label %121

77:                                               ; preds = %58
  %78 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %79 = load ptr, ptr %78, align 8, !tbaa !75
  %80 = load i32, ptr %79, align 8
  %81 = and i32 %80, 65535
  %82 = icmp eq i32 %81, 49
  br i1 %82, label %83, label %121, !prof !130

83:                                               ; preds = %77
  %84 = getelementptr inbounds %struct.rtx_def, ptr %79, i64 0, i32 1
  %85 = load ptr, ptr %84, align 8, !tbaa !75
  %86 = load i32, ptr %85, align 8
  %87 = and i32 %86, 65535
  %88 = icmp eq i32 %87, 45
  br i1 %88, label %89, label %121, !prof !130

89:                                               ; preds = %83
  %90 = getelementptr inbounds %struct.rtx_def, ptr %79, i64 0, i32 1, i32 0, i32 0, i64 1
  %91 = load ptr, ptr %90, align 8, !tbaa !75
  %92 = load i32, ptr %91, align 8
  %93 = and i32 %92, 65535
  %94 = icmp eq i32 %93, 30
  br i1 %94, label %95, label %121, !prof !130

95:                                               ; preds = %89
  %96 = and i32 %86, 67108864
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %111, !prof !130

98:                                               ; preds = %95
  %99 = getelementptr inbounds %struct.rtx_def, ptr %85, i64 0, i32 1, i32 0, i32 0, i64 2
  %100 = load ptr, ptr %99, align 8, !tbaa !75
  %101 = icmp eq ptr %100, null
  br i1 %101, label %111, label %102, !prof !131

102:                                              ; preds = %98
  %103 = load i64, ptr %100, align 8
  %104 = and i64 %103, 65535
  %105 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %104
  %106 = load i32, ptr %105, align 4, !tbaa !79
  %107 = icmp eq i32 %106, 3
  br i1 %107, label %108, label %111, !prof !130

108:                                              ; preds = %102
  %109 = getelementptr inbounds %struct.tree_decl_common, ptr %100, i64 0, i32 3
  %110 = load i32, ptr %109, align 8, !tbaa !75
  br label %111

111:                                              ; preds = %95, %108, %102, %98
  %112 = phi i32 [ 8, %95 ], [ %110, %108 ], [ 8, %102 ], [ 8, %98 ]
  %113 = getelementptr inbounds %struct.rtx_def, ptr %91, i64 0, i32 1
  %114 = load i64, ptr %113, align 8, !tbaa !75
  %115 = sub nsw i64 0, %114
  %116 = and i64 %114, %115
  %117 = tail call i32 @exact_log2(i64 noundef %116) #16
  %118 = shl nsw i32 %117, 3
  %119 = tail call i32 @llvm.umin.i32(i32 %112, i32 %118)
  br label %121

120:                                              ; preds = %58
  br label %121

121:                                              ; preds = %58, %120, %111, %89, %83, %77, %64, %68, %74, %61
  %122 = phi i32 [ 8, %61 ], [ %76, %74 ], [ 8, %68 ], [ 8, %64 ], [ %119, %111 ], [ 0, %89 ], [ 0, %83 ], [ 0, %77 ], [ 8, %58 ], [ 0, %120 ]
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %124, label %128, !prof !132

124:                                              ; preds = %121
  %125 = load i32, ptr %1, align 8
  %126 = and i32 %125, 1073807359
  %127 = icmp eq i32 %126, 1073741867
  br i1 %127, label %128, label %129, !prof !133

128:                                              ; preds = %124, %121
  tail call void @mark_reg_pointer(ptr noundef %24, i32 noundef %122) #16
  br label %129

129:                                              ; preds = %124, %128, %2
  %130 = phi ptr [ %1, %2 ], [ %24, %128 ], [ %24, %124 ]
  ret ptr %130
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @break_out_memory_refs(ptr noundef %0) unnamed_addr #11 !prof !134 !PGOFuncName !135 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 65535
  %4 = icmp eq i32 %3, 43
  br i1 %4, label %17, label %5, !prof !136

5:                                                ; preds = %1
  %6 = zext nneg i32 %3 to i64
  %7 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %6
  %8 = load i32, ptr %7, align 4, !tbaa !79
  %9 = icmp eq i32 %8, 9
  br i1 %9, label %10, label %22, !prof !137

10:                                               ; preds = %5
  %11 = tail call zeroext i8 @constant_address_p(ptr noundef nonnull %0) #16
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %22, label %13, !prof !138

13:                                               ; preds = %10
  %14 = load i32, ptr %0, align 8
  %15 = and i32 %14, 16711680
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %22, label %17, !prof !139

17:                                               ; preds = %13, %1
  %18 = load i32, ptr %0, align 8
  %19 = lshr i32 %18, 16
  %20 = and i32 %19, 255
  %21 = tail call ptr @force_reg(i32 noundef %20, ptr noundef nonnull %0)
  br label %43

22:                                               ; preds = %13, %10, %5
  %23 = load i32, ptr %0, align 8
  %24 = trunc i32 %23 to i16
  switch i16 %24, label %43 [
    i16 49, label %25
    i16 50, label %25
    i16 52, label %25
  ], !prof !140

25:                                               ; preds = %22, %22, %22
  %26 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !75
  %28 = tail call fastcc ptr @break_out_memory_refs(ptr noundef %27)
  %29 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %30 = load ptr, ptr %29, align 8, !tbaa !75
  %31 = tail call fastcc ptr @break_out_memory_refs(ptr noundef %30)
  %32 = load ptr, ptr %26, align 8, !tbaa !75
  %33 = icmp eq ptr %28, %32
  br i1 %33, label %34, label %37, !prof !141

34:                                               ; preds = %25
  %35 = load ptr, ptr %29, align 8, !tbaa !75
  %36 = icmp eq ptr %31, %35
  br i1 %36, label %43, label %37, !prof !142

37:                                               ; preds = %34, %25
  %38 = load i32, ptr %0, align 8
  %39 = and i32 %38, 65535
  %40 = lshr i32 %38, 16
  %41 = and i32 %40, 255
  %42 = tail call ptr @simplify_gen_binary(i32 noundef %39, i32 noundef %41, ptr noundef %28, ptr noundef %31) #16
  br label %43

43:                                               ; preds = %34, %37, %22, %17
  %44 = phi ptr [ %21, %17 ], [ %0, %22 ], [ %42, %37 ], [ %0, %34 ]
  ret ptr %44
}

declare ptr @force_operand(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local ptr @copy_to_reg(ptr noundef %0) local_unnamed_addr #10 !prof !63 {
  %2 = load i32, ptr %0, align 8
  %3 = lshr i32 %2, 16
  %4 = and i32 %3, 255
  %5 = tail call ptr @gen_reg_rtx(i32 noundef %4) #16
  %6 = tail call i32 @general_operand(ptr noundef nonnull %0, i32 noundef 0) #16
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = tail call ptr @force_operand(ptr noundef nonnull %0, ptr noundef %5) #16
  br label %10

10:                                               ; preds = %8, %1
  %11 = phi ptr [ %0, %1 ], [ %9, %8 ]
  %12 = icmp eq ptr %11, %5
  br i1 %12, label %15, label %13

13:                                               ; preds = %10
  %14 = tail call ptr @emit_move_insn(ptr noundef %5, ptr noundef %11) #16
  br label %15

15:                                               ; preds = %13, %10
  ret ptr %5
}

declare void @mark_reg_pointer(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @update_temp_slot_address(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local ptr @validize_mem(ptr noundef %0) local_unnamed_addr #11 !prof !143 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 65535
  %4 = icmp eq i32 %3, 43
  br i1 %4, label %5, label %25, !prof !144

5:                                                ; preds = %1
  %6 = tail call ptr @use_anchored_address(ptr noundef nonnull %0)
  %7 = load i32, ptr %6, align 8
  %8 = lshr i32 %7, 16
  %9 = and i32 %8, 255
  %10 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !75
  %12 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1, i32 0, i32 0, i64 1
  %13 = load ptr, ptr %12, align 8, !tbaa !75
  %14 = icmp eq ptr %13, null
  br i1 %14, label %18, label %15, !prof !145

15:                                               ; preds = %5
  %16 = getelementptr inbounds %struct.mem_attrs, ptr %13, i64 0, i32 5
  %17 = load i8, ptr %16, align 8, !tbaa !146
  br label %18

18:                                               ; preds = %5, %15
  %19 = phi i8 [ %17, %15 ], [ 0, %5 ]
  %20 = tail call i32 @memory_address_addr_space_p(i32 noundef %9, ptr noundef %11, i8 noundef zeroext %19) #16
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %25, !prof !148

22:                                               ; preds = %18
  %23 = load ptr, ptr %10, align 8, !tbaa !75
  %24 = tail call ptr @replace_equiv_address(ptr noundef nonnull %6, ptr noundef %23) #16
  br label %25

25:                                               ; preds = %18, %1, %22
  %26 = phi ptr [ %24, %22 ], [ %0, %1 ], [ %6, %18 ]
  ret ptr %26
}

; Function Attrs: nounwind uwtable
define dso_local ptr @use_anchored_address(ptr noundef %0) local_unnamed_addr #11 !prof !149 {
  %2 = load i32, ptr @flag_section_anchors, align 4, !tbaa !79
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %73, label %4, !prof !150

4:                                                ; preds = %1
  %5 = load i32, ptr %0, align 8
  %6 = and i32 %5, 65535
  %7 = icmp eq i32 %6, 43
  br i1 %7, label %8, label %73

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !75
  %11 = load i32, ptr %10, align 8
  %12 = and i32 %11, 65535
  %13 = icmp eq i32 %12, 35
  br i1 %13, label %14, label %31

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.rtx_def, ptr %10, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !75
  %17 = load i32, ptr %16, align 8
  %18 = and i32 %17, 65535
  %19 = icmp eq i32 %18, 49
  br i1 %19, label %20, label %31

20:                                               ; preds = %14
  %21 = getelementptr inbounds %struct.rtx_def, ptr %16, i64 0, i32 1, i32 0, i32 0, i64 1
  %22 = load ptr, ptr %21, align 8, !tbaa !75
  %23 = load i32, ptr %22, align 8
  %24 = and i32 %23, 65535
  %25 = icmp eq i32 %24, 30
  br i1 %25, label %26, label %31

26:                                               ; preds = %20
  %27 = getelementptr inbounds %struct.rtx_def, ptr %16, i64 0, i32 1
  %28 = getelementptr inbounds %struct.rtx_def, ptr %22, i64 0, i32 1
  %29 = load i64, ptr %28, align 8, !tbaa !75
  %30 = load ptr, ptr %27, align 8, !tbaa !75
  br label %31

31:                                               ; preds = %26, %20, %14, %8
  %32 = phi ptr [ %30, %26 ], [ %10, %20 ], [ %10, %14 ], [ %10, %8 ]
  %33 = phi i64 [ %29, %26 ], [ 0, %20 ], [ 0, %14 ], [ 0, %8 ]
  %34 = load i32, ptr %32, align 8
  %35 = and i32 %34, 65535
  %36 = icmp eq i32 %35, 45
  br i1 %36, label %37, label %73

37:                                               ; preds = %31
  %38 = getelementptr inbounds %struct.rtx_def, ptr %32, i64 0, i32 1, i32 0, i32 0, i64 1
  %39 = load i32, ptr %38, align 8, !tbaa !75
  %40 = and i32 %39, 384
  %41 = icmp eq i32 %40, 128
  br i1 %41, label %42, label %73

42:                                               ; preds = %37
  %43 = getelementptr inbounds %struct.rtx_def, ptr %32, i64 0, i32 1, i32 0, i32 1
  %44 = load ptr, ptr %43, align 8, !tbaa !75
  %45 = icmp eq ptr %44, null
  br i1 %45, label %73, label %46

46:                                               ; preds = %42
  %47 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 45), align 8, !tbaa !151
  %48 = tail call zeroext i8 %47(ptr noundef nonnull %32) #16
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %73, label %50

50:                                               ; preds = %46
  tail call void @place_block_symbol(ptr noundef nonnull %32) #16
  %51 = getelementptr inbounds %struct.rtx_def, ptr %32, i64 0, i32 1, i32 0, i32 2
  %52 = load i64, ptr %51, align 8, !tbaa !75
  %53 = add nsw i64 %52, %33
  %54 = load ptr, ptr %43, align 8, !tbaa !75
  %55 = load i32, ptr %38, align 8, !tbaa !75
  %56 = lshr i32 %55, 3
  %57 = and i32 %56, 7
  %58 = tail call ptr @get_section_anchor(ptr noundef %54, i64 noundef %53, i32 noundef %57) #16
  %59 = getelementptr inbounds %struct.rtx_def, ptr %58, i64 0, i32 1, i32 0, i32 2
  %60 = load i64, ptr %59, align 8, !tbaa !75
  %61 = sub nsw i64 %53, %60
  %62 = load i32, ptr @cse_not_expected, align 4, !tbaa !79
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %50
  %65 = load i32, ptr %58, align 8
  %66 = lshr i32 %65, 16
  %67 = and i32 %66, 255
  %68 = tail call ptr @force_reg(i32 noundef %67, ptr noundef nonnull %58)
  br label %69

69:                                               ; preds = %64, %50
  %70 = phi ptr [ %58, %50 ], [ %68, %64 ]
  %71 = tail call ptr @plus_constant(ptr noundef %70, i64 noundef %61)
  %72 = tail call ptr @replace_equiv_address(ptr noundef nonnull %0, ptr noundef %71) #16
  br label %73

73:                                               ; preds = %31, %37, %42, %46, %4, %1, %69
  %74 = phi ptr [ %72, %69 ], [ %0, %1 ], [ %0, %4 ], [ %0, %46 ], [ %0, %42 ], [ %0, %37 ], [ %0, %31 ]
  ret ptr %74
}

declare ptr @replace_equiv_address(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @place_block_symbol(ptr noundef) local_unnamed_addr #3

declare ptr @get_section_anchor(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

declare ptr @gen_reg_rtx(i32 noundef) local_unnamed_addr #3

declare i32 @general_operand(ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @emit_move_insn(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local ptr @copy_addr_to_reg(ptr noundef %0) local_unnamed_addr #10 !prof !63 {
  %2 = tail call ptr @copy_to_mode_reg(i32 noundef 16, ptr noundef %0)
  ret ptr %2
}

; Function Attrs: nounwind uwtable
define dso_local ptr @copy_to_mode_reg(i32 noundef %0, ptr noundef %1) local_unnamed_addr #11 !prof !152 {
  %3 = tail call ptr @gen_reg_rtx(i32 noundef %0) #16
  %4 = tail call i32 @general_operand(ptr noundef %1, i32 noundef 0) #16
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %8, !prof !153

6:                                                ; preds = %2
  %7 = tail call ptr @force_operand(ptr noundef %1, ptr noundef %3) #16
  br label %8

8:                                                ; preds = %6, %2
  %9 = phi ptr [ %1, %2 ], [ %7, %6 ]
  %10 = load i32, ptr %9, align 8
  %11 = lshr i32 %10, 16
  %12 = and i32 %11, 255
  %13 = icmp eq i32 %12, %0
  %14 = icmp eq i32 %12, 0
  %15 = or i1 %13, %14
  br i1 %15, label %17, label %16, !prof !154

16:                                               ; preds = %8
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 635, ptr noundef nonnull @.str.1) #16
  br label %17

17:                                               ; preds = %8, %16
  %18 = icmp eq ptr %9, %3
  br i1 %18, label %21, label %19, !prof !153

19:                                               ; preds = %17
  %20 = tail call ptr @emit_move_insn(ptr noundef %3, ptr noundef nonnull %9) #16
  br label %21

21:                                               ; preds = %19, %17
  ret ptr %3
}

declare ptr @get_last_insn() local_unnamed_addr #3

declare ptr @single_set_2(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @rtx_equal_p(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @set_unique_reg_note(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare i32 @exact_log2(i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local ptr @force_not_mem(ptr noundef %0) local_unnamed_addr #11 !prof !155 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 65535
  %4 = icmp eq i32 %3, 43
  br i1 %4, label %5, label %19, !prof !156

5:                                                ; preds = %1
  %6 = lshr i32 %2, 16
  %7 = and i32 %6, 255
  %8 = icmp eq i32 %7, 1
  br i1 %8, label %19, label %9

9:                                                ; preds = %5
  %10 = tail call ptr @gen_reg_rtx(i32 noundef %7) #16
  %11 = load i32, ptr %0, align 8
  %12 = and i32 %11, 1073741824
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %9
  %15 = load i32, ptr %10, align 8
  %16 = or i32 %15, 1073741824
  store i32 %16, ptr %10, align 8
  br label %17

17:                                               ; preds = %14, %9
  %18 = tail call ptr @emit_move_insn(ptr noundef %10, ptr noundef nonnull %0) #16
  br label %19

19:                                               ; preds = %1, %5, %17
  %20 = phi ptr [ %10, %17 ], [ %0, %5 ], [ %0, %1 ]
  ret ptr %20
}

; Function Attrs: cold nounwind uwtable
define dso_local noundef ptr @copy_to_suggested_reg(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #10 !prof !63 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %3
  %6 = load i32, ptr %1, align 8
  %7 = and i32 %6, 65535
  %8 = icmp eq i32 %7, 37
  br i1 %8, label %11, label %9

9:                                                ; preds = %5, %3
  %10 = tail call ptr @gen_reg_rtx(i32 noundef %2) #16
  br label %11

11:                                               ; preds = %5, %9
  %12 = phi ptr [ %10, %9 ], [ %1, %5 ]
  %13 = tail call ptr @emit_move_insn(ptr noundef %12, ptr noundef %0) #16
  ret ptr %12
}

; Function Attrs: nounwind uwtable
define dso_local i32 @promote_function_mode(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #11 !prof !157 {
  %6 = load i64, ptr %0, align 8
  %7 = trunc i64 %6 to i16
  %8 = add i16 %7, -5
  %9 = icmp ult i16 %8, 8
  br i1 %9, label %10, label %13, !prof !158

10:                                               ; preds = %5
  %11 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 88), align 8, !tbaa !159
  %12 = tail call i32 %11(ptr noundef nonnull %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) #16, !prof !160
  br label %13

13:                                               ; preds = %5, %10
  %14 = phi i32 [ %12, %10 ], [ %1, %5 ]
  ret i32 %14
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef i32 @promote_mode(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readnone %2) local_unnamed_addr #12 !prof !155 {
  %4 = load i64, ptr %0, align 8
  %5 = trunc i64 %4 to i16
  switch i16 %5, label %17 [
    i16 8, label %6
    i16 6, label %6
    i16 7, label %6
    i16 9, label %6
    i16 5, label %6
    i16 11, label %6
  ], !prof !161

6:                                                ; preds = %3, %3, %3, %3, %3, %3
  %7 = icmp eq i32 %1, 15
  %8 = load i8, ptr getelementptr inbounds ([62 x i8], ptr @ix86_tune_features, i64 0, i64 25), align 1
  %9 = icmp ne i8 %8, 0
  %10 = select i1 %7, i1 %9, i1 false
  br i1 %10, label %16, label %11

11:                                               ; preds = %6
  %12 = icmp eq i32 %1, 14
  %13 = load i8, ptr getelementptr inbounds ([62 x i8], ptr @ix86_tune_features, i64 0, i64 24), align 8
  %14 = icmp ne i8 %13, 0
  %15 = select i1 %12, i1 %14, i1 false
  br i1 %15, label %16, label %17

16:                                               ; preds = %11, %6
  br label %17

17:                                               ; preds = %11, %16, %3
  %18 = phi i32 [ %1, %3 ], [ 16, %16 ], [ %1, %11 ]
  ret i32 %18
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @promote_decl_mode(ptr nocapture noundef readonly %0, ptr noundef writeonly %1) local_unnamed_addr #9 !prof !162 {
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !75
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #16
  %6 = load i64, ptr %5, align 8
  %7 = trunc i64 %6 to i32
  %8 = lshr i32 %7, 21
  %9 = and i32 %8, 1
  store i32 %9, ptr %3, align 4, !tbaa !79
  %10 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 2
  %11 = load i64, ptr %10, align 8
  %12 = trunc i64 %11 to i32
  %13 = and i32 %12, 255
  %14 = load i64, ptr %0, align 8
  %15 = trunc i64 %14 to i16
  switch i16 %15, label %26 [
    i16 36, label %16
    i16 34, label %16
  ], !prof !163

16:                                               ; preds = %2, %2
  %17 = trunc i64 %6 to i16
  %18 = add i16 %17, -5
  %19 = icmp ult i16 %18, 8
  br i1 %19, label %20, label %41

20:                                               ; preds = %16
  %21 = load ptr, ptr @current_function_decl, align 8, !tbaa !64
  %22 = getelementptr inbounds %struct.tree_common, ptr %21, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !75
  %24 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 88), align 8, !tbaa !159
  %25 = call i32 %24(ptr noundef nonnull %5, i32 noundef %13, ptr noundef nonnull %3, ptr noundef %23, i32 noundef 2) #16
  br label %41

26:                                               ; preds = %2
  %27 = trunc i64 %6 to i16
  switch i16 %27, label %41 [
    i16 8, label %28
    i16 6, label %28
    i16 7, label %28
    i16 9, label %28
    i16 5, label %28
    i16 11, label %28
  ], !prof !164

28:                                               ; preds = %26, %26, %26, %26, %26, %26
  %29 = icmp eq i32 %13, 15
  %30 = load i8, ptr getelementptr inbounds ([62 x i8], ptr @ix86_tune_features, i64 0, i64 25), align 1
  %31 = icmp ne i8 %30, 0
  %32 = select i1 %29, i1 %31, i1 false, !prof !165
  br i1 %32, label %38, label %33, !prof !166

33:                                               ; preds = %28
  %34 = icmp eq i32 %13, 14
  %35 = load i8, ptr getelementptr inbounds ([62 x i8], ptr @ix86_tune_features, i64 0, i64 24), align 8
  %36 = icmp ne i8 %35, 0
  %37 = select i1 %34, i1 %36, i1 false, !prof !167
  br i1 %37, label %38, label %39, !prof !166

38:                                               ; preds = %33, %28
  br label %39

39:                                               ; preds = %38, %33
  %40 = phi i32 [ 16, %38 ], [ %13, %33 ]
  store i32 %9, ptr %3, align 4, !tbaa !79
  br label %41

41:                                               ; preds = %39, %26, %20, %16
  %42 = phi i32 [ %25, %20 ], [ %13, %16 ], [ %40, %39 ], [ %13, %26 ]
  %43 = icmp eq ptr %1, null
  br i1 %43, label %46, label %44, !prof !168

44:                                               ; preds = %41
  %45 = load i32, ptr %3, align 4, !tbaa !79
  store i32 %45, ptr %1, align 4, !tbaa !79
  br label %46

46:                                               ; preds = %44, %41
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #16
  ret i32 %42
}

; Function Attrs: cold nounwind uwtable
define dso_local void @adjust_stack(ptr noundef %0) local_unnamed_addr #10 !prof !63 {
  %2 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !64
  %3 = icmp eq ptr %2, %0
  br i1 %3, label %21, label %4

4:                                                ; preds = %1
  %5 = load i32, ptr %0, align 8
  %6 = and i32 %5, 65535
  %7 = icmp eq i32 %6, 30
  br i1 %7, label %8, label %14

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %10 = load i64, ptr %9, align 8, !tbaa !75
  %11 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 0, i32 2), align 8, !tbaa !169
  %12 = trunc i64 %10 to i32
  %13 = sub i32 %11, %12
  store i32 %13, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 0, i32 2), align 8, !tbaa !169
  br label %14

14:                                               ; preds = %8, %4
  %15 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 2), align 16, !tbaa !64
  %16 = tail call ptr @expand_binop(i32 noundef 16, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 12), ptr noundef %15, ptr noundef nonnull %0, ptr noundef %15, i32 noundef 0, i32 noundef 3) #16
  %17 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 2), align 16, !tbaa !64
  %18 = icmp eq ptr %16, %17
  br i1 %18, label %21, label %19

19:                                               ; preds = %14
  %20 = tail call ptr @emit_move_insn(ptr noundef %17, ptr noundef %16) #16
  br label %21

21:                                               ; preds = %14, %19, %1
  ret void
}

declare ptr @expand_binop(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @anti_adjust_stack(ptr noundef %0) local_unnamed_addr #10 !prof !63 {
  %2 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !64
  %3 = icmp eq ptr %2, %0
  br i1 %3, label %21, label %4

4:                                                ; preds = %1
  %5 = load i32, ptr %0, align 8
  %6 = and i32 %5, 65535
  %7 = icmp eq i32 %6, 30
  br i1 %7, label %8, label %14

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %10 = load i64, ptr %9, align 8, !tbaa !75
  %11 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 0, i32 2), align 8, !tbaa !169
  %12 = trunc i64 %10 to i32
  %13 = add i32 %11, %12
  store i32 %13, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 0, i32 2), align 8, !tbaa !169
  br label %14

14:                                               ; preds = %8, %4
  %15 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 2), align 16, !tbaa !64
  %16 = tail call ptr @expand_binop(i32 noundef 16, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 14), ptr noundef %15, ptr noundef nonnull %0, ptr noundef %15, i32 noundef 0, i32 noundef 3) #16
  %17 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 2), align 16, !tbaa !64
  %18 = icmp eq ptr %16, %17
  br i1 %18, label %21, label %19

19:                                               ; preds = %14
  %20 = tail call ptr @emit_move_insn(ptr noundef %17, ptr noundef %16) #16
  br label %21

21:                                               ; preds = %14, %19, %1
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @emit_stack_save(i32 noundef %0, ptr nocapture noundef %1, ptr noundef %2) local_unnamed_addr #10 !prof !63 {
  %4 = load ptr, ptr %1, align 8, !tbaa !64
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %16

6:                                                ; preds = %3
  %7 = icmp eq i32 %0, 2
  br i1 %7, label %8, label %12

8:                                                ; preds = %6
  %9 = load i8, ptr getelementptr inbounds ([87 x i8], ptr @mode_size, i64 0, i64 16), align 16, !tbaa !75
  %10 = zext i8 %9 to i64
  %11 = tail call ptr @assign_stack_local(i32 noundef 16, i64 noundef %10, i32 noundef 0) #16
  br label %14

12:                                               ; preds = %6
  %13 = tail call ptr @gen_reg_rtx(i32 noundef 16) #16
  br label %14

14:                                               ; preds = %8, %12
  %15 = phi ptr [ %13, %12 ], [ %11, %8 ]
  store ptr %15, ptr %1, align 8, !tbaa !64
  br label %16

16:                                               ; preds = %14, %3
  %17 = phi ptr [ %4, %3 ], [ %15, %14 ]
  %18 = icmp eq ptr %2, null
  br i1 %18, label %30, label %19

19:                                               ; preds = %16
  tail call void @start_sequence() #16
  tail call void @do_pending_stack_adjust() #16
  %20 = icmp eq ptr %17, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %19
  %22 = tail call ptr @validize_mem(ptr noundef nonnull %17)
  br label %23

23:                                               ; preds = %21, %19
  %24 = phi ptr [ %22, %21 ], [ null, %19 ]
  %25 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 2), align 16, !tbaa !64
  %26 = tail call ptr @gen_move_insn(ptr noundef %24, ptr noundef %25) #16
  %27 = tail call ptr @emit_insn(ptr noundef %26) #16
  %28 = tail call ptr @get_insns() #16
  tail call void @end_sequence() #16
  %29 = tail call ptr @emit_insn_after(ptr noundef %28, ptr noundef nonnull %2) #16
  br label %39

30:                                               ; preds = %16
  tail call void @do_pending_stack_adjust() #16
  %31 = icmp eq ptr %17, null
  br i1 %31, label %34, label %32

32:                                               ; preds = %30
  %33 = tail call ptr @validize_mem(ptr noundef nonnull %17)
  br label %34

34:                                               ; preds = %32, %30
  %35 = phi ptr [ %33, %32 ], [ null, %30 ]
  %36 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 2), align 16, !tbaa !64
  %37 = tail call ptr @gen_move_insn(ptr noundef %35, ptr noundef %36) #16
  %38 = tail call ptr @emit_insn(ptr noundef %37) #16
  br label %39

39:                                               ; preds = %34, %23
  ret void
}

declare ptr @gen_move_insn(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @assign_stack_local(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

declare void @start_sequence() local_unnamed_addr #3

declare void @do_pending_stack_adjust() local_unnamed_addr #3

declare ptr @emit_insn(ptr noundef) local_unnamed_addr #3

declare ptr @get_insns() local_unnamed_addr #3

declare void @end_sequence() local_unnamed_addr #3

declare ptr @emit_insn_after(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @emit_stack_restore(i32 noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !prof !63 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %3
  %6 = tail call ptr @validize_mem(ptr noundef nonnull %1)
  %7 = tail call ptr @gen_rtx_fmt_0_stat(i32 noundef 38, i32 noundef 0) #16
  %8 = tail call ptr @gen_rtx_MEM(i32 noundef 1, ptr noundef %7) #16
  %9 = tail call ptr @emit_clobber(ptr noundef %8) #16
  %10 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 2), align 16, !tbaa !64
  %11 = tail call ptr @gen_rtx_MEM(i32 noundef 1, ptr noundef %10) #16
  %12 = tail call ptr @emit_clobber(ptr noundef %11) #16
  br label %13

13:                                               ; preds = %5, %3
  %14 = phi ptr [ %6, %5 ], [ null, %3 ]
  tail call void @discard_pending_stack_adjust() #16
  %15 = icmp eq ptr %2, null
  br i1 %15, label %22, label %16

16:                                               ; preds = %13
  tail call void @start_sequence() #16
  %17 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 2), align 16, !tbaa !64
  %18 = tail call ptr @gen_move_insn(ptr noundef %17, ptr noundef %14) #16
  %19 = tail call ptr @emit_insn(ptr noundef %18) #16
  %20 = tail call ptr @get_insns() #16
  tail call void @end_sequence() #16
  %21 = tail call ptr @emit_insn_after(ptr noundef %20, ptr noundef nonnull %2) #16
  br label %26

22:                                               ; preds = %13
  %23 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 2), align 16, !tbaa !64
  %24 = tail call ptr @gen_move_insn(ptr noundef %23, ptr noundef %14) #16
  %25 = tail call ptr @emit_insn(ptr noundef %24) #16
  br label %26

26:                                               ; preds = %22, %16
  ret void
}

declare ptr @emit_clobber(ptr noundef) local_unnamed_addr #3

declare ptr @gen_rtx_MEM(i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @gen_rtx_fmt_0_stat(i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @discard_pending_stack_adjust() local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @update_nonlocal_goto_save_area() local_unnamed_addr #10 !prof !63 {
  %1 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #16
  %2 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 39), align 8, !tbaa !64
  %3 = load ptr, ptr @cfun, align 8, !tbaa !64
  %4 = getelementptr inbounds %struct.function, ptr %3, i64 0, i32 8
  %5 = load ptr, ptr %4, align 8, !tbaa !178
  %6 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 14), align 16, !tbaa !64
  %7 = tail call ptr @build4_stat(i32 noundef 45, ptr noundef %2, ptr noundef %5, ptr noundef %6, ptr noundef null, ptr noundef null) #16
  %8 = tail call ptr @expand_expr_real(ptr noundef %7, ptr noundef null, i32 noundef 0, i32 noundef 5, ptr noundef null) #16
  store ptr %8, ptr %1, align 8, !tbaa !64
  call void @emit_stack_save(i32 noundef 2, ptr noundef nonnull %1, ptr noundef null)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #16
  ret void
}

declare ptr @build4_stat(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local ptr @allocate_dynamic_stack_space(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #10 !prof !63 {
  %4 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !64
  %5 = icmp eq ptr %4, %0
  br i1 %5, label %6, label %8

6:                                                ; preds = %3
  %7 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 8), align 16, !tbaa !64
  br label %152

8:                                                ; preds = %3
  %9 = load ptr, ptr @cfun, align 8, !tbaa !64
  %10 = getelementptr inbounds %struct.function, ptr %9, i64 0, i32 20
  %11 = load i32, ptr %10, align 8
  %12 = or i32 %11, 524288
  store i32 %12, ptr %10, align 8
  %13 = load i32, ptr %0, align 8
  %14 = lshr i32 %13, 16
  %15 = trunc i32 %14 to i8
  switch i8 %15, label %16 [
    i8 0, label %18
    i8 16, label %18
  ]

16:                                               ; preds = %8
  %17 = tail call ptr @convert_to_mode(i32 noundef 16, ptr noundef nonnull %0, i32 noundef 1) #16
  br label %18

18:                                               ; preds = %8, %8, %16
  %19 = phi ptr [ %17, %16 ], [ %0, %8 ], [ %0, %8 ]
  %20 = load i32, ptr @ix86_preferred_stack_boundary, align 4, !tbaa !79
  store i32 %20, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 23), align 8, !tbaa !180
  %21 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !79
  %22 = and i32 %21, 32
  %23 = icmp eq i32 %22, 0
  %24 = select i1 %23, i64 15, i64 31
  %25 = tail call ptr @plus_constant(ptr noundef %19, i64 noundef %24)
  %26 = tail call ptr @force_operand(ptr noundef %25, ptr noundef null) #16
  %27 = load i32, ptr @ix86_preferred_stack_boundary, align 4, !tbaa !79
  %28 = lshr i32 %27, 3
  %29 = icmp eq i32 %28, 1
  br i1 %29, label %56, label %30

30:                                               ; preds = %18
  %31 = load i32, ptr %26, align 8
  %32 = and i32 %31, 65535
  %33 = icmp eq i32 %32, 30
  br i1 %33, label %34, label %46

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.rtx_def, ptr %26, i64 0, i32 1
  %36 = load i64, ptr %35, align 8, !tbaa !75
  %37 = zext nneg i32 %28 to i64
  %38 = add nsw i64 %36, %37
  %39 = freeze i64 %38
  %40 = add i64 %39, -1
  %41 = srem i64 %40, %37
  %42 = sub nsw i64 %40, %41
  %43 = icmp eq i64 %36, %42
  br i1 %43, label %56, label %44

44:                                               ; preds = %34
  %45 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %42) #16
  br label %56

46:                                               ; preds = %30
  %47 = add nsw i32 %28, -1
  %48 = sext i32 %47 to i64
  %49 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %48) #16
  %50 = tail call ptr @expand_binop(i32 noundef 16, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 12), ptr noundef nonnull %26, ptr noundef %49, ptr noundef null, i32 noundef 1, i32 noundef 3) #16
  %51 = zext nneg i32 %28 to i64
  %52 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %51) #16
  %53 = tail call ptr @expand_divmod(i32 noundef 0, i32 noundef 67, i32 noundef 16, ptr noundef %50, ptr noundef %52, ptr noundef null, i32 noundef 1) #16
  %54 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %51) #16
  %55 = tail call ptr @expand_mult(i32 noundef 16, ptr noundef %53, ptr noundef %54, ptr noundef null, i32 noundef 1) #16
  br label %56

56:                                               ; preds = %18, %34, %44, %46
  %57 = phi ptr [ %26, %18 ], [ %55, %46 ], [ %45, %44 ], [ %26, %34 ]
  tail call void @do_pending_stack_adjust() #16
  %58 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 0, i32 2), align 8, !tbaa !169
  %59 = load i32, ptr @ix86_preferred_stack_boundary, align 4, !tbaa !79
  %60 = lshr i32 %59, 3
  %61 = urem i32 %58, %60
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %64, label %63

63:                                               ; preds = %56
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1234, ptr noundef nonnull @.str.1) #16
  br label %64

64:                                               ; preds = %56, %63
  %65 = icmp eq ptr %1, null
  br i1 %65, label %77, label %66

66:                                               ; preds = %64
  %67 = load i32, ptr %1, align 8
  %68 = and i32 %67, 65535
  %69 = icmp eq i32 %68, 37
  br i1 %69, label %70, label %77

70:                                               ; preds = %66
  %71 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %72 = load i32, ptr %71, align 8, !tbaa !75
  %73 = icmp ugt i32 %72, 52
  %74 = and i32 %67, 16711680
  %75 = icmp eq i32 %74, 1048576
  %76 = and i1 %75, %73
  br i1 %76, label %79, label %77

77:                                               ; preds = %70, %66, %64
  %78 = tail call ptr @gen_reg_rtx(i32 noundef 16) #16
  br label %79

79:                                               ; preds = %70, %77
  %80 = phi ptr [ %78, %77 ], [ %1, %70 ]
  tail call void @mark_reg_pointer(ptr noundef %80, i32 noundef %2) #16
  %81 = load i32, ptr @target_flags, align 4, !tbaa !79
  %82 = and i32 %81, 524288
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %108, label %84

84:                                               ; preds = %79
  %85 = load i32, ptr @word_mode, align 4, !tbaa !79
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %92

87:                                               ; preds = %84
  %88 = load ptr, ptr getelementptr inbounds ([0 x %struct.insn_data], ptr @insn_data, i64 0, i64 2414, i32 3), align 8, !tbaa !181
  %89 = getelementptr inbounds %struct.insn_operand_data, ptr %88, i64 1, i32 2
  %90 = load i16, ptr %89, align 8
  %91 = zext i16 %90 to i32
  br label %92

92:                                               ; preds = %87, %84
  %93 = phi i32 [ %91, %87 ], [ %85, %84 ]
  %94 = load ptr, ptr getelementptr inbounds ([0 x %struct.insn_data], ptr @insn_data, i64 0, i64 2414, i32 3), align 8, !tbaa !181
  %95 = getelementptr inbounds %struct.insn_operand_data, ptr %94, i64 1
  %96 = load ptr, ptr %95, align 8, !tbaa !183
  %97 = icmp eq ptr %96, null
  br i1 %97, label %104, label %98

98:                                               ; preds = %92
  %99 = tail call i32 %96(ptr noundef %57, i32 noundef %93) #16
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %101, label %104

101:                                              ; preds = %98
  %102 = tail call ptr @convert_to_mode(i32 noundef %93, ptr noundef %57, i32 noundef 1) #16
  %103 = tail call ptr @copy_to_mode_reg(i32 noundef %93, ptr noundef %102)
  br label %104

104:                                              ; preds = %101, %98, %92
  %105 = phi ptr [ %57, %98 ], [ %103, %101 ], [ %57, %92 ]
  %106 = tail call ptr @gen_allocate_stack(ptr noundef %80, ptr noundef %105) #16
  %107 = tail call ptr @emit_insn(ptr noundef %106) #16
  br label %128

108:                                              ; preds = %79
  %109 = load i8, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 34), align 2, !tbaa !185
  %110 = icmp eq i8 %109, 0
  br i1 %110, label %120, label %111

111:                                              ; preds = %108
  %112 = tail call ptr @gen_label_rtx() #16
  %113 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 2), align 16, !tbaa !64
  %114 = load ptr, ptr @stack_limit_rtx, align 8, !tbaa !64
  %115 = tail call ptr @expand_binop(i32 noundef 16, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 14), ptr noundef %113, ptr noundef %114, ptr noundef null, i32 noundef 1, i32 noundef 2) #16
  tail call void @emit_cmp_and_jump_insns(ptr noundef %115, ptr noundef %57, i32 noundef 86, ptr noundef null, i32 noundef 16, i32 noundef 1, ptr noundef %112) #16
  %116 = tail call ptr @gen_trap() #16
  %117 = tail call ptr @emit_insn(ptr noundef %116) #16
  %118 = tail call ptr @emit_barrier() #16
  %119 = tail call ptr @emit_label(ptr noundef %112) #16
  br label %120

120:                                              ; preds = %111, %108
  %121 = load i32, ptr @flag_stack_check, align 4, !tbaa !79
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %124, label %123

123:                                              ; preds = %120
  tail call void @anti_adjust_stack_and_probe(ptr noundef %57, i8 noundef zeroext 0)
  br label %125

124:                                              ; preds = %120
  tail call void @anti_adjust_stack(ptr noundef %57)
  br label %125

125:                                              ; preds = %124, %123
  %126 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 8), align 16, !tbaa !64
  %127 = tail call ptr @emit_move_insn(ptr noundef %80, ptr noundef %126) #16
  br label %128

128:                                              ; preds = %125, %104
  %129 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !79
  %130 = and i32 %129, 32
  %131 = icmp eq i32 %130, 0
  %132 = select i1 %131, i64 15, i64 31
  %133 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %132) #16
  %134 = tail call ptr @expand_binop(i32 noundef 16, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 12), ptr noundef %80, ptr noundef %133, ptr noundef null, i32 noundef 1, i32 noundef 3) #16
  %135 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !79
  %136 = and i32 %135, 32
  %137 = icmp eq i32 %136, 0
  %138 = select i1 %137, i64 16, i64 32
  %139 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %138) #16
  %140 = tail call ptr @expand_divmod(i32 noundef 0, i32 noundef 67, i32 noundef 16, ptr noundef %134, ptr noundef %139, ptr noundef null, i32 noundef 1) #16
  %141 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !79
  %142 = and i32 %141, 32
  %143 = icmp eq i32 %142, 0
  %144 = select i1 %143, i64 16, i64 32
  %145 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %144) #16
  %146 = tail call ptr @expand_mult(i32 noundef 16, ptr noundef %140, ptr noundef %145, ptr noundef null, i32 noundef 1) #16
  %147 = load ptr, ptr @cfun, align 8, !tbaa !64
  %148 = getelementptr inbounds %struct.function, ptr %147, i64 0, i32 8
  %149 = load ptr, ptr %148, align 8, !tbaa !178
  %150 = icmp eq ptr %149, null
  br i1 %150, label %152, label %151

151:                                              ; preds = %128
  tail call void @update_nonlocal_goto_save_area()
  br label %152

152:                                              ; preds = %128, %151, %6
  %153 = phi ptr [ %7, %6 ], [ %146, %151 ], [ %146, %128 ]
  ret ptr %153
}

declare ptr @convert_to_mode(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @gen_allocate_stack(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @gen_label_rtx() local_unnamed_addr #3

declare void @emit_cmp_and_jump_insns(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @gen_trap() local_unnamed_addr #3

declare ptr @emit_barrier() local_unnamed_addr #3

declare ptr @emit_label(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @anti_adjust_stack_and_probe(ptr noundef %0, i8 noundef zeroext %1) local_unnamed_addr #10 !prof !63 {
  %3 = load i32, ptr %0, align 8
  %4 = lshr i32 %3, 16
  %5 = trunc i32 %4 to i8
  switch i8 %5, label %6 [
    i8 0, label %8
    i8 16, label %8
  ]

6:                                                ; preds = %2
  %7 = tail call ptr @convert_to_mode(i32 noundef 16, ptr noundef nonnull %0, i32 noundef 1) #16
  br label %8

8:                                                ; preds = %2, %2, %6
  %9 = phi ptr [ %7, %6 ], [ %0, %2 ], [ %0, %2 ]
  %10 = load i32, ptr %9, align 8
  %11 = and i32 %10, 65535
  %12 = icmp eq i32 %11, 30
  br i1 %12, label %13, label %37

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1
  %15 = load i64, ptr %14, align 8, !tbaa !75
  %16 = icmp slt i64 %15, 28672
  br i1 %16, label %17, label %37

17:                                               ; preds = %13
  %18 = icmp sgt i64 %15, 4096
  br i1 %18, label %19, label %34

19:                                               ; preds = %17, %19
  %20 = phi i64 [ %30, %19 ], [ 4096, %17 ]
  %21 = phi i64 [ 4096, %19 ], [ 8208, %17 ]
  %22 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %21) #16
  tail call void @anti_adjust_stack(ptr noundef %22)
  %23 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 2), align 16, !tbaa !64
  %24 = load i32, ptr @word_mode, align 4, !tbaa !79
  %25 = tail call ptr @gen_rtx_MEM(i32 noundef %24, ptr noundef %23) #16
  %26 = load i32, ptr %25, align 8
  %27 = or i32 %26, 134217728
  store i32 %27, ptr %25, align 8
  %28 = tail call ptr @gen_probe_stack(ptr noundef nonnull %25) #16
  %29 = tail call ptr @emit_insn(ptr noundef %28) #16
  %30 = add nuw nsw i64 %20, 4096
  %31 = icmp slt i64 %30, %15
  br i1 %31, label %19, label %32, !llvm.loop !186

32:                                               ; preds = %19
  %33 = sub nsw i64 0, %20
  br label %34

34:                                               ; preds = %32, %17
  %35 = phi i64 [ 4112, %17 ], [ %33, %32 ]
  %36 = tail call ptr @plus_constant(ptr noundef nonnull %9, i64 noundef %35)
  br label %67

37:                                               ; preds = %13, %8
  %38 = tail call ptr @gen_label_rtx() #16
  %39 = tail call ptr @gen_label_rtx() #16
  %40 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef -4096) #16
  %41 = tail call ptr @simplify_gen_binary(i32 noundef 61, i32 noundef 16, ptr noundef nonnull %9, ptr noundef %40) #16
  %42 = tail call ptr @force_operand(ptr noundef %41, ptr noundef null) #16
  %43 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef 4112) #16
  tail call void @anti_adjust_stack(ptr noundef %43)
  %44 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 2), align 16, !tbaa !64
  %45 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 50, i32 noundef 16, ptr noundef %44, ptr noundef %42) #16
  %46 = tail call ptr @force_operand(ptr noundef %45, ptr noundef null) #16
  %47 = tail call ptr @emit_label(ptr noundef %38) #16
  %48 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 2), align 16, !tbaa !64
  tail call void @emit_cmp_and_jump_insns(ptr noundef %48, ptr noundef %46, i32 noundef 81, ptr noundef null, i32 noundef 16, i32 noundef 1, ptr noundef %39) #16
  %49 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef 4096) #16
  tail call void @anti_adjust_stack(ptr noundef %49)
  %50 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 2), align 16, !tbaa !64
  %51 = load i32, ptr @word_mode, align 4, !tbaa !79
  %52 = tail call ptr @gen_rtx_MEM(i32 noundef %51, ptr noundef %50) #16
  %53 = load i32, ptr %52, align 8
  %54 = or i32 %53, 134217728
  store i32 %54, ptr %52, align 8
  %55 = tail call ptr @gen_probe_stack(ptr noundef nonnull %52) #16
  %56 = tail call ptr @emit_insn(ptr noundef %55) #16
  tail call void @emit_jump(ptr noundef %38) #16
  %57 = tail call ptr @emit_label(ptr noundef %39) #16
  %58 = tail call ptr @simplify_gen_binary(i32 noundef 50, i32 noundef 16, ptr noundef nonnull %9, ptr noundef %41) #16
  %59 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !64
  %60 = icmp eq ptr %58, %59
  br i1 %60, label %76, label %61

61:                                               ; preds = %37
  %62 = load i32, ptr %58, align 8
  %63 = and i32 %62, 65535
  %64 = icmp eq i32 %63, 30
  br i1 %64, label %67, label %65

65:                                               ; preds = %61
  %66 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 50, i32 noundef 16, ptr noundef nonnull %9, ptr noundef %42) #16
  br label %67

67:                                               ; preds = %61, %65, %34
  %68 = phi ptr [ %36, %34 ], [ %66, %65 ], [ %58, %61 ]
  tail call void @anti_adjust_stack(ptr noundef %68)
  %69 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 2), align 16, !tbaa !64
  %70 = load i32, ptr @word_mode, align 4, !tbaa !79
  %71 = tail call ptr @gen_rtx_MEM(i32 noundef %70, ptr noundef %69) #16
  %72 = load i32, ptr %71, align 8
  %73 = or i32 %72, 134217728
  store i32 %73, ptr %71, align 8
  %74 = tail call ptr @gen_probe_stack(ptr noundef nonnull %71) #16
  %75 = tail call ptr @emit_insn(ptr noundef %74) #16
  br label %76

76:                                               ; preds = %67, %37
  %77 = icmp eq i8 %1, 0
  br i1 %77, label %80, label %78

78:                                               ; preds = %76
  %79 = tail call ptr @plus_constant(ptr noundef nonnull %9, i64 noundef 4112)
  br label %82

80:                                               ; preds = %76
  %81 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef 4112) #16
  br label %82

82:                                               ; preds = %80, %78
  %83 = phi ptr [ %81, %80 ], [ %79, %78 ]
  tail call void @adjust_stack(ptr noundef %83)
  ret void
}

declare ptr @expand_divmod(i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @expand_mult(i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @set_stack_check_libfunc(ptr noundef %0) local_unnamed_addr #13 !prof !63 {
  store ptr %0, ptr @stack_check_libfunc, align 8, !tbaa !64
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @probe_stack_range(i64 noundef %0, ptr noundef %1) local_unnamed_addr #10 !prof !63 {
  %3 = load i32, ptr %1, align 8
  %4 = lshr i32 %3, 16
  %5 = trunc i32 %4 to i8
  switch i8 %5, label %6 [
    i8 0, label %8
    i8 16, label %8
  ]

6:                                                ; preds = %2
  %7 = tail call ptr @convert_to_mode(i32 noundef 16, ptr noundef nonnull %1, i32 noundef 1) #16
  br label %8

8:                                                ; preds = %2, %2, %6
  %9 = phi ptr [ %7, %6 ], [ %1, %2 ], [ %1, %2 ]
  %10 = load ptr, ptr @stack_check_libfunc, align 8, !tbaa !64
  %11 = icmp eq ptr %10, null
  br i1 %11, label %18, label %12

12:                                               ; preds = %8
  %13 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 2), align 16, !tbaa !64
  %14 = tail call ptr @plus_constant(ptr noundef %9, i64 noundef %0)
  %15 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 50, i32 noundef 16, ptr noundef %13, ptr noundef %14) #16
  %16 = tail call ptr @memory_address_addr_space(i32 noundef 16, ptr noundef %15, i8 noundef zeroext 0)
  %17 = load ptr, ptr @stack_check_libfunc, align 8, !tbaa !64
  tail call void (ptr, i32, i32, i32, ...) @emit_library_call(ptr noundef %17, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef %16, i32 noundef 16) #16
  br label %104

18:                                               ; preds = %8
  %19 = load i32, ptr %9, align 8
  %20 = and i32 %19, 65535
  %21 = icmp eq i32 %20, 30
  br i1 %21, label %22, label %55

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1
  %24 = load i64, ptr %23, align 8, !tbaa !75
  %25 = icmp slt i64 %24, 28672
  br i1 %25, label %26, label %55

26:                                               ; preds = %22
  %27 = icmp sgt i64 %24, 4096
  br i1 %27, label %28, label %43

28:                                               ; preds = %26, %28
  %29 = phi i64 [ %41, %28 ], [ 4096, %26 ]
  %30 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 2), align 16, !tbaa !64
  %31 = add nsw i64 %29, %0
  %32 = sub nsw i64 0, %31
  %33 = tail call ptr @plus_constant(ptr noundef %30, i64 noundef %32)
  %34 = tail call ptr @memory_address_addr_space(i32 noundef 16, ptr noundef %33, i8 noundef zeroext 0)
  %35 = load i32, ptr @word_mode, align 4, !tbaa !79
  %36 = tail call ptr @gen_rtx_MEM(i32 noundef %35, ptr noundef %34) #16
  %37 = load i32, ptr %36, align 8
  %38 = or i32 %37, 134217728
  store i32 %38, ptr %36, align 8
  %39 = tail call ptr @gen_probe_stack(ptr noundef nonnull %36) #16
  %40 = tail call ptr @emit_insn(ptr noundef %39) #16
  %41 = add nuw nsw i64 %29, 4096
  %42 = icmp slt i64 %41, %24
  br i1 %42, label %28, label %43, !llvm.loop !187

43:                                               ; preds = %28, %26
  %44 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 2), align 16, !tbaa !64
  %45 = add nsw i64 %24, %0
  %46 = sub nsw i64 0, %45
  %47 = tail call ptr @plus_constant(ptr noundef %44, i64 noundef %46)
  %48 = tail call ptr @memory_address_addr_space(i32 noundef 16, ptr noundef %47, i8 noundef zeroext 0)
  %49 = load i32, ptr @word_mode, align 4, !tbaa !79
  %50 = tail call ptr @gen_rtx_MEM(i32 noundef %49, ptr noundef %48) #16
  %51 = load i32, ptr %50, align 8
  %52 = or i32 %51, 134217728
  store i32 %52, ptr %50, align 8
  %53 = tail call ptr @gen_probe_stack(ptr noundef nonnull %50) #16
  %54 = tail call ptr @emit_insn(ptr noundef %53) #16
  br label %104

55:                                               ; preds = %22, %18
  %56 = tail call ptr @gen_label_rtx() #16
  %57 = tail call ptr @gen_label_rtx() #16
  %58 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef -4096) #16
  %59 = tail call ptr @simplify_gen_binary(i32 noundef 61, i32 noundef 16, ptr noundef nonnull %9, ptr noundef %58) #16
  %60 = tail call ptr @force_operand(ptr noundef %59, ptr noundef null) #16
  %61 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 2), align 16, !tbaa !64
  %62 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %0) #16
  %63 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 50, i32 noundef 16, ptr noundef %61, ptr noundef %62) #16
  %64 = tail call ptr @force_operand(ptr noundef %63, ptr noundef null) #16
  %65 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 50, i32 noundef 16, ptr noundef %64, ptr noundef %60) #16
  %66 = tail call ptr @force_operand(ptr noundef %65, ptr noundef null) #16
  %67 = tail call ptr @emit_label(ptr noundef %56) #16
  tail call void @emit_cmp_and_jump_insns(ptr noundef %64, ptr noundef %66, i32 noundef 81, ptr noundef null, i32 noundef 16, i32 noundef 1, ptr noundef %57) #16
  %68 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef 4096) #16
  %69 = tail call ptr @expand_binop(i32 noundef 16, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 14), ptr noundef %64, ptr noundef %68, ptr noundef %64, i32 noundef 1, i32 noundef 2) #16
  %70 = icmp eq ptr %69, %64
  br i1 %70, label %72, label %71

71:                                               ; preds = %55
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1503, ptr noundef nonnull @.str.1) #16
  br label %72

72:                                               ; preds = %55, %71
  %73 = load i32, ptr @word_mode, align 4, !tbaa !79
  %74 = tail call ptr @gen_rtx_MEM(i32 noundef %73, ptr noundef %64) #16
  %75 = load i32, ptr %74, align 8
  %76 = or i32 %75, 134217728
  store i32 %76, ptr %74, align 8
  %77 = tail call ptr @gen_probe_stack(ptr noundef nonnull %74) #16
  %78 = tail call ptr @emit_insn(ptr noundef %77) #16
  tail call void @emit_jump(ptr noundef %56) #16
  %79 = tail call ptr @emit_label(ptr noundef %57) #16
  %80 = tail call ptr @simplify_gen_binary(i32 noundef 50, i32 noundef 16, ptr noundef nonnull %9, ptr noundef %59) #16
  %81 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !64
  %82 = icmp eq ptr %80, %81
  br i1 %82, label %104, label %83

83:                                               ; preds = %72
  %84 = load i32, ptr %80, align 8
  %85 = and i32 %84, 65535
  %86 = icmp eq i32 %85, 30
  br i1 %86, label %87, label %92

87:                                               ; preds = %83
  %88 = getelementptr inbounds %struct.rtx_def, ptr %80, i64 0, i32 1
  %89 = load i64, ptr %88, align 8, !tbaa !75
  %90 = sub nsw i64 0, %89
  %91 = tail call ptr @plus_constant(ptr noundef %66, i64 noundef %90)
  br label %95

92:                                               ; preds = %83
  %93 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 50, i32 noundef 16, ptr noundef nonnull %9, ptr noundef %60) #16
  %94 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 50, i32 noundef 16, ptr noundef %66, ptr noundef %93) #16
  br label %95

95:                                               ; preds = %92, %87
  %96 = phi ptr [ %94, %92 ], [ %91, %87 ]
  %97 = tail call ptr @memory_address_addr_space(i32 noundef 16, ptr noundef %96, i8 noundef zeroext 0)
  %98 = load i32, ptr @word_mode, align 4, !tbaa !79
  %99 = tail call ptr @gen_rtx_MEM(i32 noundef %98, ptr noundef %97) #16
  %100 = load i32, ptr %99, align 8
  %101 = or i32 %100, 134217728
  store i32 %101, ptr %99, align 8
  %102 = tail call ptr @gen_probe_stack(ptr noundef nonnull %99) #16
  %103 = tail call ptr @emit_insn(ptr noundef %102) #16
  br label %104

104:                                              ; preds = %72, %95, %43, %12
  ret void
}

declare void @emit_library_call(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #3

declare ptr @simplify_gen_binary(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @emit_jump(ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define dso_local noundef ptr @hard_function_value(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #9 !prof !188 {
  %5 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 88, i32 15), align 8, !tbaa !189
  %6 = icmp eq ptr %1, null
  %7 = select i1 %6, ptr %2, ptr %1, !prof !190
  %8 = trunc i32 %3 to i8
  %9 = tail call ptr %5(ptr noundef %0, ptr noundef %7, i8 noundef zeroext %8) #16, !prof !191
  %10 = load i32, ptr %9, align 8
  %11 = and i32 %10, 16777215
  %12 = icmp eq i32 %11, 65573
  br i1 %12, label %13, label %37, !prof !192

13:                                               ; preds = %4
  %14 = tail call i64 @int_size_in_bytes(ptr noundef %0) #16
  %15 = load i8, ptr getelementptr inbounds ([18 x i8], ptr @class_narrowest_mode, i64 0, i64 2), align 2, !tbaa !75
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %28, label %17

17:                                               ; preds = %13, %24
  %18 = phi i8 [ %26, %24 ], [ %15, %13 ]
  %19 = zext i8 %18 to i64
  %20 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %19
  %21 = load i8, ptr %20, align 1, !tbaa !75
  %22 = zext i8 %21 to i64
  %23 = icmp ugt i64 %14, %22
  br i1 %23, label %24, label %30

24:                                               ; preds = %17
  %25 = getelementptr inbounds [87 x i8], ptr @mode_wider, i64 0, i64 %19
  %26 = load i8, ptr %25, align 1, !tbaa !75
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %28, label %17, !llvm.loop !193

28:                                               ; preds = %24, %13
  %29 = phi i8 [ %15, %13 ], [ %26, %24 ]
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1707, ptr noundef nonnull @.str.1) #16
  br label %30

30:                                               ; preds = %17, %28
  %31 = phi i8 [ %29, %28 ], [ %18, %17 ]
  %32 = zext i8 %31 to i32
  %33 = load i32, ptr %9, align 8
  %34 = shl nuw nsw i32 %32, 16
  %35 = and i32 %33, -16711681
  %36 = or disjoint i32 %35, %34
  store i32 %36, ptr %9, align 8
  br label %37

37:                                               ; preds = %30, %4
  ret ptr %9
}

declare i64 @int_size_in_bytes(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local ptr @hard_libcall_value(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !prof !63 {
  %3 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 88, i32 16), align 8, !tbaa !194
  %4 = tail call ptr %3(i32 noundef %0, ptr noundef %1) #16
  ret ptr %4
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @rtx_to_tree_code(i32 noundef %0) local_unnamed_addr #14 !prof !63 {
  switch i32 %0, label %7 [
    i32 49, label %8
    i32 50, label %2
    i32 52, label %3
    i32 55, label %4
    i32 70, label %5
    i32 71, label %6
  ]

2:                                                ; preds = %1
  br label %8

3:                                                ; preds = %1
  br label %8

4:                                                ; preds = %1
  br label %8

5:                                                ; preds = %1
  br label %8

6:                                                ; preds = %1
  br label %8

7:                                                ; preds = %1
  br label %8

8:                                                ; preds = %1, %7, %6, %5, %4, %3, %2
  %9 = phi i32 [ 188, %7 ], [ 81, %6 ], [ 80, %5 ], [ 75, %4 ], [ 65, %3 ], [ 64, %2 ], [ 63, %1 ]
  ret i32 %9
}

declare void @gt_ggc_mx_rtx_def(ptr noundef) #3

declare void @gt_pch_nx_rtx_def(ptr noundef) #3

declare ptr @expand_expr_real(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @gen_probe_stack(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #15

attributes #0 = { cold inlinehint nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold inlinehint mustprogress nofree nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!62}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61}
!35 = !{ptr @plus_constant, ptr @gen_rtx_CONST_INT, i64 105381}
!36 = !{ptr @plus_constant, ptr @find_constant_term_loc, i64 1}
!37 = !{ptr @plus_constant, ptr @gen_rtx_fmt_ee_stat, i64 104099}
!38 = !{ptr @plus_constant, ptr @gen_rtx_fmt_e_stat, i64 34876}
!39 = !{ptr @expr_size, ptr @tree_expr_size, i64 12988}
!40 = !{ptr @expr_size, ptr @expand_expr_real, i64 12988}
!41 = !{ptr @memory_address_addr_space, ptr @constant_address_p, i64 14340}
!42 = !{ptr @memory_address_addr_space, ptr @force_reg, i64 14340}
!43 = !{ptr @memory_address_addr_space, ptr @break_out_memory_refs, i64 25700}
!44 = !{ptr @memory_address_addr_space, ptr @memory_address_addr_space_p, i64 342202}
!45 = !{ptr @memory_address_addr_space, ptr @mark_reg_pointer, i64 14376}
!46 = !{ptr @memory_address_addr_space, ptr @update_temp_slot_address, i64 14399}
!47 = !{ptr @force_reg, ptr @general_operand, i64 34405}
!48 = !{ptr @force_reg, ptr @gen_reg_rtx, i64 34405}
!49 = !{ptr @force_reg, ptr @emit_move_insn, i64 34405}
!50 = !{ptr @force_reg, ptr @rtx_equal_p, i64 14363}
!51 = !{ptr @force_reg, ptr @exact_log2, i64 10850}
!52 = !{ptr @force_reg, ptr @mark_reg_pointer, i64 27038}
!53 = !{ptr @break_out_memory_refs, ptr @constant_address_p, i64 25693}
!54 = !{ptr @break_out_memory_refs, ptr @force_reg, i64 59}
!55 = !{ptr @break_out_memory_refs, ptr @break_out_memory_refs, i64 51398}
!56 = !{ptr @break_out_memory_refs, ptr @simplify_gen_binary, i64 23}
!57 = !{ptr @validize_mem, ptr @use_anchored_address, i64 39}
!58 = !{ptr @validize_mem, ptr @memory_address_addr_space_p, i64 39}
!59 = !{ptr @copy_to_mode_reg, ptr @gen_reg_rtx, i64 7049}
!60 = !{ptr @copy_to_mode_reg, ptr @general_operand, i64 7049}
!61 = !{ptr @copy_to_mode_reg, ptr @emit_move_insn, i64 7049}
!62 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!63 = !{!"function_entry_count", i64 0}
!64 = !{!65, !65, i64 0}
!65 = !{!"any pointer", !66, i64 0}
!66 = !{!"omnipotent char", !67, i64 0}
!67 = !{!"Simple C/C++ TBAA"}
!68 = !{!69, !65, i64 8}
!69 = !{!"_IO_FILE", !70, i64 0, !65, i64 8, !65, i64 16, !65, i64 24, !65, i64 32, !65, i64 40, !65, i64 48, !65, i64 56, !65, i64 64, !65, i64 72, !65, i64 80, !65, i64 88, !65, i64 96, !65, i64 104, !70, i64 112, !70, i64 116, !71, i64 120, !72, i64 128, !66, i64 130, !66, i64 131, !65, i64 136, !71, i64 144, !65, i64 152, !65, i64 160, !65, i64 168, !65, i64 176, !71, i64 184, !70, i64 192, !66, i64 196}
!70 = !{!"int", !66, i64 0}
!71 = !{!"long", !66, i64 0}
!72 = !{!"short", !66, i64 0}
!73 = !{!69, !65, i64 16}
!74 = !{!"branch_weights", i32 2000, i32 1}
!75 = !{!66, !66, i64 0}
!76 = !{!69, !65, i64 40}
!77 = !{!69, !65, i64 48}
!78 = !{!69, !70, i64 0}
!79 = !{!70, !70, i64 0}
!80 = distinct !{!80, !81, !82}
!81 = !{!"llvm.loop.mustprogress"}
!82 = !{!"llvm.loop.unroll.disable"}
!83 = !{!"function_entry_count", i64 6549642}
!84 = !{!"branch_weights", i32 6549642, i32 0}
!85 = !{!"branch_weights", i32 0, i32 6549642}
!86 = !{!"function_entry_count", i64 651458}
!87 = !{!"branch_weights", i32 546077, i32 105381}
!88 = !{!"branch_weights", i32 69222, i32 1282, i32 0, i32 0, i32 0, i32 34876, i32 0, i32 1}
!89 = !{!71, !71, i64 0}
!90 = !{!"branch_weights", i32 0, i32 1}
!91 = !{!"branch_weights", i32 1, i32 0}
!92 = !{!"branch_weights", i32 0, i32 104099}
!93 = !{!"branch_weights", i32 69223, i32 34876}
!94 = !{!"function_entry_count", i64 12988}
!95 = !{!"branch_weights", i32 0, i32 12988}
!96 = !{!"branch_weights", i32 12988, i32 0}
!97 = !{!"function_entry_count", i64 178271}
!98 = !{!99, !65, i64 1184}
!99 = !{!"gcc_target", !100, i64 0, !102, i64 368, !103, i64 664, !70, i64 744, !65, i64 752, !65, i64 760, !65, i64 768, !65, i64 776, !65, i64 784, !65, i64 792, !65, i64 800, !65, i64 808, !65, i64 816, !65, i64 824, !65, i64 832, !65, i64 840, !65, i64 848, !65, i64 856, !65, i64 864, !65, i64 872, !65, i64 880, !65, i64 888, !65, i64 896, !65, i64 904, !65, i64 912, !65, i64 920, !65, i64 928, !65, i64 936, !65, i64 944, !65, i64 952, !65, i64 960, !65, i64 968, !65, i64 976, !65, i64 984, !65, i64 992, !65, i64 1000, !65, i64 1008, !65, i64 1016, !65, i64 1024, !65, i64 1032, !65, i64 1040, !65, i64 1048, !65, i64 1056, !71, i64 1064, !71, i64 1072, !65, i64 1080, !65, i64 1088, !65, i64 1096, !65, i64 1104, !65, i64 1112, !65, i64 1120, !65, i64 1128, !65, i64 1136, !65, i64 1144, !65, i64 1152, !65, i64 1160, !65, i64 1168, !104, i64 1176, !65, i64 1232, !65, i64 1240, !65, i64 1248, !65, i64 1256, !65, i64 1264, !65, i64 1272, !65, i64 1280, !65, i64 1288, !65, i64 1296, !65, i64 1304, !65, i64 1312, !65, i64 1320, !65, i64 1328, !65, i64 1336, !65, i64 1344, !65, i64 1352, !65, i64 1360, !65, i64 1368, !65, i64 1376, !65, i64 1384, !65, i64 1392, !65, i64 1400, !65, i64 1408, !65, i64 1416, !65, i64 1424, !65, i64 1432, !65, i64 1440, !65, i64 1448, !65, i64 1456, !71, i64 1464, !105, i64 1472, !65, i64 1664, !65, i64 1672, !65, i64 1680, !65, i64 1688, !65, i64 1696, !65, i64 1704, !65, i64 1712, !65, i64 1720, !65, i64 1728, !65, i64 1736, !65, i64 1744, !65, i64 1752, !65, i64 1760, !65, i64 1768, !65, i64 1776, !106, i64 1784, !107, i64 1792, !108, i64 1896, !109, i64 1968, !65, i64 2016, !66, i64 2024, !66, i64 2025, !66, i64 2026, !66, i64 2027, !66, i64 2028, !66, i64 2029, !66, i64 2030, !66, i64 2031, !66, i64 2032, !66, i64 2033, !66, i64 2034, !66, i64 2035}
!100 = !{!"asm_out", !65, i64 0, !65, i64 8, !65, i64 16, !101, i64 24, !101, i64 56, !65, i64 88, !65, i64 96, !65, i64 104, !65, i64 112, !65, i64 120, !65, i64 128, !65, i64 136, !65, i64 144, !65, i64 152, !65, i64 160, !65, i64 168, !65, i64 176, !65, i64 184, !65, i64 192, !65, i64 200, !65, i64 208, !65, i64 216, !65, i64 224, !65, i64 232, !65, i64 240, !65, i64 248, !65, i64 256, !65, i64 264, !65, i64 272, !65, i64 280, !65, i64 288, !65, i64 296, !65, i64 304, !65, i64 312, !65, i64 320, !65, i64 328, !65, i64 336, !65, i64 344, !65, i64 352, !65, i64 360}
!101 = !{!"asm_int_op", !65, i64 0, !65, i64 8, !65, i64 16, !65, i64 24}
!102 = !{!"sched", !65, i64 0, !65, i64 8, !65, i64 16, !65, i64 24, !65, i64 32, !65, i64 40, !65, i64 48, !65, i64 56, !65, i64 64, !65, i64 72, !65, i64 80, !65, i64 88, !65, i64 96, !65, i64 104, !65, i64 112, !65, i64 120, !65, i64 128, !65, i64 136, !65, i64 144, !65, i64 152, !65, i64 160, !65, i64 168, !65, i64 176, !65, i64 184, !65, i64 192, !65, i64 200, !65, i64 208, !65, i64 216, !65, i64 224, !65, i64 232, !65, i64 240, !65, i64 248, !65, i64 256, !65, i64 264, !65, i64 272, !65, i64 280, !65, i64 288}
!103 = !{!"vectorize", !65, i64 0, !65, i64 8, !65, i64 16, !65, i64 24, !65, i64 32, !65, i64 40, !65, i64 48, !65, i64 56, !65, i64 64, !65, i64 72}
!104 = !{!"addr_space", !65, i64 0, !65, i64 8, !65, i64 16, !65, i64 24, !65, i64 32, !65, i64 40, !65, i64 48}
!105 = !{!"calls", !65, i64 0, !65, i64 8, !65, i64 16, !65, i64 24, !65, i64 32, !65, i64 40, !65, i64 48, !65, i64 56, !65, i64 64, !65, i64 72, !65, i64 80, !65, i64 88, !65, i64 96, !65, i64 104, !65, i64 112, !65, i64 120, !65, i64 128, !65, i64 136, !65, i64 144, !65, i64 152, !65, i64 160, !65, i64 168, !65, i64 176, !65, i64 184}
!106 = !{!"c", !65, i64 0}
!107 = !{!"cxx", !65, i64 0, !65, i64 8, !65, i64 16, !65, i64 24, !65, i64 32, !65, i64 40, !65, i64 48, !65, i64 56, !65, i64 64, !65, i64 72, !65, i64 80, !65, i64 88, !65, i64 96}
!108 = !{!"emutls", !65, i64 0, !65, i64 8, !65, i64 16, !65, i64 24, !65, i64 32, !65, i64 40, !65, i64 48, !65, i64 56, !66, i64 64, !66, i64 65}
!109 = !{!"target_option_hooks", !65, i64 0, !65, i64 8, !65, i64 16, !65, i64 24, !65, i64 32, !65, i64 40}
!110 = !{!"VP", i32 0, i64 178271, i64 -6774708585206560366, i64 178271}
!111 = !{!"branch_weights", i32 178271, i32 0}
!112 = !{!"branch_weights", i32 14340, i32 163931}
!113 = !{!"branch_weights", i32 0, i32 14340}
!114 = !{!"branch_weights", i32 163931, i32 0}
!115 = !{!"branch_weights", i32 138231, i32 25700}
!116 = !{!"branch_weights", i32 0, i32 163931}
!117 = !{!99, !65, i64 1208}
!118 = !{!"branch_weights", i32 0, i32 178271}
!119 = !{!"branch_weights", i32 163872, i32 14399}
!120 = !{!"branch_weights", i32 0, i32 14376, i32 23}
!121 = !{!"branch_weights", i32 0, i32 23}
!122 = !{!"function_entry_count", i64 34405}
!123 = !{!"branch_weights", i32 0, i32 34405}
!124 = !{!"branch_weights", i32 14363, i32 20042}
!125 = !{!"branch_weights", i32 14363, i32 0}
!126 = !{!"branch_weights", i32 0, i32 14363}
!127 = !{!"branch_weights", i32 20042, i32 3490, i32 23, i32 10850}
!128 = !{!"branch_weights", i32 3490, i32 0}
!129 = !{!"branch_weights", i32 0, i32 3490}
!130 = !{!"branch_weights", i32 10850, i32 0}
!131 = !{!"branch_weights", i32 0, i32 10850}
!132 = !{!"branch_weights", i32 21399, i32 13006}
!133 = !{!"branch_weights", i32 14032, i32 7367}
!134 = !{!"function_entry_count", i64 77098}
!135 = !{!"explow.c;break_out_memory_refs"}
!136 = !{!"branch_weights", i32 36, i32 77062}
!137 = !{!"branch_weights", i32 25693, i32 51369}
!138 = !{!"branch_weights", i32 0, i32 25693}
!139 = !{!"branch_weights", i32 25670, i32 23}
!140 = !{!"branch_weights", i32 51340, i32 25670, i32 0, i32 29}
!141 = !{!"branch_weights", i32 25699, i32 0}
!142 = !{!"branch_weights", i32 25676, i32 23}
!143 = !{!"function_entry_count", i64 39}
!144 = !{!"branch_weights", i32 39, i32 0}
!145 = !{!"branch_weights", i32 1, i32 38}
!146 = !{!147, !66, i64 32}
!147 = !{!"mem_attrs", !65, i64 0, !65, i64 8, !65, i64 16, !70, i64 24, !70, i64 28, !66, i64 32}
!148 = !{!"branch_weights", i32 0, i32 39}
!149 = !{!"function_entry_count", i64 77750}
!150 = !{!"branch_weights", i32 77750, i32 0}
!151 = !{!99, !65, i64 1080}
!152 = !{!"function_entry_count", i64 7049}
!153 = !{!"branch_weights", i32 0, i32 7049}
!154 = !{!"branch_weights", i32 7049, i32 0}
!155 = !{!"function_entry_count", i64 38}
!156 = !{!"branch_weights", i32 0, i32 38}
!157 = !{!"function_entry_count", i64 81860}
!158 = !{!"branch_weights", i32 81860, i32 0}
!159 = !{!99, !65, i64 1472}
!160 = !{!"VP", i32 0, i64 81860, i64 3191716446052887717, i64 81860}
!161 = !{!"branch_weights", i32 38, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0}
!162 = !{!"function_entry_count", i64 254895}
!163 = !{!"branch_weights", i32 254895, i32 0, i32 0}
!164 = !{!"branch_weights", i32 14084, i32 120698, i32 91414, i32 28699, i32 0, i32 0, i32 0}
!165 = !{!"branch_weights", i32 46, i32 240765}
!166 = !{!"branch_weights", i32 0, i32 240811}
!167 = !{!"branch_weights", i32 32362, i32 208449}
!168 = !{!"branch_weights", i32 190129, i32 64766}
!169 = !{!170, !70, i64 8}
!170 = !{!"rtl_data", !171, i64 0, !172, i64 40, !173, i64 96, !174, i64 112, !176, i64 208, !177, i64 248, !70, i64 312, !65, i64 320, !65, i64 328, !65, i64 336, !65, i64 344, !65, i64 352, !65, i64 360, !65, i64 368, !65, i64 376, !65, i64 384, !65, i64 392, !71, i64 400, !65, i64 408, !65, i64 416, !65, i64 424, !70, i64 432, !70, i64 436, !70, i64 440, !70, i64 444, !70, i64 448, !70, i64 452, !65, i64 456, !66, i64 464, !66, i64 465, !66, i64 466, !66, i64 467, !66, i64 468, !66, i64 469, !66, i64 470, !66, i64 471, !66, i64 472, !66, i64 473, !66, i64 474, !66, i64 475, !66, i64 476, !66, i64 477, !66, i64 478, !66, i64 479, !66, i64 480, !66, i64 481, !66, i64 482, !66, i64 483, !66, i64 484, !66, i64 485}
!171 = !{!"expr_status", !70, i64 0, !70, i64 4, !70, i64 8, !65, i64 16, !65, i64 24, !65, i64 32}
!172 = !{!"emit_status", !70, i64 0, !70, i64 4, !65, i64 8, !65, i64 16, !65, i64 24, !70, i64 32, !70, i64 36, !70, i64 40, !70, i64 44, !65, i64 48}
!173 = !{!"varasm_status", !65, i64 0, !70, i64 8}
!174 = !{!"incoming_args", !70, i64 0, !70, i64 4, !70, i64 8, !65, i64 16, !175, i64 24, !65, i64 88}
!175 = !{!"ix86_args", !70, i64 0, !70, i64 4, !70, i64 8, !70, i64 12, !70, i64 16, !70, i64 20, !70, i64 24, !70, i64 28, !70, i64 32, !70, i64 36, !70, i64 40, !70, i64 44, !70, i64 48, !70, i64 52, !70, i64 56, !70, i64 60}
!176 = !{!"function_subsections", !65, i64 0, !65, i64 8, !65, i64 16, !65, i64 24, !65, i64 32}
!177 = !{!"rtl_eh", !65, i64 0, !65, i64 8, !65, i64 16, !65, i64 24, !65, i64 32, !65, i64 40, !66, i64 48}
!178 = !{!179, !65, i64 64}
!179 = !{!"function", !65, i64 0, !65, i64 8, !65, i64 16, !65, i64 24, !65, i64 32, !65, i64 40, !65, i64 48, !65, i64 56, !65, i64 64, !65, i64 72, !65, i64 80, !65, i64 88, !65, i64 96, !70, i64 104, !70, i64 108, !70, i64 112, !70, i64 116, !70, i64 120, !70, i64 124, !65, i64 128, !70, i64 136, !70, i64 137, !70, i64 138, !70, i64 138, !70, i64 138, !70, i64 138, !70, i64 138, !70, i64 138, !70, i64 138, !70, i64 139, !70, i64 139, !70, i64 139, !70, i64 139, !70, i64 139, !70, i64 139, !70, i64 139}
!180 = !{!170, !70, i64 440}
!181 = !{!182, !65, i64 24}
!182 = !{!"insn_data", !65, i64 0, !66, i64 8, !65, i64 16, !65, i64 24, !66, i64 32, !66, i64 33, !66, i64 34, !66, i64 35}
!183 = !{!184, !65, i64 0}
!184 = !{!"insn_operand_data", !65, i64 0, !65, i64 8, !70, i64 16, !66, i64 18, !66, i64 19}
!185 = !{!170, !66, i64 470}
!186 = distinct !{!186, !81, !82}
!187 = distinct !{!187, !81, !82}
!188 = !{!"function_entry_count", i64 512200}
!189 = !{!99, !65, i64 1592}
!190 = !{!"branch_weights", i32 445404, i32 66796}
!191 = !{!"VP", i32 0, i64 512200, i64 -7243988406964919399, i64 512200}
!192 = !{!"branch_weights", i32 0, i32 512200}
!193 = distinct !{!193, !81, !82}
!194 = !{!99, !65, i64 1600}
