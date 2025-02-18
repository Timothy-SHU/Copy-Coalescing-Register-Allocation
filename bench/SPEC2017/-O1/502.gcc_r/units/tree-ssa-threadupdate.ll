; ModuleID = 'tree-ssa-threadupdate.c'
source_filename = "tree-ssa-threadupdate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.thread_stats_d = type { i64 }
%struct.bitmap_element_def = type { ptr, ptr, i32, [2 x i64] }
%struct._IO_FILE = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, [1 x i8], ptr, i64, ptr, ptr, ptr, ptr, i64, i32, [20 x i8] }
%struct.redirection_data = type { ptr, ptr, ptr, i8 }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.VEC_edge_base = type { i32, i32, [1 x ptr] }
%struct.edge_def = type { ptr, ptr, %union.edge_def_insns, ptr, ptr, i32, i32, i32, i32, i64 }
%union.edge_def_insns = type { ptr }
%struct.basic_block_def = type { ptr, ptr, ptr, ptr, [2 x ptr], ptr, ptr, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%union.basic_block_il_dependent = type { ptr }
%struct.control_flow_graph = type { ptr, ptr, ptr, i32, i32, i32, ptr, i32, [2 x i32], [2 x i32], i32, i32 }
%struct.VEC_basic_block_base = type { i32, i32, [1 x ptr] }
%struct.loops = type { i32, ptr, ptr, ptr }
%struct.loop = type { i32, i32, ptr, ptr, %struct.lpt_decision, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.double_int, %struct.double_int, i8, i8, i32, ptr, ptr, i8, ptr }
%struct.lpt_decision = type { i32, i32 }
%struct.double_int = type { i64, i64 }
%struct.VEC_int_base = type { i32, i32, [1 x i32] }
%struct.VEC_loop_p_base = type { i32, i32, [1 x ptr] }
%struct.local_info = type { ptr, ptr, i8 }
%struct.gimple_seq_node_d = type { ptr, ptr, ptr }
%struct.el = type { ptr, ptr }
%struct.gimple_stmt_iterator = type { ptr, ptr, ptr }
%struct.gimple_statement_phi = type { %struct.gimple_statement_base, i32, i32, ptr, [1 x %struct.phi_arg_d] }
%struct.gimple_statement_base = type { i32, i32, i32, i32, ptr, ptr }
%struct.phi_arg_d = type { %struct.ssa_use_operand_d, ptr, i32 }
%struct.ssa_use_operand_d = type { ptr, ptr, %union.anon, ptr }
%union.anon = type { ptr }
%struct.gimple_seq_d = type { ptr, ptr, ptr }

@stdout = external local_unnamed_addr global ptr, align 8
@stdin = external local_unnamed_addr global ptr, align 8
@cfun = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [24 x i8] c"tree-ssa-threadupdate.c\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@threaded_edges = internal unnamed_addr global ptr null, align 8
@thread_stats = dso_local local_unnamed_addr global %struct.thread_stats_d zeroinitializer, align 8
@.str.2 = private unnamed_addr constant [15 x i8] c"Jumps threaded\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"./basic-block.h\00", align 1
@bitmap_zero_bits = external local_unnamed_addr global %struct.bitmap_element_def, align 8
@redirection_data = internal unnamed_addr global ptr null, align 8
@.str.4 = private unnamed_addr constant [11 x i8] c"./gimple.h\00", align 1
@dump_file = external local_unnamed_addr global ptr, align 8
@dump_flags = external local_unnamed_addr global i32, align 4
@.str.5 = private unnamed_addr constant [33 x i8] c"  Threaded jump %d --> %d to %d\0A\00", align 1
@mfb_kj_edge = external local_unnamed_addr global ptr, align 8
@dbds_ce_stop = internal unnamed_addr global ptr null, align 8

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @vprintf(ptr noalias nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 !prof !75 {
  %3 = load ptr, ptr @stdout, align 8, !tbaa !76
  %4 = tail call i32 @vfprintf(ptr noundef %3, ptr noundef %0, ptr noundef %1)
  ret i32 %4
}

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @getchar() local_unnamed_addr #0 !prof !75 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !76
  %2 = tail call i32 @getc(ptr noundef %1)
  ret i32 %2
}

; Function Attrs: nofree nounwind
declare noundef i32 @getc(ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !75 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !80
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !85
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !86

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #17
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !80
  %11 = load i8, ptr %3, align 1, !tbaa !87
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

declare i32 @__uflow(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !75 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !80
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !85
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !86

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #17
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !80
  %11 = load i8, ptr %3, align 1, !tbaa !87
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #2 !prof !75 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !76
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !80
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !85
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !86

7:                                                ; preds = %0
  %8 = tail call i32 @__uflow(ptr noundef %1) #17
  br label %13

9:                                                ; preds = %0
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !80
  %11 = load i8, ptr %3, align 1, !tbaa !87
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @putchar(i32 noundef %0) local_unnamed_addr #0 !prof !75 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !76
  %3 = tail call i32 @putc(i32 noundef %0, ptr noundef %2)
  ret i32 %3
}

; Function Attrs: nofree nounwind
declare noundef i32 @putc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !75 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !88
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !89
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !86

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #17
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !88
  store i8 %12, ptr %4, align 1, !tbaa !87
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

declare i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !75 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !88
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !89
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !86

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #17
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !88
  store i8 %12, ptr %4, align 1, !tbaa !87
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 noundef %0) local_unnamed_addr #2 !prof !75 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !76
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !88
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !89
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !86

8:                                                ; preds = %1
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %2, i32 noundef %9) #17
  br label %15

