; ModuleID = 'ddg.c'
source_filename = "ddg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.bitmap_element_def = type { ptr, ptr, i32, [2 x i64] }
%struct._IO_FILE = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, [1 x i8], ptr, i64, ptr, ptr, ptr, ptr, i64, i32, [20 x i8] }
%struct.deps = type { ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, i32, ptr, i32, ptr, %struct.bitmap_head_def, %struct.bitmap_head_def, i32, i8 }
%struct.bitmap_head_def = type { ptr, ptr, i32, ptr }
%struct._sd_iterator = type { i32, ptr, ptr, i8 }
%struct.ddg = type { ptr, i32, i32, i32, i32, ptr, ptr, i32, i32, ptr }
%struct.basic_block_def = type { ptr, ptr, ptr, ptr, [2 x ptr], ptr, ptr, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%union.basic_block_il_dependent = type { ptr }
%struct.rtl_bb_info = type { ptr, ptr, ptr, ptr, i32 }
%struct.rtx_def = type { i32, %union.u }
%union.u = type { %struct.block_symbol }
%struct.block_symbol = type { [3 x %union.rtunion_def], ptr, i64 }
%union.rtunion_def = type { ptr }
%struct.ddg_node = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon }
%union.anon = type { ptr }
%struct._dep = type { ptr, ptr, i32, i32 }
%struct.df = type { [8 x ptr], [8 x ptr], ptr, %struct.df_ref_info, %struct.df_ref_info, ptr, ptr, ptr, i32, i32, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i8, i8, i8 }
%struct.df_ref_info = type { ptr, ptr, ptr, i32, i32, i32, i32 }
%struct.dataflow = type { ptr, ptr, i32, ptr, ptr, ptr, i32, i8, i8, i8 }
%struct.df_rd_bb_info = type { ptr, ptr, ptr, ptr, ptr }
%struct.df_base_ref = type { i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32 }
%struct.ddg_edge = type { ptr, ptr, i32, i32, i32, i32, ptr, ptr, %union.anon.0 }
%union.anon.0 = type { ptr }
%struct._dep_link = type { ptr, ptr, ptr }
%struct.simple_bitmap_def = type { ptr, i32, i32, [1 x i64] }
%struct.df_link = type { ptr, ptr }
%struct.ddg_all_sccs = type { ptr, i32, ptr }
%struct.ddg_scc = type { ptr, ptr, i32, i32 }
%struct._dep_node = type { %struct._dep_link, %struct._dep, %struct._dep_link }
%struct.rtvec_def = type { i32, [1 x ptr] }

@stdout = external local_unnamed_addr global ptr, align 8
@stdin = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [6 x i8] c"ddg.c\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c" [%d -(%c,%d,%d)-> %d] \00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"Node num: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"OUT ARCS: \00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"\0AIN ARCS: \00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"graph: {\0A\00", align 1
@.str.8 = private unnamed_addr constant [31 x i8] c"node: {title: \22%d_%d\22 info1: \22\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"\22}\0A\00", align 1
@.str.10 = private unnamed_addr constant [23 x i8] c"backedge: {color: red \00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"edge: { \00", align 1
@.str.12 = private unnamed_addr constant [21 x i8] c"sourcename: \22%d_%d\22 \00", align 1
@.str.13 = private unnamed_addr constant [21 x i8] c"targetname: \22%d_%d\22 \00", align 1
@.str.14 = private unnamed_addr constant [17 x i8] c"label: \22%d_%d\22}\0A\00", align 1
@.str.15 = private unnamed_addr constant [3 x i8] c"}\0A\00", align 1
@.str.16 = private unnamed_addr constant [30 x i8] c"\0A;; Number of SCC nodes - %d\0A\00", align 1
@.str.17 = private unnamed_addr constant [16 x i8] c"SCC number: %d\0A\00", align 1
@.str.18 = private unnamed_addr constant [13 x i8] c"insn num %d\0A\00", align 1
@mem_ref_p = internal unnamed_addr global i1 false, align 1
@sd_iterator_start.null_link = internal global ptr null, align 8
@flag_modulo_sched_allow_regmoves = external local_unnamed_addr global i32, align 4
@df = external local_unnamed_addr global ptr, align 8
@rtx_format = external local_unnamed_addr constant [139 x ptr], align 16
@rtx_length = external local_unnamed_addr constant [139 x i8], align 16
@bitmap_zero_bits = external local_unnamed_addr global %struct.bitmap_element_def, align 8

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
  %8 = tail call i32 @__uflow(ptr noundef %0) #21
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
  %8 = tail call i32 @__uflow(ptr noundef %0) #21
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
  %8 = tail call i32 @__uflow(ptr noundef %1) #21
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
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #21
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
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #21
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
  %10 = tail call i32 @__overflow(ptr noundef %2, i32 noundef %9) #21
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
  %4 = tail call i64 @__getdelim(ptr noundef %0, ptr noundef %1, i32 noundef 10, ptr noundef %2) #21
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
  %5 = tail call ptr @__ctype_tolower_loc() #21
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
  %5 = tail call ptr @__ctype_toupper_loc() #21
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
  %14 = tail call i32 %4(ptr noundef %0, ptr noundef %13) #21
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

; Function Attrs: cold nounwind uwtable
define dso_local noundef ptr @create_ddg(ptr noundef %0, i32 noundef %1) local_unnamed_addr #9 !prof !34 {
  %3 = alloca %struct.deps, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca %struct._sd_iterator, align 8
  %7 = alloca ptr, align 8
  %8 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 56) #21
  store ptr %0, ptr %8, align 8, !tbaa !54
  %9 = getelementptr inbounds %struct.ddg, ptr %8, i64 0, i32 7
  store i32 %1, ptr %9, align 8, !tbaa !56
  %10 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %11 = load ptr, ptr %10, align 8, !tbaa !46
  %12 = load ptr, ptr %11, align 8, !tbaa !46
  %13 = getelementptr inbounds %struct.rtl_bb_info, ptr %11, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !57
  %15 = getelementptr inbounds %struct.rtx_def, ptr %14, i64 0, i32 1, i32 0, i32 0, i64 2
  %16 = load ptr, ptr %15, align 8, !tbaa !46
  %17 = icmp eq ptr %12, %16
  br i1 %17, label %63, label %18

18:                                               ; preds = %2
  %19 = getelementptr inbounds %struct.ddg, ptr %8, i64 0, i32 2
  %20 = getelementptr inbounds %struct.ddg, ptr %8, i64 0, i32 3
  %21 = getelementptr inbounds %struct.ddg, ptr %8, i64 0, i32 4
  br label %22

22:                                               ; preds = %18, %53
  %23 = phi ptr [ %12, %18 ], [ %56, %53 ]
  %24 = phi i32 [ 0, %18 ], [ %54, %53 ]
  %25 = load i32, ptr %23, align 8
  %26 = and i32 %25, 65535
  %27 = add nsw i32 %26, -7
  %28 = icmp ult i32 %27, 4
  br i1 %28, label %29, label %53

29:                                               ; preds = %22
  %30 = getelementptr inbounds %struct.rtx_def, ptr %23, i64 1
  %31 = load ptr, ptr %30, align 8, !tbaa !46
  %32 = load i32, ptr %31, align 8
  %33 = and i32 %32, 65535
  %34 = icmp eq i32 %33, 24
  br i1 %34, label %53, label %35

35:                                               ; preds = %29
  %36 = icmp eq i32 %26, 7
  br i1 %36, label %37, label %40

37:                                               ; preds = %35
  %38 = load i32, ptr %21, align 4, !tbaa !59
  %39 = add nsw i32 %38, 1
  store i32 %39, ptr %21, align 4, !tbaa !59
  br label %51

40:                                               ; preds = %35
  store i1 false, ptr @mem_ref_p, align 1
  tail call void @note_uses(ptr noundef nonnull %30, ptr noundef nonnull @mark_mem_use_1, ptr noundef null) #21
  %41 = load i1, ptr @mem_ref_p, align 1
  br i1 %41, label %42, label %45

42:                                               ; preds = %40
  %43 = load i32, ptr %19, align 4, !tbaa !60
  %44 = add nsw i32 %43, 1
  store i32 %44, ptr %19, align 4, !tbaa !60
  br label %45

45:                                               ; preds = %42, %40
  store i1 false, ptr @mem_ref_p, align 1
  %46 = load ptr, ptr %30, align 8, !tbaa !46
  tail call void @note_stores(ptr noundef %46, ptr noundef nonnull @mark_mem_store, ptr noundef null) #21
  %47 = load i1, ptr @mem_ref_p, align 1
  br i1 %47, label %48, label %51

48:                                               ; preds = %45
  %49 = load i32, ptr %20, align 8, !tbaa !61
  %50 = add nsw i32 %49, 1
  store i32 %50, ptr %20, align 8, !tbaa !61
  br label %51

51:                                               ; preds = %45, %48, %37
  %52 = add nsw i32 %24, 1
  br label %53

53:                                               ; preds = %22, %29, %51
  %54 = phi i32 [ %24, %29 ], [ %52, %51 ], [ %24, %22 ]
  %55 = getelementptr inbounds %struct.rtx_def, ptr %23, i64 0, i32 1, i32 0, i32 0, i64 2
  %56 = load ptr, ptr %55, align 8, !tbaa !46
  %57 = load ptr, ptr %10, align 8, !tbaa !46
  %58 = getelementptr inbounds %struct.rtl_bb_info, ptr %57, i64 0, i32 1
  %59 = load ptr, ptr %58, align 8, !tbaa !57
  %60 = getelementptr inbounds %struct.rtx_def, ptr %59, i64 0, i32 1, i32 0, i32 0, i64 2
  %61 = load ptr, ptr %60, align 8, !tbaa !46
  %62 = icmp eq ptr %56, %61
  br i1 %62, label %63, label %22, !llvm.loop !62

63:                                               ; preds = %53, %2
  %64 = phi i32 [ 0, %2 ], [ %54, %53 ]
  %65 = icmp slt i32 %64, 2
  br i1 %65, label %66, label %67

66:                                               ; preds = %63
  tail call void @free(ptr noundef %8)
  br label %639

67:                                               ; preds = %63
  %68 = getelementptr inbounds %struct.ddg, ptr %8, i64 0, i32 1
  store i32 %64, ptr %68, align 8, !tbaa !63
  %69 = zext nneg i32 %64 to i64
  %70 = tail call ptr @xcalloc(i64 noundef %69, i64 noundef 64) #21
  %71 = getelementptr inbounds %struct.ddg, ptr %8, i64 0, i32 5
  store ptr %70, ptr %71, align 8, !tbaa !64
  %72 = getelementptr inbounds %struct.ddg, ptr %8, i64 0, i32 6
  store ptr null, ptr %72, align 8, !tbaa !65
  %73 = load ptr, ptr %10, align 8, !tbaa !46
  %74 = load ptr, ptr %73, align 8, !tbaa !46
  %75 = getelementptr inbounds %struct.rtl_bb_info, ptr %73, i64 0, i32 1
  %76 = load ptr, ptr %75, align 8, !tbaa !57
  %77 = getelementptr inbounds %struct.rtx_def, ptr %76, i64 0, i32 1, i32 0, i32 0, i64 2
  %78 = load ptr, ptr %77, align 8, !tbaa !46
  %79 = icmp eq ptr %74, %78
  br i1 %79, label %143, label %80

80:                                               ; preds = %67, %132
  %81 = phi ptr [ %136, %132 ], [ %74, %67 ]
  %82 = phi i32 [ %134, %132 ], [ 0, %67 ]
  %83 = phi ptr [ %133, %132 ], [ null, %67 ]
  %84 = load i32, ptr %81, align 8
  %85 = and i32 %84, 65535
  %86 = add nsw i32 %85, -7
  %87 = icmp ult i32 %86, 4
  br i1 %87, label %97, label %88

88:                                               ; preds = %80
  %89 = icmp eq ptr %83, null
  br i1 %89, label %90, label %132

90:                                               ; preds = %88
  %91 = icmp eq i32 %85, 13
  br i1 %91, label %92, label %132

92:                                               ; preds = %90
  %93 = getelementptr inbounds %struct.rtx_def, ptr %81, i64 1
  %94 = load i32, ptr %93, align 8, !tbaa !46
  %95 = icmp eq i32 %94, 10
  %96 = select i1 %95, ptr null, ptr %81
  br label %132

97:                                               ; preds = %80
  %98 = icmp eq i32 %85, 9
  br i1 %98, label %99, label %107

99:                                               ; preds = %97
  %100 = load ptr, ptr %72, align 8, !tbaa !65
  %101 = icmp eq ptr %100, null
  br i1 %101, label %103, label %102

102:                                              ; preds = %99
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 514, ptr noundef nonnull @.str.1) #21
  br label %103

103:                                              ; preds = %99, %102
  %104 = load ptr, ptr %71, align 8, !tbaa !64
  %105 = sext i32 %82 to i64
  %106 = getelementptr inbounds %struct.ddg_node, ptr %104, i64 %105
  store ptr %106, ptr %72, align 8, !tbaa !65
  br label %116

107:                                              ; preds = %97
  %108 = getelementptr inbounds %struct.rtx_def, ptr %81, i64 1
  %109 = load ptr, ptr %108, align 8, !tbaa !46
  %110 = load i32, ptr %109, align 8
  %111 = and i32 %110, 65535
  %112 = icmp eq i32 %111, 24
  br i1 %112, label %113, label %116

113:                                              ; preds = %107
  %114 = icmp eq ptr %83, null
  %115 = select i1 %114, ptr %81, ptr %83
  br label %132

116:                                              ; preds = %107, %103
  %117 = load ptr, ptr %71, align 8, !tbaa !64
  %118 = sext i32 %82 to i64
  %119 = getelementptr inbounds %struct.ddg_node, ptr %117, i64 %118
  store i32 %82, ptr %119, align 8, !tbaa !66
  %120 = tail call ptr @sbitmap_alloc(i32 noundef %64) #21
  %121 = load ptr, ptr %71, align 8, !tbaa !64
  %122 = getelementptr inbounds %struct.ddg_node, ptr %121, i64 %118, i32 5
  store ptr %120, ptr %122, align 8, !tbaa !68
  tail call void @sbitmap_zero(ptr noundef %120) #21
  %123 = tail call ptr @sbitmap_alloc(i32 noundef %64) #21
  %124 = load ptr, ptr %71, align 8, !tbaa !64
  %125 = getelementptr inbounds %struct.ddg_node, ptr %124, i64 %118, i32 6
  store ptr %123, ptr %125, align 8, !tbaa !69
  tail call void @sbitmap_zero(ptr noundef %123) #21
  %126 = icmp eq ptr %83, null
  %127 = select i1 %126, ptr %81, ptr %83
  %128 = load ptr, ptr %71, align 8, !tbaa !64
  %129 = getelementptr inbounds %struct.ddg_node, ptr %128, i64 %118, i32 2
  store ptr %127, ptr %129, align 8, !tbaa !70
  %130 = add nsw i32 %82, 1
  %131 = getelementptr inbounds %struct.ddg_node, ptr %128, i64 %118, i32 1
  store ptr %81, ptr %131, align 8, !tbaa !71
  br label %132

132:                                              ; preds = %113, %92, %88, %90, %116
  %133 = phi ptr [ null, %116 ], [ %83, %88 ], [ null, %90 ], [ %96, %92 ], [ %115, %113 ]
  %134 = phi i32 [ %130, %116 ], [ %82, %88 ], [ %82, %90 ], [ %82, %92 ], [ %82, %113 ]
  %135 = getelementptr inbounds %struct.rtx_def, ptr %81, i64 0, i32 1, i32 0, i32 0, i64 2
  %136 = load ptr, ptr %135, align 8, !tbaa !46
  %137 = load ptr, ptr %10, align 8, !tbaa !46
  %138 = getelementptr inbounds %struct.rtl_bb_info, ptr %137, i64 0, i32 1
  %139 = load ptr, ptr %138, align 8, !tbaa !57
  %140 = getelementptr inbounds %struct.rtx_def, ptr %139, i64 0, i32 1, i32 0, i32 0, i64 2
  %141 = load ptr, ptr %140, align 8, !tbaa !46
  %142 = icmp eq ptr %136, %141
  br i1 %142, label %143, label %80, !llvm.loop !72

143:                                              ; preds = %132, %67
  %144 = load ptr, ptr %72, align 8, !tbaa !65
  %145 = icmp eq ptr %144, null
  br i1 %145, label %146, label %147

146:                                              ; preds = %143
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 535, ptr noundef nonnull @.str.1) #21
  br label %147

147:                                              ; preds = %143, %146
  call void @llvm.lifetime.start.p0(i64 184, ptr nonnull %3) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #21
  tail call void @init_deps_global() #21
  call void @init_deps(ptr noundef nonnull %3, i8 noundef zeroext 0) #21
  %148 = load ptr, ptr %8, align 8, !tbaa !54
  call void @get_ebb_head_tail(ptr noundef %148, ptr noundef %148, ptr noundef nonnull %4, ptr noundef nonnull %5) #21
  %149 = load ptr, ptr %4, align 8, !tbaa !35
  %150 = load ptr, ptr %5, align 8, !tbaa !35
  call void @sched_analyze(ptr noundef nonnull %3, ptr noundef %149, ptr noundef %150) #21
  %151 = load i32, ptr %68, align 8, !tbaa !63
  %152 = icmp sgt i32 %151, 0
  br i1 %152, label %153, label %392

153:                                              ; preds = %147
  %154 = getelementptr inbounds i8, ptr %6, i64 8
  %155 = getelementptr inbounds i8, ptr %6, i64 16
  %156 = getelementptr inbounds i8, ptr %6, i64 24
  br label %157

157:                                              ; preds = %153, %386
  %158 = phi i64 [ 0, %153 ], [ %387, %386 ]
  %159 = phi i64 [ 1, %153 ], [ %391, %386 ]
  %160 = load ptr, ptr %71, align 8, !tbaa !64
  %161 = getelementptr inbounds %struct.ddg_node, ptr %160, i64 %158
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #21
  %162 = getelementptr inbounds %struct.ddg_node, ptr %160, i64 %158, i32 1
  %163 = load ptr, ptr %162, align 8, !tbaa !71
  %164 = load i32, ptr %163, align 8
  %165 = and i32 %164, 65535
  %166 = add nsw i32 %165, -7
  %167 = icmp ult i32 %166, 4
  br i1 %167, label %168, label %386

168:                                              ; preds = %157
  store i32 3, ptr %6, align 8, !tbaa.struct !73
  store ptr %163, ptr %154, align 8, !tbaa.struct !74
  store ptr @sd_iterator_start.null_link, ptr %155, align 8, !tbaa.struct !75
  store i8 0, ptr %156, align 8, !tbaa.struct !76
  %169 = call fastcc zeroext i8 @sd_iterator_cond(ptr noundef nonnull %6, ptr noundef nonnull %7)
  %170 = icmp eq i8 %169, 0
  br i1 %170, label %305, label %171

171:                                              ; preds = %168, %299
  %172 = load ptr, ptr %7, align 8, !tbaa !35
  %173 = load ptr, ptr %172, align 8, !tbaa !77
  %174 = load i32, ptr %68, align 8, !tbaa !63
  %175 = icmp sgt i32 %174, 0
  br i1 %175, label %176, label %189

176:                                              ; preds = %171
  %177 = load ptr, ptr %71, align 8, !tbaa !64
  %178 = zext nneg i32 %174 to i64
  br label %182

179:                                              ; preds = %182
  %180 = add nuw nsw i64 %183, 1
  %181 = icmp eq i64 %180, %178
  br i1 %181, label %189, label %182, !llvm.loop !79

