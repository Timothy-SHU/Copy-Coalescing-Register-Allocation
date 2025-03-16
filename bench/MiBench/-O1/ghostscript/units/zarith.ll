; ModuleID = 'zarith.c'
source_filename = "zarith.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ref_stack_s = type { ptr, ptr, ptr, %struct.ref_s, i32, i32, %struct.ref_s, i32, i32, i32, i32, i32, %struct.ref_s, i32, i32, i32, ptr }
%struct.ref_s = type { %struct.tas_s, %union.v }
%struct.tas_s = type { i16, i16 }
%union.v = type { i64 }
%struct.op_def = type { ptr, ptr }

@o_stack = external local_unnamed_addr global %struct.ref_stack_s, align 8
@zarith_op_defs.op_defs_ = internal constant [12 x %struct.op_def] [%struct.op_def { ptr @.str, ptr @zadd }, %struct.op_def { ptr @.str.1, ptr @zceiling }, %struct.op_def { ptr @.str.2, ptr @zdiv }, %struct.op_def { ptr @.str.3, ptr @zidiv }, %struct.op_def { ptr @.str.4, ptr @zfloor }, %struct.op_def { ptr @.str.5, ptr @zmod }, %struct.op_def { ptr @.str.6, ptr @zmul }, %struct.op_def { ptr @.str.7, ptr @zneg }, %struct.op_def { ptr @.str.8, ptr @zround }, %struct.op_def { ptr @.str.9, ptr @zsub }, %struct.op_def { ptr @.str.10, ptr @ztruncate }, %struct.op_def zeroinitializer], align 16
@.str = private unnamed_addr constant [5 x i8] c"2add\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"1ceiling\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"2div\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"2idiv\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"1floor\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"2mod\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"2mul\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"1neg\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"1round\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"2sub\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"1truncate\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @zop_add(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds i8, ptr %0, i64 1
  %3 = load i8, ptr %2, align 1, !tbaa !5
  switch i8 %3, label %4 [
    i8 16, label %6
    i8 11, label %27
  ]

4:                                                ; preds = %1
  %5 = tail call i32 @check_type_failed(ptr noundef %0) #5
  br label %57

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.ref_s, ptr %0, i64 -1
  %8 = getelementptr inbounds i8, ptr %0, i64 -15
  %9 = load i8, ptr %8, align 1, !tbaa !5
  switch i8 %9, label %10 [
    i8 16, label %12
    i8 11, label %18
  ]

10:                                               ; preds = %6
  %11 = tail call i32 @check_type_failed(ptr noundef nonnull %7) #5
  br label %57

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.ref_s, ptr %0, i64 0, i32 1
  %14 = load float, ptr %13, align 8, !tbaa !5
  %15 = getelementptr %struct.ref_s, ptr %0, i64 -1, i32 1
  %16 = load float, ptr %15, align 8, !tbaa !5
  %17 = fadd float %14, %16
  store float %17, ptr %15, align 8, !tbaa !5
  br label %57

18:                                               ; preds = %6
  %19 = getelementptr %struct.ref_s, ptr %0, i64 -1, i32 1
  %20 = load i64, ptr %19, align 8, !tbaa !5
  %21 = sitofp i64 %20 to double
  %22 = getelementptr inbounds %struct.ref_s, ptr %0, i64 0, i32 1
  %23 = load float, ptr %22, align 8, !tbaa !5
  %24 = fpext float %23 to double
  %25 = fadd double %21, %24
  %26 = fptrunc double %25 to float
  store float %26, ptr %19, align 8, !tbaa !5
  store i16 4096, ptr %7, align 8, !tbaa !8
  br label %57

27:                                               ; preds = %1
  %28 = getelementptr inbounds %struct.ref_s, ptr %0, i64 -1
  %29 = getelementptr inbounds i8, ptr %0, i64 -15
  %30 = load i8, ptr %29, align 1, !tbaa !5
  switch i8 %30, label %31 [
    i8 16, label %33
    i8 11, label %42
  ]

