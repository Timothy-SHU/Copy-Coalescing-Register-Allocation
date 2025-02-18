; ModuleID = 'tracer.c'
source_filename = "tracer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gimple_opt_pass = type { %struct.opt_pass }
%struct.opt_pass = type { i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct.eni_weights_d = type { i32, i32, i32, i32, i8 }
%struct._IO_FILE = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, [1 x i8], ptr, i64, ptr, ptr, ptr, ptr, i64, i32, [20 x i8] }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.control_flow_graph = type { ptr, ptr, ptr, i32, i32, i32, ptr, i32, [2 x i32], [2 x i32], i32, i32 }
%struct.param_info = type { ptr, i32, i8, i32, i32, ptr }
%struct.basic_block_def = type { ptr, ptr, ptr, ptr, [2 x ptr], ptr, ptr, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%union.basic_block_il_dependent = type { ptr }
%struct.gimple_seq_node_d = type { ptr, ptr, ptr }
%struct.simple_bitmap_def = type { ptr, i32, i32, [1 x i64] }
%struct.edge_def = type { ptr, ptr, %union.edge_def_insns, ptr, ptr, i32, i32, i32, i32, i64 }
%union.edge_def_insns = type { ptr }
%struct.VEC_edge_base = type { i32, i32, [1 x ptr] }

@stdout = external local_unnamed_addr global ptr, align 8
@stdin = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [7 x i8] c"tracer\00", align 1
@pass_tracer = dso_local local_unnamed_addr global %struct.gimple_opt_pass { %struct.opt_pass { i32 0, ptr @.str, ptr @gate_tracer, ptr @tracer, ptr null, ptr null, i32 0, i32 134, i32 0, i32 0, i32 0, i32 0, i32 2053 } }, align 8
@bb_seen = dso_local local_unnamed_addr global ptr null, align 8
@optimize = external local_unnamed_addr global i32, align 4
@flag_tracer = external local_unnamed_addr global i32, align 4
@flag_reorder_blocks = external local_unnamed_addr global i32, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"tracer.c\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@cfun = external local_unnamed_addr global ptr, align 8
@dump_file = external local_unnamed_addr global ptr, align 8
@dump_flags = external local_unnamed_addr global i32, align 4
@profile_info = external local_unnamed_addr global ptr, align 8
@flag_branch_probabilities = external local_unnamed_addr global i32, align 4
@compiler_params = external local_unnamed_addr global ptr, align 8
@probability_cutoff = internal unnamed_addr global i32 0, align 4
@branch_ratio_cutoff = internal unnamed_addr global i32 0, align 4
@.str.3 = private unnamed_addr constant [26 x i8] c"Duplicated %i as %i [%i]\0A\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c" covered now %.1f\0A\0A\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"Duplicated %i insns (%i%%)\0A\00", align 1
@eni_size_weights = external global %struct.eni_weights_d, align 4
@.str.6 = private unnamed_addr constant [19 x i8] c"Trace seed %i [%i]\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c",%i [%i]\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c" forward %i [%i]\00", align 1
@.str.10 = private unnamed_addr constant [16 x i8] c"./basic-block.h\00", align 1

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
  %8 = tail call i32 @__uflow(ptr noundef %0) #14
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
  %8 = tail call i32 @__uflow(ptr noundef %0) #14
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
  %8 = tail call i32 @__uflow(ptr noundef %1) #14
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
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #14
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
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #14
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
  %10 = tail call i32 @__overflow(ptr noundef %2, i32 noundef %9) #14
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
  %4 = tail call i64 @__getdelim(ptr noundef %0, ptr noundef %1, i32 noundef 10, ptr noundef %2) #14
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
  %5 = tail call ptr @__ctype_tolower_loc() #14
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
  %5 = tail call ptr @__ctype_toupper_loc() #14
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal zeroext i8 @gate_tracer() #9 !prof !54 !PGOFuncName !55 {
  %1 = load i32, ptr @optimize, align 4, !tbaa !50
  %2 = icmp sgt i32 %1, 0
  %3 = load i32, ptr @flag_tracer, align 4
  %4 = icmp ne i32 %3, 0
  %5 = select i1 %2, i1 %4, i1 false, !prof !56
  %6 = load i32, ptr @flag_reorder_blocks, align 4
  %7 = icmp ne i32 %6, 0
  %8 = select i1 %5, i1 %7, i1 false, !prof !57
  %9 = zext i1 %8 to i8
  ret i8 %9
}

; Function Attrs: cold nounwind uwtable
define internal noundef i32 @tracer() #10 !prof !34 {
  %1 = alloca ptr, align 8
  %2 = tail call i32 @current_ir_type() #14
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %5, label %4

4:                                                ; preds = %0
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 354, ptr noundef nonnull @.str.2) #14
  br label %5

5:                                                ; preds = %0, %4
  %6 = load ptr, ptr @cfun, align 8, !tbaa !35
  %7 = getelementptr inbounds %struct.function, ptr %6, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !58
  %9 = getelementptr inbounds %struct.control_flow_graph, ptr %8, i64 0, i32 3
  %10 = load i32, ptr %9, align 8, !tbaa !60
  %11 = icmp slt i32 %10, 4
  br i1 %11, label %481, label %12

12:                                               ; preds = %5
  %13 = tail call zeroext i8 @mark_dfs_back_edges() #14
  %14 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %15 = icmp eq ptr %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %12
  %17 = load i32, ptr @dump_flags, align 4, !tbaa !50
  tail call void @dump_flow_info(ptr noundef nonnull %14, i32 noundef %17) #14
  br label %18

