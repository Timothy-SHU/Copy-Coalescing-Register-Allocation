; ModuleID = 'mode-switching.c'
source_filename = "mode-switching.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.rtl_opt_pass = type { %struct.opt_pass }
%struct.opt_pass = type { i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct._IO_FILE = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, [1 x i8], ptr, i64, ptr, ptr, ptr, ptr, i64, i32, [20 x i8] }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.machine_function = type { ptr, ptr, i32, i32, [4 x i32], i32, %struct.machine_cfa_state, i32, i8 }
%struct.machine_cfa_state = type { ptr, i64 }
%struct.control_flow_graph = type { ptr, ptr, ptr, i32, i32, i32, ptr, i32, [2 x i32], [2 x i32], i32, i32 }
%struct.basic_block_def = type { ptr, ptr, ptr, ptr, [2 x ptr], ptr, ptr, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%union.basic_block_il_dependent = type { ptr }
%struct.VEC_edge_base = type { i32, i32, [1 x ptr] }
%struct.edge_def = type { ptr, ptr, %union.edge_def_insns, ptr, ptr, i32, i32, i32, i32, i64 }
%union.edge_def_insns = type { ptr }
%struct.seginfo = type { i32, ptr, i32, ptr, i64 }
%struct.bb_info = type { ptr, i32 }
%struct.simple_bitmap_def = type { ptr, i32, i32, [1 x i64] }
%struct.rtl_bb_info = type { ptr, ptr, ptr, ptr, i32 }
%struct.rtx_def = type { i32, %union.u }
%union.u = type { %struct.block_symbol }
%struct.block_symbol = type { [3 x %union.rtunion_def], ptr, i64 }
%union.rtunion_def = type { ptr }
%struct.edge_list = type { i32, i32, ptr }

@stdout = external local_unnamed_addr global ptr, align 8
@stdin = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [8 x i8] c"mode_sw\00", align 1
@pass_mode_switching = dso_local local_unnamed_addr global %struct.rtl_opt_pass { %struct.opt_pass { i32 1, ptr @.str, ptr @gate_mode_switching, ptr @rest_of_handle_mode_switching, ptr null, ptr null, i32 0, i32 143, i32 0, i32 0, i32 0, i32 0, i32 132097 } }, align 8
@optimize_mode_switching.num_modes = internal unnamed_addr constant [4 x i32] [i32 5, i32 5, i32 5, i32 5], align 16
@cfun = external local_unnamed_addr global ptr, align 8
@antic = internal unnamed_addr global ptr null, align 8
@transp = internal unnamed_addr global ptr null, align 8
@comp = internal unnamed_addr global ptr null, align 8
@.str.1 = private unnamed_addr constant [17 x i8] c"mode-switching.c\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"./basic-block.h\00", align 1
@hard_regno_nregs = external local_unnamed_addr global [53 x [87 x i8]], align 16

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
  %8 = tail call i32 @__uflow(ptr noundef %0) #15
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
  %8 = tail call i32 @__uflow(ptr noundef %0) #15
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
  %8 = tail call i32 @__uflow(ptr noundef %1) #15
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
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #15
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
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #15
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
  %10 = tail call i32 @__overflow(ptr noundef %2, i32 noundef %9) #15
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
  %4 = tail call i64 @__getdelim(ptr noundef %0, ptr noundef %1, i32 noundef 10, ptr noundef %2) #15
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
  %5 = tail call ptr @__ctype_tolower_loc() #15
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
  %5 = tail call ptr @__ctype_toupper_loc() #15
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
  br i1 %23, label %7, label %24, !llvm.loop !51

24:                                               ; preds = %16, %20, %5
  %25 = phi ptr [ null, %5 ], [ %13, %16 ], [ null, %20 ]
  ret ptr %25
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local double @atof(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !34 {
  %2 = tail call double @strtod(ptr nocapture noundef %0, ptr noundef null)
  ret double %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef zeroext i8 @gate_mode_switching() #9 !prof !54 !PGOFuncName !55 {
  ret i8 1
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @rest_of_handle_mode_switching() #10 !prof !54 !PGOFuncName !56 {
  %1 = alloca [4 x i32], align 16
  %2 = alloca [4 x ptr], align 16
  %3 = alloca i64, align 8
  %4 = alloca [4 x i32], align 16
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %1) #15
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #15
  br label %8

8:                                                ; preds = %0, %33
  %9 = phi i64 [ 3, %0 ], [ %36, %33 ]
  %10 = phi i32 [ 0, %0 ], [ %35, %33 ]
  %11 = phi i32 [ 0, %0 ], [ %34, %33 ]
  %12 = load ptr, ptr @cfun, align 8, !tbaa !35
  %13 = getelementptr inbounds %struct.function, ptr %12, i64 0, i32 10
  %14 = load ptr, ptr %13, align 8, !tbaa !57
  %15 = getelementptr inbounds %struct.machine_function, ptr %14, i64 0, i32 4, i64 %9
  %16 = load i32, ptr %15, align 4, !tbaa !50
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %33, label %18, !prof !59

18:                                               ; preds = %8
  %19 = getelementptr inbounds %struct.function, ptr %12, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !60
  %21 = getelementptr inbounds %struct.control_flow_graph, ptr %20, i64 0, i32 5
  %22 = load i32, ptr %21, align 8, !tbaa !61
  %23 = sext i32 %22 to i64
  %24 = tail call ptr @xcalloc(i64 noundef %23, i64 noundef 16) #15
  %25 = sext i32 %10 to i64
  %26 = getelementptr inbounds [4 x ptr], ptr %2, i64 0, i64 %25
  store ptr %24, ptr %26, align 8, !tbaa !35
  %27 = add nsw i32 %10, 1
  %28 = getelementptr inbounds [4 x i32], ptr %1, i64 0, i64 %25
  %29 = trunc i64 %9 to i32
  store i32 %29, ptr %28, align 4, !tbaa !50
  %30 = getelementptr inbounds [4 x i32], ptr @optimize_mode_switching.num_modes, i64 0, i64 %9
  %31 = load i32, ptr %30, align 4, !tbaa !50
  %32 = tail call i32 @llvm.smax.i32(i32 %31, i32 %11)
  br label %33

33:                                               ; preds = %18, %8
  %34 = phi i32 [ %32, %18 ], [ %11, %8 ]
  %35 = phi i32 [ %27, %18 ], [ %10, %8 ]
  %36 = add nsw i64 %9, -1
  %37 = icmp eq i64 %9, 0
  br i1 %37, label %38, label %8, !prof !63, !llvm.loop !64

38:                                               ; preds = %33
  %39 = icmp eq i32 %35, 0
  br i1 %39, label %748, label %40, !prof !65

40:                                               ; preds = %38
  tail call void @df_analyze() #15
  %41 = load ptr, ptr @cfun, align 8, !tbaa !35
  %42 = getelementptr inbounds %struct.function, ptr %41, i64 0, i32 1
  %43 = load ptr, ptr %42, align 8, !tbaa !60
  %44 = getelementptr inbounds %struct.control_flow_graph, ptr %43, i64 0, i32 5
  %45 = load i32, ptr %44, align 8, !tbaa !61
  %46 = tail call ptr @sbitmap_vector_alloc(i32 noundef %45, i32 noundef %35) #15
  store ptr %46, ptr @antic, align 8, !tbaa !35
  %47 = load ptr, ptr @cfun, align 8, !tbaa !35
  %48 = getelementptr inbounds %struct.function, ptr %47, i64 0, i32 1
  %49 = load ptr, ptr %48, align 8, !tbaa !60
  %50 = getelementptr inbounds %struct.control_flow_graph, ptr %49, i64 0, i32 5
  %51 = load i32, ptr %50, align 8, !tbaa !61
  %52 = tail call ptr @sbitmap_vector_alloc(i32 noundef %51, i32 noundef %35) #15
  store ptr %52, ptr @transp, align 8, !tbaa !35
  %53 = load ptr, ptr @cfun, align 8, !tbaa !35
  %54 = getelementptr inbounds %struct.function, ptr %53, i64 0, i32 1
  %55 = load ptr, ptr %54, align 8, !tbaa !60
  %56 = getelementptr inbounds %struct.control_flow_graph, ptr %55, i64 0, i32 5
  %57 = load i32, ptr %56, align 8, !tbaa !61
  %58 = tail call ptr @sbitmap_vector_alloc(i32 noundef %57, i32 noundef %35) #15
  store ptr %58, ptr @comp, align 8, !tbaa !35
  %59 = load ptr, ptr @transp, align 8, !tbaa !35
  %60 = load ptr, ptr @cfun, align 8, !tbaa !35
  %61 = getelementptr inbounds %struct.function, ptr %60, i64 0, i32 1
  %62 = load ptr, ptr %61, align 8, !tbaa !60
  %63 = getelementptr inbounds %struct.control_flow_graph, ptr %62, i64 0, i32 5
  %64 = load i32, ptr %63, align 8, !tbaa !61
  tail call void @sbitmap_vector_ones(ptr noundef %59, i32 noundef %64) #15
  %65 = add i32 %35, -1
  %66 = icmp sgt i32 %35, 0
  br i1 %66, label %67, label %395

67:                                               ; preds = %40
  %68 = zext i32 %65 to i64
  br label %69

69:                                               ; preds = %67, %392
  %70 = phi i64 [ %68, %67 ], [ %393, %392 ]
  %71 = getelementptr inbounds [4 x i32], ptr %1, i64 0, i64 %70
  %72 = load i32, ptr %71, align 4, !tbaa !50
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds [4 x i32], ptr @optimize_mode_switching.num_modes, i64 0, i64 %73
  %75 = load i32, ptr %74, align 4, !tbaa !50
  %76 = getelementptr inbounds [4 x ptr], ptr %2, i64 0, i64 %70
  %77 = load ptr, ptr %76, align 8, !tbaa !35
  %78 = load ptr, ptr @cfun, align 8, !tbaa !35
  %79 = getelementptr inbounds %struct.function, ptr %78, i64 0, i32 1
  %80 = load ptr, ptr %79, align 8, !tbaa !60
  %81 = load ptr, ptr %80, align 8, !tbaa !66
  %82 = getelementptr inbounds %struct.basic_block_def, ptr %81, i64 0, i32 6
  %83 = load ptr, ptr %82, align 8, !tbaa !67
  %84 = getelementptr inbounds %struct.control_flow_graph, ptr %80, i64 0, i32 1
  %85 = load ptr, ptr %84, align 8, !tbaa !69
  %86 = icmp eq ptr %83, %85
  br i1 %86, label %392, label %87

87:                                               ; preds = %69
  %88 = lshr i64 %70, 6
  %89 = and i64 %88, 67108863
  %90 = and i64 %70, 63
  %91 = shl nuw i64 1, %90
  %92 = and i64 %70, 63
  %93 = shl nuw i64 1, %92
  %94 = xor i64 %93, -1
  %95 = lshr i64 %70, 6
  %96 = and i64 %95, 67108863
  %97 = lshr i64 %70, 6
  %98 = and i64 %97, 67108863
  %99 = and i64 %70, 63
  %100 = shl nuw i64 1, %99
  %101 = and i64 %70, 63
  %102 = shl nuw i64 1, %101
  %103 = xor i64 %102, -1
  %104 = lshr i64 %70, 6
  %105 = and i64 %104, 67108863
  br label %106

106:                                              ; preds = %87, %383
  %107 = phi ptr [ %83, %87 ], [ %385, %383 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #15
  store i64 0, ptr %3, align 8, !tbaa !70
  %108 = call ptr @df_get_live_in(ptr noundef %107) #15
  call void @reg_set_to_hard_reg_set(ptr noundef nonnull %3, ptr noundef %108) #15
  %109 = icmp eq ptr %107, null
  br label %110

110:                                              ; preds = %139, %106
  %111 = phi i32 [ 0, %106 ], [ %140, %139 ]
  br i1 %109, label %112, label %113

112:                                              ; preds = %110
  call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 687, ptr noundef nonnull @.str.2) #15
  br label %113

113:                                              ; preds = %112, %110
  %114 = load ptr, ptr %107, align 8, !tbaa !35
  %115 = icmp eq ptr %114, null
  br i1 %115, label %118, label %116

116:                                              ; preds = %113
  %117 = load i32, ptr %114, align 8, !tbaa !71
  br label %118

118:                                              ; preds = %116, %113
  %119 = phi i32 [ %117, %116 ], [ 0, %113 ]
  %120 = icmp eq i32 %119, %111
  br i1 %120, label %125, label %121

121:                                              ; preds = %118
  %122 = zext i32 %111 to i64
  %123 = getelementptr inbounds %struct.VEC_edge_base, ptr %114, i64 0, i32 2, i64 %122
  %124 = load ptr, ptr %123, align 8, !tbaa !35
  br label %125

125:                                              ; preds = %121, %118
  %126 = phi ptr [ %124, %121 ], [ null, %118 ]
  br i1 %120, label %141, label %127

127:                                              ; preds = %125
  %128 = getelementptr inbounds %struct.edge_def, ptr %126, i64 0, i32 7
  %129 = load i32, ptr %128, align 8, !tbaa !73
  %130 = and i32 %129, 14
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %132, label %141

132:                                              ; preds = %127
  br i1 %115, label %135, label %133

133:                                              ; preds = %132
  %134 = load i32, ptr %114, align 8, !tbaa !71
  br label %135

135:                                              ; preds = %133, %132
  %136 = phi i32 [ %134, %133 ], [ 0, %132 ]
  %137 = icmp ult i32 %111, %136
  br i1 %137, label %139, label %138

138:                                              ; preds = %135
  call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 738, ptr noundef nonnull @.str.2) #15
  br label %139

139:                                              ; preds = %138, %135
  %140 = add i32 %111, 1
  br label %110, !llvm.loop !75

141:                                              ; preds = %127, %125
  %142 = icmp eq ptr %126, null
  br i1 %142, label %187, label %143

143:                                              ; preds = %141
  %144 = getelementptr inbounds %struct.basic_block_def, ptr %107, i64 0, i32 7
  %145 = load ptr, ptr %144, align 8, !tbaa !46
  %146 = load ptr, ptr %145, align 8, !tbaa !76
  %147 = getelementptr inbounds %struct.basic_block_def, ptr %107, i64 0, i32 9
  %148 = load i32, ptr %147, align 8, !tbaa !78
  %149 = load i64, ptr %3, align 8, !tbaa !70
  %150 = call ptr @xmalloc(i64 noundef 40) #15
  store i32 %75, ptr %150, align 8, !tbaa !79
  %151 = getelementptr inbounds %struct.seginfo, ptr %150, i64 0, i32 1
  store ptr %146, ptr %151, align 8, !tbaa !81
  %152 = getelementptr inbounds %struct.seginfo, ptr %150, i64 0, i32 2
  store i32 %148, ptr %152, align 8, !tbaa !82
  %153 = getelementptr inbounds %struct.seginfo, ptr %150, i64 0, i32 3
  store ptr null, ptr %153, align 8, !tbaa !83
  %154 = getelementptr inbounds %struct.seginfo, ptr %150, i64 0, i32 4
  store i64 %149, ptr %154, align 8, !tbaa !84
  %155 = load i32, ptr %147, align 8, !tbaa !78
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds %struct.bb_info, ptr %77, i64 %156
  %158 = load ptr, ptr %157, align 8, !tbaa !85
  %159 = icmp eq ptr %158, null
  br i1 %159, label %167, label %160

160:                                              ; preds = %143, %160
  %161 = phi ptr [ %163, %160 ], [ %158, %143 ]
  %162 = getelementptr inbounds %struct.seginfo, ptr %161, i64 0, i32 3
  %163 = load ptr, ptr %162, align 8, !tbaa !83
  %164 = icmp eq ptr %163, null
  br i1 %164, label %165, label %160, !llvm.loop !87

165:                                              ; preds = %160
  %166 = getelementptr inbounds %struct.seginfo, ptr %161, i64 0, i32 3
  br label %167

167:                                              ; preds = %143, %165
  %168 = phi ptr [ %166, %165 ], [ %157, %143 ]
  store ptr %150, ptr %168, align 8, !tbaa !35
  %169 = load ptr, ptr @transp, align 8, !tbaa !35
  %170 = getelementptr inbounds ptr, ptr %169, i64 %156
  %171 = load ptr, ptr %170, align 8, !tbaa !35
  %172 = load ptr, ptr %171, align 8, !tbaa !88
  %173 = icmp eq ptr %172, null
  br i1 %173, label %183, label %174

174:                                              ; preds = %167
  %175 = getelementptr inbounds %struct.simple_bitmap_def, ptr %171, i64 0, i32 3, i64 %89
  %176 = load i64, ptr %175, align 8, !tbaa !70
  %177 = and i64 %176, %91
  %178 = icmp eq i64 %177, 0
  br i1 %178, label %183, label %179

179:                                              ; preds = %174
  %180 = getelementptr inbounds i8, ptr %172, i64 %89
  %181 = load i8, ptr %180, align 1, !tbaa !46
  %182 = add i8 %181, -1
  store i8 %182, ptr %180, align 1, !tbaa !46
  br label %183

183:                                              ; preds = %179, %174, %167
  %184 = getelementptr inbounds %struct.simple_bitmap_def, ptr %171, i64 0, i32 3, i64 %96
  %185 = load i64, ptr %184, align 8, !tbaa !70
  %186 = and i64 %185, %94
  store i64 %186, ptr %184, align 8, !tbaa !70
  br label %187

187:                                              ; preds = %183, %141
  %188 = getelementptr inbounds %struct.basic_block_def, ptr %107, i64 0, i32 7
  %189 = load ptr, ptr %188, align 8, !tbaa !46
  %190 = load ptr, ptr %189, align 8, !tbaa !46
  %191 = icmp eq ptr %190, null
  br i1 %191, label %352, label %192

192:                                              ; preds = %187
  %193 = getelementptr inbounds %struct.basic_block_def, ptr %107, i64 0, i32 9
  br label %194

194:                                              ; preds = %192, %347
  %195 = phi ptr [ %190, %192 ], [ %350, %347 ]
  %196 = phi i32 [ %75, %192 ], [ %348, %347 ]
  %197 = load ptr, ptr %188, align 8, !tbaa !46
  %198 = getelementptr inbounds %struct.rtl_bb_info, ptr %197, i64 0, i32 1
  %199 = load ptr, ptr %198, align 8, !tbaa !90
  %200 = getelementptr inbounds %struct.rtx_def, ptr %199, i64 0, i32 1, i32 0, i32 0, i64 2
  %201 = load ptr, ptr %200, align 8, !tbaa !46
  %202 = icmp eq ptr %195, %201
  br i1 %202, label %352, label %203

203:                                              ; preds = %194
  %204 = load i32, ptr %195, align 8
  %205 = and i32 %204, 65535
  %206 = add nsw i32 %205, -7
  %207 = icmp ult i32 %206, 4
  br i1 %207, label %208, label %347

208:                                              ; preds = %203
  %209 = call i32 @ix86_mode_needed(i32 noundef %72, ptr noundef nonnull %195) #15
  %210 = icmp eq i32 %209, %75
  %211 = icmp eq i32 %209, %196
  %212 = select i1 %210, i1 true, i1 %211
  br i1 %212, label %253, label %213

213:                                              ; preds = %208
  %214 = load i32, ptr %193, align 8, !tbaa !78
  %215 = load i64, ptr %3, align 8, !tbaa !70
  %216 = call ptr @xmalloc(i64 noundef 40) #15
  store i32 %209, ptr %216, align 8, !tbaa !79
  %217 = getelementptr inbounds %struct.seginfo, ptr %216, i64 0, i32 1
  store ptr %195, ptr %217, align 8, !tbaa !81
  %218 = getelementptr inbounds %struct.seginfo, ptr %216, i64 0, i32 2
  store i32 %214, ptr %218, align 8, !tbaa !82
  %219 = getelementptr inbounds %struct.seginfo, ptr %216, i64 0, i32 3
  store ptr null, ptr %219, align 8, !tbaa !83
  %220 = getelementptr inbounds %struct.seginfo, ptr %216, i64 0, i32 4
  store i64 %215, ptr %220, align 8, !tbaa !84
  %221 = load i32, ptr %193, align 8, !tbaa !78
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds %struct.bb_info, ptr %77, i64 %222
  %224 = load ptr, ptr %223, align 8, !tbaa !85
  %225 = icmp eq ptr %224, null
  br i1 %225, label %233, label %226

226:                                              ; preds = %213, %226
  %227 = phi ptr [ %229, %226 ], [ %224, %213 ]
  %228 = getelementptr inbounds %struct.seginfo, ptr %227, i64 0, i32 3
  %229 = load ptr, ptr %228, align 8, !tbaa !83
  %230 = icmp eq ptr %229, null
  br i1 %230, label %231, label %226, !llvm.loop !87

231:                                              ; preds = %226
  %232 = getelementptr inbounds %struct.seginfo, ptr %227, i64 0, i32 3
  br label %233

233:                                              ; preds = %213, %231
  %234 = phi ptr [ %232, %231 ], [ %223, %213 ]
  store ptr %216, ptr %234, align 8, !tbaa !35
  %235 = load ptr, ptr @transp, align 8, !tbaa !35
  %236 = getelementptr inbounds ptr, ptr %235, i64 %222
  %237 = load ptr, ptr %236, align 8, !tbaa !35
  %238 = load ptr, ptr %237, align 8, !tbaa !88
  %239 = icmp eq ptr %238, null
  br i1 %239, label %249, label %240

240:                                              ; preds = %233
  %241 = getelementptr inbounds %struct.simple_bitmap_def, ptr %237, i64 0, i32 3, i64 %98
  %242 = load i64, ptr %241, align 8, !tbaa !70
  %243 = and i64 %242, %100
  %244 = icmp eq i64 %243, 0
  br i1 %244, label %249, label %245

245:                                              ; preds = %240
  %246 = getelementptr inbounds i8, ptr %238, i64 %98
  %247 = load i8, ptr %246, align 1, !tbaa !46
  %248 = add i8 %247, -1
  store i8 %248, ptr %246, align 1, !tbaa !46
  br label %249

249:                                              ; preds = %245, %240, %233
  %250 = getelementptr inbounds %struct.simple_bitmap_def, ptr %237, i64 0, i32 3, i64 %105
  %251 = load i64, ptr %250, align 8, !tbaa !70
  %252 = and i64 %251, %103
  store i64 %252, ptr %250, align 8, !tbaa !70
  br label %253

253:                                              ; preds = %249, %208
  %254 = phi i32 [ %209, %249 ], [ %196, %208 ]
  %255 = getelementptr inbounds %struct.rtx_def, ptr %195, i64 1, i32 1, i32 0, i32 0, i64 1
  %256 = load ptr, ptr %255, align 8, !tbaa !46
  %257 = icmp eq ptr %256, null
  br i1 %257, label %300, label %258

258:                                              ; preds = %253
  %259 = load i64, ptr %3, align 8, !tbaa !70
  br label %260

260:                                              ; preds = %258, %295
  %261 = phi ptr [ %298, %295 ], [ %256, %258 ]
  %262 = phi i64 [ %296, %295 ], [ %259, %258 ]
  %263 = load i32, ptr %261, align 8
  %264 = and i32 %263, 16711680
  %265 = icmp eq i32 %264, 65536
  br i1 %265, label %266, label %295

266:                                              ; preds = %260
  %267 = getelementptr inbounds %struct.rtx_def, ptr %261, i64 0, i32 1
  %268 = load ptr, ptr %267, align 8, !tbaa !46
  %269 = load i32, ptr %268, align 8
  %270 = and i32 %269, 65535
  %271 = icmp eq i32 %270, 37
  br i1 %271, label %272, label %295

272:                                              ; preds = %266
  %273 = getelementptr inbounds %struct.rtx_def, ptr %268, i64 0, i32 1
  %274 = load i32, ptr %273, align 8, !tbaa !46
  %275 = icmp slt i32 %274, 53
  br i1 %275, label %276, label %295

276:                                              ; preds = %272
  %277 = lshr i32 %269, 16
  %278 = and i32 %277, 255
  %279 = zext i32 %274 to i64
  %280 = zext nneg i32 %278 to i64
  %281 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %279, i64 %280
  %282 = load i8, ptr %281, align 1, !tbaa !46
  %283 = zext i8 %282 to i32
  %284 = add nsw i32 %274, %283
  br label %285

285:                                              ; preds = %285, %276
  %286 = phi i64 [ %262, %276 ], [ %291, %285 ]
  %287 = phi i32 [ %274, %276 ], [ %292, %285 ]
  %288 = zext nneg i32 %287 to i64
  %289 = shl nuw i64 1, %288
  %290 = xor i64 %289, -1
  %291 = and i64 %286, %290
  %292 = add i32 %287, 1
  %293 = icmp ult i32 %292, %284
  br i1 %293, label %285, label %294, !llvm.loop !91

294:                                              ; preds = %285
  store i64 %291, ptr %3, align 8, !tbaa !70
  br label %295

295:                                              ; preds = %294, %272, %266, %260
  %296 = phi i64 [ %291, %294 ], [ %262, %272 ], [ %262, %266 ], [ %262, %260 ]
  %297 = getelementptr inbounds %struct.rtx_def, ptr %261, i64 0, i32 1, i32 0, i32 0, i64 1
  %298 = load ptr, ptr %297, align 8, !tbaa !46
  %299 = icmp eq ptr %298, null
  br i1 %299, label %300, label %260, !llvm.loop !92

300:                                              ; preds = %295, %253
  %301 = getelementptr inbounds %struct.rtx_def, ptr %195, i64 1
  %302 = load ptr, ptr %301, align 8, !tbaa !46
  call void @note_stores(ptr noundef %302, ptr noundef nonnull @reg_becomes_live, ptr noundef nonnull %3) #15
  %303 = load ptr, ptr %255, align 8, !tbaa !46
  %304 = icmp eq ptr %303, null
  br i1 %304, label %347, label %305

305:                                              ; preds = %300
  %306 = load i64, ptr %3, align 8, !tbaa !70
  br label %307

307:                                              ; preds = %305, %342
  %308 = phi ptr [ %345, %342 ], [ %303, %305 ]
  %309 = phi i64 [ %343, %342 ], [ %306, %305 ]
  %310 = load i32, ptr %308, align 8
  %311 = and i32 %310, 16711680
  %312 = icmp eq i32 %311, 393216
  br i1 %312, label %313, label %342

313:                                              ; preds = %307
  %314 = getelementptr inbounds %struct.rtx_def, ptr %308, i64 0, i32 1
  %315 = load ptr, ptr %314, align 8, !tbaa !46
  %316 = load i32, ptr %315, align 8
  %317 = and i32 %316, 65535
  %318 = icmp eq i32 %317, 37
  br i1 %318, label %319, label %342

319:                                              ; preds = %313
  %320 = getelementptr inbounds %struct.rtx_def, ptr %315, i64 0, i32 1
  %321 = load i32, ptr %320, align 8, !tbaa !46
  %322 = icmp slt i32 %321, 53
  br i1 %322, label %323, label %342

323:                                              ; preds = %319
  %324 = lshr i32 %316, 16
  %325 = and i32 %324, 255
  %326 = zext i32 %321 to i64
  %327 = zext nneg i32 %325 to i64
  %328 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %326, i64 %327
  %329 = load i8, ptr %328, align 1, !tbaa !46
  %330 = zext i8 %329 to i32
  %331 = add nsw i32 %321, %330
  br label %332

332:                                              ; preds = %332, %323
  %333 = phi i64 [ %309, %323 ], [ %338, %332 ]
  %334 = phi i32 [ %321, %323 ], [ %339, %332 ]
  %335 = zext nneg i32 %334 to i64
  %336 = shl nuw i64 1, %335
  %337 = xor i64 %336, -1
  %338 = and i64 %333, %337
  %339 = add i32 %334, 1
  %340 = icmp ult i32 %339, %331
  br i1 %340, label %332, label %341, !llvm.loop !91

341:                                              ; preds = %332
  store i64 %338, ptr %3, align 8, !tbaa !70
  br label %342

342:                                              ; preds = %341, %319, %313, %307
  %343 = phi i64 [ %338, %341 ], [ %309, %319 ], [ %309, %313 ], [ %309, %307 ]
  %344 = getelementptr inbounds %struct.rtx_def, ptr %308, i64 0, i32 1, i32 0, i32 0, i64 1
  %345 = load ptr, ptr %344, align 8, !tbaa !46
  %346 = icmp eq ptr %345, null
  br i1 %346, label %347, label %307, !llvm.loop !93

347:                                              ; preds = %342, %300, %203
  %348 = phi i32 [ %196, %203 ], [ %254, %300 ], [ %254, %342 ]
  %349 = getelementptr inbounds %struct.rtx_def, ptr %195, i64 0, i32 1, i32 0, i32 0, i64 2
  %350 = load ptr, ptr %349, align 8, !tbaa !46
  %351 = icmp eq ptr %350, null
  br i1 %351, label %352, label %194, !llvm.loop !94

352:                                              ; preds = %347, %194, %187
  %353 = phi i32 [ %75, %187 ], [ %348, %347 ], [ %196, %194 ]
  %354 = getelementptr inbounds %struct.basic_block_def, ptr %107, i64 0, i32 9
  %355 = load i32, ptr %354, align 8, !tbaa !78
  %356 = sext i32 %355 to i64
  %357 = getelementptr inbounds %struct.bb_info, ptr %77, i64 %356, i32 1
  store i32 %353, ptr %357, align 8, !tbaa !95
  %358 = icmp eq i32 %353, %75
  br i1 %358, label %359, label %383

359:                                              ; preds = %352
  %360 = load ptr, ptr %188, align 8, !tbaa !46
  %361 = getelementptr inbounds %struct.rtl_bb_info, ptr %360, i64 0, i32 1
  %362 = load ptr, ptr %361, align 8, !tbaa !90
  %363 = load i64, ptr %3, align 8, !tbaa !70
  %364 = call ptr @xmalloc(i64 noundef 40) #15
  store i32 %75, ptr %364, align 8, !tbaa !79
  %365 = getelementptr inbounds %struct.seginfo, ptr %364, i64 0, i32 1
  store ptr %362, ptr %365, align 8, !tbaa !81
  %366 = getelementptr inbounds %struct.seginfo, ptr %364, i64 0, i32 2
  store i32 %355, ptr %366, align 8, !tbaa !82
  %367 = getelementptr inbounds %struct.seginfo, ptr %364, i64 0, i32 3
  store ptr null, ptr %367, align 8, !tbaa !83
  %368 = getelementptr inbounds %struct.seginfo, ptr %364, i64 0, i32 4
  store i64 %363, ptr %368, align 8, !tbaa !84
  %369 = load i32, ptr %354, align 8, !tbaa !78
  %370 = sext i32 %369 to i64
  %371 = getelementptr inbounds %struct.bb_info, ptr %77, i64 %370
  %372 = load ptr, ptr %371, align 8, !tbaa !85
  %373 = icmp eq ptr %372, null
  br i1 %373, label %381, label %374

374:                                              ; preds = %359, %374
  %375 = phi ptr [ %377, %374 ], [ %372, %359 ]
  %376 = getelementptr inbounds %struct.seginfo, ptr %375, i64 0, i32 3
  %377 = load ptr, ptr %376, align 8, !tbaa !83
  %378 = icmp eq ptr %377, null
  br i1 %378, label %379, label %374, !llvm.loop !87

379:                                              ; preds = %374
  %380 = getelementptr inbounds %struct.seginfo, ptr %375, i64 0, i32 3
  br label %381

381:                                              ; preds = %359, %379
  %382 = phi ptr [ %380, %379 ], [ %371, %359 ]
  store ptr %364, ptr %382, align 8, !tbaa !35
  br label %383

383:                                              ; preds = %381, %352
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #15
  %384 = getelementptr inbounds %struct.basic_block_def, ptr %107, i64 0, i32 6
  %385 = load ptr, ptr %384, align 8, !tbaa !67
  %386 = load ptr, ptr @cfun, align 8, !tbaa !35
  %387 = getelementptr inbounds %struct.function, ptr %386, i64 0, i32 1
  %388 = load ptr, ptr %387, align 8, !tbaa !60
  %389 = getelementptr inbounds %struct.control_flow_graph, ptr %388, i64 0, i32 1
  %390 = load ptr, ptr %389, align 8, !tbaa !69
  %391 = icmp eq ptr %385, %390
  br i1 %391, label %392, label %106, !llvm.loop !96

392:                                              ; preds = %383, %69
  %393 = add nsw i64 %70, -1
  %394 = icmp sgt i64 %70, 0
  br i1 %394, label %69, label %395, !llvm.loop !97

395:                                              ; preds = %392, %40
  %396 = load ptr, ptr @cfun, align 8, !tbaa !35
  %397 = getelementptr inbounds %struct.function, ptr %396, i64 0, i32 1
  %398 = load ptr, ptr %397, align 8, !tbaa !60
  %399 = getelementptr inbounds %struct.control_flow_graph, ptr %398, i64 0, i32 5
  %400 = load i32, ptr %399, align 8, !tbaa !61
  %401 = call ptr @sbitmap_vector_alloc(i32 noundef %400, i32 noundef %35) #15
  %402 = icmp sgt i32 %34, 0
  br i1 %402, label %403, label %409

403:                                              ; preds = %395
  %404 = icmp sgt i32 %35, 0
  %405 = icmp sgt i32 %35, 0
  %406 = zext i32 %65 to i64
  br label %414

407:                                              ; preds = %664
  %408 = icmp eq i32 %665, 0
  br label %409

409:                                              ; preds = %407, %395
  %410 = phi i1 [ true, %395 ], [ %408, %407 ]
  %411 = icmp sgt i32 %35, 0
  br i1 %411, label %412, label %743

412:                                              ; preds = %409
  %413 = zext i32 %65 to i64
  br label %670

414:                                              ; preds = %403, %664
  %415 = phi i32 [ 0, %403 ], [ %665, %664 ]
  %416 = phi i32 [ 0, %403 ], [ %668, %664 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #15
  %417 = load ptr, ptr @antic, align 8, !tbaa !35
  %418 = load ptr, ptr @cfun, align 8, !tbaa !35
  %419 = getelementptr inbounds %struct.function, ptr %418, i64 0, i32 1
  %420 = load ptr, ptr %419, align 8, !tbaa !60
  %421 = getelementptr inbounds %struct.control_flow_graph, ptr %420, i64 0, i32 5
  %422 = load i32, ptr %421, align 8, !tbaa !61
  call void @sbitmap_vector_zero(ptr noundef %417, i32 noundef %422) #15
  %423 = load ptr, ptr @comp, align 8, !tbaa !35
  %424 = load ptr, ptr @cfun, align 8, !tbaa !35
  %425 = getelementptr inbounds %struct.function, ptr %424, i64 0, i32 1
  %426 = load ptr, ptr %425, align 8, !tbaa !60
  %427 = getelementptr inbounds %struct.control_flow_graph, ptr %426, i64 0, i32 5
  %428 = load i32, ptr %427, align 8, !tbaa !61
  call void @sbitmap_vector_zero(ptr noundef %423, i32 noundef %428) #15
  br i1 %404, label %429, label %526

429:                                              ; preds = %414
  %430 = load ptr, ptr @antic, align 8
  %431 = load ptr, ptr @comp, align 8
  br label %432

432:                                              ; preds = %429, %523
  %433 = phi i64 [ %406, %429 ], [ %524, %523 ]
  %434 = getelementptr inbounds [4 x i32], ptr %4, i64 0, i64 %433
  store i32 %416, ptr %434, align 4, !tbaa !50
  %435 = getelementptr inbounds [4 x ptr], ptr %2, i64 0, i64 %433
  %436 = load ptr, ptr %435, align 8, !tbaa !35
  %437 = load ptr, ptr @cfun, align 8, !tbaa !35
  %438 = getelementptr inbounds %struct.function, ptr %437, i64 0, i32 1
  %439 = load ptr, ptr %438, align 8, !tbaa !60
  %440 = load ptr, ptr %439, align 8, !tbaa !66
  %441 = getelementptr inbounds %struct.basic_block_def, ptr %440, i64 0, i32 6
  %442 = load ptr, ptr %441, align 8, !tbaa !67
  %443 = getelementptr inbounds %struct.control_flow_graph, ptr %439, i64 0, i32 1
  %444 = load ptr, ptr %443, align 8, !tbaa !69
  %445 = icmp eq ptr %442, %444
  br i1 %445, label %523, label %446

446:                                              ; preds = %432
  %447 = lshr i64 %433, 6
  %448 = and i64 %447, 67108863
  %449 = and i64 %433, 63
  %450 = shl nuw i64 1, %449
  %451 = and i64 %433, 63
  %452 = shl nuw i64 1, %451
  %453 = lshr i64 %433, 6
  %454 = and i64 %453, 67108863
  %455 = lshr i64 %433, 6
  %456 = and i64 %455, 67108863
  %457 = and i64 %433, 63
  %458 = shl nuw i64 1, %457
  %459 = and i64 %433, 63
  %460 = shl nuw i64 1, %459
  %461 = lshr i64 %433, 6
  %462 = and i64 %461, 67108863
  br label %463

463:                                              ; preds = %446, %514
  %464 = phi ptr [ %442, %446 ], [ %516, %514 ]
  %465 = getelementptr inbounds %struct.basic_block_def, ptr %464, i64 0, i32 9
  %466 = load i32, ptr %465, align 8, !tbaa !78
  %467 = sext i32 %466 to i64
  %468 = getelementptr inbounds %struct.bb_info, ptr %436, i64 %467
  %469 = load ptr, ptr %468, align 8, !tbaa !85
  %470 = load i32, ptr %469, align 8, !tbaa !79
  %471 = icmp eq i32 %470, %416
  br i1 %471, label %472, label %490

472:                                              ; preds = %463
  %473 = getelementptr inbounds ptr, ptr %430, i64 %467
  %474 = load ptr, ptr %473, align 8, !tbaa !35
  %475 = load ptr, ptr %474, align 8, !tbaa !88
  %476 = icmp eq ptr %475, null
  br i1 %476, label %486, label %477

477:                                              ; preds = %472
  %478 = getelementptr inbounds %struct.simple_bitmap_def, ptr %474, i64 0, i32 3, i64 %448
  %479 = load i64, ptr %478, align 8, !tbaa !70
  %480 = and i64 %479, %450
  %481 = icmp eq i64 %480, 0
  br i1 %481, label %482, label %486

482:                                              ; preds = %477
  %483 = getelementptr inbounds i8, ptr %475, i64 %448
  %484 = load i8, ptr %483, align 1, !tbaa !46
  %485 = add i8 %484, 1
  store i8 %485, ptr %483, align 1, !tbaa !46
  br label %486

486:                                              ; preds = %482, %477, %472
  %487 = getelementptr inbounds %struct.simple_bitmap_def, ptr %474, i64 0, i32 3, i64 %454
  %488 = load i64, ptr %487, align 8, !tbaa !70
  %489 = or i64 %488, %452
  store i64 %489, ptr %487, align 8, !tbaa !70
  br label %490

490:                                              ; preds = %486, %463
  %491 = load i32, ptr %465, align 8, !tbaa !78
  %492 = sext i32 %491 to i64
  %493 = getelementptr inbounds %struct.bb_info, ptr %436, i64 %492, i32 1
  %494 = load i32, ptr %493, align 8, !tbaa !95
  %495 = icmp eq i32 %494, %416
  br i1 %495, label %496, label %514

496:                                              ; preds = %490
  %497 = getelementptr inbounds ptr, ptr %431, i64 %492
  %498 = load ptr, ptr %497, align 8, !tbaa !35
  %499 = load ptr, ptr %498, align 8, !tbaa !88
  %500 = icmp eq ptr %499, null
  br i1 %500, label %510, label %501

501:                                              ; preds = %496
  %502 = getelementptr inbounds %struct.simple_bitmap_def, ptr %498, i64 0, i32 3, i64 %456
  %503 = load i64, ptr %502, align 8, !tbaa !70
  %504 = and i64 %503, %458
  %505 = icmp eq i64 %504, 0
  br i1 %505, label %506, label %510

506:                                              ; preds = %501
  %507 = getelementptr inbounds i8, ptr %499, i64 %456
  %508 = load i8, ptr %507, align 1, !tbaa !46
  %509 = add i8 %508, 1
  store i8 %509, ptr %507, align 1, !tbaa !46
  br label %510

510:                                              ; preds = %506, %501, %496
  %511 = getelementptr inbounds %struct.simple_bitmap_def, ptr %498, i64 0, i32 3, i64 %462
  %512 = load i64, ptr %511, align 8, !tbaa !70
  %513 = or i64 %512, %460
  store i64 %513, ptr %511, align 8, !tbaa !70
  br label %514

514:                                              ; preds = %510, %490
  %515 = getelementptr inbounds %struct.basic_block_def, ptr %464, i64 0, i32 6
  %516 = load ptr, ptr %515, align 8, !tbaa !67
  %517 = load ptr, ptr @cfun, align 8, !tbaa !35
  %518 = getelementptr inbounds %struct.function, ptr %517, i64 0, i32 1
  %519 = load ptr, ptr %518, align 8, !tbaa !60
  %520 = getelementptr inbounds %struct.control_flow_graph, ptr %519, i64 0, i32 1
  %521 = load ptr, ptr %520, align 8, !tbaa !69
  %522 = icmp eq ptr %516, %521
  br i1 %522, label %523, label %463, !llvm.loop !98

523:                                              ; preds = %514, %432
  %524 = add nsw i64 %433, -1
  %525 = icmp sgt i64 %433, 0
  br i1 %525, label %432, label %526, !llvm.loop !99

526:                                              ; preds = %523, %414
  %527 = load ptr, ptr @cfun, align 8, !tbaa !35
  %528 = getelementptr inbounds %struct.function, ptr %527, i64 0, i32 1
  %529 = load ptr, ptr %528, align 8, !tbaa !60
  %530 = load ptr, ptr %529, align 8, !tbaa !66
  %531 = getelementptr inbounds %struct.basic_block_def, ptr %530, i64 0, i32 6
  %532 = load ptr, ptr %531, align 8, !tbaa !67
  %533 = getelementptr inbounds %struct.control_flow_graph, ptr %529, i64 0, i32 1
  %534 = load ptr, ptr %533, align 8, !tbaa !69
  %535 = icmp eq ptr %532, %534
  br i1 %535, label %554, label %536

536:                                              ; preds = %526, %536
  %537 = phi ptr [ %547, %536 ], [ %532, %526 ]
  %538 = getelementptr inbounds %struct.basic_block_def, ptr %537, i64 0, i32 9
  %539 = load i32, ptr %538, align 8, !tbaa !78
  %540 = sext i32 %539 to i64
  %541 = getelementptr inbounds ptr, ptr %401, i64 %540
  %542 = load ptr, ptr %541, align 8, !tbaa !35
  %543 = load ptr, ptr @transp, align 8, !tbaa !35
  %544 = getelementptr inbounds ptr, ptr %543, i64 %540
  %545 = load ptr, ptr %544, align 8, !tbaa !35
  call void @sbitmap_not(ptr noundef %542, ptr noundef %545) #15
  %546 = getelementptr inbounds %struct.basic_block_def, ptr %537, i64 0, i32 6
  %547 = load ptr, ptr %546, align 8, !tbaa !67
  %548 = load ptr, ptr @cfun, align 8, !tbaa !35
  %549 = getelementptr inbounds %struct.function, ptr %548, i64 0, i32 1
  %550 = load ptr, ptr %549, align 8, !tbaa !60
  %551 = getelementptr inbounds %struct.control_flow_graph, ptr %550, i64 0, i32 1
  %552 = load ptr, ptr %551, align 8, !tbaa !69
  %553 = icmp eq ptr %547, %552
  br i1 %553, label %554, label %536, !llvm.loop !100

554:                                              ; preds = %536, %526
  %555 = load ptr, ptr @transp, align 8, !tbaa !35
  %556 = load ptr, ptr @comp, align 8, !tbaa !35
  %557 = load ptr, ptr @antic, align 8, !tbaa !35
  %558 = call ptr @pre_edge_lcm(i32 noundef %35, ptr noundef %555, ptr noundef %556, ptr noundef %557, ptr noundef %401, ptr noundef nonnull %6, ptr noundef nonnull %5) #15
  br i1 %405, label %559, label %664

559:                                              ; preds = %554
  %560 = getelementptr inbounds %struct.edge_list, ptr %558, i64 0, i32 1
  %561 = getelementptr inbounds %struct.edge_list, ptr %558, i64 0, i32 2
  br label %562

562:                                              ; preds = %559, %661
  %563 = phi i64 [ %406, %559 ], [ %662, %661 ]
  %564 = phi i32 [ %415, %559 ], [ %615, %661 ]
  %565 = getelementptr inbounds [4 x i32], ptr %1, i64 0, i64 %563
  %566 = load i32, ptr %565, align 4, !tbaa !50
  %567 = sext i32 %566 to i64
  %568 = getelementptr inbounds [4 x i32], ptr @optimize_mode_switching.num_modes, i64 0, i64 %567
  %569 = load i32, ptr %568, align 4, !tbaa !50
  %570 = load i32, ptr %560, align 4, !tbaa !101
  %571 = icmp sgt i32 %570, 0
  br i1 %571, label %572, label %614

572:                                              ; preds = %562
  %573 = lshr i64 %563, 6
  %574 = and i64 %573, 67108863
  %575 = and i64 %563, 63
  %576 = shl nuw i64 1, %575
  %577 = getelementptr inbounds [4 x i32], ptr %4, i64 0, i64 %563
  %578 = zext nneg i32 %570 to i64
  br label %579

579:                                              ; preds = %572, %611
  %580 = phi i64 [ %578, %572 ], [ %582, %611 ]
  %581 = phi i32 [ %564, %572 ], [ %612, %611 ]
  %582 = add nsw i64 %580, -1
  %583 = load ptr, ptr %561, align 8, !tbaa !103
  %584 = getelementptr inbounds ptr, ptr %583, i64 %582
  %585 = load ptr, ptr %584, align 8, !tbaa !35
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #15
  %586 = getelementptr inbounds %struct.edge_def, ptr %585, i64 0, i32 3
  store ptr null, ptr %586, align 8, !tbaa !104
  %587 = load ptr, ptr %6, align 8, !tbaa !35
  %588 = getelementptr inbounds ptr, ptr %587, i64 %582
  %589 = load ptr, ptr %588, align 8, !tbaa !35
  %590 = getelementptr inbounds %struct.simple_bitmap_def, ptr %589, i64 0, i32 3, i64 %574
  %591 = load i64, ptr %590, align 8, !tbaa !70
  %592 = and i64 %591, %576
  %593 = icmp eq i64 %592, 0
  br i1 %593, label %611, label %594

594:                                              ; preds = %579
  store ptr inttoptr (i64 1 to ptr), ptr %586, align 8, !tbaa !104
  %595 = load i32, ptr %577, align 4, !tbaa !50
  %596 = load ptr, ptr %585, align 8, !tbaa !105
  store i64 0, ptr %7, align 8, !tbaa !70
  %597 = call ptr @df_get_live_out(ptr noundef %596) #15
  call void @reg_set_to_hard_reg_set(ptr noundef nonnull %7, ptr noundef %597) #15
  call void @start_sequence() #15
  %598 = add i32 %595, -6
  %599 = icmp ult i32 %598, -2
  br i1 %599, label %600, label %601

600:                                              ; preds = %594
  call void @emit_i387_cw_initialization(i32 noundef %595) #15
  br label %601

601:                                              ; preds = %600, %594
  %602 = call ptr @get_insns() #15
  call void @end_sequence() #15
  %603 = icmp eq ptr %602, null
  br i1 %603, label %611, label %604

604:                                              ; preds = %601
  %605 = getelementptr inbounds %struct.edge_def, ptr %585, i64 0, i32 7
  %606 = load i32, ptr %605, align 8, !tbaa !73
  %607 = and i32 %606, 2
  %608 = icmp eq i32 %607, 0
  br i1 %608, label %610, label %609

609:                                              ; preds = %604
  call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 659, ptr noundef nonnull @.str.2) #15
  br label %610

610:                                              ; preds = %609, %604
  call void @insert_insn_on_edge(ptr noundef nonnull %602, ptr noundef nonnull %585) #15
  br label %611

611:                                              ; preds = %610, %601, %579
  %612 = phi i32 [ 1, %610 ], [ %581, %579 ], [ %581, %601 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #15
  %613 = icmp sgt i64 %580, 1
  br i1 %613, label %579, label %614, !llvm.loop !106

614:                                              ; preds = %611, %562
  %615 = phi i32 [ %564, %562 ], [ %612, %611 ]
  %616 = load ptr, ptr @cfun, align 8, !tbaa !35
  %617 = getelementptr inbounds %struct.function, ptr %616, i64 0, i32 1
  %618 = load ptr, ptr %617, align 8, !tbaa !60
  %619 = getelementptr inbounds %struct.control_flow_graph, ptr %618, i64 0, i32 1
  %620 = load ptr, ptr %619, align 8, !tbaa !69
  %621 = getelementptr inbounds %struct.basic_block_def, ptr %620, i64 0, i32 5
  %622 = load ptr, ptr %621, align 8, !tbaa !107
  %623 = load ptr, ptr @cfun, align 8, !tbaa !35
  %624 = getelementptr inbounds %struct.function, ptr %623, i64 0, i32 1
  %625 = load ptr, ptr %624, align 8, !tbaa !60
  %626 = load ptr, ptr %625, align 8, !tbaa !66
  %627 = icmp eq ptr %622, %626
  br i1 %627, label %661, label %628

628:                                              ; preds = %614
  %629 = lshr i64 %563, 6
  %630 = and i64 %629, 67108863
  %631 = and i64 %563, 63
  %632 = shl nuw i64 1, %631
  %633 = getelementptr inbounds [4 x ptr], ptr %2, i64 0, i64 %563
  %634 = trunc i64 %563 to i32
  br label %635

635:                                              ; preds = %628, %653
  %636 = phi ptr [ %622, %628 ], [ %655, %653 ]
  %637 = load ptr, ptr %5, align 8, !tbaa !35
  %638 = getelementptr inbounds %struct.basic_block_def, ptr %636, i64 0, i32 9
  %639 = load i32, ptr %638, align 8, !tbaa !78
  %640 = sext i32 %639 to i64
  %641 = getelementptr inbounds ptr, ptr %637, i64 %640
  %642 = load ptr, ptr %641, align 8, !tbaa !35
  %643 = getelementptr inbounds %struct.simple_bitmap_def, ptr %642, i64 0, i32 3, i64 %630
  %644 = load i64, ptr %643, align 8, !tbaa !70
  %645 = and i64 %644, %632
  %646 = icmp eq i64 %645, 0
  br i1 %646, label %653, label %647

647:                                              ; preds = %635
  call fastcc void @make_preds_opaque(ptr noundef %636, i32 noundef %634)
  %648 = load ptr, ptr %633, align 8, !tbaa !35
  %649 = load i32, ptr %638, align 8, !tbaa !78
  %650 = sext i32 %649 to i64
  %651 = getelementptr inbounds %struct.bb_info, ptr %648, i64 %650
  %652 = load ptr, ptr %651, align 8, !tbaa !85
  store i32 %569, ptr %652, align 8, !tbaa !79
  br label %653

653:                                              ; preds = %647, %635
  %654 = getelementptr inbounds %struct.basic_block_def, ptr %636, i64 0, i32 5
  %655 = load ptr, ptr %654, align 8, !tbaa !107
  %656 = load ptr, ptr @cfun, align 8, !tbaa !35
  %657 = getelementptr inbounds %struct.function, ptr %656, i64 0, i32 1
  %658 = load ptr, ptr %657, align 8, !tbaa !60
  %659 = load ptr, ptr %658, align 8, !tbaa !66
  %660 = icmp eq ptr %655, %659
  br i1 %660, label %661, label %635, !llvm.loop !108

661:                                              ; preds = %653, %614
  %662 = add nsw i64 %563, -1
  %663 = icmp sgt i64 %563, 0
  br i1 %663, label %562, label %664, !llvm.loop !109

664:                                              ; preds = %661, %554
  %665 = phi i32 [ %415, %554 ], [ %615, %661 ]
  %666 = load ptr, ptr %5, align 8, !tbaa !35
  call void @free(ptr noundef %666)
  %667 = load ptr, ptr %6, align 8, !tbaa !35
  call void @free(ptr noundef %667)
  call void @clear_aux_for_edges() #15
  call void @free_edge_list(ptr noundef %558) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #15
  %668 = add nuw nsw i32 %416, 1
  %669 = icmp eq i32 %668, %34
  br i1 %669, label %407, label %414, !llvm.loop !110

670:                                              ; preds = %412, %738
  %671 = phi i64 [ %413, %412 ], [ %741, %738 ]
  %672 = getelementptr inbounds [4 x i32], ptr %1, i64 0, i64 %671
  %673 = load i32, ptr %672, align 4, !tbaa !50
  %674 = sext i32 %673 to i64
  %675 = getelementptr inbounds [4 x i32], ptr @optimize_mode_switching.num_modes, i64 0, i64 %674
  %676 = load i32, ptr %675, align 4, !tbaa !50
  %677 = load ptr, ptr @cfun, align 8, !tbaa !35
  %678 = getelementptr inbounds %struct.function, ptr %677, i64 0, i32 1
  %679 = load ptr, ptr %678, align 8, !tbaa !60
  %680 = getelementptr inbounds %struct.control_flow_graph, ptr %679, i64 0, i32 1
  %681 = load ptr, ptr %680, align 8, !tbaa !69
  %682 = getelementptr inbounds %struct.basic_block_def, ptr %681, i64 0, i32 5
  %683 = load ptr, ptr %682, align 8, !tbaa !107
  %684 = load ptr, ptr @cfun, align 8, !tbaa !35
  %685 = getelementptr inbounds %struct.function, ptr %684, i64 0, i32 1
  %686 = load ptr, ptr %685, align 8, !tbaa !60
  %687 = load ptr, ptr %686, align 8, !tbaa !66
  %688 = icmp eq ptr %683, %687
  br i1 %688, label %738, label %689

689:                                              ; preds = %670
  %690 = getelementptr inbounds [4 x ptr], ptr %2, i64 0, i64 %671
  %691 = load ptr, ptr %690, align 8, !tbaa !35
  br label %700

692:                                              ; preds = %736, %700
  %693 = getelementptr inbounds %struct.basic_block_def, ptr %701, i64 0, i32 5
  %694 = load ptr, ptr %693, align 8, !tbaa !107
  %695 = load ptr, ptr @cfun, align 8, !tbaa !35
  %696 = getelementptr inbounds %struct.function, ptr %695, i64 0, i32 1
  %697 = load ptr, ptr %696, align 8, !tbaa !60
  %698 = load ptr, ptr %697, align 8, !tbaa !66
  %699 = icmp eq ptr %694, %698
  br i1 %699, label %738, label %700, !llvm.loop !111

700:                                              ; preds = %689, %692
  %701 = phi ptr [ %683, %689 ], [ %694, %692 ]
  %702 = getelementptr inbounds %struct.basic_block_def, ptr %701, i64 0, i32 9
  %703 = load i32, ptr %702, align 8, !tbaa !78
  %704 = sext i32 %703 to i64
  %705 = getelementptr inbounds %struct.bb_info, ptr %691, i64 %704
  %706 = load ptr, ptr %705, align 8, !tbaa !85
  %707 = icmp eq ptr %706, null
  br i1 %707, label %692, label %708

708:                                              ; preds = %700, %736
  %709 = phi ptr [ %711, %736 ], [ %706, %700 ]
  %710 = getelementptr inbounds %struct.seginfo, ptr %709, i64 0, i32 3
  %711 = load ptr, ptr %710, align 8, !tbaa !83
  %712 = load i32, ptr %709, align 8, !tbaa !79
  %713 = icmp eq i32 %712, %676
  br i1 %713, label %736, label %714

714:                                              ; preds = %708
  call void @start_sequence() #15
  %715 = load i32, ptr %709, align 8, !tbaa !79
  %716 = and i32 %715, -2
  %717 = icmp eq i32 %716, 4
  br i1 %717, label %719, label %718

718:                                              ; preds = %714
  call void @emit_i387_cw_initialization(i32 noundef %715) #15
  br label %719

719:                                              ; preds = %718, %714
  %720 = call ptr @get_insns() #15
  call void @end_sequence() #15
  %721 = icmp eq ptr %720, null
  br i1 %721, label %736, label %722

722:                                              ; preds = %719
  %723 = getelementptr inbounds %struct.seginfo, ptr %709, i64 0, i32 1
  %724 = load ptr, ptr %723, align 8, !tbaa !81
  %725 = load i32, ptr %724, align 8
  %726 = and i32 %725, 65535
  %727 = icmp eq i32 %726, 13
  br i1 %727, label %728, label %734

728:                                              ; preds = %722
  %729 = getelementptr inbounds %struct.rtx_def, ptr %724, i64 1
  %730 = load i32, ptr %729, align 8, !tbaa !46
  %731 = icmp eq i32 %730, 10
  br i1 %731, label %732, label %734

732:                                              ; preds = %728
  %733 = call ptr @emit_insn_after(ptr noundef nonnull %720, ptr noundef nonnull %724) #15
  br label %736

734:                                              ; preds = %728, %722
  %735 = call ptr @emit_insn_before(ptr noundef nonnull %720, ptr noundef nonnull %724) #15
  br label %736

736:                                              ; preds = %734, %732, %719, %708
  call void @free(ptr noundef %709)
  %737 = icmp eq ptr %711, null
  br i1 %737, label %692, label %708, !llvm.loop !112

738:                                              ; preds = %692, %670
  %739 = getelementptr inbounds [4 x ptr], ptr %2, i64 0, i64 %671
  %740 = load ptr, ptr %739, align 8, !tbaa !35
  call void @free(ptr noundef %740)
  %741 = add nsw i64 %671, -1
  %742 = icmp sgt i64 %671, 0
  br i1 %742, label %670, label %743, !llvm.loop !113

743:                                              ; preds = %738, %409
  call void @free(ptr noundef %401)
  %744 = load ptr, ptr @antic, align 8, !tbaa !35
  call void @free(ptr noundef %744)
  %745 = load ptr, ptr @transp, align 8, !tbaa !35
  call void @free(ptr noundef %745)
  %746 = load ptr, ptr @comp, align 8, !tbaa !35
  call void @free(ptr noundef %746)
  br i1 %410, label %748, label %747

747:                                              ; preds = %743
  call void @commit_edge_insertions() #15
  br label %748

748:                                              ; preds = %743, %747, %38
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %1) #15
  ret i32 0
}