31:                                               ; preds = %27
  %32 = tail call i32 @check_type_failed(ptr noundef nonnull %28) #5
  br label %57

33:                                               ; preds = %27
  %34 = getelementptr inbounds %struct.ref_s, ptr %0, i64 0, i32 1
  %35 = load i64, ptr %34, align 8, !tbaa !5
  %36 = sitofp i64 %35 to double
  %37 = getelementptr %struct.ref_s, ptr %0, i64 -1, i32 1
  %38 = load float, ptr %37, align 8, !tbaa !5
  %39 = fpext float %38 to double
  %40 = fadd double %36, %39
  %41 = fptrunc double %40 to float
  store float %41, ptr %37, align 8, !tbaa !5
  br label %57

42:                                               ; preds = %27
  %43 = getelementptr inbounds %struct.ref_s, ptr %0, i64 0, i32 1
  %44 = load i64, ptr %43, align 8, !tbaa !5
  %45 = getelementptr %struct.ref_s, ptr %0, i64 -1, i32 1
  %46 = load i64, ptr %45, align 8, !tbaa !5
  %47 = add nsw i64 %46, %44
  store i64 %47, ptr %45, align 8, !tbaa !5
  %48 = xor i64 %47, %44
  %49 = icmp slt i64 %48, 0
  %50 = xor i64 %46, %44
  %51 = icmp sgt i64 %50, -1
  %52 = and i1 %51, %49
  br i1 %52, label %53, label %57

53:                                               ; preds = %42
  %54 = sitofp i64 %46 to float
  %55 = sitofp i64 %44 to float
  %56 = fadd float %55, %54
  store float %56, ptr %45, align 8, !tbaa !5
  store i16 4096, ptr %28, align 8, !tbaa !8
  br label %57

57:                                               ; preds = %18, %12, %33, %53, %42, %31, %10, %4
  %58 = phi i32 [ %5, %4 ], [ %32, %31 ], [ %11, %10 ], [ 0, %42 ], [ 0, %53 ], [ 0, %33 ], [ 0, %12 ], [ 0, %18 ]
  ret i32 %58
}

declare i32 @check_type_failed(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i32 @zadd(ptr noundef %0) #0 {
  %2 = tail call i32 @zop_add(ptr noundef %0)
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %7

4:                                                ; preds = %1
  %5 = load ptr, ptr @o_stack, align 8, !tbaa !12
  %6 = getelementptr inbounds %struct.ref_s, ptr %5, i64 -1
  store ptr %6, ptr @o_stack, align 8, !tbaa !12
  br label %7

7:                                                ; preds = %4, %1
  ret i32 %2
}

