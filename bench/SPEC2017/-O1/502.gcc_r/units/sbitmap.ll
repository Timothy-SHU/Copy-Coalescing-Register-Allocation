; ModuleID = 'sbitmap.c'
source_filename = "sbitmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, [1 x i8], ptr, i64, ptr, ptr, ptr, ptr, i64, i32, [20 x i8] }
%struct.simple_bitmap_def = type { ptr, i32, i32, [1 x i64] }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.control_flow_graph = type { ptr, ptr, ptr, i32, i32, i32, ptr, i32, [2 x i32], [2 x i32], i32, i32 }
%struct.VEC_basic_block_base = type { i32, i32, [1 x ptr] }
%struct.basic_block_def = type { ptr, ptr, ptr, ptr, [2 x ptr], ptr, ptr, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%union.basic_block_il_dependent = type { ptr }
%struct.VEC_edge_base = type { i32, i32, [1 x ptr] }
%struct.edge_def = type { ptr, ptr, %union.edge_def_insns, ptr, ptr, i32, i32, i32, i32, i64 }
%union.edge_def_insns = type { ptr }

@stdout = external local_unnamed_addr global ptr, align 8
@stdin = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [10 x i8] c"sbitmap.c\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@cfun = external local_unnamed_addr global ptr, align 8
@.str.2 = private unnamed_addr constant [3 x i8] c"  \00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"n_bits = %d, set = {\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"\0A  \00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"}\0A\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.10 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"%s %d\0A\00", align 1
@popcount_table = internal unnamed_addr constant [256 x i8] c"\00\01\01\02\01\02\02\03\01\02\02\03\02\03\03\04\01\02\02\03\02\03\03\04\02\03\03\04\03\04\04\05\01\02\02\03\02\03\03\04\02\03\03\04\03\04\04\05\02\03\03\04\03\04\04\05\03\04\04\05\04\05\05\06\01\02\02\03\02\03\03\04\02\03\03\04\03\04\04\05\02\03\03\04\03\04\04\05\03\04\04\05\04\05\05\06\02\03\03\04\03\04\04\05\03\04\04\05\04\05\05\06\03\04\04\05\04\05\05\06\04\05\05\06\05\06\06\07\01\02\02\03\02\03\03\04\02\03\03\04\03\04\04\05\02\03\03\04\03\04\04\05\03\04\04\05\04\05\05\06\02\03\03\04\03\04\04\05\03\04\04\05\04\05\05\06\03\04\04\05\04\05\05\06\04\05\05\06\05\06\06\07\02\03\03\04\03\04\04\05\03\04\04\05\04\05\05\06\03\04\04\05\04\05\05\06\04\05\05\06\05\06\06\07\03\04\04\05\04\05\05\06\04\05\05\06\05\06\06\07\04\05\05\06\05\06\06\07\05\06\06\07\06\07\07\08", align 16

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @vprintf(ptr noalias nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 !prof !38 {
  %3 = load ptr, ptr @stdout, align 8, !tbaa !39
  %4 = tail call i32 @vfprintf(ptr noundef %3, ptr noundef %0, ptr noundef %1)
  ret i32 %4
}

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @getchar() local_unnamed_addr #0 !prof !38 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !39
  %2 = tail call i32 @getc(ptr noundef %1)
  ret i32 %2
}

; Function Attrs: nofree nounwind
declare noundef i32 @getc(ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !38 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !48
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !49

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #29
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !43
  %11 = load i8, ptr %3, align 1, !tbaa !50
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

declare i32 @__uflow(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !38 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !48
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !49

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #29
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !43
  %11 = load i8, ptr %3, align 1, !tbaa !50
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #2 !prof !38 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !39
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !48
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !49

7:                                                ; preds = %0
  %8 = tail call i32 @__uflow(ptr noundef %1) #29
  br label %13

9:                                                ; preds = %0
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !43
  %11 = load i8, ptr %3, align 1, !tbaa !50
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @putchar(i32 noundef %0) local_unnamed_addr #0 !prof !38 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !39
  %3 = tail call i32 @putc(i32 noundef %0, ptr noundef %2)
  ret i32 %3
}

; Function Attrs: nofree nounwind
declare noundef i32 @putc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !38 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !51
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !52
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !49

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #29
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !51
  store i8 %12, ptr %4, align 1, !tbaa !50
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

declare i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !38 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !51
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !52
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !49

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #29
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !51
  store i8 %12, ptr %4, align 1, !tbaa !50
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 noundef %0) local_unnamed_addr #2 !prof !38 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !39
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !51
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !52
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !49

8:                                                ; preds = %1
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %2, i32 noundef %9) #29
  br label %15

