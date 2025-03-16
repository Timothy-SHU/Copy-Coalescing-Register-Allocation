; ModuleID = 'zrelbit.c'
source_filename = "zrelbit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.op_def = type { ptr, ptr }
%struct.ref_stack_s = type { ptr, ptr, ptr, %struct.ref_s, i32, i32, %struct.ref_s, i32, i32, i32, i32, i32, %struct.ref_s, i32, i32, i32, ptr }
%struct.ref_s = type { %struct.tas_s, %union.v }
%struct.tas_s = type { i16, i16 }
%union.v = type { i64 }

@zrelbit_op_defs.op_defs_ = internal constant [16 x %struct.op_def] [%struct.op_def { ptr @.str, ptr @zand }, %struct.op_def { ptr @.str.1, ptr @zbitshift }, %struct.op_def { ptr @.str.2, ptr @zeq }, %struct.op_def { ptr @.str.3, ptr @zge }, %struct.op_def { ptr @.str.4, ptr @zgt }, %struct.op_def { ptr @.str.5, ptr @zle }, %struct.op_def { ptr @.str.6, ptr @zlt }, %struct.op_def { ptr @.str.7, ptr @zmax }, %struct.op_def { ptr @.str.8, ptr @zmin }, %struct.op_def { ptr @.str.9, ptr @zne }, %struct.op_def { ptr @.str.10, ptr @znot }, %struct.op_def { ptr @.str.11, ptr @zor }, %struct.op_def { ptr @.str.12, ptr @zxor }, %struct.op_def { ptr @.str.13, ptr @zidenteq }, %struct.op_def { ptr @.str.14, ptr @zidentne }, %struct.op_def zeroinitializer], align 16
@.str = private unnamed_addr constant [5 x i8] c"2and\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"2bitshift\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"2eq\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"2ge\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"2gt\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"2le\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"2lt\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"2.max\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"2.min\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"2ne\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"1not\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"2or\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"2xor\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"2.identeq\00", align 1
@.str.14 = private unnamed_addr constant [10 x i8] c"2.identne\00", align 1
@o_stack = external local_unnamed_addr global %struct.ref_stack_s, align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @zrelbit_op_defs() local_unnamed_addr #0 {
  ret ptr @zrelbit_op_defs.op_defs_
}

; Function Attrs: nounwind uwtable
define internal i32 @zand(ptr noundef %0) #1 {
  %2 = getelementptr inbounds i8, ptr %0, i64 1
  %3 = load i8, ptr %2, align 1, !tbaa !5
  switch i8 %3, label %30 [
    i8 1, label %4
    i8 11, label %17
  ]

4:                                                ; preds = %1
  %5 = getelementptr inbounds i8, ptr %0, i64 -15
  %6 = load i8, ptr %5, align 1, !tbaa !5
  %7 = icmp eq i8 %6, 1
  br i1 %7, label %11, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.ref_s, ptr %0, i64 -1
  %10 = tail call i32 @check_type_failed(ptr noundef nonnull %9) #4
  br label %35

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.ref_s, ptr %0, i64 0, i32 1
  %13 = load i16, ptr %12, align 8, !tbaa !5
  %14 = getelementptr %struct.ref_s, ptr %0, i64 -1, i32 1
  %15 = load i16, ptr %14, align 8, !tbaa !5
  %16 = and i16 %15, %13
  store i16 %16, ptr %14, align 8, !tbaa !5
  br label %32

17:                                               ; preds = %1
  %18 = getelementptr inbounds i8, ptr %0, i64 -15
  %19 = load i8, ptr %18, align 1, !tbaa !5
  %20 = icmp eq i8 %19, 11
  br i1 %20, label %24, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.ref_s, ptr %0, i64 -1
  %23 = tail call i32 @check_type_failed(ptr noundef nonnull %22) #4
  br label %35

24:                                               ; preds = %17
  %25 = getelementptr inbounds %struct.ref_s, ptr %0, i64 0, i32 1
  %26 = load i64, ptr %25, align 8, !tbaa !5
  %27 = getelementptr %struct.ref_s, ptr %0, i64 -1, i32 1
  %28 = load i64, ptr %27, align 8, !tbaa !5
  %29 = and i64 %28, %26
  store i64 %29, ptr %27, align 8, !tbaa !5
  br label %32

30:                                               ; preds = %1
  %31 = tail call i32 @check_type_failed(ptr noundef %0) #4
  br label %35

32:                                               ; preds = %24, %11
  %33 = load ptr, ptr @o_stack, align 8, !tbaa !8
  %34 = getelementptr inbounds %struct.ref_s, ptr %33, i64 -1
  store ptr %34, ptr @o_stack, align 8, !tbaa !8
  br label %35

