; ModuleID = 'dfp.c'
source_filename = "dfp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.real_format = type { ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.decNumber = type { i32, i32, i8, [12 x i16] }
%struct.decContext = type { i32, i32, i32, i32, i32, i32, i8 }
%struct.real_value = type { i32, [3 x i64] }
%struct.decimal32 = type { [4 x i8] }
%struct.decimal64 = type { [8 x i8] }
%struct.decimal128 = type { [16 x i8] }

@decimal_quad_format = external constant %struct.real_format, align 8
@decimal_single_format = external constant %struct.real_format, align 8
@decimal_double_format = external constant %struct.real_format, align 8
@.str = private unnamed_addr constant [6 x i8] c"dfp.c\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@real_format_for_mode = external local_unnamed_addr global [7 x ptr], align 16
@.str.2 = private unnamed_addr constant [12 x i8] c"9.999999E96\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"9.999999999999999E384\00", align 1
@.str.4 = private unnamed_addr constant [41 x i8] c"9.999999999999999999999999999999999E6144\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"Infinity\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"snan\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"nan\00", align 1
@reltable.decimal_real_maxval = private unnamed_addr constant [3 x i32] [i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.2 to i64), i64 ptrtoint (ptr @reltable.decimal_real_maxval to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.3 to i64), i64 ptrtoint (ptr @reltable.decimal_real_maxval to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.4 to i64), i64 ptrtoint (ptr @reltable.decimal_real_maxval to i64)) to i32)], align 4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @decimal_real_from_string(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.decNumber, align 4
  %4 = alloca %struct.decContext, align 4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %3) #6
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %4) #6
  %5 = call ptr @decContextDefault(ptr noundef nonnull %4, i32 noundef 128) #7
  %6 = getelementptr inbounds %struct.decContext, ptr %4, i64 0, i32 4
  store i32 0, ptr %6, align 4, !tbaa !5
  %7 = call ptr @decNumberFromString(ptr noundef nonnull %3, ptr noundef %1, ptr noundef nonnull %4) #7
  call fastcc void @decimal_from_decnumber(ptr noundef %0, ptr noundef nonnull %3, ptr noundef nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %4) #6
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %3) #6
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare ptr @decContextDefault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @decNumberFromString(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @decimal_from_decnumber(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, i8 0, i64 32, i1 false)
  store i32 1, ptr %0, align 8
  %4 = getelementptr inbounds %struct.decNumber, ptr %1, i64 0, i32 2
  %5 = load i8, ptr %4, align 4, !tbaa !10
  %6 = and i8 %5, 48
  %7 = icmp eq i8 %6, 0
  %8 = select i1 %7, i32 1, i32 3
  store i32 %8, ptr %0, align 8
  %9 = load i8, ptr %4, align 4, !tbaa !10
  %10 = and i8 %9, 64
  %11 = icmp eq i8 %10, 0
  %12 = select i1 %11, i32 %8, i32 2
  store i32 %12, ptr %0, align 8
  %13 = getelementptr inbounds %struct.decContext, ptr %2, i64 0, i32 5
  %14 = load i32, ptr %13, align 4, !tbaa !12
  %15 = and i32 %14, 512
  %16 = icmp eq i32 %15, 0
  %17 = select i1 %16, i32 %12, i32 2
  store i32 %17, ptr %0, align 8
  %18 = select i1 %16, i32 %12, i32 2
  %19 = load i8, ptr %4, align 4, !tbaa !10
  %20 = or disjoint i32 %18, 8
  %21 = icmp slt i8 %19, 0
  %22 = select i1 %21, i32 %20, i32 %18
  %23 = or disjoint i32 %22, 4
  store i32 %23, ptr %0, align 8
  %24 = and i32 %22, 3
  %25 = icmp eq i32 %24, 1
  br i1 %25, label %26, label %31

26:                                               ; preds = %3
  %27 = tail call ptr @decContextDefault(ptr noundef nonnull %2, i32 noundef 128) #7
  %28 = getelementptr inbounds %struct.decContext, ptr %2, i64 0, i32 4
  store i32 0, ptr %28, align 4, !tbaa !5
  %29 = getelementptr inbounds %struct.real_value, ptr %0, i64 0, i32 1
  %30 = tail call ptr @decimal128FromNumber(ptr noundef nonnull %29, ptr noundef nonnull %1, ptr noundef nonnull %2) #7
  br label %31

31:                                               ; preds = %3, %26
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @encode_decimal32(ptr nocapture noundef readnone %0, ptr nocapture noundef writeonly %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.decNumber, align 4
  %5 = alloca %struct.decimal32, align 4
  %6 = alloca %struct.decContext, align 4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %4) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #6
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %6) #6
  %7 = call ptr @decContextDefault(ptr noundef nonnull %6, i32 noundef 128) #7
  %8 = getelementptr inbounds %struct.decContext, ptr %6, i64 0, i32 4
  store i32 0, ptr %8, align 4, !tbaa !5
  call fastcc void @decimal_to_decnumber(ptr noundef %2, ptr noundef nonnull %4) #8
  %9 = call ptr @decimal32FromNumber(ptr noundef nonnull %5, ptr noundef nonnull %4, ptr noundef nonnull %6) #7
  %10 = load i32, ptr %5, align 4
  %11 = sext i32 %10 to i64
  store i64 %11, ptr %1, align 8, !tbaa !13
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %6) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #6
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %4) #6
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @decimal_to_decnumber(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca %struct.decContext, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %3) #6
  %4 = call ptr @decContextDefault(ptr noundef nonnull %3, i32 noundef 128) #7
  %5 = getelementptr inbounds %struct.decContext, ptr %3, i64 0, i32 4
  store i32 0, ptr %5, align 4, !tbaa !5
  %6 = load i32, ptr %0, align 8
  %7 = and i32 %6, 3
  switch i32 %7, label %26 [
    i32 0, label %8
    i32 2, label %10
    i32 3, label %12
    i32 1, label %19
  ]

