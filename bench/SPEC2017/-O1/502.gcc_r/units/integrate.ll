; ModuleID = 'integrate.c'
source_filename = "integrate.c"
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
%struct.rtl_opt_pass = type { %struct.opt_pass }
%struct.opt_pass = type { i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct._IO_FILE = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, [1 x i8], ptr, i64, ptr, ptr, ptr, ptr, i64, i32, [20 x i8] }
%struct.tree_decl_common = type { %struct.tree_decl_minimal, ptr, i40, i32, ptr, ptr, ptr, ptr, ptr }
%struct.tree_decl_minimal = type { %struct.tree_common, i32, i32, ptr, ptr }
%struct.tree_common = type { %struct.tree_base, ptr, ptr }
%struct.tree_base = type { i64 }
%struct.tree_list = type { %struct.tree_common, ptr, ptr }
%struct.attribute_spec = type { ptr, i32, i32, i8, i8, i8, ptr }
%struct.tree_decl_non_common = type { %struct.tree_decl_with_vis, ptr, ptr, ptr, ptr }
%struct.tree_decl_with_vis = type { %struct.tree_decl_with_rtl, ptr, ptr, ptr, i24 }
%struct.tree_decl_with_rtl = type { %struct.tree_decl_common, ptr }
%struct.tree_block = type { %struct.tree_common, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.VEC_tree_base = type { i32, i32, [1 x ptr] }
%struct.initial_value_struct = type { i32, i32, ptr }
%struct.initial_value_pair = type { ptr, ptr }
%struct.rtx_def = type { i32, %union.u }
%union.u = type { %struct.block_symbol }
%struct.block_symbol = type { [3 x %union.rtunion_def], ptr, i64 }
%union.rtunion_def = type { ptr }
%struct.regstat_n_sets_and_refs_t = type { i32, i32 }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.basic_block_def = type { ptr, ptr, ptr, ptr, [2 x ptr], ptr, ptr, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%union.basic_block_il_dependent = type { ptr }
%struct.control_flow_graph = type { ptr, ptr, ptr, i32, i32, i32, ptr, i32, [2 x i32], [2 x i32], i32, i32 }

@stdout = external local_unnamed_addr global ptr, align 8
@stdin = external local_unnamed_addr global ptr, align 8
@targetm = external local_unnamed_addr global %struct.gcc_target, align 8
@global_trees = external local_unnamed_addr global [131 x ptr], align 16
@x_rtl = external local_unnamed_addr global %struct.rtl_data, align 8
@.str = private unnamed_addr constant [9 x i8] c"initvals\00", align 1
@pass_initial_value_sets = dso_local local_unnamed_addr global %struct.rtl_opt_pass { %struct.opt_pass { i32 1, ptr @.str, ptr null, ptr @emit_initial_value_sets, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1 } }, align 8
@.str.1 = private unnamed_addr constant [12 x i8] c"integrate.c\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@reg_renumber = external local_unnamed_addr global ptr, align 8
@cfun = external local_unnamed_addr global ptr, align 8
@regstat_n_sets_and_refs = external local_unnamed_addr global ptr, align 8

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
  %8 = tail call i32 @__uflow(ptr noundef %0) #12
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
  %8 = tail call i32 @__uflow(ptr noundef %0) #12
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
  %8 = tail call i32 @__uflow(ptr noundef %1) #12
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
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #12
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
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #12
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
  %10 = tail call i32 @__overflow(ptr noundef %2, i32 noundef %9) #12
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
  %4 = tail call i64 @__getdelim(ptr noundef %0, ptr noundef %1, i32 noundef 10, ptr noundef %2) #12
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
  %5 = tail call ptr @__ctype_tolower_loc() #12
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
  %5 = tail call ptr @__ctype_toupper_loc() #12
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
  br i1 %23, label %7, label %24, !llvm.loop !51

24:                                               ; preds = %16, %20, %5
  %25 = phi ptr [ null, %5 ], [ %13, %16 ], [ null, %20 ]
  ret ptr %25
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local double @atof(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !34 {
  %2 = tail call double @strtod(ptr nocapture noundef %0, ptr noundef null)
  ret double %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @function_attribute_inlinable_p(ptr noundef %0) local_unnamed_addr #8 !prof !54 {
  %2 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 13), align 8, !tbaa !55
  %3 = icmp eq ptr %2, null
  br i1 %3, label %44, label %4, !prof !67

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !46
  %7 = icmp eq ptr %6, null
  br i1 %7, label %41, label %12, !prof !68

8:                                                ; preds = %38
  %9 = getelementptr inbounds %struct.tree_common, ptr %14, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !46
  %11 = icmp eq ptr %10, null
  br i1 %11, label %41, label %12, !prof !68, !llvm.loop !69

12:                                               ; preds = %4, %8
  %13 = phi i1 [ %11, %8 ], [ %7, %4 ]
  %14 = phi ptr [ %10, %8 ], [ %6, %4 ]
  %15 = phi i8 [ %40, %8 ], [ undef, %4 ]
  %16 = getelementptr inbounds %struct.tree_list, ptr %14, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !46
  %18 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 13), align 8, !tbaa !55
  %19 = load ptr, ptr %18, align 8, !tbaa !70
  %20 = icmp eq ptr %19, null
  br i1 %20, label %38, label %21

21:                                               ; preds = %12
  %22 = tail call i32 @is_attribute_p(ptr noundef nonnull %19, ptr noundef %17) #12
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %34

24:                                               ; preds = %21, %31
  %25 = phi i64 [ %26, %31 ], [ 0, %21 ]
  %26 = add nuw i64 %25, 1
  %27 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 13), align 8, !tbaa !55
  %28 = getelementptr inbounds %struct.attribute_spec, ptr %27, i64 %26
  %29 = load ptr, ptr %28, align 8, !tbaa !70
  %30 = icmp eq ptr %29, null
  br i1 %30, label %38, label %31, !llvm.loop !72

31:                                               ; preds = %24
  %32 = tail call i32 @is_attribute_p(ptr noundef nonnull %29, ptr noundef %17) #12
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %24, label %34, !llvm.loop !72

34:                                               ; preds = %31, %21
  %35 = phi i1 [ %20, %21 ], [ %30, %31 ]
  %36 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 17), align 8, !tbaa !73
  %37 = tail call zeroext i8 %36(ptr noundef %0) #12
  br label %38