11:                                               ; preds = %1
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !51
  store i8 %12, ptr %4, align 1, !tbaa !50
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i64 @getline(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 !prof !38 {
  %4 = tail call i64 @__getdelim(ptr noundef %0, ptr noundef %1, i32 noundef 10, ptr noundef %2) #29
  ret i64 %4
}

declare i64 @__getdelim(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @feof_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !38 {
  %2 = load i32, ptr %0, align 8, !tbaa !53
  %3 = lshr i32 %2, 4
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @ferror_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !38 {
  %2 = load i32, ptr %0, align 8, !tbaa !53
  %3 = lshr i32 %2, 5
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @tolower(i32 noundef %0) local_unnamed_addr #5 !prof !38 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_tolower_loc() #29
  %6 = load ptr, ptr %5, align 8, !tbaa !39
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !54
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_tolower_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @toupper(i32 noundef %0) local_unnamed_addr #5 !prof !38 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_toupper_loc() #29
  %6 = load ptr, ptr %5, align 8, !tbaa !39
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !54
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_toupper_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i32 @atoi(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !38 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  %3 = trunc i64 %2 to i32
  ret i32 %3
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atol(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !38 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atoll(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !38 {
  %2 = tail call i64 @strtoll(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtoll(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local noundef ptr @bsearch(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #2 !prof !38 {
  %6 = icmp eq i64 %2, 0
  br i1 %6, label %24, label %7

7:                                                ; preds = %5, %20
  %8 = phi i64 [ %22, %20 ], [ 0, %5 ]
  %9 = phi i64 [ %21, %20 ], [ %2, %5 ]
  %10 = add i64 %8, %9
  %11 = lshr i64 %10, 1
  %12 = mul i64 %11, %3
  %13 = getelementptr inbounds i8, ptr %1, i64 %12
  %14 = tail call i32 %4(ptr noundef %0, ptr noundef %13) #29
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
  br i1 %23, label %7, label %24, !llvm.loop !55

24:                                               ; preds = %16, %20, %5
  %25 = phi ptr [ null, %5 ], [ %13, %16 ], [ null, %20 ]
  ret ptr %25
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local double @atof(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !38 {
  %2 = tail call double @strtod(ptr nocapture noundef %0, ptr noundef null)
  ret double %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: inlinehint nounwind uwtable
define dso_local noundef ptr @sbitmap_alloc(i32 noundef %0) local_unnamed_addr #8 !prof !58 {
  %2 = add i32 %0, 63
  %3 = lshr i32 %2, 6
  %4 = shl nuw nsw i32 %3, 3
  %5 = add nuw nsw i32 %4, 16
  %6 = zext nneg i32 %5 to i64
  %7 = tail call ptr @xmalloc(i64 noundef %6) #29
  %8 = getelementptr inbounds %struct.simple_bitmap_def, ptr %7, i64 0, i32 1
  store i32 %0, ptr %8, align 8, !tbaa !59
  %9 = getelementptr inbounds %struct.simple_bitmap_def, ptr %7, i64 0, i32 2
  store i32 %3, ptr %9, align 4, !tbaa !61
  store ptr null, ptr %7, align 8, !tbaa !62
  ret ptr %7
}

declare ptr @xmalloc(i64 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local noundef ptr @sbitmap_alloc_with_popcount(i32 noundef %0) local_unnamed_addr #9 !prof !38 {
  %2 = add i32 %0, 63
  %3 = lshr i32 %2, 6
  %4 = shl nuw nsw i32 %3, 3
  %5 = add nuw nsw i32 %4, 16
  %6 = zext nneg i32 %5 to i64
  %7 = tail call ptr @xmalloc(i64 noundef %6) #29
  %8 = getelementptr inbounds %struct.simple_bitmap_def, ptr %7, i64 0, i32 1
  store i32 %0, ptr %8, align 8, !tbaa !59
  %9 = getelementptr inbounds %struct.simple_bitmap_def, ptr %7, i64 0, i32 2
  store i32 %3, ptr %9, align 4, !tbaa !61
  store ptr null, ptr %7, align 8, !tbaa !62
  %10 = zext nneg i32 %3 to i64
  %11 = tail call ptr @xmalloc(i64 noundef %10) #29
  store ptr %11, ptr %7, align 8, !tbaa !62
  ret ptr %7
}

; Function Attrs: cold nounwind uwtable
define dso_local noundef ptr @sbitmap_resize(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #9 !prof !38 {
  %4 = add i32 %1, 63
  %5 = lshr i32 %4, 6
  %6 = zext nneg i32 %5 to i64
  %7 = shl nuw nsw i32 %5, 3
  %8 = zext nneg i32 %7 to i64
  %9 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 2
  %10 = load i32, ptr %9, align 4, !tbaa !61
  %11 = zext i32 %10 to i64
  %12 = shl nuw nsw i64 %11, 3
  %13 = icmp ult i64 %12, %8
  br i1 %13, label %14, label %22

14:                                               ; preds = %3
  %15 = add nuw nsw i32 %7, 16
  %16 = zext nneg i32 %15 to i64
  %17 = tail call ptr @xrealloc(ptr noundef %0, i64 noundef %16) #29
  %18 = load ptr, ptr %17, align 8, !tbaa !62
  %19 = icmp eq ptr %18, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %14
  %21 = tail call ptr @xrealloc(ptr noundef nonnull %18, i64 noundef %6) #29
  store ptr %21, ptr %17, align 8, !tbaa !62
  br label %22

22:                                               ; preds = %14, %20, %3
  %23 = phi ptr [ %17, %20 ], [ %17, %14 ], [ %0, %3 ]
  %24 = getelementptr inbounds %struct.simple_bitmap_def, ptr %23, i64 0, i32 1
  %25 = load i32, ptr %24, align 8, !tbaa !59
  %26 = icmp ult i32 %25, %1
  br i1 %26, label %27, label %71

27:                                               ; preds = %22
  %28 = icmp eq i32 %2, 0
  %29 = getelementptr inbounds %struct.simple_bitmap_def, ptr %23, i64 0, i32 3
  %30 = getelementptr inbounds %struct.simple_bitmap_def, ptr %23, i64 0, i32 2
  %31 = load i32, ptr %30, align 4, !tbaa !61
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds i64, ptr %29, i64 %32
  %34 = shl nuw nsw i64 %32, 3
  %35 = sub nsw i64 %8, %34
  br i1 %28, label %63, label %36

36:                                               ; preds = %27
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %33, i8 -1, i64 %35, i1 false)
  %37 = load i32, ptr %24, align 8, !tbaa !59
  %38 = and i32 %37, 63
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %51, label %40

40:                                               ; preds = %36
  %41 = sub nuw nsw i32 64, %38
  %42 = zext nneg i32 %41 to i64
  %43 = lshr i64 -1, %42
  %44 = xor i64 %43, -1
  %45 = load i32, ptr %30, align 4, !tbaa !61
  %46 = add i32 %45, -1
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds %struct.simple_bitmap_def, ptr %23, i64 0, i32 3, i64 %47
  %49 = load i64, ptr %48, align 8, !tbaa !63
  %50 = or i64 %49, %44
  store i64 %50, ptr %48, align 8, !tbaa !63
  br label %51

51:                                               ; preds = %40, %36
  %52 = and i32 %1, 63
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %105, label %54

54:                                               ; preds = %51
  %55 = sub nuw nsw i32 64, %52
  %56 = zext nneg i32 %55 to i64
  %57 = lshr i64 -1, %56
  %58 = add nsw i32 %5, -1
  %59 = zext i32 %58 to i64
  %60 = getelementptr inbounds %struct.simple_bitmap_def, ptr %23, i64 0, i32 3, i64 %59
  %61 = load i64, ptr %60, align 8, !tbaa !63
  %62 = and i64 %61, %57
  store i64 %62, ptr %60, align 8, !tbaa !63
  br label %105

63:                                               ; preds = %27
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %33, i8 0, i64 %35, i1 false)
  %64 = load ptr, ptr %23, align 8, !tbaa !62
  %65 = icmp eq ptr %64, null
  br i1 %65, label %105, label %66

66:                                               ; preds = %63
  %67 = load i32, ptr %30, align 4, !tbaa !61
  %68 = zext i32 %67 to i64
  %69 = getelementptr inbounds i8, ptr %64, i64 %68
  %70 = sub nsw i64 %6, %68
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %69, i8 0, i64 %70, i1 false)
  br label %105

71:                                               ; preds = %22
  %72 = icmp ugt i32 %25, %1
  br i1 %72, label %73, label %105

73:                                               ; preds = %71
  %74 = and i32 %1, 63
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %105, label %76

76:                                               ; preds = %73
  %77 = sub nuw nsw i32 64, %74
  %78 = zext nneg i32 %77 to i64
  %79 = lshr i64 -1, %78
  %80 = add nsw i32 %5, -1
  %81 = zext i32 %80 to i64
  %82 = getelementptr inbounds %struct.simple_bitmap_def, ptr %23, i64 0, i32 3, i64 %81
  %83 = load i64, ptr %82, align 8, !tbaa !63
  %84 = and i64 %83, %79
  store i64 %84, ptr %82, align 8, !tbaa !63
  %85 = load ptr, ptr %23, align 8, !tbaa !62
  %86 = icmp eq ptr %85, null
  br i1 %86, label %105, label %87

87:                                               ; preds = %76
  %88 = icmp eq i64 %84, 0
  br i1 %88, label %102, label %89

89:                                               ; preds = %87, %89
  %90 = phi i64 [ %98, %89 ], [ 0, %87 ]
  %91 = phi i64 [ %97, %89 ], [ 0, %87 ]
  %92 = lshr i64 %84, %90
  %93 = and i64 %92, 255
  %94 = getelementptr inbounds [256 x i8], ptr @popcount_table, i64 0, i64 %93
  %95 = load i8, ptr %94, align 1, !tbaa !50
  %96 = zext i8 %95 to i64
  %97 = add i64 %91, %96
  %98 = add nuw nsw i64 %90, 8
  %99 = icmp ult i64 %90, 56
  br i1 %99, label %89, label %100, !llvm.loop !64

100:                                              ; preds = %89
  %101 = trunc i64 %97 to i8
  br label %102

102:                                              ; preds = %100, %87
  %103 = phi i8 [ 0, %87 ], [ %101, %100 ]
  %104 = getelementptr inbounds i8, ptr %85, i64 %81
  store i8 %103, ptr %104, align 1, !tbaa !50
  br label %105

105:                                              ; preds = %71, %76, %102, %73, %54, %51, %66, %63
  store i32 %1, ptr %24, align 8, !tbaa !59
  %106 = getelementptr inbounds %struct.simple_bitmap_def, ptr %23, i64 0, i32 2
  store i32 %5, ptr %106, align 4, !tbaa !61
  ret ptr %23
}

declare ptr @xrealloc(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #10

; Function Attrs: cold nounwind uwtable
define dso_local ptr @sbitmap_realloc(ptr noundef %0, i32 noundef %1) local_unnamed_addr #9 !prof !38 {
  %3 = add i32 %1, 63
  %4 = lshr i32 %3, 6
  %5 = shl nuw nsw i32 %4, 3
  %6 = zext nneg i32 %5 to i64
  %7 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 2
  %8 = load i32, ptr %7, align 4, !tbaa !61
  %9 = zext i32 %8 to i64
  %10 = shl nuw nsw i64 %9, 3
  %11 = icmp ult i64 %10, %6
  br i1 %11, label %14, label %12

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 1
  store i32 %1, ptr %13, align 8, !tbaa !59
  br label %20

14:                                               ; preds = %2
  %15 = add nuw nsw i32 %5, 16
  %16 = zext nneg i32 %15 to i64
  %17 = tail call ptr @xrealloc(ptr noundef %0, i64 noundef %16) #29
  %18 = getelementptr inbounds %struct.simple_bitmap_def, ptr %17, i64 0, i32 1
  store i32 %1, ptr %18, align 8, !tbaa !59
  %19 = getelementptr inbounds %struct.simple_bitmap_def, ptr %17, i64 0, i32 2
  store i32 %4, ptr %19, align 4, !tbaa !61
  br label %20

20:                                               ; preds = %14, %12
  %21 = phi ptr [ %0, %12 ], [ %17, %14 ]
  ret ptr %21
}

; Function Attrs: nounwind uwtable
define dso_local ptr @sbitmap_vector_alloc(i32 noundef %0, i32 noundef %1) local_unnamed_addr #11 !prof !65 {
  %3 = add i32 %1, 63
  %4 = lshr i32 %3, 6
  %5 = shl nuw nsw i32 %4, 3
  %6 = add nuw nsw i32 %5, 16
  %7 = add nuw nsw i32 %5, 24
  %8 = mul i32 %7, %0
  %9 = zext i32 %8 to i64
  %10 = tail call ptr @xmalloc(i64 noundef %9) #29
  %11 = icmp eq i32 %0, 0
  br i1 %11, label %26, label %12, !prof !66

12:                                               ; preds = %2
  %13 = shl i32 %0, 3
  %14 = zext i32 %0 to i64
  br label %15

15:                                               ; preds = %12, %15
  %16 = phi i64 [ 0, %12 ], [ %23, %15 ]
  %17 = phi i32 [ %13, %12 ], [ %24, %15 ]
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds i8, ptr %10, i64 %18
  %20 = getelementptr inbounds ptr, ptr %10, i64 %16
  store ptr %19, ptr %20, align 8, !tbaa !39
  %21 = getelementptr inbounds %struct.simple_bitmap_def, ptr %19, i64 0, i32 1
  store i32 %1, ptr %21, align 8, !tbaa !59
  %22 = getelementptr inbounds %struct.simple_bitmap_def, ptr %19, i64 0, i32 2
  store i32 %4, ptr %22, align 4, !tbaa !61
  store ptr null, ptr %19, align 8, !tbaa !62
  %23 = add nuw nsw i64 %16, 1
  %24 = add i32 %6, %17
  %25 = icmp eq i64 %23, %14
  br i1 %25, label %26, label %15, !prof !67, !llvm.loop !68

26:                                               ; preds = %15, %2
  ret ptr %10
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @sbitmap_copy(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #12 !prof !69 {
  %3 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 3
  %4 = getelementptr inbounds %struct.simple_bitmap_def, ptr %1, i64 0, i32 3
  %5 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 2
  %6 = load i32, ptr %5, align 4, !tbaa !61
  %7 = zext i32 %6 to i64
  %8 = shl nuw nsw i64 %7, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %3, ptr nonnull align 8 %4, i64 %8, i1 false), !prof !70
  %9 = load ptr, ptr %0, align 8, !tbaa !62
  %10 = icmp eq ptr %9, null
  br i1 %10, label %13, label %11, !prof !71

11:                                               ; preds = %2
  %12 = load ptr, ptr %1, align 8, !tbaa !62
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %9, ptr align 1 %12, i64 %7, i1 false)
  br label %13

13:                                               ; preds = %11, %2
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #13

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @sbitmap_copy_n(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #14 !prof !38 {
  %4 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 3
  %5 = getelementptr inbounds %struct.simple_bitmap_def, ptr %1, i64 0, i32 3
  %6 = zext i32 %2 to i64
  %7 = shl nuw nsw i64 %6, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %4, ptr nonnull align 8 %5, i64 %7, i1 false)
  %8 = load ptr, ptr %0, align 8, !tbaa !62
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %3
  %11 = load ptr, ptr %1, align 8, !tbaa !62
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %8, ptr align 1 %11, i64 %6, i1 false)
  br label %12

12:                                               ; preds = %10, %3
  ret void
}

; Function Attrs: cold mustprogress nofree nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @sbitmap_equal(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #15 !prof !38 {
  %3 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 3
  %4 = getelementptr inbounds %struct.simple_bitmap_def, ptr %1, i64 0, i32 3
  %5 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 2
  %6 = load i32, ptr %5, align 4, !tbaa !61
  %7 = zext i32 %6 to i64
  %8 = shl nuw nsw i64 %7, 3
  %9 = tail call i32 @bcmp(ptr nonnull %3, ptr nonnull %4, i64 %8)
  %10 = icmp eq i32 %9, 0
  %11 = zext i1 %10 to i32
  ret i32 %11
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(argmem: read) uwtable
define dso_local noundef zeroext i8 @sbitmap_empty_p(ptr nocapture noundef readonly %0) local_unnamed_addr #16 !prof !72 {
  %2 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !61
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %14, label %8, !prof !73

5:                                                ; preds = %8
  %6 = add nuw i32 %9, 1
  %7 = icmp eq i32 %6, %3
  br i1 %7, label %14, label %8, !prof !74, !llvm.loop !75

8:                                                ; preds = %1, %5
  %9 = phi i32 [ %6, %5 ], [ 0, %1 ]
  %10 = zext i32 %9 to i64
  %11 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 3, i64 %10
  %12 = load i64, ptr %11, align 8, !tbaa !63
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %5, label %14, !prof !76

14:                                               ; preds = %8, %5, %1
  %15 = phi i8 [ 1, %1 ], [ 0, %8 ], [ 1, %5 ]
  ret i8 %15
}

; Function Attrs: cold nounwind uwtable
define dso_local zeroext i8 @sbitmap_range_empty_p(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #9 !prof !38 {
  %4 = lshr i32 %1, 6
  %5 = and i32 %1, 63
  %6 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 1
  %7 = load i32, ptr %6, align 8, !tbaa !59
  %8 = add i32 %2, %1
  %9 = icmp ult i32 %7, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 285, ptr noundef nonnull @.str.1) #29
  br label %11

11:                                               ; preds = %3, %10
  %12 = zext nneg i32 %4 to i64
  %13 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 3, i64 %12
  %14 = load i64, ptr %13, align 8, !tbaa !63
  %15 = zext nneg i32 %5 to i64
  %16 = lshr i64 %14, %15
  %17 = add i32 %5, %2
  %18 = icmp ult i32 %17, 65
  br i1 %18, label %19, label %27

19:                                               ; preds = %11
  %20 = icmp eq i32 %17, 64
  %21 = shl nsw i32 -1, %2
  %22 = xor i32 %21, -1
  %23 = zext nneg i32 %22 to i64
  %24 = select i1 %20, i64 -1, i64 %23
  %25 = and i64 %16, %24
  %26 = icmp eq i64 %25, 0
  br label %58

27:                                               ; preds = %11
  %28 = icmp eq i64 %16, 0
  br i1 %28, label %29, label %58

29:                                               ; preds = %27
  %30 = or i32 %1, -64
  %31 = add i32 %30, %2
  %32 = add nuw nsw i32 %4, 1
  %33 = icmp ugt i32 %31, 63
  br i1 %33, label %34, label %45

34:                                               ; preds = %29, %41
  %35 = phi i32 [ %43, %41 ], [ %32, %29 ]
  %36 = phi i32 [ %42, %41 ], [ %31, %29 ]
  %37 = zext nneg i32 %35 to i64
  %38 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 3, i64 %37
  %39 = load i64, ptr %38, align 8, !tbaa !63
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %58

41:                                               ; preds = %34
  %42 = add i32 %36, -64
  %43 = add nuw nsw i32 %35, 1
  %44 = icmp ugt i32 %42, 63
  br i1 %44, label %34, label %45, !llvm.loop !77

45:                                               ; preds = %41, %29
  %46 = phi i32 [ %31, %29 ], [ %42, %41 ]
  %47 = phi i32 [ %32, %29 ], [ %43, %41 ]
  %48 = icmp eq i32 %46, 0
  br i1 %48, label %58, label %49

49:                                               ; preds = %45
  %50 = zext i32 %47 to i64
  %51 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 3, i64 %50
  %52 = load i64, ptr %51, align 8, !tbaa !63
  %53 = shl nsw i32 -1, %46
  %54 = xor i32 %53, -1
  %55 = zext nneg i32 %54 to i64
  %56 = and i64 %52, %55
  %57 = icmp eq i64 %56, 0
  br label %58

58:                                               ; preds = %34, %45, %27, %49, %19
  %59 = phi i1 [ %26, %19 ], [ %57, %49 ], [ false, %27 ], [ true, %45 ], [ false, %34 ]
  %60 = zext i1 %59 to i8
  ret i8 %60
}

declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @sbitmap_zero(ptr nocapture noundef %0) local_unnamed_addr #17 !prof !78 {
  %2 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 3
  %3 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !61
  %5 = zext i32 %4 to i64
  %6 = shl nuw nsw i64 %5, 3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %2, i8 0, i64 %6, i1 false), !prof !79
  %7 = load ptr, ptr %0, align 8, !tbaa !62
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9, !prof !80

9:                                                ; preds = %1
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %7, i8 0, i64 %5, i1 false)
  br label %10

10:                                               ; preds = %9, %1
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @sbitmap_ones(ptr nocapture noundef %0) local_unnamed_addr #18 !prof !81 {
  %2 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 3
  %3 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !61
  %5 = zext i32 %4 to i64
  %6 = shl nuw nsw i64 %5, 3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %2, i8 -1, i64 %6, i1 false), !prof !82
  %7 = load ptr, ptr %0, align 8, !tbaa !62
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9, !prof !83

9:                                                ; preds = %1
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %7, i8 -1, i64 %5, i1 false)
  br label %10

10:                                               ; preds = %9, %1
  %11 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 1
  %12 = load i32, ptr %11, align 8, !tbaa !59
  %13 = and i32 %12, 63
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %39, label %15, !prof !84

15:                                               ; preds = %10
  %16 = sub nuw nsw i32 64, %13
  %17 = zext nneg i32 %16 to i64
  %18 = lshr i64 -1, %17
  %19 = load i32, ptr %3, align 4, !tbaa !61
  %20 = add i32 %19, -1
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 3, i64 %21
  store i64 %18, ptr %22, align 8, !tbaa !63
  %23 = load ptr, ptr %0, align 8, !tbaa !62
  %24 = icmp eq ptr %23, null
  br i1 %24, label %39, label %25, !prof !85

25:                                               ; preds = %15, %25
  %26 = phi i64 [ %34, %25 ], [ 0, %15 ]
  %27 = phi i64 [ %33, %25 ], [ 0, %15 ]
  %28 = lshr i64 %18, %26
  %29 = and i64 %28, 255
  %30 = getelementptr inbounds [256 x i8], ptr @popcount_table, i64 0, i64 %29
  %31 = load i8, ptr %30, align 1, !tbaa !50
  %32 = zext i8 %31 to i64
  %33 = add i64 %27, %32
  %34 = add nuw nsw i64 %26, 8
  %35 = icmp ult i64 %26, 56
  br i1 %35, label %25, label %36, !llvm.loop !64

36:                                               ; preds = %25
  %37 = trunc i64 %33 to i8
  %38 = getelementptr inbounds i8, ptr %23, i64 %21
  store i8 %37, ptr %38, align 1, !tbaa !50
  br label %39

39:                                               ; preds = %15, %36, %10
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @sbitmap_vector_zero(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #19 !prof !86 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %21, label %4, !prof !87

4:                                                ; preds = %2
  %5 = zext i32 %1 to i64
  br label %6

6:                                                ; preds = %4, %18
  %7 = phi i64 [ 0, %4 ], [ %19, %18 ]
  %8 = getelementptr inbounds ptr, ptr %0, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !39
  %10 = getelementptr inbounds %struct.simple_bitmap_def, ptr %9, i64 0, i32 3
  %11 = getelementptr inbounds %struct.simple_bitmap_def, ptr %9, i64 0, i32 2
  %12 = load i32, ptr %11, align 4, !tbaa !61
  %13 = zext i32 %12 to i64
  %14 = shl nuw nsw i64 %13, 3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %10, i8 0, i64 %14, i1 false), !prof !88
  %15 = load ptr, ptr %9, align 8, !tbaa !62
  %16 = icmp eq ptr %15, null
  br i1 %16, label %18, label %17, !prof !89

17:                                               ; preds = %6
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %15, i8 0, i64 %13, i1 false)
  br label %18

18:                                               ; preds = %6, %17
  %19 = add nuw nsw i64 %7, 1
  %20 = icmp eq i64 %19, %5
  br i1 %20, label %21, label %6, !prof !90, !llvm.loop !91

21:                                               ; preds = %18, %2
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @sbitmap_vector_ones(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #19 !prof !92 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %50, label %4, !prof !93

4:                                                ; preds = %2
  %5 = zext i32 %1 to i64
  br label %6

6:                                                ; preds = %4, %47
  %7 = phi i64 [ 0, %4 ], [ %48, %47 ]
  %8 = getelementptr inbounds ptr, ptr %0, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !39
  %10 = getelementptr inbounds %struct.simple_bitmap_def, ptr %9, i64 0, i32 3
  %11 = getelementptr inbounds %struct.simple_bitmap_def, ptr %9, i64 0, i32 2
  %12 = load i32, ptr %11, align 4, !tbaa !61
  %13 = zext i32 %12 to i64
  %14 = shl nuw nsw i64 %13, 3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %10, i8 -1, i64 %14, i1 false), !prof !94
  %15 = load ptr, ptr %9, align 8, !tbaa !62
  %16 = icmp eq ptr %15, null
  br i1 %16, label %18, label %17, !prof !83

17:                                               ; preds = %6
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %15, i8 -1, i64 %13, i1 false)
  br label %18

18:                                               ; preds = %17, %6
  %19 = getelementptr inbounds %struct.simple_bitmap_def, ptr %9, i64 0, i32 1
  %20 = load i32, ptr %19, align 8, !tbaa !59
  %21 = and i32 %20, 63
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %47, label %23, !prof !84

23:                                               ; preds = %18
  %24 = sub nuw nsw i32 64, %21
  %25 = zext nneg i32 %24 to i64
  %26 = lshr i64 -1, %25
  %27 = load i32, ptr %11, align 4, !tbaa !61
  %28 = add i32 %27, -1
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds %struct.simple_bitmap_def, ptr %9, i64 0, i32 3, i64 %29
  store i64 %26, ptr %30, align 8, !tbaa !63
  %31 = load ptr, ptr %9, align 8, !tbaa !62
  %32 = icmp eq ptr %31, null
  br i1 %32, label %47, label %33, !prof !85

33:                                               ; preds = %23, %33
  %34 = phi i64 [ %42, %33 ], [ 0, %23 ]
  %35 = phi i64 [ %41, %33 ], [ 0, %23 ]
  %36 = lshr i64 %26, %34
  %37 = and i64 %36, 255
  %38 = getelementptr inbounds [256 x i8], ptr @popcount_table, i64 0, i64 %37
  %39 = load i8, ptr %38, align 1, !tbaa !50
  %40 = zext i8 %39 to i64
  %41 = add i64 %35, %40
  %42 = add nuw nsw i64 %34, 8
  %43 = icmp ult i64 %34, 56
  br i1 %43, label %33, label %44, !llvm.loop !64

