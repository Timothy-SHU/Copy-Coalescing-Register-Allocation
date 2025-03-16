; ModuleID = 'zmath.c'
source_filename = "zmath.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.op_def = type { ptr, ptr }
%struct.ref_stack_s = type { ptr, ptr, ptr, %struct.ref_s, i32, i32, %struct.ref_s, i32, i32, i32, i32, i32, %struct.ref_s, i32, i32, i32, ptr }
%struct.ref_s = type { %struct.tas_s, %union.v }
%struct.tas_s = type { i16, i16 }
%union.v = type { i64 }

@zmath_op_defs.op_defs_ = internal constant [13 x %struct.op_def] [%struct.op_def { ptr @.str, ptr @zarccos }, %struct.op_def { ptr @.str.1, ptr @zarcsin }, %struct.op_def { ptr @.str.2, ptr @zatan }, %struct.op_def { ptr @.str.3, ptr @zcos }, %struct.op_def { ptr @.str.4, ptr @zexp }, %struct.op_def { ptr @.str.5, ptr @zln }, %struct.op_def { ptr @.str.6, ptr @zlog }, %struct.op_def { ptr @.str.7, ptr @zrand }, %struct.op_def { ptr @.str.8, ptr @zrrand }, %struct.op_def { ptr @.str.9, ptr @zsin }, %struct.op_def { ptr @.str.10, ptr @zsqrt }, %struct.op_def { ptr @.str.11, ptr @zsrand }, %struct.op_def { ptr null, ptr @zmath_init }], align 16
@.str = private unnamed_addr constant [8 x i8] c"1arccos\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"1arcsin\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"2atan\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"1cos\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"2exp\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"1ln\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"1log\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"0rand\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"0rrand\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"1sin\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"1sqrt\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"1srand\00", align 1
@zrand_state = dso_local local_unnamed_addr global i64 0, align 8
@o_stack = external local_unnamed_addr global %struct.ref_stack_s, align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @zrand_state_init(ptr nocapture noundef writeonly %0) local_unnamed_addr #0 {
  store i64 1, ptr %0, align 8, !tbaa !5
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @zmath_op_defs() local_unnamed_addr #1 {
  ret ptr @zmath_op_defs.op_defs_
}

; Function Attrs: nounwind uwtable
define internal i32 @zarccos(ptr noundef %0) #2 {
  %2 = alloca float, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #10
  %3 = call i32 @num_params(ptr noundef %0, i32 noundef 1, ptr noundef nonnull %2) #10
  %4 = icmp slt i32 %3, 0
  br i1 %4, label %12, label %5

5:                                                ; preds = %1
  %6 = load float, ptr %2, align 4, !tbaa !9
  %7 = fpext float %6 to double
  %8 = call double @acos(double noundef %7) #10
  %9 = fmul double %8, 0x404CA5DC1A63C1F8
  %10 = fptrunc double %9 to float
  %11 = getelementptr inbounds %struct.ref_s, ptr %0, i64 0, i32 1
  store float %10, ptr %11, align 8, !tbaa !11
  store i16 4096, ptr %0, align 8, !tbaa !12
  br label %12

12:                                               ; preds = %1, %5
  %13 = phi i32 [ 0, %5 ], [ %3, %1 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #10
  ret i32 %13
}

; Function Attrs: nounwind uwtable
define internal i32 @zarcsin(ptr noundef %0) #2 {
  %2 = alloca float, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #10
  %3 = call i32 @num_params(ptr noundef %0, i32 noundef 1, ptr noundef nonnull %2) #10
  %4 = icmp slt i32 %3, 0
  br i1 %4, label %12, label %5

5:                                                ; preds = %1
  %6 = load float, ptr %2, align 4, !tbaa !9
  %7 = fpext float %6 to double
  %8 = call double @asin(double noundef %7) #10
  %9 = fmul double %8, 0x404CA5DC1A63C1F8
  %10 = fptrunc double %9 to float
  %11 = getelementptr inbounds %struct.ref_s, ptr %0, i64 0, i32 1
  store float %10, ptr %11, align 8, !tbaa !11
  store i16 4096, ptr %0, align 8, !tbaa !12
  br label %12