8:                                                ; preds = %2
  %9 = call ptr @decNumberZero(ptr noundef %1) #7
  br label %27

10:                                               ; preds = %2
  %11 = call ptr @decNumberFromString(ptr noundef %1, ptr noundef nonnull @.str.5, ptr noundef nonnull %3) #7
  br label %27

12:                                               ; preds = %2
  %13 = and i32 %6, 16
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %12
  %16 = call ptr @decNumberFromString(ptr noundef %1, ptr noundef nonnull @.str.6, ptr noundef nonnull %3) #7
  br label %27

17:                                               ; preds = %12
  %18 = call ptr @decNumberFromString(ptr noundef %1, ptr noundef nonnull @.str.7, ptr noundef nonnull %3) #7
  br label %27

19:                                               ; preds = %2
  %20 = and i32 %6, 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %19
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 115, ptr noundef nonnull @.str.1) #7
  br label %23

23:                                               ; preds = %19, %22
  %24 = getelementptr inbounds %struct.real_value, ptr %0, i64 0, i32 1
  %25 = call ptr @decimal128ToNumber(ptr noundef nonnull %24, ptr noundef %1) #7
  br label %27

26:                                               ; preds = %2
  unreachable

27:                                               ; preds = %15, %17, %23, %10, %8
  %28 = load i32, ptr %0, align 8
  %29 = lshr i32 %28, 3
  %30 = and i32 %29, 1
  %31 = getelementptr inbounds %struct.decNumber, ptr %1, i64 0, i32 2
  %32 = load i8, ptr %31, align 4, !tbaa !10
  %33 = lshr i8 %32, 7
  %34 = zext nneg i8 %33 to i32
  %35 = icmp eq i32 %30, %34
  br i1 %35, label %38, label %36

36:                                               ; preds = %27
  %37 = xor i8 %32, -128
  store i8 %37, ptr %31, align 4, !tbaa !10
  br label %38

38:                                               ; preds = %36, %27
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %3) #6
  ret void
}

; Function Attrs: optsize
declare ptr @decimal32FromNumber(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @decode_decimal32(ptr nocapture noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 {
  %4 = alloca %struct.decNumber, align 4
  %5 = alloca %struct.decimal32, align 4
  %6 = alloca %struct.decContext, align 4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %4) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #6
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %6) #6
  %7 = call ptr @decContextDefault(ptr noundef nonnull %6, i32 noundef 128) #7
  %8 = getelementptr inbounds %struct.decContext, ptr %6, i64 0, i32 4
  store i32 0, ptr %8, align 4, !tbaa !5
  %9 = load i64, ptr %2, align 8, !tbaa !13
  %10 = trunc i64 %9 to i32
  store i32 %10, ptr %5, align 4
  %11 = call ptr @decimal32ToNumber(ptr noundef nonnull %5, ptr noundef nonnull %4) #7
  call fastcc void @decimal_from_decnumber(ptr noundef %1, ptr noundef nonnull %4, ptr noundef nonnull %6) #8
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %6) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #6
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %4) #6
  ret void
}

; Function Attrs: optsize
declare ptr @decimal32ToNumber(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @encode_decimal64(ptr nocapture noundef readnone %0, ptr nocapture noundef writeonly %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.decNumber, align 4
  %5 = alloca %struct.decimal64, align 4
  %6 = alloca %struct.decContext, align 4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %4) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #6
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %6) #6
  %7 = call ptr @decContextDefault(ptr noundef nonnull %6, i32 noundef 128) #7
  %8 = getelementptr inbounds %struct.decContext, ptr %6, i64 0, i32 4
  store i32 0, ptr %8, align 4, !tbaa !5
  call fastcc void @decimal_to_decnumber(ptr noundef %2, ptr noundef nonnull %4) #8
  %9 = call ptr @decimal64FromNumber(ptr noundef nonnull %5, ptr noundef nonnull %4, ptr noundef nonnull %6) #7
  %10 = load i32, ptr %5, align 4
  %11 = sext i32 %10 to i64
  store i64 %11, ptr %1, align 8, !tbaa !13
  %12 = getelementptr inbounds [8 x i8], ptr %5, i64 0, i64 4
  %13 = load i32, ptr %12, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i64, ptr %1, i64 1
  store i64 %14, ptr %15, align 8, !tbaa !13
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %6) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #6
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %4) #6
  ret void
}

