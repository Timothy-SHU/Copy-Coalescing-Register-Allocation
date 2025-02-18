; ModuleID = 'combine-stack-adj.c'
source_filename = "combine-stack-adj.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.rtl_opt_pass = type { %struct.opt_pass }
%struct.opt_pass = type { i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct._IO_FILE = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, [1 x i8], ptr, i64, ptr, ptr, ptr, ptr, i64, i32, [20 x i8] }
%struct.record_stack_refs_data = type { ptr, ptr }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.basic_block_def = type { ptr, ptr, ptr, ptr, [2 x ptr], ptr, ptr, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%union.basic_block_il_dependent = type { ptr }
%struct.control_flow_graph = type { ptr, ptr, ptr, i32, i32, i32, ptr, i32, [2 x i32], [2 x i32], i32, i32 }
%struct.rtl_bb_info = type { ptr, ptr, ptr, ptr, i32 }
%struct.rtx_def = type { i32, %union.u }
%union.u = type { %struct.block_symbol }
%struct.block_symbol = type { [3 x %union.rtunion_def], ptr, i64 }
%union.rtunion_def = type { ptr }
%struct.rtvec_def = type { i32, [1 x ptr] }
%struct.csa_reflist = type { i64, ptr, ptr, ptr }

@stdout = external local_unnamed_addr global ptr, align 8
@stdin = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [4 x i8] c"csa\00", align 1
@pass_stack_adjustments = dso_local local_unnamed_addr global %struct.rtl_opt_pass { %struct.opt_pass { i32 1, ptr @.str, ptr @gate_handle_stack_adjustments, ptr @rest_of_handle_stack_adjustments, ptr null, ptr null, i32 0, i32 155, i32 0, i32 0, i32 0, i32 0, i32 132099 } }, align 8
@optimize = external local_unnamed_addr global i32, align 4
@flag_crossjumping = external local_unnamed_addr global i32, align 4
@cfun = external local_unnamed_addr global ptr, align 8
@global_rtl = external local_unnamed_addr global [11 x ptr], align 16
@mode_size = external local_unnamed_addr global [87 x i8], align 16

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @vprintf(ptr noalias nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 !prof !45 {
  %3 = load ptr, ptr @stdout, align 8, !tbaa !46
  %4 = tail call i32 @vfprintf(ptr noundef %3, ptr noundef %0, ptr noundef %1)
  ret i32 %4
}

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @getchar() local_unnamed_addr #0 !prof !45 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !46
  %2 = tail call i32 @getc(ptr noundef %1)
  ret i32 %2
}

; Function Attrs: nofree nounwind
declare noundef i32 @getc(ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !45 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !50
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !55
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !56

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #14
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !50
  %11 = load i8, ptr %3, align 1, !tbaa !57
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

declare i32 @__uflow(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !45 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !50
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !55
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !56

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #14
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !50
  %11 = load i8, ptr %3, align 1, !tbaa !57
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #2 !prof !45 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !46
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !50
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !55
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !56

7:                                                ; preds = %0
  %8 = tail call i32 @__uflow(ptr noundef %1) #14
  br label %13

9:                                                ; preds = %0
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !50
  %11 = load i8, ptr %3, align 1, !tbaa !57
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @putchar(i32 noundef %0) local_unnamed_addr #0 !prof !45 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !46
  %3 = tail call i32 @putc(i32 noundef %0, ptr noundef %2)
  ret i32 %3
}

; Function Attrs: nofree nounwind
declare noundef i32 @putc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !45 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !58
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !59
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !56

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #14
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !58
  store i8 %12, ptr %4, align 1, !tbaa !57
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

declare i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !45 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !58
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !59
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !56

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #14
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !58
  store i8 %12, ptr %4, align 1, !tbaa !57
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 noundef %0) local_unnamed_addr #2 !prof !45 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !46
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !58
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !59
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !56

8:                                                ; preds = %1
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %2, i32 noundef %9) #14
  br label %15

