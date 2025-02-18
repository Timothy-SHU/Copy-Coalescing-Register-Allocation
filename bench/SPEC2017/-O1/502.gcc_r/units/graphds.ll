; ModuleID = 'graphds.c'
source_filename = "graphds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.bitmap_element_def = type { ptr, ptr, i32, [2 x i64] }
%struct._IO_FILE = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, [1 x i8], ptr, i64, ptr, ptr, ptr, ptr, i64, i32, [20 x i8] }
%struct.graph = type { i32, ptr, ptr }
%struct.vertex = type { ptr, ptr, i32, i32, ptr }
%struct.graph_edge = type { i32, i32, ptr, ptr, ptr }
%struct.VEC_int_base = type { i32, i32, [1 x i32] }

@stdout = external local_unnamed_addr global ptr, align 8
@stdin = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [11 x i8] c"%d (%d)\09<-\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c" %d\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"\09->\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"graphds.c\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@bitmap_zero_bits = external local_unnamed_addr global %struct.bitmap_element_def, align 8

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @vprintf(ptr noalias nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 !prof !50 {
  %3 = load ptr, ptr @stdout, align 8, !tbaa !51
  %4 = tail call i32 @vfprintf(ptr noundef %3, ptr noundef %0, ptr noundef %1)
  ret i32 %4
}

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @getchar() local_unnamed_addr #0 !prof !50 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !51
  %2 = tail call i32 @getc(ptr noundef %1)
  ret i32 %2
}

; Function Attrs: nofree nounwind
declare noundef i32 @getc(ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !50 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !55
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !60
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !61

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #16
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !55
  %11 = load i8, ptr %3, align 1, !tbaa !62
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

declare i32 @__uflow(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !50 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !55
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !60
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !61

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #16
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !55
  %11 = load i8, ptr %3, align 1, !tbaa !62
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #2 !prof !50 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !51
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !55
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !60
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !61

7:                                                ; preds = %0
  %8 = tail call i32 @__uflow(ptr noundef %1) #16
  br label %13

9:                                                ; preds = %0
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !55
  %11 = load i8, ptr %3, align 1, !tbaa !62
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @putchar(i32 noundef %0) local_unnamed_addr #0 !prof !50 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !51
  %3 = tail call i32 @putc(i32 noundef %0, ptr noundef %2)
  ret i32 %3
}

; Function Attrs: nofree nounwind
declare noundef i32 @putc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !50 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !63
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !64
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !61

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #16
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !63
  store i8 %12, ptr %4, align 1, !tbaa !62
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

declare i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !50 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !63
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !64
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !61

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #16
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !63
  store i8 %12, ptr %4, align 1, !tbaa !62
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 noundef %0) local_unnamed_addr #2 !prof !50 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !51
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !63
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !64
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !61

8:                                                ; preds = %1
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %2, i32 noundef %9) #16
  br label %15