35:                                               ; preds = %32, %30, %21, %8
  %36 = phi i32 [ %31, %30 ], [ 0, %32 ], [ %23, %21 ], [ %10, %8 ]
  ret i32 %36
}

; Function Attrs: nounwind uwtable
define internal i32 @zbitshift(ptr noundef %0) #1 {
  %2 = getelementptr inbounds i8, ptr %0, i64 1
  %3 = load i8, ptr %2, align 1, !tbaa !5
  %4 = icmp eq i8 %3, 11
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = tail call i32 @check_type_failed(ptr noundef %0) #4
  br label %36

7:                                                ; preds = %1
  %8 = getelementptr inbounds i8, ptr %0, i64 -15
  %9 = load i8, ptr %8, align 1, !tbaa !5
  %10 = icmp eq i8 %9, 11
  br i1 %10, label %14, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.ref_s, ptr %0, i64 -1
  %13 = tail call i32 @check_type_failed(ptr noundef nonnull %12) #4
  br label %36

14:                                               ; preds = %7
  %15 = getelementptr inbounds %struct.ref_s, ptr %0, i64 0, i32 1
  %16 = load i64, ptr %15, align 8, !tbaa !5
  %17 = add i64 %16, -64
  %18 = icmp ult i64 %17, -127
  br i1 %18, label %19, label %21

19:                                               ; preds = %14
  %20 = getelementptr %struct.ref_s, ptr %0, i64 -1, i32 1
  store i64 0, ptr %20, align 8, !tbaa !5
  br label %33

21:                                               ; preds = %14
  %22 = and i64 %16, 2147483648
  %23 = icmp eq i64 %22, 0
  %24 = getelementptr %struct.ref_s, ptr %0, i64 -1, i32 1
  %25 = load i64, ptr %24, align 8, !tbaa !5
  br i1 %23, label %30, label %26

26:                                               ; preds = %21
  %27 = sub nsw i64 0, %16
  %28 = and i64 %27, 4294967295
  %29 = lshr i64 %25, %28
  store i64 %29, ptr %24, align 8, !tbaa !5
  br label %33

30:                                               ; preds = %21
  %31 = and i64 %16, 2147483647
  %32 = shl i64 %25, %31
  store i64 %32, ptr %24, align 8, !tbaa !5
  br label %33

33:                                               ; preds = %26, %30, %19
  %34 = load ptr, ptr @o_stack, align 8, !tbaa !8
  %35 = getelementptr inbounds %struct.ref_s, ptr %34, i64 -1
  store ptr %35, ptr @o_stack, align 8, !tbaa !8
  br label %36

36:                                               ; preds = %33, %11, %5
  %37 = phi i32 [ 0, %33 ], [ %13, %11 ], [ %6, %5 ]
  ret i32 %37
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @zeq(ptr noundef %0) #1 {
  %2 = getelementptr inbounds %struct.ref_s, ptr %0, i64 -1
  %3 = getelementptr inbounds i8, ptr %0, i64 -15
  %4 = load i8, ptr %3, align 1, !tbaa !5
  %5 = icmp eq i8 %4, 18
  br i1 %5, label %6, label %10

6:                                                ; preds = %1
  %7 = load i16, ptr %2, align 8, !tbaa !15
  %8 = and i16 %7, 32
  %9 = icmp eq i16 %8, 0
  br i1 %9, label %29, label %14

10:                                               ; preds = %1
  %11 = load ptr, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 1), align 8, !tbaa !16
  %12 = getelementptr inbounds %struct.ref_s, ptr %11, i64 1
  %13 = icmp ugt ptr %12, %0
  br i1 %13, label %29, label %14

14:                                               ; preds = %10, %6
  %15 = getelementptr inbounds i8, ptr %0, i64 1
  %16 = load i8, ptr %15, align 1, !tbaa !5
  %17 = icmp eq i8 %16, 18
  br i1 %17, label %18, label %22

18:                                               ; preds = %14
  %19 = load i16, ptr %0, align 8, !tbaa !15
  %20 = and i16 %19, 32
  %21 = icmp eq i16 %20, 0
  br i1 %21, label %29, label %22

22:                                               ; preds = %14, %18
  %23 = tail call i32 @obj_eq(ptr noundef nonnull %2, ptr noundef %0) #4
  %24 = icmp ne i32 %23, 0
  %25 = zext i1 %24 to i16
  %26 = getelementptr %struct.ref_s, ptr %0, i64 -1, i32 1
  store i16 %25, ptr %26, align 8, !tbaa !5
  store i16 256, ptr %2, align 8, !tbaa !15
  %27 = load ptr, ptr @o_stack, align 8, !tbaa !8
  %28 = getelementptr inbounds %struct.ref_s, ptr %27, i64 -1
  store ptr %28, ptr @o_stack, align 8, !tbaa !8
  br label %29