11:                                               ; preds = %1
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !58
  store i8 %12, ptr %4, align 1, !tbaa !57
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i64 @getline(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 !prof !45 {
  %4 = tail call i64 @__getdelim(ptr noundef %0, ptr noundef %1, i32 noundef 10, ptr noundef %2) #14
  ret i64 %4
}

declare i64 @__getdelim(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @feof_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !45 {
  %2 = load i32, ptr %0, align 8, !tbaa !60
  %3 = lshr i32 %2, 4
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @ferror_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !45 {
  %2 = load i32, ptr %0, align 8, !tbaa !60
  %3 = lshr i32 %2, 5
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @tolower(i32 noundef %0) local_unnamed_addr #5 !prof !45 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_tolower_loc() #14
  %6 = load ptr, ptr %5, align 8, !tbaa !46
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !61
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_tolower_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @toupper(i32 noundef %0) local_unnamed_addr #5 !prof !45 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_toupper_loc() #14
  %6 = load ptr, ptr %5, align 8, !tbaa !46
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !61
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_toupper_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i32 @atoi(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !45 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  %3 = trunc i64 %2 to i32
  ret i32 %3
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atol(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !45 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atoll(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !45 {
  %2 = tail call i64 @strtoll(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtoll(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local noundef ptr @bsearch(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #2 !prof !45 {
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
  br i1 %23, label %7, label %24, !llvm.loop !62

24:                                               ; preds = %16, %20, %5
  %25 = phi ptr [ null, %5 ], [ %13, %16 ], [ null, %20 ]
  ret ptr %25
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local double @atof(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !45 {
  %2 = tail call double @strtod(ptr nocapture noundef %0, ptr noundef null)
  ret double %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal zeroext i8 @gate_handle_stack_adjustments() #9 !prof !65 !PGOFuncName !66 {
  %1 = load i32, ptr @optimize, align 4, !tbaa !61
  %2 = icmp sgt i32 %1, 0
  %3 = zext i1 %2 to i8
  ret i8 %3
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @rest_of_handle_stack_adjustments() #10 !prof !65 !PGOFuncName !67 {
  %1 = alloca %struct.record_stack_refs_data, align 8
  %2 = load i32, ptr @flag_crossjumping, align 4, !tbaa !61
  %3 = icmp eq i32 %2, 0
  %4 = select i1 %3, i32 0, i32 2, !prof !68
  %5 = tail call zeroext i8 @cleanup_cfg(i32 noundef %4) #14
  tail call void @df_note_add_problem() #14
  tail call void @df_analyze() #14
  %6 = load ptr, ptr @cfun, align 8, !tbaa !46
  %7 = getelementptr inbounds %struct.function, ptr %6, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !69
  %9 = load ptr, ptr %8, align 8, !tbaa !71
  %10 = getelementptr inbounds %struct.basic_block_def, ptr %9, i64 0, i32 6
  %11 = load ptr, ptr %10, align 8, !tbaa !73
  %12 = getelementptr inbounds %struct.control_flow_graph, ptr %8, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !75
  %14 = icmp eq ptr %11, %13
  br i1 %14, label %426, label %15, !prof !76

15:                                               ; preds = %0
  %16 = getelementptr inbounds %struct.record_stack_refs_data, ptr %1, i64 0, i32 1
  br label %17

17:                                               ; preds = %15, %417
  %18 = phi ptr [ %11, %15 ], [ %419, %417 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %1) #14
  %19 = getelementptr inbounds %struct.basic_block_def, ptr %18, i64 0, i32 7
  %20 = load ptr, ptr %19, align 8, !tbaa !57
  %21 = load ptr, ptr %20, align 8, !tbaa !77
  br label %22

22:                                               ; preds = %17, %400
  %23 = phi i64 [ 0, %17 ], [ %403, %400 ]
  %24 = phi ptr [ null, %17 ], [ %402, %400 ]
  %25 = phi ptr [ null, %17 ], [ %401, %400 ]
  %26 = phi ptr [ %21, %17 ], [ %32, %400 ]
  %27 = load ptr, ptr %19, align 8, !tbaa !57
  %28 = getelementptr inbounds %struct.rtl_bb_info, ptr %27, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !79
  %30 = icmp eq ptr %26, %29
  %31 = getelementptr inbounds %struct.rtx_def, ptr %26, i64 0, i32 1, i32 0, i32 0, i64 2
  %32 = load ptr, ptr %31, align 8, !tbaa !57
  %33 = load i32, ptr %26, align 8
  %34 = and i32 %33, 65535
  %35 = add nsw i32 %34, -7
  %36 = icmp ult i32 %35, 4
  br i1 %36, label %37, label %400, !prof !80

37:                                               ; preds = %22
  %38 = getelementptr inbounds %struct.rtx_def, ptr %26, i64 1
  %39 = load ptr, ptr %38, align 8, !tbaa !57
  %40 = load i32, ptr %39, align 8
  %41 = and i32 %40, 65535
  %42 = icmp eq i32 %41, 23
  br i1 %42, label %45, label %43, !prof !81

43:                                               ; preds = %37
  %44 = call ptr @single_set_2(ptr noundef nonnull %26, ptr noundef nonnull %39) #14
  br label %45

45:                                               ; preds = %43, %37
  %46 = phi ptr [ %44, %43 ], [ %39, %37 ]
  %47 = icmp eq ptr %46, null
  br i1 %47, label %48, label %89, !prof !82

48:                                               ; preds = %45
  %49 = load i32, ptr %26, align 8
  %50 = and i32 %49, 65535
  %51 = icmp eq i32 %50, 8
  br i1 %51, label %52, label %89, !prof !83

52:                                               ; preds = %48
  %53 = getelementptr inbounds %struct.rtx_def, ptr %26, i64 1
  %54 = load ptr, ptr %53, align 8, !tbaa !57
  %55 = load i32, ptr %54, align 8
  %56 = and i32 %55, 65535
  %57 = icmp eq i32 %56, 15
  br i1 %57, label %58, label %89, !prof !84

58:                                               ; preds = %52
  %59 = getelementptr inbounds %struct.rtx_def, ptr %54, i64 0, i32 1
  %60 = load ptr, ptr %59, align 8, !tbaa !57
  %61 = getelementptr inbounds %struct.rtvec_def, ptr %60, i64 0, i32 1
  %62 = load ptr, ptr %61, align 8, !tbaa !46
  %63 = load i32, ptr %62, align 8
  %64 = and i32 %63, 65535
  %65 = icmp eq i32 %64, 23
  br i1 %65, label %66, label %89, !prof !85

66:                                               ; preds = %58
  %67 = load i32, ptr %60, align 8, !tbaa !86
  %68 = icmp sgt i32 %67, 1
  br i1 %68, label %69, label %89, !prof !88

69:                                               ; preds = %66, %85
  %70 = phi i64 [ %87, %85 ], [ 1, %66 ]
  %71 = getelementptr inbounds %struct.rtvec_def, ptr %60, i64 0, i32 1, i64 %70
  %72 = load ptr, ptr %71, align 8, !tbaa !46
  %73 = load i32, ptr %72, align 8
  %74 = and i32 %73, 65535
  %75 = icmp eq i32 %74, 23
  br i1 %75, label %76, label %82, !prof !85

76:                                               ; preds = %69
  %77 = getelementptr inbounds %struct.rtx_def, ptr %72, i64 0, i32 1
  %78 = getelementptr inbounds %struct.rtx_def, ptr %72, i64 0, i32 1, i32 0, i32 0, i64 1
  %79 = load ptr, ptr %78, align 8, !tbaa !57
  %80 = load ptr, ptr %77, align 8, !tbaa !57
  %81 = icmp eq ptr %79, %80
  br i1 %81, label %85, label %89, !prof !89

82:                                               ; preds = %69
  %83 = and i32 %73, 65534
  %84 = icmp eq i32 %83, 24
  br i1 %84, label %85, label %89, !prof !90

85:                                               ; preds = %82, %76
  %86 = zext nneg i32 %67 to i64
  %87 = add nuw nsw i64 %70, 1
  %88 = icmp eq i64 %87, %86
  br i1 %88, label %89, label %69, !prof !90, !llvm.loop !91

89:                                               ; preds = %76, %82, %85, %45, %48, %52, %58, %66
  %90 = phi ptr [ %46, %45 ], [ null, %52 ], [ null, %48 ], [ null, %58 ], [ %62, %66 ], [ %62, %85 ], [ null, %76 ], [ null, %82 ]
  %91 = icmp eq ptr %90, null
  br i1 %91, label %362, label %92, !prof !82

92:                                               ; preds = %89
  %93 = getelementptr inbounds %struct.rtx_def, ptr %90, i64 0, i32 1
  %94 = load ptr, ptr %93, align 8, !tbaa !57
  %95 = getelementptr inbounds %struct.rtx_def, ptr %90, i64 0, i32 1, i32 0, i32 0, i64 1
  %96 = load ptr, ptr %95, align 8, !tbaa !57
  %97 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 2), align 16, !tbaa !46
  %98 = icmp eq ptr %94, %97
  br i1 %98, label %99, label %288, !prof !92

99:                                               ; preds = %92
  %100 = load i32, ptr %96, align 8
  %101 = and i32 %100, 65535
  %102 = icmp eq i32 %101, 49
  br i1 %102, label %103, label %288, !prof !93

103:                                              ; preds = %99
  %104 = getelementptr inbounds %struct.rtx_def, ptr %96, i64 0, i32 1
  %105 = load ptr, ptr %104, align 8, !tbaa !57
  %106 = icmp eq ptr %105, %97
  br i1 %106, label %107, label %288, !prof !94

107:                                              ; preds = %103
  %108 = getelementptr inbounds %struct.rtx_def, ptr %96, i64 0, i32 1, i32 0, i32 0, i64 1
  %109 = load ptr, ptr %108, align 8, !tbaa !57
  %110 = load i32, ptr %109, align 8
  %111 = and i32 %110, 65535
  %112 = icmp eq i32 %111, 30
  br i1 %112, label %113, label %288, !prof !95

113:                                              ; preds = %107
  %114 = getelementptr inbounds %struct.rtx_def, ptr %109, i64 0, i32 1
  %115 = load i64, ptr %114, align 8, !tbaa !57
  %116 = icmp eq ptr %24, null
  br i1 %116, label %357, label %117, !prof !95

117:                                              ; preds = %113
  %118 = icmp slt i64 %115, 1
  br i1 %118, label %119, label %262

119:                                              ; preds = %117
  %120 = add nsw i64 %115, %23
  %121 = call fastcc i32 @try_apply_stack_adjustment(ptr noundef nonnull %24, ptr noundef %25, i64 noundef %120, i64 noundef %115), !range !96
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %277, label %123

123:                                              ; preds = %119
  %124 = load i32, ptr %24, align 8
  %125 = and i32 %124, 1073741824
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %260, label %127

127:                                              ; preds = %123
  %128 = call ptr @find_reg_note(ptr noundef nonnull %24, i32 noundef 17, ptr noundef null) #14
  %129 = icmp eq ptr %128, null
  br i1 %129, label %130, label %134

130:                                              ; preds = %127
  %131 = load i32, ptr %26, align 8
  %132 = and i32 %131, 1073741824
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %210, label %260

134:                                              ; preds = %127
  %135 = getelementptr inbounds %struct.rtx_def, ptr %128, i64 0, i32 1
  %136 = load ptr, ptr %135, align 8, !tbaa !57
  %137 = load i32, ptr %136, align 8
  %138 = and i32 %137, 65535
  %139 = icmp eq i32 %138, 5
  br i1 %139, label %140, label %210

140:                                              ; preds = %134
  %141 = getelementptr inbounds %struct.rtx_def, ptr %136, i64 0, i32 1
  %142 = load ptr, ptr %141, align 8, !tbaa !57
  %143 = load i32, ptr %142, align 8, !tbaa !86
  %144 = icmp sgt i32 %143, 1
  br i1 %144, label %145, label %210

145:                                              ; preds = %140
  %146 = add nsw i32 %143, -1
  %147 = zext nneg i32 %146 to i64
  %148 = getelementptr inbounds %struct.rtvec_def, ptr %142, i64 0, i32 1, i64 %147
  %149 = load ptr, ptr %148, align 8, !tbaa !46
  %150 = load i32, ptr %149, align 8
  %151 = and i32 %150, 65535
  %152 = icmp eq i32 %151, 23
  br i1 %152, label %153, label %186

153:                                              ; preds = %145
  %154 = load i32, ptr %26, align 8
  %155 = xor i32 %154, %150
  %156 = and i32 %155, 1073741824
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %158, label %186

158:                                              ; preds = %153
  %159 = getelementptr inbounds %struct.rtx_def, ptr %149, i64 0, i32 1
  %160 = load ptr, ptr %159, align 8, !tbaa !57
  %161 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 2), align 16, !tbaa !46
  %162 = icmp eq ptr %160, %161
  br i1 %162, label %163, label %186

163:                                              ; preds = %158
  %164 = getelementptr inbounds %struct.rtx_def, ptr %149, i64 0, i32 1, i32 0, i32 0, i64 1
  %165 = load ptr, ptr %164, align 8, !tbaa !57
  %166 = load i32, ptr %165, align 8
  %167 = and i32 %166, 65535
  %168 = icmp eq i32 %167, 49
  br i1 %168, label %169, label %186

169:                                              ; preds = %163
  %170 = getelementptr inbounds %struct.rtx_def, ptr %165, i64 0, i32 1
  %171 = load ptr, ptr %170, align 8, !tbaa !57
  %172 = icmp eq ptr %171, %161
  br i1 %172, label %173, label %186

173:                                              ; preds = %169
  %174 = getelementptr inbounds %struct.rtx_def, ptr %165, i64 0, i32 1, i32 0, i32 0, i64 1
  %175 = load ptr, ptr %174, align 8, !tbaa !57
  %176 = load i32, ptr %175, align 8
  %177 = and i32 %176, 65535
  %178 = icmp eq i32 %177, 30
  br i1 %178, label %179, label %186

179:                                              ; preds = %173
  %180 = getelementptr inbounds %struct.rtx_def, ptr %175, i64 0, i32 1
  %181 = load i64, ptr %180, align 8, !tbaa !57
  %182 = add nsw i64 %181, %115
  %183 = call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %182) #14
  %184 = load ptr, ptr %164, align 8, !tbaa !57
  %185 = getelementptr inbounds %struct.rtx_def, ptr %184, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr %183, ptr %185, align 8, !tbaa !57
  br label %207

186:                                              ; preds = %173, %169, %163, %158, %153, %145
  %187 = add nuw nsw i32 %143, 1
  %188 = call ptr @rtvec_alloc(i32 noundef %187) #14
  %189 = call ptr @gen_rtx_fmt_E_stat(i32 noundef 5, i32 noundef 0, ptr noundef %188) #14
  %190 = load ptr, ptr %141, align 8, !tbaa !57
  %191 = load i32, ptr %190, align 8, !tbaa !86
  %192 = icmp sgt i32 %191, 0
  br i1 %192, label %193, label %207

193:                                              ; preds = %186
  %194 = getelementptr inbounds %struct.rtx_def, ptr %189, i64 0, i32 1
  br label %195

195:                                              ; preds = %193, %195
  %196 = phi i64 [ 0, %193 ], [ %202, %195 ]
  %197 = phi ptr [ %190, %193 ], [ %203, %195 ]
  %198 = getelementptr inbounds %struct.rtvec_def, ptr %197, i64 0, i32 1, i64 %196
  %199 = load ptr, ptr %198, align 8, !tbaa !46
  %200 = load ptr, ptr %194, align 8, !tbaa !57
  %201 = getelementptr inbounds %struct.rtvec_def, ptr %200, i64 0, i32 1, i64 %196
  store ptr %199, ptr %201, align 8, !tbaa !46
  %202 = add nuw nsw i64 %196, 1
  %203 = load ptr, ptr %141, align 8, !tbaa !57
  %204 = load i32, ptr %203, align 8, !tbaa !86
  %205 = sext i32 %204 to i64
  %206 = icmp slt i64 %202, %205
  br i1 %206, label %195, label %207, !llvm.loop !97

207:                                              ; preds = %195, %186, %179
  %208 = phi i1 [ false, %179 ], [ true, %186 ], [ true, %195 ]
  %209 = phi ptr [ null, %179 ], [ %189, %186 ], [ %189, %195 ]
  br i1 %208, label %236, label %260

210:                                              ; preds = %140, %134, %130
  %211 = call ptr @rtvec_alloc(i32 noundef 2) #14
  %212 = call ptr @gen_rtx_fmt_E_stat(i32 noundef 5, i32 noundef 0, ptr noundef %211) #14
  br i1 %129, label %216, label %213

213:                                              ; preds = %210
  %214 = getelementptr inbounds %struct.rtx_def, ptr %128, i64 0, i32 1
  %215 = load ptr, ptr %214, align 8, !tbaa !57
  br label %231

216:                                              ; preds = %210
  %217 = call fastcc ptr @single_set_for_csa(ptr noundef nonnull %24)
  %218 = call ptr @copy_rtx(ptr noundef %217) #14
  %219 = getelementptr inbounds %struct.rtx_def, ptr %218, i64 0, i32 1, i32 0, i32 0, i64 1
  %220 = load ptr, ptr %219, align 8, !tbaa !57
  %221 = getelementptr inbounds %struct.rtx_def, ptr %220, i64 0, i32 1, i32 0, i32 0, i64 1
  %222 = load ptr, ptr %221, align 8, !tbaa !57
  %223 = getelementptr inbounds %struct.rtx_def, ptr %222, i64 0, i32 1
  %224 = load i64, ptr %223, align 8, !tbaa !57
  %225 = sub nsw i64 %224, %115
  %226 = call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %225) #14
  %227 = load ptr, ptr %219, align 8, !tbaa !57
  %228 = getelementptr inbounds %struct.rtx_def, ptr %227, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr %226, ptr %228, align 8, !tbaa !57
  %229 = load i32, ptr %218, align 8
  %230 = or i32 %229, 1073741824
  store i32 %230, ptr %218, align 8
  br label %231

231:                                              ; preds = %213, %216
  %232 = phi ptr [ %218, %216 ], [ %215, %213 ]
  %233 = getelementptr inbounds %struct.rtx_def, ptr %212, i64 0, i32 1
  %234 = load ptr, ptr %233, align 8, !tbaa !57
  %235 = getelementptr inbounds %struct.rtvec_def, ptr %234, i64 0, i32 1
  store ptr %232, ptr %235, align 8, !tbaa !46
  br label %236

236:                                              ; preds = %231, %207
  %237 = phi ptr [ %209, %207 ], [ %212, %231 ]
  %238 = call fastcc ptr @single_set_for_csa(ptr noundef nonnull %26)
  %239 = call ptr @copy_rtx(ptr noundef %238) #14
  %240 = getelementptr inbounds %struct.rtx_def, ptr %237, i64 0, i32 1
  %241 = load ptr, ptr %240, align 8, !tbaa !57
  %242 = load i32, ptr %241, align 8, !tbaa !86
  %243 = add nsw i32 %242, -1
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds %struct.rtvec_def, ptr %241, i64 0, i32 1, i64 %244
  store ptr %239, ptr %245, align 8, !tbaa !46
  %246 = load i32, ptr %26, align 8
  %247 = and i32 %246, 1073741824
  %248 = load ptr, ptr %240, align 8, !tbaa !57
  %249 = load i32, ptr %248, align 8, !tbaa !86
  %250 = add nsw i32 %249, -1
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds %struct.rtvec_def, ptr %248, i64 0, i32 1, i64 %251
  %253 = load ptr, ptr %252, align 8, !tbaa !46
  %254 = load i32, ptr %253, align 8
  %255 = and i32 %254, -1073741825
  %256 = or disjoint i32 %255, %247
  store i32 %256, ptr %253, align 8
  br i1 %129, label %259, label %257

257:                                              ; preds = %236
  %258 = getelementptr inbounds %struct.rtx_def, ptr %128, i64 0, i32 1
  store ptr %237, ptr %258, align 8, !tbaa !57
  br label %260

259:                                              ; preds = %236
  call void @add_reg_note(ptr noundef nonnull %24, i32 noundef 17, ptr noundef %237) #14
  br label %260

260:                                              ; preds = %259, %257, %207, %130, %123
  %261 = call ptr @delete_insn(ptr noundef nonnull %26) #14
  br label %357

262:                                              ; preds = %117
  %263 = icmp sgt i64 %23, -1
  br i1 %263, label %264, label %277

264:                                              ; preds = %262
  %265 = add nuw nsw i64 %115, %23
  %266 = sub nsw i64 0, %23
  %267 = call fastcc i32 @try_apply_stack_adjustment(ptr noundef nonnull %26, ptr noundef %25, i64 noundef %265, i64 noundef %266), !range !96
  %268 = icmp eq i32 %267, 0
  br i1 %268, label %277, label %269

269:                                              ; preds = %264
  %270 = call ptr @delete_insn(ptr noundef nonnull %24) #14
  %271 = icmp eq ptr %25, null
  br i1 %271, label %357, label %272

272:                                              ; preds = %269, %272
  %273 = phi ptr [ %275, %272 ], [ %25, %269 ]
  %274 = getelementptr inbounds %struct.csa_reflist, ptr %273, i64 0, i32 3
  %275 = load ptr, ptr %274, align 8, !tbaa !98
  call void @free(ptr noundef %273)
  %276 = icmp eq ptr %275, null
  br i1 %276, label %357, label %272, !llvm.loop !100

277:                                              ; preds = %264, %262, %119
  %278 = icmp eq i64 %23, 0
  br i1 %278, label %279, label %281

279:                                              ; preds = %277
  %280 = call ptr @delete_insn(ptr noundef nonnull %24) #14
  br label %281

281:                                              ; preds = %279, %277
  %282 = icmp eq ptr %25, null
  br i1 %282, label %357, label %283

283:                                              ; preds = %281, %283
  %284 = phi ptr [ %286, %283 ], [ %25, %281 ]
  %285 = getelementptr inbounds %struct.csa_reflist, ptr %284, i64 0, i32 3
  %286 = load ptr, ptr %285, align 8, !tbaa !98
  call void @free(ptr noundef %284)
  %287 = icmp eq ptr %286, null
  br i1 %287, label %357, label %283, !llvm.loop !100

288:                                              ; preds = %107, %103, %99, %92
  %289 = load i32, ptr %94, align 8
  %290 = and i32 %289, 65535
  %291 = icmp eq i32 %290, 43
  br i1 %291, label %292, label %357, !prof !101

292:                                              ; preds = %288
  %293 = getelementptr inbounds %struct.rtx_def, ptr %94, i64 0, i32 1
  %294 = load ptr, ptr %293, align 8, !tbaa !57
  %295 = load i32, ptr %294, align 8
  %296 = and i32 %295, 65535
  %297 = icmp eq i32 %296, 74
  br i1 %297, label %298, label %306, !prof !102

298:                                              ; preds = %292
  %299 = lshr i32 %289, 16
  %300 = and i32 %299, 255
  %301 = zext nneg i32 %300 to i64
  %302 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %301
  %303 = load i8, ptr %302, align 1, !tbaa !57
  %304 = zext i8 %303 to i64
  %305 = icmp eq i64 %23, %304
  br i1 %305, label %331, label %306, !prof !103

306:                                              ; preds = %298, %292
  %307 = icmp sgt i64 %23, -1
  %308 = icmp eq i32 %296, 78
  %309 = and i1 %307, %308
  br i1 %309, label %310, label %357, !prof !104

310:                                              ; preds = %306
  %311 = getelementptr inbounds %struct.rtx_def, ptr %294, i64 0, i32 1, i32 0, i32 0, i64 1
  %312 = load ptr, ptr %311, align 8, !tbaa !57
  %313 = load i32, ptr %312, align 8
  %314 = and i32 %313, 65535
  %315 = icmp eq i32 %314, 49
  br i1 %315, label %316, label %357

316:                                              ; preds = %310
  %317 = getelementptr inbounds %struct.rtx_def, ptr %312, i64 0, i32 1
  %318 = load ptr, ptr %317, align 8, !tbaa !57
  %319 = icmp eq ptr %318, %97
  br i1 %319, label %320, label %357

320:                                              ; preds = %316
  %321 = getelementptr inbounds %struct.rtx_def, ptr %312, i64 0, i32 1, i32 0, i32 0, i64 1
  %322 = load ptr, ptr %321, align 8, !tbaa !57
  %323 = load i32, ptr %322, align 8
  %324 = and i32 %323, 65535
  %325 = icmp eq i32 %324, 30
  br i1 %325, label %326, label %357

326:                                              ; preds = %320
  %327 = getelementptr inbounds %struct.rtx_def, ptr %322, i64 0, i32 1
  %328 = load i64, ptr %327, align 8, !tbaa !57
  %329 = sub nsw i64 0, %23
  %330 = icmp eq i64 %328, %329
  br i1 %330, label %331, label %357

331:                                              ; preds = %326, %298
  %332 = getelementptr inbounds %struct.rtx_def, ptr %294, i64 0, i32 1
  %333 = load ptr, ptr %332, align 8, !tbaa !57
  %334 = icmp eq ptr %333, %97
  br i1 %334, label %335, label %357

335:                                              ; preds = %331
  %336 = call i32 @reg_mentioned_p(ptr noundef %97, ptr noundef %96) #14
  %337 = icmp eq i32 %336, 0
  br i1 %337, label %338, label %357

338:                                              ; preds = %335
  %339 = load i32, ptr %94, align 8
  %340 = lshr i32 %339, 16
  %341 = and i32 %340, 255
  %342 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 2), align 16, !tbaa !46
  %343 = call i32 @memory_address_addr_space_p(i32 noundef %341, ptr noundef %342, i8 noundef zeroext 0) #14
  %344 = icmp eq i32 %343, 0
  br i1 %344, label %357, label %345

345:                                              ; preds = %338
  %346 = sub nsw i64 0, %23
  %347 = call fastcc i32 @try_apply_stack_adjustment(ptr noundef nonnull %26, ptr noundef %25, i64 noundef 0, i64 noundef %346), !range !96
  %348 = icmp eq i32 %347, 0
  br i1 %348, label %357, label %349

349:                                              ; preds = %345
  %350 = call ptr @delete_insn(ptr noundef %24) #14
  %351 = icmp eq ptr %25, null
  br i1 %351, label %357, label %352

352:                                              ; preds = %349, %352
  %353 = phi ptr [ %355, %352 ], [ %25, %349 ]
  %354 = getelementptr inbounds %struct.csa_reflist, ptr %353, i64 0, i32 3
  %355 = load ptr, ptr %354, align 8, !tbaa !98
  call void @free(ptr noundef %353)
  %356 = icmp eq ptr %355, null
  br i1 %356, label %357, label %352, !llvm.loop !100

357:                                              ; preds = %352, %272, %283, %349, %269, %281, %331, %326, %345, %338, %335, %320, %316, %310, %306, %288, %260, %113
  %358 = phi ptr [ %25, %260 ], [ %25, %113 ], [ %25, %345 ], [ %25, %338 ], [ %25, %335 ], [ %25, %320 ], [ %25, %316 ], [ %25, %310 ], [ %25, %306 ], [ %25, %288 ], [ %25, %326 ], [ %25, %331 ], [ null, %281 ], [ null, %269 ], [ null, %349 ], [ null, %283 ], [ null, %272 ], [ null, %352 ]
  %359 = phi ptr [ %24, %260 ], [ %26, %113 ], [ %24, %345 ], [ %24, %338 ], [ %24, %335 ], [ %24, %320 ], [ %24, %316 ], [ %24, %310 ], [ %24, %306 ], [ %24, %288 ], [ %24, %326 ], [ %24, %331 ], [ %26, %281 ], [ %26, %269 ], [ null, %349 ], [ %26, %283 ], [ %26, %272 ], [ null, %352 ]
  %360 = phi i64 [ %120, %260 ], [ %115, %113 ], [ %23, %345 ], [ %23, %338 ], [ %23, %335 ], [ %23, %320 ], [ %23, %316 ], [ %23, %310 ], [ %23, %306 ], [ %23, %288 ], [ %23, %326 ], [ %23, %331 ], [ %115, %281 ], [ %265, %269 ], [ 0, %349 ], [ %115, %283 ], [ %265, %272 ], [ 0, %352 ]
  %361 = phi i1 [ false, %260 ], [ false, %113 ], [ true, %345 ], [ true, %338 ], [ true, %335 ], [ true, %320 ], [ true, %316 ], [ true, %310 ], [ true, %306 ], [ true, %288 ], [ true, %326 ], [ true, %331 ], [ false, %281 ], [ false, %269 ], [ false, %349 ], [ false, %283 ], [ false, %272 ], [ false, %352 ]
  br i1 %361, label %362, label %400, !prof !105

362:                                              ; preds = %357, %89
  %363 = phi ptr [ %358, %357 ], [ %25, %89 ]
  %364 = phi ptr [ %359, %357 ], [ %24, %89 ]
  %365 = phi i64 [ %360, %357 ], [ %23, %89 ]
  store ptr %26, ptr %1, align 8, !tbaa !106
  store ptr %363, ptr %16, align 8, !tbaa !108
  %366 = load i32, ptr %26, align 8
  %367 = and i32 %366, 65535
  %368 = icmp ne i32 %367, 10
  %369 = icmp ne ptr %364, null
  %370 = select i1 %368, i1 %369, i1 false, !prof !109
  br i1 %370, label %371, label %377, !prof !110

371:                                              ; preds = %362
  %372 = getelementptr inbounds %struct.rtx_def, ptr %26, i64 1
  %373 = call i32 @for_each_rtx(ptr noundef nonnull %372, ptr noundef nonnull @record_stack_refs, ptr noundef nonnull %1) #14
  %374 = icmp eq i32 %373, 0
  br i1 %374, label %375, label %377, !prof !111

375:                                              ; preds = %371
  %376 = load ptr, ptr %16, align 8, !tbaa !108
  br label %400

377:                                              ; preds = %371, %362
  %378 = load ptr, ptr %16, align 8, !tbaa !108
  br i1 %369, label %379, label %400, !prof !112

379:                                              ; preds = %377
  %380 = load i32, ptr %26, align 8
  %381 = and i32 %380, 65535
  %382 = icmp eq i32 %381, 10
  br i1 %382, label %389, label %383, !prof !113

383:                                              ; preds = %379
  %384 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 2), align 16, !tbaa !46
  %385 = getelementptr inbounds %struct.rtx_def, ptr %26, i64 1
  %386 = load ptr, ptr %385, align 8, !tbaa !57
  %387 = call i32 @reg_mentioned_p(ptr noundef %384, ptr noundef %386) #14
  %388 = icmp eq i32 %387, 0
  br i1 %388, label %400, label %389, !prof !113

389:                                              ; preds = %383, %379
  %390 = icmp eq i64 %365, 0
  br i1 %390, label %391, label %393, !prof !113

391:                                              ; preds = %389
  %392 = call ptr @delete_insn(ptr noundef nonnull %364) #14
  br label %393

393:                                              ; preds = %391, %389
  %394 = icmp eq ptr %378, null
  br i1 %394, label %400, label %395, !prof !114

395:                                              ; preds = %393, %395
  %396 = phi ptr [ %398, %395 ], [ %378, %393 ]
  %397 = getelementptr inbounds %struct.csa_reflist, ptr %396, i64 0, i32 3
  %398 = load ptr, ptr %397, align 8, !tbaa !98
  call void @free(ptr noundef %396)
  %399 = icmp eq ptr %398, null
  br i1 %399, label %400, label %395, !prof !115, !llvm.loop !100

400:                                              ; preds = %395, %393, %377, %383, %375, %357, %22
  %401 = phi ptr [ %358, %357 ], [ %378, %383 ], [ %376, %375 ], [ %25, %22 ], [ %378, %377 ], [ null, %393 ], [ null, %395 ]
  %402 = phi ptr [ %359, %357 ], [ %364, %383 ], [ %364, %375 ], [ %24, %22 ], [ null, %377 ], [ null, %393 ], [ null, %395 ]
  %403 = phi i64 [ %360, %357 ], [ %365, %383 ], [ %365, %375 ], [ %23, %22 ], [ %365, %377 ], [ 0, %393 ], [ 0, %395 ]
  br i1 %30, label %404, label %22, !prof !116, !llvm.loop !117

404:                                              ; preds = %400
  %405 = icmp ne ptr %402, null
  %406 = icmp eq i64 %403, 0
  %407 = select i1 %405, i1 %406, i1 false, !prof !118
  br i1 %407, label %408, label %410, !prof !119

408:                                              ; preds = %404
  %409 = call ptr @delete_insn(ptr noundef nonnull %402) #14
  br label %410

410:                                              ; preds = %408, %404
  %411 = icmp eq ptr %401, null
  br i1 %411, label %417, label %412, !prof !120

412:                                              ; preds = %410, %412
  %413 = phi ptr [ %415, %412 ], [ %401, %410 ]
  %414 = getelementptr inbounds %struct.csa_reflist, ptr %413, i64 0, i32 3
  %415 = load ptr, ptr %414, align 8, !tbaa !98
  call void @free(ptr noundef %413)
  %416 = icmp eq ptr %415, null
  br i1 %416, label %417, label %412, !llvm.loop !100

417:                                              ; preds = %412, %410
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %1) #14
  %418 = getelementptr inbounds %struct.basic_block_def, ptr %18, i64 0, i32 6
  %419 = load ptr, ptr %418, align 8, !tbaa !73
  %420 = load ptr, ptr @cfun, align 8, !tbaa !46
  %421 = getelementptr inbounds %struct.function, ptr %420, i64 0, i32 1
  %422 = load ptr, ptr %421, align 8, !tbaa !69
  %423 = getelementptr inbounds %struct.control_flow_graph, ptr %422, i64 0, i32 1
  %424 = load ptr, ptr %423, align 8, !tbaa !75
  %425 = icmp eq ptr %419, %424
  br i1 %425, label %426, label %17, !prof !121, !llvm.loop !122

426:                                              ; preds = %417, %0
  ret i32 0
}

declare zeroext i8 @cleanup_cfg(i32 noundef) local_unnamed_addr #3

declare void @df_note_add_problem() local_unnamed_addr #3

declare void @df_analyze() local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc ptr @single_set_for_csa(ptr noundef %0) unnamed_addr #11 !prof !45 !PGOFuncName !123 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 65535
  %4 = add nsw i32 %3, -7
  %5 = icmp ult i32 %4, 4
  br i1 %5, label %6, label %14, !prof !124

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %8 = load ptr, ptr %7, align 8, !tbaa !57
  %9 = load i32, ptr %8, align 8
  %10 = and i32 %9, 65535
  %11 = icmp eq i32 %10, 23
  br i1 %11, label %14, label %12, !prof !81

12:                                               ; preds = %6
  %13 = tail call ptr @single_set_2(ptr noundef nonnull %0, ptr noundef nonnull %8) #14
  br label %14

14:                                               ; preds = %1, %6, %12
  %15 = phi ptr [ %13, %12 ], [ null, %1 ], [ %8, %6 ]
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %58, !prof !82

17:                                               ; preds = %14
  %18 = load i32, ptr %0, align 8
  %19 = and i32 %18, 65535
  %20 = icmp eq i32 %19, 8
  br i1 %20, label %21, label %58, !prof !83

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %23 = load ptr, ptr %22, align 8, !tbaa !57
  %24 = load i32, ptr %23, align 8
  %25 = and i32 %24, 65535
  %26 = icmp eq i32 %25, 15
  br i1 %26, label %27, label %58, !prof !84

27:                                               ; preds = %21
  %28 = getelementptr inbounds %struct.rtx_def, ptr %23, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !57
  %30 = getelementptr inbounds %struct.rtvec_def, ptr %29, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !46
  %32 = load i32, ptr %31, align 8
  %33 = and i32 %32, 65535
  %34 = icmp eq i32 %33, 23
  br i1 %34, label %35, label %58, !prof !85

35:                                               ; preds = %27
  %36 = load i32, ptr %29, align 8, !tbaa !86
  %37 = icmp sgt i32 %36, 1
  br i1 %37, label %38, label %58, !prof !88

38:                                               ; preds = %35, %54
  %39 = phi i64 [ %56, %54 ], [ 1, %35 ]
  %40 = getelementptr inbounds %struct.rtvec_def, ptr %29, i64 0, i32 1, i64 %39
  %41 = load ptr, ptr %40, align 8, !tbaa !46
  %42 = load i32, ptr %41, align 8
  %43 = and i32 %42, 65535
  %44 = icmp eq i32 %43, 23
  br i1 %44, label %45, label %51, !prof !85

45:                                               ; preds = %38
  %46 = getelementptr inbounds %struct.rtx_def, ptr %41, i64 0, i32 1
  %47 = getelementptr inbounds %struct.rtx_def, ptr %41, i64 0, i32 1, i32 0, i32 0, i64 1
  %48 = load ptr, ptr %47, align 8, !tbaa !57
  %49 = load ptr, ptr %46, align 8, !tbaa !57
  %50 = icmp eq ptr %48, %49
  br i1 %50, label %54, label %58, !prof !89

51:                                               ; preds = %38
  %52 = and i32 %42, 65534
  %53 = icmp eq i32 %52, 24
  br i1 %53, label %54, label %58, !prof !90

54:                                               ; preds = %45, %51
  %55 = zext nneg i32 %36 to i64
  %56 = add nuw nsw i64 %39, 1
  %57 = icmp eq i64 %56, %55
  br i1 %57, label %58, label %38, !prof !90, !llvm.loop !91

58:                                               ; preds = %51, %45, %54, %35, %27, %17, %21, %14
  %59 = phi ptr [ %15, %14 ], [ null, %21 ], [ null, %17 ], [ null, %27 ], [ %31, %35 ], [ %31, %54 ], [ null, %45 ], [ null, %51 ]
  ret ptr %59
}

; Function Attrs: cold nounwind uwtable
define internal fastcc noundef i32 @try_apply_stack_adjustment(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3) unnamed_addr #12 !prof !45 {
  %5 = tail call fastcc ptr @single_set_for_csa(ptr noundef %0)
  %6 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !57
  %8 = load i32, ptr %7, align 8
  %9 = and i32 %8, 65535
  %10 = icmp eq i32 %9, 43
  br i1 %10, label %11, label %15

11:                                               ; preds = %4
  %12 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 2), align 16, !tbaa !46
  %13 = tail call ptr @replace_equiv_address(ptr noundef nonnull %7, ptr noundef %12) #14
  %14 = tail call zeroext i8 @validate_change(ptr noundef %0, ptr noundef nonnull %6, ptr noundef %13, i8 noundef zeroext 1) #14
  br label %21

15:                                               ; preds = %4
  %16 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1, i32 0, i32 0, i64 1
  %17 = load ptr, ptr %16, align 8, !tbaa !57
  %18 = getelementptr inbounds %struct.rtx_def, ptr %17, i64 0, i32 1, i32 0, i32 0, i64 1
  %19 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %2) #14
  %20 = tail call zeroext i8 @validate_change(ptr noundef %0, ptr noundef nonnull %18, ptr noundef %19, i8 noundef zeroext 1) #14
  br label %21

21:                                               ; preds = %15, %11
  %22 = icmp eq ptr %1, null
  br i1 %22, label %59, label %23

23:                                               ; preds = %21, %50
  %24 = phi ptr [ %57, %50 ], [ %1, %21 ]
  %25 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 2), align 16, !tbaa !46
  %26 = load i64, ptr %24, align 8, !tbaa !125
  %27 = sub nsw i64 %26, %3
  %28 = tail call ptr @plus_constant(ptr noundef %25, i64 noundef %27) #14
  %29 = getelementptr inbounds %struct.csa_reflist, ptr %24, i64 0, i32 2
  %30 = load ptr, ptr %29, align 8, !tbaa !126
  %31 = load ptr, ptr %30, align 8, !tbaa !46
  %32 = load i32, ptr %31, align 8
  %33 = and i32 %32, 65535
  %34 = icmp eq i32 %33, 43
  br i1 %34, label %35, label %37

35:                                               ; preds = %23
  %36 = tail call ptr @replace_equiv_address_nv(ptr noundef nonnull %31, ptr noundef %28) #14
  br label %50

37:                                               ; preds = %23
  %38 = lshr i32 %32, 16
  %39 = and i32 %38, 255
  %40 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 2), align 16, !tbaa !46
  %41 = load i32, ptr %40, align 8
  %42 = lshr i32 %41, 16
  %43 = and i32 %42, 255
  %44 = icmp eq i32 %39, %43
  br i1 %44, label %50, label %45