; Function Attrs: optsize
declare ptr @decimal64FromNumber(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @decode_decimal64(ptr nocapture noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 {
  %4 = alloca %struct.decNumber, align 4
  %5 = alloca %struct.decimal64, align 8
  %6 = alloca %struct.decContext, align 4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %4) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #6
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %6) #6
  %7 = call ptr @decContextDefault(ptr noundef nonnull %6, i32 noundef 128) #7
  %8 = getelementptr inbounds %struct.decContext, ptr %6, i64 0, i32 4
  store i32 0, ptr %8, align 4, !tbaa !5
  %9 = load <2 x i64>, ptr %2, align 8, !tbaa !13
  %10 = trunc <2 x i64> %9 to <2 x i32>
  store <2 x i32> %10, ptr %5, align 8
  %11 = call ptr @decimal64ToNumber(ptr noundef nonnull %5, ptr noundef nonnull %4) #7
  call fastcc void @decimal_from_decnumber(ptr noundef %1, ptr noundef nonnull %4, ptr noundef nonnull %6) #8
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %6) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #6
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %4) #6
  ret void
}

; Function Attrs: optsize
declare ptr @decimal64ToNumber(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @encode_decimal128(ptr nocapture noundef readnone %0, ptr nocapture noundef writeonly %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.decNumber, align 4
  %5 = alloca %struct.decContext, align 4
  %6 = alloca %struct.decimal128, align 4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %4) #6
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %5) #6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #6
  %7 = call ptr @decContextDefault(ptr noundef nonnull %5, i32 noundef 128) #7
  %8 = getelementptr inbounds %struct.decContext, ptr %5, i64 0, i32 4
  store i32 0, ptr %8, align 4, !tbaa !5
  call fastcc void @decimal_to_decnumber(ptr noundef %2, ptr noundef nonnull %4) #8
  %9 = call ptr @decimal128FromNumber(ptr noundef nonnull %6, ptr noundef nonnull %4, ptr noundef nonnull %5) #7
  %10 = load i32, ptr %6, align 4
  %11 = sext i32 %10 to i64
  store i64 %11, ptr %1, align 8, !tbaa !13
  %12 = getelementptr inbounds [16 x i8], ptr %6, i64 0, i64 4
  %13 = load i32, ptr %12, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i64, ptr %1, i64 1
  store i64 %14, ptr %15, align 8, !tbaa !13
  %16 = getelementptr inbounds [16 x i8], ptr %6, i64 0, i64 8
  %17 = load i32, ptr %16, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i64, ptr %1, i64 2
  store i64 %18, ptr %19, align 8, !tbaa !13
  %20 = getelementptr inbounds [16 x i8], ptr %6, i64 0, i64 12
  %21 = load i32, ptr %20, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i64, ptr %1, i64 3
  store i64 %22, ptr %23, align 8, !tbaa !13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #6
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %5) #6
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %4) #6
  ret void
}

; Function Attrs: optsize
declare ptr @decimal128FromNumber(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @decode_decimal128(ptr nocapture noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 {
  %4 = alloca %struct.decNumber, align 4
  %5 = alloca %struct.decimal128, align 16
  %6 = alloca %struct.decContext, align 4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %4) #6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #6
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %6) #6
  %7 = call ptr @decContextDefault(ptr noundef nonnull %6, i32 noundef 128) #7
  %8 = getelementptr inbounds %struct.decContext, ptr %6, i64 0, i32 4
  store i32 0, ptr %8, align 4, !tbaa !5
  %9 = load <4 x i64>, ptr %2, align 8, !tbaa !13
  %10 = trunc <4 x i64> %9 to <4 x i32>
  store <4 x i32> %10, ptr %5, align 16
  %11 = call ptr @decimal128ToNumber(ptr noundef nonnull %5, ptr noundef nonnull %4) #7
  call fastcc void @decimal_from_decnumber(ptr noundef %1, ptr noundef nonnull %4, ptr noundef nonnull %6) #8
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %6) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #6
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %4) #6
  ret void
}

; Function Attrs: optsize
declare ptr @decimal128ToNumber(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @decimal_do_compare(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.decContext, align 4
  %5 = alloca %struct.decNumber, align 4
  %6 = alloca %struct.decNumber, align 4
  %7 = alloca %struct.decNumber, align 4
  %8 = alloca %struct.real_value, align 8
  %9 = alloca %struct.real_value, align 8
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %4) #6
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %5) #6
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %6) #6
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %7) #6
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %8) #6
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %9) #6
  %10 = load i32, ptr %0, align 8
  %11 = and i32 %10, 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  call fastcc void @decimal_from_binary(ptr noundef nonnull %8, ptr noundef nonnull %0) #8
  br label %14

