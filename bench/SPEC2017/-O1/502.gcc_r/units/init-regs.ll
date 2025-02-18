; ModuleID = 'init-regs.c'
source_filename = "init-regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.rtl_opt_pass = type { %struct.opt_pass }
%struct.opt_pass = type { i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct._IO_FILE = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, [1 x i8], ptr, i64, ptr, ptr, ptr, ptr, i64, i32, [20 x i8] }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.basic_block_def = type { ptr, ptr, ptr, ptr, [2 x ptr], ptr, ptr, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%union.basic_block_il_dependent = type { ptr }
%struct.control_flow_graph = type { ptr, ptr, ptr, i32, i32, i32, ptr, i32, [2 x i32], [2 x i32], i32, i32 }
%struct.df = type { [8 x ptr], [8 x ptr], ptr, %struct.df_ref_info, %struct.df_ref_info, ptr, ptr, ptr, i32, i32, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i8, i8, i8 }
%struct.df_ref_info = type { ptr, ptr, ptr, i32, i32, i32, i32 }
%struct.dataflow = type { ptr, ptr, i32, ptr, ptr, ptr, i32, i8, i8, i8 }
%struct.df_lr_bb_info = type { ptr, ptr, ptr, ptr }
%struct.df_live_bb_info = type { ptr, ptr, ptr, ptr }
%struct.rtl_bb_info = type { ptr, ptr, ptr, ptr, i32 }
%struct.rtx_def = type { i32, %union.u }
%union.u = type { %struct.block_symbol }
%struct.block_symbol = type { [3 x %union.rtunion_def], ptr, i64 }
%union.rtunion_def = type { ptr }
%struct.df_insn_info = type { ptr, ptr, ptr, ptr, ptr, i32 }
%struct.df_base_ref = type { i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32 }

@stdout = external local_unnamed_addr global ptr, align 8
@stdin = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [10 x i8] c"init-regs\00", align 1
@pass_initialize_regs = dso_local local_unnamed_addr global %struct.rtl_opt_pass { %struct.opt_pass { i32 1, ptr @.str, ptr @gate_initialize_regs, ptr @rest_of_handle_initialize_regs, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 131073 } }, align 8
@optimize = external local_unnamed_addr global i32, align 4
@cfun = external local_unnamed_addr global ptr, align 8
@df = external local_unnamed_addr global ptr, align 8
@const_tiny_rtx = external local_unnamed_addr global [3 x [87 x ptr]], align 16
@dump_file = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [67 x i8] c"adding initialization in %s of reg %d at in block %d for insn %d.\0A\00", align 1

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @vprintf(ptr noalias nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 !prof !41 {
  %3 = load ptr, ptr @stdout, align 8, !tbaa !42
  %4 = tail call i32 @vfprintf(ptr noundef %3, ptr noundef %0, ptr noundef %1)
  ret i32 %4
}

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @getchar() local_unnamed_addr #0 !prof !41 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !42
  %2 = tail call i32 @getc(ptr noundef %1)
  ret i32 %2
}

; Function Attrs: nofree nounwind
declare noundef i32 @getc(ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !41 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !51
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !52

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #11
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !46
  %11 = load i8, ptr %3, align 1, !tbaa !53
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

declare i32 @__uflow(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !41 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !51
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !52

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #11
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !46
  %11 = load i8, ptr %3, align 1, !tbaa !53
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #2 !prof !41 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !42
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !51
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !52

7:                                                ; preds = %0
  %8 = tail call i32 @__uflow(ptr noundef %1) #11
  br label %13

9:                                                ; preds = %0
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !46
  %11 = load i8, ptr %3, align 1, !tbaa !53
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @putchar(i32 noundef %0) local_unnamed_addr #0 !prof !41 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !42
  %3 = tail call i32 @putc(i32 noundef %0, ptr noundef %2)
  ret i32 %3
}

; Function Attrs: nofree nounwind
declare noundef i32 @putc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !41 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !54
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !55
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !52

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #11
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !54
  store i8 %12, ptr %4, align 1, !tbaa !53
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

declare i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !41 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !54
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !55
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !52

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #11
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !54
  store i8 %12, ptr %4, align 1, !tbaa !53
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 noundef %0) local_unnamed_addr #2 !prof !41 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !54
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !55
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !52

8:                                                ; preds = %1
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %2, i32 noundef %9) #11
  br label %15