45:                                               ; preds = %37
  %46 = load i32, ptr %28, align 8
  %47 = lshr i32 %46, 16
  %48 = and i32 %47, 255
  %49 = tail call ptr @lowpart_subreg(i32 noundef %39, ptr noundef nonnull %28, i32 noundef %48) #14
  br label %50

50:                                               ; preds = %37, %45, %35
  %51 = phi ptr [ %36, %35 ], [ %49, %45 ], [ %28, %37 ]
  %52 = getelementptr inbounds %struct.csa_reflist, ptr %24, i64 0, i32 1
  %53 = load ptr, ptr %52, align 8, !tbaa !127
  %54 = load ptr, ptr %29, align 8, !tbaa !126
  %55 = tail call zeroext i8 @validate_change(ptr noundef %53, ptr noundef %54, ptr noundef %51, i8 noundef zeroext 1) #14
  %56 = getelementptr inbounds %struct.csa_reflist, ptr %24, i64 0, i32 3
  %57 = load ptr, ptr %56, align 8, !tbaa !98
  %58 = icmp eq ptr %57, null
  br i1 %58, label %59, label %23, !llvm.loop !128

59:                                               ; preds = %50, %21
  %60 = tail call i32 @apply_change_group() #14
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %71, label %62

62:                                               ; preds = %59
  %63 = icmp eq ptr %1, null
  br i1 %63, label %71, label %64