; Function Attrs: nounwind uwtable
define dso_local i32 @zop_sub(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds i8, ptr %0, i64 1
  %3 = load i8, ptr %2, align 1, !tbaa !5
  switch i8 %3, label %4 [
    i8 16, label %6
    i8 11, label %27
  ]

4:                                                ; preds = %1
  %5 = tail call i32 @check_type_failed(ptr noundef %0) #5
  br label %56

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.ref_s, ptr %0, i64 -1
  %8 = getelementptr inbounds i8, ptr %0, i64 -15
  %9 = load i8, ptr %8, align 1, !tbaa !5
  switch i8 %9, label %10 [
    i8 16, label %12
    i8 11, label %18
  ]

10:                                               ; preds = %6
  %11 = tail call i32 @check_type_failed(ptr noundef nonnull %7) #5
  br label %56

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.ref_s, ptr %0, i64 0, i32 1
  %14 = load float, ptr %13, align 8, !tbaa !5
  %15 = getelementptr %struct.ref_s, ptr %0, i64 -1, i32 1
  %16 = load float, ptr %15, align 8, !tbaa !5
  %17 = fsub float %16, %14
  store float %17, ptr %15, align 8, !tbaa !5
  br label %56

18:                                               ; preds = %6
  %19 = getelementptr %struct.ref_s, ptr %0, i64 -1, i32 1
  %20 = load i64, ptr %19, align 8, !tbaa !5
  %21 = sitofp i64 %20 to double
  %22 = getelementptr inbounds %struct.ref_s, ptr %0, i64 0, i32 1
  %23 = load float, ptr %22, align 8, !tbaa !5
  %24 = fpext float %23 to double
  %25 = fsub double %21, %24
  %26 = fptrunc double %25 to float
  store float %26, ptr %19, align 8, !tbaa !5
  store i16 4096, ptr %7, align 8, !tbaa !8
  br label %56

27:                                               ; preds = %1
  %28 = getelementptr inbounds %struct.ref_s, ptr %0, i64 -1
  %29 = getelementptr inbounds i8, ptr %0, i64 -15
  %30 = load i8, ptr %29, align 1, !tbaa !5
  switch i8 %30, label %31 [
    i8 16, label %33
    i8 11, label %42
  ]

31:                                               ; preds = %27
  %32 = tail call i32 @check_type_failed(ptr noundef nonnull %28) #5
  br label %56

33:                                               ; preds = %27
  %34 = getelementptr inbounds %struct.ref_s, ptr %0, i64 0, i32 1
  %35 = load i64, ptr %34, align 8, !tbaa !5
  %36 = sitofp i64 %35 to double
  %37 = getelementptr %struct.ref_s, ptr %0, i64 -1, i32 1
  %38 = load float, ptr %37, align 8, !tbaa !5
  %39 = fpext float %38 to double
  %40 = fsub double %39, %36
  %41 = fptrunc double %40 to float
  store float %41, ptr %37, align 8, !tbaa !5
  br label %56

42:                                               ; preds = %27
  %43 = getelementptr %struct.ref_s, ptr %0, i64 -1, i32 1
  %44 = load i64, ptr %43, align 8, !tbaa !5
  %45 = getelementptr inbounds %struct.ref_s, ptr %0, i64 0, i32 1
  %46 = load i64, ptr %45, align 8, !tbaa !5
  %47 = sub nsw i64 %44, %46
  store i64 %47, ptr %43, align 8, !tbaa !5
  %48 = xor i64 %47, %44
  %49 = xor i64 %46, %44
  %50 = and i64 %48, %49
  %51 = icmp sgt i64 %50, -1
  br i1 %51, label %56, label %52

52:                                               ; preds = %42
  %53 = sitofp i64 %44 to float
  %54 = sitofp i64 %46 to float
  %55 = fsub float %53, %54
  store float %55, ptr %43, align 8, !tbaa !5
  store i16 4096, ptr %28, align 8, !tbaa !8
  br label %56

56:                                               ; preds = %18, %12, %33, %52, %42, %31, %10, %4
  %57 = phi i32 [ %5, %4 ], [ %32, %31 ], [ %11, %10 ], [ 0, %42 ], [ 0, %52 ], [ 0, %33 ], [ 0, %12 ], [ 0, %18 ]
  ret i32 %57
}

; Function Attrs: nounwind uwtable
define dso_local i32 @zsub(ptr noundef %0) #0 {
  %2 = tail call i32 @zop_sub(ptr noundef %0)
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %7

4:                                                ; preds = %1
  %5 = load ptr, ptr @o_stack, align 8, !tbaa !12
  %6 = getelementptr inbounds %struct.ref_s, ptr %5, i64 -1
  store ptr %6, ptr @o_stack, align 8, !tbaa !12
  br label %7

7:                                                ; preds = %4, %1
  ret i32 %2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @zarith_op_defs() local_unnamed_addr #2 {
  ret ptr @zarith_op_defs.op_defs_
}