18:                                               ; preds = %16, %12
  %19 = load ptr, ptr @cfun, align 8, !tbaa !35
  %20 = getelementptr inbounds %struct.function, ptr %19, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !58
  %22 = getelementptr inbounds %struct.control_flow_graph, ptr %21, i64 0, i32 5
  %23 = load i32, ptr %22, align 8, !tbaa !62
  %24 = sext i32 %23 to i64
  %25 = tail call ptr @xcalloc(i64 noundef %24, i64 noundef 8) #14
  %26 = load ptr, ptr @cfun, align 8, !tbaa !35
  %27 = getelementptr inbounds %struct.function, ptr %26, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !58
  %29 = getelementptr inbounds %struct.control_flow_graph, ptr %28, i64 0, i32 3
  %30 = load i32, ptr %29, align 8, !tbaa !60
  %31 = sext i32 %30 to i64
  %32 = shl nsw i64 %31, 3
  %33 = tail call ptr @xmalloc(i64 noundef %32) #14
  %34 = load ptr, ptr @cfun, align 8, !tbaa !35
  %35 = getelementptr inbounds %struct.function, ptr %34, i64 0, i32 1
  %36 = load ptr, ptr %35, align 8, !tbaa !58
  %37 = getelementptr inbounds %struct.control_flow_graph, ptr %36, i64 0, i32 5
  %38 = load i32, ptr %37, align 8, !tbaa !62
  %39 = sext i32 %38 to i64
  %40 = shl nsw i64 %39, 2
  %41 = tail call ptr @xmalloc(i64 noundef %40) #14
  %42 = tail call ptr @fibheap_new() #14
  %43 = load ptr, ptr @cfun, align 8, !tbaa !35
  %44 = getelementptr inbounds %struct.function, ptr %43, i64 0, i32 1
  %45 = load ptr, ptr %44, align 8, !tbaa !58
  %46 = getelementptr inbounds %struct.control_flow_graph, ptr %45, i64 0, i32 5
  %47 = load i32, ptr %46, align 8, !tbaa !62
  %48 = shl nsw i32 %47, 1
  %49 = tail call ptr @sbitmap_alloc(i32 noundef %48) #14
  store ptr %49, ptr @bb_seen, align 8, !tbaa !35
  tail call void @sbitmap_zero(ptr noundef %49) #14
  tail call void @initialize_original_copy_tables() #14
  %50 = load ptr, ptr @profile_info, align 8, !tbaa !35
  %51 = icmp ne ptr %50, null
  %52 = load i32, ptr @flag_branch_probabilities, align 4
  %53 = icmp ne i32 %52, 0
  %54 = select i1 %51, i1 %53, i1 false
  %55 = load ptr, ptr @compiler_params, align 8
  %56 = getelementptr inbounds %struct.param_info, ptr %55, i64 52, i32 1
  %57 = getelementptr inbounds %struct.param_info, ptr %55, i64 51, i32 1
  %58 = select i1 %54, ptr %57, ptr %56
  %59 = load i32, ptr %58, align 8, !tbaa !63
  %60 = mul nsw i32 %59, 100
  store i32 %60, ptr @probability_cutoff, align 4, !tbaa !50
  %61 = getelementptr inbounds %struct.param_info, ptr %55, i64 50, i32 1
  %62 = load i32, ptr %61, align 8, !tbaa !63
  %63 = mul nsw i32 %62, 100
  store i32 %63, ptr @branch_ratio_cutoff, align 4, !tbaa !50
  %64 = load ptr, ptr @cfun, align 8, !tbaa !35
  %65 = getelementptr inbounds %struct.function, ptr %64, i64 0, i32 1
  %66 = load ptr, ptr %65, align 8, !tbaa !58
  %67 = load ptr, ptr %66, align 8, !tbaa !65
  %68 = getelementptr inbounds %struct.basic_block_def, ptr %67, i64 0, i32 6
  %69 = load ptr, ptr %68, align 8, !tbaa !66
  %70 = getelementptr inbounds %struct.control_flow_graph, ptr %66, i64 0, i32 1
  %71 = load ptr, ptr %70, align 8, !tbaa !68
  %72 = icmp eq ptr %69, %71
  br i1 %72, label %143, label %73

73:                                               ; preds = %18, %125
  %74 = phi ptr [ %136, %125 ], [ %69, %18 ]
  %75 = phi i32 [ %129, %125 ], [ 0, %18 ]
  %76 = phi i64 [ %134, %125 ], [ 0, %18 ]
  %77 = getelementptr inbounds %struct.basic_block_def, ptr %74, i64 0, i32 13
  %78 = load i32, ptr %77, align 8, !tbaa !69, !noalias !70
  %79 = and i32 %78, 512
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %87

81:                                               ; preds = %73
  %82 = getelementptr inbounds %struct.basic_block_def, ptr %74, i64 0, i32 7
  %83 = load ptr, ptr %82, align 8, !tbaa !46, !noalias !70
  %84 = icmp eq ptr %83, null
  br i1 %84, label %87, label %85

85:                                               ; preds = %81
  %86 = load ptr, ptr %83, align 8, !tbaa !73, !noalias !70
  br label %87

87:                                               ; preds = %85, %81, %73
  %88 = phi ptr [ %86, %85 ], [ null, %81 ], [ null, %73 ]
  %89 = icmp eq ptr %88, null
  br i1 %89, label %92, label %90

90:                                               ; preds = %87
  %91 = load ptr, ptr %88, align 8, !tbaa !75, !noalias !70
  br label %92

92:                                               ; preds = %90, %87
  %93 = phi ptr [ %91, %90 ], [ null, %87 ]
  %94 = icmp eq ptr %93, null
  br i1 %94, label %104, label %95

95:                                               ; preds = %92, %95
  %96 = phi i32 [ %100, %95 ], [ 0, %92 ]
  %97 = phi ptr [ %102, %95 ], [ %93, %92 ]
  %98 = load ptr, ptr %97, align 8, !tbaa !77
  %99 = tail call i32 @estimate_num_insns(ptr noundef %98, ptr noundef nonnull @eni_size_weights) #14
  %100 = add nsw i32 %99, %96
  %101 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %97, i64 0, i32 2
  %102 = load ptr, ptr %101, align 8, !tbaa !79
  %103 = icmp eq ptr %102, null
  br i1 %103, label %104, label %95, !llvm.loop !80

104:                                              ; preds = %95, %92
  %105 = phi i32 [ 0, %92 ], [ %100, %95 ]
  %106 = getelementptr inbounds %struct.basic_block_def, ptr %74, i64 0, i32 9
  %107 = load i32, ptr %106, align 8, !tbaa !81
  %108 = icmp slt i32 %107, 2
  br i1 %108, label %113, label %109

109:                                              ; preds = %104
  %110 = tail call zeroext i8 @optimize_bb_for_size_p(ptr noundef %74) #14
  %111 = icmp ne i8 %110, 0
  %112 = zext i1 %111 to i8
  br label %113

113:                                              ; preds = %109, %104
  %114 = phi i8 [ 1, %104 ], [ %112, %109 ]
  %115 = icmp eq i8 %114, 0
  br i1 %115, label %116, label %125

116:                                              ; preds = %113
  %117 = getelementptr inbounds %struct.basic_block_def, ptr %74, i64 0, i32 11
  %118 = load i32, ptr %117, align 8, !tbaa !82
  %119 = sub nsw i32 0, %118
  %120 = sext i32 %119 to i64
  %121 = tail call ptr @fibheap_insert(ptr noundef %42, i64 noundef %120, ptr noundef %74) #14
  %122 = load i32, ptr %106, align 8, !tbaa !81
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds ptr, ptr %25, i64 %123
  store ptr %121, ptr %124, align 8, !tbaa !35
  br label %125