64:                                               ; preds = %62, %64
  %65 = phi ptr [ %69, %64 ], [ %1, %62 ]
  %66 = load i64, ptr %65, align 8, !tbaa !125
  %67 = sub nsw i64 %66, %3
  store i64 %67, ptr %65, align 8, !tbaa !125
  %68 = getelementptr inbounds %struct.csa_reflist, ptr %65, i64 0, i32 3
  %69 = load ptr, ptr %68, align 8, !tbaa !98
  %70 = icmp eq ptr %69, null
  br i1 %70, label %71, label %64, !llvm.loop !129

71:                                               ; preds = %64, %62, %59
  %72 = phi i32 [ 0, %59 ], [ 1, %62 ], [ 1, %64 ]
  ret i32 %72
}

declare ptr @delete_insn(ptr noundef) local_unnamed_addr #3

declare i32 @reg_mentioned_p(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @memory_address_addr_space_p(i32 noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

declare i32 @for_each_rtx(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal i32 @record_stack_refs(ptr noundef %0, ptr nocapture noundef %1) #10 !prof !130 !PGOFuncName !131 {
  %3 = load ptr, ptr %0, align 8, !tbaa !46
  %4 = icmp eq ptr %3, null
  br i1 %4, label %97, label %5, !prof !132

5:                                                ; preds = %2
  %6 = load i32, ptr %3, align 8
  %7 = trunc i32 %6 to i16
  switch i16 %7, label %97 [
    i16 43, label %8
    i16 37, label %65
  ], !prof !133

8:                                                ; preds = %5
  %9 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 2), align 16, !tbaa !46
  %10 = tail call i32 @reg_mentioned_p(ptr noundef %9, ptr noundef nonnull %3) #14
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %97, label %12, !prof !134

12:                                               ; preds = %8
  %13 = load i32, ptr %3, align 8
  %14 = and i32 %13, 65535
  %15 = icmp eq i32 %14, 43
  br i1 %15, label %16, label %59, !prof !135

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !57
  %19 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 2), align 16, !tbaa !46
  %20 = icmp eq ptr %18, %19
  br i1 %20, label %35, label %21, !prof !135

21:                                               ; preds = %16
  %22 = load i32, ptr %18, align 8
  %23 = and i32 %22, 65535
  %24 = icmp eq i32 %23, 49
  br i1 %24, label %25, label %59

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.rtx_def, ptr %18, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !57
  %28 = icmp eq ptr %27, %19
  br i1 %28, label %29, label %59

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.rtx_def, ptr %18, i64 0, i32 1, i32 0, i32 0, i64 1
  %31 = load ptr, ptr %30, align 8, !tbaa !57
  %32 = load i32, ptr %31, align 8
  %33 = and i32 %32, 65535
  %34 = icmp eq i32 %33, 30
  br i1 %34, label %35, label %59

35:                                               ; preds = %29, %16
  %36 = load ptr, ptr %1, align 8, !tbaa !106
  %37 = getelementptr inbounds %struct.record_stack_refs_data, ptr %1, i64 0, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !108
  %39 = tail call ptr @xmalloc(i64 noundef 32) #14
  %40 = load ptr, ptr %0, align 8, !tbaa !46
  %41 = load i32, ptr %40, align 8
  %42 = and i32 %41, 65535
  %43 = icmp eq i32 %42, 37
  br i1 %43, label %54, label %44, !prof !113

44:                                               ; preds = %35
  %45 = getelementptr inbounds %struct.rtx_def, ptr %40, i64 0, i32 1
  %46 = load ptr, ptr %45, align 8, !tbaa !57
  %47 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 2), align 16, !tbaa !46
  %48 = icmp eq ptr %46, %47
  br i1 %48, label %54, label %49, !prof !135