declare ptr @xcalloc(i64 noundef, i64 noundef) local_unnamed_addr #3

declare void @df_analyze() local_unnamed_addr #3

declare ptr @sbitmap_vector_alloc(i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @sbitmap_vector_ones(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @reg_set_to_hard_reg_set(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @df_get_live_in(ptr noundef) local_unnamed_addr #3

declare i32 @ix86_mode_needed(i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @note_stores(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal void @reg_becomes_live(ptr nocapture noundef readonly %0, ptr nocapture readnone %1, ptr nocapture noundef %2) #11 !prof !34 {
  %4 = load i32, ptr %0, align 8
  %5 = and i32 %4, 65535
  %6 = icmp eq i32 %5, 39
  br i1 %6, label %7, label %10

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !46
  br label %10

10:                                               ; preds = %7, %3
  %11 = phi ptr [ %9, %7 ], [ %0, %3 ]
  %12 = load i32, ptr %11, align 8
  %13 = and i32 %12, 65535
  %14 = icmp eq i32 %13, 37
  br i1 %14, label %15, label %38

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.rtx_def, ptr %11, i64 0, i32 1
  %17 = load i32, ptr %16, align 8, !tbaa !46
  %18 = icmp slt i32 %17, 53
  br i1 %18, label %19, label %38

19:                                               ; preds = %15
  %20 = lshr i32 %12, 16
  %21 = and i32 %20, 255
  %22 = zext i32 %17 to i64
  %23 = zext nneg i32 %21 to i64
  %24 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %22, i64 %23
  %25 = load i8, ptr %24, align 1, !tbaa !46
  %26 = zext i8 %25 to i32
  %27 = add nsw i32 %17, %26
  %28 = load i64, ptr %2, align 8, !tbaa !70
  br label %29

29:                                               ; preds = %29, %19
  %30 = phi i64 [ %28, %19 ], [ %34, %29 ]
  %31 = phi i32 [ %17, %19 ], [ %35, %29 ]
  %32 = zext nneg i32 %31 to i64
  %33 = shl nuw i64 1, %32
  %34 = or i64 %33, %30
  %35 = add i32 %31, 1
  %36 = icmp ult i32 %35, %27
  br i1 %36, label %29, label %37, !llvm.loop !114

37:                                               ; preds = %29
  store i64 %34, ptr %2, align 8, !tbaa !70
  br label %38

38:                                               ; preds = %37, %15, %10
  ret void
}

declare void @sbitmap_vector_zero(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @sbitmap_not(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @pre_edge_lcm(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @df_get_live_out(ptr noundef) local_unnamed_addr #3

declare void @start_sequence() local_unnamed_addr #3

declare void @emit_i387_cw_initialization(i32 noundef) local_unnamed_addr #3

declare ptr @get_insns() local_unnamed_addr #3

declare void @end_sequence() local_unnamed_addr #3

declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @insert_insn_on_edge(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc void @make_preds_opaque(ptr noundef readonly %0, i32 noundef %1) unnamed_addr #12 !prof !34 {
  %3 = icmp eq ptr %0, null
  %4 = lshr i32 %1, 6
  %5 = zext nneg i32 %4 to i64
  %6 = and i32 %1, 63
  %7 = zext nneg i32 %6 to i64
  %8 = shl nuw i64 1, %7
  br label %9

9:                                                ; preds = %62, %2
  %10 = phi i32 [ 0, %2 ], [ %63, %62 ]
  br i1 %3, label %11, label %12

11:                                               ; preds = %9
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 687, ptr noundef nonnull @.str.2) #15
  br label %12

12:                                               ; preds = %11, %9
  %13 = load ptr, ptr %0, align 8, !tbaa !35
  %14 = icmp eq ptr %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %12
  %16 = load i32, ptr %13, align 8, !tbaa !71
  br label %17

17:                                               ; preds = %15, %12
  %18 = phi i32 [ %16, %15 ], [ 0, %12 ]
  %19 = icmp eq i32 %18, %10
  br i1 %19, label %24, label %20

20:                                               ; preds = %17
  %21 = zext i32 %10 to i64
  %22 = getelementptr inbounds %struct.VEC_edge_base, ptr %13, i64 0, i32 2, i64 %21
  %23 = load ptr, ptr %22, align 8, !tbaa !35
  br label %24

24:                                               ; preds = %17, %20
  %25 = phi ptr [ %23, %20 ], [ null, %17 ]
  br i1 %19, label %64, label %26

26:                                               ; preds = %24
  %27 = load ptr, ptr %25, align 8, !tbaa !105
  %28 = getelementptr inbounds %struct.edge_def, ptr %25, i64 0, i32 3
  %29 = load ptr, ptr %28, align 8, !tbaa !104
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %53

31:                                               ; preds = %26
  %32 = load ptr, ptr @transp, align 8, !tbaa !35
  %33 = getelementptr inbounds %struct.basic_block_def, ptr %27, i64 0, i32 9
  %34 = load i32, ptr %33, align 8, !tbaa !78
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds ptr, ptr %32, i64 %35
  %37 = load ptr, ptr %36, align 8, !tbaa !35
  %38 = getelementptr inbounds %struct.simple_bitmap_def, ptr %37, i64 0, i32 3, i64 %5
  %39 = load i64, ptr %38, align 8, !tbaa !70
  %40 = and i64 %39, %8
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %53, label %42

42:                                               ; preds = %31
  %43 = load ptr, ptr %37, align 8, !tbaa !88
  %44 = icmp eq ptr %43, null
  br i1 %44, label %49, label %45

45:                                               ; preds = %42
  %46 = getelementptr inbounds i8, ptr %43, i64 %5
  %47 = load i8, ptr %46, align 1, !tbaa !46
  %48 = add i8 %47, -1
  store i8 %48, ptr %46, align 1, !tbaa !46
  br label %49

49:                                               ; preds = %42, %45
  %50 = xor i64 %8, -1
  %51 = load i64, ptr %38, align 8, !tbaa !70
  %52 = and i64 %51, %50
  store i64 %52, ptr %38, align 8, !tbaa !70
  tail call fastcc void @make_preds_opaque(ptr noundef %27, i32 noundef %1)
  br label %53

53:                                               ; preds = %49, %31, %26
  %54 = load ptr, ptr %0, align 8, !tbaa !35
  %55 = icmp eq ptr %54, null
  br i1 %55, label %58, label %56

56:                                               ; preds = %53
  %57 = load i32, ptr %54, align 8, !tbaa !71
  br label %58

58:                                               ; preds = %56, %53
  %59 = phi i32 [ %57, %56 ], [ 0, %53 ]
  %60 = icmp ult i32 %10, %59
  br i1 %60, label %62, label %61

61:                                               ; preds = %58
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 738, ptr noundef nonnull @.str.2) #15
  br label %62

62:                                               ; preds = %58, %61
  %63 = add i32 %10, 1
  br label %9, !llvm.loop !115

64:                                               ; preds = %24
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #13

declare void @clear_aux_for_edges() local_unnamed_addr #3

declare void @free_edge_list(ptr noundef) local_unnamed_addr #3

declare ptr @emit_insn_after(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @emit_insn_before(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @commit_edge_insertions() local_unnamed_addr #3

declare ptr @xmalloc(i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #14

attributes #0 = { cold inlinehint nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold inlinehint mustprogress nofree nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { cold nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nounwind }

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
!54 = !{!"function_entry_count", i64 38}
!55 = !{!"mode-switching.c;gate_mode_switching"}
!56 = !{!"mode-switching.c;rest_of_handle_mode_switching"}
!57 = !{!58, !36, i64 80}
!58 = !{!"function", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !36, i64 96, !41, i64 104, !41, i64 108, !41, i64 112, !41, i64 116, !41, i64 120, !41, i64 124, !36, i64 128, !41, i64 136, !41, i64 137, !41, i64 138, !41, i64 138, !41, i64 138, !41, i64 138, !41, i64 138, !41, i64 138, !41, i64 138, !41, i64 139, !41, i64 139, !41, i64 139, !41, i64 139, !41, i64 139, !41, i64 139, !41, i64 139}
!59 = !{!"branch_weights", i32 152, i32 0}
!60 = !{!58, !36, i64 8}
!61 = !{!62, !41, i64 32}
!62 = !{!"control_flow_graph", !36, i64 0, !36, i64 8, !36, i64 16, !41, i64 24, !41, i64 28, !41, i64 32, !36, i64 40, !41, i64 48, !37, i64 52, !37, i64 60, !41, i64 68, !41, i64 72}
!63 = !{!"branch_weights", i32 38, i32 114}
!64 = distinct !{!64, !52, !53}
!65 = !{!"branch_weights", i32 38, i32 0}
!66 = !{!62, !36, i64 0}
!67 = !{!68, !36, i64 56}
!68 = !{!"basic_block_def", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !36, i64 48, !36, i64 56, !37, i64 64, !42, i64 72, !41, i64 80, !41, i64 84, !41, i64 88, !41, i64 92, !41, i64 96}
!69 = !{!62, !36, i64 8}
!70 = !{!42, !42, i64 0}
!71 = !{!72, !41, i64 0}
!72 = !{!"VEC_edge_base", !41, i64 0, !41, i64 4, !37, i64 8}
!73 = !{!74, !41, i64 48}
!74 = !{!"edge_def", !36, i64 0, !36, i64 8, !37, i64 16, !36, i64 24, !36, i64 32, !41, i64 40, !41, i64 44, !41, i64 48, !41, i64 52, !42, i64 56}
!75 = distinct !{!75, !52, !53}
!76 = !{!77, !36, i64 0}
!77 = !{!"rtl_bb_info", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !41, i64 32}
!78 = !{!68, !41, i64 80}
!79 = !{!80, !41, i64 0}
!80 = !{!"seginfo", !41, i64 0, !36, i64 8, !41, i64 16, !36, i64 24, !42, i64 32}
!81 = !{!80, !36, i64 8}
!82 = !{!80, !41, i64 16}
!83 = !{!80, !36, i64 24}
!84 = !{!80, !42, i64 32}
!85 = !{!86, !36, i64 0}
!86 = !{!"bb_info", !36, i64 0, !41, i64 8}
!87 = distinct !{!87, !52, !53}
!88 = !{!89, !36, i64 0}
!89 = !{!"simple_bitmap_def", !36, i64 0, !41, i64 8, !41, i64 12, !37, i64 16}
!90 = !{!77, !36, i64 8}
!91 = distinct !{!91, !52, !53}
!92 = distinct !{!92, !52, !53}
!93 = distinct !{!93, !52, !53}
!94 = distinct !{!94, !52, !53}
!95 = !{!86, !41, i64 8}
!96 = distinct !{!96, !52, !53}
!97 = distinct !{!97, !52, !53}
!98 = distinct !{!98, !52, !53}
!99 = distinct !{!99, !52, !53}
!100 = distinct !{!100, !52, !53}
!101 = !{!102, !41, i64 4}
!102 = !{!"edge_list", !41, i64 0, !41, i64 4, !36, i64 8}
!103 = !{!102, !36, i64 8}
!104 = !{!74, !36, i64 24}
!105 = !{!74, !36, i64 0}
!106 = distinct !{!106, !52, !53}
!107 = !{!68, !36, i64 48}
!108 = distinct !{!108, !52, !53}
!109 = distinct !{!109, !52, !53}
!110 = distinct !{!110, !52, !53}
!111 = distinct !{!111, !52, !53}
!112 = distinct !{!112, !52, !53}
!113 = distinct !{!113, !52, !53}
!114 = distinct !{!114, !52, !53}
!115 = distinct !{!115, !52, !53}
