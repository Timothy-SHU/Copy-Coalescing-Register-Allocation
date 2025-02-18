; ModuleID = 'cp-demint.c'
source_filename = "cp-demint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.demangle_builtin_type_info = type { ptr, i32, ptr, i32, i32 }
%struct.demangle_operator_info = type { ptr, ptr, i32, i32 }
%struct._IO_FILE = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, [1 x i8], ptr, i64, ptr, ptr, ptr, ptr, i64, i32, [20 x i8] }
%struct.demangle_component = type { i32, %union.anon }
%union.anon = type { %struct.anon }
%struct.anon = type { ptr, i32 }
%struct.d_info = type { ptr, ptr, i32, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, i32 }

@stdout = external local_unnamed_addr global ptr, align 8
@stdin = external local_unnamed_addr global ptr, align 8
@cplus_demangle_builtin_types = external constant [32 x %struct.demangle_builtin_type_info], align 16
@cplus_demangle_operators = external constant [0 x %struct.demangle_operator_info], align 8

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i32 @atoi(ptr nocapture noundef readonly %0) local_unnamed_addr #0 !prof !34 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  %3 = trunc i64 %2 to i32
  ret i32 %3
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atol(ptr nocapture noundef readonly %0) local_unnamed_addr #0 !prof !34 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atoll(ptr nocapture noundef readonly %0) local_unnamed_addr #0 !prof !34 {
  %2 = tail call i64 @strtoll(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtoll(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #1

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
  br i1 %23, label %7, label %24, !llvm.loop !35

24:                                               ; preds = %16, %20, %5
  %25 = phi ptr [ null, %5 ], [ %13, %16 ], [ null, %20 ]
  ret ptr %25
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local double @atof(ptr nocapture noundef readonly %0) local_unnamed_addr #0 !prof !34 {
  %2 = tail call double @strtod(ptr nocapture noundef %0, ptr noundef null)
  ret double %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @vprintf(ptr noalias nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #4 !prof !34 {
  %3 = load ptr, ptr @stdout, align 8, !tbaa !38
  %4 = tail call i32 @vfprintf(ptr noundef %3, ptr noundef %0, ptr noundef %1)
  ret i32 %4
}

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ptr noundef) local_unnamed_addr #5

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @getchar() local_unnamed_addr #4 !prof !34 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !38
  %2 = tail call i32 @getc(ptr noundef %1)
  ret i32 %2
}

; Function Attrs: nofree nounwind
declare noundef i32 @getc(ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !34 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !47
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !48

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #14
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !42
  %11 = load i8, ptr %3, align 1, !tbaa !49
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

declare i32 @__uflow(ptr noundef) local_unnamed_addr #6

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !34 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !47
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !48

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #14
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !42
  %11 = load i8, ptr %3, align 1, !tbaa !49
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #2 !prof !34 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !38
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !47
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !48

7:                                                ; preds = %0
  %8 = tail call i32 @__uflow(ptr noundef %1) #14
  br label %13

9:                                                ; preds = %0
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !42
  %11 = load i8, ptr %3, align 1, !tbaa !49
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @putchar(i32 noundef %0) local_unnamed_addr #4 !prof !34 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !38
  %3 = tail call i32 @putc(i32 noundef %0, ptr noundef %2)
  ret i32 %3
}

; Function Attrs: nofree nounwind
declare noundef i32 @putc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !34 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !50
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !51
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !48

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #14
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !50
  store i8 %12, ptr %4, align 1, !tbaa !49
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

declare i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !34 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !50
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !51
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !48

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #14
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !50
  store i8 %12, ptr %4, align 1, !tbaa !49
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 noundef %0) local_unnamed_addr #2 !prof !34 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !38
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !50
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !51
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !48

8:                                                ; preds = %1
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %2, i32 noundef %9) #14
  br label %15

11:                                               ; preds = %1
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !50
  store i8 %12, ptr %4, align 1, !tbaa !49
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