38:                                               ; preds = %24, %12, %34
  %39 = phi i1 [ %35, %34 ], [ %20, %12 ], [ %30, %24 ]
  %40 = phi i8 [ %37, %34 ], [ %15, %12 ], [ %15, %24 ]
  br i1 %39, label %8, label %41

41:                                               ; preds = %38, %8, %4
  %42 = phi i1 [ %7, %4 ], [ %13, %38 ], [ %11, %8 ]
  %43 = phi i8 [ undef, %4 ], [ %40, %8 ], [ %40, %38 ]
  br i1 %42, label %44, label %45, !prof !74

44:                                               ; preds = %41, %1
  br label %45

45:                                               ; preds = %41, %44
  %46 = phi i8 [ %43, %41 ], [ 1, %44 ]
  ret i8 %46
}

declare i32 @is_attribute_p(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nofree nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @set_decl_origin_self(ptr noundef %0) local_unnamed_addr #9 !prof !34 {
  %2 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %27

5:                                                ; preds = %1
  store ptr %0, ptr %2, align 8, !tbaa !46
  %6 = load i64, ptr %0, align 8
  %7 = and i64 %6, 65535
  %8 = icmp eq i64 %7, 29
  br i1 %8, label %9, label %27

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.tree_decl_non_common, ptr %0, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !46
  %12 = icmp eq ptr %11, null
  br i1 %12, label %19, label %13

13:                                               ; preds = %9, %13
  %14 = phi ptr [ %17, %13 ], [ %11, %9 ]
  %15 = getelementptr inbounds %struct.tree_decl_common, ptr %14, i64 0, i32 7
  store ptr %14, ptr %15, align 8, !tbaa !46
  %16 = getelementptr inbounds %struct.tree_common, ptr %14, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !46
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %13, !llvm.loop !75

19:                                               ; preds = %13, %9
  %20 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 5
  %21 = load ptr, ptr %20, align 8, !tbaa !46
  %22 = icmp eq ptr %21, null
  %23 = load ptr, ptr @global_trees, align 16
  %24 = icmp eq ptr %21, %23
  %25 = select i1 %22, i1 true, i1 %24
  br i1 %25, label %27, label %26

26:                                               ; preds = %19
  tail call fastcc void @set_block_origin_self(ptr noundef nonnull %21)
  br label %27

27:                                               ; preds = %19, %26, %5, %1
  ret void
}

; Function Attrs: cold nofree nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @set_block_origin_self(ptr noundef %0) unnamed_addr #9 !prof !34 {
  %2 = getelementptr inbounds %struct.tree_block, ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %23

5:                                                ; preds = %1
  store ptr %0, ptr %2, align 8, !tbaa !46
  %6 = getelementptr inbounds %struct.tree_block, ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !46
  %8 = icmp eq ptr %7, null
  br i1 %8, label %14, label %9

9:                                                ; preds = %5, %9
  %10 = phi ptr [ %12, %9 ], [ %7, %5 ]
  tail call void @set_decl_origin_self(ptr noundef nonnull %10)
  %11 = getelementptr inbounds %struct.tree_common, ptr %10, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !46
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %9, !llvm.loop !76

14:                                               ; preds = %9, %5
  %15 = getelementptr inbounds %struct.tree_block, ptr %0, i64 0, i32 5
  %16 = load ptr, ptr %15, align 8, !tbaa !46
  %17 = icmp eq ptr %16, null
  br i1 %17, label %23, label %18

18:                                               ; preds = %14, %18
  %19 = phi ptr [ %21, %18 ], [ %16, %14 ]
  tail call fastcc void @set_block_origin_self(ptr noundef nonnull %19)
  %20 = getelementptr inbounds %struct.tree_common, ptr %19, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !46
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %18, !llvm.loop !77

23:                                               ; preds = %18, %14, %1
  ret void
}

; Function Attrs: cold nofree nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @set_decl_abstract_flags(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #9 !prof !34 {
  %3 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 2
  %4 = load i64, ptr %3, align 8
  %5 = shl i32 %1, 11
  %6 = and i32 %5, 2048
  %7 = zext nneg i32 %6 to i64
  %8 = and i64 %4, -2049
  %9 = or disjoint i64 %8, %7
  store i64 %9, ptr %3, align 8
  %10 = load i64, ptr %0, align 8
  %11 = and i64 %10, 65535
  %12 = icmp eq i64 %11, 29
  br i1 %12, label %13, label %34

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.tree_decl_non_common, ptr %0, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !46
  %16 = icmp eq ptr %15, null
  br i1 %16, label %26, label %17

17:                                               ; preds = %13, %17
  %18 = phi ptr [ %24, %17 ], [ %15, %13 ]
  %19 = getelementptr inbounds %struct.tree_decl_common, ptr %18, i64 0, i32 2
  %20 = load i64, ptr %19, align 8
  %21 = and i64 %20, -2049
  %22 = or disjoint i64 %21, %7
  store i64 %22, ptr %19, align 8
  %23 = getelementptr inbounds %struct.tree_common, ptr %18, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !46
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %17, !llvm.loop !78

26:                                               ; preds = %17, %13
  %27 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 5
  %28 = load ptr, ptr %27, align 8, !tbaa !46
  %29 = icmp eq ptr %28, null
  %30 = load ptr, ptr @global_trees, align 16
  %31 = icmp eq ptr %28, %30
  %32 = select i1 %29, i1 true, i1 %31
  br i1 %32, label %34, label %33

33:                                               ; preds = %26
  tail call fastcc void @set_block_abstract_flags(ptr noundef nonnull %28, i32 noundef %1)
  br label %34

34:                                               ; preds = %26, %33, %2
  ret void
}