11:                                               ; preds = %1
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !88
  store i8 %12, ptr %4, align 1, !tbaa !87
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i64 @getline(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 !prof !75 {
  %4 = tail call i64 @__getdelim(ptr noundef %0, ptr noundef %1, i32 noundef 10, ptr noundef %2) #17
  ret i64 %4
}

declare i64 @__getdelim(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @feof_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !75 {
  %2 = load i32, ptr %0, align 8, !tbaa !90
  %3 = lshr i32 %2, 4
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @ferror_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !75 {
  %2 = load i32, ptr %0, align 8, !tbaa !90
  %3 = lshr i32 %2, 5
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @tolower(i32 noundef %0) local_unnamed_addr #5 !prof !75 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_tolower_loc() #17
  %6 = load ptr, ptr %5, align 8, !tbaa !76
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !91
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_tolower_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @toupper(i32 noundef %0) local_unnamed_addr #5 !prof !75 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_toupper_loc() #17
  %6 = load ptr, ptr %5, align 8, !tbaa !76
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !91
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_toupper_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i32 @atoi(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !75 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  %3 = trunc i64 %2 to i32
  ret i32 %3
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atol(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !75 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atoll(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !75 {
  %2 = tail call i64 @strtoll(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtoll(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local noundef ptr @bsearch(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #2 !prof !75 {
  %6 = icmp eq i64 %2, 0
  br i1 %6, label %24, label %7

7:                                                ; preds = %5, %20
  %8 = phi i64 [ %22, %20 ], [ 0, %5 ]
  %9 = phi i64 [ %21, %20 ], [ %2, %5 ]
  %10 = add i64 %8, %9
  %11 = lshr i64 %10, 1
  %12 = mul i64 %11, %3
  %13 = getelementptr inbounds i8, ptr %1, i64 %12
  %14 = tail call i32 %4(ptr noundef %0, ptr noundef %13) #17
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
  br i1 %23, label %7, label %24, !llvm.loop !92

24:                                               ; preds = %16, %20, %5
  %25 = phi ptr [ null, %5 ], [ %13, %16 ], [ null, %20 ]
  ret ptr %25
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local double @atof(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !75 {
  %2 = tail call double @strtod(ptr nocapture noundef %0, ptr noundef null)
  ret double %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @thread_through_all_blocks(i8 noundef zeroext %0) local_unnamed_addr #9 !prof !95 {
  %2 = alloca %struct.redirection_data, align 8
  %3 = load ptr, ptr @cfun, align 8, !tbaa !76
  %4 = getelementptr inbounds %struct.function, ptr %3, i64 0, i32 4
  %5 = load ptr, ptr %4, align 8, !tbaa !96
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %8, !prof !98

7:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1042, ptr noundef nonnull @.str.1) #17
  br label %8

8:                                                ; preds = %1, %7
  %9 = load ptr, ptr @threaded_edges, align 8, !tbaa !76
  %10 = icmp eq ptr %9, null
  br i1 %10, label %788, label %11, !prof !99

11:                                               ; preds = %8
  %12 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #17
  store i64 0, ptr @thread_stats, align 8
  %13 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #17
  br label %14

14:                                               ; preds = %23, %11
  %15 = phi i32 [ 0, %11 ], [ %37, %23 ]
  %16 = load ptr, ptr @threaded_edges, align 8
  %17 = icmp eq ptr %16, null
  br i1 %17, label %20, label %18, !prof !100

18:                                               ; preds = %14
  %19 = load i32, ptr %16, align 8, !tbaa !101
  br label %20

20:                                               ; preds = %18, %14
  %21 = phi i32 [ %19, %18 ], [ 0, %14 ]
  %22 = icmp ult i32 %15, %21
  br i1 %22, label %23, label %38, !prof !103

23:                                               ; preds = %20
  %24 = zext i32 %15 to i64
  %25 = getelementptr inbounds %struct.VEC_edge_base, ptr %16, i64 0, i32 2, i64 %24
  %26 = load ptr, ptr %25, align 8, !tbaa !76
  %27 = or disjoint i32 %15, 1
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds %struct.VEC_edge_base, ptr %16, i64 0, i32 2, i64 %28
  %30 = load ptr, ptr %29, align 8, !tbaa !76
  %31 = getelementptr inbounds %struct.edge_def, ptr %26, i64 0, i32 3
  store ptr %30, ptr %31, align 8, !tbaa !104
  %32 = getelementptr inbounds %struct.edge_def, ptr %26, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !106
  %34 = getelementptr inbounds %struct.basic_block_def, ptr %33, i64 0, i32 9
  %35 = load i32, ptr %34, align 8, !tbaa !107
  %36 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %13, i32 noundef %35) #17
  %37 = add i32 %15, 2
  br label %14, !llvm.loop !109

38:                                               ; preds = %20
  %39 = load ptr, ptr @cfun, align 8, !tbaa !76
  %40 = tail call zeroext i8 @optimize_function_for_size_p(ptr noundef %39) #17
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %166, label %42, !prof !110

42:                                               ; preds = %38
  %43 = load ptr, ptr %13, align 8, !tbaa !111
  %44 = icmp eq ptr %43, null
  %45 = select i1 %44, ptr @bitmap_zero_bits, ptr %43
  %46 = getelementptr inbounds %struct.bitmap_element_def, ptr %45, i64 0, i32 2
  %47 = load i32, ptr %46, align 8, !tbaa !113
  %48 = shl i32 %47, 7
  %49 = getelementptr inbounds %struct.bitmap_element_def, ptr %45, i64 0, i32 3
  %50 = load i64, ptr %49, align 8, !tbaa !115
  %51 = icmp eq i64 %50, 0
  %52 = zext i1 %51 to i32
  %53 = or disjoint i32 %48, %52
  br label %54

54:                                               ; preds = %163, %42
  %55 = phi ptr [ %45, %42 ], [ %110, %163 ]
  %56 = phi i32 [ 0, %42 ], [ %111, %163 ]
  %57 = phi i64 [ %50, %42 ], [ %164, %163 ]
  %58 = phi i32 [ %53, %42 ], [ %165, %163 ]
  %59 = icmp eq i64 %57, 0
  br i1 %59, label %74, label %60

60:                                               ; preds = %88, %54
  %61 = phi ptr [ %55, %54 ], [ %79, %88 ]
  %62 = phi i32 [ %56, %54 ], [ %89, %88 ]
  %63 = phi i64 [ %57, %54 ], [ %93, %88 ]
  %64 = phi i32 [ %58, %54 ], [ %90, %88 ]
  %65 = and i64 %63, 1
  %66 = icmp eq i64 %65, 0
  br i1 %66, label %67, label %109

67:                                               ; preds = %60, %67
  %68 = phi i32 [ %71, %67 ], [ %64, %60 ]
  %69 = phi i64 [ %70, %67 ], [ %63, %60 ]
  %70 = lshr exact i64 %69, 1
  %71 = add i32 %68, 1
  %72 = and i64 %69, 2
  %73 = icmp eq i64 %72, 0
  br i1 %73, label %67, label %109, !llvm.loop !116

74:                                               ; preds = %54
  %75 = add i32 %58, 63
  %76 = and i32 %75, -64
  %77 = add i32 %56, 1
  br label %78

78:                                               ; preds = %105, %74
  %79 = phi ptr [ %55, %74 ], [ %103, %105 ]
  %80 = phi i64 [ %57, %74 ], [ %100, %105 ]
  %81 = phi i32 [ %76, %74 ], [ %108, %105 ]
  %82 = phi i32 [ %77, %74 ], [ 0, %105 ]
  %83 = icmp eq i32 %82, 2
  br i1 %83, label %99, label %84

84:                                               ; preds = %78
  %85 = add i32 %81, 128
  %86 = shl i32 %82, 6
  %87 = sub i32 %85, %86
  br label %88

88:                                               ; preds = %84, %95
  %89 = phi i32 [ %97, %95 ], [ %82, %84 ]
  %90 = phi i32 [ %96, %95 ], [ %81, %84 ]
  %91 = zext i32 %89 to i64
  %92 = getelementptr inbounds %struct.bitmap_element_def, ptr %79, i64 0, i32 3, i64 %91
  %93 = load i64, ptr %92, align 8, !tbaa !115
  %94 = icmp eq i64 %93, 0
  br i1 %94, label %95, label %60

95:                                               ; preds = %88
  %96 = add i32 %90, 64
  %97 = add i32 %89, 1
  %98 = icmp eq i32 %97, 2
  br i1 %98, label %99, label %88, !llvm.loop !117

99:                                               ; preds = %95, %78
  %100 = phi i64 [ %80, %78 ], [ %93, %95 ]
  %101 = phi i32 [ %81, %78 ], [ %87, %95 ]
  %102 = phi i32 [ %82, %78 ], [ 2, %95 ]
  %103 = load ptr, ptr %79, align 8, !tbaa !118
  %104 = icmp eq ptr %103, null
  br i1 %104, label %109, label %105

105:                                              ; preds = %99
  %106 = getelementptr inbounds %struct.bitmap_element_def, ptr %103, i64 0, i32 2
  %107 = load i32, ptr %106, align 8, !tbaa !113
  %108 = shl i32 %107, 7
  br label %78, !llvm.loop !119

109:                                              ; preds = %99, %67, %60
  %110 = phi ptr [ %61, %60 ], [ %61, %67 ], [ %103, %99 ]
  %111 = phi i32 [ %62, %60 ], [ %62, %67 ], [ %102, %99 ]
  %112 = phi i64 [ %63, %60 ], [ %70, %67 ], [ %100, %99 ]
  %113 = phi i32 [ %64, %60 ], [ %71, %67 ], [ %101, %99 ]
  %114 = phi i1 [ false, %60 ], [ false, %67 ], [ true, %99 ]
  br i1 %114, label %167, label %115

115:                                              ; preds = %109
  %116 = load ptr, ptr @cfun, align 8, !tbaa !76
  %117 = getelementptr inbounds %struct.function, ptr %116, i64 0, i32 1
  %118 = load ptr, ptr %117, align 8, !tbaa !120
  %119 = getelementptr inbounds %struct.control_flow_graph, ptr %118, i64 0, i32 2
  %120 = load ptr, ptr %119, align 8, !tbaa !121
  %121 = zext i32 %113 to i64
  %122 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %120, i64 0, i32 2, i64 %121
  %123 = load ptr, ptr %122, align 8, !tbaa !76
  %124 = load ptr, ptr %123, align 8, !tbaa !123
  %125 = icmp eq ptr %124, null
  br i1 %125, label %128, label %126

126:                                              ; preds = %115
  %127 = load i32, ptr %124, align 8, !tbaa !101
  br label %128

128:                                              ; preds = %126, %115
  %129 = phi i32 [ %127, %126 ], [ 0, %115 ]
  %130 = icmp ugt i32 %129, 1
  br i1 %130, label %131, label %161

131:                                              ; preds = %128
  %132 = tail call fastcc zeroext i8 @redirection_block_p(ptr noundef nonnull %123), !range !124
  %133 = icmp eq i8 %132, 0
  br i1 %133, label %134, label %161

134:                                              ; preds = %131, %159
  %135 = phi i32 [ %160, %159 ], [ 0, %131 ]
  %136 = load ptr, ptr %123, align 8, !tbaa !76
  %137 = icmp eq ptr %136, null
  br i1 %137, label %140, label %138

138:                                              ; preds = %134
  %139 = load i32, ptr %136, align 8, !tbaa !101
  br label %140

140:                                              ; preds = %138, %134
  %141 = phi i32 [ %139, %138 ], [ 0, %134 ]
  %142 = icmp eq i32 %141, %135
  br i1 %142, label %147, label %143

143:                                              ; preds = %140
  %144 = zext i32 %135 to i64
  %145 = getelementptr inbounds %struct.VEC_edge_base, ptr %136, i64 0, i32 2, i64 %144
  %146 = load ptr, ptr %145, align 8, !tbaa !76
  br label %147

147:                                              ; preds = %143, %140
  %148 = phi ptr [ %146, %143 ], [ null, %140 ]
  br i1 %142, label %163, label %149

149:                                              ; preds = %147
  %150 = getelementptr inbounds %struct.edge_def, ptr %148, i64 0, i32 3
  store ptr null, ptr %150, align 8, !tbaa !104
  %151 = load ptr, ptr %123, align 8, !tbaa !76
  %152 = icmp eq ptr %151, null
  br i1 %152, label %155, label %153

153:                                              ; preds = %149
  %154 = load i32, ptr %151, align 8, !tbaa !101
  br label %155

155:                                              ; preds = %153, %149
  %156 = phi i32 [ %154, %153 ], [ 0, %149 ]
  %157 = icmp ult i32 %135, %156
  br i1 %157, label %159, label %158

158:                                              ; preds = %155
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 738, ptr noundef nonnull @.str.1) #17
  br label %159

159:                                              ; preds = %158, %155
  %160 = add i32 %135, 1
  br label %134, !llvm.loop !125

161:                                              ; preds = %131, %128
  %162 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %12, i32 noundef %113) #17
  br label %163

163:                                              ; preds = %147, %161
  %164 = lshr i64 %112, 1
  %165 = add i32 %113, 1
  br label %54, !llvm.loop !126

166:                                              ; preds = %38
  tail call void @bitmap_copy(ptr noundef %12, ptr noundef %13) #17
  br label %167

167:                                              ; preds = %109, %166
  tail call void @bitmap_obstack_free(ptr noundef %13) #17
  tail call void @initialize_original_copy_tables() #17
  %168 = load ptr, ptr %12, align 8, !tbaa !111
  %169 = icmp eq ptr %168, null
  %170 = select i1 %169, ptr @bitmap_zero_bits, ptr %168, !prof !127
  %171 = getelementptr inbounds %struct.bitmap_element_def, ptr %170, i64 0, i32 2
  %172 = load i32, ptr %171, align 8, !tbaa !113
  %173 = shl i32 %172, 7
  %174 = getelementptr inbounds %struct.bitmap_element_def, ptr %170, i64 0, i32 3
  %175 = load i64, ptr %174, align 8, !tbaa !115
  %176 = icmp eq i64 %175, 0
  %177 = zext i1 %176 to i32
  %178 = or disjoint i32 %173, %177
  br label %179

179:                                              ; preds = %260, %167
  %180 = phi i32 [ 0, %167 ], [ %236, %260 ]
  %181 = phi i64 [ %175, %167 ], [ %262, %260 ]
  %182 = phi ptr [ %170, %167 ], [ %238, %260 ]
  %183 = phi i32 [ %178, %167 ], [ %263, %260 ]
  %184 = phi i8 [ 0, %167 ], [ %261, %260 ]
  %185 = icmp eq i64 %181, 0
  br i1 %185, label %200, label %186, !prof !128

186:                                              ; preds = %214, %179
  %187 = phi i32 [ %180, %179 ], [ %215, %214 ]
  %188 = phi i64 [ %181, %179 ], [ %219, %214 ]
  %189 = phi ptr [ %182, %179 ], [ %206, %214 ]
  %190 = phi i32 [ %183, %179 ], [ %216, %214 ]
  %191 = and i64 %188, 1
  %192 = icmp eq i64 %191, 0
  br i1 %192, label %193, label %235, !prof !129

193:                                              ; preds = %186, %193
  %194 = phi i32 [ %197, %193 ], [ %190, %186 ]
  %195 = phi i64 [ %196, %193 ], [ %188, %186 ]
  %196 = lshr exact i64 %195, 1
  %197 = add i32 %194, 1
  %198 = and i64 %195, 2
  %199 = icmp eq i64 %198, 0
  br i1 %199, label %193, label %235, !prof !130, !llvm.loop !116

200:                                              ; preds = %179
  %201 = add i32 %183, 63
  %202 = and i32 %201, -64
  %203 = add i32 %180, 1
  br label %204

204:                                              ; preds = %231, %200
  %205 = phi i64 [ %181, %200 ], [ %226, %231 ]
  %206 = phi ptr [ %182, %200 ], [ %229, %231 ]
  %207 = phi i32 [ %202, %200 ], [ %234, %231 ]
  %208 = phi i32 [ %203, %200 ], [ 0, %231 ]
  %209 = icmp eq i32 %208, 2
  br i1 %209, label %225, label %210, !prof !131

210:                                              ; preds = %204
  %211 = add i32 %207, 128
  %212 = shl i32 %208, 6
  %213 = sub i32 %211, %212
  br label %214

214:                                              ; preds = %210, %221
  %215 = phi i32 [ %223, %221 ], [ %208, %210 ]
  %216 = phi i32 [ %222, %221 ], [ %207, %210 ]
  %217 = zext i32 %215 to i64
  %218 = getelementptr inbounds %struct.bitmap_element_def, ptr %206, i64 0, i32 3, i64 %217
  %219 = load i64, ptr %218, align 8, !tbaa !115
  %220 = icmp eq i64 %219, 0
  br i1 %220, label %221, label %186, !prof !132

221:                                              ; preds = %214
  %222 = add i32 %216, 64
  %223 = add i32 %215, 1
  %224 = icmp eq i32 %223, 2
  br i1 %224, label %225, label %214, !prof !133, !llvm.loop !117

225:                                              ; preds = %221, %204
  %226 = phi i64 [ %205, %204 ], [ %219, %221 ]
  %227 = phi i32 [ %207, %204 ], [ %213, %221 ]
  %228 = phi i32 [ %208, %204 ], [ 2, %221 ]
  %229 = load ptr, ptr %206, align 8, !tbaa !118
  %230 = icmp eq ptr %229, null
  br i1 %230, label %235, label %231, !prof !134

231:                                              ; preds = %225
  %232 = getelementptr inbounds %struct.bitmap_element_def, ptr %229, i64 0, i32 2
  %233 = load i32, ptr %232, align 8, !tbaa !113
  %234 = shl i32 %233, 7
  br label %204, !llvm.loop !119

235:                                              ; preds = %225, %193, %186
  %236 = phi i32 [ %187, %186 ], [ %187, %193 ], [ %228, %225 ]
  %237 = phi i64 [ %188, %186 ], [ %196, %193 ], [ %226, %225 ]
  %238 = phi ptr [ %189, %186 ], [ %189, %193 ], [ %229, %225 ]
  %239 = phi i32 [ %190, %186 ], [ %197, %193 ], [ %227, %225 ]
  %240 = phi i1 [ false, %186 ], [ false, %193 ], [ true, %225 ]
  %241 = load ptr, ptr @cfun, align 8, !tbaa !76
  br i1 %240, label %264, label %242, !prof !135

242:                                              ; preds = %235
  %243 = getelementptr inbounds %struct.function, ptr %241, i64 0, i32 1
  %244 = load ptr, ptr %243, align 8, !tbaa !120
  %245 = getelementptr inbounds %struct.control_flow_graph, ptr %244, i64 0, i32 2
  %246 = load ptr, ptr %245, align 8, !tbaa !121
  %247 = zext i32 %239 to i64
  %248 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %246, i64 0, i32 2, i64 %247
  %249 = load ptr, ptr %248, align 8, !tbaa !76
  %250 = load ptr, ptr %249, align 8, !tbaa !123
  %251 = icmp eq ptr %250, null
  br i1 %251, label %254, label %252, !prof !136

252:                                              ; preds = %242
  %253 = load i32, ptr %250, align 8, !tbaa !101
  br label %254

254:                                              ; preds = %242, %252
  %255 = phi i32 [ %253, %252 ], [ 0, %242 ]
  %256 = icmp eq i32 %255, 0
  br i1 %256, label %260, label %257, !prof !136

257:                                              ; preds = %254
  %258 = tail call fastcc zeroext i8 @thread_block(ptr noundef nonnull %249, i8 noundef zeroext 1)
  %259 = or i8 %258, %184
  br label %260

260:                                              ; preds = %257, %254
  %261 = phi i8 [ %259, %257 ], [ %184, %254 ]
  %262 = lshr i64 %237, 1
  %263 = add i32 %239, 1
  br label %179, !llvm.loop !137

264:                                              ; preds = %235
  %265 = getelementptr inbounds %struct.function, ptr %241, i64 0, i32 4
  %266 = load ptr, ptr %265, align 8, !tbaa !96
  %267 = icmp eq ptr %266, null
  br i1 %267, label %359, label %268, !prof !127

268:                                              ; preds = %264
  %269 = getelementptr inbounds %struct.loops, ptr %266, i64 0, i32 1
  %270 = load ptr, ptr %269, align 8, !tbaa !138
  %271 = icmp eq ptr %270, null
  br i1 %271, label %274, label %272, !prof !127

272:                                              ; preds = %268
  %273 = load i32, ptr %270, align 8, !tbaa !140
  br label %274

274:                                              ; preds = %272, %268
  %275 = phi i32 [ %273, %272 ], [ 0, %268 ]
  %276 = tail call ptr @vec_heap_o_reserve_exact(ptr noundef null, i32 noundef %275, i64 noundef 8, i64 noundef 4) #17
  %277 = load ptr, ptr @cfun, align 8, !tbaa !76
  %278 = getelementptr inbounds %struct.function, ptr %277, i64 0, i32 4
  %279 = load ptr, ptr %278, align 8, !tbaa !96
  %280 = getelementptr inbounds %struct.loops, ptr %279, i64 0, i32 3
  %281 = load ptr, ptr %280, align 8, !tbaa !142
  br label %282

282:                                              ; preds = %282, %274
  %283 = phi ptr [ %281, %274 ], [ %285, %282 ]
  %284 = getelementptr inbounds %struct.loop, ptr %283, i64 0, i32 8
  %285 = load ptr, ptr %284, align 8, !tbaa !143
  %286 = icmp eq ptr %285, null
  br i1 %286, label %287, label %282, !prof !110, !llvm.loop !147

287:                                              ; preds = %282, %335
  %288 = phi ptr [ %336, %335 ], [ %283, %282 ]
  %289 = load i32, ptr %288, align 8, !tbaa !148
  %290 = icmp sgt i32 %289, 0
  br i1 %290, label %291, label %296, !prof !127

291:                                              ; preds = %287
  %292 = load i32, ptr %276, align 4, !tbaa !149
  %293 = add i32 %292, 1
  store i32 %293, ptr %276, align 4, !tbaa !149
  %294 = zext i32 %292 to i64
  %295 = getelementptr inbounds %struct.VEC_int_base, ptr %276, i64 0, i32 2, i64 %294
  store i32 %289, ptr %295, align 4, !tbaa !91
  br label %296

296:                                              ; preds = %291, %287
  %297 = getelementptr inbounds %struct.loop, ptr %288, i64 0, i32 9
  %298 = load ptr, ptr %297, align 8, !tbaa !151
  %299 = icmp eq ptr %298, null
  br i1 %299, label %305, label %300, !prof !110

300:                                              ; preds = %296, %300
  %301 = phi ptr [ %303, %300 ], [ %298, %296 ]
  %302 = getelementptr inbounds %struct.loop, ptr %301, i64 0, i32 8
  %303 = load ptr, ptr %302, align 8, !tbaa !143
  %304 = icmp eq ptr %303, null
  br i1 %304, label %335, label %300, !llvm.loop !152

305:                                              ; preds = %296
  %306 = getelementptr inbounds %struct.loop, ptr %288, i64 0, i32 7
  %307 = load ptr, ptr %306, align 8, !tbaa !153
  %308 = icmp eq ptr %307, null
  br i1 %308, label %311, label %309, !prof !110

309:                                              ; preds = %305
  %310 = load i32, ptr %307, align 8, !tbaa !140
  br label %311

311:                                              ; preds = %309, %305
  %312 = phi i32 [ %310, %309 ], [ 0, %305 ]
  %313 = icmp eq i32 %312, 0
  br i1 %313, label %319, label %314, !prof !110

314:                                              ; preds = %311
  %315 = add i32 %312, -1
  %316 = zext i32 %315 to i64
  %317 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %307, i64 0, i32 2, i64 %316
  %318 = load ptr, ptr %317, align 8, !tbaa !76
  br label %319

319:                                              ; preds = %314, %311
  %320 = phi ptr [ %318, %314 ], [ null, %311 ]
  %321 = icmp eq ptr %320, null
  br i1 %321, label %322, label %324, !prof !110

322:                                              ; preds = %319
  %323 = icmp eq ptr %276, null
  br label %337

324:                                              ; preds = %319
  br i1 %308, label %327, label %325

325:                                              ; preds = %324
  %326 = load i32, ptr %307, align 8, !tbaa !140
  br label %327

327:                                              ; preds = %325, %324
  %328 = phi i32 [ %326, %325 ], [ 0, %324 ]
  %329 = icmp eq i32 %328, 0
  br i1 %329, label %335, label %330

330:                                              ; preds = %327
  %331 = add i32 %328, -1
  %332 = zext i32 %331 to i64
  %333 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %307, i64 0, i32 2, i64 %332
  %334 = load ptr, ptr %333, align 8, !tbaa !76
  br label %335

335:                                              ; preds = %300, %330, %327
  %336 = phi ptr [ %334, %330 ], [ null, %327 ], [ %301, %300 ]
  br label %287, !llvm.loop !154

337:                                              ; preds = %322, %349
  %338 = phi i32 [ %351, %349 ], [ 0, %322 ]
  br i1 %323, label %346, label %339, !prof !127

339:                                              ; preds = %337
  %340 = load i32, ptr %276, align 4, !tbaa !149
  %341 = icmp ugt i32 %340, %338
  br i1 %341, label %342, label %346, !prof !127

342:                                              ; preds = %339
  %343 = zext i32 %338 to i64
  %344 = getelementptr inbounds %struct.VEC_int_base, ptr %276, i64 0, i32 2, i64 %343
  %345 = load i32, ptr %344, align 4, !tbaa !91
  br label %346

346:                                              ; preds = %342, %339, %337
  %347 = phi i32 [ %345, %342 ], [ 0, %339 ], [ 0, %337 ]
  %348 = phi i1 [ false, %342 ], [ true, %339 ], [ true, %337 ]
  br i1 %348, label %357, label %349, !prof !110

349:                                              ; preds = %346
  %350 = getelementptr inbounds %struct.loops, ptr %279, i64 0, i32 1
  %351 = add i32 %338, 1
  %352 = load ptr, ptr %350, align 8, !tbaa !138
  %353 = zext i32 %347 to i64
  %354 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %352, i64 0, i32 2, i64 %353
  %355 = load ptr, ptr %354, align 8, !tbaa !76
  %356 = icmp eq ptr %355, null
  br i1 %356, label %337, label %359, !llvm.loop !155

357:                                              ; preds = %346
  br i1 %323, label %359, label %358, !prof !127

358:                                              ; preds = %357
  tail call void @free(ptr noundef %276)
  br label %359

359:                                              ; preds = %349, %357, %358, %264
  %360 = phi ptr [ null, %264 ], [ null, %358 ], [ null, %357 ], [ %355, %349 ]
  %361 = phi i32 [ 0, %264 ], [ %338, %358 ], [ %338, %357 ], [ %351, %349 ]
  %362 = phi ptr [ null, %264 ], [ null, %358 ], [ null, %357 ], [ %276, %349 ]
  %363 = icmp eq ptr %360, null
  br i1 %363, label %772, label %364, !prof !156

364:                                              ; preds = %359, %767
  %365 = phi i8 [ %740, %767 ], [ %184, %359 ]
  %366 = phi ptr [ %770, %767 ], [ %362, %359 ]
  %367 = phi i32 [ %769, %767 ], [ %361, %359 ]
  %368 = phi ptr [ %768, %767 ], [ %360, %359 ]
  %369 = getelementptr inbounds %struct.loop, ptr %368, i64 0, i32 2
  %370 = load ptr, ptr %369, align 8, !tbaa !157
  %371 = icmp eq ptr %370, null
  br i1 %371, label %739, label %372

372:                                              ; preds = %364
  %373 = getelementptr inbounds %struct.basic_block_def, ptr %370, i64 0, i32 9
  %374 = load i32, ptr %373, align 8, !tbaa !107
  %375 = tail call i32 @bitmap_bit_p(ptr noundef nonnull %12, i32 noundef %374) #17
  %376 = icmp eq i32 %375, 0
  br i1 %376, label %739, label %377

377:                                              ; preds = %372
  %378 = load ptr, ptr %369, align 8, !tbaa !157
  %379 = tail call ptr @loop_latch_edge(ptr noundef nonnull %368) #17
  %380 = getelementptr inbounds %struct.basic_block_def, ptr %378, i64 0, i32 1
  %381 = load ptr, ptr %380, align 8, !tbaa !158
  %382 = icmp eq ptr %381, null
  br i1 %382, label %387, label %383

383:                                              ; preds = %377
  %384 = load i32, ptr %381, align 8, !tbaa !101
  %385 = icmp eq i32 %384, 1
  %386 = zext i1 %385 to i8
  br label %387

387:                                              ; preds = %383, %377
  %388 = phi i8 [ %386, %383 ], [ 0, %377 ]
  %389 = icmp eq i8 %388, 0
  br i1 %389, label %390, label %705

390:                                              ; preds = %387
  %391 = getelementptr inbounds %struct.edge_def, ptr %379, i64 0, i32 3
  %392 = load ptr, ptr %391, align 8, !tbaa !104
  %393 = icmp eq ptr %392, null
  br i1 %393, label %397, label %394

394:                                              ; preds = %390
  %395 = getelementptr inbounds %struct.edge_def, ptr %392, i64 0, i32 1
  %396 = load ptr, ptr %395, align 8, !tbaa !106
  br label %456

397:                                              ; preds = %390
  %398 = icmp eq i8 %0, 0
  br i1 %398, label %399, label %403

399:                                              ; preds = %397
  %400 = load ptr, ptr %369, align 8, !tbaa !157
  %401 = tail call fastcc zeroext i8 @redirection_block_p(ptr noundef %400), !range !124
  %402 = icmp eq i8 %401, 0
  br i1 %402, label %705, label %403

403:                                              ; preds = %399, %397
  %404 = icmp eq ptr %378, null
  br label %405

405:                                              ; preds = %445, %403
  %406 = phi i32 [ 0, %403 ], [ %446, %445 ]
  %407 = phi ptr [ null, %403 ], [ %437, %445 ]
  %408 = phi ptr [ null, %403 ], [ %438, %445 ]
  br i1 %404, label %409, label %410

409:                                              ; preds = %405
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 687, ptr noundef nonnull @.str.1) #17
  br label %410

410:                                              ; preds = %409, %405
  %411 = load ptr, ptr %378, align 8, !tbaa !76
  %412 = icmp eq ptr %411, null
  br i1 %412, label %415, label %413

413:                                              ; preds = %410
  %414 = load i32, ptr %411, align 8, !tbaa !101
  br label %415

415:                                              ; preds = %413, %410
  %416 = phi i32 [ %414, %413 ], [ 0, %410 ]
  %417 = icmp eq i32 %416, %406
  br i1 %417, label %422, label %418

418:                                              ; preds = %415
  %419 = zext i32 %406 to i64
  %420 = getelementptr inbounds %struct.VEC_edge_base, ptr %411, i64 0, i32 2, i64 %419
  %421 = load ptr, ptr %420, align 8, !tbaa !76
  br label %422

422:                                              ; preds = %418, %415
  %423 = phi ptr [ %421, %418 ], [ null, %415 ]
  br i1 %417, label %447, label %424

424:                                              ; preds = %422
  %425 = getelementptr inbounds %struct.edge_def, ptr %423, i64 0, i32 3
  %426 = load ptr, ptr %425, align 8, !tbaa !104
  %427 = icmp eq ptr %426, null
  br i1 %427, label %428, label %430

428:                                              ; preds = %424
  %429 = icmp eq ptr %423, %379
  br i1 %429, label %436, label %705

430:                                              ; preds = %424
  %431 = getelementptr inbounds %struct.edge_def, ptr %426, i64 0, i32 1
  %432 = load ptr, ptr %431, align 8, !tbaa !106
  %433 = icmp eq ptr %407, null
  br i1 %433, label %436, label %434

434:                                              ; preds = %430
  %435 = icmp eq ptr %407, %432
  br i1 %435, label %436, label %705

436:                                              ; preds = %434, %430, %428
  %437 = phi ptr [ %407, %434 ], [ %407, %428 ], [ %432, %430 ]
  %438 = phi ptr [ %426, %434 ], [ %408, %428 ], [ %426, %430 ]
  br i1 %412, label %441, label %439

439:                                              ; preds = %436
  %440 = load i32, ptr %411, align 8, !tbaa !101
  br label %441

441:                                              ; preds = %439, %436
  %442 = phi i32 [ %440, %439 ], [ 0, %436 ]
  %443 = icmp ult i32 %406, %442
  br i1 %443, label %445, label %444

444:                                              ; preds = %441
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 738, ptr noundef nonnull @.str.1) #17
  br label %445

445:                                              ; preds = %444, %441
  %446 = add i32 %406, 1
  br label %405, !llvm.loop !159

447:                                              ; preds = %422
  %448 = icmp eq ptr %407, null
  br i1 %448, label %736, label %449

449:                                              ; preds = %447
  %450 = getelementptr inbounds %struct.loop, ptr %368, i64 0, i32 3
  %451 = load ptr, ptr %450, align 8, !tbaa !160
  %452 = icmp eq ptr %407, %451
  br i1 %452, label %453, label %456

453:                                              ; preds = %449
  %454 = tail call zeroext i8 @empty_block_p(ptr noundef %451) #17
  %455 = icmp eq i8 %454, 0
  br i1 %455, label %456, label %705

456:                                              ; preds = %453, %449, %394
  %457 = phi ptr [ %396, %394 ], [ %407, %449 ], [ %407, %453 ]
  %458 = phi ptr [ %392, %394 ], [ %408, %449 ], [ %408, %453 ]
  %459 = getelementptr inbounds %struct.loop, ptr %368, i64 0, i32 3
  %460 = load ptr, ptr %459, align 8, !tbaa !160
  %461 = icmp eq ptr %460, %457
  br i1 %461, label %520, label %462

462:                                              ; preds = %456
  %463 = getelementptr inbounds %struct.loop, ptr %368, i64 0, i32 6
  %464 = load i32, ptr %463, align 4, !tbaa !161
  %465 = zext i32 %464 to i64
  %466 = tail call ptr @xcalloc(i64 noundef %465, i64 noundef 8) #17
  %467 = load ptr, ptr %369, align 8, !tbaa !157
  store ptr %467, ptr @dbds_ce_stop, align 8, !tbaa !76
  %468 = load ptr, ptr %459, align 8, !tbaa !160
  %469 = load i32, ptr %463, align 4, !tbaa !161
  %470 = tail call i32 @dfs_enumerate_from(ptr noundef %468, i32 noundef 1, ptr noundef nonnull @dbds_continue_enumeration_p, ptr noundef %466, i32 noundef %469, ptr noundef %457) #17
  %471 = icmp eq i32 %470, 0
  br i1 %471, label %516, label %472

472:                                              ; preds = %462, %512
  %473 = phi i64 [ %514, %512 ], [ 0, %462 ]
  %474 = phi i8 [ %480, %512 ], [ 0, %462 ]
  %475 = getelementptr inbounds ptr, ptr %466, i64 %473
  %476 = load ptr, ptr %475, align 8, !tbaa !76
  %477 = icmp eq ptr %476, null
  br label %478

478:                                              ; preds = %510, %472
  %479 = phi i32 [ 0, %472 ], [ %511, %510 ]
  %480 = phi i8 [ %474, %472 ], [ %503, %510 ]
  br i1 %477, label %481, label %482

481:                                              ; preds = %478
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 687, ptr noundef nonnull @.str.1) #17
  br label %482

482:                                              ; preds = %481, %478
  %483 = load ptr, ptr %476, align 8, !tbaa !76
  %484 = icmp eq ptr %483, null
  br i1 %484, label %487, label %485

485:                                              ; preds = %482
  %486 = load i32, ptr %483, align 8, !tbaa !101
  br label %487

487:                                              ; preds = %485, %482
  %488 = phi i32 [ %486, %485 ], [ 0, %482 ]
  %489 = icmp eq i32 %488, %479
  br i1 %489, label %494, label %490

490:                                              ; preds = %487
  %491 = zext i32 %479 to i64
  %492 = getelementptr inbounds %struct.VEC_edge_base, ptr %483, i64 0, i32 2, i64 %491
  %493 = load ptr, ptr %492, align 8, !tbaa !76
  br label %494

494:                                              ; preds = %490, %487
  %495 = phi ptr [ %493, %490 ], [ null, %487 ]
  br i1 %489, label %512, label %496

496:                                              ; preds = %494
  %497 = load ptr, ptr %495, align 8, !tbaa !162
  %498 = load ptr, ptr %369, align 8, !tbaa !157
  %499 = icmp eq ptr %497, %498
  br i1 %499, label %500, label %501

500:                                              ; preds = %496
  tail call void @free(ptr noundef %466)
  br label %520

501:                                              ; preds = %496
  %502 = icmp eq ptr %497, %457
  %503 = select i1 %502, i8 1, i8 %480
  br i1 %484, label %506, label %504

504:                                              ; preds = %501
  %505 = load i32, ptr %483, align 8, !tbaa !101
  br label %506

506:                                              ; preds = %504, %501
  %507 = phi i32 [ %505, %504 ], [ 0, %501 ]
  %508 = icmp ult i32 %479, %507
  br i1 %508, label %510, label %509

509:                                              ; preds = %506
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 738, ptr noundef nonnull @.str.1) #17
  br label %510

510:                                              ; preds = %509, %506
  %511 = add i32 %479, 1
  br label %478, !llvm.loop !163

512:                                              ; preds = %494
  %513 = zext i32 %470 to i64
  %514 = add nuw nsw i64 %473, 1
  %515 = icmp eq i64 %514, %513
  br i1 %515, label %516, label %472, !llvm.loop !164

516:                                              ; preds = %512, %462
  %517 = phi i8 [ 0, %462 ], [ %480, %512 ]
  tail call void @free(ptr noundef %466)
  %518 = icmp eq i8 %517, 0
  %519 = select i1 %518, i32 1, i32 2
  br label %520

520:                                              ; preds = %516, %500, %456
  %521 = phi i32 [ 0, %500 ], [ %519, %516 ], [ 2, %456 ]
  switch i32 %521, label %524 [
    i32 0, label %705
    i32 1, label %522
  ]

522:                                              ; preds = %520
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %369, i8 0, i64 16, i1 false)
  %523 = tail call fastcc zeroext i8 @thread_block(ptr noundef %378, i8 noundef zeroext 0)
  br label %736

524:                                              ; preds = %520
  %525 = getelementptr inbounds %struct.basic_block_def, ptr %457, i64 0, i32 3
  %526 = load ptr, ptr %525, align 8, !tbaa !165
  %527 = getelementptr inbounds %struct.loop, ptr %526, i64 0, i32 2
  %528 = load ptr, ptr %527, align 8, !tbaa !157
  %529 = icmp eq ptr %528, %457
  br i1 %529, label %530, label %544

530:                                              ; preds = %524
  %531 = load ptr, ptr %457, align 8, !tbaa !123
  %532 = icmp eq ptr %531, null
  br i1 %532, label %535, label %533

533:                                              ; preds = %530
  %534 = load i32, ptr %531, align 8, !tbaa !101
  br label %535

535:                                              ; preds = %533, %530
  %536 = phi i32 [ %534, %533 ], [ 0, %530 ]
  %537 = icmp ugt i32 %536, 2
  br i1 %537, label %538, label %542

538:                                              ; preds = %535
  %539 = tail call ptr @create_preheader(ptr noundef %526, i32 noundef 0) #17
  %540 = icmp eq ptr %539, null
  br i1 %540, label %541, label %544

541:                                              ; preds = %538
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 905, ptr noundef nonnull @.str.1) #17
  br label %544

542:                                              ; preds = %535
  %543 = tail call ptr @split_edge(ptr noundef %458) #17
  br label %544

544:                                              ; preds = %542, %541, %538, %524
  %545 = phi ptr [ %539, %538 ], [ null, %541 ], [ %543, %542 ], [ %457, %524 ]
  %546 = load ptr, ptr %391, align 8, !tbaa !104
  %547 = icmp eq ptr %546, null
  br i1 %547, label %548, label %550

548:                                              ; preds = %544
  %549 = icmp eq ptr %378, null
  br label %639

550:                                              ; preds = %544
  %551 = getelementptr inbounds %struct.edge_def, ptr %379, i64 0, i32 1
  %552 = load ptr, ptr %551, align 8, !tbaa !106
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #17
  store ptr null, ptr %391, align 8, !tbaa !104
  %553 = load i64, ptr @thread_stats, align 8, !tbaa !166
  %554 = add i64 %553, 1
  store i64 %554, ptr @thread_stats, align 8, !tbaa !166
  %555 = load ptr, ptr %552, align 8, !tbaa !123
  %556 = icmp eq ptr %555, null
  br i1 %556, label %567, label %557

557:                                              ; preds = %550
  %558 = load i32, ptr %555, align 8, !tbaa !101
  %559 = icmp eq i32 %558, 1
  br i1 %559, label %560, label %567

560:                                              ; preds = %557
  %561 = getelementptr inbounds %struct.edge_def, ptr %546, i64 0, i32 1
  %562 = load ptr, ptr %561, align 8, !tbaa !106
  tail call fastcc void @remove_ctrl_stmt_and_useless_edges(ptr noundef nonnull %552, ptr noundef %562)
  %563 = getelementptr inbounds %struct.edge_def, ptr %546, i64 0, i32 7
  %564 = load i32, ptr %563, align 8, !tbaa !168
  %565 = and i32 %564, -3076
  %566 = or disjoint i32 %565, 1
  store i32 %566, ptr %563, align 8, !tbaa !168
  br label %620

567:                                              ; preds = %557, %550
  %568 = getelementptr inbounds %struct.redirection_data, ptr %2, i64 0, i32 1
  %569 = load ptr, ptr %379, align 8, !tbaa !162
  %570 = getelementptr inbounds %struct.basic_block_def, ptr %569, i64 0, i32 11
  %571 = load i32, ptr %570, align 8, !tbaa !169
  %572 = getelementptr inbounds %struct.edge_def, ptr %379, i64 0, i32 8
  %573 = load i32, ptr %572, align 4, !tbaa !170
  %574 = mul nsw i32 %573, %571
  %575 = add nsw i32 %574, 5000
  %576 = sdiv i32 %575, 10000
  %577 = getelementptr inbounds %struct.edge_def, ptr %379, i64 0, i32 9
  %578 = load i64, ptr %577, align 8, !tbaa !171
  tail call void @update_bb_profile_for_threading(ptr noundef nonnull %552, i32 noundef %576, i64 noundef %578, ptr noundef nonnull %546) #17
  store ptr %546, ptr %568, align 8, !tbaa !172
  %579 = tail call ptr @duplicate_block(ptr noundef nonnull %552, ptr noundef null, ptr noundef null) #17
  store ptr %579, ptr %2, align 8, !tbaa !174
  %580 = getelementptr inbounds %struct.basic_block_def, ptr %579, i64 0, i32 11
  store i32 0, ptr %580, align 8, !tbaa !169
  %581 = getelementptr inbounds %struct.basic_block_def, ptr %579, i64 0, i32 8
  store i64 0, ptr %581, align 8, !tbaa !175
  tail call fastcc void @remove_ctrl_stmt_and_useless_edges(ptr noundef %579, ptr noundef null)
  call fastcc void @create_edge_and_update_destination_phis(ptr noundef nonnull %2)
  %582 = load ptr, ptr @dump_file, align 8, !tbaa !76
  %583 = icmp eq ptr %582, null
  br i1 %583, label %598, label %584

584:                                              ; preds = %567
  %585 = load i32, ptr @dump_flags, align 4, !tbaa !91
  %586 = and i32 %585, 8
  %587 = icmp eq i32 %586, 0
  br i1 %587, label %598, label %588

588:                                              ; preds = %584
  %589 = load ptr, ptr %379, align 8, !tbaa !162
  %590 = getelementptr inbounds %struct.basic_block_def, ptr %589, i64 0, i32 9
  %591 = load i32, ptr %590, align 8, !tbaa !107
  %592 = load ptr, ptr %551, align 8, !tbaa !106
  %593 = getelementptr inbounds %struct.basic_block_def, ptr %592, i64 0, i32 9
  %594 = load i32, ptr %593, align 8, !tbaa !107
  %595 = getelementptr inbounds %struct.basic_block_def, ptr %579, i64 0, i32 9
  %596 = load i32, ptr %595, align 8, !tbaa !107
  %597 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %582, ptr noundef nonnull @.str.5, i32 noundef %591, i32 noundef %594, i32 noundef %596)
  br label %598

598:                                              ; preds = %588, %584, %567
  %599 = load i64, ptr %577, align 8, !tbaa !171
  store i64 %599, ptr %581, align 8, !tbaa !175
  %600 = load ptr, ptr %379, align 8, !tbaa !162
  %601 = getelementptr inbounds %struct.basic_block_def, ptr %600, i64 0, i32 11
  %602 = load i32, ptr %601, align 8, !tbaa !169
  %603 = load i32, ptr %572, align 4, !tbaa !170
  %604 = mul nsw i32 %603, %602
  %605 = add nsw i32 %604, 5000
  %606 = sdiv i32 %605, 10000
  store i32 %606, ptr %580, align 8, !tbaa !169
  %607 = getelementptr inbounds %struct.basic_block_def, ptr %579, i64 0, i32 1
  %608 = load ptr, ptr %607, align 8, !tbaa !158
  %609 = icmp eq ptr %608, null
  br i1 %609, label %613, label %610

610:                                              ; preds = %598
  %611 = load i32, ptr %608, align 8, !tbaa !101
  %612 = icmp eq i32 %611, 1
  br i1 %612, label %614, label %613

613:                                              ; preds = %610, %598
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 645, ptr noundef nonnull @.str.1) #17
  br label %614

614:                                              ; preds = %613, %610
  %615 = load ptr, ptr %607, align 8, !tbaa !158
  %616 = getelementptr inbounds %struct.VEC_edge_base, ptr %615, i64 0, i32 2, i64 0
  %617 = load ptr, ptr %616, align 8, !tbaa !76
  %618 = getelementptr inbounds %struct.edge_def, ptr %617, i64 0, i32 9
  store i64 %599, ptr %618, align 8, !tbaa !171
  %619 = tail call ptr @redirect_edge_and_branch(ptr noundef nonnull %379, ptr noundef %579) #17
  tail call void @flush_pending_stmts(ptr noundef nonnull %379) #17
  br label %620

620:                                              ; preds = %614, %560
  %621 = phi ptr [ %552, %560 ], [ %579, %614 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #17
  store ptr %621, ptr %459, align 8, !tbaa !160
  %622 = getelementptr inbounds %struct.basic_block_def, ptr %621, i64 0, i32 1
  %623 = load ptr, ptr %622, align 8, !tbaa !158
  %624 = icmp eq ptr %623, null
  br i1 %624, label %628, label %625

625:                                              ; preds = %620
  %626 = load i32, ptr %623, align 8, !tbaa !101
  %627 = icmp eq i32 %626, 1
  br i1 %627, label %629, label %628

628:                                              ; preds = %625, %620
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 645, ptr noundef nonnull @.str.1) #17
  br label %629

629:                                              ; preds = %628, %625
  %630 = load ptr, ptr %622, align 8, !tbaa !158
  %631 = getelementptr inbounds %struct.VEC_edge_base, ptr %630, i64 0, i32 2, i64 0
  %632 = load ptr, ptr %631, align 8, !tbaa !76
  %633 = getelementptr inbounds %struct.edge_def, ptr %632, i64 0, i32 1
  %634 = load ptr, ptr %633, align 8, !tbaa !106
  %635 = icmp eq ptr %634, %545
  br i1 %635, label %637, label %636

636:                                              ; preds = %629
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 915, ptr noundef nonnull @.str.1) #17
  br label %637