declare i64 @__getdelim(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @feof_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #7 !prof !34 {
  %2 = load i32, ptr %0, align 8, !tbaa !52
  %3 = lshr i32 %2, 4
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @ferror_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #7 !prof !34 {
  %2 = load i32, ptr %0, align 8, !tbaa !52
  %3 = lshr i32 %2, 5
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local noundef i32 @cplus_demangle_fill_component(ptr noundef writeonly %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #8 !prof !34 {
  %5 = icmp eq ptr %0, null
  br i1 %5, label %12, label %6

6:                                                ; preds = %4
  switch i32 %1, label %12 [
    i32 1, label %9
    i32 2, label %9
    i32 3, label %9
    i32 4, label %9
    i32 11, label %9
    i32 29, label %9
    i32 37, label %9
    i32 38, label %9
    i32 39, label %9
    i32 42, label %9
    i32 43, label %9
    i32 47, label %9
    i32 48, label %9
    i32 49, label %9
    i32 50, label %9
    i32 51, label %9
    i32 52, label %9
    i32 53, label %9
    i32 54, label %9
    i32 9, label %7
    i32 10, label %7
    i32 12, label %7
    i32 13, label %7
    i32 14, label %7
    i32 15, label %7
    i32 16, label %7
    i32 17, label %7
    i32 18, label %7
    i32 19, label %7
    i32 20, label %7
    i32 23, label %7
    i32 24, label %7
    i32 25, label %7
    i32 26, label %7
    i32 27, label %7
    i32 28, label %7
    i32 30, label %7
    i32 31, label %7
    i32 33, label %7
    i32 34, label %7
    i32 36, label %7
    i32 46, label %7
  ]

7:                                                ; preds = %6, %6, %6, %6, %6, %6, %6, %6, %6, %6, %6, %6, %6, %6, %6, %6, %6, %6, %6, %6, %6, %6, %6
  %8 = icmp eq ptr %3, null
  br i1 %8, label %9, label %12

9:                                                ; preds = %7, %6, %6, %6, %6, %6, %6, %6, %6, %6, %6, %6, %6, %6, %6, %6, %6, %6, %6, %6
  store i32 %1, ptr %0, align 8, !tbaa !53
  %10 = getelementptr inbounds %struct.demangle_component, ptr %0, i64 0, i32 1
  store ptr %2, ptr %10, align 8, !tbaa !49
  %11 = getelementptr inbounds %struct.demangle_component, ptr %0, i64 0, i32 1, i32 0, i32 1
  store ptr %3, ptr %11, align 8, !tbaa !49
  br label %12

12:                                               ; preds = %6, %7, %4, %9
  %13 = phi i32 [ 1, %9 ], [ 0, %4 ], [ 0, %7 ], [ 0, %6 ]
  ret i32 %13
}

; Function Attrs: cold nofree nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local noundef i32 @cplus_demangle_fill_builtin_type(ptr noundef writeonly %0, ptr noundef readonly %1) local_unnamed_addr #9 !prof !34 {
  %3 = icmp eq ptr %0, null
  %4 = icmp eq ptr %1, null
  %5 = or i1 %3, %4
  br i1 %5, label %24, label %6

6:                                                ; preds = %2
  %7 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1)
  %8 = trunc i64 %7 to i32
  br label %9

9:                                                ; preds = %6, %21
  %10 = phi i64 [ 0, %6 ], [ %22, %21 ]
  %11 = getelementptr inbounds [32 x %struct.demangle_builtin_type_info], ptr @cplus_demangle_builtin_types, i64 0, i64 %10, i32 1
  %12 = load i32, ptr %11, align 8, !tbaa !55
  %13 = icmp eq i32 %12, %8
  br i1 %13, label %14, label %21

14:                                               ; preds = %9
  %15 = getelementptr inbounds [32 x %struct.demangle_builtin_type_info], ptr @cplus_demangle_builtin_types, i64 0, i64 %10
  %16 = load ptr, ptr %15, align 16, !tbaa !57
  %17 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(1) %16)
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %14
  store i32 35, ptr %0, align 8, !tbaa !53
  %20 = getelementptr inbounds %struct.demangle_component, ptr %0, i64 0, i32 1
  store ptr %15, ptr %20, align 8, !tbaa !49
  br label %24

21:                                               ; preds = %9, %14
  %22 = add nuw nsw i64 %10, 1
  %23 = icmp eq i64 %22, 32
  br i1 %23, label %24, label %9, !llvm.loop !58

24:                                               ; preds = %21, %2, %19
  %25 = phi i32 [ 1, %19 ], [ 0, %2 ], [ 0, %21 ]
  ret i32 %25
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: cold nofree nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local noundef i32 @cplus_demangle_fill_operator(ptr noundef writeonly %0, ptr noundef readonly %1, i32 noundef %2) local_unnamed_addr #9 !prof !34 {
  %4 = icmp eq ptr %0, null
  %5 = icmp eq ptr %1, null
  %6 = or i1 %4, %5
  br i1 %6, label %35, label %7

7:                                                ; preds = %3
  %8 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1)
  %9 = trunc i64 %8 to i32
  %10 = load ptr, ptr getelementptr inbounds ([0 x %struct.demangle_operator_info], ptr @cplus_demangle_operators, i64 0, i64 0, i32 1), align 8, !tbaa !59
  %11 = icmp eq ptr %10, null
  br i1 %11, label %35, label %12