; Function Attrs: cold nofree nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @set_block_abstract_flags(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #9 !prof !34 {
  %3 = getelementptr inbounds %struct.tree_block, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 8
  %5 = and i32 %1, 1
  %6 = and i32 %4, -2
  %7 = or disjoint i32 %6, %5
  store i32 %7, ptr %3, align 8
  %8 = getelementptr inbounds %struct.tree_block, ptr %0, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !46
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %13, %2
  %12 = getelementptr inbounds %struct.tree_block, ptr %0, i64 0, i32 4
  br label %18

13:                                               ; preds = %2, %13
  %14 = phi ptr [ %16, %13 ], [ %9, %2 ]
  tail call void @set_decl_abstract_flags(ptr noundef nonnull %14, i32 noundef %1)
  %15 = getelementptr inbounds %struct.tree_common, ptr %14, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !46
  %17 = icmp eq ptr %16, null
  br i1 %17, label %11, label %13, !llvm.loop !79

18:                                               ; preds = %11, %38
  %19 = phi i64 [ 0, %11 ], [ %39, %38 ]
  %20 = load ptr, ptr %12, align 8, !tbaa !46
  %21 = icmp eq ptr %20, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %18
  %23 = load i32, ptr %20, align 8, !tbaa !80
  br label %24

24:                                               ; preds = %18, %22
  %25 = phi i32 [ %23, %22 ], [ 0, %18 ]
  %26 = zext i32 %25 to i64
  %27 = icmp ult i64 %19, %26
  br i1 %27, label %28, label %40

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.VEC_tree_base, ptr %20, i64 0, i32 2, i64 %19
  %30 = load ptr, ptr %29, align 8, !tbaa !35
  %31 = load i64, ptr %30, align 8
  %32 = and i64 %31, 65535
  %33 = and i64 %31, 67174399
  %34 = icmp eq i64 %33, 32
  %35 = icmp eq i64 %32, 34
  %36 = or i1 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %28
  tail call void @set_decl_abstract_flags(ptr noundef nonnull %30, i32 noundef %1)
  br label %38

38:                                               ; preds = %28, %37
  %39 = add nuw nsw i64 %19, 1
  br label %18, !llvm.loop !82

40:                                               ; preds = %24
  %41 = getelementptr inbounds %struct.tree_block, ptr %0, i64 0, i32 5
  %42 = load ptr, ptr %41, align 8, !tbaa !46
  %43 = icmp eq ptr %42, null
  br i1 %43, label %49, label %44

44:                                               ; preds = %40, %44
  %45 = phi ptr [ %47, %44 ], [ %42, %40 ]
  tail call fastcc void @set_block_abstract_flags(ptr noundef nonnull %45, i32 noundef %1)
  %46 = getelementptr inbounds %struct.tree_common, ptr %45, i64 0, i32 1
  %47 = load ptr, ptr %46, align 8, !tbaa !46
  %48 = icmp eq ptr %47, null
  br i1 %48, label %49, label %44, !llvm.loop !83

49:                                               ; preds = %44, %40
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local ptr @get_hard_reg_initial_reg(ptr noundef %0) local_unnamed_addr #10 !prof !34 {
  %2 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 8), align 8, !tbaa !84
  %3 = icmp eq ptr %2, null
  br i1 %3, label %26, label %4

4:                                                ; preds = %1
  %5 = load i32, ptr %2, align 8, !tbaa !93
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %26

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.initial_value_struct, ptr %2, i64 0, i32 2
  br label %14

9:                                                ; preds = %14
  %10 = add nuw nsw i64 %15, 1
  %11 = load i32, ptr %2, align 8, !tbaa !93
  %12 = sext i32 %11 to i64
  %13 = icmp slt i64 %10, %12
  br i1 %13, label %14, label %26, !llvm.loop !95

14:                                               ; preds = %7, %9
  %15 = phi i64 [ 0, %7 ], [ %10, %9 ]
  %16 = load ptr, ptr %8, align 8, !tbaa !96
  %17 = getelementptr inbounds %struct.initial_value_pair, ptr %16, i64 %15, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !97
  %19 = tail call i32 @rtx_equal_p(ptr noundef %18, ptr noundef %0) #12
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %9, label %21

21:                                               ; preds = %14
  %22 = getelementptr inbounds %struct.initial_value_struct, ptr %2, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !96
  %24 = getelementptr inbounds %struct.initial_value_pair, ptr %23, i64 %15
  %25 = load ptr, ptr %24, align 8, !tbaa !99
  br label %26

26:                                               ; preds = %9, %4, %1, %21
  %27 = phi ptr [ %25, %21 ], [ null, %1 ], [ null, %4 ], [ null, %9 ]
  ret ptr %27
}

declare i32 @rtx_equal_p(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local ptr @get_hard_reg_initial_val(i32 noundef %0, i32 noundef %1) local_unnamed_addr #10 !prof !34 {
  %3 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 8), align 8, !tbaa !84
  %4 = icmp eq ptr %3, null
  br i1 %4, label %30, label %5

5:                                                ; preds = %2
  %6 = load i32, ptr %3, align 8, !tbaa !93
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %8, label %30

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.initial_value_struct, ptr %3, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !96
  %11 = zext nneg i32 %6 to i64
  br label %12

12:                                               ; preds = %8, %27
  %13 = phi i64 [ 0, %8 ], [ %28, %27 ]
  %14 = getelementptr inbounds %struct.initial_value_pair, ptr %10, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !99
  %16 = load i32, ptr %15, align 8
  %17 = lshr i32 %16, 16
  %18 = and i32 %17, 255
  %19 = icmp eq i32 %18, %0
  br i1 %19, label %20, label %27

20:                                               ; preds = %12
  %21 = getelementptr inbounds %struct.rtx_def, ptr %15, i64 0, i32 1
  %22 = load i32, ptr %21, align 8, !tbaa !46
  %23 = icmp eq i32 %22, %1
  br i1 %23, label %24, label %27

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.initial_value_pair, ptr %10, i64 %13, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !97
  br label %30

27:                                               ; preds = %20, %12
  %28 = add nuw nsw i64 %13, 1
  %29 = icmp eq i64 %28, %11
  br i1 %29, label %30, label %12, !llvm.loop !100