44:                                               ; preds = %33
  %45 = trunc i64 %41 to i8
  %46 = getelementptr inbounds i8, ptr %31, i64 %29
  store i8 %45, ptr %46, align 1, !tbaa !50
  br label %47

47:                                               ; preds = %18, %23, %44
  %48 = add nuw nsw i64 %7, 1
  %49 = icmp eq i64 %48, %5
  br i1 %49, label %50, label %6, !prof !95, !llvm.loop !96

50:                                               ; preds = %47, %2
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @sbitmap_union_of_diff_cg(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) local_unnamed_addr #11 !prof !97 {
  %5 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 2
  %6 = load i32, ptr %5, align 4, !tbaa !61
  %7 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 3
  %8 = getelementptr inbounds %struct.simple_bitmap_def, ptr %1, i64 0, i32 3
  %9 = getelementptr inbounds %struct.simple_bitmap_def, ptr %2, i64 0, i32 3
  %10 = getelementptr inbounds %struct.simple_bitmap_def, ptr %3, i64 0, i32 3
  %11 = load ptr, ptr %0, align 8, !tbaa !62
  %12 = icmp eq ptr %11, null
  br i1 %12, label %14, label %13, !prof !98

13:                                               ; preds = %4
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 394, ptr noundef nonnull @.str.1) #29
  br label %14

14:                                               ; preds = %4, %13
  %15 = icmp eq i32 %6, 0
  br i1 %15, label %41, label %16, !prof !99

16:                                               ; preds = %14, %16
  %17 = phi i32 [ %36, %16 ], [ 0, %14 ]
  %18 = phi i64 [ %34, %16 ], [ 0, %14 ]
  %19 = phi ptr [ %27, %16 ], [ %10, %14 ]
  %20 = phi ptr [ %25, %16 ], [ %9, %14 ]
  %21 = phi ptr [ %23, %16 ], [ %8, %14 ]
  %22 = phi ptr [ %35, %16 ], [ %7, %14 ]
  %23 = getelementptr inbounds i64, ptr %21, i64 1
  %24 = load i64, ptr %21, align 8, !tbaa !63
  %25 = getelementptr inbounds i64, ptr %20, i64 1
  %26 = load i64, ptr %20, align 8, !tbaa !63
  %27 = getelementptr inbounds i64, ptr %19, i64 1
  %28 = load i64, ptr %19, align 8, !tbaa !63
  %29 = xor i64 %28, -1
  %30 = and i64 %26, %29
  %31 = or i64 %30, %24
  %32 = load i64, ptr %22, align 8, !tbaa !63
  %33 = xor i64 %31, %32
  %34 = or i64 %33, %18
  %35 = getelementptr inbounds i64, ptr %22, i64 1
  store i64 %31, ptr %22, align 8, !tbaa !63
  %36 = add nuw i32 %17, 1
  %37 = icmp eq i32 %36, %6
  br i1 %37, label %38, label %16, !prof !100, !llvm.loop !101

38:                                               ; preds = %16
  %39 = icmp ne i64 %34, 0
  %40 = zext i1 %39 to i8
  br label %41

41:                                               ; preds = %38, %14
  %42 = phi i8 [ 0, %14 ], [ %40, %38 ]
  ret i8 %42
}

; Function Attrs: cold nounwind uwtable
define dso_local void @sbitmap_union_of_diff(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) local_unnamed_addr #9 !prof !38 {
  %5 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 2
  %6 = load i32, ptr %5, align 4, !tbaa !61
  %7 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 3
  %8 = getelementptr inbounds %struct.simple_bitmap_def, ptr %1, i64 0, i32 3
  %9 = getelementptr inbounds %struct.simple_bitmap_def, ptr %2, i64 0, i32 3
  %10 = getelementptr inbounds %struct.simple_bitmap_def, ptr %3, i64 0, i32 3
  %11 = load ptr, ptr %0, align 8, !tbaa !62
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %22

13:                                               ; preds = %4
  %14 = load ptr, ptr %1, align 8, !tbaa !62
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %22

16:                                               ; preds = %13
  %17 = load ptr, ptr %2, align 8, !tbaa !62
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %16
  %20 = load ptr, ptr %3, align 8, !tbaa !62
  %21 = icmp eq ptr %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %19, %16, %13, %4
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 416, ptr noundef nonnull @.str.1) #29
  br label %23

23:                                               ; preds = %19, %22
  %24 = icmp eq i32 %6, 0
  br i1 %24, label %43, label %25

25:                                               ; preds = %23, %25
  %26 = phi ptr [ %35, %25 ], [ %10, %23 ]
  %27 = phi ptr [ %33, %25 ], [ %9, %23 ]
  %28 = phi ptr [ %31, %25 ], [ %8, %23 ]
  %29 = phi ptr [ %40, %25 ], [ %7, %23 ]
  %30 = phi i32 [ %41, %25 ], [ 0, %23 ]
  %31 = getelementptr inbounds i64, ptr %28, i64 1
  %32 = load i64, ptr %28, align 8, !tbaa !63
  %33 = getelementptr inbounds i64, ptr %27, i64 1
  %34 = load i64, ptr %27, align 8, !tbaa !63
  %35 = getelementptr inbounds i64, ptr %26, i64 1
  %36 = load i64, ptr %26, align 8, !tbaa !63
  %37 = xor i64 %36, -1
  %38 = and i64 %34, %37
  %39 = or i64 %38, %32
  %40 = getelementptr inbounds i64, ptr %29, i64 1
  store i64 %39, ptr %29, align 8, !tbaa !63
  %41 = add nuw i32 %30, 1
  %42 = icmp eq i32 %41, %6
  br i1 %42, label %43, label %25, !llvm.loop !102

43:                                               ; preds = %25, %23
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @sbitmap_not(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #11 !prof !103 {
  %3 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !61
  %5 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 3
  %6 = getelementptr inbounds %struct.simple_bitmap_def, ptr %1, i64 0, i32 3
  %7 = load ptr, ptr %0, align 8, !tbaa !62
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9, !prof !104

9:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 432, ptr noundef nonnull @.str.1) #29
  br label %10

10:                                               ; preds = %2, %9
  %11 = icmp eq i32 %4, 0
  br i1 %11, label %22, label %12, !prof !105

12:                                               ; preds = %10, %12
  %13 = phi i32 [ %20, %12 ], [ 0, %10 ]
  %14 = phi ptr [ %16, %12 ], [ %6, %10 ]
  %15 = phi ptr [ %19, %12 ], [ %5, %10 ]
  %16 = getelementptr inbounds i64, ptr %14, i64 1
  %17 = load i64, ptr %14, align 8, !tbaa !63
  %18 = xor i64 %17, -1
  %19 = getelementptr inbounds i64, ptr %15, i64 1
  store i64 %18, ptr %15, align 8, !tbaa !63
  %20 = add nuw i32 %13, 1
  %21 = icmp eq i32 %20, %4
  br i1 %21, label %22, label %12, !prof !106, !llvm.loop !107

22:                                               ; preds = %12, %10
  %23 = getelementptr inbounds %struct.simple_bitmap_def, ptr %1, i64 0, i32 1
  %24 = load i32, ptr %23, align 8, !tbaa !59
  %25 = and i32 %24, 63
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %36, label %27, !prof !108

27:                                               ; preds = %22
  %28 = add i32 %4, -1
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 3, i64 %29
  %31 = load i64, ptr %30, align 8, !tbaa !63
  %32 = sub nuw nsw i32 64, %25
  %33 = zext nneg i32 %32 to i64
  %34 = lshr i64 -1, %33
  %35 = and i64 %31, %34
  store i64 %35, ptr %30, align 8, !tbaa !63
  br label %36

36:                                               ; preds = %27, %22
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @sbitmap_difference(ptr noundef %0, ptr noundef readonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #11 !prof !109 {
  %4 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !61
  %6 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 3
  %7 = getelementptr inbounds %struct.simple_bitmap_def, ptr %1, i64 0, i32 3
  %8 = getelementptr inbounds %struct.simple_bitmap_def, ptr %2, i64 0, i32 3
  %9 = load ptr, ptr %0, align 8, !tbaa !62
  %10 = icmp eq ptr %9, null
  br i1 %10, label %12, label %11, !prof !110

11:                                               ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 456, ptr noundef nonnull @.str.1) #29
  br label %12

12:                                               ; preds = %3, %11
  %13 = getelementptr inbounds %struct.simple_bitmap_def, ptr %1, i64 0, i32 2
  %14 = load i32, ptr %13, align 4, !tbaa !61
  %15 = icmp ult i32 %14, %5
  br i1 %15, label %16, label %17, !prof !111

16:                                               ; preds = %12
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 459, ptr noundef nonnull @.str.1) #29
  br label %17

17:                                               ; preds = %12, %16
  %18 = getelementptr inbounds %struct.simple_bitmap_def, ptr %2, i64 0, i32 2
  %19 = load i32, ptr %18, align 4, !tbaa !61
  %20 = tail call i32 @llvm.umin.i32(i32 %19, i32 %5)
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %36, label %22, !prof !112

22:                                               ; preds = %17, %22
  %23 = phi ptr [ %29, %22 ], [ %8, %17 ]
  %24 = phi ptr [ %27, %22 ], [ %7, %17 ]
  %25 = phi ptr [ %33, %22 ], [ %6, %17 ]
  %26 = phi i32 [ %34, %22 ], [ 0, %17 ]
  %27 = getelementptr inbounds i64, ptr %24, i64 1
  %28 = load i64, ptr %24, align 8, !tbaa !63
  %29 = getelementptr inbounds i64, ptr %23, i64 1
  %30 = load i64, ptr %23, align 8, !tbaa !63
  %31 = xor i64 %30, -1
  %32 = and i64 %28, %31
  %33 = getelementptr inbounds i64, ptr %25, i64 1
  store i64 %32, ptr %25, align 8, !tbaa !63
  %34 = add nuw i32 %26, 1
  %35 = icmp eq i32 %34, %20
  br i1 %35, label %36, label %22, !prof !113, !llvm.loop !114

36:                                               ; preds = %22, %17
  %37 = phi i32 [ 0, %17 ], [ %20, %22 ]
  %38 = phi ptr [ %6, %17 ], [ %33, %22 ]
  %39 = phi ptr [ %7, %17 ], [ %27, %22 ]
  %40 = icmp eq ptr %0, %1
  %41 = icmp eq i32 %37, %5
  %42 = select i1 %40, i1 true, i1 %41, !prof !111
  br i1 %42, label %54, label %43, !prof !110

43:                                               ; preds = %36
  %44 = icmp ult i32 %37, %5
  br i1 %44, label %45, label %54

45:                                               ; preds = %43, %45
  %46 = phi ptr [ %49, %45 ], [ %39, %43 ]
  %47 = phi ptr [ %51, %45 ], [ %38, %43 ]
  %48 = phi i32 [ %52, %45 ], [ %37, %43 ]
  %49 = getelementptr inbounds i64, ptr %46, i64 1
  %50 = load i64, ptr %46, align 8, !tbaa !63
  %51 = getelementptr inbounds i64, ptr %47, i64 1
  store i64 %50, ptr %47, align 8, !tbaa !63
  %52 = add nuw i32 %48, 1
  %53 = icmp eq i32 %52, %5
  br i1 %53, label %54, label %45, !llvm.loop !115

54:                                               ; preds = %45, %43, %36
  ret void
}

; Function Attrs: cold nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i8 @sbitmap_any_common_bits(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #20 !prof !38 {
  %3 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !61
  %5 = getelementptr inbounds %struct.simple_bitmap_def, ptr %1, i64 0, i32 2
  %6 = load i32, ptr %5, align 4, !tbaa !61
  %7 = tail call i32 @llvm.umin.i32(i32 %4, i32 %6)
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %25, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.simple_bitmap_def, ptr %1, i64 0, i32 3
  %11 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 3
  br label %12

12:                                               ; preds = %9, %20
  %13 = phi i32 [ %23, %20 ], [ 0, %9 ]
  %14 = phi ptr [ %21, %20 ], [ %10, %9 ]
  %15 = phi ptr [ %22, %20 ], [ %11, %9 ]
  %16 = load i64, ptr %15, align 8, !tbaa !63
  %17 = load i64, ptr %14, align 8, !tbaa !63
  %18 = and i64 %17, %16
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %12
  %21 = getelementptr inbounds i64, ptr %14, i64 1
  %22 = getelementptr inbounds i64, ptr %15, i64 1
  %23 = add nuw i32 %13, 1
  %24 = icmp eq i32 %23, %7
  br i1 %24, label %25, label %12, !llvm.loop !116

25:                                               ; preds = %12, %20, %2
  %26 = phi i8 [ 0, %2 ], [ 1, %12 ], [ 0, %20 ]
  ret i8 %26
}

; Function Attrs: cold nounwind uwtable
define dso_local zeroext i8 @sbitmap_a_and_b_cg(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #9 !prof !38 {
  %4 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !61
  %6 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 3
  %7 = getelementptr inbounds %struct.simple_bitmap_def, ptr %1, i64 0, i32 3
  %8 = getelementptr inbounds %struct.simple_bitmap_def, ptr %2, i64 0, i32 3
  %9 = load ptr, ptr %0, align 8, !tbaa !62
  %10 = icmp eq ptr %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 503, ptr noundef nonnull @.str.1) #29
  br label %12

12:                                               ; preds = %3, %11
  %13 = icmp eq i32 %5, 0
  br i1 %13, label %34, label %14

14:                                               ; preds = %12, %14
  %15 = phi i32 [ %29, %14 ], [ 0, %12 ]
  %16 = phi i64 [ %27, %14 ], [ 0, %12 ]
  %17 = phi ptr [ %22, %14 ], [ %8, %12 ]
  %18 = phi ptr [ %20, %14 ], [ %7, %12 ]
  %19 = phi ptr [ %28, %14 ], [ %6, %12 ]
  %20 = getelementptr inbounds i64, ptr %18, i64 1
  %21 = load i64, ptr %18, align 8, !tbaa !63
  %22 = getelementptr inbounds i64, ptr %17, i64 1
  %23 = load i64, ptr %17, align 8, !tbaa !63
  %24 = and i64 %23, %21
  %25 = load i64, ptr %19, align 8, !tbaa !63
  %26 = xor i64 %25, %24
  %27 = or i64 %26, %16
  %28 = getelementptr inbounds i64, ptr %19, i64 1
  store i64 %24, ptr %19, align 8, !tbaa !63
  %29 = add nuw i32 %15, 1
  %30 = icmp eq i32 %29, %5
  br i1 %30, label %31, label %14, !llvm.loop !117

31:                                               ; preds = %14
  %32 = icmp ne i64 %27, 0
  %33 = zext i1 %32 to i8
  br label %34