; Function Attrs: nounwind uwtable
define internal i32 @zceiling(ptr noundef %0) #0 {
  %2 = getelementptr inbounds i8, ptr %0, i64 1
  %3 = load i8, ptr %2, align 1, !tbaa !5
  switch i8 %3, label %4 [
    i8 16, label %6
    i8 11, label %10
  ]

4:                                                ; preds = %1
  %5 = tail call i32 @check_type_failed(ptr noundef %0) #5
  br label %10

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.ref_s, ptr %0, i64 0, i32 1
  %8 = load float, ptr %7, align 8, !tbaa !5
  %9 = tail call float @llvm.ceil.f32(float %8)
  store float %9, ptr %7, align 8, !tbaa !5
  br label %10

10:                                               ; preds = %1, %6, %4
  %11 = phi i32 [ %5, %4 ], [ 0, %6 ], [ 0, %1 ]
  ret i32 %11
}

; Function Attrs: nounwind uwtable
define internal i32 @zdiv(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.ref_s, ptr %0, i64 -1
  %3 = getelementptr inbounds i8, ptr %0, i64 1
  %4 = load i8, ptr %3, align 1, !tbaa !5
  switch i8 %4, label %5 [
    i8 16, label %7
    i8 11, label %27
  ]

5:                                                ; preds = %1
  %6 = tail call i32 @check_type_failed(ptr noundef %0) #5
  br label %53

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.ref_s, ptr %0, i64 0, i32 1
  %9 = load float, ptr %8, align 8, !tbaa !5
  %10 = fcmp oeq float %9, 0.000000e+00
  br i1 %10, label %53, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds i8, ptr %0, i64 -15
  %13 = load i8, ptr %12, align 1, !tbaa !5
  switch i8 %13, label %14 [
    i8 16, label %16
    i8 11, label %20
  ]

14:                                               ; preds = %11
  %15 = tail call i32 @check_type_failed(ptr noundef nonnull %2) #5
  br label %53

16:                                               ; preds = %11
  %17 = getelementptr %struct.ref_s, ptr %0, i64 -1, i32 1
  %18 = load float, ptr %17, align 8, !tbaa !5
  %19 = fdiv float %18, %9
  store float %19, ptr %17, align 8, !tbaa !5
  br label %50

20:                                               ; preds = %11
  %21 = getelementptr %struct.ref_s, ptr %0, i64 -1, i32 1
  %22 = load i64, ptr %21, align 8, !tbaa !5
  %23 = sitofp i64 %22 to double
  %24 = fpext float %9 to double
  %25 = fdiv double %23, %24
  %26 = fptrunc double %25 to float
  store float %26, ptr %21, align 8, !tbaa !5
  store i16 4096, ptr %2, align 8, !tbaa !8
  br label %50

27:                                               ; preds = %1
  %28 = getelementptr inbounds %struct.ref_s, ptr %0, i64 0, i32 1
  %29 = load i64, ptr %28, align 8, !tbaa !5
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %53, label %31

31:                                               ; preds = %27
  %32 = getelementptr inbounds i8, ptr %0, i64 -15
  %33 = load i8, ptr %32, align 1, !tbaa !5
  switch i8 %33, label %34 [
    i8 16, label %36
    i8 11, label %43
  ]

34:                                               ; preds = %31
  %35 = tail call i32 @check_type_failed(ptr noundef nonnull %2) #5
  br label %53

36:                                               ; preds = %31
  %37 = sitofp i64 %29 to double
  %38 = getelementptr %struct.ref_s, ptr %0, i64 -1, i32 1
  %39 = load float, ptr %38, align 8, !tbaa !5
  %40 = fpext float %39 to double
  %41 = fdiv double %40, %37
  %42 = fptrunc double %41 to float
  store float %42, ptr %38, align 8, !tbaa !5
  br label %50

43:                                               ; preds = %31
  %44 = getelementptr %struct.ref_s, ptr %0, i64 -1, i32 1
  %45 = load i64, ptr %44, align 8, !tbaa !5
  %46 = sitofp i64 %45 to double
  %47 = sitofp i64 %29 to double
  %48 = fdiv double %46, %47
  %49 = fptrunc double %48 to float
  store float %49, ptr %44, align 8, !tbaa !5
  store i16 4096, ptr %2, align 8, !tbaa !8
  br label %50

50:                                               ; preds = %36, %43, %16, %20
  %51 = load ptr, ptr @o_stack, align 8, !tbaa !12
  %52 = getelementptr inbounds %struct.ref_s, ptr %51, i64 -1
  store ptr %52, ptr @o_stack, align 8, !tbaa !12
  br label %53

53:                                               ; preds = %27, %7, %50, %34, %14, %5
  %54 = phi i32 [ %6, %5 ], [ %35, %34 ], [ 0, %50 ], [ %15, %14 ], [ -23, %7 ], [ -23, %27 ]
  ret i32 %54
}