30:                                               ; preds = %27, %5, %2, %24
  %31 = phi ptr [ %26, %24 ], [ null, %2 ], [ null, %5 ], [ null, %27 ]
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %65

33:                                               ; preds = %30
  br i1 %4, label %34, label %39

34:                                               ; preds = %33
  %35 = tail call ptr @ggc_alloc_stat(i64 noundef 16) #12
  store i32 0, ptr %35, align 8, !tbaa !93
  %36 = getelementptr inbounds %struct.initial_value_struct, ptr %35, i64 0, i32 1
  store i32 5, ptr %36, align 4, !tbaa !101
  %37 = tail call ptr @ggc_alloc_stat(i64 noundef 80) #12
  %38 = getelementptr inbounds %struct.initial_value_struct, ptr %35, i64 0, i32 2
  store ptr %37, ptr %38, align 8, !tbaa !96
  store ptr %35, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 8), align 8, !tbaa !84
  br label %39

39:                                               ; preds = %34, %33
  %40 = phi ptr [ %35, %34 ], [ %3, %33 ]
  %41 = load i32, ptr %40, align 8, !tbaa !93
  %42 = getelementptr inbounds %struct.initial_value_struct, ptr %40, i64 0, i32 1
  %43 = load i32, ptr %42, align 4, !tbaa !101
  %44 = icmp slt i32 %41, %43
  br i1 %44, label %52, label %45

45:                                               ; preds = %39
  %46 = add nsw i32 %43, 5
  store i32 %46, ptr %42, align 4, !tbaa !101
  %47 = getelementptr inbounds %struct.initial_value_struct, ptr %40, i64 0, i32 2
  %48 = load ptr, ptr %47, align 8, !tbaa !96
  %49 = sext i32 %46 to i64
  %50 = shl nsw i64 %49, 4
  %51 = tail call ptr @ggc_realloc_stat(ptr noundef %48, i64 noundef %50) #12
  store ptr %51, ptr %47, align 8, !tbaa !96
  br label %52

52:                                               ; preds = %45, %39
  %53 = tail call ptr @gen_rtx_REG(i32 noundef %0, i32 noundef %1) #12
  %54 = getelementptr inbounds %struct.initial_value_struct, ptr %40, i64 0, i32 2
  %55 = load ptr, ptr %54, align 8, !tbaa !96
  %56 = load i32, ptr %40, align 8, !tbaa !93
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.initial_value_pair, ptr %55, i64 %57
  store ptr %53, ptr %58, align 8, !tbaa !99
  %59 = tail call ptr @gen_reg_rtx(i32 noundef %0) #12
  %60 = load ptr, ptr %54, align 8, !tbaa !96
  %61 = load i32, ptr %40, align 8, !tbaa !93
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.initial_value_pair, ptr %60, i64 %62, i32 1
  store ptr %59, ptr %63, align 8, !tbaa !97
  %64 = add nsw i32 %61, 1
  store i32 %64, ptr %40, align 8, !tbaa !93
  br label %65

65:                                               ; preds = %30, %52
  %66 = phi ptr [ %59, %52 ], [ %31, %30 ]
  ret ptr %66
}

; Function Attrs: cold nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @has_hard_reg_initial_val(i32 noundef %0, i32 noundef %1) local_unnamed_addr #11 !prof !34 {
  %3 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 8), align 8, !tbaa !84
  %4 = icmp eq ptr %3, null
  br i1 %4, label %30, label %5

5:                                                ; preds = %2
  %6 = load i32, ptr %3, align 8, !tbaa !93
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %8, label %30

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.initial_value_struct, ptr %3, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !96
  %11 = zext nneg i32 %6 to i64
  br label %12

12:                                               ; preds = %8, %27
  %13 = phi i64 [ 0, %8 ], [ %28, %27 ]
  %14 = getelementptr inbounds %struct.initial_value_pair, ptr %10, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !99
  %16 = load i32, ptr %15, align 8
  %17 = lshr i32 %16, 16
  %18 = and i32 %17, 255
  %19 = icmp eq i32 %18, %0
  br i1 %19, label %20, label %27

20:                                               ; preds = %12
  %21 = getelementptr inbounds %struct.rtx_def, ptr %15, i64 0, i32 1
  %22 = load i32, ptr %21, align 8, !tbaa !46
  %23 = icmp eq i32 %22, %1
  br i1 %23, label %24, label %27

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.initial_value_pair, ptr %10, i64 %13, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !97
  br label %30

27:                                               ; preds = %12, %20
  %28 = add nuw nsw i64 %13, 1
  %29 = icmp eq i64 %28, %11
  br i1 %29, label %30, label %12, !llvm.loop !100

30:                                               ; preds = %27, %5, %2, %24
  %31 = phi ptr [ %26, %24 ], [ null, %2 ], [ null, %5 ], [ null, %27 ]
  ret ptr %31
}

declare ptr @ggc_alloc_stat(i64 noundef) local_unnamed_addr #3

declare ptr @ggc_realloc_stat(ptr noundef, i64 noundef) local_unnamed_addr #3

declare ptr @gen_rtx_REG(i32 noundef, i32 noundef) local_unnamed_addr #3

declare ptr @gen_reg_rtx(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @emit_initial_value_sets() #8 !prof !102 {
  %1 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 8), align 8, !tbaa !84
  %2 = icmp eq ptr %1, null
  br i1 %2, label %22, label %3, !prof !103

3:                                                ; preds = %0
  tail call void @start_sequence() #12
  %4 = load i32, ptr %1, align 8, !tbaa !93
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %6, label %20

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.initial_value_struct, ptr %1, i64 0, i32 2
  br label %8