29:                                               ; preds = %18, %10, %6, %22
  %30 = phi i32 [ 0, %22 ], [ -7, %6 ], [ -17, %10 ], [ -7, %18 ]
  ret i32 %30
}

; Function Attrs: nounwind uwtable
define internal i32 @zge(ptr noundef %0) #1 {
  %2 = getelementptr inbounds %struct.ref_s, ptr %0, i64 -1
  %3 = tail call fastcc i32 @obj_le(ptr noundef %0, ptr noundef nonnull %2)
  %4 = icmp slt i32 %3, 0
  br i1 %4, label %10, label %5

5:                                                ; preds = %1
  %6 = trunc i32 %3 to i16
  %7 = getelementptr %struct.ref_s, ptr %0, i64 -1, i32 1
  store i16 %6, ptr %7, align 8, !tbaa !5
  store i16 256, ptr %2, align 8, !tbaa !15
  %8 = load ptr, ptr @o_stack, align 8, !tbaa !8
  %9 = getelementptr inbounds %struct.ref_s, ptr %8, i64 -1
  store ptr %9, ptr @o_stack, align 8, !tbaa !8
  br label %10

10:                                               ; preds = %1, %5
  %11 = phi i32 [ 0, %5 ], [ %3, %1 ]
  ret i32 %11
}

; Function Attrs: nounwind uwtable
define internal i32 @zgt(ptr noundef %0) #1 {
  %2 = getelementptr inbounds %struct.ref_s, ptr %0, i64 -1
  %3 = tail call fastcc i32 @obj_le(ptr noundef nonnull %2, ptr noundef %0)
  %4 = icmp slt i32 %3, 0
  br i1 %4, label %11, label %5

5:                                                ; preds = %1
  %6 = trunc i32 %3 to i16
  %7 = xor i16 %6, 1
  %8 = getelementptr %struct.ref_s, ptr %0, i64 -1, i32 1
  store i16 %7, ptr %8, align 8, !tbaa !5
  store i16 256, ptr %2, align 8, !tbaa !15
  %9 = load ptr, ptr @o_stack, align 8, !tbaa !8
  %10 = getelementptr inbounds %struct.ref_s, ptr %9, i64 -1
  store ptr %10, ptr @o_stack, align 8, !tbaa !8
  br label %11

11:                                               ; preds = %1, %5
  %12 = phi i32 [ 0, %5 ], [ %3, %1 ]
  ret i32 %12
}

; Function Attrs: nounwind uwtable
define internal i32 @zle(ptr noundef %0) #1 {
  %2 = getelementptr inbounds %struct.ref_s, ptr %0, i64 -1
  %3 = tail call fastcc i32 @obj_le(ptr noundef nonnull %2, ptr noundef %0)
  %4 = icmp slt i32 %3, 0
  br i1 %4, label %10, label %5

5:                                                ; preds = %1
  %6 = trunc i32 %3 to i16
  %7 = getelementptr %struct.ref_s, ptr %0, i64 -1, i32 1
  store i16 %6, ptr %7, align 8, !tbaa !5
  store i16 256, ptr %2, align 8, !tbaa !15
  %8 = load ptr, ptr @o_stack, align 8, !tbaa !8
  %9 = getelementptr inbounds %struct.ref_s, ptr %8, i64 -1
  store ptr %9, ptr @o_stack, align 8, !tbaa !8
  br label %10

10:                                               ; preds = %1, %5
  %11 = phi i32 [ 0, %5 ], [ %3, %1 ]
  ret i32 %11
}

; Function Attrs: nounwind uwtable
define internal i32 @zlt(ptr noundef %0) #1 {
  %2 = getelementptr inbounds %struct.ref_s, ptr %0, i64 -1
  %3 = tail call fastcc i32 @obj_le(ptr noundef %0, ptr noundef nonnull %2)
  %4 = icmp slt i32 %3, 0
  br i1 %4, label %11, label %5

5:                                                ; preds = %1
  %6 = trunc i32 %3 to i16
  %7 = xor i16 %6, 1
  %8 = getelementptr %struct.ref_s, ptr %0, i64 -1, i32 1
  store i16 %7, ptr %8, align 8, !tbaa !5
  store i16 256, ptr %2, align 8, !tbaa !15
  %9 = load ptr, ptr @o_stack, align 8, !tbaa !8
  %10 = getelementptr inbounds %struct.ref_s, ptr %9, i64 -1
  store ptr %10, ptr @o_stack, align 8, !tbaa !8
  br label %11

11:                                               ; preds = %1, %5
  %12 = phi i32 [ 0, %5 ], [ %3, %1 ]
  ret i32 %12
}