12:                                               ; preds = %1, %5
  %13 = phi i32 [ 0, %5 ], [ %3, %1 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #10
  ret i32 %13
}

; Function Attrs: nounwind uwtable
define internal i32 @zatan(ptr noundef %0) #2 {
  %2 = alloca [2 x float], align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #10
  %3 = call i32 @num_params(ptr noundef %0, i32 noundef 2, ptr noundef nonnull %2) #10
  %4 = icmp slt i32 %3, 0
  br i1 %4, label %32, label %5

5:                                                ; preds = %1
  %6 = load float, ptr %2, align 4, !tbaa !9
  %7 = fcmp oeq float %6, 0.000000e+00
  br i1 %7, label %8, label %15

8:                                                ; preds = %5
  %9 = getelementptr inbounds [2 x float], ptr %2, i64 0, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !9
  %11 = fcmp oeq float %10, 0.000000e+00
  br i1 %11, label %32, label %12

12:                                               ; preds = %8
  %13 = fcmp olt float %10, 0.000000e+00
  %14 = select i1 %13, float 1.800000e+02, float 0.000000e+00
  br label %26

15:                                               ; preds = %5
  %16 = fpext float %6 to double
  %17 = getelementptr inbounds [2 x float], ptr %2, i64 0, i64 1
  %18 = load float, ptr %17, align 4, !tbaa !9
  %19 = fpext float %18 to double
  %20 = call double @atan2(double noundef %16, double noundef %19) #10
  %21 = fmul double %20, 0x404CA5DC1A63C1F8
  %22 = fptrunc double %21 to float
  %23 = fcmp olt float %22, 0.000000e+00
  br i1 %23, label %24, label %26

24:                                               ; preds = %15
  %25 = fadd float %22, 3.600000e+02
  br label %26

26:                                               ; preds = %15, %24, %12
  %27 = phi float [ %14, %12 ], [ %25, %24 ], [ %22, %15 ]
  %28 = getelementptr inbounds %struct.ref_s, ptr %0, i64 -1
  %29 = getelementptr %struct.ref_s, ptr %0, i64 -1, i32 1
  store float %27, ptr %29, align 8, !tbaa !11
  store i16 4096, ptr %28, align 8, !tbaa !12
  %30 = load ptr, ptr @o_stack, align 8, !tbaa !16
  %31 = getelementptr inbounds %struct.ref_s, ptr %30, i64 -1
  store ptr %31, ptr @o_stack, align 8, !tbaa !16
  br label %32

32:                                               ; preds = %8, %1, %26
  %33 = phi i32 [ 0, %26 ], [ %3, %1 ], [ -23, %8 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #10
  ret i32 %33
}

; Function Attrs: nounwind uwtable
define internal i32 @zcos(ptr noundef %0) #2 {
  %2 = alloca float, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #10
  %3 = call i32 @num_params(ptr noundef %0, i32 noundef 1, ptr noundef nonnull %2) #10
  %4 = icmp slt i32 %3, 0
  br i1 %4, label %11, label %5

5:                                                ; preds = %1
  %6 = load float, ptr %2, align 4, !tbaa !9
  %7 = fpext float %6 to double
  %8 = call double @gs_cos_degrees(double noundef %7) #10
  %9 = fptrunc double %8 to float
  %10 = getelementptr inbounds %struct.ref_s, ptr %0, i64 0, i32 1
  store float %9, ptr %10, align 8, !tbaa !11
  store i16 4096, ptr %0, align 8, !tbaa !12
  br label %11

11:                                               ; preds = %1, %5
  %12 = phi i32 [ 0, %5 ], [ %3, %1 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #10
  ret i32 %12
}