637:                                              ; preds = %636, %629
  store ptr %545, ptr %369, align 8, !tbaa !157
  %638 = tail call fastcc zeroext i8 @thread_block(ptr noundef %378, i8 noundef zeroext 0)
  br label %736

639:                                              ; preds = %548, %667
  %640 = phi i32 [ %668, %667 ], [ 0, %548 ]
  br i1 %549, label %641, label %642

641:                                              ; preds = %639
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 687, ptr noundef nonnull @.str.1) #17
  br label %642

642:                                              ; preds = %641, %639
  %643 = load ptr, ptr %378, align 8, !tbaa !76
  %644 = icmp eq ptr %643, null
  br i1 %644, label %647, label %645

645:                                              ; preds = %642
  %646 = load i32, ptr %643, align 8, !tbaa !101
  br label %647

647:                                              ; preds = %645, %642
  %648 = phi i32 [ %646, %645 ], [ 0, %642 ]
  %649 = icmp eq i32 %648, %640
  br i1 %649, label %654, label %650

650:                                              ; preds = %647
  %651 = zext i32 %640 to i64
  %652 = getelementptr inbounds %struct.VEC_edge_base, ptr %643, i64 0, i32 2, i64 %651
  %653 = load ptr, ptr %652, align 8, !tbaa !76
  br label %654