125:                                              ; preds = %116, %113
  %126 = load i32, ptr %106, align 8, !tbaa !81
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i32, ptr %41, i64 %127
  store i32 %105, ptr %128, align 4, !tbaa !50
  %129 = add nsw i32 %105, %75
  %130 = getelementptr inbounds %struct.basic_block_def, ptr %74, i64 0, i32 11
  %131 = load i32, ptr %130, align 8, !tbaa !82
  %132 = mul nsw i32 %131, %105
  %133 = sext i32 %132 to i64
  %134 = add nsw i64 %76, %133
  %135 = getelementptr inbounds %struct.basic_block_def, ptr %74, i64 0, i32 6
  %136 = load ptr, ptr %135, align 8, !tbaa !66
  %137 = load ptr, ptr @cfun, align 8, !tbaa !35
  %138 = getelementptr inbounds %struct.function, ptr %137, i64 0, i32 1
  %139 = load ptr, ptr %138, align 8, !tbaa !58
  %140 = getelementptr inbounds %struct.control_flow_graph, ptr %139, i64 0, i32 1
  %141 = load ptr, ptr %140, align 8, !tbaa !68
  %142 = icmp eq ptr %136, %141
  br i1 %142, label %143, label %73, !llvm.loop !83

143:                                              ; preds = %125, %18
  %144 = phi i64 [ 0, %18 ], [ %134, %125 ]
  %145 = phi i32 [ 0, %18 ], [ %129, %125 ]
  %146 = load ptr, ptr @profile_info, align 8, !tbaa !35
  %147 = icmp ne ptr %146, null
  %148 = load i32, ptr @flag_branch_probabilities, align 4
  %149 = icmp ne i32 %148, 0
  %150 = select i1 %147, i1 %149, i1 false
  %151 = load ptr, ptr @compiler_params, align 8
  %152 = getelementptr inbounds %struct.param_info, ptr %151, i64 47, i32 1
  %153 = getelementptr inbounds %struct.param_info, ptr %151, i64 48, i32 1
  %154 = select i1 %150, ptr %152, ptr %153
  %155 = load i32, ptr %154, align 8, !tbaa !63
  %156 = sext i32 %155 to i64
  %157 = mul nsw i64 %144, %156
  %158 = add nsw i64 %157, 50
  %159 = sdiv i64 %158, 100
  %160 = getelementptr inbounds %struct.param_info, ptr %151, i64 49, i32 1
  %161 = load i32, ptr %160, align 8, !tbaa !63
  %162 = mul nsw i32 %161, %145
  %163 = add nsw i32 %162, 50
  %164 = sdiv i32 %163, 100
  br label %165

165:                                              ; preds = %462, %143
  %166 = phi i64 [ 0, %143 ], [ %463, %462 ]
  %167 = phi i32 [ 0, %143 ], [ %464, %462 ]
  %168 = icmp slt i64 %166, %159
  %169 = icmp slt i32 %167, %164
  %170 = select i1 %168, i1 %169, i1 false
  br i1 %170, label %171, label %465

171:                                              ; preds = %165
  %172 = call i32 @fibheap_empty(ptr noundef %42) #14
  %173 = icmp eq i32 %172, 0
  br i1 %173, label %174, label %465

174:                                              ; preds = %171
  %175 = call ptr @fibheap_extract_min(ptr noundef %42) #14
  %176 = icmp eq ptr %175, null
  br i1 %176, label %462, label %177

177:                                              ; preds = %174
  %178 = getelementptr inbounds %struct.basic_block_def, ptr %175, i64 0, i32 9
  %179 = load i32, ptr %178, align 8, !tbaa !81
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds ptr, ptr %25, i64 %180
  store ptr null, ptr %181, align 8, !tbaa !35
  %182 = icmp slt i32 %179, 2
  br i1 %182, label %187, label %183

183:                                              ; preds = %177
  %184 = call zeroext i8 @optimize_bb_for_size_p(ptr noundef nonnull %175) #14
  %185 = icmp ne i8 %184, 0
  %186 = zext i1 %185 to i8
  br label %187

187:                                              ; preds = %183, %177
  %188 = phi i8 [ 1, %177 ], [ %186, %183 ]
  %189 = icmp eq i8 %188, 0
  br i1 %189, label %190, label %462, !llvm.loop !84

190:                                              ; preds = %187
  %191 = load ptr, ptr @bb_seen, align 8, !tbaa !35
  %192 = load i32, ptr %178, align 8, !tbaa !81
  %193 = lshr i32 %192, 6
  %194 = zext nneg i32 %193 to i64
  %195 = getelementptr inbounds %struct.simple_bitmap_def, ptr %191, i64 0, i32 3, i64 %194
  %196 = load i64, ptr %195, align 8, !tbaa !85
  %197 = and i32 %192, 63
  %198 = zext nneg i32 %197 to i64
  %199 = shl nuw i64 1, %198
  %200 = and i64 %199, %196
  %201 = icmp eq i64 %200, 0
  br i1 %201, label %203, label %202

202:                                              ; preds = %190
  call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 278, ptr noundef nonnull @.str.2) #14
  br label %203

203:                                              ; preds = %202, %190
  %204 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %205 = icmp eq ptr %204, null
  br i1 %205, label %211, label %206

206:                                              ; preds = %203
  %207 = load i32, ptr %178, align 8, !tbaa !81
  %208 = getelementptr inbounds %struct.basic_block_def, ptr %175, i64 0, i32 11
  %209 = load i32, ptr %208, align 8, !tbaa !82
  %210 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %204, ptr noundef nonnull @.str.6, i32 noundef %207, i32 noundef %209)
  br label %211

211:                                              ; preds = %206, %203
  br label %212

212:                                              ; preds = %211, %247
  %213 = phi ptr [ %248, %247 ], [ %175, %211 ]
  %214 = call fastcc ptr @find_best_predecessor(ptr noundef %213)
  %215 = icmp eq ptr %214, null
  br i1 %215, label %250, label %216

216:                                              ; preds = %212
  %217 = load ptr, ptr %214, align 8, !tbaa !86
  %218 = load ptr, ptr @bb_seen, align 8, !tbaa !35
  %219 = getelementptr inbounds %struct.basic_block_def, ptr %217, i64 0, i32 9
  %220 = load i32, ptr %219, align 8, !tbaa !81
  %221 = lshr i32 %220, 6
  %222 = zext nneg i32 %221 to i64
  %223 = getelementptr inbounds %struct.simple_bitmap_def, ptr %218, i64 0, i32 3, i64 %222
  %224 = load i64, ptr %223, align 8, !tbaa !85
  %225 = and i32 %220, 63
  %226 = zext nneg i32 %225 to i64
  %227 = shl nuw i64 1, %226
  %228 = and i64 %227, %224
  %229 = icmp eq i64 %228, 0
  br i1 %229, label %230, label %247