; Function Attrs: nounwind uwtable
define internal i32 @zexp(ptr noundef %0) #2 {
  %2 = alloca [2 x float], align 4
  %3 = alloca double, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #10
  %4 = call i32 @num_params(ptr noundef %0, i32 noundef 2, ptr noundef nonnull %2) #10
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %28, label %6

6:                                                ; preds = %1
  %7 = load float, ptr %2, align 4, !tbaa !9
  %8 = fcmp oeq float %7, 0.000000e+00
  %9 = getelementptr inbounds [2 x float], ptr %2, i64 0, i64 1
  %10 = load float, ptr %9, align 4
  %11 = fcmp oeq float %10, 0.000000e+00
  %12 = select i1 %8, i1 %11, i1 false
  br i1 %12, label %28, label %13

13:                                               ; preds = %6
  %14 = fcmp olt float %7, 0.000000e+00
  br i1 %14, label %15, label %19

15:                                               ; preds = %13
  %16 = fpext float %10 to double
  %17 = call double @modf(double noundef %16, ptr noundef nonnull %3) #10
  %18 = fcmp une double %17, 0.000000e+00
  br i1 %18, label %28, label %19

19:                                               ; preds = %15, %13
  %20 = fpext float %7 to double
  %21 = fpext float %10 to double
  %22 = call double @pow(double noundef %20, double noundef %21) #10
  %23 = fptrunc double %22 to float
  %24 = getelementptr inbounds %struct.ref_s, ptr %0, i64 -1
  %25 = getelementptr %struct.ref_s, ptr %0, i64 -1, i32 1
  store float %23, ptr %25, align 8, !tbaa !11
  store i16 4096, ptr %24, align 8, !tbaa !12
  %26 = load ptr, ptr @o_stack, align 8, !tbaa !16
  %27 = getelementptr inbounds %struct.ref_s, ptr %26, i64 -1
  store ptr %27, ptr @o_stack, align 8, !tbaa !16
  br label %28

28:                                               ; preds = %15, %6, %1, %19
  %29 = phi i32 [ 0, %19 ], [ %4, %1 ], [ -23, %6 ], [ -23, %15 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #10
  ret i32 %29
}

; Function Attrs: nounwind uwtable
define internal i32 @zln(ptr noundef %0) #2 {
  %2 = alloca float, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #10
  %3 = call i32 @num_params(ptr noundef %0, i32 noundef 1, ptr noundef nonnull %2) #10
  %4 = icmp slt i32 %3, 0
  br i1 %4, label %13, label %5

5:                                                ; preds = %1
  %6 = load float, ptr %2, align 4, !tbaa !9
  %7 = fcmp ugt float %6, 0.000000e+00
  br i1 %7, label %8, label %13

8:                                                ; preds = %5
  %9 = fpext float %6 to double
  %10 = call double @log(double noundef %9) #10
  %11 = fptrunc double %10 to float
  %12 = getelementptr inbounds %struct.ref_s, ptr %0, i64 0, i32 1
  store float %11, ptr %12, align 8, !tbaa !11
  store i16 4096, ptr %0, align 8, !tbaa !12
  br label %13

13:                                               ; preds = %5, %1, %8
  %14 = phi i32 [ 0, %8 ], [ %3, %1 ], [ -15, %5 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #10
  ret i32 %14
}

; Function Attrs: nounwind uwtable
define internal i32 @zlog(ptr noundef %0) #2 {
  %2 = alloca float, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #10
  %3 = call i32 @num_params(ptr noundef %0, i32 noundef 1, ptr noundef nonnull %2) #10
  %4 = icmp slt i32 %3, 0
  br i1 %4, label %13, label %5

5:                                                ; preds = %1
  %6 = load float, ptr %2, align 4, !tbaa !9
  %7 = fcmp ugt float %6, 0.000000e+00
  br i1 %7, label %8, label %13

8:                                                ; preds = %5
  %9 = fpext float %6 to double
  %10 = call double @log10(double noundef %9) #10
  %11 = fptrunc double %10 to float
  %12 = getelementptr inbounds %struct.ref_s, ptr %0, i64 0, i32 1
  store float %11, ptr %12, align 8, !tbaa !11
  store i16 4096, ptr %0, align 8, !tbaa !12
  br label %13