8:                                                ; preds = %6, %8
  %9 = phi i64 [ 0, %6 ], [ %16, %8 ]
  %10 = load ptr, ptr %7, align 8, !tbaa !96
  %11 = getelementptr inbounds %struct.initial_value_pair, ptr %10, i64 %9
  %12 = getelementptr inbounds %struct.initial_value_pair, ptr %10, i64 %9, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !97
  %14 = load ptr, ptr %11, align 8, !tbaa !99
  %15 = tail call ptr @emit_move_insn(ptr noundef %13, ptr noundef %14) #12
  %16 = add nuw nsw i64 %9, 1
  %17 = load i32, ptr %1, align 8, !tbaa !93
  %18 = sext i32 %17 to i64
  %19 = icmp slt i64 %16, %18
  br i1 %19, label %8, label %20, !llvm.loop !104

20:                                               ; preds = %8, %3
  %21 = tail call ptr @get_insns() #12
  tail call void @end_sequence() #12
  tail call void @emit_insn_at_entry(ptr noundef %21) #12
  br label %22

22:                                               ; preds = %0, %20
  ret i32 0
}

declare void @start_sequence() local_unnamed_addr #3

declare ptr @emit_move_insn(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @get_insns() local_unnamed_addr #3

declare void @end_sequence() local_unnamed_addr #3

declare void @emit_insn_at_entry(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @allocate_initial_values(ptr nocapture noundef writeonly %0) local_unnamed_addr #8 !prof !102 {
  %2 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 62), align 8, !tbaa !105
  %3 = icmp eq ptr %2, null
  br i1 %3, label %96, label %4, !prof !103

4:                                                ; preds = %1
  %5 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 8), align 8, !tbaa !84
  %6 = icmp eq ptr %5, null
  br i1 %6, label %96, label %7

7:                                                ; preds = %4
  %8 = load i32, ptr %5, align 8, !tbaa !93
  %9 = icmp sgt i32 %8, 0
  br i1 %9, label %10, label %96

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.initial_value_struct, ptr %5, i64 0, i32 2
  br label %12

12:                                               ; preds = %10, %91
  %13 = phi i64 [ 0, %10 ], [ %92, %91 ]
  %14 = load ptr, ptr %11, align 8, !tbaa !96
  %15 = getelementptr inbounds %struct.initial_value_pair, ptr %14, i64 %13, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !97
  %17 = getelementptr inbounds %struct.rtx_def, ptr %16, i64 0, i32 1
  %18 = load i32, ptr %17, align 8, !tbaa !46
  %19 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 62), align 8, !tbaa !105
  %20 = getelementptr inbounds %struct.initial_value_pair, ptr %14, i64 %13
  %21 = load ptr, ptr %20, align 8, !tbaa !99
  %22 = tail call ptr %19(ptr noundef %21) #12
  %23 = icmp eq ptr %22, null
  br i1 %23, label %91, label %24

24:                                               ; preds = %12
  %25 = load ptr, ptr %11, align 8, !tbaa !96
  %26 = getelementptr inbounds %struct.initial_value_pair, ptr %25, i64 %13, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !97
  %28 = getelementptr inbounds %struct.rtx_def, ptr %27, i64 0, i32 1
  %29 = load i32, ptr %28, align 8, !tbaa !46
  %30 = load ptr, ptr @regstat_n_sets_and_refs, align 8, !tbaa !35
  %31 = sext i32 %29 to i64
  %32 = getelementptr inbounds %struct.regstat_n_sets_and_refs_t, ptr %30, i64 %31
  %33 = load i32, ptr %32, align 4, !tbaa !106
  %34 = icmp slt i32 %33, 2
  br i1 %34, label %35, label %91

35:                                               ; preds = %24
  %36 = load i32, ptr %22, align 8
  %37 = trunc i32 %36 to i16
  switch i16 %37, label %41 [
    i16 43, label %38
    i16 37, label %42
  ]

38:                                               ; preds = %35
  %39 = sext i32 %18 to i64
  %40 = getelementptr inbounds ptr, ptr %0, i64 %39
  store ptr %22, ptr %40, align 8, !tbaa !35
  br label %91

41:                                               ; preds = %35
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 356, ptr noundef nonnull @.str.2) #12
  br label %42

42:                                               ; preds = %35, %41
  %43 = getelementptr inbounds %struct.rtx_def, ptr %22, i64 0, i32 1
  %44 = load i32, ptr %43, align 8, !tbaa !46
  %45 = trunc i32 %44 to i16
  %46 = load ptr, ptr @reg_renumber, align 8, !tbaa !35
  %47 = sext i32 %18 to i64
  %48 = getelementptr inbounds i16, ptr %46, i64 %47
  store i16 %45, ptr %48, align 2, !tbaa !108
  %49 = load ptr, ptr %11, align 8, !tbaa !96
  %50 = getelementptr inbounds %struct.initial_value_pair, ptr %49, i64 %13, i32 1
  %51 = load ptr, ptr %50, align 8, !tbaa !97
  %52 = getelementptr inbounds %struct.rtx_def, ptr %51, i64 0, i32 1
  %53 = load i32, ptr %52, align 8, !tbaa !46
  tail call void @df_ref_change_reg_with_loc(i32 noundef %53, i32 noundef %44, ptr noundef %51) #12
  %54 = load ptr, ptr %11, align 8, !tbaa !96
  %55 = getelementptr inbounds %struct.initial_value_pair, ptr %54, i64 %13, i32 1
  %56 = load ptr, ptr %55, align 8, !tbaa !97
  %57 = getelementptr inbounds %struct.rtx_def, ptr %56, i64 0, i32 1
  store i32 %44, ptr %57, align 8, !tbaa !46
  %58 = load ptr, ptr @cfun, align 8, !tbaa !35
  %59 = getelementptr inbounds %struct.function, ptr %58, i64 0, i32 1
  %60 = load ptr, ptr %59, align 8, !tbaa !109
  %61 = load ptr, ptr %60, align 8, !tbaa !111
  %62 = getelementptr inbounds %struct.basic_block_def, ptr %61, i64 0, i32 6
  %63 = load ptr, ptr %62, align 8, !tbaa !113
  %64 = getelementptr inbounds %struct.control_flow_graph, ptr %60, i64 0, i32 1
  %65 = load ptr, ptr %64, align 8, !tbaa !115
  %66 = icmp eq ptr %63, %65
  br i1 %66, label %91, label %67