230:                                              ; preds = %216
  %231 = getelementptr inbounds %struct.edge_def, ptr %214, i64 0, i32 7
  %232 = load i32, ptr %231, align 8, !tbaa !88
  %233 = and i32 %232, 46
  %234 = icmp eq i32 %233, 0
  br i1 %234, label %235, label %247

235:                                              ; preds = %230
  %236 = call fastcc ptr @find_best_successor(ptr noundef %217)
  %237 = icmp eq ptr %236, %214
  br i1 %237, label %238, label %247

238:                                              ; preds = %235
  %239 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %240 = icmp eq ptr %239, null
  br i1 %240, label %247, label %241

241:                                              ; preds = %238
  %242 = getelementptr inbounds %struct.basic_block_def, ptr %213, i64 0, i32 9
  %243 = load i32, ptr %242, align 8, !tbaa !81
  %244 = getelementptr inbounds %struct.basic_block_def, ptr %213, i64 0, i32 11
  %245 = load i32, ptr %244, align 8, !tbaa !82
  %246 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %239, ptr noundef nonnull @.str.7, i32 noundef %243, i32 noundef %245)
  br label %247

247:                                              ; preds = %241, %238, %235, %230, %216
  %248 = phi ptr [ %213, %235 ], [ %213, %230 ], [ %213, %216 ], [ %217, %241 ], [ %217, %238 ]
  %249 = phi i1 [ false, %235 ], [ false, %230 ], [ false, %216 ], [ true, %241 ], [ true, %238 ]
  br i1 %249, label %212, label %250

250:                                              ; preds = %247, %212
  %251 = phi ptr [ %213, %212 ], [ %248, %247 ]
  %252 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %253 = icmp eq ptr %252, null
  br i1 %253, label %260, label %254

254:                                              ; preds = %250
  %255 = getelementptr inbounds %struct.basic_block_def, ptr %251, i64 0, i32 9
  %256 = load i32, ptr %255, align 8, !tbaa !81
  %257 = getelementptr inbounds %struct.basic_block_def, ptr %251, i64 0, i32 11
  %258 = load i32, ptr %257, align 8, !tbaa !82
  %259 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %252, ptr noundef nonnull @.str.8, i32 noundef %256, i32 noundef %258)
  br label %260

260:                                              ; preds = %254, %250
  store ptr %251, ptr %33, align 8, !tbaa !35
  %261 = call fastcc ptr @find_best_successor(ptr noundef %251)
  %262 = icmp eq ptr %261, null
  br i1 %262, label %304, label %263

263:                                              ; preds = %260, %296
  %264 = phi i64 [ %297, %296 ], [ 1, %260 ]
  %265 = phi ptr [ %299, %296 ], [ %261, %260 ]
  %266 = getelementptr inbounds %struct.edge_def, ptr %265, i64 0, i32 1
  %267 = load ptr, ptr %266, align 8, !tbaa !89
  %268 = load ptr, ptr @bb_seen, align 8, !tbaa !35
  %269 = getelementptr inbounds %struct.basic_block_def, ptr %267, i64 0, i32 9
  %270 = load i32, ptr %269, align 8, !tbaa !81
  %271 = lshr i32 %270, 6
  %272 = zext nneg i32 %271 to i64
  %273 = getelementptr inbounds %struct.simple_bitmap_def, ptr %268, i64 0, i32 3, i64 %272
  %274 = load i64, ptr %273, align 8, !tbaa !85
  %275 = and i32 %270, 63
  %276 = zext nneg i32 %275 to i64
  %277 = shl nuw i64 1, %276
  %278 = and i64 %277, %274
  %279 = icmp eq i64 %278, 0
  br i1 %279, label %280, label %301

280:                                              ; preds = %263
  %281 = getelementptr inbounds %struct.edge_def, ptr %265, i64 0, i32 7
  %282 = load i32, ptr %281, align 8, !tbaa !88
  %283 = and i32 %282, 46
  %284 = icmp eq i32 %283, 0
  br i1 %284, label %285, label %301

285:                                              ; preds = %280
  %286 = call fastcc ptr @find_best_predecessor(ptr noundef %267)
  %287 = icmp eq ptr %286, %265
  br i1 %287, label %288, label %301

288:                                              ; preds = %285
  %289 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %290 = icmp eq ptr %289, null
  br i1 %290, label %296, label %291

291:                                              ; preds = %288
  %292 = load i32, ptr %269, align 8, !tbaa !81
  %293 = getelementptr inbounds %struct.basic_block_def, ptr %267, i64 0, i32 11
  %294 = load i32, ptr %293, align 8, !tbaa !82
  %295 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %289, ptr noundef nonnull @.str.7, i32 noundef %292, i32 noundef %294)
  br label %296

296:                                              ; preds = %291, %288
  %297 = add nuw i64 %264, 1
  %298 = getelementptr inbounds ptr, ptr %33, i64 %264
  store ptr %267, ptr %298, align 8, !tbaa !35
  %299 = call fastcc ptr @find_best_successor(ptr noundef %267)
  %300 = icmp eq ptr %299, null
  br i1 %300, label %301, label %263, !llvm.loop !90

301:                                              ; preds = %285, %280, %263, %296
  %302 = phi i64 [ %297, %296 ], [ %264, %263 ], [ %264, %280 ], [ %264, %285 ]
  %303 = trunc i64 %302 to i32
  br label %304

304:                                              ; preds = %301, %260
  %305 = phi i32 [ 1, %260 ], [ %303, %301 ]
  %306 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %307 = icmp eq ptr %306, null
  br i1 %307, label %310, label %308

308:                                              ; preds = %304
  %309 = call i32 @fputc(i32 10, ptr nonnull %306)
  br label %310

310:                                              ; preds = %308, %304
  %311 = load ptr, ptr %33, align 8, !tbaa !35
  %312 = getelementptr inbounds %struct.basic_block_def, ptr %311, i64 0, i32 11
  %313 = load i32, ptr %312, align 8, !tbaa !82
  %314 = getelementptr inbounds %struct.basic_block_def, ptr %311, i64 0, i32 9
  %315 = load i32, ptr %314, align 8, !tbaa !81
  %316 = sext i32 %315 to i64
  %317 = getelementptr inbounds i32, ptr %41, i64 %316
  %318 = load i32, ptr %317, align 4, !tbaa !50
  %319 = mul nsw i32 %318, %313
  %320 = sext i32 %319 to i64
  %321 = add nsw i64 %166, %320
  %322 = getelementptr inbounds ptr, ptr %25, i64 %316
  %323 = load ptr, ptr %322, align 8, !tbaa !35
  %324 = icmp eq ptr %323, null
  br i1 %324, label %330, label %325