14:                                               ; preds = %13, %3
  %15 = phi ptr [ %0, %3 ], [ %8, %13 ]
  %16 = load i32, ptr %1, align 8
  %17 = and i32 %16, 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %14
  call fastcc void @decimal_from_binary(ptr noundef nonnull %9, ptr noundef nonnull %1) #8
  br label %20

20:                                               ; preds = %19, %14
  %21 = phi ptr [ %1, %14 ], [ %9, %19 ]
  %22 = call ptr @decContextDefault(ptr noundef nonnull %4, i32 noundef 128) #7
  %23 = getelementptr inbounds %struct.decContext, ptr %4, i64 0, i32 4
  store i32 0, ptr %23, align 4, !tbaa !5
  %24 = getelementptr inbounds %struct.real_value, ptr %15, i64 0, i32 1
  %25 = call ptr @decimal128ToNumber(ptr noundef nonnull %24, ptr noundef nonnull %6) #7
  %26 = getelementptr inbounds %struct.real_value, ptr %21, i64 0, i32 1
  %27 = call ptr @decimal128ToNumber(ptr noundef nonnull %26, ptr noundef nonnull %7) #7
  %28 = call ptr @decNumberCompare(ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %4) #7
  %29 = getelementptr inbounds %struct.decNumber, ptr %5, i64 0, i32 2
  %30 = load i8, ptr %29, align 4, !tbaa !10
  %31 = zext i8 %30 to i32
  %32 = and i32 %31, 48
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %47

34:                                               ; preds = %20
  %35 = getelementptr inbounds %struct.decNumber, ptr %5, i64 0, i32 3
  %36 = load i16, ptr %35, align 2, !tbaa !15
  %37 = icmp eq i16 %36, 0
  %38 = load i32, ptr %5, align 4
  %39 = icmp eq i32 %38, 1
  %40 = select i1 %37, i1 %39, i1 false
  %41 = and i32 %31, 64
  %42 = icmp eq i32 %41, 0
  %43 = and i1 %42, %40
  br i1 %43, label %47, label %44

44:                                               ; preds = %34
  %45 = icmp sgt i8 %30, -1
  %46 = select i1 %45, i32 1, i32 -1
  br label %47

47:                                               ; preds = %44, %34, %20
  %48 = phi i32 [ %2, %20 ], [ 0, %34 ], [ %46, %44 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %9) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %8) #6
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %7) #6
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %6) #6
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %5) #6
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %4) #6
  ret i32 %48
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @decimal_from_binary(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca [256 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %3) #6
  call void @real_to_decimal(ptr noundef nonnull %3, ptr noundef %1, i64 noundef 256, i64 noundef 0, i32 noundef 1) #7
  call void @decimal_real_from_string(ptr noundef %0, ptr noundef nonnull %3) #8
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %3) #6
  ret void
}

; Function Attrs: optsize
declare ptr @decNumberCompare(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @decimal_round_for_format(ptr noundef readnone %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.decNumber, align 4
  %4 = alloca %struct.decContext, align 4
  %5 = alloca %struct.decimal32, align 1
  %6 = alloca %struct.decimal64, align 1
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %3) #6
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %4) #6
  %7 = load i32, ptr %1, align 8
  %8 = and i32 %7, 3
  %9 = icmp eq i32 %8, 1
  br i1 %9, label %10, label %30

10:                                               ; preds = %2
  %11 = call ptr @decContextDefault(ptr noundef nonnull %4, i32 noundef 128) #7
  %12 = getelementptr inbounds %struct.decContext, ptr %4, i64 0, i32 4
  store i32 0, ptr %12, align 4, !tbaa !5
  %13 = getelementptr inbounds %struct.real_value, ptr %1, i64 0, i32 1
  %14 = call ptr @decimal128ToNumber(ptr noundef nonnull %13, ptr noundef nonnull %3) #7
  %15 = icmp eq ptr %0, @decimal_quad_format
  br i1 %15, label %30, label %16

16:                                               ; preds = %10
  %17 = icmp eq ptr %0, @decimal_single_format
  br i1 %17, label %18, label %22

18:                                               ; preds = %16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #6
  %19 = call ptr @decContextDefault(ptr noundef nonnull %4, i32 noundef 32) #7
  store i32 0, ptr %12, align 4, !tbaa !5
  %20 = call ptr @decimal32FromNumber(ptr noundef nonnull %5, ptr noundef nonnull %3, ptr noundef nonnull %4) #7
  %21 = call ptr @decimal32ToNumber(ptr noundef nonnull %5, ptr noundef nonnull %3) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #6
  br label %29

22:                                               ; preds = %16
  %23 = icmp eq ptr %0, @decimal_double_format
  br i1 %23, label %24, label %28