34:                                               ; preds = %31, %12
  %35 = phi i8 [ 0, %12 ], [ %33, %31 ]
  ret i8 %35
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @sbitmap_a_and_b(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #19 !prof !118 {
  %4 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !61
  %6 = load ptr, ptr %0, align 8, !tbaa !62
  %7 = icmp eq ptr %6, null
  %8 = icmp eq i32 %5, 0
  br i1 %8, label %50, label %9, !prof !119

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.simple_bitmap_def, ptr %2, i64 0, i32 3
  %11 = getelementptr inbounds %struct.simple_bitmap_def, ptr %1, i64 0, i32 3
  %12 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 3
  br label %13

13:                                               ; preds = %9, %45
  %14 = phi i32 [ %48, %45 ], [ 0, %9 ]
  %15 = phi ptr [ %47, %45 ], [ %12, %9 ]
  %16 = phi ptr [ %46, %45 ], [ %6, %9 ]
  %17 = phi ptr [ %19, %45 ], [ %11, %9 ]
  %18 = phi ptr [ %21, %45 ], [ %10, %9 ]
  %19 = getelementptr inbounds i64, ptr %17, i64 1
  %20 = load i64, ptr %17, align 8, !tbaa !63
  %21 = getelementptr inbounds i64, ptr %18, i64 1
  %22 = load i64, ptr %18, align 8, !tbaa !63
  %23 = and i64 %22, %20
  br i1 %7, label %45, label %24, !prof !120

24:                                               ; preds = %13
  %25 = load i64, ptr %15, align 8, !tbaa !63
  %26 = icmp eq i64 %25, %23
  br i1 %26, label %43, label %27

27:                                               ; preds = %24
  %28 = icmp eq i64 %23, 0
  br i1 %28, label %40, label %29

29:                                               ; preds = %27, %29
  %30 = phi i64 [ %38, %29 ], [ 0, %27 ]
  %31 = phi i64 [ %37, %29 ], [ 0, %27 ]
  %32 = lshr i64 %23, %30
  %33 = and i64 %32, 255
  %34 = getelementptr inbounds [256 x i8], ptr @popcount_table, i64 0, i64 %33
  %35 = load i8, ptr %34, align 1, !tbaa !50
  %36 = zext i8 %35 to i64
  %37 = add i64 %31, %36
  %38 = add nuw nsw i64 %30, 8
  %39 = icmp ult i64 %30, 56
  br i1 %39, label %29, label %40, !llvm.loop !64

40:                                               ; preds = %29, %27
  %41 = phi i64 [ 0, %27 ], [ %37, %29 ]
  %42 = trunc i64 %41 to i8
  store i8 %42, ptr %16, align 1, !tbaa !50
  br label %43

43:                                               ; preds = %40, %24
  %44 = getelementptr inbounds i8, ptr %16, i64 1
  br label %45

45:                                               ; preds = %43, %13
  %46 = phi ptr [ %44, %43 ], [ %16, %13 ]
  %47 = getelementptr inbounds i64, ptr %15, i64 1
  store i64 %23, ptr %15, align 8, !tbaa !63
  %48 = add nuw i32 %14, 1
  %49 = icmp eq i32 %48, %5
  br i1 %49, label %50, label %13, !prof !121, !llvm.loop !122

50:                                               ; preds = %45, %3
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local zeroext i8 @sbitmap_a_xor_b_cg(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #9 !prof !38 {
  %4 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !61
  %6 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 3
  %7 = getelementptr inbounds %struct.simple_bitmap_def, ptr %1, i64 0, i32 3
  %8 = getelementptr inbounds %struct.simple_bitmap_def, ptr %2, i64 0, i32 3
  %9 = load ptr, ptr %0, align 8, !tbaa !62
  %10 = icmp eq ptr %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 555, ptr noundef nonnull @.str.1) #29
  br label %12

12:                                               ; preds = %3, %11
  %13 = icmp eq i32 %5, 0
  br i1 %13, label %34, label %14

14:                                               ; preds = %12, %14
  %15 = phi i32 [ %29, %14 ], [ 0, %12 ]
  %16 = phi i64 [ %27, %14 ], [ 0, %12 ]
  %17 = phi ptr [ %22, %14 ], [ %8, %12 ]
  %18 = phi ptr [ %20, %14 ], [ %7, %12 ]
  %19 = phi ptr [ %28, %14 ], [ %6, %12 ]
  %20 = getelementptr inbounds i64, ptr %18, i64 1
  %21 = load i64, ptr %18, align 8, !tbaa !63
  %22 = getelementptr inbounds i64, ptr %17, i64 1
  %23 = load i64, ptr %17, align 8, !tbaa !63
  %24 = xor i64 %23, %21
  %25 = load i64, ptr %19, align 8, !tbaa !63
  %26 = xor i64 %25, %24
  %27 = or i64 %26, %16
  %28 = getelementptr inbounds i64, ptr %19, i64 1
  store i64 %24, ptr %19, align 8, !tbaa !63
  %29 = add nuw i32 %15, 1
  %30 = icmp eq i32 %29, %5
  br i1 %30, label %31, label %14, !llvm.loop !123

31:                                               ; preds = %14
  %32 = icmp ne i64 %27, 0
  %33 = zext i1 %32 to i8
  br label %34

34:                                               ; preds = %31, %12
  %35 = phi i8 [ 0, %12 ], [ %33, %31 ]
  ret i8 %35
}

; Function Attrs: cold nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @sbitmap_a_xor_b(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #21 !prof !38 {
  %4 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !61
  %6 = load ptr, ptr %0, align 8, !tbaa !62
  %7 = icmp eq ptr %6, null
  %8 = icmp eq i32 %5, 0
  br i1 %8, label %50, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.simple_bitmap_def, ptr %2, i64 0, i32 3
  %11 = getelementptr inbounds %struct.simple_bitmap_def, ptr %1, i64 0, i32 3
  %12 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 3
  br label %13

13:                                               ; preds = %9, %45
  %14 = phi i32 [ %48, %45 ], [ 0, %9 ]
  %15 = phi ptr [ %47, %45 ], [ %12, %9 ]
  %16 = phi ptr [ %46, %45 ], [ %6, %9 ]
  %17 = phi ptr [ %19, %45 ], [ %11, %9 ]
  %18 = phi ptr [ %21, %45 ], [ %10, %9 ]
  %19 = getelementptr inbounds i64, ptr %17, i64 1
  %20 = load i64, ptr %17, align 8, !tbaa !63
  %21 = getelementptr inbounds i64, ptr %18, i64 1
  %22 = load i64, ptr %18, align 8, !tbaa !63
  %23 = xor i64 %22, %20
  br i1 %7, label %45, label %24

24:                                               ; preds = %13
  %25 = load i64, ptr %15, align 8, !tbaa !63
  %26 = icmp eq i64 %25, %23
  br i1 %26, label %43, label %27

27:                                               ; preds = %24
  %28 = icmp eq i64 %23, 0
  br i1 %28, label %40, label %29

29:                                               ; preds = %27, %29
  %30 = phi i64 [ %38, %29 ], [ 0, %27 ]
  %31 = phi i64 [ %37, %29 ], [ 0, %27 ]
  %32 = lshr i64 %23, %30
  %33 = and i64 %32, 255
  %34 = getelementptr inbounds [256 x i8], ptr @popcount_table, i64 0, i64 %33
  %35 = load i8, ptr %34, align 1, !tbaa !50
  %36 = zext i8 %35 to i64
  %37 = add i64 %31, %36
  %38 = add nuw nsw i64 %30, 8
  %39 = icmp ult i64 %30, 56
  br i1 %39, label %29, label %40, !llvm.loop !64

40:                                               ; preds = %29, %27
  %41 = phi i64 [ 0, %27 ], [ %37, %29 ]
  %42 = trunc i64 %41 to i8
  store i8 %42, ptr %16, align 1, !tbaa !50
  br label %43

43:                                               ; preds = %40, %24
  %44 = getelementptr inbounds i8, ptr %16, i64 1
  br label %45

45:                                               ; preds = %43, %13
  %46 = phi ptr [ %44, %43 ], [ %16, %13 ]
  %47 = getelementptr inbounds i64, ptr %15, i64 1
  store i64 %23, ptr %15, align 8, !tbaa !63
  %48 = add nuw i32 %14, 1
  %49 = icmp eq i32 %48, %5
  br i1 %49, label %50, label %13, !llvm.loop !124

50:                                               ; preds = %45, %3
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local zeroext i8 @sbitmap_a_or_b_cg(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #9 !prof !38 {
  %4 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !61
  %6 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 3
  %7 = getelementptr inbounds %struct.simple_bitmap_def, ptr %1, i64 0, i32 3
  %8 = getelementptr inbounds %struct.simple_bitmap_def, ptr %2, i64 0, i32 3
  %9 = load ptr, ptr %0, align 8, !tbaa !62
  %10 = icmp eq ptr %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 607, ptr noundef nonnull @.str.1) #29
  br label %12

12:                                               ; preds = %3, %11
  %13 = icmp eq i32 %5, 0
  br i1 %13, label %34, label %14

14:                                               ; preds = %12, %14
  %15 = phi i32 [ %29, %14 ], [ 0, %12 ]
  %16 = phi i64 [ %27, %14 ], [ 0, %12 ]
  %17 = phi ptr [ %22, %14 ], [ %8, %12 ]
  %18 = phi ptr [ %20, %14 ], [ %7, %12 ]
  %19 = phi ptr [ %28, %14 ], [ %6, %12 ]
  %20 = getelementptr inbounds i64, ptr %18, i64 1
  %21 = load i64, ptr %18, align 8, !tbaa !63
  %22 = getelementptr inbounds i64, ptr %17, i64 1
  %23 = load i64, ptr %17, align 8, !tbaa !63
  %24 = or i64 %23, %21
  %25 = load i64, ptr %19, align 8, !tbaa !63
  %26 = xor i64 %25, %24
  %27 = or i64 %26, %16
  %28 = getelementptr inbounds i64, ptr %19, i64 1
  store i64 %24, ptr %19, align 8, !tbaa !63
  %29 = add nuw i32 %15, 1
  %30 = icmp eq i32 %29, %5
  br i1 %30, label %31, label %14, !llvm.loop !125

31:                                               ; preds = %14
  %32 = icmp ne i64 %27, 0
  %33 = zext i1 %32 to i8
  br label %34

34:                                               ; preds = %31, %12
  %35 = phi i8 [ 0, %12 ], [ %33, %31 ]
  ret i8 %35
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @sbitmap_a_or_b(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #22 !prof !126 {
  %4 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !61
  %6 = load ptr, ptr %0, align 8, !tbaa !62
  %7 = icmp eq ptr %6, null
  %8 = icmp eq i32 %5, 0
  br i1 %8, label %50, label %9, !prof !127

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.simple_bitmap_def, ptr %2, i64 0, i32 3
  %11 = getelementptr inbounds %struct.simple_bitmap_def, ptr %1, i64 0, i32 3
  %12 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 3
  br label %13

13:                                               ; preds = %9, %45
  %14 = phi i32 [ %48, %45 ], [ 0, %9 ]
  %15 = phi ptr [ %47, %45 ], [ %12, %9 ]
  %16 = phi ptr [ %46, %45 ], [ %6, %9 ]
  %17 = phi ptr [ %19, %45 ], [ %11, %9 ]
  %18 = phi ptr [ %21, %45 ], [ %10, %9 ]
  %19 = getelementptr inbounds i64, ptr %17, i64 1
  %20 = load i64, ptr %17, align 8, !tbaa !63
  %21 = getelementptr inbounds i64, ptr %18, i64 1
  %22 = load i64, ptr %18, align 8, !tbaa !63
  %23 = or i64 %22, %20
  br i1 %7, label %45, label %24, !prof !128

24:                                               ; preds = %13
  %25 = load i64, ptr %15, align 8, !tbaa !63
  %26 = icmp eq i64 %25, %23
  br i1 %26, label %43, label %27

27:                                               ; preds = %24
  %28 = icmp eq i64 %23, 0
  br i1 %28, label %40, label %29

29:                                               ; preds = %27, %29
  %30 = phi i64 [ %38, %29 ], [ 0, %27 ]
  %31 = phi i64 [ %37, %29 ], [ 0, %27 ]
  %32 = lshr i64 %23, %30
  %33 = and i64 %32, 255
  %34 = getelementptr inbounds [256 x i8], ptr @popcount_table, i64 0, i64 %33
  %35 = load i8, ptr %34, align 1, !tbaa !50
  %36 = zext i8 %35 to i64
  %37 = add i64 %31, %36
  %38 = add nuw nsw i64 %30, 8
  %39 = icmp ult i64 %30, 56
  br i1 %39, label %29, label %40, !llvm.loop !64

40:                                               ; preds = %29, %27
  %41 = phi i64 [ 0, %27 ], [ %37, %29 ]
  %42 = trunc i64 %41 to i8
  store i8 %42, ptr %16, align 1, !tbaa !50
  br label %43

43:                                               ; preds = %40, %24
  %44 = getelementptr inbounds i8, ptr %16, i64 1
  br label %45

45:                                               ; preds = %43, %13
  %46 = phi ptr [ %44, %43 ], [ %16, %13 ]
  %47 = getelementptr inbounds i64, ptr %15, i64 1
  store i64 %23, ptr %15, align 8, !tbaa !63
  %48 = add nuw i32 %14, 1
  %49 = icmp eq i32 %48, %5
  br i1 %49, label %50, label %13, !prof !129, !llvm.loop !130

50:                                               ; preds = %45, %3
  ret void
}

; Function Attrs: cold nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i8 @sbitmap_a_subset_b_p(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #20 !prof !38 {
  %3 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !61
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %22, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.simple_bitmap_def, ptr %1, i64 0, i32 3
  %8 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 3
  br label %9

9:                                                ; preds = %6, %17
  %10 = phi ptr [ %20, %17 ], [ %7, %6 ]
  %11 = phi ptr [ %19, %17 ], [ %8, %6 ]
  %12 = phi i32 [ %18, %17 ], [ 0, %6 ]
  %13 = load i64, ptr %11, align 8, !tbaa !63
  %14 = load i64, ptr %10, align 8, !tbaa !63
  %15 = or i64 %14, %13
  %16 = icmp eq i64 %15, %14
  br i1 %16, label %17, label %22

17:                                               ; preds = %9
  %18 = add nuw i32 %12, 1
  %19 = getelementptr inbounds i64, ptr %11, i64 1
  %20 = getelementptr inbounds i64, ptr %10, i64 1
  %21 = icmp eq i32 %18, %4
  br i1 %21, label %22, label %9, !llvm.loop !131

22:                                               ; preds = %9, %17, %2
  %23 = phi i8 [ 1, %2 ], [ 0, %9 ], [ 1, %17 ]
  ret i8 %23
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @sbitmap_a_or_b_and_c_cg(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) local_unnamed_addr #11 !prof !132 {
  %5 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 2
  %6 = load i32, ptr %5, align 4, !tbaa !61
  %7 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 3
  %8 = getelementptr inbounds %struct.simple_bitmap_def, ptr %1, i64 0, i32 3
  %9 = getelementptr inbounds %struct.simple_bitmap_def, ptr %2, i64 0, i32 3
  %10 = getelementptr inbounds %struct.simple_bitmap_def, ptr %3, i64 0, i32 3
  %11 = load ptr, ptr %0, align 8, !tbaa !62
  %12 = icmp eq ptr %11, null
  br i1 %12, label %14, label %13, !prof !133

13:                                               ; preds = %4
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 675, ptr noundef nonnull @.str.1) #29
  br label %14

14:                                               ; preds = %4, %13
  %15 = icmp eq i32 %6, 0
  br i1 %15, label %40, label %16, !prof !134

16:                                               ; preds = %14, %16
  %17 = phi i32 [ %35, %16 ], [ 0, %14 ]
  %18 = phi i64 [ %33, %16 ], [ 0, %14 ]
  %19 = phi ptr [ %27, %16 ], [ %10, %14 ]
  %20 = phi ptr [ %25, %16 ], [ %9, %14 ]
  %21 = phi ptr [ %23, %16 ], [ %8, %14 ]
  %22 = phi ptr [ %34, %16 ], [ %7, %14 ]
  %23 = getelementptr inbounds i64, ptr %21, i64 1
  %24 = load i64, ptr %21, align 8, !tbaa !63
  %25 = getelementptr inbounds i64, ptr %20, i64 1
  %26 = load i64, ptr %20, align 8, !tbaa !63
  %27 = getelementptr inbounds i64, ptr %19, i64 1
  %28 = load i64, ptr %19, align 8, !tbaa !63
  %29 = and i64 %28, %26
  %30 = or i64 %29, %24
  %31 = load i64, ptr %22, align 8, !tbaa !63
  %32 = xor i64 %30, %31
  %33 = or i64 %32, %18
  %34 = getelementptr inbounds i64, ptr %22, i64 1
  store i64 %30, ptr %22, align 8, !tbaa !63
  %35 = add nuw i32 %17, 1
  %36 = icmp eq i32 %35, %6
  br i1 %36, label %37, label %16, !prof !135, !llvm.loop !136

37:                                               ; preds = %16
  %38 = icmp ne i64 %33, 0
  %39 = zext i1 %38 to i8
  br label %40

40:                                               ; preds = %37, %14
  %41 = phi i8 [ 0, %14 ], [ %39, %37 ]
  ret i8 %41
}