; Function Attrs: nounwind uwtable
define internal i32 @zmax(ptr noundef %0) #1 {
  %2 = getelementptr inbounds %struct.ref_s, ptr %0, i64 -1
  %3 = tail call fastcc i32 @obj_le(ptr noundef nonnull %2, ptr noundef %0)
  %4 = icmp slt i32 %3, 0
  br i1 %4, label %11, label %5

5:                                                ; preds = %1
  %6 = icmp eq i32 %3, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %5
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !17
  br label %8

8:                                                ; preds = %7, %5
  %9 = load ptr, ptr @o_stack, align 8, !tbaa !8
  %10 = getelementptr inbounds %struct.ref_s, ptr %9, i64 -1
  store ptr %10, ptr @o_stack, align 8, !tbaa !8
  br label %11

11:                                               ; preds = %1, %8
  %12 = phi i32 [ 0, %8 ], [ %3, %1 ]
  ret i32 %12
}

; Function Attrs: nounwind uwtable
define internal i32 @zmin(ptr noundef %0) #1 {
  %2 = getelementptr inbounds %struct.ref_s, ptr %0, i64 -1
  %3 = tail call fastcc i32 @obj_le(ptr noundef nonnull %2, ptr noundef %0)
  %4 = icmp slt i32 %3, 0
  br i1 %4, label %11, label %5

5:                                                ; preds = %1
  %6 = icmp eq i32 %3, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %5
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !17
  br label %8

8:                                                ; preds = %7, %5
  %9 = load ptr, ptr @o_stack, align 8, !tbaa !8
  %10 = getelementptr inbounds %struct.ref_s, ptr %9, i64 -1
  store ptr %10, ptr @o_stack, align 8, !tbaa !8
  br label %11

11:                                               ; preds = %1, %8
  %12 = phi i32 [ 0, %8 ], [ %3, %1 ]
  ret i32 %12
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @zne(ptr noundef %0) #1 {
  %2 = getelementptr inbounds %struct.ref_s, ptr %0, i64 -1
  %3 = getelementptr inbounds i8, ptr %0, i64 -15
  %4 = load i8, ptr %3, align 1, !tbaa !5
  %5 = icmp eq i8 %4, 18
  br i1 %5, label %6, label %10

6:                                                ; preds = %1
  %7 = load i16, ptr %2, align 8, !tbaa !15
  %8 = and i16 %7, 32
  %9 = icmp eq i16 %8, 0
  br i1 %9, label %29, label %14

10:                                               ; preds = %1
  %11 = load ptr, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 1), align 8, !tbaa !16
  %12 = getelementptr inbounds %struct.ref_s, ptr %11, i64 1
  %13 = icmp ugt ptr %12, %0
  br i1 %13, label %29, label %14

14:                                               ; preds = %10, %6
  %15 = getelementptr inbounds i8, ptr %0, i64 1
  %16 = load i8, ptr %15, align 1, !tbaa !5
  %17 = icmp eq i8 %16, 18
  br i1 %17, label %18, label %22

18:                                               ; preds = %14
  %19 = load i16, ptr %0, align 8, !tbaa !15
  %20 = and i16 %19, 32
  %21 = icmp eq i16 %20, 0
  br i1 %21, label %29, label %22

22:                                               ; preds = %18, %14
  %23 = tail call i32 @obj_eq(ptr noundef nonnull %2, ptr noundef %0) #4
  %24 = icmp ne i32 %23, 0
  %25 = zext i1 %24 to i16
  %26 = getelementptr %struct.ref_s, ptr %0, i64 -1, i32 1
  store i16 %25, ptr %26, align 8, !tbaa !5
  store i16 256, ptr %2, align 8, !tbaa !15
  %27 = load ptr, ptr @o_stack, align 8, !tbaa !8
  %28 = getelementptr inbounds %struct.ref_s, ptr %27, i64 -1
  store ptr %28, ptr @o_stack, align 8, !tbaa !8
  br label %29

29:                                               ; preds = %6, %10, %18, %22
  %30 = phi i1 [ true, %22 ], [ false, %6 ], [ false, %10 ], [ false, %18 ]
  %31 = phi i32 [ 0, %22 ], [ -7, %6 ], [ -17, %10 ], [ -7, %18 ]
  br i1 %30, label %32, label %36

32:                                               ; preds = %29
  %33 = getelementptr %struct.ref_s, ptr %0, i64 -1, i32 1
  %34 = load i16, ptr %33, align 8, !tbaa !5
  %35 = xor i16 %34, 1
  store i16 %35, ptr %33, align 8, !tbaa !5
  br label %36

36:                                               ; preds = %32, %29
  ret i32 %31
}