24:                                               ; preds = %22
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #6
  %25 = call ptr @decContextDefault(ptr noundef nonnull %4, i32 noundef 64) #7
  store i32 0, ptr %12, align 4, !tbaa !5
  %26 = call ptr @decimal64FromNumber(ptr noundef nonnull %6, ptr noundef nonnull %3, ptr noundef nonnull %4) #7
  %27 = call ptr @decimal64ToNumber(ptr noundef nonnull %6, ptr noundef nonnull %3) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #6
  br label %29

28:                                               ; preds = %22
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 429, ptr noundef nonnull @.str.1) #7
  br label %29

29:                                               ; preds = %18, %28, %24
  call fastcc void @decimal_from_decnumber(ptr noundef nonnull %1, ptr noundef nonnull %3, ptr noundef nonnull %4) #8
  br label %30

30:                                               ; preds = %10, %2, %29
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %4) #6
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %3) #6
  ret void
}

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @decimal_real_convert(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = load i32, ptr %2, align 8
  %5 = and i32 %4, 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %16, label %7

7:                                                ; preds = %3
  %8 = add i32 %1, -38
  %9 = zext i32 %8 to i64
  %10 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !17
  %12 = getelementptr inbounds %struct.real_format, ptr %11, i64 0, i32 2
  %13 = load i32, ptr %12, align 8, !tbaa !19
  %14 = icmp eq i32 %13, 10
  br i1 %14, label %17, label %15

15:                                               ; preds = %7
  tail call fastcc void @decimal_to_binary(ptr noundef %0, ptr noundef nonnull %2, i32 noundef %1) #8
  br label %17

16:                                               ; preds = %3
  tail call fastcc void @decimal_from_binary(ptr noundef %0, ptr noundef nonnull %2) #8
  br label %17

17:                                               ; preds = %15, %16, %7
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @decimal_to_binary(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = alloca [256 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %4) #6
  %5 = getelementptr inbounds %struct.real_value, ptr %1, i64 0, i32 1
  %6 = call ptr @decimal128ToString(ptr noundef nonnull %5, ptr noundef nonnull %4) #7
  call void @real_from_string3(ptr noundef %0, ptr noundef nonnull %4, i32 noundef %2) #7
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %4) #6
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @decimal_real_to_decimal(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = icmp ugt i64 %2, 23
  br i1 %6, label %8, label %7

7:                                                ; preds = %5
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 467, ptr noundef nonnull @.str.1) #7
  br label %8

8:                                                ; preds = %5, %7
  %9 = getelementptr inbounds %struct.real_value, ptr %1, i64 0, i32 1
  %10 = tail call ptr @decimal128ToString(ptr noundef nonnull %9, ptr noundef %0) #7
  ret void
}

; Function Attrs: optsize
declare ptr @decimal128ToString(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @decimal_do_fix_trunc(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.decNumber, align 4
  %4 = alloca %struct.decNumber, align 4
  %5 = alloca %struct.decContext, align 4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %3) #6
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %4) #6
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %5) #6
  %6 = call ptr @decContextDefault(ptr noundef nonnull %5, i32 noundef 128) #7
  %7 = getelementptr inbounds %struct.decContext, ptr %5, i64 0, i32 4
  store i32 0, ptr %7, align 4, !tbaa !5
  %8 = getelementptr inbounds %struct.decContext, ptr %5, i64 0, i32 3
  store i32 5, ptr %8, align 4, !tbaa !21
  %9 = getelementptr inbounds %struct.real_value, ptr %1, i64 0, i32 1
  %10 = call ptr @decimal128ToNumber(ptr noundef nonnull %9, ptr noundef nonnull %4) #7
  %11 = call ptr @decNumberToIntegralValue(ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %5) #7
  call fastcc void @decimal_from_decnumber(ptr noundef %0, ptr noundef nonnull %3, ptr noundef nonnull %5) #8
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %5) #6
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %4) #6
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %3) #6
  ret void
}

; Function Attrs: optsize
declare ptr @decNumberToIntegralValue(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i64 @decimal_real_to_integer(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.decContext, align 4
  %3 = alloca %struct.decNumber, align 4
  %4 = alloca %struct.decNumber, align 4
  %5 = alloca %struct.decNumber, align 4
  %6 = alloca %struct.real_value, align 8
  %7 = alloca [256 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %2) #6
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %3) #6
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %4) #6
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %5) #6
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #6
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %7) #6
  %8 = call ptr @decContextDefault(ptr noundef nonnull %2, i32 noundef 128) #7
  %9 = getelementptr inbounds %struct.decContext, ptr %2, i64 0, i32 4
  store i32 0, ptr %9, align 4, !tbaa !5
  %10 = getelementptr inbounds %struct.decContext, ptr %2, i64 0, i32 3
  store i32 5, ptr %10, align 4, !tbaa !21
  %11 = getelementptr inbounds %struct.real_value, ptr %0, i64 0, i32 1
  %12 = call ptr @decimal128ToNumber(ptr noundef nonnull %11, ptr noundef nonnull %3) #7
  %13 = call ptr @decNumberToIntegralValue(ptr noundef nonnull %4, ptr noundef nonnull %3, ptr noundef nonnull %2) #7
  %14 = call ptr @decNumberZero(ptr noundef nonnull %5) #7
  %15 = call ptr @decNumberRescale(ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %2) #7
  %16 = call ptr @decNumberToString(ptr noundef nonnull %3, ptr noundef nonnull %7) #7
  %17 = call i32 @real_from_string(ptr noundef nonnull %6, ptr noundef nonnull %7) #7
  %18 = call i64 @real_to_integer(ptr noundef nonnull %6) #7
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %7) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #6
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %5) #6
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %4) #6
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %3) #6
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %2) #6
  ret i64 %18
}