654:                                              ; preds = %650, %647
  %655 = phi ptr [ %653, %650 ], [ null, %647 ]
  br i1 %649, label %669, label %656

656:                                              ; preds = %654
  %657 = getelementptr inbounds %struct.edge_def, ptr %655, i64 0, i32 3
  %658 = load ptr, ptr %657, align 8, !tbaa !104
  %659 = icmp eq ptr %658, null
  br i1 %659, label %660, label %669

660:                                              ; preds = %656
  br i1 %644, label %663, label %661

661:                                              ; preds = %660
  %662 = load i32, ptr %643, align 8, !tbaa !101
  br label %663

663:                                              ; preds = %661, %660
  %664 = phi i32 [ %662, %661 ], [ 0, %660 ]
  %665 = icmp ult i32 %640, %664
  br i1 %665, label %667, label %666

666:                                              ; preds = %663
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 738, ptr noundef nonnull @.str.1) #17
  br label %667

667:                                              ; preds = %666, %663
  %668 = add i32 %640, 1
  br label %639, !llvm.loop !176

669:                                              ; preds = %656, %654
  %670 = getelementptr inbounds %struct.loop, ptr %368, i64 0, i32 7
  %671 = load ptr, ptr %670, align 8, !tbaa !153
  %672 = icmp eq ptr %671, null
  br i1 %672, label %675, label %673

673:                                              ; preds = %669
  %674 = load i32, ptr %671, align 8, !tbaa !140
  br label %675

675:                                              ; preds = %673, %669
  %676 = phi i32 [ %674, %673 ], [ 0, %669 ]
  %677 = icmp eq i32 %676, 0
  br i1 %677, label %683, label %678

678:                                              ; preds = %675
  %679 = add i32 %676, -1
  %680 = zext i32 %679 to i64
  %681 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %671, i64 0, i32 2, i64 %680
  %682 = load ptr, ptr %681, align 8, !tbaa !76
  br label %683

683:                                              ; preds = %678, %675
  %684 = phi ptr [ %682, %678 ], [ null, %675 ]
  tail call void @set_loop_copy(ptr noundef nonnull %368, ptr noundef %684) #17
  %685 = tail call fastcc zeroext i8 @thread_block(ptr noundef nonnull %378, i8 noundef zeroext 0)
  tail call void @set_loop_copy(ptr noundef nonnull %368, ptr noundef null) #17
  %686 = getelementptr inbounds %struct.edge_def, ptr %655, i64 0, i32 1
  %687 = load ptr, ptr %686, align 8, !tbaa !106
  store ptr null, ptr %459, align 8, !tbaa !160
  %688 = getelementptr inbounds %struct.basic_block_def, ptr %687, i64 0, i32 1
  %689 = load ptr, ptr %688, align 8, !tbaa !158
  %690 = icmp eq ptr %689, null
  br i1 %690, label %694, label %691

691:                                              ; preds = %683
  %692 = load i32, ptr %689, align 8, !tbaa !101
  %693 = icmp eq i32 %692, 1
  br i1 %693, label %695, label %694

694:                                              ; preds = %691, %683
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 645, ptr noundef nonnull @.str.1) #17
  br label %695

695:                                              ; preds = %694, %691
  %696 = load ptr, ptr %688, align 8, !tbaa !158
  %697 = getelementptr inbounds %struct.VEC_edge_base, ptr %696, i64 0, i32 2, i64 0
  %698 = load ptr, ptr %697, align 8, !tbaa !76
  store ptr %698, ptr @mfb_kj_edge, align 8, !tbaa !76
  %699 = getelementptr inbounds %struct.edge_def, ptr %698, i64 0, i32 1
  %700 = load ptr, ptr %699, align 8, !tbaa !106
  store ptr %700, ptr %369, align 8, !tbaa !157
  %701 = tail call ptr @make_forwarder_block(ptr noundef %545, ptr noundef nonnull @mfb_keep_just, ptr noundef null) #17
  %702 = getelementptr inbounds %struct.edge_def, ptr %701, i64 0, i32 1
  %703 = load ptr, ptr %702, align 8, !tbaa !106
  store ptr %703, ptr %369, align 8, !tbaa !157
  %704 = load ptr, ptr %701, align 8, !tbaa !162
  store ptr %704, ptr %459, align 8, !tbaa !160
  br label %736

705:                                              ; preds = %428, %434, %520, %453, %399, %387
  %706 = icmp eq ptr %378, null
  br label %707

707:                                              ; preds = %734, %705
  %708 = phi i32 [ 0, %705 ], [ %735, %734 ]
  br i1 %706, label %709, label %710

709:                                              ; preds = %707
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 687, ptr noundef nonnull @.str.1) #17
  br label %710

710:                                              ; preds = %709, %707
  %711 = load ptr, ptr %378, align 8, !tbaa !76
  %712 = icmp eq ptr %711, null
  br i1 %712, label %715, label %713

713:                                              ; preds = %710
  %714 = load i32, ptr %711, align 8, !tbaa !101
  br label %715

715:                                              ; preds = %713, %710
  %716 = phi i32 [ %714, %713 ], [ 0, %710 ]
  %717 = icmp eq i32 %716, %708
  br i1 %717, label %722, label %718

718:                                              ; preds = %715
  %719 = zext i32 %708 to i64
  %720 = getelementptr inbounds %struct.VEC_edge_base, ptr %711, i64 0, i32 2, i64 %719
  %721 = load ptr, ptr %720, align 8, !tbaa !76
  br label %722

722:                                              ; preds = %718, %715
  %723 = phi ptr [ %721, %718 ], [ null, %715 ]
  br i1 %717, label %736, label %724

724:                                              ; preds = %722
  %725 = getelementptr inbounds %struct.edge_def, ptr %723, i64 0, i32 3
  store ptr null, ptr %725, align 8, !tbaa !104
  %726 = load ptr, ptr %378, align 8, !tbaa !76
  %727 = icmp eq ptr %726, null
  br i1 %727, label %730, label %728

728:                                              ; preds = %724
  %729 = load i32, ptr %726, align 8, !tbaa !101
  br label %730

730:                                              ; preds = %728, %724
  %731 = phi i32 [ %729, %728 ], [ 0, %724 ]
  %732 = icmp ult i32 %708, %731
  br i1 %732, label %734, label %733

733:                                              ; preds = %730
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 738, ptr noundef nonnull @.str.1) #17
  br label %734

734:                                              ; preds = %733, %730
  %735 = add i32 %708, 1
  br label %707, !llvm.loop !177

736:                                              ; preds = %722, %447, %522, %637, %695
  %737 = phi i8 [ %523, %522 ], [ 0, %447 ], [ 1, %695 ], [ 1, %637 ], [ 0, %722 ]
  %738 = or i8 %737, %365
  br label %739

739:                                              ; preds = %364, %372, %736
  %740 = phi i8 [ %738, %736 ], [ %365, %372 ], [ %365, %364 ]
  %741 = icmp eq ptr %366, null
  %742 = load ptr, ptr @cfun, align 8
  %743 = getelementptr inbounds %struct.function, ptr %742, i64 0, i32 4
  br label %744

744:                                              ; preds = %756, %739
  %745 = phi i32 [ %367, %739 ], [ %757, %756 ]
  br i1 %741, label %753, label %746

746:                                              ; preds = %744
  %747 = load i32, ptr %366, align 4, !tbaa !149
  %748 = icmp ugt i32 %747, %745
  br i1 %748, label %749, label %753

749:                                              ; preds = %746
  %750 = zext i32 %745 to i64
  %751 = getelementptr inbounds %struct.VEC_int_base, ptr %366, i64 0, i32 2, i64 %750
  %752 = load i32, ptr %751, align 4, !tbaa !91
  br label %753

753:                                              ; preds = %749, %746, %744
  %754 = phi i32 [ %752, %749 ], [ 0, %746 ], [ 0, %744 ]
  %755 = phi i1 [ false, %749 ], [ true, %746 ], [ true, %744 ]
  br i1 %755, label %765, label %756