325:                                              ; preds = %310
  %326 = call ptr @fibheap_delete_node(ptr noundef %42, ptr noundef nonnull %323) #14
  %327 = load i32, ptr %314, align 8, !tbaa !81
  %328 = sext i32 %327 to i64
  %329 = getelementptr inbounds ptr, ptr %25, i64 %328
  store ptr null, ptr %329, align 8, !tbaa !35
  br label %330

330:                                              ; preds = %325, %310
  %331 = icmp ugt i32 %305, 1
  br i1 %331, label %332, label %451

332:                                              ; preds = %330
  %333 = zext i32 %305 to i64
  br label %334

334:                                              ; preds = %332, %445
  %335 = phi i64 [ 1, %332 ], [ %448, %445 ]
  %336 = phi i32 [ %167, %332 ], [ %399, %445 ]
  %337 = phi ptr [ %311, %332 ], [ %400, %445 ]
  %338 = phi i64 [ %321, %332 ], [ %361, %445 ]
  %339 = getelementptr inbounds ptr, ptr %33, i64 %335
  %340 = load ptr, ptr %339, align 8, !tbaa !35
  %341 = getelementptr inbounds %struct.basic_block_def, ptr %340, i64 0, i32 9
  %342 = load i32, ptr %341, align 8, !tbaa !81
  %343 = sext i32 %342 to i64
  %344 = getelementptr inbounds ptr, ptr %25, i64 %343
  %345 = load ptr, ptr %344, align 8, !tbaa !35
  %346 = icmp eq ptr %345, null
  br i1 %346, label %352, label %347

347:                                              ; preds = %334
  %348 = call ptr @fibheap_delete_node(ptr noundef %42, ptr noundef nonnull %345) #14
  %349 = load i32, ptr %341, align 8, !tbaa !81
  %350 = sext i32 %349 to i64
  %351 = getelementptr inbounds ptr, ptr %25, i64 %350
  store ptr null, ptr %351, align 8, !tbaa !35
  br label %352

352:                                              ; preds = %347, %334
  %353 = getelementptr inbounds %struct.basic_block_def, ptr %340, i64 0, i32 11
  %354 = load i32, ptr %353, align 8, !tbaa !82
  %355 = load i32, ptr %341, align 8, !tbaa !81
  %356 = sext i32 %355 to i64
  %357 = getelementptr inbounds i32, ptr %41, i64 %356
  %358 = load i32, ptr %357, align 4, !tbaa !50
  %359 = mul nsw i32 %358, %354
  %360 = sext i32 %359 to i64
  %361 = add nsw i64 %338, %360
  %362 = load ptr, ptr %340, align 8, !tbaa !91
  %363 = icmp eq ptr %362, null
  br i1 %363, label %366, label %364

364:                                              ; preds = %352
  %365 = load i32, ptr %362, align 8, !tbaa !92
  br label %366

366:                                              ; preds = %364, %352
  %367 = phi i32 [ %365, %364 ], [ 0, %352 ]
  %368 = icmp ugt i32 %367, 1
  br i1 %368, label %369, label %398

369:                                              ; preds = %366
  %370 = call zeroext i8 @can_duplicate_block_p(ptr noundef nonnull %340) #14
  %371 = icmp eq i8 %370, 0
  br i1 %371, label %398, label %372

372:                                              ; preds = %369
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #14
  %373 = load i32, ptr %341, align 8, !tbaa !81
  %374 = sext i32 %373 to i64
  %375 = getelementptr inbounds i32, ptr %41, i64 %374
  %376 = load i32, ptr %375, align 4, !tbaa !50
  %377 = add nsw i32 %376, %336
  %378 = call ptr @find_edge(ptr noundef %337, ptr noundef nonnull %340) #14
  %379 = call ptr @duplicate_block(ptr noundef nonnull %340, ptr noundef %378, ptr noundef %337) #14
  store ptr %379, ptr %1, align 8, !tbaa !35
  call void @flush_pending_stmts(ptr noundef %378) #14
  call void @add_phi_args_after_copy(ptr noundef nonnull %1, i32 noundef 1, ptr noundef null) #14
  %380 = load i32, ptr %353, align 8, !tbaa !82
  %381 = sub nsw i32 0, %380
  %382 = sext i32 %381 to i64
  %383 = call ptr @fibheap_insert(ptr noundef %42, i64 noundef %382, ptr noundef nonnull %340) #14
  %384 = load i32, ptr %341, align 8, !tbaa !81
  %385 = sext i32 %384 to i64
  %386 = getelementptr inbounds ptr, ptr %25, i64 %385
  store ptr %383, ptr %386, align 8, !tbaa !35
  %387 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %388 = icmp eq ptr %387, null
  br i1 %388, label %396, label %389

389:                                              ; preds = %372
  %390 = load ptr, ptr %1, align 8, !tbaa !35
  %391 = getelementptr inbounds %struct.basic_block_def, ptr %390, i64 0, i32 9
  %392 = load i32, ptr %391, align 8, !tbaa !81
  %393 = getelementptr inbounds %struct.basic_block_def, ptr %390, i64 0, i32 11
  %394 = load i32, ptr %393, align 8, !tbaa !82
  %395 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %387, ptr noundef nonnull @.str.3, i32 noundef %384, i32 noundef %392, i32 noundef %394)
  br label %396

396:                                              ; preds = %389, %372
  %397 = load ptr, ptr %1, align 8, !tbaa !35
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #14
  br label %398

398:                                              ; preds = %396, %369, %366
  %399 = phi i32 [ %377, %396 ], [ %336, %369 ], [ %336, %366 ]
  %400 = phi ptr [ %397, %396 ], [ %340, %369 ], [ %340, %366 ]
  %401 = load ptr, ptr @bb_seen, align 8, !tbaa !35
  %402 = getelementptr inbounds %struct.simple_bitmap_def, ptr %401, i64 0, i32 2
  %403 = load i32, ptr %402, align 4, !tbaa !94
  %404 = shl i32 %403, 6
  %405 = getelementptr inbounds %struct.basic_block_def, ptr %400, i64 0, i32 9
  %406 = load i32, ptr %405, align 8, !tbaa !81
  %407 = icmp ult i32 %406, %404
  br i1 %407, label %411, label %408

408:                                              ; preds = %398
  %409 = shl i32 %403, 7
  %410 = call ptr @sbitmap_resize(ptr noundef %401, i32 noundef %409, i32 noundef 0) #14
  store ptr %410, ptr @bb_seen, align 8, !tbaa !35
  br label %411

411:                                              ; preds = %408, %398
  %412 = load ptr, ptr @bb_seen, align 8, !tbaa !35
  %413 = load i32, ptr %405, align 8, !tbaa !81
  %414 = load ptr, ptr %412, align 8, !tbaa !96
  %415 = icmp eq ptr %414, null
  br i1 %415, label %430, label %416