49:                                               ; preds = %44
  %50 = getelementptr inbounds %struct.rtx_def, ptr %46, i64 0, i32 1, i32 0, i32 0, i64 1
  %51 = load ptr, ptr %50, align 8, !tbaa !57
  %52 = getelementptr inbounds %struct.rtx_def, ptr %51, i64 0, i32 1
  %53 = load i64, ptr %52, align 8, !tbaa !57
  br label %54

54:                                               ; preds = %35, %44, %49
  %55 = phi i64 [ %53, %49 ], [ 0, %44 ], [ 0, %35 ]
  store i64 %55, ptr %39, align 8, !tbaa !125
  %56 = getelementptr inbounds %struct.csa_reflist, ptr %39, i64 0, i32 1
  store ptr %36, ptr %56, align 8, !tbaa !127
  %57 = getelementptr inbounds %struct.csa_reflist, ptr %39, i64 0, i32 2
  store ptr %0, ptr %57, align 8, !tbaa !126
  %58 = getelementptr inbounds %struct.csa_reflist, ptr %39, i64 0, i32 3
  store ptr %38, ptr %58, align 8, !tbaa !98
  store ptr %39, ptr %37, align 8, !tbaa !108
  br label %97

59:                                               ; preds = %21, %25, %29, %12
  %60 = load ptr, ptr %1, align 8, !tbaa !106
  %61 = load i32, ptr %60, align 8
  %62 = and i32 %61, 65535
  %63 = icmp ne i32 %62, 7
  %64 = zext i1 %63 to i32
  br label %97