; Function Attrs: cold nounwind uwtable
define dso_local void @sbitmap_a_or_b_and_c(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) local_unnamed_addr #9 !prof !38 {
  %5 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 2
  %6 = load i32, ptr %5, align 4, !tbaa !61
  %7 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 3
  %8 = getelementptr inbounds %struct.simple_bitmap_def, ptr %1, i64 0, i32 3
  %9 = getelementptr inbounds %struct.simple_bitmap_def, ptr %2, i64 0, i32 3
  %10 = getelementptr inbounds %struct.simple_bitmap_def, ptr %3, i64 0, i32 3
  %11 = load ptr, ptr %0, align 8, !tbaa !62
  %12 = icmp eq ptr %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %4
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 696, ptr noundef nonnull @.str.1) #29
  br label %14

14:                                               ; preds = %4, %13
  %15 = icmp eq i32 %6, 0
  br i1 %15, label %33, label %16

16:                                               ; preds = %14, %16
  %17 = phi ptr [ %26, %16 ], [ %10, %14 ]
  %18 = phi ptr [ %24, %16 ], [ %9, %14 ]
  %19 = phi ptr [ %22, %16 ], [ %8, %14 ]
  %20 = phi ptr [ %30, %16 ], [ %7, %14 ]
  %21 = phi i32 [ %31, %16 ], [ 0, %14 ]
  %22 = getelementptr inbounds i64, ptr %19, i64 1
  %23 = load i64, ptr %19, align 8, !tbaa !63
  %24 = getelementptr inbounds i64, ptr %18, i64 1
  %25 = load i64, ptr %18, align 8, !tbaa !63
  %26 = getelementptr inbounds i64, ptr %17, i64 1
  %27 = load i64, ptr %17, align 8, !tbaa !63
  %28 = and i64 %27, %25
  %29 = or i64 %28, %23
  %30 = getelementptr inbounds i64, ptr %20, i64 1
  store i64 %29, ptr %20, align 8, !tbaa !63
  %31 = add nuw i32 %21, 1
  %32 = icmp eq i32 %31, %6
  br i1 %32, label %33, label %16, !llvm.loop !137

33:                                               ; preds = %16, %14
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local zeroext i8 @sbitmap_a_and_b_or_c_cg(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) local_unnamed_addr #9 !prof !38 {
  %5 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 2
  %6 = load i32, ptr %5, align 4, !tbaa !61
  %7 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 3
  %8 = getelementptr inbounds %struct.simple_bitmap_def, ptr %1, i64 0, i32 3
  %9 = getelementptr inbounds %struct.simple_bitmap_def, ptr %2, i64 0, i32 3
  %10 = getelementptr inbounds %struct.simple_bitmap_def, ptr %3, i64 0, i32 3
  %11 = load ptr, ptr %0, align 8, !tbaa !62
  %12 = icmp eq ptr %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %4
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 715, ptr noundef nonnull @.str.1) #29
  br label %14

14:                                               ; preds = %4, %13
  %15 = icmp eq i32 %6, 0
  br i1 %15, label %40, label %16

16:                                               ; preds = %14, %16
  %17 = phi i32 [ %35, %16 ], [ 0, %14 ]
  %18 = phi i64 [ %33, %16 ], [ 0, %14 ]
  %19 = phi ptr [ %27, %16 ], [ %10, %14 ]
  %20 = phi ptr [ %25, %16 ], [ %9, %14 ]
  %21 = phi ptr [ %23, %16 ], [ %8, %14 ]
  %22 = phi ptr [ %34, %16 ], [ %7, %14 ]
  %23 = getelementptr inbounds i64, ptr %21, i64 1
  %24 = load i64, ptr %21, align 8, !tbaa !63
  %25 = getelementptr inbounds i64, ptr %20, i64 1
  %26 = load i64, ptr %20, align 8, !tbaa !63
  %27 = getelementptr inbounds i64, ptr %19, i64 1
  %28 = load i64, ptr %19, align 8, !tbaa !63
  %29 = or i64 %28, %26
  %30 = and i64 %29, %24
  %31 = load i64, ptr %22, align 8, !tbaa !63
  %32 = xor i64 %30, %31
  %33 = or i64 %32, %18
  %34 = getelementptr inbounds i64, ptr %22, i64 1
  store i64 %30, ptr %22, align 8, !tbaa !63
  %35 = add nuw i32 %17, 1
  %36 = icmp eq i32 %35, %6
  br i1 %36, label %37, label %16, !llvm.loop !138

37:                                               ; preds = %16
  %38 = icmp ne i64 %33, 0
  %39 = zext i1 %38 to i8
  br label %40

40:                                               ; preds = %37, %14
  %41 = phi i8 [ 0, %14 ], [ %39, %37 ]
  ret i8 %41
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @sbitmap_a_and_b_or_c(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) local_unnamed_addr #19 !prof !139 {
  %5 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 2
  %6 = load i32, ptr %5, align 4, !tbaa !61
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %30, label %8, !prof !140

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.simple_bitmap_def, ptr %3, i64 0, i32 3
  %10 = getelementptr inbounds %struct.simple_bitmap_def, ptr %2, i64 0, i32 3
  %11 = getelementptr inbounds %struct.simple_bitmap_def, ptr %1, i64 0, i32 3
  %12 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 3
  br label %13

13:                                               ; preds = %8, %13
  %14 = phi ptr [ %23, %13 ], [ %9, %8 ]
  %15 = phi ptr [ %21, %13 ], [ %10, %8 ]
  %16 = phi ptr [ %19, %13 ], [ %11, %8 ]
  %17 = phi ptr [ %27, %13 ], [ %12, %8 ]
  %18 = phi i32 [ %28, %13 ], [ 0, %8 ]
  %19 = getelementptr inbounds i64, ptr %16, i64 1
  %20 = load i64, ptr %16, align 8, !tbaa !63
  %21 = getelementptr inbounds i64, ptr %15, i64 1
  %22 = load i64, ptr %15, align 8, !tbaa !63
  %23 = getelementptr inbounds i64, ptr %14, i64 1
  %24 = load i64, ptr %14, align 8, !tbaa !63
  %25 = or i64 %24, %22
  %26 = and i64 %25, %20
  %27 = getelementptr inbounds i64, ptr %17, i64 1
  store i64 %26, ptr %17, align 8, !tbaa !63
  %28 = add nuw i32 %18, 1
  %29 = icmp eq i32 %28, %6
  br i1 %29, label %30, label %13, !prof !141, !llvm.loop !142

30:                                               ; preds = %13, %4
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @sbitmap_intersection_of_succs(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #11 !prof !143 {
  %4 = load ptr, ptr @cfun, align 8, !tbaa !39
  %5 = getelementptr inbounds %struct.function, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !144
  %7 = getelementptr inbounds %struct.control_flow_graph, ptr %6, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !146
  %9 = zext i32 %2 to i64
  %10 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %8, i64 0, i32 2, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !39
  %12 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 2
  %13 = load i32, ptr %12, align 4, !tbaa !61
  %14 = load ptr, ptr %0, align 8, !tbaa !62
  %15 = icmp eq ptr %14, null
  br i1 %15, label %17, label %16, !prof !148

16:                                               ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 752, ptr noundef nonnull @.str.1) #29
  br label %17

17:                                               ; preds = %3, %16
  %18 = getelementptr inbounds %struct.basic_block_def, ptr %11, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !149
  %20 = icmp eq ptr %19, null
  br label %21

21:                                               ; preds = %56, %17
  %22 = phi ptr [ null, %17 ], [ %34, %56 ]
  %23 = phi i32 [ 0, %17 ], [ %57, %56 ]
  br i1 %20, label %26, label %24, !prof !151

24:                                               ; preds = %21
  %25 = load i32, ptr %19, align 8, !tbaa !152
  br label %26

26:                                               ; preds = %21, %24
  %27 = phi i32 [ %25, %24 ], [ 0, %21 ]
  %28 = icmp ult i32 %23, %27
  br i1 %28, label %29, label %58, !prof !148

29:                                               ; preds = %26
  %30 = load ptr, ptr @cfun, align 8
  %31 = getelementptr inbounds %struct.function, ptr %30, i64 0, i32 1
  %32 = zext i32 %23 to i64
  %33 = getelementptr inbounds %struct.VEC_edge_base, ptr %19, i64 0, i32 2, i64 %32
  %34 = load ptr, ptr %33, align 8, !tbaa !39
  %35 = getelementptr inbounds %struct.edge_def, ptr %34, i64 0, i32 1
  %36 = load ptr, ptr %35, align 8, !tbaa !154
  %37 = load ptr, ptr %31, align 8, !tbaa !144
  %38 = getelementptr inbounds %struct.control_flow_graph, ptr %37, i64 0, i32 1
  %39 = load ptr, ptr %38, align 8, !tbaa !156
  %40 = icmp eq ptr %36, %39
  br i1 %40, label %56, label %41, !prof !151

41:                                               ; preds = %29
  %42 = getelementptr inbounds %struct.basic_block_def, ptr %36, i64 0, i32 9
  %43 = load i32, ptr %42, align 8, !tbaa !157
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds ptr, ptr %1, i64 %44
  %46 = load ptr, ptr %45, align 8, !tbaa !39
  %47 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 3
  %48 = getelementptr inbounds %struct.simple_bitmap_def, ptr %46, i64 0, i32 3
  %49 = load i32, ptr %12, align 4, !tbaa !61
  %50 = zext i32 %49 to i64
  %51 = shl nuw nsw i64 %50, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %47, ptr nonnull align 8 %48, i64 %51, i1 false), !prof !158
  %52 = load ptr, ptr %0, align 8, !tbaa !62
  %53 = icmp eq ptr %52, null
  br i1 %53, label %58, label %54, !prof !148

54:                                               ; preds = %41
  %55 = load ptr, ptr %46, align 8, !tbaa !62
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %52, ptr align 1 %55, i64 %50, i1 false)
  br label %58

56:                                               ; preds = %29
  %57 = add nuw i32 %23, 1
  br label %21, !llvm.loop !159

58:                                               ; preds = %26, %54, %41
  %59 = phi ptr [ %34, %41 ], [ %34, %54 ], [ %22, %26 ]
  %60 = icmp eq ptr %59, null
  br i1 %60, label %66, label %61, !prof !151

61:                                               ; preds = %58
  %62 = getelementptr inbounds %struct.basic_block_def, ptr %11, i64 0, i32 1
  %63 = load ptr, ptr %62, align 8, !tbaa !149
  %64 = icmp eq ptr %63, null
  %65 = load ptr, ptr @cfun, align 8
  br label %67

66:                                               ; preds = %58
  tail call void @sbitmap_ones(ptr noundef nonnull %0)
  br label %108

67:                                               ; preds = %61, %107
  %68 = phi i32 [ %69, %107 ], [ %23, %61 ]
  %69 = add i32 %68, 1
  br i1 %64, label %72, label %70, !prof !160

70:                                               ; preds = %67
  %71 = load i32, ptr %63, align 8, !tbaa !152
  br label %72

72:                                               ; preds = %67, %70
  %73 = phi i32 [ %71, %70 ], [ 0, %67 ]
  %74 = icmp ult i32 %69, %73
  br i1 %74, label %75, label %108, !prof !161

75:                                               ; preds = %72
  %76 = getelementptr inbounds %struct.function, ptr %65, i64 0, i32 1
  %77 = icmp eq i32 %13, 0
  %78 = zext i32 %69 to i64
  %79 = getelementptr inbounds %struct.VEC_edge_base, ptr %63, i64 0, i32 2, i64 %78
  %80 = load ptr, ptr %79, align 8, !tbaa !39
  %81 = getelementptr inbounds %struct.edge_def, ptr %80, i64 0, i32 1
  %82 = load ptr, ptr %81, align 8, !tbaa !154
  %83 = load ptr, ptr %76, align 8, !tbaa !144
  %84 = getelementptr inbounds %struct.control_flow_graph, ptr %83, i64 0, i32 1
  %85 = load ptr, ptr %84, align 8, !tbaa !156
  %86 = icmp eq ptr %82, %85
  %87 = select i1 %86, i1 true, i1 %77
  br i1 %87, label %107, label %88, !prof !162

88:                                               ; preds = %75
  %89 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 3
  %90 = getelementptr inbounds %struct.basic_block_def, ptr %82, i64 0, i32 9
  %91 = load i32, ptr %90, align 8, !tbaa !157
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds ptr, ptr %1, i64 %92
  %94 = load ptr, ptr %93, align 8, !tbaa !39
  %95 = getelementptr inbounds %struct.simple_bitmap_def, ptr %94, i64 0, i32 3
  br label %96

96:                                               ; preds = %88, %96
  %97 = phi ptr [ %102, %96 ], [ %89, %88 ]
  %98 = phi ptr [ %100, %96 ], [ %95, %88 ]
  %99 = phi i32 [ %105, %96 ], [ 0, %88 ]
  %100 = getelementptr inbounds i64, ptr %98, i64 1
  %101 = load i64, ptr %98, align 8, !tbaa !63
  %102 = getelementptr inbounds i64, ptr %97, i64 1
  %103 = load i64, ptr %97, align 8, !tbaa !63
  %104 = and i64 %103, %101
  store i64 %104, ptr %97, align 8, !tbaa !63
  %105 = add nuw i32 %99, 1
  %106 = icmp eq i32 %105, %13
  br i1 %106, label %107, label %96, !prof !163, !llvm.loop !164

107:                                              ; preds = %96, %75
  br label %67, !llvm.loop !165

108:                                              ; preds = %72, %66
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @sbitmap_intersection_of_preds(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #11 !prof !166 {
  %4 = load ptr, ptr @cfun, align 8, !tbaa !39
  %5 = getelementptr inbounds %struct.function, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !144
  %7 = getelementptr inbounds %struct.control_flow_graph, ptr %6, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !146
  %9 = zext i32 %2 to i64
  %10 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %8, i64 0, i32 2, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !39
  %12 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 2
  %13 = load i32, ptr %12, align 4, !tbaa !61
  %14 = load ptr, ptr %0, align 8, !tbaa !62
  %15 = icmp eq ptr %14, null
  br i1 %15, label %17, label %16, !prof !167

16:                                               ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 794, ptr noundef nonnull @.str.1) #29
  br label %17

17:                                               ; preds = %3, %16
  %18 = load ptr, ptr %11, align 8, !tbaa !168
  %19 = icmp eq ptr %18, null
  br label %20