; Function Attrs: nounwind uwtable
define internal i32 @zidiv(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.ref_s, ptr %0, i64 -1
  %3 = getelementptr inbounds i8, ptr %0, i64 1
  %4 = load i8, ptr %3, align 1, !tbaa !5
  %5 = icmp eq i8 %4, 11
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = tail call i32 @check_type_failed(ptr noundef %0) #5
  br label %28

8:                                                ; preds = %1
  %9 = getelementptr inbounds i8, ptr %0, i64 -15
  %10 = load i8, ptr %9, align 1, !tbaa !5
  %11 = icmp eq i8 %10, 11
  br i1 %11, label %14, label %12

12:                                               ; preds = %8
  %13 = tail call i32 @check_type_failed(ptr noundef nonnull %2) #5
  br label %28

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.ref_s, ptr %0, i64 0, i32 1
  %16 = load i64, ptr %15, align 8, !tbaa !5
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %28, label %18

18:                                               ; preds = %14
  %19 = getelementptr %struct.ref_s, ptr %0, i64 -1, i32 1
  %20 = load i64, ptr %19, align 8, !tbaa !5
  %21 = sdiv i64 %20, %16
  store i64 %21, ptr %19, align 8, !tbaa !5
  %22 = icmp eq i64 %21, -9223372036854775808
  %23 = icmp eq i64 %16, -1
  %24 = and i1 %23, %22
  br i1 %24, label %28, label %25

25:                                               ; preds = %18
  %26 = load ptr, ptr @o_stack, align 8, !tbaa !12
  %27 = getelementptr inbounds %struct.ref_s, ptr %26, i64 -1
  store ptr %27, ptr @o_stack, align 8, !tbaa !12
  br label %28

28:                                               ; preds = %18, %14, %25, %12, %6
  %29 = phi i32 [ 0, %25 ], [ %13, %12 ], [ %7, %6 ], [ -23, %14 ], [ -15, %18 ]
  ret i32 %29
}

; Function Attrs: nounwind uwtable
define internal i32 @zfloor(ptr noundef %0) #0 {
  %2 = getelementptr inbounds i8, ptr %0, i64 1
  %3 = load i8, ptr %2, align 1, !tbaa !5
  switch i8 %3, label %4 [
    i8 16, label %6
    i8 11, label %10
  ]

4:                                                ; preds = %1
  %5 = tail call i32 @check_type_failed(ptr noundef %0) #5
  br label %10

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.ref_s, ptr %0, i64 0, i32 1
  %8 = load float, ptr %7, align 8, !tbaa !5
  %9 = tail call float @llvm.floor.f32(float %8)
  store float %9, ptr %7, align 8, !tbaa !5
  br label %10

10:                                               ; preds = %1, %6, %4
  %11 = phi i32 [ %5, %4 ], [ 0, %6 ], [ 0, %1 ]
  ret i32 %11
}