756:                                              ; preds = %753
  %757 = add i32 %745, 1
  %758 = load ptr, ptr %743, align 8, !tbaa !96
  %759 = getelementptr inbounds %struct.loops, ptr %758, i64 0, i32 1
  %760 = load ptr, ptr %759, align 8, !tbaa !138
  %761 = zext i32 %754 to i64
  %762 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %760, i64 0, i32 2, i64 %761
  %763 = load ptr, ptr %762, align 8, !tbaa !76
  %764 = icmp eq ptr %763, null
  br i1 %764, label %744, label %767, !llvm.loop !155

765:                                              ; preds = %753
  br i1 %741, label %767, label %766

766:                                              ; preds = %765
  tail call void @free(ptr noundef %366)
  br label %767

767:                                              ; preds = %756, %765, %766
  %768 = phi ptr [ null, %766 ], [ null, %765 ], [ %763, %756 ]
  %769 = phi i32 [ %745, %766 ], [ %745, %765 ], [ %757, %756 ]
  %770 = phi ptr [ null, %766 ], [ null, %765 ], [ %366, %756 ]
  %771 = icmp eq ptr %768, null
  br i1 %771, label %772, label %364, !prof !156, !llvm.loop !178

772:                                              ; preds = %767, %359
  %773 = phi i8 [ %184, %359 ], [ %740, %767 ]
  %774 = load ptr, ptr @cfun, align 8, !tbaa !76
  %775 = load i64, ptr @thread_stats, align 8, !tbaa !166
  %776 = trunc i64 %775 to i32
  tail call void @statistics_counter_event(ptr noundef %774, ptr noundef nonnull @.str.2, i32 noundef %776) #17
  tail call void @free_original_copy_tables() #17
  tail call void @bitmap_obstack_free(ptr noundef nonnull %12) #17
  %777 = load ptr, ptr @threaded_edges, align 8, !tbaa !76
  %778 = icmp eq ptr %777, null
  br i1 %778, label %780, label %779, !prof !127

779:                                              ; preds = %772
  tail call void @free(ptr noundef %777)
  br label %780

780:                                              ; preds = %772, %779
  store ptr null, ptr @threaded_edges, align 8, !tbaa !76
  %781 = icmp eq i8 %773, 0
  br i1 %781, label %788, label %782, !prof !127

782:                                              ; preds = %780
  %783 = load ptr, ptr @cfun, align 8, !tbaa !76
  %784 = getelementptr inbounds %struct.function, ptr %783, i64 0, i32 4
  %785 = load ptr, ptr %784, align 8, !tbaa !96
  %786 = load i32, ptr %785, align 8, !tbaa !179
  %787 = or i32 %786, 64
  store i32 %787, ptr %785, align 8, !tbaa !179
  br label %788

788:                                              ; preds = %780, %782, %8
  %789 = phi i8 [ 0, %8 ], [ %773, %782 ], [ %773, %780 ]
  ret i8 %789
}

declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @bitmap_obstack_alloc_stat(ptr noundef) local_unnamed_addr #3

declare void @initialize_original_copy_tables() local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @thread_block(ptr noundef %0, i8 noundef zeroext %1) unnamed_addr #9 !prof !180 !PGOFuncName !181 {
  %3 = alloca %struct.local_info, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #17
  %4 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !165
  %6 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !158
  %8 = icmp eq ptr %7, null
  br i1 %8, label %12, label %9, !prof !136

9:                                                ; preds = %2
  %10 = load i32, ptr %7, align 8, !tbaa !101
  %11 = zext i32 %10 to i64
  br label %12

12:                                               ; preds = %2, %9
  %13 = phi i64 [ %11, %9 ], [ 0, %2 ]
  %14 = tail call ptr @htab_create(i64 noundef %13, ptr noundef nonnull @redirection_data_hash, ptr noundef nonnull @redirection_data_eq, ptr noundef nonnull @free) #17
  store ptr %14, ptr @redirection_data, align 8, !tbaa !76
  %15 = getelementptr inbounds %struct.loop, ptr %5, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !157
  %17 = icmp eq ptr %16, %0
  br i1 %17, label %18, label %27, !prof !136

18:                                               ; preds = %12
  %19 = tail call ptr @loop_latch_edge(ptr noundef %5) #17
  %20 = getelementptr inbounds %struct.edge_def, ptr %19, i64 0, i32 3
  %21 = load ptr, ptr %20, align 8, !tbaa !104
  %22 = icmp eq ptr %21, null
  br i1 %22, label %27, label %23

23:                                               ; preds = %18
  %24 = tail call zeroext i8 @loop_exit_edge_p(ptr noundef %5, ptr noundef nonnull %21) #17
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %23
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %15, i8 0, i64 16, i1 false)
  br label %27

27:                                               ; preds = %18, %23, %26, %12
  %28 = icmp eq ptr %0, null
  %29 = icmp eq i8 %1, 0
  br label %30

30:                                               ; preds = %85, %27
  %31 = phi i32 [ 0, %27 ], [ %86, %85 ]
  %32 = phi i8 [ 1, %27 ], [ %76, %85 ]
  br i1 %28, label %33, label %34, !prof !182

33:                                               ; preds = %30
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 687, ptr noundef nonnull @.str.1) #17
  br label %34

34:                                               ; preds = %33, %30
  %35 = load ptr, ptr %0, align 8, !tbaa !76
  %36 = icmp eq ptr %35, null
  br i1 %36, label %39, label %37, !prof !182

37:                                               ; preds = %34
  %38 = load i32, ptr %35, align 8, !tbaa !101
  br label %39

39:                                               ; preds = %37, %34
  %40 = phi i32 [ %38, %37 ], [ 0, %34 ]
  %41 = icmp eq i32 %40, %31
  br i1 %41, label %46, label %42, !prof !183

42:                                               ; preds = %39
  %43 = zext i32 %31 to i64
  %44 = getelementptr inbounds %struct.VEC_edge_base, ptr %35, i64 0, i32 2, i64 %43
  %45 = load ptr, ptr %44, align 8, !tbaa !76
  br label %46

46:                                               ; preds = %39, %42
  %47 = phi ptr [ %45, %42 ], [ null, %39 ]
  br i1 %41, label %87, label %48, !prof !183

48:                                               ; preds = %46
  %49 = getelementptr inbounds %struct.edge_def, ptr %47, i64 0, i32 3
  %50 = load ptr, ptr %49, align 8, !tbaa !104
  %51 = icmp eq ptr %50, null
  br i1 %51, label %75, label %52, !prof !184

52:                                               ; preds = %48
  br i1 %29, label %61, label %53, !prof !185

53:                                               ; preds = %52
  %54 = load ptr, ptr %4, align 8, !tbaa !165
  %55 = getelementptr inbounds %struct.loop, ptr %54, i64 0, i32 2
  %56 = load ptr, ptr %55, align 8, !tbaa !157
  %57 = icmp eq ptr %56, %0
  br i1 %57, label %58, label %61, !prof !185

58:                                               ; preds = %53
  %59 = tail call zeroext i8 @loop_exit_edge_p(ptr noundef %54, ptr noundef nonnull %50) #17
  %60 = icmp eq i8 %59, 0
  br i1 %60, label %75, label %61

61:                                               ; preds = %58, %53, %52
  %62 = getelementptr inbounds %struct.edge_def, ptr %47, i64 0, i32 1
  %63 = load ptr, ptr %62, align 8, !tbaa !106
  %64 = load ptr, ptr %47, align 8, !tbaa !162
  %65 = getelementptr inbounds %struct.basic_block_def, ptr %64, i64 0, i32 11
  %66 = load i32, ptr %65, align 8, !tbaa !169
  %67 = getelementptr inbounds %struct.edge_def, ptr %47, i64 0, i32 8
  %68 = load i32, ptr %67, align 4, !tbaa !170
  %69 = mul nsw i32 %68, %66
  %70 = add nsw i32 %69, 5000
  %71 = sdiv i32 %70, 10000
  %72 = getelementptr inbounds %struct.edge_def, ptr %47, i64 0, i32 9
  %73 = load i64, ptr %72, align 8, !tbaa !171
  %74 = load ptr, ptr %49, align 8, !tbaa !104
  tail call void @update_bb_profile_for_threading(ptr noundef %63, i32 noundef %71, i64 noundef %73, ptr noundef %74) #17
  tail call fastcc void @lookup_redirection_data(ptr noundef nonnull %50, ptr noundef nonnull %47, i32 noundef 1)
  br label %75

75:                                               ; preds = %61, %58, %48
  %76 = phi i8 [ %32, %61 ], [ 0, %58 ], [ 0, %48 ]
  %77 = load ptr, ptr %0, align 8, !tbaa !76
  %78 = icmp eq ptr %77, null
  br i1 %78, label %81, label %79, !prof !186

79:                                               ; preds = %75
  %80 = load i32, ptr %77, align 8, !tbaa !101
  br label %81

81:                                               ; preds = %79, %75
  %82 = phi i32 [ %80, %79 ], [ 0, %75 ]
  %83 = icmp ult i32 %31, %82
  br i1 %83, label %85, label %84, !prof !187

84:                                               ; preds = %81
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 738, ptr noundef nonnull @.str.1) #17
  br label %85

85:                                               ; preds = %81, %84
  %86 = add i32 %31, 1
  br label %30, !llvm.loop !188

87:                                               ; preds = %46
  %88 = icmp eq i8 %32, 0
  br i1 %88, label %110, label %89, !prof !189

89:                                               ; preds = %87
  %90 = getelementptr inbounds %struct.VEC_edge_base, ptr %35, i64 0, i32 2, i64 0
  %91 = load ptr, ptr %90, align 8, !tbaa !76
  %92 = getelementptr inbounds %struct.edge_def, ptr %91, i64 0, i32 3
  %93 = load ptr, ptr %92, align 8, !tbaa !104
  %94 = tail call ptr @xmalloc(i64 noundef 32) #17
  %95 = getelementptr inbounds %struct.redirection_data, ptr %94, i64 0, i32 1
  store ptr %93, ptr %95, align 8, !tbaa !172
  store ptr null, ptr %94, align 8, !tbaa !174
  %96 = getelementptr inbounds %struct.redirection_data, ptr %94, i64 0, i32 3
  store i8 0, ptr %96, align 8, !tbaa !190
  %97 = getelementptr inbounds %struct.redirection_data, ptr %94, i64 0, i32 2
  store ptr null, ptr %97, align 8, !tbaa !191
  %98 = load ptr, ptr @redirection_data, align 8, !tbaa !76
  %99 = tail call ptr @htab_find_slot(ptr noundef %98, ptr noundef nonnull %94, i32 noundef 0) #17
  %100 = icmp ne ptr %99, null
  tail call void @llvm.assume(i1 %100)
  %101 = load ptr, ptr %99, align 8, !tbaa !76
  %102 = icmp eq ptr %101, null
  br i1 %102, label %103, label %105, !prof !192

103:                                              ; preds = %89
  store ptr %94, ptr %99, align 8, !tbaa !76
  %104 = tail call ptr @xmalloc(i64 noundef 16) #17
  store ptr %104, ptr %97, align 8, !tbaa !191
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %104, i8 0, i64 16, i1 false)
  br label %107

105:                                              ; preds = %89
  tail call void @free(ptr noundef %94)
  %106 = load ptr, ptr %99, align 8, !tbaa !76
  br label %107

107:                                              ; preds = %103, %105
  %108 = phi ptr [ %94, %103 ], [ %106, %105 ]
  %109 = getelementptr inbounds %struct.redirection_data, ptr %108, i64 0, i32 3
  store i8 1, ptr %109, align 8, !tbaa !190
  br label %110

110:                                              ; preds = %107, %87
  tail call void @free_dominance_info(i32 noundef 1) #17
  %111 = getelementptr inbounds %struct.local_info, ptr %3, i64 0, i32 1
  store ptr null, ptr %111, align 8, !tbaa !193
  store ptr %0, ptr %3, align 8, !tbaa !195
  %112 = getelementptr inbounds %struct.local_info, ptr %3, i64 0, i32 2
  store i8 0, ptr %112, align 8, !tbaa !196
  %113 = load ptr, ptr @redirection_data, align 8, !tbaa !76
  call void @htab_traverse(ptr noundef %113, ptr noundef nonnull @create_duplicates, ptr noundef nonnull %3) #17
  %114 = load ptr, ptr @redirection_data, align 8, !tbaa !76
  call void @htab_traverse(ptr noundef %114, ptr noundef nonnull @fixup_template_block, ptr noundef nonnull %3) #17
  %115 = load ptr, ptr @redirection_data, align 8, !tbaa !76
  call void @htab_traverse(ptr noundef %115, ptr noundef nonnull @redirect_edges, ptr noundef nonnull %3) #17
  %116 = load ptr, ptr @redirection_data, align 8, !tbaa !76
  call void @htab_delete(ptr noundef %116) #17
  store ptr null, ptr @redirection_data, align 8, !tbaa !76
  %117 = load i8, ptr %112, align 8, !tbaa !196
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #17
  ret i8 %117
}

declare i32 @bitmap_bit_p(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @statistics_counter_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @free_original_copy_tables() local_unnamed_addr #3

declare void @bitmap_obstack_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @register_jump_thread(ptr noundef %0, ptr noundef %1) local_unnamed_addr #9 !prof !197 {
  %3 = load ptr, ptr @threaded_edges, align 8, !tbaa !76
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %7, !prof !198

5:                                                ; preds = %2
  %6 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef 10) #17
  store ptr %6, ptr @threaded_edges, align 8, !tbaa !76
  br label %7

7:                                                ; preds = %5, %2
  %8 = load ptr, ptr @threaded_edges, align 8, !tbaa !76
  %9 = icmp eq ptr %8, null
  br i1 %9, label %15, label %10, !prof !199

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.VEC_edge_base, ptr %8, i64 0, i32 1
  %12 = load i32, ptr %11, align 4, !tbaa !200
  %13 = load i32, ptr %8, align 8, !tbaa !101
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %15, label %17, !prof !201

15:                                               ; preds = %7, %10
  %16 = tail call ptr @vec_heap_p_reserve(ptr noundef %8, i32 noundef 1) #17
  store ptr %16, ptr @threaded_edges, align 8, !tbaa !76
  br label %17

17:                                               ; preds = %10, %15
  %18 = load ptr, ptr @threaded_edges, align 8, !tbaa !76
  %19 = load i32, ptr %18, align 8, !tbaa !101
  %20 = add i32 %19, 1
  store i32 %20, ptr %18, align 8, !tbaa !101
  %21 = zext i32 %19 to i64
  %22 = getelementptr inbounds %struct.VEC_edge_base, ptr %18, i64 0, i32 2, i64 %21
  store ptr %0, ptr %22, align 8, !tbaa !76
  %23 = getelementptr inbounds %struct.VEC_edge_base, ptr %18, i64 0, i32 1
  %24 = load i32, ptr %23, align 4, !tbaa !200
  %25 = icmp eq i32 %24, %20
  br i1 %25, label %26, label %28, !prof !202

26:                                               ; preds = %17
  %27 = tail call ptr @vec_heap_p_reserve(ptr noundef nonnull %18, i32 noundef 1) #17
  store ptr %27, ptr @threaded_edges, align 8, !tbaa !76
  br label %28

28:                                               ; preds = %17, %26
  %29 = load ptr, ptr @threaded_edges, align 8, !tbaa !76
  %30 = load i32, ptr %29, align 8, !tbaa !101
  %31 = add i32 %30, 1
  store i32 %31, ptr %29, align 8, !tbaa !101
  %32 = zext i32 %30 to i64
  %33 = getelementptr inbounds %struct.VEC_edge_base, ptr %29, i64 0, i32 2, i64 %32
  store ptr %1, ptr %33, align 8, !tbaa !76
  ret void
}