20:                                               ; preds = %53, %17
  %21 = phi i1 [ true, %17 ], [ false, %53 ]
  %22 = phi i32 [ 0, %17 ], [ %54, %53 ]
  br i1 %19, label %25, label %23, !prof !169

23:                                               ; preds = %20
  %24 = load i32, ptr %18, align 8, !tbaa !152
  br label %25

25:                                               ; preds = %20, %23
  %26 = phi i32 [ %24, %23 ], [ 0, %20 ]
  %27 = icmp ult i32 %22, %26
  br i1 %27, label %28, label %55, !prof !167

28:                                               ; preds = %25
  %29 = load ptr, ptr @cfun, align 8
  %30 = getelementptr inbounds %struct.function, ptr %29, i64 0, i32 1
  %31 = zext i32 %22 to i64
  %32 = getelementptr inbounds %struct.VEC_edge_base, ptr %18, i64 0, i32 2, i64 %31
  %33 = load ptr, ptr %32, align 8, !tbaa !39
  %34 = load ptr, ptr %33, align 8, !tbaa !170
  %35 = load ptr, ptr %30, align 8, !tbaa !144
  %36 = load ptr, ptr %35, align 8, !tbaa !171
  %37 = icmp eq ptr %34, %36
  br i1 %37, label %53, label %38, !prof !169

38:                                               ; preds = %28
  %39 = getelementptr inbounds %struct.basic_block_def, ptr %34, i64 0, i32 9
  %40 = load i32, ptr %39, align 8, !tbaa !157
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds ptr, ptr %1, i64 %41
  %43 = load ptr, ptr %42, align 8, !tbaa !39
  %44 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 3
  %45 = getelementptr inbounds %struct.simple_bitmap_def, ptr %43, i64 0, i32 3
  %46 = load i32, ptr %12, align 4, !tbaa !61
  %47 = zext i32 %46 to i64
  %48 = shl nuw nsw i64 %47, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %44, ptr nonnull align 8 %45, i64 %48, i1 false), !prof !172
  %49 = load ptr, ptr %0, align 8, !tbaa !62
  %50 = icmp eq ptr %49, null
  br i1 %50, label %56, label %51, !prof !167

51:                                               ; preds = %38
  %52 = load ptr, ptr %43, align 8, !tbaa !62
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %49, ptr align 1 %52, i64 %47, i1 false)
  br label %56

53:                                               ; preds = %28
  %54 = add nuw i32 %22, 1
  br label %20, !llvm.loop !173

55:                                               ; preds = %25
  br i1 %21, label %60, label %56, !prof !169

56:                                               ; preds = %38, %51, %55
  %57 = load ptr, ptr %11, align 8, !tbaa !168
  %58 = icmp eq ptr %57, null
  %59 = load ptr, ptr @cfun, align 8
  br label %61

60:                                               ; preds = %55
  tail call void @sbitmap_ones(ptr noundef nonnull %0)
  br label %100

61:                                               ; preds = %56, %99
  %62 = phi i32 [ %63, %99 ], [ %22, %56 ]
  %63 = add i32 %62, 1
  br i1 %58, label %66, label %64, !prof !174

64:                                               ; preds = %61
  %65 = load i32, ptr %57, align 8, !tbaa !152
  br label %66

66:                                               ; preds = %61, %64
  %67 = phi i32 [ %65, %64 ], [ 0, %61 ]
  %68 = icmp ult i32 %63, %67
  br i1 %68, label %69, label %100, !prof !175

69:                                               ; preds = %66
  %70 = getelementptr inbounds %struct.function, ptr %59, i64 0, i32 1
  %71 = icmp eq i32 %13, 0
  %72 = zext i32 %63 to i64
  %73 = getelementptr inbounds %struct.VEC_edge_base, ptr %57, i64 0, i32 2, i64 %72
  %74 = load ptr, ptr %73, align 8, !tbaa !39
  %75 = load ptr, ptr %74, align 8, !tbaa !170
  %76 = load ptr, ptr %70, align 8, !tbaa !144
  %77 = load ptr, ptr %76, align 8, !tbaa !171
  %78 = icmp eq ptr %75, %77
  %79 = select i1 %78, i1 true, i1 %71
  br i1 %79, label %99, label %80, !prof !176

80:                                               ; preds = %69
  %81 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 3
  %82 = getelementptr inbounds %struct.basic_block_def, ptr %75, i64 0, i32 9
  %83 = load i32, ptr %82, align 8, !tbaa !157
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds ptr, ptr %1, i64 %84
  %86 = load ptr, ptr %85, align 8, !tbaa !39
  %87 = getelementptr inbounds %struct.simple_bitmap_def, ptr %86, i64 0, i32 3
  br label %88

88:                                               ; preds = %80, %88
  %89 = phi ptr [ %94, %88 ], [ %81, %80 ]
  %90 = phi ptr [ %92, %88 ], [ %87, %80 ]
  %91 = phi i32 [ %97, %88 ], [ 0, %80 ]
  %92 = getelementptr inbounds i64, ptr %90, i64 1
  %93 = load i64, ptr %90, align 8, !tbaa !63
  %94 = getelementptr inbounds i64, ptr %89, i64 1
  %95 = load i64, ptr %89, align 8, !tbaa !63
  %96 = and i64 %95, %93
  store i64 %96, ptr %89, align 8, !tbaa !63
  %97 = add nuw i32 %91, 1
  %98 = icmp eq i32 %97, %13
  br i1 %98, label %99, label %88, !prof !177, !llvm.loop !178

99:                                               ; preds = %88, %69
  br label %61, !llvm.loop !179

100:                                              ; preds = %66, %60
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @sbitmap_union_of_succs(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #9 !prof !38 {
  %4 = load ptr, ptr @cfun, align 8, !tbaa !39
  %5 = getelementptr inbounds %struct.function, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !144
  %7 = getelementptr inbounds %struct.control_flow_graph, ptr %6, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !146
  %9 = zext i32 %2 to i64
  %10 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %8, i64 0, i32 2, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !39
  %12 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 2
  %13 = load i32, ptr %12, align 4, !tbaa !61
  %14 = load ptr, ptr %0, align 8, !tbaa !62
  %15 = icmp eq ptr %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 836, ptr noundef nonnull @.str.1) #29
  br label %17

17:                                               ; preds = %3, %16
  %18 = getelementptr inbounds %struct.basic_block_def, ptr %11, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !149
  %20 = icmp eq ptr %19, null
  %21 = load ptr, ptr @cfun, align 8
  %22 = getelementptr inbounds %struct.function, ptr %21, i64 0, i32 1
  br label %23

23:                                               ; preds = %55, %17
  %24 = phi i32 [ 0, %17 ], [ %56, %55 ]
  br i1 %20, label %27, label %25

25:                                               ; preds = %23
  %26 = load i32, ptr %19, align 8, !tbaa !152
  br label %27

27:                                               ; preds = %23, %25
  %28 = phi i32 [ %26, %25 ], [ 0, %23 ]
  %29 = icmp ult i32 %24, %28
  br i1 %29, label %30, label %57

30:                                               ; preds = %27
  %31 = zext i32 %24 to i64
  %32 = getelementptr inbounds %struct.VEC_edge_base, ptr %19, i64 0, i32 2, i64 %31
  %33 = load ptr, ptr %32, align 8, !tbaa !39
  %34 = getelementptr inbounds %struct.edge_def, ptr %33, i64 0, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !154
  %36 = load ptr, ptr %22, align 8, !tbaa !144
  %37 = getelementptr inbounds %struct.control_flow_graph, ptr %36, i64 0, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !156
  %39 = icmp eq ptr %35, %38
  br i1 %39, label %55, label %40

40:                                               ; preds = %30
  %41 = getelementptr inbounds %struct.basic_block_def, ptr %35, i64 0, i32 9
  %42 = load i32, ptr %41, align 8, !tbaa !157
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds ptr, ptr %1, i64 %43
  %45 = load ptr, ptr %44, align 8, !tbaa !39
  %46 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 3
  %47 = getelementptr inbounds %struct.simple_bitmap_def, ptr %45, i64 0, i32 3
  %48 = load i32, ptr %12, align 4, !tbaa !61
  %49 = zext i32 %48 to i64
  %50 = shl nuw nsw i64 %49, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %46, ptr nonnull align 8 %47, i64 %50, i1 false)
  %51 = load ptr, ptr %0, align 8, !tbaa !62
  %52 = icmp eq ptr %51, null
  br i1 %52, label %57, label %53

53:                                               ; preds = %40
  %54 = load ptr, ptr %45, align 8, !tbaa !62
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %51, ptr align 1 %54, i64 %49, i1 false)
  br label %57

55:                                               ; preds = %30
  %56 = add nuw i32 %24, 1
  br label %23, !llvm.loop !180

57:                                               ; preds = %27, %53, %40
  %58 = getelementptr inbounds %struct.basic_block_def, ptr %11, i64 0, i32 1
  %59 = load ptr, ptr %58, align 8, !tbaa !149
  %60 = icmp eq ptr %59, null
  br i1 %60, label %63, label %61

61:                                               ; preds = %57
  %62 = load i32, ptr %59, align 8, !tbaa !152
  br label %63

63:                                               ; preds = %57, %61
  %64 = phi i32 [ %62, %61 ], [ 0, %57 ]
  %65 = icmp eq i32 %24, %64
  br i1 %65, label %71, label %66

66:                                               ; preds = %63
  %67 = load ptr, ptr @cfun, align 8
  %68 = getelementptr inbounds %struct.function, ptr %67, i64 0, i32 1
  %69 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 3
  %70 = icmp eq i32 %13, 0
  br label %79

71:                                               ; preds = %63
  %72 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 3
  %73 = load i32, ptr %12, align 4, !tbaa !61
  %74 = zext i32 %73 to i64
  %75 = shl nuw nsw i64 %74, 3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %72, i8 0, i64 %75, i1 false)
  %76 = load ptr, ptr %0, align 8, !tbaa !62
  %77 = icmp eq ptr %76, null
  br i1 %77, label %117, label %78

78:                                               ; preds = %71
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %76, i8 0, i64 %74, i1 false)
  br label %117

79:                                               ; preds = %66, %116
  %80 = phi i32 [ %81, %116 ], [ %24, %66 ]
  %81 = add i32 %80, 1
  br i1 %60, label %84, label %82

82:                                               ; preds = %79
  %83 = load i32, ptr %59, align 8, !tbaa !152
  br label %84

84:                                               ; preds = %79, %82
  %85 = phi i32 [ %83, %82 ], [ 0, %79 ]
  %86 = icmp ult i32 %81, %85
  br i1 %86, label %87, label %117

87:                                               ; preds = %84
  %88 = zext i32 %81 to i64
  %89 = getelementptr inbounds %struct.VEC_edge_base, ptr %59, i64 0, i32 2, i64 %88
  %90 = load ptr, ptr %89, align 8, !tbaa !39
  %91 = getelementptr inbounds %struct.edge_def, ptr %90, i64 0, i32 1
  %92 = load ptr, ptr %91, align 8, !tbaa !154
  %93 = load ptr, ptr %68, align 8, !tbaa !144
  %94 = getelementptr inbounds %struct.control_flow_graph, ptr %93, i64 0, i32 1
  %95 = load ptr, ptr %94, align 8, !tbaa !156
  %96 = icmp eq ptr %92, %95
  %97 = select i1 %96, i1 true, i1 %70
  br i1 %97, label %116, label %98

98:                                               ; preds = %87
  %99 = getelementptr inbounds %struct.basic_block_def, ptr %92, i64 0, i32 9
  %100 = load i32, ptr %99, align 8, !tbaa !157
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds ptr, ptr %1, i64 %101
  %103 = load ptr, ptr %102, align 8, !tbaa !39
  %104 = getelementptr inbounds %struct.simple_bitmap_def, ptr %103, i64 0, i32 3
  br label %105

105:                                              ; preds = %98, %105
  %106 = phi ptr [ %111, %105 ], [ %69, %98 ]
  %107 = phi ptr [ %109, %105 ], [ %104, %98 ]
  %108 = phi i32 [ %114, %105 ], [ 0, %98 ]
  %109 = getelementptr inbounds i64, ptr %107, i64 1
  %110 = load i64, ptr %107, align 8, !tbaa !63
  %111 = getelementptr inbounds i64, ptr %106, i64 1
  %112 = load i64, ptr %106, align 8, !tbaa !63
  %113 = or i64 %112, %110
  store i64 %113, ptr %106, align 8, !tbaa !63
  %114 = add nuw i32 %108, 1
  %115 = icmp eq i32 %114, %13
  br i1 %115, label %116, label %105, !llvm.loop !181

116:                                              ; preds = %105, %87
  br label %79, !llvm.loop !182

117:                                              ; preds = %84, %78, %71
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @sbitmap_union_of_preds(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #9 !prof !38 {
  %4 = load ptr, ptr @cfun, align 8, !tbaa !39
  %5 = getelementptr inbounds %struct.function, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !144
  %7 = getelementptr inbounds %struct.control_flow_graph, ptr %6, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !146
  %9 = zext i32 %2 to i64
  %10 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %8, i64 0, i32 2, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !39
  %12 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 2
  %13 = load i32, ptr %12, align 4, !tbaa !61
  %14 = load ptr, ptr %0, align 8, !tbaa !62
  %15 = icmp eq ptr %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 878, ptr noundef nonnull @.str.1) #29
  br label %17

17:                                               ; preds = %3, %16
  %18 = load ptr, ptr %11, align 8, !tbaa !168
  %19 = icmp eq ptr %18, null
  %20 = load ptr, ptr @cfun, align 8
  %21 = getelementptr inbounds %struct.function, ptr %20, i64 0, i32 1
  br label %22

22:                                               ; preds = %52, %17
  %23 = phi i32 [ 0, %17 ], [ %53, %52 ]
  br i1 %19, label %26, label %24

24:                                               ; preds = %22
  %25 = load i32, ptr %18, align 8, !tbaa !152
  br label %26

26:                                               ; preds = %22, %24
  %27 = phi i32 [ %25, %24 ], [ 0, %22 ]
  %28 = icmp ult i32 %23, %27
  br i1 %28, label %29, label %54

29:                                               ; preds = %26
  %30 = zext i32 %23 to i64
  %31 = getelementptr inbounds %struct.VEC_edge_base, ptr %18, i64 0, i32 2, i64 %30
  %32 = load ptr, ptr %31, align 8, !tbaa !39
  %33 = load ptr, ptr %32, align 8, !tbaa !170
  %34 = load ptr, ptr %21, align 8, !tbaa !144
  %35 = load ptr, ptr %34, align 8, !tbaa !171
  %36 = icmp eq ptr %33, %35
  br i1 %36, label %52, label %37

37:                                               ; preds = %29
  %38 = getelementptr inbounds %struct.basic_block_def, ptr %33, i64 0, i32 9
  %39 = load i32, ptr %38, align 8, !tbaa !157
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds ptr, ptr %1, i64 %40
  %42 = load ptr, ptr %41, align 8, !tbaa !39
  %43 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 3
  %44 = getelementptr inbounds %struct.simple_bitmap_def, ptr %42, i64 0, i32 3
  %45 = load i32, ptr %12, align 4, !tbaa !61
  %46 = zext i32 %45 to i64
  %47 = shl nuw nsw i64 %46, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %43, ptr nonnull align 8 %44, i64 %47, i1 false)
  %48 = load ptr, ptr %0, align 8, !tbaa !62
  %49 = icmp eq ptr %48, null
  br i1 %49, label %54, label %50