; Function Attrs: nounwind uwtable
define internal i32 @znot(ptr noundef %0) #1 {
  %2 = getelementptr inbounds i8, ptr %0, i64 1
  %3 = load i8, ptr %2, align 1, !tbaa !5
  switch i8 %3, label %13 [
    i8 1, label %4
    i8 11, label %9
  ]

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.ref_s, ptr %0, i64 0, i32 1
  %6 = load i16, ptr %5, align 8, !tbaa !5
  %7 = icmp eq i16 %6, 0
  %8 = zext i1 %7 to i16
  store i16 %8, ptr %5, align 8, !tbaa !5
  br label %15

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.ref_s, ptr %0, i64 0, i32 1
  %11 = load i64, ptr %10, align 8, !tbaa !5
  %12 = xor i64 %11, -1
  store i64 %12, ptr %10, align 8, !tbaa !5
  br label %15

13:                                               ; preds = %1
  %14 = tail call i32 @check_type_failed(ptr noundef %0) #4
  br label %15

15:                                               ; preds = %4, %9, %13
  %16 = phi i32 [ %14, %13 ], [ 0, %9 ], [ 0, %4 ]
  ret i32 %16
}

; Function Attrs: nounwind uwtable
define internal i32 @zor(ptr noundef %0) #1 {
  %2 = getelementptr inbounds i8, ptr %0, i64 1
  %3 = load i8, ptr %2, align 1, !tbaa !5
  switch i8 %3, label %30 [
    i8 1, label %4
    i8 11, label %17
  ]

4:                                                ; preds = %1
  %5 = getelementptr inbounds i8, ptr %0, i64 -15
  %6 = load i8, ptr %5, align 1, !tbaa !5
  %7 = icmp eq i8 %6, 1
  br i1 %7, label %11, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.ref_s, ptr %0, i64 -1
  %10 = tail call i32 @check_type_failed(ptr noundef nonnull %9) #4
  br label %35

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.ref_s, ptr %0, i64 0, i32 1
  %13 = load i16, ptr %12, align 8, !tbaa !5
  %14 = getelementptr %struct.ref_s, ptr %0, i64 -1, i32 1
  %15 = load i16, ptr %14, align 8, !tbaa !5
  %16 = or i16 %15, %13
  store i16 %16, ptr %14, align 8, !tbaa !5
  br label %32

17:                                               ; preds = %1
  %18 = getelementptr inbounds i8, ptr %0, i64 -15
  %19 = load i8, ptr %18, align 1, !tbaa !5
  %20 = icmp eq i8 %19, 11
  br i1 %20, label %24, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.ref_s, ptr %0, i64 -1
  %23 = tail call i32 @check_type_failed(ptr noundef nonnull %22) #4
  br label %35

24:                                               ; preds = %17
  %25 = getelementptr inbounds %struct.ref_s, ptr %0, i64 0, i32 1
  %26 = load i64, ptr %25, align 8, !tbaa !5
  %27 = getelementptr %struct.ref_s, ptr %0, i64 -1, i32 1
  %28 = load i64, ptr %27, align 8, !tbaa !5
  %29 = or i64 %28, %26
  store i64 %29, ptr %27, align 8, !tbaa !5
  br label %32

30:                                               ; preds = %1
  %31 = tail call i32 @check_type_failed(ptr noundef %0) #4
  br label %35

32:                                               ; preds = %24, %11
  %33 = load ptr, ptr @o_stack, align 8, !tbaa !8
  %34 = getelementptr inbounds %struct.ref_s, ptr %33, i64 -1
  store ptr %34, ptr @o_stack, align 8, !tbaa !8
  br label %35

35:                                               ; preds = %32, %30, %21, %8
  %36 = phi i32 [ %31, %30 ], [ 0, %32 ], [ %23, %21 ], [ %10, %8 ]
  ret i32 %36
}

; Function Attrs: nounwind uwtable
define internal i32 @zxor(ptr noundef %0) #1 {
  %2 = getelementptr inbounds i8, ptr %0, i64 1
  %3 = load i8, ptr %2, align 1, !tbaa !5
  switch i8 %3, label %30 [
    i8 1, label %4
    i8 11, label %17
  ]

4:                                                ; preds = %1
  %5 = getelementptr inbounds i8, ptr %0, i64 -15
  %6 = load i8, ptr %5, align 1, !tbaa !5
  %7 = icmp eq i8 %6, 1
  br i1 %7, label %11, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.ref_s, ptr %0, i64 -1
  %10 = tail call i32 @check_type_failed(ptr noundef nonnull %9) #4
  br label %35

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.ref_s, ptr %0, i64 0, i32 1
  %13 = load i16, ptr %12, align 8, !tbaa !5
  %14 = getelementptr %struct.ref_s, ptr %0, i64 -1, i32 1
  %15 = load i16, ptr %14, align 8, !tbaa !5
  %16 = xor i16 %15, %13
  store i16 %16, ptr %14, align 8, !tbaa !5
  br label %32