; Function Attrs: nounwind uwtable
define internal i32 @zmod(ptr noundef %0) #0 {
  %2 = getelementptr inbounds i8, ptr %0, i64 1
  %3 = load i8, ptr %2, align 1, !tbaa !5
  %4 = icmp eq i8 %3, 11
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = tail call i32 @check_type_failed(ptr noundef %0) #5
  br label %24

7:                                                ; preds = %1
  %8 = getelementptr inbounds i8, ptr %0, i64 -15
  %9 = load i8, ptr %8, align 1, !tbaa !5
  %10 = icmp eq i8 %9, 11
  br i1 %10, label %14, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.ref_s, ptr %0, i64 -1
  %13 = tail call i32 @check_type_failed(ptr noundef nonnull %12) #5
  br label %24

14:                                               ; preds = %7
  %15 = getelementptr inbounds %struct.ref_s, ptr %0, i64 0, i32 1
  %16 = load i64, ptr %15, align 8, !tbaa !5
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %24, label %18

18:                                               ; preds = %14
  %19 = getelementptr %struct.ref_s, ptr %0, i64 -1, i32 1
  %20 = load i64, ptr %19, align 8, !tbaa !5
  %21 = srem i64 %20, %16
  store i64 %21, ptr %19, align 8, !tbaa !5
  %22 = load ptr, ptr @o_stack, align 8, !tbaa !12
  %23 = getelementptr inbounds %struct.ref_s, ptr %22, i64 -1
  store ptr %23, ptr @o_stack, align 8, !tbaa !12
  br label %24

24:                                               ; preds = %14, %18, %11, %5
  %25 = phi i32 [ 0, %18 ], [ %13, %11 ], [ %6, %5 ], [ -23, %14 ]
  ret i32 %25
}

; Function Attrs: nounwind uwtable
define internal i32 @zmul(ptr noundef %0) #0 {
  %2 = getelementptr inbounds i8, ptr %0, i64 1
  %3 = load i8, ptr %2, align 1, !tbaa !5
  switch i8 %3, label %4 [
    i8 16, label %6
    i8 11, label %27
  ]

4:                                                ; preds = %1
  %5 = tail call i32 @check_type_failed(ptr noundef %0) #5
  br label %71

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.ref_s, ptr %0, i64 -1
  %8 = getelementptr inbounds i8, ptr %0, i64 -15
  %9 = load i8, ptr %8, align 1, !tbaa !5
  switch i8 %9, label %10 [
    i8 16, label %12
    i8 11, label %18
  ]

10:                                               ; preds = %6
  %11 = tail call i32 @check_type_failed(ptr noundef nonnull %7) #5
  br label %71

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.ref_s, ptr %0, i64 0, i32 1
  %14 = load float, ptr %13, align 8, !tbaa !5
  %15 = getelementptr %struct.ref_s, ptr %0, i64 -1, i32 1
  %16 = load float, ptr %15, align 8, !tbaa !5
  %17 = fmul float %14, %16
  store float %17, ptr %15, align 8, !tbaa !5
  br label %68

18:                                               ; preds = %6
  %19 = getelementptr %struct.ref_s, ptr %0, i64 -1, i32 1
  %20 = load i64, ptr %19, align 8, !tbaa !5
  %21 = sitofp i64 %20 to double
  %22 = getelementptr inbounds %struct.ref_s, ptr %0, i64 0, i32 1
  %23 = load float, ptr %22, align 8, !tbaa !5
  %24 = fpext float %23 to double
  %25 = fmul double %21, %24
  %26 = fptrunc double %25 to float
  store float %26, ptr %19, align 8, !tbaa !5
  store i16 4096, ptr %7, align 8, !tbaa !8
  br label %68

27:                                               ; preds = %1
  %28 = getelementptr inbounds %struct.ref_s, ptr %0, i64 -1
  %29 = getelementptr inbounds i8, ptr %0, i64 -15
  %30 = load i8, ptr %29, align 1, !tbaa !5
  switch i8 %30, label %31 [
    i8 16, label %33
    i8 11, label %42
  ]