50:                                               ; preds = %37
  %51 = load ptr, ptr %42, align 8, !tbaa !62
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %48, ptr align 1 %51, i64 %46, i1 false)
  br label %54

52:                                               ; preds = %29
  %53 = add nuw i32 %23, 1
  br label %22, !llvm.loop !183

54:                                               ; preds = %26, %50, %37
  %55 = load ptr, ptr %11, align 8, !tbaa !168
  %56 = icmp eq ptr %55, null
  br i1 %56, label %59, label %57

57:                                               ; preds = %54
  %58 = load i32, ptr %55, align 8, !tbaa !152
  br label %59

59:                                               ; preds = %54, %57
  %60 = phi i32 [ %58, %57 ], [ 0, %54 ]
  %61 = icmp eq i32 %23, %60
  br i1 %61, label %67, label %62

62:                                               ; preds = %59
  %63 = load ptr, ptr @cfun, align 8
  %64 = getelementptr inbounds %struct.function, ptr %63, i64 0, i32 1
  %65 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 3
  %66 = icmp eq i32 %13, 0
  br label %75

67:                                               ; preds = %59
  %68 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 3
  %69 = load i32, ptr %12, align 4, !tbaa !61
  %70 = zext i32 %69 to i64
  %71 = shl nuw nsw i64 %70, 3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %68, i8 0, i64 %71, i1 false)
  %72 = load ptr, ptr %0, align 8, !tbaa !62
  %73 = icmp eq ptr %72, null
  br i1 %73, label %111, label %74

74:                                               ; preds = %67
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %72, i8 0, i64 %70, i1 false)
  br label %111

75:                                               ; preds = %62, %110
  %76 = phi i32 [ %77, %110 ], [ %23, %62 ]
  %77 = add i32 %76, 1
  br i1 %56, label %80, label %78

78:                                               ; preds = %75
  %79 = load i32, ptr %55, align 8, !tbaa !152
  br label %80

80:                                               ; preds = %75, %78
  %81 = phi i32 [ %79, %78 ], [ 0, %75 ]
  %82 = icmp ult i32 %77, %81
  br i1 %82, label %83, label %111

83:                                               ; preds = %80
  %84 = zext i32 %77 to i64
  %85 = getelementptr inbounds %struct.VEC_edge_base, ptr %55, i64 0, i32 2, i64 %84
  %86 = load ptr, ptr %85, align 8, !tbaa !39
  %87 = load ptr, ptr %86, align 8, !tbaa !170
  %88 = load ptr, ptr %64, align 8, !tbaa !144
  %89 = load ptr, ptr %88, align 8, !tbaa !171
  %90 = icmp eq ptr %87, %89
  %91 = select i1 %90, i1 true, i1 %66
  br i1 %91, label %110, label %92

92:                                               ; preds = %83
  %93 = getelementptr inbounds %struct.basic_block_def, ptr %87, i64 0, i32 9
  %94 = load i32, ptr %93, align 8, !tbaa !157
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds ptr, ptr %1, i64 %95
  %97 = load ptr, ptr %96, align 8, !tbaa !39
  %98 = getelementptr inbounds %struct.simple_bitmap_def, ptr %97, i64 0, i32 3
  br label %99

99:                                               ; preds = %92, %99
  %100 = phi ptr [ %105, %99 ], [ %65, %92 ]
  %101 = phi ptr [ %103, %99 ], [ %98, %92 ]
  %102 = phi i32 [ %108, %99 ], [ 0, %92 ]
  %103 = getelementptr inbounds i64, ptr %101, i64 1
  %104 = load i64, ptr %101, align 8, !tbaa !63
  %105 = getelementptr inbounds i64, ptr %100, i64 1
  %106 = load i64, ptr %100, align 8, !tbaa !63
  %107 = or i64 %106, %104
  store i64 %107, ptr %100, align 8, !tbaa !63
  %108 = add nuw i32 %102, 1
  %109 = icmp eq i32 %108, %13
  br i1 %109, label %110, label %99, !llvm.loop !184

110:                                              ; preds = %99, %83
  br label %75, !llvm.loop !185

111:                                              ; preds = %80, %74, %67
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define dso_local i32 @sbitmap_first_set_bit(ptr nocapture noundef readonly %0) local_unnamed_addr #23 !prof !186 {
  %2 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !61
  %4 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 3
  %5 = icmp eq i32 %3, 0
  br i1 %5, label %8, label %6, !prof !187

6:                                                ; preds = %1
  %7 = load i64, ptr %4, align 8, !tbaa !63
  br label %8

8:                                                ; preds = %1, %6
  %9 = phi i64 [ %7, %6 ], [ 0, %1 ]
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %18, !prof !188

11:                                               ; preds = %8
  %12 = tail call i32 @llvm.umax.i32(i32 %3, i32 1)
  %13 = add i32 %12, -1
  %14 = zext i32 %13 to i64
  br label %23

15:                                               ; preds = %26
  %16 = trunc i64 %27 to i32
  %17 = shl i32 %16, 6
  br label %18

18:                                               ; preds = %15, %8
  %19 = phi i32 [ %17, %15 ], [ 0, %8 ]
  %20 = phi i64 [ %29, %15 ], [ %9, %8 ]
  %21 = and i64 %20, 1
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %31, label %38, !prof !188

23:                                               ; preds = %11, %26
  %24 = phi i64 [ 0, %11 ], [ %27, %26 ]
  %25 = icmp eq i64 %24, %14
  br i1 %25, label %38, label %26, !prof !189

26:                                               ; preds = %23
  %27 = add nuw nsw i64 %24, 1
  %28 = getelementptr inbounds i64, ptr %4, i64 %27
  %29 = load i64, ptr %28, align 8, !tbaa !63
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %23, label %15, !prof !190, !llvm.loop !191

31:                                               ; preds = %18, %31
  %32 = phi i64 [ %35, %31 ], [ %20, %18 ]
  %33 = phi i32 [ %34, %31 ], [ %19, %18 ]
  %34 = add i32 %33, 1
  %35 = lshr exact i64 %32, 1
  %36 = and i64 %32, 2
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %31, label %38, !prof !192, !llvm.loop !193

38:                                               ; preds = %23, %31, %18
  %39 = phi i32 [ %19, %18 ], [ %34, %31 ], [ -1, %23 ]
  ret i32 %39
}

; Function Attrs: cold nofree norecurse nosync nounwind memory(argmem: read) uwtable
define dso_local i32 @sbitmap_last_set_bit(ptr nocapture noundef readonly %0) local_unnamed_addr #24 !prof !38 {
  %2 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 3
  %3 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !61
  %5 = zext i32 %4 to i64
  br label %6

6:                                                ; preds = %27, %1
  %7 = phi i64 [ %9, %27 ], [ %5, %1 ]
  %8 = phi i32 [ %28, %27 ], [ undef, %1 ]
  %9 = add nsw i64 %7, -1
  %10 = and i64 %9, 2147483648
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %29

12:                                               ; preds = %6
  %13 = and i64 %9, 2147483647
  %14 = getelementptr inbounds i64, ptr %2, i64 %13
  %15 = load i64, ptr %14, align 8, !tbaa !63
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %27, label %17

17:                                               ; preds = %12
  %18 = trunc i64 %7 to i32
  %19 = shl i32 %18, 6
  br label %20

20:                                               ; preds = %20, %17
  %21 = phi i32 [ %19, %17 ], [ %23, %20 ]
  %22 = phi i64 [ -9223372036854775808, %17 ], [ %26, %20 ]
  %23 = add i32 %21, -1
  %24 = and i64 %22, %15
  %25 = icmp eq i64 %24, 0
  %26 = lshr i64 %22, 1
  br i1 %25, label %20, label %27, !llvm.loop !194

27:                                               ; preds = %20, %12
  %28 = phi i32 [ %8, %12 ], [ %23, %20 ]
  br i1 %16, label %6, label %29, !llvm.loop !195

29:                                               ; preds = %27, %6
  %30 = phi i32 [ -1, %6 ], [ %28, %27 ]
  ret i32 %30
}

; Function Attrs: cold nofree nounwind uwtable
define dso_local void @dump_sbitmap(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #25 !prof !38 {
  %3 = getelementptr inbounds %struct.simple_bitmap_def, ptr %1, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !61
  %5 = getelementptr inbounds %struct.simple_bitmap_def, ptr %1, i64 0, i32 1
  %6 = load i32, ptr %5, align 8, !tbaa !59
  %7 = tail call i64 @fwrite(ptr nonnull @.str.2, i64 2, i64 1, ptr %0)
  %8 = icmp ne i32 %4, 0
  %9 = icmp ne i32 %6, 0
  %10 = select i1 %8, i1 %9, i1 false
  br i1 %10, label %11, label %43

11:                                               ; preds = %2
  %12 = zext i32 %4 to i64
  br label %13

13:                                               ; preds = %11, %38
  %14 = phi i64 [ 0, %11 ], [ %39, %38 ]
  %15 = phi i32 [ 0, %11 ], [ %34, %38 ]
  %16 = getelementptr inbounds %struct.simple_bitmap_def, ptr %1, i64 0, i32 3, i64 %14
  br label %17

17:                                               ; preds = %13, %26
  %18 = phi i64 [ 0, %13 ], [ %33, %26 ]
  %19 = phi i32 [ %15, %13 ], [ %34, %26 ]
  %20 = icmp ne i32 %19, 0
  %21 = urem i32 %19, 10
  %22 = icmp eq i32 %21, 0
  %23 = and i1 %20, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %17
  %25 = tail call i32 @fputc(i32 32, ptr %0)
  br label %26

26:                                               ; preds = %24, %17
  %27 = load i64, ptr %16, align 8, !tbaa !63
  %28 = shl nuw i64 1, %18
  %29 = and i64 %27, %28
  %30 = icmp ne i64 %29, 0
  %31 = zext i1 %30 to i32
  %32 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.4, i32 noundef %31)
  %33 = add nuw nsw i64 %18, 1
  %34 = add i32 %19, 1
  %35 = icmp ult i64 %18, 63
  %36 = icmp ult i32 %34, %6
  %37 = select i1 %35, i1 %36, i1 false
  br i1 %37, label %17, label %38, !llvm.loop !196

38:                                               ; preds = %26
  %39 = add nuw nsw i64 %14, 1
  %40 = icmp ult i64 %39, %12
  %41 = icmp ult i32 %34, %6
  %42 = select i1 %40, i1 %41, i1 false
  br i1 %42, label %13, label %43, !llvm.loop !197

43:                                               ; preds = %38, %2
  %44 = tail call i32 @fputc(i32 10, ptr %0)
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #1

; Function Attrs: cold nofree nounwind uwtable
define dso_local void @dump_sbitmap_file(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #25 !prof !38 {
  %3 = getelementptr inbounds %struct.simple_bitmap_def, ptr %1, i64 0, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !59
  %5 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.6, i32 noundef %4)
  %6 = load i32, ptr %3, align 8, !tbaa !59
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %41, label %8

8:                                                ; preds = %2, %36
  %9 = phi i32 [ %37, %36 ], [ 30, %2 ]
  %10 = phi i32 [ %38, %36 ], [ 0, %2 ]
  %11 = lshr i32 %10, 6
  %12 = zext nneg i32 %11 to i64
  %13 = getelementptr inbounds %struct.simple_bitmap_def, ptr %1, i64 0, i32 3, i64 %12
  %14 = load i64, ptr %13, align 8, !tbaa !63
  %15 = and i32 %10, 63
  %16 = zext nneg i32 %15 to i64
  %17 = shl nuw i64 1, %16
  %18 = and i64 %14, %17
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %36, label %20

20:                                               ; preds = %8
  %21 = icmp ugt i32 %9, 70
  br i1 %21, label %22, label %24

22:                                               ; preds = %20
  %23 = tail call i64 @fwrite(ptr nonnull @.str.7, i64 3, i64 1, ptr %0)
  br label %24

24:                                               ; preds = %22, %20
  %25 = phi i32 [ 0, %22 ], [ %9, %20 ]
  %26 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.8, i32 noundef %10)
  %27 = icmp ugt i32 %10, 9
  %28 = select i1 %27, i32 3, i32 2
  %29 = icmp ugt i32 %10, 99
  %30 = zext i1 %29 to i32
  %31 = add nuw nsw i32 %28, %30
  %32 = icmp ugt i32 %10, 999
  %33 = zext i1 %32 to i32
  %34 = add nuw nsw i32 %31, %33
  %35 = add nuw nsw i32 %34, %25
  br label %36

36:                                               ; preds = %8, %24
  %37 = phi i32 [ %35, %24 ], [ %9, %8 ]
  %38 = add nuw i32 %10, 1
  %39 = load i32, ptr %3, align 8, !tbaa !59
  %40 = icmp ult i32 %38, %39
  br i1 %40, label %8, label %41, !llvm.loop !198

41:                                               ; preds = %36, %2
  %42 = tail call i64 @fwrite(ptr nonnull @.str.9, i64 2, i64 1, ptr %0)
  ret void
}

; Function Attrs: cold nofree nounwind uwtable
define dso_local void @debug_sbitmap(ptr nocapture noundef readonly %0) local_unnamed_addr #25 !prof !38 {
  %2 = load ptr, ptr @stderr, align 8, !tbaa !39
  tail call void @dump_sbitmap_file(ptr noundef %2, ptr noundef %0)
  ret void
}

; Function Attrs: cold nofree nounwind uwtable
define dso_local void @dump_sbitmap_vector(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3, i32 noundef %4) local_unnamed_addr #25 !prof !38 {
  %6 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.10, ptr noundef %1)
  %7 = icmp sgt i32 %4, 0
  br i1 %7, label %8, label %18

8:                                                ; preds = %5
  %9 = zext nneg i32 %4 to i64
  br label %10

10:                                               ; preds = %8, %10
  %11 = phi i64 [ 0, %8 ], [ %16, %10 ]
  %12 = trunc i64 %11 to i32
  %13 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.11, ptr noundef %2, i32 noundef %12)
  %14 = getelementptr inbounds ptr, ptr %3, i64 %11
  %15 = load ptr, ptr %14, align 8, !tbaa !39
  tail call void @dump_sbitmap(ptr noundef %0, ptr noundef %15)
  %16 = add nuw nsw i64 %11, 1
  %17 = icmp eq i64 %16, %9
  br i1 %17, label %18, label %10, !llvm.loop !199

18:                                               ; preds = %10, %5
  %19 = tail call i32 @fputc(i32 10, ptr %0)
  ret void
}

