; ModuleID = 'decNumber.c'
source_filename = "decNumber.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.decNumber = type { i32, i32, i8, [1 x i16] }
%struct.decContext = type { i32, i32, i32, i32, i32, i32, i8 }

@d2utable = dso_local local_unnamed_addr constant [50 x i8] c"\00\01\01\01\02\02\02\03\03\03\04\04\04\05\05\05\06\06\06\07\07\07\08\08\08\09\09\09\0A\0A\0A\0B\0B\0B\0C\0C\0C\0D\0D\0D\0E\0E\0E\0F\0F\0F\10\10\10\11", align 16
@DECPOWERS = external local_unnamed_addr constant [10 x i32], align 16
@.str = private unnamed_addr constant [9 x i8] c"infinity\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"INFINITY\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"inf\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"INF\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"+Normal\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"-Normal\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"+Zero\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"-Zero\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"+Subnormal\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"-Subnormal\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"+Infinity\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"-Infinity\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"NaN\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"sNaN\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"Invalid\00", align 1
@.str.15 = private unnamed_addr constant [15 x i8] c"decNumber 3.61\00", align 1
@LNnn = dso_local local_unnamed_addr constant [90 x i16] [i16 9016, i16 8652, i16 8316, i16 8008, i16 7724, i16 7456, i16 7208, i16 6972, i16 6748, i16 6540, i16 6340, i16 6148, i16 5968, i16 5792, i16 5628, i16 5464, i16 5312, i16 5164, i16 5020, i16 4884, i16 4748, i16 4620, i16 4496, i16 4376, i16 4256, i16 4144, i16 4032, i16 -26303, i16 -27355, i16 -28379, i16 -29379, i16 -30355, i16 -31307, i16 -32239, i16 32389, i16 31501, i16 30629, i16 29777, i16 28945, i16 28129, i16 27329, i16 26545, i16 25777, i16 25021, i16 24281, i16 23553, i16 22837, i16 22137, i16 21445, i16 20769, i16 20101, i16 19445, i16 18801, i16 18165, i16 17541, i16 16925, i16 16321, i16 15721, i16 15133, i16 14553, i16 13985, i16 13421, i16 12865, i16 12317, i16 11777, i16 11241, i16 10717, i16 10197, i16 9685, i16 9177, i16 8677, i16 8185, i16 7697, i16 7213, i16 6737, i16 6269, i16 5801, i16 5341, i16 4889, i16 4437, i16 -25606, i16 -30002, i16 31186, i16 26886, i16 22630, i16 18418, i16 14254, i16 10130, i16 6046, i16 20055], align 16
@.str.17 = private unnamed_addr constant [6 x i8] c"inity\00", align 1
@multies = internal unnamed_addr constant [5 x i32] [i32 131073, i32 26215, i32 5243, i32 1049, i32 210], align 16
@.str.18 = private unnamed_addr constant [42 x i8] c"2.302585092994045684017991454684364207601\00", align 1
@.str.19 = private unnamed_addr constant [43 x i8] c"0.6931471805599453094172321214581765680755\00", align 1
@uarrone = internal global [1 x i16] [i16 1], align 2
@resmap = internal unnamed_addr constant [10 x i8] c"\00\03\03\03\03\05\07\07\07\07", align 1
@reltable.decNumberClassToString = private unnamed_addr constant [10 x i32] [i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.13 to i64), i64 ptrtoint (ptr @reltable.decNumberClassToString to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.12 to i64), i64 ptrtoint (ptr @reltable.decNumberClassToString to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.11 to i64), i64 ptrtoint (ptr @reltable.decNumberClassToString to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.5 to i64), i64 ptrtoint (ptr @reltable.decNumberClassToString to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.9 to i64), i64 ptrtoint (ptr @reltable.decNumberClassToString to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.7 to i64), i64 ptrtoint (ptr @reltable.decNumberClassToString to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.6 to i64), i64 ptrtoint (ptr @reltable.decNumberClassToString to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.8 to i64), i64 ptrtoint (ptr @reltable.decNumberClassToString to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.4 to i64), i64 ptrtoint (ptr @reltable.decNumberClassToString to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.10 to i64), i64 ptrtoint (ptr @reltable.decNumberClassToString to i64)) to i32)], align 4

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local noundef ptr @decNumberFromInt32(ptr noundef returned %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = tail call i32 @llvm.abs.i32(i32 %1, i1 false)
  %4 = tail call ptr @decNumberFromUInt32(ptr noundef %0, i32 noundef %3) #18
  %5 = icmp slt i32 %1, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 2
  store i8 -128, ptr %7, align 4, !tbaa !5
  br label %8

8:                                                ; preds = %6, %2
  ret ptr %0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local noundef ptr @decNumberFromUInt32(ptr noundef returned %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @decNumberZero(ptr noundef %0) #18
  %4 = icmp eq i32 %1, 0
  br i1 %4, label %22, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 3
  br label %7

7:                                                ; preds = %5, %7
  %8 = phi ptr [ %6, %5 ], [ %13, %7 ]
  %9 = phi i32 [ %1, %5 ], [ %12, %7 ]
  %10 = urem i32 %9, 1000
  %11 = trunc i32 %10 to i16
  store i16 %11, ptr %8, align 2, !tbaa !10
  %12 = udiv i32 %9, 1000
  %13 = getelementptr inbounds i16, ptr %8, i64 1
  %14 = icmp ult i32 %9, 1000
  br i1 %14, label %15, label %7, !llvm.loop !12

15:                                               ; preds = %7
  %16 = ptrtoint ptr %13 to i64
  %17 = ptrtoint ptr %6 to i64
  %18 = sub i64 %16, %17
  %19 = lshr exact i64 %18, 1
  %20 = trunc i64 %19 to i32
  %21 = tail call fastcc i32 @decGetDigits(ptr noundef nonnull %6, i32 noundef %20) #18
  store i32 %21, ptr %0, align 4, !tbaa !14
  br label %22

22:                                               ; preds = %2, %15
  ret ptr %0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local noundef ptr @decNumberZero(ptr noundef returned writeonly %0) local_unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 2
  store i8 0, ptr %2, align 4, !tbaa !5
  %3 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 1
  store i32 0, ptr %3, align 4, !tbaa !15
  store i32 1, ptr %0, align 4, !tbaa !14
  %4 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 3
  store i16 0, ptr %4, align 2, !tbaa !10
  ret ptr %0
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @decGetDigits(ptr noundef readonly %0, i32 noundef %1) unnamed_addr #3 {
  %3 = add nsw i32 %1, -1
  %4 = mul nsw i32 %3, 3
  %5 = add nsw i32 %4, 1
  %6 = icmp slt i32 %1, 1
  br i1 %6, label %27, label %7

7:                                                ; preds = %2
  %8 = zext nneg i32 %3 to i64
  %9 = getelementptr inbounds i16, ptr %0, i64 %8
  br label %10

10:                                               ; preds = %7, %17
  %11 = phi i32 [ %18, %17 ], [ %5, %7 ]
  %12 = phi ptr [ %19, %17 ], [ %9, %7 ]
  %13 = load i16, ptr %12, align 2, !tbaa !10
  %14 = icmp eq i16 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %10
  %16 = icmp eq i32 %11, 1
  br i1 %16, label %27, label %17

17:                                               ; preds = %15
  %18 = add nsw i32 %11, -3
  %19 = getelementptr inbounds i16, ptr %12, i64 -1
  %20 = icmp ult ptr %19, %0
  br i1 %20, label %27, label %10, !llvm.loop !16

21:                                               ; preds = %10
  %22 = icmp ult i16 %13, 10
  br i1 %22, label %27, label %23

23:                                               ; preds = %21
  %24 = icmp ult i16 %13, 100
  %25 = select i1 %24, i32 1, i32 2
  %26 = add nsw i32 %25, %11
  br label %27

27:                                               ; preds = %17, %15, %2, %23, %21
  %28 = phi i32 [ %11, %21 ], [ %26, %23 ], [ %5, %2 ], [ %18, %17 ], [ 1, %15 ]
  ret i32 %28
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @decNumberToInt32(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #4 {
  %3 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 2
  %4 = load i8, ptr %3, align 4, !tbaa !5
  %5 = and i8 %4, 112
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %56

7:                                                ; preds = %2
  %8 = load i32, ptr %0, align 4, !tbaa !14
  %9 = icmp sgt i32 %8, 10
  br i1 %9, label %56, label %10

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 1
  %12 = load i32, ptr %11, align 4, !tbaa !15
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %56

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 3
  %16 = load i16, ptr %15, align 2, !tbaa !10
  %17 = udiv i16 %16, 10
  %18 = zext nneg i16 %17 to i32
  %19 = urem i16 %16, 10
  %20 = zext nneg i16 %19 to i32
  %21 = icmp sgt i32 %8, 3
  br i1 %21, label %22, label %49

22:                                               ; preds = %14
  %23 = getelementptr inbounds %struct.decNumber, ptr %0, i64 1
  %24 = zext nneg i32 %8 to i64
  br label %25

25:                                               ; preds = %22, %25
  %26 = phi i64 [ 3, %22 ], [ %37, %25 ]
  %27 = phi i32 [ %18, %22 ], [ %35, %25 ]
  %28 = phi ptr [ %23, %22 ], [ %36, %25 ]
  %29 = load i16, ptr %28, align 2, !tbaa !10
  %30 = zext i16 %29 to i32
  %31 = add nsw i64 %26, -1
  %32 = getelementptr inbounds [10 x i32], ptr @DECPOWERS, i64 0, i64 %31
  %33 = load i32, ptr %32, align 4, !tbaa !17
  %34 = mul i32 %33, %30
  %35 = add i32 %34, %27
  %36 = getelementptr inbounds i16, ptr %28, i64 1
  %37 = add nuw nsw i64 %26, 3
  %38 = icmp ult i64 %37, %24
  br i1 %38, label %25, label %39, !llvm.loop !18

39:                                               ; preds = %25
  %40 = icmp ugt i32 %35, 214748364
  br i1 %40, label %56, label %41

41:                                               ; preds = %39
  %42 = icmp eq i32 %35, 214748364
  %43 = icmp ugt i16 %19, 7
  %44 = select i1 %42, i1 %43, i1 false
  br i1 %44, label %45, label %49

45:                                               ; preds = %41
  %46 = icmp sgt i8 %4, -1
  %47 = icmp ne i16 %19, 8
  %48 = select i1 %46, i1 true, i1 %47
  br i1 %48, label %56, label %58

49:                                               ; preds = %14, %41
  %50 = phi i32 [ %35, %41 ], [ %18, %14 ]
  %51 = mul nuw nsw i32 %50, 10
  %52 = add nuw i32 %51, %20
  %53 = sub nsw i32 0, %52
  %54 = icmp slt i8 %4, 0
  %55 = select i1 %54, i32 %53, i32 %52
  br label %58

56:                                               ; preds = %39, %45, %2, %7, %10
  %57 = tail call ptr @decContextSetStatus(ptr noundef %1, i32 noundef 128) #19
  br label %58

58:                                               ; preds = %45, %49, %56
  %59 = phi i32 [ 0, %56 ], [ %55, %49 ], [ -2147483648, %45 ]
  ret i32 %59
}

; Function Attrs: optsize
declare ptr @decContextSetStatus(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @decNumberToUInt32(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #4 {
  %3 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 2
  %4 = load i8, ptr %3, align 4, !tbaa !5
  %5 = and i8 %4, 112
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %56

7:                                                ; preds = %2
  %8 = load i32, ptr %0, align 4, !tbaa !14
  %9 = icmp sgt i32 %8, 10
  br i1 %9, label %56, label %10

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 1
  %12 = load i32, ptr %11, align 4, !tbaa !15
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %56

14:                                               ; preds = %10
  %15 = icmp sgt i8 %4, -1
  %16 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 3
  %17 = load i16, ptr %16, align 2, !tbaa !10
  br i1 %15, label %22, label %18

18:                                               ; preds = %14
  %19 = icmp eq i16 %17, 0
  %20 = icmp eq i32 %8, 1
  %21 = and i1 %20, %19
  br i1 %21, label %50, label %56

22:                                               ; preds = %14
  %23 = udiv i16 %17, 10
  %24 = zext nneg i16 %23 to i32
  %25 = urem i16 %17, 10
  %26 = icmp sgt i32 %8, 3
  br i1 %26, label %27, label %50

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.decNumber, ptr %0, i64 1
  %29 = zext nneg i32 %8 to i64
  br label %30

30:                                               ; preds = %27, %30
  %31 = phi i64 [ 3, %27 ], [ %42, %30 ]
  %32 = phi i32 [ %24, %27 ], [ %40, %30 ]
  %33 = phi ptr [ %28, %27 ], [ %41, %30 ]
  %34 = load i16, ptr %33, align 2, !tbaa !10
  %35 = zext i16 %34 to i32
  %36 = add nsw i64 %31, -1
  %37 = getelementptr inbounds [10 x i32], ptr @DECPOWERS, i64 0, i64 %36
  %38 = load i32, ptr %37, align 4, !tbaa !17
  %39 = mul i32 %38, %35
  %40 = add i32 %39, %32
  %41 = getelementptr inbounds i16, ptr %33, i64 1
  %42 = add nuw nsw i64 %31, 3
  %43 = icmp ult i64 %42, %29
  br i1 %43, label %30, label %44, !llvm.loop !19

44:                                               ; preds = %30
  %45 = icmp ugt i32 %40, 429496729
  br i1 %45, label %56, label %46

46:                                               ; preds = %44
  %47 = icmp eq i32 %40, 429496729
  %48 = icmp ugt i16 %25, 5
  %49 = select i1 %47, i1 %48, i1 false
  br i1 %49, label %56, label %50

50:                                               ; preds = %22, %18, %46
  %51 = phi i16 [ %25, %46 ], [ %25, %22 ], [ 0, %18 ]
  %52 = phi i32 [ %40, %46 ], [ %24, %22 ], [ 0, %18 ]
  %53 = zext nneg i16 %51 to i32
  %54 = mul nuw i32 %52, 10
  %55 = add i32 %54, %53
  br label %58

56:                                               ; preds = %46, %44, %2, %7, %10, %18
  %57 = tail call ptr @decContextSetStatus(ptr noundef %1, i32 noundef 128) #19
  br label %58

58:                                               ; preds = %50, %56
  %59 = phi i32 [ 0, %56 ], [ %55, %50 ]
  ret i32 %59
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local noundef ptr @decNumberToString(ptr nocapture noundef readonly %0, ptr noundef returned writeonly %1) local_unnamed_addr #0 {
  tail call fastcc void @decToString(ptr noundef %0, ptr noundef %1, i8 noundef zeroext 0) #18
  ret ptr %1
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @decToString(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, i8 noundef zeroext %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !15
  %6 = getelementptr inbounds i8, ptr %0, i64 10
  %7 = load i32, ptr %0, align 4, !tbaa !14
  %8 = icmp slt i32 %7, 50
  br i1 %8, label %9, label %14

9:                                                ; preds = %3
  %10 = sext i32 %7 to i64
  %11 = getelementptr inbounds [50 x i8], ptr @d2utable, i64 0, i64 %10
  %12 = load i8, ptr %11, align 1, !tbaa !20
  %13 = zext i8 %12 to i32
  br label %17

14:                                               ; preds = %3
  %15 = add nuw nsw i32 %7, 2
  %16 = udiv i32 %15, 3
  br label %17

17:                                               ; preds = %14, %9
  %18 = phi i32 [ %13, %9 ], [ %16, %14 ]
  %19 = shl nuw nsw i32 %18, 1
  %20 = add nuw nsw i32 %19, 8
  %21 = zext nneg i32 %20 to i64
  %22 = getelementptr inbounds i8, ptr %0, i64 %21
  %23 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 2
  %24 = load i8, ptr %23, align 4, !tbaa !5
  %25 = icmp sgt i8 %24, -1
  br i1 %25, label %29, label %26

26:                                               ; preds = %17
  store i8 45, ptr %1, align 1, !tbaa !20
  %27 = getelementptr inbounds i8, ptr %1, i64 1
  %28 = load i8, ptr %23, align 4, !tbaa !5
  br label %29

29:                                               ; preds = %26, %17
  %30 = phi i8 [ %28, %26 ], [ %24, %17 ]
  %31 = phi ptr [ %27, %26 ], [ %1, %17 ]
  %32 = zext i8 %30 to i32
  %33 = and i32 %32, 112
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %29
  %36 = load i32, ptr %0, align 4, !tbaa !14
  br label %57

37:                                               ; preds = %29
  %38 = and i32 %32, 64
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %42, label %40

40:                                               ; preds = %37
  store i32 6712905, ptr %31, align 1
  %41 = getelementptr inbounds i8, ptr %31, i64 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %41, ptr noundef nonnull align 1 dereferenceable(6) @.str.17, i64 6, i1 false) #19
  br label %459

42:                                               ; preds = %37
  %43 = and i32 %32, 16
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %47, label %45

45:                                               ; preds = %42
  store i8 115, ptr %31, align 1, !tbaa !20
  %46 = getelementptr inbounds i8, ptr %31, i64 1
  br label %47

47:                                               ; preds = %45, %42
  %48 = phi ptr [ %46, %45 ], [ %31, %42 ]
  store i32 5136718, ptr %48, align 1
  %49 = icmp eq i32 %5, 0
  br i1 %49, label %50, label %459

50:                                               ; preds = %47
  %51 = getelementptr inbounds i8, ptr %48, i64 3
  %52 = load i16, ptr %6, align 2, !tbaa !10
  %53 = icmp eq i16 %52, 0
  %54 = load i32, ptr %0, align 4, !tbaa !14
  %55 = icmp eq i32 %54, 1
  %56 = select i1 %53, i1 %55, i1 false
  br i1 %56, label %459, label %57

57:                                               ; preds = %50, %35
  %58 = phi i32 [ %36, %35 ], [ %54, %50 ]
  %59 = phi ptr [ %31, %35 ], [ %51, %50 ]
  %60 = icmp slt i32 %58, 50
  br i1 %60, label %61, label %67

61:                                               ; preds = %57
  %62 = sext i32 %58 to i64
  %63 = getelementptr inbounds [50 x i8], ptr @d2utable, i64 0, i64 %62
  %64 = load i8, ptr %63, align 1, !tbaa !20
  %65 = zext i8 %64 to i32
  %66 = add nsw i32 %58, 2
  br label %70

67:                                               ; preds = %57
  %68 = add nuw i32 %58, 2
  %69 = udiv i32 %68, 3
  br label %70

70:                                               ; preds = %67, %61
  %71 = phi i32 [ %68, %67 ], [ %66, %61 ]
  %72 = phi i32 [ %69, %67 ], [ %65, %61 ]
  %73 = mul nsw i32 %72, -3
  %74 = add i32 %71, %73
  %75 = icmp eq i32 %5, 0
  br i1 %75, label %76, label %139

76:                                               ; preds = %70
  %77 = icmp eq i32 %18, 0
  br i1 %77, label %137, label %78

78:                                               ; preds = %76, %133
  %79 = phi i64 [ %135, %133 ], [ %21, %76 ]
  %80 = phi ptr [ %134, %133 ], [ %59, %76 ]
  %81 = phi i32 [ 2, %133 ], [ %74, %76 ]
  %82 = icmp sgt i32 %81, -1
  br i1 %82, label %83, label %133

83:                                               ; preds = %78
  %84 = getelementptr inbounds i8, ptr %0, i64 %79
  %85 = load i16, ptr %84, align 2, !tbaa !10
  %86 = zext i16 %85 to i32
  %87 = zext nneg i32 %81 to i64
  br label %88

88:                                               ; preds = %83, %129
  %89 = phi i64 [ %87, %83 ], [ %131, %129 ]
  %90 = phi i32 [ %86, %83 ], [ %122, %129 ]
  %91 = phi ptr [ %80, %83 ], [ %130, %129 ]
  store i8 48, ptr %91, align 1, !tbaa !20
  %92 = getelementptr inbounds [10 x i32], ptr @DECPOWERS, i64 0, i64 %89
  %93 = load i32, ptr %92, align 4, !tbaa !17
  %94 = shl i32 %93, 1
  %95 = icmp ugt i32 %90, %94
  br i1 %95, label %96, label %112

96:                                               ; preds = %88
  %97 = shl i32 %93, 3
  %98 = icmp uge i32 %90, %97
  %99 = select i1 %98, i8 56, i8 48
  %100 = select i1 %98, i32 %97, i32 0
  %101 = sub i32 %90, %100
  %102 = lshr exact i32 %97, 1
  %103 = icmp uge i32 %101, %102
  %104 = or disjoint i8 %99, 4
  %105 = select i1 %103, i8 %104, i8 %99
  %106 = select i1 %103, i32 %102, i32 0
  %107 = sub i32 %101, %106
  %108 = or i1 %98, %103
  br i1 %108, label %109, label %110

109:                                              ; preds = %96
  store i8 %105, ptr %91, align 1, !tbaa !20
  br label %110

110:                                              ; preds = %96, %109
  %111 = lshr exact i32 %97, 2
  br label %112

112:                                              ; preds = %110, %88
  %113 = phi i8 [ %105, %110 ], [ 48, %88 ]
  %114 = phi i32 [ %107, %110 ], [ %90, %88 ]
  %115 = phi i32 [ %111, %110 ], [ %94, %88 ]
  %116 = icmp uge i32 %114, %115
  %117 = select i1 %116, i32 %115, i32 0
  %118 = sub i32 %114, %117
  %119 = lshr i32 %115, 1
  %120 = icmp uge i32 %118, %119
  %121 = select i1 %120, i32 %119, i32 0
  %122 = sub i32 %118, %121
  %123 = or i1 %116, %120
  br i1 %123, label %124, label %129

124:                                              ; preds = %112
  %125 = add nuw nsw i8 %113, 2
  %126 = select i1 %116, i8 %125, i8 %113
  %127 = zext i1 %120 to i8
  %128 = add nuw nsw i8 %126, %127
  store i8 %128, ptr %91, align 1, !tbaa !20
  br label %129

129:                                              ; preds = %112, %124
  %130 = getelementptr inbounds i8, ptr %91, i64 1
  %131 = add nsw i64 %89, -1
  %132 = icmp sgt i64 %89, 0
  br i1 %132, label %88, label %133, !llvm.loop !21

133:                                              ; preds = %129, %78
  %134 = phi ptr [ %80, %78 ], [ %130, %129 ]
  %135 = add nsw i64 %79, -2
  %136 = icmp slt i64 %79, 12
  br i1 %136, label %137, label %78, !llvm.loop !22

137:                                              ; preds = %133, %76
  %138 = phi ptr [ %59, %76 ], [ %134, %133 ]
  store i8 0, ptr %138, align 1, !tbaa !20
  br label %459

139:                                              ; preds = %70
  %140 = add nsw i32 %58, %5
  %141 = icmp sgt i32 %5, 0
  %142 = icmp slt i32 %140, -5
  %143 = select i1 %141, i1 true, i1 %142
  br i1 %143, label %144, label %182

144:                                              ; preds = %139
  %145 = add nsw i32 %140, -1
  %146 = icmp ne i8 %2, 0
  %147 = icmp ne i32 %145, 0
  %148 = select i1 %146, i1 %147, i1 false
  br i1 %148, label %149, label %177

149:                                              ; preds = %144
  %150 = icmp slt i32 %140, 1
  br i1 %150, label %151, label %157

151:                                              ; preds = %149
  %152 = sub nsw i32 1, %140
  %153 = urem i32 %152, 3
  %154 = icmp eq i32 %153, 0
  %155 = xor i32 %153, 3
  %156 = select i1 %154, i32 0, i32 %155
  br label %159

157:                                              ; preds = %149
  %158 = urem i32 %145, 3
  br label %159

159:                                              ; preds = %151, %157
  %160 = phi i32 [ %158, %157 ], [ %156, %151 ]
  %161 = sub nsw i32 %145, %160
  %162 = load i16, ptr %6, align 2, !tbaa !10
  %163 = icmp eq i16 %162, 0
  %164 = icmp eq i32 %58, 1
  %165 = and i1 %164, %163
  br i1 %165, label %166, label %170

166:                                              ; preds = %159
  %167 = load i8, ptr %23, align 4, !tbaa !5
  %168 = and i8 %167, 112
  %169 = icmp eq i8 %168, 0
  br i1 %169, label %172, label %170

170:                                              ; preds = %166, %159
  %171 = add nuw nsw i32 %160, 1
  br label %177

172:                                              ; preds = %166
  %173 = icmp eq i32 %160, 0
  br i1 %173, label %177, label %174

174:                                              ; preds = %172
  %175 = add nsw i32 %161, 3
  %176 = add nsw i32 %160, -2
  br label %182

177:                                              ; preds = %144, %172, %170
  %178 = phi i32 [ %171, %170 ], [ 1, %172 ], [ 1, %144 ]
  %179 = phi i32 [ %161, %170 ], [ %161, %172 ], [ %145, %144 ]
  %180 = load i16, ptr %22, align 2, !tbaa !10
  %181 = zext i16 %180 to i32
  br label %188

182:                                              ; preds = %174, %139
  %183 = phi i32 [ %140, %139 ], [ %176, %174 ]
  %184 = phi i32 [ 0, %139 ], [ %175, %174 ]
  %185 = load i16, ptr %22, align 2, !tbaa !10
  %186 = zext i16 %185 to i32
  %187 = icmp sgt i32 %183, 0
  br i1 %187, label %188, label %326

188:                                              ; preds = %177, %182
  %189 = phi i32 [ %181, %177 ], [ %186, %182 ]
  %190 = phi i32 [ %179, %177 ], [ %184, %182 ]
  %191 = phi i32 [ %178, %177 ], [ %183, %182 ]
  br label %192

192:                                              ; preds = %188, %248
  %193 = phi i32 [ %241, %248 ], [ %189, %188 ]
  %194 = phi i64 [ %208, %248 ], [ %21, %188 ]
  %195 = phi ptr [ %250, %248 ], [ %59, %188 ]
  %196 = phi i32 [ %251, %248 ], [ %74, %188 ]
  %197 = phi i32 [ %249, %248 ], [ %191, %188 ]
  %198 = icmp slt i32 %196, 0
  br i1 %198, label %199, label %206

199:                                              ; preds = %192
  %200 = icmp eq i64 %194, 10
  br i1 %200, label %253, label %201

201:                                              ; preds = %199
  %202 = add nsw i64 %194, -2
  %203 = getelementptr inbounds i8, ptr %0, i64 %202
  %204 = load i16, ptr %203, align 2, !tbaa !10
  %205 = zext i16 %204 to i32
  br label %206

206:                                              ; preds = %201, %192
  %207 = phi i32 [ 2, %201 ], [ %196, %192 ]
  %208 = phi i64 [ %202, %201 ], [ %194, %192 ]
  %209 = phi i32 [ %205, %201 ], [ %193, %192 ]
  store i8 48, ptr %195, align 1, !tbaa !20
  %210 = zext nneg i32 %207 to i64
  %211 = getelementptr inbounds [10 x i32], ptr @DECPOWERS, i64 0, i64 %210
  %212 = load i32, ptr %211, align 4, !tbaa !17
  %213 = shl i32 %212, 1
  %214 = icmp ugt i32 %209, %213
  br i1 %214, label %215, label %231

215:                                              ; preds = %206
  %216 = shl i32 %212, 3
  %217 = icmp uge i32 %209, %216
  %218 = select i1 %217, i8 56, i8 48
  %219 = select i1 %217, i32 %216, i32 0
  %220 = sub i32 %209, %219
  %221 = lshr exact i32 %216, 1
  %222 = icmp uge i32 %220, %221
  %223 = or disjoint i8 %218, 4
  %224 = select i1 %222, i8 %223, i8 %218
  %225 = select i1 %222, i32 %221, i32 0
  %226 = sub i32 %220, %225
  %227 = or i1 %217, %222
  br i1 %227, label %228, label %229

228:                                              ; preds = %215
  store i8 %224, ptr %195, align 1, !tbaa !20
  br label %229

229:                                              ; preds = %215, %228
  %230 = lshr exact i32 %216, 2
  br label %231

231:                                              ; preds = %229, %206
  %232 = phi i8 [ %224, %229 ], [ 48, %206 ]
  %233 = phi i32 [ %226, %229 ], [ %209, %206 ]
  %234 = phi i32 [ %230, %229 ], [ %213, %206 ]
  %235 = icmp uge i32 %233, %234
  %236 = select i1 %235, i32 %234, i32 0
  %237 = sub i32 %233, %236
  %238 = lshr i32 %234, 1
  %239 = icmp uge i32 %237, %238
  %240 = select i1 %239, i32 %238, i32 0
  %241 = sub i32 %237, %240
  %242 = or i1 %235, %239
  br i1 %242, label %243, label %248

243:                                              ; preds = %231
  %244 = add nuw nsw i8 %232, 2
  %245 = select i1 %235, i8 %244, i8 %232
  %246 = zext i1 %239 to i8
  %247 = add nuw nsw i8 %245, %246
  store i8 %247, ptr %195, align 1, !tbaa !20
  br label %248

248:                                              ; preds = %231, %243
  %249 = add nsw i32 %197, -1
  %250 = getelementptr inbounds i8, ptr %195, i64 1
  %251 = add nsw i32 %207, -1
  %252 = icmp sgt i32 %197, 1
  br i1 %252, label %192, label %256, !llvm.loop !23

253:                                              ; preds = %199
  %254 = load i32, ptr %0, align 4, !tbaa !14
  %255 = icmp slt i32 %191, %254
  br i1 %255, label %263, label %259

256:                                              ; preds = %248
  %257 = load i32, ptr %0, align 4, !tbaa !14
  %258 = icmp slt i32 %191, %257
  br i1 %258, label %263, label %396

259:                                              ; preds = %253
  %260 = zext nneg i32 %197 to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %195, i8 48, i64 %260, i1 false), !tbaa !20
  %261 = zext nneg i32 %197 to i64
  %262 = getelementptr i8, ptr %195, i64 %261
  br label %396

263:                                              ; preds = %256, %253
  %264 = phi i32 [ %241, %256 ], [ %193, %253 ]
  %265 = phi i64 [ %208, %256 ], [ 10, %253 ]
  %266 = phi ptr [ %250, %256 ], [ %195, %253 ]
  %267 = phi i32 [ %251, %256 ], [ %196, %253 ]
  store i8 46, ptr %266, align 1, !tbaa !20
  br label %268

268:                                              ; preds = %324, %263
  %269 = phi i32 [ %267, %263 ], [ %325, %324 ]
  %270 = phi ptr [ %266, %263 ], [ %273, %324 ]
  %271 = phi i64 [ %265, %263 ], [ %284, %324 ]
  %272 = phi i32 [ %264, %263 ], [ %317, %324 ]
  %273 = getelementptr inbounds i8, ptr %270, i64 1
  %274 = icmp slt i32 %269, 0
  br i1 %274, label %275, label %282

275:                                              ; preds = %268
  %276 = icmp eq i64 %271, 10
  br i1 %276, label %396, label %277

277:                                              ; preds = %275
  %278 = add nsw i64 %271, -2
  %279 = getelementptr inbounds i8, ptr %0, i64 %278
  %280 = load i16, ptr %279, align 2, !tbaa !10
  %281 = zext i16 %280 to i32
  br label %282

282:                                              ; preds = %277, %268
  %283 = phi i32 [ 2, %277 ], [ %269, %268 ]
  %284 = phi i64 [ %278, %277 ], [ %271, %268 ]
  %285 = phi i32 [ %281, %277 ], [ %272, %268 ]
  store i8 48, ptr %273, align 1, !tbaa !20
  %286 = zext nneg i32 %283 to i64
  %287 = getelementptr inbounds [10 x i32], ptr @DECPOWERS, i64 0, i64 %286
  %288 = load i32, ptr %287, align 4, !tbaa !17
  %289 = shl i32 %288, 1
  %290 = icmp ugt i32 %285, %289
  br i1 %290, label %291, label %307

291:                                              ; preds = %282
  %292 = shl i32 %288, 3
  %293 = icmp uge i32 %285, %292
  %294 = select i1 %293, i8 56, i8 48
  %295 = select i1 %293, i32 %292, i32 0
  %296 = sub i32 %285, %295
  %297 = lshr exact i32 %292, 1
  %298 = icmp uge i32 %296, %297
  %299 = or disjoint i8 %294, 4
  %300 = select i1 %298, i8 %299, i8 %294
  %301 = select i1 %298, i32 %297, i32 0
  %302 = sub i32 %296, %301
  %303 = or i1 %293, %298
  br i1 %303, label %304, label %305

304:                                              ; preds = %291
  store i8 %300, ptr %273, align 1, !tbaa !20
  br label %305

305:                                              ; preds = %291, %304
  %306 = lshr exact i32 %292, 2
  br label %307

307:                                              ; preds = %305, %282
  %308 = phi i8 [ %300, %305 ], [ 48, %282 ]
  %309 = phi i32 [ %302, %305 ], [ %285, %282 ]
  %310 = phi i32 [ %306, %305 ], [ %289, %282 ]
  %311 = icmp uge i32 %309, %310
  %312 = select i1 %311, i32 %310, i32 0
  %313 = sub i32 %309, %312
  %314 = lshr i32 %310, 1
  %315 = icmp uge i32 %313, %314
  %316 = select i1 %315, i32 %314, i32 0
  %317 = sub i32 %313, %316
  %318 = or i1 %311, %315
  br i1 %318, label %319, label %324

319:                                              ; preds = %307
  %320 = add nuw nsw i8 %308, 2
  %321 = select i1 %311, i8 %320, i8 %308
  %322 = zext i1 %315 to i8
  %323 = add nuw nsw i8 %321, %322
  store i8 %323, ptr %273, align 1, !tbaa !20
  br label %324

324:                                              ; preds = %307, %319
  %325 = add nsw i32 %283, -1
  br label %268

326:                                              ; preds = %182
  store i8 48, ptr %59, align 1, !tbaa !20
  %327 = getelementptr inbounds i8, ptr %59, i64 1
  store i8 46, ptr %327, align 1, !tbaa !20
  %328 = getelementptr i8, ptr %59, i64 2
  %329 = icmp slt i32 %183, 0
  br i1 %329, label %330, label %336

330:                                              ; preds = %326
  %331 = xor i32 %183, -1
  %332 = zext nneg i32 %331 to i64
  %333 = add nuw nsw i64 %332, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %328, i8 48, i64 %333, i1 false), !tbaa !20
  %334 = add nuw nsw i64 %332, 3
  %335 = getelementptr i8, ptr %59, i64 %334
  br label %336

336:                                              ; preds = %330, %326
  %337 = phi ptr [ %328, %326 ], [ %335, %330 ]
  br label %338

338:                                              ; preds = %336, %393
  %339 = phi i32 [ %395, %393 ], [ %74, %336 ]
  %340 = phi ptr [ %394, %393 ], [ %337, %336 ]
  %341 = phi i64 [ %353, %393 ], [ %21, %336 ]
  %342 = phi i32 [ %386, %393 ], [ %186, %336 ]
  %343 = icmp slt i32 %339, 0
  br i1 %343, label %344, label %351

344:                                              ; preds = %338
  %345 = icmp eq i64 %341, 10
  br i1 %345, label %396, label %346

346:                                              ; preds = %344
  %347 = add nsw i64 %341, -2
  %348 = getelementptr inbounds i8, ptr %0, i64 %347
  %349 = load i16, ptr %348, align 2, !tbaa !10
  %350 = zext i16 %349 to i32
  br label %351

351:                                              ; preds = %346, %338
  %352 = phi i32 [ 2, %346 ], [ %339, %338 ]
  %353 = phi i64 [ %347, %346 ], [ %341, %338 ]
  %354 = phi i32 [ %350, %346 ], [ %342, %338 ]
  store i8 48, ptr %340, align 1, !tbaa !20
  %355 = zext nneg i32 %352 to i64
  %356 = getelementptr inbounds [10 x i32], ptr @DECPOWERS, i64 0, i64 %355
  %357 = load i32, ptr %356, align 4, !tbaa !17
  %358 = shl i32 %357, 1
  %359 = icmp ugt i32 %354, %358
  br i1 %359, label %360, label %376

360:                                              ; preds = %351
  %361 = shl i32 %357, 3
  %362 = icmp uge i32 %354, %361
  %363 = select i1 %362, i8 56, i8 48
  %364 = select i1 %362, i32 %361, i32 0
  %365 = sub i32 %354, %364
  %366 = lshr exact i32 %361, 1
  %367 = icmp uge i32 %365, %366
  %368 = or disjoint i8 %363, 4
  %369 = select i1 %367, i8 %368, i8 %363
  %370 = select i1 %367, i32 %366, i32 0
  %371 = sub i32 %365, %370
  %372 = or i1 %362, %367
  br i1 %372, label %373, label %374

373:                                              ; preds = %360
  store i8 %369, ptr %340, align 1, !tbaa !20
  br label %374

374:                                              ; preds = %360, %373
  %375 = lshr exact i32 %361, 2
  br label %376

376:                                              ; preds = %374, %351
  %377 = phi i8 [ %369, %374 ], [ 48, %351 ]
  %378 = phi i32 [ %371, %374 ], [ %354, %351 ]
  %379 = phi i32 [ %375, %374 ], [ %358, %351 ]
  %380 = icmp uge i32 %378, %379
  %381 = select i1 %380, i32 %379, i32 0
  %382 = sub i32 %378, %381
  %383 = lshr i32 %379, 1
  %384 = icmp uge i32 %382, %383
  %385 = select i1 %384, i32 %383, i32 0
  %386 = sub i32 %382, %385
  %387 = or i1 %380, %384
  br i1 %387, label %388, label %393

388:                                              ; preds = %376
  %389 = add nuw nsw i8 %377, 2
  %390 = select i1 %380, i8 %389, i8 %377
  %391 = zext i1 %384 to i8
  %392 = add nuw nsw i8 %390, %391
  store i8 %392, ptr %340, align 1, !tbaa !20
  br label %393

393:                                              ; preds = %376, %388
  %394 = getelementptr inbounds i8, ptr %340, i64 1
  %395 = add nsw i32 %352, -1
  br label %338

396:                                              ; preds = %344, %275, %256, %259
  %397 = phi i32 [ %190, %259 ], [ %190, %256 ], [ %190, %275 ], [ %184, %344 ]
  %398 = phi ptr [ %262, %259 ], [ %250, %256 ], [ %273, %275 ], [ %340, %344 ]
  %399 = icmp eq i32 %397, 0
  br i1 %399, label %457, label %400

400:                                              ; preds = %396
  store i8 69, ptr %398, align 1, !tbaa !20
  %401 = getelementptr inbounds i8, ptr %398, i64 1
  store i8 43, ptr %401, align 1, !tbaa !20
  %402 = getelementptr inbounds i8, ptr %398, i64 2
  %403 = icmp slt i32 %397, 0
  br i1 %403, label %404, label %406

404:                                              ; preds = %400
  store i8 45, ptr %401, align 1, !tbaa !20
  %405 = sub nsw i32 0, %397
  br label %406

406:                                              ; preds = %404, %400
  %407 = phi i32 [ %397, %400 ], [ %405, %404 ]
  br label %408

408:                                              ; preds = %406, %450
  %409 = phi i64 [ %455, %450 ], [ 9, %406 ]
  %410 = phi i1 [ %452, %450 ], [ false, %406 ]
  %411 = phi i32 [ %447, %450 ], [ %407, %406 ]
  %412 = phi ptr [ %454, %450 ], [ %402, %406 ]
  store i8 48, ptr %412, align 1, !tbaa !20
  %413 = getelementptr inbounds [10 x i32], ptr @DECPOWERS, i64 0, i64 %409
  %414 = load i32, ptr %413, align 4, !tbaa !17
  %415 = shl i32 %414, 1
  %416 = icmp ugt i32 %411, %415
  br i1 %416, label %417, label %433

417:                                              ; preds = %408
  %418 = shl i32 %414, 3
  %419 = icmp uge i32 %411, %418
  %420 = select i1 %419, i8 56, i8 48
  %421 = select i1 %419, i32 %418, i32 0
  %422 = sub i32 %411, %421
  %423 = lshr exact i32 %418, 1
  %424 = icmp uge i32 %422, %423
  %425 = or disjoint i8 %420, 4
  %426 = select i1 %424, i8 %425, i8 %420
  %427 = select i1 %424, i32 %423, i32 0
  %428 = sub i32 %422, %427
  %429 = or i1 %419, %424
  br i1 %429, label %430, label %431

430:                                              ; preds = %417
  store i8 %426, ptr %412, align 1, !tbaa !20
  br label %431

431:                                              ; preds = %417, %430
  %432 = lshr exact i32 %418, 2
  br label %433

433:                                              ; preds = %431, %408
  %434 = phi i8 [ %426, %431 ], [ 48, %408 ]
  %435 = phi i32 [ %428, %431 ], [ %411, %408 ]
  %436 = phi i32 [ %432, %431 ], [ %415, %408 ]
  %437 = icmp uge i32 %435, %436
  %438 = add nuw nsw i8 %434, 2
  %439 = select i1 %437, i8 %438, i8 %434
  %440 = select i1 %437, i32 %436, i32 0
  %441 = sub i32 %435, %440
  %442 = lshr i32 %436, 1
  %443 = icmp uge i32 %441, %442
  %444 = zext i1 %443 to i8
  %445 = add nuw nsw i8 %439, %444
  %446 = select i1 %443, i32 %442, i32 0
  %447 = sub i32 %441, %446
  %448 = or i1 %437, %443
  br i1 %448, label %449, label %450

449:                                              ; preds = %433
  store i8 %445, ptr %412, align 1, !tbaa !20
  br label %450

450:                                              ; preds = %433, %449
  %451 = icmp ne i8 %445, 48
  %452 = or i1 %410, %451
  %453 = zext i1 %452 to i64
  %454 = getelementptr inbounds i8, ptr %412, i64 %453
  %455 = add nsw i64 %409, -1
  %456 = icmp eq i64 %409, 0
  br i1 %456, label %457, label %408, !llvm.loop !24

457:                                              ; preds = %450, %396
  %458 = phi ptr [ %398, %396 ], [ %454, %450 ]
  store i8 0, ptr %458, align 1, !tbaa !20
  br label %459

459:                                              ; preds = %50, %47, %457, %137, %40
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local noundef ptr @decNumberToEngString(ptr nocapture noundef readonly %0, ptr noundef returned writeonly %1) local_unnamed_addr #0 {
  tail call fastcc void @decToString(ptr noundef %0, ptr noundef %1, i8 noundef zeroext 1) #18
  ret ptr %1
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @decNumberFromString(ptr noundef returned %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #4 {
  %4 = alloca [15 x i16], align 16
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 30, ptr nonnull %4) #20
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #20
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #20
  store i32 0, ptr %6, align 4, !tbaa !17
  br label %7

7:                                                ; preds = %34, %3
  %8 = phi i32 [ 0, %3 ], [ %35, %34 ]
  %9 = phi ptr [ null, %3 ], [ %36, %34 ]
  %10 = phi ptr [ %1, %3 ], [ %37, %34 ]
  %11 = phi ptr [ null, %3 ], [ %38, %34 ]
  %12 = phi ptr [ %1, %3 ], [ %40, %34 ]
  %13 = phi i8 [ 0, %3 ], [ %39, %34 ]
  %14 = load i8, ptr %12, align 1, !tbaa !20
  %15 = add i8 %14, -48
  %16 = icmp ult i8 %15, 10
  br i1 %16, label %17, label %19

17:                                               ; preds = %7
  %18 = add nsw i32 %8, 1
  br label %34

19:                                               ; preds = %7
  %20 = icmp eq i8 %14, 46
  %21 = icmp eq ptr %9, null
  %22 = select i1 %20, i1 %21, i1 false
  br i1 %22, label %23, label %27

23:                                               ; preds = %19
  %24 = icmp eq ptr %12, %10
  %25 = zext i1 %24 to i64
  %26 = getelementptr inbounds i8, ptr %10, i64 %25
  br label %34

27:                                               ; preds = %19
  %28 = icmp eq ptr %12, %1
  br i1 %28, label %29, label %41

29:                                               ; preds = %27
  switch i8 %14, label %41 [
    i8 45, label %30
    i8 43, label %32
  ]

30:                                               ; preds = %29
  %31 = getelementptr inbounds i8, ptr %10, i64 1
  br label %34

32:                                               ; preds = %29
  %33 = getelementptr inbounds i8, ptr %10, i64 1
  br label %34

34:                                               ; preds = %23, %32, %30, %17
  %35 = phi i32 [ %18, %17 ], [ %8, %30 ], [ %8, %32 ], [ %8, %23 ]
  %36 = phi ptr [ %9, %17 ], [ %9, %30 ], [ %9, %32 ], [ %12, %23 ]
  %37 = phi ptr [ %10, %17 ], [ %31, %30 ], [ %33, %32 ], [ %26, %23 ]
  %38 = phi ptr [ %12, %17 ], [ %11, %30 ], [ %11, %32 ], [ %11, %23 ]
  %39 = phi i8 [ %13, %17 ], [ -128, %30 ], [ %13, %32 ], [ %13, %23 ]
  %40 = getelementptr inbounds i8, ptr %12, i64 1
  br label %7

41:                                               ; preds = %29, %27
  %42 = phi ptr [ %1, %29 ], [ %12, %27 ]
  %43 = icmp eq ptr %11, null
  br i1 %43, label %44, label %109

44:                                               ; preds = %41
  store i32 1, ptr %6, align 4, !tbaa !17
  %45 = icmp eq i8 %14, 0
  %46 = icmp ne ptr %9, null
  %47 = select i1 %45, i1 true, i1 %46
  br i1 %47, label %295, label %48

48:                                               ; preds = %44
  %49 = tail call ptr @decNumberZero(ptr noundef %0) #18
  %50 = tail call fastcc zeroext i8 @decBiStr(ptr noundef nonnull %42, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #18, !range !25
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %48
  %53 = tail call fastcc zeroext i8 @decBiStr(ptr noundef nonnull %42, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3) #18, !range !25
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %58, label %55

55:                                               ; preds = %52, %48
  %56 = or i8 %13, 64
  %57 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 2
  store i8 %56, ptr %57, align 4, !tbaa !5
  br label %297

58:                                               ; preds = %52
  %59 = or i8 %13, 32
  %60 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 2
  store i8 %59, ptr %60, align 4, !tbaa !5
  %61 = load i8, ptr %42, align 1, !tbaa !20
  switch i8 %61, label %66 [
    i8 115, label %62
    i8 83, label %62
  ]

62:                                               ; preds = %58, %58
  %63 = getelementptr inbounds i8, ptr %42, i64 1
  %64 = or i8 %13, 16
  store i8 %64, ptr %60, align 4, !tbaa !5
  %65 = load i8, ptr %63, align 1, !tbaa !20
  br label %66

66:                                               ; preds = %58, %62
  %67 = phi i8 [ %59, %58 ], [ %64, %62 ]
  %68 = phi i8 [ %61, %58 ], [ %65, %62 ]
  %69 = phi ptr [ %42, %58 ], [ %63, %62 ]
  switch i8 %68, label %292 [
    i8 110, label %70
    i8 78, label %70
  ]

70:                                               ; preds = %66, %66
  %71 = getelementptr inbounds i8, ptr %69, i64 1
  %72 = load i8, ptr %71, align 1, !tbaa !20
  switch i8 %72, label %292 [
    i8 97, label %73
    i8 65, label %73
  ]

73:                                               ; preds = %70, %70
  %74 = getelementptr inbounds i8, ptr %69, i64 2
  %75 = load i8, ptr %74, align 1, !tbaa !20
  switch i8 %75, label %292 [
    i8 110, label %76
    i8 78, label %76
  ]

76:                                               ; preds = %73, %73
  %77 = getelementptr inbounds i8, ptr %69, i64 3
  br label %78

78:                                               ; preds = %84, %76
  %79 = phi ptr [ %77, %76 ], [ %85, %84 ]
  %80 = load i8, ptr %79, align 1, !tbaa !20
  switch i8 %80, label %81 [
    i8 48, label %84
    i8 0, label %297
  ]

81:                                               ; preds = %78
  %82 = add i8 %80, -58
  %83 = icmp ult i8 %82, -10
  br i1 %83, label %94, label %86

84:                                               ; preds = %78
  %85 = getelementptr inbounds i8, ptr %79, i64 1
  br label %78, !llvm.loop !26

86:                                               ; preds = %81, %86
  %87 = phi ptr [ %89, %86 ], [ %79, %81 ]
  %88 = phi i32 [ %90, %86 ], [ %8, %81 ]
  %89 = getelementptr inbounds i8, ptr %87, i64 1
  %90 = add nsw i32 %88, 1
  %91 = load i8, ptr %89, align 1, !tbaa !20
  %92 = add i8 %91, -58
  %93 = icmp ult i8 %92, -10
  br i1 %93, label %94, label %86

94:                                               ; preds = %86, %81
  %95 = phi i8 [ %80, %81 ], [ %91, %86 ]
  %96 = phi i32 [ %8, %81 ], [ %90, %86 ]
  %97 = phi ptr [ null, %81 ], [ %87, %86 ]
  %98 = icmp eq i8 %95, 0
  br i1 %98, label %99, label %292

99:                                               ; preds = %94
  %100 = load i32, ptr %2, align 4, !tbaa !27
  %101 = icmp slt i32 %96, %100
  br i1 %101, label %108, label %102

102:                                              ; preds = %99
  %103 = getelementptr inbounds %struct.decContext, ptr %2, i64 0, i32 6
  %104 = load i8, ptr %103, align 4, !tbaa !29
  %105 = icmp ne i8 %104, 0
  %106 = icmp sgt i32 %96, %100
  %107 = select i1 %105, i1 true, i1 %106
  br i1 %107, label %292, label %108

108:                                              ; preds = %102, %99
  store i32 0, ptr %6, align 4, !tbaa !17
  br label %161

109:                                              ; preds = %41
  %110 = icmp eq i8 %14, 0
  br i1 %110, label %161, label %111

111:                                              ; preds = %109
  store i32 1, ptr %6, align 4, !tbaa !17
  switch i8 %14, label %295 [
    i8 101, label %112
    i8 69, label %112
  ]

112:                                              ; preds = %111, %111
  %113 = getelementptr inbounds i8, ptr %42, i64 1
  %114 = load i8, ptr %113, align 1, !tbaa !20
  %115 = icmp eq i8 %114, 45
  %116 = getelementptr inbounds i8, ptr %42, i64 2
  %117 = icmp eq i8 %114, 43
  %118 = or i1 %115, %117
  %119 = select i1 %118, ptr %116, ptr %113
  %120 = load i8, ptr %119, align 1, !tbaa !20
  %121 = icmp eq i8 %120, 0
  br i1 %121, label %292, label %122

122:                                              ; preds = %112, %126
  %123 = phi i8 [ %128, %126 ], [ %120, %112 ]
  %124 = phi ptr [ %127, %126 ], [ %119, %112 ]
  %125 = icmp eq i8 %123, 48
  br i1 %125, label %126, label %130

126:                                              ; preds = %122
  %127 = getelementptr inbounds i8, ptr %124, i64 1
  %128 = load i8, ptr %127, align 1, !tbaa !20
  %129 = icmp eq i8 %128, 0
  br i1 %129, label %130, label %122, !llvm.loop !30

130:                                              ; preds = %122, %126
  %131 = load i8, ptr %124, align 1, !tbaa !20
  %132 = add i8 %131, -58
  %133 = icmp ult i8 %132, -10
  br i1 %133, label %147, label %134

134:                                              ; preds = %130, %134
  %135 = phi i8 [ %144, %134 ], [ %131, %130 ]
  %136 = phi i32 [ %141, %134 ], [ 0, %130 ]
  %137 = phi i64 [ %142, %134 ], [ 0, %130 ]
  %138 = zext nneg i8 %135 to i32
  %139 = mul i32 %136, 10
  %140 = add i32 %139, -48
  %141 = add i32 %140, %138
  %142 = add nuw nsw i64 %137, 1
  %143 = getelementptr inbounds i8, ptr %124, i64 %142
  %144 = load i8, ptr %143, align 1, !tbaa !20
  %145 = add i8 %144, -58
  %146 = icmp ult i8 %145, -10
  br i1 %146, label %147, label %134

147:                                              ; preds = %134, %130
  %148 = phi i64 [ 0, %130 ], [ %142, %134 ]
  %149 = phi i32 [ 0, %130 ], [ %141, %134 ]
  %150 = phi i8 [ %131, %130 ], [ %144, %134 ]
  %151 = icmp eq i8 %150, 0
  br i1 %151, label %152, label %292

152:                                              ; preds = %147
  %153 = icmp ult i64 %148, 10
  %154 = icmp ne i64 %148, 10
  %155 = icmp sgt i8 %123, 49
  %156 = or i1 %155, %154
  %157 = select i1 %156, i32 1999999998, i32 %149
  %158 = select i1 %153, i32 %149, i32 %157
  %159 = sub nsw i32 0, %158
  %160 = select i1 %115, i32 %159, i32 %158
  store i32 0, ptr %6, align 4, !tbaa !17
  br label %161

161:                                              ; preds = %152, %109, %108
  %162 = phi i32 [ %96, %108 ], [ %8, %152 ], [ %8, %109 ]
  %163 = phi ptr [ %79, %108 ], [ %10, %152 ], [ %10, %109 ]
  %164 = phi ptr [ %97, %108 ], [ %11, %152 ], [ %11, %109 ]
  %165 = phi i8 [ %67, %108 ], [ %13, %152 ], [ %13, %109 ]
  %166 = phi i32 [ 0, %108 ], [ %160, %152 ], [ 0, %109 ]
  %167 = ptrtoint ptr %164 to i64
  %168 = load i8, ptr %163, align 1, !tbaa !20
  %169 = icmp eq i8 %168, 48
  %170 = icmp ult ptr %163, %164
  %171 = and i1 %169, %170
  br i1 %171, label %172, label %186

172:                                              ; preds = %161
  %173 = ptrtoint ptr %163 to i64
  %174 = sub i64 %167, %173
  %175 = getelementptr i8, ptr %163, i64 %174
  br label %176

176:                                              ; preds = %172, %182
  %177 = phi ptr [ %184, %182 ], [ %163, %172 ]
  %178 = phi i32 [ %183, %182 ], [ %162, %172 ]
  %179 = load i8, ptr %177, align 1, !tbaa !20
  switch i8 %179, label %186 [
    i8 46, label %182
    i8 48, label %180
  ]

180:                                              ; preds = %176
  %181 = add nsw i32 %178, -1
  br label %182

182:                                              ; preds = %176, %180
  %183 = phi i32 [ %178, %176 ], [ %181, %180 ]
  %184 = getelementptr i8, ptr %177, i64 1
  %185 = icmp eq ptr %184, %175
  br i1 %185, label %186, label %176, !llvm.loop !31

186:                                              ; preds = %182, %176, %161
  %187 = phi i32 [ %162, %161 ], [ %183, %182 ], [ %178, %176 ]
  %188 = phi ptr [ %163, %161 ], [ %175, %182 ], [ %177, %176 ]
  %189 = icmp ne ptr %9, null
  %190 = icmp ult ptr %9, %164
  %191 = and i1 %189, %190
  %192 = ptrtoint ptr %9 to i64
  %193 = sub i64 %192, %167
  %194 = trunc i64 %193 to i32
  %195 = select i1 %191, i32 %194, i32 0
  %196 = add i32 %195, %166
  %197 = load i32, ptr %2, align 4, !tbaa !27
  %198 = icmp sgt i32 %187, %197
  br i1 %198, label %201, label %199

199:                                              ; preds = %186
  %200 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 3
  br label %219

201:                                              ; preds = %186
  %202 = icmp slt i32 %187, 50
  br i1 %202, label %206, label %203

203:                                              ; preds = %201
  %204 = add nuw nsw i32 %187, 2
  %205 = udiv i32 %204, 3
  br label %213

206:                                              ; preds = %201
  %207 = sext i32 %187 to i64
  %208 = getelementptr inbounds [50 x i8], ptr @d2utable, i64 0, i64 %207
  %209 = load i8, ptr %208, align 1, !tbaa !20
  %210 = zext i8 %209 to i32
  %211 = add nsw i64 %207, -46
  %212 = icmp ult i64 %211, 4
  br i1 %212, label %213, label %223

213:                                              ; preds = %203, %206
  %214 = phi i32 [ %205, %203 ], [ %210, %206 ]
  %215 = shl nuw nsw i32 %214, 1
  %216 = zext nneg i32 %215 to i64
  %217 = tail call noalias ptr @malloc(i64 noundef %216) #21
  %218 = icmp eq ptr %217, null
  br i1 %218, label %295, label %219

219:                                              ; preds = %213, %199
  %220 = phi ptr [ %200, %199 ], [ %217, %213 ]
  %221 = phi ptr [ null, %199 ], [ %217, %213 ]
  %222 = icmp slt i32 %187, 50
  br i1 %222, label %223, label %230

223:                                              ; preds = %206, %219
  %224 = phi ptr [ %221, %219 ], [ null, %206 ]
  %225 = phi ptr [ %220, %219 ], [ %4, %206 ]
  %226 = sext i32 %187 to i64
  %227 = getelementptr inbounds [50 x i8], ptr @d2utable, i64 0, i64 %226
  %228 = load i8, ptr %227, align 1, !tbaa !20
  %229 = zext i8 %228 to i32
  br label %233

230:                                              ; preds = %219
  %231 = add nuw nsw i32 %187, 2
  %232 = udiv i32 %231, 3
  br label %233

233:                                              ; preds = %230, %223
  %234 = phi ptr [ %224, %223 ], [ %221, %230 ]
  %235 = phi ptr [ %225, %223 ], [ %220, %230 ]
  %236 = phi i32 [ %229, %223 ], [ %232, %230 ]
  %237 = zext nneg i32 %236 to i64
  %238 = getelementptr inbounds i16, ptr %235, i64 %237
  %239 = getelementptr inbounds i16, ptr %238, i64 -1
  %240 = ptrtoint ptr %239 to i64
  %241 = ptrtoint ptr %235 to i64
  %242 = sub i64 %240, %241
  %243 = lshr exact i64 %242, 1
  %244 = trunc i64 %243 to i32
  %245 = mul i32 %244, -3
  %246 = add i32 %245, %187
  br label %247

247:                                              ; preds = %266, %233
  %248 = phi ptr [ %188, %233 ], [ %270, %266 ]
  %249 = phi ptr [ %239, %233 ], [ %267, %266 ]
  %250 = phi i32 [ %246, %233 ], [ %268, %266 ]
  %251 = phi i32 [ 0, %233 ], [ %269, %266 ]
  %252 = load i8, ptr %248, align 1, !tbaa !20
  %253 = icmp eq i8 %252, 46
  br i1 %253, label %266, label %254

254:                                              ; preds = %247
  %255 = sext i8 %252 to i32
  %256 = mul i32 %251, 10
  %257 = add i32 %256, -48
  %258 = add i32 %257, %255
  %259 = icmp eq ptr %248, %164
  br i1 %259, label %271, label %260

260:                                              ; preds = %254
  %261 = add nsw i32 %250, -1
  %262 = icmp sgt i32 %250, 1
  br i1 %262, label %266, label %263

263:                                              ; preds = %260
  %264 = trunc i32 %258 to i16
  store i16 %264, ptr %249, align 2, !tbaa !10
  %265 = getelementptr inbounds i16, ptr %249, i64 -1
  br label %266

266:                                              ; preds = %260, %247, %263
  %267 = phi ptr [ %249, %247 ], [ %249, %260 ], [ %265, %263 ]
  %268 = phi i32 [ %250, %247 ], [ %261, %260 ], [ 3, %263 ]
  %269 = phi i32 [ %251, %247 ], [ %258, %260 ], [ 0, %263 ]
  %270 = getelementptr inbounds i8, ptr %248, i64 1
  br label %247

271:                                              ; preds = %254
  %272 = trunc i32 %258 to i16
  store i16 %272, ptr %249, align 2, !tbaa !10
  %273 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 2
  store i8 %165, ptr %273, align 4, !tbaa !5
  %274 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 1
  store i32 %196, ptr %274, align 4, !tbaa !15
  store i32 %187, ptr %0, align 4, !tbaa !14
  br i1 %198, label %275, label %276

275:                                              ; preds = %271
  store i32 0, ptr %5, align 4, !tbaa !17
  call fastcc void @decSetCoeff(ptr noundef nonnull %0, ptr noundef nonnull %2, ptr noundef nonnull %235, i32 noundef %187, ptr noundef nonnull %5, ptr noundef nonnull %6) #18
  br label %288

276:                                              ; preds = %271
  %277 = getelementptr inbounds %struct.decContext, ptr %2, i64 0, i32 2
  %278 = load i32, ptr %277, align 4, !tbaa !32
  %279 = sub nsw i32 %278, %187
  %280 = icmp sgt i32 %196, %279
  br i1 %280, label %281, label %287

281:                                              ; preds = %276
  %282 = add nsw i32 %196, -1
  %283 = getelementptr inbounds %struct.decContext, ptr %2, i64 0, i32 1
  %284 = load i32, ptr %283, align 4, !tbaa !33
  %285 = sub nsw i32 %284, %197
  %286 = icmp sgt i32 %282, %285
  br i1 %286, label %287, label %289

287:                                              ; preds = %281, %276
  store i32 0, ptr %5, align 4, !tbaa !17
  br label %288

288:                                              ; preds = %275, %287
  call fastcc void @decFinalize(ptr noundef nonnull %0, ptr noundef nonnull %2, ptr noundef nonnull %5, ptr noundef nonnull %6) #18
  br label %289

289:                                              ; preds = %288, %281
  %290 = icmp eq ptr %234, null
  br i1 %290, label %292, label %291

291:                                              ; preds = %289
  call void @free(ptr noundef nonnull %234) #19
  br label %292

292:                                              ; preds = %147, %112, %73, %70, %66, %102, %94, %291, %289
  %293 = load i32, ptr %6, align 4, !tbaa !17
  %294 = icmp eq i32 %293, 0
  br i1 %294, label %297, label %295

295:                                              ; preds = %213, %44, %111, %292
  %296 = phi i32 [ %293, %292 ], [ 1, %44 ], [ 1, %111 ], [ 16, %213 ]
  call fastcc void @decStatus(ptr noundef %0, i32 noundef %296, ptr noundef %2) #18
  br label %297

297:                                              ; preds = %78, %55, %295, %292
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(i64 30, ptr nonnull %4) #20
  ret ptr %0
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @decBiStr(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #3 {
  br label %4

4:                                                ; preds = %16, %3
  %5 = phi ptr [ %0, %3 ], [ %17, %16 ]
  %6 = phi ptr [ %1, %3 ], [ %18, %16 ]
  %7 = phi ptr [ %2, %3 ], [ %19, %16 ]
  %8 = load i8, ptr %5, align 1, !tbaa !20
  %9 = load i8, ptr %6, align 1, !tbaa !20
  %10 = icmp eq i8 %8, %9
  br i1 %10, label %14, label %11

11:                                               ; preds = %4
  %12 = load i8, ptr %7, align 1, !tbaa !20
  %13 = icmp eq i8 %8, %12
  br i1 %13, label %14, label %20

14:                                               ; preds = %11, %4
  %15 = icmp eq i8 %8, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %14
  %17 = getelementptr inbounds i8, ptr %5, i64 1
  %18 = getelementptr inbounds i8, ptr %6, i64 1
  %19 = getelementptr inbounds i8, ptr %7, i64 1
  br label %4

20:                                               ; preds = %14, %11
  %21 = phi i8 [ 0, %11 ], [ 1, %14 ]
  ret i8 %21
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #6

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @decSetCoeff(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef readonly %2, i32 noundef %3, ptr nocapture noundef %4, ptr nocapture noundef %5) unnamed_addr #0 {
  %7 = load i32, ptr %1, align 4, !tbaa !27
  %8 = sub nsw i32 %3, %7
  %9 = icmp slt i32 %8, 1
  br i1 %9, label %10, label %31

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 3
  %12 = icmp eq ptr %11, %2
  br i1 %12, label %25, label %13

13:                                               ; preds = %10
  %14 = icmp sgt i32 %3, 0
  br i1 %14, label %15, label %24

15:                                               ; preds = %13, %15
  %16 = phi ptr [ %21, %15 ], [ %2, %13 ]
  %17 = phi ptr [ %20, %15 ], [ %11, %13 ]
  %18 = phi i32 [ %22, %15 ], [ %3, %13 ]
  %19 = load i16, ptr %16, align 2, !tbaa !10
  store i16 %19, ptr %17, align 2, !tbaa !10
  %20 = getelementptr inbounds i16, ptr %17, i64 1
  %21 = getelementptr inbounds i16, ptr %16, i64 1
  %22 = add nsw i32 %18, -3
  %23 = icmp ugt i32 %18, 3
  br i1 %23, label %15, label %24, !llvm.loop !34

24:                                               ; preds = %15, %13
  store i32 %3, ptr %0, align 4, !tbaa !14
  br label %25

25:                                               ; preds = %24, %10
  %26 = load i32, ptr %4, align 4, !tbaa !17
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %191, label %28

28:                                               ; preds = %25
  %29 = load i32, ptr %5, align 4, !tbaa !17
  %30 = or i32 %29, 2080
  store i32 %30, ptr %5, align 4, !tbaa !17
  br label %191

31:                                               ; preds = %6
  %32 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 1
  %33 = load i32, ptr %32, align 4, !tbaa !15
  %34 = add nsw i32 %33, %8
  store i32 %34, ptr %32, align 4, !tbaa !15
  %35 = load i32, ptr %5, align 4, !tbaa !17
  %36 = or i32 %35, 2048
  store i32 %36, ptr %5, align 4, !tbaa !17
  %37 = load i32, ptr %4, align 4, !tbaa !17
  %38 = icmp sgt i32 %37, 1
  br i1 %38, label %41, label %39

39:                                               ; preds = %31
  %40 = icmp slt i32 %7, 0
  br i1 %40, label %46, label %43

41:                                               ; preds = %31
  store i32 1, ptr %4, align 4, !tbaa !17
  %42 = icmp slt i32 %7, 0
  br i1 %42, label %62, label %43

43:                                               ; preds = %41, %39
  %44 = phi i32 [ 1, %41 ], [ %37, %39 ]
  %45 = icmp ugt i32 %8, 3
  br i1 %45, label %67, label %79

46:                                               ; preds = %39
  %47 = icmp eq i32 %37, 1
  br i1 %47, label %62, label %48

48:                                               ; preds = %46
  %49 = icmp sgt i32 %3, 0
  br i1 %49, label %50, label %60

50:                                               ; preds = %48, %56
  %51 = phi ptr [ %57, %56 ], [ %2, %48 ]
  %52 = phi i32 [ %58, %56 ], [ %3, %48 ]
  %53 = load i16, ptr %51, align 2, !tbaa !10
  %54 = icmp eq i16 %53, 0
  br i1 %54, label %56, label %55

55:                                               ; preds = %50
  store i32 1, ptr %4, align 4, !tbaa !17
  br label %62

56:                                               ; preds = %50
  %57 = getelementptr inbounds i16, ptr %51, i64 1
  %58 = add nsw i32 %52, -3
  %59 = icmp sgt i32 %52, 3
  br i1 %59, label %50, label %60, !llvm.loop !35

60:                                               ; preds = %56, %48
  %61 = icmp eq i32 %37, 0
  br i1 %61, label %65, label %62

62:                                               ; preds = %41, %46, %55, %60
  %63 = load i32, ptr %5, align 4, !tbaa !17
  %64 = or i32 %63, 32
  store i32 %64, ptr %5, align 4, !tbaa !17
  br label %65

65:                                               ; preds = %62, %60
  %66 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 3
  store i16 0, ptr %66, align 2, !tbaa !10
  store i32 1, ptr %0, align 4, !tbaa !14
  br label %191

67:                                               ; preds = %43, %74
  %68 = phi i32 [ %75, %74 ], [ %44, %43 ]
  %69 = phi i32 [ %77, %74 ], [ 3, %43 ]
  %70 = phi ptr [ %76, %74 ], [ %2, %43 ]
  %71 = load i16, ptr %70, align 2, !tbaa !10
  %72 = icmp eq i16 %71, 0
  br i1 %72, label %74, label %73

73:                                               ; preds = %67
  store i32 1, ptr %4, align 4, !tbaa !17
  br label %74

74:                                               ; preds = %67, %73
  %75 = phi i32 [ %68, %67 ], [ 1, %73 ]
  %76 = getelementptr inbounds i16, ptr %70, i64 1
  %77 = add nuw nsw i32 %69, 3
  %78 = icmp slt i32 %77, %8
  br i1 %78, label %67, label %79

79:                                               ; preds = %74, %43
  %80 = phi i32 [ %44, %43 ], [ %75, %74 ]
  %81 = phi i32 [ 0, %43 ], [ %69, %74 ]
  %82 = phi ptr [ %2, %43 ], [ %76, %74 ]
  %83 = sub nsw i32 %8, %81
  switch i32 %83, label %116 [
    i32 3, label %84
    i32 1, label %113
  ]

84:                                               ; preds = %79
  %85 = load i32, ptr getelementptr inbounds ([10 x i32], ptr @DECPOWERS, i64 0, i64 3), align 4, !tbaa !17
  %86 = lshr i32 %85, 1
  %87 = load i16, ptr %82, align 2, !tbaa !10
  %88 = zext i16 %87 to i32
  %89 = and i32 %86, 32767
  %90 = icmp ugt i32 %89, %88
  br i1 %90, label %95, label %91

91:                                               ; preds = %84
  %92 = icmp ult i32 %89, %88
  %93 = add nsw i32 %80, 5
  %94 = select i1 %92, i32 7, i32 %93
  br label %97

95:                                               ; preds = %84
  %96 = icmp eq i16 %87, 0
  br i1 %96, label %99, label %97

97:                                               ; preds = %91, %95
  %98 = phi i32 [ 3, %95 ], [ %94, %91 ]
  store i32 %98, ptr %4, align 4, !tbaa !17
  br label %99

99:                                               ; preds = %97, %95
  %100 = load i32, ptr %1, align 4, !tbaa !27
  %101 = icmp slt i32 %100, 1
  br i1 %101, label %183, label %102

102:                                              ; preds = %99
  store i32 %100, ptr %0, align 4, !tbaa !14
  %103 = getelementptr %struct.decNumber, ptr %0, i64 0, i32 3
  br label %104

104:                                              ; preds = %102, %104
  %105 = phi ptr [ %82, %102 ], [ %108, %104 ]
  %106 = phi ptr [ %103, %102 ], [ %110, %104 ]
  %107 = phi i32 [ %100, %102 ], [ %111, %104 ]
  %108 = getelementptr inbounds i16, ptr %105, i64 1
  %109 = load i16, ptr %108, align 2, !tbaa !10
  store i16 %109, ptr %106, align 2, !tbaa !10
  %110 = getelementptr inbounds i16, ptr %106, i64 1
  %111 = add nsw i32 %107, -3
  %112 = icmp ugt i32 %107, 3
  br i1 %112, label %104, label %185, !llvm.loop !36

113:                                              ; preds = %79
  %114 = load i16, ptr %82, align 2, !tbaa !10
  %115 = zext i16 %114 to i32
  br label %131

116:                                              ; preds = %79
  %117 = add nsw i32 %83, -1
  %118 = load i16, ptr %82, align 2, !tbaa !10
  %119 = zext i16 %118 to i32
  %120 = lshr i32 %119, %117
  %121 = zext i32 %117 to i64
  %122 = getelementptr inbounds [5 x i32], ptr @multies, i64 0, i64 %121
  %123 = load i32, ptr %122, align 4, !tbaa !17
  %124 = mul i32 %120, %123
  %125 = lshr i32 %124, 17
  %126 = getelementptr inbounds [10 x i32], ptr @DECPOWERS, i64 0, i64 %121
  %127 = load i32, ptr %126, align 4, !tbaa !17
  %128 = mul i32 %125, %127
  %129 = icmp eq i32 %128, %119
  %130 = select i1 %129, i32 %80, i32 1
  br label %131

131:                                              ; preds = %116, %113
  %132 = phi i32 [ %80, %113 ], [ %130, %116 ]
  %133 = phi i32 [ %115, %113 ], [ %125, %116 ]
  %134 = mul nuw nsw i32 %133, 6554
  %135 = lshr i32 %134, 16
  %136 = mul nsw i32 %135, -10
  %137 = add nsw i32 %136, %133
  %138 = zext i32 %137 to i64
  %139 = getelementptr inbounds [10 x i8], ptr @resmap, i64 0, i64 %138
  %140 = load i8, ptr %139, align 1, !tbaa !20
  %141 = zext i8 %140 to i32
  %142 = add nsw i32 %132, %141
  store i32 %142, ptr %4, align 4, !tbaa !17
  %143 = load i32, ptr %1, align 4, !tbaa !27
  %144 = icmp slt i32 %143, 1
  br i1 %144, label %183, label %145

145:                                              ; preds = %131
  store i32 %143, ptr %0, align 4, !tbaa !14
  %146 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 3
  %147 = sub i32 3, %83
  %148 = trunc i32 %135 to i16
  store i16 %148, ptr %146, align 2, !tbaa !10
  %149 = sub i32 %143, %147
  %150 = icmp slt i32 %149, 1
  br i1 %150, label %185, label %151

151:                                              ; preds = %145
  %152 = zext i32 %83 to i64
  %153 = getelementptr inbounds [5 x i32], ptr @multies, i64 0, i64 %152
  %154 = load i32, ptr %153, align 4, !tbaa !17
  %155 = getelementptr inbounds [10 x i32], ptr @DECPOWERS, i64 0, i64 %152
  %156 = load i32, ptr %155, align 4, !tbaa !17
  %157 = zext i32 %147 to i64
  %158 = getelementptr inbounds [10 x i32], ptr @DECPOWERS, i64 0, i64 %157
  %159 = load i32, ptr %158, align 4, !tbaa !17
  br label %165

160:                                              ; preds = %165
  %161 = getelementptr inbounds i16, ptr %169, i64 1
  %162 = trunc i32 %175 to i16
  store i16 %162, ptr %161, align 2, !tbaa !10
  %163 = sub i32 %181, %147
  %164 = icmp slt i32 %163, 1
  br i1 %164, label %185, label %165

165:                                              ; preds = %151, %160
  %166 = phi i32 [ %149, %151 ], [ %163, %160 ]
  %167 = phi i32 [ %135, %151 ], [ %175, %160 ]
  %168 = phi ptr [ %82, %151 ], [ %170, %160 ]
  %169 = phi ptr [ %146, %151 ], [ %161, %160 ]
  %170 = getelementptr inbounds i16, ptr %168, i64 1
  %171 = load i16, ptr %170, align 2, !tbaa !10
  %172 = zext i16 %171 to i32
  %173 = lshr i32 %172, %83
  %174 = mul i32 %173, %154
  %175 = lshr i32 %174, 17
  %176 = mul i32 %175, %156
  %177 = sub i32 %172, %176
  %178 = mul i32 %177, %159
  %179 = add i32 %178, %167
  %180 = trunc i32 %179 to i16
  store i16 %180, ptr %169, align 2, !tbaa !10
  %181 = sub i32 %166, %83
  %182 = icmp slt i32 %181, 1
  br i1 %182, label %185, label %160

183:                                              ; preds = %131, %99
  %184 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 3
  store i16 0, ptr %184, align 2, !tbaa !10
  store i32 1, ptr %0, align 4, !tbaa !14
  br label %185

185:                                              ; preds = %104, %160, %165, %183, %145
  %186 = load i32, ptr %4, align 4, !tbaa !17
  %187 = icmp eq i32 %186, 0
  br i1 %187, label %191, label %188

188:                                              ; preds = %185
  %189 = load i32, ptr %5, align 4, !tbaa !17
  %190 = or i32 %189, 32
  store i32 %190, ptr %5, align 4, !tbaa !17
  br label %191

191:                                              ; preds = %185, %188, %25, %28, %65
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @decFinalize(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2, ptr nocapture noundef %3) unnamed_addr #4 {
  %5 = alloca %struct.decNumber, align 4
  %6 = getelementptr inbounds %struct.decContext, ptr %1, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !32
  %8 = load i32, ptr %0, align 4, !tbaa !14
  %9 = sub nsw i32 %7, %8
  %10 = add nsw i32 %9, 1
  %11 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 1
  %12 = load i32, ptr %11, align 4, !tbaa !15
  %13 = icmp sgt i32 %12, %10
  br i1 %13, label %14, label %16

14:                                               ; preds = %4
  %15 = load i32, ptr %2, align 4, !tbaa !17
  br label %35

16:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #20
  %17 = icmp sgt i32 %12, %9
  br i1 %17, label %19, label %18

18:                                               ; preds = %16
  tail call fastcc void @decSetSubnormal(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3) #18
  br label %77

19:                                               ; preds = %16
  %20 = call ptr @decNumberZero(ptr noundef nonnull %5) #18
  %21 = getelementptr inbounds %struct.decNumber, ptr %5, i64 0, i32 3
  store i16 1, ptr %21, align 2, !tbaa !10
  %22 = getelementptr inbounds %struct.decNumber, ptr %5, i64 0, i32 1
  store i32 %7, ptr %22, align 4, !tbaa !15
  %23 = call fastcc i32 @decCompare(ptr noundef nonnull %0, ptr noundef nonnull %5, i8 noundef zeroext 1) #18
  %24 = icmp eq i32 %23, -2147483648
  br i1 %24, label %25, label %28

25:                                               ; preds = %19
  %26 = load i32, ptr %3, align 4, !tbaa !17
  %27 = or i32 %26, 16
  store i32 %27, ptr %3, align 4, !tbaa !17
  br label %77

28:                                               ; preds = %19
  %29 = load i32, ptr %2, align 4, !tbaa !17
  %30 = icmp slt i32 %29, 0
  %31 = icmp eq i32 %23, 0
  %32 = and i1 %31, %30
  br i1 %32, label %33, label %34

33:                                               ; preds = %28
  call fastcc void @decApplyRound(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef %29, ptr noundef %3) #18
  call fastcc void @decSetSubnormal(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef %3) #18
  br label %77

34:                                               ; preds = %28
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #20
  br label %35

35:                                               ; preds = %14, %34
  %36 = phi i32 [ %15, %14 ], [ %29, %34 ]
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %35
  call fastcc void @decApplyRound(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef %36, ptr noundef %3) #18
  br label %39

39:                                               ; preds = %38, %35
  %40 = load i32, ptr %11, align 4, !tbaa !15
  %41 = getelementptr inbounds %struct.decContext, ptr %1, i64 0, i32 1
  %42 = load i32, ptr %41, align 4, !tbaa !33
  %43 = load i32, ptr %1, align 4, !tbaa !27
  %44 = sub nsw i32 %42, %43
  %45 = add nsw i32 %44, 1
  %46 = icmp sgt i32 %40, %45
  br i1 %46, label %47, label %78

47:                                               ; preds = %39
  %48 = load i32, ptr %0, align 4, !tbaa !14
  %49 = add i32 %42, 1
  %50 = sub i32 %49, %48
  %51 = icmp sgt i32 %40, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %47
  call fastcc void @decSetOverflow(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef %3) #18
  br label %78

53:                                               ; preds = %47
  %54 = getelementptr inbounds %struct.decContext, ptr %1, i64 0, i32 6
  %55 = load i8, ptr %54, align 4, !tbaa !29
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %78, label %57

57:                                               ; preds = %53
  %58 = sub nsw i32 %40, %45
  %59 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 3
  %60 = load i16, ptr %59, align 2, !tbaa !10
  %61 = icmp eq i16 %60, 0
  %62 = icmp eq i32 %48, 1
  %63 = and i1 %62, %61
  br i1 %63, label %64, label %69

64:                                               ; preds = %57
  %65 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 2
  %66 = load i8, ptr %65, align 4, !tbaa !5
  %67 = and i8 %66, 112
  %68 = icmp eq i8 %67, 0
  br i1 %68, label %72, label %69

69:                                               ; preds = %64, %57
  %70 = call fastcc i32 @decShiftToMost(ptr noundef nonnull %59, i32 noundef %48, i32 noundef %58) #18
  store i32 %70, ptr %0, align 4, !tbaa !14
  %71 = load i32, ptr %11, align 4, !tbaa !15
  br label %72

72:                                               ; preds = %69, %64
  %73 = phi i32 [ %71, %69 ], [ %40, %64 ]
  %74 = sub nsw i32 %73, %58
  store i32 %74, ptr %11, align 4, !tbaa !15
  %75 = load i32, ptr %3, align 4, !tbaa !17
  %76 = or i32 %75, 1024
  store i32 %76, ptr %3, align 4, !tbaa !17
  br label %78

77:                                               ; preds = %33, %25, %18
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #20
  br label %78

78:                                               ; preds = %53, %39, %77, %72, %52
  ret void
}

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @decStatus(ptr noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #4 {
  %4 = and i32 %1, 221
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %14, label %6

6:                                                ; preds = %3
  %7 = and i32 %1, 1073741824
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %6
  %10 = and i32 %1, -1073741825
  br label %14

11:                                               ; preds = %6
  %12 = tail call ptr @decNumberZero(ptr noundef %0) #18
  %13 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 2
  store i8 32, ptr %13, align 4, !tbaa !5
  br label %14

14:                                               ; preds = %9, %11, %3
  %15 = phi i32 [ %10, %9 ], [ %1, %11 ], [ %1, %3 ]
  %16 = tail call ptr @decContextSetStatus(ptr noundef %2, i32 noundef %15) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @decNumberAbs(ptr noundef returned %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #4 {
  %4 = alloca %struct.decNumber, align 4
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #20
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #20
  store i32 0, ptr %5, align 4, !tbaa !17
  %6 = call ptr @decNumberZero(ptr noundef nonnull %4) #18
  %7 = getelementptr inbounds %struct.decNumber, ptr %1, i64 0, i32 1
  %8 = load i32, ptr %7, align 4, !tbaa !15
  %9 = getelementptr inbounds %struct.decNumber, ptr %4, i64 0, i32 1
  store i32 %8, ptr %9, align 4, !tbaa !15
  %10 = getelementptr inbounds %struct.decNumber, ptr %1, i64 0, i32 2
  %11 = load i8, ptr %10, align 4, !tbaa !5
  %12 = and i8 %11, -128
  %13 = call fastcc ptr @decAddOp(ptr noundef %0, ptr noundef nonnull %4, ptr noundef %1, ptr noundef %2, i8 noundef zeroext %12, ptr noundef nonnull %5) #18
  %14 = load i32, ptr %5, align 4, !tbaa !17
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %3
  call fastcc void @decStatus(ptr noundef %0, i32 noundef %14, ptr noundef %2) #18
  br label %17

17:                                               ; preds = %16, %3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #20
  ret ptr %0
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @decAddOp(ptr noundef returned %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3, i8 noundef zeroext %4, ptr nocapture noundef %5) unnamed_addr #4 {
  %7 = alloca i32, align 4
  %8 = alloca [31 x i16], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #20
  call void @llvm.lifetime.start.p0(i64 62, ptr nonnull %8) #20
  %9 = load i32, ptr %3, align 4, !tbaa !27
  %10 = getelementptr inbounds %struct.decNumber, ptr %1, i64 0, i32 2
  %11 = load i8, ptr %10, align 4, !tbaa !5
  %12 = zext i8 %11 to i32
  %13 = getelementptr inbounds %struct.decNumber, ptr %2, i64 0, i32 2
  %14 = load i8, ptr %13, align 4, !tbaa !5
  %15 = zext i8 %14 to i32
  %16 = xor i8 %14, %4
  %17 = xor i8 %16, %11
  %18 = and i8 %17, -128
  %19 = or i32 %15, %12
  %20 = and i32 %19, 112
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %44, label %22

22:                                               ; preds = %6
  %23 = and i32 %19, 48
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %22
  %26 = tail call fastcc ptr @decNaNs(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef %5) #18
  br label %403

27:                                               ; preds = %22
  %28 = and i32 %12, 64
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %38, label %30

30:                                               ; preds = %27
  %31 = and i32 %15, 64
  %32 = icmp ne i32 %31, 0
  %33 = icmp ne i8 %18, 0
  %34 = and i1 %32, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %30
  %36 = load i32, ptr %5, align 4, !tbaa !17
  %37 = or i32 %36, 128
  store i32 %37, ptr %5, align 4, !tbaa !17
  br label %403

38:                                               ; preds = %27, %30
  %39 = phi i8 [ %11, %30 ], [ %16, %27 ]
  %40 = and i8 %39, -128
  %41 = or disjoint i8 %40, 64
  %42 = tail call ptr @decNumberZero(ptr noundef %0) #18
  %43 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 2
  store i8 %41, ptr %43, align 4, !tbaa !5
  br label %403

44:                                               ; preds = %6
  %45 = getelementptr inbounds %struct.decNumber, ptr %1, i64 0, i32 3
  %46 = load i16, ptr %45, align 2, !tbaa !10
  %47 = icmp eq i16 %46, 0
  br i1 %47, label %48, label %103

48:                                               ; preds = %44
  %49 = load i32, ptr %1, align 4, !tbaa !14
  %50 = icmp eq i32 %49, 1
  %51 = and i32 %12, 112
  %52 = icmp eq i32 %51, 0
  %53 = and i1 %52, %50
  br i1 %53, label %54, label %103

54:                                               ; preds = %48
  %55 = getelementptr inbounds %struct.decNumber, ptr %1, i64 0, i32 1
  %56 = load i32, ptr %55, align 4, !tbaa !15
  store i32 0, ptr %7, align 4, !tbaa !17
  call fastcc void @decCopyFit(ptr noundef %0, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef nonnull %7, ptr noundef %5) #18
  %57 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 2
  %58 = load i8, ptr %57, align 4, !tbaa !5
  %59 = xor i8 %58, %4
  store i8 %59, ptr %57, align 4, !tbaa !5
  %60 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 1
  %61 = load i32, ptr %60, align 4, !tbaa !15
  %62 = sub nsw i32 %56, %61
  %63 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 3
  %64 = load i16, ptr %63, align 2, !tbaa !10
  %65 = icmp eq i16 %64, 0
  br i1 %65, label %66, label %83

66:                                               ; preds = %54
  %67 = load i32, ptr %0, align 4, !tbaa !14
  %68 = icmp eq i32 %67, 1
  %69 = and i8 %59, 112
  %70 = icmp eq i8 %69, 0
  %71 = select i1 %68, i1 %70, i1 false
  br i1 %71, label %72, label %83

72:                                               ; preds = %66
  %73 = icmp slt i32 %62, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %72
  store i32 %56, ptr %60, align 4, !tbaa !15
  br label %75

75:                                               ; preds = %74, %72
  %76 = icmp eq i8 %18, 0
  br i1 %76, label %102, label %77

77:                                               ; preds = %75
  %78 = getelementptr inbounds %struct.decContext, ptr %3, i64 0, i32 3
  %79 = load i32, ptr %78, align 4, !tbaa !37
  %80 = icmp eq i32 %79, 6
  br i1 %80, label %82, label %81

81:                                               ; preds = %77
  store i8 0, ptr %57, align 4, !tbaa !5
  br label %102

82:                                               ; preds = %77
  store i8 -128, ptr %57, align 4, !tbaa !5
  br label %102

83:                                               ; preds = %66, %54
  %84 = icmp slt i32 %62, 0
  br i1 %84, label %85, label %102

85:                                               ; preds = %83
  %86 = load i32, ptr %0, align 4, !tbaa !14
  %87 = sub nsw i32 %86, %62
  %88 = load i32, ptr %3, align 4, !tbaa !27
  %89 = icmp sgt i32 %87, %88
  br i1 %89, label %90, label %95

90:                                               ; preds = %85
  %91 = sub nsw i32 %86, %88
  %92 = load i32, ptr %5, align 4, !tbaa !17
  %93 = or i32 %92, 2048
  store i32 %93, ptr %5, align 4, !tbaa !17
  %94 = load i32, ptr %0, align 4, !tbaa !14
  br label %95

95:                                               ; preds = %90, %85
  %96 = phi i32 [ %94, %90 ], [ %86, %85 ]
  %97 = phi i32 [ %91, %90 ], [ %62, %85 ]
  %98 = sub nsw i32 0, %97
  %99 = tail call fastcc i32 @decShiftToMost(ptr noundef nonnull %63, i32 noundef %96, i32 noundef %98) #18
  store i32 %99, ptr %0, align 4, !tbaa !14
  %100 = load i32, ptr %60, align 4, !tbaa !15
  %101 = add nsw i32 %100, %97
  store i32 %101, ptr %60, align 4, !tbaa !15
  br label %102

102:                                              ; preds = %83, %95, %75, %82, %81
  call fastcc void @decFinalize(ptr noundef nonnull %0, ptr noundef nonnull %3, ptr noundef nonnull %7, ptr noundef %5) #18
  br label %403

103:                                              ; preds = %48, %44
  %104 = getelementptr inbounds %struct.decNumber, ptr %2, i64 0, i32 3
  %105 = load i16, ptr %104, align 2, !tbaa !10
  %106 = icmp eq i16 %105, 0
  br i1 %106, label %107, label %139

107:                                              ; preds = %103
  %108 = load i32, ptr %2, align 4, !tbaa !14
  %109 = icmp eq i32 %108, 1
  %110 = and i8 %14, 112
  %111 = icmp eq i8 %110, 0
  %112 = and i1 %111, %109
  br i1 %112, label %113, label %139

113:                                              ; preds = %107
  %114 = getelementptr inbounds %struct.decNumber, ptr %2, i64 0, i32 1
  %115 = load i32, ptr %114, align 4, !tbaa !15
  store i32 0, ptr %7, align 4, !tbaa !17
  call fastcc void @decCopyFit(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %3, ptr noundef nonnull %7, ptr noundef %5) #18
  %116 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 1
  %117 = load i32, ptr %116, align 4, !tbaa !15
  %118 = sub nsw i32 %115, %117
  %119 = icmp slt i32 %118, 0
  br i1 %119, label %120, label %138

120:                                              ; preds = %113
  %121 = load i32, ptr %0, align 4, !tbaa !14
  %122 = sub nsw i32 %121, %118
  %123 = load i32, ptr %3, align 4, !tbaa !27
  %124 = icmp sgt i32 %122, %123
  br i1 %124, label %125, label %130

125:                                              ; preds = %120
  %126 = sub nsw i32 %121, %123
  %127 = load i32, ptr %5, align 4, !tbaa !17
  %128 = or i32 %127, 2048
  store i32 %128, ptr %5, align 4, !tbaa !17
  %129 = load i32, ptr %0, align 4, !tbaa !14
  br label %130

130:                                              ; preds = %125, %120
  %131 = phi i32 [ %129, %125 ], [ %121, %120 ]
  %132 = phi i32 [ %126, %125 ], [ %118, %120 ]
  %133 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 3
  %134 = sub nsw i32 0, %132
  %135 = tail call fastcc i32 @decShiftToMost(ptr noundef nonnull %133, i32 noundef %131, i32 noundef %134) #18
  store i32 %135, ptr %0, align 4, !tbaa !14
  %136 = load i32, ptr %116, align 4, !tbaa !15
  %137 = add nsw i32 %136, %132
  store i32 %137, ptr %116, align 4, !tbaa !15
  br label %138

138:                                              ; preds = %130, %113
  call fastcc void @decFinalize(ptr noundef nonnull %0, ptr noundef nonnull %3, ptr noundef nonnull %7, ptr noundef %5) #18
  br label %403

139:                                              ; preds = %107, %103
  %140 = getelementptr inbounds %struct.decNumber, ptr %2, i64 0, i32 1
  %141 = load i32, ptr %140, align 4, !tbaa !15
  %142 = getelementptr inbounds %struct.decNumber, ptr %1, i64 0, i32 1
  %143 = load i32, ptr %142, align 4, !tbaa !15
  %144 = sub nsw i32 %141, %143
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %146, label %210

146:                                              ; preds = %139
  %147 = load i32, ptr %2, align 4, !tbaa !14
  %148 = icmp slt i32 %147, 4
  br i1 %148, label %149, label %208

149:                                              ; preds = %146
  %150 = getelementptr inbounds %struct.decContext, ptr %3, i64 0, i32 2
  %151 = load i32, ptr %150, align 4, !tbaa !32
  %152 = icmp slt i32 %141, %151
  br i1 %152, label %208, label %153

153:                                              ; preds = %149
  %154 = getelementptr inbounds %struct.decContext, ptr %3, i64 0, i32 1
  %155 = load i32, ptr %154, align 4, !tbaa !33
  %156 = sub i32 %155, %9
  %157 = add i32 %156, 1
  %158 = icmp sgt i32 %141, %157
  %159 = icmp sgt i32 %147, %9
  %160 = select i1 %158, i1 true, i1 %159
  br i1 %160, label %208, label %161

161:                                              ; preds = %153
  %162 = load i32, ptr %1, align 4, !tbaa !14
  %163 = icmp sgt i32 %162, %9
  br i1 %163, label %208, label %164

164:                                              ; preds = %161
  %165 = zext i16 %46 to i32
  %166 = icmp eq i8 %18, 0
  %167 = zext i16 %105 to i32
  br i1 %166, label %168, label %185

168:                                              ; preds = %164
  %169 = add nuw nsw i32 %167, %165
  %170 = icmp ult i32 %169, 1000
  br i1 %170, label %171, label %208

171:                                              ; preds = %168
  %172 = icmp sgt i32 %162, 2
  br i1 %172, label %178, label %173

173:                                              ; preds = %171
  %174 = sext i32 %162 to i64
  %175 = getelementptr inbounds [10 x i32], ptr @DECPOWERS, i64 0, i64 %174
  %176 = load i32, ptr %175, align 4, !tbaa !17
  %177 = icmp slt i32 %169, %176
  br i1 %177, label %178, label %208

178:                                              ; preds = %173, %171
  %179 = icmp eq ptr %0, %1
  br i1 %179, label %182, label %180

180:                                              ; preds = %178
  %181 = tail call ptr @decNumberCopy(ptr noundef %0, ptr noundef nonnull %1) #18
  br label %182

182:                                              ; preds = %180, %178
  %183 = trunc i32 %169 to i16
  %184 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 3
  store i16 %183, ptr %184, align 2, !tbaa !10
  br label %403

185:                                              ; preds = %164
  %186 = sub nsw i32 %165, %167
  %187 = icmp sgt i32 %186, 0
  br i1 %187, label %188, label %208

188:                                              ; preds = %185
  %189 = icmp eq ptr %0, %1
  br i1 %189, label %192, label %190

190:                                              ; preds = %188
  %191 = tail call ptr @decNumberCopy(ptr noundef %0, ptr noundef nonnull %1) #18
  br label %192

192:                                              ; preds = %190, %188
  %193 = trunc i32 %186 to i16
  %194 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 3
  store i16 %193, ptr %194, align 2, !tbaa !10
  %195 = load i32, ptr %0, align 4, !tbaa !14
  %196 = icmp slt i32 %195, 50
  br i1 %196, label %197, label %202

197:                                              ; preds = %192
  %198 = sext i32 %195 to i64
  %199 = getelementptr inbounds [50 x i8], ptr @d2utable, i64 0, i64 %198
  %200 = load i8, ptr %199, align 1, !tbaa !20
  %201 = zext i8 %200 to i32
  br label %205

202:                                              ; preds = %192
  %203 = add nuw nsw i32 %195, 2
  %204 = udiv i32 %203, 3
  br label %205

205:                                              ; preds = %202, %197
  %206 = phi i32 [ %201, %197 ], [ %204, %202 ]
  %207 = tail call fastcc i32 @decGetDigits(ptr noundef nonnull %194, i32 noundef %206) #18
  store i32 %207, ptr %0, align 4, !tbaa !14
  br label %403

208:                                              ; preds = %161, %153, %149, %146, %185, %168, %173
  %209 = load i32, ptr %1, align 4, !tbaa !14
  br label %262

210:                                              ; preds = %139
  %211 = icmp sgt i32 %144, -1
  br i1 %211, label %214, label %212

212:                                              ; preds = %210
  %213 = sub nsw i32 0, %144
  br label %214

214:                                              ; preds = %212, %210
  %215 = phi i8 [ %16, %212 ], [ %11, %210 ]
  %216 = phi i32 [ %213, %212 ], [ %144, %210 ]
  %217 = phi ptr [ %1, %212 ], [ %2, %210 ]
  %218 = phi ptr [ %2, %212 ], [ %1, %210 ]
  %219 = load i32, ptr %217, align 4, !tbaa !14
  %220 = add nsw i32 %219, %216
  %221 = load i32, ptr %218, align 4, !tbaa !14
  %222 = add i32 %9, 1
  %223 = add i32 %222, %221
  %224 = icmp sgt i32 %220, %223
  br i1 %224, label %225, label %242

225:                                              ; preds = %214
  %226 = sub nsw i32 %9, %219
  %227 = icmp eq i8 %18, 0
  %228 = select i1 %227, i32 1, i32 -1
  store i32 %228, ptr %7, align 4, !tbaa !17
  call fastcc void @decCopyFit(ptr noundef %0, ptr noundef nonnull %217, ptr noundef nonnull %3, ptr noundef nonnull %7, ptr noundef %5) #18
  %229 = icmp sgt i32 %226, 0
  br i1 %229, label %230, label %237

230:                                              ; preds = %225
  %231 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 3
  %232 = load i32, ptr %0, align 4, !tbaa !14
  %233 = tail call fastcc i32 @decShiftToMost(ptr noundef nonnull %231, i32 noundef %232, i32 noundef %226) #18
  store i32 %233, ptr %0, align 4, !tbaa !14
  %234 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 1
  %235 = load i32, ptr %234, align 4, !tbaa !15
  %236 = sub nsw i32 %235, %226
  store i32 %236, ptr %234, align 4, !tbaa !15
  br label %237

237:                                              ; preds = %230, %225
  br i1 %211, label %238, label %261

238:                                              ; preds = %237
  %239 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 2
  %240 = load i8, ptr %239, align 4, !tbaa !5
  %241 = xor i8 %240, %4
  store i8 %241, ptr %239, align 4, !tbaa !5
  br label %261

242:                                              ; preds = %214
  %243 = icmp ult i32 %216, 49
  br i1 %243, label %244, label %250

244:                                              ; preds = %242
  %245 = add nuw nsw i32 %216, 1
  %246 = zext nneg i32 %245 to i64
  %247 = getelementptr inbounds [50 x i8], ptr @d2utable, i64 0, i64 %246
  %248 = load i8, ptr %247, align 1, !tbaa !20
  %249 = zext i8 %248 to i32
  br label %253

250:                                              ; preds = %242
  %251 = add nuw nsw i32 %216, 3
  %252 = udiv i32 %251, 3
  br label %253

253:                                              ; preds = %244, %250
  %254 = phi i32 [ %249, %244 ], [ %252, %250 ]
  %255 = add nsw i32 %254, -1
  %256 = mul nsw i32 %255, -3
  %257 = add i32 %256, %216
  %258 = sext i32 %257 to i64
  %259 = getelementptr inbounds [10 x i32], ptr @DECPOWERS, i64 0, i64 %258
  %260 = load i32, ptr %259, align 4, !tbaa !17
  br label %262

261:                                              ; preds = %237, %238
  call fastcc void @decFinalize(ptr noundef %0, ptr noundef nonnull %3, ptr noundef nonnull %7, ptr noundef %5) #18
  br label %403

262:                                              ; preds = %253, %208
  %263 = phi i32 [ %209, %208 ], [ %221, %253 ]
  %264 = phi i32 [ %147, %208 ], [ %219, %253 ]
  %265 = phi i8 [ %11, %208 ], [ %215, %253 ]
  %266 = phi i32 [ 0, %208 ], [ %216, %253 ]
  %267 = phi i32 [ 1, %208 ], [ %260, %253 ]
  %268 = phi i32 [ 0, %208 ], [ %255, %253 ]
  %269 = phi ptr [ %2, %208 ], [ %217, %253 ]
  %270 = phi ptr [ %1, %208 ], [ %218, %253 ]
  %271 = icmp eq i8 %18, 0
  %272 = sub nsw i32 0, %267
  %273 = select i1 %271, i32 %267, i32 %272
  %274 = add nsw i32 %264, %266
  %275 = tail call i32 @llvm.smax.i32(i32 %263, i32 %274)
  %276 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 3
  %277 = icmp slt i32 %275, %9
  br i1 %277, label %278, label %282

278:                                              ; preds = %262
  %279 = icmp eq ptr %269, %0
  %280 = icmp sgt i32 %268, 0
  %281 = and i1 %280, %279
  br i1 %281, label %282, label %304

282:                                              ; preds = %278, %262
  %283 = icmp slt i32 %275, 50
  br i1 %283, label %284, label %289

284:                                              ; preds = %282
  %285 = sext i32 %275 to i64
  %286 = getelementptr inbounds [50 x i8], ptr @d2utable, i64 0, i64 %285
  %287 = load i8, ptr %286, align 1, !tbaa !20
  %288 = zext i8 %287 to i32
  br label %292

289:                                              ; preds = %282
  %290 = add nuw nsw i32 %275, 2
  %291 = udiv i32 %290, 3
  br label %292

292:                                              ; preds = %289, %284
  %293 = phi i32 [ %288, %284 ], [ %291, %289 ]
  %294 = icmp ugt i32 %293, 30
  br i1 %294, label %295, label %304

295:                                              ; preds = %292
  %296 = shl nuw nsw i32 %293, 1
  %297 = add nuw nsw i32 %296, 2
  %298 = zext nneg i32 %297 to i64
  %299 = tail call noalias ptr @malloc(i64 noundef %298) #21
  %300 = icmp eq ptr %299, null
  br i1 %300, label %301, label %304

301:                                              ; preds = %295
  %302 = load i32, ptr %5, align 4, !tbaa !17
  %303 = or i32 %302, 16
  store i32 %303, ptr %5, align 4, !tbaa !17
  br label %403

304:                                              ; preds = %292, %295, %278
  %305 = phi ptr [ %276, %278 ], [ %299, %295 ], [ %8, %292 ]
  %306 = phi ptr [ null, %278 ], [ %299, %295 ], [ null, %292 ]
  %307 = and i8 %265, -128
  %308 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 2
  store i8 %307, ptr %308, align 4, !tbaa !5
  %309 = getelementptr inbounds %struct.decNumber, ptr %270, i64 0, i32 1
  %310 = load i32, ptr %309, align 4, !tbaa !15
  %311 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 1
  store i32 %310, ptr %311, align 4, !tbaa !15
  %312 = getelementptr inbounds %struct.decNumber, ptr %270, i64 0, i32 3
  %313 = icmp slt i32 %263, 50
  br i1 %313, label %314, label %319

314:                                              ; preds = %304
  %315 = sext i32 %263 to i64
  %316 = getelementptr inbounds [50 x i8], ptr @d2utable, i64 0, i64 %315
  %317 = load i8, ptr %316, align 1, !tbaa !20
  %318 = zext i8 %317 to i32
  br label %322

319:                                              ; preds = %304
  %320 = add nuw nsw i32 %263, 2
  %321 = udiv i32 %320, 3
  br label %322

322:                                              ; preds = %319, %314
  %323 = phi i32 [ %318, %314 ], [ %321, %319 ]
  %324 = getelementptr inbounds %struct.decNumber, ptr %269, i64 0, i32 3
  %325 = icmp slt i32 %264, 50
  br i1 %325, label %326, label %331

326:                                              ; preds = %322
  %327 = sext i32 %264 to i64
  %328 = getelementptr inbounds [50 x i8], ptr @d2utable, i64 0, i64 %327
  %329 = load i8, ptr %328, align 1, !tbaa !20
  %330 = zext i8 %329 to i32
  br label %334

331:                                              ; preds = %322
  %332 = add nuw nsw i32 %264, 2
  %333 = udiv i32 %332, 3
  br label %334

334:                                              ; preds = %331, %326
  %335 = phi i32 [ %330, %326 ], [ %333, %331 ]
  %336 = call fastcc i32 @decUnitAddSub(ptr noundef nonnull %312, i32 noundef %323, ptr noundef nonnull %324, i32 noundef %335, i32 noundef %268, ptr noundef nonnull %305, i32 noundef %273) #18
  %337 = mul nsw i32 %336, 3
  store i32 %337, ptr %0, align 4, !tbaa !14
  %338 = icmp slt i32 %336, 0
  br i1 %338, label %339, label %343

339:                                              ; preds = %334
  %340 = sub nsw i32 0, %337
  store i32 %340, ptr %0, align 4, !tbaa !14
  %341 = load i8, ptr %308, align 4, !tbaa !5
  %342 = xor i8 %341, -128
  store i8 %342, ptr %308, align 4, !tbaa !5
  br label %343

343:                                              ; preds = %339, %334
  %344 = phi i32 [ %340, %339 ], [ %337, %334 ]
  store i32 0, ptr %7, align 4, !tbaa !17
  %345 = icmp eq ptr %305, %276
  br i1 %345, label %364, label %346

346:                                              ; preds = %343
  %347 = icmp sgt i32 %344, %9
  br i1 %347, label %348, label %361

348:                                              ; preds = %346
  %349 = icmp slt i32 %344, 50
  br i1 %349, label %350, label %355

350:                                              ; preds = %348
  %351 = sext i32 %344 to i64
  %352 = getelementptr inbounds [50 x i8], ptr @d2utable, i64 0, i64 %351
  %353 = load i8, ptr %352, align 1, !tbaa !20
  %354 = zext i8 %353 to i32
  br label %358

355:                                              ; preds = %348
  %356 = add nuw nsw i32 %344, 2
  %357 = udiv i32 %356, 3
  br label %358

358:                                              ; preds = %355, %350
  %359 = phi i32 [ %354, %350 ], [ %357, %355 ]
  %360 = call fastcc i32 @decGetDigits(ptr noundef nonnull %305, i32 noundef %359) #18
  store i32 %360, ptr %0, align 4, !tbaa !14
  br label %361

361:                                              ; preds = %358, %346
  %362 = phi i32 [ %360, %358 ], [ %344, %346 ]
  call fastcc void @decSetCoeff(ptr noundef nonnull %0, ptr noundef nonnull %3, ptr noundef nonnull %305, i32 noundef %362, ptr noundef nonnull %7, ptr noundef %5) #18
  %363 = load i32, ptr %0, align 4, !tbaa !14
  br label %364

364:                                              ; preds = %361, %343
  %365 = phi i32 [ %363, %361 ], [ %344, %343 ]
  %366 = icmp slt i32 %365, 50
  br i1 %366, label %367, label %372

367:                                              ; preds = %364
  %368 = sext i32 %365 to i64
  %369 = getelementptr inbounds [50 x i8], ptr @d2utable, i64 0, i64 %368
  %370 = load i8, ptr %369, align 1, !tbaa !20
  %371 = zext i8 %370 to i32
  br label %375

372:                                              ; preds = %364
  %373 = add nuw nsw i32 %365, 2
  %374 = udiv i32 %373, 3
  br label %375

375:                                              ; preds = %372, %367
  %376 = phi i32 [ %371, %367 ], [ %374, %372 ]
  %377 = call fastcc i32 @decGetDigits(ptr noundef nonnull %276, i32 noundef %376) #18
  store i32 %377, ptr %0, align 4, !tbaa !14
  call fastcc void @decFinalize(ptr noundef nonnull %0, ptr noundef nonnull %3, ptr noundef nonnull %7, ptr noundef %5) #18
  %378 = load i16, ptr %276, align 2, !tbaa !10
  %379 = icmp eq i16 %378, 0
  br i1 %379, label %380, label %400

380:                                              ; preds = %375
  %381 = load i32, ptr %0, align 4, !tbaa !14
  %382 = icmp eq i32 %381, 1
  br i1 %382, label %383, label %400

383:                                              ; preds = %380
  %384 = load i8, ptr %308, align 4, !tbaa !5
  %385 = and i8 %384, 112
  %386 = icmp eq i8 %385, 0
  %387 = icmp ne i8 %18, 0
  %388 = and i1 %387, %386
  br i1 %388, label %389, label %400

389:                                              ; preds = %383
  %390 = load i32, ptr %5, align 4, !tbaa !17
  %391 = and i32 %390, 32
  %392 = icmp eq i32 %391, 0
  br i1 %392, label %393, label %400

393:                                              ; preds = %389
  %394 = getelementptr inbounds %struct.decContext, ptr %3, i64 0, i32 3
  %395 = load i32, ptr %394, align 4, !tbaa !37
  %396 = icmp eq i32 %395, 6
  %397 = and i8 %384, 127
  %398 = select i1 %396, i8 -128, i8 0
  %399 = or disjoint i8 %397, %398
  store i8 %399, ptr %308, align 4, !tbaa !5
  br label %400

400:                                              ; preds = %393, %389, %383, %380, %375
  %401 = icmp eq ptr %306, null
  br i1 %401, label %403, label %402

402:                                              ; preds = %400
  call void @free(ptr noundef nonnull %306) #19
  br label %403

403:                                              ; preds = %182, %205, %301, %261, %138, %102, %38, %35, %25, %402, %400
  call void @llvm.lifetime.end.p0(i64 62, ptr nonnull %8) #20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #20
  ret ptr %0
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @decNumberAdd(ptr noundef returned %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #4 {
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #20
  store i32 0, ptr %5, align 4, !tbaa !17
  %6 = call fastcc ptr @decAddOp(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i8 noundef zeroext 0, ptr noundef nonnull %5) #18
  %7 = load i32, ptr %5, align 4, !tbaa !17
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %4
  tail call fastcc void @decStatus(ptr noundef %0, i32 noundef %7, ptr noundef %3) #18
  br label %10

10:                                               ; preds = %9, %4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #20
  ret ptr %0
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @decNumberAnd(ptr noundef returned %0, ptr noundef readonly %1, ptr noundef readonly %2, ptr noundef %3) local_unnamed_addr #4 {
  %5 = getelementptr inbounds %struct.decNumber, ptr %1, i64 0, i32 1
  %6 = load i32, ptr %5, align 4, !tbaa !15
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %20

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.decNumber, ptr %1, i64 0, i32 2
  %10 = load i8, ptr %9, align 4, !tbaa !5
  %11 = icmp ult i8 %10, 16
  br i1 %11, label %12, label %20

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.decNumber, ptr %2, i64 0, i32 1
  %14 = load i32, ptr %13, align 4, !tbaa !15
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.decNumber, ptr %2, i64 0, i32 2
  %18 = load i8, ptr %17, align 4, !tbaa !5
  %19 = icmp ult i8 %18, 16
  br i1 %19, label %21, label %20

20:                                               ; preds = %16, %12, %8, %4
  tail call fastcc void @decStatus(ptr noundef %0, i32 noundef 128, ptr noundef %3) #18
  br label %140

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.decNumber, ptr %1, i64 0, i32 3
  %23 = getelementptr inbounds %struct.decNumber, ptr %2, i64 0, i32 3
  %24 = getelementptr inbounds i8, ptr %0, i64 10
  %25 = load i32, ptr %1, align 4, !tbaa !14
  %26 = icmp slt i32 %25, 50
  br i1 %26, label %27, label %32

27:                                               ; preds = %21
  %28 = sext i32 %25 to i64
  %29 = getelementptr inbounds [50 x i8], ptr @d2utable, i64 0, i64 %28
  %30 = load i8, ptr %29, align 1, !tbaa !20
  %31 = zext i8 %30 to i32
  br label %35

32:                                               ; preds = %21
  %33 = add nuw nsw i32 %25, 2
  %34 = udiv i32 %33, 3
  br label %35

35:                                               ; preds = %32, %27
  %36 = phi i32 [ %31, %27 ], [ %34, %32 ]
  %37 = zext nneg i32 %36 to i64
  %38 = getelementptr inbounds i16, ptr %22, i64 %37
  %39 = getelementptr inbounds i16, ptr %38, i64 -1
  %40 = load i32, ptr %2, align 4, !tbaa !14
  %41 = icmp slt i32 %40, 50
  br i1 %41, label %42, label %47

42:                                               ; preds = %35
  %43 = sext i32 %40 to i64
  %44 = getelementptr inbounds [50 x i8], ptr @d2utable, i64 0, i64 %43
  %45 = load i8, ptr %44, align 1, !tbaa !20
  %46 = zext i8 %45 to i32
  br label %50

47:                                               ; preds = %35
  %48 = add nuw nsw i32 %40, 2
  %49 = udiv i32 %48, 3
  br label %50

50:                                               ; preds = %47, %42
  %51 = phi i32 [ %46, %42 ], [ %49, %47 ]
  %52 = zext nneg i32 %51 to i64
  %53 = getelementptr inbounds i16, ptr %23, i64 %52
  %54 = getelementptr inbounds i16, ptr %53, i64 -1
  %55 = load i32, ptr %3, align 4, !tbaa !27
  %56 = icmp slt i32 %55, 50
  br i1 %56, label %62, label %57

57:                                               ; preds = %50
  %58 = add nuw nsw i32 %55, 2
  %59 = udiv i32 %58, 3
  %60 = shl nuw nsw i32 %59, 1
  %61 = zext nneg i32 %60 to i64
  br label %70

62:                                               ; preds = %50
  %63 = sext i32 %55 to i64
  %64 = getelementptr inbounds [50 x i8], ptr @d2utable, i64 0, i64 %63
  %65 = load i8, ptr %64, align 1, !tbaa !20
  %66 = zext i8 %65 to i64
  %67 = zext i8 %65 to i32
  %68 = shl nuw nsw i64 %66, 1
  %69 = icmp eq i32 %55, 0
  br i1 %69, label %130, label %70

70:                                               ; preds = %57, %62
  %71 = phi i64 [ %61, %57 ], [ %68, %62 ]
  %72 = phi i32 [ %59, %57 ], [ %67, %62 ]
  %73 = getelementptr i8, ptr %0, i64 %71
  %74 = getelementptr i8, ptr %73, i64 8
  %75 = mul nsw i32 %72, -3
  %76 = add i32 %55, 2
  %77 = add i32 %76, %75
  %78 = zext i32 %77 to i64
  br label %79

79:                                               ; preds = %70, %125
  %80 = phi ptr [ %22, %70 ], [ %126, %125 ]
  %81 = phi ptr [ %23, %70 ], [ %127, %125 ]
  %82 = phi ptr [ %24, %70 ], [ %128, %125 ]
  %83 = icmp ugt ptr %80, %39
  br i1 %83, label %86, label %84

84:                                               ; preds = %79
  %85 = load i16, ptr %80, align 2, !tbaa !10
  br label %86

86:                                               ; preds = %79, %84
  %87 = phi i16 [ %85, %84 ], [ 0, %79 ]
  %88 = icmp ugt ptr %81, %54
  br i1 %88, label %91, label %89

89:                                               ; preds = %86
  %90 = load i16, ptr %81, align 2, !tbaa !10
  br label %91

91:                                               ; preds = %86, %89
  %92 = phi i16 [ %90, %89 ], [ 0, %86 ]
  store i16 0, ptr %82, align 2, !tbaa !10
  %93 = or i16 %92, %87
  %94 = icmp eq i16 %93, 0
  br i1 %94, label %125, label %95

95:                                               ; preds = %91
  %96 = icmp ne ptr %82, %74
  br label %97

97:                                               ; preds = %118, %95
  %98 = phi i16 [ %111, %118 ], [ 0, %95 ]
  %99 = phi i64 [ %121, %118 ], [ 0, %95 ]
  %100 = phi i16 [ %115, %118 ], [ %92, %95 ]
  %101 = phi i16 [ %113, %118 ], [ %87, %95 ]
  %102 = and i16 %101, 1
  %103 = and i16 %102, %100
  %104 = icmp eq i16 %103, 0
  br i1 %104, label %110, label %105

105:                                              ; preds = %97
  %106 = getelementptr inbounds [10 x i32], ptr @DECPOWERS, i64 0, i64 %99
  %107 = load i32, ptr %106, align 4, !tbaa !17
  %108 = trunc i32 %107 to i16
  %109 = add i16 %98, %108
  store i16 %109, ptr %82, align 2, !tbaa !10
  br label %110

110:                                              ; preds = %105, %97
  %111 = phi i16 [ %109, %105 ], [ %98, %97 ]
  %112 = urem i16 %101, 10
  %113 = udiv i16 %101, 10
  %114 = urem i16 %100, 10
  %115 = udiv i16 %100, 10
  %116 = or i16 %114, %112
  %117 = icmp ugt i16 %116, 1
  br i1 %117, label %124, label %118

118:                                              ; preds = %110
  %119 = icmp ne i64 %99, %78
  %120 = select i1 %96, i1 true, i1 %119
  %121 = add nuw nsw i64 %99, 1
  %122 = icmp ult i64 %99, 2
  %123 = select i1 %120, i1 %122, i1 false
  br i1 %123, label %97, label %125, !llvm.loop !38

124:                                              ; preds = %110
  tail call fastcc void @decStatus(ptr noundef %0, i32 noundef 128, ptr noundef nonnull %3) #18
  br label %140

125:                                              ; preds = %118, %91
  %126 = getelementptr inbounds i16, ptr %80, i64 1
  %127 = getelementptr inbounds i16, ptr %81, i64 1
  %128 = getelementptr inbounds i16, ptr %82, i64 1
  %129 = icmp ugt ptr %128, %74
  br i1 %129, label %130, label %79, !llvm.loop !39

130:                                              ; preds = %125, %62
  %131 = phi ptr [ %24, %62 ], [ %128, %125 ]
  %132 = ptrtoint ptr %131 to i64
  %133 = ptrtoint ptr %24 to i64
  %134 = sub i64 %132, %133
  %135 = lshr exact i64 %134, 1
  %136 = trunc i64 %135 to i32
  %137 = tail call fastcc i32 @decGetDigits(ptr noundef nonnull %24, i32 noundef %136) #18
  store i32 %137, ptr %0, align 4, !tbaa !14
  %138 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 1
  store i32 0, ptr %138, align 4, !tbaa !15
  %139 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 2
  store i8 0, ptr %139, align 4, !tbaa !5
  br label %140

140:                                              ; preds = %124, %130, %20
  ret ptr %0
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @decNumberCompare(ptr noundef returned %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #4 {
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #20
  store i32 0, ptr %5, align 4, !tbaa !17
  %6 = call fastcc ptr @decCompareOp(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i8 noundef zeroext 1, ptr noundef nonnull %5) #18
  %7 = load i32, ptr %5, align 4, !tbaa !17
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %4
  tail call fastcc void @decStatus(ptr noundef %0, i32 noundef %7, ptr noundef %3) #18
  br label %10

10:                                               ; preds = %9, %4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #20
  ret ptr %0
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @decCompareOp(ptr noundef returned %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3, i8 noundef zeroext %4, ptr nocapture noundef %5) unnamed_addr #4 {
  %7 = alloca i32, align 4
  %8 = icmp eq i8 %4, 4
  %9 = getelementptr inbounds %struct.decNumber, ptr %1, i64 0, i32 2
  %10 = load i8, ptr %9, align 4, !tbaa !5
  %11 = getelementptr inbounds %struct.decNumber, ptr %2, i64 0, i32 2
  %12 = load i8, ptr %11, align 4, !tbaa !5
  br i1 %8, label %13, label %19

13:                                               ; preds = %6
  %14 = icmp slt i8 %12, 0
  %15 = icmp sgt i8 %10, -1
  %16 = select i1 %14, i1 true, i1 %15
  br i1 %16, label %17, label %135

17:                                               ; preds = %13
  %18 = and i1 %15, %14
  br i1 %18, label %135, label %19

19:                                               ; preds = %6, %17
  %20 = getelementptr inbounds %struct.decNumber, ptr %1, i64 0, i32 2
  %21 = zext i8 %10 to i32
  %22 = getelementptr inbounds %struct.decNumber, ptr %2, i64 0, i32 2
  %23 = zext i8 %12 to i32
  %24 = or i8 %12, %10
  %25 = and i8 %24, 48
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %99, label %27

27:                                               ; preds = %19
  switch i8 %4, label %31 [
    i8 1, label %97
    i8 6, label %28
  ]

28:                                               ; preds = %27
  %29 = load i32, ptr %5, align 4, !tbaa !17
  %30 = or i32 %29, 1073741952
  store i32 %30, ptr %5, align 4, !tbaa !17
  br label %97

31:                                               ; preds = %27
  br i1 %8, label %32, label %84

32:                                               ; preds = %31
  %33 = and i32 %21, 48
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %79, label %35

35:                                               ; preds = %32
  %36 = and i32 %23, 48
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %79, label %38

38:                                               ; preds = %35
  %39 = and i32 %21, 16
  %40 = icmp eq i32 %39, 0
  %41 = and i32 %23, 32
  %42 = icmp eq i32 %41, 0
  %43 = or i1 %40, %42
  br i1 %43, label %44, label %79

44:                                               ; preds = %38
  %45 = and i8 %10, 32
  %46 = icmp eq i8 %45, 0
  %47 = and i8 %12, 16
  %48 = icmp eq i8 %47, 0
  %49 = or i1 %46, %48
  br i1 %49, label %50, label %79

50:                                               ; preds = %44
  %51 = getelementptr inbounds %struct.decNumber, ptr %1, i64 0, i32 3
  %52 = load i32, ptr %1, align 4, !tbaa !14
  %53 = icmp slt i32 %52, 50
  br i1 %53, label %54, label %59

54:                                               ; preds = %50
  %55 = sext i32 %52 to i64
  %56 = getelementptr inbounds [50 x i8], ptr @d2utable, i64 0, i64 %55
  %57 = load i8, ptr %56, align 1, !tbaa !20
  %58 = zext i8 %57 to i32
  br label %62

59:                                               ; preds = %50
  %60 = add nuw nsw i32 %52, 2
  %61 = udiv i32 %60, 3
  br label %62

62:                                               ; preds = %59, %54
  %63 = phi i32 [ %58, %54 ], [ %61, %59 ]
  %64 = getelementptr inbounds %struct.decNumber, ptr %2, i64 0, i32 3
  %65 = load i32, ptr %2, align 4, !tbaa !14
  %66 = icmp slt i32 %65, 50
  br i1 %66, label %67, label %72

67:                                               ; preds = %62
  %68 = sext i32 %65 to i64
  %69 = getelementptr inbounds [50 x i8], ptr @d2utable, i64 0, i64 %68
  %70 = load i8, ptr %69, align 1, !tbaa !20
  %71 = zext i8 %70 to i32
  br label %75

72:                                               ; preds = %62
  %73 = add nuw nsw i32 %65, 2
  %74 = udiv i32 %73, 3
  br label %75

75:                                               ; preds = %72, %67
  %76 = phi i32 [ %71, %67 ], [ %74, %72 ]
  %77 = tail call fastcc i32 @decUnitCompare(ptr noundef nonnull %51, i32 noundef %63, ptr noundef nonnull %64, i32 noundef %76, i32 noundef 0) #18, !range !40
  %78 = load i8, ptr %20, align 4, !tbaa !5
  br label %79

79:                                               ; preds = %44, %38, %35, %32, %75
  %80 = phi i8 [ %78, %75 ], [ %10, %32 ], [ %10, %35 ], [ %10, %38 ], [ %10, %44 ]
  %81 = phi i32 [ %77, %75 ], [ -1, %32 ], [ 1, %35 ], [ -1, %38 ], [ 1, %44 ]
  %82 = icmp sgt i8 %80, -1
  %83 = sub nsw i32 0, %81
  br i1 %82, label %104, label %112

84:                                               ; preds = %31
  %85 = and i8 %24, 16
  %86 = icmp eq i8 %85, 0
  br i1 %86, label %87, label %97

87:                                               ; preds = %84
  %88 = and i32 %21, 48
  %89 = icmp eq i32 %88, 0
  %90 = and i32 %23, 48
  %91 = icmp eq i32 %90, 0
  %92 = or i1 %89, %91
  br i1 %92, label %93, label %97

93:                                               ; preds = %87
  %94 = and i8 %10, 32
  %95 = icmp eq i8 %94, 0
  %96 = select i1 %95, i32 1, i32 -1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #20
  store i32 0, ptr %7, align 4, !tbaa !17
  br label %172

97:                                               ; preds = %84, %28, %27, %87
  %98 = tail call fastcc ptr @decNaNs(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef %3, ptr noundef %5) #18
  br label %176

99:                                               ; preds = %19
  %100 = add i8 %4, -7
  %101 = icmp ult i8 %100, 2
  %102 = zext i1 %101 to i8
  %103 = tail call fastcc i32 @decCompare(ptr noundef nonnull %1, ptr noundef nonnull %2, i8 noundef zeroext %102) #18
  br label %104

104:                                              ; preds = %99, %79
  %105 = phi i32 [ %81, %79 ], [ %103, %99 ]
  %106 = icmp eq i32 %105, -2147483648
  br i1 %106, label %107, label %110

107:                                              ; preds = %104
  %108 = load i32, ptr %5, align 4, !tbaa !17
  %109 = or i32 %108, 16
  store i32 %109, ptr %5, align 4, !tbaa !17
  br label %176

110:                                              ; preds = %104
  %111 = icmp eq i8 %4, 4
  switch i8 %4, label %144 [
    i8 6, label %112
    i8 4, label %112
    i8 1, label %112
    i8 5, label %176
  ]

112:                                              ; preds = %79, %110, %110, %110
  %113 = phi i1 [ %111, %110 ], [ %111, %110 ], [ %111, %110 ], [ true, %79 ]
  %114 = phi i32 [ %105, %110 ], [ %105, %110 ], [ %105, %110 ], [ %83, %79 ]
  %115 = icmp eq i32 %114, 0
  %116 = and i1 %113, %115
  br i1 %116, label %117, label %133

117:                                              ; preds = %112
  %118 = getelementptr inbounds %struct.decNumber, ptr %1, i64 0, i32 1
  %119 = load i32, ptr %118, align 4, !tbaa !15
  %120 = getelementptr inbounds %struct.decNumber, ptr %2, i64 0, i32 1
  %121 = load i32, ptr %120, align 4, !tbaa !15
  %122 = icmp eq i32 %119, %121
  br i1 %122, label %123, label %125

123:                                              ; preds = %117
  %124 = tail call ptr @decNumberZero(ptr noundef %0) #18
  br label %176

125:                                              ; preds = %117
  %126 = icmp slt i32 %119, %121
  %127 = select i1 %126, i32 -1, i32 1
  %128 = getelementptr inbounds %struct.decNumber, ptr %1, i64 0, i32 2
  %129 = load i8, ptr %128, align 4, !tbaa !5
  %130 = sub nsw i32 0, %127
  %131 = icmp slt i8 %129, 0
  %132 = select i1 %131, i32 %130, i32 %127
  br label %135

133:                                              ; preds = %112
  %134 = tail call ptr @decNumberZero(ptr noundef %0) #18
  br i1 %115, label %176, label %138

135:                                              ; preds = %17, %13, %125
  %136 = phi i32 [ %132, %125 ], [ -1, %13 ], [ 1, %17 ]
  %137 = tail call ptr @decNumberZero(ptr noundef %0) #18
  br label %138

138:                                              ; preds = %135, %133
  %139 = phi i32 [ %114, %133 ], [ %136, %135 ]
  %140 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 3
  store i16 1, ptr %140, align 2, !tbaa !10
  %141 = icmp slt i32 %139, 0
  br i1 %141, label %142, label %176

142:                                              ; preds = %138
  %143 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 2
  store i8 -128, ptr %143, align 4, !tbaa !5
  br label %176

144:                                              ; preds = %110
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #20
  store i32 0, ptr %7, align 4, !tbaa !17
  %145 = icmp eq i32 %105, 0
  br i1 %145, label %146, label %168

146:                                              ; preds = %144
  %147 = load i8, ptr %20, align 4, !tbaa !5
  %148 = and i8 %147, -128
  %149 = load i8, ptr %22, align 4, !tbaa !5
  %150 = and i8 %149, -128
  %151 = icmp eq i8 %148, %150
  br i1 %151, label %155, label %152

152:                                              ; preds = %146
  %153 = icmp eq i8 %148, 0
  %154 = select i1 %153, i32 1, i32 -1
  br label %168

155:                                              ; preds = %146
  %156 = and i8 %149, %147
  %157 = icmp sgt i8 %156, -1
  %158 = getelementptr inbounds %struct.decNumber, ptr %1, i64 0, i32 1
  %159 = load i32, ptr %158, align 4, !tbaa !15
  %160 = getelementptr inbounds %struct.decNumber, ptr %2, i64 0, i32 1
  %161 = load i32, ptr %160, align 4, !tbaa !15
  br i1 %157, label %165, label %162

162:                                              ; preds = %155
  %163 = icmp slt i32 %159, %161
  %164 = select i1 %163, i32 1, i32 -1
  br label %168

165:                                              ; preds = %155
  %166 = icmp sgt i32 %159, %161
  %167 = select i1 %166, i32 1, i32 -1
  br label %168

168:                                              ; preds = %152, %162, %165, %144
  %169 = phi i32 [ %105, %144 ], [ %154, %152 ], [ %164, %162 ], [ %167, %165 ]
  switch i8 %4, label %172 [
    i8 8, label %170
    i8 3, label %170
  ]

170:                                              ; preds = %168, %168
  %171 = sub nsw i32 0, %169
  br label %172

172:                                              ; preds = %93, %168, %170
  %173 = phi i32 [ %171, %170 ], [ %169, %168 ], [ %96, %93 ]
  %174 = icmp sgt i32 %173, 0
  %175 = select i1 %174, ptr %1, ptr %2
  call fastcc void @decCopyFit(ptr noundef %0, ptr noundef %175, ptr noundef %3, ptr noundef nonnull %7, ptr noundef %5) #18
  call fastcc void @decFinalize(ptr noundef %0, ptr noundef %3, ptr noundef nonnull %7, ptr noundef %5) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #20
  br label %176

176:                                              ; preds = %97, %123, %110, %138, %142, %133, %172, %107
  ret ptr %0
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @decNumberCompareSignal(ptr noundef returned %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #4 {
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #20
  store i32 0, ptr %5, align 4, !tbaa !17
  %6 = call fastcc ptr @decCompareOp(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i8 noundef zeroext 6, ptr noundef nonnull %5) #18
  %7 = load i32, ptr %5, align 4, !tbaa !17
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %4
  tail call fastcc void @decStatus(ptr noundef %0, i32 noundef %7, ptr noundef %3) #18
  br label %10

10:                                               ; preds = %9, %4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #20
  ret ptr %0
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @decNumberCompareTotal(ptr noundef returned %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #4 {
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #20
  store i32 0, ptr %5, align 4, !tbaa !17
  %6 = call fastcc ptr @decCompareOp(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i8 noundef zeroext 4, ptr noundef nonnull %5) #18
  %7 = load i32, ptr %5, align 4, !tbaa !17
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %4
  tail call fastcc void @decStatus(ptr noundef %0, i32 noundef %7, ptr noundef %3) #18
  br label %10

10:                                               ; preds = %9, %4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #20
  ret ptr %0
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @decNumberCompareTotalMag(ptr noundef returned %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #4 {
  %5 = alloca i32, align 4
  %6 = alloca [3 x %struct.decNumber], align 16
  %7 = alloca [3 x %struct.decNumber], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #20
  store i32 0, ptr %5, align 4, !tbaa !17
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %6) #20
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %7) #20
  %8 = getelementptr inbounds %struct.decNumber, ptr %1, i64 0, i32 2
  %9 = load i8, ptr %8, align 4, !tbaa !5
  %10 = icmp sgt i8 %9, -1
  br i1 %10, label %38, label %11

11:                                               ; preds = %4
  %12 = load i32, ptr %1, align 4, !tbaa !14
  %13 = icmp slt i32 %12, 50
  br i1 %13, label %17, label %14

14:                                               ; preds = %11
  %15 = add nuw nsw i32 %12, 2
  %16 = udiv i32 %15, 3
  br label %24

17:                                               ; preds = %11
  %18 = sext i32 %12 to i64
  %19 = getelementptr inbounds [50 x i8], ptr @d2utable, i64 0, i64 %18
  %20 = load i8, ptr %19, align 1, !tbaa !20
  %21 = zext i8 %20 to i32
  %22 = add nsw i64 %18, -40
  %23 = icmp ult i64 %22, 10
  br i1 %23, label %24, label %31

24:                                               ; preds = %14, %17
  %25 = phi i32 [ %16, %14 ], [ %21, %17 ]
  %26 = shl nuw nsw i32 %25, 1
  %27 = add nuw nsw i32 %26, 10
  %28 = zext nneg i32 %27 to i64
  %29 = tail call noalias ptr @malloc(i64 noundef %28) #21
  %30 = icmp eq ptr %29, null
  br i1 %30, label %86, label %31

31:                                               ; preds = %24, %17
  %32 = phi ptr [ null, %17 ], [ %29, %24 ]
  %33 = phi ptr [ %6, %17 ], [ %29, %24 ]
  %34 = getelementptr inbounds %struct.decNumber, ptr %33, i64 0, i32 2
  %35 = call ptr @decNumberCopy(ptr noundef nonnull %33, ptr noundef nonnull %1) #18
  %36 = load i8, ptr %34, align 4, !tbaa !5
  %37 = and i8 %36, 127
  store i8 %37, ptr %34, align 4, !tbaa !5
  br label %38

38:                                               ; preds = %31, %4
  %39 = phi ptr [ %33, %31 ], [ %1, %4 ]
  %40 = phi ptr [ %32, %31 ], [ null, %4 ]
  %41 = getelementptr inbounds %struct.decNumber, ptr %2, i64 0, i32 2
  %42 = load i8, ptr %41, align 4, !tbaa !5
  %43 = icmp sgt i8 %42, -1
  br i1 %43, label %72, label %44

44:                                               ; preds = %38
  %45 = load i32, ptr %2, align 4, !tbaa !14
  %46 = icmp slt i32 %45, 50
  br i1 %46, label %50, label %47

47:                                               ; preds = %44
  %48 = add nuw nsw i32 %45, 2
  %49 = udiv i32 %48, 3
  br label %57

50:                                               ; preds = %44
  %51 = sext i32 %45 to i64
  %52 = getelementptr inbounds [50 x i8], ptr @d2utable, i64 0, i64 %51
  %53 = load i8, ptr %52, align 1, !tbaa !20
  %54 = zext i8 %53 to i32
  %55 = add nsw i64 %51, -40
  %56 = icmp ult i64 %55, 10
  br i1 %56, label %57, label %65

57:                                               ; preds = %47, %50
  %58 = phi i32 [ %49, %47 ], [ %54, %50 ]
  %59 = shl nuw nsw i32 %58, 1
  %60 = add nuw nsw i32 %59, 10
  %61 = zext nneg i32 %60 to i64
  %62 = call noalias ptr @malloc(i64 noundef %61) #21
  %63 = icmp eq ptr %62, null
  br i1 %63, label %64, label %65

64:                                               ; preds = %57
  store i32 16, ptr %5, align 4, !tbaa !17
  br label %76

65:                                               ; preds = %57, %50
  %66 = phi ptr [ null, %50 ], [ %62, %57 ]
  %67 = phi ptr [ %7, %50 ], [ %62, %57 ]
  %68 = getelementptr inbounds %struct.decNumber, ptr %67, i64 0, i32 2
  %69 = call ptr @decNumberCopy(ptr noundef nonnull %67, ptr noundef nonnull %2) #18
  %70 = load i8, ptr %68, align 4, !tbaa !5
  %71 = and i8 %70, 127
  store i8 %71, ptr %68, align 4, !tbaa !5
  br label %72

72:                                               ; preds = %65, %38
  %73 = phi ptr [ %67, %65 ], [ %2, %38 ]
  %74 = phi ptr [ %66, %65 ], [ null, %38 ]
  %75 = call fastcc ptr @decCompareOp(ptr noundef %0, ptr noundef nonnull %39, ptr noundef nonnull %73, ptr noundef %3, i8 noundef zeroext 4, ptr noundef nonnull %5) #18
  br label %76

76:                                               ; preds = %72, %64
  %77 = phi ptr [ null, %64 ], [ %74, %72 ]
  %78 = icmp eq ptr %40, null
  br i1 %78, label %80, label %79

79:                                               ; preds = %76
  call void @free(ptr noundef nonnull %40) #19
  br label %80

80:                                               ; preds = %79, %76
  %81 = icmp eq ptr %77, null
  br i1 %81, label %83, label %82

82:                                               ; preds = %80
  call void @free(ptr noundef nonnull %77) #19
  br label %83

83:                                               ; preds = %82, %80
  %84 = load i32, ptr %5, align 4, !tbaa !17
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %88, label %86

86:                                               ; preds = %24, %83
  %87 = phi i32 [ %84, %83 ], [ 16, %24 ]
  call fastcc void @decStatus(ptr noundef %0, i32 noundef %87, ptr noundef %3) #18
  br label %88

88:                                               ; preds = %86, %83
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %7) #20
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %6) #20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #20
  ret ptr %0
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local noundef ptr @decNumberCopy(ptr noundef returned writeonly %0, ptr noundef readonly %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, %1
  br i1 %3, label %41, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.decNumber, ptr %1, i64 0, i32 2
  %6 = load i8, ptr %5, align 4, !tbaa !5
  %7 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 2
  store i8 %6, ptr %7, align 4, !tbaa !5
  %8 = load <2 x i32>, ptr %1, align 4, !tbaa !17
  store <2 x i32> %8, ptr %0, align 4, !tbaa !17
  %9 = getelementptr inbounds i8, ptr %1, i64 10
  %10 = load i16, ptr %9, align 2, !tbaa !10
  %11 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 3
  store i16 %10, ptr %11, align 2, !tbaa !10
  %12 = extractelement <2 x i32> %8, i64 0
  %13 = icmp sgt i32 %12, 3
  br i1 %13, label %14, label %41

14:                                               ; preds = %4
  %15 = getelementptr %struct.decNumber, ptr %0, i64 1
  %16 = icmp ult i32 %12, 50
  br i1 %16, label %20, label %17

17:                                               ; preds = %14
  %18 = add nuw nsw i32 %12, 2
  %19 = udiv i32 %18, 3
  br label %27

20:                                               ; preds = %14
  %21 = zext nneg i32 %12 to i64
  %22 = getelementptr inbounds [50 x i8], ptr @d2utable, i64 0, i64 %21
  %23 = load i8, ptr %22, align 1, !tbaa !20
  %24 = zext i8 %23 to i32
  %25 = add nsw i64 %21, -4
  %26 = icmp ult i64 %25, 46
  br i1 %26, label %27, label %41

27:                                               ; preds = %17, %20
  %28 = phi i32 [ %19, %17 ], [ %24, %20 ]
  %29 = shl nuw nsw i32 %28, 1
  %30 = zext nneg i32 %29 to i64
  %31 = getelementptr i8, ptr %1, i64 %30
  %32 = getelementptr i8, ptr %31, i64 10
  %33 = getelementptr %struct.decNumber, ptr %1, i64 1
  br label %34

34:                                               ; preds = %27, %34
  %35 = phi ptr [ %39, %34 ], [ %15, %27 ]
  %36 = phi ptr [ %38, %34 ], [ %33, %27 ]
  %37 = load i16, ptr %36, align 2, !tbaa !10
  store i16 %37, ptr %35, align 2, !tbaa !10
  %38 = getelementptr inbounds i16, ptr %36, i64 1
  %39 = getelementptr inbounds i16, ptr %35, i64 1
  %40 = icmp ult ptr %38, %32
  br i1 %40, label %34, label %41, !llvm.loop !41

41:                                               ; preds = %34, %20, %4, %2
  ret ptr %0
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @decNumberDivide(ptr noundef returned %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #4 {
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #20
  store i32 0, ptr %5, align 4, !tbaa !17
  %6 = call fastcc ptr @decDivideOp(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i8 noundef zeroext -128, ptr noundef nonnull %5) #18
  %7 = load i32, ptr %5, align 4, !tbaa !17
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %4
  tail call fastcc void @decStatus(ptr noundef %0, i32 noundef %7, ptr noundef %3) #18
  br label %10

10:                                               ; preds = %9, %4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #20
  ret ptr %0
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @decDivideOp(ptr noundef returned %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3, i8 noundef zeroext %4, ptr nocapture noundef %5) unnamed_addr #4 {
  %7 = alloca [17 x i16], align 16
  %8 = alloca [25 x i16], align 16
  %9 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 34, ptr nonnull %7) #20
  call void @llvm.lifetime.start.p0(i64 50, ptr nonnull %8) #20
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #20
  %10 = load i32, ptr %3, align 4, !tbaa !27
  %11 = getelementptr inbounds %struct.decNumber, ptr %1, i64 0, i32 2
  %12 = load i8, ptr %11, align 4, !tbaa !5
  %13 = zext i8 %12 to i32
  %14 = getelementptr inbounds %struct.decNumber, ptr %2, i64 0, i32 2
  %15 = load i8, ptr %14, align 4, !tbaa !5
  %16 = zext i8 %15 to i32
  %17 = xor i8 %15, %12
  %18 = and i8 %17, -128
  %19 = or i32 %16, %13
  %20 = and i32 %19, 112
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %61, label %22

22:                                               ; preds = %6
  %23 = and i32 %19, 48
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %22
  %26 = tail call fastcc ptr @decNaNs(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef %5) #18
  br label %698

27:                                               ; preds = %22
  %28 = and i32 %13, 64
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %43, label %30

30:                                               ; preds = %27
  %31 = and i32 %16, 64
  %32 = icmp eq i32 %31, 0
  %33 = and i8 %4, 80
  %34 = icmp eq i8 %33, 0
  %35 = and i1 %34, %32
  br i1 %35, label %39, label %36

36:                                               ; preds = %30
  %37 = load i32, ptr %5, align 4, !tbaa !17
  %38 = or i32 %37, 128
  store i32 %38, ptr %5, align 4, !tbaa !17
  br label %698

39:                                               ; preds = %30
  %40 = tail call ptr @decNumberZero(ptr noundef %0) #18
  %41 = or disjoint i8 %18, 64
  %42 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 2
  store i8 %41, ptr %42, align 4, !tbaa !5
  br label %698

43:                                               ; preds = %27
  store i32 0, ptr %9, align 4, !tbaa !17
  %44 = and i8 %4, 80
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %43
  call fastcc void @decCopyFit(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %3, ptr noundef nonnull %9, ptr noundef %5) #18
  br label %60

47:                                               ; preds = %43
  %48 = tail call ptr @decNumberZero(ptr noundef %0) #18
  %49 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 2
  store i8 %18, ptr %49, align 4, !tbaa !5
  %50 = icmp sgt i8 %4, -1
  br i1 %50, label %60, label %51

51:                                               ; preds = %47
  %52 = getelementptr inbounds %struct.decContext, ptr %3, i64 0, i32 2
  %53 = load i32, ptr %52, align 4, !tbaa !32
  %54 = load i32, ptr %3, align 4, !tbaa !27
  %55 = add i32 %53, 1
  %56 = sub i32 %55, %54
  %57 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 1
  store i32 %56, ptr %57, align 4, !tbaa !15
  %58 = load i32, ptr %5, align 4, !tbaa !17
  %59 = or i32 %58, 1024
  store i32 %59, ptr %5, align 4, !tbaa !17
  br label %60

60:                                               ; preds = %47, %51, %46
  call fastcc void @decFinalize(ptr noundef %0, ptr noundef nonnull %3, ptr noundef nonnull %9, ptr noundef %5) #18
  br label %698

61:                                               ; preds = %6
  %62 = getelementptr inbounds i8, ptr %2, i64 10
  %63 = load i16, ptr %62, align 2, !tbaa !10
  %64 = icmp eq i16 %63, 0
  br i1 %64, label %65, label %96

65:                                               ; preds = %61
  %66 = load i32, ptr %2, align 4, !tbaa !14
  %67 = icmp eq i32 %66, 1
  %68 = and i32 %16, 112
  %69 = icmp eq i32 %68, 0
  %70 = and i1 %69, %67
  br i1 %70, label %71, label %96

71:                                               ; preds = %65
  %72 = getelementptr inbounds %struct.decNumber, ptr %1, i64 0, i32 3
  %73 = load i16, ptr %72, align 2, !tbaa !10
  %74 = icmp eq i16 %73, 0
  br i1 %74, label %75, label %85

75:                                               ; preds = %71
  %76 = load i32, ptr %1, align 4, !tbaa !14
  %77 = icmp eq i32 %76, 1
  %78 = and i32 %13, 112
  %79 = icmp eq i32 %78, 0
  %80 = and i1 %79, %77
  br i1 %80, label %81, label %85

81:                                               ; preds = %75
  %82 = tail call ptr @decNumberZero(ptr noundef %0) #18
  %83 = load i32, ptr %5, align 4, !tbaa !17
  %84 = or i32 %83, 8
  store i32 %84, ptr %5, align 4, !tbaa !17
  br label %698

85:                                               ; preds = %75, %71
  %86 = tail call ptr @decNumberZero(ptr noundef %0) #18
  %87 = and i8 %4, 80
  %88 = icmp eq i8 %87, 0
  %89 = load i32, ptr %5, align 4, !tbaa !17
  br i1 %88, label %92, label %90

90:                                               ; preds = %85
  %91 = or i32 %89, 128
  store i32 %91, ptr %5, align 4, !tbaa !17
  br label %698

92:                                               ; preds = %85
  %93 = or i32 %89, 2
  store i32 %93, ptr %5, align 4, !tbaa !17
  %94 = or disjoint i8 %18, 64
  %95 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 2
  store i8 %94, ptr %95, align 4, !tbaa !5
  br label %698

96:                                               ; preds = %65, %61
  %97 = getelementptr inbounds i8, ptr %1, i64 10
  %98 = load i16, ptr %97, align 2, !tbaa !10
  %99 = icmp eq i16 %98, 0
  %100 = load i32, ptr %1, align 4, !tbaa !14
  %101 = icmp eq i32 %100, 1
  %102 = select i1 %99, i1 %101, i1 false
  br i1 %102, label %103, label %131

103:                                              ; preds = %96
  %104 = and i8 %12, 112
  %105 = icmp eq i8 %104, 0
  br i1 %105, label %106, label %131

106:                                              ; preds = %103
  %107 = icmp sgt i8 %4, -1
  br i1 %107, label %117, label %108

108:                                              ; preds = %106
  store i32 0, ptr %9, align 4, !tbaa !17
  %109 = getelementptr inbounds %struct.decNumber, ptr %1, i64 0, i32 1
  %110 = load i32, ptr %109, align 4, !tbaa !15
  %111 = getelementptr inbounds %struct.decNumber, ptr %2, i64 0, i32 1
  %112 = load i32, ptr %111, align 4, !tbaa !15
  %113 = sub nsw i32 %110, %112
  %114 = tail call ptr @decNumberCopy(ptr noundef %0, ptr noundef nonnull %1) #18
  %115 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 2
  store i8 %18, ptr %115, align 4, !tbaa !5
  %116 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 1
  store i32 %113, ptr %116, align 4, !tbaa !15
  call fastcc void @decFinalize(ptr noundef %0, ptr noundef nonnull %3, ptr noundef nonnull %9, ptr noundef %5) #18
  br label %698

117:                                              ; preds = %106
  %118 = and i8 %4, 32
  %119 = icmp eq i8 %118, 0
  br i1 %119, label %123, label %120

120:                                              ; preds = %117
  %121 = tail call ptr @decNumberZero(ptr noundef %0) #18
  %122 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 2
  store i8 %18, ptr %122, align 4, !tbaa !5
  br label %698

123:                                              ; preds = %117
  %124 = getelementptr inbounds %struct.decNumber, ptr %2, i64 0, i32 1
  %125 = load i32, ptr %124, align 4, !tbaa !15
  %126 = tail call ptr @decNumberCopy(ptr noundef %0, ptr noundef nonnull %1) #18
  %127 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 1
  %128 = load i32, ptr %127, align 4, !tbaa !15
  %129 = icmp slt i32 %125, %128
  br i1 %129, label %130, label %698

130:                                              ; preds = %123
  store i32 %125, ptr %127, align 4, !tbaa !15
  br label %698

131:                                              ; preds = %96, %103
  %132 = phi i32 [ 1, %103 ], [ %100, %96 ]
  %133 = getelementptr inbounds %struct.decNumber, ptr %1, i64 0, i32 1
  %134 = load i32, ptr %133, align 4, !tbaa !15
  %135 = getelementptr inbounds %struct.decNumber, ptr %2, i64 0, i32 1
  %136 = load i32, ptr %135, align 4, !tbaa !15
  %137 = load i32, ptr %2, align 4, !tbaa !14
  %138 = add i32 %134, %132
  %139 = add i32 %136, %137
  %140 = sub i32 %138, %139
  %141 = icmp sgt i32 %140, -1
  %142 = zext i8 %4 to i32
  %143 = icmp eq i8 %4, -128
  %144 = or i1 %143, %141
  br i1 %144, label %159, label %145

145:                                              ; preds = %131
  %146 = and i32 %142, 32
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %151, label %148

148:                                              ; preds = %145
  %149 = tail call ptr @decNumberZero(ptr noundef %0) #18
  %150 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 2
  store i8 %18, ptr %150, align 4, !tbaa !5
  br label %698

151:                                              ; preds = %145
  %152 = icmp sgt i32 %134, %136
  br i1 %152, label %159, label %153

153:                                              ; preds = %151
  %154 = and i32 %142, 64
  %155 = icmp ne i32 %154, 0
  %156 = icmp ne i32 %140, -1
  %157 = or i1 %155, %156
  br i1 %157, label %158, label %159

158:                                              ; preds = %153
  store i32 0, ptr %9, align 4, !tbaa !17
  call fastcc void @decCopyFit(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %3, ptr noundef nonnull %9, ptr noundef %5) #18
  call fastcc void @decFinalize(ptr noundef %0, ptr noundef nonnull %3, ptr noundef nonnull %9, ptr noundef %5) #18
  br label %698

159:                                              ; preds = %151, %153, %131
  %160 = icmp slt i32 %10, 47
  br i1 %160, label %161, label %167

161:                                              ; preds = %159
  %162 = add nsw i32 %10, 3
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds [50 x i8], ptr @d2utable, i64 0, i64 %163
  %165 = load i8, ptr %164, align 1, !tbaa !20
  %166 = zext i8 %165 to i32
  br label %170

167:                                              ; preds = %159
  %168 = add nuw nsw i32 %10, 5
  %169 = udiv i32 %168, 3
  br label %170

170:                                              ; preds = %167, %161
  %171 = phi i32 [ %166, %161 ], [ %169, %167 ]
  %172 = zext nneg i32 %171 to i64
  %173 = icmp ugt i32 %171, 17
  br i1 %173, label %174, label %181

174:                                              ; preds = %170
  %175 = shl nuw nsw i64 %172, 1
  %176 = tail call noalias ptr @malloc(i64 noundef %175) #21
  %177 = icmp eq ptr %176, null
  br i1 %177, label %178, label %181

178:                                              ; preds = %174
  %179 = load i32, ptr %5, align 4, !tbaa !17
  %180 = or i32 %179, 16
  store i32 %180, ptr %5, align 4, !tbaa !17
  br label %698

181:                                              ; preds = %174, %170
  %182 = phi ptr [ null, %170 ], [ %176, %174 ]
  %183 = phi ptr [ %7, %170 ], [ %176, %174 ]
  %184 = add nsw i32 %137, %10
  %185 = add nsw i32 %184, -1
  %186 = icmp slt i32 %132, %184
  %187 = select i1 %186, i32 %185, i32 %132
  %188 = icmp slt i32 %187, 50
  br i1 %188, label %189, label %194

189:                                              ; preds = %181
  %190 = sext i32 %187 to i64
  %191 = getelementptr inbounds [50 x i8], ptr @d2utable, i64 0, i64 %190
  %192 = load i8, ptr %191, align 1, !tbaa !20
  %193 = zext i8 %192 to i32
  br label %197

194:                                              ; preds = %181
  %195 = add nuw nsw i32 %187, 2
  %196 = udiv i32 %195, 3
  br label %197

197:                                              ; preds = %194, %189
  %198 = phi i32 [ %193, %189 ], [ %196, %194 ]
  %199 = add nuw nsw i32 %198, 2
  %200 = icmp sgt i8 %4, -1
  %201 = add nuw nsw i32 %198, 3
  %202 = select i1 %200, i32 %201, i32 %199
  %203 = icmp ugt i32 %202, 24
  br i1 %203, label %204, label %213

204:                                              ; preds = %197
  %205 = shl nuw nsw i32 %202, 1
  %206 = add nuw nsw i32 %205, 2
  %207 = zext nneg i32 %206 to i64
  %208 = tail call noalias ptr @malloc(i64 noundef %207) #21
  %209 = icmp eq ptr %208, null
  br i1 %209, label %210, label %213

210:                                              ; preds = %204
  %211 = load i32, ptr %5, align 4, !tbaa !17
  %212 = or i32 %211, 16
  store i32 %212, ptr %5, align 4, !tbaa !17
  br label %695

213:                                              ; preds = %204, %197
  %214 = phi ptr [ null, %197 ], [ %208, %204 ]
  %215 = phi ptr [ %8, %197 ], [ %208, %204 ]
  %216 = zext nneg i32 %202 to i64
  %217 = getelementptr inbounds i16, ptr %215, i64 %216
  %218 = getelementptr inbounds i16, ptr %217, i64 -1
  %219 = icmp slt i32 %132, 50
  br i1 %219, label %223, label %220

220:                                              ; preds = %213
  %221 = add nuw nsw i32 %132, 2
  %222 = udiv i32 %221, 3
  br label %229

223:                                              ; preds = %213
  %224 = sext i32 %132 to i64
  %225 = getelementptr inbounds [50 x i8], ptr @d2utable, i64 0, i64 %224
  %226 = load i8, ptr %225, align 1, !tbaa !20
  %227 = zext i8 %226 to i32
  %228 = icmp eq i32 %132, 0
  br i1 %228, label %251, label %229

229:                                              ; preds = %220, %223
  %230 = phi i32 [ %222, %220 ], [ %227, %223 ]
  %231 = shl nuw nsw i32 %230, 1
  %232 = add nuw nsw i32 %231, 8
  %233 = zext nneg i32 %232 to i64
  %234 = shl nuw nsw i64 %216, 1
  %235 = add nsw i64 %234, -2
  %236 = shl nuw nsw i32 %230, 1
  %237 = zext nneg i32 %236 to i64
  %238 = add nuw nsw i64 %237, 9
  %239 = tail call i64 @llvm.smin.i64(i64 %233, i64 11)
  %240 = sub nuw nsw i64 %238, %239
  %241 = and i64 %240, -2
  %242 = sub nsw i64 %235, %241
  %243 = getelementptr i8, ptr %215, i64 %242
  %244 = add nuw nsw i64 %237, 8
  %245 = sub nsw i64 %244, %241
  %246 = getelementptr i8, ptr %1, i64 %245
  %247 = add nuw nsw i64 %241, 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(1) %243, ptr noundef nonnull align 2 dereferenceable(1) %246, i64 %247, i1 false), !tbaa !10
  %248 = add nsw i64 %234, -4
  %249 = sub nsw i64 %248, %241
  %250 = getelementptr i8, ptr %215, i64 %249
  br label %251

251:                                              ; preds = %229, %223
  %252 = phi ptr [ %218, %223 ], [ %250, %229 ]
  %253 = icmp ult ptr %252, %215
  br i1 %253, label %258, label %254

254:                                              ; preds = %251, %254
  %255 = phi ptr [ %256, %254 ], [ %252, %251 ]
  store i16 0, ptr %255, align 2, !tbaa !10
  %256 = getelementptr inbounds i16, ptr %255, i64 -1
  %257 = icmp ult ptr %256, %215
  br i1 %257, label %258, label %254, !llvm.loop !42

258:                                              ; preds = %254, %251
  %259 = icmp slt i32 %137, 50
  br i1 %259, label %260, label %265

260:                                              ; preds = %258
  %261 = sext i32 %137 to i64
  %262 = getelementptr inbounds [50 x i8], ptr @d2utable, i64 0, i64 %261
  %263 = load i8, ptr %262, align 1, !tbaa !20
  %264 = zext i8 %263 to i32
  br label %268

265:                                              ; preds = %258
  %266 = add nuw nsw i32 %137, 2
  %267 = udiv i32 %266, 3
  br label %268

268:                                              ; preds = %265, %260
  %269 = phi i32 [ %264, %260 ], [ %267, %265 ]
  %270 = shl nuw nsw i32 %269, 1
  %271 = zext nneg i32 %270 to i64
  %272 = add nuw nsw i64 %271, 8
  %273 = getelementptr inbounds i8, ptr %2, i64 %272
  %274 = load i16, ptr %273, align 2, !tbaa !10
  %275 = zext i16 %274 to i32
  %276 = icmp ugt i32 %269, 1
  %277 = zext i1 %276 to i32
  %278 = add nuw nsw i32 %275, %277
  %279 = mul nuw nsw i32 %275, 1000
  br i1 %276, label %280, label %289

280:                                              ; preds = %268
  %281 = getelementptr i8, ptr %2, i64 %271
  %282 = getelementptr i8, ptr %281, i64 6
  %283 = load i16, ptr %282, align 2, !tbaa !10
  %284 = zext i16 %283 to i32
  %285 = icmp ne i32 %269, 2
  %286 = zext i1 %285 to i32
  %287 = or disjoint i32 %279, %286
  %288 = add nuw nsw i32 %287, %284
  br label %289

289:                                              ; preds = %280, %268
  %290 = phi i32 [ %279, %268 ], [ %288, %280 ]
  %291 = load i16, ptr %218, align 2, !tbaa !10
  %292 = zext i16 %291 to i32
  %293 = load i32, ptr getelementptr inbounds ([10 x i32], ptr @DECPOWERS, i64 0, i64 1), align 4, !tbaa !17
  %294 = icmp ugt i32 %293, %292
  br i1 %294, label %295, label %298

295:                                              ; preds = %298, %289
  %296 = phi i32 [ %140, %289 ], [ %301, %298 ]
  %297 = icmp ugt i32 %293, %275
  br i1 %297, label %312, label %305

298:                                              ; preds = %289, %298
  %299 = phi ptr [ %302, %298 ], [ getelementptr inbounds ([10 x i32], ptr @DECPOWERS, i64 0, i64 1), %289 ]
  %300 = phi i32 [ %301, %298 ], [ %140, %289 ]
  %301 = add nsw i32 %300, -1
  %302 = getelementptr inbounds i32, ptr %299, i64 1
  %303 = load i32, ptr %302, align 4, !tbaa !17
  %304 = icmp ugt i32 %303, %292
  br i1 %304, label %295, label %298, !llvm.loop !43

305:                                              ; preds = %295, %305
  %306 = phi ptr [ %309, %305 ], [ getelementptr inbounds ([10 x i32], ptr @DECPOWERS, i64 0, i64 1), %295 ]
  %307 = phi i32 [ %308, %305 ], [ %296, %295 ]
  %308 = add nsw i32 %307, 1
  %309 = getelementptr inbounds i32, ptr %306, i64 1
  %310 = load i32, ptr %309, align 4, !tbaa !17
  %311 = icmp ugt i32 %310, %275
  br i1 %311, label %312, label %305, !llvm.loop !44

312:                                              ; preds = %305, %295
  %313 = phi i32 [ %296, %295 ], [ %308, %305 ]
  br i1 %200, label %314, label %351

314:                                              ; preds = %312
  br i1 %219, label %315, label %320

315:                                              ; preds = %314
  %316 = sext i32 %132 to i64
  %317 = getelementptr inbounds [50 x i8], ptr @d2utable, i64 0, i64 %316
  %318 = load i8, ptr %317, align 1, !tbaa !20
  %319 = zext i8 %318 to i32
  br label %323

320:                                              ; preds = %314
  %321 = add nuw nsw i32 %132, 2
  %322 = udiv i32 %321, 3
  br label %323

323:                                              ; preds = %320, %315
  %324 = phi i32 [ %319, %315 ], [ %322, %320 ]
  %325 = sub nsw i32 %201, %324
  %326 = mul nsw i32 %325, 3
  %327 = icmp slt i32 %313, 0
  br i1 %327, label %328, label %330

328:                                              ; preds = %323
  %329 = sub nsw i32 0, %313
  br label %333

330:                                              ; preds = %323
  %331 = urem i32 %313, 3
  %332 = xor i32 %331, 3
  br label %333

333:                                              ; preds = %330, %328
  %334 = phi i32 [ %329, %328 ], [ %332, %330 ]
  %335 = call fastcc i32 @decShiftToLeast(ptr noundef nonnull %215, i32 noundef %201, i32 noundef %334) #18
  %336 = add nsw i32 %334, %313
  %337 = sub nsw i32 %326, %334
  %338 = icmp ugt i32 %334, 2
  br i1 %338, label %339, label %357

339:                                              ; preds = %333
  %340 = shl nuw nsw i64 %216, 1
  %341 = add nsw i64 %340, -2
  %342 = add nuw i32 %334, 2
  %343 = call i32 @llvm.smin.i32(i32 %334, i32 5)
  %344 = sub nuw i32 %342, %343
  %345 = udiv i32 %344, 3
  %346 = shl nuw nsw i32 %345, 1
  %347 = zext nneg i32 %346 to i64
  %348 = sub nsw i64 %341, %347
  %349 = getelementptr i8, ptr %215, i64 %348
  %350 = add nuw nsw i64 %347, 2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(1) %349, i8 0, i64 %350, i1 false), !tbaa !10
  br label %357

351:                                              ; preds = %312
  %352 = sub nsw i32 %134, %136
  %353 = icmp ult i16 %291, %274
  br i1 %353, label %354, label %357

354:                                              ; preds = %351
  %355 = add nuw nsw i32 %198, 1
  %356 = add nsw i32 %313, -3
  br label %357

357:                                              ; preds = %339, %333, %351, %354
  %358 = phi i32 [ %355, %354 ], [ %199, %351 ], [ %201, %333 ], [ %201, %339 ]
  %359 = phi i32 [ 0, %354 ], [ 0, %351 ], [ %337, %333 ], [ %337, %339 ]
  %360 = phi i32 [ %356, %354 ], [ %313, %351 ], [ %336, %333 ], [ %336, %339 ]
  %361 = phi i32 [ %352, %354 ], [ %352, %351 ], [ 0, %333 ], [ 0, %339 ]
  %362 = getelementptr inbounds i16, ptr %183, i64 %172
  %363 = getelementptr inbounds i16, ptr %362, i64 -1
  %364 = and i32 %142, 80
  %365 = icmp eq i32 %364, 0
  %366 = zext nneg i32 %358 to i64
  %367 = zext nneg i32 %269 to i64
  br label %368

368:                                              ; preds = %484, %357
  %369 = phi i64 [ %485, %484 ], [ %366, %357 ]
  %370 = phi i32 [ %443, %484 ], [ %202, %357 ]
  %371 = phi i32 [ %486, %484 ], [ %360, %357 ]
  %372 = phi ptr [ %400, %484 ], [ %218, %357 ]
  %373 = phi i32 [ %466, %484 ], [ 0, %357 ]
  %374 = phi i32 [ %467, %484 ], [ 0, %357 ]
  %375 = phi ptr [ %468, %484 ], [ %363, %357 ]
  %376 = sub nsw i64 %369, %367
  %377 = getelementptr inbounds i16, ptr %215, i64 %376
  %378 = trunc i64 %369 to i32
  %379 = trunc i64 %376 to i32
  br label %380

380:                                              ; preds = %428, %368
  %381 = phi i32 [ %370, %368 ], [ %399, %428 ]
  %382 = phi i16 [ 0, %368 ], [ %438, %428 ]
  %383 = phi ptr [ %372, %368 ], [ %400, %428 ]
  %384 = load i16, ptr %383, align 2, !tbaa !10
  %385 = icmp eq i16 %384, 0
  %386 = icmp ugt ptr %383, %215
  %387 = and i1 %386, %385
  br i1 %387, label %388, label %397

388:                                              ; preds = %380, %388
  %389 = phi ptr [ %392, %388 ], [ %383, %380 ]
  %390 = phi i32 [ %391, %388 ], [ %381, %380 ]
  %391 = add nsw i32 %390, -1
  %392 = getelementptr inbounds i16, ptr %389, i64 -1
  %393 = load i16, ptr %392, align 2, !tbaa !10
  %394 = icmp eq i16 %393, 0
  %395 = icmp ugt ptr %392, %215
  %396 = and i1 %395, %394
  br i1 %396, label %388, label %397, !llvm.loop !45

397:                                              ; preds = %388, %380
  %398 = phi i16 [ %384, %380 ], [ %393, %388 ]
  %399 = phi i32 [ %381, %380 ], [ %391, %388 ]
  %400 = phi ptr [ %383, %380 ], [ %392, %388 ]
  %401 = zext i16 %398 to i32
  %402 = sext i32 %399 to i64
  %403 = icmp sgt i64 %369, %402
  br i1 %403, label %442, label %404

404:                                              ; preds = %397
  %405 = icmp eq i32 %399, %378
  br i1 %405, label %406, label %428

406:                                              ; preds = %404, %419
  %407 = phi ptr [ %420, %419 ], [ %400, %404 ]
  %408 = phi i64 [ %421, %419 ], [ %272, %404 ]
  %409 = icmp slt i64 %408, 10
  br i1 %409, label %413, label %410

410:                                              ; preds = %406
  %411 = getelementptr inbounds i8, ptr %2, i64 %408
  %412 = load i16, ptr %411, align 2, !tbaa !10
  br label %413

413:                                              ; preds = %410, %406
  %414 = phi i16 [ %412, %410 ], [ 0, %406 ]
  %415 = load i16, ptr %407, align 2, !tbaa !10
  %416 = icmp ne i16 %415, %414
  %417 = icmp eq ptr %407, %215
  %418 = select i1 %416, i1 true, i1 %417
  br i1 %418, label %422, label %419

419:                                              ; preds = %413
  %420 = getelementptr inbounds i16, ptr %407, i64 -1
  %421 = add nsw i64 %408, -2
  br label %406

422:                                              ; preds = %413
  %423 = icmp ult i16 %415, %414
  br i1 %423, label %442, label %424

424:                                              ; preds = %422
  %425 = icmp eq i16 %415, %414
  br i1 %425, label %426, label %428

426:                                              ; preds = %424
  %427 = add i16 %382, 1
  store i16 0, ptr %215, align 2, !tbaa !10
  br label %442

428:                                              ; preds = %404, %424
  %429 = phi i32 [ %290, %424 ], [ %278, %404 ]
  %430 = mul nuw nsw i32 %401, 1000
  %431 = getelementptr inbounds i16, ptr %400, i64 -1
  %432 = load i16, ptr %431, align 2, !tbaa !10
  %433 = zext i16 %432 to i32
  %434 = add nuw nsw i32 %430, %433
  %435 = udiv i32 %434, %429
  %436 = call i32 @llvm.umax.i32(i32 %435, i32 1)
  %437 = trunc i32 %436 to i16
  %438 = add i16 %382, %437
  %439 = sub nsw i32 %399, %379
  %440 = sub nsw i32 0, %436
  %441 = call fastcc i32 @decUnitAddSub(ptr noundef nonnull %377, i32 noundef %439, ptr noundef nonnull %62, i32 noundef %269, i32 noundef 0, ptr noundef nonnull %377, i32 noundef %440) #18
  br label %380

442:                                              ; preds = %422, %397, %426
  %443 = phi i32 [ 1, %426 ], [ %399, %397 ], [ %399, %422 ]
  %444 = phi i16 [ %427, %426 ], [ %382, %397 ], [ %382, %422 ]
  %445 = icmp ne i32 %374, 0
  %446 = zext i16 %444 to i32
  %447 = icmp ne i16 %444, 0
  %448 = select i1 %445, i1 true, i1 %447
  br i1 %448, label %449, label %465

449:                                              ; preds = %442
  store i16 %444, ptr %375, align 2, !tbaa !10
  %450 = icmp eq i32 %374, 0
  br i1 %450, label %451, label %458

451:                                              ; preds = %449, %451
  %452 = phi ptr [ %457, %451 ], [ getelementptr inbounds ([10 x i32], ptr @DECPOWERS, i64 0, i64 1), %449 ]
  %453 = phi i32 [ %454, %451 ], [ %373, %449 ]
  %454 = add nsw i32 %453, 1
  %455 = load i32, ptr %452, align 4, !tbaa !17
  %456 = icmp ugt i32 %455, %446
  %457 = getelementptr inbounds i32, ptr %452, i64 1
  br i1 %456, label %460, label %451, !llvm.loop !46

458:                                              ; preds = %449
  %459 = add nsw i32 %373, 3
  br label %460

460:                                              ; preds = %451, %458
  %461 = phi i32 [ %459, %458 ], [ %454, %451 ]
  %462 = add nsw i32 %374, 1
  %463 = getelementptr inbounds i16, ptr %375, i64 -1
  %464 = icmp sgt i32 %461, %10
  br i1 %464, label %487, label %465

465:                                              ; preds = %460, %442
  %466 = phi i32 [ %461, %460 ], [ %373, %442 ]
  %467 = phi i32 [ %462, %460 ], [ 0, %442 ]
  %468 = phi ptr [ %463, %460 ], [ %375, %442 ]
  %469 = load i16, ptr %215, align 2, !tbaa !10
  %470 = icmp eq i16 %469, 0
  %471 = icmp eq i32 %443, 1
  %472 = and i1 %470, %471
  br i1 %472, label %473, label %481

473:                                              ; preds = %465
  %474 = icmp sgt i32 %371, %361
  %475 = select i1 %200, i1 true, i1 %474
  %476 = select i1 %365, i1 %475, i1 false
  %477 = xor i1 %476, true
  %478 = icmp eq i32 %371, 0
  %479 = and i1 %200, %478
  %480 = select i1 %477, i1 true, i1 %479
  br i1 %480, label %487, label %484

481:                                              ; preds = %465
  %482 = icmp eq i32 %371, 0
  %483 = and i1 %200, %482
  br i1 %483, label %487, label %484

484:                                              ; preds = %473, %481
  %485 = add i64 %369, -1
  %486 = add nsw i32 %371, -3
  br label %368

487:                                              ; preds = %481, %473, %460
  %488 = phi i32 [ 0, %481 ], [ %371, %473 ], [ %371, %460 ]
  %489 = phi i32 [ %466, %481 ], [ %466, %473 ], [ %461, %460 ]
  %490 = phi i32 [ %467, %481 ], [ %467, %473 ], [ %462, %460 ]
  %491 = phi ptr [ %468, %481 ], [ %468, %473 ], [ %463, %460 ]
  %492 = icmp eq i32 %490, 0
  br i1 %492, label %493, label %494

493:                                              ; preds = %487
  store i16 0, ptr %491, align 2, !tbaa !10
  br label %496

494:                                              ; preds = %487
  %495 = getelementptr inbounds i16, ptr %491, i64 1
  br label %496

496:                                              ; preds = %494, %493
  %497 = phi i32 [ 1, %493 ], [ %489, %494 ]
  %498 = phi i32 [ 1, %493 ], [ %490, %494 ]
  %499 = phi ptr [ %491, %493 ], [ %495, %494 ]
  store i32 0, ptr %9, align 4, !tbaa !17
  br i1 %200, label %541, label %500

500:                                              ; preds = %496
  %501 = load i16, ptr %215, align 2, !tbaa !10
  %502 = icmp ne i16 %501, 0
  %503 = icmp sgt i32 %443, 1
  %504 = or i1 %502, %503
  br i1 %504, label %505, label %506

505:                                              ; preds = %500
  store i32 1, ptr %9, align 4, !tbaa !17
  br label %684

506:                                              ; preds = %500
  %507 = load i16, ptr %499, align 2, !tbaa !10
  %508 = zext i16 %507 to i32
  %509 = and i32 %508, 1
  %510 = icmp eq i32 %509, 0
  %511 = icmp ne i16 %507, 0
  %512 = and i1 %511, %510
  %513 = icmp slt i32 %488, %361
  %514 = select i1 %512, i1 %513, i1 false
  br i1 %514, label %515, label %684

515:                                              ; preds = %506, %529
  %516 = phi i64 [ %518, %529 ], [ 0, %506 ]
  %517 = phi i32 [ %530, %529 ], [ %488, %506 ]
  %518 = add nuw nsw i64 %516, 1
  %519 = trunc i64 %518 to i32
  %520 = lshr i32 %508, %519
  %521 = getelementptr inbounds [5 x i32], ptr @multies, i64 0, i64 %518
  %522 = load i32, ptr %521, align 4, !tbaa !17
  %523 = mul i32 %522, %520
  %524 = lshr i32 %523, 17
  %525 = getelementptr inbounds [10 x i32], ptr @DECPOWERS, i64 0, i64 %518
  %526 = load i32, ptr %525, align 4, !tbaa !17
  %527 = mul i32 %524, %526
  %528 = icmp eq i32 %527, %508
  br i1 %528, label %529, label %532

529:                                              ; preds = %515
  %530 = add nsw i32 %517, 1
  %531 = icmp slt i32 %530, %361
  br i1 %531, label %515, label %534

532:                                              ; preds = %515
  %533 = trunc i64 %516 to i32
  br label %534

534:                                              ; preds = %529, %532
  %535 = phi i32 [ %517, %532 ], [ %361, %529 ]
  %536 = phi i32 [ %533, %532 ], [ %519, %529 ]
  %537 = icmp eq i32 %536, 0
  br i1 %537, label %684, label %538

538:                                              ; preds = %534
  %539 = call fastcc i32 @decShiftToLeast(ptr noundef nonnull %499, i32 noundef %498, i32 noundef %536) #18
  %540 = call fastcc i32 @decGetDigits(ptr noundef nonnull %499, i32 noundef %539) #18
  br label %684

541:                                              ; preds = %496
  %542 = add nsw i32 %497, %488
  %543 = icmp sgt i32 %542, %10
  br i1 %543, label %544, label %547

544:                                              ; preds = %541
  %545 = load i32, ptr %5, align 4, !tbaa !17
  %546 = or i32 %545, 4
  store i32 %546, ptr %5, align 4, !tbaa !17
  br label %692

547:                                              ; preds = %541
  br i1 %365, label %684, label %548

548:                                              ; preds = %547
  %549 = load i8, ptr %11, align 4, !tbaa !5
  %550 = load i16, ptr %215, align 2, !tbaa !10
  %551 = icmp eq i16 %550, 0
  %552 = icmp eq i32 %443, 1
  %553 = and i1 %551, %552
  br i1 %553, label %554, label %562

554:                                              ; preds = %548
  %555 = load i32, ptr %133, align 4, !tbaa !15
  %556 = load i32, ptr %135, align 4, !tbaa !15
  %557 = call i32 @llvm.smin.i32(i32 %556, i32 %555)
  %558 = call ptr @decNumberZero(ptr noundef %0) #18
  %559 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 1
  store i32 %557, ptr %559, align 4, !tbaa !15
  %560 = and i8 %549, -128
  %561 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 2
  store i8 %560, ptr %561, align 4, !tbaa !5
  call fastcc void @decFinalize(ptr noundef %0, ptr noundef nonnull %3, ptr noundef nonnull %9, ptr noundef %5) #18
  br label %692

562:                                              ; preds = %548
  %563 = load i16, ptr %499, align 2, !tbaa !10
  %564 = and i16 %563, 1
  %565 = icmp ne i16 %564, 0
  %566 = add nsw i32 %488, %359
  %567 = load i32, ptr %133, align 4, !tbaa !15
  %568 = sub i32 %566, %567
  %569 = load i32, ptr %135, align 4, !tbaa !15
  %570 = add nsw i32 %568, %569
  %571 = call i32 @llvm.smin.i32(i32 %359, i32 %570)
  %572 = call fastcc i32 @decShiftToLeast(ptr noundef nonnull %215, i32 noundef %443, i32 noundef %571) #18
  %573 = call fastcc i32 @decGetDigits(ptr noundef nonnull %215, i32 noundef %572) #18
  %574 = icmp slt i32 %573, 50
  br i1 %574, label %575, label %580

575:                                              ; preds = %562
  %576 = sext i32 %573 to i64
  %577 = getelementptr inbounds [50 x i8], ptr @d2utable, i64 0, i64 %576
  %578 = load i8, ptr %577, align 1, !tbaa !20
  %579 = zext i8 %578 to i32
  br label %583

580:                                              ; preds = %562
  %581 = add nuw nsw i32 %573, 2
  %582 = udiv i32 %581, 3
  br label %583

583:                                              ; preds = %580, %575
  %584 = phi i32 [ %579, %575 ], [ %582, %580 ]
  %585 = load i32, ptr %133, align 4, !tbaa !15
  %586 = load i32, ptr %135, align 4, !tbaa !15
  %587 = call i32 @llvm.smin.i32(i32 %586, i32 %585)
  %588 = and i32 %142, 16
  %589 = icmp eq i32 %588, 0
  br i1 %589, label %684, label %590

590:                                              ; preds = %583
  %591 = call fastcc i32 @decUnitAddSub(ptr noundef nonnull %215, i32 noundef %584, ptr noundef nonnull %215, i32 noundef %584, i32 noundef 0, ptr noundef nonnull %215, i32 noundef 1) #18
  %592 = load i32, ptr %2, align 4, !tbaa !14
  %593 = icmp slt i32 %592, 50
  br i1 %593, label %594, label %599

594:                                              ; preds = %590
  %595 = sext i32 %592 to i64
  %596 = getelementptr inbounds [50 x i8], ptr @d2utable, i64 0, i64 %595
  %597 = load i8, ptr %596, align 1, !tbaa !20
  %598 = zext i8 %597 to i32
  br label %602

599:                                              ; preds = %590
  %600 = add nuw nsw i32 %592, 2
  %601 = udiv i32 %600, 3
  br label %602

602:                                              ; preds = %599, %594
  %603 = phi i32 [ %598, %594 ], [ %601, %599 ]
  %604 = load i32, ptr %135, align 4, !tbaa !15
  %605 = sub nsw i32 %604, %587
  %606 = call fastcc i32 @decUnitCompare(ptr noundef nonnull %215, i32 noundef %591, ptr noundef nonnull %62, i32 noundef %603, i32 noundef %605) #18, !range !40
  %607 = icmp eq i32 %606, -2147483648
  br i1 %607, label %612, label %608

608:                                              ; preds = %602
  %609 = sext i32 %591 to i64
  %610 = getelementptr inbounds i16, ptr %215, i64 %609
  %611 = icmp sgt i32 %591, 0
  br i1 %611, label %615, label %628

612:                                              ; preds = %602
  %613 = load i32, ptr %5, align 4, !tbaa !17
  %614 = or i32 %613, 16
  store i32 %614, ptr %5, align 4, !tbaa !17
  br label %692

615:                                              ; preds = %608, %625
  %616 = phi ptr [ %626, %625 ], [ %215, %608 ]
  %617 = load i16, ptr %616, align 2, !tbaa !10
  %618 = and i16 %617, 1
  %619 = lshr i16 %617, 1
  store i16 %619, ptr %616, align 2, !tbaa !10
  %620 = icmp eq i16 %618, 0
  br i1 %620, label %625, label %621

621:                                              ; preds = %615
  %622 = getelementptr inbounds i16, ptr %616, i64 -1
  %623 = load i16, ptr %622, align 2, !tbaa !10
  %624 = add i16 %623, 500
  store i16 %624, ptr %622, align 2, !tbaa !10
  br label %625

625:                                              ; preds = %615, %621
  %626 = getelementptr inbounds i16, ptr %616, i64 1
  %627 = icmp ult ptr %626, %610
  br i1 %627, label %615, label %628, !llvm.loop !47

628:                                              ; preds = %625, %608
  %629 = icmp sgt i32 %606, 0
  %630 = icmp eq i32 %606, 0
  %631 = and i1 %565, %630
  %632 = select i1 %629, i1 true, i1 %631
  br i1 %632, label %633, label %684

633:                                              ; preds = %628
  %634 = icmp eq i32 %497, %10
  br i1 %634, label %635, label %656

635:                                              ; preds = %633
  %636 = icmp sgt i32 %10, 3
  br i1 %636, label %637, label %646

637:                                              ; preds = %635, %642
  %638 = phi ptr [ %644, %642 ], [ %499, %635 ]
  %639 = phi i32 [ %643, %642 ], [ %10, %635 ]
  %640 = load i16, ptr %638, align 2, !tbaa !10
  %641 = icmp eq i16 %640, 999
  br i1 %641, label %642, label %656

642:                                              ; preds = %637
  %643 = add nsw i32 %639, -3
  %644 = getelementptr inbounds i16, ptr %638, i64 1
  %645 = icmp sgt i32 %639, 6
  br i1 %645, label %637, label %646

646:                                              ; preds = %642, %635
  %647 = phi i32 [ %10, %635 ], [ %643, %642 ]
  %648 = phi ptr [ %499, %635 ], [ %644, %642 ]
  %649 = load i16, ptr %648, align 2, !tbaa !10
  %650 = zext i16 %649 to i32
  %651 = sext i32 %647 to i64
  %652 = getelementptr inbounds [10 x i32], ptr @DECPOWERS, i64 0, i64 %651
  %653 = load i32, ptr %652, align 4, !tbaa !17
  %654 = add i32 %653, -1
  %655 = icmp eq i32 %654, %650
  br i1 %655, label %681, label %656

656:                                              ; preds = %637, %633, %646
  %657 = load i32, ptr %135, align 4, !tbaa !15
  %658 = sub nsw i32 %657, %587
  %659 = sdiv i32 %658, 3
  %660 = srem i32 %658, 3
  %661 = load i32, ptr %2, align 4, !tbaa !14
  %662 = icmp slt i32 %661, 50
  br i1 %662, label %663, label %668

663:                                              ; preds = %656
  %664 = sext i32 %661 to i64
  %665 = getelementptr inbounds [50 x i8], ptr @d2utable, i64 0, i64 %664
  %666 = load i8, ptr %665, align 1, !tbaa !20
  %667 = zext i8 %666 to i32
  br label %671

668:                                              ; preds = %656
  %669 = add nuw nsw i32 %661, 2
  %670 = udiv i32 %669, 3
  br label %671

671:                                              ; preds = %663, %668
  %672 = phi i32 [ %667, %663 ], [ %670, %668 ]
  %673 = sext i32 %660 to i64
  %674 = getelementptr inbounds [10 x i32], ptr @DECPOWERS, i64 0, i64 %673
  %675 = load i32, ptr %674, align 4, !tbaa !17
  %676 = sub nsw i32 0, %675
  %677 = call fastcc i32 @decUnitAddSub(ptr noundef nonnull %215, i32 noundef %584, ptr noundef nonnull %62, i32 noundef %672, i32 noundef %659, ptr noundef nonnull %215, i32 noundef %676) #18
  %678 = sub nsw i32 0, %677
  %679 = call fastcc i32 @decGetDigits(ptr noundef nonnull %215, i32 noundef %678) #18
  %680 = xor i8 %549, -128
  br label %684

681:                                              ; preds = %646
  %682 = load i32, ptr %5, align 4, !tbaa !17
  %683 = or i32 %682, 4
  store i32 %683, ptr %5, align 4, !tbaa !17
  br label %692

684:                                              ; preds = %671, %628, %583, %506, %538, %534, %547, %505
  %685 = phi i32 [ %488, %505 ], [ %488, %547 ], [ %488, %506 ], [ %535, %538 ], [ %535, %534 ], [ %587, %583 ], [ %587, %628 ], [ %587, %671 ]
  %686 = phi i8 [ %18, %505 ], [ %18, %547 ], [ %18, %506 ], [ %18, %538 ], [ %18, %534 ], [ %549, %583 ], [ %549, %628 ], [ %680, %671 ]
  %687 = phi i32 [ %497, %505 ], [ %497, %547 ], [ %497, %506 ], [ %540, %538 ], [ %497, %534 ], [ %573, %583 ], [ %573, %628 ], [ %679, %671 ]
  %688 = phi ptr [ %499, %505 ], [ %499, %547 ], [ %499, %506 ], [ %499, %538 ], [ %499, %534 ], [ %215, %583 ], [ %215, %628 ], [ %215, %671 ]
  %689 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 1
  store i32 %685, ptr %689, align 4, !tbaa !15
  %690 = and i8 %686, -128
  %691 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 2
  store i8 %690, ptr %691, align 4, !tbaa !5
  call fastcc void @decSetCoeff(ptr noundef %0, ptr noundef nonnull %3, ptr noundef %688, i32 noundef %687, ptr noundef nonnull %9, ptr noundef %5) #18
  call fastcc void @decFinalize(ptr noundef %0, ptr noundef nonnull %3, ptr noundef nonnull %9, ptr noundef %5) #18
  br label %692

692:                                              ; preds = %681, %612, %554, %684, %544
  %693 = icmp eq ptr %214, null
  br i1 %693, label %695, label %694

694:                                              ; preds = %692
  call void @free(ptr noundef nonnull %214) #19
  br label %695

695:                                              ; preds = %210, %694, %692
  %696 = icmp eq ptr %182, null
  br i1 %696, label %698, label %697

697:                                              ; preds = %695
  call void @free(ptr noundef nonnull %182) #19
  br label %698

698:                                              ; preds = %25, %36, %39, %60, %81, %90, %92, %108, %120, %130, %123, %178, %148, %158, %697, %695
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #20
  call void @llvm.lifetime.end.p0(i64 50, ptr nonnull %8) #20
  call void @llvm.lifetime.end.p0(i64 34, ptr nonnull %7) #20
  ret ptr %0
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @decNumberDivideInteger(ptr noundef returned %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #4 {
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #20
  store i32 0, ptr %5, align 4, !tbaa !17
  %6 = call fastcc ptr @decDivideOp(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i8 noundef zeroext 32, ptr noundef nonnull %5) #18
  %7 = load i32, ptr %5, align 4, !tbaa !17
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %4
  tail call fastcc void @decStatus(ptr noundef %0, i32 noundef %7, ptr noundef %3) #18
  br label %10

10:                                               ; preds = %9, %4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #20
  ret ptr %0
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @decNumberExp(ptr noundef returned %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #4 {
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #20
  store i32 0, ptr %4, align 4, !tbaa !17
  %5 = call fastcc i32 @decCheckMath(ptr noundef %1, ptr noundef %2, ptr noundef nonnull %4) #18, !range !48
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %3
  %8 = call fastcc ptr @decExpOp(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %4) #18
  br label %9

9:                                                ; preds = %7, %3
  %10 = load i32, ptr %4, align 4, !tbaa !17
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %9
  tail call fastcc void @decStatus(ptr noundef %0, i32 noundef %10, ptr noundef %2) #18
  br label %13

13:                                               ; preds = %12, %9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #20
  ret ptr %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc i32 @decCheckMath(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2) unnamed_addr #8 {
  %4 = load i32, ptr %2, align 4, !tbaa !17
  %5 = load i32, ptr %1, align 4, !tbaa !27
  %6 = icmp sgt i32 %5, 999999
  br i1 %6, label %35, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.decContext, ptr %1, i64 0, i32 1
  %9 = load i32, ptr %8, align 4, !tbaa !33
  %10 = icmp sgt i32 %9, 999999
  br i1 %10, label %35, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.decContext, ptr %1, i64 0, i32 2
  %13 = load i32, ptr %12, align 4, !tbaa !32
  %14 = icmp slt i32 %13, -999999
  br i1 %14, label %35, label %15

15:                                               ; preds = %11
  %16 = load i32, ptr %0, align 4, !tbaa !14
  %17 = icmp sgt i32 %16, 999999
  br i1 %17, label %35, label %18

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 1
  %20 = load i32, ptr %19, align 4, !tbaa !15
  %21 = add i32 %16, -1000001
  %22 = add i32 %21, %20
  %23 = icmp ult i32 %22, -2999997
  br i1 %23, label %24, label %38

24:                                               ; preds = %18
  %25 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 3
  %26 = load i16, ptr %25, align 2, !tbaa !10
  %27 = icmp eq i16 %26, 0
  %28 = icmp eq i32 %16, 1
  %29 = and i1 %28, %27
  br i1 %29, label %30, label %35

30:                                               ; preds = %24
  %31 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 2
  %32 = load i8, ptr %31, align 4, !tbaa !5
  %33 = and i8 %32, 112
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %24, %30, %15, %3, %7, %11
  %36 = phi i32 [ 64, %11 ], [ 64, %7 ], [ 64, %3 ], [ 128, %15 ], [ 128, %30 ], [ 128, %24 ]
  %37 = or i32 %4, %36
  store i32 %37, ptr %2, align 4, !tbaa !17
  br label %38

38:                                               ; preds = %35, %18, %30
  %39 = phi i32 [ %4, %18 ], [ %4, %30 ], [ %37, %35 ]
  %40 = icmp ne i32 %39, %4
  %41 = zext i1 %40 to i32
  ret i32 %41
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @decExpOp(ptr noundef returned %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef %3) unnamed_addr #4 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.decContext, align 4
  %8 = alloca %struct.decContext, align 4
  %9 = alloca %struct.decContext, align 4
  %10 = alloca [5 x %struct.decNumber], align 16
  %11 = alloca [6 x %struct.decNumber], align 16
  %12 = alloca [10 x %struct.decNumber], align 16
  %13 = alloca [2 x %struct.decNumber], align 16
  %14 = alloca %struct.decNumber, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #20
  store i32 0, ptr %5, align 4, !tbaa !17
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #20
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %7) #20
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %8) #20
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %9) #20
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %10) #20
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %11) #20
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %12) #20
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %13) #20
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %14) #20
  %15 = getelementptr inbounds %struct.decNumber, ptr %1, i64 0, i32 2
  %16 = load i8, ptr %15, align 4, !tbaa !5
  %17 = zext i8 %16 to i32
  %18 = and i32 %17, 112
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %31, label %20

20:                                               ; preds = %4
  %21 = and i32 %17, 64
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %29, label %23

23:                                               ; preds = %20
  %24 = icmp sgt i8 %16, -1
  br i1 %24, label %27, label %25

25:                                               ; preds = %23
  %26 = tail call ptr @decNumberZero(ptr noundef %0) #18
  br label %293

27:                                               ; preds = %23
  %28 = tail call ptr @decNumberCopy(ptr noundef %0, ptr noundef nonnull %1) #18
  br label %293

29:                                               ; preds = %20
  %30 = tail call fastcc ptr @decNaNs(ptr noundef %0, ptr noundef nonnull %1, ptr noundef null, ptr noundef %2, ptr noundef %3) #18
  br label %293

31:                                               ; preds = %4
  %32 = getelementptr inbounds %struct.decNumber, ptr %1, i64 0, i32 3
  %33 = load i16, ptr %32, align 2, !tbaa !10
  %34 = icmp eq i16 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %31
  %36 = load i32, ptr %1, align 4, !tbaa !14
  %37 = icmp eq i32 %36, 1
  br i1 %37, label %38, label %41

38:                                               ; preds = %35
  %39 = tail call ptr @decNumberZero(ptr noundef %0) #18
  %40 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 3
  store i16 1, ptr %40, align 2, !tbaa !10
  br label %293

41:                                               ; preds = %35, %31
  %42 = call ptr @decNumberZero(ptr noundef nonnull %13) #18
  %43 = getelementptr inbounds %struct.decNumber, ptr %13, i64 0, i32 3
  store i16 4, ptr %43, align 2, !tbaa !10
  %44 = load i32, ptr %2, align 4, !tbaa !27
  %45 = sub nsw i32 0, %44
  %46 = getelementptr inbounds %struct.decNumber, ptr %13, i64 0, i32 1
  %47 = xor i32 %44, -1
  %48 = icmp slt i8 %16, 0
  %49 = select i1 %48, i32 %47, i32 %45
  store i32 %49, ptr %46, align 4, !tbaa !15
  %50 = call fastcc i32 @decCompare(ptr noundef nonnull %13, ptr noundef nonnull %1, i8 noundef zeroext 1) #18
  %51 = icmp eq i32 %50, -2147483648
  br i1 %51, label %52, label %55

52:                                               ; preds = %41
  %53 = load i32, ptr %3, align 4, !tbaa !17
  %54 = or i32 %53, 16
  store i32 %54, ptr %3, align 4, !tbaa !17
  br label %293

55:                                               ; preds = %41
  %56 = icmp sgt i32 %50, -1
  br i1 %56, label %57, label %67

57:                                               ; preds = %55
  %58 = load i32, ptr %2, align 4, !tbaa !27
  %59 = add nsw i32 %58, -1
  %60 = call ptr @decNumberZero(ptr noundef %0) #18
  %61 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 3
  store i16 1, ptr %61, align 2, !tbaa !10
  %62 = call fastcc i32 @decShiftToMost(ptr noundef nonnull %61, i32 noundef 1, i32 noundef %59) #18
  store i32 %62, ptr %0, align 4, !tbaa !14
  %63 = sub nsw i32 1, %58
  %64 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 1
  store i32 %63, ptr %64, align 4, !tbaa !15
  %65 = load i32, ptr %3, align 4, !tbaa !17
  %66 = or i32 %65, 2080
  store i32 %66, ptr %3, align 4, !tbaa !17
  br label %293

67:                                               ; preds = %55
  %68 = call ptr @decContextDefault(ptr noundef nonnull %7, i32 noundef 64) #19
  %69 = getelementptr inbounds %struct.decContext, ptr %2, i64 0, i32 1
  %70 = getelementptr inbounds %struct.decContext, ptr %7, i64 0, i32 1
  %71 = load <2 x i32>, ptr %69, align 4, !tbaa !17
  store <2 x i32> %71, ptr %70, align 4, !tbaa !17
  %72 = getelementptr inbounds %struct.decContext, ptr %7, i64 0, i32 6
  store i8 0, ptr %72, align 4, !tbaa !29
  %73 = getelementptr inbounds %struct.decNumber, ptr %1, i64 0, i32 1
  %74 = load i32, ptr %73, align 4, !tbaa !15
  %75 = load i32, ptr %1, align 4, !tbaa !14
  %76 = add nsw i32 %75, %74
  %77 = icmp sgt i32 %76, 8
  br i1 %77, label %78, label %85

78:                                               ; preds = %67
  %79 = call ptr @decNumberZero(ptr noundef nonnull %12) #18
  %80 = getelementptr inbounds %struct.decNumber, ptr %12, i64 0, i32 3
  store i16 2, ptr %80, align 2, !tbaa !10
  %81 = load i8, ptr %15, align 4, !tbaa !5
  %82 = icmp sgt i8 %81, -1
  br i1 %82, label %211, label %83

83:                                               ; preds = %78
  %84 = getelementptr inbounds %struct.decNumber, ptr %12, i64 0, i32 1
  store i32 -2, ptr %84, align 4, !tbaa !15
  br label %211

85:                                               ; preds = %67
  %86 = icmp sgt i32 %75, 8
  %87 = zext i1 %86 to i32
  %88 = sub nsw i32 8, %76
  %89 = call i32 @llvm.smin.i32(i32 %88, i32 %87)
  %90 = add i32 %75, %89
  %91 = sub i32 0, %90
  %92 = add nsw i32 %89, %76
  %93 = icmp slt i32 %92, 0
  %94 = call i32 @llvm.smax.i32(i32 %92, i32 0)
  %95 = icmp eq i32 %74, %91
  %96 = or i1 %93, %95
  br i1 %96, label %125, label %97

97:                                               ; preds = %85
  %98 = icmp slt i32 %75, 50
  br i1 %98, label %99, label %104

99:                                               ; preds = %97
  %100 = sext i32 %75 to i64
  %101 = getelementptr inbounds [50 x i8], ptr @d2utable, i64 0, i64 %100
  %102 = load i8, ptr %101, align 1, !tbaa !20
  %103 = zext i8 %102 to i32
  br label %107

104:                                              ; preds = %97
  %105 = add nuw nsw i32 %75, 2
  %106 = udiv i32 %105, 3
  br label %107

107:                                              ; preds = %104, %99
  %108 = phi i32 [ %103, %99 ], [ %106, %104 ]
  %109 = icmp ugt i32 %108, 25
  br i1 %109, label %110, label %116

110:                                              ; preds = %107
  %111 = shl nuw nsw i32 %108, 1
  %112 = add nuw nsw i32 %111, 10
  %113 = zext nneg i32 %112 to i64
  %114 = call noalias ptr @malloc(i64 noundef %113) #21
  %115 = icmp eq ptr %114, null
  br i1 %115, label %122, label %116

116:                                              ; preds = %107, %110
  %117 = phi ptr [ null, %107 ], [ %114, %110 ]
  %118 = phi ptr [ %10, %107 ], [ %114, %110 ]
  %119 = getelementptr inbounds %struct.decNumber, ptr %118, i64 0, i32 1
  %120 = call ptr @decNumberCopy(ptr noundef nonnull %118, ptr noundef nonnull %1) #18
  store i32 %91, ptr %119, align 4, !tbaa !15
  %121 = load i32, ptr %118, align 4, !tbaa !14
  br label %125

122:                                              ; preds = %110
  %123 = load i32, ptr %3, align 4, !tbaa !17
  %124 = or i32 %123, 16
  store i32 %124, ptr %3, align 4, !tbaa !17
  br label %293

125:                                              ; preds = %116, %85
  %126 = phi i32 [ %75, %85 ], [ %121, %116 ]
  %127 = phi ptr [ null, %85 ], [ %117, %116 ]
  %128 = phi ptr [ %1, %85 ], [ %118, %116 ]
  %129 = load i32, ptr %2, align 4, !tbaa !27
  %130 = call i32 @llvm.smax.i32(i32 %126, i32 %129)
  %131 = add nsw i32 %130, %94
  %132 = add nsw i32 %131, 2
  %133 = shl nsw i32 %132, 1
  %134 = icmp slt i32 %131, 23
  br i1 %134, label %135, label %140

135:                                              ; preds = %125
  %136 = sext i32 %133 to i64
  %137 = getelementptr inbounds [50 x i8], ptr @d2utable, i64 0, i64 %136
  %138 = load i8, ptr %137, align 2, !tbaa !20
  %139 = zext i8 %138 to i32
  br label %143

140:                                              ; preds = %125
  %141 = add nuw nsw i32 %133, 2
  %142 = udiv i32 %141, 3
  br label %143

143:                                              ; preds = %140, %135
  %144 = phi i32 [ %139, %135 ], [ %142, %140 ]
  %145 = icmp ugt i32 %144, 55
  br i1 %145, label %146, label %155

146:                                              ; preds = %143
  %147 = shl nuw i32 %144, 1
  %148 = add nuw i32 %147, 10
  %149 = zext i32 %148 to i64
  %150 = call noalias ptr @malloc(i64 noundef %149) #21
  %151 = icmp eq ptr %150, null
  br i1 %151, label %152, label %155

152:                                              ; preds = %146
  %153 = load i32, ptr %3, align 4, !tbaa !17
  %154 = or i32 %153, 16
  store i32 %154, ptr %3, align 4, !tbaa !17
  br label %281

155:                                              ; preds = %146, %143
  %156 = phi ptr [ null, %143 ], [ %150, %146 ]
  %157 = phi ptr [ %12, %143 ], [ %150, %146 ]
  %158 = icmp slt i32 %131, 46
  br i1 %158, label %159, label %165

159:                                              ; preds = %155
  %160 = add nsw i32 %131, 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds [50 x i8], ptr @d2utable, i64 0, i64 %161
  %163 = load i8, ptr %162, align 1, !tbaa !20
  %164 = zext i8 %163 to i32
  br label %168

165:                                              ; preds = %155
  %166 = add nuw nsw i32 %131, 6
  %167 = udiv i32 %166, 3
  br label %168

168:                                              ; preds = %165, %159
  %169 = phi i32 [ %164, %159 ], [ %167, %165 ]
  %170 = icmp ugt i32 %169, 31
  br i1 %170, label %171, label %180

171:                                              ; preds = %168
  %172 = shl nuw nsw i32 %169, 1
  %173 = add nuw nsw i32 %172, 10
  %174 = zext nneg i32 %173 to i64
  %175 = call noalias ptr @malloc(i64 noundef %174) #21
  %176 = icmp eq ptr %175, null
  br i1 %176, label %177, label %180

177:                                              ; preds = %171
  %178 = load i32, ptr %3, align 4, !tbaa !17
  %179 = or i32 %178, 16
  store i32 %179, ptr %3, align 4, !tbaa !17
  br label %281

180:                                              ; preds = %171, %168
  %181 = phi ptr [ null, %168 ], [ %175, %171 ]
  %182 = phi ptr [ %11, %168 ], [ %175, %171 ]
  %183 = getelementptr inbounds %struct.decNumber, ptr %182, i64 0, i32 1
  %184 = call ptr @decNumberCopy(ptr noundef nonnull %182, ptr noundef nonnull %128) #18
  %185 = call ptr @decNumberZero(ptr noundef nonnull %157) #18
  %186 = getelementptr inbounds %struct.decNumber, ptr %157, i64 0, i32 3
  store i16 1, ptr %186, align 2, !tbaa !10
  %187 = call ptr @decNumberZero(ptr noundef nonnull %13) #18
  store i16 2, ptr %43, align 2, !tbaa !10
  %188 = call ptr @decNumberZero(ptr noundef nonnull %14) #18
  %189 = getelementptr inbounds %struct.decNumber, ptr %14, i64 0, i32 3
  store i16 1, ptr %189, align 2, !tbaa !10
  %190 = call ptr @decContextDefault(ptr noundef nonnull %8, i32 noundef 64) #19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %9, ptr noundef nonnull align 4 dereferenceable(28) %8, i64 28, i1 false), !tbaa.struct !49
  store i32 %133, ptr %7, align 4, !tbaa !27
  store i32 %132, ptr %8, align 4, !tbaa !27
  %191 = getelementptr inbounds %struct.decContext, ptr %8, i64 0, i32 2
  store i32 -999999999, ptr %191, align 4, !tbaa !32
  %192 = getelementptr inbounds %struct.decNumber, ptr %157, i64 0, i32 1
  br label %193

193:                                              ; preds = %207, %180
  %194 = call fastcc ptr @decAddOp(ptr noundef nonnull %157, ptr noundef nonnull %157, ptr noundef nonnull %182, ptr noundef nonnull %7, i8 noundef zeroext 0, ptr noundef %3) #18
  %195 = call fastcc ptr @decMultiplyOp(ptr noundef nonnull %182, ptr noundef nonnull %182, ptr noundef nonnull %128, ptr noundef nonnull %8, ptr noundef nonnull %5) #18
  %196 = call fastcc ptr @decDivideOp(ptr noundef nonnull %182, ptr noundef nonnull %182, ptr noundef nonnull %13, ptr noundef nonnull %8, i8 noundef zeroext -128, ptr noundef nonnull %5) #18
  %197 = load i32, ptr %157, align 4, !tbaa !14
  %198 = load i32, ptr %192, align 4, !tbaa !15
  %199 = add nsw i32 %198, %197
  %200 = load i32, ptr %182, align 4, !tbaa !14
  %201 = load i32, ptr %183, align 4, !tbaa !15
  %202 = add i32 %200, %132
  %203 = add i32 %202, %201
  %204 = icmp sle i32 %199, %203
  %205 = icmp slt i32 %197, %132
  %206 = or i1 %205, %204
  br i1 %206, label %207, label %209

207:                                              ; preds = %193
  %208 = call fastcc ptr @decAddOp(ptr noundef nonnull %13, ptr noundef nonnull %13, ptr noundef nonnull %14, ptr noundef nonnull %9, i8 noundef zeroext 0, ptr noundef nonnull %5) #18
  br label %193

209:                                              ; preds = %193
  %210 = icmp slt i32 %92, 1
  br i1 %210, label %262, label %211

211:                                              ; preds = %78, %83, %209
  %212 = phi i32 [ %94, %209 ], [ 8, %83 ], [ 8, %78 ]
  %213 = phi i32 [ %132, %209 ], [ 9, %83 ], [ 9, %78 ]
  %214 = phi ptr [ %157, %209 ], [ %12, %83 ], [ %12, %78 ]
  %215 = phi ptr [ %156, %209 ], [ null, %83 ], [ null, %78 ]
  %216 = phi ptr [ %182, %209 ], [ %11, %83 ], [ %11, %78 ]
  %217 = phi ptr [ %181, %209 ], [ null, %83 ], [ null, %78 ]
  %218 = phi ptr [ %127, %209 ], [ null, %83 ], [ null, %78 ]
  %219 = zext nneg i32 %212 to i64
  %220 = getelementptr inbounds [10 x i32], ptr @DECPOWERS, i64 0, i64 %219
  %221 = load i32, ptr %220, align 4, !tbaa !17
  %222 = add nsw i32 %213, 2
  store i32 %222, ptr %7, align 4, !tbaa !27
  %223 = call ptr @decNumberZero(ptr noundef nonnull %216) #18
  %224 = getelementptr inbounds %struct.decNumber, ptr %216, i64 0, i32 3
  store i16 1, ptr %224, align 2, !tbaa !10
  %225 = getelementptr inbounds %struct.decNumber, ptr %216, i64 0, i32 2
  br label %226

226:                                              ; preds = %259, %211
  %227 = phi i32 [ 0, %211 ], [ %260, %259 ]
  %228 = phi i32 [ 1, %211 ], [ %261, %259 ]
  %229 = phi i32 [ %221, %211 ], [ %247, %259 ]
  %230 = load i32, ptr %3, align 4, !tbaa !17
  %231 = and i32 %230, 8704
  %232 = icmp eq i32 %231, 0
  br i1 %232, label %246, label %233

233:                                              ; preds = %226
  %234 = and i32 %230, 512
  %235 = icmp eq i32 %234, 0
  br i1 %235, label %236, label %262

236:                                              ; preds = %233
  %237 = load i16, ptr %224, align 2, !tbaa !10
  %238 = icmp eq i16 %237, 0
  br i1 %238, label %239, label %246

239:                                              ; preds = %236
  %240 = load i32, ptr %216, align 4, !tbaa !14
  %241 = icmp eq i32 %240, 1
  br i1 %241, label %242, label %246

242:                                              ; preds = %239
  %243 = load i8, ptr %225, align 4, !tbaa !5
  %244 = and i8 %243, 112
  %245 = icmp eq i8 %244, 0
  br i1 %245, label %262, label %246

246:                                              ; preds = %236, %239, %242, %226
  %247 = shl i32 %229, 1
  %248 = icmp slt i32 %247, 0
  br i1 %248, label %251, label %249

249:                                              ; preds = %246
  %250 = icmp eq i32 %228, 31
  br i1 %250, label %262, label %254

251:                                              ; preds = %246
  %252 = call fastcc ptr @decMultiplyOp(ptr noundef nonnull %216, ptr noundef nonnull %216, ptr noundef nonnull %214, ptr noundef nonnull %7, ptr noundef nonnull %3) #18
  %253 = icmp eq i32 %228, 31
  br i1 %253, label %262, label %256

254:                                              ; preds = %249
  %255 = icmp eq i32 %227, 0
  br i1 %255, label %259, label %256

256:                                              ; preds = %251, %254
  %257 = phi i32 [ %227, %254 ], [ 1, %251 ]
  %258 = call fastcc ptr @decMultiplyOp(ptr noundef nonnull %216, ptr noundef nonnull %216, ptr noundef nonnull %216, ptr noundef nonnull %7, ptr noundef nonnull %3) #18
  br label %259

259:                                              ; preds = %254, %256
  %260 = phi i32 [ 0, %254 ], [ %257, %256 ]
  %261 = add nuw nsw i32 %228, 1
  br label %226

262:                                              ; preds = %251, %242, %233, %249, %209
  %263 = phi ptr [ %156, %209 ], [ %215, %249 ], [ %215, %233 ], [ %215, %242 ], [ %215, %251 ]
  %264 = phi ptr [ %181, %209 ], [ %217, %249 ], [ %217, %233 ], [ %217, %242 ], [ %217, %251 ]
  %265 = phi ptr [ %127, %209 ], [ %218, %249 ], [ %218, %233 ], [ %218, %242 ], [ %218, %251 ]
  %266 = phi ptr [ %157, %209 ], [ %216, %249 ], [ %216, %233 ], [ %216, %242 ], [ %216, %251 ]
  store i32 1, ptr %6, align 4, !tbaa !17
  %267 = getelementptr inbounds %struct.decNumber, ptr %266, i64 0, i32 3
  %268 = load i16, ptr %267, align 2, !tbaa !10
  %269 = icmp eq i16 %268, 0
  br i1 %269, label %270, label %279

270:                                              ; preds = %262
  %271 = load i32, ptr %266, align 4, !tbaa !14
  %272 = icmp eq i32 %271, 1
  br i1 %272, label %273, label %279

273:                                              ; preds = %270
  %274 = getelementptr inbounds %struct.decNumber, ptr %266, i64 0, i32 2
  %275 = load i8, ptr %274, align 4, !tbaa !5
  %276 = and i8 %275, 112
  %277 = icmp eq i8 %276, 0
  br i1 %277, label %278, label %279

278:                                              ; preds = %273
  store i32 0, ptr %6, align 4, !tbaa !17
  br label %279

279:                                              ; preds = %278, %273, %270, %262
  %280 = load i32, ptr %2, align 4, !tbaa !27
  store i32 %280, ptr %7, align 4, !tbaa !27
  call fastcc void @decCopyFit(ptr noundef %0, ptr noundef nonnull %266, ptr noundef nonnull %7, ptr noundef nonnull %6, ptr noundef %3) #18
  call fastcc void @decFinalize(ptr noundef %0, ptr noundef nonnull %2, ptr noundef nonnull %6, ptr noundef %3) #18
  br label %281

281:                                              ; preds = %177, %152, %279
  %282 = phi ptr [ %265, %279 ], [ %127, %177 ], [ %127, %152 ]
  %283 = phi ptr [ %264, %279 ], [ null, %177 ], [ null, %152 ]
  %284 = phi ptr [ %263, %279 ], [ %156, %177 ], [ null, %152 ]
  %285 = icmp eq ptr %282, null
  br i1 %285, label %287, label %286

286:                                              ; preds = %281
  call void @free(ptr noundef nonnull %282) #19
  br label %287

287:                                              ; preds = %286, %281
  %288 = icmp eq ptr %284, null
  br i1 %288, label %290, label %289

289:                                              ; preds = %287
  call void @free(ptr noundef nonnull %284) #19
  br label %290

290:                                              ; preds = %289, %287
  %291 = icmp eq ptr %283, null
  br i1 %291, label %293, label %292

292:                                              ; preds = %290
  call void @free(ptr noundef nonnull %283) #19
  br label %293

293:                                              ; preds = %122, %57, %52, %38, %29, %27, %25, %292, %290
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %14) #20
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %13) #20
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %12) #20
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %11) #20
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %10) #20
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %9) #20
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %8) #20
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %7) #20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #20
  ret ptr %0
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @decNumberFMA(ptr noundef returned %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #4 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.decContext, align 4
  %8 = alloca [5 x %struct.decNumber], align 16
  %9 = alloca %struct.decNumber, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #20
  store i32 0, ptr %6, align 4, !tbaa !17
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %7) #20
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %8) #20
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #20
  %10 = getelementptr inbounds %struct.decNumber, ptr %1, i64 0, i32 2
  %11 = load i8, ptr %10, align 4, !tbaa !5
  %12 = and i8 %11, 112
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %5
  %15 = call fastcc i32 @decCheckMath(ptr noundef nonnull %1, ptr noundef %4, ptr noundef nonnull %6) #18, !range !48
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %81

17:                                               ; preds = %14, %5
  %18 = getelementptr inbounds %struct.decNumber, ptr %2, i64 0, i32 2
  %19 = load i8, ptr %18, align 4, !tbaa !5
  %20 = and i8 %19, 112
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %17
  %23 = call fastcc i32 @decCheckMath(ptr noundef nonnull %2, ptr noundef %4, ptr noundef nonnull %6) #18, !range !48
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %81

25:                                               ; preds = %22, %17
  %26 = getelementptr inbounds %struct.decNumber, ptr %3, i64 0, i32 2
  %27 = load i8, ptr %26, align 4, !tbaa !5
  %28 = and i8 %27, 112
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %25
  %31 = call fastcc i32 @decCheckMath(ptr noundef nonnull %3, ptr noundef %4, ptr noundef nonnull %6) #18, !range !48
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %81

33:                                               ; preds = %30, %25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %7, ptr noundef nonnull align 4 dereferenceable(28) %4, i64 28, i1 false), !tbaa.struct !49
  %34 = load i32, ptr %1, align 4, !tbaa !14
  %35 = load i32, ptr %2, align 4, !tbaa !14
  %36 = add nsw i32 %35, %34
  store i32 %36, ptr %7, align 4, !tbaa !27
  %37 = getelementptr inbounds %struct.decContext, ptr %7, i64 0, i32 1
  store i32 999999999, ptr %37, align 4, !tbaa !33
  %38 = getelementptr inbounds %struct.decContext, ptr %7, i64 0, i32 2
  store i32 -999999999, ptr %38, align 4, !tbaa !32
  %39 = icmp slt i32 %36, 50
  br i1 %39, label %40, label %45

40:                                               ; preds = %33
  %41 = sext i32 %36 to i64
  %42 = getelementptr inbounds [50 x i8], ptr @d2utable, i64 0, i64 %41
  %43 = load i8, ptr %42, align 1, !tbaa !20
  %44 = zext i8 %43 to i32
  br label %48

45:                                               ; preds = %33
  %46 = add nuw nsw i32 %36, 2
  %47 = udiv i32 %46, 3
  br label %48

48:                                               ; preds = %45, %40
  %49 = phi i32 [ %44, %40 ], [ %47, %45 ]
  %50 = icmp ugt i32 %49, 25
  br i1 %50, label %51, label %60

51:                                               ; preds = %48
  %52 = shl nuw nsw i32 %49, 1
  %53 = add nuw nsw i32 %52, 10
  %54 = zext nneg i32 %53 to i64
  %55 = tail call noalias ptr @malloc(i64 noundef %54) #21
  %56 = icmp eq ptr %55, null
  br i1 %56, label %57, label %60

57:                                               ; preds = %51
  %58 = load i32, ptr %6, align 4, !tbaa !17
  %59 = or i32 %58, 16
  br label %84

60:                                               ; preds = %51, %48
  %61 = phi ptr [ null, %48 ], [ %55, %51 ]
  %62 = phi ptr [ %8, %48 ], [ %55, %51 ]
  %63 = call fastcc ptr @decMultiplyOp(ptr noundef nonnull %62, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef nonnull %7, ptr noundef nonnull %6) #18
  %64 = load i32, ptr %6, align 4, !tbaa !17
  %65 = and i32 %64, 128
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %75, label %67

67:                                               ; preds = %60
  %68 = and i32 %64, 1073741824
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %67
  %71 = call ptr @decNumberZero(ptr noundef %0) #18
  %72 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 2
  store i8 32, ptr %72, align 4, !tbaa !5
  br label %78

73:                                               ; preds = %67
  %74 = call ptr @decNumberZero(ptr noundef nonnull %9) #18
  br label %75

75:                                               ; preds = %73, %60
  %76 = phi ptr [ %9, %73 ], [ %3, %60 ]
  %77 = call fastcc ptr @decAddOp(ptr noundef %0, ptr noundef nonnull %62, ptr noundef nonnull %76, ptr noundef nonnull %4, i8 noundef zeroext 0, ptr noundef nonnull %6) #18
  br label %78

78:                                               ; preds = %75, %70
  %79 = icmp eq ptr %61, null
  br i1 %79, label %81, label %80

80:                                               ; preds = %78
  call void @free(ptr noundef nonnull %61) #19
  br label %81

81:                                               ; preds = %14, %22, %30, %80, %78
  %82 = load i32, ptr %6, align 4, !tbaa !17
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %86, label %84

84:                                               ; preds = %57, %81
  %85 = phi i32 [ %59, %57 ], [ %82, %81 ]
  call fastcc void @decStatus(ptr noundef %0, i32 noundef %85, ptr noundef %4) #18
  br label %86

86:                                               ; preds = %84, %81
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #20
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %8) #20
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %7) #20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #20
  ret ptr %0
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #9

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @decMultiplyOp(ptr noundef returned %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3, ptr nocapture noundef %4) unnamed_addr #4 {
  %6 = alloca i32, align 4
  %7 = alloca [49 x i16], align 16
  %8 = alloca [10 x i32], align 16
  %9 = alloca [10 x i32], align 16
  %10 = alloca [20 x i64], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #20
  store i32 0, ptr %6, align 4, !tbaa !17
  call void @llvm.lifetime.start.p0(i64 98, ptr nonnull %7) #20
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %8) #20
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %9) #20
  call void @llvm.lifetime.start.p0(i64 160, ptr nonnull %10) #20
  %11 = getelementptr inbounds %struct.decNumber, ptr %1, i64 0, i32 2
  %12 = load i8, ptr %11, align 4, !tbaa !5
  %13 = zext i8 %12 to i32
  %14 = getelementptr inbounds %struct.decNumber, ptr %2, i64 0, i32 2
  %15 = load i8, ptr %14, align 4, !tbaa !5
  %16 = xor i8 %15, %12
  %17 = and i8 %16, -128
  %18 = or i8 %15, %12
  %19 = and i8 %18, 112
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %60, label %21

21:                                               ; preds = %5
  %22 = and i8 %18, 48
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %21
  %25 = tail call fastcc ptr @decNaNs(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef %3, ptr noundef %4) #18
  br label %371

26:                                               ; preds = %21
  %27 = and i32 %13, 64
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %39

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.decNumber, ptr %1, i64 0, i32 3
  %31 = load i16, ptr %30, align 2, !tbaa !10
  %32 = icmp eq i16 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %29
  %34 = load i32, ptr %1, align 4, !tbaa !14
  %35 = icmp eq i32 %34, 1
  %36 = and i32 %13, 48
  %37 = icmp eq i32 %36, 0
  %38 = and i1 %37, %35
  br i1 %38, label %53, label %39

39:                                               ; preds = %33, %29, %26
  %40 = zext i8 %15 to i32
  %41 = and i32 %40, 64
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %56

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.decNumber, ptr %2, i64 0, i32 3
  %45 = load i16, ptr %44, align 2, !tbaa !10
  %46 = icmp eq i16 %45, 0
  br i1 %46, label %47, label %56

47:                                               ; preds = %43
  %48 = load i32, ptr %2, align 4, !tbaa !14
  %49 = icmp eq i32 %48, 1
  %50 = and i32 %40, 48
  %51 = icmp eq i32 %50, 0
  %52 = and i1 %51, %49
  br i1 %52, label %53, label %56

53:                                               ; preds = %47, %33
  %54 = load i32, ptr %4, align 4, !tbaa !17
  %55 = or i32 %54, 128
  store i32 %55, ptr %4, align 4, !tbaa !17
  br label %371

56:                                               ; preds = %47, %43, %39
  %57 = tail call ptr @decNumberZero(ptr noundef %0) #18
  %58 = or disjoint i8 %17, 64
  %59 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 2
  store i8 %58, ptr %59, align 4, !tbaa !5
  br label %371

60:                                               ; preds = %5
  %61 = load i32, ptr %1, align 4, !tbaa !14
  %62 = load i32, ptr %2, align 4, !tbaa !14
  %63 = icmp slt i32 %61, %62
  %64 = tail call i32 @llvm.smin.i32(i32 %61, i32 %62)
  %65 = select i1 %63, ptr %1, ptr %2
  %66 = tail call i32 @llvm.smax.i32(i32 %61, i32 %62)
  %67 = select i1 %63, ptr %2, ptr %1
  %68 = icmp sgt i32 %64, 6
  br i1 %68, label %69, label %270

69:                                               ; preds = %60
  %70 = add nsw i32 %66, 8
  %71 = sdiv i32 %70, 9
  %72 = add nuw i32 %64, 8
  %73 = udiv i32 %72, 9
  %74 = add nsw i32 %71, %73
  %75 = icmp sgt i32 %66, 90
  br i1 %75, label %76, label %80

76:                                               ; preds = %69
  %77 = shl nuw nsw i32 %71, 2
  %78 = zext nneg i32 %77 to i64
  %79 = tail call noalias ptr @malloc(i64 noundef %78) #21
  br label %80

80:                                               ; preds = %76, %69
  %81 = phi ptr [ %79, %76 ], [ %8, %69 ]
  %82 = phi ptr [ %79, %76 ], [ null, %69 ]
  %83 = icmp ugt i32 %64, 90
  br i1 %83, label %84, label %88

84:                                               ; preds = %80
  %85 = shl nuw nsw i32 %73, 2
  %86 = zext nneg i32 %85 to i64
  %87 = tail call noalias ptr @malloc(i64 noundef %86) #21
  br label %88

88:                                               ; preds = %84, %80
  %89 = phi ptr [ %87, %84 ], [ %9, %80 ]
  %90 = phi ptr [ %87, %84 ], [ null, %80 ]
  %91 = sext i32 %74 to i64
  %92 = shl i32 %74, 3
  %93 = icmp sgt i32 %92, 160
  br i1 %93, label %94, label %97

94:                                               ; preds = %88
  %95 = zext nneg i32 %92 to i64
  %96 = tail call noalias ptr @malloc(i64 noundef %95) #21
  br label %97

97:                                               ; preds = %94, %88
  %98 = phi ptr [ %96, %94 ], [ %10, %88 ]
  %99 = phi ptr [ %96, %94 ], [ null, %88 ]
  %100 = ptrtoint ptr %98 to i64
  %101 = icmp eq ptr %81, null
  %102 = icmp eq ptr %89, null
  %103 = or i1 %101, %102
  %104 = icmp eq ptr %98, null
  %105 = or i1 %103, %104
  br i1 %105, label %106, label %109

106:                                              ; preds = %97
  %107 = load i32, ptr %4, align 4, !tbaa !17
  %108 = or i32 %107, 16
  store i32 %108, ptr %4, align 4, !tbaa !17
  br label %359

109:                                              ; preds = %97
  %110 = icmp sgt i32 %66, 0
  br i1 %110, label %111, label %136

111:                                              ; preds = %109
  %112 = getelementptr inbounds %struct.decNumber, ptr %67, i64 0, i32 3
  br label %113

113:                                              ; preds = %111, %134
  %114 = phi ptr [ %129, %134 ], [ %112, %111 ]
  %115 = phi i32 [ %130, %134 ], [ %66, %111 ]
  %116 = phi ptr [ %135, %134 ], [ %81, %111 ]
  br label %117

117:                                              ; preds = %113, %117
  %118 = phi i64 [ 0, %113 ], [ %128, %117 ]
  %119 = phi i32 [ 0, %113 ], [ %127, %117 ]
  %120 = phi ptr [ %114, %113 ], [ %129, %117 ]
  %121 = phi i32 [ %115, %113 ], [ %130, %117 ]
  %122 = load i16, ptr %120, align 2, !tbaa !10
  %123 = zext i16 %122 to i32
  %124 = getelementptr inbounds [10 x i32], ptr @DECPOWERS, i64 0, i64 %118
  %125 = load i32, ptr %124, align 4, !tbaa !17
  %126 = mul i32 %125, %123
  %127 = add i32 %119, %126
  %128 = add nuw nsw i64 %118, 3
  %129 = getelementptr inbounds i16, ptr %120, i64 1
  %130 = add nsw i32 %121, -3
  %131 = icmp ult i64 %118, 6
  %132 = icmp ugt i32 %121, 3
  %133 = select i1 %131, i1 %132, i1 false
  br i1 %133, label %117, label %134, !llvm.loop !50

134:                                              ; preds = %117
  store i32 %127, ptr %116, align 4, !tbaa !17
  %135 = getelementptr inbounds i32, ptr %116, i64 1
  br i1 %132, label %113, label %136, !llvm.loop !51

136:                                              ; preds = %134, %109
  %137 = phi ptr [ %81, %109 ], [ %135, %134 ]
  %138 = getelementptr inbounds i32, ptr %137, i64 -1
  %139 = getelementptr inbounds %struct.decNumber, ptr %65, i64 0, i32 3
  br label %140

140:                                              ; preds = %136, %161
  %141 = phi ptr [ %156, %161 ], [ %139, %136 ]
  %142 = phi i32 [ %157, %161 ], [ %64, %136 ]
  %143 = phi ptr [ %162, %161 ], [ %89, %136 ]
  br label %144

144:                                              ; preds = %140, %144
  %145 = phi i64 [ 0, %140 ], [ %155, %144 ]
  %146 = phi i32 [ 0, %140 ], [ %154, %144 ]
  %147 = phi ptr [ %141, %140 ], [ %156, %144 ]
  %148 = phi i32 [ %142, %140 ], [ %157, %144 ]
  %149 = load i16, ptr %147, align 2, !tbaa !10
  %150 = zext i16 %149 to i32
  %151 = getelementptr inbounds [10 x i32], ptr @DECPOWERS, i64 0, i64 %145
  %152 = load i32, ptr %151, align 4, !tbaa !17
  %153 = mul i32 %152, %150
  %154 = add i32 %146, %153
  %155 = add nuw nsw i64 %145, 3
  %156 = getelementptr inbounds i16, ptr %147, i64 1
  %157 = add nsw i32 %148, -3
  %158 = icmp ult i64 %145, 6
  %159 = icmp sgt i32 %148, 3
  %160 = select i1 %158, i1 %159, i1 false
  br i1 %160, label %144, label %161, !llvm.loop !52

161:                                              ; preds = %144
  store i32 %154, ptr %143, align 4, !tbaa !17
  %162 = getelementptr inbounds i32, ptr %143, i64 1
  br i1 %159, label %140, label %163, !llvm.loop !53

163:                                              ; preds = %161
  %164 = getelementptr inbounds i64, ptr %98, i64 %91
  %165 = icmp sgt i32 %74, 0
  br i1 %165, label %166, label %175

166:                                              ; preds = %163
  %167 = shl nuw nsw i64 %91, 3
  %168 = add i64 %167, %100
  %169 = add i64 %100, 8
  %170 = call i64 @llvm.umax.i64(i64 %168, i64 %169)
  %171 = xor i64 %100, -1
  %172 = add i64 %170, %171
  %173 = and i64 %172, -8
  %174 = add i64 %173, 8
  call void @llvm.memset.p0.i64(ptr align 8 %98, i8 0, i64 %174, i1 false), !tbaa !54
  br label %175

175:                                              ; preds = %166, %163
  %176 = icmp ugt ptr %89, %143
  br i1 %176, label %181, label %177

177:                                              ; preds = %175
  %178 = ptrtoint ptr %89 to i64
  %179 = icmp ugt ptr %81, %138
  %180 = icmp slt i32 %74, 1
  br label %182

181:                                              ; preds = %238, %175
  br i1 %165, label %242, label %265

182:                                              ; preds = %177, %238
  %183 = phi i32 [ 18, %177 ], [ %239, %238 ]
  %184 = phi ptr [ %89, %177 ], [ %240, %238 ]
  br i1 %179, label %203, label %185

185:                                              ; preds = %182
  %186 = ptrtoint ptr %184 to i64
  %187 = sub i64 %186, %178
  %188 = ashr exact i64 %187, 2
  %189 = getelementptr inbounds i64, ptr %98, i64 %188
  %190 = load i32, ptr %184, align 4, !tbaa !17
  %191 = zext i32 %190 to i64
  br label %192

192:                                              ; preds = %185, %192
  %193 = phi ptr [ %189, %185 ], [ %201, %192 ]
  %194 = phi ptr [ %81, %185 ], [ %200, %192 ]
  %195 = load i32, ptr %194, align 4, !tbaa !17
  %196 = zext i32 %195 to i64
  %197 = mul nuw i64 %191, %196
  %198 = load i64, ptr %193, align 8, !tbaa !54
  %199 = add i64 %197, %198
  store i64 %199, ptr %193, align 8, !tbaa !54
  %200 = getelementptr inbounds i32, ptr %194, i64 1
  %201 = getelementptr inbounds i64, ptr %193, i64 1
  %202 = icmp ugt ptr %200, %138
  br i1 %202, label %203, label %192, !llvm.loop !56

203:                                              ; preds = %192, %182
  %204 = icmp sgt i32 %183, 1
  %205 = add nsw i32 %183, -1
  %206 = icmp ne ptr %184, %143
  %207 = and i1 %204, %206
  %208 = or i1 %207, %180
  %209 = select i1 %207, i32 %205, i32 18
  br i1 %208, label %238, label %210

210:                                              ; preds = %203, %235
  %211 = phi ptr [ %236, %235 ], [ %98, %203 ]
  %212 = load i64, ptr %211, align 8, !tbaa !54
  %213 = icmp ult i64 %212, 1000000000
  br i1 %213, label %235, label %214

214:                                              ; preds = %210
  %215 = udiv i64 %212, 1000000000
  %216 = icmp ult i64 %212, 1000000000000000000
  br i1 %216, label %226, label %217

217:                                              ; preds = %214
  %218 = udiv i64 %212, 1000000000000000000
  %219 = getelementptr inbounds i64, ptr %211, i64 2
  %220 = load i64, ptr %219, align 8, !tbaa !54
  %221 = add i64 %220, %218
  store i64 %221, ptr %219, align 8, !tbaa !54
  %222 = mul i64 %218, -1000000000000000000
  %223 = add i64 %222, %212
  %224 = mul nuw nsw i64 %218, 3294967296
  %225 = add nuw nsw i64 %224, %215
  br label %226

226:                                              ; preds = %214, %217
  %227 = phi i64 [ %223, %217 ], [ %212, %214 ]
  %228 = phi i64 [ %225, %217 ], [ %215, %214 ]
  %229 = and i64 %228, 4294967295
  %230 = getelementptr inbounds i64, ptr %211, i64 1
  %231 = load i64, ptr %230, align 8, !tbaa !54
  %232 = add i64 %231, %229
  store i64 %232, ptr %230, align 8, !tbaa !54
  %233 = mul nsw i64 %229, -1000000000
  %234 = add i64 %227, %233
  store i64 %234, ptr %211, align 8, !tbaa !54
  br label %235

235:                                              ; preds = %210, %226
  %236 = getelementptr inbounds i64, ptr %211, i64 1
  %237 = icmp ult ptr %236, %164
  br i1 %237, label %210, label %238, !llvm.loop !57

238:                                              ; preds = %235, %203
  %239 = phi i32 [ %209, %203 ], [ 18, %235 ]
  %240 = getelementptr inbounds i32, ptr %184, i64 1
  %241 = icmp ugt ptr %240, %143
  br i1 %241, label %181, label %182, !llvm.loop !58

242:                                              ; preds = %181, %258
  %243 = phi ptr [ %261, %258 ], [ %98, %181 ]
  %244 = phi ptr [ %260, %258 ], [ %98, %181 ]
  %245 = load i64, ptr %243, align 8, !tbaa !54
  %246 = trunc i64 %245 to i32
  br label %247

247:                                              ; preds = %242, %247
  %248 = phi i32 [ %246, %242 ], [ %251, %247 ]
  %249 = phi i32 [ 0, %242 ], [ %255, %247 ]
  %250 = phi ptr [ %244, %242 ], [ %256, %247 ]
  %251 = udiv i32 %248, 1000
  %252 = mul i32 %251, 64536
  %253 = add i32 %252, %248
  %254 = trunc i32 %253 to i16
  store i16 %254, ptr %250, align 2, !tbaa !10
  %255 = add nuw nsw i32 %249, 3
  %256 = getelementptr inbounds i16, ptr %250, i64 1
  %257 = icmp ult i32 %249, 3
  br i1 %257, label %247, label %258, !llvm.loop !59

258:                                              ; preds = %247
  %259 = trunc i32 %251 to i16
  store i16 %259, ptr %256, align 2, !tbaa !10
  %260 = getelementptr inbounds i16, ptr %250, i64 2
  %261 = getelementptr inbounds i64, ptr %243, i64 1
  %262 = icmp ult ptr %261, %164
  br i1 %262, label %242, label %263, !llvm.loop !60

263:                                              ; preds = %258
  %264 = ptrtoint ptr %260 to i64
  br label %265

265:                                              ; preds = %263, %181
  %266 = phi i64 [ %264, %263 ], [ %100, %181 ]
  %267 = sub i64 %266, %100
  %268 = lshr exact i64 %267, 1
  %269 = trunc i64 %268 to i32
  br label %339

270:                                              ; preds = %60
  %271 = icmp slt i32 %66, 50
  br i1 %271, label %272, label %277

272:                                              ; preds = %270
  %273 = sext i32 %66 to i64
  %274 = getelementptr inbounds [50 x i8], ptr @d2utable, i64 0, i64 %273
  %275 = load i8, ptr %274, align 1, !tbaa !20
  %276 = zext i8 %275 to i32
  br label %280

277:                                              ; preds = %270
  %278 = add nuw nsw i32 %66, 2
  %279 = udiv i32 %278, 3
  br label %280

280:                                              ; preds = %277, %272
  %281 = phi i32 [ %276, %272 ], [ %279, %277 ]
  %282 = sext i32 %64 to i64
  %283 = getelementptr inbounds [50 x i8], ptr @d2utable, i64 0, i64 %282
  %284 = load i8, ptr %283, align 1, !tbaa !20
  %285 = zext i8 %284 to i32
  %286 = add nuw nsw i32 %281, %285
  %287 = icmp ugt i32 %286, 49
  br i1 %287, label %288, label %296

288:                                              ; preds = %280
  %289 = shl nuw nsw i32 %286, 1
  %290 = zext nneg i32 %289 to i64
  %291 = tail call noalias ptr @malloc(i64 noundef %290) #21
  %292 = icmp eq ptr %291, null
  br i1 %292, label %293, label %296

293:                                              ; preds = %288
  %294 = load i32, ptr %4, align 4, !tbaa !17
  %295 = or i32 %294, 16
  store i32 %295, ptr %4, align 4, !tbaa !17
  br label %371

296:                                              ; preds = %288, %280
  %297 = phi ptr [ null, %280 ], [ %291, %288 ]
  %298 = phi ptr [ %7, %280 ], [ %291, %288 ]
  store i16 0, ptr %298, align 2, !tbaa !10
  br i1 %271, label %299, label %304

299:                                              ; preds = %296
  %300 = sext i32 %66 to i64
  %301 = getelementptr inbounds [50 x i8], ptr @d2utable, i64 0, i64 %300
  %302 = load i8, ptr %301, align 1, !tbaa !20
  %303 = zext i8 %302 to i32
  br label %307

304:                                              ; preds = %296
  %305 = add nuw nsw i32 %66, 2
  %306 = udiv i32 %305, 3
  br label %307

307:                                              ; preds = %304, %299
  %308 = phi i32 [ %303, %299 ], [ %306, %304 ]
  %309 = zext i8 %284 to i64
  %310 = shl nuw nsw i64 %309, 1
  %311 = getelementptr i8, ptr %65, i64 %310
  %312 = getelementptr i8, ptr %311, i64 10
  %313 = icmp eq i32 %64, 0
  br i1 %313, label %339, label %314

314:                                              ; preds = %307
  %315 = getelementptr inbounds i8, ptr %65, i64 10
  %316 = getelementptr inbounds %struct.decNumber, ptr %67, i64 0, i32 3
  br label %317

317:                                              ; preds = %314, %334
  %318 = phi i64 [ 0, %314 ], [ %336, %334 ]
  %319 = phi i32 [ 1, %314 ], [ %335, %334 ]
  %320 = phi ptr [ %315, %314 ], [ %337, %334 ]
  %321 = load i16, ptr %320, align 2, !tbaa !10
  %322 = icmp eq i16 %321, 0
  br i1 %322, label %330, label %323

323:                                              ; preds = %317
  %324 = zext i16 %321 to i32
  %325 = getelementptr inbounds i16, ptr %298, i64 %318
  %326 = trunc i64 %318 to i32
  %327 = sub nsw i32 %319, %326
  %328 = call fastcc i32 @decUnitAddSub(ptr noundef nonnull %325, i32 noundef %327, ptr noundef nonnull %316, i32 noundef %308, i32 noundef 0, ptr noundef nonnull %325, i32 noundef %324) #18
  %329 = add nsw i32 %328, %326
  br label %334

330:                                              ; preds = %317
  %331 = sext i32 %319 to i64
  %332 = getelementptr inbounds i16, ptr %298, i64 %331
  store i16 0, ptr %332, align 2, !tbaa !10
  %333 = add nsw i32 %319, 1
  br label %334

334:                                              ; preds = %330, %323
  %335 = phi i32 [ %329, %323 ], [ %333, %330 ]
  %336 = add nuw i64 %318, 1
  %337 = getelementptr inbounds i16, ptr %320, i64 1
  %338 = icmp ult ptr %337, %312
  br i1 %338, label %317, label %339, !llvm.loop !61

339:                                              ; preds = %334, %307, %265
  %340 = phi ptr [ %82, %265 ], [ null, %307 ], [ null, %334 ]
  %341 = phi ptr [ %90, %265 ], [ null, %307 ], [ null, %334 ]
  %342 = phi ptr [ %99, %265 ], [ %297, %307 ], [ %297, %334 ]
  %343 = phi ptr [ %98, %265 ], [ %298, %307 ], [ %298, %334 ]
  %344 = phi i32 [ %269, %265 ], [ 1, %307 ], [ %335, %334 ]
  %345 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 2
  store i8 %17, ptr %345, align 4, !tbaa !5
  %346 = call fastcc i32 @decGetDigits(ptr noundef %343, i32 noundef %344) #18
  store i32 %346, ptr %0, align 4, !tbaa !14
  %347 = getelementptr inbounds %struct.decNumber, ptr %67, i64 0, i32 1
  %348 = load i32, ptr %347, align 4, !tbaa !15
  %349 = getelementptr inbounds %struct.decNumber, ptr %65, i64 0, i32 1
  %350 = load i32, ptr %349, align 4, !tbaa !15
  %351 = add nsw i32 %350, %348
  %352 = icmp slt i32 %348, 0
  %353 = icmp slt i32 %350, 0
  %354 = icmp sgt i32 %351, 0
  %355 = select i1 %352, i1 %353, i1 false
  %356 = select i1 %355, i1 %354, i1 false
  %357 = select i1 %356, i32 -1999999998, i32 %351
  %358 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 1
  store i32 %357, ptr %358, align 4, !tbaa !15
  call fastcc void @decSetCoeff(ptr noundef nonnull %0, ptr noundef %3, ptr noundef %343, i32 noundef %346, ptr noundef nonnull %6, ptr noundef %4) #18
  call fastcc void @decFinalize(ptr noundef nonnull %0, ptr noundef %3, ptr noundef nonnull %6, ptr noundef %4) #18
  br label %359

359:                                              ; preds = %339, %106
  %360 = phi ptr [ %82, %106 ], [ %340, %339 ]
  %361 = phi ptr [ %90, %106 ], [ %341, %339 ]
  %362 = phi ptr [ %99, %106 ], [ %342, %339 ]
  %363 = icmp eq ptr %362, null
  br i1 %363, label %365, label %364

364:                                              ; preds = %359
  call void @free(ptr noundef nonnull %362) #19
  br label %365

365:                                              ; preds = %364, %359
  %366 = icmp eq ptr %361, null
  br i1 %366, label %368, label %367

367:                                              ; preds = %365
  call void @free(ptr noundef nonnull %361) #19
  br label %368

368:                                              ; preds = %367, %365
  %369 = icmp eq ptr %360, null
  br i1 %369, label %371, label %370

370:                                              ; preds = %368
  call void @free(ptr noundef nonnull %360) #19
  br label %371

371:                                              ; preds = %293, %368, %370, %56, %53, %24
  call void @llvm.lifetime.end.p0(i64 160, ptr nonnull %10) #20
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %9) #20
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %8) #20
  call void @llvm.lifetime.end.p0(i64 98, ptr nonnull %7) #20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #20
  ret ptr %0
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @decNumberInvert(ptr noundef returned %0, ptr noundef readonly %1, ptr noundef %2) local_unnamed_addr #4 {
  %4 = getelementptr inbounds %struct.decNumber, ptr %1, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !15
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %11

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.decNumber, ptr %1, i64 0, i32 2
  %9 = load i8, ptr %8, align 4, !tbaa !5
  %10 = icmp ult i8 %9, 16
  br i1 %10, label %12, label %11

11:                                               ; preds = %7, %3
  tail call fastcc void @decStatus(ptr noundef %0, i32 noundef 128, ptr noundef %2) #18
  br label %100

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.decNumber, ptr %1, i64 0, i32 3
  %14 = getelementptr inbounds i8, ptr %0, i64 10
  %15 = load i32, ptr %1, align 4, !tbaa !14
  %16 = icmp slt i32 %15, 50
  br i1 %16, label %17, label %22

17:                                               ; preds = %12
  %18 = sext i32 %15 to i64
  %19 = getelementptr inbounds [50 x i8], ptr @d2utable, i64 0, i64 %18
  %20 = load i8, ptr %19, align 1, !tbaa !20
  %21 = zext i8 %20 to i32
  br label %25

22:                                               ; preds = %12
  %23 = add nuw nsw i32 %15, 2
  %24 = udiv i32 %23, 3
  br label %25

25:                                               ; preds = %22, %17
  %26 = phi i32 [ %21, %17 ], [ %24, %22 ]
  %27 = zext nneg i32 %26 to i64
  %28 = getelementptr inbounds i16, ptr %13, i64 %27
  %29 = getelementptr inbounds i16, ptr %28, i64 -1
  %30 = load i32, ptr %2, align 4, !tbaa !27
  %31 = icmp slt i32 %30, 50
  br i1 %31, label %37, label %32

32:                                               ; preds = %25
  %33 = add nuw nsw i32 %30, 2
  %34 = udiv i32 %33, 3
  %35 = shl nuw nsw i32 %34, 1
  %36 = zext nneg i32 %35 to i64
  br label %45

37:                                               ; preds = %25
  %38 = sext i32 %30 to i64
  %39 = getelementptr inbounds [50 x i8], ptr @d2utable, i64 0, i64 %38
  %40 = load i8, ptr %39, align 1, !tbaa !20
  %41 = zext i8 %40 to i64
  %42 = zext i8 %40 to i32
  %43 = shl nuw nsw i64 %41, 1
  %44 = icmp eq i32 %30, 0
  br i1 %44, label %90, label %45

45:                                               ; preds = %32, %37
  %46 = phi i64 [ %36, %32 ], [ %43, %37 ]
  %47 = phi i32 [ %34, %32 ], [ %42, %37 ]
  %48 = getelementptr i8, ptr %0, i64 %46
  %49 = getelementptr i8, ptr %48, i64 8
  %50 = mul nsw i32 %47, -3
  %51 = add i32 %30, 2
  %52 = add i32 %51, %50
  %53 = zext i32 %52 to i64
  br label %54

54:                                               ; preds = %45, %86
  %55 = phi ptr [ %13, %45 ], [ %87, %86 ]
  %56 = phi ptr [ %14, %45 ], [ %88, %86 ]
  %57 = icmp ugt ptr %55, %29
  br i1 %57, label %60, label %58

58:                                               ; preds = %54
  %59 = load i16, ptr %55, align 2, !tbaa !10
  br label %60

60:                                               ; preds = %54, %58
  %61 = phi i16 [ %59, %58 ], [ 0, %54 ]
  store i16 0, ptr %56, align 2, !tbaa !10
  %62 = icmp ne ptr %56, %49
  br label %63

63:                                               ; preds = %79, %60
  %64 = phi i16 [ %75, %79 ], [ 0, %60 ]
  %65 = phi i64 [ %82, %79 ], [ 0, %60 ]
  %66 = phi i16 [ %77, %79 ], [ %61, %60 ]
  %67 = and i16 %66, 1
  %68 = icmp eq i16 %67, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %63
  %70 = getelementptr inbounds [10 x i32], ptr @DECPOWERS, i64 0, i64 %65
  %71 = load i32, ptr %70, align 4, !tbaa !17
  %72 = trunc i32 %71 to i16
  %73 = add i16 %64, %72
  store i16 %73, ptr %56, align 2, !tbaa !10
  br label %74

74:                                               ; preds = %69, %63
  %75 = phi i16 [ %73, %69 ], [ %64, %63 ]
  %76 = urem i16 %66, 10
  %77 = udiv i16 %66, 10
  %78 = icmp ugt i16 %76, 1
  br i1 %78, label %85, label %79

79:                                               ; preds = %74
  %80 = icmp ne i64 %65, %53
  %81 = select i1 %62, i1 true, i1 %80
  %82 = add nuw nsw i64 %65, 1
  %83 = icmp ult i64 %65, 2
  %84 = select i1 %81, i1 %83, i1 false
  br i1 %84, label %63, label %86, !llvm.loop !62

85:                                               ; preds = %74
  tail call fastcc void @decStatus(ptr noundef %0, i32 noundef 128, ptr noundef nonnull %2) #18
  br label %100

86:                                               ; preds = %79
  %87 = getelementptr inbounds i16, ptr %55, i64 1
  %88 = getelementptr inbounds i16, ptr %56, i64 1
  %89 = icmp ugt ptr %88, %49
  br i1 %89, label %90, label %54, !llvm.loop !63

90:                                               ; preds = %86, %37
  %91 = phi ptr [ %14, %37 ], [ %88, %86 ]
  %92 = ptrtoint ptr %91 to i64
  %93 = ptrtoint ptr %14 to i64
  %94 = sub i64 %92, %93
  %95 = lshr exact i64 %94, 1
  %96 = trunc i64 %95 to i32
  %97 = tail call fastcc i32 @decGetDigits(ptr noundef nonnull %14, i32 noundef %96) #18
  store i32 %97, ptr %0, align 4, !tbaa !14
  %98 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 1
  store i32 0, ptr %98, align 4, !tbaa !15
  %99 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 2
  store i8 0, ptr %99, align 4, !tbaa !5
  br label %100

100:                                              ; preds = %85, %90, %11
  ret ptr %0
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @decNumberLn(ptr noundef returned %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #4 {
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #20
  store i32 0, ptr %4, align 4, !tbaa !17
  %5 = call fastcc i32 @decCheckMath(ptr noundef %1, ptr noundef %2, ptr noundef nonnull %4) #18, !range !48
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %3
  %8 = call fastcc ptr @decLnOp(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %4) #18
  br label %9

9:                                                ; preds = %7, %3
  %10 = load i32, ptr %4, align 4, !tbaa !17
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %9
  tail call fastcc void @decStatus(ptr noundef %0, i32 noundef %10, ptr noundef %2) #18
  br label %13

13:                                               ; preds = %12, %9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #20
  ret ptr %0
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @decLnOp(ptr noundef returned %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef %3) unnamed_addr #4 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [4 x %struct.decNumber], align 16
  %8 = alloca [5 x %struct.decNumber], align 16
  %9 = alloca %struct.decNumber, align 4
  %10 = alloca %struct.decNumber, align 4
  %11 = alloca %struct.decContext, align 4
  %12 = alloca %struct.decContext, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #20
  store i32 0, ptr %5, align 4, !tbaa !17
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #20
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %7) #20
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %8) #20
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #20
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #20
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %11) #20
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %12) #20
  %13 = getelementptr inbounds %struct.decNumber, ptr %1, i64 0, i32 2
  %14 = load i8, ptr %13, align 4, !tbaa !5
  %15 = zext i8 %14 to i32
  %16 = and i32 %15, 112
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %30, label %18

18:                                               ; preds = %4
  %19 = and i32 %15, 64
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %28, label %21

21:                                               ; preds = %18
  %22 = icmp sgt i8 %14, -1
  br i1 %22, label %26, label %23

23:                                               ; preds = %21
  %24 = load i32, ptr %3, align 4, !tbaa !17
  %25 = or i32 %24, 128
  store i32 %25, ptr %3, align 4, !tbaa !17
  br label %252

26:                                               ; preds = %21
  %27 = tail call ptr @decNumberCopy(ptr noundef %0, ptr noundef nonnull %1) #18
  br label %252

28:                                               ; preds = %18
  %29 = tail call fastcc ptr @decNaNs(ptr noundef %0, ptr noundef nonnull %1, ptr noundef null, ptr noundef %2, ptr noundef %3) #18
  br label %252

30:                                               ; preds = %4
  %31 = getelementptr inbounds %struct.decNumber, ptr %1, i64 0, i32 3
  %32 = load i16, ptr %31, align 2, !tbaa !10
  %33 = icmp eq i16 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %30
  %35 = load i32, ptr %1, align 4, !tbaa !14
  %36 = icmp eq i32 %35, 1
  br i1 %36, label %37, label %40

37:                                               ; preds = %34
  %38 = tail call ptr @decNumberZero(ptr noundef %0) #18
  %39 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 2
  store i8 -64, ptr %39, align 4, !tbaa !5
  br label %252

40:                                               ; preds = %34, %30
  %41 = icmp sgt i8 %14, -1
  br i1 %41, label %45, label %42

42:                                               ; preds = %40
  %43 = load i32, ptr %3, align 4, !tbaa !17
  %44 = or i32 %43, 128
  store i32 %44, ptr %3, align 4, !tbaa !17
  br label %252

45:                                               ; preds = %40
  %46 = getelementptr inbounds %struct.decNumber, ptr %1, i64 0, i32 1
  %47 = load i32, ptr %46, align 4, !tbaa !15
  %48 = icmp eq i32 %47, 0
  %49 = load i32, ptr %2, align 4, !tbaa !27
  %50 = icmp slt i32 %49, 41
  %51 = select i1 %48, i1 %50, i1 false
  br i1 %51, label %52, label %69

52:                                               ; preds = %45
  switch i16 %32, label %69 [
    i16 10, label %53
    i16 2, label %61
  ]

53:                                               ; preds = %52
  %54 = load i32, ptr %1, align 4, !tbaa !14
  %55 = icmp eq i32 %54, 2
  br i1 %55, label %56, label %69

56:                                               ; preds = %53
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %11, ptr noundef nonnull align 4 dereferenceable(28) %2, i64 28, i1 false), !tbaa.struct !49
  %57 = getelementptr inbounds %struct.decContext, ptr %11, i64 0, i32 3
  store i32 3, ptr %57, align 4, !tbaa !37
  %58 = call ptr @decNumberFromString(ptr noundef %0, ptr noundef nonnull @.str.18, ptr noundef nonnull %11) #18
  %59 = load i32, ptr %3, align 4, !tbaa !17
  %60 = or i32 %59, 2080
  store i32 %60, ptr %3, align 4, !tbaa !17
  br label %252

61:                                               ; preds = %52
  %62 = load i32, ptr %1, align 4, !tbaa !14
  %63 = icmp eq i32 %62, 1
  br i1 %63, label %64, label %69

64:                                               ; preds = %61
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %11, ptr noundef nonnull align 4 dereferenceable(28) %2, i64 28, i1 false), !tbaa.struct !49
  %65 = getelementptr inbounds %struct.decContext, ptr %11, i64 0, i32 3
  store i32 3, ptr %65, align 4, !tbaa !37
  %66 = call ptr @decNumberFromString(ptr noundef %0, ptr noundef nonnull @.str.19, ptr noundef nonnull %11) #18
  %67 = load i32, ptr %3, align 4, !tbaa !17
  %68 = or i32 %67, 2080
  store i32 %68, ptr %3, align 4, !tbaa !17
  br label %252

69:                                               ; preds = %52, %53, %61, %45
  %70 = load i32, ptr %1, align 4, !tbaa !14
  %71 = tail call i32 @llvm.smax.i32(i32 %49, i32 %70)
  %72 = tail call i32 @llvm.smax.i32(i32 %71, i32 7)
  %73 = add nuw nsw i32 %72, 2
  %74 = tail call i32 @llvm.smax.i32(i32 %73, i32 16)
  %75 = icmp slt i32 %71, 48
  br i1 %75, label %76, label %81

76:                                               ; preds = %69
  %77 = zext nneg i32 %74 to i64
  %78 = getelementptr inbounds [50 x i8], ptr @d2utable, i64 0, i64 %77
  %79 = load i8, ptr %78, align 1, !tbaa !20
  %80 = zext i8 %79 to i32
  br label %84

81:                                               ; preds = %69
  %82 = add nuw nsw i32 %74, 2
  %83 = udiv i32 %82, 3
  br label %84

84:                                               ; preds = %81, %76
  %85 = phi i32 [ %80, %76 ], [ %83, %81 ]
  %86 = icmp ugt i32 %85, 19
  br i1 %86, label %87, label %96

87:                                               ; preds = %84
  %88 = shl nuw nsw i32 %85, 1
  %89 = add nuw nsw i32 %88, 10
  %90 = zext nneg i32 %89 to i64
  %91 = tail call noalias ptr @malloc(i64 noundef %90) #21
  %92 = icmp eq ptr %91, null
  br i1 %92, label %93, label %96

93:                                               ; preds = %87
  %94 = load i32, ptr %3, align 4, !tbaa !17
  %95 = or i32 %94, 16
  store i32 %95, ptr %3, align 4, !tbaa !17
  br label %252

96:                                               ; preds = %87, %84
  %97 = phi ptr [ null, %84 ], [ %91, %87 ]
  %98 = phi ptr [ %7, %84 ], [ %91, %87 ]
  %99 = add nsw i32 %73, %70
  %100 = tail call i32 @llvm.smax.i32(i32 %99, i32 16)
  %101 = icmp slt i32 %99, 50
  br i1 %101, label %102, label %107

102:                                              ; preds = %96
  %103 = zext nneg i32 %100 to i64
  %104 = getelementptr inbounds [50 x i8], ptr @d2utable, i64 0, i64 %103
  %105 = load i8, ptr %104, align 1, !tbaa !20
  %106 = zext i8 %105 to i32
  br label %110

107:                                              ; preds = %96
  %108 = add nuw nsw i32 %100, 2
  %109 = udiv i32 %108, 3
  br label %110

110:                                              ; preds = %107, %102
  %111 = phi i32 [ %106, %102 ], [ %109, %107 ]
  %112 = icmp ugt i32 %111, 25
  br i1 %112, label %113, label %122

113:                                              ; preds = %110
  %114 = shl nuw nsw i32 %111, 1
  %115 = add nuw nsw i32 %114, 10
  %116 = zext nneg i32 %115 to i64
  %117 = tail call noalias ptr @malloc(i64 noundef %116) #21
  %118 = icmp eq ptr %117, null
  br i1 %118, label %119, label %122

119:                                              ; preds = %113
  %120 = load i32, ptr %3, align 4, !tbaa !17
  %121 = or i32 %120, 16
  store i32 %121, ptr %3, align 4, !tbaa !17
  br label %245

122:                                              ; preds = %113, %110
  %123 = phi ptr [ null, %110 ], [ %117, %113 ]
  %124 = phi ptr [ %8, %110 ], [ %117, %113 ]
  %125 = getelementptr inbounds %struct.decNumber, ptr %124, i64 0, i32 2
  %126 = getelementptr inbounds %struct.decNumber, ptr %124, i64 0, i32 1
  %127 = getelementptr inbounds %struct.decNumber, ptr %124, i64 0, i32 3
  %128 = call ptr @decContextDefault(ptr noundef nonnull %11, i32 noundef 64) #19
  %129 = load i32, ptr %46, align 4, !tbaa !15
  %130 = load i32, ptr %1, align 4, !tbaa !14
  %131 = add nsw i32 %130, %129
  %132 = call ptr @decNumberFromInt32(ptr noundef nonnull %98, i32 noundef %131) #18
  %133 = call ptr @decNumberFromInt32(ptr noundef nonnull %124, i32 noundef 2302585) #18
  store i32 -6, ptr %126, align 4, !tbaa !15
  %134 = call fastcc ptr @decMultiplyOp(ptr noundef nonnull %98, ptr noundef nonnull %98, ptr noundef nonnull %124, ptr noundef nonnull %11, ptr noundef nonnull %5) #18
  store i32 0, ptr %6, align 4, !tbaa !17
  store i32 2, ptr %11, align 4, !tbaa !27
  %135 = getelementptr inbounds %struct.decContext, ptr %11, i64 0, i32 3
  store i32 5, ptr %135, align 4, !tbaa !37
  call fastcc void @decCopyFit(ptr noundef nonnull %124, ptr noundef nonnull %1, ptr noundef nonnull %11, ptr noundef nonnull %6, ptr noundef nonnull %5) #18
  store i32 0, ptr %126, align 4, !tbaa !15
  %136 = call fastcc i32 @decGetInt(ptr noundef nonnull %124) #18
  %137 = icmp slt i32 %136, 10
  %138 = mul i32 %136, 10
  %139 = select i1 %137, i32 %138, i32 %136
  %140 = add nsw i32 %139, -10
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds [90 x i16], ptr @LNnn, i64 0, i64 %141
  %143 = load i16, ptr %142, align 2, !tbaa !10
  %144 = zext i16 %143 to i32
  %145 = lshr i32 %144, 2
  %146 = call ptr @decNumberFromInt32(ptr noundef nonnull %124, i32 noundef %145) #18
  %147 = and i32 %144, 3
  %148 = sub nuw nsw i32 -3, %147
  store i32 %148, ptr %126, align 4, !tbaa !15
  store i8 -128, ptr %125, align 4, !tbaa !5
  store i32 16, ptr %11, align 4, !tbaa !27
  store i32 3, ptr %135, align 4, !tbaa !37
  %149 = call fastcc ptr @decAddOp(ptr noundef nonnull %98, ptr noundef nonnull %98, ptr noundef nonnull %124, ptr noundef nonnull %11, i8 noundef zeroext 0, ptr noundef nonnull %5) #18
  %150 = call ptr @decNumberZero(ptr noundef nonnull %9) #18
  %151 = getelementptr inbounds %struct.decNumber, ptr %9, i64 0, i32 3
  store i16 1, ptr %151, align 2, !tbaa !10
  %152 = getelementptr inbounds %struct.decContext, ptr %2, i64 0, i32 1
  %153 = getelementptr inbounds %struct.decContext, ptr %11, i64 0, i32 1
  %154 = load <2 x i32>, ptr %152, align 4, !tbaa !17
  store <2 x i32> %154, ptr %153, align 4, !tbaa !17
  %155 = getelementptr inbounds %struct.decContext, ptr %11, i64 0, i32 6
  store i8 0, ptr %155, align 4, !tbaa !29
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %12, ptr noundef nonnull align 4 dereferenceable(28) %11, i64 28, i1 false), !tbaa.struct !49
  %156 = getelementptr inbounds %struct.decContext, ptr %12, i64 0, i32 1
  store i32 1999998, ptr %156, align 4, !tbaa !33
  %157 = getelementptr inbounds %struct.decContext, ptr %12, i64 0, i32 2
  store i32 -1999998, ptr %157, align 4, !tbaa !32
  store i32 9, ptr %11, align 4, !tbaa !27
  %158 = load i32, ptr %1, align 4, !tbaa !14
  %159 = add nsw i32 %158, 9
  store i32 %159, ptr %12, align 4, !tbaa !27
  %160 = getelementptr inbounds %struct.decNumber, ptr %98, i64 0, i32 2
  %161 = getelementptr inbounds %struct.decNumber, ptr %98, i64 0, i32 1
  %162 = getelementptr inbounds %struct.decNumber, ptr %98, i64 0, i32 3
  br label %163

163:                                              ; preds = %227, %122
  %164 = phi i32 [ %229, %227 ], [ 9, %122 ]
  %165 = icmp eq i32 %164, %73
  br label %166

166:                                              ; preds = %163, %225
  %167 = load i8, ptr %160, align 4, !tbaa !5
  %168 = xor i8 %167, -128
  store i8 %168, ptr %160, align 4, !tbaa !5
  %169 = call fastcc ptr @decExpOp(ptr noundef nonnull %124, ptr noundef nonnull %98, ptr noundef nonnull %12, ptr noundef nonnull %5) #18
  %170 = load i8, ptr %160, align 4, !tbaa !5
  %171 = xor i8 %170, -128
  store i8 %171, ptr %160, align 4, !tbaa !5
  %172 = call fastcc ptr @decMultiplyOp(ptr noundef nonnull %124, ptr noundef nonnull %124, ptr noundef nonnull %1, ptr noundef nonnull %12, ptr noundef nonnull %5) #18
  %173 = call fastcc ptr @decAddOp(ptr noundef nonnull %124, ptr noundef nonnull %124, ptr noundef nonnull %9, ptr noundef nonnull %12, i8 noundef zeroext -128, ptr noundef nonnull %5) #18
  %174 = load i16, ptr %127, align 2, !tbaa !10
  %175 = icmp eq i16 %174, 0
  %176 = load i32, ptr %124, align 4, !tbaa !14
  %177 = icmp eq i32 %176, 1
  %178 = select i1 %175, i1 %177, i1 false
  br i1 %178, label %179, label %185

179:                                              ; preds = %166
  %180 = load i8, ptr %125, align 4, !tbaa !5
  %181 = and i8 %180, 112
  %182 = icmp eq i8 %181, 0
  br i1 %182, label %183, label %185

183:                                              ; preds = %179
  %184 = load i32, ptr %98, align 4, !tbaa !14
  br label %194

185:                                              ; preds = %179, %166
  %186 = load i32, ptr %98, align 4, !tbaa !14
  %187 = load i32, ptr %161, align 4, !tbaa !15
  %188 = add nsw i32 %187, %186
  %189 = load i32, ptr %126, align 4, !tbaa !15
  %190 = add nsw i32 %189, %176
  %191 = load i32, ptr %2, align 4, !tbaa !27
  %192 = add nsw i32 %190, %191
  %193 = icmp sgt i32 %188, %192
  br i1 %193, label %194, label %225

194:                                              ; preds = %183, %185
  %195 = phi i32 [ %184, %183 ], [ %186, %185 ]
  %196 = icmp eq i32 %195, %73
  br i1 %196, label %232, label %197

197:                                              ; preds = %194
  %198 = load i16, ptr %162, align 2, !tbaa !10
  %199 = icmp eq i16 %198, 0
  %200 = icmp eq i32 %195, 1
  %201 = and i1 %200, %199
  br i1 %201, label %202, label %215

202:                                              ; preds = %197
  %203 = load i8, ptr %160, align 4, !tbaa !5
  %204 = and i8 %203, 112
  %205 = icmp eq i8 %204, 0
  br i1 %205, label %206, label %215

206:                                              ; preds = %202
  %207 = call fastcc ptr @decCompareOp(ptr noundef nonnull %10, ptr noundef nonnull %1, ptr noundef nonnull %9, ptr noundef nonnull %11, i8 noundef zeroext 1, ptr noundef nonnull %5) #18
  %208 = getelementptr inbounds %struct.decNumber, ptr %10, i64 0, i32 3
  %209 = load i16, ptr %208, align 2, !tbaa !10
  %210 = icmp eq i16 %209, 0
  br i1 %210, label %211, label %212

211:                                              ; preds = %206
  store i32 0, ptr %161, align 4, !tbaa !15
  br label %232

212:                                              ; preds = %206
  %213 = load i32, ptr %3, align 4, !tbaa !17
  %214 = or i32 %213, 2080
  store i32 %214, ptr %3, align 4, !tbaa !17
  br label %232

215:                                              ; preds = %202, %197
  %216 = icmp eq i32 %176, 1
  %217 = select i1 %175, i1 %216, i1 false
  br i1 %217, label %218, label %225

218:                                              ; preds = %215
  %219 = load i8, ptr %125, align 4, !tbaa !5
  %220 = and i8 %219, 112
  %221 = icmp eq i8 %220, 0
  br i1 %221, label %222, label %225

222:                                              ; preds = %218
  %223 = load i32, ptr %161, align 4, !tbaa !15
  %224 = sub nsw i32 %223, %73
  store i32 %224, ptr %126, align 4, !tbaa !15
  br label %225

225:                                              ; preds = %215, %218, %222, %185
  %226 = call fastcc ptr @decAddOp(ptr noundef nonnull %98, ptr noundef nonnull %98, ptr noundef nonnull %124, ptr noundef nonnull %11, i8 noundef zeroext 0, ptr noundef nonnull %5) #18
  br i1 %165, label %166, label %227

227:                                              ; preds = %225
  %228 = shl nsw i32 %164, 1
  %229 = call i32 @llvm.smin.i32(i32 %228, i32 %73)
  store i32 %229, ptr %11, align 4, !tbaa !27
  %230 = load i32, ptr %1, align 4, !tbaa !14
  %231 = add nsw i32 %230, %229
  store i32 %231, ptr %12, align 4, !tbaa !27
  br label %163

232:                                              ; preds = %194, %211, %212
  store i32 1, ptr %6, align 4, !tbaa !17
  %233 = load i16, ptr %162, align 2, !tbaa !10
  %234 = icmp eq i16 %233, 0
  br i1 %234, label %235, label %243

235:                                              ; preds = %232
  %236 = load i32, ptr %98, align 4, !tbaa !14
  %237 = icmp eq i32 %236, 1
  br i1 %237, label %238, label %243

238:                                              ; preds = %235
  %239 = load i8, ptr %160, align 4, !tbaa !5
  %240 = and i8 %239, 112
  %241 = icmp eq i8 %240, 0
  br i1 %241, label %242, label %243

242:                                              ; preds = %238
  store i32 0, ptr %6, align 4, !tbaa !17
  br label %243

243:                                              ; preds = %242, %238, %235, %232
  %244 = load i32, ptr %2, align 4, !tbaa !27
  store i32 %244, ptr %11, align 4, !tbaa !27
  call fastcc void @decCopyFit(ptr noundef %0, ptr noundef nonnull %98, ptr noundef nonnull %11, ptr noundef nonnull %6, ptr noundef %3) #18
  call fastcc void @decFinalize(ptr noundef %0, ptr noundef nonnull %2, ptr noundef nonnull %6, ptr noundef %3) #18
  br label %245

245:                                              ; preds = %243, %119
  %246 = phi ptr [ null, %119 ], [ %123, %243 ]
  %247 = icmp eq ptr %97, null
  br i1 %247, label %249, label %248

248:                                              ; preds = %245
  call void @free(ptr noundef nonnull %97) #19
  br label %249

249:                                              ; preds = %248, %245
  %250 = icmp eq ptr %246, null
  br i1 %250, label %252, label %251

251:                                              ; preds = %249
  call void @free(ptr noundef nonnull %246) #19
  br label %252

252:                                              ; preds = %23, %26, %28, %37, %42, %56, %64, %93, %251, %249
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %12) #20
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %11) #20
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #20
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #20
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %8) #20
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %7) #20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #20
  ret ptr %0
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @decNumberLogB(ptr noundef returned %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #4 {
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #20
  store i32 0, ptr %4, align 4, !tbaa !17
  %5 = getelementptr inbounds %struct.decNumber, ptr %1, i64 0, i32 2
  %6 = load i8, ptr %5, align 4, !tbaa !5
  %7 = zext i8 %6 to i32
  %8 = and i32 %7, 48
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %31

10:                                               ; preds = %3
  %11 = and i32 %7, 64
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %10
  %14 = tail call ptr @decNumberCopyAbs(ptr noundef %0, ptr noundef nonnull %1) #18
  br label %37

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.decNumber, ptr %1, i64 0, i32 3
  %17 = load i16, ptr %16, align 2, !tbaa !10
  %18 = icmp eq i16 %17, 0
  %19 = load i32, ptr %1, align 4, !tbaa !14
  %20 = icmp eq i32 %19, 1
  %21 = select i1 %18, i1 %20, i1 false
  br i1 %21, label %22, label %25

22:                                               ; preds = %15
  %23 = tail call ptr @decNumberZero(ptr noundef %0) #18
  %24 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 2
  store i8 -64, ptr %24, align 4, !tbaa !5
  br label %35

25:                                               ; preds = %15
  %26 = getelementptr inbounds %struct.decNumber, ptr %1, i64 0, i32 1
  %27 = load i32, ptr %26, align 4, !tbaa !15
  %28 = add i32 %27, -1
  %29 = add i32 %28, %19
  %30 = tail call ptr @decNumberFromInt32(ptr noundef %0, i32 noundef %29) #18
  br label %37

31:                                               ; preds = %3
  %32 = call fastcc ptr @decNaNs(ptr noundef %0, ptr noundef nonnull %1, ptr noundef null, ptr noundef %2, ptr noundef nonnull %4) #18
  %33 = load i32, ptr %4, align 4, !tbaa !17
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %22, %31
  %36 = phi i32 [ 2, %22 ], [ %33, %31 ]
  tail call fastcc void @decStatus(ptr noundef %0, i32 noundef %36, ptr noundef %2) #18
  br label %37

37:                                               ; preds = %25, %13, %35, %31
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #20
  ret ptr %0
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef ptr @decNaNs(ptr noundef returned %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3, ptr nocapture noundef %4) unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.decNumber, ptr %1, i64 0, i32 2
  %7 = load i8, ptr %6, align 4, !tbaa !5
  %8 = zext i8 %7 to i32
  %9 = and i32 %8, 16
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %5
  %12 = load i32, ptr %4, align 4, !tbaa !17
  %13 = or i32 %12, 1073741952
  store i32 %13, ptr %4, align 4, !tbaa !17
  br label %28

14:                                               ; preds = %5
  %15 = icmp eq ptr %2, null
  br i1 %15, label %28, label %16

16:                                               ; preds = %14
  %17 = getelementptr inbounds %struct.decNumber, ptr %2, i64 0, i32 2
  %18 = load i8, ptr %17, align 4, !tbaa !5
  %19 = and i8 %18, 16
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %16
  %22 = load i32, ptr %4, align 4, !tbaa !17
  %23 = or i32 %22, 1073741952
  store i32 %23, ptr %4, align 4, !tbaa !17
  br label %28

24:                                               ; preds = %16
  %25 = and i32 %8, 32
  %26 = icmp eq i32 %25, 0
  %27 = select i1 %26, ptr %2, ptr %1
  br label %28

28:                                               ; preds = %24, %14, %21, %11
  %29 = phi ptr [ %1, %11 ], [ %1, %14 ], [ %2, %21 ], [ %27, %24 ]
  %30 = load i32, ptr %29, align 4, !tbaa !14
  %31 = load i32, ptr %3, align 4, !tbaa !27
  %32 = icmp sgt i32 %30, %31
  br i1 %32, label %35, label %33

33:                                               ; preds = %28
  %34 = tail call ptr @decNumberCopy(ptr noundef %0, ptr noundef nonnull %29) #18
  br label %80

35:                                               ; preds = %28
  %36 = getelementptr inbounds %struct.decNumber, ptr %29, i64 0, i32 2
  %37 = load i8, ptr %36, align 4, !tbaa !5
  %38 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 2
  store i8 %37, ptr %38, align 4, !tbaa !5
  %39 = getelementptr i8, ptr %0, i64 10
  %40 = icmp slt i32 %31, 50
  br i1 %40, label %44, label %41

41:                                               ; preds = %35
  %42 = add nuw nsw i32 %31, 2
  %43 = udiv i32 %42, 3
  br label %50

44:                                               ; preds = %35
  %45 = sext i32 %31 to i64
  %46 = getelementptr inbounds [50 x i8], ptr @d2utable, i64 0, i64 %45
  %47 = load i8, ptr %46, align 1, !tbaa !20
  %48 = zext i8 %47 to i32
  %49 = icmp eq i32 %31, 0
  br i1 %49, label %65, label %50

50:                                               ; preds = %41, %44
  %51 = phi i32 [ %43, %41 ], [ %48, %44 ]
  %52 = shl nuw nsw i32 %51, 1
  %53 = zext nneg i32 %52 to i64
  %54 = getelementptr i8, ptr %0, i64 %53
  %55 = getelementptr i8, ptr %54, i64 10
  %56 = getelementptr %struct.decNumber, ptr %29, i64 0, i32 3
  br label %57

57:                                               ; preds = %50, %57
  %58 = phi ptr [ %61, %57 ], [ %39, %50 ]
  %59 = phi ptr [ %62, %57 ], [ %56, %50 ]
  %60 = load i16, ptr %59, align 2, !tbaa !10
  store i16 %60, ptr %58, align 2, !tbaa !10
  %61 = getelementptr inbounds i16, ptr %58, i64 1
  %62 = getelementptr inbounds i16, ptr %59, i64 1
  %63 = icmp ult ptr %61, %55
  br i1 %63, label %57, label %64, !llvm.loop !64

64:                                               ; preds = %57
  br i1 %40, label %65, label %70

65:                                               ; preds = %44, %64
  %66 = sext i32 %31 to i64
  %67 = getelementptr inbounds [50 x i8], ptr @d2utable, i64 0, i64 %66
  %68 = load i8, ptr %67, align 1, !tbaa !20
  %69 = zext i8 %68 to i32
  br label %73

70:                                               ; preds = %64
  %71 = add nuw nsw i32 %31, 2
  %72 = udiv i32 %71, 3
  br label %73

73:                                               ; preds = %70, %65
  %74 = phi i32 [ %69, %65 ], [ %72, %70 ]
  %75 = mul nuw nsw i32 %74, 3
  store i32 %75, ptr %0, align 4, !tbaa !14
  %76 = icmp sgt i32 %75, %31
  br i1 %76, label %77, label %80

77:                                               ; preds = %73
  %78 = sub nsw i32 %75, %31
  %79 = tail call fastcc ptr @decDecap(ptr noundef nonnull %0, i32 noundef %78) #18
  br label %80

80:                                               ; preds = %73, %77, %33
  %81 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 2
  %82 = load i8, ptr %81, align 4, !tbaa !5
  %83 = and i8 %82, -49
  %84 = or disjoint i8 %83, 32
  store i8 %84, ptr %81, align 4, !tbaa !5
  %85 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 1
  store i32 0, ptr %85, align 4, !tbaa !15
  ret ptr %0
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local noundef ptr @decNumberCopyAbs(ptr noundef returned %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @decNumberCopy(ptr noundef %0, ptr noundef %1) #18
  %4 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 2
  %5 = load i8, ptr %4, align 4, !tbaa !5
  %6 = and i8 %5, 127
  store i8 %6, ptr %4, align 4, !tbaa !5
  ret ptr %0
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @decNumberLog10(ptr noundef returned %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #4 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca [3 x %struct.decNumber], align 16
  %7 = alloca [3 x %struct.decNumber], align 16
  %8 = alloca [2 x %struct.decNumber], align 16
  %9 = alloca %struct.decContext, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #20
  store i32 0, ptr %4, align 4, !tbaa !17
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #20
  store i32 0, ptr %5, align 4, !tbaa !17
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %6) #20
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %7) #20
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #20
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %9) #20
  %12 = call fastcc i32 @decCheckMath(ptr noundef %1, ptr noundef %2, ptr noundef nonnull %4) #18, !range !48
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %131

14:                                               ; preds = %3
  %15 = call ptr @decContextDefault(ptr noundef nonnull %9, i32 noundef 64) #19
  %16 = getelementptr inbounds %struct.decNumber, ptr %1, i64 0, i32 2
  %17 = load i8, ptr %16, align 4, !tbaa !5
  %18 = icmp ult i8 %17, 16
  br i1 %18, label %19, label %39

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.decNumber, ptr %1, i64 0, i32 3
  %21 = load i16, ptr %20, align 2, !tbaa !10
  %22 = icmp eq i16 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %19
  %24 = load i32, ptr %1, align 4, !tbaa !14
  %25 = icmp eq i32 %24, 1
  br i1 %25, label %39, label %26

26:                                               ; preds = %23, %19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #20
  store i32 0, ptr %10, align 4, !tbaa !17
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #20
  store i32 0, ptr %11, align 4, !tbaa !17
  store i32 1, ptr %9, align 4, !tbaa !27
  call fastcc void @decCopyFit(ptr noundef nonnull %8, ptr noundef nonnull %1, ptr noundef nonnull %9, ptr noundef nonnull %10, ptr noundef nonnull %11) #18
  %27 = load i32, ptr %11, align 4, !tbaa !17
  %28 = and i32 %27, 32
  %29 = icmp eq i32 %28, 0
  %30 = getelementptr inbounds %struct.decNumber, ptr %8, i64 0, i32 3
  %31 = load i16, ptr %30, align 2
  %32 = icmp eq i16 %31, 1
  %33 = select i1 %29, i1 %32, i1 false
  br i1 %33, label %35, label %34

34:                                               ; preds = %26
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #20
  br label %39

35:                                               ; preds = %26
  %36 = getelementptr inbounds %struct.decNumber, ptr %8, i64 0, i32 1
  %37 = load i32, ptr %36, align 4, !tbaa !15
  %38 = call ptr @decNumberFromInt32(ptr noundef nonnull %8, i32 noundef %37) #18
  store i32 0, ptr %10, align 4, !tbaa !17
  call fastcc void @decCopyFit(ptr noundef %0, ptr noundef nonnull %8, ptr noundef %2, ptr noundef nonnull %10, ptr noundef nonnull %4) #18
  call fastcc void @decFinalize(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %10, ptr noundef nonnull %4) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #20
  br label %131

39:                                               ; preds = %34, %23, %14
  %40 = load i32, ptr %1, align 4, !tbaa !14
  %41 = add nsw i32 %40, 6
  %42 = load i32, ptr %2, align 4, !tbaa !27
  %43 = call i32 @llvm.smax.i32(i32 %41, i32 %42)
  %44 = add nsw i32 %43, 3
  %45 = icmp slt i32 %43, 47
  br i1 %45, label %49, label %46

46:                                               ; preds = %39
  %47 = add nuw nsw i32 %43, 5
  %48 = udiv i32 %47, 3
  br label %56

49:                                               ; preds = %39
  %50 = sext i32 %44 to i64
  %51 = getelementptr inbounds [50 x i8], ptr @d2utable, i64 0, i64 %50
  %52 = load i8, ptr %51, align 1, !tbaa !20
  %53 = zext i8 %52 to i32
  %54 = add nsw i64 %50, -40
  %55 = icmp ult i64 %54, 10
  br i1 %55, label %56, label %66

56:                                               ; preds = %46, %49
  %57 = phi i32 [ %48, %46 ], [ %53, %49 ]
  %58 = shl nuw nsw i32 %57, 1
  %59 = add nuw nsw i32 %58, 10
  %60 = zext nneg i32 %59 to i64
  %61 = call noalias ptr @malloc(i64 noundef %60) #21
  %62 = icmp eq ptr %61, null
  br i1 %62, label %63, label %66

63:                                               ; preds = %56
  %64 = load i32, ptr %4, align 4, !tbaa !17
  %65 = or i32 %64, 16
  br label %134

66:                                               ; preds = %56, %49
  %67 = phi ptr [ null, %49 ], [ %61, %56 ]
  %68 = phi ptr [ %6, %49 ], [ %61, %56 ]
  store i32 %44, ptr %9, align 4, !tbaa !27
  %69 = getelementptr inbounds %struct.decContext, ptr %9, i64 0, i32 1
  store i32 999999, ptr %69, align 4, !tbaa !33
  %70 = getelementptr inbounds %struct.decContext, ptr %9, i64 0, i32 2
  store i32 -999999, ptr %70, align 4, !tbaa !32
  %71 = getelementptr inbounds %struct.decContext, ptr %9, i64 0, i32 6
  store i8 0, ptr %71, align 4, !tbaa !29
  %72 = call fastcc ptr @decLnOp(ptr noundef nonnull %68, ptr noundef nonnull %1, ptr noundef nonnull %9, ptr noundef nonnull %4) #18
  %73 = load i32, ptr %4, align 4, !tbaa !17
  %74 = and i32 %73, 221
  %75 = icmp ne i32 %74, 0
  %76 = and i32 %73, 1073741824
  %77 = icmp eq i32 %76, 0
  %78 = and i1 %75, %77
  br i1 %78, label %124, label %79

79:                                               ; preds = %66
  %80 = getelementptr inbounds %struct.decNumber, ptr %68, i64 0, i32 2
  %81 = load i8, ptr %80, align 4, !tbaa !5
  %82 = and i8 %81, 112
  %83 = icmp eq i8 %82, 0
  br i1 %83, label %84, label %91

84:                                               ; preds = %79
  %85 = getelementptr inbounds %struct.decNumber, ptr %68, i64 0, i32 3
  %86 = load i16, ptr %85, align 2, !tbaa !10
  %87 = icmp eq i16 %86, 0
  br i1 %87, label %88, label %93

88:                                               ; preds = %84
  %89 = load i32, ptr %68, align 4, !tbaa !14
  %90 = icmp eq i32 %89, 1
  br i1 %90, label %91, label %93

91:                                               ; preds = %88, %79
  %92 = call ptr @decNumberCopy(ptr noundef %0, ptr noundef nonnull %68) #18
  br label %124

93:                                               ; preds = %88, %84
  %94 = load i32, ptr %2, align 4, !tbaa !27
  %95 = add nsw i32 %94, 3
  %96 = icmp slt i32 %94, 47
  br i1 %96, label %100, label %97

97:                                               ; preds = %93
  %98 = add nuw nsw i32 %94, 5
  %99 = udiv i32 %98, 3
  br label %107

100:                                              ; preds = %93
  %101 = sext i32 %95 to i64
  %102 = getelementptr inbounds [50 x i8], ptr @d2utable, i64 0, i64 %101
  %103 = load i8, ptr %102, align 1, !tbaa !20
  %104 = zext i8 %103 to i32
  %105 = add nsw i64 %101, -40
  %106 = icmp ult i64 %105, 10
  br i1 %106, label %107, label %116

107:                                              ; preds = %97, %100
  %108 = phi i32 [ %99, %97 ], [ %104, %100 ]
  %109 = shl nuw nsw i32 %108, 1
  %110 = add nuw nsw i32 %109, 10
  %111 = zext nneg i32 %110 to i64
  %112 = call noalias ptr @malloc(i64 noundef %111) #21
  %113 = icmp eq ptr %112, null
  br i1 %113, label %114, label %116

114:                                              ; preds = %107
  %115 = or i32 %73, 16
  store i32 %115, ptr %4, align 4, !tbaa !17
  br label %124

116:                                              ; preds = %107, %100
  %117 = phi ptr [ null, %100 ], [ %112, %107 ]
  %118 = phi ptr [ %7, %100 ], [ %112, %107 ]
  %119 = call ptr @decNumberZero(ptr noundef nonnull %8) #18
  %120 = getelementptr inbounds %struct.decNumber, ptr %8, i64 0, i32 3
  store i16 10, ptr %120, align 2, !tbaa !10
  store i32 2, ptr %8, align 16, !tbaa !14
  store i32 %95, ptr %9, align 4, !tbaa !27
  %121 = call fastcc ptr @decLnOp(ptr noundef nonnull %118, ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef nonnull %5) #18
  %122 = load i32, ptr %2, align 4, !tbaa !27
  store i32 %122, ptr %9, align 4, !tbaa !27
  %123 = call fastcc ptr @decDivideOp(ptr noundef %0, ptr noundef nonnull %68, ptr noundef nonnull %118, ptr noundef nonnull %9, i8 noundef zeroext -128, ptr noundef nonnull %4) #18
  br label %124

124:                                              ; preds = %66, %91, %114, %116
  %125 = phi ptr [ null, %91 ], [ null, %114 ], [ %117, %116 ], [ null, %66 ]
  %126 = icmp eq ptr %67, null
  br i1 %126, label %128, label %127

127:                                              ; preds = %124
  call void @free(ptr noundef nonnull %67) #19
  br label %128

128:                                              ; preds = %127, %124
  %129 = icmp eq ptr %125, null
  br i1 %129, label %131, label %130

130:                                              ; preds = %128
  call void @free(ptr noundef nonnull %125) #19
  br label %131

131:                                              ; preds = %3, %35, %130, %128
  %132 = load i32, ptr %4, align 4, !tbaa !17
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %136, label %134

134:                                              ; preds = %63, %131
  %135 = phi i32 [ %65, %63 ], [ %132, %131 ]
  call fastcc void @decStatus(ptr noundef %0, i32 noundef %135, ptr noundef %2) #18
  br label %136

136:                                              ; preds = %134, %131
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %9) #20
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #20
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %7) #20
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %6) #20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #20
  ret ptr %0
}

; Function Attrs: optsize
declare ptr @decContextDefault(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @decCopyFit(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef %3, ptr nocapture noundef %4) unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.decNumber, ptr %1, i64 0, i32 2
  %7 = load i8, ptr %6, align 4, !tbaa !5
  %8 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 2
  store i8 %7, ptr %8, align 4, !tbaa !5
  %9 = getelementptr inbounds %struct.decNumber, ptr %1, i64 0, i32 1
  %10 = load i32, ptr %9, align 4, !tbaa !15
  %11 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 1
  store i32 %10, ptr %11, align 4, !tbaa !15
  %12 = getelementptr inbounds %struct.decNumber, ptr %1, i64 0, i32 3
  %13 = load i32, ptr %1, align 4, !tbaa !14
  tail call fastcc void @decSetCoeff(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %12, i32 noundef %13, ptr noundef %3, ptr noundef %4) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @decNumberMax(ptr noundef returned %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #4 {
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #20
  store i32 0, ptr %5, align 4, !tbaa !17
  %6 = call fastcc ptr @decCompareOp(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i8 noundef zeroext 2, ptr noundef nonnull %5) #18
  %7 = load i32, ptr %5, align 4, !tbaa !17
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %4
  tail call fastcc void @decStatus(ptr noundef %0, i32 noundef %7, ptr noundef %3) #18
  br label %10

10:                                               ; preds = %9, %4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #20
  ret ptr %0
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @decNumberMaxMag(ptr noundef returned %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #4 {
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #20
  store i32 0, ptr %5, align 4, !tbaa !17
  %6 = call fastcc ptr @decCompareOp(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i8 noundef zeroext 7, ptr noundef nonnull %5) #18
  %7 = load i32, ptr %5, align 4, !tbaa !17
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %4
  tail call fastcc void @decStatus(ptr noundef %0, i32 noundef %7, ptr noundef %3) #18
  br label %10

10:                                               ; preds = %9, %4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #20
  ret ptr %0
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @decNumberMin(ptr noundef returned %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #4 {
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #20
  store i32 0, ptr %5, align 4, !tbaa !17
  %6 = call fastcc ptr @decCompareOp(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i8 noundef zeroext 3, ptr noundef nonnull %5) #18
  %7 = load i32, ptr %5, align 4, !tbaa !17
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %4
  tail call fastcc void @decStatus(ptr noundef %0, i32 noundef %7, ptr noundef %3) #18
  br label %10

10:                                               ; preds = %9, %4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #20
  ret ptr %0
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @decNumberMinMag(ptr noundef returned %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #4 {
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #20
  store i32 0, ptr %5, align 4, !tbaa !17
  %6 = call fastcc ptr @decCompareOp(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i8 noundef zeroext 8, ptr noundef nonnull %5) #18
  %7 = load i32, ptr %5, align 4, !tbaa !17
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %4
  tail call fastcc void @decStatus(ptr noundef %0, i32 noundef %7, ptr noundef %3) #18
  br label %10

10:                                               ; preds = %9, %4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #20
  ret ptr %0
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @decNumberMinus(ptr noundef returned %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #4 {
  %4 = alloca %struct.decNumber, align 4
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #20
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #20
  store i32 0, ptr %5, align 4, !tbaa !17
  %6 = call ptr @decNumberZero(ptr noundef nonnull %4) #18
  %7 = getelementptr inbounds %struct.decNumber, ptr %1, i64 0, i32 1
  %8 = load i32, ptr %7, align 4, !tbaa !15
  %9 = getelementptr inbounds %struct.decNumber, ptr %4, i64 0, i32 1
  store i32 %8, ptr %9, align 4, !tbaa !15
  %10 = call fastcc ptr @decAddOp(ptr noundef %0, ptr noundef nonnull %4, ptr noundef %1, ptr noundef %2, i8 noundef zeroext -128, ptr noundef nonnull %5) #18
  %11 = load i32, ptr %5, align 4, !tbaa !17
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %3
  call fastcc void @decStatus(ptr noundef %0, i32 noundef %11, ptr noundef %2) #18
  br label %14

14:                                               ; preds = %13, %3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #20
  ret ptr %0
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @decNumberNextMinus(ptr noundef returned %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #4 {
  %4 = alloca %struct.decNumber, align 4
  %5 = alloca %struct.decContext, align 4
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #20
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %5) #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %5, ptr noundef nonnull align 4 dereferenceable(28) %2, i64 28, i1 false), !tbaa.struct !49
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #20
  store i32 0, ptr %6, align 4, !tbaa !17
  %7 = getelementptr inbounds %struct.decNumber, ptr %1, i64 0, i32 2
  %8 = load i8, ptr %7, align 4, !tbaa !5
  %9 = and i8 %8, -64
  %10 = icmp eq i8 %9, 64
  br i1 %10, label %11, label %12

11:                                               ; preds = %3
  tail call fastcc void @decSetMaxValue(ptr noundef %0, ptr noundef nonnull %2) #18
  br label %22

12:                                               ; preds = %3
  %13 = call ptr @decNumberZero(ptr noundef nonnull %4) #18
  %14 = getelementptr inbounds %struct.decNumber, ptr %4, i64 0, i32 3
  store i16 1, ptr %14, align 2, !tbaa !10
  %15 = getelementptr inbounds %struct.decNumber, ptr %4, i64 0, i32 1
  store i32 -1000000000, ptr %15, align 4, !tbaa !15
  %16 = getelementptr inbounds %struct.decContext, ptr %5, i64 0, i32 3
  store i32 6, ptr %16, align 4, !tbaa !37
  %17 = call fastcc ptr @decAddOp(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %4, ptr noundef nonnull %5, i8 noundef zeroext -128, ptr noundef nonnull %6) #18
  %18 = load i32, ptr %6, align 4, !tbaa !17
  %19 = and i32 %18, 1073741952
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %12
  call fastcc void @decStatus(ptr noundef %0, i32 noundef %19, ptr noundef nonnull %2) #18
  br label %22

22:                                               ; preds = %12, %21, %11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #20
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #20
  ret ptr %0
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @decSetMaxValue(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #10 {
  %3 = load i32, ptr %1, align 4, !tbaa !27
  store i32 %3, ptr %0, align 4, !tbaa !14
  %4 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 3
  %5 = icmp sgt i32 %3, 3
  br i1 %5, label %6, label %12

6:                                                ; preds = %2, %6
  %7 = phi i32 [ %9, %6 ], [ %3, %2 ]
  %8 = phi ptr [ %10, %6 ], [ %4, %2 ]
  store i16 999, ptr %8, align 2, !tbaa !10
  %9 = add nsw i32 %7, -3
  %10 = getelementptr inbounds i16, ptr %8, i64 1
  %11 = icmp ugt i32 %7, 6
  br i1 %11, label %6, label %12

12:                                               ; preds = %6, %2
  %13 = phi ptr [ %4, %2 ], [ %10, %6 ]
  %14 = phi i32 [ %3, %2 ], [ %9, %6 ]
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [10 x i32], ptr @DECPOWERS, i64 0, i64 %15
  %17 = load i32, ptr %16, align 4, !tbaa !17
  %18 = trunc i32 %17 to i16
  %19 = add i16 %18, -1
  store i16 %19, ptr %13, align 2, !tbaa !10
  %20 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 2
  store i8 0, ptr %20, align 4, !tbaa !5
  %21 = getelementptr inbounds %struct.decContext, ptr %1, i64 0, i32 1
  %22 = load i32, ptr %21, align 4, !tbaa !33
  %23 = sub i32 %22, %3
  %24 = add i32 %23, 1
  %25 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 1
  store i32 %24, ptr %25, align 4, !tbaa !15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @decNumberNextPlus(ptr noundef returned %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #4 {
  %4 = alloca %struct.decNumber, align 4
  %5 = alloca %struct.decContext, align 4
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #20
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %5) #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %5, ptr noundef nonnull align 4 dereferenceable(28) %2, i64 28, i1 false), !tbaa.struct !49
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #20
  store i32 0, ptr %6, align 4, !tbaa !17
  %7 = getelementptr inbounds %struct.decNumber, ptr %1, i64 0, i32 2
  %8 = load i8, ptr %7, align 4, !tbaa !5
  %9 = icmp ugt i8 %8, -65
  br i1 %9, label %10, label %12

10:                                               ; preds = %3
  tail call fastcc void @decSetMaxValue(ptr noundef %0, ptr noundef nonnull %2) #18
  %11 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 2
  store i8 -128, ptr %11, align 4, !tbaa !5
  br label %22

12:                                               ; preds = %3
  %13 = call ptr @decNumberZero(ptr noundef nonnull %4) #18
  %14 = getelementptr inbounds %struct.decNumber, ptr %4, i64 0, i32 3
  store i16 1, ptr %14, align 2, !tbaa !10
  %15 = getelementptr inbounds %struct.decNumber, ptr %4, i64 0, i32 1
  store i32 -1000000000, ptr %15, align 4, !tbaa !15
  %16 = getelementptr inbounds %struct.decContext, ptr %5, i64 0, i32 3
  store i32 0, ptr %16, align 4, !tbaa !37
  %17 = call fastcc ptr @decAddOp(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %4, ptr noundef nonnull %5, i8 noundef zeroext 0, ptr noundef nonnull %6) #18
  %18 = load i32, ptr %6, align 4, !tbaa !17
  %19 = and i32 %18, 1073741952
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %12
  call fastcc void @decStatus(ptr noundef %0, i32 noundef %19, ptr noundef nonnull %2) #18
  br label %22

22:                                               ; preds = %12, %21, %10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #20
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #20
  ret ptr %0
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @decNumberNextToward(ptr noundef returned %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #4 {
  %5 = alloca %struct.decNumber, align 4
  %6 = alloca %struct.decContext, align 4
  %7 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #20
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %6) #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %6, ptr noundef nonnull align 4 dereferenceable(28) %3, i64 28, i1 false), !tbaa.struct !49
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #20
  store i32 0, ptr %7, align 4, !tbaa !17
  %8 = getelementptr inbounds %struct.decNumber, ptr %1, i64 0, i32 2
  %9 = load i8, ptr %8, align 4, !tbaa !5
  %10 = and i8 %9, 48
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.decNumber, ptr %2, i64 0, i32 2
  %14 = load i8, ptr %13, align 4, !tbaa !5
  %15 = and i8 %14, 48
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %12, %4
  %18 = call fastcc ptr @decNaNs(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef nonnull %3, ptr noundef nonnull %7) #18
  br label %47

19:                                               ; preds = %12
  %20 = tail call fastcc i32 @decCompare(ptr noundef nonnull %1, ptr noundef nonnull %2, i8 noundef zeroext 0) #18
  switch i32 %20, label %23 [
    i32 -2147483648, label %50
    i32 0, label %21
  ]

21:                                               ; preds = %19
  %22 = tail call ptr @decNumberCopySign(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %2) #18
  br label %47

23:                                               ; preds = %19
  %24 = icmp slt i32 %20, 0
  %25 = load i8, ptr %8, align 4, !tbaa !5
  br i1 %24, label %26, label %30

26:                                               ; preds = %23
  %27 = icmp ugt i8 %25, -65
  br i1 %27, label %28, label %34

28:                                               ; preds = %26
  tail call fastcc void @decSetMaxValue(ptr noundef %0, ptr noundef nonnull %3) #18
  %29 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 2
  store i8 -128, ptr %29, align 4, !tbaa !5
  br label %52

30:                                               ; preds = %23
  %31 = and i8 %25, -64
  %32 = icmp eq i8 %31, 64
  br i1 %32, label %33, label %34

33:                                               ; preds = %30
  tail call fastcc void @decSetMaxValue(ptr noundef %0, ptr noundef nonnull %3) #18
  br label %52

34:                                               ; preds = %30, %26
  %35 = phi i32 [ 0, %26 ], [ 6, %30 ]
  %36 = phi i8 [ 0, %26 ], [ -128, %30 ]
  %37 = getelementptr inbounds %struct.decContext, ptr %6, i64 0, i32 3
  store i32 %35, ptr %37, align 4, !tbaa !37
  %38 = call ptr @decNumberZero(ptr noundef nonnull %5) #18
  %39 = getelementptr inbounds %struct.decNumber, ptr %5, i64 0, i32 3
  store i16 1, ptr %39, align 2, !tbaa !10
  %40 = getelementptr inbounds %struct.decNumber, ptr %5, i64 0, i32 1
  store i32 -1000000000, ptr %40, align 4, !tbaa !15
  %41 = call fastcc ptr @decAddOp(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %5, ptr noundef nonnull %6, i8 noundef zeroext %36, ptr noundef nonnull %7) #18
  %42 = call i32 @decNumberIsNormal(ptr noundef %0, ptr noundef nonnull %3) #18, !range !48
  %43 = icmp ne i32 %42, 0
  %44 = load i32, ptr %7, align 4
  %45 = icmp eq i32 %44, 0
  %46 = select i1 %43, i1 true, i1 %45
  br i1 %46, label %52, label %50

47:                                               ; preds = %21, %17
  %48 = load i32, ptr %7, align 4, !tbaa !17
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %52, label %50

50:                                               ; preds = %34, %19, %47
  %51 = phi i32 [ %48, %47 ], [ 16, %19 ], [ %44, %34 ]
  call fastcc void @decStatus(ptr noundef %0, i32 noundef %51, ptr noundef nonnull %3) #18
  br label %52

52:                                               ; preds = %34, %28, %33, %47, %50
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #20
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %6) #20
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #20
  ret ptr %0
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @decCompare(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2) unnamed_addr #4 {
  %4 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 3
  %5 = load i16, ptr %4, align 2, !tbaa !10
  %6 = icmp eq i16 %5, 0
  br i1 %6, label %7, label %17

7:                                                ; preds = %3
  %8 = load i32, ptr %0, align 4, !tbaa !14
  %9 = icmp eq i32 %8, 1
  br i1 %9, label %10, label %17

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 2
  %12 = load i8, ptr %11, align 4, !tbaa !5
  %13 = and i8 %12, 112
  %14 = icmp eq i8 %13, 0
  %15 = xor i1 %14, true
  %16 = zext i1 %15 to i32
  br label %17

17:                                               ; preds = %10, %7, %3
  %18 = phi i1 [ false, %7 ], [ false, %3 ], [ %14, %10 ]
  %19 = phi i32 [ 1, %7 ], [ 1, %3 ], [ %16, %10 ]
  %20 = icmp eq i8 %2, 0
  br i1 %20, label %39, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.decNumber, ptr %1, i64 0, i32 3
  %23 = load i16, ptr %22, align 2, !tbaa !10
  %24 = icmp eq i16 %23, 0
  br i1 %24, label %25, label %35

25:                                               ; preds = %21
  %26 = load i32, ptr %1, align 4, !tbaa !14
  %27 = icmp eq i32 %26, 1
  br i1 %27, label %28, label %35

28:                                               ; preds = %25
  %29 = getelementptr inbounds %struct.decNumber, ptr %1, i64 0, i32 2
  %30 = load i8, ptr %29, align 4, !tbaa !5
  %31 = and i8 %30, 112
  %32 = icmp eq i8 %31, 0
  %33 = select i1 %32, i1 true, i1 %18
  %34 = select i1 %32, i32 %19, i32 -1
  br i1 %33, label %134, label %71

35:                                               ; preds = %25, %21
  br i1 %18, label %134, label %36

36:                                               ; preds = %35
  %37 = getelementptr inbounds %struct.decNumber, ptr %1, i64 0, i32 2
  %38 = load i8, ptr %37, align 4, !tbaa !5
  br label %71

39:                                               ; preds = %17
  br i1 %18, label %45, label %40

40:                                               ; preds = %39
  %41 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 2
  %42 = load i8, ptr %41, align 4, !tbaa !5
  %43 = icmp sgt i8 %42, -1
  %44 = select i1 %43, i32 1, i32 -1
  br label %45

45:                                               ; preds = %40, %39
  %46 = phi i32 [ 0, %39 ], [ %44, %40 ]
  %47 = getelementptr inbounds %struct.decNumber, ptr %1, i64 0, i32 3
  %48 = load i16, ptr %47, align 2, !tbaa !10
  %49 = icmp eq i16 %48, 0
  br i1 %49, label %50, label %58

50:                                               ; preds = %45
  %51 = load i32, ptr %1, align 4, !tbaa !14
  %52 = icmp eq i32 %51, 1
  br i1 %52, label %53, label %58

53:                                               ; preds = %50
  %54 = getelementptr inbounds %struct.decNumber, ptr %1, i64 0, i32 2
  %55 = load i8, ptr %54, align 4, !tbaa !5
  %56 = and i8 %55, 112
  %57 = icmp eq i8 %56, 0
  br i1 %57, label %63, label %58

58:                                               ; preds = %53, %50, %45
  %59 = getelementptr inbounds %struct.decNumber, ptr %1, i64 0, i32 2
  %60 = load i8, ptr %59, align 4, !tbaa !5
  %61 = icmp sgt i8 %60, -1
  %62 = select i1 %61, i32 1, i32 -1
  br label %63

63:                                               ; preds = %58, %53
  %64 = phi i8 [ %55, %53 ], [ %60, %58 ]
  %65 = phi i32 [ 0, %53 ], [ %62, %58 ]
  %66 = icmp sgt i32 %46, %65
  br i1 %66, label %134, label %67

67:                                               ; preds = %63
  %68 = icmp slt i32 %46, %65
  %69 = select i1 %68, i1 true, i1 %18
  %70 = sext i1 %68 to i32
  br i1 %69, label %134, label %71

71:                                               ; preds = %36, %67, %28
  %72 = phi i8 [ %38, %36 ], [ %30, %28 ], [ %64, %67 ]
  %73 = phi i32 [ 1, %36 ], [ 1, %28 ], [ %46, %67 ]
  %74 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 2
  %75 = load i8, ptr %74, align 4, !tbaa !5
  %76 = zext i8 %75 to i32
  %77 = zext i8 %72 to i32
  %78 = or i32 %77, %76
  %79 = and i32 %78, 64
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %89, label %81

81:                                               ; preds = %71
  %82 = and i32 %77, 64
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %134, label %84

84:                                               ; preds = %81
  %85 = and i32 %76, 64
  %86 = icmp eq i32 %85, 0
  %87 = sub nsw i32 0, %73
  %88 = select i1 %86, i32 %87, i32 0
  br label %134

89:                                               ; preds = %71
  %90 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 1
  %91 = load i32, ptr %90, align 4, !tbaa !15
  %92 = getelementptr inbounds %struct.decNumber, ptr %1, i64 0, i32 1
  %93 = load i32, ptr %92, align 4, !tbaa !15
  %94 = icmp sgt i32 %91, %93
  %95 = sub nsw i32 0, %73
  %96 = select i1 %94, ptr %0, ptr %1
  %97 = select i1 %94, ptr %1, ptr %0
  %98 = select i1 %94, i32 %95, i32 %73
  %99 = getelementptr inbounds %struct.decNumber, ptr %97, i64 0, i32 3
  %100 = load i32, ptr %97, align 4, !tbaa !14
  %101 = icmp slt i32 %100, 50
  br i1 %101, label %102, label %107

102:                                              ; preds = %89
  %103 = sext i32 %100 to i64
  %104 = getelementptr inbounds [50 x i8], ptr @d2utable, i64 0, i64 %103
  %105 = load i8, ptr %104, align 1, !tbaa !20
  %106 = zext i8 %105 to i32
  br label %110

107:                                              ; preds = %89
  %108 = add nuw nsw i32 %100, 2
  %109 = udiv i32 %108, 3
  br label %110

110:                                              ; preds = %107, %102
  %111 = phi i32 [ %106, %102 ], [ %109, %107 ]
  %112 = getelementptr inbounds %struct.decNumber, ptr %96, i64 0, i32 3
  %113 = load i32, ptr %96, align 4, !tbaa !14
  %114 = icmp slt i32 %113, 50
  br i1 %114, label %115, label %120

115:                                              ; preds = %110
  %116 = sext i32 %113 to i64
  %117 = getelementptr inbounds [50 x i8], ptr @d2utable, i64 0, i64 %116
  %118 = load i8, ptr %117, align 1, !tbaa !20
  %119 = zext i8 %118 to i32
  br label %123

120:                                              ; preds = %110
  %121 = add nuw nsw i32 %113, 2
  %122 = udiv i32 %121, 3
  br label %123

123:                                              ; preds = %120, %115
  %124 = phi i32 [ %119, %115 ], [ %122, %120 ]
  %125 = getelementptr inbounds %struct.decNumber, ptr %96, i64 0, i32 1
  %126 = load i32, ptr %125, align 4, !tbaa !15
  %127 = getelementptr inbounds %struct.decNumber, ptr %97, i64 0, i32 1
  %128 = load i32, ptr %127, align 4, !tbaa !15
  %129 = sub nsw i32 %126, %128
  %130 = tail call fastcc i32 @decUnitCompare(ptr noundef nonnull %99, i32 noundef %111, ptr noundef nonnull %112, i32 noundef %124, i32 noundef %129) #18, !range !40
  %131 = icmp eq i32 %130, -2147483648
  %132 = mul nsw i32 %130, %98
  %133 = select i1 %131, i32 -2147483648, i32 %132
  br label %134

134:                                              ; preds = %84, %67, %28, %81, %63, %35, %123
  %135 = phi i32 [ %133, %123 ], [ %34, %28 ], [ -1, %35 ], [ 1, %63 ], [ %70, %67 ], [ %73, %81 ], [ %88, %84 ]
  ret i32 %135
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local noundef ptr @decNumberCopySign(ptr noundef returned %0, ptr noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.decNumber, ptr %2, i64 0, i32 2
  %5 = load i8, ptr %4, align 4, !tbaa !5
  %6 = and i8 %5, -128
  %7 = tail call ptr @decNumberCopy(ptr noundef %0, ptr noundef %1) #18
  %8 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 2
  %9 = load i8, ptr %8, align 4, !tbaa !5
  %10 = and i8 %9, 127
  %11 = or disjoint i8 %10, %6
  store i8 %11, ptr %8, align 4, !tbaa !5
  ret ptr %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local i32 @decNumberIsNormal(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #11 {
  %3 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 2
  %4 = load i8, ptr %3, align 4, !tbaa !5
  %5 = and i8 %4, 112
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %22

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 3
  %9 = load i16, ptr %8, align 2, !tbaa !10
  %10 = icmp eq i16 %9, 0
  %11 = load i32, ptr %0, align 4, !tbaa !14
  %12 = icmp eq i32 %11, 1
  %13 = select i1 %10, i1 %12, i1 false
  br i1 %13, label %22, label %14

14:                                               ; preds = %7
  %15 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 1
  %16 = load i32, ptr %15, align 4, !tbaa !15
  %17 = add nsw i32 %11, %16
  %18 = getelementptr inbounds %struct.decContext, ptr %1, i64 0, i32 2
  %19 = load i32, ptr %18, align 4, !tbaa !32
  %20 = icmp sgt i32 %17, %19
  %21 = zext i1 %20 to i32
  br label %22

22:                                               ; preds = %7, %14, %2
  %23 = phi i32 [ 0, %2 ], [ %21, %14 ], [ 0, %7 ]
  ret i32 %23
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @decNumberOr(ptr noundef returned %0, ptr noundef readonly %1, ptr noundef readonly %2, ptr noundef %3) local_unnamed_addr #4 {
  %5 = getelementptr inbounds %struct.decNumber, ptr %1, i64 0, i32 1
  %6 = load i32, ptr %5, align 4, !tbaa !15
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %20

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.decNumber, ptr %1, i64 0, i32 2
  %10 = load i8, ptr %9, align 4, !tbaa !5
  %11 = icmp ult i8 %10, 16
  br i1 %11, label %12, label %20

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.decNumber, ptr %2, i64 0, i32 1
  %14 = load i32, ptr %13, align 4, !tbaa !15
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.decNumber, ptr %2, i64 0, i32 2
  %18 = load i8, ptr %17, align 4, !tbaa !5
  %19 = icmp ult i8 %18, 16
  br i1 %19, label %21, label %20

20:                                               ; preds = %16, %12, %8, %4
  tail call fastcc void @decStatus(ptr noundef %0, i32 noundef 128, ptr noundef %3) #18
  br label %140

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.decNumber, ptr %1, i64 0, i32 3
  %23 = getelementptr inbounds %struct.decNumber, ptr %2, i64 0, i32 3
  %24 = getelementptr inbounds i8, ptr %0, i64 10
  %25 = load i32, ptr %1, align 4, !tbaa !14
  %26 = icmp slt i32 %25, 50
  br i1 %26, label %27, label %32

27:                                               ; preds = %21
  %28 = sext i32 %25 to i64
  %29 = getelementptr inbounds [50 x i8], ptr @d2utable, i64 0, i64 %28
  %30 = load i8, ptr %29, align 1, !tbaa !20
  %31 = zext i8 %30 to i32
  br label %35

32:                                               ; preds = %21
  %33 = add nuw nsw i32 %25, 2
  %34 = udiv i32 %33, 3
  br label %35

35:                                               ; preds = %32, %27
  %36 = phi i32 [ %31, %27 ], [ %34, %32 ]
  %37 = zext nneg i32 %36 to i64
  %38 = getelementptr inbounds i16, ptr %22, i64 %37
  %39 = getelementptr inbounds i16, ptr %38, i64 -1
  %40 = load i32, ptr %2, align 4, !tbaa !14
  %41 = icmp slt i32 %40, 50
  br i1 %41, label %42, label %47

42:                                               ; preds = %35
  %43 = sext i32 %40 to i64
  %44 = getelementptr inbounds [50 x i8], ptr @d2utable, i64 0, i64 %43
  %45 = load i8, ptr %44, align 1, !tbaa !20
  %46 = zext i8 %45 to i32
  br label %50

47:                                               ; preds = %35
  %48 = add nuw nsw i32 %40, 2
  %49 = udiv i32 %48, 3
  br label %50

50:                                               ; preds = %47, %42
  %51 = phi i32 [ %46, %42 ], [ %49, %47 ]
  %52 = zext nneg i32 %51 to i64
  %53 = getelementptr inbounds i16, ptr %23, i64 %52
  %54 = getelementptr inbounds i16, ptr %53, i64 -1
  %55 = load i32, ptr %3, align 4, !tbaa !27
  %56 = icmp slt i32 %55, 50
  br i1 %56, label %62, label %57

57:                                               ; preds = %50
  %58 = add nuw nsw i32 %55, 2
  %59 = udiv i32 %58, 3
  %60 = shl nuw nsw i32 %59, 1
  %61 = zext nneg i32 %60 to i64
  br label %70

62:                                               ; preds = %50
  %63 = sext i32 %55 to i64
  %64 = getelementptr inbounds [50 x i8], ptr @d2utable, i64 0, i64 %63
  %65 = load i8, ptr %64, align 1, !tbaa !20
  %66 = zext i8 %65 to i64
  %67 = zext i8 %65 to i32
  %68 = shl nuw nsw i64 %66, 1
  %69 = icmp eq i32 %55, 0
  br i1 %69, label %130, label %70

70:                                               ; preds = %57, %62
  %71 = phi i64 [ %61, %57 ], [ %68, %62 ]
  %72 = phi i32 [ %59, %57 ], [ %67, %62 ]
  %73 = getelementptr i8, ptr %0, i64 %71
  %74 = getelementptr i8, ptr %73, i64 8
  %75 = mul nsw i32 %72, -3
  %76 = add i32 %55, 2
  %77 = add i32 %76, %75
  %78 = zext i32 %77 to i64
  br label %79

79:                                               ; preds = %70, %125
  %80 = phi ptr [ %22, %70 ], [ %126, %125 ]
  %81 = phi ptr [ %23, %70 ], [ %127, %125 ]
  %82 = phi ptr [ %24, %70 ], [ %128, %125 ]
  %83 = icmp ugt ptr %80, %39
  br i1 %83, label %86, label %84

84:                                               ; preds = %79
  %85 = load i16, ptr %80, align 2, !tbaa !10
  br label %86

86:                                               ; preds = %79, %84
  %87 = phi i16 [ %85, %84 ], [ 0, %79 ]
  %88 = icmp ugt ptr %81, %54
  br i1 %88, label %91, label %89

89:                                               ; preds = %86
  %90 = load i16, ptr %81, align 2, !tbaa !10
  br label %91

91:                                               ; preds = %86, %89
  %92 = phi i16 [ %90, %89 ], [ 0, %86 ]
  store i16 0, ptr %82, align 2, !tbaa !10
  %93 = or i16 %92, %87
  %94 = icmp eq i16 %93, 0
  br i1 %94, label %125, label %95

95:                                               ; preds = %91
  %96 = icmp ne ptr %82, %74
  br label %97

97:                                               ; preds = %118, %95
  %98 = phi i16 [ %111, %118 ], [ 0, %95 ]
  %99 = phi i64 [ %121, %118 ], [ 0, %95 ]
  %100 = phi i16 [ %115, %118 ], [ %92, %95 ]
  %101 = phi i16 [ %113, %118 ], [ %87, %95 ]
  %102 = or i16 %100, %101
  %103 = and i16 %102, 1
  %104 = icmp eq i16 %103, 0
  br i1 %104, label %110, label %105

105:                                              ; preds = %97
  %106 = getelementptr inbounds [10 x i32], ptr @DECPOWERS, i64 0, i64 %99
  %107 = load i32, ptr %106, align 4, !tbaa !17
  %108 = trunc i32 %107 to i16
  %109 = add i16 %98, %108
  store i16 %109, ptr %82, align 2, !tbaa !10
  br label %110

110:                                              ; preds = %105, %97
  %111 = phi i16 [ %109, %105 ], [ %98, %97 ]
  %112 = urem i16 %101, 10
  %113 = udiv i16 %101, 10
  %114 = urem i16 %100, 10
  %115 = udiv i16 %100, 10
  %116 = or i16 %114, %112
  %117 = icmp ugt i16 %116, 1
  br i1 %117, label %124, label %118

118:                                              ; preds = %110
  %119 = icmp ne i64 %99, %78
  %120 = select i1 %96, i1 true, i1 %119
  %121 = add nuw nsw i64 %99, 1
  %122 = icmp ult i64 %99, 2
  %123 = select i1 %120, i1 %122, i1 false
  br i1 %123, label %97, label %125, !llvm.loop !65

124:                                              ; preds = %110
  tail call fastcc void @decStatus(ptr noundef %0, i32 noundef 128, ptr noundef nonnull %3) #18
  br label %140

125:                                              ; preds = %118, %91
  %126 = getelementptr inbounds i16, ptr %80, i64 1
  %127 = getelementptr inbounds i16, ptr %81, i64 1
  %128 = getelementptr inbounds i16, ptr %82, i64 1
  %129 = icmp ugt ptr %128, %74
  br i1 %129, label %130, label %79, !llvm.loop !66

130:                                              ; preds = %125, %62
  %131 = phi ptr [ %24, %62 ], [ %128, %125 ]
  %132 = ptrtoint ptr %131 to i64
  %133 = ptrtoint ptr %24 to i64
  %134 = sub i64 %132, %133
  %135 = lshr exact i64 %134, 1
  %136 = trunc i64 %135 to i32
  %137 = tail call fastcc i32 @decGetDigits(ptr noundef nonnull %24, i32 noundef %136) #18
  store i32 %137, ptr %0, align 4, !tbaa !14
  %138 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 1
  store i32 0, ptr %138, align 4, !tbaa !15
  %139 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 2
  store i8 0, ptr %139, align 4, !tbaa !5
  br label %140

140:                                              ; preds = %124, %130, %20
  ret ptr %0
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @decNumberPlus(ptr noundef returned %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #4 {
  %4 = alloca %struct.decNumber, align 4
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #20
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #20
  store i32 0, ptr %5, align 4, !tbaa !17
  %6 = call ptr @decNumberZero(ptr noundef nonnull %4) #18
  %7 = getelementptr inbounds %struct.decNumber, ptr %1, i64 0, i32 1
  %8 = load i32, ptr %7, align 4, !tbaa !15
  %9 = getelementptr inbounds %struct.decNumber, ptr %4, i64 0, i32 1
  store i32 %8, ptr %9, align 4, !tbaa !15
  %10 = call fastcc ptr @decAddOp(ptr noundef %0, ptr noundef nonnull %4, ptr noundef %1, ptr noundef %2, i8 noundef zeroext 0, ptr noundef nonnull %5) #18
  %11 = load i32, ptr %5, align 4, !tbaa !17
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %3
  call fastcc void @decStatus(ptr noundef %0, i32 noundef %11, ptr noundef %2) #18
  br label %14

14:                                               ; preds = %13, %3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #20
  ret ptr %0
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @decNumberMultiply(ptr noundef returned %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #4 {
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #20
  store i32 0, ptr %5, align 4, !tbaa !17
  %6 = call fastcc ptr @decMultiplyOp(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %5) #18
  %7 = load i32, ptr %5, align 4, !tbaa !17
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %4
  tail call fastcc void @decStatus(ptr noundef %0, i32 noundef %7, ptr noundef %3) #18
  br label %10

10:                                               ; preds = %9, %4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #20
  ret ptr %0
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @decNumberPower(ptr noundef returned %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #4 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.decContext, align 4
  %8 = alloca %struct.decNumber, align 4
  %9 = alloca [4 x %struct.decNumber], align 16
  %10 = alloca [4 x %struct.decNumber], align 16
  %11 = load i32, ptr %3, align 4, !tbaa !27
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #20
  store i32 0, ptr %5, align 4, !tbaa !17
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #20
  store i32 0, ptr %6, align 4, !tbaa !17
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %7) #20
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #20
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %9) #20
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %10) #20
  %12 = getelementptr inbounds %struct.decNumber, ptr %1, i64 0, i32 2
  %13 = load i8, ptr %12, align 4, !tbaa !5
  %14 = zext i8 %13 to i32
  %15 = getelementptr inbounds %struct.decNumber, ptr %2, i64 0, i32 2
  %16 = load i8, ptr %15, align 4, !tbaa !5
  %17 = zext i8 %16 to i32
  %18 = or i32 %17, %14
  %19 = and i32 %18, 112
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %73, label %21

21:                                               ; preds = %4
  %22 = and i32 %18, 48
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %21
  %25 = call fastcc ptr @decNaNs(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef nonnull %6) #18
  br label %277

26:                                               ; preds = %21
  %27 = and i32 %17, 64
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %73, label %29

29:                                               ; preds = %26
  %30 = and i8 %16, -128
  %31 = icmp sgt i8 %13, -1
  br i1 %31, label %42, label %32

32:                                               ; preds = %29
  %33 = getelementptr inbounds %struct.decNumber, ptr %1, i64 0, i32 3
  %34 = load i16, ptr %33, align 2, !tbaa !10
  %35 = icmp eq i16 %34, 0
  br i1 %35, label %36, label %280

36:                                               ; preds = %32
  %37 = load i32, ptr %1, align 4, !tbaa !14
  %38 = icmp eq i32 %37, 1
  %39 = and i32 %14, 64
  %40 = icmp eq i32 %39, 0
  %41 = and i1 %40, %38
  br i1 %41, label %42, label %280

42:                                               ; preds = %36, %29
  %43 = call ptr @decNumberZero(ptr noundef nonnull %8) #18
  %44 = getelementptr inbounds %struct.decNumber, ptr %8, i64 0, i32 3
  store i16 1, ptr %44, align 2, !tbaa !10
  %45 = call ptr @decNumberCompare(ptr noundef nonnull %9, ptr noundef nonnull %1, ptr noundef nonnull %8, ptr noundef nonnull %3) #18
  %46 = call ptr @decNumberZero(ptr noundef %0) #18
  %47 = getelementptr inbounds %struct.decNumber, ptr %9, i64 0, i32 2
  %48 = load i8, ptr %47, align 8, !tbaa !5
  %49 = icmp sgt i8 %48, -1
  br i1 %49, label %56, label %50

50:                                               ; preds = %42
  %51 = icmp eq i8 %30, 0
  br i1 %51, label %277, label %52

52:                                               ; preds = %50
  %53 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 2
  %54 = load i8, ptr %53, align 4, !tbaa !5
  %55 = or i8 %54, 64
  store i8 %55, ptr %53, align 4, !tbaa !5
  br label %277

56:                                               ; preds = %42
  %57 = getelementptr inbounds %struct.decNumber, ptr %9, i64 0, i32 3
  %58 = load i16, ptr %57, align 2, !tbaa !10
  %59 = icmp eq i16 %58, 0
  br i1 %59, label %60, label %67

60:                                               ; preds = %56
  %61 = load i32, ptr %3, align 4, !tbaa !27
  %62 = add nsw i32 %61, -1
  %63 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 3
  store i16 1, ptr %63, align 2, !tbaa !10
  %64 = call fastcc i32 @decShiftToMost(ptr noundef nonnull %63, i32 noundef 1, i32 noundef %62) #18
  store i32 %64, ptr %0, align 4, !tbaa !14
  %65 = sub nsw i32 1, %61
  %66 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 1
  store i32 %65, ptr %66, align 4, !tbaa !15
  br label %280

67:                                               ; preds = %56
  %68 = icmp eq i8 %30, 0
  br i1 %68, label %69, label %277

69:                                               ; preds = %67
  %70 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 2
  %71 = load i8, ptr %70, align 4, !tbaa !5
  %72 = or i8 %71, 64
  store i8 %72, ptr %70, align 4, !tbaa !5
  br label %277

73:                                               ; preds = %26, %4
  %74 = tail call fastcc i32 @decGetInt(ptr noundef nonnull %2) #18
  %75 = icmp eq i32 %74, -2147483648
  %76 = icmp slt i8 %13, 0
  %77 = and i32 %74, 1
  %78 = icmp ne i32 %77, 0
  %79 = and i1 %76, %78
  %80 = select i1 %79, i8 -128, i8 0
  %81 = and i32 %14, 64
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %97, label %83

83:                                               ; preds = %73
  %84 = tail call ptr @decNumberZero(ptr noundef %0) #18
  %85 = icmp eq i32 %74, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %83
  %87 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 3
  store i16 1, ptr %87, align 2, !tbaa !10
  br label %277

88:                                               ; preds = %83
  br i1 %75, label %89, label %92

89:                                               ; preds = %88
  %90 = load i8, ptr %12, align 4, !tbaa !5
  %91 = icmp sgt i8 %90, -1
  br i1 %91, label %92, label %280

92:                                               ; preds = %89, %88
  %93 = or disjoint i8 %80, 64
  %94 = icmp slt i8 %16, 0
  %95 = select i1 %94, i8 %80, i8 %93
  %96 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 2
  store i8 %95, ptr %96, align 4, !tbaa !5
  br label %277

97:                                               ; preds = %73
  %98 = getelementptr inbounds %struct.decNumber, ptr %1, i64 0, i32 3
  %99 = load i16, ptr %98, align 2, !tbaa !10
  %100 = icmp eq i16 %99, 0
  br i1 %100, label %101, label %115

101:                                              ; preds = %97
  %102 = load i32, ptr %1, align 4, !tbaa !14
  %103 = icmp eq i32 %102, 1
  %104 = and i32 %14, 48
  %105 = icmp eq i32 %104, 0
  %106 = and i1 %105, %103
  br i1 %106, label %107, label %115

107:                                              ; preds = %101
  %108 = icmp eq i32 %74, 0
  br i1 %108, label %280, label %109

109:                                              ; preds = %107
  %110 = lshr i8 %16, 1
  %111 = and i8 %110, 64
  %112 = or disjoint i8 %80, %111
  %113 = tail call ptr @decNumberZero(ptr noundef %0) #18
  %114 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 2
  store i8 %112, ptr %114, align 4, !tbaa !5
  br label %277

115:                                              ; preds = %101, %97
  switch i32 %74, label %136 [
    i32 -2147483645, label %116
    i32 -2147483646, label %116
    i32 -2147483648, label %116
    i32 0, label %133
  ]

116:                                              ; preds = %115, %115, %115
  %117 = icmp sgt i8 %13, -1
  br i1 %117, label %118, label %280

118:                                              ; preds = %116
  %119 = call fastcc i32 @decCheckMath(ptr noundef nonnull %1, ptr noundef nonnull %3, ptr noundef nonnull %6) #18, !range !48
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %121, label %277

121:                                              ; preds = %118
  %122 = call fastcc i32 @decCheckMath(ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef nonnull %6) #18, !range !48
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %124, label %277

124:                                              ; preds = %121
  %125 = call ptr @decContextDefault(ptr noundef nonnull %7, i32 noundef 64) #19
  %126 = getelementptr inbounds %struct.decContext, ptr %7, i64 0, i32 1
  store i32 999999, ptr %126, align 4, !tbaa !33
  %127 = getelementptr inbounds %struct.decContext, ptr %7, i64 0, i32 2
  store i32 -999999, ptr %127, align 4, !tbaa !32
  %128 = getelementptr inbounds %struct.decContext, ptr %7, i64 0, i32 6
  store i8 0, ptr %128, align 4, !tbaa !29
  %129 = load i32, ptr %1, align 4, !tbaa !14
  %130 = load i32, ptr %3, align 4, !tbaa !27
  %131 = call i32 @llvm.smax.i32(i32 %129, i32 %130)
  %132 = add nsw i32 %131, 10
  store i32 %132, ptr %7, align 4, !tbaa !27
  br label %146

133:                                              ; preds = %115
  %134 = tail call ptr @decNumberZero(ptr noundef %0) #18
  %135 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 3
  store i16 1, ptr %135, align 2, !tbaa !10
  br label %277

136:                                              ; preds = %115
  %137 = tail call i32 @llvm.abs.i32(i32 %74, i1 true)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %7, ptr noundef nonnull align 4 dereferenceable(28) %3, i64 28, i1 false), !tbaa.struct !49
  %138 = getelementptr inbounds %struct.decContext, ptr %7, i64 0, i32 3
  store i32 3, ptr %138, align 4, !tbaa !37
  %139 = load i32, ptr %2, align 4, !tbaa !14
  %140 = getelementptr inbounds %struct.decNumber, ptr %2, i64 0, i32 1
  %141 = load i32, ptr %140, align 4, !tbaa !15
  %142 = add i32 %139, %11
  %143 = add i32 %142, %141
  %144 = add nsw i32 %143, 2
  store i32 %144, ptr %7, align 4, !tbaa !27
  %145 = icmp sgt i32 %143, 999999997
  br i1 %145, label %280, label %146

146:                                              ; preds = %136, %124
  %147 = phi i32 [ %144, %136 ], [ %132, %124 ]
  %148 = phi i32 [ %137, %136 ], [ %74, %124 ]
  %149 = icmp slt i32 %147, 50
  br i1 %149, label %150, label %155

150:                                              ; preds = %146
  %151 = sext i32 %147 to i64
  %152 = getelementptr inbounds [50 x i8], ptr @d2utable, i64 0, i64 %151
  %153 = load i8, ptr %152, align 1, !tbaa !20
  %154 = zext i8 %153 to i32
  br label %158

155:                                              ; preds = %146
  %156 = add nuw nsw i32 %147, 2
  %157 = udiv i32 %156, 3
  br label %158

158:                                              ; preds = %155, %150
  %159 = phi i32 [ %154, %150 ], [ %157, %155 ]
  %160 = shl nuw nsw i32 %159, 1
  %161 = add nuw nsw i32 %160, 10
  %162 = zext nneg i32 %161 to i64
  %163 = icmp ugt i32 %159, 19
  br i1 %163, label %164, label %170

164:                                              ; preds = %158
  %165 = call noalias ptr @malloc(i64 noundef %162) #21
  %166 = icmp eq ptr %165, null
  br i1 %166, label %167, label %170

167:                                              ; preds = %164
  %168 = load i32, ptr %6, align 4, !tbaa !17
  %169 = or i32 %168, 16
  br label %280

170:                                              ; preds = %164, %158
  %171 = phi ptr [ %9, %158 ], [ %165, %164 ]
  %172 = phi ptr [ null, %158 ], [ %165, %164 ]
  switch i32 %74, label %198 [
    i32 -2147483645, label %173
    i32 -2147483646, label %173
    i32 -2147483648, label %173
  ]

173:                                              ; preds = %170, %170, %170
  %174 = call fastcc ptr @decLnOp(ptr noundef nonnull %171, ptr noundef nonnull %1, ptr noundef nonnull %7, ptr noundef nonnull %6) #18
  %175 = getelementptr inbounds %struct.decNumber, ptr %171, i64 0, i32 3
  %176 = load i16, ptr %175, align 2, !tbaa !10
  %177 = icmp eq i16 %176, 0
  br i1 %177, label %178, label %195

178:                                              ; preds = %173
  %179 = load i32, ptr %171, align 4, !tbaa !14
  %180 = icmp eq i32 %179, 1
  br i1 %180, label %181, label %195

181:                                              ; preds = %178
  %182 = getelementptr inbounds %struct.decNumber, ptr %171, i64 0, i32 2
  %183 = load i8, ptr %182, align 4, !tbaa !5
  %184 = and i8 %183, 112
  %185 = icmp eq i8 %184, 0
  br i1 %185, label %186, label %195

186:                                              ; preds = %181
  store i16 1, ptr %175, align 2, !tbaa !10
  br i1 %75, label %187, label %268

187:                                              ; preds = %186
  %188 = load i32, ptr %3, align 4, !tbaa !27
  %189 = add nsw i32 %188, -1
  %190 = call fastcc i32 @decShiftToMost(ptr noundef nonnull %175, i32 noundef 1, i32 noundef %189) #18
  store i32 %190, ptr %171, align 4, !tbaa !14
  %191 = sub nsw i32 1, %188
  %192 = getelementptr inbounds %struct.decNumber, ptr %171, i64 0, i32 1
  store i32 %191, ptr %192, align 4, !tbaa !15
  %193 = load i32, ptr %6, align 4, !tbaa !17
  %194 = or i32 %193, 2080
  store i32 %194, ptr %6, align 4, !tbaa !17
  br label %268

195:                                              ; preds = %181, %178, %173
  %196 = call fastcc ptr @decMultiplyOp(ptr noundef nonnull %171, ptr noundef nonnull %171, ptr noundef nonnull %2, ptr noundef nonnull %7, ptr noundef nonnull %6) #18
  %197 = call fastcc ptr @decExpOp(ptr noundef nonnull %171, ptr noundef nonnull %171, ptr noundef nonnull %7, ptr noundef nonnull %6) #18
  br label %268

198:                                              ; preds = %170
  %199 = call ptr @decNumberZero(ptr noundef nonnull %171) #18
  %200 = getelementptr inbounds %struct.decNumber, ptr %171, i64 0, i32 3
  store i16 1, ptr %200, align 2, !tbaa !10
  %201 = load i8, ptr %15, align 4, !tbaa !5
  %202 = icmp sgt i8 %201, -1
  br i1 %202, label %217, label %203

203:                                              ; preds = %198
  %204 = call ptr @decNumberCopy(ptr noundef nonnull %8, ptr noundef nonnull %171) #18
  %205 = call fastcc ptr @decDivideOp(ptr noundef nonnull %171, ptr noundef nonnull %8, ptr noundef nonnull %1, ptr noundef nonnull %7, i8 noundef zeroext -128, ptr noundef nonnull %6) #18
  br i1 %163, label %206, label %209

206:                                              ; preds = %203
  %207 = call noalias ptr @malloc(i64 noundef %162) #21
  %208 = icmp eq ptr %207, null
  br i1 %208, label %214, label %209

209:                                              ; preds = %203, %206
  %210 = phi ptr [ null, %203 ], [ %207, %206 ]
  %211 = phi ptr [ %10, %203 ], [ %207, %206 ]
  %212 = call ptr @decNumberCopy(ptr noundef nonnull %211, ptr noundef nonnull %171) #18
  %213 = call ptr @decNumberCopy(ptr noundef nonnull %171, ptr noundef nonnull %8) #18
  br label %217

214:                                              ; preds = %206
  %215 = load i32, ptr %6, align 4, !tbaa !17
  %216 = or i32 %215, 16
  store i32 %216, ptr %6, align 4, !tbaa !17
  br label %270

217:                                              ; preds = %209, %198
  %218 = phi ptr [ null, %198 ], [ %210, %209 ]
  %219 = phi ptr [ %1, %198 ], [ %211, %209 ]
  %220 = getelementptr inbounds %struct.decNumber, ptr %171, i64 0, i32 2
  br label %221

221:                                              ; preds = %257, %217
  %222 = phi i32 [ 1, %217 ], [ %259, %257 ]
  %223 = phi i8 [ 0, %217 ], [ %258, %257 ]
  %224 = phi i32 [ %148, %217 ], [ %242, %257 ]
  %225 = load i32, ptr %6, align 4, !tbaa !17
  %226 = and i32 %225, 8704
  %227 = icmp eq i32 %226, 0
  br i1 %227, label %241, label %228

228:                                              ; preds = %221
  %229 = and i32 %225, 512
  %230 = icmp eq i32 %229, 0
  br i1 %230, label %231, label %263

231:                                              ; preds = %228
  %232 = load i16, ptr %200, align 2, !tbaa !10
  %233 = icmp eq i16 %232, 0
  br i1 %233, label %234, label %241

234:                                              ; preds = %231
  %235 = load i32, ptr %171, align 4, !tbaa !14
  %236 = icmp eq i32 %235, 1
  br i1 %236, label %237, label %241

237:                                              ; preds = %234
  %238 = load i8, ptr %220, align 4, !tbaa !5
  %239 = and i8 %238, 112
  %240 = icmp eq i8 %239, 0
  br i1 %240, label %263, label %241

241:                                              ; preds = %231, %234, %237, %221
  %242 = shl i32 %224, 1
  %243 = icmp slt i32 %242, 0
  br i1 %243, label %246, label %244

244:                                              ; preds = %241
  %245 = icmp eq i32 %222, 31
  br i1 %245, label %260, label %252

246:                                              ; preds = %241
  %247 = call fastcc ptr @decMultiplyOp(ptr noundef nonnull %171, ptr noundef nonnull %171, ptr noundef %219, ptr noundef nonnull %7, ptr noundef nonnull %6) #18
  %248 = icmp eq i32 %222, 31
  br i1 %248, label %249, label %254

249:                                              ; preds = %246
  %250 = load i32, ptr %6, align 4, !tbaa !17
  %251 = and i32 %250, 8704
  br label %260

252:                                              ; preds = %244
  %253 = icmp eq i8 %223, 0
  br i1 %253, label %257, label %254

254:                                              ; preds = %246, %252
  %255 = phi i8 [ %223, %252 ], [ 1, %246 ]
  %256 = call fastcc ptr @decMultiplyOp(ptr noundef nonnull %171, ptr noundef nonnull %171, ptr noundef nonnull %171, ptr noundef nonnull %7, ptr noundef nonnull %6) #18
  br label %257

257:                                              ; preds = %252, %254
  %258 = phi i8 [ 0, %252 ], [ %255, %254 ]
  %259 = add nuw nsw i32 %222, 1
  br label %221

260:                                              ; preds = %244, %249
  %261 = phi i32 [ %251, %249 ], [ %226, %244 ]
  %262 = icmp eq i32 %261, 0
  br i1 %262, label %268, label %263

263:                                              ; preds = %228, %237, %260
  %264 = load i8, ptr %220, align 4, !tbaa !5
  %265 = and i8 %264, 127
  %266 = or disjoint i8 %265, %80
  store i8 %266, ptr %220, align 4, !tbaa !5
  call fastcc void @decFinalize(ptr noundef nonnull %171, ptr noundef nonnull %3, ptr noundef nonnull %5, ptr noundef nonnull %6) #18
  %267 = call ptr @decNumberCopy(ptr noundef %0, ptr noundef nonnull %171) #18
  br label %270

268:                                              ; preds = %260, %195, %187, %186
  %269 = phi ptr [ %218, %260 ], [ null, %186 ], [ null, %187 ], [ null, %195 ]
  call fastcc void @decCopyFit(ptr noundef %0, ptr noundef nonnull %171, ptr noundef nonnull %3, ptr noundef nonnull %5, ptr noundef nonnull %6) #18
  call fastcc void @decFinalize(ptr noundef %0, ptr noundef nonnull %3, ptr noundef nonnull %5, ptr noundef nonnull %6) #18
  br label %270

270:                                              ; preds = %214, %268, %263
  %271 = phi ptr [ null, %214 ], [ %218, %263 ], [ %269, %268 ]
  %272 = icmp eq ptr %172, null
  br i1 %272, label %274, label %273

273:                                              ; preds = %270
  call void @free(ptr noundef nonnull %172) #19
  br label %274

274:                                              ; preds = %273, %270
  %275 = icmp eq ptr %271, null
  br i1 %275, label %277, label %276

276:                                              ; preds = %274
  call void @free(ptr noundef nonnull %271) #19
  br label %277

277:                                              ; preds = %24, %109, %133, %118, %121, %52, %50, %67, %69, %86, %92, %276, %274
  %278 = load i32, ptr %6, align 4, !tbaa !17
  %279 = icmp eq i32 %278, 0
  br i1 %279, label %282, label %280

280:                                              ; preds = %136, %116, %107, %89, %32, %36, %60, %167, %277
  %281 = phi i32 [ %278, %277 ], [ 2080, %60 ], [ %169, %167 ], [ 128, %36 ], [ 128, %32 ], [ 128, %89 ], [ 128, %107 ], [ 128, %116 ], [ 128, %136 ]
  call fastcc void @decStatus(ptr noundef %0, i32 noundef %281, ptr noundef nonnull %3) #18
  br label %282

282:                                              ; preds = %280, %277
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %10) #20
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %9) #20
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #20
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %7) #20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #20
  ret ptr %0
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc i32 @decShiftToMost(ptr noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = icmp eq i32 %2, 0
  br i1 %4, label %115, label %5

5:                                                ; preds = %3
  %6 = add nsw i32 %2, %1
  %7 = icmp slt i32 %6, 4
  br i1 %7, label %8, label %15

8:                                                ; preds = %5
  %9 = load i16, ptr %0, align 2, !tbaa !10
  %10 = sext i32 %2 to i64
  %11 = getelementptr inbounds [10 x i32], ptr @DECPOWERS, i64 0, i64 %10
  %12 = load i32, ptr %11, align 4, !tbaa !17
  %13 = trunc i32 %12 to i16
  %14 = mul i16 %9, %13
  store i16 %14, ptr %0, align 2, !tbaa !10
  br label %115

15:                                               ; preds = %5
  %16 = icmp slt i32 %1, 50
  br i1 %16, label %17, label %22

17:                                               ; preds = %15
  %18 = sext i32 %1 to i64
  %19 = getelementptr inbounds [50 x i8], ptr @d2utable, i64 0, i64 %18
  %20 = load i8, ptr %19, align 1, !tbaa !20
  %21 = zext i8 %20 to i32
  br label %25

22:                                               ; preds = %15
  %23 = add nuw nsw i32 %1, 2
  %24 = udiv i32 %23, 3
  br label %25

25:                                               ; preds = %22, %17
  %26 = phi i32 [ %21, %17 ], [ %24, %22 ]
  %27 = zext nneg i32 %26 to i64
  %28 = getelementptr inbounds i16, ptr %0, i64 %27
  %29 = getelementptr inbounds i16, ptr %28, i64 -1
  %30 = icmp slt i32 %2, 50
  br i1 %30, label %31, label %37

31:                                               ; preds = %25
  %32 = sext i32 %2 to i64
  %33 = getelementptr inbounds [50 x i8], ptr @d2utable, i64 0, i64 %32
  %34 = load i8, ptr %33, align 1, !tbaa !20
  %35 = zext i8 %34 to i64
  %36 = zext i8 %34 to i32
  br label %41

37:                                               ; preds = %25
  %38 = add nuw nsw i32 %2, 2
  %39 = udiv i32 %38, 3
  %40 = zext nneg i32 %39 to i64
  br label %41

41:                                               ; preds = %37, %31
  %42 = phi i64 [ %35, %31 ], [ %40, %37 ]
  %43 = phi i32 [ %36, %31 ], [ %39, %37 ]
  %44 = getelementptr inbounds i16, ptr %29, i64 %42
  %45 = mul nsw i32 %43, -3
  %46 = add i32 %2, 3
  %47 = add i32 %46, %45
  %48 = sub nsw i32 3, %47
  %49 = icmp eq i32 %47, 3
  br i1 %49, label %50, label %59

50:                                               ; preds = %41
  %51 = icmp ult ptr %29, %0
  br i1 %51, label %106, label %52

52:                                               ; preds = %50, %52
  %53 = phi ptr [ %57, %52 ], [ %44, %50 ]
  %54 = phi ptr [ %56, %52 ], [ %29, %50 ]
  %55 = load i16, ptr %54, align 2, !tbaa !10
  store i16 %55, ptr %53, align 2, !tbaa !10
  %56 = getelementptr inbounds i16, ptr %54, i64 -1
  %57 = getelementptr inbounds i16, ptr %53, i64 -1
  %58 = icmp ult ptr %56, %0
  br i1 %58, label %106, label %52, !llvm.loop !67

59:                                               ; preds = %41
  %60 = icmp ult i32 %6, 50
  br i1 %60, label %61, label %66

61:                                               ; preds = %59
  %62 = zext nneg i32 %6 to i64
  %63 = getelementptr inbounds [50 x i8], ptr @d2utable, i64 0, i64 %62
  %64 = load i8, ptr %63, align 1, !tbaa !20
  %65 = zext i8 %64 to i32
  br label %69

66:                                               ; preds = %59
  %67 = add nuw nsw i32 %6, 2
  %68 = udiv i32 %67, 3
  br label %69

69:                                               ; preds = %66, %61
  %70 = phi i32 [ %65, %61 ], [ %68, %66 ]
  %71 = zext nneg i32 %70 to i64
  %72 = getelementptr inbounds i16, ptr %0, i64 %71
  %73 = getelementptr inbounds i16, ptr %72, i64 -1
  %74 = icmp ult ptr %29, %0
  br i1 %74, label %106, label %75

75:                                               ; preds = %69
  %76 = sext i32 %48 to i64
  %77 = getelementptr inbounds [5 x i32], ptr @multies, i64 0, i64 %76
  %78 = load i32, ptr %77, align 4, !tbaa !17
  %79 = getelementptr inbounds [10 x i32], ptr @DECPOWERS, i64 0, i64 %76
  %80 = load i32, ptr %79, align 4, !tbaa !17
  %81 = sext i32 %47 to i64
  %82 = getelementptr inbounds [10 x i32], ptr @DECPOWERS, i64 0, i64 %81
  %83 = load i32, ptr %82, align 4, !tbaa !17
  br label %84

84:                                               ; preds = %75, %99
  %85 = phi ptr [ %44, %75 ], [ %102, %99 ]
  %86 = phi i32 [ 0, %75 ], [ %100, %99 ]
  %87 = phi ptr [ %29, %75 ], [ %101, %99 ]
  %88 = load i16, ptr %87, align 2, !tbaa !10
  %89 = zext i16 %88 to i32
  %90 = lshr i32 %89, %48
  %91 = mul i32 %90, %78
  %92 = lshr i32 %91, 17
  %93 = mul i32 %92, %80
  %94 = sub i32 %89, %93
  %95 = icmp ugt ptr %85, %73
  br i1 %95, label %99, label %96

96:                                               ; preds = %84
  %97 = add i32 %92, %86
  %98 = trunc i32 %97 to i16
  store i16 %98, ptr %85, align 2, !tbaa !10
  br label %99

99:                                               ; preds = %96, %84
  %100 = mul i32 %83, %94
  %101 = getelementptr inbounds i16, ptr %87, i64 -1
  %102 = getelementptr inbounds i16, ptr %85, i64 -1
  %103 = icmp ult ptr %101, %0
  br i1 %103, label %104, label %84, !llvm.loop !68

104:                                              ; preds = %99
  %105 = trunc i32 %100 to i16
  br label %106

106:                                              ; preds = %52, %104, %69, %50
  %107 = phi i16 [ 0, %50 ], [ 0, %69 ], [ %105, %104 ], [ 0, %52 ]
  %108 = phi ptr [ %44, %50 ], [ %44, %69 ], [ %102, %104 ], [ %57, %52 ]
  %109 = icmp ult ptr %108, %0
  br i1 %109, label %115, label %110

110:                                              ; preds = %106, %110
  %111 = phi ptr [ %113, %110 ], [ %108, %106 ]
  %112 = phi i16 [ 0, %110 ], [ %107, %106 ]
  store i16 %112, ptr %111, align 2, !tbaa !10
  %113 = getelementptr inbounds i16, ptr %111, i64 -1
  %114 = icmp ult ptr %113, %0
  br i1 %114, label %115, label %110, !llvm.loop !69

115:                                              ; preds = %110, %106, %3, %8
  %116 = phi i32 [ %6, %8 ], [ %1, %3 ], [ %6, %106 ], [ %6, %110 ]
  ret i32 %116
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @decGetInt(ptr nocapture noundef readonly %0) unnamed_addr #3 {
  %2 = load i32, ptr %0, align 4, !tbaa !14
  %3 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 4, !tbaa !15
  %5 = add nsw i32 %4, %2
  %6 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 2
  %7 = load i8, ptr %6, align 4, !tbaa !5
  %8 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 3
  %9 = load i16, ptr %8, align 2, !tbaa !10
  %10 = icmp eq i16 %9, 0
  %11 = icmp eq i32 %2, 1
  %12 = select i1 %10, i1 %11, i1 false
  %13 = and i8 %7, 112
  %14 = icmp eq i8 %13, 0
  %15 = select i1 %12, i1 %14, i1 false
  br i1 %15, label %114, label %16

16:                                               ; preds = %1
  %17 = icmp sgt i32 %4, -1
  br i1 %17, label %51, label %18

18:                                               ; preds = %16
  %19 = sub nsw i32 0, %4
  %20 = icmp ugt i32 %19, 2
  br i1 %20, label %21, label %34

21:                                               ; preds = %18, %26
  %22 = phi i32 [ %27, %26 ], [ %19, %18 ]
  %23 = phi ptr [ %28, %26 ], [ %8, %18 ]
  %24 = load i16, ptr %23, align 2, !tbaa !10
  %25 = icmp eq i16 %24, 0
  br i1 %25, label %26, label %114

26:                                               ; preds = %21
  %27 = add nsw i32 %22, -3
  %28 = getelementptr inbounds i16, ptr %23, i64 1
  %29 = icmp ugt i32 %27, 2
  br i1 %29, label %21, label %30, !llvm.loop !70

30:                                               ; preds = %26
  %31 = icmp eq i32 %27, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %30
  %33 = load i16, ptr %28, align 2, !tbaa !10
  br label %53

34:                                               ; preds = %18, %30
  %35 = phi i32 [ %27, %30 ], [ %19, %18 ]
  %36 = phi ptr [ %28, %30 ], [ %8, %18 ]
  %37 = load i16, ptr %36, align 2, !tbaa !10
  %38 = zext i16 %37 to i32
  %39 = lshr i32 %38, %35
  %40 = zext nneg i32 %35 to i64
  %41 = getelementptr inbounds [5 x i32], ptr @multies, i64 0, i64 %40
  %42 = load i32, ptr %41, align 4, !tbaa !17
  %43 = mul i32 %39, %42
  %44 = lshr i32 %43, 17
  %45 = getelementptr inbounds [10 x i32], ptr @DECPOWERS, i64 0, i64 %40
  %46 = load i32, ptr %45, align 4, !tbaa !17
  %47 = mul i32 %44, %46
  %48 = icmp eq i32 %47, %38
  %49 = xor i32 %35, 3
  %50 = getelementptr inbounds i16, ptr %36, i64 1
  br i1 %48, label %58, label %114

51:                                               ; preds = %16
  %52 = icmp eq i32 %4, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %32, %51
  %54 = phi i16 [ %9, %51 ], [ %33, %32 ]
  %55 = phi ptr [ %8, %51 ], [ %28, %32 ]
  %56 = zext i16 %54 to i32
  %57 = getelementptr inbounds i16, ptr %55, i64 1
  br label %58

58:                                               ; preds = %34, %53, %51
  %59 = phi i32 [ 3, %53 ], [ %4, %51 ], [ %49, %34 ]
  %60 = phi ptr [ %57, %53 ], [ %8, %51 ], [ %50, %34 ]
  %61 = phi i32 [ %56, %53 ], [ 0, %51 ], [ %44, %34 ]
  %62 = icmp slt i32 %5, 11
  br i1 %62, label %63, label %107

63:                                               ; preds = %58
  %64 = icmp slt i32 %59, %5
  br i1 %64, label %65, label %83

65:                                               ; preds = %63
  %66 = zext nneg i32 %59 to i64
  %67 = zext nneg i32 %5 to i64
  br label %68

68:                                               ; preds = %65, %68
  %69 = phi i64 [ %66, %65 ], [ %78, %68 ]
  %70 = phi i32 [ %61, %65 ], [ %77, %68 ]
  %71 = phi ptr [ %60, %65 ], [ %79, %68 ]
  %72 = load i16, ptr %71, align 2, !tbaa !10
  %73 = zext i16 %72 to i32
  %74 = getelementptr inbounds [10 x i32], ptr @DECPOWERS, i64 0, i64 %69
  %75 = load i32, ptr %74, align 4, !tbaa !17
  %76 = mul i32 %75, %73
  %77 = add i32 %76, %70
  %78 = add nuw nsw i64 %69, 3
  %79 = getelementptr inbounds i16, ptr %71, i64 1
  %80 = icmp ult i64 %78, %67
  br i1 %80, label %68, label %81, !llvm.loop !71

81:                                               ; preds = %68
  %82 = trunc i64 %78 to i32
  br label %83

83:                                               ; preds = %81, %63
  %84 = phi i32 [ %59, %63 ], [ %82, %81 ]
  %85 = phi ptr [ %60, %63 ], [ %79, %81 ]
  %86 = phi i32 [ %61, %63 ], [ %77, %81 ]
  %87 = icmp eq i32 %5, 10
  br i1 %87, label %88, label %110

88:                                               ; preds = %83
  %89 = add nsw i32 %84, -3
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds [10 x i32], ptr @DECPOWERS, i64 0, i64 %90
  %92 = load i32, ptr %91, align 4, !tbaa !17
  %93 = sdiv i32 %86, %92
  %94 = getelementptr inbounds i16, ptr %85, i64 -1
  %95 = load i16, ptr %94, align 2, !tbaa !10
  %96 = zext i16 %95 to i32
  %97 = icmp eq i32 %93, %96
  br i1 %97, label %98, label %107

98:                                               ; preds = %88
  %99 = icmp slt i8 %7, 0
  %100 = icmp sgt i32 %86, 1999999997
  %101 = select i1 %99, i1 %100, i1 false
  br i1 %101, label %107, label %102

102:                                              ; preds = %98
  %103 = icmp sgt i8 %7, -1
  %104 = icmp sgt i32 %86, 999999999
  %105 = select i1 %103, i1 %104, i1 false
  %106 = freeze i1 %105
  br i1 %106, label %107, label %110

107:                                              ; preds = %102, %88, %98, %58
  %108 = and i32 %61, 1
  %109 = or disjoint i32 %108, -2147483646
  br label %114

110:                                              ; preds = %83, %102
  %111 = sub nsw i32 0, %86
  %112 = icmp slt i8 %7, 0
  %113 = select i1 %112, i32 %111, i32 %86
  br label %114

114:                                              ; preds = %21, %107, %1, %34, %110
  %115 = phi i32 [ %113, %110 ], [ -2147483648, %34 ], [ 0, %1 ], [ %109, %107 ], [ -2147483648, %21 ]
  ret i32 %115
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @decNumberQuantize(ptr noundef returned %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #4 {
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #20
  store i32 0, ptr %5, align 4, !tbaa !17
  %6 = call fastcc ptr @decQuantizeOp(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i8 noundef zeroext 1, ptr noundef nonnull %5) #18
  %7 = load i32, ptr %5, align 4, !tbaa !17
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %4
  tail call fastcc void @decStatus(ptr noundef %0, i32 noundef %7, ptr noundef %3) #18
  br label %10

10:                                               ; preds = %9, %4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #20
  ret ptr %0
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @decQuantizeOp(ptr noundef returned %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3, i8 noundef zeroext %4, ptr nocapture noundef %5) unnamed_addr #4 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.decContext, align 4
  %9 = load i32, ptr %3, align 4, !tbaa !27
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #20
  store i32 0, ptr %7, align 4, !tbaa !17
  %10 = getelementptr inbounds %struct.decContext, ptr %3, i64 0, i32 2
  %11 = load i32, ptr %10, align 4, !tbaa !32
  %12 = sub i32 %11, %9
  %13 = add i32 %12, 1
  %14 = getelementptr inbounds %struct.decNumber, ptr %1, i64 0, i32 2
  %15 = load i8, ptr %14, align 4, !tbaa !5
  %16 = zext i8 %15 to i32
  %17 = getelementptr inbounds %struct.decNumber, ptr %2, i64 0, i32 2
  %18 = load i8, ptr %17, align 4, !tbaa !5
  %19 = zext i8 %18 to i32
  %20 = or i32 %19, %16
  %21 = and i32 %20, 112
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %37, label %23

23:                                               ; preds = %6
  %24 = and i32 %20, 48
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %23
  %27 = tail call fastcc ptr @decNaNs(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef %5) #18
  br label %125

28:                                               ; preds = %23
  %29 = xor i32 %19, %16
  %30 = and i32 %29, 64
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %28
  %33 = load i32, ptr %5, align 4, !tbaa !17
  %34 = or i32 %33, 128
  store i32 %34, ptr %5, align 4, !tbaa !17
  br label %125

35:                                               ; preds = %28
  %36 = tail call ptr @decNumberCopy(ptr noundef %0, ptr noundef nonnull %1) #18
  br label %125

37:                                               ; preds = %6
  %38 = icmp eq i8 %4, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %37
  %40 = getelementptr inbounds %struct.decNumber, ptr %2, i64 0, i32 1
  %41 = load i32, ptr %40, align 4, !tbaa !15
  br label %44

42:                                               ; preds = %37
  %43 = tail call fastcc i32 @decGetInt(ptr noundef nonnull %2) #18
  br label %44

44:                                               ; preds = %42, %39
  %45 = phi i32 [ %41, %39 ], [ %43, %42 ]
  switch i32 %45, label %46 [
    i32 -2147483645, label %52
    i32 -2147483646, label %52
    i32 -2147483648, label %52
  ]

46:                                               ; preds = %44
  %47 = icmp slt i32 %45, %13
  br i1 %47, label %52, label %48

48:                                               ; preds = %46
  %49 = getelementptr inbounds %struct.decContext, ptr %3, i64 0, i32 1
  %50 = load i32, ptr %49, align 4, !tbaa !33
  %51 = icmp sgt i32 %45, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %44, %44, %44, %48, %46
  %53 = load i32, ptr %5, align 4, !tbaa !17
  %54 = or i32 %53, 128
  store i32 %54, ptr %5, align 4, !tbaa !17
  br label %125

55:                                               ; preds = %48
  %56 = getelementptr inbounds %struct.decNumber, ptr %1, i64 0, i32 3
  %57 = load i16, ptr %56, align 2, !tbaa !10
  %58 = icmp eq i16 %57, 0
  %59 = load i32, ptr %1, align 4, !tbaa !14
  br i1 %58, label %60, label %68

60:                                               ; preds = %55
  %61 = icmp eq i32 %59, 1
  %62 = and i8 %15, 112
  %63 = icmp eq i8 %62, 0
  %64 = and i1 %63, %61
  br i1 %64, label %65, label %68

65:                                               ; preds = %60
  %66 = tail call ptr @decNumberCopy(ptr noundef %0, ptr noundef nonnull %1) #18
  %67 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 1
  store i32 %45, ptr %67, align 4, !tbaa !15
  br label %112

68:                                               ; preds = %60, %55
  %69 = getelementptr inbounds %struct.decNumber, ptr %1, i64 0, i32 1
  %70 = load i32, ptr %69, align 4, !tbaa !15
  %71 = sub nsw i32 %45, %70
  %72 = sub nsw i32 %59, %71
  %73 = icmp sgt i32 %72, %9
  br i1 %73, label %74, label %77

74:                                               ; preds = %68
  %75 = load i32, ptr %5, align 4, !tbaa !17
  %76 = or i32 %75, 128
  store i32 %76, ptr %5, align 4, !tbaa !17
  br label %125

77:                                               ; preds = %68
  %78 = icmp sgt i32 %71, 0
  br i1 %78, label %79, label %98

79:                                               ; preds = %77
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %8) #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %8, ptr noundef nonnull align 4 dereferenceable(28) %3, i64 28, i1 false), !tbaa.struct !49
  store i32 %72, ptr %8, align 4, !tbaa !27
  call fastcc void @decCopyFit(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %8, ptr noundef nonnull %7, ptr noundef %5) #18
  %80 = load i32, ptr %7, align 4, !tbaa !17
  call fastcc void @decApplyRound(ptr noundef %0, ptr noundef nonnull %8, i32 noundef %80, ptr noundef %5) #18
  store i32 0, ptr %7, align 4, !tbaa !17
  %81 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 1
  %82 = load i32, ptr %81, align 4, !tbaa !15
  %83 = icmp sgt i32 %82, %45
  br i1 %83, label %84, label %92

84:                                               ; preds = %79
  %85 = load i32, ptr %0, align 4, !tbaa !14
  %86 = icmp eq i32 %85, %9
  br i1 %86, label %94, label %87

87:                                               ; preds = %84
  %88 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 3
  %89 = tail call fastcc i32 @decShiftToMost(ptr noundef nonnull %88, i32 noundef %85, i32 noundef 1) #18
  store i32 %89, ptr %0, align 4, !tbaa !14
  %90 = load i32, ptr %81, align 4, !tbaa !15
  %91 = add nsw i32 %90, -1
  store i32 %91, ptr %81, align 4, !tbaa !15
  br label %92

92:                                               ; preds = %87, %79
  %93 = phi i32 [ %91, %87 ], [ %82, %79 ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %8) #20
  br label %112

94:                                               ; preds = %84
  %95 = load i32, ptr %5, align 4, !tbaa !17
  %96 = and i32 %95, -2209
  %97 = or disjoint i32 %96, 128
  store i32 %97, ptr %5, align 4, !tbaa !17
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %8) #20
  br label %125

98:                                               ; preds = %77
  %99 = tail call ptr @decNumberCopy(ptr noundef %0, ptr noundef nonnull %1) #18
  %100 = icmp slt i32 %71, 0
  br i1 %100, label %104, label %101

101:                                              ; preds = %98
  %102 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 1
  %103 = load i32, ptr %102, align 4, !tbaa !15
  br label %112

104:                                              ; preds = %98
  %105 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 3
  %106 = load i32, ptr %0, align 4, !tbaa !14
  %107 = sub nsw i32 0, %71
  %108 = tail call fastcc i32 @decShiftToMost(ptr noundef nonnull %105, i32 noundef %106, i32 noundef %107) #18
  store i32 %108, ptr %0, align 4, !tbaa !14
  %109 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 1
  %110 = load i32, ptr %109, align 4, !tbaa !15
  %111 = add nsw i32 %110, %71
  store i32 %111, ptr %109, align 4, !tbaa !15
  br label %112

112:                                              ; preds = %101, %104, %92, %65
  %113 = phi i32 [ %103, %101 ], [ %111, %104 ], [ %93, %92 ], [ %45, %65 ]
  %114 = load i32, ptr %49, align 4, !tbaa !33
  %115 = load i32, ptr %0, align 4, !tbaa !14
  %116 = add i32 %114, 1
  %117 = sub i32 %116, %115
  %118 = icmp sgt i32 %113, %117
  br i1 %118, label %119, label %122

119:                                              ; preds = %112
  %120 = load i32, ptr %5, align 4, !tbaa !17
  %121 = or i32 %120, 128
  store i32 %121, ptr %5, align 4, !tbaa !17
  br label %125

122:                                              ; preds = %112
  call fastcc void @decFinalize(ptr noundef nonnull %0, ptr noundef nonnull %3, ptr noundef nonnull %7, ptr noundef %5) #18
  %123 = load i32, ptr %5, align 4, !tbaa !17
  %124 = and i32 %123, -8193
  store i32 %124, ptr %5, align 4, !tbaa !17
  br label %125

125:                                              ; preds = %74, %94, %26, %35, %32, %122, %119, %52
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #20
  ret ptr %0
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @decNumberNormalize(ptr noundef returned %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #4 {
  %4 = tail call ptr @decNumberReduce(ptr noundef %0, ptr noundef %1, ptr noundef %2) #18
  ret ptr %0
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @decNumberReduce(ptr noundef returned %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #4 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #20
  store i32 0, ptr %4, align 4, !tbaa !17
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #20
  store i32 0, ptr %5, align 4, !tbaa !17
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #20
  %7 = getelementptr inbounds %struct.decNumber, ptr %1, i64 0, i32 2
  %8 = load i8, ptr %7, align 4, !tbaa !5
  %9 = and i8 %8, 48
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %3
  %12 = call fastcc ptr @decNaNs(ptr noundef %0, ptr noundef nonnull %1, ptr noundef null, ptr noundef %2, ptr noundef nonnull %4) #18
  br label %15

13:                                               ; preds = %3
  call fastcc void @decCopyFit(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef nonnull %5, ptr noundef nonnull %4) #18
  call fastcc void @decFinalize(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %5, ptr noundef nonnull %4) #18
  %14 = call fastcc ptr @decTrim(ptr noundef %0, ptr noundef %2, i8 noundef zeroext 1, i8 noundef zeroext 0, ptr noundef nonnull %6) #18
  br label %15

15:                                               ; preds = %13, %11
  %16 = load i32, ptr %4, align 4, !tbaa !17
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %15
  tail call fastcc void @decStatus(ptr noundef %0, i32 noundef %16, ptr noundef %2) #18
  br label %19

19:                                               ; preds = %18, %15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #20
  ret ptr %0
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef ptr @decTrim(ptr noundef returned %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2, i8 noundef zeroext %3, ptr nocapture noundef writeonly %4) unnamed_addr #0 {
  store i32 0, ptr %4, align 4, !tbaa !17
  %6 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 2
  %7 = load i8, ptr %6, align 4, !tbaa !5
  %8 = and i8 %7, 112
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %97

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 3
  %12 = load i16, ptr %11, align 2, !tbaa !10
  %13 = and i16 %12, 1
  %14 = icmp eq i16 %13, 0
  br i1 %14, label %15, label %97

15:                                               ; preds = %10
  %16 = icmp eq i16 %12, 0
  %17 = load i32, ptr %0, align 4, !tbaa !14
  %18 = icmp eq i32 %17, 1
  %19 = select i1 %16, i1 %18, i1 false
  %20 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 1
  br i1 %19, label %21, label %22

21:                                               ; preds = %15
  store i32 0, ptr %20, align 4, !tbaa !15
  br label %97

22:                                               ; preds = %15
  %23 = load i32, ptr %20, align 4, !tbaa !15
  %24 = add i32 %17, -1
  %25 = icmp sgt i32 %17, 1
  br i1 %25, label %26, label %97

26:                                               ; preds = %22
  %27 = icmp eq i8 %2, 0
  br label %28

28:                                               ; preds = %26, %52
  %29 = phi i32 [ 0, %26 ], [ %59, %52 ]
  %30 = phi ptr [ %11, %26 ], [ %58, %52 ]
  %31 = phi i32 [ 1, %26 ], [ %56, %52 ]
  %32 = phi i32 [ %23, %26 ], [ %53, %52 ]
  %33 = load i16, ptr %30, align 2, !tbaa !10
  %34 = zext i16 %33 to i32
  %35 = lshr i32 %34, %31
  %36 = zext nneg i32 %31 to i64
  %37 = getelementptr inbounds [5 x i32], ptr @multies, i64 0, i64 %36
  %38 = load i32, ptr %37, align 4, !tbaa !17
  %39 = mul i32 %35, %38
  %40 = lshr i32 %39, 17
  %41 = getelementptr inbounds [10 x i32], ptr @DECPOWERS, i64 0, i64 %36
  %42 = load i32, ptr %41, align 4, !tbaa !17
  %43 = mul i32 %40, %42
  %44 = icmp eq i32 %43, %34
  br i1 %44, label %45, label %61

45:                                               ; preds = %28
  %46 = icmp slt i32 %32, 1
  %47 = select i1 %27, i1 %46, i1 false
  br i1 %47, label %48, label %52

48:                                               ; preds = %45
  %49 = icmp eq i32 %32, 0
  br i1 %49, label %61, label %50

50:                                               ; preds = %48
  %51 = add nsw i32 %32, 1
  br label %52

52:                                               ; preds = %50, %45
  %53 = phi i32 [ %51, %50 ], [ %32, %45 ]
  %54 = add nuw nsw i32 %31, 1
  %55 = icmp ugt i32 %31, 2
  %56 = select i1 %55, i32 1, i32 %54
  %57 = zext i1 %55 to i64
  %58 = getelementptr inbounds i16, ptr %30, i64 %57
  %59 = add nuw nsw i32 %29, 1
  %60 = icmp eq i32 %59, %24
  br i1 %60, label %63, label %28, !llvm.loop !72

61:                                               ; preds = %28, %48
  %62 = icmp eq i32 %29, 0
  br i1 %62, label %97, label %63

63:                                               ; preds = %52, %61
  %64 = phi i32 [ %29, %61 ], [ %24, %52 ]
  %65 = getelementptr inbounds %struct.decContext, ptr %1, i64 0, i32 6
  %66 = load i8, ptr %65, align 4, !tbaa !29
  %67 = icmp eq i8 %66, 0
  %68 = icmp ne i8 %3, 0
  %69 = or i1 %68, %67
  br i1 %69, label %79, label %70

70:                                               ; preds = %63
  %71 = getelementptr inbounds %struct.decContext, ptr %1, i64 0, i32 1
  %72 = load i32, ptr %71, align 4, !tbaa !33
  %73 = load i32, ptr %1, align 4, !tbaa !27
  %74 = add i32 %72, 1
  %75 = add i32 %23, %73
  %76 = sub i32 %74, %75
  %77 = icmp sgt i32 %76, 0
  %78 = tail call i32 @llvm.smin.i32(i32 %64, i32 %76)
  br i1 %77, label %79, label %97

79:                                               ; preds = %70, %63
  %80 = phi i32 [ %64, %63 ], [ %78, %70 ]
  %81 = icmp slt i32 %17, 50
  br i1 %81, label %82, label %87

82:                                               ; preds = %79
  %83 = zext nneg i32 %17 to i64
  %84 = getelementptr inbounds [50 x i8], ptr @d2utable, i64 0, i64 %83
  %85 = load i8, ptr %84, align 1, !tbaa !20
  %86 = zext i8 %85 to i32
  br label %90

87:                                               ; preds = %79
  %88 = add nuw nsw i32 %17, 2
  %89 = udiv i32 %88, 3
  br label %90

90:                                               ; preds = %87, %82
  %91 = phi i32 [ %86, %82 ], [ %89, %87 ]
  %92 = tail call fastcc i32 @decShiftToLeast(ptr noundef nonnull %11, i32 noundef %91, i32 noundef %80) #18
  %93 = load i32, ptr %20, align 4, !tbaa !15
  %94 = add nsw i32 %93, %80
  store i32 %94, ptr %20, align 4, !tbaa !15
  %95 = load i32, ptr %0, align 4, !tbaa !14
  %96 = sub nsw i32 %95, %80
  store i32 %96, ptr %0, align 4, !tbaa !14
  store i32 %80, ptr %4, align 4, !tbaa !17
  br label %97

97:                                               ; preds = %22, %61, %5, %10, %70, %90, %21
  ret ptr %0
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @decNumberRescale(ptr noundef returned %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #4 {
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #20
  store i32 0, ptr %5, align 4, !tbaa !17
  %6 = call fastcc ptr @decQuantizeOp(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i8 noundef zeroext 0, ptr noundef nonnull %5) #18
  %7 = load i32, ptr %5, align 4, !tbaa !17
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %4
  tail call fastcc void @decStatus(ptr noundef %0, i32 noundef %7, ptr noundef %3) #18
  br label %10

10:                                               ; preds = %9, %4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #20
  ret ptr %0
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @decNumberRemainder(ptr noundef returned %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #4 {
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #20
  store i32 0, ptr %5, align 4, !tbaa !17
  %6 = call fastcc ptr @decDivideOp(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i8 noundef zeroext 64, ptr noundef nonnull %5) #18
  %7 = load i32, ptr %5, align 4, !tbaa !17
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %4
  tail call fastcc void @decStatus(ptr noundef %0, i32 noundef %7, ptr noundef %3) #18
  br label %10

10:                                               ; preds = %9, %4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #20
  ret ptr %0
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @decNumberRemainderNear(ptr noundef returned %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #4 {
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #20
  store i32 0, ptr %5, align 4, !tbaa !17
  %6 = call fastcc ptr @decDivideOp(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i8 noundef zeroext 16, ptr noundef nonnull %5) #18
  %7 = load i32, ptr %5, align 4, !tbaa !17
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %4
  tail call fastcc void @decStatus(ptr noundef %0, i32 noundef %7, ptr noundef %3) #18
  br label %10

10:                                               ; preds = %9, %4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #20
  ret ptr %0
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @decNumberRotate(ptr noundef returned %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #4 {
  %5 = ptrtoint ptr %0 to i64
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #20
  store i32 0, ptr %6, align 4, !tbaa !17
  %7 = getelementptr inbounds %struct.decNumber, ptr %1, i64 0, i32 2
  %8 = load i8, ptr %7, align 4, !tbaa !5
  %9 = and i8 %8, 48
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %184

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.decNumber, ptr %2, i64 0, i32 2
  %13 = load i8, ptr %12, align 4, !tbaa !5
  %14 = zext i8 %13 to i32
  %15 = and i32 %14, 48
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %184

17:                                               ; preds = %11
  %18 = and i32 %14, 64
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %188

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.decNumber, ptr %2, i64 0, i32 1
  %22 = load i32, ptr %21, align 4, !tbaa !15
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %188

24:                                               ; preds = %20
  %25 = tail call fastcc i32 @decGetInt(ptr noundef nonnull %2) #18
  switch i32 %25, label %26 [
    i32 -2147483645, label %188
    i32 -2147483646, label %188
    i32 -2147483648, label %188
  ]

26:                                               ; preds = %24
  %27 = tail call i32 @llvm.abs.i32(i32 %25, i1 true)
  %28 = load i32, ptr %3, align 4, !tbaa !27
  %29 = icmp sgt i32 %27, %28
  br i1 %29, label %188, label %30

30:                                               ; preds = %26
  %31 = tail call ptr @decNumberCopy(ptr noundef %0, ptr noundef nonnull %1) #18
  %32 = icmp slt i32 %25, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %30
  %34 = load i32, ptr %3, align 4, !tbaa !27
  %35 = add nsw i32 %34, %25
  br label %36

36:                                               ; preds = %33, %30
  %37 = phi i32 [ %35, %33 ], [ %25, %30 ]
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %190, label %39

39:                                               ; preds = %36
  %40 = load i32, ptr %3, align 4, !tbaa !27
  %41 = icmp eq i32 %37, %40
  br i1 %41, label %190, label %42

42:                                               ; preds = %39
  %43 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 2
  %44 = load i8, ptr %43, align 4, !tbaa !5
  %45 = and i8 %44, 64
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %47, label %190

47:                                               ; preds = %42
  %48 = getelementptr %struct.decNumber, ptr %0, i64 0, i32 3
  %49 = load i32, ptr %0, align 4, !tbaa !14
  %50 = icmp slt i32 %49, 50
  br i1 %50, label %51, label %56

51:                                               ; preds = %47
  %52 = sext i32 %49 to i64
  %53 = getelementptr inbounds [50 x i8], ptr @d2utable, i64 0, i64 %52
  %54 = load i8, ptr %53, align 1, !tbaa !20
  %55 = zext i8 %54 to i32
  br label %59

56:                                               ; preds = %47
  %57 = add nuw nsw i32 %49, 2
  %58 = udiv i32 %57, 3
  br label %59

59:                                               ; preds = %56, %51
  %60 = phi i32 [ %55, %51 ], [ %58, %56 ]
  %61 = zext nneg i32 %60 to i64
  %62 = getelementptr i16, ptr %48, i64 %61
  %63 = icmp slt i32 %40, 50
  br i1 %63, label %64, label %69

64:                                               ; preds = %59
  %65 = sext i32 %40 to i64
  %66 = getelementptr inbounds [50 x i8], ptr @d2utable, i64 0, i64 %65
  %67 = load i8, ptr %66, align 1, !tbaa !20
  %68 = zext i8 %67 to i32
  br label %72

69:                                               ; preds = %59
  %70 = add nuw nsw i32 %40, 2
  %71 = udiv i32 %70, 3
  br label %72

72:                                               ; preds = %69, %64
  %73 = phi i32 [ %68, %64 ], [ %71, %69 ]
  %74 = zext nneg i32 %73 to i64
  %75 = getelementptr inbounds i16, ptr %48, i64 %74
  %76 = getelementptr inbounds i16, ptr %75, i64 -1
  %77 = icmp ugt ptr %62, %76
  br i1 %77, label %91, label %78

78:                                               ; preds = %72
  %79 = shl nuw nsw i64 %61, 1
  %80 = add i64 %79, %5
  %81 = add i64 %80, 12
  %82 = shl nuw nsw i64 %74, 1
  %83 = add i64 %82, %5
  %84 = add i64 %83, 9
  %85 = tail call i64 @llvm.umax.i64(i64 %81, i64 %84)
  %86 = add i64 %85, -11
  %87 = add i64 %79, %5
  %88 = sub i64 %86, %87
  %89 = and i64 %88, -2
  %90 = add i64 %89, 2
  tail call void @llvm.memset.p0.i64(ptr align 2 %62, i8 0, i64 %90, i1 false), !tbaa !10
  br label %91

91:                                               ; preds = %78, %72
  store i32 %40, ptr %0, align 4, !tbaa !14
  br i1 %63, label %92, label %97

92:                                               ; preds = %91
  %93 = sext i32 %40 to i64
  %94 = getelementptr inbounds [50 x i8], ptr @d2utable, i64 0, i64 %93
  %95 = load i8, ptr %94, align 1, !tbaa !20
  %96 = zext i8 %95 to i32
  br label %100

97:                                               ; preds = %91
  %98 = add nuw nsw i32 %40, 2
  %99 = udiv i32 %98, 3
  br label %100

100:                                              ; preds = %97, %92
  %101 = phi i32 [ %96, %92 ], [ %99, %97 ]
  %102 = mul nsw i32 %101, -3
  %103 = add i32 %40, 3
  %104 = add i32 %103, %102
  %105 = sub nsw i32 %40, %37
  %106 = sdiv i32 %105, 3
  %107 = srem i32 %105, 3
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %151, label %109

109:                                              ; preds = %100
  %110 = load i16, ptr %48, align 2, !tbaa !10
  %111 = zext i16 %110 to i32
  %112 = zext i32 %107 to i64
  %113 = getelementptr inbounds [10 x i32], ptr @DECPOWERS, i64 0, i64 %112
  %114 = load i32, ptr %113, align 4, !tbaa !17
  %115 = urem i32 %111, %114
  br i1 %63, label %116, label %121

116:                                              ; preds = %109
  %117 = sext i32 %40 to i64
  %118 = getelementptr inbounds [50 x i8], ptr @d2utable, i64 0, i64 %117
  %119 = load i8, ptr %118, align 1, !tbaa !20
  %120 = zext i8 %119 to i32
  br label %124

121:                                              ; preds = %109
  %122 = add nuw nsw i32 %40, 2
  %123 = udiv i32 %122, 3
  br label %124

124:                                              ; preds = %121, %116
  %125 = phi i32 [ %120, %116 ], [ %123, %121 ]
  %126 = tail call fastcc i32 @decShiftToLeast(ptr noundef nonnull %48, i32 noundef %125, i32 noundef %107) #18
  %127 = icmp ugt i32 %107, %104
  br i1 %127, label %128, label %138

128:                                              ; preds = %124
  %129 = sub i32 %107, %104
  %130 = zext i32 %129 to i64
  %131 = getelementptr inbounds [10 x i32], ptr @DECPOWERS, i64 0, i64 %130
  %132 = load i32, ptr %131, align 4, !tbaa !17
  %133 = urem i32 %115, %132
  %134 = udiv i32 %115, %132
  %135 = trunc i32 %134 to i16
  store i16 %135, ptr %76, align 2, !tbaa !10
  %136 = getelementptr inbounds i16, ptr %75, i64 -2
  %137 = sub i32 3, %129
  br label %140

138:                                              ; preds = %124
  %139 = sub i32 %104, %107
  br label %140

140:                                              ; preds = %138, %128
  %141 = phi i32 [ %137, %128 ], [ %139, %138 ]
  %142 = phi i32 [ %133, %128 ], [ %115, %138 ]
  %143 = phi ptr [ %136, %128 ], [ %76, %138 ]
  %144 = load i16, ptr %143, align 2, !tbaa !10
  %145 = zext i32 %141 to i64
  %146 = getelementptr inbounds [10 x i32], ptr @DECPOWERS, i64 0, i64 %145
  %147 = load i32, ptr %146, align 4, !tbaa !17
  %148 = mul i32 %147, %142
  %149 = trunc i32 %148 to i16
  %150 = add i16 %144, %149
  store i16 %150, ptr %143, align 2, !tbaa !10
  br label %151

151:                                              ; preds = %140, %100
  %152 = add i32 %105, 2
  %153 = icmp ult i32 %152, 5
  br i1 %153, label %176, label %154

154:                                              ; preds = %151
  %155 = icmp eq i32 %104, 3
  br i1 %155, label %172, label %156

156:                                              ; preds = %154
  %157 = sub i32 3, %104
  %158 = load i16, ptr %48, align 2, !tbaa !10
  %159 = zext i16 %158 to i32
  %160 = zext i32 %157 to i64
  %161 = getelementptr inbounds [10 x i32], ptr @DECPOWERS, i64 0, i64 %160
  %162 = load i32, ptr %161, align 4, !tbaa !17
  %163 = urem i32 %159, %162
  %164 = tail call fastcc i32 @decShiftToLeast(ptr noundef nonnull %48, i32 noundef %106, i32 noundef %157) #18
  %165 = load i16, ptr %76, align 2, !tbaa !10
  %166 = zext i32 %104 to i64
  %167 = getelementptr inbounds [10 x i32], ptr @DECPOWERS, i64 0, i64 %166
  %168 = load i32, ptr %167, align 4, !tbaa !17
  %169 = mul i32 %168, %163
  %170 = trunc i32 %169 to i16
  %171 = add i16 %165, %170
  store i16 %171, ptr %76, align 2, !tbaa !10
  br label %172

172:                                              ; preds = %156, %154
  %173 = zext i32 %106 to i64
  %174 = getelementptr inbounds i16, ptr %48, i64 %173
  tail call fastcc void @decReverse(ptr noundef nonnull %174, ptr noundef nonnull %76) #18
  %175 = getelementptr inbounds i16, ptr %174, i64 -1
  tail call fastcc void @decReverse(ptr noundef nonnull %48, ptr noundef nonnull %175) #18
  tail call fastcc void @decReverse(ptr noundef nonnull %48, ptr noundef nonnull %76) #18
  br label %176

176:                                              ; preds = %172, %151
  %177 = ptrtoint ptr %76 to i64
  %178 = ptrtoint ptr %48 to i64
  %179 = sub i64 %177, %178
  %180 = lshr exact i64 %179, 1
  %181 = trunc i64 %180 to i32
  %182 = add i32 %181, 1
  %183 = tail call fastcc i32 @decGetDigits(ptr noundef nonnull %48, i32 noundef %182) #18
  store i32 %183, ptr %0, align 4, !tbaa !14
  br label %190

184:                                              ; preds = %4, %11
  %185 = call fastcc ptr @decNaNs(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %6) #18
  %186 = load i32, ptr %6, align 4, !tbaa !17
  %187 = icmp eq i32 %186, 0
  br i1 %187, label %190, label %188

188:                                              ; preds = %26, %24, %24, %24, %17, %20, %184
  %189 = phi i32 [ %186, %184 ], [ 128, %20 ], [ 128, %17 ], [ 128, %24 ], [ 128, %24 ], [ 128, %24 ], [ 128, %26 ]
  tail call fastcc void @decStatus(ptr noundef %0, i32 noundef %189, ptr noundef %3) #18
  br label %190

190:                                              ; preds = %176, %42, %39, %36, %188, %184
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #20
  ret ptr %0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #12

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc i32 @decShiftToLeast(ptr noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = icmp eq i32 %2, 0
  br i1 %4, label %117, label %5

5:                                                ; preds = %3
  %6 = mul nsw i32 %1, 3
  %7 = icmp eq i32 %6, %2
  br i1 %7, label %8, label %9

8:                                                ; preds = %5
  store i16 0, ptr %0, align 2, !tbaa !10
  br label %117

9:                                                ; preds = %5
  %10 = icmp slt i32 %2, 50
  br i1 %10, label %11, label %20

11:                                               ; preds = %9
  %12 = sext i32 %2 to i64
  %13 = getelementptr inbounds [50 x i8], ptr @d2utable, i64 0, i64 %12
  %14 = load i8, ptr %13, align 1, !tbaa !20
  %15 = zext i8 %14 to i32
  %16 = mul nuw nsw i32 %15, 3
  %17 = add nsw i32 %16, -3
  %18 = sub nsw i32 %2, %17
  %19 = icmp eq i32 %18, 3
  br i1 %19, label %28, label %50

20:                                               ; preds = %9
  %21 = add nuw i32 %2, 2
  %22 = urem i32 %21, 3
  %23 = udiv i32 %21, 3
  %24 = sub nuw i32 %21, %22
  %25 = add nsw i32 %24, -3
  %26 = sub nsw i32 %2, %25
  %27 = icmp eq i32 %26, 3
  br i1 %27, label %28, label %50

28:                                               ; preds = %20, %11
  %29 = phi i32 [ %15, %11 ], [ %23, %20 ]
  %30 = sext i32 %1 to i64
  %31 = getelementptr inbounds i16, ptr %0, i64 %30
  %32 = icmp slt i32 %29, %1
  br i1 %32, label %33, label %43

33:                                               ; preds = %28
  %34 = zext nneg i32 %29 to i64
  %35 = getelementptr i16, ptr %0, i64 %34
  br label %36

36:                                               ; preds = %33, %36
  %37 = phi ptr [ %40, %36 ], [ %0, %33 ]
  %38 = phi ptr [ %41, %36 ], [ %35, %33 ]
  %39 = load i16, ptr %38, align 2, !tbaa !10
  store i16 %39, ptr %37, align 2, !tbaa !10
  %40 = getelementptr inbounds i16, ptr %37, i64 1
  %41 = getelementptr inbounds i16, ptr %38, i64 1
  %42 = icmp ult ptr %41, %31
  br i1 %42, label %36, label %43, !llvm.loop !73

43:                                               ; preds = %36, %28
  %44 = phi ptr [ %0, %28 ], [ %40, %36 ]
  %45 = ptrtoint ptr %44 to i64
  %46 = ptrtoint ptr %0 to i64
  %47 = sub i64 %45, %46
  %48 = lshr exact i64 %47, 1
  %49 = trunc i64 %48 to i32
  br label %117

50:                                               ; preds = %20, %11
  %51 = phi i32 [ %26, %20 ], [ %18, %11 ]
  %52 = phi i32 [ %25, %20 ], [ %17, %11 ]
  %53 = phi i32 [ %24, %20 ], [ %16, %11 ]
  %54 = icmp slt i32 %52, 50
  br i1 %54, label %55, label %60

55:                                               ; preds = %50
  %56 = sext i32 %52 to i64
  %57 = getelementptr inbounds [50 x i8], ptr @d2utable, i64 0, i64 %56
  %58 = load i8, ptr %57, align 1, !tbaa !20
  %59 = zext i8 %58 to i32
  br label %63

60:                                               ; preds = %50
  %61 = add nsw i32 %53, -1
  %62 = sdiv i32 %61, 3
  br label %63

63:                                               ; preds = %60, %55
  %64 = phi i32 [ %59, %55 ], [ %62, %60 ]
  %65 = zext nneg i32 %64 to i64
  %66 = getelementptr inbounds i16, ptr %0, i64 %65
  %67 = load i16, ptr %66, align 2, !tbaa !10
  %68 = zext i16 %67 to i32
  %69 = lshr i32 %68, %51
  %70 = sext i32 %51 to i64
  %71 = getelementptr inbounds [5 x i32], ptr @multies, i64 0, i64 %70
  %72 = load i32, ptr %71, align 4, !tbaa !17
  %73 = mul i32 %69, %72
  %74 = lshr i32 %73, 17
  %75 = sub nsw i32 3, %51
  %76 = trunc i32 %74 to i16
  store i16 %76, ptr %0, align 2, !tbaa !10
  %77 = add i32 %75, %2
  %78 = sub i32 %6, %77
  %79 = icmp slt i32 %78, 1
  br i1 %79, label %109, label %80

80:                                               ; preds = %63
  %81 = getelementptr inbounds [10 x i32], ptr @DECPOWERS, i64 0, i64 %70
  %82 = load i32, ptr %81, align 4, !tbaa !17
  %83 = sext i32 %75 to i64
  %84 = getelementptr inbounds [10 x i32], ptr @DECPOWERS, i64 0, i64 %83
  %85 = load i32, ptr %84, align 4, !tbaa !17
  br label %86

86:                                               ; preds = %80, %104
  %87 = phi i32 [ %78, %80 ], [ %107, %104 ]
  %88 = phi i32 [ %74, %80 ], [ %96, %104 ]
  %89 = phi ptr [ %0, %80 ], [ %105, %104 ]
  %90 = phi ptr [ %66, %80 ], [ %91, %104 ]
  %91 = getelementptr inbounds i16, ptr %90, i64 1
  %92 = load i16, ptr %91, align 2, !tbaa !10
  %93 = zext i16 %92 to i32
  %94 = lshr i32 %93, %51
  %95 = mul i32 %94, %72
  %96 = lshr i32 %95, 17
  %97 = mul i32 %96, %82
  %98 = sub i32 %93, %97
  %99 = mul i32 %98, %85
  %100 = add i32 %99, %88
  %101 = trunc i32 %100 to i16
  store i16 %101, ptr %89, align 2, !tbaa !10
  %102 = sub nsw i32 %87, %51
  %103 = icmp slt i32 %102, 1
  br i1 %103, label %109, label %104

104:                                              ; preds = %86
  %105 = getelementptr inbounds i16, ptr %89, i64 1
  %106 = trunc i32 %96 to i16
  store i16 %106, ptr %105, align 2, !tbaa !10
  %107 = sub nsw i32 %102, %75
  %108 = icmp slt i32 %107, 1
  br i1 %108, label %109, label %86

109:                                              ; preds = %104, %86, %63
  %110 = phi ptr [ %0, %63 ], [ %89, %86 ], [ %105, %104 ]
  %111 = ptrtoint ptr %110 to i64
  %112 = ptrtoint ptr %0 to i64
  %113 = sub i64 %111, %112
  %114 = lshr exact i64 %113, 1
  %115 = trunc i64 %114 to i32
  %116 = add i32 %115, 1
  br label %117

117:                                              ; preds = %3, %109, %43, %8
  %118 = phi i32 [ 1, %8 ], [ %49, %43 ], [ %116, %109 ], [ %1, %3 ]
  ret i32 %118
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @decReverse(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = icmp ult ptr %0, %1
  br i1 %3, label %4, label %12

4:                                                ; preds = %2, %4
  %5 = phi ptr [ %9, %4 ], [ %0, %2 ]
  %6 = phi ptr [ %10, %4 ], [ %1, %2 ]
  %7 = load i16, ptr %5, align 2, !tbaa !10
  %8 = load i16, ptr %6, align 2, !tbaa !10
  store i16 %8, ptr %5, align 2, !tbaa !10
  store i16 %7, ptr %6, align 2, !tbaa !10
  %9 = getelementptr inbounds i16, ptr %5, i64 1
  %10 = getelementptr inbounds i16, ptr %6, i64 -1
  %11 = icmp ult ptr %9, %10
  br i1 %11, label %4, label %12, !llvm.loop !74

12:                                               ; preds = %4, %2
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local noundef ptr @decNumberSameQuantum(ptr noundef returned %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #8 {
  %4 = getelementptr inbounds %struct.decNumber, ptr %1, i64 0, i32 2
  %5 = load i8, ptr %4, align 4, !tbaa !5
  %6 = zext i8 %5 to i32
  %7 = getelementptr inbounds %struct.decNumber, ptr %2, i64 0, i32 2
  %8 = load i8, ptr %7, align 4, !tbaa !5
  %9 = zext i8 %8 to i32
  %10 = or i32 %9, %6
  %11 = and i32 %10, 112
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %26, label %13

13:                                               ; preds = %3
  %14 = and i32 %6, 48
  %15 = icmp eq i32 %14, 0
  %16 = and i32 %9, 48
  %17 = icmp eq i32 %16, 0
  %18 = or i1 %15, %17
  br i1 %18, label %19, label %33

19:                                               ; preds = %13
  %20 = and i8 %5, 64
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %33, label %22

22:                                               ; preds = %19
  %23 = lshr i8 %8, 6
  %24 = and i8 %23, 1
  %25 = zext nneg i8 %24 to i16
  br label %33

26:                                               ; preds = %3
  %27 = getelementptr inbounds %struct.decNumber, ptr %1, i64 0, i32 1
  %28 = load i32, ptr %27, align 4, !tbaa !15
  %29 = getelementptr inbounds %struct.decNumber, ptr %2, i64 0, i32 1
  %30 = load i32, ptr %29, align 4, !tbaa !15
  %31 = icmp eq i32 %28, %30
  %32 = zext i1 %31 to i16
  br label %33

33:                                               ; preds = %26, %22, %13, %19
  %34 = phi i16 [ 0, %19 ], [ 1, %13 ], [ %25, %22 ], [ %32, %26 ]
  %35 = tail call ptr @decNumberZero(ptr noundef %0) #18
  %36 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 3
  store i16 %34, ptr %36, align 2, !tbaa !10
  ret ptr %0
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @decNumberScaleB(ptr noundef returned %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #4 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #20
  store i32 0, ptr %5, align 4, !tbaa !17
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #20
  %7 = getelementptr inbounds %struct.decNumber, ptr %1, i64 0, i32 2
  %8 = load i8, ptr %7, align 4, !tbaa !5
  %9 = and i8 %8, 48
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %17

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.decNumber, ptr %2, i64 0, i32 2
  %13 = load i8, ptr %12, align 4, !tbaa !5
  %14 = zext i8 %13 to i32
  %15 = and i32 %14, 48
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %11, %4
  %18 = call fastcc ptr @decNaNs(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %5) #18
  br label %46

19:                                               ; preds = %11
  %20 = and i32 %14, 64
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %49

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.decNumber, ptr %2, i64 0, i32 1
  %24 = load i32, ptr %23, align 4, !tbaa !15
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %49

26:                                               ; preds = %22
  %27 = tail call fastcc i32 @decGetInt(ptr noundef nonnull %2) #18
  switch i32 %27, label %28 [
    i32 -2147483645, label %49
    i32 -2147483646, label %49
    i32 -2147483648, label %49
  ]

28:                                               ; preds = %26
  %29 = tail call i32 @llvm.abs.i32(i32 %27, i1 true)
  %30 = load i32, ptr %3, align 4, !tbaa !27
  %31 = getelementptr inbounds %struct.decContext, ptr %3, i64 0, i32 1
  %32 = load i32, ptr %31, align 4, !tbaa !33
  %33 = add nsw i32 %32, %30
  %34 = shl nsw i32 %33, 1
  %35 = icmp sgt i32 %29, %34
  br i1 %35, label %49, label %36

36:                                               ; preds = %28
  %37 = tail call ptr @decNumberCopy(ptr noundef %0, ptr noundef nonnull %1) #18
  %38 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 2
  %39 = load i8, ptr %38, align 4, !tbaa !5
  %40 = and i8 %39, 64
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %36
  %43 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 1
  %44 = load i32, ptr %43, align 4, !tbaa !15
  %45 = add nsw i32 %44, %27
  store i32 %45, ptr %43, align 4, !tbaa !15
  store i32 0, ptr %6, align 4, !tbaa !17
  call fastcc void @decFinalize(ptr noundef nonnull %0, ptr noundef nonnull %3, ptr noundef nonnull %6, ptr noundef nonnull %5) #18
  br label %46

46:                                               ; preds = %36, %42, %17
  %47 = load i32, ptr %5, align 4, !tbaa !17
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %51, label %49

49:                                               ; preds = %28, %26, %26, %26, %19, %22, %46
  %50 = phi i32 [ %47, %46 ], [ 128, %22 ], [ 128, %19 ], [ 128, %26 ], [ 128, %26 ], [ 128, %26 ], [ 128, %28 ]
  tail call fastcc void @decStatus(ptr noundef %0, i32 noundef %50, ptr noundef %3) #18
  br label %51

51:                                               ; preds = %49, %46
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #20
  ret ptr %0
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @decNumberShift(ptr noundef returned %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #4 {
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #20
  store i32 0, ptr %5, align 4, !tbaa !17
  %6 = getelementptr inbounds %struct.decNumber, ptr %1, i64 0, i32 2
  %7 = load i8, ptr %6, align 4, !tbaa !5
  %8 = and i8 %7, 48
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %83

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.decNumber, ptr %2, i64 0, i32 2
  %12 = load i8, ptr %11, align 4, !tbaa !5
  %13 = zext i8 %12 to i32
  %14 = and i32 %13, 48
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %83

16:                                               ; preds = %10
  %17 = and i32 %13, 64
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %87

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.decNumber, ptr %2, i64 0, i32 1
  %21 = load i32, ptr %20, align 4, !tbaa !15
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %87

23:                                               ; preds = %19
  %24 = tail call fastcc i32 @decGetInt(ptr noundef nonnull %2) #18
  switch i32 %24, label %25 [
    i32 -2147483645, label %87
    i32 -2147483646, label %87
    i32 -2147483648, label %87
  ]

25:                                               ; preds = %23
  %26 = tail call i32 @llvm.abs.i32(i32 %24, i1 true)
  %27 = load i32, ptr %3, align 4, !tbaa !27
  %28 = icmp sgt i32 %26, %27
  br i1 %28, label %87, label %29

29:                                               ; preds = %25
  %30 = tail call ptr @decNumberCopy(ptr noundef %0, ptr noundef nonnull %1) #18
  %31 = icmp eq i32 %24, 0
  br i1 %31, label %89, label %32

32:                                               ; preds = %29
  %33 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 2
  %34 = load i8, ptr %33, align 4, !tbaa !5
  %35 = and i8 %34, 64
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %37, label %89

37:                                               ; preds = %32
  %38 = icmp sgt i32 %24, 0
  br i1 %38, label %39, label %62

39:                                               ; preds = %37
  %40 = load i32, ptr %3, align 4, !tbaa !27
  %41 = icmp eq i32 %24, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %39
  %43 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 3
  store i16 0, ptr %43, align 2, !tbaa !10
  store i32 1, ptr %0, align 4, !tbaa !14
  br label %89

44:                                               ; preds = %39
  %45 = load i32, ptr %0, align 4, !tbaa !14
  %46 = add nsw i32 %45, %24
  %47 = icmp sgt i32 %46, %40
  br i1 %47, label %48, label %52

48:                                               ; preds = %44
  %49 = sub nsw i32 %46, %40
  %50 = tail call fastcc ptr @decDecap(ptr noundef nonnull %0, i32 noundef %49) #18
  %51 = load i32, ptr %0, align 4, !tbaa !14
  br label %52

52:                                               ; preds = %48, %44
  %53 = phi i32 [ %51, %48 ], [ %45, %44 ]
  %54 = icmp sgt i32 %53, 1
  br i1 %54, label %59, label %55

55:                                               ; preds = %52
  %56 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 3
  %57 = load i16, ptr %56, align 2, !tbaa !10
  %58 = icmp eq i16 %57, 0
  br i1 %58, label %89, label %59

59:                                               ; preds = %55, %52
  %60 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 3
  %61 = tail call fastcc i32 @decShiftToMost(ptr noundef nonnull %60, i32 noundef %53, i32 noundef %24) #18
  store i32 %61, ptr %0, align 4, !tbaa !14
  br label %89

62:                                               ; preds = %37
  %63 = sub nsw i32 0, %24
  %64 = load i32, ptr %0, align 4, !tbaa !14
  %65 = icmp sgt i32 %64, %63
  %66 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 3
  br i1 %65, label %68, label %67

67:                                               ; preds = %62
  store i16 0, ptr %66, align 2, !tbaa !10
  store i32 1, ptr %0, align 4, !tbaa !14
  br label %89

68:                                               ; preds = %62
  %69 = icmp ult i32 %64, 50
  br i1 %69, label %70, label %75

70:                                               ; preds = %68
  %71 = zext nneg i32 %64 to i64
  %72 = getelementptr inbounds [50 x i8], ptr @d2utable, i64 0, i64 %71
  %73 = load i8, ptr %72, align 1, !tbaa !20
  %74 = zext i8 %73 to i32
  br label %78

75:                                               ; preds = %68
  %76 = add nuw nsw i32 %64, 2
  %77 = udiv i32 %76, 3
  br label %78

78:                                               ; preds = %75, %70
  %79 = phi i32 [ %74, %70 ], [ %77, %75 ]
  %80 = tail call fastcc i32 @decShiftToLeast(ptr noundef nonnull %66, i32 noundef %79, i32 noundef %63) #18
  %81 = load i32, ptr %0, align 4, !tbaa !14
  %82 = add nsw i32 %81, %24
  store i32 %82, ptr %0, align 4, !tbaa !14
  br label %89

83:                                               ; preds = %4, %10
  %84 = call fastcc ptr @decNaNs(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %5) #18
  %85 = load i32, ptr %5, align 4, !tbaa !17
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %89, label %87

87:                                               ; preds = %25, %23, %23, %23, %16, %19, %83
  %88 = phi i32 [ %85, %83 ], [ 128, %19 ], [ 128, %16 ], [ 128, %23 ], [ 128, %23 ], [ 128, %23 ], [ 128, %25 ]
  tail call fastcc void @decStatus(ptr noundef %0, i32 noundef %88, ptr noundef %3) #18
  br label %89

89:                                               ; preds = %55, %59, %42, %78, %67, %32, %29, %87, %83
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #20
  ret ptr %0
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef ptr @decDecap(ptr noundef returned %0, i32 noundef %1) unnamed_addr #13 {
  %3 = load i32, ptr %0, align 4, !tbaa !14
  %4 = icmp sgt i32 %3, %1
  %5 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 3
  br i1 %4, label %7, label %6

6:                                                ; preds = %2
  store i16 0, ptr %5, align 2, !tbaa !10
  br label %45

7:                                                ; preds = %2
  %8 = sub nsw i32 %3, %1
  %9 = icmp slt i32 %8, 50
  br i1 %9, label %10, label %16

10:                                               ; preds = %7
  %11 = sext i32 %8 to i64
  %12 = getelementptr inbounds [50 x i8], ptr @d2utable, i64 0, i64 %11
  %13 = load i8, ptr %12, align 1, !tbaa !20
  %14 = zext i8 %13 to i64
  %15 = zext i8 %13 to i32
  br label %20

16:                                               ; preds = %7
  %17 = add nuw nsw i32 %8, 2
  %18 = udiv i32 %17, 3
  %19 = zext nneg i32 %18 to i64
  br label %20

20:                                               ; preds = %16, %10
  %21 = phi i64 [ %14, %10 ], [ %19, %16 ]
  %22 = phi i32 [ %15, %10 ], [ %18, %16 ]
  %23 = getelementptr inbounds i16, ptr %5, i64 %21
  %24 = getelementptr inbounds i16, ptr %23, i64 -1
  %25 = mul nsw i32 %22, -3
  %26 = add i32 %8, 3
  %27 = add i32 %26, %25
  %28 = icmp eq i32 %27, 3
  br i1 %28, label %37, label %29

29:                                               ; preds = %20
  %30 = sext i32 %27 to i64
  %31 = getelementptr inbounds [10 x i32], ptr @DECPOWERS, i64 0, i64 %30
  %32 = load i32, ptr %31, align 4, !tbaa !17
  %33 = load i16, ptr %24, align 2, !tbaa !10
  %34 = zext i16 %33 to i32
  %35 = urem i32 %34, %32
  %36 = trunc i32 %35 to i16
  store i16 %36, ptr %24, align 2, !tbaa !10
  br label %37

37:                                               ; preds = %29, %20
  %38 = ptrtoint ptr %24 to i64
  %39 = ptrtoint ptr %5 to i64
  %40 = sub i64 %38, %39
  %41 = lshr exact i64 %40, 1
  %42 = trunc i64 %41 to i32
  %43 = add i32 %42, 1
  %44 = tail call fastcc i32 @decGetDigits(ptr noundef nonnull %5, i32 noundef %43) #18
  br label %45

45:                                               ; preds = %37, %6
  %46 = phi i32 [ %44, %37 ], [ 1, %6 ]
  store i32 %46, ptr %0, align 4, !tbaa !14
  ret ptr %0
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @decNumberSquareRoot(ptr noundef returned %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #4 {
  %4 = alloca %struct.decContext, align 4
  %5 = alloca %struct.decContext, align 4
  %6 = alloca %struct.decNumber, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [3 x %struct.decNumber], align 16
  %13 = alloca [3 x %struct.decNumber], align 16
  %14 = alloca [3 x %struct.decNumber], align 16
  %15 = alloca [1 x %struct.decNumber], align 4
  %16 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %4) #20
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %5) #20
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #20
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #20
  store i32 0, ptr %7, align 4, !tbaa !17
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #20
  store i32 0, ptr %8, align 4, !tbaa !17
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #20
  store i32 0, ptr %9, align 4, !tbaa !17
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #20
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #20
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %12) #20
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %13) #20
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %14) #20
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %15) #20
  %17 = getelementptr inbounds %struct.decNumber, ptr %1, i64 0, i32 2
  %18 = load i8, ptr %17, align 4, !tbaa !5
  %19 = zext i8 %18 to i32
  %20 = and i32 %19, 112
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %31, label %22

22:                                               ; preds = %3
  %23 = and i32 %19, 64
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %22
  %26 = icmp sgt i8 %18, -1
  br i1 %26, label %27, label %303

27:                                               ; preds = %25
  %28 = tail call ptr @decNumberCopy(ptr noundef %0, ptr noundef nonnull %1) #18
  br label %300

29:                                               ; preds = %22
  %30 = call fastcc ptr @decNaNs(ptr noundef %0, ptr noundef nonnull %1, ptr noundef null, ptr noundef %2, ptr noundef nonnull %8) #18
  br label %300

31:                                               ; preds = %3
  %32 = getelementptr inbounds %struct.decNumber, ptr %1, i64 0, i32 1
  %33 = load i32, ptr %32, align 4, !tbaa !15
  %34 = ashr i32 %33, 1
  %35 = getelementptr inbounds %struct.decNumber, ptr %1, i64 0, i32 3
  %36 = load i16, ptr %35, align 2, !tbaa !10
  %37 = icmp eq i16 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %31
  %39 = load i32, ptr %1, align 4, !tbaa !14
  %40 = icmp eq i32 %39, 1
  br i1 %40, label %41, label %44

41:                                               ; preds = %38
  %42 = tail call ptr @decNumberCopy(ptr noundef %0, ptr noundef nonnull %1) #18
  %43 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 1
  store i32 %34, ptr %43, align 4, !tbaa !15
  call fastcc void @decFinalize(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %7, ptr noundef nonnull %8) #18
  br label %300

44:                                               ; preds = %38, %31
  %45 = icmp sgt i8 %18, -1
  br i1 %45, label %46, label %303

46:                                               ; preds = %44
  %47 = load i32, ptr %2, align 4, !tbaa !27
  %48 = add nsw i32 %47, 1
  %49 = load i32, ptr %1, align 4, !tbaa !14
  %50 = tail call i32 @llvm.smax.i32(i32 %48, i32 %49)
  %51 = tail call i32 @llvm.smax.i32(i32 %50, i32 7)
  %52 = add nuw nsw i32 %51, 2
  %53 = icmp slt i32 %49, 50
  br i1 %53, label %57, label %54

54:                                               ; preds = %46
  %55 = add nuw nsw i32 %49, 2
  %56 = udiv i32 %55, 3
  br label %64

57:                                               ; preds = %46
  %58 = sext i32 %49 to i64
  %59 = getelementptr inbounds [50 x i8], ptr @d2utable, i64 0, i64 %58
  %60 = load i8, ptr %59, align 1, !tbaa !20
  %61 = zext i8 %60 to i32
  %62 = add nsw i64 %58, -40
  %63 = icmp ult i64 %62, 10
  br i1 %63, label %64, label %71

64:                                               ; preds = %54, %57
  %65 = phi i32 [ %56, %54 ], [ %61, %57 ]
  %66 = shl nuw nsw i32 %65, 1
  %67 = add nuw nsw i32 %66, 10
  %68 = zext nneg i32 %67 to i64
  %69 = tail call noalias ptr @malloc(i64 noundef %68) #21
  %70 = icmp eq ptr %69, null
  br i1 %70, label %303, label %71

71:                                               ; preds = %64, %57
  %72 = phi ptr [ %12, %57 ], [ %69, %64 ]
  %73 = phi ptr [ null, %57 ], [ %69, %64 ]
  %74 = icmp slt i32 %50, 48
  br i1 %74, label %75, label %80

75:                                               ; preds = %71
  %76 = zext nneg i32 %52 to i64
  %77 = getelementptr inbounds [50 x i8], ptr @d2utable, i64 0, i64 %76
  %78 = load i8, ptr %77, align 1, !tbaa !20
  %79 = zext i8 %78 to i32
  br label %83

80:                                               ; preds = %71
  %81 = add nuw nsw i32 %51, 4
  %82 = udiv i32 %81, 3
  br label %83

83:                                               ; preds = %80, %75
  %84 = phi i32 [ %79, %75 ], [ %82, %80 ]
  %85 = icmp ugt i32 %84, 13
  br i1 %85, label %86, label %96

86:                                               ; preds = %83
  %87 = shl nuw nsw i32 %84, 1
  %88 = add nuw nsw i32 %87, 10
  %89 = zext nneg i32 %88 to i64
  %90 = tail call noalias ptr @malloc(i64 noundef %89) #21
  %91 = tail call noalias ptr @malloc(i64 noundef %89) #21
  %92 = icmp eq ptr %90, null
  %93 = icmp eq ptr %91, null
  %94 = or i1 %92, %93
  br i1 %94, label %95, label %96

95:                                               ; preds = %86
  store i32 16, ptr %8, align 4, !tbaa !17
  br label %289

96:                                               ; preds = %86, %83
  %97 = phi ptr [ null, %83 ], [ %90, %86 ]
  %98 = phi ptr [ null, %83 ], [ %91, %86 ]
  %99 = phi ptr [ %13, %83 ], [ %90, %86 ]
  %100 = phi ptr [ %14, %83 ], [ %91, %86 ]
  %101 = getelementptr inbounds %struct.decNumber, ptr %99, i64 0, i32 2
  %102 = call ptr @decNumberCopy(ptr noundef nonnull %72, ptr noundef nonnull %1) #18
  %103 = getelementptr inbounds %struct.decNumber, ptr %72, i64 0, i32 1
  %104 = load i32, ptr %103, align 4, !tbaa !15
  %105 = load i32, ptr %72, align 4, !tbaa !14
  %106 = add nsw i32 %105, %104
  %107 = sub nsw i32 0, %105
  store i32 %107, ptr %103, align 4, !tbaa !15
  %108 = call ptr @decContextDefault(ptr noundef nonnull %4, i32 noundef 64) #19
  %109 = getelementptr inbounds %struct.decContext, ptr %4, i64 0, i32 1
  store i32 999999999, ptr %109, align 4, !tbaa !33
  %110 = getelementptr inbounds %struct.decContext, ptr %4, i64 0, i32 2
  store i32 -999999999, ptr %110, align 4, !tbaa !32
  store i32 %51, ptr %4, align 4, !tbaa !27
  %111 = getelementptr inbounds %struct.decNumber, ptr %15, i64 0, i32 2
  store i8 0, ptr %111, align 4, !tbaa !5
  store i32 3, ptr %15, align 4, !tbaa !14
  store i8 0, ptr %101, align 4, !tbaa !5
  store i32 3, ptr %99, align 4, !tbaa !14
  %112 = and i32 %106, 1
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %118, label %114

114:                                              ; preds = %96
  %115 = load i32, ptr %103, align 4, !tbaa !15
  %116 = add nsw i32 %115, -1
  store i32 %116, ptr %103, align 4, !tbaa !15
  %117 = add nsw i32 %106, 1
  br label %118

118:                                              ; preds = %114, %96
  %119 = phi i32 [ -4, %114 ], [ -3, %96 ]
  %120 = phi i32 [ -2, %114 ], [ -3, %96 ]
  %121 = phi i16 [ 819, %114 ], [ 259, %96 ]
  %122 = phi i16 [ 259, %114 ], [ 819, %96 ]
  %123 = phi i32 [ %117, %114 ], [ %106, %96 ]
  %124 = getelementptr inbounds %struct.decNumber, ptr %15, i64 0, i32 1
  store i32 %119, ptr %124, align 4
  %125 = getelementptr inbounds %struct.decNumber, ptr %99, i64 0, i32 1
  store i32 %120, ptr %125, align 4
  %126 = getelementptr inbounds %struct.decNumber, ptr %15, i64 0, i32 3
  store i16 %121, ptr %126, align 2
  %127 = getelementptr inbounds %struct.decNumber, ptr %99, i64 0, i32 3
  store i16 %122, ptr %127, align 2
  %128 = call fastcc ptr @decMultiplyOp(ptr noundef nonnull %99, ptr noundef nonnull %99, ptr noundef nonnull %72, ptr noundef nonnull %4, ptr noundef nonnull %9) #18
  %129 = call fastcc ptr @decAddOp(ptr noundef nonnull %99, ptr noundef nonnull %99, ptr noundef nonnull %15, ptr noundef nonnull %4, i8 noundef zeroext 0, ptr noundef nonnull %9) #18
  %130 = call ptr @decNumberZero(ptr noundef nonnull %6) #18
  %131 = call ptr @decNumberZero(ptr noundef nonnull %15) #18
  store i16 5, ptr %126, align 2, !tbaa !10
  store i32 -1, ptr %124, align 4, !tbaa !15
  br label %132

132:                                              ; preds = %118, %132
  %133 = phi i32 [ %140, %132 ], [ 3, %118 ]
  %134 = shl nsw i32 %133, 1
  %135 = add nsw i32 %134, -2
  %136 = call i32 @llvm.smin.i32(i32 %135, i32 %52)
  store i32 %136, ptr %4, align 4, !tbaa !27
  %137 = call fastcc ptr @decDivideOp(ptr noundef %100, ptr noundef nonnull %72, ptr noundef nonnull %99, ptr noundef nonnull %4, i8 noundef zeroext -128, ptr noundef nonnull %9) #18
  %138 = call fastcc ptr @decAddOp(ptr noundef %100, ptr noundef %100, ptr noundef nonnull %99, ptr noundef nonnull %4, i8 noundef zeroext 0, ptr noundef nonnull %9) #18
  %139 = call fastcc ptr @decMultiplyOp(ptr noundef nonnull %99, ptr noundef %100, ptr noundef nonnull %15, ptr noundef nonnull %4, ptr noundef nonnull %9) #18
  %140 = load i32, ptr %4, align 4
  %141 = icmp slt i32 %140, %52
  br i1 %141, label %132, label %142, !llvm.loop !75

142:                                              ; preds = %132
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %5, ptr noundef nonnull align 4 dereferenceable(28) %2, i64 28, i1 false), !tbaa.struct !49
  %143 = getelementptr inbounds %struct.decContext, ptr %5, i64 0, i32 3
  store i32 3, ptr %143, align 4, !tbaa !37
  %144 = sdiv i32 %123, 2
  %145 = load i32, ptr %125, align 4, !tbaa !15
  %146 = add nsw i32 %145, %144
  store i32 %146, ptr %125, align 4, !tbaa !15
  store i32 0, ptr %10, align 4, !tbaa !17
  store i32 0, ptr %7, align 4, !tbaa !17
  call fastcc void @decCopyFit(ptr noundef nonnull %99, ptr noundef nonnull %99, ptr noundef nonnull %5, ptr noundef nonnull %7, ptr noundef nonnull %10) #18
  call fastcc void @decFinalize(ptr noundef nonnull %99, ptr noundef nonnull %5, ptr noundef nonnull %7, ptr noundef nonnull %10) #18
  %147 = load i32, ptr %10, align 4, !tbaa !17
  %148 = and i32 %147, 512
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %152, label %150

150:                                              ; preds = %142
  store i32 %147, ptr %8, align 4, !tbaa !17
  %151 = call ptr @decNumberCopy(ptr noundef %0, ptr noundef nonnull %99) #18
  br label %289

152:                                              ; preds = %142
  %153 = and i32 %147, -2593
  store i32 %153, ptr %8, align 4, !tbaa !17
  %154 = load i32, ptr %125, align 4, !tbaa !15
  %155 = sub nsw i32 %154, %144
  store i32 %155, ptr %125, align 4, !tbaa !15
  %156 = load i32, ptr %4, align 4, !tbaa !27
  %157 = add nsw i32 %156, -1
  store i32 %157, ptr %4, align 4, !tbaa !27
  %158 = load i32, ptr %99, align 4, !tbaa !14
  %159 = xor i32 %158, -1
  store i32 %159, ptr %124, align 4, !tbaa !15
  %160 = call fastcc ptr @decAddOp(ptr noundef %100, ptr noundef nonnull %99, ptr noundef nonnull %15, ptr noundef nonnull %4, i8 noundef zeroext -128, ptr noundef nonnull %9) #18
  %161 = getelementptr inbounds %struct.decContext, ptr %4, i64 0, i32 3
  store i32 1, ptr %161, align 4, !tbaa !37
  %162 = call fastcc ptr @decMultiplyOp(ptr noundef %100, ptr noundef %100, ptr noundef %100, ptr noundef nonnull %4, ptr noundef nonnull %9) #18
  %163 = call fastcc ptr @decCompareOp(ptr noundef %100, ptr noundef nonnull %72, ptr noundef %100, ptr noundef nonnull %4, i8 noundef zeroext 1, ptr noundef nonnull %9) #18
  %164 = getelementptr inbounds %struct.decNumber, ptr %100, i64 0, i32 2
  %165 = load i8, ptr %164, align 4, !tbaa !5
  %166 = icmp sgt i8 %165, -1
  br i1 %166, label %167, label %173

167:                                              ; preds = %152
  %168 = call fastcc ptr @decAddOp(ptr noundef nonnull %100, ptr noundef nonnull %99, ptr noundef nonnull %15, ptr noundef nonnull %4, i8 noundef zeroext 0, ptr noundef nonnull %9) #18
  store i32 5, ptr %161, align 4, !tbaa !37
  %169 = call fastcc ptr @decMultiplyOp(ptr noundef nonnull %100, ptr noundef nonnull %100, ptr noundef nonnull %100, ptr noundef nonnull %4, ptr noundef nonnull %9) #18
  %170 = call fastcc ptr @decCompareOp(ptr noundef nonnull %100, ptr noundef nonnull %100, ptr noundef nonnull %72, ptr noundef nonnull %4, i8 noundef zeroext 1, ptr noundef nonnull %9) #18
  %171 = load i8, ptr %164, align 4, !tbaa !5
  %172 = icmp sgt i8 %171, -1
  br i1 %172, label %184, label %173

173:                                              ; preds = %167, %152
  %174 = phi i8 [ -128, %152 ], [ 0, %167 ]
  %175 = load i32, ptr %124, align 4, !tbaa !15
  %176 = add nsw i32 %175, 1
  store i32 %176, ptr %124, align 4, !tbaa !15
  store i16 1, ptr %126, align 2, !tbaa !10
  %177 = call fastcc ptr @decAddOp(ptr noundef nonnull %99, ptr noundef nonnull %99, ptr noundef nonnull %15, ptr noundef nonnull %4, i8 noundef zeroext %174, ptr noundef nonnull %9) #18
  %178 = getelementptr inbounds %struct.decContext, ptr %5, i64 0, i32 1
  %179 = load <2 x i32>, ptr %178, align 4, !tbaa !17
  %180 = insertelement <2 x i32> poison, i32 %144, i64 0
  %181 = shufflevector <2 x i32> %180, <2 x i32> poison, <2 x i32> zeroinitializer
  %182 = sub nsw <2 x i32> %179, %181
  store <2 x i32> %182, ptr %178, align 4, !tbaa !17
  %183 = call fastcc ptr @decAddOp(ptr noundef nonnull %99, ptr noundef nonnull %6, ptr noundef nonnull %99, ptr noundef nonnull %5, i8 noundef zeroext 0, ptr noundef nonnull %9) #18
  br label %184

184:                                              ; preds = %173, %167
  %185 = load i32, ptr %125, align 4, !tbaa !15
  %186 = add nsw i32 %185, %144
  store i32 %186, ptr %125, align 4, !tbaa !15
  %187 = call ptr @decNumberCopy(ptr noundef nonnull %100, ptr noundef nonnull %99) #18
  %188 = call fastcc ptr @decTrim(ptr noundef nonnull %100, ptr noundef nonnull %2, i8 noundef zeroext 1, i8 noundef zeroext 1, ptr noundef nonnull %11) #18
  %189 = load i32, ptr %100, align 4, !tbaa !14
  %190 = shl nsw i32 %189, 1
  %191 = add nsw i32 %190, -1
  %192 = icmp sgt i32 %191, %51
  br i1 %192, label %193, label %195

193:                                              ; preds = %184
  %194 = or i32 %147, 2080
  store i32 %194, ptr %8, align 4, !tbaa !17
  br label %267

195:                                              ; preds = %184
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %16) #20
  store i32 0, ptr %16, align 4, !tbaa !17
  %196 = call fastcc ptr @decMultiplyOp(ptr noundef nonnull %100, ptr noundef nonnull %100, ptr noundef nonnull %100, ptr noundef nonnull %4, ptr noundef nonnull %16) #18
  %197 = load i32, ptr %16, align 4, !tbaa !17
  %198 = and i32 %197, 512
  %199 = icmp eq i32 %198, 0
  br i1 %199, label %202, label %200

200:                                              ; preds = %195
  %201 = or i32 %147, 2080
  store i32 %201, ptr %8, align 4, !tbaa !17
  br label %265

202:                                              ; preds = %195
  %203 = call fastcc ptr @decCompareOp(ptr noundef nonnull %15, ptr noundef nonnull %100, ptr noundef nonnull %1, ptr noundef nonnull %4, i8 noundef zeroext 1, ptr noundef nonnull %16) #18
  %204 = load i16, ptr %126, align 2, !tbaa !10
  %205 = icmp eq i16 %204, 0
  %206 = load i32, ptr %15, align 4
  %207 = icmp eq i32 %206, 1
  %208 = select i1 %205, i1 %207, i1 false
  br i1 %208, label %209, label %213

209:                                              ; preds = %202
  %210 = load i8, ptr %111, align 4, !tbaa !5
  %211 = and i8 %210, 112
  %212 = icmp eq i8 %211, 0
  br i1 %212, label %215, label %213

213:                                              ; preds = %209, %202
  %214 = or i32 %147, 2080
  store i32 %214, ptr %8, align 4, !tbaa !17
  br label %265

215:                                              ; preds = %209
  %216 = load i32, ptr %125, align 4, !tbaa !15
  %217 = sub nsw i32 %34, %216
  %218 = icmp slt i32 %217, 0
  br i1 %218, label %219, label %221

219:                                              ; preds = %215
  %220 = or disjoint i32 %153, 2048
  store i32 %220, ptr %8, align 4, !tbaa !17
  br label %265

221:                                              ; preds = %215
  %222 = getelementptr inbounds %struct.decContext, ptr %2, i64 0, i32 1
  %223 = load i32, ptr %222, align 4, !tbaa !33
  %224 = load i32, ptr %2, align 4, !tbaa !27
  %225 = add i32 %223, 1
  %226 = add i32 %216, %224
  %227 = sub i32 %225, %226
  %228 = icmp sgt i32 %217, %227
  br i1 %228, label %229, label %235

229:                                              ; preds = %221
  %230 = getelementptr inbounds %struct.decContext, ptr %2, i64 0, i32 6
  %231 = load i8, ptr %230, align 4, !tbaa !29
  %232 = icmp eq i8 %231, 0
  br i1 %232, label %235, label %233

233:                                              ; preds = %229
  %234 = or i32 %153, 1024
  store i32 %234, ptr %8, align 4, !tbaa !17
  br label %235

235:                                              ; preds = %233, %229, %221
  %236 = phi i32 [ %234, %233 ], [ %153, %229 ], [ %153, %221 ]
  %237 = phi i32 [ %227, %233 ], [ %217, %229 ], [ %217, %221 ]
  %238 = load i32, ptr %11, align 4, !tbaa !17
  %239 = icmp slt i32 %238, %237
  br i1 %239, label %240, label %242

240:                                              ; preds = %235
  %241 = or i32 %236, 1024
  store i32 %241, ptr %8, align 4, !tbaa !17
  br label %242

242:                                              ; preds = %240, %235
  %243 = phi i32 [ %241, %240 ], [ %236, %235 ]
  %244 = phi i32 [ %238, %240 ], [ %237, %235 ]
  %245 = icmp sgt i32 %244, 0
  br i1 %245, label %246, label %265

246:                                              ; preds = %242
  %247 = load i32, ptr %99, align 4, !tbaa !14
  %248 = icmp slt i32 %247, 50
  br i1 %248, label %249, label %254

249:                                              ; preds = %246
  %250 = sext i32 %247 to i64
  %251 = getelementptr inbounds [50 x i8], ptr @d2utable, i64 0, i64 %250
  %252 = load i8, ptr %251, align 1, !tbaa !20
  %253 = zext i8 %252 to i32
  br label %257

254:                                              ; preds = %246
  %255 = add nuw nsw i32 %247, 2
  %256 = udiv i32 %255, 3
  br label %257

257:                                              ; preds = %254, %249
  %258 = phi i32 [ %253, %249 ], [ %256, %254 ]
  %259 = call fastcc i32 @decShiftToLeast(ptr noundef nonnull %127, i32 noundef %258, i32 noundef %244) #18
  %260 = load i32, ptr %125, align 4, !tbaa !15
  %261 = add nsw i32 %260, %244
  store i32 %261, ptr %125, align 4, !tbaa !15
  %262 = load i32, ptr %99, align 4, !tbaa !14
  %263 = sub nsw i32 %262, %244
  store i32 %263, ptr %99, align 4, !tbaa !14
  %264 = load i32, ptr %8, align 4, !tbaa !17
  br label %265

265:                                              ; preds = %219, %257, %242, %213, %200
  %266 = phi i32 [ %220, %219 ], [ %264, %257 ], [ %243, %242 ], [ %214, %213 ], [ %201, %200 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %16) #20
  br label %267

267:                                              ; preds = %265, %193
  %268 = phi i32 [ %266, %265 ], [ %194, %193 ]
  %269 = and i32 %268, 8192
  %270 = icmp eq i32 %269, 0
  br i1 %270, label %287, label %271

271:                                              ; preds = %267
  %272 = load i32, ptr %32, align 4, !tbaa !15
  %273 = load i32, ptr %1, align 4, !tbaa !14
  %274 = add nsw i32 %273, %272
  %275 = getelementptr inbounds %struct.decContext, ptr %2, i64 0, i32 2
  %276 = load i32, ptr %275, align 4, !tbaa !32
  %277 = shl nsw i32 %276, 1
  %278 = icmp sgt i32 %274, %277
  %279 = and i32 %268, -12289
  %280 = select i1 %278, i32 %279, i32 %268
  %281 = and i32 %280, 32
  %282 = icmp eq i32 %281, 0
  %283 = or i1 %278, %282
  br i1 %283, label %284, label %287

284:                                              ; preds = %271
  %285 = and i32 %280, -8225
  %286 = select i1 %282, i32 %285, i32 %280
  store i32 %286, ptr %8, align 4, !tbaa !17
  br label %287

287:                                              ; preds = %284, %271, %267
  %288 = call ptr @decNumberCopy(ptr noundef %0, ptr noundef nonnull %99) #18
  br label %289

289:                                              ; preds = %287, %150, %95
  %290 = phi ptr [ %90, %95 ], [ %97, %150 ], [ %97, %287 ]
  %291 = phi ptr [ %91, %95 ], [ %98, %150 ], [ %98, %287 ]
  %292 = icmp eq ptr %73, null
  br i1 %292, label %294, label %293

293:                                              ; preds = %289
  call void @free(ptr noundef nonnull %73) #19
  br label %294

294:                                              ; preds = %293, %289
  %295 = icmp eq ptr %290, null
  br i1 %295, label %297, label %296

296:                                              ; preds = %294
  call void @free(ptr noundef nonnull %290) #19
  br label %297

297:                                              ; preds = %296, %294
  %298 = icmp eq ptr %291, null
  br i1 %298, label %300, label %299

299:                                              ; preds = %297
  call void @free(ptr noundef nonnull %291) #19
  br label %300

300:                                              ; preds = %41, %29, %27, %299, %297
  %301 = load i32, ptr %8, align 4, !tbaa !17
  %302 = icmp eq i32 %301, 0
  br i1 %302, label %305, label %303

303:                                              ; preds = %64, %44, %25, %300
  %304 = phi i32 [ %301, %300 ], [ 128, %25 ], [ 128, %44 ], [ 16, %64 ]
  call fastcc void @decStatus(ptr noundef %0, i32 noundef %304, ptr noundef %2) #18
  br label %305

305:                                              ; preds = %303, %300
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %15) #20
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %14) #20
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %13) #20
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %12) #20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #20
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #20
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %4) #20
  ret ptr %0
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @decNumberSubtract(ptr noundef returned %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #4 {
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #20
  store i32 0, ptr %5, align 4, !tbaa !17
  %6 = call fastcc ptr @decAddOp(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i8 noundef zeroext -128, ptr noundef nonnull %5) #18
  %7 = load i32, ptr %5, align 4, !tbaa !17
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %4
  tail call fastcc void @decStatus(ptr noundef %0, i32 noundef %7, ptr noundef %3) #18
  br label %10

10:                                               ; preds = %9, %4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #20
  ret ptr %0
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @decNumberToIntegralExact(ptr noundef returned %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #4 {
  %4 = alloca %struct.decNumber, align 4
  %5 = alloca %struct.decContext, align 4
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #20
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %5) #20
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #20
  store i32 0, ptr %6, align 4, !tbaa !17
  %7 = getelementptr inbounds %struct.decNumber, ptr %1, i64 0, i32 2
  %8 = load i8, ptr %7, align 4, !tbaa !5
  %9 = zext i8 %8 to i32
  %10 = and i32 %9, 112
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %20, label %12

12:                                               ; preds = %3
  %13 = and i32 %9, 64
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %12
  %16 = tail call ptr @decNumberCopy(ptr noundef %0, ptr noundef nonnull %1) #18
  br label %37

17:                                               ; preds = %12
  %18 = call fastcc ptr @decNaNs(ptr noundef %0, ptr noundef nonnull %1, ptr noundef null, ptr noundef %2, ptr noundef nonnull %6) #18
  %19 = load i32, ptr %6, align 4, !tbaa !17
  br label %33

20:                                               ; preds = %3
  %21 = getelementptr inbounds %struct.decNumber, ptr %1, i64 0, i32 1
  %22 = load i32, ptr %21, align 4, !tbaa !15
  %23 = icmp sgt i32 %22, -1
  br i1 %23, label %24, label %26

24:                                               ; preds = %20
  %25 = tail call ptr @decNumberCopy(ptr noundef %0, ptr noundef nonnull %1) #18
  br label %37

26:                                               ; preds = %20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %5, ptr noundef nonnull align 4 dereferenceable(28) %2, i64 28, i1 false), !tbaa.struct !49
  %27 = load i32, ptr %1, align 4, !tbaa !14
  store i32 %27, ptr %5, align 4, !tbaa !27
  %28 = getelementptr inbounds %struct.decContext, ptr %5, i64 0, i32 4
  store i32 0, ptr %28, align 4, !tbaa !76
  %29 = call ptr @decNumberZero(ptr noundef nonnull %4) #18
  %30 = call ptr @decNumberQuantize(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %4, ptr noundef nonnull %5) #18
  %31 = getelementptr inbounds %struct.decContext, ptr %5, i64 0, i32 5
  %32 = load i32, ptr %31, align 4, !tbaa !77
  br label %33

33:                                               ; preds = %17, %26
  %34 = phi i32 [ %32, %26 ], [ %19, %17 ]
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %33
  call fastcc void @decStatus(ptr noundef %0, i32 noundef %34, ptr noundef %2) #18
  br label %37

37:                                               ; preds = %15, %33, %36, %24
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #20
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #20
  ret ptr %0
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @decNumberToIntegralValue(ptr noundef returned %0, ptr noundef %1, ptr nocapture noundef %2) local_unnamed_addr #4 {
  %4 = alloca %struct.decContext, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %4) #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %4, ptr noundef nonnull align 4 dereferenceable(28) %2, i64 28, i1 false), !tbaa.struct !49
  %5 = getelementptr inbounds %struct.decContext, ptr %4, i64 0, i32 4
  store i32 0, ptr %5, align 4, !tbaa !76
  %6 = call ptr @decNumberToIntegralExact(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %4) #18
  %7 = getelementptr inbounds %struct.decContext, ptr %4, i64 0, i32 5
  %8 = load i32, ptr %7, align 4, !tbaa !77
  %9 = and i32 %8, 128
  %10 = getelementptr inbounds %struct.decContext, ptr %2, i64 0, i32 5
  %11 = load i32, ptr %10, align 4, !tbaa !77
  %12 = or i32 %11, %9
  store i32 %12, ptr %10, align 4, !tbaa !77
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %4) #20
  ret ptr %0
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @decNumberXor(ptr noundef returned %0, ptr noundef readonly %1, ptr noundef readonly %2, ptr noundef %3) local_unnamed_addr #4 {
  %5 = getelementptr inbounds %struct.decNumber, ptr %1, i64 0, i32 1
  %6 = load i32, ptr %5, align 4, !tbaa !15
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %20

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.decNumber, ptr %1, i64 0, i32 2
  %10 = load i8, ptr %9, align 4, !tbaa !5
  %11 = icmp ult i8 %10, 16
  br i1 %11, label %12, label %20

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.decNumber, ptr %2, i64 0, i32 1
  %14 = load i32, ptr %13, align 4, !tbaa !15
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.decNumber, ptr %2, i64 0, i32 2
  %18 = load i8, ptr %17, align 4, !tbaa !5
  %19 = icmp ult i8 %18, 16
  br i1 %19, label %21, label %20

20:                                               ; preds = %16, %12, %8, %4
  tail call fastcc void @decStatus(ptr noundef %0, i32 noundef 128, ptr noundef %3) #18
  br label %140

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.decNumber, ptr %1, i64 0, i32 3
  %23 = getelementptr inbounds %struct.decNumber, ptr %2, i64 0, i32 3
  %24 = getelementptr inbounds i8, ptr %0, i64 10
  %25 = load i32, ptr %1, align 4, !tbaa !14
  %26 = icmp slt i32 %25, 50
  br i1 %26, label %27, label %32

27:                                               ; preds = %21
  %28 = sext i32 %25 to i64
  %29 = getelementptr inbounds [50 x i8], ptr @d2utable, i64 0, i64 %28
  %30 = load i8, ptr %29, align 1, !tbaa !20
  %31 = zext i8 %30 to i32
  br label %35

32:                                               ; preds = %21
  %33 = add nuw nsw i32 %25, 2
  %34 = udiv i32 %33, 3
  br label %35

35:                                               ; preds = %32, %27
  %36 = phi i32 [ %31, %27 ], [ %34, %32 ]
  %37 = zext nneg i32 %36 to i64
  %38 = getelementptr inbounds i16, ptr %22, i64 %37
  %39 = getelementptr inbounds i16, ptr %38, i64 -1
  %40 = load i32, ptr %2, align 4, !tbaa !14
  %41 = icmp slt i32 %40, 50
  br i1 %41, label %42, label %47

42:                                               ; preds = %35
  %43 = sext i32 %40 to i64
  %44 = getelementptr inbounds [50 x i8], ptr @d2utable, i64 0, i64 %43
  %45 = load i8, ptr %44, align 1, !tbaa !20
  %46 = zext i8 %45 to i32
  br label %50

47:                                               ; preds = %35
  %48 = add nuw nsw i32 %40, 2
  %49 = udiv i32 %48, 3
  br label %50

50:                                               ; preds = %47, %42
  %51 = phi i32 [ %46, %42 ], [ %49, %47 ]
  %52 = zext nneg i32 %51 to i64
  %53 = getelementptr inbounds i16, ptr %23, i64 %52
  %54 = getelementptr inbounds i16, ptr %53, i64 -1
  %55 = load i32, ptr %3, align 4, !tbaa !27
  %56 = icmp slt i32 %55, 50
  br i1 %56, label %62, label %57

57:                                               ; preds = %50
  %58 = add nuw nsw i32 %55, 2
  %59 = udiv i32 %58, 3
  %60 = shl nuw nsw i32 %59, 1
  %61 = zext nneg i32 %60 to i64
  br label %70

62:                                               ; preds = %50
  %63 = sext i32 %55 to i64
  %64 = getelementptr inbounds [50 x i8], ptr @d2utable, i64 0, i64 %63
  %65 = load i8, ptr %64, align 1, !tbaa !20
  %66 = zext i8 %65 to i64
  %67 = zext i8 %65 to i32
  %68 = shl nuw nsw i64 %66, 1
  %69 = icmp eq i32 %55, 0
  br i1 %69, label %130, label %70

70:                                               ; preds = %57, %62
  %71 = phi i64 [ %61, %57 ], [ %68, %62 ]
  %72 = phi i32 [ %59, %57 ], [ %67, %62 ]
  %73 = getelementptr i8, ptr %0, i64 %71
  %74 = getelementptr i8, ptr %73, i64 8
  %75 = mul nsw i32 %72, -3
  %76 = add i32 %55, 2
  %77 = add i32 %76, %75
  %78 = zext i32 %77 to i64
  br label %79

79:                                               ; preds = %70, %125
  %80 = phi ptr [ %22, %70 ], [ %126, %125 ]
  %81 = phi ptr [ %23, %70 ], [ %127, %125 ]
  %82 = phi ptr [ %24, %70 ], [ %128, %125 ]
  %83 = icmp ugt ptr %80, %39
  br i1 %83, label %86, label %84

84:                                               ; preds = %79
  %85 = load i16, ptr %80, align 2, !tbaa !10
  br label %86

86:                                               ; preds = %79, %84
  %87 = phi i16 [ %85, %84 ], [ 0, %79 ]
  %88 = icmp ugt ptr %81, %54
  br i1 %88, label %91, label %89

89:                                               ; preds = %86
  %90 = load i16, ptr %81, align 2, !tbaa !10
  br label %91

91:                                               ; preds = %86, %89
  %92 = phi i16 [ %90, %89 ], [ 0, %86 ]
  store i16 0, ptr %82, align 2, !tbaa !10
  %93 = or i16 %92, %87
  %94 = icmp eq i16 %93, 0
  br i1 %94, label %125, label %95

95:                                               ; preds = %91
  %96 = icmp ne ptr %82, %74
  br label %97

97:                                               ; preds = %118, %95
  %98 = phi i16 [ %111, %118 ], [ 0, %95 ]
  %99 = phi i64 [ %121, %118 ], [ 0, %95 ]
  %100 = phi i16 [ %115, %118 ], [ %92, %95 ]
  %101 = phi i16 [ %113, %118 ], [ %87, %95 ]
  %102 = xor i16 %100, %101
  %103 = and i16 %102, 1
  %104 = icmp eq i16 %103, 0
  br i1 %104, label %110, label %105

105:                                              ; preds = %97
  %106 = getelementptr inbounds [10 x i32], ptr @DECPOWERS, i64 0, i64 %99
  %107 = load i32, ptr %106, align 4, !tbaa !17
  %108 = trunc i32 %107 to i16
  %109 = add i16 %98, %108
  store i16 %109, ptr %82, align 2, !tbaa !10
  br label %110

110:                                              ; preds = %105, %97
  %111 = phi i16 [ %109, %105 ], [ %98, %97 ]
  %112 = urem i16 %101, 10
  %113 = udiv i16 %101, 10
  %114 = urem i16 %100, 10
  %115 = udiv i16 %100, 10
  %116 = or i16 %114, %112
  %117 = icmp ugt i16 %116, 1
  br i1 %117, label %124, label %118

118:                                              ; preds = %110
  %119 = icmp ne i64 %99, %78
  %120 = select i1 %96, i1 true, i1 %119
  %121 = add nuw nsw i64 %99, 1
  %122 = icmp ult i64 %99, 2
  %123 = select i1 %120, i1 %122, i1 false
  br i1 %123, label %97, label %125, !llvm.loop !78

124:                                              ; preds = %110
  tail call fastcc void @decStatus(ptr noundef %0, i32 noundef 128, ptr noundef nonnull %3) #18
  br label %140

125:                                              ; preds = %118, %91
  %126 = getelementptr inbounds i16, ptr %80, i64 1
  %127 = getelementptr inbounds i16, ptr %81, i64 1
  %128 = getelementptr inbounds i16, ptr %82, i64 1
  %129 = icmp ugt ptr %128, %74
  br i1 %129, label %130, label %79, !llvm.loop !79

130:                                              ; preds = %125, %62
  %131 = phi ptr [ %24, %62 ], [ %128, %125 ]
  %132 = ptrtoint ptr %131 to i64
  %133 = ptrtoint ptr %24 to i64
  %134 = sub i64 %132, %133
  %135 = lshr exact i64 %134, 1
  %136 = trunc i64 %135 to i32
  %137 = tail call fastcc i32 @decGetDigits(ptr noundef nonnull %24, i32 noundef %136) #18
  store i32 %137, ptr %0, align 4, !tbaa !14
  %138 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 1
  store i32 0, ptr %138, align 4, !tbaa !15
  %139 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 2
  store i8 0, ptr %139, align 4, !tbaa !5
  br label %140

140:                                              ; preds = %124, %130, %20
  ret ptr %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local i32 @decNumberClass(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #11 {
  %3 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 2
  %4 = load i8, ptr %3, align 4, !tbaa !5
  %5 = zext i8 %4 to i32
  %6 = and i32 %5, 112
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %17, label %8

8:                                                ; preds = %2
  %9 = and i32 %5, 32
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %39

11:                                               ; preds = %8
  %12 = and i32 %5, 16
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %39

14:                                               ; preds = %11
  %15 = icmp sgt i8 %4, -1
  %16 = select i1 %15, i32 9, i32 2
  br label %39

17:                                               ; preds = %2
  %18 = tail call i32 @decNumberIsNormal(ptr noundef nonnull %0, ptr noundef %1) #18, !range !48
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %17
  %21 = icmp sgt i8 %4, -1
  %22 = select i1 %21, i32 8, i32 3
  br label %39

23:                                               ; preds = %17
  %24 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 3
  %25 = load i16, ptr %24, align 2, !tbaa !10
  %26 = icmp eq i16 %25, 0
  br i1 %26, label %27, label %36

27:                                               ; preds = %23
  %28 = load i32, ptr %0, align 4, !tbaa !14
  %29 = icmp eq i32 %28, 1
  %30 = and i8 %4, 112
  %31 = icmp eq i8 %30, 0
  %32 = and i1 %31, %29
  br i1 %32, label %33, label %36

33:                                               ; preds = %27
  %34 = icmp sgt i8 %4, -1
  %35 = select i1 %34, i32 6, i32 5
  br label %39

36:                                               ; preds = %27, %23
  %37 = icmp sgt i8 %4, -1
  %38 = select i1 %37, i32 7, i32 4
  br label %39

39:                                               ; preds = %36, %33, %20, %14, %11, %8
  %40 = phi i32 [ 1, %8 ], [ 0, %11 ], [ %16, %14 ], [ %22, %20 ], [ %35, %33 ], [ %38, %36 ]
  ret i32 %40
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @decNumberClassToString(i32 noundef %0) local_unnamed_addr #14 {
  %2 = icmp ult i32 %0, 10
  br i1 %2, label %3, label %7

3:                                                ; preds = %1
  %4 = zext nneg i32 %0 to i64
  %5 = shl i64 %4, 2
  %6 = call ptr @llvm.load.relative.i64(ptr @reltable.decNumberClassToString, i64 %5)
  br label %7

7:                                                ; preds = %1, %3
  %8 = phi ptr [ %6, %3 ], [ @.str.14, %1 ]
  ret ptr %8
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local noundef ptr @decNumberCopyNegate(ptr noundef returned %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @decNumberCopy(ptr noundef %0, ptr noundef %1) #18
  %4 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 2
  %5 = load i8, ptr %4, align 4, !tbaa !5
  %6 = xor i8 %5, -128
  store i8 %6, ptr %4, align 4, !tbaa !5
  ret ptr %0
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local noundef ptr @decNumberGetBCD(ptr nocapture noundef readonly %0, ptr noundef returned writeonly %1) local_unnamed_addr #0 {
  %3 = load i32, ptr %0, align 4, !tbaa !14
  %4 = sext i32 %3 to i64
  %5 = getelementptr inbounds i8, ptr %1, i64 %4
  %6 = getelementptr inbounds i8, ptr %5, i64 -1
  %7 = icmp ult ptr %6, %1
  br i1 %7, label %32, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 3
  %10 = load i16, ptr %9, align 2, !tbaa !10
  %11 = zext i16 %10 to i32
  br label %12

12:                                               ; preds = %8, %26
  %13 = phi ptr [ %30, %26 ], [ %6, %8 ]
  %14 = phi i32 [ %29, %26 ], [ 3, %8 ]
  %15 = phi i32 [ %28, %26 ], [ %11, %8 ]
  %16 = phi ptr [ %27, %26 ], [ %9, %8 ]
  %17 = urem i32 %15, 10
  %18 = trunc i32 %17 to i8
  store i8 %18, ptr %13, align 1, !tbaa !20
  %19 = udiv i32 %15, 10
  %20 = add nsw i32 %14, -1
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %12
  %23 = getelementptr inbounds i16, ptr %16, i64 1
  %24 = load i16, ptr %23, align 2, !tbaa !10
  %25 = zext i16 %24 to i32
  br label %26

26:                                               ; preds = %12, %22
  %27 = phi ptr [ %16, %12 ], [ %23, %22 ]
  %28 = phi i32 [ %19, %12 ], [ %25, %22 ]
  %29 = phi i32 [ %20, %12 ], [ 3, %22 ]
  %30 = getelementptr inbounds i8, ptr %13, i64 -1
  %31 = icmp ult ptr %30, %1
  br i1 %31, label %32, label %12, !llvm.loop !80

32:                                               ; preds = %26, %2
  ret ptr %1
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local noundef ptr @decNumberSetBCD(ptr noundef returned %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #13 {
  %4 = load i32, ptr %0, align 4, !tbaa !14
  %5 = icmp slt i32 %4, 50
  br i1 %5, label %6, label %11

6:                                                ; preds = %3
  %7 = sext i32 %4 to i64
  %8 = getelementptr inbounds [50 x i8], ptr @d2utable, i64 0, i64 %7
  %9 = load i8, ptr %8, align 1, !tbaa !20
  %10 = zext i8 %9 to i32
  br label %14

11:                                               ; preds = %3
  %12 = add nuw nsw i32 %4, 2
  %13 = udiv i32 %12, 3
  br label %14

14:                                               ; preds = %11, %6
  %15 = phi i32 [ %10, %6 ], [ %13, %11 ]
  %16 = shl nuw nsw i32 %15, 1
  %17 = add nuw nsw i32 %16, 8
  %18 = zext nneg i32 %17 to i64
  %19 = icmp ult i32 %2, 50
  br i1 %19, label %20, label %25

20:                                               ; preds = %14
  %21 = zext nneg i32 %2 to i64
  %22 = getelementptr inbounds [50 x i8], ptr @d2utable, i64 0, i64 %21
  %23 = load i8, ptr %22, align 1, !tbaa !20
  %24 = zext i8 %23 to i32
  br label %28

25:                                               ; preds = %14
  %26 = add i32 %2, 2
  %27 = udiv i32 %26, 3
  br label %28

28:                                               ; preds = %25, %20
  %29 = phi i32 [ %24, %20 ], [ %27, %25 ]
  %30 = icmp eq i32 %15, 0
  br i1 %30, label %56, label %31

31:                                               ; preds = %28
  %32 = add i32 %2, 3
  %33 = mul i32 %29, -3
  %34 = add i32 %32, %33
  br label %35

35:                                               ; preds = %31, %52
  %36 = phi i32 [ 3, %52 ], [ %34, %31 ]
  %37 = phi ptr [ %53, %52 ], [ %1, %31 ]
  %38 = phi i64 [ %54, %52 ], [ %18, %31 ]
  %39 = getelementptr inbounds i8, ptr %0, i64 %38
  store i16 0, ptr %39, align 2, !tbaa !10
  %40 = icmp sgt i32 %36, 0
  br i1 %40, label %41, label %52

41:                                               ; preds = %35, %41
  %42 = phi i16 [ %48, %41 ], [ 0, %35 ]
  %43 = phi i32 [ %50, %41 ], [ %36, %35 ]
  %44 = phi ptr [ %49, %41 ], [ %37, %35 ]
  %45 = mul i16 %42, 10
  %46 = load i8, ptr %44, align 1, !tbaa !20
  %47 = zext i8 %46 to i16
  %48 = add i16 %45, %47
  store i16 %48, ptr %39, align 2, !tbaa !10
  %49 = getelementptr inbounds i8, ptr %44, i64 1
  %50 = add nsw i32 %43, -1
  %51 = icmp ugt i32 %43, 1
  br i1 %51, label %41, label %52, !llvm.loop !81

52:                                               ; preds = %41, %35
  %53 = phi ptr [ %37, %35 ], [ %49, %41 ]
  %54 = add nsw i64 %38, -2
  %55 = icmp slt i64 %38, 12
  br i1 %55, label %56, label %35, !llvm.loop !82

56:                                               ; preds = %52, %28
  store i32 %2, ptr %0, align 4, !tbaa !14
  ret ptr %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local i32 @decNumberIsSubnormal(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #11 {
  %3 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 2
  %4 = load i8, ptr %3, align 4, !tbaa !5
  %5 = and i8 %4, 112
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %22

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 3
  %9 = load i16, ptr %8, align 2, !tbaa !10
  %10 = icmp eq i16 %9, 0
  %11 = load i32, ptr %0, align 4, !tbaa !14
  %12 = icmp eq i32 %11, 1
  %13 = select i1 %10, i1 %12, i1 false
  br i1 %13, label %22, label %14

14:                                               ; preds = %7
  %15 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 1
  %16 = load i32, ptr %15, align 4, !tbaa !15
  %17 = add nsw i32 %11, %16
  %18 = getelementptr inbounds %struct.decContext, ptr %1, i64 0, i32 2
  %19 = load i32, ptr %18, align 4, !tbaa !32
  %20 = icmp sle i32 %17, %19
  %21 = zext i1 %20 to i32
  br label %22

22:                                               ; preds = %7, %14, %2
  %23 = phi i32 [ 0, %2 ], [ %21, %14 ], [ 0, %7 ]
  ret i32 %23
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @decNumberTrim(ptr noundef returned %0) local_unnamed_addr #4 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.decContext, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #20
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %3) #20
  %4 = call ptr @decContextDefault(ptr noundef nonnull %3, i32 noundef 0) #19
  %5 = call fastcc ptr @decTrim(ptr noundef %0, ptr noundef nonnull %3, i8 noundef zeroext 0, i8 noundef zeroext 1, ptr noundef nonnull %2) #18
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %3) #20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #20
  ret ptr %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @decNumberVersion() local_unnamed_addr #14 {
  ret ptr @.str.15
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc i32 @decUnitAddSub(ptr noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3, i32 noundef %4, ptr noundef %5, i32 noundef %6) unnamed_addr #0 {
  %8 = sext i32 %1 to i64
  %9 = getelementptr inbounds i16, ptr %5, i64 %8
  %10 = sext i32 %3 to i64
  %11 = getelementptr inbounds i16, ptr %5, i64 %10
  %12 = icmp eq i32 %4, 0
  br i1 %12, label %35, label %13

13:                                               ; preds = %7
  %14 = sext i32 %4 to i64
  %15 = getelementptr inbounds i16, ptr %11, i64 %14
  %16 = icmp ne ptr %0, %5
  %17 = icmp sgt i32 %4, %1
  %18 = or i1 %17, %16
  %19 = getelementptr inbounds i16, ptr %5, i64 %14
  br i1 %18, label %20, label %35

20:                                               ; preds = %13
  %21 = icmp sgt i32 %4, 0
  br i1 %21, label %22, label %35

22:                                               ; preds = %20
  %23 = getelementptr inbounds i16, ptr %0, i64 %8
  br label %24

24:                                               ; preds = %22, %30
  %25 = phi ptr [ %0, %22 ], [ %32, %30 ]
  %26 = phi ptr [ %5, %22 ], [ %33, %30 ]
  %27 = icmp ult ptr %25, %23
  br i1 %27, label %28, label %30

28:                                               ; preds = %24
  %29 = load i16, ptr %25, align 2, !tbaa !10
  br label %30

30:                                               ; preds = %24, %28
  %31 = phi i16 [ %29, %28 ], [ 0, %24 ]
  store i16 %31, ptr %26, align 2, !tbaa !10
  %32 = getelementptr inbounds i16, ptr %25, i64 1
  %33 = getelementptr inbounds i16, ptr %26, i64 1
  %34 = icmp ult ptr %33, %19
  br i1 %34, label %24, label %35, !llvm.loop !83

35:                                               ; preds = %30, %13, %20, %7
  %36 = phi ptr [ %5, %7 ], [ %5, %20 ], [ %19, %13 ], [ %33, %30 ]
  %37 = phi ptr [ %0, %7 ], [ %0, %20 ], [ %19, %13 ], [ %32, %30 ]
  %38 = phi ptr [ %11, %7 ], [ %15, %20 ], [ %15, %13 ], [ %15, %30 ]
  %39 = icmp ugt ptr %38, %9
  %40 = select i1 %39, ptr %9, ptr %38
  %41 = select i1 %39, ptr %38, ptr %9
  %42 = icmp ult ptr %36, %40
  br i1 %42, label %43, label %95

43:                                               ; preds = %35, %91
  %44 = phi i32 [ %92, %91 ], [ 0, %35 ]
  %45 = phi ptr [ %51, %91 ], [ %37, %35 ]
  %46 = phi ptr [ %56, %91 ], [ %2, %35 ]
  %47 = phi ptr [ %93, %91 ], [ %36, %35 ]
  %48 = load i16, ptr %45, align 2, !tbaa !10
  %49 = zext i16 %48 to i32
  %50 = add nsw i32 %44, %49
  %51 = getelementptr inbounds i16, ptr %45, i64 1
  %52 = load i16, ptr %46, align 2, !tbaa !10
  %53 = zext i16 %52 to i32
  %54 = mul nsw i32 %53, %6
  %55 = add nsw i32 %50, %54
  %56 = getelementptr inbounds i16, ptr %46, i64 1
  %57 = icmp ult i32 %55, 1000
  br i1 %57, label %58, label %60

58:                                               ; preds = %43
  %59 = trunc i32 %55 to i16
  br label %88

60:                                               ; preds = %43
  %61 = icmp sgt i32 %55, -1
  br i1 %61, label %62, label %74

62:                                               ; preds = %60
  %63 = lshr i32 %55, 3
  %64 = mul i32 %63, 16777
  %65 = lshr i32 %64, 21
  %66 = mul nuw nsw i32 %65, 64536
  %67 = add nuw i32 %66, %55
  %68 = trunc i32 %67 to i16
  store i16 %68, ptr %47, align 2, !tbaa !10
  %69 = and i32 %67, 65528
  %70 = icmp ult i32 %69, 1000
  br i1 %70, label %91, label %71

71:                                               ; preds = %62
  %72 = add nuw nsw i32 %65, 1
  %73 = add i16 %68, -1000
  br label %88

74:                                               ; preds = %60
  %75 = add nsw i32 %55, 1000000
  %76 = lshr i32 %75, 3
  %77 = mul i32 %76, 16777
  %78 = lshr i32 %77, 21
  %79 = mul nuw nsw i32 %78, 64536
  %80 = add nsw i32 %79, %75
  %81 = trunc i32 %80 to i16
  store i16 %81, ptr %47, align 2, !tbaa !10
  %82 = add nsw i32 %78, -1000
  %83 = and i32 %80, 65528
  %84 = icmp ult i32 %83, 1000
  br i1 %84, label %91, label %85

85:                                               ; preds = %74
  %86 = add nsw i32 %78, -999
  %87 = add i16 %81, -1000
  br label %88

88:                                               ; preds = %58, %71, %85
  %89 = phi i16 [ %87, %85 ], [ %73, %71 ], [ %59, %58 ]
  %90 = phi i32 [ %86, %85 ], [ %72, %71 ], [ 0, %58 ]
  store i16 %89, ptr %47, align 2, !tbaa !10
  br label %91

91:                                               ; preds = %88, %74, %62
  %92 = phi i32 [ %65, %62 ], [ %82, %74 ], [ %90, %88 ]
  %93 = getelementptr inbounds i16, ptr %47, i64 1
  %94 = icmp ult ptr %93, %40
  br i1 %94, label %43, label %95, !llvm.loop !84

95:                                               ; preds = %91, %35
  %96 = phi ptr [ %36, %35 ], [ %93, %91 ]
  %97 = phi ptr [ %2, %35 ], [ %56, %91 ]
  %98 = phi ptr [ %37, %35 ], [ %51, %91 ]
  %99 = phi i32 [ 0, %35 ], [ %92, %91 ]
  %100 = icmp ult ptr %96, %41
  br i1 %100, label %101, label %161

101:                                              ; preds = %95
  %102 = getelementptr inbounds i16, ptr %0, i64 %8
  br label %103

103:                                              ; preds = %101, %157
  %104 = phi i32 [ %99, %101 ], [ %158, %157 ]
  %105 = phi ptr [ %98, %101 ], [ %120, %157 ]
  %106 = phi ptr [ %97, %101 ], [ %119, %157 ]
  %107 = phi ptr [ %96, %101 ], [ %159, %157 ]
  %108 = icmp ult ptr %105, %102
  br i1 %108, label %109, label %113

109:                                              ; preds = %103
  %110 = load i16, ptr %105, align 2, !tbaa !10
  %111 = zext i16 %110 to i32
  %112 = getelementptr inbounds i16, ptr %105, i64 1
  br label %118

113:                                              ; preds = %103
  %114 = load i16, ptr %106, align 2, !tbaa !10
  %115 = zext i16 %114 to i32
  %116 = mul nsw i32 %115, %6
  %117 = getelementptr inbounds i16, ptr %106, i64 1
  br label %118

118:                                              ; preds = %113, %109
  %119 = phi ptr [ %106, %109 ], [ %117, %113 ]
  %120 = phi ptr [ %112, %109 ], [ %105, %113 ]
  %121 = phi i32 [ %111, %109 ], [ %116, %113 ]
  %122 = add nsw i32 %121, %104
  %123 = icmp ult i32 %122, 1000
  br i1 %123, label %124, label %126

124:                                              ; preds = %118
  %125 = trunc i32 %122 to i16
  br label %154

126:                                              ; preds = %118
  %127 = icmp sgt i32 %122, -1
  br i1 %127, label %128, label %140

128:                                              ; preds = %126
  %129 = lshr i32 %122, 3
  %130 = mul i32 %129, 16777
  %131 = lshr i32 %130, 21
  %132 = mul nuw nsw i32 %131, 64536
  %133 = add nuw i32 %132, %122
  %134 = trunc i32 %133 to i16
  store i16 %134, ptr %107, align 2, !tbaa !10
  %135 = and i32 %133, 65528
  %136 = icmp ult i32 %135, 1000
  br i1 %136, label %157, label %137

137:                                              ; preds = %128
  %138 = add nuw nsw i32 %131, 1
  %139 = add i16 %134, -1000
  br label %154

140:                                              ; preds = %126
  %141 = add nsw i32 %122, 1000000
  %142 = lshr i32 %141, 3
  %143 = mul i32 %142, 16777
  %144 = lshr i32 %143, 21
  %145 = mul nuw nsw i32 %144, 64536
  %146 = add nsw i32 %145, %141
  %147 = trunc i32 %146 to i16
  store i16 %147, ptr %107, align 2, !tbaa !10
  %148 = add nsw i32 %144, -1000
  %149 = and i32 %146, 65528
  %150 = icmp ult i32 %149, 1000
  br i1 %150, label %157, label %151

151:                                              ; preds = %140
  %152 = add nsw i32 %144, -999
  %153 = add i16 %147, -1000
  br label %154

154:                                              ; preds = %124, %137, %151
  %155 = phi i16 [ %153, %151 ], [ %139, %137 ], [ %125, %124 ]
  %156 = phi i32 [ %152, %151 ], [ %138, %137 ], [ 0, %124 ]
  store i16 %155, ptr %107, align 2, !tbaa !10
  br label %157

157:                                              ; preds = %154, %140, %128
  %158 = phi i32 [ %131, %128 ], [ %148, %140 ], [ %156, %154 ]
  %159 = getelementptr inbounds i16, ptr %107, i64 1
  %160 = icmp ult ptr %159, %41
  br i1 %160, label %103, label %161, !llvm.loop !85

161:                                              ; preds = %157, %95
  %162 = phi ptr [ %96, %95 ], [ %159, %157 ]
  %163 = phi i32 [ %99, %95 ], [ %158, %157 ]
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %194, label %165

165:                                              ; preds = %161
  %166 = icmp sgt i32 %163, 0
  br i1 %166, label %169, label %167

167:                                              ; preds = %165
  %168 = icmp ugt ptr %41, %5
  br i1 %168, label %172, label %185

169:                                              ; preds = %165
  %170 = trunc i32 %163 to i16
  store i16 %170, ptr %162, align 2, !tbaa !10
  %171 = getelementptr inbounds i16, ptr %162, i64 1
  br label %194

172:                                              ; preds = %167, %172
  %173 = phi i32 [ %182, %172 ], [ 1, %167 ]
  %174 = phi ptr [ %183, %172 ], [ %5, %167 ]
  %175 = add nuw nsw i32 %173, 999
  %176 = load i16, ptr %174, align 2, !tbaa !10
  %177 = zext i16 %176 to i32
  %178 = sub nsw i32 %175, %177
  %179 = icmp sgt i32 %178, 999
  %180 = trunc i32 %178 to i16
  %181 = select i1 %179, i16 0, i16 %180
  %182 = zext i1 %179 to i32
  store i16 %181, ptr %174, align 2, !tbaa !10
  %183 = getelementptr inbounds i16, ptr %174, i64 1
  %184 = icmp ult ptr %183, %41
  br i1 %184, label %172, label %185, !llvm.loop !86

185:                                              ; preds = %172, %167
  %186 = phi ptr [ %5, %167 ], [ %183, %172 ]
  %187 = phi i32 [ 1, %167 ], [ %182, %172 ]
  %188 = xor i32 %163, -1
  %189 = add nsw i32 %187, %188
  %190 = icmp eq i32 %189, 0
  br i1 %190, label %194, label %191

191:                                              ; preds = %185
  %192 = trunc i32 %189 to i16
  store i16 %192, ptr %186, align 2, !tbaa !10
  %193 = getelementptr inbounds i16, ptr %186, i64 1
  br label %194

194:                                              ; preds = %185, %191, %161, %169
  %195 = phi ptr [ %171, %169 ], [ %162, %161 ], [ %5, %191 ], [ %5, %185 ]
  %196 = phi ptr [ %5, %169 ], [ %5, %161 ], [ %193, %191 ], [ %186, %185 ]
  %197 = ptrtoint ptr %195 to i64
  %198 = ptrtoint ptr %196 to i64
  %199 = sub i64 %197, %198
  %200 = lshr exact i64 %199, 1
  %201 = trunc i64 %200 to i32
  ret i32 %201
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @decUnitCompare(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3, i32 noundef %4) unnamed_addr #4 {
  %6 = alloca [25 x i16], align 16
  call void @llvm.lifetime.start.p0(i64 50, ptr nonnull %6) #20
  %7 = icmp eq i32 %4, 0
  br i1 %7, label %8, label %28

8:                                                ; preds = %5
  %9 = icmp sgt i32 %1, %3
  br i1 %9, label %89, label %10

10:                                               ; preds = %8
  %11 = icmp slt i32 %1, %3
  br i1 %11, label %89, label %12

12:                                               ; preds = %10
  %13 = sext i32 %1 to i64
  %14 = getelementptr inbounds i16, ptr %0, i64 %13
  %15 = getelementptr inbounds i16, ptr %2, i64 %13
  br label %16

16:                                               ; preds = %26, %12
  %17 = phi ptr [ %14, %12 ], [ %20, %26 ]
  %18 = phi ptr [ %15, %12 ], [ %19, %26 ]
  %19 = getelementptr inbounds i16, ptr %18, i64 -1
  %20 = getelementptr inbounds i16, ptr %17, i64 -1
  %21 = icmp ult ptr %20, %0
  br i1 %21, label %89, label %22

22:                                               ; preds = %16
  %23 = load i16, ptr %20, align 2, !tbaa !10
  %24 = load i16, ptr %19, align 2, !tbaa !10
  %25 = icmp ugt i16 %23, %24
  br i1 %25, label %89, label %26

26:                                               ; preds = %22
  %27 = icmp ult i16 %23, %24
  br i1 %27, label %89, label %16, !llvm.loop !87

28:                                               ; preds = %5
  %29 = icmp slt i32 %4, 50
  br i1 %29, label %30, label %37

30:                                               ; preds = %28
  %31 = sext i32 %4 to i64
  %32 = getelementptr inbounds [50 x i8], ptr @d2utable, i64 0, i64 %31
  %33 = load i8, ptr %32, align 1, !tbaa !20
  %34 = zext i8 %33 to i32
  %35 = add nsw i32 %34, %3
  %36 = icmp slt i32 %35, %1
  br i1 %36, label %89, label %42

37:                                               ; preds = %28
  %38 = add nuw nsw i32 %4, 2
  %39 = udiv i32 %38, 3
  %40 = add nsw i32 %39, %3
  %41 = icmp slt i32 %40, %1
  br i1 %41, label %89, label %45

42:                                               ; preds = %30
  %43 = add nsw i32 %1, 1
  %44 = icmp slt i32 %43, %35
  br i1 %44, label %89, label %48

45:                                               ; preds = %37
  %46 = add nsw i32 %1, 1
  %47 = icmp slt i32 %46, %40
  br i1 %47, label %89, label %48

48:                                               ; preds = %45, %42
  %49 = phi i32 [ %35, %42 ], [ %40, %45 ]
  %50 = add nsw i32 %49, 2
  %51 = sext i32 %50 to i64
  %52 = shl nsw i64 %51, 1
  %53 = icmp ugt i64 %52, 50
  br i1 %53, label %54, label %57

54:                                               ; preds = %48
  %55 = tail call noalias ptr @malloc(i64 noundef %52) #21
  %56 = icmp eq ptr %55, null
  br i1 %56, label %89, label %57

57:                                               ; preds = %54, %48
  %58 = phi ptr [ null, %48 ], [ %55, %54 ]
  %59 = phi ptr [ %6, %48 ], [ %55, %54 ]
  %60 = sdiv i32 %4, 3
  %61 = srem i32 %4, 3
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds [10 x i32], ptr @DECPOWERS, i64 0, i64 %62
  %64 = load i32, ptr %63, align 4, !tbaa !17
  %65 = sub nsw i32 0, %64
  %66 = call fastcc i32 @decUnitAddSub(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %60, ptr noundef nonnull %59, i32 noundef %65) #18
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %85, label %68

68:                                               ; preds = %57
  %69 = zext nneg i32 %66 to i64
  %70 = getelementptr inbounds i16, ptr %59, i64 %69
  %71 = getelementptr inbounds i16, ptr %70, i64 -1
  %72 = icmp ult ptr %59, %71
  br i1 %72, label %73, label %80

73:                                               ; preds = %68, %77
  %74 = phi ptr [ %78, %77 ], [ %59, %68 ]
  %75 = load i16, ptr %74, align 2, !tbaa !10
  %76 = icmp eq i16 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %73
  %78 = getelementptr inbounds i16, ptr %74, i64 1
  %79 = icmp ult ptr %78, %71
  br i1 %79, label %73, label %80, !llvm.loop !88

80:                                               ; preds = %73, %77, %68
  %81 = phi ptr [ %59, %68 ], [ %78, %77 ], [ %74, %73 ]
  %82 = load i16, ptr %81, align 2, !tbaa !10
  %83 = icmp ne i16 %82, 0
  %84 = zext i1 %83 to i32
  br label %85

85:                                               ; preds = %57, %80
  %86 = phi i32 [ %84, %80 ], [ -1, %57 ]
  %87 = icmp eq ptr %58, null
  br i1 %87, label %89, label %88

88:                                               ; preds = %85
  call void @free(ptr noundef nonnull %58) #19
  br label %89

89:                                               ; preds = %16, %26, %22, %45, %37, %85, %88, %54, %42, %30, %10, %8
  %90 = phi i32 [ 1, %8 ], [ -1, %10 ], [ 1, %30 ], [ -1, %42 ], [ -2147483648, %54 ], [ %86, %88 ], [ %86, %85 ], [ 1, %37 ], [ -1, %45 ], [ 0, %16 ], [ -1, %26 ], [ 1, %22 ]
  call void @llvm.lifetime.end.p0(i64 50, ptr nonnull %6) #20
  ret i32 %90
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @decApplyRound(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr nocapture noundef %3) unnamed_addr #0 {
  %5 = icmp eq i32 %2, 0
  br i1 %5, label %187, label %6

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.decContext, ptr %1, i64 0, i32 3
  %8 = load i32, ptr %7, align 4, !tbaa !37
  switch i32 %8, label %53 [
    i32 7, label %9
    i32 5, label %20
    i32 4, label %22
    i32 3, label %24
    i32 2, label %33
    i32 1, label %35
    i32 0, label %37
    i32 6, label %45
  ]

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 3
  %11 = load i16, ptr %10, align 2, !tbaa !10
  %12 = urem i16 %11, 5
  %13 = icmp slt i32 %2, 0
  %14 = icmp ne i16 %12, 1
  %15 = select i1 %13, i1 %14, i1 false
  br i1 %15, label %108, label %16

16:                                               ; preds = %9
  %17 = icmp sgt i32 %2, 0
  %18 = icmp eq i16 %12, 0
  %19 = select i1 %17, i1 %18, i1 false
  br i1 %19, label %56, label %187

20:                                               ; preds = %6
  %21 = icmp slt i32 %2, 0
  br i1 %21, label %108, label %187

22:                                               ; preds = %6
  %23 = icmp sgt i32 %2, 5
  br i1 %23, label %56, label %187

24:                                               ; preds = %6
  %25 = icmp sgt i32 %2, 5
  br i1 %25, label %56, label %26

26:                                               ; preds = %24
  %27 = icmp eq i32 %2, 5
  br i1 %27, label %28, label %187

28:                                               ; preds = %26
  %29 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 3
  %30 = load i16, ptr %29, align 2, !tbaa !10
  %31 = and i16 %30, 1
  %32 = icmp eq i16 %31, 0
  br i1 %32, label %187, label %56

33:                                               ; preds = %6
  %34 = icmp sgt i32 %2, 4
  br i1 %34, label %56, label %187

35:                                               ; preds = %6
  %36 = icmp sgt i32 %2, 0
  br i1 %36, label %56, label %187

37:                                               ; preds = %6
  %38 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 2
  %39 = load i8, ptr %38, align 4, !tbaa !5
  %40 = icmp sgt i8 %39, -1
  br i1 %40, label %43, label %41

41:                                               ; preds = %37
  %42 = icmp slt i32 %2, 0
  br i1 %42, label %108, label %187

43:                                               ; preds = %37
  %44 = icmp sgt i32 %2, 0
  br i1 %44, label %56, label %187

45:                                               ; preds = %6
  %46 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 2
  %47 = load i8, ptr %46, align 4, !tbaa !5
  %48 = icmp sgt i8 %47, -1
  br i1 %48, label %49, label %51

49:                                               ; preds = %45
  %50 = icmp slt i32 %2, 0
  br i1 %50, label %108, label %187

51:                                               ; preds = %45
  %52 = icmp sgt i32 %2, 0
  br i1 %52, label %56, label %187

53:                                               ; preds = %6
  %54 = load i32, ptr %3, align 4, !tbaa !17
  %55 = or i32 %54, 64
  store i32 %55, ptr %3, align 4, !tbaa !17
  br label %187

56:                                               ; preds = %51, %43, %35, %33, %22, %16, %24, %28
  %57 = load i32, ptr %0, align 4, !tbaa !14
  %58 = getelementptr inbounds i8, ptr %0, i64 10
  %59 = icmp ult i32 %57, 4
  br i1 %59, label %60, label %97

60:                                               ; preds = %103, %56
  %61 = phi i64 [ 10, %56 ], [ %105, %103 ]
  %62 = phi i32 [ %57, %56 ], [ %104, %103 ]
  %63 = phi ptr [ %58, %56 ], [ %106, %103 ]
  %64 = load i16, ptr %63, align 2, !tbaa !10
  %65 = zext i16 %64 to i32
  %66 = zext nneg i32 %62 to i64
  %67 = getelementptr inbounds [10 x i32], ptr @DECPOWERS, i64 0, i64 %66
  %68 = load i32, ptr %67, align 4, !tbaa !17
  %69 = add i32 %68, -1
  %70 = icmp eq i32 %69, %65
  br i1 %70, label %71, label %171

71:                                               ; preds = %60
  %72 = add nsw i32 %62, -1
  %73 = zext i32 %72 to i64
  %74 = getelementptr inbounds [10 x i32], ptr @DECPOWERS, i64 0, i64 %73
  %75 = load i32, ptr %74, align 4, !tbaa !17
  %76 = trunc i32 %75 to i16
  store i16 %76, ptr %63, align 2, !tbaa !10
  %77 = icmp slt i64 %61, 12
  br i1 %77, label %87, label %78

78:                                               ; preds = %71
  %79 = add nsw i64 %61, -2
  %80 = add nuw i64 %61, 1
  %81 = tail call i64 @llvm.smin.i64(i64 %61, i64 13)
  %82 = sub nuw i64 %80, %81
  %83 = and i64 %82, -2
  %84 = sub nsw i64 %79, %83
  %85 = getelementptr i8, ptr %0, i64 %84
  %86 = add nuw nsw i64 %83, 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(1) %85, i8 0, i64 %86, i1 false), !tbaa !10
  br label %87

87:                                               ; preds = %78, %71
  %88 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 1
  %89 = load i32, ptr %88, align 4, !tbaa !15
  %90 = add nsw i32 %89, 1
  store i32 %90, ptr %88, align 4, !tbaa !15
  %91 = add nsw i32 %90, %57
  %92 = getelementptr inbounds %struct.decContext, ptr %1, i64 0, i32 1
  %93 = load i32, ptr %92, align 4, !tbaa !33
  %94 = add nsw i32 %93, 1
  %95 = icmp sgt i32 %91, %94
  br i1 %95, label %96, label %187

96:                                               ; preds = %87
  tail call fastcc void @decSetOverflow(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef %3) #18
  br label %187

97:                                               ; preds = %56, %103
  %98 = phi ptr [ %106, %103 ], [ %58, %56 ]
  %99 = phi i32 [ %104, %103 ], [ %57, %56 ]
  %100 = phi i64 [ %105, %103 ], [ 10, %56 ]
  %101 = load i16, ptr %98, align 2, !tbaa !10
  %102 = icmp eq i16 %101, 999
  br i1 %102, label %103, label %171

103:                                              ; preds = %97
  %104 = add i32 %99, -3
  %105 = add nuw nsw i64 %100, 2
  %106 = getelementptr inbounds i8, ptr %0, i64 %105
  %107 = icmp ult i32 %104, 4
  br i1 %107, label %60, label %97

108:                                              ; preds = %49, %41, %20, %9
  %109 = load i32, ptr %0, align 4, !tbaa !14
  %110 = getelementptr inbounds i8, ptr %0, i64 10
  %111 = icmp ult i32 %109, 4
  br i1 %111, label %112, label %160

112:                                              ; preds = %166, %108
  %113 = phi i64 [ 10, %108 ], [ %168, %166 ]
  %114 = phi i32 [ %109, %108 ], [ %167, %166 ]
  %115 = phi ptr [ %110, %108 ], [ %169, %166 ]
  %116 = load i16, ptr %115, align 2, !tbaa !10
  %117 = zext i16 %116 to i32
  %118 = add nsw i32 %114, -1
  %119 = zext i32 %118 to i64
  %120 = getelementptr inbounds [10 x i32], ptr @DECPOWERS, i64 0, i64 %119
  %121 = load i32, ptr %120, align 4, !tbaa !17
  %122 = icmp eq i32 %121, %117
  br i1 %122, label %123, label %171

123:                                              ; preds = %112
  %124 = zext nneg i32 %114 to i64
  %125 = getelementptr inbounds [10 x i32], ptr @DECPOWERS, i64 0, i64 %124
  %126 = load i32, ptr %125, align 4, !tbaa !17
  %127 = trunc i32 %126 to i16
  %128 = add i16 %127, -1
  store i16 %128, ptr %115, align 2, !tbaa !10
  %129 = icmp slt i64 %113, 12
  br i1 %129, label %139, label %130

130:                                              ; preds = %123
  %131 = load i32, ptr getelementptr inbounds ([10 x i32], ptr @DECPOWERS, i64 0, i64 3), align 4, !tbaa !17
  %132 = trunc i32 %131 to i16
  %133 = add i16 %132, -1
  br label %134

134:                                              ; preds = %130, %134
  %135 = phi i64 [ %113, %130 ], [ %136, %134 ]
  %136 = add nsw i64 %135, -2
  %137 = getelementptr inbounds i8, ptr %0, i64 %136
  store i16 %133, ptr %137, align 2, !tbaa !10
  %138 = icmp ult i64 %135, 14
  br i1 %138, label %139, label %134, !llvm.loop !89

139:                                              ; preds = %134, %123
  %140 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 1
  %141 = load i32, ptr %140, align 4, !tbaa !15
  %142 = add nsw i32 %141, -1
  store i32 %142, ptr %140, align 4, !tbaa !15
  %143 = getelementptr inbounds %struct.decContext, ptr %1, i64 0, i32 2
  %144 = load i32, ptr %143, align 4, !tbaa !32
  %145 = load i32, ptr %1, align 4, !tbaa !27
  %146 = add i32 %144, 1
  %147 = sub i32 %146, %145
  %148 = icmp eq i32 %141, %147
  br i1 %148, label %149, label %187

149:                                              ; preds = %139
  %150 = icmp eq i32 %114, 1
  %151 = icmp eq i32 %109, 1
  %152 = and i1 %150, %151
  br i1 %152, label %156, label %153

153:                                              ; preds = %149
  %154 = add i16 %116, -1
  %155 = add nsw i32 %109, -1
  store i32 %155, ptr %0, align 4, !tbaa !14
  br label %156

156:                                              ; preds = %149, %153
  %157 = phi i16 [ %154, %153 ], [ 0, %149 ]
  store i16 %157, ptr %115, align 2
  store i32 %141, ptr %140, align 4, !tbaa !15
  %158 = load i32, ptr %3, align 4, !tbaa !17
  %159 = or i32 %158, 14368
  store i32 %159, ptr %3, align 4, !tbaa !17
  br label %187

160:                                              ; preds = %108, %166
  %161 = phi ptr [ %169, %166 ], [ %110, %108 ]
  %162 = phi i32 [ %167, %166 ], [ %109, %108 ]
  %163 = phi i64 [ %168, %166 ], [ 10, %108 ]
  %164 = load i16, ptr %161, align 2, !tbaa !10
  %165 = icmp eq i16 %164, 0
  br i1 %165, label %166, label %171

166:                                              ; preds = %160
  %167 = add i32 %162, -3
  %168 = add nuw nsw i64 %163, 2
  %169 = getelementptr inbounds i8, ptr %0, i64 %168
  %170 = icmp ult i32 %167, 4
  br i1 %170, label %112, label %160

171:                                              ; preds = %97, %160, %112, %60
  %172 = phi i32 [ %109, %112 ], [ %57, %60 ], [ %109, %160 ], [ %57, %97 ]
  %173 = phi i32 [ -1, %112 ], [ 1, %60 ], [ -1, %160 ], [ 1, %97 ]
  %174 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 3
  %175 = icmp slt i32 %172, 50
  br i1 %175, label %176, label %181

176:                                              ; preds = %171
  %177 = sext i32 %172 to i64
  %178 = getelementptr inbounds [50 x i8], ptr @d2utable, i64 0, i64 %177
  %179 = load i8, ptr %178, align 1, !tbaa !20
  %180 = zext i8 %179 to i32
  br label %184

181:                                              ; preds = %171
  %182 = add nuw nsw i32 %172, 2
  %183 = udiv i32 %182, 3
  br label %184

184:                                              ; preds = %181, %176
  %185 = phi i32 [ %180, %176 ], [ %183, %181 ]
  %186 = tail call fastcc i32 @decUnitAddSub(ptr noundef nonnull %174, i32 noundef %185, ptr noundef nonnull @uarrone, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %174, i32 noundef %173) #18
  br label %187

187:                                              ; preds = %28, %51, %49, %43, %41, %35, %33, %22, %20, %16, %26, %53, %156, %139, %96, %87, %4, %184
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @decSetOverflow(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2) unnamed_addr #10 {
  %4 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 2
  %5 = load i8, ptr %4, align 4, !tbaa !5
  %6 = and i8 %5, -128
  %7 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 3
  %8 = load i16, ptr %7, align 2, !tbaa !10
  %9 = icmp eq i16 %8, 0
  br i1 %9, label %10, label %32

10:                                               ; preds = %3
  %11 = load i32, ptr %0, align 4, !tbaa !14
  %12 = icmp eq i32 %11, 1
  %13 = and i8 %5, 112
  %14 = icmp eq i8 %13, 0
  %15 = select i1 %12, i1 %14, i1 false
  br i1 %15, label %16, label %32

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.decContext, ptr %1, i64 0, i32 1
  %18 = load i32, ptr %17, align 4, !tbaa !33
  %19 = getelementptr inbounds %struct.decContext, ptr %1, i64 0, i32 6
  %20 = load i8, ptr %19, align 4, !tbaa !29
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %16
  %23 = load i32, ptr %1, align 4, !tbaa !27
  %24 = add i32 %18, 1
  %25 = sub i32 %24, %23
  br label %26

26:                                               ; preds = %22, %16
  %27 = phi i32 [ %25, %22 ], [ %18, %16 ]
  %28 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 1
  %29 = load i32, ptr %28, align 4, !tbaa !15
  %30 = icmp sgt i32 %29, %27
  br i1 %30, label %31, label %49

31:                                               ; preds = %26
  store i32 %27, ptr %28, align 4, !tbaa !15
  br label %45

32:                                               ; preds = %10, %3
  %33 = tail call ptr @decNumberZero(ptr noundef nonnull %0) #18
  %34 = getelementptr inbounds %struct.decContext, ptr %1, i64 0, i32 3
  %35 = load i32, ptr %34, align 4, !tbaa !37
  switch i32 %35, label %41 [
    i32 5, label %40
    i32 7, label %40
    i32 0, label %36
    i32 6, label %38
  ]

36:                                               ; preds = %32
  %37 = icmp eq i8 %6, 0
  br i1 %37, label %41, label %40

38:                                               ; preds = %32
  %39 = icmp eq i8 %6, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %36, %32, %32, %38
  tail call fastcc void @decSetMaxValue(ptr noundef nonnull %0, ptr noundef nonnull %1) #18
  br label %43

41:                                               ; preds = %36, %32, %38
  %42 = or disjoint i8 %6, 64
  br label %43

43:                                               ; preds = %41, %40
  %44 = phi i8 [ %42, %41 ], [ %6, %40 ]
  store i8 %44, ptr %4, align 4, !tbaa !5
  br label %45

45:                                               ; preds = %43, %31
  %46 = phi i32 [ 1024, %31 ], [ 2592, %43 ]
  %47 = load i32, ptr %2, align 4, !tbaa !17
  %48 = or i32 %47, %46
  store i32 %48, ptr %2, align 4, !tbaa !17
  br label %49

49:                                               ; preds = %45, %26
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @decSetSubnormal(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2, ptr nocapture noundef %3) unnamed_addr #0 {
  %5 = alloca %struct.decContext, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %5) #20
  %6 = getelementptr inbounds %struct.decContext, ptr %1, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !32
  %8 = load i32, ptr %1, align 4, !tbaa !27
  %9 = add i32 %7, 1
  %10 = sub i32 %9, %8
  %11 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 3
  %12 = load i16, ptr %11, align 2, !tbaa !10
  %13 = icmp eq i16 %12, 0
  br i1 %13, label %14, label %29

14:                                               ; preds = %4
  %15 = load i32, ptr %0, align 4, !tbaa !14
  %16 = icmp eq i32 %15, 1
  br i1 %16, label %17, label %29

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 2
  %19 = load i8, ptr %18, align 4, !tbaa !5
  %20 = and i8 %19, 112
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 1
  %24 = load i32, ptr %23, align 4, !tbaa !15
  %25 = icmp slt i32 %24, %10
  br i1 %25, label %26, label %77

26:                                               ; preds = %22
  store i32 %10, ptr %23, align 4, !tbaa !15
  %27 = load i32, ptr %3, align 4, !tbaa !17
  %28 = or i32 %27, 1024
  br label %75

29:                                               ; preds = %17, %14, %4
  %30 = load i32, ptr %3, align 4, !tbaa !17
  %31 = or i32 %30, 4096
  store i32 %31, ptr %3, align 4, !tbaa !17
  %32 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 1
  %33 = load i32, ptr %32, align 4, !tbaa !15
  %34 = sub nsw i32 %10, %33
  %35 = icmp slt i32 %34, 1
  br i1 %35, label %36, label %41

36:                                               ; preds = %29
  %37 = and i32 %30, 32
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %77, label %39

39:                                               ; preds = %36
  %40 = or i32 %30, 12288
  br label %75

41:                                               ; preds = %29
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %5, ptr noundef nonnull align 4 dereferenceable(28) %1, i64 28, i1 false), !tbaa.struct !49
  %42 = load i32, ptr %0, align 4, !tbaa !14
  %43 = sub nsw i32 %42, %34
  store i32 %43, ptr %5, align 4, !tbaa !27
  %44 = getelementptr inbounds %struct.decContext, ptr %5, i64 0, i32 2
  %45 = load i32, ptr %44, align 4, !tbaa !32
  %46 = sub nsw i32 %45, %34
  store i32 %46, ptr %44, align 4, !tbaa !32
  call fastcc void @decSetCoeff(ptr noundef nonnull %0, ptr noundef nonnull %5, ptr noundef nonnull %11, i32 noundef %42, ptr noundef %2, ptr noundef nonnull %3) #18
  %47 = load i32, ptr %2, align 4, !tbaa !17
  call fastcc void @decApplyRound(ptr noundef nonnull %0, ptr noundef nonnull %5, i32 noundef %47, ptr noundef nonnull %3) #18
  %48 = load i32, ptr %3, align 4, !tbaa !17
  %49 = and i32 %48, 32
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %53, label %51

51:                                               ; preds = %41
  %52 = or i32 %48, 8192
  store i32 %52, ptr %3, align 4, !tbaa !17
  br label %53

53:                                               ; preds = %51, %41
  %54 = load i32, ptr %32, align 4, !tbaa !15
  %55 = icmp sgt i32 %54, %10
  br i1 %55, label %56, label %61

56:                                               ; preds = %53
  %57 = load i32, ptr %0, align 4, !tbaa !14
  %58 = tail call fastcc i32 @decShiftToMost(ptr noundef nonnull %11, i32 noundef %57, i32 noundef 1) #18
  store i32 %58, ptr %0, align 4, !tbaa !14
  %59 = load i32, ptr %32, align 4, !tbaa !15
  %60 = add nsw i32 %59, -1
  store i32 %60, ptr %32, align 4, !tbaa !15
  br label %61

61:                                               ; preds = %56, %53
  %62 = load i16, ptr %11, align 2, !tbaa !10
  %63 = icmp eq i16 %62, 0
  br i1 %63, label %64, label %77

64:                                               ; preds = %61
  %65 = load i32, ptr %0, align 4, !tbaa !14
  %66 = icmp eq i32 %65, 1
  br i1 %66, label %67, label %77

67:                                               ; preds = %64
  %68 = getelementptr inbounds %struct.decNumber, ptr %0, i64 0, i32 2
  %69 = load i8, ptr %68, align 4, !tbaa !5
  %70 = and i8 %69, 112
  %71 = icmp eq i8 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %67
  %73 = load i32, ptr %3, align 4, !tbaa !17
  %74 = or i32 %73, 1024
  br label %75

75:                                               ; preds = %26, %39, %72
  %76 = phi i32 [ %74, %72 ], [ %40, %39 ], [ %28, %26 ]
  store i32 %76, ptr %3, align 4, !tbaa !17
  br label %77

77:                                               ; preds = %75, %61, %64, %67, %36, %22
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %5) #20
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #15

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #15

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #15

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #16

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #15

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @llvm.load.relative.i64(ptr, i64) #17

attributes #0 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind optsize willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #10 = { nofree noinline norecurse nosync nounwind optsize memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #18 = { optsize }
attributes #19 = { nounwind optsize }
attributes #20 = { nounwind }
attributes #21 = { nounwind optsize allocsize(0) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !8, i64 8}
!6 = !{!"", !7, i64 0, !7, i64 4, !8, i64 8, !8, i64 10}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!11, !11, i64 0}
!11 = !{!"short", !8, i64 0}
!12 = distinct !{!12, !13}
!13 = !{!"llvm.loop.mustprogress"}
!14 = !{!6, !7, i64 0}
!15 = !{!6, !7, i64 4}
!16 = distinct !{!16, !13}
!17 = !{!7, !7, i64 0}
!18 = distinct !{!18, !13}
!19 = distinct !{!19, !13}
!20 = !{!8, !8, i64 0}
!21 = distinct !{!21, !13}
!22 = distinct !{!22, !13}
!23 = distinct !{!23, !13}
!24 = distinct !{!24, !13}
!25 = !{i8 0, i8 2}
!26 = distinct !{!26, !13}
!27 = !{!28, !7, i64 0}
!28 = !{!"", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20, !8, i64 24}
!29 = !{!28, !8, i64 24}
!30 = distinct !{!30, !13}
!31 = distinct !{!31, !13}
!32 = !{!28, !7, i64 8}
!33 = !{!28, !7, i64 4}
!34 = distinct !{!34, !13}
!35 = distinct !{!35, !13}
!36 = distinct !{!36, !13}
!37 = !{!28, !7, i64 12}
!38 = distinct !{!38, !13}
!39 = distinct !{!39, !13}
!40 = !{i32 -2147483648, i32 2}
!41 = distinct !{!41, !13}
!42 = distinct !{!42, !13}
!43 = distinct !{!43, !13}
!44 = distinct !{!44, !13}
!45 = distinct !{!45, !13}
!46 = distinct !{!46, !13}
!47 = distinct !{!47, !13}
!48 = !{i32 0, i32 2}
!49 = !{i64 0, i64 4, !17, i64 4, i64 4, !17, i64 8, i64 4, !17, i64 12, i64 4, !17, i64 16, i64 4, !17, i64 20, i64 4, !17, i64 24, i64 1, !20}
!50 = distinct !{!50, !13}
!51 = distinct !{!51, !13}
!52 = distinct !{!52, !13}
!53 = distinct !{!53, !13}
!54 = !{!55, !55, i64 0}
!55 = !{!"long", !8, i64 0}
!56 = distinct !{!56, !13}
!57 = distinct !{!57, !13}
!58 = distinct !{!58, !13}
!59 = distinct !{!59, !13}
!60 = distinct !{!60, !13}
!61 = distinct !{!61, !13}
!62 = distinct !{!62, !13}
!63 = distinct !{!63, !13}
!64 = distinct !{!64, !13}
!65 = distinct !{!65, !13}
!66 = distinct !{!66, !13}
!67 = distinct !{!67, !13}
!68 = distinct !{!68, !13}
!69 = distinct !{!69, !13}
!70 = distinct !{!70, !13}
!71 = distinct !{!71, !13}
!72 = distinct !{!72, !13}
!73 = distinct !{!73, !13}
!74 = distinct !{!74, !13}
!75 = distinct !{!75, !13}
!76 = !{!28, !7, i64 16}
!77 = !{!28, !7, i64 20}
!78 = distinct !{!78, !13}
!79 = distinct !{!79, !13}
!80 = distinct !{!80, !13}
!81 = distinct !{!81, !13}
!82 = distinct !{!82, !13}
!83 = distinct !{!83, !13}
!84 = distinct !{!84, !13}
!85 = distinct !{!85, !13}
!86 = distinct !{!86, !13}
!87 = distinct !{!87, !13}
!88 = distinct !{!88, !13}
!89 = distinct !{!89, !13}