182:                                              ; preds = %176, %179
  %183 = phi i64 [ 0, %176 ], [ %180, %179 ]
  %184 = getelementptr inbounds %struct.ddg_node, ptr %177, i64 %183, i32 1
  %185 = load ptr, ptr %184, align 8, !tbaa !71
  %186 = icmp eq ptr %185, %173
  br i1 %186, label %187, label %179

187:                                              ; preds = %182
  %188 = getelementptr inbounds %struct.ddg_node, ptr %177, i64 %183
  br label %189

189:                                              ; preds = %179, %171, %187
  %190 = phi ptr [ %188, %187 ], [ null, %171 ], [ null, %179 ]
  %191 = icmp eq ptr %190, null
  br i1 %191, label %299, label %192

192:                                              ; preds = %189
  %193 = getelementptr inbounds %struct.ddg_node, ptr %190, i64 0, i32 1
  %194 = load ptr, ptr %193, align 8, !tbaa !71
  %195 = getelementptr inbounds %struct.rtx_def, ptr %194, i64 1
  %196 = load ptr, ptr %195, align 8, !tbaa !46
  %197 = call fastcc zeroext i8 @rtx_mem_access_p(ptr noundef %196), !range !80
  %198 = icmp eq i8 %197, 0
  br i1 %198, label %205, label %199

199:                                              ; preds = %192
  %200 = load ptr, ptr %162, align 8, !tbaa !71
  %201 = getelementptr inbounds %struct.rtx_def, ptr %200, i64 1
  %202 = load ptr, ptr %201, align 8, !tbaa !46
  %203 = call fastcc zeroext i8 @rtx_mem_access_p(ptr noundef %202), !range !80
  %204 = icmp ne i8 %203, 0
  br label %205

205:                                              ; preds = %199, %192
  %206 = phi i1 [ false, %192 ], [ %204, %199 ]
  %207 = select i1 %206, i32 2, i32 1
  %208 = load i32, ptr %190, align 8, !tbaa !66
  %209 = load i32, ptr %161, align 8, !tbaa !66
  %210 = icmp slt i32 %208, %209
  br i1 %210, label %212, label %211

211:                                              ; preds = %205
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 160, ptr noundef nonnull @.str.1) #21
  br label %212

212:                                              ; preds = %205, %211
  %213 = getelementptr inbounds %struct._dep, ptr %172, i64 0, i32 2
  %214 = load i32, ptr %213, align 8, !tbaa !81
  %215 = icmp eq i32 %214, 12
  %216 = icmp eq i32 %214, 11
  %217 = zext i1 %216 to i32
  %218 = select i1 %215, i32 2, i32 %217
  %219 = load ptr, ptr %162, align 8, !tbaa !71
  %220 = load i32, ptr %219, align 8
  %221 = and i32 %220, 65535
  %222 = icmp ne i32 %221, 7
  %223 = or i1 %215, %222
  br i1 %223, label %225, label %224

224:                                              ; preds = %212
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 169, ptr noundef nonnull @.str.1) #21
  br label %225

225:                                              ; preds = %224, %212
  %226 = load ptr, ptr %193, align 8, !tbaa !71
  %227 = load i32, ptr %226, align 8
  %228 = and i32 %227, 65535
  %229 = icmp ne i32 %228, 7
  %230 = or i1 %215, %229
  br i1 %230, label %232, label %231

231:                                              ; preds = %225
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 170, ptr noundef nonnull @.str.1) #21
  br label %232

232:                                              ; preds = %231, %225
  %233 = load i32, ptr @flag_modulo_sched_allow_regmoves, align 4, !tbaa !50
  %234 = icmp ne i32 %233, 0
  %235 = and i1 %215, %234
  %236 = xor i1 %235, true
  %237 = or i1 %206, %236
  br i1 %237, label %291, label %238

238:                                              ; preds = %232
  %239 = load ptr, ptr %162, align 8, !tbaa !71
  %240 = load i32, ptr %239, align 8
  %241 = and i32 %240, 65535
  %242 = add nsw i32 %241, -7
  %243 = icmp ult i32 %242, 4
  br i1 %243, label %244, label %252

244:                                              ; preds = %238
  %245 = getelementptr inbounds %struct.rtx_def, ptr %239, i64 1
  %246 = load ptr, ptr %245, align 8, !tbaa !46
  %247 = load i32, ptr %246, align 8
  %248 = and i32 %247, 65535
  %249 = icmp eq i32 %248, 23
  br i1 %249, label %252, label %250

250:                                              ; preds = %244
  %251 = call ptr @single_set_2(ptr noundef nonnull %239, ptr noundef nonnull %246) #21
  br label %252

252:                                              ; preds = %250, %244, %238
  %253 = phi ptr [ %251, %250 ], [ null, %238 ], [ %246, %244 ]
  %254 = icmp eq ptr %253, null
  br i1 %254, label %291, label %255

255:                                              ; preds = %252
  %256 = getelementptr inbounds %struct.rtx_def, ptr %253, i64 0, i32 1
  %257 = load ptr, ptr %256, align 8, !tbaa !46
  %258 = load i32, ptr %257, align 8
  %259 = and i32 %258, 65535
  %260 = icmp eq i32 %259, 37
  br i1 %260, label %261, label %291

261:                                              ; preds = %255
  %262 = getelementptr inbounds %struct.rtx_def, ptr %257, i64 0, i32 1
  %263 = load i32, ptr %262, align 8, !tbaa !46
  %264 = load ptr, ptr %8, align 8, !tbaa !54
  %265 = getelementptr inbounds %struct.basic_block_def, ptr %264, i64 0, i32 9
  %266 = load i32, ptr %265, align 8, !tbaa !82
  %267 = load ptr, ptr @df, align 8, !tbaa !35
  %268 = getelementptr inbounds %struct.df, ptr %267, i64 0, i32 1, i64 3
  %269 = load ptr, ptr %268, align 8, !tbaa !35
  %270 = getelementptr inbounds %struct.dataflow, ptr %269, i64 0, i32 2
  %271 = load i32, ptr %270, align 8, !tbaa !84
  %272 = icmp ugt i32 %271, %266
  br i1 %272, label %273, label %279

273:                                              ; preds = %261
  %274 = getelementptr inbounds %struct.dataflow, ptr %269, i64 0, i32 1
  %275 = load ptr, ptr %274, align 8, !tbaa !86
  %276 = zext i32 %266 to i64
  %277 = getelementptr inbounds ptr, ptr %275, i64 %276
  %278 = load ptr, ptr %277, align 8, !tbaa !35
  br label %279

279:                                              ; preds = %273, %261
  %280 = phi ptr [ %278, %273 ], [ null, %261 ]
  %281 = call ptr @df_bb_regno_first_def_find(ptr noundef %264, i32 noundef %263) #21
  %282 = icmp eq ptr %281, null
  br i1 %282, label %283, label %284

283:                                              ; preds = %279
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 193, ptr noundef nonnull @.str.1) #21
  br label %284

284:                                              ; preds = %283, %279
  %285 = getelementptr inbounds %struct.df_rd_bb_info, ptr %280, i64 0, i32 2
  %286 = load ptr, ptr %285, align 8, !tbaa !87
  %287 = getelementptr inbounds %struct.df_base_ref, ptr %281, i64 0, i32 7
  %288 = load i32, ptr %287, align 4, !tbaa !46
  %289 = call i32 @bitmap_bit_p(ptr noundef %286, i32 noundef %288) #21
  %290 = icmp eq i32 %289, 0
  br i1 %290, label %291, label %299

291:                                              ; preds = %284, %255, %252, %232
  %292 = call i32 @dep_cost(ptr noundef nonnull %172) #21
  %293 = call ptr @xmalloc(i64 noundef 56) #21
  store ptr %190, ptr %293, align 8, !tbaa !89
  %294 = getelementptr inbounds %struct.ddg_edge, ptr %293, i64 0, i32 1
  store ptr %161, ptr %294, align 8, !tbaa !91
  %295 = getelementptr inbounds %struct.ddg_edge, ptr %293, i64 0, i32 2
  store i32 %218, ptr %295, align 8, !tbaa !92
  %296 = getelementptr inbounds %struct.ddg_edge, ptr %293, i64 0, i32 3
  store i32 %207, ptr %296, align 4, !tbaa !93
  %297 = getelementptr inbounds %struct.ddg_edge, ptr %293, i64 0, i32 4
  store i32 %292, ptr %297, align 8, !tbaa !94
  %298 = getelementptr inbounds %struct.ddg_edge, ptr %293, i64 0, i32 5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %298, i8 0, i64 28, i1 false)
  call fastcc void @add_edge_to_ddg(ptr noundef nonnull %293)
  br label %299

299:                                              ; preds = %291, %284, %189
  %300 = load ptr, ptr %155, align 8, !tbaa !95
  %301 = load ptr, ptr %300, align 8, !tbaa !35
  %302 = getelementptr inbounds %struct._dep_link, ptr %301, i64 0, i32 1
  store ptr %302, ptr %155, align 8, !tbaa !95
  %303 = call fastcc zeroext i8 @sd_iterator_cond(ptr noundef nonnull %6, ptr noundef nonnull %7)
  %304 = icmp eq i8 %303, 0
  br i1 %304, label %305, label %171, !llvm.loop !97

305:                                              ; preds = %299, %168
  %306 = load ptr, ptr %162, align 8, !tbaa !71
  %307 = getelementptr inbounds %struct.rtx_def, ptr %306, i64 1
  %308 = load ptr, ptr %307, align 8, !tbaa !46
  %309 = call fastcc zeroext i8 @rtx_mem_access_p(ptr noundef %308), !range !80
  %310 = icmp eq i8 %309, 0
  br i1 %310, label %386, label %311

311:                                              ; preds = %305
  %312 = getelementptr inbounds %struct.ddg_node, ptr %160, i64 %158, i32 5
  br label %313

313:                                              ; preds = %311, %383
  %314 = phi i64 [ 0, %311 ], [ %384, %383 ]
  %315 = load ptr, ptr %71, align 8, !tbaa !64
  %316 = getelementptr inbounds %struct.ddg_node, ptr %315, i64 %314
  %317 = getelementptr inbounds %struct.ddg_node, ptr %315, i64 %314, i32 1
  %318 = load ptr, ptr %317, align 8, !tbaa !71
  %319 = load i32, ptr %318, align 8
  %320 = and i32 %319, 65535
  %321 = icmp eq i32 %320, 7
  br i1 %321, label %383, label %322

322:                                              ; preds = %313
  %323 = getelementptr inbounds %struct.rtx_def, ptr %318, i64 1
  %324 = load ptr, ptr %323, align 8, !tbaa !46
  %325 = call fastcc zeroext i8 @rtx_mem_access_p(ptr noundef %324), !range !80
  %326 = icmp eq i8 %325, 0
  br i1 %326, label %383, label %327

327:                                              ; preds = %322
  %328 = load ptr, ptr %312, align 8, !tbaa !68
  %329 = lshr i64 %314, 6
  %330 = and i64 %329, 67108863
  %331 = getelementptr inbounds %struct.simple_bitmap_def, ptr %328, i64 0, i32 3, i64 %330
  %332 = load i64, ptr %331, align 8, !tbaa !98
  %333 = and i64 %314, 63
  %334 = shl nuw i64 1, %333
  %335 = and i64 %332, %334
  %336 = icmp eq i64 %335, 0
  br i1 %336, label %337, label %383

337:                                              ; preds = %327
  %338 = load ptr, ptr %162, align 8, !tbaa !71
  %339 = call zeroext i8 @insn_alias_sets_conflict_p(ptr noundef %338, ptr noundef nonnull %318) #21
  %340 = icmp eq i8 %339, 0
  br i1 %340, label %383, label %341

341:                                              ; preds = %337
  %342 = load ptr, ptr %162, align 8, !tbaa !71
  store i1 false, ptr @mem_ref_p, align 1
  %343 = getelementptr inbounds %struct.rtx_def, ptr %342, i64 1
  %344 = load ptr, ptr %343, align 8, !tbaa !46
  call void @note_stores(ptr noundef %344, ptr noundef nonnull @mark_mem_store, ptr noundef null) #21
  %345 = load i1, ptr @mem_ref_p, align 1
  %346 = load ptr, ptr %317, align 8, !tbaa !71
  store i1 false, ptr @mem_ref_p, align 1
  %347 = getelementptr inbounds %struct.rtx_def, ptr %346, i64 1
  call void @note_uses(ptr noundef nonnull %347, ptr noundef nonnull @mark_mem_use_1, ptr noundef null) #21
  %348 = load i1, ptr @mem_ref_p, align 1
  br i1 %345, label %349, label %366

349:                                              ; preds = %341
  br i1 %348, label %350, label %356

350:                                              ; preds = %349
  %351 = load ptr, ptr %317, align 8, !tbaa !71
  %352 = load i32, ptr %351, align 8
  %353 = and i32 %352, 65535
  %354 = icmp eq i32 %353, 7
  %355 = select i1 %354, i32 2, i32 0
  call fastcc void @create_ddg_dep_no_link(ptr noundef nonnull %8, ptr noundef %161, ptr noundef %316, i32 noundef %355, i32 noundef 2)
  br label %383

356:                                              ; preds = %349
  %357 = load i32, ptr %161, align 8, !tbaa !66
  %358 = load i32, ptr %316, align 8, !tbaa !66
  %359 = icmp eq i32 %357, %358
  br i1 %359, label %383, label %360

360:                                              ; preds = %356
  %361 = load ptr, ptr %317, align 8, !tbaa !71
  %362 = load i32, ptr %361, align 8
  %363 = and i32 %362, 65535
  %364 = icmp eq i32 %363, 7
  %365 = select i1 %364, i32 2, i32 1
  call fastcc void @create_ddg_dep_no_link(ptr noundef nonnull %8, ptr noundef nonnull %161, ptr noundef nonnull %316, i32 noundef %365, i32 noundef 2)
  br label %383

366:                                              ; preds = %341
  br i1 %348, label %383, label %367

367:                                              ; preds = %366
  %368 = load i32, ptr %161, align 8, !tbaa !66
  %369 = load i32, ptr %316, align 8, !tbaa !66
  %370 = icmp eq i32 %368, %369
  br i1 %370, label %383, label %371

371:                                              ; preds = %367
  call fastcc void @create_ddg_dep_no_link(ptr noundef nonnull %8, ptr noundef nonnull %161, ptr noundef nonnull %316, i32 noundef 2, i32 noundef 2)
  %372 = load ptr, ptr %162, align 8, !tbaa !71
  %373 = load i32, ptr %372, align 8
  %374 = and i32 %373, 65535
  %375 = icmp eq i32 %374, 7
  br i1 %375, label %381, label %376

376:                                              ; preds = %371
  %377 = load ptr, ptr %317, align 8, !tbaa !71
  %378 = load i32, ptr %377, align 8
  %379 = and i32 %378, 65535
  %380 = icmp eq i32 %379, 7
  br i1 %380, label %381, label %382

381:                                              ; preds = %376, %371
  call fastcc void @create_ddg_dep_no_link(ptr noundef nonnull %8, ptr noundef nonnull %316, ptr noundef nonnull %161, i32 noundef 2, i32 noundef 2)
  br label %383

382:                                              ; preds = %376
  call fastcc void @create_ddg_dep_no_link(ptr noundef nonnull %8, ptr noundef nonnull %316, ptr noundef nonnull %161, i32 noundef 0, i32 noundef 2)
  br label %383

383:                                              ; preds = %382, %381, %367, %366, %360, %356, %350, %337, %327, %322, %313
  %384 = add nuw nsw i64 %314, 1
  %385 = icmp eq i64 %384, %159
  br i1 %385, label %386, label %313, !llvm.loop !99

386:                                              ; preds = %383, %305, %157
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #21
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #21
  %387 = add nuw nsw i64 %158, 1
  %388 = load i32, ptr %68, align 8, !tbaa !63
  %389 = sext i32 %388 to i64
  %390 = icmp slt i64 %387, %389
  %391 = add nuw nsw i64 %159, 1
  br i1 %390, label %157, label %392, !llvm.loop !100

392:                                              ; preds = %386, %147
  call void @finish_deps_global() #21
  call void @free_deps(ptr noundef nonnull %3) #21
  %393 = load ptr, ptr %4, align 8, !tbaa !35
  %394 = load ptr, ptr %5, align 8, !tbaa !35
  call void @sched_free_deps(ptr noundef %393, ptr noundef %394, i8 noundef zeroext 0) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(i64 184, ptr nonnull %3) #21
  %395 = load ptr, ptr %8, align 8, !tbaa !54
  %396 = getelementptr inbounds %struct.basic_block_def, ptr %395, i64 0, i32 9
  %397 = load i32, ptr %396, align 8, !tbaa !82
  %398 = load ptr, ptr @df, align 8, !tbaa !35
  %399 = getelementptr inbounds %struct.df, ptr %398, i64 0, i32 1, i64 3
  %400 = load ptr, ptr %399, align 8, !tbaa !35
  %401 = getelementptr inbounds %struct.dataflow, ptr %400, i64 0, i32 2
  %402 = load i32, ptr %401, align 8, !tbaa !84
  %403 = icmp ugt i32 %402, %397
  call void @llvm.assume(i1 %403)
  %404 = getelementptr inbounds %struct.dataflow, ptr %400, i64 0, i32 1
  %405 = load ptr, ptr %404, align 8, !tbaa !86
  %406 = zext i32 %397 to i64
  %407 = getelementptr inbounds ptr, ptr %405, i64 %406
  %408 = load ptr, ptr %407, align 8, !tbaa !35
  %409 = getelementptr inbounds %struct.df_rd_bb_info, ptr %408, i64 0, i32 2
  %410 = load ptr, ptr %409, align 8, !tbaa !87
  %411 = load ptr, ptr %410, align 8, !tbaa !101
  %412 = icmp eq ptr %411, null
  %413 = select i1 %412, ptr @bitmap_zero_bits, ptr %411
  %414 = getelementptr inbounds %struct.bitmap_element_def, ptr %413, i64 0, i32 2
  %415 = load i32, ptr %414, align 8, !tbaa !103
  %416 = shl i32 %415, 7
  %417 = getelementptr inbounds %struct.bitmap_element_def, ptr %413, i64 0, i32 3
  %418 = load i64, ptr %417, align 8, !tbaa !98
  %419 = icmp eq i64 %418, 0
  %420 = zext i1 %419 to i32
  %421 = or disjoint i32 %416, %420
  br label %422

422:                                              ; preds = %636, %392
  %423 = phi i64 [ %418, %392 ], [ %637, %636 ]
  %424 = phi i32 [ 0, %392 ], [ %479, %636 ]
  %425 = phi i32 [ %421, %392 ], [ %638, %636 ]
  %426 = phi ptr [ %413, %392 ], [ %481, %636 ]
  %427 = icmp eq i64 %423, 0
  br i1 %427, label %442, label %428

428:                                              ; preds = %456, %422
  %429 = phi i64 [ %423, %422 ], [ %461, %456 ]
  %430 = phi i32 [ %424, %422 ], [ %457, %456 ]
  %431 = phi i32 [ %425, %422 ], [ %458, %456 ]
  %432 = phi ptr [ %426, %422 ], [ %449, %456 ]
  %433 = and i64 %429, 1
  %434 = icmp eq i64 %433, 0
  br i1 %434, label %435, label %477