12:                                               ; preds = %7, %29
  %13 = phi ptr [ %33, %29 ], [ %10, %7 ]
  %14 = phi i64 [ %31, %29 ], [ 0, %7 ]
  %15 = phi i32 [ %30, %29 ], [ 0, %7 ]
  %16 = getelementptr inbounds [0 x %struct.demangle_operator_info], ptr @cplus_demangle_operators, i64 0, i64 %14, i32 2
  %17 = load i32, ptr %16, align 8, !tbaa !61
  %18 = icmp eq i32 %17, %9
  br i1 %18, label %19, label %29

19:                                               ; preds = %12
  %20 = getelementptr inbounds [0 x %struct.demangle_operator_info], ptr @cplus_demangle_operators, i64 0, i64 %14, i32 3
  %21 = load i32, ptr %20, align 4, !tbaa !62
  %22 = icmp eq i32 %21, %2
  br i1 %22, label %23, label %29

23:                                               ; preds = %19
  %24 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(1) %13)
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %23
  %27 = getelementptr inbounds [0 x %struct.demangle_operator_info], ptr @cplus_demangle_operators, i64 0, i64 %14
  store i32 44, ptr %0, align 8, !tbaa !53
  %28 = getelementptr inbounds %struct.demangle_component, ptr %0, i64 0, i32 1
  store ptr %27, ptr %28, align 8, !tbaa !49
  br label %35

29:                                               ; preds = %12, %19, %23
  %30 = add i32 %15, 1
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds [0 x %struct.demangle_operator_info], ptr @cplus_demangle_operators, i64 0, i64 %31, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !59
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %12, !llvm.loop !63

35:                                               ; preds = %29, %7, %3, %26
  %36 = phi i32 [ 1, %26 ], [ 0, %3 ], [ 0, %7 ], [ 0, %29 ]
  ret i32 %36
}

; Function Attrs: cold nounwind uwtable
define dso_local ptr @cplus_demangle_v3_components(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #11 !prof !34 {
  %4 = alloca %struct.d_info, align 8
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %4) #14
  %5 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0)
  %6 = load i8, ptr %0, align 1, !tbaa !49
  %7 = icmp eq i8 %6, 95
  br i1 %7, label %8, label %12

8:                                                ; preds = %3
  %9 = getelementptr inbounds i8, ptr %0, i64 1
  %10 = load i8, ptr %9, align 1, !tbaa !49
  %11 = icmp eq i8 %10, 90
  br i1 %11, label %15, label %12

12:                                               ; preds = %8, %3
  %13 = and i32 %1, 16
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %58, label %15

15:                                               ; preds = %12, %8
  %16 = phi i1 [ true, %8 ], [ false, %12 ]
  call void @cplus_demangle_init_info(ptr noundef nonnull %0, i32 noundef %1, i64 noundef %5, ptr noundef nonnull %4) #14
  %17 = getelementptr inbounds %struct.d_info, ptr %4, i64 0, i32 6
  %18 = load i32, ptr %17, align 4, !tbaa !64
  %19 = sext i32 %18 to i64
  %20 = mul nsw i64 %19, 24
  %21 = call ptr @malloc(i64 noundef %20) #15
  %22 = getelementptr inbounds %struct.d_info, ptr %4, i64 0, i32 4
  store ptr %21, ptr %22, align 8, !tbaa !66
  %23 = getelementptr inbounds %struct.d_info, ptr %4, i64 0, i32 9
  %24 = load i32, ptr %23, align 4, !tbaa !67
  %25 = sext i32 %24 to i64
  %26 = shl nsw i64 %25, 3
  %27 = call ptr @malloc(i64 noundef %26) #15
  %28 = getelementptr inbounds %struct.d_info, ptr %4, i64 0, i32 7
  store ptr %27, ptr %28, align 8, !tbaa !68
  %29 = icmp eq ptr %21, null
  %30 = icmp eq ptr %27, null
  %31 = or i1 %29, %30
  br i1 %31, label %32, label %36

32:                                               ; preds = %15
  br i1 %29, label %34, label %33

33:                                               ; preds = %32
  call void @free(ptr noundef %21)
  br label %34

34:                                               ; preds = %33, %32
  br i1 %30, label %58, label %35

35:                                               ; preds = %34
  call void @free(ptr noundef %27)
  br label %58

36:                                               ; preds = %15
  br i1 %16, label %37, label %39

37:                                               ; preds = %36
  %38 = call ptr @cplus_demangle_mangled_name(ptr noundef nonnull %4, i32 noundef 1) #14
  br label %41

39:                                               ; preds = %36
  %40 = call ptr @cplus_demangle_type(ptr noundef nonnull %4) #14
  br label %41