67:                                               ; preds = %42, %82
  %68 = phi ptr [ %84, %82 ], [ %63, %42 ]
  %69 = tail call ptr @df_get_live_in(ptr noundef %68) #12
  %70 = tail call i32 @bitmap_bit_p(ptr noundef %69, i32 noundef %18) #12
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %75, label %72

72:                                               ; preds = %67
  %73 = tail call ptr @df_get_live_in(ptr noundef %68) #12
  %74 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %73, i32 noundef %44) #12
  br label %75

75:                                               ; preds = %72, %67
  %76 = tail call ptr @df_get_live_out(ptr noundef %68) #12
  %77 = tail call i32 @bitmap_bit_p(ptr noundef %76, i32 noundef %18) #12
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %82, label %79

79:                                               ; preds = %75
  %80 = tail call ptr @df_get_live_out(ptr noundef %68) #12
  %81 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %80, i32 noundef %44) #12
  br label %82

82:                                               ; preds = %75, %79
  %83 = getelementptr inbounds %struct.basic_block_def, ptr %68, i64 0, i32 6
  %84 = load ptr, ptr %83, align 8, !tbaa !113
  %85 = load ptr, ptr @cfun, align 8, !tbaa !35
  %86 = getelementptr inbounds %struct.function, ptr %85, i64 0, i32 1
  %87 = load ptr, ptr %86, align 8, !tbaa !109
  %88 = getelementptr inbounds %struct.control_flow_graph, ptr %87, i64 0, i32 1
  %89 = load ptr, ptr %88, align 8, !tbaa !115
  %90 = icmp eq ptr %84, %89
  br i1 %90, label %91, label %67, !llvm.loop !116

91:                                               ; preds = %82, %42, %38, %24, %12
  %92 = add nuw nsw i64 %13, 1
  %93 = load i32, ptr %5, align 8, !tbaa !93
  %94 = sext i32 %93 to i64
  %95 = icmp slt i64 %92, %94
  br i1 %95, label %12, label %96, !llvm.loop !117

96:                                               ; preds = %91, %7, %4, %1
  ret void
}

declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @df_ref_change_reg_with_loc(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare i32 @bitmap_bit_p(ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @df_get_live_in(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @bitmap_set_bit(ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @df_get_live_out(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_ggc_mx_initial_value_struct(ptr noundef %0) local_unnamed_addr #10 !prof !34 {
  %2 = icmp ult ptr %0, inttoptr (i64 2 to ptr)
  br i1 %2, label %36, label %3

3:                                                ; preds = %1
  %4 = tail call i32 @ggc_set_mark(ptr noundef nonnull %0) #12
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %36

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.initial_value_struct, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !96
  %9 = icmp eq ptr %8, null
  br i1 %9, label %36, label %10

10:                                               ; preds = %6
  %11 = load i32, ptr %0, align 8, !tbaa !93
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %31, label %13

13:                                               ; preds = %10, %26
  %14 = phi i64 [ %27, %26 ], [ 0, %10 ]
  %15 = load ptr, ptr %7, align 8, !tbaa !96
  %16 = getelementptr inbounds %struct.initial_value_pair, ptr %15, i64 %14
  %17 = load ptr, ptr %16, align 8, !tbaa !99
  %18 = icmp eq ptr %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %13
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %17) #12
  br label %20

20:                                               ; preds = %13, %19
  %21 = load ptr, ptr %7, align 8, !tbaa !96
  %22 = getelementptr inbounds %struct.initial_value_pair, ptr %21, i64 %14, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !97
  %24 = icmp eq ptr %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %20
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %23) #12
  br label %26

26:                                               ; preds = %20, %25
  %27 = add i64 %14, 1
  %28 = load i32, ptr %0, align 8, !tbaa !93
  %29 = sext i32 %28 to i64
  %30 = icmp eq i64 %27, %29
  br i1 %30, label %31, label %13, !llvm.loop !118

31:                                               ; preds = %26, %10
  %32 = load ptr, ptr %7, align 8, !tbaa !96
  %33 = icmp ult ptr %32, inttoptr (i64 2 to ptr)
  br i1 %33, label %36, label %34

34:                                               ; preds = %31
  %35 = tail call i32 @ggc_set_mark(ptr noundef nonnull %32) #12
  br label %36

36:                                               ; preds = %31, %1, %34, %6, %3
  ret void
}

declare i32 @ggc_set_mark(ptr noundef) local_unnamed_addr #3

declare void @gt_ggc_mx_rtx_def(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_pch_nx_initial_value_struct(ptr noundef %0) local_unnamed_addr #10 !prof !34 {
  %2 = tail call i32 @gt_pch_note_object(ptr noundef %0, ptr noundef %0, ptr noundef nonnull @gt_pch_p_20initial_value_struct, i32 noundef 121) #12
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %32, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.initial_value_struct, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !96
  %7 = icmp eq ptr %6, null
  br i1 %7, label %32, label %8

8:                                                ; preds = %4
  %9 = load i32, ptr %0, align 8, !tbaa !93
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %29, label %11

11:                                               ; preds = %8, %24
  %12 = phi i64 [ %25, %24 ], [ 0, %8 ]
  %13 = load ptr, ptr %5, align 8, !tbaa !96
  %14 = getelementptr inbounds %struct.initial_value_pair, ptr %13, i64 %12
  %15 = load ptr, ptr %14, align 8, !tbaa !99
  %16 = icmp eq ptr %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %11
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %15) #12
  br label %18

18:                                               ; preds = %11, %17
  %19 = load ptr, ptr %5, align 8, !tbaa !96
  %20 = getelementptr inbounds %struct.initial_value_pair, ptr %19, i64 %12, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !97
  %22 = icmp eq ptr %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %18
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %21) #12
  br label %24

24:                                               ; preds = %18, %23
  %25 = add i64 %12, 1
  %26 = load i32, ptr %0, align 8, !tbaa !93
  %27 = sext i32 %26 to i64
  %28 = icmp eq i64 %25, %27
  br i1 %28, label %29, label %11, !llvm.loop !119

29:                                               ; preds = %24, %8
  %30 = load ptr, ptr %5, align 8, !tbaa !96
  %31 = tail call i32 @gt_pch_note_object(ptr noundef %30, ptr noundef nonnull %0, ptr noundef nonnull @gt_pch_p_20initial_value_struct, i32 noundef 217) #12
  br label %32

32:                                               ; preds = %4, %29, %1
  ret void
}