435:                                              ; preds = %428, %435
  %436 = phi i32 [ %439, %435 ], [ %431, %428 ]
  %437 = phi i64 [ %438, %435 ], [ %429, %428 ]
  %438 = lshr exact i64 %437, 1
  %439 = add i32 %436, 1
  %440 = and i64 %437, 2
  %441 = icmp eq i64 %440, 0
  br i1 %441, label %435, label %477, !llvm.loop !105

442:                                              ; preds = %422
  %443 = add i32 %425, 63
  %444 = and i32 %443, -64
  %445 = add i32 %424, 1
  br label %446

446:                                              ; preds = %473, %442
  %447 = phi i64 [ %423, %442 ], [ %468, %473 ]
  %448 = phi i32 [ %444, %442 ], [ %476, %473 ]
  %449 = phi ptr [ %426, %442 ], [ %471, %473 ]
  %450 = phi i32 [ %445, %442 ], [ 0, %473 ]
  %451 = icmp eq i32 %450, 2
  br i1 %451, label %467, label %452

452:                                              ; preds = %446
  %453 = add i32 %448, 128
  %454 = shl i32 %450, 6
  %455 = sub i32 %453, %454
  br label %456

456:                                              ; preds = %452, %463
  %457 = phi i32 [ %465, %463 ], [ %450, %452 ]
  %458 = phi i32 [ %464, %463 ], [ %448, %452 ]
  %459 = zext i32 %457 to i64
  %460 = getelementptr inbounds %struct.bitmap_element_def, ptr %449, i64 0, i32 3, i64 %459
  %461 = load i64, ptr %460, align 8, !tbaa !98
  %462 = icmp eq i64 %461, 0
  br i1 %462, label %463, label %428

463:                                              ; preds = %456
  %464 = add i32 %458, 64
  %465 = add i32 %457, 1
  %466 = icmp eq i32 %465, 2
  br i1 %466, label %467, label %456, !llvm.loop !106

467:                                              ; preds = %463, %446
  %468 = phi i64 [ %447, %446 ], [ %461, %463 ]
  %469 = phi i32 [ %448, %446 ], [ %455, %463 ]
  %470 = phi i32 [ %450, %446 ], [ 2, %463 ]
  %471 = load ptr, ptr %449, align 8, !tbaa !107
  %472 = icmp eq ptr %471, null
  br i1 %472, label %477, label %473

473:                                              ; preds = %467
  %474 = getelementptr inbounds %struct.bitmap_element_def, ptr %471, i64 0, i32 2
  %475 = load i32, ptr %474, align 8, !tbaa !103
  %476 = shl i32 %475, 7
  br label %446, !llvm.loop !108

477:                                              ; preds = %467, %435, %428
  %478 = phi i64 [ %429, %428 ], [ %438, %435 ], [ %468, %467 ]
  %479 = phi i32 [ %430, %428 ], [ %430, %435 ], [ %470, %467 ]
  %480 = phi i32 [ %431, %428 ], [ %439, %435 ], [ %469, %467 ]
  %481 = phi ptr [ %432, %428 ], [ %432, %435 ], [ %471, %467 ]
  %482 = phi i1 [ false, %428 ], [ false, %435 ], [ true, %467 ]
  br i1 %482, label %639, label %483

483:                                              ; preds = %477
  %484 = load ptr, ptr @df, align 8, !tbaa !35
  %485 = getelementptr inbounds %struct.df, ptr %484, i64 0, i32 3
  %486 = load ptr, ptr %485, align 8, !tbaa !109
  %487 = zext i32 %480 to i64
  %488 = getelementptr inbounds ptr, ptr %486, i64 %487
  %489 = load ptr, ptr %488, align 8, !tbaa !35
  %490 = getelementptr inbounds %struct.df_base_ref, ptr %489, i64 0, i32 6
  %491 = load i32, ptr %490, align 8, !tbaa !46
  %492 = getelementptr inbounds %struct.df_base_ref, ptr %489, i64 0, i32 3
  %493 = load ptr, ptr %492, align 8, !tbaa !46
  %494 = load ptr, ptr %493, align 8, !tbaa !112
  %495 = load i32, ptr %68, align 8, !tbaa !63
  %496 = icmp sgt i32 %495, 0
  br i1 %496, label %497, label %510

497:                                              ; preds = %483
  %498 = load ptr, ptr %71, align 8, !tbaa !64
  %499 = zext nneg i32 %495 to i64
  br label %503

500:                                              ; preds = %503
  %501 = add nuw nsw i64 %504, 1
  %502 = icmp eq i64 %501, %499
  br i1 %502, label %510, label %503, !llvm.loop !79

503:                                              ; preds = %497, %500
  %504 = phi i64 [ 0, %497 ], [ %501, %500 ]
  %505 = getelementptr inbounds %struct.ddg_node, ptr %498, i64 %504, i32 1
  %506 = load ptr, ptr %505, align 8, !tbaa !71
  %507 = icmp eq ptr %506, %494
  br i1 %507, label %508, label %500

508:                                              ; preds = %503
  %509 = getelementptr inbounds %struct.ddg_node, ptr %498, i64 %504
  br label %510

510:                                              ; preds = %500, %483, %508
  %511 = phi ptr [ %509, %508 ], [ null, %483 ], [ null, %500 ]
  %512 = load ptr, ptr %8, align 8, !tbaa !54
  %513 = call ptr @df_bb_regno_first_def_find(ptr noundef %512, i32 noundef %491) #21
  %514 = icmp eq ptr %511, null
  br i1 %514, label %515, label %516

515:                                              ; preds = %510
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 261, ptr noundef nonnull @.str.1) #21
  br label %516

516:                                              ; preds = %515, %510
  %517 = icmp eq ptr %513, null
  br i1 %517, label %518, label %519

518:                                              ; preds = %516
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 262, ptr noundef nonnull @.str.1) #21
  br label %519

519:                                              ; preds = %518, %516
  %520 = getelementptr inbounds %struct.df_base_ref, ptr %489, i64 0, i32 2
  %521 = load ptr, ptr %520, align 8, !tbaa !46
  %522 = icmp eq ptr %521, null
  br i1 %522, label %603, label %523

523:                                              ; preds = %519
  %524 = getelementptr inbounds %struct.df_base_ref, ptr %513, i64 0, i32 3
  %525 = getelementptr inbounds %struct.df_base_ref, ptr %489, i64 0, i32 7
  %526 = getelementptr inbounds %struct.df_base_ref, ptr %513, i64 0, i32 7
  br label %527

527:                                              ; preds = %523, %598
  %528 = phi ptr [ %521, %523 ], [ %601, %598 ]
  %529 = phi i32 [ 0, %523 ], [ %599, %598 ]
  %530 = load ptr, ptr %528, align 8, !tbaa !114
  %531 = getelementptr inbounds %struct.df_base_ref, ptr %530, i64 0, i32 3
  %532 = load ptr, ptr %531, align 8, !tbaa !46
  %533 = load ptr, ptr %532, align 8, !tbaa !112
  %534 = getelementptr inbounds %struct.rtx_def, ptr %533, i64 0, i32 1, i32 0, i32 1
  %535 = load ptr, ptr %534, align 8, !tbaa !46
  %536 = load ptr, ptr %8, align 8, !tbaa !54
  %537 = icmp eq ptr %535, %536
  br i1 %537, label %538, label %598

538:                                              ; preds = %527
  %539 = load i32, ptr %68, align 8, !tbaa !63
  %540 = icmp sgt i32 %539, 0
  br i1 %540, label %541, label %554

541:                                              ; preds = %538
  %542 = load ptr, ptr %71, align 8, !tbaa !64
  %543 = zext nneg i32 %539 to i64
  br label %547

544:                                              ; preds = %547
  %545 = add nuw nsw i64 %548, 1
  %546 = icmp eq i64 %545, %543
  br i1 %546, label %554, label %547, !llvm.loop !79

547:                                              ; preds = %541, %544
  %548 = phi i64 [ 0, %541 ], [ %545, %544 ]
  %549 = getelementptr inbounds %struct.ddg_node, ptr %542, i64 %548, i32 1
  %550 = load ptr, ptr %549, align 8, !tbaa !71
  %551 = icmp eq ptr %550, %533
  br i1 %551, label %552, label %544

552:                                              ; preds = %547
  %553 = getelementptr inbounds %struct.ddg_node, ptr %542, i64 %548
  br label %554

554:                                              ; preds = %544, %538, %552
  %555 = phi ptr [ %553, %552 ], [ null, %538 ], [ null, %544 ]
  %556 = icmp eq ptr %555, null
  br i1 %556, label %557, label %558

557:                                              ; preds = %554
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 279, ptr noundef nonnull @.str.1) #21
  br label %558

558:                                              ; preds = %557, %554
  %559 = load i32, ptr %555, align 8, !tbaa !66
  %560 = load i32, ptr %511, align 8, !tbaa !66
  %561 = icmp sgt i32 %559, %560
  %562 = load i32, ptr %533, align 8
  %563 = and i32 %562, 65535
  %564 = icmp eq i32 %563, 7
  br i1 %561, label %567, label %565

565:                                              ; preds = %558
  %566 = select i1 %564, i32 2, i32 0
  call fastcc void @create_ddg_dep_no_link(ptr noundef nonnull %8, ptr noundef nonnull %511, ptr noundef nonnull %555, i32 noundef %566, i32 noundef 1)
  br label %598

567:                                              ; preds = %558
  br i1 %564, label %598, label %568

568:                                              ; preds = %567
  %569 = load ptr, ptr %524, align 8, !tbaa !46
  %570 = load ptr, ptr %569, align 8, !tbaa !112
  %571 = load i32, ptr %68, align 8, !tbaa !63
  %572 = icmp sgt i32 %571, 0
  br i1 %572, label %573, label %586

573:                                              ; preds = %568
  %574 = load ptr, ptr %71, align 8, !tbaa !64
  %575 = zext nneg i32 %571 to i64
  br label %579

576:                                              ; preds = %579
  %577 = add nuw nsw i64 %580, 1
  %578 = icmp eq i64 %577, %575
  br i1 %578, label %586, label %579, !llvm.loop !79

579:                                              ; preds = %573, %576
  %580 = phi i64 [ 0, %573 ], [ %577, %576 ]
  %581 = getelementptr inbounds %struct.ddg_node, ptr %574, i64 %580, i32 1
  %582 = load ptr, ptr %581, align 8, !tbaa !71
  %583 = icmp eq ptr %582, %570
  br i1 %583, label %584, label %576

584:                                              ; preds = %579
  %585 = getelementptr inbounds %struct.ddg_node, ptr %574, i64 %580
  br label %586

586:                                              ; preds = %576, %568, %584
  %587 = phi ptr [ %585, %584 ], [ null, %568 ], [ null, %576 ]
  %588 = icmp eq ptr %587, null
  br i1 %588, label %589, label %590

589:                                              ; preds = %586
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 301, ptr noundef nonnull @.str.1) #21
  br label %590

590:                                              ; preds = %589, %586
  %591 = load i32, ptr %525, align 4, !tbaa !46
  %592 = load i32, ptr %526, align 4, !tbaa !46
  %593 = icmp eq i32 %591, %592
  %594 = load i32, ptr @flag_modulo_sched_allow_regmoves, align 4
  %595 = icmp ne i32 %594, 0
  %596 = select i1 %593, i1 %595, i1 false
  br i1 %596, label %598, label %597

597:                                              ; preds = %590
  call fastcc void @create_ddg_dep_no_link(ptr noundef nonnull %8, ptr noundef nonnull %555, ptr noundef %587, i32 noundef 2, i32 noundef 1)
  br label %598

598:                                              ; preds = %597, %590, %567, %565, %527
  %599 = phi i32 [ %529, %527 ], [ 1, %597 ], [ 1, %590 ], [ 1, %567 ], [ 1, %565 ]
  %600 = getelementptr inbounds %struct.df_link, ptr %528, i64 0, i32 1
  %601 = load ptr, ptr %600, align 8, !tbaa !46
  %602 = icmp eq ptr %601, null
  br i1 %602, label %603, label %527, !llvm.loop !116

603:                                              ; preds = %598, %519
  %604 = phi i32 [ 0, %519 ], [ %599, %598 ]
  %605 = icmp eq i32 %604, 0
  br i1 %605, label %606, label %636

606:                                              ; preds = %603
  %607 = getelementptr inbounds %struct.df_base_ref, ptr %489, i64 0, i32 7
  %608 = load i32, ptr %607, align 4, !tbaa !46
  %609 = getelementptr inbounds %struct.df_base_ref, ptr %513, i64 0, i32 7
  %610 = load i32, ptr %609, align 4, !tbaa !46
  %611 = icmp eq i32 %608, %610
  br i1 %611, label %636, label %612

612:                                              ; preds = %606
  %613 = getelementptr inbounds %struct.df_base_ref, ptr %513, i64 0, i32 3
  %614 = load ptr, ptr %613, align 8, !tbaa !46
  %615 = load ptr, ptr %614, align 8, !tbaa !112
  %616 = load i32, ptr %68, align 8, !tbaa !63
  %617 = icmp sgt i32 %616, 0
  br i1 %617, label %618, label %631

618:                                              ; preds = %612
  %619 = load ptr, ptr %71, align 8, !tbaa !64
  %620 = zext nneg i32 %616 to i64
  br label %624

621:                                              ; preds = %624
  %622 = add nuw nsw i64 %625, 1
  %623 = icmp eq i64 %622, %620
  br i1 %623, label %631, label %624, !llvm.loop !79

624:                                              ; preds = %618, %621
  %625 = phi i64 [ 0, %618 ], [ %622, %621 ]
  %626 = getelementptr inbounds %struct.ddg_node, ptr %619, i64 %625, i32 1
  %627 = load ptr, ptr %626, align 8, !tbaa !71
  %628 = icmp eq ptr %627, %615
  br i1 %628, label %629, label %621

629:                                              ; preds = %624
  %630 = getelementptr inbounds %struct.ddg_node, ptr %619, i64 %625
  br label %631

631:                                              ; preds = %621, %612, %629
  %632 = phi ptr [ %630, %629 ], [ null, %612 ], [ null, %621 ]
  %633 = icmp eq ptr %632, null
  br i1 %633, label %634, label %635

634:                                              ; preds = %631
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 325, ptr noundef nonnull @.str.1) #21
  br label %635

635:                                              ; preds = %634, %631
  call fastcc void @create_ddg_dep_no_link(ptr noundef nonnull %8, ptr noundef %511, ptr noundef %632, i32 noundef 1, i32 noundef 1)
  br label %636

636:                                              ; preds = %635, %606, %603
  %637 = lshr i64 %478, 1
  %638 = add i32 %480, 1
  br label %422, !llvm.loop !117

639:                                              ; preds = %477, %66
  %640 = phi ptr [ null, %66 ], [ %8, %477 ]
  ret ptr %640
}

declare ptr @xcalloc(i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #10

declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @sbitmap_alloc(i32 noundef) local_unnamed_addr #3

declare void @sbitmap_zero(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @free_ddg(ptr noundef %0) local_unnamed_addr #9 !prof !34 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %49, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.ddg, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !63
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %39

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.ddg, ptr %0, i64 0, i32 5
  br label %9

9:                                                ; preds = %7, %20
  %10 = phi i64 [ 0, %7 ], [ %35, %20 ]
  %11 = load ptr, ptr %8, align 8, !tbaa !64
  %12 = getelementptr inbounds %struct.ddg_node, ptr %11, i64 %10, i32 4
  %13 = load ptr, ptr %12, align 8, !tbaa !118
  %14 = icmp eq ptr %13, null
  br i1 %14, label %20, label %15

15:                                               ; preds = %9, %15
  %16 = phi ptr [ %18, %15 ], [ %13, %9 ]
  %17 = getelementptr inbounds %struct.ddg_edge, ptr %16, i64 0, i32 7
  %18 = load ptr, ptr %17, align 8, !tbaa !119
  tail call void @free(ptr noundef %16)
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %15, !llvm.loop !120

20:                                               ; preds = %15, %9
  %21 = load ptr, ptr %8, align 8, !tbaa !64
  %22 = getelementptr inbounds %struct.ddg_node, ptr %21, i64 %10, i32 5
  %23 = load ptr, ptr %22, align 8, !tbaa !68
  %24 = load ptr, ptr %23, align 8, !tbaa !121
  tail call void @free(ptr noundef %24)
  %25 = load ptr, ptr %8, align 8, !tbaa !64
  %26 = getelementptr inbounds %struct.ddg_node, ptr %25, i64 %10, i32 5
  %27 = load ptr, ptr %26, align 8, !tbaa !68
  tail call void @free(ptr noundef %27)
  %28 = load ptr, ptr %8, align 8, !tbaa !64
  %29 = getelementptr inbounds %struct.ddg_node, ptr %28, i64 %10, i32 6
  %30 = load ptr, ptr %29, align 8, !tbaa !69
  %31 = load ptr, ptr %30, align 8, !tbaa !121
  tail call void @free(ptr noundef %31)
  %32 = load ptr, ptr %8, align 8, !tbaa !64
  %33 = getelementptr inbounds %struct.ddg_node, ptr %32, i64 %10, i32 6
  %34 = load ptr, ptr %33, align 8, !tbaa !69
  tail call void @free(ptr noundef %34)
  %35 = add nuw nsw i64 %10, 1
  %36 = load i32, ptr %4, align 8, !tbaa !63
  %37 = sext i32 %36 to i64
  %38 = icmp slt i64 %35, %37
  br i1 %38, label %9, label %39, !llvm.loop !123

39:                                               ; preds = %20, %3
  %40 = getelementptr inbounds %struct.ddg, ptr %0, i64 0, i32 8
  %41 = load i32, ptr %40, align 4, !tbaa !124
  %42 = icmp sgt i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.ddg, ptr %0, i64 0, i32 9
  %45 = load ptr, ptr %44, align 8, !tbaa !125
  tail call void @free(ptr noundef %45)
  br label %46

46:                                               ; preds = %43, %39
  %47 = getelementptr inbounds %struct.ddg, ptr %0, i64 0, i32 5
  %48 = load ptr, ptr %47, align 8, !tbaa !64
  tail call void @free(ptr noundef %48)
  tail call void @free(ptr noundef %0)
  br label %49

49:                                               ; preds = %1, %46
  ret void
}

; Function Attrs: cold nofree nounwind uwtable
define dso_local void @print_ddg_edge(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #11 !prof !34 {
  %3 = getelementptr inbounds %struct.ddg_edge, ptr %1, i64 0, i32 2
  %4 = load i32, ptr %3, align 8, !tbaa !92
  %5 = icmp eq i32 %4, 2
  %6 = select i1 %5, i32 65, i32 84
  %7 = icmp eq i32 %4, 1
  %8 = select i1 %7, i32 79, i32 %6
  %9 = load ptr, ptr %1, align 8, !tbaa !89
  %10 = getelementptr inbounds %struct.ddg_node, ptr %9, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !71
  %12 = getelementptr inbounds %struct.rtx_def, ptr %11, i64 0, i32 1
  %13 = load i32, ptr %12, align 8, !tbaa !46
  %14 = getelementptr inbounds %struct.ddg_edge, ptr %1, i64 0, i32 4
  %15 = load i32, ptr %14, align 8, !tbaa !94
  %16 = getelementptr inbounds %struct.ddg_edge, ptr %1, i64 0, i32 5
  %17 = load i32, ptr %16, align 4, !tbaa !126
  %18 = getelementptr inbounds %struct.ddg_edge, ptr %1, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !91
  %20 = getelementptr inbounds %struct.ddg_node, ptr %19, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !71
  %22 = getelementptr inbounds %struct.rtx_def, ptr %21, i64 0, i32 1
  %23 = load i32, ptr %22, align 8, !tbaa !46
  %24 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.2, i32 noundef %13, i32 noundef %8, i32 noundef %15, i32 noundef %17, i32 noundef %23)
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #1

; Function Attrs: cold nounwind uwtable
define dso_local void @print_ddg(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #9 !prof !34 {
  %3 = getelementptr inbounds %struct.ddg, ptr %1, i64 0, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !63
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %6, label %89

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.ddg, ptr %1, i64 0, i32 5
  br label %8

8:                                                ; preds = %6, %83
  %9 = phi i64 [ 0, %6 ], [ %85, %83 ]
  %10 = load ptr, ptr %7, align 8, !tbaa !64
  %11 = getelementptr inbounds %struct.ddg_node, ptr %10, i64 %9
  %12 = load i32, ptr %11, align 8, !tbaa !66
  %13 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.3, i32 noundef %12)
  %14 = load ptr, ptr %7, align 8, !tbaa !64
  %15 = getelementptr inbounds %struct.ddg_node, ptr %14, i64 %9, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !71
  %17 = tail call i32 @print_rtl_single(ptr noundef %0, ptr noundef %16) #21
  %18 = tail call i64 @fwrite(ptr nonnull @.str.4, i64 10, i64 1, ptr %0)
  %19 = load ptr, ptr %7, align 8, !tbaa !64
  %20 = getelementptr inbounds %struct.ddg_node, ptr %19, i64 %9, i32 4
  %21 = load ptr, ptr %20, align 8, !tbaa !35
  %22 = icmp eq ptr %21, null
  br i1 %22, label %50, label %23

23:                                               ; preds = %8, %23
  %24 = phi ptr [ %48, %23 ], [ %21, %8 ]
  %25 = getelementptr inbounds %struct.ddg_edge, ptr %24, i64 0, i32 2
  %26 = load i32, ptr %25, align 8, !tbaa !92
  %27 = icmp eq i32 %26, 2
  %28 = select i1 %27, i32 65, i32 84
  %29 = icmp eq i32 %26, 1
  %30 = select i1 %29, i32 79, i32 %28
  %31 = load ptr, ptr %24, align 8, !tbaa !89
  %32 = getelementptr inbounds %struct.ddg_node, ptr %31, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !71
  %34 = getelementptr inbounds %struct.rtx_def, ptr %33, i64 0, i32 1
  %35 = load i32, ptr %34, align 8, !tbaa !46
  %36 = getelementptr inbounds %struct.ddg_edge, ptr %24, i64 0, i32 4
  %37 = load i32, ptr %36, align 8, !tbaa !94
  %38 = getelementptr inbounds %struct.ddg_edge, ptr %24, i64 0, i32 5
  %39 = load i32, ptr %38, align 4, !tbaa !126
  %40 = getelementptr inbounds %struct.ddg_edge, ptr %24, i64 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !91
  %42 = getelementptr inbounds %struct.ddg_node, ptr %41, i64 0, i32 1
  %43 = load ptr, ptr %42, align 8, !tbaa !71
  %44 = getelementptr inbounds %struct.rtx_def, ptr %43, i64 0, i32 1
  %45 = load i32, ptr %44, align 8, !tbaa !46
  %46 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.2, i32 noundef %35, i32 noundef %30, i32 noundef %37, i32 noundef %39, i32 noundef %45)
  %47 = getelementptr inbounds %struct.ddg_edge, ptr %24, i64 0, i32 7
  %48 = load ptr, ptr %47, align 8, !tbaa !35
  %49 = icmp eq ptr %48, null
  br i1 %49, label %50, label %23, !llvm.loop !127