declare zeroext i8 @bitmap_set_bit(ptr noundef, i32 noundef) local_unnamed_addr #3

declare zeroext i8 @optimize_function_for_size_p(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @redirection_block_p(ptr nocapture noundef readonly %0) unnamed_addr #10 !prof !75 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 13
  %3 = load i32, ptr %2, align 8, !tbaa !203, !noalias !204
  %4 = and i32 %3, 512
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %12

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !87, !noalias !204
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %6
  %11 = load ptr, ptr %8, align 8, !tbaa !207, !noalias !204
  br label %12

12:                                               ; preds = %10, %6, %1
  %13 = phi ptr [ %11, %10 ], [ null, %6 ], [ null, %1 ]
  %14 = icmp eq ptr %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %12
  %16 = load ptr, ptr %13, align 8, !tbaa !209, !noalias !204
  br label %17

17:                                               ; preds = %12, %15
  %18 = phi ptr [ %16, %15 ], [ null, %12 ]
  %19 = icmp eq ptr %18, null
  br i1 %19, label %35, label %20

20:                                               ; preds = %17, %25
  %21 = phi ptr [ %27, %25 ], [ %18, %17 ]
  %22 = load ptr, ptr %21, align 8, !tbaa !211
  %23 = load i32, ptr %22, align 8
  %24 = trunc i32 %23 to i8
  switch i8 %24, label %29 [
    i8 4, label %25
    i8 2, label %25
    i8 18, label %25
  ]

25:                                               ; preds = %20, %20, %20
  %26 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %21, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !213
  %28 = icmp eq ptr %27, null
  br i1 %28, label %35, label %20, !llvm.loop !214

29:                                               ; preds = %20
  %30 = trunc i32 %23 to i8
  switch i8 %30, label %31 [
    i8 1, label %35
    i8 3, label %35
  ]

31:                                               ; preds = %29
  %32 = and i32 %23, 255
  %33 = icmp eq i32 %32, 5
  %34 = zext i1 %33 to i8
  br label %35

35:                                               ; preds = %25, %17, %29, %29, %31
  %36 = phi i8 [ %34, %31 ], [ 1, %29 ], [ 1, %29 ], [ 1, %17 ], [ 1, %25 ]
  ret i8 %36
}

declare void @bitmap_copy(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @htab_create(i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define internal i32 @redirection_data_hash(ptr nocapture noundef readonly %0) #11 !prof !215 !PGOFuncName !216 {
  %2 = getelementptr inbounds %struct.redirection_data, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !172
  %4 = getelementptr inbounds %struct.edge_def, ptr %3, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !106
  %6 = getelementptr inbounds %struct.basic_block_def, ptr %5, i64 0, i32 9
  %7 = load i32, ptr %6, align 8, !tbaa !107
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal i32 @redirection_data_eq(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #12 !prof !217 !PGOFuncName !218 {
  %3 = getelementptr inbounds %struct.redirection_data, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !172
  %5 = getelementptr inbounds %struct.redirection_data, ptr %1, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !172
  %7 = icmp eq ptr %4, %6
  %8 = zext i1 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) #13

declare ptr @loop_latch_edge(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @loop_exit_edge_p(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @update_bb_profile_for_threading(ptr noundef, i32 noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc void @lookup_redirection_data(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #9 !prof !219 !PGOFuncName !220 {
  %4 = tail call ptr @xmalloc(i64 noundef 32) #17
  %5 = getelementptr inbounds %struct.redirection_data, ptr %4, i64 0, i32 1
  store ptr %0, ptr %5, align 8, !tbaa !172
  store ptr null, ptr %4, align 8, !tbaa !174
  %6 = getelementptr inbounds %struct.redirection_data, ptr %4, i64 0, i32 3
  store i8 0, ptr %6, align 8, !tbaa !190
  %7 = getelementptr inbounds %struct.redirection_data, ptr %4, i64 0, i32 2
  store ptr null, ptr %7, align 8, !tbaa !191
  %8 = load ptr, ptr @redirection_data, align 8, !tbaa !76
  %9 = tail call ptr @htab_find_slot(ptr noundef %8, ptr noundef nonnull %4, i32 noundef %2) #17
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %12, !prof !221

11:                                               ; preds = %3
  tail call void @free(ptr noundef %4)
  br label %26

12:                                               ; preds = %3
  %13 = load ptr, ptr %9, align 8, !tbaa !76
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %18, !prof !192

15:                                               ; preds = %12
  store ptr %4, ptr %9, align 8, !tbaa !76
  %16 = tail call ptr @xmalloc(i64 noundef 16) #17
  store ptr %16, ptr %7, align 8, !tbaa !191
  store ptr %1, ptr %16, align 8, !tbaa !222
  %17 = getelementptr inbounds %struct.el, ptr %16, i64 0, i32 1
  store ptr null, ptr %17, align 8, !tbaa !224
  br label %26

18:                                               ; preds = %12
  tail call void @free(ptr noundef %4)
  %19 = icmp eq i32 %2, 0
  br i1 %19, label %26, label %20, !prof !225

20:                                               ; preds = %18
  %21 = load ptr, ptr %9, align 8, !tbaa !76
  %22 = tail call ptr @xmalloc(i64 noundef 16) #17
  %23 = getelementptr inbounds %struct.redirection_data, ptr %21, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !191
  %25 = getelementptr inbounds %struct.el, ptr %22, i64 0, i32 1
  store ptr %24, ptr %25, align 8, !tbaa !224
  store ptr %1, ptr %22, align 8, !tbaa !222
  store ptr %22, ptr %23, align 8, !tbaa !191
  br label %26

26:                                               ; preds = %18, %20, %15, %11
  ret void
}

declare void @free_dominance_info(i32 noundef) local_unnamed_addr #3

declare void @htab_traverse(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal noundef i32 @create_duplicates(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) #9 !prof !226 !PGOFuncName !227 {
  %3 = load ptr, ptr %0, align 8, !tbaa !76
  %4 = getelementptr inbounds %struct.redirection_data, ptr %3, i64 0, i32 3
  %5 = load i8, ptr %4, align 8, !tbaa !190
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %21, !prof !228

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.local_info, ptr %1, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !193
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %17, !prof !229

11:                                               ; preds = %7
  %12 = load ptr, ptr %1, align 8, !tbaa !195
  %13 = tail call ptr @duplicate_block(ptr noundef %12, ptr noundef null, ptr noundef null) #17
  store ptr %13, ptr %3, align 8, !tbaa !174
  %14 = getelementptr inbounds %struct.basic_block_def, ptr %13, i64 0, i32 11
  store i32 0, ptr %14, align 8, !tbaa !169
  %15 = getelementptr inbounds %struct.basic_block_def, ptr %13, i64 0, i32 8
  store i64 0, ptr %15, align 8, !tbaa !175
  tail call fastcc void @remove_ctrl_stmt_and_useless_edges(ptr noundef %13, ptr noundef null)
  %16 = load ptr, ptr %3, align 8, !tbaa !174
  store ptr %16, ptr %8, align 8, !tbaa !193
  br label %21

17:                                               ; preds = %7
  %18 = tail call ptr @duplicate_block(ptr noundef nonnull %9, ptr noundef null, ptr noundef null) #17
  store ptr %18, ptr %3, align 8, !tbaa !174
  %19 = getelementptr inbounds %struct.basic_block_def, ptr %18, i64 0, i32 11
  store i32 0, ptr %19, align 8, !tbaa !169
  %20 = getelementptr inbounds %struct.basic_block_def, ptr %18, i64 0, i32 8
  store i64 0, ptr %20, align 8, !tbaa !175
  tail call fastcc void @remove_ctrl_stmt_and_useless_edges(ptr noundef %18, ptr noundef null)
  tail call fastcc void @create_edge_and_update_destination_phis(ptr noundef nonnull %3)
  br label %21

21:                                               ; preds = %11, %17, %2
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @fixup_template_block(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #9 !prof !230 !PGOFuncName !231 {
  %3 = load ptr, ptr %0, align 8, !tbaa !76
  %4 = load ptr, ptr %3, align 8, !tbaa !174
  %5 = icmp eq ptr %4, null
  br i1 %5, label %11, label %6, !prof !232

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.local_info, ptr %1, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !193
  %9 = icmp eq ptr %4, %8
  br i1 %9, label %10, label %11, !prof !233

10:                                               ; preds = %6
  tail call fastcc void @create_edge_and_update_destination_phis(ptr noundef nonnull %3)
  br label %11

11:                                               ; preds = %2, %6, %10
  %12 = phi i32 [ 0, %10 ], [ 1, %6 ], [ 1, %2 ]
  ret i32 %12
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @redirect_edges(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) #9 !prof !226 !PGOFuncName !234 {
  %3 = load ptr, ptr %0, align 8, !tbaa !76
  %4 = getelementptr inbounds %struct.redirection_data, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !191
  %6 = icmp eq ptr %5, null
  br i1 %6, label %132, label %7, !prof !235

7:                                                ; preds = %2, %130
  %8 = phi ptr [ %11, %130 ], [ %5, %2 ]
  %9 = load ptr, ptr %8, align 8, !tbaa !222
  %10 = getelementptr inbounds %struct.el, ptr %8, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !224
  tail call void @free(ptr noundef %8)
  %12 = getelementptr inbounds %struct.edge_def, ptr %9, i64 0, i32 3
  store ptr null, ptr %12, align 8, !tbaa !104
  %13 = load i64, ptr @thread_stats, align 8, !tbaa !166
  %14 = add i64 %13, 1
  store i64 %14, ptr @thread_stats, align 8, !tbaa !166
  %15 = load ptr, ptr %3, align 8, !tbaa !174
  %16 = icmp eq ptr %15, null
  %17 = load ptr, ptr @dump_file, align 8, !tbaa !76
  %18 = icmp eq ptr %17, null
  br i1 %16, label %64, label %19, !prof !236

19:                                               ; preds = %7
  br i1 %18, label %35, label %20, !prof !237

20:                                               ; preds = %19
  %21 = load i32, ptr @dump_flags, align 4, !tbaa !91
  %22 = and i32 %21, 8
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %35, label %24

24:                                               ; preds = %20
  %25 = load ptr, ptr %9, align 8, !tbaa !162
  %26 = getelementptr inbounds %struct.basic_block_def, ptr %25, i64 0, i32 9
  %27 = load i32, ptr %26, align 8, !tbaa !107
  %28 = getelementptr inbounds %struct.edge_def, ptr %9, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !106
  %30 = getelementptr inbounds %struct.basic_block_def, ptr %29, i64 0, i32 9
  %31 = load i32, ptr %30, align 8, !tbaa !107
  %32 = getelementptr inbounds %struct.basic_block_def, ptr %15, i64 0, i32 9
  %33 = load i32, ptr %32, align 8, !tbaa !107
  %34 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %17, ptr noundef nonnull @.str.5, i32 noundef %27, i32 noundef %31, i32 noundef %33)
  br label %35

35:                                               ; preds = %24, %20, %19
  %36 = getelementptr inbounds %struct.edge_def, ptr %9, i64 0, i32 9
  %37 = load i64, ptr %36, align 8, !tbaa !171
  %38 = load ptr, ptr %3, align 8, !tbaa !174
  %39 = getelementptr inbounds %struct.basic_block_def, ptr %38, i64 0, i32 8
  %40 = load i64, ptr %39, align 8, !tbaa !175
  %41 = add nsw i64 %40, %37
  store i64 %41, ptr %39, align 8, !tbaa !175
  %42 = load ptr, ptr %9, align 8, !tbaa !162
  %43 = getelementptr inbounds %struct.basic_block_def, ptr %42, i64 0, i32 11
  %44 = load i32, ptr %43, align 8, !tbaa !169
  %45 = getelementptr inbounds %struct.edge_def, ptr %9, i64 0, i32 8
  %46 = load i32, ptr %45, align 4, !tbaa !170
  %47 = mul nsw i32 %46, %44
  %48 = add nsw i32 %47, 5000
  %49 = sdiv i32 %48, 10000
  %50 = getelementptr inbounds %struct.basic_block_def, ptr %38, i64 0, i32 11
  %51 = load i32, ptr %50, align 8, !tbaa !169
  %52 = add nsw i32 %49, %51
  store i32 %52, ptr %50, align 8, !tbaa !169
  %53 = getelementptr inbounds %struct.basic_block_def, ptr %38, i64 0, i32 1
  %54 = load ptr, ptr %53, align 8, !tbaa !158
  %55 = getelementptr inbounds %struct.VEC_edge_base, ptr %54, i64 0, i32 2, i64 0
  %56 = load ptr, ptr %55, align 8, !tbaa !76
  %57 = getelementptr inbounds %struct.edge_def, ptr %56, i64 0, i32 9
  %58 = load i64, ptr %57, align 8, !tbaa !171
  %59 = add nsw i64 %58, %37
  store i64 %59, ptr %57, align 8, !tbaa !171
  %60 = tail call ptr @redirect_edge_and_branch(ptr noundef nonnull %9, ptr noundef %38) #17
  %61 = icmp eq ptr %9, %60
  br i1 %61, label %63, label %62, !prof !237

62:                                               ; preds = %35
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 436, ptr noundef nonnull @.str.1) #17
  br label %63

63:                                               ; preds = %35, %62
  tail call void @flush_pending_stmts(ptr noundef %60) #17
  br label %130

64:                                               ; preds = %7
  br i1 %18, label %81, label %65, !prof !238

65:                                               ; preds = %64
  %66 = load i32, ptr @dump_flags, align 4, !tbaa !91
  %67 = and i32 %66, 8
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %81, label %69

69:                                               ; preds = %65
  %70 = load ptr, ptr %9, align 8, !tbaa !162
  %71 = getelementptr inbounds %struct.basic_block_def, ptr %70, i64 0, i32 9
  %72 = load i32, ptr %71, align 8, !tbaa !107
  %73 = getelementptr inbounds %struct.edge_def, ptr %9, i64 0, i32 1
  %74 = load ptr, ptr %73, align 8, !tbaa !106
  %75 = getelementptr inbounds %struct.basic_block_def, ptr %74, i64 0, i32 9
  %76 = load i32, ptr %75, align 8, !tbaa !107
  %77 = load ptr, ptr %1, align 8, !tbaa !195
  %78 = getelementptr inbounds %struct.basic_block_def, ptr %77, i64 0, i32 9
  %79 = load i32, ptr %78, align 8, !tbaa !107
  %80 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %17, ptr noundef nonnull @.str.5, i32 noundef %72, i32 noundef %76, i32 noundef %79)
  br label %81

81:                                               ; preds = %69, %65, %64
  %82 = getelementptr inbounds %struct.redirection_data, ptr %3, i64 0, i32 1
  %83 = load ptr, ptr %1, align 8, !tbaa !195
  %84 = load ptr, ptr %82, align 8, !tbaa !172
  %85 = getelementptr inbounds %struct.edge_def, ptr %84, i64 0, i32 1
  %86 = load ptr, ptr %85, align 8, !tbaa !106
  tail call fastcc void @remove_ctrl_stmt_and_useless_edges(ptr noundef %83, ptr noundef %86)
  %87 = load ptr, ptr %1, align 8, !tbaa !195
  %88 = getelementptr inbounds %struct.basic_block_def, ptr %87, i64 0, i32 1
  %89 = load ptr, ptr %88, align 8, !tbaa !158
  %90 = icmp eq ptr %89, null
  br i1 %90, label %94, label %91, !prof !239

91:                                               ; preds = %81
  %92 = load i32, ptr %89, align 8, !tbaa !101
  %93 = icmp eq i32 %92, 1
  br i1 %93, label %95, label %94, !prof !238

94:                                               ; preds = %81, %91
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 645, ptr noundef nonnull @.str.1) #17
  br label %95

95:                                               ; preds = %91, %94
  %96 = load ptr, ptr %88, align 8, !tbaa !158
  %97 = getelementptr inbounds %struct.VEC_edge_base, ptr %96, i64 0, i32 2, i64 0
  %98 = load ptr, ptr %97, align 8, !tbaa !76
  %99 = getelementptr inbounds %struct.edge_def, ptr %98, i64 0, i32 7
  %100 = load i32, ptr %99, align 8, !tbaa !168
  %101 = and i32 %100, -3075
  store i32 %101, ptr %99, align 8, !tbaa !168
  %102 = load ptr, ptr %1, align 8, !tbaa !195
  %103 = getelementptr inbounds %struct.basic_block_def, ptr %102, i64 0, i32 1
  %104 = load ptr, ptr %103, align 8, !tbaa !158
  %105 = icmp eq ptr %104, null
  br i1 %105, label %109, label %106, !prof !239

106:                                              ; preds = %95
  %107 = load i32, ptr %104, align 8, !tbaa !101
  %108 = icmp eq i32 %107, 1
  br i1 %108, label %110, label %109, !prof !238

109:                                              ; preds = %95, %106
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 645, ptr noundef nonnull @.str.1) #17
  br label %110

110:                                              ; preds = %106, %109
  %111 = load ptr, ptr %103, align 8, !tbaa !158
  %112 = getelementptr inbounds %struct.VEC_edge_base, ptr %111, i64 0, i32 2, i64 0
  %113 = load ptr, ptr %112, align 8, !tbaa !76
  %114 = getelementptr inbounds %struct.edge_def, ptr %113, i64 0, i32 7
  %115 = load i32, ptr %114, align 8, !tbaa !168
  %116 = or i32 %115, 1
  store i32 %116, ptr %114, align 8, !tbaa !168
  %117 = getelementptr inbounds %struct.edge_def, ptr %9, i64 0, i32 9
  %118 = load i64, ptr %117, align 8, !tbaa !171
  %119 = load ptr, ptr %1, align 8, !tbaa !195
  %120 = getelementptr inbounds %struct.basic_block_def, ptr %119, i64 0, i32 8
  store i64 %118, ptr %120, align 8, !tbaa !175
  %121 = load ptr, ptr %9, align 8, !tbaa !162
  %122 = getelementptr inbounds %struct.basic_block_def, ptr %121, i64 0, i32 11
  %123 = load i32, ptr %122, align 8, !tbaa !169
  %124 = getelementptr inbounds %struct.edge_def, ptr %9, i64 0, i32 8
  %125 = load i32, ptr %124, align 4, !tbaa !170
  %126 = mul nsw i32 %125, %123
  %127 = add nsw i32 %126, 5000
  %128 = sdiv i32 %127, 10000
  %129 = getelementptr inbounds %struct.basic_block_def, ptr %119, i64 0, i32 11
  store i32 %128, ptr %129, align 8, !tbaa !169
  br label %130

130:                                              ; preds = %110, %63
  %131 = icmp eq ptr %11, null
  br i1 %131, label %132, label %7, !prof !240, !llvm.loop !241

132:                                              ; preds = %130, %2
  %133 = load ptr, ptr %4, align 8, !tbaa !191
  %134 = icmp eq ptr %133, null
  br i1 %134, label %137, label %135, !prof !242

135:                                              ; preds = %132
  %136 = getelementptr inbounds %struct.local_info, ptr %1, i64 0, i32 2
  store i8 1, ptr %136, align 8, !tbaa !196
  br label %137

137:                                              ; preds = %135, %132
  ret i32 1
}

declare void @htab_delete(ptr noundef) local_unnamed_addr #3

declare ptr @xmalloc(i64 noundef) local_unnamed_addr #3

declare ptr @htab_find_slot(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc void @create_edge_and_update_destination_phis(ptr nocapture noundef readonly %0) unnamed_addr #9 !prof !243 !PGOFuncName !244 {
  %2 = alloca %struct.gimple_stmt_iterator, align 8
  %3 = load ptr, ptr %0, align 8, !tbaa !174
  %4 = getelementptr inbounds %struct.redirection_data, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !172
  %6 = getelementptr inbounds %struct.edge_def, ptr %5, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !106
  %8 = tail call ptr @make_edge(ptr noundef %3, ptr noundef %7, i32 noundef 1) #17
  tail call void @rescan_loop_exit(ptr noundef %8, i8 noundef zeroext 1, i8 noundef zeroext 0) #17
  %9 = getelementptr inbounds %struct.edge_def, ptr %8, i64 0, i32 8
  store i32 10000, ptr %9, align 4, !tbaa !170
  %10 = load ptr, ptr %0, align 8, !tbaa !174
  %11 = getelementptr inbounds %struct.basic_block_def, ptr %10, i64 0, i32 8
  %12 = load i64, ptr %11, align 8, !tbaa !175
  %13 = getelementptr inbounds %struct.edge_def, ptr %8, i64 0, i32 9
  store i64 %12, ptr %13, align 8, !tbaa !171
  %14 = load ptr, ptr %4, align 8, !tbaa !172
  %15 = getelementptr inbounds %struct.edge_def, ptr %14, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !104
  %17 = getelementptr inbounds %struct.edge_def, ptr %8, i64 0, i32 3
  store ptr %16, ptr %17, align 8, !tbaa !104
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #17
  %18 = getelementptr inbounds %struct.edge_def, ptr %8, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !106
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %2, ptr noundef %19) #17
  %20 = load ptr, ptr %2, align 8, !tbaa.struct !245
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #17
  %21 = icmp eq ptr %20, null
  br i1 %21, label %46, label %22, !prof !246

22:                                               ; preds = %1, %39
  %23 = phi ptr [ %44, %39 ], [ %20, %1 ]
  %24 = load ptr, ptr %23, align 8, !tbaa !211
  %25 = load ptr, ptr %4, align 8, !tbaa !172
  %26 = getelementptr inbounds %struct.edge_def, ptr %25, i64 0, i32 6
  %27 = load i32, ptr %26, align 4, !tbaa !247
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds %struct.gimple_statement_phi, ptr %24, i64 0, i32 1
  %30 = load i32, ptr %29, align 8, !tbaa !87
  %31 = icmp ult i32 %30, %27
  br i1 %31, label %32, label %33, !prof !248

32:                                               ; preds = %22
  call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 3103, ptr noundef nonnull @.str.1) #17
  br label %33