416:                                              ; preds = %411
  %417 = lshr i32 %413, 6
  %418 = zext nneg i32 %417 to i64
  %419 = getelementptr inbounds %struct.simple_bitmap_def, ptr %412, i64 0, i32 3, i64 %418
  %420 = load i64, ptr %419, align 8, !tbaa !85
  %421 = and i32 %413, 63
  %422 = zext nneg i32 %421 to i64
  %423 = shl nuw i64 1, %422
  %424 = and i64 %420, %423
  %425 = icmp eq i64 %424, 0
  br i1 %425, label %426, label %430

426:                                              ; preds = %416
  %427 = getelementptr inbounds i8, ptr %414, i64 %418
  %428 = load i8, ptr %427, align 1, !tbaa !46
  %429 = add i8 %428, 1
  store i8 %429, ptr %427, align 1, !tbaa !46
  br label %430

430:                                              ; preds = %426, %416, %411
  %431 = and i32 %413, 63
  %432 = zext nneg i32 %431 to i64
  %433 = shl nuw i64 1, %432
  %434 = lshr i32 %413, 6
  %435 = zext nneg i32 %434 to i64
  %436 = getelementptr inbounds %struct.simple_bitmap_def, ptr %412, i64 0, i32 3, i64 %435
  %437 = load i64, ptr %436, align 8, !tbaa !85
  %438 = or i64 %437, %433
  store i64 %438, ptr %436, align 8, !tbaa !85
  %439 = load i32, ptr %405, align 8, !tbaa !81
  %440 = icmp slt i32 %439, 2
  br i1 %440, label %445, label %441

441:                                              ; preds = %430
  %442 = call zeroext i8 @optimize_bb_for_size_p(ptr noundef %400) #14
  %443 = icmp ne i8 %442, 0
  %444 = zext i1 %443 to i8
  br label %445

445:                                              ; preds = %441, %430
  %446 = phi i8 [ 1, %430 ], [ %444, %441 ]
  %447 = icmp eq i8 %446, 0
  %448 = add nuw nsw i64 %335, 1
  %449 = icmp ult i64 %448, %333
  %450 = select i1 %447, i1 %449, i1 false
  br i1 %450, label %334, label %451, !llvm.loop !97

451:                                              ; preds = %445, %330
  %452 = phi i64 [ %321, %330 ], [ %361, %445 ]
  %453 = phi i32 [ %167, %330 ], [ %399, %445 ]
  %454 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %455 = icmp eq ptr %454, null
  br i1 %455, label %462, label %456

456:                                              ; preds = %451
  %457 = sitofp i64 %144 to double
  %458 = sitofp i64 %452 to double
  %459 = fmul double %458, 1.000000e+02
  %460 = fdiv double %459, %457
  %461 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %454, ptr noundef nonnull @.str.4, double noundef %460)
  br label %462

462:                                              ; preds = %456, %451, %187, %174
  %463 = phi i64 [ %166, %174 ], [ %166, %187 ], [ %452, %456 ], [ %452, %451 ]
  %464 = phi i32 [ %167, %174 ], [ %167, %187 ], [ %453, %456 ], [ %453, %451 ]
  br i1 %176, label %465, label %165

465:                                              ; preds = %462, %171, %165
  %466 = phi i32 [ %167, %171 ], [ %167, %165 ], [ %464, %462 ]
  %467 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %468 = icmp eq ptr %467, null
  br i1 %468, label %473, label %469

469:                                              ; preds = %465
  %470 = mul nsw i32 %466, 100
  %471 = sdiv i32 %470, %145
  %472 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %467, ptr noundef nonnull @.str.5, i32 noundef %466, i32 noundef %471)
  br label %473

473:                                              ; preds = %465, %469
  call void @free_original_copy_tables() #14
  %474 = load ptr, ptr @bb_seen, align 8, !tbaa !35
  %475 = load ptr, ptr %474, align 8, !tbaa !96
  call void @free(ptr noundef %475)
  %476 = load ptr, ptr @bb_seen, align 8, !tbaa !35
  call void @free(ptr noundef %476)
  call void @free(ptr noundef %25)
  call void @free(ptr noundef %33)
  call void @free(ptr noundef %41)
  call void @fibheap_delete(ptr noundef %42) #14
  call void @free_dominance_info(i32 noundef 1) #14
  %477 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %478 = icmp eq ptr %477, null
  br i1 %478, label %481, label %479

479:                                              ; preds = %473
  %480 = load i32, ptr @dump_flags, align 4, !tbaa !50
  call void @dump_flow_info(ptr noundef nonnull %477, i32 noundef %480) #14
  br label %481

481:                                              ; preds = %473, %479, %5
  ret i32 0
}

declare i32 @current_ir_type() local_unnamed_addr #3

declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @mark_dfs_back_edges() local_unnamed_addr #3