50:                                               ; preds = %23, %8
  %51 = tail call i64 @fwrite(ptr nonnull @.str.5, i64 10, i64 1, ptr %0)
  %52 = load ptr, ptr %7, align 8, !tbaa !64
  %53 = getelementptr inbounds %struct.ddg_node, ptr %52, i64 %9, i32 3
  %54 = load ptr, ptr %53, align 8, !tbaa !35
  %55 = icmp eq ptr %54, null
  br i1 %55, label %83, label %56

56:                                               ; preds = %50, %56
  %57 = phi ptr [ %81, %56 ], [ %54, %50 ]
  %58 = getelementptr inbounds %struct.ddg_edge, ptr %57, i64 0, i32 2
  %59 = load i32, ptr %58, align 8, !tbaa !92
  %60 = icmp eq i32 %59, 2
  %61 = select i1 %60, i32 65, i32 84
  %62 = icmp eq i32 %59, 1
  %63 = select i1 %62, i32 79, i32 %61
  %64 = load ptr, ptr %57, align 8, !tbaa !89
  %65 = getelementptr inbounds %struct.ddg_node, ptr %64, i64 0, i32 1
  %66 = load ptr, ptr %65, align 8, !tbaa !71
  %67 = getelementptr inbounds %struct.rtx_def, ptr %66, i64 0, i32 1
  %68 = load i32, ptr %67, align 8, !tbaa !46
  %69 = getelementptr inbounds %struct.ddg_edge, ptr %57, i64 0, i32 4
  %70 = load i32, ptr %69, align 8, !tbaa !94
  %71 = getelementptr inbounds %struct.ddg_edge, ptr %57, i64 0, i32 5
  %72 = load i32, ptr %71, align 4, !tbaa !126
  %73 = getelementptr inbounds %struct.ddg_edge, ptr %57, i64 0, i32 1
  %74 = load ptr, ptr %73, align 8, !tbaa !91
  %75 = getelementptr inbounds %struct.ddg_node, ptr %74, i64 0, i32 1
  %76 = load ptr, ptr %75, align 8, !tbaa !71
  %77 = getelementptr inbounds %struct.rtx_def, ptr %76, i64 0, i32 1
  %78 = load i32, ptr %77, align 8, !tbaa !46
  %79 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.2, i32 noundef %68, i32 noundef %63, i32 noundef %70, i32 noundef %72, i32 noundef %78)
  %80 = getelementptr inbounds %struct.ddg_edge, ptr %57, i64 0, i32 6
  %81 = load ptr, ptr %80, align 8, !tbaa !35
  %82 = icmp eq ptr %81, null
  br i1 %82, label %83, label %56, !llvm.loop !128

83:                                               ; preds = %56, %50
  %84 = tail call i32 @fputc(i32 10, ptr %0)
  %85 = add nuw nsw i64 %9, 1
  %86 = load i32, ptr %3, align 8, !tbaa !63
  %87 = sext i32 %86 to i64
  %88 = icmp slt i64 %85, %87
  br i1 %88, label %8, label %89, !llvm.loop !129

89:                                               ; preds = %83, %2
  ret void
}

declare i32 @print_rtl_single(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @vcg_print_ddg(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #9 !prof !34 {
  %3 = tail call i64 @fwrite(ptr nonnull @.str.7, i64 9, i64 1, ptr %0)
  %4 = getelementptr inbounds %struct.ddg, ptr %1, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !63
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %60

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.ddg, ptr %1, i64 0, i32 5
  br label %9

9:                                                ; preds = %7, %55
  %10 = phi i64 [ 0, %7 ], [ %56, %55 ]
  %11 = load ptr, ptr %8, align 8, !tbaa !64
  %12 = getelementptr inbounds %struct.ddg_node, ptr %11, i64 %10, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !71
  %14 = getelementptr inbounds %struct.rtx_def, ptr %13, i64 0, i32 1
  %15 = load i32, ptr %14, align 8, !tbaa !46
  %16 = trunc i64 %10 to i32
  %17 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.8, i32 noundef %16, i32 noundef %15)
  %18 = load ptr, ptr %8, align 8, !tbaa !64
  %19 = getelementptr inbounds %struct.ddg_node, ptr %18, i64 %10, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !71
  %21 = tail call i32 @print_rtl_single(ptr noundef %0, ptr noundef %20) #21
  %22 = tail call i64 @fwrite(ptr nonnull @.str.9, i64 3, i64 1, ptr %0)
  %23 = load ptr, ptr %8, align 8, !tbaa !64
  %24 = getelementptr inbounds %struct.ddg_node, ptr %23, i64 %10, i32 4
  %25 = load ptr, ptr %24, align 8, !tbaa !35
  %26 = icmp eq ptr %25, null
  br i1 %26, label %55, label %27

27:                                               ; preds = %9
  %28 = trunc i64 %10 to i32
  br label %29

29:                                               ; preds = %27, %45
  %30 = phi ptr [ %53, %45 ], [ %25, %27 ]
  %31 = getelementptr inbounds %struct.ddg_edge, ptr %30, i64 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !91
  %33 = getelementptr inbounds %struct.ddg_node, ptr %32, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !71
  %35 = getelementptr inbounds %struct.rtx_def, ptr %34, i64 0, i32 1
  %36 = load i32, ptr %35, align 8, !tbaa !46
  %37 = load i32, ptr %32, align 8, !tbaa !66
  %38 = getelementptr inbounds %struct.ddg_edge, ptr %30, i64 0, i32 5
  %39 = load i32, ptr %38, align 4, !tbaa !126
  %40 = icmp sgt i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %29
  %42 = tail call i64 @fwrite(ptr nonnull @.str.10, i64 22, i64 1, ptr %0)
  br label %45

43:                                               ; preds = %29
  %44 = tail call i64 @fwrite(ptr nonnull @.str.11, i64 8, i64 1, ptr %0)
  br label %45

45:                                               ; preds = %43, %41
  %46 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.12, i32 noundef %28, i32 noundef %15)
  %47 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.13, i32 noundef %37, i32 noundef %36)
  %48 = getelementptr inbounds %struct.ddg_edge, ptr %30, i64 0, i32 4
  %49 = load i32, ptr %48, align 8, !tbaa !94
  %50 = load i32, ptr %38, align 4, !tbaa !126
  %51 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.14, i32 noundef %49, i32 noundef %50)
  %52 = getelementptr inbounds %struct.ddg_edge, ptr %30, i64 0, i32 7
  %53 = load ptr, ptr %52, align 8, !tbaa !35
  %54 = icmp eq ptr %53, null
  br i1 %54, label %55, label %29, !llvm.loop !130

55:                                               ; preds = %45, %9
  %56 = add nuw nsw i64 %10, 1
  %57 = load i32, ptr %4, align 8, !tbaa !63
  %58 = sext i32 %57 to i64
  %59 = icmp slt i64 %56, %58
  br i1 %59, label %9, label %60, !llvm.loop !131

60:                                               ; preds = %55, %2
  %61 = tail call i64 @fwrite(ptr nonnull @.str.15, i64 2, i64 1, ptr %0)
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @print_sccs(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #9 !prof !34 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %90, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.ddg_all_sccs, ptr %1, i64 0, i32 1
  %7 = load i32, ptr %6, align 8, !tbaa !132
  %8 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.16, i32 noundef %7)
  %9 = load i32, ptr %6, align 8, !tbaa !132
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %11, label %88

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.ddg, ptr %2, i64 0, i32 5
  br label %13

13:                                               ; preds = %11, %83
  %14 = phi i64 [ 0, %11 ], [ %84, %83 ]
  %15 = phi i32 [ 0, %11 ], [ %73, %83 ]
  %16 = trunc i64 %14 to i32
  %17 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.17, i32 noundef %16)
  %18 = load ptr, ptr %1, align 8, !tbaa !134
  %19 = getelementptr inbounds ptr, ptr %18, i64 %14
  %20 = load ptr, ptr %19, align 8, !tbaa !35
  %21 = load ptr, ptr %20, align 8, !tbaa !135
  %22 = getelementptr inbounds %struct.simple_bitmap_def, ptr %21, i64 0, i32 2
  %23 = load i32, ptr %22, align 4, !tbaa !137
  %24 = getelementptr inbounds %struct.simple_bitmap_def, ptr %21, i64 0, i32 3
  %25 = icmp eq i32 %23, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %13
  %27 = load i64, ptr %24, align 8, !tbaa !98
  br label %28

28:                                               ; preds = %13, %26
  %29 = phi i64 [ %27, %26 ], [ 0, %13 ]
  br label %30

30:                                               ; preds = %28, %74
  %31 = phi i32 [ %82, %74 ], [ 0, %28 ]
  %32 = phi i32 [ %71, %74 ], [ 0, %28 ]
  %33 = phi i64 [ %81, %74 ], [ %29, %28 ]
  %34 = phi i32 [ %73, %74 ], [ %15, %28 ]
  %35 = icmp eq i64 %33, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %30
  %37 = add i32 %32, 1
  %38 = tail call i32 @llvm.umax.i32(i32 %23, i32 %37)
  %39 = add i32 %32, 1
  %40 = icmp ult i32 %39, %23
  br i1 %40, label %53, label %68

41:                                               ; preds = %53
  %42 = shl i32 %54, 6
  br label %43

43:                                               ; preds = %41, %30
  %44 = phi i32 [ %31, %30 ], [ %42, %41 ]
  %45 = phi i32 [ %32, %30 ], [ %54, %41 ]
  %46 = phi i64 [ %33, %30 ], [ %57, %41 ]
  %47 = phi i1 [ %35, %30 ], [ %58, %41 ]
  %48 = and i64 %46, 1
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %59, label %68

50:                                               ; preds = %53
  %51 = add i32 %54, 1
  %52 = icmp ult i32 %51, %23
  br i1 %52, label %53, label %66, !llvm.loop !138

53:                                               ; preds = %36, %50
  %54 = phi i32 [ %51, %50 ], [ %39, %36 ]
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds i64, ptr %24, i64 %55
  %57 = load i64, ptr %56, align 8, !tbaa !98
  %58 = icmp eq i64 %57, 0
  br i1 %58, label %50, label %41, !llvm.loop !138

59:                                               ; preds = %43, %59
  %60 = phi i64 [ %63, %59 ], [ %46, %43 ]
  %61 = phi i32 [ %62, %59 ], [ %44, %43 ]
  %62 = add i32 %61, 1
  %63 = lshr exact i64 %60, 1
  %64 = and i64 %60, 2
  %65 = icmp eq i64 %64, 0
  br i1 %65, label %59, label %68, !llvm.loop !139

66:                                               ; preds = %50
  %67 = shl i32 %54, 6
  br label %68

68:                                               ; preds = %59, %66, %36, %43
  %69 = phi i1 [ %47, %43 ], [ %35, %36 ], [ %58, %66 ], [ %47, %59 ]
  %70 = phi i32 [ %44, %43 ], [ %31, %36 ], [ %67, %66 ], [ %62, %59 ]
  %71 = phi i32 [ %45, %43 ], [ %38, %36 ], [ %38, %66 ], [ %45, %59 ]
  %72 = phi i64 [ %46, %43 ], [ %33, %36 ], [ %57, %66 ], [ %63, %59 ]
  %73 = phi i32 [ %44, %43 ], [ %34, %36 ], [ %34, %66 ], [ %62, %59 ]
  br i1 %69, label %83, label %74

74:                                               ; preds = %68
  %75 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.18, i32 noundef %73)
  %76 = load ptr, ptr %12, align 8, !tbaa !64
  %77 = zext i32 %73 to i64
  %78 = getelementptr inbounds %struct.ddg_node, ptr %76, i64 %77, i32 1
  %79 = load ptr, ptr %78, align 8, !tbaa !71
  %80 = tail call i32 @print_rtl_single(ptr noundef nonnull %0, ptr noundef %79) #21
  %81 = lshr i64 %72, 1
  %82 = add i32 %70, 1
  br label %30, !llvm.loop !140

83:                                               ; preds = %68
  %84 = add nuw nsw i64 %14, 1
  %85 = load i32, ptr %6, align 8, !tbaa !132
  %86 = sext i32 %85 to i64
  %87 = icmp slt i64 %84, %86
  br i1 %87, label %13, label %88, !llvm.loop !141

88:                                               ; preds = %83, %5
  %89 = tail call i32 @fputc(i32 10, ptr nonnull %0)
  br label %90

90:                                               ; preds = %3, %88
  ret void
}

; Function Attrs: cold nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @get_node_of_insn(ptr nocapture noundef readonly %0, ptr noundef readnone %1) local_unnamed_addr #12 !prof !34 {
  %3 = getelementptr inbounds %struct.ddg, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !63
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %6, label %20

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.ddg, ptr %0, i64 0, i32 5
  %8 = load ptr, ptr %7, align 8, !tbaa !64
  %9 = zext nneg i32 %4 to i64
  br label %13

10:                                               ; preds = %13
  %11 = add nuw nsw i64 %14, 1
  %12 = icmp eq i64 %11, %9
  br i1 %12, label %20, label %13, !llvm.loop !79

13:                                               ; preds = %6, %10
  %14 = phi i64 [ 0, %6 ], [ %11, %10 ]
  %15 = getelementptr inbounds %struct.ddg_node, ptr %8, i64 %14, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !71
  %17 = icmp eq ptr %16, %1
  br i1 %17, label %18, label %10

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.ddg_node, ptr %8, i64 %14
  br label %20

20:                                               ; preds = %10, %2, %18
  %21 = phi ptr [ %19, %18 ], [ null, %2 ], [ null, %10 ]
  ret ptr %21
}

; Function Attrs: cold nounwind uwtable
define dso_local void @find_successors(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) local_unnamed_addr #9 !prof !34 {
  %4 = getelementptr inbounds %struct.simple_bitmap_def, ptr %2, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !137
  %6 = getelementptr inbounds %struct.simple_bitmap_def, ptr %2, i64 0, i32 3
  %7 = icmp eq i32 %5, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %3
  %9 = load i64, ptr %6, align 8, !tbaa !98
  br label %10

10:                                               ; preds = %3, %8
  %11 = phi i64 [ %9, %8 ], [ 0, %3 ]
  %12 = getelementptr inbounds %struct.ddg, ptr %1, i64 0, i32 5
  br label %13

13:                                               ; preds = %57, %10
  %14 = phi i32 [ 0, %10 ], [ %63, %57 ]
  %15 = phi i32 [ 0, %10 ], [ %54, %57 ]
  %16 = phi i64 [ %11, %10 ], [ %62, %57 ]
  %17 = phi i32 [ 0, %10 ], [ %56, %57 ]
  %18 = icmp eq i64 %16, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %13
  %20 = add i32 %15, 1
  %21 = tail call i32 @llvm.umax.i32(i32 %5, i32 %20)
  %22 = add i32 %15, 1
  %23 = icmp ult i32 %22, %5
  br i1 %23, label %36, label %51

24:                                               ; preds = %36
  %25 = shl i32 %37, 6
  br label %26

26:                                               ; preds = %24, %13
  %27 = phi i32 [ %14, %13 ], [ %25, %24 ]
  %28 = phi i32 [ %15, %13 ], [ %37, %24 ]
  %29 = phi i64 [ %16, %13 ], [ %40, %24 ]
  %30 = phi i1 [ %18, %13 ], [ %41, %24 ]
  %31 = and i64 %29, 1
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %42, label %51

33:                                               ; preds = %36
  %34 = add i32 %37, 1
  %35 = icmp ult i32 %34, %5
  br i1 %35, label %36, label %49, !llvm.loop !138

36:                                               ; preds = %19, %33
  %37 = phi i32 [ %34, %33 ], [ %22, %19 ]
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds i64, ptr %6, i64 %38
  %40 = load i64, ptr %39, align 8, !tbaa !98
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %33, label %24, !llvm.loop !138

42:                                               ; preds = %26, %42
  %43 = phi i64 [ %46, %42 ], [ %29, %26 ]
  %44 = phi i32 [ %45, %42 ], [ %27, %26 ]
  %45 = add i32 %44, 1
  %46 = lshr exact i64 %43, 1
  %47 = and i64 %43, 2
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %42, label %51, !llvm.loop !139