33:                                               ; preds = %22, %32
  %34 = getelementptr inbounds %struct.gimple_statement_phi, ptr %24, i64 0, i32 4, i64 %28, i32 2
  %35 = load i32, ptr %34, align 8, !tbaa !249
  %36 = load i32, ptr %29, align 8, !tbaa !87
  %37 = icmp ult i32 %36, %27
  br i1 %37, label %38, label %39, !prof !248

38:                                               ; preds = %33
  call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 3103, ptr noundef nonnull @.str.1) #17
  br label %39

39:                                               ; preds = %33, %38
  %40 = getelementptr inbounds %struct.gimple_statement_phi, ptr %24, i64 0, i32 4, i64 %28, i32 0, i32 3
  %41 = load ptr, ptr %40, align 8, !tbaa !252
  %42 = load ptr, ptr %41, align 8, !tbaa !76
  call void @add_phi_arg(ptr noundef %24, ptr noundef %42, ptr noundef %8, i32 noundef %35) #17
  %43 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %23, i64 0, i32 2
  %44 = load ptr, ptr %43, align 8, !tbaa !213
  %45 = icmp eq ptr %44, null
  br i1 %45, label %46, label %22, !prof !253, !llvm.loop !254

46:                                               ; preds = %39, %1
  ret void
}

declare ptr @duplicate_block(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc void @remove_ctrl_stmt_and_useless_edges(ptr noundef %0, ptr noundef readnone %1) unnamed_addr #9 !prof !255 !PGOFuncName !256 {
  %3 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #17
  %4 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 13
  %5 = load i32, ptr %4, align 8, !tbaa !203, !noalias !257
  %6 = and i32 %5, 512
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %14, !prof !260

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %10 = load ptr, ptr %9, align 8, !tbaa !87, !noalias !257
  %11 = icmp eq ptr %10, null
  br i1 %11, label %14, label %12, !prof !261

12:                                               ; preds = %8
  %13 = load ptr, ptr %10, align 8, !tbaa !207, !noalias !257
  br label %14

14:                                               ; preds = %12, %8, %2
  %15 = phi ptr [ %13, %12 ], [ null, %8 ], [ null, %2 ]
  %16 = icmp eq ptr %15, null
  br i1 %16, label %20, label %17, !prof !261

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.gimple_seq_d, ptr %15, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !262, !noalias !257
  br label %20

20:                                               ; preds = %14, %17
  %21 = phi ptr [ %19, %17 ], [ null, %14 ]
  store ptr %21, ptr %3, align 8, !tbaa.struct !245
  %22 = getelementptr inbounds i8, ptr %3, i64 8
  store ptr %15, ptr %22, align 8, !tbaa.struct !263
  %23 = getelementptr inbounds i8, ptr %3, i64 16
  store ptr %0, ptr %23, align 8, !tbaa.struct !264
  %24 = icmp eq ptr %21, null
  br i1 %24, label %32, label %25, !prof !265

25:                                               ; preds = %20
  %26 = load ptr, ptr %21, align 8, !tbaa !211
  %27 = icmp eq ptr %26, null
  br i1 %27, label %32, label %28, !prof !266

28:                                               ; preds = %25
  %29 = load i32, ptr %26, align 8
  %30 = trunc i32 %29 to i8
  switch i8 %30, label %32 [
    i8 1, label %31
    i8 3, label %31
    i8 5, label %31
  ], !prof !267

31:                                               ; preds = %28, %28, %28
  call void @gsi_remove(ptr noundef nonnull %3, i8 noundef zeroext 1) #17
  br label %32

32:                                               ; preds = %28, %31, %25, %20
  %33 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  br label %34

34:                                               ; preds = %64, %32
  %35 = phi i32 [ %65, %64 ], [ 0, %32 ]
  %36 = zext i32 %35 to i64
  br label %37

37:                                               ; preds = %34, %55
  %38 = load ptr, ptr %33, align 8, !tbaa !76
  %39 = icmp eq ptr %38, null
  br i1 %39, label %42, label %40, !prof !268

40:                                               ; preds = %37
  %41 = load i32, ptr %38, align 8, !tbaa !101
  br label %42

42:                                               ; preds = %40, %37
  %43 = phi i32 [ %41, %40 ], [ 0, %37 ]
  %44 = icmp eq i32 %43, %35
  br i1 %44, label %48, label %45, !prof !269

45:                                               ; preds = %42
  %46 = getelementptr inbounds %struct.VEC_edge_base, ptr %38, i64 0, i32 2, i64 %36
  %47 = load ptr, ptr %46, align 8, !tbaa !76
  br label %48

48:                                               ; preds = %42, %45
  %49 = phi ptr [ %47, %45 ], [ null, %42 ]
  %50 = icmp eq ptr %49, null
  br i1 %50, label %66, label %51, !prof !269

51:                                               ; preds = %48
  %52 = getelementptr inbounds %struct.edge_def, ptr %49, i64 0, i32 1
  %53 = load ptr, ptr %52, align 8, !tbaa !106
  %54 = icmp eq ptr %53, %1
  br i1 %54, label %56, label %55, !prof !270

55:                                               ; preds = %51
  call void @remove_edge(ptr noundef nonnull %49) #17
  br label %37, !llvm.loop !271

56:                                               ; preds = %51
  %57 = icmp eq ptr %38, null
  br i1 %57, label %60, label %58, !prof !239

58:                                               ; preds = %56
  %59 = load i32, ptr %38, align 8, !tbaa !101
  br label %60

60:                                               ; preds = %58, %56
  %61 = phi i32 [ %59, %58 ], [ 0, %56 ]
  %62 = icmp ult i32 %35, %61
  br i1 %62, label %64, label %63, !prof !238

63:                                               ; preds = %60
  call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 738, ptr noundef nonnull @.str.1) #17
  br label %64

64:                                               ; preds = %60, %63
  %65 = add i32 %35, 1
  br label %34, !llvm.loop !271

66:                                               ; preds = %48
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #17
  ret void
}