; Function Attrs: optsize
declare ptr @decNumberZero(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @decNumberRescale(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @decNumberToString(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @real_from_string(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i64 @real_to_integer(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @decimal_real_to_integer2(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.decContext, align 4
  %5 = alloca %struct.decNumber, align 4
  %6 = alloca %struct.decNumber, align 4
  %7 = alloca %struct.decNumber, align 4
  %8 = alloca %struct.real_value, align 8
  %9 = alloca [256 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %4) #6
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %5) #6
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %6) #6
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %7) #6
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %8) #6
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %9) #6
  %10 = call ptr @decContextDefault(ptr noundef nonnull %4, i32 noundef 128) #7
  %11 = getelementptr inbounds %struct.decContext, ptr %4, i64 0, i32 4
  store i32 0, ptr %11, align 4, !tbaa !5
  %12 = getelementptr inbounds %struct.decContext, ptr %4, i64 0, i32 3
  store i32 5, ptr %12, align 4, !tbaa !21
  %13 = getelementptr inbounds %struct.real_value, ptr %2, i64 0, i32 1
  %14 = call ptr @decimal128ToNumber(ptr noundef nonnull %13, ptr noundef nonnull %5) #7
  %15 = call ptr @decNumberToIntegralValue(ptr noundef nonnull %6, ptr noundef nonnull %5, ptr noundef nonnull %4) #7
  %16 = call ptr @decNumberZero(ptr noundef nonnull %7) #7
  %17 = call ptr @decNumberRescale(ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %4) #7
  %18 = call ptr @decNumberToString(ptr noundef nonnull %5, ptr noundef nonnull %9) #7
  %19 = call i32 @real_from_string(ptr noundef nonnull %8, ptr noundef nonnull %9) #7
  call void @real_to_integer2(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %8) #7
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %9) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %8) #6
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %7) #6
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %6) #6
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %5) #6
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %4) #6
  ret void
}

; Function Attrs: optsize
declare void @real_to_integer2(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @decimal_real_arithmetic(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = alloca %struct.real_value, align 8
  %6 = alloca %struct.real_value, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #6
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #6
  %7 = load i32, ptr %2, align 8
  %8 = and i32 %7, 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %4
  call fastcc void @decimal_from_binary(ptr noundef nonnull %5, ptr noundef nonnull %2) #8
  br label %11

11:                                               ; preds = %10, %4
  %12 = phi ptr [ %2, %4 ], [ %5, %10 ]
  %13 = icmp eq ptr %3, null
  br i1 %13, label %19, label %14

14:                                               ; preds = %11
  %15 = load i32, ptr %3, align 8
  %16 = and i32 %15, 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %14
  call fastcc void @decimal_from_binary(ptr noundef nonnull %6, ptr noundef nonnull %3) #8
  br label %19

19:                                               ; preds = %18, %14, %11
  %20 = phi ptr [ %3, %14 ], [ %6, %18 ], [ null, %11 ]
  switch i32 %1, label %62 [
    i32 63, label %21
    i32 64, label %23
    i32 65, label %25
    i32 75, label %27
    i32 80, label %29
    i32 81, label %39
    i32 79, label %49
    i32 82, label %55
    i32 77, label %61
  ]

21:                                               ; preds = %19
  %22 = call fastcc zeroext i8 @decimal_do_add(ptr noundef %0, ptr noundef nonnull %12, ptr noundef %20, i32 noundef 0) #8, !range !22
  br label %63

23:                                               ; preds = %19
  %24 = call fastcc zeroext i8 @decimal_do_add(ptr noundef %0, ptr noundef nonnull %12, ptr noundef %20, i32 noundef 1) #8, !range !22
  br label %63

25:                                               ; preds = %19
  %26 = call fastcc zeroext i8 @decimal_do_multiply(ptr noundef %0, ptr noundef nonnull %12, ptr noundef %20) #8, !range !22
  br label %63

27:                                               ; preds = %19
  %28 = call fastcc zeroext i8 @decimal_do_divide(ptr noundef %0, ptr noundef nonnull %12, ptr noundef %20) #8, !range !22
  br label %63

29:                                               ; preds = %19
  %30 = load i32, ptr %20, align 8
  %31 = and i32 %30, 3
  %32 = icmp eq i32 %31, 3
  br i1 %32, label %33, label %34

33:                                               ; preds = %29
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %20, i64 32, i1 false), !tbaa.struct !23
  br label %63

34:                                               ; preds = %29
  %35 = call zeroext i8 @real_compare(i32 noundef 105, ptr noundef nonnull %12, ptr noundef nonnull %20) #7
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %34
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %12, i64 32, i1 false), !tbaa.struct !23
  br label %63