13:                                               ; preds = %5, %1, %8
  %14 = phi i32 [ 0, %8 ], [ %3, %1 ], [ -15, %5 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #10
  ret i32 %14
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: write, inaccessiblemem: none) uwtable
define internal noundef i32 @zrand(ptr noundef %0) #3 {
  %2 = load i64, ptr @zrand_state, align 8, !tbaa !5
  %3 = srem i64 %2, 127773
  %4 = mul nsw i64 %3, 16807
  %5 = sdiv i64 %2, 127773
  %6 = mul nsw i64 %5, -2836
  %7 = add nsw i64 %6, %4
  %8 = icmp slt i64 %7, 1
  %9 = add nsw i64 %7, 2147483647
  %10 = select i1 %8, i64 %9, i64 %7
  store i64 %10, ptr @zrand_state, align 8, !tbaa !5
  %11 = getelementptr inbounds %struct.ref_s, ptr %0, i64 1
  %12 = load ptr, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 2), align 8, !tbaa !20
  %13 = icmp ugt ptr %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  store i32 1, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 7), align 8, !tbaa !21
  br label %17

15:                                               ; preds = %1
  store ptr %11, ptr @o_stack, align 8, !tbaa !16
  %16 = getelementptr inbounds %struct.ref_s, ptr %0, i64 1, i32 1
  store i64 %10, ptr %16, align 8, !tbaa !11
  store i16 2816, ptr %11, align 8, !tbaa !12
  br label %17

17:                                               ; preds = %15, %14
  %18 = phi i32 [ -16, %14 ], [ 0, %15 ]
  ret i32 %18
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: write, inaccessiblemem: none) uwtable
define internal noundef i32 @zrrand(ptr noundef %0) #3 {
  %2 = getelementptr inbounds %struct.ref_s, ptr %0, i64 1
  %3 = load ptr, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 2), align 8, !tbaa !20
  %4 = icmp ugt ptr %2, %3
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  store i32 1, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 7), align 8, !tbaa !21
  br label %9

6:                                                ; preds = %1
  store ptr %2, ptr @o_stack, align 8, !tbaa !16
  %7 = load i64, ptr @zrand_state, align 8, !tbaa !5
  %8 = getelementptr inbounds %struct.ref_s, ptr %0, i64 1, i32 1
  store i64 %7, ptr %8, align 8, !tbaa !11
  store i16 2816, ptr %2, align 8, !tbaa !12
  br label %9

9:                                                ; preds = %6, %5
  %10 = phi i32 [ -16, %5 ], [ 0, %6 ]
  ret i32 %10
}

; Function Attrs: nounwind uwtable
define internal i32 @zsin(ptr noundef %0) #2 {
  %2 = alloca float, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #10
  %3 = call i32 @num_params(ptr noundef %0, i32 noundef 1, ptr noundef nonnull %2) #10
  %4 = icmp slt i32 %3, 0
  br i1 %4, label %11, label %5

5:                                                ; preds = %1
  %6 = load float, ptr %2, align 4, !tbaa !9
  %7 = fpext float %6 to double
  %8 = call double @gs_sin_degrees(double noundef %7) #10
  %9 = fptrunc double %8 to float
  %10 = getelementptr inbounds %struct.ref_s, ptr %0, i64 0, i32 1
  store float %9, ptr %10, align 8, !tbaa !11
  store i16 4096, ptr %0, align 8, !tbaa !12
  br label %11

11:                                               ; preds = %1, %5
  %12 = phi i32 [ 0, %5 ], [ %3, %1 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #10
  ret i32 %12
}

; Function Attrs: nounwind uwtable
define internal i32 @zsqrt(ptr noundef %0) #2 {
  %2 = alloca float, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #10
  %3 = call i32 @num_params(ptr noundef %0, i32 noundef 1, ptr noundef nonnull %2) #10
  %4 = icmp slt i32 %3, 0
  br i1 %4, label %11, label %5