declare void @gsi_remove(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

declare void @remove_edge(ptr noundef) local_unnamed_addr #3

declare ptr @make_edge(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @rescan_loop_exit(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

declare void @gsi_start_phis(ptr dead_on_unwind writable sret(%struct.gimple_stmt_iterator) align 8, ptr noundef) local_unnamed_addr #3

declare void @add_phi_arg(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #1

declare ptr @redirect_edge_and_branch(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @flush_pending_stmts(ptr noundef) local_unnamed_addr #3

declare ptr @vec_heap_o_reserve_exact(ptr noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

declare zeroext i8 @empty_block_p(ptr noundef) local_unnamed_addr #3

declare ptr @create_preheader(ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @split_edge(ptr noundef) local_unnamed_addr #3

declare void @set_loop_copy(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @make_forwarder_block(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @mfb_keep_just(ptr noundef) #3

declare ptr @xcalloc(i64 noundef, i64 noundef) local_unnamed_addr #3

declare i32 @dfs_enumerate_from(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal zeroext i8 @dbds_continue_enumeration_p(ptr noundef readnone %0, ptr noundef readnone %1) #14 !prof !75 {
  %3 = icmp ne ptr %0, %1
  %4 = load ptr, ptr @dbds_ce_stop, align 8
  %5 = icmp ne ptr %4, %0
  %6 = select i1 %3, i1 %5, i1 false
  %7 = zext i1 %6 to i8
  ret i8 %7
}

declare ptr @vec_heap_p_reserve_exact(ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @vec_heap_p_reserve(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #15

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #16

attributes #0 = { cold inlinehint nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold inlinehint mustprogress nofree nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { cold nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #16 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #17 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!74}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73}
!35 = !{ptr @thread_through_all_blocks, ptr @bitmap_obstack_alloc_stat, i64 118}
!36 = !{ptr @thread_through_all_blocks, ptr @bitmap_set_bit, i64 41795}
!37 = !{ptr @thread_through_all_blocks, ptr @optimize_function_for_size_p, i64 59}
!38 = !{ptr @thread_through_all_blocks, ptr @bitmap_copy, i64 59}
!39 = !{ptr @thread_through_all_blocks, ptr @bitmap_obstack_free, i64 118}
!40 = !{ptr @thread_through_all_blocks, ptr @initialize_original_copy_tables, i64 59}
!41 = !{ptr @thread_through_all_blocks, ptr @thread_block, i64 35350}
!42 = !{ptr @thread_through_all_blocks, ptr @vec_heap_o_reserve_exact, i64 59}
!43 = !{ptr @thread_through_all_blocks, ptr @free, i64 118}
!44 = !{ptr @thread_through_all_blocks, ptr @statistics_counter_event, i64 59}
!45 = !{ptr @thread_through_all_blocks, ptr @free_original_copy_tables, i64 59}
!46 = !{ptr @thread_block, ptr @htab_create, i64 35350}
!47 = !{ptr @thread_block, ptr @update_bb_profile_for_threading, i64 53654}
!48 = !{ptr @thread_block, ptr @lookup_redirection_data, i64 53654}
!49 = !{ptr @thread_block, ptr @xmalloc, i64 2027}
!50 = !{ptr @thread_block, ptr @htab_find_slot, i64 1164}
!51 = !{ptr @thread_block, ptr @free, i64 301}
!52 = !{ptr @thread_block, ptr @free_dominance_info, i64 35350}
!53 = !{ptr @thread_block, ptr @htab_traverse, i64 106050}
!54 = !{ptr @thread_block, ptr @htab_delete, i64 35350}
!55 = !{ptr @register_jump_thread, ptr @vec_heap_p_reserve_exact, i64 59}
!56 = !{ptr @register_jump_thread, ptr @vec_heap_p_reserve, i64 366}
!57 = !{ptr @lookup_redirection_data, ptr @xmalloc, i64 106168}
!58 = !{ptr @lookup_redirection_data, ptr @htab_find_slot, i64 53654}
!59 = !{ptr @lookup_redirection_data, ptr @free, i64 13892}
!60 = !{ptr @create_duplicates, ptr @duplicate_block, i64 39461}
!61 = !{ptr @create_duplicates, ptr @remove_ctrl_stmt_and_useless_edges, i64 39461}
!62 = !{ptr @create_duplicates, ptr @create_edge_and_update_destination_phis, i64 4111}
!63 = !{ptr @fixup_template_block, ptr @create_edge_and_update_destination_phis, i64 35350}
!64 = !{ptr @redirect_edges, ptr @free, i64 53654}
!65 = !{ptr @redirect_edges, ptr @redirect_edge_and_branch, i64 52304}
!66 = !{ptr @redirect_edges, ptr @flush_pending_stmts, i64 52304}
!67 = !{ptr @redirect_edges, ptr @remove_ctrl_stmt_and_useless_edges, i64 1350}
!68 = !{ptr @create_edge_and_update_destination_phis, ptr @make_edge, i64 39461}
!69 = !{ptr @create_edge_and_update_destination_phis, ptr @rescan_loop_exit, i64 39461}
!70 = !{ptr @create_edge_and_update_destination_phis, ptr @gsi_start_phis, i64 39461}
!71 = !{ptr @create_edge_and_update_destination_phis, ptr @add_phi_arg, i64 26963}
!72 = !{ptr @remove_ctrl_stmt_and_useless_edges, ptr @gsi_remove, i64 36514}
!73 = !{ptr @remove_ctrl_stmt_and_useless_edges, ptr @remove_edge, i64 71864}
!74 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!75 = !{!"function_entry_count", i64 0}
!76 = !{!77, !77, i64 0}
!77 = !{!"any pointer", !78, i64 0}
!78 = !{!"omnipotent char", !79, i64 0}
!79 = !{!"Simple C/C++ TBAA"}
!80 = !{!81, !77, i64 8}
!81 = !{!"_IO_FILE", !82, i64 0, !77, i64 8, !77, i64 16, !77, i64 24, !77, i64 32, !77, i64 40, !77, i64 48, !77, i64 56, !77, i64 64, !77, i64 72, !77, i64 80, !77, i64 88, !77, i64 96, !77, i64 104, !82, i64 112, !82, i64 116, !83, i64 120, !84, i64 128, !78, i64 130, !78, i64 131, !77, i64 136, !83, i64 144, !77, i64 152, !77, i64 160, !77, i64 168, !77, i64 176, !83, i64 184, !82, i64 192, !78, i64 196}
!82 = !{!"int", !78, i64 0}
!83 = !{!"long", !78, i64 0}
!84 = !{!"short", !78, i64 0}
!85 = !{!81, !77, i64 16}
!86 = !{!"branch_weights", i32 2000, i32 1}
!87 = !{!78, !78, i64 0}
!88 = !{!81, !77, i64 40}
!89 = !{!81, !77, i64 48}
!90 = !{!81, !82, i64 0}
!91 = !{!82, !82, i64 0}
!92 = distinct !{!92, !93, !94}
!93 = !{!"llvm.loop.mustprogress"}
!94 = !{!"llvm.loop.unroll.disable"}
!95 = !{!"function_entry_count", i64 152}
!96 = !{!97, !77, i64 32}
!97 = !{!"function", !77, i64 0, !77, i64 8, !77, i64 16, !77, i64 24, !77, i64 32, !77, i64 40, !77, i64 48, !77, i64 56, !77, i64 64, !77, i64 72, !77, i64 80, !77, i64 88, !77, i64 96, !82, i64 104, !82, i64 108, !82, i64 112, !82, i64 116, !82, i64 120, !82, i64 124, !77, i64 128, !82, i64 136, !82, i64 137, !82, i64 138, !82, i64 138, !82, i64 138, !82, i64 138, !82, i64 138, !82, i64 138, !82, i64 138, !82, i64 139, !82, i64 139, !82, i64 139, !82, i64 139, !82, i64 139, !82, i64 139, !82, i64 139}
!98 = !{!"branch_weights", i32 0, i32 152}
!99 = !{!"branch_weights", i32 93, i32 59}
!100 = !{!"branch_weights", i32 0, i32 41854}
!101 = !{!102, !82, i64 0}
!102 = !{!"VEC_edge_base", !82, i64 0, !82, i64 4, !78, i64 8}
!103 = !{!"branch_weights", i32 41795, i32 59}
!104 = !{!105, !77, i64 24}
!105 = !{!"edge_def", !77, i64 0, !77, i64 8, !78, i64 16, !77, i64 24, !77, i64 32, !82, i64 40, !82, i64 44, !82, i64 48, !82, i64 52, !83, i64 56}
!106 = !{!105, !77, i64 8}
!107 = !{!108, !82, i64 80}
!108 = !{!"basic_block_def", !77, i64 0, !77, i64 8, !77, i64 16, !77, i64 24, !78, i64 32, !77, i64 48, !77, i64 56, !78, i64 64, !83, i64 72, !82, i64 80, !82, i64 84, !82, i64 88, !82, i64 92, !82, i64 96}
!109 = distinct !{!109, !93, !94}
!110 = !{!"branch_weights", i32 59, i32 0}
!111 = !{!112, !77, i64 0}
!112 = !{!"bitmap_head_def", !77, i64 0, !77, i64 8, !82, i64 16, !77, i64 24}
!113 = !{!114, !82, i64 16}
!114 = !{!"bitmap_element_def", !77, i64 0, !77, i64 8, !82, i64 16, !78, i64 24}
!115 = !{!83, !83, i64 0}
!116 = distinct !{!116, !93, !94}
!117 = distinct !{!117, !93, !94}
!118 = !{!114, !77, i64 0}
!119 = distinct !{!119, !94}
!120 = !{!97, !77, i64 8}
!121 = !{!122, !77, i64 16}
!122 = !{!"control_flow_graph", !77, i64 0, !77, i64 8, !77, i64 16, !82, i64 24, !82, i64 28, !82, i64 32, !77, i64 40, !82, i64 48, !78, i64 52, !78, i64 60, !82, i64 68, !82, i64 72}
!123 = !{!108, !77, i64 0}
!124 = !{i8 0, i8 2}
!125 = distinct !{!125, !93, !94}
!126 = distinct !{!126, !93, !94}
!127 = !{!"branch_weights", i32 0, i32 59}
!128 = !{!"branch_weights", i32 5403, i32 30006}
!129 = !{!"branch_weights", i32 35349, i32 1}
!130 = !{!"branch_weights", i32 197790, i32 35349}
!131 = !{!"branch_weights", i32 1, i32 3132}
!132 = !{!"branch_weights", i32 863, i32 5344}
!133 = !{!"branch_weights", i32 3132, i32 3075}
!134 = !{!"branch_weights", i32 59, i32 3074}
!135 = !{!"branch_weights", i32 59, i32 35350}
!136 = !{!"branch_weights", i32 0, i32 35350}
!137 = distinct !{!137, !93, !94}
!138 = !{!139, !77, i64 8}
!139 = !{!"loops", !82, i64 0, !77, i64 8, !77, i64 16, !77, i64 24}
!140 = !{!141, !82, i64 0}
!141 = !{!"VEC_loop_p_base", !82, i64 0, !82, i64 4, !78, i64 8}
!142 = !{!139, !77, i64 24}
!143 = !{!144, !77, i64 48}
!144 = !{!"loop", !82, i64 0, !82, i64 4, !77, i64 8, !77, i64 16, !145, i64 24, !82, i64 32, !82, i64 36, !77, i64 40, !77, i64 48, !77, i64 56, !77, i64 64, !77, i64 72, !146, i64 80, !146, i64 96, !78, i64 112, !78, i64 113, !82, i64 116, !77, i64 120, !77, i64 128, !78, i64 136, !77, i64 144}
!145 = !{!"lpt_decision", !82, i64 0, !82, i64 4}
!146 = !{!"", !83, i64 0, !83, i64 8}
!147 = distinct !{!147, !93, !94}
!148 = !{!144, !82, i64 0}
!149 = !{!150, !82, i64 0}
!150 = !{!"VEC_int_base", !82, i64 0, !82, i64 4, !78, i64 8}
!151 = !{!144, !77, i64 56}
!152 = distinct !{!152, !93, !94}
!153 = !{!144, !77, i64 40}
!154 = distinct !{!154, !94}
!155 = distinct !{!155, !93, !94}
!156 = !{!"branch_weights", i32 1, i32 0}
!157 = !{!144, !77, i64 8}
!158 = !{!108, !77, i64 8}
!159 = distinct !{!159, !93, !94}
!160 = !{!144, !77, i64 16}
!161 = !{!144, !82, i64 36}
!162 = !{!105, !77, i64 0}
!163 = distinct !{!163, !93, !94}
!164 = distinct !{!164, !93, !94}
!165 = !{!108, !77, i64 24}
!166 = !{!167, !83, i64 0}
!167 = !{!"thread_stats_d", !83, i64 0}
!168 = !{!105, !82, i64 48}
!169 = !{!108, !82, i64 88}
!170 = !{!105, !82, i64 52}
!171 = !{!105, !83, i64 56}
!172 = !{!173, !77, i64 8}
!173 = !{!"redirection_data", !77, i64 0, !77, i64 8, !77, i64 16, !78, i64 24}
!174 = !{!173, !77, i64 0}
!175 = !{!108, !83, i64 72}
!176 = distinct !{!176, !93, !94}
!177 = distinct !{!177, !93, !94}
!178 = distinct !{!178, !93, !94}
!179 = !{!139, !82, i64 0}
!180 = !{!"function_entry_count", i64 35350}
!181 = !{!"tree-ssa-threadupdate.c;thread_block"}
!182 = !{!"branch_weights", i32 0, i32 149951}
!183 = !{!"branch_weights", i32 35350, i32 114601}
!184 = !{!"branch_weights", i32 60947, i32 53654}
!185 = !{!"branch_weights", i32 0, i32 53654}
!186 = !{!"branch_weights", i32 0, i32 114601}
!187 = !{!"branch_weights", i32 114601, i32 0}
!188 = distinct !{!188, !93, !94}
!189 = !{!"branch_weights", i32 34186, i32 1164}
!190 = !{!173, !78, i64 24}
!191 = !{!173, !77, i64 16}
!192 = !{!"branch_weights", i32 40625, i32 14193}
!193 = !{!194, !77, i64 8}
!194 = !{!"local_info", !77, i64 0, !77, i64 8, !78, i64 16}
!195 = !{!194, !77, i64 0}
!196 = !{!194, !78, i64 16}
!197 = !{!"function_entry_count", i64 41795}
!198 = !{!"branch_weights", i32 59, i32 41736}
!199 = !{!"branch_weights", i32 0, i32 41795}
!200 = !{!102, !82, i64 4}
!201 = !{!"branch_weights", i32 169, i32 41626}
!202 = !{!"branch_weights", i32 197, i32 41598}
!203 = !{!108, !82, i64 96}
!204 = !{!205}
!205 = distinct !{!205, !206, !"gsi_start_bb: argument 0"}
!206 = distinct !{!206, !"gsi_start_bb"}
!207 = !{!208, !77, i64 0}
!208 = !{!"gimple_bb_info", !77, i64 0, !77, i64 8}
!209 = !{!210, !77, i64 0}
!210 = !{!"gimple_seq_d", !77, i64 0, !77, i64 8, !77, i64 16}
!211 = !{!212, !77, i64 0}
!212 = !{!"gimple_seq_node_d", !77, i64 0, !77, i64 8, !77, i64 16}
!213 = !{!212, !77, i64 16}
!214 = distinct !{!214, !93, !94}
!215 = !{!"function_entry_count", i64 54818}
!216 = !{!"tree-ssa-threadupdate.c;redirection_data_hash"}
!217 = !{!"function_entry_count", i64 14285}
!218 = !{!"tree-ssa-threadupdate.c;redirection_data_eq"}
!219 = !{!"function_entry_count", i64 53654}
!220 = !{!"tree-ssa-threadupdate.c;lookup_redirection_data"}
!221 = !{!"branch_weights", i32 0, i32 54818}
!222 = !{!223, !77, i64 0}
!223 = !{!"el", !77, i64 0, !77, i64 8}
!224 = !{!223, !77, i64 8}
!225 = !{!"branch_weights", i32 1164, i32 13029}
!226 = !{!"function_entry_count", i64 40625}
!227 = !{!"tree-ssa-threadupdate.c;create_duplicates"}
!228 = !{!"branch_weights", i32 39461, i32 1164}
!229 = !{!"branch_weights", i32 35350, i32 4111}
!230 = !{!"function_entry_count", i64 36012}
!231 = !{!"tree-ssa-threadupdate.c;fixup_template_block"}
!232 = !{!"branch_weights", i32 662, i32 35350}
!233 = !{!"branch_weights", i32 35350, i32 0}
!234 = !{!"tree-ssa-threadupdate.c;redirect_edges"}
!235 = !{!"branch_weights", i32 1, i32 40624}
!236 = !{!"branch_weights", i32 1350, i32 52304}
!237 = !{!"branch_weights", i32 52304, i32 0}
!238 = !{!"branch_weights", i32 1350, i32 0}
!239 = !{!"branch_weights", i32 0, i32 1350}
!240 = !{!"branch_weights", i32 40624, i32 13030}
!241 = distinct !{!241, !93, !94}
!242 = !{!"branch_weights", i32 0, i32 40625}
!243 = !{!"function_entry_count", i64 39461}
!244 = !{!"tree-ssa-threadupdate.c;create_edge_and_update_destination_phis"}
!245 = !{i64 0, i64 8, !76, i64 8, i64 8, !76, i64 16, i64 8, !76}
!246 = !{!"branch_weights", i32 12498, i32 26963}
!247 = !{!105, !82, i64 44}
!248 = !{!"branch_weights", i32 0, i32 26963}
!249 = !{!250, !82, i64 40}
!250 = !{!"phi_arg_d", !251, i64 0, !77, i64 32, !82, i64 40}
!251 = !{!"ssa_use_operand_d", !77, i64 0, !77, i64 8, !78, i64 16, !77, i64 24}
!252 = !{!251, !77, i64 24}
!253 = !{!"branch_weights", i32 26963, i32 0}
!254 = distinct !{!254, !93, !94}
!255 = !{!"function_entry_count", i64 40811}
!256 = !{!"tree-ssa-threadupdate.c;remove_ctrl_stmt_and_useless_edges"}
!257 = !{!258}
!258 = distinct !{!258, !259, !"gsi_last_bb: argument 0"}
!259 = distinct !{!259, !"gsi_last_bb"}
!260 = !{!"branch_weights", i32 40811, i32 0}
!261 = !{!"branch_weights", i32 0, i32 40811}
!262 = !{!210, !77, i64 8}
!263 = !{i64 0, i64 8, !76, i64 8, i64 8, !76}
!264 = !{i64 0, i64 8, !76}
!265 = !{!"branch_weights", i32 106, i32 40705}
!266 = !{!"branch_weights", i32 0, i32 40705}
!267 = !{!"branch_weights", i32 287549765, i32 -1789695971, i32 0, i32 0}
!268 = !{!"branch_weights", i32 4111, i32 109914}
!269 = !{!"branch_weights", i32 40811, i32 73214}
!270 = !{!"branch_weights", i32 1350, i32 71864}
!271 = distinct !{!271, !93, !94}