49:                                               ; preds = %33
  %50 = shl i32 %37, 6
  br label %51

51:                                               ; preds = %42, %49, %19, %26
  %52 = phi i1 [ %30, %26 ], [ %18, %19 ], [ %41, %49 ], [ %30, %42 ]
  %53 = phi i32 [ %27, %26 ], [ %14, %19 ], [ %50, %49 ], [ %45, %42 ]
  %54 = phi i32 [ %28, %26 ], [ %21, %19 ], [ %21, %49 ], [ %28, %42 ]
  %55 = phi i64 [ %29, %26 ], [ %16, %19 ], [ %40, %49 ], [ %46, %42 ]
  %56 = phi i32 [ %27, %26 ], [ %17, %19 ], [ %17, %49 ], [ %45, %42 ]
  br i1 %52, label %64, label %57

57:                                               ; preds = %51
  %58 = load ptr, ptr %12, align 8, !tbaa !64
  %59 = zext i32 %56 to i64
  %60 = getelementptr inbounds %struct.ddg_node, ptr %58, i64 %59, i32 5
  %61 = load ptr, ptr %60, align 8, !tbaa !68
  tail call void @sbitmap_a_or_b(ptr noundef %0, ptr noundef %0, ptr noundef %61) #21
  %62 = lshr i64 %55, 1
  %63 = add i32 %53, 1
  br label %13, !llvm.loop !142

64:                                               ; preds = %51
  tail call void @sbitmap_difference(ptr noundef %0, ptr noundef %0, ptr noundef %2) #21
  ret void
}