5:                                                ; preds = %1
  %6 = load float, ptr %2, align 4, !tbaa !9
  %7 = fcmp olt float %6, 0.000000e+00
  br i1 %7, label %11, label %8

8:                                                ; preds = %5
  %9 = call float @sqrtf(float noundef %6) #7
  %10 = getelementptr inbounds %struct.ref_s, ptr %0, i64 0, i32 1
  store float %9, ptr %10, align 8, !tbaa !11
  store i16 4096, ptr %0, align 8, !tbaa !12
  br label %11

11:                                               ; preds = %5, %1, %8
  %12 = phi i32 [ 0, %8 ], [ %3, %1 ], [ -15, %5 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #10
  ret i32 %12
}

; Function Attrs: nounwind uwtable
define internal i32 @zsrand(ptr noundef %0) #2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 1
  %3 = load i8, ptr %2, align 1, !tbaa !11
  %4 = icmp eq i8 %3, 11
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = tail call i32 @check_type_failed(ptr noundef %0) #10
  br label %22

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.ref_s, ptr %0, i64 0, i32 1
  %9 = load i64, ptr %8, align 8, !tbaa !11
  %10 = shl i64 %9, 32
  %11 = ashr exact i64 %10, 32
  %12 = icmp slt i64 %11, 1
  br i1 %12, label %13, label %16

13:                                               ; preds = %7
  %14 = srem i64 %11, 2147483646
  %15 = sub nsw i64 1, %14
  br label %18

16:                                               ; preds = %7
  %17 = tail call i64 @llvm.smin.i64(i64 %11, i64 2147483646)
  br label %18

18:                                               ; preds = %16, %13
  %19 = phi i64 [ %15, %13 ], [ %17, %16 ]
  store i64 %19, ptr @zrand_state, align 8, !tbaa !5
  %20 = load ptr, ptr @o_stack, align 8, !tbaa !16
  %21 = getelementptr inbounds %struct.ref_s, ptr %20, i64 -1
  store ptr %21, ptr @o_stack, align 8, !tbaa !16
  br label %22

22:                                               ; preds = %18, %5
  %23 = phi i32 [ 0, %18 ], [ %6, %5 ]
  ret i32 %23
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define internal void @zmath_init() #4 {
  store i64 1, ptr @zrand_state, align 8, !tbaa !5
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

declare i32 @num_params(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @acos(double noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @asin(double noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @atan2(double noundef, double noundef) local_unnamed_addr #7

declare double @gs_cos_degrees(double noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: write)
declare double @modf(double noundef, ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @pow(double noundef, double noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @log(double noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @log10(double noundef) local_unnamed_addr #7

declare double @gs_sin_degrees(double noundef) local_unnamed_addr #6

declare i32 @check_type_failed(ptr noundef) local_unnamed_addr #6

declare float @sqrtf(float) local_unnamed_addr

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #9

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: write, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nounwind willreturn memory(argmem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"long", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"float", !7, i64 0}
!11 = !{!7, !7, i64 0}
!12 = !{!13, !15, i64 0}
!13 = !{!"ref_s", !14, i64 0, !7, i64 8}
!14 = !{!"tas_s", !15, i64 0, !15, i64 2}
!15 = !{!"short", !7, i64 0}
!16 = !{!17, !18, i64 0}
!17 = !{!"ref_stack_s", !18, i64 0, !18, i64 8, !18, i64 16, !13, i64 24, !19, i64 40, !19, i64 44, !13, i64 48, !19, i64 64, !19, i64 68, !19, i64 72, !19, i64 76, !19, i64 80, !13, i64 88, !19, i64 104, !19, i64 108, !19, i64 112, !18, i64 120}
!18 = !{!"any pointer", !7, i64 0}
!19 = !{!"int", !7, i64 0}
!20 = !{!17, !18, i64 16}
!21 = !{!17, !19, i64 64}