31:                                               ; preds = %27
  %32 = tail call i32 @check_type_failed(ptr noundef nonnull %28) #5
  br label %71

33:                                               ; preds = %27
  %34 = getelementptr inbounds %struct.ref_s, ptr %0, i64 0, i32 1
  %35 = load i64, ptr %34, align 8, !tbaa !5
  %36 = sitofp i64 %35 to double
  %37 = getelementptr %struct.ref_s, ptr %0, i64 -1, i32 1
  %38 = load float, ptr %37, align 8, !tbaa !5
  %39 = fpext float %38 to double
  %40 = fmul double %36, %39
  %41 = fptrunc double %40 to float
  store float %41, ptr %37, align 8, !tbaa !5
  br label %68

42:                                               ; preds = %27
  %43 = getelementptr %struct.ref_s, ptr %0, i64 -1, i32 1
  %44 = load i64, ptr %43, align 8, !tbaa !5
  %45 = getelementptr inbounds %struct.ref_s, ptr %0, i64 0, i32 1
  %46 = load i64, ptr %45, align 8, !tbaa !5
  %47 = tail call i64 @llvm.abs.i64(i64 %44, i1 true)
  %48 = tail call i64 @llvm.abs.i64(i64 %46, i1 true)
  %49 = icmp ugt i64 %47, 7
  %50 = icmp ugt i64 %48, 7
  %51 = select i1 %49, i1 true, i1 %50
  %52 = icmp ne i64 %44, 0
  %53 = select i1 %51, i1 %52, i1 false
  br i1 %53, label %54, label %66

54:                                               ; preds = %42
  %55 = udiv i64 9223372036854775807, %47
  %56 = icmp ugt i64 %48, %55
  br i1 %56, label %57, label %66

57:                                               ; preds = %54
  %58 = sitofp i64 %44 to float
  %59 = sitofp i64 %46 to float
  %60 = fmul float %58, %59
  %61 = mul nsw i64 %46, %44
  %62 = icmp ne i64 %61, -9223372036854775808
  %63 = fcmp une float %60, 0xC3E0000000000000
  %64 = select i1 %62, i1 true, i1 %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %57
  store float %60, ptr %43, align 8, !tbaa !5
  store i16 4096, ptr %28, align 8, !tbaa !8
  br label %68

66:                                               ; preds = %42, %57, %54
  %67 = mul nsw i64 %46, %44
  store i64 %67, ptr %43, align 8, !tbaa !5
  br label %68

68:                                               ; preds = %65, %66, %33, %12, %18
  %69 = load ptr, ptr @o_stack, align 8, !tbaa !12
  %70 = getelementptr inbounds %struct.ref_s, ptr %69, i64 -1
  store ptr %70, ptr @o_stack, align 8, !tbaa !12
  br label %71

71:                                               ; preds = %68, %31, %10, %4
  %72 = phi i32 [ %5, %4 ], [ %32, %31 ], [ 0, %68 ], [ %11, %10 ]
  ret i32 %72
}

; Function Attrs: nounwind uwtable
define internal i32 @zneg(ptr noundef %0) #0 {
  %2 = getelementptr inbounds i8, ptr %0, i64 1
  %3 = load i8, ptr %2, align 1, !tbaa !5
  switch i8 %3, label %4 [
    i8 16, label %6
    i8 11, label %10
  ]

4:                                                ; preds = %1
  %5 = tail call i32 @check_type_failed(ptr noundef %0) #5
  br label %17

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.ref_s, ptr %0, i64 0, i32 1
  %8 = load float, ptr %7, align 8, !tbaa !5
  %9 = fneg float %8
  store float %9, ptr %7, align 8, !tbaa !5
  br label %17

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.ref_s, ptr %0, i64 0, i32 1
  %12 = load i64, ptr %11, align 8, !tbaa !5
  %13 = icmp eq i64 %12, -9223372036854775808
  br i1 %13, label %14, label %15