declare void @sbitmap_a_or_b(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @sbitmap_difference(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @find_predecessors(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) local_unnamed_addr #9 !prof !34 {
  %4 = getelementptr inbounds %struct.simple_bitmap_def, ptr %2, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !137
  %6 = getelementptr inbounds %struct.simple_bitmap_def, ptr %2, i64 0, i32 3
  %7 = icmp eq i32 %5, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %3
  %9 = load i64, ptr %6, align 8, !tbaa !98
  br label %10

10:                                               ; preds = %3, %8
  %11 = phi i64 [ %9, %8 ], [ 0, %3 ]
  %12 = getelementptr inbounds %struct.ddg, ptr %1, i64 0, i32 5
  br label %13

13:                                               ; preds = %57, %10
  %14 = phi i32 [ 0, %10 ], [ %63, %57 ]
  %15 = phi i32 [ 0, %10 ], [ %54, %57 ]
  %16 = phi i64 [ %11, %10 ], [ %62, %57 ]
  %17 = phi i32 [ 0, %10 ], [ %56, %57 ]
  %18 = icmp eq i64 %16, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %13
  %20 = add i32 %15, 1
  %21 = tail call i32 @llvm.umax.i32(i32 %5, i32 %20)
  %22 = add i32 %15, 1
  %23 = icmp ult i32 %22, %5
  br i1 %23, label %36, label %51

24:                                               ; preds = %36
  %25 = shl i32 %37, 6
  br label %26

26:                                               ; preds = %24, %13
  %27 = phi i32 [ %14, %13 ], [ %25, %24 ]
  %28 = phi i32 [ %15, %13 ], [ %37, %24 ]
  %29 = phi i64 [ %16, %13 ], [ %40, %24 ]
  %30 = phi i1 [ %18, %13 ], [ %41, %24 ]
  %31 = and i64 %29, 1
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %42, label %51

33:                                               ; preds = %36
  %34 = add i32 %37, 1
  %35 = icmp ult i32 %34, %5
  br i1 %35, label %36, label %49, !llvm.loop !138

36:                                               ; preds = %19, %33
  %37 = phi i32 [ %34, %33 ], [ %22, %19 ]
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds i64, ptr %6, i64 %38
  %40 = load i64, ptr %39, align 8, !tbaa !98
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %33, label %24, !llvm.loop !138

42:                                               ; preds = %26, %42
  %43 = phi i64 [ %46, %42 ], [ %29, %26 ]
  %44 = phi i32 [ %45, %42 ], [ %27, %26 ]
  %45 = add i32 %44, 1
  %46 = lshr exact i64 %43, 1
  %47 = and i64 %43, 2
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %42, label %51, !llvm.loop !139

49:                                               ; preds = %33
  %50 = shl i32 %37, 6
  br label %51

51:                                               ; preds = %42, %49, %19, %26
  %52 = phi i1 [ %30, %26 ], [ %18, %19 ], [ %41, %49 ], [ %30, %42 ]
  %53 = phi i32 [ %27, %26 ], [ %14, %19 ], [ %50, %49 ], [ %45, %42 ]
  %54 = phi i32 [ %28, %26 ], [ %21, %19 ], [ %21, %49 ], [ %28, %42 ]
  %55 = phi i64 [ %29, %26 ], [ %16, %19 ], [ %40, %49 ], [ %46, %42 ]
  %56 = phi i32 [ %27, %26 ], [ %17, %19 ], [ %17, %49 ], [ %45, %42 ]
  br i1 %52, label %64, label %57

57:                                               ; preds = %51
  %58 = load ptr, ptr %12, align 8, !tbaa !64
  %59 = zext i32 %56 to i64
  %60 = getelementptr inbounds %struct.ddg_node, ptr %58, i64 %59, i32 6
  %61 = load ptr, ptr %60, align 8, !tbaa !69
  tail call void @sbitmap_a_or_b(ptr noundef %0, ptr noundef %0, ptr noundef %61) #21
  %62 = lshr i64 %55, 1
  %63 = add i32 %53, 1
  br label %13, !llvm.loop !143

64:                                               ; preds = %51
  tail call void @sbitmap_difference(ptr noundef %0, ptr noundef %0, ptr noundef %2) #21
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local noundef ptr @create_ddg_all_sccs(ptr noundef %0) local_unnamed_addr #9 !prof !34 {
  %2 = getelementptr inbounds %struct.ddg, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !63
  %4 = tail call ptr @sbitmap_alloc(i32 noundef %3) #21
  %5 = tail call ptr @sbitmap_alloc(i32 noundef %3) #21
  %6 = tail call ptr @sbitmap_alloc(i32 noundef %3) #21
  %7 = tail call ptr @xmalloc(i64 noundef 24) #21
  %8 = getelementptr inbounds %struct.ddg_all_sccs, ptr %7, i64 0, i32 2
  store ptr %0, ptr %8, align 8, !tbaa !144
  store ptr null, ptr %7, align 8, !tbaa !134
  %9 = getelementptr inbounds %struct.ddg_all_sccs, ptr %7, i64 0, i32 1
  store i32 0, ptr %9, align 8, !tbaa !132
  %10 = getelementptr inbounds %struct.ddg, ptr %0, i64 0, i32 8
  %11 = load i32, ptr %10, align 4, !tbaa !124
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %13, label %232

13:                                               ; preds = %1
  %14 = getelementptr inbounds %struct.ddg, ptr %0, i64 0, i32 9
  %15 = getelementptr inbounds %struct.simple_bitmap_def, ptr %6, i64 0, i32 2
  %16 = getelementptr inbounds %struct.simple_bitmap_def, ptr %6, i64 0, i32 3
  %17 = getelementptr inbounds %struct.ddg, ptr %0, i64 0, i32 5
  br label %18

18:                                               ; preds = %13, %227
  %19 = phi i64 [ 0, %13 ], [ %228, %227 ]
  %20 = load ptr, ptr %14, align 8, !tbaa !125
  %21 = getelementptr inbounds ptr, ptr %20, i64 %19
  %22 = load ptr, ptr %21, align 8, !tbaa !35
  %23 = getelementptr inbounds %struct.ddg_edge, ptr %22, i64 0, i32 8
  %24 = load i32, ptr %23, align 8, !tbaa !46
  %25 = icmp eq i32 %24, 1
  br i1 %25, label %227, label %26

26:                                               ; preds = %18
  %27 = getelementptr inbounds %struct.ddg_edge, ptr %22, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !91
  %29 = load ptr, ptr %22, align 8, !tbaa !89
  tail call void @sbitmap_zero(ptr noundef %6) #21
  tail call void @sbitmap_zero(ptr noundef %4) #21
  tail call void @sbitmap_zero(ptr noundef %5) #21
  %30 = load i32, ptr %28, align 8, !tbaa !66
  %31 = load ptr, ptr %4, align 8, !tbaa !121
  %32 = icmp eq ptr %31, null
  br i1 %32, label %47, label %33

33:                                               ; preds = %26
  %34 = lshr i32 %30, 6
  %35 = zext nneg i32 %34 to i64
  %36 = getelementptr inbounds %struct.simple_bitmap_def, ptr %4, i64 0, i32 3, i64 %35
  %37 = load i64, ptr %36, align 8, !tbaa !98
  %38 = and i32 %30, 63
  %39 = zext nneg i32 %38 to i64
  %40 = shl nuw i64 1, %39
  %41 = and i64 %37, %40
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %33
  %44 = getelementptr inbounds i8, ptr %31, i64 %35
  %45 = load i8, ptr %44, align 1, !tbaa !46
  %46 = add i8 %45, 1
  store i8 %46, ptr %44, align 1, !tbaa !46
  br label %47

47:                                               ; preds = %26, %33, %43
  %48 = and i32 %30, 63
  %49 = zext nneg i32 %48 to i64
  %50 = shl nuw i64 1, %49
  %51 = lshr i32 %30, 6
  %52 = zext nneg i32 %51 to i64
  %53 = getelementptr inbounds %struct.simple_bitmap_def, ptr %4, i64 0, i32 3, i64 %52
  %54 = load i64, ptr %53, align 8, !tbaa !98
  %55 = or i64 %54, %50
  store i64 %55, ptr %53, align 8, !tbaa !98
  %56 = load i32, ptr %29, align 8, !tbaa !66
  %57 = load ptr, ptr %5, align 8, !tbaa !121
  %58 = icmp eq ptr %57, null
  br i1 %58, label %73, label %59

59:                                               ; preds = %47
  %60 = lshr i32 %56, 6
  %61 = zext nneg i32 %60 to i64
  %62 = getelementptr inbounds %struct.simple_bitmap_def, ptr %5, i64 0, i32 3, i64 %61
  %63 = load i64, ptr %62, align 8, !tbaa !98
  %64 = and i32 %56, 63
  %65 = zext nneg i32 %64 to i64
  %66 = shl nuw i64 1, %65
  %67 = and i64 %63, %66
  %68 = icmp eq i64 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %59
  %70 = getelementptr inbounds i8, ptr %57, i64 %61
  %71 = load i8, ptr %70, align 1, !tbaa !46
  %72 = add i8 %71, 1
  store i8 %72, ptr %70, align 1, !tbaa !46
  br label %73

73:                                               ; preds = %47, %59, %69
  %74 = and i32 %56, 63
  %75 = zext nneg i32 %74 to i64
  %76 = shl nuw i64 1, %75
  %77 = lshr i32 %56, 6
  %78 = zext nneg i32 %77 to i64
  %79 = getelementptr inbounds %struct.simple_bitmap_def, ptr %5, i64 0, i32 3, i64 %78
  %80 = load i64, ptr %79, align 8, !tbaa !98
  %81 = or i64 %80, %76
  store i64 %81, ptr %79, align 8, !tbaa !98
  %82 = tail call i32 @find_nodes_on_paths(ptr noundef %6, ptr noundef %0, ptr noundef nonnull %4, ptr noundef nonnull %5), !range !145
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %227, label %84

84:                                               ; preds = %73
  %85 = tail call ptr @xmalloc(i64 noundef 24) #21
  %86 = getelementptr inbounds %struct.ddg_scc, ptr %85, i64 0, i32 1
  store ptr null, ptr %86, align 8, !tbaa !146
  %87 = getelementptr inbounds %struct.ddg_scc, ptr %85, i64 0, i32 2
  store i32 0, ptr %87, align 8, !tbaa !147
  %88 = load i32, ptr %2, align 8, !tbaa !63
  %89 = tail call ptr @sbitmap_alloc(i32 noundef %88) #21
  store ptr %89, ptr %85, align 8, !tbaa !135
  tail call void @sbitmap_copy(ptr noundef %89, ptr noundef %6) #21
  %90 = load i32, ptr %15, align 4, !tbaa !137
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %94, label %92

92:                                               ; preds = %84
  %93 = load i64, ptr %16, align 8, !tbaa !98
  br label %94

94:                                               ; preds = %92, %84
  %95 = phi i64 [ 0, %84 ], [ %93, %92 ]
  br label %96

96:                                               ; preds = %94, %183
  %97 = phi i32 [ %185, %183 ], [ 0, %94 ]
  %98 = phi i32 [ %137, %183 ], [ 0, %94 ]
  %99 = phi i64 [ %184, %183 ], [ %95, %94 ]
  %100 = phi i32 [ %139, %183 ], [ 0, %94 ]
  %101 = icmp eq i64 %99, 0
  br i1 %101, label %102, label %109

102:                                              ; preds = %96
  %103 = add i32 %98, 1
  %104 = tail call i32 @llvm.umax.i32(i32 %90, i32 %103)
  %105 = add i32 %98, 1
  %106 = icmp ult i32 %105, %90
  br i1 %106, label %119, label %134

107:                                              ; preds = %119
  %108 = shl i32 %120, 6
  br label %109

109:                                              ; preds = %107, %96
  %110 = phi i32 [ %97, %96 ], [ %108, %107 ]
  %111 = phi i32 [ %98, %96 ], [ %120, %107 ]
  %112 = phi i64 [ %99, %96 ], [ %123, %107 ]
  %113 = phi i1 [ %101, %96 ], [ %124, %107 ]
  %114 = and i64 %112, 1
  %115 = icmp eq i64 %114, 0
  br i1 %115, label %125, label %134

116:                                              ; preds = %119
  %117 = add i32 %120, 1
  %118 = icmp ult i32 %117, %90
  br i1 %118, label %119, label %132, !llvm.loop !138

119:                                              ; preds = %102, %116
  %120 = phi i32 [ %117, %116 ], [ %105, %102 ]
  %121 = zext i32 %120 to i64
  %122 = getelementptr inbounds i64, ptr %16, i64 %121
  %123 = load i64, ptr %122, align 8, !tbaa !98
  %124 = icmp eq i64 %123, 0
  br i1 %124, label %116, label %107, !llvm.loop !138

125:                                              ; preds = %109, %125
  %126 = phi i64 [ %129, %125 ], [ %112, %109 ]
  %127 = phi i32 [ %128, %125 ], [ %110, %109 ]
  %128 = add i32 %127, 1
  %129 = lshr exact i64 %126, 1
  %130 = and i64 %126, 2
  %131 = icmp eq i64 %130, 0
  br i1 %131, label %125, label %134, !llvm.loop !139

132:                                              ; preds = %116
  %133 = shl i32 %120, 6
  br label %134

134:                                              ; preds = %125, %132, %102, %109
  %135 = phi i1 [ %113, %109 ], [ %101, %102 ], [ %124, %132 ], [ %113, %125 ]
  %136 = phi i32 [ %110, %109 ], [ %97, %102 ], [ %133, %132 ], [ %128, %125 ]
  %137 = phi i32 [ %111, %109 ], [ %104, %102 ], [ %104, %132 ], [ %111, %125 ]
  %138 = phi i64 [ %112, %109 ], [ %99, %102 ], [ %123, %132 ], [ %129, %125 ]
  %139 = phi i32 [ %110, %109 ], [ %100, %102 ], [ %100, %132 ], [ %128, %125 ]
  br i1 %135, label %140, label %143

140:                                              ; preds = %134
  %141 = load i32, ptr %87, align 8, !tbaa !147
  %142 = icmp sgt i32 %141, 0
  br i1 %142, label %186, label %214

143:                                              ; preds = %134
  %144 = load ptr, ptr %17, align 8, !tbaa !64
  %145 = zext i32 %139 to i64
  %146 = getelementptr inbounds %struct.ddg_node, ptr %144, i64 %145, i32 4
  %147 = load ptr, ptr %146, align 8, !tbaa !35
  %148 = icmp eq ptr %147, null
  br i1 %148, label %183, label %149

149:                                              ; preds = %143, %179
  %150 = phi ptr [ %181, %179 ], [ %147, %143 ]
  %151 = getelementptr inbounds %struct.ddg_edge, ptr %150, i64 0, i32 1
  %152 = load ptr, ptr %151, align 8, !tbaa !91
  %153 = load i32, ptr %152, align 8, !tbaa !66
  %154 = lshr i32 %153, 6
  %155 = zext nneg i32 %154 to i64
  %156 = getelementptr inbounds %struct.simple_bitmap_def, ptr %6, i64 0, i32 3, i64 %155
  %157 = load i64, ptr %156, align 8, !tbaa !98
  %158 = and i32 %153, 63
  %159 = zext nneg i32 %158 to i64
  %160 = shl nuw i64 1, %159
  %161 = and i64 %160, %157
  %162 = icmp eq i64 %161, 0
  br i1 %162, label %179, label %163

163:                                              ; preds = %149
  %164 = getelementptr inbounds %struct.ddg_edge, ptr %150, i64 0, i32 8
  store i32 1, ptr %164, align 8, !tbaa !46
  %165 = getelementptr inbounds %struct.ddg_edge, ptr %150, i64 0, i32 5
  %166 = load i32, ptr %165, align 4, !tbaa !126
  %167 = icmp sgt i32 %166, 0
  br i1 %167, label %168, label %179

168:                                              ; preds = %163
  %169 = load i32, ptr %87, align 8, !tbaa !147
  %170 = shl i32 %169, 3
  %171 = add i32 %170, 8
  %172 = load ptr, ptr %86, align 8, !tbaa !146
  %173 = sext i32 %171 to i64
  %174 = tail call ptr @xrealloc(ptr noundef %172, i64 noundef %173) #21
  store ptr %174, ptr %86, align 8, !tbaa !146
  %175 = load i32, ptr %87, align 8, !tbaa !147
  %176 = add nsw i32 %175, 1
  store i32 %176, ptr %87, align 8, !tbaa !147
  %177 = sext i32 %175 to i64
  %178 = getelementptr inbounds ptr, ptr %174, i64 %177
  store ptr %150, ptr %178, align 8, !tbaa !35
  br label %179

179:                                              ; preds = %168, %163, %149
  %180 = getelementptr inbounds %struct.ddg_edge, ptr %150, i64 0, i32 7
  %181 = load ptr, ptr %180, align 8, !tbaa !35
  %182 = icmp eq ptr %181, null
  br i1 %182, label %183, label %149, !llvm.loop !148

183:                                              ; preds = %179, %143
  %184 = lshr i64 %138, 1
  %185 = add i32 %136, 1
  br label %96, !llvm.loop !149

186:                                              ; preds = %140, %208
  %187 = phi i64 [ %210, %208 ], [ 0, %140 ]
  %188 = phi i32 [ %209, %208 ], [ -1, %140 ]
  %189 = load ptr, ptr %86, align 8, !tbaa !146
  %190 = getelementptr inbounds ptr, ptr %189, i64 %187
  %191 = load ptr, ptr %190, align 8, !tbaa !35
  %192 = getelementptr inbounds %struct.ddg_edge, ptr %191, i64 0, i32 5
  %193 = load i32, ptr %192, align 4, !tbaa !126
  %194 = getelementptr inbounds %struct.ddg_edge, ptr %191, i64 0, i32 1
  %195 = load ptr, ptr %194, align 8, !tbaa !91
  %196 = load ptr, ptr %191, align 8, !tbaa !89
  %197 = load i32, ptr %195, align 8, !tbaa !66
  %198 = load i32, ptr %196, align 8, !tbaa !66
  %199 = load ptr, ptr %85, align 8, !tbaa !135
  %200 = tail call i32 @longest_simple_path(ptr noundef %0, i32 noundef %197, i32 noundef %198, ptr noundef %199)
  %201 = icmp slt i32 %200, 0
  br i1 %201, label %208, label %202

202:                                              ; preds = %186
  %203 = getelementptr inbounds %struct.ddg_edge, ptr %191, i64 0, i32 4
  %204 = load i32, ptr %203, align 8, !tbaa !94
  %205 = add nsw i32 %204, %200
  %206 = sdiv i32 %205, %193
  %207 = tail call i32 @llvm.smax.i32(i32 %188, i32 %206)
  br label %208

208:                                              ; preds = %202, %186
  %209 = phi i32 [ %207, %202 ], [ %188, %186 ]
  %210 = add nuw nsw i64 %187, 1
  %211 = load i32, ptr %87, align 8, !tbaa !147
  %212 = sext i32 %211 to i64
  %213 = icmp slt i64 %210, %212
  br i1 %213, label %186, label %214, !llvm.loop !150

214:                                              ; preds = %208, %140
  %215 = phi i32 [ -1, %140 ], [ %209, %208 ]
  %216 = getelementptr inbounds %struct.ddg_scc, ptr %85, i64 0, i32 3
  store i32 %215, ptr %216, align 4, !tbaa !151
  %217 = load i32, ptr %9, align 8, !tbaa !132
  %218 = shl i32 %217, 3
  %219 = add i32 %218, 8
  %220 = load ptr, ptr %7, align 8, !tbaa !134
  %221 = sext i32 %219 to i64
  %222 = tail call ptr @xrealloc(ptr noundef %220, i64 noundef %221) #21
  store ptr %222, ptr %7, align 8, !tbaa !134
  %223 = load i32, ptr %9, align 8, !tbaa !132
  %224 = add nsw i32 %223, 1
  store i32 %224, ptr %9, align 8, !tbaa !132
  %225 = sext i32 %223 to i64
  %226 = getelementptr inbounds ptr, ptr %222, i64 %225
  store ptr %85, ptr %226, align 8, !tbaa !35
  br label %227

227:                                              ; preds = %73, %214, %18
  %228 = add nuw nsw i64 %19, 1
  %229 = load i32, ptr %10, align 4, !tbaa !124
  %230 = sext i32 %229 to i64
  %231 = icmp slt i64 %228, %230
  br i1 %231, label %18, label %232, !llvm.loop !152

232:                                              ; preds = %227, %1
  %233 = load ptr, ptr %7, align 8, !tbaa !134
  %234 = load i32, ptr %9, align 8, !tbaa !132
  %235 = sext i32 %234 to i64
  tail call void @spec_qsort(ptr noundef %233, i64 noundef %235, i64 noundef 8, ptr noundef nonnull @compare_sccs) #21
  %236 = load ptr, ptr %4, align 8, !tbaa !121
  tail call void @free(ptr noundef %236)
  tail call void @free(ptr noundef %4)
  %237 = load ptr, ptr %5, align 8, !tbaa !121
  tail call void @free(ptr noundef %237)
  tail call void @free(ptr noundef %5)
  %238 = load ptr, ptr %6, align 8, !tbaa !121
  tail call void @free(ptr noundef %238)
  tail call void @free(ptr noundef %6)
  ret ptr %7
}

declare ptr @xmalloc(i64 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local i32 @find_nodes_on_paths(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #9 !prof !34 {
  %5 = getelementptr inbounds %struct.ddg, ptr %1, i64 0, i32 1
  %6 = load i32, ptr %5, align 8, !tbaa !63
  %7 = tail call ptr @sbitmap_alloc(i32 noundef %6) #21
  %8 = tail call ptr @sbitmap_alloc(i32 noundef %6) #21
  %9 = tail call ptr @sbitmap_alloc(i32 noundef %6) #21
  %10 = tail call ptr @sbitmap_alloc(i32 noundef %6) #21
  tail call void @sbitmap_copy(ptr noundef %8, ptr noundef %2) #21
  tail call void @sbitmap_copy(ptr noundef %10, ptr noundef %2) #21
  %11 = getelementptr inbounds %struct.simple_bitmap_def, ptr %7, i64 0, i32 2
  %12 = getelementptr inbounds %struct.simple_bitmap_def, ptr %7, i64 0, i32 3
  %13 = getelementptr inbounds %struct.ddg, ptr %1, i64 0, i32 5
  br label %16

14:                                               ; preds = %63
  %15 = icmp eq i32 %29, 0
  br i1 %15, label %124, label %16, !llvm.loop !153

16:                                               ; preds = %4, %14
  %17 = phi i32 [ 0, %4 ], [ %66, %14 ]
  tail call void @sbitmap_copy(ptr noundef %7, ptr noundef %10) #21
  tail call void @sbitmap_zero(ptr noundef %10) #21
  %18 = load i32, ptr %11, align 4, !tbaa !137
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %16
  %21 = load i64, ptr %12, align 8, !tbaa !98
  br label %22

22:                                               ; preds = %16, %20
  %23 = phi i64 [ 0, %16 ], [ %21, %20 ]
  br label %24

24:                                               ; preds = %22, %120
  %25 = phi i64 [ %122, %120 ], [ %23, %22 ]
  %26 = phi i32 [ %66, %120 ], [ %17, %22 ]
  %27 = phi i32 [ %123, %120 ], [ 0, %22 ]
  %28 = phi i32 [ %68, %120 ], [ 0, %22 ]
  %29 = phi i32 [ %121, %120 ], [ 0, %22 ]
  %30 = icmp eq i64 %25, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %24
  %32 = add i32 %28, 1
  %33 = tail call i32 @llvm.umax.i32(i32 %18, i32 %32)
  %34 = add i32 %28, 1
  %35 = icmp ult i32 %34, %18
  br i1 %35, label %48, label %63

36:                                               ; preds = %48
  %37 = shl i32 %49, 6
  br label %38

38:                                               ; preds = %36, %24
  %39 = phi i64 [ %25, %24 ], [ %52, %36 ]
  %40 = phi i32 [ %27, %24 ], [ %37, %36 ]
  %41 = phi i32 [ %28, %24 ], [ %49, %36 ]
  %42 = phi i1 [ %30, %24 ], [ %53, %36 ]
  %43 = and i64 %39, 1
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %54, label %63

45:                                               ; preds = %48
  %46 = add i32 %49, 1
  %47 = icmp ult i32 %46, %18
  br i1 %47, label %48, label %61, !llvm.loop !138

48:                                               ; preds = %31, %45
  %49 = phi i32 [ %46, %45 ], [ %34, %31 ]
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds i64, ptr %12, i64 %50
  %52 = load i64, ptr %51, align 8, !tbaa !98
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %45, label %36, !llvm.loop !138

54:                                               ; preds = %38, %54
  %55 = phi i32 [ %57, %54 ], [ %40, %38 ]
  %56 = phi i64 [ %58, %54 ], [ %39, %38 ]
  %57 = add i32 %55, 1
  %58 = lshr exact i64 %56, 1
  %59 = and i64 %56, 2
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %54, label %63, !llvm.loop !139

61:                                               ; preds = %45
  %62 = shl i32 %49, 6
  br label %63

63:                                               ; preds = %54, %61, %31, %38
  %64 = phi i1 [ %42, %38 ], [ %30, %31 ], [ %53, %61 ], [ %42, %54 ]
  %65 = phi i64 [ %39, %38 ], [ %25, %31 ], [ %52, %61 ], [ %58, %54 ]
  %66 = phi i32 [ %40, %38 ], [ %26, %31 ], [ %26, %61 ], [ %57, %54 ]
  %67 = phi i32 [ %40, %38 ], [ %27, %31 ], [ %62, %61 ], [ %57, %54 ]
  %68 = phi i32 [ %41, %38 ], [ %33, %31 ], [ %33, %61 ], [ %41, %54 ]
  br i1 %64, label %14, label %69

69:                                               ; preds = %63
  %70 = load ptr, ptr %13, align 8, !tbaa !64
  %71 = zext i32 %66 to i64
  %72 = getelementptr inbounds %struct.ddg_node, ptr %70, i64 %71, i32 4
  %73 = load ptr, ptr %72, align 8, !tbaa !35
  %74 = icmp eq ptr %73, null
  br i1 %74, label %120, label %75

75:                                               ; preds = %69, %115
  %76 = phi ptr [ %118, %115 ], [ %73, %69 ]
  %77 = phi i32 [ %116, %115 ], [ %29, %69 ]
  %78 = getelementptr inbounds %struct.ddg_edge, ptr %76, i64 0, i32 1
  %79 = load ptr, ptr %78, align 8, !tbaa !91
  %80 = load i32, ptr %79, align 8, !tbaa !66
  %81 = lshr i32 %80, 6
  %82 = zext nneg i32 %81 to i64
  %83 = getelementptr inbounds %struct.simple_bitmap_def, ptr %8, i64 0, i32 3, i64 %82
  %84 = load i64, ptr %83, align 8, !tbaa !98
  %85 = and i32 %80, 63
  %86 = zext nneg i32 %85 to i64
  %87 = shl nuw i64 1, %86
  %88 = and i64 %87, %84
  %89 = icmp eq i64 %88, 0
  br i1 %89, label %90, label %115

90:                                               ; preds = %75
  %91 = load ptr, ptr %8, align 8, !tbaa !121
  %92 = icmp eq ptr %91, null
  br i1 %92, label %97, label %93

93:                                               ; preds = %90
  %94 = getelementptr inbounds i8, ptr %91, i64 %82
  %95 = load i8, ptr %94, align 1, !tbaa !46
  %96 = add i8 %95, 1
  store i8 %96, ptr %94, align 1, !tbaa !46
  br label %97

97:                                               ; preds = %90, %93
  %98 = load i64, ptr %83, align 8, !tbaa !98
  %99 = or i64 %98, %87
  store i64 %99, ptr %83, align 8, !tbaa !98
  %100 = load ptr, ptr %10, align 8, !tbaa !121
  %101 = icmp eq ptr %100, null
  br i1 %101, label %111, label %102

102:                                              ; preds = %97
  %103 = getelementptr inbounds %struct.simple_bitmap_def, ptr %10, i64 0, i32 3, i64 %82
  %104 = load i64, ptr %103, align 8, !tbaa !98
  %105 = and i64 %104, %87
  %106 = icmp eq i64 %105, 0
  br i1 %106, label %107, label %111

107:                                              ; preds = %102
  %108 = getelementptr inbounds i8, ptr %100, i64 %82
  %109 = load i8, ptr %108, align 1, !tbaa !46
  %110 = add i8 %109, 1
  store i8 %110, ptr %108, align 1, !tbaa !46
  br label %111

111:                                              ; preds = %97, %102, %107
  %112 = getelementptr inbounds %struct.simple_bitmap_def, ptr %10, i64 0, i32 3, i64 %82
  %113 = load i64, ptr %112, align 8, !tbaa !98
  %114 = or i64 %113, %87
  store i64 %114, ptr %112, align 8, !tbaa !98
  br label %115

115:                                              ; preds = %111, %75
  %116 = phi i32 [ %77, %75 ], [ 1, %111 ]
  %117 = getelementptr inbounds %struct.ddg_edge, ptr %76, i64 0, i32 7
  %118 = load ptr, ptr %117, align 8, !tbaa !35
  %119 = icmp eq ptr %118, null
  br i1 %119, label %120, label %75, !llvm.loop !154

120:                                              ; preds = %115, %69
  %121 = phi i32 [ %29, %69 ], [ %116, %115 ]
  %122 = lshr i64 %65, 1
  %123 = add i32 %67, 1
  br label %24, !llvm.loop !155

124:                                              ; preds = %14
  tail call void @sbitmap_copy(ptr noundef %9, ptr noundef %3) #21
  tail call void @sbitmap_copy(ptr noundef %10, ptr noundef %3) #21
  %125 = getelementptr inbounds %struct.simple_bitmap_def, ptr %7, i64 0, i32 2
  %126 = getelementptr inbounds %struct.simple_bitmap_def, ptr %7, i64 0, i32 3
  %127 = getelementptr inbounds %struct.ddg, ptr %1, i64 0, i32 5
  br label %130

128:                                              ; preds = %177
  %129 = icmp eq i32 %143, 0
  br i1 %129, label %237, label %130, !llvm.loop !156

130:                                              ; preds = %124, %128
  %131 = phi i32 [ %66, %124 ], [ %180, %128 ]
  tail call void @sbitmap_copy(ptr noundef %7, ptr noundef %10) #21
  tail call void @sbitmap_zero(ptr noundef %10) #21
  %132 = load i32, ptr %125, align 4, !tbaa !137
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %136, label %134

134:                                              ; preds = %130
  %135 = load i64, ptr %126, align 8, !tbaa !98
  br label %136

136:                                              ; preds = %130, %134
  %137 = phi i64 [ 0, %130 ], [ %135, %134 ]
  br label %138

138:                                              ; preds = %136, %233
  %139 = phi i64 [ %235, %233 ], [ %137, %136 ]
  %140 = phi i32 [ %180, %233 ], [ %131, %136 ]
  %141 = phi i32 [ %236, %233 ], [ 0, %136 ]
  %142 = phi i32 [ %182, %233 ], [ 0, %136 ]
  %143 = phi i32 [ %234, %233 ], [ 0, %136 ]
  %144 = icmp eq i64 %139, 0
  br i1 %144, label %145, label %152

145:                                              ; preds = %138
  %146 = add i32 %142, 1
  %147 = tail call i32 @llvm.umax.i32(i32 %132, i32 %146)
  %148 = add i32 %142, 1
  %149 = icmp ult i32 %148, %132
  br i1 %149, label %162, label %177

150:                                              ; preds = %162
  %151 = shl i32 %163, 6
  br label %152

152:                                              ; preds = %150, %138
  %153 = phi i64 [ %139, %138 ], [ %166, %150 ]
  %154 = phi i32 [ %141, %138 ], [ %151, %150 ]
  %155 = phi i32 [ %142, %138 ], [ %163, %150 ]
  %156 = phi i1 [ %144, %138 ], [ %167, %150 ]
  %157 = and i64 %153, 1
  %158 = icmp eq i64 %157, 0
  br i1 %158, label %168, label %177

159:                                              ; preds = %162
  %160 = add i32 %163, 1
  %161 = icmp ult i32 %160, %132
  br i1 %161, label %162, label %175, !llvm.loop !138

162:                                              ; preds = %145, %159
  %163 = phi i32 [ %160, %159 ], [ %148, %145 ]
  %164 = zext i32 %163 to i64
  %165 = getelementptr inbounds i64, ptr %126, i64 %164
  %166 = load i64, ptr %165, align 8, !tbaa !98
  %167 = icmp eq i64 %166, 0
  br i1 %167, label %159, label %150, !llvm.loop !138

168:                                              ; preds = %152, %168
  %169 = phi i32 [ %171, %168 ], [ %154, %152 ]
  %170 = phi i64 [ %172, %168 ], [ %153, %152 ]
  %171 = add i32 %169, 1
  %172 = lshr exact i64 %170, 1
  %173 = and i64 %170, 2
  %174 = icmp eq i64 %173, 0
  br i1 %174, label %168, label %177, !llvm.loop !139

175:                                              ; preds = %159
  %176 = shl i32 %163, 6
  br label %177

177:                                              ; preds = %168, %175, %145, %152
  %178 = phi i1 [ %156, %152 ], [ %144, %145 ], [ %167, %175 ], [ %156, %168 ]
  %179 = phi i64 [ %153, %152 ], [ %139, %145 ], [ %166, %175 ], [ %172, %168 ]
  %180 = phi i32 [ %154, %152 ], [ %140, %145 ], [ %140, %175 ], [ %171, %168 ]
  %181 = phi i32 [ %154, %152 ], [ %141, %145 ], [ %176, %175 ], [ %171, %168 ]
  %182 = phi i32 [ %155, %152 ], [ %147, %145 ], [ %147, %175 ], [ %155, %168 ]
  br i1 %178, label %128, label %183

183:                                              ; preds = %177
  %184 = load ptr, ptr %127, align 8, !tbaa !64
  %185 = zext i32 %180 to i64
  %186 = getelementptr inbounds %struct.ddg_node, ptr %184, i64 %185, i32 3
  %187 = load ptr, ptr %186, align 8, !tbaa !35
  %188 = icmp eq ptr %187, null
  br i1 %188, label %233, label %189

189:                                              ; preds = %183, %228
  %190 = phi ptr [ %231, %228 ], [ %187, %183 ]
  %191 = phi i32 [ %229, %228 ], [ %143, %183 ]
  %192 = load ptr, ptr %190, align 8, !tbaa !89
  %193 = load i32, ptr %192, align 8, !tbaa !66
  %194 = lshr i32 %193, 6
  %195 = zext nneg i32 %194 to i64
  %196 = getelementptr inbounds %struct.simple_bitmap_def, ptr %9, i64 0, i32 3, i64 %195
  %197 = load i64, ptr %196, align 8, !tbaa !98
  %198 = and i32 %193, 63
  %199 = zext nneg i32 %198 to i64
  %200 = shl nuw i64 1, %199
  %201 = and i64 %200, %197
  %202 = icmp eq i64 %201, 0
  br i1 %202, label %203, label %228

203:                                              ; preds = %189
  %204 = load ptr, ptr %9, align 8, !tbaa !121
  %205 = icmp eq ptr %204, null
  br i1 %205, label %210, label %206

206:                                              ; preds = %203
  %207 = getelementptr inbounds i8, ptr %204, i64 %195
  %208 = load i8, ptr %207, align 1, !tbaa !46
  %209 = add i8 %208, 1
  store i8 %209, ptr %207, align 1, !tbaa !46
  br label %210

210:                                              ; preds = %203, %206
  %211 = load i64, ptr %196, align 8, !tbaa !98
  %212 = or i64 %211, %200
  store i64 %212, ptr %196, align 8, !tbaa !98
  %213 = load ptr, ptr %10, align 8, !tbaa !121
  %214 = icmp eq ptr %213, null
  br i1 %214, label %224, label %215

215:                                              ; preds = %210
  %216 = getelementptr inbounds %struct.simple_bitmap_def, ptr %10, i64 0, i32 3, i64 %195
  %217 = load i64, ptr %216, align 8, !tbaa !98
  %218 = and i64 %217, %200
  %219 = icmp eq i64 %218, 0
  br i1 %219, label %220, label %224

220:                                              ; preds = %215
  %221 = getelementptr inbounds i8, ptr %213, i64 %195
  %222 = load i8, ptr %221, align 1, !tbaa !46
  %223 = add i8 %222, 1
  store i8 %223, ptr %221, align 1, !tbaa !46
  br label %224

224:                                              ; preds = %210, %215, %220
  %225 = getelementptr inbounds %struct.simple_bitmap_def, ptr %10, i64 0, i32 3, i64 %195
  %226 = load i64, ptr %225, align 8, !tbaa !98
  %227 = or i64 %226, %200
  store i64 %227, ptr %225, align 8, !tbaa !98
  br label %228

228:                                              ; preds = %224, %189
  %229 = phi i32 [ %191, %189 ], [ 1, %224 ]
  %230 = getelementptr inbounds %struct.ddg_edge, ptr %190, i64 0, i32 6
  %231 = load ptr, ptr %230, align 8, !tbaa !35
  %232 = icmp eq ptr %231, null
  br i1 %232, label %233, label %189, !llvm.loop !157

233:                                              ; preds = %228, %183
  %234 = phi i32 [ %143, %183 ], [ %229, %228 ]
  %235 = lshr i64 %179, 1
  %236 = add i32 %181, 1
  br label %138, !llvm.loop !158

237:                                              ; preds = %128
  %238 = tail call zeroext i8 @sbitmap_a_and_b_cg(ptr noundef %0, ptr noundef %8, ptr noundef %9) #21
  %239 = zext i8 %238 to i32
  %240 = load ptr, ptr %7, align 8, !tbaa !121
  tail call void @free(ptr noundef %240)
  tail call void @free(ptr noundef %7)
  %241 = load ptr, ptr %8, align 8, !tbaa !121
  tail call void @free(ptr noundef %241)
  tail call void @free(ptr noundef %8)
  %242 = load ptr, ptr %9, align 8, !tbaa !121
  tail call void @free(ptr noundef %242)
  tail call void @free(ptr noundef %9)
  %243 = load ptr, ptr %10, align 8, !tbaa !121
  tail call void @free(ptr noundef %243)
  tail call void @free(ptr noundef %10)
  ret i32 %239
}

; Function Attrs: cold nounwind uwtable
define dso_local void @free_ddg_all_sccs(ptr noundef %0) local_unnamed_addr #9 !prof !34 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %30, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.ddg_all_sccs, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !132
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %29

7:                                                ; preds = %3, %24
  %8 = phi i64 [ %25, %24 ], [ 0, %3 ]
  %9 = load ptr, ptr %0, align 8, !tbaa !134
  %10 = getelementptr inbounds ptr, ptr %9, i64 %8
  %11 = load ptr, ptr %10, align 8, !tbaa !35
  %12 = icmp eq ptr %11, null
  br i1 %12, label %24, label %13

13:                                               ; preds = %7
  %14 = load ptr, ptr %11, align 8, !tbaa !135
  %15 = load ptr, ptr %14, align 8, !tbaa !121
  tail call void @free(ptr noundef %15)
  %16 = load ptr, ptr %11, align 8, !tbaa !135
  tail call void @free(ptr noundef %16)
  %17 = getelementptr inbounds %struct.ddg_scc, ptr %11, i64 0, i32 2
  %18 = load i32, ptr %17, align 8, !tbaa !147
  %19 = icmp sgt i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %13
  %21 = getelementptr inbounds %struct.ddg_scc, ptr %11, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !146
  tail call void @free(ptr noundef %22)
  br label %23

23:                                               ; preds = %20, %13
  tail call void @free(ptr noundef %11)
  br label %24

24:                                               ; preds = %7, %23
  %25 = add nuw nsw i64 %8, 1
  %26 = load i32, ptr %4, align 8, !tbaa !132
  %27 = sext i32 %26 to i64
  %28 = icmp slt i64 %25, %27
  br i1 %28, label %7, label %29, !llvm.loop !159

29:                                               ; preds = %24, %3
  tail call void @free(ptr noundef %0)
  br label %30

30:                                               ; preds = %1, %29
  ret void
}

declare void @sbitmap_copy(ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @sbitmap_a_and_b_cg(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local i32 @longest_simple_path(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3) local_unnamed_addr #9 !prof !34 {
  %5 = getelementptr inbounds %struct.ddg, ptr %0, i64 0, i32 1
  %6 = load i32, ptr %5, align 8, !tbaa !63
  %7 = tail call ptr @sbitmap_alloc(i32 noundef %6) #21
  %8 = tail call ptr @sbitmap_alloc(i32 noundef %6) #21
  %9 = load i32, ptr %5, align 8, !tbaa !63
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %11, label %21

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.ddg, ptr %0, i64 0, i32 5
  br label %13

13:                                               ; preds = %11, %13
  %14 = phi i64 [ 0, %11 ], [ %17, %13 ]
  %15 = load ptr, ptr %12, align 8, !tbaa !64
  %16 = getelementptr inbounds %struct.ddg_node, ptr %15, i64 %14, i32 7
  store i32 -1, ptr %16, align 8, !tbaa !46
  %17 = add nuw nsw i64 %14, 1
  %18 = load i32, ptr %5, align 8, !tbaa !63
  %19 = sext i32 %18 to i64
  %20 = icmp slt i64 %17, %19
  br i1 %20, label %13, label %21, !llvm.loop !160

21:                                               ; preds = %13, %4
  %22 = getelementptr inbounds %struct.ddg, ptr %0, i64 0, i32 5
  %23 = load ptr, ptr %22, align 8, !tbaa !64
  %24 = sext i32 %1 to i64
  %25 = getelementptr inbounds %struct.ddg_node, ptr %23, i64 %24, i32 7
  store i32 0, ptr %25, align 8, !tbaa !46
  tail call void @sbitmap_zero(ptr noundef %8) #21
  %26 = load ptr, ptr %8, align 8, !tbaa !121
  %27 = icmp eq ptr %26, null
  br i1 %27, label %42, label %28

28:                                               ; preds = %21
  %29 = lshr i32 %1, 6
  %30 = zext nneg i32 %29 to i64
  %31 = getelementptr inbounds %struct.simple_bitmap_def, ptr %8, i64 0, i32 3, i64 %30
  %32 = load i64, ptr %31, align 8, !tbaa !98
  %33 = and i32 %1, 63
  %34 = zext nneg i32 %33 to i64
  %35 = shl nuw i64 1, %34
  %36 = and i64 %32, %35
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %28
  %39 = getelementptr inbounds i8, ptr %26, i64 %30
  %40 = load i8, ptr %39, align 1, !tbaa !46
  %41 = add i8 %40, 1
  store i8 %41, ptr %39, align 1, !tbaa !46
  br label %42

42:                                               ; preds = %21, %28, %38
  %43 = and i32 %1, 63
  %44 = zext nneg i32 %43 to i64
  %45 = shl nuw i64 1, %44
  %46 = lshr i32 %1, 6
  %47 = zext nneg i32 %46 to i64
  %48 = getelementptr inbounds %struct.simple_bitmap_def, ptr %8, i64 0, i32 3, i64 %47
  %49 = load i64, ptr %48, align 8, !tbaa !98
  %50 = or i64 %49, %45
  store i64 %50, ptr %48, align 8, !tbaa !98
  %51 = getelementptr inbounds %struct.simple_bitmap_def, ptr %7, i64 0, i32 2
  %52 = getelementptr inbounds %struct.simple_bitmap_def, ptr %7, i64 0, i32 3
  br label %55

53:                                               ; preds = %102
  %54 = icmp eq i32 %68, 0
  br i1 %54, label %169, label %55, !llvm.loop !161

55:                                               ; preds = %42, %53
  %56 = phi i32 [ 0, %42 ], [ %107, %53 ]
  tail call void @sbitmap_copy(ptr noundef %7, ptr noundef nonnull %8) #21
  tail call void @sbitmap_zero(ptr noundef nonnull %8) #21
  %57 = load i32, ptr %51, align 4, !tbaa !137
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %61, label %59

59:                                               ; preds = %55
  %60 = load i64, ptr %52, align 8, !tbaa !98
  br label %61

61:                                               ; preds = %55, %59
  %62 = phi i64 [ %60, %59 ], [ 0, %55 ]
  br label %63

63:                                               ; preds = %61, %164
  %64 = phi i32 [ %168, %164 ], [ 0, %61 ]
  %65 = phi i32 [ %105, %164 ], [ 0, %61 ]
  %66 = phi i64 [ %167, %164 ], [ %62, %61 ]
  %67 = phi i32 [ %107, %164 ], [ %56, %61 ]
  %68 = phi i32 [ %166, %164 ], [ 0, %61 ]
  %69 = icmp eq i64 %66, 0
  br i1 %69, label %70, label %77

70:                                               ; preds = %63
  %71 = add i32 %65, 1
  %72 = tail call i32 @llvm.umax.i32(i32 %57, i32 %71)
  %73 = add i32 %65, 1
  %74 = icmp ult i32 %73, %57
  br i1 %74, label %87, label %102

75:                                               ; preds = %87
  %76 = shl i32 %88, 6
  br label %77

77:                                               ; preds = %75, %63
  %78 = phi i32 [ %64, %63 ], [ %76, %75 ]
  %79 = phi i32 [ %65, %63 ], [ %88, %75 ]
  %80 = phi i64 [ %66, %63 ], [ %91, %75 ]
  %81 = phi i1 [ %69, %63 ], [ %92, %75 ]
  %82 = and i64 %80, 1
  %83 = icmp eq i64 %82, 0
  br i1 %83, label %93, label %102

84:                                               ; preds = %87
  %85 = add i32 %88, 1
  %86 = icmp ult i32 %85, %57
  br i1 %86, label %87, label %100, !llvm.loop !138

87:                                               ; preds = %70, %84
  %88 = phi i32 [ %85, %84 ], [ %73, %70 ]
  %89 = zext i32 %88 to i64
  %90 = getelementptr inbounds i64, ptr %52, i64 %89
  %91 = load i64, ptr %90, align 8, !tbaa !98
  %92 = icmp eq i64 %91, 0
  br i1 %92, label %84, label %75, !llvm.loop !138

93:                                               ; preds = %77, %93
  %94 = phi i64 [ %97, %93 ], [ %80, %77 ]
  %95 = phi i32 [ %96, %93 ], [ %78, %77 ]
  %96 = add i32 %95, 1
  %97 = lshr exact i64 %94, 1
  %98 = and i64 %94, 2
  %99 = icmp eq i64 %98, 0
  br i1 %99, label %93, label %102, !llvm.loop !139

100:                                              ; preds = %84
  %101 = shl i32 %88, 6
  br label %102

102:                                              ; preds = %93, %100, %70, %77
  %103 = phi i1 [ %81, %77 ], [ %69, %70 ], [ %92, %100 ], [ %81, %93 ]
  %104 = phi i32 [ %78, %77 ], [ %64, %70 ], [ %101, %100 ], [ %96, %93 ]
  %105 = phi i32 [ %79, %77 ], [ %72, %70 ], [ %72, %100 ], [ %79, %93 ]
  %106 = phi i64 [ %80, %77 ], [ %66, %70 ], [ %91, %100 ], [ %97, %93 ]
  %107 = phi i32 [ %78, %77 ], [ %67, %70 ], [ %67, %100 ], [ %96, %93 ]
  br i1 %103, label %53, label %108

108:                                              ; preds = %102
  %109 = load ptr, ptr %22, align 8, !tbaa !64
  %110 = zext i32 %107 to i64
  %111 = getelementptr inbounds %struct.ddg_node, ptr %109, i64 %110, i32 4
  %112 = load ptr, ptr %111, align 8, !tbaa !35
  %113 = icmp eq ptr %112, null
  br i1 %113, label %164, label %114

114:                                              ; preds = %108
  %115 = getelementptr inbounds %struct.ddg_node, ptr %109, i64 %110, i32 7
  br label %116

116:                                              ; preds = %114, %159
  %117 = phi ptr [ %112, %114 ], [ %162, %159 ]
  %118 = phi i32 [ 0, %114 ], [ %160, %159 ]
  %119 = getelementptr inbounds %struct.ddg_edge, ptr %117, i64 0, i32 1
  %120 = load ptr, ptr %119, align 8, !tbaa !91
  %121 = load i32, ptr %120, align 8, !tbaa !66
  %122 = lshr i32 %121, 6
  %123 = zext nneg i32 %122 to i64
  %124 = getelementptr inbounds %struct.simple_bitmap_def, ptr %3, i64 0, i32 3, i64 %123
  %125 = load i64, ptr %124, align 8, !tbaa !98
  %126 = and i32 %121, 63
  %127 = zext nneg i32 %126 to i64
  %128 = shl nuw i64 1, %127
  %129 = and i64 %128, %125
  %130 = icmp eq i64 %129, 0
  br i1 %130, label %159, label %131

131:                                              ; preds = %116
  %132 = getelementptr inbounds %struct.ddg_edge, ptr %117, i64 0, i32 5
  %133 = load i32, ptr %132, align 4, !tbaa !126
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %135, label %159

135:                                              ; preds = %131
  %136 = getelementptr inbounds %struct.ddg_node, ptr %120, i64 0, i32 7
  %137 = load i32, ptr %136, align 8, !tbaa !46
  %138 = load i32, ptr %115, align 8, !tbaa !46
  %139 = getelementptr inbounds %struct.ddg_edge, ptr %117, i64 0, i32 4
  %140 = load i32, ptr %139, align 8, !tbaa !94
  %141 = add nsw i32 %140, %138
  %142 = icmp slt i32 %137, %141
  br i1 %142, label %143, label %159

143:                                              ; preds = %135
  store i32 %141, ptr %136, align 8, !tbaa !46
  %144 = load ptr, ptr %8, align 8, !tbaa !121
  %145 = icmp eq ptr %144, null
  br i1 %145, label %155, label %146

146:                                              ; preds = %143
  %147 = getelementptr inbounds %struct.simple_bitmap_def, ptr %8, i64 0, i32 3, i64 %123
  %148 = load i64, ptr %147, align 8, !tbaa !98
  %149 = and i64 %148, %128
  %150 = icmp eq i64 %149, 0
  br i1 %150, label %151, label %155

151:                                              ; preds = %146
  %152 = getelementptr inbounds i8, ptr %144, i64 %123
  %153 = load i8, ptr %152, align 1, !tbaa !46
  %154 = add i8 %153, 1
  store i8 %154, ptr %152, align 1, !tbaa !46
  br label %155

155:                                              ; preds = %151, %146, %143
  %156 = getelementptr inbounds %struct.simple_bitmap_def, ptr %8, i64 0, i32 3, i64 %123
  %157 = load i64, ptr %156, align 8, !tbaa !98
  %158 = or i64 %157, %128
  store i64 %158, ptr %156, align 8, !tbaa !98
  br label %159

159:                                              ; preds = %155, %135, %131, %116
  %160 = phi i32 [ 1, %155 ], [ %118, %135 ], [ %118, %131 ], [ %118, %116 ]
  %161 = getelementptr inbounds %struct.ddg_edge, ptr %117, i64 0, i32 7
  %162 = load ptr, ptr %161, align 8, !tbaa !35
  %163 = icmp eq ptr %162, null
  br i1 %163, label %164, label %116, !llvm.loop !162

164:                                              ; preds = %159, %108
  %165 = phi i32 [ 0, %108 ], [ %160, %159 ]
  %166 = or i32 %165, %68
  %167 = lshr i64 %106, 1
  %168 = add i32 %104, 1
  br label %63, !llvm.loop !163

169:                                              ; preds = %53
  %170 = load ptr, ptr %22, align 8, !tbaa !64
  %171 = sext i32 %2 to i64
  %172 = getelementptr inbounds %struct.ddg_node, ptr %170, i64 %171, i32 7
  %173 = load i32, ptr %172, align 8, !tbaa !46
  %174 = load ptr, ptr %7, align 8, !tbaa !121
  tail call void @free(ptr noundef %174)
  tail call void @free(ptr noundef %7)
  %175 = load ptr, ptr %8, align 8, !tbaa !121
  tail call void @free(ptr noundef %175)
  tail call void @free(ptr noundef %8)
  ret i32 %173
}

declare void @note_uses(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal void @mark_mem_use_1(ptr noundef %0, ptr noundef %1) #9 !prof !34 {
  %3 = tail call i32 @for_each_rtx(ptr noundef %0, ptr noundef nonnull @mark_mem_use, ptr noundef %1) #21
  ret void
}

declare i32 @for_each_rtx(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable
define internal noundef i32 @mark_mem_use(ptr nocapture noundef readonly %0, ptr nocapture readnone %1) #13 !prof !34 {
  %3 = load ptr, ptr %0, align 8, !tbaa !35
  %4 = load i32, ptr %3, align 8
  %5 = and i32 %4, 65535
  %6 = icmp eq i32 %5, 43
  br i1 %6, label %7, label %8

7:                                                ; preds = %2
  store i1 true, ptr @mem_ref_p, align 1
  br label %8

8:                                                ; preds = %7, %2
  ret i32 0
}

declare void @note_stores(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: read, inaccessiblemem: none) uwtable
define internal void @mark_mem_store(ptr nocapture noundef readonly %0, ptr nocapture readnone %1, ptr nocapture readnone %2) #14 !prof !34 {
  %4 = load i32, ptr %0, align 8
  %5 = and i32 %4, 65535
  %6 = icmp eq i32 %5, 43
  br i1 %6, label %7, label %8

7:                                                ; preds = %3
  store i1 true, ptr @mem_ref_p, align 1
  br label %8

8:                                                ; preds = %7, %3
  ret void
}

declare void @init_deps_global() local_unnamed_addr #3

declare void @init_deps(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

declare void @get_ebb_head_tail(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @sched_analyze(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define internal fastcc zeroext i8 @sd_iterator_cond(ptr noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #2 !prof !34 {
  %3 = alloca ptr, align 8
  %4 = getelementptr inbounds %struct._sd_iterator, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !95
  %6 = load ptr, ptr %5, align 8, !tbaa !35
  %7 = icmp eq ptr %6, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %2
  %9 = load ptr, ptr %6, align 8, !tbaa !164
  %10 = getelementptr inbounds %struct._dep_node, ptr %9, i64 0, i32 1
  br label %24

11:                                               ; preds = %2
  %12 = load i32, ptr %0, align 8, !tbaa !166
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %24, label %14

14:                                               ; preds = %11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #21
  %15 = getelementptr inbounds %struct._sd_iterator, ptr %0, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !167
  %17 = getelementptr inbounds %struct._sd_iterator, ptr %0, i64 0, i32 3
  call void @sd_next_list(ptr noundef %16, ptr noundef nonnull %0, ptr noundef nonnull %3, ptr noundef nonnull %17) #21
  %18 = load ptr, ptr %3, align 8, !tbaa !35
  store ptr %18, ptr %4, align 8, !tbaa !95
  %19 = icmp eq ptr %18, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %14
  %21 = call fastcc zeroext i8 @sd_iterator_cond(ptr noundef nonnull %0, ptr noundef %1)
  br label %22

22:                                               ; preds = %14, %20
  %23 = phi i8 [ %21, %20 ], [ undef, %14 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #21
  br i1 %19, label %24, label %27

24:                                               ; preds = %11, %22, %8
  %25 = phi ptr [ %10, %8 ], [ null, %22 ], [ null, %11 ]
  %26 = phi i8 [ 1, %8 ], [ 0, %22 ], [ 0, %11 ]
  store ptr %25, ptr %1, align 8, !tbaa !35
  br label %27

27:                                               ; preds = %24, %22
  %28 = phi i8 [ %23, %22 ], [ %26, %24 ]
  ret i8 %28
}

declare void @finish_deps_global() local_unnamed_addr #3

declare void @free_deps(ptr noundef) local_unnamed_addr #3

declare void @sched_free_deps(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

declare void @sd_next_list(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @single_set_2(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @df_bb_regno_first_def_find(ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @bitmap_bit_p(ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @dep_cost(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc void @add_edge_to_ddg(ptr noundef %0) unnamed_addr #9 !prof !34 {
  %2 = load ptr, ptr %0, align 8, !tbaa !89
  %3 = getelementptr inbounds %struct.ddg_edge, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !91
  %5 = getelementptr inbounds %struct.ddg_node, ptr %2, i64 0, i32 5
  %6 = load ptr, ptr %5, align 8, !tbaa !68
  %7 = icmp eq ptr %6, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.ddg_node, ptr %4, i64 0, i32 6
  %10 = load ptr, ptr %9, align 8, !tbaa !69
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %8, %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 702, ptr noundef nonnull @.str.1) #21
  br label %13

13:                                               ; preds = %8, %12
  %14 = load ptr, ptr %5, align 8, !tbaa !68
  %15 = load i32, ptr %4, align 8, !tbaa !66
  %16 = load ptr, ptr %14, align 8, !tbaa !121
  %17 = icmp eq ptr %16, null
  br i1 %17, label %32, label %18

18:                                               ; preds = %13
  %19 = lshr i32 %15, 6
  %20 = zext nneg i32 %19 to i64
  %21 = getelementptr inbounds %struct.simple_bitmap_def, ptr %14, i64 0, i32 3, i64 %20
  %22 = load i64, ptr %21, align 8, !tbaa !98
  %23 = and i32 %15, 63
  %24 = zext nneg i32 %23 to i64
  %25 = shl nuw i64 1, %24
  %26 = and i64 %22, %25
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %18
  %29 = getelementptr inbounds i8, ptr %16, i64 %20
  %30 = load i8, ptr %29, align 1, !tbaa !46
  %31 = add i8 %30, 1
  store i8 %31, ptr %29, align 1, !tbaa !46
  br label %32

32:                                               ; preds = %13, %18, %28
  %33 = and i32 %15, 63
  %34 = zext nneg i32 %33 to i64
  %35 = shl nuw i64 1, %34
  %36 = lshr i32 %15, 6
  %37 = zext nneg i32 %36 to i64
  %38 = getelementptr inbounds %struct.simple_bitmap_def, ptr %14, i64 0, i32 3, i64 %37
  %39 = load i64, ptr %38, align 8, !tbaa !98
  %40 = or i64 %39, %35
  store i64 %40, ptr %38, align 8, !tbaa !98
  %41 = getelementptr inbounds %struct.ddg_node, ptr %4, i64 0, i32 6
  %42 = load ptr, ptr %41, align 8, !tbaa !69
  %43 = load i32, ptr %2, align 8, !tbaa !66
  %44 = load ptr, ptr %42, align 8, !tbaa !121
  %45 = icmp eq ptr %44, null
  br i1 %45, label %60, label %46

46:                                               ; preds = %32
  %47 = lshr i32 %43, 6
  %48 = zext nneg i32 %47 to i64
  %49 = getelementptr inbounds %struct.simple_bitmap_def, ptr %42, i64 0, i32 3, i64 %48
  %50 = load i64, ptr %49, align 8, !tbaa !98
  %51 = and i32 %43, 63
  %52 = zext nneg i32 %51 to i64
  %53 = shl nuw i64 1, %52
  %54 = and i64 %50, %53
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %46
  %57 = getelementptr inbounds i8, ptr %44, i64 %48
  %58 = load i8, ptr %57, align 1, !tbaa !46
  %59 = add i8 %58, 1
  store i8 %59, ptr %57, align 1, !tbaa !46
  br label %60

60:                                               ; preds = %32, %46, %56
  %61 = and i32 %43, 63
  %62 = zext nneg i32 %61 to i64
  %63 = shl nuw i64 1, %62
  %64 = lshr i32 %43, 6
  %65 = zext nneg i32 %64 to i64
  %66 = getelementptr inbounds %struct.simple_bitmap_def, ptr %42, i64 0, i32 3, i64 %65
  %67 = load i64, ptr %66, align 8, !tbaa !98
  %68 = or i64 %67, %63
  store i64 %68, ptr %66, align 8, !tbaa !98
  %69 = getelementptr inbounds %struct.ddg_node, ptr %4, i64 0, i32 3
  %70 = load ptr, ptr %69, align 8, !tbaa !168
  %71 = getelementptr inbounds %struct.ddg_edge, ptr %0, i64 0, i32 6
  store ptr %70, ptr %71, align 8, !tbaa !169
  store ptr %0, ptr %69, align 8, !tbaa !168
  %72 = getelementptr inbounds %struct.ddg_node, ptr %2, i64 0, i32 4
  %73 = load ptr, ptr %72, align 8, !tbaa !118
  %74 = getelementptr inbounds %struct.ddg_edge, ptr %0, i64 0, i32 7
  store ptr %73, ptr %74, align 8, !tbaa !119
  store ptr %0, ptr %72, align 8, !tbaa !118
  ret void
}

; Function Attrs: cold nofree nosync nounwind memory(read, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @rtx_mem_access_p(ptr noundef readonly %0) unnamed_addr #15 !prof !34 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %46, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8
  %5 = and i32 %4, 65535
  %6 = icmp eq i32 %5, 43
  br i1 %6, label %46, label %7

7:                                                ; preds = %3
  %8 = zext nneg i32 %5 to i64
  %9 = getelementptr inbounds [139 x ptr], ptr @rtx_format, i64 0, i64 %8
  %10 = load ptr, ptr %9, align 8, !tbaa !35
  %11 = getelementptr inbounds [139 x i8], ptr @rtx_length, i64 0, i64 %8
  %12 = load i8, ptr %11, align 1, !tbaa !46
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %46, label %14

14:                                               ; preds = %7
  %15 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %16 = zext i8 %12 to i64
  br label %17

17:                                               ; preds = %14, %44
  %18 = phi i64 [ %16, %14 ], [ %19, %44 ]
  %19 = add nsw i64 %18, -1
  %20 = getelementptr inbounds i8, ptr %10, i64 %19
  %21 = load i8, ptr %20, align 1, !tbaa !46
  switch i8 %21, label %44 [
    i8 101, label %29
    i8 69, label %22
  ]

22:                                               ; preds = %17
  %23 = getelementptr inbounds [1 x %union.rtunion_def], ptr %15, i64 0, i64 %19
  %24 = load ptr, ptr %23, align 8, !tbaa !46
  %25 = load i32, ptr %24, align 8, !tbaa !170
  %26 = icmp sgt i32 %25, 0
  br i1 %26, label %27, label %44

27:                                               ; preds = %22
  %28 = zext nneg i32 %25 to i64
  br label %38

29:                                               ; preds = %17
  %30 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %31 = getelementptr inbounds [1 x %union.rtunion_def], ptr %30, i64 0, i64 %19
  %32 = load ptr, ptr %31, align 8, !tbaa !46
  %33 = tail call fastcc zeroext i8 @rtx_mem_access_p(ptr noundef %32), !range !80
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %44, label %46

35:                                               ; preds = %38
  %36 = add nuw nsw i64 %39, 1
  %37 = icmp eq i64 %36, %28
  br i1 %37, label %44, label %38, !llvm.loop !172

38:                                               ; preds = %27, %35
  %39 = phi i64 [ 0, %27 ], [ %36, %35 ]
  %40 = getelementptr inbounds %struct.rtvec_def, ptr %24, i64 0, i32 1, i64 %39
  %41 = load ptr, ptr %40, align 8, !tbaa !35
  %42 = tail call fastcc zeroext i8 @rtx_mem_access_p(ptr noundef %41), !range !80
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %35, label %46

44:                                               ; preds = %35, %22, %17, %29
  %45 = icmp sgt i64 %18, 1
  br i1 %45, label %17, label %46, !llvm.loop !173

46:                                               ; preds = %29, %44, %38, %7, %3, %1
  %47 = phi i8 [ 0, %1 ], [ 1, %3 ], [ 0, %7 ], [ 1, %38 ], [ 0, %44 ], [ 1, %29 ]
  ret i8 %47
}

declare zeroext i8 @insn_alias_sets_conflict_p(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc void @create_ddg_dep_no_link(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #9 !prof !34 {
  %6 = alloca %struct._dep, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #21
  %7 = getelementptr inbounds %struct.ddg_node, ptr %2, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !71
  %9 = load i32, ptr %8, align 8
  %10 = and i32 %9, 65535
  %11 = icmp ne i32 %10, 7
  %12 = icmp eq i32 %3, 2
  %13 = or i1 %12, %11
  br i1 %13, label %15, label %14

14:                                               ; preds = %5
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 215, ptr noundef nonnull @.str.1) #21
  br label %15

15:                                               ; preds = %5, %14
  %16 = getelementptr inbounds %struct.ddg_node, ptr %1, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !71
  %18 = load i32, ptr %17, align 8
  %19 = and i32 %18, 65535
  %20 = icmp ne i32 %19, 7
  %21 = or i1 %12, %20
  br i1 %21, label %23, label %22

22:                                               ; preds = %15
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 216, ptr noundef nonnull @.str.1) #21
  br label %23

23:                                               ; preds = %15, %22
  %24 = icmp eq i32 %3, 1
  %25 = select i1 %24, i32 11, i32 0
  %26 = select i1 %12, i32 12, i32 %25
  %27 = load ptr, ptr %16, align 8, !tbaa !71
  %28 = load ptr, ptr %7, align 8, !tbaa !71
  call void @init_dep(ptr noundef nonnull %6, ptr noundef %27, ptr noundef %28, i32 noundef %26) #21
  %29 = call i32 @dep_cost(ptr noundef nonnull %6) #21
  %30 = call ptr @xmalloc(i64 noundef 56) #21
  store ptr %1, ptr %30, align 8, !tbaa !89
  %31 = getelementptr inbounds %struct.ddg_edge, ptr %30, i64 0, i32 1
  store ptr %2, ptr %31, align 8, !tbaa !91
  %32 = getelementptr inbounds %struct.ddg_edge, ptr %30, i64 0, i32 2
  store i32 %3, ptr %32, align 8, !tbaa !92
  %33 = getelementptr inbounds %struct.ddg_edge, ptr %30, i64 0, i32 3
  store i32 %4, ptr %33, align 4, !tbaa !93
  %34 = getelementptr inbounds %struct.ddg_edge, ptr %30, i64 0, i32 4
  store i32 %29, ptr %34, align 8, !tbaa !94
  %35 = getelementptr inbounds %struct.ddg_edge, ptr %30, i64 0, i32 5
  store i32 1, ptr %35, align 4, !tbaa !126
  %36 = getelementptr inbounds %struct.ddg_edge, ptr %30, i64 0, i32 6
  %37 = getelementptr inbounds %struct.ddg, ptr %0, i64 0, i32 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %36, i8 0, i64 24, i1 false)
  %38 = load i32, ptr %37, align 4, !tbaa !124
  %39 = shl i32 %38, 3
  %40 = add i32 %39, 8
  call fastcc void @add_edge_to_ddg(ptr noundef nonnull %30)
  %41 = getelementptr inbounds %struct.ddg, ptr %0, i64 0, i32 9
  %42 = load ptr, ptr %41, align 8, !tbaa !125
  %43 = sext i32 %40 to i64
  %44 = call ptr @xrealloc(ptr noundef %42, i64 noundef %43) #21
  store ptr %44, ptr %41, align 8, !tbaa !125
  %45 = load i32, ptr %37, align 4, !tbaa !124
  %46 = add nsw i32 %45, 1
  store i32 %46, ptr %37, align 4, !tbaa !124
  %47 = sext i32 %45 to i64
  %48 = getelementptr inbounds ptr, ptr %44, i64 %47
  store ptr %30, ptr %48, align 8, !tbaa !35
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #21
  ret void
}

declare void @init_dep(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @xrealloc(ptr noundef, i64 noundef) local_unnamed_addr #3

declare void @spec_qsort(ptr noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define internal i32 @compare_sccs(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #16 !prof !34 {
  %3 = load ptr, ptr %0, align 8, !tbaa !35
  %4 = getelementptr inbounds %struct.ddg_scc, ptr %3, i64 0, i32 3
  %5 = load i32, ptr %4, align 4, !tbaa !151
  %6 = load ptr, ptr %1, align 8, !tbaa !35
  %7 = getelementptr inbounds %struct.ddg_scc, ptr %6, i64 0, i32 3
  %8 = load i32, ptr %7, align 4, !tbaa !151
  %9 = icmp sgt i32 %8, %5
  %10 = zext i1 %9 to i32
  %11 = icmp slt i32 %8, %5
  %12 = sext i1 %11 to i32
  %13 = add nsw i32 %12, %10
  ret i32 %13
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #17

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #17

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #18

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #19

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #20

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #19

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
attributes #10 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { cold nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { cold nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { cold nofree nosync nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nofree nounwind }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #19 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #20 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #21 = { nounwind }

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
!54 = !{!55, !36, i64 0}
!55 = !{!"ddg", !36, i64 0, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !36, i64 24, !36, i64 32, !41, i64 40, !41, i64 44, !36, i64 48}
!56 = !{!55, !41, i64 40}
!57 = !{!58, !36, i64 8}
!58 = !{!"rtl_bb_info", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !41, i64 32}
!59 = !{!55, !41, i64 20}
!60 = !{!55, !41, i64 12}
!61 = !{!55, !41, i64 16}
!62 = distinct !{!62, !52, !53}
!63 = !{!55, !41, i64 8}
!64 = !{!55, !36, i64 24}
!65 = !{!55, !36, i64 32}
!66 = !{!67, !41, i64 0}
!67 = !{!"ddg_node", !41, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !37, i64 56}
!68 = !{!67, !36, i64 40}
!69 = !{!67, !36, i64 48}
!70 = !{!67, !36, i64 16}
!71 = !{!67, !36, i64 8}
!72 = distinct !{!72, !52, !53}
!73 = !{i64 0, i64 4, !50, i64 8, i64 8, !35, i64 16, i64 8, !35, i64 24, i64 1, !46}
!74 = !{i64 0, i64 8, !35, i64 8, i64 8, !35, i64 16, i64 1, !46}
!75 = !{i64 0, i64 8, !35, i64 8, i64 1, !46}
!76 = !{i64 0, i64 1, !46}
!77 = !{!78, !36, i64 0}
!78 = !{!"_dep", !36, i64 0, !36, i64 8, !41, i64 16, !41, i64 20}
!79 = distinct !{!79, !52, !53}
!80 = !{i8 0, i8 2}
!81 = !{!78, !41, i64 16}
!82 = !{!83, !41, i64 80}
!83 = !{!"basic_block_def", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !36, i64 48, !36, i64 56, !37, i64 64, !42, i64 72, !41, i64 80, !41, i64 84, !41, i64 88, !41, i64 92, !41, i64 96}
!84 = !{!85, !41, i64 16}
!85 = !{!"dataflow", !36, i64 0, !36, i64 8, !41, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !41, i64 48, !37, i64 52, !37, i64 53, !37, i64 54}
!86 = !{!85, !36, i64 8}
!87 = !{!88, !36, i64 16}
!88 = !{!"df_rd_bb_info", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32}
!89 = !{!90, !36, i64 0}
!90 = !{!"ddg_edge", !36, i64 0, !36, i64 8, !41, i64 16, !41, i64 20, !41, i64 24, !41, i64 28, !36, i64 32, !36, i64 40, !37, i64 48}
!91 = !{!90, !36, i64 8}
!92 = !{!90, !41, i64 16}
!93 = !{!90, !41, i64 20}
!94 = !{!90, !41, i64 24}
!95 = !{!96, !36, i64 16}
!96 = !{!"_sd_iterator", !41, i64 0, !36, i64 8, !36, i64 16, !37, i64 24}
!97 = distinct !{!97, !52, !53}
!98 = !{!42, !42, i64 0}
!99 = distinct !{!99, !52, !53}
!100 = distinct !{!100, !52, !53}
!101 = !{!102, !36, i64 0}
!102 = !{!"bitmap_head_def", !36, i64 0, !36, i64 8, !41, i64 16, !36, i64 24}
!103 = !{!104, !41, i64 16}
!104 = !{!"bitmap_element_def", !36, i64 0, !36, i64 8, !41, i64 16, !37, i64 24}
!105 = distinct !{!105, !52, !53}
!106 = distinct !{!106, !52, !53}
!107 = !{!104, !36, i64 0}
!108 = distinct !{!108, !53}
!109 = !{!110, !36, i64 136}
!110 = !{!"df", !37, i64 0, !37, i64 64, !36, i64 128, !111, i64 136, !111, i64 176, !36, i64 216, !36, i64 224, !36, i64 232, !41, i64 240, !41, i64 244, !36, i64 248, !41, i64 256, !41, i64 260, !36, i64 264, !36, i64 272, !36, i64 280, !36, i64 288, !36, i64 296, !36, i64 304, !36, i64 312, !36, i64 320, !36, i64 328, !36, i64 336, !41, i64 344, !41, i64 348, !36, i64 352, !41, i64 360, !41, i64 364, !37, i64 365, !37, i64 366}
!111 = !{!"df_ref_info", !36, i64 0, !36, i64 8, !36, i64 16, !41, i64 24, !41, i64 28, !41, i64 32, !41, i64 36}
!112 = !{!113, !36, i64 0}
!113 = !{!"df_insn_info", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !41, i64 40}
!114 = !{!115, !36, i64 0}
!115 = !{!"df_link", !36, i64 0, !36, i64 8}
!116 = distinct !{!116, !52, !53}
!117 = distinct !{!117, !52, !53}
!118 = !{!67, !36, i64 32}
!119 = !{!90, !36, i64 40}
!120 = distinct !{!120, !52, !53}
!121 = !{!122, !36, i64 0}
!122 = !{!"simple_bitmap_def", !36, i64 0, !41, i64 8, !41, i64 12, !37, i64 16}
!123 = distinct !{!123, !52, !53}
!124 = !{!55, !41, i64 44}
!125 = !{!55, !36, i64 48}
!126 = !{!90, !41, i64 28}
!127 = distinct !{!127, !52, !53}
!128 = distinct !{!128, !52, !53}
!129 = distinct !{!129, !52, !53}
!130 = distinct !{!130, !52, !53}
!131 = distinct !{!131, !52, !53}
!132 = !{!133, !41, i64 8}
!133 = !{!"ddg_all_sccs", !36, i64 0, !41, i64 8, !36, i64 16}
!134 = !{!133, !36, i64 0}
!135 = !{!136, !36, i64 0}
!136 = !{!"ddg_scc", !36, i64 0, !36, i64 8, !41, i64 16, !41, i64 20}
!137 = !{!122, !41, i64 12}
!138 = distinct !{!138, !52, !53}
!139 = distinct !{!139, !52, !53}
!140 = distinct !{!140, !52, !53}
!141 = distinct !{!141, !52, !53}
!142 = distinct !{!142, !52, !53}
!143 = distinct !{!143, !52, !53}
!144 = !{!133, !36, i64 16}
!145 = !{i32 0, i32 256}
!146 = !{!136, !36, i64 8}
!147 = !{!136, !41, i64 16}
!148 = distinct !{!148, !52, !53}
!149 = distinct !{!149, !52, !53}
!150 = distinct !{!150, !52, !53}
!151 = !{!136, !41, i64 20}
!152 = distinct !{!152, !52, !53}
!153 = distinct !{!153, !52, !53}
!154 = distinct !{!154, !52, !53}
!155 = distinct !{!155, !52, !53}
!156 = distinct !{!156, !52, !53}
!157 = distinct !{!157, !52, !53}
!158 = distinct !{!158, !52, !53}
!159 = distinct !{!159, !52, !53}
!160 = distinct !{!160, !52, !53}
!161 = distinct !{!161, !52, !53}
!162 = distinct !{!162, !52, !53}
!163 = distinct !{!163, !52, !53}
!164 = !{!165, !36, i64 0}
!165 = !{!"_dep_link", !36, i64 0, !36, i64 8, !36, i64 16}
!166 = !{!96, !41, i64 0}
!167 = !{!96, !36, i64 8}
!168 = !{!67, !36, i64 24}
!169 = !{!90, !36, i64 32}
!170 = !{!171, !41, i64 0}
!171 = !{!"rtvec_def", !41, i64 0, !37, i64 8}
!172 = distinct !{!172, !52, !53}
!173 = distinct !{!173, !52, !53}