; Function Attrs: cold nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local i64 @sbitmap_popcount(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #20 !prof !38 {
  %3 = icmp eq i64 %1, 0
  br i1 %3, label %80, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 1
  %6 = load i32, ptr %5, align 8, !tbaa !59
  %7 = zext i32 %6 to i64
  %8 = tail call i64 @llvm.umin.i64(i64 %7, i64 %1)
  %9 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 2
  %10 = load i32, ptr %9, align 4, !tbaa !61
  %11 = zext i32 %10 to i64
  %12 = add nuw nsw i64 %8, 64
  %13 = lshr i64 %12, 6
  %14 = add nsw i64 %13, -1
  %15 = icmp ugt i64 %14, %11
  %16 = trunc i64 %14 to i32
  %17 = select i1 %15, i32 %10, i32 %16
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %50, label %19

19:                                               ; preds = %4
  %20 = load ptr, ptr %0, align 8, !tbaa !62
  %21 = icmp eq ptr %20, null
  %22 = zext i32 %17 to i64
  br label %23

23:                                               ; preds = %19, %45
  %24 = phi i64 [ 0, %19 ], [ %48, %45 ]
  %25 = phi i64 [ 0, %19 ], [ %47, %45 ]
  br i1 %21, label %30, label %26

26:                                               ; preds = %23
  %27 = getelementptr inbounds i8, ptr %20, i64 %24
  %28 = load i8, ptr %27, align 1, !tbaa !50
  %29 = zext i8 %28 to i64
  br label %45

30:                                               ; preds = %23
  %31 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 3, i64 %24
  %32 = load i64, ptr %31, align 8, !tbaa !63
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %45, label %34

34:                                               ; preds = %30, %34
  %35 = phi i64 [ %43, %34 ], [ 0, %30 ]
  %36 = phi i64 [ %42, %34 ], [ 0, %30 ]
  %37 = lshr i64 %32, %35
  %38 = and i64 %37, 255
  %39 = getelementptr inbounds [256 x i8], ptr @popcount_table, i64 0, i64 %38
  %40 = load i8, ptr %39, align 1, !tbaa !50
  %41 = zext i8 %40 to i64
  %42 = add i64 %36, %41
  %43 = add nuw nsw i64 %35, 8
  %44 = icmp ult i64 %35, 56
  br i1 %44, label %34, label %45, !llvm.loop !64

45:                                               ; preds = %34, %30, %26
  %46 = phi i64 [ %29, %26 ], [ 0, %30 ], [ %42, %34 ]
  %47 = add i64 %46, %25
  %48 = add nuw nsw i64 %24, 1
  %49 = icmp eq i64 %48, %22
  br i1 %49, label %50, label %23, !llvm.loop !200

50:                                               ; preds = %45, %4
  %51 = phi i64 [ 0, %4 ], [ %47, %45 ]
  %52 = icmp ult i32 %17, %10
  br i1 %52, label %53, label %80

53:                                               ; preds = %50
  %54 = trunc i64 %8 to i32
  %55 = and i32 %54, 63
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %80, label %57

57:                                               ; preds = %53
  %58 = zext nneg i32 %17 to i64
  %59 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 3, i64 %58
  %60 = load i64, ptr %59, align 8, !tbaa !63
  %61 = sub nuw nsw i32 64, %55
  %62 = zext nneg i32 %61 to i64
  %63 = lshr i64 -1, %62
  %64 = and i64 %60, %63
  %65 = icmp eq i64 %64, 0
  br i1 %65, label %77, label %66

66:                                               ; preds = %57, %66
  %67 = phi i64 [ %75, %66 ], [ 0, %57 ]
  %68 = phi i64 [ %74, %66 ], [ 0, %57 ]
  %69 = lshr i64 %64, %67
  %70 = and i64 %69, 255
  %71 = getelementptr inbounds [256 x i8], ptr @popcount_table, i64 0, i64 %70
  %72 = load i8, ptr %71, align 1, !tbaa !50
  %73 = zext i8 %72 to i64
  %74 = add i64 %68, %73
  %75 = add nuw nsw i64 %67, 8
  %76 = icmp ult i64 %67, 56
  br i1 %76, label %66, label %77, !llvm.loop !64

77:                                               ; preds = %66, %57
  %78 = phi i64 [ 0, %57 ], [ %74, %66 ]
  %79 = add i64 %78, %51
  br label %80

80:                                               ; preds = %50, %77, %53, %2
  %81 = phi i64 [ 0, %2 ], [ %51, %50 ], [ %79, %77 ], [ %51, %53 ]
  ret i64 %81
}

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #26

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #27

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #27

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #28

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #28

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #28

attributes #0 = { cold inlinehint nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold inlinehint mustprogress nofree nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #11 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #14 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { cold mustprogress nofree nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { inlinehint nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { cold nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { cold nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { inlinehint nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { cold nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { cold nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { nofree nounwind willreturn memory(argmem: read) }
attributes #27 = { nofree nounwind }
attributes #28 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #29 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!37}

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
!34 = distinct !{!35, !36}
!35 = !{ptr @sbitmap_alloc, ptr @xmalloc, i64 594019}
!36 = !{ptr @sbitmap_vector_alloc, ptr @xmalloc, i64 806}
!37 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!38 = !{!"function_entry_count", i64 0}
!39 = !{!40, !40, i64 0}
!40 = !{!"any pointer", !41, i64 0}
!41 = !{!"omnipotent char", !42, i64 0}
!42 = !{!"Simple C/C++ TBAA"}
!43 = !{!44, !40, i64 8}
!44 = !{!"_IO_FILE", !45, i64 0, !40, i64 8, !40, i64 16, !40, i64 24, !40, i64 32, !40, i64 40, !40, i64 48, !40, i64 56, !40, i64 64, !40, i64 72, !40, i64 80, !40, i64 88, !40, i64 96, !40, i64 104, !45, i64 112, !45, i64 116, !46, i64 120, !47, i64 128, !41, i64 130, !41, i64 131, !40, i64 136, !46, i64 144, !40, i64 152, !40, i64 160, !40, i64 168, !40, i64 176, !46, i64 184, !45, i64 192, !41, i64 196}
!45 = !{!"int", !41, i64 0}
!46 = !{!"long", !41, i64 0}
!47 = !{!"short", !41, i64 0}
!48 = !{!44, !40, i64 16}
!49 = !{!"branch_weights", i32 2000, i32 1}
!50 = !{!41, !41, i64 0}
!51 = !{!44, !40, i64 40}
!52 = !{!44, !40, i64 48}
!53 = !{!44, !45, i64 0}
!54 = !{!45, !45, i64 0}
!55 = distinct !{!55, !56, !57}
!56 = !{!"llvm.loop.mustprogress"}
!57 = !{!"llvm.loop.unroll.disable"}
!58 = !{!"function_entry_count", i64 594019}
!59 = !{!60, !45, i64 8}
!60 = !{!"simple_bitmap_def", !40, i64 0, !45, i64 8, !45, i64 12, !41, i64 16}
!61 = !{!60, !45, i64 12}
!62 = !{!60, !40, i64 0}
!63 = !{!46, !46, i64 0}
!64 = distinct !{!64, !56, !57}
!65 = !{!"function_entry_count", i64 806}
!66 = !{!"branch_weights", i32 1, i32 805}
!67 = !{!"branch_weights", i32 805, i32 164384}
!68 = distinct !{!68, !56, !57}
!69 = !{!"function_entry_count", i64 115}
!70 = !{!"VP", i32 1, i64 115, i64 8, i64 58, i64 513, i64 28, i64 129, i64 10, i64 33, i64 9}
!71 = !{!"branch_weights", i32 115, i32 0}
!72 = !{!"function_entry_count", i64 302046}
!73 = !{!"branch_weights", i32 1, i32 183}
!74 = !{!"branch_weights", i32 183, i32 1210113}
!75 = distinct !{!75, !56, !57}
!76 = !{!"branch_weights", i32 574, i32 302000}
!77 = distinct !{!77, !56, !57}
!78 = !{!"function_entry_count", i64 841389}
!79 = !{!"VP", i32 1, i64 841389, i64 513, i64 537391, i64 8, i64 286073, i64 65, i64 5621, i64 33, i64 3901}
!80 = !{!"branch_weights", i32 841389, i32 0}
!81 = !{!"function_entry_count", i64 6140}
!82 = !{!"VP", i32 1, i64 6140, i64 8, i64 4509, i64 16, i64 504, i64 17, i64 443, i64 33, i64 410}
!83 = !{!"branch_weights", i32 50450, i32 0}
!84 = !{!"branch_weights", i32 348, i32 50102}
!85 = !{!"branch_weights", i32 50102, i32 0}
!86 = !{!"function_entry_count", i64 310}
!87 = !{!"branch_weights", i32 1, i32 309}
!88 = !{!"VP", i32 1, i64 60618, i64 8, i64 36520, i64 16, i64 8264, i64 17, i64 7260, i64 32, i64 4396}
!89 = !{!"branch_weights", i32 60618, i32 0}
!90 = !{!"branch_weights", i32 309, i32 60309}
!91 = distinct !{!91, !56, !57}
!92 = !{!"function_entry_count", i64 217}
!93 = !{!"branch_weights", i32 1, i32 216}
!94 = !{!"VP", i32 1, i64 44310, i64 8, i64 32541, i64 16, i64 3643, i64 17, i64 3202, i64 33, i64 2960}
!95 = !{!"branch_weights", i32 216, i32 44094}
!96 = distinct !{!96, !56, !57}
!97 = !{!"function_entry_count", i64 31949}
!98 = !{!"branch_weights", i32 31949, i32 0}
!99 = !{!"branch_weights", i32 1, i32 31948}
!100 = !{!"branch_weights", i32 31948, i32 27715}
!101 = distinct !{!101, !56, !57}
!102 = distinct !{!102, !56, !57}
!103 = !{!"function_entry_count", i64 15721}
!104 = !{!"branch_weights", i32 15721, i32 0}
!105 = !{!"branch_weights", i32 1, i32 15720}
!106 = !{!"branch_weights", i32 15720, i32 5021}
!107 = distinct !{!107, !56, !57}
!108 = !{!"branch_weights", i32 0, i32 15721}
!109 = !{!"function_entry_count", i64 25600}
!110 = !{!"branch_weights", i32 25600, i32 0}
!111 = !{!"branch_weights", i32 0, i32 25600}
!112 = !{!"branch_weights", i32 1, i32 25599}
!113 = !{!"branch_weights", i32 25599, i32 8181}
!114 = distinct !{!114, !56, !57}
!115 = distinct !{!115, !56, !57}
!116 = distinct !{!116, !56, !57}
!117 = distinct !{!117, !56, !57}
!118 = !{!"function_entry_count", i64 9879}
!119 = !{!"branch_weights", i32 1, i32 9878}
!120 = !{!"branch_weights", i32 13039, i32 0}
!121 = !{!"branch_weights", i32 9878, i32 3161}
!122 = distinct !{!122, !56, !57}
!123 = distinct !{!123, !56, !57}
!124 = distinct !{!124, !56, !57}
!125 = distinct !{!125, !56, !57}
!126 = !{!"function_entry_count", i64 597973}
!127 = !{!"branch_weights", i32 1, i32 597972}
!128 = !{!"branch_weights", i32 499227316, i32 0}
!129 = !{!"branch_weights", i32 597972, i32 498629344}
!130 = distinct !{!130, !56, !57}
!131 = distinct !{!131, !56, !57}
!132 = !{!"function_entry_count", i64 5979}
!133 = !{!"branch_weights", i32 5979, i32 0}
!134 = !{!"branch_weights", i32 1, i32 5978}
!135 = !{!"branch_weights", i32 5978, i32 1891}
!136 = distinct !{!136, !56, !57}
!137 = distinct !{!137, !56, !57}
!138 = distinct !{!138, !56, !57}
!139 = !{!"function_entry_count", i64 9742}
!140 = !{!"branch_weights", i32 1, i32 9741}
!141 = !{!"branch_weights", i32 9741, i32 3131}
!142 = distinct !{!142, !56, !57}
!143 = !{!"function_entry_count", i64 5873}
!144 = !{!145, !40, i64 8}
!145 = !{!"function", !40, i64 0, !40, i64 8, !40, i64 16, !40, i64 24, !40, i64 32, !40, i64 40, !40, i64 48, !40, i64 56, !40, i64 64, !40, i64 72, !40, i64 80, !40, i64 88, !40, i64 96, !45, i64 104, !45, i64 108, !45, i64 112, !45, i64 116, !45, i64 120, !45, i64 124, !40, i64 128, !45, i64 136, !45, i64 137, !45, i64 138, !45, i64 138, !45, i64 138, !45, i64 138, !45, i64 138, !45, i64 138, !45, i64 138, !45, i64 139, !45, i64 139, !45, i64 139, !45, i64 139, !45, i64 139, !45, i64 139, !45, i64 139}
!146 = !{!147, !40, i64 16}
!147 = !{!"control_flow_graph", !40, i64 0, !40, i64 8, !40, i64 16, !45, i64 24, !45, i64 28, !45, i64 32, !40, i64 40, !45, i64 48, !41, i64 52, !41, i64 60, !45, i64 68, !45, i64 72}
!148 = !{!"branch_weights", i32 5873, i32 0}
!149 = !{!150, !40, i64 8}
!150 = !{!"basic_block_def", !40, i64 0, !40, i64 8, !40, i64 16, !40, i64 24, !41, i64 32, !40, i64 48, !40, i64 56, !41, i64 64, !46, i64 72, !45, i64 80, !45, i64 84, !45, i64 88, !45, i64 92, !45, i64 96}
!151 = !{!"branch_weights", i32 0, i32 5873}
!152 = !{!153, !45, i64 0}
!153 = !{!"VEC_edge_base", !45, i64 0, !45, i64 4, !41, i64 8}
!154 = !{!155, !40, i64 8}
!155 = !{!"edge_def", !40, i64 0, !40, i64 8, !41, i64 16, !40, i64 24, !40, i64 32, !45, i64 40, !45, i64 44, !45, i64 48, !45, i64 52, !46, i64 56}
!156 = !{!147, !40, i64 8}
!157 = !{!150, !45, i64 80}
!158 = !{!"VP", i32 1, i64 5873, i64 8, i64 5499, i64 33, i64 374}
!159 = distinct !{!159, !56, !57}
!160 = !{!"branch_weights", i32 0, i32 9742}
!161 = !{!"branch_weights", i32 3869, i32 5873}
!162 = !{!"branch_weights", i32 3869, i32 14965292}
!163 = !{!"branch_weights", i32 3868, i32 1261}
!164 = distinct !{!164, !56, !57}
!165 = distinct !{!165, !56, !57}
!166 = !{!"function_entry_count", i64 21977}
!167 = !{!"branch_weights", i32 21977, i32 0}
!168 = !{!150, !40, i64 0}
!169 = !{!"branch_weights", i32 0, i32 21977}
!170 = !{!155, !40, i64 0}
!171 = !{!147, !40, i64 0}
!172 = !{!"VP", i32 1, i64 21977, i64 8, i64 10540, i64 16, i64 4078, i64 17, i64 3603, i64 32, i64 2186}
!173 = distinct !{!173, !56, !57}
!174 = !{!"branch_weights", i32 0, i32 36858}
!175 = !{!"branch_weights", i32 14881, i32 21977}
!176 = !{!"branch_weights", i32 14881, i32 221429280}
!177 = !{!"branch_weights", i32 14880, i32 16176}
!178 = distinct !{!178, !56, !57}
!179 = distinct !{!179, !56, !57}
!180 = distinct !{!180, !56, !57}
!181 = distinct !{!181, !56, !57}
!182 = distinct !{!182, !56, !57}
!183 = distinct !{!183, !56, !57}
!184 = distinct !{!184, !56, !57}
!185 = distinct !{!185, !56, !57}
!186 = !{!"function_entry_count", i64 503}
!187 = !{!"branch_weights", i32 0, i32 503}
!188 = !{!"branch_weights", i32 310, i32 1}
!189 = !{!"branch_weights", i32 192, i32 54859}
!190 = !{!"branch_weights", i32 54741, i32 310}
!191 = distinct !{!191, !56, !57}
!192 = !{!"branch_weights", i32 5373, i32 310}
!193 = distinct !{!193, !56, !57}
!194 = distinct !{!194, !57}
!195 = distinct !{!195, !56, !57}
!196 = distinct !{!196, !56, !57}
!197 = distinct !{!197, !56, !57}
!198 = distinct !{!198, !56, !57}
!199 = distinct !{!199, !56, !57}
!200 = distinct !{!200, !56, !57}