17:                                               ; preds = %1
  %18 = getelementptr inbounds i8, ptr %0, i64 -15
  %19 = load i8, ptr %18, align 1, !tbaa !5
  %20 = icmp eq i8 %19, 11
  br i1 %20, label %24, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.ref_s, ptr %0, i64 -1
  %23 = tail call i32 @check_type_failed(ptr noundef nonnull %22) #4
  br label %35

24:                                               ; preds = %17
  %25 = getelementptr inbounds %struct.ref_s, ptr %0, i64 0, i32 1
  %26 = load i64, ptr %25, align 8, !tbaa !5
  %27 = getelementptr %struct.ref_s, ptr %0, i64 -1, i32 1
  %28 = load i64, ptr %27, align 8, !tbaa !5
  %29 = xor i64 %28, %26
  store i64 %29, ptr %27, align 8, !tbaa !5
  br label %32

30:                                               ; preds = %1
  %31 = tail call i32 @check_type_failed(ptr noundef %0) #4
  br label %35

32:                                               ; preds = %24, %11
  %33 = load ptr, ptr @o_stack, align 8, !tbaa !8
  %34 = getelementptr inbounds %struct.ref_s, ptr %33, i64 -1
  store ptr %34, ptr @o_stack, align 8, !tbaa !8
  br label %35

35:                                               ; preds = %32, %30, %21, %8
  %36 = phi i32 [ %31, %30 ], [ 0, %32 ], [ %23, %21 ], [ %10, %8 ]
  ret i32 %36
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @zidenteq(ptr noundef %0) #1 {
  %2 = getelementptr inbounds %struct.ref_s, ptr %0, i64 -1
  %3 = getelementptr inbounds i8, ptr %0, i64 -15
  %4 = load i8, ptr %3, align 1, !tbaa !5
  %5 = icmp eq i8 %4, 18
  br i1 %5, label %6, label %10

6:                                                ; preds = %1
  %7 = load i16, ptr %2, align 8, !tbaa !15
  %8 = and i16 %7, 32
  %9 = icmp eq i16 %8, 0
  br i1 %9, label %29, label %14

10:                                               ; preds = %1
  %11 = load ptr, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 1), align 8, !tbaa !16
  %12 = getelementptr inbounds %struct.ref_s, ptr %11, i64 1
  %13 = icmp ugt ptr %12, %0
  br i1 %13, label %29, label %14

14:                                               ; preds = %10, %6
  %15 = getelementptr inbounds i8, ptr %0, i64 1
  %16 = load i8, ptr %15, align 1, !tbaa !5
  %17 = icmp eq i8 %16, 18
  br i1 %17, label %18, label %22

18:                                               ; preds = %14
  %19 = load i16, ptr %0, align 8, !tbaa !15
  %20 = and i16 %19, 32
  %21 = icmp eq i16 %20, 0
  br i1 %21, label %29, label %22

22:                                               ; preds = %14, %18
  %23 = tail call i32 @obj_ident_eq(ptr noundef nonnull %2, ptr noundef %0) #4
  %24 = icmp ne i32 %23, 0
  %25 = zext i1 %24 to i16
  %26 = getelementptr %struct.ref_s, ptr %0, i64 -1, i32 1
  store i16 %25, ptr %26, align 8, !tbaa !5
  store i16 256, ptr %2, align 8, !tbaa !15
  %27 = load ptr, ptr @o_stack, align 8, !tbaa !8
  %28 = getelementptr inbounds %struct.ref_s, ptr %27, i64 -1
  store ptr %28, ptr @o_stack, align 8, !tbaa !8
  br label %29

29:                                               ; preds = %18, %10, %6, %22
  %30 = phi i32 [ 0, %22 ], [ -7, %6 ], [ -17, %10 ], [ -7, %18 ]
  ret i32 %30
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @zidentne(ptr noundef %0) #1 {
  %2 = getelementptr inbounds %struct.ref_s, ptr %0, i64 -1
  %3 = getelementptr inbounds i8, ptr %0, i64 -15
  %4 = load i8, ptr %3, align 1, !tbaa !5
  %5 = icmp eq i8 %4, 18
  br i1 %5, label %6, label %10

6:                                                ; preds = %1
  %7 = load i16, ptr %2, align 8, !tbaa !15
  %8 = and i16 %7, 32
  %9 = icmp eq i16 %8, 0
  br i1 %9, label %29, label %14

10:                                               ; preds = %1
  %11 = load ptr, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 1), align 8, !tbaa !16
  %12 = getelementptr inbounds %struct.ref_s, ptr %11, i64 1
  %13 = icmp ugt ptr %12, %0
  br i1 %13, label %29, label %14