14:                                               ; preds = %10
  store float 0x43E0000000000000, ptr %11, align 8, !tbaa !5
  store i16 4096, ptr %0, align 8, !tbaa !8
  br label %17

15:                                               ; preds = %10
  %16 = sub nsw i64 0, %12
  store i64 %16, ptr %11, align 8, !tbaa !5
  br label %17

17:                                               ; preds = %6, %15, %14, %4
  %18 = phi i32 [ %5, %4 ], [ 0, %14 ], [ 0, %15 ], [ 0, %6 ]
  ret i32 %18
}

; Function Attrs: nounwind uwtable
define internal i32 @zround(ptr noundef %0) #0 {
  %2 = getelementptr inbounds i8, ptr %0, i64 1
  %3 = load i8, ptr %2, align 1, !tbaa !5
  switch i8 %3, label %4 [
    i8 16, label %6
    i8 11, label %13
  ]

4:                                                ; preds = %1
  %5 = tail call i32 @check_type_failed(ptr noundef %0) #5
  br label %13

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.ref_s, ptr %0, i64 0, i32 1
  %8 = load float, ptr %7, align 8, !tbaa !5
  %9 = fpext float %8 to double
  %10 = fadd double %9, 5.000000e-01
  %11 = tail call double @llvm.floor.f64(double %10)
  %12 = fptrunc double %11 to float
  store float %12, ptr %7, align 8, !tbaa !5
  br label %13

13:                                               ; preds = %1, %6, %4
  %14 = phi i32 [ %5, %4 ], [ 0, %6 ], [ 0, %1 ]
  ret i32 %14
}

; Function Attrs: nounwind uwtable
define internal i32 @ztruncate(ptr noundef %0) #0 {
  %2 = getelementptr inbounds i8, ptr %0, i64 1
  %3 = load i8, ptr %2, align 1, !tbaa !5
  switch i8 %3, label %4 [
    i8 16, label %6
    i8 11, label %18
  ]

4:                                                ; preds = %1
  %5 = tail call i32 @check_type_failed(ptr noundef %0) #5
  br label %18

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.ref_s, ptr %0, i64 0, i32 1
  %8 = load float, ptr %7, align 8, !tbaa !5
  %9 = fpext float %8 to double
  %10 = fcmp olt float %8, 0.000000e+00
  br i1 %10, label %11, label %13

11:                                               ; preds = %6
  %12 = tail call double @llvm.ceil.f64(double %9)
  br label %15

13:                                               ; preds = %6
  %14 = tail call double @llvm.floor.f64(double %9)
  br label %15

15:                                               ; preds = %13, %11
  %16 = phi double [ %12, %11 ], [ %14, %13 ]
  %17 = fptrunc double %16 to float
  store float %17, ptr %7, align 8, !tbaa !5
  br label %18

18:                                               ; preds = %1, %15, %4
  %19 = phi i32 [ %5, %4 ], [ 0, %15 ], [ 0, %1 ]
  ret i32 %19
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.ceil.f64(double) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.floor.f64(double) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.ceil.f32(float) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.floor.f32(float) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !11, i64 0}
!9 = !{!"ref_s", !10, i64 0, !6, i64 8}
!10 = !{!"tas_s", !11, i64 0, !11, i64 2}
!11 = !{!"short", !6, i64 0}
!12 = !{!13, !14, i64 0}
!13 = !{!"ref_stack_s", !14, i64 0, !14, i64 8, !14, i64 16, !9, i64 24, !15, i64 40, !15, i64 44, !9, i64 48, !15, i64 64, !15, i64 68, !15, i64 72, !15, i64 76, !15, i64 80, !9, i64 88, !15, i64 104, !15, i64 108, !15, i64 112, !14, i64 120}
!14 = !{!"any pointer", !6, i64 0}
!15 = !{!"int", !6, i64 0}