declare i32 @gt_pch_note_object(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_pch_p_20initial_value_struct(ptr noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #10 !prof !34 {
  %5 = getelementptr inbounds %struct.initial_value_struct, ptr %1, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !96
  %7 = icmp eq ptr %6, null
  br i1 %7, label %30, label %8

8:                                                ; preds = %4
  %9 = load i32, ptr %1, align 8, !tbaa !93
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %27, label %11

11:                                               ; preds = %8, %22
  %12 = phi i64 [ %23, %22 ], [ 0, %8 ]
  %13 = load ptr, ptr %5, align 8, !tbaa !96
  %14 = icmp eq ptr %13, %0
  br i1 %14, label %15, label %17

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.initial_value_pair, ptr %13, i64 %12
  tail call void %2(ptr noundef %16, ptr noundef %3) #12
  br label %17

17:                                               ; preds = %15, %11
  %18 = load ptr, ptr %5, align 8, !tbaa !96
  %19 = icmp eq ptr %18, %0
  br i1 %19, label %20, label %22

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.initial_value_pair, ptr %18, i64 %12, i32 1
  tail call void %2(ptr noundef nonnull %21, ptr noundef %3) #12
  br label %22

22:                                               ; preds = %17, %20
  %23 = add i64 %12, 1
  %24 = load i32, ptr %1, align 8, !tbaa !93
  %25 = sext i32 %24 to i64
  %26 = icmp eq i64 %23, %25
  br i1 %26, label %27, label %11, !llvm.loop !120

27:                                               ; preds = %22, %8
  %28 = icmp eq ptr %1, %0
  br i1 %28, label %29, label %30

29:                                               ; preds = %27
  tail call void %2(ptr noundef nonnull %5, ptr noundef %3) #12
  br label %30

30:                                               ; preds = %27, %29, %4
  ret void
}

declare void @gt_pch_nx_rtx_def(ptr noundef) local_unnamed_addr #3

attributes #0 = { cold inlinehint nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold inlinehint mustprogress nofree nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { cold nofree nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { cold nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nounwind }

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
!54 = !{!"function_entry_count", i64 119}
!55 = !{!56, !36, i64 824}
!56 = !{!"gcc_target", !57, i64 0, !59, i64 368, !60, i64 664, !41, i64 744, !36, i64 752, !36, i64 760, !36, i64 768, !36, i64 776, !36, i64 784, !36, i64 792, !36, i64 800, !36, i64 808, !36, i64 816, !36, i64 824, !36, i64 832, !36, i64 840, !36, i64 848, !36, i64 856, !36, i64 864, !36, i64 872, !36, i64 880, !36, i64 888, !36, i64 896, !36, i64 904, !36, i64 912, !36, i64 920, !36, i64 928, !36, i64 936, !36, i64 944, !36, i64 952, !36, i64 960, !36, i64 968, !36, i64 976, !36, i64 984, !36, i64 992, !36, i64 1000, !36, i64 1008, !36, i64 1016, !36, i64 1024, !36, i64 1032, !36, i64 1040, !36, i64 1048, !36, i64 1056, !42, i64 1064, !42, i64 1072, !36, i64 1080, !36, i64 1088, !36, i64 1096, !36, i64 1104, !36, i64 1112, !36, i64 1120, !36, i64 1128, !36, i64 1136, !36, i64 1144, !36, i64 1152, !36, i64 1160, !36, i64 1168, !61, i64 1176, !36, i64 1232, !36, i64 1240, !36, i64 1248, !36, i64 1256, !36, i64 1264, !36, i64 1272, !36, i64 1280, !36, i64 1288, !36, i64 1296, !36, i64 1304, !36, i64 1312, !36, i64 1320, !36, i64 1328, !36, i64 1336, !36, i64 1344, !36, i64 1352, !36, i64 1360, !36, i64 1368, !36, i64 1376, !36, i64 1384, !36, i64 1392, !36, i64 1400, !36, i64 1408, !36, i64 1416, !36, i64 1424, !36, i64 1432, !36, i64 1440, !36, i64 1448, !36, i64 1456, !42, i64 1464, !62, i64 1472, !36, i64 1664, !36, i64 1672, !36, i64 1680, !36, i64 1688, !36, i64 1696, !36, i64 1704, !36, i64 1712, !36, i64 1720, !36, i64 1728, !36, i64 1736, !36, i64 1744, !36, i64 1752, !36, i64 1760, !36, i64 1768, !36, i64 1776, !63, i64 1784, !64, i64 1792, !65, i64 1896, !66, i64 1968, !36, i64 2016, !37, i64 2024, !37, i64 2025, !37, i64 2026, !37, i64 2027, !37, i64 2028, !37, i64 2029, !37, i64 2030, !37, i64 2031, !37, i64 2032, !37, i64 2033, !37, i64 2034, !37, i64 2035}
!57 = !{!"asm_out", !36, i64 0, !36, i64 8, !36, i64 16, !58, i64 24, !58, i64 56, !36, i64 88, !36, i64 96, !36, i64 104, !36, i64 112, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !36, i64 152, !36, i64 160, !36, i64 168, !36, i64 176, !36, i64 184, !36, i64 192, !36, i64 200, !36, i64 208, !36, i64 216, !36, i64 224, !36, i64 232, !36, i64 240, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !36, i64 280, !36, i64 288, !36, i64 296, !36, i64 304, !36, i64 312, !36, i64 320, !36, i64 328, !36, i64 336, !36, i64 344, !36, i64 352, !36, i64 360}
!58 = !{!"asm_int_op", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24}
!59 = !{!"sched", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !36, i64 112, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !36, i64 152, !36, i64 160, !36, i64 168, !36, i64 176, !36, i64 184, !36, i64 192, !36, i64 200, !36, i64 208, !36, i64 216, !36, i64 224, !36, i64 232, !36, i64 240, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !36, i64 280, !36, i64 288}
!60 = !{!"vectorize", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72}
!61 = !{!"addr_space", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48}
!62 = !{!"calls", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !36, i64 112, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !36, i64 152, !36, i64 160, !36, i64 168, !36, i64 176, !36, i64 184}
!63 = !{!"c", !36, i64 0}
!64 = !{!"cxx", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !36, i64 96}
!65 = !{!"emutls", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !37, i64 64, !37, i64 65}
!66 = !{!"target_option_hooks", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40}
!67 = !{!"branch_weights", i32 0, i32 119}
!68 = !{!"branch_weights", i32 1, i32 0}
!69 = distinct !{!69, !52, !53}
!70 = !{!71, !36, i64 0}
!71 = !{!"attribute_spec", !36, i64 0, !41, i64 8, !41, i64 12, !37, i64 16, !37, i64 17, !37, i64 18, !36, i64 24}
!72 = distinct !{!72, !52, !53}
!73 = !{!56, !36, i64 856}
!74 = !{!"branch_weights", i32 119, i32 0}
!75 = distinct !{!75, !52, !53}
!76 = distinct !{!76, !52, !53}
!77 = distinct !{!77, !52, !53}
!78 = distinct !{!78, !52, !53}
!79 = distinct !{!79, !52, !53}
!80 = !{!81, !41, i64 0}
!81 = !{!"VEC_tree_base", !41, i64 0, !41, i64 4, !37, i64 8}
!82 = distinct !{!82, !52, !53}
!83 = distinct !{!83, !52, !53}
!84 = !{!85, !36, i64 328}
!85 = !{!"rtl_data", !86, i64 0, !87, i64 40, !88, i64 96, !89, i64 112, !91, i64 208, !92, i64 248, !41, i64 312, !36, i64 320, !36, i64 328, !36, i64 336, !36, i64 344, !36, i64 352, !36, i64 360, !36, i64 368, !36, i64 376, !36, i64 384, !36, i64 392, !42, i64 400, !36, i64 408, !36, i64 416, !36, i64 424, !41, i64 432, !41, i64 436, !41, i64 440, !41, i64 444, !41, i64 448, !41, i64 452, !36, i64 456, !37, i64 464, !37, i64 465, !37, i64 466, !37, i64 467, !37, i64 468, !37, i64 469, !37, i64 470, !37, i64 471, !37, i64 472, !37, i64 473, !37, i64 474, !37, i64 475, !37, i64 476, !37, i64 477, !37, i64 478, !37, i64 479, !37, i64 480, !37, i64 481, !37, i64 482, !37, i64 483, !37, i64 484, !37, i64 485}
!86 = !{!"expr_status", !41, i64 0, !41, i64 4, !41, i64 8, !36, i64 16, !36, i64 24, !36, i64 32}
!87 = !{!"emit_status", !41, i64 0, !41, i64 4, !36, i64 8, !36, i64 16, !36, i64 24, !41, i64 32, !41, i64 36, !41, i64 40, !41, i64 44, !36, i64 48}
!88 = !{!"varasm_status", !36, i64 0, !41, i64 8}
!89 = !{!"incoming_args", !41, i64 0, !41, i64 4, !41, i64 8, !36, i64 16, !90, i64 24, !36, i64 88}
!90 = !{!"ix86_args", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !41, i64 24, !41, i64 28, !41, i64 32, !41, i64 36, !41, i64 40, !41, i64 44, !41, i64 48, !41, i64 52, !41, i64 56, !41, i64 60}
!91 = !{!"function_subsections", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32}
!92 = !{!"rtl_eh", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !37, i64 48}
!93 = !{!94, !41, i64 0}
!94 = !{!"initial_value_struct", !41, i64 0, !41, i64 4, !36, i64 8}
!95 = distinct !{!95, !52, !53}
!96 = !{!94, !36, i64 8}
!97 = !{!98, !36, i64 8}
!98 = !{!"initial_value_pair", !36, i64 0, !36, i64 8}
!99 = !{!98, !36, i64 0}
!100 = distinct !{!100, !52, !53}
!101 = !{!94, !41, i64 4}
!102 = !{!"function_entry_count", i64 38}
!103 = !{!"branch_weights", i32 38, i32 0}
!104 = distinct !{!104, !52, !53}
!105 = !{!56, !36, i64 1264}
!106 = !{!107, !41, i64 0}
!107 = !{!"regstat_n_sets_and_refs_t", !41, i64 0, !41, i64 4}
!108 = !{!43, !43, i64 0}
!109 = !{!110, !36, i64 8}
!110 = !{!"function", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !36, i64 96, !41, i64 104, !41, i64 108, !41, i64 112, !41, i64 116, !41, i64 120, !41, i64 124, !36, i64 128, !41, i64 136, !41, i64 137, !41, i64 138, !41, i64 138, !41, i64 138, !41, i64 138, !41, i64 138, !41, i64 138, !41, i64 138, !41, i64 139, !41, i64 139, !41, i64 139, !41, i64 139, !41, i64 139, !41, i64 139, !41, i64 139}
!111 = !{!112, !36, i64 0}
!112 = !{!"control_flow_graph", !36, i64 0, !36, i64 8, !36, i64 16, !41, i64 24, !41, i64 28, !41, i64 32, !36, i64 40, !41, i64 48, !37, i64 52, !37, i64 60, !41, i64 68, !41, i64 72}
!113 = !{!114, !36, i64 56}
!114 = !{!"basic_block_def", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !36, i64 48, !36, i64 56, !37, i64 64, !42, i64 72, !41, i64 80, !41, i64 84, !41, i64 88, !41, i64 92, !41, i64 96}
!115 = !{!112, !36, i64 8}
!116 = distinct !{!116, !52, !53}
!117 = distinct !{!117, !52, !53}
!118 = distinct !{!118, !52, !53}
!119 = distinct !{!119, !52, !53}
!120 = distinct !{!120, !52, !53}