14:                                               ; preds = %10, %6
  %15 = getelementptr inbounds i8, ptr %0, i64 1
  %16 = load i8, ptr %15, align 1, !tbaa !5
  %17 = icmp eq i8 %16, 18
  br i1 %17, label %18, label %22

18:                                               ; preds = %14
  %19 = load i16, ptr %0, align 8, !tbaa !15
  %20 = and i16 %19, 32
  %21 = icmp eq i16 %20, 0
  br i1 %21, label %29, label %22

22:                                               ; preds = %18, %14
  %23 = tail call i32 @obj_ident_eq(ptr noundef nonnull %2, ptr noundef %0) #4
  %24 = icmp ne i32 %23, 0
  %25 = zext i1 %24 to i16
  %26 = getelementptr %struct.ref_s, ptr %0, i64 -1, i32 1
  store i16 %25, ptr %26, align 8, !tbaa !5
  store i16 256, ptr %2, align 8, !tbaa !15
  %27 = load ptr, ptr @o_stack, align 8, !tbaa !8
  %28 = getelementptr inbounds %struct.ref_s, ptr %27, i64 -1
  store ptr %28, ptr @o_stack, align 8, !tbaa !8
  br label %29

29:                                               ; preds = %6, %10, %18, %22
  %30 = phi i1 [ true, %22 ], [ false, %6 ], [ false, %10 ], [ false, %18 ]
  %31 = phi i32 [ 0, %22 ], [ -7, %6 ], [ -17, %10 ], [ -7, %18 ]
  br i1 %30, label %32, label %36

32:                                               ; preds = %29
  %33 = getelementptr %struct.ref_s, ptr %0, i64 -1, i32 1
  %34 = load i16, ptr %33, align 8, !tbaa !5
  %35 = xor i16 %34, 1
  store i16 %35, ptr %33, align 8, !tbaa !5
  br label %36

36:                                               ; preds = %32, %29
  ret i32 %31
}

declare i32 @check_type_failed(ptr noundef) local_unnamed_addr #2