41:                                               ; preds = %39, %37
  %42 = phi ptr [ %40, %39 ], [ %38, %37 ]
  %43 = and i32 %1, 1
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %51, label %45

45:                                               ; preds = %41
  %46 = getelementptr inbounds %struct.d_info, ptr %4, i64 0, i32 3
  %47 = load ptr, ptr %46, align 8, !tbaa !69
  %48 = load i8, ptr %47, align 1, !tbaa !49
  %49 = icmp eq i8 %48, 0
  %50 = select i1 %49, ptr %42, ptr null
  br label %51

51:                                               ; preds = %45, %41
  %52 = phi ptr [ %42, %41 ], [ %50, %45 ]
  %53 = load ptr, ptr %28, align 8, !tbaa !68
  call void @free(ptr noundef %53)
  %54 = icmp eq ptr %52, null
  %55 = load ptr, ptr %22, align 8, !tbaa !66
  br i1 %54, label %57, label %56

56:                                               ; preds = %51
  store ptr %55, ptr %2, align 8, !tbaa !38
  br label %58

57:                                               ; preds = %51
  call void @free(ptr noundef %55)
  br label %58

58:                                               ; preds = %56, %57, %34, %35, %12
  %59 = phi ptr [ null, %12 ], [ null, %35 ], [ null, %34 ], [ %52, %57 ], [ %52, %56 ]
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %4) #14
  ret ptr %59
}

declare void @cplus_demangle_init_info(ptr noundef, i32 noundef, i64 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #12

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #13

declare ptr @cplus_demangle_mangled_name(ptr noundef, i32 noundef) local_unnamed_addr #6

declare ptr @cplus_demangle_type(ptr noundef) local_unnamed_addr #6

attributes #0 = { cold inlinehint mustprogress nofree nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { cold inlinehint nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { cold nofree nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nounwind }
attributes #15 = { allocsize(0) }

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
!35 = distinct !{!35, !36, !37}
!36 = !{!"llvm.loop.mustprogress"}
!37 = !{!"llvm.loop.unroll.disable"}
!38 = !{!39, !39, i64 0}
!39 = !{!"any pointer", !40, i64 0}
!40 = !{!"omnipotent char", !41, i64 0}
!41 = !{!"Simple C/C++ TBAA"}
!42 = !{!43, !39, i64 8}
!43 = !{!"_IO_FILE", !44, i64 0, !39, i64 8, !39, i64 16, !39, i64 24, !39, i64 32, !39, i64 40, !39, i64 48, !39, i64 56, !39, i64 64, !39, i64 72, !39, i64 80, !39, i64 88, !39, i64 96, !39, i64 104, !44, i64 112, !44, i64 116, !45, i64 120, !46, i64 128, !40, i64 130, !40, i64 131, !39, i64 136, !45, i64 144, !39, i64 152, !39, i64 160, !39, i64 168, !39, i64 176, !45, i64 184, !44, i64 192, !40, i64 196}
!44 = !{!"int", !40, i64 0}
!45 = !{!"long", !40, i64 0}
!46 = !{!"short", !40, i64 0}
!47 = !{!43, !39, i64 16}
!48 = !{!"branch_weights", i32 2000, i32 1}
!49 = !{!40, !40, i64 0}
!50 = !{!43, !39, i64 40}
!51 = !{!43, !39, i64 48}
!52 = !{!43, !44, i64 0}
!53 = !{!54, !44, i64 0}
!54 = !{!"demangle_component", !44, i64 0, !40, i64 8}
!55 = !{!56, !44, i64 8}
!56 = !{!"demangle_builtin_type_info", !39, i64 0, !44, i64 8, !39, i64 16, !44, i64 24, !44, i64 28}
!57 = !{!56, !39, i64 0}
!58 = distinct !{!58, !36, !37}
!59 = !{!60, !39, i64 8}
!60 = !{!"demangle_operator_info", !39, i64 0, !39, i64 8, !44, i64 16, !44, i64 20}
!61 = !{!60, !44, i64 16}
!62 = !{!60, !44, i64 20}
!63 = distinct !{!63, !36, !37}
!64 = !{!65, !44, i64 44}
!65 = !{!"d_info", !39, i64 0, !39, i64 8, !44, i64 16, !39, i64 24, !39, i64 32, !44, i64 40, !44, i64 44, !39, i64 48, !44, i64 56, !44, i64 60, !44, i64 64, !39, i64 72, !44, i64 80}
!66 = !{!65, !39, i64 32}
!67 = !{!65, !44, i64 60}
!68 = !{!65, !39, i64 48}
!69 = !{!65, !39, i64 24}