65:                                               ; preds = %5
  %66 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  %67 = load i32, ptr %66, align 8, !tbaa !57
  %68 = icmp eq i32 %67, 7
  br i1 %68, label %69, label %97, !prof !136

69:                                               ; preds = %65
  %70 = load ptr, ptr %1, align 8, !tbaa !106
  %71 = load i32, ptr %70, align 8
  %72 = and i32 %71, 65535
  %73 = icmp eq i32 %72, 7
  br i1 %73, label %74, label %97, !prof !113

74:                                               ; preds = %69
  %75 = getelementptr inbounds %struct.record_stack_refs_data, ptr %1, i64 0, i32 1
  %76 = load ptr, ptr %75, align 8, !tbaa !108
  %77 = tail call ptr @xmalloc(i64 noundef 32) #14
  %78 = load ptr, ptr %0, align 8, !tbaa !46
  %79 = load i32, ptr %78, align 8
  %80 = and i32 %79, 65535
  %81 = icmp eq i32 %80, 37
  br i1 %81, label %92, label %82

82:                                               ; preds = %74
  %83 = getelementptr inbounds %struct.rtx_def, ptr %78, i64 0, i32 1
  %84 = load ptr, ptr %83, align 8, !tbaa !57
  %85 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 2), align 16, !tbaa !46
  %86 = icmp eq ptr %84, %85
  br i1 %86, label %92, label %87