38:                                               ; preds = %34
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %20, i64 32, i1 false), !tbaa.struct !23
  br label %63

39:                                               ; preds = %19
  %40 = load i32, ptr %20, align 8
  %41 = and i32 %40, 3
  %42 = icmp eq i32 %41, 3
  br i1 %42, label %43, label %44

43:                                               ; preds = %39
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %20, i64 32, i1 false), !tbaa.struct !23
  br label %63

44:                                               ; preds = %39
  %45 = call zeroext i8 @real_compare(i32 noundef 97, ptr noundef nonnull %12, ptr noundef nonnull %20) #7
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %44
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %20, i64 32, i1 false), !tbaa.struct !23
  br label %63

48:                                               ; preds = %44
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %12, i64 32, i1 false), !tbaa.struct !23
  br label %63

49:                                               ; preds = %19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %12, i64 32, i1 false), !tbaa.struct !23
  %50 = getelementptr inbounds i8, ptr %0, i64 23
  %51 = load i8, ptr %50, align 1, !tbaa !25
  %52 = xor i8 %51, -128
  store i8 %52, ptr %50, align 1, !tbaa !25
  %53 = load i32, ptr %0, align 8
  %54 = xor i32 %53, 8
  store i32 %54, ptr %0, align 8
  br label %63

55:                                               ; preds = %19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %12, i64 32, i1 false), !tbaa.struct !23
  %56 = getelementptr inbounds i8, ptr %0, i64 23
  %57 = load i8, ptr %56, align 1, !tbaa !25
  %58 = and i8 %57, 127
  store i8 %58, ptr %56, align 1, !tbaa !25
  %59 = load i32, ptr %0, align 8
  %60 = and i32 %59, -9
  store i32 %60, ptr %0, align 8
  br label %63

61:                                               ; preds = %19
  call void @decimal_do_fix_trunc(ptr noundef %0, ptr noundef nonnull %12) #8
  br label %63

62:                                               ; preds = %19
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 691, ptr noundef nonnull @.str.1) #7
  br label %63

63:                                               ; preds = %43, %48, %47, %33, %38, %37, %62, %61, %55, %49, %27, %25, %23, %21
  %64 = phi i8 [ 0, %62 ], [ 0, %61 ], [ 0, %55 ], [ 0, %49 ], [ %28, %27 ], [ %26, %25 ], [ %24, %23 ], [ %22, %21 ], [ 0, %37 ], [ 0, %38 ], [ 0, %33 ], [ 0, %47 ], [ 0, %48 ], [ 0, %43 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #6
  ret i8 %64
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @decimal_do_add(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = alloca %struct.decNumber, align 4
  %6 = alloca %struct.decContext, align 4
  %7 = alloca %struct.decNumber, align 4
  %8 = alloca %struct.decNumber, align 4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %5) #6
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %6) #6
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %7) #6
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %8) #6
  call fastcc void @decimal_to_decnumber(ptr noundef %1, ptr noundef nonnull %7) #8
  call fastcc void @decimal_to_decnumber(ptr noundef %2, ptr noundef nonnull %8) #8
  %9 = call ptr @decContextDefault(ptr noundef nonnull %6, i32 noundef 128) #7
  %10 = getelementptr inbounds %struct.decContext, ptr %6, i64 0, i32 4
  store i32 0, ptr %10, align 4, !tbaa !5
  %11 = icmp eq i32 %3, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %4
  %13 = call ptr @decNumberSubtract(ptr noundef nonnull %5, ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %6) #7
  br label %16

14:                                               ; preds = %4
  %15 = call ptr @decNumberAdd(ptr noundef nonnull %5, ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %6) #7
  br label %16