11:                                               ; preds = %1
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !54
  store i8 %12, ptr %4, align 1, !tbaa !53
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i64 @getline(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 !prof !41 {
  %4 = tail call i64 @__getdelim(ptr noundef %0, ptr noundef %1, i32 noundef 10, ptr noundef %2) #11
  ret i64 %4
}

declare i64 @__getdelim(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @feof_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !41 {
  %2 = load i32, ptr %0, align 8, !tbaa !56
  %3 = lshr i32 %2, 4
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @ferror_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !41 {
  %2 = load i32, ptr %0, align 8, !tbaa !56
  %3 = lshr i32 %2, 5
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @tolower(i32 noundef %0) local_unnamed_addr #5 !prof !41 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_tolower_loc() #11
  %6 = load ptr, ptr %5, align 8, !tbaa !42
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !57
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_tolower_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @toupper(i32 noundef %0) local_unnamed_addr #5 !prof !41 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_toupper_loc() #11
  %6 = load ptr, ptr %5, align 8, !tbaa !42
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !57
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_toupper_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i32 @atoi(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !41 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  %3 = trunc i64 %2 to i32
  ret i32 %3
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atol(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !41 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atoll(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !41 {
  %2 = tail call i64 @strtoll(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtoll(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local noundef ptr @bsearch(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #2 !prof !41 {
  %6 = icmp eq i64 %2, 0
  br i1 %6, label %24, label %7

7:                                                ; preds = %5, %20
  %8 = phi i64 [ %22, %20 ], [ 0, %5 ]
  %9 = phi i64 [ %21, %20 ], [ %2, %5 ]
  %10 = add i64 %8, %9
  %11 = lshr i64 %10, 1
  %12 = mul i64 %11, %3
  %13 = getelementptr inbounds i8, ptr %1, i64 %12
  %14 = tail call i32 %4(ptr noundef %0, ptr noundef %13) #11
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
  br i1 %23, label %7, label %24, !llvm.loop !58

24:                                               ; preds = %16, %20, %5
  %25 = phi ptr [ null, %5 ], [ %13, %16 ], [ null, %20 ]
  ret ptr %25
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local double @atof(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !41 {
  %2 = tail call double @strtod(ptr nocapture noundef %0, ptr noundef null)
  ret double %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal zeroext i8 @gate_initialize_regs() #8 !prof !61 !PGOFuncName !62 {
  %1 = load i32, ptr @optimize, align 4, !tbaa !57
  %2 = icmp sgt i32 %1, 0
  %3 = zext i1 %2 to i8
  ret i8 %3
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @rest_of_handle_initialize_regs() #9 !prof !61 !PGOFuncName !63 {
  %1 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #11
  %2 = load i32, ptr @optimize, align 4, !tbaa !57
  %3 = icmp eq i32 %2, 1
  br i1 %3, label %4, label %5, !prof !64

4:                                                ; preds = %0
  tail call void @df_live_add_problem() #11
  tail call void @df_live_set_all_dirty() #11
  br label %5

5:                                                ; preds = %4, %0
  tail call void @df_analyze() #11
  %6 = load ptr, ptr @cfun, align 8, !tbaa !42
  %7 = getelementptr inbounds %struct.function, ptr %6, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !65
  %9 = load ptr, ptr %8, align 8, !tbaa !67
  %10 = getelementptr inbounds %struct.basic_block_def, ptr %9, i64 0, i32 6
  %11 = load ptr, ptr %10, align 8, !tbaa !69
  %12 = getelementptr inbounds %struct.control_flow_graph, ptr %8, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !71
  %14 = icmp eq ptr %11, %13
  br i1 %14, label %132, label %15, !prof !72

15:                                               ; preds = %5, %123
  %16 = phi ptr [ %125, %123 ], [ %11, %5 ]
  %17 = getelementptr inbounds %struct.basic_block_def, ptr %16, i64 0, i32 9
  %18 = load i32, ptr %17, align 8, !tbaa !73
  %19 = load ptr, ptr @df, align 8, !tbaa !42
  %20 = getelementptr inbounds %struct.df, ptr %19, i64 0, i32 1, i64 1
  %21 = load ptr, ptr %20, align 8, !tbaa !42
  %22 = getelementptr inbounds %struct.dataflow, ptr %21, i64 0, i32 2
  %23 = load i32, ptr %22, align 8, !tbaa !74
  %24 = icmp ugt i32 %23, %18
  tail call void @llvm.assume(i1 %24)
  %25 = getelementptr inbounds %struct.dataflow, ptr %21, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !76
  %27 = zext i32 %18 to i64
  %28 = getelementptr inbounds ptr, ptr %26, i64 %27
  %29 = load ptr, ptr %28, align 8, !tbaa !42
  %30 = getelementptr inbounds %struct.df_lr_bb_info, ptr %29, i64 0, i32 2
  %31 = load ptr, ptr %30, align 8, !tbaa !77
  %32 = getelementptr inbounds %struct.df, ptr %19, i64 0, i32 1, i64 2
  %33 = load ptr, ptr %32, align 8, !tbaa !42
  %34 = getelementptr inbounds %struct.dataflow, ptr %33, i64 0, i32 2
  %35 = load i32, ptr %34, align 8, !tbaa !74
  %36 = icmp ugt i32 %35, %18
  tail call void @llvm.assume(i1 %36)
  %37 = getelementptr inbounds %struct.dataflow, ptr %33, i64 0, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !76
  %39 = getelementptr inbounds ptr, ptr %38, i64 %27
  %40 = load ptr, ptr %39, align 8, !tbaa !42
  %41 = getelementptr inbounds %struct.df_live_bb_info, ptr %40, i64 0, i32 2
  %42 = load ptr, ptr %41, align 8, !tbaa !79
  tail call void @bitmap_clear(ptr noundef %1) #11
  %43 = getelementptr inbounds %struct.basic_block_def, ptr %16, i64 0, i32 7
  %44 = load ptr, ptr %43, align 8, !tbaa !53
  %45 = load ptr, ptr %44, align 8, !tbaa !53
  %46 = icmp eq ptr %45, null
  br i1 %46, label %123, label %47, !prof !72

47:                                               ; preds = %15, %119
  %48 = phi ptr [ %121, %119 ], [ %45, %15 ]
  %49 = load ptr, ptr %43, align 8, !tbaa !53
  %50 = getelementptr inbounds %struct.rtl_bb_info, ptr %49, i64 0, i32 1
  %51 = load ptr, ptr %50, align 8, !tbaa !81
  %52 = getelementptr inbounds %struct.rtx_def, ptr %51, i64 0, i32 1, i32 0, i32 0, i64 2
  %53 = load ptr, ptr %52, align 8, !tbaa !53
  %54 = icmp eq ptr %48, %53
  br i1 %54, label %123, label %55, !prof !83

55:                                               ; preds = %47
  %56 = getelementptr inbounds %struct.rtx_def, ptr %48, i64 0, i32 1
  %57 = load i32, ptr %56, align 8, !tbaa !53
  %58 = load i32, ptr %48, align 8
  %59 = and i32 %58, 65535
  %60 = add nsw i32 %59, -11
  %61 = icmp ult i32 %60, -3
  br i1 %61, label %119, label %62, !prof !84

62:                                               ; preds = %55
  %63 = load ptr, ptr @df, align 8, !tbaa !42
  %64 = getelementptr inbounds %struct.df, ptr %63, i64 0, i32 10
  %65 = load ptr, ptr %64, align 8, !tbaa !85
  %66 = zext i32 %57 to i64
  %67 = getelementptr inbounds ptr, ptr %65, i64 %66
  %68 = load ptr, ptr %67, align 8, !tbaa !42
  %69 = getelementptr inbounds %struct.df_insn_info, ptr %68, i64 0, i32 2
  %70 = load ptr, ptr %69, align 8, !tbaa !88
  %71 = load ptr, ptr %70, align 8, !tbaa !42
  %72 = icmp eq ptr %71, null
  br i1 %72, label %119, label %73, !prof !90

73:                                               ; preds = %62, %115
  %74 = phi ptr [ %117, %115 ], [ %71, %62 ]
  %75 = phi ptr [ %116, %115 ], [ %70, %62 ]
  %76 = getelementptr inbounds %struct.df_base_ref, ptr %74, i64 0, i32 6
  %77 = load i32, ptr %76, align 8, !tbaa !53
  %78 = icmp ult i32 %77, 53
  br i1 %78, label %115, label %79, !prof !91

79:                                               ; preds = %73
  %80 = tail call i32 @bitmap_bit_p(ptr noundef %1, i32 noundef %77) #11
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %115, !prof !92

82:                                               ; preds = %79
  %83 = tail call i32 @bitmap_bit_p(ptr noundef %31, i32 noundef %77) #11
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %115, label %85, !prof !93

85:                                               ; preds = %82
  %86 = tail call i32 @bitmap_bit_p(ptr noundef %42, i32 noundef %77) #11
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %115, !prof !94

88:                                               ; preds = %85
  %89 = getelementptr inbounds %struct.df_base_ref, ptr %74, i64 0, i32 1
  %90 = load ptr, ptr %89, align 8, !tbaa !53
  %91 = load i32, ptr %90, align 8
  %92 = and i32 %91, 65535
  %93 = icmp eq i32 %92, 39
  br i1 %93, label %94, label %97

94:                                               ; preds = %88
  %95 = getelementptr inbounds %struct.rtx_def, ptr %90, i64 0, i32 1
  %96 = load ptr, ptr %95, align 8, !tbaa !53
  br label %97

97:                                               ; preds = %94, %88
  %98 = phi ptr [ %96, %94 ], [ %90, %88 ]
  %99 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %1, i32 noundef %77) #11
  tail call void @start_sequence() #11
  %100 = load i32, ptr %98, align 8
  %101 = lshr i32 %100, 16
  %102 = and i32 %101, 255
  %103 = zext nneg i32 %102 to i64
  %104 = getelementptr inbounds [87 x ptr], ptr @const_tiny_rtx, i64 0, i64 %103
  %105 = load ptr, ptr %104, align 8, !tbaa !42
  %106 = tail call ptr @emit_move_insn(ptr noundef nonnull %98, ptr noundef %105) #11
  %107 = tail call ptr @get_insns() #11
  tail call void @end_sequence() #11
  %108 = tail call ptr @emit_insn_before(ptr noundef %107, ptr noundef nonnull %48) #11
  %109 = load ptr, ptr @dump_file, align 8, !tbaa !42
  %110 = icmp eq ptr %109, null
  br i1 %110, label %115, label %111

111:                                              ; preds = %97
  %112 = tail call ptr @current_function_name() #11
  %113 = load i32, ptr %17, align 8, !tbaa !73
  %114 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %109, ptr noundef nonnull @.str.1, ptr noundef %112, i32 noundef %77, i32 noundef %113, i32 noundef %57)
  br label %115

115:                                              ; preds = %111, %97, %85, %82, %79, %73
  %116 = getelementptr inbounds ptr, ptr %75, i64 1
  %117 = load ptr, ptr %116, align 8, !tbaa !42
  %118 = icmp eq ptr %117, null
  br i1 %118, label %119, label %73, !prof !95, !llvm.loop !96

119:                                              ; preds = %115, %62, %55
  %120 = getelementptr inbounds %struct.rtx_def, ptr %48, i64 0, i32 1, i32 0, i32 0, i64 2
  %121 = load ptr, ptr %120, align 8, !tbaa !53
  %122 = icmp eq ptr %121, null
  br i1 %122, label %123, label %47, !prof !97, !llvm.loop !98

123:                                              ; preds = %119, %47, %15
  %124 = getelementptr inbounds %struct.basic_block_def, ptr %16, i64 0, i32 6
  %125 = load ptr, ptr %124, align 8, !tbaa !69
  %126 = load ptr, ptr @cfun, align 8, !tbaa !42
  %127 = getelementptr inbounds %struct.function, ptr %126, i64 0, i32 1
  %128 = load ptr, ptr %127, align 8, !tbaa !65
  %129 = getelementptr inbounds %struct.control_flow_graph, ptr %128, i64 0, i32 1
  %130 = load ptr, ptr %129, align 8, !tbaa !71
  %131 = icmp eq ptr %125, %130
  br i1 %131, label %132, label %15, !prof !99, !llvm.loop !100

132:                                              ; preds = %123, %5
  %133 = load i32, ptr @optimize, align 4, !tbaa !57
  %134 = icmp eq i32 %133, 1
  br i1 %134, label %135, label %143, !prof !64

135:                                              ; preds = %132
  %136 = load ptr, ptr @dump_file, align 8, !tbaa !42
  %137 = icmp eq ptr %136, null
  br i1 %137, label %139, label %138

138:                                              ; preds = %135
  tail call void @df_dump(ptr noundef nonnull %136) #11
  br label %139

139:                                              ; preds = %138, %135
  %140 = load ptr, ptr @df, align 8, !tbaa !42
  %141 = getelementptr inbounds %struct.df, ptr %140, i64 0, i32 1, i64 2
  %142 = load ptr, ptr %141, align 8, !tbaa !42
  tail call void @df_remove_problem(ptr noundef %142) #11
  br label %143

143:                                              ; preds = %132, %139
  tail call void @bitmap_obstack_free(ptr noundef %1) #11
  ret i32 0
}

declare ptr @bitmap_obstack_alloc_stat(ptr noundef) local_unnamed_addr #3

declare void @df_live_add_problem() local_unnamed_addr #3

declare void @df_live_set_all_dirty() local_unnamed_addr #3

declare void @df_analyze() local_unnamed_addr #3

declare void @bitmap_clear(ptr noundef) local_unnamed_addr #3

declare i32 @bitmap_bit_p(ptr noundef, i32 noundef) local_unnamed_addr #3

declare zeroext i8 @bitmap_set_bit(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @start_sequence() local_unnamed_addr #3

declare ptr @emit_move_insn(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @get_insns() local_unnamed_addr #3

declare void @end_sequence() local_unnamed_addr #3

declare ptr @emit_insn_before(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #1

declare ptr @current_function_name() local_unnamed_addr #3

declare void @df_dump(ptr noundef) local_unnamed_addr #3

declare void @df_remove_problem(ptr noundef) local_unnamed_addr #3

declare void @bitmap_obstack_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #10

attributes #0 = { cold inlinehint nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold inlinehint mustprogress nofree nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #11 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!40}

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
!34 = distinct !{!35, !36, !37, !38, !39}
!35 = !{ptr @rest_of_handle_initialize_regs, ptr @bitmap_obstack_alloc_stat, i64 38}
!36 = !{ptr @rest_of_handle_initialize_regs, ptr @df_analyze, i64 38}
!37 = !{ptr @rest_of_handle_initialize_regs, ptr @bitmap_clear, i64 153611}
!38 = !{ptr @rest_of_handle_initialize_regs, ptr @bitmap_bit_p, i64 531394}
!39 = !{ptr @rest_of_handle_initialize_regs, ptr @bitmap_obstack_free, i64 38}
!40 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!41 = !{!"function_entry_count", i64 0}
!42 = !{!43, !43, i64 0}
!43 = !{!"any pointer", !44, i64 0}
!44 = !{!"omnipotent char", !45, i64 0}
!45 = !{!"Simple C/C++ TBAA"}
!46 = !{!47, !43, i64 8}
!47 = !{!"_IO_FILE", !48, i64 0, !43, i64 8, !43, i64 16, !43, i64 24, !43, i64 32, !43, i64 40, !43, i64 48, !43, i64 56, !43, i64 64, !43, i64 72, !43, i64 80, !43, i64 88, !43, i64 96, !43, i64 104, !48, i64 112, !48, i64 116, !49, i64 120, !50, i64 128, !44, i64 130, !44, i64 131, !43, i64 136, !49, i64 144, !43, i64 152, !43, i64 160, !43, i64 168, !43, i64 176, !49, i64 184, !48, i64 192, !44, i64 196}
!48 = !{!"int", !44, i64 0}
!49 = !{!"long", !44, i64 0}
!50 = !{!"short", !44, i64 0}
!51 = !{!47, !43, i64 16}
!52 = !{!"branch_weights", i32 2000, i32 1}
!53 = !{!44, !44, i64 0}
!54 = !{!47, !43, i64 40}
!55 = !{!47, !43, i64 48}
!56 = !{!47, !48, i64 0}
!57 = !{!48, !48, i64 0}
!58 = distinct !{!58, !59, !60}
!59 = !{!"llvm.loop.mustprogress"}
!60 = !{!"llvm.loop.unroll.disable"}
!61 = !{!"function_entry_count", i64 38}
!62 = !{!"init-regs.c;gate_initialize_regs"}
!63 = !{!"init-regs.c;rest_of_handle_initialize_regs"}
!64 = !{!"branch_weights", i32 0, i32 38}
!65 = !{!66, !43, i64 8}
!66 = !{!"function", !43, i64 0, !43, i64 8, !43, i64 16, !43, i64 24, !43, i64 32, !43, i64 40, !43, i64 48, !43, i64 56, !43, i64 64, !43, i64 72, !43, i64 80, !43, i64 88, !43, i64 96, !48, i64 104, !48, i64 108, !48, i64 112, !48, i64 116, !48, i64 120, !48, i64 124, !43, i64 128, !48, i64 136, !48, i64 137, !48, i64 138, !48, i64 138, !48, i64 138, !48, i64 138, !48, i64 138, !48, i64 138, !48, i64 138, !48, i64 139, !48, i64 139, !48, i64 139, !48, i64 139, !48, i64 139, !48, i64 139, !48, i64 139}
!67 = !{!68, !43, i64 0}
!68 = !{!"control_flow_graph", !43, i64 0, !43, i64 8, !43, i64 16, !48, i64 24, !48, i64 28, !48, i64 32, !43, i64 40, !48, i64 48, !44, i64 52, !44, i64 60, !48, i64 68, !48, i64 72}
!69 = !{!70, !43, i64 56}
!70 = !{!"basic_block_def", !43, i64 0, !43, i64 8, !43, i64 16, !43, i64 24, !44, i64 32, !43, i64 48, !43, i64 56, !44, i64 64, !49, i64 72, !48, i64 80, !48, i64 84, !48, i64 88, !48, i64 92, !48, i64 96}
!71 = !{!68, !43, i64 8}
!72 = !{!"branch_weights", i32 1, i32 151}
!73 = !{!70, !48, i64 80}
!74 = !{!75, !48, i64 16}
!75 = !{!"dataflow", !43, i64 0, !43, i64 8, !48, i64 16, !43, i64 24, !43, i64 32, !43, i64 40, !48, i64 48, !44, i64 52, !44, i64 53, !44, i64 54}
!76 = !{!75, !43, i64 8}
!77 = !{!78, !43, i64 16}
!78 = !{!"df_lr_bb_info", !43, i64 0, !43, i64 8, !43, i64 16, !43, i64 24}
!79 = !{!80, !43, i64 16}
!80 = !{!"df_live_bb_info", !43, i64 0, !43, i64 8, !43, i64 16, !43, i64 24}
!81 = !{!82, !43, i64 8}
!82 = !{!"rtl_bb_info", !43, i64 0, !43, i64 8, !43, i64 16, !43, i64 24, !48, i64 32}
!83 = !{!"branch_weights", i32 153573, i32 879263}
!84 = !{!"branch_weights", i32 206201, i32 673062}
!85 = !{!86, !43, i64 248}
!86 = !{!"df", !44, i64 0, !44, i64 64, !43, i64 128, !87, i64 136, !87, i64 176, !43, i64 216, !43, i64 224, !43, i64 232, !48, i64 240, !48, i64 244, !43, i64 248, !48, i64 256, !48, i64 260, !43, i64 264, !43, i64 272, !43, i64 280, !43, i64 288, !43, i64 296, !43, i64 304, !43, i64 312, !43, i64 320, !43, i64 328, !43, i64 336, !48, i64 344, !48, i64 348, !43, i64 352, !48, i64 360, !48, i64 364, !44, i64 365, !44, i64 366}
!87 = !{!"df_ref_info", !43, i64 0, !43, i64 8, !43, i64 16, !48, i64 24, !48, i64 28, !48, i64 32, !48, i64 36}
!88 = !{!89, !43, i64 16}
!89 = !{!"df_insn_info", !43, i64 0, !43, i64 8, !43, i64 16, !43, i64 24, !43, i64 32, !48, i64 40}
!90 = !{!"branch_weights", i32 57869, i32 615193}
!91 = !{!"branch_weights", i32 386940, i32 228253}
!92 = !{!"branch_weights", i32 228253, i32 0}
!93 = !{!"branch_weights", i32 149866, i32 78387}
!94 = !{!"branch_weights", i32 0, i32 78387}
!95 = !{!"branch_weights", i32 615193, i32 0}
!96 = distinct !{!96, !59, !60}
!97 = !{!"branch_weights", i32 151, i32 4131193}
!98 = distinct !{!98, !59, !60}
!99 = !{!"branch_weights", i32 151, i32 614293}
!100 = distinct !{!100, !59, !60}