87:                                               ; preds = %82
  %88 = getelementptr inbounds %struct.rtx_def, ptr %84, i64 0, i32 1, i32 0, i32 0, i64 1
  %89 = load ptr, ptr %88, align 8, !tbaa !57
  %90 = getelementptr inbounds %struct.rtx_def, ptr %89, i64 0, i32 1
  %91 = load i64, ptr %90, align 8, !tbaa !57
  br label %92

92:                                               ; preds = %74, %82, %87
  %93 = phi i64 [ %91, %87 ], [ 0, %82 ], [ 0, %74 ]
  store i64 %93, ptr %77, align 8, !tbaa !125
  %94 = getelementptr inbounds %struct.csa_reflist, ptr %77, i64 0, i32 1
  store ptr %70, ptr %94, align 8, !tbaa !127
  %95 = getelementptr inbounds %struct.csa_reflist, ptr %77, i64 0, i32 2
  store ptr %0, ptr %95, align 8, !tbaa !126
  %96 = getelementptr inbounds %struct.csa_reflist, ptr %77, i64 0, i32 3
  store ptr %76, ptr %96, align 8, !tbaa !98
  store ptr %77, ptr %75, align 8, !tbaa !108
  br label %97

97:                                               ; preds = %65, %5, %69, %8, %2, %92, %59, %54
  %98 = phi i32 [ -1, %92 ], [ -1, %54 ], [ %64, %59 ], [ 0, %2 ], [ -1, %8 ], [ 1, %69 ], [ 0, %5 ], [ 0, %65 ]
  ret i32 %98
}