declare void @dump_flow_info(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @free_dominance_info(i32 noundef) local_unnamed_addr #3

declare ptr @xcalloc(i64 noundef, i64 noundef) local_unnamed_addr #3

declare ptr @xmalloc(i64 noundef) local_unnamed_addr #3

declare ptr @fibheap_new() local_unnamed_addr #3

declare ptr @sbitmap_alloc(i32 noundef) local_unnamed_addr #3

declare void @sbitmap_zero(ptr noundef) local_unnamed_addr #3

declare void @initialize_original_copy_tables() local_unnamed_addr #3

declare ptr @fibheap_insert(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

declare i32 @fibheap_empty(ptr noundef) local_unnamed_addr #3

declare ptr @fibheap_extract_min(ptr noundef) local_unnamed_addr #3

declare ptr @fibheap_delete_node(ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @can_duplicate_block_p(ptr noundef) local_unnamed_addr #3

declare ptr @find_edge(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @duplicate_block(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @flush_pending_stmts(ptr noundef) local_unnamed_addr #3

declare void @add_phi_args_after_copy(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #1

declare void @free_original_copy_tables() local_unnamed_addr #3

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #11

declare void @fibheap_delete(ptr noundef) local_unnamed_addr #3

declare i32 @estimate_num_insns(ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @optimize_bb_for_size_p(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @find_best_predecessor(ptr noundef readonly %0) unnamed_addr #10 !prof !34 {
  %2 = icmp eq ptr %0, null
  br label %3

3:                                                ; preds = %36, %1
  %4 = phi i32 [ 0, %1 ], [ %37, %36 ]
  %5 = phi ptr [ null, %1 ], [ %28, %36 ]
  br i1 %2, label %6, label %7

6:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 687, ptr noundef nonnull @.str.2) #14
  br label %7

7:                                                ; preds = %6, %3
  %8 = load ptr, ptr %0, align 8, !tbaa !35
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %7
  %11 = load i32, ptr %8, align 8, !tbaa !92
  br label %12

12:                                               ; preds = %10, %7
  %13 = phi i32 [ %11, %10 ], [ 0, %7 ]
  %14 = icmp eq i32 %13, %4
  br i1 %14, label %19, label %15

15:                                               ; preds = %12
  %16 = zext i32 %4 to i64
  %17 = getelementptr inbounds %struct.VEC_edge_base, ptr %8, i64 0, i32 2, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !35
  br label %19

19:                                               ; preds = %12, %15
  %20 = phi ptr [ %18, %15 ], [ null, %12 ]
  %21 = icmp eq ptr %5, null
  br i1 %14, label %38, label %22

22:                                               ; preds = %19
  br i1 %21, label %26, label %23

23:                                               ; preds = %22
  %24 = tail call fastcc zeroext i8 @better_p(ptr noundef %20, ptr noundef nonnull %5), !range !98
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %23, %22
  br label %27

27:                                               ; preds = %26, %23
  %28 = phi ptr [ %20, %26 ], [ %5, %23 ]
  %29 = icmp eq ptr %8, null
  br i1 %29, label %32, label %30

30:                                               ; preds = %27
  %31 = load i32, ptr %8, align 8, !tbaa !92
  br label %32

32:                                               ; preds = %30, %27
  %33 = phi i32 [ %31, %30 ], [ 0, %27 ]
  %34 = icmp ult i32 %4, %33
  br i1 %34, label %36, label %35

35:                                               ; preds = %32
  tail call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 738, ptr noundef nonnull @.str.2) #14
  br label %36

36:                                               ; preds = %32, %35
  %37 = add i32 %4, 1
  br label %3, !llvm.loop !99

38:                                               ; preds = %19
  br i1 %21, label %64, label %39

39:                                               ; preds = %38
  %40 = load ptr, ptr %5, align 8, !tbaa !86
  %41 = getelementptr inbounds %struct.basic_block_def, ptr %40, i64 0, i32 9
  %42 = load i32, ptr %41, align 8, !tbaa !81
  %43 = icmp slt i32 %42, 2
  br i1 %43, label %64, label %44

44:                                               ; preds = %39
  %45 = tail call zeroext i8 @optimize_bb_for_size_p(ptr noundef %40) #14
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %47, label %64

47:                                               ; preds = %44
  %48 = load ptr, ptr %5, align 8, !tbaa !86
  %49 = getelementptr inbounds %struct.basic_block_def, ptr %48, i64 0, i32 11
  %50 = load i32, ptr %49, align 8, !tbaa !82
  %51 = getelementptr inbounds %struct.edge_def, ptr %5, i64 0, i32 8
  %52 = load i32, ptr %51, align 4, !tbaa !100
  %53 = mul nsw i32 %52, %50
  %54 = freeze i32 %53
  %55 = add i32 %54, 5000
  %56 = srem i32 %55, 10000
  %57 = sub nsw i32 %55, %56
  %58 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 11
  %59 = load i32, ptr %58, align 8, !tbaa !82
  %60 = load i32, ptr @branch_ratio_cutoff, align 4, !tbaa !50
  %61 = mul nsw i32 %60, %59
  %62 = icmp slt i32 %57, %61
  %63 = select i1 %62, ptr null, ptr %5
  br label %64

64:                                               ; preds = %39, %47, %38, %44
  %65 = phi ptr [ null, %44 ], [ null, %38 ], [ %63, %47 ], [ null, %39 ]
  ret ptr %65
}

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @find_best_successor(ptr nocapture noundef readonly %0) unnamed_addr #10 !prof !34 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  br label %3

3:                                                ; preds = %34, %1
  %4 = phi i32 [ 0, %1 ], [ %35, %34 ]
  %5 = phi ptr [ null, %1 ], [ %26, %34 ]
  %6 = load ptr, ptr %2, align 8, !tbaa !35
  %7 = icmp eq ptr %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %3
  %9 = load i32, ptr %6, align 8, !tbaa !92
  br label %10

10:                                               ; preds = %8, %3
  %11 = phi i32 [ %9, %8 ], [ 0, %3 ]
  %12 = icmp eq i32 %11, %4
  br i1 %12, label %17, label %13

13:                                               ; preds = %10
  %14 = zext i32 %4 to i64
  %15 = getelementptr inbounds %struct.VEC_edge_base, ptr %6, i64 0, i32 2, i64 %14
  %16 = load ptr, ptr %15, align 8, !tbaa !35
  br label %17

17:                                               ; preds = %10, %13
  %18 = phi ptr [ %16, %13 ], [ null, %10 ]
  %19 = icmp eq ptr %5, null
  br i1 %12, label %36, label %20

20:                                               ; preds = %17
  br i1 %19, label %24, label %21

21:                                               ; preds = %20
  %22 = tail call fastcc zeroext i8 @better_p(ptr noundef %18, ptr noundef nonnull %5), !range !98
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %21, %20
  br label %25

25:                                               ; preds = %24, %21
  %26 = phi ptr [ %18, %24 ], [ %5, %21 ]
  %27 = icmp eq ptr %6, null
  br i1 %27, label %30, label %28

28:                                               ; preds = %25
  %29 = load i32, ptr %6, align 8, !tbaa !92
  br label %30

30:                                               ; preds = %28, %25
  %31 = phi i32 [ %29, %28 ], [ 0, %25 ]
  %32 = icmp ult i32 %4, %31
  br i1 %32, label %34, label %33

33:                                               ; preds = %30
  tail call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 738, ptr noundef nonnull @.str.2) #14
  br label %34

34:                                               ; preds = %30, %33
  %35 = add i32 %4, 1
  br label %3, !llvm.loop !101

36:                                               ; preds = %17
  br i1 %19, label %52, label %37

37:                                               ; preds = %36
  %38 = getelementptr inbounds %struct.edge_def, ptr %5, i64 0, i32 1
  %39 = load ptr, ptr %38, align 8, !tbaa !89
  %40 = getelementptr inbounds %struct.basic_block_def, ptr %39, i64 0, i32 9
  %41 = load i32, ptr %40, align 8, !tbaa !81
  %42 = icmp slt i32 %41, 2
  br i1 %42, label %52, label %43

43:                                               ; preds = %37
  %44 = tail call zeroext i8 @optimize_bb_for_size_p(ptr noundef %39) #14
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct.edge_def, ptr %5, i64 0, i32 8
  %48 = load i32, ptr %47, align 4, !tbaa !100
  %49 = load i32, ptr @probability_cutoff, align 4, !tbaa !50
  %50 = icmp sgt i32 %48, %49
  %51 = select i1 %50, ptr %5, ptr null
  br label %52

52:                                               ; preds = %37, %46, %36, %43
  %53 = phi ptr [ null, %43 ], [ null, %36 ], [ %51, %46 ], [ null, %37 ]
  ret ptr %53
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @better_p(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #12 !prof !34 {
  %3 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 9
  %4 = load i64, ptr %3, align 8, !tbaa !102
  %5 = getelementptr inbounds %struct.edge_def, ptr %1, i64 0, i32 9
  %6 = load i64, ptr %5, align 8, !tbaa !102
  %7 = icmp eq i64 %4, %6
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = icmp sgt i64 %4, %6
  br label %44

10:                                               ; preds = %2
  %11 = load ptr, ptr %0, align 8, !tbaa !86
  %12 = getelementptr inbounds %struct.basic_block_def, ptr %11, i64 0, i32 11
  %13 = load i32, ptr %12, align 8, !tbaa !82
  %14 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 8
  %15 = load i32, ptr %14, align 4, !tbaa !100
  %16 = mul nsw i32 %15, %13
  %17 = load ptr, ptr %1, align 8, !tbaa !86
  %18 = getelementptr inbounds %struct.basic_block_def, ptr %17, i64 0, i32 11
  %19 = load i32, ptr %18, align 8, !tbaa !82
  %20 = getelementptr inbounds %struct.edge_def, ptr %1, i64 0, i32 8
  %21 = load i32, ptr %20, align 4, !tbaa !100
  %22 = mul nsw i32 %21, %19
  %23 = icmp eq i32 %16, %22
  br i1 %23, label %26, label %24

24:                                               ; preds = %10
  %25 = icmp sgt i32 %16, %22
  br label %44

26:                                               ; preds = %10
  %27 = icmp eq ptr %11, %17
  br i1 %27, label %34, label %28

28:                                               ; preds = %26
  %29 = getelementptr inbounds %struct.basic_block_def, ptr %11, i64 0, i32 9
  %30 = load i32, ptr %29, align 8, !tbaa !81
  %31 = getelementptr inbounds %struct.basic_block_def, ptr %17, i64 0, i32 9
  %32 = load i32, ptr %31, align 8, !tbaa !81
  %33 = icmp sgt i32 %30, %32
  br label %44

34:                                               ; preds = %26
  %35 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 1
  %36 = load ptr, ptr %35, align 8, !tbaa !89
  %37 = getelementptr inbounds %struct.basic_block_def, ptr %36, i64 0, i32 9
  %38 = load i32, ptr %37, align 8, !tbaa !81
  %39 = getelementptr inbounds %struct.edge_def, ptr %1, i64 0, i32 1
  %40 = load ptr, ptr %39, align 8, !tbaa !89
  %41 = getelementptr inbounds %struct.basic_block_def, ptr %40, i64 0, i32 9
  %42 = load i32, ptr %41, align 8, !tbaa !81
  %43 = icmp sgt i32 %38, %42
  br label %44

44:                                               ; preds = %34, %28, %24, %8
  %45 = phi i1 [ %9, %8 ], [ %25, %24 ], [ %33, %28 ], [ %43, %34 ]
  %46 = zext i1 %45 to i8
  ret i8 %46
}

declare ptr @sbitmap_resize(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

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
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree nounwind }
attributes #14 = { nounwind }

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
!55 = !{!"tracer.c;gate_tracer"}
!56 = !{!"branch_weights", i32 38, i32 0}
!57 = !{!"branch_weights", i32 0, i32 38}
!58 = !{!59, !36, i64 8}
!59 = !{!"function", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !36, i64 96, !41, i64 104, !41, i64 108, !41, i64 112, !41, i64 116, !41, i64 120, !41, i64 124, !36, i64 128, !41, i64 136, !41, i64 137, !41, i64 138, !41, i64 138, !41, i64 138, !41, i64 138, !41, i64 138, !41, i64 138, !41, i64 138, !41, i64 139, !41, i64 139, !41, i64 139, !41, i64 139, !41, i64 139, !41, i64 139, !41, i64 139}
!60 = !{!61, !41, i64 24}
!61 = !{!"control_flow_graph", !36, i64 0, !36, i64 8, !36, i64 16, !41, i64 24, !41, i64 28, !41, i64 32, !36, i64 40, !41, i64 48, !37, i64 52, !37, i64 60, !41, i64 68, !41, i64 72}
!62 = !{!61, !41, i64 32}
!63 = !{!64, !41, i64 8}
!64 = !{!"param_info", !36, i64 0, !41, i64 8, !37, i64 12, !41, i64 16, !41, i64 20, !36, i64 24}
!65 = !{!61, !36, i64 0}
!66 = !{!67, !36, i64 56}
!67 = !{!"basic_block_def", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !36, i64 48, !36, i64 56, !37, i64 64, !42, i64 72, !41, i64 80, !41, i64 84, !41, i64 88, !41, i64 92, !41, i64 96}
!68 = !{!61, !36, i64 8}
!69 = !{!67, !41, i64 96}
!70 = !{!71}
!71 = distinct !{!71, !72, !"gsi_start_bb: argument 0"}
!72 = distinct !{!72, !"gsi_start_bb"}
!73 = !{!74, !36, i64 0}
!74 = !{!"gimple_bb_info", !36, i64 0, !36, i64 8}
!75 = !{!76, !36, i64 0}
!76 = !{!"gimple_seq_d", !36, i64 0, !36, i64 8, !36, i64 16}
!77 = !{!78, !36, i64 0}
!78 = !{!"gimple_seq_node_d", !36, i64 0, !36, i64 8, !36, i64 16}
!79 = !{!78, !36, i64 16}
!80 = distinct !{!80, !52, !53}
!81 = !{!67, !41, i64 80}
!82 = !{!67, !41, i64 88}
!83 = distinct !{!83, !52, !53}
!84 = distinct !{!84, !52, !53}
!85 = !{!42, !42, i64 0}
!86 = !{!87, !36, i64 0}
!87 = !{!"edge_def", !36, i64 0, !36, i64 8, !37, i64 16, !36, i64 24, !36, i64 32, !41, i64 40, !41, i64 44, !41, i64 48, !41, i64 52, !42, i64 56}
!88 = !{!87, !41, i64 48}
!89 = !{!87, !36, i64 8}
!90 = distinct !{!90, !52, !53}
!91 = !{!67, !36, i64 0}
!92 = !{!93, !41, i64 0}
!93 = !{!"VEC_edge_base", !41, i64 0, !41, i64 4, !37, i64 8}
!94 = !{!95, !41, i64 12}
!95 = !{!"simple_bitmap_def", !36, i64 0, !41, i64 8, !41, i64 12, !37, i64 16}
!96 = !{!95, !36, i64 0}
!97 = distinct !{!97, !52, !53}
!98 = !{i8 0, i8 2}
!99 = distinct !{!99, !52, !53}
!100 = !{!87, !41, i64 52}
!101 = distinct !{!101, !52, !53}
!102 = !{!87, !42, i64 56}