declare i32 @obj_eq(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc i32 @obj_le(ptr noundef %0, ptr noundef %1) unnamed_addr #1 {
  %3 = getelementptr inbounds i8, ptr %0, i64 1
  %4 = load i8, ptr %3, align 1, !tbaa !5
  switch i8 %4, label %75 [
    i8 11, label %5
    i8 16, label %26
    i8 18, label %47
  ]

5:                                                ; preds = %2
  %6 = getelementptr inbounds i8, ptr %1, i64 1
  %7 = load i8, ptr %6, align 1, !tbaa !5
  switch i8 %7, label %24 [
    i8 11, label %8
    i8 16, label %15
  ]

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.ref_s, ptr %0, i64 0, i32 1
  %10 = load i64, ptr %9, align 8, !tbaa !5
  %11 = getelementptr inbounds %struct.ref_s, ptr %1, i64 0, i32 1
  %12 = load i64, ptr %11, align 8, !tbaa !5
  %13 = icmp sle i64 %10, %12
  %14 = zext i1 %13 to i32
  br label %77

15:                                               ; preds = %5
  %16 = getelementptr inbounds %struct.ref_s, ptr %0, i64 0, i32 1
  %17 = load i64, ptr %16, align 8, !tbaa !5
  %18 = sitofp i64 %17 to double
  %19 = getelementptr inbounds %struct.ref_s, ptr %1, i64 0, i32 1
  %20 = load float, ptr %19, align 8, !tbaa !5
  %21 = fpext float %20 to double
  %22 = fcmp ole double %18, %21
  %23 = zext i1 %22 to i32
  br label %77

24:                                               ; preds = %5
  %25 = tail call i32 @check_type_failed(ptr noundef %1) #4
  br label %77

26:                                               ; preds = %2
  %27 = getelementptr inbounds i8, ptr %1, i64 1
  %28 = load i8, ptr %27, align 1, !tbaa !5
  switch i8 %28, label %45 [
    i8 16, label %29
    i8 11, label %36
  ]

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.ref_s, ptr %0, i64 0, i32 1
  %31 = load float, ptr %30, align 8, !tbaa !5
  %32 = getelementptr inbounds %struct.ref_s, ptr %1, i64 0, i32 1
  %33 = load float, ptr %32, align 8, !tbaa !5
  %34 = fcmp ole float %31, %33
  %35 = zext i1 %34 to i32
  br label %77

36:                                               ; preds = %26
  %37 = getelementptr inbounds %struct.ref_s, ptr %0, i64 0, i32 1
  %38 = load float, ptr %37, align 8, !tbaa !5
  %39 = fpext float %38 to double
  %40 = getelementptr inbounds %struct.ref_s, ptr %1, i64 0, i32 1
  %41 = load i64, ptr %40, align 8, !tbaa !5
  %42 = sitofp i64 %41 to double
  %43 = fcmp ole double %39, %42
  %44 = zext i1 %43 to i32
  br label %77

45:                                               ; preds = %26
  %46 = tail call i32 @check_type_failed(ptr noundef %1) #4
  br label %77

47:                                               ; preds = %2
  %48 = load i16, ptr %0, align 8, !tbaa !15
  %49 = and i16 %48, 32
  %50 = icmp eq i16 %49, 0
  br i1 %50, label %77, label %51

51:                                               ; preds = %47
  %52 = load i16, ptr %1, align 8, !tbaa !15
  %53 = and i16 %52, 16160
  %54 = icmp eq i16 %53, 4640
  br i1 %54, label %61, label %55

55:                                               ; preds = %51
  %56 = getelementptr inbounds i8, ptr %1, i64 1
  %57 = load i8, ptr %56, align 1, !tbaa !5
  %58 = icmp eq i8 %57, 18
  br i1 %58, label %77, label %59

59:                                               ; preds = %55
  %60 = tail call i32 @check_type_failed(ptr noundef nonnull %1) #4
  br label %77

61:                                               ; preds = %51
  %62 = getelementptr inbounds %struct.ref_s, ptr %0, i64 0, i32 1
  %63 = load ptr, ptr %62, align 8, !tbaa !5
  %64 = getelementptr inbounds %struct.tas_s, ptr %0, i64 0, i32 1
  %65 = load i16, ptr %64, align 2, !tbaa !24
  %66 = zext i16 %65 to i32
  %67 = getelementptr inbounds %struct.ref_s, ptr %1, i64 0, i32 1
  %68 = load ptr, ptr %67, align 8, !tbaa !5
  %69 = getelementptr inbounds %struct.tas_s, ptr %1, i64 0, i32 1
  %70 = load i16, ptr %69, align 2, !tbaa !24
  %71 = zext i16 %70 to i32
  %72 = tail call i32 @bytes_compare(ptr noundef %63, i32 noundef %66, ptr noundef %68, i32 noundef %71) #4
  %73 = icmp slt i32 %72, 1
  %74 = zext i1 %73 to i32
  br label %77

75:                                               ; preds = %2
  %76 = tail call i32 @check_type_failed(ptr noundef %0) #4
  br label %77

77:                                               ; preds = %59, %55, %47, %75, %61, %45, %36, %29, %24, %15, %8
  %78 = phi i32 [ %76, %75 ], [ %74, %61 ], [ %46, %45 ], [ %44, %36 ], [ %35, %29 ], [ %25, %24 ], [ %23, %15 ], [ %14, %8 ], [ -7, %47 ], [ %60, %59 ], [ -7, %55 ]
  ret i32 %78
}

declare i32 @bytes_compare(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

declare i32 @obj_ident_eq(ptr noundef, ptr noundef) local_unnamed_addr #2

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nounwind }

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
!8 = !{!9, !10, i64 0}
!9 = !{!"ref_stack_s", !10, i64 0, !10, i64 8, !10, i64 16, !11, i64 24, !14, i64 40, !14, i64 44, !11, i64 48, !14, i64 64, !14, i64 68, !14, i64 72, !14, i64 76, !14, i64 80, !11, i64 88, !14, i64 104, !14, i64 108, !14, i64 112, !10, i64 120}
!10 = !{!"any pointer", !6, i64 0}
!11 = !{!"ref_s", !12, i64 0, !6, i64 8}
!12 = !{!"tas_s", !13, i64 0, !13, i64 2}
!13 = !{!"short", !6, i64 0}
!14 = !{!"int", !6, i64 0}
!15 = !{!11, !13, i64 0}
!16 = !{!9, !10, i64 8}
!17 = !{i64 0, i64 2, !18, i64 2, i64 2, !18, i64 8, i64 8, !19, i64 8, i64 2, !18, i64 8, i64 4, !21, i64 8, i64 8, !19, i64 8, i64 8, !23, i64 8, i64 8, !23, i64 8, i64 8, !23, i64 8, i64 8, !23, i64 8, i64 8, !23, i64 8, i64 8, !23, i64 8, i64 8, !23, i64 8, i64 8, !23, i64 8, i64 8, !23, i64 8, i64 8, !23, i64 8, i64 8, !23, i64 8, i64 8, !23, i64 8, i64 8, !23}
!18 = !{!13, !13, i64 0}
!19 = !{!20, !20, i64 0}
!20 = !{!"long", !6, i64 0}
!21 = !{!22, !22, i64 0}
!22 = !{!"float", !6, i64 0}
!23 = !{!10, !10, i64 0}
!24 = !{!11, !13, i64 2}