declare ptr @single_set_2(ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @validate_change(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

declare ptr @replace_equiv_address(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @gen_rtx_CONST_INT(i32 noundef, i64 noundef) local_unnamed_addr #3

declare ptr @plus_constant(ptr noundef, i64 noundef) local_unnamed_addr #3

declare ptr @replace_equiv_address_nv(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @lowpart_subreg(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @apply_change_group() local_unnamed_addr #3

declare ptr @find_reg_note(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @gen_rtx_fmt_E_stat(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @rtvec_alloc(i32 noundef) local_unnamed_addr #3

declare ptr @copy_rtx(ptr noundef) local_unnamed_addr #3

declare void @add_reg_note(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #13

declare ptr @xmalloc(i64 noundef) local_unnamed_addr #3

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
attributes #12 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!44}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43}
!35 = !{ptr @rest_of_handle_stack_adjustments, ptr @cleanup_cfg, i64 38}
!36 = !{ptr @rest_of_handle_stack_adjustments, ptr @df_note_add_problem, i64 38}
!37 = !{ptr @rest_of_handle_stack_adjustments, ptr @df_analyze, i64 38}
!38 = !{ptr @rest_of_handle_stack_adjustments, ptr @single_set_2, i64 7984}
!39 = !{ptr @rest_of_handle_stack_adjustments, ptr @for_each_rtx, i64 199}
!40 = !{ptr @rest_of_handle_stack_adjustments, ptr @reg_mentioned_p, i64 29}
!41 = !{ptr @rest_of_handle_stack_adjustments, ptr @free, i64 29}
!42 = !{ptr @record_stack_refs, ptr @reg_mentioned_p, i64 130}
!43 = !{ptr @record_stack_refs, ptr @xmalloc, i64 29}
!44 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!45 = !{!"function_entry_count", i64 0}
!46 = !{!47, !47, i64 0}
!47 = !{!"any pointer", !48, i64 0}
!48 = !{!"omnipotent char", !49, i64 0}
!49 = !{!"Simple C/C++ TBAA"}
!50 = !{!51, !47, i64 8}
!51 = !{!"_IO_FILE", !52, i64 0, !47, i64 8, !47, i64 16, !47, i64 24, !47, i64 32, !47, i64 40, !47, i64 48, !47, i64 56, !47, i64 64, !47, i64 72, !47, i64 80, !47, i64 88, !47, i64 96, !47, i64 104, !52, i64 112, !52, i64 116, !53, i64 120, !54, i64 128, !48, i64 130, !48, i64 131, !47, i64 136, !53, i64 144, !47, i64 152, !47, i64 160, !47, i64 168, !47, i64 176, !53, i64 184, !52, i64 192, !48, i64 196}
!52 = !{!"int", !48, i64 0}
!53 = !{!"long", !48, i64 0}
!54 = !{!"short", !48, i64 0}
!55 = !{!51, !47, i64 16}
!56 = !{!"branch_weights", i32 2000, i32 1}
!57 = !{!48, !48, i64 0}
!58 = !{!51, !47, i64 40}
!59 = !{!51, !47, i64 48}
!60 = !{!51, !52, i64 0}
!61 = !{!52, !52, i64 0}
!62 = distinct !{!62, !63, !64}
!63 = !{!"llvm.loop.mustprogress"}
!64 = !{!"llvm.loop.unroll.disable"}
!65 = !{!"function_entry_count", i64 38}
!66 = !{!"combine-stack-adj.c;gate_handle_stack_adjustments"}
!67 = !{!"combine-stack-adj.c;rest_of_handle_stack_adjustments"}
!68 = !{!"branch_weights", i32 0, i32 38}
!69 = !{!70, !47, i64 8}
!70 = !{!"function", !47, i64 0, !47, i64 8, !47, i64 16, !47, i64 24, !47, i64 32, !47, i64 40, !47, i64 48, !47, i64 56, !47, i64 64, !47, i64 72, !47, i64 80, !47, i64 88, !47, i64 96, !52, i64 104, !52, i64 108, !52, i64 112, !52, i64 116, !52, i64 120, !52, i64 124, !47, i64 128, !52, i64 136, !52, i64 137, !52, i64 138, !52, i64 138, !52, i64 138, !52, i64 138, !52, i64 138, !52, i64 138, !52, i64 138, !52, i64 139, !52, i64 139, !52, i64 139, !52, i64 139, !52, i64 139, !52, i64 139, !52, i64 139}
!71 = !{!72, !47, i64 0}
!72 = !{!"control_flow_graph", !47, i64 0, !47, i64 8, !47, i64 16, !52, i64 24, !52, i64 28, !52, i64 32, !47, i64 40, !52, i64 48, !48, i64 52, !48, i64 60, !52, i64 68, !52, i64 72}
!73 = !{!74, !47, i64 56}
!74 = !{!"basic_block_def", !47, i64 0, !47, i64 8, !47, i64 16, !47, i64 24, !48, i64 32, !47, i64 48, !47, i64 56, !48, i64 64, !53, i64 72, !52, i64 80, !52, i64 84, !52, i64 88, !52, i64 92, !52, i64 96}
!75 = !{!72, !47, i64 8}
!76 = !{!"branch_weights", i32 1, i32 151}
!77 = !{!78, !47, i64 0}
!78 = !{!"rtl_bb_info", !47, i64 0, !47, i64 8, !47, i64 16, !47, i64 24, !52, i64 32}
!79 = !{!78, !47, i64 8}
!80 = !{!"branch_weights", i32 558066, i32 269497}
!81 = !{!"branch_weights", i32 550082, i32 7984}
!82 = !{!"branch_weights", i32 2441, i32 555625}
!83 = !{!"branch_weights", i32 286, i32 2155}
!84 = !{!"branch_weights", i32 248, i32 38}
!85 = !{!"branch_weights", i32 248, i32 0}
!86 = !{!87, !52, i64 0}
!87 = !{!"rtvec_def", !52, i64 0, !48, i64 8}
!88 = !{!"branch_weights", i32 1, i32 0}
!89 = !{!"branch_weights", i32 0, i32 61504}
!90 = !{!"branch_weights", i32 0, i32 248}
!91 = distinct !{!91, !63, !64}
!92 = !{!"branch_weights", i32 78, i32 555547}
!93 = !{!"branch_weights", i32 78, i32 0}
!94 = !{!"branch_weights", i32 67, i32 11}
!95 = !{!"branch_weights", i32 67, i32 0}
!96 = !{i32 0, i32 2}
!97 = distinct !{!97, !63, !64}
!98 = !{!99, !47, i64 24}
!99 = !{!"csa_reflist", !53, i64 0, !47, i64 8, !47, i64 16, !47, i64 24}
!100 = distinct !{!100, !63, !64}
!101 = !{!"branch_weights", i32 81760, i32 473798}
!102 = !{!"branch_weights", i32 88, i32 81672}
!103 = !{!"branch_weights", i32 0, i32 88}
!104 = !{!"branch_weights", i32 0, i32 -953640496}
!105 = !{!"branch_weights", i32 555558, i32 67}
!106 = !{!107, !47, i64 0}
!107 = !{!"record_stack_refs_data", !47, i64 0, !47, i64 8}
!108 = !{!107, !47, i64 8}
!109 = !{!"branch_weights", i32 489272, i32 68727}
!110 = !{!"branch_weights", i32 199, i32 557800}
!111 = !{!"branch_weights", i32 170, i32 29}
!112 = !{!"branch_weights", i32 29, i32 557800}
!113 = !{!"branch_weights", i32 0, i32 29}
!114 = !{!"branch_weights", i32 1, i32 231}
!115 = !{!"branch_weights", i32 231, i32 1}
!116 = !{!"branch_weights", i32 155465, i32 672098}
!117 = distinct !{!117, !63, !64}
!118 = !{!"branch_weights", i32 38, i32 155427}
!119 = !{!"branch_weights", i32 0, i32 155465}
!120 = !{!"branch_weights", i32 155465, i32 0}
!121 = !{!"branch_weights", i32 151, i32 621709}
!122 = distinct !{!122, !63, !64}
!123 = !{!"combine-stack-adj.c;single_set_for_csa"}
!124 = !{!"branch_weights", i32 558066, i32 0}
!125 = !{!99, !53, i64 0}
!126 = !{!99, !47, i64 16}
!127 = !{!99, !47, i64 8}
!128 = distinct !{!128, !63, !64}
!129 = distinct !{!129, !63, !64}
!130 = !{!"function_entry_count", i64 950}
!131 = !{!"combine-stack-adj.c;record_stack_refs"}
!132 = !{!"branch_weights", i32 0, i32 950}
!133 = !{!"branch_weights", i32 561, i32 130, i32 259}
!134 = !{!"branch_weights", i32 101, i32 29}
!135 = !{!"branch_weights", i32 29, i32 0}
!136 = !{!"branch_weights", i32 29, i32 230}