16:                                               ; preds = %14, %12
  call fastcc void @decimal_from_decnumber(ptr noundef %0, ptr noundef nonnull %5, ptr noundef nonnull %6) #8
  %17 = getelementptr inbounds %struct.decContext, ptr %6, i64 0, i32 5
  %18 = load i32, ptr %17, align 4, !tbaa !12
  %19 = trunc i32 %18 to i8
  %20 = and i8 %19, 32
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %8) #6
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %7) #6
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %6) #6
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %5) #6
  ret i8 %20
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @decimal_do_multiply(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = alloca %struct.decContext, align 4
  %5 = alloca %struct.decNumber, align 4
  %6 = alloca %struct.decNumber, align 4
  %7 = alloca %struct.decNumber, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %4) #6
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %5) #6
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %6) #6
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %7) #6
  call fastcc void @decimal_to_decnumber(ptr noundef %1, ptr noundef nonnull %6) #8
  call fastcc void @decimal_to_decnumber(ptr noundef %2, ptr noundef nonnull %7) #8
  %8 = call ptr @decContextDefault(ptr noundef nonnull %4, i32 noundef 128) #7
  %9 = getelementptr inbounds %struct.decContext, ptr %4, i64 0, i32 4
  store i32 0, ptr %9, align 4, !tbaa !5
  %10 = call ptr @decNumberMultiply(ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %4) #7
  call fastcc void @decimal_from_decnumber(ptr noundef %0, ptr noundef nonnull %5, ptr noundef nonnull %4) #8
  %11 = getelementptr inbounds %struct.decContext, ptr %4, i64 0, i32 5
  %12 = load i32, ptr %11, align 4, !tbaa !12
  %13 = trunc i32 %12 to i8
  %14 = and i8 %13, 32
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %7) #6
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %6) #6
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %5) #6
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %4) #6
  ret i8 %14
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @decimal_do_divide(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = alloca %struct.decContext, align 4
  %5 = alloca %struct.decNumber, align 4
  %6 = alloca %struct.decNumber, align 4
  %7 = alloca %struct.decNumber, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %4) #6
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %5) #6
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %6) #6
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %7) #6
  call fastcc void @decimal_to_decnumber(ptr noundef %1, ptr noundef nonnull %6) #8
  call fastcc void @decimal_to_decnumber(ptr noundef %2, ptr noundef nonnull %7) #8
  %8 = call ptr @decContextDefault(ptr noundef nonnull %4, i32 noundef 128) #7
  %9 = getelementptr inbounds %struct.decContext, ptr %4, i64 0, i32 4
  store i32 0, ptr %9, align 4, !tbaa !5
  %10 = call ptr @decNumberDivide(ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %4) #7
  call fastcc void @decimal_from_decnumber(ptr noundef %0, ptr noundef nonnull %5, ptr noundef nonnull %4) #8
  %11 = getelementptr inbounds %struct.decContext, ptr %4, i64 0, i32 5
  %12 = load i32, ptr %11, align 4, !tbaa !12
  %13 = trunc i32 %12 to i8
  %14 = and i8 %13, 32
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %7) #6
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %6) #6
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %5) #6
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %4) #6
  ret i8 %14
}

; Function Attrs: optsize
declare zeroext i8 @real_compare(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @decimal_real_maxval(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = add i32 %2, -42
  %5 = icmp ult i32 %4, 3
  br i1 %5, label %7, label %6

6:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 718, ptr noundef nonnull @.str.1) #7
  unreachable

7:                                                ; preds = %3
  %8 = zext nneg i32 %4 to i64
  %9 = shl i64 %8, 2
  %10 = call ptr @llvm.load.relative.i64(ptr @reltable.decimal_real_maxval, i64 %9)
  tail call void @decimal_real_from_string(ptr noundef %0, ptr noundef nonnull %10) #8
  %11 = icmp eq i32 %1, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %7
  %13 = getelementptr inbounds i8, ptr %0, i64 23
  %14 = load i8, ptr %13, align 1, !tbaa !25
  %15 = or i8 %14, -128
  store i8 %15, ptr %13, align 1, !tbaa !25
  br label %16

16:                                               ; preds = %12, %7
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: optsize
declare void @real_to_decimal(ptr noundef, ptr noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @real_from_string3(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @decNumberSubtract(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @decNumberAdd(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @decNumberMultiply(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @decNumberDivide(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @llvm.load.relative.i64(ptr, i64) #5

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #6 = { nounwind }
attributes #7 = { nounwind optsize }
attributes #8 = { optsize }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !7, i64 16}
!6 = !{!"", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20, !8, i64 24}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!11, !8, i64 8}
!11 = !{!"", !7, i64 0, !7, i64 4, !8, i64 8, !8, i64 10}
!12 = !{!6, !7, i64 20}
!13 = !{!14, !14, i64 0}
!14 = !{!"long", !8, i64 0}
!15 = !{!16, !16, i64 0}
!16 = !{!"short", !8, i64 0}
!17 = !{!18, !18, i64 0}
!18 = !{!"any pointer", !8, i64 0}
!19 = !{!20, !7, i64 16}
!20 = !{!"real_format", !18, i64 0, !18, i64 8, !7, i64 16, !7, i64 20, !7, i64 24, !7, i64 28, !7, i64 32, !7, i64 36, !7, i64 40, !8, i64 44, !8, i64 45, !8, i64 46, !8, i64 47, !8, i64 48, !8, i64 49, !8, i64 50, !8, i64 51}
!21 = !{!6, !7, i64 12}
!22 = !{i8 0, i8 33}
!23 = !{i64 0, i64 4, !24, i64 0, i64 4, !24, i64 0, i64 4, !24, i64 0, i64 4, !24, i64 0, i64 4, !24, i64 0, i64 4, !24, i64 8, i64 24, !25}
!24 = !{!7, !7, i64 0}
!25 = !{!8, !8, i64 0}