11:                                               ; preds = %1
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !63
  store i8 %12, ptr %4, align 1, !tbaa !62
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i64 @getline(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 !prof !50 {
  %4 = tail call i64 @__getdelim(ptr noundef %0, ptr noundef %1, i32 noundef 10, ptr noundef %2) #16
  ret i64 %4
}

declare i64 @__getdelim(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @feof_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !50 {
  %2 = load i32, ptr %0, align 8, !tbaa !65
  %3 = lshr i32 %2, 4
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @ferror_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !50 {
  %2 = load i32, ptr %0, align 8, !tbaa !65
  %3 = lshr i32 %2, 5
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @tolower(i32 noundef %0) local_unnamed_addr #5 !prof !50 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_tolower_loc() #16
  %6 = load ptr, ptr %5, align 8, !tbaa !51
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !66
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_tolower_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @toupper(i32 noundef %0) local_unnamed_addr #5 !prof !50 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_toupper_loc() #16
  %6 = load ptr, ptr %5, align 8, !tbaa !51
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !66
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_toupper_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i32 @atoi(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !50 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  %3 = trunc i64 %2 to i32
  ret i32 %3
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atol(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !50 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atoll(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !50 {
  %2 = tail call i64 @strtoll(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtoll(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local noundef ptr @bsearch(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #2 !prof !50 {
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
  br i1 %23, label %7, label %24, !llvm.loop !67

24:                                               ; preds = %16, %20, %5
  %25 = phi ptr [ null, %5 ], [ %13, %16 ], [ null, %20 ]
  ret ptr %25
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local double @atof(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !50 {
  %2 = tail call double @strtod(ptr nocapture noundef %0, ptr noundef null)
  ret double %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: cold nofree nounwind uwtable
define dso_local void @dump_graph(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #9 !prof !50 {
  %3 = load i32, ptr %1, align 8, !tbaa !70
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %55

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.graph, ptr %1, i64 0, i32 1
  br label %7

7:                                                ; preds = %5, %50
  %8 = phi i64 [ 0, %5 ], [ %51, %50 ]
  %9 = load ptr, ptr %6, align 8, !tbaa !72
  %10 = getelementptr inbounds %struct.vertex, ptr %9, i64 %8
  %11 = load ptr, ptr %10, align 8, !tbaa !73
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %17

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.vertex, ptr %9, i64 %8, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !75
  %16 = icmp eq ptr %15, null
  br i1 %16, label %50, label %17

17:                                               ; preds = %13, %7
  %18 = getelementptr inbounds %struct.vertex, ptr %9, i64 %8, i32 2
  %19 = load i32, ptr %18, align 8, !tbaa !76
  %20 = trunc i64 %8 to i32
  %21 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str, i32 noundef %20, i32 noundef %19)
  %22 = load ptr, ptr %6, align 8, !tbaa !72
  %23 = getelementptr inbounds %struct.vertex, ptr %22, i64 %8
  %24 = load ptr, ptr %23, align 8, !tbaa !51
  %25 = icmp eq ptr %24, null
  br i1 %25, label %33, label %26

26:                                               ; preds = %17, %26
  %27 = phi ptr [ %31, %26 ], [ %24, %17 ]
  %28 = load i32, ptr %27, align 8, !tbaa !77
  %29 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.1, i32 noundef %28)
  %30 = getelementptr inbounds %struct.graph_edge, ptr %27, i64 0, i32 2
  %31 = load ptr, ptr %30, align 8, !tbaa !51
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %26, !llvm.loop !79

33:                                               ; preds = %26, %17
  %34 = tail call i32 @fputc(i32 10, ptr %0)
  %35 = tail call i64 @fwrite(ptr nonnull @.str.3, i64 3, i64 1, ptr %0)
  %36 = load ptr, ptr %6, align 8, !tbaa !72
  %37 = getelementptr inbounds %struct.vertex, ptr %36, i64 %8, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !51
  %39 = icmp eq ptr %38, null
  br i1 %39, label %48, label %40

40:                                               ; preds = %33, %40
  %41 = phi ptr [ %46, %40 ], [ %38, %33 ]
  %42 = getelementptr inbounds %struct.graph_edge, ptr %41, i64 0, i32 1
  %43 = load i32, ptr %42, align 4, !tbaa !80
  %44 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.1, i32 noundef %43)
  %45 = getelementptr inbounds %struct.graph_edge, ptr %41, i64 0, i32 3
  %46 = load ptr, ptr %45, align 8, !tbaa !51
  %47 = icmp eq ptr %46, null
  br i1 %47, label %48, label %40, !llvm.loop !81

48:                                               ; preds = %40, %33
  %49 = tail call i32 @fputc(i32 10, ptr %0)
  br label %50

50:                                               ; preds = %13, %48
  %51 = add nuw nsw i64 %8, 1
  %52 = load i32, ptr %1, align 8, !tbaa !70
  %53 = sext i32 %52 to i64
  %54 = icmp slt i64 %51, %53
  br i1 %54, label %7, label %55, !llvm.loop !82

55:                                               ; preds = %50, %2
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @new_graph(i32 noundef %0) local_unnamed_addr #10 !prof !83 {
  %2 = tail call ptr @xmalloc(i64 noundef 24) #16
  store i32 %0, ptr %2, align 8, !tbaa !70
  %3 = sext i32 %0 to i64
  %4 = tail call ptr @xcalloc(i64 noundef %3, i64 noundef 32) #16
  %5 = getelementptr inbounds %struct.graph, ptr %2, i64 0, i32 1
  store ptr %4, ptr %5, align 8, !tbaa !72
  ret ptr %2
}

declare ptr @xmalloc(i64 noundef) local_unnamed_addr #3

declare ptr @xcalloc(i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define dso_local noundef ptr @add_edge(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #11 !prof !84 {
  %4 = tail call ptr @xmalloc(i64 noundef 32) #16
  %5 = getelementptr inbounds %struct.graph, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !72
  %7 = sext i32 %1 to i64
  %8 = sext i32 %2 to i64
  %9 = getelementptr inbounds %struct.vertex, ptr %6, i64 %8
  store i32 %1, ptr %4, align 8, !tbaa !77
  %10 = getelementptr inbounds %struct.graph_edge, ptr %4, i64 0, i32 1
  store i32 %2, ptr %10, align 4, !tbaa !80
  %11 = load ptr, ptr %9, align 8, !tbaa !73
  %12 = getelementptr inbounds %struct.graph_edge, ptr %4, i64 0, i32 2
  store ptr %11, ptr %12, align 8, !tbaa !85
  store ptr %4, ptr %9, align 8, !tbaa !73
  %13 = getelementptr inbounds %struct.vertex, ptr %6, i64 %7, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !75
  %15 = getelementptr inbounds %struct.graph_edge, ptr %4, i64 0, i32 3
  store ptr %14, ptr %15, align 8, !tbaa !86
  store ptr %4, ptr %13, align 8, !tbaa !75
  ret ptr %4
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @identify_vertices(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #12 !prof !87 {
  %4 = getelementptr inbounds %struct.graph, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !72
  %6 = sext i32 %1 to i64
  %7 = getelementptr inbounds %struct.vertex, ptr %5, i64 %6
  %8 = sext i32 %2 to i64
  %9 = getelementptr inbounds %struct.vertex, ptr %5, i64 %8
  %10 = getelementptr inbounds %struct.vertex, ptr %5, i64 %8, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !75
  %12 = icmp eq ptr %11, null
  br i1 %12, label %23, label %13, !prof !88

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.vertex, ptr %5, i64 %6, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !75
  br label %16

16:                                               ; preds = %13, %16
  %17 = phi ptr [ %15, %13 ], [ %18, %16 ]
  %18 = phi ptr [ %11, %13 ], [ %20, %16 ]
  %19 = getelementptr inbounds %struct.graph_edge, ptr %18, i64 0, i32 3
  %20 = load ptr, ptr %19, align 8, !tbaa !86
  store i32 %1, ptr %18, align 8, !tbaa !77
  store ptr %17, ptr %19, align 8, !tbaa !86
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %16, !prof !89, !llvm.loop !90

22:                                               ; preds = %16
  store ptr %18, ptr %14, align 8, !tbaa !75
  br label %23

23:                                               ; preds = %22, %3
  store ptr null, ptr %10, align 8, !tbaa !75
  %24 = load ptr, ptr %9, align 8, !tbaa !73
  %25 = icmp eq ptr %24, null
  br i1 %25, label %36, label %26, !prof !91

26:                                               ; preds = %23
  %27 = load ptr, ptr %7, align 8, !tbaa !73
  br label %28

28:                                               ; preds = %26, %28
  %29 = phi ptr [ %27, %26 ], [ %30, %28 ]
  %30 = phi ptr [ %24, %26 ], [ %32, %28 ]
  %31 = getelementptr inbounds %struct.graph_edge, ptr %30, i64 0, i32 2
  %32 = load ptr, ptr %31, align 8, !tbaa !85
  %33 = getelementptr inbounds %struct.graph_edge, ptr %30, i64 0, i32 1
  store i32 %1, ptr %33, align 4, !tbaa !80
  store ptr %29, ptr %31, align 8, !tbaa !85
  %34 = icmp eq ptr %32, null
  br i1 %34, label %35, label %28, !prof !92, !llvm.loop !93

35:                                               ; preds = %28
  store ptr %30, ptr %7, align 8, !tbaa !73
  br label %36

36:                                               ; preds = %35, %23
  store ptr null, ptr %9, align 8, !tbaa !73
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @graphds_dfs(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr noundef %3, i8 noundef zeroext %4, ptr noundef %5) local_unnamed_addr #10 !prof !94 {
  %7 = load i32, ptr %0, align 8, !tbaa !70
  %8 = sext i32 %7 to i64
  %9 = shl nsw i64 %8, 3
  %10 = tail call ptr @xmalloc(i64 noundef %9) #16
  %11 = icmp eq ptr %5, null
  br i1 %11, label %12, label %19, !prof !95

12:                                               ; preds = %6
  %13 = load i32, ptr %0, align 8, !tbaa !70
  %14 = icmp sgt i32 %13, 0
  br i1 %14, label %15, label %106, !prof !96

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.graph, ptr %0, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !72
  %18 = zext nneg i32 %13 to i64
  br label %100

19:                                               ; preds = %6
  %20 = load ptr, ptr %5, align 8, !tbaa !97
  %21 = icmp eq ptr %20, null
  %22 = select i1 %21, ptr @bitmap_zero_bits, ptr %20, !prof !99
  %23 = getelementptr inbounds %struct.bitmap_element_def, ptr %22, i64 0, i32 2
  %24 = load i32, ptr %23, align 8, !tbaa !100
  %25 = shl i32 %24, 7
  %26 = getelementptr inbounds %struct.bitmap_element_def, ptr %22, i64 0, i32 3
  %27 = load i64, ptr %26, align 8, !tbaa !102
  %28 = icmp eq i64 %27, 0
  %29 = zext i1 %28 to i32
  %30 = or disjoint i32 %25, %29
  %31 = getelementptr inbounds %struct.graph, ptr %0, i64 0, i32 1
  br label %32

32:                                               ; preds = %93, %19
  %33 = phi i32 [ 0, %19 ], [ %88, %93 ]
  %34 = phi i64 [ %27, %19 ], [ %98, %93 ]
  %35 = phi ptr [ %22, %19 ], [ %90, %93 ]
  %36 = phi i32 [ %30, %19 ], [ %99, %93 ]
  %37 = icmp eq i64 %34, 0
  br i1 %37, label %52, label %38, !prof !103

38:                                               ; preds = %66, %32
  %39 = phi i32 [ %33, %32 ], [ %67, %66 ]
  %40 = phi i64 [ %34, %32 ], [ %71, %66 ]
  %41 = phi ptr [ %35, %32 ], [ %58, %66 ]
  %42 = phi i32 [ %36, %32 ], [ %68, %66 ]
  %43 = and i64 %40, 1
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %87, !prof !104

45:                                               ; preds = %38, %45
  %46 = phi i32 [ %49, %45 ], [ %42, %38 ]
  %47 = phi i64 [ %48, %45 ], [ %40, %38 ]
  %48 = lshr exact i64 %47, 1
  %49 = add i32 %46, 1
  %50 = and i64 %47, 2
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %45, label %87, !prof !105, !llvm.loop !106

52:                                               ; preds = %32
  %53 = add i32 %36, 63
  %54 = and i32 %53, -64
  %55 = add i32 %33, 1
  br label %56

56:                                               ; preds = %83, %52
  %57 = phi i64 [ %34, %52 ], [ %78, %83 ]
  %58 = phi ptr [ %35, %52 ], [ %81, %83 ]
  %59 = phi i32 [ %54, %52 ], [ %86, %83 ]
  %60 = phi i32 [ %55, %52 ], [ 0, %83 ]
  %61 = icmp eq i32 %60, 2
  br i1 %61, label %77, label %62, !prof !107

62:                                               ; preds = %56
  %63 = add i32 %59, 128
  %64 = shl i32 %60, 6
  %65 = sub i32 %63, %64
  br label %66

66:                                               ; preds = %62, %73
  %67 = phi i32 [ %75, %73 ], [ %60, %62 ]
  %68 = phi i32 [ %74, %73 ], [ %59, %62 ]
  %69 = zext i32 %67 to i64
  %70 = getelementptr inbounds %struct.bitmap_element_def, ptr %58, i64 0, i32 3, i64 %69
  %71 = load i64, ptr %70, align 8, !tbaa !102
  %72 = icmp eq i64 %71, 0
  br i1 %72, label %73, label %38, !prof !108

73:                                               ; preds = %66
  %74 = add i32 %68, 64
  %75 = add i32 %67, 1
  %76 = icmp eq i32 %75, 2
  br i1 %76, label %77, label %66, !prof !109, !llvm.loop !110

77:                                               ; preds = %73, %56
  %78 = phi i64 [ %57, %56 ], [ %71, %73 ]
  %79 = phi i32 [ %59, %56 ], [ %65, %73 ]
  %80 = phi i32 [ %60, %56 ], [ 2, %73 ]
  %81 = load ptr, ptr %58, align 8, !tbaa !111
  %82 = icmp eq ptr %81, null
  br i1 %82, label %87, label %83, !prof !108

83:                                               ; preds = %77
  %84 = getelementptr inbounds %struct.bitmap_element_def, ptr %81, i64 0, i32 2
  %85 = load i32, ptr %84, align 8, !tbaa !100
  %86 = shl i32 %85, 7
  br label %56, !llvm.loop !112

87:                                               ; preds = %77, %45, %38
  %88 = phi i32 [ %39, %38 ], [ %39, %45 ], [ %80, %77 ]
  %89 = phi i64 [ %40, %38 ], [ %48, %45 ], [ %78, %77 ]
  %90 = phi ptr [ %41, %38 ], [ %41, %45 ], [ %81, %77 ]
  %91 = phi i32 [ %42, %38 ], [ %49, %45 ], [ %79, %77 ]
  %92 = phi i1 [ false, %38 ], [ false, %45 ], [ true, %77 ]
  br i1 %92, label %106, label %93, !prof !103

93:                                               ; preds = %87
  %94 = load ptr, ptr %31, align 8, !tbaa !72
  %95 = zext i32 %91 to i64
  %96 = getelementptr inbounds %struct.vertex, ptr %94, i64 %95, i32 2
  store i32 -1, ptr %96, align 8, !tbaa !76
  %97 = getelementptr inbounds %struct.vertex, ptr %94, i64 %95, i32 3
  store i32 -1, ptr %97, align 4, !tbaa !113
  %98 = lshr i64 %89, 1
  %99 = add i32 %91, 1
  br label %32, !llvm.loop !114

100:                                              ; preds = %15, %100
  %101 = phi i64 [ 0, %15 ], [ %104, %100 ]
  %102 = getelementptr inbounds %struct.vertex, ptr %17, i64 %101, i32 2
  store i32 -1, ptr %102, align 8, !tbaa !76
  %103 = getelementptr inbounds %struct.vertex, ptr %17, i64 %101, i32 3
  store i32 -1, ptr %103, align 4, !tbaa !113
  %104 = add nuw nsw i64 %101, 1
  %105 = icmp eq i64 %104, %18
  br i1 %105, label %106, label %100, !prof !115, !llvm.loop !116

106:                                              ; preds = %87, %100, %12
  %107 = icmp sgt i32 %2, 0
  br i1 %107, label %108, label %287, !prof !117

108:                                              ; preds = %106
  %109 = getelementptr inbounds %struct.graph, ptr %0, i64 0, i32 1
  %110 = icmp eq i8 %4, 0
  %111 = icmp eq ptr %3, null
  %112 = zext nneg i32 %2 to i64
  br label %113

113:                                              ; preds = %108, %282
  %114 = phi i64 [ 0, %108 ], [ %285, %282 ]
  %115 = phi i32 [ 0, %108 ], [ %284, %282 ]
  %116 = phi i32 [ 0, %108 ], [ %283, %282 ]
  %117 = getelementptr inbounds i32, ptr %1, i64 %114
  %118 = load i32, ptr %117, align 4, !tbaa !66
  %119 = load ptr, ptr %109, align 8, !tbaa !72
  %120 = sext i32 %118 to i64
  %121 = getelementptr inbounds %struct.vertex, ptr %119, i64 %120, i32 3
  %122 = load i32, ptr %121, align 4, !tbaa !113
  %123 = icmp eq i32 %122, -1
  br i1 %123, label %124, label %282, !prof !118

124:                                              ; preds = %113
  %125 = add nsw i32 %115, 1
  %126 = getelementptr inbounds %struct.vertex, ptr %119, i64 %120, i32 2
  store i32 %115, ptr %126, align 8, !tbaa !76
  %127 = getelementptr inbounds %struct.vertex, ptr %119, i64 %120, i32 1
  %128 = getelementptr inbounds %struct.vertex, ptr %119, i64 %120
  %129 = select i1 %110, ptr %128, ptr %127, !prof !119
  %130 = load ptr, ptr %129, align 8, !tbaa !51
  br i1 %11, label %146, label %131, !prof !120

131:                                              ; preds = %124
  %132 = icmp eq ptr %130, null
  br i1 %132, label %146, label %133, !prof !121

133:                                              ; preds = %131, %140
  %134 = phi ptr [ %144, %140 ], [ %130, %131 ]
  %135 = getelementptr inbounds %struct.graph_edge, ptr %134, i64 0, i32 1
  %136 = select i1 %110, ptr %134, ptr %135, !prof !122
  %137 = load i32, ptr %136, align 4, !tbaa !66
  %138 = tail call i32 @bitmap_bit_p(ptr noundef nonnull %5, i32 noundef %137) #16
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %140, label %146, !prof !123

140:                                              ; preds = %133
  %141 = getelementptr inbounds %struct.graph_edge, ptr %134, i64 0, i32 3
  %142 = getelementptr inbounds %struct.graph_edge, ptr %134, i64 0, i32 2
  %143 = select i1 %110, ptr %142, ptr %141, !prof !124
  %144 = load ptr, ptr %143, align 8, !tbaa !51
  %145 = icmp eq ptr %144, null
  br i1 %145, label %146, label %133, !prof !125, !llvm.loop !126

146:                                              ; preds = %133, %140, %131, %124
  %147 = phi ptr [ %130, %124 ], [ null, %131 ], [ %134, %133 ], [ null, %140 ]
  br label %148

148:                                              ; preds = %146, %249
  %149 = phi i32 [ %217, %249 ], [ %116, %146 ]
  %150 = phi i32 [ %229, %249 ], [ %118, %146 ]
  %151 = phi i32 [ %223, %249 ], [ 0, %146 ]
  %152 = phi ptr [ %250, %249 ], [ %147, %146 ]
  %153 = icmp eq ptr %152, null
  br i1 %153, label %197, label %154, !prof !127

154:                                              ; preds = %148
  %155 = sext i32 %151 to i64
  br label %156

156:                                              ; preds = %154, %277
  %157 = phi i64 [ %155, %154 ], [ %252, %277 ]
  %158 = phi ptr [ %152, %154 ], [ %278, %277 ]
  %159 = phi i32 [ %150, %154 ], [ %165, %277 ]
  br label %160

160:                                              ; preds = %156, %190
  %161 = phi ptr [ %158, %156 ], [ %191, %190 ]
  %162 = load ptr, ptr %109, align 8, !tbaa !72
  %163 = getelementptr inbounds %struct.graph_edge, ptr %161, i64 0, i32 1
  %164 = select i1 %110, ptr %161, ptr %163, !prof !128
  %165 = load i32, ptr %164, align 4, !tbaa !66
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds %struct.vertex, ptr %162, i64 %166, i32 2
  %168 = load i32, ptr %167, align 8, !tbaa !76
  %169 = icmp eq i32 %168, -1
  br i1 %169, label %251, label %170, !prof !129

170:                                              ; preds = %160
  %171 = getelementptr inbounds %struct.graph_edge, ptr %161, i64 0, i32 3
  %172 = getelementptr inbounds %struct.graph_edge, ptr %161, i64 0, i32 2
  %173 = select i1 %110, ptr %172, ptr %171, !prof !130
  %174 = load ptr, ptr %173, align 8, !tbaa !51
  br i1 %11, label %190, label %175, !prof !131

175:                                              ; preds = %170
  %176 = icmp eq ptr %174, null
  br i1 %176, label %190, label %177, !prof !132

177:                                              ; preds = %175, %184
  %178 = phi ptr [ %188, %184 ], [ %174, %175 ]
  %179 = getelementptr inbounds %struct.graph_edge, ptr %178, i64 0, i32 1
  %180 = select i1 %110, ptr %178, ptr %179, !prof !133
  %181 = load i32, ptr %180, align 4, !tbaa !66
  %182 = tail call i32 @bitmap_bit_p(ptr noundef nonnull %5, i32 noundef %181) #16
  %183 = icmp eq i32 %182, 0
  br i1 %183, label %184, label %190, !prof !134

184:                                              ; preds = %177
  %185 = getelementptr inbounds %struct.graph_edge, ptr %178, i64 0, i32 3
  %186 = getelementptr inbounds %struct.graph_edge, ptr %178, i64 0, i32 2
  %187 = select i1 %110, ptr %186, ptr %185, !prof !135
  %188 = load ptr, ptr %187, align 8, !tbaa !51
  %189 = icmp eq ptr %188, null
  br i1 %189, label %190, label %177, !prof !136, !llvm.loop !126

190:                                              ; preds = %177, %184, %175, %170
  %191 = phi ptr [ %174, %170 ], [ null, %175 ], [ null, %184 ], [ %178, %177 ]
  %192 = icmp eq ptr %191, null
  br i1 %192, label %193, label %160, !prof !137, !llvm.loop !138

193:                                              ; preds = %190
  %194 = trunc i64 %157 to i32
  br label %197

195:                                              ; preds = %277
  %196 = trunc i64 %252 to i32
  br label %197

197:                                              ; preds = %195, %193, %148
  %198 = phi i32 [ %150, %148 ], [ %159, %193 ], [ %165, %195 ]
  %199 = phi i32 [ %151, %148 ], [ %194, %193 ], [ %196, %195 ]
  br i1 %111, label %216, label %200, !prof !139

200:                                              ; preds = %197
  %201 = load ptr, ptr %3, align 8, !tbaa !51
  %202 = icmp eq ptr %201, null
  br i1 %202, label %208, label %203, !prof !140

203:                                              ; preds = %200
  %204 = getelementptr inbounds %struct.VEC_int_base, ptr %201, i64 0, i32 1
  %205 = load i32, ptr %204, align 4, !tbaa !141
  %206 = load i32, ptr %201, align 4, !tbaa !143
  %207 = icmp eq i32 %205, %206
  br i1 %207, label %208, label %210, !prof !144

208:                                              ; preds = %200, %203
  %209 = tail call ptr @vec_heap_o_reserve(ptr noundef %201, i32 noundef 1, i64 noundef 8, i64 noundef 4) #16
  store ptr %209, ptr %3, align 8, !tbaa !51
  br label %210

210:                                              ; preds = %203, %208
  %211 = load ptr, ptr %3, align 8, !tbaa !51
  %212 = load i32, ptr %211, align 4, !tbaa !143
  %213 = add i32 %212, 1
  store i32 %213, ptr %211, align 4, !tbaa !143
  %214 = zext i32 %212 to i64
  %215 = getelementptr inbounds %struct.VEC_int_base, ptr %211, i64 0, i32 2, i64 %214
  store i32 %198, ptr %215, align 4, !tbaa !66
  br label %216

216:                                              ; preds = %210, %197
  %217 = add nsw i32 %149, 1
  %218 = load ptr, ptr %109, align 8, !tbaa !72
  %219 = sext i32 %198 to i64
  %220 = getelementptr inbounds %struct.vertex, ptr %218, i64 %219, i32 3
  store i32 %149, ptr %220, align 4, !tbaa !113
  %221 = icmp eq i32 %199, 0
  br i1 %221, label %282, label %222, !prof !145

222:                                              ; preds = %216
  %223 = add nsw i32 %199, -1
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds ptr, ptr %10, i64 %224
  %226 = load ptr, ptr %225, align 8, !tbaa !51
  %227 = getelementptr inbounds %struct.graph_edge, ptr %226, i64 0, i32 1
  %228 = select i1 %110, ptr %227, ptr %226, !prof !146
  %229 = load i32, ptr %228, align 4, !tbaa !66
  %230 = getelementptr inbounds %struct.graph_edge, ptr %226, i64 0, i32 3
  %231 = getelementptr inbounds %struct.graph_edge, ptr %226, i64 0, i32 2
  %232 = select i1 %110, ptr %231, ptr %230, !prof !146
  %233 = load ptr, ptr %232, align 8, !tbaa !51
  br i1 %11, label %249, label %234, !prof !147

234:                                              ; preds = %222
  %235 = icmp eq ptr %233, null
  br i1 %235, label %249, label %236, !prof !148

236:                                              ; preds = %234, %243
  %237 = phi ptr [ %247, %243 ], [ %233, %234 ]
  %238 = getelementptr inbounds %struct.graph_edge, ptr %237, i64 0, i32 1
  %239 = select i1 %110, ptr %237, ptr %238, !prof !149
  %240 = load i32, ptr %239, align 4, !tbaa !66
  %241 = tail call i32 @bitmap_bit_p(ptr noundef nonnull %5, i32 noundef %240) #16
  %242 = icmp eq i32 %241, 0
  br i1 %242, label %243, label %249, !prof !150

243:                                              ; preds = %236
  %244 = getelementptr inbounds %struct.graph_edge, ptr %237, i64 0, i32 3
  %245 = getelementptr inbounds %struct.graph_edge, ptr %237, i64 0, i32 2
  %246 = select i1 %110, ptr %245, ptr %244, !prof !151
  %247 = load ptr, ptr %246, align 8, !tbaa !51
  %248 = icmp eq ptr %247, null
  br i1 %248, label %249, label %236, !prof !149, !llvm.loop !126

249:                                              ; preds = %236, %243, %234, %222
  %250 = phi ptr [ %233, %222 ], [ null, %234 ], [ null, %243 ], [ %237, %236 ]
  br label %148, !llvm.loop !152

251:                                              ; preds = %160
  %252 = add i64 %157, 1
  %253 = getelementptr inbounds ptr, ptr %10, i64 %157
  store ptr %161, ptr %253, align 8, !tbaa !51
  %254 = load ptr, ptr %109, align 8, !tbaa !72
  br i1 %110, label %257, label %255, !prof !146

255:                                              ; preds = %251
  %256 = getelementptr inbounds %struct.vertex, ptr %254, i64 %166, i32 1
  br label %259

257:                                              ; preds = %251
  %258 = getelementptr inbounds %struct.vertex, ptr %254, i64 %166
  br label %259

259:                                              ; preds = %257, %255
  %260 = phi ptr [ %256, %255 ], [ %258, %257 ]
  %261 = load ptr, ptr %260, align 8, !tbaa !51
  br i1 %11, label %277, label %262, !prof !147

262:                                              ; preds = %259
  %263 = icmp eq ptr %261, null
  br i1 %263, label %277, label %264, !prof !153

264:                                              ; preds = %262, %271
  %265 = phi ptr [ %275, %271 ], [ %261, %262 ]
  %266 = getelementptr inbounds %struct.graph_edge, ptr %265, i64 0, i32 1
  %267 = select i1 %110, ptr %265, ptr %266, !prof !154
  %268 = load i32, ptr %267, align 4, !tbaa !66
  %269 = tail call i32 @bitmap_bit_p(ptr noundef nonnull %5, i32 noundef %268) #16
  %270 = icmp eq i32 %269, 0
  br i1 %270, label %271, label %277, !prof !155

271:                                              ; preds = %264
  %272 = getelementptr inbounds %struct.graph_edge, ptr %265, i64 0, i32 3
  %273 = getelementptr inbounds %struct.graph_edge, ptr %265, i64 0, i32 2
  %274 = select i1 %110, ptr %273, ptr %272, !prof !156
  %275 = load ptr, ptr %274, align 8, !tbaa !51
  %276 = icmp eq ptr %275, null
  br i1 %276, label %277, label %264, !prof !157, !llvm.loop !126

277:                                              ; preds = %264, %271, %262, %259
  %278 = phi ptr [ %261, %259 ], [ null, %262 ], [ null, %271 ], [ %265, %264 ]
  %279 = load ptr, ptr %109, align 8, !tbaa !72
  %280 = getelementptr inbounds %struct.vertex, ptr %279, i64 %166, i32 2
  store i32 %115, ptr %280, align 8, !tbaa !76
  %281 = icmp eq ptr %278, null
  br i1 %281, label %195, label %156, !prof !158, !llvm.loop !152

282:                                              ; preds = %216, %113
  %283 = phi i32 [ %116, %113 ], [ %217, %216 ]
  %284 = phi i32 [ %115, %113 ], [ %125, %216 ]
  %285 = add nuw nsw i64 %114, 1
  %286 = icmp eq i64 %285, %112
  br i1 %286, label %287, label %113, !prof !159, !llvm.loop !160

287:                                              ; preds = %282, %106
  %288 = phi i32 [ 0, %106 ], [ %284, %282 ]
  tail call void @free(ptr noundef %10)
  ret i32 %288
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #13

; Function Attrs: nounwind uwtable
define dso_local i32 @graphds_scc(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #10 !prof !83 {
  %3 = alloca ptr, align 8
  %4 = load i32, ptr %0, align 8, !tbaa !70
  %5 = sext i32 %4 to i64
  %6 = shl nsw i64 %5, 2
  %7 = tail call ptr @xmalloc(i64 noundef %6) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #16
  store ptr null, ptr %3, align 8, !tbaa !51
  %8 = icmp eq ptr %1, null
  br i1 %8, label %9, label %12, !prof !161

9:                                                ; preds = %2
  %10 = load i32, ptr %0, align 8, !tbaa !70
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %91, label %101, !prof !162

12:                                               ; preds = %2
  %13 = load ptr, ptr %1, align 8, !tbaa !97
  %14 = icmp eq ptr %13, null
  %15 = select i1 %14, ptr @bitmap_zero_bits, ptr %13, !prof !163
  %16 = getelementptr inbounds %struct.bitmap_element_def, ptr %15, i64 0, i32 2
  %17 = load i32, ptr %16, align 8, !tbaa !100
  %18 = shl i32 %17, 7
  %19 = getelementptr inbounds %struct.bitmap_element_def, ptr %15, i64 0, i32 3
  %20 = load i64, ptr %19, align 8, !tbaa !102
  %21 = icmp eq i64 %20, 0
  %22 = zext i1 %21 to i32
  %23 = or disjoint i32 %18, %22
  br label %24

24:                                               ; preds = %86, %12
  %25 = phi i64 [ %87, %86 ], [ 0, %12 ]
  %26 = phi i64 [ %89, %86 ], [ %20, %12 ]
  %27 = phi i32 [ %82, %86 ], [ 0, %12 ]
  %28 = phi i32 [ %90, %86 ], [ %23, %12 ]
  %29 = phi ptr [ %84, %86 ], [ %15, %12 ]
  %30 = icmp eq i64 %26, 0
  br i1 %30, label %45, label %31, !prof !164

31:                                               ; preds = %59, %24
  %32 = phi i64 [ %26, %24 ], [ %64, %59 ]
  %33 = phi i32 [ %27, %24 ], [ %60, %59 ]
  %34 = phi i32 [ %28, %24 ], [ %61, %59 ]
  %35 = phi ptr [ %29, %24 ], [ %52, %59 ]
  %36 = and i64 %32, 1
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %80, !prof !165

38:                                               ; preds = %31, %38
  %39 = phi i32 [ %42, %38 ], [ %34, %31 ]
  %40 = phi i64 [ %41, %38 ], [ %32, %31 ]
  %41 = lshr exact i64 %40, 1
  %42 = add i32 %39, 1
  %43 = and i64 %40, 2
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %38, label %80, !prof !166, !llvm.loop !106

45:                                               ; preds = %24
  %46 = add i32 %28, 63
  %47 = and i32 %46, -64
  %48 = add i32 %27, 1
  br label %49

49:                                               ; preds = %76, %45
  %50 = phi i64 [ %26, %45 ], [ %71, %76 ]
  %51 = phi i32 [ %47, %45 ], [ %79, %76 ]
  %52 = phi ptr [ %29, %45 ], [ %74, %76 ]
  %53 = phi i32 [ %48, %45 ], [ 0, %76 ]
  %54 = icmp eq i32 %53, 2
  br i1 %54, label %70, label %55, !prof !167

55:                                               ; preds = %49
  %56 = add i32 %51, 128
  %57 = shl i32 %53, 6
  %58 = sub i32 %56, %57
  br label %59

59:                                               ; preds = %55, %66
  %60 = phi i32 [ %68, %66 ], [ %53, %55 ]
  %61 = phi i32 [ %67, %66 ], [ %51, %55 ]
  %62 = zext i32 %60 to i64
  %63 = getelementptr inbounds %struct.bitmap_element_def, ptr %52, i64 0, i32 3, i64 %62
  %64 = load i64, ptr %63, align 8, !tbaa !102
  %65 = icmp eq i64 %64, 0
  br i1 %65, label %66, label %31, !prof !168

66:                                               ; preds = %59
  %67 = add i32 %61, 64
  %68 = add i32 %60, 1
  %69 = icmp eq i32 %68, 2
  br i1 %69, label %70, label %59, !prof !169, !llvm.loop !110

70:                                               ; preds = %66, %49
  %71 = phi i64 [ %50, %49 ], [ %64, %66 ]
  %72 = phi i32 [ %51, %49 ], [ %58, %66 ]
  %73 = phi i32 [ %53, %49 ], [ 2, %66 ]
  %74 = load ptr, ptr %52, align 8, !tbaa !111
  %75 = icmp eq ptr %74, null
  br i1 %75, label %80, label %76, !prof !168

76:                                               ; preds = %70
  %77 = getelementptr inbounds %struct.bitmap_element_def, ptr %74, i64 0, i32 2
  %78 = load i32, ptr %77, align 8, !tbaa !100
  %79 = shl i32 %78, 7
  br label %49, !llvm.loop !112

80:                                               ; preds = %70, %38, %31
  %81 = phi i64 [ %32, %31 ], [ %41, %38 ], [ %71, %70 ]
  %82 = phi i32 [ %33, %31 ], [ %33, %38 ], [ %73, %70 ]
  %83 = phi i32 [ %34, %31 ], [ %42, %38 ], [ %72, %70 ]
  %84 = phi ptr [ %35, %31 ], [ %35, %38 ], [ %74, %70 ]
  %85 = phi i1 [ false, %31 ], [ false, %38 ], [ true, %70 ]
  br i1 %85, label %99, label %86, !prof !164

86:                                               ; preds = %80
  %87 = add nuw i64 %25, 1
  %88 = getelementptr inbounds i32, ptr %7, i64 %25
  store i32 %83, ptr %88, align 4, !tbaa !66
  %89 = lshr i64 %81, 1
  %90 = add i32 %83, 1
  br label %24, !llvm.loop !170

91:                                               ; preds = %9, %91
  %92 = phi i64 [ %95, %91 ], [ 0, %9 ]
  %93 = getelementptr inbounds i32, ptr %7, i64 %92
  %94 = trunc i64 %92 to i32
  store i32 %94, ptr %93, align 4, !tbaa !66
  %95 = add nuw nsw i64 %92, 1
  %96 = load i32, ptr %0, align 8, !tbaa !70
  %97 = sext i32 %96 to i64
  %98 = icmp slt i64 %95, %97
  br i1 %98, label %91, label %101, !prof !171, !llvm.loop !172

99:                                               ; preds = %80
  %100 = trunc i64 %25 to i32
  br label %101

101:                                              ; preds = %91, %99, %9
  %102 = phi i32 [ %10, %9 ], [ %100, %99 ], [ %96, %91 ]
  %103 = call i32 @graphds_dfs(ptr noundef nonnull %0, ptr noundef %7, i32 noundef %102, ptr noundef nonnull %3, i8 noundef zeroext 0, ptr noundef %1)
  %104 = load ptr, ptr %3, align 8
  %105 = icmp eq ptr %104, null
  br i1 %105, label %108, label %106, !prof !173

106:                                              ; preds = %101
  %107 = load i32, ptr %104, align 4, !tbaa !143
  br label %108

108:                                              ; preds = %101, %106
  %109 = phi i32 [ %107, %106 ], [ 0, %101 ]
  %110 = icmp eq i32 %109, %102
  br i1 %110, label %112, label %111, !prof !174

111:                                              ; preds = %108
  call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 299, ptr noundef nonnull @.str.5) #16
  br label %112

112:                                              ; preds = %108, %111
  %113 = icmp sgt i32 %102, 0
  br i1 %113, label %114, label %128, !prof !175

114:                                              ; preds = %112
  %115 = zext nneg i32 %102 to i64
  br label %116

116:                                              ; preds = %114, %116
  %117 = phi i64 [ 0, %114 ], [ %126, %116 ]
  %118 = load ptr, ptr %3, align 8
  %119 = trunc i64 %117 to i32
  %120 = xor i32 %119, -1
  %121 = add nsw i32 %102, %120
  %122 = zext i32 %121 to i64
  %123 = getelementptr inbounds %struct.VEC_int_base, ptr %118, i64 0, i32 2, i64 %122
  %124 = load i32, ptr %123, align 4, !tbaa !66
  %125 = getelementptr inbounds i32, ptr %7, i64 %117
  store i32 %124, ptr %125, align 4, !tbaa !66
  %126 = add nuw nsw i64 %117, 1
  %127 = icmp eq i64 %126, %115
  br i1 %127, label %128, label %116, !prof !176, !llvm.loop !177

128:                                              ; preds = %116, %112
  %129 = call i32 @graphds_dfs(ptr noundef nonnull %0, ptr noundef %7, i32 noundef %102, ptr noundef null, i8 noundef zeroext 1, ptr noundef %1)
  call void @free(ptr noundef %7)
  %130 = load ptr, ptr %3, align 8, !tbaa !51
  %131 = icmp eq ptr %130, null
  br i1 %131, label %133, label %132, !prof !173

132:                                              ; preds = %128
  call void @free(ptr noundef %130)
  br label %133

133:                                              ; preds = %128, %132
  store ptr null, ptr %3, align 8, !tbaa !51
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #16
  ret i32 %129
}

declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @for_each_edge(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #14 !prof !50 {
  %3 = load i32, ptr %0, align 8, !tbaa !70
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %23

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.graph, ptr %0, i64 0, i32 1
  br label %7

7:                                                ; preds = %5, %18
  %8 = phi i64 [ 0, %5 ], [ %19, %18 ]
  %9 = load ptr, ptr %6, align 8, !tbaa !72
  %10 = getelementptr inbounds %struct.vertex, ptr %9, i64 %8, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !51
  %12 = icmp eq ptr %11, null
  br i1 %12, label %18, label %13

13:                                               ; preds = %7, %13
  %14 = phi ptr [ %16, %13 ], [ %11, %7 ]
  tail call void %1(ptr noundef nonnull %0, ptr noundef nonnull %14) #16
  %15 = getelementptr inbounds %struct.graph_edge, ptr %14, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !51
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %13, !llvm.loop !178

18:                                               ; preds = %13, %7
  %19 = add nuw nsw i64 %8, 1
  %20 = load i32, ptr %0, align 8, !tbaa !70
  %21 = sext i32 %20 to i64
  %22 = icmp slt i64 %19, %21
  br i1 %22, label %7, label %23, !llvm.loop !179

23:                                               ; preds = %18, %2
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @free_graph(ptr nocapture noundef %0) local_unnamed_addr #10 !prof !83 {
  %2 = load i32, ptr %0, align 8, !tbaa !70
  %3 = icmp sgt i32 %2, 0
  br i1 %3, label %4, label %22, !prof !175

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.graph, ptr %0, i64 0, i32 1
  br label %6

6:                                                ; preds = %4, %17
  %7 = phi i64 [ 0, %4 ], [ %18, %17 ]
  %8 = load ptr, ptr %5, align 8, !tbaa !72
  %9 = getelementptr inbounds %struct.vertex, ptr %8, i64 %7, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !75
  %11 = icmp eq ptr %10, null
  br i1 %11, label %17, label %12, !prof !180

12:                                               ; preds = %6, %12
  %13 = phi ptr [ %15, %12 ], [ %10, %6 ]
  %14 = getelementptr inbounds %struct.graph_edge, ptr %13, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !86
  tail call void @free(ptr noundef %13)
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %12, !prof !181, !llvm.loop !182

17:                                               ; preds = %12, %6
  %18 = add nuw nsw i64 %7, 1
  %19 = load i32, ptr %0, align 8, !tbaa !70
  %20 = sext i32 %19 to i64
  %21 = icmp slt i64 %18, %20
  br i1 %21, label %6, label %22, !prof !183, !llvm.loop !184

22:                                               ; preds = %17, %1
  %23 = getelementptr inbounds %struct.graph, ptr %0, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !72
  tail call void @free(ptr noundef %24)
  tail call void @free(ptr noundef %0)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @graphds_domtree(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef %2, ptr nocapture noundef %3, ptr nocapture noundef writeonly %4) local_unnamed_addr #10 !prof !185 {
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 8
  store i32 %1, ptr %6, align 4, !tbaa !66
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #16
  store ptr null, ptr %7, align 8, !tbaa !51
  %8 = load i32, ptr %0, align 8, !tbaa !70
  %9 = sext i32 %8 to i64
  %10 = tail call ptr @xcalloc(i64 noundef %9, i64 noundef 4) #16
  %11 = load i32, ptr %0, align 8, !tbaa !70
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %13, label %22, !prof !169

13:                                               ; preds = %5, %13
  %14 = phi i64 [ %18, %13 ], [ 0, %5 ]
  %15 = getelementptr inbounds i32, ptr %2, i64 %14
  store i32 -1, ptr %15, align 4, !tbaa !66
  %16 = getelementptr inbounds i32, ptr %3, i64 %14
  store i32 -1, ptr %16, align 4, !tbaa !66
  %17 = getelementptr inbounds i32, ptr %4, i64 %14
  store i32 -1, ptr %17, align 4, !tbaa !66
  %18 = add nuw nsw i64 %14, 1
  %19 = load i32, ptr %0, align 8, !tbaa !70
  %20 = sext i32 %19 to i64
  %21 = icmp slt i64 %18, %20
  br i1 %21, label %13, label %22, !prof !186, !llvm.loop !187

22:                                               ; preds = %13, %5
  %23 = call i32 @graphds_dfs(ptr noundef nonnull %0, ptr noundef nonnull %6, i32 noundef 1, ptr noundef nonnull %7, i8 noundef zeroext 1, ptr noundef null)
  %24 = load ptr, ptr %7, align 8
  %25 = icmp eq ptr %24, null
  br i1 %25, label %28, label %26, !prof !163

26:                                               ; preds = %22
  %27 = load i32, ptr %24, align 4, !tbaa !143
  br label %28

28:                                               ; preds = %22, %26
  %29 = phi i32 [ %27, %26 ], [ 0, %22 ]
  %30 = load i32, ptr %0, align 8, !tbaa !70
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %33, label %32, !prof !168

32:                                               ; preds = %28
  call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 435, ptr noundef nonnull @.str.5) #16
  br label %33

33:                                               ; preds = %28, %32
  %34 = load ptr, ptr %7, align 8
  %35 = load i32, ptr %0, align 8, !tbaa !70
  %36 = add nsw i32 %35, -1
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds %struct.VEC_int_base, ptr %34, i64 0, i32 2, i64 %37
  %39 = load i32, ptr %38, align 4, !tbaa !66
  %40 = icmp eq i32 %39, %1
  br i1 %40, label %42, label %41, !prof !168

41:                                               ; preds = %33
  call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 436, ptr noundef nonnull @.str.5) #16
  br label %42

42:                                               ; preds = %33, %41
  %43 = getelementptr inbounds %struct.graph, ptr %0, i64 0, i32 1
  br label %48

44:                                               ; preds = %152, %48
  %45 = phi i32 [ %49, %48 ], [ %146, %152 ]
  %46 = phi i8 [ 0, %48 ], [ %153, %152 ]
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %156, label %48, !prof !188, !llvm.loop !189

48:                                               ; preds = %42, %44
  %49 = phi i32 [ 1, %42 ], [ %45, %44 ]
  %50 = load i32, ptr %0, align 8, !tbaa !70
  %51 = icmp sgt i32 %50, 1
  br i1 %51, label %52, label %44, !prof !109

52:                                               ; preds = %48
  %53 = add nsw i32 %50, -2
  %54 = load ptr, ptr %43, align 8, !tbaa !72
  %55 = zext i32 %53 to i64
  br label %56

56:                                               ; preds = %52, %152
  %57 = phi i64 [ %55, %52 ], [ %154, %152 ]
  %58 = phi i8 [ 0, %52 ], [ %153, %152 ]
  %59 = phi i32 [ %49, %52 ], [ %146, %152 ]
  %60 = load ptr, ptr %7, align 8
  %61 = getelementptr inbounds %struct.VEC_int_base, ptr %60, i64 0, i32 2, i64 %57
  %62 = load i32, ptr %61, align 4, !tbaa !66
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.vertex, ptr %54, i64 %63
  %65 = load ptr, ptr %64, align 8, !tbaa !51
  %66 = icmp eq ptr %65, null
  br i1 %66, label %145, label %67, !prof !190

67:                                               ; preds = %56, %139
  %68 = phi ptr [ %143, %139 ], [ %65, %56 ]
  %69 = phi i32 [ %141, %139 ], [ -1, %56 ]
  %70 = phi i32 [ %140, %139 ], [ %59, %56 ]
  %71 = load i32, ptr %68, align 8, !tbaa !77
  %72 = icmp eq i32 %71, %1
  br i1 %72, label %78, label %73, !prof !191

73:                                               ; preds = %67
  %74 = sext i32 %71 to i64
  %75 = getelementptr inbounds i32, ptr %2, i64 %74
  %76 = load i32, ptr %75, align 4, !tbaa !66
  %77 = icmp eq i32 %76, -1
  br i1 %77, label %139, label %78, !prof !192

78:                                               ; preds = %73, %67
  %79 = add nsw i32 %70, 1
  %80 = icmp eq i32 %69, -1
  %81 = icmp eq i32 %69, %71
  %82 = or i1 %80, %81
  br i1 %82, label %139, label %83, !prof !193

83:                                               ; preds = %78
  %84 = sext i32 %69 to i64
  %85 = getelementptr inbounds i32, ptr %10, i64 %84
  store i32 %70, ptr %85, align 4, !tbaa !66
  %86 = sext i32 %71 to i64
  %87 = getelementptr inbounds i32, ptr %10, i64 %86
  store i32 %70, ptr %87, align 4, !tbaa !66
  %88 = sext i32 %69 to i64
  %89 = getelementptr inbounds i32, ptr %2, i64 %88
  %90 = load i32, ptr %89, align 4, !tbaa !66
  %91 = icmp eq i32 %90, -1
  br i1 %91, label %115, label %92, !prof !194

92:                                               ; preds = %83, %110
  %93 = phi i1 [ %114, %110 ], [ %91, %83 ]
  %94 = phi i32 [ %113, %110 ], [ %90, %83 ]
  %95 = phi i32 [ %103, %110 ], [ %71, %83 ]
  %96 = sext i32 %94 to i64
  %97 = getelementptr inbounds i32, ptr %10, i64 %96
  %98 = load i32, ptr %97, align 4, !tbaa !66
  %99 = icmp eq i32 %98, %70
  br i1 %99, label %139, label %100, !prof !195

100:                                              ; preds = %92
  store i32 %70, ptr %97, align 4, !tbaa !66
  %101 = sext i32 %95 to i64
  %102 = getelementptr inbounds i32, ptr %2, i64 %101
  %103 = load i32, ptr %102, align 4, !tbaa !66
  %104 = icmp eq i32 %103, -1
  br i1 %104, label %115, label %105, !prof !196

105:                                              ; preds = %100
  %106 = sext i32 %103 to i64
  %107 = getelementptr inbounds i32, ptr %10, i64 %106
  %108 = load i32, ptr %107, align 4, !tbaa !66
  %109 = icmp eq i32 %108, %70
  br i1 %109, label %139, label %110, !prof !197

110:                                              ; preds = %105
  store i32 %70, ptr %107, align 4, !tbaa !66
  %111 = sext i32 %94 to i64
  %112 = getelementptr inbounds i32, ptr %2, i64 %111
  %113 = load i32, ptr %112, align 4, !tbaa !66
  %114 = icmp eq i32 %113, -1
  br i1 %114, label %115, label %92, !prof !198, !llvm.loop !199

115:                                              ; preds = %110, %100, %83
  %116 = phi i32 [ %90, %83 ], [ %113, %110 ], [ %94, %100 ]
  %117 = phi i1 [ %91, %83 ], [ %114, %110 ], [ %93, %100 ]
  %118 = phi i32 [ %71, %83 ], [ %103, %110 ], [ -1, %100 ]
  br i1 %117, label %119, label %129, !prof !200

119:                                              ; preds = %115
  %120 = sext i32 %118 to i64
  br label %121

121:                                              ; preds = %121, %119
  %122 = phi i64 [ %120, %119 ], [ %125, %121 ]
  %123 = getelementptr inbounds i32, ptr %2, i64 %122
  %124 = load i32, ptr %123, align 4, !tbaa !66
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i32, ptr %10, i64 %125
  %127 = load i32, ptr %126, align 4, !tbaa !66
  %128 = icmp eq i32 %127, %70
  br i1 %128, label %139, label %121, !prof !201, !llvm.loop !202

129:                                              ; preds = %115
  %130 = sext i32 %116 to i64
  br label %131

131:                                              ; preds = %131, %129
  %132 = phi i64 [ %130, %129 ], [ %135, %131 ]
  %133 = getelementptr inbounds i32, ptr %2, i64 %132
  %134 = load i32, ptr %133, align 4, !tbaa !66
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i32, ptr %10, i64 %135
  %137 = load i32, ptr %136, align 4, !tbaa !66
  %138 = icmp eq i32 %137, %70
  br i1 %138, label %139, label %131, !prof !203, !llvm.loop !204

139:                                              ; preds = %105, %92, %131, %121, %73, %78
  %140 = phi i32 [ %79, %78 ], [ %70, %73 ], [ %79, %121 ], [ %79, %131 ], [ %79, %92 ], [ %79, %105 ]
  %141 = phi i32 [ %71, %78 ], [ %69, %73 ], [ %124, %121 ], [ %134, %131 ], [ %103, %105 ], [ %94, %92 ]
  %142 = getelementptr inbounds %struct.graph_edge, ptr %68, i64 0, i32 2
  %143 = load ptr, ptr %142, align 8, !tbaa !51
  %144 = icmp eq ptr %143, null
  br i1 %144, label %145, label %67, !prof !205, !llvm.loop !206

145:                                              ; preds = %139, %56
  %146 = phi i32 [ %59, %56 ], [ %140, %139 ]
  %147 = phi i32 [ -1, %56 ], [ %141, %139 ]
  %148 = getelementptr inbounds i32, ptr %2, i64 %63
  %149 = load i32, ptr %148, align 4, !tbaa !66
  %150 = icmp eq i32 %147, %149
  br i1 %150, label %152, label %151, !prof !207

151:                                              ; preds = %145
  store i32 %147, ptr %148, align 4, !tbaa !66
  br label %152

152:                                              ; preds = %145, %151
  %153 = phi i8 [ 1, %151 ], [ %58, %145 ]
  %154 = add nsw i64 %57, -1
  %155 = icmp sgt i64 %57, 0
  br i1 %155, label %56, label %44, !prof !208, !llvm.loop !209

156:                                              ; preds = %44
  call void @free(ptr noundef %10)
  %157 = load ptr, ptr %7, align 8, !tbaa !51
  %158 = icmp eq ptr %157, null
  br i1 %158, label %160, label %159, !prof !163

159:                                              ; preds = %156
  call void @free(ptr noundef %157)
  br label %160

160:                                              ; preds = %156, %159
  store ptr null, ptr %7, align 8, !tbaa !51
  %161 = load i32, ptr %0, align 8, !tbaa !70
  %162 = icmp sgt i32 %161, 0
  br i1 %162, label %163, label %182, !prof !169

163:                                              ; preds = %160, %177
  %164 = phi i64 [ %178, %177 ], [ 0, %160 ]
  %165 = getelementptr inbounds i32, ptr %2, i64 %164
  %166 = load i32, ptr %165, align 4, !tbaa !66
  %167 = icmp eq i32 %166, -1
  br i1 %167, label %177, label %168, !prof !210

168:                                              ; preds = %163
  %169 = sext i32 %166 to i64
  %170 = getelementptr inbounds i32, ptr %3, i64 %169
  %171 = load i32, ptr %170, align 4, !tbaa !66
  %172 = getelementptr inbounds i32, ptr %4, i64 %164
  store i32 %171, ptr %172, align 4, !tbaa !66
  %173 = load i32, ptr %165, align 4, !tbaa !66
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds i32, ptr %3, i64 %174
  %176 = trunc i64 %164 to i32
  store i32 %176, ptr %175, align 4, !tbaa !66
  br label %177

177:                                              ; preds = %163, %168
  %178 = add nuw nsw i64 %164, 1
  %179 = load i32, ptr %0, align 8, !tbaa !70
  %180 = sext i32 %179 to i64
  %181 = icmp slt i64 %178, %180
  br i1 %181, label %163, label %182, !prof !186, !llvm.loop !211

182:                                              ; preds = %177, %160
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #16
  ret void
}

declare i32 @bitmap_bit_p(ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @vec_heap_o_reserve(ptr noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #15

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #15

attributes #0 = { cold inlinehint nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold inlinehint mustprogress nofree nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { cold nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree nounwind }
attributes #16 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!49}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48}
!35 = !{ptr @new_graph, ptr @xmalloc, i64 774}
!36 = !{ptr @new_graph, ptr @xcalloc, i64 774}
!37 = !{ptr @add_edge, ptr @xmalloc, i64 4725430}
!38 = !{ptr @graphds_dfs, ptr @xmalloc, i64 1784}
!39 = !{ptr @graphds_dfs, ptr @bitmap_bit_p, i64 2478}
!40 = !{ptr @graphds_dfs, ptr @vec_heap_o_reserve, i64 5851}
!41 = !{ptr @graphds_dfs, ptr @free, i64 1784}
!42 = !{ptr @graphds_scc, ptr @xmalloc, i64 774}
!43 = !{ptr @graphds_scc, ptr @graphds_dfs, i64 1548}
!44 = !{ptr @graphds_scc, ptr @free, i64 1548}
!45 = !{ptr @free_graph, ptr @free, i64 4726975}
!46 = !{ptr @graphds_domtree, ptr @xcalloc, i64 236}
!47 = !{ptr @graphds_domtree, ptr @graphds_dfs, i64 236}
!48 = !{ptr @graphds_domtree, ptr @free, i64 472}
!49 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!50 = !{!"function_entry_count", i64 0}
!51 = !{!52, !52, i64 0}
!52 = !{!"any pointer", !53, i64 0}
!53 = !{!"omnipotent char", !54, i64 0}
!54 = !{!"Simple C/C++ TBAA"}
!55 = !{!56, !52, i64 8}
!56 = !{!"_IO_FILE", !57, i64 0, !52, i64 8, !52, i64 16, !52, i64 24, !52, i64 32, !52, i64 40, !52, i64 48, !52, i64 56, !52, i64 64, !52, i64 72, !52, i64 80, !52, i64 88, !52, i64 96, !52, i64 104, !57, i64 112, !57, i64 116, !58, i64 120, !59, i64 128, !53, i64 130, !53, i64 131, !52, i64 136, !58, i64 144, !52, i64 152, !52, i64 160, !52, i64 168, !52, i64 176, !58, i64 184, !57, i64 192, !53, i64 196}
!57 = !{!"int", !53, i64 0}
!58 = !{!"long", !53, i64 0}
!59 = !{!"short", !53, i64 0}
!60 = !{!56, !52, i64 16}
!61 = !{!"branch_weights", i32 2000, i32 1}
!62 = !{!53, !53, i64 0}
!63 = !{!56, !52, i64 40}
!64 = !{!56, !52, i64 48}
!65 = !{!56, !57, i64 0}
!66 = !{!57, !57, i64 0}
!67 = distinct !{!67, !68, !69}
!68 = !{!"llvm.loop.mustprogress"}
!69 = !{!"llvm.loop.unroll.disable"}
!70 = !{!71, !57, i64 0}
!71 = !{!"graph", !57, i64 0, !52, i64 8, !52, i64 16}
!72 = !{!71, !52, i64 8}
!73 = !{!74, !52, i64 0}
!74 = !{!"vertex", !52, i64 0, !52, i64 8, !57, i64 16, !57, i64 20, !52, i64 24}
!75 = !{!74, !52, i64 8}
!76 = !{!74, !57, i64 16}
!77 = !{!78, !57, i64 0}
!78 = !{!"graph_edge", !57, i64 0, !57, i64 4, !52, i64 8, !52, i64 16, !52, i64 24}
!79 = distinct !{!79, !68, !69}
!80 = !{!78, !57, i64 4}
!81 = distinct !{!81, !68, !69}
!82 = distinct !{!82, !68, !69}
!83 = !{!"function_entry_count", i64 774}
!84 = !{!"function_entry_count", i64 4725430}
!85 = !{!78, !52, i64 8}
!86 = !{!78, !52, i64 16}
!87 = !{!"function_entry_count", i64 667}
!88 = !{!"branch_weights", i32 31, i32 636}
!89 = !{!"branch_weights", i32 636, i32 0}
!90 = distinct !{!90, !68, !69}
!91 = !{!"branch_weights", i32 1, i32 666}
!92 = !{!"branch_weights", i32 666, i32 474}
!93 = distinct !{!93, !68, !69}
!94 = !{!"function_entry_count", i64 1784}
!95 = !{!"branch_weights", i32 1312, i32 472}
!96 = !{!"branch_weights", i32 1311, i32 1}
!97 = !{!98, !52, i64 0}
!98 = !{!"bitmap_head_def", !52, i64 0, !52, i64 8, !57, i64 16, !52, i64 24}
!99 = !{!"branch_weights", i32 0, i32 472}
!100 = !{!101, !57, i64 16}
!101 = !{!"bitmap_element_def", !52, i64 0, !52, i64 8, !57, i64 16, !53, i64 24}
!102 = !{!58, !58, i64 0}
!103 = !{!"branch_weights", i32 472, i32 1320}
!104 = !{!"branch_weights", i32 14, i32 1306}
!105 = !{!"branch_weights", i32 0, i32 14}
!106 = distinct !{!106, !68, !69}
!107 = !{!"branch_weights", i32 1, i32 471}
!108 = !{!"branch_weights", i32 472, i32 0}
!109 = !{!"branch_weights", i32 471, i32 1}
!110 = distinct !{!110, !68, !69}
!111 = !{!101, !52, i64 0}
!112 = distinct !{!112, !69}
!113 = !{!74, !57, i64 20}
!114 = distinct !{!114, !68, !69}
!115 = !{!"branch_weights", i32 1311, i32 5384084}
!116 = distinct !{!116, !68, !69}
!117 = !{!"branch_weights", i32 1783, i32 1}
!118 = !{!"branch_weights", i32 4737115, i32 648933}
!119 = !{!"branch_weights", i32 2043973, i32 2693142}
!120 = !{!"branch_weights", i32 4736020, i32 1095}
!121 = !{!"branch_weights", i32 1, i32 378}
!122 = !{!"branch_weights", i32 501, i32 424}
!123 = !{!"branch_weights", i32 209, i32 716}
!124 = !{!"branch_weights", i32 209, i32 0}
!125 = !{!"branch_weights", i32 378, i32 547}
!126 = distinct !{!126, !68, !69}
!127 = !{!"branch_weights", i32 1, i32 127}
!128 = !{!"branch_weights", i32 4724919, i32 4726052}
!129 = !{!"branch_weights", i32 649600, i32 8801371}
!130 = !{!"branch_weights", i32 4075986, i32 4725385}
!131 = !{!"branch_weights", i32 8800352, i32 1019}
!132 = !{!"branch_weights", i32 272, i32 432}
!133 = !{!"branch_weights", i32 234, i32 198}
!134 = !{!"branch_weights", i32 117, i32 315}
!135 = !{!"branch_weights", i32 117, i32 0}
!136 = !{!"branch_weights", i32 432, i32 0}
!137 = !{!"branch_weights", i32 5386714, i32 4064257}
!138 = distinct !{!138, !68, !69}
!139 = !{!"branch_weights", i32 2692906, i32 2693809}
!140 = !{!"branch_weights", i32 1010, i32 2692799}
!141 = !{!142, !57, i64 4}
!142 = !{!"VEC_int_base", !57, i64 0, !57, i64 4, !53, i64 8}
!143 = !{!142, !57, i64 0}
!144 = !{!"branch_weights", i32 4841, i32 2687958}
!145 = !{!"branch_weights", i32 4737115, i32 649600}
!146 = !{!"branch_weights", i32 648933, i32 667}
!147 = !{!"branch_weights", i32 649375, i32 225}
!148 = !{!"branch_weights", i32 17, i32 134}
!149 = !{!"branch_weights", i32 134, i32 0}
!150 = !{!"branch_weights", i32 60, i32 74}
!151 = !{!"branch_weights", i32 60, i32 0}
!152 = distinct !{!152, !69}
!153 = !{!"branch_weights", i32 1, i32 171}
!154 = !{!"branch_weights", i32 264, i32 0}
!155 = !{!"branch_weights", i32 125, i32 139}
!156 = !{!"branch_weights", i32 125, i32 0}
!157 = !{!"branch_weights", i32 171, i32 357}
!158 = !{!"branch_weights", i32 127, i32 689499265}
!159 = !{!"branch_weights", i32 1783, i32 5384265}
!160 = distinct !{!160, !68, !69}
!161 = !{!"branch_weights", i32 538, i32 236}
!162 = !{!"branch_weights", i32 537, i32 1}
!163 = !{!"branch_weights", i32 0, i32 236}
!164 = !{!"branch_weights", i32 236, i32 660}
!165 = !{!"branch_weights", i32 7, i32 653}
!166 = !{!"branch_weights", i32 0, i32 7}
!167 = !{!"branch_weights", i32 1, i32 235}
!168 = !{!"branch_weights", i32 236, i32 0}
!169 = !{!"branch_weights", i32 235, i32 1}
!170 = distinct !{!170, !68, !69}
!171 = !{!"branch_weights", i32 2691709, i32 537}
!172 = distinct !{!172, !68, !69}
!173 = !{!"branch_weights", i32 0, i32 774}
!174 = !{!"branch_weights", i32 774, i32 0}
!175 = !{!"branch_weights", i32 773, i32 1}
!176 = !{!"branch_weights", i32 773, i32 2692133}
!177 = distinct !{!177, !68, !69}
!178 = distinct !{!178, !68, !69}
!179 = distinct !{!179, !68, !69}
!180 = !{!"branch_weights", i32 1, i32 2693148}
!181 = !{!"branch_weights", i32 2693148, i32 2032282}
!182 = distinct !{!182, !68, !69}
!183 = !{!"branch_weights", i32 2692376, i32 773}
!184 = distinct !{!184, !68, !69}
!185 = !{!"function_entry_count", i64 236}
!186 = !{!"branch_weights", i32 668, i32 235}
!187 = distinct !{!187, !68, !69}
!188 = !{!"branch_weights", i32 236, i32 236}
!189 = distinct !{!189, !68, !69}
!190 = !{!"branch_weights", i32 1, i32 1333}
!191 = !{!"branch_weights", i32 1022, i32 1244}
!192 = !{!"branch_weights", i32 0, i32 1244}
!193 = !{!"branch_weights", i32 1376, i32 890}
!194 = !{!"branch_weights", i32 1, i32 251}
!195 = !{!"branch_weights", i32 298, i32 354}
!196 = !{!"branch_weights", i32 14, i32 340}
!197 = !{!"branch_weights", i32 326, i32 14}
!198 = !{!"branch_weights", i32 251, i32 401}
!199 = distinct !{!199, !69}
!200 = !{!"branch_weights", i32 252, i32 14}
!201 = !{!"branch_weights", i32 252, i32 0}
!202 = distinct !{!202, !68, !69}
!203 = !{!"branch_weights", i32 14, i32 0}
!204 = distinct !{!204, !68, !69}
!205 = !{!"branch_weights", i32 1333, i32 933}
!206 = distinct !{!206, !68, !69}
!207 = !{!"branch_weights", i32 667, i32 667}
!208 = !{!"branch_weights", i32 863, i32 471}
!209 = distinct !{!209, !68, !69}
!210 = !{!"branch_weights", i32 236, i32 667}
!211 = distinct !{!211, !68, !69}
